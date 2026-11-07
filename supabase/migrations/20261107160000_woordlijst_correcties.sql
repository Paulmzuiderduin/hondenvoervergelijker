-- Correcties op de woordenlijst na controle van alle etiketten.
--
-- 1. Woorden die als "onduidelijk" zonder allergeenscope stonden, verborgen
--    onbedoeld álle allergenen. Voor groenten, zaden en slachtafval bestaat al
--    een ingebouwde, specifieke regel; de redundante brede termen gaan weg.
-- 2. Luzerne is alfalfa, een concrete plant, en geen verzamelterm voor alle
--    peulvruchten. Colostrum is melk. Veren zijn gevogelte. Fenegriekzaad is
--    fenegriek en guargom is guar; die woorden noemen de plant al.
-- 3. Enkele ontbrekende bronnen: fond (vleesbouillon), char/arctische char/
--    steelhead (forelachtigen) en platvis (witvis).
-- 4. "Planten" is een verzamelwoord en geen onschuldig woord. "PlaqueOff" is
--    een zeewierproduct. "Mume" is de Japanse abrikoos.
-- 5. Losse delen van Chinese kruidennamen ("he", "si", "tu", ...) en Latijnse
--    soortnamen ("cordata", "purpurea", ...) mogen nooit zelf een allergeen
--    aanwijzen. De volledige namen staan in de ingebouwde woordenlijst.
-- 6. "oli" was een afgekapte vorm van "olie" en wordt niet gebruikt. "test" en
--    "veel" waren proefregels uit een oude keuring.
--
-- De ingebouwde woordenlijst in src/lib/allergens.js bevat dezelfde correcties,
-- zodat de keuring ook zonder database blijft werken.

begin;

delete from public.ingredient_terms
 where term in (
   'groenten', 'zaden', 'slachtafval', 'bijprodukten', 'oli',
   'test', 'veel',
   'he', 'si', 'tu', 'wu', 'xu', 'yao', 'zi', 'mao', 'shan', 'shou', 'xian', 'duan',
   'polygoni', 'multiflori', 'cordata', 'purpurea', 'origanum', 'vulgare', 'mume'
 );

update public.ingredient_terms
   set kind = 'bron',
       allergen_keys = array['alfalfa'],
       note = 'Luzerne is alfalfa (een concrete plant).'
 where term in ('luzerne', 'luzernemeel');

update public.ingredient_terms
   set kind = 'bron',
       allergen_keys = array['milk'],
       note = 'Colostrum is melk (meestal rund).'
 where term = 'colostrum';

update public.ingredient_terms
   set kind = 'bron',
       allergen_keys = array['fenugreek'],
       note = 'Fenegriekzaad is fenegriek (een concrete plant).'
 where term = 'fenegriekzaad';

update public.ingredient_terms
   set kind = 'bron',
       allergen_keys = array['guar'],
       note = 'Guargom komt van de guarboon.'
 where term = 'guargom';

update public.ingredient_terms
   set kind = 'bron',
       allergen_keys = array['seaweed'],
       note = 'PlaqueOff is een zeewierproduct.'
 where term = 'plaqueoff';

update public.ingredient_terms
   set kind = 'onduidelijk',
       allergen_keys = null,
       note = 'Verzamelwoord voor planten; de soort staat er niet bij. Staan de planten ernaast genoemd, dan vervalt de markering.'
 where term = 'planten';

update public.ingredient_terms
   set kind = 'onduidelijk',
       allergen_keys = array['fish', 'shellfish', 'algae', 'seaweed'],
       note = 'Plankton kan van vis, schaaldieren of algen afkomstig zijn; de bron staat er niet bij.'
 where term = 'plankton';

update public.ingredient_terms
   set kind = 'onduidelijk',
       allergen_keys = array['poultry'],
       note = 'Veren zijn afkomstig van gevogelte; de soort staat er niet bij.'
 where term = 'veren';

insert into public.ingredient_terms (term, kind, allergen_keys, note)
values
  ('fond', 'onduidelijk', array['chicken', 'turkey', 'beef', 'lamb', 'duck', 'goose', 'pork', 'rabbit', 'venison', 'horse', 'kangaroo', 'ostrich', 'poultry'], 'Fond is een vleesbouillon; de diersoort staat er niet bij.'),
  ('char', 'bron', array['trout'], 'Char is een forelachtige vis.'),
  ('arctische char', 'bron', array['trout'], 'Arctische char is een forelachtige vis.'),
  ('steelhead', 'bron', array['trout'], 'Steelhead is regenboogforel.'),
  ('platvis', 'bron', array['whitefish'], 'Platvis is een vis; de soort staat er niet bij.')
on conflict (term) do update
  set kind = excluded.kind,
      allergen_keys = excluded.allergen_keys,
      note = excluded.note;

commit;
