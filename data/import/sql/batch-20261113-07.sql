-- Automatisch overgenomen etiketten, batch 7 van 2026-11-13 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Alsa Nature — JUBILEUM Lam (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92075801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Lam', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92075801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslong, lamspens), 28,8% bouillon, 5% aardpeer, 2% bonen, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:59fb5938f9e043737b259cc8873248986c1eeb861c882839a1e06c713bb4b309', null from p;

-- Alsa Nature — JUBILEUM Rund (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92075501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Rund', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92075501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% rund (bestaande uit runderhart, rundvlees, runderlever, runderlong, runderpens, rundernieren), 28,8% bouillon, 5% aardappelen, 2% peterselie, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:771bb3f986b2652161946b757159c16f02d5f9a7d5b4c882668b0b05416743b2', null from p;

-- Alsa Nature — Speciaal Sensibel (200 g)
-- bron: https://www.alsa-nature.nl/p/92170401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Sensibel', 'wet', '200 g', '4050001116763', 'https://www.alsa-nature.nl/p/92170401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenmagen, kippenlever, kippennekken), 30% bouillon, 8% rijst, 6% appels, 5% wortel, 5% hüttenkäse, 1% mineralen, monocalciumfosfaat', true, now(), 'sha256:7054a6c636ce1f252f50ac80a2d170481c5f99cdf2264b889a71298b9bc8c496', null from p;

-- Alsa Nature — JUBILEUM Kip (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92074601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92074601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken, kippenvet), 28,8% bouillon, 4% broccoli, 3% perzik, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:6558b32f439496c8c3c9d7e6ff5c5f1e5bdad3f7e661403e9d177004e336cd2b', null from p;

-- Alsa Nature — JUBILEUM Kip (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92074501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92074501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken, kippenvet), 28,8% bouillon, 4% broccoli, 3% perzik, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:6558b32f439496c8c3c9d7e6ff5c5f1e5bdad3f7e661403e9d177004e336cd2b', null from p;

-- Alsa Nature — SINGLE Gans puur (800 g)
-- bron: https://www.alsa-nature.nl/p/92260701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Gans puur', 'wet', '800 g', '4050001104623', 'https://www.alsa-nature.nl/p/92260701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Gans, 28,5% bouillon, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:57e1b17c747342add9952c2fab7b32537999c9f7cdd3de28ad981b0ca43a4bea', null from p;

-- Alsa Nature — SINGLE Gans puur (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92260901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Gans puur', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92260901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Gans, 28,5% bouillon, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:57e1b17c747342add9952c2fab7b32537999c9f7cdd3de28ad981b0ca43a4bea', null from p;

-- Alsa Nature — JUBILEUM Lam (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92075701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Lam', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92075701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslong, lamspens), 28,8% bouillon, 5% aardpeer, 2% bonen, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:59fb5938f9e043737b259cc8873248986c1eeb861c882839a1e06c713bb4b309', null from p;

-- Alsa Nature — Speciaal Sensibel (400 g)
-- bron: https://www.alsa-nature.nl/p/92170101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Sensibel', 'wet', '400 g', '4050001116756', 'https://www.alsa-nature.nl/p/92170101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenmagen, kippenlever, kippennekken), 30% bouillon, 8% rijst, 6% appels, 5% wortel, 5% hüttenkäse, 1% mineralen, monocalciumfosfaat', true, now(), 'sha256:7054a6c636ce1f252f50ac80a2d170481c5f99cdf2264b889a71298b9bc8c496', null from p;

-- Alsa Nature — Speciaal Nierdieet (400 g)
-- bron: https://www.alsa-nature.nl/p/92180101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Nierdieet', 'wet', '400 g', '4050001116732', 'https://www.alsa-nature.nl/p/92180101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35,3% Bouillon, 35% kip (bestaande uit kippenharten, kippenmagen, kippenvet), 12% rijst, 10% aardappelen, 5% pompoen, 1% mineralen, 1% cellulose, 0,5% zalmolie, 0,1% voleipoeder, 0,1% biergist', true, now(), 'sha256:5bc16099b3cf0be75f656662e9c63fee5a52c64f22b47951501ab4c54778fbfe', null from p;

-- Alsa Nature — SINGLE Gans puur (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92260801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Gans puur', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92260801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Gans, 28,5% bouillon, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:57e1b17c747342add9952c2fab7b32537999c9f7cdd3de28ad981b0ca43a4bea', null from p;

-- Alsa Nature — Speciaal Light-menu (400 g)
-- bron: https://www.alsa-nature.nl/p/92330401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Light-menu', 'wet', '400 g', '4050001116749', 'https://www.alsa-nature.nl/p/92330401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '56% Kip (bestaande uit kippenmagen, kippenlever, kippennekken), 31,6% bouillon, 5% pompoen, 4% rijst, 2% cellulose, 1% mineralen, 0,2% distelolie, 0,2% zalmolie', true, now(), 'sha256:d21ee0ded14bcae787236b3e4a81c600c570ccffdcd0492ae47e996b8f0d58fb', null from p;

-- Alsa Nature — FOODLOVE Lam met amarant, aardpeer & vijg (6 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99004100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', 'raw', '6 x 300 g', '4050001118569', 'https://www.alsa-nature.nl/p/99004100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% lam (bestaande uit lamsharten, lamsvlees, lamslevers, lamslongen, lamspensen), 27,3% bouillon, 4% amarant, 4% vijgen, 3% aardperen, 1% mineralen, 0,5% kruiden, 0,2% zonnebloemolie', true, now(), 'sha256:19f896126cedb83b9ad4ca77ca311367b519546aa1163f8bbe869066d18d01db', null from p;

-- Alsa Nature — FOODLOVE Lam met amarant, aardpeer & vijg (12 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99004200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', 'raw', '12 x 300 g', null, 'https://www.alsa-nature.nl/p/99004200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% lam (bestaande uit lamsharten, lamsvlees, lamslevers, lamslongen, lamspensen), 27,3% bouillon, 4% amarant, 4% vijgen, 3% aardperen, 1% mineralen, 0,5% kruiden, 0,2% zonnebloemolie', true, now(), 'sha256:19f896126cedb83b9ad4ca77ca311367b519546aa1163f8bbe869066d18d01db', null from p;

-- Alsa Nature — FOODLOVE Kalkoen met amarant, zoete aardappel & mango (90 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99005900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', 'raw', '90 x 300 g', null, 'https://www.alsa-nature.nl/p/99005900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoenmagen, kalkoenhalzen), 27,3% bouillon, 4% amarant, 4% zoete aardappel, 3% mango, 1% mineralen, 0,5% kruiden, 0,2% distelolie', true, now(), 'sha256:eeaccf92f5a2a0cd9a733c5fbb9564a463ed14fda2ae77e652874e9c79fbb54e', null from p;

-- Alsa Nature — FOODLOVE Rund met amarant, zoete aardappel & bessen (120 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99005300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', 'raw', '120 x 300 g', null, 'https://www.alsa-nature.nl/p/99005300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% rund (bestaande uit runderharten, rundvlees, runderlongen, runderlevers, runderpensen), 27,3% bouillon, 4% amarant, 4% zoete aardappel, 2% veenbessen, 1% frambozen, 1% mineralen, 0,5% kruiden, 0,2% zonnebloemolie', true, now(), 'sha256:3df457138c10a8d101a9b07f691104848db8814ce40f4d842d893ac83a4a6284', null from p;

-- Alsa Nature — Struisvogel Enkel-eiwit (3 kg)
-- bron: https://www.alsa-nature.nl/p/91350201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Struisvogel Enkel-eiwit', 'kibble', '3 kg', '4050001101851', 'https://www.alsa-nature.nl/p/91350201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, struisvogel 24%, bietenvezels, oliën en vetten, mineralen, natriumchloride', true, now(), 'sha256:c0b93cbdcfb3f92736dcd44f7671a93a2656e29da9186edf81c533b0771e747c', null from p;

-- Alsa Nature — Struisvogel Enkel-eiwit (12 kg)
-- bron: https://www.alsa-nature.nl/p/91350401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Struisvogel Enkel-eiwit', 'kibble', '12 kg', '4050001101875', 'https://www.alsa-nature.nl/p/91350401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, struisvogel 24%, bietenvezels, oliën en vetten, mineralen, natriumchloride', true, now(), 'sha256:c0b93cbdcfb3f92736dcd44f7671a93a2656e29da9186edf81c533b0771e747c', null from p;

-- Alsa Nature — Classic Kalfs-Ragout met Peterselie-aardappel en pompoen (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92001501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92001501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kalf, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,4% bouillon, 5% aardappel, 2% pompoen, 1% mineralen, 0,5% peterselie, 0,1% distelolie', true, now(), 'sha256:6df952e1d131a664ded8343a27b3f93da3a6aad25a4d1e50d18ae32adfdecaeb', null from p;

-- Alsa Nature — Classic Hert met zoete aardappel en kastanjes (6 x 200 g)
-- bron: https://www.alsa-nature.nl/p/92007201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', 'wet', '6 x 200 g', null, 'https://www.alsa-nature.nl/p/92007201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Hert, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 27,9% bouillon, 5% zoete aardappel, 1% kastanje, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:f6769b7bfa9d15eac38dc1a78c0c9acb6b0c81a72d8643a3fd426c161d0da13c', null from p;

-- Alsa Nature — JUBILEUM Kip & Kalkoen (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92074001
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92074001', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '43% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken, kippenvet), 28,8% bouillon, 20% kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenmaag, kalkoenlever, kalkoennekken), 4% courgette, 3% wortel, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:b20633e4cf744d14d8fe3c546f6acf25dbfc093c90fcac5834e9bfdf71178874', null from p;

-- Alsa Nature — Classic Hert met zoete aardappel en kastanjes (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92007801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92007801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Hert, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 27,9% bouillon, 5% zoete aardappel, 1% kastanje, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:f6769b7bfa9d15eac38dc1a78c0c9acb6b0c81a72d8643a3fd426c161d0da13c', null from p;

-- Alsa Nature — JUBILEUM Kip & Kalkoen (400 g)
-- bron: https://www.alsa-nature.nl/p/92073801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', 'wet', '400 g', '4050001120166', 'https://www.alsa-nature.nl/p/92073801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '43% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken, kippenvet), 28,8% bouillon, 20% kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenmaag, kalkoenlever, kalkoennekken), 4% courgette, 3% wortel, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:b20633e4cf744d14d8fe3c546f6acf25dbfc093c90fcac5834e9bfdf71178874', null from p;

-- Alsa Nature — JUBILEUM Kip & Kalkoen (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92074301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92074301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '43% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken, kippenvet), 28,8% bouillon, 20% kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenmaag, kalkoenlever, kalkoennekken), 4% courgette, 3% wortel, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:b20633e4cf744d14d8fe3c546f6acf25dbfc093c90fcac5834e9bfdf71178874', null from p;

-- Alsa Nature — 4-SEASONS Herfstmenu Wild & Hert met zoete aardappel (400 g)
-- bron: https://www.alsa-nature.nl/p/92089901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', '4-SEASONS Herfstmenu Wild & Hert met zoete aardappel', 'wet', '400 g', '4050001123754', 'https://www.alsa-nature.nl/p/92089901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '55% Wild, 26,9% bouillon, 10% Hert, 3% zoete aardappel, 2% peren, 2% cranberries, mineralen, 0,1% teunisbloemolie', true, now(), 'sha256:6b0be9de7103e25127e9ba095db682f57bcce53ec8a1d7b5f3410fc8de7abe73', null from p;

-- Alsa Nature — 4-SEASONS Zomermenu Rund & Zalm met mango en meloen (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92089701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', '4-SEASONS Zomermenu Rund & Zalm met mango en meloen', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92089701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% Rund (bestaande uit runderhart, rundervlees, runderlongen, runderlever, runderpens), 29,9% bouillon, 15% zalm, 2% mango, 2% meloen, mineralen, 0,1% zalmolie', true, now(), 'sha256:62703d4fcc5aa05a3eee6339c223af0262ff2e6746eb5eeb69626128b7ece592', null from p;

-- Alsa Nature — Classic Gevogelte met volkorenrijst en wortel (200 g)
-- bron: https://www.alsa-nature.nl/p/92100701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', 'wet', '200 g', '4050001116084', 'https://www.alsa-nature.nl/p/92100701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Gevogelte (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,9% bouillon, 5% volkorenrijst, 4% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:317891f7d558c88d829209ca23f7b14b9d739fec355d1a86673591d12420cc45', null from p;

-- Alsa Nature — 4-SEASONS Zomermenu Rund & Zalm met mango en meloen (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92089801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', '4-SEASONS Zomermenu Rund & Zalm met mango en meloen', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92089801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% Rund (bestaande uit runderhart, rundervlees, runderlongen, runderlever, runderpens), 29,9% bouillon, 15% zalm, 2% mango, 2% meloen, mineralen, 0,1% zalmolie', true, now(), 'sha256:62703d4fcc5aa05a3eee6339c223af0262ff2e6746eb5eeb69626128b7ece592', null from p;

-- Alsa Nature — Classic Lam met volkorenpasta en wortel (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92130601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92130601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslongen, lamspens), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,9% bouillon, 5% volkorennoedels, 4% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:8c1c078fccceb1540b1c64b7506e19a88ba3eebb39424e173a7574b7ebb268cb', null from p;

-- Alsa Nature — Classic Gevogelte met volkorenrijst en wortel (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92100301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92100301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Gevogelte (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,9% bouillon, 5% volkorenrijst, 4% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:317891f7d558c88d829209ca23f7b14b9d739fec355d1a86673591d12420cc45', null from p;

-- Alsa Nature — Classic Lam met volkorenpasta en wortel (800 g)
-- bron: https://www.alsa-nature.nl/p/92130401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', 'wet', '800 g', '4050001116206', 'https://www.alsa-nature.nl/p/92130401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslongen, lamspens), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,9% bouillon, 5% volkorennoedels, 4% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:8c1c078fccceb1540b1c64b7506e19a88ba3eebb39424e173a7574b7ebb268cb', null from p;

-- Alsa Nature — Classic Lam met volkorenpasta en wortel (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92130201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92130201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslongen, lamspens), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,9% bouillon, 5% volkorennoedels, 4% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:8c1c078fccceb1540b1c64b7506e19a88ba3eebb39424e173a7574b7ebb268cb', null from p;

-- Alsa Nature — Classic Lam met volkorenpasta en wortel (12 x 200 g)
-- bron: https://www.alsa-nature.nl/p/92130901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', 'wet', '12 x 200 g', null, 'https://www.alsa-nature.nl/p/92130901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslongen, lamspens), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,9% bouillon, 5% volkorennoedels, 4% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:8c1c078fccceb1540b1c64b7506e19a88ba3eebb39424e173a7574b7ebb268cb', null from p;

-- Alsa Nature — SINGLE Lam met aardappel (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92510901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Lam met aardappel', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92510901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Lam (bestaande uit lamshart, lamsvlees, lamslever, lamslong, lamspens), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:f547056025bca7a535e62eb92c287764677bf709d1b78b3b4d3d948672e2a274', null from p;

-- Alsa Nature — Lamsworst met aardappel & wortelen (6 x 200 g)
-- bron: https://www.alsa-nature.nl/p/93410201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Lamsworst met aardappel & wortelen', 'wet', '6 x 200 g', '4050001102643', 'https://www.alsa-nature.nl/p/93410201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '47% lam (bestaande uit lamspens, lamslever, lamslongen, lamsharten), 29,8% bouillon, 15% gevogelte, 4% wortel, 4% aardappelen, 0,1% distelolie, 0,1% mineralen', true, now(), 'sha256:432a61639f031ebd2dd1ec9b2390e4744c8976c6c5b37037e0ab94c8007db559', null from p;

-- Alsa Nature — JUBILEUM Kip & Zalm (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92077301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip & Zalm', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92077301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '52% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken), 28,8% bouillon, 15% zalm, 3% spinazie, 1% mineralen, 0,2% zalmolie', true, now(), 'sha256:6f1eddee8ba63562136d6416b4053537e664e6ec6633940f716361d3465ab54c', null from p;

-- Alsa Nature — SINGLE Rendier met aardappel (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92520501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Rendier met aardappel', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92520501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Rendier, 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:5e00e05c0e60cac39c54f32530c54082eed627c0e03825fae4926eaa3f86ae6f', null from p;

-- Alsa Nature — Classic Rund & Rijst met rode bieten & appel (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92200501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92200501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% Rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 27,9% bouillon, 4% rijst, 2% rode biet, 2% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:2ece60d8d8fad762f709ba0d2e3ee48cae2b942fa53a1845a03266d395bab419', null from p;

-- Alsa Nature — Classic Gevogelte met volkorenrijst en wortel (12 x 200 g)
-- bron: https://www.alsa-nature.nl/p/92100901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', 'wet', '12 x 200 g', null, 'https://www.alsa-nature.nl/p/92100901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Gevogelte (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,9% bouillon, 5% volkorenrijst, 4% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:317891f7d558c88d829209ca23f7b14b9d739fec355d1a86673591d12420cc45', null from p;

-- Alsa Nature — Speciaal Light-menu (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92330601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Light-menu', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92330601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '56% Kip (bestaande uit kippenmagen, kippenlever, kippennekken), 31,6% bouillon, 5% pompoen, 4% rijst, 2% cellulose, 1% mineralen, 0,2% distelolie, 0,2% zalmolie', true, now(), 'sha256:d21ee0ded14bcae787236b3e4a81c600c570ccffdcd0492ae47e996b8f0d58fb', null from p;

-- Alsa Nature — Lamsworst met aardappel & wortelen (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/93410801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Lamsworst met aardappel & wortelen', 'wet', '6 x 800 g', '4050001102704', 'https://www.alsa-nature.nl/p/93410801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '47% lam (bestaande uit lamspens, lamslever, lamslongen, lamsharten), 29,8% bouillon, 15% gevogelte, 4% wortel, 4% aardappelen, 0,1% distelolie, 0,1% mineralen', true, now(), 'sha256:432a61639f031ebd2dd1ec9b2390e4744c8976c6c5b37037e0ab94c8007db559', null from p;

-- Alsa Nature — Gevogelteworst met rijst (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/93440801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Gevogelteworst met rijst', 'wet', '6 x 800 g', '4050001102681', 'https://www.alsa-nature.nl/p/93440801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '54% gevogelte (bestaande uit gevogeltevlees, gevogeltelever, gevogeltemagen, gevogelteharten), 30,8% bouillon, 11% rundvlees, 4% rijst, 0,1% distelolie, 0,1% mineralen', true, now(), 'sha256:e3da2ac23fe95c6342c3e679e0f8fb588780a9940f361d5b92179a79fbe6f509', null from p;

-- Alsa Nature — FOODLOVE Kalkoen met amarant, zoete aardappel & mango (30 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99005700
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', 'raw', '30 x 300 g', null, 'https://www.alsa-nature.nl/p/99005700', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoenmagen, kalkoenhalzen), 27,3% bouillon, 4% amarant, 4% zoete aardappel, 3% mango, 1% mineralen, 0,5% kruiden, 0,2% distelolie', true, now(), 'sha256:eeaccf92f5a2a0cd9a733c5fbb9564a463ed14fda2ae77e652874e9c79fbb54e', null from p;

-- Alsa Nature — FOODLOVE Kalkoen met amarant, zoete aardappel & mango (6 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99005500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', 'raw', '6 x 300 g', '4050001118583', 'https://www.alsa-nature.nl/p/99005500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoenmagen, kalkoenhalzen), 27,3% bouillon, 4% amarant, 4% zoete aardappel, 3% mango, 1% mineralen, 0,5% kruiden, 0,2% distelolie', true, now(), 'sha256:eeaccf92f5a2a0cd9a733c5fbb9564a463ed14fda2ae77e652874e9c79fbb54e', null from p;

-- Alsa Nature — FOODLOVE Kalkoen met amarant, zoete aardappel & mango (120 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99006000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', 'raw', '120 x 300 g', null, 'https://www.alsa-nature.nl/p/99006000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoenmagen, kalkoenhalzen), 27,3% bouillon, 4% amarant, 4% zoete aardappel, 3% mango, 1% mineralen, 0,5% kruiden, 0,2% distelolie', true, now(), 'sha256:eeaccf92f5a2a0cd9a733c5fbb9564a463ed14fda2ae77e652874e9c79fbb54e', null from p;

-- Alsa Nature — FOODLOVE Kalf met quinoa, boerenkool & appel (30 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99006400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', 'raw', '30 x 300 g', null, 'https://www.alsa-nature.nl/p/99006400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kalf (bestaande uit kalfsharten, kalfslongen, kalfspens), 27,3% bouillon, 4% quinoa, 4% boerenkool, 3% appel, 1% mineralen, 0,5% kruiden, 0,2% distelolie', true, now(), 'sha256:d1e5605427439abf5d258930281f91cb1b137012c26abe5a2ea14d29b6544880', null from p;

-- Alsa Nature — FOODLOVE Kalf met quinoa, boerenkool & appel (60 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99006500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', 'raw', '60 x 300 g', null, 'https://www.alsa-nature.nl/p/99006500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kalf (bestaande uit kalfsharten, kalfslongen, kalfspens), 27,3% bouillon, 4% quinoa, 4% boerenkool, 3% appel, 1% mineralen, 0,5% kruiden, 0,2% distelolie', true, now(), 'sha256:d1e5605427439abf5d258930281f91cb1b137012c26abe5a2ea14d29b6544880', null from p;

-- Alsa Nature — CLASSIC Eend & Rund met aardappel (6 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99010401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', 'wet', '6 x 500 g', '4050001123372', 'https://www.alsa-nature.nl/p/99010401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Eend (bestaande uit eendenmaag, eendennek, eendenhart), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% aardappel, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:fa7b052a87dd44e6b4be9a2b412d6e48e846544f045b13405cc01725e0fdd50d', null from p;

-- Alsa Nature — CLASSIC Wildzwijn & Rund met courgette (12 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99011701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', 'wet', '12 x 500 g', null, 'https://www.alsa-nature.nl/p/99011701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Wildzwijn (bestaande uit wildzwijnvlees), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% courgette, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:87e2446ca93cc5c653b46fb9ff3d72ca3cd6dcf950bc0dea7e563e62290079bb', null from p;

-- Alsa Nature — CLASSIC Wildzwijn & Rund met courgette (30 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99011801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', 'wet', '30 x 500 g', null, 'https://www.alsa-nature.nl/p/99011801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Wildzwijn (bestaande uit wildzwijnvlees), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% courgette, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:87e2446ca93cc5c653b46fb9ff3d72ca3cd6dcf950bc0dea7e563e62290079bb', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
