begin;

-- Hill's Prescription Diet — a/d Urgent Care Hondenvoer met Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-ad-urgent-care-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,51%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,89%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 1.297 kcal/kg omgerekend naar 129,7 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 259 kcal/blik.'
 where id = 'f22d33dd-37af-43bd-b1b3-1ef793e8c7d6';
delete from public.recipe_nutrition where recipe_version_id = 'f22d33dd-37af-43bd-b1b3-1ef793e8c7d6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f22d33dd-37af-43bd-b1b3-1ef793e8c7d6', 'protein', 13.1, 'as-fed'),
  ('f22d33dd-37af-43bd-b1b3-1ef793e8c7d6', 'fat', 8.6, 'as-fed'),
  ('f22d33dd-37af-43bd-b1b3-1ef793e8c7d6', 'fiber', 0.33, 'as-fed'),
  ('f22d33dd-37af-43bd-b1b3-1ef793e8c7d6', 'ash', 2.2, 'as-fed'),
  ('f22d33dd-37af-43bd-b1b3-1ef793e8c7d6', 'moisture', 72.7, 'as-fed'),
  ('f22d33dd-37af-43bd-b1b3-1ef793e8c7d6', 'kcal', 129.7, 'as-fed'),
  ('f22d33dd-37af-43bd-b1b3-1ef793e8c7d6', 'calcium', 0.29, 'as-fed'),
  ('f22d33dd-37af-43bd-b1b3-1ef793e8c7d6', 'phosphorus', 0.27, 'as-fed'),
  ('f22d33dd-37af-43bd-b1b3-1ef793e8c7d6', 'omega3', 0.51, 'as-fed'),
  ('f22d33dd-37af-43bd-b1b3-1ef793e8c7d6', 'omega6', 0.89, 'as-fed');

-- Hill's Prescription Diet — b/d Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-bd-aging-care-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,9%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (3,32%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.588 kcal/kg als 359 kcal/100 g; 359 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '8be17da6-7b24-434a-9d30-9d667aaddbbd';
delete from public.recipe_nutrition where recipe_version_id = '8be17da6-7b24-434a-9d30-9d667aaddbbd';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8be17da6-7b24-434a-9d30-9d667aaddbbd', 'protein', 17.2, 'as-fed'),
  ('8be17da6-7b24-434a-9d30-9d667aaddbbd', 'fat', 13.7, 'as-fed'),
  ('8be17da6-7b24-434a-9d30-9d667aaddbbd', 'fiber', 4.8, 'as-fed'),
  ('8be17da6-7b24-434a-9d30-9d667aaddbbd', 'ash', 4.3, 'as-fed'),
  ('8be17da6-7b24-434a-9d30-9d667aaddbbd', 'moisture', 8, 'as-fed'),
  ('8be17da6-7b24-434a-9d30-9d667aaddbbd', 'kcal', 359, 'as-fed'),
  ('8be17da6-7b24-434a-9d30-9d667aaddbbd', 'calcium', 0.63, 'as-fed'),
  ('8be17da6-7b24-434a-9d30-9d667aaddbbd', 'phosphorus', 0.53, 'as-fed'),
  ('8be17da6-7b24-434a-9d30-9d667aaddbbd', 'omega3', 0.9, 'as-fed'),
  ('8be17da6-7b24-434a-9d30-9d667aaddbbd', 'omega6', 3.32, 'as-fed');

-- Hill's Prescription Diet — c/d Multicare + Metabolic Hondenvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-cd-multicare-metabolicy-urinary-care-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht wordt op deze pagina niet vermeld en blijft null. Omega-3 (0,76%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 wordt op deze pagina niet vermeld en blijft null. De pagina vermeldt zowel 3.102 kcal/kg als 310 kcal/100 g; 310 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = 'd367a325-c469-4bf1-b20f-a94839a2213a';
delete from public.recipe_nutrition where recipe_version_id = 'd367a325-c469-4bf1-b20f-a94839a2213a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d367a325-c469-4bf1-b20f-a94839a2213a', 'protein', 25.6, 'as-fed'),
  ('d367a325-c469-4bf1-b20f-a94839a2213a', 'fat', 10.8, 'as-fed'),
  ('d367a325-c469-4bf1-b20f-a94839a2213a', 'fiber', 13.2, 'as-fed'),
  ('d367a325-c469-4bf1-b20f-a94839a2213a', 'ash', 5.1, 'as-fed'),
  ('d367a325-c469-4bf1-b20f-a94839a2213a', 'kcal', 310, 'as-fed'),
  ('d367a325-c469-4bf1-b20f-a94839a2213a', 'calcium', 0.74, 'as-fed'),
  ('d367a325-c469-4bf1-b20f-a94839a2213a', 'phosphorus', 0.53, 'as-fed'),
  ('d367a325-c469-4bf1-b20f-a94839a2213a', 'omega3', 0.76, 'as-fed');

-- Hill's Prescription Diet — c/d Multicare Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-cd-multicare-urinary-care-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,7%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 wordt op deze pagina niet vermeld en blijft null. De pagina vermeldt zowel 3.770 kcal/kg als 377 kcal/100 g; 377 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = 'd887abf5-1d9a-4b84-9605-6c1326913743';
delete from public.recipe_nutrition where recipe_version_id = 'd887abf5-1d9a-4b84-9605-6c1326913743';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d887abf5-1d9a-4b84-9605-6c1326913743', 'protein', 20, 'as-fed'),
  ('d887abf5-1d9a-4b84-9605-6c1326913743', 'fat', 15.3, 'as-fed'),
  ('d887abf5-1d9a-4b84-9605-6c1326913743', 'fiber', 1.8, 'as-fed'),
  ('d887abf5-1d9a-4b84-9605-6c1326913743', 'ash', 4.4, 'as-fed'),
  ('d887abf5-1d9a-4b84-9605-6c1326913743', 'moisture', 8, 'as-fed'),
  ('d887abf5-1d9a-4b84-9605-6c1326913743', 'kcal', 377, 'as-fed'),
  ('d887abf5-1d9a-4b84-9605-6c1326913743', 'calcium', 0.61, 'as-fed'),
  ('d887abf5-1d9a-4b84-9605-6c1326913743', 'phosphorus', 0.48, 'as-fed'),
  ('d887abf5-1d9a-4b84-9605-6c1326913743', 'omega3', 0.7, 'as-fed');

-- Hill's Prescription Diet — c/d Multicare Natvoer voor Honden met Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-cd-multicare-urinary-care-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,26%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (1,36%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 1.236 kcal/kg omgerekend naar 123,6 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 457 kcal/blik.'
 where id = '3e2a4475-0516-4563-b132-4b1b9ca01db9';
delete from public.recipe_nutrition where recipe_version_id = '3e2a4475-0516-4563-b132-4b1b9ca01db9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3e2a4475-0516-4563-b132-4b1b9ca01db9', 'protein', 6.9, 'as-fed'),
  ('3e2a4475-0516-4563-b132-4b1b9ca01db9', 'fat', 5.4, 'as-fed'),
  ('3e2a4475-0516-4563-b132-4b1b9ca01db9', 'fiber', 0.89, 'as-fed'),
  ('3e2a4475-0516-4563-b132-4b1b9ca01db9', 'ash', 1.6, 'as-fed'),
  ('3e2a4475-0516-4563-b132-4b1b9ca01db9', 'moisture', 70.2, 'as-fed'),
  ('3e2a4475-0516-4563-b132-4b1b9ca01db9', 'kcal', 123.6, 'as-fed'),
  ('3e2a4475-0516-4563-b132-4b1b9ca01db9', 'calcium', 0.25, 'as-fed'),
  ('3e2a4475-0516-4563-b132-4b1b9ca01db9', 'phosphorus', 0.15, 'as-fed'),
  ('3e2a4475-0516-4563-b132-4b1b9ca01db9', 'omega3', 0.26, 'as-fed'),
  ('3e2a4475-0516-4563-b132-4b1b9ca01db9', 'omega6', 1.36, 'as-fed');

-- Hill's Prescription Diet — c/d Multicare Stoofpotje voor Honden met Kip & toegevoegde Groenten (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-cd-multicare-chicken-vegetable-stew-urinary-care-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,15%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,83%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 752 kcal/kg omgerekend naar 75,2 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 266 kcal/blik.'
 where id = 'cbe55c87-62cd-4bc4-bbf0-0b8ba46e1839';
delete from public.recipe_nutrition where recipe_version_id = 'cbe55c87-62cd-4bc4-bbf0-0b8ba46e1839';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('cbe55c87-62cd-4bc4-bbf0-0b8ba46e1839', 'protein', 4.3, 'as-fed'),
  ('cbe55c87-62cd-4bc4-bbf0-0b8ba46e1839', 'fat', 3.4, 'as-fed'),
  ('cbe55c87-62cd-4bc4-bbf0-0b8ba46e1839', 'fiber', 0.94, 'as-fed'),
  ('cbe55c87-62cd-4bc4-bbf0-0b8ba46e1839', 'ash', 1, 'as-fed'),
  ('cbe55c87-62cd-4bc4-bbf0-0b8ba46e1839', 'moisture', 81.3, 'as-fed'),
  ('cbe55c87-62cd-4bc4-bbf0-0b8ba46e1839', 'kcal', 75.2, 'as-fed'),
  ('cbe55c87-62cd-4bc4-bbf0-0b8ba46e1839', 'calcium', 0.16, 'as-fed'),
  ('cbe55c87-62cd-4bc4-bbf0-0b8ba46e1839', 'phosphorus', 0.1, 'as-fed'),
  ('cbe55c87-62cd-4bc4-bbf0-0b8ba46e1839', 'omega3', 0.15, 'as-fed'),
  ('cbe55c87-62cd-4bc4-bbf0-0b8ba46e1839', 'omega6', 0.83, 'as-fed');

-- Hill's Prescription Diet — d/d Hondenvoer met Eend & Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-dd-duck-rice-skin-care-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (3,08%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.713 kcal/kg als 371 kcal/100 g; 371 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '8defc527-871d-4692-918c-39fa26749db2';
delete from public.recipe_nutrition where recipe_version_id = '8defc527-871d-4692-918c-39fa26749db2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8defc527-871d-4692-918c-39fa26749db2', 'protein', 15.1, 'as-fed'),
  ('8defc527-871d-4692-918c-39fa26749db2', 'fat', 14.3, 'as-fed'),
  ('8defc527-871d-4692-918c-39fa26749db2', 'fiber', 1.2, 'as-fed'),
  ('8defc527-871d-4692-918c-39fa26749db2', 'ash', 5.1, 'as-fed'),
  ('8defc527-871d-4692-918c-39fa26749db2', 'moisture', 8, 'as-fed'),
  ('8defc527-871d-4692-918c-39fa26749db2', 'kcal', 371, 'as-fed'),
  ('8defc527-871d-4692-918c-39fa26749db2', 'calcium', 0.88, 'as-fed'),
  ('8defc527-871d-4692-918c-39fa26749db2', 'phosphorus', 0.61, 'as-fed'),
  ('8defc527-871d-4692-918c-39fa26749db2', 'omega3', 0.7, 'as-fed'),
  ('8defc527-871d-4692-918c-39fa26749db2', 'omega6', 3.08, 'as-fed');

-- Hill's Prescription Diet — d/d Natvoer voor Honden Eend (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-dd-duck-skin-care-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,2%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,76%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 1.050 kcal/kg omgerekend naar 105 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 388 kcal/blik.'
 where id = '055e71f2-b1bf-4a12-98a7-9d11e00ea15f';
delete from public.recipe_nutrition where recipe_version_id = '055e71f2-b1bf-4a12-98a7-9d11e00ea15f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('055e71f2-b1bf-4a12-98a7-9d11e00ea15f', 'protein', 4.9, 'as-fed'),
  ('055e71f2-b1bf-4a12-98a7-9d11e00ea15f', 'fat', 4.6, 'as-fed'),
  ('055e71f2-b1bf-4a12-98a7-9d11e00ea15f', 'fiber', 0.44, 'as-fed'),
  ('055e71f2-b1bf-4a12-98a7-9d11e00ea15f', 'ash', 1.2, 'as-fed'),
  ('055e71f2-b1bf-4a12-98a7-9d11e00ea15f', 'moisture', 74, 'as-fed'),
  ('055e71f2-b1bf-4a12-98a7-9d11e00ea15f', 'kcal', 105, 'as-fed'),
  ('055e71f2-b1bf-4a12-98a7-9d11e00ea15f', 'calcium', 0.21, 'as-fed'),
  ('055e71f2-b1bf-4a12-98a7-9d11e00ea15f', 'phosphorus', 0.16, 'as-fed'),
  ('055e71f2-b1bf-4a12-98a7-9d11e00ea15f', 'omega3', 0.2, 'as-fed'),
  ('055e71f2-b1bf-4a12-98a7-9d11e00ea15f', 'omega6', 0.76, 'as-fed');

-- Hill's Prescription Diet — Derm Complete Puppyvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-derm-complete-puppy-original-skin-care-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.720 kcal/kg als 372 kcal/100 g; 372 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '807ecbf4-0f74-4461-acbf-7e0a09b74093';
delete from public.recipe_nutrition where recipe_version_id = '807ecbf4-0f74-4461-acbf-7e0a09b74093';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('807ecbf4-0f74-4461-acbf-7e0a09b74093', 'protein', 23.4, 'as-fed'),
  ('807ecbf4-0f74-4461-acbf-7e0a09b74093', 'fat', 16.2, 'as-fed'),
  ('807ecbf4-0f74-4461-acbf-7e0a09b74093', 'fiber', 1.3, 'as-fed'),
  ('807ecbf4-0f74-4461-acbf-7e0a09b74093', 'ash', 7.1, 'as-fed'),
  ('807ecbf4-0f74-4461-acbf-7e0a09b74093', 'moisture', 8, 'as-fed'),
  ('807ecbf4-0f74-4461-acbf-7e0a09b74093', 'kcal', 372, 'as-fed'),
  ('807ecbf4-0f74-4461-acbf-7e0a09b74093', 'calcium', 1.1, 'as-fed'),
  ('807ecbf4-0f74-4461-acbf-7e0a09b74093', 'phosphorus', 0.94, 'as-fed'),
  ('807ecbf4-0f74-4461-acbf-7e0a09b74093', 'omega3', 1.8, 'as-fed'),
  ('807ecbf4-0f74-4461-acbf-7e0a09b74093', 'omega6', 3.6, 'as-fed');

-- Hill's Prescription Diet — Derm Defense Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-derm-defense-skin-care-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.748 kcal/kg als 375 kcal/100 g; 375 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = 'f130c925-a50e-4bbc-a8b3-b41288c4f141';
delete from public.recipe_nutrition where recipe_version_id = 'f130c925-a50e-4bbc-a8b3-b41288c4f141';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f130c925-a50e-4bbc-a8b3-b41288c4f141', 'protein', 20.8, 'as-fed'),
  ('f130c925-a50e-4bbc-a8b3-b41288c4f141', 'fat', 15.3, 'as-fed'),
  ('f130c925-a50e-4bbc-a8b3-b41288c4f141', 'fiber', 1.5, 'as-fed'),
  ('f130c925-a50e-4bbc-a8b3-b41288c4f141', 'ash', 4.8, 'as-fed'),
  ('f130c925-a50e-4bbc-a8b3-b41288c4f141', 'moisture', 8, 'as-fed'),
  ('f130c925-a50e-4bbc-a8b3-b41288c4f141', 'kcal', 375, 'as-fed'),
  ('f130c925-a50e-4bbc-a8b3-b41288c4f141', 'calcium', 0.67, 'as-fed'),
  ('f130c925-a50e-4bbc-a8b3-b41288c4f141', 'phosphorus', 0.53, 'as-fed'),
  ('f130c925-a50e-4bbc-a8b3-b41288c4f141', 'omega3', 1.6, 'as-fed'),
  ('f130c925-a50e-4bbc-a8b3-b41288c4f141', 'omega6', 3.9, 'as-fed');

-- Hill's Prescription Diet — Gastrointestinal Biome Digestive Care Natvoer voor Honden met Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-gastrointestinal-biome-digestive-care-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,28%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,57%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 966 kcal/kg omgerekend naar 96,6 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 357 kcal/blik.'
 where id = 'e1396c7e-e49a-4704-a661-1a2033bee11d';
delete from public.recipe_nutrition where recipe_version_id = 'e1396c7e-e49a-4704-a661-1a2033bee11d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e1396c7e-e49a-4704-a661-1a2033bee11d', 'protein', 5.1, 'as-fed'),
  ('e1396c7e-e49a-4704-a661-1a2033bee11d', 'fat', 3.6, 'as-fed'),
  ('e1396c7e-e49a-4704-a661-1a2033bee11d', 'fiber', 1.9, 'as-fed'),
  ('e1396c7e-e49a-4704-a661-1a2033bee11d', 'ash', 1.9, 'as-fed'),
  ('e1396c7e-e49a-4704-a661-1a2033bee11d', 'moisture', 74, 'as-fed'),
  ('e1396c7e-e49a-4704-a661-1a2033bee11d', 'kcal', 96.6, 'as-fed'),
  ('e1396c7e-e49a-4704-a661-1a2033bee11d', 'calcium', 0.29, 'as-fed'),
  ('e1396c7e-e49a-4704-a661-1a2033bee11d', 'phosphorus', 0.17, 'as-fed'),
  ('e1396c7e-e49a-4704-a661-1a2033bee11d', 'omega3', 0.28, 'as-fed'),
  ('e1396c7e-e49a-4704-a661-1a2033bee11d', 'omega6', 0.57, 'as-fed');

-- Hill's Prescription Diet — Gastrointestinal Biome Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-gastrointestinal-biome-digestive-care-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (1,24%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (3,24%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.430 kcal/kg als 343 kcal/100 g; 343 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '0b386a20-41ad-4228-af88-50cf42c2d8ce';
delete from public.recipe_nutrition where recipe_version_id = '0b386a20-41ad-4228-af88-50cf42c2d8ce';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0b386a20-41ad-4228-af88-50cf42c2d8ce', 'protein', 21.3, 'as-fed'),
  ('0b386a20-41ad-4228-af88-50cf42c2d8ce', 'fat', 13.2, 'as-fed'),
  ('0b386a20-41ad-4228-af88-50cf42c2d8ce', 'fiber', 7, 'as-fed'),
  ('0b386a20-41ad-4228-af88-50cf42c2d8ce', 'ash', 5.9, 'as-fed'),
  ('0b386a20-41ad-4228-af88-50cf42c2d8ce', 'moisture', 8, 'as-fed'),
  ('0b386a20-41ad-4228-af88-50cf42c2d8ce', 'kcal', 343, 'as-fed'),
  ('0b386a20-41ad-4228-af88-50cf42c2d8ce', 'calcium', 0.95, 'as-fed'),
  ('0b386a20-41ad-4228-af88-50cf42c2d8ce', 'phosphorus', 0.65, 'as-fed'),
  ('0b386a20-41ad-4228-af88-50cf42c2d8ce', 'omega3', 1.24, 'as-fed'),
  ('0b386a20-41ad-4228-af88-50cf42c2d8ce', 'omega6', 3.24, 'as-fed');

-- Hill's Prescription Diet — Gastrointestinal Biome Mini Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-gastrointestinal-biome-small-bites-digestive-care-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (1,24%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (3,24%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.430 kcal/kg als 343 kcal/100 g; 343 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '60760e6d-7256-42cc-8fe1-1bb4ee02495e';
delete from public.recipe_nutrition where recipe_version_id = '60760e6d-7256-42cc-8fe1-1bb4ee02495e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('60760e6d-7256-42cc-8fe1-1bb4ee02495e', 'protein', 21.4, 'as-fed'),
  ('60760e6d-7256-42cc-8fe1-1bb4ee02495e', 'fat', 13.2, 'as-fed'),
  ('60760e6d-7256-42cc-8fe1-1bb4ee02495e', 'fiber', 6.9, 'as-fed'),
  ('60760e6d-7256-42cc-8fe1-1bb4ee02495e', 'ash', 5.9, 'as-fed'),
  ('60760e6d-7256-42cc-8fe1-1bb4ee02495e', 'moisture', 8, 'as-fed'),
  ('60760e6d-7256-42cc-8fe1-1bb4ee02495e', 'kcal', 343, 'as-fed'),
  ('60760e6d-7256-42cc-8fe1-1bb4ee02495e', 'calcium', 0.96, 'as-fed'),
  ('60760e6d-7256-42cc-8fe1-1bb4ee02495e', 'phosphorus', 0.66, 'as-fed'),
  ('60760e6d-7256-42cc-8fe1-1bb4ee02495e', 'omega3', 1.24, 'as-fed'),
  ('60760e6d-7256-42cc-8fe1-1bb4ee02495e', 'omega6', 3.24, 'as-fed');

-- Hill's Prescription Diet — Gastrointestinal Biome Stoofpotje voor Honden met Kip & toegevoegde Wortelen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-gastrointestinal-biome-chicken-vegetable-stew-digestive-care-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 wordt op deze pagina niet vermeld en blijft null. Omega-6 (0,68%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 812 kcal/kg omgerekend naar 81,2 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 287 kcal/blik.'
 where id = 'b8e7b370-38b0-494e-a7a2-7bc3a0187b30';
delete from public.recipe_nutrition where recipe_version_id = 'b8e7b370-38b0-494e-a7a2-7bc3a0187b30';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b8e7b370-38b0-494e-a7a2-7bc3a0187b30', 'protein', 5.4, 'as-fed'),
  ('b8e7b370-38b0-494e-a7a2-7bc3a0187b30', 'fat', 3.2, 'as-fed'),
  ('b8e7b370-38b0-494e-a7a2-7bc3a0187b30', 'fiber', 1.6, 'as-fed'),
  ('b8e7b370-38b0-494e-a7a2-7bc3a0187b30', 'ash', 1.4, 'as-fed'),
  ('b8e7b370-38b0-494e-a7a2-7bc3a0187b30', 'moisture', 78.5, 'as-fed'),
  ('b8e7b370-38b0-494e-a7a2-7bc3a0187b30', 'kcal', 81.2, 'as-fed'),
  ('b8e7b370-38b0-494e-a7a2-7bc3a0187b30', 'calcium', 0.23, 'as-fed'),
  ('b8e7b370-38b0-494e-a7a2-7bc3a0187b30', 'phosphorus', 0.12, 'as-fed'),
  ('b8e7b370-38b0-494e-a7a2-7bc3a0187b30', 'omega6', 0.68, 'as-fed');

-- Hill's Prescription Diet — i/d Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-id-digestive-care-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (9%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,37%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (3,03%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.566 kcal/kg als 357 kcal/100 g; 357 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = 'e0c0364d-b23e-4d83-b63b-71860a0facb0';
delete from public.recipe_nutrition where recipe_version_id = 'e0c0364d-b23e-4d83-b63b-71860a0facb0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e0c0364d-b23e-4d83-b63b-71860a0facb0', 'protein', 23.3, 'as-fed'),
  ('e0c0364d-b23e-4d83-b63b-71860a0facb0', 'fat', 13.1, 'as-fed'),
  ('e0c0364d-b23e-4d83-b63b-71860a0facb0', 'fiber', 2.3, 'as-fed'),
  ('e0c0364d-b23e-4d83-b63b-71860a0facb0', 'ash', 6.1, 'as-fed'),
  ('e0c0364d-b23e-4d83-b63b-71860a0facb0', 'moisture', 9, 'as-fed'),
  ('e0c0364d-b23e-4d83-b63b-71860a0facb0', 'kcal', 357, 'as-fed'),
  ('e0c0364d-b23e-4d83-b63b-71860a0facb0', 'calcium', 0.98, 'as-fed'),
  ('e0c0364d-b23e-4d83-b63b-71860a0facb0', 'phosphorus', 0.71, 'as-fed'),
  ('e0c0364d-b23e-4d83-b63b-71860a0facb0', 'omega3', 0.37, 'as-fed'),
  ('e0c0364d-b23e-4d83-b63b-71860a0facb0', 'omega6', 3.03, 'as-fed');

-- Hill's Prescription Diet — i/d Low Fat Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-id-low-fat-digestive-care-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (1,64%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.348 kcal/kg als 335 kcal/100 g; 335 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '4263cce4-4023-4d69-8ada-68c84b19adc7';
delete from public.recipe_nutrition where recipe_version_id = '4263cce4-4023-4d69-8ada-68c84b19adc7';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4263cce4-4023-4d69-8ada-68c84b19adc7', 'protein', 23.8, 'as-fed'),
  ('4263cce4-4023-4d69-8ada-68c84b19adc7', 'fat', 8.2, 'as-fed'),
  ('4263cce4-4023-4d69-8ada-68c84b19adc7', 'fiber', 2.1, 'as-fed'),
  ('4263cce4-4023-4d69-8ada-68c84b19adc7', 'ash', 5.4, 'as-fed'),
  ('4263cce4-4023-4d69-8ada-68c84b19adc7', 'moisture', 8, 'as-fed'),
  ('4263cce4-4023-4d69-8ada-68c84b19adc7', 'kcal', 335, 'as-fed'),
  ('4263cce4-4023-4d69-8ada-68c84b19adc7', 'calcium', 0.8, 'as-fed'),
  ('4263cce4-4023-4d69-8ada-68c84b19adc7', 'phosphorus', 0.59, 'as-fed'),
  ('4263cce4-4023-4d69-8ada-68c84b19adc7', 'omega3', 0.5, 'as-fed'),
  ('4263cce4-4023-4d69-8ada-68c84b19adc7', 'omega6', 1.64, 'as-fed');

-- Hill's Prescription Diet — i/d Low Fat Natvoer voor Honden (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-id-low-fat-digestive-care-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,16%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,63%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 949 kcal/kg omgerekend naar 94,9 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 341 kcal/blik.'
 where id = '3a714073-e9c9-411d-8dc1-61be12c1ba2b';
delete from public.recipe_nutrition where recipe_version_id = '3a714073-e9c9-411d-8dc1-61be12c1ba2b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3a714073-e9c9-411d-8dc1-61be12c1ba2b', 'protein', 6.5, 'as-fed'),
  ('3a714073-e9c9-411d-8dc1-61be12c1ba2b', 'fat', 2.1, 'as-fed'),
  ('3a714073-e9c9-411d-8dc1-61be12c1ba2b', 'fiber', 0.52, 'as-fed'),
  ('3a714073-e9c9-411d-8dc1-61be12c1ba2b', 'ash', 1.5, 'as-fed'),
  ('3a714073-e9c9-411d-8dc1-61be12c1ba2b', 'moisture', 74.3, 'as-fed'),
  ('3a714073-e9c9-411d-8dc1-61be12c1ba2b', 'kcal', 94.9, 'as-fed'),
  ('3a714073-e9c9-411d-8dc1-61be12c1ba2b', 'calcium', 0.2, 'as-fed'),
  ('3a714073-e9c9-411d-8dc1-61be12c1ba2b', 'phosphorus', 0.14, 'as-fed'),
  ('3a714073-e9c9-411d-8dc1-61be12c1ba2b', 'omega3', 0.16, 'as-fed'),
  ('3a714073-e9c9-411d-8dc1-61be12c1ba2b', 'omega6', 0.63, 'as-fed');

-- Hill's Prescription Diet — i/d Low Fat Stoofpotje voor Honden met Kipsmaak & Groenten (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-id-low-fat-rice-vegetable-chicken-stew-digestive-care-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,12%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,54%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 787 kcal/kg omgerekend naar 78,7 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 278 kcal/blik.'
 where id = 'f88fb6f2-46ad-4c46-9362-4f8402e61106';
delete from public.recipe_nutrition where recipe_version_id = 'f88fb6f2-46ad-4c46-9362-4f8402e61106';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f88fb6f2-46ad-4c46-9362-4f8402e61106', 'protein', 5, 'as-fed'),
  ('f88fb6f2-46ad-4c46-9362-4f8402e61106', 'fat', 1.9, 'as-fed'),
  ('f88fb6f2-46ad-4c46-9362-4f8402e61106', 'fiber', 0.41, 'as-fed'),
  ('f88fb6f2-46ad-4c46-9362-4f8402e61106', 'ash', 1.4, 'as-fed'),
  ('f88fb6f2-46ad-4c46-9362-4f8402e61106', 'moisture', 78.4, 'as-fed'),
  ('f88fb6f2-46ad-4c46-9362-4f8402e61106', 'kcal', 78.7, 'as-fed'),
  ('f88fb6f2-46ad-4c46-9362-4f8402e61106', 'calcium', 0.19, 'as-fed'),
  ('f88fb6f2-46ad-4c46-9362-4f8402e61106', 'phosphorus', 0.13, 'as-fed'),
  ('f88fb6f2-46ad-4c46-9362-4f8402e61106', 'omega3', 0.12, 'as-fed'),
  ('f88fb6f2-46ad-4c46-9362-4f8402e61106', 'omega6', 0.54, 'as-fed');

-- Hill's Prescription Diet — i/d Natvoer voor Honden met Kalkoen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-id-digestive-care-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,15%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,68%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 1.018 kcal/kg omgerekend naar 101,8 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 366 kcal/blik.'
 where id = '04c881c4-7d72-468e-8e06-dd440e990868';
delete from public.recipe_nutrition where recipe_version_id = '04c881c4-7d72-468e-8e06-dd440e990868';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('04c881c4-7d72-468e-8e06-dd440e990868', 'protein', 6.6, 'as-fed'),
  ('04c881c4-7d72-468e-8e06-dd440e990868', 'fat', 4, 'as-fed'),
  ('04c881c4-7d72-468e-8e06-dd440e990868', 'fiber', 0.49, 'as-fed'),
  ('04c881c4-7d72-468e-8e06-dd440e990868', 'ash', 1.8, 'as-fed'),
  ('04c881c4-7d72-468e-8e06-dd440e990868', 'moisture', 74.4, 'as-fed'),
  ('04c881c4-7d72-468e-8e06-dd440e990868', 'kcal', 101.8, 'as-fed'),
  ('04c881c4-7d72-468e-8e06-dd440e990868', 'calcium', 0.29, 'as-fed'),
  ('04c881c4-7d72-468e-8e06-dd440e990868', 'phosphorus', 0.2, 'as-fed'),
  ('04c881c4-7d72-468e-8e06-dd440e990868', 'omega3', 0.15, 'as-fed'),
  ('04c881c4-7d72-468e-8e06-dd440e990868', 'omega6', 0.68, 'as-fed');

-- Hill's Prescription Diet — i/d Puppyvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-id-puppy-chicken-digestive-care-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,77%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (2,63%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.769 kcal/kg als 377 kcal/100 g; 377 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = 'e0eb38bc-4d54-40ad-8df8-88701c0d5bfd';
delete from public.recipe_nutrition where recipe_version_id = 'e0eb38bc-4d54-40ad-8df8-88701c0d5bfd';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e0eb38bc-4d54-40ad-8df8-88701c0d5bfd', 'protein', 28.1, 'as-fed'),
  ('e0eb38bc-4d54-40ad-8df8-88701c0d5bfd', 'fat', 17.2, 'as-fed'),
  ('e0eb38bc-4d54-40ad-8df8-88701c0d5bfd', 'fiber', 1.9, 'as-fed'),
  ('e0eb38bc-4d54-40ad-8df8-88701c0d5bfd', 'ash', 6.6, 'as-fed'),
  ('e0eb38bc-4d54-40ad-8df8-88701c0d5bfd', 'moisture', 8, 'as-fed'),
  ('e0eb38bc-4d54-40ad-8df8-88701c0d5bfd', 'kcal', 377, 'as-fed'),
  ('e0eb38bc-4d54-40ad-8df8-88701c0d5bfd', 'calcium', 1.1, 'as-fed'),
  ('e0eb38bc-4d54-40ad-8df8-88701c0d5bfd', 'phosphorus', 0.85, 'as-fed'),
  ('e0eb38bc-4d54-40ad-8df8-88701c0d5bfd', 'omega3', 0.77, 'as-fed'),
  ('e0eb38bc-4d54-40ad-8df8-88701c0d5bfd', 'omega6', 2.63, 'as-fed');

-- Hill's Prescription Diet — i/d Puppyvoer Natvoer (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-id-puppy-chicken-digestive-care-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,14%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,76%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 1.083 kcal/kg omgerekend naar 108,3 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 216 kcal/blik.'
 where id = '3562c63c-7555-4d58-baca-32f130c02f37';
delete from public.recipe_nutrition where recipe_version_id = '3562c63c-7555-4d58-baca-32f130c02f37';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3562c63c-7555-4d58-baca-32f130c02f37', 'protein', 7.7, 'as-fed'),
  ('3562c63c-7555-4d58-baca-32f130c02f37', 'fat', 5.3, 'as-fed'),
  ('3562c63c-7555-4d58-baca-32f130c02f37', 'fiber', 0.45, 'as-fed'),
  ('3562c63c-7555-4d58-baca-32f130c02f37', 'ash', 1.8, 'as-fed'),
  ('3562c63c-7555-4d58-baca-32f130c02f37', 'moisture', 74.4, 'as-fed'),
  ('3562c63c-7555-4d58-baca-32f130c02f37', 'kcal', 108.3, 'as-fed'),
  ('3562c63c-7555-4d58-baca-32f130c02f37', 'calcium', 0.27, 'as-fed'),
  ('3562c63c-7555-4d58-baca-32f130c02f37', 'phosphorus', 0.26, 'as-fed'),
  ('3562c63c-7555-4d58-baca-32f130c02f37', 'omega3', 0.14, 'as-fed'),
  ('3562c63c-7555-4d58-baca-32f130c02f37', 'omega6', 0.76, 'as-fed');

-- Hill's Prescription Diet — i/d Sensitive Hondenvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-id-sensitive-digestive-care-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,43%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (2,89%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.806 kcal/kg als 381 kcal/100 g; 381 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '95734da0-0227-4259-a027-c37a8bbe3bc4';
delete from public.recipe_nutrition where recipe_version_id = '95734da0-0227-4259-a027-c37a8bbe3bc4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('95734da0-0227-4259-a027-c37a8bbe3bc4', 'protein', 24, 'as-fed'),
  ('95734da0-0227-4259-a027-c37a8bbe3bc4', 'fat', 18.3, 'as-fed'),
  ('95734da0-0227-4259-a027-c37a8bbe3bc4', 'fiber', 3.1, 'as-fed'),
  ('95734da0-0227-4259-a027-c37a8bbe3bc4', 'ash', 5.8, 'as-fed'),
  ('95734da0-0227-4259-a027-c37a8bbe3bc4', 'moisture', 8, 'as-fed'),
  ('95734da0-0227-4259-a027-c37a8bbe3bc4', 'kcal', 381, 'as-fed'),
  ('95734da0-0227-4259-a027-c37a8bbe3bc4', 'calcium', 0.71, 'as-fed'),
  ('95734da0-0227-4259-a027-c37a8bbe3bc4', 'phosphorus', 0.58, 'as-fed'),
  ('95734da0-0227-4259-a027-c37a8bbe3bc4', 'omega3', 0.43, 'as-fed'),
  ('95734da0-0227-4259-a027-c37a8bbe3bc4', 'omega6', 2.89, 'as-fed');

-- Hill's Prescription Diet — i/d Stoofpotje voor Honden (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-id-chicken-vegetable-stew-digestive-care-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 wordt op deze pagina niet vermeld en blijft null. Omega-6 (0,58%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 780 kcal/kg omgerekend naar 78 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 276 kcal/blik.'
 where id = '80b70aba-9b9c-42a1-9d1c-70786e173555';
delete from public.recipe_nutrition where recipe_version_id = '80b70aba-9b9c-42a1-9d1c-70786e173555';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('80b70aba-9b9c-42a1-9d1c-70786e173555', 'protein', 5.2, 'as-fed'),
  ('80b70aba-9b9c-42a1-9d1c-70786e173555', 'fat', 3.1, 'as-fed'),
  ('80b70aba-9b9c-42a1-9d1c-70786e173555', 'fiber', 0.37, 'as-fed'),
  ('80b70aba-9b9c-42a1-9d1c-70786e173555', 'ash', 1.4, 'as-fed'),
  ('80b70aba-9b9c-42a1-9d1c-70786e173555', 'moisture', 80.5, 'as-fed'),
  ('80b70aba-9b9c-42a1-9d1c-70786e173555', 'kcal', 78, 'as-fed'),
  ('80b70aba-9b9c-42a1-9d1c-70786e173555', 'calcium', 0.18, 'as-fed'),
  ('80b70aba-9b9c-42a1-9d1c-70786e173555', 'phosphorus', 0.14, 'as-fed'),
  ('80b70aba-9b9c-42a1-9d1c-70786e173555', 'omega6', 0.58, 'as-fed');

-- Hill's Prescription Diet — i/d Stress Mini Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-id-stress-mini-chicken-digestive-care-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (9%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (1,74%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.345 kcal/kg als 335 kcal/100 g; 335 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '07bddc59-8bdd-45f5-a3bd-94aa2428daf6';
delete from public.recipe_nutrition where recipe_version_id = '07bddc59-8bdd-45f5-a3bd-94aa2428daf6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('07bddc59-8bdd-45f5-a3bd-94aa2428daf6', 'protein', 23.9, 'as-fed'),
  ('07bddc59-8bdd-45f5-a3bd-94aa2428daf6', 'fat', 8.1, 'as-fed'),
  ('07bddc59-8bdd-45f5-a3bd-94aa2428daf6', 'fiber', 2.2, 'as-fed'),
  ('07bddc59-8bdd-45f5-a3bd-94aa2428daf6', 'ash', 5.5, 'as-fed'),
  ('07bddc59-8bdd-45f5-a3bd-94aa2428daf6', 'moisture', 9, 'as-fed'),
  ('07bddc59-8bdd-45f5-a3bd-94aa2428daf6', 'kcal', 335, 'as-fed'),
  ('07bddc59-8bdd-45f5-a3bd-94aa2428daf6', 'calcium', 0.81, 'as-fed'),
  ('07bddc59-8bdd-45f5-a3bd-94aa2428daf6', 'phosphorus', 0.59, 'as-fed'),
  ('07bddc59-8bdd-45f5-a3bd-94aa2428daf6', 'omega3', 0.7, 'as-fed'),
  ('07bddc59-8bdd-45f5-a3bd-94aa2428daf6', 'omega6', 1.74, 'as-fed');

-- Hill's Prescription Diet — i/d Stress Mini Stoofpotje voor Honden met Kipsmaak & Groenten (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-id-stress-rice-vegetable-chicken-stew-digestive-care-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,12%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,51%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 787 kcal/kg omgerekend naar 78,7 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 122 kcal/blik.'
 where id = 'e33726f7-2eb8-4249-85b0-ad1d45ca8379';
delete from public.recipe_nutrition where recipe_version_id = 'e33726f7-2eb8-4249-85b0-ad1d45ca8379';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e33726f7-2eb8-4249-85b0-ad1d45ca8379', 'protein', 5.1, 'as-fed'),
  ('e33726f7-2eb8-4249-85b0-ad1d45ca8379', 'fat', 1.9, 'as-fed'),
  ('e33726f7-2eb8-4249-85b0-ad1d45ca8379', 'fiber', 0.39, 'as-fed'),
  ('e33726f7-2eb8-4249-85b0-ad1d45ca8379', 'ash', 1.4, 'as-fed'),
  ('e33726f7-2eb8-4249-85b0-ad1d45ca8379', 'moisture', 78.4, 'as-fed'),
  ('e33726f7-2eb8-4249-85b0-ad1d45ca8379', 'kcal', 78.7, 'as-fed'),
  ('e33726f7-2eb8-4249-85b0-ad1d45ca8379', 'calcium', 0.19, 'as-fed'),
  ('e33726f7-2eb8-4249-85b0-ad1d45ca8379', 'phosphorus', 0.13, 'as-fed'),
  ('e33726f7-2eb8-4249-85b0-ad1d45ca8379', 'omega3', 0.12, 'as-fed'),
  ('e33726f7-2eb8-4249-85b0-ad1d45ca8379', 'omega6', 0.51, 'as-fed');

-- Hill's Prescription Diet — i/d Stress Natvoer voor Honden Met Kipsmaak (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-id-stress-mini-chicken-digestive-care-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,16%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,63%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 948 kcal/kg omgerekend naar 94,8 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 189 kcal/blik.'
 where id = '1e5350c7-3916-49c7-aa61-2ba408059482';
delete from public.recipe_nutrition where recipe_version_id = '1e5350c7-3916-49c7-aa61-2ba408059482';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1e5350c7-3916-49c7-aa61-2ba408059482', 'protein', 6.5, 'as-fed'),
  ('1e5350c7-3916-49c7-aa61-2ba408059482', 'fat', 2.1, 'as-fed'),
  ('1e5350c7-3916-49c7-aa61-2ba408059482', 'fiber', 0.52, 'as-fed'),
  ('1e5350c7-3916-49c7-aa61-2ba408059482', 'ash', 1.6, 'as-fed'),
  ('1e5350c7-3916-49c7-aa61-2ba408059482', 'moisture', 74.3, 'as-fed'),
  ('1e5350c7-3916-49c7-aa61-2ba408059482', 'kcal', 94.8, 'as-fed'),
  ('1e5350c7-3916-49c7-aa61-2ba408059482', 'calcium', 0.2, 'as-fed'),
  ('1e5350c7-3916-49c7-aa61-2ba408059482', 'phosphorus', 0.14, 'as-fed'),
  ('1e5350c7-3916-49c7-aa61-2ba408059482', 'omega3', 0.16, 'as-fed'),
  ('1e5350c7-3916-49c7-aa61-2ba408059482', 'omega6', 0.63, 'as-fed');

-- Hill's Prescription Diet — j/d Hondenvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-jd-joint-care-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (2,25%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.618 kcal/kg als 362 kcal/100 g; 362 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '1d98ea89-c719-49cc-9c65-95605767e99c';
delete from public.recipe_nutrition where recipe_version_id = '1d98ea89-c719-49cc-9c65-95605767e99c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1d98ea89-c719-49cc-9c65-95605767e99c', 'protein', 18.2, 'as-fed'),
  ('1d98ea89-c719-49cc-9c65-95605767e99c', 'fat', 15.2, 'as-fed'),
  ('1d98ea89-c719-49cc-9c65-95605767e99c', 'fiber', 5.7, 'as-fed'),
  ('1d98ea89-c719-49cc-9c65-95605767e99c', 'ash', 4.8, 'as-fed'),
  ('1d98ea89-c719-49cc-9c65-95605767e99c', 'moisture', 8, 'as-fed'),
  ('1d98ea89-c719-49cc-9c65-95605767e99c', 'kcal', 362, 'as-fed'),
  ('1d98ea89-c719-49cc-9c65-95605767e99c', 'calcium', 0.73, 'as-fed'),
  ('1d98ea89-c719-49cc-9c65-95605767e99c', 'phosphorus', 0.56, 'as-fed'),
  ('1d98ea89-c719-49cc-9c65-95605767e99c', 'omega3', 3.3, 'as-fed'),
  ('1d98ea89-c719-49cc-9c65-95605767e99c', 'omega6', 2.25, 'as-fed');

-- Hill's Prescription Diet — j/d Natvoer voor Honden met Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-jd-joint-care-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-6 (0,9%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 912 kcal/kg omgerekend naar 91,2 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 337 kcal/blik.'
 where id = 'b7078049-49eb-4d19-ab08-0c1b9c05c537';
delete from public.recipe_nutrition where recipe_version_id = 'b7078049-49eb-4d19-ab08-0c1b9c05c537';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b7078049-49eb-4d19-ab08-0c1b9c05c537', 'protein', 5.8, 'as-fed'),
  ('b7078049-49eb-4d19-ab08-0c1b9c05c537', 'fat', 5.5, 'as-fed'),
  ('b7078049-49eb-4d19-ab08-0c1b9c05c537', 'fiber', 1.3, 'as-fed'),
  ('b7078049-49eb-4d19-ab08-0c1b9c05c537', 'ash', 1.5, 'as-fed'),
  ('b7078049-49eb-4d19-ab08-0c1b9c05c537', 'moisture', 71.6, 'as-fed'),
  ('b7078049-49eb-4d19-ab08-0c1b9c05c537', 'kcal', 91.2, 'as-fed'),
  ('b7078049-49eb-4d19-ab08-0c1b9c05c537', 'calcium', 0.2, 'as-fed'),
  ('b7078049-49eb-4d19-ab08-0c1b9c05c537', 'phosphorus', 0.15, 'as-fed'),
  ('b7078049-49eb-4d19-ab08-0c1b9c05c537', 'omega3', 1.1, 'as-fed'),
  ('b7078049-49eb-4d19-ab08-0c1b9c05c537', 'omega6', 0.9, 'as-fed');

-- Hill's Prescription Diet — j/d Reduced Calorie Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-jd-reduced-calorie-chicken-joint-care-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (2,02%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.410 kcal/kg als 341 kcal/100 g; 341 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '608acd28-ab32-400d-841d-4122589a864b';
delete from public.recipe_nutrition where recipe_version_id = '608acd28-ab32-400d-841d-4122589a864b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('608acd28-ab32-400d-841d-4122589a864b', 'protein', 21.5, 'as-fed'),
  ('608acd28-ab32-400d-841d-4122589a864b', 'fat', 12.8, 'as-fed'),
  ('608acd28-ab32-400d-841d-4122589a864b', 'fiber', 9.1, 'as-fed'),
  ('608acd28-ab32-400d-841d-4122589a864b', 'ash', 4.6, 'as-fed'),
  ('608acd28-ab32-400d-841d-4122589a864b', 'moisture', 8, 'as-fed'),
  ('608acd28-ab32-400d-841d-4122589a864b', 'kcal', 341, 'as-fed'),
  ('608acd28-ab32-400d-841d-4122589a864b', 'calcium', 0.58, 'as-fed'),
  ('608acd28-ab32-400d-841d-4122589a864b', 'phosphorus', 0.52, 'as-fed'),
  ('608acd28-ab32-400d-841d-4122589a864b', 'omega3', 2.8, 'as-fed'),
  ('608acd28-ab32-400d-841d-4122589a864b', 'omega6', 2.02, 'as-fed');

-- Hill's Prescription Diet — k/d + Mobility Hondenvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-kd-mobility-chicken-kidney-care-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (3,48%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 4.022 kcal/kg als 402 kcal/100 g; 402 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '3a431e41-0bc8-4101-929e-829a0c3c9e93';
delete from public.recipe_nutrition where recipe_version_id = '3a431e41-0bc8-4101-929e-829a0c3c9e93';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3a431e41-0bc8-4101-929e-829a0c3c9e93', 'protein', 14, 'as-fed'),
  ('3a431e41-0bc8-4101-929e-829a0c3c9e93', 'fat', 20.9, 'as-fed'),
  ('3a431e41-0bc8-4101-929e-829a0c3c9e93', 'fiber', 2.1, 'as-fed'),
  ('3a431e41-0bc8-4101-929e-829a0c3c9e93', 'ash', 4.4, 'as-fed'),
  ('3a431e41-0bc8-4101-929e-829a0c3c9e93', 'moisture', 8, 'as-fed'),
  ('3a431e41-0bc8-4101-929e-829a0c3c9e93', 'kcal', 402, 'as-fed'),
  ('3a431e41-0bc8-4101-929e-829a0c3c9e93', 'calcium', 0.62, 'as-fed'),
  ('3a431e41-0bc8-4101-929e-829a0c3c9e93', 'phosphorus', 0.28, 'as-fed'),
  ('3a431e41-0bc8-4101-929e-829a0c3c9e93', 'omega3', 3.6, 'as-fed'),
  ('3a431e41-0bc8-4101-929e-829a0c3c9e93', 'omega6', 3.48, 'as-fed');

-- Hill's Prescription Diet — k/d + Mobilty Natvoer met Kipsmaak (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-kd-mobility-kidney-care-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-6 (0,82%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 1.120 kcal/kg omgerekend naar 112 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 414 kcal/blik.'
 where id = '17eef2b9-dba5-49fe-9d28-5922def960ce';
delete from public.recipe_nutrition where recipe_version_id = '17eef2b9-dba5-49fe-9d28-5922def960ce';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('17eef2b9-dba5-49fe-9d28-5922def960ce', 'protein', 4.3, 'as-fed'),
  ('17eef2b9-dba5-49fe-9d28-5922def960ce', 'fat', 5.8, 'as-fed'),
  ('17eef2b9-dba5-49fe-9d28-5922def960ce', 'fiber', 0.91, 'as-fed'),
  ('17eef2b9-dba5-49fe-9d28-5922def960ce', 'ash', 1.4, 'as-fed'),
  ('17eef2b9-dba5-49fe-9d28-5922def960ce', 'moisture', 74, 'as-fed'),
  ('17eef2b9-dba5-49fe-9d28-5922def960ce', 'kcal', 112, 'as-fed'),
  ('17eef2b9-dba5-49fe-9d28-5922def960ce', 'calcium', 0.2, 'as-fed'),
  ('17eef2b9-dba5-49fe-9d28-5922def960ce', 'phosphorus', 0.07, 'as-fed'),
  ('17eef2b9-dba5-49fe-9d28-5922def960ce', 'omega3', 1, 'as-fed'),
  ('17eef2b9-dba5-49fe-9d28-5922def960ce', 'omega6', 0.82, 'as-fed');

-- Hill's Prescription Diet — k/d Kidney Care Hondenvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-kd-kidney-care-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (3,65%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 4.021 kcal/kg als 402 kcal/100 g; 402 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = 'f87fb4e8-0880-460f-bf4f-20547ce0392f';
delete from public.recipe_nutrition where recipe_version_id = 'f87fb4e8-0880-460f-bf4f-20547ce0392f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f87fb4e8-0880-460f-bf4f-20547ce0392f', 'protein', 13.9, 'as-fed'),
  ('f87fb4e8-0880-460f-bf4f-20547ce0392f', 'fat', 20.5, 'as-fed'),
  ('f87fb4e8-0880-460f-bf4f-20547ce0392f', 'fiber', 1.5, 'as-fed'),
  ('f87fb4e8-0880-460f-bf4f-20547ce0392f', 'ash', 4.4, 'as-fed'),
  ('f87fb4e8-0880-460f-bf4f-20547ce0392f', 'moisture', 8, 'as-fed'),
  ('f87fb4e8-0880-460f-bf4f-20547ce0392f', 'kcal', 402, 'as-fed'),
  ('f87fb4e8-0880-460f-bf4f-20547ce0392f', 'calcium', 0.63, 'as-fed'),
  ('f87fb4e8-0880-460f-bf4f-20547ce0392f', 'phosphorus', 0.27, 'as-fed'),
  ('f87fb4e8-0880-460f-bf4f-20547ce0392f', 'omega3', 1.1, 'as-fed'),
  ('f87fb4e8-0880-460f-bf4f-20547ce0392f', 'omega6', 3.65, 'as-fed');

-- Hill's Prescription Diet — k/d Kidney Care Natvoer voor Honden (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-kd-kidney-care-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,29%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (1,54%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 1.213 kcal/kg omgerekend naar 121,3 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 448 kcal/blik.'
 where id = '8bb4c09e-6df8-441f-be2a-3e3ad2d58b9e';
delete from public.recipe_nutrition where recipe_version_id = '8bb4c09e-6df8-441f-be2a-3e3ad2d58b9e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8bb4c09e-6df8-441f-be2a-3e3ad2d58b9e', 'protein', 4.2, 'as-fed'),
  ('8bb4c09e-6df8-441f-be2a-3e3ad2d58b9e', 'fat', 6.8, 'as-fed'),
  ('8bb4c09e-6df8-441f-be2a-3e3ad2d58b9e', 'fiber', 0.47, 'as-fed'),
  ('8bb4c09e-6df8-441f-be2a-3e3ad2d58b9e', 'ash', 1.4, 'as-fed'),
  ('8bb4c09e-6df8-441f-be2a-3e3ad2d58b9e', 'moisture', 73.2, 'as-fed'),
  ('8bb4c09e-6df8-441f-be2a-3e3ad2d58b9e', 'kcal', 121.3, 'as-fed'),
  ('8bb4c09e-6df8-441f-be2a-3e3ad2d58b9e', 'calcium', 0.2, 'as-fed'),
  ('8bb4c09e-6df8-441f-be2a-3e3ad2d58b9e', 'phosphorus', 0.07, 'as-fed'),
  ('8bb4c09e-6df8-441f-be2a-3e3ad2d58b9e', 'omega3', 0.29, 'as-fed'),
  ('8bb4c09e-6df8-441f-be2a-3e3ad2d58b9e', 'omega6', 1.54, 'as-fed');

-- Hill's Prescription Diet — k/d Kidney Care Stoofpotje voor Honden met Kip & toegevoegde Groenten (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-kd-chicken-vegetable-stew-kidney-care-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,38%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 wordt op deze pagina niet vermeld en blijft null. Metaboliseerbare energie 995 kcal/kg omgerekend naar 99,5 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 352 kcal/blik.'
 where id = '5683d951-ef14-4dc6-baa5-b11f60374e06';
delete from public.recipe_nutrition where recipe_version_id = '5683d951-ef14-4dc6-baa5-b11f60374e06';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5683d951-ef14-4dc6-baa5-b11f60374e06', 'protein', 3.6, 'as-fed'),
  ('5683d951-ef14-4dc6-baa5-b11f60374e06', 'fat', 5.5, 'as-fed'),
  ('5683d951-ef14-4dc6-baa5-b11f60374e06', 'fiber', 0.67, 'as-fed'),
  ('5683d951-ef14-4dc6-baa5-b11f60374e06', 'ash', 0.92, 'as-fed'),
  ('5683d951-ef14-4dc6-baa5-b11f60374e06', 'moisture', 77.7, 'as-fed'),
  ('5683d951-ef14-4dc6-baa5-b11f60374e06', 'kcal', 99.5, 'as-fed'),
  ('5683d951-ef14-4dc6-baa5-b11f60374e06', 'calcium', 0.17, 'as-fed'),
  ('5683d951-ef14-4dc6-baa5-b11f60374e06', 'phosphorus', 0.06, 'as-fed'),
  ('5683d951-ef14-4dc6-baa5-b11f60374e06', 'omega3', 0.38, 'as-fed');

-- Hill's Prescription Diet — l/d Hondenvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-ld-liver-care-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,84%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (3,79%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 4.067 kcal/kg als 407 kcal/100 g; 407 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '17375c58-580a-4b03-8938-db3a8286934b';
delete from public.recipe_nutrition where recipe_version_id = '17375c58-580a-4b03-8938-db3a8286934b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('17375c58-580a-4b03-8938-db3a8286934b', 'protein', 16.7, 'as-fed'),
  ('17375c58-580a-4b03-8938-db3a8286934b', 'fat', 21.9, 'as-fed'),
  ('17375c58-580a-4b03-8938-db3a8286934b', 'fiber', 2.4, 'as-fed'),
  ('17375c58-580a-4b03-8938-db3a8286934b', 'ash', 5.2, 'as-fed'),
  ('17375c58-580a-4b03-8938-db3a8286934b', 'moisture', 8, 'as-fed'),
  ('17375c58-580a-4b03-8938-db3a8286934b', 'kcal', 407, 'as-fed'),
  ('17375c58-580a-4b03-8938-db3a8286934b', 'calcium', 0.78, 'as-fed'),
  ('17375c58-580a-4b03-8938-db3a8286934b', 'phosphorus', 0.55, 'as-fed'),
  ('17375c58-580a-4b03-8938-db3a8286934b', 'omega3', 0.84, 'as-fed'),
  ('17375c58-580a-4b03-8938-db3a8286934b', 'omega6', 3.79, 'as-fed');

-- Hill's Prescription Diet — l/d Natvoer voor Honden (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-ld-liver-care-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,32%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (1,55%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 1.146 kcal/kg omgerekend naar 114,6 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 424 kcal/blik.'
 where id = '8981b56c-717b-47ac-816b-98fbca18db30';
delete from public.recipe_nutrition where recipe_version_id = '8981b56c-717b-47ac-816b-98fbca18db30';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8981b56c-717b-47ac-816b-98fbca18db30', 'protein', 4.8, 'as-fed'),
  ('8981b56c-717b-47ac-816b-98fbca18db30', 'fat', 6.2, 'as-fed'),
  ('8981b56c-717b-47ac-816b-98fbca18db30', 'fiber', 0.7, 'as-fed'),
  ('8981b56c-717b-47ac-816b-98fbca18db30', 'ash', 1.3, 'as-fed'),
  ('8981b56c-717b-47ac-816b-98fbca18db30', 'moisture', 74.1, 'as-fed'),
  ('8981b56c-717b-47ac-816b-98fbca18db30', 'kcal', 114.6, 'as-fed'),
  ('8981b56c-717b-47ac-816b-98fbca18db30', 'calcium', 0.18, 'as-fed'),
  ('8981b56c-717b-47ac-816b-98fbca18db30', 'phosphorus', 0.15, 'as-fed'),
  ('8981b56c-717b-47ac-816b-98fbca18db30', 'omega3', 0.32, 'as-fed'),
  ('8981b56c-717b-47ac-816b-98fbca18db30', 'omega6', 1.55, 'as-fed');

-- Hill's Prescription Diet — Metabolic + Mobility Hondenvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-metabolic-mobility-weight-management-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (2,03%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.152 kcal/kg als 315 kcal/100 g; 315 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = 'be283b59-a7b2-4224-8933-abc02e90959a';
delete from public.recipe_nutrition where recipe_version_id = 'be283b59-a7b2-4224-8933-abc02e90959a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('be283b59-a7b2-4224-8933-abc02e90959a', 'protein', 26.1, 'as-fed'),
  ('be283b59-a7b2-4224-8933-abc02e90959a', 'fat', 12.6, 'as-fed'),
  ('be283b59-a7b2-4224-8933-abc02e90959a', 'fiber', 14.2, 'as-fed'),
  ('be283b59-a7b2-4224-8933-abc02e90959a', 'ash', 5.2, 'as-fed'),
  ('be283b59-a7b2-4224-8933-abc02e90959a', 'moisture', 8, 'as-fed'),
  ('be283b59-a7b2-4224-8933-abc02e90959a', 'kcal', 315, 'as-fed'),
  ('be283b59-a7b2-4224-8933-abc02e90959a', 'calcium', 0.72, 'as-fed'),
  ('be283b59-a7b2-4224-8933-abc02e90959a', 'phosphorus', 0.53, 'as-fed'),
  ('be283b59-a7b2-4224-8933-abc02e90959a', 'omega3', 3, 'as-fed'),
  ('be283b59-a7b2-4224-8933-abc02e90959a', 'omega6', 2.03, 'as-fed');

-- Hill's Prescription Diet — Metabolic + Mobility Mini Hondenvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-metabolic-mobility-mini-weight-management-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht wordt op deze pagina niet vermeld en blijft null. Omega-6 (2,06%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.156 kcal/kg als 316 kcal/100 g; 316 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = 'c64c76c3-12bc-44db-a067-f0d68dad4848';
delete from public.recipe_nutrition where recipe_version_id = 'c64c76c3-12bc-44db-a067-f0d68dad4848';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c64c76c3-12bc-44db-a067-f0d68dad4848', 'protein', 26.5, 'as-fed'),
  ('c64c76c3-12bc-44db-a067-f0d68dad4848', 'fat', 12.9, 'as-fed'),
  ('c64c76c3-12bc-44db-a067-f0d68dad4848', 'fiber', 14.4, 'as-fed'),
  ('c64c76c3-12bc-44db-a067-f0d68dad4848', 'ash', 5.4, 'as-fed'),
  ('c64c76c3-12bc-44db-a067-f0d68dad4848', 'kcal', 316, 'as-fed'),
  ('c64c76c3-12bc-44db-a067-f0d68dad4848', 'calcium', 0.73, 'as-fed'),
  ('c64c76c3-12bc-44db-a067-f0d68dad4848', 'phosphorus', 0.55, 'as-fed'),
  ('c64c76c3-12bc-44db-a067-f0d68dad4848', 'omega3', 3, 'as-fed'),
  ('c64c76c3-12bc-44db-a067-f0d68dad4848', 'omega6', 2.06, 'as-fed');

-- Hill's Prescription Diet — Metabolic + Mobility Natvoer voor Honden (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-metabolic-mobility-weight-management-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-6 (0,4%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 865 kcal/kg omgerekend naar 86,5 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 320 kcal/blik.'
 where id = 'ea7166e8-3a42-4c49-84c2-6a90fd421709';
delete from public.recipe_nutrition where recipe_version_id = 'ea7166e8-3a42-4c49-84c2-6a90fd421709';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ea7166e8-3a42-4c49-84c2-6a90fd421709', 'protein', 7.2, 'as-fed'),
  ('ea7166e8-3a42-4c49-84c2-6a90fd421709', 'fat', 3.6, 'as-fed'),
  ('ea7166e8-3a42-4c49-84c2-6a90fd421709', 'fiber', 3.8, 'as-fed'),
  ('ea7166e8-3a42-4c49-84c2-6a90fd421709', 'ash', 1.6, 'as-fed'),
  ('ea7166e8-3a42-4c49-84c2-6a90fd421709', 'moisture', 75, 'as-fed'),
  ('ea7166e8-3a42-4c49-84c2-6a90fd421709', 'kcal', 86.5, 'as-fed'),
  ('ea7166e8-3a42-4c49-84c2-6a90fd421709', 'calcium', 0.22, 'as-fed'),
  ('ea7166e8-3a42-4c49-84c2-6a90fd421709', 'phosphorus', 0.15, 'as-fed'),
  ('ea7166e8-3a42-4c49-84c2-6a90fd421709', 'omega3', 0.8, 'as-fed'),
  ('ea7166e8-3a42-4c49-84c2-6a90fd421709', 'omega6', 0.4, 'as-fed');

-- Hill's Prescription Diet — Metabolic Hondenvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-metabolic-weight-management-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,68%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (1,97%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.101 kcal/kg als 310 kcal/100 g; 310 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = 'e79fb2eb-e252-4613-8f33-ea01dcbc54c3';
delete from public.recipe_nutrition where recipe_version_id = 'e79fb2eb-e252-4613-8f33-ea01dcbc54c3';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e79fb2eb-e252-4613-8f33-ea01dcbc54c3', 'protein', 26.6, 'as-fed'),
  ('e79fb2eb-e252-4613-8f33-ea01dcbc54c3', 'fat', 10.7, 'as-fed'),
  ('e79fb2eb-e252-4613-8f33-ea01dcbc54c3', 'fiber', 12.9, 'as-fed'),
  ('e79fb2eb-e252-4613-8f33-ea01dcbc54c3', 'ash', 5.3, 'as-fed'),
  ('e79fb2eb-e252-4613-8f33-ea01dcbc54c3', 'moisture', 8, 'as-fed'),
  ('e79fb2eb-e252-4613-8f33-ea01dcbc54c3', 'kcal', 310, 'as-fed'),
  ('e79fb2eb-e252-4613-8f33-ea01dcbc54c3', 'calcium', 0.8, 'as-fed'),
  ('e79fb2eb-e252-4613-8f33-ea01dcbc54c3', 'phosphorus', 0.62, 'as-fed'),
  ('e79fb2eb-e252-4613-8f33-ea01dcbc54c3', 'omega3', 0.68, 'as-fed'),
  ('e79fb2eb-e252-4613-8f33-ea01dcbc54c3', 'omega6', 1.97, 'as-fed');

-- Hill's Prescription Diet — Metabolic Hondenvoer met Lam & Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-metabolic-lamb-rice-weight-management-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (9%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,77%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (2,01%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.110 kcal/kg als 311 kcal/100 g; 311 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '877e2f7a-1cff-4cd0-b156-56439bc82962';
delete from public.recipe_nutrition where recipe_version_id = '877e2f7a-1cff-4cd0-b156-56439bc82962';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('877e2f7a-1cff-4cd0-b156-56439bc82962', 'protein', 25.4, 'as-fed'),
  ('877e2f7a-1cff-4cd0-b156-56439bc82962', 'fat', 11.2, 'as-fed'),
  ('877e2f7a-1cff-4cd0-b156-56439bc82962', 'fiber', 13, 'as-fed'),
  ('877e2f7a-1cff-4cd0-b156-56439bc82962', 'ash', 5.6, 'as-fed'),
  ('877e2f7a-1cff-4cd0-b156-56439bc82962', 'moisture', 9, 'as-fed'),
  ('877e2f7a-1cff-4cd0-b156-56439bc82962', 'kcal', 311, 'as-fed'),
  ('877e2f7a-1cff-4cd0-b156-56439bc82962', 'calcium', 0.93, 'as-fed'),
  ('877e2f7a-1cff-4cd0-b156-56439bc82962', 'phosphorus', 0.68, 'as-fed'),
  ('877e2f7a-1cff-4cd0-b156-56439bc82962', 'omega3', 0.77, 'as-fed'),
  ('877e2f7a-1cff-4cd0-b156-56439bc82962', 'omega6', 2.01, 'as-fed');

-- Hill's Prescription Diet — Metabolic Mini Hondenvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-metabolic-mini-chicken-weight-management-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,68%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (1,97%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.101 kcal/kg als 310 kcal/100 g; 310 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '8b7e72e8-9a11-4c66-8921-339b8c02c9a3';
delete from public.recipe_nutrition where recipe_version_id = '8b7e72e8-9a11-4c66-8921-339b8c02c9a3';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8b7e72e8-9a11-4c66-8921-339b8c02c9a3', 'protein', 26.6, 'as-fed'),
  ('8b7e72e8-9a11-4c66-8921-339b8c02c9a3', 'fat', 10.7, 'as-fed'),
  ('8b7e72e8-9a11-4c66-8921-339b8c02c9a3', 'fiber', 12.9, 'as-fed'),
  ('8b7e72e8-9a11-4c66-8921-339b8c02c9a3', 'ash', 5.3, 'as-fed'),
  ('8b7e72e8-9a11-4c66-8921-339b8c02c9a3', 'moisture', 8, 'as-fed'),
  ('8b7e72e8-9a11-4c66-8921-339b8c02c9a3', 'kcal', 310, 'as-fed'),
  ('8b7e72e8-9a11-4c66-8921-339b8c02c9a3', 'calcium', 0.8, 'as-fed'),
  ('8b7e72e8-9a11-4c66-8921-339b8c02c9a3', 'phosphorus', 0.62, 'as-fed'),
  ('8b7e72e8-9a11-4c66-8921-339b8c02c9a3', 'omega3', 0.68, 'as-fed'),
  ('8b7e72e8-9a11-4c66-8921-339b8c02c9a3', 'omega6', 1.97, 'as-fed');

-- Hill's Prescription Diet — Metabolic Natvoer voor Honden met Kipsmaak (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-metabolic-weight-management-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,2%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,61%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 804 kcal/kg omgerekend naar 80,4 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 297 kcal/blik.'
 where id = '2c277743-cae4-4677-b098-b82594ea0218';
delete from public.recipe_nutrition where recipe_version_id = '2c277743-cae4-4677-b098-b82594ea0218';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2c277743-cae4-4677-b098-b82594ea0218', 'protein', 6.7, 'as-fed'),
  ('2c277743-cae4-4677-b098-b82594ea0218', 'fat', 2.9, 'as-fed'),
  ('2c277743-cae4-4677-b098-b82594ea0218', 'fiber', 3.4, 'as-fed'),
  ('2c277743-cae4-4677-b098-b82594ea0218', 'ash', 1.5, 'as-fed'),
  ('2c277743-cae4-4677-b098-b82594ea0218', 'moisture', 76.1, 'as-fed'),
  ('2c277743-cae4-4677-b098-b82594ea0218', 'kcal', 80.4, 'as-fed'),
  ('2c277743-cae4-4677-b098-b82594ea0218', 'calcium', 0.18, 'as-fed'),
  ('2c277743-cae4-4677-b098-b82594ea0218', 'phosphorus', 0.13, 'as-fed'),
  ('2c277743-cae4-4677-b098-b82594ea0218', 'omega3', 0.2, 'as-fed'),
  ('2c277743-cae4-4677-b098-b82594ea0218', 'omega6', 0.61, 'as-fed');

-- Hill's Prescription Diet — Metabolic Natvoer voor Honden met Rund (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-metabolic-beef-weight-management-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,19%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,28%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 797 kcal/kg omgerekend naar 79,7 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 294 kcal/blik.'
 where id = '3ccd07e9-9465-43dc-b48e-527fa069ccfe';
delete from public.recipe_nutrition where recipe_version_id = '3ccd07e9-9465-43dc-b48e-527fa069ccfe';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3ccd07e9-9465-43dc-b48e-527fa069ccfe', 'protein', 6.7, 'as-fed'),
  ('3ccd07e9-9465-43dc-b48e-527fa069ccfe', 'fat', 2.7, 'as-fed'),
  ('3ccd07e9-9465-43dc-b48e-527fa069ccfe', 'fiber', 3.4, 'as-fed'),
  ('3ccd07e9-9465-43dc-b48e-527fa069ccfe', 'ash', 1.4, 'as-fed'),
  ('3ccd07e9-9465-43dc-b48e-527fa069ccfe', 'moisture', 76.5, 'as-fed'),
  ('3ccd07e9-9465-43dc-b48e-527fa069ccfe', 'kcal', 79.7, 'as-fed'),
  ('3ccd07e9-9465-43dc-b48e-527fa069ccfe', 'calcium', 0.19, 'as-fed'),
  ('3ccd07e9-9465-43dc-b48e-527fa069ccfe', 'phosphorus', 0.13, 'as-fed'),
  ('3ccd07e9-9465-43dc-b48e-527fa069ccfe', 'omega3', 0.19, 'as-fed'),
  ('3ccd07e9-9465-43dc-b48e-527fa069ccfe', 'omega6', 0.28, 'as-fed');

-- Hill's Prescription Diet — Metabolic Stoofpotje voor Honden (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-metabolic-vegetable-beef-stew-weight-management-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 wordt op deze pagina niet vermeld en blijft null. Omega-6 wordt op deze pagina niet vermeld en blijft null. Metaboliseerbare energie 700 kcal/kg omgerekend naar 70 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 247 kcal/blik.'
 where id = '3fe7901f-5bb3-4640-aef6-47c8a4b9fe00';
delete from public.recipe_nutrition where recipe_version_id = '3fe7901f-5bb3-4640-aef6-47c8a4b9fe00';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3fe7901f-5bb3-4640-aef6-47c8a4b9fe00', 'protein', 5.8, 'as-fed'),
  ('3fe7901f-5bb3-4640-aef6-47c8a4b9fe00', 'fat', 2.5, 'as-fed'),
  ('3fe7901f-5bb3-4640-aef6-47c8a4b9fe00', 'fiber', 2.3, 'as-fed'),
  ('3fe7901f-5bb3-4640-aef6-47c8a4b9fe00', 'ash', 1.2, 'as-fed'),
  ('3fe7901f-5bb3-4640-aef6-47c8a4b9fe00', 'moisture', 80, 'as-fed'),
  ('3fe7901f-5bb3-4640-aef6-47c8a4b9fe00', 'kcal', 70, 'as-fed'),
  ('3fe7901f-5bb3-4640-aef6-47c8a4b9fe00', 'calcium', 0.2, 'as-fed'),
  ('3fe7901f-5bb3-4640-aef6-47c8a4b9fe00', 'phosphorus', 0.13, 'as-fed');

-- Hill's Prescription Diet — Metabolic Stoofpotje voor Honden met Kipsmaak & Groenten (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-metabolic-vegetable-chicken-stew-weight-management-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 wordt op deze pagina niet vermeld en blijft null. Omega-6 wordt op deze pagina niet vermeld en blijft null. Metaboliseerbare energie 700 kcal/kg omgerekend naar 70 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 247 kcal/blik.'
 where id = '4b2b1979-aae9-4eef-8595-50362909592d';
delete from public.recipe_nutrition where recipe_version_id = '4b2b1979-aae9-4eef-8595-50362909592d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4b2b1979-aae9-4eef-8595-50362909592d', 'protein', 5.8, 'as-fed'),
  ('4b2b1979-aae9-4eef-8595-50362909592d', 'fat', 2.3, 'as-fed'),
  ('4b2b1979-aae9-4eef-8595-50362909592d', 'fiber', 2.3, 'as-fed'),
  ('4b2b1979-aae9-4eef-8595-50362909592d', 'ash', 1.2, 'as-fed'),
  ('4b2b1979-aae9-4eef-8595-50362909592d', 'moisture', 79.9, 'as-fed'),
  ('4b2b1979-aae9-4eef-8595-50362909592d', 'kcal', 70, 'as-fed'),
  ('4b2b1979-aae9-4eef-8595-50362909592d', 'calcium', 0.2, 'as-fed'),
  ('4b2b1979-aae9-4eef-8595-50362909592d', 'phosphorus', 0.13, 'as-fed');

-- Hill's Prescription Diet — On-Care Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-onc-on-care-chicken-restorative-care-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (1,13%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (3,85%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 4.066 kcal/kg als 407 kcal/100 g; 407 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = 'fb37d475-aca5-4ba8-8af9-d51080008b24';
delete from public.recipe_nutrition where recipe_version_id = 'fb37d475-aca5-4ba8-8af9-d51080008b24';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fb37d475-aca5-4ba8-8af9-d51080008b24', 'protein', 29.5, 'as-fed'),
  ('fb37d475-aca5-4ba8-8af9-d51080008b24', 'fat', 21.7, 'as-fed'),
  ('fb37d475-aca5-4ba8-8af9-d51080008b24', 'fiber', 2.3, 'as-fed'),
  ('fb37d475-aca5-4ba8-8af9-d51080008b24', 'ash', 4.7, 'as-fed'),
  ('fb37d475-aca5-4ba8-8af9-d51080008b24', 'moisture', 8, 'as-fed'),
  ('fb37d475-aca5-4ba8-8af9-d51080008b24', 'kcal', 407, 'as-fed'),
  ('fb37d475-aca5-4ba8-8af9-d51080008b24', 'calcium', 0.79, 'as-fed'),
  ('fb37d475-aca5-4ba8-8af9-d51080008b24', 'phosphorus', 0.63, 'as-fed'),
  ('fb37d475-aca5-4ba8-8af9-d51080008b24', 'omega3', 1.13, 'as-fed'),
  ('fb37d475-aca5-4ba8-8af9-d51080008b24', 'omega6', 3.85, 'as-fed');

-- Hill's Prescription Diet — On-Care Stoofpotje voor Honden met Kip & toegevoegde Groenten (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-onc-on-care-chicken-stew-restorative-care-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,34%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 wordt op deze pagina niet vermeld en blijft null. Metaboliseerbare energie 909 kcal/kg omgerekend naar 90,9 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 321 kcal/blik.'
 where id = 'f136a951-0ca1-4be9-84a7-a0ba9bc399d5';
delete from public.recipe_nutrition where recipe_version_id = 'f136a951-0ca1-4be9-84a7-a0ba9bc399d5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f136a951-0ca1-4be9-84a7-a0ba9bc399d5', 'protein', 6.6, 'as-fed'),
  ('f136a951-0ca1-4be9-84a7-a0ba9bc399d5', 'fat', 5, 'as-fed'),
  ('f136a951-0ca1-4be9-84a7-a0ba9bc399d5', 'fiber', 0.45, 'as-fed'),
  ('f136a951-0ca1-4be9-84a7-a0ba9bc399d5', 'ash', 1.2, 'as-fed'),
  ('f136a951-0ca1-4be9-84a7-a0ba9bc399d5', 'moisture', 79.5, 'as-fed'),
  ('f136a951-0ca1-4be9-84a7-a0ba9bc399d5', 'kcal', 90.9, 'as-fed'),
  ('f136a951-0ca1-4be9-84a7-a0ba9bc399d5', 'calcium', 0.18, 'as-fed'),
  ('f136a951-0ca1-4be9-84a7-a0ba9bc399d5', 'phosphorus', 0.13, 'as-fed'),
  ('f136a951-0ca1-4be9-84a7-a0ba9bc399d5', 'omega3', 0.34, 'as-fed');

-- Hill's Prescription Diet — r/d Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-rd-weight-management-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,24%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (2,24%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.118 kcal/kg als 312 kcal/100 g; 312 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '77a6cf52-993a-4883-a716-4001dd326143';
delete from public.recipe_nutrition where recipe_version_id = '77a6cf52-993a-4883-a716-4001dd326143';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('77a6cf52-993a-4883-a716-4001dd326143', 'protein', 31.1, 'as-fed'),
  ('77a6cf52-993a-4883-a716-4001dd326143', 'fat', 10.4, 'as-fed'),
  ('77a6cf52-993a-4883-a716-4001dd326143', 'fiber', 12.2, 'as-fed'),
  ('77a6cf52-993a-4883-a716-4001dd326143', 'ash', 5.5, 'as-fed'),
  ('77a6cf52-993a-4883-a716-4001dd326143', 'moisture', 8, 'as-fed'),
  ('77a6cf52-993a-4883-a716-4001dd326143', 'kcal', 312, 'as-fed'),
  ('77a6cf52-993a-4883-a716-4001dd326143', 'calcium', 0.86, 'as-fed'),
  ('77a6cf52-993a-4883-a716-4001dd326143', 'phosphorus', 0.61, 'as-fed'),
  ('77a6cf52-993a-4883-a716-4001dd326143', 'omega3', 0.24, 'as-fed'),
  ('77a6cf52-993a-4883-a716-4001dd326143', 'omega6', 2.24, 'as-fed');

-- Hill's Prescription Diet — r/d Natvoer voor Honden (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-rd-weight-management-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,09%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,82%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 806 kcal/kg omgerekend naar 80,6 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 282 kcal/blik.'
 where id = 'aa0b7b4a-ce21-4e2a-8868-7be9814d9163';
delete from public.recipe_nutrition where recipe_version_id = 'aa0b7b4a-ce21-4e2a-8868-7be9814d9163';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('aa0b7b4a-ce21-4e2a-8868-7be9814d9163', 'protein', 8.4, 'as-fed'),
  ('aa0b7b4a-ce21-4e2a-8868-7be9814d9163', 'fat', 2.2, 'as-fed'),
  ('aa0b7b4a-ce21-4e2a-8868-7be9814d9163', 'fiber', 3.4, 'as-fed'),
  ('aa0b7b4a-ce21-4e2a-8868-7be9814d9163', 'ash', 1.7, 'as-fed'),
  ('aa0b7b4a-ce21-4e2a-8868-7be9814d9163', 'moisture', 75, 'as-fed'),
  ('aa0b7b4a-ce21-4e2a-8868-7be9814d9163', 'kcal', 80.6, 'as-fed'),
  ('aa0b7b4a-ce21-4e2a-8868-7be9814d9163', 'calcium', 0.22, 'as-fed'),
  ('aa0b7b4a-ce21-4e2a-8868-7be9814d9163', 'phosphorus', 0.15, 'as-fed'),
  ('aa0b7b4a-ce21-4e2a-8868-7be9814d9163', 'omega3', 0.09, 'as-fed'),
  ('aa0b7b4a-ce21-4e2a-8868-7be9814d9163', 'omega6', 0.82, 'as-fed');

-- Hill's Prescription Diet — t/d Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-td-dental-care-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,26%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (3,02%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.533 kcal/kg als 353 kcal/100 g; 353 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '989b15f0-fda2-4a70-bec5-73f1c63b3acb';
delete from public.recipe_nutrition where recipe_version_id = '989b15f0-fda2-4a70-bec5-73f1c63b3acb';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('989b15f0-fda2-4a70-bec5-73f1c63b3acb', 'protein', 16.2, 'as-fed'),
  ('989b15f0-fda2-4a70-bec5-73f1c63b3acb', 'fat', 15.2, 'as-fed'),
  ('989b15f0-fda2-4a70-bec5-73f1c63b3acb', 'fiber', 9.7, 'as-fed'),
  ('989b15f0-fda2-4a70-bec5-73f1c63b3acb', 'ash', 3.6, 'as-fed'),
  ('989b15f0-fda2-4a70-bec5-73f1c63b3acb', 'moisture', 8, 'as-fed'),
  ('989b15f0-fda2-4a70-bec5-73f1c63b3acb', 'kcal', 353, 'as-fed'),
  ('989b15f0-fda2-4a70-bec5-73f1c63b3acb', 'calcium', 0.54, 'as-fed'),
  ('989b15f0-fda2-4a70-bec5-73f1c63b3acb', 'phosphorus', 0.41, 'as-fed'),
  ('989b15f0-fda2-4a70-bec5-73f1c63b3acb', 'omega3', 0.26, 'as-fed'),
  ('989b15f0-fda2-4a70-bec5-73f1c63b3acb', 'omega6', 3.02, 'as-fed');

-- Hill's Prescription Diet — t/d Mini Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-td-small-bites-dental-care-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,25%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (3%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.533 kcal/kg als 353 kcal/100 g; 353 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = 'aa1748d8-4d88-4776-8b25-2d0bbf8d9bd9';
delete from public.recipe_nutrition where recipe_version_id = 'aa1748d8-4d88-4776-8b25-2d0bbf8d9bd9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('aa1748d8-4d88-4776-8b25-2d0bbf8d9bd9', 'protein', 16.1, 'as-fed'),
  ('aa1748d8-4d88-4776-8b25-2d0bbf8d9bd9', 'fat', 15.2, 'as-fed'),
  ('aa1748d8-4d88-4776-8b25-2d0bbf8d9bd9', 'fiber', 9.6, 'as-fed'),
  ('aa1748d8-4d88-4776-8b25-2d0bbf8d9bd9', 'ash', 3.6, 'as-fed'),
  ('aa1748d8-4d88-4776-8b25-2d0bbf8d9bd9', 'moisture', 8, 'as-fed'),
  ('aa1748d8-4d88-4776-8b25-2d0bbf8d9bd9', 'kcal', 353, 'as-fed'),
  ('aa1748d8-4d88-4776-8b25-2d0bbf8d9bd9', 'calcium', 0.53, 'as-fed'),
  ('aa1748d8-4d88-4776-8b25-2d0bbf8d9bd9', 'phosphorus', 0.41, 'as-fed'),
  ('aa1748d8-4d88-4776-8b25-2d0bbf8d9bd9', 'omega3', 0.25, 'as-fed'),
  ('aa1748d8-4d88-4776-8b25-2d0bbf8d9bd9', 'omega6', 3, 'as-fed');

-- Hill's Prescription Diet — u/d Hondenvoer Origineel (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-ud-urinary-care-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,53%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (2,94%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.975 kcal/kg als 398 kcal/100 g; 398 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '4be91d53-d908-4704-b0b9-dbfc81e81305';
delete from public.recipe_nutrition where recipe_version_id = '4be91d53-d908-4704-b0b9-dbfc81e81305';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4be91d53-d908-4704-b0b9-dbfc81e81305', 'protein', 10.2, 'as-fed'),
  ('4be91d53-d908-4704-b0b9-dbfc81e81305', 'fat', 18.8, 'as-fed'),
  ('4be91d53-d908-4704-b0b9-dbfc81e81305', 'fiber', 2.4, 'as-fed'),
  ('4be91d53-d908-4704-b0b9-dbfc81e81305', 'ash', 3.3, 'as-fed'),
  ('4be91d53-d908-4704-b0b9-dbfc81e81305', 'moisture', 8, 'as-fed'),
  ('4be91d53-d908-4704-b0b9-dbfc81e81305', 'kcal', 398, 'as-fed'),
  ('4be91d53-d908-4704-b0b9-dbfc81e81305', 'calcium', 0.42, 'as-fed'),
  ('4be91d53-d908-4704-b0b9-dbfc81e81305', 'phosphorus', 0.16, 'as-fed'),
  ('4be91d53-d908-4704-b0b9-dbfc81e81305', 'omega3', 0.53, 'as-fed'),
  ('4be91d53-d908-4704-b0b9-dbfc81e81305', 'omega6', 2.94, 'as-fed');

-- Hill's Prescription Diet — u/d Natvoer voor Honden (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-ud-urinary-care-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,21%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (1,54%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 1.446 kcal/kg omgerekend naar 144,6 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 535 kcal/blik.'
 where id = '3680435e-96cd-4b97-ae1b-7a7988e10c0a';
delete from public.recipe_nutrition where recipe_version_id = '3680435e-96cd-4b97-ae1b-7a7988e10c0a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3680435e-96cd-4b97-ae1b-7a7988e10c0a', 'protein', 4.3, 'as-fed'),
  ('3680435e-96cd-4b97-ae1b-7a7988e10c0a', 'fat', 8.5, 'as-fed'),
  ('3680435e-96cd-4b97-ae1b-7a7988e10c0a', 'fiber', 0.85, 'as-fed'),
  ('3680435e-96cd-4b97-ae1b-7a7988e10c0a', 'ash', 1.4, 'as-fed'),
  ('3680435e-96cd-4b97-ae1b-7a7988e10c0a', 'moisture', 68.6, 'as-fed'),
  ('3680435e-96cd-4b97-ae1b-7a7988e10c0a', 'kcal', 144.6, 'as-fed'),
  ('3680435e-96cd-4b97-ae1b-7a7988e10c0a', 'calcium', 0.21, 'as-fed'),
  ('3680435e-96cd-4b97-ae1b-7a7988e10c0a', 'phosphorus', 0.08, 'as-fed'),
  ('3680435e-96cd-4b97-ae1b-7a7988e10c0a', 'omega3', 0.21, 'as-fed'),
  ('3680435e-96cd-4b97-ae1b-7a7988e10c0a', 'omega6', 1.54, 'as-fed');

-- Hill's Prescription Diet — w/d Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-wd-chicken-glucose-management-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,59%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (2,56%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.176 kcal/kg als 318 kcal/100 g; 318 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '456bd250-f61d-47c1-8117-5fbbbcfd213f';
delete from public.recipe_nutrition where recipe_version_id = '456bd250-f61d-47c1-8117-5fbbbcfd213f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('456bd250-f61d-47c1-8117-5fbbbcfd213f', 'protein', 20.7, 'as-fed'),
  ('456bd250-f61d-47c1-8117-5fbbbcfd213f', 'fat', 11.4, 'as-fed'),
  ('456bd250-f61d-47c1-8117-5fbbbcfd213f', 'fiber', 12.5, 'as-fed'),
  ('456bd250-f61d-47c1-8117-5fbbbcfd213f', 'ash', 5, 'as-fed'),
  ('456bd250-f61d-47c1-8117-5fbbbcfd213f', 'moisture', 8, 'as-fed'),
  ('456bd250-f61d-47c1-8117-5fbbbcfd213f', 'kcal', 318, 'as-fed'),
  ('456bd250-f61d-47c1-8117-5fbbbcfd213f', 'calcium', 0.86, 'as-fed'),
  ('456bd250-f61d-47c1-8117-5fbbbcfd213f', 'phosphorus', 0.6, 'as-fed'),
  ('456bd250-f61d-47c1-8117-5fbbbcfd213f', 'omega3', 0.59, 'as-fed'),
  ('456bd250-f61d-47c1-8117-5fbbbcfd213f', 'omega6', 2.56, 'as-fed');

-- Hill's Prescription Diet — w/d Natvoer voor Honden met Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-wd-glucose-management-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,1%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,31%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 825 kcal/kg omgerekend naar 82,5 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 305 kcal/blik.'
 where id = 'c607e588-c8f0-48c6-9320-3130a3f8c513';
delete from public.recipe_nutrition where recipe_version_id = 'c607e588-c8f0-48c6-9320-3130a3f8c513';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c607e588-c8f0-48c6-9320-3130a3f8c513', 'protein', 5, 'as-fed'),
  ('c607e588-c8f0-48c6-9320-3130a3f8c513', 'fat', 2.7, 'as-fed'),
  ('c607e588-c8f0-48c6-9320-3130a3f8c513', 'fiber', 3.7, 'as-fed'),
  ('c607e588-c8f0-48c6-9320-3130a3f8c513', 'ash', 1.3, 'as-fed'),
  ('c607e588-c8f0-48c6-9320-3130a3f8c513', 'moisture', 75.3, 'as-fed'),
  ('c607e588-c8f0-48c6-9320-3130a3f8c513', 'kcal', 82.5, 'as-fed'),
  ('c607e588-c8f0-48c6-9320-3130a3f8c513', 'calcium', 0.2, 'as-fed'),
  ('c607e588-c8f0-48c6-9320-3130a3f8c513', 'phosphorus', 0.16, 'as-fed'),
  ('c607e588-c8f0-48c6-9320-3130a3f8c513', 'omega3', 0.1, 'as-fed'),
  ('c607e588-c8f0-48c6-9320-3130a3f8c513', 'omega6', 0.31, 'as-fed');

-- Hill's Prescription Diet — z/d Hondenvoer (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-zd-food-sensitivities-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,29%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,93%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 968 kcal/kg omgerekend naar 96,8 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 358 kcal/blik.'
 where id = 'c0ae7fbc-fd93-446f-b67e-4eb6b00a0821';
delete from public.recipe_nutrition where recipe_version_id = 'c0ae7fbc-fd93-446f-b67e-4eb6b00a0821';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c0ae7fbc-fd93-446f-b67e-4eb6b00a0821', 'protein', 5.2, 'as-fed'),
  ('c0ae7fbc-fd93-446f-b67e-4eb6b00a0821', 'fat', 3.9, 'as-fed'),
  ('c0ae7fbc-fd93-446f-b67e-4eb6b00a0821', 'fiber', 1.2, 'as-fed'),
  ('c0ae7fbc-fd93-446f-b67e-4eb6b00a0821', 'ash', 1.3, 'as-fed'),
  ('c0ae7fbc-fd93-446f-b67e-4eb6b00a0821', 'moisture', 75.4, 'as-fed'),
  ('c0ae7fbc-fd93-446f-b67e-4eb6b00a0821', 'kcal', 96.8, 'as-fed'),
  ('c0ae7fbc-fd93-446f-b67e-4eb6b00a0821', 'calcium', 0.17, 'as-fed'),
  ('c0ae7fbc-fd93-446f-b67e-4eb6b00a0821', 'phosphorus', 0.15, 'as-fed'),
  ('c0ae7fbc-fd93-446f-b67e-4eb6b00a0821', 'omega3', 0.29, 'as-fed'),
  ('c0ae7fbc-fd93-446f-b67e-4eb6b00a0821', 'omega6', 0.93, 'as-fed');

-- Hill's Prescription Diet — z/d Hondenvoer Origineel (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-zd-food-sensitivities-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (1,03%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (2,94%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.513 kcal/kg als 351 kcal/100 g; 351 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '862d6e3b-fdd5-46d3-bb60-141d726ad412';
delete from public.recipe_nutrition where recipe_version_id = '862d6e3b-fdd5-46d3-bb60-141d726ad412';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('862d6e3b-fdd5-46d3-bb60-141d726ad412', 'protein', 17.9, 'as-fed'),
  ('862d6e3b-fdd5-46d3-bb60-141d726ad412', 'fat', 13.8, 'as-fed'),
  ('862d6e3b-fdd5-46d3-bb60-141d726ad412', 'fiber', 6.1, 'as-fed'),
  ('862d6e3b-fdd5-46d3-bb60-141d726ad412', 'ash', 5.2, 'as-fed'),
  ('862d6e3b-fdd5-46d3-bb60-141d726ad412', 'moisture', 8, 'as-fed'),
  ('862d6e3b-fdd5-46d3-bb60-141d726ad412', 'kcal', 351, 'as-fed'),
  ('862d6e3b-fdd5-46d3-bb60-141d726ad412', 'calcium', 0.73, 'as-fed'),
  ('862d6e3b-fdd5-46d3-bb60-141d726ad412', 'phosphorus', 0.49, 'as-fed'),
  ('862d6e3b-fdd5-46d3-bb60-141d726ad412', 'omega3', 1.03, 'as-fed'),
  ('862d6e3b-fdd5-46d3-bb60-141d726ad412', 'omega6', 2.94, 'as-fed');

-- Hill's Prescription Diet — z/d Low Fat Hondenvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-zd-low-fat-hydrolysed-soy-food-sensitivities-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.298 kcal/kg als 330 kcal/100 g; 330 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = 'f2e11084-8226-4cff-8e0c-51ac64a86b51';
delete from public.recipe_nutrition where recipe_version_id = 'f2e11084-8226-4cff-8e0c-51ac64a86b51';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f2e11084-8226-4cff-8e0c-51ac64a86b51', 'protein', 25.2, 'as-fed'),
  ('f2e11084-8226-4cff-8e0c-51ac64a86b51', 'fat', 7.8, 'as-fed'),
  ('f2e11084-8226-4cff-8e0c-51ac64a86b51', 'fiber', 3.8, 'as-fed'),
  ('f2e11084-8226-4cff-8e0c-51ac64a86b51', 'ash', 5.2, 'as-fed'),
  ('f2e11084-8226-4cff-8e0c-51ac64a86b51', 'moisture', 8, 'as-fed'),
  ('f2e11084-8226-4cff-8e0c-51ac64a86b51', 'kcal', 330, 'as-fed'),
  ('f2e11084-8226-4cff-8e0c-51ac64a86b51', 'calcium', 0.73, 'as-fed'),
  ('f2e11084-8226-4cff-8e0c-51ac64a86b51', 'phosphorus', 0.65, 'as-fed'),
  ('f2e11084-8226-4cff-8e0c-51ac64a86b51', 'omega3', 0.5, 'as-fed'),
  ('f2e11084-8226-4cff-8e0c-51ac64a86b51', 'omega6', 2, 'as-fed');

-- Hill's Prescription Diet — z/d Mini Hondenvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/prescription-diet-zd-small-bites-food-sensitivities-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (1,14%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (3,1%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.534 kcal/kg als 353 kcal/100 g; 353 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '9fd28953-1dcb-4f43-905e-7afedd3684a3';
delete from public.recipe_nutrition where recipe_version_id = '9fd28953-1dcb-4f43-905e-7afedd3684a3';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9fd28953-1dcb-4f43-905e-7afedd3684a3', 'protein', 17.6, 'as-fed'),
  ('9fd28953-1dcb-4f43-905e-7afedd3684a3', 'fat', 14.4, 'as-fed'),
  ('9fd28953-1dcb-4f43-905e-7afedd3684a3', 'fiber', 6.5, 'as-fed'),
  ('9fd28953-1dcb-4f43-905e-7afedd3684a3', 'ash', 5.5, 'as-fed'),
  ('9fd28953-1dcb-4f43-905e-7afedd3684a3', 'moisture', 8, 'as-fed'),
  ('9fd28953-1dcb-4f43-905e-7afedd3684a3', 'kcal', 353, 'as-fed'),
  ('9fd28953-1dcb-4f43-905e-7afedd3684a3', 'calcium', 0.85, 'as-fed'),
  ('9fd28953-1dcb-4f43-905e-7afedd3684a3', 'phosphorus', 0.51, 'as-fed'),
  ('9fd28953-1dcb-4f43-905e-7afedd3684a3', 'omega3', 1.14, 'as-fed'),
  ('9fd28953-1dcb-4f43-905e-7afedd3684a3', 'omega6', 3.1, 'as-fed');

-- Hill's Science Plan — Adult Natvoer Hond met Kalkoen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-turkey-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,07%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,77%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 962 kcal/kg omgerekend naar 96,2 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 355 kcal/blik.'
 where id = '2aec6151-ddcb-45eb-99f9-9b8fce2ff49d';
delete from public.recipe_nutrition where recipe_version_id = '2aec6151-ddcb-45eb-99f9-9b8fce2ff49d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2aec6151-ddcb-45eb-99f9-9b8fce2ff49d', 'protein', 5.4, 'as-fed'),
  ('2aec6151-ddcb-45eb-99f9-9b8fce2ff49d', 'fat', 4.2, 'as-fed'),
  ('2aec6151-ddcb-45eb-99f9-9b8fce2ff49d', 'fiber', 0.28, 'as-fed'),
  ('2aec6151-ddcb-45eb-99f9-9b8fce2ff49d', 'ash', 1.2, 'as-fed'),
  ('2aec6151-ddcb-45eb-99f9-9b8fce2ff49d', 'moisture', 77, 'as-fed'),
  ('2aec6151-ddcb-45eb-99f9-9b8fce2ff49d', 'kcal', 96.2, 'as-fed'),
  ('2aec6151-ddcb-45eb-99f9-9b8fce2ff49d', 'calcium', 0.2, 'as-fed'),
  ('2aec6151-ddcb-45eb-99f9-9b8fce2ff49d', 'phosphorus', 0.12, 'as-fed'),
  ('2aec6151-ddcb-45eb-99f9-9b8fce2ff49d', 'omega3', 0.07, 'as-fed'),
  ('2aec6151-ddcb-45eb-99f9-9b8fce2ff49d', 'omega6', 0.77, 'as-fed');

-- Hill's Science Plan — Adult Stoofpotje Hond met Kip & toegevoegde Groenten (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-chunks-gravy-chicken-vegetable-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,07%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,71%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 907 kcal/kg omgerekend naar 90,7 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 329 kcal/blik.'
 where id = '16fcb828-9e63-4a2d-bb20-3f068ed46a70';
delete from public.recipe_nutrition where recipe_version_id = '16fcb828-9e63-4a2d-bb20-3f068ed46a70';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('16fcb828-9e63-4a2d-bb20-3f068ed46a70', 'protein', 6.1, 'as-fed'),
  ('16fcb828-9e63-4a2d-bb20-3f068ed46a70', 'fat', 4.2, 'as-fed'),
  ('16fcb828-9e63-4a2d-bb20-3f068ed46a70', 'fiber', 0.62, 'as-fed'),
  ('16fcb828-9e63-4a2d-bb20-3f068ed46a70', 'ash', 1.4, 'as-fed'),
  ('16fcb828-9e63-4a2d-bb20-3f068ed46a70', 'moisture', 78.1, 'as-fed'),
  ('16fcb828-9e63-4a2d-bb20-3f068ed46a70', 'kcal', 90.7, 'as-fed'),
  ('16fcb828-9e63-4a2d-bb20-3f068ed46a70', 'calcium', 0.2, 'as-fed'),
  ('16fcb828-9e63-4a2d-bb20-3f068ed46a70', 'phosphorus', 0.14, 'as-fed'),
  ('16fcb828-9e63-4a2d-bb20-3f068ed46a70', 'omega3', 0.07, 'as-fed'),
  ('16fcb828-9e63-4a2d-bb20-3f068ed46a70', 'omega6', 0.71, 'as-fed');

-- Hill's Science Plan — Healthy Mobility Large Breed Adult Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-healthy-mobility-large-breed-chicken-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (2,84%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.612 kcal/kg als 361 kcal/100 g; 361 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '953a7e0c-8b62-45ab-ac88-4d89597ed7bc';
delete from public.recipe_nutrition where recipe_version_id = '953a7e0c-8b62-45ab-ac88-4d89597ed7bc';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('953a7e0c-8b62-45ab-ac88-4d89597ed7bc', 'protein', 19.7, 'as-fed'),
  ('953a7e0c-8b62-45ab-ac88-4d89597ed7bc', 'fat', 12.9, 'as-fed'),
  ('953a7e0c-8b62-45ab-ac88-4d89597ed7bc', 'fiber', 2.4, 'as-fed'),
  ('953a7e0c-8b62-45ab-ac88-4d89597ed7bc', 'ash', 4.4, 'as-fed'),
  ('953a7e0c-8b62-45ab-ac88-4d89597ed7bc', 'moisture', 8, 'as-fed'),
  ('953a7e0c-8b62-45ab-ac88-4d89597ed7bc', 'kcal', 361, 'as-fed'),
  ('953a7e0c-8b62-45ab-ac88-4d89597ed7bc', 'calcium', 0.62, 'as-fed'),
  ('953a7e0c-8b62-45ab-ac88-4d89597ed7bc', 'phosphorus', 0.56, 'as-fed'),
  ('953a7e0c-8b62-45ab-ac88-4d89597ed7bc', 'omega3', 1.4, 'as-fed'),
  ('953a7e0c-8b62-45ab-ac88-4d89597ed7bc', 'omega6', 2.84, 'as-fed');

-- Hill's Science Plan — Healthy Mobility Medium Adult Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-healthy-mobility-medium-chicken-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (2,98%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.681 kcal/kg als 368 kcal/100 g; 368 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '6a4b1a17-0858-4c6b-afd6-407634de3f4a';
delete from public.recipe_nutrition where recipe_version_id = '6a4b1a17-0858-4c6b-afd6-407634de3f4a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6a4b1a17-0858-4c6b-afd6-407634de3f4a', 'protein', 19.7, 'as-fed'),
  ('6a4b1a17-0858-4c6b-afd6-407634de3f4a', 'fat', 13.1, 'as-fed'),
  ('6a4b1a17-0858-4c6b-afd6-407634de3f4a', 'fiber', 2.4, 'as-fed'),
  ('6a4b1a17-0858-4c6b-afd6-407634de3f4a', 'ash', 4.4, 'as-fed'),
  ('6a4b1a17-0858-4c6b-afd6-407634de3f4a', 'moisture', 8, 'as-fed'),
  ('6a4b1a17-0858-4c6b-afd6-407634de3f4a', 'kcal', 368, 'as-fed'),
  ('6a4b1a17-0858-4c6b-afd6-407634de3f4a', 'calcium', 0.62, 'as-fed'),
  ('6a4b1a17-0858-4c6b-afd6-407634de3f4a', 'phosphorus', 0.57, 'as-fed'),
  ('6a4b1a17-0858-4c6b-afd6-407634de3f4a', 'omega3', 1.4, 'as-fed'),
  ('6a4b1a17-0858-4c6b-afd6-407634de3f4a', 'omega6', 2.98, 'as-fed');

-- Hill's Science Plan — Healthy Mobility Small & Mini Adult Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-healthy-mobility-mini-chicken-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (2,84%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.663 kcal/kg als 366 kcal/100 g; 366 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '412d280a-834a-414c-be32-4bad71700825';
delete from public.recipe_nutrition where recipe_version_id = '412d280a-834a-414c-be32-4bad71700825';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('412d280a-834a-414c-be32-4bad71700825', 'protein', 19.6, 'as-fed'),
  ('412d280a-834a-414c-be32-4bad71700825', 'fat', 13.3, 'as-fed'),
  ('412d280a-834a-414c-be32-4bad71700825', 'fiber', 2.2, 'as-fed'),
  ('412d280a-834a-414c-be32-4bad71700825', 'ash', 4.3, 'as-fed'),
  ('412d280a-834a-414c-be32-4bad71700825', 'moisture', 8, 'as-fed'),
  ('412d280a-834a-414c-be32-4bad71700825', 'kcal', 366, 'as-fed'),
  ('412d280a-834a-414c-be32-4bad71700825', 'calcium', 0.61, 'as-fed'),
  ('412d280a-834a-414c-be32-4bad71700825', 'phosphorus', 0.54, 'as-fed'),
  ('412d280a-834a-414c-be32-4bad71700825', 'omega3', 1.4, 'as-fed'),
  ('412d280a-834a-414c-be32-4bad71700825', 'omega6', 2.84, 'as-fed');

-- Hill's Science Plan — Hypoallergenic Adult Natvoer Hond met Zalm (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-hypoallergenic-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,38%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (1,23%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 1.192 kcal/kg omgerekend naar 119,2 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 432 kcal/blik.'
 where id = 'f22f2ca4-1522-42a7-b0aa-9665ad3ef1bd';
delete from public.recipe_nutrition where recipe_version_id = 'f22f2ca4-1522-42a7-b0aa-9665ad3ef1bd';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f22f2ca4-1522-42a7-b0aa-9665ad3ef1bd', 'protein', 7.2, 'as-fed'),
  ('f22f2ca4-1522-42a7-b0aa-9665ad3ef1bd', 'fat', 4.9, 'as-fed'),
  ('f22f2ca4-1522-42a7-b0aa-9665ad3ef1bd', 'fiber', 0.64, 'as-fed'),
  ('f22f2ca4-1522-42a7-b0aa-9665ad3ef1bd', 'ash', 1.3, 'as-fed'),
  ('f22f2ca4-1522-42a7-b0aa-9665ad3ef1bd', 'moisture', 71, 'as-fed'),
  ('f22f2ca4-1522-42a7-b0aa-9665ad3ef1bd', 'kcal', 119.2, 'as-fed'),
  ('f22f2ca4-1522-42a7-b0aa-9665ad3ef1bd', 'calcium', 0.21, 'as-fed'),
  ('f22f2ca4-1522-42a7-b0aa-9665ad3ef1bd', 'phosphorus', 0.2, 'as-fed'),
  ('f22f2ca4-1522-42a7-b0aa-9665ad3ef1bd', 'omega3', 0.38, 'as-fed'),
  ('f22f2ca4-1522-42a7-b0aa-9665ad3ef1bd', 'omega6', 1.23, 'as-fed');

-- Hill's Science Plan — Hypoallergenic Large Breed Adult Hondenvoer met Zalm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-large-breed-hypoallergenic-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.700 kcal/kg als 370 kcal/100 g; 370 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '4e635627-f59a-42eb-b7c6-f03640780ee5';
delete from public.recipe_nutrition where recipe_version_id = '4e635627-f59a-42eb-b7c6-f03640780ee5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4e635627-f59a-42eb-b7c6-f03640780ee5', 'protein', 19.9, 'as-fed'),
  ('4e635627-f59a-42eb-b7c6-f03640780ee5', 'fat', 14.2, 'as-fed'),
  ('4e635627-f59a-42eb-b7c6-f03640780ee5', 'fiber', 2.1, 'as-fed'),
  ('4e635627-f59a-42eb-b7c6-f03640780ee5', 'ash', 4.8, 'as-fed'),
  ('4e635627-f59a-42eb-b7c6-f03640780ee5', 'moisture', 8, 'as-fed'),
  ('4e635627-f59a-42eb-b7c6-f03640780ee5', 'kcal', 370, 'as-fed'),
  ('4e635627-f59a-42eb-b7c6-f03640780ee5', 'calcium', 0.64, 'as-fed'),
  ('4e635627-f59a-42eb-b7c6-f03640780ee5', 'phosphorus', 0.59, 'as-fed'),
  ('4e635627-f59a-42eb-b7c6-f03640780ee5', 'omega3', 0.7, 'as-fed'),
  ('4e635627-f59a-42eb-b7c6-f03640780ee5', 'omega6', 3, 'as-fed');

-- Hill's Science Plan — Hypoallergenic Small & Mini Adult Hondenvoer met Zalm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-small-mini-hypoallergenic-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.700 kcal/kg als 370 kcal/100 g; 370 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '7ce092a9-1101-4174-8041-d70fe1bd0457';
delete from public.recipe_nutrition where recipe_version_id = '7ce092a9-1101-4174-8041-d70fe1bd0457';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7ce092a9-1101-4174-8041-d70fe1bd0457', 'protein', 19.9, 'as-fed'),
  ('7ce092a9-1101-4174-8041-d70fe1bd0457', 'fat', 14.2, 'as-fed'),
  ('7ce092a9-1101-4174-8041-d70fe1bd0457', 'fiber', 2.1, 'as-fed'),
  ('7ce092a9-1101-4174-8041-d70fe1bd0457', 'ash', 4.8, 'as-fed'),
  ('7ce092a9-1101-4174-8041-d70fe1bd0457', 'moisture', 8, 'as-fed'),
  ('7ce092a9-1101-4174-8041-d70fe1bd0457', 'kcal', 370, 'as-fed'),
  ('7ce092a9-1101-4174-8041-d70fe1bd0457', 'calcium', 0.64, 'as-fed'),
  ('7ce092a9-1101-4174-8041-d70fe1bd0457', 'phosphorus', 0.58, 'as-fed'),
  ('7ce092a9-1101-4174-8041-d70fe1bd0457', 'omega3', 0.7, 'as-fed'),
  ('7ce092a9-1101-4174-8041-d70fe1bd0457', 'omega6', 3, 'as-fed');

-- Hill's Science Plan — Large Breed Adult Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-large-breed-chicken-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,46%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.682 kcal/kg als 368 kcal/100 g; 368 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '7f7c66a8-0b12-40b7-bf52-f9a7e82ee27a';
delete from public.recipe_nutrition where recipe_version_id = '7f7c66a8-0b12-40b7-bf52-f9a7e82ee27a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7f7c66a8-0b12-40b7-bf52-f9a7e82ee27a', 'protein', 22.8, 'as-fed'),
  ('7f7c66a8-0b12-40b7-bf52-f9a7e82ee27a', 'fat', 14.3, 'as-fed'),
  ('7f7c66a8-0b12-40b7-bf52-f9a7e82ee27a', 'fiber', 1.6, 'as-fed'),
  ('7f7c66a8-0b12-40b7-bf52-f9a7e82ee27a', 'ash', 5.2, 'as-fed'),
  ('7f7c66a8-0b12-40b7-bf52-f9a7e82ee27a', 'moisture', 8, 'as-fed'),
  ('7f7c66a8-0b12-40b7-bf52-f9a7e82ee27a', 'kcal', 368, 'as-fed'),
  ('7f7c66a8-0b12-40b7-bf52-f9a7e82ee27a', 'calcium', 0.88, 'as-fed'),
  ('7f7c66a8-0b12-40b7-bf52-f9a7e82ee27a', 'phosphorus', 0.72, 'as-fed'),
  ('7f7c66a8-0b12-40b7-bf52-f9a7e82ee27a', 'omega3', 0.46, 'as-fed'),
  ('7f7c66a8-0b12-40b7-bf52-f9a7e82ee27a', 'omega6', 3.5, 'as-fed');

-- Hill's Science Plan — Large Breed Mature Adult Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-mature-adult-6-large-breed-chicken-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,73%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.627 kcal/kg als 363 kcal/100 g; 363 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = 'd671e19e-c76a-4a69-8f94-fafe919e313b';
delete from public.recipe_nutrition where recipe_version_id = 'd671e19e-c76a-4a69-8f94-fafe919e313b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d671e19e-c76a-4a69-8f94-fafe919e313b', 'protein', 17.4, 'as-fed'),
  ('d671e19e-c76a-4a69-8f94-fafe919e313b', 'fat', 13.9, 'as-fed'),
  ('d671e19e-c76a-4a69-8f94-fafe919e313b', 'fiber', 3.1, 'as-fed'),
  ('d671e19e-c76a-4a69-8f94-fafe919e313b', 'ash', 4.6, 'as-fed'),
  ('d671e19e-c76a-4a69-8f94-fafe919e313b', 'moisture', 8, 'as-fed'),
  ('d671e19e-c76a-4a69-8f94-fafe919e313b', 'kcal', 363, 'as-fed'),
  ('d671e19e-c76a-4a69-8f94-fafe919e313b', 'calcium', 0.71, 'as-fed'),
  ('d671e19e-c76a-4a69-8f94-fafe919e313b', 'phosphorus', 0.56, 'as-fed'),
  ('d671e19e-c76a-4a69-8f94-fafe919e313b', 'omega3', 0.73, 'as-fed'),
  ('d671e19e-c76a-4a69-8f94-fafe919e313b', 'omega6', 3.8, 'as-fed');

-- Hill's Science Plan — Large Breed Puppyvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-puppy-large-breed-chicken-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,95%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (2,22%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.953 kcal/kg als 395 kcal/100 g; 395 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = 'b6a2a2c2-8af0-4b8f-a19d-c17671153d4e';
delete from public.recipe_nutrition where recipe_version_id = 'b6a2a2c2-8af0-4b8f-a19d-c17671153d4e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b6a2a2c2-8af0-4b8f-a19d-c17671153d4e', 'protein', 29.2, 'as-fed'),
  ('b6a2a2c2-8af0-4b8f-a19d-c17671153d4e', 'fat', 14.4, 'as-fed'),
  ('b6a2a2c2-8af0-4b8f-a19d-c17671153d4e', 'fiber', 2.7, 'as-fed'),
  ('b6a2a2c2-8af0-4b8f-a19d-c17671153d4e', 'ash', 6.4, 'as-fed'),
  ('b6a2a2c2-8af0-4b8f-a19d-c17671153d4e', 'moisture', 8, 'as-fed'),
  ('b6a2a2c2-8af0-4b8f-a19d-c17671153d4e', 'kcal', 395, 'as-fed'),
  ('b6a2a2c2-8af0-4b8f-a19d-c17671153d4e', 'calcium', 1.1, 'as-fed'),
  ('b6a2a2c2-8af0-4b8f-a19d-c17671153d4e', 'phosphorus', 0.95, 'as-fed'),
  ('b6a2a2c2-8af0-4b8f-a19d-c17671153d4e', 'omega3', 0.95, 'as-fed'),
  ('b6a2a2c2-8af0-4b8f-a19d-c17671153d4e', 'omega6', 2.22, 'as-fed');

-- Hill's Science Plan — Light Adult Natvoer Hond met Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-light-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,06%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,58%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 821 kcal/kg omgerekend naar 82,1 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 303 kcal/blik.'
 where id = '25aaad00-a0cf-4b5c-bd5f-c5f69e30b886';
delete from public.recipe_nutrition where recipe_version_id = '25aaad00-a0cf-4b5c-bd5f-c5f69e30b886';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('25aaad00-a0cf-4b5c-bd5f-c5f69e30b886', 'protein', 6.6, 'as-fed'),
  ('25aaad00-a0cf-4b5c-bd5f-c5f69e30b886', 'fat', 2.4, 'as-fed'),
  ('25aaad00-a0cf-4b5c-bd5f-c5f69e30b886', 'fiber', 2.9, 'as-fed'),
  ('25aaad00-a0cf-4b5c-bd5f-c5f69e30b886', 'ash', 1.5, 'as-fed'),
  ('25aaad00-a0cf-4b5c-bd5f-c5f69e30b886', 'moisture', 75.6, 'as-fed'),
  ('25aaad00-a0cf-4b5c-bd5f-c5f69e30b886', 'kcal', 82.1, 'as-fed'),
  ('25aaad00-a0cf-4b5c-bd5f-c5f69e30b886', 'calcium', 0.2, 'as-fed'),
  ('25aaad00-a0cf-4b5c-bd5f-c5f69e30b886', 'phosphorus', 0.14, 'as-fed'),
  ('25aaad00-a0cf-4b5c-bd5f-c5f69e30b886', 'omega3', 0.06, 'as-fed'),
  ('25aaad00-a0cf-4b5c-bd5f-c5f69e30b886', 'omega6', 0.58, 'as-fed');

-- Hill's Science Plan — Light Large Breed Adult Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-light-large-breed-chicken-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,44%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.125 kcal/kg als 312 kcal/100 g; 312 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '9bdf395c-03e6-4fd1-8bcb-d5fc3ef23ee2';
delete from public.recipe_nutrition where recipe_version_id = '9bdf395c-03e6-4fd1-8bcb-d5fc3ef23ee2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9bdf395c-03e6-4fd1-8bcb-d5fc3ef23ee2', 'protein', 23, 'as-fed'),
  ('9bdf395c-03e6-4fd1-8bcb-d5fc3ef23ee2', 'fat', 9.5, 'as-fed'),
  ('9bdf395c-03e6-4fd1-8bcb-d5fc3ef23ee2', 'fiber', 12.3, 'as-fed'),
  ('9bdf395c-03e6-4fd1-8bcb-d5fc3ef23ee2', 'ash', 5.2, 'as-fed'),
  ('9bdf395c-03e6-4fd1-8bcb-d5fc3ef23ee2', 'moisture', 8, 'as-fed'),
  ('9bdf395c-03e6-4fd1-8bcb-d5fc3ef23ee2', 'kcal', 312, 'as-fed'),
  ('9bdf395c-03e6-4fd1-8bcb-d5fc3ef23ee2', 'calcium', 0.87, 'as-fed'),
  ('9bdf395c-03e6-4fd1-8bcb-d5fc3ef23ee2', 'phosphorus', 0.62, 'as-fed'),
  ('9bdf395c-03e6-4fd1-8bcb-d5fc3ef23ee2', 'omega3', 0.44, 'as-fed'),
  ('9bdf395c-03e6-4fd1-8bcb-d5fc3ef23ee2', 'omega6', 2.9, 'as-fed');

-- Hill's Science Plan — Light Medium Adult Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-light-chicken-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,39%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (2,88%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.128 kcal/kg als 313 kcal/100 g; 313 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '70f01878-546e-4665-806e-6d16ac698c91';
delete from public.recipe_nutrition where recipe_version_id = '70f01878-546e-4665-806e-6d16ac698c91';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('70f01878-546e-4665-806e-6d16ac698c91', 'protein', 25, 'as-fed'),
  ('70f01878-546e-4665-806e-6d16ac698c91', 'fat', 10.7, 'as-fed'),
  ('70f01878-546e-4665-806e-6d16ac698c91', 'fiber', 12.4, 'as-fed'),
  ('70f01878-546e-4665-806e-6d16ac698c91', 'ash', 5.3, 'as-fed'),
  ('70f01878-546e-4665-806e-6d16ac698c91', 'moisture', 8, 'as-fed'),
  ('70f01878-546e-4665-806e-6d16ac698c91', 'kcal', 313, 'as-fed'),
  ('70f01878-546e-4665-806e-6d16ac698c91', 'calcium', 0.85, 'as-fed'),
  ('70f01878-546e-4665-806e-6d16ac698c91', 'phosphorus', 0.6, 'as-fed'),
  ('70f01878-546e-4665-806e-6d16ac698c91', 'omega3', 0.39, 'as-fed'),
  ('70f01878-546e-4665-806e-6d16ac698c91', 'omega6', 2.88, 'as-fed');

-- Hill's Science Plan — Light Medium Mature Adult Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-mature-adult-7-light-medium-chicken-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,75%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (2,58%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.130 kcal/kg als 313 kcal/100 g; 313 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = 'cf4190db-1356-4281-9f5c-dd674cd874e4';
delete from public.recipe_nutrition where recipe_version_id = 'cf4190db-1356-4281-9f5c-dd674cd874e4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('cf4190db-1356-4281-9f5c-dd674cd874e4', 'protein', 17.5, 'as-fed'),
  ('cf4190db-1356-4281-9f5c-dd674cd874e4', 'fat', 10.4, 'as-fed'),
  ('cf4190db-1356-4281-9f5c-dd674cd874e4', 'fiber', 12.1, 'as-fed'),
  ('cf4190db-1356-4281-9f5c-dd674cd874e4', 'ash', 4.8, 'as-fed'),
  ('cf4190db-1356-4281-9f5c-dd674cd874e4', 'moisture', 8, 'as-fed'),
  ('cf4190db-1356-4281-9f5c-dd674cd874e4', 'kcal', 313, 'as-fed'),
  ('cf4190db-1356-4281-9f5c-dd674cd874e4', 'calcium', 0.81, 'as-fed'),
  ('cf4190db-1356-4281-9f5c-dd674cd874e4', 'phosphorus', 0.59, 'as-fed'),
  ('cf4190db-1356-4281-9f5c-dd674cd874e4', 'omega3', 0.75, 'as-fed'),
  ('cf4190db-1356-4281-9f5c-dd674cd874e4', 'omega6', 2.58, 'as-fed');

-- Hill's Science Plan — Light Small & Mini Adult Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-light-small-miniature-chicken-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,37%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (2,85%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.123 kcal/kg als 312 kcal/100 g; 312 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '30a1d5f1-01db-4f10-9135-6c67354e0ccc';
delete from public.recipe_nutrition where recipe_version_id = '30a1d5f1-01db-4f10-9135-6c67354e0ccc';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('30a1d5f1-01db-4f10-9135-6c67354e0ccc', 'protein', 23.7, 'as-fed'),
  ('30a1d5f1-01db-4f10-9135-6c67354e0ccc', 'fat', 10.3, 'as-fed'),
  ('30a1d5f1-01db-4f10-9135-6c67354e0ccc', 'fiber', 12.4, 'as-fed'),
  ('30a1d5f1-01db-4f10-9135-6c67354e0ccc', 'ash', 5.2, 'as-fed'),
  ('30a1d5f1-01db-4f10-9135-6c67354e0ccc', 'moisture', 8, 'as-fed'),
  ('30a1d5f1-01db-4f10-9135-6c67354e0ccc', 'kcal', 312, 'as-fed'),
  ('30a1d5f1-01db-4f10-9135-6c67354e0ccc', 'calcium', 0.82, 'as-fed'),
  ('30a1d5f1-01db-4f10-9135-6c67354e0ccc', 'phosphorus', 0.61, 'as-fed'),
  ('30a1d5f1-01db-4f10-9135-6c67354e0ccc', 'omega3', 0.37, 'as-fed'),
  ('30a1d5f1-01db-4f10-9135-6c67354e0ccc', 'omega6', 2.85, 'as-fed');

-- Hill's Science Plan — Light Small & Mini Mature Adult Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-mature-adult-7-light-mini-chicken-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,74%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (2,48%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.081 kcal/kg als 308 kcal/100 g; 308 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '34991ecd-6fcf-41f8-9c88-42e3d7a45c88';
delete from public.recipe_nutrition where recipe_version_id = '34991ecd-6fcf-41f8-9c88-42e3d7a45c88';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('34991ecd-6fcf-41f8-9c88-42e3d7a45c88', 'protein', 17.7, 'as-fed'),
  ('34991ecd-6fcf-41f8-9c88-42e3d7a45c88', 'fat', 10, 'as-fed'),
  ('34991ecd-6fcf-41f8-9c88-42e3d7a45c88', 'fiber', 12.9, 'as-fed'),
  ('34991ecd-6fcf-41f8-9c88-42e3d7a45c88', 'ash', 5.3, 'as-fed'),
  ('34991ecd-6fcf-41f8-9c88-42e3d7a45c88', 'moisture', 8, 'as-fed'),
  ('34991ecd-6fcf-41f8-9c88-42e3d7a45c88', 'kcal', 308, 'as-fed'),
  ('34991ecd-6fcf-41f8-9c88-42e3d7a45c88', 'calcium', 0.81, 'as-fed'),
  ('34991ecd-6fcf-41f8-9c88-42e3d7a45c88', 'phosphorus', 0.6, 'as-fed'),
  ('34991ecd-6fcf-41f8-9c88-42e3d7a45c88', 'omega3', 0.74, 'as-fed'),
  ('34991ecd-6fcf-41f8-9c88-42e3d7a45c88', 'omega6', 2.48, 'as-fed');

-- Hill's Science Plan — Mature Adult Natvoer Hond met Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-mature-adult-chicken-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,04%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,31%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 895 kcal/kg omgerekend naar 89,5 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 331 kcal/blik.'
 where id = 'f32094ff-b095-4bf5-b6c1-51b9299dce7f';
delete from public.recipe_nutrition where recipe_version_id = 'f32094ff-b095-4bf5-b6c1-51b9299dce7f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f32094ff-b095-4bf5-b6c1-51b9299dce7f', 'protein', 5.2, 'as-fed'),
  ('f32094ff-b095-4bf5-b6c1-51b9299dce7f', 'fat', 3.1, 'as-fed'),
  ('f32094ff-b095-4bf5-b6c1-51b9299dce7f', 'fiber', 0.61, 'as-fed'),
  ('f32094ff-b095-4bf5-b6c1-51b9299dce7f', 'ash', 1.3, 'as-fed'),
  ('f32094ff-b095-4bf5-b6c1-51b9299dce7f', 'moisture', 77, 'as-fed'),
  ('f32094ff-b095-4bf5-b6c1-51b9299dce7f', 'kcal', 89.5, 'as-fed'),
  ('f32094ff-b095-4bf5-b6c1-51b9299dce7f', 'calcium', 0.26, 'as-fed'),
  ('f32094ff-b095-4bf5-b6c1-51b9299dce7f', 'phosphorus', 0.14, 'as-fed'),
  ('f32094ff-b095-4bf5-b6c1-51b9299dce7f', 'omega3', 0.04, 'as-fed'),
  ('f32094ff-b095-4bf5-b6c1-51b9299dce7f', 'omega6', 0.31, 'as-fed');

-- Hill's Science Plan — Mature Adult Natvoer Hond met Rund (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-mature-adult-beef-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,05%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,32%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 912 kcal/kg omgerekend naar 91,2 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 337 kcal/blik.'
 where id = '15a35133-a2e0-40ee-b23c-3203e2b8c072';
delete from public.recipe_nutrition where recipe_version_id = '15a35133-a2e0-40ee-b23c-3203e2b8c072';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('15a35133-a2e0-40ee-b23c-3203e2b8c072', 'protein', 5.2, 'as-fed'),
  ('15a35133-a2e0-40ee-b23c-3203e2b8c072', 'fat', 3.1, 'as-fed'),
  ('15a35133-a2e0-40ee-b23c-3203e2b8c072', 'fiber', 0.62, 'as-fed'),
  ('15a35133-a2e0-40ee-b23c-3203e2b8c072', 'ash', 1.3, 'as-fed'),
  ('15a35133-a2e0-40ee-b23c-3203e2b8c072', 'moisture', 76.5, 'as-fed'),
  ('15a35133-a2e0-40ee-b23c-3203e2b8c072', 'kcal', 91.2, 'as-fed'),
  ('15a35133-a2e0-40ee-b23c-3203e2b8c072', 'calcium', 0.27, 'as-fed'),
  ('15a35133-a2e0-40ee-b23c-3203e2b8c072', 'phosphorus', 0.14, 'as-fed'),
  ('15a35133-a2e0-40ee-b23c-3203e2b8c072', 'omega3', 0.05, 'as-fed'),
  ('15a35133-a2e0-40ee-b23c-3203e2b8c072', 'omega6', 0.32, 'as-fed');

-- Hill's Science Plan — Mature Adult Stoofpotje Hond met Kip & toegevoegde Groenten (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-mature-adult-chunks-gravy-chicken-vegetables-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,12%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,82%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 853 kcal/kg omgerekend naar 85,3 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 309 kcal/blik.'
 where id = '40db393e-4d39-48d2-8ec3-b67aa93aae6f';
delete from public.recipe_nutrition where recipe_version_id = '40db393e-4d39-48d2-8ec3-b67aa93aae6f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('40db393e-4d39-48d2-8ec3-b67aa93aae6f', 'protein', 5.2, 'as-fed'),
  ('40db393e-4d39-48d2-8ec3-b67aa93aae6f', 'fat', 3.5, 'as-fed'),
  ('40db393e-4d39-48d2-8ec3-b67aa93aae6f', 'fiber', 0.59, 'as-fed'),
  ('40db393e-4d39-48d2-8ec3-b67aa93aae6f', 'ash', 1.6, 'as-fed'),
  ('40db393e-4d39-48d2-8ec3-b67aa93aae6f', 'moisture', 78.4, 'as-fed'),
  ('40db393e-4d39-48d2-8ec3-b67aa93aae6f', 'kcal', 85.3, 'as-fed'),
  ('40db393e-4d39-48d2-8ec3-b67aa93aae6f', 'calcium', 0.24, 'as-fed'),
  ('40db393e-4d39-48d2-8ec3-b67aa93aae6f', 'phosphorus', 0.17, 'as-fed'),
  ('40db393e-4d39-48d2-8ec3-b67aa93aae6f', 'omega3', 0.12, 'as-fed'),
  ('40db393e-4d39-48d2-8ec3-b67aa93aae6f', 'omega6', 0.82, 'as-fed');

-- Hill's Science Plan — Medium Adult Hondenvoer met Lam & Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-lamb-rice-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,55%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.718 kcal/kg als 372 kcal/100 g; 372 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '0bf33f7a-d314-47f7-b300-35565797be72';
delete from public.recipe_nutrition where recipe_version_id = '0bf33f7a-d314-47f7-b300-35565797be72';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0bf33f7a-d314-47f7-b300-35565797be72', 'protein', 21.5, 'as-fed'),
  ('0bf33f7a-d314-47f7-b300-35565797be72', 'fat', 14, 'as-fed'),
  ('0bf33f7a-d314-47f7-b300-35565797be72', 'fiber', 1.4, 'as-fed'),
  ('0bf33f7a-d314-47f7-b300-35565797be72', 'ash', 4.8, 'as-fed'),
  ('0bf33f7a-d314-47f7-b300-35565797be72', 'moisture', 8, 'as-fed'),
  ('0bf33f7a-d314-47f7-b300-35565797be72', 'kcal', 372, 'as-fed'),
  ('0bf33f7a-d314-47f7-b300-35565797be72', 'calcium', 0.71, 'as-fed'),
  ('0bf33f7a-d314-47f7-b300-35565797be72', 'phosphorus', 0.64, 'as-fed'),
  ('0bf33f7a-d314-47f7-b300-35565797be72', 'omega3', 0.55, 'as-fed'),
  ('0bf33f7a-d314-47f7-b300-35565797be72', 'omega6', 3.5, 'as-fed');

-- Hill's Science Plan — Medium Mature Adult Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-mature-adult-7-medium-chicken-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,74%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.638 kcal/kg als 364 kcal/100 g; 364 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = 'db611bb5-41ad-4be8-9340-728dcfbb1ae7';
delete from public.recipe_nutrition where recipe_version_id = 'db611bb5-41ad-4be8-9340-728dcfbb1ae7';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('db611bb5-41ad-4be8-9340-728dcfbb1ae7', 'protein', 17.5, 'as-fed'),
  ('db611bb5-41ad-4be8-9340-728dcfbb1ae7', 'fat', 13.3, 'as-fed'),
  ('db611bb5-41ad-4be8-9340-728dcfbb1ae7', 'fiber', 1.9, 'as-fed'),
  ('db611bb5-41ad-4be8-9340-728dcfbb1ae7', 'ash', 4.7, 'as-fed'),
  ('db611bb5-41ad-4be8-9340-728dcfbb1ae7', 'moisture', 8, 'as-fed'),
  ('db611bb5-41ad-4be8-9340-728dcfbb1ae7', 'kcal', 364, 'as-fed'),
  ('db611bb5-41ad-4be8-9340-728dcfbb1ae7', 'calcium', 0.77, 'as-fed'),
  ('db611bb5-41ad-4be8-9340-728dcfbb1ae7', 'phosphorus', 0.57, 'as-fed'),
  ('db611bb5-41ad-4be8-9340-728dcfbb1ae7', 'omega3', 0.74, 'as-fed'),
  ('db611bb5-41ad-4be8-9340-728dcfbb1ae7', 'omega6', 3.9, 'as-fed');

-- Hill's Science Plan — Medium Mature Adult Hondenvoer met Lam & Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-mature-adult-7-medium-lamb-and-rice-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (1,06%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.633 kcal/kg als 363 kcal/100 g; 363 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '31d0e05a-4d72-4235-a91b-c9db4f9c5f5f';
delete from public.recipe_nutrition where recipe_version_id = '31d0e05a-4d72-4235-a91b-c9db4f9c5f5f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('31d0e05a-4d72-4235-a91b-c9db4f9c5f5f', 'protein', 17.2, 'as-fed'),
  ('31d0e05a-4d72-4235-a91b-c9db4f9c5f5f', 'fat', 13.5, 'as-fed'),
  ('31d0e05a-4d72-4235-a91b-c9db4f9c5f5f', 'fiber', 2.2, 'as-fed'),
  ('31d0e05a-4d72-4235-a91b-c9db4f9c5f5f', 'ash', 4.8, 'as-fed'),
  ('31d0e05a-4d72-4235-a91b-c9db4f9c5f5f', 'moisture', 8, 'as-fed'),
  ('31d0e05a-4d72-4235-a91b-c9db4f9c5f5f', 'kcal', 363, 'as-fed'),
  ('31d0e05a-4d72-4235-a91b-c9db4f9c5f5f', 'calcium', 0.73, 'as-fed'),
  ('31d0e05a-4d72-4235-a91b-c9db4f9c5f5f', 'phosphorus', 0.6, 'as-fed'),
  ('31d0e05a-4d72-4235-a91b-c9db4f9c5f5f', 'omega3', 1.06, 'as-fed'),
  ('31d0e05a-4d72-4235-a91b-c9db4f9c5f5f', 'omega6', 3.5, 'as-fed');

-- Hill's Science Plan — Medium Puppyvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-puppy-medium-chicken-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,56%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (2,99%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.749 kcal/kg als 375 kcal/100 g; 375 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = 'f50b8c64-0156-4200-bc44-4f932c9448ce';
delete from public.recipe_nutrition where recipe_version_id = 'f50b8c64-0156-4200-bc44-4f932c9448ce';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f50b8c64-0156-4200-bc44-4f932c9448ce', 'protein', 27.4, 'as-fed'),
  ('f50b8c64-0156-4200-bc44-4f932c9448ce', 'fat', 17.9, 'as-fed'),
  ('f50b8c64-0156-4200-bc44-4f932c9448ce', 'fiber', 1.7, 'as-fed'),
  ('f50b8c64-0156-4200-bc44-4f932c9448ce', 'ash', 7.7, 'as-fed'),
  ('f50b8c64-0156-4200-bc44-4f932c9448ce', 'moisture', 8, 'as-fed'),
  ('f50b8c64-0156-4200-bc44-4f932c9448ce', 'kcal', 375, 'as-fed'),
  ('f50b8c64-0156-4200-bc44-4f932c9448ce', 'calcium', 1.4, 'as-fed'),
  ('f50b8c64-0156-4200-bc44-4f932c9448ce', 'phosphorus', 1.1, 'as-fed'),
  ('f50b8c64-0156-4200-bc44-4f932c9448ce', 'omega3', 0.56, 'as-fed'),
  ('f50b8c64-0156-4200-bc44-4f932c9448ce', 'omega6', 2.99, 'as-fed');

-- Hill's Science Plan — Medium Puppyvoer met Lam & Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-puppy-lamb-rice-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (1,01%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (2,6%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.829 kcal/kg als 383 kcal/100 g; 383 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '6559ab1b-1d20-4657-b01a-c9a6813bd7f2';
delete from public.recipe_nutrition where recipe_version_id = '6559ab1b-1d20-4657-b01a-c9a6813bd7f2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6559ab1b-1d20-4657-b01a-c9a6813bd7f2', 'protein', 27.7, 'as-fed'),
  ('6559ab1b-1d20-4657-b01a-c9a6813bd7f2', 'fat', 19.1, 'as-fed'),
  ('6559ab1b-1d20-4657-b01a-c9a6813bd7f2', 'fiber', 1.8, 'as-fed'),
  ('6559ab1b-1d20-4657-b01a-c9a6813bd7f2', 'ash', 7.8, 'as-fed'),
  ('6559ab1b-1d20-4657-b01a-c9a6813bd7f2', 'moisture', 8, 'as-fed'),
  ('6559ab1b-1d20-4657-b01a-c9a6813bd7f2', 'kcal', 383, 'as-fed'),
  ('6559ab1b-1d20-4657-b01a-c9a6813bd7f2', 'calcium', 1.4, 'as-fed'),
  ('6559ab1b-1d20-4657-b01a-c9a6813bd7f2', 'phosphorus', 1, 'as-fed'),
  ('6559ab1b-1d20-4657-b01a-c9a6813bd7f2', 'omega3', 1.01, 'as-fed'),
  ('6559ab1b-1d20-4657-b01a-c9a6813bd7f2', 'omega6', 2.6, 'as-fed');

-- Hill's Science Plan — Multi-Benefit + Dental Adult 1+ Medium & Large Breed Hondenvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-1-dental-medium-and-large-chicken-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht wordt op deze pagina niet vermeld en blijft null. Omega-3 (0,45%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.372 kcal/kg als 337 kcal/100 g; 337 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '7e6342f5-965c-42ab-b16f-6ca7bec373e2';
delete from public.recipe_nutrition where recipe_version_id = '7e6342f5-965c-42ab-b16f-6ca7bec373e2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7e6342f5-965c-42ab-b16f-6ca7bec373e2', 'protein', 19.3, 'as-fed'),
  ('7e6342f5-965c-42ab-b16f-6ca7bec373e2', 'fat', 12.6, 'as-fed'),
  ('7e6342f5-965c-42ab-b16f-6ca7bec373e2', 'fiber', 8.3, 'as-fed'),
  ('7e6342f5-965c-42ab-b16f-6ca7bec373e2', 'ash', 4.9, 'as-fed'),
  ('7e6342f5-965c-42ab-b16f-6ca7bec373e2', 'kcal', 337, 'as-fed'),
  ('7e6342f5-965c-42ab-b16f-6ca7bec373e2', 'calcium', 0.77, 'as-fed'),
  ('7e6342f5-965c-42ab-b16f-6ca7bec373e2', 'phosphorus', 0.61, 'as-fed'),
  ('7e6342f5-965c-42ab-b16f-6ca7bec373e2', 'omega3', 0.45, 'as-fed'),
  ('7e6342f5-965c-42ab-b16f-6ca7bec373e2', 'omega6', 3.2, 'as-fed');

-- Hill's Science Plan — Multi-Benefit + Dental Adult 1+ Small & Mini Hondenvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-1-dental-mini-chicken-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht wordt op deze pagina niet vermeld en blijft null. Omega-3 (0,49%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.395 kcal/kg als 339 kcal/100 g; 339 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '3ecd79fa-93ab-4e1d-ba06-79ff5d713083';
delete from public.recipe_nutrition where recipe_version_id = '3ecd79fa-93ab-4e1d-ba06-79ff5d713083';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3ecd79fa-93ab-4e1d-ba06-79ff5d713083', 'protein', 19.3, 'as-fed'),
  ('3ecd79fa-93ab-4e1d-ba06-79ff5d713083', 'fat', 12.8, 'as-fed'),
  ('3ecd79fa-93ab-4e1d-ba06-79ff5d713083', 'fiber', 8.3, 'as-fed'),
  ('3ecd79fa-93ab-4e1d-ba06-79ff5d713083', 'ash', 5, 'as-fed'),
  ('3ecd79fa-93ab-4e1d-ba06-79ff5d713083', 'kcal', 339, 'as-fed'),
  ('3ecd79fa-93ab-4e1d-ba06-79ff5d713083', 'calcium', 0.77, 'as-fed'),
  ('3ecd79fa-93ab-4e1d-ba06-79ff5d713083', 'phosphorus', 0.61, 'as-fed'),
  ('3ecd79fa-93ab-4e1d-ba06-79ff5d713083', 'omega3', 0.49, 'as-fed'),
  ('3ecd79fa-93ab-4e1d-ba06-79ff5d713083', 'omega6', 3.4, 'as-fed');

-- Hill's Science Plan — Multi-Benefit + Digestion Adult 1+ Large Breed Hondenvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-1-digestion-lb-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht wordt op deze pagina niet vermeld en blijft null. De pagina vermeldt zowel 3.349 kcal/kg als 335 kcal/100 g; 335 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = 'c25caed6-0bc3-42ed-be17-cfc72963e74b';
delete from public.recipe_nutrition where recipe_version_id = 'c25caed6-0bc3-42ed-be17-cfc72963e74b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c25caed6-0bc3-42ed-be17-cfc72963e74b', 'protein', 26.1, 'as-fed'),
  ('c25caed6-0bc3-42ed-be17-cfc72963e74b', 'fat', 13.2, 'as-fed'),
  ('c25caed6-0bc3-42ed-be17-cfc72963e74b', 'fiber', 10, 'as-fed'),
  ('c25caed6-0bc3-42ed-be17-cfc72963e74b', 'ash', 5.3, 'as-fed'),
  ('c25caed6-0bc3-42ed-be17-cfc72963e74b', 'kcal', 335, 'as-fed'),
  ('c25caed6-0bc3-42ed-be17-cfc72963e74b', 'calcium', 0.86, 'as-fed'),
  ('c25caed6-0bc3-42ed-be17-cfc72963e74b', 'phosphorus', 0.66, 'as-fed'),
  ('c25caed6-0bc3-42ed-be17-cfc72963e74b', 'omega3', 0.7, 'as-fed'),
  ('c25caed6-0bc3-42ed-be17-cfc72963e74b', 'omega6', 2.4, 'as-fed');

-- Hill's Science Plan — Multi-Benefit + Digestion Adult 1+ Medium Hondenvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-1-digestion-medium-adult-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht wordt op deze pagina niet vermeld en blijft null. De pagina vermeldt zowel 3.311 kcal/kg als 331 kcal/100 g; 331 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '10088c6d-2526-4a3c-8b12-491bb1871622';
delete from public.recipe_nutrition where recipe_version_id = '10088c6d-2526-4a3c-8b12-491bb1871622';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('10088c6d-2526-4a3c-8b12-491bb1871622', 'protein', 26.1, 'as-fed'),
  ('10088c6d-2526-4a3c-8b12-491bb1871622', 'fat', 12.9, 'as-fed'),
  ('10088c6d-2526-4a3c-8b12-491bb1871622', 'fiber', 10, 'as-fed'),
  ('10088c6d-2526-4a3c-8b12-491bb1871622', 'ash', 5.3, 'as-fed'),
  ('10088c6d-2526-4a3c-8b12-491bb1871622', 'kcal', 331, 'as-fed'),
  ('10088c6d-2526-4a3c-8b12-491bb1871622', 'calcium', 0.86, 'as-fed'),
  ('10088c6d-2526-4a3c-8b12-491bb1871622', 'phosphorus', 0.66, 'as-fed'),
  ('10088c6d-2526-4a3c-8b12-491bb1871622', 'omega3', 0.7, 'as-fed'),
  ('10088c6d-2526-4a3c-8b12-491bb1871622', 'omega6', 2.2, 'as-fed');

-- Hill's Science Plan — Multi-Benefit + Digestion Adult 1+ Small & Mini Hondenvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-1-digestion-small-and-mini-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht wordt op deze pagina niet vermeld en blijft null. De pagina vermeldt zowel 3.337 kcal/kg als 334 kcal/100 g; 334 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '336ec013-9abf-42c5-b269-901dfcd95979';
delete from public.recipe_nutrition where recipe_version_id = '336ec013-9abf-42c5-b269-901dfcd95979';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('336ec013-9abf-42c5-b269-901dfcd95979', 'protein', 26.1, 'as-fed'),
  ('336ec013-9abf-42c5-b269-901dfcd95979', 'fat', 13.1, 'as-fed'),
  ('336ec013-9abf-42c5-b269-901dfcd95979', 'fiber', 10, 'as-fed'),
  ('336ec013-9abf-42c5-b269-901dfcd95979', 'ash', 5.3, 'as-fed'),
  ('336ec013-9abf-42c5-b269-901dfcd95979', 'kcal', 334, 'as-fed'),
  ('336ec013-9abf-42c5-b269-901dfcd95979', 'calcium', 0.86, 'as-fed'),
  ('336ec013-9abf-42c5-b269-901dfcd95979', 'phosphorus', 0.67, 'as-fed'),
  ('336ec013-9abf-42c5-b269-901dfcd95979', 'omega3', 0.7, 'as-fed'),
  ('336ec013-9abf-42c5-b269-901dfcd95979', 'omega6', 2.4, 'as-fed');

-- Hill's Science Plan — Multi-Benefit + Senior Health Mature Adult 7+ Medium & Large Breed Hondenvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-mature-adult-medium-large-breed-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht wordt op deze pagina niet vermeld en blijft null. Omega-3 (0,92%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (3,45%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.617 kcal/kg als 362 kcal/100 g; 362 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '8accf519-4aa0-49e0-a1f9-7e6b68f2da36';
delete from public.recipe_nutrition where recipe_version_id = '8accf519-4aa0-49e0-a1f9-7e6b68f2da36';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8accf519-4aa0-49e0-a1f9-7e6b68f2da36', 'protein', 21.2, 'as-fed'),
  ('8accf519-4aa0-49e0-a1f9-7e6b68f2da36', 'fat', 12.9, 'as-fed'),
  ('8accf519-4aa0-49e0-a1f9-7e6b68f2da36', 'fiber', 2, 'as-fed'),
  ('8accf519-4aa0-49e0-a1f9-7e6b68f2da36', 'ash', 5.1, 'as-fed'),
  ('8accf519-4aa0-49e0-a1f9-7e6b68f2da36', 'kcal', 362, 'as-fed'),
  ('8accf519-4aa0-49e0-a1f9-7e6b68f2da36', 'calcium', 0.85, 'as-fed'),
  ('8accf519-4aa0-49e0-a1f9-7e6b68f2da36', 'phosphorus', 0.61, 'as-fed'),
  ('8accf519-4aa0-49e0-a1f9-7e6b68f2da36', 'omega3', 0.92, 'as-fed'),
  ('8accf519-4aa0-49e0-a1f9-7e6b68f2da36', 'omega6', 3.45, 'as-fed');

-- Hill's Science Plan — Multi-Benefit + Senior Health Mature Adult 7+ Small & Mini Hondenvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-mature-adult-small-mini-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht wordt op deze pagina niet vermeld en blijft null. Omega-3 (0,92%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (3,45%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.617 kcal/kg als 362 kcal/100 g; 362 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = 'fb761c70-f461-48a7-b1a6-49a6d8f4e47d';
delete from public.recipe_nutrition where recipe_version_id = 'fb761c70-f461-48a7-b1a6-49a6d8f4e47d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fb761c70-f461-48a7-b1a6-49a6d8f4e47d', 'protein', 21.2, 'as-fed'),
  ('fb761c70-f461-48a7-b1a6-49a6d8f4e47d', 'fat', 12.9, 'as-fed'),
  ('fb761c70-f461-48a7-b1a6-49a6d8f4e47d', 'fiber', 2, 'as-fed'),
  ('fb761c70-f461-48a7-b1a6-49a6d8f4e47d', 'ash', 5.1, 'as-fed'),
  ('fb761c70-f461-48a7-b1a6-49a6d8f4e47d', 'kcal', 362, 'as-fed'),
  ('fb761c70-f461-48a7-b1a6-49a6d8f4e47d', 'calcium', 0.85, 'as-fed'),
  ('fb761c70-f461-48a7-b1a6-49a6d8f4e47d', 'phosphorus', 0.61, 'as-fed'),
  ('fb761c70-f461-48a7-b1a6-49a6d8f4e47d', 'omega3', 0.92, 'as-fed'),
  ('fb761c70-f461-48a7-b1a6-49a6d8f4e47d', 'omega6', 3.45, 'as-fed');

-- Hill's Science Plan — Multi-Benefit + Weight Adult 1+ Large Breed Hondenvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-1-weight-large-breed-chicken-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht wordt op deze pagina niet vermeld en blijft null. Omega-3 (0,73%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.336 kcal/kg als 334 kcal/100 g; 334 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '68be6be6-fb8d-4f3c-bf34-a92b9cb3c7b0';
delete from public.recipe_nutrition where recipe_version_id = '68be6be6-fb8d-4f3c-bf34-a92b9cb3c7b0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('68be6be6-fb8d-4f3c-bf34-a92b9cb3c7b0', 'protein', 26.3, 'as-fed'),
  ('68be6be6-fb8d-4f3c-bf34-a92b9cb3c7b0', 'fat', 14, 'as-fed'),
  ('68be6be6-fb8d-4f3c-bf34-a92b9cb3c7b0', 'fiber', 11.3, 'as-fed'),
  ('68be6be6-fb8d-4f3c-bf34-a92b9cb3c7b0', 'ash', 5.1, 'as-fed'),
  ('68be6be6-fb8d-4f3c-bf34-a92b9cb3c7b0', 'kcal', 334, 'as-fed'),
  ('68be6be6-fb8d-4f3c-bf34-a92b9cb3c7b0', 'calcium', 0.81, 'as-fed'),
  ('68be6be6-fb8d-4f3c-bf34-a92b9cb3c7b0', 'phosphorus', 0.64, 'as-fed'),
  ('68be6be6-fb8d-4f3c-bf34-a92b9cb3c7b0', 'omega3', 0.73, 'as-fed'),
  ('68be6be6-fb8d-4f3c-bf34-a92b9cb3c7b0', 'omega6', 2.4, 'as-fed');

-- Hill's Science Plan — Multi-Benefit + Weight Adult 1+ Medium Hondenvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-1-weight-medium-chicken-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht wordt op deze pagina niet vermeld en blijft null. Omega-3 (0,73%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.336 kcal/kg als 334 kcal/100 g; 334 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '265b5335-30d7-464c-8041-d7390902ae0d';
delete from public.recipe_nutrition where recipe_version_id = '265b5335-30d7-464c-8041-d7390902ae0d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('265b5335-30d7-464c-8041-d7390902ae0d', 'protein', 26.3, 'as-fed'),
  ('265b5335-30d7-464c-8041-d7390902ae0d', 'fat', 14, 'as-fed'),
  ('265b5335-30d7-464c-8041-d7390902ae0d', 'fiber', 11.3, 'as-fed'),
  ('265b5335-30d7-464c-8041-d7390902ae0d', 'ash', 5.1, 'as-fed'),
  ('265b5335-30d7-464c-8041-d7390902ae0d', 'kcal', 334, 'as-fed'),
  ('265b5335-30d7-464c-8041-d7390902ae0d', 'calcium', 0.81, 'as-fed'),
  ('265b5335-30d7-464c-8041-d7390902ae0d', 'phosphorus', 0.64, 'as-fed'),
  ('265b5335-30d7-464c-8041-d7390902ae0d', 'omega3', 0.73, 'as-fed'),
  ('265b5335-30d7-464c-8041-d7390902ae0d', 'omega6', 2.4, 'as-fed');

-- Hill's Science Plan — Multi-Benefit + Weight Adult 1+ Natvoer voor Honden (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-1-weight-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,24%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 886 kcal/kg omgerekend naar 88,6 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 321 kcal/blik.'
 where id = 'cb10b1cf-55dc-49e9-b9db-f0e0d64ed351';
delete from public.recipe_nutrition where recipe_version_id = 'cb10b1cf-55dc-49e9-b9db-f0e0d64ed351';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('cb10b1cf-55dc-49e9-b9db-f0e0d64ed351', 'protein', 6.9, 'as-fed'),
  ('cb10b1cf-55dc-49e9-b9db-f0e0d64ed351', 'fat', 3.9, 'as-fed'),
  ('cb10b1cf-55dc-49e9-b9db-f0e0d64ed351', 'fiber', 2.9, 'as-fed'),
  ('cb10b1cf-55dc-49e9-b9db-f0e0d64ed351', 'ash', 1.6, 'as-fed'),
  ('cb10b1cf-55dc-49e9-b9db-f0e0d64ed351', 'moisture', 75.8, 'as-fed'),
  ('cb10b1cf-55dc-49e9-b9db-f0e0d64ed351', 'kcal', 88.6, 'as-fed'),
  ('cb10b1cf-55dc-49e9-b9db-f0e0d64ed351', 'calcium', 0.22, 'as-fed'),
  ('cb10b1cf-55dc-49e9-b9db-f0e0d64ed351', 'phosphorus', 0.16, 'as-fed'),
  ('cb10b1cf-55dc-49e9-b9db-f0e0d64ed351', 'omega3', 0.24, 'as-fed'),
  ('cb10b1cf-55dc-49e9-b9db-f0e0d64ed351', 'omega6', 0.8, 'as-fed');

-- Hill's Science Plan — Multi-Benefit + Weight Adult 1+ Small & Mini Hondenvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-1-weight-mini-chicken-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht wordt op deze pagina niet vermeld en blijft null. Omega-3 (0,73%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.336 kcal/kg als 334 kcal/100 g; 334 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '5c1d1b75-8362-4521-9d78-344da69323b4';
delete from public.recipe_nutrition where recipe_version_id = '5c1d1b75-8362-4521-9d78-344da69323b4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5c1d1b75-8362-4521-9d78-344da69323b4', 'protein', 26.3, 'as-fed'),
  ('5c1d1b75-8362-4521-9d78-344da69323b4', 'fat', 14, 'as-fed'),
  ('5c1d1b75-8362-4521-9d78-344da69323b4', 'fiber', 11.3, 'as-fed'),
  ('5c1d1b75-8362-4521-9d78-344da69323b4', 'ash', 5.1, 'as-fed'),
  ('5c1d1b75-8362-4521-9d78-344da69323b4', 'kcal', 334, 'as-fed'),
  ('5c1d1b75-8362-4521-9d78-344da69323b4', 'calcium', 0.81, 'as-fed'),
  ('5c1d1b75-8362-4521-9d78-344da69323b4', 'phosphorus', 0.64, 'as-fed'),
  ('5c1d1b75-8362-4521-9d78-344da69323b4', 'omega3', 0.73, 'as-fed'),
  ('5c1d1b75-8362-4521-9d78-344da69323b4', 'omega6', 2.4, 'as-fed');

-- Hill's Science Plan — Multi-Benefit Adult hondenvoer met Kip en Groenten (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-chicken-vegetables-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,11%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,51%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 961 kcal/kg omgerekend naar 96,1 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 348 kcal/blik.'
 where id = '4dde5f90-e8af-46e4-bcc0-2d1eb2a86c74';
delete from public.recipe_nutrition where recipe_version_id = '4dde5f90-e8af-46e4-bcc0-2d1eb2a86c74';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4dde5f90-e8af-46e4-bcc0-2d1eb2a86c74', 'protein', 7.1, 'as-fed'),
  ('4dde5f90-e8af-46e4-bcc0-2d1eb2a86c74', 'fat', 3.7, 'as-fed'),
  ('4dde5f90-e8af-46e4-bcc0-2d1eb2a86c74', 'fiber', 2.2, 'as-fed'),
  ('4dde5f90-e8af-46e4-bcc0-2d1eb2a86c74', 'ash', 1.6, 'as-fed'),
  ('4dde5f90-e8af-46e4-bcc0-2d1eb2a86c74', 'moisture', 74, 'as-fed'),
  ('4dde5f90-e8af-46e4-bcc0-2d1eb2a86c74', 'kcal', 96.1, 'as-fed'),
  ('4dde5f90-e8af-46e4-bcc0-2d1eb2a86c74', 'calcium', 0.24, 'as-fed'),
  ('4dde5f90-e8af-46e4-bcc0-2d1eb2a86c74', 'phosphorus', 0.18, 'as-fed'),
  ('4dde5f90-e8af-46e4-bcc0-2d1eb2a86c74', 'omega3', 0.11, 'as-fed'),
  ('4dde5f90-e8af-46e4-bcc0-2d1eb2a86c74', 'omega6', 0.51, 'as-fed');

-- Hill's Science Plan — Multi-Benefit Adult Large Breed Hondenvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-large-breed-lamb-rice-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht wordt op deze pagina niet vermeld en blijft null. Omega-3 (0,51%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.705 kcal/kg als 370 kcal/100 g; 370 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '60f29f42-2ec1-439a-80be-0d4b042f4037';
delete from public.recipe_nutrition where recipe_version_id = '60f29f42-2ec1-439a-80be-0d4b042f4037';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('60f29f42-2ec1-439a-80be-0d4b042f4037', 'protein', 21.5, 'as-fed'),
  ('60f29f42-2ec1-439a-80be-0d4b042f4037', 'fat', 14.2, 'as-fed'),
  ('60f29f42-2ec1-439a-80be-0d4b042f4037', 'fiber', 1.6, 'as-fed'),
  ('60f29f42-2ec1-439a-80be-0d4b042f4037', 'ash', 4.9, 'as-fed'),
  ('60f29f42-2ec1-439a-80be-0d4b042f4037', 'kcal', 370, 'as-fed'),
  ('60f29f42-2ec1-439a-80be-0d4b042f4037', 'calcium', 0.79, 'as-fed'),
  ('60f29f42-2ec1-439a-80be-0d4b042f4037', 'phosphorus', 0.64, 'as-fed'),
  ('60f29f42-2ec1-439a-80be-0d4b042f4037', 'omega3', 0.51, 'as-fed'),
  ('60f29f42-2ec1-439a-80be-0d4b042f4037', 'omega6', 3.6, 'as-fed');

-- Hill's Science Plan — Multi-Benefit Adult Medium Hondenvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-medium-lamb-rice-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht wordt op deze pagina niet vermeld en blijft null. Omega-3 (0,52%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.691 kcal/kg als 369 kcal/100 g; 369 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '68c902c1-5849-40e3-a7c6-57dabe99fab0';
delete from public.recipe_nutrition where recipe_version_id = '68c902c1-5849-40e3-a7c6-57dabe99fab0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('68c902c1-5849-40e3-a7c6-57dabe99fab0', 'protein', 22, 'as-fed'),
  ('68c902c1-5849-40e3-a7c6-57dabe99fab0', 'fat', 14.1, 'as-fed'),
  ('68c902c1-5849-40e3-a7c6-57dabe99fab0', 'fiber', 1.6, 'as-fed'),
  ('68c902c1-5849-40e3-a7c6-57dabe99fab0', 'ash', 5, 'as-fed'),
  ('68c902c1-5849-40e3-a7c6-57dabe99fab0', 'kcal', 369, 'as-fed'),
  ('68c902c1-5849-40e3-a7c6-57dabe99fab0', 'calcium', 0.74, 'as-fed'),
  ('68c902c1-5849-40e3-a7c6-57dabe99fab0', 'phosphorus', 0.66, 'as-fed'),
  ('68c902c1-5849-40e3-a7c6-57dabe99fab0', 'omega3', 0.52, 'as-fed'),
  ('68c902c1-5849-40e3-a7c6-57dabe99fab0', 'omega6', 3.4, 'as-fed');

-- Hill's Science Plan — Multi-Benefit Adult Small & Mini Hondenvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-small-mini-lamb-rice-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht wordt op deze pagina niet vermeld en blijft null. Omega-3 (0,52%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.691 kcal/kg als 369 kcal/100 g; 369 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '06681e17-9107-4113-97d7-5845e35b1974';
delete from public.recipe_nutrition where recipe_version_id = '06681e17-9107-4113-97d7-5845e35b1974';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('06681e17-9107-4113-97d7-5845e35b1974', 'protein', 22, 'as-fed'),
  ('06681e17-9107-4113-97d7-5845e35b1974', 'fat', 14.1, 'as-fed'),
  ('06681e17-9107-4113-97d7-5845e35b1974', 'fiber', 1.6, 'as-fed'),
  ('06681e17-9107-4113-97d7-5845e35b1974', 'ash', 5, 'as-fed'),
  ('06681e17-9107-4113-97d7-5845e35b1974', 'kcal', 369, 'as-fed'),
  ('06681e17-9107-4113-97d7-5845e35b1974', 'calcium', 0.74, 'as-fed'),
  ('06681e17-9107-4113-97d7-5845e35b1974', 'phosphorus', 0.66, 'as-fed'),
  ('06681e17-9107-4113-97d7-5845e35b1974', 'omega3', 0.52, 'as-fed'),
  ('06681e17-9107-4113-97d7-5845e35b1974', 'omega6', 3.4, 'as-fed');

-- Hill's Science Plan — Multi-Benefit Mature Adult Natvoer voor Honden (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-mature-adult-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,16%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,81%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 936 kcal/kg omgerekend naar 93,6 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 339 kcal/blik.'
 where id = 'cfcecdff-c7c0-453b-bc54-813f5b087b78';
delete from public.recipe_nutrition where recipe_version_id = 'cfcecdff-c7c0-453b-bc54-813f5b087b78';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('cfcecdff-c7c0-453b-bc54-813f5b087b78', 'protein', 5.2, 'as-fed'),
  ('cfcecdff-c7c0-453b-bc54-813f5b087b78', 'fat', 3.1, 'as-fed'),
  ('cfcecdff-c7c0-453b-bc54-813f5b087b78', 'fiber', 1, 'as-fed'),
  ('cfcecdff-c7c0-453b-bc54-813f5b087b78', 'ash', 1.6, 'as-fed'),
  ('cfcecdff-c7c0-453b-bc54-813f5b087b78', 'moisture', 75.2, 'as-fed'),
  ('cfcecdff-c7c0-453b-bc54-813f5b087b78', 'kcal', 93.6, 'as-fed'),
  ('cfcecdff-c7c0-453b-bc54-813f5b087b78', 'calcium', 0.25, 'as-fed'),
  ('cfcecdff-c7c0-453b-bc54-813f5b087b78', 'phosphorus', 0.15, 'as-fed'),
  ('cfcecdff-c7c0-453b-bc54-813f5b087b78', 'omega3', 0.16, 'as-fed'),
  ('cfcecdff-c7c0-453b-bc54-813f5b087b78', 'omega6', 0.81, 'as-fed');

-- Hill's Science Plan — Multi-Benefit Puppy Natvoer (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-puppy-growth-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,23%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (1,36%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 1.273 kcal/kg omgerekend naar 127,3 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 462 kcal/blik.'
 where id = 'b0e7044e-09dd-4df4-90f8-8e5afc9670fd';
delete from public.recipe_nutrition where recipe_version_id = 'b0e7044e-09dd-4df4-90f8-8e5afc9670fd';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b0e7044e-09dd-4df4-90f8-8e5afc9670fd', 'protein', 8.7, 'as-fed'),
  ('b0e7044e-09dd-4df4-90f8-8e5afc9670fd', 'fat', 6.7, 'as-fed'),
  ('b0e7044e-09dd-4df4-90f8-8e5afc9670fd', 'fiber', 0.39, 'as-fed'),
  ('b0e7044e-09dd-4df4-90f8-8e5afc9670fd', 'ash', 2.4, 'as-fed'),
  ('b0e7044e-09dd-4df4-90f8-8e5afc9670fd', 'moisture', 70.5, 'as-fed'),
  ('b0e7044e-09dd-4df4-90f8-8e5afc9670fd', 'kcal', 127.3, 'as-fed'),
  ('b0e7044e-09dd-4df4-90f8-8e5afc9670fd', 'calcium', 0.43, 'as-fed'),
  ('b0e7044e-09dd-4df4-90f8-8e5afc9670fd', 'phosphorus', 0.34, 'as-fed'),
  ('b0e7044e-09dd-4df4-90f8-8e5afc9670fd', 'omega3', 0.23, 'as-fed'),
  ('b0e7044e-09dd-4df4-90f8-8e5afc9670fd', 'omega6', 1.36, 'as-fed');

-- Hill's Science Plan — Oral Care Adult Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-oral-care-chicken-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,46%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.437 kcal/kg als 344 kcal/100 g; 344 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = 'b786768c-6961-4081-8bae-d3da3c042dee';
delete from public.recipe_nutrition where recipe_version_id = 'b786768c-6961-4081-8bae-d3da3c042dee';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b786768c-6961-4081-8bae-d3da3c042dee', 'protein', 22.7, 'as-fed'),
  ('b786768c-6961-4081-8bae-d3da3c042dee', 'fat', 13.8, 'as-fed'),
  ('b786768c-6961-4081-8bae-d3da3c042dee', 'fiber', 9.7, 'as-fed'),
  ('b786768c-6961-4081-8bae-d3da3c042dee', 'ash', 4.2, 'as-fed'),
  ('b786768c-6961-4081-8bae-d3da3c042dee', 'moisture', 8, 'as-fed'),
  ('b786768c-6961-4081-8bae-d3da3c042dee', 'kcal', 344, 'as-fed'),
  ('b786768c-6961-4081-8bae-d3da3c042dee', 'calcium', 0.66, 'as-fed'),
  ('b786768c-6961-4081-8bae-d3da3c042dee', 'phosphorus', 0.57, 'as-fed'),
  ('b786768c-6961-4081-8bae-d3da3c042dee', 'omega3', 0.46, 'as-fed'),
  ('b786768c-6961-4081-8bae-d3da3c042dee', 'omega6', 3.5, 'as-fed');

-- Hill's Science Plan — Perfect Digestion Adult Natvoer Hond met Kip & Groenten (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-perfect-digestion-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,13%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,48%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 1.016 kcal/kg omgerekend naar 101,6 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 368 kcal/blik.'
 where id = 'bbf439b7-38a8-4390-9f14-c81c60636f8e';
delete from public.recipe_nutrition where recipe_version_id = 'bbf439b7-38a8-4390-9f14-c81c60636f8e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('bbf439b7-38a8-4390-9f14-c81c60636f8e', 'protein', 6.2, 'as-fed'),
  ('bbf439b7-38a8-4390-9f14-c81c60636f8e', 'fat', 4.1, 'as-fed'),
  ('bbf439b7-38a8-4390-9f14-c81c60636f8e', 'fiber', 1.1, 'as-fed'),
  ('bbf439b7-38a8-4390-9f14-c81c60636f8e', 'ash', 1.3, 'as-fed'),
  ('bbf439b7-38a8-4390-9f14-c81c60636f8e', 'moisture', 74.5, 'as-fed'),
  ('bbf439b7-38a8-4390-9f14-c81c60636f8e', 'kcal', 101.6, 'as-fed'),
  ('bbf439b7-38a8-4390-9f14-c81c60636f8e', 'calcium', 0.2, 'as-fed'),
  ('bbf439b7-38a8-4390-9f14-c81c60636f8e', 'phosphorus', 0.16, 'as-fed'),
  ('bbf439b7-38a8-4390-9f14-c81c60636f8e', 'omega3', 0.13, 'as-fed'),
  ('bbf439b7-38a8-4390-9f14-c81c60636f8e', 'omega6', 0.48, 'as-fed');

-- Hill's Science Plan — Perfect Digestion Large Breed Adult Hondenvoer met Kip & bruine Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-perfect-digestion-large-breed-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,29%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (2,28%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.524 kcal/kg als 352 kcal/100 g; 352 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = 'b3ece087-31cc-4fad-a907-78286e8b404e';
delete from public.recipe_nutrition where recipe_version_id = 'b3ece087-31cc-4fad-a907-78286e8b404e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b3ece087-31cc-4fad-a907-78286e8b404e', 'protein', 18.4, 'as-fed'),
  ('b3ece087-31cc-4fad-a907-78286e8b404e', 'fat', 11.7, 'as-fed'),
  ('b3ece087-31cc-4fad-a907-78286e8b404e', 'fiber', 2.6, 'as-fed'),
  ('b3ece087-31cc-4fad-a907-78286e8b404e', 'ash', 4.8, 'as-fed'),
  ('b3ece087-31cc-4fad-a907-78286e8b404e', 'moisture', 8, 'as-fed'),
  ('b3ece087-31cc-4fad-a907-78286e8b404e', 'kcal', 352, 'as-fed'),
  ('b3ece087-31cc-4fad-a907-78286e8b404e', 'calcium', 0.78, 'as-fed'),
  ('b3ece087-31cc-4fad-a907-78286e8b404e', 'phosphorus', 0.6, 'as-fed'),
  ('b3ece087-31cc-4fad-a907-78286e8b404e', 'omega3', 0.29, 'as-fed'),
  ('b3ece087-31cc-4fad-a907-78286e8b404e', 'omega6', 2.28, 'as-fed');

-- Hill's Science Plan — Perfect Digestion Medium Adult Hondenvoer met Kip & bruine Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-perfect-digestion-medium-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,29%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (2,28%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.524 kcal/kg als 352 kcal/100 g; 352 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '5be28e3d-32e1-4567-a3df-0f56b74ae83d';
delete from public.recipe_nutrition where recipe_version_id = '5be28e3d-32e1-4567-a3df-0f56b74ae83d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5be28e3d-32e1-4567-a3df-0f56b74ae83d', 'protein', 18.4, 'as-fed'),
  ('5be28e3d-32e1-4567-a3df-0f56b74ae83d', 'fat', 11.7, 'as-fed'),
  ('5be28e3d-32e1-4567-a3df-0f56b74ae83d', 'fiber', 2.6, 'as-fed'),
  ('5be28e3d-32e1-4567-a3df-0f56b74ae83d', 'ash', 4.8, 'as-fed'),
  ('5be28e3d-32e1-4567-a3df-0f56b74ae83d', 'moisture', 8, 'as-fed'),
  ('5be28e3d-32e1-4567-a3df-0f56b74ae83d', 'kcal', 352, 'as-fed'),
  ('5be28e3d-32e1-4567-a3df-0f56b74ae83d', 'calcium', 0.78, 'as-fed'),
  ('5be28e3d-32e1-4567-a3df-0f56b74ae83d', 'phosphorus', 0.6, 'as-fed'),
  ('5be28e3d-32e1-4567-a3df-0f56b74ae83d', 'omega3', 0.29, 'as-fed'),
  ('5be28e3d-32e1-4567-a3df-0f56b74ae83d', 'omega6', 2.28, 'as-fed');

-- Hill's Science Plan — Perfect Digestion Small & Mini Adult Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-perfect-digestion-small-mini-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,29%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (2,29%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.526 kcal/kg als 353 kcal/100 g; 353 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '7bdb732c-3918-4cb0-81b9-267afb37875a';
delete from public.recipe_nutrition where recipe_version_id = '7bdb732c-3918-4cb0-81b9-267afb37875a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7bdb732c-3918-4cb0-81b9-267afb37875a', 'protein', 18.5, 'as-fed'),
  ('7bdb732c-3918-4cb0-81b9-267afb37875a', 'fat', 11.7, 'as-fed'),
  ('7bdb732c-3918-4cb0-81b9-267afb37875a', 'fiber', 2.6, 'as-fed'),
  ('7bdb732c-3918-4cb0-81b9-267afb37875a', 'ash', 4.9, 'as-fed'),
  ('7bdb732c-3918-4cb0-81b9-267afb37875a', 'moisture', 8, 'as-fed'),
  ('7bdb732c-3918-4cb0-81b9-267afb37875a', 'kcal', 353, 'as-fed'),
  ('7bdb732c-3918-4cb0-81b9-267afb37875a', 'calcium', 0.78, 'as-fed'),
  ('7bdb732c-3918-4cb0-81b9-267afb37875a', 'phosphorus', 0.6, 'as-fed'),
  ('7bdb732c-3918-4cb0-81b9-267afb37875a', 'omega3', 0.29, 'as-fed'),
  ('7bdb732c-3918-4cb0-81b9-267afb37875a', 'omega6', 2.29, 'as-fed');

-- Hill's Science Plan — Perfect Digestion Small & Mini Adult Natvoer Hond met Kalkoen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-perfect-digestion-small-mini-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,13%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,39%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 831 kcal/kg omgerekend naar 83,1 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 166 kcal/blik.'
 where id = '2851c784-b8ac-42e0-83ea-9722aeeeac33';
delete from public.recipe_nutrition where recipe_version_id = '2851c784-b8ac-42e0-83ea-9722aeeeac33';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2851c784-b8ac-42e0-83ea-9722aeeeac33', 'protein', 5.2, 'as-fed'),
  ('2851c784-b8ac-42e0-83ea-9722aeeeac33', 'fat', 3.3, 'as-fed'),
  ('2851c784-b8ac-42e0-83ea-9722aeeeac33', 'fiber', 1, 'as-fed'),
  ('2851c784-b8ac-42e0-83ea-9722aeeeac33', 'ash', 1.2, 'as-fed'),
  ('2851c784-b8ac-42e0-83ea-9722aeeeac33', 'moisture', 78.8, 'as-fed'),
  ('2851c784-b8ac-42e0-83ea-9722aeeeac33', 'kcal', 83.1, 'as-fed'),
  ('2851c784-b8ac-42e0-83ea-9722aeeeac33', 'calcium', 0.19, 'as-fed'),
  ('2851c784-b8ac-42e0-83ea-9722aeeeac33', 'phosphorus', 0.15, 'as-fed'),
  ('2851c784-b8ac-42e0-83ea-9722aeeeac33', 'omega3', 0.13, 'as-fed'),
  ('2851c784-b8ac-42e0-83ea-9722aeeeac33', 'omega6', 0.39, 'as-fed');

-- Hill's Science Plan — Perfect Weight & Active Mobility Large Breed Adult Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-perfect-weight-actimobility-lb-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (2,85%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.207 kcal/kg als 321 kcal/100 g; 321 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '956e76e0-a2e3-46fb-9043-a77fa920303e';
delete from public.recipe_nutrition where recipe_version_id = '956e76e0-a2e3-46fb-9043-a77fa920303e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('956e76e0-a2e3-46fb-9043-a77fa920303e', 'protein', 25.9, 'as-fed'),
  ('956e76e0-a2e3-46fb-9043-a77fa920303e', 'fat', 12.9, 'as-fed'),
  ('956e76e0-a2e3-46fb-9043-a77fa920303e', 'fiber', 13.3, 'as-fed'),
  ('956e76e0-a2e3-46fb-9043-a77fa920303e', 'ash', 5.5, 'as-fed'),
  ('956e76e0-a2e3-46fb-9043-a77fa920303e', 'moisture', 8, 'as-fed'),
  ('956e76e0-a2e3-46fb-9043-a77fa920303e', 'kcal', 321, 'as-fed'),
  ('956e76e0-a2e3-46fb-9043-a77fa920303e', 'calcium', 0.84, 'as-fed'),
  ('956e76e0-a2e3-46fb-9043-a77fa920303e', 'phosphorus', 0.64, 'as-fed'),
  ('956e76e0-a2e3-46fb-9043-a77fa920303e', 'omega3', 1.3, 'as-fed'),
  ('956e76e0-a2e3-46fb-9043-a77fa920303e', 'omega6', 2.85, 'as-fed');

-- Hill's Science Plan — Perfect Weight & Active Mobility Medium Adult Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-perfect-weight-actimobility-medium-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (2,85%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.207 kcal/kg als 321 kcal/100 g; 321 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = 'a6de3f69-6237-445c-b7fb-efc6c5069a73';
delete from public.recipe_nutrition where recipe_version_id = 'a6de3f69-6237-445c-b7fb-efc6c5069a73';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a6de3f69-6237-445c-b7fb-efc6c5069a73', 'protein', 25.9, 'as-fed'),
  ('a6de3f69-6237-445c-b7fb-efc6c5069a73', 'fat', 12.9, 'as-fed'),
  ('a6de3f69-6237-445c-b7fb-efc6c5069a73', 'fiber', 13.3, 'as-fed'),
  ('a6de3f69-6237-445c-b7fb-efc6c5069a73', 'ash', 5.5, 'as-fed'),
  ('a6de3f69-6237-445c-b7fb-efc6c5069a73', 'moisture', 8, 'as-fed'),
  ('a6de3f69-6237-445c-b7fb-efc6c5069a73', 'kcal', 321, 'as-fed'),
  ('a6de3f69-6237-445c-b7fb-efc6c5069a73', 'calcium', 0.84, 'as-fed'),
  ('a6de3f69-6237-445c-b7fb-efc6c5069a73', 'phosphorus', 0.64, 'as-fed'),
  ('a6de3f69-6237-445c-b7fb-efc6c5069a73', 'omega3', 1.3, 'as-fed'),
  ('a6de3f69-6237-445c-b7fb-efc6c5069a73', 'omega6', 2.85, 'as-fed');

-- Hill's Science Plan — Perfect Weight & Active Mobility Small & Mini Adult Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-perfect-weight-actimobility-s-m-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (3,02%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.212 kcal/kg als 321 kcal/100 g; 321 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '49d7776d-7837-41eb-bfb8-b3f310da4692';
delete from public.recipe_nutrition where recipe_version_id = '49d7776d-7837-41eb-bfb8-b3f310da4692';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('49d7776d-7837-41eb-bfb8-b3f310da4692', 'protein', 25.5, 'as-fed'),
  ('49d7776d-7837-41eb-bfb8-b3f310da4692', 'fat', 13, 'as-fed'),
  ('49d7776d-7837-41eb-bfb8-b3f310da4692', 'fiber', 13.3, 'as-fed'),
  ('49d7776d-7837-41eb-bfb8-b3f310da4692', 'ash', 5.4, 'as-fed'),
  ('49d7776d-7837-41eb-bfb8-b3f310da4692', 'moisture', 8, 'as-fed'),
  ('49d7776d-7837-41eb-bfb8-b3f310da4692', 'kcal', 321, 'as-fed'),
  ('49d7776d-7837-41eb-bfb8-b3f310da4692', 'calcium', 0.84, 'as-fed'),
  ('49d7776d-7837-41eb-bfb8-b3f310da4692', 'phosphorus', 0.63, 'as-fed'),
  ('49d7776d-7837-41eb-bfb8-b3f310da4692', 'omega3', 1.4, 'as-fed'),
  ('49d7776d-7837-41eb-bfb8-b3f310da4692', 'omega6', 3.02, 'as-fed');

-- Hill's Science Plan — Perfect Weight Adult Natvoer Hond met Kip & Groenten (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-perfect-weight-chicken-vegetable-entree-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,21%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,38%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 904 kcal/kg omgerekend naar 90,4 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 328 kcal/blik.'
 where id = '9b8f9776-a092-43da-b882-2bde21200d45';
delete from public.recipe_nutrition where recipe_version_id = '9b8f9776-a092-43da-b882-2bde21200d45';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9b8f9776-a092-43da-b882-2bde21200d45', 'protein', 7.4, 'as-fed'),
  ('9b8f9776-a092-43da-b882-2bde21200d45', 'fat', 3.3, 'as-fed'),
  ('9b8f9776-a092-43da-b882-2bde21200d45', 'fiber', 3.4, 'as-fed'),
  ('9b8f9776-a092-43da-b882-2bde21200d45', 'ash', 1.4, 'as-fed'),
  ('9b8f9776-a092-43da-b882-2bde21200d45', 'moisture', 74, 'as-fed'),
  ('9b8f9776-a092-43da-b882-2bde21200d45', 'kcal', 90.4, 'as-fed'),
  ('9b8f9776-a092-43da-b882-2bde21200d45', 'calcium', 0.17, 'as-fed'),
  ('9b8f9776-a092-43da-b882-2bde21200d45', 'phosphorus', 0.17, 'as-fed'),
  ('9b8f9776-a092-43da-b882-2bde21200d45', 'omega3', 0.21, 'as-fed'),
  ('9b8f9776-a092-43da-b882-2bde21200d45', 'omega6', 0.38, 'as-fed');

-- Hill's Science Plan — Perfect Weight Large Breed Adult Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-perfect-weight-large-breed-chicken-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,66%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (1,97%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.166 kcal/kg als 317 kcal/100 g; 317 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '5022f6d8-8c55-44e8-9c18-6e10f62e219c';
delete from public.recipe_nutrition where recipe_version_id = '5022f6d8-8c55-44e8-9c18-6e10f62e219c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5022f6d8-8c55-44e8-9c18-6e10f62e219c', 'protein', 25.1, 'as-fed'),
  ('5022f6d8-8c55-44e8-9c18-6e10f62e219c', 'fat', 11, 'as-fed'),
  ('5022f6d8-8c55-44e8-9c18-6e10f62e219c', 'fiber', 11.9, 'as-fed'),
  ('5022f6d8-8c55-44e8-9c18-6e10f62e219c', 'ash', 5.5, 'as-fed'),
  ('5022f6d8-8c55-44e8-9c18-6e10f62e219c', 'moisture', 8, 'as-fed'),
  ('5022f6d8-8c55-44e8-9c18-6e10f62e219c', 'kcal', 317, 'as-fed'),
  ('5022f6d8-8c55-44e8-9c18-6e10f62e219c', 'calcium', 0.9, 'as-fed'),
  ('5022f6d8-8c55-44e8-9c18-6e10f62e219c', 'phosphorus', 0.68, 'as-fed'),
  ('5022f6d8-8c55-44e8-9c18-6e10f62e219c', 'omega3', 0.66, 'as-fed'),
  ('5022f6d8-8c55-44e8-9c18-6e10f62e219c', 'omega6', 1.97, 'as-fed');

-- Hill's Science Plan — Perfect Weight Medium Adult Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-perfect-weight-medium-chicken-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,66%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (1,97%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.166 kcal/kg als 317 kcal/100 g; 317 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = 'ccc31bcf-8da2-4a5e-baae-e34a69520e1e';
delete from public.recipe_nutrition where recipe_version_id = 'ccc31bcf-8da2-4a5e-baae-e34a69520e1e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ccc31bcf-8da2-4a5e-baae-e34a69520e1e', 'protein', 25.1, 'as-fed'),
  ('ccc31bcf-8da2-4a5e-baae-e34a69520e1e', 'fat', 11, 'as-fed'),
  ('ccc31bcf-8da2-4a5e-baae-e34a69520e1e', 'fiber', 11.9, 'as-fed'),
  ('ccc31bcf-8da2-4a5e-baae-e34a69520e1e', 'ash', 5.5, 'as-fed'),
  ('ccc31bcf-8da2-4a5e-baae-e34a69520e1e', 'moisture', 8, 'as-fed'),
  ('ccc31bcf-8da2-4a5e-baae-e34a69520e1e', 'kcal', 317, 'as-fed'),
  ('ccc31bcf-8da2-4a5e-baae-e34a69520e1e', 'calcium', 0.9, 'as-fed'),
  ('ccc31bcf-8da2-4a5e-baae-e34a69520e1e', 'phosphorus', 0.68, 'as-fed'),
  ('ccc31bcf-8da2-4a5e-baae-e34a69520e1e', 'omega3', 0.66, 'as-fed'),
  ('ccc31bcf-8da2-4a5e-baae-e34a69520e1e', 'omega6', 1.97, 'as-fed');

-- Hill's Science Plan — Perfect Weight Small & Mini Adult Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-perfect-weight-mini-chicken-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,67%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (2,11%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.159 kcal/kg als 316 kcal/100 g; 316 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '6a3463e7-1c40-430b-ad14-ce4aecfbc64a';
delete from public.recipe_nutrition where recipe_version_id = '6a3463e7-1c40-430b-ad14-ce4aecfbc64a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6a3463e7-1c40-430b-ad14-ce4aecfbc64a', 'protein', 26.2, 'as-fed'),
  ('6a3463e7-1c40-430b-ad14-ce4aecfbc64a', 'fat', 11, 'as-fed'),
  ('6a3463e7-1c40-430b-ad14-ce4aecfbc64a', 'fiber', 12.2, 'as-fed'),
  ('6a3463e7-1c40-430b-ad14-ce4aecfbc64a', 'ash', 5.3, 'as-fed'),
  ('6a3463e7-1c40-430b-ad14-ce4aecfbc64a', 'moisture', 8, 'as-fed'),
  ('6a3463e7-1c40-430b-ad14-ce4aecfbc64a', 'kcal', 316, 'as-fed'),
  ('6a3463e7-1c40-430b-ad14-ce4aecfbc64a', 'calcium', 0.79, 'as-fed'),
  ('6a3463e7-1c40-430b-ad14-ce4aecfbc64a', 'phosphorus', 0.64, 'as-fed'),
  ('6a3463e7-1c40-430b-ad14-ce4aecfbc64a', 'omega3', 0.67, 'as-fed'),
  ('6a3463e7-1c40-430b-ad14-ce4aecfbc64a', 'omega6', 2.11, 'as-fed');

-- Hill's Science Plan — Perfect Weight Small & Mini Adult Natvoer Hond met Kalkoen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-perfect-weight-mini-turkey-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,21%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,46%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 825 kcal/kg omgerekend naar 82,5 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 165 kcal/blik.'
 where id = 'c19705c9-24fe-4a23-b55f-adc7d1fb59c9';
delete from public.recipe_nutrition where recipe_version_id = 'c19705c9-24fe-4a23-b55f-adc7d1fb59c9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c19705c9-24fe-4a23-b55f-adc7d1fb59c9', 'protein', 6.7, 'as-fed'),
  ('c19705c9-24fe-4a23-b55f-adc7d1fb59c9', 'fat', 3, 'as-fed'),
  ('c19705c9-24fe-4a23-b55f-adc7d1fb59c9', 'fiber', 3.3, 'as-fed'),
  ('c19705c9-24fe-4a23-b55f-adc7d1fb59c9', 'ash', 1.4, 'as-fed'),
  ('c19705c9-24fe-4a23-b55f-adc7d1fb59c9', 'moisture', 76, 'as-fed'),
  ('c19705c9-24fe-4a23-b55f-adc7d1fb59c9', 'kcal', 82.5, 'as-fed'),
  ('c19705c9-24fe-4a23-b55f-adc7d1fb59c9', 'calcium', 0.17, 'as-fed'),
  ('c19705c9-24fe-4a23-b55f-adc7d1fb59c9', 'phosphorus', 0.16, 'as-fed'),
  ('c19705c9-24fe-4a23-b55f-adc7d1fb59c9', 'omega3', 0.21, 'as-fed'),
  ('c19705c9-24fe-4a23-b55f-adc7d1fb59c9', 'omega6', 0.46, 'as-fed');

-- Hill's Science Plan — Performance Adult Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-performance-chicken-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,52%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (4,44%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 4.159 kcal/kg als 416 kcal/100 g; 416 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '25c4889e-046a-4b5b-9f1f-d827bcbc8155';
delete from public.recipe_nutrition where recipe_version_id = '25c4889e-046a-4b5b-9f1f-d827bcbc8155';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('25c4889e-046a-4b5b-9f1f-d827bcbc8155', 'protein', 28.7, 'as-fed'),
  ('25c4889e-046a-4b5b-9f1f-d827bcbc8155', 'fat', 23.9, 'as-fed'),
  ('25c4889e-046a-4b5b-9f1f-d827bcbc8155', 'fiber', 1.6, 'as-fed'),
  ('25c4889e-046a-4b5b-9f1f-d827bcbc8155', 'ash', 5.3, 'as-fed'),
  ('25c4889e-046a-4b5b-9f1f-d827bcbc8155', 'moisture', 8, 'as-fed'),
  ('25c4889e-046a-4b5b-9f1f-d827bcbc8155', 'kcal', 416, 'as-fed'),
  ('25c4889e-046a-4b5b-9f1f-d827bcbc8155', 'calcium', 0.95, 'as-fed'),
  ('25c4889e-046a-4b5b-9f1f-d827bcbc8155', 'phosphorus', 0.68, 'as-fed'),
  ('25c4889e-046a-4b5b-9f1f-d827bcbc8155', 'omega3', 0.52, 'as-fed'),
  ('25c4889e-046a-4b5b-9f1f-d827bcbc8155', 'omega6', 4.44, 'as-fed');

-- Hill's Science Plan — Puppy & Mother Tender Mousse met Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-puppy-mother-mousse-chicken-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,07%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,47%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 823 kcal/kg omgerekend naar 82,3 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 164 kcal/blik.'
 where id = '30d88e84-9f98-44bf-b7c6-45e06ed8881b';
delete from public.recipe_nutrition where recipe_version_id = '30d88e84-9f98-44bf-b7c6-45e06ed8881b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('30d88e84-9f98-44bf-b7c6-45e06ed8881b', 'protein', 5.9, 'as-fed'),
  ('30d88e84-9f98-44bf-b7c6-45e06ed8881b', 'fat', 4.3, 'as-fed'),
  ('30d88e84-9f98-44bf-b7c6-45e06ed8881b', 'fiber', 1.3, 'as-fed'),
  ('30d88e84-9f98-44bf-b7c6-45e06ed8881b', 'ash', 1.6, 'as-fed'),
  ('30d88e84-9f98-44bf-b7c6-45e06ed8881b', 'moisture', 79.8, 'as-fed'),
  ('30d88e84-9f98-44bf-b7c6-45e06ed8881b', 'kcal', 82.3, 'as-fed'),
  ('30d88e84-9f98-44bf-b7c6-45e06ed8881b', 'calcium', 0.25, 'as-fed'),
  ('30d88e84-9f98-44bf-b7c6-45e06ed8881b', 'phosphorus', 0.2, 'as-fed'),
  ('30d88e84-9f98-44bf-b7c6-45e06ed8881b', 'omega3', 0.07, 'as-fed'),
  ('30d88e84-9f98-44bf-b7c6-45e06ed8881b', 'omega6', 0.47, 'as-fed');

-- Hill's Science Plan — Puppy Natvoer met Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-puppy-chicken-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,09%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,42%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 987 kcal/kg omgerekend naar 98,7 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 365 kcal/blik.'
 where id = '5c8abf71-9c2d-498a-80f0-288999556fc2';
delete from public.recipe_nutrition where recipe_version_id = '5c8abf71-9c2d-498a-80f0-288999556fc2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5c8abf71-9c2d-498a-80f0-288999556fc2', 'protein', 6.9, 'as-fed'),
  ('5c8abf71-9c2d-498a-80f0-288999556fc2', 'fat', 5, 'as-fed'),
  ('5c8abf71-9c2d-498a-80f0-288999556fc2', 'fiber', 1.2, 'as-fed'),
  ('5c8abf71-9c2d-498a-80f0-288999556fc2', 'ash', 1.8, 'as-fed'),
  ('5c8abf71-9c2d-498a-80f0-288999556fc2', 'moisture', 76, 'as-fed'),
  ('5c8abf71-9c2d-498a-80f0-288999556fc2', 'kcal', 98.7, 'as-fed'),
  ('5c8abf71-9c2d-498a-80f0-288999556fc2', 'calcium', 0.32, 'as-fed'),
  ('5c8abf71-9c2d-498a-80f0-288999556fc2', 'phosphorus', 0.25, 'as-fed'),
  ('5c8abf71-9c2d-498a-80f0-288999556fc2', 'omega3', 0.09, 'as-fed'),
  ('5c8abf71-9c2d-498a-80f0-288999556fc2', 'omega6', 0.42, 'as-fed');

-- Hill's Science Plan — Puppy Natvoer met Rund (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-puppy-beef-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,1%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,43%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 990 kcal/kg omgerekend naar 99 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 366 kcal/blik.'
 where id = '75a82bed-d86a-48af-8222-654491c5c83e';
delete from public.recipe_nutrition where recipe_version_id = '75a82bed-d86a-48af-8222-654491c5c83e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('75a82bed-d86a-48af-8222-654491c5c83e', 'protein', 7, 'as-fed'),
  ('75a82bed-d86a-48af-8222-654491c5c83e', 'fat', 5.1, 'as-fed'),
  ('75a82bed-d86a-48af-8222-654491c5c83e', 'fiber', 1.5, 'as-fed'),
  ('75a82bed-d86a-48af-8222-654491c5c83e', 'ash', 1.5, 'as-fed'),
  ('75a82bed-d86a-48af-8222-654491c5c83e', 'moisture', 76, 'as-fed'),
  ('75a82bed-d86a-48af-8222-654491c5c83e', 'kcal', 99, 'as-fed'),
  ('75a82bed-d86a-48af-8222-654491c5c83e', 'calcium', 0.4, 'as-fed'),
  ('75a82bed-d86a-48af-8222-654491c5c83e', 'phosphorus', 0.28, 'as-fed'),
  ('75a82bed-d86a-48af-8222-654491c5c83e', 'omega3', 0.1, 'as-fed'),
  ('75a82bed-d86a-48af-8222-654491c5c83e', 'omega6', 0.43, 'as-fed');

-- Hill's Science Plan — Puppy Stoofpotje met Kip & toegevoegde Groenten (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-puppy-chunks-gravy-chicken-vegetables-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,09%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,45%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 901 kcal/kg omgerekend naar 90,1 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 327 kcal/blik.'
 where id = '716d2349-4d52-4e35-ac2f-2a8625454f87';
delete from public.recipe_nutrition where recipe_version_id = '716d2349-4d52-4e35-ac2f-2a8625454f87';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('716d2349-4d52-4e35-ac2f-2a8625454f87', 'protein', 6.7, 'as-fed'),
  ('716d2349-4d52-4e35-ac2f-2a8625454f87', 'fat', 4.2, 'as-fed'),
  ('716d2349-4d52-4e35-ac2f-2a8625454f87', 'fiber', 0.76, 'as-fed'),
  ('716d2349-4d52-4e35-ac2f-2a8625454f87', 'ash', 1.8, 'as-fed'),
  ('716d2349-4d52-4e35-ac2f-2a8625454f87', 'moisture', 77.7, 'as-fed'),
  ('716d2349-4d52-4e35-ac2f-2a8625454f87', 'kcal', 90.1, 'as-fed'),
  ('716d2349-4d52-4e35-ac2f-2a8625454f87', 'calcium', 0.29, 'as-fed'),
  ('716d2349-4d52-4e35-ac2f-2a8625454f87', 'phosphorus', 0.24, 'as-fed'),
  ('716d2349-4d52-4e35-ac2f-2a8625454f87', 'omega3', 0.09, 'as-fed'),
  ('716d2349-4d52-4e35-ac2f-2a8625454f87', 'omega6', 0.45, 'as-fed');

-- Hill's Science Plan — Senior Vitality Large Breed Mature Adult 6+ Hondenvoer met Kip & Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-5-senior-vitality-large-breed-chicken-and-rice-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.629 kcal/kg als 363 kcal/100 g; 363 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = 'fa6ac902-ba52-4fc4-b93f-7e7f3ca3e079';
delete from public.recipe_nutrition where recipe_version_id = 'fa6ac902-ba52-4fc4-b93f-7e7f3ca3e079';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fa6ac902-ba52-4fc4-b93f-7e7f3ca3e079', 'protein', 19.9, 'as-fed'),
  ('fa6ac902-ba52-4fc4-b93f-7e7f3ca3e079', 'fat', 12.1, 'as-fed'),
  ('fa6ac902-ba52-4fc4-b93f-7e7f3ca3e079', 'fiber', 1.7, 'as-fed'),
  ('fa6ac902-ba52-4fc4-b93f-7e7f3ca3e079', 'ash', 4.9, 'as-fed'),
  ('fa6ac902-ba52-4fc4-b93f-7e7f3ca3e079', 'moisture', 8, 'as-fed'),
  ('fa6ac902-ba52-4fc4-b93f-7e7f3ca3e079', 'kcal', 363, 'as-fed'),
  ('fa6ac902-ba52-4fc4-b93f-7e7f3ca3e079', 'calcium', 0.82, 'as-fed'),
  ('fa6ac902-ba52-4fc4-b93f-7e7f3ca3e079', 'phosphorus', 0.58, 'as-fed'),
  ('fa6ac902-ba52-4fc4-b93f-7e7f3ca3e079', 'omega3', 0.7, 'as-fed'),
  ('fa6ac902-ba52-4fc4-b93f-7e7f3ca3e079', 'omega6', 3.3, 'as-fed');

-- Hill's Science Plan — Sensitive Stomach & Skin Adult Hond Natvoer met Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-sensitive-stomach-skin-chicken-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,18%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,79%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 1.206 kcal/kg omgerekend naar 120,6 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 446 kcal/blik.'
 where id = '8d863ed4-cc8e-4df3-9b6a-3a6e10966ab9';
delete from public.recipe_nutrition where recipe_version_id = '8d863ed4-cc8e-4df3-9b6a-3a6e10966ab9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8d863ed4-cc8e-4df3-9b6a-3a6e10966ab9', 'protein', 8.2, 'as-fed'),
  ('8d863ed4-cc8e-4df3-9b6a-3a6e10966ab9', 'fat', 5.8, 'as-fed'),
  ('8d863ed4-cc8e-4df3-9b6a-3a6e10966ab9', 'fiber', 1.4, 'as-fed'),
  ('8d863ed4-cc8e-4df3-9b6a-3a6e10966ab9', 'ash', 1.6, 'as-fed'),
  ('8d863ed4-cc8e-4df3-9b6a-3a6e10966ab9', 'moisture', 70, 'as-fed'),
  ('8d863ed4-cc8e-4df3-9b6a-3a6e10966ab9', 'kcal', 120.6, 'as-fed'),
  ('8d863ed4-cc8e-4df3-9b6a-3a6e10966ab9', 'calcium', 0.25, 'as-fed'),
  ('8d863ed4-cc8e-4df3-9b6a-3a6e10966ab9', 'phosphorus', 0.21, 'as-fed'),
  ('8d863ed4-cc8e-4df3-9b6a-3a6e10966ab9', 'omega3', 0.18, 'as-fed'),
  ('8d863ed4-cc8e-4df3-9b6a-3a6e10966ab9', 'omega6', 0.79, 'as-fed');

-- Hill's Science Plan — Sensitive Stomach & Skin Medium & Large Breed Adult Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-sensitive-stomach-skin-chicken-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,55%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.695 kcal/kg als 370 kcal/100 g; 370 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = 'e9c772c0-3e51-4732-a396-8b7f3e91bc12';
delete from public.recipe_nutrition where recipe_version_id = 'e9c772c0-3e51-4732-a396-8b7f3e91bc12';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e9c772c0-3e51-4732-a396-8b7f3e91bc12', 'protein', 22.3, 'as-fed'),
  ('e9c772c0-3e51-4732-a396-8b7f3e91bc12', 'fat', 14, 'as-fed'),
  ('e9c772c0-3e51-4732-a396-8b7f3e91bc12', 'fiber', 1.7, 'as-fed'),
  ('e9c772c0-3e51-4732-a396-8b7f3e91bc12', 'ash', 5, 'as-fed'),
  ('e9c772c0-3e51-4732-a396-8b7f3e91bc12', 'moisture', 8, 'as-fed'),
  ('e9c772c0-3e51-4732-a396-8b7f3e91bc12', 'kcal', 370, 'as-fed'),
  ('e9c772c0-3e51-4732-a396-8b7f3e91bc12', 'calcium', 0.8, 'as-fed'),
  ('e9c772c0-3e51-4732-a396-8b7f3e91bc12', 'phosphorus', 0.68, 'as-fed'),
  ('e9c772c0-3e51-4732-a396-8b7f3e91bc12', 'omega3', 0.55, 'as-fed'),
  ('e9c772c0-3e51-4732-a396-8b7f3e91bc12', 'omega6', 3.4, 'as-fed');

-- Hill's Science Plan — Sensitive Stomach & Skin Small & Mini Adult Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-sensitive-stomach-skin-small-miniature-chicken-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,58%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.695 kcal/kg als 370 kcal/100 g; 370 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = 'f5c2196b-8d33-4d46-9907-ecf7c61ee43e';
delete from public.recipe_nutrition where recipe_version_id = 'f5c2196b-8d33-4d46-9907-ecf7c61ee43e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f5c2196b-8d33-4d46-9907-ecf7c61ee43e', 'protein', 22.5, 'as-fed'),
  ('f5c2196b-8d33-4d46-9907-ecf7c61ee43e', 'fat', 14.2, 'as-fed'),
  ('f5c2196b-8d33-4d46-9907-ecf7c61ee43e', 'fiber', 1.7, 'as-fed'),
  ('f5c2196b-8d33-4d46-9907-ecf7c61ee43e', 'ash', 5, 'as-fed'),
  ('f5c2196b-8d33-4d46-9907-ecf7c61ee43e', 'moisture', 8, 'as-fed'),
  ('f5c2196b-8d33-4d46-9907-ecf7c61ee43e', 'kcal', 370, 'as-fed'),
  ('f5c2196b-8d33-4d46-9907-ecf7c61ee43e', 'calcium', 0.8, 'as-fed'),
  ('f5c2196b-8d33-4d46-9907-ecf7c61ee43e', 'phosphorus', 0.68, 'as-fed'),
  ('f5c2196b-8d33-4d46-9907-ecf7c61ee43e', 'omega3', 0.58, 'as-fed'),
  ('f5c2196b-8d33-4d46-9907-ecf7c61ee43e', 'omega6', 3.6, 'as-fed');

-- Hill's Science Plan — Sensitive Stomach & Skin Small & Mini Adult Mousse Hond met Kalkoen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-sensitive-stomach-skin-small-mini-mousse-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,17%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,69%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 1.037 kcal/kg omgerekend naar 103,7 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 207 kcal/blik.'
 where id = 'fd66ef1d-0ac2-4950-9798-7fd253f6c5e8';
delete from public.recipe_nutrition where recipe_version_id = 'fd66ef1d-0ac2-4950-9798-7fd253f6c5e8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fd66ef1d-0ac2-4950-9798-7fd253f6c5e8', 'protein', 7.3, 'as-fed'),
  ('fd66ef1d-0ac2-4950-9798-7fd253f6c5e8', 'fat', 5, 'as-fed'),
  ('fd66ef1d-0ac2-4950-9798-7fd253f6c5e8', 'fiber', 1.3, 'as-fed'),
  ('fd66ef1d-0ac2-4950-9798-7fd253f6c5e8', 'ash', 1.5, 'as-fed'),
  ('fd66ef1d-0ac2-4950-9798-7fd253f6c5e8', 'moisture', 74, 'as-fed'),
  ('fd66ef1d-0ac2-4950-9798-7fd253f6c5e8', 'kcal', 103.7, 'as-fed'),
  ('fd66ef1d-0ac2-4950-9798-7fd253f6c5e8', 'calcium', 0.22, 'as-fed'),
  ('fd66ef1d-0ac2-4950-9798-7fd253f6c5e8', 'phosphorus', 0.18, 'as-fed'),
  ('fd66ef1d-0ac2-4950-9798-7fd253f6c5e8', 'omega3', 0.17, 'as-fed'),
  ('fd66ef1d-0ac2-4950-9798-7fd253f6c5e8', 'omega6', 0.69, 'as-fed');

-- Hill's Science Plan — Small & Mini Adult Hondenvoer met Lam & Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-small-miniature-lamb-rice-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,5%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.685 kcal/kg als 368 kcal/100 g; 368 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '994960d0-e733-44b8-a047-32e203b3fb7f';
delete from public.recipe_nutrition where recipe_version_id = '994960d0-e733-44b8-a047-32e203b3fb7f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('994960d0-e733-44b8-a047-32e203b3fb7f', 'protein', 21.4, 'as-fed'),
  ('994960d0-e733-44b8-a047-32e203b3fb7f', 'fat', 14.2, 'as-fed'),
  ('994960d0-e733-44b8-a047-32e203b3fb7f', 'fiber', 1.7, 'as-fed'),
  ('994960d0-e733-44b8-a047-32e203b3fb7f', 'ash', 5.3, 'as-fed'),
  ('994960d0-e733-44b8-a047-32e203b3fb7f', 'moisture', 8, 'as-fed'),
  ('994960d0-e733-44b8-a047-32e203b3fb7f', 'kcal', 368, 'as-fed'),
  ('994960d0-e733-44b8-a047-32e203b3fb7f', 'calcium', 0.78, 'as-fed'),
  ('994960d0-e733-44b8-a047-32e203b3fb7f', 'phosphorus', 0.7, 'as-fed'),
  ('994960d0-e733-44b8-a047-32e203b3fb7f', 'omega3', 0.5, 'as-fed'),
  ('994960d0-e733-44b8-a047-32e203b3fb7f', 'omega6', 3.4, 'as-fed');

-- Hill's Science Plan — Small & Mini Adult Natvoer Hond met Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-small-mini-chicken-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,06%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,51%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 806 kcal/kg omgerekend naar 80,6 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 161 kcal/blik.'
 where id = '249b1d5f-93a1-40a0-8921-a98cee2c7e5c';
delete from public.recipe_nutrition where recipe_version_id = '249b1d5f-93a1-40a0-8921-a98cee2c7e5c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('249b1d5f-93a1-40a0-8921-a98cee2c7e5c', 'protein', 5.5, 'as-fed'),
  ('249b1d5f-93a1-40a0-8921-a98cee2c7e5c', 'fat', 3.2, 'as-fed'),
  ('249b1d5f-93a1-40a0-8921-a98cee2c7e5c', 'fiber', 0.26, 'as-fed'),
  ('249b1d5f-93a1-40a0-8921-a98cee2c7e5c', 'ash', 1.2, 'as-fed'),
  ('249b1d5f-93a1-40a0-8921-a98cee2c7e5c', 'moisture', 80, 'as-fed'),
  ('249b1d5f-93a1-40a0-8921-a98cee2c7e5c', 'kcal', 80.6, 'as-fed'),
  ('249b1d5f-93a1-40a0-8921-a98cee2c7e5c', 'calcium', 0.2, 'as-fed'),
  ('249b1d5f-93a1-40a0-8921-a98cee2c7e5c', 'phosphorus', 0.13, 'as-fed'),
  ('249b1d5f-93a1-40a0-8921-a98cee2c7e5c', 'omega3', 0.06, 'as-fed'),
  ('249b1d5f-93a1-40a0-8921-a98cee2c7e5c', 'omega6', 0.51, 'as-fed');

-- Hill's Science Plan — Small & Mini Mature Adult Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-mature-adult-7-small-mini-chicken-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (1,11%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.663 kcal/kg als 366 kcal/100 g; 366 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '70cfa578-d12c-40b3-bbbe-c5fbd08de740';
delete from public.recipe_nutrition where recipe_version_id = '70cfa578-d12c-40b3-bbbe-c5fbd08de740';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('70cfa578-d12c-40b3-bbbe-c5fbd08de740', 'protein', 17.3, 'as-fed'),
  ('70cfa578-d12c-40b3-bbbe-c5fbd08de740', 'fat', 14, 'as-fed'),
  ('70cfa578-d12c-40b3-bbbe-c5fbd08de740', 'fiber', 2.4, 'as-fed'),
  ('70cfa578-d12c-40b3-bbbe-c5fbd08de740', 'ash', 4.9, 'as-fed'),
  ('70cfa578-d12c-40b3-bbbe-c5fbd08de740', 'moisture', 8, 'as-fed'),
  ('70cfa578-d12c-40b3-bbbe-c5fbd08de740', 'kcal', 366, 'as-fed'),
  ('70cfa578-d12c-40b3-bbbe-c5fbd08de740', 'calcium', 0.72, 'as-fed'),
  ('70cfa578-d12c-40b3-bbbe-c5fbd08de740', 'phosphorus', 0.56, 'as-fed'),
  ('70cfa578-d12c-40b3-bbbe-c5fbd08de740', 'omega3', 1.11, 'as-fed'),
  ('70cfa578-d12c-40b3-bbbe-c5fbd08de740', 'omega6', 3.8, 'as-fed');

-- Hill's Science Plan — Small & Mini Mature Adult Natvoer Hond met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-mature-adult-7-small-mini-chicken-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,04%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,27%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 772 kcal/kg omgerekend naar 77,2 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 154 kcal/blik. Het voertype staat in het opdrachtbestand als kibble, terwijl de bronpagina natvoer in blik betreft; het opdrachtbestand is ongewijzigd gevolgd.'
 where id = '5a34082d-87a6-424e-9131-b439e5d1365a';
delete from public.recipe_nutrition where recipe_version_id = '5a34082d-87a6-424e-9131-b439e5d1365a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5a34082d-87a6-424e-9131-b439e5d1365a', 'protein', 4.4, 'as-fed'),
  ('5a34082d-87a6-424e-9131-b439e5d1365a', 'fat', 2.7, 'as-fed'),
  ('5a34082d-87a6-424e-9131-b439e5d1365a', 'fiber', 0.6, 'as-fed'),
  ('5a34082d-87a6-424e-9131-b439e5d1365a', 'ash', 1.2, 'as-fed'),
  ('5a34082d-87a6-424e-9131-b439e5d1365a', 'moisture', 80, 'as-fed'),
  ('5a34082d-87a6-424e-9131-b439e5d1365a', 'kcal', 77.2, 'as-fed'),
  ('5a34082d-87a6-424e-9131-b439e5d1365a', 'calcium', 0.26, 'as-fed'),
  ('5a34082d-87a6-424e-9131-b439e5d1365a', 'phosphorus', 0.13, 'as-fed'),
  ('5a34082d-87a6-424e-9131-b439e5d1365a', 'omega3', 0.04, 'as-fed'),
  ('5a34082d-87a6-424e-9131-b439e5d1365a', 'omega6', 0.27, 'as-fed');

-- Hill's Science Plan — Small & Mini Mature Adult Natvoer Hond met Rund (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-mature-adult-7-small-mini-beef-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,05%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (0,26%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Metaboliseerbare energie 762 kcal/kg omgerekend naar 76,2 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 152 kcal/blik.'
 where id = '2a98673d-7ad0-4027-8b92-70548296af9f';
delete from public.recipe_nutrition where recipe_version_id = '2a98673d-7ad0-4027-8b92-70548296af9f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2a98673d-7ad0-4027-8b92-70548296af9f', 'protein', 4.3, 'as-fed'),
  ('2a98673d-7ad0-4027-8b92-70548296af9f', 'fat', 2.5, 'as-fed'),
  ('2a98673d-7ad0-4027-8b92-70548296af9f', 'fiber', 0.59, 'as-fed'),
  ('2a98673d-7ad0-4027-8b92-70548296af9f', 'ash', 1.2, 'as-fed'),
  ('2a98673d-7ad0-4027-8b92-70548296af9f', 'moisture', 80, 'as-fed'),
  ('2a98673d-7ad0-4027-8b92-70548296af9f', 'kcal', 76.2, 'as-fed'),
  ('2a98673d-7ad0-4027-8b92-70548296af9f', 'calcium', 0.26, 'as-fed'),
  ('2a98673d-7ad0-4027-8b92-70548296af9f', 'phosphorus', 0.12, 'as-fed'),
  ('2a98673d-7ad0-4027-8b92-70548296af9f', 'omega3', 0.05, 'as-fed'),
  ('2a98673d-7ad0-4027-8b92-70548296af9f', 'omega6', 0.26, 'as-fed');

-- Hill's Science Plan — Small & Mini Puppyvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-puppy-small-mini-chicken-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,98%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (2,64%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.830 kcal/kg als 383 kcal/100 g; 383 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '7b8342bb-e9cd-45e5-bb79-4873c0a9824d';
delete from public.recipe_nutrition where recipe_version_id = '7b8342bb-e9cd-45e5-bb79-4873c0a9824d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7b8342bb-e9cd-45e5-bb79-4873c0a9824d', 'protein', 27.7, 'as-fed'),
  ('7b8342bb-e9cd-45e5-bb79-4873c0a9824d', 'fat', 18.1, 'as-fed'),
  ('7b8342bb-e9cd-45e5-bb79-4873c0a9824d', 'fiber', 1.3, 'as-fed'),
  ('7b8342bb-e9cd-45e5-bb79-4873c0a9824d', 'ash', 7, 'as-fed'),
  ('7b8342bb-e9cd-45e5-bb79-4873c0a9824d', 'moisture', 8, 'as-fed'),
  ('7b8342bb-e9cd-45e5-bb79-4873c0a9824d', 'kcal', 383, 'as-fed'),
  ('7b8342bb-e9cd-45e5-bb79-4873c0a9824d', 'calcium', 1.3, 'as-fed'),
  ('7b8342bb-e9cd-45e5-bb79-4873c0a9824d', 'phosphorus', 1, 'as-fed'),
  ('7b8342bb-e9cd-45e5-bb79-4873c0a9824d', 'omega3', 0.98, 'as-fed'),
  ('7b8342bb-e9cd-45e5-bb79-4873c0a9824d', 'omega6', 2.64, 'as-fed');

-- Hill's Science Plan — Small & Mini Puppyvoer met Lam & Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-puppy-small-mini-lamb-rice-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-3 (0,98%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (2,39%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.785 kcal/kg als 378 kcal/100 g; 378 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '6ae8ba93-7065-440f-b356-b02308e46d8b';
delete from public.recipe_nutrition where recipe_version_id = '6ae8ba93-7065-440f-b356-b02308e46d8b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6ae8ba93-7065-440f-b356-b02308e46d8b', 'protein', 28.7, 'as-fed'),
  ('6ae8ba93-7065-440f-b356-b02308e46d8b', 'fat', 18.2, 'as-fed'),
  ('6ae8ba93-7065-440f-b356-b02308e46d8b', 'fiber', 2, 'as-fed'),
  ('6ae8ba93-7065-440f-b356-b02308e46d8b', 'ash', 7.9, 'as-fed'),
  ('6ae8ba93-7065-440f-b356-b02308e46d8b', 'moisture', 8, 'as-fed'),
  ('6ae8ba93-7065-440f-b356-b02308e46d8b', 'kcal', 378, 'as-fed'),
  ('6ae8ba93-7065-440f-b356-b02308e46d8b', 'calcium', 1.5, 'as-fed'),
  ('6ae8ba93-7065-440f-b356-b02308e46d8b', 'phosphorus', 1.1, 'as-fed'),
  ('6ae8ba93-7065-440f-b356-b02308e46d8b', 'omega3', 0.98, 'as-fed'),
  ('6ae8ba93-7065-440f-b356-b02308e46d8b', 'omega6', 2.39, 'as-fed');

-- Hill's Science Plan — Small & Mini Senior Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-senior-11-small-miniature-chicken-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. Omega-6 (3,19%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.788 kcal/kg als 379 kcal/100 g; 379 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '07397b01-7ddc-4dc1-b738-be5a4b2b2a6c';
delete from public.recipe_nutrition where recipe_version_id = '07397b01-7ddc-4dc1-b738-be5a4b2b2a6c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('07397b01-7ddc-4dc1-b738-be5a4b2b2a6c', 'protein', 20.6, 'as-fed'),
  ('07397b01-7ddc-4dc1-b738-be5a4b2b2a6c', 'fat', 16.2, 'as-fed'),
  ('07397b01-7ddc-4dc1-b738-be5a4b2b2a6c', 'fiber', 1.8, 'as-fed'),
  ('07397b01-7ddc-4dc1-b738-be5a4b2b2a6c', 'ash', 5.1, 'as-fed'),
  ('07397b01-7ddc-4dc1-b738-be5a4b2b2a6c', 'moisture', 8, 'as-fed'),
  ('07397b01-7ddc-4dc1-b738-be5a4b2b2a6c', 'kcal', 379, 'as-fed'),
  ('07397b01-7ddc-4dc1-b738-be5a4b2b2a6c', 'calcium', 0.85, 'as-fed'),
  ('07397b01-7ddc-4dc1-b738-be5a4b2b2a6c', 'phosphorus', 0.61, 'as-fed'),
  ('07397b01-7ddc-4dc1-b738-be5a4b2b2a6c', 'omega3', 1.1, 'as-fed'),
  ('07397b01-7ddc-4dc1-b738-be5a4b2b2a6c', 'omega6', 3.19, 'as-fed');

-- Hill's Science Plan — Youthful Vitality Medium Mature Adult 7+ Hondenvoer met Kip & Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-7-senior-vitality-medium-breed-chicken-and-rice-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina. De pagina vermeldt zowel 3.629 kcal/kg als 363 kcal/100 g; 363 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = 'f4a3b607-749d-4d83-a7d3-5668ec7b1f33';
delete from public.recipe_nutrition where recipe_version_id = 'f4a3b607-749d-4d83-a7d3-5668ec7b1f33';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f4a3b607-749d-4d83-a7d3-5668ec7b1f33', 'protein', 19.9, 'as-fed'),
  ('f4a3b607-749d-4d83-a7d3-5668ec7b1f33', 'fat', 12.1, 'as-fed'),
  ('f4a3b607-749d-4d83-a7d3-5668ec7b1f33', 'fiber', 1.7, 'as-fed'),
  ('f4a3b607-749d-4d83-a7d3-5668ec7b1f33', 'ash', 4.9, 'as-fed'),
  ('f4a3b607-749d-4d83-a7d3-5668ec7b1f33', 'moisture', 8, 'as-fed'),
  ('f4a3b607-749d-4d83-a7d3-5668ec7b1f33', 'kcal', 363, 'as-fed'),
  ('f4a3b607-749d-4d83-a7d3-5668ec7b1f33', 'calcium', 0.82, 'as-fed'),
  ('f4a3b607-749d-4d83-a7d3-5668ec7b1f33', 'phosphorus', 0.58, 'as-fed'),
  ('f4a3b607-749d-4d83-a7d3-5668ec7b1f33', 'omega3', 0.7, 'as-fed'),
  ('f4a3b607-749d-4d83-a7d3-5668ec7b1f33', 'omega6', 3.3, 'as-fed');

-- Hill's Science Plan — Adult Medium met kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-medium-chicken-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) en omega-3 (0,45%) staan niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina; die waarden zijn daaruit overgenomen. Omega-6 staat in de alinea als 3,4% (tabel: 3,41%). De pagina vermeldt zowel 3.724 kcal/kg als 372 kcal/100 g; de opgegeven 372 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '36ac5eb6-e1c9-4cf1-80f6-097bd887ebad';
delete from public.recipe_nutrition where recipe_version_id = '36ac5eb6-e1c9-4cf1-80f6-097bd887ebad';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('36ac5eb6-e1c9-4cf1-80f6-097bd887ebad', 'protein', 21.5, 'as-fed'),
  ('36ac5eb6-e1c9-4cf1-80f6-097bd887ebad', 'fat', 14.9, 'as-fed'),
  ('36ac5eb6-e1c9-4cf1-80f6-097bd887ebad', 'fiber', 1.5, 'as-fed'),
  ('36ac5eb6-e1c9-4cf1-80f6-097bd887ebad', 'ash', 4.6, 'as-fed'),
  ('36ac5eb6-e1c9-4cf1-80f6-097bd887ebad', 'moisture', 8, 'as-fed'),
  ('36ac5eb6-e1c9-4cf1-80f6-097bd887ebad', 'kcal', 372, 'as-fed'),
  ('36ac5eb6-e1c9-4cf1-80f6-097bd887ebad', 'calcium', 0.69, 'as-fed'),
  ('36ac5eb6-e1c9-4cf1-80f6-097bd887ebad', 'phosphorus', 0.61, 'as-fed'),
  ('36ac5eb6-e1c9-4cf1-80f6-097bd887ebad', 'omega3', 0.45, 'as-fed'),
  ('36ac5eb6-e1c9-4cf1-80f6-097bd887ebad', 'omega6', 3.4, 'as-fed');

-- Hill's Science Plan — Small & Mini Adult Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-small-mini-chicken-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) en omega-3 (0,56%) staan niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina; die waarden zijn daaruit overgenomen. Omega-6 staat in de alinea als 3,3% (tabel: 3,27%). De pagina vermeldt zowel 3.721 kcal/kg als 372 kcal/100 g; de opgegeven 372 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = 'f332e6df-1b8a-4d5a-a695-ad38d82f1bce';
delete from public.recipe_nutrition where recipe_version_id = 'f332e6df-1b8a-4d5a-a695-ad38d82f1bce';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f332e6df-1b8a-4d5a-a695-ad38d82f1bce', 'protein', 23, 'as-fed'),
  ('f332e6df-1b8a-4d5a-a695-ad38d82f1bce', 'fat', 14.3, 'as-fed'),
  ('f332e6df-1b8a-4d5a-a695-ad38d82f1bce', 'fiber', 1.3, 'as-fed'),
  ('f332e6df-1b8a-4d5a-a695-ad38d82f1bce', 'ash', 4.8, 'as-fed'),
  ('f332e6df-1b8a-4d5a-a695-ad38d82f1bce', 'moisture', 8, 'as-fed'),
  ('f332e6df-1b8a-4d5a-a695-ad38d82f1bce', 'kcal', 372, 'as-fed'),
  ('f332e6df-1b8a-4d5a-a695-ad38d82f1bce', 'calcium', 0.77, 'as-fed'),
  ('f332e6df-1b8a-4d5a-a695-ad38d82f1bce', 'phosphorus', 0.66, 'as-fed'),
  ('f332e6df-1b8a-4d5a-a695-ad38d82f1bce', 'omega3', 0.56, 'as-fed'),
  ('f332e6df-1b8a-4d5a-a695-ad38d82f1bce', 'omega6', 3.3, 'as-fed');

-- Hill's Science Plan — Hypoallergenic Medium Adult Hondenvoer met Zalm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-medium-hypoallergenic-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina; die waarde is daaruit overgenomen. Omega-6 staat in de alinea als 3,0% (tabel: 2,97%) en omega-3 als 0,7% (tabel: 0,69%). De pagina vermeldt zowel 3.700 kcal/kg als 370 kcal/100 g; de opgegeven 370 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = 'c8c414b5-ecfd-46d1-9cd4-c5f850ac789c';
delete from public.recipe_nutrition where recipe_version_id = 'c8c414b5-ecfd-46d1-9cd4-c5f850ac789c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c8c414b5-ecfd-46d1-9cd4-c5f850ac789c', 'protein', 19.9, 'as-fed'),
  ('c8c414b5-ecfd-46d1-9cd4-c5f850ac789c', 'fat', 14.2, 'as-fed'),
  ('c8c414b5-ecfd-46d1-9cd4-c5f850ac789c', 'fiber', 2.1, 'as-fed'),
  ('c8c414b5-ecfd-46d1-9cd4-c5f850ac789c', 'ash', 4.8, 'as-fed'),
  ('c8c414b5-ecfd-46d1-9cd4-c5f850ac789c', 'moisture', 8, 'as-fed'),
  ('c8c414b5-ecfd-46d1-9cd4-c5f850ac789c', 'kcal', 370, 'as-fed'),
  ('c8c414b5-ecfd-46d1-9cd4-c5f850ac789c', 'calcium', 0.64, 'as-fed'),
  ('c8c414b5-ecfd-46d1-9cd4-c5f850ac789c', 'phosphorus', 0.59, 'as-fed'),
  ('c8c414b5-ecfd-46d1-9cd4-c5f850ac789c', 'omega3', 0.7, 'as-fed'),
  ('c8c414b5-ecfd-46d1-9cd4-c5f850ac789c', 'omega6', 3, 'as-fed');

-- Hill's Science Plan — Adult Natvoer Hond met Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-chicken-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,06%) en omega-6 (0,55%) staan niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina; die waarden zijn daaruit overgenomen. Metaboliseerbare energie 922 kcal/kg omgerekend naar 92,2 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 341 kcal per blik van 370 g.'
 where id = '9bb7dbbf-23d0-4ad9-97d5-405ea521e999';
delete from public.recipe_nutrition where recipe_version_id = '9bb7dbbf-23d0-4ad9-97d5-405ea521e999';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9bb7dbbf-23d0-4ad9-97d5-405ea521e999', 'protein', 6.1, 'as-fed'),
  ('9bb7dbbf-23d0-4ad9-97d5-405ea521e999', 'fat', 3.4, 'as-fed'),
  ('9bb7dbbf-23d0-4ad9-97d5-405ea521e999', 'fiber', 0.29, 'as-fed'),
  ('9bb7dbbf-23d0-4ad9-97d5-405ea521e999', 'ash', 1.3, 'as-fed'),
  ('9bb7dbbf-23d0-4ad9-97d5-405ea521e999', 'moisture', 77, 'as-fed'),
  ('9bb7dbbf-23d0-4ad9-97d5-405ea521e999', 'kcal', 92.2, 'as-fed'),
  ('9bb7dbbf-23d0-4ad9-97d5-405ea521e999', 'calcium', 0.2, 'as-fed'),
  ('9bb7dbbf-23d0-4ad9-97d5-405ea521e999', 'phosphorus', 0.14, 'as-fed'),
  ('9bb7dbbf-23d0-4ad9-97d5-405ea521e999', 'omega3', 0.06, 'as-fed'),
  ('9bb7dbbf-23d0-4ad9-97d5-405ea521e999', 'omega6', 0.55, 'as-fed');

-- Hill's Science Plan — Adult Natvoer Hond met Rund (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-beef-barley-entree-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,06%) en omega-6 (0,54%) staan niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina; die waarden zijn daaruit overgenomen. Metaboliseerbare energie 907 kcal/kg omgerekend naar 90,7 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 335 kcal per blik van 370 g.'
 where id = 'be56e145-177a-4c8f-8ad3-e5af989f22cc';
delete from public.recipe_nutrition where recipe_version_id = 'be56e145-177a-4c8f-8ad3-e5af989f22cc';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('be56e145-177a-4c8f-8ad3-e5af989f22cc', 'protein', 5.7, 'as-fed'),
  ('be56e145-177a-4c8f-8ad3-e5af989f22cc', 'fat', 3, 'as-fed'),
  ('be56e145-177a-4c8f-8ad3-e5af989f22cc', 'fiber', 0.29, 'as-fed'),
  ('be56e145-177a-4c8f-8ad3-e5af989f22cc', 'ash', 1.1, 'as-fed'),
  ('be56e145-177a-4c8f-8ad3-e5af989f22cc', 'moisture', 77, 'as-fed'),
  ('be56e145-177a-4c8f-8ad3-e5af989f22cc', 'kcal', 90.7, 'as-fed'),
  ('be56e145-177a-4c8f-8ad3-e5af989f22cc', 'calcium', 0.16, 'as-fed'),
  ('be56e145-177a-4c8f-8ad3-e5af989f22cc', 'phosphorus', 0.14, 'as-fed'),
  ('be56e145-177a-4c8f-8ad3-e5af989f22cc', 'omega3', 0.06, 'as-fed'),
  ('be56e145-177a-4c8f-8ad3-e5af989f22cc', 'omega6', 0.54, 'as-fed');

commit;
