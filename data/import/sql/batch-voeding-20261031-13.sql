begin;

-- Jarco — Hondenbrokken Natural Giant Junior Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-giant-junior-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 4100 kcal/kg naar 410 kcal/100 g (gedeeld door 10).'
 where id = '3d83d0c0-a50c-41a1-a618-20478100f560';
delete from public.recipe_nutrition where recipe_version_id = '3d83d0c0-a50c-41a1-a618-20478100f560';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3d83d0c0-a50c-41a1-a618-20478100f560', 'protein', 30, 'as-fed'),
  ('3d83d0c0-a50c-41a1-a618-20478100f560', 'fat', 18, 'as-fed'),
  ('3d83d0c0-a50c-41a1-a618-20478100f560', 'fiber', 6, 'as-fed'),
  ('3d83d0c0-a50c-41a1-a618-20478100f560', 'ash', 6.8, 'as-fed'),
  ('3d83d0c0-a50c-41a1-a618-20478100f560', 'moisture', 8, 'as-fed'),
  ('3d83d0c0-a50c-41a1-a618-20478100f560', 'kcal', 410, 'as-fed'),
  ('3d83d0c0-a50c-41a1-a618-20478100f560', 'calcium', 1, 'as-fed'),
  ('3d83d0c0-a50c-41a1-a618-20478100f560', 'phosphorus', 0.8, 'as-fed'),
  ('3d83d0c0-a50c-41a1-a618-20478100f560', 'omega3', 0.3, 'as-fed'),
  ('3d83d0c0-a50c-41a1-a618-20478100f560', 'omega6', 2.5, 'as-fed');

-- Jarco — Hondenbrokken Natural Giant Puppy Kalkoen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-giant-puppy-kalkoen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3800 kcal/kg naar 380 kcal/100 g (gedeeld door 10).'
 where id = 'e37a36ad-f8f4-4a80-bd68-65ed5b65b4b0';
delete from public.recipe_nutrition where recipe_version_id = 'e37a36ad-f8f4-4a80-bd68-65ed5b65b4b0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e37a36ad-f8f4-4a80-bd68-65ed5b65b4b0', 'protein', 25, 'as-fed'),
  ('e37a36ad-f8f4-4a80-bd68-65ed5b65b4b0', 'fat', 15, 'as-fed'),
  ('e37a36ad-f8f4-4a80-bd68-65ed5b65b4b0', 'fiber', 2.5, 'as-fed'),
  ('e37a36ad-f8f4-4a80-bd68-65ed5b65b4b0', 'ash', 5.5, 'as-fed'),
  ('e37a36ad-f8f4-4a80-bd68-65ed5b65b4b0', 'moisture', 9, 'as-fed'),
  ('e37a36ad-f8f4-4a80-bd68-65ed5b65b4b0', 'kcal', 380, 'as-fed'),
  ('e37a36ad-f8f4-4a80-bd68-65ed5b65b4b0', 'calcium', 1, 'as-fed'),
  ('e37a36ad-f8f4-4a80-bd68-65ed5b65b4b0', 'phosphorus', 0.8, 'as-fed'),
  ('e37a36ad-f8f4-4a80-bd68-65ed5b65b4b0', 'omega3', 0.3, 'as-fed'),
  ('e37a36ad-f8f4-4a80-bd68-65ed5b65b4b0', 'omega6', 2.5, 'as-fed');

-- Jarco — Hondenbrokken Natural Large Adult Eend (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-large-adult-eend',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3653 kcal/kg naar 365.3 kcal/100 g (gedeeld door 10).'
 where id = '2467385a-c044-4cbf-aacd-d81bbe4f4771';
delete from public.recipe_nutrition where recipe_version_id = '2467385a-c044-4cbf-aacd-d81bbe4f4771';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2467385a-c044-4cbf-aacd-d81bbe4f4771', 'protein', 24, 'as-fed'),
  ('2467385a-c044-4cbf-aacd-d81bbe4f4771', 'fat', 13, 'as-fed'),
  ('2467385a-c044-4cbf-aacd-d81bbe4f4771', 'fiber', 2.5, 'as-fed'),
  ('2467385a-c044-4cbf-aacd-d81bbe4f4771', 'ash', 5.5, 'as-fed'),
  ('2467385a-c044-4cbf-aacd-d81bbe4f4771', 'moisture', 9, 'as-fed'),
  ('2467385a-c044-4cbf-aacd-d81bbe4f4771', 'kcal', 365.3, 'as-fed'),
  ('2467385a-c044-4cbf-aacd-d81bbe4f4771', 'calcium', 1.2, 'as-fed'),
  ('2467385a-c044-4cbf-aacd-d81bbe4f4771', 'phosphorus', 0.9, 'as-fed'),
  ('2467385a-c044-4cbf-aacd-d81bbe4f4771', 'omega3', 0.2, 'as-fed'),
  ('2467385a-c044-4cbf-aacd-d81bbe4f4771', 'omega6', 2, 'as-fed');

-- Jarco — Hondenbrokken Natural Large Adult Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-large-adult-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3653 kcal/kg naar 365.3 kcal/100 g (gedeeld door 10).'
 where id = '7113d8bb-37c6-43a1-9026-7cdf665ba025';
delete from public.recipe_nutrition where recipe_version_id = '7113d8bb-37c6-43a1-9026-7cdf665ba025';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7113d8bb-37c6-43a1-9026-7cdf665ba025', 'protein', 25, 'as-fed'),
  ('7113d8bb-37c6-43a1-9026-7cdf665ba025', 'fat', 12, 'as-fed'),
  ('7113d8bb-37c6-43a1-9026-7cdf665ba025', 'fiber', 3, 'as-fed'),
  ('7113d8bb-37c6-43a1-9026-7cdf665ba025', 'ash', 6, 'as-fed'),
  ('7113d8bb-37c6-43a1-9026-7cdf665ba025', 'moisture', 9, 'as-fed'),
  ('7113d8bb-37c6-43a1-9026-7cdf665ba025', 'kcal', 365.3, 'as-fed'),
  ('7113d8bb-37c6-43a1-9026-7cdf665ba025', 'calcium', 1.1, 'as-fed'),
  ('7113d8bb-37c6-43a1-9026-7cdf665ba025', 'phosphorus', 0.8, 'as-fed'),
  ('7113d8bb-37c6-43a1-9026-7cdf665ba025', 'omega3', 0.3, 'as-fed'),
  ('7113d8bb-37c6-43a1-9026-7cdf665ba025', 'omega6', 2.2, 'as-fed');

-- Jarco — Hondenbrokken Natural Large Puppy Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-large-puppy-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3979 kcal/kg naar 397.9 kcal/100 g (gedeeld door 10).'
 where id = '586d5ea7-30f5-4b02-83b0-266d7f7944fb';
delete from public.recipe_nutrition where recipe_version_id = '586d5ea7-30f5-4b02-83b0-266d7f7944fb';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('586d5ea7-30f5-4b02-83b0-266d7f7944fb', 'protein', 25, 'as-fed'),
  ('586d5ea7-30f5-4b02-83b0-266d7f7944fb', 'fat', 16, 'as-fed'),
  ('586d5ea7-30f5-4b02-83b0-266d7f7944fb', 'fiber', 2.4, 'as-fed'),
  ('586d5ea7-30f5-4b02-83b0-266d7f7944fb', 'ash', 5.7, 'as-fed'),
  ('586d5ea7-30f5-4b02-83b0-266d7f7944fb', 'moisture', 10, 'as-fed'),
  ('586d5ea7-30f5-4b02-83b0-266d7f7944fb', 'kcal', 397.9, 'as-fed'),
  ('586d5ea7-30f5-4b02-83b0-266d7f7944fb', 'calcium', 1.07, 'as-fed'),
  ('586d5ea7-30f5-4b02-83b0-266d7f7944fb', 'phosphorus', 0.8, 'as-fed'),
  ('586d5ea7-30f5-4b02-83b0-266d7f7944fb', 'omega3', 0.3, 'as-fed'),
  ('586d5ea7-30f5-4b02-83b0-266d7f7944fb', 'omega6', 2.2, 'as-fed');

-- Jarco — Hondenbrokken Natural Large Senior Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-large-senior-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3483 kcal/kg naar 348.3 kcal/100 g (gedeeld door 10).'
 where id = 'e6464867-864e-43a0-b286-5e73bc088734';
delete from public.recipe_nutrition where recipe_version_id = 'e6464867-864e-43a0-b286-5e73bc088734';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e6464867-864e-43a0-b286-5e73bc088734', 'protein', 23, 'as-fed'),
  ('e6464867-864e-43a0-b286-5e73bc088734', 'fat', 10, 'as-fed'),
  ('e6464867-864e-43a0-b286-5e73bc088734', 'fiber', 3, 'as-fed'),
  ('e6464867-864e-43a0-b286-5e73bc088734', 'ash', 6, 'as-fed'),
  ('e6464867-864e-43a0-b286-5e73bc088734', 'moisture', 9, 'as-fed'),
  ('e6464867-864e-43a0-b286-5e73bc088734', 'kcal', 348.3, 'as-fed'),
  ('e6464867-864e-43a0-b286-5e73bc088734', 'calcium', 1.1, 'as-fed'),
  ('e6464867-864e-43a0-b286-5e73bc088734', 'phosphorus', 0.8, 'as-fed'),
  ('e6464867-864e-43a0-b286-5e73bc088734', 'omega3', 0.3, 'as-fed'),
  ('e6464867-864e-43a0-b286-5e73bc088734', 'omega6', 2.3, 'as-fed');

-- Jarco — Hondenbrokken Natural Light Rund (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-light-rund',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3200 kcal/kg naar 320 kcal/100 g (gedeeld door 10).'
 where id = 'bb0f1cdc-4bb9-4966-b0be-5e80ea6bab7d';
delete from public.recipe_nutrition where recipe_version_id = 'bb0f1cdc-4bb9-4966-b0be-5e80ea6bab7d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('bb0f1cdc-4bb9-4966-b0be-5e80ea6bab7d', 'protein', 20, 'as-fed'),
  ('bb0f1cdc-4bb9-4966-b0be-5e80ea6bab7d', 'fat', 10, 'as-fed'),
  ('bb0f1cdc-4bb9-4966-b0be-5e80ea6bab7d', 'fiber', 4.5, 'as-fed'),
  ('bb0f1cdc-4bb9-4966-b0be-5e80ea6bab7d', 'ash', 4.5, 'as-fed'),
  ('bb0f1cdc-4bb9-4966-b0be-5e80ea6bab7d', 'moisture', 10, 'as-fed'),
  ('bb0f1cdc-4bb9-4966-b0be-5e80ea6bab7d', 'kcal', 320, 'as-fed'),
  ('bb0f1cdc-4bb9-4966-b0be-5e80ea6bab7d', 'calcium', 0.9, 'as-fed'),
  ('bb0f1cdc-4bb9-4966-b0be-5e80ea6bab7d', 'phosphorus', 0.7, 'as-fed'),
  ('bb0f1cdc-4bb9-4966-b0be-5e80ea6bab7d', 'omega3', 0.2, 'as-fed'),
  ('bb0f1cdc-4bb9-4966-b0be-5e80ea6bab7d', 'omega6', 1.4, 'as-fed');

-- Jarco — Hondenbrokken Natural Medium Adult Eend (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-medium-adult-eend',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3653 kcal/kg naar 365.3 kcal/100 g (gedeeld door 10).'
 where id = '04706e71-b9ef-4123-8a6b-d2ab2be9d626';
delete from public.recipe_nutrition where recipe_version_id = '04706e71-b9ef-4123-8a6b-d2ab2be9d626';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('04706e71-b9ef-4123-8a6b-d2ab2be9d626', 'protein', 25, 'as-fed'),
  ('04706e71-b9ef-4123-8a6b-d2ab2be9d626', 'fat', 12, 'as-fed'),
  ('04706e71-b9ef-4123-8a6b-d2ab2be9d626', 'fiber', 3, 'as-fed'),
  ('04706e71-b9ef-4123-8a6b-d2ab2be9d626', 'ash', 6, 'as-fed'),
  ('04706e71-b9ef-4123-8a6b-d2ab2be9d626', 'moisture', 9, 'as-fed'),
  ('04706e71-b9ef-4123-8a6b-d2ab2be9d626', 'kcal', 365.3, 'as-fed'),
  ('04706e71-b9ef-4123-8a6b-d2ab2be9d626', 'calcium', 1.1, 'as-fed'),
  ('04706e71-b9ef-4123-8a6b-d2ab2be9d626', 'phosphorus', 0.8, 'as-fed'),
  ('04706e71-b9ef-4123-8a6b-d2ab2be9d626', 'omega3', 0.3, 'as-fed'),
  ('04706e71-b9ef-4123-8a6b-d2ab2be9d626', 'omega6', 2.2, 'as-fed');

-- Jarco — Hondenbrokken Natural Medium Adult Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-medium-adult-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Bron vermeldt ''Ruwe celstof 33%'' en ''Energiewaarde 2,652 kcal/kg''; deze waarden wijken sterk af van de overige waarden en lijken typefouten. De celstofwaarde is niet overgenomen omdat 33% voor deze brok onmogelijk is; de waarde blijft leeg. De energiewaarde is door de tegenstrijdige notatie niet omgerekend en blijft null. Calcium staat op de bron als ''Clacium'' (1,1%) en is als calcium overgenomen.'
 where id = '4c3e1030-4a91-4a91-9d0f-810c0db70acd';
delete from public.recipe_nutrition where recipe_version_id = '4c3e1030-4a91-4a91-9d0f-810c0db70acd';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4c3e1030-4a91-4a91-9d0f-810c0db70acd', 'protein', 25, 'as-fed'),
  ('4c3e1030-4a91-4a91-9d0f-810c0db70acd', 'fat', 12, 'as-fed'),
  ('4c3e1030-4a91-4a91-9d0f-810c0db70acd', 'ash', 6, 'as-fed'),
  ('4c3e1030-4a91-4a91-9d0f-810c0db70acd', 'moisture', 9, 'as-fed'),
  ('4c3e1030-4a91-4a91-9d0f-810c0db70acd', 'calcium', 1.1, 'as-fed'),
  ('4c3e1030-4a91-4a91-9d0f-810c0db70acd', 'phosphorus', 0.8, 'as-fed'),
  ('4c3e1030-4a91-4a91-9d0f-810c0db70acd', 'omega3', 0.3, 'as-fed'),
  ('4c3e1030-4a91-4a91-9d0f-810c0db70acd', 'omega6', 2.2, 'as-fed');

-- Jarco — Hondenbrokken Natural Medium Puppy Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-medium-puppy-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 4060 kcal/kg naar 406 kcal/100 g (gedeeld door 10).'
 where id = '05ffebcd-2da7-475d-8887-ce3e5428b1db';
delete from public.recipe_nutrition where recipe_version_id = '05ffebcd-2da7-475d-8887-ce3e5428b1db';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('05ffebcd-2da7-475d-8887-ce3e5428b1db', 'protein', 28, 'as-fed'),
  ('05ffebcd-2da7-475d-8887-ce3e5428b1db', 'fat', 18, 'as-fed'),
  ('05ffebcd-2da7-475d-8887-ce3e5428b1db', 'fiber', 2.4, 'as-fed'),
  ('05ffebcd-2da7-475d-8887-ce3e5428b1db', 'ash', 6.5, 'as-fed'),
  ('05ffebcd-2da7-475d-8887-ce3e5428b1db', 'moisture', 10, 'as-fed'),
  ('05ffebcd-2da7-475d-8887-ce3e5428b1db', 'kcal', 406, 'as-fed'),
  ('05ffebcd-2da7-475d-8887-ce3e5428b1db', 'calcium', 1.3, 'as-fed'),
  ('05ffebcd-2da7-475d-8887-ce3e5428b1db', 'phosphorus', 1, 'as-fed'),
  ('05ffebcd-2da7-475d-8887-ce3e5428b1db', 'omega3', 0.3, 'as-fed'),
  ('05ffebcd-2da7-475d-8887-ce3e5428b1db', 'omega6', 2.2, 'as-fed');

-- Jarco — Hondenbrokken Natural Medium Senior Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-medium-senior-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3653 kcal/kg naar 365.3 kcal/100 g (gedeeld door 10).'
 where id = '347d753d-ab61-4a09-9cdb-f3e479f29f2d';
delete from public.recipe_nutrition where recipe_version_id = '347d753d-ab61-4a09-9cdb-f3e479f29f2d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('347d753d-ab61-4a09-9cdb-f3e479f29f2d', 'protein', 25, 'as-fed'),
  ('347d753d-ab61-4a09-9cdb-f3e479f29f2d', 'fat', 12, 'as-fed'),
  ('347d753d-ab61-4a09-9cdb-f3e479f29f2d', 'fiber', 3, 'as-fed'),
  ('347d753d-ab61-4a09-9cdb-f3e479f29f2d', 'ash', 6, 'as-fed'),
  ('347d753d-ab61-4a09-9cdb-f3e479f29f2d', 'moisture', 9, 'as-fed'),
  ('347d753d-ab61-4a09-9cdb-f3e479f29f2d', 'kcal', 365.3, 'as-fed'),
  ('347d753d-ab61-4a09-9cdb-f3e479f29f2d', 'calcium', 1.1, 'as-fed'),
  ('347d753d-ab61-4a09-9cdb-f3e479f29f2d', 'phosphorus', 0.8, 'as-fed'),
  ('347d753d-ab61-4a09-9cdb-f3e479f29f2d', 'omega3', 0.3, 'as-fed'),
  ('347d753d-ab61-4a09-9cdb-f3e479f29f2d', 'omega6', 2.2, 'as-fed');

-- Jarco — Hondenbrokken Natural Mini Adult Eend (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/natural-mini-adult-eend',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 4060 kcal/kg naar 406 kcal/100 g (gedeeld door 10).'
 where id = 'a9758915-64f7-48c7-978e-fe855ab853fa';
delete from public.recipe_nutrition where recipe_version_id = 'a9758915-64f7-48c7-978e-fe855ab853fa';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a9758915-64f7-48c7-978e-fe855ab853fa', 'protein', 28, 'as-fed'),
  ('a9758915-64f7-48c7-978e-fe855ab853fa', 'fat', 18, 'as-fed'),
  ('a9758915-64f7-48c7-978e-fe855ab853fa', 'fiber', 2.4, 'as-fed'),
  ('a9758915-64f7-48c7-978e-fe855ab853fa', 'ash', 6.4, 'as-fed'),
  ('a9758915-64f7-48c7-978e-fe855ab853fa', 'moisture', 10, 'as-fed'),
  ('a9758915-64f7-48c7-978e-fe855ab853fa', 'kcal', 406, 'as-fed'),
  ('a9758915-64f7-48c7-978e-fe855ab853fa', 'calcium', 1.3, 'as-fed'),
  ('a9758915-64f7-48c7-978e-fe855ab853fa', 'phosphorus', 1, 'as-fed'),
  ('a9758915-64f7-48c7-978e-fe855ab853fa', 'omega3', 0.3, 'as-fed'),
  ('a9758915-64f7-48c7-978e-fe855ab853fa', 'omega6', 2.2, 'as-fed');

-- Jarco — Hondenbrokken Natural Mini Adult Zalm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/natural-hondenbrokken-mini-adult-zalm',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3700 kcal/kg naar 370 kcal/100 g (gedeeld door 10).'
 where id = 'f75151d5-5dd8-4508-bb6d-e9810d46b535';
delete from public.recipe_nutrition where recipe_version_id = 'f75151d5-5dd8-4508-bb6d-e9810d46b535';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f75151d5-5dd8-4508-bb6d-e9810d46b535', 'protein', 23, 'as-fed'),
  ('f75151d5-5dd8-4508-bb6d-e9810d46b535', 'fat', 13, 'as-fed'),
  ('f75151d5-5dd8-4508-bb6d-e9810d46b535', 'fiber', 2.4, 'as-fed'),
  ('f75151d5-5dd8-4508-bb6d-e9810d46b535', 'ash', 6.4, 'as-fed'),
  ('f75151d5-5dd8-4508-bb6d-e9810d46b535', 'moisture', 10, 'as-fed'),
  ('f75151d5-5dd8-4508-bb6d-e9810d46b535', 'kcal', 370, 'as-fed'),
  ('f75151d5-5dd8-4508-bb6d-e9810d46b535', 'calcium', 1, 'as-fed'),
  ('f75151d5-5dd8-4508-bb6d-e9810d46b535', 'phosphorus', 0.9, 'as-fed'),
  ('f75151d5-5dd8-4508-bb6d-e9810d46b535', 'omega3', 0.6, 'as-fed'),
  ('f75151d5-5dd8-4508-bb6d-e9810d46b535', 'omega6', 3, 'as-fed');

-- Jarco — Hondenbrokken Natural Sensitive Hert (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-sensitive-hert',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3650 kcal/kg naar 365 kcal/100 g (gedeeld door 10).'
 where id = '7aabb7f7-fecf-4130-a0e0-2c512b676c77';
delete from public.recipe_nutrition where recipe_version_id = '7aabb7f7-fecf-4130-a0e0-2c512b676c77';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7aabb7f7-fecf-4130-a0e0-2c512b676c77', 'protein', 20, 'as-fed'),
  ('7aabb7f7-fecf-4130-a0e0-2c512b676c77', 'fat', 10, 'as-fed'),
  ('7aabb7f7-fecf-4130-a0e0-2c512b676c77', 'fiber', 2.8, 'as-fed'),
  ('7aabb7f7-fecf-4130-a0e0-2c512b676c77', 'ash', 6.3, 'as-fed'),
  ('7aabb7f7-fecf-4130-a0e0-2c512b676c77', 'moisture', 10, 'as-fed'),
  ('7aabb7f7-fecf-4130-a0e0-2c512b676c77', 'kcal', 365, 'as-fed'),
  ('7aabb7f7-fecf-4130-a0e0-2c512b676c77', 'calcium', 1.2, 'as-fed'),
  ('7aabb7f7-fecf-4130-a0e0-2c512b676c77', 'phosphorus', 0.9, 'as-fed'),
  ('7aabb7f7-fecf-4130-a0e0-2c512b676c77', 'omega3', 0.3, 'as-fed'),
  ('7aabb7f7-fecf-4130-a0e0-2c512b676c77', 'omega6', 2.2, 'as-fed');

-- Jarco — Hondenbrokken Natural Sensitive Insect (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-sensitive-insect',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3260 kcal/kg naar 326 kcal/100 g (gedeeld door 10). Niet vermeld: omega-3, omega-6.'
 where id = 'b1b313a2-b575-4d95-8338-a5c7f9d28489';
delete from public.recipe_nutrition where recipe_version_id = 'b1b313a2-b575-4d95-8338-a5c7f9d28489';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b1b313a2-b575-4d95-8338-a5c7f9d28489', 'protein', 22, 'as-fed'),
  ('b1b313a2-b575-4d95-8338-a5c7f9d28489', 'fat', 12, 'as-fed'),
  ('b1b313a2-b575-4d95-8338-a5c7f9d28489', 'fiber', 5.5, 'as-fed'),
  ('b1b313a2-b575-4d95-8338-a5c7f9d28489', 'ash', 6.5, 'as-fed'),
  ('b1b313a2-b575-4d95-8338-a5c7f9d28489', 'moisture', 9, 'as-fed'),
  ('b1b313a2-b575-4d95-8338-a5c7f9d28489', 'kcal', 326, 'as-fed'),
  ('b1b313a2-b575-4d95-8338-a5c7f9d28489', 'calcium', 1.4, 'as-fed'),
  ('b1b313a2-b575-4d95-8338-a5c7f9d28489', 'phosphorus', 1.1, 'as-fed');

-- Jarco — Hondenbrokken Natural Sensitive Lam (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-sensitive-lam',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3600 kcal/kg naar 360 kcal/100 g (gedeeld door 10).'
 where id = 'a80be764-a0c5-49c2-980e-51a1916d9418';
delete from public.recipe_nutrition where recipe_version_id = 'a80be764-a0c5-49c2-980e-51a1916d9418';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a80be764-a0c5-49c2-980e-51a1916d9418', 'protein', 23, 'as-fed'),
  ('a80be764-a0c5-49c2-980e-51a1916d9418', 'fat', 10, 'as-fed'),
  ('a80be764-a0c5-49c2-980e-51a1916d9418', 'fiber', 3.3, 'as-fed'),
  ('a80be764-a0c5-49c2-980e-51a1916d9418', 'ash', 7.7, 'as-fed'),
  ('a80be764-a0c5-49c2-980e-51a1916d9418', 'moisture', 10, 'as-fed'),
  ('a80be764-a0c5-49c2-980e-51a1916d9418', 'kcal', 360, 'as-fed'),
  ('a80be764-a0c5-49c2-980e-51a1916d9418', 'calcium', 1.4, 'as-fed'),
  ('a80be764-a0c5-49c2-980e-51a1916d9418', 'phosphorus', 1.2, 'as-fed'),
  ('a80be764-a0c5-49c2-980e-51a1916d9418', 'omega3', 0.3, 'as-fed'),
  ('a80be764-a0c5-49c2-980e-51a1916d9418', 'omega6', 2.2, 'as-fed');

-- Jarco — Hondenbrokken Natural Sensitive Zalm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-sensitive-zalm',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3600 kcal/kg naar 360 kcal/100 g (gedeeld door 10).'
 where id = 'b8ab62c7-a256-47f2-9670-eb6dc3da12d4';
delete from public.recipe_nutrition where recipe_version_id = 'b8ab62c7-a256-47f2-9670-eb6dc3da12d4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b8ab62c7-a256-47f2-9670-eb6dc3da12d4', 'protein', 24, 'as-fed'),
  ('b8ab62c7-a256-47f2-9670-eb6dc3da12d4', 'fat', 13, 'as-fed'),
  ('b8ab62c7-a256-47f2-9670-eb6dc3da12d4', 'fiber', 2.5, 'as-fed'),
  ('b8ab62c7-a256-47f2-9670-eb6dc3da12d4', 'ash', 6, 'as-fed'),
  ('b8ab62c7-a256-47f2-9670-eb6dc3da12d4', 'moisture', 9, 'as-fed'),
  ('b8ab62c7-a256-47f2-9670-eb6dc3da12d4', 'kcal', 360, 'as-fed'),
  ('b8ab62c7-a256-47f2-9670-eb6dc3da12d4', 'calcium', 1.3, 'as-fed'),
  ('b8ab62c7-a256-47f2-9670-eb6dc3da12d4', 'phosphorus', 0.9, 'as-fed'),
  ('b8ab62c7-a256-47f2-9670-eb6dc3da12d4', 'omega3', 0.6, 'as-fed'),
  ('b8ab62c7-a256-47f2-9670-eb6dc3da12d4', 'omega6', 3, 'as-fed');

-- Jarco — Hondenbrokken Veterinair Hypoallergeen H.R.D. (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-veterinair-hypoallergeen-h-r-d',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3645 kcal/kg naar 364.5 kcal/100 g (gedeeld door 10). Niet vermeld: vocht.'
 where id = 'e11dfde6-6a0f-4968-ad76-ade6db3f57d1';
delete from public.recipe_nutrition where recipe_version_id = 'e11dfde6-6a0f-4968-ad76-ade6db3f57d1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e11dfde6-6a0f-4968-ad76-ade6db3f57d1', 'protein', 20, 'as-fed'),
  ('e11dfde6-6a0f-4968-ad76-ade6db3f57d1', 'fat', 10, 'as-fed'),
  ('e11dfde6-6a0f-4968-ad76-ade6db3f57d1', 'fiber', 2.4, 'as-fed'),
  ('e11dfde6-6a0f-4968-ad76-ade6db3f57d1', 'ash', 5.3, 'as-fed'),
  ('e11dfde6-6a0f-4968-ad76-ade6db3f57d1', 'kcal', 364.5, 'as-fed'),
  ('e11dfde6-6a0f-4968-ad76-ade6db3f57d1', 'calcium', 1.2, 'as-fed'),
  ('e11dfde6-6a0f-4968-ad76-ade6db3f57d1', 'phosphorus', 0.7, 'as-fed'),
  ('e11dfde6-6a0f-4968-ad76-ade6db3f57d1', 'omega3', 0.6, 'as-fed'),
  ('e11dfde6-6a0f-4968-ad76-ade6db3f57d1', 'omega6', 1.9, 'as-fed');

-- Jarco — Hondenbrokken Veterinair Hypoallergeen L.R.D. (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-veterinair-hypoallergeen-l-r-d',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3480 kcal/kg naar 348 kcal/100 g (gedeeld door 10).'
 where id = 'a09a453d-9af6-4c08-b190-ed4f888a6113';
delete from public.recipe_nutrition where recipe_version_id = 'a09a453d-9af6-4c08-b190-ed4f888a6113';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a09a453d-9af6-4c08-b190-ed4f888a6113', 'protein', 23, 'as-fed'),
  ('a09a453d-9af6-4c08-b190-ed4f888a6113', 'fat', 9.8, 'as-fed'),
  ('a09a453d-9af6-4c08-b190-ed4f888a6113', 'fiber', 3, 'as-fed'),
  ('a09a453d-9af6-4c08-b190-ed4f888a6113', 'ash', 7.7, 'as-fed'),
  ('a09a453d-9af6-4c08-b190-ed4f888a6113', 'moisture', 9, 'as-fed'),
  ('a09a453d-9af6-4c08-b190-ed4f888a6113', 'kcal', 348, 'as-fed'),
  ('a09a453d-9af6-4c08-b190-ed4f888a6113', 'calcium', 1.6, 'as-fed'),
  ('a09a453d-9af6-4c08-b190-ed4f888a6113', 'phosphorus', 1.2, 'as-fed'),
  ('a09a453d-9af6-4c08-b190-ed4f888a6113', 'omega3', 0.5, 'as-fed'),
  ('a09a453d-9af6-4c08-b190-ed4f888a6113', 'omega6', 3, 'as-fed');

-- Jarco — Hondenbrokken Veterinair Hypoallergeen P.E.D. (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-veterinair-hypoallergeen-p-e-d',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3515 kcal/kg naar 351.5 kcal/100 g (gedeeld door 10). Niet vermeld: vocht, omega-3, omega-6.'
 where id = '0ea88354-2bd4-4948-ab63-7601f6929edb';
delete from public.recipe_nutrition where recipe_version_id = '0ea88354-2bd4-4948-ab63-7601f6929edb';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0ea88354-2bd4-4948-ab63-7601f6929edb', 'protein', 23, 'as-fed'),
  ('0ea88354-2bd4-4948-ab63-7601f6929edb', 'fat', 9, 'as-fed'),
  ('0ea88354-2bd4-4948-ab63-7601f6929edb', 'fiber', 2.5, 'as-fed'),
  ('0ea88354-2bd4-4948-ab63-7601f6929edb', 'ash', 5.3, 'as-fed'),
  ('0ea88354-2bd4-4948-ab63-7601f6929edb', 'kcal', 351.5, 'as-fed'),
  ('0ea88354-2bd4-4948-ab63-7601f6929edb', 'calcium', 0.9, 'as-fed'),
  ('0ea88354-2bd4-4948-ab63-7601f6929edb', 'phosphorus', 0.6, 'as-fed');

-- Jarco — Hondenbrokken Veterinair Weight reduction V.C.D. (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-veterinair-weight-reduction-v-c-d',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 2700 kcal/kg naar 270 kcal/100 g (gedeeld door 10).'
 where id = 'ecd74a39-3ab6-4baf-b772-e2c844c1ad0f';
delete from public.recipe_nutrition where recipe_version_id = 'ecd74a39-3ab6-4baf-b772-e2c844c1ad0f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ecd74a39-3ab6-4baf-b772-e2c844c1ad0f', 'protein', 17, 'as-fed'),
  ('ecd74a39-3ab6-4baf-b772-e2c844c1ad0f', 'fat', 8, 'as-fed'),
  ('ecd74a39-3ab6-4baf-b772-e2c844c1ad0f', 'fiber', 9.5, 'as-fed'),
  ('ecd74a39-3ab6-4baf-b772-e2c844c1ad0f', 'ash', 5, 'as-fed'),
  ('ecd74a39-3ab6-4baf-b772-e2c844c1ad0f', 'moisture', 9, 'as-fed'),
  ('ecd74a39-3ab6-4baf-b772-e2c844c1ad0f', 'kcal', 270, 'as-fed'),
  ('ecd74a39-3ab6-4baf-b772-e2c844c1ad0f', 'calcium', 1, 'as-fed'),
  ('ecd74a39-3ab6-4baf-b772-e2c844c1ad0f', 'phosphorus', 0.7, 'as-fed'),
  ('ecd74a39-3ab6-4baf-b772-e2c844c1ad0f', 'omega3', 0.3, 'as-fed'),
  ('ecd74a39-3ab6-4baf-b772-e2c844c1ad0f', 'omega6', 2.2, 'as-fed');

-- Jarco — Natural Classic Persbrok Vers Vlees Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/natural-classic-persbrok-vers-vlees-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3750 kcal/kg naar 375 kcal/100 g (gedeeld door 10).'
 where id = '0548de6e-52cd-4a84-8a08-6f619f76b107';
delete from public.recipe_nutrition where recipe_version_id = '0548de6e-52cd-4a84-8a08-6f619f76b107';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0548de6e-52cd-4a84-8a08-6f619f76b107', 'protein', 24, 'as-fed'),
  ('0548de6e-52cd-4a84-8a08-6f619f76b107', 'fat', 13, 'as-fed'),
  ('0548de6e-52cd-4a84-8a08-6f619f76b107', 'fiber', 2.7, 'as-fed'),
  ('0548de6e-52cd-4a84-8a08-6f619f76b107', 'ash', 5.3, 'as-fed'),
  ('0548de6e-52cd-4a84-8a08-6f619f76b107', 'moisture', 10, 'as-fed'),
  ('0548de6e-52cd-4a84-8a08-6f619f76b107', 'kcal', 375, 'as-fed'),
  ('0548de6e-52cd-4a84-8a08-6f619f76b107', 'calcium', 1.2, 'as-fed'),
  ('0548de6e-52cd-4a84-8a08-6f619f76b107', 'phosphorus', 0.8, 'as-fed'),
  ('0548de6e-52cd-4a84-8a08-6f619f76b107', 'omega3', 0.4, 'as-fed'),
  ('0548de6e-52cd-4a84-8a08-6f619f76b107', 'omega6', 2, 'as-fed');

-- Jarco — Vers gestoomde maaltijd Eend (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/gestoomde-maaltijd-eend',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'De fabrikant vermeldt geen energiewaarde. De bron vermeldt alleen ''omega 3+6 0,3%'' als gecombineerde waarde; omega-3 en omega-6 zijn daarom null. Niet vermeld: kcal, calcium, fosfor, omega-3, omega-6.'
 where id = '69a2be7f-55dd-497a-b798-04959304cd56';
delete from public.recipe_nutrition where recipe_version_id = '69a2be7f-55dd-497a-b798-04959304cd56';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('69a2be7f-55dd-497a-b798-04959304cd56', 'protein', 10, 'as-fed'),
  ('69a2be7f-55dd-497a-b798-04959304cd56', 'fat', 9.5, 'as-fed'),
  ('69a2be7f-55dd-497a-b798-04959304cd56', 'fiber', 0.5, 'as-fed'),
  ('69a2be7f-55dd-497a-b798-04959304cd56', 'ash', 3.5, 'as-fed'),
  ('69a2be7f-55dd-497a-b798-04959304cd56', 'moisture', 75, 'as-fed');

-- Jarco — Vers gestoomde maaltijd Lam (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/vers-gestoomde-maaltijd-lam',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'De fabrikant vermeldt geen energiewaarde. De bron vermeldt alleen ''omega 3+6 0,3%'' als gecombineerde waarde; omega-3 en omega-6 zijn daarom null. Niet vermeld: kcal, calcium, fosfor, omega-3, omega-6.'
 where id = '25eb62a4-ea58-4994-b96b-2d10507072d4';
delete from public.recipe_nutrition where recipe_version_id = '25eb62a4-ea58-4994-b96b-2d10507072d4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('25eb62a4-ea58-4994-b96b-2d10507072d4', 'protein', 10, 'as-fed'),
  ('25eb62a4-ea58-4994-b96b-2d10507072d4', 'fat', 9.5, 'as-fed'),
  ('25eb62a4-ea58-4994-b96b-2d10507072d4', 'fiber', 0.5, 'as-fed'),
  ('25eb62a4-ea58-4994-b96b-2d10507072d4', 'ash', 3.5, 'as-fed'),
  ('25eb62a4-ea58-4994-b96b-2d10507072d4', 'moisture', 75, 'as-fed');

-- Jarco — Vers gestoomde maaltijd Zalm (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/vers-gestoomde-maaltijd-zalm',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'De fabrikant vermeldt geen energiewaarde. De bron vermeldt alleen ''omega 3+6 0,3%'' als gecombineerde waarde; omega-3 en omega-6 zijn daarom null. Niet vermeld: kcal, calcium, fosfor, omega-3, omega-6.'
 where id = '98e57926-f142-41bc-a15a-71cb71873914';
delete from public.recipe_nutrition where recipe_version_id = '98e57926-f142-41bc-a15a-71cb71873914';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('98e57926-f142-41bc-a15a-71cb71873914', 'protein', 10, 'as-fed'),
  ('98e57926-f142-41bc-a15a-71cb71873914', 'fat', 9.5, 'as-fed'),
  ('98e57926-f142-41bc-a15a-71cb71873914', 'fiber', 0.5, 'as-fed'),
  ('98e57926-f142-41bc-a15a-71cb71873914', 'ash', 3.5, 'as-fed'),
  ('98e57926-f142-41bc-a15a-71cb71873914', 'moisture', 75, 'as-fed');

commit;
