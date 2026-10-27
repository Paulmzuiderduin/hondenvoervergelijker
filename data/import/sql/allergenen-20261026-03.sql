-- Laatste groep losse allergenen: kool, pruim, aalbes, moerbei, goji,
-- pecannoot, kastanje, sorghum en smeerwortel.
--
-- Opnieuw uitvoeren is veilig.

begin;

update public.ingredient_terms set allergen_keys = array['cabbage']::text[] where term = 'kool';
update public.ingredient_terms set allergen_keys = array['plum']::text[], note = 'Pruimen zijn vruchten (plum).' where term = 'pruimen';
update public.ingredient_terms set allergen_keys = array['currant']::text[], note = 'Aalbes is een bes (currant).' where term = 'aalbes';
update public.ingredient_terms set allergen_keys = array['mulberry']::text[] where term in ('morus', 'moerbei');
update public.ingredient_terms set allergen_keys = array['goji']::text[] where term = 'lycium';
update public.ingredient_terms set allergen_keys = array['pecan']::text[] where term = 'pecannotenschil';
update public.ingredient_terms set allergen_keys = array['chestnut']::text[] where term = 'kastanjemeel';
update public.ingredient_terms set allergen_keys = array['sorghum']::text[] where term = 'milo';
update public.ingredient_terms set allergen_keys = array['comfrey']::text[] where term = 'smeerwortel';

insert into public.ingredient_terms (term, kind, allergen_keys, note) values
  ('cabbage', 'bron', array['cabbage']::text[], 'Kool.'),
  ('plum', 'bron', array['plum']::text[], 'Pruim.'),
  ('currant', 'bron', array['currant']::text[], 'Aalbes/currant.'),
  ('mulberry', 'bron', array['mulberry']::text[], 'Moerbei.'),
  ('goji', 'bron', array['goji']::text[], 'Goji/lycium.'),
  ('pecan', 'bron', array['pecan']::text[], 'Pecannoot.'),
  ('chestnut', 'bron', array['chestnut']::text[], 'Kastanje.'),
  ('sorghum', 'bron', array['sorghum']::text[], 'Sorghum/milo.'),
  ('comfrey', 'bron', array['comfrey']::text[], 'Smeerwortel.')
on conflict (term) do update set
  kind = excluded.kind,
  allergen_keys = excluded.allergen_keys,
  note = excluded.note;

select term, kind, allergen_keys, note
  from public.ingredient_terms
 where term in ('kool', 'pruimen', 'aalbes', 'morus', 'moerbei', 'lycium', 'pecannotenschil', 'kastanjemeel', 'milo', 'smeerwortel', 'cabbage', 'plum', 'currant', 'mulberry', 'goji', 'pecan', 'chestnut', 'sorghum', 'comfrey')
 order by term;

commit;
