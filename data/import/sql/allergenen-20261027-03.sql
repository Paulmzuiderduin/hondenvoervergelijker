-- Planten die met een dier- of zuivelwoord beginnen, maar zelf geen dier of
-- zuivel zijn. Zonder deze indeling zou "eendenkroos" als eend en
-- "melkdistel" als melk gelden.
--
-- Opnieuw uitvoeren is veilig.

begin;

insert into public.ingredient_terms (term, kind, allergen_keys, note) values
  ('eendenkroos', 'onschuldig', null, 'Waterplant; geen eend.'),
  ('ganzenvoet', 'onschuldig', null, 'Plant; geen gans.'),
  ('ganzenbloem', 'onschuldig', null, 'Plant; geen gans.'),
  ('kippenkruid', 'onschuldig', null, 'Plant; geen kip.'),
  ('melkdistel', 'onschuldig', null, 'Plant; geen melk.'),
  ('krabbenscheer', 'onschuldig', null, 'Waterplant; geen krab.'),
  ('boterbloem', 'onschuldig', null, 'Plant; geen boter of melk.'),
  ('kaasjeskruid', 'onschuldig', null, 'Plant; geen kaas of melk.'),
  ('hertshooi', 'onschuldig', null, 'Plant; geen hert.'),
  ('varkensgras', 'onschuldig', null, 'Plant; geen varken.'),
  ('geitenkruid', 'onschuldig', null, 'Plant; geen geit.'),
  ('konijnenkruid', 'onschuldig', null, 'Plant; geen konijn.'),
  ('honingklaver', 'onschuldig', null, 'Plant; geen honing.')
on conflict (term) do update set
  kind = excluded.kind,
  allergen_keys = null,
  note = excluded.note;

select term, kind, allergen_keys, note
  from public.ingredient_terms
 where term in ('eendenkroos', 'ganzenvoet', 'ganzenbloem', 'kippenkruid', 'melkdistel', 'krabbenscheer', 'boterbloem', 'kaasjeskruid', 'hertshooi', 'varkensgras', 'geitenkruid', 'konijnenkruid', 'honingklaver')
 order by term;

commit;
