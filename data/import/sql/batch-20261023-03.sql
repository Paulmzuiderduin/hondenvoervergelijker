-- Automatisch overgenomen etiketten, batch 3 van 2026-10-23 (12 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Yarrah — Biologisch Vegan Tarwevrij hondenvoer (2 / 10 kg)
-- bron: https://www.yarrah.com/biologisch-vega-grain-free-hondenvoer-2kg/17160/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Yarrah', 'Biologisch Vegan Tarwevrij hondenvoer', 'kibble', '2 / 10 kg', null, 'https://www.yarrah.com/biologisch-vega-grain-free-hondenvoer-2kg/17160/', date '2026-10-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Tarwevrije receptuur. 23% groene erwten*, sojabonen*, erwtenzetmeel*, kokosvet*, rijsteiwit*, lupine*, zonnebloemzaadschilfers*, mineralen, 4,0% baobab*, biergist, 0,5% gedroogd zeewier*. * = biologisch.', true, now(), 'sha256:3b329add5106220ad1620b6700e6fbef48af16ba4f5b1b6555b8ecee6428e7a5', null from p;

-- Yarrah — Biologisch Grain-Free hondenvoer (2 / 10 kg)
-- bron: https://www.yarrah.com/biologisch-grain-free-hondenvoer-2kg/17064/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Yarrah', 'Biologisch Grain-Free hondenvoer', 'kibble', '2 / 10 kg', null, 'https://www.yarrah.com/biologisch-grain-free-hondenvoer-2kg/17064/', date '2026-10-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Graanvrije receptuur 18% kipmeel*, erwtenzetmeel*, erwten*, sojaschilfers*, zonnebloemzaadschilfers*, kippenvet*, sojabonen*, 5,8% lupine*, 4,0% baobab*, MSC haringmeel¹, gehydrolyseerd eiwit*, biergist, mineralen, 0,5% MSC visolie¹. * = biologisch ¹Uit een MSC gecertificeerde duurzame visserij. www.msc.org/nl', true, now(), 'sha256:1ad9a00d5ae93a9b057a35f32ae86fc0bcd8aa3a299783c70396c9178dca8405', null from p;

-- Yarrah — Biologisch Puppy hondenvoer (2 kg)
-- bron: https://www.yarrah.com/biologische-puppy-brokken-2kg/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Yarrah', 'Biologisch Puppy hondenvoer', 'kibble', '2 kg', null, 'https://www.yarrah.com/biologische-puppy-brokken-2kg/', date '2026-10-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '19% kipmeel*, 16% haver*, mais*, tarwe*, kippenvet*, 5,5% rijsteiwit*, sojaschilfers*, MSC haringmeel¹, erwten*, gehydrolyseerd eiwit*, biergist, zonnebloemzaadschilfers*, 1,0% MSC visolie¹, mineralen. * = biologisch ¹Uit een MSC gecertificeerde duurzame visserij. www.msc.org/nl', true, now(), 'sha256:54a6e319d279b4d6061cd6fcf6503a774e35112239f8037005bcdda3457f5926', null from p;

-- Yarrah — Biologisch Vegan hondenvoer (2 / 10 kg)
-- bron: https://www.yarrah.com/biologisch-vega-hondenvoer-2kg/17165/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Yarrah', 'Biologisch Vegan hondenvoer', 'kibble', '2 / 10 kg', null, 'https://www.yarrah.com/biologisch-vega-hondenvoer-2kg/17165/', date '2026-10-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '25% sojabonen*, tarwe*, 10,0% maïs*, tarwegries*, zonnebloemzaadschilfers*, 6,0% lupine*, 6,0% rijsteiwit*, kokosvet*, mineralen, biergist, baobab*. * = biologisch.', true, now(), 'sha256:225f486f7c008dbe84ac52d7456c29e768916f22c50f6e63ddf61e516f10c54b', null from p;

-- Yarrah — Biologisch Small Breed hondenvoer (2 / 5 kg)
-- bron: https://www.yarrah.com/biologisch-small-breed-hondenvoer-5kg/17063/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Yarrah', 'Biologisch Small Breed hondenvoer', 'kibble', '2 / 5 kg', null, 'https://www.yarrah.com/biologisch-small-breed-hondenvoer-5kg/17063/', date '2026-10-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '19% kipmeel*, 15% haver*, mais*, tarwe*, kippenvet*, 5,5% rijsteiwit*, sojaschilfers*, MSC haringmeel¹, erwten*, gehydrolyseerd eiwit*, biergist, zonnebloemzaadschilfers*, 1,0% MSC visolie¹, mineralen. * = biologisch ¹Uit een MSC gecertificeerde duurzame visserij. www.msc.org/nl', true, now(), 'sha256:2fbf26f2f42ed132337eecb7e921ef69c5bbd67c22412e28ceda67568658adbf', null from p;

-- Yarrah — Biologisch hondenvoer paté met kip (blik) (400 g)
-- bron: https://www.yarrah.com/biologisch-hondenvoer-pate-met-kip-blik/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Yarrah', 'Biologisch hondenvoer paté met kip (blik)', 'wet', '400 g', null, 'https://www.yarrah.com/biologisch-hondenvoer-pate-met-kip-blik/', date '2026-10-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '27% kip* (vlees*, karkas*), varken* (long*, nier*), rund* (lever*), gedroogde erwten*, mineralen, tapioca*, zonnebloemzaadschilfers*, 0,05% gedroogd zeewier*, 0,01% gedroogde spirulina*. * = biologisch', true, now(), 'sha256:62af4adce3a164758b4625f7853fda5100ee83bd714c920622eded93422cc3cc', null from p;

-- Yarrah — Biologisch hondenvoer paté met varkensvlees (405 g)
-- bron: https://www.yarrah.com/biologisch-hondenvoer-pate-met-varkensvlees-blik/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Yarrah', 'Biologisch hondenvoer paté met varkensvlees', 'wet', '405 g', null, 'https://www.yarrah.com/biologisch-hondenvoer-pate-met-varkensvlees-blik/', date '2026-10-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% varkensvlees* (nier*, hart*, long*, lever*,vlees*), zonnebloemolie*, mineralen, gedroogde erwten*, tapioca*, zonnebloemzaadschilfers*, 0,1% gedroogde peterselie*, 0,1% gedroogde tijm*, gedroogd zeewier*, gedroogde spirulina*. * = biologisch', true, now(), 'sha256:5637343fe6b67815265d2a43664d471378854f90ec6a4a0488fea9d9febceb0f', null from p;

-- Yarrah — Biologisch hondenvoer paté met kip en zalm (12 x 150 g)
-- bron: https://www.yarrah.com/biologisch-hondenvoer-pate-met-kip-en-zalm/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Yarrah', 'Biologisch hondenvoer paté met kip en zalm', 'wet', '12 x 150 g', null, 'https://www.yarrah.com/biologisch-hondenvoer-pate-met-kip-en-zalm/', date '2026-10-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Graanvrije receptuur. 44% kip* (karkas*, vlees*, lever*, maag*, hart*), 14% zalm*, mineralen, 0,1% gedroogd zeewier*. * = biologisch.', true, now(), 'sha256:c733ebc9078f74366704bcdaa0c03c0ac91c81b01c27ae9e546a63a67f30bcf9', null from p;

-- Yarrah — Biologisch hondenvoer paté met kip (alu) (12 x 150 g)
-- bron: https://www.yarrah.com/biologisch-hondenvoer-pate-met-kip-alu/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Yarrah', 'Biologisch hondenvoer paté met kip (alu)', 'wet', '12 x 150 g', null, 'https://www.yarrah.com/biologisch-hondenvoer-pate-met-kip-alu/', date '2026-10-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Graanvrije receptuur. 57% kip* (vlees*, karkas*, lever*, hart*, maag*), 0,1% gedroogd zeewier*, mineralen, zonnebloemolie*. * = biologisch.', true, now(), 'sha256:99d08956a6d975f2cc9a5bec1b8fcf0587a103569863d1265cbba3750787f53b', null from p;

-- Yarrah — Biologisch hondenvoer chunks vega (12 x 150 g)
-- bron: https://www.yarrah.com/biologisch-hondenvoer-vega-chunks/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Yarrah', 'Biologisch hondenvoer chunks vega', 'wet', '12 x 150 g', null, 'https://www.yarrah.com/biologisch-hondenvoer-vega-chunks/', date '2026-10-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Graanvrije receptuur. Sojabonen*, zonnebloemolie*, 2,2% gedroogde erwten* (komt overeen met 7,5% erwten*), 0,55% gedroogde wortelen* (komt overeen met 5,0% wortelen*), mineralen, 0,2% gedroogde rozenbottel*, gedroogde lavas*. * = biologisch.', true, now(), 'sha256:64fb74bc0de6597bfed871a439e2abe6673883328a64ca6a941a44d47caefaa5', null from p;

-- Yarrah — Biologisch hondenvoer paté met rund en kip (12 x 150 g)
-- bron: https://www.yarrah.com/biologisch-hondenvoer-pate-met-rund-en-kip-alu/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Yarrah', 'Biologisch hondenvoer paté met rund en kip', 'wet', '12 x 150 g', null, 'https://www.yarrah.com/biologisch-hondenvoer-pate-met-rund-en-kip-alu/', date '2026-10-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Graanvrije receptuur. 42% kip* (vlees*, karkas*, maag*), 14% rund* (hart*, lever*), mineralen, zonnebloemolie*, 0,1% spirulina*. * = biologisch.', true, now(), 'sha256:05556c5943c9c468daa6e248640be223885f5dca564d13062b4bd54f672ba612', null from p;

-- Yarrah — Biologisch hondenvoer paté met kip en eend (12 x 150 g)
-- bron: https://www.yarrah.com/biologisch-hondenvoer-pate-met-kip-en-eend/9161/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Yarrah', 'Biologisch hondenvoer paté met kip en eend', 'wet', '12 x 150 g', null, 'https://www.yarrah.com/biologisch-hondenvoer-pate-met-kip-en-eend/9161/', date '2026-10-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Graanvrije receptuur. 43% kip* (vlees*, karkas*, hart*, lever*, maag*), 14% eend* (vlees*), mineralen, 0,1% gedroogd zeewier*. * = biologisch.', true, now(), 'sha256:b748fb61bece9551700f006d542538c3767ea8bc360cc4738bc1e7a0ef1e5678', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
