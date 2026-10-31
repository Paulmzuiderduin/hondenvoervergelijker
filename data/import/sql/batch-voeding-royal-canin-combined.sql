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

-- Royal Canin — Dalmatian Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/dalmatian-adult-2598',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'd1842fea-3592-409c-8b1c-a17e98f9db2b';
delete from public.recipe_nutrition where recipe_version_id = 'd1842fea-3592-409c-8b1c-a17e98f9db2b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d1842fea-3592-409c-8b1c-a17e98f9db2b', 'protein', 22, 'as-fed'),
  ('d1842fea-3592-409c-8b1c-a17e98f9db2b', 'fat', 18, 'as-fed'),
  ('d1842fea-3592-409c-8b1c-a17e98f9db2b', 'fiber', 2.7, 'as-fed'),
  ('d1842fea-3592-409c-8b1c-a17e98f9db2b', 'ash', 6.4, 'as-fed');

-- Royal Canin — Dalmatian Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/dalmatian-puppy-2597',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '3a9aa9f0-744f-40b0-a757-e550f2d9ffa4';
delete from public.recipe_nutrition where recipe_version_id = '3a9aa9f0-744f-40b0-a757-e550f2d9ffa4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3a9aa9f0-744f-40b0-a757-e550f2d9ffa4', 'protein', 25.5, 'as-fed'),
  ('3a9aa9f0-744f-40b0-a757-e550f2d9ffa4', 'fat', 18, 'as-fed'),
  ('3a9aa9f0-744f-40b0-a757-e550f2d9ffa4', 'fiber', 3.6, 'as-fed'),
  ('3a9aa9f0-744f-40b0-a757-e550f2d9ffa4', 'ash', 7.6, 'as-fed');

-- Royal Canin — Dental Care Maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/maxi-dental-care-1223',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'f4b0f77b-64cf-4aad-921c-d816c04cd7b9';
delete from public.recipe_nutrition where recipe_version_id = 'f4b0f77b-64cf-4aad-921c-d816c04cd7b9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f4b0f77b-64cf-4aad-921c-d816c04cd7b9', 'protein', 23, 'as-fed'),
  ('f4b0f77b-64cf-4aad-921c-d816c04cd7b9', 'fat', 16, 'as-fed'),
  ('f4b0f77b-64cf-4aad-921c-d816c04cd7b9', 'fiber', 2.8, 'as-fed'),
  ('f4b0f77b-64cf-4aad-921c-d816c04cd7b9', 'ash', 6, 'as-fed');

-- Royal Canin — Dental Care Medium (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/medium-dental-care-1222',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '89fd6ce4-563e-446a-8893-21444d6a7e8f';
delete from public.recipe_nutrition where recipe_version_id = '89fd6ce4-563e-446a-8893-21444d6a7e8f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('89fd6ce4-563e-446a-8893-21444d6a7e8f', 'protein', 23, 'as-fed'),
  ('89fd6ce4-563e-446a-8893-21444d6a7e8f', 'fat', 16, 'as-fed'),
  ('89fd6ce4-563e-446a-8893-21444d6a7e8f', 'fiber', 2.6, 'as-fed'),
  ('89fd6ce4-563e-446a-8893-21444d6a7e8f', 'ash', 5.9, 'as-fed');

-- Royal Canin — Dental Care Mini (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/mini-dental-care-1221',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'b72389b4-e158-4ff6-9442-90d7549d596f';
delete from public.recipe_nutrition where recipe_version_id = 'b72389b4-e158-4ff6-9442-90d7549d596f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b72389b4-e158-4ff6-9442-90d7549d596f', 'protein', 23, 'as-fed'),
  ('b72389b4-e158-4ff6-9442-90d7549d596f', 'fat', 16, 'as-fed'),
  ('b72389b4-e158-4ff6-9442-90d7549d596f', 'fiber', 2.1, 'as-fed'),
  ('b72389b4-e158-4ff6-9442-90d7549d596f', 'ash', 6.8, 'as-fed');

-- Royal Canin — Dental Medium & Large Dogs (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/dental-dog-dry-3722',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Omega-6 overgenomen uit de opgave "Essentiële vetzuren (linolzuur)" (linolzuur is een omega-6 vetzuur). Vocht, fosfor en omega-3 worden niet vermeld.'
 where id = '81ad9539-9845-4958-9e7b-b4dc0b209d42';
delete from public.recipe_nutrition where recipe_version_id = '81ad9539-9845-4958-9e7b-b4dc0b209d42';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('81ad9539-9845-4958-9e7b-b4dc0b209d42', 'protein', 22, 'as-fed'),
  ('81ad9539-9845-4958-9e7b-b4dc0b209d42', 'fat', 17, 'as-fed'),
  ('81ad9539-9845-4958-9e7b-b4dc0b209d42', 'fiber', 3.1, 'as-fed'),
  ('81ad9539-9845-4958-9e7b-b4dc0b209d42', 'ash', 5.2, 'as-fed'),
  ('81ad9539-9845-4958-9e7b-b4dc0b209d42', 'calcium', 0.8, 'as-fed'),
  ('81ad9539-9845-4958-9e7b-b4dc0b209d42', 'omega6', 2.64, 'as-fed');

-- Royal Canin — Dental Small Dogs (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/dental-small-dog-3723',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '8579d97e-c881-4ccf-8c0e-4212ace29bd5';
delete from public.recipe_nutrition where recipe_version_id = '8579d97e-c881-4ccf-8c0e-4212ace29bd5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8579d97e-c881-4ccf-8c0e-4212ace29bd5', 'protein', 22, 'as-fed'),
  ('8579d97e-c881-4ccf-8c0e-4212ace29bd5', 'fat', 17, 'as-fed'),
  ('8579d97e-c881-4ccf-8c0e-4212ace29bd5', 'fiber', 3.4, 'as-fed'),
  ('8579d97e-c881-4ccf-8c0e-4212ace29bd5', 'ash', 6.2, 'as-fed'),
  ('8579d97e-c881-4ccf-8c0e-4212ace29bd5', 'calcium', 0.79, 'as-fed');

-- Royal Canin — Dermacomfort Maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/maxi-dermacomfort-2444',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium en fosfor worden niet vermeld.'
 where id = 'fb99c5b5-1913-4130-aaab-2d42fae02bd8';
delete from public.recipe_nutrition where recipe_version_id = 'fb99c5b5-1913-4130-aaab-2d42fae02bd8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fb99c5b5-1913-4130-aaab-2d42fae02bd8', 'protein', 25, 'as-fed'),
  ('fb99c5b5-1913-4130-aaab-2d42fae02bd8', 'fat', 17, 'as-fed'),
  ('fb99c5b5-1913-4130-aaab-2d42fae02bd8', 'fiber', 1.6, 'as-fed'),
  ('fb99c5b5-1913-4130-aaab-2d42fae02bd8', 'ash', 5.9, 'as-fed'),
  ('fb99c5b5-1913-4130-aaab-2d42fae02bd8', 'omega3', 1.14, 'as-fed'),
  ('fb99c5b5-1913-4130-aaab-2d42fae02bd8', 'omega6', 3.6, 'as-fed');

-- Royal Canin — Diabetic (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/diabetic-special-low-carbohydrate-4015',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '45d7c604-eaa9-4839-b0f2-a2a3da0281f8';
delete from public.recipe_nutrition where recipe_version_id = '45d7c604-eaa9-4839-b0f2-a2a3da0281f8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('45d7c604-eaa9-4839-b0f2-a2a3da0281f8', 'protein', 9, 'as-fed'),
  ('45d7c604-eaa9-4839-b0f2-a2a3da0281f8', 'fat', 4, 'as-fed'),
  ('45d7c604-eaa9-4839-b0f2-a2a3da0281f8', 'fiber', 2.4, 'as-fed'),
  ('45d7c604-eaa9-4839-b0f2-a2a3da0281f8', 'ash', 1.5, 'as-fed'),
  ('45d7c604-eaa9-4839-b0f2-a2a3da0281f8', 'moisture', 79, 'as-fed');

-- Royal Canin — Digestive Care Maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/maxi-digestive-care-3055',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '41552b14-d5d2-431c-aa89-b5016fd5a984';
delete from public.recipe_nutrition where recipe_version_id = '41552b14-d5d2-431c-aa89-b5016fd5a984';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('41552b14-d5d2-431c-aa89-b5016fd5a984', 'protein', 28, 'as-fed'),
  ('41552b14-d5d2-431c-aa89-b5016fd5a984', 'fat', 18, 'as-fed'),
  ('41552b14-d5d2-431c-aa89-b5016fd5a984', 'fiber', 2.9, 'as-fed'),
  ('41552b14-d5d2-431c-aa89-b5016fd5a984', 'ash', 6, 'as-fed');

-- Royal Canin — Digestive Care Medium (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/medium-digestive-care-3016',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '3765a297-e62f-48a5-b2fa-ab1eee9f6acb';
delete from public.recipe_nutrition where recipe_version_id = '3765a297-e62f-48a5-b2fa-ab1eee9f6acb';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3765a297-e62f-48a5-b2fa-ab1eee9f6acb', 'protein', 25, 'as-fed'),
  ('3765a297-e62f-48a5-b2fa-ab1eee9f6acb', 'fat', 18, 'as-fed'),
  ('3765a297-e62f-48a5-b2fa-ab1eee9f6acb', 'fiber', 1.8, 'as-fed'),
  ('3765a297-e62f-48a5-b2fa-ab1eee9f6acb', 'ash', 6.2, 'as-fed');

-- Royal Canin — Digestive Care Mini (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/mini-digestive-care-2447',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '01bbf901-46d2-4ae3-b02c-5bb2472fb273';
delete from public.recipe_nutrition where recipe_version_id = '01bbf901-46d2-4ae3-b02c-5bb2472fb273';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('01bbf901-46d2-4ae3-b02c-5bb2472fb273', 'protein', 30, 'as-fed'),
  ('01bbf901-46d2-4ae3-b02c-5bb2472fb273', 'fat', 22, 'as-fed'),
  ('01bbf901-46d2-4ae3-b02c-5bb2472fb273', 'fiber', 1.8, 'as-fed'),
  ('01bbf901-46d2-4ae3-b02c-5bb2472fb273', 'ash', 6.1, 'as-fed');

-- Royal Canin — Early Renal (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/early-renal-1252',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Omega-6 overgenomen uit de opgave "Essentiële vetzuren (linolzuur)" (linolzuur is een omega-6 vetzuur).'
 where id = '598341bc-8229-45dc-9c90-f9a97646c5a5';
delete from public.recipe_nutrition where recipe_version_id = '598341bc-8229-45dc-9c90-f9a97646c5a5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('598341bc-8229-45dc-9c90-f9a97646c5a5', 'protein', 5.5, 'as-fed'),
  ('598341bc-8229-45dc-9c90-f9a97646c5a5', 'fat', 6, 'as-fed'),
  ('598341bc-8229-45dc-9c90-f9a97646c5a5', 'fiber', 0.7, 'as-fed'),
  ('598341bc-8229-45dc-9c90-f9a97646c5a5', 'ash', 1.3, 'as-fed'),
  ('598341bc-8229-45dc-9c90-f9a97646c5a5', 'moisture', 80, 'as-fed'),
  ('598341bc-8229-45dc-9c90-f9a97646c5a5', 'calcium', 0.17, 'as-fed'),
  ('598341bc-8229-45dc-9c90-f9a97646c5a5', 'phosphorus', 0.13, 'as-fed'),
  ('598341bc-8229-45dc-9c90-f9a97646c5a5', 'omega3', 0.2, 'as-fed'),
  ('598341bc-8229-45dc-9c90-f9a97646c5a5', 'omega6', 1.3, 'as-fed');

-- Royal Canin — Early Renal (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/early-renal-1248',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Omega-6 overgenomen uit de opgave "Essentieel vetzuur (linolzuur)" (linolzuur is een omega-6 vetzuur). Vocht wordt niet vermeld.'
 where id = '61cbf3a0-291f-45c0-8f33-775c0879a489';
delete from public.recipe_nutrition where recipe_version_id = '61cbf3a0-291f-45c0-8f33-775c0879a489';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('61cbf3a0-291f-45c0-8f33-775c0879a489', 'protein', 22.5, 'as-fed'),
  ('61cbf3a0-291f-45c0-8f33-775c0879a489', 'fat', 16, 'as-fed'),
  ('61cbf3a0-291f-45c0-8f33-775c0879a489', 'fiber', 1.5, 'as-fed'),
  ('61cbf3a0-291f-45c0-8f33-775c0879a489', 'ash', 5.1, 'as-fed'),
  ('61cbf3a0-291f-45c0-8f33-775c0879a489', 'calcium', 0.8, 'as-fed'),
  ('61cbf3a0-291f-45c0-8f33-775c0879a489', 'phosphorus', 0.5, 'as-fed'),
  ('61cbf3a0-291f-45c0-8f33-775c0879a489', 'omega3', 0.86, 'as-fed'),
  ('61cbf3a0-291f-45c0-8f33-775c0879a489', 'omega6', 2.66, 'as-fed');

-- Royal Canin — Exigent in Loaf (paté) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/exigent-1185',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '86b02918-737b-42be-aa19-76af273f6cc8';
delete from public.recipe_nutrition where recipe_version_id = '86b02918-737b-42be-aa19-76af273f6cc8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('86b02918-737b-42be-aa19-76af273f6cc8', 'protein', 8.5, 'as-fed'),
  ('86b02918-737b-42be-aa19-76af273f6cc8', 'fat', 5.9, 'as-fed'),
  ('86b02918-737b-42be-aa19-76af273f6cc8', 'fiber', 1.3, 'as-fed'),
  ('86b02918-737b-42be-aa19-76af273f6cc8', 'ash', 1.7, 'as-fed'),
  ('86b02918-737b-42be-aa19-76af273f6cc8', 'moisture', 79.5, 'as-fed');

-- Royal Canin — Exigent Mini (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/mini-exigent-1006',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '8209224f-d2a4-4945-9e36-bfc3216fafb9';
delete from public.recipe_nutrition where recipe_version_id = '8209224f-d2a4-4945-9e36-bfc3216fafb9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8209224f-d2a4-4945-9e36-bfc3216fafb9', 'protein', 30, 'as-fed'),
  ('8209224f-d2a4-4945-9e36-bfc3216fafb9', 'fat', 22, 'as-fed'),
  ('8209224f-d2a4-4945-9e36-bfc3216fafb9', 'fiber', 2.6, 'as-fed'),
  ('8209224f-d2a4-4945-9e36-bfc3216fafb9', 'ash', 4.8, 'as-fed');

-- Royal Canin — French Bulldog Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/french-bulldog-adult-3991',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '14a47395-240a-4087-94c2-2476fba106c5';
delete from public.recipe_nutrition where recipe_version_id = '14a47395-240a-4087-94c2-2476fba106c5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('14a47395-240a-4087-94c2-2476fba106c5', 'protein', 26, 'as-fed'),
  ('14a47395-240a-4087-94c2-2476fba106c5', 'fat', 18, 'as-fed'),
  ('14a47395-240a-4087-94c2-2476fba106c5', 'fiber', 1.3, 'as-fed'),
  ('14a47395-240a-4087-94c2-2476fba106c5', 'ash', 5.9, 'as-fed');

-- Royal Canin — French Bulldog Adult in Loaf (paté) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/french-bulldog-8103',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 872kcal/kg omgerekend naar 87,2 kcal/100 g (gedeeld door 10). EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Omega-3 en omega-6 worden niet vermeld.'
 where id = '3b5cbbe7-e8f5-4b77-a0e4-678ca0b9638b';
delete from public.recipe_nutrition where recipe_version_id = '3b5cbbe7-e8f5-4b77-a0e4-678ca0b9638b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3b5cbbe7-e8f5-4b77-a0e4-678ca0b9638b', 'protein', 8.6, 'as-fed'),
  ('3b5cbbe7-e8f5-4b77-a0e4-678ca0b9638b', 'fat', 5.4, 'as-fed'),
  ('3b5cbbe7-e8f5-4b77-a0e4-678ca0b9638b', 'fiber', 1.1, 'as-fed'),
  ('3b5cbbe7-e8f5-4b77-a0e4-678ca0b9638b', 'ash', 2.2, 'as-fed'),
  ('3b5cbbe7-e8f5-4b77-a0e4-678ca0b9638b', 'moisture', 80, 'as-fed'),
  ('3b5cbbe7-e8f5-4b77-a0e4-678ca0b9638b', 'kcal', 87.2, 'as-fed'),
  ('3b5cbbe7-e8f5-4b77-a0e4-678ca0b9638b', 'calcium', 0.33, 'as-fed'),
  ('3b5cbbe7-e8f5-4b77-a0e4-678ca0b9638b', 'phosphorus', 0.25, 'as-fed');

-- Royal Canin — French Bulldog Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/french-bulldog-puppy-3990',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '57c41dc2-717c-4e14-bce7-b3eb4cbde7d4';
delete from public.recipe_nutrition where recipe_version_id = '57c41dc2-717c-4e14-bce7-b3eb4cbde7d4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('57c41dc2-717c-4e14-bce7-b3eb4cbde7d4', 'protein', 30, 'as-fed'),
  ('57c41dc2-717c-4e14-bce7-b3eb4cbde7d4', 'fat', 20, 'as-fed'),
  ('57c41dc2-717c-4e14-bce7-b3eb4cbde7d4', 'fiber', 1.2, 'as-fed'),
  ('57c41dc2-717c-4e14-bce7-b3eb4cbde7d4', 'ash', 8, 'as-fed');

-- Royal Canin — Gastrointestinal (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/gastrointestinal-3911',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 4.126kcal/kg omgerekend naar 412,6 kcal/100 g (gedeeld door 10). Vocht, calcium, fosfor en omega-6 worden niet vermeld.'
 where id = 'e9bc2249-b73a-4897-80bf-c2e67fc512da';
delete from public.recipe_nutrition where recipe_version_id = 'e9bc2249-b73a-4897-80bf-c2e67fc512da';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e9bc2249-b73a-4897-80bf-c2e67fc512da', 'protein', 25, 'as-fed'),
  ('e9bc2249-b73a-4897-80bf-c2e67fc512da', 'fat', 20, 'as-fed'),
  ('e9bc2249-b73a-4897-80bf-c2e67fc512da', 'fiber', 1.9, 'as-fed'),
  ('e9bc2249-b73a-4897-80bf-c2e67fc512da', 'ash', 6.4, 'as-fed'),
  ('e9bc2249-b73a-4897-80bf-c2e67fc512da', 'kcal', 412.6, 'as-fed'),
  ('e9bc2249-b73a-4897-80bf-c2e67fc512da', 'omega3', 0.88, 'as-fed');

-- Royal Canin — Gastrointestinal (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/gastrointestinal-4038',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 1.104kcal/kg omgerekend naar 110,4 kcal/100 g (gedeeld door 10). Calcium, fosfor en omega-6 worden niet vermeld.'
 where id = 'a1310703-b3b2-4372-8b28-b01a30c1a4ea';
delete from public.recipe_nutrition where recipe_version_id = 'a1310703-b3b2-4372-8b28-b01a30c1a4ea';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a1310703-b3b2-4372-8b28-b01a30c1a4ea', 'protein', 8.9, 'as-fed'),
  ('a1310703-b3b2-4372-8b28-b01a30c1a4ea', 'fat', 5.9, 'as-fed'),
  ('a1310703-b3b2-4372-8b28-b01a30c1a4ea', 'fiber', 1.2, 'as-fed'),
  ('a1310703-b3b2-4372-8b28-b01a30c1a4ea', 'ash', 2.6, 'as-fed'),
  ('a1310703-b3b2-4372-8b28-b01a30c1a4ea', 'moisture', 74, 'as-fed'),
  ('a1310703-b3b2-4372-8b28-b01a30c1a4ea', 'kcal', 110.4, 'as-fed'),
  ('a1310703-b3b2-4372-8b28-b01a30c1a4ea', 'omega3', 0.31, 'as-fed');

-- Royal Canin — Gastrointestinal High Fibre (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/gastrointestinal-high-fibre-3959',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3.171kcal/kg omgerekend naar 317,1 kcal/100 g (gedeeld door 10). Vocht, calcium, fosfor en omega-6 worden niet vermeld.'
 where id = '6ea1d9fe-d26e-4b76-b7fe-96cfc153dbf4';
delete from public.recipe_nutrition where recipe_version_id = '6ea1d9fe-d26e-4b76-b7fe-96cfc153dbf4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6ea1d9fe-d26e-4b76-b7fe-96cfc153dbf4', 'protein', 23.2, 'as-fed'),
  ('6ea1d9fe-d26e-4b76-b7fe-96cfc153dbf4', 'fat', 16.1, 'as-fed'),
  ('6ea1d9fe-d26e-4b76-b7fe-96cfc153dbf4', 'fiber', 11.1, 'as-fed'),
  ('6ea1d9fe-d26e-4b76-b7fe-96cfc153dbf4', 'ash', 7.4, 'as-fed'),
  ('6ea1d9fe-d26e-4b76-b7fe-96cfc153dbf4', 'kcal', 317.1, 'as-fed'),
  ('6ea1d9fe-d26e-4b76-b7fe-96cfc153dbf4', 'omega3', 0.7, 'as-fed');

-- Royal Canin — Gastrointestinal High Fibre (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/gastrointestinal-high-fibre-1480',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 958kcal/kg omgerekend naar 95,8 kcal/100 g (gedeeld door 10). Calcium, fosfor en omega-6 worden niet vermeld.'
 where id = 'f7e9e97d-a9b5-4d2a-825f-827f8c5d9bcd';
delete from public.recipe_nutrition where recipe_version_id = 'f7e9e97d-a9b5-4d2a-825f-827f8c5d9bcd';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f7e9e97d-a9b5-4d2a-825f-827f8c5d9bcd', 'protein', 7.4, 'as-fed'),
  ('f7e9e97d-a9b5-4d2a-825f-827f8c5d9bcd', 'fat', 4.1, 'as-fed'),
  ('f7e9e97d-a9b5-4d2a-825f-827f8c5d9bcd', 'fiber', 2.5, 'as-fed'),
  ('f7e9e97d-a9b5-4d2a-825f-827f8c5d9bcd', 'ash', 1.6, 'as-fed'),
  ('f7e9e97d-a9b5-4d2a-825f-827f8c5d9bcd', 'moisture', 74, 'as-fed'),
  ('f7e9e97d-a9b5-4d2a-825f-827f8c5d9bcd', 'kcal', 95.8, 'as-fed'),
  ('f7e9e97d-a9b5-4d2a-825f-827f8c5d9bcd', 'omega3', 0.24, 'as-fed');

-- Royal Canin — Gastrointestinal Hydrolysed Protein (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/royal-canin--veterinary-health-nutrition-gastrointestinal-hydrolysed-protein-dry-pet-food-for-dog-8112',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3.913kcal/kg omgerekend naar 391,3 kcal/100 g (gedeeld door 10). Omega-6 overgenomen uit de opgave "Essentieel vetzuur (linolzuur)" (linolzuur is een omega-6 vetzuur). Vocht, calcium en fosfor worden niet vermeld.'
 where id = 'ed9ebf73-dc39-4a25-ad8b-646fdf80f8ee';
delete from public.recipe_nutrition where recipe_version_id = 'ed9ebf73-dc39-4a25-ad8b-646fdf80f8ee';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ed9ebf73-dc39-4a25-ad8b-646fdf80f8ee', 'protein', 25, 'as-fed'),
  ('ed9ebf73-dc39-4a25-ad8b-646fdf80f8ee', 'fat', 20, 'as-fed'),
  ('ed9ebf73-dc39-4a25-ad8b-646fdf80f8ee', 'fiber', 4.2, 'as-fed'),
  ('ed9ebf73-dc39-4a25-ad8b-646fdf80f8ee', 'ash', 6.3, 'as-fed'),
  ('ed9ebf73-dc39-4a25-ad8b-646fdf80f8ee', 'kcal', 391.3, 'as-fed'),
  ('ed9ebf73-dc39-4a25-ad8b-646fdf80f8ee', 'omega3', 0.95, 'as-fed'),
  ('ed9ebf73-dc39-4a25-ad8b-646fdf80f8ee', 'omega6', 4.02, 'as-fed');

-- Royal Canin — Gastrointestinal Hydrolysed Protein (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/gastrointestinal-hydrolysed-protein-loaf-8113',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 923kcal/kg omgerekend naar 92,3 kcal/100 g (gedeeld door 10). Omega-6 overgenomen uit de opgave "Essentieel vetzuur (linolzuur)" (linolzuur is een omega-6 vetzuur). Calcium en fosfor worden niet vermeld.'
 where id = '2e3ec00b-85af-4c31-a1f0-0edaef05eabc';
delete from public.recipe_nutrition where recipe_version_id = '2e3ec00b-85af-4c31-a1f0-0edaef05eabc';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2e3ec00b-85af-4c31-a1f0-0edaef05eabc', 'protein', 6.4, 'as-fed'),
  ('2e3ec00b-85af-4c31-a1f0-0edaef05eabc', 'fat', 4.7, 'as-fed'),
  ('2e3ec00b-85af-4c31-a1f0-0edaef05eabc', 'fiber', 3.1, 'as-fed'),
  ('2e3ec00b-85af-4c31-a1f0-0edaef05eabc', 'ash', 2.4, 'as-fed'),
  ('2e3ec00b-85af-4c31-a1f0-0edaef05eabc', 'moisture', 73.7, 'as-fed'),
  ('2e3ec00b-85af-4c31-a1f0-0edaef05eabc', 'kcal', 92.3, 'as-fed'),
  ('2e3ec00b-85af-4c31-a1f0-0edaef05eabc', 'omega3', 0.16, 'as-fed'),
  ('2e3ec00b-85af-4c31-a1f0-0edaef05eabc', 'omega6', 2.2, 'as-fed');

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

-- Royal Canin — Maxi Ageing 8+ (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/be/nl-be/dogs/products/retail-products/maxi-ageing-8%2b-2454',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '5436a320-1dd8-4f5c-b01a-ec0b5ad5b1df';
delete from public.recipe_nutrition where recipe_version_id = '5436a320-1dd8-4f5c-b01a-ec0b5ad5b1df';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5436a320-1dd8-4f5c-b01a-ec0b5ad5b1df', 'protein', 27, 'as-fed'),
  ('5436a320-1dd8-4f5c-b01a-ec0b5ad5b1df', 'fat', 17, 'as-fed'),
  ('5436a320-1dd8-4f5c-b01a-ec0b5ad5b1df', 'fiber', 1.8, 'as-fed'),
  ('5436a320-1dd8-4f5c-b01a-ec0b5ad5b1df', 'ash', 6.2, 'as-fed');

-- Royal Canin — Maxi Ageing 8+ Natvoer (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/maxi-ageing-1091',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'b5f55013-543c-4c46-a47f-251a035590a4';
delete from public.recipe_nutrition where recipe_version_id = 'b5f55013-543c-4c46-a47f-251a035590a4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b5f55013-543c-4c46-a47f-251a035590a4', 'protein', 8, 'as-fed'),
  ('b5f55013-543c-4c46-a47f-251a035590a4', 'fat', 5.5, 'as-fed'),
  ('b5f55013-543c-4c46-a47f-251a035590a4', 'fiber', 1.4, 'as-fed'),
  ('b5f55013-543c-4c46-a47f-251a035590a4', 'ash', 1.4, 'as-fed'),
  ('b5f55013-543c-4c46-a47f-251a035590a4', 'moisture', 81, 'as-fed');

-- Royal Canin — Maxi Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/puppy---maxi-3006',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3.791kcal/kg omgerekend naar 379,1 kcal/100 g (gedeeld door 10). Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '96ee58ca-99c2-43a2-8a8f-2dbf3104625b';
delete from public.recipe_nutrition where recipe_version_id = '96ee58ca-99c2-43a2-8a8f-2dbf3104625b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('96ee58ca-99c2-43a2-8a8f-2dbf3104625b', 'protein', 30, 'as-fed'),
  ('96ee58ca-99c2-43a2-8a8f-2dbf3104625b', 'fat', 16, 'as-fed'),
  ('96ee58ca-99c2-43a2-8a8f-2dbf3104625b', 'fiber', 2.5, 'as-fed'),
  ('96ee58ca-99c2-43a2-8a8f-2dbf3104625b', 'ash', 8.2, 'as-fed'),
  ('96ee58ca-99c2-43a2-8a8f-2dbf3104625b', 'kcal', 379.1, 'as-fed');

-- Royal Canin — Maxi Puppy in Gravy (brokjes in saus) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/puppy---maxi---chunks-in-gravy-1097',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'f286c210-690c-4caa-91dd-35614d603b46';
delete from public.recipe_nutrition where recipe_version_id = 'f286c210-690c-4caa-91dd-35614d603b46';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f286c210-690c-4caa-91dd-35614d603b46', 'protein', 8.3, 'as-fed'),
  ('f286c210-690c-4caa-91dd-35614d603b46', 'fat', 5, 'as-fed'),
  ('f286c210-690c-4caa-91dd-35614d603b46', 'fiber', 1.2, 'as-fed'),
  ('f286c210-690c-4caa-91dd-35614d603b46', 'ash', 2, 'as-fed'),
  ('f286c210-690c-4caa-91dd-35614d603b46', 'moisture', 79.7, 'as-fed');

-- Royal Canin — Maxi Starter Mother & Babydog (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/starter-mother-%26-babydog---maxi-2994',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 4.173kcal/kg omgerekend naar 417,3 kcal/100 g (gedeeld door 10). Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '287862c4-658b-4f92-85a2-f76955518713';
delete from public.recipe_nutrition where recipe_version_id = '287862c4-658b-4f92-85a2-f76955518713';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('287862c4-658b-4f92-85a2-f76955518713', 'protein', 30, 'as-fed'),
  ('287862c4-658b-4f92-85a2-f76955518713', 'fat', 22, 'as-fed'),
  ('287862c4-658b-4f92-85a2-f76955518713', 'fiber', 1.8, 'as-fed'),
  ('287862c4-658b-4f92-85a2-f76955518713', 'ash', 8.4, 'as-fed'),
  ('287862c4-658b-4f92-85a2-f76955518713', 'kcal', 417.3, 'as-fed');

-- Royal Canin — Medium Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/medium-adult-3004',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'c158cce9-eaa7-4b58-b643-b3e2e59bbd3e';
delete from public.recipe_nutrition where recipe_version_id = 'c158cce9-eaa7-4b58-b643-b3e2e59bbd3e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c158cce9-eaa7-4b58-b643-b3e2e59bbd3e', 'protein', 25, 'as-fed'),
  ('c158cce9-eaa7-4b58-b643-b3e2e59bbd3e', 'fat', 14, 'as-fed'),
  ('c158cce9-eaa7-4b58-b643-b3e2e59bbd3e', 'fiber', 1.4, 'as-fed'),
  ('c158cce9-eaa7-4b58-b643-b3e2e59bbd3e', 'ash', 6.3, 'as-fed');

-- Royal Canin — Medium Adult 7+ (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/medium-adult-7%2b-3005',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'e47bc4bb-bb1c-4da5-8420-95db5b736300';
delete from public.recipe_nutrition where recipe_version_id = 'e47bc4bb-bb1c-4da5-8420-95db5b736300';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e47bc4bb-bb1c-4da5-8420-95db5b736300', 'protein', 25, 'as-fed'),
  ('e47bc4bb-bb1c-4da5-8420-95db5b736300', 'fat', 14, 'as-fed'),
  ('e47bc4bb-bb1c-4da5-8420-95db5b736300', 'fiber', 1.6, 'as-fed'),
  ('e47bc4bb-bb1c-4da5-8420-95db5b736300', 'ash', 5.6, 'as-fed');

-- Royal Canin — Medium Adult Wet (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/medium-adult-1095',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Calcium, fosfor en omega-6 worden niet vermeld.'
 where id = 'd140ea5a-87a6-41cc-a4e7-179e17d969f4';
delete from public.recipe_nutrition where recipe_version_id = 'd140ea5a-87a6-41cc-a4e7-179e17d969f4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d140ea5a-87a6-41cc-a4e7-179e17d969f4', 'protein', 7.5, 'as-fed'),
  ('d140ea5a-87a6-41cc-a4e7-179e17d969f4', 'fat', 5.5, 'as-fed'),
  ('d140ea5a-87a6-41cc-a4e7-179e17d969f4', 'fiber', 0.9, 'as-fed'),
  ('d140ea5a-87a6-41cc-a4e7-179e17d969f4', 'ash', 1.8, 'as-fed'),
  ('d140ea5a-87a6-41cc-a4e7-179e17d969f4', 'moisture', 81.2, 'as-fed'),
  ('d140ea5a-87a6-41cc-a4e7-179e17d969f4', 'omega3', 0.12, 'as-fed');

-- Royal Canin — Medium Ageing 10+ (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/medium-ageing-10%2b-2448',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'f471e99d-cb7b-474b-87ce-6cd127f74d2a';
delete from public.recipe_nutrition where recipe_version_id = 'f471e99d-cb7b-474b-87ce-6cd127f74d2a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f471e99d-cb7b-474b-87ce-6cd127f74d2a', 'protein', 26, 'as-fed'),
  ('f471e99d-cb7b-474b-87ce-6cd127f74d2a', 'fat', 14, 'as-fed'),
  ('f471e99d-cb7b-474b-87ce-6cd127f74d2a', 'fiber', 1.7, 'as-fed'),
  ('f471e99d-cb7b-474b-87ce-6cd127f74d2a', 'ash', 4.7, 'as-fed');

-- Royal Canin — Medium Ageing in Gravy (brokjes in saus) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/medium-ageing---chunks-in-gravy-1092',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '77c83d40-5905-420c-85c2-6e472ea565ef';
delete from public.recipe_nutrition where recipe_version_id = '77c83d40-5905-420c-85c2-6e472ea565ef';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('77c83d40-5905-420c-85c2-6e472ea565ef', 'protein', 8.1, 'as-fed'),
  ('77c83d40-5905-420c-85c2-6e472ea565ef', 'fat', 5.5, 'as-fed'),
  ('77c83d40-5905-420c-85c2-6e472ea565ef', 'fiber', 0.8, 'as-fed'),
  ('77c83d40-5905-420c-85c2-6e472ea565ef', 'ash', 1.7, 'as-fed'),
  ('77c83d40-5905-420c-85c2-6e472ea565ef', 'moisture', 80.4, 'as-fed');

-- Royal Canin — Medium Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/puppy---medium-3003',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 4.095kcal/kg omgerekend naar 409,5 kcal/100 g (gedeeld door 10). Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '7bee40ca-5943-472e-9ba9-d030eec7b1d9';
delete from public.recipe_nutrition where recipe_version_id = '7bee40ca-5943-472e-9ba9-d030eec7b1d9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7bee40ca-5943-472e-9ba9-d030eec7b1d9', 'protein', 32, 'as-fed'),
  ('7bee40ca-5943-472e-9ba9-d030eec7b1d9', 'fat', 20, 'as-fed'),
  ('7bee40ca-5943-472e-9ba9-d030eec7b1d9', 'fiber', 1.6, 'as-fed'),
  ('7bee40ca-5943-472e-9ba9-d030eec7b1d9', 'ash', 8.6, 'as-fed'),
  ('7bee40ca-5943-472e-9ba9-d030eec7b1d9', 'kcal', 409.5, 'as-fed');

-- Royal Canin — Medium Puppy in Gravy (brokjes in saus) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/puppy---medium---chunks-in-gravy-1098',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'b6736580-a32a-44a1-908b-4cb36e63f405';
delete from public.recipe_nutrition where recipe_version_id = 'b6736580-a32a-44a1-908b-4cb36e63f405';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b6736580-a32a-44a1-908b-4cb36e63f405', 'protein', 8.4, 'as-fed'),
  ('b6736580-a32a-44a1-908b-4cb36e63f405', 'fat', 6, 'as-fed'),
  ('b6736580-a32a-44a1-908b-4cb36e63f405', 'fiber', 1, 'as-fed'),
  ('b6736580-a32a-44a1-908b-4cb36e63f405', 'ash', 2, 'as-fed'),
  ('b6736580-a32a-44a1-908b-4cb36e63f405', 'moisture', 78.4, 'as-fed');

-- Royal Canin — Medium Starter Mother & Babydog (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/starter-mother-%26-babydog---medium-2993',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 4.216kcal/kg omgerekend naar 421,6 kcal/100 g (gedeeld door 10). Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'b93f2c2b-53d2-482b-aa86-93a485be0a64';
delete from public.recipe_nutrition where recipe_version_id = 'b93f2c2b-53d2-482b-aa86-93a485be0a64';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b93f2c2b-53d2-482b-aa86-93a485be0a64', 'protein', 30, 'as-fed'),
  ('b93f2c2b-53d2-482b-aa86-93a485be0a64', 'fat', 22, 'as-fed'),
  ('b93f2c2b-53d2-482b-aa86-93a485be0a64', 'fiber', 1.3, 'as-fed'),
  ('b93f2c2b-53d2-482b-aa86-93a485be0a64', 'ash', 8.3, 'as-fed'),
  ('b93f2c2b-53d2-482b-aa86-93a485be0a64', 'kcal', 421.6, 'as-fed');

-- Royal Canin — Mini Adult 8+ (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/mini-adult-8%2b-3002',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3.923kcal/kg omgerekend naar 392,3 kcal/100 g (gedeeld door 10). Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '8fd58f60-1a22-4c87-abb7-d252b922d228';
delete from public.recipe_nutrition where recipe_version_id = '8fd58f60-1a22-4c87-abb7-d252b922d228';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8fd58f60-1a22-4c87-abb7-d252b922d228', 'protein', 27, 'as-fed'),
  ('8fd58f60-1a22-4c87-abb7-d252b922d228', 'fat', 16, 'as-fed'),
  ('8fd58f60-1a22-4c87-abb7-d252b922d228', 'fiber', 1.5, 'as-fed'),
  ('8fd58f60-1a22-4c87-abb7-d252b922d228', 'ash', 6.3, 'as-fed'),
  ('8fd58f60-1a22-4c87-abb7-d252b922d228', 'kcal', 392.3, 'as-fed');

-- Royal Canin — Mini Adult in Gravy (brokjes in saus) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/mini-adult---morsels-in-gravy-1096',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 867kcal/kg omgerekend naar 86,7 kcal/100 g (gedeeld door 10). Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '1420eb00-03c5-4418-a3fc-6801bb514d25';
delete from public.recipe_nutrition where recipe_version_id = '1420eb00-03c5-4418-a3fc-6801bb514d25';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1420eb00-03c5-4418-a3fc-6801bb514d25', 'protein', 7.6, 'as-fed'),
  ('1420eb00-03c5-4418-a3fc-6801bb514d25', 'fat', 5.2, 'as-fed'),
  ('1420eb00-03c5-4418-a3fc-6801bb514d25', 'fiber', 0.8, 'as-fed'),
  ('1420eb00-03c5-4418-a3fc-6801bb514d25', 'ash', 1.5, 'as-fed'),
  ('1420eb00-03c5-4418-a3fc-6801bb514d25', 'moisture', 81.1, 'as-fed'),
  ('1420eb00-03c5-4418-a3fc-6801bb514d25', 'kcal', 86.7, 'as-fed');

-- Royal Canin — Mini Ageing 12+ (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/mini-ageing-12%2b-1007',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3.854kcal/kg omgerekend naar 385,4 kcal/100 g (gedeeld door 10). EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'b47f8d80-3eaa-41ab-a0e4-db11d59e976f';
delete from public.recipe_nutrition where recipe_version_id = 'b47f8d80-3eaa-41ab-a0e4-db11d59e976f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b47f8d80-3eaa-41ab-a0e4-db11d59e976f', 'protein', 26, 'as-fed'),
  ('b47f8d80-3eaa-41ab-a0e4-db11d59e976f', 'fat', 14, 'as-fed'),
  ('b47f8d80-3eaa-41ab-a0e4-db11d59e976f', 'fiber', 1.5, 'as-fed'),
  ('b47f8d80-3eaa-41ab-a0e4-db11d59e976f', 'ash', 5.5, 'as-fed'),
  ('b47f8d80-3eaa-41ab-a0e4-db11d59e976f', 'kcal', 385.4, 'as-fed');

-- Royal Canin — Mini Ageing in Gravy (brokjes in saus) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/mini-ageing---chunks-in-gravy-1093',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 886kcal/kg omgerekend naar 88,6 kcal/100 g (gedeeld door 10). EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '49bb3661-8eae-428c-8cf0-9610ae57cfab';
delete from public.recipe_nutrition where recipe_version_id = '49bb3661-8eae-428c-8cf0-9610ae57cfab';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('49bb3661-8eae-428c-8cf0-9610ae57cfab', 'protein', 8, 'as-fed'),
  ('49bb3661-8eae-428c-8cf0-9610ae57cfab', 'fat', 5.1, 'as-fed'),
  ('49bb3661-8eae-428c-8cf0-9610ae57cfab', 'fiber', 0.9, 'as-fed'),
  ('49bb3661-8eae-428c-8cf0-9610ae57cfab', 'ash', 1.5, 'as-fed'),
  ('49bb3661-8eae-428c-8cf0-9610ae57cfab', 'moisture', 80.3, 'as-fed'),
  ('49bb3661-8eae-428c-8cf0-9610ae57cfab', 'kcal', 88.6, 'as-fed');

-- Royal Canin — Mini Dermacomfort (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/mini-dermacomfort-2441',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium en fosfor worden niet vermeld.'
 where id = 'e6e51c75-654a-446e-a29d-7fbdbde3211f';
delete from public.recipe_nutrition where recipe_version_id = 'e6e51c75-654a-446e-a29d-7fbdbde3211f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e6e51c75-654a-446e-a29d-7fbdbde3211f', 'protein', 25.5, 'as-fed'),
  ('e6e51c75-654a-446e-a29d-7fbdbde3211f', 'fat', 17, 'as-fed'),
  ('e6e51c75-654a-446e-a29d-7fbdbde3211f', 'fiber', 1.4, 'as-fed'),
  ('e6e51c75-654a-446e-a29d-7fbdbde3211f', 'ash', 5.3, 'as-fed'),
  ('e6e51c75-654a-446e-a29d-7fbdbde3211f', 'omega3', 1.13, 'as-fed'),
  ('e6e51c75-654a-446e-a29d-7fbdbde3211f', 'omega6', 3.52, 'as-fed');

-- Royal Canin — Mini Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/be/nl-be/dogs/products/retail-products/puppy---mini-3000',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 4.072kcal/kg omgerekend naar 407,2 kcal/100 g (gedeeld door 10). Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '4c982884-4344-43a2-98ea-c3003fc84ff3';
delete from public.recipe_nutrition where recipe_version_id = '4c982884-4344-43a2-98ea-c3003fc84ff3';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4c982884-4344-43a2-98ea-c3003fc84ff3', 'protein', 31, 'as-fed'),
  ('4c982884-4344-43a2-98ea-c3003fc84ff3', 'fat', 20, 'as-fed'),
  ('4c982884-4344-43a2-98ea-c3003fc84ff3', 'fiber', 1.4, 'as-fed'),
  ('4c982884-4344-43a2-98ea-c3003fc84ff3', 'ash', 8, 'as-fed'),
  ('4c982884-4344-43a2-98ea-c3003fc84ff3', 'kcal', 407.2, 'as-fed');

-- Royal Canin — Mini Puppy in Gravy (brokjes in saus) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/puppy---mini---chunks-in-gravy-1099',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'c7225023-50f0-4853-b92f-53f72394c766';
delete from public.recipe_nutrition where recipe_version_id = 'c7225023-50f0-4853-b92f-53f72394c766';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c7225023-50f0-4853-b92f-53f72394c766', 'protein', 8, 'as-fed'),
  ('c7225023-50f0-4853-b92f-53f72394c766', 'fat', 6, 'as-fed'),
  ('c7225023-50f0-4853-b92f-53f72394c766', 'fiber', 1, 'as-fed'),
  ('c7225023-50f0-4853-b92f-53f72394c766', 'ash', 1.9, 'as-fed'),
  ('c7225023-50f0-4853-b92f-53f72394c766', 'moisture', 79.2, 'as-fed');

-- Royal Canin — Mini Starter Mother & Babydog (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/starter-mother-%26-babydog---mini-2990',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 4.209kcal/kg omgerekend naar 420,9 kcal/100 g (gedeeld door 10). Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '3c1e263e-f392-4687-ab58-6d95fdb1c28f';
delete from public.recipe_nutrition where recipe_version_id = '3c1e263e-f392-4687-ab58-6d95fdb1c28f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3c1e263e-f392-4687-ab58-6d95fdb1c28f', 'protein', 30, 'as-fed'),
  ('3c1e263e-f392-4687-ab58-6d95fdb1c28f', 'fat', 22, 'as-fed'),
  ('3c1e263e-f392-4687-ab58-6d95fdb1c28f', 'fiber', 1.3, 'as-fed'),
  ('3c1e263e-f392-4687-ab58-6d95fdb1c28f', 'ash', 8.5, 'as-fed'),
  ('3c1e263e-f392-4687-ab58-6d95fdb1c28f', 'kcal', 420.9, 'as-fed');

-- Royal Canin — Miniature Schnauzer Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/miniature-schnauzer-adult-2220',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'e69c8229-cb7b-4641-aa76-4653171ec144';
delete from public.recipe_nutrition where recipe_version_id = 'e69c8229-cb7b-4641-aa76-4653171ec144';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e69c8229-cb7b-4641-aa76-4653171ec144', 'protein', 25, 'as-fed'),
  ('e69c8229-cb7b-4641-aa76-4653171ec144', 'fat', 12, 'as-fed'),
  ('e69c8229-cb7b-4641-aa76-4653171ec144', 'fiber', 2.2, 'as-fed'),
  ('e69c8229-cb7b-4641-aa76-4653171ec144', 'ash', 7.6, 'as-fed');

-- Royal Canin — Miniature Schnauzer Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/schnauzer-puppy-4131',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '17d83345-a13c-45ba-be31-d1649160a2de';
delete from public.recipe_nutrition where recipe_version_id = '17d83345-a13c-45ba-be31-d1649160a2de';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('17d83345-a13c-45ba-be31-d1649160a2de', 'protein', 30, 'as-fed'),
  ('17d83345-a13c-45ba-be31-d1649160a2de', 'fat', 14, 'as-fed'),
  ('17d83345-a13c-45ba-be31-d1649160a2de', 'fiber', 1.8, 'as-fed'),
  ('17d83345-a13c-45ba-be31-d1649160a2de', 'ash', 7.9, 'as-fed');

-- Royal Canin — Mobility Support (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/mobility-support-1829',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3.641kcal/kg omgerekend naar 364,1 kcal/100 g (gedeeld door 10). Vocht, calcium, fosfor en omega-6 worden niet vermeld.'
 where id = '1fc32a69-e282-485d-aae9-6f4249783aca';
delete from public.recipe_nutrition where recipe_version_id = '1fc32a69-e282-485d-aae9-6f4249783aca';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1fc32a69-e282-485d-aae9-6f4249783aca', 'protein', 25, 'as-fed'),
  ('1fc32a69-e282-485d-aae9-6f4249783aca', 'fat', 11.9, 'as-fed'),
  ('1fc32a69-e282-485d-aae9-6f4249783aca', 'fiber', 3, 'as-fed'),
  ('1fc32a69-e282-485d-aae9-6f4249783aca', 'ash', 5.6, 'as-fed'),
  ('1fc32a69-e282-485d-aae9-6f4249783aca', 'kcal', 364.1, 'as-fed'),
  ('1fc32a69-e282-485d-aae9-6f4249783aca', 'omega3', 0.93, 'as-fed');

-- Royal Canin — Neutered Adult (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/neutered-adult-1505',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '43d5de19-2069-4091-8171-f354f371fb0a';
delete from public.recipe_nutrition where recipe_version_id = '43d5de19-2069-4091-8171-f354f371fb0a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('43d5de19-2069-4091-8171-f354f371fb0a', 'protein', 8.5, 'as-fed'),
  ('43d5de19-2069-4091-8171-f354f371fb0a', 'fat', 2.5, 'as-fed'),
  ('43d5de19-2069-4091-8171-f354f371fb0a', 'fiber', 1.3, 'as-fed'),
  ('43d5de19-2069-4091-8171-f354f371fb0a', 'ash', 1.4, 'as-fed'),
  ('43d5de19-2069-4091-8171-f354f371fb0a', 'moisture', 80.5, 'as-fed');

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

-- Royal Canin — Renal Select (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/renal-select-4162',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Omega-6 overgenomen uit de opgave "Essentieel vetzuur (linolzuur)" (linolzuur is een omega-6 vetzuur). EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht en omega-3 worden niet vermeld.'
 where id = '687d7b8c-0ac7-4adc-abb5-a2c9abe3c55d';
delete from public.recipe_nutrition where recipe_version_id = '687d7b8c-0ac7-4adc-abb5-a2c9abe3c55d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('687d7b8c-0ac7-4adc-abb5-a2c9abe3c55d', 'protein', 12.5, 'as-fed'),
  ('687d7b8c-0ac7-4adc-abb5-a2c9abe3c55d', 'fat', 18, 'as-fed'),
  ('687d7b8c-0ac7-4adc-abb5-a2c9abe3c55d', 'fiber', 2.4, 'as-fed'),
  ('687d7b8c-0ac7-4adc-abb5-a2c9abe3c55d', 'ash', 4.4, 'as-fed'),
  ('687d7b8c-0ac7-4adc-abb5-a2c9abe3c55d', 'calcium', 0.6, 'as-fed'),
  ('687d7b8c-0ac7-4adc-abb5-a2c9abe3c55d', 'phosphorus', 0.3, 'as-fed'),
  ('687d7b8c-0ac7-4adc-abb5-a2c9abe3c55d', 'omega6', 3.87, 'as-fed');

-- Royal Canin — Renal Small Dogs (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/renal-small-dog-1249',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Omega-6 overgenomen uit de opgave "Essentieel vetzuur (linolzuur)" (linolzuur is een omega-6 vetzuur). EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht en omega-3 worden niet vermeld.'
 where id = '589767a7-946e-4725-b6e2-2ab09a6157c6';
delete from public.recipe_nutrition where recipe_version_id = '589767a7-946e-4725-b6e2-2ab09a6157c6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('589767a7-946e-4725-b6e2-2ab09a6157c6', 'protein', 14, 'as-fed'),
  ('589767a7-946e-4725-b6e2-2ab09a6157c6', 'fat', 18, 'as-fed'),
  ('589767a7-946e-4725-b6e2-2ab09a6157c6', 'fiber', 2.4, 'as-fed'),
  ('589767a7-946e-4725-b6e2-2ab09a6157c6', 'ash', 4, 'as-fed'),
  ('589767a7-946e-4725-b6e2-2ab09a6157c6', 'calcium', 0.4, 'as-fed'),
  ('589767a7-946e-4725-b6e2-2ab09a6157c6', 'phosphorus', 0.2, 'as-fed'),
  ('589767a7-946e-4725-b6e2-2ab09a6157c6', 'omega6', 4, 'as-fed');

-- Royal Canin — Renal Special (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/renal-special-4161',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Omega-6 overgenomen uit de opgave "Essentieel vetzuur (linolzuur)" (linolzuur is een omega-6 vetzuur). EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht en omega-3 worden niet vermeld.'
 where id = '49d86fc6-ae95-416b-9d24-bfc83717d3f6';
delete from public.recipe_nutrition where recipe_version_id = '49d86fc6-ae95-416b-9d24-bfc83717d3f6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('49d86fc6-ae95-416b-9d24-bfc83717d3f6', 'protein', 13, 'as-fed'),
  ('49d86fc6-ae95-416b-9d24-bfc83717d3f6', 'fat', 16, 'as-fed'),
  ('49d86fc6-ae95-416b-9d24-bfc83717d3f6', 'fiber', 2.4, 'as-fed'),
  ('49d86fc6-ae95-416b-9d24-bfc83717d3f6', 'ash', 4.5, 'as-fed'),
  ('49d86fc6-ae95-416b-9d24-bfc83717d3f6', 'calcium', 0.6, 'as-fed'),
  ('49d86fc6-ae95-416b-9d24-bfc83717d3f6', 'phosphorus', 0.3, 'as-fed'),
  ('49d86fc6-ae95-416b-9d24-bfc83717d3f6', 'omega6', 3.4, 'as-fed');

-- Royal Canin — Rottweiler Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/rottweiler-adult-3971',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '83c4d85d-fff2-4eb9-9cf9-852c48e7c089';
delete from public.recipe_nutrition where recipe_version_id = '83c4d85d-fff2-4eb9-9cf9-852c48e7c089';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('83c4d85d-fff2-4eb9-9cf9-852c48e7c089', 'protein', 26, 'as-fed'),
  ('83c4d85d-fff2-4eb9-9cf9-852c48e7c089', 'fat', 20, 'as-fed'),
  ('83c4d85d-fff2-4eb9-9cf9-852c48e7c089', 'fiber', 2.5, 'as-fed'),
  ('83c4d85d-fff2-4eb9-9cf9-852c48e7c089', 'ash', 6.3, 'as-fed');

-- Royal Canin — Rottweiler Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/rottweiler-puppy-3987',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, omega-3 en omega-6 worden niet vermeld.'
 where id = '3411314e-c697-49a6-af4d-4f5e00390bbb';
delete from public.recipe_nutrition where recipe_version_id = '3411314e-c697-49a6-af4d-4f5e00390bbb';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3411314e-c697-49a6-af4d-4f5e00390bbb', 'protein', 31, 'as-fed'),
  ('3411314e-c697-49a6-af4d-4f5e00390bbb', 'fat', 16, 'as-fed'),
  ('3411314e-c697-49a6-af4d-4f5e00390bbb', 'fiber', 1.8, 'as-fed'),
  ('3411314e-c697-49a6-af4d-4f5e00390bbb', 'ash', 7.9, 'as-fed'),
  ('3411314e-c697-49a6-af4d-4f5e00390bbb', 'calcium', 1.26, 'as-fed'),
  ('3411314e-c697-49a6-af4d-4f5e00390bbb', 'phosphorus', 1, 'as-fed');

-- Royal Canin — Satiety + Mobility (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/satiety-%2b-mobility-4230',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 2.598kcal/kg omgerekend naar 259,8 kcal/100 g (gedeeld door 10). Vocht, calcium, fosfor en omega-6 worden niet vermeld.'
 where id = '9c139737-4af4-4e7d-8eaf-0d2ab58435bf';
delete from public.recipe_nutrition where recipe_version_id = '9c139737-4af4-4e7d-8eaf-0d2ab58435bf';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9c139737-4af4-4e7d-8eaf-0d2ab58435bf', 'protein', 30, 'as-fed'),
  ('9c139737-4af4-4e7d-8eaf-0d2ab58435bf', 'fat', 10.5, 'as-fed'),
  ('9c139737-4af4-4e7d-8eaf-0d2ab58435bf', 'fiber', 16.8, 'as-fed'),
  ('9c139737-4af4-4e7d-8eaf-0d2ab58435bf', 'ash', 6, 'as-fed'),
  ('9c139737-4af4-4e7d-8eaf-0d2ab58435bf', 'kcal', 259.8, 'as-fed'),
  ('9c139737-4af4-4e7d-8eaf-0d2ab58435bf', 'omega3', 1.17, 'as-fed');

-- Royal Canin — Satiety + Mobility Small Dogs (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/satiety-%2b-mobility-small-dogs-8089',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 2.647kcal/kg omgerekend naar 264,7 kcal/100 g (gedeeld door 10). Vocht, calcium, fosfor en omega-6 worden niet vermeld.'
 where id = '836ff2b6-1d91-485b-9116-020dd28fafa6';
delete from public.recipe_nutrition where recipe_version_id = '836ff2b6-1d91-485b-9116-020dd28fafa6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('836ff2b6-1d91-485b-9116-020dd28fafa6', 'protein', 30, 'as-fed'),
  ('836ff2b6-1d91-485b-9116-020dd28fafa6', 'fat', 9.5, 'as-fed'),
  ('836ff2b6-1d91-485b-9116-020dd28fafa6', 'fiber', 15.3, 'as-fed'),
  ('836ff2b6-1d91-485b-9116-020dd28fafa6', 'ash', 6.8, 'as-fed'),
  ('836ff2b6-1d91-485b-9116-020dd28fafa6', 'kcal', 264.7, 'as-fed'),
  ('836ff2b6-1d91-485b-9116-020dd28fafa6', 'omega3', 0.88, 'as-fed');

-- Royal Canin — Satiety Weight Management (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/satiety-weight-management-3948',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 2.668kcal/kg omgerekend naar 266,8 kcal/100 g (gedeeld door 10). Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '76e69fbc-6292-4f50-801e-060cd472429d';
delete from public.recipe_nutrition where recipe_version_id = '76e69fbc-6292-4f50-801e-060cd472429d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('76e69fbc-6292-4f50-801e-060cd472429d', 'protein', 30, 'as-fed'),
  ('76e69fbc-6292-4f50-801e-060cd472429d', 'fat', 9.5, 'as-fed'),
  ('76e69fbc-6292-4f50-801e-060cd472429d', 'fiber', 17, 'as-fed'),
  ('76e69fbc-6292-4f50-801e-060cd472429d', 'ash', 5.8, 'as-fed'),
  ('76e69fbc-6292-4f50-801e-060cd472429d', 'kcal', 266.8, 'as-fed');

-- Royal Canin — Satiety Weight Management (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/satiety-weight-management-4250',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 579kcal/kg omgerekend naar 57,9 kcal/100 g (gedeeld door 10). Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '52cf40e2-f0ce-42a1-8501-19ec36c87a3a';
delete from public.recipe_nutrition where recipe_version_id = '52cf40e2-f0ce-42a1-8501-19ec36c87a3a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('52cf40e2-f0ce-42a1-8501-19ec36c87a3a', 'protein', 8, 'as-fed'),
  ('52cf40e2-f0ce-42a1-8501-19ec36c87a3a', 'fat', 2, 'as-fed'),
  ('52cf40e2-f0ce-42a1-8501-19ec36c87a3a', 'fiber', 2, 'as-fed'),
  ('52cf40e2-f0ce-42a1-8501-19ec36c87a3a', 'ash', 1, 'as-fed'),
  ('52cf40e2-f0ce-42a1-8501-19ec36c87a3a', 'moisture', 83, 'as-fed'),
  ('52cf40e2-f0ce-42a1-8501-19ec36c87a3a', 'kcal', 57.9, 'as-fed');

-- Royal Canin — Satiety Weight Management Small Dog (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/satiety-weight-management-small-dog-4252',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 2.696,0kcal/kg omgerekend naar 269,6 kcal/100 g (gedeeld door 10). Vocht, omega-3 en omega-6 worden niet vermeld.'
 where id = '23e51104-3b41-47bd-8bcf-57f59b32326a';
delete from public.recipe_nutrition where recipe_version_id = '23e51104-3b41-47bd-8bcf-57f59b32326a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('23e51104-3b41-47bd-8bcf-57f59b32326a', 'protein', 30, 'as-fed'),
  ('23e51104-3b41-47bd-8bcf-57f59b32326a', 'fat', 9.5, 'as-fed'),
  ('23e51104-3b41-47bd-8bcf-57f59b32326a', 'fiber', 15.6, 'as-fed'),
  ('23e51104-3b41-47bd-8bcf-57f59b32326a', 'ash', 6.8, 'as-fed'),
  ('23e51104-3b41-47bd-8bcf-57f59b32326a', 'kcal', 269.6, 'as-fed'),
  ('23e51104-3b41-47bd-8bcf-57f59b32326a', 'calcium', 0.91, 'as-fed'),
  ('23e51104-3b41-47bd-8bcf-57f59b32326a', 'phosphorus', 0.75, 'as-fed');

-- Royal Canin — Sensitivity Control (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/sensitivity-control-3922',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Omega-6 overgenomen uit de opgave "Essentieel vetzuur (linolzuur)" (linolzuur is een omega-6 vetzuur). Vocht, calcium en fosfor worden niet vermeld.'
 where id = '95032f03-76e9-465c-bf58-c89aa6eff1f3';
delete from public.recipe_nutrition where recipe_version_id = '95032f03-76e9-465c-bf58-c89aa6eff1f3';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('95032f03-76e9-465c-bf58-c89aa6eff1f3', 'protein', 21, 'as-fed'),
  ('95032f03-76e9-465c-bf58-c89aa6eff1f3', 'fat', 9, 'as-fed'),
  ('95032f03-76e9-465c-bf58-c89aa6eff1f3', 'fiber', 4.5, 'as-fed'),
  ('95032f03-76e9-465c-bf58-c89aa6eff1f3', 'ash', 7.8, 'as-fed'),
  ('95032f03-76e9-465c-bf58-c89aa6eff1f3', 'omega3', 0.68, 'as-fed'),
  ('95032f03-76e9-465c-bf58-c89aa6eff1f3', 'omega6', 1.83, 'as-fed');

-- Royal Canin — Sensitivity Control Eend met Rijst (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/sensitivity-control-duck-with-rice-4027',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Omega-6 overgenomen uit de opgave "Essentieel vetzuur (linolzuur)" (linolzuur is een omega-6 vetzuur). EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Calcium, fosfor en omega-3 worden niet vermeld.'
 where id = 'bdb4de12-f515-4f45-9089-45192eacb51b';
delete from public.recipe_nutrition where recipe_version_id = 'bdb4de12-f515-4f45-9089-45192eacb51b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('bdb4de12-f515-4f45-9089-45192eacb51b', 'protein', 9, 'as-fed'),
  ('bdb4de12-f515-4f45-9089-45192eacb51b', 'fat', 7, 'as-fed'),
  ('bdb4de12-f515-4f45-9089-45192eacb51b', 'fiber', 1, 'as-fed'),
  ('bdb4de12-f515-4f45-9089-45192eacb51b', 'ash', 2.3, 'as-fed'),
  ('bdb4de12-f515-4f45-9089-45192eacb51b', 'moisture', 67.7, 'as-fed'),
  ('bdb4de12-f515-4f45-9089-45192eacb51b', 'omega6', 1.9, 'as-fed');

-- Royal Canin — Sensitivity Control Kip met Rijst (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/sensitivity-control-chicken-with-rice-4026',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Omega-6 overgenomen uit de opgave "Essentieel vetzuur (linolzuur)" (linolzuur is een omega-6 vetzuur). EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Calcium, fosfor en omega-3 worden niet vermeld.'
 where id = 'fcc2d6c0-99a7-4980-bd5a-08e0cffc26b8';
delete from public.recipe_nutrition where recipe_version_id = 'fcc2d6c0-99a7-4980-bd5a-08e0cffc26b8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fcc2d6c0-99a7-4980-bd5a-08e0cffc26b8', 'protein', 9.5, 'as-fed'),
  ('fcc2d6c0-99a7-4980-bd5a-08e0cffc26b8', 'fat', 6, 'as-fed'),
  ('fcc2d6c0-99a7-4980-bd5a-08e0cffc26b8', 'fiber', 1.5, 'as-fed'),
  ('fcc2d6c0-99a7-4980-bd5a-08e0cffc26b8', 'ash', 2.4, 'as-fed'),
  ('fcc2d6c0-99a7-4980-bd5a-08e0cffc26b8', 'moisture', 71, 'as-fed'),
  ('fcc2d6c0-99a7-4980-bd5a-08e0cffc26b8', 'omega6', 1.6, 'as-fed');

-- Royal Canin — Shiba Inu Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/shiba-inu-adult-2104',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'c015d6b2-2580-4f67-bca5-432d7e44a90a';
delete from public.recipe_nutrition where recipe_version_id = 'c015d6b2-2580-4f67-bca5-432d7e44a90a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c015d6b2-2580-4f67-bca5-432d7e44a90a', 'protein', 26, 'as-fed'),
  ('c015d6b2-2580-4f67-bca5-432d7e44a90a', 'fat', 14, 'as-fed'),
  ('c015d6b2-2580-4f67-bca5-432d7e44a90a', 'fiber', 2.5, 'as-fed'),
  ('c015d6b2-2580-4f67-bca5-432d7e44a90a', 'ash', 5.8, 'as-fed');

-- Royal Canin — Shih Tzu Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/shih-tzu-adult-2200',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '4df89278-759e-419e-81c6-2d1f23984235';
delete from public.recipe_nutrition where recipe_version_id = '4df89278-759e-419e-81c6-2d1f23984235';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4df89278-759e-419e-81c6-2d1f23984235', 'protein', 24, 'as-fed'),
  ('4df89278-759e-419e-81c6-2d1f23984235', 'fat', 20, 'as-fed'),
  ('4df89278-759e-419e-81c6-2d1f23984235', 'fiber', 3.1, 'as-fed'),
  ('4df89278-759e-419e-81c6-2d1f23984235', 'ash', 5.8, 'as-fed');

-- Royal Canin — Shih Tzu Adult in Loaf (paté) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/shih-tzu-1258',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'b13edf05-7fe1-416a-8309-3e272e30957e';
delete from public.recipe_nutrition where recipe_version_id = 'b13edf05-7fe1-416a-8309-3e272e30957e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b13edf05-7fe1-416a-8309-3e272e30957e', 'protein', 8, 'as-fed'),
  ('b13edf05-7fe1-416a-8309-3e272e30957e', 'fat', 6, 'as-fed'),
  ('b13edf05-7fe1-416a-8309-3e272e30957e', 'fiber', 1.4, 'as-fed'),
  ('b13edf05-7fe1-416a-8309-3e272e30957e', 'ash', 1.4, 'as-fed'),
  ('b13edf05-7fe1-416a-8309-3e272e30957e', 'moisture', 79.6, 'as-fed');

-- Royal Canin — Shih Tzu Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/shih-tzu-puppy-2439',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '107c0c43-95c6-4ee4-a5ba-ce0810a41499';
delete from public.recipe_nutrition where recipe_version_id = '107c0c43-95c6-4ee4-a5ba-ce0810a41499';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('107c0c43-95c6-4ee4-a5ba-ce0810a41499', 'protein', 28, 'as-fed'),
  ('107c0c43-95c6-4ee4-a5ba-ce0810a41499', 'fat', 18, 'as-fed'),
  ('107c0c43-95c6-4ee4-a5ba-ce0810a41499', 'fiber', 1.5, 'as-fed'),
  ('107c0c43-95c6-4ee4-a5ba-ce0810a41499', 'ash', 7.6, 'as-fed');

-- Royal Canin — Skin Care (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/skin-care-4013',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium en fosfor worden niet vermeld.'
 where id = 'e32d5049-37cf-4063-92ab-acd91e8cd79d';
delete from public.recipe_nutrition where recipe_version_id = 'e32d5049-37cf-4063-92ab-acd91e8cd79d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e32d5049-37cf-4063-92ab-acd91e8cd79d', 'protein', 23, 'as-fed'),
  ('e32d5049-37cf-4063-92ab-acd91e8cd79d', 'fat', 16, 'as-fed'),
  ('e32d5049-37cf-4063-92ab-acd91e8cd79d', 'fiber', 2, 'as-fed'),
  ('e32d5049-37cf-4063-92ab-acd91e8cd79d', 'ash', 5.6, 'as-fed'),
  ('e32d5049-37cf-4063-92ab-acd91e8cd79d', 'omega3', 1, 'as-fed'),
  ('e32d5049-37cf-4063-92ab-acd91e8cd79d', 'omega6', 3.26, 'as-fed');

-- Royal Canin — Skin Care Small Dogs (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/skin-care-small-dog-4006',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Omega-6 overgenomen uit de opgave "Essentieel vetzuur (linolzuur)" (linolzuur is een omega-6 vetzuur). EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor en omega-3 worden niet vermeld.'
 where id = '95f89827-21f4-486b-8622-a679d62ef557';
delete from public.recipe_nutrition where recipe_version_id = '95f89827-21f4-486b-8622-a679d62ef557';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('95f89827-21f4-486b-8622-a679d62ef557', 'protein', 25, 'as-fed'),
  ('95f89827-21f4-486b-8622-a679d62ef557', 'fat', 16, 'as-fed'),
  ('95f89827-21f4-486b-8622-a679d62ef557', 'fiber', 1.2, 'as-fed'),
  ('95f89827-21f4-486b-8622-a679d62ef557', 'ash', 6.1, 'as-fed'),
  ('95f89827-21f4-486b-8622-a679d62ef557', 'omega6', 3.46, 'as-fed');

-- Royal Canin — Sporting Life Energy 4100 (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/sporting-life-energy-4100-l-2781',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'fa5895ab-47cb-4241-85a8-311e59bd9dac';
delete from public.recipe_nutrition where recipe_version_id = 'fa5895ab-47cb-4241-85a8-311e59bd9dac';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fa5895ab-47cb-4241-85a8-311e59bd9dac', 'protein', 23, 'as-fed'),
  ('fa5895ab-47cb-4241-85a8-311e59bd9dac', 'fat', 15, 'as-fed'),
  ('fa5895ab-47cb-4241-85a8-311e59bd9dac', 'fiber', 1.6, 'as-fed'),
  ('fa5895ab-47cb-4241-85a8-311e59bd9dac', 'ash', 6.3, 'as-fed');

-- Royal Canin — Sporting Life Energy 4300 (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/sporting-life-energy-4300-2782',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 4.077kcal/kg omgerekend naar 407,7 kcal/100 g (gedeeld door 10). Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '409ea3a0-546f-4753-9e2a-9972f0c62db5';
delete from public.recipe_nutrition where recipe_version_id = '409ea3a0-546f-4753-9e2a-9972f0c62db5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('409ea3a0-546f-4753-9e2a-9972f0c62db5', 'protein', 28, 'as-fed'),
  ('409ea3a0-546f-4753-9e2a-9972f0c62db5', 'fat', 21, 'as-fed'),
  ('409ea3a0-546f-4753-9e2a-9972f0c62db5', 'fiber', 2.7, 'as-fed'),
  ('409ea3a0-546f-4753-9e2a-9972f0c62db5', 'ash', 7.6, 'as-fed'),
  ('409ea3a0-546f-4753-9e2a-9972f0c62db5', 'kcal', 407.7, 'as-fed');

-- Royal Canin — Sterilised Care in Loaf (paté) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/sterilised-1179',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '3cff9fd7-c783-4007-9a74-586ca7146966';
delete from public.recipe_nutrition where recipe_version_id = '3cff9fd7-c783-4007-9a74-586ca7146966';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3cff9fd7-c783-4007-9a74-586ca7146966', 'protein', 8.5, 'as-fed'),
  ('3cff9fd7-c783-4007-9a74-586ca7146966', 'fat', 4.1, 'as-fed'),
  ('3cff9fd7-c783-4007-9a74-586ca7146966', 'fiber', 1.2, 'as-fed'),
  ('3cff9fd7-c783-4007-9a74-586ca7146966', 'ash', 1.6, 'as-fed'),
  ('3cff9fd7-c783-4007-9a74-586ca7146966', 'moisture', 81.1, 'as-fed');

-- Royal Canin — Sterilised Maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/maxi-sterilised-3035',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '15272dfc-7f68-43ae-a1ff-1ea860d37a3c';
delete from public.recipe_nutrition where recipe_version_id = '15272dfc-7f68-43ae-a1ff-1ea860d37a3c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('15272dfc-7f68-43ae-a1ff-1ea860d37a3c', 'protein', 28, 'as-fed'),
  ('15272dfc-7f68-43ae-a1ff-1ea860d37a3c', 'fat', 13, 'as-fed'),
  ('15272dfc-7f68-43ae-a1ff-1ea860d37a3c', 'fiber', 6.7, 'as-fed'),
  ('15272dfc-7f68-43ae-a1ff-1ea860d37a3c', 'ash', 5.8, 'as-fed');

-- Royal Canin — Sterilised Medium (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/medium-sterilised-3034',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '3c46c2c0-94c5-4673-8d62-86b8cf4d01bd';
delete from public.recipe_nutrition where recipe_version_id = '3c46c2c0-94c5-4673-8d62-86b8cf4d01bd';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3c46c2c0-94c5-4673-8d62-86b8cf4d01bd', 'protein', 28, 'as-fed'),
  ('3c46c2c0-94c5-4673-8d62-86b8cf4d01bd', 'fat', 13, 'as-fed'),
  ('3c46c2c0-94c5-4673-8d62-86b8cf4d01bd', 'fiber', 6.4, 'as-fed'),
  ('3c46c2c0-94c5-4673-8d62-86b8cf4d01bd', 'ash', 4.9, 'as-fed');

-- Royal Canin — Sterilised Mini (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/mini-sterilised-3185',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '87b2363c-27aa-4e1b-af27-69febb2e4fed';
delete from public.recipe_nutrition where recipe_version_id = '87b2363c-27aa-4e1b-af27-69febb2e4fed';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('87b2363c-27aa-4e1b-af27-69febb2e4fed', 'protein', 30, 'as-fed'),
  ('87b2363c-27aa-4e1b-af27-69febb2e4fed', 'fat', 13, 'as-fed'),
  ('87b2363c-27aa-4e1b-af27-69febb2e4fed', 'fiber', 6.6, 'as-fed'),
  ('87b2363c-27aa-4e1b-af27-69febb2e4fed', 'ash', 5.4, 'as-fed');

-- Royal Canin — Sterilised X-Small (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/x-small-sterilised-1019',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '9b85505d-02de-4efd-b012-e1613d989c96';
delete from public.recipe_nutrition where recipe_version_id = '9b85505d-02de-4efd-b012-e1613d989c96';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9b85505d-02de-4efd-b012-e1613d989c96', 'protein', 26, 'as-fed'),
  ('9b85505d-02de-4efd-b012-e1613d989c96', 'fat', 14, 'as-fed'),
  ('9b85505d-02de-4efd-b012-e1613d989c96', 'fiber', 5.3, 'as-fed'),
  ('9b85505d-02de-4efd-b012-e1613d989c96', 'ash', 5.5, 'as-fed');

-- Royal Canin — Urinary Care in Loaf (paté) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/urinary-care-1183',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'c0ea9d31-59d0-4997-ae90-f2b37bfa4bdd';
delete from public.recipe_nutrition where recipe_version_id = 'c0ea9d31-59d0-4997-ae90-f2b37bfa4bdd';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c0ea9d31-59d0-4997-ae90-f2b37bfa4bdd', 'protein', 9, 'as-fed'),
  ('c0ea9d31-59d0-4997-ae90-f2b37bfa4bdd', 'fat', 6, 'as-fed'),
  ('c0ea9d31-59d0-4997-ae90-f2b37bfa4bdd', 'fiber', 1.3, 'as-fed'),
  ('c0ea9d31-59d0-4997-ae90-f2b37bfa4bdd', 'ash', 1.7, 'as-fed'),
  ('c0ea9d31-59d0-4997-ae90-f2b37bfa4bdd', 'moisture', 78.8, 'as-fed');

-- Royal Canin — Urinary Care Mini (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/mini-urinary-care-1261',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '272855a6-cea4-46ed-87f6-7b519441a049';
delete from public.recipe_nutrition where recipe_version_id = '272855a6-cea4-46ed-87f6-7b519441a049';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('272855a6-cea4-46ed-87f6-7b519441a049', 'protein', 27, 'as-fed'),
  ('272855a6-cea4-46ed-87f6-7b519441a049', 'fat', 16, 'as-fed'),
  ('272855a6-cea4-46ed-87f6-7b519441a049', 'fiber', 2.5, 'as-fed'),
  ('272855a6-cea4-46ed-87f6-7b519441a049', 'ash', 7, 'as-fed');

-- Royal Canin — Urinary S/O (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/urinary-so-4021',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'c25027fc-5581-47c6-ab0e-73de195f228c';
delete from public.recipe_nutrition where recipe_version_id = 'c25027fc-5581-47c6-ab0e-73de195f228c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c25027fc-5581-47c6-ab0e-73de195f228c', 'protein', 8, 'as-fed'),
  ('c25027fc-5581-47c6-ab0e-73de195f228c', 'fat', 6, 'as-fed'),
  ('c25027fc-5581-47c6-ab0e-73de195f228c', 'fiber', 1.4, 'as-fed'),
  ('c25027fc-5581-47c6-ab0e-73de195f228c', 'ash', 2.1, 'as-fed'),
  ('c25027fc-5581-47c6-ab0e-73de195f228c', 'moisture', 78, 'as-fed'),
  ('c25027fc-5581-47c6-ab0e-73de195f228c', 'calcium', 0.29, 'as-fed'),
  ('c25027fc-5581-47c6-ab0e-73de195f228c', 'phosphorus', 0.2, 'as-fed');

-- Royal Canin — Urinary S/O (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/urinary-so-3913',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, omega-3 en omega-6 worden niet vermeld.'
 where id = '47106a63-add7-4b32-833e-075e54ea2465';
delete from public.recipe_nutrition where recipe_version_id = '47106a63-add7-4b32-833e-075e54ea2465';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('47106a63-add7-4b32-833e-075e54ea2465', 'protein', 18, 'as-fed'),
  ('47106a63-add7-4b32-833e-075e54ea2465', 'fat', 17, 'as-fed'),
  ('47106a63-add7-4b32-833e-075e54ea2465', 'fiber', 2.2, 'as-fed'),
  ('47106a63-add7-4b32-833e-075e54ea2465', 'ash', 6.6, 'as-fed'),
  ('47106a63-add7-4b32-833e-075e54ea2465', 'calcium', 0.5, 'as-fed'),
  ('47106a63-add7-4b32-833e-075e54ea2465', 'phosphorus', 0.5, 'as-fed');

-- Royal Canin — Urinary S/O + Hypoallergenic (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/urinary-so-%2b-hypoallergenic-6500',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Omega-6 overgenomen uit de opgave "Essentieel vetzuur (linolzuur)" (linolzuur is een omega-6 vetzuur). Vocht en omega-3 worden niet vermeld.'
 where id = 'd77c8356-40fa-4e07-963b-03459f8e99f1';
delete from public.recipe_nutrition where recipe_version_id = 'd77c8356-40fa-4e07-963b-03459f8e99f1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d77c8356-40fa-4e07-963b-03459f8e99f1', 'protein', 20, 'as-fed'),
  ('d77c8356-40fa-4e07-963b-03459f8e99f1', 'fat', 15, 'as-fed'),
  ('d77c8356-40fa-4e07-963b-03459f8e99f1', 'fiber', 2.4, 'as-fed'),
  ('d77c8356-40fa-4e07-963b-03459f8e99f1', 'ash', 8.3, 'as-fed'),
  ('d77c8356-40fa-4e07-963b-03459f8e99f1', 'calcium', 0.56, 'as-fed'),
  ('d77c8356-40fa-4e07-963b-03459f8e99f1', 'phosphorus', 0.5, 'as-fed'),
  ('d77c8356-40fa-4e07-963b-03459f8e99f1', 'omega6', 3.4, 'as-fed');

-- Royal Canin — Urinary S/O + Hypoallergenic Small Dogs (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/urinary-so--%2b-hypoallergenic-small-dogs-8063',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3.719kcal/kg omgerekend naar 371,9 kcal/100 g (gedeeld door 10). Omega-6 overgenomen uit de opgave "Essentieel vetzuur (linolzuur)" (linolzuur is een omega-6 vetzuur). Vocht en omega-3 worden niet vermeld.'
 where id = '58edbc5c-c1d3-4c59-8f8b-4cb1af4393b1';
delete from public.recipe_nutrition where recipe_version_id = '58edbc5c-c1d3-4c59-8f8b-4cb1af4393b1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('58edbc5c-c1d3-4c59-8f8b-4cb1af4393b1', 'protein', 20, 'as-fed'),
  ('58edbc5c-c1d3-4c59-8f8b-4cb1af4393b1', 'fat', 15, 'as-fed'),
  ('58edbc5c-c1d3-4c59-8f8b-4cb1af4393b1', 'fiber', 2.4, 'as-fed'),
  ('58edbc5c-c1d3-4c59-8f8b-4cb1af4393b1', 'ash', 8.1, 'as-fed'),
  ('58edbc5c-c1d3-4c59-8f8b-4cb1af4393b1', 'kcal', 371.9, 'as-fed'),
  ('58edbc5c-c1d3-4c59-8f8b-4cb1af4393b1', 'calcium', 0.54, 'as-fed'),
  ('58edbc5c-c1d3-4c59-8f8b-4cb1af4393b1', 'phosphorus', 0.49, 'as-fed'),
  ('58edbc5c-c1d3-4c59-8f8b-4cb1af4393b1', 'omega6', 3.4, 'as-fed');

-- Royal Canin — Urinary S/O + Satiety (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/urinary-so-%2b-satiety-6502',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 2.661kcal/kg omgerekend naar 266,1 kcal/100 g (gedeeld door 10). Vocht, omega-3 en omega-6 worden niet vermeld.'
 where id = 'fb0bb4f7-ddc0-4bce-be3f-7da2ba317035';
delete from public.recipe_nutrition where recipe_version_id = 'fb0bb4f7-ddc0-4bce-be3f-7da2ba317035';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fb0bb4f7-ddc0-4bce-be3f-7da2ba317035', 'protein', 30, 'as-fed'),
  ('fb0bb4f7-ddc0-4bce-be3f-7da2ba317035', 'fat', 9, 'as-fed'),
  ('fb0bb4f7-ddc0-4bce-be3f-7da2ba317035', 'fiber', 16.3, 'as-fed'),
  ('fb0bb4f7-ddc0-4bce-be3f-7da2ba317035', 'ash', 7.3, 'as-fed'),
  ('fb0bb4f7-ddc0-4bce-be3f-7da2ba317035', 'kcal', 266.1, 'as-fed'),
  ('fb0bb4f7-ddc0-4bce-be3f-7da2ba317035', 'calcium', 0.9, 'as-fed'),
  ('fb0bb4f7-ddc0-4bce-be3f-7da2ba317035', 'phosphorus', 0.7, 'as-fed');

-- Royal Canin — Urinary S/O + Satiety Small Dogs (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/urinary-so-%2b-satiety-small-dogs-8064',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 2.564kcal/kg omgerekend naar 256,4 kcal/100 g (gedeeld door 10). Vocht, omega-3 en omega-6 worden niet vermeld.'
 where id = '05e38284-1876-4d08-859f-305d2a4b3ad1';
delete from public.recipe_nutrition where recipe_version_id = '05e38284-1876-4d08-859f-305d2a4b3ad1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('05e38284-1876-4d08-859f-305d2a4b3ad1', 'protein', 30, 'as-fed'),
  ('05e38284-1876-4d08-859f-305d2a4b3ad1', 'fat', 9.5, 'as-fed'),
  ('05e38284-1876-4d08-859f-305d2a4b3ad1', 'fiber', 16.3, 'as-fed'),
  ('05e38284-1876-4d08-859f-305d2a4b3ad1', 'ash', 7.3, 'as-fed'),
  ('05e38284-1876-4d08-859f-305d2a4b3ad1', 'kcal', 256.4, 'as-fed'),
  ('05e38284-1876-4d08-859f-305d2a4b3ad1', 'calcium', 0.87, 'as-fed'),
  ('05e38284-1876-4d08-859f-305d2a4b3ad1', 'phosphorus', 0.7, 'as-fed');

-- Royal Canin — Urinary S/O Ageing 7+ (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/urinary-so-ageing-7%2b-1275',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Omega-3 en omega-6 worden niet vermeld.'
 where id = '3ac018cb-cc61-4536-8939-6c5455e4b4ac';
delete from public.recipe_nutrition where recipe_version_id = '3ac018cb-cc61-4536-8939-6c5455e4b4ac';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3ac018cb-cc61-4536-8939-6c5455e4b4ac', 'protein', 8.7, 'as-fed'),
  ('3ac018cb-cc61-4536-8939-6c5455e4b4ac', 'fat', 5.9, 'as-fed'),
  ('3ac018cb-cc61-4536-8939-6c5455e4b4ac', 'fiber', 1.3, 'as-fed'),
  ('3ac018cb-cc61-4536-8939-6c5455e4b4ac', 'ash', 1.9, 'as-fed'),
  ('3ac018cb-cc61-4536-8939-6c5455e4b4ac', 'moisture', 77.4, 'as-fed'),
  ('3ac018cb-cc61-4536-8939-6c5455e4b4ac', 'calcium', 0.19, 'as-fed'),
  ('3ac018cb-cc61-4536-8939-6c5455e4b4ac', 'phosphorus', 0.14, 'as-fed');

-- Royal Canin — Urinary S/O Moderate Calorie (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/urinary-so-moderate-calorie-3800',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, omega-3 en omega-6 worden niet vermeld.'
 where id = '51593f8e-cfbc-418c-9b3f-39661dbace35';
delete from public.recipe_nutrition where recipe_version_id = '51593f8e-cfbc-418c-9b3f-39661dbace35';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('51593f8e-cfbc-418c-9b3f-39661dbace35', 'protein', 20, 'as-fed'),
  ('51593f8e-cfbc-418c-9b3f-39661dbace35', 'fat', 11, 'as-fed'),
  ('51593f8e-cfbc-418c-9b3f-39661dbace35', 'fiber', 6.5, 'as-fed'),
  ('51593f8e-cfbc-418c-9b3f-39661dbace35', 'ash', 7.2, 'as-fed'),
  ('51593f8e-cfbc-418c-9b3f-39661dbace35', 'calcium', 0.6, 'as-fed'),
  ('51593f8e-cfbc-418c-9b3f-39661dbace35', 'phosphorus', 0.6, 'as-fed');

-- Royal Canin — Urinary S/O Moderate Calorie (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/urinary-so-moderate-calorie-1277',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 822kcal/kg omgerekend naar 82,2 kcal/100 g (gedeeld door 10). Omega-3 en omega-6 worden niet vermeld.'
 where id = '74531a9e-1f3a-4e85-a1fe-75733e519be7';
delete from public.recipe_nutrition where recipe_version_id = '74531a9e-1f3a-4e85-a1fe-75733e519be7';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('74531a9e-1f3a-4e85-a1fe-75733e519be7', 'protein', 8.1, 'as-fed'),
  ('74531a9e-1f3a-4e85-a1fe-75733e519be7', 'fat', 4, 'as-fed'),
  ('74531a9e-1f3a-4e85-a1fe-75733e519be7', 'fiber', 0.9, 'as-fed'),
  ('74531a9e-1f3a-4e85-a1fe-75733e519be7', 'ash', 1.7, 'as-fed'),
  ('74531a9e-1f3a-4e85-a1fe-75733e519be7', 'moisture', 80.1, 'as-fed'),
  ('74531a9e-1f3a-4e85-a1fe-75733e519be7', 'kcal', 82.2, 'as-fed'),
  ('74531a9e-1f3a-4e85-a1fe-75733e519be7', 'calcium', 0.2, 'as-fed'),
  ('74531a9e-1f3a-4e85-a1fe-75733e519be7', 'phosphorus', 0.16, 'as-fed');

-- Royal Canin — Urinary S/O Small Dog (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/urinary-so-small-dog-3801',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, omega-3 en omega-6 worden niet vermeld.'
 where id = '0dbb8f91-ae99-4709-94cb-7fd522330a83';
delete from public.recipe_nutrition where recipe_version_id = '0dbb8f91-ae99-4709-94cb-7fd522330a83';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0dbb8f91-ae99-4709-94cb-7fd522330a83', 'protein', 20, 'as-fed'),
  ('0dbb8f91-ae99-4709-94cb-7fd522330a83', 'fat', 17, 'as-fed'),
  ('0dbb8f91-ae99-4709-94cb-7fd522330a83', 'fiber', 2.4, 'as-fed'),
  ('0dbb8f91-ae99-4709-94cb-7fd522330a83', 'ash', 7.3, 'as-fed'),
  ('0dbb8f91-ae99-4709-94cb-7fd522330a83', 'calcium', 0.7, 'as-fed'),
  ('0dbb8f91-ae99-4709-94cb-7fd522330a83', 'phosphorus', 0.7, 'as-fed');

-- Royal Canin — Urinary U/C (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/urinary-uc-3942',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'dff18549-944c-41bf-9432-baa597f74ddb';
delete from public.recipe_nutrition where recipe_version_id = 'dff18549-944c-41bf-9432-baa597f74ddb';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('dff18549-944c-41bf-9432-baa597f74ddb', 'protein', 18, 'as-fed'),
  ('dff18549-944c-41bf-9432-baa597f74ddb', 'fat', 15, 'as-fed'),
  ('dff18549-944c-41bf-9432-baa597f74ddb', 'fiber', 2.2, 'as-fed'),
  ('dff18549-944c-41bf-9432-baa597f74ddb', 'ash', 5.2, 'as-fed');

-- Royal Canin — West Highland White Terrier Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/west-highland-white-terrier-adult-3981',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'ac9fb983-9714-4cf9-b1b3-71e9f6528546';
delete from public.recipe_nutrition where recipe_version_id = 'ac9fb983-9714-4cf9-b1b3-71e9f6528546';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ac9fb983-9714-4cf9-b1b3-71e9f6528546', 'protein', 21, 'as-fed'),
  ('ac9fb983-9714-4cf9-b1b3-71e9f6528546', 'fat', 16, 'as-fed'),
  ('ac9fb983-9714-4cf9-b1b3-71e9f6528546', 'fiber', 1.4, 'as-fed'),
  ('ac9fb983-9714-4cf9-b1b3-71e9f6528546', 'ash', 6.1, 'as-fed');

-- Royal Canin — X-Small Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/x-small-adult-1003',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'cce14451-5224-4cd8-aa8d-0d28d80d250e';
delete from public.recipe_nutrition where recipe_version_id = 'cce14451-5224-4cd8-aa8d-0d28d80d250e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('cce14451-5224-4cd8-aa8d-0d28d80d250e', 'protein', 24, 'as-fed'),
  ('cce14451-5224-4cd8-aa8d-0d28d80d250e', 'fat', 18, 'as-fed'),
  ('cce14451-5224-4cd8-aa8d-0d28d80d250e', 'fiber', 1.7, 'as-fed'),
  ('cce14451-5224-4cd8-aa8d-0d28d80d250e', 'ash', 5.6, 'as-fed');

-- Royal Canin — X-Small Adult 8+ (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/x-small-adult-8%2b-1004',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'dd69d506-9b9a-4f3c-ad3e-a3aacdfc9b12';
delete from public.recipe_nutrition where recipe_version_id = 'dd69d506-9b9a-4f3c-ad3e-a3aacdfc9b12';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('dd69d506-9b9a-4f3c-ad3e-a3aacdfc9b12', 'protein', 24, 'as-fed'),
  ('dd69d506-9b9a-4f3c-ad3e-a3aacdfc9b12', 'fat', 18, 'as-fed'),
  ('dd69d506-9b9a-4f3c-ad3e-a3aacdfc9b12', 'fiber', 1.7, 'as-fed'),
  ('dd69d506-9b9a-4f3c-ad3e-a3aacdfc9b12', 'ash', 5.6, 'as-fed');

-- Royal Canin — X-Small Adult in Gravy (brokjes in saus) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/x-small-adult---morsels-in-gravy-8033',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'b5b4af9f-4e65-4346-bdd0-f205b502ad42';
delete from public.recipe_nutrition where recipe_version_id = 'b5b4af9f-4e65-4346-bdd0-f205b502ad42';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b5b4af9f-4e65-4346-bdd0-f205b502ad42', 'protein', 8, 'as-fed'),
  ('b5b4af9f-4e65-4346-bdd0-f205b502ad42', 'fat', 5.2, 'as-fed'),
  ('b5b4af9f-4e65-4346-bdd0-f205b502ad42', 'fiber', 0.8, 'as-fed'),
  ('b5b4af9f-4e65-4346-bdd0-f205b502ad42', 'ash', 1.5, 'as-fed'),
  ('b5b4af9f-4e65-4346-bdd0-f205b502ad42', 'moisture', 81.1, 'as-fed');

-- Royal Canin — X-Small Ageing 12+ (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/x-small-ageing-12%2b-1005',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'a705ae56-7a0d-400d-ba36-7a3e94ac1cba';
delete from public.recipe_nutrition where recipe_version_id = 'a705ae56-7a0d-400d-ba36-7a3e94ac1cba';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a705ae56-7a0d-400d-ba36-7a3e94ac1cba', 'protein', 24, 'as-fed'),
  ('a705ae56-7a0d-400d-ba36-7a3e94ac1cba', 'fat', 16, 'as-fed'),
  ('a705ae56-7a0d-400d-ba36-7a3e94ac1cba', 'fiber', 1.7, 'as-fed'),
  ('a705ae56-7a0d-400d-ba36-7a3e94ac1cba', 'ash', 4.8, 'as-fed');

-- Royal Canin — X-Small Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/puppy---x-small-1002',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 4.054kcal/kg omgerekend naar 405,4 kcal/100 g (gedeeld door 10). Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '3bb39564-fea5-4ccc-be48-b625030bb145';
delete from public.recipe_nutrition where recipe_version_id = '3bb39564-fea5-4ccc-be48-b625030bb145';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3bb39564-fea5-4ccc-be48-b625030bb145', 'protein', 31, 'as-fed'),
  ('3bb39564-fea5-4ccc-be48-b625030bb145', 'fat', 20, 'as-fed'),
  ('3bb39564-fea5-4ccc-be48-b625030bb145', 'fiber', 1.5, 'as-fed'),
  ('3bb39564-fea5-4ccc-be48-b625030bb145', 'ash', 8.3, 'as-fed'),
  ('3bb39564-fea5-4ccc-be48-b625030bb145', 'kcal', 405.4, 'as-fed');

-- Royal Canin — X-Small Puppy in Gravy (brokjes in saus) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/puppy---x-small---chunks-in-gravy-1593',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Omega-3 vetzuur (DHA) is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '6c5a048d-a751-45bb-be69-16fa0f816df8';
delete from public.recipe_nutrition where recipe_version_id = '6c5a048d-a751-45bb-be69-16fa0f816df8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6c5a048d-a751-45bb-be69-16fa0f816df8', 'protein', 8, 'as-fed'),
  ('6c5a048d-a751-45bb-be69-16fa0f816df8', 'fat', 6, 'as-fed'),
  ('6c5a048d-a751-45bb-be69-16fa0f816df8', 'fiber', 1, 'as-fed'),
  ('6c5a048d-a751-45bb-be69-16fa0f816df8', 'ash', 1.9, 'as-fed'),
  ('6c5a048d-a751-45bb-be69-16fa0f816df8', 'moisture', 79.2, 'as-fed');

-- Royal Canin — Yorkshire Adult in Loaf (paté) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/yorkshire-terrier-2040',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '9f831983-e567-4cfb-9d20-507ef2584af2';
delete from public.recipe_nutrition where recipe_version_id = '9f831983-e567-4cfb-9d20-507ef2584af2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9f831983-e567-4cfb-9d20-507ef2584af2', 'protein', 8.7, 'as-fed'),
  ('9f831983-e567-4cfb-9d20-507ef2584af2', 'fat', 6.1, 'as-fed'),
  ('9f831983-e567-4cfb-9d20-507ef2584af2', 'fiber', 1.3, 'as-fed'),
  ('9f831983-e567-4cfb-9d20-507ef2584af2', 'ash', 2.3, 'as-fed'),
  ('9f831983-e567-4cfb-9d20-507ef2584af2', 'moisture', 78, 'as-fed');

-- Royal Canin — Yorkshire Terrier 8+ (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/yorkshire-terrier-8%2b-1260',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '03f2d8b2-2cfc-428e-929a-e0d09146fd91';
delete from public.recipe_nutrition where recipe_version_id = '03f2d8b2-2cfc-428e-929a-e0d09146fd91';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('03f2d8b2-2cfc-428e-929a-e0d09146fd91', 'protein', 26, 'as-fed'),
  ('03f2d8b2-2cfc-428e-929a-e0d09146fd91', 'fat', 16, 'as-fed'),
  ('03f2d8b2-2cfc-428e-929a-e0d09146fd91', 'fiber', 1.6, 'as-fed'),
  ('03f2d8b2-2cfc-428e-929a-e0d09146fd91', 'ash', 5.4, 'as-fed');

-- Royal Canin — Yorkshire Terrier Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/yorkshire-terrier-adult-3051',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium en fosfor worden niet vermeld.'
 where id = 'e01fea39-e8a9-45e4-8436-b37482346080';
delete from public.recipe_nutrition where recipe_version_id = 'e01fea39-e8a9-45e4-8436-b37482346080';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e01fea39-e8a9-45e4-8436-b37482346080', 'protein', 28, 'as-fed'),
  ('e01fea39-e8a9-45e4-8436-b37482346080', 'fat', 18, 'as-fed'),
  ('e01fea39-e8a9-45e4-8436-b37482346080', 'fiber', 2.8, 'as-fed'),
  ('e01fea39-e8a9-45e4-8436-b37482346080', 'ash', 5.1, 'as-fed'),
  ('e01fea39-e8a9-45e4-8436-b37482346080', 'omega3', 0.7, 'as-fed'),
  ('e01fea39-e8a9-45e4-8436-b37482346080', 'omega6', 3.4, 'as-fed');

-- Royal Canin — Yorkshire Terrier Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/yorkshire-terrier-puppy-3972',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor en omega-3 worden niet vermeld.'
 where id = 'eebbbf39-d2ea-48b3-bb4f-428875073d0b';
delete from public.recipe_nutrition where recipe_version_id = 'eebbbf39-d2ea-48b3-bb4f-428875073d0b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('eebbbf39-d2ea-48b3-bb4f-428875073d0b', 'protein', 29, 'as-fed'),
  ('eebbbf39-d2ea-48b3-bb4f-428875073d0b', 'fat', 20, 'as-fed'),
  ('eebbbf39-d2ea-48b3-bb4f-428875073d0b', 'fiber', 1.3, 'as-fed'),
  ('eebbbf39-d2ea-48b3-bb4f-428875073d0b', 'ash', 7.7, 'as-fed'),
  ('eebbbf39-d2ea-48b3-bb4f-428875073d0b', 'omega6', 3.8, 'as-fed');

commit;
