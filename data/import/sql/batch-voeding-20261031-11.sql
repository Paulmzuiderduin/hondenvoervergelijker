begin;

-- Pedigree — Adult Maaltijdzakjes Proteïne+ Selectie in gelei – Kip en rund (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.pedigree.be/nl-be/products/pouch/pedigree-adult-maaltijdzakjes-proteine-selectie-gelei',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De Nederlandse productpagina vermeldt geen analyse; waarden overgenomen van de officiële Belgische Pedigree-pagina met dezelfde samenstelling. Analyse as-fed; kcal stond direct per 100 g vermeld. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '4fe4f75a-487b-4ec1-a2e7-d985eb64c334';
delete from public.recipe_nutrition where recipe_version_id = '4fe4f75a-487b-4ec1-a2e7-d985eb64c334';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4fe4f75a-487b-4ec1-a2e7-d985eb64c334', 'protein', 10.6, 'as-fed'),
  ('4fe4f75a-487b-4ec1-a2e7-d985eb64c334', 'fat', 4.3, 'as-fed'),
  ('4fe4f75a-487b-4ec1-a2e7-d985eb64c334', 'fiber', 1, 'as-fed'),
  ('4fe4f75a-487b-4ec1-a2e7-d985eb64c334', 'ash', 1.7, 'as-fed'),
  ('4fe4f75a-487b-4ec1-a2e7-d985eb64c334', 'moisture', 81.5, 'as-fed'),
  ('4fe4f75a-487b-4ec1-a2e7-d985eb64c334', 'kcal', 80, 'as-fed');

-- Pedigree — Adult Maaltijdzakjes Proteïne+ Selectie in gelei – Rund- en levermix (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.pedigree.be/nl-be/products/pouch/pedigree-adult-maaltijdzakjes-proteine-selectie-gelei',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De Nederlandse productpagina vermeldt geen analyse; waarden overgenomen van de officiële Belgische Pedigree-pagina met dezelfde samenstelling. Analyse as-fed; kcal stond direct per 100 g vermeld. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = 'd0fbe893-2983-4707-9e28-44939d7b95d7';
delete from public.recipe_nutrition where recipe_version_id = 'd0fbe893-2983-4707-9e28-44939d7b95d7';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d0fbe893-2983-4707-9e28-44939d7b95d7', 'protein', 10.6, 'as-fed'),
  ('d0fbe893-2983-4707-9e28-44939d7b95d7', 'fat', 4.3, 'as-fed'),
  ('d0fbe893-2983-4707-9e28-44939d7b95d7', 'fiber', 1, 'as-fed'),
  ('d0fbe893-2983-4707-9e28-44939d7b95d7', 'ash', 1.7, 'as-fed'),
  ('d0fbe893-2983-4707-9e28-44939d7b95d7', 'moisture', 81.5, 'as-fed'),
  ('d0fbe893-2983-4707-9e28-44939d7b95d7', 'kcal', 80, 'as-fed');

-- Pedigree — Droog Adult Gevogelte en Groenten (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.pedigree.nl/onze-producten/droogvoer/pedigree-adult-hondenbrokken-kip-en-groenten-hondenvoer-10-kg',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed; kcal stond direct per 100 g op de pagina. Vocht, calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = 'ddd2a0cc-714d-4463-abc0-61bdfbe714c5';
delete from public.recipe_nutrition where recipe_version_id = 'ddd2a0cc-714d-4463-abc0-61bdfbe714c5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ddd2a0cc-714d-4463-abc0-61bdfbe714c5', 'protein', 20, 'as-fed'),
  ('ddd2a0cc-714d-4463-abc0-61bdfbe714c5', 'fat', 9, 'as-fed'),
  ('ddd2a0cc-714d-4463-abc0-61bdfbe714c5', 'fiber', 2.8, 'as-fed'),
  ('ddd2a0cc-714d-4463-abc0-61bdfbe714c5', 'ash', 6.6, 'as-fed'),
  ('ddd2a0cc-714d-4463-abc0-61bdfbe714c5', 'kcal', 353, 'as-fed');

-- Pedigree — Droog Adult Mini Gevogelte en Groenten (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.pedigree.nl/onze-producten/droogvoer/pedigree-adult-mini-hondenbrokken-kip-en-groenten-hondenvoer-500-g',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed; kcal stond direct per 100 g op de pagina. Vocht, calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '8f6bbad5-1282-4912-b624-25f266fa7af4';
delete from public.recipe_nutrition where recipe_version_id = '8f6bbad5-1282-4912-b624-25f266fa7af4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8f6bbad5-1282-4912-b624-25f266fa7af4', 'protein', 20, 'as-fed'),
  ('8f6bbad5-1282-4912-b624-25f266fa7af4', 'fat', 9.1, 'as-fed'),
  ('8f6bbad5-1282-4912-b624-25f266fa7af4', 'fiber', 2.5, 'as-fed'),
  ('8f6bbad5-1282-4912-b624-25f266fa7af4', 'ash', 7, 'as-fed'),
  ('8f6bbad5-1282-4912-b624-25f266fa7af4', 'kcal', 354, 'as-fed');

-- Pedigree — Droog Adult Mini Rund en Groenten (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.pedigree.nl/onze-producten/droogvoer/pedigree-adult-mini-hondenbrokken-rund-en-groenten-hondenvoer-1-4-kg',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De opgegeven URL verwees naar de Maxi-variant; waarden overgenomen van de officiële Pedigree-pagina voor Mini met Rund en Groenten. Analyse as-fed; kcal stond direct per 100 g op de pagina. Vocht, calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = 'abf8ad51-a70e-46e2-b1ac-a45b1ea454dd';
delete from public.recipe_nutrition where recipe_version_id = 'abf8ad51-a70e-46e2-b1ac-a45b1ea454dd';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('abf8ad51-a70e-46e2-b1ac-a45b1ea454dd', 'protein', 20, 'as-fed'),
  ('abf8ad51-a70e-46e2-b1ac-a45b1ea454dd', 'fat', 9, 'as-fed'),
  ('abf8ad51-a70e-46e2-b1ac-a45b1ea454dd', 'fiber', 2.3, 'as-fed'),
  ('abf8ad51-a70e-46e2-b1ac-a45b1ea454dd', 'ash', 5.8, 'as-fed'),
  ('abf8ad51-a70e-46e2-b1ac-a45b1ea454dd', 'kcal', 359, 'as-fed');

-- Pedigree — Droog Adult Rund en Groenten (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.pedigree.nl/onze-producten/droogvoer/pedigree-adult-hondenbrokken-rund-en-groenten-hondenvoer-10-kg',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed; kcal stond direct per 100 g op de pagina. Vocht, calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '9bc50fef-cef2-459c-8c52-bae1735605b9';
delete from public.recipe_nutrition where recipe_version_id = '9bc50fef-cef2-459c-8c52-bae1735605b9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9bc50fef-cef2-459c-8c52-bae1735605b9', 'protein', 20, 'as-fed'),
  ('9bc50fef-cef2-459c-8c52-bae1735605b9', 'fat', 9, 'as-fed'),
  ('9bc50fef-cef2-459c-8c52-bae1735605b9', 'fiber', 2.8, 'as-fed'),
  ('9bc50fef-cef2-459c-8c52-bae1735605b9', 'ash', 6.6, 'as-fed'),
  ('9bc50fef-cef2-459c-8c52-bae1735605b9', 'kcal', 353, 'as-fed');

-- Pedigree — Droog Adult Vis en Groenten (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.pedigree.nl/products/droogvoer/pedigree-droog-adult-vis-en-groenten-12kg-volwassen',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed. De fabrikant vermeldt op deze pagina geen energiewaarde, vocht, calcium, fosfor of omega-3/6; deze zijn null gelaten.'
 where id = 'c21bcf2f-d753-4270-98af-cebc377d5e69';
delete from public.recipe_nutrition where recipe_version_id = 'c21bcf2f-d753-4270-98af-cebc377d5e69';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c21bcf2f-d753-4270-98af-cebc377d5e69', 'protein', 20, 'as-fed'),
  ('c21bcf2f-d753-4270-98af-cebc377d5e69', 'fat', 9.2, 'as-fed'),
  ('c21bcf2f-d753-4270-98af-cebc377d5e69', 'fiber', 2.8, 'as-fed'),
  ('c21bcf2f-d753-4270-98af-cebc377d5e69', 'ash', 6.8, 'as-fed');

-- Pedigree — Droog Junior Gevogelte en Groenten (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.pedigree.nl/onze-producten/droogvoer/pedigree-junior-hondenbrokken-kip-en-rijst-hondenvoer-10-kg',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed; kcal stond direct per 100 g op de pagina. Calcium en fosfor zijn overgenomen; vocht en omega-3/6 worden niet vermeld.'
 where id = 'ce47c718-7659-4519-a89b-7bc4f39ce34e';
delete from public.recipe_nutrition where recipe_version_id = 'ce47c718-7659-4519-a89b-7bc4f39ce34e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ce47c718-7659-4519-a89b-7bc4f39ce34e', 'protein', 25, 'as-fed'),
  ('ce47c718-7659-4519-a89b-7bc4f39ce34e', 'fat', 10, 'as-fed'),
  ('ce47c718-7659-4519-a89b-7bc4f39ce34e', 'fiber', 2.4, 'as-fed'),
  ('ce47c718-7659-4519-a89b-7bc4f39ce34e', 'ash', 8, 'as-fed'),
  ('ce47c718-7659-4519-a89b-7bc4f39ce34e', 'kcal', 359, 'as-fed'),
  ('ce47c718-7659-4519-a89b-7bc4f39ce34e', 'calcium', 1.4, 'as-fed'),
  ('ce47c718-7659-4519-a89b-7bc4f39ce34e', 'phosphorus', 0.9, 'as-fed');

-- Pedigree — Kip & Lam in Gelei – Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-kip-and-lam-in-gelei',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed; kcal stond direct per 100 g op de pagina. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = 'a3c57f2f-5dc3-4216-8caa-1508485956fc';
delete from public.recipe_nutrition where recipe_version_id = 'a3c57f2f-5dc3-4216-8caa-1508485956fc';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a3c57f2f-5dc3-4216-8caa-1508485956fc', 'protein', 8.5, 'as-fed'),
  ('a3c57f2f-5dc3-4216-8caa-1508485956fc', 'fat', 5.2, 'as-fed'),
  ('a3c57f2f-5dc3-4216-8caa-1508485956fc', 'fiber', 0.4, 'as-fed'),
  ('a3c57f2f-5dc3-4216-8caa-1508485956fc', 'ash', 2, 'as-fed'),
  ('a3c57f2f-5dc3-4216-8caa-1508485956fc', 'moisture', 83.2, 'as-fed'),
  ('a3c57f2f-5dc3-4216-8caa-1508485956fc', 'kcal', 81, 'as-fed');

-- Pedigree — Kip & Lam in Gelei – Lam- en levermix (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-kip-and-lam-in-gelei',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed; kcal stond direct per 100 g op de pagina. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '3fb51998-eb21-4e7e-98cd-0cbdafc66ab1';
delete from public.recipe_nutrition where recipe_version_id = '3fb51998-eb21-4e7e-98cd-0cbdafc66ab1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3fb51998-eb21-4e7e-98cd-0cbdafc66ab1', 'protein', 8.5, 'as-fed'),
  ('3fb51998-eb21-4e7e-98cd-0cbdafc66ab1', 'fat', 5.2, 'as-fed'),
  ('3fb51998-eb21-4e7e-98cd-0cbdafc66ab1', 'fiber', 0.4, 'as-fed'),
  ('3fb51998-eb21-4e7e-98cd-0cbdafc66ab1', 'ash', 2, 'as-fed'),
  ('3fb51998-eb21-4e7e-98cd-0cbdafc66ab1', 'moisture', 83.2, 'as-fed'),
  ('3fb51998-eb21-4e7e-98cd-0cbdafc66ab1', 'kcal', 81, 'as-fed');

-- Pedigree — Kip & Rund in Saus – Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-kip-and-rund-in-saus',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed; kcal stond direct per 100 g op de pagina. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '70ab333e-25f9-4692-9d49-7041f7ce92a4';
delete from public.recipe_nutrition where recipe_version_id = '70ab333e-25f9-4692-9d49-7041f7ce92a4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('70ab333e-25f9-4692-9d49-7041f7ce92a4', 'protein', 7.5, 'as-fed'),
  ('70ab333e-25f9-4692-9d49-7041f7ce92a4', 'fat', 5.2, 'as-fed'),
  ('70ab333e-25f9-4692-9d49-7041f7ce92a4', 'fiber', 0.4, 'as-fed'),
  ('70ab333e-25f9-4692-9d49-7041f7ce92a4', 'ash', 1.8, 'as-fed'),
  ('70ab333e-25f9-4692-9d49-7041f7ce92a4', 'moisture', 82, 'as-fed'),
  ('70ab333e-25f9-4692-9d49-7041f7ce92a4', 'kcal', 85, 'as-fed');

-- Pedigree — Kip & Rund in Saus – Rund- en levermix (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-kip-and-rund-in-saus',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed; kcal stond direct per 100 g op de pagina. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '1cdabf77-40b0-4a90-b215-1b1f6e1cfeca';
delete from public.recipe_nutrition where recipe_version_id = '1cdabf77-40b0-4a90-b215-1b1f6e1cfeca';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1cdabf77-40b0-4a90-b215-1b1f6e1cfeca', 'protein', 7.5, 'as-fed'),
  ('1cdabf77-40b0-4a90-b215-1b1f6e1cfeca', 'fat', 5.2, 'as-fed'),
  ('1cdabf77-40b0-4a90-b215-1b1f6e1cfeca', 'fiber', 0.4, 'as-fed'),
  ('1cdabf77-40b0-4a90-b215-1b1f6e1cfeca', 'ash', 1.8, 'as-fed'),
  ('1cdabf77-40b0-4a90-b215-1b1f6e1cfeca', 'moisture', 82, 'as-fed'),
  ('1cdabf77-40b0-4a90-b215-1b1f6e1cfeca', 'kcal', 85, 'as-fed');

-- Pedigree — Maaltijdzakjes Adult Gevogelte in Saus – Eend (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-gevogelte-in-saus',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed; kcal stond direct per 100 g op de pagina. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '98f33972-91f3-4127-aabd-11a913e30366';
delete from public.recipe_nutrition where recipe_version_id = '98f33972-91f3-4127-aabd-11a913e30366';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('98f33972-91f3-4127-aabd-11a913e30366', 'protein', 7.5, 'as-fed'),
  ('98f33972-91f3-4127-aabd-11a913e30366', 'fat', 5.2, 'as-fed'),
  ('98f33972-91f3-4127-aabd-11a913e30366', 'fiber', 0.4, 'as-fed'),
  ('98f33972-91f3-4127-aabd-11a913e30366', 'ash', 1.8, 'as-fed'),
  ('98f33972-91f3-4127-aabd-11a913e30366', 'moisture', 82, 'as-fed'),
  ('98f33972-91f3-4127-aabd-11a913e30366', 'kcal', 85, 'as-fed');

-- Pedigree — Maaltijdzakjes Adult Gevogelte in Saus – Gevogelte (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-gevogelte-in-saus',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed; kcal stond direct per 100 g op de pagina. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '8dcf04a0-9dc6-44c5-9648-290c8bbdfefe';
delete from public.recipe_nutrition where recipe_version_id = '8dcf04a0-9dc6-44c5-9648-290c8bbdfefe';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8dcf04a0-9dc6-44c5-9648-290c8bbdfefe', 'protein', 7.5, 'as-fed'),
  ('8dcf04a0-9dc6-44c5-9648-290c8bbdfefe', 'fat', 5.2, 'as-fed'),
  ('8dcf04a0-9dc6-44c5-9648-290c8bbdfefe', 'fiber', 0.4, 'as-fed'),
  ('8dcf04a0-9dc6-44c5-9648-290c8bbdfefe', 'ash', 1.8, 'as-fed'),
  ('8dcf04a0-9dc6-44c5-9648-290c8bbdfefe', 'moisture', 82, 'as-fed'),
  ('8dcf04a0-9dc6-44c5-9648-290c8bbdfefe', 'kcal', 85, 'as-fed');

-- Pedigree — Maaltijdzakjes Adult Gevogelte in Saus – Kalkoen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-gevogelte-in-saus',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed; kcal stond direct per 100 g op de pagina. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '8e240972-fd1a-4bfc-9052-e432b47163e9';
delete from public.recipe_nutrition where recipe_version_id = '8e240972-fd1a-4bfc-9052-e432b47163e9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8e240972-fd1a-4bfc-9052-e432b47163e9', 'protein', 7.5, 'as-fed'),
  ('8e240972-fd1a-4bfc-9052-e432b47163e9', 'fat', 5.2, 'as-fed'),
  ('8e240972-fd1a-4bfc-9052-e432b47163e9', 'fiber', 0.4, 'as-fed'),
  ('8e240972-fd1a-4bfc-9052-e432b47163e9', 'ash', 1.8, 'as-fed'),
  ('8e240972-fd1a-4bfc-9052-e432b47163e9', 'moisture', 82, 'as-fed'),
  ('8e240972-fd1a-4bfc-9052-e432b47163e9', 'kcal', 85, 'as-fed');

-- Pedigree — Maaltijdzakjes Adult Gevogelte in Saus – Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-gevogelte-in-saus',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed; kcal stond direct per 100 g op de pagina. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = 'f02556fe-4fce-467e-9a9e-26bb08859598';
delete from public.recipe_nutrition where recipe_version_id = 'f02556fe-4fce-467e-9a9e-26bb08859598';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f02556fe-4fce-467e-9a9e-26bb08859598', 'protein', 7.5, 'as-fed'),
  ('f02556fe-4fce-467e-9a9e-26bb08859598', 'fat', 5.2, 'as-fed'),
  ('f02556fe-4fce-467e-9a9e-26bb08859598', 'fiber', 0.4, 'as-fed'),
  ('f02556fe-4fce-467e-9a9e-26bb08859598', 'ash', 1.8, 'as-fed'),
  ('f02556fe-4fce-467e-9a9e-26bb08859598', 'moisture', 82, 'as-fed'),
  ('f02556fe-4fce-467e-9a9e-26bb08859598', 'kcal', 85, 'as-fed');

-- Pedigree — Maaltijdzakjes Adult Kip & Vis Selectie in Gelei – Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.pedigree.be/nl-be/products/pouch/pedigree-maaltijdzakjes-adult-kip-vis-selectie-gelei',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De Nederlandse productpagina vermeldt geen analyse; waarden overgenomen van de officiële Belgische Pedigree-pagina met dezelfde samenstelling. Analyse as-fed; kcal stond direct per 100 g vermeld. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '7126012a-7445-4b0b-ac19-e6b244f00394';
delete from public.recipe_nutrition where recipe_version_id = '7126012a-7445-4b0b-ac19-e6b244f00394';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7126012a-7445-4b0b-ac19-e6b244f00394', 'protein', 8.5, 'as-fed'),
  ('7126012a-7445-4b0b-ac19-e6b244f00394', 'fat', 4.2, 'as-fed'),
  ('7126012a-7445-4b0b-ac19-e6b244f00394', 'fiber', 0.4, 'as-fed'),
  ('7126012a-7445-4b0b-ac19-e6b244f00394', 'ash', 1.8, 'as-fed'),
  ('7126012a-7445-4b0b-ac19-e6b244f00394', 'moisture', 83, 'as-fed'),
  ('7126012a-7445-4b0b-ac19-e6b244f00394', 'kcal', 77, 'as-fed');

-- Pedigree — Maaltijdzakjes Adult Kip & Vis Selectie in Gelei – Vis (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.pedigree.be/nl-be/products/pouch/pedigree-maaltijdzakjes-adult-kip-vis-selectie-gelei',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De Nederlandse productpagina vermeldt geen analyse; waarden overgenomen van de officiële Belgische Pedigree-pagina met dezelfde samenstelling. Analyse as-fed; kcal stond direct per 100 g vermeld. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '6ded02b5-e96c-40ed-b67c-f16064da6f14';
delete from public.recipe_nutrition where recipe_version_id = '6ded02b5-e96c-40ed-b67c-f16064da6f14';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6ded02b5-e96c-40ed-b67c-f16064da6f14', 'protein', 8.5, 'as-fed'),
  ('6ded02b5-e96c-40ed-b67c-f16064da6f14', 'fat', 4.2, 'as-fed'),
  ('6ded02b5-e96c-40ed-b67c-f16064da6f14', 'fiber', 0.4, 'as-fed'),
  ('6ded02b5-e96c-40ed-b67c-f16064da6f14', 'ash', 1.8, 'as-fed'),
  ('6ded02b5-e96c-40ed-b67c-f16064da6f14', 'moisture', 83, 'as-fed'),
  ('6ded02b5-e96c-40ed-b67c-f16064da6f14', 'kcal', 77, 'as-fed');

-- Pedigree — Maaltijdzakjes Adult Mix Selectie in Gelei – Gevogelte (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-mix-selectie-in-gelei-12x100gr',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed; kcal stond direct per 100 g op de pagina. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '59e71f00-2136-437c-b71f-b488f1ac939c';
delete from public.recipe_nutrition where recipe_version_id = '59e71f00-2136-437c-b71f-b488f1ac939c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('59e71f00-2136-437c-b71f-b488f1ac939c', 'protein', 8.5, 'as-fed'),
  ('59e71f00-2136-437c-b71f-b488f1ac939c', 'fat', 5.2, 'as-fed'),
  ('59e71f00-2136-437c-b71f-b488f1ac939c', 'fiber', 0.4, 'as-fed'),
  ('59e71f00-2136-437c-b71f-b488f1ac939c', 'ash', 2, 'as-fed'),
  ('59e71f00-2136-437c-b71f-b488f1ac939c', 'moisture', 83.2, 'as-fed'),
  ('59e71f00-2136-437c-b71f-b488f1ac939c', 'kcal', 81, 'as-fed');

-- Pedigree — Maaltijdzakjes Adult Mix Selectie in Gelei – Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-mix-selectie-in-gelei-12x100gr',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed; kcal stond direct per 100 g op de pagina. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '1d500478-a26f-44c0-b5a8-d0bdf4fbda62';
delete from public.recipe_nutrition where recipe_version_id = '1d500478-a26f-44c0-b5a8-d0bdf4fbda62';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1d500478-a26f-44c0-b5a8-d0bdf4fbda62', 'protein', 8.5, 'as-fed'),
  ('1d500478-a26f-44c0-b5a8-d0bdf4fbda62', 'fat', 5.2, 'as-fed'),
  ('1d500478-a26f-44c0-b5a8-d0bdf4fbda62', 'fiber', 0.4, 'as-fed'),
  ('1d500478-a26f-44c0-b5a8-d0bdf4fbda62', 'ash', 2, 'as-fed'),
  ('1d500478-a26f-44c0-b5a8-d0bdf4fbda62', 'moisture', 83.2, 'as-fed'),
  ('1d500478-a26f-44c0-b5a8-d0bdf4fbda62', 'kcal', 81, 'as-fed');

-- Pedigree — Maaltijdzakjes Adult Mix Selectie in Gelei – Lam- en levermix (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-mix-selectie-in-gelei-12x100gr',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed; kcal stond direct per 100 g op de pagina. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '8df35c3b-aa3f-4ede-984d-f78084ed3453';
delete from public.recipe_nutrition where recipe_version_id = '8df35c3b-aa3f-4ede-984d-f78084ed3453';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8df35c3b-aa3f-4ede-984d-f78084ed3453', 'protein', 8.5, 'as-fed'),
  ('8df35c3b-aa3f-4ede-984d-f78084ed3453', 'fat', 5.2, 'as-fed'),
  ('8df35c3b-aa3f-4ede-984d-f78084ed3453', 'fiber', 0.4, 'as-fed'),
  ('8df35c3b-aa3f-4ede-984d-f78084ed3453', 'ash', 2, 'as-fed'),
  ('8df35c3b-aa3f-4ede-984d-f78084ed3453', 'moisture', 83.2, 'as-fed'),
  ('8df35c3b-aa3f-4ede-984d-f78084ed3453', 'kcal', 81, 'as-fed');

-- Pedigree — Maaltijdzakjes Adult Mix Selectie in Gelei – Rund- en levermix (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-mix-selectie-in-gelei-12x100gr',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed; kcal stond direct per 100 g op de pagina. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '1ab2596c-b1d5-4c67-848b-20e2350f605c';
delete from public.recipe_nutrition where recipe_version_id = '1ab2596c-b1d5-4c67-848b-20e2350f605c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1ab2596c-b1d5-4c67-848b-20e2350f605c', 'protein', 8.5, 'as-fed'),
  ('1ab2596c-b1d5-4c67-848b-20e2350f605c', 'fat', 5.2, 'as-fed'),
  ('1ab2596c-b1d5-4c67-848b-20e2350f605c', 'fiber', 0.4, 'as-fed'),
  ('1ab2596c-b1d5-4c67-848b-20e2350f605c', 'ash', 2, 'as-fed'),
  ('1ab2596c-b1d5-4c67-848b-20e2350f605c', 'moisture', 83.2, 'as-fed'),
  ('1ab2596c-b1d5-4c67-848b-20e2350f605c', 'kcal', 81, 'as-fed');

-- Pedigree — Maaltijdzakjes Adult Mix Selectie in Saus – Kalkoen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-mix-selectie-in-saus-80x100g',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed; kcal stond direct per 100 g op de pagina. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = 'a98c5d89-f88c-4eea-81ff-37bf16e753f2';
delete from public.recipe_nutrition where recipe_version_id = 'a98c5d89-f88c-4eea-81ff-37bf16e753f2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a98c5d89-f88c-4eea-81ff-37bf16e753f2', 'protein', 7.5, 'as-fed'),
  ('a98c5d89-f88c-4eea-81ff-37bf16e753f2', 'fat', 5.2, 'as-fed'),
  ('a98c5d89-f88c-4eea-81ff-37bf16e753f2', 'fiber', 0.4, 'as-fed'),
  ('a98c5d89-f88c-4eea-81ff-37bf16e753f2', 'ash', 1.8, 'as-fed'),
  ('a98c5d89-f88c-4eea-81ff-37bf16e753f2', 'moisture', 82, 'as-fed'),
  ('a98c5d89-f88c-4eea-81ff-37bf16e753f2', 'kcal', 85, 'as-fed');

-- Pedigree — Maaltijdzakjes Adult Mix Selectie in Saus – Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-mix-selectie-in-saus-80x100g',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed; kcal stond direct per 100 g op de pagina. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '23b3e57b-cc97-4a78-960f-b85fc1c1c019';
delete from public.recipe_nutrition where recipe_version_id = '23b3e57b-cc97-4a78-960f-b85fc1c1c019';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('23b3e57b-cc97-4a78-960f-b85fc1c1c019', 'protein', 7.5, 'as-fed'),
  ('23b3e57b-cc97-4a78-960f-b85fc1c1c019', 'fat', 5.2, 'as-fed'),
  ('23b3e57b-cc97-4a78-960f-b85fc1c1c019', 'fiber', 0.4, 'as-fed'),
  ('23b3e57b-cc97-4a78-960f-b85fc1c1c019', 'ash', 1.8, 'as-fed'),
  ('23b3e57b-cc97-4a78-960f-b85fc1c1c019', 'moisture', 82, 'as-fed'),
  ('23b3e57b-cc97-4a78-960f-b85fc1c1c019', 'kcal', 85, 'as-fed');

-- Pedigree — Maaltijdzakjes Adult Mix Selectie in Saus – Rund- en lammix (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-mix-selectie-in-saus-80x100g',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed; kcal stond direct per 100 g op de pagina. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '1e141d7f-ff55-4b45-8268-5a623d76c653';
delete from public.recipe_nutrition where recipe_version_id = '1e141d7f-ff55-4b45-8268-5a623d76c653';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1e141d7f-ff55-4b45-8268-5a623d76c653', 'protein', 7.5, 'as-fed'),
  ('1e141d7f-ff55-4b45-8268-5a623d76c653', 'fat', 5.2, 'as-fed'),
  ('1e141d7f-ff55-4b45-8268-5a623d76c653', 'fiber', 0.4, 'as-fed'),
  ('1e141d7f-ff55-4b45-8268-5a623d76c653', 'ash', 1.8, 'as-fed'),
  ('1e141d7f-ff55-4b45-8268-5a623d76c653', 'moisture', 82, 'as-fed'),
  ('1e141d7f-ff55-4b45-8268-5a623d76c653', 'kcal', 85, 'as-fed');

-- Pedigree — Maaltijdzakjes Adult Mix Selectie in Saus – Rund- en levermix (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-mix-selectie-in-saus-80x100g',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed; kcal stond direct per 100 g op de pagina. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '17374fa8-d266-4d36-a239-01dcca718d51';
delete from public.recipe_nutrition where recipe_version_id = '17374fa8-d266-4d36-a239-01dcca718d51';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('17374fa8-d266-4d36-a239-01dcca718d51', 'protein', 7.5, 'as-fed'),
  ('17374fa8-d266-4d36-a239-01dcca718d51', 'fat', 5.2, 'as-fed'),
  ('17374fa8-d266-4d36-a239-01dcca718d51', 'fiber', 0.4, 'as-fed'),
  ('17374fa8-d266-4d36-a239-01dcca718d51', 'ash', 1.8, 'as-fed'),
  ('17374fa8-d266-4d36-a239-01dcca718d51', 'moisture', 82, 'as-fed'),
  ('17374fa8-d266-4d36-a239-01dcca718d51', 'kcal', 85, 'as-fed');

-- Pedigree — Maaltijdzakjes Junior Mix Selectie in Gelei – Gevogelte (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-junior-mix-selectie-in-gelei',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed; calcium en fosfor zijn overgenomen. De fabrikant vermeldt op deze pagina geen energiewaarde en geen omega-3/6; deze zijn null gelaten.'
 where id = '84d8a5fd-b2b1-4d5c-bb20-9881e097d10e';
delete from public.recipe_nutrition where recipe_version_id = '84d8a5fd-b2b1-4d5c-bb20-9881e097d10e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('84d8a5fd-b2b1-4d5c-bb20-9881e097d10e', 'protein', 8.5, 'as-fed'),
  ('84d8a5fd-b2b1-4d5c-bb20-9881e097d10e', 'fat', 6, 'as-fed'),
  ('84d8a5fd-b2b1-4d5c-bb20-9881e097d10e', 'fiber', 0.3, 'as-fed'),
  ('84d8a5fd-b2b1-4d5c-bb20-9881e097d10e', 'ash', 2.3, 'as-fed'),
  ('84d8a5fd-b2b1-4d5c-bb20-9881e097d10e', 'moisture', 80.5, 'as-fed'),
  ('84d8a5fd-b2b1-4d5c-bb20-9881e097d10e', 'calcium', 0.4, 'as-fed'),
  ('84d8a5fd-b2b1-4d5c-bb20-9881e097d10e', 'phosphorus', 0.3, 'as-fed');

-- Pedigree — Maaltijdzakjes Junior Mix Selectie in Gelei – Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-junior-mix-selectie-in-gelei',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed; calcium en fosfor zijn overgenomen. De fabrikant vermeldt op deze pagina geen energiewaarde en geen omega-3/6; deze zijn null gelaten.'
 where id = 'fcd3980f-89e6-478b-9d11-ec3731d48c8e';
delete from public.recipe_nutrition where recipe_version_id = 'fcd3980f-89e6-478b-9d11-ec3731d48c8e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fcd3980f-89e6-478b-9d11-ec3731d48c8e', 'protein', 8.5, 'as-fed'),
  ('fcd3980f-89e6-478b-9d11-ec3731d48c8e', 'fat', 6, 'as-fed'),
  ('fcd3980f-89e6-478b-9d11-ec3731d48c8e', 'fiber', 0.3, 'as-fed'),
  ('fcd3980f-89e6-478b-9d11-ec3731d48c8e', 'ash', 2.3, 'as-fed'),
  ('fcd3980f-89e6-478b-9d11-ec3731d48c8e', 'moisture', 80.5, 'as-fed'),
  ('fcd3980f-89e6-478b-9d11-ec3731d48c8e', 'calcium', 0.4, 'as-fed'),
  ('fcd3980f-89e6-478b-9d11-ec3731d48c8e', 'phosphorus', 0.3, 'as-fed');

-- Pedigree — Maaltijdzakjes Junior Mix Selectie in Gelei – Lam- en levermix (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-junior-mix-selectie-in-gelei',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed; calcium en fosfor zijn overgenomen. De fabrikant vermeldt op deze pagina geen energiewaarde en geen omega-3/6; deze zijn null gelaten.'
 where id = 'e10a3141-ab18-4588-b6d1-3b922d4766e6';
delete from public.recipe_nutrition where recipe_version_id = 'e10a3141-ab18-4588-b6d1-3b922d4766e6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e10a3141-ab18-4588-b6d1-3b922d4766e6', 'protein', 8.5, 'as-fed'),
  ('e10a3141-ab18-4588-b6d1-3b922d4766e6', 'fat', 6, 'as-fed'),
  ('e10a3141-ab18-4588-b6d1-3b922d4766e6', 'fiber', 0.3, 'as-fed'),
  ('e10a3141-ab18-4588-b6d1-3b922d4766e6', 'ash', 2.3, 'as-fed'),
  ('e10a3141-ab18-4588-b6d1-3b922d4766e6', 'moisture', 80.5, 'as-fed'),
  ('e10a3141-ab18-4588-b6d1-3b922d4766e6', 'calcium', 0.4, 'as-fed'),
  ('e10a3141-ab18-4588-b6d1-3b922d4766e6', 'phosphorus', 0.3, 'as-fed');

-- Pedigree — Maaltijdzakjes Junior Mix Selectie in Gelei – Rund- en levermix (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-junior-mix-selectie-in-gelei',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed; calcium en fosfor zijn overgenomen. De fabrikant vermeldt op deze pagina geen energiewaarde en geen omega-3/6; deze zijn null gelaten.'
 where id = '9f810d9e-7742-4c01-810c-bdf79eec223b';
delete from public.recipe_nutrition where recipe_version_id = '9f810d9e-7742-4c01-810c-bdf79eec223b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9f810d9e-7742-4c01-810c-bdf79eec223b', 'protein', 8.5, 'as-fed'),
  ('9f810d9e-7742-4c01-810c-bdf79eec223b', 'fat', 6, 'as-fed'),
  ('9f810d9e-7742-4c01-810c-bdf79eec223b', 'fiber', 0.3, 'as-fed'),
  ('9f810d9e-7742-4c01-810c-bdf79eec223b', 'ash', 2.3, 'as-fed'),
  ('9f810d9e-7742-4c01-810c-bdf79eec223b', 'moisture', 80.5, 'as-fed'),
  ('9f810d9e-7742-4c01-810c-bdf79eec223b', 'calcium', 0.4, 'as-fed'),
  ('9f810d9e-7742-4c01-810c-bdf79eec223b', 'phosphorus', 0.3, 'as-fed');

-- Pedigree — Maaltijdzakjes Senior Mix Selectie in Gelei – Gevogelte (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-senior-mix-selectie-in-gelei',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed; kcal stond direct per 100 g op de pagina. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = 'e73cd40a-3e9e-4e49-856a-df6cb09d5b8c';
delete from public.recipe_nutrition where recipe_version_id = 'e73cd40a-3e9e-4e49-856a-df6cb09d5b8c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e73cd40a-3e9e-4e49-856a-df6cb09d5b8c', 'protein', 8.5, 'as-fed'),
  ('e73cd40a-3e9e-4e49-856a-df6cb09d5b8c', 'fat', 5.2, 'as-fed'),
  ('e73cd40a-3e9e-4e49-856a-df6cb09d5b8c', 'fiber', 0.4, 'as-fed'),
  ('e73cd40a-3e9e-4e49-856a-df6cb09d5b8c', 'ash', 2, 'as-fed'),
  ('e73cd40a-3e9e-4e49-856a-df6cb09d5b8c', 'moisture', 83.2, 'as-fed'),
  ('e73cd40a-3e9e-4e49-856a-df6cb09d5b8c', 'kcal', 85, 'as-fed');

-- Pedigree — Maaltijdzakjes Senior Mix Selectie in Gelei – Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-senior-mix-selectie-in-gelei',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed; kcal stond direct per 100 g op de pagina. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '638ae5a5-d6cf-4387-b302-780332db7973';
delete from public.recipe_nutrition where recipe_version_id = '638ae5a5-d6cf-4387-b302-780332db7973';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('638ae5a5-d6cf-4387-b302-780332db7973', 'protein', 8.5, 'as-fed'),
  ('638ae5a5-d6cf-4387-b302-780332db7973', 'fat', 5.2, 'as-fed'),
  ('638ae5a5-d6cf-4387-b302-780332db7973', 'fiber', 0.4, 'as-fed'),
  ('638ae5a5-d6cf-4387-b302-780332db7973', 'ash', 2, 'as-fed'),
  ('638ae5a5-d6cf-4387-b302-780332db7973', 'moisture', 83.2, 'as-fed'),
  ('638ae5a5-d6cf-4387-b302-780332db7973', 'kcal', 85, 'as-fed');

-- Pedigree — Maaltijdzakjes Senior Mix Selectie in Gelei – Lam- en levermix (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-senior-mix-selectie-in-gelei',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed; kcal stond direct per 100 g op de pagina. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = 'ff309571-d8b5-486d-860e-c4abbaa570c0';
delete from public.recipe_nutrition where recipe_version_id = 'ff309571-d8b5-486d-860e-c4abbaa570c0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ff309571-d8b5-486d-860e-c4abbaa570c0', 'protein', 8.5, 'as-fed'),
  ('ff309571-d8b5-486d-860e-c4abbaa570c0', 'fat', 5.2, 'as-fed'),
  ('ff309571-d8b5-486d-860e-c4abbaa570c0', 'fiber', 0.4, 'as-fed'),
  ('ff309571-d8b5-486d-860e-c4abbaa570c0', 'ash', 2, 'as-fed'),
  ('ff309571-d8b5-486d-860e-c4abbaa570c0', 'moisture', 83.2, 'as-fed'),
  ('ff309571-d8b5-486d-860e-c4abbaa570c0', 'kcal', 85, 'as-fed');

-- Pedigree — Maaltijdzakjes Senior Mix Selectie in Gelei – Rund- en levermix (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-senior-mix-selectie-in-gelei',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed; kcal stond direct per 100 g op de pagina. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '1c606752-b28b-47c7-8557-359e35a891a0';
delete from public.recipe_nutrition where recipe_version_id = '1c606752-b28b-47c7-8557-359e35a891a0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1c606752-b28b-47c7-8557-359e35a891a0', 'protein', 8.5, 'as-fed'),
  ('1c606752-b28b-47c7-8557-359e35a891a0', 'fat', 5.2, 'as-fed'),
  ('1c606752-b28b-47c7-8557-359e35a891a0', 'fiber', 0.4, 'as-fed'),
  ('1c606752-b28b-47c7-8557-359e35a891a0', 'ash', 2, 'as-fed'),
  ('1c606752-b28b-47c7-8557-359e35a891a0', 'moisture', 83.2, 'as-fed'),
  ('1c606752-b28b-47c7-8557-359e35a891a0', 'kcal', 85, 'as-fed');

-- Terra Canis — Alimentum Veterinarium Low Protein Kalf (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.terracanis.com/kalb-0510.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De fabrikant noemt de lijn op de bronpagina "AliVet Low Protein". Analyse as-fed. De fabrikant vermeldt de energie als 4,6 MJ/kg; omgerekend naar 109,9 kcal/100 g (1 kcal = 4,184 kJ). Calcium en fosfor zijn overgenomen; omega-3/6 worden niet vermeld.'
 where id = '4426e98a-7050-426e-869f-ddaa4bc6a93f';
delete from public.recipe_nutrition where recipe_version_id = '4426e98a-7050-426e-869f-ddaa4bc6a93f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4426e98a-7050-426e-869f-ddaa4bc6a93f', 'protein', 4.6, 'as-fed'),
  ('4426e98a-7050-426e-869f-ddaa4bc6a93f', 'fat', 9.4, 'as-fed'),
  ('4426e98a-7050-426e-869f-ddaa4bc6a93f', 'fiber', 0.8, 'as-fed'),
  ('4426e98a-7050-426e-869f-ddaa4bc6a93f', 'ash', 0.7, 'as-fed'),
  ('4426e98a-7050-426e-869f-ddaa4bc6a93f', 'moisture', 80.5, 'as-fed'),
  ('4426e98a-7050-426e-869f-ddaa4bc6a93f', 'kcal', 109.9, 'as-fed'),
  ('4426e98a-7050-426e-869f-ddaa4bc6a93f', 'calcium', 0.11, 'as-fed'),
  ('4426e98a-7050-426e-869f-ddaa4bc6a93f', 'phosphorus', 0.07, 'as-fed');

-- Terra Canis — Alimentum Veterinarium Low Protein Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.terracanis.com/huhn-5000.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De fabrikant noemt de lijn op de bronpagina "AliVet Low Protein". Analyse as-fed. De fabrikant vermeldt de energie als 4,2 MJ/kg; omgerekend naar 100,4 kcal/100 g (1 kcal = 4,184 kJ). Calcium en fosfor zijn overgenomen; omega-3/6 worden niet vermeld.'
 where id = '17bff68a-437a-4de3-afe8-5357e169e7d4';
delete from public.recipe_nutrition where recipe_version_id = '17bff68a-437a-4de3-afe8-5357e169e7d4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('17bff68a-437a-4de3-afe8-5357e169e7d4', 'protein', 4.9, 'as-fed'),
  ('17bff68a-437a-4de3-afe8-5357e169e7d4', 'fat', 8.3, 'as-fed'),
  ('17bff68a-437a-4de3-afe8-5357e169e7d4', 'fiber', 0.7, 'as-fed'),
  ('17bff68a-437a-4de3-afe8-5357e169e7d4', 'ash', 0.8, 'as-fed'),
  ('17bff68a-437a-4de3-afe8-5357e169e7d4', 'moisture', 81.7, 'as-fed'),
  ('17bff68a-437a-4de3-afe8-5357e169e7d4', 'kcal', 100.4, 'as-fed'),
  ('17bff68a-437a-4de3-afe8-5357e169e7d4', 'calcium', 0.12, 'as-fed'),
  ('17bff68a-437a-4de3-afe8-5357e169e7d4', 'phosphorus', 0.06, 'as-fed');

-- Terra Canis — Alimentum Veterinarium Low Protein Wild (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.terracanis.com/wild-0520.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De fabrikant noemt de lijn op de bronpagina "AliVet Low Protein". Analyse as-fed. De fabrikant vermeldt de energie als 4,8 MJ/kg; omgerekend naar 114,7 kcal/100 g (1 kcal = 4,184 kJ). Calcium en fosfor zijn overgenomen; omega-3/6 worden niet vermeld.'
 where id = '564bab31-3bf8-49b7-96f7-09f1917d534e';
delete from public.recipe_nutrition where recipe_version_id = '564bab31-3bf8-49b7-96f7-09f1917d534e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('564bab31-3bf8-49b7-96f7-09f1917d534e', 'protein', 4.2, 'as-fed'),
  ('564bab31-3bf8-49b7-96f7-09f1917d534e', 'fat', 7.8, 'as-fed'),
  ('564bab31-3bf8-49b7-96f7-09f1917d534e', 'fiber', 1.5, 'as-fed'),
  ('564bab31-3bf8-49b7-96f7-09f1917d534e', 'ash', 0.9, 'as-fed'),
  ('564bab31-3bf8-49b7-96f7-09f1917d534e', 'moisture', 80.9, 'as-fed'),
  ('564bab31-3bf8-49b7-96f7-09f1917d534e', 'kcal', 114.7, 'as-fed'),
  ('564bab31-3bf8-49b7-96f7-09f1917d534e', 'calcium', 0.12, 'as-fed'),
  ('564bab31-3bf8-49b7-96f7-09f1917d534e', 'phosphorus', 0.06, 'as-fed');

-- Terra Canis — Canireo Adult kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.terracanis.com/trockenfutter-huhn-1554.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed. De fabrikant vermeldt de energie als 15,4 MJ/kg; omgerekend naar 368,1 kcal/100 g (1 kcal = 4,184 kJ). Vocht wordt niet vermeld. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = 'b7e688e3-c755-4b86-a5dd-43d3728775fd';
delete from public.recipe_nutrition where recipe_version_id = 'b7e688e3-c755-4b86-a5dd-43d3728775fd';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b7e688e3-c755-4b86-a5dd-43d3728775fd', 'protein', 29.2, 'as-fed'),
  ('b7e688e3-c755-4b86-a5dd-43d3728775fd', 'fat', 13.3, 'as-fed'),
  ('b7e688e3-c755-4b86-a5dd-43d3728775fd', 'fiber', 2.9, 'as-fed'),
  ('b7e688e3-c755-4b86-a5dd-43d3728775fd', 'ash', 5.7, 'as-fed'),
  ('b7e688e3-c755-4b86-a5dd-43d3728775fd', 'kcal', 368.1, 'as-fed');

-- Terra Canis — Canireo Wild (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.terracanis.com/trockenfutter-wild-1553.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed. De fabrikant vermeldt de energie als 15,3 MJ/kg; omgerekend naar 365,7 kcal/100 g (1 kcal = 4,184 kJ). Vocht wordt niet vermeld. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '8fe8fcf8-a767-41fa-8aee-272318625209';
delete from public.recipe_nutrition where recipe_version_id = '8fe8fcf8-a767-41fa-8aee-272318625209';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8fe8fcf8-a767-41fa-8aee-272318625209', 'protein', 29.9, 'as-fed'),
  ('8fe8fcf8-a767-41fa-8aee-272318625209', 'fat', 11.9, 'as-fed'),
  ('8fe8fcf8-a767-41fa-8aee-272318625209', 'fiber', 2.6, 'as-fed'),
  ('8fe8fcf8-a767-41fa-8aee-272318625209', 'ash', 6.1, 'as-fed'),
  ('8fe8fcf8-a767-41fa-8aee-272318625209', 'kcal', 365.7, 'as-fed');

-- Terra Canis — Classic Kalkoen met Broccoli, peer & aardappelen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.terracanis.com/pute-mit-brokkoli-birne-und-kartoffel-1012.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed. De fabrikant vermeldt de energie als 4,0 MJ/kg; omgerekend naar 95,6 kcal/100 g (1 kcal = 4,184 kJ). Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '7d1fe85c-a8e1-499f-9b3c-68b90f5d47a0';
delete from public.recipe_nutrition where recipe_version_id = '7d1fe85c-a8e1-499f-9b3c-68b90f5d47a0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7d1fe85c-a8e1-499f-9b3c-68b90f5d47a0', 'protein', 9.1, 'as-fed'),
  ('7d1fe85c-a8e1-499f-9b3c-68b90f5d47a0', 'fat', 4.3, 'as-fed'),
  ('7d1fe85c-a8e1-499f-9b3c-68b90f5d47a0', 'fiber', 0.5, 'as-fed'),
  ('7d1fe85c-a8e1-499f-9b3c-68b90f5d47a0', 'ash', 1.1, 'as-fed'),
  ('7d1fe85c-a8e1-499f-9b3c-68b90f5d47a0', 'moisture', 77.4, 'as-fed'),
  ('7d1fe85c-a8e1-499f-9b3c-68b90f5d47a0', 'kcal', 95.6, 'as-fed');

-- Terra Canis — Classic Kip met amarant, tomaten & basilicum (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.terracanis.com/huhn-mit-tomate-amaranth-und-basilikum-1016.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed. De fabrikant vermeldt de energie als 4,3 MJ/kg; omgerekend naar 102,8 kcal/100 g (1 kcal = 4,184 kJ). Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '47f7e941-3cdf-406c-a13a-a4da32f5e2c1';
delete from public.recipe_nutrition where recipe_version_id = '47f7e941-3cdf-406c-a13a-a4da32f5e2c1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('47f7e941-3cdf-406c-a13a-a4da32f5e2c1', 'protein', 10.3, 'as-fed'),
  ('47f7e941-3cdf-406c-a13a-a4da32f5e2c1', 'fat', 4.8, 'as-fed'),
  ('47f7e941-3cdf-406c-a13a-a4da32f5e2c1', 'fiber', 0.9, 'as-fed'),
  ('47f7e941-3cdf-406c-a13a-a4da32f5e2c1', 'ash', 1.1, 'as-fed'),
  ('47f7e941-3cdf-406c-a13a-a4da32f5e2c1', 'moisture', 75.5, 'as-fed'),
  ('47f7e941-3cdf-406c-a13a-a4da32f5e2c1', 'kcal', 102.8, 'as-fed');

-- Terra Canis — Classic Konijn met Courgette, Amarant en Kervel (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.terracanis.com/kaninchen-mit-zucchini-amaranth-und-kerbel-1017.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed. De fabrikant vermeldt de energie als 3,8 MJ/kg; omgerekend naar 90,8 kcal/100 g (1 kcal = 4,184 kJ). Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '410f9af7-ef63-47ea-9d9c-936910ca0570';
delete from public.recipe_nutrition where recipe_version_id = '410f9af7-ef63-47ea-9d9c-936910ca0570';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('410f9af7-ef63-47ea-9d9c-936910ca0570', 'protein', 9.7, 'as-fed'),
  ('410f9af7-ef63-47ea-9d9c-936910ca0570', 'fat', 3.9, 'as-fed'),
  ('410f9af7-ef63-47ea-9d9c-936910ca0570', 'fiber', 0.8, 'as-fed'),
  ('410f9af7-ef63-47ea-9d9c-936910ca0570', 'ash', 1.4, 'as-fed'),
  ('410f9af7-ef63-47ea-9d9c-936910ca0570', 'moisture', 77.4, 'as-fed'),
  ('410f9af7-ef63-47ea-9d9c-936910ca0570', 'kcal', 90.8, 'as-fed');

-- Terra Canis — Classic Lam met courgette, gierst & dille (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.terracanis.com/lamm-mit-zucchini-hirse-und-dill-1014.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed. De fabrikant vermeldt de energie als 3,7 MJ/kg; omgerekend naar 88,4 kcal/100 g (1 kcal = 4,184 kJ). Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '4c74e1ad-4224-4ec0-b952-19ba470a719c';
delete from public.recipe_nutrition where recipe_version_id = '4c74e1ad-4224-4ec0-b952-19ba470a719c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4c74e1ad-4224-4ec0-b952-19ba470a719c', 'protein', 6.6, 'as-fed'),
  ('4c74e1ad-4224-4ec0-b952-19ba470a719c', 'fat', 4.4, 'as-fed'),
  ('4c74e1ad-4224-4ec0-b952-19ba470a719c', 'fiber', 1, 'as-fed'),
  ('4c74e1ad-4224-4ec0-b952-19ba470a719c', 'ash', 1.1, 'as-fed'),
  ('4c74e1ad-4224-4ec0-b952-19ba470a719c', 'moisture', 79.1, 'as-fed'),
  ('4c74e1ad-4224-4ec0-b952-19ba470a719c', 'kcal', 88.4, 'as-fed');

-- Terra Canis — Classic Paard met Amarant, Perzik & Rode Biet (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.terracanis.com/pferd-mit-amaranth-pfirsich-und-roter-bete-0311.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed. De fabrikant vermeldt de energie als 4,2 MJ/kg; omgerekend naar 100,4 kcal/100 g (1 kcal = 4,184 kJ). Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '9c28472e-1916-4f0d-864f-cb84b5342089';
delete from public.recipe_nutrition where recipe_version_id = '9c28472e-1916-4f0d-864f-cb84b5342089';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9c28472e-1916-4f0d-864f-cb84b5342089', 'protein', 10.1, 'as-fed'),
  ('9c28472e-1916-4f0d-864f-cb84b5342089', 'fat', 4.9, 'as-fed'),
  ('9c28472e-1916-4f0d-864f-cb84b5342089', 'fiber', 0.7, 'as-fed'),
  ('9c28472e-1916-4f0d-864f-cb84b5342089', 'ash', 1.3, 'as-fed'),
  ('9c28472e-1916-4f0d-864f-cb84b5342089', 'moisture', 76.5, 'as-fed'),
  ('9c28472e-1916-4f0d-864f-cb84b5342089', 'kcal', 100.4, 'as-fed');

-- Terra Canis — Classic Rund met wortel, appel & rijst (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.terracanis.com/rind-mit-karotte-apfel-und-naturreis-1011.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed. De fabrikant vermeldt de energie als 4,4 MJ/kg; omgerekend naar 105,2 kcal/100 g (1 kcal = 4,184 kJ). Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '6b3fde16-fe63-4b0d-bbe5-a19998d7f6af';
delete from public.recipe_nutrition where recipe_version_id = '6b3fde16-fe63-4b0d-bbe5-a19998d7f6af';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6b3fde16-fe63-4b0d-bbe5-a19998d7f6af', 'protein', 9, 'as-fed'),
  ('6b3fde16-fe63-4b0d-bbe5-a19998d7f6af', 'fat', 5.7, 'as-fed'),
  ('6b3fde16-fe63-4b0d-bbe5-a19998d7f6af', 'fiber', 0.6, 'as-fed'),
  ('6b3fde16-fe63-4b0d-bbe5-a19998d7f6af', 'ash', 1.2, 'as-fed'),
  ('6b3fde16-fe63-4b0d-bbe5-a19998d7f6af', 'moisture', 76.5, 'as-fed'),
  ('6b3fde16-fe63-4b0d-bbe5-a19998d7f6af', 'kcal', 105.2, 'as-fed');

-- Terra Canis — Classic Zalm met Gierst, Perzik en Kruiden (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.terracanis.com/lachs-mit-hirse-pfirsich-und-kraeutern-0301.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed. De fabrikant vermeldt de energie als 5,5 MJ/kg; omgerekend naar 131,5 kcal/100 g (1 kcal = 4,184 kJ). Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '86c2529a-48c3-4e22-b8d5-25646211a89a';
delete from public.recipe_nutrition where recipe_version_id = '86c2529a-48c3-4e22-b8d5-25646211a89a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('86c2529a-48c3-4e22-b8d5-25646211a89a', 'protein', 6.5, 'as-fed'),
  ('86c2529a-48c3-4e22-b8d5-25646211a89a', 'fat', 10.5, 'as-fed'),
  ('86c2529a-48c3-4e22-b8d5-25646211a89a', 'fiber', 0.2, 'as-fed'),
  ('86c2529a-48c3-4e22-b8d5-25646211a89a', 'ash', 0.8, 'as-fed'),
  ('86c2529a-48c3-4e22-b8d5-25646211a89a', 'moisture', 74.9, 'as-fed'),
  ('86c2529a-48c3-4e22-b8d5-25646211a89a', 'kcal', 131.5, 'as-fed');

-- Terra Canis — Derma Dieet Kip & Zalm (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.terracanis.com/huhn-und-lachs-sw10212.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed. De fabrikant vermeldt de energie als 3,8 MJ/kg; omgerekend naar 90,8 kcal/100 g (1 kcal = 4,184 kJ). Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = 'c4a25187-921f-4e67-b06a-b6ca487e0613';
delete from public.recipe_nutrition where recipe_version_id = 'c4a25187-921f-4e67-b06a-b6ca487e0613';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c4a25187-921f-4e67-b06a-b6ca487e0613', 'protein', 8.8, 'as-fed'),
  ('c4a25187-921f-4e67-b06a-b6ca487e0613', 'fat', 5.9, 'as-fed'),
  ('c4a25187-921f-4e67-b06a-b6ca487e0613', 'fiber', 0.7, 'as-fed'),
  ('c4a25187-921f-4e67-b06a-b6ca487e0613', 'ash', 1.3, 'as-fed'),
  ('c4a25187-921f-4e67-b06a-b6ca487e0613', 'moisture', 80.4, 'as-fed'),
  ('c4a25187-921f-4e67-b06a-b6ca487e0613', 'kcal', 90.8, 'as-fed');

-- Terra Canis — Derma Dieet Lam (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.terracanis.com/lamm-sw10217.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed. De fabrikant vermeldt de energie als 3,8 MJ/kg; omgerekend naar 90,8 kcal/100 g (1 kcal = 4,184 kJ). Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = 'a99321b0-38a0-4aef-bf26-b9fea5a06f7c';
delete from public.recipe_nutrition where recipe_version_id = 'a99321b0-38a0-4aef-bf26-b9fea5a06f7c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a99321b0-38a0-4aef-bf26-b9fea5a06f7c', 'protein', 8.8, 'as-fed'),
  ('a99321b0-38a0-4aef-bf26-b9fea5a06f7c', 'fat', 5.9, 'as-fed'),
  ('a99321b0-38a0-4aef-bf26-b9fea5a06f7c', 'fiber', 0.8, 'as-fed'),
  ('a99321b0-38a0-4aef-bf26-b9fea5a06f7c', 'ash', 1.1, 'as-fed'),
  ('a99321b0-38a0-4aef-bf26-b9fea5a06f7c', 'moisture', 80.4, 'as-fed'),
  ('a99321b0-38a0-4aef-bf26-b9fea5a06f7c', 'kcal', 90.8, 'as-fed');

-- Terra Canis — Graanvrij Eend met pompoen, aardbeien en vlierbloesem (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.terracanis.com/ente-mit-kuerbis-erdbeere-und-holunder-0002.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed. De fabrikant vermeldt de energie als 2,6 MJ/kg; omgerekend naar 62,1 kcal/100 g (1 kcal = 4,184 kJ). Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '4425d4b8-61ea-4697-bbdf-e1c3e1834f5f';
delete from public.recipe_nutrition where recipe_version_id = '4425d4b8-61ea-4697-bbdf-e1c3e1834f5f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4425d4b8-61ea-4697-bbdf-e1c3e1834f5f', 'protein', 7.5, 'as-fed'),
  ('4425d4b8-61ea-4697-bbdf-e1c3e1834f5f', 'fat', 3.4, 'as-fed'),
  ('4425d4b8-61ea-4697-bbdf-e1c3e1834f5f', 'fiber', 0.8, 'as-fed'),
  ('4425d4b8-61ea-4697-bbdf-e1c3e1834f5f', 'ash', 1.2, 'as-fed'),
  ('4425d4b8-61ea-4697-bbdf-e1c3e1834f5f', 'moisture', 83.7, 'as-fed'),
  ('4425d4b8-61ea-4697-bbdf-e1c3e1834f5f', 'kcal', 62.1, 'as-fed');

-- Terra Canis — Graanvrij Kalfsvlees met peterseliewortel, mango en rode bes (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.terracanis.com/kalb-mit-petersilienwurzel-mango-und-johannisbeere-1100.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed. De fabrikant vermeldt de energie als 3,6 MJ/kg; omgerekend naar 86 kcal/100 g (1 kcal = 4,184 kJ). Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = 'e843444e-4065-472b-981d-52d7b0a70bf8';
delete from public.recipe_nutrition where recipe_version_id = 'e843444e-4065-472b-981d-52d7b0a70bf8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e843444e-4065-472b-981d-52d7b0a70bf8', 'protein', 9.3, 'as-fed'),
  ('e843444e-4065-472b-981d-52d7b0a70bf8', 'fat', 5.6, 'as-fed'),
  ('e843444e-4065-472b-981d-52d7b0a70bf8', 'fiber', 0.7, 'as-fed'),
  ('e843444e-4065-472b-981d-52d7b0a70bf8', 'ash', 1.2, 'as-fed'),
  ('e843444e-4065-472b-981d-52d7b0a70bf8', 'moisture', 79.3, 'as-fed'),
  ('e843444e-4065-472b-981d-52d7b0a70bf8', 'kcal', 86, 'as-fed');

-- Terra Canis — Graanvrij Kalkoen met selderij, pompoen en waterkers (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.terracanis.com/pute-mit-sellerie-kuerbis-und-brunnenkresse-1032.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed. De fabrikant vermeldt de energie als 4,0 MJ/kg; omgerekend naar 95,6 kcal/100 g (1 kcal = 4,184 kJ). Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = 'ec187f0b-e45e-47cf-bdb7-8404e86faa2c';
delete from public.recipe_nutrition where recipe_version_id = 'ec187f0b-e45e-47cf-bdb7-8404e86faa2c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ec187f0b-e45e-47cf-bdb7-8404e86faa2c', 'protein', 10.1, 'as-fed'),
  ('ec187f0b-e45e-47cf-bdb7-8404e86faa2c', 'fat', 6.1, 'as-fed'),
  ('ec187f0b-e45e-47cf-bdb7-8404e86faa2c', 'fiber', 0.8, 'as-fed'),
  ('ec187f0b-e45e-47cf-bdb7-8404e86faa2c', 'ash', 1.2, 'as-fed'),
  ('ec187f0b-e45e-47cf-bdb7-8404e86faa2c', 'moisture', 79.1, 'as-fed'),
  ('ec187f0b-e45e-47cf-bdb7-8404e86faa2c', 'kcal', 95.6, 'as-fed');

-- Terra Canis — Graanvrij Kip met pastinaak, paardenbloem en bramen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.terracanis.com/huhn-mit-pastinake-brombeere-und-loewenzahn-1033.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed. De fabrikant vermeldt de energie als 3,5 MJ/kg; omgerekend naar 83,7 kcal/100 g (1 kcal = 4,184 kJ). Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '39efd3b9-ec14-4d45-94a8-aad69a419723';
delete from public.recipe_nutrition where recipe_version_id = '39efd3b9-ec14-4d45-94a8-aad69a419723';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('39efd3b9-ec14-4d45-94a8-aad69a419723', 'protein', 9.4, 'as-fed'),
  ('39efd3b9-ec14-4d45-94a8-aad69a419723', 'fat', 4.6, 'as-fed'),
  ('39efd3b9-ec14-4d45-94a8-aad69a419723', 'fiber', 0.8, 'as-fed'),
  ('39efd3b9-ec14-4d45-94a8-aad69a419723', 'ash', 1.2, 'as-fed'),
  ('39efd3b9-ec14-4d45-94a8-aad69a419723', 'moisture', 80.8, 'as-fed'),
  ('39efd3b9-ec14-4d45-94a8-aad69a419723', 'kcal', 83.7, 'as-fed');

-- Terra Canis — Graanvrij Konijn met courgette, abrikoos en bonenkruid (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.terracanis.com/kaninchen-mit-zucchini-aprikose-und-bohnenkraut-1039.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed. De fabrikant vermeldt de energie als 3,2 MJ/kg; omgerekend naar 76,5 kcal/100 g (1 kcal = 4,184 kJ). Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '6be29750-6055-4a28-a602-4745424fa117';
delete from public.recipe_nutrition where recipe_version_id = '6be29750-6055-4a28-a602-4745424fa117';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6be29750-6055-4a28-a602-4745424fa117', 'protein', 9, 'as-fed'),
  ('6be29750-6055-4a28-a602-4745424fa117', 'fat', 4.2, 'as-fed'),
  ('6be29750-6055-4a28-a602-4745424fa117', 'fiber', 0.8, 'as-fed'),
  ('6be29750-6055-4a28-a602-4745424fa117', 'ash', 1.3, 'as-fed'),
  ('6be29750-6055-4a28-a602-4745424fa117', 'moisture', 81.5, 'as-fed'),
  ('6be29750-6055-4a28-a602-4745424fa117', 'kcal', 76.5, 'as-fed');

-- Terra Canis — Graanvrij Lam met pompoen, pastinaak en passiebloem (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.terracanis.com/lamm-mit-kuerbis-pastinake-und-passionsblume-1036.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed. De fabrikant vermeldt de energie als 3,7 MJ/kg; omgerekend naar 88,4 kcal/100 g (1 kcal = 4,184 kJ). Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '57c40f18-4913-40c8-b4eb-86a493f989ff';
delete from public.recipe_nutrition where recipe_version_id = '57c40f18-4913-40c8-b4eb-86a493f989ff';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('57c40f18-4913-40c8-b4eb-86a493f989ff', 'protein', 7.3, 'as-fed'),
  ('57c40f18-4913-40c8-b4eb-86a493f989ff', 'fat', 5.7, 'as-fed'),
  ('57c40f18-4913-40c8-b4eb-86a493f989ff', 'fiber', 0.8, 'as-fed'),
  ('57c40f18-4913-40c8-b4eb-86a493f989ff', 'ash', 1.2, 'as-fed'),
  ('57c40f18-4913-40c8-b4eb-86a493f989ff', 'moisture', 80.1, 'as-fed'),
  ('57c40f18-4913-40c8-b4eb-86a493f989ff', 'kcal', 88.4, 'as-fed');

-- Terra Canis — Graanvrij Paardenvlees met koolraap, venkel en salie (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.terracanis.com/pferd-mit-steckruebe-fenchel-und-salbei-0109.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed. De fabrikant vermeldt de energie als 3,0 MJ/kg; omgerekend naar 71,7 kcal/100 g (1 kcal = 4,184 kJ). Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = 'a53f193f-5aa2-4a6e-b853-e2a2a13a16c0';
delete from public.recipe_nutrition where recipe_version_id = 'a53f193f-5aa2-4a6e-b853-e2a2a13a16c0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a53f193f-5aa2-4a6e-b853-e2a2a13a16c0', 'protein', 10.8, 'as-fed'),
  ('a53f193f-5aa2-4a6e-b853-e2a2a13a16c0', 'fat', 4.2, 'as-fed'),
  ('a53f193f-5aa2-4a6e-b853-e2a2a13a16c0', 'fiber', 0.5, 'as-fed'),
  ('a53f193f-5aa2-4a6e-b853-e2a2a13a16c0', 'ash', 1.1, 'as-fed'),
  ('a53f193f-5aa2-4a6e-b853-e2a2a13a16c0', 'moisture', 80.4, 'as-fed'),
  ('a53f193f-5aa2-4a6e-b853-e2a2a13a16c0', 'kcal', 71.7, 'as-fed');

-- Terra Canis — Graanvrij Rundvlees met courgette, pompoen en oregano (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.terracanis.com/rind-mit-zucchini-kuerbis-und-oregano-1031.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed. De fabrikant vermeldt de energie als 4,4 MJ/kg; omgerekend naar 105,2 kcal/100 g (1 kcal = 4,184 kJ). Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '7647f86d-3bc1-4ab4-9799-f40af67f43f0';
delete from public.recipe_nutrition where recipe_version_id = '7647f86d-3bc1-4ab4-9799-f40af67f43f0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7647f86d-3bc1-4ab4-9799-f40af67f43f0', 'protein', 9.2, 'as-fed'),
  ('7647f86d-3bc1-4ab4-9799-f40af67f43f0', 'fat', 7.5, 'as-fed'),
  ('7647f86d-3bc1-4ab4-9799-f40af67f43f0', 'fiber', 0.8, 'as-fed'),
  ('7647f86d-3bc1-4ab4-9799-f40af67f43f0', 'ash', 1.2, 'as-fed'),
  ('7647f86d-3bc1-4ab4-9799-f40af67f43f0', 'moisture', 78.6, 'as-fed'),
  ('7647f86d-3bc1-4ab4-9799-f40af67f43f0', 'kcal', 105.2, 'as-fed');

-- Terra Canis — Graanvrij Wild met appel en cranberries (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.terracanis.com/wild-mit-kartoffel-apfel-und-preiselbeere-1037.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed. De fabrikant vermeldt de energie als 3,3 MJ/kg; omgerekend naar 78,9 kcal/100 g (1 kcal = 4,184 kJ). Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = 'fc3a7b2e-da01-4d0e-8bb9-ac6f260771d6';
delete from public.recipe_nutrition where recipe_version_id = 'fc3a7b2e-da01-4d0e-8bb9-ac6f260771d6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fc3a7b2e-da01-4d0e-8bb9-ac6f260771d6', 'protein', 10, 'as-fed'),
  ('fc3a7b2e-da01-4d0e-8bb9-ac6f260771d6', 'fat', 4, 'as-fed'),
  ('fc3a7b2e-da01-4d0e-8bb9-ac6f260771d6', 'fiber', 0.8, 'as-fed'),
  ('fc3a7b2e-da01-4d0e-8bb9-ac6f260771d6', 'ash', 1.1, 'as-fed'),
  ('fc3a7b2e-da01-4d0e-8bb9-ac6f260771d6', 'moisture', 80.6, 'as-fed'),
  ('fc3a7b2e-da01-4d0e-8bb9-ac6f260771d6', 'kcal', 78.9, 'as-fed');

-- Terra Canis — Hypoallergeen Kangoeroe met pastinaak (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.terracanis.com/kaenguru-mit-pastinake-1042.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed. De fabrikant vermeldt de energie als 3,3 MJ/kg; omgerekend naar 78,9 kcal/100 g (1 kcal = 4,184 kJ). Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '26aeaa37-1b97-4522-a173-082a22a8071f';
delete from public.recipe_nutrition where recipe_version_id = '26aeaa37-1b97-4522-a173-082a22a8071f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('26aeaa37-1b97-4522-a173-082a22a8071f', 'protein', 10.7, 'as-fed'),
  ('26aeaa37-1b97-4522-a173-082a22a8071f', 'fat', 2.4, 'as-fed'),
  ('26aeaa37-1b97-4522-a173-082a22a8071f', 'fiber', 0.4, 'as-fed'),
  ('26aeaa37-1b97-4522-a173-082a22a8071f', 'ash', 1.1, 'as-fed'),
  ('26aeaa37-1b97-4522-a173-082a22a8071f', 'moisture', 79.2, 'as-fed'),
  ('26aeaa37-1b97-4522-a173-082a22a8071f', 'kcal', 78.9, 'as-fed');

-- Terra Canis — Hypoallergeen Paardenvlees met aardpeer (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.terracanis.com/pferd-mit-topinambur-1043.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed. De fabrikant vermeldt de energie als 3,9 MJ/kg; omgerekend naar 93,2 kcal/100 g (1 kcal = 4,184 kJ). Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = 'e7f9825b-2ade-442e-bd48-c1ab2bc5b07a';
delete from public.recipe_nutrition where recipe_version_id = 'e7f9825b-2ade-442e-bd48-c1ab2bc5b07a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e7f9825b-2ade-442e-bd48-c1ab2bc5b07a', 'protein', 10.5, 'as-fed'),
  ('e7f9825b-2ade-442e-bd48-c1ab2bc5b07a', 'fat', 4.2, 'as-fed'),
  ('e7f9825b-2ade-442e-bd48-c1ab2bc5b07a', 'fiber', 0.5, 'as-fed'),
  ('e7f9825b-2ade-442e-bd48-c1ab2bc5b07a', 'ash', 1.2, 'as-fed'),
  ('e7f9825b-2ade-442e-bd48-c1ab2bc5b07a', 'moisture', 77.8, 'as-fed'),
  ('e7f9825b-2ade-442e-bd48-c1ab2bc5b07a', 'kcal', 93.2, 'as-fed');

-- Terra Canis — Hypoallergeen Struisvogel met pastinaak (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.terracanis.com/strauss-mit-pastinake-1045.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed. De fabrikant vermeldt de energie als 3,6 MJ/kg; omgerekend naar 86 kcal/100 g (1 kcal = 4,184 kJ). Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '490d2e01-e0a2-4039-bea7-1ad3e551bd89';
delete from public.recipe_nutrition where recipe_version_id = '490d2e01-e0a2-4039-bea7-1ad3e551bd89';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('490d2e01-e0a2-4039-bea7-1ad3e551bd89', 'protein', 10.9, 'as-fed'),
  ('490d2e01-e0a2-4039-bea7-1ad3e551bd89', 'fat', 3.8, 'as-fed'),
  ('490d2e01-e0a2-4039-bea7-1ad3e551bd89', 'fiber', 0.3, 'as-fed'),
  ('490d2e01-e0a2-4039-bea7-1ad3e551bd89', 'ash', 1.2, 'as-fed'),
  ('490d2e01-e0a2-4039-bea7-1ad3e551bd89', 'moisture', 79.1, 'as-fed'),
  ('490d2e01-e0a2-4039-bea7-1ad3e551bd89', 'kcal', 86, 'as-fed');

-- Terra Canis — Puppy Gevogelte met pompoen, boekweit & bloempollen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.terracanis.com/huhn-mit-kuerbis-kamille-und-tomate-1052.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Let op: de bronpagina heet "Welpe Huhn mit Kürbis, Kamille und Tomate"; de clusternaam wijkt daarvan af. Waarden van de bronpagina overgenomen. Analyse as-fed. De fabrikant vermeldt de energie als 3,8 MJ/kg; omgerekend naar 90,8 kcal/100 g (1 kcal = 4,184 kJ). Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '5e02da22-8345-47f9-aba6-667b45a990b7';
delete from public.recipe_nutrition where recipe_version_id = '5e02da22-8345-47f9-aba6-667b45a990b7';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5e02da22-8345-47f9-aba6-667b45a990b7', 'protein', 8.7, 'as-fed'),
  ('5e02da22-8345-47f9-aba6-667b45a990b7', 'fat', 4.4, 'as-fed'),
  ('5e02da22-8345-47f9-aba6-667b45a990b7', 'fiber', 0.3, 'as-fed'),
  ('5e02da22-8345-47f9-aba6-667b45a990b7', 'ash', 2, 'as-fed'),
  ('5e02da22-8345-47f9-aba6-667b45a990b7', 'moisture', 78.3, 'as-fed'),
  ('5e02da22-8345-47f9-aba6-667b45a990b7', 'kcal', 90.8, 'as-fed');

-- Terra Canis — Puppy Lam met courgette, venkel & magere yoghurt (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.terracanis.com/lamm-mit-zucchini-fenchel-und-magerjoghurt-1053.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed. De fabrikant vermeldt de energie als 4,1 MJ/kg; omgerekend naar 98 kcal/100 g (1 kcal = 4,184 kJ). Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '8cb8d75d-0901-4462-99ab-72e2a6e12514';
delete from public.recipe_nutrition where recipe_version_id = '8cb8d75d-0901-4462-99ab-72e2a6e12514';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8cb8d75d-0901-4462-99ab-72e2a6e12514', 'protein', 7.9, 'as-fed'),
  ('8cb8d75d-0901-4462-99ab-72e2a6e12514', 'fat', 5.7, 'as-fed'),
  ('8cb8d75d-0901-4462-99ab-72e2a6e12514', 'fiber', 1.1, 'as-fed'),
  ('8cb8d75d-0901-4462-99ab-72e2a6e12514', 'ash', 1.5, 'as-fed'),
  ('8cb8d75d-0901-4462-99ab-72e2a6e12514', 'moisture', 77.3, 'as-fed'),
  ('8cb8d75d-0901-4462-99ab-72e2a6e12514', 'kcal', 98, 'as-fed');

-- Terra Canis — Puppy Rund met appel, wortelen & rozenbottel (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.terracanis.com/rind-mit-apfel-karotte-und-hagebutte-1051.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed. De fabrikant vermeldt de energie als 5,0 MJ/kg; omgerekend naar 119,5 kcal/100 g (1 kcal = 4,184 kJ). Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '21d9e213-b1f0-4885-8211-a7fe54f7ca0e';
delete from public.recipe_nutrition where recipe_version_id = '21d9e213-b1f0-4885-8211-a7fe54f7ca0e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('21d9e213-b1f0-4885-8211-a7fe54f7ca0e', 'protein', 10.4, 'as-fed'),
  ('21d9e213-b1f0-4885-8211-a7fe54f7ca0e', 'fat', 7.2, 'as-fed'),
  ('21d9e213-b1f0-4885-8211-a7fe54f7ca0e', 'fiber', 1.2, 'as-fed'),
  ('21d9e213-b1f0-4885-8211-a7fe54f7ca0e', 'ash', 1.8, 'as-fed'),
  ('21d9e213-b1f0-4885-8211-a7fe54f7ca0e', 'moisture', 73.1, 'as-fed'),
  ('21d9e213-b1f0-4885-8211-a7fe54f7ca0e', 'kcal', 119.5, 'as-fed');

-- Terra Canis — Senior Graanvrij Hertenvlees met tomaat, appel en kruiden (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.terracanis.com/wild-mit-tomate-apfel-und-gesundheitskraeutern-1067.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed. De fabrikant vermeldt de energie als 4,1 MJ/kg; omgerekend naar 98 kcal/100 g (1 kcal = 4,184 kJ). Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '7ad743c0-df2d-43cd-bcb4-9f131e22ed12';
delete from public.recipe_nutrition where recipe_version_id = '7ad743c0-df2d-43cd-bcb4-9f131e22ed12';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7ad743c0-df2d-43cd-bcb4-9f131e22ed12', 'protein', 10.6, 'as-fed'),
  ('7ad743c0-df2d-43cd-bcb4-9f131e22ed12', 'fat', 5.6, 'as-fed'),
  ('7ad743c0-df2d-43cd-bcb4-9f131e22ed12', 'fiber', 0.6, 'as-fed'),
  ('7ad743c0-df2d-43cd-bcb4-9f131e22ed12', 'ash', 1.3, 'as-fed'),
  ('7ad743c0-df2d-43cd-bcb4-9f131e22ed12', 'moisture', 77.8, 'as-fed'),
  ('7ad743c0-df2d-43cd-bcb4-9f131e22ed12', 'kcal', 98, 'as-fed');

-- Terra Canis — Senior Graanvrij Kip met komkommer, pompoen en kruiden (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.terracanis.com/huhn-mit-gurke-kuerbis-und-gesundheitskraeutern-1065.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed. De fabrikant vermeldt de energie als 2,9 MJ/kg; omgerekend naar 69,3 kcal/100 g (1 kcal = 4,184 kJ). Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = 'e8982822-293e-4d4d-a47e-e48582016206';
delete from public.recipe_nutrition where recipe_version_id = 'e8982822-293e-4d4d-a47e-e48582016206';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e8982822-293e-4d4d-a47e-e48582016206', 'protein', 8.3, 'as-fed'),
  ('e8982822-293e-4d4d-a47e-e48582016206', 'fat', 3.6, 'as-fed'),
  ('e8982822-293e-4d4d-a47e-e48582016206', 'fiber', 0.6, 'as-fed'),
  ('e8982822-293e-4d4d-a47e-e48582016206', 'ash', 1.2, 'as-fed'),
  ('e8982822-293e-4d4d-a47e-e48582016206', 'moisture', 79.4, 'as-fed'),
  ('e8982822-293e-4d4d-a47e-e48582016206', 'kcal', 69.3, 'as-fed');

-- Terra Canis — Senior Graanvrij Rundvlees met selderij, abrikoos en kruiden (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.terracanis.com/rind-mit-sellerie-aprikose-und-gesundheitskraeutern-1068.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analyse as-fed. De fabrikant vermeldt de energie als 4,3 MJ/kg; omgerekend naar 102,8 kcal/100 g (1 kcal = 4,184 kJ). Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = 'b82aeb7f-6121-4754-8677-77f5a81d276c';
delete from public.recipe_nutrition where recipe_version_id = 'b82aeb7f-6121-4754-8677-77f5a81d276c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b82aeb7f-6121-4754-8677-77f5a81d276c', 'protein', 9.2, 'as-fed'),
  ('b82aeb7f-6121-4754-8677-77f5a81d276c', 'fat', 6.6, 'as-fed'),
  ('b82aeb7f-6121-4754-8677-77f5a81d276c', 'fiber', 0.7, 'as-fed'),
  ('b82aeb7f-6121-4754-8677-77f5a81d276c', 'ash', 1.3, 'as-fed'),
  ('b82aeb7f-6121-4754-8677-77f5a81d276c', 'moisture', 78.1, 'as-fed'),
  ('b82aeb7f-6121-4754-8677-77f5a81d276c', 'kcal', 102.8, 'as-fed');

commit;
