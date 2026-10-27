-- "Orgaanvlees" is dierlijk orgaanvlees, maar noemt geen diersoort. Het kan
-- dus van elk dier komen, niet alleen van kalkoen.
--
-- Opnieuw uitvoeren is veilig.

begin;

insert into public.ingredient_terms (term, kind, allergen_keys, note) values
  ('orgaanvlees', 'onduidelijk',
   array['chicken', 'turkey', 'beef', 'lamb', 'schaap', 'kalf', 'bizon', 'duck', 'goose', 'pork', 'wildzwijn', 'rabbit', 'haas', 'venison', 'rendier', 'horse', 'kangaroo', 'ostrich', 'goat', 'buffalo', 'poultry'],
   'Dierlijk orgaanvlees zonder genoemde soort.')
on conflict (term) do update set
  kind = excluded.kind,
  allergen_keys = excluded.allergen_keys,
  note = excluded.note;

select term, kind, allergen_keys, note
  from public.ingredient_terms
 where term = 'orgaanvlees';

commit;
