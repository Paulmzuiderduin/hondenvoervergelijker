-- Automatisch overgenomen etiketten, batch 4 van 2026-11-13 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Alsa Nature — JUNIOR Lam met aardappel (400 g)
-- bron: https://www.alsa-nature.nl/p/92028400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Lam met aardappel', 'wet', '400 g', '4050001116435', 'https://www.alsa-nature.nl/p/92028400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslongen, lamspens), 28,8% bouillon, 2% aardappel, 2% erwt, 2% wortel, 1% mineralen, 0,1% levertraan, 0,1% lijnolie', true, now(), 'sha256:544e52e477781db8fb4a900e663baa3f6f6b8f34539e8157fb9e48d8aa3ce197', null from p;

-- Alsa Nature — SINGLE Paard met aardappel (60 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920641
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Paard met aardappel', 'wet', '60 x 400 g', null, 'https://www.alsa-nature.nl/p/920641', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Paard (bestaande uit paardenvlees, paardenhart, paardenlever), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:425d605b0eb5772fa93f681b963c849f368b11355f86314d2a96628ef17c75f0', null from p;

-- Alsa Nature — Speciaal Single-sensitief (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92030400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Single-sensitief', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92030400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Paard (bestaande uit paardenvlees, paardenlever), 7% pompoen, 7% courgette, 7% zoete aardappel, 1% mineralen, 0,5% distelolie, monocalciumfosfaat', true, now(), 'sha256:76fbba52907d123eb5908b7dcfd42651c46f1ec9e1fcc3597dbd8337c547bff6', null from p;

-- Alsa Nature — SINGLE Gans puur (120 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920659
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Gans puur', 'wet', '120 x 400 g', null, 'https://www.alsa-nature.nl/p/920659', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Gans, 28,5% bouillon, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:57e1b17c747342add9952c2fab7b32537999c9f7cdd3de28ad981b0ca43a4bea', null from p;

-- Alsa Nature — SINGLE Kangoeroe met aardappel (120 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920631
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', 'wet', '120 x 800 g', null, 'https://www.alsa-nature.nl/p/920631', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:7e615daef2ffbd8f7b5126ebc8da26c36ce43867c0960b84b111bd172d163855', null from p;

-- Alsa Nature — SINGLE Kangoeroe met aardappel (30 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920624
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', 'wet', '30 x 400 g', null, 'https://www.alsa-nature.nl/p/920624', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:7e615daef2ffbd8f7b5126ebc8da26c36ce43867c0960b84b111bd172d163855', null from p;

-- Alsa Nature — SINGLE Gans puur (30 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920660
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Gans puur', 'wet', '30 x 800 g', null, 'https://www.alsa-nature.nl/p/920660', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Gans, 28,5% bouillon, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:57e1b17c747342add9952c2fab7b32537999c9f7cdd3de28ad981b0ca43a4bea', null from p;

-- Alsa Nature — SINGLE Kalkoen puur (60 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920621
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kalkoen puur', 'wet', '60 x 800 g', null, 'https://www.alsa-nature.nl/p/920621', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoennekken), bouillon 28,5%, mineralen 1%, distelolie 0,5%', true, now(), 'sha256:7c01b711f4038061fb77e21d0d0cc1fa8a01462032c83e0701e566f974e08b91', null from p;

-- Alsa Nature — JUBILEUM Lam (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92076001
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Lam', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92076001', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslong, lamspens), 28,8% bouillon, 5% aardpeer, 2% bonen, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:59fb5938f9e043737b259cc8873248986c1eeb861c882839a1e06c713bb4b309', null from p;

-- Alsa Nature — SINGLE Rendier met aardappel (30 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920652
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Rendier met aardappel', 'wet', '30 x 800 g', null, 'https://www.alsa-nature.nl/p/920652', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Rendier, 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:5e00e05c0e60cac39c54f32530c54082eed627c0e03825fae4926eaa3f86ae6f', null from p;

-- Alsa Nature — JUBILEUM Rund (800 g)
-- bron: https://www.alsa-nature.nl/p/92075301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Rund', 'wet', '800 g', '4050001120197', 'https://www.alsa-nature.nl/p/92075301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% rund (bestaande uit runderhart, rundvlees, runderlever, runderlong, runderpens, rundernieren), 28,8% bouillon, 5% aardappelen, 2% peterselie, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:771bb3f986b2652161946b757159c16f02d5f9a7d5b4c882668b0b05416743b2', null from p;

-- Alsa Nature — Speciaal Sensibel (6 x 200 g)
-- bron: https://www.alsa-nature.nl/p/92170501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Sensibel', 'wet', '6 x 200 g', '4050001116817', 'https://www.alsa-nature.nl/p/92170501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenmagen, kippenlever, kippennekken), 30% bouillon, 8% rijst, 6% appels, 5% wortel, 5% hüttenkäse, 1% mineralen, monocalciumfosfaat', true, now(), 'sha256:7054a6c636ce1f252f50ac80a2d170481c5f99cdf2264b889a71298b9bc8c496', null from p;

-- Alsa Nature — Classic Rund & Rijst met rode bieten & appel (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92200601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92200601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% Rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 27,9% bouillon, 4% rijst, 2% rode biet, 2% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:2ece60d8d8fad762f709ba0d2e3ee48cae2b942fa53a1845a03266d395bab419', null from p;

-- Alsa Nature — JUBILEUM Wild (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92076701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Wild', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92076701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% wild, 28,8% bouillon, 5% zoete aardappel, 2% aalbessen, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:16825c78e6d041a25818c34c7bb15dd92c849f855e9df6316e5f218e5466bf31', null from p;

-- Alsa Nature — SINGLE Gans puur (60 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920661
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Gans puur', 'wet', '60 x 800 g', null, 'https://www.alsa-nature.nl/p/920661', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Gans, 28,5% bouillon, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:57e1b17c747342add9952c2fab7b32537999c9f7cdd3de28ad981b0ca43a4bea', null from p;

-- Alsa Nature — Classic Eend met ham en spinazie ravioli (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92190901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92190901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Eend, 28,9% bouillon, 27% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 5% italiaanse ham, 5% spinazie ravioli, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:408129383c82a50aa59e651e4d27f4aaef9f7f0902bab9e267b8f38bdab2e515', null from p;

-- Alsa Nature — SINGLE Lam met aardappel (400 g)
-- bron: https://www.alsa-nature.nl/p/92510401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Lam met aardappel', 'wet', '400 g', '4050001116602', 'https://www.alsa-nature.nl/p/92510401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Lam (bestaande uit lamshart, lamsvlees, lamslever, lamslong, lamspens), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:f547056025bca7a535e62eb92c287764677bf709d1b78b3b4d3d948672e2a274', null from p;

-- Alsa Nature — SINGLE Gans puur (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92260601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Gans puur', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92260601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Gans, 28,5% bouillon, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:57e1b17c747342add9952c2fab7b32537999c9f7cdd3de28ad981b0ca43a4bea', null from p;

-- Alsa Nature — Classic Spiervlees met aardappel en wortel (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92340901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92340901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Runderspiervlees, 30% rund (bestaande uit runderhart, runderlever, runderlongen, runderpens), 25,9% bouillon, 5% aardappel, 3% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:c7880603df2be98c9434a20d8b02b9f7d58c788a8cef3b0d8069e6934b4e2b04', null from p;

-- Alsa Nature — SINGLE Lam met aardappel (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92510801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Lam met aardappel', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92510801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Lam (bestaande uit lamshart, lamsvlees, lamslever, lamslong, lamspens), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:f547056025bca7a535e62eb92c287764677bf709d1b78b3b4d3d948672e2a274', null from p;

-- Alsa Nature — SINGLE Rendier met aardappel (800 g)
-- bron: https://www.alsa-nature.nl/p/92520701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Rendier met aardappel', 'wet', '800 g', '4050001116633', 'https://www.alsa-nature.nl/p/92520701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Rendier, 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:5e00e05c0e60cac39c54f32530c54082eed627c0e03825fae4926eaa3f86ae6f', null from p;

-- Alsa Nature — SINGLE Rendier met aardappel (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92520601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Rendier met aardappel', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92520601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Rendier, 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:5e00e05c0e60cac39c54f32530c54082eed627c0e03825fae4926eaa3f86ae6f', null from p;

-- Alsa Nature — Senior Kip & Kalkoen met aardappel en peterselie (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92620601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92620601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% kalkoen (bestaande uit kalkoenenharten, kalkoenvlees, kalkoenlever, kalkoenennekken), 28,4% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie, 0,1% peterselie', true, now(), 'sha256:fb266ac396bdcac4e90adcdcc86e428e3f6fa442bc7cf7e6bca111537392ce87', null from p;

-- Alsa Nature — Senior Kip & Kalkoen met aardappel en peterselie (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92620901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92620901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% kalkoen (bestaande uit kalkoenenharten, kalkoenvlees, kalkoenlever, kalkoenennekken), 28,4% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie, 0,1% peterselie', true, now(), 'sha256:fb266ac396bdcac4e90adcdcc86e428e3f6fa442bc7cf7e6bca111537392ce87', null from p;

-- Alsa Nature — FOODLOVE Kip met quinoa, pompoen & broccoli (12 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99007000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', 'raw', '12 x 300 g', null, 'https://www.alsa-nature.nl/p/99007000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kip (bestaande uit kippenharten, kippenvlees, kippenlevers, kippenmagen, kippenhalzen), 27,3% bouillon, 4% quinoa, 4% pompoen, 3% broccoli, 1% mineralen, 0,5% kruiden, 0,2% lijnzaadolie', true, now(), 'sha256:ed4d8e19f7eec9bc4131474c422d0501a4d4d95d941b86413b3a8084f2e37e83', null from p;

-- Alsa Nature — FOODLOVE Lam met amarant, aardpeer & vijg (90 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99004500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', 'raw', '90 x 300 g', null, 'https://www.alsa-nature.nl/p/99004500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% lam (bestaande uit lamsharten, lamsvlees, lamslevers, lamslongen, lamspensen), 27,3% bouillon, 4% amarant, 4% vijgen, 3% aardperen, 1% mineralen, 0,5% kruiden, 0,2% zonnebloemolie', true, now(), 'sha256:19f896126cedb83b9ad4ca77ca311367b519546aa1163f8bbe869066d18d01db', null from p;

-- Alsa Nature — FOODLOVE Kip met quinoa, pompoen & broccoli (60 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99007200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', 'raw', '60 x 300 g', null, 'https://www.alsa-nature.nl/p/99007200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kip (bestaande uit kippenharten, kippenvlees, kippenlevers, kippenmagen, kippenhalzen), 27,3% bouillon, 4% quinoa, 4% pompoen, 3% broccoli, 1% mineralen, 0,5% kruiden, 0,2% lijnzaadolie', true, now(), 'sha256:ed4d8e19f7eec9bc4131474c422d0501a4d4d95d941b86413b3a8084f2e37e83', null from p;

-- Alsa Nature — FOODLOVE Kip & Forel met quinoa, pastinaak & papaja (6 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99007600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', 'raw', '6 x 300 g', '4050001118613', 'https://www.alsa-nature.nl/p/99007600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '40% kip (bestaande uit kippenharten, kippenvlees, kippenlevers, kippenmagen, kippenhalzen), 27,3% bouillon, 20% forel, 4% quinoa, 4% pastinaak, 3% papaya, 1% mineralen, 0,5% kruiden, 0,2% lijnzaadolie', true, now(), 'sha256:77ef1a615fd4a37a4093a031d6776961b79ac44300f21c9fe5ef4a0a81f4921a', null from p;

-- Alsa Nature — FOODLOVE Kip & Forel met quinoa, pastinaak & papaja (60 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99007900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', 'raw', '60 x 300 g', null, 'https://www.alsa-nature.nl/p/99007900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '40% kip (bestaande uit kippenharten, kippenvlees, kippenlevers, kippenmagen, kippenhalzen), 27,3% bouillon, 20% forel, 4% quinoa, 4% pastinaak, 3% papaya, 1% mineralen, 0,5% kruiden, 0,2% lijnzaadolie', true, now(), 'sha256:77ef1a615fd4a37a4093a031d6776961b79ac44300f21c9fe5ef4a0a81f4921a', null from p;

-- Alsa Nature — CLASSIC Kalkoen & Rund met wortel (12 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99011101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', 'wet', '12 x 500 g', null, 'https://www.alsa-nature.nl/p/99011101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kalkoen (bestaande uit kalkoenhart, kalkoenvlees, kalkoenmaag, kalkoennek), 30% rund (bestaande uit runderhart, rundervlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% wortelen, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:f044e9c2a74016429cb28b9fefa97c318e87e6cfbccb2fac8dd356bf29dc19e6', null from p;

-- Alsa Nature — CLASSIC Kalkoen & Rund met wortel (6 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99011001
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', 'wet', '6 x 500 g', '4050001123389', 'https://www.alsa-nature.nl/p/99011001', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kalkoen (bestaande uit kalkoenhart, kalkoenvlees, kalkoenmaag, kalkoennek), 30% rund (bestaande uit runderhart, rundervlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% wortelen, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:f044e9c2a74016429cb28b9fefa97c318e87e6cfbccb2fac8dd356bf29dc19e6', null from p;

-- Alsa Nature — CLASSIC Kalkoen & Rund met wortel (90 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99011401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', 'wet', '90 x 500 g', null, 'https://www.alsa-nature.nl/p/99011401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kalkoen (bestaande uit kalkoenhart, kalkoenvlees, kalkoenmaag, kalkoennek), 30% rund (bestaande uit runderhart, rundervlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% wortelen, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:f044e9c2a74016429cb28b9fefa97c318e87e6cfbccb2fac8dd356bf29dc19e6', null from p;

-- Alsa Nature — Classic Kip gerecht met Rijst, Peer & Venkel (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92002101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92002101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 25,9% bouillon, 5% rijst, 2% peer, 1% venkel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:6fbe7005183710e46a8664c247fa4ae1972c98e8bc2718f5973f2048dae6e474', null from p;

-- Alsa Nature — CLASSIC Kalkoen & Rund met wortel (60 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99011301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', 'wet', '60 x 500 g', null, 'https://www.alsa-nature.nl/p/99011301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kalkoen (bestaande uit kalkoenhart, kalkoenvlees, kalkoenmaag, kalkoennek), 30% rund (bestaande uit runderhart, rundervlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% wortelen, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:f044e9c2a74016429cb28b9fefa97c318e87e6cfbccb2fac8dd356bf29dc19e6', null from p;

-- Alsa Nature — SINGLE Kangoeroe met aardappel (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92004601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92004601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:7e615daef2ffbd8f7b5126ebc8da26c36ce43867c0960b84b111bd172d163855', null from p;

-- Alsa Nature — CLASSIC Runderharten & Kip met pastinaak (30 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99013001
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', 'wet', '30 x 500 g', null, 'https://www.alsa-nature.nl/p/99013001', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Runderharten, 30% kip (bestaande uit kippenhart, kippenvlees, kippenlever, kippenmaag, kippennekken), 28,8% bouillon, 5% pastinaak, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:63f11bbfbe5f4514ab8298a2a2ac3f68106aea386f1a2a2d19a131382244b335', null from p;

-- Alsa Nature — SINGLE Kangoeroe met aardappel (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92004501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92004501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:7e615daef2ffbd8f7b5126ebc8da26c36ce43867c0960b84b111bd172d163855', null from p;

-- Alsa Nature — Struisvogel Enkel-eiwit (1,5 kg)
-- bron: https://www.alsa-nature.nl/p/91350101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Struisvogel Enkel-eiwit', 'kibble', '1,5 kg', '4050001101844', 'https://www.alsa-nature.nl/p/91350101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, struisvogel 24%, bietenvezels, oliën en vetten, mineralen, natriumchloride', true, now(), 'sha256:c0b93cbdcfb3f92736dcd44f7671a93a2656e29da9186edf81c533b0771e747c', null from p;

-- Alsa Nature — SINGLE Kangoeroe met aardappel (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92004801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92004801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:7e615daef2ffbd8f7b5126ebc8da26c36ce43867c0960b84b111bd172d163855', null from p;

-- Alsa Nature — Classic Struisvogel met aardappelen en broccoli (400 g)
-- bron: https://www.alsa-nature.nl/p/92013700
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', 'wet', '400 g', '4050001116381', 'https://www.alsa-nature.nl/p/92013700', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 25,9% bouillon, 20% struisvogel, 5% aardappel, 3% broccoli, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:aa28d20a59b1235e7fd62b9afbe0c399166fa3d4c12f60049da51b57aeb5677a', null from p;

-- Alsa Nature — Senior Wild & Konijn met aardappel & paardebloem (400 g)
-- bron: https://www.alsa-nature.nl/p/92005001
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', 'wet', '400 g', '4050001116541', 'https://www.alsa-nature.nl/p/92005001', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% Wild (bestaande uit hart, vlees, lever, longen en pens van wild), 30,3% bouillon, 14% konijn, 4% aardappel, 1% mineralen, 0,5% teunisbloemolie, 0,2% paardenbloem', true, now(), 'sha256:633e97168ca30226a051589ab231d99701c1976f762d60122c82efdee0a80734', null from p;

-- Alsa Nature — Classic Struisvogel met aardappelen en broccoli (6 x 200 g)
-- bron: https://www.alsa-nature.nl/p/92014400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', 'wet', '6 x 200 g', null, 'https://www.alsa-nature.nl/p/92014400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 25,9% bouillon, 20% struisvogel, 5% aardappel, 3% broccoli, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:aa28d20a59b1235e7fd62b9afbe0c399166fa3d4c12f60049da51b57aeb5677a', null from p;

-- Alsa Nature — Senior Wild & Konijn met aardappel & paardebloem (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92005401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92005401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% Wild (bestaande uit hart, vlees, lever, longen en pens van wild), 30,3% bouillon, 14% konijn, 4% aardappel, 1% mineralen, 0,5% teunisbloemolie, 0,2% paardenbloem', true, now(), 'sha256:633e97168ca30226a051589ab231d99701c1976f762d60122c82efdee0a80734', null from p;

-- Alsa Nature — Classic Kwartel met aardappel en koolrabi (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92013600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92013600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% Rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26% bouillon, 15% kwartel, 5% aardappel, 3% koolrabi, 1% mineralen', true, now(), 'sha256:b34177852786f441a0f1805bf3ea24ab7230c5ecbe9e3826c17a3685bcf72f31', null from p;

-- Alsa Nature — Classic Struisvogel met aardappelen en broccoli (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92014100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92014100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 25,9% bouillon, 20% struisvogel, 5% aardappel, 3% broccoli, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:aa28d20a59b1235e7fd62b9afbe0c399166fa3d4c12f60049da51b57aeb5677a', null from p;

-- Alsa Nature — BIO Kip met rijst en jonge groenten (400 g)
-- bron: https://www.alsa-nature.nl/p/920214
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'BIO Kip met rijst en jonge groenten', 'wet', '400 g', '4050001116497', 'https://www.alsa-nature.nl/p/920214', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip*, 30% rund*, 26% bouillon, 4% rijst*, 2% wortelen*, 2% erwten*, 1% mineralen. *Uit gecontroleerde biologische aanbouw/houderij', true, now(), 'sha256:fa42159c3611f40944e1a91452a7ee29b3170fe9697afbc27d9a2c10598619ba', null from p;

-- Alsa Nature — SINGLE Paard met aardappel (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92019300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Paard met aardappel', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92019300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Paard (bestaande uit paardenvlees, paardenhart, paardenlever), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:425d605b0eb5772fa93f681b963c849f368b11355f86314d2a96628ef17c75f0', null from p;

-- Alsa Nature — BIO Kip met rijst en jonge groenten (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92021500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'BIO Kip met rijst en jonge groenten', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92021500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip*, 30% rund*, 26% bouillon, 4% rijst*, 2% wortelen*, 2% erwten*, 1% mineralen. *Uit gecontroleerde biologische aanbouw/houderij', true, now(), 'sha256:fa42159c3611f40944e1a91452a7ee29b3170fe9697afbc27d9a2c10598619ba', null from p;

-- Alsa Nature — BIO Kip met rijst en jonge groenten (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92021600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'BIO Kip met rijst en jonge groenten', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92021600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip*, 30% rund*, 26% bouillon, 4% rijst*, 2% wortelen*, 2% erwten*, 1% mineralen. *Uit gecontroleerde biologische aanbouw/houderij', true, now(), 'sha256:fa42159c3611f40944e1a91452a7ee29b3170fe9697afbc27d9a2c10598619ba', null from p;

-- Alsa Nature — BIO Rund met aardappel en rode bieten (400 g)
-- bron: https://www.alsa-nature.nl/p/92022000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'BIO Rund met aardappel en rode bieten', 'wet', '400 g', '4050001116510', 'https://www.alsa-nature.nl/p/92022000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '65% Rund*, 28% bouillon*, 4% aardappel*, 2% rode bieten*, 1% mineralen. *Uit gecontroleerde biologische aanbouw/houderij', true, now(), 'sha256:3bd8db67cabb46bfb5b499db98d7e4513b052d271266932b9c896a3451b99540', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
