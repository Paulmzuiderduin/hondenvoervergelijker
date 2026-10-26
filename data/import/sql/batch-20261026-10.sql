-- Automatisch overgenomen etiketten, batch 10 van 2026-10-26 (48 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Royal Canin — Coat Care in Loaf (paté) (85 g / 12 x 85 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/coat-care-1184
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Coat Care in Loaf (paté)', 'wet', '85 g / 12 x 85 g', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/coat-care-1184', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, granen, plantaardige bijproducten, oliën en vetten, mineralen.', true, now(), 'sha256:caa7e25987b1339f6a95e99597ca8152fc9e9786bd6ebccfc012d2996ca651b5', null from p;

-- Royal Canin — Dermacomfort in Loaf (paté) (85 g / 12 x 85 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/dermacomfort-1181
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Dermacomfort in Loaf (paté)', 'wet', '85 g / 12 x 85 g', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/dermacomfort-1181', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, plantaardige bijproducten, granen, oliën en vetten, mineralen.', true, now(), 'sha256:295096f1936071cebdcae379645a88e88f7aa13f7a2e89b04dd5b1d49b1a1190', null from p;

-- Royal Canin — Diabetic (195 / 410 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/diabetic-special-low-carbohydrate-4015
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Diabetic', 'wet', '195 / 410 g', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/diabetic-special-low-carbohydrate-4015', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, plantaardige bijproducten, granen, oliën en vetten, mineralen. Koolhydraatbronnen: mais (2,42%), rijst (0,46%).', true, now(), 'sha256:56ad778a74ad4ab936fb30674f74f4f0b25b5de7c5443ac9378d2e2fbdde9828', null from p;

-- Royal Canin — Digestive Care in Loaf (paté) (85 g / 12 x 85 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/digestive-care-1180
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Digestive Care in Loaf (paté)', 'wet', '85 g / 12 x 85 g', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/digestive-care-1180', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, granen, plantaardige bijproducten, mineralen.', true, now(), 'sha256:db680fe2b9a860749bf02defe38f44e2a2f72fe82173fce06a76c3d7a18e8b7f', null from p;

-- Royal Canin — Early Renal (12 x 100 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/early-renal-1252
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Early Renal', 'wet', '12 x 100 g', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/early-renal-1252', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, granen, plantaardige bijproducten, oliën en vetten, mineralen, suikers. Eiwitbronnen: bijproducten van gevogelte (25,9%), bijproducten van varken (3%).', true, now(), 'sha256:c8e31cfddd2fdcc67dda4c986e61a8f2acc102d108788863947b7309a3009690', null from p;

-- Royal Canin — Exigent in Loaf (paté) (85 g / 12 x 85 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/exigent-1185
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Exigent in Loaf (paté)', 'wet', '85 g / 12 x 85 g', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/exigent-1185', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, granen, plantaardige bijproducten, mineralen.', true, now(), 'sha256:db680fe2b9a860749bf02defe38f44e2a2f72fe82173fce06a76c3d7a18e8b7f', null from p;

-- Royal Canin — French Bulldog Adult in Loaf (paté) (85 g / 12 x 85 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/french-bulldog-8103
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'French Bulldog Adult in Loaf (paté)', 'wet', '85 g / 12 x 85 g', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/french-bulldog-8103', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, plantaardige bijproducten, granen, mineralen, oliën en vetten.', true, now(), 'sha256:66382461279c8c021c299cc8f8ccd25b3f08f9528c08d2e10d16c8e9ef467201', null from p;

-- Royal Canin — Gastrointestinal (200 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/gastrointestinal-4038
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Gastrointestinal', 'wet', '200 g', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/gastrointestinal-4038', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten*, granen*, vis en visbijproducten*, plantaardige bijproducten, oliën en vetten**, mineralen, gist. Goed verteerbare ingrediënten: *bronnen van goed verteerbare eiwitten: 52%, **bronnen van goed verteerbare vetten: 1,5%.', true, now(), 'sha256:73735b49a4c5abd33beac39724841576ee475a983db0cbeb01bd75fe8c116b1a', null from p;

-- Royal Canin — Gastrointestinal High Fibre (200 / 410 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/gastrointestinal-high-fibre-1480
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Gastrointestinal High Fibre', 'wet', '200 / 410 g', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/gastrointestinal-high-fibre-1480', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten*, granen*, vis en visbijproducten*, plantaardige bijproducten, mineralen, oliën en vetten**, gist. Goed verteerbare ingrediënten: *bronnen van goed verteerbare eiwitten: 50%, **bronnen van goed verteerbare vetten: 0,1%.', true, now(), 'sha256:1a07f03c02b344ac906c110d754c7df1afcc9c4aa853f1d82e047f8575ce04a7', null from p;

-- Royal Canin — Gastrointestinal Hydrolysed Protein (400 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/gastrointestinal-hydrolysed-protein-loaf-8113
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Gastrointestinal Hydrolysed Protein', 'wet', '400 g', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/gastrointestinal-hydrolysed-protein-loaf-8113', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'plantaardige bijproducten**, plantaardige eiwitextracten*, oliën en vetten***, vlees en dierlijke bijproducten*, mineralen, gist. *Eiwitbronnen: 6,7%. **Koolhydraatbron: 8,5%. */**/***Goed verteerbare ingrediënten: 19,3%.', true, now(), 'sha256:b62aefe7641f61299212ee635cbce92e500d2819bfeea4b7f60a567e3a23ef04', null from p;

-- Royal Canin — Gastrointestinal Low Fat (200 / 420 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/gastrointestinal-low-fat-4029
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Gastrointestinal Low Fat', 'wet', '200 / 420 g', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/gastrointestinal-low-fat-4029', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, granen, plantaardige bijproducten, mineralen, oliën en vetten, gist.', true, now(), 'sha256:0463c2ff002daa798f26a395218408aedfb7fcdd71a83eaf10c26e9437be24a5', null from p;

-- Royal Canin — Gastrointestinal Puppy (195 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/gastrointestinal-puppy-1229
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Gastrointestinal Puppy', 'wet', '195 g', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/gastrointestinal-puppy-1229', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten*, granen*, plantaardige bijproducten, mineralen, oliën en vetten**, melk en melkbijproducten*, gist. Goed verteerbare ingrediënten: *bronnen van goed verteerbare eiwitten: 46,2%, **bronnen van goed verteerbare vetten: 0,4%.', true, now(), 'sha256:f35facdc6bab11fca056ecd18ef33df258f6afc9767b439a5ffa32f8eae17fa5', null from p;

-- Royal Canin — GI Low Fat Liquid (3 x 200 ml)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/gi-low-fat-liquid-dog-4912
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'GI Low Fat Liquid', 'wet', '3 x 200 ml', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/gi-low-fat-liquid-dog-4912', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Melk- en melkbijproducten, granen, oliën en vetten, plantaardige eiwitextracten, mineralen, plantaardige bijproducten, eiwitbron: Melkproducten met een laag lactosegehalte, caseïnaat, soja-eiwitconcentraat, maltodextrine.', true, now(), 'sha256:e76f7938ebc28773f239914979bf93c2d784f1bb1d3c90f88785b5ad5f61017e', null from p;

-- Royal Canin — Hepatic (200 / 420 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/hepatic-4022
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Hepatic', 'wet', '200 / 420 g', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/hepatic-4022', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, granen, plantaardige bijproducten, oliën en vetten, mineralen, gist, suikers. Eiwitbronnen: bijproducten van gevogelte (27,8%).', true, now(), 'sha256:e17a46dd22c4e6d7cac882ef7ae12973eea76a227318244a986aa492441a69c7', null from p;

-- Royal Canin — Hepatic Gastrointestinal (200 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/royal-canin--veterinary-health-nutrition-hepatic-gastrointestinal-loaf-wet-pet-food-for-dog-8116
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Hepatic Gastrointestinal', 'wet', '200 g', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/royal-canin--veterinary-health-nutrition-hepatic-gastrointestinal-loaf-wet-pet-food-for-dog-8116', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten*, granen**, plantaardige eiwitextracten*, plantaardige bijproducten, oliën en vetten**, mineralen, gist, suikers**. *Eiwitbronnen: 29,3%. **Goed verteerbare ingrediënten: 56,4%.', true, now(), 'sha256:cb08eb38ea2882736835a6140aa6778bfd13d11191012584b01a4b36ff69e2d2', null from p;

-- Royal Canin — Labrador Retriever Wet (10 x 140 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/labrador-retriever-1259
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Labrador Retriever Wet', 'wet', '10 x 140 g', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/labrador-retriever-1259', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, granen, plantaardige bijproducten, plantaardige eiwitextracten, oliën en vetten, mineralen.', true, now(), 'sha256:0f8fff99f2a3daa9029ba2b49d686137d39755c2bba03a6dfe614d275bfc0ac3', null from p;

-- Royal Canin — Light Weight Care in Loaf (paté) (85 g / 12 x 85 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/light-weight-care-1178
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Light Weight Care in Loaf (paté)', 'wet', '85 g / 12 x 85 g', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/light-weight-care-1178', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, granen, plantaardige bijproducten, mineralen.', true, now(), 'sha256:db680fe2b9a860749bf02defe38f44e2a2f72fe82173fce06a76c3d7a18e8b7f', null from p;

-- Royal Canin — Mature Consult (85 g / 12 x 85 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/mature-consult-1506
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Mature Consult', 'wet', '85 g / 12 x 85 g', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/mature-consult-1506', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, granen, plantaardige bijproducten, plantaardige eiwitextracten, oliën en vetten, mineralen, groenten.', true, now(), 'sha256:918f23de92f4dca9b13caf343d613a5847af10734b7e29856bae72d1b3d3e81d', null from p;

-- Royal Canin — Maxi Adult in Gravy (brokjes in saus) (140 g / 10 x 140 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/maxi-adult---chunks-in-gravy-1094
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Maxi Adult in Gravy (brokjes in saus)', 'wet', '140 g / 10 x 140 g', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/maxi-adult---chunks-in-gravy-1094', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, oliën en vetten, granen, plantaardige bijproducten, plantaardige eiwitextracten, mineralen, gist.', true, now(), 'sha256:960df2d5910de004f295122c78e5d53acf050ccefd8d2a1d2efbb76962ec78fe', null from p;

-- Royal Canin — Maxi Ageing 8+ Natvoer (10 x 140 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/maxi-ageing-1091
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Maxi Ageing 8+ Natvoer', 'wet', '10 x 140 g', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/maxi-ageing-1091', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten, granen, plantaardige bijproducten, oliën en vetten, plantaardige eiwitextracten, mineralen, groenten, suikers, schaal- en weekdieren.', true, now(), 'sha256:d1f52f6688440914c91e1ae0a2a26cb63534dd4c266475c57a707e27bf4edd65', null from p;

-- Royal Canin — Maxi Puppy in Gravy (brokjes in saus) (140 g / 10 x 140 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/puppy---maxi---chunks-in-gravy-1097
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Maxi Puppy in Gravy (brokjes in saus)', 'wet', '140 g / 10 x 140 g', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/puppy---maxi---chunks-in-gravy-1097', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten, granen, plantaardige eiwitextracten, oliën en vetten, plantaardige bijproducten, mineralen, gist.', true, now(), 'sha256:d204fe031abcbf8af3507e0424667ab3e6d0e15b590c6679268e5c12549e8279', null from p;

-- Royal Canin — Medium Adult Wet (10 x 140 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/medium-adult-1095
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Medium Adult Wet', 'wet', '10 x 140 g', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/medium-adult-1095', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, oliën en vetten, granen, plantaardige bijproducten, mineralen, plantaardige eiwitextracten, gist.', true, now(), 'sha256:9f55a751f2d8bd647ca9d6fd698ee3b9cae94b94fd8a1d48fad37059a375b560', null from p;

-- Royal Canin — Medium Ageing in Gravy (brokjes in saus) (10 x 140 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/medium-ageing---chunks-in-gravy-1092
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Medium Ageing in Gravy (brokjes in saus)', 'wet', '10 x 140 g', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/medium-ageing---chunks-in-gravy-1092', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, granen, oliën en vetten, plantaardige eiwitextracten, plantaardige bijproducten, mineralen, gist.', true, now(), 'sha256:5ca20fd078572e5ed21d9bcfc66a5a47da4b375b94039208d071c27ece148d9f', null from p;

-- Royal Canin — Medium Puppy in Gravy (brokjes in saus) (140 g / 10 x 140 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/puppy---medium---chunks-in-gravy-1098
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Medium Puppy in Gravy (brokjes in saus)', 'wet', '140 g / 10 x 140 g', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/puppy---medium---chunks-in-gravy-1098', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten, oliën en vetten, granen, plantaardige eiwitextracten, mineralen, plantaardige bijproducten, gist.', true, now(), 'sha256:1e8c85098dda49f7c73b693843385b546f8d6ea592a336ddcbc701e7a693ae1d', null from p;

-- Royal Canin — Mini Adult in Gravy (brokjes in saus) (12 x 85 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/mini-adult---morsels-in-gravy-1096
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Mini Adult in Gravy (brokjes in saus)', 'wet', '12 x 85 g', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/mini-adult---morsels-in-gravy-1096', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, granen, oliën en vetten, plantaardige bijproducten, mineralen, gist.', true, now(), 'sha256:88484980198145b356b6fe5b0d49e3a58ef1cb869b55f03621727a41138c5487', null from p;

-- Royal Canin — Mini Ageing in Gravy (brokjes in saus) (85 g / 12 x 85 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/mini-ageing---chunks-in-gravy-1093
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Mini Ageing in Gravy (brokjes in saus)', 'wet', '85 g / 12 x 85 g', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/mini-ageing---chunks-in-gravy-1093', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, granen, plantaardige eiwitextracten, oliën en vetten, plantaardige bijproducten, mineralen, gist.', true, now(), 'sha256:32a612024fe1e451660ec6602f745b3a86c7d29a7ceab77ace1ff857d9a7e76c', null from p;

-- Royal Canin — Mini Puppy in Gravy (brokjes in saus) (85 g / 12 x 85 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/puppy---mini---chunks-in-gravy-1099
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Mini Puppy in Gravy (brokjes in saus)', 'wet', '85 g / 12 x 85 g', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/puppy---mini---chunks-in-gravy-1099', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten, oliën en vetten, granen, plantaardige bijproducten, mineralen, gist.', true, now(), 'sha256:87c6d1c99080bc88f39eafa94ac1d33a769eb37d51fc3c22bf2925b41b73f29e', null from p;

-- Royal Canin — Neutered Adult (100 g / 12 x 100 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/neutered-adult-1505
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Neutered Adult', 'wet', '100 g / 12 x 100 g', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/neutered-adult-1505', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, granen, plantaardige bijproducten, plantaardige eiwitextracten, oliën en vetten, mineralen.', true, now(), 'sha256:0f8fff99f2a3daa9029ba2b49d686137d39755c2bba03a6dfe614d275bfc0ac3', null from p;

-- Royal Canin — Pomeranian Adult in Loaf (paté) (85 g / 12 x 85 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/pomeranian-1256
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Pomeranian Adult in Loaf (paté)', 'wet', '85 g / 12 x 85 g', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/pomeranian-1256', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, granen, plantaardige bijproducten, oliën en vetten, mineralen.', true, now(), 'sha256:caa7e25987b1339f6a95e99597ca8152fc9e9786bd6ebccfc012d2996ca651b5', null from p;

-- Royal Canin — Poodle Adult in Loaf (paté) (12 x 85 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/poodle-2043
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Poodle Adult in Loaf (paté)', 'wet', '12 x 85 g', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/poodle-2043', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, vis en visbijproducten, granen, plantaardige bijproducten, mineralen, oliën en vetten.', true, now(), 'sha256:2836c35bdd29c308db2bb070547cf1e5a6243b9a5757f06033d2b2ad6e78513d', null from p;

-- Royal Canin — Recovery (195 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/recovery-4055
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Recovery', 'wet', '195 g', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/recovery-4055', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, oliën en vetten, granen, plantaardige bijproducten, melk en melkbijproducten, mineralen, suikers, gist. Bijzonder goed verteerbare ingrediënten: bijproducten van gevogelte en varken, caseïnaat, maïszetmeelmengsel.', true, now(), 'sha256:b272d53213545b58172237f5d0a62973dcc89bd2d063ad329242e95f46f2bb8e', null from p;

-- Royal Canin — Recovery Liquid (3 x 200 ml)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/recovery-liquid-dog-%26-cat-4910
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Recovery Liquid', 'wet', '3 x 200 ml', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/recovery-liquid-dog-%26-cat-4910', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Melk en melkbijproducten, granen, oliën en vetten, plantaardige eiwitextracten, mineralen, plantaardige bijproducten. Bijzonder goed verteerbare ingrediënten: melkproducten met een laag lactosegehalte, caseïnaat, soja-eiwitconcentraat, maltodextrine.', true, now(), 'sha256:0393736d226d2179cbce9d2862fd43093f776a80652dfce7c605768fbb4dd5da', null from p;

-- Royal Canin — Relax Care in Loaf (paté) (85 g / 12 x 85 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/relax-care-1182
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Relax Care in Loaf (paté)', 'wet', '85 g / 12 x 85 g', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/relax-care-1182', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, granen, plantaardige bijproducten, mineralen, oliën en vetten, vis en visbijproducten.', true, now(), 'sha256:02c965a1179d8e2718eeb633f944aa4073450e7fceb125a30fbefc41e859cbaf', null from p;

-- Royal Canin — Renal (200 / 410 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/renal-4020
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Renal', 'wet', '200 / 410 g', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/renal-4020', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, granen, oliën en vetten, plantaardige bijproducten, mineralen, suikers. Eiwitbronnen: bijproducten van gevogelte (15,6%), bijproducten van varken (13%).', true, now(), 'sha256:a09446394ddfd3fa690185c1741b60ec902e38661c741a1720220dd93a53532c', null from p;

-- Royal Canin — Renal (natvoer - Portie) (100 g / 12 x 100 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/renal-1356
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Renal (natvoer - Portie)', 'wet', '100 g / 12 x 100 g', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/renal-1356', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, granen, oliën en vetten, plantaardige bijproducten, mineralen, suikers. Eiwitbronnen: bijproducten van gevogelte (16%), bijproducten van rund (3,3%), bijproducten van varken (3,1%).', true, now(), 'sha256:23485bcab52b01ee13c9dff352f4d17c880d9b695156961ecb5d98aff4ef8799', null from p;

-- Royal Canin — Renal + Mobility (420 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/renal-%2b-mobility-8090
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Renal + Mobility', 'wet', '420 g', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/renal-%2b-mobility-8090', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten*, granen, oliën en vetten, mineralen, plantaardige bijproducten, groenten, suikers. *Eiwitbronnen: 19,5%.', true, now(), 'sha256:cd3145178c3f40d6c1a17b7daa66a7df606530329eca669895cac35bfbd57b61', null from p;

-- Royal Canin — Renal Liquid Dog (3 x 200 ml)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/renal-liquid-dog-4911
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Renal Liquid Dog', 'wet', '3 x 200 ml', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/renal-liquid-dog-4911', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Melk en melkbijproducten, granen, oliën en vetten, plantaardige eiwitextracten, mineralen, plantaardige bijproducten. Eiwitbron: Melkproducten met een laag lactosegehalte, caseïnaat, soja-eiwitconcentraat.', true, now(), 'sha256:acbd4a217edf4b2ad2cef92c900ab0a76fe33965b9480df6f4febb14207fe2eb', null from p;

-- Royal Canin — Satiety Weight Management (195 / 410 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/satiety-weight-management-4250
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Satiety Weight Management', 'wet', '195 / 410 g', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/satiety-weight-management-4250', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, plantaardige bijproducten, granen, oliën en vetten, mineralen, schaal- en weekdieren.', true, now(), 'sha256:dbc36805420d1069b49b249e3d7e28b5ea88185753bece586d04e98b0e25f874', null from p;

-- Royal Canin — Sensitivity Control Eend met Rijst (410 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/sensitivity-control-duck-with-rice-4027
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Sensitivity Control Eend met Rijst', 'wet', '410 g', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/sensitivity-control-duck-with-rice-4027', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, granen, oliën en vetten, plantaardige bijproducten, mineralen, suikers. Eiwitbron: eend (51%). Koolhydraatbron: rijst (15,4%).', true, now(), 'sha256:3bb01ee13802213b2b42b4cfe35e3431d18e406dd1cbccbbf8305b950b043236', null from p;

-- Royal Canin — Shih Tzu Adult in Loaf (paté) (85 g / 12 x 85 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/shih-tzu-1258
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Shih Tzu Adult in Loaf (paté)', 'wet', '85 g / 12 x 85 g', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/shih-tzu-1258', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, plantaardige bijproducten, granen, oliën en vetten, mineralen.', true, now(), 'sha256:295096f1936071cebdcae379645a88e88f7aa13f7a2e89b04dd5b1d49b1a1190', null from p;

-- Royal Canin — Sterilised Care in Loaf (paté) (85 g / 12 x 85 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/sterilised-1179
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Sterilised Care in Loaf (paté)', 'wet', '85 g / 12 x 85 g', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/sterilised-1179', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, granen, plantaardige bijproducten, mineralen.', true, now(), 'sha256:db680fe2b9a860749bf02defe38f44e2a2f72fe82173fce06a76c3d7a18e8b7f', null from p;

-- Royal Canin — Urinary Care in Loaf (paté) (85 g / 12 x 85 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/urinary-care-1183
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Urinary Care in Loaf (paté)', 'wet', '85 g / 12 x 85 g', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/urinary-care-1183', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, granen, plantaardige bijproducten, mineralen.', true, now(), 'sha256:db680fe2b9a860749bf02defe38f44e2a2f72fe82173fce06a76c3d7a18e8b7f', null from p;

-- Royal Canin — Urinary S/O (100 / 200 / 410 g / 12 x 100 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/urinary-so-4021
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Urinary S/O', 'wet', '100 / 200 / 410 g / 12 x 100 g', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/urinary-so-4021', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, granen, plantaardige bijproducten, mineralen, oliën en vetten.', true, now(), 'sha256:8a4e77d30ba99bbfc998d65ae61d817452f335aacc6932f6b9c81636f1a3e13c', null from p;

-- Royal Canin — Urinary S/O Ageing 7+ (85 g / 12 x 85 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/urinary-so-ageing-7%2b-1275
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Urinary S/O Ageing 7+', 'wet', '85 g / 12 x 85 g', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/urinary-so-ageing-7%2b-1275', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, granen, plantaardige bijproducten, mineralen, oliën en vetten, groenten.', true, now(), 'sha256:062e0f175d276a14755dad7281447e74f5f0c34951eb0d2cf63102f5838c9fdf', null from p;

-- Royal Canin — Urinary S/O Moderate Calorie (12 x 100 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/urinary-so-moderate-calorie-1277
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Urinary S/O Moderate Calorie', 'wet', '12 x 100 g', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/urinary-so-moderate-calorie-1277', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, granen, plantaardige eiwitextracten, mineralen, plantaardige bijproducten, oliën en vetten, gist.', true, now(), 'sha256:af066615c067e09654e277f689fe273f6a150496017da3870971d50844016701', null from p;

-- Royal Canin — X-Small Adult in Gravy (brokjes in saus) (85 g / 12 x 85 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/x-small-adult---morsels-in-gravy-8033
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'X-Small Adult in Gravy (brokjes in saus)', 'wet', '85 g / 12 x 85 g', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/x-small-adult---morsels-in-gravy-8033', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, granen, oliën en vetten, plantaardige bijproducten, mineralen, gist.', true, now(), 'sha256:88484980198145b356b6fe5b0d49e3a58ef1cb869b55f03621727a41138c5487', null from p;

-- Royal Canin — X-Small Puppy in Gravy (brokjes in saus) (12 x 85 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/puppy---x-small---chunks-in-gravy-1593
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'X-Small Puppy in Gravy (brokjes in saus)', 'wet', '12 x 85 g', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/puppy---x-small---chunks-in-gravy-1593', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, granen, plantaardige bijproducten, oliën en vetten, mineralen, gist.', true, now(), 'sha256:ff10ede0c8f1301521aeb917fa3e80c38fab0cdfceea79f69a2e7f530a8f2501', null from p;

-- Royal Canin — Yorkshire Adult in Loaf (paté) (85 g / 12 x 85 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/yorkshire-terrier-2040
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Yorkshire Adult in Loaf (paté)', 'wet', '85 g / 12 x 85 g', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/yorkshire-terrier-2040', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, plantaardige bijproducten, granen, mineralen, oliën en vetten.', true, now(), 'sha256:66382461279c8c021c299cc8f8ccd25b3f08f9528c08d2e10d16c8e9ef467201', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
