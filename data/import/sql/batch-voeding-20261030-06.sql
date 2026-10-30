begin;

-- DARF — Actief (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-actief-10-x-1-kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 219 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '0b011c41-2ab9-4c1b-8f6c-61dc4a6e1aa9';
delete from public.recipe_nutrition where recipe_version_id = '0b011c41-2ab9-4c1b-8f6c-61dc4a6e1aa9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0b011c41-2ab9-4c1b-8f6c-61dc4a6e1aa9', 'protein', 17.4, 'as-fed'),
  ('0b011c41-2ab9-4c1b-8f6c-61dc4a6e1aa9', 'fat', 16.6, 'as-fed'),
  ('0b011c41-2ab9-4c1b-8f6c-61dc4a6e1aa9', 'fiber', 3.8, 'as-fed'),
  ('0b011c41-2ab9-4c1b-8f6c-61dc4a6e1aa9', 'ash', 1.2, 'as-fed'),
  ('0b011c41-2ab9-4c1b-8f6c-61dc4a6e1aa9', 'moisture', 61, 'as-fed'),
  ('0b011c41-2ab9-4c1b-8f6c-61dc4a6e1aa9', 'kcal', 219, 'as-fed'),
  ('0b011c41-2ab9-4c1b-8f6c-61dc4a6e1aa9', 'calcium', 0.9, 'as-fed'),
  ('0b011c41-2ab9-4c1b-8f6c-61dc4a6e1aa9', 'phosphorus', 0.48, 'as-fed');

-- DARF — Actief Classic (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-actief-classic',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 219 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '8ffa4d4b-d7c0-4b07-8801-51eeb7bdea9b';
delete from public.recipe_nutrition where recipe_version_id = '8ffa4d4b-d7c0-4b07-8801-51eeb7bdea9b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8ffa4d4b-d7c0-4b07-8801-51eeb7bdea9b', 'protein', 17.4, 'as-fed'),
  ('8ffa4d4b-d7c0-4b07-8801-51eeb7bdea9b', 'fat', 16.6, 'as-fed'),
  ('8ffa4d4b-d7c0-4b07-8801-51eeb7bdea9b', 'fiber', 3.8, 'as-fed'),
  ('8ffa4d4b-d7c0-4b07-8801-51eeb7bdea9b', 'ash', 1.2, 'as-fed'),
  ('8ffa4d4b-d7c0-4b07-8801-51eeb7bdea9b', 'moisture', 61, 'as-fed'),
  ('8ffa4d4b-d7c0-4b07-8801-51eeb7bdea9b', 'kcal', 219, 'as-fed'),
  ('8ffa4d4b-d7c0-4b07-8801-51eeb7bdea9b', 'calcium', 0.9, 'as-fed'),
  ('8ffa4d4b-d7c0-4b07-8801-51eeb7bdea9b', 'phosphorus', 0.48, 'as-fed');

-- DARF — Caspar Classic (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-caspar-classic',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 189 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'e02601a7-4d4a-4f37-9b65-abc78b669a3b';
delete from public.recipe_nutrition where recipe_version_id = 'e02601a7-4d4a-4f37-9b65-abc78b669a3b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e02601a7-4d4a-4f37-9b65-abc78b669a3b', 'protein', 18, 'as-fed'),
  ('e02601a7-4d4a-4f37-9b65-abc78b669a3b', 'fat', 12.3, 'as-fed'),
  ('e02601a7-4d4a-4f37-9b65-abc78b669a3b', 'fiber', 3.2, 'as-fed'),
  ('e02601a7-4d4a-4f37-9b65-abc78b669a3b', 'ash', 1, 'as-fed'),
  ('e02601a7-4d4a-4f37-9b65-abc78b669a3b', 'moisture', 66, 'as-fed'),
  ('e02601a7-4d4a-4f37-9b65-abc78b669a3b', 'kcal', 189, 'as-fed'),
  ('e02601a7-4d4a-4f37-9b65-abc78b669a3b', 'calcium', 0.6, 'as-fed'),
  ('e02601a7-4d4a-4f37-9b65-abc78b669a3b', 'phosphorus', 0.46, 'as-fed');

-- DARF — Caspar KVV (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-caspar-kvv-10-x-1-kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 189 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '01aabe5e-707c-4424-baf1-5513417be950';
delete from public.recipe_nutrition where recipe_version_id = '01aabe5e-707c-4424-baf1-5513417be950';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('01aabe5e-707c-4424-baf1-5513417be950', 'protein', 16.6, 'as-fed'),
  ('01aabe5e-707c-4424-baf1-5513417be950', 'fat', 8.38, 'as-fed'),
  ('01aabe5e-707c-4424-baf1-5513417be950', 'fiber', 1.23, 'as-fed'),
  ('01aabe5e-707c-4424-baf1-5513417be950', 'ash', 3.86, 'as-fed'),
  ('01aabe5e-707c-4424-baf1-5513417be950', 'moisture', 69.93, 'as-fed'),
  ('01aabe5e-707c-4424-baf1-5513417be950', 'kcal', 189, 'as-fed'),
  ('01aabe5e-707c-4424-baf1-5513417be950', 'calcium', 0.6, 'as-fed'),
  ('01aabe5e-707c-4424-baf1-5513417be950', 'phosphorus', 0.46, 'as-fed');

-- DARF — Eend Classic (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-eend-classic',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 131 kcal per 100 g; geen omrekening nodig. Calcium en fosfor worden niet afzonderlijk vermeld, alleen de Ca/P-ratio 1,03; daarom blijven beide null. Omega-3 en omega-6 worden niet vermeld.'
 where id = '3ec3b209-bd16-4af1-bc06-1a31226dabae';
delete from public.recipe_nutrition where recipe_version_id = '3ec3b209-bd16-4af1-bc06-1a31226dabae';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3ec3b209-bd16-4af1-bc06-1a31226dabae', 'protein', 17.79, 'as-fed'),
  ('3ec3b209-bd16-4af1-bc06-1a31226dabae', 'fat', 8.03, 'as-fed'),
  ('3ec3b209-bd16-4af1-bc06-1a31226dabae', 'fiber', 1.28, 'as-fed'),
  ('3ec3b209-bd16-4af1-bc06-1a31226dabae', 'ash', 2.72, 'as-fed'),
  ('3ec3b209-bd16-4af1-bc06-1a31226dabae', 'moisture', 70.18, 'as-fed'),
  ('3ec3b209-bd16-4af1-bc06-1a31226dabae', 'kcal', 131, 'as-fed');

-- DARF — Emi KVV (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-emi-kvv-10-x-1-kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Ruwe celstof wordt alleen als bovengrens ''<0,5%'' vermeld; daarom is fiber null gelaten. Energie, calcium en fosfor worden niet afzonderlijk vermeld (alleen Ca/P-ratio 1,37). Omega-3 en omega-6 worden niet vermeld.'
 where id = 'f557bea8-4753-4805-a692-8e286e68b6cd';
delete from public.recipe_nutrition where recipe_version_id = 'f557bea8-4753-4805-a692-8e286e68b6cd';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f557bea8-4753-4805-a692-8e286e68b6cd', 'protein', 16.3, 'as-fed'),
  ('f557bea8-4753-4805-a692-8e286e68b6cd', 'fat', 9.2, 'as-fed'),
  ('f557bea8-4753-4805-a692-8e286e68b6cd', 'ash', 2.6, 'as-fed'),
  ('f557bea8-4753-4805-a692-8e286e68b6cd', 'moisture', 69.3, 'as-fed');

-- DARF — Geit Kip (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-geit-kip-10-x-1-kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 189 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '0b92752d-3d1f-43a2-9cd9-98a20e4adb98';
delete from public.recipe_nutrition where recipe_version_id = '0b92752d-3d1f-43a2-9cd9-98a20e4adb98';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0b92752d-3d1f-43a2-9cd9-98a20e4adb98', 'protein', 16.8, 'as-fed'),
  ('0b92752d-3d1f-43a2-9cd9-98a20e4adb98', 'fat', 13.6, 'as-fed'),
  ('0b92752d-3d1f-43a2-9cd9-98a20e4adb98', 'fiber', 3.6, 'as-fed'),
  ('0b92752d-3d1f-43a2-9cd9-98a20e4adb98', 'ash', 3.9, 'as-fed'),
  ('0b92752d-3d1f-43a2-9cd9-98a20e4adb98', 'moisture', 62, 'as-fed'),
  ('0b92752d-3d1f-43a2-9cd9-98a20e4adb98', 'kcal', 189, 'as-fed'),
  ('0b92752d-3d1f-43a2-9cd9-98a20e4adb98', 'calcium', 0.91, 'as-fed'),
  ('0b92752d-3d1f-43a2-9cd9-98a20e4adb98', 'phosphorus', 0.46, 'as-fed');

-- DARF — Hert (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-hert-10-x-1-kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 137 kcal per 100 g; geen omrekening nodig. Calcium en fosfor worden niet afzonderlijk vermeld, alleen de Ca/P-ratio 1,15; daarom blijven beide null. Omega-3 en omega-6 worden niet vermeld.'
 where id = '9c576612-33ec-422f-8b9e-151349dcf0c2';
delete from public.recipe_nutrition where recipe_version_id = '9c576612-33ec-422f-8b9e-151349dcf0c2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9c576612-33ec-422f-8b9e-151349dcf0c2', 'protein', 17.85, 'as-fed'),
  ('9c576612-33ec-422f-8b9e-151349dcf0c2', 'fat', 8.77, 'as-fed'),
  ('9c576612-33ec-422f-8b9e-151349dcf0c2', 'fiber', 1.53, 'as-fed'),
  ('9c576612-33ec-422f-8b9e-151349dcf0c2', 'ash', 1.08, 'as-fed'),
  ('9c576612-33ec-422f-8b9e-151349dcf0c2', 'moisture', 70.77, 'as-fed'),
  ('9c576612-33ec-422f-8b9e-151349dcf0c2', 'kcal', 137, 'as-fed');

-- DARF — Houdbaar worst Eend (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-houdbare-worst-eend-200g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Waarden overgenomen uit de analyseparagraaf in de productomschrijving; het gestructureerde analyseblok op de pagina noemt andere waarden voor vet (6%) en as (4%) en geen energie. De analyseparagraaf is gevolgd omdat die de volledige labeltekst bij dit product geeft. Energie staat al per 100 g; geen omrekening. Omega-3 en omega-6 worden niet vermeld.'
 where id = '9ec6931e-1c9f-4768-9125-90c07a4c54aa';
delete from public.recipe_nutrition where recipe_version_id = '9ec6931e-1c9f-4768-9125-90c07a4c54aa';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9ec6931e-1c9f-4768-9125-90c07a4c54aa', 'protein', 13, 'as-fed'),
  ('9ec6931e-1c9f-4768-9125-90c07a4c54aa', 'fat', 9, 'as-fed'),
  ('9ec6931e-1c9f-4768-9125-90c07a4c54aa', 'fiber', 0, 'as-fed'),
  ('9ec6931e-1c9f-4768-9125-90c07a4c54aa', 'ash', 6, 'as-fed'),
  ('9ec6931e-1c9f-4768-9125-90c07a4c54aa', 'moisture', 62, 'as-fed'),
  ('9ec6931e-1c9f-4768-9125-90c07a4c54aa', 'kcal', 195, 'as-fed'),
  ('9ec6931e-1c9f-4768-9125-90c07a4c54aa', 'calcium', 0.5, 'as-fed'),
  ('9ec6931e-1c9f-4768-9125-90c07a4c54aa', 'phosphorus', 0.39, 'as-fed');

-- DARF — Houdbaar worst Eend (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/product-darf-houdbare-worst-eend-800-gram',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Het analyseblok vermeldt geen energie, calcium of fosfor; deze blijven null. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'a6d381fc-c13f-4d61-9a46-24bdebd8b9d0';
delete from public.recipe_nutrition where recipe_version_id = 'a6d381fc-c13f-4d61-9a46-24bdebd8b9d0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a6d381fc-c13f-4d61-9a46-24bdebd8b9d0', 'protein', 12.6, 'as-fed'),
  ('a6d381fc-c13f-4d61-9a46-24bdebd8b9d0', 'fat', 12.2, 'as-fed'),
  ('a6d381fc-c13f-4d61-9a46-24bdebd8b9d0', 'fiber', 6.5, 'as-fed'),
  ('a6d381fc-c13f-4d61-9a46-24bdebd8b9d0', 'ash', 5.3, 'as-fed'),
  ('a6d381fc-c13f-4d61-9a46-24bdebd8b9d0', 'moisture', 59.7, 'as-fed');

-- DARF — Houdbaar worst Kalkoen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-houdbare-worst-kalkoen-200g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Waarden overgenomen uit de analyseparagraaf in de productomschrijving. Het gestructureerde analyseblok op de pagina bevat een dubbele labelvermelding (''Ruwe eiwit'' naast ''Ruw eiwit'') en is daarom niet als primaire bron gebruikt; de analyseparagraaf geeft de volledige labeltekst. Energie staat al per 100 g; geen omrekening. Omega-3 en omega-6 worden niet vermeld.'
 where id = '6af57944-0adc-4cc1-8808-5be4f19d3901';
delete from public.recipe_nutrition where recipe_version_id = '6af57944-0adc-4cc1-8808-5be4f19d3901';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6af57944-0adc-4cc1-8808-5be4f19d3901', 'protein', 17, 'as-fed'),
  ('6af57944-0adc-4cc1-8808-5be4f19d3901', 'fat', 4, 'as-fed'),
  ('6af57944-0adc-4cc1-8808-5be4f19d3901', 'fiber', 0, 'as-fed'),
  ('6af57944-0adc-4cc1-8808-5be4f19d3901', 'ash', 3, 'as-fed'),
  ('6af57944-0adc-4cc1-8808-5be4f19d3901', 'moisture', 68, 'as-fed'),
  ('6af57944-0adc-4cc1-8808-5be4f19d3901', 'kcal', 137, 'as-fed'),
  ('6af57944-0adc-4cc1-8808-5be4f19d3901', 'calcium', 0.54, 'as-fed'),
  ('6af57944-0adc-4cc1-8808-5be4f19d3901', 'phosphorus', 0.44, 'as-fed');

-- DARF — Houdbaar worst Kalkoen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/product-darf-houdbare-worst-kalkoen-800-gram',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Het analyseblok vermeldt geen energie, calcium of fosfor; deze blijven null. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'aa82ce30-80c6-4928-89ef-d758bd3b452e';
delete from public.recipe_nutrition where recipe_version_id = 'aa82ce30-80c6-4928-89ef-d758bd3b452e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('aa82ce30-80c6-4928-89ef-d758bd3b452e', 'protein', 16.3, 'as-fed'),
  ('aa82ce30-80c6-4928-89ef-d758bd3b452e', 'fat', 3.6, 'as-fed'),
  ('aa82ce30-80c6-4928-89ef-d758bd3b452e', 'fiber', 6.2, 'as-fed'),
  ('aa82ce30-80c6-4928-89ef-d758bd3b452e', 'ash', 2.6, 'as-fed'),
  ('aa82ce30-80c6-4928-89ef-d758bd3b452e', 'moisture', 67.2, 'as-fed');

-- DARF — Houdbaar worst Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/houdbare-worst-kip-200g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Waarden overgenomen uit de analyseparagraaf in de productomschrijving; de pagina heeft geen gestructureerd analyseblok. Energie staat al per 100 g; geen omrekening. Omega-3 en omega-6 worden niet vermeld.'
 where id = '44f92170-1d5b-435f-8c84-29f7b597c960';
delete from public.recipe_nutrition where recipe_version_id = '44f92170-1d5b-435f-8c84-29f7b597c960';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('44f92170-1d5b-435f-8c84-29f7b597c960', 'protein', 13, 'as-fed'),
  ('44f92170-1d5b-435f-8c84-29f7b597c960', 'fat', 4, 'as-fed'),
  ('44f92170-1d5b-435f-8c84-29f7b597c960', 'fiber', 0, 'as-fed'),
  ('44f92170-1d5b-435f-8c84-29f7b597c960', 'ash', 6, 'as-fed'),
  ('44f92170-1d5b-435f-8c84-29f7b597c960', 'moisture', 62, 'as-fed'),
  ('44f92170-1d5b-435f-8c84-29f7b597c960', 'kcal', 195, 'as-fed'),
  ('44f92170-1d5b-435f-8c84-29f7b597c960', 'calcium', 0.5, 'as-fed'),
  ('44f92170-1d5b-435f-8c84-29f7b597c960', 'phosphorus', 0.39, 'as-fed');

-- DARF — Houdbaar worst Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/product-darf-houdbare-worst-kip-800-gram',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Het analyseblok vermeldt geen energie, calcium of fosfor; deze blijven null. Omega-3 en omega-6 worden niet vermeld.'
 where id = '857c339f-b065-4093-97ef-3efffb5a3689';
delete from public.recipe_nutrition where recipe_version_id = '857c339f-b065-4093-97ef-3efffb5a3689';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('857c339f-b065-4093-97ef-3efffb5a3689', 'protein', 12.86, 'as-fed'),
  ('857c339f-b065-4093-97ef-3efffb5a3689', 'fat', 12.5, 'as-fed'),
  ('857c339f-b065-4093-97ef-3efffb5a3689', 'fiber', 6.4, 'as-fed'),
  ('857c339f-b065-4093-97ef-3efffb5a3689', 'ash', 5.3, 'as-fed'),
  ('857c339f-b065-4093-97ef-3efffb5a3689', 'moisture', 61.7, 'as-fed');

-- DARF — Houdbaar worst Konijn (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-houdbare-worst-konijn-200g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Waarden overgenomen uit de analyseparagraaf in de productomschrijving. Het gestructureerde analyseblok op de pagina verwisselt vet en as (11% as, 3% vet); de analyseparagraaf geeft de volledige labeltekst en is gevolgd. Energie staat al per 100 g; geen omrekening. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'b3ad6569-b4ab-4bfd-b4bc-e760cb878d8c';
delete from public.recipe_nutrition where recipe_version_id = 'b3ad6569-b4ab-4bfd-b4bc-e760cb878d8c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b3ad6569-b4ab-4bfd-b4bc-e760cb878d8c', 'protein', 17, 'as-fed'),
  ('b3ad6569-b4ab-4bfd-b4bc-e760cb878d8c', 'fat', 11, 'as-fed'),
  ('b3ad6569-b4ab-4bfd-b4bc-e760cb878d8c', 'fiber', 0, 'as-fed'),
  ('b3ad6569-b4ab-4bfd-b4bc-e760cb878d8c', 'ash', 3, 'as-fed'),
  ('b3ad6569-b4ab-4bfd-b4bc-e760cb878d8c', 'moisture', 64, 'as-fed'),
  ('b3ad6569-b4ab-4bfd-b4bc-e760cb878d8c', 'kcal', 186, 'as-fed'),
  ('b3ad6569-b4ab-4bfd-b4bc-e760cb878d8c', 'calcium', 0.49, 'as-fed'),
  ('b3ad6569-b4ab-4bfd-b4bc-e760cb878d8c', 'phosphorus', 0.36, 'as-fed');

-- DARF — Houdbaar worst Konijn (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/product-darf-houdbare-worst-konijn-800-gram',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Het analyseblok vermeldt geen ruwe celstof, energie, calcium of fosfor; deze blijven null. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'e1743006-0c34-49e9-b3c5-d2e6fa2afee4';
delete from public.recipe_nutrition where recipe_version_id = 'e1743006-0c34-49e9-b3c5-d2e6fa2afee4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e1743006-0c34-49e9-b3c5-d2e6fa2afee4', 'protein', 17.3, 'as-fed'),
  ('e1743006-0c34-49e9-b3c5-d2e6fa2afee4', 'fat', 10.7, 'as-fed'),
  ('e1743006-0c34-49e9-b3c5-d2e6fa2afee4', 'ash', 2.7, 'as-fed'),
  ('e1743006-0c34-49e9-b3c5-d2e6fa2afee4', 'moisture', 64.2, 'as-fed');

-- DARF — Houdbaar worst Lam (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-houdbare-worst-lam-200g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Waarden overgenomen uit de analyseparagraaf in de productomschrijving; de pagina heeft geen gestructureerd analyseblok. Energie staat al per 100 g; geen omrekening. Omega-3 en omega-6 worden niet vermeld.'
 where id = '31d69451-0380-4def-b356-911379954dea';
delete from public.recipe_nutrition where recipe_version_id = '31d69451-0380-4def-b356-911379954dea';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('31d69451-0380-4def-b356-911379954dea', 'protein', 15, 'as-fed'),
  ('31d69451-0380-4def-b356-911379954dea', 'fat', 10, 'as-fed'),
  ('31d69451-0380-4def-b356-911379954dea', 'fiber', 0, 'as-fed'),
  ('31d69451-0380-4def-b356-911379954dea', 'ash', 2, 'as-fed'),
  ('31d69451-0380-4def-b356-911379954dea', 'moisture', 67, 'as-fed'),
  ('31d69451-0380-4def-b356-911379954dea', 'kcal', 151, 'as-fed'),
  ('31d69451-0380-4def-b356-911379954dea', 'calcium', 0.4, 'as-fed'),
  ('31d69451-0380-4def-b356-911379954dea', 'phosphorus', 0.32, 'as-fed');

-- DARF — Houdbaar worst Lam (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/product-darf-houdbare-worst-lam-800-gram',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Het analyseblok vermeldt geen energie, calcium of fosfor; deze blijven null. Omega-3 en omega-6 worden niet vermeld.'
 where id = '649754bb-2f1b-450e-9616-107627917108';
delete from public.recipe_nutrition where recipe_version_id = '649754bb-2f1b-450e-9616-107627917108';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('649754bb-2f1b-450e-9616-107627917108', 'protein', 14.8, 'as-fed'),
  ('649754bb-2f1b-450e-9616-107627917108', 'fat', 10.1, 'as-fed'),
  ('649754bb-2f1b-450e-9616-107627917108', 'fiber', 6.4, 'as-fed'),
  ('649754bb-2f1b-450e-9616-107627917108', 'ash', 2.1, 'as-fed'),
  ('649754bb-2f1b-450e-9616-107627917108', 'moisture', 66.1, 'as-fed');

-- DARF — Houdbaar worst Paard (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/product-darf-houdbare-worst-paard-800-gram',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 137 kcal per 100 g; geen omrekening nodig. Calcium en fosfor worden niet vermeld. Omega-3 en omega-6 worden niet vermeld.'
 where id = '829b93d5-d7cb-4c70-918a-5cff2f632cea';
delete from public.recipe_nutrition where recipe_version_id = '829b93d5-d7cb-4c70-918a-5cff2f632cea';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('829b93d5-d7cb-4c70-918a-5cff2f632cea', 'protein', 12.8, 'as-fed'),
  ('829b93d5-d7cb-4c70-918a-5cff2f632cea', 'fat', 2.8, 'as-fed'),
  ('829b93d5-d7cb-4c70-918a-5cff2f632cea', 'fiber', 1.2, 'as-fed'),
  ('829b93d5-d7cb-4c70-918a-5cff2f632cea', 'ash', 8.2, 'as-fed'),
  ('829b93d5-d7cb-4c70-918a-5cff2f632cea', 'moisture', 59.5, 'as-fed'),
  ('829b93d5-d7cb-4c70-918a-5cff2f632cea', 'kcal', 137, 'as-fed');

-- DARF — Houdbaar worst Rund (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-houdbare-worst-rund-200g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Waarden overgenomen uit de analyseparagraaf in de productomschrijving; de pagina heeft geen gestructureerd analyseblok. Energie staat al per 100 g; geen omrekening. Omega-3 en omega-6 worden niet vermeld.'
 where id = '3b854c9b-f281-4ab5-839f-b50778a94c92';
delete from public.recipe_nutrition where recipe_version_id = '3b854c9b-f281-4ab5-839f-b50778a94c92';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3b854c9b-f281-4ab5-839f-b50778a94c92', 'protein', 16, 'as-fed'),
  ('3b854c9b-f281-4ab5-839f-b50778a94c92', 'fat', 11, 'as-fed'),
  ('3b854c9b-f281-4ab5-839f-b50778a94c92', 'fiber', 0, 'as-fed'),
  ('3b854c9b-f281-4ab5-839f-b50778a94c92', 'ash', 3, 'as-fed'),
  ('3b854c9b-f281-4ab5-839f-b50778a94c92', 'moisture', 63, 'as-fed'),
  ('3b854c9b-f281-4ab5-839f-b50778a94c92', 'kcal', 194, 'as-fed'),
  ('3b854c9b-f281-4ab5-839f-b50778a94c92', 'calcium', 0.44, 'as-fed'),
  ('3b854c9b-f281-4ab5-839f-b50778a94c92', 'phosphorus', 0.33, 'as-fed');

-- DARF — Houdbaar worst Rund (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-houdbare-worst-rund-800g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 194 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '4eec99bc-47d8-4520-9466-0c462fb9b548';
delete from public.recipe_nutrition where recipe_version_id = '4eec99bc-47d8-4520-9466-0c462fb9b548';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4eec99bc-47d8-4520-9466-0c462fb9b548', 'protein', 16, 'as-fed'),
  ('4eec99bc-47d8-4520-9466-0c462fb9b548', 'fat', 11, 'as-fed'),
  ('4eec99bc-47d8-4520-9466-0c462fb9b548', 'fiber', 1.2, 'as-fed'),
  ('4eec99bc-47d8-4520-9466-0c462fb9b548', 'ash', 3, 'as-fed'),
  ('4eec99bc-47d8-4520-9466-0c462fb9b548', 'moisture', 63, 'as-fed'),
  ('4eec99bc-47d8-4520-9466-0c462fb9b548', 'kcal', 194, 'as-fed'),
  ('4eec99bc-47d8-4520-9466-0c462fb9b548', 'calcium', 0.44, 'as-fed'),
  ('4eec99bc-47d8-4520-9466-0c462fb9b548', 'phosphorus', 0.33, 'as-fed');

-- DARF — Houdbaar worst Wild (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/product-darf-houdbare-worst-wild-800-gram',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 125 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '11c5d18e-93ec-49a4-9cf4-2fdc8af54cd2';
delete from public.recipe_nutrition where recipe_version_id = '11c5d18e-93ec-49a4-9cf4-2fdc8af54cd2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('11c5d18e-93ec-49a4-9cf4-2fdc8af54cd2', 'protein', 13.6, 'as-fed'),
  ('11c5d18e-93ec-49a4-9cf4-2fdc8af54cd2', 'fat', 3.6, 'as-fed'),
  ('11c5d18e-93ec-49a4-9cf4-2fdc8af54cd2', 'fiber', 0, 'as-fed'),
  ('11c5d18e-93ec-49a4-9cf4-2fdc8af54cd2', 'ash', 6.8, 'as-fed'),
  ('11c5d18e-93ec-49a4-9cf4-2fdc8af54cd2', 'moisture', 58.8, 'as-fed'),
  ('11c5d18e-93ec-49a4-9cf4-2fdc8af54cd2', 'kcal', 125, 'as-fed'),
  ('11c5d18e-93ec-49a4-9cf4-2fdc8af54cd2', 'calcium', 0.49, 'as-fed'),
  ('11c5d18e-93ec-49a4-9cf4-2fdc8af54cd2', 'phosphorus', 0.36, 'as-fed');

-- DARF — Houdbaar worst Zalm (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-houdbare-worst-zalm-200g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Waarden overgenomen uit de analyseparagraaf in de productomschrijving; de pagina heeft geen gestructureerd analyseblok. Energie staat al per 100 g; geen omrekening. Omega-3 en omega-6 worden niet vermeld.'
 where id = '6ace3a4c-bb5e-49e9-8cd6-0de063b6cac4';
delete from public.recipe_nutrition where recipe_version_id = '6ace3a4c-bb5e-49e9-8cd6-0de063b6cac4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6ace3a4c-bb5e-49e9-8cd6-0de063b6cac4', 'protein', 16, 'as-fed'),
  ('6ace3a4c-bb5e-49e9-8cd6-0de063b6cac4', 'fat', 10, 'as-fed'),
  ('6ace3a4c-bb5e-49e9-8cd6-0de063b6cac4', 'fiber', 0, 'as-fed'),
  ('6ace3a4c-bb5e-49e9-8cd6-0de063b6cac4', 'ash', 4, 'as-fed'),
  ('6ace3a4c-bb5e-49e9-8cd6-0de063b6cac4', 'moisture', 63, 'as-fed'),
  ('6ace3a4c-bb5e-49e9-8cd6-0de063b6cac4', 'kcal', 178, 'as-fed'),
  ('6ace3a4c-bb5e-49e9-8cd6-0de063b6cac4', 'calcium', 0.45, 'as-fed'),
  ('6ace3a4c-bb5e-49e9-8cd6-0de063b6cac4', 'phosphorus', 0.33, 'as-fed');

-- DARF — Kalkoen KVV (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-kalkoen-kvv-10-x-1-kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 190 kcal per 100 g; geen omrekening nodig. Ruwe celstof wordt niet vermeld. Omega-3 en omega-6 worden niet vermeld.'
 where id = '6cd6d936-9474-4b98-926c-c60f5332731a';
delete from public.recipe_nutrition where recipe_version_id = '6cd6d936-9474-4b98-926c-c60f5332731a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6cd6d936-9474-4b98-926c-c60f5332731a', 'protein', 13.5, 'as-fed'),
  ('6cd6d936-9474-4b98-926c-c60f5332731a', 'fat', 16.8, 'as-fed'),
  ('6cd6d936-9474-4b98-926c-c60f5332731a', 'ash', 4.52, 'as-fed'),
  ('6cd6d936-9474-4b98-926c-c60f5332731a', 'moisture', 63.32, 'as-fed'),
  ('6cd6d936-9474-4b98-926c-c60f5332731a', 'kcal', 190, 'as-fed'),
  ('6cd6d936-9474-4b98-926c-c60f5332731a', 'calcium', 1.1, 'as-fed'),
  ('6cd6d936-9474-4b98-926c-c60f5332731a', 'phosphorus', 0.68, 'as-fed');

-- DARF — Konijn (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-konijn-kvv-10-x-1-kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 190 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'd38b8ba5-4ea8-427b-b8b0-dd6db0f4a143';
delete from public.recipe_nutrition where recipe_version_id = 'd38b8ba5-4ea8-427b-b8b0-dd6db0f4a143';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d38b8ba5-4ea8-427b-b8b0-dd6db0f4a143', 'protein', 15.4, 'as-fed'),
  ('d38b8ba5-4ea8-427b-b8b0-dd6db0f4a143', 'fat', 14.3, 'as-fed'),
  ('d38b8ba5-4ea8-427b-b8b0-dd6db0f4a143', 'fiber', 3.4, 'as-fed'),
  ('d38b8ba5-4ea8-427b-b8b0-dd6db0f4a143', 'ash', 1.2, 'as-fed'),
  ('d38b8ba5-4ea8-427b-b8b0-dd6db0f4a143', 'moisture', 66, 'as-fed'),
  ('d38b8ba5-4ea8-427b-b8b0-dd6db0f4a143', 'kcal', 190, 'as-fed'),
  ('d38b8ba5-4ea8-427b-b8b0-dd6db0f4a143', 'calcium', 0.9, 'as-fed'),
  ('d38b8ba5-4ea8-427b-b8b0-dd6db0f4a143', 'phosphorus', 0.46, 'as-fed');

-- DARF — KVV (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-kvv-10-x-1-kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 184 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '9ce0cb5e-66cc-435c-87d7-d5145d353407';
delete from public.recipe_nutrition where recipe_version_id = '9ce0cb5e-66cc-435c-87d7-d5145d353407';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9ce0cb5e-66cc-435c-87d7-d5145d353407', 'protein', 16.6, 'as-fed'),
  ('9ce0cb5e-66cc-435c-87d7-d5145d353407', 'fat', 13.6, 'as-fed'),
  ('9ce0cb5e-66cc-435c-87d7-d5145d353407', 'fiber', 3.8, 'as-fed'),
  ('9ce0cb5e-66cc-435c-87d7-d5145d353407', 'ash', 2.8, 'as-fed'),
  ('9ce0cb5e-66cc-435c-87d7-d5145d353407', 'moisture', 58.8, 'as-fed'),
  ('9ce0cb5e-66cc-435c-87d7-d5145d353407', 'kcal', 184, 'as-fed'),
  ('9ce0cb5e-66cc-435c-87d7-d5145d353407', 'calcium', 0.63, 'as-fed'),
  ('9ce0cb5e-66cc-435c-87d7-d5145d353407', 'phosphorus', 0.43, 'as-fed');

-- DARF — Lam Kip (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-lam-kip-10-x-1-kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 188,6 kcal per 100 g; geen omrekening nodig. Ruwe celstof wordt niet vermeld. ''Forsfor'' is de spelling op de bron; als fosfor overgenomen. Omega-3 en omega-6 worden niet vermeld.'
 where id = '6711d6ab-b4b4-4aaf-bff7-4d2d39997813';
delete from public.recipe_nutrition where recipe_version_id = '6711d6ab-b4b4-4aaf-bff7-4d2d39997813';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6711d6ab-b4b4-4aaf-bff7-4d2d39997813', 'protein', 14.7, 'as-fed'),
  ('6711d6ab-b4b4-4aaf-bff7-4d2d39997813', 'fat', 16.1, 'as-fed'),
  ('6711d6ab-b4b4-4aaf-bff7-4d2d39997813', 'ash', 4.5, 'as-fed'),
  ('6711d6ab-b4b4-4aaf-bff7-4d2d39997813', 'moisture', 63.6, 'as-fed'),
  ('6711d6ab-b4b4-4aaf-bff7-4d2d39997813', 'kcal', 188.6, 'as-fed'),
  ('6711d6ab-b4b4-4aaf-bff7-4d2d39997813', 'calcium', 1.05, 'as-fed'),
  ('6711d6ab-b4b4-4aaf-bff7-4d2d39997813', 'phosphorus', 0.66, 'as-fed');

-- DARF — Menu Fit Hartige Zijderups (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-fit-bijzonder-lekkere-zijderups-410g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Waarden overgenomen uit de analyseparagraaf in de productomschrijving; de pagina heeft geen gestructureerd analyseblok. Energie, calcium en fosfor worden niet vermeld. Omega-3 en omega-6 worden niet vermeld.'
 where id = '50b315b5-eaa3-4cb7-be52-c263d5481035';
delete from public.recipe_nutrition where recipe_version_id = '50b315b5-eaa3-4cb7-be52-c263d5481035';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('50b315b5-eaa3-4cb7-be52-c263d5481035', 'protein', 6.5, 'as-fed'),
  ('50b315b5-eaa3-4cb7-be52-c263d5481035', 'fat', 4.5, 'as-fed'),
  ('50b315b5-eaa3-4cb7-be52-c263d5481035', 'fiber', 1.4, 'as-fed'),
  ('50b315b5-eaa3-4cb7-be52-c263d5481035', 'ash', 1.7, 'as-fed'),
  ('50b315b5-eaa3-4cb7-be52-c263d5481035', 'moisture', 73.5, 'as-fed');

-- DARF — Menu Lekker Kalkoen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-menu-lekker-kalkoen-400g-in-blik',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Waarden overgenomen uit de analyseparagraaf in de productomschrijving; de pagina heeft geen gestructureerd analyseblok. Energie wordt niet vermeld. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'd3bca9ea-6aa3-496e-b327-32adcaab3a33';
delete from public.recipe_nutrition where recipe_version_id = 'd3bca9ea-6aa3-496e-b327-32adcaab3a33';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d3bca9ea-6aa3-496e-b327-32adcaab3a33', 'protein', 10.7, 'as-fed'),
  ('d3bca9ea-6aa3-496e-b327-32adcaab3a33', 'fat', 5.3, 'as-fed'),
  ('d3bca9ea-6aa3-496e-b327-32adcaab3a33', 'fiber', 0.8, 'as-fed'),
  ('d3bca9ea-6aa3-496e-b327-32adcaab3a33', 'ash', 2.1, 'as-fed'),
  ('d3bca9ea-6aa3-496e-b327-32adcaab3a33', 'moisture', 78.5, 'as-fed'),
  ('d3bca9ea-6aa3-496e-b327-32adcaab3a33', 'calcium', 0.4, 'as-fed'),
  ('d3bca9ea-6aa3-496e-b327-32adcaab3a33', 'phosphorus', 0.24, 'as-fed');

-- DARF — Noordzee (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-noordzee-kvv-10-x-1-kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 157,1 kcal per 100 g; geen omrekening nodig. Ruwe celstof wordt niet vermeld. ''Ca:F 1,39'' is de calcium/fosfor-verhouding zoals op de bron vermeld. Omega-3 en omega-6 worden niet vermeld.'
 where id = '2c9545da-5dc7-4fb8-aeca-5bbaf91745a6';
delete from public.recipe_nutrition where recipe_version_id = '2c9545da-5dc7-4fb8-aeca-5bbaf91745a6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2c9545da-5dc7-4fb8-aeca-5bbaf91745a6', 'protein', 15, 'as-fed'),
  ('2c9545da-5dc7-4fb8-aeca-5bbaf91745a6', 'fat', 12.3, 'as-fed'),
  ('2c9545da-5dc7-4fb8-aeca-5bbaf91745a6', 'ash', 3.2, 'as-fed'),
  ('2c9545da-5dc7-4fb8-aeca-5bbaf91745a6', 'moisture', 67.6, 'as-fed'),
  ('2c9545da-5dc7-4fb8-aeca-5bbaf91745a6', 'kcal', 157.1, 'as-fed'),
  ('2c9545da-5dc7-4fb8-aeca-5bbaf91745a6', 'calcium', 0.67, 'as-fed'),
  ('2c9545da-5dc7-4fb8-aeca-5bbaf91745a6', 'phosphorus', 0.49, 'as-fed');

-- DARF — Pens Haring Eend (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-pens-haring-eend-classic',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 190 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '29868d4b-7c34-4891-b04c-fabde5c66307';
delete from public.recipe_nutrition where recipe_version_id = '29868d4b-7c34-4891-b04c-fabde5c66307';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('29868d4b-7c34-4891-b04c-fabde5c66307', 'protein', 12, 'as-fed'),
  ('29868d4b-7c34-4891-b04c-fabde5c66307', 'fat', 15.8, 'as-fed'),
  ('29868d4b-7c34-4891-b04c-fabde5c66307', 'fiber', 5.2, 'as-fed'),
  ('29868d4b-7c34-4891-b04c-fabde5c66307', 'ash', 1.9, 'as-fed'),
  ('29868d4b-7c34-4891-b04c-fabde5c66307', 'moisture', 65, 'as-fed'),
  ('29868d4b-7c34-4891-b04c-fabde5c66307', 'kcal', 190, 'as-fed'),
  ('29868d4b-7c34-4891-b04c-fabde5c66307', 'calcium', 0.87, 'as-fed'),
  ('29868d4b-7c34-4891-b04c-fabde5c66307', 'phosphorus', 0.41, 'as-fed');

-- DARF — Pens Zalm Kalkoen (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-pens-zalm-kalkoen-classic',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 175 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '658a311b-7998-4b08-90df-184d92f15a80';
delete from public.recipe_nutrition where recipe_version_id = '658a311b-7998-4b08-90df-184d92f15a80';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('658a311b-7998-4b08-90df-184d92f15a80', 'protein', 12.1, 'as-fed'),
  ('658a311b-7998-4b08-90df-184d92f15a80', 'fat', 14.8, 'as-fed'),
  ('658a311b-7998-4b08-90df-184d92f15a80', 'fiber', 5.2, 'as-fed'),
  ('658a311b-7998-4b08-90df-184d92f15a80', 'ash', 3.8, 'as-fed'),
  ('658a311b-7998-4b08-90df-184d92f15a80', 'moisture', 64, 'as-fed'),
  ('658a311b-7998-4b08-90df-184d92f15a80', 'kcal', 175, 'as-fed'),
  ('658a311b-7998-4b08-90df-184d92f15a80', 'calcium', 0.89, 'as-fed'),
  ('658a311b-7998-4b08-90df-184d92f15a80', 'phosphorus', 0.41, 'as-fed');

-- DARF — Puppy (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-voor-de-pup-kvv-classic',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 199 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'ed1d0854-6fa5-4972-a1fd-f6590836a4e8';
delete from public.recipe_nutrition where recipe_version_id = 'ed1d0854-6fa5-4972-a1fd-f6590836a4e8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ed1d0854-6fa5-4972-a1fd-f6590836a4e8', 'protein', 18, 'as-fed'),
  ('ed1d0854-6fa5-4972-a1fd-f6590836a4e8', 'fat', 14, 'as-fed'),
  ('ed1d0854-6fa5-4972-a1fd-f6590836a4e8', 'fiber', 3, 'as-fed'),
  ('ed1d0854-6fa5-4972-a1fd-f6590836a4e8', 'ash', 1.7, 'as-fed'),
  ('ed1d0854-6fa5-4972-a1fd-f6590836a4e8', 'moisture', 63, 'as-fed'),
  ('ed1d0854-6fa5-4972-a1fd-f6590836a4e8', 'kcal', 199, 'as-fed'),
  ('ed1d0854-6fa5-4972-a1fd-f6590836a4e8', 'calcium', 0.48, 'as-fed'),
  ('ed1d0854-6fa5-4972-a1fd-f6590836a4e8', 'phosphorus', 0.39, 'as-fed');

-- DARF — Puppy Small (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-puppy-small-classic',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 199 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '934f9e72-a0d5-42d1-b0f8-ba210e372d02';
delete from public.recipe_nutrition where recipe_version_id = '934f9e72-a0d5-42d1-b0f8-ba210e372d02';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('934f9e72-a0d5-42d1-b0f8-ba210e372d02', 'protein', 17.7, 'as-fed'),
  ('934f9e72-a0d5-42d1-b0f8-ba210e372d02', 'fat', 14.3, 'as-fed'),
  ('934f9e72-a0d5-42d1-b0f8-ba210e372d02', 'fiber', 3, 'as-fed'),
  ('934f9e72-a0d5-42d1-b0f8-ba210e372d02', 'ash', 1.7, 'as-fed'),
  ('934f9e72-a0d5-42d1-b0f8-ba210e372d02', 'moisture', 63, 'as-fed'),
  ('934f9e72-a0d5-42d1-b0f8-ba210e372d02', 'kcal', 199, 'as-fed'),
  ('934f9e72-a0d5-42d1-b0f8-ba210e372d02', 'calcium', 0.48, 'as-fed'),
  ('934f9e72-a0d5-42d1-b0f8-ba210e372d02', 'phosphorus', 0.39, 'as-fed');

-- DARF — Small (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-small-classic',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 185 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '637f71c3-0013-4bee-9d37-dff68fd71ccf';
delete from public.recipe_nutrition where recipe_version_id = '637f71c3-0013-4bee-9d37-dff68fd71ccf';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('637f71c3-0013-4bee-9d37-dff68fd71ccf', 'protein', 18, 'as-fed'),
  ('637f71c3-0013-4bee-9d37-dff68fd71ccf', 'fat', 13, 'as-fed'),
  ('637f71c3-0013-4bee-9d37-dff68fd71ccf', 'fiber', 2, 'as-fed'),
  ('637f71c3-0013-4bee-9d37-dff68fd71ccf', 'ash', 2.5, 'as-fed'),
  ('637f71c3-0013-4bee-9d37-dff68fd71ccf', 'moisture', 69, 'as-fed'),
  ('637f71c3-0013-4bee-9d37-dff68fd71ccf', 'kcal', 185, 'as-fed'),
  ('637f71c3-0013-4bee-9d37-dff68fd71ccf', 'calcium', 0.9, 'as-fed'),
  ('637f71c3-0013-4bee-9d37-dff68fd71ccf', 'phosphorus', 0.48, 'as-fed');

-- DARF — Vol Active (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-vol-active-4-kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 462 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '5a608a58-1c18-48af-beb0-c435602fadae';
delete from public.recipe_nutrition where recipe_version_id = '5a608a58-1c18-48af-beb0-c435602fadae';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5a608a58-1c18-48af-beb0-c435602fadae', 'protein', 30, 'as-fed'),
  ('5a608a58-1c18-48af-beb0-c435602fadae', 'fat', 15, 'as-fed'),
  ('5a608a58-1c18-48af-beb0-c435602fadae', 'fiber', 2, 'as-fed'),
  ('5a608a58-1c18-48af-beb0-c435602fadae', 'ash', 6.2, 'as-fed'),
  ('5a608a58-1c18-48af-beb0-c435602fadae', 'moisture', 8, 'as-fed'),
  ('5a608a58-1c18-48af-beb0-c435602fadae', 'kcal', 462, 'as-fed'),
  ('5a608a58-1c18-48af-beb0-c435602fadae', 'calcium', 1.25, 'as-fed'),
  ('5a608a58-1c18-48af-beb0-c435602fadae', 'phosphorus', 0.75, 'as-fed');

-- DARF — Vol Insect (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-vol-insect-4-kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 396 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '0bd1f379-7080-471a-8e7e-f2796aaa096a';
delete from public.recipe_nutrition where recipe_version_id = '0bd1f379-7080-471a-8e7e-f2796aaa096a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0bd1f379-7080-471a-8e7e-f2796aaa096a', 'protein', 23, 'as-fed'),
  ('0bd1f379-7080-471a-8e7e-f2796aaa096a', 'fat', 10, 'as-fed'),
  ('0bd1f379-7080-471a-8e7e-f2796aaa096a', 'fiber', 2, 'as-fed'),
  ('0bd1f379-7080-471a-8e7e-f2796aaa096a', 'ash', 4, 'as-fed'),
  ('0bd1f379-7080-471a-8e7e-f2796aaa096a', 'moisture', 5, 'as-fed'),
  ('0bd1f379-7080-471a-8e7e-f2796aaa096a', 'kcal', 396, 'as-fed'),
  ('0bd1f379-7080-471a-8e7e-f2796aaa096a', 'calcium', 0.8, 'as-fed'),
  ('0bd1f379-7080-471a-8e7e-f2796aaa096a', 'phosphorus', 0.4, 'as-fed');

-- DARF — Vol Kalkoen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-vol-kalkoen-4-kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 415 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '0808178e-f057-4c6f-bd84-d4c69aa75a72';
delete from public.recipe_nutrition where recipe_version_id = '0808178e-f057-4c6f-bd84-d4c69aa75a72';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0808178e-f057-4c6f-bd84-d4c69aa75a72', 'protein', 25, 'as-fed'),
  ('0808178e-f057-4c6f-bd84-d4c69aa75a72', 'fat', 14, 'as-fed'),
  ('0808178e-f057-4c6f-bd84-d4c69aa75a72', 'fiber', 6, 'as-fed'),
  ('0808178e-f057-4c6f-bd84-d4c69aa75a72', 'ash', 7, 'as-fed'),
  ('0808178e-f057-4c6f-bd84-d4c69aa75a72', 'moisture', 5, 'as-fed'),
  ('0808178e-f057-4c6f-bd84-d4c69aa75a72', 'kcal', 415, 'as-fed'),
  ('0808178e-f057-4c6f-bd84-d4c69aa75a72', 'calcium', 1.5, 'as-fed'),
  ('0808178e-f057-4c6f-bd84-d4c69aa75a72', 'phosphorus', 1, 'as-fed');

-- DARF — Vol Lam (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-vol-lam-4-kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 394 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'ed7c70e7-66f9-4452-bd3c-29c4bfa40d0d';
delete from public.recipe_nutrition where recipe_version_id = 'ed7c70e7-66f9-4452-bd3c-29c4bfa40d0d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ed7c70e7-66f9-4452-bd3c-29c4bfa40d0d', 'protein', 25, 'as-fed'),
  ('ed7c70e7-66f9-4452-bd3c-29c4bfa40d0d', 'fat', 10, 'as-fed'),
  ('ed7c70e7-66f9-4452-bd3c-29c4bfa40d0d', 'fiber', 2, 'as-fed'),
  ('ed7c70e7-66f9-4452-bd3c-29c4bfa40d0d', 'ash', 6, 'as-fed'),
  ('ed7c70e7-66f9-4452-bd3c-29c4bfa40d0d', 'moisture', 6, 'as-fed'),
  ('ed7c70e7-66f9-4452-bd3c-29c4bfa40d0d', 'kcal', 394, 'as-fed'),
  ('ed7c70e7-66f9-4452-bd3c-29c4bfa40d0d', 'calcium', 1.3, 'as-fed'),
  ('ed7c70e7-66f9-4452-bd3c-29c4bfa40d0d', 'phosphorus', 0.75, 'as-fed');

-- DARF — Vol Light (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-vol-light-4-kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'In het analyseblok staat de eerste waarde abusievelijk als ''Ruw vet 20%'' in plaats van ''Ruw eiwit 20%''; de 14-kg-variant van hetzelfde product vermeldt ''Ruw eiwit 20%''. Als eiwit overgenomen. Energie staat op de bron als 292 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '7f45ffd1-36ff-4c6e-bddc-f632d45758f6';
delete from public.recipe_nutrition where recipe_version_id = '7f45ffd1-36ff-4c6e-bddc-f632d45758f6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7f45ffd1-36ff-4c6e-bddc-f632d45758f6', 'protein', 20, 'as-fed'),
  ('7f45ffd1-36ff-4c6e-bddc-f632d45758f6', 'fat', 7, 'as-fed'),
  ('7f45ffd1-36ff-4c6e-bddc-f632d45758f6', 'fiber', 3, 'as-fed'),
  ('7f45ffd1-36ff-4c6e-bddc-f632d45758f6', 'ash', 7, 'as-fed'),
  ('7f45ffd1-36ff-4c6e-bddc-f632d45758f6', 'moisture', 6, 'as-fed'),
  ('7f45ffd1-36ff-4c6e-bddc-f632d45758f6', 'kcal', 292, 'as-fed'),
  ('7f45ffd1-36ff-4c6e-bddc-f632d45758f6', 'calcium', 1.35, 'as-fed'),
  ('7f45ffd1-36ff-4c6e-bddc-f632d45758f6', 'phosphorus', 0.78, 'as-fed');

-- DARF — Vol Noordzeevis (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-vol-noordzeevis-4-kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 396 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '4a27213f-d31a-4394-9725-12fab9df127b';
delete from public.recipe_nutrition where recipe_version_id = '4a27213f-d31a-4394-9725-12fab9df127b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4a27213f-d31a-4394-9725-12fab9df127b', 'protein', 25, 'as-fed'),
  ('4a27213f-d31a-4394-9725-12fab9df127b', 'fat', 10, 'as-fed'),
  ('4a27213f-d31a-4394-9725-12fab9df127b', 'fiber', 2.4, 'as-fed'),
  ('4a27213f-d31a-4394-9725-12fab9df127b', 'ash', 5.9, 'as-fed'),
  ('4a27213f-d31a-4394-9725-12fab9df127b', 'moisture', 7, 'as-fed'),
  ('4a27213f-d31a-4394-9725-12fab9df127b', 'kcal', 396, 'as-fed'),
  ('4a27213f-d31a-4394-9725-12fab9df127b', 'calcium', 1.3, 'as-fed'),
  ('4a27213f-d31a-4394-9725-12fab9df127b', 'phosphorus', 0.75, 'as-fed');

-- DARF — Vol Pup (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-vol-pup-4-kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'In het analyseblok staat de eerste waarde abusievelijk als ''Ruw vet 28%'' in plaats van ''Ruw eiwit 28%''; de 14-kg-variant van hetzelfde product vermeldt ''Ruw Eiwit 28%''. Als eiwit overgenomen. Energie staat op de bron als 462 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '87a7d7b2-a301-4bc0-996f-d0055639e067';
delete from public.recipe_nutrition where recipe_version_id = '87a7d7b2-a301-4bc0-996f-d0055639e067';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('87a7d7b2-a301-4bc0-996f-d0055639e067', 'protein', 28, 'as-fed'),
  ('87a7d7b2-a301-4bc0-996f-d0055639e067', 'fat', 15, 'as-fed'),
  ('87a7d7b2-a301-4bc0-996f-d0055639e067', 'fiber', 3, 'as-fed'),
  ('87a7d7b2-a301-4bc0-996f-d0055639e067', 'ash', 5, 'as-fed'),
  ('87a7d7b2-a301-4bc0-996f-d0055639e067', 'moisture', 5, 'as-fed'),
  ('87a7d7b2-a301-4bc0-996f-d0055639e067', 'kcal', 462, 'as-fed'),
  ('87a7d7b2-a301-4bc0-996f-d0055639e067', 'calcium', 1, 'as-fed'),
  ('87a7d7b2-a301-4bc0-996f-d0055639e067', 'phosphorus', 0.62, 'as-fed');

-- DARF — Vol Regular (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-vol-regular-4-kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 395 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '2315d219-b139-4040-be1e-9172eac4722f';
delete from public.recipe_nutrition where recipe_version_id = '2315d219-b139-4040-be1e-9172eac4722f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2315d219-b139-4040-be1e-9172eac4722f', 'protein', 24, 'as-fed'),
  ('2315d219-b139-4040-be1e-9172eac4722f', 'fat', 14, 'as-fed'),
  ('2315d219-b139-4040-be1e-9172eac4722f', 'fiber', 3, 'as-fed'),
  ('2315d219-b139-4040-be1e-9172eac4722f', 'ash', 7.2, 'as-fed'),
  ('2315d219-b139-4040-be1e-9172eac4722f', 'moisture', 4, 'as-fed'),
  ('2315d219-b139-4040-be1e-9172eac4722f', 'kcal', 395, 'as-fed'),
  ('2315d219-b139-4040-be1e-9172eac4722f', 'calcium', 1.32, 'as-fed'),
  ('2315d219-b139-4040-be1e-9172eac4722f', 'phosphorus', 0.8, 'as-fed');

-- DARF — Vol Regular Mini (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-vol-regular-mini-4-kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'In het zichtbare analyseblok staat voor ruwe celstof een beschadigde waarde '', ,0''; de productdata op dezelfde pagina vermeldt 3,0% ruwe celstof (identiek aan Vol Regular). Als 3,0 overgenomen. Energie staat op de bron als 395 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '4ccc9472-135b-4418-b0cf-43d9fef7d5eb';
delete from public.recipe_nutrition where recipe_version_id = '4ccc9472-135b-4418-b0cf-43d9fef7d5eb';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4ccc9472-135b-4418-b0cf-43d9fef7d5eb', 'protein', 24, 'as-fed'),
  ('4ccc9472-135b-4418-b0cf-43d9fef7d5eb', 'fat', 14, 'as-fed'),
  ('4ccc9472-135b-4418-b0cf-43d9fef7d5eb', 'fiber', 3, 'as-fed'),
  ('4ccc9472-135b-4418-b0cf-43d9fef7d5eb', 'ash', 7.2, 'as-fed'),
  ('4ccc9472-135b-4418-b0cf-43d9fef7d5eb', 'moisture', 4, 'as-fed'),
  ('4ccc9472-135b-4418-b0cf-43d9fef7d5eb', 'kcal', 395, 'as-fed'),
  ('4ccc9472-135b-4418-b0cf-43d9fef7d5eb', 'calcium', 1.32, 'as-fed'),
  ('4ccc9472-135b-4418-b0cf-43d9fef7d5eb', 'phosphorus', 0.8, 'as-fed');

-- DARF — Vol Wild (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-vol-wild-4-kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 395 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '1d9fe39d-4451-41b1-ad3d-6c3487a0bce6';
delete from public.recipe_nutrition where recipe_version_id = '1d9fe39d-4451-41b1-ad3d-6c3487a0bce6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1d9fe39d-4451-41b1-ad3d-6c3487a0bce6', 'protein', 26, 'as-fed'),
  ('1d9fe39d-4451-41b1-ad3d-6c3487a0bce6', 'fat', 11, 'as-fed'),
  ('1d9fe39d-4451-41b1-ad3d-6c3487a0bce6', 'fiber', 2, 'as-fed'),
  ('1d9fe39d-4451-41b1-ad3d-6c3487a0bce6', 'ash', 6, 'as-fed'),
  ('1d9fe39d-4451-41b1-ad3d-6c3487a0bce6', 'moisture', 6, 'as-fed'),
  ('1d9fe39d-4451-41b1-ad3d-6c3487a0bce6', 'kcal', 395, 'as-fed'),
  ('1d9fe39d-4451-41b1-ad3d-6c3487a0bce6', 'calcium', 1.2, 'as-fed'),
  ('1d9fe39d-4451-41b1-ad3d-6c3487a0bce6', 'phosphorus', 0.75, 'as-fed');

-- DARF — Wild KVV (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-wild-kvv-10-x-1-kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 168 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'b2ffd8ff-8cab-47e0-bb1a-f3f3c0eb8a5b';
delete from public.recipe_nutrition where recipe_version_id = 'b2ffd8ff-8cab-47e0-bb1a-f3f3c0eb8a5b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b2ffd8ff-8cab-47e0-bb1a-f3f3c0eb8a5b', 'protein', 16.8, 'as-fed'),
  ('b2ffd8ff-8cab-47e0-bb1a-f3f3c0eb8a5b', 'fat', 10.6, 'as-fed'),
  ('b2ffd8ff-8cab-47e0-bb1a-f3f3c0eb8a5b', 'fiber', 0.5, 'as-fed'),
  ('b2ffd8ff-8cab-47e0-bb1a-f3f3c0eb8a5b', 'ash', 3.7, 'as-fed'),
  ('b2ffd8ff-8cab-47e0-bb1a-f3f3c0eb8a5b', 'moisture', 65, 'as-fed'),
  ('b2ffd8ff-8cab-47e0-bb1a-f3f3c0eb8a5b', 'kcal', 168, 'as-fed'),
  ('b2ffd8ff-8cab-47e0-bb1a-f3f3c0eb8a5b', 'calcium', 0.85, 'as-fed'),
  ('b2ffd8ff-8cab-47e0-bb1a-f3f3c0eb8a5b', 'phosphorus', 0.46, 'as-fed');

commit;
