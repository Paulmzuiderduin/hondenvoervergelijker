begin;

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

commit;
