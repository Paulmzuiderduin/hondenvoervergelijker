-- Automatisch overgenomen etiketten, batch 2 van 2026-11-13 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Alsa Nature — JUBILEUM Rund (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92075401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Rund', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92075401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% rund (bestaande uit runderhart, rundvlees, runderlever, runderlong, runderpens, rundernieren), 28,8% bouillon, 5% aardappelen, 2% peterselie, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:771bb3f986b2652161946b757159c16f02d5f9a7d5b4c882668b0b05416743b2', null from p;

-- Alsa Nature — JUBILEUM Kip & Zalm (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92076901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip & Zalm', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92076901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '52% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken), 28,8% bouillon, 15% zalm, 3% spinazie, 1% mineralen, 0,2% zalmolie', true, now(), 'sha256:6f1eddee8ba63562136d6416b4053537e664e6ec6633940f716361d3465ab54c', null from p;

-- Alsa Nature — SINGLE Gans puur (90 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920662
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Gans puur', 'wet', '90 x 800 g', null, 'https://www.alsa-nature.nl/p/920662', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Gans, 28,5% bouillon, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:57e1b17c747342add9952c2fab7b32537999c9f7cdd3de28ad981b0ca43a4bea', null from p;

-- Alsa Nature — JUBILEUM Kip & Zalm (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92077201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip & Zalm', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92077201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '52% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken), 28,8% bouillon, 15% zalm, 3% spinazie, 1% mineralen, 0,2% zalmolie', true, now(), 'sha256:6f1eddee8ba63562136d6416b4053537e664e6ec6633940f716361d3465ab54c', null from p;

-- Alsa Nature — SINGLE Geit met pastinaak (60 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920669
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Geit met pastinaak', 'wet', '60 x 800 g', null, 'https://www.alsa-nature.nl/p/920669', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Geit (bestaande uit geitenspiervlees, geitenhart, geitenlever, geitenlong), 29,5% bouillon, 5% pastinaak, 1% mineralen, 0,5% lijnolie.', true, now(), 'sha256:e407571587adef11047ea053b3136f6fea0fdfcf7265b73108285aea3ba5fd67', null from p;

-- Alsa Nature — Classic Lam met volkorenpasta en wortel (6 x 200 g)
-- bron: https://www.alsa-nature.nl/p/92130801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', 'wet', '6 x 200 g', null, 'https://www.alsa-nature.nl/p/92130801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslongen, lamspens), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,9% bouillon, 5% volkorennoedels, 4% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:8c1c078fccceb1540b1c64b7506e19a88ba3eebb39424e173a7574b7ebb268cb', null from p;

-- Alsa Nature — JUBILEUM Wild (400 g)
-- bron: https://www.alsa-nature.nl/p/92076201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Wild', 'wet', '400 g', '4050001120203', 'https://www.alsa-nature.nl/p/92076201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% wild, 28,8% bouillon, 5% zoete aardappel, 2% aalbessen, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:16825c78e6d041a25818c34c7bb15dd92c849f855e9df6316e5f218e5466bf31', null from p;

-- Alsa Nature — Classic Lam met volkorenpasta en wortel (200 g)
-- bron: https://www.alsa-nature.nl/p/92130701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', 'wet', '200 g', '4050001116183', 'https://www.alsa-nature.nl/p/92130701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslongen, lamspens), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,9% bouillon, 5% volkorennoedels, 4% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:8c1c078fccceb1540b1c64b7506e19a88ba3eebb39424e173a7574b7ebb268cb', null from p;

-- Alsa Nature — JUBILEUM Wild (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92076401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Wild', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92076401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% wild, 28,8% bouillon, 5% zoete aardappel, 2% aalbessen, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:16825c78e6d041a25818c34c7bb15dd92c849f855e9df6316e5f218e5466bf31', null from p;

-- Alsa Nature — SINGLE Gans puur (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92260501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Gans puur', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92260501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Gans, 28,5% bouillon, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:57e1b17c747342add9952c2fab7b32537999c9f7cdd3de28ad981b0ca43a4bea', null from p;

-- Alsa Nature — Classic Rund & Rijst met rode bieten & appel (400 g)
-- bron: https://www.alsa-nature.nl/p/92200101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', 'wet', '400 g', '4050001116169', 'https://www.alsa-nature.nl/p/92200101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% Rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 27,9% bouillon, 4% rijst, 2% rode biet, 2% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:2ece60d8d8fad762f709ba0d2e3ee48cae2b942fa53a1845a03266d395bab419', null from p;

-- Alsa Nature — Classic Eend met ham en spinazie ravioli (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92190501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92190501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Eend, 28,9% bouillon, 27% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 5% italiaanse ham, 5% spinazie ravioli, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:408129383c82a50aa59e651e4d27f4aaef9f7f0902bab9e267b8f38bdab2e515', null from p;

-- Alsa Nature — SINGLE Gans puur (400 g)
-- bron: https://www.alsa-nature.nl/p/92260401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Gans puur', 'wet', '400 g', '4050001116640', 'https://www.alsa-nature.nl/p/92260401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Gans, 28,5% bouillon, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:57e1b17c747342add9952c2fab7b32537999c9f7cdd3de28ad981b0ca43a4bea', null from p;

-- Alsa Nature — Classic Rund & Rijst met rode bieten & appel (800 g)
-- bron: https://www.alsa-nature.nl/p/92200401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', 'wet', '800 g', '4050001116176', 'https://www.alsa-nature.nl/p/92200401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% Rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 27,9% bouillon, 4% rijst, 2% rode biet, 2% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:2ece60d8d8fad762f709ba0d2e3ee48cae2b942fa53a1845a03266d395bab419', null from p;

-- Alsa Nature — Classic Spiervlees met aardappel en wortel (800 g)
-- bron: https://www.alsa-nature.nl/p/92340701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', 'wet', '800 g', '4050001116251', 'https://www.alsa-nature.nl/p/92340701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Runderspiervlees, 30% rund (bestaande uit runderhart, runderlever, runderlongen, runderpens), 25,9% bouillon, 5% aardappel, 3% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:c7880603df2be98c9434a20d8b02b9f7d58c788a8cef3b0d8069e6934b4e2b04', null from p;

-- Alsa Nature — SINGLE Lam met aardappel (800 g)
-- bron: https://www.alsa-nature.nl/p/92510701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Lam met aardappel', 'wet', '800 g', '4050001116619', 'https://www.alsa-nature.nl/p/92510701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Lam (bestaande uit lamshart, lamsvlees, lamslever, lamslong, lamspens), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:f547056025bca7a535e62eb92c287764677bf709d1b78b3b4d3d948672e2a274', null from p;

-- Alsa Nature — Classic Kwartel met aardappel en koolrabi (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92013200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92013200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% Rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26% bouillon, 15% kwartel, 5% aardappel, 3% koolrabi, 1% mineralen', true, now(), 'sha256:b34177852786f441a0f1805bf3ea24ab7230c5ecbe9e3826c17a3685bcf72f31', null from p;

-- Alsa Nature — Senior Wild & Konijn met aardappel & paardebloem (800 g)
-- bron: https://www.alsa-nature.nl/p/92005301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', 'wet', '800 g', '4050001116558', 'https://www.alsa-nature.nl/p/92005301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% Wild (bestaande uit hart, vlees, lever, longen en pens van wild), 30,3% bouillon, 14% konijn, 4% aardappel, 1% mineralen, 0,5% teunisbloemolie, 0,2% paardenbloem', true, now(), 'sha256:633e97168ca30226a051589ab231d99701c1976f762d60122c82efdee0a80734', null from p;

-- Alsa Nature — Classic Kwartel met aardappel en koolrabi (800 g)
-- bron: https://www.alsa-nature.nl/p/92013400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', 'wet', '800 g', '4050001116367', 'https://www.alsa-nature.nl/p/92013400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% Rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26% bouillon, 15% kwartel, 5% aardappel, 3% koolrabi, 1% mineralen', true, now(), 'sha256:b34177852786f441a0f1805bf3ea24ab7230c5ecbe9e3826c17a3685bcf72f31', null from p;

-- Alsa Nature — Classic Wild-Ragout met rode bieten, aardappel en appel (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92006301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92006301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Wild (bestaande uit hart, vlees, lever, longen en pens van wild), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 23,9% bouillon, 5% aardappel, 3% rode biet, 2% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:1fc11a3d2946c1847e5fce4c494744b02a219cfb990b5310acdcd1ba9be3aa7c', null from p;

-- Alsa Nature — Classic Struisvogel met aardappelen en broccoli (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92014200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92014200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 25,9% bouillon, 20% struisvogel, 5% aardappel, 3% broccoli, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:aa28d20a59b1235e7fd62b9afbe0c399166fa3d4c12f60049da51b57aeb5677a', null from p;

-- Alsa Nature — Classic Struisvogel met aardappelen en broccoli (12 x 200 g)
-- bron: https://www.alsa-nature.nl/p/92014500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', 'wet', '12 x 200 g', null, 'https://www.alsa-nature.nl/p/92014500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 25,9% bouillon, 20% struisvogel, 5% aardappel, 3% broccoli, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:aa28d20a59b1235e7fd62b9afbe0c399166fa3d4c12f60049da51b57aeb5677a', null from p;

-- Alsa Nature — Classic Kalkoen met zoete aardappel, peer & paardebloem (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92027300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92027300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '31% Kalkoen (bestaande uit kalkoenenharten, kalkoenvlees, kalkoenlever, kalkoenennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,9% bouillon, 3% zoete aardappel, 3% peer, 1% paardenbloem, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:25559e76815297ca19ceb3b9957f3b08a32043e417960a8285520bc27b9a93d0', null from p;

-- Alsa Nature — Classic Kalkoen met zoete aardappel, peer & paardebloem (800 g)
-- bron: https://www.alsa-nature.nl/p/92027500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', 'wet', '800 g', '4050001116305', 'https://www.alsa-nature.nl/p/92027500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '31% Kalkoen (bestaande uit kalkoenenharten, kalkoenvlees, kalkoenlever, kalkoenennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,9% bouillon, 3% zoete aardappel, 3% peer, 1% paardenbloem, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:25559e76815297ca19ceb3b9957f3b08a32043e417960a8285520bc27b9a93d0', null from p;

-- Alsa Nature — Classic Struisvogel met aardappelen en broccoli (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92013900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92013900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 25,9% bouillon, 20% struisvogel, 5% aardappel, 3% broccoli, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:aa28d20a59b1235e7fd62b9afbe0c399166fa3d4c12f60049da51b57aeb5677a', null from p;

-- Alsa Nature — Classic Hert met zoete aardappel en kastanjes (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92007601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92007601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Hert, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 27,9% bouillon, 5% zoete aardappel, 1% kastanje, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:f6769b7bfa9d15eac38dc1a78c0c9acb6b0c81a72d8643a3fd426c161d0da13c', null from p;

-- Alsa Nature — Classic Struisvogel met aardappelen en broccoli (800 g)
-- bron: https://www.alsa-nature.nl/p/92014000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', 'wet', '800 g', '4050001116398', 'https://www.alsa-nature.nl/p/92014000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 25,9% bouillon, 20% struisvogel, 5% aardappel, 3% broccoli, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:aa28d20a59b1235e7fd62b9afbe0c399166fa3d4c12f60049da51b57aeb5677a', null from p;

-- Alsa Nature — SINGLE Kalkoen puur (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92028000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kalkoen puur', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92028000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoennekken), bouillon 28,5%, mineralen 1%, distelolie 0,5%', true, now(), 'sha256:7c01b711f4038061fb77e21d0d0cc1fa8a01462032c83e0701e566f974e08b91', null from p;

-- Alsa Nature — SINGLE Paard met aardappel (400 g)
-- bron: https://www.alsa-nature.nl/p/92018900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Paard met aardappel', 'wet', '400 g', '4050001116701', 'https://www.alsa-nature.nl/p/92018900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Paard (bestaande uit paardenvlees, paardenhart, paardenlever), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:425d605b0eb5772fa93f681b963c849f368b11355f86314d2a96628ef17c75f0', null from p;

-- Alsa Nature — Classic Struisvogel met aardappelen en broccoli (200 g)
-- bron: https://www.alsa-nature.nl/p/92014300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', 'wet', '200 g', '4050001116374', 'https://www.alsa-nature.nl/p/92014300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 25,9% bouillon, 20% struisvogel, 5% aardappel, 3% broccoli, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:aa28d20a59b1235e7fd62b9afbe0c399166fa3d4c12f60049da51b57aeb5677a', null from p;

-- Alsa Nature — JUNIOR Kip met pastinaak & appel (400 g)
-- bron: https://www.alsa-nature.nl/p/92028700
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Kip met pastinaak & appel', 'wet', '400 g', '4050001116442', 'https://www.alsa-nature.nl/p/92028700', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 28,8% bouillon, 3% pastinaak, 3% appel, 1% mineralen, 0,1% levertraan, 0,1% lijnolie', true, now(), 'sha256:62136434906283004c379230d0485b915532284da9ec6eb5a09f3b267076a2ff', null from p;

-- Alsa Nature — JUNIOR Eend met abrikoos (400 g)
-- bron: https://www.alsa-nature.nl/p/92029600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Eend met abrikoos', 'wet', '400 g', '4050001116473', 'https://www.alsa-nature.nl/p/92029600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '30% Eend, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,8% bouillon, 3% pompoen, 3% venkel, 3% abrikoos, 1% mineralen, 0,1% levertraan, 0,1% lijnolie', true, now(), 'sha256:571bc9e84fdbef76c4f7d66f241b80b1fd25f45a410a2ce91e0e1ea089343b96', null from p;

-- Alsa Nature — Senior Lam met pastinaak, pompoen & abrikoos (400 g)
-- bron: https://www.alsa-nature.nl/p/92041300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', 'wet', '400 g', '4050001116565', 'https://www.alsa-nature.nl/p/92041300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '61% Lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslongen, lamspens), 29,5% bouillon, 4% pastinaak, 2% pompoen, 2% abrikoos, 1% mineralen, 0,5% distelolie.', true, now(), 'sha256:d80a3a081cdd98e3264cb1e8c715c03e858292e88316da2f0ab0c9dd161ef2b6', null from p;

-- Alsa Nature — SINGLE Geit met pastinaak (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920432
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Geit met pastinaak', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/920432', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Geit (bestaande uit geitenspiervlees, geitenhart, geitenlever, geitenlong), 29,5% bouillon, 5% pastinaak, 1% mineralen, 0,5% lijnolie.', true, now(), 'sha256:e407571587adef11047ea053b3136f6fea0fdfcf7265b73108285aea3ba5fd67', null from p;

-- Alsa Nature — INSECTUM Insecten met wortel, zoete aardappel & courgette (12 x 750 g)
-- bron: https://www.alsa-nature.nl/p/920523
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', 'wet', '12 x 750 g', null, 'https://www.alsa-nature.nl/p/920523', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% insecten (zwarte soldaatvlieg), 36% bouillon, 4% wortel, 4% courgette, 4% zoete aardappelen, 1% mineralen, 0,5% kruiden, 0,5% distelolie', true, now(), 'sha256:e7bc1cee98eca5f9ac3ec03e565c0c3237a9bd60df21f4e287e3bd24eff861bc', null from p;

-- Alsa Nature — SIMPLE Kangoeroe puur (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920545
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Kangoeroe puur', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/920545', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 28% bouillon', true, now(), 'sha256:53cd16766f13dbb6204f668f2fd590887c22f6fac057fd66a54680aea1d2ebdf', null from p;

-- Alsa Nature — SIMPLE Rund puur (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920548
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Rund puur', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/920548', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Rund (bestaande uit runderharten, rundvlees, runderlever, runderlong, runderpens), 28% bouillon', true, now(), 'sha256:2fecdfcbc9a9fc5f548cadf9a0eb7ad396561303982f4d1edfa8f7cb6e839a59', null from p;

-- Alsa Nature — SIMPLE Rund puur (800 g)
-- bron: https://www.alsa-nature.nl/p/920550
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Rund puur', 'wet', '800 g', '4050001115285', 'https://www.alsa-nature.nl/p/920550', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Rund (bestaande uit runderharten, rundvlees, runderlever, runderlong, runderpens), 28% bouillon', true, now(), 'sha256:2fecdfcbc9a9fc5f548cadf9a0eb7ad396561303982f4d1edfa8f7cb6e839a59', null from p;

-- Alsa Nature — SIMPLE Rund puur (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920549
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Rund puur', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/920549', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Rund (bestaande uit runderharten, rundvlees, runderlever, runderlong, runderpens), 28% bouillon', true, now(), 'sha256:2fecdfcbc9a9fc5f548cadf9a0eb7ad396561303982f4d1edfa8f7cb6e839a59', null from p;

-- Alsa Nature — INSECTUM Insecten met wortel, zoete aardappel & courgette (6 x 750 g)
-- bron: https://www.alsa-nature.nl/p/920522
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', 'wet', '6 x 750 g', null, 'https://www.alsa-nature.nl/p/920522', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% insecten (zwarte soldaatvlieg), 36% bouillon, 4% wortel, 4% courgette, 4% zoete aardappelen, 1% mineralen, 0,5% kruiden, 0,5% distelolie', true, now(), 'sha256:e7bc1cee98eca5f9ac3ec03e565c0c3237a9bd60df21f4e287e3bd24eff861bc', null from p;

-- Alsa Nature — SIMPLE Rund puur (400 g)
-- bron: https://www.alsa-nature.nl/p/920547
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Rund puur', 'wet', '400 g', '4050001115254', 'https://www.alsa-nature.nl/p/920547', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Rund (bestaande uit runderharten, rundvlees, runderlever, runderlong, runderpens), 28% bouillon', true, now(), 'sha256:2fecdfcbc9a9fc5f548cadf9a0eb7ad396561303982f4d1edfa8f7cb6e839a59', null from p;

-- Alsa Nature — SIMPLE Wild puur (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920564
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Wild puur', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/920564', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Wild (bestaande uit hart, spiervlees, lever, long, pens), 28% bouillon', true, now(), 'sha256:0e382179b6b3239616c4abf7c43ba0cde9e9ba914b3c13319246831c3cb38c2c', null from p;

-- Alsa Nature — SIMPLE Wild puur (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920563
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Wild puur', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/920563', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Wild (bestaande uit hart, spiervlees, lever, long, pens), 28% bouillon', true, now(), 'sha256:0e382179b6b3239616c4abf7c43ba0cde9e9ba914b3c13319246831c3cb38c2c', null from p;

-- Alsa Nature — SIMPLE Rund puur (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920551
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Rund puur', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/920551', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Rund (bestaande uit runderharten, rundvlees, runderlever, runderlong, runderpens), 28% bouillon', true, now(), 'sha256:2fecdfcbc9a9fc5f548cadf9a0eb7ad396561303982f4d1edfa8f7cb6e839a59', null from p;

-- Alsa Nature — SIMPLE Rund puur (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920552
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Rund puur', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/920552', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Rund (bestaande uit runderharten, rundvlees, runderlever, runderlong, runderpens), 28% bouillon', true, now(), 'sha256:2fecdfcbc9a9fc5f548cadf9a0eb7ad396561303982f4d1edfa8f7cb6e839a59', null from p;

-- Alsa Nature — SINGLE Kangoeroe met aardappel (30 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920628
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', 'wet', '30 x 800 g', null, 'https://www.alsa-nature.nl/p/920628', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:7e615daef2ffbd8f7b5126ebc8da26c36ce43867c0960b84b111bd172d163855', null from p;

-- Alsa Nature — SINGLE Kangoeroe met aardappel (60 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920629
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', 'wet', '60 x 800 g', null, 'https://www.alsa-nature.nl/p/920629', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:7e615daef2ffbd8f7b5126ebc8da26c36ce43867c0960b84b111bd172d163855', null from p;

-- Alsa Nature — JUBILEUM Kip (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92074801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92074801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken, kippenvet), 28,8% bouillon, 4% broccoli, 3% perzik, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:6558b32f439496c8c3c9d7e6ff5c5f1e5bdad3f7e661403e9d177004e336cd2b', null from p;

-- Alsa Nature — JUBILEUM Rund (400 g)
-- bron: https://www.alsa-nature.nl/p/92075001
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Rund', 'wet', '400 g', '4050001120180', 'https://www.alsa-nature.nl/p/92075001', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% rund (bestaande uit runderhart, rundvlees, runderlever, runderlong, runderpens, rundernieren), 28,8% bouillon, 5% aardappelen, 2% peterselie, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:771bb3f986b2652161946b757159c16f02d5f9a7d5b4c882668b0b05416743b2', null from p;

-- Alsa Nature — JUBILEUM Kip & Zalm (400 g)
-- bron: https://www.alsa-nature.nl/p/92076801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip & Zalm', 'wet', '400 g', '4050001120104', 'https://www.alsa-nature.nl/p/92076801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '52% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken), 28,8% bouillon, 15% zalm, 3% spinazie, 1% mineralen, 0,2% zalmolie', true, now(), 'sha256:6f1eddee8ba63562136d6416b4053537e664e6ec6633940f716361d3465ab54c', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
