-- Automatisch overgenomen etiketten, batch 5 van 2026-11-13 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Alsa Nature — VEGGIE Groentemaaltijd met Hüttenkäse, fruit en kruiden (12 x 375 g)
-- bron: https://www.alsa-nature.nl/p/92036900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'VEGGIE Groentemaaltijd met Hüttenkäse, fruit en kruiden', 'wet', '12 x 375 g', null, 'https://www.alsa-nature.nl/p/92036900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33,78% Bouillon, 10% hüttenkäse, 8% heeleipoeder, 6% pastinaak, 6% pompoen, 6% wortelen, 5% amarant vlokken, 5% perzik, 4% lijnzaadolie, 3% courgette, 3% erwten, 3% boekweitvlokken, 2,12 mineralen, 2% mango, 2% duindoorn, 1% biergist, 0,1%, kruiden', true, now(), 'sha256:6f9276676f45f2d19fa9eeb8eb158e33965b9843fe3333a3b75476352c571c4f', null from p;

-- Alsa Nature — Speciaal Sensibel (60 x 200 g)
-- bron: https://www.alsa-nature.nl/p/92040300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Sensibel', 'wet', '60 x 200 g', null, 'https://www.alsa-nature.nl/p/92040300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenmagen, kippenlever, kippennekken), 30% bouillon, 8% rijst, 6% appels, 5% wortel, 5% hüttenkäse, 1% mineralen, monocalciumfosfaat', true, now(), 'sha256:7054a6c636ce1f252f50ac80a2d170481c5f99cdf2264b889a71298b9bc8c496', null from p;

-- Alsa Nature — VEGGIE Groente-bijlage met fruit (375 g)
-- bron: https://www.alsa-nature.nl/p/92037000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'VEGGIE Groente-bijlage met fruit', 'wet', '375 g', '4050001116152', 'https://www.alsa-nature.nl/p/92037000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '39,8%, Bouillon, 12% wortelen, 10% pompoen, 7% courgette, 7% venkel, 4% pastinaak, 4% appel, 3% ananas, 3% abrikoos, 2% spinazie, 2% veenbessen, 2% bramen, 2% duindoorn, 1% rozenbottels, 1% mineralen, 0,1% lijnolie', true, now(), 'sha256:9d64e8eb9d5864f59da6ea9768e6a69497c6b36f4a4baa26383364fdeb325974', null from p;

-- Alsa Nature — JUNIOR Kip & zalm met aardappel (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92041100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Kip & zalm met aardappel', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92041100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippenhals), 29,8% bouillon, 10% zalm, 3% aardappel, 3% pompoen, 3% courgette, 1% mineralen, 0,1% lijnolie, 0,1% levertraan.', true, now(), 'sha256:eed7afbd2ba96be23e52a21c29a6c5280e4846484aa50ea7ed05e614546b1e93', null from p;

-- Alsa Nature — JUNIOR Kip & zalm met aardappel (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92041200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Kip & zalm met aardappel', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92041200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippenhals), 29,8% bouillon, 10% zalm, 3% aardappel, 3% pompoen, 3% courgette, 1% mineralen, 0,1% lijnolie, 0,1% levertraan.', true, now(), 'sha256:eed7afbd2ba96be23e52a21c29a6c5280e4846484aa50ea7ed05e614546b1e93', null from p;

-- Alsa Nature — FINEST Runder-spiervlees met aardperen, venkel en lijnolie (400 g)
-- bron: https://www.alsa-nature.nl/p/920446
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FINEST Runder-spiervlees met aardperen, venkel en lijnolie', 'wet', '400 g', '4050001116411', 'https://www.alsa-nature.nl/p/920446', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Runderspiervlees, 30% rund (bestaande uit runderhart, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% aardpeer, 2% venkel, 1% mineralen, 0,2% lijnolie.', true, now(), 'sha256:27a98410a204d943ccbfe50caf2f04f2f67183ddd24783aa02a91bc9e4517067', null from p;

-- Alsa Nature — INSECTUM Insecten met erwten, pompoen & abrikoos (375 g)
-- bron: https://www.alsa-nature.nl/p/920512
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', 'wet', '375 g', '4050001121231', 'https://www.alsa-nature.nl/p/920512', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% insecten (zwarte soldaatvlieg), 36% bouillon, 4% erwten, 4% pompoen, 4% abrikoos, 1% mineralen, 0,5% kruiden, 0,5% distelolie', true, now(), 'sha256:8be03b622db20cada942549c91e0b26edcf5c1bee6d9318e0a7d84011d1520ee', null from p;

-- Alsa Nature — FINEST Kalkoen-spiervlees met zoete aardappel, mango & lijnolie (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920444
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FINEST Kalkoen-spiervlees met zoete aardappel, mango & lijnolie', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/920444', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Kalkoenspiervlees, 30% kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlever, kalkoenhals), 28,8% bouillon, 5% zoete aardappel, 2% mango, 1% mineralen, 0,2% lijnolie.', true, now(), 'sha256:534725db891b7a00735b08f83c3e3e6186bf266217883ae013165c95d5ecd0b5', null from p;

-- Alsa Nature — INSECTUM Insecten met erwten, pompoen & abrikoos (12 x 375 g)
-- bron: https://www.alsa-nature.nl/p/920514
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', 'wet', '12 x 375 g', null, 'https://www.alsa-nature.nl/p/920514', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% insecten (zwarte soldaatvlieg), 36% bouillon, 4% erwten, 4% pompoen, 4% abrikoos, 1% mineralen, 0,5% kruiden, 0,5% distelolie', true, now(), 'sha256:8be03b622db20cada942549c91e0b26edcf5c1bee6d9318e0a7d84011d1520ee', null from p;

-- Alsa Nature — FINEST Runder-spiervlees met aardperen, venkel en lijnolie (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920447
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FINEST Runder-spiervlees met aardperen, venkel en lijnolie', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/920447', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Runderspiervlees, 30% rund (bestaande uit runderhart, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% aardpeer, 2% venkel, 1% mineralen, 0,2% lijnolie.', true, now(), 'sha256:27a98410a204d943ccbfe50caf2f04f2f67183ddd24783aa02a91bc9e4517067', null from p;

-- Alsa Nature — SIMPLE Kangoeroe puur (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920543
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Kangoeroe puur', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/920543', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 28% bouillon', true, now(), 'sha256:53cd16766f13dbb6204f668f2fd590887c22f6fac057fd66a54680aea1d2ebdf', null from p;

-- Alsa Nature — SIMPLE Kangoeroe puur (800 g)
-- bron: https://www.alsa-nature.nl/p/920544
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Kangoeroe puur', 'wet', '800 g', '4050001115308', 'https://www.alsa-nature.nl/p/920544', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 28% bouillon', true, now(), 'sha256:53cd16766f13dbb6204f668f2fd590887c22f6fac057fd66a54680aea1d2ebdf', null from p;

-- Alsa Nature — SIMPLE Kangoeroe puur (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920546
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Kangoeroe puur', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/920546', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 28% bouillon', true, now(), 'sha256:53cd16766f13dbb6204f668f2fd590887c22f6fac057fd66a54680aea1d2ebdf', null from p;

-- Alsa Nature — SIMPLE Wild puur (400 g)
-- bron: https://www.alsa-nature.nl/p/920559
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Wild puur', 'wet', '400 g', '4050001115230', 'https://www.alsa-nature.nl/p/920559', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Wild (bestaande uit hart, spiervlees, lever, long, pens), 28% bouillon', true, now(), 'sha256:0e382179b6b3239616c4abf7c43ba0cde9e9ba914b3c13319246831c3cb38c2c', null from p;

-- Alsa Nature — SIMPLE Wild puur (800 g)
-- bron: https://www.alsa-nature.nl/p/920562
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Wild puur', 'wet', '800 g', '4050001115278', 'https://www.alsa-nature.nl/p/920562', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Wild (bestaande uit hart, spiervlees, lever, long, pens), 28% bouillon', true, now(), 'sha256:0e382179b6b3239616c4abf7c43ba0cde9e9ba914b3c13319246831c3cb38c2c', null from p;

-- Alsa Nature — SINGLE Kalkoen puur (90 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920618
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kalkoen puur', 'wet', '90 x 400 g', null, 'https://www.alsa-nature.nl/p/920618', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoennekken), bouillon 28,5%, mineralen 1%, distelolie 0,5%', true, now(), 'sha256:7c01b711f4038061fb77e21d0d0cc1fa8a01462032c83e0701e566f974e08b91', null from p;

-- Alsa Nature — SINGLE Kalkoen puur (120 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920619
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kalkoen puur', 'wet', '120 x 400 g', null, 'https://www.alsa-nature.nl/p/920619', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoennekken), bouillon 28,5%, mineralen 1%, distelolie 0,5%', true, now(), 'sha256:7c01b711f4038061fb77e21d0d0cc1fa8a01462032c83e0701e566f974e08b91', null from p;

-- Alsa Nature — SINGLE Kalkoen puur (30 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920616
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kalkoen puur', 'wet', '30 x 400 g', null, 'https://www.alsa-nature.nl/p/920616', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoennekken), bouillon 28,5%, mineralen 1%, distelolie 0,5%', true, now(), 'sha256:7c01b711f4038061fb77e21d0d0cc1fa8a01462032c83e0701e566f974e08b91', null from p;

-- Alsa Nature — SINGLE Lam met aardappel (30 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920632
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Lam met aardappel', 'wet', '30 x 400 g', null, 'https://www.alsa-nature.nl/p/920632', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Lam (bestaande uit lamshart, lamsvlees, lamslever, lamslong, lamspens), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:f547056025bca7a535e62eb92c287764677bf709d1b78b3b4d3d948672e2a274', null from p;

-- Alsa Nature — SINGLE Lam met aardappel (90 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920634
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Lam met aardappel', 'wet', '90 x 400 g', null, 'https://www.alsa-nature.nl/p/920634', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Lam (bestaande uit lamshart, lamsvlees, lamslever, lamslong, lamspens), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:f547056025bca7a535e62eb92c287764677bf709d1b78b3b4d3d948672e2a274', null from p;

-- Alsa Nature — SINGLE Lam met aardappel (30 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920636
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Lam met aardappel', 'wet', '30 x 800 g', null, 'https://www.alsa-nature.nl/p/920636', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Lam (bestaande uit lamshart, lamsvlees, lamslever, lamslong, lamspens), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:f547056025bca7a535e62eb92c287764677bf709d1b78b3b4d3d948672e2a274', null from p;

-- Alsa Nature — SINGLE Kangoeroe met aardappel (90 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920630
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', 'wet', '90 x 800 g', null, 'https://www.alsa-nature.nl/p/920630', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:7e615daef2ffbd8f7b5126ebc8da26c36ce43867c0960b84b111bd172d163855', null from p;

-- Alsa Nature — SINGLE Geit met pastinaak (90 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920666
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Geit met pastinaak', 'wet', '90 x 400 g', null, 'https://www.alsa-nature.nl/p/920666', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Geit (bestaande uit geitenspiervlees, geitenhart, geitenlever, geitenlong), 29,5% bouillon, 5% pastinaak, 1% mineralen, 0,5% lijnolie.', true, now(), 'sha256:e407571587adef11047ea053b3136f6fea0fdfcf7265b73108285aea3ba5fd67', null from p;

-- Alsa Nature — SINGLE Paard met aardappel (30 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920640
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Paard met aardappel', 'wet', '30 x 400 g', null, 'https://www.alsa-nature.nl/p/920640', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Paard (bestaande uit paardenvlees, paardenhart, paardenlever), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:425d605b0eb5772fa93f681b963c849f368b11355f86314d2a96628ef17c75f0', null from p;

-- Alsa Nature — SINGLE Rendier met aardappel (60 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920653
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Rendier met aardappel', 'wet', '60 x 800 g', null, 'https://www.alsa-nature.nl/p/920653', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Rendier, 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:5e00e05c0e60cac39c54f32530c54082eed627c0e03825fae4926eaa3f86ae6f', null from p;

-- Alsa Nature — JUBILEUM Lam (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92076101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Lam', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92076101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslong, lamspens), 28,8% bouillon, 5% aardpeer, 2% bonen, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:59fb5938f9e043737b259cc8873248986c1eeb861c882839a1e06c713bb4b309', null from p;

-- Alsa Nature — JUBILEUM Wild (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92076301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Wild', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92076301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% wild, 28,8% bouillon, 5% zoete aardappel, 2% aalbessen, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:16825c78e6d041a25818c34c7bb15dd92c849f855e9df6316e5f218e5466bf31', null from p;

-- Alsa Nature — SINGLE Geit met pastinaak (120 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920667
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Geit met pastinaak', 'wet', '120 x 400 g', null, 'https://www.alsa-nature.nl/p/920667', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Geit (bestaande uit geitenspiervlees, geitenhart, geitenlever, geitenlong), 29,5% bouillon, 5% pastinaak, 1% mineralen, 0,5% lijnolie.', true, now(), 'sha256:e407571587adef11047ea053b3136f6fea0fdfcf7265b73108285aea3ba5fd67', null from p;

-- Alsa Nature — JUBILEUM Wild (800 g)
-- bron: https://www.alsa-nature.nl/p/92076501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Wild', 'wet', '800 g', '4050001120210', 'https://www.alsa-nature.nl/p/92076501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% wild, 28,8% bouillon, 5% zoete aardappel, 2% aalbessen, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:16825c78e6d041a25818c34c7bb15dd92c849f855e9df6316e5f218e5466bf31', null from p;

-- Alsa Nature — JUBILEUM Lam (800 g)
-- bron: https://www.alsa-nature.nl/p/92075901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Lam', 'wet', '800 g', '4050001120159', 'https://www.alsa-nature.nl/p/92075901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslong, lamspens), 28,8% bouillon, 5% aardpeer, 2% bonen, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:59fb5938f9e043737b259cc8873248986c1eeb861c882839a1e06c713bb4b309', null from p;

-- Alsa Nature — SINGLE Geit met pastinaak (30 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920668
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Geit met pastinaak', 'wet', '30 x 800 g', null, 'https://www.alsa-nature.nl/p/920668', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Geit (bestaande uit geitenspiervlees, geitenhart, geitenlever, geitenlong), 29,5% bouillon, 5% pastinaak, 1% mineralen, 0,5% lijnolie.', true, now(), 'sha256:e407571587adef11047ea053b3136f6fea0fdfcf7265b73108285aea3ba5fd67', null from p;

-- Alsa Nature — 4-SEASONS Zomermenu Rund & Zalm met mango en meloen (400 g)
-- bron: https://www.alsa-nature.nl/p/92089601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', '4-SEASONS Zomermenu Rund & Zalm met mango en meloen', 'wet', '400 g', '4050001123761', 'https://www.alsa-nature.nl/p/92089601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% Rund (bestaande uit runderhart, rundervlees, runderlongen, runderlever, runderpens), 29,9% bouillon, 15% zalm, 2% mango, 2% meloen, mineralen, 0,1% zalmolie', true, now(), 'sha256:62703d4fcc5aa05a3eee6339c223af0262ff2e6746eb5eeb69626128b7ece592', null from p;

-- Alsa Nature — JUBILEUM Kip & Zalm (800 g)
-- bron: https://www.alsa-nature.nl/p/92077101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip & Zalm', 'wet', '800 g', '4050001120111', 'https://www.alsa-nature.nl/p/92077101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '52% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken), 28,8% bouillon, 15% zalm, 3% spinazie, 1% mineralen, 0,2% zalmolie', true, now(), 'sha256:6f1eddee8ba63562136d6416b4053537e664e6ec6633940f716361d3465ab54c', null from p;

-- Alsa Nature — Classic Eend met ham en spinazie ravioli (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92190601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92190601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Eend, 28,9% bouillon, 27% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 5% italiaanse ham, 5% spinazie ravioli, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:408129383c82a50aa59e651e4d27f4aaef9f7f0902bab9e267b8f38bdab2e515', null from p;

-- Alsa Nature — Speciaal Sensibel (12 x 200 g)
-- bron: https://www.alsa-nature.nl/p/92170601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Sensibel', 'wet', '12 x 200 g', null, 'https://www.alsa-nature.nl/p/92170601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenmagen, kippenlever, kippennekken), 30% bouillon, 8% rijst, 6% appels, 5% wortel, 5% hüttenkäse, 1% mineralen, monocalciumfosfaat', true, now(), 'sha256:7054a6c636ce1f252f50ac80a2d170481c5f99cdf2264b889a71298b9bc8c496', null from p;

-- Alsa Nature — Speciaal Nierdieet (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92180301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Nierdieet', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92180301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35,3% Bouillon, 35% kip (bestaande uit kippenharten, kippenmagen, kippenvet), 12% rijst, 10% aardappelen, 5% pompoen, 1% mineralen, 1% cellulose, 0,5% zalmolie, 0,1% voleipoeder, 0,1% biergist', true, now(), 'sha256:5bc16099b3cf0be75f656662e9c63fee5a52c64f22b47951501ab4c54778fbfe', null from p;

-- Alsa Nature — Classic Eend met ham en spinazie ravioli (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92190801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92190801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Eend, 28,9% bouillon, 27% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 5% italiaanse ham, 5% spinazie ravioli, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:408129383c82a50aa59e651e4d27f4aaef9f7f0902bab9e267b8f38bdab2e515', null from p;

-- Alsa Nature — Classic Eend met ham en spinazie ravioli (800 g)
-- bron: https://www.alsa-nature.nl/p/92190701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', 'wet', '800 g', '4050001116220', 'https://www.alsa-nature.nl/p/92190701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Eend, 28,9% bouillon, 27% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 5% italiaanse ham, 5% spinazie ravioli, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:408129383c82a50aa59e651e4d27f4aaef9f7f0902bab9e267b8f38bdab2e515', null from p;

-- Alsa Nature — Classic Spiervlees met aardappel en wortel (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92340601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92340601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Runderspiervlees, 30% rund (bestaande uit runderhart, runderlever, runderlongen, runderpens), 25,9% bouillon, 5% aardappel, 3% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:c7880603df2be98c9434a20d8b02b9f7d58c788a8cef3b0d8069e6934b4e2b04', null from p;

-- Alsa Nature — Classic Rund & Rijst met rode bieten & appel (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92200201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92200201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% Rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 27,9% bouillon, 4% rijst, 2% rode biet, 2% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:2ece60d8d8fad762f709ba0d2e3ee48cae2b942fa53a1845a03266d395bab419', null from p;

-- Alsa Nature — Classic Rund & Rijst met rode bieten & appel (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92200301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92200301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% Rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 27,9% bouillon, 4% rijst, 2% rode biet, 2% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:2ece60d8d8fad762f709ba0d2e3ee48cae2b942fa53a1845a03266d395bab419', null from p;

-- Alsa Nature — Classic Spiervlees met aardappel en wortel (6 x 200 g)
-- bron: https://www.alsa-nature.nl/p/92340201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', 'wet', '6 x 200 g', null, 'https://www.alsa-nature.nl/p/92340201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Runderspiervlees, 30% rund (bestaande uit runderhart, runderlever, runderlongen, runderpens), 25,9% bouillon, 5% aardappel, 3% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:c7880603df2be98c9434a20d8b02b9f7d58c788a8cef3b0d8069e6934b4e2b04', null from p;

-- Alsa Nature — Classic Spiervlees met aardappel en wortel (12 x 200 g)
-- bron: https://www.alsa-nature.nl/p/92340301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', 'wet', '12 x 200 g', null, 'https://www.alsa-nature.nl/p/92340301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Runderspiervlees, 30% rund (bestaande uit runderhart, runderlever, runderlongen, runderpens), 25,9% bouillon, 5% aardappel, 3% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:c7880603df2be98c9434a20d8b02b9f7d58c788a8cef3b0d8069e6934b4e2b04', null from p;

-- Alsa Nature — Senior Kip & Kalkoen met aardappel en peterselie (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92620801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92620801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% kalkoen (bestaande uit kalkoenenharten, kalkoenvlees, kalkoenlever, kalkoenennekken), 28,4% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie, 0,1% peterselie', true, now(), 'sha256:fb266ac396bdcac4e90adcdcc86e428e3f6fa442bc7cf7e6bca111537392ce87', null from p;

-- Alsa Nature — Classic Spiervlees met aardappel en wortel (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92340801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92340801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Runderspiervlees, 30% rund (bestaande uit runderhart, runderlever, runderlongen, runderpens), 25,9% bouillon, 5% aardappel, 3% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:c7880603df2be98c9434a20d8b02b9f7d58c788a8cef3b0d8069e6934b4e2b04', null from p;

-- Alsa Nature — FOODLOVE Kip & Forel met quinoa, pastinaak & papaja (30 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99007800
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', 'raw', '30 x 300 g', null, 'https://www.alsa-nature.nl/p/99007800', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '40% kip (bestaande uit kippenharten, kippenvlees, kippenlevers, kippenmagen, kippenhalzen), 27,3% bouillon, 20% forel, 4% quinoa, 4% pastinaak, 3% papaya, 1% mineralen, 0,5% kruiden, 0,2% lijnzaadolie', true, now(), 'sha256:77ef1a615fd4a37a4093a031d6776961b79ac44300f21c9fe5ef4a0a81f4921a', null from p;

-- Alsa Nature — CLASSIC Eend & Rund met aardappel (60 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99010701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', 'wet', '60 x 500 g', null, 'https://www.alsa-nature.nl/p/99010701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Eend (bestaande uit eendenmaag, eendennek, eendenhart), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% aardappel, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:fa7b052a87dd44e6b4be9a2b412d6e48e846544f045b13405cc01725e0fdd50d', null from p;

-- Alsa Nature — FOODLOVE Kip met quinoa, pompoen & broccoli (90 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99007300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', 'raw', '90 x 300 g', null, 'https://www.alsa-nature.nl/p/99007300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kip (bestaande uit kippenharten, kippenvlees, kippenlevers, kippenmagen, kippenhalzen), 27,3% bouillon, 4% quinoa, 4% pompoen, 3% broccoli, 1% mineralen, 0,5% kruiden, 0,2% lijnzaadolie', true, now(), 'sha256:ed4d8e19f7eec9bc4131474c422d0501a4d4d95d941b86413b3a8084f2e37e83', null from p;

-- Alsa Nature — CLASSIC Eend & Rund met aardappel (90 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99010801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', 'wet', '90 x 500 g', null, 'https://www.alsa-nature.nl/p/99010801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Eend (bestaande uit eendenmaag, eendennek, eendenhart), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% aardappel, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:fa7b052a87dd44e6b4be9a2b412d6e48e846544f045b13405cc01725e0fdd50d', null from p;

-- Alsa Nature — CLASSIC Wildzwijn & Rund met courgette (60 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99011901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', 'wet', '60 x 500 g', null, 'https://www.alsa-nature.nl/p/99011901', date '2026-11-13', true)
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
