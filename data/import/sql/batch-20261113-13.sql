-- Automatisch overgenomen etiketten, batch 13 van 2026-11-13 (11 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Isegrim — RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/98000400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/98000400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (48% gevogelte), bouillon (28,8%), vis en bijproducten van vis (14% zalm), granen (4% gierst), fruit (4% bosbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:e651e8f6cdfbfb7eb42a8da9923692accef27033d9b04e3b7cc11ab053b3f193', null from p;

-- Isegrim — FOREST Hert met aardperen, rode bosbessen & wilde kruiden (400 g)
-- bron: https://www.alsa-nature.nl/p/98000600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', 'wet', '400 g', '4250231540127', 'https://www.alsa-nature.nl/p/98000600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% hert, 30% gevogelte), bouillon (28,8%), plantaardige bijproducten (4% aardpeer), fruit (4% rode bosbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:e4f7e2e2b640a72f7d66758b7683a86422f2b5bd37cabdebe04f06393d7fe1a6', null from p;

-- Isegrim — STEPPE Paard met appelbessen, champignons & wilde kruiden (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98003200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/98003200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (62% paard), bouillon (28,8%), fruit (4% appelbessen), paddenstoelen (champignons 4%), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:b11dc5c060503d81b238382eaf2bdcd5c635b154e023ddd0db73eac3b1bd99dd', null from p;

-- Isegrim — RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/98000500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/98000500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (48% gevogelte), bouillon (28,8%), vis en bijproducten van vis (14% zalm), granen (4% gierst), fruit (4% bosbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:e651e8f6cdfbfb7eb42a8da9923692accef27033d9b04e3b7cc11ab053b3f193', null from p;

-- Isegrim — STEPPE Paard met appelbessen, champignons & wilde kruiden (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/98003400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/98003400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (62% paard), bouillon (28,8%), fruit (4% appelbessen), paddenstoelen (champignons 4%), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:b11dc5c060503d81b238382eaf2bdcd5c635b154e023ddd0db73eac3b1bd99dd', null from p;

-- Isegrim — FOREST Hert met aardperen, rode bosbessen & wilde kruiden (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/98001000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/98001000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% hert, 30% gevogelte), bouillon (28,8%), plantaardige bijproducten (4% aardpeer), fruit (4% rode bosbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:e4f7e2e2b640a72f7d66758b7683a86422f2b5bd37cabdebe04f06393d7fe1a6', null from p;

-- Isegrim — RIVER Forel met pastinaak, cranberry's & wilde kruiden (800 g)
-- bron: https://www.alsa-nature.nl/p/98003900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', 'wet', '800 g', '4050001111195', 'https://www.alsa-nature.nl/p/98003900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (48% gevogelte), bouillon (28,8%), vis en bijproducten van vis (14% forel), groenten (4% pastinaak), fruit (4% veenbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:a60093bcf26e584934faf808cdb037dfad59d87639d4e0fffffb3621c3ae9372', null from p;

-- Isegrim — RIVER Zalm met bessen & wilde kruiden (3 kg)
-- bron: https://www.alsa-nature.nl/p/98005600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'RIVER Zalm met bessen & wilde kruiden', 'kibble', '3 kg', '4250231540028', 'https://www.alsa-nature.nl/p/98005600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde zalm 32%, verse zalm 25%, aardappelen 16%, gevogelte vet (geconserveerd met tocoferol en rozemarijn extract) 8%, erwten 3%, bessen (bosbessen, veenbessen, frambozen) 4%, appels 3%, zalm olie 3%, wortelen 2%, gehydrolyseerd kippenlever 2%, aardappeleiwit 1%, glucosamine, mannan-oligosachariden, chondroïtinesulfaat, fructo-oligosacchariden, kruidenmix (paardebloem, kamille, weegbree, rozemarijn, duizendblad, peterselie, psyllium, goudsbloem) 0,01%, Yucca schidigera', true, now(), 'sha256:e74d8c880c14ab157b7055905622141d8cfc887a7315fa07568ea18e8b4f356d', null from p;

-- Isegrim — RIVER Zalm met bessen & wilde kruiden (12 kg)
-- bron: https://www.alsa-nature.nl/p/98005700
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'RIVER Zalm met bessen & wilde kruiden', 'kibble', '12 kg', '4250231540035', 'https://www.alsa-nature.nl/p/98005700', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde zalm 32%, verse zalm 25%, aardappelen 16%, gevogelte vet (geconserveerd met tocoferol en rozemarijn extract) 8%, erwten 3%, bessen (bosbessen, veenbessen, frambozen) 4%, appels 3%, zalm olie 3%, wortelen 2%, gehydrolyseerd kippenlever 2%, aardappeleiwit 1%, glucosamine, mannan-oligosachariden, chondroïtinesulfaat, fructo-oligosacchariden, kruidenmix (paardebloem, kamille, weegbree, rozemarijn, duizendblad, peterselie, psyllium, goudsbloem) 0,01%, Yucca schidigera', true, now(), 'sha256:e74d8c880c14ab157b7055905622141d8cfc887a7315fa07568ea18e8b4f356d', null from p;

-- Isegrim — Puppy en Junior RIVER Zalm met gierst (400 g)
-- bron: https://www.alsa-nature.nl/p/98006400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', 'wet', '400 g', '4250231540400', 'https://www.alsa-nature.nl/p/98006400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte 54%, bouillon 28%, zalm 10%, gierst 3,7%, bosbessen 3%, mineralen 1%, zalmolie 0,2%, kruiden 0,1%', true, now(), 'sha256:b48f514dc20c82ffce5a62d2c8a8bf107f51ca05b2c32c637fef802fdc4336c7', null from p;

-- Isegrim — STEPPE Lam met bessen & wilde kruiden (3 kg)
-- bron: https://www.alsa-nature.nl/p/98006200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'STEPPE Lam met bessen & wilde kruiden', 'kibble', '3 kg', '4250231540080', 'https://www.alsa-nature.nl/p/98006200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogd lamsvlees 33%, verse kip 25%, aardappelen 15%, gevogelte vet (geconserveerd met tocoferol en rozemarijn extract) 8%, erwten 4%, bessen (bosbessen, veenbessen, frambozen) 4%, appels 3%, zalm olie 2%, wortelen 2%, gehydrolyseerd kippenlever 2%, aardappeleiwit 1%, glucosamine, mannan-oligosachariden, chondroïtinesulfaat, fructo-oligosacchariden, kruidenmix (paardebloem, kamille, weegbree, rozemarijn, duizendblad, peterselie, psyllium, goudsbloem) 0,01%, Yucca schidigera', true, now(), 'sha256:96da914509143cbcc967672e1b5860f47591ce17353a123546e6ca9532b86fc8', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
