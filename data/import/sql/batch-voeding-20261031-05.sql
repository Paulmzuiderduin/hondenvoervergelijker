begin;

-- Royal Canin — Neutered Adult Large Dogs (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/neutered-adult-large-dog-3716',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor en omega-6 worden niet vermeld.'
 where id = 'c55fa4c5-e0de-42fa-9b0b-656a540c81e5';
delete from public.recipe_nutrition where recipe_version_id = 'c55fa4c5-e0de-42fa-9b0b-656a540c81e5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c55fa4c5-e0de-42fa-9b0b-656a540c81e5', 'protein', 28, 'as-fed'),
  ('c55fa4c5-e0de-42fa-9b0b-656a540c81e5', 'fat', 11, 'as-fed'),
  ('c55fa4c5-e0de-42fa-9b0b-656a540c81e5', 'fiber', 7.2, 'as-fed'),
  ('c55fa4c5-e0de-42fa-9b0b-656a540c81e5', 'ash', 6, 'as-fed'),
  ('c55fa4c5-e0de-42fa-9b0b-656a540c81e5', 'omega3', 0.58, 'as-fed');

-- Royal Canin — Neutered Adult Medium Dogs (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/neutered-adult-3714',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium en fosfor worden niet vermeld.'
 where id = 'a3fb2a2a-8b8f-4b12-b968-47d7c8a77ead';
delete from public.recipe_nutrition where recipe_version_id = 'a3fb2a2a-8b8f-4b12-b968-47d7c8a77ead';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a3fb2a2a-8b8f-4b12-b968-47d7c8a77ead', 'protein', 28, 'as-fed'),
  ('a3fb2a2a-8b8f-4b12-b968-47d7c8a77ead', 'fat', 11, 'as-fed'),
  ('a3fb2a2a-8b8f-4b12-b968-47d7c8a77ead', 'fiber', 7.2, 'as-fed'),
  ('a3fb2a2a-8b8f-4b12-b968-47d7c8a77ead', 'ash', 5.5, 'as-fed'),
  ('a3fb2a2a-8b8f-4b12-b968-47d7c8a77ead', 'omega3', 0.58, 'as-fed'),
  ('a3fb2a2a-8b8f-4b12-b968-47d7c8a77ead', 'omega6', 2.3, 'as-fed');

-- Royal Canin — Neutered Adult Small Dogs (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/neutered-adult-small-dog-3712',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3.302kcal/kg omgerekend naar 330,2 kcal/100 g (gedeeld door 10). Vocht, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '96c1608b-c292-4631-a3b8-b16f46f8c108';
delete from public.recipe_nutrition where recipe_version_id = '96c1608b-c292-4631-a3b8-b16f46f8c108';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('96c1608b-c292-4631-a3b8-b16f46f8c108', 'protein', 30, 'as-fed'),
  ('96c1608b-c292-4631-a3b8-b16f46f8c108', 'fat', 11, 'as-fed'),
  ('96c1608b-c292-4631-a3b8-b16f46f8c108', 'fiber', 6.6, 'as-fed'),
  ('96c1608b-c292-4631-a3b8-b16f46f8c108', 'ash', 7.3, 'as-fed'),
  ('96c1608b-c292-4631-a3b8-b16f46f8c108', 'kcal', 330.2, 'as-fed'),
  ('96c1608b-c292-4631-a3b8-b16f46f8c108', 'calcium', 0.78, 'as-fed');

-- Royal Canin — Neutered Junior (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/neutered-junior-3713',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3.865kcal/kg omgerekend naar 386,5 kcal/100 g (gedeeld door 10). Vocht, omega-3 en omega-6 worden niet vermeld.'
 where id = '78fda740-7f66-4094-92c7-b01a378d8b8f';
delete from public.recipe_nutrition where recipe_version_id = '78fda740-7f66-4094-92c7-b01a378d8b8f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('78fda740-7f66-4094-92c7-b01a378d8b8f', 'protein', 30, 'as-fed'),
  ('78fda740-7f66-4094-92c7-b01a378d8b8f', 'fat', 17, 'as-fed'),
  ('78fda740-7f66-4094-92c7-b01a378d8b8f', 'fiber', 2.6, 'as-fed'),
  ('78fda740-7f66-4094-92c7-b01a378d8b8f', 'ash', 7.2, 'as-fed'),
  ('78fda740-7f66-4094-92c7-b01a378d8b8f', 'kcal', 386.5, 'as-fed'),
  ('78fda740-7f66-4094-92c7-b01a378d8b8f', 'calcium', 1.25, 'as-fed'),
  ('78fda740-7f66-4094-92c7-b01a378d8b8f', 'phosphorus', 0.97, 'as-fed');

-- Royal Canin — Neutered Junior Large Dogs (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/neutered-junior-large-dog-3715',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3.706kcal/kg omgerekend naar 370,6 kcal/100 g (gedeeld door 10). Omega-6 overgenomen uit de opgave "Essentiële vetzuren (linolzuur)" (linolzuur is een omega-6 vetzuur). Vocht en omega-3 worden niet vermeld.'
 where id = '428e9655-297f-49d2-98cd-ff24154b2327';
delete from public.recipe_nutrition where recipe_version_id = '428e9655-297f-49d2-98cd-ff24154b2327';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('428e9655-297f-49d2-98cd-ff24154b2327', 'protein', 31, 'as-fed'),
  ('428e9655-297f-49d2-98cd-ff24154b2327', 'fat', 13, 'as-fed'),
  ('428e9655-297f-49d2-98cd-ff24154b2327', 'fiber', 2.3, 'as-fed'),
  ('428e9655-297f-49d2-98cd-ff24154b2327', 'ash', 7.2, 'as-fed'),
  ('428e9655-297f-49d2-98cd-ff24154b2327', 'kcal', 370.6, 'as-fed'),
  ('428e9655-297f-49d2-98cd-ff24154b2327', 'calcium', 1.2, 'as-fed'),
  ('428e9655-297f-49d2-98cd-ff24154b2327', 'phosphorus', 0.9, 'as-fed'),
  ('428e9655-297f-49d2-98cd-ff24154b2327', 'omega6', 2.5, 'as-fed');

-- Royal Canin — Pomeranian Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/pomeranian-adult-1255',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '8e1e06ad-d998-4260-b347-b407004d28c2';
delete from public.recipe_nutrition where recipe_version_id = '8e1e06ad-d998-4260-b347-b407004d28c2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8e1e06ad-d998-4260-b347-b407004d28c2', 'protein', 26, 'as-fed'),
  ('8e1e06ad-d998-4260-b347-b407004d28c2', 'fat', 16, 'as-fed'),
  ('8e1e06ad-d998-4260-b347-b407004d28c2', 'fiber', 1.6, 'as-fed'),
  ('8e1e06ad-d998-4260-b347-b407004d28c2', 'ash', 5.4, 'as-fed');

-- Royal Canin — Pomeranian Adult in Loaf (paté) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/pomeranian-1256',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Calcium, fosfor en omega-3 worden niet vermeld.'
 where id = '45638da7-a965-49ac-bd3a-766898fbcff1';
delete from public.recipe_nutrition where recipe_version_id = '45638da7-a965-49ac-bd3a-766898fbcff1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('45638da7-a965-49ac-bd3a-766898fbcff1', 'protein', 8.5, 'as-fed'),
  ('45638da7-a965-49ac-bd3a-766898fbcff1', 'fat', 5.5, 'as-fed'),
  ('45638da7-a965-49ac-bd3a-766898fbcff1', 'fiber', 1, 'as-fed'),
  ('45638da7-a965-49ac-bd3a-766898fbcff1', 'ash', 2.1, 'as-fed'),
  ('45638da7-a965-49ac-bd3a-766898fbcff1', 'moisture', 79.3, 'as-fed'),
  ('45638da7-a965-49ac-bd3a-766898fbcff1', 'omega6', 1.6, 'as-fed');

-- Royal Canin — Poodle Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/poodle-adult-3057',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor en omega-6 worden niet vermeld.'
 where id = 'e2ffc0a5-ca5d-4380-ad2c-8e0b0cc89bea';
delete from public.recipe_nutrition where recipe_version_id = 'e2ffc0a5-ca5d-4380-ad2c-8e0b0cc89bea';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e2ffc0a5-ca5d-4380-ad2c-8e0b0cc89bea', 'protein', 30, 'as-fed'),
  ('e2ffc0a5-ca5d-4380-ad2c-8e0b0cc89bea', 'fat', 19, 'as-fed'),
  ('e2ffc0a5-ca5d-4380-ad2c-8e0b0cc89bea', 'fiber', 2.1, 'as-fed'),
  ('e2ffc0a5-ca5d-4380-ad2c-8e0b0cc89bea', 'ash', 5.5, 'as-fed'),
  ('e2ffc0a5-ca5d-4380-ad2c-8e0b0cc89bea', 'omega3', 0.8, 'as-fed');

-- Royal Canin — Poodle Adult in Loaf (paté) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/poodle-2043',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '5add4ea2-1500-4c98-97de-e326a9fe13ca';
delete from public.recipe_nutrition where recipe_version_id = '5add4ea2-1500-4c98-97de-e326a9fe13ca';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5add4ea2-1500-4c98-97de-e326a9fe13ca', 'protein', 9, 'as-fed'),
  ('5add4ea2-1500-4c98-97de-e326a9fe13ca', 'fat', 5.8, 'as-fed'),
  ('5add4ea2-1500-4c98-97de-e326a9fe13ca', 'fiber', 0.9, 'as-fed'),
  ('5add4ea2-1500-4c98-97de-e326a9fe13ca', 'ash', 2, 'as-fed'),
  ('5add4ea2-1500-4c98-97de-e326a9fe13ca', 'moisture', 78.6, 'as-fed');

-- Royal Canin — Poodle Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/poodle-puppy-3080',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor en omega-6 worden niet vermeld.'
 where id = '24965ed9-0b7c-461e-a52f-4752babe9c69';
delete from public.recipe_nutrition where recipe_version_id = '24965ed9-0b7c-461e-a52f-4752babe9c69';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('24965ed9-0b7c-461e-a52f-4752babe9c69', 'protein', 33, 'as-fed'),
  ('24965ed9-0b7c-461e-a52f-4752babe9c69', 'fat', 19, 'as-fed'),
  ('24965ed9-0b7c-461e-a52f-4752babe9c69', 'fiber', 1.4, 'as-fed'),
  ('24965ed9-0b7c-461e-a52f-4752babe9c69', 'ash', 7.8, 'as-fed'),
  ('24965ed9-0b7c-461e-a52f-4752babe9c69', 'omega3', 0.88, 'as-fed');

-- Royal Canin — Pug Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/pug-adult-3985',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'ae941462-bacc-4eef-a7d7-cfccbb7f1907';
delete from public.recipe_nutrition where recipe_version_id = 'ae941462-bacc-4eef-a7d7-cfccbb7f1907';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ae941462-bacc-4eef-a7d7-cfccbb7f1907', 'protein', 25, 'as-fed'),
  ('ae941462-bacc-4eef-a7d7-cfccbb7f1907', 'fat', 16, 'as-fed'),
  ('ae941462-bacc-4eef-a7d7-cfccbb7f1907', 'fiber', 2, 'as-fed'),
  ('ae941462-bacc-4eef-a7d7-cfccbb7f1907', 'ash', 5.8, 'as-fed');

-- Royal Canin — Pug Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/pug-puppy-4130',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '9bfa92db-af5a-475b-8d98-b64f3393a32c';
delete from public.recipe_nutrition where recipe_version_id = '9bfa92db-af5a-475b-8d98-b64f3393a32c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9bfa92db-af5a-475b-8d98-b64f3393a32c', 'protein', 29, 'as-fed'),
  ('9bfa92db-af5a-475b-8d98-b64f3393a32c', 'fat', 18, 'as-fed'),
  ('9bfa92db-af5a-475b-8d98-b64f3393a32c', 'fiber', 1.5, 'as-fed'),
  ('9bfa92db-af5a-475b-8d98-b64f3393a32c', 'ash', 7.6, 'as-fed');

-- Royal Canin — Recovery (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/recovery-4055',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 1.183,0kcal/kg omgerekend naar 118,3 kcal/100 g (gedeeld door 10). Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '1bc92707-566f-4c02-9f8f-e35912b42398';
delete from public.recipe_nutrition where recipe_version_id = '1bc92707-566f-4c02-9f8f-e35912b42398';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1bc92707-566f-4c02-9f8f-e35912b42398', 'protein', 12.7, 'as-fed'),
  ('1bc92707-566f-4c02-9f8f-e35912b42398', 'fat', 6.4, 'as-fed'),
  ('1bc92707-566f-4c02-9f8f-e35912b42398', 'fiber', 1.7, 'as-fed'),
  ('1bc92707-566f-4c02-9f8f-e35912b42398', 'ash', 2.3, 'as-fed'),
  ('1bc92707-566f-4c02-9f8f-e35912b42398', 'moisture', 73, 'as-fed'),
  ('1bc92707-566f-4c02-9f8f-e35912b42398', 'kcal', 118.3, 'as-fed');

-- Royal Canin — Recovery Liquid (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/recovery-liquid-dog-%26-cat-4910',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 105 kcal per 100 ml overgenomen als kcal/100 g. De fabrikant vermeldt de analytische bestanddelen in grammen; deze zijn overgenomen als percentage as-fed. Calcium en fosfor worden niet vermeld.'
 where id = '628bf0b8-7fe2-4bd5-a4ef-da14a2bb5e87';
delete from public.recipe_nutrition where recipe_version_id = '628bf0b8-7fe2-4bd5-a4ef-da14a2bb5e87';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('628bf0b8-7fe2-4bd5-a4ef-da14a2bb5e87', 'protein', 8.2, 'as-fed'),
  ('628bf0b8-7fe2-4bd5-a4ef-da14a2bb5e87', 'fat', 5.2, 'as-fed'),
  ('628bf0b8-7fe2-4bd5-a4ef-da14a2bb5e87', 'fiber', 0, 'as-fed'),
  ('628bf0b8-7fe2-4bd5-a4ef-da14a2bb5e87', 'ash', 1, 'as-fed'),
  ('628bf0b8-7fe2-4bd5-a4ef-da14a2bb5e87', 'moisture', 85, 'as-fed'),
  ('628bf0b8-7fe2-4bd5-a4ef-da14a2bb5e87', 'kcal', 105, 'as-fed'),
  ('628bf0b8-7fe2-4bd5-a4ef-da14a2bb5e87', 'omega3', 0.29, 'as-fed'),
  ('628bf0b8-7fe2-4bd5-a4ef-da14a2bb5e87', 'omega6', 1.14, 'as-fed');

-- Royal Canin — Relax Care in Loaf (paté) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/relax-care-1182',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'd16f1984-ba47-4c12-8bc8-f6e0ae76c0d9';
delete from public.recipe_nutrition where recipe_version_id = 'd16f1984-ba47-4c12-8bc8-f6e0ae76c0d9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d16f1984-ba47-4c12-8bc8-f6e0ae76c0d9', 'protein', 8.4, 'as-fed'),
  ('d16f1984-ba47-4c12-8bc8-f6e0ae76c0d9', 'fat', 5.5, 'as-fed'),
  ('d16f1984-ba47-4c12-8bc8-f6e0ae76c0d9', 'fiber', 1.3, 'as-fed'),
  ('d16f1984-ba47-4c12-8bc8-f6e0ae76c0d9', 'ash', 1.7, 'as-fed'),
  ('d16f1984-ba47-4c12-8bc8-f6e0ae76c0d9', 'moisture', 79.6, 'as-fed');

-- Royal Canin — Relax Care Maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/maxi-relax-care-1226',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '1a2059cf-a670-4b6d-be0a-7b0df45edd15';
delete from public.recipe_nutrition where recipe_version_id = '1a2059cf-a670-4b6d-be0a-7b0df45edd15';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1a2059cf-a670-4b6d-be0a-7b0df45edd15', 'protein', 25, 'as-fed'),
  ('1a2059cf-a670-4b6d-be0a-7b0df45edd15', 'fat', 14, 'as-fed'),
  ('1a2059cf-a670-4b6d-be0a-7b0df45edd15', 'fiber', 2.9, 'as-fed'),
  ('1a2059cf-a670-4b6d-be0a-7b0df45edd15', 'ash', 6.4, 'as-fed');

-- Royal Canin — Relax Care Medium (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/medium-relax-care-1225',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '3d321597-7d14-41fb-adb3-41b237cea14e';
delete from public.recipe_nutrition where recipe_version_id = '3d321597-7d14-41fb-adb3-41b237cea14e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3d321597-7d14-41fb-adb3-41b237cea14e', 'protein', 25, 'as-fed'),
  ('3d321597-7d14-41fb-adb3-41b237cea14e', 'fat', 14, 'as-fed'),
  ('3d321597-7d14-41fb-adb3-41b237cea14e', 'fiber', 2.6, 'as-fed'),
  ('3d321597-7d14-41fb-adb3-41b237cea14e', 'ash', 6.3, 'as-fed');

-- Royal Canin — Relax Care Mini (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/mini-relax-care-1224',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'ea69a0f2-2f19-423e-a6d5-9d4d1970e435';
delete from public.recipe_nutrition where recipe_version_id = 'ea69a0f2-2f19-423e-a6d5-9d4d1970e435';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ea69a0f2-2f19-423e-a6d5-9d4d1970e435', 'protein', 21, 'as-fed'),
  ('ea69a0f2-2f19-423e-a6d5-9d4d1970e435', 'fat', 15, 'as-fed'),
  ('ea69a0f2-2f19-423e-a6d5-9d4d1970e435', 'fiber', 2.7, 'as-fed'),
  ('ea69a0f2-2f19-423e-a6d5-9d4d1970e435', 'ash', 5.3, 'as-fed');

-- Royal Canin — Renal (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/renal-3916',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Omega-6 overgenomen uit de opgave "Essentieel vetzuur (linolzuur)" (linolzuur is een omega-6 vetzuur). EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht en omega-3 worden niet vermeld.'
 where id = '79481b36-d88a-44da-a876-3f4bbbf51306';
delete from public.recipe_nutrition where recipe_version_id = '79481b36-d88a-44da-a876-3f4bbbf51306';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('79481b36-d88a-44da-a876-3f4bbbf51306', 'protein', 14, 'as-fed'),
  ('79481b36-d88a-44da-a876-3f4bbbf51306', 'fat', 18, 'as-fed'),
  ('79481b36-d88a-44da-a876-3f4bbbf51306', 'fiber', 2.4, 'as-fed'),
  ('79481b36-d88a-44da-a876-3f4bbbf51306', 'ash', 4, 'as-fed'),
  ('79481b36-d88a-44da-a876-3f4bbbf51306', 'calcium', 0.4, 'as-fed'),
  ('79481b36-d88a-44da-a876-3f4bbbf51306', 'phosphorus', 0.2, 'as-fed'),
  ('79481b36-d88a-44da-a876-3f4bbbf51306', 'omega6', 4, 'as-fed');

-- Royal Canin — Renal (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/renal-4020',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Omega-6 overgenomen uit de opgave "Essentiële vetzuren (linolzuur)" (linolzuur is een omega-6 vetzuur). Omega-3 wordt niet vermeld.'
 where id = '83dbebc5-1825-464a-9345-e5bdd85bb713';
delete from public.recipe_nutrition where recipe_version_id = '83dbebc5-1825-464a-9345-e5bdd85bb713';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('83dbebc5-1825-464a-9345-e5bdd85bb713', 'protein', 5.4, 'as-fed'),
  ('83dbebc5-1825-464a-9345-e5bdd85bb713', 'fat', 9, 'as-fed'),
  ('83dbebc5-1825-464a-9345-e5bdd85bb713', 'fiber', 1, 'as-fed'),
  ('83dbebc5-1825-464a-9345-e5bdd85bb713', 'ash', 1.7, 'as-fed'),
  ('83dbebc5-1825-464a-9345-e5bdd85bb713', 'moisture', 66, 'as-fed'),
  ('83dbebc5-1825-464a-9345-e5bdd85bb713', 'calcium', 0.17, 'as-fed'),
  ('83dbebc5-1825-464a-9345-e5bdd85bb713', 'phosphorus', 0.11, 'as-fed'),
  ('83dbebc5-1825-464a-9345-e5bdd85bb713', 'omega6', 2.9, 'as-fed');

-- Royal Canin — Renal (natvoer - Portie) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/renal-1356',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Omega-6 overgenomen uit de opgave "Essentiële vetzuren (linolzuur)" (linolzuur is een omega-6 vetzuur). Omega-3 wordt niet vermeld.'
 where id = '56de82e9-d9c5-4cd1-8276-6738ee4ae2ff';
delete from public.recipe_nutrition where recipe_version_id = '56de82e9-d9c5-4cd1-8276-6738ee4ae2ff';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('56de82e9-d9c5-4cd1-8276-6738ee4ae2ff', 'protein', 3.7, 'as-fed'),
  ('56de82e9-d9c5-4cd1-8276-6738ee4ae2ff', 'fat', 6, 'as-fed'),
  ('56de82e9-d9c5-4cd1-8276-6738ee4ae2ff', 'fiber', 0.6, 'as-fed'),
  ('56de82e9-d9c5-4cd1-8276-6738ee4ae2ff', 'ash', 1.2, 'as-fed'),
  ('56de82e9-d9c5-4cd1-8276-6738ee4ae2ff', 'moisture', 80, 'as-fed'),
  ('56de82e9-d9c5-4cd1-8276-6738ee4ae2ff', 'calcium', 0.15, 'as-fed'),
  ('56de82e9-d9c5-4cd1-8276-6738ee4ae2ff', 'phosphorus', 0.08, 'as-fed'),
  ('56de82e9-d9c5-4cd1-8276-6738ee4ae2ff', 'omega6', 1.6, 'as-fed');

-- Royal Canin — Renal + Hypoallergenic (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/renal-%2b-hypoallergenic-6501',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 4.031,0kcal/kg omgerekend naar 403,1 kcal/100 g (gedeeld door 10). Omega-6 overgenomen uit de opgave "Essentieel vetzuur (linolzuur)" (linolzuur is een omega-6 vetzuur). EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht en omega-3 worden niet vermeld.'
 where id = '7223c76c-acc0-4a7c-8aa7-32f0644ff9d2';
delete from public.recipe_nutrition where recipe_version_id = '7223c76c-acc0-4a7c-8aa7-32f0644ff9d2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7223c76c-acc0-4a7c-8aa7-32f0644ff9d2', 'protein', 14, 'as-fed'),
  ('7223c76c-acc0-4a7c-8aa7-32f0644ff9d2', 'fat', 19, 'as-fed'),
  ('7223c76c-acc0-4a7c-8aa7-32f0644ff9d2', 'fiber', 2.3, 'as-fed'),
  ('7223c76c-acc0-4a7c-8aa7-32f0644ff9d2', 'ash', 4.2, 'as-fed'),
  ('7223c76c-acc0-4a7c-8aa7-32f0644ff9d2', 'kcal', 403.1, 'as-fed'),
  ('7223c76c-acc0-4a7c-8aa7-32f0644ff9d2', 'calcium', 0.3, 'as-fed'),
  ('7223c76c-acc0-4a7c-8aa7-32f0644ff9d2', 'phosphorus', 0.18, 'as-fed'),
  ('7223c76c-acc0-4a7c-8aa7-32f0644ff9d2', 'omega6', 4.02, 'as-fed');

-- Royal Canin — Renal + Mobility (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/renal-%2b-mobility-1247',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3.966kcal/kg omgerekend naar 396,6 kcal/100 g (gedeeld door 10). Omega-6 overgenomen uit de opgave "Essentieel vetzuur (linolzuur)" (linolzuur is een omega-6 vetzuur). Vocht wordt niet vermeld.'
 where id = '9ad5acfc-2e9a-49e2-b9ba-4e7a5ae72946';
delete from public.recipe_nutrition where recipe_version_id = '9ad5acfc-2e9a-49e2-b9ba-4e7a5ae72946';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9ad5acfc-2e9a-49e2-b9ba-4e7a5ae72946', 'protein', 13.5, 'as-fed'),
  ('9ad5acfc-2e9a-49e2-b9ba-4e7a5ae72946', 'fat', 17.5, 'as-fed'),
  ('9ad5acfc-2e9a-49e2-b9ba-4e7a5ae72946', 'fiber', 2.3, 'as-fed'),
  ('9ad5acfc-2e9a-49e2-b9ba-4e7a5ae72946', 'ash', 4, 'as-fed'),
  ('9ad5acfc-2e9a-49e2-b9ba-4e7a5ae72946', 'kcal', 396.6, 'as-fed'),
  ('9ad5acfc-2e9a-49e2-b9ba-4e7a5ae72946', 'calcium', 0.39, 'as-fed'),
  ('9ad5acfc-2e9a-49e2-b9ba-4e7a5ae72946', 'phosphorus', 0.2, 'as-fed'),
  ('9ad5acfc-2e9a-49e2-b9ba-4e7a5ae72946', 'omega3', 1.21, 'as-fed'),
  ('9ad5acfc-2e9a-49e2-b9ba-4e7a5ae72946', 'omega6', 3.64, 'as-fed');

-- Royal Canin — Renal + Mobility (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/renal-%2b-mobility-8090',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 1.421kcal/kg omgerekend naar 142,1 kcal/100 g (gedeeld door 10). Omega-6 overgenomen uit de opgave "Essentieel vetzuur (linolzuur)" (linolzuur is een omega-6 vetzuur).'
 where id = '094563dd-7f23-4222-ad2d-828643f24b84';
delete from public.recipe_nutrition where recipe_version_id = '094563dd-7f23-4222-ad2d-828643f24b84';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('094563dd-7f23-4222-ad2d-828643f24b84', 'protein', 5.4, 'as-fed'),
  ('094563dd-7f23-4222-ad2d-828643f24b84', 'fat', 6, 'as-fed'),
  ('094563dd-7f23-4222-ad2d-828643f24b84', 'fiber', 0.9, 'as-fed'),
  ('094563dd-7f23-4222-ad2d-828643f24b84', 'ash', 1.6, 'as-fed'),
  ('094563dd-7f23-4222-ad2d-828643f24b84', 'moisture', 67, 'as-fed'),
  ('094563dd-7f23-4222-ad2d-828643f24b84', 'kcal', 142.1, 'as-fed'),
  ('094563dd-7f23-4222-ad2d-828643f24b84', 'calcium', 0.17, 'as-fed'),
  ('094563dd-7f23-4222-ad2d-828643f24b84', 'phosphorus', 0.11, 'as-fed'),
  ('094563dd-7f23-4222-ad2d-828643f24b84', 'omega3', 0.4, 'as-fed'),
  ('094563dd-7f23-4222-ad2d-828643f24b84', 'omega6', 1.3, 'as-fed');

-- Royal Canin — Renal Liquid Dog (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/renal-liquid-dog-4911',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 105 kcal per 100 ml overgenomen als kcal/100 g. De fabrikant vermeldt de analytische bestanddelen in grammen; deze zijn overgenomen als percentage as-fed. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Omega-3 en omega-6 worden niet vermeld.'
 where id = '56c30b96-c79b-43f9-a423-c5d10724a707';
delete from public.recipe_nutrition where recipe_version_id = '56c30b96-c79b-43f9-a423-c5d10724a707';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('56c30b96-c79b-43f9-a423-c5d10724a707', 'protein', 7, 'as-fed'),
  ('56c30b96-c79b-43f9-a423-c5d10724a707', 'fat', 5.5, 'as-fed'),
  ('56c30b96-c79b-43f9-a423-c5d10724a707', 'fiber', 0, 'as-fed'),
  ('56c30b96-c79b-43f9-a423-c5d10724a707', 'ash', 0.9, 'as-fed'),
  ('56c30b96-c79b-43f9-a423-c5d10724a707', 'moisture', 85, 'as-fed'),
  ('56c30b96-c79b-43f9-a423-c5d10724a707', 'kcal', 105, 'as-fed'),
  ('56c30b96-c79b-43f9-a423-c5d10724a707', 'calcium', 0.1, 'as-fed'),
  ('56c30b96-c79b-43f9-a423-c5d10724a707', 'phosphorus', 0.08, 'as-fed');

commit;
