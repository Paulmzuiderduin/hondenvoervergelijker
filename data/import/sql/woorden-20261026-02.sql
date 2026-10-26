-- Aanvulling op woorden-20261026-01.sql: de 8 nieuwe woorden die na de
-- Specific-import in de keuring opdoken. Zelfde indeling als de hoofd batch.
--
-- Opnieuw uitvoeren is veilig: dezelfde woorden worden bijgewerkt.

begin;

insert into public.ingredient_terms (term, kind, allergen_keys, note) values
  ('herkomst', 'onschuldig', null, 'Herkomstaanduiding; geen ingrediënt.'),
  ('kleuren', 'onschuldig', null, 'Deel van "kunstmatige kleuren"; geen ingrediënt.'),
  ('nucleotiden', 'onschuldig', null, 'Nucleotiden uit gist; geen allergeen in onze lijst.'),
  ('petagile', 'onduidelijk', array['chicken', 'turkey', 'beef', 'lamb', 'duck', 'pork', 'rabbit', 'venison', 'horse', 'kangaroo', 'ostrich', 'poultry', 'fish', 'shellfish', 'insect']::text[], 'Petagile is een collageenachtig ingrediënt; de diersoort staat er niet bij.'),
  ('postbiotische', 'onschuldig', null, 'Postbiotische gistfermentatieproducten; geen allergeen in onze lijst.'),
  ('tenminste', 'onschuldig', null, 'Vulwoord in "ten minste 16% rund".'),
  ('varke', 'onduidelijk', array['pork']::text[], 'Afgebroken woord in "varke nsvet"; bedoeld is varkensvet.'),
  ('nsvet', 'onduidelijk', array['pork']::text[], 'Rest van "varkensvet" na een spatie in de bron.')
on conflict (term) do update set
  kind = excluded.kind,
  allergen_keys = excluded.allergen_keys,
  note = excluded.note;

commit;
