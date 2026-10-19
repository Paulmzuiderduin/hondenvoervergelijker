-- Herkomst van een automatisch overgenomen etiket.
--
-- De beheerder kan een tekst "nagekeken" verklaren; die klik betekent: dit is de
-- tekst van de fabrikant. Bij een automatische import doet niemand die klik, en
-- dat mag de site ook nooit beweren. De herkomst staat daarom apart:
--
--   imported_at   wanneer de tekst van de bronpagina is overgenomen
--   import_hash   vingerafdruk van de overgenomen tekst, om de bron later te
--                 kunnen hervergelijken (bronbewaking)
--   import_note   wat de bezoeker erover moet weten, bijvoorbeeld dat het een
--                 Nederlandse vertaling is van een anderstalig etiket
--
-- Op de kaart staat dan: "Automatisch overgenomen van <domein> op <datum> · nog
-- niet door een mens nagelopen". De menselijke uitspraak blijft uitsluitend in
-- reviewed_at/reviewed_by: een import kan een product nooit "nagekeken" maken.

alter table public.recipe_versions
  add column if not exists imported_at timestamptz,
  add column if not exists import_hash text,
  add column if not exists import_note text;

-- De vijf bosch-producten zijn vertaald; die aantekening hoort ook op de plek
-- waar de site hem kan tonen (import_note). De aantekening in het beheer blijft
-- gewoon staan. Ze zijn door de beheerder nagekeken, dus ze krijgen géén
-- imported_at: de tekst is een vertaling, geen letterlijke brontekst.
update public.recipe_versions rv
set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.'
where rv.import_note is null
  and rv.review_note like 'Nederlandse vertaling van de etiket tekst%';

-- save_product_with_recipe(): een nieuwe versie van hetzelfde etiket houdt de
-- herkomst vast, net als de review — de tekst is dezelfde tekst. Verandert de
-- tekst wel, dan vervalt de herkomst: de nieuwe tekst kwam niet van de import
-- en moet dus opnieuw bekeken worden.
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
    insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
    values (p_brand, p_name, p_food_type, p_package_size, p_gtin, p_source_url, p_last_checked_at, p_published)
    returning id into v_product_id;
  else
    update public.products
    set brand = p_brand, name = p_name, food_type = p_food_type, package_size = p_package_size,
        gtin = p_gtin, source_url = p_source_url, last_checked_at = p_last_checked_at, published = p_published
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

-- Controle: hoeveel versies hebben een herkomst, en hoeveel een vertaalaantekening?
select count(*) as versies,
       count(*) filter (where imported_at is not null) as automatisch_overgenomen,
       count(*) filter (where import_note is not null) as met_aantekening
  from public.recipe_versions;
