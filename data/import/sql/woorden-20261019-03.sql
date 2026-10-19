-- Herstel van tekens én indeling van de woorden die de keuring niet kende.
--
-- Deel 1 herstelt de etiketten waarin bij het plakken elk teken met een
-- accent of cijfer verkeerd is omgezet (bijvoorbeeld "ma√Øs" in plaats van
-- "maïs", "Markus-M√ºhle" in plaats van "Markus-Mühle"). Alleen die kapotte
-- tekenreeksen worden vervangen; de rest van elke tekst blijft staan.
--
-- Deel 2 zet de nieuwste woorden in de woordenlijst, elk met een notitie:
--   bron         het woord is een bron van een allergeen uit onze lijst
--   onduidelijk  het woord kan een allergeen verbergen dat er niet bij staat
--   onschuldig   geen allergeen in onze lijst en verbergt er ook geen
--
-- Woorden die de keuring zelf al kent (zoals "ganzenvlees", dat nu onder
-- gevogelte valt) staan hier niet in. 90 woorden.
--
-- Opnieuw uitvoeren is veilig: dezelfde woorden worden bijgewerkt in plaats
-- van dubbel toegevoegd, en de tekenherstel-stap doet dan niets meer.

begin;

-- Deel 1: tekens herstellen.
update public.products set
  brand = replace(replace(replace(replace(replace(replace(replace(replace(replace(brand, '‚Å¥', '⁴'), '√Ø', 'ï'), '√´', 'ë'), '¬π', '¹'), '¬≤', '²'), '¬≥', '³'), '√∂', 'ö'), '√º', 'ü'), '√§', 'ä'),
  name = replace(replace(replace(replace(replace(replace(replace(replace(replace(name, '‚Å¥', '⁴'), '√Ø', 'ï'), '√´', 'ë'), '¬π', '¹'), '¬≤', '²'), '¬≥', '³'), '√∂', 'ö'), '√º', 'ü'), '√§', 'ä'),
  package_size = replace(replace(replace(replace(replace(replace(replace(replace(replace(package_size, '‚Å¥', '⁴'), '√Ø', 'ï'), '√´', 'ë'), '¬π', '¹'), '¬≤', '²'), '¬≥', '³'), '√∂', 'ö'), '√º', 'ü'), '√§', 'ä')
where brand ~ '√|¬|‚' or name ~ '√|¬|‚' or package_size ~ '√|¬|‚';

update public.recipe_versions set
  ingredients_text = replace(replace(replace(replace(replace(replace(replace(replace(replace(ingredients_text, '‚Å¥', '⁴'), '√Ø', 'ï'), '√´', 'ë'), '¬π', '¹'), '¬≤', '²'), '¬≥', '³'), '√∂', 'ö'), '√º', 'ü'), '√§', 'ä'),
  import_note = replace(replace(replace(replace(replace(replace(replace(replace(replace(import_note, '‚Å¥', '⁴'), '√Ø', 'ï'), '√´', 'ë'), '¬π', '¹'), '¬≤', '²'), '¬≥', '³'), '√∂', 'ö'), '√º', 'ü'), '√§', 'ä')
where ingredients_text ~ '√|¬|‚' or import_note ~ '√|¬|‚';

update public.ingredient_terms set
  note = replace(replace(replace(replace(replace(replace(replace(replace(replace(note, '‚Å¥', '⁴'), '√Ø', 'ï'), '√´', 'ë'), '¬π', '¹'), '¬≤', '²'), '¬≥', '³'), '√∂', 'ö'), '√º', 'ü'), '√§', 'ä')
where note ~ '√|¬|‚';

-- Deel 2: de woorden.
insert into public.ingredient_terms (term, kind, allergen_keys, note) values
  ('bestaande', 'onschuldig', null, 'Vulwoord in "bestaande uit"; geen ingrediënt.'),
  ('dicalciumfosfaat', 'onschuldig', null, 'Mineraal (calcium en fosfaat).'),
  ('fijn', 'onschuldig', null, 'Bereidingswoord in "fijn gemalen".'),
  ('geinactiveerd', 'onschuldig', null, 'Bijvoorbeeld geïnactiveerde gist; het woord wijst zelf geen allergeen aan.'),
  ('granaatappelpitjes', 'bron', array['fruit']::text[], 'Granaatappelpitjes zijn vruchtzaden.'),
  ('nature', 'onschuldig', null, 'Deel van "van nature"; geen ingrediënt.'),
  ('asarm', 'onschuldig', null, 'Claim op het etiket (weinig as); geen ingrediënt.'),
  ('gelijk', 'onschuldig', null, 'Vulwoord in "gelijk aan 4% groenten".'),
  ('zeevissen', 'bron', array['fish']::text[], 'Zeevis is vis; de soorten staan er niet bij.'),
  ('chiazaad', 'onschuldig', null, 'Chiazaad is geen allergeen in onze lijst.'),
  ('di', 'onschuldig', null, 'Deel van "di-calciumfosfaat" (mineraal).'),
  ('postbiotica', 'onschuldig', null, 'Postbiotica zijn afgestorven gistculturen; geen allergeen in onze lijst.'),
  ('veen', 'onschuldig', null, 'Veen (turf) is geen allergeen in onze lijst.'),
  ('duizendbladkruid', 'bron', array['herbs']::text[], 'Kruid.'),
  ('maretakkruid', 'bron', array['herbs']::text[], 'Kruid (maretak).'),
  ('mariadistelzaad', 'onschuldig', null, 'Zaad van de mariadistel; geen graan en geen noot.'),
  ('oliemengsel', 'onduidelijk', array['chicken', 'turkey', 'beef', 'lamb', 'duck', 'pork', 'rabbit', 'venison', 'horse', 'kangaroo', 'ostrich', 'poultry', 'soy', 'milk', 'fish', 'corn', 'nuts', 'peanut', 'sesame']::text[], 'Een oliemengsel kan dierlijk of plantaardig zijn; de bron staat er niet bij.'),
  ('kiezelaarde', 'onschuldig', null, 'Kiezelaarde is een mineraal.'),
  ('koudgeperst', 'onschuldig', null, 'Bereidingswoord.'),
  ('fucus', 'bron', array['algae']::text[], 'Fucus is een bruinwier (alg).'),
  ('koudgeperste', 'onschuldig', null, 'Bereidingswoord.'),
  ('lignocellulose', 'onschuldig', null, 'Vezel; geen allergeen in onze lijst.'),
  ('spiervlees', 'onduidelijk', array['chicken', 'turkey', 'beef', 'lamb', 'duck', 'pork', 'rabbit', 'venison', 'horse', 'kangaroo', 'ostrich', 'poultry']::text[], 'Spierweefsel van een dier zonder genoemde soort.'),
  ('vesiculosus', 'bron', array['algae']::text[], 'Soortnaam van het wier Fucus vesiculosus (alg).'),
  ('zeevis', 'bron', array['fish']::text[], 'Zeevis is vis; de soorten staan er niet bij.'),
  ('2000mg', 'onschuldig', null, 'Dosering op het etiket.'),
  ('angus', 'bron', array['beef']::text[], 'Angus is een rundveeras.'),
  ('black', 'onschuldig', null, 'Deel van de rasnaam "Black Angus"; het woord rund of angus ernaast is de bron.'),
  ('distelolie', 'onschuldig', null, 'Olie van distelzaad; geen allergeen in onze lijst.'),
  ('gestoomde', 'onschuldig', null, 'Bereidingswoord.'),
  ('marien', 'onduidelijk', array['fish', 'shellfish', 'algae']::text[], 'Marien wijst op een zeebron (vis, schaal- of schelpdier, alg); welke staat er niet bij.'),
  ('zeeweekdiereiwit', 'bron', array['shellfish']::text[], 'Eiwit uit zeeweekdieren (mossel, Perna canaliculus).'),
  ('zooplankton', 'onduidelijk', array['shellfish']::text[], 'Zoöplankton is meestal krill (schaaldier); de soort staat er niet altijd bij.'),
  ('minstens', 'onschuldig', null, 'Vulwoord in "waarvan minstens 4%".'),
  ('nek', 'onduidelijk', array['chicken', 'turkey', 'beef', 'lamb', 'duck', 'pork', 'rabbit', 'venison', 'horse', 'kangaroo', 'ostrich', 'poultry']::text[], 'Dierlijk deel (nek) zonder genoemde soort.'),
  ('tagetesbloemen', 'onschuldig', null, 'Tagetes (afrikaantje) is een plant; geen allergeen in onze lijst.'),
  ('uier', 'onduidelijk', array['chicken', 'turkey', 'beef', 'lamb', 'duck', 'pork', 'rabbit', 'venison', 'horse', 'kangaroo', 'ostrich', 'poultry']::text[], 'Dierlijk deel (uier) zonder genoemde soort.'),
  ('wildbeenderen', 'onduidelijk', array['chicken', 'turkey', 'beef', 'lamb', 'duck', 'pork', 'rabbit', 'venison', 'horse', 'kangaroo', 'ostrich', 'poultry']::text[], 'Beenderen van wild; de diersoort staat er niet bij.'),
  ('acerola', 'bron', array['fruit']::text[], 'Acerola is een vrucht.'),
  ('alpenkruidenmengsel', 'bron', array['herbs']::text[], 'Kruidenmengsel.'),
  ('anijs', 'bron', array['herbs']::text[], 'Kruid.'),
  ('ascophyllum', 'bron', array['algae']::text[], 'Ascophyllum is een bruinwier (alg).'),
  ('barbarie', 'bron', array['duck']::text[], 'Barbarie-eend is een eendensoort.'),
  ('bereide', 'onschuldig', null, 'Bereidingswoord.'),
  ('biologische', 'onschuldig', null, 'Keurmerk-woord; geen ingrediënt.'),
  ('botbrokjes', 'onschuldig', null, 'Brokjes in botvorm; geen dierlijk bot.'),
  ('botvormige', 'onschuldig', null, 'Vorm van de brokjes; geen dierlijk bot.'),
  ('brokjes', 'onschuldig', null, 'Brokjes (voervorm).'),
  ('collageeneiwit', 'onduidelijk', array['chicken', 'turkey', 'beef', 'lamb', 'duck', 'pork', 'rabbit', 'venison', 'horse', 'kangaroo', 'ostrich', 'poultry', 'fish', 'shellfish', 'insect']::text[], 'Collageen is dierlijk eiwit; de soort staat er niet bij.'),
  ('dl', 'onschuldig', null, 'Deel van "DL-methionine" (aminozuur).'),
  ('echinacea', 'bron', array['herbs']::text[], 'Kruid.'),
  ('fenegriekzaad', 'onduidelijk', array['pea', 'bean', 'lentil', 'chickpea', 'lupin', 'soy', 'peanut']::text[], 'Fenegriek is een vlinderbloemige, net als erwt, boon en soja.'),
  ('frambozenbladeren', 'bron', array['fruit']::text[], 'Bladeren van de framboos; framboos is fruit.'),
  ('geextrudeerd', 'onschuldig', null, 'Bereidingswoord (geëxtrudeerd).'),
  ('gelatinewinning', 'onduidelijk', array['chicken', 'turkey', 'beef', 'lamb', 'duck', 'pork', 'rabbit', 'venison', 'horse', 'kangaroo', 'ostrich', 'poultry', 'fish', 'shellfish', 'insect']::text[], 'Gelatine is dierlijk eiwit; de soort staat er niet bij.'),
  ('gentiaan', 'bron', array['herbs']::text[], 'Kruid.'),
  ('gepureerde', 'onschuldig', null, 'Bereidingswoord.'),
  ('gewalst', 'onschuldig', null, 'Bereidingswoord.'),
  ('hemoglobinepoeder', 'onduidelijk', array['chicken', 'turkey', 'beef', 'lamb', 'duck', 'pork', 'rabbit', 'venison', 'horse', 'kangaroo', 'ostrich', 'poultry']::text[], 'Hemoglobine komt van dierlijk bloed; de diersoort staat er niet bij.'),
  ('huttenkase', 'bron', array['milk']::text[], 'Hüttenkäse is kwark (melk).'),
  ('illucens', 'bron', array['insect']::text[], 'Soortnaam van de soldaatvlieg (Hermetia illucens), een insect.'),
  ('ingevroren', 'onschuldig', null, 'Bereidingswoord.'),
  ('inhoud', 'onschuldig', null, 'Deel van "totale inhoud in product"; geen ingrediënt.'),
  ('kastanjemeel', 'bron', array['nuts']::text[], 'Kastanje is een noot; meel daarvan dus ook.'),
  ('kubusbrokjes', 'onschuldig', null, 'Vorm van de brokjes.'),
  ('licht', 'onschuldig', null, 'Deel van "licht verteerbaar"; geen ingrediënt.'),
  ('magere', 'onschuldig', null, 'Deel van "magere melkpoeder"; het woord melk ernaast is de bron.'),
  ('methylsulfonylmethaan', 'onschuldig', null, 'MSM (zwavelverbinding); geen allergeen in onze lijst.'),
  ('msm', 'onschuldig', null, 'Afkorting van methylsulfonylmethaan (zwavelverbinding).'),
  ('nodosum', 'bron', array['algae']::text[], 'Soortnaam van Ascophyllum nodosum (alg).'),
  ('noedels', 'onduidelijk', array['wheat', 'grains', 'egg']::text[], 'Noedels zijn meestal van tarwe en soms van ei; de bron staat er niet bij.'),
  ('product', 'onschuldig', null, 'Deel van "totale inhoud in product".'),
  ('productsamenstelling', 'onschuldig', null, 'Kop boven de productsamenstelling.'),
  ('roodbaars', 'bron', array['fish']::text[], 'Roodbaars is een vissoort.'),
  ('snijbiet', 'bron', array['vegetables']::text[], 'Snijbiet is een bladgroente.'),
  ('standaard', 'onschuldig', null, 'Deel van "standaard productsamenstelling".'),
  ('steenzout', 'onschuldig', null, 'Zout; geen allergeen in onze lijst.'),
  ('teunisbloemolie', 'onschuldig', null, 'Olie van de teunisbloem; geen allergeen in onze lijst.'),
  ('tuinbonen', 'bron', array['bean']::text[], 'Tuinbonen zijn bonen.'),
  ('uitgangsbronnen', 'onschuldig', null, 'Deel van "uitgangsbronnen" (grondstoffen).'),
  ('viooltjes', 'bron', array['herbs']::text[], 'Kruid.'),
  ('vleugels', 'onduidelijk', array['chicken', 'turkey', 'beef', 'lamb', 'duck', 'pork', 'rabbit', 'venison', 'horse', 'kangaroo', 'ostrich', 'poultry']::text[], 'Dierlijk deel (vleugels) zonder genoemde soort.'),
  ('vlierplant', 'bron', array['fruit']::text[], 'Vlier hoort bij de vlierbes (fruit).'),
  ('vossenbessen', 'bron', array['cranberry']::text[], 'Vossenbessen zijn cranberries (fruit).'),
  ('wildpens', 'onduidelijk', array['chicken', 'turkey', 'beef', 'lamb', 'duck', 'pork', 'rabbit', 'venison', 'horse', 'kangaroo', 'ostrich', 'poultry']::text[], 'Pens (orgaan) van wild; de soort staat er niet bij.'),
  ('witvisolie', 'bron', array['fish']::text[], 'Olie van witvis; witvis is vis.'),
  ('witvisvlees', 'bron', array['fish']::text[], 'Vlees van witvis; witvis is vis.'),
  ('zeevruchtenmengsel', 'onduidelijk', array['fish', 'shellfish']::text[], 'Zeevruchtenmengsel: vis en/of schaaldieren; wat erin zit staat er niet bij.'),
  ('zeezooplankton', 'onduidelijk', array['shellfish']::text[], 'Zeezoöplankton is meestal krill (schaaldier); de soort staat er niet altijd bij.'),
  ('zwitsers', 'onschuldig', null, 'Herkomstaanduiding bij kippenvlees.')
on conflict (term) do update set
  kind = excluded.kind,
  allergen_keys = excluded.allergen_keys,
  note = excluded.note;

-- Controle: alle vier moeten 0 zijn; de laatste regel is het aantal soorten.
select
  (select count(*) from public.products where brand ~ '√|¬|‚' or name ~ '√|¬|‚' or package_size ~ '√|¬|‚') as producten_nog_kapot,
  (select count(*) from public.recipe_versions where ingredients_text ~ '√|¬|‚' or import_note ~ '√|¬|‚') as etiketten_nog_kapot,
  (select count(*) from public.ingredient_terms where note ~ '√|¬|‚') as notities_nog_kapot,
  (select count(*) from public.ingredient_terms where term = 'ganzenvlees') as ganzenvlees_in_lijst;

select kind, count(*) as aantal from public.ingredient_terms group by kind order by kind;

commit;
