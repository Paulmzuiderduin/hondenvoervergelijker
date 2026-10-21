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
