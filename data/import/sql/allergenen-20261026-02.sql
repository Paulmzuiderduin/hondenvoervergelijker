-- Audit van de woordenlijst: schaap, kalf, wild zwijn, rendier, haas en bizon
-- worden eigen allergenen. Daarnaast zijn woorden die al een specifieke
-- allergeensleutel hadden (zoals salie -> sage en sinaasappel -> citrus)
-- naar die specifieke sleutel verplaatst.
--
-- Opnieuw uitvoeren is veilig.

begin;

-- schaap
update public.ingredient_terms set allergen_keys = array['schaap']::text[], note = 'Schapenproduct; bron van schaap.' where term in ('schapenvlees', 'schapenvet', 'schapenhart', 'schapenlever', 'schapenpens', 'schapenvleesmeel');

-- kalf
update public.ingredient_terms set allergen_keys = array['kalf']::text[], note = 'Kalfsproduct; bron van kalf.' where term in ('kalfshart', 'kalfslong', 'kalfsvet', 'kalfsvlees');

-- wildzwijn
update public.ingredient_terms set allergen_keys = array['wildzwijn']::text[], note = 'Wild zwijn/everzwijn; bron van wild zwijn.' where term in ('zwijn', 'wildzwijn');

-- rendier
update public.ingredient_terms set allergen_keys = array['rendier']::text[], note = 'Rendier; bron van rendier.' where term in ('rendier', 'rendiereiwit');

-- haas
update public.ingredient_terms set allergen_keys = array['haas']::text[], note = 'Haas; bron van haas.' where term in ('haas', 'hazenkarkas', 'hazenorganen');

-- Bizon was onduidelijk/rund; nu een eigen diersoort.
update public.ingredient_terms set kind = 'bron', allergen_keys = array['bizon']::text[], note = 'Bizon is een eigen diersoort.' where term = 'bizon';

update public.ingredient_terms set allergen_keys = array['trout']::text[] where term in ('regenboogforel', 'ridderforel');
update public.ingredient_terms set allergen_keys = array['citrus']::text[] where term in ('sinaasappel');
update public.ingredient_terms set allergen_keys = array['sardine']::text[] where term in ('pilchard');
update public.ingredient_terms set allergen_keys = array['pomegranate']::text[] where term in ('granaatappel', 'granaatappelpitjes');
update public.ingredient_terms set allergen_keys = array['seabuckthorn']::text[] where term in ('duindoorn');
update public.ingredient_terms set allergen_keys = array['aronia']::text[] where term in ('aroniabessen');
update public.ingredient_terms set allergen_keys = array['saskatoon']::text[] where term in ('saskatoonbessen');
update public.ingredient_terms set allergen_keys = array['elderberry']::text[] where term in ('vlierbessen', 'vlierbloesem', 'vlierplant');
update public.ingredient_terms set allergen_keys = array['baobab']::text[] where term in ('baobab');
update public.ingredient_terms set allergen_keys = array['sage']::text[] where term in ('salie');
update public.ingredient_terms set allergen_keys = array['marjoram']::text[] where term in ('marjolein');
update public.ingredient_terms set allergen_keys = array['oregano']::text[] where term in ('oregano');
update public.ingredient_terms set allergen_keys = array['basil']::text[] where term in ('basilicum');
update public.ingredient_terms set allergen_keys = array['coriander']::text[] where term in ('koriander');
update public.ingredient_terms set allergen_keys = array['lovage']::text[] where term in ('lavas');
update public.ingredient_terms set allergen_keys = array['lavender']::text[] where term in ('lavendel', 'lavendelbloemen');
update public.ingredient_terms set allergen_keys = array['ginger']::text[] where term in ('gember');
update public.ingredient_terms set allergen_keys = array['anise']::text[] where term in ('anijszaad', 'anisvruchten', 'anijs');
update public.ingredient_terms set allergen_keys = array['fenugreek']::text[] where term in ('fenegriek');
update public.ingredient_terms set allergen_keys = array['licorice']::text[] where term in ('zoethoutwortel');
update public.ingredient_terms set allergen_keys = array['burdock']::text[] where term in ('kliswortel');
update public.ingredient_terms set allergen_keys = array['althaea']::text[] where term in ('heemstwortel', 'althaeawortel');
update public.ingredient_terms set allergen_keys = array['hawthorn']::text[] where term in ('meidoorn');
update public.ingredient_terms set allergen_keys = array['mistletoe']::text[] where term in ('maretak', 'maretakkruid');
update public.ingredient_terms set allergen_keys = array['yarrow']::text[] where term in ('duizendblad', 'duizendbladkruid');
update public.ingredient_terms set allergen_keys = array['centaury']::text[] where term in ('duizendguldenkruid');
update public.ingredient_terms set allergen_keys = array['gentian']::text[] where term in ('gentiaanwortel', 'gentiaan');
update public.ingredient_terms set allergen_keys = array['sarsaparilla']::text[] where term in ('sarsaparillawortel');
update public.ingredient_terms set allergen_keys = array['horsetail']::text[] where term in ('heermoes');
update public.ingredient_terms set allergen_keys = array['devilsclaw']::text[] where term in ('duivelsklauw');
update public.ingredient_terms set allergen_keys = array['birch']::text[] where term in ('berkenbladeren');
update public.ingredient_terms set allergen_keys = array['juniper']::text[] where term in ('jeneverbessen');
update public.ingredient_terms set allergen_keys = array['ginseng']::text[] where term in ('ginseng');
update public.ingredient_terms set allergen_keys = array['turnipgreens']::text[] where term in ('raapstelen');
update public.ingredient_terms set allergen_keys = array['artichoke']::text[] where term in ('artisjok');
update public.ingredient_terms set allergen_keys = array['sunchoke']::text[] where term in ('topinamboer');
update public.ingredient_terms set allergen_keys = array['cress']::text[] where term in ('tuinkers');
update public.ingredient_terms set allergen_keys = array['acerola']::text[] where term in ('acerola');
update public.ingredient_terms set allergen_keys = array['echinacea']::text[] where term in ('echinacea');
update public.ingredient_terms set allergen_keys = array['raspberry']::text[] where term in ('frambozenbladeren');
update public.ingredient_terms set allergen_keys = array['chard']::text[] where term in ('snijbiet');
update public.ingredient_terms set allergen_keys = array['violet']::text[] where term in ('viooltjes');

-- Synoniemen die nog niet als term in de lijst stonden.
insert into public.ingredient_terms (term, kind, allergen_keys, note) values
  ('schaap', 'bron', array['schaap']::text[], 'Schaap is een eigen diersoort.'),
  ('mutton', 'bron', array['schaap']::text[], 'Mutton is schapenvlees.'),
  ('veal', 'bron', array['kalf']::text[], 'Veal is kalfsvlees.'),
  ('wildzwijn', 'bron', array['wildzwijn']::text[], 'Wild zwijn/everzwijn.'),
  ('everzwijn', 'bron', array['wildzwijn']::text[], 'Everzwijn is wild zwijn.'),
  ('boar', 'bron', array['wildzwijn']::text[], 'Boar is wild zwijn.'),
  ('reindeer', 'bron', array['rendier']::text[], 'Reindeer is rendier.'),
  ('hare', 'bron', array['haas']::text[], 'Hare is haas.'),
  ('bison', 'bron', array['bizon']::text[], 'Bison is bizon.')
on conflict (term) do update set kind = excluded.kind, allergen_keys = excluded.allergen_keys, note = excluded.note;

-- Controle: de nieuwe en verplaatste woorden.
select term, kind, allergen_keys, note from public.ingredient_terms where term in ('schapenvlees', 'kalfsvlees', 'zwijn', 'rendier', 'haas', 'bizon', 'salie', 'sinaasappel', 'raapstelen', 'snijbiet') order by term;

commit;
