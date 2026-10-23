-- Automatisch overgenomen etiketten, batch 1 van 2026-10-23 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Eukanuba — Puppy Kleine rassen Verse kip (800 g / 3 / 7,5 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/puppy-kleine-rassen-verse-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Puppy Kleine rassen Verse kip', 'kibble', '800 g / 3 / 7,5 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/puppy-kleine-rassen-verse-kip', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen (34% waaronder kip 24%, een natuurlijke bron van glucosamine, chondroïtine en taurine), verse kip (15%), tarwe, gerst, gevogeltevet, maïs, rijst, gedroogde bietenpulp (3.5%), kippenjus, visolie (een natuurlijke bron van omega-3-vetzuren), mineralen (waaronder natriumhexametafosfaat 0.35%), gedroogde hele eieren, fructo-oligosachariden (0.35%, een natuurlijk prebioticum), gedroogde biergist (een natuurlijke bron van B-vitaminen en selenium), mannanoligosachariden (0.13%, een natuurlijk prebioticum).', true, now(), 'sha256:47f731aec7cc2334022f94db6fae943e60a62f5fb2d23822a55220b30d8e625e', null from p;

-- Eukanuba — Puppy Kleine/Middelgrote rassen Lam & Rijst (3 / 12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/puppy-kleinemiddelgrote-rassen-lam-rijst
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Puppy Kleine/Middelgrote rassen Lam & Rijst', 'kibble', '3 / 12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/puppy-kleinemiddelgrote-rassen-lam-rijst', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen (een natuurlijke bron van glucosamine, chondroïtine en taurine), lam (14%), rijst (14%), maïs, sorghum, varkensvet, gedroogde hele eieren, gedroogde bietenpulp (2.6%), kippenjus, visolie (een natuurlijke bron van omega-3-vetzuren), mineralen (waaronder natriumhexametafosfaat 0.35%), fructo-oligosachariden (0.25%, een natuurlijk prebioticum), gedroogde biergist (een natuurlijke bron van B-vitaminen en selenium), mannanoligosachariden (0.13%, een natuurlijk prebioticum).', true, now(), 'sha256:3d7b89f098eb9b9f4d54d2be5ba3ad7022492836248dbddfbbca42bd3c921480', null from p;

-- Eukanuba — Puppy Grote rassen Verse kip (800 g / 3 / 12 / 15 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/puppy-grote-rassen-verse-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Puppy Grote rassen Verse kip', 'kibble', '800 g / 3 / 12 / 15 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/puppy-grote-rassen-verse-kip', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'verse kip (21%), gedroogde kip en kalkoen (20% waaronder kip 14%, een natuurlijke bron van glucosamine, chondroïtine en taurine), gerst, maïsgries, maïs, tarwe, rijst, gevogeltevet, gedroogde bietenpulp (2.3%), kippenjus, visolie (een natuurlijke bron van omega-3-vetzuren), gedroogde hele eieren, mineralen, gedroogde biergist (een natuurlijke bron van B-vitaminen en selenium), fructo-oligosachariden (0.24%, een natuurlijk prebioticum), mannanoligosachariden (0.13%, een natuurlijk prebioticum).', true, now(), 'sha256:7526a024647e723cc1e465b374d0b3453c6a39a406c49f5a48fa95b2366f2199', null from p;

-- Eukanuba — Puppy Grote rassen Lam & Rijst (3 / 12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/puppy-grote-rassen-lam-rijst
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Puppy Grote rassen Lam & Rijst', 'kibble', '3 / 12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/puppy-grote-rassen-lam-rijst', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen (een natuurlijke bron van glucosamine, chondroïtine en taurine), lam (14%), rijst (14%), maïs, sorghum, maïsgries, gedroogde hele eieren, gedroogde bietenpulp (2.6%), varkensvet, kippenjus, visolie (een natuurlijke bron van omega-3-vetzuren), mineralen, fructo-oligosachariden (0.25%, een natuurlijk prebioticum), gedroogde biergist (een natuurlijke bron van B-vitaminen en selenium), mannanoligosachariden (0.13%, een natuurlijk prebioticum).', true, now(), 'sha256:594601120a583034563581deaad0bb9b5fce4c218070c3924e494264344ebb84', null from p;

-- Eukanuba — Junior Grote rassen Verse kip (12 / 15 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/junior-grote-rassen-verse-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Junior Grote rassen Verse kip', 'kibble', '12 / 15 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/junior-grote-rassen-verse-kip', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'verse kip (20%), gedroogde kip en kalkoen (20% waaronder kip 14%, een natuurlijke bron van glucosamine, chondroïtine en taurine), tarwe, maïs, maïsgries, gerst, rijst, havervlokken, gevogeltevet, gedroogde bietenpulp (2.5%), kippenjus, sorghum, visolie (een natuurlijke bron van omega-3-vetzuren), mineralen (waaronder natriumhexametafosfaat 0.33%), gedroogde hele eieren, fructo-oligosachariden (0.24%, een natuurlijk prebioticum), gedroogde biergist (een natuurlijke bron van B-vitaminen en selenium), mannanoligosachariden (0.13%, een natuurlijk prebioticum).', true, now(), 'sha256:ec4f2ce5db92b6b9d5eae9db872130f4d032f2d116a1fa20a1f847651768a76d', null from p;

-- Eukanuba — Volwassen Kleine rassen Verse kip (3 / 7,5 / 12 / 15 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/volwassen-kleine-rassen-verse-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Volwassen Kleine rassen Verse kip', 'kibble', '3 / 7,5 / 12 / 15 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/volwassen-kleine-rassen-verse-kip', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen (30% waaronder kip 21%, een natuurlijke bron van glucosamine, chondroïtine en taurine), verse kip (15%), gerst, tarwe, maïs, gevogeltevet, sorghum, havervlokken, gedroogde bietenpulp (3.5%), kippenjus, mineralen (waaronder natriumhexametafosfaat 0.35%), gedroogde hele eieren, fructo-oligosachariden (0.38%, een natuurlijk prebioticum).', true, now(), 'sha256:dbf57d121339a3f3d1f93b1cc110c103ec8b3618e52acf712b3bef7eb8830062', null from p;

-- Eukanuba — Volwassen Kleine/Middelgrote rassen Lam & Rijst (3 / 12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/volwassen-kleinemiddelgrote-rassen-lam-rijst
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Volwassen Kleine/Middelgrote rassen Lam & Rijst', 'kibble', '3 / 12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/volwassen-kleinemiddelgrote-rassen-lam-rijst', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen (een natuurlijke bron van glucosamine, chondroïtine en taurine), lam (14%), rijst (14%), maïs, sorghum, gerst, varkensvet, gedroogde bietenpulp (2.6%), kippenjus, gedroogde hele eieren, lijnzaad, mineralen (waaronder natriumhexametafosfaat 0.35%), fructo-oligosachariden (0.25%, een natuurlijk prebioticum), mannanoligosachariden (0.13%, een natuurlijk prebioticum).', true, now(), 'sha256:4e8f1d2394bca5b4b245064b6ab12d35debad88f3326ca3407e752f81f42873f', null from p;

-- Eukanuba — Volwassen Middelgrote rassen Verse kip (3 / 12 / 15 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/volwassen-middelgrote-rassen-verse-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Volwassen Middelgrote rassen Verse kip', 'kibble', '3 / 12 / 15 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/volwassen-middelgrote-rassen-verse-kip', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen (25% waaronder kip 18%, een natuurlijke bron van glucosamine, chondroïtine en taurine), verse kip (16%), gerst, maïs, tarwe, gevogeltevet, sorghum, havervlokken, gedroogde bietenpulp (3%), kippenjus, mineralen (waaronder natriumhexametafosfaat 0.35% ), fructo-oligosachariden (0.25%, een natuurlijk prebioticum), gedroogde hele eieren.', true, now(), 'sha256:19e6d6b68c355701c646df485efa2b06d0fe5c0962f1323147e0012d88eee20d', null from p;

-- Eukanuba — Volwassen Grote rassen Lam & Rijst (3 / 12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/volwassen-grote-rassen-lam-rijst
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Volwassen Grote rassen Lam & Rijst', 'kibble', '3 / 12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/volwassen-grote-rassen-lam-rijst', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen (een natuurlijke bron van glucosamine, chondroïtine en taurine), lam (14%), rijst (14%), maïs, gerst, sorghum, varkensvet, gedroogde bietenpulp (2.6%), kippenjus, gedroogde hele eieren, mineralen (waaronder natriumhexametafosfaat 0.35%), fructo-oligosachariden (0.25%, een natuurlijk prebioticum), gedroogde biergist (een natuurlijke bron van B-vitaminen en selenium), mannanoligosachariden (0.13%, een natuurlijk prebioticum), glucosamine (van dierlijke weefsels) (0.04%).', true, now(), 'sha256:6dd4e52af8f4118b6a3ab1b32ea5d49149e713e419d56738356498200b4c57e4', null from p;

-- Eukanuba — Volwassen Grote rassen Zalm & Gerst (12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/volwassen-grote-rassen-zalm-gerst
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Volwassen Grote rassen Zalm & Gerst', 'kibble', '12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/volwassen-grote-rassen-zalm-gerst', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'zalm (18%), gedroogde kip en kalkoen (een natuurlijke bron van glucosamine, chondroïtine en taurine), gerst (18%), maïs, havervlokken, sorghum, gedroogde bietenpulp (3%), kippenjus, varkensvet, zonnebloemolie, mineralen (waaronder natriumhexametafosfaat 0.35%), fructo-oligosachariden (0.25%, een natuurlijk prebioticum), gedroogde biergist (een natuurlijke bron van B-vitaminen en selenium), glucosamine (van dierlijke weefsels) (0.04%).', true, now(), 'sha256:c83898671c84ce0c2fa7cbc479b8c3c08df72f197fa24a34811bd17ad949e59b', null from p;

-- Eukanuba — Senior Kleine rassen Verse kip (3 / 7,5 / 12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/senior-kleine-rassen-verse-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Senior Kleine rassen Verse kip', 'kibble', '3 / 7,5 / 12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/senior-kleine-rassen-verse-kip', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen (31% waaronder kip 22%, een natuurlijke bron van glucosamine, chondroïtine en taurine), verse kip (15%), maïs, tarwe, gerst, gevogeltevet, havervlokken, rijst, gedroogde bietenpulp (3.5%), kippenjus, mineralen (waaronder natriumhexametafosfaat 0.35%), fructo-oligosachariden (0.51%, een natuurlijk prebioticum), gedroogde hele eieren, visolie (een natuurlijke bron van omega-3-vetzuren), mannanoligosachariden (0.13%, een natuurlijk prebioticum), glucosamine (van dierlijke weefsels) (0.04%), chondroïtinesulfaat (0.004%).', true, now(), 'sha256:f7bc5f84cb4b67eabd4655c1942db48a704495cb20fa0465f32cb0938ee665e5', null from p;

-- Eukanuba — Senior Kleine/Middelgrote rassen Lam & Rijst (3 / 12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/senior-kleinemiddelgrote-rassen-lam-rijst
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Senior Kleine/Middelgrote rassen Lam & Rijst', 'kibble', '3 / 12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/senior-kleinemiddelgrote-rassen-lam-rijst', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen (een natuurlijke bron van glucosamine, chondroïtine en taurine), lam (14%), rijst (14%), maïs, sorghum, gerst, varkensvet, gedroogde bietenpulp (2.6%), kippenjus, mineralen (waaronder natriumhexametafosfaat 0.34%), fructo-oligosachariden (0.25%, een natuurlijk prebioticum), gedroogde biergist (een natuurlijke bron van B-vitaminen en selenium), gedroogde hele eieren, visolie (een natuurlijke bron van omega-3-vetzuren), mannanoligosachariden (0.13%, een natuurlijk prebioticum), glucosamine (van dierlijke weefsels) (0.04%), chondroïtinesulfaat (0.004%).', true, now(), 'sha256:5e1bd147165d170b38d46731e303a7fb9bcb646f12960c84adcff7d450b548e4', null from p;

-- Eukanuba — Senior Grote rassen Verse kip (3 / 12 / 15 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/senior-grote-rassen-verse-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Senior Grote rassen Verse kip', 'kibble', '3 / 12 / 15 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/senior-grote-rassen-verse-kip', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'verse kip (22%), gedroogde kip en kalkoen (21% waaronder kip 15%, een natuurlijke bron van glucosamine, chondroïtine en taurine), tarwe, maïs, gerst, havervlokken, maïsgries, rijst, gevogeltevet, gedroogde bietenpulp (2.6%), kippenjus, gedroogde hele eieren, mineralen (waaronder natriumhexametafosfaat 0.34%), fructo-oligosachariden (0.37%, a natural prebiotic), gedroogde biergist (een natuurlijke bron van B-vitaminen en selenium), visolie (een natuurlijke bron van omega-3-vetzuren), mannanoligosachariden (0.13%, een natuurlijk prebioticum), glucosamine (van dierlijke weefsels) (0.04%), chondroïtinesulfaat (0.004%).', true, now(), 'sha256:10655b540f39e9b64b8dcd1dee0513fccd4c3d4c721da20c44d4eab0b5e46df3', null from p;

-- Eukanuba — Senior Grote rassen Lam & Rijst (12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/senior-grote-rassen-lam-rijst
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Senior Grote rassen Lam & Rijst', 'kibble', '12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/senior-grote-rassen-lam-rijst', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen (een natuurlijke bron van glucosamine, chondroïtine en taurine), lam (14%), rijst (14%), maïs, gerst, sorghum, varkensvet, gedroogde bietenpulp (2.6%), kippenjus, mineralen (waaronder natriumhexametafosfaat 0.34%), gedroogde hele eieren, fructo-oligosachariden (0.25%, een natuurlijk prebioticum), gedroogde biergist (een natuurlijke bron van B-vitaminen en selenium), visolie (een natuurlijke bron van omega-3-vetzuren), mannanoligosachariden (0.13%, een natuurlijk prebioticum), glucosamine (van dierlijke weefsels) (0.04%), chondroïtinesulfaat (0.004%).', true, now(), 'sha256:434538bd899829a759f600fda0fb6fb4979baf4baf234ea70cae24829bea7492', null from p;

-- Eukanuba — Grain Free Puppy kleine/middelgrote rassen, zeevis (3 / 12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-puppy-kleinemiddelgrote-rassen-zeevis
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Grain Free Puppy kleine/middelgrote rassen, zeevis', 'kibble', '3 / 12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-puppy-kleinemiddelgrote-rassen-zeevis', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vismeel (33%, een natuurlijke bron van omega 3-vetzuren), gedroogde zoete aardappelen (19%), hele erwten, gedroogde aardappelen, varkensvet, zonnebloemolie, gedroogde bietenpulp (3%), visjus, mineralen, fructo-oligosachariden (0,29%, een natuurlijk prebioticum), mannanoligosachariden (0.15%, een natuurlijk prebioticum).', true, now(), 'sha256:cbf55207653cd1034022a1449e30626446de4e3b885864a7109c028ac545d919', null from p;

-- Eukanuba — Grain Free Puppy grote rassen, zeevis (3 / 12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-puppy-grote-rassen-zeevis
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Grain Free Puppy grote rassen, zeevis', 'kibble', '3 / 12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-puppy-grote-rassen-zeevis', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vismeel (30%, een natuurlijke bron van omega 3-vetzuren), gedroogde zoete aardappelen (18%), hele erwten, gedroogde aardappelen, varkensvet, gedroogde bietenpulp (4%), zonnebloemolie, visjus, mineralen, fructo-oligosachariden (0,29%, een natuurlijk prebioticum), mannanoligosachariden (0.15%, een natuurlijk prebioticum).', true, now(), 'sha256:0e04c4f596f6c4bd9d2e1ee2c1460484ad1088a245a2192bcb7a8ca38bfca730', null from p;

-- Eukanuba — Grain Free Volwassen kleine/middelgrote rassen, kip (12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-volwassen-kleinemiddelgrote-rassen-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Grain Free Volwassen kleine/middelgrote rassen, kip', 'kibble', '12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-volwassen-kleinemiddelgrote-rassen-kip', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'verse kip (21%), gedroogde kip en kalkoen (21% waaronder kip 15%, een natuurlijke bron van glucosamine, chondroïtine en taurine), gedroogde zoete aardappelen (20%), hele erwten, gevogeltevet, gedroogde bietenpulp (3.5%), gedroogde aardappelen, kippenjus, lijnzaad, mineralen (waaronder natriumhexametafosfaat 0,4%), gedroogde hele eieren, gedroogde biergist, fructo-oligosachariden (0,25%, een natuurlijk prebioticum).', true, now(), 'sha256:2efb3ba8382959d24b8b9ccbab189005afd9f0bace3f6ae80f02f1c3c1a7d398', null from p;

-- Eukanuba — Grain Free Volwassen kleine/middelgrote rassen, lam (12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-volwassen-kleinemiddelgrote-rassen-lam
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Grain Free Volwassen kleine/middelgrote rassen, lam', 'kibble', '12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-volwassen-kleinemiddelgrote-rassen-lam', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vriesvers lam (21%), gedroogde kip en kalkoen (21% waaronder kip 15%, een natuurlijke bron van glucosamine, chondroïtine en taurine), gedroogde zoete aardappelen (20%), hele erwten, gevogeltevet, gedroogde aardappelen, gedroogde bietenpulp (4%), kippenjus, lijnzaad, mineralen (waaronder natriumhexametafosfaat 0.4%), gedroogde hele eieren, gedroogde biergist, fructo-oligosachariden (0,25%, een natuurlijk prebioticum).', true, now(), 'sha256:6a1f6b81924e641a1b7028a0582fd771301d11f3e44f5611eba5c6cc4be9a56f', null from p;

-- Eukanuba — Grain Free Volwassen kleine/middelgrote rassen, zeevis (3 / 12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-volwassen-kleinemiddelgrote-rassen-zeevis
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Grain Free Volwassen kleine/middelgrote rassen, zeevis', 'kibble', '3 / 12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-volwassen-kleinemiddelgrote-rassen-zeevis', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vismeel (29%, een natuurlijke bron van omega 3-vetzuren), gedroogde zoete aardappelen (20%), hele erwten, gedroogde aardappelen, varkensvet, gedroogde bietenpulp (4%), zonnebloemolie, visjus, mineralen (waaronder natriumhexametafosfaat 0,39%), fructo-oligosachariden (0,29%, een natuurlijk prebioticum).', true, now(), 'sha256:c7ab5c1531bab11b4555f047fda628846c3ed90a8c6cb67fd3fec4fdbe1e393e', null from p;

-- Eukanuba — Grain Free Volwassen grote rassen, zeevis (3 / 12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-volwassen-grote-rassen-zeevis
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Grain Free Volwassen grote rassen, zeevis', 'kibble', '3 / 12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-volwassen-grote-rassen-zeevis', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vismeel (28%, een natuurlijke bron van omega 3-vetzuren), gedroogde zoete aardappelen (20%), hele erwten, gedroogde aardappelen, varkensvet, gedroogde bietenpulp (4%), zonnebloemolie, visjus, mineralen (waaronder natriumhexametafosfaat 0,39%), fructo-oligosachariden (0,29%, een natuurlijk prebioticum), glucosamine (van dierlijke weefsels) (0.045%).', true, now(), 'sha256:2b96d8fec54b757827122ee99a9b2f3ae254522e93bbb53e0df99e4624eb9c84', null from p;

-- Eukanuba — Grain Free Volwassen grote rassen, kip (12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-volwassen-grote-rassen-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Grain Free Volwassen grote rassen, kip', 'kibble', '12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-volwassen-grote-rassen-kip', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'verse kip (20%), gedroogde kip en kalkoen (17.5% waaronder kip 12%, een natuurlijke bron van glucosamine, chondroïtine en taurine), gedroogde zoete aardappelen (17.5%), hele erwten, gedroogde aardappelen, gevogeltevet, gedroogde bietenpulp (4%), kippenjus, mineralen (waaronder natriumhexametafosfaat 0,4%), lijnzaad, gedroogde hele eieren, gedroogde biergist, fructo-oligosachariden (0,25%, een natuurlijk prebioticum), glucosamine (van dierlijke weefsels) (0.045%).', true, now(), 'sha256:477caad944c2dcbbb8dfaf981e95b2f0a10f1b333a38712cf72dea9b214fc4ef', null from p;

-- Eukanuba — Grain Free Volwassen grote rassen, lam (12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-volwassen-grote-rassen-lam
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Grain Free Volwassen grote rassen, lam', 'kibble', '12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-volwassen-grote-rassen-lam', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vriesvers lam (20%), gedroogde kip en kalkoen (18% waaronder kip 13%, een natuurlijke bron van glucosamine, chondroïtine en taurine), gedroogde zoete aardappelen (18%), hele erwten, gedroogde aardappelen, gevogeltevet, gedroogde bietenpulp (3%), kippenjus, lijnzaad, mineralen (waaronder natriumhexametafosfaat 0.4%), gedroogde hele eieren, gedroogde biergist, fructo-oligosachariden (0.25%, een natuurlijk prebioticum), glucosamine (van dierlijke weefsels) (0.045%).', true, now(), 'sha256:b4087c59ec866213f45f1c0253df67d56fdac919eacc496726b9db81b4c4ab6c', null from p;

-- Eukanuba — Grain Free Volwassen alle rassen, hert (3 / 12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-volwassen-alle-rassen-hert
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Grain Free Volwassen alle rassen, hert', 'kibble', '3 / 12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-volwassen-alle-rassen-hert', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vriesvers wild (20%), gedroogde kip en kalkoen (19% waaronder kip 14%, een natuurlijke bron van glucosamine, chondroïtine en taurine), gedroogde zoete aardappelen (20%), hele erwten, gevogeltevet, gedroogde aardappelen, gedroogde bietenpulp (4%), kippenjus, lijnzaad, mineralen (waaronder natriumhexametafosfaat 0.4%), gedroogde hele eieren, gedroogde biergist, fructo-oligosachariden (0.25%, een natuurlijk prebioticum).', true, now(), 'sha256:501f7cc66e5963b6471c854ca2aa6dc12e46b5832a8aa3e14bb1211b506f6402', null from p;

-- Eukanuba — Grain Free Senior kleine/middelgrote rassen, zeevis (3 / 12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-senior-kleinemiddelgrote-rassen-zeevis
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Grain Free Senior kleine/middelgrote rassen, zeevis', 'kibble', '3 / 12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-senior-kleinemiddelgrote-rassen-zeevis', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vismeel (31%), gedroogde zoete aardappelen (20%), hele erwten, gedroogde aardappelen, varkensvet, zonnebloemolie, visjus, gedroogde bietenpulp (3%), mineralen (waaronder natriumhexametafosfaat 0,39%), fructo-oligosachariden (0,29%, een natuurlijk prebioticum), mannanoligosachariden (0,15%, een natuurlijk prebioticum), glucosamine (van dierlijke weefsels) (0.045%), chondroïtinesulfaat (0.0045%).', true, now(), 'sha256:04f65fd8b38aa3a56d940f07d3ffd9e6e077f77eaa2009efcae975187604e369', 'Vertaald uit het Engels; bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-senior-kleinemiddelgrote-rassen-zeevis' from p;

-- Eukanuba — Grain Free Senior grote rassen, zeevis (12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-senior-grote-rassen-zeevis
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Grain Free Senior grote rassen, zeevis', 'kibble', '12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-senior-grote-rassen-zeevis', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vismeel (27%), gedroogde zoete aardappelen (20%), hele erwten, gedroogde aardappelen, varkensvet, zonnebloemolie, visjus, gedroogde bietenpulp (3%), mineralen (waaronder natriumhexametafosfaat 0,39%), fructo-oligosachariden (0,29%, een natuurlijk prebioticum), mannanoligosachariden (0,15%, een natuurlijk prebioticum), glucosamine (van dierlijke weefsels) (0.045%), chondroïtinesulfaat (0.01%).', true, now(), 'sha256:84413427c1ccd7473aebf003bf488d92e52713cecc7087583e66e2f489255c19', null from p;

-- Eukanuba — Special Care Sensitive Digestion Puppy Alle rassen (2,3 / 12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/special-care-sensitive-digestion-puppy-alle-rassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Special Care Sensitive Digestion Puppy Alle rassen', 'kibble', '2,3 / 12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/special-care-sensitive-digestion-puppy-alle-rassen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen (31% waaronder kip 22%), witte rijst, maïs, verse kip (10%), gevogeltevet, gedroogde bietenpulp (3,9%), kippenjus, gedroogde hele eieren, vismeel, mineralen, lijnzaad, visolie, fructo-oligosachariden (1%), gedroogde biergist, mannanoligosachariden (0.13%), micro-ingekapseld natriumbutyraat (0.1%).', true, now(), 'sha256:5bd9eb63a309ff67ec2a900cb0511a25ce26ccde741dd1fe4d0f1f1e136942a9', null from p;

-- Eukanuba — Special Care Sensitive Digestion Volwassen Alle rassen (2,3 / 12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/special-care-sensitive-digestion-volwassen-alle-rassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Special Care Sensitive Digestion Volwassen Alle rassen', 'kibble', '2,3 / 12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/special-care-sensitive-digestion-volwassen-alle-rassen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen (23% waaronder kip 16%, een natuurlijke bron van glucosamine, chondroïtine en taurine), rijst (23%), maïs, sorghum, varkensvet, verse kip (4%), gedroogde bietenpulp (3.3%), kippenjus, vismeel, lijnzaad, mineralen (waaronder natriumhexametafosfaat 0.38%), gedroogde hele eieren, fructo-oligosachariden (0.4%, een natuurlijk prebioticum), mannanoligosachariden (0.14%, een natuurlijk prebioticum), micro-ingekapseld natriumbutyraat (0.1%).', true, now(), 'sha256:4d674aa6744e34fb2d3dd8fd51c714911e25e187c9c3cd8d14665ca43ba8cb69', null from p;

-- Eukanuba — Special Care Sensitive Skin Volwassen Alle rassen (2,3 / 12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/special-care-sensitive-skin-volwassen-alle-rassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Special Care Sensitive Skin Volwassen Alle rassen', 'kibble', '2,3 / 12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/special-care-sensitive-skin-volwassen-alle-rassen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïs, vismeel (24%), varkensvet, gedroogde bietenpulp (2.9%), visjus, mineralen (waaronder natriumhexametafosfaat 0.38%), gedroogde biergist (een natuurlijke bron van B-vitaminen en selenium), fructo-oligosachariden (0.28%, een natuurlijk prebioticum).', true, now(), 'sha256:0bd58cec8e896b50bc9cb50e412ff931073758b2f5e7c6d65f9b4e7289695c7e', null from p;

-- Eukanuba — Special Care Sensitive Joints Volwassen Alle rassen (2,3 / 12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/special-care-sensitive-joints-volwassen-alle-rassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Special Care Sensitive Joints Volwassen Alle rassen', 'kibble', '2,3 / 12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/special-care-sensitive-joints-volwassen-alle-rassen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen (24% waaronder kip 19%, een natuurlijke bron van glucosamine, chondroïtine en taurine), maïs, tarwe, gerst, varkensvet, sorghum, verse kip (4%), gedroogde bietenpulp (2.8%), kippenjus, mineralen (waaronder natriumhexametafosfaat 0.38%), gedroogde hele eieren, vismeel, lijnzaad, visolie (een natuurlijke bron van omega 3-vetzuren), gedroogde biergist (een natuurlijke bron van B-vitaminen en selenium), fructo-oligosachariden (0.27%, een natuurlijk prebioticum), methylsulfonylmethaan (0.13%), glucosamine (van dierlijke weefsels) (0.06%), chondroïtinesulfaat (0.006%).', true, now(), 'sha256:bf8b51fac494e1e59ad45c6d47d96a619728fce41c0f8f8291fd0e2d54ba48c7', null from p;

-- Eukanuba — Special Care Mono-Protein Volwassen Alle rassen Zalm (2,3 / 12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/special-care-mono-protein-volwassen-alle-rassen-zalm
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Special Care Mono-Protein Volwassen Alle rassen Zalm', 'kibble', '2,3 / 12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/special-care-mono-protein-volwassen-alle-rassen-zalm', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vriesverse zalm (19%), zalmmeel (19%), aardappel, hele erwten, zoete aardappel (13%), erwtenzetmeel, zonnebloemolie, gedroogde bietenpulp (3%), zalmsaus (2%), mineralen, fructo-oligosachariden (0.25%, een natuurlijk prebioticum), mannanoligosachariden (0.15%, een natuurlijk prebioticum).', true, now(), 'sha256:e712c55f59980a02c2c532be0f84c403e2f3d246253a3c1d1e049b965ffc53fa', null from p;

-- Eukanuba — Special Care Mono-Protein Volwassen Alle rassen Eend (2,3 / 12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/special-care-mono-protein-volwassen-alle-rassen-eend
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Special Care Mono-Protein Volwassen Alle rassen Eend', 'kibble', '2,3 / 12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/special-care-mono-protein-volwassen-alle-rassen-eend', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vriesverse eend (19%), eendenmeel (19%), aardappel, hele erwten, zoete aardappel (12%), erwtenzetmeel, eendenvet (5%),gedroogde bietenpulp (3%), eendenjus (2%), lijnzaad, mineralen, fructo-oligosachariden (0.25%, een natuurlijk prebioticum), mannanoligosachariden (0.15%, een natuurlijk prebioticum).', true, now(), 'sha256:9f63150fa794bda153c02422156092ba7d652fb45c9cde95dc4d1f90d529c412', null from p;

-- Eukanuba — Special Care Mono-Protein Volwassen Alle rassen Lam (2,3 / 12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/special-care-mono-protein-volwassen-alle-rassen-lam
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Special Care Mono-Protein Volwassen Alle rassen Lam', 'kibble', '2,3 / 12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/special-care-mono-protein-volwassen-alle-rassen-lam', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vriesvers lam (24%), lamsmeel (19%), hele erwten, erwtenzetmeel, aardappel, zoete aardappel (10%), gedroogde bietenpulp (3%), lamsjus (2%), lijnzaad, mineralen, fructo-oligosachariden (0.26%, een natuurlijk prebioticum), mannanoligosachariden (0.15%, een natuurlijk prebioticum).', true, now(), 'sha256:1acd7d91e22777fc6f333243e4b173e030ca2195530f61384630b814606011a3', null from p;

-- Eukanuba — Special Care Working & Endurance Volwassen Alle rassen (15 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/special-care-working-endurance-volwassen-alle-rassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Special Care Working & Endurance Volwassen Alle rassen', 'kibble', '15 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/special-care-working-endurance-volwassen-alle-rassen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen (26% waaronder kip 18%, een natuurlijke bron van glucosamine, chondroïtine en taurine), verse kip (21%), maïs, varkensvet, tarwe, rijst, sorghum, gedroogde bietenpulp (2.9%), kippenjus, vismeel, lijnzaad, mineralen (waaronder natriumhexametafosfaat 0.3%), visolie (een natuurlijke bron van omega-3-vetzuren), gedroogde hele eieren, gedroogde biergist (een natuurlijke bron van B-vitaminen en selenium), fructo-oligosachariden (0.3%,een natuurlijk prebioticum).', true, now(), 'sha256:e9d906181fe17361b462e69ef8f90d0f93bcc8cc41c0a3d54df2b8e6a0a344a4', null from p;

-- Eukanuba — Special Care Overweight Volwassen Alle rassen (2,3 / 12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/special-care-overweight-volwassen-alle-rassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Special Care Overweight Volwassen Alle rassen', 'kibble', '2,3 / 12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/special-care-overweight-volwassen-alle-rassen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen (19% waaronder kip 13%, een natuurlijke bron van glucosamine, chondroïtine en taurine), maïs, tarwe, sorghum, gerst, gedroogde appelpulp, verse kip (4%), gedroogde bietenpulp (3.8%), vismeel, kippenjus, gevogeltevet, mineralen (waaronder natriumhexametafosfaat 0.36%), gedroogde hele eieren, lijnzaad, visolie (een natuurlijke bron van omega 3-vetzuren), gedroogde biergist (een natuurlijke bron van B-vitaminen en selenium), fructo-oligosachariden (0.27%, een natuurlijk prebioticum), glucosamine (van dierlijke weefsels) (0.04%).', true, now(), 'sha256:8ec15bcc4d43b1bc2b5b14b55a28ba80ad3134a2bed5ff8224011c4e744c396f', null from p;

-- Eukanuba — Special Care Weight Control Volwassen Kleine/Middelgrote rassen (2,3 / 12 / 15 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/special-care-weight-control-volwassen-kleinemiddelgrote-rassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Special Care Weight Control Volwassen Kleine/Middelgrote rassen', 'kibble', '2,3 / 12 / 15 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/special-care-weight-control-volwassen-kleinemiddelgrote-rassen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïs, gedroogde kip en kalkoen (16% waaronder kip 11%, een natuurlijke bron van glucosamine, chondroïtine en taurine), verse kip (10%), gerst, sorghum, tarwe, gedroogde bietenpulp (3.1%), vismeel, kippenjus, gevogeltevet, mineralen (waaronder natriumhexametafosfaat 0.36%), gedroogde hele eieren, lijnzaad, gedroogde biergist (een natuurlijke bron van B-vitaminen en selenium), fructo-oligosachariden (0.26%, een natuurlijk prebioticum), glucosamine (van dierlijke weefsels) (0.04%).', true, now(), 'sha256:15691187f2a0310875ec0b744a6e6fee6b990e260ad8d0597fc6a2bc734c4ace', null from p;

-- Eukanuba — Special Care Weight Control Volwassen Grote rassen (12 / 15 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/special-care-weight-control-volwassen-grote-rassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Special Care Weight Control Volwassen Grote rassen', 'kibble', '12 / 15 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/special-care-weight-control-volwassen-grote-rassen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïs, gedroogde kip en kalkoen (15% waaronder kip 11%, een natuurlijke bron van glucosamine, chondroïtine en taurine), verse kip (10%), gerst, sorghum, tarwe, gedroogde bietenpulp (3.1%), vismeel, kippenjus, gevogeltevet, mineralen (waaronder natriumhexametafosfaat 0.36%), gedroogde hele eieren, lijnzaad, gedroogde biergist (een natuurlijke bron van B-vitaminen en selenium), fructo-oligosachariden (0.26%, een natuurlijk prebioticum), glucosamine (van dierlijke weefsels) (0.04%).', true, now(), 'sha256:db4fc5c13da0567e1b199a755a5b0c83ebcc1ce4dd3e3f87de3b790cded72476', null from p;

-- Eukanuba — Breed Care Yorkshire Terriër Volwassen (3 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-yorkshire-terrier-volwassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Breed Care Yorkshire Terriër Volwassen', 'kibble', '3 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-yorkshire-terrier-volwassen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen (28% waaronder kip 20%, een natuurlijke bron van glucosamine, chondroïtinesulfaat en taurine), maïs, tarwe, varkensvet, verse kip (4%), sorghum, gerst, rijst, gedroogde bietenpulp (2.8%), kippenjus, mineralen (waaronder natriumhexametafosfaat 0.35%), lijnzaad, zalmolie, fructo-oligosachariden (0.5%, een natuurlijk prebioticum), gedroogde hele eieren, glucosamine van dierlijke weefsels (0.043%), chondroïtinesulfaat (0.004%).', true, now(), 'sha256:ac4de94a25427437988abd4d280dbf4fc3c6d70a2feb65d49ebcf44e4d9c892c', null from p;

-- Eukanuba — Breed Care Jackrusselterriër Volwassen (3 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-jackrusselterrier-volwassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Breed Care Jackrusselterriër Volwassen', 'kibble', '3 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-jackrusselterrier-volwassen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen (28% waaronder kip 20%, een natuurlijke bron van glucosamine, chondroïtinesulfaat en taurine), maïs, tarwe, varkensvet, verse kip (4%), sorghum, gerst, rijst, gedroogde bietenpulp (2.8%), kippenjus, mineralen (waaronder natriumhexametafosfaat 0.35%), lijnzaad, zalmolie, fructo-oligosachariden (0.5%, een natuurlijk prebioticum), gedroogde hele eieren, glucosamine van dierlijke weefsels (0.043%), chondroïtinesulfaat (0.004%).', true, now(), 'sha256:ac4de94a25427437988abd4d280dbf4fc3c6d70a2feb65d49ebcf44e4d9c892c', null from p;

-- Eukanuba — Breed Care Teckel Volwassen (3 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-teckel-volwassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Breed Care Teckel Volwassen', 'kibble', '3 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-teckel-volwassen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen (28% waaronder kip 20%, een natuurlijke bron van glucosamine, chondroïtinesulfaat en taurine), maïs, tarwe, varkensvet, verse kip (4%), sorghum, gerst, rijst, gedroogde bietenpulp (2.8%), kippenjus, mineralen (waaronder natriumhexametafosfaat 0.35%), lijnzaad, zalmolie, fructo-oligosachariden (0.5%, een natuurlijk prebioticum), gedroogde hele eieren, glucosamine van dierlijke weefsels (0.043%), chondroïtinesulfaat (0.004%).', true, now(), 'sha256:ac4de94a25427437988abd4d280dbf4fc3c6d70a2feb65d49ebcf44e4d9c892c', null from p;

-- Eukanuba — Breed Care West Highland White Terrier Volwassen (3 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-west-highland-white-terrier-volwassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Breed Care West Highland White Terrier Volwassen', 'kibble', '3 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-west-highland-white-terrier-volwassen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen (28% waaronder kip 20%, een natuurlijke bron van glucosamine, chondroïtinesulfaat en taurine), maïs, tarwe, varkensvet, verse kip (4%), sorghum, gerst, rijst, gedroogde bietenpulp (2.8%), kippenjus, mineralen (waaronder natriumhexametafosfaat 0.35%), lijnzaad, zalmolie, fructo-oligosachariden (0.5%, een natuurlijk prebioticum), gedroogde hele eieren, glucosamine van dierlijke weefsels (0.043%), chondroïtinesulfaat (0.004%).', true, now(), 'sha256:ac4de94a25427437988abd4d280dbf4fc3c6d70a2feb65d49ebcf44e4d9c892c', null from p;

-- Eukanuba — Breed Care Cocker Spaniël Volwassen (7,5 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-cocker-spaniel-volwassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Breed Care Cocker Spaniël Volwassen', 'kibble', '7,5 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-cocker-spaniel-volwassen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen (28% waaronder kip 20%, een natuurlijke bron van glucosamine, chondroïtinesulfaat en taurine), maïs, tarwe, varkensvet, verse kip (4%), sorghum, gerst, rijst, gedroogde bietenpulp (2.8%), kippenjus, mineralen (waaronder natriumhexametafosfaat 0.35%), lijnzaad, zalmolie, fructo-oligosachariden (0.5%, een natuurlijk prebioticum), gedroogde hele eieren, glucosamine van dierlijke weefsels (0.043%), chondroïtinesulfaat (0.004%).', true, now(), 'sha256:ac4de94a25427437988abd4d280dbf4fc3c6d70a2feb65d49ebcf44e4d9c892c', null from p;

-- Eukanuba — Breed Care Poedel Volwassen (7,5 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-poedel-volwassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Breed Care Poedel Volwassen', 'kibble', '7,5 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-poedel-volwassen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen (28% waaronder kip 20%, een natuurlijke bron van glucosamine, chondroïtinesulfaat en taurine), maïs, tarwe, varkensvet, verse kip (4%), sorghum, gerst, rijst, gedroogde bietenpulp (2.8%), kippenjus, mineralen (waaronder natriumhexametafosfaat 0.35%), lijnzaad, zalmolie, fructo-oligosachariden (0.5%, een natuurlijk prebioticum), gedroogde hele eieren, glucosamine van dierlijke weefsels (0.043%), chondroïtinesulfaat (0.004%).', true, now(), 'sha256:ac4de94a25427437988abd4d280dbf4fc3c6d70a2feb65d49ebcf44e4d9c892c', null from p;

-- Eukanuba — Breed Care Australische herder Volwassen (12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-australische-herder-volwassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Breed Care Australische herder Volwassen', 'kibble', '12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-australische-herder-volwassen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen (28% waaronder kip 20%, een natuurlijke bron van glucosamine, chondroïtinesulfaat en taurine), maïs, tarwe, varkensvet, verse kip (4%), sorghum, gerst, rijst, gedroogde bietenpulp (2.8%), kippenjus, mineralen (waaronder natriumhexametafosfaat 0.35%), lijnzaad, zalmolie, fructo-oligosachariden (0.5%, een natuurlijk prebioticum), gedroogde hele eieren, glucosamine van dierlijke weefsels (0.043%), chondroïtinesulfaat (0.004%).', true, now(), 'sha256:ac4de94a25427437988abd4d280dbf4fc3c6d70a2feb65d49ebcf44e4d9c892c', null from p;

-- Eukanuba — Breed Care Boxer Volwassen (12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-boxer-volwassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Breed Care Boxer Volwassen', 'kibble', '12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-boxer-volwassen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen (28% waaronder kip 20%, een natuurlijke bron van glucosamine, chondroïtinesulfaat en taurine), maïs, tarwe, varkensvet, verse kip (4%), sorghum, gerst, rijst, gedroogde bietenpulp (2.8%), kippenjus, mineralen (waaronder natriumhexametafosfaat 0.35%), lijnzaad, zalmolie, fructo-oligosachariden (0.5%, een natuurlijk prebioticum), gedroogde hele eieren, glucosamine van dierlijke weefsels (0.043%), chondroïtinesulfaat (0.004%).', true, now(), 'sha256:ac4de94a25427437988abd4d280dbf4fc3c6d70a2feb65d49ebcf44e4d9c892c', null from p;

-- Eukanuba — Breed Care Golden Retriever Volwassen (12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-golden-retriever-volwassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Breed Care Golden Retriever Volwassen', 'kibble', '12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-golden-retriever-volwassen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen (28% waaronder kip 20%, een natuurlijke bron van glucosamine, chondroïtinesulfaat en taurine), maïs, tarwe, varkensvet, verse kip (4%), sorghum, gerst, rijst, gedroogde bietenpulp (2.8%), kippenjus, mineralen (waaronder natriumhexametafosfaat 0.35%), lijnzaad, zalmolie, fructo-oligosachariden (0.5%, een natuurlijk prebioticum), gedroogde hele eieren, glucosamine van dierlijke weefsels (0.043%), chondroïtinesulfaat (0.004%).', true, now(), 'sha256:ac4de94a25427437988abd4d280dbf4fc3c6d70a2feb65d49ebcf44e4d9c892c', null from p;

-- Eukanuba — Breed Care Labrador Retriever Volwassen (12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-labrador-retriever-volwassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Breed Care Labrador Retriever Volwassen', 'kibble', '12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-labrador-retriever-volwassen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen (28% waaronder kip 20%, een natuurlijke bron van glucosamine, chondroïtinesulfaat en taurine), maïs, tarwe, varkensvet, verse kip (4%), sorghum, gerst, rijst, gedroogde bietenpulp (2.8%), kippenjus, mineralen (waaronder natriumhexametafosfaat 0.35%), lijnzaad, zalmolie, fructo-oligosachariden (0.5%, een natuurlijk prebioticum), gedroogde hele eieren, glucosamine van dierlijke weefsels (0.043%), chondroïtinesulfaat (0.004%).', true, now(), 'sha256:ac4de94a25427437988abd4d280dbf4fc3c6d70a2feb65d49ebcf44e4d9c892c', null from p;

-- Eukanuba — Breed Care Duitse herder Volwassen (12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-duitse-herder-volwassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Breed Care Duitse herder Volwassen', 'kibble', '12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-duitse-herder-volwassen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen (28% waaronder kip 20%, een natuurlijke bron van glucosamine, chondroïtinesulfaat en taurine), maïs, tarwe, varkensvet, verse kip (4%), sorghum, gerst, rijst, gedroogde bietenpulp (2.8%), kippenjus, mineralen (waaronder natriumhexametafosfaat 0.35%), lijnzaad, zalmolie, fructo-oligosachariden (0.5%, een natuurlijk prebioticum), gedroogde hele eieren, glucosamine van dierlijke weefsels (0.043%), chondroïtinesulfaat (0.004%).', true, now(), 'sha256:ac4de94a25427437988abd4d280dbf4fc3c6d70a2feb65d49ebcf44e4d9c892c', null from p;

-- Eukanuba — Breed Care Rottweiler Volwassen (12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-rottweiler-volwassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Breed Care Rottweiler Volwassen', 'kibble', '12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-rottweiler-volwassen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen (28% waaronder kip 20%, een natuurlijke bron van glucosamine, chondroïtinesulfaat en taurine), maïs, tarwe, varkensvet, verse kip (4%), sorghum, gerst, rijst, gedroogde bietenpulp (2.8%), kippenjus, mineralen (waaronder natriumhexametafosfaat 0.35%), lijnzaad, zalmolie, fructo-oligosachariden (0.5%, een natuurlijk prebioticum), gedroogde hele eieren, glucosamine van dierlijke weefsels (0.043%), chondroïtinesulfaat (0.004%).', true, now(), 'sha256:ac4de94a25427437988abd4d280dbf4fc3c6d70a2feb65d49ebcf44e4d9c892c', null from p;

-- Eukanuba — Puppy rijk aan kalkoen met wortelen (400 g)
-- bron: https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/puppy-rijk-aan-kalkoen-met-wortelen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Puppy rijk aan kalkoen met wortelen', 'wet', '400 g', null, 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/puppy-rijk-aan-kalkoen-met-wortelen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip (50%), kalkoen (14%), wortels (4%), mineralen, zalmolie (1%), bietenpulp (0.5%), inuline (0.4%), MOS (0.3%).', true, now(), 'sha256:817513090bff10fcf4ac8bd9f7857f85757838f28920afbf69c9418dcf6e183c', null from p;

-- Eukanuba — Puppy rijk aan rund met pompoen (400 g)
-- bron: https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/puppy-rijk-aan-rund-met-pompoen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Puppy rijk aan rund met pompoen', 'wet', '400 g', null, 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/puppy-rijk-aan-rund-met-pompoen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip (50%), rund (14%), pompoen (4%), mineralen, zalmolie (1%), bietenpulp (0.5%), inuline (0.4%), MOS (0.3%).', true, now(), 'sha256:c87599b660c9b3392ddc48f7f320b42017fe1ccc743214540dd7593d5bd4dd95', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
