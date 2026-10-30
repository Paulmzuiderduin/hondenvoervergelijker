-- Voedingswaarden per receptversie.
--
-- De waarden horen bij dezelfde versie als de ingrediëntenlijst: verandert het
-- recept, dan veranderen de voedingswaarden mee. De site toont ze voorlopig
-- alleen als de fabrikant ze ook echt vermeldt. Ontbrekende waarden worden
-- nooit geschat.
--
-- De kernset is: ruw eiwit, ruw vet, ruwe vezel, ruwe as, vocht en
-- metaboliseerbare energie. Calcium, fosfor, omega-3 en omega-6 zijn optioneel.
-- De eenheid en het label staan in nutrition_terms, zodat de site, de
-- beheeromgeving en de statische pagina's dezelfde namen gebruiken.

create table if not exists public.nutrition_terms (
  key text primary key,
  label text not null,
  short_label text not null,
  unit text not null check (unit in ('%', 'kcal/100g', 'g/kg', 'mg/kg', 'IE/kg')),
  category text not null check (category in ('macro', 'energie', 'mineraal', 'vetzuur', 'overig')),
  is_core boolean not null default false,
  is_standard boolean not null default true,
  sort_order integer not null default 100
);

alter table public.nutrition_terms
  add column if not exists is_standard boolean not null default true;

insert into public.nutrition_terms (key, label, short_label, unit, category, is_core, is_standard, sort_order)
values
  ('protein', 'Ruw eiwit', 'Eiwit', '%', 'macro', true, true, 10),
  ('fat', 'Ruw vet', 'Vet', '%', 'macro', true, true, 20),
  ('fiber', 'Ruwe vezel', 'Vezel', '%', 'macro', true, true, 30),
  ('ash', 'Ruwe as', 'As', '%', 'macro', true, true, 40),
  ('moisture', 'Vocht', 'Vocht', '%', 'macro', true, true, 50),
  ('kcal', 'Metaboliseerbare energie', 'Energie', 'kcal/100g', 'energie', true, true, 60),
  ('calcium', 'Calcium', 'Calcium', '%', 'mineraal', false, true, 70),
  ('phosphorus', 'Fosfor', 'Fosfor', '%', 'mineraal', false, true, 80),
  ('omega3', 'Omega-3', 'Omega-3', '%', 'vetzuur', false, true, 90),
  ('omega6', 'Omega-6', 'Omega-6', '%', 'vetzuur', false, true, 100)
on conflict (key) do update
  set label = excluded.label,
      short_label = excluded.short_label,
      unit = excluded.unit,
      category = excluded.category,
      is_core = excluded.is_core,
      is_standard = excluded.is_standard,
      sort_order = excluded.sort_order;

create table if not exists public.recipe_nutrition (
  id uuid primary key default gen_random_uuid(),
  recipe_version_id uuid not null references public.recipe_versions(id) on delete cascade,
  nutrient_key text not null references public.nutrition_terms(key) on update cascade,
  value numeric(10,3) not null check (value >= 0),
  basis text not null default 'as-fed' check (basis in ('as-fed', 'droge stof')),
  qualifier text check (qualifier is null or qualifier in ('typisch', 'min', 'max')),
  note text,
  created_at timestamptz not null default now(),
  unique (recipe_version_id, nutrient_key, basis)
);

create index if not exists recipe_nutrition_version_idx on public.recipe_nutrition(recipe_version_id);

alter table public.recipe_versions
  add column if not exists nutrition_source_url text,
  add column if not exists nutrition_checked_at date,
  add column if not exists nutrition_note text;

-- Percentages mogen nooit boven 100 uitkomen; energie boven 1000 kcal/100 g is
-- vrijwel zeker een invoerfout. De trigger gebruikt de eenheid uit
-- nutrition_terms, zodat een nieuwe nutrient automatisch dezelfde grens krijgt.
create or replace function public.validate_recipe_nutrition()
returns trigger
language plpgsql
set search_path = public
as $$
declare
  v_unit text;
begin
  select unit into v_unit from public.nutrition_terms where key = new.nutrient_key;
  if v_unit is null then
    raise exception 'Onbekende voedingswaarde: %', new.nutrient_key using errcode = '23514';
  end if;
  if new.value < 0 then
    raise exception 'Voedingswaarde % mag niet negatief zijn.', new.nutrient_key using errcode = '23514';
  end if;
  if v_unit = '%' and new.value > 100 then
    raise exception 'Percentage voor % moet tussen 0 en 100 liggen.', new.nutrient_key using errcode = '23514';
  end if;
  if v_unit = 'kcal/100g' and new.value > 1000 then
    raise exception 'Energie voor % is onwaarschijnlijk hoog.', new.nutrient_key using errcode = '23514';
  end if;
  return new;
end;
$$;

drop trigger if exists recipe_nutrition_validate on public.recipe_nutrition;
create trigger recipe_nutrition_validate
  before insert or update on public.recipe_nutrition
  for each row execute function public.validate_recipe_nutrition();

revoke all on function public.validate_recipe_nutrition() from public;

alter table public.nutrition_terms enable row level security;
alter table public.recipe_nutrition enable row level security;

drop policy if exists "public reads nutrition terms" on public.nutrition_terms;
create policy "public reads nutrition terms" on public.nutrition_terms
  for select to anon, authenticated using (true);

drop policy if exists "public reads visible nutrition" on public.recipe_nutrition;
create policy "public reads visible nutrition" on public.recipe_nutrition
  for select to anon, authenticated using (
    (select public.is_admin()) or exists (
      select 1
      from public.recipe_versions rv
      join public.products p on p.id = rv.product_id
      where rv.id = recipe_version_id
        and rv.is_current
        and p.published
    )
  );

drop policy if exists "admins manage recipe nutrition" on public.recipe_nutrition;
create policy "admins manage recipe nutrition" on public.recipe_nutrition
  for all to authenticated
  using ((select public.is_admin()))
  with check ((select public.is_admin()));

grant select on public.nutrition_terms, public.recipe_nutrition to anon, authenticated;
grant insert, update, delete on public.recipe_nutrition to authenticated;

-- save_product_with_recipe(): dezelfde atomaire opslag, nu met optionele
-- voedingswaarden. p_nutrition heeft deze vorm:
--
--   {
--     "source_url": "https://...",
--     "checked_at": "2026-10-30",
--     "note": "Kcal niet vermeld op de bron.",
--     "values": { "protein": 26, "fat": 15, "fiber": 2.6, "kcal": null }
--   }
--
-- null betekent: laat bestaande waarden met rust als de ingrediëntenlijst
-- dezelfde is; bij een gewijzigde lijst vervallen ze. Een leeg values-object
-- wist de waarden bewust. Zo kan de beheeromgeving zonder verlies van historie
-- een nieuwe receptversie opslaan.
create or replace function public.save_product_with_recipe(
  p_product_id uuid,
  p_brand text,
  p_name text,
  p_food_type public.food_type,
  p_package_size text,
  p_gtin text,
  p_source_url text,
  p_last_checked_at date,
  p_published boolean,
  p_ingredients_text text,
  p_reviewed boolean,
  p_review_note text,
  p_allergens text[],
  p_nutrition jsonb default null
) returns uuid
language plpgsql
security definer
set search_path = public
as $$
declare
  v_product_id uuid;
  v_version_id uuid;
  v_previous_version_id uuid;
  v_previous_text text;
  v_previous_reviewed_at timestamptz;
  v_previous_reviewed_by uuid;
  v_previous_note text;
  v_previous_imported_at timestamptz;
  v_previous_import_hash text;
  v_previous_import_note text;
  v_previous_nutrition_source_url text;
  v_previous_nutrition_checked_at date;
  v_previous_nutrition_note text;
  v_text_same boolean;
  v_nutrition jsonb;
  v_nutrition_values jsonb;
  v_nutrient record;
  v_value numeric;
begin
  if not coalesce(public.is_admin(), false) then
    raise exception 'Alleen een beheerder kan een product opslaan.' using errcode = '42501';
  end if;

  v_nutrition := p_nutrition;

  -- PostgREST kan een JSON-null meesturen; dat is hetzelfde als geen waarde.
  if v_nutrition = 'null'::jsonb then
    v_nutrition := null;
  end if;
  if v_nutrition is not null and jsonb_typeof(v_nutrition) <> 'object' then
    raise exception 'p_nutrition moet een object zijn.' using errcode = '22023';
  end if;

  if p_product_id is null then
    insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published, source_status, source_note)
    values (p_brand, p_name, p_food_type, p_package_size, p_gtin, p_source_url, p_last_checked_at, p_published, 'ok', null)
    returning id into v_product_id;
  else
    update public.products
    set brand = p_brand, name = p_name, food_type = p_food_type, package_size = p_package_size,
        gtin = p_gtin, source_url = p_source_url, last_checked_at = p_last_checked_at, published = p_published,
        source_status = 'ok', source_note = null
    where id = p_product_id
    returning id into v_product_id;

    if v_product_id is null then
      raise exception 'Product % niet gevonden of geen beheerdersrechten.', p_product_id;
    end if;

    select rv.id, rv.ingredients_text, rv.reviewed_at, rv.reviewed_by, rv.review_note,
           rv.imported_at, rv.import_hash, rv.import_note,
           rv.nutrition_source_url, rv.nutrition_checked_at, rv.nutrition_note
    into v_previous_version_id, v_previous_text, v_previous_reviewed_at, v_previous_reviewed_by, v_previous_note,
         v_previous_imported_at, v_previous_import_hash, v_previous_import_note,
         v_previous_nutrition_source_url, v_previous_nutrition_checked_at, v_previous_nutrition_note
    from public.recipe_versions rv
    where rv.product_id = v_product_id
      and rv.is_current;

    update public.recipe_versions set is_current = false where product_id = v_product_id and is_current;
  end if;

  v_text_same := v_previous_text is not distinct from p_ingredients_text;

  insert into public.recipe_versions (
    product_id, ingredients_text, is_current, reviewed_at, reviewed_by, review_note,
    imported_at, import_hash, import_note,
    nutrition_source_url, nutrition_checked_at, nutrition_note
  )
  values (
    v_product_id,
    p_ingredients_text,
    true,
    case when coalesce(p_reviewed, false) then now() when v_text_same then v_previous_reviewed_at else null end,
    case when coalesce(p_reviewed, false) then (select auth.uid()) when v_text_same then v_previous_reviewed_by else null end,
    case when coalesce(p_reviewed, false) then nullif(btrim(coalesce(p_review_note, '')), '') when v_text_same then v_previous_note else null end,
    case when v_text_same then v_previous_imported_at else null end,
    case when v_text_same then v_previous_import_hash else null end,
    case when v_text_same then v_previous_import_note else null end,
    case when v_nutrition is not null then nullif(btrim(coalesce(v_nutrition->>'source_url', '')), '') when v_text_same then v_previous_nutrition_source_url else null end,
    case when v_nutrition is not null then coalesce(nullif(v_nutrition->>'checked_at', '')::date, p_last_checked_at) when v_text_same then v_previous_nutrition_checked_at else null end,
    case when v_nutrition is not null then nullif(btrim(coalesce(v_nutrition->>'note', '')), '') when v_text_same then v_previous_nutrition_note else null end
  )
  returning id into v_version_id;

  insert into public.recipe_ingredients (recipe_version_id, allergen_key, certainty)
  select v_version_id, keys.allergen_key, 'confirmed'
  from (select distinct unnest(coalesce(p_allergens, '{}'::text[])) as allergen_key) keys
  where keys.allergen_key is not null and keys.allergen_key <> '';

  if v_nutrition is not null then
    v_nutrition_values := coalesce(nullif(v_nutrition->'values', 'null'::jsonb), '{}'::jsonb);
    if jsonb_typeof(v_nutrition_values) <> 'object' then
      raise exception 'p_nutrition.values moet een object zijn.' using errcode = '22023';
    end if;
    for v_nutrient in select key, value from jsonb_each_text(v_nutrition_values) loop
      if v_nutrient.value is null or btrim(v_nutrient.value) = '' or lower(btrim(v_nutrient.value)) = 'null' then
        continue;
      end if;
      begin
        v_value := replace(btrim(v_nutrient.value), ',', '.')::numeric;
      exception when invalid_text_representation then
        raise exception 'Ongeldige voedingswaarde voor %: %', v_nutrient.key, v_nutrient.value using errcode = '22023';
      end;
      insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis)
      values (v_version_id, v_nutrient.key, v_value, 'as-fed')
      on conflict (recipe_version_id, nutrient_key, basis) do update set value = excluded.value;
    end loop;
  elsif v_text_same and v_previous_version_id is not null then
    insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis, qualifier, note)
    select v_version_id, nutrient_key, value, basis, qualifier, note
    from public.recipe_nutrition
    where recipe_version_id = v_previous_version_id;
  end if;

  return v_product_id;
end;
$$;

-- De oude 13-argumentenversie moet weg; anders kan PostgreSQL bij een aanroep
-- zonder p_nutrition tussen twee functies twijfelen.
drop function if exists public.save_product_with_recipe(uuid, text, text, public.food_type, text, text, text, date, boolean, text, boolean, text, text[]);

revoke all on function public.save_product_with_recipe(uuid, text, text, public.food_type, text, text, text, date, boolean, text, boolean, text, text[], jsonb) from public;
grant execute on function public.save_product_with_recipe(uuid, text, text, public.food_type, text, text, text, date, boolean, text, boolean, text, text[], jsonb) to authenticated;

notify pgrst, 'reload schema';

-- Controle na het plakken: 10 nutrienten, waarvan 6 kernwaarden.
select count(*) as nutrienten,
       count(*) filter (where is_core) as kernwaarden
  from public.nutrition_terms;
