-- Bronbewaking rechtstreeks koppelen aan de database.
--
-- Waarom:
--   1. Producten die langer dan 6 maanden (183 dagen) niet gecontroleerd zijn,
--      springen op de site automatisch naar "Controleer etiket/fabrikant".
--      Zolang scripts/controleer-bronnen.mjs ziet dat de bronpagina van de
--      fabrikant nog exact hetzelfde etiket toont, hoort last_checked_at
--      automatisch op de nieuwe controledatum gezet te worden.
--   2. Als een bronpagina gewijzigd is, verandert de tekst op de site NIET
--      vanzelf, maar krijgt het product source_status = 'gewijzigd' zodat het
--      direct bovenaan in Beheer ("Wat vraagt aandacht") verschijnt.
--   3. De wekelijkse schrijfactie vanuit GitHub Actions houdt het gratis
--      Supabase-project actief zodat het niet na 7 dagen inactiviteit pauzeert.

alter table public.products
  add column if not exists source_status text not null default 'ok'
    check (source_status in ('ok', 'gewijzigd', 'onbereikbaar')),
  add column if not exists source_note text;

-- Tabel voor de geheimcode van de automatische bronwachter (alleen leesbaar voor
-- security definer functies, nooit voor anon of ingelogde bezoekers).
create table if not exists public.sync_config (
  key text primary key,
  value text not null,
  created_at timestamptz not null default now()
);

alter table public.sync_config enable row level security;
revoke all on table public.sync_config from public, anon, authenticated;

-- Genereer eenmalig een willekeurige sleutel als die er nog niet staat.
insert into public.sync_config (key, value)
values ('broncontrole_token', encode(extensions.gen_random_bytes(24), 'hex'))
on conflict (key) do nothing;

-- Wanneer een beheerder een product opslaat of als nagekeken markeert, is de
-- bronstatus weer 'ok'.
create or replace function public.set_recipe_reviewed(
  p_version_ids uuid[],
  p_note text default null
) returns integer
language plpgsql
security definer
set search_path = public
as $$
declare
  v_count integer;
begin
  if not coalesce(public.is_admin(), false) then
    raise exception 'Alleen een beheerder kan een ingrediëntenlijst nagekeken verklaren.' using errcode = '42501';
  end if;

  update public.recipe_versions rv
  set reviewed_at = now(),
      reviewed_by = (select auth.uid()),
      review_note = nullif(btrim(coalesce(p_note, '')), '')
  where rv.id = any (coalesce(p_version_ids, '{}'::uuid[]))
    and rv.is_current;
  get diagnostics v_count = row_count;

  update public.products p
  set last_checked_at = current_date,
      source_status = 'ok',
      source_note = null
  where exists (
    select 1
    from public.recipe_versions rv
    where rv.id = any (coalesce(p_version_ids, '{}'::uuid[]))
      and rv.is_current
      and rv.product_id = p.id
  );

  return v_count;
end;
$$;

revoke all on function public.set_recipe_reviewed(uuid[], text) from public;
grant execute on function public.set_recipe_reviewed(uuid[], text) to authenticated;

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
  p_allergens text[]
) returns uuid
language plpgsql
security definer
set search_path = public
as $$
declare
  v_product_id uuid;
  v_version_id uuid;
  v_previous_text text;
  v_previous_reviewed_at timestamptz;
  v_previous_reviewed_by uuid;
  v_previous_note text;
  v_previous_imported_at timestamptz;
  v_previous_import_hash text;
  v_previous_import_note text;
  v_text_same boolean;
begin
  if not coalesce(public.is_admin(), false) then
    raise exception 'Alleen een beheerder kan een product opslaan.' using errcode = '42501';
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

    select rv.ingredients_text, rv.reviewed_at, rv.reviewed_by, rv.review_note,
           rv.imported_at, rv.import_hash, rv.import_note
    into v_previous_text, v_previous_reviewed_at, v_previous_reviewed_by, v_previous_note,
         v_previous_imported_at, v_previous_import_hash, v_previous_import_note
    from public.recipe_versions rv
    where rv.product_id = v_product_id
      and rv.is_current;

    update public.recipe_versions set is_current = false where product_id = v_product_id and is_current;
  end if;

  v_text_same := v_previous_text is not distinct from p_ingredients_text;

  insert into public.recipe_versions (product_id, ingredients_text, is_current, reviewed_at, reviewed_by, review_note, imported_at, import_hash, import_note)
  values (
    v_product_id,
    p_ingredients_text,
    true,
    case when coalesce(p_reviewed, false) then now() when v_text_same then v_previous_reviewed_at else null end,
    case when coalesce(p_reviewed, false) then (select auth.uid()) when v_text_same then v_previous_reviewed_by else null end,
    case when coalesce(p_reviewed, false) then nullif(btrim(coalesce(p_review_note, '')), '') when v_text_same then v_previous_note else null end,
    case when v_text_same then v_previous_imported_at else null end,
    case when v_text_same then v_previous_import_hash else null end,
    case when v_text_same then v_previous_import_note else null end
  )
  returning id into v_version_id;

  insert into public.recipe_ingredients (recipe_version_id, allergen_key, certainty)
  select v_version_id, keys.allergen_key, 'confirmed'
  from (select distinct unnest(coalesce(p_allergens, '{}'::text[])) as allergen_key) keys
  where keys.allergen_key is not null and keys.allergen_key <> '';

  return v_product_id;
end;
$$;

revoke all on function public.save_product_with_recipe(uuid, text, text, public.food_type, text, text, text, date, boolean, text, boolean, text, text[]) from public;
grant execute on function public.save_product_with_recipe(uuid, text, text, public.food_type, text, text, text, date, boolean, text, boolean, text, text[]) to authenticated;

-- Functie waarmee scripts/controleer-bronnen.mjs de controledatum bijwerkt
-- voor producten waarvan de bronpagina nog exact dezelfde tekst heeft, of
-- 'gewijzigd' zet als het etiket op de bronpagina veranderd is.
-- Werkt voor een ingelogde beheerder óf met de broncontrole_token uit sync_config.
create or replace function public.record_source_checks(
  p_token text,
  p_checks jsonb
) returns jsonb
language plpgsql
security definer
set search_path = public
as $$
declare
  v_valid_token text;
  v_item jsonb;
  v_status text;
  v_url text;
  v_brand text;
  v_name text;
  v_note text;
  v_ok_count integer := 0;
  v_changed_count integer := 0;
  v_unreachable_count integer := 0;
  v_rows integer;
begin
  select value into v_valid_token from public.sync_config where key = 'broncontrole_token';

  if not coalesce(public.is_admin(), false) and (p_token is null or v_valid_token is null or p_token <> v_valid_token) then
    raise exception 'Geen toegang tot record_source_checks.' using errcode = '42501';
  end if;

  for v_item in select * from jsonb_array_elements(coalesce(p_checks, '[]'::jsonb))
  loop
    v_status := coalesce(v_item->>'status', '');
    v_url := nullif(btrim(coalesce(v_item->>'bronUrl', '')), '');
    v_brand := nullif(btrim(coalesce(v_item->>'merk', '')), '');
    v_name := nullif(btrim(coalesce(v_item->>'naam', '')), '');
    v_note := nullif(btrim(coalesce(v_item->>'detail', '')), '');

    if v_status = 'gelijk' then
      update public.products p
      set last_checked_at = current_date,
          source_status = 'ok',
          source_note = null
      where (v_url is not null and p.source_url = v_url)
         or (v_brand is not null and v_name is not null and lower(p.brand) = lower(v_brand) and lower(p.name) = lower(v_name));
      get diagnostics v_rows = row_count;
      v_ok_count := v_ok_count + v_rows;
    elsif v_status = 'gewijzigd' then
      update public.products p
      set source_status = 'gewijzigd',
          source_note = coalesce(v_note, 'Tekst op de bronpagina wijkt af van de laatst gecontroleerde tekst.')
      where (v_url is not null and p.source_url = v_url)
         or (v_brand is not null and v_name is not null and lower(p.brand) = lower(v_brand) and lower(p.name) = lower(v_name));
      get diagnostics v_rows = row_count;
      v_changed_count := v_changed_count + v_rows;
    elsif v_status = 'onbereikbaar' then
      -- Alleen noteren als er geen tijdelijke 403/429 bot-blokkade is, en last_checked_at intact laten.
      update public.products p
      set source_note = coalesce(v_note, 'Bronpagina tijdelijk onbereikbaar.')
      where (v_url is not null and p.source_url = v_url)
         or (v_brand is not null and v_name is not null and lower(p.brand) = lower(v_brand) and lower(p.name) = lower(v_name));
      get diagnostics v_rows = row_count;
      v_unreachable_count := v_unreachable_count + v_rows;
    end if;
  end loop;

  return jsonb_build_object(
    'ok_updated', v_ok_count,
    'changed_updated', v_changed_count,
    'unreachable_noted', v_unreachable_count
  );
end;
$$;

revoke all on function public.record_source_checks(text, jsonb) from public;
grant execute on function public.record_source_checks(text, jsonb) to anon, authenticated;
