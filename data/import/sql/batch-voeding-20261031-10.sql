begin;

-- Lily's Kitchen — Lily's Kitchen Chicken & Duck Countryside Casserole (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://eu.lilyskitchen.com/nl/honden/droogvoer/chicken-and-duck-countryside-casserole',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal stond al per 100 g op de pagina. Vocht wordt niet vermeld.'
 where id = '16e06ebb-0468-4fe6-acef-ab99ee078325';
delete from public.recipe_nutrition where recipe_version_id = '16e06ebb-0468-4fe6-acef-ab99ee078325';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('16e06ebb-0468-4fe6-acef-ab99ee078325', 'protein', 23.5, 'as-fed'),
  ('16e06ebb-0468-4fe6-acef-ab99ee078325', 'fat', 12, 'as-fed'),
  ('16e06ebb-0468-4fe6-acef-ab99ee078325', 'fiber', 3, 'as-fed'),
  ('16e06ebb-0468-4fe6-acef-ab99ee078325', 'ash', 7, 'as-fed'),
  ('16e06ebb-0468-4fe6-acef-ab99ee078325', 'kcal', 359, 'as-fed'),
  ('16e06ebb-0468-4fe6-acef-ab99ee078325', 'calcium', 1.1, 'as-fed'),
  ('16e06ebb-0468-4fe6-acef-ab99ee078325', 'phosphorus', 0.8, 'as-fed'),
  ('16e06ebb-0468-4fe6-acef-ab99ee078325', 'omega3', 1.2, 'as-fed'),
  ('16e06ebb-0468-4fe6-acef-ab99ee078325', 'omega6', 1.8, 'as-fed');

-- Lily's Kitchen — Lily's Kitchen Chicken & Turkey Casserole (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://eu.lilyskitchen.com/nl/honden/natvoer/chicken-turkey-casserole',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal stond al per 100 g op de pagina. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'fbdbe531-cb6f-4a6b-b0b5-29c847ffe14a';
delete from public.recipe_nutrition where recipe_version_id = 'fbdbe531-cb6f-4a6b-b0b5-29c847ffe14a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fbdbe531-cb6f-4a6b-b0b5-29c847ffe14a', 'protein', 10.1, 'as-fed'),
  ('fbdbe531-cb6f-4a6b-b0b5-29c847ffe14a', 'fat', 5.4, 'as-fed'),
  ('fbdbe531-cb6f-4a6b-b0b5-29c847ffe14a', 'fiber', 0.5, 'as-fed'),
  ('fbdbe531-cb6f-4a6b-b0b5-29c847ffe14a', 'ash', 2.5, 'as-fed'),
  ('fbdbe531-cb6f-4a6b-b0b5-29c847ffe14a', 'moisture', 80, 'as-fed'),
  ('fbdbe531-cb6f-4a6b-b0b5-29c847ffe14a', 'kcal', 92, 'as-fed');

-- Lily's Kitchen — Lily's Kitchen Cottage Pie (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://eu.lilyskitchen.com/nl/honden/natvoer/cottage-pie',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal stond al per 100 g op de pagina. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'ff34ae4d-faf9-49db-a0ef-b9649009481e';
delete from public.recipe_nutrition where recipe_version_id = 'ff34ae4d-faf9-49db-a0ef-b9649009481e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ff34ae4d-faf9-49db-a0ef-b9649009481e', 'protein', 9.8, 'as-fed'),
  ('ff34ae4d-faf9-49db-a0ef-b9649009481e', 'fat', 6.9, 'as-fed'),
  ('ff34ae4d-faf9-49db-a0ef-b9649009481e', 'fiber', 0.4, 'as-fed'),
  ('ff34ae4d-faf9-49db-a0ef-b9649009481e', 'ash', 1.7, 'as-fed'),
  ('ff34ae4d-faf9-49db-a0ef-b9649009481e', 'moisture', 74, 'as-fed'),
  ('ff34ae4d-faf9-49db-a0ef-b9649009481e', 'kcal', 125, 'as-fed');

-- Lily's Kitchen — Lily's Kitchen Lamb Hotpot (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://eu.lilyskitchen.com/nl/honden/natvoer/lamb-hotpot',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal stond al per 100 g op de pagina. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'aa55ba27-a188-4f7d-a882-27d64a81b6ac';
delete from public.recipe_nutrition where recipe_version_id = 'aa55ba27-a188-4f7d-a882-27d64a81b6ac';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('aa55ba27-a188-4f7d-a882-27d64a81b6ac', 'protein', 10.4, 'as-fed'),
  ('aa55ba27-a188-4f7d-a882-27d64a81b6ac', 'fat', 8.8, 'as-fed'),
  ('aa55ba27-a188-4f7d-a882-27d64a81b6ac', 'fiber', 0.5, 'as-fed'),
  ('aa55ba27-a188-4f7d-a882-27d64a81b6ac', 'ash', 1.6, 'as-fed'),
  ('aa55ba27-a188-4f7d-a882-27d64a81b6ac', 'moisture', 73, 'as-fed'),
  ('aa55ba27-a188-4f7d-a882-27d64a81b6ac', 'kcal', 138, 'as-fed');

-- Lily's Kitchen — Lily's Kitchen Lamb Shepherd’s Pie (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://eu.lilyskitchen.com/nl/honden/droogvoer/lamb-shepherds-pie',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal stond al per 100 g op de pagina. Vocht wordt niet vermeld.'
 where id = '445be8e3-0293-485f-9f63-3d5a6a06b1ea';
delete from public.recipe_nutrition where recipe_version_id = '445be8e3-0293-485f-9f63-3d5a6a06b1ea';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('445be8e3-0293-485f-9f63-3d5a6a06b1ea', 'protein', 23, 'as-fed'),
  ('445be8e3-0293-485f-9f63-3d5a6a06b1ea', 'fat', 9, 'as-fed'),
  ('445be8e3-0293-485f-9f63-3d5a6a06b1ea', 'fiber', 3.5, 'as-fed'),
  ('445be8e3-0293-485f-9f63-3d5a6a06b1ea', 'ash', 7, 'as-fed'),
  ('445be8e3-0293-485f-9f63-3d5a6a06b1ea', 'kcal', 347, 'as-fed'),
  ('445be8e3-0293-485f-9f63-3d5a6a06b1ea', 'calcium', 1, 'as-fed'),
  ('445be8e3-0293-485f-9f63-3d5a6a06b1ea', 'phosphorus', 0.7, 'as-fed'),
  ('445be8e3-0293-485f-9f63-3d5a6a06b1ea', 'omega3', 1.2, 'as-fed'),
  ('445be8e3-0293-485f-9f63-3d5a6a06b1ea', 'omega6', 1.5, 'as-fed');

-- Lily's Kitchen — Lily's Kitchen Salmon Supper (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://eu.lilyskitchen.com/nl/honden/droogvoer/salmon-supper',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal stond al per 100 g op de pagina. Vocht wordt niet vermeld.'
 where id = 'b8b24627-1cd1-4786-bfa8-75e539d27385';
delete from public.recipe_nutrition where recipe_version_id = 'b8b24627-1cd1-4786-bfa8-75e539d27385';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b8b24627-1cd1-4786-bfa8-75e539d27385', 'protein', 24.5, 'as-fed'),
  ('b8b24627-1cd1-4786-bfa8-75e539d27385', 'fat', 14, 'as-fed'),
  ('b8b24627-1cd1-4786-bfa8-75e539d27385', 'fiber', 3.5, 'as-fed'),
  ('b8b24627-1cd1-4786-bfa8-75e539d27385', 'ash', 7, 'as-fed'),
  ('b8b24627-1cd1-4786-bfa8-75e539d27385', 'kcal', 369, 'as-fed'),
  ('b8b24627-1cd1-4786-bfa8-75e539d27385', 'calcium', 1.1, 'as-fed'),
  ('b8b24627-1cd1-4786-bfa8-75e539d27385', 'phosphorus', 0.9, 'as-fed'),
  ('b8b24627-1cd1-4786-bfa8-75e539d27385', 'omega3', 1.8, 'as-fed'),
  ('b8b24627-1cd1-4786-bfa8-75e539d27385', 'omega6', 4.2, 'as-fed');

-- Lily's Kitchen — Lily's Kitchen Wild Campfire Stew (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://eu.lilyskitchen.com/nl/honden/natvoer/wild-campfire-stew',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal stond al per 100 g op de pagina. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '84deb3c7-a2de-4e59-88aa-34d7069527ef';
delete from public.recipe_nutrition where recipe_version_id = '84deb3c7-a2de-4e59-88aa-34d7069527ef';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('84deb3c7-a2de-4e59-88aa-34d7069527ef', 'protein', 10.2, 'as-fed'),
  ('84deb3c7-a2de-4e59-88aa-34d7069527ef', 'fat', 6.1, 'as-fed'),
  ('84deb3c7-a2de-4e59-88aa-34d7069527ef', 'fiber', 0.5, 'as-fed'),
  ('84deb3c7-a2de-4e59-88aa-34d7069527ef', 'ash', 2, 'as-fed'),
  ('84deb3c7-a2de-4e59-88aa-34d7069527ef', 'moisture', 77, 'as-fed'),
  ('84deb3c7-a2de-4e59-88aa-34d7069527ef', 'kcal', 108, 'as-fed');

-- Lily's Kitchen — Lily's Kitchen Wild Woodlands with Duck, Salmon and Venison (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://eu.lilyskitchen.com/nl/honden/droogvoer/duck-salmon-venison',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal stond al per 100 g op de pagina. Vocht wordt niet vermeld.'
 where id = '2c5a496c-afad-4cc8-bca1-6c8a2a9415e5';
delete from public.recipe_nutrition where recipe_version_id = '2c5a496c-afad-4cc8-bca1-6c8a2a9415e5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2c5a496c-afad-4cc8-bca1-6c8a2a9415e5', 'protein', 22, 'as-fed'),
  ('2c5a496c-afad-4cc8-bca1-6c8a2a9415e5', 'fat', 13, 'as-fed'),
  ('2c5a496c-afad-4cc8-bca1-6c8a2a9415e5', 'fiber', 3, 'as-fed'),
  ('2c5a496c-afad-4cc8-bca1-6c8a2a9415e5', 'ash', 6, 'as-fed'),
  ('2c5a496c-afad-4cc8-bca1-6c8a2a9415e5', 'kcal', 368, 'as-fed'),
  ('2c5a496c-afad-4cc8-bca1-6c8a2a9415e5', 'calcium', 1.1, 'as-fed'),
  ('2c5a496c-afad-4cc8-bca1-6c8a2a9415e5', 'phosphorus', 0.8, 'as-fed'),
  ('2c5a496c-afad-4cc8-bca1-6c8a2a9415e5', 'omega3', 1.1, 'as-fed'),
  ('2c5a496c-afad-4cc8-bca1-6c8a2a9415e5', 'omega6', 1.8, 'as-fed');

-- Cesar — Classic Kalf & Gevogelte (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.cesar.nl/assortiment/classic/classic-kalf-gevogelte',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Tabel als tekst overgenomen. Anorganische stof is ruwe as. De pagina vermeldt geen energie, calcium, fosfor of omega-3/6.'
 where id = 'dce59022-24ab-4fc9-bee2-2238b4b784d0';
delete from public.recipe_nutrition where recipe_version_id = 'dce59022-24ab-4fc9-bee2-2238b4b784d0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('dce59022-24ab-4fc9-bee2-2238b4b784d0', 'protein', 10, 'as-fed'),
  ('dce59022-24ab-4fc9-bee2-2238b4b784d0', 'fat', 5, 'as-fed'),
  ('dce59022-24ab-4fc9-bee2-2238b4b784d0', 'fiber', 0.5, 'as-fed'),
  ('dce59022-24ab-4fc9-bee2-2238b4b784d0', 'ash', 2.3, 'as-fed'),
  ('dce59022-24ab-4fc9-bee2-2238b4b784d0', 'moisture', 80.5, 'as-fed');

-- Cesar — Classic Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.cesar.nl/assortiment/classic/classic-kip-300',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Tabel als tekst overgenomen. Anorganische stof is ruwe as. De pagina vermeldt geen energie, calcium, fosfor of omega-3/6.'
 where id = '7535c920-e0a3-444f-81af-958e245228c2';
delete from public.recipe_nutrition where recipe_version_id = '7535c920-e0a3-444f-81af-958e245228c2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7535c920-e0a3-444f-81af-958e245228c2', 'protein', 9.5, 'as-fed'),
  ('7535c920-e0a3-444f-81af-958e245228c2', 'fat', 4.5, 'as-fed'),
  ('7535c920-e0a3-444f-81af-958e245228c2', 'fiber', 0.5, 'as-fed'),
  ('7535c920-e0a3-444f-81af-958e245228c2', 'ash', 2.5, 'as-fed'),
  ('7535c920-e0a3-444f-81af-958e245228c2', 'moisture', 80, 'as-fed');

-- Cesar — Classic Rund (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.cesar.nl/assortiment/classic/classic-rund',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Tabel als tekst overgenomen. Anorganische stof is ruwe as. De pagina vermeldt geen energie, calcium, fosfor of omega-3/6.'
 where id = 'e4289bdf-3c58-4645-a3c6-e1d6870b076d';
delete from public.recipe_nutrition where recipe_version_id = 'e4289bdf-3c58-4645-a3c6-e1d6870b076d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e4289bdf-3c58-4645-a3c6-e1d6870b076d', 'protein', 10, 'as-fed'),
  ('e4289bdf-3c58-4645-a3c6-e1d6870b076d', 'fat', 5, 'as-fed'),
  ('e4289bdf-3c58-4645-a3c6-e1d6870b076d', 'fiber', 0.5, 'as-fed'),
  ('e4289bdf-3c58-4645-a3c6-e1d6870b076d', 'ash', 2.3, 'as-fed'),
  ('e4289bdf-3c58-4645-a3c6-e1d6870b076d', 'moisture', 80.5, 'as-fed');

-- Cesar — Cuisine Kalf & Kalkoen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.cesar.nl/assortiment/cuisine/cuisine-kalf-kalkoen',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Tabel als tekst overgenomen. Anorganische stof is ruwe as. De pagina vermeldt geen energie, calcium, fosfor of omega-3/6.'
 where id = 'c5cc510e-0323-4955-84b7-7e1db9f050cf';
delete from public.recipe_nutrition where recipe_version_id = 'c5cc510e-0323-4955-84b7-7e1db9f050cf';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c5cc510e-0323-4955-84b7-7e1db9f050cf', 'protein', 8.5, 'as-fed'),
  ('c5cc510e-0323-4955-84b7-7e1db9f050cf', 'fat', 4.5, 'as-fed'),
  ('c5cc510e-0323-4955-84b7-7e1db9f050cf', 'fiber', 0.6, 'as-fed'),
  ('c5cc510e-0323-4955-84b7-7e1db9f050cf', 'ash', 2, 'as-fed'),
  ('c5cc510e-0323-4955-84b7-7e1db9f050cf', 'moisture', 81, 'as-fed');

-- Cesar — Natural Goodness Organic Chicken (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.cesar.nl/products/natural-goodness/cesar-natural-goodness-organic-chicken-loaf-tray-100gr',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Tabel als tekst overgenomen. Anorganische stof is ruwe as. De pagina vermeldt geen energie, calcium, fosfor of omega-3/6.'
 where id = '2e0cb50f-5719-4e5f-8220-c9dabc4c4cbc';
delete from public.recipe_nutrition where recipe_version_id = '2e0cb50f-5719-4e5f-8220-c9dabc4c4cbc';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2e0cb50f-5719-4e5f-8220-c9dabc4c4cbc', 'protein', 9, 'as-fed'),
  ('2e0cb50f-5719-4e5f-8220-c9dabc4c4cbc', 'fat', 4.4, 'as-fed'),
  ('2e0cb50f-5719-4e5f-8220-c9dabc4c4cbc', 'fiber', 0.6, 'as-fed'),
  ('2e0cb50f-5719-4e5f-8220-c9dabc4c4cbc', 'ash', 2.1, 'as-fed'),
  ('2e0cb50f-5719-4e5f-8220-c9dabc4c4cbc', 'moisture', 82.4, 'as-fed');

-- Cesar — Primeur Lam & Kalkoen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.cesar.nl/assortiment/primeur/primeur-lam-kalkoen',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Tabel als tekst overgenomen. Anorganische stof is ruwe as. De pagina vermeldt geen energie, calcium, fosfor of omega-3/6.'
 where id = '9ffc61ca-b01b-4bff-bf3f-c178072c83df';
delete from public.recipe_nutrition where recipe_version_id = '9ffc61ca-b01b-4bff-bf3f-c178072c83df';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9ffc61ca-b01b-4bff-bf3f-c178072c83df', 'protein', 10, 'as-fed'),
  ('9ffc61ca-b01b-4bff-bf3f-c178072c83df', 'fat', 5, 'as-fed'),
  ('9ffc61ca-b01b-4bff-bf3f-c178072c83df', 'fiber', 0.5, 'as-fed'),
  ('9ffc61ca-b01b-4bff-bf3f-c178072c83df', 'ash', 2.3, 'as-fed'),
  ('9ffc61ca-b01b-4bff-bf3f-c178072c83df', 'moisture', 80.5, 'as-fed');

-- Cesar — Senior Kip & Rijst 10+ (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.cesar.nl/assortiment/senior-10/senior-kip-rijst-10',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Tabel als tekst overgenomen. Anorganische stof is ruwe as. De pagina vermeldt geen energie, calcium, fosfor of omega-3/6.'
 where id = '2e98a26f-29b1-4a03-ba68-acba35becbc2';
delete from public.recipe_nutrition where recipe_version_id = '2e98a26f-29b1-4a03-ba68-acba35becbc2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2e98a26f-29b1-4a03-ba68-acba35becbc2', 'protein', 8.5, 'as-fed'),
  ('2e98a26f-29b1-4a03-ba68-acba35becbc2', 'fat', 5, 'as-fed'),
  ('2e98a26f-29b1-4a03-ba68-acba35becbc2', 'fiber', 0.5, 'as-fed'),
  ('2e98a26f-29b1-4a03-ba68-acba35becbc2', 'ash', 1.5, 'as-fed'),
  ('2e98a26f-29b1-4a03-ba68-acba35becbc2', 'moisture', 82, 'as-fed');

-- Dog Chow — Dog Chow Adult Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/dogchow/adult/456957',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De opgegeven zooplus-productpagina vermeldt geen vocht, energie, calcium of fosfor.'
 where id = '13b71854-94f1-49f1-9544-f0e00d893239';
delete from public.recipe_nutrition where recipe_version_id = '13b71854-94f1-49f1-9544-f0e00d893239';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('13b71854-94f1-49f1-9544-f0e00d893239', 'protein', 25, 'as-fed'),
  ('13b71854-94f1-49f1-9544-f0e00d893239', 'fat', 12, 'as-fed'),
  ('13b71854-94f1-49f1-9544-f0e00d893239', 'fiber', 3, 'as-fed'),
  ('13b71854-94f1-49f1-9544-f0e00d893239', 'ash', 8, 'as-fed'),
  ('13b71854-94f1-49f1-9544-f0e00d893239', 'omega3', 0.15, 'as-fed'),
  ('13b71854-94f1-49f1-9544-f0e00d893239', 'omega6', 2, 'as-fed');

-- Dog Chow — Dog Chow Adult Lam (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/dogchow/adult/457040',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De opgegeven zooplus-productpagina vermeldt geen vocht, energie, calcium of fosfor.'
 where id = '9f1e4331-39d0-4cee-8b55-c8ea5f8c83fe';
delete from public.recipe_nutrition where recipe_version_id = '9f1e4331-39d0-4cee-8b55-c8ea5f8c83fe';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9f1e4331-39d0-4cee-8b55-c8ea5f8c83fe', 'protein', 25, 'as-fed'),
  ('9f1e4331-39d0-4cee-8b55-c8ea5f8c83fe', 'fat', 12, 'as-fed'),
  ('9f1e4331-39d0-4cee-8b55-c8ea5f8c83fe', 'fiber', 3, 'as-fed'),
  ('9f1e4331-39d0-4cee-8b55-c8ea5f8c83fe', 'ash', 8, 'as-fed'),
  ('9f1e4331-39d0-4cee-8b55-c8ea5f8c83fe', 'omega3', 0.15, 'as-fed'),
  ('9f1e4331-39d0-4cee-8b55-c8ea5f8c83fe', 'omega6', 2, 'as-fed');

-- Dog Chow — Dog Chow Adult Light Kalkoen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/dogchow/adult/456958',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De opgegeven zooplus-productpagina vermeldt geen vocht, energie, calcium, fosfor of omega-3/6.'
 where id = '1c5ed271-6f05-4722-af9a-ff35ad9b0540';
delete from public.recipe_nutrition where recipe_version_id = '1c5ed271-6f05-4722-af9a-ff35ad9b0540';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1c5ed271-6f05-4722-af9a-ff35ad9b0540', 'protein', 25, 'as-fed'),
  ('1c5ed271-6f05-4722-af9a-ff35ad9b0540', 'fat', 8, 'as-fed'),
  ('1c5ed271-6f05-4722-af9a-ff35ad9b0540', 'fiber', 3.5, 'as-fed'),
  ('1c5ed271-6f05-4722-af9a-ff35ad9b0540', 'ash', 8, 'as-fed');

-- Dog Chow — Dog Chow Adult Sensitive Zalm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/dogchow/adult/457043',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De opgegeven zooplus-productpagina vermeldt geen vocht, energie, calcium of fosfor.'
 where id = '8d6950ee-f37d-4fd8-a949-e892a528bc65';
delete from public.recipe_nutrition where recipe_version_id = '8d6950ee-f37d-4fd8-a949-e892a528bc65';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8d6950ee-f37d-4fd8-a949-e892a528bc65', 'protein', 23, 'as-fed'),
  ('8d6950ee-f37d-4fd8-a949-e892a528bc65', 'fat', 10, 'as-fed'),
  ('8d6950ee-f37d-4fd8-a949-e892a528bc65', 'fiber', 3.5, 'as-fed'),
  ('8d6950ee-f37d-4fd8-a949-e892a528bc65', 'ash', 7, 'as-fed'),
  ('8d6950ee-f37d-4fd8-a949-e892a528bc65', 'omega3', 0.3, 'as-fed'),
  ('8d6950ee-f37d-4fd8-a949-e892a528bc65', 'omega6', 1.8, 'as-fed');

-- Dog Chow — Dog Chow Large Breed Kalkoen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/dogchow/adult/457041',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De opgegeven zooplus-productpagina vermeldt geen vocht, energie, calcium of fosfor.'
 where id = '1b97325b-efb2-430b-a638-92c855a3f463';
delete from public.recipe_nutrition where recipe_version_id = '1b97325b-efb2-430b-a638-92c855a3f463';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1b97325b-efb2-430b-a638-92c855a3f463', 'protein', 23, 'as-fed'),
  ('1b97325b-efb2-430b-a638-92c855a3f463', 'fat', 9, 'as-fed'),
  ('1b97325b-efb2-430b-a638-92c855a3f463', 'fiber', 3, 'as-fed'),
  ('1b97325b-efb2-430b-a638-92c855a3f463', 'ash', 8, 'as-fed'),
  ('1b97325b-efb2-430b-a638-92c855a3f463', 'omega3', 0.3, 'as-fed'),
  ('1b97325b-efb2-430b-a638-92c855a3f463', 'omega6', 1.6, 'as-fed');

-- Dog Chow — Dog Chow Puppy Lam (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/dogchow/puppy/457038',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De pagina vermeldt daarnaast EPA + DHA 0.05 mg, maar geen omega-3/6 in procenten. Geen vocht, energie, calcium of fosfor vermeld.'
 where id = 'efe54db6-e811-428f-9b76-bdf7afd50921';
delete from public.recipe_nutrition where recipe_version_id = 'efe54db6-e811-428f-9b76-bdf7afd50921';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('efe54db6-e811-428f-9b76-bdf7afd50921', 'protein', 28, 'as-fed'),
  ('efe54db6-e811-428f-9b76-bdf7afd50921', 'fat', 14, 'as-fed'),
  ('efe54db6-e811-428f-9b76-bdf7afd50921', 'fiber', 2.5, 'as-fed'),
  ('efe54db6-e811-428f-9b76-bdf7afd50921', 'ash', 7.5, 'as-fed');

-- Dog Chow — Dog Chow Senior Lam (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/dogchow/mature/661102',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De opgegeven zooplus-productpagina vermeldt geen vocht, energie, calcium of fosfor.'
 where id = '6448b95f-483d-4c44-a3a0-7c59dfddf4ce';
delete from public.recipe_nutrition where recipe_version_id = '6448b95f-483d-4c44-a3a0-7c59dfddf4ce';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6448b95f-483d-4c44-a3a0-7c59dfddf4ce', 'protein', 24, 'as-fed'),
  ('6448b95f-483d-4c44-a3a0-7c59dfddf4ce', 'fat', 10, 'as-fed'),
  ('6448b95f-483d-4c44-a3a0-7c59dfddf4ce', 'fiber', 3.5, 'as-fed'),
  ('6448b95f-483d-4c44-a3a0-7c59dfddf4ce', 'ash', 8, 'as-fed'),
  ('6448b95f-483d-4c44-a3a0-7c59dfddf4ce', 'omega3', 0.3, 'as-fed'),
  ('6448b95f-483d-4c44-a3a0-7c59dfddf4ce', 'omega6', 1.6, 'as-fed');

-- RAW4DOGS — Barf 5 Mix (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.raw4dogs.nl/producten/barf-5-mix',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De Nederlandse productpagina vermeldt alleen de energie; de analytische bestanddelen zijn overgenomen van de officiële Franstalige productpagina (gearchiveerd). Kcal stond al per 100 g vermeld.'
 where id = '61a6555c-0256-4364-ad85-6dbbe4bb781c';
delete from public.recipe_nutrition where recipe_version_id = '61a6555c-0256-4364-ad85-6dbbe4bb781c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('61a6555c-0256-4364-ad85-6dbbe4bb781c', 'protein', 14, 'as-fed'),
  ('61a6555c-0256-4364-ad85-6dbbe4bb781c', 'fat', 15, 'as-fed'),
  ('61a6555c-0256-4364-ad85-6dbbe4bb781c', 'fiber', 0.8, 'as-fed'),
  ('61a6555c-0256-4364-ad85-6dbbe4bb781c', 'ash', 3.3, 'as-fed'),
  ('61a6555c-0256-4364-ad85-6dbbe4bb781c', 'moisture', 67, 'as-fed'),
  ('61a6555c-0256-4364-ad85-6dbbe4bb781c', 'kcal', 192, 'as-fed'),
  ('61a6555c-0256-4364-ad85-6dbbe4bb781c', 'calcium', 0.8, 'as-fed'),
  ('61a6555c-0256-4364-ad85-6dbbe4bb781c', 'phosphorus', 0.5, 'as-fed');

-- RAW4DOGS — Beef & chicken (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.raw4dogs.nl/producten/beef-chicken',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De Nederlandse productpagina vermeldt alleen de energie; de analytische bestanddelen zijn overgenomen van de officiële Franstalige productpagina (gearchiveerd). Kcal stond al per 100 g vermeld.'
 where id = 'ca082e0b-97fc-4f6a-a5d0-b8de513ad9c2';
delete from public.recipe_nutrition where recipe_version_id = 'ca082e0b-97fc-4f6a-a5d0-b8de513ad9c2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ca082e0b-97fc-4f6a-a5d0-b8de513ad9c2', 'protein', 14, 'as-fed'),
  ('ca082e0b-97fc-4f6a-a5d0-b8de513ad9c2', 'fat', 15, 'as-fed'),
  ('ca082e0b-97fc-4f6a-a5d0-b8de513ad9c2', 'fiber', 0.9, 'as-fed'),
  ('ca082e0b-97fc-4f6a-a5d0-b8de513ad9c2', 'ash', 2.4, 'as-fed'),
  ('ca082e0b-97fc-4f6a-a5d0-b8de513ad9c2', 'moisture', 67, 'as-fed'),
  ('ca082e0b-97fc-4f6a-a5d0-b8de513ad9c2', 'kcal', 195, 'as-fed'),
  ('ca082e0b-97fc-4f6a-a5d0-b8de513ad9c2', 'calcium', 0.8, 'as-fed'),
  ('ca082e0b-97fc-4f6a-a5d0-b8de513ad9c2', 'phosphorus', 0.4, 'as-fed');

-- RAW4DOGS — Chicken (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.raw4dogs.nl/producten/chicken',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De Nederlandse productpagina vermeldt alleen de energie; de analytische bestanddelen zijn overgenomen van de officiële Franstalige productpagina (gearchiveerd). Kcal stond al per 100 g vermeld.'
 where id = '2841398c-fd2d-40e1-b9fd-f37ddcf62522';
delete from public.recipe_nutrition where recipe_version_id = '2841398c-fd2d-40e1-b9fd-f37ddcf62522';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2841398c-fd2d-40e1-b9fd-f37ddcf62522', 'protein', 14, 'as-fed'),
  ('2841398c-fd2d-40e1-b9fd-f37ddcf62522', 'fat', 12, 'as-fed'),
  ('2841398c-fd2d-40e1-b9fd-f37ddcf62522', 'fiber', 0.8, 'as-fed'),
  ('2841398c-fd2d-40e1-b9fd-f37ddcf62522', 'ash', 2.6, 'as-fed'),
  ('2841398c-fd2d-40e1-b9fd-f37ddcf62522', 'moisture', 70, 'as-fed'),
  ('2841398c-fd2d-40e1-b9fd-f37ddcf62522', 'kcal', 166, 'as-fed'),
  ('2841398c-fd2d-40e1-b9fd-f37ddcf62522', 'calcium', 0.7, 'as-fed'),
  ('2841398c-fd2d-40e1-b9fd-f37ddcf62522', 'phosphorus', 0.4, 'as-fed');

-- RAW4DOGS — Duck (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.raw4dogs.nl/producten/duck',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De Nederlandse productpagina vermeldt alleen de energie; de analytische bestanddelen zijn overgenomen van de officiële Franstalige productpagina (gearchiveerd). Kcal stond al per 100 g vermeld.'
 where id = '97517809-e15d-4139-b10b-7fa58bc14b01';
delete from public.recipe_nutrition where recipe_version_id = '97517809-e15d-4139-b10b-7fa58bc14b01';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('97517809-e15d-4139-b10b-7fa58bc14b01', 'protein', 14, 'as-fed'),
  ('97517809-e15d-4139-b10b-7fa58bc14b01', 'fat', 13, 'as-fed'),
  ('97517809-e15d-4139-b10b-7fa58bc14b01', 'fiber', 0.7, 'as-fed'),
  ('97517809-e15d-4139-b10b-7fa58bc14b01', 'ash', 3.2, 'as-fed'),
  ('97517809-e15d-4139-b10b-7fa58bc14b01', 'moisture', 69, 'as-fed'),
  ('97517809-e15d-4139-b10b-7fa58bc14b01', 'kcal', 173, 'as-fed'),
  ('97517809-e15d-4139-b10b-7fa58bc14b01', 'calcium', 0.8, 'as-fed'),
  ('97517809-e15d-4139-b10b-7fa58bc14b01', 'phosphorus', 0.5, 'as-fed');

-- RAW4DOGS — Fish Mix (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.raw4dogs.nl/producten/fish-mix',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De Nederlandse productpagina vermeldt alleen de energie; de analytische bestanddelen zijn overgenomen van de officiële Franstalige productpagina (gearchiveerd). Kcal stond al per 100 g vermeld.'
 where id = 'e234a092-32c2-47e9-bd0b-e91af7cb4544';
delete from public.recipe_nutrition where recipe_version_id = 'e234a092-32c2-47e9-bd0b-e91af7cb4544';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e234a092-32c2-47e9-bd0b-e91af7cb4544', 'protein', 14, 'as-fed'),
  ('e234a092-32c2-47e9-bd0b-e91af7cb4544', 'fat', 13, 'as-fed'),
  ('e234a092-32c2-47e9-bd0b-e91af7cb4544', 'fiber', 0.8, 'as-fed'),
  ('e234a092-32c2-47e9-bd0b-e91af7cb4544', 'ash', 3.6, 'as-fed'),
  ('e234a092-32c2-47e9-bd0b-e91af7cb4544', 'moisture', 66, 'as-fed'),
  ('e234a092-32c2-47e9-bd0b-e91af7cb4544', 'kcal', 183, 'as-fed'),
  ('e234a092-32c2-47e9-bd0b-e91af7cb4544', 'calcium', 0.8, 'as-fed'),
  ('e234a092-32c2-47e9-bd0b-e91af7cb4544', 'phosphorus', 0.5, 'as-fed');

-- RAW4DOGS — Game Mix (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.raw4dogs.nl/producten/game-mix',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De Nederlandse productpagina vermeldt alleen de energie; de analytische bestanddelen zijn overgenomen van de officiële Franstalige productpagina (gearchiveerd). Kcal stond al per 100 g vermeld.'
 where id = 'fdc55df1-b8da-4705-99cc-d6dad424f692';
delete from public.recipe_nutrition where recipe_version_id = 'fdc55df1-b8da-4705-99cc-d6dad424f692';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fdc55df1-b8da-4705-99cc-d6dad424f692', 'protein', 17, 'as-fed'),
  ('fdc55df1-b8da-4705-99cc-d6dad424f692', 'fat', 10, 'as-fed'),
  ('fdc55df1-b8da-4705-99cc-d6dad424f692', 'fiber', 0.9, 'as-fed'),
  ('fdc55df1-b8da-4705-99cc-d6dad424f692', 'ash', 3.1, 'as-fed'),
  ('fdc55df1-b8da-4705-99cc-d6dad424f692', 'moisture', 63, 'as-fed'),
  ('fdc55df1-b8da-4705-99cc-d6dad424f692', 'kcal', 182, 'as-fed'),
  ('fdc55df1-b8da-4705-99cc-d6dad424f692', 'calcium', 0.8, 'as-fed'),
  ('fdc55df1-b8da-4705-99cc-d6dad424f692', 'phosphorus', 0.5, 'as-fed');

-- RAW4DOGS — Lamb (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.raw4dogs.nl/producten/lamb',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De Nederlandse productpagina vermeldt alleen de energie; de analytische bestanddelen zijn overgenomen van de officiële Franstalige productpagina (gearchiveerd). Kcal stond al per 100 g vermeld.'
 where id = '35131582-d542-4cd8-9738-643d1c550fec';
delete from public.recipe_nutrition where recipe_version_id = '35131582-d542-4cd8-9738-643d1c550fec';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('35131582-d542-4cd8-9738-643d1c550fec', 'protein', 15, 'as-fed'),
  ('35131582-d542-4cd8-9738-643d1c550fec', 'fat', 16, 'as-fed'),
  ('35131582-d542-4cd8-9738-643d1c550fec', 'fiber', 0.9, 'as-fed'),
  ('35131582-d542-4cd8-9738-643d1c550fec', 'ash', 2.4, 'as-fed'),
  ('35131582-d542-4cd8-9738-643d1c550fec', 'moisture', 67, 'as-fed'),
  ('35131582-d542-4cd8-9738-643d1c550fec', 'kcal', 200, 'as-fed'),
  ('35131582-d542-4cd8-9738-643d1c550fec', 'calcium', 0.6, 'as-fed'),
  ('35131582-d542-4cd8-9738-643d1c550fec', 'phosphorus', 0.5, 'as-fed');

-- Almo Nature — Almo Nature Bio Organic met Kip en Groenten (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.almonature.com/nl/hondenproducten/300',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 775 kcal/kg naar 77,5 kcal/100 g. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '965952b1-0364-4a75-b2c7-40b4efc2105b';
delete from public.recipe_nutrition where recipe_version_id = '965952b1-0364-4a75-b2c7-40b4efc2105b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('965952b1-0364-4a75-b2c7-40b4efc2105b', 'protein', 9, 'as-fed'),
  ('965952b1-0364-4a75-b2c7-40b4efc2105b', 'fat', 4.5, 'as-fed'),
  ('965952b1-0364-4a75-b2c7-40b4efc2105b', 'fiber', 0.5, 'as-fed'),
  ('965952b1-0364-4a75-b2c7-40b4efc2105b', 'ash', 2.5, 'as-fed'),
  ('965952b1-0364-4a75-b2c7-40b4efc2105b', 'moisture', 82.5, 'as-fed'),
  ('965952b1-0364-4a75-b2c7-40b4efc2105b', 'kcal', 77.5, 'as-fed');

-- Almo Nature — Almo Nature Bio Organic met Rund en Groenten (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.almonature.com/nl/hondenproducten/303',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 775 kcal/kg naar 77,5 kcal/100 g. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '91c698cf-b04a-41ee-956d-0f81044acf3c';
delete from public.recipe_nutrition where recipe_version_id = '91c698cf-b04a-41ee-956d-0f81044acf3c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('91c698cf-b04a-41ee-956d-0f81044acf3c', 'protein', 9, 'as-fed'),
  ('91c698cf-b04a-41ee-956d-0f81044acf3c', 'fat', 4.5, 'as-fed'),
  ('91c698cf-b04a-41ee-956d-0f81044acf3c', 'fiber', 0.5, 'as-fed'),
  ('91c698cf-b04a-41ee-956d-0f81044acf3c', 'ash', 2.5, 'as-fed'),
  ('91c698cf-b04a-41ee-956d-0f81044acf3c', 'moisture', 82.5, 'as-fed'),
  ('91c698cf-b04a-41ee-956d-0f81044acf3c', 'kcal', 77.5, 'as-fed');

-- Almo Nature — Almo Nature Daily met Rundvlees (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.almonature.com/nl/hondenproducten/381',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 903 kcal/kg naar 90,3 kcal/100 g. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = 'a9c66cd0-3344-4c38-b478-002748c29a1c';
delete from public.recipe_nutrition where recipe_version_id = 'a9c66cd0-3344-4c38-b478-002748c29a1c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a9c66cd0-3344-4c38-b478-002748c29a1c', 'protein', 8.8, 'as-fed'),
  ('a9c66cd0-3344-4c38-b478-002748c29a1c', 'fat', 5.3, 'as-fed'),
  ('a9c66cd0-3344-4c38-b478-002748c29a1c', 'fiber', 0.3, 'as-fed'),
  ('a9c66cd0-3344-4c38-b478-002748c29a1c', 'ash', 2, 'as-fed'),
  ('a9c66cd0-3344-4c38-b478-002748c29a1c', 'moisture', 81, 'as-fed'),
  ('a9c66cd0-3344-4c38-b478-002748c29a1c', 'kcal', 90.3, 'as-fed');

-- Almo Nature — Almo Nature Life Maintenance met Verse Kip M (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.almonature.com/nl/hondenproducten/744',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3790 kcal/kg naar 379 kcal/100 g.'
 where id = '3266b164-d6c2-4df1-95ae-6fedad4d3dda';
delete from public.recipe_nutrition where recipe_version_id = '3266b164-d6c2-4df1-95ae-6fedad4d3dda';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3266b164-d6c2-4df1-95ae-6fedad4d3dda', 'protein', 25, 'as-fed'),
  ('3266b164-d6c2-4df1-95ae-6fedad4d3dda', 'fat', 15, 'as-fed'),
  ('3266b164-d6c2-4df1-95ae-6fedad4d3dda', 'fiber', 2.5, 'as-fed'),
  ('3266b164-d6c2-4df1-95ae-6fedad4d3dda', 'ash', 8.5, 'as-fed'),
  ('3266b164-d6c2-4df1-95ae-6fedad4d3dda', 'moisture', 9, 'as-fed'),
  ('3266b164-d6c2-4df1-95ae-6fedad4d3dda', 'kcal', 379, 'as-fed'),
  ('3266b164-d6c2-4df1-95ae-6fedad4d3dda', 'calcium', 1.6, 'as-fed'),
  ('3266b164-d6c2-4df1-95ae-6fedad4d3dda', 'phosphorus', 1.1, 'as-fed'),
  ('3266b164-d6c2-4df1-95ae-6fedad4d3dda', 'omega3', 0.25, 'as-fed'),
  ('3266b164-d6c2-4df1-95ae-6fedad4d3dda', 'omega6', 2.6, 'as-fed');

-- Almo Nature — Almo Nature Life Maintenance met Verse Lam M (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.almonature.com/nl/hondenproducten/741',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3720 kcal/kg naar 372 kcal/100 g.'
 where id = '90da812c-f866-4bc5-abfb-d2d1110b46a2';
delete from public.recipe_nutrition where recipe_version_id = '90da812c-f866-4bc5-abfb-d2d1110b46a2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('90da812c-f866-4bc5-abfb-d2d1110b46a2', 'protein', 26, 'as-fed'),
  ('90da812c-f866-4bc5-abfb-d2d1110b46a2', 'fat', 14, 'as-fed'),
  ('90da812c-f866-4bc5-abfb-d2d1110b46a2', 'fiber', 2.5, 'as-fed'),
  ('90da812c-f866-4bc5-abfb-d2d1110b46a2', 'ash', 9.3, 'as-fed'),
  ('90da812c-f866-4bc5-abfb-d2d1110b46a2', 'moisture', 9, 'as-fed'),
  ('90da812c-f866-4bc5-abfb-d2d1110b46a2', 'kcal', 372, 'as-fed'),
  ('90da812c-f866-4bc5-abfb-d2d1110b46a2', 'calcium', 1.8, 'as-fed'),
  ('90da812c-f866-4bc5-abfb-d2d1110b46a2', 'phosphorus', 1.1, 'as-fed'),
  ('90da812c-f866-4bc5-abfb-d2d1110b46a2', 'omega3', 0.27, 'as-fed'),
  ('90da812c-f866-4bc5-abfb-d2d1110b46a2', 'omega6', 1.7, 'as-fed');

-- Almo Nature — Almo Nature Life Maintenance met Verse Zalm M (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.almonature.com/nl/hondenproducten/745',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3845 kcal/kg naar 384,5 kcal/100 g.'
 where id = 'b32d6758-ec82-4e72-aa1f-cb2dda403d03';
delete from public.recipe_nutrition where recipe_version_id = 'b32d6758-ec82-4e72-aa1f-cb2dda403d03';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b32d6758-ec82-4e72-aa1f-cb2dda403d03', 'protein', 26, 'as-fed'),
  ('b32d6758-ec82-4e72-aa1f-cb2dda403d03', 'fat', 15, 'as-fed'),
  ('b32d6758-ec82-4e72-aa1f-cb2dda403d03', 'fiber', 2.5, 'as-fed'),
  ('b32d6758-ec82-4e72-aa1f-cb2dda403d03', 'ash', 7, 'as-fed'),
  ('b32d6758-ec82-4e72-aa1f-cb2dda403d03', 'moisture', 9, 'as-fed'),
  ('b32d6758-ec82-4e72-aa1f-cb2dda403d03', 'kcal', 384.5, 'as-fed'),
  ('b32d6758-ec82-4e72-aa1f-cb2dda403d03', 'calcium', 1.8, 'as-fed'),
  ('b32d6758-ec82-4e72-aa1f-cb2dda403d03', 'phosphorus', 1.1, 'as-fed'),
  ('b32d6758-ec82-4e72-aa1f-cb2dda403d03', 'omega3', 1.28, 'as-fed'),
  ('b32d6758-ec82-4e72-aa1f-cb2dda403d03', 'omega6', 2.6, 'as-fed');

-- Farmina — N&D Ancestral Grain Kip & Granaatappel Adult Medium & Maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.farmina.com/nl/hondenvoeding/n&d-ancestral-grain/594-kip-&-granaatappel-adult-medium-&-maxi.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3997 kcal/kg naar 399,7 kcal/100 g. DHA en EPA zijn niet als aparte voedingswaarde opgenomen.'
 where id = 'f992fec1-4cdb-40af-b5c8-a8dff26c1a5f';
delete from public.recipe_nutrition where recipe_version_id = 'f992fec1-4cdb-40af-b5c8-a8dff26c1a5f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f992fec1-4cdb-40af-b5c8-a8dff26c1a5f', 'protein', 30, 'as-fed'),
  ('f992fec1-4cdb-40af-b5c8-a8dff26c1a5f', 'fat', 18, 'as-fed'),
  ('f992fec1-4cdb-40af-b5c8-a8dff26c1a5f', 'fiber', 2.9, 'as-fed'),
  ('f992fec1-4cdb-40af-b5c8-a8dff26c1a5f', 'ash', 6.8, 'as-fed'),
  ('f992fec1-4cdb-40af-b5c8-a8dff26c1a5f', 'moisture', 9, 'as-fed'),
  ('f992fec1-4cdb-40af-b5c8-a8dff26c1a5f', 'kcal', 399.7, 'as-fed'),
  ('f992fec1-4cdb-40af-b5c8-a8dff26c1a5f', 'calcium', 0.9, 'as-fed'),
  ('f992fec1-4cdb-40af-b5c8-a8dff26c1a5f', 'phosphorus', 0.8, 'as-fed'),
  ('f992fec1-4cdb-40af-b5c8-a8dff26c1a5f', 'omega3', 0.9, 'as-fed'),
  ('f992fec1-4cdb-40af-b5c8-a8dff26c1a5f', 'omega6', 3.3, 'as-fed');

-- Farmina — N&D Pumpkin Kip & Granaatappel Adult Medium & Maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.farmina.com/nl/hondenvoeding/n&d-pumpkin/391-kip-&-granaatappel-adult-medium-&-maxi.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3990 kcal/kg naar 399 kcal/100 g. DHA en EPA zijn niet als aparte voedingswaarde opgenomen.'
 where id = 'e5c1f131-2f60-4027-a24b-65f58d220f6b';
delete from public.recipe_nutrition where recipe_version_id = 'e5c1f131-2f60-4027-a24b-65f58d220f6b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e5c1f131-2f60-4027-a24b-65f58d220f6b', 'protein', 30, 'as-fed'),
  ('e5c1f131-2f60-4027-a24b-65f58d220f6b', 'fat', 18, 'as-fed'),
  ('e5c1f131-2f60-4027-a24b-65f58d220f6b', 'fiber', 2.9, 'as-fed'),
  ('e5c1f131-2f60-4027-a24b-65f58d220f6b', 'ash', 7, 'as-fed'),
  ('e5c1f131-2f60-4027-a24b-65f58d220f6b', 'moisture', 9, 'as-fed'),
  ('e5c1f131-2f60-4027-a24b-65f58d220f6b', 'kcal', 399, 'as-fed'),
  ('e5c1f131-2f60-4027-a24b-65f58d220f6b', 'calcium', 0.9, 'as-fed'),
  ('e5c1f131-2f60-4027-a24b-65f58d220f6b', 'phosphorus', 0.8, 'as-fed'),
  ('e5c1f131-2f60-4027-a24b-65f58d220f6b', 'omega3', 0.9, 'as-fed'),
  ('e5c1f131-2f60-4027-a24b-65f58d220f6b', 'omega6', 3.3, 'as-fed');

-- Farmina — Vet Life Gastrointestinal Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.farmina.com/nl/hondenvoeding/farmina-vet-life/65-gastrointestinal-adult.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3749 kcal/kg naar 374,9 kcal/100 g. Vocht wordt niet vermeld.'
 where id = 'a6a2e467-8026-405d-85ea-6413b627be0f';
delete from public.recipe_nutrition where recipe_version_id = 'a6a2e467-8026-405d-85ea-6413b627be0f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a6a2e467-8026-405d-85ea-6413b627be0f', 'protein', 23, 'as-fed'),
  ('a6a2e467-8026-405d-85ea-6413b627be0f', 'fat', 10.5, 'as-fed'),
  ('a6a2e467-8026-405d-85ea-6413b627be0f', 'fiber', 1.3, 'as-fed'),
  ('a6a2e467-8026-405d-85ea-6413b627be0f', 'ash', 6.5, 'as-fed'),
  ('a6a2e467-8026-405d-85ea-6413b627be0f', 'kcal', 374.9, 'as-fed'),
  ('a6a2e467-8026-405d-85ea-6413b627be0f', 'calcium', 0.9, 'as-fed'),
  ('a6a2e467-8026-405d-85ea-6413b627be0f', 'phosphorus', 0.6, 'as-fed'),
  ('a6a2e467-8026-405d-85ea-6413b627be0f', 'omega3', 0.45, 'as-fed'),
  ('a6a2e467-8026-405d-85ea-6413b627be0f', 'omega6', 2.5, 'as-fed');

-- Farmina — Vet Life Hypoallergenic Ei & Rijst Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.farmina.com/nl/hondenvoeding/farmina-vet-life/74-hypoallergenic-ei-&-rijst-adult.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3891 kcal/kg naar 389,1 kcal/100 g. Vocht wordt niet vermeld.'
 where id = '07c884ac-eace-4a5b-82f5-ab1a25dc3129';
delete from public.recipe_nutrition where recipe_version_id = '07c884ac-eace-4a5b-82f5-ab1a25dc3129';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('07c884ac-eace-4a5b-82f5-ab1a25dc3129', 'protein', 18, 'as-fed'),
  ('07c884ac-eace-4a5b-82f5-ab1a25dc3129', 'fat', 13, 'as-fed'),
  ('07c884ac-eace-4a5b-82f5-ab1a25dc3129', 'fiber', 1.1, 'as-fed'),
  ('07c884ac-eace-4a5b-82f5-ab1a25dc3129', 'ash', 5.7, 'as-fed'),
  ('07c884ac-eace-4a5b-82f5-ab1a25dc3129', 'kcal', 389.1, 'as-fed'),
  ('07c884ac-eace-4a5b-82f5-ab1a25dc3129', 'calcium', 0.7, 'as-fed'),
  ('07c884ac-eace-4a5b-82f5-ab1a25dc3129', 'phosphorus', 0.5, 'as-fed'),
  ('07c884ac-eace-4a5b-82f5-ab1a25dc3129', 'omega3', 0.6, 'as-fed'),
  ('07c884ac-eace-4a5b-82f5-ab1a25dc3129', 'omega6', 2.2, 'as-fed');

-- Farmina — Vet Life Renal Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.farmina.com/nl/hondenvoeding/farmina-vet-life/69-renal-adult.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3935 kcal/kg naar 393,5 kcal/100 g. Vocht wordt niet vermeld.'
 where id = 'a3a009be-81aa-46d6-984a-472bfc676815';
delete from public.recipe_nutrition where recipe_version_id = 'a3a009be-81aa-46d6-984a-472bfc676815';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a3a009be-81aa-46d6-984a-472bfc676815', 'protein', 13.3, 'as-fed'),
  ('a3a009be-81aa-46d6-984a-472bfc676815', 'fat', 15, 'as-fed'),
  ('a3a009be-81aa-46d6-984a-472bfc676815', 'fiber', 1.4, 'as-fed'),
  ('a3a009be-81aa-46d6-984a-472bfc676815', 'ash', 4.5, 'as-fed'),
  ('a3a009be-81aa-46d6-984a-472bfc676815', 'kcal', 393.5, 'as-fed'),
  ('a3a009be-81aa-46d6-984a-472bfc676815', 'calcium', 0.6, 'as-fed'),
  ('a3a009be-81aa-46d6-984a-472bfc676815', 'phosphorus', 0.25, 'as-fed'),
  ('a3a009be-81aa-46d6-984a-472bfc676815', 'omega3', 0.7, 'as-fed'),
  ('a3a009be-81aa-46d6-984a-472bfc676815', 'omega6', 2.8, 'as-fed');

-- Farmina — Vet Life UltraHypo Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.farmina.com/nl/hondenvoeding/farmina-vet-life/72-ultrahypo-adult.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3993 kcal/kg naar 399,3 kcal/100 g. Vocht wordt niet vermeld.'
 where id = '3ea13edf-edce-422d-acd8-a9e62fd6a98a';
delete from public.recipe_nutrition where recipe_version_id = '3ea13edf-edce-422d-acd8-a9e62fd6a98a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3ea13edf-edce-422d-acd8-a9e62fd6a98a', 'protein', 18, 'as-fed'),
  ('3ea13edf-edce-422d-acd8-a9e62fd6a98a', 'fat', 15, 'as-fed'),
  ('3ea13edf-edce-422d-acd8-a9e62fd6a98a', 'fiber', 1.2, 'as-fed'),
  ('3ea13edf-edce-422d-acd8-a9e62fd6a98a', 'ash', 5.3, 'as-fed'),
  ('3ea13edf-edce-422d-acd8-a9e62fd6a98a', 'kcal', 399.3, 'as-fed'),
  ('3ea13edf-edce-422d-acd8-a9e62fd6a98a', 'calcium', 0.7, 'as-fed'),
  ('3ea13edf-edce-422d-acd8-a9e62fd6a98a', 'phosphorus', 0.5, 'as-fed'),
  ('3ea13edf-edce-422d-acd8-a9e62fd6a98a', 'omega3', 1.75, 'as-fed'),
  ('3ea13edf-edce-422d-acd8-a9e62fd6a98a', 'omega6', 2.2, 'as-fed');

-- Frolic — Frolic Compleet Malse Maaltijd Rund (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.petsplace.nl/frolic-compleet-malse-maaltijd-hondenvoer-m-4008429029110-pps',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Anorganische stof is ruwe as. Kcal stond al per 100 g op de pagina.'
 where id = '193b0005-9481-438c-b084-8e677490ff4c';
delete from public.recipe_nutrition where recipe_version_id = '193b0005-9481-438c-b084-8e677490ff4c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('193b0005-9481-438c-b084-8e677490ff4c', 'protein', 16, 'as-fed'),
  ('193b0005-9481-438c-b084-8e677490ff4c', 'fat', 17.6, 'as-fed'),
  ('193b0005-9481-438c-b084-8e677490ff4c', 'fiber', 2.6, 'as-fed'),
  ('193b0005-9481-438c-b084-8e677490ff4c', 'ash', 5.9, 'as-fed'),
  ('193b0005-9481-438c-b084-8e677490ff4c', 'moisture', 16.8, 'as-fed'),
  ('193b0005-9481-438c-b084-8e677490ff4c', 'kcal', 361, 'as-fed'),
  ('193b0005-9481-438c-b084-8e677490ff4c', 'calcium', 1, 'as-fed'),
  ('193b0005-9481-438c-b084-8e677490ff4c', 'phosphorus', 0.72, 'as-fed'),
  ('193b0005-9481-438c-b084-8e677490ff4c', 'omega3', 0.22, 'as-fed'),
  ('193b0005-9481-438c-b084-8e677490ff4c', 'omega6', 1.5, 'as-fed');

-- Frolic — Frolic Droog Gevogelte (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.petsplace.nl/frolic-droog-gevogelte-hondenvoer-5900951315282-pps',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Anorganische stof is ruwe as. Kcal stond al per 100 g op de pagina. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '652d4028-5d4b-4c33-ba94-11eec4d7696a';
delete from public.recipe_nutrition where recipe_version_id = '652d4028-5d4b-4c33-ba94-11eec4d7696a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('652d4028-5d4b-4c33-ba94-11eec4d7696a', 'protein', 20, 'as-fed'),
  ('652d4028-5d4b-4c33-ba94-11eec4d7696a', 'fat', 11.5, 'as-fed'),
  ('652d4028-5d4b-4c33-ba94-11eec4d7696a', 'fiber', 2, 'as-fed'),
  ('652d4028-5d4b-4c33-ba94-11eec4d7696a', 'ash', 5.6, 'as-fed'),
  ('652d4028-5d4b-4c33-ba94-11eec4d7696a', 'moisture', 17, 'as-fed'),
  ('652d4028-5d4b-4c33-ba94-11eec4d7696a', 'kcal', 339, 'as-fed');

-- Frolic — Frolic Droog Mini Gevogelte (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.petsplace.nl/frolic-droog-mini-gevogelte-hondenvoer-5900951315374-pps',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Anorganische stof is ruwe as. Kcal stond al per 100 g op de pagina. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '720856b4-24c3-4881-a3b1-8192339c8adf';
delete from public.recipe_nutrition where recipe_version_id = '720856b4-24c3-4881-a3b1-8192339c8adf';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('720856b4-24c3-4881-a3b1-8192339c8adf', 'protein', 20, 'as-fed'),
  ('720856b4-24c3-4881-a3b1-8192339c8adf', 'fat', 11.5, 'as-fed'),
  ('720856b4-24c3-4881-a3b1-8192339c8adf', 'fiber', 2, 'as-fed'),
  ('720856b4-24c3-4881-a3b1-8192339c8adf', 'ash', 5.6, 'as-fed'),
  ('720856b4-24c3-4881-a3b1-8192339c8adf', 'moisture', 17, 'as-fed'),
  ('720856b4-24c3-4881-a3b1-8192339c8adf', 'kcal', 339, 'as-fed');

-- Frolic — Frolic Droog Mini Rund (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.petsplace.nl/frolic-droog-mini-hondenvoer-5900951315350-pps',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Anorganische stof is ruwe as. Kcal stond al per 100 g op de pagina. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = 'dfb5eccc-218e-4ffc-bbfb-f1694428fb5b';
delete from public.recipe_nutrition where recipe_version_id = 'dfb5eccc-218e-4ffc-bbfb-f1694428fb5b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('dfb5eccc-218e-4ffc-bbfb-f1694428fb5b', 'protein', 20, 'as-fed'),
  ('dfb5eccc-218e-4ffc-bbfb-f1694428fb5b', 'fat', 11.5, 'as-fed'),
  ('dfb5eccc-218e-4ffc-bbfb-f1694428fb5b', 'fiber', 2, 'as-fed'),
  ('dfb5eccc-218e-4ffc-bbfb-f1694428fb5b', 'ash', 5.8, 'as-fed'),
  ('dfb5eccc-218e-4ffc-bbfb-f1694428fb5b', 'moisture', 17, 'as-fed'),
  ('dfb5eccc-218e-4ffc-bbfb-f1694428fb5b', 'kcal', 339, 'as-fed');

-- Frolic — Frolic Droog Rund 1,5 kg (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.petsplace.nl/frolic-droog-hondenvoer-5900951315305-pps',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Anorganische stof is ruwe as. Kcal stond al per 100 g op de pagina. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = 'f18abdd6-26fa-49b1-9fd2-f619bc2c2106';
delete from public.recipe_nutrition where recipe_version_id = 'f18abdd6-26fa-49b1-9fd2-f619bc2c2106';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f18abdd6-26fa-49b1-9fd2-f619bc2c2106', 'protein', 20, 'as-fed'),
  ('f18abdd6-26fa-49b1-9fd2-f619bc2c2106', 'fat', 11.5, 'as-fed'),
  ('f18abdd6-26fa-49b1-9fd2-f619bc2c2106', 'fiber', 2, 'as-fed'),
  ('f18abdd6-26fa-49b1-9fd2-f619bc2c2106', 'ash', 5.8, 'as-fed'),
  ('f18abdd6-26fa-49b1-9fd2-f619bc2c2106', 'moisture', 17, 'as-fed'),
  ('f18abdd6-26fa-49b1-9fd2-f619bc2c2106', 'kcal', 339, 'as-fed');

-- Frolic — Frolic Droog Rund 2,6 kg (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.petsplace.nl/frolic-droog-rund-hondenvoer-5900951315237-pps',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Anorganische stof is ruwe as. Kcal stond al per 100 g op de pagina. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '605be800-130d-465e-b59c-1c773f206b82';
delete from public.recipe_nutrition where recipe_version_id = '605be800-130d-465e-b59c-1c773f206b82';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('605be800-130d-465e-b59c-1c773f206b82', 'protein', 20, 'as-fed'),
  ('605be800-130d-465e-b59c-1c773f206b82', 'fat', 11.5, 'as-fed'),
  ('605be800-130d-465e-b59c-1c773f206b82', 'fiber', 2, 'as-fed'),
  ('605be800-130d-465e-b59c-1c773f206b82', 'ash', 5.8, 'as-fed'),
  ('605be800-130d-465e-b59c-1c773f206b82', 'moisture', 17, 'as-fed'),
  ('605be800-130d-465e-b59c-1c773f206b82', 'kcal', 339, 'as-fed');

-- Happy Dog — fit & vital - Sport (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://happydog.de/hundefutter/trockenfutter/happy-dog-fit-vital-sport-60777',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Duitse etiketgegevens. De pagina vermeldt geen vocht of energie; kcal is daarom null.'
 where id = '0ab3438e-7d21-45e2-bdb3-382277099978';
delete from public.recipe_nutrition where recipe_version_id = '0ab3438e-7d21-45e2-bdb3-382277099978';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0ab3438e-7d21-45e2-bdb3-382277099978', 'protein', 28, 'as-fed'),
  ('0ab3438e-7d21-45e2-bdb3-382277099978', 'fat', 16, 'as-fed'),
  ('0ab3438e-7d21-45e2-bdb3-382277099978', 'fiber', 1.5, 'as-fed'),
  ('0ab3438e-7d21-45e2-bdb3-382277099978', 'ash', 7, 'as-fed'),
  ('0ab3438e-7d21-45e2-bdb3-382277099978', 'calcium', 1.55, 'as-fed'),
  ('0ab3438e-7d21-45e2-bdb3-382277099978', 'phosphorus', 1, 'as-fed'),
  ('0ab3438e-7d21-45e2-bdb3-382277099978', 'omega3', 0.4, 'as-fed'),
  ('0ab3438e-7d21-45e2-bdb3-382277099978', 'omega6', 4, 'as-fed');

-- Happy Dog — NaturCroq Geflügel & Reis (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://happydog.de/hundefutter/trockenfutter/happy-dog-naturcroq-gefluegel-reis-60513',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Duitse etiketgegevens. De pagina vermeldt geen vocht of energie; kcal is daarom null.'
 where id = '381fc63b-d7ab-4c61-a139-d1259b60a833';
delete from public.recipe_nutrition where recipe_version_id = '381fc63b-d7ab-4c61-a139-d1259b60a833';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('381fc63b-d7ab-4c61-a139-d1259b60a833', 'protein', 23, 'as-fed'),
  ('381fc63b-d7ab-4c61-a139-d1259b60a833', 'fat', 10, 'as-fed'),
  ('381fc63b-d7ab-4c61-a139-d1259b60a833', 'fiber', 2, 'as-fed'),
  ('381fc63b-d7ab-4c61-a139-d1259b60a833', 'ash', 6.5, 'as-fed'),
  ('381fc63b-d7ab-4c61-a139-d1259b60a833', 'calcium', 1.25, 'as-fed'),
  ('381fc63b-d7ab-4c61-a139-d1259b60a833', 'phosphorus', 0.9, 'as-fed'),
  ('381fc63b-d7ab-4c61-a139-d1259b60a833', 'omega3', 0.2, 'as-fed'),
  ('381fc63b-d7ab-4c61-a139-d1259b60a833', 'omega6', 2.2, 'as-fed');

-- Happy Dog — NaturCroq Senior (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://happydog.de/hundefutter/trockenfutter/happy-dog-naturcroq-senior-60533',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Duitse etiketgegevens. De pagina vermeldt geen vocht of energie; kcal is daarom null.'
 where id = '8d41df1e-d310-4259-881c-4061d9a97953';
delete from public.recipe_nutrition where recipe_version_id = '8d41df1e-d310-4259-881c-4061d9a97953';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8d41df1e-d310-4259-881c-4061d9a97953', 'protein', 21, 'as-fed'),
  ('8d41df1e-d310-4259-881c-4061d9a97953', 'fat', 8, 'as-fed'),
  ('8d41df1e-d310-4259-881c-4061d9a97953', 'fiber', 2.5, 'as-fed'),
  ('8d41df1e-d310-4259-881c-4061d9a97953', 'ash', 5, 'as-fed'),
  ('8d41df1e-d310-4259-881c-4061d9a97953', 'calcium', 0.9, 'as-fed'),
  ('8d41df1e-d310-4259-881c-4061d9a97953', 'phosphorus', 0.7, 'as-fed'),
  ('8d41df1e-d310-4259-881c-4061d9a97953', 'omega3', 0.2, 'as-fed'),
  ('8d41df1e-d310-4259-881c-4061d9a97953', 'omega6', 1.8, 'as-fed');

-- Happy Dog — Sensible Ireland (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://happydog.de/hundefutter/trockenfutter/happy-dog-sensible-ireland-60301',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Duitse etiketgegevens. De pagina vermeldt geen vocht of energie; kcal is daarom null.'
 where id = 'a429850f-e40c-42de-96f4-a3c833cebc56';
delete from public.recipe_nutrition where recipe_version_id = 'a429850f-e40c-42de-96f4-a3c833cebc56';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a429850f-e40c-42de-96f4-a3c833cebc56', 'protein', 21, 'as-fed'),
  ('a429850f-e40c-42de-96f4-a3c833cebc56', 'fat', 10, 'as-fed'),
  ('a429850f-e40c-42de-96f4-a3c833cebc56', 'fiber', 3, 'as-fed'),
  ('a429850f-e40c-42de-96f4-a3c833cebc56', 'ash', 7, 'as-fed'),
  ('a429850f-e40c-42de-96f4-a3c833cebc56', 'calcium', 1.3, 'as-fed'),
  ('a429850f-e40c-42de-96f4-a3c833cebc56', 'phosphorus', 0.9, 'as-fed'),
  ('a429850f-e40c-42de-96f4-a3c833cebc56', 'omega3', 0.3, 'as-fed'),
  ('a429850f-e40c-42de-96f4-a3c833cebc56', 'omega6', 2.5, 'as-fed');

-- Happy Dog — Sensible Montana (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://happydog.de/hundefutter/trockenfutter/happy-dog-sensible-montana-60488',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Duitse etiketgegevens. De pagina vermeldt geen vocht of energie; kcal is daarom null.'
 where id = '705a432b-3026-4796-94ed-2f1b2fd86035';
delete from public.recipe_nutrition where recipe_version_id = '705a432b-3026-4796-94ed-2f1b2fd86035';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('705a432b-3026-4796-94ed-2f1b2fd86035', 'protein', 21, 'as-fed'),
  ('705a432b-3026-4796-94ed-2f1b2fd86035', 'fat', 10, 'as-fed'),
  ('705a432b-3026-4796-94ed-2f1b2fd86035', 'fiber', 2.5, 'as-fed'),
  ('705a432b-3026-4796-94ed-2f1b2fd86035', 'ash', 9, 'as-fed'),
  ('705a432b-3026-4796-94ed-2f1b2fd86035', 'calcium', 1.9, 'as-fed'),
  ('705a432b-3026-4796-94ed-2f1b2fd86035', 'phosphorus', 1.1, 'as-fed'),
  ('705a432b-3026-4796-94ed-2f1b2fd86035', 'omega3', 0.3, 'as-fed'),
  ('705a432b-3026-4796-94ed-2f1b2fd86035', 'omega6', 3.5, 'as-fed');

-- Happy Dog — Sensible Toscana (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://happydog.de/hundefutter/trockenfutter/happy-dog-sensible-toscana-60303',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Duitse etiketgegevens. De pagina vermeldt geen vocht of energie; kcal is daarom null.'
 where id = 'dfdac6a2-f16d-4dcf-ae78-894e9fe7e80d';
delete from public.recipe_nutrition where recipe_version_id = 'dfdac6a2-f16d-4dcf-ae78-894e9fe7e80d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('dfdac6a2-f16d-4dcf-ae78-894e9fe7e80d', 'protein', 24, 'as-fed'),
  ('dfdac6a2-f16d-4dcf-ae78-894e9fe7e80d', 'fat', 7.5, 'as-fed'),
  ('dfdac6a2-f16d-4dcf-ae78-894e9fe7e80d', 'fiber', 2.5, 'as-fed'),
  ('dfdac6a2-f16d-4dcf-ae78-894e9fe7e80d', 'ash', 7, 'as-fed'),
  ('dfdac6a2-f16d-4dcf-ae78-894e9fe7e80d', 'calcium', 1.5, 'as-fed'),
  ('dfdac6a2-f16d-4dcf-ae78-894e9fe7e80d', 'phosphorus', 0.95, 'as-fed'),
  ('dfdac6a2-f16d-4dcf-ae78-894e9fe7e80d', 'omega3', 0.3, 'as-fed'),
  ('dfdac6a2-f16d-4dcf-ae78-894e9fe7e80d', 'omega6', 2.5, 'as-fed');

-- Josera — Active Nature (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.josera.de/josera-active-nature.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Duitse etiketgegevens. Kcal omgerekend van 3854 kcal/kg naar 385,4 kcal/100 g. Vocht en omega-3/6 worden niet vermeld.'
 where id = '3d86aba4-d87e-4309-b8f0-1b796f9d112c';
delete from public.recipe_nutrition where recipe_version_id = '3d86aba4-d87e-4309-b8f0-1b796f9d112c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3d86aba4-d87e-4309-b8f0-1b796f9d112c', 'protein', 28, 'as-fed'),
  ('3d86aba4-d87e-4309-b8f0-1b796f9d112c', 'fat', 16, 'as-fed'),
  ('3d86aba4-d87e-4309-b8f0-1b796f9d112c', 'fiber', 2, 'as-fed'),
  ('3d86aba4-d87e-4309-b8f0-1b796f9d112c', 'ash', 7.8, 'as-fed'),
  ('3d86aba4-d87e-4309-b8f0-1b796f9d112c', 'kcal', 385.4, 'as-fed'),
  ('3d86aba4-d87e-4309-b8f0-1b796f9d112c', 'calcium', 1.8, 'as-fed'),
  ('3d86aba4-d87e-4309-b8f0-1b796f9d112c', 'phosphorus', 1.1, 'as-fed');

-- Josera — Senior Salmon & Rice (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.josera.de/josera-seniorplus.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Duitse etiketgegevens. Kcal omgerekend van 3588 kcal/kg naar 358,8 kcal/100 g. Vocht en omega-3/6 worden niet vermeld.'
 where id = '075d15c0-a560-4941-a7f0-5d8aa4bfb0bf';
delete from public.recipe_nutrition where recipe_version_id = '075d15c0-a560-4941-a7f0-5d8aa4bfb0bf';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('075d15c0-a560-4941-a7f0-5d8aa4bfb0bf', 'protein', 20, 'as-fed'),
  ('075d15c0-a560-4941-a7f0-5d8aa4bfb0bf', 'fat', 9.5, 'as-fed'),
  ('075d15c0-a560-4941-a7f0-5d8aa4bfb0bf', 'fiber', 2.5, 'as-fed'),
  ('075d15c0-a560-4941-a7f0-5d8aa4bfb0bf', 'ash', 5, 'as-fed'),
  ('075d15c0-a560-4941-a7f0-5d8aa4bfb0bf', 'kcal', 358.8, 'as-fed'),
  ('075d15c0-a560-4941-a7f0-5d8aa4bfb0bf', 'calcium', 0.85, 'as-fed'),
  ('075d15c0-a560-4941-a7f0-5d8aa4bfb0bf', 'phosphorus', 0.7, 'as-fed');

-- Josera — SensiAdult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.josera.de/josera-sensiadult.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Duitse etiketgegevens. Kcal omgerekend van 4017 kcal/kg naar 401,7 kcal/100 g. Vocht en omega-3/6 worden niet vermeld.'
 where id = '0b32746a-e2b0-4fb1-b65f-c268a0bd86e4';
delete from public.recipe_nutrition where recipe_version_id = '0b32746a-e2b0-4fb1-b65f-c268a0bd86e4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0b32746a-e2b0-4fb1-b65f-c268a0bd86e4', 'protein', 25, 'as-fed'),
  ('0b32746a-e2b0-4fb1-b65f-c268a0bd86e4', 'fat', 19, 'as-fed'),
  ('0b32746a-e2b0-4fb1-b65f-c268a0bd86e4', 'fiber', 2.4, 'as-fed'),
  ('0b32746a-e2b0-4fb1-b65f-c268a0bd86e4', 'ash', 6, 'as-fed'),
  ('0b32746a-e2b0-4fb1-b65f-c268a0bd86e4', 'kcal', 401.7, 'as-fed'),
  ('0b32746a-e2b0-4fb1-b65f-c268a0bd86e4', 'calcium', 1.35, 'as-fed'),
  ('0b32746a-e2b0-4fb1-b65f-c268a0bd86e4', 'phosphorus', 0.95, 'as-fed');

-- Josera — SensiJunior (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.josera.de/josera-sensijunior.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Duitse etiketgegevens. Kcal omgerekend van 3950 kcal/kg naar 395 kcal/100 g. Vocht en omega-3/6 worden niet vermeld.'
 where id = '26d29de4-506c-4568-a9a1-ad2e6d477e12';
delete from public.recipe_nutrition where recipe_version_id = '26d29de4-506c-4568-a9a1-ad2e6d477e12';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('26d29de4-506c-4568-a9a1-ad2e6d477e12', 'protein', 30, 'as-fed'),
  ('26d29de4-506c-4568-a9a1-ad2e6d477e12', 'fat', 17, 'as-fed'),
  ('26d29de4-506c-4568-a9a1-ad2e6d477e12', 'fiber', 2.3, 'as-fed'),
  ('26d29de4-506c-4568-a9a1-ad2e6d477e12', 'ash', 6, 'as-fed'),
  ('26d29de4-506c-4568-a9a1-ad2e6d477e12', 'kcal', 395, 'as-fed'),
  ('26d29de4-506c-4568-a9a1-ad2e6d477e12', 'calcium', 1.2, 'as-fed'),
  ('26d29de4-506c-4568-a9a1-ad2e6d477e12', 'phosphorus', 0.9, 'as-fed');

-- Josera — SensiPlus (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.josera.de/josera-sensiplus.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Duitse etiketgegevens. Kcal omgerekend van 3678 kcal/kg naar 367,8 kcal/100 g. Vocht en omega-3/6 worden niet vermeld.'
 where id = '9a57fe0b-691f-448f-94fe-08dd3ab2d852';
delete from public.recipe_nutrition where recipe_version_id = '9a57fe0b-691f-448f-94fe-08dd3ab2d852';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9a57fe0b-691f-448f-94fe-08dd3ab2d852', 'protein', 24, 'as-fed'),
  ('9a57fe0b-691f-448f-94fe-08dd3ab2d852', 'fat', 12, 'as-fed'),
  ('9a57fe0b-691f-448f-94fe-08dd3ab2d852', 'fiber', 2.3, 'as-fed'),
  ('9a57fe0b-691f-448f-94fe-08dd3ab2d852', 'ash', 6.5, 'as-fed'),
  ('9a57fe0b-691f-448f-94fe-08dd3ab2d852', 'kcal', 367.8, 'as-fed'),
  ('9a57fe0b-691f-448f-94fe-08dd3ab2d852', 'calcium', 1.4, 'as-fed'),
  ('9a57fe0b-691f-448f-94fe-08dd3ab2d852', 'phosphorus', 0.9, 'as-fed');

-- Josera — YoungStar (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.josera.de/josera-youngstar.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Duitse etiketgegevens. Kcal omgerekend van 3725 kcal/kg naar 372,5 kcal/100 g. Vocht en omega-3/6 worden niet vermeld.'
 where id = 'ce7551bc-2036-4cb0-902b-7dc6ae88173b';
delete from public.recipe_nutrition where recipe_version_id = 'ce7551bc-2036-4cb0-902b-7dc6ae88173b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ce7551bc-2036-4cb0-902b-7dc6ae88173b', 'protein', 25, 'as-fed'),
  ('ce7551bc-2036-4cb0-902b-7dc6ae88173b', 'fat', 13, 'as-fed'),
  ('ce7551bc-2036-4cb0-902b-7dc6ae88173b', 'fiber', 2, 'as-fed'),
  ('ce7551bc-2036-4cb0-902b-7dc6ae88173b', 'ash', 7.2, 'as-fed'),
  ('ce7551bc-2036-4cb0-902b-7dc6ae88173b', 'kcal', 372.5, 'as-fed'),
  ('ce7551bc-2036-4cb0-902b-7dc6ae88173b', 'calcium', 1.4, 'as-fed'),
  ('ce7551bc-2036-4cb0-902b-7dc6ae88173b', 'phosphorus', 0.9, 'as-fed');

-- Monge — Monge Natural Superpremium Hypoallergeen Adult Zalm en Tonijn (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.mongebenelux.com/nl/hondenbrokken-hypoallergeen-adult-zalm-en-tonijn-1.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3940 kcal/kg naar 394 kcal/100 g. Vocht wordt niet vermeld.'
 where id = 'a6e4f588-8823-4b56-8f5c-c36d1611da06';
delete from public.recipe_nutrition where recipe_version_id = 'a6e4f588-8823-4b56-8f5c-c36d1611da06';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a6e4f588-8823-4b56-8f5c-c36d1611da06', 'protein', 24, 'as-fed'),
  ('a6e4f588-8823-4b56-8f5c-c36d1611da06', 'fat', 12, 'as-fed'),
  ('a6e4f588-8823-4b56-8f5c-c36d1611da06', 'fiber', 2, 'as-fed'),
  ('a6e4f588-8823-4b56-8f5c-c36d1611da06', 'ash', 6.5, 'as-fed'),
  ('a6e4f588-8823-4b56-8f5c-c36d1611da06', 'kcal', 394, 'as-fed'),
  ('a6e4f588-8823-4b56-8f5c-c36d1611da06', 'calcium', 1.4, 'as-fed'),
  ('a6e4f588-8823-4b56-8f5c-c36d1611da06', 'phosphorus', 1.1, 'as-fed'),
  ('a6e4f588-8823-4b56-8f5c-c36d1611da06', 'omega3', 0.9, 'as-fed'),
  ('a6e4f588-8823-4b56-8f5c-c36d1611da06', 'omega6', 3.6, 'as-fed');

-- Monge — Monge Natural Superpremium Monoproteïne Adult Eend met Rijst en Aardappelen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.mongebenelux.com/nl/hondenbrokken-monoproteine-adult-eend-me-145549550.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 4100 kcal/kg naar 410 kcal/100 g. Vocht wordt niet vermeld.'
 where id = 'c2bdf2c5-6444-4ef4-8dd0-c5fa845c1523';
delete from public.recipe_nutrition where recipe_version_id = 'c2bdf2c5-6444-4ef4-8dd0-c5fa845c1523';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c2bdf2c5-6444-4ef4-8dd0-c5fa845c1523', 'protein', 25, 'as-fed'),
  ('c2bdf2c5-6444-4ef4-8dd0-c5fa845c1523', 'fat', 16, 'as-fed'),
  ('c2bdf2c5-6444-4ef4-8dd0-c5fa845c1523', 'fiber', 2.5, 'as-fed'),
  ('c2bdf2c5-6444-4ef4-8dd0-c5fa845c1523', 'ash', 7, 'as-fed'),
  ('c2bdf2c5-6444-4ef4-8dd0-c5fa845c1523', 'kcal', 410, 'as-fed'),
  ('c2bdf2c5-6444-4ef4-8dd0-c5fa845c1523', 'calcium', 1.7, 'as-fed'),
  ('c2bdf2c5-6444-4ef4-8dd0-c5fa845c1523', 'phosphorus', 1.1, 'as-fed'),
  ('c2bdf2c5-6444-4ef4-8dd0-c5fa845c1523', 'omega3', 0.5, 'as-fed'),
  ('c2bdf2c5-6444-4ef4-8dd0-c5fa845c1523', 'omega6', 3.5, 'as-fed');

-- Monge — Monge Natural Superpremium Monoproteïne Adult Rundvlees met Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.mongebenelux.com/nl/hondenbrokken-monoproteine-adult-rundvle-145561903.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 4030 kcal/kg naar 403 kcal/100 g. Vocht wordt niet vermeld.'
 where id = '1c82fa64-2732-4c72-8033-65ed99b8f0fa';
delete from public.recipe_nutrition where recipe_version_id = '1c82fa64-2732-4c72-8033-65ed99b8f0fa';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1c82fa64-2732-4c72-8033-65ed99b8f0fa', 'protein', 27, 'as-fed'),
  ('1c82fa64-2732-4c72-8033-65ed99b8f0fa', 'fat', 16, 'as-fed'),
  ('1c82fa64-2732-4c72-8033-65ed99b8f0fa', 'fiber', 2.2, 'as-fed'),
  ('1c82fa64-2732-4c72-8033-65ed99b8f0fa', 'ash', 7.5, 'as-fed'),
  ('1c82fa64-2732-4c72-8033-65ed99b8f0fa', 'kcal', 403, 'as-fed'),
  ('1c82fa64-2732-4c72-8033-65ed99b8f0fa', 'calcium', 1.5, 'as-fed'),
  ('1c82fa64-2732-4c72-8033-65ed99b8f0fa', 'phosphorus', 1.3, 'as-fed'),
  ('1c82fa64-2732-4c72-8033-65ed99b8f0fa', 'omega3', 0.4, 'as-fed'),
  ('1c82fa64-2732-4c72-8033-65ed99b8f0fa', 'omega6', 1.6, 'as-fed');

-- Monge — Monge Natural Superpremium Monoproteïne Adult Varken met Rijst en Aardappelen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.mongebenelux.com/nl/hondenbrokken-monoproteine-adult-varken-145561914.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 4070 kcal/kg naar 407 kcal/100 g. Vocht wordt niet vermeld.'
 where id = 'd34f313b-2c4b-40c4-b1a1-e7d951f370b2';
delete from public.recipe_nutrition where recipe_version_id = 'd34f313b-2c4b-40c4-b1a1-e7d951f370b2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d34f313b-2c4b-40c4-b1a1-e7d951f370b2', 'protein', 28, 'as-fed'),
  ('d34f313b-2c4b-40c4-b1a1-e7d951f370b2', 'fat', 15, 'as-fed'),
  ('d34f313b-2c4b-40c4-b1a1-e7d951f370b2', 'fiber', 2.5, 'as-fed'),
  ('d34f313b-2c4b-40c4-b1a1-e7d951f370b2', 'ash', 6.5, 'as-fed'),
  ('d34f313b-2c4b-40c4-b1a1-e7d951f370b2', 'kcal', 407, 'as-fed'),
  ('d34f313b-2c4b-40c4-b1a1-e7d951f370b2', 'calcium', 1.2, 'as-fed'),
  ('d34f313b-2c4b-40c4-b1a1-e7d951f370b2', 'phosphorus', 0.8, 'as-fed'),
  ('d34f313b-2c4b-40c4-b1a1-e7d951f370b2', 'omega3', 0.5, 'as-fed'),
  ('d34f313b-2c4b-40c4-b1a1-e7d951f370b2', 'omega6', 3.5, 'as-fed');

-- Monge — Monge Natural Superpremium Monoproteïne Light Zalm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.mongebenelux.com/nl/hondenbrokken-monoproteine-adult-zalm-me-145561944.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3950 kcal/kg naar 395 kcal/100 g. Vocht wordt niet vermeld.'
 where id = '2805bb95-ff46-40d3-9c85-af4933ff1274';
delete from public.recipe_nutrition where recipe_version_id = '2805bb95-ff46-40d3-9c85-af4933ff1274';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2805bb95-ff46-40d3-9c85-af4933ff1274', 'protein', 24, 'as-fed'),
  ('2805bb95-ff46-40d3-9c85-af4933ff1274', 'fat', 12, 'as-fed'),
  ('2805bb95-ff46-40d3-9c85-af4933ff1274', 'fiber', 2.5, 'as-fed'),
  ('2805bb95-ff46-40d3-9c85-af4933ff1274', 'ash', 6, 'as-fed'),
  ('2805bb95-ff46-40d3-9c85-af4933ff1274', 'kcal', 395, 'as-fed'),
  ('2805bb95-ff46-40d3-9c85-af4933ff1274', 'calcium', 1.4, 'as-fed'),
  ('2805bb95-ff46-40d3-9c85-af4933ff1274', 'phosphorus', 0.9, 'as-fed'),
  ('2805bb95-ff46-40d3-9c85-af4933ff1274', 'omega3', 0.7, 'as-fed'),
  ('2805bb95-ff46-40d3-9c85-af4933ff1274', 'omega6', 3.5, 'as-fed');

-- Monge — Monge Natural Superpremium Monoproteïne Puppy & Junior Lamsvlees met Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.mongebenelux.com/nl/hondenbrokken-monoproteine-puppy-junior-145562133.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 4200 kcal/kg naar 420 kcal/100 g. Vocht wordt niet vermeld.'
 where id = '7eed46bb-c675-45bd-86bc-e3d159a035ad';
delete from public.recipe_nutrition where recipe_version_id = '7eed46bb-c675-45bd-86bc-e3d159a035ad';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7eed46bb-c675-45bd-86bc-e3d159a035ad', 'protein', 30, 'as-fed'),
  ('7eed46bb-c675-45bd-86bc-e3d159a035ad', 'fat', 18, 'as-fed'),
  ('7eed46bb-c675-45bd-86bc-e3d159a035ad', 'fiber', 2, 'as-fed'),
  ('7eed46bb-c675-45bd-86bc-e3d159a035ad', 'ash', 7, 'as-fed'),
  ('7eed46bb-c675-45bd-86bc-e3d159a035ad', 'kcal', 420, 'as-fed'),
  ('7eed46bb-c675-45bd-86bc-e3d159a035ad', 'calcium', 1.6, 'as-fed'),
  ('7eed46bb-c675-45bd-86bc-e3d159a035ad', 'phosphorus', 1.1, 'as-fed'),
  ('7eed46bb-c675-45bd-86bc-e3d159a035ad', 'omega3', 0.5, 'as-fed'),
  ('7eed46bb-c675-45bd-86bc-e3d159a035ad', 'omega6', 5.2, 'as-fed');

-- James Wellbeloved — James Wellbeloved Adult Lam & Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.wellbeloved.com/p/adult-lamb-and-rice-dry-dog-food/15843891/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Engelse officiële productpagina. Kcal stond al per 100 g vermeld. Calcium, fosfor en vocht worden niet vermeld.'
 where id = '596b0ca2-9109-411c-9095-7b37f3cfb253';
delete from public.recipe_nutrition where recipe_version_id = '596b0ca2-9109-411c-9095-7b37f3cfb253';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('596b0ca2-9109-411c-9095-7b37f3cfb253', 'protein', 22.7, 'as-fed'),
  ('596b0ca2-9109-411c-9095-7b37f3cfb253', 'fat', 11.6, 'as-fed'),
  ('596b0ca2-9109-411c-9095-7b37f3cfb253', 'fiber', 3, 'as-fed'),
  ('596b0ca2-9109-411c-9095-7b37f3cfb253', 'ash', 5.9, 'as-fed'),
  ('596b0ca2-9109-411c-9095-7b37f3cfb253', 'kcal', 364, 'as-fed'),
  ('596b0ca2-9109-411c-9095-7b37f3cfb253', 'omega3', 1.2, 'as-fed'),
  ('596b0ca2-9109-411c-9095-7b37f3cfb253', 'omega6', 3, 'as-fed');

-- James Wellbeloved — James Wellbeloved Junior Kalkoen & Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.wellbeloved.com/p/puppy-turkey-and-rice-dry-dog-food/15843908/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De Engelse productpagina vermeldt per abuis de analyse van natvoer (5,3% eiwit, 82% vocht). Daarom zijn de waarden van de Duitse officiële productpagina gebruikt. Kcal stond al per 100 g vermeld.'
 where id = 'af622ce0-ea1c-4109-a9e2-b48218eb2ab9';
delete from public.recipe_nutrition where recipe_version_id = 'af622ce0-ea1c-4109-a9e2-b48218eb2ab9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('af622ce0-ea1c-4109-a9e2-b48218eb2ab9', 'protein', 29.9, 'as-fed'),
  ('af622ce0-ea1c-4109-a9e2-b48218eb2ab9', 'fat', 14.9, 'as-fed'),
  ('af622ce0-ea1c-4109-a9e2-b48218eb2ab9', 'fiber', 2.2, 'as-fed'),
  ('af622ce0-ea1c-4109-a9e2-b48218eb2ab9', 'ash', 7.8, 'as-fed'),
  ('af622ce0-ea1c-4109-a9e2-b48218eb2ab9', 'kcal', 382, 'as-fed'),
  ('af622ce0-ea1c-4109-a9e2-b48218eb2ab9', 'calcium', 1.5, 'as-fed'),
  ('af622ce0-ea1c-4109-a9e2-b48218eb2ab9', 'phosphorus', 1, 'as-fed'),
  ('af622ce0-ea1c-4109-a9e2-b48218eb2ab9', 'omega3', 1.1, 'as-fed'),
  ('af622ce0-ea1c-4109-a9e2-b48218eb2ab9', 'omega6', 3.5, 'as-fed');

-- James Wellbeloved — James Wellbeloved Junior Lam & Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.wellbeloved.com/p/puppy-lamb-and-rice-dry-dog-food/15843893/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Engelse officiële productpagina. Kcal stond al per 100 g vermeld. Vocht wordt niet vermeld.'
 where id = 'a98c4bbb-8f50-47e0-bf83-ca740c93133d';
delete from public.recipe_nutrition where recipe_version_id = 'a98c4bbb-8f50-47e0-bf83-ca740c93133d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a98c4bbb-8f50-47e0-bf83-ca740c93133d', 'protein', 28.5, 'as-fed'),
  ('a98c4bbb-8f50-47e0-bf83-ca740c93133d', 'fat', 16, 'as-fed'),
  ('a98c4bbb-8f50-47e0-bf83-ca740c93133d', 'fiber', 2, 'as-fed'),
  ('a98c4bbb-8f50-47e0-bf83-ca740c93133d', 'ash', 8.3, 'as-fed'),
  ('a98c4bbb-8f50-47e0-bf83-ca740c93133d', 'kcal', 385, 'as-fed'),
  ('a98c4bbb-8f50-47e0-bf83-ca740c93133d', 'calcium', 1.5, 'as-fed'),
  ('a98c4bbb-8f50-47e0-bf83-ca740c93133d', 'phosphorus', 1.1, 'as-fed'),
  ('a98c4bbb-8f50-47e0-bf83-ca740c93133d', 'omega3', 1.9, 'as-fed'),
  ('a98c4bbb-8f50-47e0-bf83-ca740c93133d', 'omega6', 3.1, 'as-fed');

-- James Wellbeloved — James Wellbeloved Senior/Light Kalkoen & Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.wellbeloved.com/p/senior-turkey-and-rice-dry-dog-food/15843902/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De Engelse productpagina vermeldt per abuis de analyse van natvoer. Daarom zijn de waarden van de Duitse officiële productpagina gebruikt. Calcium, fosfor en vocht worden niet vermeld.'
 where id = '1f0a93f5-7a68-417d-9c8a-1a63f57400a9';
delete from public.recipe_nutrition where recipe_version_id = '1f0a93f5-7a68-417d-9c8a-1a63f57400a9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1f0a93f5-7a68-417d-9c8a-1a63f57400a9', 'protein', 20.6, 'as-fed'),
  ('1f0a93f5-7a68-417d-9c8a-1a63f57400a9', 'fat', 9.7, 'as-fed'),
  ('1f0a93f5-7a68-417d-9c8a-1a63f57400a9', 'fiber', 3.5, 'as-fed'),
  ('1f0a93f5-7a68-417d-9c8a-1a63f57400a9', 'ash', 6.5, 'as-fed'),
  ('1f0a93f5-7a68-417d-9c8a-1a63f57400a9', 'kcal', 350, 'as-fed'),
  ('1f0a93f5-7a68-417d-9c8a-1a63f57400a9', 'omega3', 1.1, 'as-fed'),
  ('1f0a93f5-7a68-417d-9c8a-1a63f57400a9', 'omega6', 2.5, 'as-fed');

-- James Wellbeloved — James Wellbeloved Senior/Light Lam & Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.wellbeloved.com/p/senior-lamb-and-rice-dry-dog-food/15843886/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De Engelse productpagina vermeldt geen analyse. Daarom zijn de waarden van de Duitse officiële productpagina gebruikt. Calcium, fosfor en vocht worden niet vermeld.'
 where id = 'f2945909-4619-426c-b23d-1eccf5d3b0a0';
delete from public.recipe_nutrition where recipe_version_id = 'f2945909-4619-426c-b23d-1eccf5d3b0a0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f2945909-4619-426c-b23d-1eccf5d3b0a0', 'protein', 19.6, 'as-fed'),
  ('f2945909-4619-426c-b23d-1eccf5d3b0a0', 'fat', 10.2, 'as-fed'),
  ('f2945909-4619-426c-b23d-1eccf5d3b0a0', 'fiber', 3, 'as-fed'),
  ('f2945909-4619-426c-b23d-1eccf5d3b0a0', 'ash', 7.6, 'as-fed'),
  ('f2945909-4619-426c-b23d-1eccf5d3b0a0', 'kcal', 351, 'as-fed'),
  ('f2945909-4619-426c-b23d-1eccf5d3b0a0', 'omega3', 1.1, 'as-fed'),
  ('f2945909-4619-426c-b23d-1eccf5d3b0a0', 'omega6', 2, 'as-fed');

commit;
