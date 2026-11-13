-- Automatisch overgenomen etiketten, batch 3 van 2026-11-13 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Alsa Nature — JUBILEUM Rund (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92075101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Rund', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92075101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% rund (bestaande uit runderhart, rundvlees, runderlever, runderlong, runderpens, rundernieren), 28,8% bouillon, 5% aardappelen, 2% peterselie, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:771bb3f986b2652161946b757159c16f02d5f9a7d5b4c882668b0b05416743b2', null from p;

-- Alsa Nature — Classic Gevogelte met volkorenrijst en wortel (400 g)
-- bron: https://www.alsa-nature.nl/p/92100101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', 'wet', '400 g', '4050001116060', 'https://www.alsa-nature.nl/p/92100101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Gevogelte (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,9% bouillon, 5% volkorenrijst, 4% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:317891f7d558c88d829209ca23f7b14b9d739fec355d1a86673591d12420cc45', null from p;

-- Alsa Nature — 4-SEASONS Herfstmenu Wild & Hert met zoete aardappel (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92090001
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', '4-SEASONS Herfstmenu Wild & Hert met zoete aardappel', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92090001', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '55% Wild, 26,9% bouillon, 10% Hert, 3% zoete aardappel, 2% peren, 2% cranberries, mineralen, 0,1% teunisbloemolie', true, now(), 'sha256:6b0be9de7103e25127e9ba095db682f57bcce53ec8a1d7b5f3410fc8de7abe73', null from p;

-- Alsa Nature — SINGLE Paard met aardappel (90 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920642
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Paard met aardappel', 'wet', '90 x 400 g', null, 'https://www.alsa-nature.nl/p/920642', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Paard (bestaande uit paardenvlees, paardenhart, paardenlever), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:425d605b0eb5772fa93f681b963c849f368b11355f86314d2a96628ef17c75f0', null from p;

-- Alsa Nature — JUBILEUM Kip & Kalkoen (800 g)
-- bron: https://www.alsa-nature.nl/p/92074101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', 'wet', '800 g', '4050001120173', 'https://www.alsa-nature.nl/p/92074101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '43% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken, kippenvet), 28,8% bouillon, 20% kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenmaag, kalkoenlever, kalkoennekken), 4% courgette, 3% wortel, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:b20633e4cf744d14d8fe3c546f6acf25dbfc093c90fcac5834e9bfdf71178874', null from p;

-- Alsa Nature — Classic Gevogelte met volkorenrijst en wortel (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92100401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92100401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Gevogelte (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,9% bouillon, 5% volkorenrijst, 4% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:317891f7d558c88d829209ca23f7b14b9d739fec355d1a86673591d12420cc45', null from p;

-- Alsa Nature — JUBILEUM Wild (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92076601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Wild', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92076601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% wild, 28,8% bouillon, 5% zoete aardappel, 2% aalbessen, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:16825c78e6d041a25818c34c7bb15dd92c849f855e9df6316e5f218e5466bf31', null from p;

-- Alsa Nature — Classic Gevogelte met volkorenrijst en wortel (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92100501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92100501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Gevogelte (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,9% bouillon, 5% volkorenrijst, 4% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:317891f7d558c88d829209ca23f7b14b9d739fec355d1a86673591d12420cc45', null from p;

-- Alsa Nature — Classic Gevogelte met volkorenrijst en wortel (6 x 200 g)
-- bron: https://www.alsa-nature.nl/p/92100801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', 'wet', '6 x 200 g', null, 'https://www.alsa-nature.nl/p/92100801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Gevogelte (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,9% bouillon, 5% volkorenrijst, 4% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:317891f7d558c88d829209ca23f7b14b9d739fec355d1a86673591d12420cc45', null from p;

-- Alsa Nature — 4-SEASONS Herfstmenu Wild & Hert met zoete aardappel (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92090101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', '4-SEASONS Herfstmenu Wild & Hert met zoete aardappel', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92090101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '55% Wild, 26,9% bouillon, 10% Hert, 3% zoete aardappel, 2% peren, 2% cranberries, mineralen, 0,1% teunisbloemolie', true, now(), 'sha256:6b0be9de7103e25127e9ba095db682f57bcce53ec8a1d7b5f3410fc8de7abe73', null from p;

-- Alsa Nature — Classic Lam met volkorenpasta en wortel (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92130301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92130301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslongen, lamspens), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,9% bouillon, 5% volkorennoedels, 4% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:8c1c078fccceb1540b1c64b7506e19a88ba3eebb39424e173a7574b7ebb268cb', null from p;

-- Alsa Nature — Classic Eend met ham en spinazie ravioli (400 g)
-- bron: https://www.alsa-nature.nl/p/92190401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', 'wet', '400 g', '4050001116213', 'https://www.alsa-nature.nl/p/92190401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Eend, 28,9% bouillon, 27% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 5% italiaanse ham, 5% spinazie ravioli, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:408129383c82a50aa59e651e4d27f4aaef9f7f0902bab9e267b8f38bdab2e515', null from p;

-- Alsa Nature — Speciaal Nierdieet (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92180201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Nierdieet', 'wet', '6 x 400 g', '4050001116787', 'https://www.alsa-nature.nl/p/92180201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35,3% Bouillon, 35% kip (bestaande uit kippenharten, kippenmagen, kippenvet), 12% rijst, 10% aardappelen, 5% pompoen, 1% mineralen, 1% cellulose, 0,5% zalmolie, 0,1% voleipoeder, 0,1% biergist', true, now(), 'sha256:5bc16099b3cf0be75f656662e9c63fee5a52c64f22b47951501ab4c54778fbfe', null from p;

-- Alsa Nature — Classic Spiervlees met aardappel en wortel (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92340501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92340501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Runderspiervlees, 30% rund (bestaande uit runderhart, runderlever, runderlongen, runderpens), 25,9% bouillon, 5% aardappel, 3% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:c7880603df2be98c9434a20d8b02b9f7d58c788a8cef3b0d8069e6934b4e2b04', null from p;

-- Alsa Nature — Speciaal Light-menu (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92330501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Light-menu', 'wet', '6 x 400 g', '4050001116794', 'https://www.alsa-nature.nl/p/92330501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '56% Kip (bestaande uit kippenmagen, kippenlever, kippennekken), 31,6% bouillon, 5% pompoen, 4% rijst, 2% cellulose, 1% mineralen, 0,2% distelolie, 0,2% zalmolie', true, now(), 'sha256:d21ee0ded14bcae787236b3e4a81c600c570ccffdcd0492ae47e996b8f0d58fb', null from p;

-- Alsa Nature — SINGLE Lam met aardappel (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92510601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Lam met aardappel', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92510601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Lam (bestaande uit lamshart, lamsvlees, lamslever, lamslong, lamspens), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:f547056025bca7a535e62eb92c287764677bf709d1b78b3b4d3d948672e2a274', null from p;

-- Alsa Nature — Classic Lam met volkorenpasta en wortel (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92130501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92130501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslongen, lamspens), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,9% bouillon, 5% volkorennoedels, 4% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:8c1c078fccceb1540b1c64b7506e19a88ba3eebb39424e173a7574b7ebb268cb', null from p;

-- Alsa Nature — Classic Spiervlees met aardappel en wortel (200 g)
-- bron: https://www.alsa-nature.nl/p/92340101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', 'wet', '200 g', '4050001116237', 'https://www.alsa-nature.nl/p/92340101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Runderspiervlees, 30% rund (bestaande uit runderhart, runderlever, runderlongen, runderpens), 25,9% bouillon, 5% aardappel, 3% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:c7880603df2be98c9434a20d8b02b9f7d58c788a8cef3b0d8069e6934b4e2b04', null from p;

-- Alsa Nature — SINGLE Rendier met aardappel (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92520901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Rendier met aardappel', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92520901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Rendier, 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:5e00e05c0e60cac39c54f32530c54082eed627c0e03825fae4926eaa3f86ae6f', null from p;

-- Alsa Nature — SINGLE Rendier met aardappel (400 g)
-- bron: https://www.alsa-nature.nl/p/92520401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Rendier met aardappel', 'wet', '400 g', '4050001116626', 'https://www.alsa-nature.nl/p/92520401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Rendier, 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:5e00e05c0e60cac39c54f32530c54082eed627c0e03825fae4926eaa3f86ae6f', null from p;

-- Alsa Nature — Senior Kip & Kalkoen met aardappel en peterselie (400 g)
-- bron: https://www.alsa-nature.nl/p/92620401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', 'wet', '400 g', '4050001116527', 'https://www.alsa-nature.nl/p/92620401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% kalkoen (bestaande uit kalkoenenharten, kalkoenvlees, kalkoenlever, kalkoenennekken), 28,4% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie, 0,1% peterselie', true, now(), 'sha256:fb266ac396bdcac4e90adcdcc86e428e3f6fa442bc7cf7e6bca111537392ce87', null from p;

-- Alsa Nature — SINGLE Rendier met aardappel (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92520801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Rendier met aardappel', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92520801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Rendier, 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:5e00e05c0e60cac39c54f32530c54082eed627c0e03825fae4926eaa3f86ae6f', null from p;

-- Alsa Nature — Pens worst (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/93450801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Pens worst', 'wet', '6 x 800 g', '4050001102711', 'https://www.alsa-nature.nl/p/93450801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '67% rundvlees (bestaande uit runderpens, runderlong, runderlever, rundernieren), 26,8% bouillon, 4% wortel, 2% havervlokken, 0,1% distelolie, 0,1% mineralen', true, now(), 'sha256:494bed78eebfd515b6e65dcefc521bf369588dbeb9df3664233eb43d24229352', null from p;

-- Alsa Nature — FOODLOVE Lam met amarant, aardpeer & vijg (30 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99004300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', 'raw', '30 x 300 g', null, 'https://www.alsa-nature.nl/p/99004300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% lam (bestaande uit lamsharten, lamsvlees, lamslevers, lamslongen, lamspensen), 27,3% bouillon, 4% amarant, 4% vijgen, 3% aardperen, 1% mineralen, 0,5% kruiden, 0,2% zonnebloemolie', true, now(), 'sha256:19f896126cedb83b9ad4ca77ca311367b519546aa1163f8bbe869066d18d01db', null from p;

-- Alsa Nature — FOODLOVE Lam met amarant, aardpeer & vijg (60 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99004400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', 'raw', '60 x 300 g', null, 'https://www.alsa-nature.nl/p/99004400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% lam (bestaande uit lamsharten, lamsvlees, lamslevers, lamslongen, lamspensen), 27,3% bouillon, 4% amarant, 4% vijgen, 3% aardperen, 1% mineralen, 0,5% kruiden, 0,2% zonnebloemolie', true, now(), 'sha256:19f896126cedb83b9ad4ca77ca311367b519546aa1163f8bbe869066d18d01db', null from p;

-- Alsa Nature — FOODLOVE Rund met amarant, zoete aardappel & bessen (12 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99004900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', 'raw', '12 x 300 g', null, 'https://www.alsa-nature.nl/p/99004900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% rund (bestaande uit runderharten, rundvlees, runderlongen, runderlevers, runderpensen), 27,3% bouillon, 4% amarant, 4% zoete aardappel, 2% veenbessen, 1% frambozen, 1% mineralen, 0,5% kruiden, 0,2% zonnebloemolie', true, now(), 'sha256:3df457138c10a8d101a9b07f691104848db8814ce40f4d842d893ac83a4a6284', null from p;

-- Alsa Nature — FOODLOVE Rund met amarant, zoete aardappel & bessen (90 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99005200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', 'raw', '90 x 300 g', null, 'https://www.alsa-nature.nl/p/99005200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% rund (bestaande uit runderharten, rundvlees, runderlongen, runderlevers, runderpensen), 27,3% bouillon, 4% amarant, 4% zoete aardappel, 2% veenbessen, 1% frambozen, 1% mineralen, 0,5% kruiden, 0,2% zonnebloemolie', true, now(), 'sha256:3df457138c10a8d101a9b07f691104848db8814ce40f4d842d893ac83a4a6284', null from p;

-- Alsa Nature — FOODLOVE Kip & Forel met quinoa, pastinaak & papaja (90 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99008000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', 'raw', '90 x 300 g', null, 'https://www.alsa-nature.nl/p/99008000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '40% kip (bestaande uit kippenharten, kippenvlees, kippenlevers, kippenmagen, kippenhalzen), 27,3% bouillon, 20% forel, 4% quinoa, 4% pastinaak, 3% papaya, 1% mineralen, 0,5% kruiden, 0,2% lijnzaadolie', true, now(), 'sha256:77ef1a615fd4a37a4093a031d6776961b79ac44300f21c9fe5ef4a0a81f4921a', null from p;

-- Alsa Nature — FOODLOVE Rund met amarant, zoete aardappel & bessen (6 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99004800
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', 'raw', '6 x 300 g', '4050001118576', 'https://www.alsa-nature.nl/p/99004800', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% rund (bestaande uit runderharten, rundvlees, runderlongen, runderlevers, runderpensen), 27,3% bouillon, 4% amarant, 4% zoete aardappel, 2% veenbessen, 1% frambozen, 1% mineralen, 0,5% kruiden, 0,2% zonnebloemolie', true, now(), 'sha256:3df457138c10a8d101a9b07f691104848db8814ce40f4d842d893ac83a4a6284', null from p;

-- Alsa Nature — CLASSIC Eend & Rund met aardappel (30 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99010601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', 'wet', '30 x 500 g', null, 'https://www.alsa-nature.nl/p/99010601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Eend (bestaande uit eendenmaag, eendennek, eendenhart), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% aardappel, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:fa7b052a87dd44e6b4be9a2b412d6e48e846544f045b13405cc01725e0fdd50d', null from p;

-- Alsa Nature — CLASSIC Wildzwijn & Rund met courgette (6 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99011601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', 'wet', '6 x 500 g', '4050001123396', 'https://www.alsa-nature.nl/p/99011601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Wildzwijn (bestaande uit wildzwijnvlees), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% courgette, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:87e2446ca93cc5c653b46fb9ff3d72ca3cd6dcf950bc0dea7e563e62290079bb', null from p;

-- Alsa Nature — FOODLOVE Rund met amarant, zoete aardappel & bessen (60 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99005100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', 'raw', '60 x 300 g', null, 'https://www.alsa-nature.nl/p/99005100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% rund (bestaande uit runderharten, rundvlees, runderlongen, runderlevers, runderpensen), 27,3% bouillon, 4% amarant, 4% zoete aardappel, 2% veenbessen, 1% frambozen, 1% mineralen, 0,5% kruiden, 0,2% zonnebloemolie', true, now(), 'sha256:3df457138c10a8d101a9b07f691104848db8814ce40f4d842d893ac83a4a6284', null from p;

-- Alsa Nature — CLASSIC Runderharten & Kip met pastinaak (60 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99013101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', 'wet', '60 x 500 g', null, 'https://www.alsa-nature.nl/p/99013101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Runderharten, 30% kip (bestaande uit kippenhart, kippenvlees, kippenlever, kippenmaag, kippennekken), 28,8% bouillon, 5% pastinaak, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:63f11bbfbe5f4514ab8298a2a2ac3f68106aea386f1a2a2d19a131382244b335', null from p;

-- Alsa Nature — CLASSIC Runderharten & Kip met pastinaak (90 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99013201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', 'wet', '90 x 500 g', null, 'https://www.alsa-nature.nl/p/99013201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Runderharten, 30% kip (bestaande uit kippenhart, kippenvlees, kippenlever, kippenmaag, kippennekken), 28,8% bouillon, 5% pastinaak, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:63f11bbfbe5f4514ab8298a2a2ac3f68106aea386f1a2a2d19a131382244b335', null from p;

-- Alsa Nature — CLASSIC Gevogelteharten & Kip met rode biet (6 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99013401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', 'wet', '6 x 500 g', '4050001123426', 'https://www.alsa-nature.nl/p/99013401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Gevogelteharten, 30% kip (bestaande uit kippenhart, kippenvlees, kippenlever, kippenmaag en kippennek), 28,8% bouillon, 5% rode biet, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:8c1eeeadfdd1f4790726ff6b89f714aa9fa4aeb9e4697218a38ef851de0aefab', null from p;

-- Alsa Nature — CLASSIC Eend & Rund met aardappel (120 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99010901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', 'wet', '120 x 500 g', null, 'https://www.alsa-nature.nl/p/99010901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Eend (bestaande uit eendenmaag, eendennek, eendenhart), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% aardappel, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:fa7b052a87dd44e6b4be9a2b412d6e48e846544f045b13405cc01725e0fdd50d', null from p;

-- Alsa Nature — CLASSIC Gevogelteharten & Kip met rode biet (60 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99013701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', 'wet', '60 x 500 g', null, 'https://www.alsa-nature.nl/p/99013701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Gevogelteharten, 30% kip (bestaande uit kippenhart, kippenvlees, kippenlever, kippenmaag en kippennek), 28,8% bouillon, 5% rode biet, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:8c1eeeadfdd1f4790726ff6b89f714aa9fa4aeb9e4697218a38ef851de0aefab', null from p;

-- Alsa Nature — CLASSIC Runderharten & Kip met pastinaak (120 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99013301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', 'wet', '120 x 500 g', null, 'https://www.alsa-nature.nl/p/99013301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Runderharten, 30% kip (bestaande uit kippenhart, kippenvlees, kippenlever, kippenmaag, kippennekken), 28,8% bouillon, 5% pastinaak, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:63f11bbfbe5f4514ab8298a2a2ac3f68106aea386f1a2a2d19a131382244b335', null from p;

-- Alsa Nature — SINGLE Paard met aardappel (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92019100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Paard met aardappel', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92019100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Paard (bestaande uit paardenvlees, paardenhart, paardenlever), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:425d605b0eb5772fa93f681b963c849f368b11355f86314d2a96628ef17c75f0', null from p;

-- Alsa Nature — Classic Bizon met pastinaak, rode bieten & appel (400 g)
-- bron: https://www.alsa-nature.nl/p/92026300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', 'wet', '400 g', '4050001116268', 'https://www.alsa-nature.nl/p/92026300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '30% Bizon, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,9% bouillon, 3% pastinaak, 3% rode bieten, 3% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:c94f42101f67b5b48ced5069838cc0e21d28c8055bebab4fd53ad2dfba56bc1b', null from p;

-- Alsa Nature — Classic Kalkoen met zoete aardappel, peer & paardebloem (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92027700
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92027700', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '31% Kalkoen (bestaande uit kalkoenenharten, kalkoenvlees, kalkoenlever, kalkoenennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,9% bouillon, 3% zoete aardappel, 3% peer, 1% paardenbloem, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:25559e76815297ca19ceb3b9957f3b08a32043e417960a8285520bc27b9a93d0', null from p;

-- Alsa Nature — Classic Kalkoen met zoete aardappel, peer & paardebloem (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92027400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92027400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '31% Kalkoen (bestaande uit kalkoenenharten, kalkoenvlees, kalkoenlever, kalkoenennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,9% bouillon, 3% zoete aardappel, 3% peer, 1% paardenbloem, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:25559e76815297ca19ceb3b9957f3b08a32043e417960a8285520bc27b9a93d0', null from p;

-- Alsa Nature — JUNIOR Wild met aardappel (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92030000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Wild met aardappel', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92030000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '30% Wild (bestaande uit hart, vlees, lever, longen en pens van wild), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,8% bouillon, 3% aardappel, 3% rode bosbes, 1% mineralen, 0,1% levertraan, 0,1% lijnolie', true, now(), 'sha256:714d21a8b6c757c610695bd7554368d31d9e025c3d00a8cda906fe0c944c869f', null from p;

-- Alsa Nature — JUNIOR Wild met aardappel (400 g)
-- bron: https://www.alsa-nature.nl/p/92029900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Wild met aardappel', 'wet', '400 g', '4050001116480', 'https://www.alsa-nature.nl/p/92029900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '30% Wild (bestaande uit hart, vlees, lever, longen en pens van wild), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,8% bouillon, 3% aardappel, 3% rode bosbes, 1% mineralen, 0,1% levertraan, 0,1% lijnolie', true, now(), 'sha256:714d21a8b6c757c610695bd7554368d31d9e025c3d00a8cda906fe0c944c869f', null from p;

-- Alsa Nature — Speciaal Single-sensitief (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92030300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Single-sensitief', 'wet', '6 x 400 g', '4050001116770', 'https://www.alsa-nature.nl/p/92030300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Paard (bestaande uit paardenvlees, paardenlever), 7% pompoen, 7% courgette, 7% zoete aardappel, 1% mineralen, 0,5% distelolie, monocalciumfosfaat', true, now(), 'sha256:76fbba52907d123eb5908b7dcfd42651c46f1ec9e1fcc3597dbd8337c547bff6', null from p;

-- Alsa Nature — SINGLE Geit met pastinaak (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920433
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Geit met pastinaak', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/920433', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Geit (bestaande uit geitenspiervlees, geitenhart, geitenlever, geitenlong), 29,5% bouillon, 5% pastinaak, 1% mineralen, 0,5% lijnolie.', true, now(), 'sha256:e407571587adef11047ea053b3136f6fea0fdfcf7265b73108285aea3ba5fd67', null from p;

-- Alsa Nature — FINEST Runder-spiervlees met aardperen, venkel en lijnolie (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920448
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FINEST Runder-spiervlees met aardperen, venkel en lijnolie', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/920448', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Runderspiervlees, 30% rund (bestaande uit runderhart, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% aardpeer, 2% venkel, 1% mineralen, 0,2% lijnolie.', true, now(), 'sha256:27a98410a204d943ccbfe50caf2f04f2f67183ddd24783aa02a91bc9e4517067', null from p;

-- Alsa Nature — SINGLE Kalkoen puur (30 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920620
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kalkoen puur', 'wet', '30 x 800 g', null, 'https://www.alsa-nature.nl/p/920620', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoennekken), bouillon 28,5%, mineralen 1%, distelolie 0,5%', true, now(), 'sha256:7c01b711f4038061fb77e21d0d0cc1fa8a01462032c83e0701e566f974e08b91', null from p;

-- Alsa Nature — SINGLE Kalkoen puur (60 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920617
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kalkoen puur', 'wet', '60 x 400 g', null, 'https://www.alsa-nature.nl/p/920617', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoennekken), bouillon 28,5%, mineralen 1%, distelolie 0,5%', true, now(), 'sha256:7c01b711f4038061fb77e21d0d0cc1fa8a01462032c83e0701e566f974e08b91', null from p;

-- Alsa Nature — SINGLE Kalkoen puur (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92027900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kalkoen puur', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92027900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoennekken), bouillon 28,5%, mineralen 1%, distelolie 0,5%', true, now(), 'sha256:7c01b711f4038061fb77e21d0d0cc1fa8a01462032c83e0701e566f974e08b91', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
