-- Automatisch overgenomen etiketten, batch 8 van 2026-10-26 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Royal Canin — Giant Puppy (1 / 3,5 / 15 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/puppy---giant-3030
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Giant Puppy', 'kibble', '1 / 3,5 / 15 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/puppy---giant-3030', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedehydreerde gevogelte-eiwitten, tarwegluten*, rijst, maïs, maïsmeel, dierlijke vetten, tarwemeel, bietenpulp, gehydrolyseerde dierlijke eiwitten, mineralen, maïsgluten, sojaolie, gistproducten, visolie, fructo-oligosacchariden, psylliumschil en psylliumzaden, gehydrolyseerd gist (bron van manno-oligosacchariden en bèta-glucanen) (0,30%), algenolie Schizochytrium sp. (bron van DHA), sap van Yucca schidigera, tagetes meel, glucosamine uit gisting, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:7b6b1028e484717d9174aba7597467f60000e30bccafa83828cf4b2b7714bcff', null from p;

-- Royal Canin — Giant Starter Mother & Babydog (3,5 / 15 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/starter-mother-%26-babydog---giant-2996
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Giant Starter Mother & Babydog', 'kibble', '3,5 / 15 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/starter-mother-%26-babydog---giant-2996', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, gedehydreerde gevogelte-eiwitten, dierlijke vetten, tarwegluten*, gehydrolyseerde dierlijke eiwitten, maïs, bietenpulp, mineralen, sojaolie, plantaardige vezels, visolie, psylliumschil en psylliumzaden, fructo-oligosacchariden, gehydrolyseerd gist (bron van manno-oligosacchariden en bèta-glucanen) (0,30%), algenolie Schizochytrium sp. (bron van DHA), zout van boterzuur, tagetes meel.', true, now(), 'sha256:f3e3cfc99b5caddf0302ecfbf40ae8146ce4b27d90961a97d747a8cac605599e', null from p;

-- Royal Canin — Glycobalance (1,5 / 7 / 12 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/diabetic-4086
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Glycobalance', 'kibble', '1,5 / 7 / 12 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/diabetic-4086', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, gerst*, tarwegluten, plantaardige vezels, dierlijke vetten, maïsgluten, gehydrolyseerde dierlijke eiwitten, bietenpulp, maniok (tapioca)*, mineralen, psylliumschil en psylliumzaden, algenolie Schizochytrium sp. , visolie, tagetes meel. *Koolhydraatbronnen: 27,4%.', true, now(), 'sha256:64c80c3b0d411cb5c84c6bab2d41542d10d90a7dfb4b46927f9a16b611146d5c', null from p;

-- Royal Canin — Golden Retriever Adult (3 / 12 / 15 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/golden-retriever-adult-3970
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Golden Retriever Adult', 'kibble', '3 / 12 / 15 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/golden-retriever-adult-3970', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, maïs, rijst, tarwe, gehydrolyseerde dierlijke eiwitten, dierlijke vetten, tarwegluten*, plantaardige vezels, bietenpulp, visolie, mineralen, sojaolie, gedroogde tomatenpulp (bron van lycopeen), fructo-oligosachariden, psylliumschil en psylliumzaden, glucosamine uit gisting, bernagieolie (0,1%), tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:0b155853969fe924b5aafca3de3e9e2e539fd3df7c9072a7f14974d1818be3f5', null from p;

-- Royal Canin — Golden Retriever Puppy (1 / 3 / 12 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/golden-retriever-puppy-3979
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Golden Retriever Puppy', 'kibble', '1 / 3 / 12 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/golden-retriever-puppy-3979', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, rijst, maïs, tarwegluten*, tarwe, dierlijke vetten, gehydrolyseerde dierlijke eiwitten, plantaardige vezels, bietenpulp, visolie, mineralen, sojaolie, fructo-oligosachariden (0,5%), psylliumschil en psylliumzaden, gist (bron van manno-oligosachariden en bèta-glucanen), glucosamine uit gisting, bernagieolie (0,1%), tagetes meel, sap van Yucca schidigera, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:f9f353603a284171fadec50a59f56a5a696ea75d58ae5e9ee487ea5d346da7bb', null from p;

-- Royal Canin — Great Dane Adult (12 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/great-dane-adult-2592
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Great Dane Adult', 'kibble', '12 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/great-dane-adult-2592', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'dierlijke vetten, maniok (tapioca), gedehydreerde gevogelte-eiwitten, tarwegluten*, maïsmeel, rijst, gehydrolyseerde dierlijke eiwitten, mineralen, plantaardige vezels, visolie, bietenpulp, sojaolie, gistproducten, gist (bron van manno-oligosachariden), glucosamine uit gisting, tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:22600367135b6de5714444749987f501d44bed4fe4a2049e369513cf2362a960', null from p;

-- Royal Canin — Hepatic (1,5 / 7 / 12 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/hepatic-3927
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Hepatic', 'kibble', '1,5 / 7 / 12 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/hepatic-3927', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, gehydrolyseerd soja-eiwit isolaat*, maïs, dierlijke vetten, bietenpulp, gehydrolyseerde dierlijke eiwitten*, mineralen, sojaolie, plantaardige vezels, visolie, fructo-oligosachariden, algenolie Schizochytrium sp. (bron van DHA), tagetes meel. *Eiwitbronnen: 13,6%. Goed verteerbare ingrediënten: 78,3%.', true, now(), 'sha256:7f202a434fc50b5c55dc1cdc053ece1edebd901a4a728dbf82da047977a1f833', null from p;

-- Royal Canin — Hepatic Gastrointestinal (1,5 / 6 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/royal-canin--veterinary-health-nutrition-hepatic-gastrointestinal-dry-pet-food-for-dog-8115
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Hepatic Gastrointestinal', 'kibble', '1,5 / 6 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/royal-canin--veterinary-health-nutrition-hepatic-gastrointestinal-dry-pet-food-for-dog-8115', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'breukrijst**, dierlijke vetten**, gehydrolyseerd soja-eiwit isolaat*, maïs**, tarwegluten*, bietenpulp, hydrolysaat van dierlijk eiwit**, mineralen, geraffineerde sojaolie**, plantaardige vezels, visolie**, psylliumschil, fructo-oligosachariden, algenolie Schizochytrium sp. (bron van EPA+DHA)**, gistcomponenten (bron van manno-oligosachariden 0,05%), tagetes meel. *Eiwitbronnen: 16,9%. */**Goed verteerbare ingrediënten: 86,6%.', true, now(), 'sha256:15f329c678911b3a7d9b6b33c941467fb2529b14dee8ec5d94b1e084601003f5', null from p;

-- Royal Canin — Hypoallergenic + Satiety (1,5 / 3,5 / 9 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/hypoallergenic-%2b-satiety-1083
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Hypoallergenic + Satiety', 'kibble', '1,5 / 3,5 / 9 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/hypoallergenic-%2b-satiety-1083', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gehydrolyseerd soja-eiwit isolaat*, cellulosepoeder, rijst**, gehydrolyseerd gevogeltelever, mineralen, dierlijke vetten, bietenpulp, visolie, sojaolie, psylliumschil en psylliumzaden, natriumbutyraat, fructo-oligosachariden, mono- en diglyceriden van palmitinezuur en stearinezuur veresterd met citroenzuur, tagetes meel, bernagieolie. *Eiwitbron: 30,5%. **Koolhydraatbron: 22,5%.', true, now(), 'sha256:4340a26d3b06af3d232ebdbfb85ed1dd608f14ca1fbdf025f1a4c787d87de3c8', null from p;

-- Royal Canin — Hypoallergenic + Satiety Small Dogs (1 / 3 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/hypoallergenic-%2b-satiety-small-dogs-8069
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Hypoallergenic + Satiety Small Dogs', 'kibble', '1 / 3 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/hypoallergenic-%2b-satiety-small-dogs-8069', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gehydrolyseerd soja-eiwit isolaat*, cellulosepoeder, rijst**, gehydrolyseerd gevogeltelever, mineralen, dierlijke vetten, bietenpulp, visolie, sojaolie, psylliumschil en psylliumzaden, natriumbutyraat, fructo-oligosachariden, mono- en diglyceriden van palmitinezuur en stearinezuur veresterd met citroenzuur, tagetes meel, bernagieolie. *Eiwitbron: 30,4%. **Koolhydraatbron: 22,6%.', true, now(), 'sha256:654768c86855765186cf684309a4eaa0049de5d78c2e975b3246541d62855117', null from p;

-- Royal Canin — Hypoallergenic Moderate Calorie (1,5 / 7 / 14 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/hypoallergenic-moderate-calorie-3964
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Hypoallergenic Moderate Calorie', 'kibble', '1,5 / 7 / 14 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/hypoallergenic-moderate-calorie-3964', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijstmeel, gehydrolyseerd soja-eiwit isolaat, rijst, dierlijke vetten, gehydrolyseerd gevogeltelever, mineralen, bietenpulp, sojaolie, visolie, fructo-oligosacchariden, bernagieolie, tagetes meel. Eiwitbronnen: gehydrolyseerd soja-eiwit isolaat (19,3%), gehydrolyseerd gevogeltelever (5%). Koolhydraatbronnen: rijstmeel (45,0%), rijst (8,6%).', true, now(), 'sha256:649a59f9f2b9f04b138d42e8f78d1ddfc0c531472ae8d6b0898ef9f9f3a86394', null from p;

-- Royal Canin — Hypoallergenic Puppy (1,5 / 3,5 / 14 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/hypoallergenic-puppy-3318
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Hypoallergenic Puppy', 'kibble', '1,5 / 3,5 / 14 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/hypoallergenic-puppy-3318', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijstmeel, gehydrolyseerd soja-eiwit isolaat, dierlijke vetten, rijst, mineralen, gehydrolyseerd gevogeltelever, bietenpulp, sojaolie, fructo-oligosacchariden, visolie, bernagieolie, tagetes meel. Eiwitbronnen: gehydrolyseerd soja-eiwit isolaat (20,1%), gehydrolyseerd gevogeltelever (5,0%). Koolhydraatbron: rijst (42,7%).', true, now(), 'sha256:6419dfffdeff1ad89d147b6474549a5bf336c204e949d078279e0ce65cb9adce', null from p;

-- Royal Canin — Hypoallergenic Small Dog (3,5 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/hypoallergenic-small-dog-3952
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Hypoallergenic Small Dog', 'kibble', '3,5 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/hypoallergenic-small-dog-3952', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijstmeel, gehydrolyseerd soja-eiwit isolaat, dierlijke vetten, rijst, mineralen, gehydrolyseerd gevogeltelever, bietenpulp, sojaolie, fructo-oligosacchariden, visolie, bernagieolie, tagetes meel. Eiwitbronnen: gehydrolyseerd soja-eiwit isolaat (21,5%), gehydrolyseerd gevogeltelever (5%). Koolhydraatbronnen: rijstmeel (37,7%), rijst (9,1%).', true, now(), 'sha256:5dba71fd0832aae0f6a9633f2557731743478b0f7399d0721ff6afb9487637bc', null from p;

-- Royal Canin — Jack Russell Terrier Adult (1,5 / 3 / 7,5 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/jack-russell-adult-2100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Jack Russell Terrier Adult', 'kibble', '1,5 / 3 / 7,5 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/jack-russell-adult-2100', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, rijst, maïs, tarwe, tarwegluten*, dierlijke vetten, gehydrolyseerde dierlijke eiwitten, bietenpulp, maïsgluten, mineralen (waarvan natriumtripolyfosfaat (0,35%)), visolie, sojaolie, gistproducten, fructo-oligosachariden, gist (bron van manno-oligosachariden), bernagieolie (0,1%), tagetes meel, glucosamine uit gisting, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:e41a344f5599a12cc7f3f82863a8ca1c1b26cf49d62b51f6a1a06a3575c18d41', null from p;

-- Royal Canin — Jack Russell Terrier Puppy (500 g / 1,5 / 3 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/jack-russell-terrier-puppy-2101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Jack Russell Terrier Puppy', 'kibble', '500 g / 1,5 / 3 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/jack-russell-terrier-puppy-2101', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, rijst, tarwegluten*, tarwe, dierlijke vetten, maïs, gehydrolyseerde dierlijke eiwitten, bietenpulp, maïsgluten, visolie, mineralen, sojaolie, gistproducten, fructo-oligosachariden (0,5%), gist (bron van manno-oligosachariden en bèta-glucanen), bernagieolie, tagetes meel, sap van Yucca schidigera.', true, now(), 'sha256:65bbb3989197f3d14febf16af81d5f854e73fbcf0cb3ceb61eb5f20fb7049a6b', null from p;

-- Royal Canin — Joint Care Maxi (3 / 10 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/maxi-joint-care-2390
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Joint Care Maxi', 'kibble', '3 / 10 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/maxi-joint-care-2390', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gedehydreerde gevogelte-eiwitten, tarwe, dierlijke vetten, plantaardige vezels, isolaat van plantaardige eiwitten*, maïsmeel, rijst, hydrolysaat van dierlijke eiwitten, maïsgluten, bietenpulp, visolie, gist en delen daarvan, mineralen, sojaolie, gehydrolyseerd collageen (0, 84%), Tagetes (Afrikaan) extract (bron van luteïne), hydrolysaat van kraakbeen (bron van chondroïtine).', true, now(), 'sha256:d374f71f2d7b32a1953ff056363d06d3226bb23cef18ec0c64d6ef326430cadf', null from p;

-- Royal Canin — Labrador Retriever 5+ (3 / 12 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/labrador-retriever-5%2b-1339
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Labrador Retriever 5+', 'kibble', '3 / 12 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/labrador-retriever-5%2b-1339', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, rijst, maïsmeel, maïs, maïsgluten, tarwe, tarwegluten*, gehydrolyseerde dierlijke eiwitten, dierlijke vetten, bietenpulp, cellulosepoeder, plantaardige vezels, mineralen, visolie, sojaolie, gistproducten, gehydrolyseerd collageen (0.84%), gedroogde tomatenpulp (bron van lycopeen), psylliumschil en psylliumzaden, fructo-oligosachariden, bernagieolie, tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:a36fece53afb8286cde7f6acba4aa6bae9ba88f362893bce67277481c0e78b15', null from p;

-- Royal Canin — Labrador Retriever Adult (3 / 12 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/labrador-retriever-adult-2487
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Labrador Retriever Adult', 'kibble', '3 / 12 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/labrador-retriever-adult-2487', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, rijst, tarwe, maïs, dierlijke vetten, tarwegluten*, gehydrolyseerde dierlijke eiwitten, maïsgluten, erwteneiwit, bietenpulp, plantaardige vezels, gistproducten, visolie, mineralen, sojaolie, psylliumschil en psylliumzaden, fructo-oligosachariden, glucosamine uit fermentatie, bernagieolie (0,1%), tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:8f16e384f36dacd0a9740f57ca0644218440c40df87443e313096aa257df7328', null from p;

-- Royal Canin — Labrador Retriever Puppy (1 / 3 / 12 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/labrador-retriever-puppy-2491
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Labrador Retriever Puppy', 'kibble', '1 / 3 / 12 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/labrador-retriever-puppy-2491', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, maïs, tarwegluten*, rijst, maïsmeel, dierlijke vetten, maïsgluten, gehydrolyseerde dierlijke eiwitten, tarwemeel, bietenpulp, visolie, mineralen, plantaardige vezels, sojaolie, fructo-oligosachariden (0,5%), psylliumschil en psylliumzaden, gist (bron van manno-oligosachariden en bèta-glucanen), glucosamine uit gisting, bernagieolie, tagetes meel, sap van Yucca schidigera, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:99ba9884dc8c40b9f3f9e75d6905cb3d076b55f87039f513e2469b01c31833a8', null from p;

-- Royal Canin — Labrador Retriever Sterilised Adult (3 / 12 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/labrador-retriever-sterilised-3996
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Labrador Retriever Sterilised Adult', 'kibble', '3 / 12 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/labrador-retriever-sterilised-3996', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, maïs, rijst, maïsgluten, gehydrolyseerde dierlijke eiwitten, plantaardige vezels, tarwegluten*, dierlijke vetten, bietenpulp, gistproducten, visolie, mineralen, sojaolie, fructo-oligosachariden, psylliumschil en psylliumzaden, glucosamine uit gisting, bernagieolie (0,1%), tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:8b00fb8d14af1945ebc5041ea698b845b0417210c233882c21510a51721abeeb', null from p;

-- Royal Canin — Light Weight Care Maxi (3 / 12 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/maxi-light-weight-care-2446
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Light Weight Care Maxi', 'kibble', '3 / 12 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/maxi-light-weight-care-2446', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, plantaardige vezels, maïs, gerst, maïsmeel, maïsgluten, tarwegluten*, gehydrolyseerde dierlijke eiwitten, tarwe, dierlijke vetten, bietenpulp, cellulosepoeder, visolie, mineralen, gistproducten, fructo-oligosachariden, psylliumschil en psylliumzaden, sojaolie, glucosamine uit gisting, tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:fbcb611ef17fe862497c395bf62b0eb824d5b348aae96cea3379b90ae7d12923', null from p;

-- Royal Canin — Light Weight Care Medium (3 / 12 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/medium-light-weight-care-3021
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Light Weight Care Medium', 'kibble', '3 / 12 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/medium-light-weight-care-3021', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, plantaardige vezels, maïs, tarwe, gerst, maïsgluten, gehydrolyseerde dierlijke eiwitten, maïsmeel, dierlijke vetten, rijst, bietenpulp, cellulosepoeder, tarwegluten*, gistproducten, visolie, mineralen, fructo-oligosachariden, psylliumschil en psylliumzaden, sojaolie, gist (bron van manno-oligosachariden), glucosamine uit gisting, tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:b666a243fc9301cfd0b659a8159cf8090f34dc51b1e58a2deb2792be5204f6c2', null from p;

-- Royal Canin — Light Weight Care Mini (1 / 3 / 8 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/mini-light-weight-care-3018
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Light Weight Care Mini', 'kibble', '1 / 3 / 8 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/mini-light-weight-care-3018', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, maïs, plantaardige vezels, gerst, rijst, tarwegluten*, maïsgluten, gehydrolyseerde dierlijke eiwitten, dierlijke vetten, bietenpulp, maïsmeel, cellulosepoeder, visolie, psylliumschil en psylliumzaden, gistproducten, mineralen, sojaolie, fructo-oligosachariden, natriumbutyraat, bernagieolie, glucosamine uit gisting, tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:4622f5143e09a9e6716feea131c034f3f7d072ca8111ad8e60b2ea678596dd7e', null from p;

-- Royal Canin — Light Weight Care X-Small (1,5 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/x-small-light-weight-care-1230
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Light Weight Care X-Small', 'kibble', '1,5 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/x-small-light-weight-care-1230', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïs, gedehydreerde gevogelte-eiwitten, maïsmeel, tarwegluten*, gehydrolyseerde dierlijke eiwitten, gerst, maïsgluten, dierlijke vetten, tarwe, cichoreipulp, plantaardige vezels, cellulosepoeder, mineralen, psylliumschil en psylliumzaden, sojaolie, visolie, gistproducten, natriumbutyraat, fructo-oligosachariden, bernagieolie, glucosamine uit gisting, tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:e7c5b3480b6005560783b54b3a183db2dec1b749568d8aae0624b59c3e045c4d', null from p;

-- Royal Canin — Maltese Adult (1,5 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/maltese-adult-3995
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Maltese Adult', 'kibble', '1,5 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/maltese-adult-3995', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, gedehydreerd gevogelte-eiwit, maïs, dierlijke vetten, tarwe, gedehydreerd varkenseiwit*, gehydrolyseerde dierlijke eiwitten, tarwegluten*, cichoreipulp, sojaolie, mineralen, gistproducten, visolie, fructo-oligosachariden, algenolie Schizochytrium sp. (bron van DHA), bernagieolie (0,1%), tagetes meel, glucosamine uit gisting, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:efd46e1641968aa87b623d4542908872ff3d8c8c49aacdf03cc929a47f4865b7', null from p;

-- Royal Canin — Mature Consult Large Dogs (14 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/mature-consult-large-dog-3709
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Mature Consult Large Dogs', 'kibble', '14 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/mature-consult-large-dog-3709', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, maïs, gedehydreerd varkenseiwit, tarwe, plantaardige vezels, dierlijke vetten, maïsgluten, gedehydreerd gevogelte-eiwit, gehydrolyseerde dierlijke eiwitten, tarwegluten*, bietenpulp, mineralen, visolie, sojaolie, gedroogde tomatenpulp (bron van lycopeen) (0,99%), psylliumschil en psylliumzaden, fructo-oligosacchariden, bernagieolie, glucosamine uit gisting, tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:7146566fcf4c7affc8a19055b95baa069fea1f4fc1687c3569fbf3f19f699e7c', null from p;

-- Royal Canin — Mature Consult Medium Dogs (3,5 / 10 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/mature-consult-3706
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Mature Consult Medium Dogs', 'kibble', '3,5 / 10 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/mature-consult-3706', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïs, gedehydreerd gevogelte-eiwit, tarwemeel, tarwe, plantaardige vezels, maïsmeel, dierlijke vetten, gedehydreerd varkenseiwit*, maïsgluten, gehydrolyseerde dierlijke eiwitten, bietenpulp, mineralen, visolie, sojaolie, gedroogde tomatenpulp (bron van lycopeen) (0,84%), fructo-oligosacchariden, bernagieolie, tagetes meel.', true, now(), 'sha256:1e00796cfb6be356dc959d47194a1eafba84bd44b7f11c23061bfc64943ec8c2', null from p;

-- Royal Canin — Mature Consult Small Dogs (1,5 / 3,5 / 8 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/mature-consult-small-dog-3703
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Mature Consult Small Dogs', 'kibble', '1,5 / 3,5 / 8 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/mature-consult-small-dog-3703', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïs, gedehydreerd gevogelte-eiwit, tarwemeel, tarwe, plantaardige vezels, dierlijke vetten, gedehydreerd varkenseiwit, maïsgluten, gehydrolyseerde dierlijke eiwitten, tarwegluten*, mineralen, cichoreipulp, visolie, sojaolie, gedroogde tomatenpulp (bron van lycopeen) (0,84%), fructo-oligosachariden, bernagieolie, tagetes meel.', true, now(), 'sha256:da5dfb53039f8285c8a49a3abc0008b4e494e94848e51b1e2bcc79b0ee2aa4d6', null from p;

-- Royal Canin — Maxi Adult 5+ (4 / 15 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/maxi-adult-5%2b-3008
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Maxi Adult 5+', 'kibble', '4 / 15 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/maxi-adult-5%2b-3008', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedehydreerde gevogelte-eiwitten, dierlijke vetten, maïs, tarwe, tarwebloem, maïsmeel, gerst, maïsgluten, tarwegluten, gehydrolyseerde dierlijke eiwitten, bietenpulp, mineralen, visolie, sojaolie, gistproducten, psylliumschil en psylliumzaden, fructo-oligosachariden, algenolie Schizochytrium sp., glucosamine uit fermentatie, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:b838d0b1bab646c67bb9765e28d23fd02e01541136bd79a8203af303082ac939', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Royal Canin — Maxi Ageing 8+ (3 / 15 kg)
-- bron: https://www.royalcanin.com/be/nl-be/dogs/products/retail-products/maxi-ageing-8%2b-2454
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Maxi Ageing 8+', 'kibble', '3 / 15 kg', null, 'https://www.royalcanin.com/be/nl-be/dogs/products/retail-products/maxi-ageing-8%2b-2454', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, dierlijke vetten, maïs, tarwe, maïsmeel, gerst, maïsgluten, tarwemeel, tarwegluten, gehydrolyseerde dierlijke eiwitten, bietenpulp, mineralen, visolie, sojaolie, gistproducten, psylliumschil en psylliumzaden, fructo-oligosachariden, algenolie Schizochytrium sp. (bron van EPA en DHA), glucosamine uit gisting, tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:2927bedbee6f66b798d93184e2a1329c51c10d9d03e4914d6caef51a5144f2bb', null from p;

-- Royal Canin — Maxi Puppy (1 / 3 / 4 / 10 / 12 / 15 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/puppy---maxi-3006
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Maxi Puppy', 'kibble', '1 / 3 / 4 / 10 / 12 / 15 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/puppy---maxi-3006', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerd gevogelte-eiwit, maïsmeel, rijst, gedehydreerd varkenseiwit*, dierlijke vetten, maïs, tarwegluten*, tarwemeel, gehydrolyseerde dierlijke eiwitten, mineralen, bietenpulp, maïsgluten, plantaardige vezels, sojaolie, visolie, fructo-oligosacchariden, psylliumschil en psylliumzaden, gehydrolyseerd gist (bron van manno-oligosacchariden en bèta-glucanen) (0,30%), algenolie Schizochytrium sp. (bron van DHA), sap van Yucca schidigera, tagetes meel, glucosamine uit gisting, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:fd79521f651b769c8a37d5ca288a1e754f4d13441c646f009a1a20ebbd483ed7', null from p;

-- Royal Canin — Maxi Starter Mother & Babydog (4 / 15 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/starter-mother-%26-babydog---maxi-2994
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Maxi Starter Mother & Babydog', 'kibble', '4 / 15 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/starter-mother-%26-babydog---maxi-2994', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, gedehydreerde gevogelte-eiwitten, dierlijke vetten, tarwegluten*, maïs, gehydrolyseerde dierlijke eiwitten, mineralen, bietenpulp, sojaolie, plantaardige vezels, visolie, psylliumschil en psylliumzaden, fructo-oligosacchariden, gehydrolyseerd gist (bron van manno-oligosacchariden en bèta-glucanen) (0,30%), algenolie Schizochytrium sp. (bron van DHA), zout van boterzuur, tagetes meel', true, now(), 'sha256:2e34761ab6d9abaee7e2d902c3b69dab24848225a19620e37f9a0c5e71648375', null from p;

-- Royal Canin — Medium Adult 7+ (4 / 10 / 15 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/medium-adult-7%2b-3005
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Medium Adult 7+', 'kibble', '4 / 10 / 15 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/medium-adult-7%2b-3005', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedehydreerde gevogelte-eiwitten, tarwebloem, maïsmeel, maïs, rijst, dierlijke vetten, tarwe, tarwegluten, bietenpulp, gehydrolyseerde dierlijke eiwitten, maïsgluten, mineralen, sojaolie, gistproducten, visolie, psylliumschil en psylliumzaden, fructo-oligosachariden, algenolie Schizochytrium sp., gisten (bron van manno-oligosachariden).', true, now(), 'sha256:71e3bb77520d840b4b65846a52d01c024cf72d597c62195f29f20c8b55916d12', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Royal Canin — Medium Ageing 10+ (3 / 15 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/medium-ageing-10%2b-2448
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Medium Ageing 10+', 'kibble', '3 / 15 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/medium-ageing-10%2b-2448', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedehydreerde gevogelte-eiwitten, tarwebloem, maïs, maïsmeel, rijst, dierlijke vetten, maïsgluten, tarwe, bietenpulp, gehydrolyseerde dierlijke eiwitten, tarwegluten, visolie, sojaolie, gistproducten, mineralen, psylliumschil en psylliumzaden, fructo-oligosachariden, algenolie Schizochytrium sp. (bron van EPA en DHA), gisten (bron van manno-oligosachariden), glucosamine uit fermentatie, tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:bdf05c0c3319abf5f30884f0a244cc92e6005765085d4b6238b0579d0869976c', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Royal Canin — Medium Puppy (1 / 3 / 4 / 10 / 12 / 15 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/puppy---medium-3003
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Medium Puppy', 'kibble', '1 / 3 / 4 / 10 / 12 / 15 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/puppy---medium-3003', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerd gevogelte-eiwit, dierlijke vetten, maïs, tarwegluten*, bietenpulp, gedehydreerd varkenseiwit*, maïsgluten, rijst, tarwemeel, gehydrolyseerde dierlijke eiwitten, tarwe, maïsmeel, mineralen, sojaolie, gistproducten, visolie, fructo-oligosacchariden, gehydrolyseerd gist (bron van manno-oligosacchariden en bèta-glucanen) (0,30%), algenolie Schizochytrium sp. (bron van DHA), sap van Yucca schidigera, tagetes meel.', true, now(), 'sha256:2e015295bcd43bd1982eff6160822aed000bf39fbcec78ebab3ca5321b0614f4', null from p;

-- Royal Canin — Medium Starter Mother & Babydog (1 / 4 / 15 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/starter-mother-%26-babydog---medium-2993
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Medium Starter Mother & Babydog', 'kibble', '1 / 4 / 15 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/starter-mother-%26-babydog---medium-2993', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedehydreerde gevogelte-eiwitten, rijst, dierlijke vetten, tarwegluten*, maïs, bietenpulp, gehydrolyseerde dierlijke eiwitten, mineralen, sojaolie, visolie, fructo-oligosacchariden, gehydrolyseerd gist (bron van manno-oligosacchariden en bèta-glucanen) (0,30%), algenolie Schizochytrium sp. (bron van DHA), zout van boterzuur, tagetes meel.', true, now(), 'sha256:556c63baf07fb03e2cfe9ce374f97e97c7fe841db343f4aa9e03012f4768a87b', null from p;

-- Royal Canin — Mini Adult (800 g / 2 / 4 / 8 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/mini-adult-3001
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Mini Adult', 'kibble', '800 g / 2 / 4 / 8 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/mini-adult-3001', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'tarwemeel, gedehydreerde gevogelte-eiwitten, maïsmeel, dierlijke vetten, gehydrolyseerde dierlijke eiwitten, gedehydreerde varkenseiwitten, maïs, gerst, tarwe, maïsgluten, erwteneiwit, mineralen, bietenpulp, sojaolie, gistproducten, fructo-oligosachariden, visolie, algenolie Schizochytrium sp.', true, now(), 'sha256:a99427308132034211429982b5973c81a909430e3135bd9c64c5eeeac26d14b6', null from p;

-- Royal Canin — Mini Ageing 12+ (800 g / 1,5 / 3,5 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/mini-ageing-12%2b-1007
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Mini Ageing 12+', 'kibble', '800 g / 1,5 / 3,5 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/mini-ageing-12%2b-1007', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïs, gedehydreerde gevogelte-eiwitten, rijst, tarwemeel, dierlijke vetten, tarwegluten, maïsgluten, gehydrolyseerde dierlijke eiwitten, tarwe, gerst, bietenpulp, mineralen, visolie, sojaolie, gistproducten, fructo-oligosachariden, algenolie Schizochytrium sp. (bron van EPA en DHA), gist (bron van manno-oligosachariden), tagetes meel.', true, now(), 'sha256:f73f2ffedb14412c8e00896d3ff62dca679149d5d3bc3bd1e22b77c361e26dec', null from p;

-- Royal Canin — Mini Dermacomfort (1 / 3 / 8 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/mini-dermacomfort-2441
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Mini Dermacomfort', 'kibble', '1 / 3 / 8 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/mini-dermacomfort-2441', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, tarwegluten*, tarwe, dierlijke vetten, maïsgluten, gepelde haver, maïs, gehydrolyseerde dierlijke eiwitten, mineralen, sojaolie, bietenpulp, visolie, lijnzaad, fructo-oligosachariden, mono- en diglyceriden van palmitinezuur en stearinezuur veresterd met citroenzuur, bernagieolie, tagetes meel.', true, now(), 'sha256:807d5e7c83c36413f04abe884c1b4af1a4b31cf753afa93e6840f391b2ee0c8b', null from p;

-- Royal Canin — Mini Puppy (800 g / 2 / 4 / 8 kg)
-- bron: https://www.royalcanin.com/be/nl-be/dogs/products/retail-products/puppy---mini-3000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Mini Puppy', 'kibble', '800 g / 2 / 4 / 8 kg', null, 'https://www.royalcanin.com/be/nl-be/dogs/products/retail-products/puppy---mini-3000', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerd gevogelte-eiwit, rijst, dierlijke vetten, tarwegluten*, maïs, bietenpulp, maïsmeel, gehydrolyseerde dierlijke eiwitten, maïsgluten, mineralen, sojaolie, visolie, fructo-oligosacchariden, gehydrolyseerd gist (bron van manno-oligosacchariden en bèta-glucanen) (0,30%), algenolie Schizochytrium sp. (bron van DHA), sap van Yucca schidigera, tagetes meel.', true, now(), 'sha256:58e35d77e2ebaa06e4cf1940cffd0ceeaa7fbfc0375a78ecc3e48ff30b8b3b83', null from p;

-- Royal Canin — Mini Starter Mother & Babydog (1 / 4 / 8 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/starter-mother-%26-babydog---mini-2990
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Mini Starter Mother & Babydog', 'kibble', '1 / 4 / 8 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/starter-mother-%26-babydog---mini-2990', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedehydreerde gevogelte-eiwitten, rijst, dierlijke vetten, tarwegluten*, maïs, bietenpulp, gehydrolyseerde dierlijke eiwitten, mineralen, sojaolie, visolie, fructo-oligosacchariden, gehydrolyseerd gist (bron van manno-oligosacchariden en bèta-glucanen) (0,30%), algenolie Schizochytrium sp. (bron van DHA), zout van boterzuur, tagetes meel.', true, now(), 'sha256:556c63baf07fb03e2cfe9ce374f97e97c7fe841db343f4aa9e03012f4768a87b', null from p;

-- Royal Canin — Miniature Schnauzer Adult (3 / 7,5 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/miniature-schnauzer-adult-2220
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Miniature Schnauzer Adult', 'kibble', '3 / 7,5 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/miniature-schnauzer-adult-2220', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, gedehydreerde gevogelte-eiwitten, maïs, tarwegluten*, maïsgluten, dierlijke vetten, gehydrolyseerde dierlijke eiwitten, mineralen (waarvan natriumtripolyfosfaat (0,35%)), cichoreipulp, plantaardige vezels, visolie, fructo-oligosachariden, psylliumschil en psylliumzaden, sojaolie, bernagieolie, glucosamine uit gisting, tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:d3fc4c2d804d3fc94216e3be25cd24c1d7794773a76268682c19d3ecabe69b06', null from p;

-- Royal Canin — Miniature Schnauzer Puppy (1,5 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/schnauzer-puppy-4131
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Miniature Schnauzer Puppy', 'kibble', '1,5 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/schnauzer-puppy-4131', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, tarwegluten*, maïs, rijst, tarwemeel, dierlijke vetten, tarwe, gehydrolyseerde dierlijke eiwitten, maïsmeel, maïsgluten, cichoreipulp, mineralen (waarvan natriumtripolyfosfaat (0,35%)), visolie, sojaolie, fructo-oligosachariden (0,5%), psylliumschil en psylliumzaden, gist (bron van manno-oligosachariden en bèta-glucanen), bernagieolie, tagetes meel, sap van Yucca schidigera.', true, now(), 'sha256:9549187b68b6a62a3a57f99ceca5e3e53f45f008f9339bb054262c15acc9c34d', null from p;

-- Royal Canin — Mobility Support (2 / 7 / 12 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/mobility-support-1829
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Mobility Support', 'kibble', '2 / 7 / 12 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/mobility-support-1829', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, maïsmeel, gedehydreerde gevogelte-eiwitten, maïs, maïsgluten, gehydrolyseerde dierlijke eiwitten, dierlijke vetten, bietenpulp, plantaardige vezels, visolie, mineralen, tarwegluten*, sojaolie, extract van Groenlipmossel (GLM) uit Nieuw-Zeeland (0,30%), glucosamine uit gisting (0,10%), tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine) (0,001%).', true, now(), 'sha256:dddda156c4ab8f5f644ffec237376a2786a931c7a37c2509265799487f3c50c0', null from p;

-- Royal Canin — Neutered Adult Large Dogs (3,5 / 12 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/neutered-adult-large-dog-3716
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Neutered Adult Large Dogs', 'kibble', '3,5 / 12 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/neutered-adult-large-dog-3716', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerd gevogelte-eiwit, maïs, gerst, tarwemeel, plantaardige vezels, tarwegluten*, gedehydreerd varkenseiwit, gehydrolyseerde dierlijke eiwitten, dierlijke vetten, bietenpulp, mineralen, visolie, sojaolie, psylliumschil en psylliumzaden (0,50%), fructo-oligosacchariden (0,49%), glucosamine uit gisting, tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:79a206a701827f41f821074e8e006c417ebbc43980d3fb208537dda01e4a109a', null from p;

-- Royal Canin — Neutered Adult Medium Dogs (3,5 / 9 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/neutered-adult-3714
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Neutered Adult Medium Dogs', 'kibble', '3,5 / 9 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/neutered-adult-3714', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïs, gerst, gedehydreerd varkenseiwit, gedehydreerd gevogelte-eiwit, tarwemeel, plantaardige vezels, gehydrolyseerde dierlijke eiwitten, dierlijke vetten, bietenpulp, tarwegluten*, sojaolie, visolie, mineralen, psylliumschil en psylliumzaden (0,50%), fructo-oligosacchariden (0,49%), bernagieolie, tagetes meel.', true, now(), 'sha256:57a89234477ab89a923b26306f7316b3a9c01c2fe72030085df65ccf7228b80e', null from p;

-- Royal Canin — Neutered Adult Small Dogs (1,5 / 3,5 / 8 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/neutered-adult-small-dog-3712
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Neutered Adult Small Dogs', 'kibble', '1,5 / 3,5 / 8 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/neutered-adult-small-dog-3712', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gerst, maïs, gedehydreerd varkenseiwit, gedehydreerd gevogelte-eiwit, tarwemeel, plantaardige vezels, tarwegluten*, gehydrolyseerde dierlijke eiwitten, dierlijke vetten, mineralen, cichoreipulp, visolie, sojaolie, psylliumschil en psylliumzaden (0,5%), fructo-oligosacchariden (0,49%), tagetes meel.', true, now(), 'sha256:44144d7f3aa0a81ac12e57720659beb78234aabb26d015c096abe427b57baae0', null from p;

-- Royal Canin — Neutered Junior (3,5 / 10 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/neutered-junior-3713
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Neutered Junior', 'kibble', '3,5 / 10 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/neutered-junior-3713', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerd gevogelte-eiwit, maïs, dierlijke vetten, gedehydreerd varkenseiwit, tarwemeel, gerst, rijst, gehydrolyseerde dierlijke eiwitten, bietenpulp, tarwegluten*, plantaardige vezels, mineralen, visolie, sojaolie, fructo-oligosacchariden (0,50%), psylliumschil en psylliumzaden, gist (bron van manno-oligosacchariden en bèta-glucanen) (0,30%), bernagieolie, tagetes meel.', true, now(), 'sha256:828ee916be80fc9e64350a2a34825ca14d442fba3ae8047e2f45dc53c122003b', null from p;

-- Royal Canin — Neutered Junior Large Dogs (4 / 12 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/neutered-junior-large-dog-3715
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Neutered Junior Large Dogs', 'kibble', '4 / 12 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/neutered-junior-large-dog-3715', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerd gevogelte-eiwit, maïs, tarwegluten*, tarwemeel, gerst, rijst, dierlijke vetten, gedehydreerd varkenseiwit, gehydrolyseerde dierlijke eiwitten, bietenpulp, mineralen, sojaolie, plantaardige vezels, visolie, fructo-oligosacchariden (0,5%), psylliumschil en psylliumzaden, gist (bron van manno-oligosacchariden en bèta-glucanen), tagetes meel, glucosamine uit gisting (0,05%), gehydrolyseerd kraakbeen (bron van chondroïtine) (0,0005%).', true, now(), 'sha256:efecee9a57e1e683356206085bbfa9bf991c2d045ca03eadf2d75dee75f702b5', null from p;

-- Royal Canin — Pomeranian Adult (1,5 / 3 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/pomeranian-adult-1255
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Pomeranian Adult', 'kibble', '1,5 / 3 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/pomeranian-adult-1255', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïs, gedehydreerde gevogelte-eiwitten, tarwemeel, rijst, tarwegluten*, dierlijke vetten, gehydrolyseerde dierlijke eiwitten, cichoreipulp, visolie, mineralen (waarvan natriumtripolyfosfaat (0,35%)), sojaolie, psylliumschil en psylliumzaden (0,5%), fructo-oligosachariden, bernagieolie (0,1%), glucosamine uit gisting, tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:e776ea6721ab3476e1514abdf9e94ad0bad8657e0ab512d7c1376adb78866ac8', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
