begin;

-- Canagan — Dental (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/nl/hondenvoer/dental-droog-hondenvoer/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen overgenomen zoals de fabrikant ze op de pagina vermeldt. Kcal en vocht worden niet vermeld. Geen omrekening nodig.'
 where id = '04d3350c-bf9f-434c-8467-7e1a02521b2e';
delete from public.recipe_nutrition where recipe_version_id = '04d3350c-bf9f-434c-8467-7e1a02521b2e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('04d3350c-bf9f-434c-8467-7e1a02521b2e', 'protein', 33, 'as-fed'),
  ('04d3350c-bf9f-434c-8467-7e1a02521b2e', 'fat', 18, 'as-fed'),
  ('04d3350c-bf9f-434c-8467-7e1a02521b2e', 'fiber', 3, 'as-fed'),
  ('04d3350c-bf9f-434c-8467-7e1a02521b2e', 'ash', 7.5, 'as-fed'),
  ('04d3350c-bf9f-434c-8467-7e1a02521b2e', 'calcium', 1.2, 'as-fed'),
  ('04d3350c-bf9f-434c-8467-7e1a02521b2e', 'phosphorus', 0.9, 'as-fed'),
  ('04d3350c-bf9f-434c-8467-7e1a02521b2e', 'omega3', 0.48, 'as-fed'),
  ('04d3350c-bf9f-434c-8467-7e1a02521b2e', 'omega6', 3.04, 'as-fed');

-- Canagan — Dental Kleine Rassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/nl/hondenvoer/dental-kleine-rassen-droog-hondenvoer/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen overgenomen zoals de fabrikant ze op de pagina vermeldt. Kcal en vocht worden niet vermeld. Geen omrekening nodig.'
 where id = '5a4a7eec-211a-43e6-81ad-27037e2332c7';
delete from public.recipe_nutrition where recipe_version_id = '5a4a7eec-211a-43e6-81ad-27037e2332c7';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5a4a7eec-211a-43e6-81ad-27037e2332c7', 'protein', 33, 'as-fed'),
  ('5a4a7eec-211a-43e6-81ad-27037e2332c7', 'fat', 18, 'as-fed'),
  ('5a4a7eec-211a-43e6-81ad-27037e2332c7', 'fiber', 3, 'as-fed'),
  ('5a4a7eec-211a-43e6-81ad-27037e2332c7', 'ash', 7.5, 'as-fed'),
  ('5a4a7eec-211a-43e6-81ad-27037e2332c7', 'calcium', 1.2, 'as-fed'),
  ('5a4a7eec-211a-43e6-81ad-27037e2332c7', 'phosphorus', 0.9, 'as-fed'),
  ('5a4a7eec-211a-43e6-81ad-27037e2332c7', 'omega3', 0.48, 'as-fed'),
  ('5a4a7eec-211a-43e6-81ad-27037e2332c7', 'omega6', 3.04, 'as-fed');

-- Canagan — Diner met Kalkoen en Eend (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/nl/hondenvoer/diner-met-kalkoen-en-eend-nat-hondenvoer/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen overgenomen zoals de fabrikant ze op de pagina vermeldt. Kcal, calcium, fosfor, omega-3 en omega-6 worden niet vermeld. Geen omrekening nodig.'
 where id = '71872e35-2d19-4eb3-8840-e8e1041590c3';
delete from public.recipe_nutrition where recipe_version_id = '71872e35-2d19-4eb3-8840-e8e1041590c3';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('71872e35-2d19-4eb3-8840-e8e1041590c3', 'protein', 10.3, 'as-fed'),
  ('71872e35-2d19-4eb3-8840-e8e1041590c3', 'fat', 5.2, 'as-fed'),
  ('71872e35-2d19-4eb3-8840-e8e1041590c3', 'fiber', 0.5, 'as-fed'),
  ('71872e35-2d19-4eb3-8840-e8e1041590c3', 'ash', 2.7, 'as-fed'),
  ('71872e35-2d19-4eb3-8840-e8e1041590c3', 'moisture', 80, 'as-fed');

-- Canagan — Grasgevoerd Lam (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/nl/hondenvoer/grasgevoerd-lam-droog-hondenvoer/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen overgenomen zoals de fabrikant ze op de pagina vermeldt. Kcal wordt niet vermeld. Geen omrekening nodig.'
 where id = '462f0b10-824a-4706-bc86-30e42cd1deaf';
delete from public.recipe_nutrition where recipe_version_id = '462f0b10-824a-4706-bc86-30e42cd1deaf';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('462f0b10-824a-4706-bc86-30e42cd1deaf', 'protein', 31, 'as-fed'),
  ('462f0b10-824a-4706-bc86-30e42cd1deaf', 'fat', 16, 'as-fed'),
  ('462f0b10-824a-4706-bc86-30e42cd1deaf', 'fiber', 3, 'as-fed'),
  ('462f0b10-824a-4706-bc86-30e42cd1deaf', 'ash', 8, 'as-fed'),
  ('462f0b10-824a-4706-bc86-30e42cd1deaf', 'moisture', 8, 'as-fed'),
  ('462f0b10-824a-4706-bc86-30e42cd1deaf', 'calcium', 1.47, 'as-fed'),
  ('462f0b10-824a-4706-bc86-30e42cd1deaf', 'phosphorus', 1, 'as-fed'),
  ('462f0b10-824a-4706-bc86-30e42cd1deaf', 'omega3', 0.96, 'as-fed'),
  ('462f0b10-824a-4706-bc86-30e42cd1deaf', 'omega6', 0.8, 'as-fed');

-- Canagan — Hoogland Feestmaal (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/uk/dog-food/highland-feast-dry-dog-food/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Engelstalige bronpagina. Kcal stond direct als kcal/100 g op de pagina; geen omrekening nodig. Vocht wordt niet vermeld.'
 where id = 'e503cc90-4e19-4790-9a43-8170b5df6281';
delete from public.recipe_nutrition where recipe_version_id = 'e503cc90-4e19-4790-9a43-8170b5df6281';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e503cc90-4e19-4790-9a43-8170b5df6281', 'protein', 35, 'as-fed'),
  ('e503cc90-4e19-4790-9a43-8170b5df6281', 'fat', 19, 'as-fed'),
  ('e503cc90-4e19-4790-9a43-8170b5df6281', 'fiber', 3, 'as-fed'),
  ('e503cc90-4e19-4790-9a43-8170b5df6281', 'ash', 8, 'as-fed'),
  ('e503cc90-4e19-4790-9a43-8170b5df6281', 'kcal', 397, 'as-fed'),
  ('e503cc90-4e19-4790-9a43-8170b5df6281', 'calcium', 1.7, 'as-fed'),
  ('e503cc90-4e19-4790-9a43-8170b5df6281', 'phosphorus', 1, 'as-fed'),
  ('e503cc90-4e19-4790-9a43-8170b5df6281', 'omega3', 0.54, 'as-fed'),
  ('e503cc90-4e19-4790-9a43-8170b5df6281', 'omega6', 2.5, 'as-fed');

-- Canagan — Insect (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/uk/dog-food/insect-dry-dog-food/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Engelstalige bronpagina. Kcal stond direct als kcal/100 g op de pagina; geen omrekening nodig. Vocht wordt niet vermeld.'
 where id = '9aeaa096-5bc4-4ea9-aeee-f463187a209c';
delete from public.recipe_nutrition where recipe_version_id = '9aeaa096-5bc4-4ea9-aeee-f463187a209c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9aeaa096-5bc4-4ea9-aeee-f463187a209c', 'protein', 31, 'as-fed'),
  ('9aeaa096-5bc4-4ea9-aeee-f463187a209c', 'fat', 14, 'as-fed'),
  ('9aeaa096-5bc4-4ea9-aeee-f463187a209c', 'fiber', 5, 'as-fed'),
  ('9aeaa096-5bc4-4ea9-aeee-f463187a209c', 'ash', 8.5, 'as-fed'),
  ('9aeaa096-5bc4-4ea9-aeee-f463187a209c', 'kcal', 356, 'as-fed'),
  ('9aeaa096-5bc4-4ea9-aeee-f463187a209c', 'calcium', 1.1, 'as-fed'),
  ('9aeaa096-5bc4-4ea9-aeee-f463187a209c', 'phosphorus', 1, 'as-fed'),
  ('9aeaa096-5bc4-4ea9-aeee-f463187a209c', 'omega3', 0.3, 'as-fed'),
  ('9aeaa096-5bc4-4ea9-aeee-f463187a209c', 'omega6', 1.8, 'as-fed');

-- Canagan — Kip Hotpot (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/nl/hondenvoer/kip-hotpot-nat-hondenvoer/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen overgenomen zoals de fabrikant ze op de pagina vermeldt. Kcal, calcium, fosfor, omega-3 en omega-6 worden niet vermeld. Geen omrekening nodig.'
 where id = 'c65b3adb-5e3b-4db5-9e12-b4ef8821723b';
delete from public.recipe_nutrition where recipe_version_id = 'c65b3adb-5e3b-4db5-9e12-b4ef8821723b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c65b3adb-5e3b-4db5-9e12-b4ef8821723b', 'protein', 10.2, 'as-fed'),
  ('c65b3adb-5e3b-4db5-9e12-b4ef8821723b', 'fat', 5.1, 'as-fed'),
  ('c65b3adb-5e3b-4db5-9e12-b4ef8821723b', 'fiber', 0.5, 'as-fed'),
  ('c65b3adb-5e3b-4db5-9e12-b4ef8821723b', 'ash', 3, 'as-fed'),
  ('c65b3adb-5e3b-4db5-9e12-b4ef8821723b', 'moisture', 80, 'as-fed');

-- Canagan — Lamsschotel (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/nl/hondenvoer/lamsschotel-nat-hondenvoer/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen overgenomen zoals de fabrikant ze op de pagina vermeldt. Kcal, calcium, fosfor, omega-3 en omega-6 worden niet vermeld. Geen omrekening nodig.'
 where id = '8ad4c948-ebf8-4add-8eb0-117f57224391';
delete from public.recipe_nutrition where recipe_version_id = '8ad4c948-ebf8-4add-8eb0-117f57224391';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8ad4c948-ebf8-4add-8eb0-117f57224391', 'protein', 10.2, 'as-fed'),
  ('8ad4c948-ebf8-4add-8eb0-117f57224391', 'fat', 8.5, 'as-fed'),
  ('8ad4c948-ebf8-4add-8eb0-117f57224391', 'fiber', 0.5, 'as-fed'),
  ('8ad4c948-ebf8-4add-8eb0-117f57224391', 'ash', 3, 'as-fed'),
  ('8ad4c948-ebf8-4add-8eb0-117f57224391', 'moisture', 75, 'as-fed');

-- Canagan — Petite Kabeljauw met Haring Paté (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/uk/dog-food/petite-cod-herring-pate-dog-food/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Engelstalige bronpagina. Kcal, calcium, fosfor, omega-3 en omega-6 worden niet vermeld. Geen omrekening nodig.'
 where id = 'e44d8c82-7ee8-4988-91c9-8c8bb9505b4c';
delete from public.recipe_nutrition where recipe_version_id = 'e44d8c82-7ee8-4988-91c9-8c8bb9505b4c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e44d8c82-7ee8-4988-91c9-8c8bb9505b4c', 'protein', 9.5, 'as-fed'),
  ('e44d8c82-7ee8-4988-91c9-8c8bb9505b4c', 'fat', 2, 'as-fed'),
  ('e44d8c82-7ee8-4988-91c9-8c8bb9505b4c', 'fiber', 0.4, 'as-fed'),
  ('e44d8c82-7ee8-4988-91c9-8c8bb9505b4c', 'ash', 4, 'as-fed'),
  ('e44d8c82-7ee8-4988-91c9-8c8bb9505b4c', 'moisture', 78.5, 'as-fed');

-- Canagan — Petite Kalkoen met Eend Paté (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/uk/dog-food/petite-turkey-duck-pate-dog-food/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Engelstalige bronpagina. Kcal, calcium, fosfor, omega-3 en omega-6 worden niet vermeld. Geen omrekening nodig.'
 where id = '17945472-1cc4-4dc7-9f3f-db88f579a3be';
delete from public.recipe_nutrition where recipe_version_id = '17945472-1cc4-4dc7-9f3f-db88f579a3be';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('17945472-1cc4-4dc7-9f3f-db88f579a3be', 'protein', 10.5, 'as-fed'),
  ('17945472-1cc4-4dc7-9f3f-db88f579a3be', 'fat', 8.5, 'as-fed'),
  ('17945472-1cc4-4dc7-9f3f-db88f579a3be', 'fiber', 0.7, 'as-fed'),
  ('17945472-1cc4-4dc7-9f3f-db88f579a3be', 'ash', 2, 'as-fed'),
  ('17945472-1cc4-4dc7-9f3f-db88f579a3be', 'moisture', 75, 'as-fed');

-- Canagan — Petite Kip & Eend (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/nl/hondenvoer/canagan-petite-hondevoer-kip-eend/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal stond direct als kcal/100 g op de pagina; geen omrekening nodig.'
 where id = 'b8d5d2bd-56bb-4dd2-9bbd-61cc67be3773';
delete from public.recipe_nutrition where recipe_version_id = 'b8d5d2bd-56bb-4dd2-9bbd-61cc67be3773';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b8d5d2bd-56bb-4dd2-9bbd-61cc67be3773', 'protein', 33, 'as-fed'),
  ('b8d5d2bd-56bb-4dd2-9bbd-61cc67be3773', 'fat', 17.5, 'as-fed'),
  ('b8d5d2bd-56bb-4dd2-9bbd-61cc67be3773', 'fiber', 2.5, 'as-fed'),
  ('b8d5d2bd-56bb-4dd2-9bbd-61cc67be3773', 'ash', 8, 'as-fed'),
  ('b8d5d2bd-56bb-4dd2-9bbd-61cc67be3773', 'moisture', 8, 'as-fed'),
  ('b8d5d2bd-56bb-4dd2-9bbd-61cc67be3773', 'kcal', 396, 'as-fed'),
  ('b8d5d2bd-56bb-4dd2-9bbd-61cc67be3773', 'calcium', 1.65, 'as-fed'),
  ('b8d5d2bd-56bb-4dd2-9bbd-61cc67be3773', 'phosphorus', 1.1, 'as-fed'),
  ('b8d5d2bd-56bb-4dd2-9bbd-61cc67be3773', 'omega3', 0.29, 'as-fed'),
  ('b8d5d2bd-56bb-4dd2-9bbd-61cc67be3773', 'omega6', 3.6, 'as-fed');

-- Canagan — Petite Kip & Zalm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/nl/hondenvoer/canagan-petite-hondevoer-kip-zalm/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal stond direct als kcal/100 g op de pagina; geen omrekening nodig.'
 where id = 'f3b86977-8621-45e2-b6fb-68eed02907bc';
delete from public.recipe_nutrition where recipe_version_id = 'f3b86977-8621-45e2-b6fb-68eed02907bc';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f3b86977-8621-45e2-b6fb-68eed02907bc', 'protein', 32, 'as-fed'),
  ('f3b86977-8621-45e2-b6fb-68eed02907bc', 'fat', 16.5, 'as-fed'),
  ('f3b86977-8621-45e2-b6fb-68eed02907bc', 'fiber', 2.5, 'as-fed'),
  ('f3b86977-8621-45e2-b6fb-68eed02907bc', 'ash', 8, 'as-fed'),
  ('f3b86977-8621-45e2-b6fb-68eed02907bc', 'moisture', 8, 'as-fed'),
  ('f3b86977-8621-45e2-b6fb-68eed02907bc', 'kcal', 389, 'as-fed'),
  ('f3b86977-8621-45e2-b6fb-68eed02907bc', 'calcium', 1.5, 'as-fed'),
  ('f3b86977-8621-45e2-b6fb-68eed02907bc', 'phosphorus', 1, 'as-fed'),
  ('f3b86977-8621-45e2-b6fb-68eed02907bc', 'omega3', 1.1, 'as-fed'),
  ('f3b86977-8621-45e2-b6fb-68eed02907bc', 'omega6', 2.8, 'as-fed');

-- Canagan — Petite Kip Hotpot Paté (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/uk/dog-food/petite-chicken-hotpot-pate-dog-food/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Engelstalige bronpagina. Kcal, calcium, fosfor, omega-3 en omega-6 worden niet vermeld. Geen omrekening nodig.'
 where id = 'c2f38292-64e2-4831-bdb9-7e3a987321e5';
delete from public.recipe_nutrition where recipe_version_id = 'c2f38292-64e2-4831-bdb9-7e3a987321e5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c2f38292-64e2-4831-bdb9-7e3a987321e5', 'protein', 10.5, 'as-fed'),
  ('c2f38292-64e2-4831-bdb9-7e3a987321e5', 'fat', 6.5, 'as-fed'),
  ('c2f38292-64e2-4831-bdb9-7e3a987321e5', 'fiber', 0.8, 'as-fed'),
  ('c2f38292-64e2-4831-bdb9-7e3a987321e5', 'ash', 2.5, 'as-fed'),
  ('c2f38292-64e2-4831-bdb9-7e3a987321e5', 'moisture', 77, 'as-fed');

-- Canagan — Petite Kip met Wild Zwijn Paté (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/uk/dog-food/petite-chicken-wild-boar-pate-dog-food/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Engelstalige bronpagina. Kcal, calcium, fosfor, omega-3 en omega-6 worden niet vermeld. Geen omrekening nodig.'
 where id = '7a0ccdfe-cde6-4bef-bdbb-0c361f9f55c0';
delete from public.recipe_nutrition where recipe_version_id = '7a0ccdfe-cde6-4bef-bdbb-0c361f9f55c0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7a0ccdfe-cde6-4bef-bdbb-0c361f9f55c0', 'protein', 10.5, 'as-fed'),
  ('7a0ccdfe-cde6-4bef-bdbb-0c361f9f55c0', 'fat', 12, 'as-fed'),
  ('7a0ccdfe-cde6-4bef-bdbb-0c361f9f55c0', 'fiber', 0.5, 'as-fed'),
  ('7a0ccdfe-cde6-4bef-bdbb-0c361f9f55c0', 'ash', 2, 'as-fed'),
  ('7a0ccdfe-cde6-4bef-bdbb-0c361f9f55c0', 'moisture', 72.5, 'as-fed');

-- Canagan — Petite Lamsstoof Paté (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/uk/dog-food/petite-lamb-casserole-pate-dog-food/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Engelstalige bronpagina. Kcal, calcium, fosfor, omega-3 en omega-6 worden niet vermeld. Geen omrekening nodig.'
 where id = '937a2c0d-2b1d-4280-b70b-e75933508554';
delete from public.recipe_nutrition where recipe_version_id = '937a2c0d-2b1d-4280-b70b-e75933508554';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('937a2c0d-2b1d-4280-b70b-e75933508554', 'protein', 11, 'as-fed'),
  ('937a2c0d-2b1d-4280-b70b-e75933508554', 'fat', 6, 'as-fed'),
  ('937a2c0d-2b1d-4280-b70b-e75933508554', 'fiber', 0.4, 'as-fed'),
  ('937a2c0d-2b1d-4280-b70b-e75933508554', 'ash', 2, 'as-fed'),
  ('937a2c0d-2b1d-4280-b70b-e75933508554', 'moisture', 77, 'as-fed');

-- Canagan — Petite Runderstoof Paté (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/uk/dog-food/petite-beef-stew-pate-dog-food/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Engelstalige bronpagina. Kcal, calcium, fosfor, omega-3 en omega-6 worden niet vermeld. Geen omrekening nodig.'
 where id = '485a3c4c-f210-4ace-ad54-bd1f13faa86e';
delete from public.recipe_nutrition where recipe_version_id = '485a3c4c-f210-4ace-ad54-bd1f13faa86e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('485a3c4c-f210-4ace-ad54-bd1f13faa86e', 'protein', 10.5, 'as-fed'),
  ('485a3c4c-f210-4ace-ad54-bd1f13faa86e', 'fat', 6, 'as-fed'),
  ('485a3c4c-f210-4ace-ad54-bd1f13faa86e', 'fiber', 0.6, 'as-fed'),
  ('485a3c4c-f210-4ace-ad54-bd1f13faa86e', 'ash', 2, 'as-fed'),
  ('485a3c4c-f210-4ace-ad54-bd1f13faa86e', 'moisture', 78, 'as-fed');

-- Canagan — Petite Wild Paté (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/uk/dog-food/petite-country-game-hotpot-pate-dog-food/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Engelstalige bronpagina. Kcal, calcium, fosfor, omega-3 en omega-6 worden niet vermeld. Geen omrekening nodig.'
 where id = '93633765-2b60-4996-8f77-46671ef12779';
delete from public.recipe_nutrition where recipe_version_id = '93633765-2b60-4996-8f77-46671ef12779';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('93633765-2b60-4996-8f77-46671ef12779', 'protein', 10.5, 'as-fed'),
  ('93633765-2b60-4996-8f77-46671ef12779', 'fat', 8, 'as-fed'),
  ('93633765-2b60-4996-8f77-46671ef12779', 'fiber', 0.4, 'as-fed'),
  ('93633765-2b60-4996-8f77-46671ef12779', 'ash', 1.5, 'as-fed'),
  ('93633765-2b60-4996-8f77-46671ef12779', 'moisture', 76.5, 'as-fed');

-- Canagan — Puppy Vrije-uitloopkip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/uk/dog-food/free-range-chicken-dry-puppy-food/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Engelstalige bronpagina. Kcal stond direct als kcal/100 g op de pagina; geen omrekening nodig. Vocht wordt niet vermeld.'
 where id = 'cf107c62-567c-4fb0-8fd8-a9df0f165276';
delete from public.recipe_nutrition where recipe_version_id = 'cf107c62-567c-4fb0-8fd8-a9df0f165276';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('cf107c62-567c-4fb0-8fd8-a9df0f165276', 'protein', 38, 'as-fed'),
  ('cf107c62-567c-4fb0-8fd8-a9df0f165276', 'fat', 17, 'as-fed'),
  ('cf107c62-567c-4fb0-8fd8-a9df0f165276', 'fiber', 3, 'as-fed'),
  ('cf107c62-567c-4fb0-8fd8-a9df0f165276', 'ash', 7, 'as-fed'),
  ('cf107c62-567c-4fb0-8fd8-a9df0f165276', 'kcal', 393, 'as-fed'),
  ('cf107c62-567c-4fb0-8fd8-a9df0f165276', 'calcium', 1.4, 'as-fed'),
  ('cf107c62-567c-4fb0-8fd8-a9df0f165276', 'phosphorus', 1, 'as-fed'),
  ('cf107c62-567c-4fb0-8fd8-a9df0f165276', 'omega3', 0.46, 'as-fed'),
  ('cf107c62-567c-4fb0-8fd8-a9df0f165276', 'omega6', 2.9, 'as-fed');

-- Canagan — Puppy-Feestmaal (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/nl/hondenvoer/puppyfeestmaal-nat-hondenvoer/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen overgenomen zoals de fabrikant ze op de pagina vermeldt. Kcal, calcium, fosfor, omega-3 en omega-6 worden niet vermeld. Geen omrekening nodig.'
 where id = '8cbdf6cf-20e7-47d2-ac06-e889405f5451';
delete from public.recipe_nutrition where recipe_version_id = '8cbdf6cf-20e7-47d2-ac06-e889405f5451';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8cbdf6cf-20e7-47d2-ac06-e889405f5451', 'protein', 10.8, 'as-fed'),
  ('8cbdf6cf-20e7-47d2-ac06-e889405f5451', 'fat', 6.7, 'as-fed'),
  ('8cbdf6cf-20e7-47d2-ac06-e889405f5451', 'fiber', 0.5, 'as-fed'),
  ('8cbdf6cf-20e7-47d2-ac06-e889405f5451', 'ash', 2.1, 'as-fed'),
  ('8cbdf6cf-20e7-47d2-ac06-e889405f5451', 'moisture', 77, 'as-fed');

-- Canagan — Runderstoof (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/nl/hondenvoer/runderstoof-nat-hondenvoer/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen overgenomen zoals de fabrikant ze op de pagina vermeldt. Kcal, calcium, fosfor, omega-3 en omega-6 worden niet vermeld. Geen omrekening nodig.'
 where id = 'e2c363cf-ba81-4ce7-bd75-277c8c62b835';
delete from public.recipe_nutrition where recipe_version_id = 'e2c363cf-ba81-4ce7-bd75-277c8c62b835';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e2c363cf-ba81-4ce7-bd75-277c8c62b835', 'protein', 10.8, 'as-fed'),
  ('e2c363cf-ba81-4ce7-bd75-277c8c62b835', 'fat', 7.8, 'as-fed'),
  ('e2c363cf-ba81-4ce7-bd75-277c8c62b835', 'fiber', 0.5, 'as-fed'),
  ('e2c363cf-ba81-4ce7-bd75-277c8c62b835', 'ash', 2.2, 'as-fed'),
  ('e2c363cf-ba81-4ce7-bd75-277c8c62b835', 'moisture', 75, 'as-fed');

-- Canagan — Scharrelkip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/nl/hondenvoer/scharrelkip-nat-hondenvoer/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen overgenomen zoals de fabrikant ze op de pagina vermeldt. Kcal, calcium, fosfor, omega-3 en omega-6 worden niet vermeld. Geen omrekening nodig.'
 where id = '03476226-f638-4ae4-9566-6064db655a0c';
delete from public.recipe_nutrition where recipe_version_id = '03476226-f638-4ae4-9566-6064db655a0c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('03476226-f638-4ae4-9566-6064db655a0c', 'protein', 10.2, 'as-fed'),
  ('03476226-f638-4ae4-9566-6064db655a0c', 'fat', 5.1, 'as-fed'),
  ('03476226-f638-4ae4-9566-6064db655a0c', 'fiber', 0.5, 'as-fed'),
  ('03476226-f638-4ae4-9566-6064db655a0c', 'ash', 2.3, 'as-fed'),
  ('03476226-f638-4ae4-9566-6064db655a0c', 'moisture', 80, 'as-fed');

-- Canagan — Schotel met Kip en Wild Zwijn (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/nl/hondenvoer/schotel-met-kip-en-wild-zwijn-nat-hondenvoer/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen overgenomen zoals de fabrikant ze op de pagina vermeldt. Kcal, calcium, fosfor, omega-3 en omega-6 worden niet vermeld. Geen omrekening nodig.'
 where id = 'e7e9c10d-3667-43fe-89e5-2c49cd94aa5f';
delete from public.recipe_nutrition where recipe_version_id = 'e7e9c10d-3667-43fe-89e5-2c49cd94aa5f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e7e9c10d-3667-43fe-89e5-2c49cd94aa5f', 'protein', 10.4, 'as-fed'),
  ('e7e9c10d-3667-43fe-89e5-2c49cd94aa5f', 'fat', 5.8, 'as-fed'),
  ('e7e9c10d-3667-43fe-89e5-2c49cd94aa5f', 'fiber', 0.5, 'as-fed'),
  ('e7e9c10d-3667-43fe-89e5-2c49cd94aa5f', 'ash', 2.4, 'as-fed'),
  ('e7e9c10d-3667-43fe-89e5-2c49cd94aa5f', 'moisture', 78, 'as-fed');

-- Canagan — Schotse Zalm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/nl/hondenvoer/schotse-zalm-droog-hondenvoer/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen overgenomen zoals de fabrikant ze op de pagina vermeldt. Kcal wordt niet vermeld. Geen omrekening nodig.'
 where id = '968de8ab-4341-4f44-a7f7-0562d1326891';
delete from public.recipe_nutrition where recipe_version_id = '968de8ab-4341-4f44-a7f7-0562d1326891';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('968de8ab-4341-4f44-a7f7-0562d1326891', 'protein', 29, 'as-fed'),
  ('968de8ab-4341-4f44-a7f7-0562d1326891', 'fat', 17, 'as-fed'),
  ('968de8ab-4341-4f44-a7f7-0562d1326891', 'fiber', 3, 'as-fed'),
  ('968de8ab-4341-4f44-a7f7-0562d1326891', 'ash', 9.5, 'as-fed'),
  ('968de8ab-4341-4f44-a7f7-0562d1326891', 'moisture', 8, 'as-fed'),
  ('968de8ab-4341-4f44-a7f7-0562d1326891', 'calcium', 1.64, 'as-fed'),
  ('968de8ab-4341-4f44-a7f7-0562d1326891', 'phosphorus', 1, 'as-fed'),
  ('968de8ab-4341-4f44-a7f7-0562d1326891', 'omega3', 2, 'as-fed'),
  ('968de8ab-4341-4f44-a7f7-0562d1326891', 'omega6', 2.2, 'as-fed');

-- Canagan — Schotse Zalm Kleine Rassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/nl/hondenvoer/schotse-zalm-kleine-rassen-droog-hondenvoer/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen overgenomen zoals de fabrikant ze op de pagina vermeldt. Kcal wordt niet vermeld. Geen omrekening nodig.'
 where id = '34253165-7e82-422b-a869-ae24c3bfef84';
delete from public.recipe_nutrition where recipe_version_id = '34253165-7e82-422b-a869-ae24c3bfef84';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('34253165-7e82-422b-a869-ae24c3bfef84', 'protein', 29, 'as-fed'),
  ('34253165-7e82-422b-a869-ae24c3bfef84', 'fat', 17, 'as-fed'),
  ('34253165-7e82-422b-a869-ae24c3bfef84', 'fiber', 3, 'as-fed'),
  ('34253165-7e82-422b-a869-ae24c3bfef84', 'ash', 9.5, 'as-fed'),
  ('34253165-7e82-422b-a869-ae24c3bfef84', 'moisture', 8, 'as-fed'),
  ('34253165-7e82-422b-a869-ae24c3bfef84', 'calcium', 1.64, 'as-fed'),
  ('34253165-7e82-422b-a869-ae24c3bfef84', 'phosphorus', 1, 'as-fed'),
  ('34253165-7e82-422b-a869-ae24c3bfef84', 'omega3', 2, 'as-fed'),
  ('34253165-7e82-422b-a869-ae24c3bfef84', 'omega6', 2.2, 'as-fed');

-- Canagan — Senior & Light Small Breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/nl/hondenvoer/canagan-hondenbrokken-senior-light-small-breed/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen overgenomen zoals de fabrikant ze op de pagina vermeldt. Kcal, vocht en omega-3 worden niet vermeld. Geen omrekening nodig.'
 where id = '66c7b8e6-22d3-4fcd-961f-61c2be1491e4';
delete from public.recipe_nutrition where recipe_version_id = '66c7b8e6-22d3-4fcd-961f-61c2be1491e4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('66c7b8e6-22d3-4fcd-961f-61c2be1491e4', 'protein', 34, 'as-fed'),
  ('66c7b8e6-22d3-4fcd-961f-61c2be1491e4', 'fat', 14, 'as-fed'),
  ('66c7b8e6-22d3-4fcd-961f-61c2be1491e4', 'fiber', 3, 'as-fed'),
  ('66c7b8e6-22d3-4fcd-961f-61c2be1491e4', 'ash', 8.5, 'as-fed'),
  ('66c7b8e6-22d3-4fcd-961f-61c2be1491e4', 'calcium', 1.6, 'as-fed'),
  ('66c7b8e6-22d3-4fcd-961f-61c2be1491e4', 'phosphorus', 0.95, 'as-fed'),
  ('66c7b8e6-22d3-4fcd-961f-61c2be1491e4', 'omega6', 2.4, 'as-fed');

-- Canagan — Senior-Feestmaal (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/nl/hondenvoer/senior-feestmaal-nat-hondenvoer/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen overgenomen zoals de fabrikant ze op de pagina vermeldt. Kcal, calcium, fosfor, omega-3 en omega-6 worden niet vermeld. Geen omrekening nodig.'
 where id = '0314103b-73f4-4ef1-aff5-ee97a1de2096';
delete from public.recipe_nutrition where recipe_version_id = '0314103b-73f4-4ef1-aff5-ee97a1de2096';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0314103b-73f4-4ef1-aff5-ee97a1de2096', 'protein', 10.2, 'as-fed'),
  ('0314103b-73f4-4ef1-aff5-ee97a1de2096', 'fat', 5.8, 'as-fed'),
  ('0314103b-73f4-4ef1-aff5-ee97a1de2096', 'fiber', 0.6, 'as-fed'),
  ('0314103b-73f4-4ef1-aff5-ee97a1de2096', 'ash', 2.4, 'as-fed'),
  ('0314103b-73f4-4ef1-aff5-ee97a1de2096', 'moisture', 80, 'as-fed');

-- Canagan — Stoof met Hert en Wild Zwijn (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/nl/hondenvoer/stoof-met-hert-en-wild-zwijn-nat-hondenvoer/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen overgenomen zoals de fabrikant ze op de pagina vermeldt. Kcal, calcium, fosfor, omega-3 en omega-6 worden niet vermeld. Geen omrekening nodig.'
 where id = 'bc4e1b53-d2a4-4e96-955f-dae89afa39b7';
delete from public.recipe_nutrition where recipe_version_id = 'bc4e1b53-d2a4-4e96-955f-dae89afa39b7';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('bc4e1b53-d2a4-4e96-955f-dae89afa39b7', 'protein', 10.5, 'as-fed'),
  ('bc4e1b53-d2a4-4e96-955f-dae89afa39b7', 'fat', 6.8, 'as-fed'),
  ('bc4e1b53-d2a4-4e96-955f-dae89afa39b7', 'fiber', 0.5, 'as-fed'),
  ('bc4e1b53-d2a4-4e96-955f-dae89afa39b7', 'ash', 2.9, 'as-fed'),
  ('bc4e1b53-d2a4-4e96-955f-dae89afa39b7', 'moisture', 78, 'as-fed');

-- Canagan — Vrije-uitloopkip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/nl/hondenvoer/vrije-uitloopkip-droog-hondenvoer/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen overgenomen zoals de fabrikant ze op de pagina vermeldt. Kcal en vocht worden niet vermeld. Geen omrekening nodig.'
 where id = '5dfe5edb-5a72-47d6-b643-5b78478bd348';
delete from public.recipe_nutrition where recipe_version_id = '5dfe5edb-5a72-47d6-b643-5b78478bd348';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5dfe5edb-5a72-47d6-b643-5b78478bd348', 'protein', 34, 'as-fed'),
  ('5dfe5edb-5a72-47d6-b643-5b78478bd348', 'fat', 17, 'as-fed'),
  ('5dfe5edb-5a72-47d6-b643-5b78478bd348', 'fiber', 3, 'as-fed'),
  ('5dfe5edb-5a72-47d6-b643-5b78478bd348', 'ash', 7, 'as-fed'),
  ('5dfe5edb-5a72-47d6-b643-5b78478bd348', 'calcium', 1.4, 'as-fed'),
  ('5dfe5edb-5a72-47d6-b643-5b78478bd348', 'phosphorus', 0.9, 'as-fed'),
  ('5dfe5edb-5a72-47d6-b643-5b78478bd348', 'omega3', 0.45, 'as-fed'),
  ('5dfe5edb-5a72-47d6-b643-5b78478bd348', 'omega6', 2.8, 'as-fed');

-- Canagan — Vrije-uitloopkip Grote Rassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/nl/hondenvoer/vrije-uitloopkip-grote-rassen-droog-hondenvoer/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen overgenomen zoals de fabrikant ze op de pagina vermeldt. Kcal en vocht worden niet vermeld. Geen omrekening nodig.'
 where id = '46e131c1-79f2-41f9-b291-887b00ec1ce9';
delete from public.recipe_nutrition where recipe_version_id = '46e131c1-79f2-41f9-b291-887b00ec1ce9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('46e131c1-79f2-41f9-b291-887b00ec1ce9', 'protein', 34, 'as-fed'),
  ('46e131c1-79f2-41f9-b291-887b00ec1ce9', 'fat', 17, 'as-fed'),
  ('46e131c1-79f2-41f9-b291-887b00ec1ce9', 'fiber', 3, 'as-fed'),
  ('46e131c1-79f2-41f9-b291-887b00ec1ce9', 'ash', 7, 'as-fed'),
  ('46e131c1-79f2-41f9-b291-887b00ec1ce9', 'calcium', 1.4, 'as-fed'),
  ('46e131c1-79f2-41f9-b291-887b00ec1ce9', 'phosphorus', 0.97, 'as-fed'),
  ('46e131c1-79f2-41f9-b291-887b00ec1ce9', 'omega3', 0.44, 'as-fed'),
  ('46e131c1-79f2-41f9-b291-887b00ec1ce9', 'omega6', 2.7, 'as-fed');

-- Canagan — Vrije-uitloopkip Kleine Rassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/nl/hondenvoer/vrije-uitloopkip-kleine-rassen-droog-hondenvoer/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen overgenomen zoals de fabrikant ze op de pagina vermeldt. Kcal en vocht worden niet vermeld. Geen omrekening nodig.'
 where id = '5a5fce41-e31b-4d00-b9fa-a379d9d83296';
delete from public.recipe_nutrition where recipe_version_id = '5a5fce41-e31b-4d00-b9fa-a379d9d83296';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5a5fce41-e31b-4d00-b9fa-a379d9d83296', 'protein', 34, 'as-fed'),
  ('5a5fce41-e31b-4d00-b9fa-a379d9d83296', 'fat', 17, 'as-fed'),
  ('5a5fce41-e31b-4d00-b9fa-a379d9d83296', 'fiber', 3, 'as-fed'),
  ('5a5fce41-e31b-4d00-b9fa-a379d9d83296', 'ash', 7, 'as-fed'),
  ('5a5fce41-e31b-4d00-b9fa-a379d9d83296', 'calcium', 1.4, 'as-fed'),
  ('5a5fce41-e31b-4d00-b9fa-a379d9d83296', 'phosphorus', 0.9, 'as-fed'),
  ('5a5fce41-e31b-4d00-b9fa-a379d9d83296', 'omega3', 0.45, 'as-fed'),
  ('5a5fce41-e31b-4d00-b9fa-a379d9d83296', 'omega6', 2.8, 'as-fed');

-- Canagan — Vrije-uitloopkip Light / Senior (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/nl/hondenvoer/vrije-uitloopkip-light-senior-droog-hondenvoer/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal stond direct als kcal/100 g op de pagina; geen omrekening nodig. Omega-3 wordt niet vermeld.'
 where id = '92333671-60f3-4529-8405-de8b52c957eb';
delete from public.recipe_nutrition where recipe_version_id = '92333671-60f3-4529-8405-de8b52c957eb';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('92333671-60f3-4529-8405-de8b52c957eb', 'protein', 32, 'as-fed'),
  ('92333671-60f3-4529-8405-de8b52c957eb', 'fat', 14, 'as-fed'),
  ('92333671-60f3-4529-8405-de8b52c957eb', 'fiber', 3.5, 'as-fed'),
  ('92333671-60f3-4529-8405-de8b52c957eb', 'ash', 10.5, 'as-fed'),
  ('92333671-60f3-4529-8405-de8b52c957eb', 'moisture', 8, 'as-fed'),
  ('92333671-60f3-4529-8405-de8b52c957eb', 'kcal', 372, 'as-fed'),
  ('92333671-60f3-4529-8405-de8b52c957eb', 'calcium', 2, 'as-fed'),
  ('92333671-60f3-4529-8405-de8b52c957eb', 'phosphorus', 1.4, 'as-fed'),
  ('92333671-60f3-4529-8405-de8b52c957eb', 'omega6', 2.5, 'as-fed');

-- Canagan — Werkhond (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/uk/dog-food/canagan-working-dog-dry-dog-food/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Engelstalige bronpagina. Kcal stond direct als kcal/100 g op de pagina; geen omrekening nodig.'
 where id = 'fbf9a7ca-551d-4725-a6f7-f642a664ae43';
delete from public.recipe_nutrition where recipe_version_id = 'fbf9a7ca-551d-4725-a6f7-f642a664ae43';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fbf9a7ca-551d-4725-a6f7-f642a664ae43', 'protein', 31, 'as-fed'),
  ('fbf9a7ca-551d-4725-a6f7-f642a664ae43', 'fat', 19, 'as-fed'),
  ('fbf9a7ca-551d-4725-a6f7-f642a664ae43', 'fiber', 3, 'as-fed'),
  ('fbf9a7ca-551d-4725-a6f7-f642a664ae43', 'ash', 6, 'as-fed'),
  ('fbf9a7ca-551d-4725-a6f7-f642a664ae43', 'moisture', 8, 'as-fed'),
  ('fbf9a7ca-551d-4725-a6f7-f642a664ae43', 'kcal', 403, 'as-fed'),
  ('fbf9a7ca-551d-4725-a6f7-f642a664ae43', 'calcium', 1, 'as-fed'),
  ('fbf9a7ca-551d-4725-a6f7-f642a664ae43', 'phosphorus', 0.7, 'as-fed'),
  ('fbf9a7ca-551d-4725-a6f7-f642a664ae43', 'omega3', 0.6, 'as-fed'),
  ('fbf9a7ca-551d-4725-a6f7-f642a664ae43', 'omega6', 2.8, 'as-fed');

-- Canagan — Wild (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/nl/hondenvoer/wild-droog-hondenvoer/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen overgenomen zoals de fabrikant ze op de pagina vermeldt. Kcal wordt niet vermeld. Geen omrekening nodig.'
 where id = 'c3779e88-0281-4cc8-b69b-da34a9eae510';
delete from public.recipe_nutrition where recipe_version_id = 'c3779e88-0281-4cc8-b69b-da34a9eae510';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c3779e88-0281-4cc8-b69b-da34a9eae510', 'protein', 37, 'as-fed'),
  ('c3779e88-0281-4cc8-b69b-da34a9eae510', 'fat', 17, 'as-fed'),
  ('c3779e88-0281-4cc8-b69b-da34a9eae510', 'fiber', 3, 'as-fed'),
  ('c3779e88-0281-4cc8-b69b-da34a9eae510', 'ash', 7.3, 'as-fed'),
  ('c3779e88-0281-4cc8-b69b-da34a9eae510', 'moisture', 8, 'as-fed'),
  ('c3779e88-0281-4cc8-b69b-da34a9eae510', 'calcium', 1.5, 'as-fed'),
  ('c3779e88-0281-4cc8-b69b-da34a9eae510', 'phosphorus', 0.9, 'as-fed'),
  ('c3779e88-0281-4cc8-b69b-da34a9eae510', 'omega3', 0.7, 'as-fed'),
  ('c3779e88-0281-4cc8-b69b-da34a9eae510', 'omega6', 2.4, 'as-fed');

-- Canagan — Wild Kleine Rassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/nl/hondenvoer/wild-kleine-rassen-droog-hondenvoer/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen overgenomen zoals de fabrikant ze op de pagina vermeldt. Kcal wordt niet vermeld. Geen omrekening nodig.'
 where id = '0d63be3d-62d2-425d-8d25-677c9b91f5d6';
delete from public.recipe_nutrition where recipe_version_id = '0d63be3d-62d2-425d-8d25-677c9b91f5d6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0d63be3d-62d2-425d-8d25-677c9b91f5d6', 'protein', 37, 'as-fed'),
  ('0d63be3d-62d2-425d-8d25-677c9b91f5d6', 'fat', 17, 'as-fed'),
  ('0d63be3d-62d2-425d-8d25-677c9b91f5d6', 'fiber', 3, 'as-fed'),
  ('0d63be3d-62d2-425d-8d25-677c9b91f5d6', 'ash', 7.3, 'as-fed'),
  ('0d63be3d-62d2-425d-8d25-677c9b91f5d6', 'moisture', 8, 'as-fed'),
  ('0d63be3d-62d2-425d-8d25-677c9b91f5d6', 'calcium', 1.5, 'as-fed'),
  ('0d63be3d-62d2-425d-8d25-677c9b91f5d6', 'phosphorus', 0.9, 'as-fed'),
  ('0d63be3d-62d2-425d-8d25-677c9b91f5d6', 'omega3', 0.7, 'as-fed'),
  ('0d63be3d-62d2-425d-8d25-677c9b91f5d6', 'omega6', 2.4, 'as-fed');

-- Canagan — Wild Nat (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/nl/hondenvoer/wild-nat-hondenvoer/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen overgenomen zoals de fabrikant ze op de pagina vermeldt. Kcal, calcium, fosfor, omega-3 en omega-6 worden niet vermeld. Geen omrekening nodig.'
 where id = 'b7afc552-b31e-458e-b92b-b517e4bc98a8';
delete from public.recipe_nutrition where recipe_version_id = 'b7afc552-b31e-458e-b92b-b517e4bc98a8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b7afc552-b31e-458e-b92b-b517e4bc98a8', 'protein', 10.3, 'as-fed'),
  ('b7afc552-b31e-458e-b92b-b517e4bc98a8', 'fat', 5.9, 'as-fed'),
  ('b7afc552-b31e-458e-b92b-b517e4bc98a8', 'fiber', 0.5, 'as-fed'),
  ('b7afc552-b31e-458e-b92b-b517e4bc98a8', 'ash', 2.9, 'as-fed'),
  ('b7afc552-b31e-458e-b92b-b517e4bc98a8', 'moisture', 80, 'as-fed');

-- Canagan — Zalm en Haring Lunch (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://canagan.com/nl/hondenvoer/zalm-en-haring-nat-hondenvoer/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen overgenomen zoals de fabrikant ze op de pagina vermeldt. Kcal, calcium, fosfor, omega-3 en omega-6 worden niet vermeld. Geen omrekening nodig.'
 where id = '96ce56cc-7ae2-4b2a-b468-42b9ccd8eb5b';
delete from public.recipe_nutrition where recipe_version_id = '96ce56cc-7ae2-4b2a-b468-42b9ccd8eb5b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('96ce56cc-7ae2-4b2a-b468-42b9ccd8eb5b', 'protein', 8.5, 'as-fed'),
  ('96ce56cc-7ae2-4b2a-b468-42b9ccd8eb5b', 'fat', 7.9, 'as-fed'),
  ('96ce56cc-7ae2-4b2a-b468-42b9ccd8eb5b', 'fiber', 0.5, 'as-fed'),
  ('96ce56cc-7ae2-4b2a-b468-42b9ccd8eb5b', 'ash', 3, 'as-fed'),
  ('96ce56cc-7ae2-4b2a-b468-42b9ccd8eb5b', 'moisture', 80, 'as-fed');

commit;
