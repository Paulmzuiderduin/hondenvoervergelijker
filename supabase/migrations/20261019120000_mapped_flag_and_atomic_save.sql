-- Stap 1 en 2 van de code-review.
--
-- 1. recipe_versions.ingredients_mapped is de expliciete bevestiging dat een
--    ingrediëntenlijst volledig is nagelopen. Zonder die bevestiging mag een
--    product nooit als "geschikt" gelden: het ontbreken van een allergeen-rij
--    is dan geen bewijs dat het allergeen er niet in zit.
--
-- 2. save_product_with_recipe() schrijft product, receptversie en allergenen in
--    één transactie, zodat een mislukte stap nooit een product zonder huidige
--    receptversie (en dus een onterecht "geschikt" product) achterlaat.

alter table public.recipe_versions
  add column if not exists ingredients_mapped boolean not null default false;

-- Bestaande rijen die aantoonbaar zijn nagelopen (geen onduidelijke categorie én
-- minimaal één allergeen-rij) blijven bevestigd, zodat de bestaande beoordeling
-- niet verandert. Rijen zonder allergenen blijven onbevestigd en belanden in
-- "Controleer etiket/fabrikant" tot een beheerder ze naloopt.
update public.recipe_versions rv
set ingredients_mapped = true
where not rv.ingredients_mapped
  and not rv.has_uncertain_ingredients
  and exists (select 1 from public.recipe_ingredients ri where ri.recipe_version_id = rv.id);

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
  p_has_uncertain_ingredients boolean,
  p_ingredients_mapped boolean,
  p_allergens text[]
) returns uuid
language plpgsql
set search_path = public
as $$
declare
  v_product_id uuid;
  v_version_id uuid;
begin
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

    update public.recipe_versions set is_current = false where product_id = v_product_id and is_current;
  end if;

  insert into public.recipe_versions (product_id, ingredients_text, has_uncertain_ingredients, ingredients_mapped, is_current)
  values (v_product_id, p_ingredients_text, coalesce(p_has_uncertain_ingredients, false), coalesce(p_ingredients_mapped, false), true)
  returning id into v_version_id;

  insert into public.recipe_ingredients (recipe_version_id, allergen_key, certainty)
  select v_version_id, keys.allergen_key, 'confirmed'
  from (select distinct unnest(coalesce(p_allergens, '{}'::text[])) as allergen_key) keys
  where keys.allergen_key is not null and keys.allergen_key <> '';

  return v_product_id;
end;
$$;

revoke all on function public.save_product_with_recipe(uuid, text, text, public.food_type, text, text, text, date, boolean, text, boolean, boolean, text[]) from public;
grant execute on function public.save_product_with_recipe(uuid, text, text, public.food_type, text, text, text, date, boolean, text, boolean, boolean, text[]) to authenticated;
