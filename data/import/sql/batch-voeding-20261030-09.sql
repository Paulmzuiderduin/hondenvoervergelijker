begin;

-- Royal Canin — Adult (natvoer) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/adult-1504',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Omega-6 overgenomen uit de opgave "Linolzuur" (linolzuur is een omega-6 vetzuur). EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Calcium, fosfor en omega-3 worden niet vermeld.'
 where id = '5088279c-2be4-4130-a1e4-58e18b6c9528';
delete from public.recipe_nutrition where recipe_version_id = '5088279c-2be4-4130-a1e4-58e18b6c9528';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5088279c-2be4-4130-a1e4-58e18b6c9528', 'protein', 7.6, 'as-fed'),
  ('5088279c-2be4-4130-a1e4-58e18b6c9528', 'fat', 4.5, 'as-fed'),
  ('5088279c-2be4-4130-a1e4-58e18b6c9528', 'fiber', 1.1, 'as-fed'),
  ('5088279c-2be4-4130-a1e4-58e18b6c9528', 'ash', 1.8, 'as-fed'),
  ('5088279c-2be4-4130-a1e4-58e18b6c9528', 'moisture', 79, 'as-fed'),
  ('5088279c-2be4-4130-a1e4-58e18b6c9528', 'omega6', 0.9, 'as-fed');

-- Royal Canin — Adult Large Dogs (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/adult-large-dog-3708',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Omega-6 overgenomen uit de opgave "Essentiële vetzuren (linolzuur)" (linolzuur is een omega-6 vetzuur). Vocht, calcium, fosfor en omega-3 worden niet vermeld.'
 where id = '3bc01686-5d76-447e-bc3c-77ed5417bf89';
delete from public.recipe_nutrition where recipe_version_id = '3bc01686-5d76-447e-bc3c-77ed5417bf89';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3bc01686-5d76-447e-bc3c-77ed5417bf89', 'protein', 25, 'as-fed'),
  ('3bc01686-5d76-447e-bc3c-77ed5417bf89', 'fat', 17, 'as-fed'),
  ('3bc01686-5d76-447e-bc3c-77ed5417bf89', 'fiber', 1.8, 'as-fed'),
  ('3bc01686-5d76-447e-bc3c-77ed5417bf89', 'ash', 6.2, 'as-fed'),
  ('3bc01686-5d76-447e-bc3c-77ed5417bf89', 'omega6', 3.34, 'as-fed');

-- Royal Canin — Adult Small Dogs (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/adult-small-dog-3702',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3.871kcal/kg omgerekend naar 387,1 kcal/100 g (gedeeld door 10). EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, omega-3 en omega-6 worden niet vermeld.'
 where id = 'ddb5e488-a3e3-49f7-8c99-8aea3d26577b';
delete from public.recipe_nutrition where recipe_version_id = 'ddb5e488-a3e3-49f7-8c99-8aea3d26577b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ddb5e488-a3e3-49f7-8c99-8aea3d26577b', 'protein', 25, 'as-fed'),
  ('ddb5e488-a3e3-49f7-8c99-8aea3d26577b', 'fat', 16, 'as-fed'),
  ('ddb5e488-a3e3-49f7-8c99-8aea3d26577b', 'fiber', 1.5, 'as-fed'),
  ('ddb5e488-a3e3-49f7-8c99-8aea3d26577b', 'ash', 7.5, 'as-fed'),
  ('ddb5e488-a3e3-49f7-8c99-8aea3d26577b', 'kcal', 387.1, 'as-fed'),
  ('ddb5e488-a3e3-49f7-8c99-8aea3d26577b', 'calcium', 0.92, 'as-fed'),
  ('ddb5e488-a3e3-49f7-8c99-8aea3d26577b', 'phosphorus', 0.7, 'as-fed');

-- Royal Canin — Anallergenic (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/anallergenic-4014',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Omega-6 overgenomen uit de opgave "Essentieel vetzuur (linolzuur)" (linolzuur is een omega-6 vetzuur). Vocht, calcium, fosfor en omega-3 worden niet vermeld.'
 where id = '486a03bd-0856-4cb1-b136-27531186eebd';
delete from public.recipe_nutrition where recipe_version_id = '486a03bd-0856-4cb1-b136-27531186eebd';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('486a03bd-0856-4cb1-b136-27531186eebd', 'protein', 18, 'as-fed'),
  ('486a03bd-0856-4cb1-b136-27531186eebd', 'fat', 16.5, 'as-fed'),
  ('486a03bd-0856-4cb1-b136-27531186eebd', 'fiber', 2, 'as-fed'),
  ('486a03bd-0856-4cb1-b136-27531186eebd', 'ash', 6.2, 'as-fed'),
  ('486a03bd-0856-4cb1-b136-27531186eebd', 'omega6', 2.6, 'as-fed');

-- Royal Canin — Anallergenic Small Dogs (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/anallergenic-small-dog-3317',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'b8e2f146-4289-483a-afeb-6ccfdf9fcfd4';
delete from public.recipe_nutrition where recipe_version_id = 'b8e2f146-4289-483a-afeb-6ccfdf9fcfd4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b8e2f146-4289-483a-afeb-6ccfdf9fcfd4', 'protein', 20, 'as-fed'),
  ('b8e2f146-4289-483a-afeb-6ccfdf9fcfd4', 'fat', 15, 'as-fed'),
  ('b8e2f146-4289-483a-afeb-6ccfdf9fcfd4', 'fiber', 1.9, 'as-fed'),
  ('b8e2f146-4289-483a-afeb-6ccfdf9fcfd4', 'ash', 7.2, 'as-fed');

-- Royal Canin — Beagle Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/beagle-adult-2106',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '01719aab-6229-4001-a1b0-8cb791f020be';
delete from public.recipe_nutrition where recipe_version_id = '01719aab-6229-4001-a1b0-8cb791f020be';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('01719aab-6229-4001-a1b0-8cb791f020be', 'protein', 27, 'as-fed'),
  ('01719aab-6229-4001-a1b0-8cb791f020be', 'fat', 12, 'as-fed'),
  ('01719aab-6229-4001-a1b0-8cb791f020be', 'fiber', 3.7, 'as-fed'),
  ('01719aab-6229-4001-a1b0-8cb791f020be', 'ash', 6.3, 'as-fed');

-- Royal Canin — Bichon Frise Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/bichon-frise-adult-4134',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor en omega-6 worden niet vermeld.'
 where id = 'b21dd081-648b-4c68-86e2-9c020966505f';
delete from public.recipe_nutrition where recipe_version_id = 'b21dd081-648b-4c68-86e2-9c020966505f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b21dd081-648b-4c68-86e2-9c020966505f', 'protein', 29, 'as-fed'),
  ('b21dd081-648b-4c68-86e2-9c020966505f', 'fat', 15, 'as-fed'),
  ('b21dd081-648b-4c68-86e2-9c020966505f', 'fiber', 1.6, 'as-fed'),
  ('b21dd081-648b-4c68-86e2-9c020966505f', 'ash', 6.6, 'as-fed'),
  ('b21dd081-648b-4c68-86e2-9c020966505f', 'omega3', 0.75, 'as-fed');

-- Royal Canin — Boxer Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/boxer-adult-2588',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'b3cc718a-976f-4f99-964e-5c37409fe56e';
delete from public.recipe_nutrition where recipe_version_id = 'b3cc718a-976f-4f99-964e-5c37409fe56e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b3cc718a-976f-4f99-964e-5c37409fe56e', 'protein', 26, 'as-fed'),
  ('b3cc718a-976f-4f99-964e-5c37409fe56e', 'fat', 20, 'as-fed'),
  ('b3cc718a-976f-4f99-964e-5c37409fe56e', 'fiber', 2.4, 'as-fed'),
  ('b3cc718a-976f-4f99-964e-5c37409fe56e', 'ash', 5.9, 'as-fed');

-- Royal Canin — Boxer Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/boxer-apuppy-3966',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '5a866c65-54e8-4d6e-b9b6-2d1000176be3';
delete from public.recipe_nutrition where recipe_version_id = '5a866c65-54e8-4d6e-b9b6-2d1000176be3';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5a866c65-54e8-4d6e-b9b6-2d1000176be3', 'protein', 30, 'as-fed'),
  ('5a866c65-54e8-4d6e-b9b6-2d1000176be3', 'fat', 18, 'as-fed'),
  ('5a866c65-54e8-4d6e-b9b6-2d1000176be3', 'fiber', 1.8, 'as-fed'),
  ('5a866c65-54e8-4d6e-b9b6-2d1000176be3', 'ash', 7.5, 'as-fed');

-- Royal Canin — Bulldog Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/bulldog-adult-2590',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '3dc155a6-707d-4db1-b75b-0bdec14a3eb9';
delete from public.recipe_nutrition where recipe_version_id = '3dc155a6-707d-4db1-b75b-0bdec14a3eb9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3dc155a6-707d-4db1-b75b-0bdec14a3eb9', 'protein', 24, 'as-fed'),
  ('3dc155a6-707d-4db1-b75b-0bdec14a3eb9', 'fat', 14, 'as-fed'),
  ('3dc155a6-707d-4db1-b75b-0bdec14a3eb9', 'fiber', 2.8, 'as-fed'),
  ('3dc155a6-707d-4db1-b75b-0bdec14a3eb9', 'ash', 6.5, 'as-fed');

-- Royal Canin — Bulldog Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/bulldog-puppy-3967',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, omega-3 en omega-6 worden niet vermeld.'
 where id = 'b025374e-f05a-40b5-91e9-3c3d5afdceaf';
delete from public.recipe_nutrition where recipe_version_id = 'b025374e-f05a-40b5-91e9-3c3d5afdceaf';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b025374e-f05a-40b5-91e9-3c3d5afdceaf', 'protein', 30, 'as-fed'),
  ('b025374e-f05a-40b5-91e9-3c3d5afdceaf', 'fat', 17, 'as-fed'),
  ('b025374e-f05a-40b5-91e9-3c3d5afdceaf', 'fiber', 2.4, 'as-fed'),
  ('b025374e-f05a-40b5-91e9-3c3d5afdceaf', 'ash', 7.8, 'as-fed'),
  ('b025374e-f05a-40b5-91e9-3c3d5afdceaf', 'calcium', 1.26, 'as-fed'),
  ('b025374e-f05a-40b5-91e9-3c3d5afdceaf', 'phosphorus', 1, 'as-fed');

-- Royal Canin — Calm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/calm-3956',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor en omega-6 worden niet vermeld.'
 where id = '95e35698-8015-4900-a340-dbe170e440d0';
delete from public.recipe_nutrition where recipe_version_id = '95e35698-8015-4900-a340-dbe170e440d0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('95e35698-8015-4900-a340-dbe170e440d0', 'protein', 25, 'as-fed'),
  ('95e35698-8015-4900-a340-dbe170e440d0', 'fat', 16, 'as-fed'),
  ('95e35698-8015-4900-a340-dbe170e440d0', 'fiber', 1.5, 'as-fed'),
  ('95e35698-8015-4900-a340-dbe170e440d0', 'ash', 7.1, 'as-fed'),
  ('95e35698-8015-4900-a340-dbe170e440d0', 'omega3', 0.68, 'as-fed');

-- Royal Canin — Cardiac (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/cardiac-3930',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 4.158kcal/kg omgerekend naar 415,8 kcal/100 g (gedeeld door 10). Vocht, calcium, fosfor en omega-6 worden niet vermeld.'
 where id = '1277bda8-fdcc-4098-9582-41629e4bcb8a';
delete from public.recipe_nutrition where recipe_version_id = '1277bda8-fdcc-4098-9582-41629e4bcb8a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1277bda8-fdcc-4098-9582-41629e4bcb8a', 'protein', 26, 'as-fed'),
  ('1277bda8-fdcc-4098-9582-41629e4bcb8a', 'fat', 20, 'as-fed'),
  ('1277bda8-fdcc-4098-9582-41629e4bcb8a', 'fiber', 1.7, 'as-fed'),
  ('1277bda8-fdcc-4098-9582-41629e4bcb8a', 'ash', 5, 'as-fed'),
  ('1277bda8-fdcc-4098-9582-41629e4bcb8a', 'kcal', 415.8, 'as-fed'),
  ('1277bda8-fdcc-4098-9582-41629e4bcb8a', 'omega3', 0.85, 'as-fed');

-- Royal Canin — Cardiac (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/cardiac-loaf-4023',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Calcium, fosfor en omega-6 worden niet vermeld.'
 where id = 'f69169a7-26c6-4625-90dc-d246b86043a0';
delete from public.recipe_nutrition where recipe_version_id = 'f69169a7-26c6-4625-90dc-d246b86043a0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f69169a7-26c6-4625-90dc-d246b86043a0', 'protein', 8.1, 'as-fed'),
  ('f69169a7-26c6-4625-90dc-d246b86043a0', 'fat', 7.1, 'as-fed'),
  ('f69169a7-26c6-4625-90dc-d246b86043a0', 'fiber', 0.8, 'as-fed'),
  ('f69169a7-26c6-4625-90dc-d246b86043a0', 'ash', 1.4, 'as-fed'),
  ('f69169a7-26c6-4625-90dc-d246b86043a0', 'moisture', 73.5, 'as-fed'),
  ('f69169a7-26c6-4625-90dc-d246b86043a0', 'omega3', 0.48, 'as-fed');

-- Royal Canin — Cavalier King Charles Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/cavalier-king-charles-adult-3968',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '9c8288ac-fc5c-4af6-b5fb-3923794dc28b';
delete from public.recipe_nutrition where recipe_version_id = '9c8288ac-fc5c-4af6-b5fb-3923794dc28b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9c8288ac-fc5c-4af6-b5fb-3923794dc28b', 'protein', 27, 'as-fed'),
  ('9c8288ac-fc5c-4af6-b5fb-3923794dc28b', 'fat', 14, 'as-fed'),
  ('9c8288ac-fc5c-4af6-b5fb-3923794dc28b', 'fiber', 2.7, 'as-fed'),
  ('9c8288ac-fc5c-4af6-b5fb-3923794dc28b', 'ash', 5.8, 'as-fed');

-- Royal Canin — Cavalier King Charles Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/cavalier-king-charles-puppy-4132',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'c42b4703-10cf-4f3c-916b-e0b6fdefdbc2';
delete from public.recipe_nutrition where recipe_version_id = 'c42b4703-10cf-4f3c-916b-e0b6fdefdbc2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c42b4703-10cf-4f3c-916b-e0b6fdefdbc2', 'protein', 30, 'as-fed'),
  ('c42b4703-10cf-4f3c-916b-e0b6fdefdbc2', 'fat', 18, 'as-fed'),
  ('c42b4703-10cf-4f3c-916b-e0b6fdefdbc2', 'fiber', 1.5, 'as-fed'),
  ('c42b4703-10cf-4f3c-916b-e0b6fdefdbc2', 'ash', 7.6, 'as-fed');

-- Royal Canin — Chihuahua Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/chihuahua-adult-2210',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '9c451266-889b-4e0e-9c29-74c39b05547f';
delete from public.recipe_nutrition where recipe_version_id = '9c451266-889b-4e0e-9c29-74c39b05547f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9c451266-889b-4e0e-9c29-74c39b05547f', 'protein', 28, 'as-fed'),
  ('9c451266-889b-4e0e-9c29-74c39b05547f', 'fat', 16, 'as-fed'),
  ('9c451266-889b-4e0e-9c29-74c39b05547f', 'fiber', 2, 'as-fed'),
  ('9c451266-889b-4e0e-9c29-74c39b05547f', 'ash', 5.2, 'as-fed');

-- Royal Canin — Chihuahua Adult in Loaf (paté) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/chihuahua-2041',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '7dad84b9-72c1-445c-aa61-25b447855c3f';
delete from public.recipe_nutrition where recipe_version_id = '7dad84b9-72c1-445c-aa61-25b447855c3f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7dad84b9-72c1-445c-aa61-25b447855c3f', 'protein', 8.5, 'as-fed'),
  ('7dad84b9-72c1-445c-aa61-25b447855c3f', 'fat', 5.6, 'as-fed'),
  ('7dad84b9-72c1-445c-aa61-25b447855c3f', 'fiber', 1.1, 'as-fed'),
  ('7dad84b9-72c1-445c-aa61-25b447855c3f', 'ash', 2, 'as-fed'),
  ('7dad84b9-72c1-445c-aa61-25b447855c3f', 'moisture', 79.1, 'as-fed');

-- Royal Canin — Chihuahua Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/chihuahua-puppy-2438',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '75d2d944-aadc-41c3-b702-bc945f1afcd6';
delete from public.recipe_nutrition where recipe_version_id = '75d2d944-aadc-41c3-b702-bc945f1afcd6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('75d2d944-aadc-41c3-b702-bc945f1afcd6', 'protein', 30, 'as-fed'),
  ('75d2d944-aadc-41c3-b702-bc945f1afcd6', 'fat', 20, 'as-fed'),
  ('75d2d944-aadc-41c3-b702-bc945f1afcd6', 'fiber', 2, 'as-fed'),
  ('75d2d944-aadc-41c3-b702-bc945f1afcd6', 'ash', 7.2, 'as-fed');

-- Royal Canin — Coat Care in Loaf (paté) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/coat-care-1184',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'ab3d52a7-ce99-422d-882c-ba08d83ea3aa';
delete from public.recipe_nutrition where recipe_version_id = 'ab3d52a7-ce99-422d-882c-ba08d83ea3aa';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ab3d52a7-ce99-422d-882c-ba08d83ea3aa', 'protein', 8.6, 'as-fed'),
  ('ab3d52a7-ce99-422d-882c-ba08d83ea3aa', 'fat', 6.5, 'as-fed'),
  ('ab3d52a7-ce99-422d-882c-ba08d83ea3aa', 'fiber', 1.3, 'as-fed'),
  ('ab3d52a7-ce99-422d-882c-ba08d83ea3aa', 'ash', 1.7, 'as-fed'),
  ('ab3d52a7-ce99-422d-882c-ba08d83ea3aa', 'moisture', 78.1, 'as-fed');

-- Royal Canin — Coat Care Mini (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/mini-coat-care-1220',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '74a200b9-ac65-4eac-80ad-c3f8203d95fa';
delete from public.recipe_nutrition where recipe_version_id = '74a200b9-ac65-4eac-80ad-c3f8203d95fa';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('74a200b9-ac65-4eac-80ad-c3f8203d95fa', 'protein', 30, 'as-fed'),
  ('74a200b9-ac65-4eac-80ad-c3f8203d95fa', 'fat', 16, 'as-fed'),
  ('74a200b9-ac65-4eac-80ad-c3f8203d95fa', 'fiber', 2.4, 'as-fed'),
  ('74a200b9-ac65-4eac-80ad-c3f8203d95fa', 'ash', 5.9, 'as-fed');

-- Royal Canin — Cocker Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/cocker-adult-3969',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'dcfcd7e3-260d-4b07-947f-8cbaa28e929d';
delete from public.recipe_nutrition where recipe_version_id = 'dcfcd7e3-260d-4b07-947f-8cbaa28e929d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('dcfcd7e3-260d-4b07-947f-8cbaa28e929d', 'protein', 25, 'as-fed'),
  ('dcfcd7e3-260d-4b07-947f-8cbaa28e929d', 'fat', 14, 'as-fed'),
  ('dcfcd7e3-260d-4b07-947f-8cbaa28e929d', 'fiber', 1.3, 'as-fed'),
  ('dcfcd7e3-260d-4b07-947f-8cbaa28e929d', 'ash', 5.2, 'as-fed');

-- Royal Canin — Cocker Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/cocker-puppy-4133',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '4bd4a45a-1c5b-4a9f-838e-9e64ca245a9c';
delete from public.recipe_nutrition where recipe_version_id = '4bd4a45a-1c5b-4a9f-838e-9e64ca245a9c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4bd4a45a-1c5b-4a9f-838e-9e64ca245a9c', 'protein', 32, 'as-fed'),
  ('4bd4a45a-1c5b-4a9f-838e-9e64ca245a9c', 'fat', 18, 'as-fed'),
  ('4bd4a45a-1c5b-4a9f-838e-9e64ca245a9c', 'fiber', 1.8, 'as-fed'),
  ('4bd4a45a-1c5b-4a9f-838e-9e64ca245a9c', 'ash', 7.7, 'as-fed');

-- Royal Canin — Dachshund Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/dachshund-adult-3059',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, omega-3 en omega-6 worden niet vermeld.'
 where id = 'b359fa21-05c7-4116-97d1-dad80a025a1b';
delete from public.recipe_nutrition where recipe_version_id = 'b359fa21-05c7-4116-97d1-dad80a025a1b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b359fa21-05c7-4116-97d1-dad80a025a1b', 'protein', 28, 'as-fed'),
  ('b359fa21-05c7-4116-97d1-dad80a025a1b', 'fat', 14, 'as-fed'),
  ('b359fa21-05c7-4116-97d1-dad80a025a1b', 'fiber', 3, 'as-fed'),
  ('b359fa21-05c7-4116-97d1-dad80a025a1b', 'ash', 6.5, 'as-fed'),
  ('b359fa21-05c7-4116-97d1-dad80a025a1b', 'calcium', 0.8, 'as-fed'),
  ('b359fa21-05c7-4116-97d1-dad80a025a1b', 'phosphorus', 0.7, 'as-fed');

-- Royal Canin — Dachshund Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/dachshund-puppy-2437',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, omega-3 en omega-6 worden niet vermeld.'
 where id = '0a974c26-8d41-4e80-95c7-55058d55f104';
delete from public.recipe_nutrition where recipe_version_id = '0a974c26-8d41-4e80-95c7-55058d55f104';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0a974c26-8d41-4e80-95c7-55058d55f104', 'protein', 30, 'as-fed'),
  ('0a974c26-8d41-4e80-95c7-55058d55f104', 'fat', 16, 'as-fed'),
  ('0a974c26-8d41-4e80-95c7-55058d55f104', 'fiber', 1.5, 'as-fed'),
  ('0a974c26-8d41-4e80-95c7-55058d55f104', 'ash', 7.6, 'as-fed'),
  ('0a974c26-8d41-4e80-95c7-55058d55f104', 'calcium', 1.26, 'as-fed'),
  ('0a974c26-8d41-4e80-95c7-55058d55f104', 'phosphorus', 1, 'as-fed');

commit;
