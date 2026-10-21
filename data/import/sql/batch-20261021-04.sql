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
