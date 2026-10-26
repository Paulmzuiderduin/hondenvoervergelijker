-- Automatisch overgenomen etiketten, batch 5 van 2026-10-26 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Hill's Prescription Diet — u/d Natvoer voor Honden (370 g)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-ud-urinary-care-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'u/d Natvoer voor Honden', 'wet', '370 g', null, 'https://www.hillspet.nl/dog-food/prescription-diet-ud-urinary-care-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Producten van plantaardige oorsprong, eieren en eibijproducten, oliën en vetten, vlees en dierlijke bijproducten, granen, diverse suikers, mineralen, zaden. Urinealkaliserende stoffen: Calciumcarbonaat (3,9 g/kg), Kaliumcitraat (2,0 g/kg), tetranatrium difosfaat (0,7 g/kg). Eiwitbronnen: Eipoeder, varkenslever.', true, now(), 'sha256:5799bef5c560f010c3fb3a3fdf079991e53b56f35eb47882bcefccb7b598a656', null from p;

-- Hill's Prescription Diet — u/d Hondenvoer Origineel (4 / 10 kg)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-ud-urinary-care-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'u/d Hondenvoer Origineel', 'kibble', '4 / 10 kg', null, 'https://www.hillspet.nl/dog-food/prescription-diet-ud-urinary-care-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Granen, producten van plantaardige oorsprong, oliën en vetten, eieren en eibijproducten, mineralen, vlees en dierlijke bijproducten, zaden. Urinealkaliserende stoffen: Kaliumcitraat (8,5g/kg), calciumcarbonaat (8,0g/kg), kaliumchloride (2,0g/kg). Eiwitbron: Eipoeder.', true, now(), 'sha256:7ed94cfe88ff8b7d28f540182e68608a51706f1db8d63b58a0e4ea462fe5dd69', null from p;

-- Hill's Prescription Diet — w/d Hondenvoer met Kip (4 / 10 kg)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-wd-chicken-glucose-management-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'w/d Hondenvoer met Kip', 'kibble', '4 / 10 kg', null, 'https://www.hillspet.nl/dog-food/prescription-diet-wd-chicken-glucose-management-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Granen, bijproducten van plantaardige oorsprong, vlees en dierlijke bijproducten (kip 9%), plantaardige eiwitextracten, oliën en vetten, mineralen. Koolhydraatbronnen: Tarwe, maïs, gerst, haver.', true, now(), 'sha256:e068c1880da2a81e40d9e42bf60f89008e159c984ec7f57a5eea09b7743bbd0a', null from p;

-- Hill's Prescription Diet — w/d Natvoer voor Honden met Kip (370 g)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-wd-glucose-management-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'w/d Natvoer voor Honden met Kip', 'wet', '370 g', null, 'https://www.hillspet.nl/dog-food/prescription-diet-wd-glucose-management-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kip 8%), granen, producten van plantaardige oorsprong, eieren en eibijproducten, mineralen, zaden. Koolhydraatbronnen: Maïs, gerstemeel, rijst.', true, now(), 'sha256:cfa646f67145b182df8c8712a7e22f9984c2a067e11bf839d49a6695e985eacd', null from p;

-- Hill's Science Plan — Multi-Benefit + Dental Adult 1+ Medium & Large Breed Hondenvoer (700 g / 2 / 10 / 13 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-1-dental-medium-and-large-chicken-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Multi-Benefit + Dental Adult 1+ Medium & Large Breed Hondenvoer', 'kibble', '700 g / 2 / 10 / 13 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-1-dental-medium-and-large-chicken-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Maïs, kippen- en kalkoenenmeel (kip 11%; totaal gevogelte 18%), breukrijst, tarwe, cellulose, eiwithydrolysaat, dierlijk vet, plantaardige olie, gedroogde bietenpulp, mineralen, lijnzaad.', true, now(), 'sha256:59832b6b35acb5777b2bed1b2588fa85464925b6848aa7752e9ded4a32de03d4', null from p;

-- Hill's Science Plan — Multi-Benefit + Dental Adult 1+ Small & Mini Hondenvoer (650 g / 2 / 7 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-1-dental-mini-chicken-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Multi-Benefit + Dental Adult 1+ Small & Mini Hondenvoer', 'kibble', '650 g / 2 / 7 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-1-dental-mini-chicken-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Maïs, kippen- en kalkoenenmeel (kip 11%; totaal gevogelte 18%), breukrijst, tarwe, cellulose, eiwithydrolysaat, dierlijk vet, plantaardige olie, gedroogde bietenpulp, mineralen, lijnzaad.', true, now(), 'sha256:59832b6b35acb5777b2bed1b2588fa85464925b6848aa7752e9ded4a32de03d4', null from p;

-- Hill's Science Plan — Multi-Benefit + Digestion Adult 1+ Large Breed Hondenvoer (14 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-1-digestion-lb-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Multi-Benefit + Digestion Adult 1+ Large Breed Hondenvoer', 'kibble', '14 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-1-digestion-lb-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Kip- en kalkoenmeel (kip 11%; totaal gevogelte 18%), maïs, tarwe, erwtenzemelenmeel, maïsglutenmeel, eiwithydrolysaat, gedroogde tomatenpuree, bruine rijst, dierlijk vet, gerst, haver, lijnzaad, kokosolie, gemalen pecannotenschil, gedroogde bietenpulp, mineralen, gedroogde citruspulp, gedroogde wortelen, gedroogde veenbessen. ActivBiome+ prebiotische mix (7.1%): Lijnzaad, gemalen pecannotenschil, gedroogde bietenpulp, gedroogde citruspulp, gedroogde veenbessen.', true, now(), 'sha256:2cd31309adc4e9ae520c4c4ca2227ae20db185cab32232d257efb307c7ce8afb', null from p;

-- Hill's Science Plan — Multi-Benefit + Digestion Adult 1+ Medium Hondenvoer (2 / 10 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-1-digestion-medium-adult-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Multi-Benefit + Digestion Adult 1+ Medium Hondenvoer', 'kibble', '2 / 10 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-1-digestion-medium-adult-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Kippen- en kalkoenenmeel (kip 11%; totaal gevogelte 18%), maïs, tarwe, erwtenzemelenmeel, maïseiwitmeel, eiwithydrolysaat, gedroogde tomatenpuree, bruine rijst, dierlijk vet, gerst, haver, lijnzaad, kokosolie, gemalen pecannotenschil, gedroogde bietenpulp, mineralen, gedroogde citruspulp, gedroogde wortelen, gedroogde veenbessen. ActivBiome+ Digestion prebiotische mix (7,1%): Lijnzaad, gemalen pecannotenschil, gedroogde bietenpulp, gedroogde citruspulp, gedroogde veenbessen.', true, now(), 'sha256:902148d5248305fd0803fdbe4d8ba126cf75010be76f18ea2a202861b6529248', null from p;

-- Hill's Science Plan — Multi-Benefit + Digestion Adult 1+ Small & Mini Hondenvoer (2 / 7 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-1-digestion-small-and-mini-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Multi-Benefit + Digestion Adult 1+ Small & Mini Hondenvoer', 'kibble', '2 / 7 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-1-digestion-small-and-mini-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Kippen- en kalkoenenmeel (kip 11%; totaal gevogelte 18%), maïs, tarwe, erwtenzemelenmeel, maïseiwitmeel, eiwithydrolysaat, gedroogde tomatenpuree, bruine rijst, dierlijk vet, gerst, haver, lijnzaad, kokosolie, gemalen pecannotenschil, gedroogde bietenpulp, mineralen, gedroogde citruspulp, gedroogde wortelen, gedroogde veenbessen. ActivBiome+ Digestion prebiotische mix (7,1%): Lijnzaad, gemalen pecannotenschil, gedroogde bietenpulp, gedroogde citruspulp, gedroogde veenbessen.', true, now(), 'sha256:902148d5248305fd0803fdbe4d8ba126cf75010be76f18ea2a202861b6529248', null from p;

-- Hill's Science Plan — Multi-Benefit + Weight Adult 1+ Natvoer voor Honden (363 g)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-1-weight-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Multi-Benefit + Weight Adult 1+ Natvoer voor Honden', 'wet', '363 g', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-1-weight-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kip 7%), granen, bijproducten van plantaardige oorsprong, groenten (1,3%), plantaardige eiwitextracten, zaden, oliën en vetten, mineralen.', true, now(), 'sha256:606487fa8291301657dc3d2063397925be0c913cbc57eaf999403c0e7d1583e9', null from p;

-- Hill's Science Plan — Multi-Benefit + Weight Adult 1+ Large Breed Hondenvoer (700 g / 14 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-1-weight-large-breed-chicken-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Multi-Benefit + Weight Adult 1+ Large Breed Hondenvoer', 'kibble', '700 g / 14 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-1-weight-large-breed-chicken-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Kip- en kalkoenmeel (kip 12%; totaal gevogelte 18%), tarwe, maïs, erwtenzemelenmeel, maïsglutenmeel, dierlijk vet, eiwithydrolysaat, gedroogde tomatenpuree, cellulose, lijnzaad, gedroogde bietenpulp, kokosolie, mineralen, gedroogde wortelen, varkenskraakbeen (bron van chondroïtinesulfaat), gehydrolyseerde schaaldieren-schelp (bron van glucosamine).', true, now(), 'sha256:a8f17129e35debcdda4c871abc4537238ce542a53c6a9567c6dd3f9ddcb11e89', null from p;

-- Hill's Science Plan — Multi-Benefit + Weight Adult 1+ Medium Hondenvoer (700 g / 10 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-1-weight-medium-chicken-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Multi-Benefit + Weight Adult 1+ Medium Hondenvoer', 'kibble', '700 g / 10 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-1-weight-medium-chicken-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Kip- en kalkoenmeel (kip 12%; totaal gevogelte 18%), tarwe, maïs, erwtenzemelenmeel, maïsglutenmeel, dierlijk vet, eiwithydrolysaat, gedroogde tomatenpuree, cellulose, lijnzaad, gedroogde bietenpulp, kokosolie, mineralen, gedroogde wortelen, varkenskraakbeen (bron van chondroïtinesulfaat), gehydrolyseerde schaaldieren-schelp (bron van glucosamine).', true, now(), 'sha256:a8f17129e35debcdda4c871abc4537238ce542a53c6a9567c6dd3f9ddcb11e89', null from p;

-- Hill's Science Plan — Multi-Benefit + Weight Adult 1+ Small & Mini Hondenvoer (700 g / 2 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-1-weight-mini-chicken-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Multi-Benefit + Weight Adult 1+ Small & Mini Hondenvoer', 'kibble', '700 g / 2 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-1-weight-mini-chicken-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Kip- en kalkoenmeel (kip 12%; totaal gevogelte 18%), tarwe, maïs, erwtenzemelenmeel, maïsglutenmeel, dierlijk vet, eiwithydrolysaat, gedroogde tomatenpuree, cellulose, lijnzaad, gedroogde bietenpulp, kokosolie, mineralen, gedroogde wortelen.', true, now(), 'sha256:62b077ac2ba2ce7c4cef9ea49096cc2fa46a429073ab20b4306ba9893c15a0d5', null from p;

-- Hill's Science Plan — Senior Vitality Large Breed Mature Adult 6+ Hondenvoer met Kip & Rijst (14 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-5-senior-vitality-large-breed-chicken-and-rice-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Senior Vitality Large Breed Mature Adult 6+ Hondenvoer met Kip & Rijst', 'kibble', '14 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-5-senior-vitality-large-breed-chicken-and-rice-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Maïs, breukrijst (24%), kippen- en kalkoenenmeel (kip 8%; totaal gevogelte 13%), gerst, haver, eipoeder, eiwithydrolysaat, plantaardige olie, dierlijk vet, gedroogde bietenpulp, lijnzaad, mineralen, gedroogde wortelen, gedroogde tomatenpuree, gedroogde citruspulp, visolie, spinaziepoeder, varkenskraakbeen, hydrolysaat van schaaldieren.', true, now(), 'sha256:c5aec10abf83171abe4145400c8251bd7e78d9356f4d1bd4d38c9d204e707a98', null from p;

-- Hill's Science Plan — Youthful Vitality Medium Mature Adult 7+ Hondenvoer met Kip & Rijst (14 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-7-senior-vitality-medium-breed-chicken-and-rice-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Youthful Vitality Medium Mature Adult 7+ Hondenvoer met Kip & Rijst', 'kibble', '14 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-7-senior-vitality-medium-breed-chicken-and-rice-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Maïs, breukrijst (24%), kippen- en kalkoenenmeel (kip 8%; totaal gevogelte 13%), gerst, haver, eipoeder, eiwithydrolysaat, plantaardige olie, dierlijk vet, gedroogde bietenpulp, lijnzaad, mineralen, gedroogde wortelen, gedroogde tomatenpuree, gedroogde citruspulp, visolie, spinaziepoeder.', true, now(), 'sha256:3789d59f7bb7ea4eb6ee502928131d6bf898c18b8c1cf1e3bddb1bc5f5ab1f36', null from p;

-- Hill's Science Plan — Adult Natvoer Hond met Rund (370 g)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-beef-barley-entree-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Adult Natvoer Hond met Rund', 'wet', '370 g', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-beef-barley-entree-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (rund 9%), granen, mineralen, oliën en vetten, producten van plantaardige oorsprong.', true, now(), 'sha256:038a517f9ad5a2e641acd7ec04b3837fb97835210bc04d9ef4ec5336bf31b24d', null from p;

-- Hill's Science Plan — Adult Natvoer Hond met Kip (370 g)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-chicken-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Adult Natvoer Hond met Kip', 'wet', '370 g', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-chicken-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kip 9%), granen, mineralen, oliën en vetten, producten van plantaardige oorsprong.', true, now(), 'sha256:66f9a0d9ed5123ade0b5c6baa520df445c7d9df8c98ab00d5c177e87d472782e', null from p;

-- Hill's Science Plan — Multi-Benefit Adult hondenvoer met Kip en Groenten (363 g)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-chicken-vegetables-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Multi-Benefit Adult hondenvoer met Kip en Groenten', 'wet', '363 g', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-chicken-vegetables-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kip 9%), granen, bijproducten van plantaardige oorsprong, groenten (4%), oliën en vetten, plantaardige eiwitextracten, mineralen, zaden.', true, now(), 'sha256:2d07e78bdfa664bfa078dc128dcb2e9f7b003fa544e1cb0e0d522e0464ec356f', null from p;

-- Hill's Science Plan — Adult Stoofpotje Hond met Kip & toegevoegde Groenten (363 g)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-chunks-gravy-chicken-vegetable-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Adult Stoofpotje Hond met Kip & toegevoegde Groenten', 'wet', '363 g', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-chunks-gravy-chicken-vegetable-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kip 8%), producten van plantaardige oorsprong, granen, groenten (1,7%), oliën en vetten, eieren en eibijproducten, diverse suikers, mineralen.', true, now(), 'sha256:901382801393b65ba31d2ecf013494e2e5571d9c8bf0ea0c61dab71c7c258fb4', null from p;

-- Hill's Science Plan — Healthy Mobility Large Breed Adult Hondenvoer met Kip (12 / 14 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-healthy-mobility-large-breed-chicken-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Healthy Mobility Large Breed Adult Hondenvoer met Kip', 'kibble', '12 / 14 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-healthy-mobility-large-breed-chicken-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Tarwe, maïs, kippen- en kalkoenenmeel (kip 7%; totaal gevogelte 11%), eiwithydrolysaat, dierlijk vet, maïseiwitmeel, lijnzaad, visolie (1,8%), plantaardige olie, mineralen, erwtenzemelenmeel.', true, now(), 'sha256:dfc4a9e4374388c6d229966718af0866e0c91aa28956e83b67e3ee19a780088a', null from p;

-- Hill's Science Plan — Healthy Mobility Medium Adult Hondenvoer met Kip (12 / 14 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-healthy-mobility-medium-chicken-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Healthy Mobility Medium Adult Hondenvoer met Kip', 'kibble', '12 / 14 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-healthy-mobility-medium-chicken-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Tarwe, maïs, kippen- en kalkoenenmeel (kip 7%; totaal gevogelte 11%), eiwithydrolysaat, dierlijk vet, maïseiwitmeel, lijnzaad, visolie (1,8%), plantaardige olie, mineralen, erwtenzemelenmeel.', true, now(), 'sha256:dfc4a9e4374388c6d229966718af0866e0c91aa28956e83b67e3ee19a780088a', null from p;

-- Hill's Science Plan — Healthy Mobility Small & Mini Adult Hondenvoer met Kip (1,5 / 6 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-healthy-mobility-mini-chicken-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Healthy Mobility Small & Mini Adult Hondenvoer met Kip', 'kibble', '1,5 / 6 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-healthy-mobility-mini-chicken-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Tarwe, maïs, breukrijst, kippen- en kalkoenenmeel (kip 7%; totaal gevogelte 11%), gerst, haver, eiwithydrolysaat, dierlijk vet, maïseiwitmeel, lijnzaad, visolie (1,8%), plantaardige olie, mineralen, erwtenzemelenmeel, haverzemelen, fructo-oligosacchariden.', true, now(), 'sha256:cfd1dc11f08fa1738617fa8d3235d2fcf3523338839e9dfe02b4d63d1adf461c', null from p;

-- Hill's Science Plan — Medium Adult Hondenvoer met Lam & Rijst (2,5 / 12 / 14 / 18 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-lamb-rice-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Medium Adult Hondenvoer met Lam & Rijst', 'kibble', '2,5 / 12 / 14 / 18 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-lamb-rice-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Breukrijst (20%), tarwe, maïs, sojameel, lamsmeel (9%), dierlijk vet, maïseiwitmeel, plantaardige olie, eiwithydrolysaat, lijnzaad, mineralen. ActivBiome+ Multi Benefit mix van prebiotica (0.6%): Haverzemelen, fructo-oligosacchariden.', true, now(), 'sha256:7b5c1e4347bc11073f2bf6220897eb5eff2fa0a448bd7685bc5e1f4dc22442df', null from p;

-- Hill's Science Plan — Large Breed Adult Hondenvoer met Kip (2,5 / 6 / 12 / 14 / 18 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-large-breed-chicken-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Large Breed Adult Hondenvoer met Kip', 'kibble', '2,5 / 6 / 12 / 14 / 18 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-large-breed-chicken-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Maïs, tarwe, kippen- en kalkoenenmeel (kip 10%; totaal gevogelte 15%), dierlijk vet, breukrijst, eiwithydrolysaat, maïseiwitmeel, sojameel, plantaardige olie, gedroogde bietenpulp, mineralen, lijnzaad, haverzemelen, fructo-oligosacchariden, varkenskraakbeen (bron van chondroïtinesulfaat), gehydrolyseerde schelp van schaaldieren (bron van glucosamine). ActivBiome+ Multi Benefit mix van prebiotica (0,6%): Haverzemelen, fructo-oligosacchariden.', true, now(), 'sha256:4ef80addc4a6008795f49620e47354fc164d2a260144776cad54d842fd886b8a', null from p;

-- Hill's Science Plan — Multi-Benefit Adult Large Breed Hondenvoer (14 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-large-breed-lamb-rice-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Multi-Benefit Adult Large Breed Hondenvoer', 'kibble', '14 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-large-breed-lamb-rice-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Maïs, tarwe, lamsmeel (9%), breukrijst (8%), maïsglutenmeel, sojameel, dierlijk vet, eiwithydrolysaat, plantaardige olie, lijnzaad, mineralen, varkenskraakbeen (bron van chondroïtinesulfaat), gehydrolyseerde schaaldieren-schelp (bron van glucosamine).', true, now(), 'sha256:2f008678ad1deffdd072a61c36ae2c86f683f79021581fb17f003769e352df9b', null from p;

-- Hill's Science Plan — Light Adult Natvoer Hond met Kip (370 g)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-light-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Light Adult Natvoer Hond met Kip', 'wet', '370 g', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-light-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten, granen, producten van plantaardige oorsprong, plantaardige eiwitextracten, diverse suikers, mineralen, oliën en vetten.', true, now(), 'sha256:43a926681424ae9e5a2881f2e61dc044070c5115c679c979fef567c63feae0f3', null from p;

-- Hill's Science Plan — Light Medium Adult Hondenvoer met Kip (2,5 / 12 / 14 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-light-chicken-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Light Medium Adult Hondenvoer met Kip', 'kibble', '2,5 / 12 / 14 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-light-chicken-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Kippen- en kalkoenenmeel (kip 12%; totaal gevogelte 19%), maïs, erwtenzemelenmeel, tarwe, maïseiwitmeel, eiwithydrolysaat, cellulose, gedroogde bietenpulp, dierlijk vet, plantaardige olie, mineralen, lijnzaad, haverzemelen, fructo-oligosacchariden. ActivBiome+ Multi Benefit mix van prebiotica (0,6%): Haverzemelen, fructo-oligosacchariden.', true, now(), 'sha256:252163ed7e2a3a2cac253da7dda11e4177e5f03c278e679f801dc113874cfaeb', null from p;

-- Hill's Science Plan — Light Large Breed Adult Hondenvoer met Kip (12 / 14 / 18 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-light-large-breed-chicken-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Light Large Breed Adult Hondenvoer met Kip', 'kibble', '12 / 14 / 18 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-light-large-breed-chicken-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Erwtenzemelenmeel, kippen- en kalkoenenmeel (kip 9%; totaal gevogelte 14%), maïs, tarwe, breukrijst, maïseiwitmeel, eiwithydrolysaat, cellulose, gedroogde bietenpulp, plantaardige olie, dierlijk vet, mineralen, lijnzaad, haverzemelen, fructo-oligosacchariden, varkenskraakbeen (bron van chondroïtinesulfaat), gehydrolyseerde schelp van schaaldieren (bron van glucosamine). ActivBiome+ Multi Benefit mix van prebiotica (0,6%): Haverzemelen, fructo-oligosacchariden.', true, now(), 'sha256:77ab7c48cf7c7195cd2a7ef31b84a70fb5024e6844491d0e2b085ce1ba330dc9', null from p;

-- Hill's Science Plan — Light Small & Mini Adult Hondenvoer met Kip (1,5 / 6 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-light-small-miniature-chicken-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Light Small & Mini Adult Hondenvoer met Kip', 'kibble', '1,5 / 6 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-light-small-miniature-chicken-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Kippen- en kalkoenenmeel (kip 11%; totaal gevogelte 17%), tarwe, erwtenzemelenmeel, maïs, maïseiwitmeel, eiwithydrolysaat, gebroken rijst, cellulose, dierlijk vet, gedroogde bietenpulp, sojaolie, mineralen, lijnzaad, vitaminen, haverzemelen, L-carnitine, fructo-oligosachariden, gedroogde tomatenpulp, gedroogde citruspulp, spinaziepoeder, sporenelementen en bètacaroteen. Met een natuurlijke antioxidant.', true, now(), 'sha256:e55689e97c72f35cf0175c4ff68b1db2ce4e8655fb6b5275194138132d8d54e6', null from p;

-- Hill's Science Plan — Multi-Benefit Adult Medium Hondenvoer (2 / 10 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-medium-lamb-rice-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Multi-Benefit Adult Medium Hondenvoer', 'kibble', '2 / 10 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-medium-lamb-rice-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Tarwe, maïs, lamsmeel (9%), sojameel, breukrijst (8%), maïseiwitmeel, dierlijk vet, eiwithydrolysaat, plantaardige olie, lijnzaad, mineralen.', true, now(), 'sha256:741726e461d65317e492f2774008c551540b8127cf7080243d4013db8411232d', null from p;

-- Hill's Science Plan — Oral Care Adult Hondenvoer met Kip (2 / 12 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-oral-care-chicken-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Oral Care Adult Hondenvoer met Kip', 'kibble', '2 / 12 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-oral-care-chicken-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Maïs, kippen- en kalkoenenmeel (kip 14%; totaal gevogelte 22%), breukrijst, cellulose, dierlijk vet, erwtenzemelenmeel, eiwithydrolysaat, plantaardige olie, eipoeder, mineralen, lijnzaad.', true, now(), 'sha256:5108af8a8f4403bbb525eb0eb52273673f4cb379e79372f5e2ef3b6dfa508f47', null from p;

-- Hill's Science Plan — Perfect Digestion Adult Natvoer Hond met Kip & Groenten (363 g)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-perfect-digestion-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Perfect Digestion Adult Natvoer Hond met Kip & Groenten', 'wet', '363 g', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-perfect-digestion-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kip 10%), granen, producten van plantaardige oorsprong, groenten (3%), eieren en eibijproducten, mineralen, fruit, zaden, oliën en vetten. ActivBiome+ Digestion prebiotische mix (1.3%): Gemalen pecannotenschil, lijnzaad, gedroogde bietenpulp, gedroogde citruspulp, gedroogde veenbessen.', true, now(), 'sha256:fe21c8b689562709c9cff16d33f280a39ef18e16657bd00c9425277b0216b20b', null from p;

-- Hill's Science Plan — Perfect Digestion Large Breed Adult Hondenvoer met Kip & bruine Rijst (12 / 14 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-perfect-digestion-large-breed-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Perfect Digestion Large Breed Adult Hondenvoer met Kip & bruine Rijst', 'kibble', '12 / 14 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-perfect-digestion-large-breed-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Tarwe, maïs, kippen- en kalkoenenmeel (kip 6%; totaal gevogelte 10%), dierlijk vet, eiwithydrolysaat, breukrijst, maïseiwitmeel, bruine rijst (4%), gerst (3,2%), haver (3,2%), gemalen pecannotenschil, mineralen, gedroogde bietenpulp, lijnzaad, gedroogde citruspulp, gedroogde veenbessen. ActivBiome+ Digestion prebiotische mix (4%): Gemalen pecannotenschil, gedroogde bietenpulp, lijnzaad, gedroogde citruspulp, gedroogde veenbessen.', true, now(), 'sha256:80223999586b7efbc4b6ae81bf7cbf11891ca528aeab448a646832f9acc82523', null from p;

-- Hill's Science Plan — Perfect Digestion Medium Adult Hondenvoer met Kip & bruine Rijst (2,5 / 12 / 14 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-perfect-digestion-medium-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Perfect Digestion Medium Adult Hondenvoer met Kip & bruine Rijst', 'kibble', '2,5 / 12 / 14 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-perfect-digestion-medium-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Tarwe, maïs, kippen- en kalkoenenmeel (kip 6%; totaal gevogelte 10%), dierlijk vet, eiwithydrolysaat, breukrijst, maïseiwitmeel, bruine rijst (4%), gerst (3,2%), haver (3,2%), gemalen pecannotenschil, mineralen, gedroogde bietenpulp, lijnzaad, gedroogde citruspulp, gedroogde veenbessen. ActivBiome+ Digestion prebiotische mix (4%): Gemalen pecannotenschil, gedroogde bietenpulp, lijnzaad, gedroogde citruspulp, gedroogde veenbessen.', true, now(), 'sha256:80223999586b7efbc4b6ae81bf7cbf11891ca528aeab448a646832f9acc82523', null from p;

-- Hill's Science Plan — Perfect Digestion Small & Mini Adult Natvoer Hond met Kalkoen (200 g)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-perfect-digestion-small-mini-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Perfect Digestion Small & Mini Adult Natvoer Hond met Kalkoen', 'wet', '200 g', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-perfect-digestion-small-mini-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kalkoen 7%), producten van plantaardige oorsprong, granen, groenten, eieren en eibijproducten, mineralen, fruit, zaden, oliën en vetten. ActivBiome+ Digestion prebiotische mix (1.3%): Gemalen pecannotenschil, lijnzaad, gedroogde bietenpulp, gedroogde citruspulp, gedroogde veenbessen.', true, now(), 'sha256:9d793d03d0f6518bb7cd8a0e3ed0d709bb08fed82ebbe2ab95dc813582be68b3', null from p;

-- Hill's Science Plan — Perfect Digestion Small & Mini Adult Hondenvoer met Kip (1,5 / 3 / 6 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-perfect-digestion-small-mini-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Perfect Digestion Small & Mini Adult Hondenvoer met Kip', 'kibble', '1,5 / 3 / 6 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-perfect-digestion-small-mini-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Tarwe, maïs, kippen- en kalkoenenmeel (kip 6%; totaal gevogelte 10%), dierlijk vet, eiwithydrolysaat, breukrijst, maïseiwitmeel, bruine rijst (4%), gerst (3,2%), haver (3,2%), gemalen pecannotenschil, mineralen, gedroogde bietenpulp, lijnzaad, gedroogde citruspulp, gedroogde veenbessen. ActivBiome+ Digestion prebiotische mix (4%): Gemalen pecannotenschil, gedroogde bietenpulp, lijnzaad, gedroogde citruspulp, gedroogde veenbessen.', true, now(), 'sha256:80223999586b7efbc4b6ae81bf7cbf11891ca528aeab448a646832f9acc82523', null from p;

-- Hill's Science Plan — Perfect Weight & Active Mobility Large Breed Adult Hondenvoer met Kip (12 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-perfect-weight-actimobility-lb-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Perfect Weight & Active Mobility Large Breed Adult Hondenvoer met Kip', 'kibble', '12 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-perfect-weight-actimobility-lb-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Kippen- en kalkoenenmeel (kip 9%; totaal gevogelte 15%), tarwe, erwtenzemelenmeel, maïs, maïseiwitmeel, eiwithydrolysaat, gedroogde tomatenpuree, cellulose, gedroogde bietenpulp, lijnzaad, kokosolie, plantaardige olie, visolie (1,9%), mineralen, dierlijk vet, gedroogde wortelen, varkenskraakbeen (bron van chondroïtinesulfaat), hydrolysaat van schaaldieren (bron van glucosamine).', true, now(), 'sha256:b1f9753a2863adeeb6df071c114f22fc3159be9361aa19416fd408e8332e9074', null from p;

-- Hill's Science Plan — Perfect Weight & Active Mobility Medium Adult Hondenvoer met Kip (2,5 / 12 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-perfect-weight-actimobility-medium-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Perfect Weight & Active Mobility Medium Adult Hondenvoer met Kip', 'kibble', '2,5 / 12 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-perfect-weight-actimobility-medium-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Kippen- en kalkoenenmeel (kip 9%; totaal gevogelte 15%), tarwe, erwtenzemelenmeel, maïs, maïseiwitmeel, eiwithydrolysaat, gedroogde tomatenpuree, cellulose, gedroogde bietenpulp, lijnzaad, kokosolie, plantaardige olie, visolie (1,9%), mineralen, dierlijk vet, gedroogde wortelen, varkenskraakbeen (bron van chondroïtinesulfaat), hydrolysaat van schaaldieren (bron van glucosamine).', true, now(), 'sha256:b1f9753a2863adeeb6df071c114f22fc3159be9361aa19416fd408e8332e9074', null from p;

-- Hill's Science Plan — Perfect Weight & Active Mobility Small & Mini Adult Hondenvoer met Kip (1,5 / 6 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-perfect-weight-actimobility-s-m-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Perfect Weight & Active Mobility Small & Mini Adult Hondenvoer met Kip', 'kibble', '1,5 / 6 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-perfect-weight-actimobility-s-m-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Kip- en kalkoenmeel (kip 8%; totaal gevogelte 13%), tarwe, maïsglutenmeel, erwtenzemelenmeel, maïs, eiwithydrolysaat, gedroogde tomatenpuree, cellulose, gedroogde bietenpulp, lijnzaad, kokosolie, plantaardige olie, visolie (1,9%), mineralen, dierlijk vet, gedroogde wortelen, varkenskraakbeen (bron van chondroïtinesulfaat), hydrolysaat van schaal van schaaldieren (bron van glucosamine).', true, now(), 'sha256:08b1de9414dfa52dd35906912a64d93c0ab9f1128f9d580a77191ba5481c49c8', null from p;

-- Hill's Science Plan — Perfect Weight Adult Natvoer Hond met Kip & Groenten (363 g)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-perfect-weight-chicken-vegetable-entree-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Perfect Weight Adult Natvoer Hond met Kip & Groenten', 'wet', '363 g', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-perfect-weight-chicken-vegetable-entree-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kip 4%), producten van plantaardige oorsprong, groenten (7%), plantaardige eiwitextracten, eieren en eibijproducten, zaden, oliën en vetten, mineralen, fruit.', true, now(), 'sha256:f3db2196c5bd0df696a3ad7f58acef547d0e6ae7d6d10e771b98ae6f212d3bf2', null from p;

-- Hill's Science Plan — Perfect Weight Large Breed Adult Hondenvoer met Kip (12 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-perfect-weight-large-breed-chicken-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Perfect Weight Large Breed Adult Hondenvoer met Kip', 'kibble', '12 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-perfect-weight-large-breed-chicken-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Kippen- en kalkoenenmeel (kip 10%; totaal gevogelte 15%), maïs, maïseiwitmeel, erwtenzemelenmeel, tarwe, gebroken rijst, cellulose, eiwithydrolysaat, gedroogde tomatenpuree, lijnzaad, dierlijk vet, gedroogde bietenpulp, kokosolie (2,2%), mineralen, gedroogde wortelen.', true, now(), 'sha256:bb02269519965648187ed3119bb77736882601ccae35b0d0f1f76a4cf0896593', null from p;

-- Hill's Science Plan — Perfect Weight Medium Adult Hondenvoer met Kip (2 / 12 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-perfect-weight-medium-chicken-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Perfect Weight Medium Adult Hondenvoer met Kip', 'kibble', '2 / 12 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-perfect-weight-medium-chicken-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Kippen- en kalkoenenmeel (kip 10%; totaal gevogelte 15%), maïs, maïseiwitmeel, erwtenzemelenmeel, tarwe, gebroken rijst, cellulose, eiwithydrolysaat, gedroogde tomatenpuree, lijnzaad, dierlijk vet, gedroogde bietenpulp, kokosolie (2,2%), mineralen, gedroogde wortelen.', true, now(), 'sha256:bb02269519965648187ed3119bb77736882601ccae35b0d0f1f76a4cf0896593', null from p;

-- Hill's Science Plan — Perfect Weight Small & Mini Adult Hondenvoer met Kip (1,5 / 6 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-perfect-weight-mini-chicken-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Perfect Weight Small & Mini Adult Hondenvoer met Kip', 'kibble', '1,5 / 6 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-perfect-weight-mini-chicken-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Tarwe, maïseiwitmeel, kippen- en kalkoenenmeel (kip 9%; totaal gevogelte 14%), erwtenzemelenmeel, maïs, eiwithydrolysaat, gedroogde tomatenpuree, cellulose, lijnzaad, dierlijk vet, gedroogde bietenpulp, kokosolie, mineralen, gedroogde wortelen.', true, now(), 'sha256:512fd12346e8699b00cc5c176ae80b8e1ef3e01a7d8e8e00fd630cf75b38a57d', null from p;

-- Hill's Science Plan — Perfect Weight Small & Mini Adult Natvoer Hond met Kalkoen (200 g)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-perfect-weight-mini-turkey-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Perfect Weight Small & Mini Adult Natvoer Hond met Kalkoen', 'wet', '200 g', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-perfect-weight-mini-turkey-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kalkoen 4%), producten van plantaardige oorsprong, groenten, zaden, plantaardige eiwitextracten, eieren en eibijproducten, oliën en vetten, mineralen, fruit.', true, now(), 'sha256:0210bf70b34c86ba1a0d2f5a659ac9249055b4f97eec7c314716f9823493cdae', null from p;

-- Hill's Science Plan — Performance Adult Hondenvoer met Kip (14 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-performance-chicken-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Performance Adult Hondenvoer met Kip', 'kibble', '14 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-performance-chicken-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Maïs, kippen- en kalkoenenmeel (kip 21%; totaal gevogelte 33%), dierlijk vet, gedroogde bietenpulp, plantaardige olie, eiwithydrolysaat, mineralen, gedroogde eieren, lijnzaad.', true, now(), 'sha256:45c7e7ce6f6eb85c4d0fc4a20d132b8526e965964f930cc2a0ab3b8eecf3f73a', null from p;

-- Hill's Science Plan — Sensitive Stomach & Skin Adult Hond Natvoer met Kip (370 g)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-sensitive-stomach-skin-chicken-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Sensitive Stomach & Skin Adult Hond Natvoer met Kip', 'wet', '370 g', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-sensitive-stomach-skin-chicken-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke derivaten (kip 12%), granen, derivaten van plantaardige oorsprong, plantaardige eiwitextracten, eieren en eierderivaten, groenten, zaden, mineralen, oliën en vetten.', true, now(), 'sha256:73dbe0c16839d70216a35e52daf0cd4865543843d71784f139dc3f62b3db5ee3', null from p;

-- Hill's Science Plan — Sensitive Stomach & Skin Small & Mini Adult Mousse Hond met Kalkoen (200 g)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-sensitive-stomach-skin-small-mini-mousse-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Sensitive Stomach & Skin Small & Mini Adult Mousse Hond met Kalkoen', 'wet', '200 g', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-sensitive-stomach-skin-small-mini-mousse-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke derivaten (kalkoen 11%), granen, derivaten van plantaardige oorsprong, plantaardige eiwitextracten, eieren en eierderivaten, zaden, mineralen, oliën en vetten.', true, now(), 'sha256:3b1a197d78050c474336543cfd442b82c6c9b59a44e609033705dac6f49b7e30', null from p;

-- Hill's Science Plan — Sensitive Stomach & Skin Small & Mini Adult Hondenvoer met Kip (1,5 / 3 / 6 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-sensitive-stomach-skin-small-miniature-chicken-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Sensitive Stomach & Skin Small & Mini Adult Hondenvoer met Kip', 'kibble', '1,5 / 3 / 6 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-sensitive-stomach-skin-small-miniature-chicken-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Kippen- en kalkoenenmeel (kip 9%; totaal gevogelte 15%), breukrijst, maïs, bruine rijst, maïseiwitmeel, gerst, haver, dierlijk vet, eiwithydrolysaat, plantaardige olie, gedroogde bietenpulp (2,5%), lijnzaad, mineralen, eipoeder.', true, now(), 'sha256:50dae670c33bd72d4a71d931d10c3cd26ba3add327dc1a6ca3b17e48909a7d72', null from p;

-- Hill's Science Plan — Small & Mini Adult Natvoer Hond met Kip (200 g)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-small-mini-chicken-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Small & Mini Adult Natvoer Hond met Kip', 'wet', '200 g', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-small-mini-chicken-canned', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (kip 8%), granen, mineralen, oliën en vetten, producten van plantaardige oorsprong.', true, now(), 'sha256:2f993d58b3c88846fcc9df054e28ebe1395fdb8766fb73eb6e784833f2b1b11e', null from p;

-- Hill's Science Plan — Multi-Benefit Adult Small & Mini Hondenvoer (2 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-small-mini-lamb-rice-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Multi-Benefit Adult Small & Mini Hondenvoer', 'kibble', '2 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-small-mini-lamb-rice-dry', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Tarwe, maïs, lamsmeel (9%), sojameel, breukrijst (8%), maïseiwitmeel, dierlijk vet, eiwithydrolysaat, plantaardige olie, lijnzaad, mineralen.', true, now(), 'sha256:741726e461d65317e492f2774008c551540b8127cf7080243d4013db8411232d', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
