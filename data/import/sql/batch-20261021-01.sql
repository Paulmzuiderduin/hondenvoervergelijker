-- Automatisch overgenomen etiketten, batch 1 van 2026-10-21 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site zegt daarna:
-- "automatisch overgenomen van <domein> op <datum> · nog niet door een mens
-- nagelopen". Er wordt hier geen enkele controle door een mens geclaimd.
begin;

-- Butcher's — Loaf Recipes met lam, rijst & erwten (6 x 400 g (variatiepak, 2 x per smaak))
-- bron: https://butchersdogfood.co.uk/product/loaf-recipes-6-pack-400g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Loaf Recipes met lam, rijst & erwten', 'wet', '6 x 400 g (variatiepak, 2 x per smaak)', null, 'https://butchersdogfood.co.uk/product/loaf-recipes-6-pack-400g/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Met lam, rijst & erwten: Brits & Iers gekweekt (kip 34%, rund 9%, lam 4%, lever 3%), gekookte volkoren rijst 4%, erwten 4%, zalmolie, peterselie, rozenbottel, cichorei, munt, mineralen.', true, now(), 'sha256:04b26ebbd218eb55859c029e3953a24aeada69933dd7a867be458aa44381078c', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Loaf Recipes met kip, rijst & wortelen (6 x 400 g (variatiepak, 2 x per smaak))
-- bron: https://butchersdogfood.co.uk/product/loaf-recipes-6-pack-400g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Loaf Recipes met kip, rijst & wortelen', 'wet', '6 x 400 g (variatiepak, 2 x per smaak)', null, 'https://butchersdogfood.co.uk/product/loaf-recipes-6-pack-400g/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Met kip, rijst & wortelen: Brits & Iers gekweekt (kip 39%, rund 11%), gekookte volkoren rijst 4%, wortelen 4%, zalmolie, peterselie, rozenbottel, cichorei, munt, mineralen.', true, now(), 'sha256:5928179b5fc5961b830399979b8de61ac93aa8c461a3cfe6953af14ce95d10d4', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Loaf Recipes met rund, rijst & groenten (6 x 400 g (variatiepak, 2 x per smaak))
-- bron: https://butchersdogfood.co.uk/product/loaf-recipes-6-pack-400g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Loaf Recipes met rund, rijst & groenten', 'wet', '6 x 400 g (variatiepak, 2 x per smaak)', null, 'https://butchersdogfood.co.uk/product/loaf-recipes-6-pack-400g/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Met rund, rijst & groenten: Brits & Iers gekweekt (kip 33,5%, rund 16,5%), gekookte volkoren rijst 4%, erwten 4%, wortelen 2%, zalmolie, peterselie, rozenbottel, cichorei, munt, mineralen.', true, now(), 'sha256:1762afea692338d5b59a67e3fa68667bf886c90ca2ab28a2d5b408c61c98f6af', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Originele pens (Tripe Mix) (400 g / 6 x 400 g (Tripe Mix) / 18 x 400 g (Tripe Mix); ook in variatiepakken van 6, 12, 18 en 24 x 400 g)
-- bron: https://butchersdogfood.co.uk/product/tripe-400g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Originele pens (Tripe Mix)', 'wet', '400 g / 6 x 400 g (Tripe Mix) / 18 x 400 g (Tripe Mix); ook in variatiepakken van 6, 12, 18 en 24 x 400 g', null, 'https://butchersdogfood.co.uk/product/tripe-400g/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Brits & Iers gekweekte rund & kip; rund 42% (pens & pensbouillon 39%, lever 3%) en kip 41,5%, zalmolie, plantaardige vezels, vitaminen & mineralen, cichoreiwortel, MOS.', true, now(), 'sha256:a372a7e129be1f515cb7ae5ab9c10d52ddb501d02dbdee3466ccdd849b2c407c', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Kip & pens (Chicken & Tripe Loaf) (400 g; ook in variatiepakken van 6, 12, 18 en 24 x 400 g)
-- bron: https://butchersdogfood.co.uk/product/chicken-tripe-loaf-400g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Kip & pens (Chicken & Tripe Loaf)', 'wet', '400 g; ook in variatiepakken van 6, 12, 18 en 24 x 400 g', null, 'https://butchersdogfood.co.uk/product/chicken-tripe-loaf-400g/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Met kip & pens: Brits & Iers gekweekte kip & rund; kip 44% en rund 21% (pens & pensbouillon), zalmolie, plantaardige vezels, vitaminen & mineralen, cichoreiwortel, MOS.', true, now(), 'sha256:99f293bcabdef1e7c1789a8916b146e8b05da6d673f99637dee547a4e6a2b980', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Rund & pens (Beef & Tripe Loaf) (alleen in variatiepakken van 6, 12, 18 en 24 x 400 g)
-- bron: https://butchersdogfood.co.uk/product/tripe-loaf-recipes-6-pack-400g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Rund & pens (Beef & Tripe Loaf)', 'wet', 'alleen in variatiepakken van 6, 12, 18 en 24 x 400 g', null, 'https://butchersdogfood.co.uk/product/tripe-loaf-recipes-6-pack-400g/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'RUND & PENS: Brits & Iers gekweekte kip & rund; kip 35% en rund 30% (pens & pens/lever-bouillon), zalmolie, plantaardige vezels, vitaminen & mineralen, cichoreiwortel, MOS.', true, now(), 'sha256:b707a3e6535085d3a224556728ea5e47677143c9ebdbdb359982253641316f0f', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Recipes in Gravy met rund & tuinbouwgroenten (6 x 400 g / 12 x 400 g / 18 x 400 g (variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/recipes-in-gravy-6-pack-400g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Recipes in Gravy met rund & tuinbouwgroenten', 'wet', '6 x 400 g / 12 x 400 g / 18 x 400 g (variatiepakken)', null, 'https://butchersdogfood.co.uk/product/recipes-in-gravy-6-pack-400g/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'MET RUND & TUINBOUWGROENTEN: Brits en Iers gekweekte kip, rund & lever; kip 42%, rund 4% en lever 4%, pastinaak 3%, erwten 1%, zalmolie, plantaardige vezels, vitaminen & mineralen, cichoreiwortel, MOS.', true, now(), 'sha256:9c82b4c083215a8e3e9536be9407edf32ff62d386bdca4755beaf225f3292925', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Recipes in Gravy met kalkoen & tuinbouwgroenten (6 x 400 g / 12 x 400 g / 18 x 400 g (variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/recipes-in-gravy-6-pack-400g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Recipes in Gravy met kalkoen & tuinbouwgroenten', 'wet', '6 x 400 g / 12 x 400 g / 18 x 400 g (variatiepakken)', null, 'https://butchersdogfood.co.uk/product/recipes-in-gravy-6-pack-400g/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'MET KALKOEN & TUINBOUWGROENTEN: Brits en Iers gekweekte kip, kalkoen & lever; kip 42%, kalkoen 4% en lever 4%, wortelen 3%, pastinaak 1%, zalmolie, plantaardige vezels, vitaminen & mineralen, cichoreiwortel, MOS.', true, now(), 'sha256:3cbd4cb8593354ebc49c1fc603ade9620f12f0c03170be0e3b27f941c4be8315', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Recipes in Gravy met kip & tuinbouwgroenten (6 x 400 g / 12 x 400 g / 18 x 400 g (variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/recipes-in-gravy-6-pack-400g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Recipes in Gravy met kip & tuinbouwgroenten', 'wet', '6 x 400 g / 12 x 400 g / 18 x 400 g (variatiepakken)', null, 'https://butchersdogfood.co.uk/product/recipes-in-gravy-6-pack-400g/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'MET KIP & TUINBOUWGROENTEN: Brits en Iers gekweekte kip & lever; kip 46% en lever 4%, zoete aardappel 3%, erwten 1%, zalmolie, plantaardige vezels, vitaminen & mineralen, cichoreiwortel, MOS.', true, now(), 'sha256:d4333e0fabcba3a989eaba92ce29ba67d1331e301a6a19ec827b677a32747519', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Recipes in Jelly met lam & nier (6 x 400 g / 12 x 400 g / 18 x 400 g / 24 x 400 g (variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/recipes-in-jelly-6-pack-400g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Recipes in Jelly met lam & nier', 'wet', '6 x 400 g / 12 x 400 g / 18 x 400 g / 24 x 400 g (variatiepakken)', null, 'https://butchersdogfood.co.uk/product/recipes-in-jelly-6-pack-400g/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'MET LAM & NIER: Brits en Iers gekweekte kip, lam & nier; kip 42%, lam 4% en nier 4%, zalmolie, plantaardige vezels, vitaminen & mineralen, cichoreiwortel, MOS.', true, now(), 'sha256:66c6efb843b114308e75fecbabac46aecc5db9e4d2045d679e0fa935390d35da', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Recipes in Jelly met kip & lever (6 x 400 g / 12 x 400 g / 18 x 400 g / 24 x 400 g (variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/recipes-in-jelly-6-pack-400g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Recipes in Jelly met kip & lever', 'wet', '6 x 400 g / 12 x 400 g / 18 x 400 g / 24 x 400 g (variatiepakken)', null, 'https://butchersdogfood.co.uk/product/recipes-in-jelly-6-pack-400g/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'MET KIP & LEVER: Brits en Iers gekweekte kip & lever; kip 46% en lever 4%, zalmolie, plantaardige vezels, vitaminen & mineralen, cichoreiwortel, MOS.', true, now(), 'sha256:5c95c33e259f706314e8fb925a3a104e98691b23dfa92c46e7a9e628ec4453cd', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Recipes in Jelly met rund & lever (6 x 400 g / 12 x 400 g / 18 x 400 g / 24 x 400 g (variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/recipes-in-jelly-6-pack-400g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Recipes in Jelly met rund & lever', 'wet', '6 x 400 g / 12 x 400 g / 18 x 400 g / 24 x 400 g (variatiepakken)', null, 'https://butchersdogfood.co.uk/product/recipes-in-jelly-6-pack-400g/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'MET RUND & LEVER: Brits en Iers gekweekte kip, rund & lever; kip 42%, rund 4% en lever 4%, zalmolie, plantaardige vezels, vitaminen & mineralen, cichoreiwortel, MOS.', true, now(), 'sha256:115de07e42c681969b946ad23764742169517af216342d134a73f1293272395f', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Recipes in Jelly met pens (variatiepak) (24 x 400 g (variatiepak))
-- bron: https://butchersdogfood.co.uk/product/variety-recipes-in-jelly-24-pack-400g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Recipes in Jelly met pens (variatiepak)', 'wet', '24 x 400 g (variatiepak)', null, 'https://butchersdogfood.co.uk/product/variety-recipes-in-jelly-24-pack-400g/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'MET PENS: Brits en Iers gekweekte kip, pens & lever; kip 42%, pens 4% en lever 4%, zalmolie, plantaardige vezels, vitaminen & mineralen, cichoreiwortel, MOS.', true, now(), 'sha256:9b0109339827b23e27c8fdf8c88ac5b9534606f7f6652ee5c53b84b93bd226bd', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Puppy Perfect met kip (blik) (6 x 400 g / 18 x 400 g / 24 x 400 g (variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/puppy-perfect-6-pack-400g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Puppy Perfect met kip (blik)', 'wet', '6 x 400 g / 18 x 400 g / 24 x 400 g (variatiepakken)', null, 'https://butchersdogfood.co.uk/product/puppy-perfect-6-pack-400g/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Met kip: Brits en Iers gekweekte kip & lever; kip 50% en lever 5%, zalmolie 0,2%, plantaardige vezels 0,2%, algenolie (een bron van DHA), vitaminen & mineralen, cichoreiwortel 0,02%, MOS 0,02%', true, now(), 'sha256:73bd1f444608f97eb918b0499ffef0aebefa3c01cc4f30f8707d81e49f4b6c8c', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Puppy Perfect met rund (blik) (6 x 400 g / 18 x 400 g / 24 x 400 g (variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/puppy-perfect-6-pack-400g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Puppy Perfect met rund (blik)', 'wet', '6 x 400 g / 18 x 400 g / 24 x 400 g (variatiepakken)', null, 'https://butchersdogfood.co.uk/product/puppy-perfect-6-pack-400g/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Met rund: Brits en Iers gekweekte kip & rund; kip 50% en rund 5%, zalmolie 0,2%, plantaardige vezels 0,2%, algenolie (een bron van DHA), vitaminen & mineralen, cichoreiwortel 0,02%, MOS 0,02%.', true, now(), 'sha256:164aedfb719f7df1e4b3ebd33f31dd481c136fa85a2e035c5effbce9911d81a0', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Puppy Perfect met lam (blik) (6 x 400 g / 18 x 400 g / 24 x 400 g (variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/puppy-perfect-6-pack-400g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Puppy Perfect met lam (blik)', 'wet', '6 x 400 g / 18 x 400 g / 24 x 400 g (variatiepakken)', null, 'https://butchersdogfood.co.uk/product/puppy-perfect-6-pack-400g/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Met lam: Brits en Iers gekweekte kip & lam; kip 50% en lam 5%, zalmolie 0,2%, plantaardige vezels 0,2%, algenolie (een bron van DHA), vitaminen & mineralen, cichoreiwortel 0,02%, MOS 0,02%.', true, now(), 'sha256:071d07487fd5583363128cceab7452f564b654c72b82ff7ddb4eada7131400ee', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Puppy Perfect met kip (tray) (4 x 150 g / 24 x 150 g (variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/puppy-perfect-4-pack-150g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Puppy Perfect met kip (tray)', 'wet', '4 x 150 g / 24 x 150 g (variatiepakken)', null, 'https://butchersdogfood.co.uk/product/puppy-perfect-4-pack-150g/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Met kip: Brits en Iers gekweekte kip & lever; kip & kippenbouillon 60%, rund 10%, zalmolie 0,2%, plantaardige vezels 0,2%, algenolie (een bron van DHA), vitaminen & mineralen, cichoreiwortel 0,02%, MOS 0,02%.', true, now(), 'sha256:5d716f0f77fb952a6c2d4b2cb8967fb6e9a3d7e9d8df96ada1b4285436e33c3f', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Puppy Perfect met rund (tray) (4 x 150 g / 24 x 150 g (variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/puppy-perfect-4-pack-150g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Puppy Perfect met rund (tray)', 'wet', '4 x 150 g / 24 x 150 g (variatiepakken)', null, 'https://butchersdogfood.co.uk/product/puppy-perfect-4-pack-150g/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Met rund: Brits & Iers gekweekte kip & rund; kip 38% en rund & rundbouillon 32%, zalmolie 0,2%, plantaardige vezels 0,2%, algenolie (een bron van DHA), vitaminen & mineralen, cichoreiwortel 0,02%, MOS 0,02%.', true, now(), 'sha256:1024c513ddfd5b9d5e8e54a3b15cd3141b6833905bdfd39575d01e67ddbf74a4', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Puppy Perfect met kalkoen (tray) (4 x 150 g / 24 x 150 g (variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/puppy-perfect-4-pack-150g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Puppy Perfect met kalkoen (tray)', 'wet', '4 x 150 g / 24 x 150 g (variatiepakken)', null, 'https://butchersdogfood.co.uk/product/puppy-perfect-4-pack-150g/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Met kalkoen: Brits & Iers gekweekte kip, kalkoen & rund; kip 30%, kalkoen & kalkoenbouillon 30% en rund 10%, zalmolie 0,2%, plantaardige vezels 0,2%, algenolie (een bron van DHA), vitaminen & mineralen, cichoreiwortel 0,02%, MOS 0,02%.', true, now(), 'sha256:d30dab51f9c14d6feaf09c0447a579fed9b32350d1244d9f848d9bea97567b3d', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Healthy Heart met zalm & groenten (6 x 390 g / 12 x 390 g / 18 x 390 g (blik) / 12 x 150 g / 24 x 150 g (trays; variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/healthy-heart-6-pack-can-390g-new/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Healthy Heart met zalm & groenten', 'wet', '6 x 390 g / 12 x 390 g / 18 x 390 g (blik) / 12 x 150 g / 24 x 150 g (trays; variatiepakken)', null, 'https://butchersdogfood.co.uk/product/healthy-heart-6-pack-can-390g-new/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Brits & Iers gekweekte kip & rund en zalm: kip 39%, zalm & zalmbouillon 26% en rund 5%, broccoli 2%, butternutpompoen 2%, Healthy Heart-mengsel 2800mg/kg* * Healthy Heart-mengsel 2800mg/kg (incl. algenolie 200mg/kg, groene thee-extract, vitaminen & mineralen).', true, now(), 'sha256:c715a54157150b258154b92ef44b6f1c6f6e2762fcbbd8a5ba35368e0210b6ea', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Healthy Heart met forel & groenten (6 x 390 g / 12 x 390 g / 18 x 390 g (blik) / 12 x 150 g / 24 x 150 g (trays; variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/healthy-heart-6-pack-can-390g-new/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Healthy Heart met forel & groenten', 'wet', '6 x 390 g / 12 x 390 g / 18 x 390 g (blik) / 12 x 150 g / 24 x 150 g (trays; variatiepakken)', null, 'https://butchersdogfood.co.uk/product/healthy-heart-6-pack-can-390g-new/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Brits & Iers gekweekte kip & rund en forel: kip 39%, forel & forelbouillon 26% en rund 5%, zoete aardappel 2%, spinazie 2%, Healthy Heart-mengsel 2800mg/kg* * Healthy Heart-mengsel 2800mg/kg (incl. algenolie 200mg/kg, groene thee-extract, vitaminen & mineralen).', true, now(), 'sha256:bde9531a36cbd7b4add590c612046c47cb49e330f7a09718535604e50075bd6d', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Healthy Heart met kalkoen & groenten (6 x 390 g / 12 x 390 g / 18 x 390 g (blik) / 12 x 150 g / 24 x 150 g (trays; variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/healthy-heart-6-pack-can-390g-new/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Healthy Heart met kalkoen & groenten', 'wet', '6 x 390 g / 12 x 390 g / 18 x 390 g (blik) / 12 x 150 g / 24 x 150 g (trays; variatiepakken)', null, 'https://butchersdogfood.co.uk/product/healthy-heart-6-pack-can-390g-new/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Brits & Iers gekweekte kip, kalkoen & rund: kip 39%, kalkoen & kalkoenbouillon 26% en rund 5%, butternutpompoen 2%, spinazie 2%, Healthy Heart-mengsel 2800mg/kg* * Healthy Heart-mengsel 2800mg/kg (incl. algenolie 200mg/kg, groene thee-extract, vitaminen & mineralen).', true, now(), 'sha256:e4997108f586615b2cc3841b2c9a52f9aed0aee1abfbfa1a2191bd061372b20f', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Joints & Coat met kip (6 x 390 g / 12 x 390 g / 18 x 390 g (blik) / 12 x 150 g / 24 x 150 g (trays; variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/joints-coat-6-pack-390g-2/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Joints & Coat met kip', 'wet', '6 x 390 g / 12 x 390 g / 18 x 390 g (blik) / 12 x 150 g / 24 x 150 g (trays; variatiepakken)', null, 'https://butchersdogfood.co.uk/product/joints-coat-6-pack-390g-2/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'MET KIP: 70% Brits & Iers gekweekte kip & rund: kip & kippenbouillon 60% en rund 10%, Joints & Coat-mengsel 14.000mg/kg* * Joints & Coat-mengsel 14.000mg/kg (incl. Omega-mengsel 12.000mg/kg (zalmolie, algenolie), glucosamine, groenlipmossel 100mg/kg, chondroïtine, kurkuma 10mg/kg, vitaminen & mineralen).', true, now(), 'sha256:aab92ea959cccc7f80bd1ea1af53eb502a46e33c45e5d36af63a9fa1facba1fd', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Joints & Coat met zalm (6 x 390 g / 12 x 390 g / 18 x 390 g (blik) / 12 x 150 g / 24 x 150 g (trays; variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/joints-coat-6-pack-390g-2/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Joints & Coat met zalm', 'wet', '6 x 390 g / 12 x 390 g / 18 x 390 g (blik) / 12 x 150 g / 24 x 150 g (trays; variatiepakken)', null, 'https://butchersdogfood.co.uk/product/joints-coat-6-pack-390g-2/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'MET ZALM: 70% Brits & Iers gekweekte kip & rund en zalm: kip 34%, zalm & zalmbouillon 26% en rund 10%, Joints & Coat-mengsel 14.000mg/kg* * Joints & Coat-mengsel 14.000mg/kg (incl. Omega-mengsel 12.000mg/kg (zalmolie, algenolie), glucosamine, groenlipmossel 100mg/kg, chondroïtine, kurkuma 10mg/kg, vitaminen & mineralen).', true, now(), 'sha256:e0bf74798ec21fee4e075b6485584796a60334a1801ef7243cce8d2421ab4c09', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Joints & Coat met kalkoen (6 x 390 g / 12 x 390 g / 18 x 390 g (blik) / 12 x 150 g / 24 x 150 g (trays; variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/joints-coat-6-pack-390g-2/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Joints & Coat met kalkoen', 'wet', '6 x 390 g / 12 x 390 g / 18 x 390 g (blik) / 12 x 150 g / 24 x 150 g (trays; variatiepakken)', null, 'https://butchersdogfood.co.uk/product/joints-coat-6-pack-390g-2/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'MET KALKOEN: 70% Brits & Iers gekweekte kip, kalkoen & rund: kip 34%, kalkoen & kalkoenbouillon 26% en rund 10%, Joints & Coat-mengsel 14.000mg/kg* * Joints & Coat-mengsel 14.000mg/kg (incl. Omega-mengsel 12.000mg/kg (zalmolie, algenolie), glucosamine, groenlipmossel 100mg/kg, chondroïtine, kurkuma 10mg/kg, vitaminen & mineralen).', true, now(), 'sha256:47a7c8fe6a86b794b8032be87a4f64a25b9aee4d8216a5dd103bd9381a019503', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Lean & Tasty met kip, rijst & groenten (blik) (6 x 390 g / 12 x 390 g / 18 x 390 g (variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/lean-tasty-6-pack-390g-2/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Lean & Tasty met kip, rijst & groenten (blik)', 'wet', '6 x 390 g / 12 x 390 g / 18 x 390 g (variatiepakken)', null, 'https://butchersdogfood.co.uk/product/lean-tasty-6-pack-390g-2/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'MET KIP: 70% Brits & Iers gekweekte kip & rund: kip & kippenbouillon 60% en rund 10%, Lean & Tasty-vezelmengsel 8,2%, (incl. volkoren rijst 4%, wortelen 2%, erwten 2%, plantaardige vezels 0,2%), vitaminen & mineralen', true, now(), 'sha256:3ca55147ba8d1763424ba76294d1594d6e0ad134bbe7c50adb7d8cfbb21ac0cc', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Lean & Tasty met rund, rijst & groenten (blik) (6 x 390 g / 12 x 390 g / 18 x 390 g (variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/lean-tasty-6-pack-390g-2/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Lean & Tasty met rund, rijst & groenten (blik)', 'wet', '6 x 390 g / 12 x 390 g / 18 x 390 g (variatiepakken)', null, 'https://butchersdogfood.co.uk/product/lean-tasty-6-pack-390g-2/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'MET RUND: 70% Brits & Iers gekweekte kip & rund: kip 36% en rund & rundbouillon 34%, Lean & Tasty-vezelmengsel 8,2%, (incl. volkoren rijst 4%, wortelen 2%, sperziebonen 2%, plantaardige vezels 0,2%), vitaminen & mineralen', true, now(), 'sha256:b9f06bfa312df133bfabdbe6a4bd9e9752ee5214d28c58a5a78f9306252192c0', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Lean & Tasty met kalkoen, rijst & groenten (blik) (6 x 390 g / 12 x 390 g / 18 x 390 g (variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/lean-tasty-6-pack-390g-2/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Lean & Tasty met kalkoen, rijst & groenten (blik)', 'wet', '6 x 390 g / 12 x 390 g / 18 x 390 g (variatiepakken)', null, 'https://butchersdogfood.co.uk/product/lean-tasty-6-pack-390g-2/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'MET KALKOEN: 70% Brits & Iers gekweekte kip, kalkoen & rund: kip 34%, kalkoen & kalkoenbouillon 26% en rund 10%, Lean & Tasty-vezelmengsel 8,2%, (incl. wortelen 4%, volkoren rijst 4%, plantaardige vezels 0,2%), vitaminen & mineralen.', true, now(), 'sha256:6315d20b024f2a7b5f1ba5c2a0d7f958b91dc8511ff8b8a977a8b7b569ba0b3d', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Lean & Tasty met kip, rijst & groenten (tray) (12 x 150 g / 24 x 150 g (variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/lean-tasty-12-pack-150g-2/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Lean & Tasty met kip, rijst & groenten (tray)', 'wet', '12 x 150 g / 24 x 150 g (variatiepakken)', null, 'https://butchersdogfood.co.uk/product/lean-tasty-12-pack-150g-2/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'MET KIP: 70% Brits & Iers gekweekte kip & rund: kip & kippenbouillon 45% en rund 25%, Lean & Tasty-vezelmengsel 8,2%, (incl. volkoren rijst 4%, wortelen 2%, erwten 2%, plantaardige vezels 0,2%), vitaminen & mineralen', true, now(), 'sha256:5a63c9c729ad41a6a366c69b29dbe5e127e5f2470f9b547990f638ba1d558780', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Lean & Tasty met rund, rijst & groenten (tray) (12 x 150 g / 24 x 150 g (variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/lean-tasty-12-pack-150g-2/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Lean & Tasty met rund, rijst & groenten (tray)', 'wet', '12 x 150 g / 24 x 150 g (variatiepakken)', null, 'https://butchersdogfood.co.uk/product/lean-tasty-12-pack-150g-2/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'MET RUND: 70% Brits & Iers gekweekte rund & kip: rund & rundbouillon 45% en kip 25%, Lean & Tasty-vezelmengsel 8,2%, (incl. volkoren rijst 4%, wortelen 2%, sperziebonen 2%, plantaardige vezels 0,2%), vitaminen & mineralen.', true, now(), 'sha256:cfa8fdc68158f8962a7a1ee3c317409be4996d11e465e8715a186eadab5b663f', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Lean & Tasty met kalkoen, rijst & groenten (tray) (12 x 150 g / 24 x 150 g (variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/lean-tasty-12-pack-150g-2/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Lean & Tasty met kalkoen, rijst & groenten (tray)', 'wet', '12 x 150 g / 24 x 150 g (variatiepakken)', null, 'https://butchersdogfood.co.uk/product/lean-tasty-12-pack-150g-2/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'MET KALKOEN: 70% Brits & Iers gekweekte kalkoen, kip & rund: kalkoen & kalkoenbouillon 30%, kip 20% en rund 20%, Lean & Tasty-vezelmengsel 8,2%, (incl. wortelen 4%, volkoren rijst 4%, plantaardige vezels 0,2%), vitaminen & mineralen.', true, now(), 'sha256:9207a8de920d569916455d5dc2035b9ea2bfd668b89b5891d2cf9173b05bd58c', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Simply Gentle met kip (blik) (6 x 390 g / 12 x 390 g / 18 x 390 g (variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/simply-gentle-6-pack-390g-2/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Simply Gentle met kip (blik)', 'wet', '6 x 390 g / 12 x 390 g / 18 x 390 g (variatiepakken)', null, 'https://butchersdogfood.co.uk/product/simply-gentle-6-pack-390g-2/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'MET KIP: 70% Brits & Iers gekweekte kip & rund: kip & kippenbouillon 65% en rund 5%, gekookte volkoren rijst 4%, Simply Gentle-mengsel 5600mg/kg* *Simply Gentle-mengsel 5600mg/kg (incl. gist (prebiotische MOS 500mg/kg & bèta-glucanen), cichoreiwortel (prebiotische FOS) 600mg/kg, gember, pepermunt, vitaminen & mineralen).', true, now(), 'sha256:db720a9efd6975b16607423b0b10e6d49d8208a6d7c1bf421474919235c3b6c4', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Simply Gentle met zalm (blik) (6 x 390 g / 12 x 390 g / 18 x 390 g (variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/simply-gentle-6-pack-390g-2/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Simply Gentle met zalm (blik)', 'wet', '6 x 390 g / 12 x 390 g / 18 x 390 g (variatiepakken)', null, 'https://butchersdogfood.co.uk/product/simply-gentle-6-pack-390g-2/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'MET ZALM: 70% Brits & Iers gekweekte kip & rund en zalm: kip 39%, zalm & zalmbouillon 26%, en rund 5%, gekookte volkoren rijst 4%, Simply Gentle-mengsel 5600mg/kg* *Simply Gentle-mengsel 5600mg/kg (incl. gist (prebiotische MOS 500mg/kg & bèta-glucanen), cichoreiwortel (prebiotische FOS) 600mg/kg, gember, pepermunt, vitaminen & mineralen).', true, now(), 'sha256:12c79690dba5ab1de95a607ca302adb38c714b2087b316b943645f02a288f6ae', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Simply Gentle met kalkoen (blik) (6 x 390 g / 12 x 390 g / 18 x 390 g (variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/simply-gentle-6-pack-390g-2/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Simply Gentle met kalkoen (blik)', 'wet', '6 x 390 g / 12 x 390 g / 18 x 390 g (variatiepakken)', null, 'https://butchersdogfood.co.uk/product/simply-gentle-6-pack-390g-2/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'MET KALKOEN: 70% Brits & Iers gekweekte kip, kalkoen & rund: kip 39%, kalkoen & kalkoenbouillon 26% en rund 5%, gekookte volkoren rijst 4%, Simply Gentle-mengsel 5600mg/kg * *Simply Gentle-mengsel 5600mg/kg (incl. gist (prebiotische MOS 500mg/kg & bèta-glucanen), cichoreiwortel (prebiotische FOS) 600mg/kg, gember, pepermunt, vitaminen & mineralen).', true, now(), 'sha256:75ffbc5891130bfe94f84db617b867ded8b94bd7dd6a8b7472afb6b411c653f9', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Simply Gentle met kip (tray) (12 x 150 g / 24 x 150 g (variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/simply-gentle-12-pack-150g-2/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Simply Gentle met kip (tray)', 'wet', '12 x 150 g / 24 x 150 g (variatiepakken)', null, 'https://butchersdogfood.co.uk/product/simply-gentle-12-pack-150g-2/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'MET KIP: 70% Brits & Iers gekweekte kip & rund: kip & kippenbouillon 60% en rund 10%, gekookte volkoren rijst 6%, Simply Gentle-mengsel 5600mg/kg* *Simply Gentle-mengsel 5600mg/kg (incl. gist (prebiotische MOS 500mg/kg & bèta-glucanen), cichoreiwortel (prebiotische FOS) 600mg/kg, gember, pepermunt, vitaminen & mineralen).', true, now(), 'sha256:489c54e6a0d4eb2a1c243fb461bd7ffaff6712ac492308f7b00c8adebfd0c39f', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Simply Gentle met zalm (tray) (12 x 150 g / 24 x 150 g (variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/simply-gentle-12-pack-150g-2/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Simply Gentle met zalm (tray)', 'wet', '12 x 150 g / 24 x 150 g (variatiepakken)', null, 'https://butchersdogfood.co.uk/product/simply-gentle-12-pack-150g-2/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'MET ZALM: 70% Brits & Iers gekweekte kip & rund en zalm: zalm & zalmbouillon 30%, kip 30% en rund 10%, gekookte volkoren rijst 6%, Simply Gentle-mengsel 5600mg/kg* *Simply Gentle-mengsel 5600mg/kg (incl. gist (prebiotische MOS 500mg/kg & bèta-glucanen), cichoreiwortel (prebiotische FOS) 600mg/kg, gember, pepermunt, vitaminen & mineralen).', true, now(), 'sha256:db969b920fc25fe0c6f191772ff7a34fae47939d31b6994d2a6eab8b4751e3ed', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Simply Gentle met kalkoen (tray) (12 x 150 g / 24 x 150 g (variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/simply-gentle-12-pack-150g-2/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Simply Gentle met kalkoen (tray)', 'wet', '12 x 150 g / 24 x 150 g (variatiepakken)', null, 'https://butchersdogfood.co.uk/product/simply-gentle-12-pack-150g-2/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'MET KALKOEN: 70% Brits & Iers gekweekte kalkoen, kip & rund: kalkoen & kalkoenbouillon 30%, kip 30% en rund 10%, gekookte volkoren rijst 6%, Simply Gentle-mengsel 5600mg/kg* *Simply Gentle-mengsel 5600mg/kg (incl. gist (prebiotische MOS 500mg/kg & bèta-glucanen), cichoreiwortel (prebiotische FOS) 600mg/kg, gember, pepermunt, vitaminen & mineralen).', true, now(), 'sha256:576c3191419105f9d48975b7de33a793381cd766975b5442d01d53d44eb2cc98', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Succulent Recipes met kip & lever (4 x 150 g / 12 x 150 g / 24 x 150 g (variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/succulent-recipes-4-pack-150g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Succulent Recipes met kip & lever', 'wet', '4 x 150 g / 12 x 150 g / 24 x 150 g (variatiepakken)', null, 'https://butchersdogfood.co.uk/product/succulent-recipes-4-pack-150g/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Met kip & lever: Brits & Iers gekweekte kip, rund & lever; kip & kippenbouillon 45%, rund 11,5% en lever 8,5%, zalmolie, plantaardige vezels, vitaminen & mineralen, cichoreiwortel, MOS.', true, now(), 'sha256:fba7d503c924ef7a2c15772254e0d9176f84d8f9ba2f35416f4ab4055d2b8c2c', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Succulent Recipes met lam & nier (4 x 150 g / 12 x 150 g / 24 x 150 g (variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/succulent-recipes-4-pack-150g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Succulent Recipes met lam & nier', 'wet', '4 x 150 g / 12 x 150 g / 24 x 150 g (variatiepakken)', null, 'https://butchersdogfood.co.uk/product/succulent-recipes-4-pack-150g/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Met lam & nier: Brits & Iers gekweekte kip, lam & nier; kip 33,5%, lam & lambouillon 26% en nier 5,5%, zalmolie 0,2%, plantaardige vezels 0,2%, vitaminen & mineralen, cichoreiwortel 0,02%, MOS 0,02%.', true, now(), 'sha256:397d035e64f69e10a76bbe4f3c6d74f4e6aba0ed61b4ea9d564d07c0d0d87d94', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Succulent Recipes met rund & lever (4 x 150 g / 12 x 150 g / 24 x 150 g (variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/succulent-recipes-4-pack-150g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Succulent Recipes met rund & lever', 'wet', '4 x 150 g / 12 x 150 g / 24 x 150 g (variatiepakken)', null, 'https://butchersdogfood.co.uk/product/succulent-recipes-4-pack-150g/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Met rund & lever: Brits & Iers gekweekte kip, rund & lever; kip 30,5%, rund & rundbouillon 26% en lever 8,5%, zalmolie, plantaardige vezels, vitaminen & mineralen, cichoreiwortel, MOS.', true, now(), 'sha256:ab0a79b3fd9c7fb9a20fd213b19852e18bb9e3b1aeb5e2fe1cb618439ab55d45', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Traditional Recipes met lam & groenten (4-pack) (4 x 150 g (variatiepak))
-- bron: https://butchersdogfood.co.uk/product/traditional-recipes-4-pack-150g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Traditional Recipes met lam & groenten (4-pack)', 'wet', '4 x 150 g (variatiepak)', null, 'https://butchersdogfood.co.uk/product/traditional-recipes-4-pack-150g/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Met lam & groenten: Brits & Iers gekweekt (kip 25%, rund 17%, lam 8%), zoete aardappel 3%, erwten 1%, zalmolie, peterselie, rozenbottel, cichorei, munt, mineralen.', true, now(), 'sha256:539b8e883014745ce7eea77635af227f37aaecaf5c5dadff2874d3edb6d90339', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Traditional Recipes met kalkoen & groenten (4-pack) (4 x 150 g (variatiepak))
-- bron: https://butchersdogfood.co.uk/product/traditional-recipes-4-pack-150g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Traditional Recipes met kalkoen & groenten (4-pack)', 'wet', '4 x 150 g (variatiepak)', null, 'https://butchersdogfood.co.uk/product/traditional-recipes-4-pack-150g/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Met kalkoen & groenten: Brits & Iers gekweekt (kip 26%, kalkoen 14%, rund 10%), wortelen 3%, erwten 1%, zalmolie, peterselie, rozenbottel, cichorei, munt, mineralen.', true, now(), 'sha256:ee2f60d0fd121884f1d1e948a56ef642a45837d43a87b8f4e3881d29623ca5eb', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Traditional Recipes met rund & groenten (4-pack) (4 x 150 g (variatiepak))
-- bron: https://butchersdogfood.co.uk/product/traditional-recipes-4-pack-150g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Traditional Recipes met rund & groenten (4-pack)', 'wet', '4 x 150 g (variatiepak)', null, 'https://butchersdogfood.co.uk/product/traditional-recipes-4-pack-150g/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Met rund & groenten: Brits & Iers gekweekt (kip 28%, rund 22%), wortelen 3%, erwten 1%, zalmolie, peterselie, rozenbottel, cichorei, munt, mineralen.', true, now(), 'sha256:175582a0380741454451291130c85de24669469f7dae5938cff94fd5bde4d891', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Traditional Recipes met lam & erwten (12/24-pack) (12 x 150 g / 24 x 150 g (variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/traditional-recipes-12-pack-150g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Traditional Recipes met lam & erwten (12/24-pack)', 'wet', '12 x 150 g / 24 x 150 g (variatiepakken)', null, 'https://butchersdogfood.co.uk/product/traditional-recipes-12-pack-150g/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Met lam & erwten: Brits & Iers gekweekte kip, lam & rund; kip 30,5%, lam & lambouillon 26% en rund 8,5%, erwten 4%, zalmolie, plantaardige vezels, vitaminen & mineralen, cichoreiwortel, MOS.', true, now(), 'sha256:c6003a98404c462e6c28ce223496015dc18e52d1642be1d6a9705d974194506a', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Traditional Recipes met kalkoen & wortelen (12/24-pack) (12 x 150 g / 24 x 150 g (variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/traditional-recipes-12-pack-150g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Traditional Recipes met kalkoen & wortelen (12/24-pack)', 'wet', '12 x 150 g / 24 x 150 g (variatiepakken)', null, 'https://butchersdogfood.co.uk/product/traditional-recipes-12-pack-150g/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Met kalkoen & wortelen: Brits & Iers gekweekte kip, kalkoen & rund; kip 30,5%, kalkoen & kalkoenbouillon 26% en rund 8,5%, wortelen 4%, zalmolie, plantaardige vezels, vitaminen & mineralen, cichoreiwortel, MOS.', true, now(), 'sha256:d62ea65fccfab32eb9b10c861906f14f8e07c1c3d2eba0ac8da9a5d3f32c1279', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Traditional Recipes met rund & groenten (12/24-pack) (12 x 150 g / 24 x 150 g (variatiepakken))
-- bron: https://butchersdogfood.co.uk/product/traditional-recipes-12-pack-150g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Traditional Recipes met rund & groenten (12/24-pack)', 'wet', '12 x 150 g / 24 x 150 g (variatiepakken)', null, 'https://butchersdogfood.co.uk/product/traditional-recipes-12-pack-150g/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Met rund & groenten: Brits & Iers gekweekte kip & rund; kip 39% en rund & rundbouillon 26%, wortelen 3%, erwten 1,5%, zalmolie, plantaardige vezels, vitaminen & mineralen, cichoreiwortel, MOS.', true, now(), 'sha256:5ac7f67b323ef7d15119a0c878bbc5f51b876268904cfde1e6fe0c760ceb069b', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Recovery & Revive met kip (blik) (400 g / 18 x 390 g)
-- bron: https://butchersdogfood.co.uk/product/recovery-revive-single-can-400g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Recovery & Revive met kip (blik)', 'wet', '400 g / 18 x 390 g', null, 'https://butchersdogfood.co.uk/product/recovery-revive-single-can-400g/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'MET KIP: Brits en Iers gekweekte kip 50%, bouillon 39,5%; incl. water en gedroogd zeewier, gekookte witte rijst 7,5%, zalmolie 1%, mineralen, gist 0,15%; incl. prebiotische MOS 0,05% en bèta-glucanen 0,045%, cichoreiwortel; prebiotische FOS 0,06%, yucca 0,005%, paraprobiotische Lactobacillus helveticus 0,001%', true, now(), 'sha256:c20cc372596141c38df7ea8e69d3fd557558261852800c959e16e642b5ef55ab', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Butcher's — Recovery & Revive met kip (tray) (4 x 150 g)
-- bron: https://butchersdogfood.co.uk/product/recovery-revive-4-pack-150g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Butcher''s', 'Recovery & Revive met kip (tray)', 'wet', '4 x 150 g', null, 'https://butchersdogfood.co.uk/product/recovery-revive-4-pack-150g/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'MET KIP: Brits en Iers gekweekte kip 51%, bouillon 33,5%; incl. water en gedroogd zeewier, gekookte witte rijst 12,5%, zalmolie 1%, mineralen, gist 0,15%; incl. prebiotische MOS 0,05% en bèta-glucanen 0,045%, cichoreiwortel; prebiotische FOS 0,06%, yucca 0,005%, paraprobiotische Lactobacillus helveticus 0,001%', true, now(), 'sha256:10b1823a5b0c850a6767f104b7f57339548d74d18e12522cedc14a79cead31b0', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Canagan — Vrije-uitloopkip (2 / 6 / 12 kg)
-- bron: https://canagan.com/nl/hondenvoer/vrije-uitloopkip-droog-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Vrije-uitloopkip', 'kibble', '2 / 6 / 12 kg', null, 'https://canagan.com/nl/hondenvoer/vrije-uitloopkip-droog-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide vrije uitloop kip (26%), gedroogde kip (26%), zoete aardappel, erwten, aardappel, kippenvet (4,2%), alfalfa, gedroogd ei (3%), kippenjus (1,5%), zalmolie (1,2%), glucosamine (830 mg/kg), appel, MS:M (830 mg/kg), wortel, fructooligosachariden, spinazie, psyllium, zeewier, chondroïtinesulfaat (610 mg/kg), pepermunt, kamille, goudsbloem, veenbes, anijs en fenegriek.', true, now(), 'sha256:3fde6e09c5f6f014de60ed0ac6889d58b10a17b01f59d199fcf17a4db9271fa1', null from p;

-- Canagan — Vrije-uitloopkip Grote Rassen (2 / 12 kg)
-- bron: https://canagan.com/nl/hondenvoer/vrije-uitloopkip-grote-rassen-droog-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Vrije-uitloopkip Grote Rassen', 'kibble', '2 / 12 kg', null, 'https://canagan.com/nl/hondenvoer/vrije-uitloopkip-grote-rassen-droog-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide vrije uitloop kip (26%), gedroogde kip (26%), zoete aardappel, erwten, aardappel, kippenvet (4,2%), alfalfa, gedroogd ei (3%), kippenjus (1,5%), mineralen, zalmolie (1,2%), glucosamine (1.450 mg/kg), appel, MSM (1.450 mg/kg), wortel, fructooligosachariden, spinazie, psyllium, zeewier, chondroïtinesulfaat (1.060 mg/kg), pepermunt, kamille, goudsbloem, veenbes, anijs & fenegriek.', true, now(), 'sha256:5e0e9d5e48dcf8272f5b387d26f9dcebdadf348dc37ff0a29b6a92e2aacefa05', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
