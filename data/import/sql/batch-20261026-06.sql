-- Automatisch overgenomen etiketten, batch 6 van 2026-10-26 (31 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Hill's Science Plan — Small & Mini Adult Hondenvoer met Lam & Rijst (1,5 / 6 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-small-miniature-lamb-rice-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Small & Mini Adult Hondenvoer met Lam & Rijst', 'kibble', '1,5 / 6 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-small-miniature-lamb-rice-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Maïs, bruine rijst (11%), breukrijst (11%), tarwe, lamsmeel (9%), maïseiwitmeel, gerst, haver, dierlijk vet, eiwithydrolysaat, sojameel, plantaardige olie, mineralen, lijnzaad, haverzemelen, fructo-oligosacchariden, gedroogde tomatenpuree, gedroogde citruspulp, spinaziepoeder. ActivBiome+ Multi Benefit mix van prebiotica (0,6%): Haverzemelen, fructo-oligosacchariden.', true, now(), 'sha256:7d6bc4e2b36d74a2155e10ba65ef2a4aee6d6593dbe2e9c99434f2d54cee5189', null from p;

-- Hill's Science Plan — Adult Natvoer Hond met Kalkoen (370 g)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-turkey-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Adult Natvoer Hond met Kalkoen', 'wet', '370 g', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-turkey-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kalkoen 9%), granen, mineralen, oliën en vetten, producten van plantaardige oorsprong.', true, now(), 'sha256:7d6753da5f430bf70a6584a7c1b33f436dd6a3c347c90717105d7156eabaa8eb', null from p;

-- Hill's Science Plan — Hypoallergenic Adult Natvoer Hond met Zalm (363 g)
-- bron: https://www.hillspet.nl/dog-food/science-plan-hypoallergenic-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Hypoallergenic Adult Natvoer Hond met Zalm', 'wet', '363 g', null, 'https://www.hillspet.nl/dog-food/science-plan-hypoallergenic-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Zalm (10%), gedroogde erwten, gedroogde aardappelen, erwteneiwit, aardappelzetmeel, plantaardige olie, eiwithydrolysaat, gedroogde wortelen, mineralen, cellulose, gedroogde bietenpulp, gedroogde tomatenpuree, gedroogde citruspulp, spinaziepoeder.', true, now(), 'sha256:6822241ceb8e8574d8abc51f56853fa3d2a18bf1404d3a15ed58cf8424ddc88d', null from p;

-- Hill's Science Plan — Hypoallergenic Large Breed Adult Hondenvoer met Zalm (12 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-large-breed-hypoallergenic-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Hypoallergenic Large Breed Adult Hondenvoer met Zalm', 'kibble', '12 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-large-breed-hypoallergenic-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Gedroogde aardappelen (21%), aardappelzetmeel, gedroogde erwten, zalmmeel (9%), erwteneiwit, dierlijk vet, eiwithydrolysaat, plantaardige olie, mineralen, gedroogde bietenpulp, lijnzaad, gedroogde tomatenpuree, gedroogde citruspulp, spinaziepoeder, gedroogde wortelen.', true, now(), 'sha256:650ee77b4e3e5eb8c186600cc2a83d24b1d36ddc50a719408dd80e43ae1bb388', null from p;

-- Hill's Science Plan — Large Breed Mature Adult Hondenvoer met Kip (12 / 14 / 18 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-mature-adult-6-large-breed-chicken-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Large Breed Mature Adult Hondenvoer met Kip', 'kibble', '12 / 14 / 18 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-mature-adult-6-large-breed-chicken-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Tarwe, maïs, kippen- en kalkoenenmeel (kip 6%; totaal gevogelte 9%), dierlijk vet, eiwithydrolysaat, maïseiwitmeel, plantaardige olie, erwtenzemelenmeel, lijnzaad, mineralen, haverzemelen, fructo-oligosacchariden, varkenskraakbeen (bron van chondroïtinesulfaat), gehydrolyseerde schelp van schaaldieren (bron van glucosamine). ActivBiome+ Multi Benefit mix van prebiotica (0,6%): Haverzemelen, fructo-oligosacchariden.', true, now(), 'sha256:4e9f78ec051a1440b6bfecf376ced0410594cb227e61565e1c527141b83d4911', null from p;

-- Hill's Science Plan — Light Medium Mature Adult Hondenvoer met Kip (2,5 / 12 / 14 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-mature-adult-7-light-medium-chicken-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Light Medium Mature Adult Hondenvoer met Kip', 'kibble', '2,5 / 12 / 14 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-mature-adult-7-light-medium-chicken-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Maïs, tarwe, kippen- en kalkoenenmeel (kip 9%; totaal gevogelte 15%), cellulose, erwtenzemelenmeel, eiwithydrolysaat, dierlijk vet, gedroogde bietenpulp, lijnzaad, plantaardige olie, mineralen, haverzemelen, fructo-oligosacchariden, varkenskraakbeen (bron van chondroïtinesulfaat), gehydrolyseerde schelp van schaaldieren (bron van glucosamine). ActivBiome+ Multi Benefit mix van prebiotica (0.6%): Haverzemelen, fructo-oligosacchariden.', true, now(), 'sha256:299b148c2b5234e2ebe9cc81b68c8eca5a70c3ee9eac00a3f80a0efe32a87c1c', null from p;

-- Hill's Science Plan — Light Small & Mini Mature Adult Hondenvoer met Kip (2,5 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-mature-adult-7-light-mini-chicken-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Light Small & Mini Mature Adult Hondenvoer met Kip', 'kibble', '2,5 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-mature-adult-7-light-mini-chicken-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Tarwe, maïs, kippen- en kalkoenenmeel (kip 9%; totaal gevogelte 15%), erwtenzemelenmeel, cellulose, gerst, haver, eiwithydrolysaat, dierlijk vet, lijnzaad, gedroogde bietenpulp, plantaardige olie, mineralen, haverzemelen, fructo-oligosacchariden, varkenskraakbeen (bron van chondroïtinesulfaat), gehydrolyseerde schelp van schaaldieren (bron van glucosamine). ActivBiome+ Multi Benefit mix van prebiotica (0,6%): Haverzemelen, fructo-oligosacchariden.', true, now(), 'sha256:8cc35500519e7ff5ca7ffc68a8dd489bcb59abe9c3774e4ceac2833aa60f8615', null from p;

-- Hill's Science Plan — Medium Mature Adult Hondenvoer met Kip (2,5 / 6 / 12 / 14 / 18 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-mature-adult-7-medium-chicken-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Medium Mature Adult Hondenvoer met Kip', 'kibble', '2,5 / 6 / 12 / 14 / 18 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-mature-adult-7-medium-chicken-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Maïs, tarwe, kippen- en kalkoenenmeel (kip 7%; totaal gevogelte 12%), dierlijk vet, eiwithydrolysaat, plantaardige olie, lijnzaad, gedroogde bietenpulp, mineralen, haverzemelen, fructo-oligosacchariden, varkenskraakbeen (bron van chondroïtinesulfaat), gehydrolyseerde schelp van schaaldieren (bron van glucosamine). ActivBiome+ Multi Benefit mix van prebiotica (0.6%): Haverzemelen, fructo-oligosacchariden.', true, now(), 'sha256:44accfa091bd0e67c4f1f425d70d2ef498cd6aeb6c31a989b3c943ea1c689fe2', null from p;

-- Hill's Science Plan — Medium Mature Adult Hondenvoer met Lam & Rijst (2,5 / 12 / 14 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-mature-adult-7-medium-lamb-and-rice-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Medium Mature Adult Hondenvoer met Lam & Rijst', 'kibble', '2,5 / 12 / 14 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-mature-adult-7-medium-lamb-and-rice-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Maïs, tarwe, breukrijst (12%), lamsmeel (8%), sojameel, dierlijk vet, lijnzaad, eiwithydrolysaat, plantaardige olie, maïseiwitmeel, gedroogde bietenpulp, mineralen, haverzemelen, fructo-oligosacchariden, varkenskraakbeen (bron van chondroïtinesulfaat), gehydrolyseerde schelp van schaaldieren (bron van glucosamine). ActivBiome+ Multi Benefit mix van prebiotica (0.6%): Haverzemelen, fructo-oligosacchariden.', true, now(), 'sha256:55a727eced9f265b813123ec32b34f9fb15d515223c0a497c00de89cc8aab1d5', null from p;

-- Hill's Science Plan — Small & Mini Mature Adult Natvoer Hond met Rund (200 g)
-- bron: https://www.hillspet.nl/dog-food/science-plan-mature-adult-7-small-mini-beef-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Small & Mini Mature Adult Natvoer Hond met Rund', 'wet', '200 g', null, 'https://www.hillspet.nl/dog-food/science-plan-mature-adult-7-small-mini-beef-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (rund 8%), granen, mineralen, producten van plantaardige oorsprong, oliën en vetten.', true, now(), 'sha256:eef36fb4c7f5b2f1257e2e0ec1a016124352b3cdb63754516d853d7219f1b719', null from p;

-- Hill's Science Plan — Small & Mini Mature Adult Natvoer Hond met Kip (200 g)
-- bron: https://www.hillspet.nl/dog-food/science-plan-mature-adult-7-small-mini-chicken-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Small & Mini Mature Adult Natvoer Hond met Kip', 'kibble', '200 g', null, 'https://www.hillspet.nl/dog-food/science-plan-mature-adult-7-small-mini-chicken-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kip 10%), granen, mineralen, producten van plantaardige oorsprong, oliën en vetten.', true, now(), 'sha256:9cbeff5825a5662911c50b8b3ca21a18f8e74287fbb0481be325abcc0c6f9984', null from p;

-- Hill's Science Plan — Small & Mini Mature Adult Hondenvoer met Kip (1,5 / 3 / 6 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-mature-adult-7-small-mini-chicken-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Small & Mini Mature Adult Hondenvoer met Kip', 'kibble', '1,5 / 3 / 6 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-mature-adult-7-small-mini-chicken-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Tarwe, breukrijst, bruine rijst, maïs, kippen- en kalkoenenmeel (kip 7%; totaal gevogelte 11%), eiwithydrolysaat, gerst, haver, dierlijk vet, gedroogde bietenpulp, lijnzaad, plantaardige olie, mineralen, haverzemelen, fructo-oligosacchariden, gedroogde tomatenpuree, gedroogde citruspulp, spinaziepoeder. ActivBiome+ Multi Benefit mix van prebiotica (0,6%): Haverzemelen, fructo-oligosacchariden.', true, now(), 'sha256:a3a1ee43a78e44c8acd2232251ac71e2518c79cac0d8554dc69238e2ccf46ee2', null from p;

-- Hill's Science Plan — Mature Adult Natvoer Hond met Rund (370 g)
-- bron: https://www.hillspet.nl/dog-food/science-plan-mature-adult-beef-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Mature Adult Natvoer Hond met Rund', 'wet', '370 g', null, 'https://www.hillspet.nl/dog-food/science-plan-mature-adult-beef-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (rund 5%), granen, mineralen, producten van plantaardige oorsprong, oliën en vetten.', true, now(), 'sha256:80f6ba113c1539d55911cfd344a54d01f7bf120cd047ef124087429ff11a4330', null from p;

-- Hill's Science Plan — Multi-Benefit Mature Adult Natvoer voor Honden (363 g)
-- bron: https://www.hillspet.nl/dog-food/science-plan-mature-adult-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Multi-Benefit Mature Adult Natvoer voor Honden', 'wet', '363 g', null, 'https://www.hillspet.nl/dog-food/science-plan-mature-adult-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kip 10%), granen, bijproducten van plantaardige oorsprong, zaden, mineralen, week- en schaaldieren.', true, now(), 'sha256:5558dfd8dd031cf6b5af5ffa0dda1437cb275329b464c9eac0efcb020562248a', null from p;

-- Hill's Science Plan — Mature Adult Natvoer Hond met Kip (370 g)
-- bron: https://www.hillspet.nl/dog-food/science-plan-mature-adult-chicken-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Mature Adult Natvoer Hond met Kip', 'wet', '370 g', null, 'https://www.hillspet.nl/dog-food/science-plan-mature-adult-chicken-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kip 12%), granen, mineralen, producten van plantaardige oorsprong, oliën en vetten.', true, now(), 'sha256:73ea8143c2de3f24abe798ff1d20504faa80f9a1f603f8d7b78db5f5fc56d61a', null from p;

-- Hill's Science Plan — Mature Adult Stoofpotje Hond met Kip & toegevoegde Groenten (363 g)
-- bron: https://www.hillspet.nl/dog-food/science-plan-mature-adult-chunks-gravy-chicken-vegetables-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Mature Adult Stoofpotje Hond met Kip & toegevoegde Groenten', 'wet', '363 g', null, 'https://www.hillspet.nl/dog-food/science-plan-mature-adult-chunks-gravy-chicken-vegetables-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kip 6%), granen, producten van plantaardige oorsprong, groenten (1,7%), oliën en vetten, mineralen, eieren en eibijproducten, diverse suikers, zaden.', true, now(), 'sha256:9260eb7651782111d4a01eef17d755ebe79a59a8777a1bc6b427b0d2a947ed77', null from p;

-- Hill's Science Plan — Multi-Benefit + Senior Health Mature Adult 7+ Medium & Large Breed Hondenvoer (2 / 10 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-mature-adult-medium-large-breed-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Multi-Benefit + Senior Health Mature Adult 7+ Medium & Large Breed Hondenvoer', 'kibble', '2 / 10 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-mature-adult-medium-large-breed-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Breukrijst, maïs, kip- en kalkoenmeel (kip 8%; totaal gevogelte 12%), gedroogde hele eieren (10%), eiwithydrolysaat, gerst, haver, plantaardige olie, gedroogde bietenpulp, lijnzaad, mineralen, gedroogde citruspulp, gedroogde wortelen, gedroogde tomatenpuree, spinaziepoeder, visolie, dierlijk vet. (Totale groenten 3%, totaal fruit 1%). Anti-verouderingstechnologie (4%): Gedroogde citruspulp, gedroogde wortelen, gedroogde tomatenpuree, spinaziepoeder.', true, now(), 'sha256:296ca4704d478543db2cd8aaf51d08beeea0bd457aecbccf4db87ac17df55e14', null from p;

-- Hill's Science Plan — Multi-Benefit + Senior Health Mature Adult 7+ Small & Mini Hondenvoer (2 / 7 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-mature-adult-small-mini-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Multi-Benefit + Senior Health Mature Adult 7+ Small & Mini Hondenvoer', 'kibble', '2 / 7 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-mature-adult-small-mini-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Breukrijst, maïs, kippen- en kalkoenenmeel (kip 8%; totaal gevogelte 12%), eipoeder (10%), eiwithydrolysaat, gerst, haver, plantaardige olie, gedroogde bietenpulp, lijnzaad, mineralen, gedroogde wortelen, gedroogde tomatenpuree, gedroogde citruspulp, spinaziepoeder, visolie, dierlijk vet. (Totaal groenten 2,9%, Totaal fruit 1%). Anti-verouderingstechnolgie (3,9%): Gedroogde wortelen, gedroogde tomatenpuree, gedroogde citruspulp, spinaziepoeder.', true, now(), 'sha256:fa648ab279e5fafa866a00ceb5dab0e13024daedaad64b3c51d087826d91d9ca', null from p;

-- Hill's Science Plan — Hypoallergenic Medium Adult Hondenvoer met Zalm (12 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-medium-hypoallergenic-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Hypoallergenic Medium Adult Hondenvoer met Zalm', 'kibble', '12 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-medium-hypoallergenic-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Gedroogde aardappelen (21%), aardappelzetmeel, gedroogde erwten, zalmmeel (9%), erwteneiwit, dierlijk vet, eiwithydrolysaat, plantaardige olie, mineralen, gedroogde bietenpulp, lijnzaad, gedroogde wortelen, gedroogde tomatenpuree, gedroogde citruspulp, spinaziepoeder.', true, now(), 'sha256:8e3db566f4e7d51e1ff2359b00202d760e80ebbc62643600e9ac1d1c9d563850', null from p;

-- Hill's Science Plan — Puppy Natvoer met Rund (370 g)
-- bron: https://www.hillspet.nl/dog-food/science-plan-puppy-beef-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Puppy Natvoer met Rund', 'wet', '370 g', null, 'https://www.hillspet.nl/dog-food/science-plan-puppy-beef-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (rund 5%), granen, producten van plantaardige oorsprong, mineralen, oliën en vetten.', true, now(), 'sha256:549df3605211239aa0aeec06fc073caf3e4b0ac1d2312d749f952be6175fe4a4', null from p;

-- Hill's Science Plan — Puppy Natvoer met Kip (370 g)
-- bron: https://www.hillspet.nl/dog-food/science-plan-puppy-chicken-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Puppy Natvoer met Kip', 'wet', '370 g', null, 'https://www.hillspet.nl/dog-food/science-plan-puppy-chicken-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kip 21%), granen, producten van plantaardige oorsprong, mineralen, oliën en vetten.', true, now(), 'sha256:2bf8faeb6e3471dccb6d0ef1e2757ebe9c4014fb6df2123ca1adc78dc4dadfc4', null from p;

-- Hill's Science Plan — Puppy Stoofpotje met Kip & toegevoegde Groenten (363 g)
-- bron: https://www.hillspet.nl/dog-food/science-plan-puppy-chunks-gravy-chicken-vegetables-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Puppy Stoofpotje met Kip & toegevoegde Groenten', 'wet', '363 g', null, 'https://www.hillspet.nl/dog-food/science-plan-puppy-chunks-gravy-chicken-vegetables-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kip 15%), granen, producten van plantaardige oorsprong, groenten (1,7%), mineralen, eieren en eibijproducten, diverse suikers, oliën en vetten.', true, now(), 'sha256:a3d1f80b55bb6bb2d77971ae714bcf2c9d0badb76ff4e7513e070fdc6af912b2', null from p;

-- Hill's Science Plan — Multi-Benefit Puppy Natvoer (363 g)
-- bron: https://www.hillspet.nl/dog-food/science-plan-puppy-growth-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Multi-Benefit Puppy Natvoer', 'wet', '363 g', null, 'https://www.hillspet.nl/dog-food/science-plan-puppy-growth-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kip 26%), granen, mineralen, bijproducten van plantaardige oorsprong, oliën en vetten, fruit, zaden.', true, now(), 'sha256:01ad026b4b5023ed33ef3331378d4f85ba99fedc7d41d8c420b194f52d804ffc', null from p;

-- Hill's Science Plan — Medium Puppyvoer met Lam & Rijst (2,5 / 12 / 14 / 18 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-puppy-lamb-rice-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Medium Puppyvoer met Lam & Rijst', 'kibble', '2,5 / 12 / 14 / 18 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-puppy-lamb-rice-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Breukrijst (26%), lamsmeel (16%), sojameel, dierlijk vet, erwteneiwit, maïs, eiwithydrolysaat, gedroogde bietenpulp, maïseiwitmeel, mineralen, visolie (1,4%), lijnzaad, plantaardige olie, haverzemelen, fructo-oligosacchariden. ActivBiome+ Multi Benefit mix van prebiotica (0,6%): Haverzemelen, fructo-oligosacchariden.', true, now(), 'sha256:86533a389ff51bf00637dca5e6c096a62db244bc39a28a636a312c2f8a26f3a8', null from p;

-- Hill's Science Plan — Large Breed Puppyvoer met Kip (700 g / 2,5 / 6 / 12 / 16 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-puppy-large-breed-chicken-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Large Breed Puppyvoer met Kip', 'kibble', '700 g / 2,5 / 6 / 12 / 16 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-puppy-large-breed-chicken-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Kippen- en kalkoenenmeel (kip 19%; totaal gevogelte 29%), breukrijst, maïs, eiwithydrolysaat, dierlijk vet, eipoeder, cellulose, lijnzaad, mineralen, gedroogde bietenpulp, visolie (1,3%), plantaardige olie, haverzemelen, fructo-oligosacchariden. ActivBiome+ Multi Benefit mix van prebiotica (0,6%): Haverzemelen, fructo-oligosacchariden.', true, now(), 'sha256:36677d57294bbcb3b9f495b0a6f2c8d83df4c2945a50af95f6369d2bb82876c5', null from p;

-- Hill's Science Plan — Medium Puppyvoer met Kip (800 g / 2,5 / 6 / 12 / 14 / 18 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-puppy-medium-chicken-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Medium Puppyvoer met Kip', 'kibble', '800 g / 2,5 / 6 / 12 / 14 / 18 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-puppy-medium-chicken-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Kippen- en kalkoenenmeel (kip 19%; totaal gevogelte 29%), breukrijst, bruine rijst, dierlijk vet, maïs, eiwithydrolysaat, gerst, haver, gedroogde bietenpulp, mineralen, maïseiwitmeel, lijnzaad, plantaardige olie, visolie (0,5%), haverzemelen, fructo-oligosacchariden. ActivBiome+ Multi Benefit mix van prebiotica (0,6%): Haverzemelen, fructo-oligosacchariden.', true, now(), 'sha256:8c531b10abdf7b1b11ae7f3a0348d2a9e10347a0894768fb6b395a3e53e83f56', null from p;

-- Hill's Science Plan — Puppy & Mother Tender Mousse met Kip (200 g)
-- bron: https://www.hillspet.nl/dog-food/science-plan-puppy-mother-mousse-chicken-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Puppy & Mother Tender Mousse met Kip', 'wet', '200 g', null, 'https://www.hillspet.nl/dog-food/science-plan-puppy-mother-mousse-chicken-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kip 16%), granen, producten van plantaardige oorsprong, mineralen, oliën en vetten.', true, now(), 'sha256:3046323f6eee4068ed4b34b77e3b27d6e3a94c36d2ad65e8f0724d6b01c2b64f', null from p;

-- Hill's Science Plan — Small & Mini Puppyvoer met Kip (700 g / 1,5 / 3 / 6 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-puppy-small-mini-chicken-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Small & Mini Puppyvoer met Kip', 'kibble', '700 g / 1,5 / 3 / 6 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-puppy-small-mini-chicken-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Kippen- en kalkoenenmeel (kip 19%; totaal gevogelte 29%), breukrijst, tarwe, dierlijk vet, maïs, eiwithydrolysaat, gedroogde bietenpulp, maïseiwitmeel, mineralen, lijnzaad, visolie (1,5%), plantaardige olie, haverzemelen, fructo-oligosacchariden, gedroogde tomatenpuree, gedroogde citruspulp, spinaziepoeder. ActivBiome+ Multi Benefit mix van prebiotica (0,6%): Haverzemelen, fructo-oligosacchariden.', true, now(), 'sha256:d2eede9956e0ddc81b0943c9d63058f161ea77a3e1919440a446725b902ce425', null from p;

-- Hill's Science Plan — Small & Mini Puppyvoer met Lam & Rijst (1,5 / 6 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-puppy-small-mini-lamb-rice-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Small & Mini Puppyvoer met Lam & Rijst', 'kibble', '1,5 / 6 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-puppy-small-mini-lamb-rice-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Breukrijst (23%), lamsmeel (16%), sojameel, dierlijk vet, erwteneiwit, maïs, eiwithydrolysaat, gedroogde bietenpulp, maïseiwitmeel, mineralen, visolie (1,4%), lijnzaad, plantaardige olie, haverzemelen, fructo-oligosacchariden. ActivBiome+ Multi Benefit mix van prebiotica (0,6%): Haverzemelen, fructo-oligosacchariden.', true, now(), 'sha256:2e169d94ccb6e3ee61dcca1927a703b4bdb3b0e1dd069547abf9feb18e2906d7', null from p;

-- Hill's Science Plan — Small & Mini Senior Hondenvoer met Kip (1,5 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-senior-11-small-miniature-chicken-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Small & Mini Senior Hondenvoer met Kip', 'kibble', '1,5 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-senior-11-small-miniature-chicken-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Kippen- en kalkoenenmeel (kip 11%; totaal gevogelte 17%), breukrijst, tarwe, maïs, dierlijk vet, eiwithydrolysaat, gerst, haver, gedroogde bietenpulp, plantaardige olie, visolie (1,8%), mineralen, lijnzaad, haverzemelen, fructo-oligosacchariden, gedroogde tomatenpuree, gedroogde citruspulp, spinaziepoeder. ActivBiome+ Multi Benefit mix van prebiotica (0,6%): Haverzemelen, fructo-oligosacchariden.', true, now(), 'sha256:3982f7161fd001204ef09c477311d8399910e68f4bc4095e0a791ec7275a76b8', null from p;

-- Hill's Science Plan — Hypoallergenic Small & Mini Adult Hondenvoer met Zalm (1,5 / 6 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-small-mini-hypoallergenic-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Hypoallergenic Small & Mini Adult Hondenvoer met Zalm', 'kibble', '1,5 / 6 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-small-mini-hypoallergenic-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Gedroogde aardappelen (21%), aardappelzetmeel, gedroogde erwten, zalmmeel (9%), erwteneiwit, dierlijk vet, eiwithydrolysaat, plantaardige olie, mineralen, gedroogde bietenpulp, lijnzaad, gedroogde wortelen, gedroogde tomatenpuree, gedroogde citruspulp, spinaziepoeder.', true, now(), 'sha256:8e3db566f4e7d51e1ff2359b00202d760e80ebbc62643600e9ac1d1c9d563850', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
