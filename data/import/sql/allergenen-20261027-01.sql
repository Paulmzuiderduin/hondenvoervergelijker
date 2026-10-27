-- Algen en zeewier uit elkaar. Algen blijven "algae"; zeewier/kelp en
-- zeewierproducten krijgen de nieuwe sleutel "seaweed".
--
-- Opnieuw uitvoeren is veilig.

begin;

update public.ingredient_terms set allergen_keys = array['seaweed']::text[], note = 'Zeewier.' where term in ('zeegras', 'fucus', 'vesiculosus', 'ascophyllum', 'nodosum', 'carrageen', 'plaqueoff');
update public.ingredient_terms set allergen_keys = array['algae']::text[], note = 'Alg (microalg).' where term = 'schizochytrium';

-- Twee losse ingrediënten die nog geen eigen allergeen hadden.
update public.ingredient_terms set kind = 'bron', allergen_keys = array['safflower']::text[], note = 'Saffloerolie is een plantolie.' where term = 'saffloerolie';
update public.ingredient_terms set kind = 'bron', allergen_keys = array['timothy']::text[], note = 'Timoteegras.' where term = 'timoteegras';
update public.ingredient_terms set kind = 'onduidelijk', allergen_keys = array['safflower', 'milkthistle']::text[], note = 'Distelolie kan van saffloer of van mariadistel komen; de soort staat er niet bij.' where term = 'distelolie';

-- Woorden die zowel vis, algen als zeewier kunnen verbergen.
update public.ingredient_terms set allergen_keys = array_append(allergen_keys, 'seaweed') where term in ('dha', 'docosahexaeenzuur', 'epa', 'marien', 'isolaat', 'eiwitconcentraat', 'eiwi', 'plantenextracten') and not ('seaweed' = any(allergen_keys));

insert into public.ingredient_terms (term, kind, allergen_keys, note) values
  ('algen', 'bron', array['algae']::text[], 'Algen (microalgen).'),
  ('spirulina', 'bron', array['algae']::text[], 'Spirulina is een microalg.'),
  ('chlorella', 'bron', array['algae']::text[], 'Chlorella is een microalg.'),
  ('zeewier', 'bron', array['seaweed']::text[], 'Zeewier.'),
  ('wier', 'bron', array['seaweed']::text[], 'Wier/zeewier.'),
  ('kelp', 'bron', array['seaweed']::text[], 'Kelp is een bruinwier (zeewier).'),
  ('alginaat', 'bron', array['seaweed']::text[], 'Alginaat wordt uit zeewier gewonnen.'),
  ('algine', 'bron', array['seaweed']::text[], 'Algine wordt uit zeewier gewonnen.'),
  ('seaweed', 'bron', array['seaweed']::text[], 'Seaweed is zeewier.'),
  ('saffloer', 'bron', array['safflower']::text[], 'Saffloer.'),
  ('safflower', 'bron', array['safflower']::text[], 'Safflower is saffloer.'),
  ('carthamus', 'bron', array['safflower']::text[], 'Carthamus is de geslachtsnaam van saffloer.'),
  ('timothy', 'bron', array['timothy']::text[], 'Timothy is timoteegras.'),
  ('phleum', 'bron', array['timothy']::text[], 'Phleum is de geslachtsnaam van timoteegras.')
on conflict (term) do update set
  kind = excluded.kind,
  allergen_keys = excluded.allergen_keys,
  note = excluded.note;

select term, kind, allergen_keys, note
  from public.ingredient_terms
 where term in ('algen', 'spirulina', 'chlorella', 'schizochytrium', 'zeewier', 'wier', 'kelp', 'zeegras', 'fucus', 'ascophyllum', 'carrageen', 'alginaat', 'dha', 'epa', 'marien', 'saffloer', 'saffloerolie', 'distelolie', 'timoteegras', 'timothy')
 order by term;

commit;
