begin;

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
       nutrition_note = 'Metaboliseerbare energie 872kcal/kg omgerekend naar 87,2 kcal/100 g (gedeeld door 10). EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '3b5cbbe7-e8f5-4b77-a0e4-678ca0b9638b';
delete from public.recipe_nutrition where recipe_version_id = '3b5cbbe7-e8f5-4b77-a0e4-678ca0b9638b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3b5cbbe7-e8f5-4b77-a0e4-678ca0b9638b', 'protein', 8.6, 'as-fed'),
  ('3b5cbbe7-e8f5-4b77-a0e4-678ca0b9638b', 'fat', 5.4, 'as-fed'),
  ('3b5cbbe7-e8f5-4b77-a0e4-678ca0b9638b', 'fiber', 1.1, 'as-fed'),
  ('3b5cbbe7-e8f5-4b77-a0e4-678ca0b9638b', 'ash', 2.2, 'as-fed'),
  ('3b5cbbe7-e8f5-4b77-a0e4-678ca0b9638b', 'moisture', 80, 'as-fed'),
  ('3b5cbbe7-e8f5-4b77-a0e4-678ca0b9638b', 'kcal', 87.2, 'as-fed'),
  ('3b5cbbe7-e8f5-4b77-a0e4-678ca0b9638b', 'calcium', 0.33, 'as-fed');

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

commit;
