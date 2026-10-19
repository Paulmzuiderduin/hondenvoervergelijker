-- Het beheer kan de twee vlaggen van een receptversie in bulk rechtzetten:
--   * has_uncertain_ingredients  = noemt het etiket een bron die niet bij name
--     staat ("dierlijk vet", "granen", "gevogeltevet", "bouillon")? Die vlag
--     volgt uit de etikettekst zelf, zodat de rode woorden op de site en het
--     oordeel "Controleer etiket/fabrikant" nooit uit elkaar lopen.
--   * ingredients_mapped         = heeft een beheerder deze lijst nagelopen?
--
-- Beide acties gaan per reeks in één transactie, zodat er nooit een product half
-- wordt bijgewerkt.
--
-- p_ingredients_mapped en p_has_uncertain_ingredients: null laat de bestaande
-- waarde staan. p_touch_checked_at zet products.last_checked_at op vandaag en
-- hoort alleen bij "nagekeken": dan is de lijst vandaag bevestigd.

create or replace function public.set_recipe_review(
  p_version_ids uuid[],
  p_ingredients_mapped boolean,
  p_has_uncertain_ingredients boolean,
  p_touch_checked_at boolean default false
) returns integer
language plpgsql
set search_path = public
as $$
declare
  v_count integer;
begin
  update public.recipe_versions
  set ingredients_mapped = coalesce(p_ingredients_mapped, ingredients_mapped),
      has_uncertain_ingredients = coalesce(p_has_uncertain_ingredients, has_uncertain_ingredients)
  where id = any (p_version_ids)
    and is_current;
  get diagnostics v_count = row_count;

  if p_touch_checked_at then
    update public.products p
    set last_checked_at = current_date
    where exists (
      select 1
      from public.recipe_versions rv
      where rv.id = any (p_version_ids)
        and rv.is_current
        and rv.product_id = p.id
    );
  end if;

  return v_count;
end;
$$;

revoke all on function public.set_recipe_review(uuid[], boolean, boolean, boolean) from public;
grant execute on function public.set_recipe_review(uuid[], boolean, boolean, boolean) to authenticated;
