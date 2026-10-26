-- Automatisch overgenomen etiketten, batch 9 van 2026-10-26 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Royal Canin — Poodle Adult (1,5 / 7,5 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/poodle-adult-3057
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Poodle Adult', 'kibble', '1,5 / 7,5 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/poodle-adult-3057', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïs, gedehydreerde gevogelte-eiwitten, tarwegluten*, dierlijke vetten, rijst, maïsmeel, maïsgluten, gehydrolyseerde dierlijke eiwitten, bietenpulp, mineralen (waarvan natriumtripolyfosfaat (0,35%)), sojaolie, plantaardige vezels, visolie, gistproducten, fructo-oligosachariden, bernagieolie (0,1%), glucosamine uit gisting, tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:927bee9401a3556c1fd54ce8bbe9319cb64e349ac6daabadeef6fd6b5cfedab9', null from p;

-- Royal Canin — Poodle Puppy (3 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/poodle-puppy-3080
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Poodle Puppy', 'kibble', '3 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/poodle-puppy-3080', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, tarwegluten*, dierlijke vetten, maïs, rijst, tarwe, gehydrolyseerde dierlijke eiwitten, maïsgluten, maïsmeel, bietenpulp, mineralen (waarvan natriumtripolyfosfaat (0,35%)), visolie, sojaolie, gistproducten, fructo-oligosachariden (0,5%), psylliumschil en psylliumzaden, gist (bron van manno-oligosachariden en bèta-glucanen), bernagieolie (0,1%), tagetes meel, sap van Yucca schidigera.', true, now(), 'sha256:913f05589bb2688fc69637f6581e84d8f722faa7dbba59bd1815f4e6ba4c7b9a', null from p;

-- Royal Canin — Pug Adult (1,5 / 3 / 7,5 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/pug-adult-3985
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Pug Adult', 'kibble', '1,5 / 3 / 7,5 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/pug-adult-3985', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, gedehydreerde gevogelte-eiwitten, maïsmeel, dierlijke vetten, maïs, tarwemeel, maïsgluten, tarwegluten*, gehydrolyseerde dierlijke eiwitten, bietenpulp, mineralen, plantaardige vezels, visolie, sojaolie, fructo-oligosachariden, bernagieolie, glucosamine uit gisting, tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:064e8d1b4d7ed636693a6602a639b067008f3062ad71d81c2cbc0a5f4ac45ed6', null from p;

-- Royal Canin — Pug Puppy (500 g / 1,5 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/pug-puppy-4130
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Pug Puppy', 'kibble', '500 g / 1,5 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/pug-puppy-4130', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, rijst, maïs, dierlijke vetten, gehydrolyseerde dierlijke eiwitten, bietenpulp, maïsmeel, tarwegluten*, maïsgluten, visolie, mineralen, sojaolie, fructo-oligosachariden (0,5%), gist (bron van manno-oligosachariden en bèta-glucanen), bernagieolie, tagetes meel, sap van Yucca schidigera.', true, now(), 'sha256:da98642a8b7c77b00289e278d90b6fd84efa26f1a4e6644c20e31fe93615637a', null from p;

-- Royal Canin — Relax Care Maxi (9 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/maxi-relax-care-1226
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Relax Care Maxi', 'kibble', '9 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/maxi-relax-care-1226', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, maïs, maïsmeel, tarwemeel, dierlijke vetten, gehydrolyseerde dierlijke eiwitten, rijst, maïsgluten, plantaardige vezels, mineralen, tarwegluten*, bietenpulp, visolie, sojaolie, gistproducten, gehydrolyseerd viseiwit, gist (bron van manno-oligosachariden), glucosamine uit gisting, tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:3286c8fe38c551c7742cdca497d61ad70d87239919ae254d70548a45d8422dd3', null from p;

-- Royal Canin — Relax Care Medium (3 / 10 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/medium-relax-care-1225
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Relax Care Medium', 'kibble', '3 / 10 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/medium-relax-care-1225', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, maïsmeel, maïs, rijst, dierlijke vetten, gehydrolyseerde dierlijke eiwitten, maïsgluten, bietenpulp, tarwegluten*, visolie, mineralen, plantaardige vezels, sojaolie, cellulosepoeder, gistproducten, gehydrolyseerd viseiwit, gist (bron van manno-oligosachariden), tagetes meel.', true, now(), 'sha256:e60033bed7cfea414254c30d5c8f631ad6219b295c4b821eadd5787749d81ba0', null from p;

-- Royal Canin — Relax Care Mini (3 / 8 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/mini-relax-care-1224
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Relax Care Mini', 'kibble', '3 / 8 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/mini-relax-care-1224', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïsmeel, rijst, maïs, gedehydreerde gevogelte-eiwitten, dierlijke vetten, gehydrolyseerde dierlijke eiwitten, maïsgluten, bietenpulp, tarwegluten*, mineralen, visolie, plantaardige vezels, sojaolie, cellulosepoeder, gistproducten, psylliumschil en psylliumzaden, gehydrolyseerd viseiwit, gist (bron van manno-oligosachariden), tagetes meel.', true, now(), 'sha256:8afd77c173f368e3636e57fc7e71acb25d38045654fa08e6d1e2dcf24e39093d', null from p;

-- Royal Canin — Renal (2 / 7 / 14 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/renal-3916
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Renal', 'kibble', '2 / 7 / 14 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/renal-3916', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, maïsmeel, dierlijke vetten, maïsgluten, maïs, gehydrolyseerde gevogelte-eiwitten, bietenpulp, tarwegluten*, mineralen, visolie, plantaardige vezels, sojaolie, psylliumschil en psylliumzaden, fructo-oligosachariden, mono- en diglyceriden van palmitinezuur en stearinezuur veresterd met citroenzuur, tagetes meel. Eiwitbronnen: maïsgluten (8%), gehydrolyseerde gevogelte-eiwitten (4,7%), tarwegluten (2,5%).', true, now(), 'sha256:4e423a7ffa5ab2d1ad8830a2a1e493e82dfc8bbc2a16011c885a047b6dc1d376', null from p;

-- Royal Canin — Renal + Hypoallergenic (4 / 10 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/renal-%2b-hypoallergenic-6501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Renal + Hypoallergenic', 'kibble', '4 / 10 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/renal-%2b-hypoallergenic-6501', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijstmeel, dierlijke vetten, rijst, gehydrolyseerd soja-eiwit isolaat, cichoreipulp, sojaolie, visolie, plantaardige vezels, mineralen, fructo-oligosachariden, natriumbutyraat, bernagieolie, tagetes meel. Koolhydraatbronnen: rijstmeel (44,5%), rijst (12,6%). Eiwitbron: gehydrolyseerd soja-eiwit isolaat (8,8%).', true, now(), 'sha256:407ee6299f5799fce5cbb1d6036b1e644412e6198dbfb612dcd97f4a34d01908', null from p;

-- Royal Canin — Renal + Mobility (1,5 / 3,5 / 9 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/renal-%2b-mobility-1247
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Renal + Mobility', 'kibble', '1,5 / 3,5 / 9 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/renal-%2b-mobility-1247', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïsmeel, rijst, dierlijke vetten, tarwemeel, maïsgluten*, tarwe, gehydrolyseerd gevogeltelever, bietenpulp, tarwegluten*, mineralen, visolie, plantaardige vezels, sojaolie, gedroogde tomatenpulp (bron van lycopeen), psylliumschil en psylliumzaden, natriumbutyraat, fructo-oligosachariden, poeder van Groenlipmossel (GLM) uit Nieuw-Zeeland (0,3%), mono- en diglyceriden van palmitinezuur en stearinezuur veresterd met citroenzuur, algenolie Schizochytrium sp. (bron van EPA+DHA), glucosamine uit fermentatie, tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine 0,009%). *Eiwitbronnen: 9,1%.', true, now(), 'sha256:992b985173354fea196a83a29186406e0389ddcd9e7a114bb47ca1f3e3dc055c', null from p;

-- Royal Canin — Renal Select (2 / 10 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/renal-select-4162
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Renal Select', 'kibble', '2 / 10 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/renal-select-4162', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, maïsmeel, dierlijke vetten, maïs, gedehydreerd gevogelte-eiwit, gehydrolyseerde gevogelte-eiwitten, bietenpulp, tarwegluten*, visolie, mineralen, plantaardige vezels, sojaolie, psylliumschil en psylliumzaden, fructo-oligosachariden, mono- en diglyceriden van palmitinezuur en stearinezuur veresterd met citroenzuur, tagetes meel. Eiwitbronnen: gedehydreerd gevogelte-eiwit (5,4%), gehydrolyseerde gevogelte-eiwitten (4,7%), tarwegluten (2,4%).', true, now(), 'sha256:a79fa112960194825b9522ed3269bd7b925dcc8c0ef5cbc767ecce206945ca85', null from p;

-- Royal Canin — Renal Small Dogs (1,5 / 3,5 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/renal-small-dog-1249
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Renal Small Dogs', 'kibble', '1,5 / 3,5 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/renal-small-dog-1249', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, maïsmeel, dierlijke vetten, maïsgluten, maïs, gehydrolyseerde gevogelte-eiwitten, bietenpulp, tarwegluten*, mineralen, visolie, plantaardige vezels, sojaolie, psylliumschil en psylliumzaden, fructo-oligosachariden, mono- en diglyceriden van palmitinezuur en stearinezuur veresterd met citroenzuur, tagetes meel. Eiwitbronnen: maïsgluten (8%), gehydrolyseerde gevogelte-eiwitten (4,7%), tarwegluten (2,5%).', true, now(), 'sha256:4e423a7ffa5ab2d1ad8830a2a1e493e82dfc8bbc2a16011c885a047b6dc1d376', null from p;

-- Royal Canin — Renal Special (2 / 10 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/renal-special-4161
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Renal Special', 'kibble', '2 / 10 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/renal-special-4161', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, maïsmeel, dierlijke vetten, maïs, gedehydreerd gevogelte-eiwit, gehydrolyseerde gevogelte-eiwitten, bietenpulp, tarwegluten*, mineralen, visolie, plantaardige vezels, sojaolie, natriumbutyraat, psylliumschil en psylliumzaden, fructo-oligosachariden, mono- en diglyceriden van palmitinezuur en stearinezuur veresterd met citroenzuur, tagetes meel. Eiwitbronnen: gedehydreerd gevogelte-eiwit (6%), gehydrolyseerde gevogelte-eiwitten (4,7%), tarwegluten (2,5%).', true, now(), 'sha256:e6581a136d741f6930243a389aa5078e888837772151da055df0dd5ade89d2b2', null from p;

-- Royal Canin — Rottweiler Adult (12 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/rottweiler-adult-3971
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Rottweiler Adult', 'kibble', '12 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/rottweiler-adult-3971', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, gedehydreerde gevogelte-eiwitten, dierlijke vetten, tarwegluten*, maïs, gehydrolyseerde dierlijke eiwitten, plantaardige vezels, visolie, bietenpulp, mineralen, sojaolie, gedroogde tomatenpulp (bron van lycopeen), gist (bron van manno-oligosachariden), glucosamine uit gisting, tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:2fdc2777cd2c649baab9ec1f501cff87da87bbf503e5013f23a08e7b57cd35f0', null from p;

-- Royal Canin — Rottweiler Puppy (3 / 12 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/rottweiler-puppy-3987
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Rottweiler Puppy', 'kibble', '3 / 12 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/rottweiler-puppy-3987', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, rijst, tarwegluten*, maïsmeel, maïs, dierlijke vetten, gedehydreerde varkenseiwitten, gehydrolyseerde dierlijke eiwitten, tarwemeel, mineralen, bietenpulp, plantaardige vezels, sojaolie, visolie, fructo-oligosachariden (0,5%), psylliumschil en psylliumzaden, gist (bron van manno-oligosachariden en bèta-glucanen), glucosamine uit gisting, tagetes meel, sap van Yucca schidigera, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:8bc8c1f12430b3042e86bce62e538d1d1913c0e76420670e04a069095fb3c861', null from p;

-- Royal Canin — Satiety + Mobility (1,5 / 3,5 / 9 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/satiety-%2b-mobility-4230
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Satiety + Mobility', 'kibble', '1,5 / 3,5 / 9 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/satiety-%2b-mobility-4230', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'plantaardige vezels, gedehydreerde gevogelte-eiwitten, tarwegluten, maniok (tapioca), tarwe, maïsgluten, gehydrolyseerde dierlijke eiwitten, maïs, bietenpulp, dierlijke vetten, visolie, mineralen, maïsmeel, psylliumschil en psylliumzaden, sojaolie, fructo-oligosachariden, poeder van Groenlipmossel (GLM) uit Nieuw-Zeeland (0,45%), algenolie Schizochytrium sp. (bron van EPA+DHA), glucosamine uit fermentatie, tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine 0,01%).', true, now(), 'sha256:b0296b254649d0c3d2b327d5c2d89039642926304686132157cafd0043391a3a', null from p;

-- Royal Canin — Satiety + Mobility Small Dogs (1 / 3 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/satiety-%2b-mobility-small-dogs-8089
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Satiety + Mobility Small Dogs', 'kibble', '1 / 3 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/satiety-%2b-mobility-small-dogs-8089', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, plantaardige vezels, tarwegluten, maniok (tapioca), tarwe, maïsgluten, bietenpulp, gehydrolyseerde dierlijke eiwitten, maïs, mineralen, dierlijke vetten, psylliumschil en psylliumzaden, visolie, maïsmeel, natriumbutyraat, fructo-oligosachariden, poeder van Groenlipmossel (GLM) uit Nieuw-Zeeland (0,3%), algenolie Schizochytrium sp. (bron van EPA+DHA), glucosamine uit fermentatie, tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine 0,001%).', true, now(), 'sha256:a50fc1b4fcd815ed96487986a0f065ef7ca7a7fb95bd9d9c019687ff815cd5ee', null from p;

-- Royal Canin — Satiety Weight Management (1,5 / 6 / 12 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/satiety-weight-management-3948
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Satiety Weight Management', 'kibble', '1,5 / 6 / 12 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/satiety-weight-management-3948', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'plantaardige vezels, gedehydreerd gevogelte-eiwit, tarwegluten*, maniok (tapioca), maïsgluten, gehydrolyseerde dierlijke eiwitten, tarwe, maïs, dierlijke vetten, bietenpulp, visolie, mineralen, psylliumschil en psylliumzaden, sojaolie, fructo-oligosachariden, glucosamine uit gisting, tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:48bed7ecef9ffd5a29a7ab18e0d45a291e8a06218cb17788eb00e1af1fc6609a', null from p;

-- Royal Canin — Satiety Weight Management Small Dog (1,5 / 3 / 8 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/satiety-weight-management-small-dog-4252
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Satiety Weight Management Small Dog', 'kibble', '1,5 / 3 / 8 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/satiety-weight-management-small-dog-4252', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedehydreerde gevogelte-eiwitten, plantaardige vezels, tarwegluten*, tapioca, hydrolysaat van dierlijke eiwitten, cichoreipulp, tarwe, maïs, maïsgluten, dierlijke vetten, mineralen, psylliumschil en psylliumzaden, visolie, vetzuurzouten, fructo-oligo-sacchariden, tagetes (Afrikaan) extract (bron van luteïne), hydrolysaat van schaaldieren (bron van glucosamine), hydrolysaat van kraakbeen (bron van chondroïtine).', true, now(), 'sha256:33f195af1f92ce8fc61d3e05334361e47708ee9f1c46ba88330cb29be2456f74', null from p;

-- Royal Canin — Shiba Inu Adult (4 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/shiba-inu-adult-2104
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Shiba Inu Adult', 'kibble', '4 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/shiba-inu-adult-2104', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, rijst, gedehydreerde gevogelte-eiwitten, tarwegluten*, maïsgluten, dierlijke vetten, maïsmeel, gehydrolyseerde dierlijke eiwitten, bietenpulp, mineralen (waarvan natriumtripolyfosfaat (0,35%)), sojaolie, plantaardige vezels, visolie, gistproducten, fructo-oligosachariden, gist (bron van manno-oligosachariden), bernagieolie (0,1%), glucosamine uit gisting, tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:fe38e5dc6677760d90815aaf49d073abc4b84e86593c9bb79be382a9c494fe28', null from p;

-- Royal Canin — Shih Tzu Adult (1,5 / 3 / 7,5 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/shih-tzu-adult-2200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Shih Tzu Adult', 'kibble', '1,5 / 3 / 7,5 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/shih-tzu-adult-2200', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, gedehydreerde gevogelte-eiwitten, dierlijke vetten, tarwegluten*, gehydrolyseerde dierlijke eiwitten, plantaardige vezels, bietenpulp, mineralen (waarvan natriumtripolyfosfaat (0,35%)), visolie, sojaolie, fructo-oligosachariden, bernagieolie (0,1%), tagetes meel, glucosamine uit gisting, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:0f308595bb841a63061aef6a598c34b21aeb7b03a1bc6269e3447142dced4ced', null from p;

-- Royal Canin — Shih Tzu Puppy (500 g / 1,5 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/shih-tzu-puppy-2439
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Shih Tzu Puppy', 'kibble', '500 g / 1,5 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/shih-tzu-puppy-2439', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, gedehydreerde gevogelte-eiwitten, maïs, dierlijke vetten, tarwegluten*, gehydrolyseerde dierlijke eiwitten, bietenpulp, visolie, mineralen, sojaolie, fructo-oligosachariden (0,5%), gist (bron van manno-oligosachariden en bèta-glucanen), bernagieolie (0,1%), tagetes meel, sap van Yucca schidigera.', true, now(), 'sha256:89f669e22340bfa87e1b9dd9b5eb5b1745c72edd98b3d6521610f63e630b3d83', null from p;

-- Royal Canin — Skin Care (2 / 8 / 11 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/skin-care-4013
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Skin Care', 'kibble', '2 / 8 / 11 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/skin-care-4013', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïs, tarwegluten*, rijst, maniok (tapioca), dierlijke vetten, maïsgluten, gehydrolyseerde dierlijke eiwitten, mineralen, bietenpulp, sojaolie, visolie, plantaardige vezels, lijnzaad, mono- en diglyceriden van palmitinezuur en stearinezuur veresterd met citroenzuur, fructo-oligosacchariden, bernagieolie, tagetes meel.', true, now(), 'sha256:cd9b0470f256e951fef76f654f86b7d39f4d6c2944387f4134ea0fff49bb3393', null from p;

-- Royal Canin — Skin Care Small Dogs (2 / 4 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/skin-care-small-dog-4006
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Skin Care Small Dogs', 'kibble', '2 / 4 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/skin-care-small-dog-4006', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïs, tarwegluten*, rijst, maniok (tapioca), dierlijke vetten, maïsgluten, mineralen, gehydrolyseerde dierlijke eiwitten, cichoreipulp, sojaolie, visolie, lijnzaad, mono- en diglyceriden van palmitinezuur en stearinezuur veresterd met citroenzuur, fructo-oligosacchariden, bernagieolie, tagetes meel.', true, now(), 'sha256:e95f7dc26a6843685727817beefaf933800581f6b8771f23bf0d72b402490548', null from p;

-- Royal Canin — Sporting Life Energy 4100 (15 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/sporting-life-energy-4100-l-2781
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Sporting Life Energy 4100', 'kibble', '15 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/sporting-life-energy-4100-l-2781', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïsmeel, gedehydreerde gevogelte-eiwitten, rijst, maïs, dierlijke vetten, gehydrolyseerde dierlijke eiwitten, tarwegluten*, bietenpulp, visolie, mineralen, plantaardige vezels, sojaolie, gistproducten, fructo-oligosachariden, psylliumschil en psylliumzaden, glucosamine uit fermentatie, tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:6b978d50720653d409ebde35c8d24ccf3121c66f0a3c1a234c14be96f22ab910', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Royal Canin — Sporting Life Energy 4300 (15 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/sporting-life-energy-4300-2782
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Sporting Life Energy 4300', 'kibble', '15 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/sporting-life-energy-4300-2782', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, maïsmeel, rijst, dierlijke vetten, tarwegluten*, gehydrolyseerde dierlijke eiwitten, erwteneiwit, maïsgluten, plantaardige vezels, mineralen, bietenpulp, visolie, sojaolie, psylliumschil en psylliumzaden, tagetes meel, gist (bron van manno-oligosachariden), glucosamine uit fermentatie, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:185c1bb8217ceac7de590e730d2451e62d66315fcf09d7f9aa31c530961641f4', null from p;

-- Royal Canin — Sterilised Maxi (3 / 12 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/maxi-sterilised-3035
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Sterilised Maxi', 'kibble', '3 / 12 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/maxi-sterilised-3035', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïs, gedehydreerde gevogelte-eiwitten, tarwe, maïsgluten, plantaardige vezels, gehydrolyseerde dierlijke eiwitten, dierlijke vetten, tarwegluten*, bietenpulp, visolie, gistproducten, sojaolie, mineralen, psylliumschil en psylliumzaden, bernagieolie, glucosamine uit gisting, tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:515ced0b2b3d8f5518084f1cc3e00ac4a9815518726b9e48c3a377b8870a6aea', null from p;

-- Royal Canin — Sterilised Medium (3 / 12 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/medium-sterilised-3034
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Sterilised Medium', 'kibble', '3 / 12 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/medium-sterilised-3034', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïs, gedehydreerde gevogelte-eiwitten, tarwe, plantaardige vezels, gehydrolyseerde dierlijke eiwitten, dierlijke vetten, maïsgluten, tarwegluten*, bietenpulp, gistproducten, visolie, sojaolie, mineralen, psylliumschil en psylliumzaden, fructo-oligosachariden, gist (bron van manno-oligosachariden), bernagieolie, tagetes meel.', true, now(), 'sha256:7880dd04445702c652875222f90f91979ef7d8e9a5c3dff552cbc2cc35adc51e', null from p;

-- Royal Canin — Sterilised Mini (1 / 3 / 8 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/mini-sterilised-3185
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Sterilised Mini', 'kibble', '1 / 3 / 8 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/mini-sterilised-3185', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïs, gedehydreerde gevogelte-eiwitten, tarwe, gehydrolyseerde dierlijke eiwitten, maïsgluten, plantaardige vezels, tarwegluten*, dierlijke vetten, bietenpulp, gistproducten, visolie, sojaolie, psylliumschil en psylliumzaden, fructo-oligosachariden, mineralen, bernagieolie, tagetes meel.', true, now(), 'sha256:10ec5a5cc255f08270e774ba0d4af4873aadd4ea507bee2b6c63527191912737', null from p;

-- Royal Canin — Sterilised X-Small (1,5 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/x-small-sterilised-1019
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Sterilised X-Small', 'kibble', '1,5 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/x-small-sterilised-1019', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïs, gedehydreerde gevogelte-eiwitten, gehydrolyseerde dierlijke eiwitten, tarwegluten*, dierlijke vetten, maïsgluten, plantaardige vezels, tarwe, cichoreipulp, sojaolie, mineralen, visolie, psylliumschil en psylliumzaden, gistproducten, fructo-oligosachariden, bernagieolie, tagetes meel.', true, now(), 'sha256:a00018da311f5c1a49fef3d246a2e66d1f0e59a3d15ffc07c1d87c38618c6f4e', null from p;

-- Royal Canin — Urinary Care Mini (1 / 3 / 8 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/mini-urinary-care-1261
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Urinary Care Mini', 'kibble', '1 / 3 / 8 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/mini-urinary-care-1261', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïsmeel, gedehydreerde gevogelte-eiwitten, dierlijke vetten, rijst, gehydrolyseerde dierlijke eiwitten, tarwegluten*, tarwe, maïs, maïsgluten, cichoreipulp, mineralen, eipoeder, plantaardige vezels, cellulose poeder, tagetes meel.', true, now(), 'sha256:00ee9640d00d075ec4b0ad170b95486cf01c921a37c557cc2db7e4831b151543', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Royal Canin — Urinary S/O (2 / 7,5 / 13 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/urinary-so-3913
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Urinary S/O', 'kibble', '2 / 7,5 / 13 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/urinary-so-3913', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïsmeel, rijst, dierlijke vetten, gedehydreerde gevogelte-eiwitten, maïsgluten, mineralen, gehydrolyseerde dierlijke eiwitten, plantaardige vezels, sojaolie, visolie, fructo-oligosachariden, mono- en diglyceriden van palmitinezuur en stearinezuur veresterd met citroenzuur, tagetes meel.', true, now(), 'sha256:9950e0ff46dec724633a5e18f90e1d675cbe937219db9e5080c5905d2a4cc09c', null from p;

-- Royal Canin — Urinary S/O + Hypoallergenic (3,5 / 10 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/urinary-so-%2b-hypoallergenic-6500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Urinary S/O + Hypoallergenic', 'kibble', '3,5 / 10 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/urinary-so-%2b-hypoallergenic-6500', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijstmeel, gehydrolyseerd soja-eiwit isolaat, dierlijke vetten, rijst, mineralen, cichoreipulp, sojaolie, plantaardige vezels, visolie, fructo-oligosachariden, natriumbutyraat, bernagieolie, tagetes meel. Eiwitbron: gehydrolyseerd soja-eiwit isolaat (17,5%). Koolhydraatbronnen: rijstmeel (38,9%), rijst (10,1%).', true, now(), 'sha256:267a40eb8330b518ff74d6400992dbcc2dee5afb0f5b3078d330c7bc01683b4f', null from p;

-- Royal Canin — Urinary S/O + Hypoallergenic Small Dogs (1 / 3 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/urinary-so--%2b-hypoallergenic-small-dogs-8063
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Urinary S/O + Hypoallergenic Small Dogs', 'kibble', '1 / 3 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/urinary-so--%2b-hypoallergenic-small-dogs-8063', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijstmeel**, gehydrolyseerd soja-eiwit isolaat*, dierlijke vetten, rijst**, mineralen, cichoreipulp, sojaolie, plantaardige vezels, visolie, fructo-oligosachariden, natriumbutyraat, bernagieolie, tagetes meel. *Eiwitbron: 17,5%. **Koolhydraatbronnen: 49,3%.', true, now(), 'sha256:5b846c45f3650d2518574bf5b898114f812dbedb3528b13e40d85c8a58c17176', null from p;

-- Royal Canin — Urinary S/O + Satiety (3,5 / 9 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/urinary-so-%2b-satiety-6502
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Urinary S/O + Satiety', 'kibble', '3,5 / 9 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/urinary-so-%2b-satiety-6502', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, cellulosepoeder, tarwegluten*, maniok (tapioca), plantaardige vezels, gehydrolyseerde dierlijke eiwitten, tarwe, cichoreipulp, maïs, dierlijke vetten, mineralen, maïsgluten, visolie, psylliumschil en psylliumzaden, fructo-oligosachariden, sojaolie, natriumbutyraat, tagetes meel, glucosamine uit gisting, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:e68b7edb23aca9aad1f43a14882601dade91ea4bc92f3828eccc37dfa61f17d1', null from p;

-- Royal Canin — Urinary S/O + Satiety Small Dogs (1 / 3 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/urinary-so-%2b-satiety-small-dogs-8064
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Urinary S/O + Satiety Small Dogs', 'kibble', '1 / 3 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/urinary-so-%2b-satiety-small-dogs-8064', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, cellulosepoeder, tarwegluten*, maniok (tapioca), plantaardige vezels, gehydrolyseerde dierlijke eiwitten, tarwe, cichoreipulp, maïs, dierlijke vetten, mineralen, maïsgluten, maïsmeel, visolie, psylliumschil en psylliumzaden, sojaolie, natriumbutyraat, fructo-oligosachariden, tagetes meel, glucosamine uit gisting, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:856c7c0c26f8545243c3a5b181a6c4464d4554896bb60279d8e4b92326b3b2f0', null from p;

-- Royal Canin — Urinary S/O Moderate Calorie (1,5 / 6,5 / 12 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/urinary-so-moderate-calorie-3800
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Urinary S/O Moderate Calorie', 'kibble', '1,5 / 6,5 / 12 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/urinary-so-moderate-calorie-3800', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïsmeel, rijst, gedehydreerde gevogelte-eiwitten, plantaardige vezels, maïsgluten, dierlijke vetten, mineralen, gehydrolyseerde dierlijke eiwitten, cichoreipulp, tarwegluten*, sojaolie, visolie, fructo-oligosachariden, mono- en diglyceriden van palmitinezuur en stearinezuur veresterd met citroenzuur, tagetes meel.', true, now(), 'sha256:2c3bb0754787435dcc55c14691557b2d2c8bba919fa324249f3d814c53058ea3', null from p;

-- Royal Canin — Urinary S/O Small Dog (1,5 / 4 / 8 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/urinary-so-small-dog-3801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Urinary S/O Small Dog', 'kibble', '1,5 / 4 / 8 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/urinary-so-small-dog-3801', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, maïsmeel, gedehydreerde gevogelte-eiwitten, dierlijke vetten, maïsgluten, gehydrolyseerde dierlijke eiwitten, mineralen (waarvan natriumtripolyfosfaat (0,35%)), plantaardige vezels, eipoeder, tarwegluten*, sojaolie, visolie, fructo-oligosachariden, tagetes meel.', true, now(), 'sha256:9b011abd32b4e5c532a5c2d5f188674521d22b04a50a313fa49b4e68c12bcc42', null from p;

-- Royal Canin — Urinary U/C (2 / 7,5 / 14 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/urinary-uc-3942
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Urinary U/C', 'kibble', '2 / 7,5 / 14 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/urinary-uc-3942', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, maïsmeel, tarwemeel, dierlijke vetten, eipoeder, tarwegluten*, mineralen, maïsgluten, plantaardige vezels, visolie, sojaolie, fructo-oligosachariden, bernagieolie, tagetes meel. Eiwitbronnen: eipoeder (10%), tarwegluten (6,7%), maïsgluten (3%).', true, now(), 'sha256:751e079a25770d4996528f19c4863174fc05bb98758588e759664dbbb2d0e586', null from p;

-- Royal Canin — West Highland White Terrier Adult (1,5 / 3 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/west-highland-white-terrier-adult-3981
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'West Highland White Terrier Adult', 'kibble', '1,5 / 3 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/west-highland-white-terrier-adult-3981', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïsmeel, gedehydreerde gevogelte-eiwitten, rijst, maïs, dierlijke vetten, gehydrolyseerde dierlijke eiwitten, gedehydreerde varkenseiwitten, tarwe, cichoreipulp, sojaolie, mineralen (waarvan natriumtripolyfosfaat (0,35%)), visolie, lijnzaad (0,5%), fructo-oligosachariden, bernagieolie (0,1%), tagetes meel, glucosamine uit gisting, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:35bc356972d9607acdb1c5c2d1e76fc22c4e35571cde8492b0fe2bfa419894ed', null from p;

-- Royal Canin — X-Small Adult (500 g / 1,5 / 3 / 11 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/x-small-adult-1003
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'X-Small Adult', 'kibble', '500 g / 1,5 / 3 / 11 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/x-small-adult-1003', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, rijst, dierlijke vetten, tarwemeel, tarwe, maïsmeel, maïsgluten, tarwegluten, gehydrolyseerde dierlijke eiwitten, cichoreipulp, mineralen (waarvan natriumtripolyfosfaat (0,35%)), psylliumschil en psylliumzaden, sojaolie, gistproducten, fructo-oligosachariden, visolie, algenolie Schizochytrium sp. (bron van EPA en DHA).', true, now(), 'sha256:b57092804cdb44b5061a318dd0ff182a2135f34014164f2f01faa81bb292b135', null from p;

-- Royal Canin — X-Small Adult 8+ (500 g / 1,5 / 3 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/x-small-adult-8%2b-1004
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'X-Small Adult 8+', 'kibble', '500 g / 1,5 / 3 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/x-small-adult-8%2b-1004', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, rijst, tarwemeel, tarwe, dierlijke vetten, maïsmeel, maïsgluten, tarwegluten, gehydrolyseerde dierlijke eiwitten, cichoreipulp, mineralen (waarvan natriumtripolyfosfaat (0,35%)), psylliumschil en psylliumzaden, sojaolie, gistproducten, visolie, fructo-oligosachariden, algenolie Schizochytrium sp. (bron van EPA en DHA).', true, now(), 'sha256:e0808b32a47a1561dbb793a5203018924829088f67676e60918a1107e7f515fa', null from p;

-- Royal Canin — X-Small Ageing 12+ (500 g / 1,5 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/x-small-ageing-12%2b-1005
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'X-Small Ageing 12+', 'kibble', '500 g / 1,5 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/x-small-ageing-12%2b-1005', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, tarwemeel, gedehydreerde gevogelte-eiwitten, maïsmeel, dierlijke vetten, tarwe, maïsgluten, tarwegluten, gehydrolyseerde dierlijke eiwitten, cichoreipulp, mineralen (waarvan natriumtripolyfosfaat (0,35%)), visolie, psylliumschil en psylliumzaden, sojaolie, gistproducten, fructo-oligosachariden, algenolie Schizochytrium sp. (bron van EPA en DHA), gist (bron van manno-oligosachariden), tagetes meel.', true, now(), 'sha256:9f2e279dde830b237ddd3fb546b25cb47967e5606619aa335e33c469454982f5', null from p;

-- Royal Canin — X-Small Puppy (500 g / 1,5 / 3 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/puppy---x-small-1002
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'X-Small Puppy', 'kibble', '500 g / 1,5 / 3 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/puppy---x-small-1002', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedehydreerde gevogelte-eiwitten, rijst, maïs, dierlijke vetten, tarwegluten*, maïsgluten, gehydrolyseerde dierlijke eiwitten, bietenpulp, mineralen, sojaolie, psylliumschil en psylliumzaden, visolie, fructo-oligosacchariden, gehydrolyseerd gist (bron van manno-oligosacchariden en bèta-glucanen) (0,30%), algenolie Schizochytrium sp. (bron van DHA), sap van Yucca schidigera, tagetesmeel.', true, now(), 'sha256:84859b383a25d907930e04d81a8e0a7f33dbc28e78fc9c2e72d251c6b0358123', null from p;

-- Royal Canin — Yorkshire Terrier 8+ (1,5 / 3 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/yorkshire-terrier-8%2b-1260
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Yorkshire Terrier 8+', 'kibble', '1,5 / 3 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/yorkshire-terrier-8%2b-1260', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïs, gedehydreerde gevogelte-eiwitten, tarwemeel, rijst, tarwegluten*, dierlijke vetten, gehydrolyseerde dierlijke eiwitten, cichoreipulp, visolie, mineralen (waarvan natriumtripolyfosfaat (0,35%)), sojaolie, psylliumschil en psylliumzaden (0,5%), fructo-oligosachariden, bernagieolie (0,1%), glucosamine uit gisting, tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:e776ea6721ab3476e1514abdf9e94ad0bad8657e0ab512d7c1376adb78866ac8', null from p;

-- Royal Canin — Yorkshire Terrier Adult (1,5 / 3 / 7,5 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/yorkshire-terrier-adult-3051
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Yorkshire Terrier Adult', 'kibble', '1,5 / 3 / 7,5 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/yorkshire-terrier-adult-3051', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, maïsmeel, rijst, dierlijke vetten, tarwegluten*, tarwe, maïs, maïsgluten, gehydrolyseerde dierlijke eiwitten, plantaardige vezels, bietenpulp, mineralen (waarvan natriumtripolyfosfaat (0,35%)), visolie, sojaolie, gistproducten, fructo-oligosachariden, gist (bron van manno-oligosachariden), bernagieolie (0,1%), tagetes meel, glucosamine uit gisting, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:c52d8ca1274c73e417de0281837a8ca83bf317024204e124910dac11df8aadba', null from p;

-- Royal Canin — Yorkshire Terrier Puppy (500 g / 1,5 / 7,5 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/yorkshire-terrier-puppy-3972
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Yorkshire Terrier Puppy', 'kibble', '500 g / 1,5 / 7,5 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/yorkshire-terrier-puppy-3972', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, rijst, maïsmeel, dierlijke vetten, tarwegluten*, gehydrolyseerde dierlijke eiwitten, bietenpulp, mineralen (waarvan natriumtripolyfosfaat (0,35%)), sojaolie, visolie, gistproducten, fructo-oligosachariden (0,5%), gist (bron van manno-oligosachariden en bèta-glucanen), bernagieolie (0,1%), tagetes meel, sap van Yucca schidigera.', true, now(), 'sha256:b9e99f29589aa01c527f71b1dda9735fbc8910959b008f868af09a3ce8001219', null from p;

-- Royal Canin — Adult (natvoer) (100 g / 12 x 100 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/adult-1504
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Adult (natvoer)', 'wet', '100 g / 12 x 100 g', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/adult-1504', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten, granen, plantaardige bijproducten, mineralen, plantaardige eiwitextracten, oliën en vetten, gist.', true, now(), 'sha256:f63fcb9a8e04cd460b5268d1f907a4ca15269d430dd9f5747e8e8942f11b9950', null from p;

-- Royal Canin — Cardiac (410 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/cardiac-loaf-4023
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Cardiac', 'wet', '410 g', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/cardiac-loaf-4023', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, granen, oliën en vetten, plantaardige bijproducten, mineralen.', true, now(), 'sha256:3fbe550e5b398c77980114593aead747e0ab7702ca1e8a949434347f1e4e5d49', null from p;

-- Royal Canin — Chihuahua Adult in Loaf (paté) (85 g / 12 x 85 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/chihuahua-2041
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Chihuahua Adult in Loaf (paté)', 'wet', '85 g / 12 x 85 g', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/chihuahua-2041', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, granen, plantaardige bijproducten, oliën en vetten, mineralen.', true, now(), 'sha256:caa7e25987b1339f6a95e99597ca8152fc9e9786bd6ebccfc012d2996ca651b5', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
