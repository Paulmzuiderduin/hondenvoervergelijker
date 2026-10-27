-- Laatste losse specerijen en hulpstoffen: kaneel, nootmuskaat en guar.
--
-- Opnieuw uitvoeren is veilig.

begin;

update public.ingredient_terms set allergen_keys = array['cinnamon']::text[], note = 'Kaneel.' where term in ('kaneel', 'kaneel25');
update public.ingredient_terms set kind = 'onduidelijk', allergen_keys = array['pumpkin', 'nutmeg']::text[], note = 'Muskaat kan muskaatpompoen of nootmuskaat zijn; de soort staat er niet bij.' where term = 'muskaat';
update public.ingredient_terms set allergen_keys = array_append(allergen_keys, 'guar') where term = 'guargom' and not ('guar' = any(allergen_keys));

insert into public.ingredient_terms (term, kind, allergen_keys, note) values
  ('nootmuskaat', 'bron', array['nutmeg']::text[], 'Nootmuskaat.'),
  ('nutmeg', 'bron', array['nutmeg']::text[], 'Nutmeg is nootmuskaat.'),
  ('myristica', 'bron', array['nutmeg']::text[], 'Myristica is de geslachtsnaam van nootmuskaat.'),
  ('cinnamon', 'bron', array['cinnamon']::text[], 'Cinnamon is kaneel.'),
  ('guar', 'bron', array['guar']::text[], 'Guar/guargom, afkomstig van de guarboon.')
on conflict (term) do update set
  kind = excluded.kind,
  allergen_keys = excluded.allergen_keys,
  note = excluded.note;

select term, kind, allergen_keys, note
  from public.ingredient_terms
 where term in ('kaneel', 'kaneel25', 'muskaat', 'guargom', 'nootmuskaat', 'nutmeg', 'myristica', 'cinnamon', 'guar')
 order by term;

commit;
