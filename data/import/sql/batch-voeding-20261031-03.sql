begin;

-- Royal Canin — Hypoallergenic + Satiety (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/hypoallergenic-%2b-satiety-1083',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 2.586kcal/kg omgerekend naar 258,6 kcal/100 g (gedeeld door 10). Omega-6 overgenomen uit de opgave "Essentieel vetzuur (linolzuur)" (linolzuur is een omega-6 vetzuur). Vocht, calcium, fosfor en omega-3 worden niet vermeld.'
 where id = '82c51995-9918-4b48-997d-35fc5c193526';
delete from public.recipe_nutrition where recipe_version_id = '82c51995-9918-4b48-997d-35fc5c193526';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('82c51995-9918-4b48-997d-35fc5c193526', 'protein', 30, 'as-fed'),
  ('82c51995-9918-4b48-997d-35fc5c193526', 'fat', 9.5, 'as-fed'),
  ('82c51995-9918-4b48-997d-35fc5c193526', 'fiber', 16.6, 'as-fed'),
  ('82c51995-9918-4b48-997d-35fc5c193526', 'ash', 5.7, 'as-fed'),
  ('82c51995-9918-4b48-997d-35fc5c193526', 'kcal', 258.6, 'as-fed'),
  ('82c51995-9918-4b48-997d-35fc5c193526', 'omega6', 2.08, 'as-fed');

-- Royal Canin — Hypoallergenic + Satiety Small Dogs (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/hypoallergenic-%2b-satiety-small-dogs-8069',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 2.586kcal/kg omgerekend naar 258,6 kcal/100 g (gedeeld door 10). Omega-6 overgenomen uit de opgave "Essentieel vetzuur (linolzuur)" (linolzuur is een omega-6 vetzuur). Vocht, calcium, fosfor en omega-3 worden niet vermeld.'
 where id = 'cb6495e8-e6c1-410e-97d8-f9b56e8284d1';
delete from public.recipe_nutrition where recipe_version_id = 'cb6495e8-e6c1-410e-97d8-f9b56e8284d1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('cb6495e8-e6c1-410e-97d8-f9b56e8284d1', 'protein', 30, 'as-fed'),
  ('cb6495e8-e6c1-410e-97d8-f9b56e8284d1', 'fat', 9.5, 'as-fed'),
  ('cb6495e8-e6c1-410e-97d8-f9b56e8284d1', 'fiber', 16.6, 'as-fed'),
  ('cb6495e8-e6c1-410e-97d8-f9b56e8284d1', 'ash', 5.7, 'as-fed'),
  ('cb6495e8-e6c1-410e-97d8-f9b56e8284d1', 'kcal', 258.6, 'as-fed'),
  ('cb6495e8-e6c1-410e-97d8-f9b56e8284d1', 'omega6', 2.08, 'as-fed');

-- Royal Canin — Hypoallergenic Moderate Calorie (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/hypoallergenic-moderate-calorie-3964',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3.722kcal/kg omgerekend naar 372,2 kcal/100 g (gedeeld door 10). Omega-6 overgenomen uit de opgave "Essentieel vetzuur (linolzuur)" (linolzuur is een omega-6 vetzuur). Vocht, calcium en omega-3 worden niet vermeld.'
 where id = 'a3261c0d-f4ce-4d19-96ab-28122d855c14';
delete from public.recipe_nutrition where recipe_version_id = 'a3261c0d-f4ce-4d19-96ab-28122d855c14';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a3261c0d-f4ce-4d19-96ab-28122d855c14', 'protein', 23, 'as-fed'),
  ('a3261c0d-f4ce-4d19-96ab-28122d855c14', 'fat', 12, 'as-fed'),
  ('a3261c0d-f4ce-4d19-96ab-28122d855c14', 'fiber', 1.1, 'as-fed'),
  ('a3261c0d-f4ce-4d19-96ab-28122d855c14', 'ash', 7, 'as-fed'),
  ('a3261c0d-f4ce-4d19-96ab-28122d855c14', 'kcal', 372.2, 'as-fed'),
  ('a3261c0d-f4ce-4d19-96ab-28122d855c14', 'phosphorus', 0.6, 'as-fed'),
  ('a3261c0d-f4ce-4d19-96ab-28122d855c14', 'omega6', 3.22, 'as-fed');

-- Royal Canin — Hypoallergenic Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/hypoallergenic-puppy-3318',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Omega-6 overgenomen uit de opgave "Essentieel vetzuur (linolzuur)" (linolzuur is een omega-6 vetzuur). Vocht, fosfor en omega-3 worden niet vermeld.'
 where id = '4c18aef6-5407-4a4f-bc02-dbd694a81e2c';
delete from public.recipe_nutrition where recipe_version_id = '4c18aef6-5407-4a4f-bc02-dbd694a81e2c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4c18aef6-5407-4a4f-bc02-dbd694a81e2c', 'protein', 23, 'as-fed'),
  ('4c18aef6-5407-4a4f-bc02-dbd694a81e2c', 'fat', 19, 'as-fed'),
  ('4c18aef6-5407-4a4f-bc02-dbd694a81e2c', 'fiber', 1, 'as-fed'),
  ('4c18aef6-5407-4a4f-bc02-dbd694a81e2c', 'ash', 8.1, 'as-fed'),
  ('4c18aef6-5407-4a4f-bc02-dbd694a81e2c', 'calcium', 1.31, 'as-fed'),
  ('4c18aef6-5407-4a4f-bc02-dbd694a81e2c', 'omega6', 4.15, 'as-fed');

-- Royal Canin — Hypoallergenic Small Dog (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/hypoallergenic-small-dog-3952',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Omega-6 overgenomen uit de opgave "Essentieel vetzuur (linolzuur)" (linolzuur is een omega-6 vetzuur). Vocht en omega-3 worden niet vermeld.'
 where id = '280ceb0c-5f2c-4f8f-8fee-c3fa4e41e4c6';
delete from public.recipe_nutrition where recipe_version_id = '280ceb0c-5f2c-4f8f-8fee-c3fa4e41e4c6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('280ceb0c-5f2c-4f8f-8fee-c3fa4e41e4c6', 'protein', 24, 'as-fed'),
  ('280ceb0c-5f2c-4f8f-8fee-c3fa4e41e4c6', 'fat', 16, 'as-fed'),
  ('280ceb0c-5f2c-4f8f-8fee-c3fa4e41e4c6', 'fiber', 0.7, 'as-fed'),
  ('280ceb0c-5f2c-4f8f-8fee-c3fa4e41e4c6', 'ash', 8.6, 'as-fed'),
  ('280ceb0c-5f2c-4f8f-8fee-c3fa4e41e4c6', 'calcium', 0.81, 'as-fed'),
  ('280ceb0c-5f2c-4f8f-8fee-c3fa4e41e4c6', 'phosphorus', 0.61, 'as-fed'),
  ('280ceb0c-5f2c-4f8f-8fee-c3fa4e41e4c6', 'omega6', 3.7, 'as-fed');

-- Royal Canin — Jack Russell Terrier Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/jack-russell-adult-2100',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '7eb25524-29d0-437d-8bdb-76770444792c';
delete from public.recipe_nutrition where recipe_version_id = '7eb25524-29d0-437d-8bdb-76770444792c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7eb25524-29d0-437d-8bdb-76770444792c', 'protein', 30, 'as-fed'),
  ('7eb25524-29d0-437d-8bdb-76770444792c', 'fat', 16, 'as-fed'),
  ('7eb25524-29d0-437d-8bdb-76770444792c', 'fiber', 1.3, 'as-fed'),
  ('7eb25524-29d0-437d-8bdb-76770444792c', 'ash', 6.1, 'as-fed');

-- Royal Canin — Jack Russell Terrier Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/jack-russell-terrier-puppy-2101',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, omega-3 en omega-6 worden niet vermeld.'
 where id = 'f161e0c7-62cc-4b5b-a444-d5556be23936';
delete from public.recipe_nutrition where recipe_version_id = 'f161e0c7-62cc-4b5b-a444-d5556be23936';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f161e0c7-62cc-4b5b-a444-d5556be23936', 'protein', 32, 'as-fed'),
  ('f161e0c7-62cc-4b5b-a444-d5556be23936', 'fat', 18, 'as-fed'),
  ('f161e0c7-62cc-4b5b-a444-d5556be23936', 'fiber', 1.4, 'as-fed'),
  ('f161e0c7-62cc-4b5b-a444-d5556be23936', 'ash', 7.6, 'as-fed'),
  ('f161e0c7-62cc-4b5b-a444-d5556be23936', 'calcium', 1.2, 'as-fed'),
  ('f161e0c7-62cc-4b5b-a444-d5556be23936', 'phosphorus', 1, 'as-fed');

-- Royal Canin — Joint Care Maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/maxi-joint-care-2390',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '3741eaa3-4b8a-4a1c-a023-dcac65b256f1';
delete from public.recipe_nutrition where recipe_version_id = '3741eaa3-4b8a-4a1c-a023-dcac65b256f1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3741eaa3-4b8a-4a1c-a023-dcac65b256f1', 'protein', 26, 'as-fed'),
  ('3741eaa3-4b8a-4a1c-a023-dcac65b256f1', 'fat', 15, 'as-fed'),
  ('3741eaa3-4b8a-4a1c-a023-dcac65b256f1', 'fiber', 6.3, 'as-fed'),
  ('3741eaa3-4b8a-4a1c-a023-dcac65b256f1', 'ash', 6.3, 'as-fed');

-- Royal Canin — Labrador Retriever 5+ (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/labrador-retriever-5%2b-1339',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, omega-3 en omega-6 worden niet vermeld.'
 where id = 'c69fe9fd-dcdc-4815-98de-00dd4fd4afa7';
delete from public.recipe_nutrition where recipe_version_id = 'c69fe9fd-dcdc-4815-98de-00dd4fd4afa7';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c69fe9fd-dcdc-4815-98de-00dd4fd4afa7', 'protein', 30, 'as-fed'),
  ('c69fe9fd-dcdc-4815-98de-00dd4fd4afa7', 'fat', 11, 'as-fed'),
  ('c69fe9fd-dcdc-4815-98de-00dd4fd4afa7', 'fiber', 4.4, 'as-fed'),
  ('c69fe9fd-dcdc-4815-98de-00dd4fd4afa7', 'ash', 5.8, 'as-fed'),
  ('c69fe9fd-dcdc-4815-98de-00dd4fd4afa7', 'phosphorus', 0.6, 'as-fed');

-- Royal Canin — Labrador Retriever Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/labrador-retriever-adult-2487',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3.640kcal/kg omgerekend naar 364 kcal/100 g (gedeeld door 10). EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '2bcae16f-4e39-49cb-816a-3c5162f0b946';
delete from public.recipe_nutrition where recipe_version_id = '2bcae16f-4e39-49cb-816a-3c5162f0b946';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2bcae16f-4e39-49cb-816a-3c5162f0b946', 'protein', 30, 'as-fed'),
  ('2bcae16f-4e39-49cb-816a-3c5162f0b946', 'fat', 13, 'as-fed'),
  ('2bcae16f-4e39-49cb-816a-3c5162f0b946', 'fiber', 3.4, 'as-fed'),
  ('2bcae16f-4e39-49cb-816a-3c5162f0b946', 'ash', 6.7, 'as-fed'),
  ('2bcae16f-4e39-49cb-816a-3c5162f0b946', 'kcal', 364, 'as-fed');

-- Royal Canin — Labrador Retriever Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/labrador-retriever-puppy-2491',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, omega-3 en omega-6 worden niet vermeld.'
 where id = '485e0208-821f-42b7-bc1f-f93578b35cac';
delete from public.recipe_nutrition where recipe_version_id = '485e0208-821f-42b7-bc1f-f93578b35cac';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('485e0208-821f-42b7-bc1f-f93578b35cac', 'protein', 33, 'as-fed'),
  ('485e0208-821f-42b7-bc1f-f93578b35cac', 'fat', 14, 'as-fed'),
  ('485e0208-821f-42b7-bc1f-f93578b35cac', 'fiber', 1.7, 'as-fed'),
  ('485e0208-821f-42b7-bc1f-f93578b35cac', 'ash', 6.9, 'as-fed'),
  ('485e0208-821f-42b7-bc1f-f93578b35cac', 'calcium', 1.25, 'as-fed'),
  ('485e0208-821f-42b7-bc1f-f93578b35cac', 'phosphorus', 1, 'as-fed');

-- Royal Canin — Labrador Retriever Sterilised Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/labrador-retriever-sterilised-3996',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'fa222541-2376-4abd-bd56-ede8edffcb8f';
delete from public.recipe_nutrition where recipe_version_id = 'fa222541-2376-4abd-bd56-ede8edffcb8f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fa222541-2376-4abd-bd56-ede8edffcb8f', 'protein', 30, 'as-fed'),
  ('fa222541-2376-4abd-bd56-ede8edffcb8f', 'fat', 11, 'as-fed'),
  ('fa222541-2376-4abd-bd56-ede8edffcb8f', 'fiber', 6.5, 'as-fed'),
  ('fa222541-2376-4abd-bd56-ede8edffcb8f', 'ash', 6.6, 'as-fed');

-- Royal Canin — Labrador Retriever Wet (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/labrador-retriever-1259',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '81015127-a512-4215-83cb-c1441860406c';
delete from public.recipe_nutrition where recipe_version_id = '81015127-a512-4215-83cb-c1441860406c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('81015127-a512-4215-83cb-c1441860406c', 'protein', 8.6, 'as-fed'),
  ('81015127-a512-4215-83cb-c1441860406c', 'fat', 3.3, 'as-fed'),
  ('81015127-a512-4215-83cb-c1441860406c', 'fiber', 1.2, 'as-fed'),
  ('81015127-a512-4215-83cb-c1441860406c', 'ash', 1.7, 'as-fed'),
  ('81015127-a512-4215-83cb-c1441860406c', 'moisture', 79, 'as-fed');

-- Royal Canin — Light Weight Care in Loaf (paté) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/light-weight-care-1178',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'a23f54ed-295a-434d-a506-8d3ad3e0dc17';
delete from public.recipe_nutrition where recipe_version_id = 'a23f54ed-295a-434d-a506-8d3ad3e0dc17';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a23f54ed-295a-434d-a506-8d3ad3e0dc17', 'protein', 8.6, 'as-fed'),
  ('a23f54ed-295a-434d-a506-8d3ad3e0dc17', 'fat', 2.4, 'as-fed'),
  ('a23f54ed-295a-434d-a506-8d3ad3e0dc17', 'fiber', 1.7, 'as-fed'),
  ('a23f54ed-295a-434d-a506-8d3ad3e0dc17', 'ash', 1.9, 'as-fed'),
  ('a23f54ed-295a-434d-a506-8d3ad3e0dc17', 'moisture', 80.8, 'as-fed');

-- Royal Canin — Light Weight Care Maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/maxi-light-weight-care-2446',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '68ece316-b151-4892-ba0f-8d9365b01fb8';
delete from public.recipe_nutrition where recipe_version_id = '68ece316-b151-4892-ba0f-8d9365b01fb8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('68ece316-b151-4892-ba0f-8d9365b01fb8', 'protein', 27, 'as-fed'),
  ('68ece316-b151-4892-ba0f-8d9365b01fb8', 'fat', 11, 'as-fed'),
  ('68ece316-b151-4892-ba0f-8d9365b01fb8', 'fiber', 11.4, 'as-fed'),
  ('68ece316-b151-4892-ba0f-8d9365b01fb8', 'ash', 5.5, 'as-fed');

-- Royal Canin — Light Weight Care Medium (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/medium-light-weight-care-3021',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '9580605e-7f7e-4714-a1af-39c2b35af158';
delete from public.recipe_nutrition where recipe_version_id = '9580605e-7f7e-4714-a1af-39c2b35af158';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9580605e-7f7e-4714-a1af-39c2b35af158', 'protein', 27, 'as-fed'),
  ('9580605e-7f7e-4714-a1af-39c2b35af158', 'fat', 11, 'as-fed'),
  ('9580605e-7f7e-4714-a1af-39c2b35af158', 'fiber', 11.8, 'as-fed'),
  ('9580605e-7f7e-4714-a1af-39c2b35af158', 'ash', 4.8, 'as-fed');

-- Royal Canin — Light Weight Care Mini (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/mini-light-weight-care-3018',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '60850789-fe40-4b4e-be53-0d0b890c05f0';
delete from public.recipe_nutrition where recipe_version_id = '60850789-fe40-4b4e-be53-0d0b890c05f0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('60850789-fe40-4b4e-be53-0d0b890c05f0', 'protein', 30, 'as-fed'),
  ('60850789-fe40-4b4e-be53-0d0b890c05f0', 'fat', 11, 'as-fed'),
  ('60850789-fe40-4b4e-be53-0d0b890c05f0', 'fiber', 8.6, 'as-fed'),
  ('60850789-fe40-4b4e-be53-0d0b890c05f0', 'ash', 5, 'as-fed');

-- Royal Canin — Light Weight Care X-Small (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/x-small-light-weight-care-1230',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '04dbcbc0-cb83-4264-a8a6-ca584154f799';
delete from public.recipe_nutrition where recipe_version_id = '04dbcbc0-cb83-4264-a8a6-ca584154f799';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('04dbcbc0-cb83-4264-a8a6-ca584154f799', 'protein', 26, 'as-fed'),
  ('04dbcbc0-cb83-4264-a8a6-ca584154f799', 'fat', 12, 'as-fed'),
  ('04dbcbc0-cb83-4264-a8a6-ca584154f799', 'fiber', 6.2, 'as-fed'),
  ('04dbcbc0-cb83-4264-a8a6-ca584154f799', 'ash', 5.4, 'as-fed');

-- Royal Canin — Maltese Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/maltese-adult-3995',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium en fosfor worden niet vermeld.'
 where id = '5d0ec9b6-dc38-4c8a-9dcd-f651dc659461';
delete from public.recipe_nutrition where recipe_version_id = '5d0ec9b6-dc38-4c8a-9dcd-f651dc659461';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5d0ec9b6-dc38-4c8a-9dcd-f651dc659461', 'protein', 24, 'as-fed'),
  ('5d0ec9b6-dc38-4c8a-9dcd-f651dc659461', 'fat', 18, 'as-fed'),
  ('5d0ec9b6-dc38-4c8a-9dcd-f651dc659461', 'fiber', 1.4, 'as-fed'),
  ('5d0ec9b6-dc38-4c8a-9dcd-f651dc659461', 'ash', 6.2, 'as-fed'),
  ('5d0ec9b6-dc38-4c8a-9dcd-f651dc659461', 'omega3', 0.7, 'as-fed'),
  ('5d0ec9b6-dc38-4c8a-9dcd-f651dc659461', 'omega6', 3.9, 'as-fed');

-- Royal Canin — Mature Consult (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/mature-consult-1506',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'b3a43e8d-9a1a-4e39-8a75-362100e4b261';
delete from public.recipe_nutrition where recipe_version_id = 'b3a43e8d-9a1a-4e39-8a75-362100e4b261';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b3a43e8d-9a1a-4e39-8a75-362100e4b261', 'protein', 8.6, 'as-fed'),
  ('b3a43e8d-9a1a-4e39-8a75-362100e4b261', 'fat', 4.5, 'as-fed'),
  ('b3a43e8d-9a1a-4e39-8a75-362100e4b261', 'fiber', 1.1, 'as-fed'),
  ('b3a43e8d-9a1a-4e39-8a75-362100e4b261', 'ash', 1.4, 'as-fed'),
  ('b3a43e8d-9a1a-4e39-8a75-362100e4b261', 'moisture', 80, 'as-fed');

-- Royal Canin — Mature Consult Large Dogs (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/mature-consult-large-dog-3709',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, omega-3 en omega-6 worden niet vermeld.'
 where id = '747bc093-238e-4767-9bb2-40e4881ea91f';
delete from public.recipe_nutrition where recipe_version_id = '747bc093-238e-4767-9bb2-40e4881ea91f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('747bc093-238e-4767-9bb2-40e4881ea91f', 'protein', 25, 'as-fed'),
  ('747bc093-238e-4767-9bb2-40e4881ea91f', 'fat', 15, 'as-fed'),
  ('747bc093-238e-4767-9bb2-40e4881ea91f', 'fiber', 7.2, 'as-fed'),
  ('747bc093-238e-4767-9bb2-40e4881ea91f', 'ash', 5.5, 'as-fed'),
  ('747bc093-238e-4767-9bb2-40e4881ea91f', 'phosphorus', 0.55, 'as-fed');

-- Royal Canin — Mature Consult Medium Dogs (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/mature-consult-3706',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, omega-3 en omega-6 worden niet vermeld.'
 where id = '5fe0e625-2420-417a-85e6-db96bcef861c';
delete from public.recipe_nutrition where recipe_version_id = '5fe0e625-2420-417a-85e6-db96bcef861c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5fe0e625-2420-417a-85e6-db96bcef861c', 'protein', 23, 'as-fed'),
  ('5fe0e625-2420-417a-85e6-db96bcef861c', 'fat', 14, 'as-fed'),
  ('5fe0e625-2420-417a-85e6-db96bcef861c', 'fiber', 7.2, 'as-fed'),
  ('5fe0e625-2420-417a-85e6-db96bcef861c', 'ash', 5.7, 'as-fed'),
  ('5fe0e625-2420-417a-85e6-db96bcef861c', 'phosphorus', 0.56, 'as-fed');

-- Royal Canin — Mature Consult Small Dogs (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/mature-consult-small-dog-3703',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, omega-3 en omega-6 worden niet vermeld.'
 where id = '8872a916-e6bf-41fd-b43b-c93f9f271838';
delete from public.recipe_nutrition where recipe_version_id = '8872a916-e6bf-41fd-b43b-c93f9f271838';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8872a916-e6bf-41fd-b43b-c93f9f271838', 'protein', 25.5, 'as-fed'),
  ('8872a916-e6bf-41fd-b43b-c93f9f271838', 'fat', 14, 'as-fed'),
  ('8872a916-e6bf-41fd-b43b-c93f9f271838', 'fiber', 7, 'as-fed'),
  ('8872a916-e6bf-41fd-b43b-c93f9f271838', 'ash', 6.2, 'as-fed'),
  ('8872a916-e6bf-41fd-b43b-c93f9f271838', 'calcium', 0.87, 'as-fed'),
  ('8872a916-e6bf-41fd-b43b-c93f9f271838', 'phosphorus', 0.55, 'as-fed');

-- Royal Canin — Maxi Adult 5+ (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/maxi-adult-5%2b-3008',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'cb13d1e3-fed8-4c31-842d-694d3aad92c4';
delete from public.recipe_nutrition where recipe_version_id = 'cb13d1e3-fed8-4c31-842d-694d3aad92c4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('cb13d1e3-fed8-4c31-842d-694d3aad92c4', 'protein', 26, 'as-fed'),
  ('cb13d1e3-fed8-4c31-842d-694d3aad92c4', 'fat', 17, 'as-fed'),
  ('cb13d1e3-fed8-4c31-842d-694d3aad92c4', 'fiber', 1.6, 'as-fed'),
  ('cb13d1e3-fed8-4c31-842d-694d3aad92c4', 'ash', 6.4, 'as-fed');

-- Royal Canin — Maxi Adult in Gravy (brokjes in saus) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/maxi-adult---chunks-in-gravy-1094',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '5affab03-ea90-44d3-a3f7-c5881d5365ed';
delete from public.recipe_nutrition where recipe_version_id = '5affab03-ea90-44d3-a3f7-c5881d5365ed';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5affab03-ea90-44d3-a3f7-c5881d5365ed', 'protein', 7.5, 'as-fed'),
  ('5affab03-ea90-44d3-a3f7-c5881d5365ed', 'fat', 5.3, 'as-fed'),
  ('5affab03-ea90-44d3-a3f7-c5881d5365ed', 'fiber', 1, 'as-fed'),
  ('5affab03-ea90-44d3-a3f7-c5881d5365ed', 'ash', 1.7, 'as-fed'),
  ('5affab03-ea90-44d3-a3f7-c5881d5365ed', 'moisture', 81, 'as-fed');

commit;
