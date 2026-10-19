-- Automatisch overgenomen etiketten, batch 6 van 2026-10-19 (11 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site zegt daarna:
-- "automatisch overgenomen van <domein> op <datum> · nog niet door een mens
-- nagelopen". Er wordt hier geen enkele controle door een mens geclaimd.
begin;

-- Wolfsblut — Adult Wide Plain (12,5 kg)
-- bron: https://www.wolfsblut.com/wolfsblut-adult-wolfsblut-wide-plain-pferdefleisch-und-susskartoffel-trockenfutter-12-5-kg.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Wolfsblut', 'Adult Wide Plain', 'kibble', '12,5 kg', null, 'https://www.wolfsblut.com/wolfsblut-adult-wolfsblut-wide-plain-pferdefleisch-und-susskartoffel-trockenfutter-12-5-kg.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Paard 40% (vers paardenvlees 31%, gedroogd paardenvlees 9%), zoete aardappelen 18%, erwten, paardenvet 8%, erwteneiwit, pompoen, kikkererwten, pastinaak, groentebouillon, erwtenvezel, venkel, mineralen, topinamboer, lijnzaad, tijm, marjolein, oregano, peterselie 0,1%, salie, tomaten, brandnetel, meidoorn, paardenbloem, ginseng, mannan-oligosachariden (prebiotisch MOS), fructo-oligosachariden (prebiotisch FOS), rozenbottels, zwarte bessen, bramen, vlierbessen, yucca schidigera-extract, frambozen, bosbessen 0,01%, aroniabessen 0,01%.', true, now(), 'sha256:9991c18a8d377dbdc762ef06033fda217ff5da68ca96775ebec84388139903e2', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Wolfsblut — Adult Hunters Pride (12,5 kg)
-- bron: https://www.wolfsblut.com/wolfsblut-adult-hunters-pride-fasan-ente-und-kaninchen-trockenfutter-12-5-kg.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Wolfsblut', 'Adult Hunters Pride', 'kibble', '12,5 kg', null, 'https://www.wolfsblut.com/wolfsblut-adult-hunters-pride-fasan-ente-und-kaninchen-trockenfutter-12-5-kg.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Wild 45% (gedroogde eend 17%, verse fazant 10%, verse eend 10%, vers konijn 4%, gedroogde waterbuffel 4%), aardappelen, zoete aardappelen 9%, erwten, eendenvet 4%, eendenbouillon, pompoen, kikkererwten, pastinaak, venkel, mineralen, topinamboer, tijm, marjolein, oregano, peterselie, salie, lijnzaad, tomaten, zeewier, spinazie, rode biet, lavas, brandnetel, meidoorn, paardenbloem, ginseng, mannan-oligosachariden (prebiotisch MOS), fructo-oligosachariden (prebiotisch FOS), rozenbottels, zwarte bessen, bramen 0,02%, vlierbessen, yucca schidigera-extract, frambozen 0,01%, bosbessen 0,01%, aroniabessen.', true, now(), 'sha256:01c9b6e89e9896d65837cfbdc03a43af43acf5ef288b5bdd5bb93d30b59facbb', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Wolfsblut — Adult Cold River (12,5 kg)
-- bron: https://www.wolfsblut.com/wolfsblut-adult-cold-river-forelle-und-susskartoffel-trockenfutter-12-5-kg.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Wolfsblut', 'Adult Cold River', 'kibble', '12,5 kg', null, 'https://www.wolfsblut.com/wolfsblut-adult-cold-river-forelle-und-susskartoffel-trockenfutter-12-5-kg.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vis 38% (verse forel 25%, gedroogde zalm 6,5%, gedroogde forel 6,5%), zoete aardappelen 32%, aardappelen, zalmolie, zalmbouillon, mineralen, venkel, kikkererwten, pompoen, pastinaak, zeewier 0,3%, topinamboer, tijm, marjolein, oregano, peterselie, salie 0,1%, tomaten, brandnetel, meidoorn, paardenbloem 0,04%, ginseng, mannan-oligosachariden (prebiotisch MOS), fructo-oligosachariden (prebiotisch FOS), spirulina, yucca schidigera-extract.', true, now(), 'sha256:7c9f99d7eb021a4f9cf8372601429434347743ff669c5cbad5a1404241e6f8d3', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Wolfsblut — VetLine Hypoallergenic (12 kg)
-- bron: https://www.wolfsblut.com/wolfsblut-vetline-wolfsblut-vetline-hypoallergenic-trockenfutter-12-kg.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Wolfsblut', 'VetLine Hypoallergenic', 'kibble', '12 kg', null, 'https://www.wolfsblut.com/wolfsblut-vetline-wolfsblut-vetline-hypoallergenic-trockenfutter-12-kg.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Dieet-volledig voer voor volwassen honden zoete aardappelen 42%, paard 29% (vers paardenvlees 19%, gedroogd paardenvlees 10%), paardenvet 7%, pompoen 6%, erwteneiwit, luzerne, lijnzaad 2%, algen (rijk aan DHA*), zonnebloemolie, mineralen, topinamboer 0,4%, mannan-oligosachariden (prebiotisch) 0,2%, fructo-oligosachariden (prebiotisch) 0,2%. Eiwitbronnen: vers paardenvlees, gedroogd paardenvlees, erwteneiwit. Koolhydraatbronnen: zoete aardappelen, pompoen. *Docosahexaeenzuur', true, now(), 'sha256:14ae75a6ba33cd6ff83d38b541bd64ba5f8437dec6a5170e301f3c5ee2518ed1', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Wolfsblut — VetLine Gastrointestinal (12 kg)
-- bron: https://www.wolfsblut.com/wolfsblut-vetline-wolfsblut-vetline-gastrointestinal-trockenfutter-12-kg.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Wolfsblut', 'VetLine Gastrointestinal', 'kibble', '12 kg', null, 'https://www.wolfsblut.com/wolfsblut-vetline-wolfsblut-vetline-gastrointestinal-trockenfutter-12-kg.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Zoete aardappelen 43%, eend 34% (verse eend 26%, gedroogde eend 8%), erwteneiwit, luzerne 2%, pompoen 2%, eendenbouillon 2%, gedroogd vol ei, visolie, mineralen (elektrolyten: natriumbicarbonaat, kaliumchloride, natriumchloride), topinamboer, mannan-oligosachariden (prebiotisch) 0,2%, fructo-oligosachariden (prebiotisch) 0,2%, aroniabessen, kurkuma 0,08%. Koolhydraatbronnen: zoete aardappelen, pompoen.', true, now(), 'sha256:0eecbad0bec31ed3d616fb5bbbf6df4e674fa073273efb58954400cdc42c85fc', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Yarrah — Biologisch Adult hondenvoer met kip (2 / 10 / 15 kg)
-- bron: https://www.yarrah.com/biologisch-adult-hondenvoer-met-kip/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Yarrah', 'Biologisch Adult hondenvoer met kip', 'kibble', '2 / 10 / 15 kg', null, 'https://www.yarrah.com/biologisch-adult-hondenvoer-met-kip/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '18% kipmeel*, 17% haver*, maïs*, tarwe*, kippenvet*, rijsteiwit*, sojaschilfers*, 4,0% erwten*, MSC-haringmeel¹, gehydrolyseerd eiwit*, baobab*, zonnebloemzaadschilfers*, biergist, mineralen, 0,5% MSC-visolie¹. * = biologisch ¹Uit een MSC gecertificeerde duurzame visserij. www.msc.org/nl', true, now(), 'sha256:2e619b33cfe8f94989129a9cc8cf0b08001f9a6b2694d0d93ed7394bb106aaf2', null from p;

-- Yarrah — Biologisch Sensitive hondenvoer (2 / 10 kg)
-- bron: https://www.yarrah.com/biologisch-sensitive-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Yarrah', 'Biologisch Sensitive hondenvoer', 'kibble', '2 / 10 kg', null, 'https://www.yarrah.com/biologisch-sensitive-hondenvoer/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Tarwevrije receptuur. 65% paddy rijst*, 20% kipmeel*, rijsteiwit*, kippenvet*, gehydrolyseerd eiwit*, mineralen, MSC-visolie¹, 0,1% gedroogd zeewier*, 0,1% gedroogde spirulina*. * = biologisch. ¹Uit een MSC-gecertificeerde duurzame visserij. www.msc.org/nl.', true, now(), 'sha256:2377edfecfc096880d01992d5d9ce039bca0c393f6177341ba431eb588f92045', null from p;

-- Yarrah — Biologisch Senior hondenvoer (2 / 10 kg)
-- bron: https://www.yarrah.com/biologisch-senior-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Yarrah', 'Biologisch Senior hondenvoer', 'kibble', '2 / 10 kg', null, 'https://www.yarrah.com/biologisch-senior-hondenvoer/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '17,5% kipmeel*, mais*, tarwe*, haver*, erwten*, sojaschilfers*, kippenvet*, zonnebloemzaadschilfers*, rijsteiwit*, MSC haringmeel¹, gehydrolyseerd eiwit*, biergist, mineralen, MSC visolie¹, kruiden* (0,13% gedroogde heermoes*, 0,13% gedroogde duivelsklauw*, 0,13% gedroogde rozenbottel*). * = biologisch ¹Uit een MSC gecertificeerde duurzame visserij. www.msc.org/nl', true, now(), 'sha256:3d83fc1554763026205d619fd07039a9bbdcfe8d82722d2dc214c976b85b0156', null from p;

-- Yarrah — Biologisch hondenvoer chunks met kip (405 / 820 g)
-- bron: https://www.yarrah.com/biologisch-hondenvoer-chunks-met-kip/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Yarrah', 'Biologisch hondenvoer chunks met kip', 'wet', '405 / 820 g', null, 'https://www.yarrah.com/biologisch-hondenvoer-chunks-met-kip/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% kip* (karkas*, vlees*, lever*), tarwe*, mineralen, 0,1% gedroogde tomaat*, 0,1% gedroogde brandnetel*. * = biologisch', true, now(), 'sha256:82705d371b8df0a39160006ae65a80cc8182459824f0b82d0b6e43466dbb6bec', null from p;

-- Yarrah — Biologisch hondenvoer chunks met rund (405 / 820 g)
-- bron: https://www.yarrah.com/biologisch-hondenvoer-chunks-met-rund/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Yarrah', 'Biologisch hondenvoer chunks met rund', 'wet', '405 / 820 g', null, 'https://www.yarrah.com/biologisch-hondenvoer-chunks-met-rund/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '26% kip* (karkas*, vlees*), tarwe*, 5,0% rund* (lever*, hart*, nier*), varkensvlees* (vlees*, hart*, nier*), mineralen, 0,1% gedroogde tomaat*, 0,1% gedroogde brandnetel* * = biologisch', true, now(), 'sha256:1397855e6b215b1564896650234d584368dd00de7602f2d275a94652bc04241d', null from p;

-- Yarrah — Biologisch hondenvoer paté met kip en kalkoen (12 x 150 g)
-- bron: https://www.yarrah.com/biologisch-hondenvoer-pate-met-kip-en-kalkoen-alu/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Yarrah', 'Biologisch hondenvoer paté met kip en kalkoen', 'wet', '12 x 150 g', null, 'https://www.yarrah.com/biologisch-hondenvoer-pate-met-kip-en-kalkoen-alu/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Graanvrije receptuur. 46% kip* (karkas*, lever*, vlees*, hart*, maag*), 10% kalkoen* (vlees*), mineralen, zonnebloemolie*, 0,0075% gedroogde aloë vera* (komt overeen met 1,5% aloë vera*). * = biologisch.', true, now(), 'sha256:66fbf50e2e6ab3e5dc495500412e20a6397e72a90788aec3784fbaadb139aa76', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
