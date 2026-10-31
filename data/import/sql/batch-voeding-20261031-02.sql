begin;

-- Royal Canin — Gastrointestinal Hydrolysed Protein Small Dogs (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/royal-canin--veterinary-health-nutrition-gastrointestinal-hydrolysed-protein-small-dogs-dry-pet-food-for-dog-8114',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3.919kcal/kg omgerekend naar 391,9 kcal/100 g (gedeeld door 10). Omega-6 overgenomen uit de opgave "Essentieel vetzuur (linolzuur)" (linolzuur is een omega-6 vetzuur). Vocht, calcium en fosfor worden niet vermeld.'
 where id = '17f359df-a907-4f60-b5f3-403559ca4163';
delete from public.recipe_nutrition where recipe_version_id = '17f359df-a907-4f60-b5f3-403559ca4163';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('17f359df-a907-4f60-b5f3-403559ca4163', 'protein', 26, 'as-fed'),
  ('17f359df-a907-4f60-b5f3-403559ca4163', 'fat', 20, 'as-fed'),
  ('17f359df-a907-4f60-b5f3-403559ca4163', 'fiber', 3.1, 'as-fed'),
  ('17f359df-a907-4f60-b5f3-403559ca4163', 'ash', 8.1, 'as-fed'),
  ('17f359df-a907-4f60-b5f3-403559ca4163', 'kcal', 391.9, 'as-fed'),
  ('17f359df-a907-4f60-b5f3-403559ca4163', 'omega3', 0.94, 'as-fed'),
  ('17f359df-a907-4f60-b5f3-403559ca4163', 'omega6', 3.95, 'as-fed');

-- Royal Canin — Gastrointestinal Low Fat (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/gastrointestinal-low-fat-3932',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor en omega-6 worden niet vermeld.'
 where id = '245dfb1c-fe48-418b-b623-225a0542f08f';
delete from public.recipe_nutrition where recipe_version_id = '245dfb1c-fe48-418b-b623-225a0542f08f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('245dfb1c-fe48-418b-b623-225a0542f08f', 'protein', 22, 'as-fed'),
  ('245dfb1c-fe48-418b-b623-225a0542f08f', 'fat', 7, 'as-fed'),
  ('245dfb1c-fe48-418b-b623-225a0542f08f', 'fiber', 1.7, 'as-fed'),
  ('245dfb1c-fe48-418b-b623-225a0542f08f', 'ash', 6.2, 'as-fed'),
  ('245dfb1c-fe48-418b-b623-225a0542f08f', 'omega3', 0.25, 'as-fed');

-- Royal Canin — Gastrointestinal Low Fat (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/gastrointestinal-low-fat-4029',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Calcium, fosfor en omega-6 worden niet vermeld.'
 where id = '326c2968-9233-4a40-bd4e-1334b2363db1';
delete from public.recipe_nutrition where recipe_version_id = '326c2968-9233-4a40-bd4e-1334b2363db1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('326c2968-9233-4a40-bd4e-1334b2363db1', 'protein', 8, 'as-fed'),
  ('326c2968-9233-4a40-bd4e-1334b2363db1', 'fat', 1.7, 'as-fed'),
  ('326c2968-9233-4a40-bd4e-1334b2363db1', 'fiber', 1.4, 'as-fed'),
  ('326c2968-9233-4a40-bd4e-1334b2363db1', 'ash', 1.9, 'as-fed'),
  ('326c2968-9233-4a40-bd4e-1334b2363db1', 'moisture', 74, 'as-fed'),
  ('326c2968-9233-4a40-bd4e-1334b2363db1', 'omega3', 0.05, 'as-fed');

-- Royal Canin — Gastrointestinal Low Fat + Hypoallergenic (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/royal-canin--veterinary-health-nutrition-gastrointestinal-low-fat-hypoallergenic-dry-pet-food-for-dog-2734',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3.508kcal/kg omgerekend naar 350,8 kcal/100 g (gedeeld door 10). Omega-6 overgenomen uit de opgave "Essentieel vetzuur (linolzuur)" (linolzuur is een omega-6 vetzuur). Vocht, calcium, fosfor en omega-3 worden niet vermeld.'
 where id = '993c8b96-6390-456f-aff7-a8bb86e32e23';
delete from public.recipe_nutrition where recipe_version_id = '993c8b96-6390-456f-aff7-a8bb86e32e23';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('993c8b96-6390-456f-aff7-a8bb86e32e23', 'protein', 25, 'as-fed'),
  ('993c8b96-6390-456f-aff7-a8bb86e32e23', 'fat', 7, 'as-fed'),
  ('993c8b96-6390-456f-aff7-a8bb86e32e23', 'fiber', 1.3, 'as-fed'),
  ('993c8b96-6390-456f-aff7-a8bb86e32e23', 'ash', 6.2, 'as-fed'),
  ('993c8b96-6390-456f-aff7-a8bb86e32e23', 'kcal', 350.8, 'as-fed'),
  ('993c8b96-6390-456f-aff7-a8bb86e32e23', 'omega6', 1.57, 'as-fed');

-- Royal Canin — Gastrointestinal Low Fat Small Dog (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/gastrointestinal-low-fat-small-dog-1463',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor en omega-6 worden niet vermeld.'
 where id = '386fc8a4-b785-424a-9182-2a2d29720f26';
delete from public.recipe_nutrition where recipe_version_id = '386fc8a4-b785-424a-9182-2a2d29720f26';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('386fc8a4-b785-424a-9182-2a2d29720f26', 'protein', 22, 'as-fed'),
  ('386fc8a4-b785-424a-9182-2a2d29720f26', 'fat', 7, 'as-fed'),
  ('386fc8a4-b785-424a-9182-2a2d29720f26', 'fiber', 1.8, 'as-fed'),
  ('386fc8a4-b785-424a-9182-2a2d29720f26', 'ash', 6.3, 'as-fed'),
  ('386fc8a4-b785-424a-9182-2a2d29720f26', 'omega3', 0.25, 'as-fed');

-- Royal Canin — Gastrointestinal Moderate Calorie (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/gastrointestinal-moderate-calorie-3958',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3.613kcal/kg omgerekend naar 361,3 kcal/100 g (gedeeld door 10). Vocht, calcium, fosfor en omega-6 worden niet vermeld.'
 where id = 'a282a835-431d-4d19-83b4-b67bbb454ebd';
delete from public.recipe_nutrition where recipe_version_id = 'a282a835-431d-4d19-83b4-b67bbb454ebd';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a282a835-431d-4d19-83b4-b67bbb454ebd', 'protein', 23, 'as-fed'),
  ('a282a835-431d-4d19-83b4-b67bbb454ebd', 'fat', 11, 'as-fed'),
  ('a282a835-431d-4d19-83b4-b67bbb454ebd', 'fiber', 2.3, 'as-fed'),
  ('a282a835-431d-4d19-83b4-b67bbb454ebd', 'ash', 6.4, 'as-fed'),
  ('a282a835-431d-4d19-83b4-b67bbb454ebd', 'kcal', 361.3, 'as-fed'),
  ('a282a835-431d-4d19-83b4-b67bbb454ebd', 'omega3', 0.61, 'as-fed');

-- Royal Canin — Gastrointestinal Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/gastrointestinal-puppy-3957',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 4.235kcal/kg omgerekend naar 423,5 kcal/100 g (gedeeld door 10). Vocht, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '8f7b2c8e-967d-43ac-9a07-6b3ccd25b2ff';
delete from public.recipe_nutrition where recipe_version_id = '8f7b2c8e-967d-43ac-9a07-6b3ccd25b2ff';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8f7b2c8e-967d-43ac-9a07-6b3ccd25b2ff', 'protein', 29, 'as-fed'),
  ('8f7b2c8e-967d-43ac-9a07-6b3ccd25b2ff', 'fat', 22, 'as-fed'),
  ('8f7b2c8e-967d-43ac-9a07-6b3ccd25b2ff', 'fiber', 1.2, 'as-fed'),
  ('8f7b2c8e-967d-43ac-9a07-6b3ccd25b2ff', 'ash', 7.9, 'as-fed'),
  ('8f7b2c8e-967d-43ac-9a07-6b3ccd25b2ff', 'kcal', 423.5, 'as-fed'),
  ('8f7b2c8e-967d-43ac-9a07-6b3ccd25b2ff', 'calcium', 1.4, 'as-fed');

-- Royal Canin — Gastrointestinal Puppy (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/gastrointestinal-puppy-1229',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 972kcal/kg omgerekend naar 97,2 kcal/100 g (gedeeld door 10). Fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '5f7fe511-7349-43e1-9d9d-8b1ab59ec72c';
delete from public.recipe_nutrition where recipe_version_id = '5f7fe511-7349-43e1-9d9d-8b1ab59ec72c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5f7fe511-7349-43e1-9d9d-8b1ab59ec72c', 'protein', 10, 'as-fed'),
  ('5f7fe511-7349-43e1-9d9d-8b1ab59ec72c', 'fat', 5.8, 'as-fed'),
  ('5f7fe511-7349-43e1-9d9d-8b1ab59ec72c', 'fiber', 0.9, 'as-fed'),
  ('5f7fe511-7349-43e1-9d9d-8b1ab59ec72c', 'ash', 2.1, 'as-fed'),
  ('5f7fe511-7349-43e1-9d9d-8b1ab59ec72c', 'moisture', 78.5, 'as-fed'),
  ('5f7fe511-7349-43e1-9d9d-8b1ab59ec72c', 'kcal', 97.2, 'as-fed'),
  ('5f7fe511-7349-43e1-9d9d-8b1ab59ec72c', 'calcium', 0.34, 'as-fed');

-- Royal Canin — German Shepherd Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/german-shepherd-adult-2518',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '8d8b64be-e7de-47b1-b7c9-781f97990bb5';
delete from public.recipe_nutrition where recipe_version_id = '8d8b64be-e7de-47b1-b7c9-781f97990bb5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8d8b64be-e7de-47b1-b7c9-781f97990bb5', 'protein', 24, 'as-fed'),
  ('8d8b64be-e7de-47b1-b7c9-781f97990bb5', 'fat', 19, 'as-fed'),
  ('8d8b64be-e7de-47b1-b7c9-781f97990bb5', 'fiber', 4, 'as-fed'),
  ('8d8b64be-e7de-47b1-b7c9-781f97990bb5', 'ash', 6.5, 'as-fed');

-- Royal Canin — German Shepherd Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/german-shepherd-puppy-2519',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, omega-3 en omega-6 worden niet vermeld.'
 where id = 'e09831eb-8551-4395-aeaf-86c5c2965539';
delete from public.recipe_nutrition where recipe_version_id = 'e09831eb-8551-4395-aeaf-86c5c2965539';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e09831eb-8551-4395-aeaf-86c5c2965539', 'protein', 30, 'as-fed'),
  ('e09831eb-8551-4395-aeaf-86c5c2965539', 'fat', 16, 'as-fed'),
  ('e09831eb-8551-4395-aeaf-86c5c2965539', 'fiber', 2.7, 'as-fed'),
  ('e09831eb-8551-4395-aeaf-86c5c2965539', 'ash', 7.3, 'as-fed'),
  ('e09831eb-8551-4395-aeaf-86c5c2965539', 'calcium', 1.26, 'as-fed'),
  ('e09831eb-8551-4395-aeaf-86c5c2965539', 'phosphorus', 1, 'as-fed');

-- Royal Canin — GI Low Fat Liquid (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/gi-low-fat-liquid-dog-4912',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 105 kcal overgenomen als kcal/100 g. De fabrikant vermeldt de analytische bestanddelen in grammen; deze zijn overgenomen als percentage as-fed. Calcium en fosfor worden niet vermeld.'
 where id = '9f8d86e5-ca19-45d6-a595-c45da8a8586b';
delete from public.recipe_nutrition where recipe_version_id = '9f8d86e5-ca19-45d6-a595-c45da8a8586b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9f8d86e5-ca19-45d6-a595-c45da8a8586b', 'protein', 9, 'as-fed'),
  ('9f8d86e5-ca19-45d6-a595-c45da8a8586b', 'fat', 2, 'as-fed'),
  ('9f8d86e5-ca19-45d6-a595-c45da8a8586b', 'fiber', 0, 'as-fed'),
  ('9f8d86e5-ca19-45d6-a595-c45da8a8586b', 'ash', 1.2, 'as-fed'),
  ('9f8d86e5-ca19-45d6-a595-c45da8a8586b', 'moisture', 84.2, 'as-fed'),
  ('9f8d86e5-ca19-45d6-a595-c45da8a8586b', 'kcal', 105, 'as-fed'),
  ('9f8d86e5-ca19-45d6-a595-c45da8a8586b', 'omega3', 0.12, 'as-fed'),
  ('9f8d86e5-ca19-45d6-a595-c45da8a8586b', 'omega6', 0.4, 'as-fed');

-- Royal Canin — Giant Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/giant-adult-3009',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '7b049c64-28ee-4cb7-8c6a-00f616fa4bf5';
delete from public.recipe_nutrition where recipe_version_id = '7b049c64-28ee-4cb7-8c6a-00f616fa4bf5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7b049c64-28ee-4cb7-8c6a-00f616fa4bf5', 'protein', 28, 'as-fed'),
  ('7b049c64-28ee-4cb7-8c6a-00f616fa4bf5', 'fat', 20, 'as-fed'),
  ('7b049c64-28ee-4cb7-8c6a-00f616fa4bf5', 'fiber', 3.2, 'as-fed'),
  ('7b049c64-28ee-4cb7-8c6a-00f616fa4bf5', 'ash', 6.1, 'as-fed');

-- Royal Canin — Giant Junior (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/junior---giant-3031',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3.906kcal/kg omgerekend naar 390,6 kcal/100 g (gedeeld door 10). Vocht, omega-3 en omega-6 worden niet vermeld.'
 where id = '5d248278-a60b-4c8c-b095-74af02d411fe';
delete from public.recipe_nutrition where recipe_version_id = '5d248278-a60b-4c8c-b095-74af02d411fe';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5d248278-a60b-4c8c-b095-74af02d411fe', 'protein', 31, 'as-fed'),
  ('5d248278-a60b-4c8c-b095-74af02d411fe', 'fat', 16, 'as-fed'),
  ('5d248278-a60b-4c8c-b095-74af02d411fe', 'fiber', 1.3, 'as-fed'),
  ('5d248278-a60b-4c8c-b095-74af02d411fe', 'ash', 7.6, 'as-fed'),
  ('5d248278-a60b-4c8c-b095-74af02d411fe', 'kcal', 390.6, 'as-fed'),
  ('5d248278-a60b-4c8c-b095-74af02d411fe', 'calcium', 1.3, 'as-fed'),
  ('5d248278-a60b-4c8c-b095-74af02d411fe', 'phosphorus', 0.99, 'as-fed');

-- Royal Canin — Giant Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/puppy---giant-3030',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3.812kcal/kg omgerekend naar 381,2 kcal/100 g (gedeeld door 10). Vocht, omega-3 en omega-6 worden niet vermeld.'
 where id = 'c9e226d1-05ac-4b9c-ac57-5bf3e2581a14';
delete from public.recipe_nutrition where recipe_version_id = 'c9e226d1-05ac-4b9c-ac57-5bf3e2581a14';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c9e226d1-05ac-4b9c-ac57-5bf3e2581a14', 'protein', 34, 'as-fed'),
  ('c9e226d1-05ac-4b9c-ac57-5bf3e2581a14', 'fat', 14, 'as-fed'),
  ('c9e226d1-05ac-4b9c-ac57-5bf3e2581a14', 'fiber', 1.3, 'as-fed'),
  ('c9e226d1-05ac-4b9c-ac57-5bf3e2581a14', 'ash', 7.9, 'as-fed'),
  ('c9e226d1-05ac-4b9c-ac57-5bf3e2581a14', 'kcal', 381.2, 'as-fed'),
  ('c9e226d1-05ac-4b9c-ac57-5bf3e2581a14', 'calcium', 1.31, 'as-fed'),
  ('c9e226d1-05ac-4b9c-ac57-5bf3e2581a14', 'phosphorus', 1, 'as-fed');

-- Royal Canin — Giant Starter Mother & Babydog (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/starter-mother-%26-babydog---giant-2996',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 4.173kcal/kg omgerekend naar 417,3 kcal/100 g (gedeeld door 10). Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '85dcd4c4-88c9-4307-ad0d-0a10059a7d75';
delete from public.recipe_nutrition where recipe_version_id = '85dcd4c4-88c9-4307-ad0d-0a10059a7d75';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('85dcd4c4-88c9-4307-ad0d-0a10059a7d75', 'protein', 30, 'as-fed'),
  ('85dcd4c4-88c9-4307-ad0d-0a10059a7d75', 'fat', 22, 'as-fed'),
  ('85dcd4c4-88c9-4307-ad0d-0a10059a7d75', 'fiber', 1.9, 'as-fed'),
  ('85dcd4c4-88c9-4307-ad0d-0a10059a7d75', 'ash', 8.2, 'as-fed'),
  ('85dcd4c4-88c9-4307-ad0d-0a10059a7d75', 'kcal', 417.3, 'as-fed');

-- Royal Canin — Glycobalance (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/diabetic-4086',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3.380kcal/kg omgerekend naar 338 kcal/100 g (gedeeld door 10). Vocht, calcium en fosfor worden niet vermeld.'
 where id = 'b3730c02-a8f8-4a99-ad2e-37252e6b3d64';
delete from public.recipe_nutrition where recipe_version_id = 'b3730c02-a8f8-4a99-ad2e-37252e6b3d64';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b3730c02-a8f8-4a99-ad2e-37252e6b3d64', 'protein', 37, 'as-fed'),
  ('b3730c02-a8f8-4a99-ad2e-37252e6b3d64', 'fat', 12, 'as-fed'),
  ('b3730c02-a8f8-4a99-ad2e-37252e6b3d64', 'fiber', 7.2, 'as-fed'),
  ('b3730c02-a8f8-4a99-ad2e-37252e6b3d64', 'ash', 5.4, 'as-fed'),
  ('b3730c02-a8f8-4a99-ad2e-37252e6b3d64', 'kcal', 338, 'as-fed'),
  ('b3730c02-a8f8-4a99-ad2e-37252e6b3d64', 'omega3', 0.58, 'as-fed'),
  ('b3730c02-a8f8-4a99-ad2e-37252e6b3d64', 'omega6', 2.48, 'as-fed');

-- Royal Canin — Golden Retriever Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/golden-retriever-adult-3970',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '30343758-c573-492a-be0f-6e32a75d704a';
delete from public.recipe_nutrition where recipe_version_id = '30343758-c573-492a-be0f-6e32a75d704a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('30343758-c573-492a-be0f-6e32a75d704a', 'protein', 25, 'as-fed'),
  ('30343758-c573-492a-be0f-6e32a75d704a', 'fat', 13, 'as-fed'),
  ('30343758-c573-492a-be0f-6e32a75d704a', 'fiber', 3.7, 'as-fed'),
  ('30343758-c573-492a-be0f-6e32a75d704a', 'ash', 6.3, 'as-fed');

-- Royal Canin — Golden Retriever Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/golden-retriever-puppy-3979',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'eb1670e7-aacb-48fd-a23c-744eac51ef12';
delete from public.recipe_nutrition where recipe_version_id = 'eb1670e7-aacb-48fd-a23c-744eac51ef12';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('eb1670e7-aacb-48fd-a23c-744eac51ef12', 'protein', 29, 'as-fed'),
  ('eb1670e7-aacb-48fd-a23c-744eac51ef12', 'fat', 16, 'as-fed'),
  ('eb1670e7-aacb-48fd-a23c-744eac51ef12', 'fiber', 3.7, 'as-fed'),
  ('eb1670e7-aacb-48fd-a23c-744eac51ef12', 'ash', 7.4, 'as-fed');

-- Royal Canin — Great Dane Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/great-dane-adult-2592',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '7aecfbcb-2bd1-4f0e-ba43-848bc0aababa';
delete from public.recipe_nutrition where recipe_version_id = '7aecfbcb-2bd1-4f0e-ba43-848bc0aababa';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7aecfbcb-2bd1-4f0e-ba43-848bc0aababa', 'protein', 23, 'as-fed'),
  ('7aecfbcb-2bd1-4f0e-ba43-848bc0aababa', 'fat', 25, 'as-fed'),
  ('7aecfbcb-2bd1-4f0e-ba43-848bc0aababa', 'fiber', 2.4, 'as-fed'),
  ('7aecfbcb-2bd1-4f0e-ba43-848bc0aababa', 'ash', 6.6, 'as-fed');

-- Royal Canin — Hepatic (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/hepatic-3927',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3.881kcal/kg omgerekend naar 388,1 kcal/100 g (gedeeld door 10). Vocht, calcium, fosfor en omega-6 worden niet vermeld.'
 where id = '767fe65c-a472-4134-809e-b59aec32b41c';
delete from public.recipe_nutrition where recipe_version_id = '767fe65c-a472-4134-809e-b59aec32b41c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('767fe65c-a472-4134-809e-b59aec32b41c', 'protein', 16, 'as-fed'),
  ('767fe65c-a472-4134-809e-b59aec32b41c', 'fat', 16, 'as-fed'),
  ('767fe65c-a472-4134-809e-b59aec32b41c', 'fiber', 2.3, 'as-fed'),
  ('767fe65c-a472-4134-809e-b59aec32b41c', 'ash', 4.7, 'as-fed'),
  ('767fe65c-a472-4134-809e-b59aec32b41c', 'kcal', 388.1, 'as-fed'),
  ('767fe65c-a472-4134-809e-b59aec32b41c', 'omega3', 0.85, 'as-fed');

-- Royal Canin — Hepatic (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/hepatic-4022',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 1.423kcal/kg omgerekend naar 142,3 kcal/100 g (gedeeld door 10). Calcium, fosfor en omega-6 worden niet vermeld.'
 where id = '54a49f80-0cbb-4f12-aee1-14375daa4161';
delete from public.recipe_nutrition where recipe_version_id = '54a49f80-0cbb-4f12-aee1-14375daa4161';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('54a49f80-0cbb-4f12-aee1-14375daa4161', 'protein', 6.7, 'as-fed'),
  ('54a49f80-0cbb-4f12-aee1-14375daa4161', 'fat', 4, 'as-fed'),
  ('54a49f80-0cbb-4f12-aee1-14375daa4161', 'fiber', 0.9, 'as-fed'),
  ('54a49f80-0cbb-4f12-aee1-14375daa4161', 'ash', 1.7, 'as-fed'),
  ('54a49f80-0cbb-4f12-aee1-14375daa4161', 'moisture', 64.5, 'as-fed'),
  ('54a49f80-0cbb-4f12-aee1-14375daa4161', 'kcal', 142.3, 'as-fed'),
  ('54a49f80-0cbb-4f12-aee1-14375daa4161', 'omega3', 0.24, 'as-fed');

-- Royal Canin — Hepatic Gastrointestinal (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/royal-canin--veterinary-health-nutrition-hepatic-gastrointestinal-dry-pet-food-for-dog-8115',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3.881kcal/kg omgerekend naar 388,1 kcal/100 g (gedeeld door 10). Vocht, calcium, fosfor en omega-6 worden niet vermeld.'
 where id = '874aa1c2-c605-44c1-bd13-99e43aba794d';
delete from public.recipe_nutrition where recipe_version_id = '874aa1c2-c605-44c1-bd13-99e43aba794d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('874aa1c2-c605-44c1-bd13-99e43aba794d', 'protein', 20, 'as-fed'),
  ('874aa1c2-c605-44c1-bd13-99e43aba794d', 'fat', 16, 'as-fed'),
  ('874aa1c2-c605-44c1-bd13-99e43aba794d', 'fiber', 2, 'as-fed'),
  ('874aa1c2-c605-44c1-bd13-99e43aba794d', 'ash', 5.7, 'as-fed'),
  ('874aa1c2-c605-44c1-bd13-99e43aba794d', 'kcal', 388.1, 'as-fed'),
  ('874aa1c2-c605-44c1-bd13-99e43aba794d', 'omega3', 0.82, 'as-fed');

-- Royal Canin — Hepatic Gastrointestinal (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/royal-canin--veterinary-health-nutrition-hepatic-gastrointestinal-loaf-wet-pet-food-for-dog-8116',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 1.433kcal/kg omgerekend naar 143,3 kcal/100 g (gedeeld door 10). Calcium, fosfor en omega-6 worden niet vermeld.'
 where id = '4dd7dbc2-264f-491f-b3a7-347b1f8eac6a';
delete from public.recipe_nutrition where recipe_version_id = '4dd7dbc2-264f-491f-b3a7-347b1f8eac6a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4dd7dbc2-264f-491f-b3a7-347b1f8eac6a', 'protein', 7.4, 'as-fed'),
  ('4dd7dbc2-264f-491f-b3a7-347b1f8eac6a', 'fat', 4, 'as-fed'),
  ('4dd7dbc2-264f-491f-b3a7-347b1f8eac6a', 'fiber', 0.8, 'as-fed'),
  ('4dd7dbc2-264f-491f-b3a7-347b1f8eac6a', 'ash', 1.7, 'as-fed'),
  ('4dd7dbc2-264f-491f-b3a7-347b1f8eac6a', 'moisture', 64.5, 'as-fed'),
  ('4dd7dbc2-264f-491f-b3a7-347b1f8eac6a', 'kcal', 143.3, 'as-fed'),
  ('4dd7dbc2-264f-491f-b3a7-347b1f8eac6a', 'omega3', 0.23, 'as-fed');

-- Royal Canin — Hypoallergenic (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/hypoallergenic-3910',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Omega-6 overgenomen uit de opgave "Essentieel vetzuur (linolzuur)" (linolzuur is een omega-6 vetzuur). Vocht, calcium en fosfor worden niet vermeld.'
 where id = 'b61c76e5-2a2d-4451-ab3b-babaa264c6e6';
delete from public.recipe_nutrition where recipe_version_id = 'b61c76e5-2a2d-4451-ab3b-babaa264c6e6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b61c76e5-2a2d-4451-ab3b-babaa264c6e6', 'protein', 21, 'as-fed'),
  ('b61c76e5-2a2d-4451-ab3b-babaa264c6e6', 'fat', 19, 'as-fed'),
  ('b61c76e5-2a2d-4451-ab3b-babaa264c6e6', 'fiber', 1.1, 'as-fed'),
  ('b61c76e5-2a2d-4451-ab3b-babaa264c6e6', 'ash', 6.2, 'as-fed'),
  ('b61c76e5-2a2d-4451-ab3b-babaa264c6e6', 'omega3', 0.86, 'as-fed'),
  ('b61c76e5-2a2d-4451-ab3b-babaa264c6e6', 'omega6', 4.17, 'as-fed');

-- Royal Canin — Hypoallergenic (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/hypoallergenic-4084',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Omega-6 overgenomen uit de opgave "Essentieel vetzuur (linolzuur)" (linolzuur is een omega-6 vetzuur). Calcium, fosfor en omega-3 worden niet vermeld.'
 where id = '62de4841-564d-4acc-870e-6c72af0c6126';
delete from public.recipe_nutrition where recipe_version_id = '62de4841-564d-4acc-870e-6c72af0c6126';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('62de4841-564d-4acc-870e-6c72af0c6126', 'protein', 7, 'as-fed'),
  ('62de4841-564d-4acc-870e-6c72af0c6126', 'fat', 3.5, 'as-fed'),
  ('62de4841-564d-4acc-870e-6c72af0c6126', 'fiber', 1.7, 'as-fed'),
  ('62de4841-564d-4acc-870e-6c72af0c6126', 'ash', 2.4, 'as-fed'),
  ('62de4841-564d-4acc-870e-6c72af0c6126', 'moisture', 75.3, 'as-fed'),
  ('62de4841-564d-4acc-870e-6c72af0c6126', 'omega6', 1.5, 'as-fed');

commit;
