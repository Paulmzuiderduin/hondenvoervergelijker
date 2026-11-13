-- Automatisch overgenomen etiketten, batch 12 van 2026-11-13 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Isegrim — RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98000100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/98000100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (48% gevogelte), bouillon (28,8%), vis en bijproducten van vis (14% zalm), granen (4% gierst), fruit (4% bosbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:e651e8f6cdfbfb7eb42a8da9923692accef27033d9b04e3b7cc11ab053b3f193', null from p;

-- Isegrim — TUNDRA Eend met pastinaak & wegedoornbessen (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98001300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/98001300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% eend, 30% gevogelte), bouillon (28,8%), groenten (4% pastinaak), fruit (4% wegedoornbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:68453c04ae188e5120637d0d94686d778caba8fbd4183ce53e4e67a3cb05ad5a', null from p;

-- Isegrim — RIVER Forel met pastinaak, cranberry's & wilde kruiden (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98003800
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/98003800', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (48% gevogelte), bouillon (28,8%), vis en bijproducten van vis (14% forel), groenten (4% pastinaak), fruit (4% veenbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:a60093bcf26e584934faf808cdb037dfad59d87639d4e0fffffb3621c3ae9372', null from p;

-- Isegrim — FOREST Rendier met bramen, champignons & wilde kruiden (400 g)
-- bron: https://www.alsa-nature.nl/p/98002400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', 'wet', '400 g', '4250231540189', 'https://www.alsa-nature.nl/p/98002400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (62% rendier), bouillon (28,8%), fruit (4% bramen), paddenstoelen (champignons 4%), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:fc386280453229683c5fdff229bfdea08c2a2168f142b0cd0713adde9f35cd57', null from p;

-- Isegrim — STEPPE Lam met bessen & wilde kruiden (12 kg)
-- bron: https://www.alsa-nature.nl/p/98006300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'STEPPE Lam met bessen & wilde kruiden', 'kibble', '12 kg', '4250231540097', 'https://www.alsa-nature.nl/p/98006300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogd lamsvlees 33%, verse kip 25%, aardappelen 15%, gevogelte vet (geconserveerd met tocoferol en rozemarijn extract) 8%, erwten 4%, bessen (bosbessen, veenbessen, frambozen) 4%, appels 3%, zalm olie 2%, wortelen 2%, gehydrolyseerd kippenlever 2%, aardappeleiwit 1%, glucosamine, mannan-oligosachariden, chondroïtinesulfaat, fructo-oligosacchariden, kruidenmix (paardebloem, kamille, weegbree, rozemarijn, duizendblad, peterselie, psyllium, goudsbloem) 0,01%, Yucca schidigera', true, now(), 'sha256:96da914509143cbcc967672e1b5860f47591ce17353a123546e6ca9532b86fc8', null from p;

-- Isegrim — Puppy en Junior RIVER Zalm met gierst (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/98006900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/98006900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte 54%, bouillon 28%, zalm 10%, gierst 3,7%, bosbessen 3%, mineralen 1%, zalmolie 0,2%, kruiden 0,1%', true, now(), 'sha256:b48f514dc20c82ffce5a62d2c8a8bf107f51ca05b2c32c637fef802fdc4336c7', null from p;

-- Isegrim — TUNDRA Eend met pastinaak & wegedoornbessen (800 g)
-- bron: https://www.alsa-nature.nl/p/98001500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', 'wet', '800 g', '4250231540158', 'https://www.alsa-nature.nl/p/98001500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% eend, 30% gevogelte), bouillon (28,8%), groenten (4% pastinaak), fruit (4% wegedoornbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:68453c04ae188e5120637d0d94686d778caba8fbd4183ce53e4e67a3cb05ad5a', null from p;

-- Isegrim — RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98000200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/98000200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (48% gevogelte), bouillon (28,8%), vis en bijproducten van vis (14% zalm), granen (4% gierst), fruit (4% bosbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:e651e8f6cdfbfb7eb42a8da9923692accef27033d9b04e3b7cc11ab053b3f193', null from p;

-- Isegrim — STEPPE Paard met appelbessen, champignons & wilde kruiden (800 g)
-- bron: https://www.alsa-nature.nl/p/98003300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', 'wet', '800 g', '4250231540219', 'https://www.alsa-nature.nl/p/98003300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (62% paard), bouillon (28,8%), fruit (4% appelbessen), paddenstoelen (champignons 4%), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:b11dc5c060503d81b238382eaf2bdcd5c635b154e023ddd0db73eac3b1bd99dd', null from p;

-- Isegrim — RIVER Forel met pastinaak, cranberry's & wilde kruiden (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98003700
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/98003700', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (48% gevogelte), bouillon (28,8%), vis en bijproducten van vis (14% forel), groenten (4% pastinaak), fruit (4% veenbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:a60093bcf26e584934faf808cdb037dfad59d87639d4e0fffffb3621c3ae9372', null from p;

-- Isegrim — RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden (800 g)
-- bron: https://www.alsa-nature.nl/p/98000300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', 'wet', '800 g', '4250231540110', 'https://www.alsa-nature.nl/p/98000300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (48% gevogelte), bouillon (28,8%), vis en bijproducten van vis (14% zalm), granen (4% gierst), fruit (4% bosbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:e651e8f6cdfbfb7eb42a8da9923692accef27033d9b04e3b7cc11ab053b3f193', null from p;

-- Isegrim — PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98001900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/98001900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% gans, 30% gevogelte), bouillon (28,8%), groenten (4% zoete aardappel), fruit (4% rozenbottel), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:0190eb8eaf99949f89811090f4a4ebda4895fd95495a0c248eeeebcaa6d3e201', null from p;

-- Isegrim — FOREST Rendier met bramen, champignons & wilde kruiden (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/98002900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/98002900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (62% rendier), bouillon (28,8%), fruit (4% bramen), paddenstoelen (champignons 4%), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:fc386280453229683c5fdff229bfdea08c2a2168f142b0cd0713adde9f35cd57', null from p;

-- Isegrim — GREEN HILLS Eend met bessen & wilde kruiden (3 kg)
-- bron: https://www.alsa-nature.nl/p/98006000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'GREEN HILLS Eend met bessen & wilde kruiden', 'kibble', '3 kg', '4250231540066', 'https://www.alsa-nature.nl/p/98006000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogd eendenvlees 30%, vers eendenvlees 25%, aardappelen 13%, gevogelte vet (geconserveerd met tocoferol en rozemarijn extract) 10%, tapioca 4%, bessen (bosbessen, veenbessen, frambozen) 4%, appels 3%, zalm olie 2%, wortelen 2%, erwten 2%, gehydrolyseerd kippenlever 2%, aardappeleiwit 1%, glucosamine, mannan-oligosachariden, chondroïtinesulfaat, fructo-oligosacchariden, kruidenmix (paardebloem, kamille, weegbree, rozemarijn, duizendblad, peterselie, psyllium, goudsbloem) 0,01%, Yucca schidigera.', true, now(), 'sha256:46d0cac86adc2f743163cb85b946099b902703e3a6c5cad2cf2f63fc2fe59591', null from p;

-- Isegrim — Puppy en Junior RIVER Zalm met gierst (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98006500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/98006500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte 54%, bouillon 28%, zalm 10%, gierst 3,7%, bosbessen 3%, mineralen 1%, zalmolie 0,2%, kruiden 0,1%', true, now(), 'sha256:b48f514dc20c82ffce5a62d2c8a8bf107f51ca05b2c32c637fef802fdc4336c7', null from p;

-- Isegrim — RIVER Forel met pastinaak, cranberry's & wilde kruiden (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/98004100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/98004100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (48% gevogelte), bouillon (28,8%), vis en bijproducten van vis (14% forel), groenten (4% pastinaak), fruit (4% veenbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:a60093bcf26e584934faf808cdb037dfad59d87639d4e0fffffb3621c3ae9372', null from p;

-- Isegrim — Puppy en Junior FOREST Wildzwijn met aardappelen (400 g)
-- bron: https://www.alsa-nature.nl/p/98012201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'Puppy en Junior FOREST Wildzwijn met aardappelen', 'wet', '400 g', '4250231543920', 'https://www.alsa-nature.nl/p/98012201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% wildzwijn, 28% bouillon, 3,7% aardappelen, 3% pompoen, 1% mineralen, 0,2% lijnolie, 0,1% wilde kruiden', true, now(), 'sha256:61e417fd90ce4cae13e2f04c65ffc84566ce05571877442f668a5a60792e9f7d', null from p;

-- Isegrim — Puppy en Junior FOREST Wildzwijn met aardappelen (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98012401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'Puppy en Junior FOREST Wildzwijn met aardappelen', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/98012401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% wildzwijn, 28% bouillon, 3,7% aardappelen, 3% pompoen, 1% mineralen, 0,2% lijnolie, 0,1% wilde kruiden', true, now(), 'sha256:61e417fd90ce4cae13e2f04c65ffc84566ce05571877442f668a5a60792e9f7d', null from p;

-- Isegrim — STEPPE Paard met appelbessen, champignons & wilde kruiden (400 g)
-- bron: https://www.alsa-nature.nl/p/98003000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', 'wet', '400 g', '4250231540202', 'https://www.alsa-nature.nl/p/98003000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (62% paard), bouillon (28,8%), fruit (4% appelbessen), paddenstoelen (champignons 4%), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:b11dc5c060503d81b238382eaf2bdcd5c635b154e023ddd0db73eac3b1bd99dd', null from p;

-- Isegrim — Puppy en Junior RIVER Zalm met bessen (3 kg)
-- bron: https://www.alsa-nature.nl/p/98005400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'Puppy en Junior RIVER Zalm met bessen', 'kibble', '3 kg', '4250231540004', 'https://www.alsa-nature.nl/p/98005400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse zalm 30%, gedroogde zalm 25%, aardappelen 15%, gevogelte vet (geconserveerd met tocoferol en rozemarijn extract) 12%, erwten 4%, bessen (bosbessen, veenbessen, frambozen) 4%, appels 3%, wortelen 2%, zalm olie 4%, gehydrolyseerd kippeneiwit 3%, gehydrolyseerd kippenlever 2%, glucosamine, mannan-oligosachariden, chondroïtinesulfaat, fructo-oligosacchariden, kruidenmix (paardebloem, kamille, weegbree, rozemarijn, duizendblad, peterselie, psyllium, goudsbloem) 0,012%, Yucca schidigera.', true, now(), 'sha256:5a61ad1b76c85b72cbd6dd3585a23e5d862c16efe69725ce84038dec922d44b4', null from p;

-- Isegrim — PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/98002200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/98002200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% gans, 30% gevogelte), bouillon (28,8%), groenten (4% zoete aardappel), fruit (4% rozenbottel), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:0190eb8eaf99949f89811090f4a4ebda4895fd95495a0c248eeeebcaa6d3e201', null from p;

-- Isegrim — RIVER Forel met pastinaak, cranberry's & wilde kruiden (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/98004000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/98004000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (48% gevogelte), bouillon (28,8%), vis en bijproducten van vis (14% forel), groenten (4% pastinaak), fruit (4% veenbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:a60093bcf26e584934faf808cdb037dfad59d87639d4e0fffffb3621c3ae9372', null from p;

-- Isegrim — Puppy en Junior RIVER Zalm met gierst (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/98006800
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/98006800', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte 54%, bouillon 28%, zalm 10%, gierst 3,7%, bosbessen 3%, mineralen 1%, zalmolie 0,2%, kruiden 0,1%', true, now(), 'sha256:b48f514dc20c82ffce5a62d2c8a8bf107f51ca05b2c32c637fef802fdc4336c7', null from p;

-- Isegrim — STEPPE Paard met appelbessen, champignons & wilde kruiden (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98003100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/98003100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (62% paard), bouillon (28,8%), fruit (4% appelbessen), paddenstoelen (champignons 4%), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:b11dc5c060503d81b238382eaf2bdcd5c635b154e023ddd0db73eac3b1bd99dd', null from p;

-- Isegrim — TUNDRA Eend met pastinaak & wegedoornbessen (400 g)
-- bron: https://www.alsa-nature.nl/p/98001200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', 'wet', '400 g', '4250231540141', 'https://www.alsa-nature.nl/p/98001200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% eend, 30% gevogelte), bouillon (28,8%), groenten (4% pastinaak), fruit (4% wegedoornbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:68453c04ae188e5120637d0d94686d778caba8fbd4183ce53e4e67a3cb05ad5a', null from p;

-- Isegrim — TUNDRA Eend met pastinaak & wegedoornbessen (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/98001700
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/98001700', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% eend, 30% gevogelte), bouillon (28,8%), groenten (4% pastinaak), fruit (4% wegedoornbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:68453c04ae188e5120637d0d94686d778caba8fbd4183ce53e4e67a3cb05ad5a', null from p;

-- Isegrim — FOREST Rendier met bramen, champignons & wilde kruiden (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98002600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/98002600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (62% rendier), bouillon (28,8%), fruit (4% bramen), paddenstoelen (champignons 4%), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:fc386280453229683c5fdff229bfdea08c2a2168f142b0cd0713adde9f35cd57', null from p;

-- Isegrim — FOREST Rendier met bramen, champignons & wilde kruiden (800 g)
-- bron: https://www.alsa-nature.nl/p/98002700
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', 'wet', '800 g', '4250231540196', 'https://www.alsa-nature.nl/p/98002700', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (62% rendier), bouillon (28,8%), fruit (4% bramen), paddenstoelen (champignons 4%), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:fc386280453229683c5fdff229bfdea08c2a2168f142b0cd0713adde9f35cd57', null from p;

-- Isegrim — TUNDRA Eend met pastinaak & wegedoornbessen (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/98001600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/98001600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% eend, 30% gevogelte), bouillon (28,8%), groenten (4% pastinaak), fruit (4% wegedoornbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:68453c04ae188e5120637d0d94686d778caba8fbd4183ce53e4e67a3cb05ad5a', null from p;

-- Isegrim — PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98002000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/98002000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% gans, 30% gevogelte), bouillon (28,8%), groenten (4% zoete aardappel), fruit (4% rozenbottel), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:0190eb8eaf99949f89811090f4a4ebda4895fd95495a0c248eeeebcaa6d3e201', null from p;

-- Isegrim — Puppy en Junior RIVER Zalm met gierst (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98006600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/98006600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte 54%, bouillon 28%, zalm 10%, gierst 3,7%, bosbessen 3%, mineralen 1%, zalmolie 0,2%, kruiden 0,1%', true, now(), 'sha256:b48f514dc20c82ffce5a62d2c8a8bf107f51ca05b2c32c637fef802fdc4336c7', null from p;

-- Isegrim — PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden (800 g)
-- bron: https://www.alsa-nature.nl/p/98002100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', 'wet', '800 g', '4250231540172', 'https://www.alsa-nature.nl/p/98002100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% gans, 30% gevogelte), bouillon (28,8%), groenten (4% zoete aardappel), fruit (4% rozenbottel), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:0190eb8eaf99949f89811090f4a4ebda4895fd95495a0c248eeeebcaa6d3e201', null from p;

-- Isegrim — PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden (400 g)
-- bron: https://www.alsa-nature.nl/p/98001800
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', 'wet', '400 g', '4250231540165', 'https://www.alsa-nature.nl/p/98001800', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% gans, 30% gevogelte), bouillon (28,8%), groenten (4% zoete aardappel), fruit (4% rozenbottel), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:0190eb8eaf99949f89811090f4a4ebda4895fd95495a0c248eeeebcaa6d3e201', null from p;

-- Isegrim — FOREST Rendier met bramen, champignons & wilde kruiden (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/98002800
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/98002800', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (62% rendier), bouillon (28,8%), fruit (4% bramen), paddenstoelen (champignons 4%), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:fc386280453229683c5fdff229bfdea08c2a2168f142b0cd0713adde9f35cd57', null from p;

-- Isegrim — Puppy en Junior FOREST Wildzwijn met aardappelen (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98012301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'Puppy en Junior FOREST Wildzwijn met aardappelen', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/98012301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% wildzwijn, 28% bouillon, 3,7% aardappelen, 3% pompoen, 1% mineralen, 0,2% lijnolie, 0,1% wilde kruiden', true, now(), 'sha256:61e417fd90ce4cae13e2f04c65ffc84566ce05571877442f668a5a60792e9f7d', null from p;

-- Isegrim — RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden (400 g)
-- bron: https://www.alsa-nature.nl/p/98000000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', 'wet', '400 g', '4250231540103', 'https://www.alsa-nature.nl/p/98000000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (48% gevogelte), bouillon (28,8%), vis en bijproducten van vis (14% zalm), granen (4% gierst), fruit (4% bosbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:e651e8f6cdfbfb7eb42a8da9923692accef27033d9b04e3b7cc11ab053b3f193', null from p;

-- Isegrim — FOREST Hert met aardperen, rode bosbessen & wilde kruiden (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98000800
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/98000800', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% hert, 30% gevogelte), bouillon (28,8%), plantaardige bijproducten (4% aardpeer), fruit (4% rode bosbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:e4f7e2e2b640a72f7d66758b7683a86422f2b5bd37cabdebe04f06393d7fe1a6', null from p;

-- Isegrim — PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/98002300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/98002300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% gans, 30% gevogelte), bouillon (28,8%), groenten (4% zoete aardappel), fruit (4% rozenbottel), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:0190eb8eaf99949f89811090f4a4ebda4895fd95495a0c248eeeebcaa6d3e201', null from p;

-- Isegrim — STEPPE Paard met appelbessen, champignons & wilde kruiden (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/98003500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/98003500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (62% paard), bouillon (28,8%), fruit (4% appelbessen), paddenstoelen (champignons 4%), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:b11dc5c060503d81b238382eaf2bdcd5c635b154e023ddd0db73eac3b1bd99dd', null from p;

-- Isegrim — RIVER Forel met pastinaak, cranberry's & wilde kruiden (400 g)
-- bron: https://www.alsa-nature.nl/p/98003600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', 'wet', '400 g', '4250231540226', 'https://www.alsa-nature.nl/p/98003600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (48% gevogelte), bouillon (28,8%), vis en bijproducten van vis (14% forel), groenten (4% pastinaak), fruit (4% veenbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:a60093bcf26e584934faf808cdb037dfad59d87639d4e0fffffb3621c3ae9372', null from p;

-- Isegrim — FOREST Hert met aardperen, rode bosbessen & wilde kruiden (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/98001100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/98001100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% hert, 30% gevogelte), bouillon (28,8%), plantaardige bijproducten (4% aardpeer), fruit (4% rode bosbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:e4f7e2e2b640a72f7d66758b7683a86422f2b5bd37cabdebe04f06393d7fe1a6', null from p;

-- Isegrim — TUNDRA Eend met pastinaak & wegedoornbessen (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98001400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/98001400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% eend, 30% gevogelte), bouillon (28,8%), groenten (4% pastinaak), fruit (4% wegedoornbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:68453c04ae188e5120637d0d94686d778caba8fbd4183ce53e4e67a3cb05ad5a', null from p;

-- Isegrim — FOREST Hert met aardperen, rode bosbessen & wilde kruiden (800 g)
-- bron: https://www.alsa-nature.nl/p/98000900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', 'wet', '800 g', '4250231540134', 'https://www.alsa-nature.nl/p/98000900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% hert, 30% gevogelte), bouillon (28,8%), plantaardige bijproducten (4% aardpeer), fruit (4% rode bosbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:e4f7e2e2b640a72f7d66758b7683a86422f2b5bd37cabdebe04f06393d7fe1a6', null from p;

-- Isegrim — FOREST Rendier met bramen, champignons & wilde kruiden (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98002500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/98002500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (62% rendier), bouillon (28,8%), fruit (4% bramen), paddenstoelen (champignons 4%), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:fc386280453229683c5fdff229bfdea08c2a2168f142b0cd0713adde9f35cd57', null from p;

-- Isegrim — Puppy en Junior RIVER Zalm met gierst (800 g)
-- bron: https://www.alsa-nature.nl/p/98006700
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', 'wet', '800 g', '4250231540417', 'https://www.alsa-nature.nl/p/98006700', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte 54%, bouillon 28%, zalm 10%, gierst 3,7%, bosbessen 3%, mineralen 1%, zalmolie 0,2%, kruiden 0,1%', true, now(), 'sha256:b48f514dc20c82ffce5a62d2c8a8bf107f51ca05b2c32c637fef802fdc4336c7', null from p;

-- Isegrim — GREEN HILLS Eend met bessen & wilde kruiden (12 kg)
-- bron: https://www.alsa-nature.nl/p/98006100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'GREEN HILLS Eend met bessen & wilde kruiden', 'kibble', '12 kg', '4250231540073', 'https://www.alsa-nature.nl/p/98006100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogd eendenvlees 30%, vers eendenvlees 25%, aardappelen 13%, gevogelte vet (geconserveerd met tocoferol en rozemarijn extract) 10%, tapioca 4%, bessen (bosbessen, veenbessen, frambozen) 4%, appels 3%, zalm olie 2%, wortelen 2%, erwten 2%, gehydrolyseerd kippenlever 2%, aardappeleiwit 1%, glucosamine, mannan-oligosachariden, chondroïtinesulfaat, fructo-oligosacchariden, kruidenmix (paardebloem, kamille, weegbree, rozemarijn, duizendblad, peterselie, psyllium, goudsbloem) 0,01%, Yucca schidigera.', true, now(), 'sha256:46d0cac86adc2f743163cb85b946099b902703e3a6c5cad2cf2f63fc2fe59591', null from p;

-- Isegrim — Puppy en Junior RIVER Zalm met bessen (12 kg)
-- bron: https://www.alsa-nature.nl/p/98005500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'Puppy en Junior RIVER Zalm met bessen', 'kibble', '12 kg', '4250231540011', 'https://www.alsa-nature.nl/p/98005500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse zalm 30%, gedroogde zalm 25%, aardappelen 15%, gevogelte vet (geconserveerd met tocoferol en rozemarijn extract) 12%, erwten 4%, bessen (bosbessen, veenbessen, frambozen) 4%, appels 3%, wortelen 2%, zalm olie 4%, gehydrolyseerd kippeneiwit 3%, gehydrolyseerd kippenlever 2%, glucosamine, mannan-oligosachariden, chondroïtinesulfaat, fructo-oligosacchariden, kruidenmix (paardebloem, kamille, weegbree, rozemarijn, duizendblad, peterselie, psyllium, goudsbloem) 0,012%, Yucca schidigera.', true, now(), 'sha256:5a61ad1b76c85b72cbd6dd3585a23e5d862c16efe69725ce84038dec922d44b4', null from p;

-- Isegrim — FOREST Edelhert met bessen & wilde kruiden (3 kg)
-- bron: https://www.alsa-nature.nl/p/98005800
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'FOREST Edelhert met bessen & wilde kruiden', 'kibble', '3 kg', '4250231540042', 'https://www.alsa-nature.nl/p/98005800', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogd edelhertenvlees 31%, verse kip 25%, aardappelen 16%, gevogelte vet (geconserveerd met tocoferol en rozemarijn extract) 9%, bessen (bosbessen, veenbessen, frambozen) 4%, appels 3%, zalm olie 3%, wortelen 2%, erwten 2%, gehydrolyseerd kippenlever 2%, aardappeleiwit 1%, glucosamine, mannan-oligosachariden, chondroïtinesulfaat, fructo-oligosacchariden, kruidenmix (paardebloem, kamille, weegbree, rozemarijn, duizendblad, peterselie, psyllium, goudsbloem) 0,01%, Yucca schidigera.', true, now(), 'sha256:0a9404855885ed5863a2a70e31ad5fd7491dd98c998f45b82935cf84cefcbf36', null from p;

-- Isegrim — FOREST Edelhert met bessen & wilde kruiden (12 kg)
-- bron: https://www.alsa-nature.nl/p/98005900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'FOREST Edelhert met bessen & wilde kruiden', 'kibble', '12 kg', '4250231540059', 'https://www.alsa-nature.nl/p/98005900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogd edelhertenvlees 31%, verse kip 25%, aardappelen 16%, gevogelte vet (geconserveerd met tocoferol en rozemarijn extract) 9%, bessen (bosbessen, veenbessen, frambozen) 4%, appels 3%, zalm olie 3%, wortelen 2%, erwten 2%, gehydrolyseerd kippenlever 2%, aardappeleiwit 1%, glucosamine, mannan-oligosachariden, chondroïtinesulfaat, fructo-oligosacchariden, kruidenmix (paardebloem, kamille, weegbree, rozemarijn, duizendblad, peterselie, psyllium, goudsbloem) 0,01%, Yucca schidigera.', true, now(), 'sha256:0a9404855885ed5863a2a70e31ad5fd7491dd98c998f45b82935cf84cefcbf36', null from p;

-- Isegrim — FOREST Hert met aardperen, rode bosbessen & wilde kruiden (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98000700
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/98000700', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% hert, 30% gevogelte), bouillon (28,8%), plantaardige bijproducten (4% aardpeer), fruit (4% rode bosbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:e4f7e2e2b640a72f7d66758b7683a86422f2b5bd37cabdebe04f06393d7fe1a6', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
