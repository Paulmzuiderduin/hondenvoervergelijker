-- Automatisch overgenomen etiketten, batch 6 van 2026-11-13 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Alsa Nature — Classic Kip gerecht met Rijst, Peer & Venkel (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92002501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92002501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 25,9% bouillon, 5% rijst, 2% peer, 1% venkel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:6fbe7005183710e46a8664c247fa4ae1972c98e8bc2718f5973f2048dae6e474', null from p;

-- Alsa Nature — CLASSIC Eend & Rund met aardappel (12 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99010501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', 'wet', '12 x 500 g', null, 'https://www.alsa-nature.nl/p/99010501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Eend (bestaande uit eendenmaag, eendennek, eendenhart), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% aardappel, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:fa7b052a87dd44e6b4be9a2b412d6e48e846544f045b13405cc01725e0fdd50d', null from p;

-- Alsa Nature — Classic Kip gerecht met Rijst, Peer & Venkel (800 g)
-- bron: https://www.alsa-nature.nl/p/92002301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', 'wet', '800 g', '4050001116343', 'https://www.alsa-nature.nl/p/92002301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 25,9% bouillon, 5% rijst, 2% peer, 1% venkel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:6fbe7005183710e46a8664c247fa4ae1972c98e8bc2718f5973f2048dae6e474', null from p;

-- Alsa Nature — CLASSIC Lam & Kip met zoete aardappel (60 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99012501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', 'wet', '60 x 500 g', null, 'https://www.alsa-nature.nl/p/99012501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Lam (bestaande uit lamslever, lamslongen, lamsvlees, lamspens, lamshart), 30% kip (bestaande uit kippenhart, kippevlees, kippemaag, kippenek), 28,8% bouillon, 5% zoete aardappel, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:5d6f1b2594d0e46843a133aded81911cac32095a451b35b3ee7f587a506760df', null from p;

-- Alsa Nature — SINGLE Kangoeroe met aardappel (400 g)
-- bron: https://www.alsa-nature.nl/p/92004401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', 'wet', '400 g', '4050001116589', 'https://www.alsa-nature.nl/p/92004401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:7e615daef2ffbd8f7b5126ebc8da26c36ce43867c0960b84b111bd172d163855', null from p;

-- Alsa Nature — Senior Wild & Konijn met aardappel & paardebloem (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92005101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92005101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% Wild (bestaande uit hart, vlees, lever, longen en pens van wild), 30,3% bouillon, 14% konijn, 4% aardappel, 1% mineralen, 0,5% teunisbloemolie, 0,2% paardenbloem', true, now(), 'sha256:633e97168ca30226a051589ab231d99701c1976f762d60122c82efdee0a80734', null from p;

-- Alsa Nature — CLASSIC Lam & Kip met zoete aardappel (90 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99012601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', 'wet', '90 x 500 g', null, 'https://www.alsa-nature.nl/p/99012601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Lam (bestaande uit lamslever, lamslongen, lamsvlees, lamspens, lamshart), 30% kip (bestaande uit kippenhart, kippevlees, kippemaag, kippenek), 28,8% bouillon, 5% zoete aardappel, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:5d6f1b2594d0e46843a133aded81911cac32095a451b35b3ee7f587a506760df', null from p;

-- Alsa Nature — SINGLE Paard met aardappel (800 g)
-- bron: https://www.alsa-nature.nl/p/92019200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Paard met aardappel', 'wet', '800 g', '4050001116718', 'https://www.alsa-nature.nl/p/92019200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Paard (bestaande uit paardenvlees, paardenhart, paardenlever), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:425d605b0eb5772fa93f681b963c849f368b11355f86314d2a96628ef17c75f0', null from p;

-- Alsa Nature — VEGGIE Groente-bijlage met fruit (6 x 375 g)
-- bron: https://www.alsa-nature.nl/p/92037100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'VEGGIE Groente-bijlage met fruit', 'wet', '6 x 375 g', null, 'https://www.alsa-nature.nl/p/92037100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '39,8%, Bouillon, 12% wortelen, 10% pompoen, 7% courgette, 7% venkel, 4% pastinaak, 4% appel, 3% ananas, 3% abrikoos, 2% spinazie, 2% veenbessen, 2% bramen, 2% duindoorn, 1% rozenbottels, 1% mineralen, 0,1% lijnolie', true, now(), 'sha256:9d64e8eb9d5864f59da6ea9768e6a69497c6b36f4a4baa26383364fdeb325974', null from p;

-- Alsa Nature — VEGGIE Groentemaaltijd met Hüttenkäse, fruit en kruiden (6 x 375 g)
-- bron: https://www.alsa-nature.nl/p/92036800
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'VEGGIE Groentemaaltijd met Hüttenkäse, fruit en kruiden', 'wet', '6 x 375 g', null, 'https://www.alsa-nature.nl/p/92036800', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33,78% Bouillon, 10% hüttenkäse, 8% heeleipoeder, 6% pastinaak, 6% pompoen, 6% wortelen, 5% amarant vlokken, 5% perzik, 4% lijnzaadolie, 3% courgette, 3% erwten, 3% boekweitvlokken, 2,12 mineralen, 2% mango, 2% duindoorn, 1% biergist, 0,1%, kruiden', true, now(), 'sha256:6f9276676f45f2d19fa9eeb8eb158e33965b9843fe3333a3b75476352c571c4f', null from p;

-- Alsa Nature — JUNIOR Wild met aardappel (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92030100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Wild met aardappel', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92030100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '30% Wild (bestaande uit hart, vlees, lever, longen en pens van wild), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,8% bouillon, 3% aardappel, 3% rode bosbes, 1% mineralen, 0,1% levertraan, 0,1% lijnolie', true, now(), 'sha256:714d21a8b6c757c610695bd7554368d31d9e025c3d00a8cda906fe0c944c869f', null from p;

-- Alsa Nature — Speciaal Single-sensitief (400 g)
-- bron: https://www.alsa-nature.nl/p/92030200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Single-sensitief', 'wet', '400 g', '4050001116725', 'https://www.alsa-nature.nl/p/92030200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Paard (bestaande uit paardenvlees, paardenlever), 7% pompoen, 7% courgette, 7% zoete aardappel, 1% mineralen, 0,5% distelolie, monocalciumfosfaat', true, now(), 'sha256:76fbba52907d123eb5908b7dcfd42651c46f1ec9e1fcc3597dbd8337c547bff6', null from p;

-- Alsa Nature — SIMPLE Kangoeroe puur (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920542
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Kangoeroe puur', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/920542', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 28% bouillon', true, now(), 'sha256:53cd16766f13dbb6204f668f2fd590887c22f6fac057fd66a54680aea1d2ebdf', null from p;

-- Alsa Nature — FINEST Kippen-spiervlees met pastinaak, pompoen en lijnolie (400 g)
-- bron: https://www.alsa-nature.nl/p/920440
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FINEST Kippen-spiervlees met pastinaak, pompoen en lijnolie', 'wet', '400 g', '4050001116428', 'https://www.alsa-nature.nl/p/920440', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Kippenspiervlees, 30% kip (bestaande uit kippenharten, kippenlever, kippenmagen, kippenhalsen), 28,8% bouillon, 5% pastinaak, 2% pompoen, 1% mineralen, 0,2% lijnolie.', true, now(), 'sha256:ca2f4a1e81de1bb6841baff9e6b91542b39a9fe8708c52e9732ea1e003764af9', null from p;

-- Alsa Nature — SINGLE Kangoeroe met aardappel (90 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920626
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', 'wet', '90 x 400 g', null, 'https://www.alsa-nature.nl/p/920626', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:7e615daef2ffbd8f7b5126ebc8da26c36ce43867c0960b84b111bd172d163855', null from p;

-- Alsa Nature — SINGLE Lam met aardappel (90 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920638
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Lam met aardappel', 'wet', '90 x 800 g', null, 'https://www.alsa-nature.nl/p/920638', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Lam (bestaande uit lamshart, lamsvlees, lamslever, lamslong, lamspens), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:f547056025bca7a535e62eb92c287764677bf709d1b78b3b4d3d948672e2a274', null from p;

-- Alsa Nature — SINGLE Paard met aardappel (120 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920647
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Paard met aardappel', 'wet', '120 x 800 g', null, 'https://www.alsa-nature.nl/p/920647', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Paard (bestaande uit paardenvlees, paardenhart, paardenlever), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:425d605b0eb5772fa93f681b963c849f368b11355f86314d2a96628ef17c75f0', null from p;

-- Alsa Nature — SINGLE Kalkoen puur (120 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920623
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kalkoen puur', 'wet', '120 x 800 g', null, 'https://www.alsa-nature.nl/p/920623', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoennekken), bouillon 28,5%, mineralen 1%, distelolie 0,5%', true, now(), 'sha256:7c01b711f4038061fb77e21d0d0cc1fa8a01462032c83e0701e566f974e08b91', null from p;

-- Alsa Nature — SINGLE Kangoeroe met aardappel (120 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920627
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', 'wet', '120 x 400 g', null, 'https://www.alsa-nature.nl/p/920627', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:7e615daef2ffbd8f7b5126ebc8da26c36ce43867c0960b84b111bd172d163855', null from p;

-- Alsa Nature — SINGLE Lam met aardappel (60 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920637
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Lam met aardappel', 'wet', '60 x 800 g', null, 'https://www.alsa-nature.nl/p/920637', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Lam (bestaande uit lamshart, lamsvlees, lamslever, lamslong, lamspens), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:f547056025bca7a535e62eb92c287764677bf709d1b78b3b4d3d948672e2a274', null from p;

-- Alsa Nature — Senior Kip & Kalkoen met aardappel en peterselie (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92620501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92620501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% kalkoen (bestaande uit kalkoenenharten, kalkoenvlees, kalkoenlever, kalkoenennekken), 28,4% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie, 0,1% peterselie', true, now(), 'sha256:fb266ac396bdcac4e90adcdcc86e428e3f6fa442bc7cf7e6bca111537392ce87', null from p;

-- Alsa Nature — JUBILEUM Kip & Zalm (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92077001
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip & Zalm', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92077001', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '52% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken), 28,8% bouillon, 15% zalm, 3% spinazie, 1% mineralen, 0,2% zalmolie', true, now(), 'sha256:6f1eddee8ba63562136d6416b4053537e664e6ec6633940f716361d3465ab54c', null from p;

-- Alsa Nature — JUBILEUM Rund (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92075201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Rund', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92075201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% rund (bestaande uit runderhart, rundvlees, runderlever, runderlong, runderpens, rundernieren), 28,8% bouillon, 5% aardappelen, 2% peterselie, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:771bb3f986b2652161946b757159c16f02d5f9a7d5b4c882668b0b05416743b2', null from p;

-- Alsa Nature — Senior Kip & Kalkoen met aardappel en peterselie (800 g)
-- bron: https://www.alsa-nature.nl/p/92620701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', 'wet', '800 g', '4050001116534', 'https://www.alsa-nature.nl/p/92620701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% kalkoen (bestaande uit kalkoenenharten, kalkoenvlees, kalkoenlever, kalkoenennekken), 28,4% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie, 0,1% peterselie', true, now(), 'sha256:fb266ac396bdcac4e90adcdcc86e428e3f6fa442bc7cf7e6bca111537392ce87', null from p;

-- Alsa Nature — FOODLOVE Lam met amarant, aardpeer & vijg (120 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99004600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', 'raw', '120 x 300 g', null, 'https://www.alsa-nature.nl/p/99004600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% lam (bestaande uit lamsharten, lamsvlees, lamslevers, lamslongen, lamspensen), 27,3% bouillon, 4% amarant, 4% vijgen, 3% aardperen, 1% mineralen, 0,5% kruiden, 0,2% zonnebloemolie', true, now(), 'sha256:19f896126cedb83b9ad4ca77ca311367b519546aa1163f8bbe869066d18d01db', null from p;

-- Alsa Nature — FOODLOVE Kalkoen met amarant, zoete aardappel & mango (12 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99005600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', 'raw', '12 x 300 g', null, 'https://www.alsa-nature.nl/p/99005600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoenmagen, kalkoenhalzen), 27,3% bouillon, 4% amarant, 4% zoete aardappel, 3% mango, 1% mineralen, 0,5% kruiden, 0,2% distelolie', true, now(), 'sha256:eeaccf92f5a2a0cd9a733c5fbb9564a463ed14fda2ae77e652874e9c79fbb54e', null from p;

-- Alsa Nature — FOODLOVE Kip met quinoa, pompoen & broccoli (120 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99007400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', 'raw', '120 x 300 g', null, 'https://www.alsa-nature.nl/p/99007400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kip (bestaande uit kippenharten, kippenvlees, kippenlevers, kippenmagen, kippenhalzen), 27,3% bouillon, 4% quinoa, 4% pompoen, 3% broccoli, 1% mineralen, 0,5% kruiden, 0,2% lijnzaadolie', true, now(), 'sha256:ed4d8e19f7eec9bc4131474c422d0501a4d4d95d941b86413b3a8084f2e37e83', null from p;

-- Alsa Nature — FOODLOVE Kip & Forel met quinoa, pastinaak & papaja (120 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99008100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', 'raw', '120 x 300 g', null, 'https://www.alsa-nature.nl/p/99008100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '40% kip (bestaande uit kippenharten, kippenvlees, kippenlevers, kippenmagen, kippenhalzen), 27,3% bouillon, 20% forel, 4% quinoa, 4% pastinaak, 3% papaya, 1% mineralen, 0,5% kruiden, 0,2% lijnzaadolie', true, now(), 'sha256:77ef1a615fd4a37a4093a031d6776961b79ac44300f21c9fe5ef4a0a81f4921a', null from p;

-- Alsa Nature — CLASSIC Lam & Kip met zoete aardappel (12 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99012301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', 'wet', '12 x 500 g', null, 'https://www.alsa-nature.nl/p/99012301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Lam (bestaande uit lamslever, lamslongen, lamsvlees, lamspens, lamshart), 30% kip (bestaande uit kippenhart, kippevlees, kippemaag, kippenek), 28,8% bouillon, 5% zoete aardappel, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:5d6f1b2594d0e46843a133aded81911cac32095a451b35b3ee7f587a506760df', null from p;

-- Alsa Nature — CLASSIC Kalkoen & Rund met wortel (30 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99011201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', 'wet', '30 x 500 g', null, 'https://www.alsa-nature.nl/p/99011201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kalkoen (bestaande uit kalkoenhart, kalkoenvlees, kalkoenmaag, kalkoennek), 30% rund (bestaande uit runderhart, rundervlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% wortelen, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:f044e9c2a74016429cb28b9fefa97c318e87e6cfbccb2fac8dd356bf29dc19e6', null from p;

-- Alsa Nature — CLASSIC Runderharten & Kip met pastinaak (12 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99012901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', 'wet', '12 x 500 g', null, 'https://www.alsa-nature.nl/p/99012901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Runderharten, 30% kip (bestaande uit kippenhart, kippenvlees, kippenlever, kippenmaag, kippennekken), 28,8% bouillon, 5% pastinaak, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:63f11bbfbe5f4514ab8298a2a2ac3f68106aea386f1a2a2d19a131382244b335', null from p;

-- Alsa Nature — FOODLOVE Kip met quinoa, pompoen & broccoli (6 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99006900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', 'raw', '6 x 300 g', '4050001118606', 'https://www.alsa-nature.nl/p/99006900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kip (bestaande uit kippenharten, kippenvlees, kippenlevers, kippenmagen, kippenhalzen), 27,3% bouillon, 4% quinoa, 4% pompoen, 3% broccoli, 1% mineralen, 0,5% kruiden, 0,2% lijnzaadolie', true, now(), 'sha256:ed4d8e19f7eec9bc4131474c422d0501a4d4d95d941b86413b3a8084f2e37e83', null from p;

-- Alsa Nature — CLASSIC Lam & Kip met zoete aardappel (6 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99012201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', 'wet', '6 x 500 g', '4050001123402', 'https://www.alsa-nature.nl/p/99012201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Lam (bestaande uit lamslever, lamslongen, lamsvlees, lamspens, lamshart), 30% kip (bestaande uit kippenhart, kippevlees, kippemaag, kippenek), 28,8% bouillon, 5% zoete aardappel, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:5d6f1b2594d0e46843a133aded81911cac32095a451b35b3ee7f587a506760df', null from p;

-- Alsa Nature — CLASSIC Lam & Kip met zoete aardappel (30 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99012401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', 'wet', '30 x 500 g', null, 'https://www.alsa-nature.nl/p/99012401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Lam (bestaande uit lamslever, lamslongen, lamsvlees, lamspens, lamshart), 30% kip (bestaande uit kippenhart, kippevlees, kippemaag, kippenek), 28,8% bouillon, 5% zoete aardappel, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:5d6f1b2594d0e46843a133aded81911cac32095a451b35b3ee7f587a506760df', null from p;

-- Alsa Nature — Speciaal Sensibel (30 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92040400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Sensibel', 'wet', '30 x 400 g', null, 'https://www.alsa-nature.nl/p/92040400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenmagen, kippenlever, kippennekken), 30% bouillon, 8% rijst, 6% appels, 5% wortel, 5% hüttenkäse, 1% mineralen, monocalciumfosfaat', true, now(), 'sha256:7054a6c636ce1f252f50ac80a2d170481c5f99cdf2264b889a71298b9bc8c496', null from p;

-- Alsa Nature — FINEST Kippen-spiervlees met pastinaak, pompoen en lijnolie (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920441
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FINEST Kippen-spiervlees met pastinaak, pompoen en lijnolie', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/920441', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Kippenspiervlees, 30% kip (bestaande uit kippenharten, kippenlever, kippenmagen, kippenhalsen), 28,8% bouillon, 5% pastinaak, 2% pompoen, 1% mineralen, 0,2% lijnolie.', true, now(), 'sha256:ca2f4a1e81de1bb6841baff9e6b91542b39a9fe8708c52e9732ea1e003764af9', null from p;

-- Alsa Nature — Speciaal Light-menu (30 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92040600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Light-menu', 'wet', '30 x 400 g', null, 'https://www.alsa-nature.nl/p/92040600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '56% Kip (bestaande uit kippenmagen, kippenlever, kippennekken), 31,6% bouillon, 5% pompoen, 4% rijst, 2% cellulose, 1% mineralen, 0,2% distelolie, 0,2% zalmolie', true, now(), 'sha256:d21ee0ded14bcae787236b3e4a81c600c570ccffdcd0492ae47e996b8f0d58fb', null from p;

-- Alsa Nature — SINGLE Rendier met aardappel (90 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920650
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Rendier met aardappel', 'wet', '90 x 400 g', null, 'https://www.alsa-nature.nl/p/920650', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Rendier, 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:5e00e05c0e60cac39c54f32530c54082eed627c0e03825fae4926eaa3f86ae6f', null from p;

-- Alsa Nature — Senior Lam met pastinaak, pompoen & abrikoos (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92041800
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92041800', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '61% Lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslongen, lamspens), 29,5% bouillon, 4% pastinaak, 2% pompoen, 2% abrikoos, 1% mineralen, 0,5% distelolie.', true, now(), 'sha256:d80a3a081cdd98e3264cb1e8c715c03e858292e88316da2f0ab0c9dd161ef2b6', null from p;

-- Alsa Nature — INSECTUM Insecten met erwten, pompoen & abrikoos (6 x 375 g)
-- bron: https://www.alsa-nature.nl/p/920513
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', 'wet', '6 x 375 g', null, 'https://www.alsa-nature.nl/p/920513', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% insecten (zwarte soldaatvlieg), 36% bouillon, 4% erwten, 4% pompoen, 4% abrikoos, 1% mineralen, 0,5% kruiden, 0,5% distelolie', true, now(), 'sha256:8be03b622db20cada942549c91e0b26edcf5c1bee6d9318e0a7d84011d1520ee', null from p;

-- Alsa Nature — SIMPLE Kangoeroe puur (400 g)
-- bron: https://www.alsa-nature.nl/p/920541
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Kangoeroe puur', 'wet', '400 g', '4050001115261', 'https://www.alsa-nature.nl/p/920541', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 28% bouillon', true, now(), 'sha256:53cd16766f13dbb6204f668f2fd590887c22f6fac057fd66a54680aea1d2ebdf', null from p;

-- Alsa Nature — SINGLE Gans puur (30 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920656
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Gans puur', 'wet', '30 x 400 g', null, 'https://www.alsa-nature.nl/p/920656', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Gans, 28,5% bouillon, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:57e1b17c747342add9952c2fab7b32537999c9f7cdd3de28ad981b0ca43a4bea', null from p;

-- Alsa Nature — SINGLE Gans puur (90 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920658
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Gans puur', 'wet', '90 x 400 g', null, 'https://www.alsa-nature.nl/p/920658', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Gans, 28,5% bouillon, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:57e1b17c747342add9952c2fab7b32537999c9f7cdd3de28ad981b0ca43a4bea', null from p;

-- Alsa Nature — SINGLE Geit met pastinaak (90 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920670
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Geit met pastinaak', 'wet', '90 x 800 g', null, 'https://www.alsa-nature.nl/p/920670', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Geit (bestaande uit geitenspiervlees, geitenhart, geitenlever, geitenlong), 29,5% bouillon, 5% pastinaak, 1% mineralen, 0,5% lijnolie.', true, now(), 'sha256:e407571587adef11047ea053b3136f6fea0fdfcf7265b73108285aea3ba5fd67', null from p;

-- Alsa Nature — SINGLE Rendier met aardappel (90 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920654
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Rendier met aardappel', 'wet', '90 x 800 g', null, 'https://www.alsa-nature.nl/p/920654', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Rendier, 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:5e00e05c0e60cac39c54f32530c54082eed627c0e03825fae4926eaa3f86ae6f', null from p;

-- Alsa Nature — JUBILEUM Kip & Kalkoen (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92073901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92073901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '43% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken, kippenvet), 28,8% bouillon, 20% kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenmaag, kalkoenlever, kalkoennekken), 4% courgette, 3% wortel, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:b20633e4cf744d14d8fe3c546f6acf25dbfc093c90fcac5834e9bfdf71178874', null from p;

-- Alsa Nature — JUBILEUM Kip (400 g)
-- bron: https://www.alsa-nature.nl/p/92074401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip', 'wet', '400 g', '4050001120128', 'https://www.alsa-nature.nl/p/92074401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken, kippenvet), 28,8% bouillon, 4% broccoli, 3% perzik, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:6558b32f439496c8c3c9d7e6ff5c5f1e5bdad3f7e661403e9d177004e336cd2b', null from p;

-- Alsa Nature — JUBILEUM Kip (800 g)
-- bron: https://www.alsa-nature.nl/p/92074701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip', 'wet', '800 g', '4050001120135', 'https://www.alsa-nature.nl/p/92074701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken, kippenvet), 28,8% bouillon, 4% broccoli, 3% perzik, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:6558b32f439496c8c3c9d7e6ff5c5f1e5bdad3f7e661403e9d177004e336cd2b', null from p;

-- Alsa Nature — JUBILEUM Kip (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92074901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92074901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken, kippenvet), 28,8% bouillon, 4% broccoli, 3% perzik, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:6558b32f439496c8c3c9d7e6ff5c5f1e5bdad3f7e661403e9d177004e336cd2b', null from p;

-- Alsa Nature — JUBILEUM Lam (400 g)
-- bron: https://www.alsa-nature.nl/p/92075601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Lam', 'wet', '400 g', '4050001120142', 'https://www.alsa-nature.nl/p/92075601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslong, lamspens), 28,8% bouillon, 5% aardpeer, 2% bonen, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:59fb5938f9e043737b259cc8873248986c1eeb861c882839a1e06c713bb4b309', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
