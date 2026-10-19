-- Indeling van de woorden die de keuring niet kende.
--
-- Elk woord krijgt een eigen regel met een notitie, zodat in Beheer te zien is
-- waarom het zo is ingedeeld. Opnieuw uitvoeren is veilig: dezelfde woorden
-- worden bijgewerkt in plaats van dubbel toegevoegd.
--
--   bron         het woord is een bron van een allergeen uit onze lijst
--   onduidelijk  het woord kan een allergeen verbergen dat er niet bij staat
--   onschuldig   geen allergeen in onze lijst en verbergt er ook geen
--
-- Tweede ronde: geit, waterbuffel en suiker staan nu als allergeen in de
-- keuring zelf, dus die woorden staan hier niet meer bij. Woorden als
-- luzerne, isolaat, aminozuren, premix, lijven/randen, weefsels en honing
-- zijn strenger geworden: ze kunnen iets verbergen en doen dat nu ook.
--
-- 121 woorden.

begin;

-- Woorden uit de eerste ronde die nu door de keuring zelf worden gedekt
-- (geit, waterbuffel, suiker en hun vormen) of die vervangen zijn, gaan eruit.
delete from public.ingredient_terms where term in ('geit', 'geitenvlees', 'geitvlees', 'waterbuffel', 'suiker', 'suikers', 'dextrose', 'xylose', 'vitamine b');

insert into public.ingredient_terms (term, kind, allergen_keys, note) values
  ('groenlipmossel', 'bron', array['shellfish']::text[], 'Groenlipmossel is een mossel (schaaldier).'),
  ('groenlipmosselen', 'bron', array['shellfish']::text[], 'Meervoud van groenlipmossel (schaaldier).'),
  ('perna', 'bron', array['shellfish']::text[], 'Latijnse geslachtsnaam van de groenlipmossel (Perna canaliculus).'),
  ('canaliculus', 'bron', array['shellfish']::text[], 'Soortnaam van de groenlipmossel (Perna canaliculus).'),
  ('pintobonen', 'bron', array['bean']::text[], 'Pintobonen zijn bonen.'),
  ('navybonen', 'bron', array['bean']::text[], 'Navybonen zijn bonen.'),
  ('schapenvlees', 'bron', array['lamb']::text[], 'Schapenvlees is lam.'),
  ('pecannotenschil', 'bron', array['nuts']::text[], 'Pecannoot is een noot; de schil hoort bij die noot.'),
  ('milo', 'bron', array['grains']::text[], 'Milo is een sorghumsoort, dus een graan.'),
  ('pilchard', 'bron', array['fish']::text[], 'Pilchard is een vissoort (sardine-achtige).'),
  ('pollakolie', 'bron', array['fish']::text[], 'Olie van pollak, een vis.'),
  ('butternutpompoen', 'bron', array['pumpkin']::text[], 'Butternut is een pompoensoort.'),
  ('zeegras', 'bron', array['algae']::text[], 'Zeegras hoort bij algen/zeewier.'),
  ('schizochytrium', 'bron', array['algae']::text[], 'Schizochytrium is een alg (bron van algenolie).'),
  ('granaatappel', 'bron', array['fruit']::text[], 'Granaatappel is fruit.'),
  ('duindoorn', 'bron', array['fruit']::text[], 'Duindoorn is een vrucht.'),
  ('aroniabessen', 'bron', array['fruit']::text[], 'Aroniabessen zijn vruchten.'),
  ('saskatoonbessen', 'bron', array['fruit']::text[], 'Saskatoonbessen zijn vruchten.'),
  ('vlierbessen', 'bron', array['fruit']::text[], 'Vlierbessen zijn vruchten.'),
  ('vlierbloesem', 'bron', array['fruit']::text[], 'Vlierbloesem hoort bij de vlierbes (fruit).'),
  ('baobab', 'bron', array['fruit']::text[], 'Baobab is een vrucht.'),
  ('salie', 'bron', array['herbs']::text[], 'Kruid.'),
  ('marjolein', 'bron', array['herbs']::text[], 'Kruid.'),
  ('oregano', 'bron', array['herbs']::text[], 'Kruid.'),
  ('basilicum', 'bron', array['herbs']::text[], 'Kruid.'),
  ('koriander', 'bron', array['herbs']::text[], 'Kruid.'),
  ('lavas', 'bron', array['herbs']::text[], 'Kruid (lavas = maggiplant).'),
  ('lavendel', 'bron', array['herbs']::text[], 'Kruid.'),
  ('lavendelbloemen', 'bron', array['herbs']::text[], 'Kruid.'),
  ('gember', 'bron', array['herbs']::text[], 'Kruid.'),
  ('anijszaad', 'bron', array['herbs']::text[], 'Kruidzaad.'),
  ('anisvruchten', 'bron', array['herbs']::text[], 'Kruidzaad.'),
  ('fenegriek', 'bron', array['herbs']::text[], 'Kruid.'),
  ('zoethoutwortel', 'bron', array['herbs']::text[], 'Kruid.'),
  ('mariadistel', 'bron', array['herbs']::text[], 'Kruid.'),
  ('kliswortel', 'bron', array['herbs']::text[], 'Kruid.'),
  ('heemstwortel', 'bron', array['herbs']::text[], 'Kruid.'),
  ('meidoorn', 'bron', array['herbs']::text[], 'Kruid.'),
  ('maretak', 'bron', array['herbs']::text[], 'Kruid.'),
  ('duizendblad', 'bron', array['herbs']::text[], 'Kruid.'),
  ('duizendguldenkruid', 'bron', array['herbs']::text[], 'Kruid.'),
  ('gentiaanwortel', 'bron', array['herbs']::text[], 'Kruid.'),
  ('althaeawortel', 'bron', array['herbs']::text[], 'Kruid.'),
  ('sarsaparillawortel', 'bron', array['herbs']::text[], 'Kruid.'),
  ('heermoes', 'bron', array['herbs']::text[], 'Kruid.'),
  ('duivelsklauw', 'bron', array['herbs']::text[], 'Kruid.'),
  ('berkenbladeren', 'bron', array['herbs']::text[], 'Kruid.'),
  ('jeneverbessen', 'bron', array['herbs']::text[], 'Kruid (jeneverbes).'),
  ('ginseng', 'bron', array['herbs']::text[], 'Kruid.'),
  ('raapstelen', 'bron', array['vegetables']::text[], 'Groente.'),
  ('artisjok', 'bron', array['vegetables']::text[], 'Groente.'),
  ('topinamboer', 'bron', array['vegetables']::text[], 'Groente (topinamboer = aardpeer).'),
  ('tuinkers', 'bron', array['vegetables']::text[], 'Groente.'),
  ('grieben', 'onduidelijk', array['chicken', 'turkey', 'beef', 'lamb', 'duck', 'pork', 'rabbit', 'venison', 'horse', 'kangaroo', 'ostrich', 'poultry']::text[], 'Grieben (Duits) is dierlijk vetweefsel zonder diersoort; welk dier staat er niet.'),
  ('hemoglobine', 'onduidelijk', array['chicken', 'turkey', 'beef', 'lamb', 'duck', 'pork', 'rabbit', 'venison', 'horse', 'kangaroo', 'ostrich', 'poultry']::text[], 'Hemoglobine komt van dierlijk bloed; de diersoort staat er niet bij.'),
  ('chondroitinesulfaat', 'onduidelijk', array['beef', 'chicken', 'duck', 'horse', 'kangaroo', 'lamb', 'ostrich', 'pork', 'poultry', 'rabbit', 'turkey', 'venison', 'fish']::text[], 'Chondroïtine komt uit kraakbeen; de diersoort staat er niet bij.'),
  ('colostrum', 'onduidelijk', array['milk']::text[], 'Colostrum is afkomstig van melk (meestal rund).'),
  ('vetzuren', 'onduidelijk', array['chicken', 'turkey', 'beef', 'lamb', 'duck', 'pork', 'rabbit', 'venison', 'horse', 'kangaroo', 'ostrich', 'poultry', 'soy', 'milk', 'fish', 'corn', 'nuts', 'peanut', 'sesame']::text[], 'Vetzuren kunnen van dierlijk of plantaardig vet komen; de bron staat er niet bij.'),
  ('maltodextrine', 'onduidelijk', array['wheat', 'barley', 'oats', 'corn', 'rice', 'grains', 'millet', 'rye', 'spelt', 'buckwheat', 'quinoa', 'potato', 'sweetpotato', 'tapioca']::text[], 'Maltodextrine wordt van zetmeel gemaakt (maïs, tarwe of aardappel); de bron staat er niet bij.'),
  ('bessen', 'onduidelijk', array['strawberry', 'apple', 'banana', 'blueberry', 'blackberry', 'cranberry', 'date', 'raspberry', 'fruit', 'mango', 'papaya', 'pear', 'peach']::text[], 'Bessen zijn fruit, maar niet welke soort.'),
  ('bes', 'onduidelijk', array['strawberry', 'apple', 'banana', 'blueberry', 'blackberry', 'cranberry', 'date', 'raspberry', 'fruit', 'mango', 'papaya', 'pear', 'peach']::text[], 'Bes is fruit, maar niet welke soort.'),
  ('weefsels', 'onduidelijk', array['chicken', 'turkey', 'beef', 'lamb', 'duck', 'pork', 'rabbit', 'venison', 'horse', 'kangaroo', 'ostrich', 'poultry']::text[], 'Weefsels kunnen van elk dier komen; het etiket noemt de soort niet.'),
  ('lijven', 'onduidelijk', array['chicken', 'turkey', 'beef', 'lamb', 'duck', 'pork', 'rabbit', 'venison', 'horse', 'kangaroo', 'ostrich', 'poultry', 'fish']::text[], 'Lichaamsdelen van een dier zonder genoemde soort.'),
  ('randen', 'onduidelijk', array['chicken', 'turkey', 'beef', 'lamb', 'duck', 'pork', 'rabbit', 'venison', 'horse', 'kangaroo', 'ostrich', 'poultry', 'fish']::text[], 'Snijresten van een dier zonder genoemde soort.'),
  ('luzerne', 'onduidelijk', array['pea', 'bean', 'lentil', 'chickpea', 'lupin', 'soy', 'peanut']::text[], 'Luzerne (alfalfa) is een vlinderbloemige, net als erwt, boon, linze en soja.'),
  ('luzernemeel', 'onduidelijk', array['pea', 'bean', 'lentil', 'chickpea', 'lupin', 'soy', 'peanut']::text[], 'Meel van luzerne, een vlinderbloemige (net als erwt, boon en soja).'),
  ('isolaat', 'onduidelijk', array['anchovy', 'duck', 'trout', 'goat', 'poultry', 'herring', 'venison', 'insect', 'turkey', 'kangaroo', 'chicken', 'rabbit', 'lamb', 'mackerel', 'horse', 'beef', 'sardine', 'shellfish', 'ostrich', 'tuna', 'pork', 'fish', 'buffalo', 'whitefish', 'salmon', 'potato', 'buckwheat', 'bean', 'pea', 'barley', 'millet', 'grains', 'oats', 'chickpea', 'lentil', 'lupin', 'corn', 'quinoa', 'rice', 'rye', 'soy', 'spelt', 'sugar', 'tapioca', 'wheat', 'sweetpotato', 'asparagus', 'aubergine', 'beetroot', 'cauliflower', 'kale', 'broccoli', 'courgette', 'vegetables', 'garlic', 'cucumber', 'parsnip', 'paprika', 'pumpkin', 'leek', 'celery', 'spinach', 'tomato', 'onion', 'carrot', 'strawberry', 'apple', 'banana', 'blackberry', 'blueberry', 'cranberry', 'date', 'raspberry', 'fruit', 'mango', 'papaya', 'pear', 'peach', 'algae', 'egg', 'herbs', 'milk', 'mint', 'nuts', 'parsley', 'peanut', 'rosemary', 'sesame', 'thyme']::text[], 'Een isolaat is eiwit zonder genoemde bron; dat kan van elk dier of elke plant zijn.'),
  ('aminozuren', 'onduidelijk', array['chicken', 'turkey', 'beef', 'lamb', 'duck', 'pork', 'rabbit', 'venison', 'horse', 'kangaroo', 'ostrich', 'poultry', 'soy']::text[], 'Aminozurenmengsels worden uit dierlijk eiwit of soja gemaakt; de bron staat er niet bij.'),
  ('dha', 'onduidelijk', array['fish', 'algae']::text[], 'DHA (omega-3) komt van vis of van algen; de bron staat er niet bij.'),
  ('docosahexaeenzuur', 'onduidelijk', array['fish', 'algae']::text[], 'DHA (omega-3) komt van vis of van algen; de bron staat er niet bij.'),
  ('diglyceriden', 'onduidelijk', array['chicken', 'turkey', 'beef', 'lamb', 'duck', 'pork', 'rabbit', 'venison', 'horse', 'kangaroo', 'ostrich', 'poultry', 'soy', 'milk', 'fish', 'corn', 'nuts', 'peanut', 'sesame']::text[], 'Emulgator uit vetten; de bron van dat vet staat er niet bij.'),
  ('premix', 'onduidelijk', array['wheat', 'corn', 'rice', 'grains', 'soy']::text[], 'Een premix (vitamines/mineralen) zit vaak op een drager van tarwe, maïs of soja; het etiket noemt die drager niet.'),
  ('honing', 'onduidelijk', array['sugar']::text[], 'Honing bestaat grotendeels uit suikers.'),
  ('yucca', 'onschuldig', null, 'Yucca schidigera is een plant, geen allergeen in onze lijst.'),
  ('schidigera', 'onschuldig', null, 'Soortnaam van Yucca schidigera.'),
  ('aloe', 'onschuldig', null, 'Aloë is een plant.'),
  ('vera', 'onschuldig', null, 'Deel van de naam "aloë vera".'),
  ('tagetes', 'onschuldig', null, 'Tagetes (afrikaantje) is een plant.'),
  ('biergist', 'onschuldig', null, 'Gist is geen allergeen in onze lijst.'),
  ('saccharomyces', 'onschuldig', null, 'Saccharomyces cerevisiae is gist.'),
  ('cerevisiae', 'onschuldig', null, 'Soortnaam van gist (Saccharomyces cerevisiae).'),
  ('borage', 'onschuldig', null, 'Borage (bernagie) is een plant.'),
  ('bernagieolie', 'onschuldig', null, 'Olie van bernagie; de bron staat erbij.'),
  ('kopraolie', 'onschuldig', null, 'Kopra is gedroogde kokos; geen allergeen in onze lijst.'),
  ('ontsuikerd', 'onschuldig', null, 'Bereidingswoord: de suiker is er juist uit gehaald.'),
  ('gecheleerde', 'onschuldig', null, 'Bereidingswoord uit de chemie (chelaat).'),
  ('wilde', 'onschuldig', null, 'Bijvoeglijk naamwoord ("wilde gans"); het zelfstandige woord "wild" staat al in de lijst.'),
  ('witte', 'onschuldig', null, 'Kleurwoord ("witte rijst").'),
  ('zeelandse', 'onschuldig', null, 'Deel van de naam "Nieuw-Zeelandse groenlipmossel".'),
  ('antarctische', 'onschuldig', null, 'Deel van de naam "Antarctische krill"; krill staat al in de lijst.'),
  ('overeen', 'onschuldig', null, 'Zinsdeel ("komt overeen met").'),
  ('uit', 'onschuldig', null, 'Voorzetsel uit een voetnoot.'),
  ('ingredienten', 'onschuldig', null, 'Kop boven de lijst.'),
  ('activbiome', 'onschuldig', null, 'Naam van een mix; de samenstelling staat er direct achter.'),
  ('digestion', 'onschuldig', null, 'Deel van de merknaam ActivBiome+ Digestion.'),
  ('auraguard', 'onschuldig', null, 'Naam van een mix; de samenstelling staat erachter.'),
  ('zeoliet', 'onschuldig', null, 'Mineraal.'),
  ('amylase', 'onschuldig', null, 'Enzym; staat hier als onderdeel van "amylase-remmer" uit witte bonenextract, en die bron staat erbij.'),
  ('omega', 'onschuldig', null, 'Deel van "omega-3-vetzuren".'),
  ('stearinezuur', 'onschuldig', null, 'Losse vetzuurnaam uit de chemie; een vetzuur verbergt geen eiwitbron en de vetbron (dierlijk vet) staat elders op het etiket.'),
  ('mono', 'onschuldig', null, 'Deel van "mono- en diglyceriden" (emulgator).'),
  ('veresterd', 'onschuldig', null, 'Bereidingswoord uit de chemie.'),
  ('anhydraat', 'onschuldig', null, 'Vorm van een mineraalzout.'),
  ('monohydraat', 'onschuldig', null, 'Vorm van een mineraalzout.'),
  ('glycinehydraat', 'onschuldig', null, 'Vorm van een mineraalzout (chelaat van glycine).'),
  ('monodicalciumfosfaat', 'onschuldig', null, 'Mineraal.'),
  ('xylitol', 'onschuldig', null, 'Suikervervanger: dit is juist geen suiker.'),
  ('xylo', 'onschuldig', null, 'Deel van "xylo-oligosacchariden" (vezel).'),
  ('sachariden', 'onschuldig', null, 'Deel van vezelnamen als fructo-oligosachariden; het programma behandelt zulke namen ook als onschuldig.'),
  ('glucanen', 'onschuldig', null, 'Deel van bèta-glucanen (vezel).'),
  ('psyllium', 'onschuldig', null, 'Vezel (vlozaad).'),
  ('psylliumschil', 'onschuldig', null, 'Schil van psyllium (vezel).'),
  ('psylliumschillen', 'onschuldig', null, 'Schillen van psyllium (vezel).'),
  ('psylliumzaden', 'onschuldig', null, 'Zaden van psyllium (vezel).'),
  ('husk', 'onschuldig', null, 'Engels voor schil ("psyllium husk").'),
  ('vlozaad', 'onschuldig', null, 'Vlozaad is psyllium (vezel).'),
  ('vlozaadschillen', 'onschuldig', null, 'Schillen van vlozaad (vezel).'),
  ('lijnzaden', 'onschuldig', null, 'Meervoud van lijnzaad; staat ook in de vaste lijst als andere bron.'),
  ('paddy', 'onschuldig', null, 'Deel van "paddy rijst"; het woord rijst ernaast is de bron.'),
  ('msc', 'onschuldig', null, 'Keurmerk voor duurzame visserij, geen ingrediënt.'),
  ('b', 'onschuldig', null, 'Losse letter b op het etiket: vitamine B of beta (bijvoorbeeld B-vitaminen, bèta-glucanen), net als de losse letters c en d3 die al in de lijst staan.')
on conflict (term) do update set
  kind = excluded.kind,
  allergen_keys = excluded.allergen_keys,
  note = excluded.note;

-- Controle: hoeveel woorden staan er nu per soort?
select kind, count(*) as aantal from public.ingredient_terms group by kind order by kind;

commit;
