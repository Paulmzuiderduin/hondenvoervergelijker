begin;

-- Specific — C-BIO-W with beef (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/c-bio-w-with-beef',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 426 kJ/100 g naar 101,8 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 staat niet als absolute waarde op de bron, alleen de verhouding n-3:n-6 (1:10); daarom is omega-6 null.'
 where id = '0da6d326-5f3d-4004-ade3-5797296c7735';
delete from public.recipe_nutrition where recipe_version_id = '0da6d326-5f3d-4004-ade3-5797296c7735';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0da6d326-5f3d-4004-ade3-5797296c7735', 'protein', 8.6, 'as-fed'),
  ('0da6d326-5f3d-4004-ade3-5797296c7735', 'fat', 7.3, 'as-fed'),
  ('0da6d326-5f3d-4004-ade3-5797296c7735', 'fiber', 0.9, 'as-fed'),
  ('0da6d326-5f3d-4004-ade3-5797296c7735', 'moisture', 79.3, 'as-fed'),
  ('0da6d326-5f3d-4004-ade3-5797296c7735', 'kcal', 101.8, 'as-fed'),
  ('0da6d326-5f3d-4004-ade3-5797296c7735', 'calcium', 0.35, 'as-fed'),
  ('0da6d326-5f3d-4004-ade3-5797296c7735', 'phosphorus', 0.25, 'as-fed'),
  ('0da6d326-5f3d-4004-ade3-5797296c7735', 'omega3', 0.2, 'as-fed');

-- Specific — C-BIO-W with fish (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/c-bio-w-with-fish',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 436 kJ/100 g naar 104,2 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 wordt niet vermeld. Omega-3 wordt niet vermeld.'
 where id = '945b7478-afbd-434d-ba47-0be8ea406fb8';
delete from public.recipe_nutrition where recipe_version_id = '945b7478-afbd-434d-ba47-0be8ea406fb8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('945b7478-afbd-434d-ba47-0be8ea406fb8', 'protein', 7.7, 'as-fed'),
  ('945b7478-afbd-434d-ba47-0be8ea406fb8', 'fat', 7.4, 'as-fed'),
  ('945b7478-afbd-434d-ba47-0be8ea406fb8', 'fiber', 0.2, 'as-fed'),
  ('945b7478-afbd-434d-ba47-0be8ea406fb8', 'moisture', 80.1, 'as-fed'),
  ('945b7478-afbd-434d-ba47-0be8ea406fb8', 'kcal', 104.2, 'as-fed'),
  ('945b7478-afbd-434d-ba47-0be8ea406fb8', 'calcium', 0.48, 'as-fed'),
  ('945b7478-afbd-434d-ba47-0be8ea406fb8', 'phosphorus', 0.32, 'as-fed');

-- Specific — CAD Active (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cad-active',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1843 kJ/100 g naar 440,5 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 staat niet als absolute waarde op de bron, alleen de verhouding n-3:n-6 (1:4); daarom is omega-6 null.'
 where id = 'f4fb8501-4f0b-4282-a4ac-39736e76a0f4';
delete from public.recipe_nutrition where recipe_version_id = 'f4fb8501-4f0b-4282-a4ac-39736e76a0f4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f4fb8501-4f0b-4282-a4ac-39736e76a0f4', 'protein', 29, 'as-fed'),
  ('f4fb8501-4f0b-4282-a4ac-39736e76a0f4', 'fat', 26, 'as-fed'),
  ('f4fb8501-4f0b-4282-a4ac-39736e76a0f4', 'fiber', 1.3, 'as-fed'),
  ('f4fb8501-4f0b-4282-a4ac-39736e76a0f4', 'moisture', 9.1, 'as-fed'),
  ('f4fb8501-4f0b-4282-a4ac-39736e76a0f4', 'kcal', 440.5, 'as-fed'),
  ('f4fb8501-4f0b-4282-a4ac-39736e76a0f4', 'calcium', 1.2, 'as-fed'),
  ('f4fb8501-4f0b-4282-a4ac-39736e76a0f4', 'phosphorus', 0.95, 'as-fed'),
  ('f4fb8501-4f0b-4282-a4ac-39736e76a0f4', 'omega3', 0.81, 'as-fed');

-- Specific — CCD Struvite Management (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/ccd-struvite-management',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1714 kJ/100 g naar 409,7 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 staat niet als absolute waarde op de bron, alleen de verhouding n-3:n-6 (1:7); daarom is omega-6 null.'
 where id = 'f96dc528-c796-4db3-af5a-7368175c9d86';
delete from public.recipe_nutrition where recipe_version_id = 'f96dc528-c796-4db3-af5a-7368175c9d86';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f96dc528-c796-4db3-af5a-7368175c9d86', 'protein', 21, 'as-fed'),
  ('f96dc528-c796-4db3-af5a-7368175c9d86', 'fat', 19, 'as-fed'),
  ('f96dc528-c796-4db3-af5a-7368175c9d86', 'fiber', 1.6, 'as-fed'),
  ('f96dc528-c796-4db3-af5a-7368175c9d86', 'moisture', 8.5, 'as-fed'),
  ('f96dc528-c796-4db3-af5a-7368175c9d86', 'kcal', 409.7, 'as-fed'),
  ('f96dc528-c796-4db3-af5a-7368175c9d86', 'calcium', 0.55, 'as-fed'),
  ('f96dc528-c796-4db3-af5a-7368175c9d86', 'phosphorus', 0.38, 'as-fed'),
  ('f96dc528-c796-4db3-af5a-7368175c9d86', 'omega3', 0.37, 'as-fed');

-- Specific — CDD Food Allergen Management (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cdd-food-allergen-management',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1584 kJ/100 g naar 378,6 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 staat niet als absolute waarde op de bron, alleen de verhouding n-3:n-6 (1:14); daarom is omega-6 null.'
 where id = '099c81ba-a8ce-41b5-8194-e161abd169fc';
delete from public.recipe_nutrition where recipe_version_id = '099c81ba-a8ce-41b5-8194-e161abd169fc';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('099c81ba-a8ce-41b5-8194-e161abd169fc', 'protein', 16, 'as-fed'),
  ('099c81ba-a8ce-41b5-8194-e161abd169fc', 'fat', 12, 'as-fed'),
  ('099c81ba-a8ce-41b5-8194-e161abd169fc', 'fiber', 1, 'as-fed'),
  ('099c81ba-a8ce-41b5-8194-e161abd169fc', 'moisture', 8.5, 'as-fed'),
  ('099c81ba-a8ce-41b5-8194-e161abd169fc', 'kcal', 378.6, 'as-fed'),
  ('099c81ba-a8ce-41b5-8194-e161abd169fc', 'calcium', 0.7, 'as-fed'),
  ('099c81ba-a8ce-41b5-8194-e161abd169fc', 'phosphorus', 0.54, 'as-fed'),
  ('099c81ba-a8ce-41b5-8194-e161abd169fc', 'omega3', 0.15, 'as-fed');

-- Specific — CDD-HY Food Allergen Management (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cdd-hy-food-allergen-management',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1551 kJ/100 g naar 370,7 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 staat niet als absolute waarde op de bron, alleen de verhouding n-3:n-6 (1:5); daarom is omega-6 null.'
 where id = 'ffa28dcb-501c-43f4-a959-8d8c403b29f0';
delete from public.recipe_nutrition where recipe_version_id = 'ffa28dcb-501c-43f4-a959-8d8c403b29f0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ffa28dcb-501c-43f4-a959-8d8c403b29f0', 'protein', 22.8, 'as-fed'),
  ('ffa28dcb-501c-43f4-a959-8d8c403b29f0', 'fat', 11.8, 'as-fed'),
  ('ffa28dcb-501c-43f4-a959-8d8c403b29f0', 'fiber', 1.8, 'as-fed'),
  ('ffa28dcb-501c-43f4-a959-8d8c403b29f0', 'moisture', 8.5, 'as-fed'),
  ('ffa28dcb-501c-43f4-a959-8d8c403b29f0', 'kcal', 370.7, 'as-fed'),
  ('ffa28dcb-501c-43f4-a959-8d8c403b29f0', 'calcium', 1.05, 'as-fed'),
  ('ffa28dcb-501c-43f4-a959-8d8c403b29f0', 'phosphorus', 0.85, 'as-fed'),
  ('ffa28dcb-501c-43f4-a959-8d8c403b29f0', 'omega3', 0.31, 'as-fed');

-- Specific — CDW Food Allergen Management (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cdw-food-allergen-management',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 564 kJ/100 g naar 134,8 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 staat niet als absolute waarde op de bron, alleen de verhouding n-3:n-6 (1:3); daarom is omega-6 null.'
 where id = '94f5ac9f-961b-4021-9bee-b860f6bd8420';
delete from public.recipe_nutrition where recipe_version_id = '94f5ac9f-961b-4021-9bee-b860f6bd8420';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('94f5ac9f-961b-4021-9bee-b860f6bd8420', 'protein', 7.6, 'as-fed'),
  ('94f5ac9f-961b-4021-9bee-b860f6bd8420', 'fat', 5.4, 'as-fed'),
  ('94f5ac9f-961b-4021-9bee-b860f6bd8420', 'fiber', 1, 'as-fed'),
  ('94f5ac9f-961b-4021-9bee-b860f6bd8420', 'moisture', 67.5, 'as-fed'),
  ('94f5ac9f-961b-4021-9bee-b860f6bd8420', 'kcal', 134.8, 'as-fed'),
  ('94f5ac9f-961b-4021-9bee-b860f6bd8420', 'calcium', 0.22, 'as-fed'),
  ('94f5ac9f-961b-4021-9bee-b860f6bd8420', 'phosphorus', 0.18, 'as-fed'),
  ('94f5ac9f-961b-4021-9bee-b860f6bd8420', 'omega3', 0.68, 'as-fed');

-- Specific — CED-DM Endocrine support (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/ced-dm-endocrine-support',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1407 kJ/100 g naar 336,3 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 staat niet als absolute waarde op de bron, alleen de verhouding n-3:n-6 (1:1); daarom is omega-6 null.'
 where id = '7a6d289c-256d-41d5-b7d6-365766d01301';
delete from public.recipe_nutrition where recipe_version_id = '7a6d289c-256d-41d5-b7d6-365766d01301';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7a6d289c-256d-41d5-b7d6-365766d01301', 'protein', 38, 'as-fed'),
  ('7a6d289c-256d-41d5-b7d6-365766d01301', 'fat', 12, 'as-fed'),
  ('7a6d289c-256d-41d5-b7d6-365766d01301', 'fiber', 7, 'as-fed'),
  ('7a6d289c-256d-41d5-b7d6-365766d01301', 'moisture', 9.5, 'as-fed'),
  ('7a6d289c-256d-41d5-b7d6-365766d01301', 'kcal', 336.3, 'as-fed'),
  ('7a6d289c-256d-41d5-b7d6-365766d01301', 'calcium', 0.9, 'as-fed'),
  ('7a6d289c-256d-41d5-b7d6-365766d01301', 'phosphorus', 0.5, 'as-fed'),
  ('7a6d289c-256d-41d5-b7d6-365766d01301', 'omega3', 1.6, 'as-fed');

-- Specific — CGD-M Senior medium breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cgd-m-senior-medium-breed',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1481 kJ/100 g naar 354 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 wordt niet vermeld.'
 where id = '7cd6fa11-b43b-4f18-9924-b575845c1f46';
delete from public.recipe_nutrition where recipe_version_id = '7cd6fa11-b43b-4f18-9924-b575845c1f46';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7cd6fa11-b43b-4f18-9924-b575845c1f46', 'protein', 20.1, 'as-fed'),
  ('7cd6fa11-b43b-4f18-9924-b575845c1f46', 'fat', 9.1, 'as-fed'),
  ('7cd6fa11-b43b-4f18-9924-b575845c1f46', 'fiber', 2.8, 'as-fed'),
  ('7cd6fa11-b43b-4f18-9924-b575845c1f46', 'moisture', 9.1, 'as-fed'),
  ('7cd6fa11-b43b-4f18-9924-b575845c1f46', 'kcal', 354, 'as-fed'),
  ('7cd6fa11-b43b-4f18-9924-b575845c1f46', 'calcium', 0.59, 'as-fed'),
  ('7cd6fa11-b43b-4f18-9924-b575845c1f46', 'phosphorus', 0.5, 'as-fed'),
  ('7cd6fa11-b43b-4f18-9924-b575845c1f46', 'omega3', 0.57, 'as-fed');

-- Specific — CGD-S Senior small breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cgd-s-senior-small-breed',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1481 kJ/100 g naar 354 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 wordt niet vermeld.'
 where id = '65e89a43-73fa-40e4-88ec-4a295247ffc7';
delete from public.recipe_nutrition where recipe_version_id = '65e89a43-73fa-40e4-88ec-4a295247ffc7';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('65e89a43-73fa-40e4-88ec-4a295247ffc7', 'protein', 20.1, 'as-fed'),
  ('65e89a43-73fa-40e4-88ec-4a295247ffc7', 'fat', 9.1, 'as-fed'),
  ('65e89a43-73fa-40e4-88ec-4a295247ffc7', 'fiber', 2.8, 'as-fed'),
  ('65e89a43-73fa-40e4-88ec-4a295247ffc7', 'moisture', 9.1, 'as-fed'),
  ('65e89a43-73fa-40e4-88ec-4a295247ffc7', 'kcal', 354, 'as-fed'),
  ('65e89a43-73fa-40e4-88ec-4a295247ffc7', 'calcium', 0.59, 'as-fed'),
  ('65e89a43-73fa-40e4-88ec-4a295247ffc7', 'phosphorus', 0.5, 'as-fed'),
  ('65e89a43-73fa-40e4-88ec-4a295247ffc7', 'omega3', 0.57, 'as-fed');

-- Specific — CGD-XL Senior large and giant breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cgd-xl-senior-large-and-giant-breed',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1471 kJ/100 g naar 351,6 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 staat niet als absolute waarde op de bron, alleen de verhouding n-3:n-6 (1:3); daarom is omega-6 null.'
 where id = '36955fcd-1702-44d3-a700-8a113e23bf26';
delete from public.recipe_nutrition where recipe_version_id = '36955fcd-1702-44d3-a700-8a113e23bf26';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('36955fcd-1702-44d3-a700-8a113e23bf26', 'protein', 20.1, 'as-fed'),
  ('36955fcd-1702-44d3-a700-8a113e23bf26', 'fat', 9, 'as-fed'),
  ('36955fcd-1702-44d3-a700-8a113e23bf26', 'fiber', 3.1, 'as-fed'),
  ('36955fcd-1702-44d3-a700-8a113e23bf26', 'moisture', 9.1, 'as-fed'),
  ('36955fcd-1702-44d3-a700-8a113e23bf26', 'kcal', 351.6, 'as-fed'),
  ('36955fcd-1702-44d3-a700-8a113e23bf26', 'calcium', 0.57, 'as-fed'),
  ('36955fcd-1702-44d3-a700-8a113e23bf26', 'phosphorus', 0.52, 'as-fed'),
  ('36955fcd-1702-44d3-a700-8a113e23bf26', 'omega3', 0.55, 'as-fed');

-- Specific — CGW Senior all breeds (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cgw-senior-all-breeds',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 340 kJ/100 g naar 81,3 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 staat niet als absolute waarde op de bron, alleen de verhouding n-3:n-6 (1:2); daarom is omega-6 null.'
 where id = '5ed6e6bb-8362-4bc8-854a-5b84cf446342';
delete from public.recipe_nutrition where recipe_version_id = '5ed6e6bb-8362-4bc8-854a-5b84cf446342';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5ed6e6bb-8362-4bc8-854a-5b84cf446342', 'protein', 4.8, 'as-fed'),
  ('5ed6e6bb-8362-4bc8-854a-5b84cf446342', 'fat', 4.6, 'as-fed'),
  ('5ed6e6bb-8362-4bc8-854a-5b84cf446342', 'fiber', 1.2, 'as-fed'),
  ('5ed6e6bb-8362-4bc8-854a-5b84cf446342', 'moisture', 81, 'as-fed'),
  ('5ed6e6bb-8362-4bc8-854a-5b84cf446342', 'kcal', 81.3, 'as-fed'),
  ('5ed6e6bb-8362-4bc8-854a-5b84cf446342', 'calcium', 0.14, 'as-fed'),
  ('5ed6e6bb-8362-4bc8-854a-5b84cf446342', 'phosphorus', 0.11, 'as-fed'),
  ('5ed6e6bb-8362-4bc8-854a-5b84cf446342', 'omega3', 0.5, 'as-fed');

-- Specific — CID Digestive Support (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cid-digestive-support',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1582 kJ/100 g naar 378,1 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 staat niet als absolute waarde op de bron, alleen de verhouding n-3:n-6 (1:3); daarom is omega-6 null.'
 where id = '17ce3b6a-63b3-4f39-ba11-b8801fd63e21';
delete from public.recipe_nutrition where recipe_version_id = '17ce3b6a-63b3-4f39-ba11-b8801fd63e21';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('17ce3b6a-63b3-4f39-ba11-b8801fd63e21', 'protein', 25, 'as-fed'),
  ('17ce3b6a-63b3-4f39-ba11-b8801fd63e21', 'fat', 13.2, 'as-fed'),
  ('17ce3b6a-63b3-4f39-ba11-b8801fd63e21', 'fiber', 1.4, 'as-fed'),
  ('17ce3b6a-63b3-4f39-ba11-b8801fd63e21', 'moisture', 8.5, 'as-fed'),
  ('17ce3b6a-63b3-4f39-ba11-b8801fd63e21', 'kcal', 378.1, 'as-fed'),
  ('17ce3b6a-63b3-4f39-ba11-b8801fd63e21', 'calcium', 0.98, 'as-fed'),
  ('17ce3b6a-63b3-4f39-ba11-b8801fd63e21', 'phosphorus', 0.85, 'as-fed'),
  ('17ce3b6a-63b3-4f39-ba11-b8801fd63e21', 'omega3', 0.66, 'as-fed');

-- Specific — CID-LF Digestive Support Low Fat (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cid-lf-digestive-support-low-fat',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1371 kJ/100 g naar 327,7 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 staat niet als absolute waarde op de bron, alleen de verhouding n-3:n-6 (1:1); daarom is omega-6 null.'
 where id = '5bc81398-a839-4796-bd84-f7a51c55d56f';
delete from public.recipe_nutrition where recipe_version_id = '5bc81398-a839-4796-bd84-f7a51c55d56f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5bc81398-a839-4796-bd84-f7a51c55d56f', 'protein', 23, 'as-fed'),
  ('5bc81398-a839-4796-bd84-f7a51c55d56f', 'fat', 6.6, 'as-fed'),
  ('5bc81398-a839-4796-bd84-f7a51c55d56f', 'fiber', 3.7, 'as-fed'),
  ('5bc81398-a839-4796-bd84-f7a51c55d56f', 'moisture', 8.5, 'as-fed'),
  ('5bc81398-a839-4796-bd84-f7a51c55d56f', 'kcal', 327.7, 'as-fed'),
  ('5bc81398-a839-4796-bd84-f7a51c55d56f', 'calcium', 0.99, 'as-fed'),
  ('5bc81398-a839-4796-bd84-f7a51c55d56f', 'phosphorus', 0.51, 'as-fed'),
  ('5bc81398-a839-4796-bd84-f7a51c55d56f', 'omega3', 1.51, 'as-fed');

-- Specific — CIW Digestive Support (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/ciw-digestive-support',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 521 kJ/100 g naar 124,5 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 staat niet als absolute waarde op de bron, alleen de verhouding n-3:n-6 (1:3); daarom is omega-6 null.'
 where id = '5a5b7ab7-c896-4743-bcc8-309e08f1eeaa';
delete from public.recipe_nutrition where recipe_version_id = '5a5b7ab7-c896-4743-bcc8-309e08f1eeaa';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5a5b7ab7-c896-4743-bcc8-309e08f1eeaa', 'protein', 7.5, 'as-fed'),
  ('5a5b7ab7-c896-4743-bcc8-309e08f1eeaa', 'fat', 4.5, 'as-fed'),
  ('5a5b7ab7-c896-4743-bcc8-309e08f1eeaa', 'fiber', 0.4, 'as-fed'),
  ('5a5b7ab7-c896-4743-bcc8-309e08f1eeaa', 'moisture', 69.7, 'as-fed'),
  ('5a5b7ab7-c896-4743-bcc8-309e08f1eeaa', 'kcal', 124.5, 'as-fed'),
  ('5a5b7ab7-c896-4743-bcc8-309e08f1eeaa', 'calcium', 0.36, 'as-fed'),
  ('5a5b7ab7-c896-4743-bcc8-309e08f1eeaa', 'phosphorus', 0.28, 'as-fed'),
  ('5a5b7ab7-c896-4743-bcc8-309e08f1eeaa', 'omega3', 0.2, 'as-fed');

-- Specific — CIW-LF Digestive Support Low Fat (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/ciw-lf-digestive-support-low-fat',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 457 kJ/100 g naar 109,2 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 staat niet als absolute waarde op de bron, alleen de verhouding n-3:n-6 (1:4); daarom is omega-6 null.'
 where id = 'de7eebac-491d-4f29-976c-ba697cfee1ed';
delete from public.recipe_nutrition where recipe_version_id = 'de7eebac-491d-4f29-976c-ba697cfee1ed';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('de7eebac-491d-4f29-976c-ba697cfee1ed', 'protein', 8, 'as-fed'),
  ('de7eebac-491d-4f29-976c-ba697cfee1ed', 'fat', 2.1, 'as-fed'),
  ('de7eebac-491d-4f29-976c-ba697cfee1ed', 'fiber', 0.8, 'as-fed'),
  ('de7eebac-491d-4f29-976c-ba697cfee1ed', 'moisture', 70.2, 'as-fed'),
  ('de7eebac-491d-4f29-976c-ba697cfee1ed', 'kcal', 109.2, 'as-fed'),
  ('de7eebac-491d-4f29-976c-ba697cfee1ed', 'calcium', 0.26, 'as-fed'),
  ('de7eebac-491d-4f29-976c-ba697cfee1ed', 'phosphorus', 0.19, 'as-fed'),
  ('de7eebac-491d-4f29-976c-ba697cfee1ed', 'omega3', 0.2, 'as-fed');

-- Specific — CJD Joint Support (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cjd-joint-support',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1402 kJ/100 g naar 335,1 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 staat niet als absolute waarde op de bron, alleen de verhouding n-3:n-6 (1:1); daarom is omega-6 null.'
 where id = 'fa09b6b2-a0d5-481f-b1b2-2fe49e90cab6';
delete from public.recipe_nutrition where recipe_version_id = 'fa09b6b2-a0d5-481f-b1b2-2fe49e90cab6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fa09b6b2-a0d5-481f-b1b2-2fe49e90cab6', 'protein', 21.4, 'as-fed'),
  ('fa09b6b2-a0d5-481f-b1b2-2fe49e90cab6', 'fat', 10.6, 'as-fed'),
  ('fa09b6b2-a0d5-481f-b1b2-2fe49e90cab6', 'fiber', 7, 'as-fed'),
  ('fa09b6b2-a0d5-481f-b1b2-2fe49e90cab6', 'moisture', 8.5, 'as-fed'),
  ('fa09b6b2-a0d5-481f-b1b2-2fe49e90cab6', 'kcal', 335.1, 'as-fed'),
  ('fa09b6b2-a0d5-481f-b1b2-2fe49e90cab6', 'calcium', 0.7, 'as-fed'),
  ('fa09b6b2-a0d5-481f-b1b2-2fe49e90cab6', 'phosphorus', 0.58, 'as-fed'),
  ('fa09b6b2-a0d5-481f-b1b2-2fe49e90cab6', 'omega3', 1.7, 'as-fed');

-- Specific — CKD Heart & Kidney Support (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/ckd-heart-kidney-support',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1630 kJ/100 g naar 389,6 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 staat niet als absolute waarde op de bron, alleen de verhouding n-3:n-6 (1:1); daarom is omega-6 null.'
 where id = 'b180cf82-5031-4f4f-bc79-350036709b03';
delete from public.recipe_nutrition where recipe_version_id = 'b180cf82-5031-4f4f-bc79-350036709b03';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b180cf82-5031-4f4f-bc79-350036709b03', 'protein', 13.9, 'as-fed'),
  ('b180cf82-5031-4f4f-bc79-350036709b03', 'fat', 15.3, 'as-fed'),
  ('b180cf82-5031-4f4f-bc79-350036709b03', 'fiber', 2.4, 'as-fed'),
  ('b180cf82-5031-4f4f-bc79-350036709b03', 'moisture', 8.5, 'as-fed'),
  ('b180cf82-5031-4f4f-bc79-350036709b03', 'kcal', 389.6, 'as-fed'),
  ('b180cf82-5031-4f4f-bc79-350036709b03', 'calcium', 0.45, 'as-fed'),
  ('b180cf82-5031-4f4f-bc79-350036709b03', 'phosphorus', 0.27, 'as-fed'),
  ('b180cf82-5031-4f4f-bc79-350036709b03', 'omega3', 2.2, 'as-fed');

-- Specific — CKD-HY Heart & Kidney Support hydrolysed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/ckd-hy-heart-kidney-support-hydrolysed',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1608 kJ/100 g naar 384,3 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 staat niet als absolute waarde op de bron, alleen de verhouding n-3:n-6 (1:1); daarom is omega-6 null.'
 where id = '0af5c3c6-daf9-4171-b4a2-4a0137e6b13a';
delete from public.recipe_nutrition where recipe_version_id = '0af5c3c6-daf9-4171-b4a2-4a0137e6b13a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0af5c3c6-daf9-4171-b4a2-4a0137e6b13a', 'protein', 16, 'as-fed'),
  ('0af5c3c6-daf9-4171-b4a2-4a0137e6b13a', 'fat', 15.5, 'as-fed'),
  ('0af5c3c6-daf9-4171-b4a2-4a0137e6b13a', 'fiber', 2.2, 'as-fed'),
  ('0af5c3c6-daf9-4171-b4a2-4a0137e6b13a', 'moisture', 8.5, 'as-fed'),
  ('0af5c3c6-daf9-4171-b4a2-4a0137e6b13a', 'kcal', 384.3, 'as-fed'),
  ('0af5c3c6-daf9-4171-b4a2-4a0137e6b13a', 'calcium', 0.52, 'as-fed'),
  ('0af5c3c6-daf9-4171-b4a2-4a0137e6b13a', 'phosphorus', 0.26, 'as-fed'),
  ('0af5c3c6-daf9-4171-b4a2-4a0137e6b13a', 'omega3', 1.9, 'as-fed');

-- Specific — CKW Heart & Kidney Support (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/ckw-heart-kidney-support',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 542 kJ/100 g naar 129,5 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 staat niet als absolute waarde op de bron, alleen de verhouding n-3:n-6 (1:1); daarom is omega-6 null.'
 where id = 'c79ef7fd-88cf-40fc-b0ea-5a95e6d215a6';
delete from public.recipe_nutrition where recipe_version_id = 'c79ef7fd-88cf-40fc-b0ea-5a95e6d215a6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c79ef7fd-88cf-40fc-b0ea-5a95e6d215a6', 'protein', 5.5, 'as-fed'),
  ('c79ef7fd-88cf-40fc-b0ea-5a95e6d215a6', 'fat', 5, 'as-fed'),
  ('c79ef7fd-88cf-40fc-b0ea-5a95e6d215a6', 'fiber', 1, 'as-fed'),
  ('c79ef7fd-88cf-40fc-b0ea-5a95e6d215a6', 'moisture', 69.1, 'as-fed'),
  ('c79ef7fd-88cf-40fc-b0ea-5a95e6d215a6', 'kcal', 129.5, 'as-fed'),
  ('c79ef7fd-88cf-40fc-b0ea-5a95e6d215a6', 'calcium', 0.15, 'as-fed'),
  ('c79ef7fd-88cf-40fc-b0ea-5a95e6d215a6', 'phosphorus', 0.08, 'as-fed'),
  ('c79ef7fd-88cf-40fc-b0ea-5a95e6d215a6', 'omega3', 0.91, 'as-fed');

-- Specific — CKW-HY Heart & Kidney Support hydrolysed (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/ckw-hy-heart-kidney-support-hydrolysed',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 578 kJ/100 g naar 138,1 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 staat niet als absolute waarde op de bron, alleen de verhouding n-3:n-6 (1:2); daarom is omega-6 null.'
 where id = '9c8b2090-258f-4b59-a3b2-e1c99c4db44f';
delete from public.recipe_nutrition where recipe_version_id = '9c8b2090-258f-4b59-a3b2-e1c99c4db44f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9c8b2090-258f-4b59-a3b2-e1c99c4db44f', 'protein', 6.1, 'as-fed'),
  ('9c8b2090-258f-4b59-a3b2-e1c99c4db44f', 'fat', 6.9, 'as-fed'),
  ('9c8b2090-258f-4b59-a3b2-e1c99c4db44f', 'fiber', 0.3, 'as-fed'),
  ('9c8b2090-258f-4b59-a3b2-e1c99c4db44f', 'moisture', 70.9, 'as-fed'),
  ('9c8b2090-258f-4b59-a3b2-e1c99c4db44f', 'kcal', 138.1, 'as-fed'),
  ('9c8b2090-258f-4b59-a3b2-e1c99c4db44f', 'calcium', 0.11, 'as-fed'),
  ('9c8b2090-258f-4b59-a3b2-e1c99c4db44f', 'phosphorus', 0.08, 'as-fed'),
  ('9c8b2090-258f-4b59-a3b2-e1c99c4db44f', 'omega3', 0.9, 'as-fed');

-- Specific — COD Skin Function Support (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cod-skin-function-support',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1727 kJ/100 g naar 412,8 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 staat niet als absolute waarde op de bron, alleen de verhouding n-3:n-6 (1:1); daarom is omega-6 null.'
 where id = '00fcd167-8d46-4782-9151-3626c4daaa57';
delete from public.recipe_nutrition where recipe_version_id = '00fcd167-8d46-4782-9151-3626c4daaa57';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('00fcd167-8d46-4782-9151-3626c4daaa57', 'protein', 26, 'as-fed'),
  ('00fcd167-8d46-4782-9151-3626c4daaa57', 'fat', 19, 'as-fed'),
  ('00fcd167-8d46-4782-9151-3626c4daaa57', 'fiber', 1.5, 'as-fed'),
  ('00fcd167-8d46-4782-9151-3626c4daaa57', 'moisture', 8.5, 'as-fed'),
  ('00fcd167-8d46-4782-9151-3626c4daaa57', 'kcal', 412.8, 'as-fed'),
  ('00fcd167-8d46-4782-9151-3626c4daaa57', 'calcium', 0.84, 'as-fed'),
  ('00fcd167-8d46-4782-9151-3626c4daaa57', 'phosphorus', 0.72, 'as-fed'),
  ('00fcd167-8d46-4782-9151-3626c4daaa57', 'omega3', 2.48, 'as-fed');

-- Specific — COD-HY Allergen Management Plus (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cod-hy-allergen-management-plus',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1517 kJ/100 g naar 362,6 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 staat niet als absolute waarde op de bron, alleen de verhouding n-3:n-6 (1:1); daarom is omega-6 null.'
 where id = '39ff2d3d-f557-4b26-bec8-d47ec949037d';
delete from public.recipe_nutrition where recipe_version_id = '39ff2d3d-f557-4b26-bec8-d47ec949037d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('39ff2d3d-f557-4b26-bec8-d47ec949037d', 'protein', 23, 'as-fed'),
  ('39ff2d3d-f557-4b26-bec8-d47ec949037d', 'fat', 15, 'as-fed'),
  ('39ff2d3d-f557-4b26-bec8-d47ec949037d', 'fiber', 5, 'as-fed'),
  ('39ff2d3d-f557-4b26-bec8-d47ec949037d', 'moisture', 8.5, 'as-fed'),
  ('39ff2d3d-f557-4b26-bec8-d47ec949037d', 'kcal', 362.6, 'as-fed'),
  ('39ff2d3d-f557-4b26-bec8-d47ec949037d', 'calcium', 1.08, 'as-fed'),
  ('39ff2d3d-f557-4b26-bec8-d47ec949037d', 'phosphorus', 0.88, 'as-fed'),
  ('39ff2d3d-f557-4b26-bec8-d47ec949037d', 'omega3', 2.34, 'as-fed');

-- Specific — COW-HY Allergen Management Plus (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cow-hy-allergen-management-plus',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 552 kJ/100 g naar 131,9 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 staat niet als absolute waarde op de bron, alleen de verhouding n-3:n-6 (1:3); daarom is omega-6 null.'
 where id = 'a37dd02e-71f9-480e-bf7e-a49b6d2445e9';
delete from public.recipe_nutrition where recipe_version_id = 'a37dd02e-71f9-480e-bf7e-a49b6d2445e9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a37dd02e-71f9-480e-bf7e-a49b6d2445e9', 'protein', 8.2, 'as-fed'),
  ('a37dd02e-71f9-480e-bf7e-a49b6d2445e9', 'fat', 4.5, 'as-fed'),
  ('a37dd02e-71f9-480e-bf7e-a49b6d2445e9', 'fiber', 1.1, 'as-fed'),
  ('a37dd02e-71f9-480e-bf7e-a49b6d2445e9', 'moisture', 66.8, 'as-fed'),
  ('a37dd02e-71f9-480e-bf7e-a49b6d2445e9', 'kcal', 131.9, 'as-fed'),
  ('a37dd02e-71f9-480e-bf7e-a49b6d2445e9', 'calcium', 0.35, 'as-fed'),
  ('a37dd02e-71f9-480e-bf7e-a49b6d2445e9', 'phosphorus', 0.3, 'as-fed'),
  ('a37dd02e-71f9-480e-bf7e-a49b6d2445e9', 'omega3', 0.67, 'as-fed');

-- Specific — CPD-M Puppy Medium Breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cpd-m-puppy-medium-breed',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1596 kJ/100 g naar 381,5 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 staat niet als absolute waarde op de bron, alleen de verhouding n-3:n-6 (1:3); daarom is omega-6 null.'
 where id = '4187d3bd-1c16-4768-bd65-82219f4ff995';
delete from public.recipe_nutrition where recipe_version_id = '4187d3bd-1c16-4768-bd65-82219f4ff995';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4187d3bd-1c16-4768-bd65-82219f4ff995', 'protein', 25.6, 'as-fed'),
  ('4187d3bd-1c16-4768-bd65-82219f4ff995', 'fat', 14.3, 'as-fed'),
  ('4187d3bd-1c16-4768-bd65-82219f4ff995', 'fiber', 2, 'as-fed'),
  ('4187d3bd-1c16-4768-bd65-82219f4ff995', 'moisture', 8.9, 'as-fed'),
  ('4187d3bd-1c16-4768-bd65-82219f4ff995', 'kcal', 381.5, 'as-fed'),
  ('4187d3bd-1c16-4768-bd65-82219f4ff995', 'calcium', 0.97, 'as-fed'),
  ('4187d3bd-1c16-4768-bd65-82219f4ff995', 'phosphorus', 0.87, 'as-fed'),
  ('4187d3bd-1c16-4768-bd65-82219f4ff995', 'omega3', 0.73, 'as-fed');

-- Specific — CPD-S Puppy Small Breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cpd-s-puppy-small-breed',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1596 kJ/100 g naar 381,5 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 staat niet als absolute waarde op de bron, alleen de verhouding n-3:n-6 (1:3); daarom is omega-6 null.'
 where id = '9440770a-7d89-46c6-bb60-c02f6ce3c185';
delete from public.recipe_nutrition where recipe_version_id = '9440770a-7d89-46c6-bb60-c02f6ce3c185';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9440770a-7d89-46c6-bb60-c02f6ce3c185', 'protein', 25.6, 'as-fed'),
  ('9440770a-7d89-46c6-bb60-c02f6ce3c185', 'fat', 14.3, 'as-fed'),
  ('9440770a-7d89-46c6-bb60-c02f6ce3c185', 'fiber', 2, 'as-fed'),
  ('9440770a-7d89-46c6-bb60-c02f6ce3c185', 'moisture', 8.9, 'as-fed'),
  ('9440770a-7d89-46c6-bb60-c02f6ce3c185', 'kcal', 381.5, 'as-fed'),
  ('9440770a-7d89-46c6-bb60-c02f6ce3c185', 'calcium', 0.97, 'as-fed'),
  ('9440770a-7d89-46c6-bb60-c02f6ce3c185', 'phosphorus', 0.87, 'as-fed'),
  ('9440770a-7d89-46c6-bb60-c02f6ce3c185', 'omega3', 0.73, 'as-fed');

-- Specific — CPD-XL Puppy Large & Giant breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cpd-xl-puppy-large-giant-breed',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1508 kJ/100 g naar 360,4 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 staat niet als absolute waarde op de bron, alleen de verhouding n-3:n-6 (1:2); daarom is omega-6 null.'
 where id = 'd63f4bb8-198f-415a-aaf4-ce2f860b71a1';
delete from public.recipe_nutrition where recipe_version_id = 'd63f4bb8-198f-415a-aaf4-ce2f860b71a1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d63f4bb8-198f-415a-aaf4-ce2f860b71a1', 'protein', 26.3, 'as-fed'),
  ('d63f4bb8-198f-415a-aaf4-ce2f860b71a1', 'fat', 10.2, 'as-fed'),
  ('d63f4bb8-198f-415a-aaf4-ce2f860b71a1', 'fiber', 2.6, 'as-fed'),
  ('d63f4bb8-198f-415a-aaf4-ce2f860b71a1', 'moisture', 9, 'as-fed'),
  ('d63f4bb8-198f-415a-aaf4-ce2f860b71a1', 'kcal', 360.4, 'as-fed'),
  ('d63f4bb8-198f-415a-aaf4-ce2f860b71a1', 'calcium', 0.79, 'as-fed'),
  ('d63f4bb8-198f-415a-aaf4-ce2f860b71a1', 'phosphorus', 0.72, 'as-fed'),
  ('d63f4bb8-198f-415a-aaf4-ce2f860b71a1', 'omega3', 0.68, 'as-fed');

-- Specific — CPW Puppy all breeds (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cpw-puppy-all-breeds',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 628 kJ/100 g naar 150,1 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 staat niet als absolute waarde op de bron, alleen de verhouding n-3:n-6 (1:7); daarom is omega-6 null.'
 where id = 'fb9e8c80-fe00-41e4-935e-5f03d56eebc4';
delete from public.recipe_nutrition where recipe_version_id = 'fb9e8c80-fe00-41e4-935e-5f03d56eebc4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fb9e8c80-fe00-41e4-935e-5f03d56eebc4', 'protein', 13, 'as-fed'),
  ('fb9e8c80-fe00-41e4-935e-5f03d56eebc4', 'fat', 8.2, 'as-fed'),
  ('fb9e8c80-fe00-41e4-935e-5f03d56eebc4', 'fiber', 1.1, 'as-fed'),
  ('fb9e8c80-fe00-41e4-935e-5f03d56eebc4', 'moisture', 67, 'as-fed'),
  ('fb9e8c80-fe00-41e4-935e-5f03d56eebc4', 'kcal', 150.1, 'as-fed'),
  ('fb9e8c80-fe00-41e4-935e-5f03d56eebc4', 'calcium', 0.38, 'as-fed'),
  ('fb9e8c80-fe00-41e4-935e-5f03d56eebc4', 'phosphorus', 0.34, 'as-fed'),
  ('fb9e8c80-fe00-41e4-935e-5f03d56eebc4', 'omega3', 0.31, 'as-fed');

-- Specific — CRD-1 Weight Reduction (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/crd-1-weight-reduction',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1147 kJ/100 g naar 274,1 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 staat niet als absolute waarde op de bron, alleen de verhouding n-3:n-6 (1:2); daarom is omega-6 null.'
 where id = '8a983c06-b3b7-46ce-b6fb-28cafe6e7ad3';
delete from public.recipe_nutrition where recipe_version_id = '8a983c06-b3b7-46ce-b6fb-28cafe6e7ad3';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8a983c06-b3b7-46ce-b6fb-28cafe6e7ad3', 'protein', 29.7, 'as-fed'),
  ('8a983c06-b3b7-46ce-b6fb-28cafe6e7ad3', 'fat', 6.1, 'as-fed'),
  ('8a983c06-b3b7-46ce-b6fb-28cafe6e7ad3', 'fiber', 13.2, 'as-fed'),
  ('8a983c06-b3b7-46ce-b6fb-28cafe6e7ad3', 'moisture', 8.5, 'as-fed'),
  ('8a983c06-b3b7-46ce-b6fb-28cafe6e7ad3', 'kcal', 274.1, 'as-fed'),
  ('8a983c06-b3b7-46ce-b6fb-28cafe6e7ad3', 'calcium', 0.85, 'as-fed'),
  ('8a983c06-b3b7-46ce-b6fb-28cafe6e7ad3', 'phosphorus', 0.7, 'as-fed'),
  ('8a983c06-b3b7-46ce-b6fb-28cafe6e7ad3', 'omega3', 0.72, 'as-fed');

-- Specific — CRD-2 Weight Control (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/crd-2-weight-control',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1326 kJ/100 g naar 316,9 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 staat niet als absolute waarde op de bron, alleen de verhouding n-3:n-6 (1:3); daarom is omega-6 null.'
 where id = 'd5722d0a-5641-4b6d-b86e-bee9aec8f92f';
delete from public.recipe_nutrition where recipe_version_id = 'd5722d0a-5641-4b6d-b86e-bee9aec8f92f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d5722d0a-5641-4b6d-b86e-bee9aec8f92f', 'protein', 23.8, 'as-fed'),
  ('d5722d0a-5641-4b6d-b86e-bee9aec8f92f', 'fat', 5.9, 'as-fed'),
  ('d5722d0a-5641-4b6d-b86e-bee9aec8f92f', 'fiber', 6.5, 'as-fed'),
  ('d5722d0a-5641-4b6d-b86e-bee9aec8f92f', 'moisture', 8.5, 'as-fed'),
  ('d5722d0a-5641-4b6d-b86e-bee9aec8f92f', 'kcal', 316.9, 'as-fed'),
  ('d5722d0a-5641-4b6d-b86e-bee9aec8f92f', 'calcium', 0.85, 'as-fed'),
  ('d5722d0a-5641-4b6d-b86e-bee9aec8f92f', 'phosphorus', 0.73, 'as-fed'),
  ('d5722d0a-5641-4b6d-b86e-bee9aec8f92f', 'omega3', 0.56, 'as-fed');

-- Specific — CRW-1 Weight Reduction (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/crw-1-weight-reduction',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 277 kJ/100 g naar 66,2 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 staat niet als absolute waarde op de bron, alleen de verhouding n-3:n-6 (1:3); daarom is omega-6 null.'
 where id = '34755299-b98c-46ae-be3a-adf6eb774565';
delete from public.recipe_nutrition where recipe_version_id = '34755299-b98c-46ae-be3a-adf6eb774565';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('34755299-b98c-46ae-be3a-adf6eb774565', 'protein', 7.1, 'as-fed'),
  ('34755299-b98c-46ae-be3a-adf6eb774565', 'fat', 2.5, 'as-fed'),
  ('34755299-b98c-46ae-be3a-adf6eb774565', 'fiber', 4.2, 'as-fed'),
  ('34755299-b98c-46ae-be3a-adf6eb774565', 'moisture', 77.1, 'as-fed'),
  ('34755299-b98c-46ae-be3a-adf6eb774565', 'kcal', 66.2, 'as-fed'),
  ('34755299-b98c-46ae-be3a-adf6eb774565', 'calcium', 0.2, 'as-fed'),
  ('34755299-b98c-46ae-be3a-adf6eb774565', 'phosphorus', 0.16, 'as-fed'),
  ('34755299-b98c-46ae-be3a-adf6eb774565', 'omega3', 0.16, 'as-fed');

-- Specific — CXD-M Adult Medium breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cxd-m-adult-medium-breed',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1538 kJ/100 g naar 367,6 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 staat niet als absolute waarde op de bron, alleen de verhouding n-3:n-6 (1:2); daarom is omega-6 null.'
 where id = 'b2815b3f-c751-4863-a29e-a934d4063ae5';
delete from public.recipe_nutrition where recipe_version_id = 'b2815b3f-c751-4863-a29e-a934d4063ae5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b2815b3f-c751-4863-a29e-a934d4063ae5', 'protein', 22.6, 'as-fed'),
  ('b2815b3f-c751-4863-a29e-a934d4063ae5', 'fat', 11.3, 'as-fed'),
  ('b2815b3f-c751-4863-a29e-a934d4063ae5', 'fiber', 2.4, 'as-fed'),
  ('b2815b3f-c751-4863-a29e-a934d4063ae5', 'moisture', 9, 'as-fed'),
  ('b2815b3f-c751-4863-a29e-a934d4063ae5', 'kcal', 367.6, 'as-fed'),
  ('b2815b3f-c751-4863-a29e-a934d4063ae5', 'calcium', 0.7, 'as-fed'),
  ('b2815b3f-c751-4863-a29e-a934d4063ae5', 'phosphorus', 0.6, 'as-fed'),
  ('b2815b3f-c751-4863-a29e-a934d4063ae5', 'omega3', 0.63, 'as-fed');

-- Specific — CXD-S Adult Small breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cxd-s-adult-small-breed',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1538 kJ/100 g naar 367,6 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 staat niet als absolute waarde op de bron, alleen de verhouding n-3:n-6 (1:2); daarom is omega-6 null.'
 where id = '760c2370-7186-4eaa-85b6-df567f3d3f86';
delete from public.recipe_nutrition where recipe_version_id = '760c2370-7186-4eaa-85b6-df567f3d3f86';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('760c2370-7186-4eaa-85b6-df567f3d3f86', 'protein', 22.6, 'as-fed'),
  ('760c2370-7186-4eaa-85b6-df567f3d3f86', 'fat', 11.3, 'as-fed'),
  ('760c2370-7186-4eaa-85b6-df567f3d3f86', 'fiber', 2.4, 'as-fed'),
  ('760c2370-7186-4eaa-85b6-df567f3d3f86', 'moisture', 9, 'as-fed'),
  ('760c2370-7186-4eaa-85b6-df567f3d3f86', 'kcal', 367.6, 'as-fed'),
  ('760c2370-7186-4eaa-85b6-df567f3d3f86', 'calcium', 0.7, 'as-fed'),
  ('760c2370-7186-4eaa-85b6-df567f3d3f86', 'phosphorus', 0.6, 'as-fed'),
  ('760c2370-7186-4eaa-85b6-df567f3d3f86', 'omega3', 0.63, 'as-fed');

-- Specific — CXD-XL Adult large & giant breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cxd-xl-adult-large-giant-breed',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1510 kJ/100 g naar 360,9 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 staat niet als absolute waarde op de bron, alleen de verhouding n-3:n-6 (1:2); daarom is omega-6 null.'
 where id = 'a2356e5b-e0c0-4cde-92c1-1806a713b204';
delete from public.recipe_nutrition where recipe_version_id = 'a2356e5b-e0c0-4cde-92c1-1806a713b204';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a2356e5b-e0c0-4cde-92c1-1806a713b204', 'protein', 23.6, 'as-fed'),
  ('a2356e5b-e0c0-4cde-92c1-1806a713b204', 'fat', 10.9, 'as-fed'),
  ('a2356e5b-e0c0-4cde-92c1-1806a713b204', 'fiber', 2.9, 'as-fed'),
  ('a2356e5b-e0c0-4cde-92c1-1806a713b204', 'moisture', 9.3, 'as-fed'),
  ('a2356e5b-e0c0-4cde-92c1-1806a713b204', 'kcal', 360.9, 'as-fed'),
  ('a2356e5b-e0c0-4cde-92c1-1806a713b204', 'calcium', 0.7, 'as-fed'),
  ('a2356e5b-e0c0-4cde-92c1-1806a713b204', 'phosphorus', 0.62, 'as-fed'),
  ('a2356e5b-e0c0-4cde-92c1-1806a713b204', 'omega3', 0.64, 'as-fed');

-- Specific — CXW Adult all breeds (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cxw-adult-all-breeds',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 393 kJ/100 g naar 93,9 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 staat niet als absolute waarde op de bron, alleen de verhouding n-3:n-6 (1:4); daarom is omega-6 null.'
 where id = '6513ce22-1099-4c8b-bae5-0dd2ecf95eaa';
delete from public.recipe_nutrition where recipe_version_id = '6513ce22-1099-4c8b-bae5-0dd2ecf95eaa';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6513ce22-1099-4c8b-bae5-0dd2ecf95eaa', 'protein', 9, 'as-fed'),
  ('6513ce22-1099-4c8b-bae5-0dd2ecf95eaa', 'fat', 5, 'as-fed'),
  ('6513ce22-1099-4c8b-bae5-0dd2ecf95eaa', 'fiber', 0.5, 'as-fed'),
  ('6513ce22-1099-4c8b-bae5-0dd2ecf95eaa', 'moisture', 79.7, 'as-fed'),
  ('6513ce22-1099-4c8b-bae5-0dd2ecf95eaa', 'kcal', 93.9, 'as-fed'),
  ('6513ce22-1099-4c8b-bae5-0dd2ecf95eaa', 'calcium', 0.18, 'as-fed'),
  ('6513ce22-1099-4c8b-bae5-0dd2ecf95eaa', 'phosphorus', 0.15, 'as-fed'),
  ('6513ce22-1099-4c8b-bae5-0dd2ecf95eaa', 'omega3', 0.1, 'as-fed');

-- Specific — F/C-IN-L Intensive Support (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/f-c-in-l-intensive-support',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 341 kJ/100 g naar 81,5 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 staat niet als absolute waarde op de bron, alleen de verhouding n-3:n-6 (1:1); daarom is omega-6 null.'
 where id = '4610ea83-1897-4e3c-ad66-31ae591cdb79';
delete from public.recipe_nutrition where recipe_version_id = '4610ea83-1897-4e3c-ad66-31ae591cdb79';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4610ea83-1897-4e3c-ad66-31ae591cdb79', 'protein', 6.8, 'as-fed'),
  ('4610ea83-1897-4e3c-ad66-31ae591cdb79', 'fat', 5.5, 'as-fed'),
  ('4610ea83-1897-4e3c-ad66-31ae591cdb79', 'fiber', 0, 'as-fed'),
  ('4610ea83-1897-4e3c-ad66-31ae591cdb79', 'moisture', 84.5, 'as-fed'),
  ('4610ea83-1897-4e3c-ad66-31ae591cdb79', 'kcal', 81.5, 'as-fed'),
  ('4610ea83-1897-4e3c-ad66-31ae591cdb79', 'calcium', 0.23, 'as-fed'),
  ('4610ea83-1897-4e3c-ad66-31ae591cdb79', 'phosphorus', 0.19, 'as-fed'),
  ('4610ea83-1897-4e3c-ad66-31ae591cdb79', 'omega3', 0.49, 'as-fed');

-- Specific — F/C-IN-W Intensive Support (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/f-c-in-w-intensive-support',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 540 kJ/100 g naar 129,1 kcal/100 g (1 kcal = 4,184 kJ). Ruwe as wordt niet vermeld. Omega-6 staat niet als absolute waarde op de bron, alleen de verhouding n-3:n-6 (1:1); daarom is omega-6 null.'
 where id = '96dd22c5-4cd0-444b-9912-d53a1395b9fd';
delete from public.recipe_nutrition where recipe_version_id = '96dd22c5-4cd0-444b-9912-d53a1395b9fd';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('96dd22c5-4cd0-444b-9912-d53a1395b9fd', 'protein', 12, 'as-fed'),
  ('96dd22c5-4cd0-444b-9912-d53a1395b9fd', 'fat', 7.5, 'as-fed'),
  ('96dd22c5-4cd0-444b-9912-d53a1395b9fd', 'fiber', 0.1, 'as-fed'),
  ('96dd22c5-4cd0-444b-9912-d53a1395b9fd', 'moisture', 74.2, 'as-fed'),
  ('96dd22c5-4cd0-444b-9912-d53a1395b9fd', 'kcal', 129.1, 'as-fed'),
  ('96dd22c5-4cd0-444b-9912-d53a1395b9fd', 'calcium', 0.34, 'as-fed'),
  ('96dd22c5-4cd0-444b-9912-d53a1395b9fd', 'phosphorus', 0.29, 'as-fed'),
  ('96dd22c5-4cd0-444b-9912-d53a1395b9fd', 'omega3', 0.8, 'as-fed');

commit;
