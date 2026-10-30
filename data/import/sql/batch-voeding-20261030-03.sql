begin;

-- Renske — Biologisch Vers Gestoomde Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/renske-biologische-hondenvoeding/vers-gestoomde-kip-500g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 131,3 kcal per 100 g; geen omrekening nodig. De kop op de bronpagina luidt ''Analytische toevoegingsmiddelen''; de regel met de analytische bestanddelen is letterlijk overgenomen. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '82db435f-a002-40b8-a3a0-81c8e54a5e1f';
delete from public.recipe_nutrition where recipe_version_id = '82db435f-a002-40b8-a3a0-81c8e54a5e1f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('82db435f-a002-40b8-a3a0-81c8e54a5e1f', 'protein', 10, 'as-fed'),
  ('82db435f-a002-40b8-a3a0-81c8e54a5e1f', 'fat', 6.5, 'as-fed'),
  ('82db435f-a002-40b8-a3a0-81c8e54a5e1f', 'fiber', 0.8, 'as-fed'),
  ('82db435f-a002-40b8-a3a0-81c8e54a5e1f', 'ash', 2.5, 'as-fed'),
  ('82db435f-a002-40b8-a3a0-81c8e54a5e1f', 'moisture', 72, 'as-fed'),
  ('82db435f-a002-40b8-a3a0-81c8e54a5e1f', 'kcal', 131.3, 'as-fed');

-- Renske — Biologisch Vers Gestoomde Kip 300g (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/renske-biologische-hondenvoeding/vers-gestoomde-kip-300g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 89,5 kcal per 100 g; geen omrekening nodig. De kop op de bronpagina luidt ''Analytische toevoegingsmiddelen''; de regel met de analytische bestanddelen is letterlijk overgenomen. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '343379cb-54a7-4c6a-9f98-c891f03ffad9';
delete from public.recipe_nutrition where recipe_version_id = '343379cb-54a7-4c6a-9f98-c891f03ffad9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('343379cb-54a7-4c6a-9f98-c891f03ffad9', 'protein', 9.5, 'as-fed'),
  ('343379cb-54a7-4c6a-9f98-c891f03ffad9', 'fat', 5.5, 'as-fed'),
  ('343379cb-54a7-4c6a-9f98-c891f03ffad9', 'fiber', 0.3, 'as-fed'),
  ('343379cb-54a7-4c6a-9f98-c891f03ffad9', 'ash', 2.2, 'as-fed'),
  ('343379cb-54a7-4c6a-9f98-c891f03ffad9', 'moisture', 82, 'as-fed'),
  ('343379cb-54a7-4c6a-9f98-c891f03ffad9', 'kcal', 89.5, 'as-fed');

-- Renske — Biologisch Vers Gestoomde Rund (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/renske-biologische-hondenvoeding/vers-gestoomde-rund-500g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 131,3 kcal per 100 g; geen omrekening nodig. De kop op de bronpagina luidt ''Analytische toevoegingsmiddelen''; de regel met de analytische bestanddelen is letterlijk overgenomen. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '834499bd-1d60-49d4-8c75-340b68b8dde8';
delete from public.recipe_nutrition where recipe_version_id = '834499bd-1d60-49d4-8c75-340b68b8dde8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('834499bd-1d60-49d4-8c75-340b68b8dde8', 'protein', 10, 'as-fed'),
  ('834499bd-1d60-49d4-8c75-340b68b8dde8', 'fat', 6.5, 'as-fed'),
  ('834499bd-1d60-49d4-8c75-340b68b8dde8', 'fiber', 0.8, 'as-fed'),
  ('834499bd-1d60-49d4-8c75-340b68b8dde8', 'ash', 2.5, 'as-fed'),
  ('834499bd-1d60-49d4-8c75-340b68b8dde8', 'moisture', 72, 'as-fed'),
  ('834499bd-1d60-49d4-8c75-340b68b8dde8', 'kcal', 131.3, 'as-fed');

-- Renske — Biologisch Vers Gestoomde Rund 300g (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/renske-biologische-hondenvoeding/vers-gestoomde-rund-300g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 89,5 kcal per 100 g; geen omrekening nodig. De kop op de bronpagina luidt ''Analytische toevoegingsmiddelen''; de regel met de analytische bestanddelen is letterlijk overgenomen. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '4842c710-1c84-4265-97d6-c340d78b2eee';
delete from public.recipe_nutrition where recipe_version_id = '4842c710-1c84-4265-97d6-c340d78b2eee';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4842c710-1c84-4265-97d6-c340d78b2eee', 'protein', 9.5, 'as-fed'),
  ('4842c710-1c84-4265-97d6-c340d78b2eee', 'fat', 5.5, 'as-fed'),
  ('4842c710-1c84-4265-97d6-c340d78b2eee', 'fiber', 0.3, 'as-fed'),
  ('4842c710-1c84-4265-97d6-c340d78b2eee', 'ash', 2.2, 'as-fed'),
  ('4842c710-1c84-4265-97d6-c340d78b2eee', 'moisture', 82, 'as-fed'),
  ('4842c710-1c84-4265-97d6-c340d78b2eee', 'kcal', 89.5, 'as-fed');

-- Renske — Kerstdiner Kalkoen met cranberry (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/special-edition-kerstdiner-395g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 155,2 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '03b26557-8a12-45f2-af85-e37959c0838e';
delete from public.recipe_nutrition where recipe_version_id = '03b26557-8a12-45f2-af85-e37959c0838e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('03b26557-8a12-45f2-af85-e37959c0838e', 'protein', 10.5, 'as-fed'),
  ('03b26557-8a12-45f2-af85-e37959c0838e', 'fat', 10, 'as-fed'),
  ('03b26557-8a12-45f2-af85-e37959c0838e', 'fiber', 0.7, 'as-fed'),
  ('03b26557-8a12-45f2-af85-e37959c0838e', 'ash', 2, 'as-fed'),
  ('03b26557-8a12-45f2-af85-e37959c0838e', 'moisture', 70, 'as-fed'),
  ('03b26557-8a12-45f2-af85-e37959c0838e', 'kcal', 155.2, 'as-fed'),
  ('03b26557-8a12-45f2-af85-e37959c0838e', 'calcium', 0.62, 'as-fed'),
  ('03b26557-8a12-45f2-af85-e37959c0838e', 'phosphorus', 0.47, 'as-fed');

-- Renske — Kerstdiner Wildstoofpotje met abrikoos (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/special-edition-kerstdiner-wildstoofpotje-395g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 114,4 kcal per 100 g; geen omrekening nodig. Fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '3d1fa173-2ea6-4f5f-9a0a-44ed695fcde1';
delete from public.recipe_nutrition where recipe_version_id = '3d1fa173-2ea6-4f5f-9a0a-44ed695fcde1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3d1fa173-2ea6-4f5f-9a0a-44ed695fcde1', 'protein', 10, 'as-fed'),
  ('3d1fa173-2ea6-4f5f-9a0a-44ed695fcde1', 'fat', 7.5, 'as-fed'),
  ('3d1fa173-2ea6-4f5f-9a0a-44ed695fcde1', 'fiber', 2, 'as-fed'),
  ('3d1fa173-2ea6-4f5f-9a0a-44ed695fcde1', 'ash', 4, 'as-fed'),
  ('3d1fa173-2ea6-4f5f-9a0a-44ed695fcde1', 'moisture', 72, 'as-fed'),
  ('3d1fa173-2ea6-4f5f-9a0a-44ed695fcde1', 'kcal', 114.4, 'as-fed'),
  ('3d1fa173-2ea6-4f5f-9a0a-44ed695fcde1', 'calcium', 0.62, 'as-fed');

-- Renske — M.O.P. Vers bereide Kalkoen met eend (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/mop-droogvoer/verse-kalkoen-met-eend',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 397,2 kcal per 100 g; geen omrekening nodig.'
 where id = '86ad9d71-3959-4d2e-9416-c072e43f94ab';
delete from public.recipe_nutrition where recipe_version_id = '86ad9d71-3959-4d2e-9416-c072e43f94ab';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('86ad9d71-3959-4d2e-9416-c072e43f94ab', 'protein', 25, 'as-fed'),
  ('86ad9d71-3959-4d2e-9416-c072e43f94ab', 'fat', 14, 'as-fed'),
  ('86ad9d71-3959-4d2e-9416-c072e43f94ab', 'fiber', 4.4, 'as-fed'),
  ('86ad9d71-3959-4d2e-9416-c072e43f94ab', 'ash', 5.8, 'as-fed'),
  ('86ad9d71-3959-4d2e-9416-c072e43f94ab', 'moisture', 8, 'as-fed'),
  ('86ad9d71-3959-4d2e-9416-c072e43f94ab', 'kcal', 397.2, 'as-fed'),
  ('86ad9d71-3959-4d2e-9416-c072e43f94ab', 'calcium', 1.1, 'as-fed'),
  ('86ad9d71-3959-4d2e-9416-c072e43f94ab', 'phosphorus', 0.8, 'as-fed'),
  ('86ad9d71-3959-4d2e-9416-c072e43f94ab', 'omega3', 1.4, 'as-fed'),
  ('86ad9d71-3959-4d2e-9416-c072e43f94ab', 'omega6', 2.7, 'as-fed');

-- Renske — M.O.P. Vers bereide Kip & Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/mop-droogvoer/vers-bereide-kip-met-rijst',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 382,8 kcal per 100 g; geen omrekening nodig.'
 where id = '9397551c-c4c5-46ab-8d8a-443929a37750';
delete from public.recipe_nutrition where recipe_version_id = '9397551c-c4c5-46ab-8d8a-443929a37750';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9397551c-c4c5-46ab-8d8a-443929a37750', 'protein', 21, 'as-fed'),
  ('9397551c-c4c5-46ab-8d8a-443929a37750', 'fat', 12, 'as-fed'),
  ('9397551c-c4c5-46ab-8d8a-443929a37750', 'fiber', 2.8, 'as-fed'),
  ('9397551c-c4c5-46ab-8d8a-443929a37750', 'ash', 6.5, 'as-fed'),
  ('9397551c-c4c5-46ab-8d8a-443929a37750', 'moisture', 10, 'as-fed'),
  ('9397551c-c4c5-46ab-8d8a-443929a37750', 'kcal', 382.8, 'as-fed'),
  ('9397551c-c4c5-46ab-8d8a-443929a37750', 'calcium', 1.2, 'as-fed'),
  ('9397551c-c4c5-46ab-8d8a-443929a37750', 'phosphorus', 0.8, 'as-fed'),
  ('9397551c-c4c5-46ab-8d8a-443929a37750', 'omega3', 1.22, 'as-fed'),
  ('9397551c-c4c5-46ab-8d8a-443929a37750', 'omega6', 2.2, 'as-fed');

-- Renske — M.O.P. Vers bereide Lam & Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/mop-droogvoer/vers-bereide-lam-met-rijst',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 386 kcal per 100 g; geen omrekening nodig.'
 where id = 'f4d86bdd-3d9a-4859-aedc-cfc3ac33acaf';
delete from public.recipe_nutrition where recipe_version_id = 'f4d86bdd-3d9a-4859-aedc-cfc3ac33acaf';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f4d86bdd-3d9a-4859-aedc-cfc3ac33acaf', 'protein', 24, 'as-fed'),
  ('f4d86bdd-3d9a-4859-aedc-cfc3ac33acaf', 'fat', 14, 'as-fed'),
  ('f4d86bdd-3d9a-4859-aedc-cfc3ac33acaf', 'fiber', 3.5, 'as-fed'),
  ('f4d86bdd-3d9a-4859-aedc-cfc3ac33acaf', 'ash', 7.5, 'as-fed'),
  ('f4d86bdd-3d9a-4859-aedc-cfc3ac33acaf', 'moisture', 10, 'as-fed'),
  ('f4d86bdd-3d9a-4859-aedc-cfc3ac33acaf', 'kcal', 386, 'as-fed'),
  ('f4d86bdd-3d9a-4859-aedc-cfc3ac33acaf', 'calcium', 1.8, 'as-fed'),
  ('f4d86bdd-3d9a-4859-aedc-cfc3ac33acaf', 'phosphorus', 1.1, 'as-fed'),
  ('f4d86bdd-3d9a-4859-aedc-cfc3ac33acaf', 'omega3', 1.22, 'as-fed'),
  ('f4d86bdd-3d9a-4859-aedc-cfc3ac33acaf', 'omega6', 1.9, 'as-fed');

-- Renske — M.O.P. Vers bereide Zalm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/mop-droogvoer/verse-zalm',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 386,8 kcal per 100 g; geen omrekening nodig.'
 where id = '1b5dd26a-5334-4751-b4ae-e649bf63f074';
delete from public.recipe_nutrition where recipe_version_id = '1b5dd26a-5334-4751-b4ae-e649bf63f074';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1b5dd26a-5334-4751-b4ae-e649bf63f074', 'protein', 22.5, 'as-fed'),
  ('1b5dd26a-5334-4751-b4ae-e649bf63f074', 'fat', 12, 'as-fed'),
  ('1b5dd26a-5334-4751-b4ae-e649bf63f074', 'fiber', 4.4, 'as-fed'),
  ('1b5dd26a-5334-4751-b4ae-e649bf63f074', 'ash', 5.9, 'as-fed'),
  ('1b5dd26a-5334-4751-b4ae-e649bf63f074', 'moisture', 8, 'as-fed'),
  ('1b5dd26a-5334-4751-b4ae-e649bf63f074', 'kcal', 386.8, 'as-fed'),
  ('1b5dd26a-5334-4751-b4ae-e649bf63f074', 'calcium', 0.8, 'as-fed'),
  ('1b5dd26a-5334-4751-b4ae-e649bf63f074', 'phosphorus', 0.8, 'as-fed'),
  ('1b5dd26a-5334-4751-b4ae-e649bf63f074', 'omega3', 1.3, 'as-fed'),
  ('1b5dd26a-5334-4751-b4ae-e649bf63f074', 'omega6', 2.1, 'as-fed');

-- Renske — Super Premium Mini Vers bereide Kip met lam (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/super-premium/mini-vers-bereide-kip-lam',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 413 kcal per 100 g; geen omrekening nodig.'
 where id = 'f2af8006-2a8f-47e2-96b3-6a5ab44f2bd4';
delete from public.recipe_nutrition where recipe_version_id = 'f2af8006-2a8f-47e2-96b3-6a5ab44f2bd4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f2af8006-2a8f-47e2-96b3-6a5ab44f2bd4', 'protein', 28, 'as-fed'),
  ('f2af8006-2a8f-47e2-96b3-6a5ab44f2bd4', 'fat', 19, 'as-fed'),
  ('f2af8006-2a8f-47e2-96b3-6a5ab44f2bd4', 'fiber', 3.5, 'as-fed'),
  ('f2af8006-2a8f-47e2-96b3-6a5ab44f2bd4', 'ash', 8, 'as-fed'),
  ('f2af8006-2a8f-47e2-96b3-6a5ab44f2bd4', 'moisture', 9, 'as-fed'),
  ('f2af8006-2a8f-47e2-96b3-6a5ab44f2bd4', 'kcal', 413, 'as-fed'),
  ('f2af8006-2a8f-47e2-96b3-6a5ab44f2bd4', 'calcium', 1.6, 'as-fed'),
  ('f2af8006-2a8f-47e2-96b3-6a5ab44f2bd4', 'phosphorus', 1.3, 'as-fed'),
  ('f2af8006-2a8f-47e2-96b3-6a5ab44f2bd4', 'omega3', 1.7, 'as-fed'),
  ('f2af8006-2a8f-47e2-96b3-6a5ab44f2bd4', 'omega6', 3.2, 'as-fed');

-- Renske — Super Premium Puppy Vers bereide Kip met lam (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/super-premium/vers-bereide-kip-en-lam-puppy',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 413 kcal per 100 g; geen omrekening nodig.'
 where id = 'ccff0797-057d-4832-aba0-d2ef40f6cefa';
delete from public.recipe_nutrition where recipe_version_id = 'ccff0797-057d-4832-aba0-d2ef40f6cefa';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ccff0797-057d-4832-aba0-d2ef40f6cefa', 'protein', 28, 'as-fed'),
  ('ccff0797-057d-4832-aba0-d2ef40f6cefa', 'fat', 19, 'as-fed'),
  ('ccff0797-057d-4832-aba0-d2ef40f6cefa', 'fiber', 3.5, 'as-fed'),
  ('ccff0797-057d-4832-aba0-d2ef40f6cefa', 'ash', 8, 'as-fed'),
  ('ccff0797-057d-4832-aba0-d2ef40f6cefa', 'moisture', 9, 'as-fed'),
  ('ccff0797-057d-4832-aba0-d2ef40f6cefa', 'kcal', 413, 'as-fed'),
  ('ccff0797-057d-4832-aba0-d2ef40f6cefa', 'calcium', 1.6, 'as-fed'),
  ('ccff0797-057d-4832-aba0-d2ef40f6cefa', 'phosphorus', 1.3, 'as-fed'),
  ('ccff0797-057d-4832-aba0-d2ef40f6cefa', 'omega3', 1.7, 'as-fed'),
  ('ccff0797-057d-4832-aba0-d2ef40f6cefa', 'omega6', 3.2, 'as-fed');

-- Renske — Super Premium Vers bereide Eend met konijn (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/super-premium/vers-bereide-eend-met-konijn',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 391 kcal per 100 g; geen omrekening nodig.'
 where id = '0152d475-d667-42dd-b36f-90f39ef7f8c8';
delete from public.recipe_nutrition where recipe_version_id = '0152d475-d667-42dd-b36f-90f39ef7f8c8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0152d475-d667-42dd-b36f-90f39ef7f8c8', 'protein', 25, 'as-fed'),
  ('0152d475-d667-42dd-b36f-90f39ef7f8c8', 'fat', 15, 'as-fed'),
  ('0152d475-d667-42dd-b36f-90f39ef7f8c8', 'fiber', 4, 'as-fed'),
  ('0152d475-d667-42dd-b36f-90f39ef7f8c8', 'ash', 8, 'as-fed'),
  ('0152d475-d667-42dd-b36f-90f39ef7f8c8', 'moisture', 9, 'as-fed'),
  ('0152d475-d667-42dd-b36f-90f39ef7f8c8', 'kcal', 391, 'as-fed'),
  ('0152d475-d667-42dd-b36f-90f39ef7f8c8', 'calcium', 1.3, 'as-fed'),
  ('0152d475-d667-42dd-b36f-90f39ef7f8c8', 'phosphorus', 0.9, 'as-fed'),
  ('0152d475-d667-42dd-b36f-90f39ef7f8c8', 'omega3', 1, 'as-fed'),
  ('0152d475-d667-42dd-b36f-90f39ef7f8c8', 'omega6', 2.4, 'as-fed');

-- Renske — Super Premium Vers bereide Kalkoen met eend (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/super-premium/vers-bereide-kalkoen-met-eend',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 397 kcal per 100 g; geen omrekening nodig.'
 where id = '39c0f9df-7c0b-4549-8a6d-cd53d93fcad1';
delete from public.recipe_nutrition where recipe_version_id = '39c0f9df-7c0b-4549-8a6d-cd53d93fcad1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('39c0f9df-7c0b-4549-8a6d-cd53d93fcad1', 'protein', 27, 'as-fed'),
  ('39c0f9df-7c0b-4549-8a6d-cd53d93fcad1', 'fat', 15, 'as-fed'),
  ('39c0f9df-7c0b-4549-8a6d-cd53d93fcad1', 'fiber', 2.5, 'as-fed'),
  ('39c0f9df-7c0b-4549-8a6d-cd53d93fcad1', 'ash', 8.5, 'as-fed'),
  ('39c0f9df-7c0b-4549-8a6d-cd53d93fcad1', 'moisture', 8.5, 'as-fed'),
  ('39c0f9df-7c0b-4549-8a6d-cd53d93fcad1', 'kcal', 397, 'as-fed'),
  ('39c0f9df-7c0b-4549-8a6d-cd53d93fcad1', 'calcium', 1.6, 'as-fed'),
  ('39c0f9df-7c0b-4549-8a6d-cd53d93fcad1', 'phosphorus', 1.3, 'as-fed'),
  ('39c0f9df-7c0b-4549-8a6d-cd53d93fcad1', 'omega3', 1, 'as-fed'),
  ('39c0f9df-7c0b-4549-8a6d-cd53d93fcad1', 'omega6', 2.6, 'as-fed');

-- Renske — Super Premium Vers bereide Kalkoen senior (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/super-premium/vers-bereide-kalkoen-senior',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 355,5 kcal per 100 g; geen omrekening nodig. Calcium staat op de bron als ''calcium 1,5,'' zonder %-teken; als percentage overgenomen.'
 where id = '1dfebe0a-031d-4f08-86f4-4be18465123b';
delete from public.recipe_nutrition where recipe_version_id = '1dfebe0a-031d-4f08-86f4-4be18465123b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1dfebe0a-031d-4f08-86f4-4be18465123b', 'protein', 20, 'as-fed'),
  ('1dfebe0a-031d-4f08-86f4-4be18465123b', 'fat', 7.5, 'as-fed'),
  ('1dfebe0a-031d-4f08-86f4-4be18465123b', 'fiber', 4, 'as-fed'),
  ('1dfebe0a-031d-4f08-86f4-4be18465123b', 'ash', 7.5, 'as-fed'),
  ('1dfebe0a-031d-4f08-86f4-4be18465123b', 'moisture', 9, 'as-fed'),
  ('1dfebe0a-031d-4f08-86f4-4be18465123b', 'kcal', 355.5, 'as-fed'),
  ('1dfebe0a-031d-4f08-86f4-4be18465123b', 'calcium', 1.5, 'as-fed'),
  ('1dfebe0a-031d-4f08-86f4-4be18465123b', 'phosphorus', 1, 'as-fed'),
  ('1dfebe0a-031d-4f08-86f4-4be18465123b', 'omega3', 0.72, 'as-fed'),
  ('1dfebe0a-031d-4f08-86f4-4be18465123b', 'omega6', 1.62, 'as-fed');

-- Renske — Super Premium Vers bereide Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/super-premium/vers-bereide-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 400 kcal per 100 g; geen omrekening nodig.'
 where id = '3dfe6301-1268-4ca3-ac72-657a8706092e';
delete from public.recipe_nutrition where recipe_version_id = '3dfe6301-1268-4ca3-ac72-657a8706092e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3dfe6301-1268-4ca3-ac72-657a8706092e', 'protein', 28, 'as-fed'),
  ('3dfe6301-1268-4ca3-ac72-657a8706092e', 'fat', 16, 'as-fed'),
  ('3dfe6301-1268-4ca3-ac72-657a8706092e', 'fiber', 3, 'as-fed'),
  ('3dfe6301-1268-4ca3-ac72-657a8706092e', 'ash', 8, 'as-fed'),
  ('3dfe6301-1268-4ca3-ac72-657a8706092e', 'moisture', 8.5, 'as-fed'),
  ('3dfe6301-1268-4ca3-ac72-657a8706092e', 'kcal', 400, 'as-fed'),
  ('3dfe6301-1268-4ca3-ac72-657a8706092e', 'calcium', 1.6, 'as-fed'),
  ('3dfe6301-1268-4ca3-ac72-657a8706092e', 'phosphorus', 1.2, 'as-fed'),
  ('3dfe6301-1268-4ca3-ac72-657a8706092e', 'omega3', 1.6, 'as-fed'),
  ('3dfe6301-1268-4ca3-ac72-657a8706092e', 'omega6', 2.8, 'as-fed');

-- Renske — Super Premium Vers bereide Lam (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/super-premium/vers-bereide-lam',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 384 kcal per 100 g; geen omrekening nodig.'
 where id = '4cd5dca8-eab2-48c0-b030-3f807edcb5e4';
delete from public.recipe_nutrition where recipe_version_id = '4cd5dca8-eab2-48c0-b030-3f807edcb5e4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4cd5dca8-eab2-48c0-b030-3f807edcb5e4', 'protein', 25, 'as-fed'),
  ('4cd5dca8-eab2-48c0-b030-3f807edcb5e4', 'fat', 14, 'as-fed'),
  ('4cd5dca8-eab2-48c0-b030-3f807edcb5e4', 'fiber', 3.5, 'as-fed'),
  ('4cd5dca8-eab2-48c0-b030-3f807edcb5e4', 'ash', 9, 'as-fed'),
  ('4cd5dca8-eab2-48c0-b030-3f807edcb5e4', 'moisture', 9, 'as-fed'),
  ('4cd5dca8-eab2-48c0-b030-3f807edcb5e4', 'kcal', 384, 'as-fed'),
  ('4cd5dca8-eab2-48c0-b030-3f807edcb5e4', 'calcium', 1.8, 'as-fed'),
  ('4cd5dca8-eab2-48c0-b030-3f807edcb5e4', 'phosphorus', 1.2, 'as-fed'),
  ('4cd5dca8-eab2-48c0-b030-3f807edcb5e4', 'omega3', 1.5, 'as-fed'),
  ('4cd5dca8-eab2-48c0-b030-3f807edcb5e4', 'omega6', 2.7, 'as-fed');

-- Renske — Super Premium Vers bereide Oceaanvis (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/super-premium/vers-bereide-oceaanvis',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 380 kcal per 100 g; geen omrekening nodig.'
 where id = '49b496dd-e649-43db-98fb-6a86ecd02a04';
delete from public.recipe_nutrition where recipe_version_id = '49b496dd-e649-43db-98fb-6a86ecd02a04';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('49b496dd-e649-43db-98fb-6a86ecd02a04', 'protein', 23, 'as-fed'),
  ('49b496dd-e649-43db-98fb-6a86ecd02a04', 'fat', 12, 'as-fed'),
  ('49b496dd-e649-43db-98fb-6a86ecd02a04', 'fiber', 3.5, 'as-fed'),
  ('49b496dd-e649-43db-98fb-6a86ecd02a04', 'ash', 7.5, 'as-fed'),
  ('49b496dd-e649-43db-98fb-6a86ecd02a04', 'moisture', 9, 'as-fed'),
  ('49b496dd-e649-43db-98fb-6a86ecd02a04', 'kcal', 380, 'as-fed'),
  ('49b496dd-e649-43db-98fb-6a86ecd02a04', 'calcium', 1.2, 'as-fed'),
  ('49b496dd-e649-43db-98fb-6a86ecd02a04', 'phosphorus', 1, 'as-fed'),
  ('49b496dd-e649-43db-98fb-6a86ecd02a04', 'omega3', 1.51, 'as-fed'),
  ('49b496dd-e649-43db-98fb-6a86ecd02a04', 'omega6', 2.81, 'as-fed');

-- Renske — Super Premium Vers bereide Zalm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/super-premium/vers-bereide-zalm',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 387,5 kcal per 100 g; geen omrekening nodig.'
 where id = 'b733a0e0-8e74-4ef2-987a-0c401b87a5c5';
delete from public.recipe_nutrition where recipe_version_id = 'b733a0e0-8e74-4ef2-987a-0c401b87a5c5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b733a0e0-8e74-4ef2-987a-0c401b87a5c5', 'protein', 26, 'as-fed'),
  ('b733a0e0-8e74-4ef2-987a-0c401b87a5c5', 'fat', 13.5, 'as-fed'),
  ('b733a0e0-8e74-4ef2-987a-0c401b87a5c5', 'fiber', 2.5, 'as-fed'),
  ('b733a0e0-8e74-4ef2-987a-0c401b87a5c5', 'ash', 8.5, 'as-fed'),
  ('b733a0e0-8e74-4ef2-987a-0c401b87a5c5', 'moisture', 8.5, 'as-fed'),
  ('b733a0e0-8e74-4ef2-987a-0c401b87a5c5', 'kcal', 387.5, 'as-fed'),
  ('b733a0e0-8e74-4ef2-987a-0c401b87a5c5', 'calcium', 1.4, 'as-fed'),
  ('b733a0e0-8e74-4ef2-987a-0c401b87a5c5', 'phosphorus', 0.9, 'as-fed'),
  ('b733a0e0-8e74-4ef2-987a-0c401b87a5c5', 'omega3', 3.9, 'as-fed'),
  ('b733a0e0-8e74-4ef2-987a-0c401b87a5c5', 'omega6', 0.9, 'as-fed');

-- Renske — Vers bereide Kalkoen graanvrij (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/kalkoen-graanvrij-375g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 150,1 kcal per 100 g; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'd8c2d73f-30d7-49a8-8749-27f373c2836c';
delete from public.recipe_nutrition where recipe_version_id = 'd8c2d73f-30d7-49a8-8749-27f373c2836c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d8c2d73f-30d7-49a8-8749-27f373c2836c', 'protein', 9.2, 'as-fed'),
  ('d8c2d73f-30d7-49a8-8749-27f373c2836c', 'fat', 12, 'as-fed'),
  ('d8c2d73f-30d7-49a8-8749-27f373c2836c', 'fiber', 1.2, 'as-fed'),
  ('d8c2d73f-30d7-49a8-8749-27f373c2836c', 'ash', 3.2, 'as-fed'),
  ('d8c2d73f-30d7-49a8-8749-27f373c2836c', 'moisture', 70.4, 'as-fed'),
  ('d8c2d73f-30d7-49a8-8749-27f373c2836c', 'kcal', 150.1, 'as-fed');

-- Renske — Vers bereide Kalkoen met eend (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/kalkoen-met-eend-375g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 137,3 kcal per 100 g; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '6a72fa55-5286-49e6-8fd8-005273ed5c7a';
delete from public.recipe_nutrition where recipe_version_id = '6a72fa55-5286-49e6-8fd8-005273ed5c7a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6a72fa55-5286-49e6-8fd8-005273ed5c7a', 'protein', 10.2, 'as-fed'),
  ('6a72fa55-5286-49e6-8fd8-005273ed5c7a', 'fat', 10.8, 'as-fed'),
  ('6a72fa55-5286-49e6-8fd8-005273ed5c7a', 'fiber', 1, 'as-fed'),
  ('6a72fa55-5286-49e6-8fd8-005273ed5c7a', 'ash', 1.7, 'as-fed'),
  ('6a72fa55-5286-49e6-8fd8-005273ed5c7a', 'moisture', 74.2, 'as-fed'),
  ('6a72fa55-5286-49e6-8fd8-005273ed5c7a', 'kcal', 137.3, 'as-fed');

-- Renske — Vers bereide Kip graanvrij (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/kip-graanvrij-375g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 106,2 kcal per 100 g; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'ac8a46be-beab-4a42-a345-c4781d372e4f';
delete from public.recipe_nutrition where recipe_version_id = 'ac8a46be-beab-4a42-a345-c4781d372e4f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ac8a46be-beab-4a42-a345-c4781d372e4f', 'protein', 10.2, 'as-fed'),
  ('ac8a46be-beab-4a42-a345-c4781d372e4f', 'fat', 7.2, 'as-fed'),
  ('ac8a46be-beab-4a42-a345-c4781d372e4f', 'fiber', 0.8, 'as-fed'),
  ('ac8a46be-beab-4a42-a345-c4781d372e4f', 'ash', 2.5, 'as-fed'),
  ('ac8a46be-beab-4a42-a345-c4781d372e4f', 'moisture', 77.7, 'as-fed'),
  ('ac8a46be-beab-4a42-a345-c4781d372e4f', 'kcal', 106.2, 'as-fed');

-- Renske — Vers bereide Kip met rund (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/kip-met-rund-375g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 105,6 kcal per 100 g; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '6e21fda6-d29a-42d6-bfda-b435ab377b09';
delete from public.recipe_nutrition where recipe_version_id = '6e21fda6-d29a-42d6-bfda-b435ab377b09';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6e21fda6-d29a-42d6-bfda-b435ab377b09', 'protein', 10.7, 'as-fed'),
  ('6e21fda6-d29a-42d6-bfda-b435ab377b09', 'fat', 5.8, 'as-fed'),
  ('6e21fda6-d29a-42d6-bfda-b435ab377b09', 'fiber', 1, 'as-fed'),
  ('6e21fda6-d29a-42d6-bfda-b435ab377b09', 'ash', 2.7, 'as-fed'),
  ('6e21fda6-d29a-42d6-bfda-b435ab377b09', 'moisture', 75.6, 'as-fed'),
  ('6e21fda6-d29a-42d6-bfda-b435ab377b09', 'kcal', 105.6, 'as-fed');

-- Renske — Vers bereide Konijn met eend (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/konijn-met-eend-375g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 97,8 kcal per 100 g; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'ddc6f40e-0384-402a-acab-417f86dd1a7a';
delete from public.recipe_nutrition where recipe_version_id = 'ddc6f40e-0384-402a-acab-417f86dd1a7a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ddc6f40e-0384-402a-acab-417f86dd1a7a', 'protein', 9.8, 'as-fed'),
  ('ddc6f40e-0384-402a-acab-417f86dd1a7a', 'fat', 6.8, 'as-fed'),
  ('ddc6f40e-0384-402a-acab-417f86dd1a7a', 'fiber', 1, 'as-fed'),
  ('ddc6f40e-0384-402a-acab-417f86dd1a7a', 'ash', 1.5, 'as-fed'),
  ('ddc6f40e-0384-402a-acab-417f86dd1a7a', 'moisture', 79.9, 'as-fed'),
  ('ddc6f40e-0384-402a-acab-417f86dd1a7a', 'kcal', 97.8, 'as-fed');

-- Renske — Vers bereide Lam graanvrij (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/lam-graanvrij-375g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 106 kcal per 100 g; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '13d0e4ea-7c60-459f-9dc7-920c24d117a6';
delete from public.recipe_nutrition where recipe_version_id = '13d0e4ea-7c60-459f-9dc7-920c24d117a6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('13d0e4ea-7c60-459f-9dc7-920c24d117a6', 'protein', 12.1, 'as-fed'),
  ('13d0e4ea-7c60-459f-9dc7-920c24d117a6', 'fat', 5.4, 'as-fed'),
  ('13d0e4ea-7c60-459f-9dc7-920c24d117a6', 'fiber', 1.1, 'as-fed'),
  ('13d0e4ea-7c60-459f-9dc7-920c24d117a6', 'ash', 1.8, 'as-fed'),
  ('13d0e4ea-7c60-459f-9dc7-920c24d117a6', 'moisture', 75.8, 'as-fed'),
  ('13d0e4ea-7c60-459f-9dc7-920c24d117a6', 'kcal', 106, 'as-fed');

-- Renske — Vers bereide Lam graanvrij 95g (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/lam-graanvrij-95g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 100,2 kcal per 100 g; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'e745a784-01fe-42ae-8c05-9a143e2f12d9';
delete from public.recipe_nutrition where recipe_version_id = 'e745a784-01fe-42ae-8c05-9a143e2f12d9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e745a784-01fe-42ae-8c05-9a143e2f12d9', 'protein', 10.4, 'as-fed'),
  ('e745a784-01fe-42ae-8c05-9a143e2f12d9', 'fat', 5, 'as-fed'),
  ('e745a784-01fe-42ae-8c05-9a143e2f12d9', 'fiber', 0.8, 'as-fed'),
  ('e745a784-01fe-42ae-8c05-9a143e2f12d9', 'ash', 1.6, 'as-fed'),
  ('e745a784-01fe-42ae-8c05-9a143e2f12d9', 'moisture', 78.8, 'as-fed'),
  ('e745a784-01fe-42ae-8c05-9a143e2f12d9', 'kcal', 100.2, 'as-fed');

-- Renske — Vers bereide Oceaanvis (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/oceaanvis-375g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 74,5 kcal per 100 g; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '92e32009-7b20-4a5b-b216-76a298db5114';
delete from public.recipe_nutrition where recipe_version_id = '92e32009-7b20-4a5b-b216-76a298db5114';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('92e32009-7b20-4a5b-b216-76a298db5114', 'protein', 10.4, 'as-fed'),
  ('92e32009-7b20-4a5b-b216-76a298db5114', 'fat', 2.2, 'as-fed'),
  ('92e32009-7b20-4a5b-b216-76a298db5114', 'fiber', 1.1, 'as-fed'),
  ('92e32009-7b20-4a5b-b216-76a298db5114', 'ash', 1.7, 'as-fed'),
  ('92e32009-7b20-4a5b-b216-76a298db5114', 'moisture', 80, 'as-fed'),
  ('92e32009-7b20-4a5b-b216-76a298db5114', 'kcal', 74.5, 'as-fed');

-- Renske — Vers bereide Puppy Kip met lam (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/puppy-kip-lam-375g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 116 kcal per 100 g; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'cab7de42-51b9-4e41-a076-ee4de7abb120';
delete from public.recipe_nutrition where recipe_version_id = 'cab7de42-51b9-4e41-a076-ee4de7abb120';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('cab7de42-51b9-4e41-a076-ee4de7abb120', 'protein', 12.4, 'as-fed'),
  ('cab7de42-51b9-4e41-a076-ee4de7abb120', 'fat', 6.3, 'as-fed'),
  ('cab7de42-51b9-4e41-a076-ee4de7abb120', 'fiber', 0.8, 'as-fed'),
  ('cab7de42-51b9-4e41-a076-ee4de7abb120', 'ash', 2.8, 'as-fed'),
  ('cab7de42-51b9-4e41-a076-ee4de7abb120', 'moisture', 74.1, 'as-fed'),
  ('cab7de42-51b9-4e41-a076-ee4de7abb120', 'kcal', 116, 'as-fed');

-- Renske — Vers bereide Puppy Kip met lam 95g (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/puppy-kip-lam-95g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 105,9 kcal per 100 g; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'a5fead75-f5fe-4164-850c-1d6843a716a7';
delete from public.recipe_nutrition where recipe_version_id = 'a5fead75-f5fe-4164-850c-1d6843a716a7';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a5fead75-f5fe-4164-850c-1d6843a716a7', 'protein', 10.7, 'as-fed'),
  ('a5fead75-f5fe-4164-850c-1d6843a716a7', 'fat', 5.5, 'as-fed'),
  ('a5fead75-f5fe-4164-850c-1d6843a716a7', 'fiber', 0.6, 'as-fed'),
  ('a5fead75-f5fe-4164-850c-1d6843a716a7', 'ash', 2.4, 'as-fed'),
  ('a5fead75-f5fe-4164-850c-1d6843a716a7', 'moisture', 77.4, 'as-fed'),
  ('a5fead75-f5fe-4164-850c-1d6843a716a7', 'kcal', 105.9, 'as-fed');

-- Renske — Vers bereide Rund met eend (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/rund-met-eend-375g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 98,3 kcal per 100 g; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'a8b0dfcb-2d70-48f0-95a5-56d5ee744823';
delete from public.recipe_nutrition where recipe_version_id = 'a8b0dfcb-2d70-48f0-95a5-56d5ee744823';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a8b0dfcb-2d70-48f0-95a5-56d5ee744823', 'protein', 8.2, 'as-fed'),
  ('a8b0dfcb-2d70-48f0-95a5-56d5ee744823', 'fat', 7, 'as-fed'),
  ('a8b0dfcb-2d70-48f0-95a5-56d5ee744823', 'fiber', 1, 'as-fed'),
  ('a8b0dfcb-2d70-48f0-95a5-56d5ee744823', 'ash', 1.9, 'as-fed'),
  ('a8b0dfcb-2d70-48f0-95a5-56d5ee744823', 'moisture', 79.4, 'as-fed'),
  ('a8b0dfcb-2d70-48f0-95a5-56d5ee744823', 'kcal', 98.3, 'as-fed');

-- Renske — Vers bereide Zalm graanvrij (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/zalm-graanvrij-375g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 132,8 kcal per 100 g; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'e9008525-7d3e-45cc-8c4c-ff1027c249a8';
delete from public.recipe_nutrition where recipe_version_id = 'e9008525-7d3e-45cc-8c4c-ff1027c249a8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e9008525-7d3e-45cc-8c4c-ff1027c249a8', 'protein', 10.5, 'as-fed'),
  ('e9008525-7d3e-45cc-8c4c-ff1027c249a8', 'fat', 12.1, 'as-fed'),
  ('e9008525-7d3e-45cc-8c4c-ff1027c249a8', 'fiber', 1, 'as-fed'),
  ('e9008525-7d3e-45cc-8c4c-ff1027c249a8', 'ash', 1.4, 'as-fed'),
  ('e9008525-7d3e-45cc-8c4c-ff1027c249a8', 'moisture', 77.2, 'as-fed'),
  ('e9008525-7d3e-45cc-8c4c-ff1027c249a8', 'kcal', 132.8, 'as-fed');

-- Renske — Vers gestoomde Eend met hert graanvrij (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/eend-met-hert-graanvrij-395g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 114,4 kcal per 100 g; geen omrekening nodig. Fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '9bd2022f-729b-4fe3-b700-5fd99043b6a6';
delete from public.recipe_nutrition where recipe_version_id = '9bd2022f-729b-4fe3-b700-5fd99043b6a6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9bd2022f-729b-4fe3-b700-5fd99043b6a6', 'protein', 10, 'as-fed'),
  ('9bd2022f-729b-4fe3-b700-5fd99043b6a6', 'fat', 7.5, 'as-fed'),
  ('9bd2022f-729b-4fe3-b700-5fd99043b6a6', 'fiber', 2, 'as-fed'),
  ('9bd2022f-729b-4fe3-b700-5fd99043b6a6', 'ash', 4, 'as-fed'),
  ('9bd2022f-729b-4fe3-b700-5fd99043b6a6', 'moisture', 72, 'as-fed'),
  ('9bd2022f-729b-4fe3-b700-5fd99043b6a6', 'kcal', 114.4, 'as-fed'),
  ('9bd2022f-729b-4fe3-b700-5fd99043b6a6', 'calcium', 0.62, 'as-fed');

-- Renske — Vers gestoomde Eend met konijn (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/eend-met-konijn-395g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 166 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'c52b751d-95dc-4bca-84d7-0239e35d3e75';
delete from public.recipe_nutrition where recipe_version_id = 'c52b751d-95dc-4bca-84d7-0239e35d3e75';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c52b751d-95dc-4bca-84d7-0239e35d3e75', 'protein', 12.2, 'as-fed'),
  ('c52b751d-95dc-4bca-84d7-0239e35d3e75', 'fat', 11.2, 'as-fed'),
  ('c52b751d-95dc-4bca-84d7-0239e35d3e75', 'fiber', 0.5, 'as-fed'),
  ('c52b751d-95dc-4bca-84d7-0239e35d3e75', 'ash', 3, 'as-fed'),
  ('c52b751d-95dc-4bca-84d7-0239e35d3e75', 'moisture', 69, 'as-fed'),
  ('c52b751d-95dc-4bca-84d7-0239e35d3e75', 'kcal', 166, 'as-fed'),
  ('c52b751d-95dc-4bca-84d7-0239e35d3e75', 'calcium', 0.62, 'as-fed'),
  ('c52b751d-95dc-4bca-84d7-0239e35d3e75', 'phosphorus', 0.47, 'as-fed');

-- Renske — Vers gestoomde Kalkoen graanvrij (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/kalkoen-graanvrij-395g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 155,2 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '79d12997-8193-458f-b7d5-3204d710f711';
delete from public.recipe_nutrition where recipe_version_id = '79d12997-8193-458f-b7d5-3204d710f711';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('79d12997-8193-458f-b7d5-3204d710f711', 'protein', 10.5, 'as-fed'),
  ('79d12997-8193-458f-b7d5-3204d710f711', 'fat', 10, 'as-fed'),
  ('79d12997-8193-458f-b7d5-3204d710f711', 'fiber', 0.7, 'as-fed'),
  ('79d12997-8193-458f-b7d5-3204d710f711', 'ash', 3, 'as-fed'),
  ('79d12997-8193-458f-b7d5-3204d710f711', 'moisture', 70, 'as-fed'),
  ('79d12997-8193-458f-b7d5-3204d710f711', 'kcal', 155.2, 'as-fed'),
  ('79d12997-8193-458f-b7d5-3204d710f711', 'calcium', 0.62, 'as-fed'),
  ('79d12997-8193-458f-b7d5-3204d710f711', 'phosphorus', 0.47, 'as-fed');

-- Renske — Vers gestoomde Kalkoen met eend (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/kalkoen-met-eend-395g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 161 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '9b6ceaaa-e74d-481f-9a50-5f3e062dbef0';
delete from public.recipe_nutrition where recipe_version_id = '9b6ceaaa-e74d-481f-9a50-5f3e062dbef0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9b6ceaaa-e74d-481f-9a50-5f3e062dbef0', 'protein', 12, 'as-fed'),
  ('9b6ceaaa-e74d-481f-9a50-5f3e062dbef0', 'fat', 11, 'as-fed'),
  ('9b6ceaaa-e74d-481f-9a50-5f3e062dbef0', 'fiber', 0.5, 'as-fed'),
  ('9b6ceaaa-e74d-481f-9a50-5f3e062dbef0', 'ash', 3, 'as-fed'),
  ('9b6ceaaa-e74d-481f-9a50-5f3e062dbef0', 'moisture', 70, 'as-fed'),
  ('9b6ceaaa-e74d-481f-9a50-5f3e062dbef0', 'kcal', 161, 'as-fed'),
  ('9b6ceaaa-e74d-481f-9a50-5f3e062dbef0', 'calcium', 0.62, 'as-fed'),
  ('9b6ceaaa-e74d-481f-9a50-5f3e062dbef0', 'phosphorus', 0.47, 'as-fed');

-- Renske — Vers gestoomde Kalkoen met gans graanvrij (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/kalkoen-met-gans-graanvrij-395g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 131,1 kcal per 100 g; geen omrekening nodig. Calcium staat op de bron als ''calcium (0,62)'' zonder %-teken; als percentage overgenomen. Fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '1cd68d58-b427-4c4f-bff0-843671305525';
delete from public.recipe_nutrition where recipe_version_id = '1cd68d58-b427-4c4f-bff0-843671305525';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1cd68d58-b427-4c4f-bff0-843671305525', 'protein', 10, 'as-fed'),
  ('1cd68d58-b427-4c4f-bff0-843671305525', 'fat', 11, 'as-fed'),
  ('1cd68d58-b427-4c4f-bff0-843671305525', 'fiber', 2, 'as-fed'),
  ('1cd68d58-b427-4c4f-bff0-843671305525', 'ash', 3.5, 'as-fed'),
  ('1cd68d58-b427-4c4f-bff0-843671305525', 'moisture', 72, 'as-fed'),
  ('1cd68d58-b427-4c4f-bff0-843671305525', 'kcal', 131.1, 'as-fed'),
  ('1cd68d58-b427-4c4f-bff0-843671305525', 'calcium', 0.62, 'as-fed');

-- Renske — Vers gestoomde Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/kip-395g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 173,5 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '58f8def8-0622-4b6f-a709-095640469e1f';
delete from public.recipe_nutrition where recipe_version_id = '58f8def8-0622-4b6f-a709-095640469e1f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('58f8def8-0622-4b6f-a709-095640469e1f', 'protein', 12, 'as-fed'),
  ('58f8def8-0622-4b6f-a709-095640469e1f', 'fat', 13.5, 'as-fed'),
  ('58f8def8-0622-4b6f-a709-095640469e1f', 'fiber', 0.5, 'as-fed'),
  ('58f8def8-0622-4b6f-a709-095640469e1f', 'ash', 3, 'as-fed'),
  ('58f8def8-0622-4b6f-a709-095640469e1f', 'moisture', 70, 'as-fed'),
  ('58f8def8-0622-4b6f-a709-095640469e1f', 'kcal', 173.5, 'as-fed'),
  ('58f8def8-0622-4b6f-a709-095640469e1f', 'calcium', 0.62, 'as-fed'),
  ('58f8def8-0622-4b6f-a709-095640469e1f', 'phosphorus', 0.47, 'as-fed');

-- Renske — Vers gestoomde Kip graanvrij (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/kip-graanvrij-395g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 150,5 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '2bba00c8-822c-42e9-a8a0-fc3bbb6144a6';
delete from public.recipe_nutrition where recipe_version_id = '2bba00c8-822c-42e9-a8a0-fc3bbb6144a6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2bba00c8-822c-42e9-a8a0-fc3bbb6144a6', 'protein', 11, 'as-fed'),
  ('2bba00c8-822c-42e9-a8a0-fc3bbb6144a6', 'fat', 10.5, 'as-fed'),
  ('2bba00c8-822c-42e9-a8a0-fc3bbb6144a6', 'fiber', 0.5, 'as-fed'),
  ('2bba00c8-822c-42e9-a8a0-fc3bbb6144a6', 'ash', 3, 'as-fed'),
  ('2bba00c8-822c-42e9-a8a0-fc3bbb6144a6', 'moisture', 72, 'as-fed'),
  ('2bba00c8-822c-42e9-a8a0-fc3bbb6144a6', 'kcal', 150.5, 'as-fed'),
  ('2bba00c8-822c-42e9-a8a0-fc3bbb6144a6', 'calcium', 0.62, 'as-fed'),
  ('2bba00c8-822c-42e9-a8a0-fc3bbb6144a6', 'phosphorus', 0.47, 'as-fed');

-- Renske — Vers gestoomde Lam graanvrij (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/lam-graanvrij-395g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 151,4 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '2cf60fa6-d2b2-456b-9c4b-cc739b1908b3';
delete from public.recipe_nutrition where recipe_version_id = '2cf60fa6-d2b2-456b-9c4b-cc739b1908b3';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2cf60fa6-d2b2-456b-9c4b-cc739b1908b3', 'protein', 10, 'as-fed'),
  ('2cf60fa6-d2b2-456b-9c4b-cc739b1908b3', 'fat', 11, 'as-fed'),
  ('2cf60fa6-d2b2-456b-9c4b-cc739b1908b3', 'fiber', 0.4, 'as-fed'),
  ('2cf60fa6-d2b2-456b-9c4b-cc739b1908b3', 'ash', 3.5, 'as-fed'),
  ('2cf60fa6-d2b2-456b-9c4b-cc739b1908b3', 'moisture', 72, 'as-fed'),
  ('2cf60fa6-d2b2-456b-9c4b-cc739b1908b3', 'kcal', 151.4, 'as-fed'),
  ('2cf60fa6-d2b2-456b-9c4b-cc739b1908b3', 'calcium', 0.62, 'as-fed'),
  ('2cf60fa6-d2b2-456b-9c4b-cc739b1908b3', 'phosphorus', 0.47, 'as-fed');

-- Renske — Vers gestoomde Oceaanvis (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/oceaanvis-395',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 121 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'fc6f40af-2f7b-4f60-bd43-5bc815ba74ba';
delete from public.recipe_nutrition where recipe_version_id = 'fc6f40af-2f7b-4f60-bd43-5bc815ba74ba';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fc6f40af-2f7b-4f60-bd43-5bc815ba74ba', 'protein', 11.5, 'as-fed'),
  ('fc6f40af-2f7b-4f60-bd43-5bc815ba74ba', 'fat', 7, 'as-fed'),
  ('fc6f40af-2f7b-4f60-bd43-5bc815ba74ba', 'fiber', 0.5, 'as-fed'),
  ('fc6f40af-2f7b-4f60-bd43-5bc815ba74ba', 'ash', 3, 'as-fed'),
  ('fc6f40af-2f7b-4f60-bd43-5bc815ba74ba', 'moisture', 75, 'as-fed'),
  ('fc6f40af-2f7b-4f60-bd43-5bc815ba74ba', 'kcal', 121, 'as-fed'),
  ('fc6f40af-2f7b-4f60-bd43-5bc815ba74ba', 'calcium', 0.62, 'as-fed'),
  ('fc6f40af-2f7b-4f60-bd43-5bc815ba74ba', 'phosphorus', 0.47, 'as-fed');

-- Renske — Vers gestoomde Puppy Kip met lam (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/puppy-kip-lam-395g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 153 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '14099775-4f1b-403b-a0b8-a5ae2b92384d';
delete from public.recipe_nutrition where recipe_version_id = '14099775-4f1b-403b-a0b8-a5ae2b92384d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('14099775-4f1b-403b-a0b8-a5ae2b92384d', 'protein', 12, 'as-fed'),
  ('14099775-4f1b-403b-a0b8-a5ae2b92384d', 'fat', 11, 'as-fed'),
  ('14099775-4f1b-403b-a0b8-a5ae2b92384d', 'fiber', 0.5, 'as-fed'),
  ('14099775-4f1b-403b-a0b8-a5ae2b92384d', 'ash', 3, 'as-fed'),
  ('14099775-4f1b-403b-a0b8-a5ae2b92384d', 'moisture', 72, 'as-fed'),
  ('14099775-4f1b-403b-a0b8-a5ae2b92384d', 'kcal', 153, 'as-fed'),
  ('14099775-4f1b-403b-a0b8-a5ae2b92384d', 'calcium', 0.62, 'as-fed'),
  ('14099775-4f1b-403b-a0b8-a5ae2b92384d', 'phosphorus', 0.47, 'as-fed');

-- Renske — Vers gestoomde Zalm graanvrij (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/zalm-graanvrij-395g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 111,5 kcal per 100 g; geen omrekening nodig. Omega-3 staat op de bron als ''Omega-3 (1,5%)''. Omega-6 wordt niet vermeld.'
 where id = 'e4af66af-2ca9-473a-b517-8da9e182a164';
delete from public.recipe_nutrition where recipe_version_id = 'e4af66af-2ca9-473a-b517-8da9e182a164';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e4af66af-2ca9-473a-b517-8da9e182a164', 'protein', 11.4, 'as-fed'),
  ('e4af66af-2ca9-473a-b517-8da9e182a164', 'fat', 5.5, 'as-fed'),
  ('e4af66af-2ca9-473a-b517-8da9e182a164', 'fiber', 1, 'as-fed'),
  ('e4af66af-2ca9-473a-b517-8da9e182a164', 'ash', 3, 'as-fed'),
  ('e4af66af-2ca9-473a-b517-8da9e182a164', 'moisture', 75, 'as-fed'),
  ('e4af66af-2ca9-473a-b517-8da9e182a164', 'kcal', 111.5, 'as-fed'),
  ('e4af66af-2ca9-473a-b517-8da9e182a164', 'calcium', 0.62, 'as-fed'),
  ('e4af66af-2ca9-473a-b517-8da9e182a164', 'phosphorus', 0.47, 'as-fed'),
  ('e4af66af-2ca9-473a-b517-8da9e182a164', 'omega3', 1.5, 'as-fed');

-- Renske — Vers Ingevroren Kalkoen (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/renske-vers-ingevroren/kalkoen-600g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 181,6 kcal per 100 g; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'aca8c824-7a45-4ae7-8e86-55e3543877d4';
delete from public.recipe_nutrition where recipe_version_id = 'aca8c824-7a45-4ae7-8e86-55e3543877d4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('aca8c824-7a45-4ae7-8e86-55e3543877d4', 'protein', 13.1, 'as-fed'),
  ('aca8c824-7a45-4ae7-8e86-55e3543877d4', 'fat', 12.7, 'as-fed'),
  ('aca8c824-7a45-4ae7-8e86-55e3543877d4', 'fiber', 0.6, 'as-fed'),
  ('aca8c824-7a45-4ae7-8e86-55e3543877d4', 'ash', 1.2, 'as-fed'),
  ('aca8c824-7a45-4ae7-8e86-55e3543877d4', 'moisture', 68.7, 'as-fed'),
  ('aca8c824-7a45-4ae7-8e86-55e3543877d4', 'kcal', 181.6, 'as-fed');

-- Renske — Vers Ingevroren Kip & Rund (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.renske.com/nl/producten/hondenvoer/renske-vers-ingevroren/kip-rund-600g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 165,7 kcal per 100 g; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '4de5dead-5de6-46a5-8baf-294dc1ab4407';
delete from public.recipe_nutrition where recipe_version_id = '4de5dead-5de6-46a5-8baf-294dc1ab4407';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4de5dead-5de6-46a5-8baf-294dc1ab4407', 'protein', 13.7, 'as-fed'),
  ('4de5dead-5de6-46a5-8baf-294dc1ab4407', 'fat', 11.3, 'as-fed'),
  ('4de5dead-5de6-46a5-8baf-294dc1ab4407', 'fiber', 0.7, 'as-fed'),
  ('4de5dead-5de6-46a5-8baf-294dc1ab4407', 'ash', 1.9, 'as-fed'),
  ('4de5dead-5de6-46a5-8baf-294dc1ab4407', 'moisture', 70, 'as-fed'),
  ('4de5dead-5de6-46a5-8baf-294dc1ab4407', 'kcal', 165.7, 'as-fed');

commit;
