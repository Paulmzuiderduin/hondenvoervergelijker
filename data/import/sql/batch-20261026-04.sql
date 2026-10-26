-- Automatisch overgenomen etiketten, batch 4 van 2026-10-26 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Hill's Prescription Diet — a/d Urgent Care Hondenvoer met Kip (200 g)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-ad-urgent-care-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'a/d Urgent Care Hondenvoer met Kip', 'wet', '200 g', null, 'https://www.hillspet.nl/dog-food/prescription-diet-ad-urgent-care-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kip 13%), granen, oliën en vetten, mineralen, eieren en eibijproducten, diverse suikers. Goed verteerbare ingrediënten: Kalkoen, varken, kip, rijstebloem, visolie, gedroogde ei-eiwitten.', true, now(), 'sha256:f51a0797f20afba5af361b9acbe330137f701ed5487513e7a3d93df69d79bde1', null from p;

-- Hill's Prescription Diet — b/d Hondenvoer met Kip (3 / 12 kg)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-bd-aging-care-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'b/d Hondenvoer met Kip', 'kibble', '3 / 12 kg', null, 'https://www.hillspet.nl/dog-food/prescription-diet-bd-aging-care-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Granen, vlees en dierlijke bijproducten (kip 6%), oliën en vetten, producten van plantaardige oorsprong, groenten (3,6%), zaden, vis en visbijproducten, plantaardige eiwitextracten, fruit (1,3%), mineralen.', true, now(), 'sha256:0bc1524a5b1e52fc6b85168d0b65dd500fe113696770aec21d35e8b785ff4a3f', null from p;

-- Hill's Prescription Diet — c/d Multicare Stoofpotje voor Honden met Kip & toegevoegde Groenten (156 / 354 g)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-cd-multicare-chicken-vegetable-stew-urinary-care-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'c/d Multicare Stoofpotje voor Honden met Kip & toegevoegde Groenten', 'wet', '156 / 354 g', null, 'https://www.hillspet.nl/dog-food/prescription-diet-cd-multicare-chicken-vegetable-stew-urinary-care-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kip 10%), granen, bijproducten van plantaardige oorsprong, groenten (1,5%), oliën en vetten, mineralen, plantaardige eiwitextracten, zaden. Urinealkaliserende stoffen: Kaliumcitraat (1 g/kg).', true, now(), 'sha256:47d1432da7ba225d1dce24c93e2434d34589819956b0cd96e6a57282c123d10c', null from p;

-- Hill's Prescription Diet — c/d Multicare + Metabolic Hondenvoer (1,5 kg)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-cd-multicare-metabolicy-urinary-care-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'c/d Multicare + Metabolic Hondenvoer', 'kibble', '1,5 kg', null, 'https://www.hillspet.nl/dog-food/prescription-diet-cd-multicare-metabolicy-urinary-care-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Plantaardige eiwitextracten, granen, producten van plantaardige oorsprong, oliën en vetten, groenten, vlees en dierlijke bijproducten, mineralen, zaden, schaal- en weekdieren. Urinealkaliserende stoffen: Kaliumcitraat (8 g/kg), calciumcarbonaat (10 g/kg).', true, now(), 'sha256:fefa469010a47150e14aae4ff3fa742c058f17768ba48aa31d2dda570893566b', null from p;

-- Hill's Prescription Diet — c/d Multicare Natvoer voor Honden met Kip (370 g)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-cd-multicare-urinary-care-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'c/d Multicare Natvoer voor Honden met Kip', 'wet', '370 g', null, 'https://www.hillspet.nl/dog-food/prescription-diet-cd-multicare-urinary-care-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kip 19%), granen, producten van plantaardige oorsprong, mineralen, oliën en vetten, zaden, schaal- en weekdieren. Urinealkaliserende stoffen: Kaliumcitraat (4,4 g/kg).', true, now(), 'sha256:dddebc380a014d0f34bf9ad2f5d11258fc6da5bea30723861682372d6f9a2f07', null from p;

-- Hill's Prescription Diet — c/d Multicare Hondenvoer met Kip (1,5 kg)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-cd-multicare-urinary-care-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'c/d Multicare Hondenvoer met Kip', 'kibble', '1,5 kg', null, 'https://www.hillspet.nl/dog-food/prescription-diet-cd-multicare-urinary-care-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Granen, vlees en dierlijke bijproducten (kip 8%), oliën en vetten, plantaardige eiwitextracten, zaden, mineralen. Urinealkaliserende stoffen: Kaliumcitraat (4 g/kg), calciumcarbonaat (1,5 g/kg).', true, now(), 'sha256:7fafe956fb247da629913100be7476f2a308512046a8bb73c4076660ef4c39c3', null from p;

-- Hill's Prescription Diet — Derm Complete Puppyvoer (1,5 kg)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-derm-complete-puppy-original-skin-care-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'Derm Complete Puppyvoer', 'kibble', '1,5 kg', null, 'https://www.hillspet.nl/dog-food/prescription-diet-derm-complete-puppy-original-skin-care-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Granen, eieren en eibijproducten, plantaardige eiwitextracten, oliën en vetten, mineralen, vlees en dierlijke bijproducten, zaden, producten van plantaardige oorsprong, groenten, fruit. Koolhydraatbron: Breukrijst. Eiwitbronnen: Gedroogde eieren, rijsteiwitconcentraat.', true, now(), 'sha256:6ba66c05074e00cd6f6270ef3fd7ccddccfe4d26cc3c0ae92df02dbf0c21fdf8', null from p;

-- Hill's Prescription Diet — Derm Defense Hondenvoer met Kip (4 / 12 kg)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-derm-defense-skin-care-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'Derm Defense Hondenvoer met Kip', 'kibble', '4 / 12 kg', null, 'https://www.hillspet.nl/dog-food/prescription-diet-derm-defense-skin-care-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Granen, vlees en dierlijke bijproducten (kip 6%), plantaardige eiwitextracten, oliën en vetten (visolie 1,9%), eieren en eibijproducten, zaden, producten van plantaardige oorsprong, mineralen.', true, now(), 'sha256:694136adc0e4bed5000b3ff69bbb4e5ac1466424f9f5e857fa1adcbf540e1f6d', null from p;

-- Hill's Prescription Diet — Gastrointestinal Biome Stoofpotje voor Honden met Kip & toegevoegde Wortelen (354 g)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-gastrointestinal-biome-chicken-vegetable-stew-digestive-care-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'Gastrointestinal Biome Stoofpotje voor Honden met Kip & toegevoegde Wortelen', 'wet', '354 g', null, 'https://www.hillspet.nl/dog-food/prescription-diet-gastrointestinal-biome-chicken-vegetable-stew-digestive-care-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kip 8%), producten van plantaardige oorsprong, granen, plantaardige eiwitextracten, groenten (wortelen 0,8%), oliën en vetten, mineralen, fruit, zaden. Goed verteerbare ingrediënten: Kip, varkenslever, rijstebloem, rijstzetmeel, plantaardige olie. ActivBiome+ Digestion prebiotische mix (3,2%): gemalen pecannotenschil, lijnzaad, gedroogde citruspulp, gedroogde bietenpulp, gedroogde veenbessen.', true, now(), 'sha256:8755cfc22db602dd9bfed86d9aa80e53bc79cbf99aa3d7bae89de9e05b3e47b9', null from p;

-- Hill's Prescription Diet — Gastrointestinal Biome Digestive Care Natvoer voor Honden met Kip (200 / 370 g)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-gastrointestinal-biome-digestive-care-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'Gastrointestinal Biome Digestive Care Natvoer voor Honden met Kip', 'wet', '200 / 370 g', null, 'https://www.hillspet.nl/dog-food/prescription-diet-gastrointestinal-biome-digestive-care-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kip 6%), granen, producten van plantaardige oorsprong, oliën en vetten, mineralen, fruit, zaden, groenten. Goed verteerbare ingrediënten: Varkenslever, kip, rijst, dierlijk vet, visolie, plantaardige olie. ActivBiome+ prebiotische mix (3.2%): Gemalen pecannotenschil, lijnzaad, gedroogde citruspulp, gedroogde bietenpulp, gedroogde veenbessen.', true, now(), 'sha256:c440aad3a8fb558aa5d5f9cd0dc16611300937afc23e6cd3fcbd5377a138bdc9', null from p;

-- Hill's Prescription Diet — Gastrointestinal Biome Hondenvoer met Kip (1,5 / 4 / 10 kg)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-gastrointestinal-biome-digestive-care-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'Gastrointestinal Biome Hondenvoer met Kip', 'kibble', '1,5 / 4 / 10 kg', null, 'https://www.hillspet.nl/dog-food/prescription-diet-gastrointestinal-biome-digestive-care-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Granen, vlees en dierlijke bijproducten (kip 9%), producten van plantaardige oorsprong, oliën en vetten, plantaardige eiwitextracten, fruit, zaden, mineralen, groenten. Goed verteerbare ingrediënten: Kippen- en kalkoenenmeel, breukrijst, maïs, maïsglutenmeel, dierlijk vet, plantaardige olie, visolie. ActivBiome+ Digestion prebiotische mix (14.6%): Gemalen pecannotenschil, gedroogde bietenpulp, lijnzaad, gedroogde citruspulp, gedroogde veenbessen.', true, now(), 'sha256:ac073c71aa88998563924c015cb5ffc559e84335ca955255335c0c4b313b3e3f', null from p;

-- Hill's Prescription Diet — Gastrointestinal Biome Mini Hondenvoer met Kip (1 kg)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-gastrointestinal-biome-small-bites-digestive-care-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'Gastrointestinal Biome Mini Hondenvoer met Kip', 'kibble', '1 kg', null, 'https://www.hillspet.nl/dog-food/prescription-diet-gastrointestinal-biome-small-bites-digestive-care-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Granen, vlees en dierlijke bijproducten (kip 9%), bij producten van natuurlijke oorsprong, oliën en vetten, plantaardige eiwitextracten, fruit, zaden, mineralen, groenten. Goed verteerbare ingrediënten: Kip- en kalkoenmeel, brouwersrijst, maïs, maïsglutenmeel, dierlijk vet, plantaardige olie.', true, now(), 'sha256:631446a4c52c10d6e4436cd923025d4634799bef1e6ef454da15b1ccfeca0448', null from p;

-- Hill's Prescription Diet — i/d Stoofpotje voor Honden (156 / 354 g)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-id-chicken-vegetable-stew-digestive-care-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'i/d Stoofpotje voor Honden', 'wet', '156 / 354 g', null, 'https://www.hillspet.nl/dog-food/prescription-diet-id-chicken-vegetable-stew-digestive-care-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kip 18%), derivaten van plantaardige oorsprong, plantaardige eiwitextracten, granen, mineralen, oliën en vetten, groenten (0,7%), fruit, zaden. ActivBiome+ Digestion prebiotische blend (1%): gemalen pecannootschil, lijnzaad, gedroogde bietenpulp, gedroogde citruspulp, gedroogde veenbessen. Goed verteerbare ingrediënten: kip, varkenslever, tarwegluten, rijstzetmeel, rijst, dierlijk vet, digest.', true, now(), 'sha256:1ce6b67dd84b950ed82750cf294ad64b399e19f72b049e60568fb850d65992e1', null from p;

-- Hill's Prescription Diet — i/d Natvoer voor Honden met Kalkoen (200 / 360 g)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-id-digestive-care-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'i/d Natvoer voor Honden met Kalkoen', 'wet', '200 / 360 g', null, 'https://www.hillspet.nl/dog-food/prescription-diet-id-digestive-care-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kalkoen 5%), granen, eieren en eibijproducten, mineralen, producten van plantaardige oorsprong, oliën en vetten, zaden, fruit. Goed verteerbare ingrediënten: Varkenslever, rijst, rijstebloem, kalkoen, gedroogde eieren, visolie.', true, now(), 'sha256:eab31c5f288f15bb4f084d68e76c71096d84b2586ce49930257cb85a04d0e512', null from p;

-- Hill's Prescription Diet — i/d Hondenvoer met Kip (1,5 kg)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-id-digestive-care-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'i/d Hondenvoer met Kip', 'kibble', '1,5 kg', null, 'https://www.hillspet.nl/dog-food/prescription-diet-id-digestive-care-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Granen, vlees en dierlijke bijproducten (kip 7%), eieren en eibijproducten, producten van plantaardige oorsprong, plantaardige eiwitextracten, oliën en vetten, mineralen, fruit, zaden. Goed verteerbare ingrediënten: Maïs, breukrijst, gedroogde eieren, kippen- en kalkoenenmeel, maïsglutenmeel, dierlijk vet, plantaardige olie. ActivBiome+ prebiotische mix (5,8%): Gedroogde bietenpulp, gemalen pecannotenschil, lijnzaad, gedroogde citruspulp, gedroogde veenbessen.', true, now(), 'sha256:bd406438e4a2aa97ae8c274b1be31f2bf77b6e148812d331458f492723502b6e', null from p;

-- Hill's Prescription Diet — i/d Low Fat Natvoer voor Honden (200 / 360 g)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-id-low-fat-digestive-care-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'i/d Low Fat Natvoer voor Honden', 'wet', '200 / 360 g', null, 'https://www.hillspet.nl/dog-food/prescription-diet-id-low-fat-digestive-care-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten, granen, bijproducten van plantaardige oorsprong, eieren en eibijproducten, mineralen, zaden, oliën en vetten, groenten, fruit. Goed verteerbare ingrediënten: Varken, rijst, rijstebloem, maïs, kip, eipoeder, eiwithydrolysaat, plantaardige olie, visolie. ActivBiome+ prebiotische mix (1,8%): Gedroogde bietenpulp, lijnzaad, gemalen pecannotenschil, gedroogde citruspulp, gedroogde veenbessen.', true, now(), 'sha256:e98d0f347caddeb1280e55650af3a8ac195e8acbeb281b95d890ec5cacc5b868', null from p;

-- Hill's Prescription Diet — i/d Low Fat Hondenvoer met Kip (1,5 / 4 / 10 / 12 kg)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-id-low-fat-digestive-care-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'i/d Low Fat Hondenvoer met Kip', 'kibble', '1,5 / 4 / 10 / 12 kg', null, 'https://www.hillspet.nl/dog-food/prescription-diet-id-low-fat-digestive-care-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Granen, vlees en dierlijke bijproducten (kip 9%), plantaardige eiwitextracten, producten van plantaardige oorsprong, oliën en vetten, zaden, mineralen, groenten (gember 1%), fruit. Goed verteerbare ingrediënten: Breukrijst, kippen- en kalkoenenmeel, maïsglutenmeel, dierlijk vet. ActivBiome+ prebiotische mix (7.5%): Gedroogde bietenpulp, lijnzaad, gemalen pecannotenschil, gedroogde citruspulp, gedroogde veenbessen.', true, now(), 'sha256:4afd99d044d3e85f74b0cb94261709daf48879ae1579eabadcfa9823c63a7fa6', null from p;

-- Hill's Prescription Diet — i/d Low Fat Stoofpotje voor Honden met Kipsmaak & Groenten (156 / 354 g)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-id-low-fat-rice-vegetable-chicken-stew-digestive-care-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'i/d Low Fat Stoofpotje voor Honden met Kipsmaak & Groenten', 'wet', '156 / 354 g', null, 'https://www.hillspet.nl/dog-food/prescription-diet-id-low-fat-rice-vegetable-chicken-stew-digestive-care-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kip 3%), granen, verschillende suikers, bijproducten van plantaardige oorsprong, mineralen, groenten (0,8%), eieren en ei-bijproducten, oliën en vetten, zaden, fruit. Goed verteerbare ingrediënten: Varkenslever, kip, maïszetmeel, rijst, gedroogde eieren, plantaardige olie.', true, now(), 'sha256:fc61bcfc1dc44e88c0d3c529eef28865cd253f3e551e3121a2c9eea5de6f3774', null from p;

-- Hill's Prescription Diet — i/d Puppyvoer Natvoer (200 g)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-id-puppy-chicken-digestive-care-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'i/d Puppyvoer Natvoer', 'wet', '200 g', null, 'https://www.hillspet.nl/dog-food/prescription-diet-id-puppy-chicken-digestive-care-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kip 7%), granen, eieren en eibijproducten, mineralen, derivaten van plantaardige oorsprong, oliën en vetten, zaden, fruit.', true, now(), 'sha256:5a576ff0378b58815ae0a8e0130362d7f64752f6946e220b41d256d30d1dc5d6', null from p;

-- Hill's Prescription Diet — i/d Puppyvoer (1,5 kg)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-id-puppy-chicken-digestive-care-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'i/d Puppyvoer', 'kibble', '1,5 kg', null, 'https://www.hillspet.nl/dog-food/prescription-diet-id-puppy-chicken-digestive-care-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Granen, vlees en dierlijke bijproducten (kip 13%), eieren en eibijproducten, oliën en vetten, producten van plantaardige oorsprong, mineralen, plantaardige eiwitextracten, fruit, zaden. Goed verteerbare ingrediënten: Breukrijst, bruine rijst, kippen- en kalkoenenmeel, eipoeder, maïs, eiwithydrolysaat, dierlijk vet, maïseiwitmeel, visolie. ActivBiome+ Digestion prebiotische mix (4%): Gemalen pecannotenschil, gedroogde bietenpulp, lijnzaad, gedroogde citruspulp, gedroogde veenbessen.', true, now(), 'sha256:ab9ef97a79a48a86fda5888107ed14e565d7c1453c02919ae9a1526260c20908', null from p;

-- Hill's Prescription Diet — i/d Sensitive Hondenvoer (1,5 / 4 / 10 / 12 kg)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-id-sensitive-digestive-care-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'i/d Sensitive Hondenvoer', 'kibble', '1,5 / 4 / 10 / 12 kg', null, 'https://www.hillspet.nl/dog-food/prescription-diet-id-sensitive-digestive-care-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Granen (breukrijst 31%), eieren en eibijproducten (eipoeder 18%), plantaardige eiwitextracten, oliën en vetten, producten van plantaardige oorsprong, vlees en dierlijke bijproducten, mineralen, fruit, zaden. ActivBiome+ Digestion prebiotische mix (4%): Gemalen pecannotenschil, gedroogde bietenpulp, lijnzaad, gedroogde citruspulp, gedroogde veenbessen. Goed verteerbare ingrediënten: Breukrijst, eipoeder, maïseiwitmeel, dierlijk vet, plantaardige olie. Eiwitbronnen: Eipoeder, maïseiwitmeel. Koolhydraatbronnen: Breukrijst, gerst, haver.', true, now(), 'sha256:0b5bb171b5df3854e250cc0d2d1f698fe1bffe5cfb6af8eb324b094d5e0d56f9', null from p;

-- Hill's Prescription Diet — i/d Stress Natvoer voor Honden Met Kipsmaak (200 g)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-id-stress-mini-chicken-digestive-care-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'i/d Stress Natvoer voor Honden Met Kipsmaak', 'wet', '200 g', null, 'https://www.hillspet.nl/dog-food/prescription-diet-id-stress-mini-chicken-digestive-care-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kip 1%), granen, producten van plantaardige oorsprong, eieren en eibijproducten, mineralen, zaden, oliën en vetten, groenten, fruit, melk en melkbijproducten. Goed verteerbare ingrediënten: Varken, rijst, rijstebloem, maïs, kip, eipoeder, plantaardige olie, visolie, melkeiwithydrolysaat. ActivBiome+ prebiotische mix (1,8%): Gedroogde bietenpulp, lijnzaad, gemalen pecannotenschil, gedroogde citruspulp, gedroogde veenbessen.', true, now(), 'sha256:11a1c3b20e0e8651c2954379fa6b5d4521211c837d07ea36e8eaf16fba6b153e', null from p;

-- Hill's Prescription Diet — i/d Stress Mini Hondenvoer met Kip (1 / 3 / 6 kg)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-id-stress-mini-chicken-digestive-care-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'i/d Stress Mini Hondenvoer met Kip', 'kibble', '1 / 3 / 6 kg', null, 'https://www.hillspet.nl/dog-food/prescription-diet-id-stress-mini-chicken-digestive-care-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Granen, vlees en dierlijke bijproducten (kip 9%), plantaardige eiwitextracten, producten van plantaardige oorsprong, oliën en vetten (visolie 0,5%), zaden, mineralen, groenten (gember 1%), fruit, melk en melkbijproducten (melkeiwithydrolysaat 0,1%). Goed verteerbare ingrediënten: Breukrijst, kippen- en kalkoenenmeel, maïsglutenmeel, dierlijk vet, visolie. ActivBiome+ Digestion prebiotische mix (7.5%): Gedroogde bietenpulp, lijnzaad, gemalen pecannotenschil, gedroogde citruspulp, gedroogde veenbessen.', true, now(), 'sha256:fa666df2e5f14cc7f69809bd4761e71712db7c645f206538aca361e95d91d0da', null from p;

-- Hill's Prescription Diet — i/d Stress Mini Stoofpotje voor Honden met Kipsmaak & Groenten (156 g)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-id-stress-rice-vegetable-chicken-stew-digestive-care-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'i/d Stress Mini Stoofpotje voor Honden met Kipsmaak & Groenten', 'wet', '156 g', null, 'https://www.hillspet.nl/dog-food/prescription-diet-id-stress-rice-vegetable-chicken-stew-digestive-care-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kip 3%), granen, diverse suikers, producten van plantaardige oorsprong, mineralen, groenten (0,9%), eieren en eibijproducten, oliën en vetten, zaden, fruit, melk en melkbijproducten. Goed verteerbare ingrediënten: Varken, kip, rijst, eipoeder, plantaardige olie. ActivBiome+ Digestion prebiotische mix (1.2%): Gemalen pecannotenschil, lijnzaad, gedroogde bietenpulp, gedroogde citruspulp, gedroogde veenbessen.', true, now(), 'sha256:78b214255d377edf387d009836c039328521344695f81b17da91f278d928646f', null from p;

-- Hill's Prescription Diet — j/d Natvoer voor Honden met Kip (370 g)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-jd-joint-care-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'j/d Natvoer voor Honden met Kip', 'wet', '370 g', null, 'https://www.hillspet.nl/dog-food/prescription-diet-jd-joint-care-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kip 8%), granen, zaden, oliën en vetten, bijproducten van plantaardige oorsprong, mineralen, schaal- en weekdieren.', true, now(), 'sha256:e89ea6368d92ab071bb1a7f947c3033fd9d31956ac1d2f936bd5adb61e6b1f87', null from p;

-- Hill's Prescription Diet — j/d Hondenvoer (4 / 10 / 12 / 16 kg)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-jd-joint-care-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'j/d Hondenvoer', 'kibble', '4 / 10 / 12 / 16 kg', null, 'https://www.hillspet.nl/dog-food/prescription-diet-jd-joint-care-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Granen, vlees en dierlijke bijproducten (kip 4%), zaden, oliën en vetten, producten van plantaardige oorsprong, plantaardige eiwitextracten, mineralen, eieren en eibijproducten, schaal- en weekdieren.', true, now(), 'sha256:30c0491d99797f844c61074e0087c7996787bf80abce28747bb8153e25e04dcc', null from p;

-- Hill's Prescription Diet — j/d Reduced Calorie Hondenvoer met Kip (12 kg)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-jd-reduced-calorie-chicken-joint-care-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'j/d Reduced Calorie Hondenvoer met Kip', 'kibble', '12 kg', null, 'https://www.hillspet.nl/dog-food/prescription-diet-jd-reduced-calorie-chicken-joint-care-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Granen, plantaardige eiwitextracten, producten van plantaardige oorsprong, vlees en dierlijke bijproducten (kip 5%), zaden, oliën en vetten, mineralen, schaal- en weekdieren.', true, now(), 'sha256:a4e97b37d53cdaf7459419a28fdbc55d6f491cf56c120abb4932ff2b8b8d63e5', null from p;

-- Hill's Prescription Diet — k/d Kidney Care Stoofpotje voor Honden met Kip & toegevoegde Groenten (156 / 354 g)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-kd-chicken-vegetable-stew-kidney-care-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'k/d Kidney Care Stoofpotje voor Honden met Kip & toegevoegde Groenten', 'wet', '156 / 354 g', null, 'https://www.hillspet.nl/dog-food/prescription-diet-kd-chicken-vegetable-stew-kidney-care-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kip 5%), granen, oliën en vetten, producten van plantaardige oorsprong, diverse suikers, groenten (1,1%), mineralen, eieren en eibijproducten, zaden, gist. Eiwitbronnen: Kip, varkenslever, eipoeder. ActivBiome+ Kidney Defense prebiotische mix (0.29%): Betaïne, haverzemelen, fructo-oligosacchariden.', true, now(), 'sha256:0af161cc3d2df14abd4c12964f900cade2864308865832400a5307b6c554978d', null from p;

-- Hill's Prescription Diet — k/d Kidney Care Natvoer voor Honden (180 / 350 g)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-kd-kidney-care-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'k/d Kidney Care Natvoer voor Honden', 'wet', '180 / 350 g', null, 'https://www.hillspet.nl/dog-food/prescription-diet-kd-kidney-care-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten, bijproducten van plantaardige oorsprong, oliën en vetten, diverse suikers, mineralen. ActivBiome+ Kidney Defense prebiotische mix (0,33%): Betaïne, haverzemelen, fructo-oligosacchariden. Eiwitbron: Varkenslever.', true, now(), 'sha256:a4f5690f0d6848dae7be61677e17bb15594d3101326f5a29a84599a2e8ed2ad7', null from p;

-- Hill's Prescription Diet — k/d Kidney Care Hondenvoer (1,5 / 4 / 12 kg)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-kd-kidney-care-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'k/d Kidney Care Hondenvoer', 'kibble', '1,5 / 4 / 12 kg', null, 'https://www.hillspet.nl/dog-food/prescription-diet-kd-kidney-care-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Granen, oliën en vetten (visolie 2%), producten van plantaardige oorsprong, eieren en eibijproducten, plantaardige eiwitextracten, vlees en dierlijke bijproducten, mineralen, zaden. Eiwitbronnen: Gedroogde eieren, erwteneiwit. ActivBiome+ Kidney Defense prebiotische mix (1.1%): Betaïne, haverzemelen, fructo-oligosacchariden.', true, now(), 'sha256:e1ee2f9509c2cef506399ea657e92496e14dc8d1846a87f1cbf76ef4e516ec92', null from p;

-- Hill's Prescription Diet — k/d + Mobility Hondenvoer (4 / 12 kg)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-kd-mobility-chicken-kidney-care-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'k/d + Mobility Hondenvoer', 'kibble', '4 / 12 kg', null, 'https://www.hillspet.nl/dog-food/prescription-diet-kd-mobility-chicken-kidney-care-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Granen, zaden, oliën en vetten (visolie 3%), eieren en eibijproducten, vlees en dierlijke bijproducten, bijproducten van plantaardige oorsprong, plantaardige eiwitextracten, mineralen, schaal- en weekdieren. ActivBiome+ Kidney Defense prebiotische mix (1,1%): Betaïne, haverzemelen, fructo-oligosacchariden. Eiwitbronnen: Gedroogde eieren, erwteneiwit.', true, now(), 'sha256:7a170a02e50bc1c37e5eba9231bb6cc7053e6ade673f35bf09ea784818bd5326', null from p;

-- Hill's Prescription Diet — k/d + Mobilty Natvoer met Kipsmaak (370 g)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-kd-mobility-kidney-care-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'k/d + Mobilty Natvoer met Kipsmaak', 'wet', '370 g', null, 'https://www.hillspet.nl/dog-food/prescription-diet-kd-mobility-kidney-care-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kip 2%), producten van plantaardige oorsprong, oliën en vetten, zaden, diverse suikers, mineralen, schaal- en weekdieren. Eiwitbronnen: Varkenslever, kip. ActivBiome+ Kidney Defense prebiotische mix (0.3%): Betaïne, haverzemelen, fructo-oligosacchariden.', true, now(), 'sha256:129c6124c4a453736f6a047f6f3877a678b111f6063778dece517d6ad366d328', null from p;

-- Hill's Prescription Diet — l/d Natvoer voor Honden (370 g)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-ld-liver-care-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'l/d Natvoer voor Honden', 'wet', '370 g', null, 'https://www.hillspet.nl/dog-food/prescription-diet-ld-liver-care-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Granen, oliën en vetten, plantaardige eiwitextracten, eieren en eibijproducten, vlees en dierlijke bijproducten, zaden, mineralen, producten van plantaardige oorsprong. Eiwitbronnen: Eipoeder, sojameel, maïseiwitmeel.', true, now(), 'sha256:0701003909d9a024cae5ebb8d88d7285fe3704d86c0a66c541a1887317f5821a', null from p;

-- Hill's Prescription Diet — l/d Hondenvoer (1,5 / 4 / 10 kg)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-ld-liver-care-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'l/d Hondenvoer', 'kibble', '1,5 / 4 / 10 kg', null, 'https://www.hillspet.nl/dog-food/prescription-diet-ld-liver-care-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Granen, oliën en vetten, plantaardige eiwitextracten, eieren en eibijproducten, zaden, mineralen, vlees en dierlijke bijproducten, producten van plantaardige oorsprong. Eiwitbronnen: Sojameel, gedroogde eieren, maïsglutenmeel.', true, now(), 'sha256:0db7d0ae87825abae095021a3fcfd5dd6d452c02e7ee2596565c8b54fd5e44f1', null from p;

-- Hill's Prescription Diet — Metabolic Natvoer voor Honden met Rund (370 g)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-metabolic-beef-weight-management-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'Metabolic Natvoer voor Honden met Rund', 'wet', '370 g', null, 'https://www.hillspet.nl/dog-food/prescription-diet-metabolic-beef-weight-management-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (rund 5%), granen, producten van plantaardige oorsprong, groenten, eieren en eibijproducten, zaden, oliën en vetten, mineralen.', true, now(), 'sha256:2cc1bb724f3965175fe01b675dfd53cbc85f9e2e5067daf7c0128770f07c28e7', null from p;

-- Hill's Prescription Diet — Metabolic Hondenvoer met Lam & Rijst (1,5 / 12 kg)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-metabolic-lamb-rice-weight-management-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'Metabolic Hondenvoer met Lam & Rijst', 'kibble', '1,5 / 12 kg', null, 'https://www.hillspet.nl/dog-food/prescription-diet-metabolic-lamb-rice-weight-management-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Granen (rijst 4%), producten van plantaardige oorsprong, vlees en dierlijke bijproducten (lam 4%), plantaardige eiwitextracten, groenten, oliën en vetten, zaden, mineralen.', true, now(), 'sha256:f07012957766218beeb7bf0ca875329c4328f736d65f26f183ecddfbe84917cb', null from p;

-- Hill's Prescription Diet — Metabolic Mini Hondenvoer (1 / 3 / 6 / 9 kg)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-metabolic-mini-chicken-weight-management-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'Metabolic Mini Hondenvoer', 'kibble', '1 / 3 / 6 / 9 kg', null, 'https://www.hillspet.nl/dog-food/prescription-diet-metabolic-mini-chicken-weight-management-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Granen, producten van plantaardige oorsprong, vlees en dierlijke bijproducten (kip 8%), plantaardige eiwitextracten, groenten, oliën en vetten, zaden, mineralen.', true, now(), 'sha256:921f023b2d2f61a8dd5be41c2f510997473b56de836eb78658bcc5a16efa773d', null from p;

-- Hill's Prescription Diet — Metabolic + Mobility Mini Hondenvoer (1 / 3 / 6 kg)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-metabolic-mobility-mini-weight-management-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'Metabolic + Mobility Mini Hondenvoer', 'kibble', '1 / 3 / 6 kg', null, 'https://www.hillspet.nl/dog-food/prescription-diet-metabolic-mobility-mini-weight-management-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Granen, producten van plantaardige oorsprong, vlees en dierlijke bijproducten (kip 6%), plantaardige eiwitextracten, zaden, groenten, oliën en vetten (visolie 2,3%), mineralen, schaal- en weekdieren.', true, now(), 'sha256:d3f790bccaccfd50c9fe98f12ee4969e80a051aa9418761d9fe94cfc07c7d1cc', null from p;

-- Hill's Prescription Diet — Metabolic + Mobility Natvoer voor Honden (370 g)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-metabolic-mobility-weight-management-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'Metabolic + Mobility Natvoer voor Honden', 'wet', '370 g', null, 'https://www.hillspet.nl/dog-food/prescription-diet-metabolic-mobility-weight-management-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten, producten van plantaardige oorsprong, granen, oliën en vetten, eieren en eibijproducten, groenten, mineralen, plantaardige eiwitextracten, schaal- en weekdieren.', true, now(), 'sha256:cf02744409bbac0218ef3c2ba40e867238367f416a1525ba8bf4ce0fcb6c2b78', null from p;

-- Hill's Prescription Diet — Metabolic + Mobility Hondenvoer (1,5 / 4 / 10 / 12 kg)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-metabolic-mobility-weight-management-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'Metabolic + Mobility Hondenvoer', 'kibble', '1,5 / 4 / 10 / 12 kg', null, 'https://www.hillspet.nl/dog-food/prescription-diet-metabolic-mobility-weight-management-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Granen, producten van plantaardige oorsprong, plantaardige eiwitextracten, vlees en dierlijke bijproducten (kip 6%), zaden, groenten, oliën en vetten (visolie 2,3%), mineralen, schaal- en weekdieren.', true, now(), 'sha256:e40e2c7a89565e338689c9f3747937d19e6eefa9f24b7e3bb17b48a58a2d7b05', null from p;

-- Hill's Prescription Diet — Metabolic Stoofpotje voor Honden (354 g)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-metabolic-vegetable-beef-stew-weight-management-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'Metabolic Stoofpotje voor Honden', 'wet', '354 g', null, 'https://www.hillspet.nl/dog-food/prescription-diet-metabolic-vegetable-beef-stew-weight-management-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (rund 3%), bijproducten van plantaardige oorsprong, groenten (3%), granen, plantaardige eiwitextracten, mineralen, zaden, oliën en vetten, diverse suikers, eieren en eibijproducten.', true, now(), 'sha256:c4c0427ce1255a1e94f43160911208519843343fdc49512c5bbdef22772594c0', null from p;

-- Hill's Prescription Diet — Metabolic Stoofpotje voor Honden met Kipsmaak & Groenten (156 / 354 g)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-metabolic-vegetable-chicken-stew-weight-management-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'Metabolic Stoofpotje voor Honden met Kipsmaak & Groenten', 'wet', '156 / 354 g', null, 'https://www.hillspet.nl/dog-food/prescription-diet-metabolic-vegetable-chicken-stew-weight-management-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kip 1%), producten van plantaardige oorsprong, groenten (3,1%), granen, plantaardige eiwitextracten, zaden, mineralen, oliën en vetten, verschillende suikers, eieren en eibijproducten.', true, now(), 'sha256:f617d17f232409bb8a44cd23ce253c17d60af593cd8952f108e65cec36252314', null from p;

-- Hill's Prescription Diet — Metabolic Natvoer voor Honden met Kipsmaak (200 / 370 g)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-metabolic-weight-management-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'Metabolic Natvoer voor Honden met Kipsmaak', 'wet', '200 / 370 g', null, 'https://www.hillspet.nl/dog-food/prescription-diet-metabolic-weight-management-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kip 3%), granen, bijproducten van plantaardige oorsprong, groenten, eieren en eibijproducten, zaden, oliën en vetten, mineralen.', true, now(), 'sha256:97d2e4c1b2e636ea78ce7a2c799f1de7972b3fdeed0506fc2b1efb17565a5208', null from p;

-- Hill's Prescription Diet — Metabolic Hondenvoer (1,5 / 4 / 10 / 12 kg)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-metabolic-weight-management-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'Metabolic Hondenvoer', 'kibble', '1,5 / 4 / 10 / 12 kg', null, 'https://www.hillspet.nl/dog-food/prescription-diet-metabolic-weight-management-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Granen, producten van plantaardige oorsprong, vlees en dierlijke bijproducten (kip 8%), plantaardige eiwitextracten, groenten, oliën en vetten, zaden, mineralen.', true, now(), 'sha256:921f023b2d2f61a8dd5be41c2f510997473b56de836eb78658bcc5a16efa773d', null from p;

-- Hill's Prescription Diet — On-Care Hondenvoer met Kip (1,5 / 4 / 10 kg)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-onc-on-care-chicken-restorative-care-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'On-Care Hondenvoer met Kip', 'kibble', '1,5 / 4 / 10 kg', null, 'https://www.hillspet.nl/dog-food/prescription-diet-onc-on-care-chicken-restorative-care-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Granen, vlees en dierlijke bijproducten (kip 15%), oliën en vetten, plantaardige eiwitextracten, producten van plantaardige oorsprong, mineralen, fruit, zaden. ActivBiome+ prebiotische mix (4%): Gemalen pecannotenschil, gedroogde bietenpulp, lijnzaad, gedroogde citruspulp, gedroogde veenbessen. Goed verteerbare ingrediënten: Kippen- en kalkoenenmeel, tarwe, dierlijk vet, maïs, maïsglutenmeel, eiwithydrolysaat, visolie, plantaardige olie.', true, now(), 'sha256:2424947c11aca0bc0ba1f44b64facdadb7c3a7076ff260502b57abc9d3249abc', null from p;

-- Hill's Prescription Diet — On-Care Stoofpotje voor Honden met Kip & toegevoegde Groenten (354 g)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-onc-on-care-chicken-stew-restorative-care-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'On-Care Stoofpotje voor Honden met Kip & toegevoegde Groenten', 'wet', '354 g', null, 'https://www.hillspet.nl/dog-food/prescription-diet-onc-on-care-chicken-stew-restorative-care-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kip 10%), producten van plantaardige oorsprong, granen, oliën en vetten, groenten (1,6%), plantaardige eiwitextracten, mineralen, fruit, eieren en eibijproducten, zaden. Goed verteerbare ingrediënten: Varkenslever, kip, rijstzetmeel, rijstebloem, eiwithydrolysaat, tarwegluten, plantaardige olie, rijst, visolie, kokosolie, eipoeder, dierlijk vet.', true, now(), 'sha256:592b5ebfc0a35eff4dc11229639cb4d2ff942f43385c07ab83c81a55b7d65194', null from p;

-- Hill's Prescription Diet — r/d Natvoer voor Honden (350 g)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-rd-weight-management-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'r/d Natvoer voor Honden', 'wet', '350 g', null, 'https://www.hillspet.nl/dog-food/prescription-diet-rd-weight-management-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten, granen, producten van plantaardige oorsprong, plantaardige eiwitextracten, eieren en eibijproducten, oliën en vetten, mineralen.', true, now(), 'sha256:e2dd9dcf87ebbf6c52308547f7b85414c5a6d31f4c35337ae2ac6722af41d8ae', null from p;

-- Hill's Prescription Diet — r/d Hondenvoer met Kip (4 / 10 kg)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-rd-weight-management-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'r/d Hondenvoer met Kip', 'kibble', '4 / 10 kg', null, 'https://www.hillspet.nl/dog-food/prescription-diet-rd-weight-management-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kip 12%), producten van plantaardige oorsprong, granen, plantaardige eiwitextracten, oliën en vetten, mineralen, zaden.', true, now(), 'sha256:8ab37f5f8a92b8e413e34a3da4e3d2a97052adfba0cdf73a9b4ac6110ffa4c96', null from p;

-- Hill's Prescription Diet — t/d Hondenvoer met Kip (4 / 10 kg)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-td-dental-care-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 't/d Hondenvoer met Kip', 'kibble', '4 / 10 kg', null, 'https://www.hillspet.nl/dog-food/prescription-diet-td-dental-care-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Granen, vlees en dierlijke bijproducten (kip 8%), producten van plantaardige oorsprong, oliën en vetten, eieren en eibijproducten, mineralen.', true, now(), 'sha256:d76381504c57ee95b12de011911e5d3c89fb64c8c501fdc555e2d3d032d85059', null from p;

-- Hill's Prescription Diet — t/d Mini Hondenvoer met Kip (3 kg)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-td-small-bites-dental-care-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 't/d Mini Hondenvoer met Kip', 'kibble', '3 kg', null, 'https://www.hillspet.nl/dog-food/prescription-diet-td-small-bites-dental-care-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Granen, vlees en dierlijke bijproducten (kip 8%), producten van plantaardige oorsprong, oliën en vetten, eieren en eibijproducten, mineralen.', true, now(), 'sha256:d76381504c57ee95b12de011911e5d3c89fb64c8c501fdc555e2d3d032d85059', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
