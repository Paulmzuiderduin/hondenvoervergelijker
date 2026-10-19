-- Het review-record: vanaf nu de enige menselijke uitspraak die de database
-- vastlegt over een ingrediëntenlijst.
--
-- Tot nu toe stonden er twee afgeleide vlaggen in de database
-- (has_uncertain_ingredients en ingredients_mapped) die met bulkacties gelijk
-- gezet moesten worden. Die informatie volgt volledig uit de etikettekst en
-- wordt nu bij het laden berekend, zodat vlag en tekst nooit meer uiteen kunnen
-- lopen. Wat overblijft is één feit: heeft een beheerder deze tekst tegen de
-- bron gecontroleerd, wanneer, en met welke aantekening?
--
-- Nagekeken betekent vanaf nu: "deze ingrediëntenlijst is de lijst van de
-- fabrikant". Het zegt niets over de vraag of een allergeen er wel of niet in
-- zit — die vraag beantwoordt de vergelijking per allergeen uit de tekst zelf.
-- Een etiket dat de bron van een ingrediënt niet noemt blijft daarom "Controleer
-- etiket/fabrikant" voor wie dat allergeen vermijdt, ook als het nagekeken is.
-- Dat is eerlijk: alleen het etiket of de fabrikant kan die vraag beantwoorden.

alter table public.recipe_versions
  add column if not exists reviewed_at timestamptz,
  add column if not exists reviewed_by uuid references auth.users(id) on delete set null,
  add column if not exists review_note text;

-- Wat eerder als "nagekeken" was aangevinkt, geldt als gecontroleerde tekst. De
-- laatst bekende controledatum is die van het product zelf.
update public.recipe_versions rv
set reviewed_at = coalesce(p.last_checked_at::timestamptz, rv.created_at),
    review_note = case
      when rv.has_uncertain_ingredients then 'Overgenomen uit de oude administratie; het etiket noemt een bron die niet bij name staat.'
      else null
    end
from public.products p
where p.id = rv.product_id
  and rv.ingredients_mapped
  and rv.reviewed_at is null;

-- Eén klik per product: "ik heb deze tekst tegen de bron gecontroleerd". De
-- aantekening is optioneel en blijft bewaard zolang de tekst niet verandert.
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

  -- Een nagekeken etiket is ook de laatst gecontroleerde versie van het product.
  update public.products p
  set last_checked_at = current_date
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

-- De bulkfunctie die de oude vlaggen gelijkzette is niet meer nodig.
drop function if exists public.set_recipe_review(uuid[], boolean, boolean, boolean);

-- save_product_with_recipe(): dezelfde atomaire opslag, maar met het
-- review-record in plaats van de twee vlaggen. De uitspraak "nagekeken" hoort
-- bij de tekst die bekeken is: blijft de tekst gelijk, dan blijft de bevestiging
-- staan; verandert de tekst, dan moet er opnieuw gekeken worden — tenzij de
-- beheerder dat bij het opslaan meteen doet.
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

    select rv.ingredients_text, rv.reviewed_at, rv.reviewed_by, rv.review_note
    into v_previous_text, v_previous_reviewed_at, v_previous_reviewed_by, v_previous_note
    from public.recipe_versions rv
    where rv.product_id = v_product_id
      and rv.is_current;

    update public.recipe_versions set is_current = false where product_id = v_product_id and is_current;
  end if;

  v_text_same := v_previous_text is not distinct from p_ingredients_text;

  insert into public.recipe_versions (product_id, ingredients_text, is_current, reviewed_at, reviewed_by, review_note)
  values (
    v_product_id,
    p_ingredients_text,
    true,
    case when coalesce(p_reviewed, false) then now() when v_text_same then v_previous_reviewed_at else null end,
    case when coalesce(p_reviewed, false) then (select auth.uid()) when v_text_same then v_previous_reviewed_by else null end,
    case when coalesce(p_reviewed, false) then nullif(btrim(coalesce(p_review_note, '')), '') when v_text_same then v_previous_note else null end
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

-- De oude variant met de twee vlaggen vervalt; de nieuwe app gebruikt die niet meer.
drop function if exists public.save_product_with_recipe(uuid, text, text, public.food_type, text, text, text, date, boolean, text, boolean, boolean, text[]);
