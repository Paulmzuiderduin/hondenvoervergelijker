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
-- Automatisch overgenomen etiketten, batch 2 van 2026-10-21 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site zegt daarna:
-- "automatisch overgenomen van <domein> op <datum> · nog niet door een mens
-- nagelopen". Er wordt hier geen enkele controle door een mens geclaimd.
begin;

-- Canagan — Vrije-uitloopkip Kleine Rassen (2 / 6 kg)
-- bron: https://canagan.com/nl/hondenvoer/vrije-uitloopkip-kleine-rassen-droog-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Vrije-uitloopkip Kleine Rassen', 'kibble', '2 / 6 kg', null, 'https://canagan.com/nl/hondenvoer/vrije-uitloopkip-kleine-rassen-droog-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide vrije uitloop kip (26%), gedroogde kip (26%), zoete aardappel, erwten, aardappel, kippenvet (4,2%), alfalfa, gedroogd ei (3%), kippenjus (1,5%), zalmolie (1,2%), glucosamine (830 mg/kg), appel, MSM (830 mg/kg), wortel, fructooligosachariden, spinazie, psyllium, zeewier, chondroïtinesulfaat (610 mg/kg), pepermunt, kamille, goudsbloem, veenbes, anijs en fenegriek.', true, now(), 'sha256:f3533b5d6391d772ccf4ee9c8703b07b86cd3b72015f5b8fb00595b0ae87a8f1', null from p;

-- Canagan — Vrije-uitloopkip Light / Senior (2 / 6 kg)
-- bron: https://canagan.com/nl/hondenvoer/vrije-uitloopkip-light-senior-droog-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Vrije-uitloopkip Light / Senior', 'kibble', '2 / 6 kg', null, 'https://canagan.com/nl/hondenvoer/vrije-uitloopkip-light-senior-droog-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide vrije-uitloopkip (27%), gedroogde kip (27%), zoete aardappel, aardappel, erwten, luzerne, gedroogd ei (3%), kippenvet (1,5%), kippenjus (1,5%), mineralen, glucosamine (1.700 mg/kg), MSM (1.700 mg/kg), chondroïtinesulfaat (1.200 mg/kg), appel, wortel, spinazie, psyllium, zeewier, fructo-oligosacchariden, kamille, pepermunt, goudsbloem, cranberry, anijszaad en fenegriek.', true, now(), 'sha256:35e379c6649f8db4cfb4fea229705433dd4d68661e02ea4c42a1abdfc65a750d', null from p;

-- Canagan — Grasgevoerd Lam (2 / 6 kg)
-- bron: https://canagan.com/nl/hondenvoer/grasgevoerd-lam-droog-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Grasgevoerd Lam', 'kibble', '2 / 6 kg', null, 'https://canagan.com/nl/hondenvoer/grasgevoerd-lam-droog-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereid lamsvlees (47.8%), zoete aardappel, erwten, gedroogd lamsvlees (8%), aardappeleiwit, aardappel, zalmolie (2,7%), lamsjus (1%), alfalfa, gedroogd ei (0. 5%), mineralen, appel, wortel, glucosamine (570 mg/kg), MSM (570 mg/kg), fructooligosachariden, spinazie, psyllium, zeewier, chondroïtinesulfaat (410 mg/kg), pepermunt, kamille, goudsbloem, veenbes, anijs & fenegriek.', true, now(), 'sha256:12ba3900265a837ca14416691e935991209ad471c89371687bc4698fe084d0e6', null from p;

-- Canagan — Schotse Zalm (2 / 6 kg)
-- bron: https://canagan.com/nl/hondenvoer/schotse-zalm-droog-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Schotse Zalm', 'kibble', '2 / 6 kg', null, 'https://canagan.com/nl/hondenvoer/schotse-zalm-droog-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers Bereide Schotse Zalm (30,5%), Zoete Aardappel, Gedroogde Haring (12,2%), Erwten, Aardappel, Vers Bereide Forel (6,6%), Gedroogde Zalm (5%), Alfalfa, Gedroogde Witte Vis (2%), Zalmolie (2%), Zalmbouillon (1,8%), Zonnebloemolie, Appel, Wortel, Zeewier, Fructooligosachariden, Spinazie, Psyllium, Kamille, Cranberry, Goudsbloem, Pepermunt, Anijs en Fenegriek.', true, now(), 'sha256:856dfc70ebbe3db280dea0a16bf2e2f8fe6fdf35b8cb21b5826c359da365266d', null from p;

-- Canagan — Schotse Zalm Kleine Rassen (2 / 6 kg)
-- bron: https://canagan.com/nl/hondenvoer/schotse-zalm-kleine-rassen-droog-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Schotse Zalm Kleine Rassen', 'kibble', '2 / 6 kg', null, 'https://canagan.com/nl/hondenvoer/schotse-zalm-kleine-rassen-droog-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers Bereide Schotse Zalm (30,5%), Zoete Aardappel, Gedroogde Haring (12,2%), Erwten, Aardappel, Vers Bereide Forel (6,6%), Gedroogde Zalm (5%), Alfalfa, Gedroogde Witte Vis (2%), Zalmolie (2%), Zalmbouillon (1,8%), Zonnebloemolie, Appel, Wortel, Zeewier, Fructooligosachariden, Spinazie, Psyllium, Kamille, Cranberry, Goudsbloem, Pepermunt, Anijs en Fenegriek.', true, now(), 'sha256:856dfc70ebbe3db280dea0a16bf2e2f8fe6fdf35b8cb21b5826c359da365266d', null from p;

-- Canagan — Wild (2 / 6 kg)
-- bron: https://canagan.com/nl/hondenvoer/wild-droog-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Wild', 'kibble', '2 / 6 kg', null, 'https://canagan.com/nl/hondenvoer/wild-droog-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers Bereide Eend (25,3%), Gedroogde Kalkoen (16,5%), Zoete Aardappel, Erwten, Gedroogde Eend (6%), Gedroogde Eieren (4,2%), Vers Bereid Hert (4%), Alfalfa, Gedroogde Haring (3%) , Kalkoenvet (3%), Zalmolie (1,7%), Kippenjus (1,7%), Aardappel, Glucosamine (780 mg/kg), Appel, MSM (780 mg/kg), Wortel, Fructo-Oligosacchariden, Spinazie, Psyllium, Zeewier, Chondroïtinesulfaat (570 Mg/Kg), Pepermunt, Kamille, Goudsbloem, Cranberry, Anijs En Fenegriek.', true, now(), 'sha256:9c21e287d8464d86e8b57a533e4ef68776954e679e9e9f8f083cd51d88deca7c', null from p;

-- Canagan — Wild Kleine Rassen (2 / 6 kg)
-- bron: https://canagan.com/nl/hondenvoer/wild-kleine-rassen-droog-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Wild Kleine Rassen', 'kibble', '2 / 6 kg', null, 'https://canagan.com/nl/hondenvoer/wild-kleine-rassen-droog-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers Bereide Eend (25,3%), Gedroogde Kalkoen (16,5%), Zoete Aardappel, Erwten, Gedroogde Eend (6%), Gedroogde Eieren (4,2%), Vers Bereid Hert (4%), Alfalfa, Gedroogde Haring (3%) , Kalkoenvet (3%), Zalmolie (1,7%), Kippenjus (1,7%), Aardappel, Glucosamine (780 mg/kg), Appel, MSM (780 mg/kg), Wortel, Fructo-Oligosacchariden, Spinazie, Psyllium, Zeewier, Chondroïtinesulfaat (570 Mg/Kg), Pepermunt, Kamille, Goudsbloem, Cranberry, Anijs En Fenegriek.', true, now(), 'sha256:9c21e287d8464d86e8b57a533e4ef68776954e679e9e9f8f083cd51d88deca7c', null from p;

-- Canagan — Dental (2 / 6 kg)
-- bron: https://canagan.com/nl/hondenvoer/dental-droog-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Dental', 'kibble', '2 / 6 kg', null, 'https://canagan.com/nl/hondenvoer/dental-droog-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide kalkoen (33%), gedroogde kip (18,7%), zoete aardappel, aardappel, erwten, kippenvet (4%), alfalfa, gedroogd ei (3,1%), erwteneiwit, kippenjus (1,6%), zalmolie (1,2%), mineralen, PlaqueOff (2.500 mg/kg), glucosamine (850 mg/kg), MSM (850 mg/kg), appel, wortel, fructooligosachariden, spinazie, psyllium, chondroïtinesulfaat (620mg/kg), pepermunt, kamille, goudsbloem, veenbes, peterselie, anijs & fenegriek.', true, now(), 'sha256:b16e5b97d2026737285e10827aa37ee6a7181257592bb15e1a5d39e3bb6cb8f7', null from p;

-- Canagan — Dental Kleine Rassen (2 / 6 kg)
-- bron: https://canagan.com/nl/hondenvoer/dental-kleine-rassen-droog-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Dental Kleine Rassen', 'kibble', '2 / 6 kg', null, 'https://canagan.com/nl/hondenvoer/dental-kleine-rassen-droog-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide kalkoen (33%), gedroogde kip (18,7%), zoete aardappel, aardappel, erwten, kippenvet (4%), alfalfa, gedroogd ei (3,1%), erwteneiwit, kippenjus (1,6%), zalmolie (1,2%), mineralen, (2.500 mg/kg), glucosamine (850 mg/kg), MSM (850 mg/kg), appel, wortel, fructooligosachariden, spinazie, psyllium, chondroïtinesulfaat (620mg/kg), pepermunt, kamille, goudsbloem, veenbes, peterselie, anijs & fenegriek.', true, now(), 'sha256:2831e2a6c7eff97b17ec3034ef4ba80196fc37d51d1478d8e41ec0f54444ab69', null from p;

-- Canagan — Senior & Light Small Breed (2 / 6 kg)
-- bron: https://canagan.com/nl/hondenvoer/canagan-hondenbrokken-senior-light-small-breed/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Senior & Light Small Breed', 'kibble', '2 / 6 kg', null, 'https://canagan.com/nl/hondenvoer/canagan-hondenbrokken-senior-light-small-breed/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide kip van vrije uitloop (27%), gedroogde kip (27%), zoete aardappel, aardappel, erwten, luzerne, gedroogd ei (3%), kippenvet (2,3%), kippenjus (1,5%), glucosamine (1.440 mg/kg), MSM (1.440 mg/kg), appel, wortel, fructo-oligosacchariden, spinazie, psyllium, zeewier, chondroïtinesulfaat (1.050 mg/kg), pepermunt, kamille, goudsbloem, cranberry, anijszaad & fenegriek.', true, now(), 'sha256:87cadecc5a16408f3ab7336b8fbe9ef1e4ccdc60d3992ee53aebbfe6d54c5757', null from p;

-- Canagan — Petite Kip & Eend (2 / 6 kg)
-- bron: https://canagan.com/nl/hondenvoer/canagan-petite-hondevoer-kip-eend/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Petite Kip & Eend', 'kibble', '2 / 6 kg', null, 'https://canagan.com/nl/hondenvoer/canagan-petite-hondevoer-kip-eend/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereid scharrelkip (31%), vers bereide eend (20,5%), zoete aardappel, gedroogde kip (12%), aardappel, gedroogde eend (3,7%), erwten, gedroogd ei (1,5%), luzerne, eendensaus (1,2%), kippenjus (0,6%), glucosamine (1.000 mg/kg), MSM (1.000 mg/kg), appel, wortel, psyllium, zeewier, fructo-oligosacchariden, spinazie, chondroïtinesulfaat (700 mg/kg), veenbes, kamille, pepermunt, goudsbloem, anijszaad & fenegriek.', true, now(), 'sha256:ae5eb81c2367763d357b43dbeff817307fee76fcad73b61ebfea94ccc98bbc60', null from p;

-- Canagan — Petite Kip & Zalm (2 / 6 kg)
-- bron: https://canagan.com/nl/hondenvoer/canagan-petite-hondevoer-kip-zalm/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Petite Kip & Zalm', 'kibble', '2 / 6 kg', null, 'https://canagan.com/nl/hondenvoer/canagan-petite-hondevoer-kip-zalm/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereid scharrelkip (29%), vers bereide Schotse zalm (20%), zoete aardappel, gedroogde kip (10%), aardappel, erwten, gedroogde zalm (5,5%), kippenjus (1,85%), glucosamine (1.780 mg/kg), MSM (1.780 mg/kg), luzerne, gedroogd ei (0,62%), chondroïtinesulfaat (1.250 mg/kg), appel, wortel, psyllium, zeewier, fructo-oligosacchariden, spinazie, veenbes, kamille, pepermunt, goudsbloem, anijszaad & fenegriek.', true, now(), 'sha256:474a040238fb0237b35e40a0d0f659f64732f3e08766a225c7e06922a13f2221', null from p;

-- Canagan — Puppy Vrije-uitloopkip (2 / 6 / 12 kg)
-- bron: https://canagan.com/uk/dog-food/free-range-chicken-dry-puppy-food/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Puppy Vrije-uitloopkip', 'kibble', '2 / 6 / 12 kg', null, 'https://canagan.com/uk/dog-food/free-range-chicken-dry-puppy-food/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide vrije-uitloopkip (29%), gedroogde kip (26%), zoete aardappel, aardappel, erwten, kippenvet (4%), alfalfa, gedroogd ei (3,1%), kippenjus (1,6%), mineralen, zalmolie (1,2%), glucosamine (820 mg/kg), MSM (820 mg/kg), appel, wortel, fructo-oligosachariden, spinazie, psyllium, zeewier, chondroïtinesulfaat (600 mg/kg), pepermunt, kamille, goudsbloem, veenbes, anijs & fenegriek.', true, now(), 'sha256:4f89e0fb1a4af21cb3e8c90e262e1fa016eaec98655ad07d0516d05f38513dbe', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Canagan — Hoogland Feestmaal (2 / 6 / 12 kg)
-- bron: https://canagan.com/uk/dog-food/highland-feast-dry-dog-food/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Hoogland Feestmaal', 'kibble', '2 / 6 / 12 kg', null, 'https://canagan.com/uk/dog-food/highland-feast-dry-dog-food/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide eend (14%), vers bereide kalkoen (14%), zoete aardappel, gedroogde kalkoen (11,8%), gedroogde kip (7,4%), tapioca, vers bereide fazant (4,4%), linzen, kikkererwten, gedroogde zalm (3,6%), gedroogde haring (3,6%), alfalfa, kippenvet (3%), gedroogd ei (2%), kippenjus (1,5%), zalmolie (0,75%), glucosamine (780 mg/kg), MSM (780 mg/kg), appel, wortel, fructo-oligosachariden, spinazie, psyllium, zeewier, chondroïtinesulfaat (570 mg/kg), pepermunt, kamille, veenbes, goudsbloem, anijs & fenegriek.', true, now(), 'sha256:72b7ae39dc527a7a54dc6e960b54ae6dfd48bd2cc98c0f9faea697aeae03b73c', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Canagan — Insect (1,5 / 5 / 10 kg)
-- bron: https://canagan.com/uk/dog-food/insect-dry-dog-food/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Insect', 'kibble', '1,5 / 5 / 10 kg', null, 'https://canagan.com/uk/dog-food/insect-dry-dog-food/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '49,8% insect (vers bereide insecten 25%*, gedroogde insecten 19,3%*, insectenolie 5,5%)*, zoete aardappel, aardappel, erwten, aardappeleiwit, mineralen, zalmolie (1,2%), alfalfa, fructo-oligosachariden, glucosamine (860 mg/kg), MSM (860 mg/kg), appel, wortel, spinazie, psyllium, zeewier, chondroïtinesulfaat (620 mg/kg), pepermunt, kamille, goudsbloem, veenbes, anijs & fenegriek. *Larven van de zwarte soldatenvlieg.', true, now(), 'sha256:0cb102928beb4d7ae6a57fb655e58e95aa1cb53bfef9c5f9c75a1f8235a7ce5b', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Canagan — Werkhond (2 / 12 kg)
-- bron: https://canagan.com/uk/dog-food/canagan-working-dog-dry-dog-food/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Werkhond', 'kibble', '2 / 12 kg', null, 'https://canagan.com/uk/dog-food/canagan-working-dog-dry-dog-food/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '56,1% kip & kalkoen (vers bereide vrije-uitloopkip 20,4%, gedroogde kip 19%, vers bereide kalkoen 10,2%, kalkoenvet 5%, kippenjus 1,5%), zoete aardappel, aardappelen, erwten, alfalfa, heel ei (3%), zalmolie (2%), mineralen, glucosamine (1.850 mg), MSM (1.850 mg), chondroïtinesulfaat (1.350 mg), appel, wortel, fructo-oligosachariden, spinazie, psyllium, zeewier, pepermunt, kamille, goudsbloem, veenbes, anijs & fenegriek.', true, now(), 'sha256:339a83d564bd63ce62f000ab0d5c08ca4a5365f402e495de4dcc44a856c99586', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Canagan — Zalm en Haring Lunch (400 g)
-- bron: https://canagan.com/nl/hondenvoer/zalm-en-haring-nat-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Zalm en Haring Lunch', 'wet', '400 g', null, 'https://canagan.com/nl/hondenvoer/zalm-en-haring-nat-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide zalm (35%), vers bereide MSC-gecertificeerde haring (30%), zoete aardappel, wortelen, erwten, broccoli, mineralen, groenlipmossel*, zalmolie, appel, spinazie, zeewier, peterselie, yucca, rozenbottels, brandnetel, goudsbloem, rode iep, anijszaad, pepermunt, rozemarijn. *Bron van glucosamine (100 mg/kg).', true, now(), 'sha256:81ad7fe7fc1308d86cbc9a5f7bfd5446238fba17e48a922f2e2ccd6b5537723b', null from p;

-- Canagan — Diner met Kalkoen en Eend (400 g)
-- bron: https://canagan.com/nl/hondenvoer/diner-met-kalkoen-en-eend-nat-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Diner met Kalkoen en Eend', 'wet', '400 g', null, 'https://canagan.com/nl/hondenvoer/diner-met-kalkoen-en-eend-nat-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide kalkoen (40%), vers bereide eend (25%), zoete aardappel, wortelen, erwten, broccoli, mineralen, groenlipmossel*, zalmolie, appel, spinazie, zeewier, peterselie, yucca, rozenbottels, brandnetel, goudsbloem, rode iep, anijszaad, pepermunt, rozemarijn. *Bron van glucosamine (100 mg/kg).', true, now(), 'sha256:9670bea1e624a933cebbce5358777cecc4f1284c6fa9436f835f4f22c86a593b', null from p;

-- Canagan — Kip Hotpot (400 g)
-- bron: https://canagan.com/nl/hondenvoer/kip-hotpot-nat-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Kip Hotpot', 'wet', '400 g', null, 'https://canagan.com/nl/hondenvoer/kip-hotpot-nat-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide scharrelkip (65%), zoete aardappel, wortelen, erwten, broccoli, mineralen, groenlipmossel*, zalmolie, appel, spinazie, zeewier, peterselie, yucca, rozenbottels, brandnetel, goudsbloem, rode iep, anijszaad, pepermunt, rozemarijn. *Bron van glucosamine (100 mg/kg).', true, now(), 'sha256:06a9fe731b6fb51a769bd17b00fd49cb7044ddd6d9f0505cbb001353fe7388c9', null from p;

-- Canagan — Lamsschotel (400 g)
-- bron: https://canagan.com/nl/hondenvoer/lamsschotel-nat-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Lamsschotel', 'wet', '400 g', null, 'https://canagan.com/nl/hondenvoer/lamsschotel-nat-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereid lam (65%), zoete aardappel, wortelen, erwten, broccoli, mineralen, groenlipmossel*, zalmolie, appel, spinazie, zeewier, peterselie, yucca, rozenbottels, brandnetel, goudsbloem, rode iep, anijszaad, pepermunt, rozemarijn. *Bron van glucosamine (100 mg/kg).', true, now(), 'sha256:68697e1e1154740d21e5e026cbd10136f71b06cbea4558b96468362f352509bf', null from p;

-- Canagan — Puppy-Feestmaal (400 g)
-- bron: https://canagan.com/nl/hondenvoer/puppyfeestmaal-nat-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Puppy-Feestmaal', 'wet', '400 g', null, 'https://canagan.com/nl/hondenvoer/puppyfeestmaal-nat-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide scharrelkip (35%), vers bereid rundvlees (30%), zoete aardappel, wortelen, erwten, broccoli, mineralen, groenlipmossel*, zalmolie, appel, spinazie, zeewier, peterselie, yucca, rozenbottels, brandnetel, goudsbloem, rode iep, anijszaad, pepermunt, rozemarijn. *Bron van glucosamine (100 mg/kg).', true, now(), 'sha256:1f6a8ce45fd97d5150a208cfb9e30e8db3521d9b35be3dd0d5839fea42c74481', null from p;

-- Canagan — Runderstoof (400 g)
-- bron: https://canagan.com/nl/hondenvoer/runderstoof-nat-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Runderstoof', 'wet', '400 g', null, 'https://canagan.com/nl/hondenvoer/runderstoof-nat-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereid rundvlees (65%), zoete aardappel, wortelen, erwten, broccoli, mineralen, groenlipmossel*, zalmolie, appel, spinazie, zeewier, peterselie, yucca, rozenbottels, brandnetel, goudsbloem, rode iep, anijszaad, pepermunt, rozemarijn. *Bron van glucosamine (100 mg/kg).', true, now(), 'sha256:ed9d6a91550ba2c90b87cbb88a7d61e1eac35220797ae174e78aa086b60de144', null from p;

-- Canagan — Scharrelkip (400 g)
-- bron: https://canagan.com/nl/hondenvoer/scharrelkip-nat-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Scharrelkip', 'wet', '400 g', null, 'https://canagan.com/nl/hondenvoer/scharrelkip-nat-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide scharrelkip (65%), zoete aardappel, prebiotica: (cichorei, banaan), broccoli, mineralen, groenlipmossel*, zalmolie, appel, spinazie, zeewier, peterselie, yucca, rozenbottels, brandnetel, goudsbloem, rode iep, anijszaad, pepermunt, rozemarijn. *Bron van glucosamine (100 mg/kg).', true, now(), 'sha256:56d4578128ee9f983638be01ee18e521e950519ff7f064e18f1f3abe4d42c39e', null from p;

-- Canagan — Schotel met Kip en Wild Zwijn (400 g)
-- bron: https://canagan.com/nl/hondenvoer/schotel-met-kip-en-wild-zwijn-nat-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Schotel met Kip en Wild Zwijn', 'wet', '400 g', null, 'https://canagan.com/nl/hondenvoer/schotel-met-kip-en-wild-zwijn-nat-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide scharrelkip (39%), vers bereid wild zwijn (26%), zoete aardappel, wortelen, erwten, biologische broccoli, mineralen, groenlipmossel*, zalmolie, appel, spinazie, zeewier, peterselie, yucca, rozenbottels, brandnetel, goudsbloem, rode iep, anijszaad, pepermunt, rozemarijn. *Bron van glucosamine (100 mg/kg).', true, now(), 'sha256:2bc40fed0bf121e81a15d23cf88511c5347c1e4542564c207c654cd4b3ab2de1', null from p;

-- Canagan — Senior-Feestmaal (400 g)
-- bron: https://canagan.com/nl/hondenvoer/senior-feestmaal-nat-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Senior-Feestmaal', 'wet', '400 g', null, 'https://canagan.com/nl/hondenvoer/senior-feestmaal-nat-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide scharrelkip (40%), vers bereide kalkoen (20%), zoete aardappel, wortelen, erwten, peterselie, cranberry, broccoli, mineralen, groenlipmossel, zalmolie, zeewier, mariadistel, appel, spinazie, glucosamine (1.000 mg/kg), chondro√Øtine (1.000 mg/kg), rozenbottels, brandnetel, goudsbloem, rode iep, anijszaad, pepermunt, rozemarijn.', true, now(), 'sha256:2a0a1e289c23bdaf8869331b0ec4b61d9f6c932a94e113cb9b0b780549f8ae66', null from p;

-- Canagan — Stoof met Hert en Wild Zwijn (400 g)
-- bron: https://canagan.com/nl/hondenvoer/stoof-met-hert-en-wild-zwijn-nat-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Stoof met Hert en Wild Zwijn', 'wet', '400 g', null, 'https://canagan.com/nl/hondenvoer/stoof-met-hert-en-wild-zwijn-nat-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereid hert (35%), vers bereid wild zwijn (30%), zoete aardappel, wortelen, erwten, broccoli, mineralen, groenlipmossel*, zalmolie, appel, spinazie, zeewier, peterselie, yucca, rozenbottels, brandnetel, goudsbloem, rode iep, anijszaad, pepermunt, rozemarijn. *Bron van glucosamine (100 mg/kg).', true, now(), 'sha256:1e6a2c4e33743e21b135d502ecec4974f8a459ccd9213fcbc1663875d2e61155', null from p;

-- Canagan — Wild Nat (400 g)
-- bron: https://canagan.com/nl/hondenvoer/wild-nat-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Wild Nat', 'wet', '400 g', null, 'https://canagan.com/nl/hondenvoer/wild-nat-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereid hert (25%), vers bereide eend (20%), vers bereide gans (20%), zoete aardappel, wortelen, erwten, broccoli, mineralen, groenlipmossel*, zalmolie, appel, spinazie, zeewier, peterselie, yucca, rozenbottels, brandnetel, goudsbloem, rode iep, anijszaad, pepermunt, rozemarijn. *Bron van glucosamine (100 mg/kg).', true, now(), 'sha256:9a17e19051e0624f9345761ab1420af6baa12e2c4eac5c7e60df713bb232ed32', null from p;

-- Canagan — Petite Runderstoof Paté (100 g)
-- bron: https://canagan.com/uk/dog-food/petite-beef-stew-pate-dog-food/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Petite Runderstoof Paté', 'wet', '100 g', null, 'https://canagan.com/uk/dog-food/petite-beef-stew-pate-dog-food/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rund 66%, biologische wortelen* 2%, biologische erwten* 2%, gedroogde biologische appel* 0,7%, gedroogde spinazie 0,7%, mineralen 0,01% (glucosaminesulfaat), zonnebloemolie, zoete aardappel, broccoli, zalmolie 0,1%, gedroogd zeewier, rozenbottels, peterselie, goudsbloem, yucca, brandnetel, pepermunt, rozemarijn, groenlipmosselpoeder 0,1%, anijszaad. *Van gecertificeerde biologische productie. NL-BIO-01. EU/ niet-EU-landbouw.', true, now(), 'sha256:c29f5521d736477defb3ffca61340b014593b03a0d99ec70508c3bee37d9b8e2', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Canagan — Petite Kip Hotpot Paté (100 g)
-- bron: https://canagan.com/uk/dog-food/petite-chicken-hotpot-pate-dog-food/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Petite Kip Hotpot Paté', 'wet', '100 g', null, 'https://canagan.com/uk/dog-food/petite-chicken-hotpot-pate-dog-food/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip 66%, zoete aardappel 4%, cichorei (0,4% inuline), gedroogde biologische appel* (0,7%), broccoli, gedroogde spinazie (0,7%), mineralen 0,01% (glucosaminesulfaat), zalmolie, gist, groenlipmosselpoeder 0,1%, gedroogd zeewier, rozenbottels, peterselie, goudsbloem, yucca, brandnetel, pepermunt, rozemarijn, anijszaad. *Van gecertificeerde biologische productie. NL-BIO-01. EU/ niet-EU-landbouw.', true, now(), 'sha256:acecb5c876384956853ff22f05c846eb0b2cb4f01bcdf7c9fd6a899d8e2080d3', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Canagan — Petite Kip met Wild Zwijn Paté (100 g)
-- bron: https://canagan.com/uk/dog-food/petite-chicken-wild-boar-pate-dog-food/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Petite Kip met Wild Zwijn Paté', 'wet', '100 g', null, 'https://canagan.com/uk/dog-food/petite-chicken-wild-boar-pate-dog-food/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip 39%, wild zwijn 26%, zoete aardappel 4%, broccoli, gedroogde biologische appel* 0,7%, zonnebloemolie, gedroogde spinazie 0,7%, mineralen 0,01% (glucosaminesulfaat), zalmolie 0,1%, groenlipmosselpoeder 0,1%, gedroogd zeewier, rozenbottels, peterselie, goudsbloem, yucca, brandnetel, pepermunt, rozemarijn, anijszaad. *Van gecertificeerde biologische productie. NL-BIO-01. EU/ niet-EU-landbouw.', true, now(), 'sha256:455216309bc8cd4e4953b9c4b37e597c36ba05edace9efcd5ac43763ac93a08f', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Canagan — Petite Kabeljauw met Haring Paté (100 g)
-- bron: https://canagan.com/uk/dog-food/petite-cod-herring-pate-dog-food/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Petite Kabeljauw met Haring Paté', 'wet', '100 g', null, 'https://canagan.com/uk/dog-food/petite-cod-herring-pate-dog-food/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'MSC-kabeljauw* 61%, MSC-haring* 4%, biologische wortelen** 2%, biologische erwten** 2%, zonnebloemolie, biologische gedroogde appel** 0,7%, gedroogde spinazie 0,7%, mineralen 0,01% (glucosaminesulfaat), zalmolie, zoete aardappel, broccoli, groenlipmosselpoeder 0,1%, gedroogd zeewier, rozenbottels, peterselie, goudsbloem, yucca, brandnetel, pepermunt, rozemarijn, anijszaad. *Van een MSC-gecertificeerde duurzame visserij. www.msc.org **Van gecertificeerde biologische productie. NL-BIO-01. EU/ niet-EU-landbouw.', true, now(), 'sha256:32f006c78947f7553667204881997db78802b5b36b1ddc6c0a69c62ccc553953', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Canagan — Petite Wild Paté (100 g)
-- bron: https://canagan.com/uk/dog-food/petite-country-game-hotpot-pate-dog-food/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Petite Wild Paté', 'wet', '100 g', null, 'https://canagan.com/uk/dog-food/petite-country-game-hotpot-pate-dog-food/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Wildvlees 65% (hert 25%, gans 20% & eend 20%), zoete aardappel 1,5%, biologische wortelen* 1,5%, biologische erwten* 1,5%, broccoli, gedroogde biologische appel* 0,7%, zonnebloemolie, gedroogde spinazie 0,7%, mineralen 0,01% (glucosaminesulfaat), zalmolie, groenlipmosselpoeder 0,1%, gedroogd zeewier, rozenbottels, peterselie, goudsbloem, yucca, brandnetel, pepermunt, rozemarijn, anijszaad. *Van gecertificeerde biologische productie. NL-BIO-01. EU/ niet-EU-landbouw.', true, now(), 'sha256:3248bb22625c1bdeb9b4a7ef3cf6e4ec36c8b5d84ec5dcea10bfa531a68e3dd0', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Canagan — Petite Lamsstoof Paté (100 g)
-- bron: https://canagan.com/uk/dog-food/petite-lamb-casserole-pate-dog-food/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Petite Lamsstoof Paté', 'wet', '100 g', null, 'https://canagan.com/uk/dog-food/petite-lamb-casserole-pate-dog-food/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam 66%, biologische wortelen* 2%, biologische erwten* 2%, biologische gedroogde appel* 0,7%, gedroogde spinazie 0,7%, mineralen 0,01% (glucosaminesulfaat), zoete aardappel, broccoli, zalmolie, groenlipmosselpoeder 0,1%, gedroogd zeewier, rozenbottels, peterselie, goudsbloem, yucca, brandnetel, pepermunt, rozemarijn, anijszaad. *Van gecertificeerde biologische productie. NL-BIO-01. EU/ niet-EU-landbouw.', true, now(), 'sha256:e970795d948f5a48dc8498bfc3b4d5e0f87f28d7ce143f19de3b8509724be807', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Canagan — Petite Kalkoen met Eend Paté (100 g)
-- bron: https://canagan.com/uk/dog-food/petite-turkey-duck-pate-dog-food/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Petite Kalkoen met Eend Paté', 'wet', '100 g', null, 'https://canagan.com/uk/dog-food/petite-turkey-duck-pate-dog-food/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '65% kalkoen & eend (kalkoen 40%, eend 25%), biologische wortelen* 2%, biologische erwten* 2%, biologische gedroogde appel* 0,7%, gedroogde spinazie 0,7%, mineralen 0,01% (glucosaminesulfaat), zoete aardappel, broccoli, zalmolie, groenlipmosselpoeder 0,1%, gedroogd zeewier, rozenbottels, peterselie, goudsbloem, yucca, brandnetel, pepermunt, rozemarijn, anijszaad. *Van gecertificeerde biologische productie. NL-BIO-01. EU/ niet-EU-landbouw.', true, now(), 'sha256:5c8b8cf4fcb7f33a2d2a3deccdc19a5438bacc39bad4ce652740d23afe18009e', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Active Droogvoer met Zalm voor Volwassen Honden (null)
-- bron: https://carnilove.com/en/products/active-dry-food-made-with-salmon-for-adult-dogs
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Active Droogvoer met Zalm voor Volwassen Honden', 'kibble', 'null', null, 'https://carnilove.com/en/products/active-dry-food-made-with-salmon-for-adult-dogs', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse zalm (26%), zalmeiwit (26%), gele erwten, gehydrolyseerd zalmeiwit (8%), rundvet (4,5%), gehydrolyseerde lever (3%), erwteneiwit, zalmolie (2,5%), kikkererwten, gedroogde appelpulp, lijnzaad, pompoen, wortels, kaliumchloride, erwtenmeel, gedroogde duindoorn (0,2%), gedroogde gemberwortel (0,1%), gedroogde bosbessen (0,1%), gedroogde rozemarijn (0,1%), gedroogde cranberries (0,1%), gedroogde tijm (0,1%), gehydrolyseerde schaaldierenschalen (bron van glucosamine, 0,022%), cichoreiwortel (bron van fructo-oligosachariden, 0,0163%), kraakbeenextract (bron van chondroïtine, 0,014%), biergist (bron van mannan-oligosachariden, 0,013%), Mojave yucca (0,0085%).', true, now(), 'sha256:49d894364647696e435cc22c2084583aba50adf8264fd71d2f7c24f3b2c18e76', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Active Droogvoer met Zalm & Kalkoen voor Kleine Honden (12 kg + 4 kg)
-- bron: https://carnilove.com/en/products/active-dry-food-made-with-salmon-and-turkey-for-small-dogs
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Active Droogvoer met Zalm & Kalkoen voor Kleine Honden', 'kibble', '12 kg + 4 kg', null, 'https://carnilove.com/en/products/active-dry-food-made-with-salmon-and-turkey-for-small-dogs', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse zalm (26%), kalkoeneiwit (23%), gele erwten, rundvet (13%), gehydrolyseerd kalkoeneiwit (9%), gehydrolyseerde lever (3%), erwteneiwit, lijnzaad, zalmolie (1%), kikkererwten, pompoen, gedroogde appelpulp, wortels, kaliumchloride, erwtenmeel, gedroogde duindoorn (0,2%), gedroogde gemberwortel (0,1%), gedroogde bosbessen (0,1%), gedroogde rozemarijn (0,1%), gedroogde cranberries (0,1%), gedroogde tijm (0,1%), gehydrolyseerde schaaldierenschalen (bron van glucosamine, 0,022%), cichoreiwortel (bron van fructo-oligosachariden, 0,0163%), kraakbeenextract (bron van chondroïtine, 0,014%), biergist (bron van mannan-oligosachariden, 0,013%), Mojave yucca (0,0085%).', true, now(), 'sha256:66c6bfacb69ac468ab3b7473bdf671ccddaac652d2efa4e9911c2d797d4ec0c7', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Active Droogvoer met Zalm & Kalkoen voor Grote Honden (12 kg + 4 kg)
-- bron: https://carnilove.com/en/products/active-dry-food-made-with-salmon-and-turkey-for-large-dogs
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Active Droogvoer met Zalm & Kalkoen voor Grote Honden', 'kibble', '12 kg + 4 kg', null, 'https://carnilove.com/en/products/active-dry-food-made-with-salmon-and-turkey-for-large-dogs', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse zalm (26%), kalkoeneiwit (24%), gele erwten, rundvet (9%), gehydrolyseerd kalkoeneiwit (7%), gedroogde appelpulp, erwteneiwit, gehydrolyseerde lever (3%), kikkererwten, lijnzaad, pompoen, zalmolie (1%), wortels, kaliumchloride, erwtenmeel, gedroogde duindoorn (0,2%), gedroogde gemberwortel (0,1%), gedroogde bosbessen (0,1%), gedroogde rozemarijn (0,1%), gedroogde cranberries (0,1%), gedroogde tijm (0,1%), gehydrolyseerde schaaldierenschalen (bron van glucosamine, 0,022%), cichoreiwortel (bron van fructo-oligosachariden, 0,0163%), kraakbeenextract (bron van chondroïtine, 0,014%), biergist (bron van mannan-oligosachariden, 0,013%), Mojave yucca (0,0085%).', true, now(), 'sha256:42ebb30ec5e0673ad72aa69eb6d49c2d38435079b8787efe906a0c5e822cea56', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Active Droogvoer met Zalm & Kalkoen voor Junior Grote Honden (12 kg + 4 kg)
-- bron: https://carnilove.com/en/products/active-dry-food-made-with-salmon-and-turkey-for-junior-dogs
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Active Droogvoer met Zalm & Kalkoen voor Junior Grote Honden', 'kibble', '12 kg + 4 kg', null, 'https://carnilove.com/en/products/active-dry-food-made-with-salmon-and-turkey-for-junior-dogs', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse zalm (26%), kalkoeneiwit (24%), gele erwten, rundvet (8,5%), gehydrolyseerd kalkoeneiwit (7,5%), gedroogde appelpulp, erwteneiwit, gehydrolyseerde lever (3%), kikkererwten, lijnzaad, pompoen, zalmolie (1%), wortels, kaliumchloride, erwtenmeel, gedroogde duindoorn (0,2%), gedroogde gemberwortel (0,1%), gedroogde bosbessen (0,1%), gedroogde rozemarijn (0,1%), gedroogde cranberries (0,1%), gedroogde tijm (0,1%), gehydrolyseerde schaaldierenschalen (bron van glucosamine, 0,022%), cichoreiwortel (bron van fructo-oligosachariden, 0,0163%), kraakbeenextract (bron van chondroïtine, 0,014%), biergist (bron van mannan-oligosachariden, 0,013%), Mojave yucca (0,0085%).', true, now(), 'sha256:817f196cd7a8c58fe470526c56ebe11bd5b877668b708d23dd3ef42ef6bcf8f6', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Active Droogvoer met Zalm & Kalkoen voor Volwassen Honden (12 kg + 4 kg)
-- bron: https://carnilove.com/en/products/active-dry-food-made-with-salmon-and-turkey-for-adult-dogs
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Active Droogvoer met Zalm & Kalkoen voor Volwassen Honden', 'kibble', '12 kg + 4 kg', null, 'https://carnilove.com/en/products/active-dry-food-made-with-salmon-and-turkey-for-adult-dogs', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse zalm (26%), gele erwten, zalmeiwit (15%), kalkoeneiwit (10%), rundvet (10%), gehydrolyseerd kalkoeneiwit (5%), gehydrolyseerde lever (3%), erwteneiwit, kikkererwten, gedroogde appelpulp, lijnzaad, pompoen, zalmolie (1%), wortels, kaliumchloride, erwtenmeel, gedroogde duindoorn (0,2%), gedroogde gemberwortel (0,1%), gedroogde bosbessen (0,1%), gedroogde rozemarijn (0,1%), gedroogde cranberries (0,1%), gedroogde tijm (0,1%), gehydrolyseerde schaaldierenschalen (bron van glucosamine, 0,022%), cichoreiwortel (bron van fructo-oligosachariden, 0,0163%), kraakbeenextract (bron van chondroïtine, 0,014%), biergist (bron van mannan-oligosachariden, 0,013%), Mojave yucca (0,0085%).', true, now(), 'sha256:a7d2164ef95a2474f3c53e23e63a3e1430ca8039755ba7cbc072a72ae446c2bf', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Active Droogvoer met Eend & Fazant (12 kg + 4 kg)
-- bron: https://carnilove.com/en/products/active-dry-dog-food-made-with-duck-and-pheasant
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Active Droogvoer met Eend & Fazant', 'kibble', '12 kg + 4 kg', null, 'https://carnilove.com/en/products/active-dry-dog-food-made-with-duck-and-pheasant', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse eend (26%), gele erwten, gehydrolyseerd fazanteiwit (14%), rundvet (12%), eendeneiwit (10%), gehydrolyseerd kalkoeneiwit (4%), erwteneiwit, gehydrolyseerde lever (3%), kikkererwten, gedroogde appelpulp, lijnzaad, pompoen, zalmolie (1%), wortels, kaliumchloride, erwtenmeel, gedroogde duindoorn (0,2%), gedroogde gemberwortel (0,1%), gedroogde bosbessen (0,1%), gedroogde rozemarijn (0,1%), gedroogde cranberries (0,1%), gedroogde tijm (0,1%), gehydrolyseerde schaaldierenschalen (bron van glucosamine, 0,022%), cichoreiwortel (bron van fructo-oligosachariden, 0,0163%), kraakbeenextract (bron van chondroïtine, 0,014%), biergist (bron van mannan-oligosachariden, 0,013%), Mojave yucca (0,0085%).', true, now(), 'sha256:9f7dd8e8883da02de46059af5bc0baa32adb8924370b749a9402ea0cca855fa8', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Active Droogvoer met Lam & Wild Zwijn (12 kg + 4 kg)
-- bron: https://carnilove.com/en/products/active-dry-dog-food-made-with-lamb-and-wild-boar
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Active Droogvoer met Lam & Wild Zwijn', 'kibble', '12 kg + 4 kg', null, 'https://carnilove.com/en/products/active-dry-dog-food-made-with-lamb-and-wild-boar', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers lam (26%), lameiwit (26%), gele erwten, rundvet (10%), eiwit van wild zwijn (4%), gehydrolyseerde lever (3%), kikkererwten, gedroogde appelpulp, lijnzaad, pompoen, zalmolie (1%), wortels, kaliumchloride, erwtenmeel, gedroogde duindoorn (0,2%), gedroogde gemberwortel (0,1%), gedroogde bosbessen (0,1%), gedroogde rozemarijn (0,1%), gedroogde cranberries (0,1%), gedroogde tijm (0,1%), gehydrolyseerde schaaldierenschalen (bron van glucosamine, 0,022%), cichoreiwortel (bron van fructo-oligosachariden, 0,0163%), kraakbeenextract (bron van chondroïtine, 0,014%), biergist (bron van mannan-oligosachariden, 0,013%), Mojave yucca (0,0085%).', true, now(), 'sha256:e8f73773e3e2e6ed4591cc86724f7a55d5866e991ba4b592b9b54b4fbb9edf03', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Active Droogvoer met Hert & Rendier (12 kg + 4 kg)
-- bron: https://carnilove.com/en/products/active-dry-dog-food-made-with-venison-and-reindeer
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Active Droogvoer met Hert & Rendier', 'kibble', '12 kg + 4 kg', null, 'https://carnilove.com/en/products/active-dry-dog-food-made-with-venison-and-reindeer', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers hertenvlees (26%), gele erwten, rendiereiwit (14%), rundvet (14%), gehydrolyseerd kalkoeneiwit (8%), eiwit van wild zwijn (4%), gehydrolyseerde lever (3%), kikkererwten, lijnzaad, pompoen, gedroogde appelpulp, zalmolie (1%), wortels, kaliumchloride, erwtenmeel, gedroogde duindoorn (0,2%), gedroogde gemberwortel (0,1%), gedroogde bosbessen (0,1%), gedroogde rozemarijn (0,1%), gedroogde cranberries (0,1%), gedroogde tijm (0,1%), gehydrolyseerde schaaldierenschalen (bron van glucosamine, 0,022%), cichoreiwortel (bron van fructo-oligosachariden, 0,0163%), kraakbeenextract (bron van chondroïtine, 0,014%), biergist (bron van mannan-oligosachariden, 0,013%), Mojave yucca (0,0085%).', true, now(), 'sha256:7756bfb68462e839febb327a1dd904a7082ecf09b4353347519dbb0d9da82d16', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Active Droogvoer met Zalm & Kalkoen voor Puppy's (12 kg + 4 kg)
-- bron: https://carnilove.com/en/products/active-dry-food-made-with-salmon-and-turkey-for-puppies
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Active Droogvoer met Zalm & Kalkoen voor Puppy''s', 'kibble', '12 kg + 4 kg', null, 'https://carnilove.com/en/products/active-dry-food-made-with-salmon-and-turkey-for-puppies', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse zalm (26%), kalkoeneiwit (20%), gele erwten, rundvet (12,5%), gehydrolyseerd kalkoeneiwit (12%), gehydrolyseerde lever (3%), erwteneiwit, lijnzaad, zalmolie (1,5%), kikkererwten, pompoen, gedroogde appelpulp, wortels, kaliumchloride, erwtenmeel, gedroogde duindoorn (0,2%), gedroogde gemberwortel (0,1%), gedroogde bosbessen (0,1%), gedroogde rozemarijn (0,1%), gedroogde cranberries (0,1%), gedroogde tijm (0,1%), gehydrolyseerde schaaldierenschalen (bron van glucosamine, 0,022%), cichoreiwortel (bron van fructo-oligosachariden, 0,0163%), kraakbeenextract (bron van chondroïtine, 0,014%), biergist (bron van mannan-oligosachariden, 0,013%), Mojave yucca (0,0085%).', true, now(), 'sha256:465195b01e141920cd936f0faf4bc278330dc7ca2f2b6cbac566a26ff98b06b3', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — True Fresh Eend Droogvoer voor Volwassen Honden (12 kg + 4 kg)
-- bron: https://carnilove.com/en/products/true-fresh-duck-dry-food-for-adult-dogs
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'True Fresh Eend Droogvoer voor Volwassen Honden', 'kibble', '12 kg + 4 kg', null, 'https://carnilove.com/en/products/true-fresh-duck-dry-food-for-adult-dogs', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse eend (60%), gele erwten, rundvet (5%), gehydrolyseerde lever (3%), kikkererwten (3%), pompoen (3%), rode linzen, gedroogde appelpulp (2,3%), zalmolie (2%), lijnzaad, wortels, eierschalen, kaliumchloride, erwtenmeel, gedroogde duindoorn (0,2%), gedroogde gemberwortel (0,1%), gedroogde bosbessen (0,1%), gedroogde rozemarijn (0,1%), gedroogde cranberries (0,1%), gedroogde tijm (0,1%), gehydrolyseerde schaaldierenschalen (bron van glucosamine, 0,022%), cichoreiwortel (bron van fructo-oligosachariden, 0,0163%), kraakbeenextract (bron van chondroïtine, 0,014%), biergist (bron van mannan-oligosachariden, 0,013%), Mojave yucca (0,0085%).', true, now(), 'sha256:0cccb3ad1cca386793610ceface3a272301cc4302284a6b4c6dd4cf8f8857067', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — True Fresh Eend Droogvoer voor Grote Rassen (12 kg + 4 kg)
-- bron: https://carnilove.com/en/products/true-fresh-duck-dry-food-for-large-breeds
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'True Fresh Eend Droogvoer voor Grote Rassen', 'kibble', '12 kg + 4 kg', null, 'https://carnilove.com/en/products/true-fresh-duck-dry-food-for-large-breeds', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse eend (60%), gele erwten, rundvet (4%), gedroogde appelpulp (3,3%), gehydrolyseerde lever (3%), kikkererwten (3%), rode linzen, pompoen (2%), zalmolie (2%), lijnzaad, wortels, eierschalen, kaliumchloride, erwtenmeel, gedroogde duindoorn (0,2%), gedroogde gemberwortel (0,1%), gedroogde bosbessen (0,1%), gedroogde rozemarijn (0,1%), gedroogde cranberries (0,1%), gedroogde tijm (0,1%), gehydrolyseerde schaaldierenschalen (bron van glucosamine, 0,022%), cichoreiwortel (bron van fructo-oligosachariden, 0,0163%), kraakbeenextract (bron van chondroïtine, 0,014%), biergist (bron van mannan-oligosachariden, 0,013%), Mojave yucca (0,0085%).', true, now(), 'sha256:5086e76dd5630201b498cc6dded0d7fcf1a8ea26e9befe105a61b95b06a47a29', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — True Fresh Eend Droogvoer voor Junior Grote Rassen (12 kg + 4 kg)
-- bron: https://carnilove.com/en/products/true-fresh-duck-dry-food-for-junior-large-breeds
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'True Fresh Eend Droogvoer voor Junior Grote Rassen', 'kibble', '12 kg + 4 kg', null, 'https://carnilove.com/en/products/true-fresh-duck-dry-food-for-junior-large-breeds', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse eend (60%), gele erwten, rundvet (3%), gehydrolyseerde lever (3%), lijnzaad, kikkererwten (3%), erwteneiwit, pompoen (2%), zalmolie (2%), rode linzen, gedroogde appelpulp (1%), wortels, eierschalen, kaliumchloride, natriumchloride, erwtenmeel, gedroogde duindoorn (0,2%), gedroogde gemberwortel (0,1%), gedroogde bosbessen (0,1%), gedroogde rozemarijn (0,1%), gedroogde cranberries (0,1%), gedroogde tijm (0,1%), gehydrolyseerde schaaldierenschalen (bron van glucosamine, 0,022%), cichoreiwortel (bron van fructo-oligosachariden, 0,0163%), kraakbeenextract (bron van chondroïtine, 0,014%), biergist (bron van mannan-oligosachariden, 0,013%), Mojave yucca (0,0085%).', true, now(), 'sha256:65513b594a50660696cf33e3e40daf1db64aa499163376563991645dbdab7b70', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — True Fresh Eend Droogvoer voor Kleine Rassen (12 kg + 4 kg)
-- bron: https://carnilove.com/en/products/true-fresh-duck-dry-food-for-small-breeds
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'True Fresh Eend Droogvoer voor Kleine Rassen', 'kibble', '12 kg + 4 kg', null, 'https://carnilove.com/en/products/true-fresh-duck-dry-food-for-small-breeds', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse eend (60%), gele erwten, rundvet (7%), gehydrolyseerde lever (3%), kikkererwten (3%), pompoen (3%), rode linzen, gedroogde appelpulp (2,3%), zalmolie (2%), lijnzaad, wortels, eierschalen, kaliumchloride, erwtenmeel, gedroogde duindoorn (0,2%), gedroogde gemberwortel (0,1%), gedroogde bosbessen (0,1%), gedroogde rozemarijn (0,1%), gedroogde cranberries (0,1%), gedroogde tijm (0,1%), gehydrolyseerde schaaldierenschalen (bron van glucosamine, 0,022%), cichoreiwortel (bron van fructo-oligosachariden, 0,0163%), kraakbeenextract (bron van chondroïtine, 0,014%), biergist (bron van mannan-oligosachariden, 0,013%), Mojave yucca (0,0085%).', true, now(), 'sha256:d42e1d18afafba1fda414b78bd2694119680b9dabee9a9d63340d99e62d535dd', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — True Fresh Eend Droogvoer voor Puppy's (12 kg + 4 kg)
-- bron: https://carnilove.com/en/products/true-fresh-duck-dry-food-for-puppies
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'True Fresh Eend Droogvoer voor Puppy''s', 'kibble', '12 kg + 4 kg', null, 'https://carnilove.com/en/products/true-fresh-duck-dry-food-for-puppies', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse eend (60%), gele erwten, rundvet (8%), gehydrolyseerde lever (3%), erwteneiwit, lijnzaad, kikkererwten (2%), pompoen (2%), zalmolie (2%), rode linzen, gedroogde appelpulp (1%), wortels, eierschalen, kaliumchloride, natriumchloride, erwtenmeel, gedroogde duindoorn (0,2%), gedroogde gemberwortel (0,1%), gedroogde bosbessen (0,1%), gedroogde rozemarijn (0,1%), gedroogde cranberries (0,1%), gedroogde tijm (0,1%), gehydrolyseerde schaaldierenschalen (bron van glucosamine, 0,022%), cichoreiwortel (bron van fructo-oligosachariden, 0,0163%), kraakbeenextract (bron van chondroïtine, 0,014%), biergist (bron van mannan-oligosachariden, 0,013%), Mojave yucca (0,0085%).', true, now(), 'sha256:9f41a98c1f7734266cf21bfd70cb3f8949d5a450d17ecffdff0cfddc83f89b59', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — True Fresh Vis & Kalkoen Droogvoer (12 kg + 4 kg)
-- bron: https://carnilove.com/en/products/true-fresh-fish-and-turkey-dry-dog-food
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'True Fresh Vis & Kalkoen Droogvoer', 'kibble', '12 kg + 4 kg', null, 'https://carnilove.com/en/products/true-fresh-fish-and-turkey-dry-dog-food', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse vis (34%), verse kalkoen (26%), gele erwten, rundvet (5%), gehydrolyseerde lever (3%), kikkererwten (3%), pompoen (3%), rode linzen, gedroogde appelpulp (2,2%), zalmolie (2%), lijnzaad, eierschalen, wortels, kaliumchloride, erwtenmeel, gedroogde duindoorn (0,2%), gedroogde gemberwortel (0,1%), gedroogde bosbessen (0,1%), gedroogde rozemarijn (0,1%), gedroogde cranberries (0,1%), gedroogde tijm (0,1%), gehydrolyseerde schaaldierenschalen (bron van glucosamine, 0,022%), cichoreiwortel (bron van fructo-oligosachariden, 0,0163%), kraakbeenextract (bron van chondroïtine, 0,014%), biergist (bron van mannan-oligosachariden, 0,013%), Mojave yucca (0,0085%).', true, now(), 'sha256:5cd8d913750605b01a4fc522c17b1418522bc06442ca9527748192387bdee355', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — True Fresh Rund Droogvoer (12 kg + 4 kg)
-- bron: https://carnilove.com/en/products/carnilove-true-fresh-dog-dry-beef-for-adult-all-breeds
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'True Fresh Rund Droogvoer', 'kibble', '12 kg + 4 kg', null, 'https://carnilove.com/en/products/carnilove-true-fresh-dog-dry-beef-for-adult-all-breeds', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers rundvlees (60%), gele erwten, rundvet (5%), gehydrolyseerde lever (3%), kikkererwten (3%), pompoen (3%), rode linzen, zalmolie (2%), lijnzaad, eierschalen, gedroogde appelpulp (1,3%), wortels, kaliumchloride, erwtenmeel, gedroogde duindoorn (0,2%), gedroogde gemberwortel (0,1%), gedroogde bosbessen (0,1%), gedroogde rozemarijn (0,1%), gedroogde cranberries (0,1%), gedroogde tijm (0,1%), gehydrolyseerde schaaldierenschalen (bron van glucosamine, 0,022%), cichoreiwortel (bron van fructo-oligosachariden, 0,0163%), kraakbeenextract (bron van chondroïtine, 0,014%), biergist (bron van mannan-oligosachariden, 0,013%), Mojave yucca (0,0085%).', true, now(), 'sha256:1968b7d6ab06c0347fe3579329f81f52df12c5593903b517d9878a6d424a84dd', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
-- Automatisch overgenomen etiketten, batch 3 van 2026-10-21 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site zegt daarna:
-- "automatisch overgenomen van <domein> op <datum> · nog niet door een mens
-- nagelopen". Er wordt hier geen enkele controle door een mens geclaimd.
begin;

-- Carnilove — True Fresh Kalkoen Droogvoer (12 kg + 4 kg)
-- bron: https://carnilove.com/en/products/carnilove-true-fresh-dog-dry-turkey-for-adult-all-breeds
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'True Fresh Kalkoen Droogvoer', 'kibble', '12 kg + 4 kg', null, 'https://carnilove.com/en/products/carnilove-true-fresh-dog-dry-turkey-for-adult-all-breeds', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse kalkoen (60%), gele erwten, rundvet (5%), gehydrolyseerde lever (3%), kikkererwten (3%), pompoen (3%), rode linzen, gedroogde appelpulp (2,3%), zalmolie (2%), lijnzaad, wortels, eierschalen, kaliumchloride, erwtenmeel, gedroogde duindoorn (0,2%), gedroogde gemberwortel (0,1%), gedroogde bosbessen (0,1%), gedroogde rozemarijn (0,1%), gedroogde cranberries (0,1%), gedroogde tijm (0,1%), gehydrolyseerde schaaldierenschalen (bron van glucosamine, 0,022%), cichoreiwortel (bron van fructo-oligosachariden, 0,0163%), kraakbeenextract (bron van chondroïtine, 0,014%), biergist (bron van mannan-oligosachariden, 0,013%), Mojave yucca (0,0085%).', true, now(), 'sha256:a65a06280cccc63f99ac5796373ec1c2e8d240752efec8e329ac21edff49bd62', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Paté Blikvoer met Kalkoen & Zalm voor Honden (400 g / 5 + 1 x 400 g)
-- bron: https://carnilove.com/en/products/pate-can-food-made-with-turkey-and-salmon-for-dogs-400g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Paté Blikvoer met Kalkoen & Zalm voor Honden', 'wet', '400 g / 5 + 1 x 400 g', null, 'https://carnilove.com/en/products/pate-can-food-made-with-turkey-and-salmon-for-dogs-400g', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen (47%), water, zalm (20%), zwarte bes (2%), erwtenmeel (2%), lignocellulose (1%), zalmolie (1%), calciumcarbonaat (0,3%).', true, now(), 'sha256:d6b15622c58e6ea2dcceb2b9c6a9acb20f4553e72bc8dcf87701ef9692282ac8', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Paté Blikvoer met Kalkoen & Zalm voor Puppy's (400 g / 5 + 1 x 400 g)
-- bron: https://carnilove.com/en/products/pate-can-food-made-with-turkey-and-salmon-for-puppies-400g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Paté Blikvoer met Kalkoen & Zalm voor Puppy''s', 'wet', '400 g / 5 + 1 x 400 g', null, 'https://carnilove.com/en/products/pate-can-food-made-with-turkey-and-salmon-for-puppies-400g', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen (47%), water, zalm (20%), zwarte bes (2%), erwtenmeel (2%), lignocellulose (1%), zalmolie (1%), calciumcarbonaat (0,3%).', true, now(), 'sha256:d6b15622c58e6ea2dcceb2b9c6a9acb20f4553e72bc8dcf87701ef9692282ac8', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Paté Blikvoer met Kalkoen & Rendier voor Honden (400 g / 5 + 1 x 400 g)
-- bron: https://carnilove.com/en/products/pate-can-food-made-with-turkey-and-reindeer-for-dogs-400g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Paté Blikvoer met Kalkoen & Rendier voor Honden', 'wet', '400 g / 5 + 1 x 400 g', null, 'https://carnilove.com/en/products/pate-can-food-made-with-turkey-and-reindeer-for-dogs-400g', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen (50%), water, rendier (10%), wild zwijn (7%), zwarte bes (2%), erwtenmeel (2%), lignocellulose (1%), calciumcarbonaat (0,3%).', true, now(), 'sha256:a38fc435d1d566ad9b7bef6d72e44eae1dc9de8c1b6b5fdfc52bd1c751624519', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Paté Blikvoer met Lam & Wild Zwijn voor Honden (400 g / 5 + 1 x 400 g)
-- bron: https://carnilove.com/en/products/pate-can-food-made-with-lamb-and-wild-boar-for-dogs-400g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Paté Blikvoer met Lam & Wild Zwijn voor Honden', 'wet', '400 g / 5 + 1 x 400 g', null, 'https://carnilove.com/en/products/pate-can-food-made-with-lamb-and-wild-boar-for-dogs-400g', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam (35%), wild zwijn (32%), water, zwarte bes (2%), erwtenmeel (2%), lignocellulose (1%), calciumcarbonaat (0,3%).', true, now(), 'sha256:3839abe63a49f48e1584eda71f982b0234780084f390dd059bed0d18df2fc1bb', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Paté Blikvoer met Eend & Fazant voor Honden (400 g / 5 + 1 x 400 g)
-- bron: https://carnilove.com/en/products/pate-can-food-made-with-duck-and-pheasant-for-dogs-400g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Paté Blikvoer met Eend & Fazant voor Honden', 'wet', '400 g / 5 + 1 x 400 g', null, 'https://carnilove.com/en/products/pate-can-food-made-with-duck-and-pheasant-for-dogs-400g', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eend (41%), water, fazant (26%), zwarte bes (2%), erwtenmeel (2%), lignocellulose (1%), calciumcarbonaat (0,3%).', true, now(), 'sha256:ede88bef551ad41b0f89edc6ce137622ee2d576c91766e95146a076330bb77cc', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Kalkoen & Eend met Timoteegras Paté Pouch voor Honden (300 g)
-- bron: https://carnilove.com/en/products/turkey-and-duck-with-timothy-grass-dog-pouch-pate-300g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Kalkoen & Eend met Timoteegras Paté Pouch voor Honden', 'wet', '300 g', null, 'https://carnilove.com/en/products/turkey-and-duck-with-timothy-grass-dog-pouch-pate-300g', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen 44%, eend 26%, bouillon, timoteegras 4%, erwtenmeel, lijnzaadolie, erwtenvezel.', true, now(), 'sha256:0ecd095386a56e2b17e9e2993dc4392ca95b19cbbe5cf5061f0ad76c8fb802d0', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Kalkoen & Buffel met Rozenblaadjes Paté Pouch voor Honden (300 g)
-- bron: https://carnilove.com/en/products/turkey-and-buffalo-with-rose-petals-dog-pouch-pate-300g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Kalkoen & Buffel met Rozenblaadjes Paté Pouch voor Honden', 'wet', '300 g', null, 'https://carnilove.com/en/products/turkey-and-buffalo-with-rose-petals-dog-pouch-pate-300g', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen 44%, buffel 26%, bouillon, rozenblaadjes 4%, erwtenmeel, lijnzaadolie, erwtenvezel.', true, now(), 'sha256:b73594fc1b9c349325b89e1557a655d2c16ee47ed5b9eee78ae7037e3342c2d5', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Kalkoen & Kwartel met Wortel Paté Pouch voor Honden (300 g)
-- bron: https://carnilove.com/en/products/turkey-and-quail-with-carrot-dog-pouch-pate-300g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Kalkoen & Kwartel met Wortel Paté Pouch voor Honden', 'wet', '300 g', null, 'https://carnilove.com/en/products/turkey-and-quail-with-carrot-dog-pouch-pate-300g', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen 44%, kwartel 26%, bouillon, wortel 4%, erwtenmeel, lijnzaadolie, erwtenvezel.', true, now(), 'sha256:e3ebb70bb12971b68a9e9c553f489a52d5664598ae1204d65732f30c8e4b951b', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Kalkoen & Fazant met Frambozenblad Paté Pouch voor Honden (300 g)
-- bron: https://carnilove.com/en/products/turkey-and-pheasant-with-raspberry-leaves-dog-pouch-pate-300g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Kalkoen & Fazant met Frambozenblad Paté Pouch voor Honden', 'wet', '300 g', null, 'https://carnilove.com/en/products/turkey-and-pheasant-with-raspberry-leaves-dog-pouch-pate-300g', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen 44%, fazant 26%, bouillon, frambozenblad 4%, erwtenmeel, lijnzaadolie, erwtenvezel.', true, now(), 'sha256:a9a49af4f604b19b75ab0e53c0ced0239c9160c88728c151b2db81e64f274263', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Kalkoen & Hert met Aardbeiblad Paté Pouch voor Honden (300 g)
-- bron: https://carnilove.com/en/products/turkey-and-venison-with-strawberry-leaves-dog-pouch-pate-300g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Kalkoen & Hert met Aardbeiblad Paté Pouch voor Honden', 'wet', '300 g', null, 'https://carnilove.com/en/products/turkey-and-venison-with-strawberry-leaves-dog-pouch-pate-300g', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen 44%, hertenvlees 26%, bouillon, aardbeiblad 4%. erwtenmeel, lijnzaadolie, erwtenvezel.', true, now(), 'sha256:55456e5ff4b04bf5ccefeda578559f4193fbab1253c9eac718f673cc801e8767', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Kalkoen & Wild Zwijn met Rozenbottels Paté Pouch voor Honden (300 g)
-- bron: https://carnilove.com/en/products/turkey-and-wildboar-with-rosehips-dog-pouch-pate-300g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Kalkoen & Wild Zwijn met Rozenbottels Paté Pouch voor Honden', 'wet', '300 g', null, 'https://carnilove.com/en/products/turkey-and-wildboar-with-rosehips-dog-pouch-pate-300g', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen 44%, wild zwijn 26%, bouillon, rozenbottels 4%, erwtenmeel, lijnzaadolie, erwtenvezel.', true, now(), 'sha256:ee36110851c16b4639a9dcc10a16aff7f415a3ec11220dd21f6944f8f6bf89e1', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Kalkoen & Zalm met Bosbessen Paté Pouch voor Puppy's (300 g)
-- bron: https://carnilove.com/en/products/turkey-and-salmon-with-blueberries-puppy-pouch-pate-300g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Kalkoen & Zalm met Bosbessen Paté Pouch voor Puppy''s', 'wet', '300 g', null, 'https://carnilove.com/en/products/turkey-and-salmon-with-blueberries-puppy-pouch-pate-300g', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen 44%, zalm 26%, bouillon, bosbessen 4%, lijnzaadolie, erwtenmeel, erwtenvezel.', true, now(), 'sha256:9e694114276a03afd2c344d02d5b712131ca0a98216a60dc2edb98e9b9cc88ba', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- CaroCroc — High Energy (3 / 12,5 kg)
-- bron: https://www.carocroc.nl/producten/premium/high-energy/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('CaroCroc', 'High Energy', 'kibble', '3 / 12,5 kg', null, 'https://www.carocroc.nl/producten/premium/high-energy/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte (52%), dierlijk eiwitextract (10%), gerst, dierlijk vet (gevogelte, rund), tarwe, mais, rijst, bietenpulp, rijstzemelen, geëxtraheerde sojabonen (getoast), hemoglobine, cellulose, mineralen, gehydrolyseerde kippenlever, lijnzaad.', true, now(), 'sha256:46bdb3438d51f82b8a8544268eb6f7f5e0ae5f81ab96966e9834b2fa0c3616ef', null from p;

-- CaroCroc — Grain Free (3 / 12,5 kg)
-- bron: https://www.carocroc.nl/producten/speciale-aandacht/grain-free/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('CaroCroc', 'Grain Free', 'kibble', '3 / 12,5 kg', null, 'https://www.carocroc.nl/producten/speciale-aandacht/grain-free/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte (51%, waarvan minstens 4% verse kip), aardappel (26%), bietenpulp (5,5%), eipoeder, dierlijk vet (gevogelte), gehydrolyseerde kippenlever, aardappelzetmeel, aardappeleiwit, gist, lijnzaad, visolie (zalm) (0,6%), kruiden (peterselie, rozemarijn, brandnetel, kamille, salie, tijm, koriander, paardenbloem, zoethout), mineralen, inuline (bron van FOS).', true, now(), 'sha256:d88160760b404ae09b08aa3ddfd94c4f636b191cab390a440b25acd3f6472de9', null from p;

-- CaroCroc — Mobility Support (3 / 12,5 kg)
-- bron: https://www.carocroc.nl/producten/speciale-aandacht/mobility-support/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('CaroCroc', 'Mobility Support', 'kibble', '3 / 12,5 kg', null, 'https://www.carocroc.nl/producten/speciale-aandacht/mobility-support/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte (54%, waarvan minstens 4% verse kip), maïs, ei (8,2%), rijst, gehydrolyseerde kippenlever, visolie (zalm) (1,1%), gist, mineralen, cellulose, bietenpulp, dierlijk vet (gevogelte), lijnzaad, glucosamine (0,02%), chondroïtinesulfaat (0,02%).', true, now(), 'sha256:86b7c2dbd85a4ed5d5cf8b121cc0da01ba1b6abacda0f64018759b8f9eefe668', null from p;

-- CaroCroc — Skin Support (3 / 12,5 kg)
-- bron: https://www.carocroc.nl/producten/speciale-aandacht/carocroc-skin-support/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('CaroCroc', 'Skin Support', 'kibble', '3 / 12,5 kg', null, 'https://www.carocroc.nl/producten/speciale-aandacht/carocroc-skin-support/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte (37%), maïs, vis (21%, waarvan minstens 4% verse zalm), bietenpulp, rijstzemelen, rijst, dierlijk vet (rund, gevogelte), visolie (zalm) (1,4%), gehydrolyseerde kippenlever, gist, lijnzaad, mineralen.', true, now(), 'sha256:f564a4236e4ee12a7a2b00d26d99647a1f1f3b2daab111f3cf04f9678314f0a7', null from p;

-- CaroCroc — Worst met kip (400 g)
-- bron: https://www.carocroc.nl/producten/worsten/carocroc-worst-met-kip/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('CaroCroc', 'Worst met kip', 'wet', '400 g', null, 'https://www.carocroc.nl/producten/worsten/carocroc-worst-met-kip/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip 80%, rund 4%, granen, mineralen.', true, now(), 'sha256:81cbfa70583c84484854c4a4e84a460cee697e333781d089bd4bc1c1b39277d4', null from p;

-- CaroCroc — Worst met lam (400 g)
-- bron: https://www.carocroc.nl/producten/worsten/carocroc-worst-met-lam/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('CaroCroc', 'Worst met lam', 'wet', '400 g', null, 'https://www.carocroc.nl/producten/worsten/carocroc-worst-met-lam/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (75%, waarvan 35% lam), granen, oliën en vetten (schapenvet 1,5%), mineralen.', true, now(), 'sha256:a7703d69c271c0b8937b2d17732d5de161d8eb92dad871d7b0c98bf2b45cb0b4', null from p;

-- Edgard & Cooper — Verse Zalm (0,7 / 1 / 2,5 / 3 / 7 / 12 kg)
-- bron: https://www.edgardcooper.com/nl/products/dog-dry-food-salmon/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Verse Zalm', 'kibble', '0,7 / 1 / 2,5 / 3 / 7 / 12 kg', null, 'https://www.edgardcooper.com/nl/products/dog-dry-food-salmon/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'verse zalm* 40%, zoete aardappelen* (gedroogd) 13%, aardappelen* (gedroogd), erwteneiwit*, erwten* (gedroogd), aardappeleiwit, vegetarische saus, lijnzaad* 2%, bietenpulp* (gedroogd), mineralen*, gist* (gedroogd) 1,3%, tomatenpulp*, cichorei* (gedroogd) 0,5%, pompoen* (gedroogd) 0,2%, boerenkool* (gedroogd) 0,2%, zalmolie* 0,1%, bosbessen* (gedroogd) 0,05%, appel* (gedroogd) 0,05%, peterselie* (gedroogd) 0,02%, rozenbottel* (gedroogd) 0,02%, glucosamine 0,02%, chondroïtinesulfaat* 0,02%. *Natura', true, now(), 'sha256:226550c24750512c2a70bed3ce547e6ec1c04e48a8066f03117a1103bed6ecfb', null from p;

-- Edgard & Cooper — Vers Hert & Eend (1 / 2,5 / 3 / 7 / 12 kg)
-- bron: https://www.edgardcooper.com/nl/products/dog-dry-food-venison-duck/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Vers Hert & Eend', 'kibble', '1 / 2,5 / 3 / 7 / 12 kg', null, 'https://www.edgardcooper.com/nl/products/dog-dry-food-venison-duck/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'verse eend* 35%, zoete aardappelen* (gedroogd) 13,5%, aardappelen* (gedroogd), erwteneiwit*, erwten* (gedroogd), vers hert* 5%, aardappeleiwit, lijnzaad* 2%, bietenpulp* (gedroogd), zalmolie* 2%, eendensaus, mineralen*, gist* (gedroogd) 1,3%, zonnebloemolie*, tomatenpulp*, cichorei* (gedroogd) 0,5%, pompoen* (gedroogd) 0,2%, boerenkool* (gedroogd) 0,2%, bosbessen* (gedroogd) 0,05%, appel* (gedroogd) 0,05%, peterselie* (gedroogd) 0,02%, rozenbottel* (gedroogd) 0,02%, glucosamine 0,02%, chondroïtinesulfaat* 0,02%. *Natura', true, now(), 'sha256:a0ebb27afa63075dee68b406c402d1401a315a48a228af3175b6591b475aba47', null from p;

-- Edgard & Cooper — Verse Rund & Kip (bio) (2,5 / 7 kg)
-- bron: https://www.edgardcooper.com/nl/products/dog-dry-food-beef-chicken/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Verse Rund & Kip (bio)', 'kibble', '2,5 / 7 kg', null, 'https://www.edgardcooper.com/nl/products/dog-dry-food-beef-chicken/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'biologische verse kip* 25%, biologische volkorenrijst*, biologisch rijsteiwit*, biologische volkorengierst*, biologisch vers rund* 5%, biologisch kippenvet*, mineralen*, biologische varkenssaus, biologische wortel* 0,04%, biologische tomaat* 0,04%, biologische boerenkool* 0,04%, biologische kokosnoot* 0,04%, biologische brandnetels*, biologische braambesblaadjes*, biologische venkel* 0,04%, biologisch karwijzaad*, biologische kamille*, biologische melisse*', true, now(), 'sha256:0d970f72269e75de8fd65a2e3ca465d139b12b1c788a7d7a53708c6c4ffd2a9b', null from p;

-- Edgard & Cooper — Verse Kalkoen & Kip (bio) (2,5 / 7 kg)
-- bron: https://www.edgardcooper.com/nl/products/dog-dry-food-turkey-chicken/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Verse Kalkoen & Kip (bio)', 'kibble', '2,5 / 7 kg', null, 'https://www.edgardcooper.com/nl/products/dog-dry-food-turkey-chicken/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'biologische verse kip* 25%, biologische volkorenrijst*, biologisch rijsteiwit*, biologische volkorengierst*, biologische volkoren haver*, biologische verse kalkoen* 5%, biologische varkenssaus, biologisch kippenvet*, mineralen*, biologische erwten* 0,17%, biologische wortel* 0,04%, biologische tomaat* 0,04%, biologische peer* 0,04%, biologische appel* 0,04%, biologische chiazaden* 0,04%, biologische kokosnoot* 0,04%, biologische brandnetels*, biologische braambesblaadjes*, biologische venkel*, biologisch karwijzaad*, biologische kamille*, biologische melisse*', true, now(), 'sha256:f8012ee597becef3bbf9c648b6ef8351faf0fae61606fb83ddbb0b64617bf65b', null from p;

-- Edgard & Cooper — Wortel & Courgette (plantaardig) (1 / 2,5 / 7 kg)
-- bron: https://www.edgardcooper.com/nl/products/dog-dry-food-carrot-courgette/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Wortel & Courgette (plantaardig)', 'kibble', '1 / 2,5 / 7 kg', null, 'https://www.edgardcooper.com/nl/products/dog-dry-food-carrot-courgette/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'groenten* 20% (wortel* 4%, courgette* 4%, aardappel* 4%, knolraap*, selderij*, pastinaak*, bonen*, erwten* 1%), rijst* 17,3%, rijsteiwit 9%, erwteneiwit* 9%, koolzaadolie* 5,7%, aardappeleiwit 4,5%, mineralen*, erwtenzetmeel* 3,5%, vegetarische saus*, aardappelen* (gedroogd) 3%, erwten* (gedroogd) 3%, zonnebloemzaad*, gist* (gedroogd) 3%, bietenpulp* (gedroogd), luzerne* (gedroogd), linzen* (gedroogd), lijnzaad* 1,8%, lignocellulose*, algen* (gedroogd) 0,25%, cichorei* (gedroogd) 0,12%, peer* (gedroogd) 0,1%, bosbessen* (gedroogd) 0,05%, vlierbessen* (gedroogd), marjolein* (gedroogd)', true, now(), 'sha256:d5037ee1312606feaf6085ab81f5abf15eae133a310b8e91def46ae8a6f8fe81', null from p;

-- Edgard & Cooper — Rode Biet & Pompoen (plantaardig) (2,5 / 7 kg)
-- bron: https://www.edgardcooper.com/nl/products/dog-dry-food-beetroot-pumpkin/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Rode Biet & Pompoen (plantaardig)', 'kibble', '2,5 / 7 kg', null, 'https://www.edgardcooper.com/nl/products/dog-dry-food-beetroot-pumpkin/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'groenten* 20% (pompoen* 4%, rode bieten* 4%, aardappel* 4%, knolraap*, pastinaak* 2%, boerenkool*, bonen*, erwten* 1%), rijst* 16,5%, rijsteiwit 11%, erwteneiwit* 7%, koolzaadolie* 5,5%, aardappeleiwit 4,5%, erwten* (gedroogd) 4,2%, erwtenzetmeel 4%*, mineralen*, bietenpulp* (gedroogd), vegetarische saus*, gist* (gedroogd) 3,1%, zonnebloemzaad*, linzen* (gedroogd), aardappelen* (gedroogd) 2,1%, lijnzaad* 1,8%, luzerne* (gedroogd), algen* (gedroogd) 0,25%, cichorei* (gedroogd) 0,12%, appel* (gedroogd), bosbessen* (gedroogd) 0,05%, vlierbessen* (gedroogd), marjolein* (gedroogd)', true, now(), 'sha256:6e06f683cf6759ce6a273a74bbd940593d343a8ea088fa416e6c52a44ea1033c', null from p;

-- Edgard & Cooper — Verse Eend & Kip (puppy) (1 / 2,5 / 3 / 7 / 12 kg)
-- bron: https://www.edgardcooper.com/nl/products/dog-dry-food-duck-chicken/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Verse Eend & Kip (puppy)', 'kibble', '1 / 2,5 / 3 / 7 / 12 kg', null, 'https://www.edgardcooper.com/nl/products/dog-dry-food-duck-chicken/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'verse kip* 40%, aardappelen* (gedroogd), verse eend* 10%, erwten* (gedroogd), erwteneiwit*, zoete aardappelen* (gedroogd) 4%, aardappeleiwit, zalmolie* 2,3%, kippensaus, gist* (gedroogd) 1,7%, lijnzaad* 1%, bietenpulp* (gedroogd), mineralen*, cichorei* (gedroogd) 0,5%, wortel* (gedroogd) 0,4%, peer* (gedroogd) 0,1%, kurkuma* (gedroogd) 0,02%, tijm* (gedroogd) 0,02%, glucosamine 0,02%, chondroïtinesulfaat* 0,02%. *Natuurlijk', true, now(), 'sha256:c5687cd20b22843e6fcaa25a0ecb17c569178ae266bf917b88262d50a9860527', null from p;

-- Edgard & Cooper — Verse Zalm & Kalkoen (puppy) (2,5 / 7 / 12 kg)
-- bron: https://www.edgardcooper.com/nl/products/dog-dry-food-salmon-turkey/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Verse Zalm & Kalkoen (puppy)', 'kibble', '2,5 / 7 / 12 kg', null, 'https://www.edgardcooper.com/nl/products/dog-dry-food-salmon-turkey/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'verse kalkoen* 35%, aardappelen* (gedroogd), verse zalm* 10%, zoete aardappelen* (gedroogd) 10%, erwteneiwit*, erwten* (gedroogd), aardappeleiwit, vegetarische saus, gist* (gedroogd) 1,7%, lijnzaad* 1%, bietenpulp* (gedroogd), mineralen*, zalmolie* 0,7%, cichorei* (gedroogd) 0,5%, zonnebloemolie*, wortel* (gedroogd) 0,4%, peer* (gedroogd) 0,1%, kurkuma* (gedroogd) 0,02%, tijm* (gedroogd) 0,02%, glucosamine 0,02%, chondroïtinesulfaat* 0,02%. *Natuurlijk', true, now(), 'sha256:dda452a990886669bc08ae14d156d11900dbfa7da5501bbec9f2a23c6b55b348', null from p;

-- Edgard & Cooper — Verse Kip & Zalm (senior) (2,5 / 7 / 12 kg)
-- bron: https://www.edgardcooper.com/nl/products/dog-dry-food-chicken-salmon/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Verse Kip & Zalm (senior)', 'kibble', '2,5 / 7 / 12 kg', null, 'https://www.edgardcooper.com/nl/products/dog-dry-food-chicken-salmon/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'verse kip* 35%, zoete aardappelen* (gedroogd) 16,2%, erwten* (gedroogd), aardappelen* (gedroogd), verse zalm* 5%, erwteneiwit*, aardappeleiwit, kippensaus, gist* (gedroogd) 2%, tomatenpulp*, lijnzaad* 2%, bietenpulp* (gedroogd), mineralen*, cichorei* (gedroogd) 0,5%, zalmolie* 0,5%, kippenvet*, broccoli* (gedroogd) 0,4%, bosbessen* (gedroogd) 0,1%, glucosamine 0,04%, chondroïtinesulfaat* 0,04%, rozenbottel* (gedroogd) 0,02%, kurkuma* (gedroogd) 0,02%. *Natuurlijk', true, now(), 'sha256:008a5ec00ed15551281f3a549df0f7fad922df24746de87b9aa8c21e007e647e', null from p;

-- Edgard & Cooper — Kwijl-in-Stijl Zalm & Kip (150 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-pouch-drool-worthy-salmon-chicken/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Kwijl-in-Stijl Zalm & Kip', 'wet', '150 g', null, 'https://www.edgardcooper.com/nl/products/dog-pouch-drool-worthy-salmon-chicken/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip* 26%, MSC**-zalm* 6%, eiwit* (gedroogd), zoete aardappelen* (gedroogd) 2%, sperziebonen* (gedroogd) 2%, erwtenzetmeel*, mineralen, gist* (gedroogd), zalmolie*, erwtenvezel*, bietenpulp* (gedroogd), peterselie* (gedroogd) 0,1%, glucosamine, chondroïtinesulfaat. *Natuurlijk', true, now(), 'sha256:2e7cc3b0fb809bc210bf78033ac70011901f573f1e18b7806e16b3f3b1cb45d2', null from p;

-- Edgard & Cooper — Kwijl-in-Stijl Lam & Kip (150 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-pouch-drool-worthy-lamb-chicken/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Kwijl-in-Stijl Lam & Kip', 'wet', '150 g', null, 'https://www.edgardcooper.com/nl/products/dog-pouch-drool-worthy-lamb-chicken/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip* 26%, lam* 6%, eiwit* (gedroogd), wortel* (gedroogd) 2%, sperziebonen* (gedroogd) 2%, erwtenzetmeel*, mineralen, gist* (gedroogd), zalmolie*, erwtenvezel*, bietenpulp* (gedroogd), rozemarijn* (gedroogd) 0,1%, glucosamine, chondroïtinesulfaat. *Natuurlijk', true, now(), 'sha256:d6cd849236ae3cc283bed00af679683a2fbe6ba4f6921f27eb970119026e1fb3', null from p;

-- Edgard & Cooper — Kwijl-in-Stijl Eend (150 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-pouch-drool-worthy-duck/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Kwijl-in-Stijl Eend', 'wet', '150 g', null, 'https://www.edgardcooper.com/nl/products/dog-pouch-drool-worthy-duck/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'eend* 32%, varken*, zoete aardappelen* (gedroogd) 2%, erwten* (gedroogd) 2%, erwtenzetmeel*, mineralen, gist* (gedroogd), zalmolie*, erwtenvezel*, bietenpulp* (gedroogd), salie* (gedroogd) 0,1%, glucosamine, chondroïtinesulfaat. *Natuurlijk', true, now(), 'sha256:b6c52ea5b3ee28cd1c2334a8b0d1522b6d06e67173beb433de07efbd3093b3e6', null from p;

-- Edgard & Cooper — Kwijl-in-Stijl Wild Zwijn & Eend (150 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-pouch-drool-worthy-wild-boar-duck/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Kwijl-in-Stijl Wild Zwijn & Eend', 'wet', '150 g', null, 'https://www.edgardcooper.com/nl/products/dog-pouch-drool-worthy-wild-boar-duck/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'eend* 26%, wild zwijn* 6%, varken*, wortel* (gedroogd) 2%, sperziebonen* (gedroogd) 2%, erwtenzetmeel*, mineralen, gist* (gedroogd), zalmolie*, erwtenvezel*, bietenpulp* (gedroogd), salie* (gedroogd) 0,1%, glucosamine, chondroïtinesulfaat. *Natuurlijk', true, now(), 'sha256:f92cfb1a460b8d172c3025e5303b32bf657413da3f7bd51bb4ab354e1f1f6da1', null from p;

-- Edgard & Cooper — Kwijl-in-Stijl Kalkoen (puppy) (150 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-pouch-drool-worthy-turkey/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Kwijl-in-Stijl Kalkoen (puppy)', 'wet', '150 g', null, 'https://www.edgardcooper.com/nl/products/dog-pouch-drool-worthy-turkey/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kalkoen* 32%, eiwit* (gedroogd), wortel* (gedroogd) 2%, erwten* (gedroogd) 2%, erwtenzetmeel*, zalmolie*, mineralen, gist* (gedroogd), erwtenvezel*, bietenpulp* (gedroogd), salie* (gedroogd) 0,1%, glucosamine, chondroïtinesulfaat. *Natuurlijk.', true, now(), 'sha256:6fb81b5bc770129133442585ea6253869887b56086ab46580bf181a21acc034c', null from p;

-- Edgard & Cooper — Kwijl-in-Stijl Kip (senior) (150 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-pouch-senior-drool-worthy-chicken/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Kwijl-in-Stijl Kip (senior)', 'wet', '150 g', null, 'https://www.edgardcooper.com/nl/products/dog-pouch-senior-drool-worthy-chicken/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip* 32%, eiwit* (gedroogd), zoete aardappelen* (gedroogd) 2%, erwten* (gedroogd) 2%, erwtenzetmeel*, mineralen, gist* (gedroogd), zalmolie*, erwtenvezel*, bietenpulp* (gedroogd), tijm* (gedroogd) 0,1%, glucosamine, chondroïtinesulfaat. *Natuurlijk', true, now(), 'sha256:f2884a2680cd0f64510ca17c1b14baf9de7d997b3f2280e03c5642f4b5aee1dd', null from p;

-- Edgard & Cooper — Lam & rund (400 / 800 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-tin-lamb-beef/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Lam & rund', 'wet', '400 / 800 g', null, 'https://www.edgardcooper.com/nl/products/dog-tin-lamb-beef/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'lam 30%, rund 30%, wortel 2%, mineralen, mannan-oligosachariden (MOS), broccoli (gedroogd) 0,25%, rode bieten (gedroogd) 0,25%, lijnzaadolie, fructo-oligosachariden (FOS), zalmolie, appel (gedroogd) 0,06%, peer (gedroogd) 0,05%, banaan (gedroogd) 0,05%, bosbessen (gedroogd) 0,05%, gedroogde venkel 0,01%, gedroogd karwijzaad 0,01%, gedroogd duizendblad 0,01%, gedroogde braambessenblaadjes 0,01%, gedroogde maretak 0,01%, gedroogde kamillebloesem 0,01%, gedroogde gentiaanwortel 0,01%, gedroogd duizendguldenkruid 0,01%', true, now(), 'sha256:bfbd5e2f8f6dfa92e8cb4f1ad1376811a06d2b3991f81f88202829914f6785ae', null from p;

-- Edgard & Cooper — Wild & eend (400 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-tin-game-duck/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Wild & eend', 'wet', '400 g', null, 'https://www.edgardcooper.com/nl/products/dog-tin-game-duck/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'wild 35%, eend 25%, zoete aardappel 2%, rode bieten (gedroogd) 0,5%, mineralen, mannan-oligosachariden (MOS), lijnzaadolie, fructo-oligosachariden (FOS), appel (gedroogd) 0,13%, peer (gedroogd) 0,05%, bosbessen (gedroogd) 0,05%, gedroogde venkel 0,01%, gedroogd karwijzaad 0,01%, gedroogd duizendblad 0,01%, gedroogde braambessenblaadjes 0,01%, gedroogde maretak 0,01%, gedroogde kamillebloesem 0,01%, gedroogde gentiaanwortel 0,01%, gedroogd duizendguldenkruid 0,01%', true, now(), 'sha256:2904db8e933f016ce472ef69593e7a8ed3167110ee0f96249e47e9a8b2cee571', null from p;

-- Edgard & Cooper — ASC-Zalm & Kalkoen (400 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-tin-salmon-turkey/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'ASC-Zalm & Kalkoen', 'wet', '400 g', null, 'https://www.edgardcooper.com/nl/products/dog-tin-salmon-turkey/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kalkoen 52%, ASC* zalm 8%, erwten 1%, pompoen 1%, spinazie (gedroogd) 0,5%, mineralen, mannan-oligosachariden (MOS), fructo-oligosachariden (FOS), appel (gedroogd) 0,08%, rode bieten (gedroogd) 0,08%, gedroogde venkel 0,01%, gedroogd karwijzaad 0,01%, gedroogd duizendblad 0,01%, gedroogde braambessenblaadjes 0,01%, gedroogde maretak 0,01%, gedroogde kamillebloesem 0,01%, gedroogde gentiaanwortel 0,01%, gedroogd duizendguldenkruid 0,01%. *Van een ASC-gecertificeerde, verantwoorde kwekerij. www.asc-aqua.org', true, now(), 'sha256:c901921a287d331de6ca8ac01957e40e1bcca5484b0d42f23296f6e05bbccbcf', null from p;

-- Edgard & Cooper — Rund (400 / 800 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-tin-beef/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Rund', 'wet', '400 / 800 g', null, 'https://www.edgardcooper.com/nl/products/dog-tin-beef/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rund 60%, wortel 2%, broccoli (gedroogd) 0,5%, mineralen, mannan-oligosachariden (MOS), lijnzaadolie, fructo-oligosachariden (FOS), rode bieten (gedroogd) 0,13%, peer (gedroogd) 0,08%, gedroogde venkel 0,01%, gedroogd karwijzaad 0,01%, gedroogd duizendblad 0,01%, gedroogde braambessenblaadjes 0,01%, gedroogde maretak 0,01%, gedroogde kamillebloesem 0,01%, gedroogde gentiaanwortel 0,01%, gedroogd duizendguldenkruid 0,01%', true, now(), 'sha256:33edc7691b05744ce965dec0dbf1ad0030721092aa6cb4447389f4cc0a9da3a1', null from p;

-- Edgard & Cooper — Eend & kip (puppy) (400 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-tin-duck-chicken/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Eend & kip (puppy)', 'wet', '400 g', null, 'https://www.edgardcooper.com/nl/products/dog-tin-duck-chicken/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip 50%, eend 10%, pompoen 2%, erwten 2%, mineralen, wortel 0,5%, zalmolie, mannan-oligosachariden (MOS), fructo-oligosachariden (FOS), broccoli (gedroogd) 0,13%, banaan (gedroogd) 0,05%, aardbeien (gedroogd) 0,05%, glucosamine, chondroïtinesulfaat, gedroogde venkel 0,01%, gedroogd karwijzaad 0,01%, gedroogd duizendblad 0,01%, gedroogde braambessenblaadjes 0,01%, gedroogde maretak 0,01%, gedroogde kamillebloesem 0,01%, gedroogde gentiaanwortel 0,01%, gedroogd duizendguldenkruid 0,01%', true, now(), 'sha256:cfb1317772225331c0010d26494e91bdc08ed4b6ee47bb6cbfd68553b935ba8e', null from p;

-- Edgard & Cooper — Kip & ASC-Zalm (senior) (400 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-tin-chicken-salmon/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Kip & ASC-Zalm (senior)', 'wet', '400 g', null, 'https://www.edgardcooper.com/nl/products/dog-tin-chicken-salmon/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip 50%, ASC* zalm 10%, aardappel 4%, erwten 2%, broccoli (gedroogd) 0,5%, mineralen, mannan-oligosachariden (MOS), lijnzaad, zalmolie, fructo-oligosachariden (FOS), spinazie (gedroogd) 0,06%, bosbessen (gedroogd) 0,05%, cranberry''s (gedroogd) 0,05%, glucosamine, chondroïtinesulfaat, gedroogde venkel 0,01%, gedroogd karwijzaad 0,01%, gedroogd duizendblad 0,01%, gedroogde braambessenblaadjes 0,01%, gedroogde maretak 0,01%, gedroogde kamillebloesem 0,01%, gedroogde gentiaanwortel 0,01%, gedroogd duizendguldenkruid 0,01%. *Van een ASC-gecertificeerde, verantwoorde kwekerij. www.asc-aqua.org', true, now(), 'sha256:d5937373dfa205142ef6d05c0e4ca5124f42119a8c51ffabf6135c4cf19f7dbe', null from p;

-- Edgard & Cooper — Kip & kalkoen (kuipje) (150 / 300 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-cup-chicken-turkey/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Kip & kalkoen (kuipje)', 'wet', '150 / 300 g', null, 'https://www.edgardcooper.com/nl/products/dog-cup-chicken-turkey/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip 30%, kalkoen 26%, mineralen, wortel 2%, cranberry''s 1%, tomaat 1%, pompoen 1%, appel 1%, peterselie 0,1%, dille 0,1%', true, now(), 'sha256:74a8577fa2f0258895efefd2903a3d95de72d734ed9762526da28ad3d127443f', null from p;

-- Edgard & Cooper — Wild & eend (kuipje) (150 / 300 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-cup-game-duck/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Wild & eend (kuipje)', 'wet', '150 / 300 g', null, 'https://www.edgardcooper.com/nl/products/dog-cup-game-duck/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'wild 30%, eend 26%, mineralen, wortel 2%, zoete aardappel 1%, rode bieten 1%, cranberry''s 1%, appel 1%, peterselie 0,1%, dille 0,1%', true, now(), 'sha256:c6d232921152373e8155775672d4bbc03c0d3a7b716a8d9542ce26b95b9a7dc1', null from p;

-- Edgard & Cooper — Zalm & Kalkoen (kuipje) (150 / 300 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-cup-salmon-turkey/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Zalm & Kalkoen (kuipje)', 'wet', '150 / 300 g', null, 'https://www.edgardcooper.com/nl/products/dog-cup-salmon-turkey/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kalkoen 46%, zalm 10%, wortel 2%, erwten 2%, mineralen, appel 1%, rode bieten 1%, peterselie (gedroogd) 0,1%, dillee (gedroogd) 0,1%', true, now(), 'sha256:5ddc06316b69d217d4f89077208c8855046cb3ee2c10c0a83f6192b04bf639f3', null from p;

-- Edgard & Cooper — Lam & rund (kuipje) (150 / 300 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-cup-lamb-beef/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Lam & rund (kuipje)', 'wet', '150 / 300 g', null, 'https://www.edgardcooper.com/nl/products/dog-cup-lamb-beef/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'lam 30%, rund 26%, mineralen, wortel 2%, broccoli 1%, rode bieten 1%, appel 1%, spinazie 1%, peterselie 0,1%, dille 0,1%', true, now(), 'sha256:81ae0c3133fe19647891bb599a8138a75beba70ef3a98ae523c8af898d4b4de5', null from p;

-- Edgard & Cooper — Rund & eend (150 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-cup-beef-duck/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Rund & eend', 'wet', '150 g', null, 'https://www.edgardcooper.com/nl/products/dog-cup-beef-duck/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rund 42%, eend 14%, mineralen, wortel 2%, rode bieten 1%, broccoli 1%, cranberry''s 1%, zoete aardappel 1%, peterselie 0,1%, dille 0,1%', true, now(), 'sha256:8084264172dbb09477c67a4a5530332d166ed22e15a6575e8b933c395a2482f2', null from p;

-- Edgard & Cooper — Biologische kalkoen (100 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-cup-turkey/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Biologische kalkoen', 'wet', '100 g', null, 'https://www.edgardcooper.com/nl/products/dog-cup-turkey/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '*Vervaardigd met producten afkomstig van 100% gecontroleerde biologische landbouw en veeteelt. Biologische kalkoen* 26%, biologisch rund*, biologisch varken*, biologische kip*, mineralen, biologische kokosnoot* 0,15%, biologische chiazaden* 0,15%, biologische rozenbottel* 0,1%, biologische kamille* 0,1%', true, now(), 'sha256:9f6688e49e7c6e3b8f224131f8df50f7ddfc36f729dc3cfb69dfd42570aba873', null from p;

-- Edgard & Cooper — Biologisch rund (100 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-cup-beef/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Biologisch rund', 'wet', '100 g', null, 'https://www.edgardcooper.com/nl/products/dog-cup-beef/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '*Vervaardigd met producten afkomstig van 100% gecontroleerde biologische landbouw en veeteelt. Biologisch rund* 51%, biologisch varken*, biologische kip*, mineralen, biologische kokosnoot* 0,15%, biologische chiazaden* 0,15%, biologische rozenbottel* 0,1%, biologische kamille* 0,1%', true, now(), 'sha256:82c9444b0c79abb109ca761daaa768755ba23dab33fa5053dab0665e68376ae7', null from p;

-- Edgard & Cooper — Biologische vis (100 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-cup-fish/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Biologische vis', 'wet', '100 g', null, 'https://www.edgardcooper.com/nl/products/dog-cup-fish/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '*Vervaardigd met producten afkomstig van 100% gecontroleerde biologische landbouw en veeteelt. Biologisch rund*, biologische kip*, biologische vis* 14%, biologisch varken*, mineralen, biologische wortel* 2%, biologische erwten* 2%, biologische venkel* 0,1%, biologische rozenbottel* 0,1%, biologische kamille* 0,1%', true, now(), 'sha256:2365a8ae65310d5fa0b61ddfc7f2ec505a3d22b4fffcaf040adde92f49b10865', null from p;

-- Edgard & Cooper — Eend & kip (puppy, kuipje) (150 / 300 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-cup-duck-chicken/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Eend & kip (puppy, kuipje)', 'wet', '150 / 300 g', null, 'https://www.edgardcooper.com/nl/products/dog-cup-duck-chicken/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'eend 30%, kip 26%, mineralen, wortel 2%, broccoli 1%, appel 1%, pompoen 1%, erwten 1%, zalmolie 0,5%, peterselie 0,1%, dille 0,1%', true, now(), 'sha256:e678fbfdaa85b2089dd6a6381e2f4de1df2fd090f8ece88fad61fcedbbd668cf', null from p;

-- Edgard & Cooper — Biologische kip & vis (puppy) (100 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-cup-chicken-fish/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Biologische kip & vis (puppy)', 'wet', '100 g', null, 'https://www.edgardcooper.com/nl/products/dog-cup-chicken-fish/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '*Vervaardigd met producten afkomstig van 100% gecontroleerde biologische landbouw en veeteelt. Biologische kip* 26%, biologisch rund*, biologische vis* 10%, biologisch varken*, mineralen, biologische wortel* 2%, biologische erwten* 2%, biologische rozenbottel* 0,1%, biologische kamille* 0,1%', true, now(), 'sha256:a343d75e6257077220aed80b02a45c40353689011864743d802847845ad63602', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
-- Automatisch overgenomen etiketten, batch 4 van 2026-10-21 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site zegt daarna:
-- "automatisch overgenomen van <domein> op <datum> · nog niet door een mens
-- nagelopen". Er wordt hier geen enkele controle door een mens geclaimd.
begin;

-- Edgard & Cooper — Kip & zalm (senior) (150 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-cup-chicken-salmon/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Kip & zalm (senior)', 'wet', '150 g', null, 'https://www.edgardcooper.com/nl/products/dog-cup-chicken-salmon/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip 42%, zalm 14%, mineralen, erwten 2%, zoete aardappel 1%, pompoen 1%, broccoli 1%, cranberry''s 1%, peterselie 0,1%, dille 0,1%', true, now(), 'sha256:c58fe0e730bbd10bd146cc551e0c1273987583aab5e33ebb091d98ade385bc64', null from p;

-- Farm Food — HE Classic (2 / 4 / 12 / 15 kg (standaard brok 8 mm); 2 / 4 / 12 kg (mini brok 6 mm))
-- bron: https://www.farmfood.nl/product/farm-food-he-classic/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Farm Food', 'HE Classic', 'kibble', '2 / 4 / 12 / 15 kg (standaard brok 8 mm); 2 / 4 / 12 kg (mini brok 6 mm)', null, 'https://www.farmfood.nl/product/farm-food-he-classic/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ontsloten mais, hemoglobinepoeder, ontsloten tarwe, ontsloten rijst, vleesmeel, rundvet, weipoeder, biergist, plantaardige vezels, koudgeperste zonnebloemolie, mineralen, lecithine, koudgeperste lijnzaadolie, inuline, vitaminen en sporenelementen.', true, now(), 'sha256:1439e9ef562c0f16347e439481e98b9af383cbc8dc23e0a36ea64b72587bbe2f', null from p;

-- Farm Food — HE Glutenvrij (2 / 4 / 12 / 15 kg (standaard brok 8 mm); 2 / 4 kg (mini brok 6 mm))
-- bron: https://www.farmfood.nl/product/farm-food-he-glutenvrij/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Farm Food', 'HE Glutenvrij', 'kibble', '2 / 4 / 12 / 15 kg (standaard brok 8 mm); 2 / 4 kg (mini brok 6 mm)', null, 'https://www.farmfood.nl/product/farm-food-he-glutenvrij/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ontsloten mais, hemoglobinepoeder, ontsloten sorghum (10%), ontsloten rijst, vleesmeel, rundvet, weipoeder, biergist, plantaardige vezels, koudgeperste zonnebloemolie, mineralen, lecithine, 1% Schotse Zalmolie, inuline, vitaminen en sporenelementen.', true, now(), 'sha256:8c4aaa45a2b4bafdac2627dd61379e213e4b540ab051e26ad7987b3197a0fae4', null from p;

-- Farm Food — HE met Schotse Zalmolie (2 / 4 / 12 / 15 kg (standaard brok 8 mm); 2 / 4 / 12 kg (mini brok 6 mm))
-- bron: https://www.farmfood.nl/product/farm-food-he-met-schotse-zalmolie/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Farm Food', 'HE met Schotse Zalmolie', 'kibble', '2 / 4 / 12 / 15 kg (standaard brok 8 mm); 2 / 4 / 12 kg (mini brok 6 mm)', null, 'https://www.farmfood.nl/product/farm-food-he-met-schotse-zalmolie/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ontsloten mais, hemoglobinepoeder, ontsloten tarwe, ontsloten rijst, vleesmeel, rundvet, weipoeder, biergist, plantaardige vezels, koudgeperste zonnebloemolie, mineralen, 1% Schotse Zalmolie, lecithine, inuline, vitaminen en sporenelementen.', true, now(), 'sha256:f0285e400f60bfbae8002a7bd2da8d6842b29957454e002bbb2c40d567a97903', null from p;

-- Farm Food — HE Schaap (2 / 4 / 12 / 15 kg (standaard brok 8 mm); 2 / 4 kg (mini brok 6 mm))
-- bron: https://www.farmfood.nl/product/farm-food-he-schaap/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Farm Food', 'HE Schaap', 'kibble', '2 / 4 / 12 / 15 kg (standaard brok 8 mm); 2 / 4 kg (mini brok 6 mm)', null, 'https://www.farmfood.nl/product/farm-food-he-schaap/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ontsloten mais, hemoglobinepoeder, ontsloten tarwe, ontsloten rijst, schapenvleesmeel (11%), rundvet, weipoeder, biergist, plantaardige vezels, koudgeperste zonnebloemolie, mineralen, lecithine, koudgeperste lijnzaadolie, inuline, vitaminen en sporenelementen.', true, now(), 'sha256:7bf9556ece6b7a87a167a3edb5bd5033b45bf6dc1b1cb582d1fea9655ee6c58b', null from p;

-- Farm Food — Fresh Menu Schaap (zacht gestoomd) (125 / 300 g)
-- bron: https://www.farmfood.nl/product/farm-food-fresh-menu-schaap-zacht-gestoomd/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Farm Food', 'Fresh Menu Schaap (zacht gestoomd)', 'wet', '125 / 300 g', null, 'https://www.farmfood.nl/product/farm-food-fresh-menu-schaap-zacht-gestoomd/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Schapenpens, Boullion, 23 % Schapenhart, Schapenlever, 5 % Schapenvlees, Rijst, Mineralen, Saffloerolie, 0,3 % Levertraanolie.', true, now(), 'sha256:b2734fca66db75445e506d00e4d7cde1ed519afade14be2a83c01a1af0f17ff4', null from p;

-- Farm Food — Fresh Menu Pens & Hart Compleet (zacht gestoomd) (125 / 300 g)
-- bron: https://www.farmfood.nl/product/farm-food-pens-hart-compleet-zacht-gestoomd/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Farm Food', 'Fresh Menu Pens & Hart Compleet (zacht gestoomd)', 'wet', '125 / 300 g', null, 'https://www.farmfood.nl/product/farm-food-pens-hart-compleet-zacht-gestoomd/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Runderpens (44%), runderbouillon, runderhart (19%), runderlever, rijst, schotse zalmolie (0,3%), zonnebloemolie (koudgeperst), mineralen, vitaminen, sporenelementen', true, now(), 'sha256:1d7685cc3ae322fa76cf64961ef0c4341ca003f72ad3f8efdc37e7ae6880dbcd', null from p;

-- Farm Food — Fresh Menu Rundvlees Compleet (zacht gestoomd) (125 / 300 g)
-- bron: https://www.farmfood.nl/product/farm-food-rundvlees-compleet-zacht-gestoomd/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Farm Food', 'Fresh Menu Rundvlees Compleet (zacht gestoomd)', 'wet', '125 / 300 g', null, 'https://www.farmfood.nl/product/farm-food-rundvlees-compleet-zacht-gestoomd/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Runderhart (32%), runderbouillon, runderpens, rundvlees (9%), runderlever, rijst, schotse zalmolie (0,3%), zonnebloemolie (koudgeperst), mineralen, vitaminen, sporenelementen', true, now(), 'sha256:629dce83b70954051a55eb07173d6a061b0719402bbb008d8c114e006101a7e5', null from p;

-- Farm Food — Fresh Pens & Hart Compleet (diepvries) (9 x 110 g / 2 x 400 g / 550 g (pouch, blokjes à ± 25 g) / 250 g / 500 g / 1 kg (worst))
-- bron: https://www.farmfood.nl/product/farm-food-pens-hart-compleet-diepvries/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Farm Food', 'Fresh Pens & Hart Compleet (diepvries)', 'raw', '9 x 110 g / 2 x 400 g / 550 g (pouch, blokjes à ± 25 g) / 250 g / 500 g / 1 kg (worst)', null, 'https://www.farmfood.nl/product/farm-food-pens-hart-compleet-diepvries/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Runderpens (75%), runderhart (8%), rundvlees, runderlever, schapenvet, rijst, zonnebloemolie (koudgeperst), lijnzaadolie (koudgeperst), vitaminen, mineralen, sporenelementen.', true, now(), 'sha256:274f272047400e4397dd22d9a83cdd4dc3f626c43029acb21d5a262b9ea85f75', null from p;

-- Farm Food — Fresh Rundvlees Compleet (diepvries) (9 x 110 g / 2 x 400 g / 550 g (pouch, blokjes à ± 25 g) / 250 g / 500 g / 1 kg (worst))
-- bron: https://www.farmfood.nl/product/farm-food-rundvlees-compleet-diepvries/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Farm Food', 'Fresh Rundvlees Compleet (diepvries)', 'raw', '9 x 110 g / 2 x 400 g / 550 g (pouch, blokjes à ± 25 g) / 250 g / 500 g / 1 kg (worst)', null, 'https://www.farmfood.nl/product/farm-food-rundvlees-compleet-diepvries/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rundvlees (63%), runderpens, runderhart (7%), runderlever, schapenvet, rijst, zonnebloemolie (koudgeperst), lijnzaadolie (koudgeperst), vitaminen, mineralen, sporenelementen.', true, now(), 'sha256:173f7a48bb91dc4bdf0fe0dc39243155bcbec0680e9eed071f846541a0fbd569', null from p;

-- Greenheart-Premiums — Sportline Summerstyle (500 g / 3 kg / 12 kg)
-- bron: https://greenheart-premiums.com/greenheart-sportline-summerstyle-2.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Greenheart-Premiums', 'Sportline Summerstyle', 'kibble', '500 g / 3 kg / 12 kg', null, 'https://greenheart-premiums.com/greenheart-sportline-summerstyle-2.html', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, gedroogde kip 21%, gedroogde zalm 10%, aardappel, kippenvet, appel, erwt, biet, johannesbrood, zalm & sardineolie, eipoeder, gehydrolyseerde kippenlever, yucca schidigera extract.', true, now(), 'sha256:8bd430be9360a88a1efd68f8c2c5970778b20912999694cf51cda64e4ebb1508', null from p;

-- Greenheart-Premiums — Large Breeds (500 g / 3 kg / 12 kg)
-- bron: https://greenheart-premiums.com/greenheart-large-breeds.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Greenheart-Premiums', 'Large Breeds', 'kibble', '500 g / 3 kg / 12 kg', null, 'https://greenheart-premiums.com/greenheart-large-breeds.html', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, gedroogde kip 21%, gedroogde zalm 10%, aardappel, kippenvet, appel, erwt, biet, johannesbrood, zalm & sardineolie, eipoeder, gehydrolyseerde kippenlever, yucca schidigera extract.', true, now(), 'sha256:8bd430be9360a88a1efd68f8c2c5970778b20912999694cf51cda64e4ebb1508', null from p;

-- Greenheart-Premiums — Power Meat for a Day – Chicken & Rice (1 x 250 g / 1 x 500 g / 12 x 250 g / 12 x 500 g)
-- bron: https://greenheart-premiums.com/greenheart-meat-for-a-day-box.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Greenheart-Premiums', 'Power Meat for a Day – Chicken & Rice', 'wet', '1 x 250 g / 1 x 500 g / 12 x 250 g / 12 x 500 g', null, 'https://greenheart-premiums.com/greenheart-meat-for-a-day-box.html', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip 79%, rijst 15%, zalmolie 5%, vitaminen en mineralen 1%.', true, now(), 'sha256:183a6b6d27e33ca1250d2d4db804f74fdbc553fcbf601b5061a201b8cef3b5a1', null from p;

-- Greenheart-Premiums — Medium Energy (500 g / 1,5 kg / 3 kg / 12 kg)
-- bron: https://greenheart-premiums.com/greenheart-medium-energy.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Greenheart-Premiums', 'Medium Energy', 'kibble', '500 g / 1,5 kg / 3 kg / 12 kg', null, 'https://greenheart-premiums.com/greenheart-medium-energy.html', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Haver, rijst, gedroogde kip 22%, rijstzemelen, kippenvet, biet, zalm & sardineolie, appel, mineralen, gehydrolyseerde kippenlever, yucca schidigera extract.', true, now(), 'sha256:27cf4a2381127c3f55bd875868dbc744e4cbb03d00a8f662dc0bf2581909ccd1', null from p;

-- Greenheart-Premiums — 3D Heart, Liver & Kidney Diet (500 g / 1,5 kg / 3 kg / 12 kg)
-- bron: https://greenheart-premiums.com/greenheart-3d-heart-liver-kidney-diet.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Greenheart-Premiums', '3D Heart, Liver & Kidney Diet', 'kibble', '500 g / 1,5 kg / 3 kg / 12 kg', null, 'https://greenheart-premiums.com/greenheart-3d-heart-liver-kidney-diet.html', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, maïs, kippenvet, gedroogde zalm, zalmolie, eipoeder, rijsteiwit, mineralen, lignocellulose, weipoeder, lijnzaadolie.', true, now(), 'sha256:0c555e84c5b27f416d3b9fc398a9f11938cd6e25e00f25967827787461e2736f', null from p;

-- Greenheart-Premiums — Small Breeds Active (500 g / 1,5 kg / 3 kg / 7,5 kg)
-- bron: https://greenheart-premiums.com/greenheart-small-breeds-active.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Greenheart-Premiums', 'Small Breeds Active', 'kibble', '500 g / 1,5 kg / 3 kg / 7,5 kg', null, 'https://greenheart-premiums.com/greenheart-small-breeds-active.html', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, gedroogde kip 21%, gedroogde zalm 10%, aardappel, kippenvet, appel, erwt, biet, johannesbrood, zalm & sardineolie, eipoeder, gehydrolyseerde kippenlever, yucca schidigera extract', true, now(), 'sha256:cbba6ffeeb7c663c37b25c281dbd7c96ca5a693bf029c45cecb0503898118dca', null from p;

-- Greenheart-Premiums — Optimal Condition Light (500 g / 3 kg / 12 kg)
-- bron: https://greenheart-premiums.com/greenheart-optimal-condition-light.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Greenheart-Premiums', 'Optimal Condition Light', 'kibble', '500 g / 3 kg / 12 kg', null, 'https://greenheart-premiums.com/greenheart-optimal-condition-light.html', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, gedroogde eend 25%, biet, rijstzemelen, lignocellulose, lijnzaad, gist, kippenvet, zalm-, & sardine olie, borage olie, maïsolie, taurine, l-carnitine, gehydrolyseerde kippenlever, yucca schidigera – extract.', true, now(), 'sha256:424a380a1b471aa001d862210423ae619c5e8474596aa44098efe3e2b4eb7678', null from p;

-- Greenheart-Premiums — Anti Allergy (500 g / 1,5 kg / 3 kg / 12 kg)
-- bron: https://greenheart-premiums.com/greenheart-anti-allergy.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Greenheart-Premiums', 'Anti Allergy', 'kibble', '500 g / 1,5 kg / 3 kg / 12 kg', null, 'https://greenheart-premiums.com/greenheart-anti-allergy.html', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde lam 18%, rijst, aardappel, rijstzemelen, kip- en rundervet, erwt, appel, johannesbrood, zalm- en sardineolie, gist, gehydrolyseerde kippenlever, yucca schidigera – extract.', true, now(), 'sha256:5f920d30d8f98feb5fc12d566e7f8d213a6c29e8cee0fc2f70d6f6a06625871c', null from p;

-- Greenheart-Premiums — Medium Sensitive Lamb (500 g / 1,5 kg / 3 kg / 12 kg)
-- bron: https://greenheart-premiums.com/greenheart-medium-sensitive-lamb.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Greenheart-Premiums', 'Medium Sensitive Lamb', 'kibble', '500 g / 1,5 kg / 3 kg / 12 kg', null, 'https://greenheart-premiums.com/greenheart-medium-sensitive-lamb.html', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, haver, gedroogd lam 14%, gedroogde kip 11%, rijstzemelen, zalm & sardineolie, kippenvet, biet, gist, aardappel, appel, gehydrolyseerde kippenlever, yucca schidigera extract.', true, now(), 'sha256:4d15ed75afca4461c88bac295001cddae782f6489c260b082f7c2a931874654b', null from p;

-- Greenheart-Premiums — Puppy Medium/Large Breeds (500 g / 1,5 kg / 3 kg / 12 kg)
-- bron: https://greenheart-premiums.com/greenheart-puppy-medium-large-breeds.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Greenheart-Premiums', 'Puppy Medium/Large Breeds', 'kibble', '500 g / 1,5 kg / 3 kg / 12 kg', null, 'https://greenheart-premiums.com/greenheart-puppy-medium-large-breeds.html', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, 21% gedroogd kip, haver, 10% gedroogde zalm, aardappel, kippenvet, appel, erwt, biet, johannesbroodmeel, zalm & sardineolie, eipoeder, gehydroliseerde kippenlever, yucca schidigera extract', true, now(), 'sha256:9d48eeee574c5af422d2d69f58223e1acb50e31e9266b2c2d74a4f52499b56d2', null from p;

-- Greenheart-Premiums — Senior Sensitive Fish (500 g / 1,5 kg / 3 kg / 12 kg)
-- bron: https://greenheart-premiums.com/greenheart-senior-sensitive-fish.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Greenheart-Premiums', 'Senior Sensitive Fish', 'kibble', '500 g / 1,5 kg / 3 kg / 12 kg', null, 'https://greenheart-premiums.com/greenheart-senior-sensitive-fish.html', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde zalm 17%, erwt, haver, rijst, rijstzemelen, sorghum, kippenvet, biet, johannesbrood, zalm & sardineolie, aardappel, appel, lijnzaad, gehydrolyseerde kippenlever, yucca schidigera extract.', true, now(), 'sha256:5646f4f284bb9b8941ab0a7452de04ab6bf1c05dfbcf7f4c1159d61fb42a631b', null from p;

-- Greenheart-Premiums — Sportline Extreme (500 g / 1,5 kg / 3 kg / 12 kg)
-- bron: https://greenheart-premiums.com/greenheart-sportline-extreme.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Greenheart-Premiums', 'Sportline Extreme', 'kibble', '500 g / 1,5 kg / 3 kg / 12 kg', null, 'https://greenheart-premiums.com/greenheart-sportline-extreme.html', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde kalkoen 40%, aardappel, kippenvet, rundvet, appel, zalm & sardineolie, borageolie, zonnebloemolie, lijnzaadolie, L-carnitine 0,3% = 3 g/kg, L-arginine, taurine, gehydrolyseerde kippenlever, yucca schidigera extract.', true, now(), 'sha256:f998b7760324e564b4bba42effc8e853b9a115ca382494eaab45b4e8eae69220', null from p;

-- Greenheart-Premiums — Sportline Grain Free (500 g / 3 kg / 12 kg)
-- bron: https://greenheart-premiums.com/greenheart-sportline-grainfree.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Greenheart-Premiums', 'Sportline Grain Free', 'kibble', '500 g / 3 kg / 12 kg', null, 'https://greenheart-premiums.com/greenheart-sportline-grainfree.html', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde kip 31%, aardappel-, kip- en rundervet, biet, zalm- en sardineolie, appel, gehydrolyseerde kippenlever, L-carnitine 1 g/kg, yucca schidigera-extract.', true, now(), 'sha256:2af10b517ef6e0b73b1591e7ae5218579c8d50799f7516cd801b22dfa8e1d3e8', null from p;

-- Greenheart-Premiums — Sportline Classic (500 g / 3 kg / 12 kg)
-- bron: https://greenheart-premiums.com/greenheart-sportline-classic-2.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Greenheart-Premiums', 'Sportline Classic', 'kibble', '500 g / 3 kg / 12 kg', null, 'https://greenheart-premiums.com/greenheart-sportline-classic-2.html', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde kip 32%, haver, rijst, kippenvet, maïs, gehydrolyseerde kip, zalm & sardineolie, lijnzaad, vitaminen en mineralen en yucca schidigera extract.', true, now(), 'sha256:dea6faa4ebb302d3ffc7e11df9227eb00dfb762403e78b92517c1aba27683a60', null from p;

-- Greenheart-Premiums — Normal Use Light (500 g / 3 kg / 12 kg)
-- bron: https://greenheart-premiums.com/greenheart-normal-use-light.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Greenheart-Premiums', 'Normal Use Light', 'kibble', '500 g / 3 kg / 12 kg', null, 'https://greenheart-premiums.com/greenheart-normal-use-light.html', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Haver, maïs, gedroogde kip 18%, biet, zalm & sardineolie, appel, kippenvet, mineralen, gehydrolyseerde kippenlever, yucca schidigera extract.', true, now(), 'sha256:460f54e0976b99a6464dbc9fc9e62ce3bca1015bb53cfa70194fe3175862d511', null from p;

-- Greenheart-Premiums — Puppy All Breeds (500 g / 1,5 kg / 3 kg / 12 kg)
-- bron: https://greenheart-premiums.com/greenheart-puppy-all-breeds.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Greenheart-Premiums', 'Puppy All Breeds', 'kibble', '500 g / 1,5 kg / 3 kg / 12 kg', null, 'https://greenheart-premiums.com/greenheart-puppy-all-breeds.html', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, 20% gedroogd kip, haver, 10% gedroogd lam, erwteneiwit, kippenvet, aardappel, rundervet, appel, zalm & sardineolie, bieten, gist, lecithine, gehydroliseerde kippenlever, lijnzaad, yucca schidigera extract', true, now(), 'sha256:d612a1dccb368969b3d63aa6ef1f5e60c9630d5b4d04dca0a8e59f22e708d8d3', null from p;

-- Greenheart-Premiums — Medium Sensitive Fish (500 g / 1,5 kg / 3 kg / 12 kg)
-- bron: https://greenheart-premiums.com/greenheart-medium-sensitive-fish.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Greenheart-Premiums', 'Medium Sensitive Fish', 'kibble', '500 g / 1,5 kg / 3 kg / 12 kg', null, 'https://greenheart-premiums.com/greenheart-medium-sensitive-fish.html', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Haver, rijst, gedroogde zalm 16%, erwten, rijstzemelen, kippenvet, aardappelen, zalm- en sardineolie, rode biet, appel, gist, gehydrolyseerde kippenlever, yucca schidigera-extract.', true, now(), 'sha256:9139165a0087e8f39c70bc1c7b2ff4d2485bb02bfb6e60441cb526936b79b1f6', null from p;

-- Greenheart-Premiums — Multi-Effective Fish Oil Rich Diet (500 g / 1,5 kg / 3 kg / 12 kg)
-- bron: https://greenheart-premiums.com/greenheart-multi-effective-fish-oil-rich-diet.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Greenheart-Premiums', 'Multi-Effective Fish Oil Rich Diet', 'kibble', '500 g / 1,5 kg / 3 kg / 12 kg', null, 'https://greenheart-premiums.com/greenheart-multi-effective-fish-oil-rich-diet.html', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde kalkoen 40%, aardappel, kippenvet, rundvet, appel, zalm & sardineolie, borage olie, zonnebloemolie, lijnzaadolie, L-carnitine 0,3% = 3 g/kg, l- arginine, taurine, gehydrolyseerde kippenlever, yucca schidigera – extract.', true, now(), 'sha256:66a8e2d99c8f6730670a73be21422339419a89b2a34c141826f65adf6dbe1cce', null from p;

-- Greenheart-Premiums — Small Breeds Low Activity (500 g / 1,5 kg / 3 kg / 7,5 kg)
-- bron: https://greenheart-premiums.com/greenheart-small-breeds-low-activity.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Greenheart-Premiums', 'Small Breeds Low Activity', 'kibble', '500 g / 1,5 kg / 3 kg / 7,5 kg', null, 'https://greenheart-premiums.com/greenheart-small-breeds-low-activity.html', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte 24%, vis 22%, aardappelen, haver, appel, rijst, erwten, rode biet, johannesbrood, zalmolie & sardineolie, ei, gevogeltevet, gist, mineralen & vitaminen, gehydrolyseerde kippenlever, yucca schidigera-extract.', true, now(), 'sha256:4fb5c6a1536c78cf76b47edfb838aec4205f2d96bc9e2928da430498f7dacde6', null from p;

-- Greenheart-Premiums — Small Breeds Hypoallergenic Fish (3 kg / 7,5 kg)
-- bron: https://greenheart-premiums.com/greenheart-small-breeds-hypoallergenic-fish.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Greenheart-Premiums', 'Small Breeds Hypoallergenic Fish', 'kibble', '3 kg / 7,5 kg', null, 'https://greenheart-premiums.com/greenheart-small-breeds-hypoallergenic-fish.html', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde forel (30%), aardappelen, rijst, kippenvet, haver, lignocellulose, bieten, zalmolie, gehydrolyseerde kippenlever, Yucca schidigera-extract.', true, now(), 'sha256:c1012d7c958af79799e50d80d8f2232e9d225cad4fe99c89d73dc816edee9727', null from p;

-- Jarco — Hondenbrokken Veterinair Hypoallergeen P.E.D. (2,5 / 12,5 kg)
-- bron: https://jarco.nl/products/hondenbrokken-veterinair-hypoallergeen-p-e-d
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenbrokken Veterinair Hypoallergeen P.E.D.', 'kibble', '2,5 / 12,5 kg', null, 'https://jarco.nl/products/hondenbrokken-veterinair-hypoallergeen-p-e-d', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïsgluten, maïs 30%, rijst 20%, erwten, kokosvet, mineralen (calciumcarbonaat, natriumchloride, dicalciumfosfaat), gistextract, lijnzaad, gedroogde bietenpulp, maïsolie (1%), inuline (bron van FOS)', true, now(), 'sha256:4190537709f41e83070904fd5608da56cac4680921f144b8ed4754dae07faab1', null from p;

-- Jarco — Hondenbrokken Veterinair Weight reduction V.C.D. (2,5 / 12,5 kg)
-- bron: https://jarco.nl/products/hondenbrokken-veterinair-weight-reduction-v-c-d
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenbrokken Veterinair Weight reduction V.C.D.', 'kibble', '2,5 / 12,5 kg', null, 'https://jarco.nl/products/hondenbrokken-veterinair-weight-reduction-v-c-d', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gedroogde kip (15%), rijst (14%), lignocellulose, gevogeltevet, gedroogde bietenpulp, lijnzaad, gedroogde vis, biergist, zalmolie, inuline (bron van Fos), chondroïtine, glucosamine.', true, now(), 'sha256:260763c24195f1bbf90268fddbd2f4f6b28739946daae16c0627aaea3c9580a4', null from p;

-- Jarco — Hondenbrokken Veterinair Hypoallergeen H.R.D. (2,5 / 12,5 kg)
-- bron: https://jarco.nl/products/hondenbrokken-veterinair-hypoallergeen-h-r-d
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenbrokken Veterinair Hypoallergeen H.R.D.', 'kibble', '2,5 / 12,5 kg', null, 'https://jarco.nl/products/hondenbrokken-veterinair-hypoallergeen-h-r-d', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde eend 19%, rijst 19%, gedroogde aardappel 18%, maïs, erwten, gedroogde bietenpulp, gevogeltevet, gehydrolyseerde kippenlever, zalmolie 1%, lijnzaad, inuline (bron van FOS) 0,3%, glucosamine 0,03%, chondroïtine 0,03%.', true, now(), 'sha256:1c12a72424467c892bdb7f315c276b26cec42771106392502349ff944741a90d', null from p;

-- Jarco — Hondenbrokken Veterinair Hypoallergeen L.R.D. (2,5 / 12,5 kg)
-- bron: https://jarco.nl/products/hondenbrokken-veterinair-hypoallergeen-l-r-d
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenbrokken Veterinair Hypoallergeen L.R.D.', 'kibble', '2,5 / 12,5 kg', null, 'https://jarco.nl/products/hondenbrokken-veterinair-hypoallergeen-l-r-d', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogd lam (21%), rijst (21%), erwten, maïs, gedroogde bietenpulp, biergist, gevogeltevet, gehydrolyseerde kippenlever, zalmolie, lijnzaad, inuline (bron van FOS), glucosamine, chondroitine.', true, now(), 'sha256:f2313fb7fe1f1342a442139ca522707466e52417606a153894fcf3f62b88e569', null from p;

-- Jarco — Hondenbrokken Natural Sensitive Zalm (2,5 / 12,5 kg)
-- bron: https://jarco.nl/products/hondenbrokken-natural-sensitive-zalm
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenbrokken Natural Sensitive Zalm', 'kibble', '2,5 / 12,5 kg', null, 'https://jarco.nl/products/hondenbrokken-natural-sensitive-zalm', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde zalm 26%, rijst 25%, oliën en vetten (0,5% zalmolie), plantaardige bijproducten, gist, mineralen, zaden, schaal- en weekdieren (0,01% glucosamine) , 0,01% chondroïtine sulfaat.', true, now(), 'sha256:81decbc893eddf62ce540ab979bb6c32f651dc58272325d4f30dff68b265f64e', null from p;

-- Jarco — Hondenbrokken Natural Sensitive Lam (2,5 / 12,5 kg)
-- bron: https://jarco.nl/products/hondenbrokken-natural-sensitive-lam
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenbrokken Natural Sensitive Lam', 'kibble', '2,5 / 12,5 kg', null, 'https://jarco.nl/products/hondenbrokken-natural-sensitive-lam', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde lam 26%, 0,01% chondroïtine), rijst 40%, oliën en vetten (0,5% zalmolie), groenten, plantaardige bijproducten, vruchten (1% gedroogde appel), mineralen, gist, schaal- en weekdieren (0,01% glucosamine).', true, now(), 'sha256:11129c5bd0a4104d76f7db43ec0a3d61cd732be6da16b9c39a49e7fef002ab90', null from p;

-- Jarco — Hondenbrokken Natural Sensitive Insect (2,5 / 12,5 kg)
-- bron: https://jarco.nl/products/hondenbrokken-natural-sensitive-insect
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenbrokken Natural Sensitive Insect', 'kibble', '2,5 / 12,5 kg', null, 'https://jarco.nl/products/hondenbrokken-natural-sensitive-insect', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde insecten (26%), gedroogde aardappel (18%), aardappelzetmeel (18%), erwten, dierlijk vet, zoete aardappel (4%), gedroogde johannesbrood, lijnzaad, mineralen, biergist, zalmolie, inuline (bron van FOS), gedroogde wortel, brandnetel, Echinacea, gedroogde tomaat, gedroogde appel (0,15%), gedroogde mango, gedroogde pruimen, gedroogde banaan, tijm, basilicum, spirulina, cranberry, selderij.', true, now(), 'sha256:166eb3ea16f39a9799781e4c42ca58f8952237223a397bb72bbe5b19322b947e', null from p;

-- Jarco — Hondenbrokken Natural Sensitive Hert (2,5 / 12,5 kg)
-- bron: https://jarco.nl/products/hondenbrokken-natural-sensitive-hert
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenbrokken Natural Sensitive Hert', 'kibble', '2,5 / 12,5 kg', null, 'https://jarco.nl/products/hondenbrokken-natural-sensitive-hert', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde hert 26%, 0,01% chondroïtine, rijst 60%, oliën en vetten (0,5% zalmolie), groenten, plantaardige bijproducten, vruchten (1% gedroogde appel), mineralen, schaal- en weekdieren (0,03% glucosamine).', true, now(), 'sha256:4c648761256586268ad67b8f74b6a52c85100990c9fe86b6ab0d2e4dd625b26f', null from p;

-- Jarco — Hondenbrokken High Energy Kip (12,5 kg)
-- bron: https://jarco.nl/products/hondenbrokken-high-energy-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenbrokken High Energy Kip', 'kibble', '12,5 kg', null, 'https://jarco.nl/products/hondenbrokken-high-energy-kip', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde kip 26%, 0,01% chondroïtine, rijst 37%, oliën en vetten (1% zalmolie), plantaardige bijproducten, vis en -bijproducten, gist, zaden, ei en eiproducten, mineralen, schaal- en weekdieren (0,03% glucosamine).', true, now(), 'sha256:d107ed870c767760b665598991deaf89d019f1978c7be0f8736db5742573ec1d', null from p;

-- Jarco — Hondenbrokken Natural Active Kalkoen (2,5 / 12,5 kg)
-- bron: https://jarco.nl/products/hondenbrokken-natural-active-kalkoen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenbrokken Natural Active Kalkoen', 'kibble', '2,5 / 12,5 kg', null, 'https://jarco.nl/products/hondenbrokken-natural-active-kalkoen', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde kalkoen 26%, 0,01% chondroïtine, rijst 14%, oliën en vetten (5% zalmolie), plantaardige bijproducten, groenten, zaden, vruchten, mineralen, schaal- en weekdieren (0,01% glucosamine).', true, now(), 'sha256:48b4dde3e7cda65f1d2ee9d48d269fd7306a94e6b9adf1a768e98d692395b639', null from p;

-- Jarco — Hondenbrokken Natural Light Rund (2,5 / 12,5 kg)
-- bron: https://jarco.nl/products/hondenbrokken-natural-light-rund
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenbrokken Natural Light Rund', 'kibble', '2,5 / 12,5 kg', null, 'https://jarco.nl/products/hondenbrokken-natural-light-rund', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde rund 26%, 0,01% chondroïtine sulfaat, rijst, mais, plantaardige bijproducten, oliën en vetten (0,5% zalmolie), mineralen, gist, schaal- en weekdieren (0,01% glucosamine).', true, now(), 'sha256:dbceb85002f446d467420bd540ef1540701c6c6df8fdd5c25940fae78386ed7b', null from p;

-- Jarco — Natural Classic Persbrok Vers Vlees Kip (4 / 12,5 kg)
-- bron: https://jarco.nl/products/natural-classic-persbrok-vers-vlees-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Natural Classic Persbrok Vers Vlees Kip', 'kibble', '4 / 12,5 kg', null, 'https://jarco.nl/products/natural-classic-persbrok-vers-vlees-kip', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip (waarvan 58% verse kip), gedroogde aardappel, aardappelzetmeel, erwten, gevogeltevet, lijnzaad, zalmolie (1%), biergist, zonnebloemolie, eipoeder, gedroogde appels, cranberries, inuline (bron van FOS), gedroogde tomaten, spirulina, Echinacea, glucosamine (0,02%), chondroïtine (0,02%).', true, now(), 'sha256:df1c49e648131aec6a3dc6125764c486312308d9c52b8fea99e980cdac012b58', null from p;

-- Jarco — Hondenbrokken Natural Classic Persbrok Adult Kip (4 / 15 kg)
-- bron: https://jarco.nl/products/hondenbrokken-natural-classic-persbrok-adult-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenbrokken Natural Classic Persbrok Adult Kip', 'kibble', '4 / 15 kg', null, 'https://jarco.nl/products/hondenbrokken-natural-classic-persbrok-adult-kip', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde kip 26%, gedroogde rund, 0,01% chondroïtine sulfaat, mais, rijst, oliën en vetten (0,5% zalmolie), plantaardige bijproducten (0,3% inuline (bron van FOS)), zaden, mineralen, schaal- en weekdieren (0,01% glucosamine).', true, now(), 'sha256:3e6f0f7aaeda96722569de157a768638a56c08c7831343e258b0306822bb0687', null from p;

-- Jarco — Hondenbrokken Natural Classic Persbrok Adult Eend (4 / 15 kg)
-- bron: https://jarco.nl/products/hondenbrokken-natural-classic-persbrok-adult-eend
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenbrokken Natural Classic Persbrok Adult Eend', 'kibble', '4 / 15 kg', null, 'https://jarco.nl/products/hondenbrokken-natural-classic-persbrok-adult-eend', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde eend 26%, 0,01% chondroïtine, groenten (waarvan 40% aardappel), rijst, oliën en vetten, vruchten, mineralen, schaal- en weekdieren (0,01% glucosamine).', true, now(), 'sha256:9d26e47466a128e2fe9074cd6e2553907bb131fc1c6b3e3cfe19cb1856723eaf', null from p;

-- Jarco — Hondenbrokken Natural Classic Persbrok Puppy (4 / 15 kg)
-- bron: https://jarco.nl/products/hondenbrokken-natural-classic-persbrok-puppy
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenbrokken Natural Classic Persbrok Puppy', 'kibble', '4 / 15 kg', null, 'https://jarco.nl/products/hondenbrokken-natural-classic-persbrok-puppy', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde rund 26%, gedroogde kip 16%, 0,01% chondroïtine sulfaat, mais, rijst, oliën en vetten (0,5% zalmolie), plantaardige bijproducten (0,2% inuline (bron van FOS)), melk- en bijproducten, zaden, mineralen, schaal- en weekdieren (0,01% glucosamine).', true, now(), 'sha256:1d9a2680b09cf19b90458f45cdbf81e49c003ed95770523d4170193877cdcd88', null from p;

-- Jarco — Hondenbrokken Natural Classic Persbrok Rendier (4 / 12,5 kg)
-- bron: https://jarco.nl/products/hondenbrokken-natural-classic-persbrok-rendier
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenbrokken Natural Classic Persbrok Rendier', 'kibble', '4 / 12,5 kg', null, 'https://jarco.nl/products/hondenbrokken-natural-classic-persbrok-rendier', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogd rendier 26%, 0,01% chondroïtine, groenten (waarvan 40% aardappel), rijst, oliën en vetten, vruchten (1% appel), mineralen, schaal- en weekdieren (0,01% glucosamine).', true, now(), 'sha256:a51c8994b4b223146fee80b1c6a371991cf91b384a27a90afc7041ada47b5c1a', null from p;

-- Jarco — Hondenbrokken Natural Classic Persbrok Konijn (4 / 12,5 kg)
-- bron: https://jarco.nl/products/hondenbrokken-natural-classic-persbrok-konijn
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenbrokken Natural Classic Persbrok Konijn', 'kibble', '4 / 12,5 kg', null, 'https://jarco.nl/products/hondenbrokken-natural-classic-persbrok-konijn', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogd konijn 26%, 0,01% chondroïtine, groenten (waarvan 40% aardappel), rijst, oliën en vetten, vruchten (1% appel), mineralen, schaal- en weekdieren (0,01% glucosamine).', true, now(), 'sha256:20ae0e3e3ecc38d3a1c1b39b5ead3513d39e4c89690f0f0747f606e50659a79f', null from p;

-- Jarco — Hondenbrokken Natural Classic Persbrok Zalm (4 / 12,5 kg)
-- bron: https://jarco.nl/products/hondenbrokken-natural-classic-persbrok-zalm
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenbrokken Natural Classic Persbrok Zalm', 'kibble', '4 / 12,5 kg', null, 'https://jarco.nl/products/hondenbrokken-natural-classic-persbrok-zalm', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde zalm 26%, mais, rijst, plantaardige bijproducten, oliën en vetten, mineralen, 0,01% chondroïtine sulfaat, schaal- en weekdieren (0,01% glucosamine).', true, now(), 'sha256:7abe4f2a382d8c210e8c842ad197e3d60393335e1a67d402de2b39eb4bce98b4', null from p;

-- Jarco — Hondenbrokken Natural Classic Persbrok Lam/Rijst (4 / 12,5 kg)
-- bron: https://jarco.nl/products/hondenbrokken-natural-classic-persbrok-lam-rijst
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenbrokken Natural Classic Persbrok Lam/Rijst', 'kibble', '4 / 12,5 kg', null, 'https://jarco.nl/products/hondenbrokken-natural-classic-persbrok-lam-rijst', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde lam 26%, 0,01% chondroïtine, rijst, oliën en vetten, mineralen, schaal- en weekdieren (0,01% glucosamine).', true, now(), 'sha256:3aafe436ef790ea2cef39f1faf889ab4250c3a0a31bb6c39ec574b3ed52fbe46', null from p;

-- Jarco — Hondenbrokken Giant Senior Lam (3 / 12,5 kg)
-- bron: https://jarco.nl/products/hondenbrokken-giant-senior-lam
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenbrokken Giant Senior Lam', 'kibble', '3 / 12,5 kg', null, 'https://jarco.nl/products/hondenbrokken-giant-senior-lam', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde lam 26%, rijst, oliën en vetten (0,5% zalmolie), groenten, plantaardige bijproducten, vruchten (1% gedroogde appel), mineralen (0,5% hexametafosfaat), gist, schaal- en weekdieren (0,01% glucosamine).', true, now(), 'sha256:56bffe08a5cc7b5fc8e575670ec92e86736ae4ed3ed7e266a899d3b928aab25d', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
-- Automatisch overgenomen etiketten, batch 5 van 2026-10-21 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site zegt daarna:
-- "automatisch overgenomen van <domein> op <datum> · nog niet door een mens
-- nagelopen". Er wordt hier geen enkele controle door een mens geclaimd.
begin;

-- Jarco — Hondenbrokken Natural Giant Adult Lam (3 / 12,5 kg)
-- bron: https://jarco.nl/products/hondenbrokken-natural-giant-adult-lam
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenbrokken Natural Giant Adult Lam', 'kibble', '3 / 12,5 kg', null, 'https://jarco.nl/products/hondenbrokken-natural-giant-adult-lam', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde lam 26%, rijst, oliën en vetten (0,5% zalmolie), groenten, plantaardige bijproducten, vruchten (1% gedroogde appel), mineralen (0,5% hexametafosfaat), gist, schaal- en weekdieren (0,01% glucosamine).', true, now(), 'sha256:56bffe08a5cc7b5fc8e575670ec92e86736ae4ed3ed7e266a899d3b928aab25d', null from p;

-- Jarco — Hondenbrokken Natural Giant Junior Kip (3 / 12,5 kg)
-- bron: https://jarco.nl/products/hondenbrokken-natural-giant-junior-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenbrokken Natural Giant Junior Kip', 'kibble', '3 / 12,5 kg', null, 'https://jarco.nl/products/hondenbrokken-natural-giant-junior-kip', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde kip 26%, rijst, plantaardige bijproducten, oliën en vetten (0,5% zalmolie), groenten, vruchten, mineralen, schaal- en weekdieren (0,01% glucosamine).', true, now(), 'sha256:83969183a0081675f5c26f1ce3dbc64ee82c1c1935bc26344cc16ede23c3b20a', null from p;

-- Jarco — Hondenbrokken Natural Giant Puppy Kalkoen (3 / 12,5 kg)
-- bron: https://jarco.nl/products/hondenbrokken-natural-giant-puppy-kalkoen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenbrokken Natural Giant Puppy Kalkoen', 'kibble', '3 / 12,5 kg', null, 'https://jarco.nl/products/hondenbrokken-natural-giant-puppy-kalkoen', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde kalkoen 26%, 0,01% chondroïtine, rijst, oliën en vetten, plantaardige bijproducten, groenten, zaden, vruchten, mineralen, schaal- en weekdieren (0,01% glucosamine).', true, now(), 'sha256:aa4c28bba173e578bdf7ec51d81667472861d2e119ffb5bfcd049e39c2b4a5a5', null from p;

-- Jarco — Hondenbrokken Natural Large Senior Kip (2,5 / 15 kg)
-- bron: https://jarco.nl/products/hondenbrokken-natural-large-senior-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenbrokken Natural Large Senior Kip', 'kibble', '2,5 / 15 kg', null, 'https://jarco.nl/products/hondenbrokken-natural-large-senior-kip', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde kip 26%, 0,01% chondroïtine, rijst, plantaardige bijproducten, oliën en vetten (0,5% zalmolie), vruchten (1% appel), mineralen, schaal- en weekdieren (0,01% glucosamine).', true, now(), 'sha256:eda44dc43429504d58b224c419ccb101b46354df03c499ce7e28880817949f73', null from p;

-- Jarco — Hondenbrokken Natural Large Adult Eend (2,5 / 15 kg)
-- bron: https://jarco.nl/products/hondenbrokken-natural-large-adult-eend
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenbrokken Natural Large Adult Eend', 'kibble', '2,5 / 15 kg', null, 'https://jarco.nl/products/hondenbrokken-natural-large-adult-eend', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde eend 26%, 0,01% chondroïtine, rijst, plantaardige bijproducten (0,3% inuline (bron van FOS)), oliën en vetten, groenten, vruchten (1% appel), mineralen, schaal- en weekdieren (0,01% glucosamine).', true, now(), 'sha256:e9771e6ae72de098163314e29b6327667b11cc212a99e2f953d5d0481e9bfd24', null from p;

-- Jarco — Hondenbrokken Natural Large Adult Kip (2,5 / 15 kg)
-- bron: https://jarco.nl/products/hondenbrokken-natural-large-adult-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenbrokken Natural Large Adult Kip', 'kibble', '2,5 / 15 kg', null, 'https://jarco.nl/products/hondenbrokken-natural-large-adult-kip', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde kip 26%, 0,01% chondroïtine, rijst, groenten (8% aardappel), oliën en vetten (0,5 % zalmolie), plantaardige bijproducten, vruchten (1% appel), gist, mineralen, schaal- en weekdieren (0,01% glucosamine).', true, now(), 'sha256:c62e1c8396c3e175212ca610f972e5d7b9ac47f6f265ad45c8fb2259edaf9298', null from p;

-- Jarco — Hondenbrokken Natural Medium Senior Kip (2 / 12,5 kg)
-- bron: https://jarco.nl/products/hondenbrokken-natural-medium-senior-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenbrokken Natural Medium Senior Kip', 'kibble', '2 / 12,5 kg', null, 'https://jarco.nl/products/hondenbrokken-natural-medium-senior-kip', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde kip 26%, 0,01% chondroïtine, rijst, groenten (8% aardappel), oliën en vetten (0,5 % zalmolie), plantaardige bijproducten, vruchten (1% appel), gist, mineralen, schaal- en weekdieren (0,01% glucosamine).', true, now(), 'sha256:c62e1c8396c3e175212ca610f972e5d7b9ac47f6f265ad45c8fb2259edaf9298', null from p;

-- Jarco — Hondenbrokken Natural Medium Adult Eend (2 / 12,5 kg)
-- bron: https://jarco.nl/products/hondenbrokken-natural-medium-adult-eend
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenbrokken Natural Medium Adult Eend', 'kibble', '2 / 12,5 kg', null, 'https://jarco.nl/products/hondenbrokken-natural-medium-adult-eend', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde eend 26%, 0,01% chondroïtine, rijst, groenten, oliën en vetten (0,5% zalmolie), plantaardige bijproducten, gist, vruchten (1% appel), mineralen, schaal- en weekdieren (0,01% glucosamine).', true, now(), 'sha256:5f1fa3769401d89909ed6be85b0cc6fb45b8f5c6e880c27f22c49faf6e0e9ded', null from p;

-- Jarco — Hondenbrokken Natural Medium Adult Kip (2 / 12,5 kg)
-- bron: https://jarco.nl/products/hondenbrokken-natural-medium-adult-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenbrokken Natural Medium Adult Kip', 'kibble', '2 / 12,5 kg', null, 'https://jarco.nl/products/hondenbrokken-natural-medium-adult-kip', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde kip 26%, 0,01% chondroïtine, rijst, groenten (8% aardappel), oliën en vetten (0,5% zalmolie), plantaardige bijproducten, gist, vruchten (1% appel), mineralen, schaal- en weekdieren (0,01% glucosamine).', true, now(), 'sha256:22483515096b2c0c133e101c15b1c69eb9b1605f016c92e331a73751f298ad3b', null from p;

-- Jarco — Hondenbrokken Natural Medium Puppy Kip (2 / 10 kg)
-- bron: https://jarco.nl/products/hondenbrokken-natural-medium-puppy-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenbrokken Natural Medium Puppy Kip', 'kibble', '2 / 10 kg', null, 'https://jarco.nl/products/hondenbrokken-natural-medium-puppy-kip', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde kip 26%, 0,01% chondroïtine, rijst, oliën en vetten (1% zalmolie), groenten, plantaardige bijproducten, vruchten, zaden, mineralen, schaal- en weekdieren (0,01% glucosamine).', true, now(), 'sha256:5403eabda27b1b6239c435ccf7634714169e30417d066ae90ee00bc090c6ae76', null from p;

-- Jarco — Hondenbrokken Mini Senior Lam (1,75 kg)
-- bron: https://jarco.nl/products/hondenbrokken-mini-senior-lam-1-75-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenbrokken Mini Senior Lam', 'kibble', '1,75 kg', null, 'https://jarco.nl/products/hondenbrokken-mini-senior-lam-1-75-kg', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde lam 26%, 0,01% chondroïtine, rijst, oliën en vetten (1% zalmolie), groenten, plantaardige eiwitextracten, plantaardige bijproducten, vruchten, vis- en bijproducten, mineralen, schaal- en weekdieren (0,01% glucosamine).', true, now(), 'sha256:0e42a50cf7776c8583d4b87819268f3d32251694ace39804c951d5f73ec045bc', null from p;

-- Jarco — Hondenbrokken Natural Mini Adult Eend (2 / 10 kg)
-- bron: https://jarco.nl/products/natural-mini-adult-eend
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenbrokken Natural Mini Adult Eend', 'kibble', '2 / 10 kg', null, 'https://jarco.nl/products/natural-mini-adult-eend', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde eend 26%, 0,01% chondroïtine, granen, rijst, oliën en vetten (1% zalmolie), groenten (waarvan 4% gedroogde aardappel), plantaardige bijproducten, vruchten, zaden, mineralen, schaal- en weekdieren (0,01% glucosamine).', true, now(), 'sha256:071509ee901cdf9cd3003606eba0f2e95824bce9b07709facf278bc7622b1ed0', null from p;

-- Jarco — Hondenbrokken Mini Puppy Eend (1,75 kg)
-- bron: https://jarco.nl/products/mini-puppy-eend-1-75-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenbrokken Mini Puppy Eend', 'kibble', '1,75 kg', null, 'https://jarco.nl/products/mini-puppy-eend-1-75-kg', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde eend 26%, 0,01% chondroïtine, rijst, oliën en vetten (1% zalmolie), plantaardige eiwitextracten, groenten, plantaardige bijproducten, mineralen, schaal- en weekdieren (0,015% glucosamine).', true, now(), 'sha256:8a822ff3e190c1aa445630c43d0d092552a453e71022de6a8b9eb420ab170851', null from p;

-- Jarco — Hondenbrokken Natural Large Puppy Kip (2,5 / 12,5 kg)
-- bron: https://jarco.nl/products/hondenbrokken-natural-large-puppy-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenbrokken Natural Large Puppy Kip', 'kibble', '2,5 / 12,5 kg', null, 'https://jarco.nl/products/hondenbrokken-natural-large-puppy-kip', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde kip 26%, 0,01% chondroïtine, rijst, oliën en vetten (0,5% zalmolie), groenten, plantaardige bijproducten, zaden, mineralen, schaal- en weekdieren (0,01% glucosamine).', true, now(), 'sha256:83bdd6a2bf7c280e2442a2056f220a62e849dd215717d49fa225b871d9809816', null from p;

-- Jarco — Hondenbrokken Natural Mini Adult Zalm (1,75 / 10 kg)
-- bron: https://jarco.nl/products/natural-hondenbrokken-mini-adult-zalm
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenbrokken Natural Mini Adult Zalm', 'kibble', '1,75 / 10 kg', null, 'https://jarco.nl/products/natural-hondenbrokken-mini-adult-zalm', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde zalm 26%, rijst 14%, groenten, gist, mineralen, zaden, oliën en vetten (0,5% zalmolie), schaal- en weekdieren (0,01% glucosamine).', true, now(), 'sha256:8188a6ca05bd97c7c9126c516ceac0104c74787b750a7d82fcd2384b66b6cbd3', null from p;

-- Jarco — Dinner-Mix Compleet (1 / 12,5 kg)
-- bron: https://jarco.nl/products/dinner-mix-compleet
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Dinner-Mix Compleet', 'kibble', '1 / 12,5 kg', null, 'https://jarco.nl/products/dinner-mix-compleet', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, maïs 20%, groenten (erwten, groene bonen, prei, groene kool, boerenkool, wortels), oliën en vetten, mineralen.', true, now(), 'sha256:6da6cfcdf1fb6ae463726265e254cab95f07f08cc46eeb8b421e28648bf22743', null from p;

-- Jarco — Hondenblikvoeding - Vis menu (400 gr (blik) / tray (6 stuks))
-- bron: https://jarco.nl/products/jarco-hondenblikvoeding-vis-menu-400-gr-verpakt-a-6-st
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenblikvoeding - Vis menu', 'wet', '400 gr (blik) / tray (6 stuks)', null, 'https://jarco.nl/products/jarco-hondenblikvoeding-vis-menu-400-gr-verpakt-a-6-st', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Koolvis 68%, bouillon 20%, aardappelen 10%, mineralen.', true, now(), 'sha256:32b9e3c899d07b782a117ec46b9ced9eb110e9d51b08c6ace39a0baaaeb6696f', null from p;

-- Jarco — Hondenblikvoeding - Wild menu (400 gr (blik) / tray (6 stuks))
-- bron: https://jarco.nl/products/jarco-hondenblikvoeding-wild-menu-400-gr-verpakt-a-6-st
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenblikvoeding - Wild menu', 'wet', '400 gr (blik) / tray (6 stuks)', null, 'https://jarco.nl/products/jarco-hondenblikvoeding-wild-menu-400-gr-verpakt-a-6-st', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Wild 40%, bouillon 26%, pasta 4%, wortelen 4%, mineralen.', true, now(), 'sha256:1b2a6a870045f4897f61e0e5d3487abd9a6c03c514cc4a162c64b7dc673e3e25', null from p;

-- Jarco — Hondenblikvoeding - Lam menu (400 gr (blik) / tray (6 stuks))
-- bron: https://jarco.nl/products/jarco-hondenblikvoeding-lam-menu-400-gr-verpakt-a-6-st
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenblikvoeding - Lam menu', 'wet', '400 gr (blik) / tray (6 stuks)', null, 'https://jarco.nl/products/jarco-hondenblikvoeding-lam-menu-400-gr-verpakt-a-6-st', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam 40%, bouillon 24,5%, granen (rijst 4%), mineralen.', true, now(), 'sha256:6a603779c8d34d7e26cba82c4aafc6b42bad21d3f2f758acb504c6ff4cc0d958', null from p;

-- Jarco — Hondenblikvoeding - Rund menu (400 gr (blik) / tray (6 stuks))
-- bron: https://jarco.nl/products/jarco-hondenblikvoeding-rund-menu-400-gr-verpakt-a-6-st
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenblikvoeding - Rund menu', 'wet', '400 gr (blik) / tray (6 stuks)', null, 'https://jarco.nl/products/jarco-hondenblikvoeding-rund-menu-400-gr-verpakt-a-6-st', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rund 70%, bouillon 24,5%, granen (rijst 4%), mineralen.', true, now(), 'sha256:d194dd1ddc51145e70a9c38c423a2a17d9c2309ddd0d4d25335b657d153b6594', null from p;

-- Jarco — Hondenblikvoeding - Kalkoen menu (400 gr (blik) / tray (6 stuks))
-- bron: https://jarco.nl/products/jarco-hondenblikvoeding-kalkoen-menu-400-gr-verpakt-a-6-st
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenblikvoeding - Kalkoen menu', 'wet', '400 gr (blik) / tray (6 stuks)', null, 'https://jarco.nl/products/jarco-hondenblikvoeding-kalkoen-menu-400-gr-verpakt-a-6-st', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen 37%, bouillon 25,5%, granen (rijst 4%), mineralen.', true, now(), 'sha256:4e530cfe0283354717615f7f6469c856dd56964dcc996906759340e52ac8e23a', null from p;

-- Jarco — Hondenblikvoeding - Kip menu (400 gr (blik) / tray (6 stuks))
-- bron: https://jarco.nl/products/jarco-honden-blikvoeding-kip-menu-400-gr-verpakt-a-6-st
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Hondenblikvoeding - Kip menu', 'wet', '400 gr (blik) / tray (6 stuks)', null, 'https://jarco.nl/products/jarco-honden-blikvoeding-kip-menu-400-gr-verpakt-a-6-st', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip 72%, bouillon 22%, granen (rijst 4%), mineralen.', true, now(), 'sha256:aaad44bb70815777d3aaaf62d227c0697825e0caa9fe5d4e086bb1c6c4004ebd', null from p;

-- Jarco — Honden Vleeskuipjes Kip-Eend (2 x 150 gr (doos: 6 stuks))
-- bron: https://jarco.nl/products/honden-vleeskuipjes-kip-eend-2x-150-gr-verpakt-a-6-x-2-st
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Honden Vleeskuipjes Kip-Eend', 'wet', '2 x 150 gr (doos: 6 stuks)', null, 'https://jarco.nl/products/honden-vleeskuipjes-kip-eend-2x-150-gr-verpakt-a-6-x-2-st', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip 56%, eend 4%, granen, plantaardige producten (bietenpulp 3%), vitaminen en mineralen.', true, now(), 'sha256:4e3d293e5cc494da02f5e1f54c2ae231e52e7e414cc63999eb77da83faab0d48', null from p;

-- Jarco — Honden Vleeskuipjes Kip-Konijn (2 x 150 gr (doos: 6 stuks))
-- bron: https://jarco.nl/products/honden-vleeskuipjes-kip-konijn-2x-150-gr-verpakt-a-6-x-2-st
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Honden Vleeskuipjes Kip-Konijn', 'wet', '2 x 150 gr (doos: 6 stuks)', null, 'https://jarco.nl/products/honden-vleeskuipjes-kip-konijn-2x-150-gr-verpakt-a-6-x-2-st', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip 56%, konijn 4%, granen, plantaardige producten (bietenpulp 3%), vitaminen en mineralen.', true, now(), 'sha256:706601eea99a166e9b8263988c0d236a28d5a7b672f70dfd677cfeff54dbfcee', null from p;

-- Jarco — Honden Vleeskuipjes Kip-Zalm (2 x 150 gr (doos: 6 stuks))
-- bron: https://jarco.nl/products/honden-vleeskuipjes-kip-zalm-2x-150-gr-verpakt-a-6-x-2-st
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Honden Vleeskuipjes Kip-Zalm', 'wet', '2 x 150 gr (doos: 6 stuks)', null, 'https://jarco.nl/products/honden-vleeskuipjes-kip-zalm-2x-150-gr-verpakt-a-6-x-2-st', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip 56%, zalm 4%, granen, plantaardige producten (bietenpulp 3%), vitaminen en mineralen.', true, now(), 'sha256:fab357f93eaa0695b6dbd8d63d10e919c569a7ced21f24a403e22f0c5015552c', null from p;

-- Jarco — Honden Vleeskuipjes Kip-Kalkoen (2 x 150 gr (doos: 6 stuks))
-- bron: https://jarco.nl/products/honden-vleeskuipjes-kip-kalkoen-2x-150-gr-verpakt-a-6-x-2-st
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Honden Vleeskuipjes Kip-Kalkoen', 'wet', '2 x 150 gr (doos: 6 stuks)', null, 'https://jarco.nl/products/honden-vleeskuipjes-kip-kalkoen-2x-150-gr-verpakt-a-6-x-2-st', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip 56%, 4% kalkoen, granen, plantaardige producten (bietenpulp 3%), vitaminen en mineralen.', true, now(), 'sha256:f9cb64e85381fd40a1617fe77bd5686dc42ada59e25a9737262eea4fba35ac50', null from p;

-- Jarco — Honden Vleeskuipjes Kip-Rund (2 x 150 gr (doos: 6 stuks))
-- bron: https://jarco.nl/products/honden-vleeskuipjes-kip-rund-2x-150-gr-verpakt-a-6-x-2-st
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Honden Vleeskuipjes Kip-Rund', 'wet', '2 x 150 gr (doos: 6 stuks)', null, 'https://jarco.nl/products/honden-vleeskuipjes-kip-rund-2x-150-gr-verpakt-a-6-x-2-st', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip 56%, 4% rund), granen, plantaardige producten (bietenpulp 3%), vitaminen en mineralen.', true, now(), 'sha256:3437f6525597d75059981cc5044ca887217313a3dbc4c5286b924cf661b0df09', null from p;

-- Jarco — Vleeskuipjes Kip (2 x 150 gr (doos: 6 stuks))
-- bron: https://jarco.nl/products/vleeskuipjes-kip-2x-150-gr-verpakt-a-6x-2-st
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Vleeskuipjes Kip', 'wet', '2 x 150 gr (doos: 6 stuks)', null, 'https://jarco.nl/products/vleeskuipjes-kip-2x-150-gr-verpakt-a-6x-2-st', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip 60%, granen, plantaardige producten (bietenpulp 3%), vitaminen en mineralen.', true, now(), 'sha256:26ceb9d61e2e5b3b5b999de0275d98c43ffdbffa57af08c5ba6d812af774a8ce', null from p;

-- Jarco — Vers gestoomde maaltijd Lam (395 gr (tray) / doos (7 stuks))
-- bron: https://jarco.nl/products/vers-gestoomde-maaltijd-lam
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Vers gestoomde maaltijd Lam', 'wet', '395 gr (tray) / doos (7 stuks)', null, 'https://jarco.nl/products/vers-gestoomde-maaltijd-lam', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam (70%), Groenten (6,9%) zoete aardappel, wortels, erwten, zonnebloemolie (0,75%), zalmolie (0,3%) fruit en kruiden (gedroogde tomaat, gedroogde zeewier, gedroogde basilicum, gedroogde yucca).', true, now(), 'sha256:9ae74db4c5389a4729df3797e26b9fb6b2bb097c7c959c331b40efed885e9823', null from p;

-- Jarco — Vers gestoomde maaltijd Zalm (395 gr (tray) / doos (7 stuks))
-- bron: https://jarco.nl/products/vers-gestoomde-maaltijd-zalm
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Vers gestoomde maaltijd Zalm', 'wet', '395 gr (tray) / doos (7 stuks)', null, 'https://jarco.nl/products/vers-gestoomde-maaltijd-zalm', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Zalm (70%), Groenten (6,9%) zoete aardappel, wortels, erwten, zonnebloemolie (0,75%), zalmolie (0,3%) fruit en kruiden (gedroogde tomaat, gedroogde zeewier, gedroogde basilicum, gedroogde yucca)', true, now(), 'sha256:ced4b0da56193137dc0095dfc8efe99d752fd57894fcc967d03f7cb93f761e81', null from p;

-- Jarco — Vers gestoomde maaltijd Eend (395 gr (tray) / doos (7 stuks))
-- bron: https://jarco.nl/products/gestoomde-maaltijd-eend
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Vers gestoomde maaltijd Eend', 'wet', '395 gr (tray) / doos (7 stuks)', null, 'https://jarco.nl/products/gestoomde-maaltijd-eend', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eend (70%), Groenten (6,9%) zoete aardappel, wortels, erwten, zonnebloemolie (0,75%), zalmolie (0,3%) fruit en kruiden (gedroogde tomaat, gedroogde zeewier, gedroogde basilicum, gedroogde yucca).', true, now(), 'sha256:ec6a3314e550db15fc997f62887c7e1aa15a02489f2edf519d791b64dd181d60', null from p;

-- Jarco — Verse Hondenworst Sensitive Lam (250 / 600 gr)
-- bron: https://jarco.nl/products/verse-hondenworst-sensitive-lam
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Verse Hondenworst Sensitive Lam', 'wet', '250 / 600 gr', null, 'https://jarco.nl/products/verse-hondenworst-sensitive-lam', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam (79,8%), rijst (18,4%), vitaminen en mineralen (1,2%).', true, now(), 'sha256:3a3fecf54953fc4349969872d092f43cb1fbf2483bbed5660f4c1c5924a58e6f', null from p;

-- Jarco — Verse Hondenworst Kip (250 / 450 / 750 gr)
-- bron: https://jarco.nl/products/verse-hondenworst-kip-giant
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Verse Hondenworst Kip', 'wet', '250 / 450 / 750 gr', null, 'https://jarco.nl/products/verse-hondenworst-kip-giant', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip (80,9%), rijst (17,3%), groenten, vitaminen en mineralen (1,2%).', true, now(), 'sha256:584bad58531405a1a6f4a4ca2595e2b62e8ce6c9f817f44177464a6313ab8e07', null from p;

-- Jarco — Verse Hondenworst Kip-Rund (250 / 450 / 750 gr)
-- bron: https://jarco.nl/products/verse-hondenworst-kip-rund-giant
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Verse Hondenworst Kip-Rund', 'wet', '250 / 450 / 750 gr', null, 'https://jarco.nl/products/verse-hondenworst-kip-rund-giant', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip (66,3%), rund (14,2%), rijst (17,8%), groenten, vitaminen en mineralen (1,2%).', true, now(), 'sha256:116b81c09d74eced52ef1bcba0a1117ad62b7f9f4cb8e1c847f6f8d84ba15830', null from p;

-- Jarco — Verse Hondenworst Kip-Konijn (250 / 750 gr)
-- bron: https://jarco.nl/products/verse-hondenworst-kip-konijn-giant
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Verse Hondenworst Kip-Konijn', 'wet', '250 / 750 gr', null, 'https://jarco.nl/products/verse-hondenworst-kip-konijn-giant', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip (65,9%), konijn (14,7%), rijst (17,6%), vitaminen en mineralen (1,2%).', true, now(), 'sha256:5e0f83a31475ed0793d1a91a1790e04d60aea34b7c01477d47d4d95203cf0b00', null from p;

-- Jarco — Verse Hondenworst Kip-Eend (250 gr)
-- bron: https://jarco.nl/products/verse-hondenworst-kip-eend
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Verse Hondenworst Kip-Eend', 'wet', '250 gr', null, 'https://jarco.nl/products/verse-hondenworst-kip-eend', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip (64,6%), eend (14,9%), rijst (18,6%), vitaminen en mineralen (1,2%).', true, now(), 'sha256:a6e46a72cc5c4b8ab66a76b04952c1a28a681b765210bbd1e9d6b5236c6855a1', null from p;

-- Jarco — Verse Hondenworst Kip-Kalkoen (450 / 750 gr)
-- bron: https://jarco.nl/products/verse-hondenworst-kip-kalkoen-giant
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Jarco', 'Verse Hondenworst Kip-Kalkoen', 'wet', '450 / 750 gr', null, 'https://jarco.nl/products/verse-hondenworst-kip-kalkoen-giant', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip (66,3%), kalkoen (14,2%), rijst (17,8%), groenten, vitaminen en mineralen (1,2%).', true, now(), 'sha256:bbb4ca89adc5b19a17c2adbd09a072781578dabd58127dde3eed5c613fb671e6', null from p;

-- Kivo — Verse kip puppy glutenvrij (4 / 14 kg)
-- bron: https://www.kivopetfood.nl/p/verse-kip-glutenvrij-2/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Verse kip puppy glutenvrij', 'kibble', '4 / 14 kg', null, 'https://www.kivopetfood.nl/p/verse-kip-glutenvrij-2/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip (36%; waarvan verse kip: 14% ), rijst (31%), mais (16,5%), pluimveevet (9%), ontsloten erwt (4%), zalmolie (0,5%), biergist (0,5%), eipoeder (0,5%), mineralen (1,54%*), gedroogde appel (0,1%), cranberry (0,1%), inuline (bron van FOS; 0,1%), gedroogde tomaat (0,1%), yucca(0,02%), spirulina (0,01%), Echinacea (0,01%), glucosamine (0,01%), chondroïtine (0,01%).', true, now(), 'sha256:3b8ed8ceee3e2c37d09caff54c2a3b65588f26c5c27ab0dbf4f30502d288657c', null from p;

-- Kivo — Verse eend graanvrij (4 / 14 kg)
-- bron: https://www.kivopetfood.nl/p/verse-eend/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Verse eend graanvrij', 'kibble', '4 / 14 kg', null, 'https://www.kivopetfood.nl/p/verse-eend/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eend (32.5%; vers: 17.5%- gedroogd 15%), zoete aardappel (28%), erwten (17%), gehydrolyseerde gelatine, kippenvet, bietenpulp, biergist, gedroogde appels (1.7%), zalmolie (0.5%), MOS (mannan-oligosaccharides)(0.5%), eipoeder, chichorei (bron van FOS; 0.2%), gedroogde algen (0.2%), peren (0.2%), blauwe bessen (0.2%), cranberry (0.2%), kamille (0.2%), venkel (0.2%), brandnetel (0.2%), paardebloem (0.2%), lijnzaadolie, glucosamine (300 mg/kg), chondroitine 300 mg/kg, yucca.', true, now(), 'sha256:92676ffeffd7459e250fafd8e1b3bea94deb3b08e69d8cfb5f08d548e76b4f2d', null from p;

-- Kivo — Verse Zalm graanvrij (4 / 14 kg)
-- bron: https://www.kivopetfood.nl/p/verse-zalm/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Verse Zalm graanvrij', 'kibble', '4 / 14 kg', null, 'https://www.kivopetfood.nl/p/verse-zalm/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Koudgeperste brok, volledige maaltijd, vrij van fratsen. Zalm (30.2%; vers: 15% – gedroogd: 14%, zalmolie 1.2%), gestoomde aardappel (20.5%), aardappelzetmeel, erwten (9,6%), gevogeltevet, biergist, ei, gedroogde appels (0.5%), cranberry (0.3%), inuline (bron van FOS) (0.3%), gedroogde tomaten (0.2%), spirulina (0.2%), Echinacea (0.2%), yucca (0,02%).', true, now(), 'sha256:af7aa49099e740cd6bd8cdd3a8972df41d17b467d806a4435948f63b40e7cde5', null from p;

-- Kivo — Verse lam graanvrij (4 / 14 kg)
-- bron: https://www.kivopetfood.nl/p/verse-lam-graanvrij/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Verse lam graanvrij', 'kibble', '4 / 14 kg', null, 'https://www.kivopetfood.nl/p/verse-lam-graanvrij/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam (24%; gedroogd: 14% – vers 10%), gestoomde aardappel (16%), erwtenzetmeel (15%), gedroogde aardappel (11%), gestoomde erwt (8%), gevogeltevet, erwteiwit (5%), gehydrolyseerde gelatine, bietenpulp, lijnzaad, biergist, mineralen, gedroogde johannesbrood, zalmolie (0.8%), gedroogde appel (0.5%), inuline (bron van FOS) (0.2%), ei (0.1%), gedroogde wortel (0.02%), brandnetel (0.02%), Echinacea (0.02%), gedroogde tomaat (0.02%), gedroogde mango (0.02%), gedroogde pruimen (0.02%), gedroogde banaan (0.02%), tijm (0.02%), basilicum (0.02%), spirulina (0.02%), cranberry (0.02%), selderij (0.02%), yucca (0.01%), glucosamine (100 mg/kg), chondroïtine (100 mg/kg).', true, now(), 'sha256:5b364cbf0d871bf3c62dd1d31492983f390438d774ef55775e9c274cc83a8f14', null from p;

-- Kivo — Verse Kip glutenvrij (4 / 14 kg)
-- bron: https://www.kivopetfood.nl/p/verse-kip-glutenvrij/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Verse Kip glutenvrij', 'kibble', '4 / 14 kg', null, 'https://www.kivopetfood.nl/p/verse-kip-glutenvrij/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip (36%; vers: 22% – gedroogd: 14%), rijst (36%), pluimveevet, gestoomde aardappel (12%), zalmolie (1.0%), biergist, eipoeder, mineralen, gedroogde appel (0.1%), cranberry (0.1%), inuline (bron van FOS; 0.3%), gedroogde tomaat (0.1%), yucca ( 0.02%), spirulina (0.01%), Echinacea (0.01%).', true, now(), 'sha256:9c531506ebde0e05b9238389ed8b3a2b0534608592dbe0f95bf807f32116f4a0', null from p;

-- Kivo — MINI ADULT - Kalkoen & Rijst (4 kg)
-- bron: https://www.kivopetfood.nl/p/mini-adult-kalkoen-rijst/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'MINI ADULT - Kalkoen & Rijst', 'kibble', '4 kg', null, 'https://www.kivopetfood.nl/p/mini-adult-kalkoen-rijst/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen (20%), gepofte mais, gedroogde rund (14%, waarvan 6% rundervet), gestoomde sorghum, gestoomde rijst (10%), johannesbroodmeel, geraffineerde raapzaadoile, maltodextrine, zalmolie (3%), gedroogde bietenpulp (2.5%), eipoeder, biergist, wortel (0.1%), erwt (0.1%), glucosamine (0.05%), chondroïtine­sulfaat (0.05%).', true, now(), 'sha256:f8456d136caca985978c4b32b2cfd04d3af4065aeee2a1bac4fe8a18af85f877', null from p;

-- Kivo — Kip & Rund - Junior/Energy (4 / 14 kg)
-- bron: https://www.kivopetfood.nl/p/juniorenergy/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Kip & Rund - Junior/Energy', 'kibble', '4 / 14 kg', null, 'https://www.kivopetfood.nl/p/juniorenergy/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip (16%), gestoomde rijst (16%), rund (15.5%, waarvan 5.5% rundvet), gepofte mais, gestoomde sorghum, johannesbrood, geraffineerde raapzaadolie, gedroogde bietenpulp (3%), gestoomde haver (2.5%), maltodextrine, eipoeder, gestoomde tapioca, gelatinaat, biergist, zalmolie (0.4%), erwt (0.1%), wortel (0.1%), banaan (0.1%), peterselie (0.1%), brandnetel (0.1%), appel (0.1%), cranberry (0.1%).', true, now(), 'sha256:5cfc331ed9421949bcfeff46f04b6a4bbd3651a4cb5da91a169ce0d9188c24c7', null from p;

-- Kivo — Kalkoen & Rijst - Puppy (4 / 14 kg)
-- bron: https://www.kivopetfood.nl/p/kalkoen-rijst-puppy-glutenvrij/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Kalkoen & Rijst - Puppy', 'kibble', '4 / 14 kg', null, 'https://www.kivopetfood.nl/p/kalkoen-rijst-puppy-glutenvrij/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen (20%), gepofte mais, gedroogde rund (14%, waarvan 6% rundvet), gestoomde sorghum, gestoomde rijst (10%), johannesbroodmeel, geraffineerde raapzaadolie, maltodextrine, zalmolie (3%), gedroogde bietenpulp (2.5%), eipoeder, biergist, wortel (0.1%), banaan (0.1%), peterselie (0.1%), brandnetel (0.1%), appel (0.1%), cranberry (0.1%), erwt (0.1%), glucosamine (0.05%), chondroïtinesulfaat (0.05%).', true, now(), 'sha256:46f304f357c0de85f76831ecd4e28975166dad851df6e64c74695c34b9711415', null from p;

-- Kivo — Kip & Pens - Moeilijke eter (4 / 14 kg)
-- bron: https://www.kivopetfood.nl/p/kip-pens-glutenvrij/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Kip & Pens - Moeilijke eter', 'kibble', '4 / 14 kg', null, 'https://www.kivopetfood.nl/p/kip-pens-glutenvrij/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip (22%), gepofte mais, gestoomde rijst (18%), gestoomde sorghum, gedroogde runderpens (5%), rundvet, gedroogde bietenpulp (4%), johannesbrood, geraffineerde raapzaadolie, biergist, calciumcarbonaat, eipoeder, zalmolie (0.4%), monocalciumfosfaat, erwt (0.1%), wortel (0.1%), banaan (0.1%), peterselie (0.1%), brandnetel (0.1%), appel (0.1%), cranberry (0.1%).', true, now(), 'sha256:2fb26eb67078d0191808ee33d1afd6fe5c7fa83c1788133122b805f4d5b1ed43', null from p;

-- Kivo — Lam & Rijst - Senior/Light (4 / 14 kg)
-- bron: https://www.kivopetfood.nl/p/lam-rijst-glutenvrij/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Lam & Rijst - Senior/Light', 'kibble', '4 / 14 kg', null, 'https://www.kivopetfood.nl/p/lam-rijst-glutenvrij/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam (20%), gestoomde sorghum, gepofte rijst (17%), gepofte mais, johannesbrood, gedroogde bietenpulp, rundvet, biergist, eipoeder, kippeneiwit, zalmolie (0.5%), erwt (0.1%), wortel (0.1%), banaan (0.1%), peterselie (0.1%), brandnetel (0.1%), appel (0.1%), cranberry (0.1%), glucosamine (0.05%), chondroïtinesulfaat (0.05%).', true, now(), 'sha256:60755e04296faa1bfcbf7a50b81fdf6a7cadec7ae28bb7b4a1bdb524e93b9d3f', null from p;

-- Kivo — Kip & Rijst - Allround Fit (4 / 14 kg)
-- bron: https://www.kivopetfood.nl/p/kip-rijst-glutenvrij/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Kip & Rijst - Allround Fit', 'kibble', '4 / 14 kg', null, 'https://www.kivopetfood.nl/p/kip-rijst-glutenvrij/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip (28%), gepofte mais, gestoomde rijst (18%), gestoomde sorghum, bietenpulp, geraffineerde raapzaadolie, rundvet, biergist, zalmolie (0.6%), geraffineerde zonnebloemolie, erwt (0.1%), wortel (0.1%), banaan (0.1%), peterselie (0.1%), brandnetel (0.1%), appel (0.1%), cranberry (0.1%).', true, now(), 'sha256:1d0b858333979140b1dbef22d3052ddca481e3eae28fe70000e03bafbaa44fcf', null from p;

-- Kivo — Hert & Geit Compleet (500 g (worst); 500 g portieverpakking (blokjes van 25 g))
-- bron: https://www.kivopetfood.nl/p/hert-geit-compleet/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Hert & Geit Compleet', 'raw', '500 g (worst); 500 g portieverpakking (blokjes van 25 g)', null, 'https://www.kivopetfood.nl/p/hert-geit-compleet/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Deze maaltijd bestaat voor 80% uit vers hertenvlees en voor 20% uit vers geitenvlees. Dit wordt samengesteld uit: – 65% spiervlees: hertenvlees. – 20% orgaanvlees: geitenpens, geitenlever, geitenhart, geitenlong. – 15% bot: hertenbot.', true, now(), 'sha256:af642c73f760069e5c5240fc1532c7c39895695ab5de05b41c08596c2cc9f689', null from p;

-- Kivo — Eend compleet (500 g (worst); 500 g portieverpakking (blokjes van 25 g))
-- bron: https://www.kivopetfood.nl/p/eend-compleet/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Eend compleet', 'raw', '500 g (worst); 500 g portieverpakking (blokjes van 25 g)', null, 'https://www.kivopetfood.nl/p/eend-compleet/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Deze maaltijd bestaat voor 100% uit vers eendenvlees. Dit wordt samengesteld uit: 65% spiervlees: eendenvlees 20% orgaanvlees: eendenhart, eendenlever 15% bot: eendenkarkas', true, now(), 'sha256:9f2b5784d34cbf70ec724bd237d569eb4a8c4b2f1955a8a1a7f47b7b86e5f9fb', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
-- Automatisch overgenomen etiketten, batch 6 van 2026-10-21 (46 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site zegt daarna:
-- "automatisch overgenomen van <domein> op <datum> · nog niet door een mens
-- nagelopen". Er wordt hier geen enkele controle door een mens geclaimd.
begin;

-- Kivo — Kalkoen compleet (500 / 1000 g (worst); 500 g portieverpakking (blokjes van 25 g))
-- bron: https://www.kivopetfood.nl/p/kalkoen-compleet/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Kalkoen compleet', 'raw', '500 / 1000 g (worst); 500 g portieverpakking (blokjes van 25 g)', null, 'https://www.kivopetfood.nl/p/kalkoen-compleet/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Deze maaltijd bestaat voor 100% uit vers kalkoenvlees. Dit wordt samengesteld uit: 65% spiervlees: kalkoenvlees, kalkoen MDM 20% orgaanvlees: kalkoenhart, kalkoenmaag 15% bot: kalkoenkarkas', true, now(), 'sha256:bb79f366c325484a6d205a8cec1e15738f88da1ae3afe941bf75f297e3e636f1', null from p;

-- Kivo — Rund & Kip compleet (250 / 500 / 1000 g)
-- bron: https://www.kivopetfood.nl/p/rund-kip-compleet/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Rund & Kip compleet', 'raw', '250 / 500 / 1000 g', null, 'https://www.kivopetfood.nl/p/rund-kip-compleet/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Deze maaltijd bestaat voor 60% uit vers rundvlees en voor 40% uit vers kippenvlees. Dit wordt samengesteld uit: – 65% spiervlees: kippenvlees, rundertrimmings, runderhart. – 20% orgaanvlees: runderpens, rundernier, runderlong, rundermilt, runderlever. – 15% bot: kipkarkas.', true, now(), 'sha256:a53d27360bf296c94b0d33ec9645db63bf0123b4632679941468135596aa2a4d', null from p;

-- Kivo — Rund & Kip Compleet Portie (500 g portieverpakking (blokjes van 25 g))
-- bron: https://www.kivopetfood.nl/p/rund-kip-compleet-portie/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Rund & Kip Compleet Portie', 'raw', '500 g portieverpakking (blokjes van 25 g)', null, 'https://www.kivopetfood.nl/p/rund-kip-compleet-portie/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Deze maaltijd bestaat voor 60% uit vers rundvlees en voor 40% uit vers kippenvlees. Dit wordt samengesteld uit: – 70% spiervlees: kippenvlees, rundertrimmings, runderhart. – 20% orgaanvlees: runderpens, rundernier, runderlong, rundermilt, runderlever. – 10% bot: kipkarkas.', true, now(), 'sha256:f05a2e46ece198e712ef833bab07eeba41f4d50b4c8bbbbaa4eb6374701de8b6', null from p;

-- Kivo — Rund & Eend puppy (250 / 500 g)
-- bron: https://www.kivopetfood.nl/p/rund-eend-puppy/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Rund & Eend puppy', 'raw', '250 / 500 g', null, 'https://www.kivopetfood.nl/p/rund-eend-puppy/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Deze maaltijd bestaat voor 60% uit verse rund en voor 40% uit vers eend. Dit wordt samengesteld uit: – 65% spiervlees: eendenvlees, rundertrimmings, runderhart. – 20% orgaanvlees: runderlever, rundermilt, rundernier, runderlong, runderpens, eendenhart, eendenniertjes. – 15% bot: eendenkarkas.', true, now(), 'sha256:2df42a38e16da471c0c930f7e5463825254d63cd29bf2da26682f9a742b2db0d', null from p;

-- Kivo — Rund & Kip puppy (250 / 500 / 1000 g)
-- bron: https://www.kivopetfood.nl/p/rund-kip-puppy/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Rund & Kip puppy', 'raw', '250 / 500 / 1000 g', null, 'https://www.kivopetfood.nl/p/rund-kip-puppy/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Deze maaltijd bestaat voor 60% uit vers rundvlees en voor 40% uit vers kippenvlees. Dit wordt samengesteld uit: – 70% spiervlees: kippenvlees, rundertrimmings, runderhart. – 20% orgaanvlees: runderpens, rundernier, runderlong, rundermilt, runderlever. – 10% bot: kipkarkas.', true, now(), 'sha256:f05a2e46ece198e712ef833bab07eeba41f4d50b4c8bbbbaa4eb6374701de8b6', null from p;

-- Kivo — Rund & Eend compleet (500 / 1000 g)
-- bron: https://www.kivopetfood.nl/p/rund-eend-compleet/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Rund & Eend compleet', 'raw', '500 / 1000 g', null, 'https://www.kivopetfood.nl/p/rund-eend-compleet/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Deze maaltijd bestaat voor 60% uit verse rund en voor 40% uit verse eend. Dit wordt samengesteld uit: – 65% spiervlees: eendenvlees, rundertrimmings, runderhart. – 20% orgaanvlees: runderlever, rundermilt, rundernier, runderlong, runderpens, eendenhart, eendenniertjes. – 15% bot: eendenkarkas.', true, now(), 'sha256:60c20ef6d2a21c50fb92311bab20854ed3a3ba7cd735ddb1a336fc8b947b3a4c', null from p;

-- Kivo — Lam compleet (500 g)
-- bron: https://www.kivopetfood.nl/p/lam-compleet/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Lam compleet', 'raw', '500 g', null, 'https://www.kivopetfood.nl/p/lam-compleet/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Deze maaltijd bestaat voor 100% uit vers lamsvlees. Dit wordt samengesteld uit: 65% spiervlees: Lamsnippers & trimmings 20% orgaanvlees: lamspluck (lever, hart, long), lamspens 15% bot: lamsbot', true, now(), 'sha256:ce873bf92882e9c08b2a0b1fa5ed1bf49d15fbc14dad411ce00a6ed5f505bdcc', null from p;

-- Kivo — 5 Diersoorten compleet (500 / 1000 g)
-- bron: https://www.kivopetfood.nl/p/5-diersoorten-compleet/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', '5 Diersoorten compleet', 'raw', '500 / 1000 g', null, 'https://www.kivopetfood.nl/p/5-diersoorten-compleet/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Deze complete maaltijd bestaat voor 40% uit rund, 20% uit eend, 20% uit kalkoen, 10% uit zalm en 10% uit paling. Dit wordt samengesteld uit: – 65% spiervlees: rundertrimmings, runderhart, kalkoenvlees, zalmlijven, palinglijven. – 20% orgaanvlees: runderpens, rundernier, rundermilt, runderlong, runderlever, eendenhart, eendenniertjes. – 15% bot: eendenkarkas, kalkoenkarkas', true, now(), 'sha256:2951712b5e7ab2e03887225e64824e4c3e949b34b4a4fffe499e18aaced4597e', null from p;

-- Kivo — Kip & Vis compleet (500 / 1000 g)
-- bron: https://www.kivopetfood.nl/p/kip-vis-compleet/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Kip & Vis compleet', 'raw', '500 / 1000 g', null, 'https://www.kivopetfood.nl/p/kip-vis-compleet/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Deze maaltijd bestaat voor 65% uit vers kippenvlees, 20% verse paling en voor 15% uit verse zalm. Dit wordt samengesteld uit: – 65% spiervlees: kippenvlees, kip MDM, zalmlijven, palinglijven – 20% orgaanvlees: kippenmaag, kippenhart, kippenlever. – 15% bot: kipkarkas', true, now(), 'sha256:c61ee2abcfc701af9344cf70f347e37fa648635971adbce80075c51f0bf515c4', null from p;

-- Kivo — Kip compleet (500 / 1000 g)
-- bron: https://www.kivopetfood.nl/p/kip-compleet/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Kip compleet', 'raw', '500 / 1000 g', null, 'https://www.kivopetfood.nl/p/kip-compleet/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Deze maaltijd bestaat voor 100% uit vers kippenvlees Dit wordt samengesteld uit: 65% spiervlees: kippenvlees 20% orgaanvlees: kippenhart, kippenmaag, kippenlever, 15% bot: kipkarkas', true, now(), 'sha256:6a1a6a62d4d60fb90289d93b1856088e60f3978e1a844d08af9fe759efe7deb0', null from p;

-- Kivo — Rund compleet (500 / 1000 g)
-- bron: https://www.kivopetfood.nl/p/rund-compleet/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Rund compleet', 'raw', '500 / 1000 g', null, 'https://www.kivopetfood.nl/p/rund-compleet/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Deze maaltijd bestaat uit 100% vers rundvlees. Dit wordt samengesteld uit: – 65% spiervlees: rundertrimmings, runderhart – 20% orgaanvlees: runderpens, rundernier, rundermilt, runderlong, runderlever. – 15% bot: runderbot', true, now(), 'sha256:d1b65a2a874d2f837f0e76c871d6f126953b6b8c3647601b65da5f9ba8820dd5', null from p;

-- Kivo — Paard & Konijn compleet (500 g)
-- bron: https://www.kivopetfood.nl/p/paard-konijn-compleet/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Paard & Konijn compleet', 'raw', '500 g', null, 'https://www.kivopetfood.nl/p/paard-konijn-compleet/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Deze maaltijd bestaat voor 80% uit vers paardenvlees en voor 20% uit vers konijnenvlees. Dit wordt samengesteld uit: 65% spiervlees: paardentrimmings, konijnenvlees 20% orgaanvlees: paardennieren, paardenlong, paardenhart, paardenlever, konijnenniertjes 15% bot: konijnenkarkassen', true, now(), 'sha256:34d16e7b0e4591b59ae2bfd712ff2d2578df79095852651dd8edafcc7b97deac', null from p;

-- Kivo — Gestoomde lam (600 g)
-- bron: https://www.kivopetfood.nl/p/gestoomde-lam/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Gestoomde lam', 'wet', '600 g', null, 'https://www.kivopetfood.nl/p/gestoomde-lam/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '78% lamsvlees (5% hart, 8% pluck (lever, long, longhaas), 15% zilvervliesrijst, 3% groenten, 2% fruit, vitamines en mineralen.', true, now(), 'sha256:36153d48eb52c042606e5ef2304bd99080f88e3e16faaf2d0432b95bcc47b110', null from p;

-- Kivo — Gestoomde eend (600 g)
-- bron: https://www.kivopetfood.nl/p/gestoomde-eend/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Gestoomde eend', 'wet', '600 g', null, 'https://www.kivopetfood.nl/p/gestoomde-eend/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '78% eendenvlees (met 5% hart, 3% lever), 15% zilvervliesrijst, 3% groenten, 2% fruit, vitamines en mineralen.', true, now(), 'sha256:f37c5321b6278040d7ae250281a41fb36a62636712168b63d3e54ade70031b1d', null from p;

-- Kivo — Gestoomde Kip & Zalm (600 g)
-- bron: https://www.kivopetfood.nl/p/gestoomde-kip-zalm/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Gestoomde Kip & Zalm', 'wet', '600 g', null, 'https://www.kivopetfood.nl/p/gestoomde-kip-zalm/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '71% kippenvlees (met 5% hart en 5% lever), 8% zalm, 15% zilvervliesrijst, 3% groenten, 2% fruit, vitamines en mineralen.', true, now(), 'sha256:56f87086b13eda9e0faade65a60a4018d3374e91d405e165b721491ebae72a1d', null from p;

-- Kivo — Gestoomde Rund & Kip (600 g)
-- bron: https://www.kivopetfood.nl/p/gestoomde-rund-kip/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Gestoomde Rund & Kip', 'wet', '600 g', null, 'https://www.kivopetfood.nl/p/gestoomde-rund-kip/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '57% kippenvlees, 21% rundvlees ( met 5% hart, 5% long, 5% milt/nier, 3% lever), 15% zilvervliesrijst, 3% groenten, 2% fruit, vitamines en mineralen.', true, now(), 'sha256:0ab9d6d2f57d1b5b21d149972af96d712c048babd978d413c750882e80ae9c21', null from p;

-- Kivo — Gestoomde rund (600 g)
-- bron: https://www.kivopetfood.nl/p/gestoomde-rund/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Gestoomde rund', 'wet', '600 g', null, 'https://www.kivopetfood.nl/p/gestoomde-rund/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '78% rundvlees (met 5% hart, 5% long, 5% milt/nier, 3% lever) , 15% zilvervliesrijst, 3% groenten, 2% fruit, vitamines en mineralen.', true, now(), 'sha256:55643bd07d8f3e795be8ce5152765a2d6754da0f3375120cbc68e809aaa7c57a', null from p;

-- Kivo — Gestoomde Kip (600 g)
-- bron: https://www.kivopetfood.nl/p/gestoomde-kip/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Gestoomde Kip', 'wet', '600 g', null, 'https://www.kivopetfood.nl/p/gestoomde-kip/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '78% kippenvlees (met 5% hart en 5% lever), 15% zilvervliesrijst, 3% groenten, 2% fruit, vitamines en mineralen.', true, now(), 'sha256:6bf8d36c93fb3886c67363bb61d425f13c725f6cae1839d9c45608ec51106f5c', null from p;

-- Riverwood — Rendier & Hert met Wild Zwijn (2 / 12 kg)
-- bron: https://www.riverwoodpetfood.com/products/rendier-hert-met-wild-zwijn
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Rendier & Hert met Wild Zwijn', 'kibble', '2 / 12 kg', null, 'https://www.riverwoodpetfood.com/products/rendier-hert-met-wild-zwijn', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rendier gedehydreerd 26%, hert gedehydreerd 15%, gele erwten 15%, gele-erwtenzetmeel 14%, pluimveevet geconserveerd met tocoferolen 8%, gedroogde appelpulp 7%, wildzwijn gedehydreerd 5%, erwteneiwit 5%, gehydrolyseerd eiwit 2%, spinazie 1%, teunisbloemolie 0,5%, wortels 0,5%, glucosaminesulfaat 220 mg/kg, mannan-oligosachariden 150 mg/kg, chondroïtinesulfaat 130 mg/kg, fructo-oligosachariden 100 mg/kg, Yucca schidigera 90 mg/kg, goudsbloem 80 mg/kg, brandnetel80 mg/kg, spirulina35 mg/kg, kurkuma 30 mg/kg, citruspulp 30 mg/kg, veenbessen 30 mg/kg, kamille 25 mg/kg, kaneel 25 mg/kg', true, now(), 'sha256:aa4af5fa21c3a8564969892c3993761ae79ecd1e16f534c501aa80d226c81f5d', null from p;

-- Riverwood — Adult Large Breed Eend & Kalkoen met Fazant (2 / 12 kg)
-- bron: https://www.riverwoodpetfood.com/products/adult-large-breed-eend-kalkoen-met-fazant
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Adult Large Breed Eend & Kalkoen met Fazant', 'kibble', '2 / 12 kg', null, 'https://www.riverwoodpetfood.com/products/adult-large-breed-eend-kalkoen-met-fazant', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'eend gedehydreerd 28%, kalkoen gedehydreerd 16%, gele erwten 16%, gele erwtenzetmeel15%, pluimveevet geconserveerd met tocoferolen 8%, gedroogde appelpulp 6%, fazant gedehydreerd 4%, erwteneiwit 2%, gehydrolyseerd eiwit 2%, spinazie 1%, teunisbloemolie 0,5%, wortels 0,5%, glucosaminesulfaat 240 mg/kg, mannan-oligosachariden 150 mg/kg, chondroïtinesulfaat 140 mg/kg, fructo-oligosachariden100 mg/kg, Yucca schidigera 90 mg/kg, goudsbloem 80 mg/kg, brandnetel 80 mg/kg, spirulina 35 mg/kg, kurkuma 30 mg/kg, citruspulp 30 mg/kg, veenbessen 30 mg/kg, kamille 25 mg/kg, kaneel25 mg/kg', true, now(), 'sha256:2affdd65aacce404b11f6d2420e9deafbc3c554a5bdd5f4afde0522c8da4323c', null from p;

-- Riverwood — Junior Large Breed Eend & Kalkoen met Fazant (2 / 12 kg)
-- bron: https://www.riverwoodpetfood.com/products/junior-xl-eend-kalkoen-met-fazant
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Junior Large Breed Eend & Kalkoen met Fazant', 'kibble', '2 / 12 kg', null, 'https://www.riverwoodpetfood.com/products/junior-xl-eend-kalkoen-met-fazant', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'eend gedehydreerd (26%), kalkoen gedehydreerd (17%), gele erwten (16%), gele-erwtenzetmeel (14%), pluimveevet (geconserveerd met tocoferolen, 8%), gedroogde appelpulp (7%), fazant gedehydreerd (4%), erwteneiwit (3%), gehydrolyseerd eiwit (2%), spinazie (1%), teunisbloemolie (0,5%), wortels (0,5%), glucosaminesulfaat (290 mg/kg), mannan-oligosachariden (170 mg/kg), chondroïtinesulfaat (160 mg/kg), fructo-oligosachariden (110 mg/kg), Yucca schidigera (95 mg/kg), goudsbloem (90 mg/kg), brandnetel (90 mg/kg), spirulina (40 mg/kg), kurkuma (35 mg/kg), citruspulp (35 mg/kg), veenbessen (35 mg/kg), kamille (30 mg/kg), kaneel (30 mg/kg)', true, now(), 'sha256:f4e2d7468b2408dd4c7922572160dcf0191bf1326523ce17c6cf0316adb6fe5b', null from p;

-- Riverwood — Hert & Lam met Konijn (2 / 12 kg)
-- bron: https://www.riverwoodpetfood.com/products/hert-lam-met-konijn
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Hert & Lam met Konijn', 'kibble', '2 / 12 kg', null, 'https://www.riverwoodpetfood.com/products/hert-lam-met-konijn', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'hert gedehydreerd (26%), lam gedehydreerd (20%), gele erwten (19%), pluimveevet (geconserveerd met tocoferolen, 9%), gele-erwtenzetmeel (9%), gedroogde appelpulp (6%), konijn gedehydreerd (4%), erwteneiwit (2%), gehydrolyseerd eiwit (2%), spinazie (1%), teunisbloemolie (0,5%), wortels (0,5%), glucosaminesulfaat (220 mg/kg), mannan-oligosachariden (150 mg/kg), chondroïtinesulfaat (130 mg/kg), fructo-oligosachariden (100 mg/kg), Yucca schidigera (90 mg/kg), goudsbloem (80 mg/kg), brandnetel (80 mg/kg), spirulina (35 mg/kg), kurkuma (30 mg/kg), citruspulp (30 mg/kg), veenbessen (30 mg/kg), kamille (25 mg/kg), kaneel (25 mg/kg).', true, now(), 'sha256:b455847d8c37b13f5406fb65cdf6e4d13ae8a4e536d5a616a13d7b726b5c2002', null from p;

-- Riverwood — Forel & Makreel met Haring (2 / 12 kg)
-- bron: https://www.riverwoodpetfood.com/products/forel-makreel-met-haring
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Forel & Makreel met Haring', 'kibble', '2 / 12 kg', null, 'https://www.riverwoodpetfood.com/products/forel-makreel-met-haring', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'forel gedehydreerd 35%, gele erwten 30%, makreel gedehydreerd 14%, pluimveevet (geconserveerd met tocoferolen) 8%, haring gedehydreerd 4%, gedroogde appelpulp 2,5%, zalmolie 2%, gehydrolyseerd eiwit 2%, lijnaad 2%, erwtenmeel, glucosaminesulfaat 0,026%, chondroïtinesulfaat 0,016%, fructo-oligosacchariden 0,02%, mannan-oligosacchariden 0,015%, yucca schidigera 90 mg/kg, goudsbloem 80 mg/kg, brandnetel 80 mg/kg, spirulina 35 mg/kg, kurkuma 30 mg/kg, citruspulp 30 mg/kg, veebessen 30 mg/kg, kamille 25 mg/kg, kaneel 25 mg/kg', true, now(), 'sha256:f1a57718be0793bd907077b2ba9ef5b92ce8c5acc25f22b062e9b68d004ebf7d', null from p;

-- Riverwood — Adult Paard & Hert met Konijn (2 / 12 kg)
-- bron: https://www.riverwoodpetfood.com/products/paard-hert-met-konijn
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Adult Paard & Hert met Konijn', 'kibble', '2 / 12 kg', null, 'https://www.riverwoodpetfood.com/products/paard-hert-met-konijn', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'paardeneiwit (35%), gele erwt (30%), herteneiwit (14%), gevogeltevet (geconserveerd met gemengde tocoferolen, 8%), konijneneiwit (4%), gedroogde appelpulp (2,5%), zalmolie (2%), gehydrolyseerd eiwit (2%), lijnzaad (2%), erwtenmeel, glucosamine (0,026%), fructo-oligosachariden (0,02%), chondroïtinesulfaat (0,016%), mannan-oligosachariden (0,015%), Yucca schidigera (90 mg/kg), gedroogde goudsbloem (80 mg/kg), gedroogde brandnetel (80 mg/kg), spirulina (35 mg/kg), gedroogde kurkuma (30 mg/kg), gedroogde citruspulp (30 mg/kg), gedroogde veenbessen (30 mg/kg), gedroogde kamille (25 mg/kg), gedroogde kaneel (25 mg/kg)', true, now(), 'sha256:9b1fa5085ea17ee81e66f3633b034a26c442c77af8cf832e9b9b54a0de52ad61', null from p;

-- Riverwood — Small Breed Gans & Eend met Kwartel (2 / 6 kg)
-- bron: https://www.riverwoodpetfood.com/products/small-breed-gans-eend-met-kwartel
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Small Breed Gans & Eend met Kwartel', 'kibble', '2 / 6 kg', null, 'https://www.riverwoodpetfood.com/products/small-breed-gans-eend-met-kwartel', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gans gedehyrdreerd 32%, gele erwten 30%, eend gedehydreerd 14%, pluimveevet (geconserveerd met tocoferolen) 8%, kwartel gedehydreerd 4%, gedroogde appelpulp 2,5%, zalmolie 2%, gehydrolyseerd eiwit 2%, lijnzaad 2%, erwtenmeel, glucosaminesulfaat 0,026%, chondroïtinesulfaat 0,016%, fructo-oligosacchariden 0,02%, mannan-oligosacchariden 0,015%, yucca schidigera 90 mg.kg, goudsbloem 80 mg/kg, brandnetel 80 mg/kg, spirulina 35 mg/kg, kurkuma 30 mg/kg, citruspulp 30 mg/kg, veenbessen 30 mg/kg, kamille 25 mg/kg, kaneel 25 mg/kg', true, now(), 'sha256:c4bb54542b6971a34d4a2952226100e7e7ccf49cdc79f052534ec0077f0e7cc2', null from p;

-- Riverwood — Puppy Kalkoen & Eend met Fazant (2 / 12 kg)
-- bron: https://www.riverwoodpetfood.com/products/puppy-kalkoen-eend-met-fazant
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Puppy Kalkoen & Eend met Fazant', 'kibble', '2 / 12 kg', null, 'https://www.riverwoodpetfood.com/products/puppy-kalkoen-eend-met-fazant', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kalkoen gedehydreerd (30%), eend gedehydreerd (15%), gele erwten (15%), pluimveevet (geconserveerd met tocoferolen, 11%), gele-erwtenzetmeel (11%), gedroogde appelpulp (6%), fazant gedehydreerd (4%), erwteneiwit (3%), gehydrolyseerd eiwit (2%), spinazie (1%), teunisbloemolie (0,5%), wortels (0,5%), glucosaminesulfaat (220 mg/kg), mannan-oligosachariden (170 mg/kg), chondroïtinesulfaat (130 mg/kg), fructo-oligosachariden (110 mg/kg), Yucca schidigera (95 mg/kg), goudsbloem (90 mg/kg), brandnetel (90 mg/kg), spirulina (40 mg/kg), kurkuma (35 mg/kg), citruspulp (35 mg/kg), veenbessen (35 mg/kg), kamille (30 mg/kg), kaneel (30 mg/kg)', true, now(), 'sha256:a9467e5aa74c9af9eefe8e170b1e5a47606c81b8f4f811ecc5262b3042c78b4f', null from p;

-- Riverwood — Zalm & Witvis met Haring (2 / 12 kg)
-- bron: https://www.riverwoodpetfood.com/products/zalm-witvis-met-haring
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Zalm & Witvis met Haring', 'kibble', '2 / 12 kg', null, 'https://www.riverwoodpetfood.com/products/zalm-witvis-met-haring', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Schotse zalm gedehydreerd (26%), witvis gedehydreerd (16%), gele erwten (16%), gele-erwtenzetmeel (12%), haring gedehydreerd (10%), pluimveevet (geconserveerd met tocoferolen, 9%), gedroogde appelpulp (4%), erwteneiwit (2%), gehydrolyseerd eiwit (2%), spinazie (1%), teunisbloemolie (0,5%), wortels (0,5%), glucosaminesulfaat (220 mg/kg), mannan-oligosachariden (150 mg/kg), chondroïtinesulfaat (130 mg/kg), fructo-oligosachariden (100 mg/kg), Yucca schidigera (90 mg/kg), goudsbloem (80 mg/kg), brandnetel (80 mg/kg), spirulina (35 mg/kg), kurkuma (30 mg/kg), citruspulp (30 mg/kg), veenbessen (30 mg/kg), kamille (25 mg/kg), kaneel (25 mg/kg)', true, now(), 'sha256:49510f1c9bd85f2acf5a340718f79d3d7075c38cedeefdd484ff428097a3fce6', null from p;

-- Riverwood — Adult Surf 'n Turf Kalkoen met Buffel & Karper (300 g / 12 x 300 g)
-- bron: https://www.riverwoodpetfood.com/products/adult-surf-n-turf-kalkoen-met-buffel-karper
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Adult Surf ''n Turf Kalkoen met Buffel & Karper', 'wet', '300 g / 12 x 300 g', null, 'https://www.riverwoodpetfood.com/products/adult-surf-n-turf-kalkoen-met-buffel-karper', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kalkoen 40%, buffel 10%, karper 10%, bouillon, erwtenmeel, cassia-gom, carrageen, guargom, erwtenvezels, mineralen en vitamines, rozenblaadjes 0,1%', true, now(), 'sha256:1ede69bde99d35a13f3d22576e7e438d398fa3a124eebdd50e2968c50df014c0', null from p;

-- Riverwood — Adult Surf 'n Turf Kalkoen met Zalm & Karper (300 g / 12 x 300 g)
-- bron: https://www.riverwoodpetfood.com/products/adult-surf-n-turf-turkey-with-salmon-carp
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Adult Surf ''n Turf Kalkoen met Zalm & Karper', 'wet', '300 g / 12 x 300 g', null, 'https://www.riverwoodpetfood.com/products/adult-surf-n-turf-turkey-with-salmon-carp', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kalkoen 34%, zalm 16%, karper 10%, bouillon, bosbessen 4%, erwtenmeel, cassia-gom, carrageen, guargom, erwtenvezels, mineralen en vitamines', true, now(), 'sha256:f22b1a6f23ed02da963c5982c4410076406ab5c54776a129cdc78720b13e858a', null from p;

-- Riverwood — Adult Surf 'n Turf Kalkoen met Wildzwijn & Karper (300 g / 12 x 300 g)
-- bron: https://www.riverwoodpetfood.com/products/natvoer-vlees-en-vis-hond-adult-surf-n-turf-kalkoen-met-wildzwijn-karper-300-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Adult Surf ''n Turf Kalkoen met Wildzwijn & Karper', 'wet', '300 g / 12 x 300 g', null, 'https://www.riverwoodpetfood.com/products/natvoer-vlees-en-vis-hond-adult-surf-n-turf-kalkoen-met-wildzwijn-karper-300-gram', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kalkoen 43%, karper 10%, wildzwijn 7%, bouillon, erwtenmeel, cassia-gom, carrageen, guargom, rozenbottelvruchten 1%, erwtenvezels, mineralen en vitamines', true, now(), 'sha256:9e2a3f097bb1b8801100584d5b0c83982d5e7da2c40d045140f286501227626e', null from p;

-- Riverwood — Adult Surf 'n Turf Kalkoen met Fazant & Karper (300 g / 12 x 300 g)
-- bron: https://www.riverwoodpetfood.com/products/natvoer-hond-adult-surf-n-turf-kalkoen-met-fazant-karper
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Adult Surf ''n Turf Kalkoen met Fazant & Karper', 'wet', '300 g / 12 x 300 g', null, 'https://www.riverwoodpetfood.com/products/natvoer-hond-adult-surf-n-turf-kalkoen-met-fazant-karper', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kalkoen 43%, fazant 10%, karper 10%, bouillon, erwtenmeel, cassia-gom, carrageen, guargom, erwtenvezels, mineralen en vitamines, frambozenbladeren 0,1%.', true, now(), 'sha256:f6936ae729fc169e606e2993ba0b64f7c83f999cee797520578fcc29c98d012e', null from p;

-- Riverwood — Adult Surf 'n Turf Kalkoen met Struisvogel & Karper (300 g / 12 x 300 g)
-- bron: https://www.riverwoodpetfood.com/products/natvoer-vlees-en-vis-hond-adult-surf-n-turf-kalkoen-met-struisvogel-karper-300-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Adult Surf ''n Turf Kalkoen met Struisvogel & Karper', 'wet', '300 g / 12 x 300 g', null, 'https://www.riverwoodpetfood.com/products/natvoer-vlees-en-vis-hond-adult-surf-n-turf-kalkoen-met-struisvogel-karper-300-gram', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kalkoen 46%, karper 10%, struisvogel 4%, bouillon, erwtenmeel, cassia-gom, carrageen, guargom, erwtenvezels, mineralen en vitamines, bramen 0,1%.', true, now(), 'sha256:d63463b39eb68515246d951857a14422122467811df9fed9768740ff237154ce', null from p;

-- Riverwood — Adult Surf 'n Turf Kalkoen met Kwartel & Karper (300 g / 12 x 300 g)
-- bron: https://www.riverwoodpetfood.com/products/natvoer-vlees-en-vis-hond-adult-surf-n-turf-kalkoen-met-kwartel-karper-300-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Adult Surf ''n Turf Kalkoen met Kwartel & Karper', 'wet', '300 g / 12 x 300 g', null, 'https://www.riverwoodpetfood.com/products/natvoer-vlees-en-vis-hond-adult-surf-n-turf-kalkoen-met-kwartel-karper-300-gram', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kalkoen 41%, karper 10%, kwartel 9%, bouillon, wortel 2,5%, erwtenmeel, cassia-gom, carrageen, guargom, erwtenvezels, mineralen en vitamines.', true, now(), 'sha256:8a45b8dd85c860a1e411d242c6cf54790f2a2de26c6ab321ac30833985240932', null from p;

-- Riverwood — Eend Mono Proteïne (400 g / 6 x 400 g)
-- bron: https://www.riverwoodpetfood.com/products/eend-mono-proteine-400-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Eend Mono Proteïne', 'wet', '400 g / 6 x 400 g', null, 'https://www.riverwoodpetfood.com/products/eend-mono-proteine-400-gram', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% eend, 28,5% bouillon, 1% mineralen, 0,5% zonnebloemolie', true, now(), 'sha256:697fa8bb4812e15b09e854e2648c288af7c5e4b0b95956ff2f39410d6677aed4', null from p;

-- Riverwood — Geit Mono Proteïne (400 g / 6 x 400 g)
-- bron: https://www.riverwoodpetfood.com/products/geit-mono-proteine-400-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Geit Mono Proteïne', 'wet', '400 g / 6 x 400 g', null, 'https://www.riverwoodpetfood.com/products/geit-mono-proteine-400-gram', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% geit, 28,5% bouillon, 1% mineralen, 0,5% zonnebloemolie', true, now(), 'sha256:6b8828d38b4e7e3ec12215512f1e7b5fc9cb3712b322bba6046c637834711fae', null from p;

-- Riverwood — Hert Mono Proteïne (400 g / 6 x 400 g)
-- bron: https://www.riverwoodpetfood.com/products/hert-mono-proteine-400-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Hert Mono Proteïne', 'wet', '400 g / 6 x 400 g', null, 'https://www.riverwoodpetfood.com/products/hert-mono-proteine-400-gram', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% hert, 28,5% bouillon, 1% mineralen, 0,5% zonnebloemolie', true, now(), 'sha256:b1b9d640f9ba9f63488dfe4975e5f6edb5e86bcfe266ab94c9c0414f0f4757a4', null from p;

-- Riverwood — Kalf Mono Proteïne (400 g / 6 x 400 g)
-- bron: https://www.riverwoodpetfood.com/products/kalf-mono-proteine-400-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Kalf Mono Proteïne', 'wet', '400 g / 6 x 400 g', null, 'https://www.riverwoodpetfood.com/products/kalf-mono-proteine-400-gram', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% kalf bestaande uit hart, long en pens, 28,5% bouillon, 1% mineralen, 0,5% zonnebloemolie', true, now(), 'sha256:de53e948411aa3903e24ad68a164d6e537a951f01dd0cafc49be98b065208ce5', null from p;

-- Riverwood — Kalkoen Mono Proteïne (400 g / 6 x 400 g)
-- bron: https://www.riverwoodpetfood.com/products/kalkoen-mono-proteine-400-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Kalkoen Mono Proteïne', 'wet', '400 g / 6 x 400 g', null, 'https://www.riverwoodpetfood.com/products/kalkoen-mono-proteine-400-gram', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% kalkoen bestaande uit hart, vlees, lever, maag en nek, 28,5% bouillon, 1% mineralen, 0,5% zonnebloemolie', true, now(), 'sha256:690a6cf4ddf8ef2baf908a9f947aa8a301206c1da2daa016ef443ecf81096d39', null from p;

-- Riverwood — Paard Mono Proteïne (400 g / 6 x 400 g)
-- bron: https://www.riverwoodpetfood.com/products/paard-mono-proteine-400-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Paard Mono Proteïne', 'wet', '400 g / 6 x 400 g', null, 'https://www.riverwoodpetfood.com/products/paard-mono-proteine-400-gram', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% paard bestaande uit vlees, hart, lever en long, 28,5% bouillon, 1% mineralen, 0,5% zonnebloemolie', true, now(), 'sha256:d4b1908e39fb3f0dcd70330a1f85a680515331e393cad46bb83e487fee02fab5', null from p;

-- Riverwood — Wildzwijn Mono Proteïne (400 g / 6 x 400 g)
-- bron: https://www.riverwoodpetfood.com/products/wildzwijn-mono-proteine-400-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Wildzwijn Mono Proteïne', 'wet', '400 g / 6 x 400 g', null, 'https://www.riverwoodpetfood.com/products/wildzwijn-mono-proteine-400-gram', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% wild zwijn, 28,5% bouillon, 1% mineralen, 0,5% zonnebloemolie', true, now(), 'sha256:5867e7d047fe9aa06ee7d5e18a06ea7fde3acea92888c1d0fe0aea096ffaf26a', null from p;

-- Riverwood — Lam Mono Proteïne (400 g / 6 x 400 g)
-- bron: https://www.riverwoodpetfood.com/products/lam-mono-proteine-400-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Lam Mono Proteïne', 'wet', '400 g / 6 x 400 g', null, 'https://www.riverwoodpetfood.com/products/lam-mono-proteine-400-gram', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% lam bestaande uit hart, vlees, lever, long en pens, 28,5% bouillon, 0,1% mineralen, 0,5% zonnebloemolie.', true, now(), 'sha256:fc3b90625f5649da6f322d37155ea088385074e12c4da76d1fc791857dacb660', null from p;

-- Riverwood — Kerstmaaltijd Konijn & Kalkoen (400 g / 6 x 400 g)
-- bron: https://www.riverwoodpetfood.com/products/christmas-dinner-konijn-kalkoen-400-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Kerstmaaltijd Konijn & Kalkoen', 'wet', '400 g / 6 x 400 g', null, 'https://www.riverwoodpetfood.com/products/christmas-dinner-konijn-kalkoen-400-gram', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Konijn 36%, kalkoen 34%, bouillon 26,5%, vitamines en mineral 1%, appel 1%, cranberry 1%, pompoen 0,5%.', true, now(), 'sha256:32af0f96644c4bf9aeee4df117e98a0cef056c3c08b0456f8fa3a3a370c74a04', null from p;

-- Riverwood — Kabeljauw Visworst (800 g)
-- bron: https://www.riverwoodpetfood.com/products/kabeljauw-visworst-800-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Kabeljauw Visworst', 'wet', '800 g', null, 'https://www.riverwoodpetfood.com/products/kabeljauw-visworst-800-gram', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% kabeljauw, 13% water, 4% erwten, 4% spinazie, 3% boekweit, gepeld, 3% boekweitmeel, mineralen, 0,5% gemalen rozenbottel, 0,3% dille', true, now(), 'sha256:f65d3003b2c94c9bd985217d1546596683afa5c29f1c3f5cc34ae6d666c818a7', null from p;

-- Riverwood — Kabeljauw & Tonijn Visworst (800 g)
-- bron: https://www.riverwoodpetfood.com/products/kabeljauw-tonijn-visworst-800-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Kabeljauw & Tonijn Visworst', 'wet', '800 g', null, 'https://www.riverwoodpetfood.com/products/kabeljauw-tonijn-visworst-800-gram', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '44% kabeljauw, 26% tonijn, 13% water, 4% erwten, 4% spinazie, 3% boekweit, gepeld, 3% boekweitmeel, mineralen, 0,5% gemalen rozenbottel, 0,3% dille', true, now(), 'sha256:76475a3c63ea8151d83e20b6fd6de06bae4a23ea785cdb8ed56db58fdc1fa8e3', null from p;

-- Riverwood — Kabeljauw & Forel Visworst (800 g)
-- bron: https://www.riverwoodpetfood.com/products/kabeljauw-forel-visworst-800-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Kabeljauw & Forel Visworst', 'wet', '800 g', null, 'https://www.riverwoodpetfood.com/products/kabeljauw-forel-visworst-800-gram', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '44% kabeljauw, 26% forel, 13% water, 4% erwten, 4% spinazie, 3% boekweit, gepeld, 3% boekweitmeel, mineralen, 0,5% gemalen rozenbottel, 0,3% dille', true, now(), 'sha256:1e6245205ec3c8a24f0578cbd796e08f6abb3b13ada3e9aa709f53d3b032252e', null from p;

-- Riverwood — Kabeljauw & Zalm Visworst (800 g)
-- bron: https://www.riverwoodpetfood.com/products/kabeljauw-zalm-visworst-800-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Kabeljauw & Zalm Visworst', 'wet', '800 g', null, 'https://www.riverwoodpetfood.com/products/kabeljauw-zalm-visworst-800-gram', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '44% kabeljauw, 26% zalm, 13% water, 4% erwten, 4% spinazie, 3% boekweit, gepeld, 3% boekweitmeel, mineralen, 0,5% gemalen rozenbottel, 0,3% dille', true, now(), 'sha256:4cc94db222b496db317713de0e91620897d545f55ff2a3e70670c904d4589c1c', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
