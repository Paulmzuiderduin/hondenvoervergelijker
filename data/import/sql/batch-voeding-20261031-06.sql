begin;

-- Kivo — 5 Diersoorten compleet (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.kivopetfood.nl/p/5-diersoorten-compleet/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal stond op de bron al per 100 g; geen omrekening nodig. Omega-3 staat alleen als 46 g/kg vet, niet als percentage van het product; omega-6 wordt niet vermeld. Daarom zijn beide null.'
 where id = '7ace0760-8509-4b5b-8229-6ebabaf008f7';
delete from public.recipe_nutrition where recipe_version_id = '7ace0760-8509-4b5b-8229-6ebabaf008f7';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7ace0760-8509-4b5b-8229-6ebabaf008f7', 'protein', 14.3, 'as-fed'),
  ('7ace0760-8509-4b5b-8229-6ebabaf008f7', 'fat', 20.4, 'as-fed'),
  ('7ace0760-8509-4b5b-8229-6ebabaf008f7', 'fiber', 2.3, 'as-fed'),
  ('7ace0760-8509-4b5b-8229-6ebabaf008f7', 'ash', 2.6, 'as-fed'),
  ('7ace0760-8509-4b5b-8229-6ebabaf008f7', 'moisture', 61.6, 'as-fed'),
  ('7ace0760-8509-4b5b-8229-6ebabaf008f7', 'kcal', 241, 'as-fed'),
  ('7ace0760-8509-4b5b-8229-6ebabaf008f7', 'calcium', 1, 'as-fed'),
  ('7ace0760-8509-4b5b-8229-6ebabaf008f7', 'phosphorus', 0.6, 'as-fed');

-- Kivo — Eend compleet (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.kivopetfood.nl/p/eend-compleet/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal stond op de bron al per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = '32e7faa1-f627-467d-b099-c5f404df4b99';
delete from public.recipe_nutrition where recipe_version_id = '32e7faa1-f627-467d-b099-c5f404df4b99';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('32e7faa1-f627-467d-b099-c5f404df4b99', 'protein', 13.8, 'as-fed'),
  ('32e7faa1-f627-467d-b099-c5f404df4b99', 'fat', 20.3, 'as-fed'),
  ('32e7faa1-f627-467d-b099-c5f404df4b99', 'fiber', 0.2, 'as-fed'),
  ('32e7faa1-f627-467d-b099-c5f404df4b99', 'ash', 3.4, 'as-fed'),
  ('32e7faa1-f627-467d-b099-c5f404df4b99', 'moisture', 62.5, 'as-fed'),
  ('32e7faa1-f627-467d-b099-c5f404df4b99', 'kcal', 238, 'as-fed'),
  ('32e7faa1-f627-467d-b099-c5f404df4b99', 'calcium', 0.6, 'as-fed'),
  ('32e7faa1-f627-467d-b099-c5f404df4b99', 'phosphorus', 0.4, 'as-fed');

-- Kivo — Gestoomde eend (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.kivopetfood.nl/p/gestoomde-eend/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal stond op de bron al per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = 'e2589d1c-afb2-4acc-a710-361556c23634';
delete from public.recipe_nutrition where recipe_version_id = 'e2589d1c-afb2-4acc-a710-361556c23634';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e2589d1c-afb2-4acc-a710-361556c23634', 'protein', 11.1, 'as-fed'),
  ('e2589d1c-afb2-4acc-a710-361556c23634', 'fat', 15.2, 'as-fed'),
  ('e2589d1c-afb2-4acc-a710-361556c23634', 'fiber', 0.9, 'as-fed'),
  ('e2589d1c-afb2-4acc-a710-361556c23634', 'ash', 2, 'as-fed'),
  ('e2589d1c-afb2-4acc-a710-361556c23634', 'moisture', 58.4, 'as-fed'),
  ('e2589d1c-afb2-4acc-a710-361556c23634', 'kcal', 210, 'as-fed'),
  ('e2589d1c-afb2-4acc-a710-361556c23634', 'calcium', 1.5, 'as-fed'),
  ('e2589d1c-afb2-4acc-a710-361556c23634', 'phosphorus', 0.8, 'as-fed');

-- Kivo — Gestoomde Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.kivopetfood.nl/p/gestoomde-kip/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal stond op de bron al per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = '79e496d3-8709-4c5e-842f-0974695f3d1b';
delete from public.recipe_nutrition where recipe_version_id = '79e496d3-8709-4c5e-842f-0974695f3d1b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('79e496d3-8709-4c5e-842f-0974695f3d1b', 'protein', 10.6, 'as-fed'),
  ('79e496d3-8709-4c5e-842f-0974695f3d1b', 'fat', 12.6, 'as-fed'),
  ('79e496d3-8709-4c5e-842f-0974695f3d1b', 'fiber', 1.9, 'as-fed'),
  ('79e496d3-8709-4c5e-842f-0974695f3d1b', 'ash', 2.6, 'as-fed'),
  ('79e496d3-8709-4c5e-842f-0974695f3d1b', 'moisture', 57, 'as-fed'),
  ('79e496d3-8709-4c5e-842f-0974695f3d1b', 'kcal', 193, 'as-fed'),
  ('79e496d3-8709-4c5e-842f-0974695f3d1b', 'calcium', 1.5, 'as-fed'),
  ('79e496d3-8709-4c5e-842f-0974695f3d1b', 'phosphorus', 0.8, 'as-fed');

-- Kivo — Gestoomde Kip & Zalm (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.kivopetfood.nl/p/gestoomde-kip-zalm/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal stond op de bron al per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = '066905eb-4b5c-4b43-bf23-0333a5909851';
delete from public.recipe_nutrition where recipe_version_id = '066905eb-4b5c-4b43-bf23-0333a5909851';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('066905eb-4b5c-4b43-bf23-0333a5909851', 'protein', 11, 'as-fed'),
  ('066905eb-4b5c-4b43-bf23-0333a5909851', 'fat', 14.2, 'as-fed'),
  ('066905eb-4b5c-4b43-bf23-0333a5909851', 'fiber', 2, 'as-fed'),
  ('066905eb-4b5c-4b43-bf23-0333a5909851', 'ash', 2.5, 'as-fed'),
  ('066905eb-4b5c-4b43-bf23-0333a5909851', 'moisture', 57.7, 'as-fed'),
  ('066905eb-4b5c-4b43-bf23-0333a5909851', 'kcal', 198, 'as-fed'),
  ('066905eb-4b5c-4b43-bf23-0333a5909851', 'calcium', 1.3, 'as-fed'),
  ('066905eb-4b5c-4b43-bf23-0333a5909851', 'phosphorus', 0.7, 'as-fed');

-- Kivo — Gestoomde lam (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.kivopetfood.nl/p/gestoomde-lam/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal stond op de bron al per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = 'ba94d499-f44c-4a56-bf57-0016e0b6f82d';
delete from public.recipe_nutrition where recipe_version_id = 'ba94d499-f44c-4a56-bf57-0016e0b6f82d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ba94d499-f44c-4a56-bf57-0016e0b6f82d', 'protein', 13.4, 'as-fed'),
  ('ba94d499-f44c-4a56-bf57-0016e0b6f82d', 'fat', 8.5, 'as-fed'),
  ('ba94d499-f44c-4a56-bf57-0016e0b6f82d', 'fiber', 1.7, 'as-fed'),
  ('ba94d499-f44c-4a56-bf57-0016e0b6f82d', 'ash', 1.8, 'as-fed'),
  ('ba94d499-f44c-4a56-bf57-0016e0b6f82d', 'moisture', 63.8, 'as-fed'),
  ('ba94d499-f44c-4a56-bf57-0016e0b6f82d', 'kcal', 156, 'as-fed'),
  ('ba94d499-f44c-4a56-bf57-0016e0b6f82d', 'calcium', 1, 'as-fed'),
  ('ba94d499-f44c-4a56-bf57-0016e0b6f82d', 'phosphorus', 0.5, 'as-fed');

-- Kivo — Gestoomde rund (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.kivopetfood.nl/p/gestoomde-rund/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal stond op de bron al per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = '2b26a5c8-71e6-41e3-9651-03ea8a6a444b';
delete from public.recipe_nutrition where recipe_version_id = '2b26a5c8-71e6-41e3-9651-03ea8a6a444b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2b26a5c8-71e6-41e3-9651-03ea8a6a444b', 'protein', 16, 'as-fed'),
  ('2b26a5c8-71e6-41e3-9651-03ea8a6a444b', 'fat', 6.7, 'as-fed'),
  ('2b26a5c8-71e6-41e3-9651-03ea8a6a444b', 'fiber', 1.7, 'as-fed'),
  ('2b26a5c8-71e6-41e3-9651-03ea8a6a444b', 'ash', 1.6, 'as-fed'),
  ('2b26a5c8-71e6-41e3-9651-03ea8a6a444b', 'moisture', 62.7, 'as-fed'),
  ('2b26a5c8-71e6-41e3-9651-03ea8a6a444b', 'kcal', 154, 'as-fed'),
  ('2b26a5c8-71e6-41e3-9651-03ea8a6a444b', 'calcium', 1, 'as-fed'),
  ('2b26a5c8-71e6-41e3-9651-03ea8a6a444b', 'phosphorus', 0.5, 'as-fed');

-- Kivo — Gestoomde Rund & Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.kivopetfood.nl/p/gestoomde-rund-kip/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal stond op de bron al per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = '5705cfc0-5b92-4406-9a52-fb7593ef9fc2';
delete from public.recipe_nutrition where recipe_version_id = '5705cfc0-5b92-4406-9a52-fb7593ef9fc2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5705cfc0-5b92-4406-9a52-fb7593ef9fc2', 'protein', 11.9, 'as-fed'),
  ('5705cfc0-5b92-4406-9a52-fb7593ef9fc2', 'fat', 11.1, 'as-fed'),
  ('5705cfc0-5b92-4406-9a52-fb7593ef9fc2', 'fiber', 1.4, 'as-fed'),
  ('5705cfc0-5b92-4406-9a52-fb7593ef9fc2', 'ash', 1.9, 'as-fed'),
  ('5705cfc0-5b92-4406-9a52-fb7593ef9fc2', 'moisture', 59.6, 'as-fed'),
  ('5705cfc0-5b92-4406-9a52-fb7593ef9fc2', 'kcal', 185, 'as-fed'),
  ('5705cfc0-5b92-4406-9a52-fb7593ef9fc2', 'calcium', 1.1, 'as-fed'),
  ('5705cfc0-5b92-4406-9a52-fb7593ef9fc2', 'phosphorus', 0.6, 'as-fed');

-- Kivo — Hert & Geit Compleet (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.kivopetfood.nl/p/hert-geit-compleet/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal stond op de bron al per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = '19385097-6894-4066-b712-51c0d980e4e3';
delete from public.recipe_nutrition where recipe_version_id = '19385097-6894-4066-b712-51c0d980e4e3';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('19385097-6894-4066-b712-51c0d980e4e3', 'protein', 18, 'as-fed'),
  ('19385097-6894-4066-b712-51c0d980e4e3', 'fat', 10.5, 'as-fed'),
  ('19385097-6894-4066-b712-51c0d980e4e3', 'fiber', 3.5, 'as-fed'),
  ('19385097-6894-4066-b712-51c0d980e4e3', 'ash', 3, 'as-fed'),
  ('19385097-6894-4066-b712-51c0d980e4e3', 'moisture', 68, 'as-fed'),
  ('19385097-6894-4066-b712-51c0d980e4e3', 'kcal', 167, 'as-fed'),
  ('19385097-6894-4066-b712-51c0d980e4e3', 'calcium', 0.7, 'as-fed'),
  ('19385097-6894-4066-b712-51c0d980e4e3', 'phosphorus', 0.5, 'as-fed');

-- Kivo — Kalkoen & Rijst - Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.kivopetfood.nl/p/kalkoen-rijst-puppy-glutenvrij/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 3690 kcal/kg naar 369 kcal/100 g (delen door 10). Vocht wordt niet vermeld. Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = 'f7250c89-302e-4625-a8db-fc1da016e71b';
delete from public.recipe_nutrition where recipe_version_id = 'f7250c89-302e-4625-a8db-fc1da016e71b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f7250c89-302e-4625-a8db-fc1da016e71b', 'protein', 27, 'as-fed'),
  ('f7250c89-302e-4625-a8db-fc1da016e71b', 'fat', 15, 'as-fed'),
  ('f7250c89-302e-4625-a8db-fc1da016e71b', 'fiber', 2.5, 'as-fed'),
  ('f7250c89-302e-4625-a8db-fc1da016e71b', 'ash', 6.7, 'as-fed'),
  ('f7250c89-302e-4625-a8db-fc1da016e71b', 'kcal', 369, 'as-fed'),
  ('f7250c89-302e-4625-a8db-fc1da016e71b', 'calcium', 1.4, 'as-fed'),
  ('f7250c89-302e-4625-a8db-fc1da016e71b', 'phosphorus', 0.85, 'as-fed');

-- Kivo — Kalkoen compleet (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.kivopetfood.nl/p/kalkoen-compleet/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal stond op de bron al per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = '8ab86970-99f1-4365-aa94-bb8caaa5c33e';
delete from public.recipe_nutrition where recipe_version_id = '8ab86970-99f1-4365-aa94-bb8caaa5c33e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8ab86970-99f1-4365-aa94-bb8caaa5c33e', 'protein', 11.7, 'as-fed'),
  ('8ab86970-99f1-4365-aa94-bb8caaa5c33e', 'fat', 13.1, 'as-fed'),
  ('8ab86970-99f1-4365-aa94-bb8caaa5c33e', 'fiber', 0.7, 'as-fed'),
  ('8ab86970-99f1-4365-aa94-bb8caaa5c33e', 'ash', 4.7, 'as-fed'),
  ('8ab86970-99f1-4365-aa94-bb8caaa5c33e', 'moisture', 69.5, 'as-fed'),
  ('8ab86970-99f1-4365-aa94-bb8caaa5c33e', 'kcal', 165, 'as-fed'),
  ('8ab86970-99f1-4365-aa94-bb8caaa5c33e', 'calcium', 1.5, 'as-fed'),
  ('8ab86970-99f1-4365-aa94-bb8caaa5c33e', 'phosphorus', 0.8, 'as-fed');

-- Kivo — Kip & Pens - Moeilijke eter (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.kivopetfood.nl/p/kip-pens-glutenvrij/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 3500 kcal/kg naar 350 kcal/100 g (delen door 10). Vocht wordt niet vermeld. Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = 'b4f057ab-0716-422d-8173-3febd5e1102a';
delete from public.recipe_nutrition where recipe_version_id = 'b4f057ab-0716-422d-8173-3febd5e1102a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b4f057ab-0716-422d-8173-3febd5e1102a', 'protein', 24, 'as-fed'),
  ('b4f057ab-0716-422d-8173-3febd5e1102a', 'fat', 14, 'as-fed'),
  ('b4f057ab-0716-422d-8173-3febd5e1102a', 'fiber', 3.4, 'as-fed'),
  ('b4f057ab-0716-422d-8173-3febd5e1102a', 'ash', 7.8, 'as-fed'),
  ('b4f057ab-0716-422d-8173-3febd5e1102a', 'kcal', 350, 'as-fed'),
  ('b4f057ab-0716-422d-8173-3febd5e1102a', 'calcium', 1.2, 'as-fed'),
  ('b4f057ab-0716-422d-8173-3febd5e1102a', 'phosphorus', 0.83, 'as-fed');

-- Kivo — Kip & Rijst - Allround Fit (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.kivopetfood.nl/p/kip-rijst-glutenvrij/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 3520 kcal/kg naar 352 kcal/100 g (delen door 10). Vocht wordt niet vermeld. Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = '25cff015-9ed2-49a1-80e4-5591a3c57ae4';
delete from public.recipe_nutrition where recipe_version_id = '25cff015-9ed2-49a1-80e4-5591a3c57ae4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('25cff015-9ed2-49a1-80e4-5591a3c57ae4', 'protein', 24, 'as-fed'),
  ('25cff015-9ed2-49a1-80e4-5591a3c57ae4', 'fat', 13, 'as-fed'),
  ('25cff015-9ed2-49a1-80e4-5591a3c57ae4', 'fiber', 3.2, 'as-fed'),
  ('25cff015-9ed2-49a1-80e4-5591a3c57ae4', 'ash', 7.2, 'as-fed'),
  ('25cff015-9ed2-49a1-80e4-5591a3c57ae4', 'kcal', 352, 'as-fed'),
  ('25cff015-9ed2-49a1-80e4-5591a3c57ae4', 'calcium', 1.2, 'as-fed'),
  ('25cff015-9ed2-49a1-80e4-5591a3c57ae4', 'phosphorus', 0.9, 'as-fed');

-- Kivo — Kip & Rund - Junior/Energy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.kivopetfood.nl/p/juniorenergy/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 3630 kcal/kg naar 363 kcal/100 g (delen door 10). Vocht wordt niet vermeld. Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = '35db48e5-2803-474c-87db-223708b2247b';
delete from public.recipe_nutrition where recipe_version_id = '35db48e5-2803-474c-87db-223708b2247b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('35db48e5-2803-474c-87db-223708b2247b', 'protein', 26, 'as-fed'),
  ('35db48e5-2803-474c-87db-223708b2247b', 'fat', 16, 'as-fed'),
  ('35db48e5-2803-474c-87db-223708b2247b', 'fiber', 3.1, 'as-fed'),
  ('35db48e5-2803-474c-87db-223708b2247b', 'ash', 7.3, 'as-fed'),
  ('35db48e5-2803-474c-87db-223708b2247b', 'kcal', 363, 'as-fed'),
  ('35db48e5-2803-474c-87db-223708b2247b', 'calcium', 1.2, 'as-fed'),
  ('35db48e5-2803-474c-87db-223708b2247b', 'phosphorus', 0.85, 'as-fed');

-- Kivo — Kip & Vis compleet (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.kivopetfood.nl/p/kip-vis-compleet/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal stond op de bron al per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = 'fd17a1d4-d47f-431f-9174-953a3e68db87';
delete from public.recipe_nutrition where recipe_version_id = 'fd17a1d4-d47f-431f-9174-953a3e68db87';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fd17a1d4-d47f-431f-9174-953a3e68db87', 'protein', 15.5, 'as-fed'),
  ('fd17a1d4-d47f-431f-9174-953a3e68db87', 'fat', 17.2, 'as-fed'),
  ('fd17a1d4-d47f-431f-9174-953a3e68db87', 'fiber', 0.6, 'as-fed'),
  ('fd17a1d4-d47f-431f-9174-953a3e68db87', 'ash', 3, 'as-fed'),
  ('fd17a1d4-d47f-431f-9174-953a3e68db87', 'moisture', 64.3, 'as-fed'),
  ('fd17a1d4-d47f-431f-9174-953a3e68db87', 'kcal', 217, 'as-fed'),
  ('fd17a1d4-d47f-431f-9174-953a3e68db87', 'calcium', 0.8, 'as-fed'),
  ('fd17a1d4-d47f-431f-9174-953a3e68db87', 'phosphorus', 0.5, 'as-fed');

-- Kivo — Kip compleet (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.kivopetfood.nl/p/kip-compleet/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal stond op de bron al per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = 'e6a6d702-415c-4a39-b4b2-c3676bf501c1';
delete from public.recipe_nutrition where recipe_version_id = 'e6a6d702-415c-4a39-b4b2-c3676bf501c1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e6a6d702-415c-4a39-b4b2-c3676bf501c1', 'protein', 14.9, 'as-fed'),
  ('e6a6d702-415c-4a39-b4b2-c3676bf501c1', 'fat', 15.6, 'as-fed'),
  ('e6a6d702-415c-4a39-b4b2-c3676bf501c1', 'fiber', 0.4, 'as-fed'),
  ('e6a6d702-415c-4a39-b4b2-c3676bf501c1', 'ash', 2.4, 'as-fed'),
  ('e6a6d702-415c-4a39-b4b2-c3676bf501c1', 'moisture', 66.2, 'as-fed'),
  ('e6a6d702-415c-4a39-b4b2-c3676bf501c1', 'kcal', 200, 'as-fed'),
  ('e6a6d702-415c-4a39-b4b2-c3676bf501c1', 'calcium', 0.6, 'as-fed'),
  ('e6a6d702-415c-4a39-b4b2-c3676bf501c1', 'phosphorus', 0.4, 'as-fed');

-- Kivo — Lam & Rijst - Senior/Light (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.kivopetfood.nl/p/lam-rijst-glutenvrij/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 3300 kcal/kg naar 330 kcal/100 g (delen door 10). Vocht wordt niet vermeld. Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = 'bd63aeb0-d7a6-4761-9dac-17d7c4a3059c';
delete from public.recipe_nutrition where recipe_version_id = 'bd63aeb0-d7a6-4761-9dac-17d7c4a3059c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('bd63aeb0-d7a6-4761-9dac-17d7c4a3059c', 'protein', 20, 'as-fed'),
  ('bd63aeb0-d7a6-4761-9dac-17d7c4a3059c', 'fat', 10, 'as-fed'),
  ('bd63aeb0-d7a6-4761-9dac-17d7c4a3059c', 'fiber', 3.3, 'as-fed'),
  ('bd63aeb0-d7a6-4761-9dac-17d7c4a3059c', 'ash', 8.4, 'as-fed'),
  ('bd63aeb0-d7a6-4761-9dac-17d7c4a3059c', 'kcal', 330, 'as-fed'),
  ('bd63aeb0-d7a6-4761-9dac-17d7c4a3059c', 'calcium', 1.7, 'as-fed'),
  ('bd63aeb0-d7a6-4761-9dac-17d7c4a3059c', 'phosphorus', 1.1, 'as-fed');

-- Kivo — Lam compleet (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.kivopetfood.nl/p/lam-compleet/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal stond op de bron al per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = '94cf3796-7fef-4a09-81cb-e0fad648dc4b';
delete from public.recipe_nutrition where recipe_version_id = '94cf3796-7fef-4a09-81cb-e0fad648dc4b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('94cf3796-7fef-4a09-81cb-e0fad648dc4b', 'protein', 13.2, 'as-fed'),
  ('94cf3796-7fef-4a09-81cb-e0fad648dc4b', 'fat', 23.7, 'as-fed'),
  ('94cf3796-7fef-4a09-81cb-e0fad648dc4b', 'fiber', 2.2, 'as-fed'),
  ('94cf3796-7fef-4a09-81cb-e0fad648dc4b', 'ash', 2, 'as-fed'),
  ('94cf3796-7fef-4a09-81cb-e0fad648dc4b', 'moisture', 60.6, 'as-fed'),
  ('94cf3796-7fef-4a09-81cb-e0fad648dc4b', 'kcal', 266, 'as-fed'),
  ('94cf3796-7fef-4a09-81cb-e0fad648dc4b', 'calcium', 0.4, 'as-fed'),
  ('94cf3796-7fef-4a09-81cb-e0fad648dc4b', 'phosphorus', 0.3, 'as-fed');

-- Kivo — MINI ADULT - Kalkoen & Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.kivopetfood.nl/p/mini-adult-kalkoen-rijst/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 3690 kcal/kg naar 369 kcal/100 g (delen door 10). Vocht wordt niet vermeld. Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = 'a3bcef7f-32be-4eaa-989a-5172de128698';
delete from public.recipe_nutrition where recipe_version_id = 'a3bcef7f-32be-4eaa-989a-5172de128698';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a3bcef7f-32be-4eaa-989a-5172de128698', 'protein', 27, 'as-fed'),
  ('a3bcef7f-32be-4eaa-989a-5172de128698', 'fat', 15, 'as-fed'),
  ('a3bcef7f-32be-4eaa-989a-5172de128698', 'fiber', 2.5, 'as-fed'),
  ('a3bcef7f-32be-4eaa-989a-5172de128698', 'ash', 6.7, 'as-fed'),
  ('a3bcef7f-32be-4eaa-989a-5172de128698', 'kcal', 369, 'as-fed'),
  ('a3bcef7f-32be-4eaa-989a-5172de128698', 'calcium', 1.4, 'as-fed'),
  ('a3bcef7f-32be-4eaa-989a-5172de128698', 'phosphorus', 0.85, 'as-fed');

-- Kivo — Paard & Konijn compleet (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.kivopetfood.nl/p/paard-konijn-compleet/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal stond op de bron al per 100 g; geen omrekening nodig. Ruwe celstof wordt als <0,1% vermeld; er is geen exacte waarde, daarom null. Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = '7d09413e-123a-4a3b-90b6-802125bcfcc5';
delete from public.recipe_nutrition where recipe_version_id = '7d09413e-123a-4a3b-90b6-802125bcfcc5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7d09413e-123a-4a3b-90b6-802125bcfcc5', 'protein', 20.4, 'as-fed'),
  ('7d09413e-123a-4a3b-90b6-802125bcfcc5', 'fat', 4.7, 'as-fed'),
  ('7d09413e-123a-4a3b-90b6-802125bcfcc5', 'ash', 4.2, 'as-fed'),
  ('7d09413e-123a-4a3b-90b6-802125bcfcc5', 'moisture', 71, 'as-fed'),
  ('7d09413e-123a-4a3b-90b6-802125bcfcc5', 'kcal', 124, 'as-fed'),
  ('7d09413e-123a-4a3b-90b6-802125bcfcc5', 'calcium', 0.3, 'as-fed'),
  ('7d09413e-123a-4a3b-90b6-802125bcfcc5', 'phosphorus', 0.15, 'as-fed');

-- Kivo — Rund & Eend compleet (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.kivopetfood.nl/p/rund-eend-compleet/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal stond op de bron al per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = 'c2402f1f-59c3-41da-bea4-38e4de083449';
delete from public.recipe_nutrition where recipe_version_id = 'c2402f1f-59c3-41da-bea4-38e4de083449';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c2402f1f-59c3-41da-bea4-38e4de083449', 'protein', 14.2, 'as-fed'),
  ('c2402f1f-59c3-41da-bea4-38e4de083449', 'fat', 14.7, 'as-fed'),
  ('c2402f1f-59c3-41da-bea4-38e4de083449', 'fiber', 1.1, 'as-fed'),
  ('c2402f1f-59c3-41da-bea4-38e4de083449', 'ash', 1.9, 'as-fed'),
  ('c2402f1f-59c3-41da-bea4-38e4de083449', 'moisture', 68, 'as-fed'),
  ('c2402f1f-59c3-41da-bea4-38e4de083449', 'kcal', 189, 'as-fed'),
  ('c2402f1f-59c3-41da-bea4-38e4de083449', 'calcium', 0.4, 'as-fed'),
  ('c2402f1f-59c3-41da-bea4-38e4de083449', 'phosphorus', 0.3, 'as-fed');

-- Kivo — Rund & Eend puppy (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.kivopetfood.nl/p/rund-eend-puppy/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal stond op de bron al per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = 'd664f188-afee-4d1d-ba75-75e6132dbd18';
delete from public.recipe_nutrition where recipe_version_id = 'd664f188-afee-4d1d-ba75-75e6132dbd18';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d664f188-afee-4d1d-ba75-75e6132dbd18', 'protein', 14.2, 'as-fed'),
  ('d664f188-afee-4d1d-ba75-75e6132dbd18', 'fat', 14.7, 'as-fed'),
  ('d664f188-afee-4d1d-ba75-75e6132dbd18', 'fiber', 1.1, 'as-fed'),
  ('d664f188-afee-4d1d-ba75-75e6132dbd18', 'ash', 1.9, 'as-fed'),
  ('d664f188-afee-4d1d-ba75-75e6132dbd18', 'moisture', 68, 'as-fed'),
  ('d664f188-afee-4d1d-ba75-75e6132dbd18', 'kcal', 189, 'as-fed'),
  ('d664f188-afee-4d1d-ba75-75e6132dbd18', 'calcium', 0.4, 'as-fed'),
  ('d664f188-afee-4d1d-ba75-75e6132dbd18', 'phosphorus', 0.3, 'as-fed');

-- Kivo — Rund & Kip compleet (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.kivopetfood.nl/p/rund-kip-compleet/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal stond op de bron al per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = 'e3ce9a3d-14e5-4009-bf17-53466b1b3270';
delete from public.recipe_nutrition where recipe_version_id = 'e3ce9a3d-14e5-4009-bf17-53466b1b3270';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e3ce9a3d-14e5-4009-bf17-53466b1b3270', 'protein', 16.2, 'as-fed'),
  ('e3ce9a3d-14e5-4009-bf17-53466b1b3270', 'fat', 12.9, 'as-fed'),
  ('e3ce9a3d-14e5-4009-bf17-53466b1b3270', 'fiber', 1.1, 'as-fed'),
  ('e3ce9a3d-14e5-4009-bf17-53466b1b3270', 'ash', 2.1, 'as-fed'),
  ('e3ce9a3d-14e5-4009-bf17-53466b1b3270', 'moisture', 68.3, 'as-fed'),
  ('e3ce9a3d-14e5-4009-bf17-53466b1b3270', 'kcal', 181, 'as-fed'),
  ('e3ce9a3d-14e5-4009-bf17-53466b1b3270', 'calcium', 0.6, 'as-fed'),
  ('e3ce9a3d-14e5-4009-bf17-53466b1b3270', 'phosphorus', 0.5, 'as-fed');

-- Kivo — Rund & Kip Compleet Portie (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.kivopetfood.nl/p/rund-kip-compleet-portie/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal stond op de bron al per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = '83ea75d3-307c-4636-9c0a-99cced1e88ef';
delete from public.recipe_nutrition where recipe_version_id = '83ea75d3-307c-4636-9c0a-99cced1e88ef';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('83ea75d3-307c-4636-9c0a-99cced1e88ef', 'protein', 15.2, 'as-fed'),
  ('83ea75d3-307c-4636-9c0a-99cced1e88ef', 'fat', 15.8, 'as-fed'),
  ('83ea75d3-307c-4636-9c0a-99cced1e88ef', 'fiber', 2.6, 'as-fed'),
  ('83ea75d3-307c-4636-9c0a-99cced1e88ef', 'ash', 2.1, 'as-fed'),
  ('83ea75d3-307c-4636-9c0a-99cced1e88ef', 'moisture', 67.5, 'as-fed'),
  ('83ea75d3-307c-4636-9c0a-99cced1e88ef', 'kcal', 203, 'as-fed'),
  ('83ea75d3-307c-4636-9c0a-99cced1e88ef', 'calcium', 0.4, 'as-fed'),
  ('83ea75d3-307c-4636-9c0a-99cced1e88ef', 'phosphorus', 0.3, 'as-fed');

-- Kivo — Rund & Kip puppy (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.kivopetfood.nl/p/rund-kip-puppy/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal stond op de bron al per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = 'cfaefeff-a8a8-4f72-8608-34a99be288e4';
delete from public.recipe_nutrition where recipe_version_id = 'cfaefeff-a8a8-4f72-8608-34a99be288e4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('cfaefeff-a8a8-4f72-8608-34a99be288e4', 'protein', 15.2, 'as-fed'),
  ('cfaefeff-a8a8-4f72-8608-34a99be288e4', 'fat', 15.8, 'as-fed'),
  ('cfaefeff-a8a8-4f72-8608-34a99be288e4', 'fiber', 2.6, 'as-fed'),
  ('cfaefeff-a8a8-4f72-8608-34a99be288e4', 'ash', 2.1, 'as-fed'),
  ('cfaefeff-a8a8-4f72-8608-34a99be288e4', 'moisture', 67.5, 'as-fed'),
  ('cfaefeff-a8a8-4f72-8608-34a99be288e4', 'kcal', 203, 'as-fed'),
  ('cfaefeff-a8a8-4f72-8608-34a99be288e4', 'calcium', 0.4, 'as-fed'),
  ('cfaefeff-a8a8-4f72-8608-34a99be288e4', 'phosphorus', 0.3, 'as-fed');

-- Kivo — Rund compleet (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.kivopetfood.nl/p/rund-compleet/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal stond op de bron al per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = '7245d023-7824-4d72-ae2c-8474752172c4';
delete from public.recipe_nutrition where recipe_version_id = '7245d023-7824-4d72-ae2c-8474752172c4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7245d023-7824-4d72-ae2c-8474752172c4', 'protein', 15.8, 'as-fed'),
  ('7245d023-7824-4d72-ae2c-8474752172c4', 'fat', 15.2, 'as-fed'),
  ('7245d023-7824-4d72-ae2c-8474752172c4', 'fiber', 2.9, 'as-fed'),
  ('7245d023-7824-4d72-ae2c-8474752172c4', 'ash', 1.3, 'as-fed'),
  ('7245d023-7824-4d72-ae2c-8474752172c4', 'moisture', 67.1, 'as-fed'),
  ('7245d023-7824-4d72-ae2c-8474752172c4', 'kcal', 200, 'as-fed'),
  ('7245d023-7824-4d72-ae2c-8474752172c4', 'calcium', 0.2, 'as-fed'),
  ('7245d023-7824-4d72-ae2c-8474752172c4', 'phosphorus', 0.2, 'as-fed');

-- Kivo — Verse eend graanvrij (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.kivopetfood.nl/p/verse-eend/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 3316 kcal/kg naar 331,6 kcal/100 g (delen door 10). Vocht wordt niet vermeld. Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = 'c779a47e-2834-452b-9e44-e59c215d60a1';
delete from public.recipe_nutrition where recipe_version_id = 'c779a47e-2834-452b-9e44-e59c215d60a1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c779a47e-2834-452b-9e44-e59c215d60a1', 'protein', 26, 'as-fed'),
  ('c779a47e-2834-452b-9e44-e59c215d60a1', 'fat', 12, 'as-fed'),
  ('c779a47e-2834-452b-9e44-e59c215d60a1', 'fiber', 4.9, 'as-fed'),
  ('c779a47e-2834-452b-9e44-e59c215d60a1', 'ash', 7, 'as-fed'),
  ('c779a47e-2834-452b-9e44-e59c215d60a1', 'kcal', 331.6, 'as-fed'),
  ('c779a47e-2834-452b-9e44-e59c215d60a1', 'calcium', 1.5, 'as-fed'),
  ('c779a47e-2834-452b-9e44-e59c215d60a1', 'phosphorus', 0.9, 'as-fed');

-- Kivo — Verse Kip glutenvrij (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.kivopetfood.nl/p/verse-kip-glutenvrij/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 3670 kcal/kg naar 367 kcal/100 g (delen door 10). Vocht wordt niet vermeld. Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = '84368015-f549-4ac3-bec3-11be0f3ca299';
delete from public.recipe_nutrition where recipe_version_id = '84368015-f549-4ac3-bec3-11be0f3ca299';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('84368015-f549-4ac3-bec3-11be0f3ca299', 'protein', 27, 'as-fed'),
  ('84368015-f549-4ac3-bec3-11be0f3ca299', 'fat', 14, 'as-fed'),
  ('84368015-f549-4ac3-bec3-11be0f3ca299', 'fiber', 2.8, 'as-fed'),
  ('84368015-f549-4ac3-bec3-11be0f3ca299', 'ash', 5.8, 'as-fed'),
  ('84368015-f549-4ac3-bec3-11be0f3ca299', 'kcal', 367, 'as-fed'),
  ('84368015-f549-4ac3-bec3-11be0f3ca299', 'calcium', 1.2, 'as-fed'),
  ('84368015-f549-4ac3-bec3-11be0f3ca299', 'phosphorus', 0.9, 'as-fed');

-- Kivo — Verse kip puppy glutenvrij (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.kivopetfood.nl/p/verse-kip-glutenvrij-2/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 3690 kcal/kg naar 369 kcal/100 g (delen door 10). Vocht wordt niet vermeld. Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = 'b1796837-0c9a-46e4-9fe6-47940efac910';
delete from public.recipe_nutrition where recipe_version_id = 'b1796837-0c9a-46e4-9fe6-47940efac910';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b1796837-0c9a-46e4-9fe6-47940efac910', 'protein', 28, 'as-fed'),
  ('b1796837-0c9a-46e4-9fe6-47940efac910', 'fat', 15, 'as-fed'),
  ('b1796837-0c9a-46e4-9fe6-47940efac910', 'fiber', 3.4, 'as-fed'),
  ('b1796837-0c9a-46e4-9fe6-47940efac910', 'ash', 6, 'as-fed'),
  ('b1796837-0c9a-46e4-9fe6-47940efac910', 'kcal', 369, 'as-fed'),
  ('b1796837-0c9a-46e4-9fe6-47940efac910', 'calcium', 1, 'as-fed'),
  ('b1796837-0c9a-46e4-9fe6-47940efac910', 'phosphorus', 0.8, 'as-fed');

-- Kivo — Verse lam graanvrij (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.kivopetfood.nl/p/verse-lam-graanvrij/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 3710 kcal/kg naar 371 kcal/100 g (delen door 10). Vocht wordt niet vermeld. Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = '0bc3370b-cd33-4a3e-879b-b5211b1bacea';
delete from public.recipe_nutrition where recipe_version_id = '0bc3370b-cd33-4a3e-879b-b5211b1bacea';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0bc3370b-cd33-4a3e-879b-b5211b1bacea', 'protein', 25, 'as-fed'),
  ('0bc3370b-cd33-4a3e-879b-b5211b1bacea', 'fat', 13, 'as-fed'),
  ('0bc3370b-cd33-4a3e-879b-b5211b1bacea', 'fiber', 3, 'as-fed'),
  ('0bc3370b-cd33-4a3e-879b-b5211b1bacea', 'ash', 6.6, 'as-fed'),
  ('0bc3370b-cd33-4a3e-879b-b5211b1bacea', 'kcal', 371, 'as-fed'),
  ('0bc3370b-cd33-4a3e-879b-b5211b1bacea', 'calcium', 1.3, 'as-fed'),
  ('0bc3370b-cd33-4a3e-879b-b5211b1bacea', 'phosphorus', 0.9, 'as-fed');

-- Kivo — Verse Zalm graanvrij (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.kivopetfood.nl/p/verse-zalm/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 3765 kcal/kg naar 376,5 kcal/100 g (delen door 10). Vocht wordt niet vermeld. Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = '8fa2b5db-915c-4db3-a1d7-396ecca0d912';
delete from public.recipe_nutrition where recipe_version_id = '8fa2b5db-915c-4db3-a1d7-396ecca0d912';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8fa2b5db-915c-4db3-a1d7-396ecca0d912', 'protein', 26, 'as-fed'),
  ('8fa2b5db-915c-4db3-a1d7-396ecca0d912', 'fat', 14, 'as-fed'),
  ('8fa2b5db-915c-4db3-a1d7-396ecca0d912', 'fiber', 2.5, 'as-fed'),
  ('8fa2b5db-915c-4db3-a1d7-396ecca0d912', 'ash', 5, 'as-fed'),
  ('8fa2b5db-915c-4db3-a1d7-396ecca0d912', 'kcal', 376.5, 'as-fed'),
  ('8fa2b5db-915c-4db3-a1d7-396ecca0d912', 'calcium', 0.9, 'as-fed'),
  ('8fa2b5db-915c-4db3-a1d7-396ecca0d912', 'phosphorus', 0.7, 'as-fed');

-- Carnilove — Active Droogvoer met Eend & Fazant (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://carnilove.com/en/products/active-dry-dog-food-made-with-duck-and-pheasant',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 3830 kcal/kg naar 383 kcal/100 g (delen door 10).'
 where id = 'fe6eb1d2-8b55-4908-b981-e1752892b571';
delete from public.recipe_nutrition where recipe_version_id = 'fe6eb1d2-8b55-4908-b981-e1752892b571';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fe6eb1d2-8b55-4908-b981-e1752892b571', 'protein', 34, 'as-fed'),
  ('fe6eb1d2-8b55-4908-b981-e1752892b571', 'fat', 17, 'as-fed'),
  ('fe6eb1d2-8b55-4908-b981-e1752892b571', 'fiber', 3, 'as-fed'),
  ('fe6eb1d2-8b55-4908-b981-e1752892b571', 'ash', 7.2, 'as-fed'),
  ('fe6eb1d2-8b55-4908-b981-e1752892b571', 'moisture', 10, 'as-fed'),
  ('fe6eb1d2-8b55-4908-b981-e1752892b571', 'kcal', 383, 'as-fed'),
  ('fe6eb1d2-8b55-4908-b981-e1752892b571', 'calcium', 1.6, 'as-fed'),
  ('fe6eb1d2-8b55-4908-b981-e1752892b571', 'phosphorus', 1.2, 'as-fed'),
  ('fe6eb1d2-8b55-4908-b981-e1752892b571', 'omega3', 0.2, 'as-fed'),
  ('fe6eb1d2-8b55-4908-b981-e1752892b571', 'omega6', 3.2, 'as-fed');

-- Carnilove — Active Droogvoer met Hert & Rendier (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://carnilove.com/en/products/active-dry-dog-food-made-with-venison-and-reindeer',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 4000 kcal/kg naar 400 kcal/100 g (delen door 10).'
 where id = 'f184d3d4-6752-470f-99fd-2f568b0b6d6b';
delete from public.recipe_nutrition where recipe_version_id = 'f184d3d4-6752-470f-99fd-2f568b0b6d6b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f184d3d4-6752-470f-99fd-2f568b0b6d6b', 'protein', 34, 'as-fed'),
  ('f184d3d4-6752-470f-99fd-2f568b0b6d6b', 'fat', 20, 'as-fed'),
  ('f184d3d4-6752-470f-99fd-2f568b0b6d6b', 'fiber', 2.4, 'as-fed'),
  ('f184d3d4-6752-470f-99fd-2f568b0b6d6b', 'ash', 7.6, 'as-fed'),
  ('f184d3d4-6752-470f-99fd-2f568b0b6d6b', 'moisture', 10, 'as-fed'),
  ('f184d3d4-6752-470f-99fd-2f568b0b6d6b', 'kcal', 400, 'as-fed'),
  ('f184d3d4-6752-470f-99fd-2f568b0b6d6b', 'calcium', 1.4, 'as-fed'),
  ('f184d3d4-6752-470f-99fd-2f568b0b6d6b', 'phosphorus', 1.1, 'as-fed'),
  ('f184d3d4-6752-470f-99fd-2f568b0b6d6b', 'omega3', 0.2, 'as-fed'),
  ('f184d3d4-6752-470f-99fd-2f568b0b6d6b', 'omega6', 3.8, 'as-fed');

-- Carnilove — Active Droogvoer met Lam & Wild Zwijn (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://carnilove.com/en/products/active-dry-dog-food-made-with-lamb-and-wild-boar',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 3790 kcal/kg naar 379 kcal/100 g (delen door 10).'
 where id = 'c902e3f3-e998-4d3d-b5f3-c06b0b376911';
delete from public.recipe_nutrition where recipe_version_id = 'c902e3f3-e998-4d3d-b5f3-c06b0b376911';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c902e3f3-e998-4d3d-b5f3-c06b0b376911', 'protein', 35, 'as-fed'),
  ('c902e3f3-e998-4d3d-b5f3-c06b0b376911', 'fat', 18, 'as-fed'),
  ('c902e3f3-e998-4d3d-b5f3-c06b0b376911', 'fiber', 3.6, 'as-fed'),
  ('c902e3f3-e998-4d3d-b5f3-c06b0b376911', 'ash', 8.4, 'as-fed'),
  ('c902e3f3-e998-4d3d-b5f3-c06b0b376911', 'moisture', 10, 'as-fed'),
  ('c902e3f3-e998-4d3d-b5f3-c06b0b376911', 'kcal', 379, 'as-fed'),
  ('c902e3f3-e998-4d3d-b5f3-c06b0b376911', 'calcium', 1.4, 'as-fed'),
  ('c902e3f3-e998-4d3d-b5f3-c06b0b376911', 'phosphorus', 1.2, 'as-fed'),
  ('c902e3f3-e998-4d3d-b5f3-c06b0b376911', 'omega3', 0.2, 'as-fed'),
  ('c902e3f3-e998-4d3d-b5f3-c06b0b376911', 'omega6', 3.4, 'as-fed');

-- Carnilove — Active Droogvoer met Zalm & Kalkoen voor Grote Honden (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://carnilove.com/en/products/active-dry-food-made-with-salmon-and-turkey-for-large-dogs',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 3704 kcal/kg naar 370,4 kcal/100 g (delen door 10).'
 where id = '799f46e5-7624-4991-8a05-4ab234583255';
delete from public.recipe_nutrition where recipe_version_id = '799f46e5-7624-4991-8a05-4ab234583255';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('799f46e5-7624-4991-8a05-4ab234583255', 'protein', 35, 'as-fed'),
  ('799f46e5-7624-4991-8a05-4ab234583255', 'fat', 15, 'as-fed'),
  ('799f46e5-7624-4991-8a05-4ab234583255', 'fiber', 3.5, 'as-fed'),
  ('799f46e5-7624-4991-8a05-4ab234583255', 'ash', 7.2, 'as-fed'),
  ('799f46e5-7624-4991-8a05-4ab234583255', 'moisture', 10, 'as-fed'),
  ('799f46e5-7624-4991-8a05-4ab234583255', 'kcal', 370.4, 'as-fed'),
  ('799f46e5-7624-4991-8a05-4ab234583255', 'calcium', 1.5, 'as-fed'),
  ('799f46e5-7624-4991-8a05-4ab234583255', 'phosphorus', 1.1, 'as-fed'),
  ('799f46e5-7624-4991-8a05-4ab234583255', 'omega3', 0.5, 'as-fed'),
  ('799f46e5-7624-4991-8a05-4ab234583255', 'omega6', 2.6, 'as-fed');

-- Carnilove — Active Droogvoer met Zalm & Kalkoen voor Junior Grote Honden (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://carnilove.com/en/products/active-dry-food-made-with-salmon-and-turkey-for-junior-dogs',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 3641 kcal/kg naar 364,1 kcal/100 g (delen door 10).'
 where id = '136d9dad-98ca-4fa8-aac3-5cfeda249f24';
delete from public.recipe_nutrition where recipe_version_id = '136d9dad-98ca-4fa8-aac3-5cfeda249f24';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('136d9dad-98ca-4fa8-aac3-5cfeda249f24', 'protein', 34, 'as-fed'),
  ('136d9dad-98ca-4fa8-aac3-5cfeda249f24', 'fat', 14, 'as-fed'),
  ('136d9dad-98ca-4fa8-aac3-5cfeda249f24', 'fiber', 3.6, 'as-fed'),
  ('136d9dad-98ca-4fa8-aac3-5cfeda249f24', 'ash', 7.4, 'as-fed'),
  ('136d9dad-98ca-4fa8-aac3-5cfeda249f24', 'moisture', 10, 'as-fed'),
  ('136d9dad-98ca-4fa8-aac3-5cfeda249f24', 'kcal', 364.1, 'as-fed'),
  ('136d9dad-98ca-4fa8-aac3-5cfeda249f24', 'calcium', 1.5, 'as-fed'),
  ('136d9dad-98ca-4fa8-aac3-5cfeda249f24', 'phosphorus', 1.1, 'as-fed'),
  ('136d9dad-98ca-4fa8-aac3-5cfeda249f24', 'omega3', 0.5, 'as-fed'),
  ('136d9dad-98ca-4fa8-aac3-5cfeda249f24', 'omega6', 2.4, 'as-fed');

-- Carnilove — Active Droogvoer met Zalm & Kalkoen voor Kleine Honden (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://carnilove.com/en/products/active-dry-food-made-with-salmon-and-turkey-for-small-dogs',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 3910 kcal/kg naar 391 kcal/100 g (delen door 10).'
 where id = '2c4c57d2-39d9-40bf-a41c-ed9cc1a7c3d6';
delete from public.recipe_nutrition where recipe_version_id = '2c4c57d2-39d9-40bf-a41c-ed9cc1a7c3d6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2c4c57d2-39d9-40bf-a41c-ed9cc1a7c3d6', 'protein', 35, 'as-fed'),
  ('2c4c57d2-39d9-40bf-a41c-ed9cc1a7c3d6', 'fat', 18, 'as-fed'),
  ('2c4c57d2-39d9-40bf-a41c-ed9cc1a7c3d6', 'fiber', 2.6, 'as-fed'),
  ('2c4c57d2-39d9-40bf-a41c-ed9cc1a7c3d6', 'ash', 7.2, 'as-fed'),
  ('2c4c57d2-39d9-40bf-a41c-ed9cc1a7c3d6', 'moisture', 10, 'as-fed'),
  ('2c4c57d2-39d9-40bf-a41c-ed9cc1a7c3d6', 'kcal', 391, 'as-fed'),
  ('2c4c57d2-39d9-40bf-a41c-ed9cc1a7c3d6', 'calcium', 1.5, 'as-fed'),
  ('2c4c57d2-39d9-40bf-a41c-ed9cc1a7c3d6', 'phosphorus', 1.1, 'as-fed'),
  ('2c4c57d2-39d9-40bf-a41c-ed9cc1a7c3d6', 'omega3', 0.5, 'as-fed'),
  ('2c4c57d2-39d9-40bf-a41c-ed9cc1a7c3d6', 'omega6', 3.4, 'as-fed');

-- Carnilove — Active Droogvoer met Zalm & Kalkoen voor Puppy's (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://carnilove.com/en/products/active-dry-food-made-with-salmon-and-turkey-for-puppies',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 3964 kcal/kg naar 396,4 kcal/100 g (delen door 10).'
 where id = '31af8746-2df8-4eb4-83f2-b82d9ddeac46';
delete from public.recipe_nutrition where recipe_version_id = '31af8746-2df8-4eb4-83f2-b82d9ddeac46';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('31af8746-2df8-4eb4-83f2-b82d9ddeac46', 'protein', 36, 'as-fed'),
  ('31af8746-2df8-4eb4-83f2-b82d9ddeac46', 'fat', 19, 'as-fed'),
  ('31af8746-2df8-4eb4-83f2-b82d9ddeac46', 'fiber', 2.5, 'as-fed'),
  ('31af8746-2df8-4eb4-83f2-b82d9ddeac46', 'ash', 7.3, 'as-fed'),
  ('31af8746-2df8-4eb4-83f2-b82d9ddeac46', 'moisture', 10, 'as-fed'),
  ('31af8746-2df8-4eb4-83f2-b82d9ddeac46', 'kcal', 396.4, 'as-fed'),
  ('31af8746-2df8-4eb4-83f2-b82d9ddeac46', 'calcium', 1.5, 'as-fed'),
  ('31af8746-2df8-4eb4-83f2-b82d9ddeac46', 'phosphorus', 1.1, 'as-fed'),
  ('31af8746-2df8-4eb4-83f2-b82d9ddeac46', 'omega3', 0.6, 'as-fed'),
  ('31af8746-2df8-4eb4-83f2-b82d9ddeac46', 'omega6', 3.4, 'as-fed');

-- Carnilove — Active Droogvoer met Zalm & Kalkoen voor Volwassen Honden (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://carnilove.com/en/products/active-dry-food-made-with-salmon-and-turkey-for-adult-dogs',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 3792 kcal/kg naar 379,2 kcal/100 g (delen door 10).'
 where id = '8f5786fe-1407-43fe-9ece-132a0818fa5d';
delete from public.recipe_nutrition where recipe_version_id = '8f5786fe-1407-43fe-9ece-132a0818fa5d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8f5786fe-1407-43fe-9ece-132a0818fa5d', 'protein', 34, 'as-fed'),
  ('8f5786fe-1407-43fe-9ece-132a0818fa5d', 'fat', 16, 'as-fed'),
  ('8f5786fe-1407-43fe-9ece-132a0818fa5d', 'fiber', 2.9, 'as-fed'),
  ('8f5786fe-1407-43fe-9ece-132a0818fa5d', 'ash', 7.2, 'as-fed'),
  ('8f5786fe-1407-43fe-9ece-132a0818fa5d', 'moisture', 10, 'as-fed'),
  ('8f5786fe-1407-43fe-9ece-132a0818fa5d', 'kcal', 379.2, 'as-fed'),
  ('8f5786fe-1407-43fe-9ece-132a0818fa5d', 'calcium', 1.4, 'as-fed'),
  ('8f5786fe-1407-43fe-9ece-132a0818fa5d', 'phosphorus', 1.1, 'as-fed'),
  ('8f5786fe-1407-43fe-9ece-132a0818fa5d', 'omega3', 0.3, 'as-fed'),
  ('8f5786fe-1407-43fe-9ece-132a0818fa5d', 'omega6', 3, 'as-fed');

-- Carnilove — Active Droogvoer met Zalm voor Volwassen Honden (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://carnilove.com/en/products/active-dry-food-made-with-salmon-for-adult-dogs',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 3700 kcal/kg naar 370 kcal/100 g (delen door 10).'
 where id = '84ef01c1-f8c7-44e1-bf10-b7749715c7ca';
delete from public.recipe_nutrition where recipe_version_id = '84ef01c1-f8c7-44e1-bf10-b7749715c7ca';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('84ef01c1-f8c7-44e1-bf10-b7749715c7ca', 'protein', 34, 'as-fed'),
  ('84ef01c1-f8c7-44e1-bf10-b7749715c7ca', 'fat', 15, 'as-fed'),
  ('84ef01c1-f8c7-44e1-bf10-b7749715c7ca', 'fiber', 2.8, 'as-fed'),
  ('84ef01c1-f8c7-44e1-bf10-b7749715c7ca', 'ash', 8.7, 'as-fed'),
  ('84ef01c1-f8c7-44e1-bf10-b7749715c7ca', 'moisture', 10, 'as-fed'),
  ('84ef01c1-f8c7-44e1-bf10-b7749715c7ca', 'kcal', 370, 'as-fed'),
  ('84ef01c1-f8c7-44e1-bf10-b7749715c7ca', 'calcium', 1.5, 'as-fed'),
  ('84ef01c1-f8c7-44e1-bf10-b7749715c7ca', 'phosphorus', 1.2, 'as-fed'),
  ('84ef01c1-f8c7-44e1-bf10-b7749715c7ca', 'omega3', 1.1, 'as-fed'),
  ('84ef01c1-f8c7-44e1-bf10-b7749715c7ca', 'omega6', 1.9, 'as-fed');

-- Carnilove — Kalkoen & Buffel met Rozenblaadjes Paté Pouch voor Honden (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://carnilove.com/en/products/turkey-and-buffalo-with-rose-petals-dog-pouch-pate-300g',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1290 kcal/kg naar 129 kcal/100 g (delen door 10). Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = '5c892fe9-42e1-45a1-91b5-262f4fc3ef2d';
delete from public.recipe_nutrition where recipe_version_id = '5c892fe9-42e1-45a1-91b5-262f4fc3ef2d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5c892fe9-42e1-45a1-91b5-262f4fc3ef2d', 'protein', 10.6, 'as-fed'),
  ('5c892fe9-42e1-45a1-91b5-262f4fc3ef2d', 'fat', 10.15, 'as-fed'),
  ('5c892fe9-42e1-45a1-91b5-262f4fc3ef2d', 'fiber', 4.8, 'as-fed'),
  ('5c892fe9-42e1-45a1-91b5-262f4fc3ef2d', 'ash', 3, 'as-fed'),
  ('5c892fe9-42e1-45a1-91b5-262f4fc3ef2d', 'moisture', 73.2, 'as-fed'),
  ('5c892fe9-42e1-45a1-91b5-262f4fc3ef2d', 'kcal', 129, 'as-fed'),
  ('5c892fe9-42e1-45a1-91b5-262f4fc3ef2d', 'calcium', 0.45, 'as-fed'),
  ('5c892fe9-42e1-45a1-91b5-262f4fc3ef2d', 'phosphorus', 0.35, 'as-fed');

-- Carnilove — Kalkoen & Eend met Timoteegras Paté Pouch voor Honden (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://carnilove.com/en/products/turkey-and-duck-with-timothy-grass-dog-pouch-pate-300g',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1150 kcal/kg naar 115 kcal/100 g (delen door 10). Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = '27c8b339-8075-4be3-8a8b-26a336170dea';
delete from public.recipe_nutrition where recipe_version_id = '27c8b339-8075-4be3-8a8b-26a336170dea';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('27c8b339-8075-4be3-8a8b-26a336170dea', 'protein', 9.4, 'as-fed'),
  ('27c8b339-8075-4be3-8a8b-26a336170dea', 'fat', 9.65, 'as-fed'),
  ('27c8b339-8075-4be3-8a8b-26a336170dea', 'fiber', 3.5, 'as-fed'),
  ('27c8b339-8075-4be3-8a8b-26a336170dea', 'ash', 3.2, 'as-fed'),
  ('27c8b339-8075-4be3-8a8b-26a336170dea', 'moisture', 75.2, 'as-fed'),
  ('27c8b339-8075-4be3-8a8b-26a336170dea', 'kcal', 115, 'as-fed'),
  ('27c8b339-8075-4be3-8a8b-26a336170dea', 'calcium', 0.31, 'as-fed'),
  ('27c8b339-8075-4be3-8a8b-26a336170dea', 'phosphorus', 0.27, 'as-fed');

-- Carnilove — Kalkoen & Fazant met Frambozenblad Paté Pouch voor Honden (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://carnilove.com/en/products/turkey-and-pheasant-with-raspberry-leaves-dog-pouch-pate-300g',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1190 kcal/kg naar 119 kcal/100 g (delen door 10). Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = 'b3507bb4-9af8-44b2-8252-6938f0c827ca';
delete from public.recipe_nutrition where recipe_version_id = 'b3507bb4-9af8-44b2-8252-6938f0c827ca';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b3507bb4-9af8-44b2-8252-6938f0c827ca', 'protein', 9.2, 'as-fed'),
  ('b3507bb4-9af8-44b2-8252-6938f0c827ca', 'fat', 9.45, 'as-fed'),
  ('b3507bb4-9af8-44b2-8252-6938f0c827ca', 'fiber', 4.9, 'as-fed'),
  ('b3507bb4-9af8-44b2-8252-6938f0c827ca', 'ash', 2.9, 'as-fed'),
  ('b3507bb4-9af8-44b2-8252-6938f0c827ca', 'moisture', 75.5, 'as-fed'),
  ('b3507bb4-9af8-44b2-8252-6938f0c827ca', 'kcal', 119, 'as-fed'),
  ('b3507bb4-9af8-44b2-8252-6938f0c827ca', 'calcium', 0.68, 'as-fed'),
  ('b3507bb4-9af8-44b2-8252-6938f0c827ca', 'phosphorus', 0.45, 'as-fed');

-- Carnilove — Kalkoen & Hert met Aardbeiblad Paté Pouch voor Honden (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://carnilove.com/en/products/turkey-and-venison-with-strawberry-leaves-dog-pouch-pate-300g',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1200 kcal/kg naar 120 kcal/100 g (delen door 10). Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = '7fcb81de-36d3-400b-a356-71c764550aec';
delete from public.recipe_nutrition where recipe_version_id = '7fcb81de-36d3-400b-a356-71c764550aec';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7fcb81de-36d3-400b-a356-71c764550aec', 'protein', 10.2, 'as-fed'),
  ('7fcb81de-36d3-400b-a356-71c764550aec', 'fat', 7.9, 'as-fed'),
  ('7fcb81de-36d3-400b-a356-71c764550aec', 'fiber', 2.5, 'as-fed'),
  ('7fcb81de-36d3-400b-a356-71c764550aec', 'ash', 4.5, 'as-fed'),
  ('7fcb81de-36d3-400b-a356-71c764550aec', 'moisture', 74.9, 'as-fed'),
  ('7fcb81de-36d3-400b-a356-71c764550aec', 'kcal', 120, 'as-fed'),
  ('7fcb81de-36d3-400b-a356-71c764550aec', 'calcium', 1, 'as-fed'),
  ('7fcb81de-36d3-400b-a356-71c764550aec', 'phosphorus', 0.62, 'as-fed');

-- Carnilove — Kalkoen & Kwartel met Wortel Paté Pouch voor Honden (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://carnilove.com/en/products/turkey-and-quail-with-carrot-dog-pouch-pate-300g',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1060 kcal/kg naar 106 kcal/100 g (delen door 10). Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = '3a5f2158-eb58-45b2-85c0-47911bc70711';
delete from public.recipe_nutrition where recipe_version_id = '3a5f2158-eb58-45b2-85c0-47911bc70711';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3a5f2158-eb58-45b2-85c0-47911bc70711', 'protein', 8.5, 'as-fed'),
  ('3a5f2158-eb58-45b2-85c0-47911bc70711', 'fat', 7.5, 'as-fed'),
  ('3a5f2158-eb58-45b2-85c0-47911bc70711', 'fiber', 2.5, 'as-fed'),
  ('3a5f2158-eb58-45b2-85c0-47911bc70711', 'ash', 3, 'as-fed'),
  ('3a5f2158-eb58-45b2-85c0-47911bc70711', 'moisture', 79, 'as-fed'),
  ('3a5f2158-eb58-45b2-85c0-47911bc70711', 'kcal', 106, 'as-fed'),
  ('3a5f2158-eb58-45b2-85c0-47911bc70711', 'calcium', 0.4, 'as-fed'),
  ('3a5f2158-eb58-45b2-85c0-47911bc70711', 'phosphorus', 0.4, 'as-fed');

-- Carnilove — Kalkoen & Wild Zwijn met Rozenbottels Paté Pouch voor Honden (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://carnilove.com/en/products/turkey-and-wildboar-with-rosehips-dog-pouch-pate-300g',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1220 kcal/kg naar 122 kcal/100 g (delen door 10). Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = '25002e3b-aa30-441c-a160-1a1bff6a4d64';
delete from public.recipe_nutrition where recipe_version_id = '25002e3b-aa30-441c-a160-1a1bff6a4d64';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('25002e3b-aa30-441c-a160-1a1bff6a4d64', 'protein', 10.8, 'as-fed'),
  ('25002e3b-aa30-441c-a160-1a1bff6a4d64', 'fat', 9.15, 'as-fed'),
  ('25002e3b-aa30-441c-a160-1a1bff6a4d64', 'fiber', 5.3, 'as-fed'),
  ('25002e3b-aa30-441c-a160-1a1bff6a4d64', 'ash', 3.1, 'as-fed'),
  ('25002e3b-aa30-441c-a160-1a1bff6a4d64', 'moisture', 73.3, 'as-fed'),
  ('25002e3b-aa30-441c-a160-1a1bff6a4d64', 'kcal', 122, 'as-fed'),
  ('25002e3b-aa30-441c-a160-1a1bff6a4d64', 'calcium', 0.4, 'as-fed'),
  ('25002e3b-aa30-441c-a160-1a1bff6a4d64', 'phosphorus', 0.4, 'as-fed');

-- Carnilove — Kalkoen & Zalm met Bosbessen Paté Pouch voor Puppy's (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://carnilove.com/en/products/turkey-and-salmon-with-blueberries-puppy-pouch-pate-300g',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1360 kcal/kg naar 136 kcal/100 g (delen door 10). Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = 'dc421fdb-cb1d-4c8c-8004-52e430ee587c';
delete from public.recipe_nutrition where recipe_version_id = 'dc421fdb-cb1d-4c8c-8004-52e430ee587c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('dc421fdb-cb1d-4c8c-8004-52e430ee587c', 'protein', 11.3, 'as-fed'),
  ('dc421fdb-cb1d-4c8c-8004-52e430ee587c', 'fat', 11.3, 'as-fed'),
  ('dc421fdb-cb1d-4c8c-8004-52e430ee587c', 'fiber', 3.5, 'as-fed'),
  ('dc421fdb-cb1d-4c8c-8004-52e430ee587c', 'ash', 3.5, 'as-fed'),
  ('dc421fdb-cb1d-4c8c-8004-52e430ee587c', 'moisture', 72.5, 'as-fed'),
  ('dc421fdb-cb1d-4c8c-8004-52e430ee587c', 'kcal', 136, 'as-fed'),
  ('dc421fdb-cb1d-4c8c-8004-52e430ee587c', 'calcium', 0.7, 'as-fed'),
  ('dc421fdb-cb1d-4c8c-8004-52e430ee587c', 'phosphorus', 0.46, 'as-fed');

-- Carnilove — Paté Blikvoer met Eend & Fazant voor Honden (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://carnilove.com/en/products/pate-can-food-made-with-duck-and-pheasant-for-dogs-400g',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1070 kcal/kg naar 107 kcal/100 g (delen door 10). Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = '178e1b4f-3be5-4aea-afd5-6f7d169aca21';
delete from public.recipe_nutrition where recipe_version_id = '178e1b4f-3be5-4aea-afd5-6f7d169aca21';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('178e1b4f-3be5-4aea-afd5-6f7d169aca21', 'protein', 8.5, 'as-fed'),
  ('178e1b4f-3be5-4aea-afd5-6f7d169aca21', 'fat', 7, 'as-fed'),
  ('178e1b4f-3be5-4aea-afd5-6f7d169aca21', 'fiber', 0.4, 'as-fed'),
  ('178e1b4f-3be5-4aea-afd5-6f7d169aca21', 'ash', 2.5, 'as-fed'),
  ('178e1b4f-3be5-4aea-afd5-6f7d169aca21', 'moisture', 78, 'as-fed'),
  ('178e1b4f-3be5-4aea-afd5-6f7d169aca21', 'kcal', 107, 'as-fed'),
  ('178e1b4f-3be5-4aea-afd5-6f7d169aca21', 'calcium', 0.2, 'as-fed'),
  ('178e1b4f-3be5-4aea-afd5-6f7d169aca21', 'phosphorus', 0.25, 'as-fed');

-- Carnilove — Paté Blikvoer met Kalkoen & Rendier voor Honden (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://carnilove.com/en/products/pate-can-food-made-with-turkey-and-reindeer-for-dogs-400g',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1130 kcal/kg naar 113 kcal/100 g (delen door 10). Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = 'cd03c6e6-add3-4868-b711-b3e8e370e66f';
delete from public.recipe_nutrition where recipe_version_id = 'cd03c6e6-add3-4868-b711-b3e8e370e66f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('cd03c6e6-add3-4868-b711-b3e8e370e66f', 'protein', 10, 'as-fed'),
  ('cd03c6e6-add3-4868-b711-b3e8e370e66f', 'fat', 8, 'as-fed'),
  ('cd03c6e6-add3-4868-b711-b3e8e370e66f', 'fiber', 0.4, 'as-fed'),
  ('cd03c6e6-add3-4868-b711-b3e8e370e66f', 'ash', 2.3, 'as-fed'),
  ('cd03c6e6-add3-4868-b711-b3e8e370e66f', 'moisture', 78, 'as-fed'),
  ('cd03c6e6-add3-4868-b711-b3e8e370e66f', 'kcal', 113, 'as-fed'),
  ('cd03c6e6-add3-4868-b711-b3e8e370e66f', 'calcium', 0.2, 'as-fed'),
  ('cd03c6e6-add3-4868-b711-b3e8e370e66f', 'phosphorus', 0.25, 'as-fed');

-- Carnilove — Paté Blikvoer met Kalkoen & Zalm voor Honden (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://carnilove.com/en/products/pate-can-food-made-with-turkey-and-salmon-for-dogs-400g',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1045 kcal/kg naar 104,5 kcal/100 g (delen door 10). Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = '4bea8562-7fe7-4976-ab51-9f7bad54fda3';
delete from public.recipe_nutrition where recipe_version_id = '4bea8562-7fe7-4976-ab51-9f7bad54fda3';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4bea8562-7fe7-4976-ab51-9f7bad54fda3', 'protein', 8, 'as-fed'),
  ('4bea8562-7fe7-4976-ab51-9f7bad54fda3', 'fat', 6.5, 'as-fed'),
  ('4bea8562-7fe7-4976-ab51-9f7bad54fda3', 'fiber', 0.4, 'as-fed'),
  ('4bea8562-7fe7-4976-ab51-9f7bad54fda3', 'ash', 2.4, 'as-fed'),
  ('4bea8562-7fe7-4976-ab51-9f7bad54fda3', 'moisture', 78, 'as-fed'),
  ('4bea8562-7fe7-4976-ab51-9f7bad54fda3', 'kcal', 104.5, 'as-fed'),
  ('4bea8562-7fe7-4976-ab51-9f7bad54fda3', 'calcium', 0.2, 'as-fed'),
  ('4bea8562-7fe7-4976-ab51-9f7bad54fda3', 'phosphorus', 0.25, 'as-fed');

-- Carnilove — Paté Blikvoer met Kalkoen & Zalm voor Puppy's (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://carnilove.com/en/products/pate-can-food-made-with-turkey-and-salmon-for-puppies-400g',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1045 kcal/kg naar 104,5 kcal/100 g (delen door 10). Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = 'd3f0dc48-6ead-484d-9eff-78cc1aa33d39';
delete from public.recipe_nutrition where recipe_version_id = 'd3f0dc48-6ead-484d-9eff-78cc1aa33d39';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d3f0dc48-6ead-484d-9eff-78cc1aa33d39', 'protein', 9, 'as-fed'),
  ('d3f0dc48-6ead-484d-9eff-78cc1aa33d39', 'fat', 6.6, 'as-fed'),
  ('d3f0dc48-6ead-484d-9eff-78cc1aa33d39', 'fiber', 0.5, 'as-fed'),
  ('d3f0dc48-6ead-484d-9eff-78cc1aa33d39', 'ash', 2.5, 'as-fed'),
  ('d3f0dc48-6ead-484d-9eff-78cc1aa33d39', 'moisture', 78, 'as-fed'),
  ('d3f0dc48-6ead-484d-9eff-78cc1aa33d39', 'kcal', 104.5, 'as-fed'),
  ('d3f0dc48-6ead-484d-9eff-78cc1aa33d39', 'calcium', 0.2, 'as-fed'),
  ('d3f0dc48-6ead-484d-9eff-78cc1aa33d39', 'phosphorus', 0.25, 'as-fed');

-- Carnilove — Paté Blikvoer met Lam & Wild Zwijn voor Honden (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://carnilove.com/en/products/pate-can-food-made-with-lamb-and-wild-boar-for-dogs-400g',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 1050 kcal/kg naar 105 kcal/100 g (delen door 10). Omega-3 en omega-6 worden niet als percentage van het product vermeld.'
 where id = 'a00cfe43-c015-408e-817c-ecfe8295ec8e';
delete from public.recipe_nutrition where recipe_version_id = 'a00cfe43-c015-408e-817c-ecfe8295ec8e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a00cfe43-c015-408e-817c-ecfe8295ec8e', 'protein', 9.5, 'as-fed'),
  ('a00cfe43-c015-408e-817c-ecfe8295ec8e', 'fat', 6.5, 'as-fed'),
  ('a00cfe43-c015-408e-817c-ecfe8295ec8e', 'fiber', 0.4, 'as-fed'),
  ('a00cfe43-c015-408e-817c-ecfe8295ec8e', 'ash', 2.5, 'as-fed'),
  ('a00cfe43-c015-408e-817c-ecfe8295ec8e', 'moisture', 78, 'as-fed'),
  ('a00cfe43-c015-408e-817c-ecfe8295ec8e', 'kcal', 105, 'as-fed'),
  ('a00cfe43-c015-408e-817c-ecfe8295ec8e', 'calcium', 0.2, 'as-fed'),
  ('a00cfe43-c015-408e-817c-ecfe8295ec8e', 'phosphorus', 0.25, 'as-fed');

-- Carnilove — True Fresh Eend Droogvoer voor Grote Rassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://carnilove.com/en/products/true-fresh-duck-dry-food-for-large-breeds',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 3630 kcal/kg naar 363 kcal/100 g (delen door 10).'
 where id = '32451086-d4cc-42c1-88ab-3973d1dc0a93';
delete from public.recipe_nutrition where recipe_version_id = '32451086-d4cc-42c1-88ab-3973d1dc0a93';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('32451086-d4cc-42c1-88ab-3973d1dc0a93', 'protein', 27, 'as-fed'),
  ('32451086-d4cc-42c1-88ab-3973d1dc0a93', 'fat', 15, 'as-fed'),
  ('32451086-d4cc-42c1-88ab-3973d1dc0a93', 'fiber', 4, 'as-fed'),
  ('32451086-d4cc-42c1-88ab-3973d1dc0a93', 'ash', 7.5, 'as-fed'),
  ('32451086-d4cc-42c1-88ab-3973d1dc0a93', 'moisture', 10, 'as-fed'),
  ('32451086-d4cc-42c1-88ab-3973d1dc0a93', 'kcal', 363, 'as-fed'),
  ('32451086-d4cc-42c1-88ab-3973d1dc0a93', 'calcium', 1.5, 'as-fed'),
  ('32451086-d4cc-42c1-88ab-3973d1dc0a93', 'phosphorus', 1.1, 'as-fed'),
  ('32451086-d4cc-42c1-88ab-3973d1dc0a93', 'omega3', 0.3, 'as-fed'),
  ('32451086-d4cc-42c1-88ab-3973d1dc0a93', 'omega6', 2.8, 'as-fed');

-- Carnilove — True Fresh Eend Droogvoer voor Junior Grote Rassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://carnilove.com/en/products/true-fresh-duck-dry-food-for-junior-large-breeds',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 3596 kcal/kg naar 359,6 kcal/100 g (delen door 10).'
 where id = '075d3b0b-63cd-4273-95a8-87d5c41e0517';
delete from public.recipe_nutrition where recipe_version_id = '075d3b0b-63cd-4273-95a8-87d5c41e0517';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('075d3b0b-63cd-4273-95a8-87d5c41e0517', 'protein', 28, 'as-fed'),
  ('075d3b0b-63cd-4273-95a8-87d5c41e0517', 'fat', 14, 'as-fed'),
  ('075d3b0b-63cd-4273-95a8-87d5c41e0517', 'fiber', 3.8, 'as-fed'),
  ('075d3b0b-63cd-4273-95a8-87d5c41e0517', 'ash', 7.7, 'as-fed'),
  ('075d3b0b-63cd-4273-95a8-87d5c41e0517', 'moisture', 10, 'as-fed'),
  ('075d3b0b-63cd-4273-95a8-87d5c41e0517', 'kcal', 359.6, 'as-fed'),
  ('075d3b0b-63cd-4273-95a8-87d5c41e0517', 'calcium', 1.5, 'as-fed'),
  ('075d3b0b-63cd-4273-95a8-87d5c41e0517', 'phosphorus', 1.1, 'as-fed'),
  ('075d3b0b-63cd-4273-95a8-87d5c41e0517', 'omega3', 0.3, 'as-fed'),
  ('075d3b0b-63cd-4273-95a8-87d5c41e0517', 'omega6', 2.6, 'as-fed');

-- Carnilove — True Fresh Eend Droogvoer voor Kleine Rassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://carnilove.com/en/products/true-fresh-duck-dry-food-for-small-breeds',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 3787 kcal/kg naar 378,7 kcal/100 g (delen door 10).'
 where id = 'de668368-c484-4eb1-95f6-a4c724f4e508';
delete from public.recipe_nutrition where recipe_version_id = 'de668368-c484-4eb1-95f6-a4c724f4e508';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('de668368-c484-4eb1-95f6-a4c724f4e508', 'protein', 29, 'as-fed'),
  ('de668368-c484-4eb1-95f6-a4c724f4e508', 'fat', 18, 'as-fed'),
  ('de668368-c484-4eb1-95f6-a4c724f4e508', 'fiber', 3.8, 'as-fed'),
  ('de668368-c484-4eb1-95f6-a4c724f4e508', 'ash', 7.5, 'as-fed'),
  ('de668368-c484-4eb1-95f6-a4c724f4e508', 'moisture', 10, 'as-fed'),
  ('de668368-c484-4eb1-95f6-a4c724f4e508', 'kcal', 378.7, 'as-fed'),
  ('de668368-c484-4eb1-95f6-a4c724f4e508', 'calcium', 1.5, 'as-fed'),
  ('de668368-c484-4eb1-95f6-a4c724f4e508', 'phosphorus', 1.1, 'as-fed'),
  ('de668368-c484-4eb1-95f6-a4c724f4e508', 'omega3', 0.3, 'as-fed'),
  ('de668368-c484-4eb1-95f6-a4c724f4e508', 'omega6', 3.4, 'as-fed');

-- Carnilove — True Fresh Eend Droogvoer voor Puppy's (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://carnilove.com/en/products/true-fresh-duck-dry-food-for-puppies',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 3883 kcal/kg naar 388,3 kcal/100 g (delen door 10).'
 where id = 'd889fa8e-2949-4eb1-982d-1f571047d214';
delete from public.recipe_nutrition where recipe_version_id = 'd889fa8e-2949-4eb1-982d-1f571047d214';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d889fa8e-2949-4eb1-982d-1f571047d214', 'protein', 30, 'as-fed'),
  ('d889fa8e-2949-4eb1-982d-1f571047d214', 'fat', 19, 'as-fed'),
  ('d889fa8e-2949-4eb1-982d-1f571047d214', 'fiber', 3, 'as-fed'),
  ('d889fa8e-2949-4eb1-982d-1f571047d214', 'ash', 7.9, 'as-fed'),
  ('d889fa8e-2949-4eb1-982d-1f571047d214', 'moisture', 10, 'as-fed'),
  ('d889fa8e-2949-4eb1-982d-1f571047d214', 'kcal', 388.3, 'as-fed'),
  ('d889fa8e-2949-4eb1-982d-1f571047d214', 'calcium', 1.4, 'as-fed'),
  ('d889fa8e-2949-4eb1-982d-1f571047d214', 'phosphorus', 1.1, 'as-fed'),
  ('d889fa8e-2949-4eb1-982d-1f571047d214', 'omega3', 0.3, 'as-fed'),
  ('d889fa8e-2949-4eb1-982d-1f571047d214', 'omega6', 3.6, 'as-fed');

-- Carnilove — True Fresh Eend Droogvoer voor Volwassen Honden (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://carnilove.com/en/products/true-fresh-duck-dry-food-for-adult-dogs',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 3700 kcal/kg naar 370 kcal/100 g (delen door 10).'
 where id = '7ddba93f-8520-44aa-91ad-f3d8eefed1fe';
delete from public.recipe_nutrition where recipe_version_id = '7ddba93f-8520-44aa-91ad-f3d8eefed1fe';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7ddba93f-8520-44aa-91ad-f3d8eefed1fe', 'protein', 28, 'as-fed'),
  ('7ddba93f-8520-44aa-91ad-f3d8eefed1fe', 'fat', 16, 'as-fed'),
  ('7ddba93f-8520-44aa-91ad-f3d8eefed1fe', 'fiber', 3.8, 'as-fed'),
  ('7ddba93f-8520-44aa-91ad-f3d8eefed1fe', 'ash', 7.5, 'as-fed'),
  ('7ddba93f-8520-44aa-91ad-f3d8eefed1fe', 'moisture', 10, 'as-fed'),
  ('7ddba93f-8520-44aa-91ad-f3d8eefed1fe', 'kcal', 370, 'as-fed'),
  ('7ddba93f-8520-44aa-91ad-f3d8eefed1fe', 'calcium', 1.5, 'as-fed'),
  ('7ddba93f-8520-44aa-91ad-f3d8eefed1fe', 'phosphorus', 1.1, 'as-fed'),
  ('7ddba93f-8520-44aa-91ad-f3d8eefed1fe', 'omega3', 0.3, 'as-fed'),
  ('7ddba93f-8520-44aa-91ad-f3d8eefed1fe', 'omega6', 3, 'as-fed');

-- Carnilove — True Fresh Kalkoen Droogvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://carnilove.com/en/products/carnilove-true-fresh-dog-dry-turkey-for-adult-all-breeds',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 3681 kcal/kg naar 368,1 kcal/100 g (delen door 10).'
 where id = 'db7cf12d-3d12-4767-b21c-1544e1745693';
delete from public.recipe_nutrition where recipe_version_id = 'db7cf12d-3d12-4767-b21c-1544e1745693';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('db7cf12d-3d12-4767-b21c-1544e1745693', 'protein', 29, 'as-fed'),
  ('db7cf12d-3d12-4767-b21c-1544e1745693', 'fat', 16, 'as-fed'),
  ('db7cf12d-3d12-4767-b21c-1544e1745693', 'fiber', 4, 'as-fed'),
  ('db7cf12d-3d12-4767-b21c-1544e1745693', 'ash', 7.5, 'as-fed'),
  ('db7cf12d-3d12-4767-b21c-1544e1745693', 'moisture', 10, 'as-fed'),
  ('db7cf12d-3d12-4767-b21c-1544e1745693', 'kcal', 368.1, 'as-fed'),
  ('db7cf12d-3d12-4767-b21c-1544e1745693', 'calcium', 1.6, 'as-fed'),
  ('db7cf12d-3d12-4767-b21c-1544e1745693', 'phosphorus', 1.3, 'as-fed'),
  ('db7cf12d-3d12-4767-b21c-1544e1745693', 'omega3', 0.3, 'as-fed'),
  ('db7cf12d-3d12-4767-b21c-1544e1745693', 'omega6', 3, 'as-fed');

-- Carnilove — True Fresh Rund Droogvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://carnilove.com/en/products/carnilove-true-fresh-dog-dry-beef-for-adult-all-breeds',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 3740 kcal/kg naar 374 kcal/100 g (delen door 10).'
 where id = 'e3958851-e181-4831-a44b-8ebc703fcf1a';
delete from public.recipe_nutrition where recipe_version_id = 'e3958851-e181-4831-a44b-8ebc703fcf1a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e3958851-e181-4831-a44b-8ebc703fcf1a', 'protein', 30, 'as-fed'),
  ('e3958851-e181-4831-a44b-8ebc703fcf1a', 'fat', 16, 'as-fed'),
  ('e3958851-e181-4831-a44b-8ebc703fcf1a', 'fiber', 3.5, 'as-fed'),
  ('e3958851-e181-4831-a44b-8ebc703fcf1a', 'ash', 7, 'as-fed'),
  ('e3958851-e181-4831-a44b-8ebc703fcf1a', 'moisture', 10, 'as-fed'),
  ('e3958851-e181-4831-a44b-8ebc703fcf1a', 'kcal', 374, 'as-fed'),
  ('e3958851-e181-4831-a44b-8ebc703fcf1a', 'calcium', 1.3, 'as-fed'),
  ('e3958851-e181-4831-a44b-8ebc703fcf1a', 'phosphorus', 0.8, 'as-fed'),
  ('e3958851-e181-4831-a44b-8ebc703fcf1a', 'omega3', 0.3, 'as-fed'),
  ('e3958851-e181-4831-a44b-8ebc703fcf1a', 'omega6', 3.2, 'as-fed');

-- Carnilove — True Fresh Vis & Kalkoen Droogvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://carnilove.com/en/products/true-fresh-fish-and-turkey-dry-dog-food',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie omgerekend van 3611 kcal/kg naar 361,1 kcal/100 g (delen door 10).'
 where id = '80d3f506-7a88-43af-902a-835607707c61';
delete from public.recipe_nutrition where recipe_version_id = '80d3f506-7a88-43af-902a-835607707c61';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('80d3f506-7a88-43af-902a-835607707c61', 'protein', 29, 'as-fed'),
  ('80d3f506-7a88-43af-902a-835607707c61', 'fat', 15, 'as-fed'),
  ('80d3f506-7a88-43af-902a-835607707c61', 'fiber', 4.2, 'as-fed'),
  ('80d3f506-7a88-43af-902a-835607707c61', 'ash', 7.8, 'as-fed'),
  ('80d3f506-7a88-43af-902a-835607707c61', 'moisture', 10, 'as-fed'),
  ('80d3f506-7a88-43af-902a-835607707c61', 'kcal', 361.1, 'as-fed'),
  ('80d3f506-7a88-43af-902a-835607707c61', 'calcium', 1.4, 'as-fed'),
  ('80d3f506-7a88-43af-902a-835607707c61', 'phosphorus', 1, 'as-fed'),
  ('80d3f506-7a88-43af-902a-835607707c61', 'omega3', 0.6, 'as-fed'),
  ('80d3f506-7a88-43af-902a-835607707c61', 'omega6', 2.8, 'as-fed');

-- WOOOF — Eend Hondenbrokken - Geperst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://wooof.com/WOOOF-eend/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3320 kcal/kg naar 332 kcal/100 g. Omega-3 omgerekend van g/kg naar % (gedeeld door 10). Omega-6 omgerekend van g/kg naar % (gedeeld door 10).'
 where id = 'd419503c-0ce2-47a6-a348-6663ced3c3bc';
delete from public.recipe_nutrition where recipe_version_id = 'd419503c-0ce2-47a6-a348-6663ced3c3bc';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d419503c-0ce2-47a6-a348-6663ced3c3bc', 'protein', 25, 'as-fed'),
  ('d419503c-0ce2-47a6-a348-6663ced3c3bc', 'fat', 10, 'as-fed'),
  ('d419503c-0ce2-47a6-a348-6663ced3c3bc', 'fiber', 4.5, 'as-fed'),
  ('d419503c-0ce2-47a6-a348-6663ced3c3bc', 'ash', 6.5, 'as-fed'),
  ('d419503c-0ce2-47a6-a348-6663ced3c3bc', 'moisture', 11, 'as-fed'),
  ('d419503c-0ce2-47a6-a348-6663ced3c3bc', 'kcal', 332, 'as-fed'),
  ('d419503c-0ce2-47a6-a348-6663ced3c3bc', 'calcium', 1.5, 'as-fed'),
  ('d419503c-0ce2-47a6-a348-6663ced3c3bc', 'phosphorus', 1, 'as-fed'),
  ('d419503c-0ce2-47a6-a348-6663ced3c3bc', 'omega3', 0.45, 'as-fed'),
  ('d419503c-0ce2-47a6-a348-6663ced3c3bc', 'omega6', 2.25, 'as-fed');

-- WOOOF — Eend Hondenvoer - Krokant (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://wooof.com/wooof-eend-hondenvoer-krokant/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3784 kcal/kg naar 378.4 kcal/100 g. Niet vermeld: omega-3, omega-6.'
 where id = 'd2bf5106-c0fa-4a90-9f6c-d67ecf7ed60e';
delete from public.recipe_nutrition where recipe_version_id = 'd2bf5106-c0fa-4a90-9f6c-d67ecf7ed60e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d2bf5106-c0fa-4a90-9f6c-d67ecf7ed60e', 'protein', 23, 'as-fed'),
  ('d2bf5106-c0fa-4a90-9f6c-d67ecf7ed60e', 'fat', 13, 'as-fed'),
  ('d2bf5106-c0fa-4a90-9f6c-d67ecf7ed60e', 'fiber', 2.3, 'as-fed'),
  ('d2bf5106-c0fa-4a90-9f6c-d67ecf7ed60e', 'ash', 5.8, 'as-fed'),
  ('d2bf5106-c0fa-4a90-9f6c-d67ecf7ed60e', 'moisture', 8, 'as-fed'),
  ('d2bf5106-c0fa-4a90-9f6c-d67ecf7ed60e', 'kcal', 378.4, 'as-fed'),
  ('d2bf5106-c0fa-4a90-9f6c-d67ecf7ed60e', 'calcium', 1.3, 'as-fed'),
  ('d2bf5106-c0fa-4a90-9f6c-d67ecf7ed60e', 'phosphorus', 0.9, 'as-fed');

-- WOOOF — Eend Worst (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://wooof.com/WOOOF-verse-eend-worst/10-stuks',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 1660 kcal/kg naar 166 kcal/100 g. Niet vermeld: vocht, calcium, fosfor, omega-3, omega-6.'
 where id = 'b7d1f5b6-3f72-4db3-a96b-d658e2dbc2a3';
delete from public.recipe_nutrition where recipe_version_id = 'b7d1f5b6-3f72-4db3-a96b-d658e2dbc2a3';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b7d1f5b6-3f72-4db3-a96b-d658e2dbc2a3', 'protein', 12.8, 'as-fed'),
  ('b7d1f5b6-3f72-4db3-a96b-d658e2dbc2a3', 'fat', 15.5, 'as-fed'),
  ('b7d1f5b6-3f72-4db3-a96b-d658e2dbc2a3', 'fiber', 0.8, 'as-fed'),
  ('b7d1f5b6-3f72-4db3-a96b-d658e2dbc2a3', 'ash', 2.4, 'as-fed'),
  ('b7d1f5b6-3f72-4db3-a96b-d658e2dbc2a3', 'kcal', 166, 'as-fed');

-- WOOOF — Hert & Kip Worst (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://wooof.com/WOOOF-verse-kip-hert-worst/10-stuks',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 1660 kcal/kg naar 166 kcal/100 g. Niet vermeld: vocht, calcium, fosfor, omega-3, omega-6.'
 where id = '0688445d-1ee1-4e16-9996-c2bd42bc9b6a';
delete from public.recipe_nutrition where recipe_version_id = '0688445d-1ee1-4e16-9996-c2bd42bc9b6a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0688445d-1ee1-4e16-9996-c2bd42bc9b6a', 'protein', 17.6, 'as-fed'),
  ('0688445d-1ee1-4e16-9996-c2bd42bc9b6a', 'fat', 9.3, 'as-fed'),
  ('0688445d-1ee1-4e16-9996-c2bd42bc9b6a', 'fiber', 1, 'as-fed'),
  ('0688445d-1ee1-4e16-9996-c2bd42bc9b6a', 'ash', 6, 'as-fed'),
  ('0688445d-1ee1-4e16-9996-c2bd42bc9b6a', 'kcal', 166, 'as-fed');

-- WOOOF — High Energy Hondenvoer - Geperst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://wooof.com/WOOOF-high-energy/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3850 kcal/kg naar 385 kcal/100 g. Omega-3 omgerekend van g/kg naar % (gedeeld door 10). Omega-6 omgerekend van g/kg naar % (gedeeld door 10).'
 where id = '1d0430fa-f616-41f9-b489-5dfea3876b17';
delete from public.recipe_nutrition where recipe_version_id = '1d0430fa-f616-41f9-b489-5dfea3876b17';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1d0430fa-f616-41f9-b489-5dfea3876b17', 'protein', 26.5, 'as-fed'),
  ('1d0430fa-f616-41f9-b489-5dfea3876b17', 'fat', 15, 'as-fed'),
  ('1d0430fa-f616-41f9-b489-5dfea3876b17', 'fiber', 2, 'as-fed'),
  ('1d0430fa-f616-41f9-b489-5dfea3876b17', 'ash', 5.5, 'as-fed'),
  ('1d0430fa-f616-41f9-b489-5dfea3876b17', 'moisture', 8, 'as-fed'),
  ('1d0430fa-f616-41f9-b489-5dfea3876b17', 'kcal', 385, 'as-fed'),
  ('1d0430fa-f616-41f9-b489-5dfea3876b17', 'calcium', 1.4, 'as-fed'),
  ('1d0430fa-f616-41f9-b489-5dfea3876b17', 'phosphorus', 0.9, 'as-fed'),
  ('1d0430fa-f616-41f9-b489-5dfea3876b17', 'omega3', 0.56, 'as-fed'),
  ('1d0430fa-f616-41f9-b489-5dfea3876b17', 'omega6', 2.85, 'as-fed');

-- WOOOF — Kalkoen Worst Vers - Graanvrij (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://wooof.com/WOOOF-Kalkoen-Worst-Vers-Graanvrij/10-stuks',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Geen metaboliseerbare energie met waarde op de pagina vermeld, daarom kcal null. Niet vermeld: calcium, fosfor, omega-3, omega-6.'
 where id = '5f5d6f82-845b-4bd6-866c-a023339ae8dc';
delete from public.recipe_nutrition where recipe_version_id = '5f5d6f82-845b-4bd6-866c-a023339ae8dc';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5f5d6f82-845b-4bd6-866c-a023339ae8dc', 'protein', 13, 'as-fed'),
  ('5f5d6f82-845b-4bd6-866c-a023339ae8dc', 'fat', 10, 'as-fed'),
  ('5f5d6f82-845b-4bd6-866c-a023339ae8dc', 'fiber', 0.5, 'as-fed'),
  ('5f5d6f82-845b-4bd6-866c-a023339ae8dc', 'ash', 3, 'as-fed'),
  ('5f5d6f82-845b-4bd6-866c-a023339ae8dc', 'moisture', 67, 'as-fed');

-- WOOOF — Kip Worst (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://wooof.com/WOOOF-verse-kip-worst/9-kg',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Geen metaboliseerbare energie met waarde op de pagina vermeld, daarom kcal null. Niet vermeld: calcium, fosfor, omega-3, omega-6.'
 where id = '58864b17-6d4c-4acf-a068-b748fca89f3c';
delete from public.recipe_nutrition where recipe_version_id = '58864b17-6d4c-4acf-a068-b748fca89f3c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('58864b17-6d4c-4acf-a068-b748fca89f3c', 'protein', 13, 'as-fed'),
  ('58864b17-6d4c-4acf-a068-b748fca89f3c', 'fat', 10, 'as-fed'),
  ('58864b17-6d4c-4acf-a068-b748fca89f3c', 'fiber', 0.5, 'as-fed'),
  ('58864b17-6d4c-4acf-a068-b748fca89f3c', 'ash', 3, 'as-fed'),
  ('58864b17-6d4c-4acf-a068-b748fca89f3c', 'moisture', 67, 'as-fed');

-- WOOOF — Lam & Aardappel Hondenbrokken - Geperst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://wooof.com/WOOOF-lam-aardappel/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3555 kcal/kg naar 355.5 kcal/100 g. Omega-3 omgerekend van g/kg naar % (gedeeld door 10). Omega-6 omgerekend van g/kg naar % (gedeeld door 10).'
 where id = '85377a66-5202-45a2-80ab-f9008b05ad0e';
delete from public.recipe_nutrition where recipe_version_id = '85377a66-5202-45a2-80ab-f9008b05ad0e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('85377a66-5202-45a2-80ab-f9008b05ad0e', 'protein', 25, 'as-fed'),
  ('85377a66-5202-45a2-80ab-f9008b05ad0e', 'fat', 13, 'as-fed'),
  ('85377a66-5202-45a2-80ab-f9008b05ad0e', 'fiber', 3, 'as-fed'),
  ('85377a66-5202-45a2-80ab-f9008b05ad0e', 'ash', 7, 'as-fed'),
  ('85377a66-5202-45a2-80ab-f9008b05ad0e', 'moisture', 8, 'as-fed'),
  ('85377a66-5202-45a2-80ab-f9008b05ad0e', 'kcal', 355.5, 'as-fed'),
  ('85377a66-5202-45a2-80ab-f9008b05ad0e', 'calcium', 1.4, 'as-fed'),
  ('85377a66-5202-45a2-80ab-f9008b05ad0e', 'phosphorus', 0.8, 'as-fed'),
  ('85377a66-5202-45a2-80ab-f9008b05ad0e', 'omega3', 0.56, 'as-fed'),
  ('85377a66-5202-45a2-80ab-f9008b05ad0e', 'omega6', 2.25, 'as-fed');

-- WOOOF — Lam & Aardappel Hondenvoer - Krokant (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://wooof.com/wooof-lam-aardappel-hondenvoer-krokant/18kg',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3617 kcal/kg naar 361.7 kcal/100 g. Niet vermeld: omega-3, omega-6.'
 where id = 'eb39c376-aa86-40be-ae9e-6cec6a70cde1';
delete from public.recipe_nutrition where recipe_version_id = 'eb39c376-aa86-40be-ae9e-6cec6a70cde1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('eb39c376-aa86-40be-ae9e-6cec6a70cde1', 'protein', 22, 'as-fed'),
  ('eb39c376-aa86-40be-ae9e-6cec6a70cde1', 'fat', 13, 'as-fed'),
  ('eb39c376-aa86-40be-ae9e-6cec6a70cde1', 'fiber', 3.5, 'as-fed'),
  ('eb39c376-aa86-40be-ae9e-6cec6a70cde1', 'ash', 8, 'as-fed'),
  ('eb39c376-aa86-40be-ae9e-6cec6a70cde1', 'moisture', 8, 'as-fed'),
  ('eb39c376-aa86-40be-ae9e-6cec6a70cde1', 'kcal', 361.7, 'as-fed'),
  ('eb39c376-aa86-40be-ae9e-6cec6a70cde1', 'calcium', 1.7, 'as-fed'),
  ('eb39c376-aa86-40be-ae9e-6cec6a70cde1', 'phosphorus', 1, 'as-fed');

-- WOOOF — Lam & Rijst Hondenvoer - Geperst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://wooof.com/WOOOF-lam-rijst/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3615 kcal/kg naar 361.5 kcal/100 g. Omega-3 omgerekend van g/kg naar % (gedeeld door 10). Omega-6 omgerekend van g/kg naar % (gedeeld door 10).'
 where id = 'e369e9db-28d2-4072-8021-ac69a6125314';
delete from public.recipe_nutrition where recipe_version_id = 'e369e9db-28d2-4072-8021-ac69a6125314';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e369e9db-28d2-4072-8021-ac69a6125314', 'protein', 24, 'as-fed'),
  ('e369e9db-28d2-4072-8021-ac69a6125314', 'fat', 14, 'as-fed'),
  ('e369e9db-28d2-4072-8021-ac69a6125314', 'fiber', 3, 'as-fed'),
  ('e369e9db-28d2-4072-8021-ac69a6125314', 'ash', 7.5, 'as-fed'),
  ('e369e9db-28d2-4072-8021-ac69a6125314', 'moisture', 8, 'as-fed'),
  ('e369e9db-28d2-4072-8021-ac69a6125314', 'kcal', 361.5, 'as-fed'),
  ('e369e9db-28d2-4072-8021-ac69a6125314', 'calcium', 1.7, 'as-fed'),
  ('e369e9db-28d2-4072-8021-ac69a6125314', 'phosphorus', 1, 'as-fed'),
  ('e369e9db-28d2-4072-8021-ac69a6125314', 'omega3', 0.25, 'as-fed'),
  ('e369e9db-28d2-4072-8021-ac69a6125314', 'omega6', 2, 'as-fed');

-- WOOOF — Lam & Rijst Hondenvoer - Krokant (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://wooof.com/WOOOF-Lam-Rijst-Hondenvoer-Krokant/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3600 kcal/kg naar 360 kcal/100 g. Niet vermeld: omega-3, omega-6.'
 where id = '166b5126-011e-4248-8abb-275d4fa176c6';
delete from public.recipe_nutrition where recipe_version_id = '166b5126-011e-4248-8abb-275d4fa176c6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('166b5126-011e-4248-8abb-275d4fa176c6', 'protein', 24, 'as-fed'),
  ('166b5126-011e-4248-8abb-275d4fa176c6', 'fat', 14, 'as-fed'),
  ('166b5126-011e-4248-8abb-275d4fa176c6', 'fiber', 2.8, 'as-fed'),
  ('166b5126-011e-4248-8abb-275d4fa176c6', 'ash', 7.4, 'as-fed'),
  ('166b5126-011e-4248-8abb-275d4fa176c6', 'moisture', 8, 'as-fed'),
  ('166b5126-011e-4248-8abb-275d4fa176c6', 'kcal', 360, 'as-fed'),
  ('166b5126-011e-4248-8abb-275d4fa176c6', 'calcium', 1.8, 'as-fed'),
  ('166b5126-011e-4248-8abb-275d4fa176c6', 'phosphorus', 1.1, 'as-fed');

-- WOOOF — Lam Worst (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://wooof.com/WOOOF-verse-lam-worst/10-stuks',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 1660 kcal/kg naar 166 kcal/100 g. Niet vermeld: vocht, calcium, fosfor, omega-3, omega-6.'
 where id = 'f2c87b08-b711-43c0-a2f6-5758d87650b1';
delete from public.recipe_nutrition where recipe_version_id = 'f2c87b08-b711-43c0-a2f6-5758d87650b1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f2c87b08-b711-43c0-a2f6-5758d87650b1', 'protein', 14.6, 'as-fed'),
  ('f2c87b08-b711-43c0-a2f6-5758d87650b1', 'fat', 10.2, 'as-fed'),
  ('f2c87b08-b711-43c0-a2f6-5758d87650b1', 'fiber', 1.7, 'as-fed'),
  ('f2c87b08-b711-43c0-a2f6-5758d87650b1', 'ash', 1.6, 'as-fed'),
  ('f2c87b08-b711-43c0-a2f6-5758d87650b1', 'kcal', 166, 'as-fed');

-- WOOOF — Light Hondenvoer - Geperst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://wooof.com/WOOOF-light/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3495 kcal/kg naar 349.5 kcal/100 g. Omega-3 omgerekend van g/kg naar % (gedeeld door 10). Omega-6 omgerekend van g/kg naar % (gedeeld door 10).'
 where id = 'd9f86945-c3c0-48d7-a221-2e3b0871460d';
delete from public.recipe_nutrition where recipe_version_id = 'd9f86945-c3c0-48d7-a221-2e3b0871460d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d9f86945-c3c0-48d7-a221-2e3b0871460d', 'protein', 18, 'as-fed'),
  ('d9f86945-c3c0-48d7-a221-2e3b0871460d', 'fat', 8, 'as-fed'),
  ('d9f86945-c3c0-48d7-a221-2e3b0871460d', 'fiber', 2.2, 'as-fed'),
  ('d9f86945-c3c0-48d7-a221-2e3b0871460d', 'ash', 4, 'as-fed'),
  ('d9f86945-c3c0-48d7-a221-2e3b0871460d', 'moisture', 8, 'as-fed'),
  ('d9f86945-c3c0-48d7-a221-2e3b0871460d', 'kcal', 349.5, 'as-fed'),
  ('d9f86945-c3c0-48d7-a221-2e3b0871460d', 'calcium', 0.7, 'as-fed'),
  ('d9f86945-c3c0-48d7-a221-2e3b0871460d', 'phosphorus', 0.6, 'as-fed'),
  ('d9f86945-c3c0-48d7-a221-2e3b0871460d', 'omega3', 0.5, 'as-fed'),
  ('d9f86945-c3c0-48d7-a221-2e3b0871460d', 'omega6', 0.74, 'as-fed');

-- WOOOF — Puppy Hondenvoer - Krokant (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://wooof.com/wooof-puppyvoer-krokant/18kg',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3935 kcal/kg naar 393.5 kcal/100 g. Niet vermeld: omega-3, omega-6.'
 where id = '4fc7a30e-e612-46b3-89b3-05dea48ecb1a';
delete from public.recipe_nutrition where recipe_version_id = '4fc7a30e-e612-46b3-89b3-05dea48ecb1a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4fc7a30e-e612-46b3-89b3-05dea48ecb1a', 'protein', 32, 'as-fed'),
  ('4fc7a30e-e612-46b3-89b3-05dea48ecb1a', 'fat', 18, 'as-fed'),
  ('4fc7a30e-e612-46b3-89b3-05dea48ecb1a', 'fiber', 2.5, 'as-fed'),
  ('4fc7a30e-e612-46b3-89b3-05dea48ecb1a', 'ash', 6, 'as-fed'),
  ('4fc7a30e-e612-46b3-89b3-05dea48ecb1a', 'moisture', 8, 'as-fed'),
  ('4fc7a30e-e612-46b3-89b3-05dea48ecb1a', 'kcal', 393.5, 'as-fed'),
  ('4fc7a30e-e612-46b3-89b3-05dea48ecb1a', 'calcium', 1, 'as-fed'),
  ('4fc7a30e-e612-46b3-89b3-05dea48ecb1a', 'phosphorus', 0.8, 'as-fed');

-- WOOOF — Puppybrokken - Geperst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://wooof.com/WOOOF-puppyvoer/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3800 kcal/kg naar 380 kcal/100 g. Omega-3 omgerekend van g/kg naar % (gedeeld door 10). Omega-6 omgerekend van g/kg naar % (gedeeld door 10).'
 where id = 'ac0c29fe-b2cc-47fc-8cb1-9b2b98d81f14';
delete from public.recipe_nutrition where recipe_version_id = 'ac0c29fe-b2cc-47fc-8cb1-9b2b98d81f14';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ac0c29fe-b2cc-47fc-8cb1-9b2b98d81f14', 'protein', 28, 'as-fed'),
  ('ac0c29fe-b2cc-47fc-8cb1-9b2b98d81f14', 'fat', 15, 'as-fed'),
  ('ac0c29fe-b2cc-47fc-8cb1-9b2b98d81f14', 'fiber', 2.5, 'as-fed'),
  ('ac0c29fe-b2cc-47fc-8cb1-9b2b98d81f14', 'ash', 5.5, 'as-fed'),
  ('ac0c29fe-b2cc-47fc-8cb1-9b2b98d81f14', 'moisture', 9.6, 'as-fed'),
  ('ac0c29fe-b2cc-47fc-8cb1-9b2b98d81f14', 'kcal', 380, 'as-fed'),
  ('ac0c29fe-b2cc-47fc-8cb1-9b2b98d81f14', 'calcium', 1.3, 'as-fed'),
  ('ac0c29fe-b2cc-47fc-8cb1-9b2b98d81f14', 'phosphorus', 0.9, 'as-fed'),
  ('ac0c29fe-b2cc-47fc-8cb1-9b2b98d81f14', 'omega3', 0.56, 'as-fed'),
  ('ac0c29fe-b2cc-47fc-8cb1-9b2b98d81f14', 'omega6', 2.85, 'as-fed');

-- WOOOF — Puppybrokken Graanvrij - Geperst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://wooof.com/WOOOF-puppyvoer-graanvrij/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 4050 kcal/kg naar 405 kcal/100 g. Omega-3 omgerekend van g/kg naar % (gedeeld door 10). Omega-6 omgerekend van g/kg naar % (gedeeld door 10).'
 where id = 'c4f0e9f8-27f6-43b9-8693-379f5f21965a';
delete from public.recipe_nutrition where recipe_version_id = 'c4f0e9f8-27f6-43b9-8693-379f5f21965a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c4f0e9f8-27f6-43b9-8693-379f5f21965a', 'protein', 28, 'as-fed'),
  ('c4f0e9f8-27f6-43b9-8693-379f5f21965a', 'fat', 15, 'as-fed'),
  ('c4f0e9f8-27f6-43b9-8693-379f5f21965a', 'fiber', 3, 'as-fed'),
  ('c4f0e9f8-27f6-43b9-8693-379f5f21965a', 'ash', 6.2, 'as-fed'),
  ('c4f0e9f8-27f6-43b9-8693-379f5f21965a', 'moisture', 9, 'as-fed'),
  ('c4f0e9f8-27f6-43b9-8693-379f5f21965a', 'kcal', 405, 'as-fed'),
  ('c4f0e9f8-27f6-43b9-8693-379f5f21965a', 'calcium', 1.55, 'as-fed'),
  ('c4f0e9f8-27f6-43b9-8693-379f5f21965a', 'phosphorus', 1, 'as-fed'),
  ('c4f0e9f8-27f6-43b9-8693-379f5f21965a', 'omega3', 0.96, 'as-fed'),
  ('c4f0e9f8-27f6-43b9-8693-379f5f21965a', 'omega6', 3.13, 'as-fed');

-- WOOOF — Regular geperst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://wooof.com/WOOOF-regular/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3640 kcal/kg naar 364 kcal/100 g. Omega-3 omgerekend van g/kg naar % (gedeeld door 10). Omega-6 omgerekend van g/kg naar % (gedeeld door 10).'
 where id = 'ec68bf8e-3fbd-46e4-8ec1-1c2a6c7426b0';
delete from public.recipe_nutrition where recipe_version_id = 'ec68bf8e-3fbd-46e4-8ec1-1c2a6c7426b0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ec68bf8e-3fbd-46e4-8ec1-1c2a6c7426b0', 'protein', 25, 'as-fed'),
  ('ec68bf8e-3fbd-46e4-8ec1-1c2a6c7426b0', 'fat', 11, 'as-fed'),
  ('ec68bf8e-3fbd-46e4-8ec1-1c2a6c7426b0', 'fiber', 2, 'as-fed'),
  ('ec68bf8e-3fbd-46e4-8ec1-1c2a6c7426b0', 'ash', 6, 'as-fed'),
  ('ec68bf8e-3fbd-46e4-8ec1-1c2a6c7426b0', 'moisture', 8, 'as-fed'),
  ('ec68bf8e-3fbd-46e4-8ec1-1c2a6c7426b0', 'kcal', 364, 'as-fed'),
  ('ec68bf8e-3fbd-46e4-8ec1-1c2a6c7426b0', 'calcium', 1.4, 'as-fed'),
  ('ec68bf8e-3fbd-46e4-8ec1-1c2a6c7426b0', 'phosphorus', 0.9, 'as-fed'),
  ('ec68bf8e-3fbd-46e4-8ec1-1c2a6c7426b0', 'omega3', 0.49, 'as-fed'),
  ('ec68bf8e-3fbd-46e4-8ec1-1c2a6c7426b0', 'omega6', 2.28, 'as-fed');

-- WOOOF — Regular Hondenvoer - Krokant (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://wooof.com/wooof-regular-hondenvoer-krokant/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3590 kcal/kg naar 359 kcal/100 g. Niet vermeld: omega-3, omega-6.'
 where id = '9237f59e-7b1b-4a20-ad56-f90aff57af6b';
delete from public.recipe_nutrition where recipe_version_id = '9237f59e-7b1b-4a20-ad56-f90aff57af6b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9237f59e-7b1b-4a20-ad56-f90aff57af6b', 'protein', 23, 'as-fed'),
  ('9237f59e-7b1b-4a20-ad56-f90aff57af6b', 'fat', 13, 'as-fed'),
  ('9237f59e-7b1b-4a20-ad56-f90aff57af6b', 'fiber', 3, 'as-fed'),
  ('9237f59e-7b1b-4a20-ad56-f90aff57af6b', 'ash', 6, 'as-fed'),
  ('9237f59e-7b1b-4a20-ad56-f90aff57af6b', 'moisture', 8, 'as-fed'),
  ('9237f59e-7b1b-4a20-ad56-f90aff57af6b', 'kcal', 359, 'as-fed'),
  ('9237f59e-7b1b-4a20-ad56-f90aff57af6b', 'calcium', 1.3, 'as-fed'),
  ('9237f59e-7b1b-4a20-ad56-f90aff57af6b', 'phosphorus', 0.9, 'as-fed');

-- WOOOF — Rund & Kip Worst (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://wooof.com/WOOOF-verse-kip-rund-worst/9-kg',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Geen metaboliseerbare energie met waarde op de pagina vermeld, daarom kcal null. Niet vermeld: calcium, fosfor, omega-3, omega-6.'
 where id = '1449e73d-19c3-4c69-a420-b4c3a8421ff6';
delete from public.recipe_nutrition where recipe_version_id = '1449e73d-19c3-4c69-a420-b4c3a8421ff6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1449e73d-19c3-4c69-a420-b4c3a8421ff6', 'protein', 13, 'as-fed'),
  ('1449e73d-19c3-4c69-a420-b4c3a8421ff6', 'fat', 10, 'as-fed'),
  ('1449e73d-19c3-4c69-a420-b4c3a8421ff6', 'fiber', 0.5, 'as-fed'),
  ('1449e73d-19c3-4c69-a420-b4c3a8421ff6', 'ash', 3, 'as-fed'),
  ('1449e73d-19c3-4c69-a420-b4c3a8421ff6', 'moisture', 67, 'as-fed');

-- WOOOF — Rund Worst - Graanvrij (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://wooof.com/WOOOF-Rund-worst-Graanvrij/10-stuks',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Geen metaboliseerbare energie met waarde op de pagina vermeld, daarom kcal null. Niet vermeld: calcium, fosfor, omega-3, omega-6.'
 where id = '49c225b4-ad2f-444f-bc2e-1001ee693346';
delete from public.recipe_nutrition where recipe_version_id = '49c225b4-ad2f-444f-bc2e-1001ee693346';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('49c225b4-ad2f-444f-bc2e-1001ee693346', 'protein', 13, 'as-fed'),
  ('49c225b4-ad2f-444f-bc2e-1001ee693346', 'fat', 10, 'as-fed'),
  ('49c225b4-ad2f-444f-bc2e-1001ee693346', 'fiber', 0.5, 'as-fed'),
  ('49c225b4-ad2f-444f-bc2e-1001ee693346', 'ash', 3, 'as-fed'),
  ('49c225b4-ad2f-444f-bc2e-1001ee693346', 'moisture', 67, 'as-fed');

-- WOOOF — Senior Hondenvoer - Geperst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://wooof.com/WOOOF-senior/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3495 kcal/kg naar 349.5 kcal/100 g. Omega-3 omgerekend van g/kg naar % (gedeeld door 10). Omega-6 omgerekend van g/kg naar % (gedeeld door 10).'
 where id = '7e9adb2f-8e0a-45df-b127-302dc32f7bba';
delete from public.recipe_nutrition where recipe_version_id = '7e9adb2f-8e0a-45df-b127-302dc32f7bba';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7e9adb2f-8e0a-45df-b127-302dc32f7bba', 'protein', 18, 'as-fed'),
  ('7e9adb2f-8e0a-45df-b127-302dc32f7bba', 'fat', 8, 'as-fed'),
  ('7e9adb2f-8e0a-45df-b127-302dc32f7bba', 'fiber', 2.2, 'as-fed'),
  ('7e9adb2f-8e0a-45df-b127-302dc32f7bba', 'ash', 4, 'as-fed'),
  ('7e9adb2f-8e0a-45df-b127-302dc32f7bba', 'moisture', 8, 'as-fed'),
  ('7e9adb2f-8e0a-45df-b127-302dc32f7bba', 'kcal', 349.5, 'as-fed'),
  ('7e9adb2f-8e0a-45df-b127-302dc32f7bba', 'calcium', 0.7, 'as-fed'),
  ('7e9adb2f-8e0a-45df-b127-302dc32f7bba', 'phosphorus', 0.6, 'as-fed'),
  ('7e9adb2f-8e0a-45df-b127-302dc32f7bba', 'omega3', 0.5, 'as-fed'),
  ('7e9adb2f-8e0a-45df-b127-302dc32f7bba', 'omega6', 0.74, 'as-fed');

-- WOOOF — Senior Hondenvoer - Krokant (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://wooof.com/wooof-senior-hondenvoer-krokant/18kg',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3755 kcal/kg naar 375.5 kcal/100 g. Niet vermeld: omega-3, omega-6.'
 where id = '9697720a-9995-4b0e-9dfd-0c4f57eec8be';
delete from public.recipe_nutrition where recipe_version_id = '9697720a-9995-4b0e-9dfd-0c4f57eec8be';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9697720a-9995-4b0e-9dfd-0c4f57eec8be', 'protein', 18, 'as-fed'),
  ('9697720a-9995-4b0e-9dfd-0c4f57eec8be', 'fat', 8, 'as-fed'),
  ('9697720a-9995-4b0e-9dfd-0c4f57eec8be', 'fiber', 3, 'as-fed'),
  ('9697720a-9995-4b0e-9dfd-0c4f57eec8be', 'ash', 5, 'as-fed'),
  ('9697720a-9995-4b0e-9dfd-0c4f57eec8be', 'moisture', 8, 'as-fed'),
  ('9697720a-9995-4b0e-9dfd-0c4f57eec8be', 'kcal', 375.5, 'as-fed'),
  ('9697720a-9995-4b0e-9dfd-0c4f57eec8be', 'calcium', 0.9, 'as-fed'),
  ('9697720a-9995-4b0e-9dfd-0c4f57eec8be', 'phosphorus', 0.7, 'as-fed');

-- WOOOF — Vis Trio Worst (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://wooof.com/wooof-vis-trio-worst-vers/10-pack',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Geen metaboliseerbare energie met waarde op de pagina vermeld, daarom kcal null. Niet vermeld: calcium, fosfor, omega-3, omega-6.'
 where id = 'e774f913-93b2-4671-9428-7be0e8d2bdd3';
delete from public.recipe_nutrition where recipe_version_id = 'e774f913-93b2-4671-9428-7be0e8d2bdd3';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e774f913-93b2-4671-9428-7be0e8d2bdd3', 'protein', 15.1, 'as-fed'),
  ('e774f913-93b2-4671-9428-7be0e8d2bdd3', 'fat', 18.5, 'as-fed'),
  ('e774f913-93b2-4671-9428-7be0e8d2bdd3', 'fiber', 0.9, 'as-fed'),
  ('e774f913-93b2-4671-9428-7be0e8d2bdd3', 'ash', 2.9, 'as-fed'),
  ('e774f913-93b2-4671-9428-7be0e8d2bdd3', 'moisture', 54.6, 'as-fed');

-- WOOOF — Zalm & Aardappel Hondenbrokken - Geperst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://wooof.com/WOOOF-zalm-aardappel-18kg/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3765 kcal/kg naar 376.5 kcal/100 g. Niet vermeld: vocht, omega-3, omega-6.'
 where id = 'a3c6c78a-1354-4f36-acab-69e3c961b672';
delete from public.recipe_nutrition where recipe_version_id = 'a3c6c78a-1354-4f36-acab-69e3c961b672';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a3c6c78a-1354-4f36-acab-69e3c961b672', 'protein', 26, 'as-fed'),
  ('a3c6c78a-1354-4f36-acab-69e3c961b672', 'fat', 14, 'as-fed'),
  ('a3c6c78a-1354-4f36-acab-69e3c961b672', 'fiber', 2.5, 'as-fed'),
  ('a3c6c78a-1354-4f36-acab-69e3c961b672', 'ash', 5, 'as-fed'),
  ('a3c6c78a-1354-4f36-acab-69e3c961b672', 'kcal', 376.5, 'as-fed'),
  ('a3c6c78a-1354-4f36-acab-69e3c961b672', 'calcium', 0.9, 'as-fed'),
  ('a3c6c78a-1354-4f36-acab-69e3c961b672', 'phosphorus', 0.7, 'as-fed');

-- WOOOF — Zalm & Kip Worst (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://wooof.com/WOOOF-Zalm-Kip-Worst-Vers/10-stuks',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Geen metaboliseerbare energie met waarde op de pagina vermeld, daarom kcal null. Niet vermeld: calcium, fosfor, omega-3, omega-6.'
 where id = '1fda1d27-6e21-4489-a2b5-aea283bcb262';
delete from public.recipe_nutrition where recipe_version_id = '1fda1d27-6e21-4489-a2b5-aea283bcb262';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1fda1d27-6e21-4489-a2b5-aea283bcb262', 'protein', 15.6, 'as-fed'),
  ('1fda1d27-6e21-4489-a2b5-aea283bcb262', 'fat', 9.1, 'as-fed'),
  ('1fda1d27-6e21-4489-a2b5-aea283bcb262', 'fiber', 3.8, 'as-fed'),
  ('1fda1d27-6e21-4489-a2b5-aea283bcb262', 'ash', 1.8, 'as-fed'),
  ('1fda1d27-6e21-4489-a2b5-aea283bcb262', 'moisture', 63.1, 'as-fed');

-- WOOOF — Zalm Hondenbrokken - Geperst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://wooof.com/WOOOF-zalm/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3695 kcal/kg naar 369.5 kcal/100 g. Omega-3 omgerekend van g/kg naar % (gedeeld door 10). Omega-6 omgerekend van g/kg naar % (gedeeld door 10).'
 where id = 'f1fa0564-124a-4baa-b663-c54b21e307e7';
delete from public.recipe_nutrition where recipe_version_id = 'f1fa0564-124a-4baa-b663-c54b21e307e7';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f1fa0564-124a-4baa-b663-c54b21e307e7', 'protein', 27, 'as-fed'),
  ('f1fa0564-124a-4baa-b663-c54b21e307e7', 'fat', 12, 'as-fed'),
  ('f1fa0564-124a-4baa-b663-c54b21e307e7', 'fiber', 2, 'as-fed'),
  ('f1fa0564-124a-4baa-b663-c54b21e307e7', 'ash', 5, 'as-fed'),
  ('f1fa0564-124a-4baa-b663-c54b21e307e7', 'moisture', 9.4, 'as-fed'),
  ('f1fa0564-124a-4baa-b663-c54b21e307e7', 'kcal', 369.5, 'as-fed'),
  ('f1fa0564-124a-4baa-b663-c54b21e307e7', 'calcium', 1.2, 'as-fed'),
  ('f1fa0564-124a-4baa-b663-c54b21e307e7', 'phosphorus', 0.8, 'as-fed'),
  ('f1fa0564-124a-4baa-b663-c54b21e307e7', 'omega3', 0.54, 'as-fed'),
  ('f1fa0564-124a-4baa-b663-c54b21e307e7', 'omega6', 2.44, 'as-fed');

-- WOOOF — Zalm Hondenvoer - Krokant (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://wooof.com/wooof-zalm-hondenvoer-krokant/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3745 kcal/kg naar 374.5 kcal/100 g. Niet vermeld: omega-3, omega-6.'
 where id = 'aec92be9-a2c6-4a5d-9a9f-b072b791eacb';
delete from public.recipe_nutrition where recipe_version_id = 'aec92be9-a2c6-4a5d-9a9f-b072b791eacb';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('aec92be9-a2c6-4a5d-9a9f-b072b791eacb', 'protein', 24, 'as-fed'),
  ('aec92be9-a2c6-4a5d-9a9f-b072b791eacb', 'fat', 13, 'as-fed'),
  ('aec92be9-a2c6-4a5d-9a9f-b072b791eacb', 'fiber', 2, 'as-fed'),
  ('aec92be9-a2c6-4a5d-9a9f-b072b791eacb', 'ash', 4.5, 'as-fed'),
  ('aec92be9-a2c6-4a5d-9a9f-b072b791eacb', 'moisture', 8, 'as-fed'),
  ('aec92be9-a2c6-4a5d-9a9f-b072b791eacb', 'kcal', 374.5, 'as-fed'),
  ('aec92be9-a2c6-4a5d-9a9f-b072b791eacb', 'calcium', 0.9, 'as-fed'),
  ('aec92be9-a2c6-4a5d-9a9f-b072b791eacb', 'phosphorus', 0.9, 'as-fed');

-- Acana — Adult Dog Recipe (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-adult.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3510 kcal/kg naar 351 kcal/100 g.'
 where id = 'c9f85845-7b23-4ce6-94e4-4bc6de85dfbb';
delete from public.recipe_nutrition where recipe_version_id = 'c9f85845-7b23-4ce6-94e4-4bc6de85dfbb';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c9f85845-7b23-4ce6-94e4-4bc6de85dfbb', 'protein', 29, 'as-fed'),
  ('c9f85845-7b23-4ce6-94e4-4bc6de85dfbb', 'fat', 17, 'as-fed'),
  ('c9f85845-7b23-4ce6-94e4-4bc6de85dfbb', 'fiber', 5, 'as-fed'),
  ('c9f85845-7b23-4ce6-94e4-4bc6de85dfbb', 'ash', 7, 'as-fed'),
  ('c9f85845-7b23-4ce6-94e4-4bc6de85dfbb', 'moisture', 12, 'as-fed'),
  ('c9f85845-7b23-4ce6-94e4-4bc6de85dfbb', 'kcal', 351, 'as-fed'),
  ('c9f85845-7b23-4ce6-94e4-4bc6de85dfbb', 'calcium', 1.3, 'as-fed'),
  ('c9f85845-7b23-4ce6-94e4-4bc6de85dfbb', 'phosphorus', 1, 'as-fed'),
  ('c9f85845-7b23-4ce6-94e4-4bc6de85dfbb', 'omega3', 0.8, 'as-fed'),
  ('c9f85845-7b23-4ce6-94e4-4bc6de85dfbb', 'omega6', 2.6, 'as-fed');

-- Acana — Adult Large Breed Recipe (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-adult-large.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3375 kcal/kg naar 337.5 kcal/100 g.'
 where id = 'b82e27df-2b0a-4726-8501-9bcae3e4891e';
delete from public.recipe_nutrition where recipe_version_id = 'b82e27df-2b0a-4726-8501-9bcae3e4891e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b82e27df-2b0a-4726-8501-9bcae3e4891e', 'protein', 31, 'as-fed'),
  ('b82e27df-2b0a-4726-8501-9bcae3e4891e', 'fat', 15, 'as-fed'),
  ('b82e27df-2b0a-4726-8501-9bcae3e4891e', 'fiber', 6, 'as-fed'),
  ('b82e27df-2b0a-4726-8501-9bcae3e4891e', 'ash', 7, 'as-fed'),
  ('b82e27df-2b0a-4726-8501-9bcae3e4891e', 'moisture', 12, 'as-fed'),
  ('b82e27df-2b0a-4726-8501-9bcae3e4891e', 'kcal', 337.5, 'as-fed'),
  ('b82e27df-2b0a-4726-8501-9bcae3e4891e', 'calcium', 1.4, 'as-fed'),
  ('b82e27df-2b0a-4726-8501-9bcae3e4891e', 'phosphorus', 1.1, 'as-fed'),
  ('b82e27df-2b0a-4726-8501-9bcae3e4891e', 'omega3', 0.8, 'as-fed'),
  ('b82e27df-2b0a-4726-8501-9bcae3e4891e', 'omega6', 2.4, 'as-fed');

-- Acana — Adult Small Breed Recipe (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.acana.com/en-CA/dogs/dog-food/adult-small-breed-recipe/ns-aca-adult-small.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3510 kcal/kg naar 351 kcal/100 g.'
 where id = '775d622a-34f1-4121-9fa7-ce2023bd3cae';
delete from public.recipe_nutrition where recipe_version_id = '775d622a-34f1-4121-9fa7-ce2023bd3cae';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('775d622a-34f1-4121-9fa7-ce2023bd3cae', 'protein', 31, 'as-fed'),
  ('775d622a-34f1-4121-9fa7-ce2023bd3cae', 'fat', 17, 'as-fed'),
  ('775d622a-34f1-4121-9fa7-ce2023bd3cae', 'fiber', 5, 'as-fed'),
  ('775d622a-34f1-4121-9fa7-ce2023bd3cae', 'ash', 7, 'as-fed'),
  ('775d622a-34f1-4121-9fa7-ce2023bd3cae', 'moisture', 12, 'as-fed'),
  ('775d622a-34f1-4121-9fa7-ce2023bd3cae', 'kcal', 351, 'as-fed'),
  ('775d622a-34f1-4121-9fa7-ce2023bd3cae', 'calcium', 1.4, 'as-fed'),
  ('775d622a-34f1-4121-9fa7-ce2023bd3cae', 'phosphorus', 1.1, 'as-fed'),
  ('775d622a-34f1-4121-9fa7-ce2023bd3cae', 'omega3', 1, 'as-fed'),
  ('775d622a-34f1-4121-9fa7-ce2023bd3cae', 'omega6', 2.6, 'as-fed');

-- Acana — Coldwater Fish Recipe (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-cold-water-fish.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3545 kcal/kg naar 354.5 kcal/100 g.'
 where id = 'edc62dea-6dec-43b3-9689-730e76e1bfab';
delete from public.recipe_nutrition where recipe_version_id = 'edc62dea-6dec-43b3-9689-730e76e1bfab';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('edc62dea-6dec-43b3-9689-730e76e1bfab', 'protein', 29, 'as-fed'),
  ('edc62dea-6dec-43b3-9689-730e76e1bfab', 'fat', 17, 'as-fed'),
  ('edc62dea-6dec-43b3-9689-730e76e1bfab', 'fiber', 4, 'as-fed'),
  ('edc62dea-6dec-43b3-9689-730e76e1bfab', 'ash', 7, 'as-fed'),
  ('edc62dea-6dec-43b3-9689-730e76e1bfab', 'moisture', 12, 'as-fed'),
  ('edc62dea-6dec-43b3-9689-730e76e1bfab', 'kcal', 354.5, 'as-fed'),
  ('edc62dea-6dec-43b3-9689-730e76e1bfab', 'calcium', 1.2, 'as-fed'),
  ('edc62dea-6dec-43b3-9689-730e76e1bfab', 'phosphorus', 1, 'as-fed'),
  ('edc62dea-6dec-43b3-9689-730e76e1bfab', 'omega3', 1, 'as-fed'),
  ('edc62dea-6dec-43b3-9689-730e76e1bfab', 'omega6', 2, 'as-fed');

-- Acana — Free-Run Duck (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-singles-duck-new.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3393 kcal/kg naar 339.3 kcal/100 g.'
 where id = '38c92e8c-a55f-49bc-99fd-4369da553c75';
delete from public.recipe_nutrition where recipe_version_id = '38c92e8c-a55f-49bc-99fd-4369da553c75';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('38c92e8c-a55f-49bc-99fd-4369da553c75', 'protein', 31, 'as-fed'),
  ('38c92e8c-a55f-49bc-99fd-4369da553c75', 'fat', 15, 'as-fed'),
  ('38c92e8c-a55f-49bc-99fd-4369da553c75', 'fiber', 5, 'as-fed'),
  ('38c92e8c-a55f-49bc-99fd-4369da553c75', 'ash', 7.5, 'as-fed'),
  ('38c92e8c-a55f-49bc-99fd-4369da553c75', 'moisture', 12, 'as-fed'),
  ('38c92e8c-a55f-49bc-99fd-4369da553c75', 'kcal', 339.3, 'as-fed'),
  ('38c92e8c-a55f-49bc-99fd-4369da553c75', 'calcium', 1.3, 'as-fed'),
  ('38c92e8c-a55f-49bc-99fd-4369da553c75', 'phosphorus', 0.9, 'as-fed'),
  ('38c92e8c-a55f-49bc-99fd-4369da553c75', 'omega3', 0.8, 'as-fed'),
  ('38c92e8c-a55f-49bc-99fd-4369da553c75', 'omega6', 2.2, 'as-fed');

-- Acana — Grass-fed Lamb (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-singles-lamb-new.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3393 kcal/kg naar 339.3 kcal/100 g.'
 where id = 'a64ad426-e7f4-4baf-b484-d6025934cae4';
delete from public.recipe_nutrition where recipe_version_id = 'a64ad426-e7f4-4baf-b484-d6025934cae4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a64ad426-e7f4-4baf-b484-d6025934cae4', 'protein', 31, 'as-fed'),
  ('a64ad426-e7f4-4baf-b484-d6025934cae4', 'fat', 15, 'as-fed'),
  ('a64ad426-e7f4-4baf-b484-d6025934cae4', 'fiber', 5, 'as-fed'),
  ('a64ad426-e7f4-4baf-b484-d6025934cae4', 'ash', 7.5, 'as-fed'),
  ('a64ad426-e7f4-4baf-b484-d6025934cae4', 'moisture', 12, 'as-fed'),
  ('a64ad426-e7f4-4baf-b484-d6025934cae4', 'kcal', 339.3, 'as-fed'),
  ('a64ad426-e7f4-4baf-b484-d6025934cae4', 'calcium', 1.5, 'as-fed'),
  ('a64ad426-e7f4-4baf-b484-d6025934cae4', 'phosphorus', 1.1, 'as-fed'),
  ('a64ad426-e7f4-4baf-b484-d6025934cae4', 'omega3', 0.8, 'as-fed'),
  ('a64ad426-e7f4-4baf-b484-d6025934cae4', 'omega6', 1.8, 'as-fed');

-- Acana — Grasslands (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.acana.com/en-CA/dogs/dog-food/highest-protein%2C-grasslands/ns-aca-grasslands.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3510 kcal/kg naar 351 kcal/100 g.'
 where id = '75b93af5-77d6-498e-aafd-e3e006a3cfeb';
delete from public.recipe_nutrition where recipe_version_id = '75b93af5-77d6-498e-aafd-e3e006a3cfeb';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('75b93af5-77d6-498e-aafd-e3e006a3cfeb', 'protein', 35, 'as-fed'),
  ('75b93af5-77d6-498e-aafd-e3e006a3cfeb', 'fat', 17, 'as-fed'),
  ('75b93af5-77d6-498e-aafd-e3e006a3cfeb', 'fiber', 4, 'as-fed'),
  ('75b93af5-77d6-498e-aafd-e3e006a3cfeb', 'ash', 8, 'as-fed'),
  ('75b93af5-77d6-498e-aafd-e3e006a3cfeb', 'moisture', 12, 'as-fed'),
  ('75b93af5-77d6-498e-aafd-e3e006a3cfeb', 'kcal', 351, 'as-fed'),
  ('75b93af5-77d6-498e-aafd-e3e006a3cfeb', 'calcium', 1.6, 'as-fed'),
  ('75b93af5-77d6-498e-aafd-e3e006a3cfeb', 'phosphorus', 1.1, 'as-fed'),
  ('75b93af5-77d6-498e-aafd-e3e006a3cfeb', 'omega3', 1, 'as-fed'),
  ('75b93af5-77d6-498e-aafd-e3e006a3cfeb', 'omega6', 2.3, 'as-fed');

-- Acana — Light & Fit Recipe (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.acana.com/en-CA/dogs/dog-food/light-and-fit-recipe/ns-aca-light-fit.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3070 kcal/kg naar 307 kcal/100 g.'
 where id = 'ec9a02df-0b62-4cbf-82af-00c3e0c16b0c';
delete from public.recipe_nutrition where recipe_version_id = 'ec9a02df-0b62-4cbf-82af-00c3e0c16b0c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ec9a02df-0b62-4cbf-82af-00c3e0c16b0c', 'protein', 35, 'as-fed'),
  ('ec9a02df-0b62-4cbf-82af-00c3e0c16b0c', 'fat', 11, 'as-fed'),
  ('ec9a02df-0b62-4cbf-82af-00c3e0c16b0c', 'fiber', 8, 'as-fed'),
  ('ec9a02df-0b62-4cbf-82af-00c3e0c16b0c', 'ash', 7, 'as-fed'),
  ('ec9a02df-0b62-4cbf-82af-00c3e0c16b0c', 'moisture', 12, 'as-fed'),
  ('ec9a02df-0b62-4cbf-82af-00c3e0c16b0c', 'kcal', 307, 'as-fed'),
  ('ec9a02df-0b62-4cbf-82af-00c3e0c16b0c', 'calcium', 1.4, 'as-fed'),
  ('ec9a02df-0b62-4cbf-82af-00c3e0c16b0c', 'phosphorus', 1, 'as-fed'),
  ('ec9a02df-0b62-4cbf-82af-00c3e0c16b0c', 'omega3', 0.4, 'as-fed'),
  ('ec9a02df-0b62-4cbf-82af-00c3e0c16b0c', 'omega6', 2.2, 'as-fed');

-- Acana — Pacifica (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-pacifica.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3850 kcal/kg naar 385 kcal/100 g.'
 where id = '4c3f13c6-d9c6-481e-9dd8-8153e2bf83cc';
delete from public.recipe_nutrition where recipe_version_id = '4c3f13c6-d9c6-481e-9dd8-8153e2bf83cc';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4c3f13c6-d9c6-481e-9dd8-8153e2bf83cc', 'protein', 35, 'as-fed'),
  ('4c3f13c6-d9c6-481e-9dd8-8153e2bf83cc', 'fat', 17, 'as-fed'),
  ('4c3f13c6-d9c6-481e-9dd8-8153e2bf83cc', 'fiber', 6, 'as-fed'),
  ('4c3f13c6-d9c6-481e-9dd8-8153e2bf83cc', 'ash', 7, 'as-fed'),
  ('4c3f13c6-d9c6-481e-9dd8-8153e2bf83cc', 'moisture', 12, 'as-fed'),
  ('4c3f13c6-d9c6-481e-9dd8-8153e2bf83cc', 'kcal', 385, 'as-fed'),
  ('4c3f13c6-d9c6-481e-9dd8-8153e2bf83cc', 'calcium', 1.3, 'as-fed'),
  ('4c3f13c6-d9c6-481e-9dd8-8153e2bf83cc', 'phosphorus', 1, 'as-fed'),
  ('4c3f13c6-d9c6-481e-9dd8-8153e2bf83cc', 'omega3', 2, 'as-fed'),
  ('4c3f13c6-d9c6-481e-9dd8-8153e2bf83cc', 'omega6', 2, 'as-fed');

-- Acana — Prairie Poultry (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-prairiepoultry.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3443 kcal/kg naar 344.3 kcal/100 g.'
 where id = '66a546ec-ec81-4d37-beb6-d4e1269a6817';
delete from public.recipe_nutrition where recipe_version_id = '66a546ec-ec81-4d37-beb6-d4e1269a6817';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('66a546ec-ec81-4d37-beb6-d4e1269a6817', 'protein', 27, 'as-fed'),
  ('66a546ec-ec81-4d37-beb6-d4e1269a6817', 'fat', 16, 'as-fed'),
  ('66a546ec-ec81-4d37-beb6-d4e1269a6817', 'fiber', 5, 'as-fed'),
  ('66a546ec-ec81-4d37-beb6-d4e1269a6817', 'ash', 7.5, 'as-fed'),
  ('66a546ec-ec81-4d37-beb6-d4e1269a6817', 'moisture', 12, 'as-fed'),
  ('66a546ec-ec81-4d37-beb6-d4e1269a6817', 'kcal', 344.3, 'as-fed'),
  ('66a546ec-ec81-4d37-beb6-d4e1269a6817', 'calcium', 1.1, 'as-fed'),
  ('66a546ec-ec81-4d37-beb6-d4e1269a6817', 'phosphorus', 0.9, 'as-fed'),
  ('66a546ec-ec81-4d37-beb6-d4e1269a6817', 'omega3', 0.5, 'as-fed'),
  ('66a546ec-ec81-4d37-beb6-d4e1269a6817', 'omega6', 2.6, 'as-fed');

-- Acana — Puppy Large Breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-puppy-large.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3375 kcal/kg naar 337.5 kcal/100 g.'
 where id = '96414ba1-5b0e-453d-8426-8efb4cd3680e';
delete from public.recipe_nutrition where recipe_version_id = '96414ba1-5b0e-453d-8426-8efb4cd3680e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('96414ba1-5b0e-453d-8426-8efb4cd3680e', 'protein', 33, 'as-fed'),
  ('96414ba1-5b0e-453d-8426-8efb4cd3680e', 'fat', 15, 'as-fed'),
  ('96414ba1-5b0e-453d-8426-8efb4cd3680e', 'fiber', 6, 'as-fed'),
  ('96414ba1-5b0e-453d-8426-8efb4cd3680e', 'ash', 7, 'as-fed'),
  ('96414ba1-5b0e-453d-8426-8efb4cd3680e', 'moisture', 12, 'as-fed'),
  ('96414ba1-5b0e-453d-8426-8efb4cd3680e', 'kcal', 337.5, 'as-fed'),
  ('96414ba1-5b0e-453d-8426-8efb4cd3680e', 'calcium', 1.4, 'as-fed'),
  ('96414ba1-5b0e-453d-8426-8efb4cd3680e', 'phosphorus', 1, 'as-fed'),
  ('96414ba1-5b0e-453d-8426-8efb4cd3680e', 'omega3', 1.2, 'as-fed'),
  ('96414ba1-5b0e-453d-8426-8efb4cd3680e', 'omega6', 2.4, 'as-fed');

-- Acana — Puppy Recipe (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-puppy-junior.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3660 kcal/kg naar 366 kcal/100 g.'
 where id = '252a3726-5e73-416f-b676-ae4260dbc690';
delete from public.recipe_nutrition where recipe_version_id = '252a3726-5e73-416f-b676-ae4260dbc690';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('252a3726-5e73-416f-b676-ae4260dbc690', 'protein', 33, 'as-fed'),
  ('252a3726-5e73-416f-b676-ae4260dbc690', 'fat', 20, 'as-fed'),
  ('252a3726-5e73-416f-b676-ae4260dbc690', 'fiber', 5, 'as-fed'),
  ('252a3726-5e73-416f-b676-ae4260dbc690', 'ash', 7, 'as-fed'),
  ('252a3726-5e73-416f-b676-ae4260dbc690', 'moisture', 12, 'as-fed'),
  ('252a3726-5e73-416f-b676-ae4260dbc690', 'kcal', 366, 'as-fed'),
  ('252a3726-5e73-416f-b676-ae4260dbc690', 'calcium', 1.5, 'as-fed'),
  ('252a3726-5e73-416f-b676-ae4260dbc690', 'phosphorus', 1.1, 'as-fed'),
  ('252a3726-5e73-416f-b676-ae4260dbc690', 'omega3', 1, 'as-fed'),
  ('252a3726-5e73-416f-b676-ae4260dbc690', 'omega6', 2.7, 'as-fed');

-- Acana — Puppy Small Breed Recipe (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-puppy-small.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3660 kcal/kg naar 366 kcal/100 g.'
 where id = '21f70bb8-97bb-443b-a2d0-96c8f03a2135';
delete from public.recipe_nutrition where recipe_version_id = '21f70bb8-97bb-443b-a2d0-96c8f03a2135';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('21f70bb8-97bb-443b-a2d0-96c8f03a2135', 'protein', 33, 'as-fed'),
  ('21f70bb8-97bb-443b-a2d0-96c8f03a2135', 'fat', 20, 'as-fed'),
  ('21f70bb8-97bb-443b-a2d0-96c8f03a2135', 'fiber', 5, 'as-fed'),
  ('21f70bb8-97bb-443b-a2d0-96c8f03a2135', 'ash', 7, 'as-fed'),
  ('21f70bb8-97bb-443b-a2d0-96c8f03a2135', 'moisture', 12, 'as-fed'),
  ('21f70bb8-97bb-443b-a2d0-96c8f03a2135', 'kcal', 366, 'as-fed'),
  ('21f70bb8-97bb-443b-a2d0-96c8f03a2135', 'calcium', 1.5, 'as-fed'),
  ('21f70bb8-97bb-443b-a2d0-96c8f03a2135', 'phosphorus', 1.1, 'as-fed'),
  ('21f70bb8-97bb-443b-a2d0-96c8f03a2135', 'omega3', 1, 'as-fed'),
  ('21f70bb8-97bb-443b-a2d0-96c8f03a2135', 'omega6', 2.7, 'as-fed');

-- Acana — Ranchlands (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-ranchlands.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3790 kcal/kg naar 379 kcal/100 g.'
 where id = '2e44b836-b852-4252-bc14-1557099afcd6';
delete from public.recipe_nutrition where recipe_version_id = '2e44b836-b852-4252-bc14-1557099afcd6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2e44b836-b852-4252-bc14-1557099afcd6', 'protein', 35, 'as-fed'),
  ('2e44b836-b852-4252-bc14-1557099afcd6', 'fat', 17, 'as-fed'),
  ('2e44b836-b852-4252-bc14-1557099afcd6', 'fiber', 6, 'as-fed'),
  ('2e44b836-b852-4252-bc14-1557099afcd6', 'ash', 8.5, 'as-fed'),
  ('2e44b836-b852-4252-bc14-1557099afcd6', 'moisture', 12, 'as-fed'),
  ('2e44b836-b852-4252-bc14-1557099afcd6', 'kcal', 379, 'as-fed'),
  ('2e44b836-b852-4252-bc14-1557099afcd6', 'calcium', 1.8, 'as-fed'),
  ('2e44b836-b852-4252-bc14-1557099afcd6', 'phosphorus', 1.3, 'as-fed'),
  ('2e44b836-b852-4252-bc14-1557099afcd6', 'omega3', 1, 'as-fed'),
  ('2e44b836-b852-4252-bc14-1557099afcd6', 'omega6', 2, 'as-fed');

-- Acana — Red Meat (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-classicred.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3425 kcal/kg naar 342.5 kcal/100 g.'
 where id = '4c12a41b-eefc-487f-94f5-a746b1ff55ca';
delete from public.recipe_nutrition where recipe_version_id = '4c12a41b-eefc-487f-94f5-a746b1ff55ca';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4c12a41b-eefc-487f-94f5-a746b1ff55ca', 'protein', 27, 'as-fed'),
  ('4c12a41b-eefc-487f-94f5-a746b1ff55ca', 'fat', 16, 'as-fed'),
  ('4c12a41b-eefc-487f-94f5-a746b1ff55ca', 'fiber', 5, 'as-fed'),
  ('4c12a41b-eefc-487f-94f5-a746b1ff55ca', 'ash', 8, 'as-fed'),
  ('4c12a41b-eefc-487f-94f5-a746b1ff55ca', 'moisture', 12, 'as-fed'),
  ('4c12a41b-eefc-487f-94f5-a746b1ff55ca', 'kcal', 342.5, 'as-fed'),
  ('4c12a41b-eefc-487f-94f5-a746b1ff55ca', 'calcium', 1.6, 'as-fed'),
  ('4c12a41b-eefc-487f-94f5-a746b1ff55ca', 'phosphorus', 1.1, 'as-fed'),
  ('4c12a41b-eefc-487f-94f5-a746b1ff55ca', 'omega3', 0.3, 'as-fed'),
  ('4c12a41b-eefc-487f-94f5-a746b1ff55ca', 'omega6', 2.2, 'as-fed');

-- Acana — Red Meat Recipe (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-red-meat.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3475 kcal/kg naar 347.5 kcal/100 g.'
 where id = 'e9c6197e-c800-47ea-8e6d-7335c22c7e58';
delete from public.recipe_nutrition where recipe_version_id = 'e9c6197e-c800-47ea-8e6d-7335c22c7e58';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e9c6197e-c800-47ea-8e6d-7335c22c7e58', 'protein', 29, 'as-fed'),
  ('e9c6197e-c800-47ea-8e6d-7335c22c7e58', 'fat', 17, 'as-fed'),
  ('e9c6197e-c800-47ea-8e6d-7335c22c7e58', 'fiber', 4, 'as-fed'),
  ('e9c6197e-c800-47ea-8e6d-7335c22c7e58', 'ash', 9, 'as-fed'),
  ('e9c6197e-c800-47ea-8e6d-7335c22c7e58', 'moisture', 12, 'as-fed'),
  ('e9c6197e-c800-47ea-8e6d-7335c22c7e58', 'kcal', 347.5, 'as-fed'),
  ('e9c6197e-c800-47ea-8e6d-7335c22c7e58', 'calcium', 1.3, 'as-fed'),
  ('e9c6197e-c800-47ea-8e6d-7335c22c7e58', 'phosphorus', 1, 'as-fed'),
  ('e9c6197e-c800-47ea-8e6d-7335c22c7e58', 'omega3', 0.8, 'as-fed'),
  ('e9c6197e-c800-47ea-8e6d-7335c22c7e58', 'omega6', 2.1, 'as-fed');

-- Acana — Senior Recipe (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-senior.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3325 kcal/kg naar 332.5 kcal/100 g.'
 where id = 'aa5489e3-6f05-4a75-b9ed-94acc3f4edb2';
delete from public.recipe_nutrition where recipe_version_id = 'aa5489e3-6f05-4a75-b9ed-94acc3f4edb2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('aa5489e3-6f05-4a75-b9ed-94acc3f4edb2', 'protein', 33, 'as-fed'),
  ('aa5489e3-6f05-4a75-b9ed-94acc3f4edb2', 'fat', 14, 'as-fed'),
  ('aa5489e3-6f05-4a75-b9ed-94acc3f4edb2', 'fiber', 6, 'as-fed'),
  ('aa5489e3-6f05-4a75-b9ed-94acc3f4edb2', 'ash', 7, 'as-fed'),
  ('aa5489e3-6f05-4a75-b9ed-94acc3f4edb2', 'moisture', 12, 'as-fed'),
  ('aa5489e3-6f05-4a75-b9ed-94acc3f4edb2', 'kcal', 332.5, 'as-fed'),
  ('aa5489e3-6f05-4a75-b9ed-94acc3f4edb2', 'calcium', 1.5, 'as-fed'),
  ('aa5489e3-6f05-4a75-b9ed-94acc3f4edb2', 'phosphorus', 1.1, 'as-fed'),
  ('aa5489e3-6f05-4a75-b9ed-94acc3f4edb2', 'omega3', 0.8, 'as-fed'),
  ('aa5489e3-6f05-4a75-b9ed-94acc3f4edb2', 'omega6', 2.2, 'as-fed');

-- Acana — Singles Beef With Pumpkin Recipe (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-singles-beef-new.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3440 kcal/kg naar 344 kcal/100 g.'
 where id = 'a7bf1c2e-0f2c-497b-a12e-bcc008e2db11';
delete from public.recipe_nutrition where recipe_version_id = 'a7bf1c2e-0f2c-497b-a12e-bcc008e2db11';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a7bf1c2e-0f2c-497b-a12e-bcc008e2db11', 'protein', 31, 'as-fed'),
  ('a7bf1c2e-0f2c-497b-a12e-bcc008e2db11', 'fat', 17, 'as-fed'),
  ('a7bf1c2e-0f2c-497b-a12e-bcc008e2db11', 'fiber', 4, 'as-fed'),
  ('a7bf1c2e-0f2c-497b-a12e-bcc008e2db11', 'ash', 10, 'as-fed'),
  ('a7bf1c2e-0f2c-497b-a12e-bcc008e2db11', 'moisture', 12, 'as-fed'),
  ('a7bf1c2e-0f2c-497b-a12e-bcc008e2db11', 'kcal', 344, 'as-fed'),
  ('a7bf1c2e-0f2c-497b-a12e-bcc008e2db11', 'calcium', 1.8, 'as-fed'),
  ('a7bf1c2e-0f2c-497b-a12e-bcc008e2db11', 'phosphorus', 1.2, 'as-fed'),
  ('a7bf1c2e-0f2c-497b-a12e-bcc008e2db11', 'omega3', 0.8, 'as-fed'),
  ('a7bf1c2e-0f2c-497b-a12e-bcc008e2db11', 'omega6', 1.3, 'as-fed');

-- Acana — Sport & Agility Recipe (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-sport-agility.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3725 kcal/kg naar 372.5 kcal/100 g.'
 where id = '7393b617-a15e-4e5c-b9c7-6e42c5590805';
delete from public.recipe_nutrition where recipe_version_id = '7393b617-a15e-4e5c-b9c7-6e42c5590805';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7393b617-a15e-4e5c-b9c7-6e42c5590805', 'protein', 35, 'as-fed'),
  ('7393b617-a15e-4e5c-b9c7-6e42c5590805', 'fat', 22, 'as-fed'),
  ('7393b617-a15e-4e5c-b9c7-6e42c5590805', 'fiber', 5, 'as-fed'),
  ('7393b617-a15e-4e5c-b9c7-6e42c5590805', 'ash', 8, 'as-fed'),
  ('7393b617-a15e-4e5c-b9c7-6e42c5590805', 'moisture', 12, 'as-fed'),
  ('7393b617-a15e-4e5c-b9c7-6e42c5590805', 'kcal', 372.5, 'as-fed'),
  ('7393b617-a15e-4e5c-b9c7-6e42c5590805', 'calcium', 1.7, 'as-fed'),
  ('7393b617-a15e-4e5c-b9c7-6e42c5590805', 'phosphorus', 1.1, 'as-fed'),
  ('7393b617-a15e-4e5c-b9c7-6e42c5590805', 'omega3', 0.8, 'as-fed'),
  ('7393b617-a15e-4e5c-b9c7-6e42c5590805', 'omega6', 2.7, 'as-fed');

-- Acana — Wild Coast (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-wildcoast.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3443 kcal/kg naar 344.3 kcal/100 g.'
 where id = '59a40773-00d4-4339-8796-7d35dffc9df8';
delete from public.recipe_nutrition where recipe_version_id = '59a40773-00d4-4339-8796-7d35dffc9df8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('59a40773-00d4-4339-8796-7d35dffc9df8', 'protein', 27, 'as-fed'),
  ('59a40773-00d4-4339-8796-7d35dffc9df8', 'fat', 16, 'as-fed'),
  ('59a40773-00d4-4339-8796-7d35dffc9df8', 'fiber', 5, 'as-fed'),
  ('59a40773-00d4-4339-8796-7d35dffc9df8', 'ash', 7.5, 'as-fed'),
  ('59a40773-00d4-4339-8796-7d35dffc9df8', 'moisture', 12, 'as-fed'),
  ('59a40773-00d4-4339-8796-7d35dffc9df8', 'kcal', 344.3, 'as-fed'),
  ('59a40773-00d4-4339-8796-7d35dffc9df8', 'calcium', 1.2, 'as-fed'),
  ('59a40773-00d4-4339-8796-7d35dffc9df8', 'phosphorus', 0.9, 'as-fed'),
  ('59a40773-00d4-4339-8796-7d35dffc9df8', 'omega3', 1.1, 'as-fed'),
  ('59a40773-00d4-4339-8796-7d35dffc9df8', 'omega6', 2.6, 'as-fed');

-- Acana — Wild Prairie (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-wild-prairie.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3850 kcal/kg naar 385 kcal/100 g.'
 where id = 'd48b02bd-d8ff-426b-ab70-3dd59c954685';
delete from public.recipe_nutrition where recipe_version_id = 'd48b02bd-d8ff-426b-ab70-3dd59c954685';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d48b02bd-d8ff-426b-ab70-3dd59c954685', 'protein', 35, 'as-fed'),
  ('d48b02bd-d8ff-426b-ab70-3dd59c954685', 'fat', 17, 'as-fed'),
  ('d48b02bd-d8ff-426b-ab70-3dd59c954685', 'fiber', 6, 'as-fed'),
  ('d48b02bd-d8ff-426b-ab70-3dd59c954685', 'ash', 7, 'as-fed'),
  ('d48b02bd-d8ff-426b-ab70-3dd59c954685', 'moisture', 12, 'as-fed'),
  ('d48b02bd-d8ff-426b-ab70-3dd59c954685', 'kcal', 385, 'as-fed'),
  ('d48b02bd-d8ff-426b-ab70-3dd59c954685', 'calcium', 1.5, 'as-fed'),
  ('d48b02bd-d8ff-426b-ab70-3dd59c954685', 'phosphorus', 1.1, 'as-fed'),
  ('d48b02bd-d8ff-426b-ab70-3dd59c954685', 'omega3', 0.9, 'as-fed'),
  ('d48b02bd-d8ff-426b-ab70-3dd59c954685', 'omega6', 2.6, 'as-fed');

-- Acana — Yorkshire Pork (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-singles-pork-new.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3393 kcal/kg naar 339.3 kcal/100 g.'
 where id = 'b91e1b2f-3012-484c-a8db-f9a8b4946829';
delete from public.recipe_nutrition where recipe_version_id = 'b91e1b2f-3012-484c-a8db-f9a8b4946829';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b91e1b2f-3012-484c-a8db-f9a8b4946829', 'protein', 31, 'as-fed'),
  ('b91e1b2f-3012-484c-a8db-f9a8b4946829', 'fat', 15, 'as-fed'),
  ('b91e1b2f-3012-484c-a8db-f9a8b4946829', 'fiber', 5, 'as-fed'),
  ('b91e1b2f-3012-484c-a8db-f9a8b4946829', 'ash', 7.5, 'as-fed'),
  ('b91e1b2f-3012-484c-a8db-f9a8b4946829', 'moisture', 12, 'as-fed'),
  ('b91e1b2f-3012-484c-a8db-f9a8b4946829', 'kcal', 339.3, 'as-fed'),
  ('b91e1b2f-3012-484c-a8db-f9a8b4946829', 'calcium', 1.2, 'as-fed'),
  ('b91e1b2f-3012-484c-a8db-f9a8b4946829', 'phosphorus', 0.9, 'as-fed'),
  ('b91e1b2f-3012-484c-a8db-f9a8b4946829', 'omega3', 0.9, 'as-fed'),
  ('b91e1b2f-3012-484c-a8db-f9a8b4946829', 'omega6', 2.6, 'as-fed');

-- Cavom — compleet Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.cavom.nl/product/compleet/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina. De fabrikant vermeldt geen energie (kcal) en geen omega-3/omega-6; die blijven null.'
 where id = 'a3ff54c5-7601-4a1c-9ba2-4bf4748f96c7';
delete from public.recipe_nutrition where recipe_version_id = 'a3ff54c5-7601-4a1c-9ba2-4bf4748f96c7';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a3ff54c5-7601-4a1c-9ba2-4bf4748f96c7', 'protein', 24, 'as-fed'),
  ('a3ff54c5-7601-4a1c-9ba2-4bf4748f96c7', 'fat', 16.5, 'as-fed'),
  ('a3ff54c5-7601-4a1c-9ba2-4bf4748f96c7', 'fiber', 1.9, 'as-fed'),
  ('a3ff54c5-7601-4a1c-9ba2-4bf4748f96c7', 'ash', 6.5, 'as-fed'),
  ('a3ff54c5-7601-4a1c-9ba2-4bf4748f96c7', 'moisture', 7, 'as-fed'),
  ('a3ff54c5-7601-4a1c-9ba2-4bf4748f96c7', 'calcium', 1, 'as-fed'),
  ('a3ff54c5-7601-4a1c-9ba2-4bf4748f96c7', 'phosphorus', 0.8, 'as-fed');

-- Cavom — Compleet Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.cavom.nl/product/compleet/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De opdracht verwees naar de homepage; de analyse staat op de officiële productpagina van Compleet Adult, die als bron is gebruikt. Zelfde receptuur als de 5/20 kg-verpakking. Geen kcal en geen omega-3/omega-6 vermeld.'
 where id = '145b8b6d-a808-40b9-b69f-59f964a90a74';
delete from public.recipe_nutrition where recipe_version_id = '145b8b6d-a808-40b9-b69f-59f964a90a74';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('145b8b6d-a808-40b9-b69f-59f964a90a74', 'protein', 24, 'as-fed'),
  ('145b8b6d-a808-40b9-b69f-59f964a90a74', 'fat', 16.5, 'as-fed'),
  ('145b8b6d-a808-40b9-b69f-59f964a90a74', 'fiber', 1.9, 'as-fed'),
  ('145b8b6d-a808-40b9-b69f-59f964a90a74', 'ash', 6.5, 'as-fed'),
  ('145b8b6d-a808-40b9-b69f-59f964a90a74', 'moisture', 7, 'as-fed'),
  ('145b8b6d-a808-40b9-b69f-59f964a90a74', 'calcium', 1, 'as-fed'),
  ('145b8b6d-a808-40b9-b69f-59f964a90a74', 'phosphorus', 0.8, 'as-fed');

-- Cavom — compleet Diner (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.cavom.nl/product/compleet-diner/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina. De fabrikant vermeldt geen energie (kcal) en geen omega-3/omega-6; die blijven null.'
 where id = '9ea0a6d2-968c-48b3-9750-64abfaf65a27';
delete from public.recipe_nutrition where recipe_version_id = '9ea0a6d2-968c-48b3-9750-64abfaf65a27';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9ea0a6d2-968c-48b3-9750-64abfaf65a27', 'protein', 24, 'as-fed'),
  ('9ea0a6d2-968c-48b3-9750-64abfaf65a27', 'fat', 16.5, 'as-fed'),
  ('9ea0a6d2-968c-48b3-9750-64abfaf65a27', 'fiber', 1.9, 'as-fed'),
  ('9ea0a6d2-968c-48b3-9750-64abfaf65a27', 'ash', 7, 'as-fed'),
  ('9ea0a6d2-968c-48b3-9750-64abfaf65a27', 'moisture', 7, 'as-fed'),
  ('9ea0a6d2-968c-48b3-9750-64abfaf65a27', 'calcium', 1, 'as-fed'),
  ('9ea0a6d2-968c-48b3-9750-64abfaf65a27', 'phosphorus', 0.8, 'as-fed');

-- Cavom — compleet Lam & Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.cavom.nl/product/compleet-lam-rijst/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina. De fabrikant vermeldt geen energie (kcal) en geen omega-3/omega-6; die blijven null.'
 where id = 'e08ef746-4349-4778-8698-a68610504cd0';
delete from public.recipe_nutrition where recipe_version_id = 'e08ef746-4349-4778-8698-a68610504cd0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e08ef746-4349-4778-8698-a68610504cd0', 'protein', 22, 'as-fed'),
  ('e08ef746-4349-4778-8698-a68610504cd0', 'fat', 15, 'as-fed'),
  ('e08ef746-4349-4778-8698-a68610504cd0', 'fiber', 2.5, 'as-fed'),
  ('e08ef746-4349-4778-8698-a68610504cd0', 'ash', 7.5, 'as-fed'),
  ('e08ef746-4349-4778-8698-a68610504cd0', 'moisture', 7, 'as-fed'),
  ('e08ef746-4349-4778-8698-a68610504cd0', 'calcium', 1, 'as-fed'),
  ('e08ef746-4349-4778-8698-a68610504cd0', 'phosphorus', 0.8, 'as-fed');

-- Cavom — compleet Light (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.cavom.nl/product/compleet-light/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina. De fabrikant vermeldt geen energie (kcal) en geen omega-3/omega-6; die blijven null.'
 where id = '726097eb-a7e4-4d10-9012-33cbc8122400';
delete from public.recipe_nutrition where recipe_version_id = '726097eb-a7e4-4d10-9012-33cbc8122400';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('726097eb-a7e4-4d10-9012-33cbc8122400', 'protein', 22, 'as-fed'),
  ('726097eb-a7e4-4d10-9012-33cbc8122400', 'fat', 8, 'as-fed'),
  ('726097eb-a7e4-4d10-9012-33cbc8122400', 'fiber', 3.2, 'as-fed'),
  ('726097eb-a7e4-4d10-9012-33cbc8122400', 'ash', 6.5, 'as-fed'),
  ('726097eb-a7e4-4d10-9012-33cbc8122400', 'moisture', 8, 'as-fed'),
  ('726097eb-a7e4-4d10-9012-33cbc8122400', 'calcium', 1, 'as-fed'),
  ('726097eb-a7e4-4d10-9012-33cbc8122400', 'phosphorus', 0.8, 'as-fed');

-- Cavom — compleet Midi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.cavom.nl/product/compleet-midi/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina. De fabrikant vermeldt geen energie (kcal) en geen omega-3/omega-6; die blijven null.'
 where id = 'ee5fa8e0-945d-41ce-bdad-0e1f4a984447';
delete from public.recipe_nutrition where recipe_version_id = 'ee5fa8e0-945d-41ce-bdad-0e1f4a984447';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ee5fa8e0-945d-41ce-bdad-0e1f4a984447', 'protein', 24, 'as-fed'),
  ('ee5fa8e0-945d-41ce-bdad-0e1f4a984447', 'fat', 16.5, 'as-fed'),
  ('ee5fa8e0-945d-41ce-bdad-0e1f4a984447', 'fiber', 1.9, 'as-fed'),
  ('ee5fa8e0-945d-41ce-bdad-0e1f4a984447', 'ash', 6.5, 'as-fed'),
  ('ee5fa8e0-945d-41ce-bdad-0e1f4a984447', 'moisture', 7, 'as-fed'),
  ('ee5fa8e0-945d-41ce-bdad-0e1f4a984447', 'calcium', 1, 'as-fed'),
  ('ee5fa8e0-945d-41ce-bdad-0e1f4a984447', 'phosphorus', 0.8, 'as-fed');

-- Cavom — compleet Pup/Junior (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.cavom.nl/product/compleet-pup-junior/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina. De fabrikant vermeldt geen energie (kcal) en geen omega-3/omega-6; die blijven null.'
 where id = 'bbd464b0-2c1b-41ac-a685-5023bcd7fab7';
delete from public.recipe_nutrition where recipe_version_id = 'bbd464b0-2c1b-41ac-a685-5023bcd7fab7';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('bbd464b0-2c1b-41ac-a685-5023bcd7fab7', 'protein', 26, 'as-fed'),
  ('bbd464b0-2c1b-41ac-a685-5023bcd7fab7', 'fat', 16.5, 'as-fed'),
  ('bbd464b0-2c1b-41ac-a685-5023bcd7fab7', 'fiber', 1.9, 'as-fed'),
  ('bbd464b0-2c1b-41ac-a685-5023bcd7fab7', 'ash', 6.5, 'as-fed'),
  ('bbd464b0-2c1b-41ac-a685-5023bcd7fab7', 'moisture', 7, 'as-fed'),
  ('bbd464b0-2c1b-41ac-a685-5023bcd7fab7', 'calcium', 1, 'as-fed'),
  ('bbd464b0-2c1b-41ac-a685-5023bcd7fab7', 'phosphorus', 0.8, 'as-fed');

-- Cavom — compleet Senior (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.cavom.nl/product/compleet-senior/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina. De fabrikant vermeldt geen energie (kcal) en geen omega-3/omega-6; die blijven null.'
 where id = 'dc338592-f4b2-4e15-9399-7a2652c1ac84';
delete from public.recipe_nutrition where recipe_version_id = 'dc338592-f4b2-4e15-9399-7a2652c1ac84';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('dc338592-f4b2-4e15-9399-7a2652c1ac84', 'protein', 18, 'as-fed'),
  ('dc338592-f4b2-4e15-9399-7a2652c1ac84', 'fat', 16.5, 'as-fed'),
  ('dc338592-f4b2-4e15-9399-7a2652c1ac84', 'fiber', 1.9, 'as-fed'),
  ('dc338592-f4b2-4e15-9399-7a2652c1ac84', 'ash', 6.5, 'as-fed'),
  ('dc338592-f4b2-4e15-9399-7a2652c1ac84', 'moisture', 7, 'as-fed'),
  ('dc338592-f4b2-4e15-9399-7a2652c1ac84', 'calcium', 0.9, 'as-fed'),
  ('dc338592-f4b2-4e15-9399-7a2652c1ac84', 'phosphorus', 0.7, 'as-fed');

-- Cavom — compleet Sport (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.cavom.nl/product/compleet-sport/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina. De fabrikant vermeldt geen energie (kcal) en geen omega-3/omega-6; die blijven null.'
 where id = 'aa359917-a645-425a-b879-0e323554b879';
delete from public.recipe_nutrition where recipe_version_id = 'aa359917-a645-425a-b879-0e323554b879';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('aa359917-a645-425a-b879-0e323554b879', 'protein', 31.5, 'as-fed'),
  ('aa359917-a645-425a-b879-0e323554b879', 'fat', 18, 'as-fed'),
  ('aa359917-a645-425a-b879-0e323554b879', 'fiber', 1.9, 'as-fed'),
  ('aa359917-a645-425a-b879-0e323554b879', 'ash', 7, 'as-fed'),
  ('aa359917-a645-425a-b879-0e323554b879', 'moisture', 7, 'as-fed'),
  ('aa359917-a645-425a-b879-0e323554b879', 'calcium', 1, 'as-fed'),
  ('aa359917-a645-425a-b879-0e323554b879', 'phosphorus', 0.8, 'as-fed');

-- Cavom — compleet Zalm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.cavom.nl/product/compleet-zalm/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina. De fabrikant vermeldt geen energie (kcal) en geen omega-3/omega-6; die blijven null.'
 where id = '7b6ab5f8-065f-41ce-9243-450386e3e15b';
delete from public.recipe_nutrition where recipe_version_id = '7b6ab5f8-065f-41ce-9243-450386e3e15b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7b6ab5f8-065f-41ce-9243-450386e3e15b', 'protein', 23, 'as-fed'),
  ('7b6ab5f8-065f-41ce-9243-450386e3e15b', 'fat', 14, 'as-fed'),
  ('7b6ab5f8-065f-41ce-9243-450386e3e15b', 'fiber', 1.9, 'as-fed'),
  ('7b6ab5f8-065f-41ce-9243-450386e3e15b', 'ash', 6.5, 'as-fed'),
  ('7b6ab5f8-065f-41ce-9243-450386e3e15b', 'moisture', 7, 'as-fed'),
  ('7b6ab5f8-065f-41ce-9243-450386e3e15b', 'calcium', 1, 'as-fed'),
  ('7b6ab5f8-065f-41ce-9243-450386e3e15b', 'phosphorus', 0.8, 'as-fed');

-- GranataPet — Liebling's Mahlzeit eend Sensitive (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.granatapet.de/ente-sensitive-1-8-kg-204392',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen. De fabrikant vermeldt de energie direct als 367 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '8f80799c-9f40-4a3e-9f48-b3877af3abb8';
delete from public.recipe_nutrition where recipe_version_id = '8f80799c-9f40-4a3e-9f48-b3877af3abb8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8f80799c-9f40-4a3e-9f48-b3877af3abb8', 'protein', 25, 'as-fed'),
  ('8f80799c-9f40-4a3e-9f48-b3877af3abb8', 'fat', 15, 'as-fed'),
  ('8f80799c-9f40-4a3e-9f48-b3877af3abb8', 'fiber', 4, 'as-fed'),
  ('8f80799c-9f40-4a3e-9f48-b3877af3abb8', 'ash', 5.9, 'as-fed'),
  ('8f80799c-9f40-4a3e-9f48-b3877af3abb8', 'moisture', 10, 'as-fed'),
  ('8f80799c-9f40-4a3e-9f48-b3877af3abb8', 'kcal', 367, 'as-fed'),
  ('8f80799c-9f40-4a3e-9f48-b3877af3abb8', 'calcium', 1.35, 'as-fed'),
  ('8f80799c-9f40-4a3e-9f48-b3877af3abb8', 'phosphorus', 1, 'as-fed');

-- GranataPet — Liebling's Mahlzeit gevogelte Junior (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.granatapet.de/gefluegel-junior-1-8-kg-204194',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen. De fabrikant vermeldt de energie direct als 369 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '16c1d659-10cf-4331-9128-746b33daeffe';
delete from public.recipe_nutrition where recipe_version_id = '16c1d659-10cf-4331-9128-746b33daeffe';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('16c1d659-10cf-4331-9128-746b33daeffe', 'protein', 28, 'as-fed'),
  ('16c1d659-10cf-4331-9128-746b33daeffe', 'fat', 16, 'as-fed'),
  ('16c1d659-10cf-4331-9128-746b33daeffe', 'fiber', 4.5, 'as-fed'),
  ('16c1d659-10cf-4331-9128-746b33daeffe', 'ash', 5.8, 'as-fed'),
  ('16c1d659-10cf-4331-9128-746b33daeffe', 'moisture', 10, 'as-fed'),
  ('16c1d659-10cf-4331-9128-746b33daeffe', 'kcal', 369, 'as-fed'),
  ('16c1d659-10cf-4331-9128-746b33daeffe', 'calcium', 1, 'as-fed'),
  ('16c1d659-10cf-4331-9128-746b33daeffe', 'phosphorus', 0.75, 'as-fed');

-- GranataPet — Liebling's Mahlzeit kalkoen Senior (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.granatapet.de/pute-senior-1-8-kg-191036',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen. De fabrikant vermeldt de energie direct als 348 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '1d372b30-6220-4630-99d1-4435a05657ed';
delete from public.recipe_nutrition where recipe_version_id = '1d372b30-6220-4630-99d1-4435a05657ed';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1d372b30-6220-4630-99d1-4435a05657ed', 'protein', 22, 'as-fed'),
  ('1d372b30-6220-4630-99d1-4435a05657ed', 'fat', 11, 'as-fed'),
  ('1d372b30-6220-4630-99d1-4435a05657ed', 'fiber', 4.5, 'as-fed'),
  ('1d372b30-6220-4630-99d1-4435a05657ed', 'ash', 4.9, 'as-fed'),
  ('1d372b30-6220-4630-99d1-4435a05657ed', 'moisture', 10, 'as-fed'),
  ('1d372b30-6220-4630-99d1-4435a05657ed', 'kcal', 348, 'as-fed'),
  ('1d372b30-6220-4630-99d1-4435a05657ed', 'calcium', 0.7, 'as-fed'),
  ('1d372b30-6220-4630-99d1-4435a05657ed', 'phosphorus', 0.55, 'as-fed');

-- GranataPet — Liebling's Mahlzeit kip & pastinaak (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.granatapet.de/huhn-pastinaken-400-g-192149',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen. De fabrikant vermeldt de energie direct als 91 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '2adaf464-69bb-49ab-812a-e7bdd0dc4c81';
delete from public.recipe_nutrition where recipe_version_id = '2adaf464-69bb-49ab-812a-e7bdd0dc4c81';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2adaf464-69bb-49ab-812a-e7bdd0dc4c81', 'protein', 10.2, 'as-fed'),
  ('2adaf464-69bb-49ab-812a-e7bdd0dc4c81', 'fat', 5.2, 'as-fed'),
  ('2adaf464-69bb-49ab-812a-e7bdd0dc4c81', 'fiber', 0.6, 'as-fed'),
  ('2adaf464-69bb-49ab-812a-e7bdd0dc4c81', 'ash', 2, 'as-fed'),
  ('2adaf464-69bb-49ab-812a-e7bdd0dc4c81', 'moisture', 80, 'as-fed'),
  ('2adaf464-69bb-49ab-812a-e7bdd0dc4c81', 'kcal', 91, 'as-fed'),
  ('2adaf464-69bb-49ab-812a-e7bdd0dc4c81', 'calcium', 0.18, 'as-fed'),
  ('2adaf464-69bb-49ab-812a-e7bdd0dc4c81', 'phosphorus', 0.14, 'as-fed');

-- GranataPet — Liebling's Mahlzeit lam & aardappel (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.granatapet.de/lamm-kartoffel-400-g-183987',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen. De fabrikant vermeldt de energie direct als 124 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'fcba2222-83ee-4440-ae61-f3ff1fda7207';
delete from public.recipe_nutrition where recipe_version_id = 'fcba2222-83ee-4440-ae61-f3ff1fda7207';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fcba2222-83ee-4440-ae61-f3ff1fda7207', 'protein', 10, 'as-fed'),
  ('fcba2222-83ee-4440-ae61-f3ff1fda7207', 'fat', 8, 'as-fed'),
  ('fcba2222-83ee-4440-ae61-f3ff1fda7207', 'fiber', 0.6, 'as-fed'),
  ('fcba2222-83ee-4440-ae61-f3ff1fda7207', 'ash', 1.8, 'as-fed'),
  ('fcba2222-83ee-4440-ae61-f3ff1fda7207', 'moisture', 75, 'as-fed'),
  ('fcba2222-83ee-4440-ae61-f3ff1fda7207', 'kcal', 124, 'as-fed'),
  ('fcba2222-83ee-4440-ae61-f3ff1fda7207', 'calcium', 0.18, 'as-fed'),
  ('fcba2222-83ee-4440-ae61-f3ff1fda7207', 'phosphorus', 0.14, 'as-fed');

-- GranataPet — Liebling's Mahlzeit PUR gevogelte (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.granatapet.de/gefluegel-400-g-186070',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen. De fabrikant vermeldt de energie direct als 90 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'c13abb01-a4a1-406a-bc4c-31ea3440c145';
delete from public.recipe_nutrition where recipe_version_id = 'c13abb01-a4a1-406a-bc4c-31ea3440c145';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c13abb01-a4a1-406a-bc4c-31ea3440c145', 'protein', 10.2, 'as-fed'),
  ('c13abb01-a4a1-406a-bc4c-31ea3440c145', 'fat', 5.2, 'as-fed'),
  ('c13abb01-a4a1-406a-bc4c-31ea3440c145', 'fiber', 0.5, 'as-fed'),
  ('c13abb01-a4a1-406a-bc4c-31ea3440c145', 'ash', 2.5, 'as-fed'),
  ('c13abb01-a4a1-406a-bc4c-31ea3440c145', 'moisture', 80, 'as-fed'),
  ('c13abb01-a4a1-406a-bc4c-31ea3440c145', 'kcal', 90, 'as-fed'),
  ('c13abb01-a4a1-406a-bc4c-31ea3440c145', 'calcium', 0.19, 'as-fed'),
  ('c13abb01-a4a1-406a-bc4c-31ea3440c145', 'phosphorus', 0.16, 'as-fed');

-- GranataPet — Liebling's Mahlzeit PUR paard (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.granatapet.de/pferd-400-g-186131',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen. De fabrikant vermeldt de energie direct als 129 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'eeb002c1-bb38-4b63-81ba-9e3018fa7fae';
delete from public.recipe_nutrition where recipe_version_id = 'eeb002c1-bb38-4b63-81ba-9e3018fa7fae';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('eeb002c1-bb38-4b63-81ba-9e3018fa7fae', 'protein', 10, 'as-fed'),
  ('eeb002c1-bb38-4b63-81ba-9e3018fa7fae', 'fat', 9, 'as-fed'),
  ('eeb002c1-bb38-4b63-81ba-9e3018fa7fae', 'fiber', 0.5, 'as-fed'),
  ('eeb002c1-bb38-4b63-81ba-9e3018fa7fae', 'ash', 1.8, 'as-fed'),
  ('eeb002c1-bb38-4b63-81ba-9e3018fa7fae', 'moisture', 75, 'as-fed'),
  ('eeb002c1-bb38-4b63-81ba-9e3018fa7fae', 'kcal', 129, 'as-fed'),
  ('eeb002c1-bb38-4b63-81ba-9e3018fa7fae', 'calcium', 0.18, 'as-fed'),
  ('eeb002c1-bb38-4b63-81ba-9e3018fa7fae', 'phosphorus', 0.14, 'as-fed');

-- GranataPet — Liebling's Mahlzeit vis Sensitive (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.granatapet.de/fisch-sensitive-1-8-kg-204347',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen. De fabrikant vermeldt de energie direct als 354 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'def964e2-81e8-4f86-9367-9efeedfa9b9d';
delete from public.recipe_nutrition where recipe_version_id = 'def964e2-81e8-4f86-9367-9efeedfa9b9d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('def964e2-81e8-4f86-9367-9efeedfa9b9d', 'protein', 24, 'as-fed'),
  ('def964e2-81e8-4f86-9367-9efeedfa9b9d', 'fat', 14, 'as-fed'),
  ('def964e2-81e8-4f86-9367-9efeedfa9b9d', 'fiber', 4.4, 'as-fed'),
  ('def964e2-81e8-4f86-9367-9efeedfa9b9d', 'ash', 7.5, 'as-fed'),
  ('def964e2-81e8-4f86-9367-9efeedfa9b9d', 'moisture', 10, 'as-fed'),
  ('def964e2-81e8-4f86-9367-9efeedfa9b9d', 'kcal', 354, 'as-fed'),
  ('def964e2-81e8-4f86-9367-9efeedfa9b9d', 'calcium', 1.75, 'as-fed'),
  ('def964e2-81e8-4f86-9367-9efeedfa9b9d', 'phosphorus', 1.25, 'as-fed');

-- GranataPet — Mini Royal paard Mono (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.granatapet.de/pferd-mono-1-kg-191333',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen. De fabrikant vermeldt de energie direct als 340 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'df66a9cd-764e-4fbf-8b4c-66e5412c517f';
delete from public.recipe_nutrition where recipe_version_id = 'df66a9cd-764e-4fbf-8b4c-66e5412c517f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('df66a9cd-764e-4fbf-8b4c-66e5412c517f', 'protein', 25, 'as-fed'),
  ('df66a9cd-764e-4fbf-8b4c-66e5412c517f', 'fat', 12, 'as-fed'),
  ('df66a9cd-764e-4fbf-8b4c-66e5412c517f', 'fiber', 5, 'as-fed'),
  ('df66a9cd-764e-4fbf-8b4c-66e5412c517f', 'ash', 8, 'as-fed'),
  ('df66a9cd-764e-4fbf-8b4c-66e5412c517f', 'moisture', 10, 'as-fed'),
  ('df66a9cd-764e-4fbf-8b4c-66e5412c517f', 'kcal', 340, 'as-fed'),
  ('df66a9cd-764e-4fbf-8b4c-66e5412c517f', 'calcium', 1.4, 'as-fed'),
  ('df66a9cd-764e-4fbf-8b4c-66e5412c517f', 'phosphorus', 1, 'as-fed');

-- GranataPet — Natural Taste paard Mono (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.granatapet.de/pferd-mono-4-kg-191098',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen. De fabrikant vermeldt de energie direct als 340 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '1cb65a47-de21-48c3-bad3-b8ec2572a372';
delete from public.recipe_nutrition where recipe_version_id = '1cb65a47-de21-48c3-bad3-b8ec2572a372';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1cb65a47-de21-48c3-bad3-b8ec2572a372', 'protein', 25, 'as-fed'),
  ('1cb65a47-de21-48c3-bad3-b8ec2572a372', 'fat', 12, 'as-fed'),
  ('1cb65a47-de21-48c3-bad3-b8ec2572a372', 'fiber', 5, 'as-fed'),
  ('1cb65a47-de21-48c3-bad3-b8ec2572a372', 'ash', 8, 'as-fed'),
  ('1cb65a47-de21-48c3-bad3-b8ec2572a372', 'moisture', 10, 'as-fed'),
  ('1cb65a47-de21-48c3-bad3-b8ec2572a372', 'kcal', 340, 'as-fed'),
  ('1cb65a47-de21-48c3-bad3-b8ec2572a372', 'calcium', 1.4, 'as-fed'),
  ('1cb65a47-de21-48c3-bad3-b8ec2572a372', 'phosphorus', 1, 'as-fed');

-- Markus-Mühle — Black Angus Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://markus-muehle.de/hundetrockenfutter-kaltgepresst/black-angus/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina. Vocht, energie (kcal) en omega-3/omega-6 worden niet vermeld; die blijven null.'
 where id = '88ca84f4-ad96-44bc-ab83-1ec698c06c4b';
delete from public.recipe_nutrition where recipe_version_id = '88ca84f4-ad96-44bc-ab83-1ec698c06c4b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('88ca84f4-ad96-44bc-ab83-1ec698c06c4b', 'protein', 25.2, 'as-fed'),
  ('88ca84f4-ad96-44bc-ab83-1ec698c06c4b', 'fat', 10.1, 'as-fed'),
  ('88ca84f4-ad96-44bc-ab83-1ec698c06c4b', 'fiber', 6, 'as-fed'),
  ('88ca84f4-ad96-44bc-ab83-1ec698c06c4b', 'ash', 7.5, 'as-fed'),
  ('88ca84f4-ad96-44bc-ab83-1ec698c06c4b', 'calcium', 1.35, 'as-fed'),
  ('88ca84f4-ad96-44bc-ab83-1ec698c06c4b', 'phosphorus', 1.12, 'as-fed');

-- Markus-Mühle — Black Angus Junior (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://markus-muehle.de/hundetrockenfutter-kaltgepresst/black-angus/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina. Vocht, energie (kcal) en omega-3/omega-6 worden niet vermeld; die blijven null.'
 where id = 'bd4a0c79-d06d-435c-ba5c-fb25cddf572e';
delete from public.recipe_nutrition where recipe_version_id = 'bd4a0c79-d06d-435c-ba5c-fb25cddf572e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('bd4a0c79-d06d-435c-ba5c-fb25cddf572e', 'protein', 28.6, 'as-fed'),
  ('bd4a0c79-d06d-435c-ba5c-fb25cddf572e', 'fat', 12.2, 'as-fed'),
  ('bd4a0c79-d06d-435c-ba5c-fb25cddf572e', 'fiber', 2.8, 'as-fed'),
  ('bd4a0c79-d06d-435c-ba5c-fb25cddf572e', 'ash', 6.5, 'as-fed'),
  ('bd4a0c79-d06d-435c-ba5c-fb25cddf572e', 'calcium', 1.25, 'as-fed'),
  ('bd4a0c79-d06d-435c-ba5c-fb25cddf572e', 'phosphorus', 1.03, 'as-fed');

-- Markus-Mühle — Black Angus Senior (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://markus-muehle.de/hundetrockenfutter-kaltgepresst/black-angus/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina. Vocht, energie (kcal) en omega-3/omega-6 worden niet vermeld; die blijven null.'
 where id = 'dd075810-926d-45da-8bc2-6096e7b05d1d';
delete from public.recipe_nutrition where recipe_version_id = 'dd075810-926d-45da-8bc2-6096e7b05d1d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('dd075810-926d-45da-8bc2-6096e7b05d1d', 'protein', 22, 'as-fed'),
  ('dd075810-926d-45da-8bc2-6096e7b05d1d', 'fat', 10, 'as-fed'),
  ('dd075810-926d-45da-8bc2-6096e7b05d1d', 'fiber', 6.3, 'as-fed'),
  ('dd075810-926d-45da-8bc2-6096e7b05d1d', 'ash', 7.1, 'as-fed'),
  ('dd075810-926d-45da-8bc2-6096e7b05d1d', 'calcium', 1.28, 'as-fed'),
  ('dd075810-926d-45da-8bc2-6096e7b05d1d', 'phosphorus', 0.98, 'as-fed');

-- Markus-Mühle — FREILAND Gans (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://markus-muehle.de/freiland/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina van FREILAND Gans. Vocht, energie (kcal) en omega-3/omega-6 worden niet vermeld; die blijven null.'
 where id = '1b0a721a-4a08-412d-9323-6d5764a23567';
delete from public.recipe_nutrition where recipe_version_id = '1b0a721a-4a08-412d-9323-6d5764a23567';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1b0a721a-4a08-412d-9323-6d5764a23567', 'protein', 24, 'as-fed'),
  ('1b0a721a-4a08-412d-9323-6d5764a23567', 'fat', 9, 'as-fed'),
  ('1b0a721a-4a08-412d-9323-6d5764a23567', 'fiber', 2.5, 'as-fed'),
  ('1b0a721a-4a08-412d-9323-6d5764a23567', 'ash', 6.5, 'as-fed'),
  ('1b0a721a-4a08-412d-9323-6d5764a23567', 'calcium', 1.3, 'as-fed'),
  ('1b0a721a-4a08-412d-9323-6d5764a23567', 'phosphorus', 1, 'as-fed');

-- Markus-Mühle — LUPO Sensitiv 24/10 (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://markus-muehle.de/hundetrockenfutter-kaltgepresst/lupo-sensitiv/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina, variant 24/10. Vocht, energie (kcal) en omega-3/omega-6 worden niet vermeld; die blijven null.'
 where id = 'ff25c620-529b-4a42-9947-c482b2e0d9b5';
delete from public.recipe_nutrition where recipe_version_id = 'ff25c620-529b-4a42-9947-c482b2e0d9b5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ff25c620-529b-4a42-9947-c482b2e0d9b5', 'protein', 24, 'as-fed'),
  ('ff25c620-529b-4a42-9947-c482b2e0d9b5', 'fat', 10, 'as-fed'),
  ('ff25c620-529b-4a42-9947-c482b2e0d9b5', 'fiber', 3, 'as-fed'),
  ('ff25c620-529b-4a42-9947-c482b2e0d9b5', 'ash', 7.4, 'as-fed'),
  ('ff25c620-529b-4a42-9947-c482b2e0d9b5', 'calcium', 1.4, 'as-fed'),
  ('ff25c620-529b-4a42-9947-c482b2e0d9b5', 'phosphorus', 0.9, 'as-fed');

-- Markus-Mühle — NaturNah (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://markus-muehle.de/hundetrockenfutter-kaltgepresst/naturnah/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen. De fabrikant noemt de energie in de producttekst als 367 kcal per 100 g; geen omrekening nodig. Vocht en omega-3/omega-6 worden niet vermeld.'
 where id = '5f0482bb-9a6b-495a-b38f-7719e4f442ae';
delete from public.recipe_nutrition where recipe_version_id = '5f0482bb-9a6b-495a-b38f-7719e4f442ae';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5f0482bb-9a6b-495a-b38f-7719e4f442ae', 'protein', 25, 'as-fed'),
  ('5f0482bb-9a6b-495a-b38f-7719e4f442ae', 'fat', 10.5, 'as-fed'),
  ('5f0482bb-9a6b-495a-b38f-7719e4f442ae', 'fiber', 3.3, 'as-fed'),
  ('5f0482bb-9a6b-495a-b38f-7719e4f442ae', 'ash', 7, 'as-fed'),
  ('5f0482bb-9a6b-495a-b38f-7719e4f442ae', 'kcal', 367, 'as-fed'),
  ('5f0482bb-9a6b-495a-b38f-7719e4f442ae', 'calcium', 1.3, 'as-fed'),
  ('5f0482bb-9a6b-495a-b38f-7719e4f442ae', 'phosphorus', 1, 'as-fed');

-- Markus-Mühle — Rotwild Hirsch (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://markus-muehle.de/hundetrockenfutter-kaltgepresst/rotwild-hirsch/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina. Vocht, energie (kcal) en omega-3/omega-6 worden niet vermeld; die blijven null.'
 where id = 'ceb3c88f-c459-4825-9288-e337c14b8074';
delete from public.recipe_nutrition where recipe_version_id = 'ceb3c88f-c459-4825-9288-e337c14b8074';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ceb3c88f-c459-4825-9288-e337c14b8074', 'protein', 25.3, 'as-fed'),
  ('ceb3c88f-c459-4825-9288-e337c14b8074', 'fat', 10.2, 'as-fed'),
  ('ceb3c88f-c459-4825-9288-e337c14b8074', 'fiber', 5.5, 'as-fed'),
  ('ceb3c88f-c459-4825-9288-e337c14b8074', 'ash', 6.9, 'as-fed'),
  ('ceb3c88f-c459-4825-9288-e337c14b8074', 'calcium', 1.34, 'as-fed'),
  ('ceb3c88f-c459-4825-9288-e337c14b8074', 'phosphorus', 1.1, 'as-fed');

-- Markus-Mühle — True Nature (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://markus-muehle.de/hundetrockenfutter-kaltgepresst/true-nature/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina. Vocht, energie (kcal) en omega-3/omega-6 worden niet vermeld; die blijven null.'
 where id = '2f351807-25dc-4908-84b1-be2a6ae99db7';
delete from public.recipe_nutrition where recipe_version_id = '2f351807-25dc-4908-84b1-be2a6ae99db7';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2f351807-25dc-4908-84b1-be2a6ae99db7', 'protein', 24, 'as-fed'),
  ('2f351807-25dc-4908-84b1-be2a6ae99db7', 'fat', 9.6, 'as-fed'),
  ('2f351807-25dc-4908-84b1-be2a6ae99db7', 'fiber', 5.7, 'as-fed'),
  ('2f351807-25dc-4908-84b1-be2a6ae99db7', 'ash', 7.8, 'as-fed'),
  ('2f351807-25dc-4908-84b1-be2a6ae99db7', 'calcium', 1.25, 'as-fed'),
  ('2f351807-25dc-4908-84b1-be2a6ae99db7', 'phosphorus', 0.88, 'as-fed');

-- Markus-Mühle — Veggie (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://markus-muehle.de/hundetrockenfutter-kaltgepresst/veggie/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina. Vocht, energie (kcal) en omega-3/omega-6 worden niet vermeld; die blijven null.'
 where id = '1809b531-c24c-4733-804c-f696b072746a';
delete from public.recipe_nutrition where recipe_version_id = '1809b531-c24c-4733-804c-f696b072746a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1809b531-c24c-4733-804c-f696b072746a', 'protein', 24.2, 'as-fed'),
  ('1809b531-c24c-4733-804c-f696b072746a', 'fat', 9.3, 'as-fed'),
  ('1809b531-c24c-4733-804c-f696b072746a', 'fiber', 2.5, 'as-fed'),
  ('1809b531-c24c-4733-804c-f696b072746a', 'ash', 7.2, 'as-fed'),
  ('1809b531-c24c-4733-804c-f696b072746a', 'calcium', 1.35, 'as-fed'),
  ('1809b531-c24c-4733-804c-f696b072746a', 'phosphorus', 1.15, 'as-fed');

-- Markus-Mühle — Weidelamm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://markus-muehle.de/hundetrockenfutter-kaltgepresst/weidelamm/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina. Vocht, energie (kcal) en omega-3/omega-6 worden niet vermeld; die blijven null.'
 where id = 'effaa9de-5915-418c-88ec-8c0d7b4e848e';
delete from public.recipe_nutrition where recipe_version_id = 'effaa9de-5915-418c-88ec-8c0d7b4e848e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('effaa9de-5915-418c-88ec-8c0d7b4e848e', 'protein', 25.2, 'as-fed'),
  ('effaa9de-5915-418c-88ec-8c0d7b4e848e', 'fat', 10.1, 'as-fed'),
  ('effaa9de-5915-418c-88ec-8c0d7b4e848e', 'fiber', 3.2, 'as-fed'),
  ('effaa9de-5915-418c-88ec-8c0d7b4e848e', 'ash', 7.5, 'as-fed'),
  ('effaa9de-5915-418c-88ec-8c0d7b4e848e', 'calcium', 1.28, 'as-fed'),
  ('effaa9de-5915-418c-88ec-8c0d7b4e848e', 'phosphorus', 1, 'as-fed');

-- Wolfsblut — Adult Alaska Salmon (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.wolfsblut.com/wolfsblut-adult-alaska-salmon-lachs-und-kartoffeln-trockenfutter-12-5-kg.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina. De fabrikant vermeldt geen vocht, energie (kcal), calcium, fosfor of omega-3/omega-6; die blijven null.'
 where id = '45090ff1-a37f-4600-8d60-d18dea2d4489';
delete from public.recipe_nutrition where recipe_version_id = '45090ff1-a37f-4600-8d60-d18dea2d4489';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('45090ff1-a37f-4600-8d60-d18dea2d4489', 'protein', 25, 'as-fed'),
  ('45090ff1-a37f-4600-8d60-d18dea2d4489', 'fat', 15, 'as-fed'),
  ('45090ff1-a37f-4600-8d60-d18dea2d4489', 'fiber', 2, 'as-fed'),
  ('45090ff1-a37f-4600-8d60-d18dea2d4489', 'ash', 6, 'as-fed');

-- Wolfsblut — Adult Blue Mountain (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.wolfsblut.com/wolfsblut-adult-blue-mountain-wild-und-waldfruchten-trockenfutter-12-5-kg.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina. De fabrikant vermeldt geen vocht, energie (kcal), calcium, fosfor of omega-3/omega-6; die blijven null.'
 where id = 'e0866963-3525-4ad1-b93e-836846aad734';
delete from public.recipe_nutrition where recipe_version_id = 'e0866963-3525-4ad1-b93e-836846aad734';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e0866963-3525-4ad1-b93e-836846aad734', 'protein', 30, 'as-fed'),
  ('e0866963-3525-4ad1-b93e-836846aad734', 'fat', 16, 'as-fed'),
  ('e0866963-3525-4ad1-b93e-836846aad734', 'fiber', 4, 'as-fed'),
  ('e0866963-3525-4ad1-b93e-836846aad734', 'ash', 8.5, 'as-fed');

-- Wolfsblut — Adult Cold River (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.wolfsblut.com/wolfsblut-adult-cold-river-forelle-und-susskartoffel-trockenfutter-12-5-kg.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina. De fabrikant vermeldt geen vocht, energie (kcal), calcium, fosfor of omega-3/omega-6; die blijven null.'
 where id = '32561d78-a81f-479c-ad75-c1493bf8c758';
delete from public.recipe_nutrition where recipe_version_id = '32561d78-a81f-479c-ad75-c1493bf8c758';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('32561d78-a81f-479c-ad75-c1493bf8c758', 'protein', 18.5, 'as-fed'),
  ('32561d78-a81f-479c-ad75-c1493bf8c758', 'fat', 9.5, 'as-fed'),
  ('32561d78-a81f-479c-ad75-c1493bf8c758', 'fiber', 3, 'as-fed'),
  ('32561d78-a81f-479c-ad75-c1493bf8c758', 'ash', 8.5, 'as-fed');

-- Wolfsblut — Adult Dark Forest (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.wolfsblut.com/wolfsblut-adult-dark-forest-wild-und-susskartoffel-trockenfutter-12-5-kg.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina. De fabrikant vermeldt geen vocht, energie (kcal), calcium, fosfor of omega-3/omega-6; die blijven null.'
 where id = '2076f669-5885-43a2-806e-297e040c9a7c';
delete from public.recipe_nutrition where recipe_version_id = '2076f669-5885-43a2-806e-297e040c9a7c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2076f669-5885-43a2-806e-297e040c9a7c', 'protein', 20, 'as-fed'),
  ('2076f669-5885-43a2-806e-297e040c9a7c', 'fat', 10, 'as-fed'),
  ('2076f669-5885-43a2-806e-297e040c9a7c', 'fiber', 3.5, 'as-fed'),
  ('2076f669-5885-43a2-806e-297e040c9a7c', 'ash', 9, 'as-fed');

-- Wolfsblut — Adult Green Valley (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.wolfsblut.com/wolfsblut-adult-green-valley-lamm-und-lachs-trockenfutter-12-5-kg.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina. De fabrikant vermeldt geen vocht, energie (kcal), calcium, fosfor of omega-3/omega-6; die blijven null.'
 where id = '8b18504d-cfa2-4bc4-aa75-392b34cc1702';
delete from public.recipe_nutrition where recipe_version_id = '8b18504d-cfa2-4bc4-aa75-392b34cc1702';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8b18504d-cfa2-4bc4-aa75-392b34cc1702', 'protein', 30, 'as-fed'),
  ('8b18504d-cfa2-4bc4-aa75-392b34cc1702', 'fat', 18, 'as-fed'),
  ('8b18504d-cfa2-4bc4-aa75-392b34cc1702', 'fiber', 3, 'as-fed'),
  ('8b18504d-cfa2-4bc4-aa75-392b34cc1702', 'ash', 9.8, 'as-fed');

-- Wolfsblut — Adult Hunters Pride (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.wolfsblut.com/wolfsblut-adult-hunters-pride-fasan-ente-und-kaninchen-trockenfutter-12-5-kg.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina. De fabrikant vermeldt geen vocht, energie (kcal), calcium, fosfor of omega-3/omega-6; die blijven null.'
 where id = 'd00222a1-8868-4f13-8713-7b412484f24c';
delete from public.recipe_nutrition where recipe_version_id = 'd00222a1-8868-4f13-8713-7b412484f24c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d00222a1-8868-4f13-8713-7b412484f24c', 'protein', 25, 'as-fed'),
  ('d00222a1-8868-4f13-8713-7b412484f24c', 'fat', 14, 'as-fed'),
  ('d00222a1-8868-4f13-8713-7b412484f24c', 'fiber', 3.5, 'as-fed'),
  ('d00222a1-8868-4f13-8713-7b412484f24c', 'ash', 9, 'as-fed');

-- Wolfsblut — Adult Wide Plain (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.wolfsblut.com/wolfsblut-adult-wolfsblut-wide-plain-pferdefleisch-und-susskartoffel-trockenfutter-12-5-kg.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina. De fabrikant vermeldt geen vocht, energie (kcal), calcium, fosfor of omega-3/omega-6; die blijven null.'
 where id = '957f6a4d-284d-43d4-8839-b02dbeab1b80';
delete from public.recipe_nutrition where recipe_version_id = '957f6a4d-284d-43d4-8839-b02dbeab1b80';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('957f6a4d-284d-43d4-8839-b02dbeab1b80', 'protein', 26, 'as-fed'),
  ('957f6a4d-284d-43d4-8839-b02dbeab1b80', 'fat', 17, 'as-fed'),
  ('957f6a4d-284d-43d4-8839-b02dbeab1b80', 'fiber', 3.5, 'as-fed'),
  ('957f6a4d-284d-43d4-8839-b02dbeab1b80', 'ash', 9.5, 'as-fed');

-- Wolfsblut — Adult Wild Pacific (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.wolfsblut.com/wolfsblut-adult-wild-pacific-seefisch-und-kartoffel-trockenfutter-12-5-kg.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina. De fabrikant vermeldt geen vocht, energie (kcal), calcium, fosfor of omega-3/omega-6; die blijven null.'
 where id = 'ad441d99-e22b-425e-98ae-a3287790614f';
delete from public.recipe_nutrition where recipe_version_id = 'ad441d99-e22b-425e-98ae-a3287790614f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ad441d99-e22b-425e-98ae-a3287790614f', 'protein', 28, 'as-fed'),
  ('ad441d99-e22b-425e-98ae-a3287790614f', 'fat', 17, 'as-fed'),
  ('ad441d99-e22b-425e-98ae-a3287790614f', 'fiber', 3, 'as-fed'),
  ('ad441d99-e22b-425e-98ae-a3287790614f', 'ash', 10, 'as-fed');

-- Wolfsblut — VetLine Gastrointestinal (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.wolfsblut.com/wolfsblut-vetline-wolfsblut-vetline-gastrointestinal-trockenfutter-12-kg.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina. Vocht en energie (kcal) worden niet vermeld; die blijven null.'
 where id = '3a6ec052-30ff-496e-a235-20b9935c251b';
delete from public.recipe_nutrition where recipe_version_id = '3a6ec052-30ff-496e-a235-20b9935c251b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3a6ec052-30ff-496e-a235-20b9935c251b', 'protein', 20, 'as-fed'),
  ('3a6ec052-30ff-496e-a235-20b9935c251b', 'fat', 10, 'as-fed'),
  ('3a6ec052-30ff-496e-a235-20b9935c251b', 'fiber', 2.8, 'as-fed'),
  ('3a6ec052-30ff-496e-a235-20b9935c251b', 'ash', 9.5, 'as-fed'),
  ('3a6ec052-30ff-496e-a235-20b9935c251b', 'calcium', 1.3, 'as-fed'),
  ('3a6ec052-30ff-496e-a235-20b9935c251b', 'phosphorus', 0.9, 'as-fed'),
  ('3a6ec052-30ff-496e-a235-20b9935c251b', 'omega3', 0.5, 'as-fed'),
  ('3a6ec052-30ff-496e-a235-20b9935c251b', 'omega6', 2.8, 'as-fed');

-- Wolfsblut — VetLine Hypoallergenic (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.wolfsblut.com/wolfsblut-vetline-wolfsblut-vetline-hypoallergenic-trockenfutter-12-kg.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina. Vocht en energie (kcal) worden niet vermeld; die blijven null. DHA/EPA zijn niet als omega-3-totaal overgenomen.'
 where id = '5f3fc91b-d36d-4693-a211-ebbf17cffb2d';
delete from public.recipe_nutrition where recipe_version_id = '5f3fc91b-d36d-4693-a211-ebbf17cffb2d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5f3fc91b-d36d-4693-a211-ebbf17cffb2d', 'protein', 20, 'as-fed'),
  ('5f3fc91b-d36d-4693-a211-ebbf17cffb2d', 'fat', 14, 'as-fed'),
  ('5f3fc91b-d36d-4693-a211-ebbf17cffb2d', 'fiber', 3, 'as-fed'),
  ('5f3fc91b-d36d-4693-a211-ebbf17cffb2d', 'ash', 9.8, 'as-fed'),
  ('5f3fc91b-d36d-4693-a211-ebbf17cffb2d', 'calcium', 2, 'as-fed'),
  ('5f3fc91b-d36d-4693-a211-ebbf17cffb2d', 'phosphorus', 1.4, 'as-fed'),
  ('5f3fc91b-d36d-4693-a211-ebbf17cffb2d', 'omega3', 1, 'as-fed'),
  ('5f3fc91b-d36d-4693-a211-ebbf17cffb2d', 'omega6', 3.5, 'as-fed');

-- Farm Food — Fresh Menu Pens & Hart Compleet (zacht gestoomd) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.farmfood.nl/product/farm-food-pens-hart-compleet-zacht-gestoomd/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen. kcal omgerekend van 1495 kcal/kg naar 149,5 kcal/100 g (gedeeld door 10). Omega-3 en omega-6 worden niet vermeld.'
 where id = '3588e535-2f86-4e3d-91d5-50340c2ca1b0';
delete from public.recipe_nutrition where recipe_version_id = '3588e535-2f86-4e3d-91d5-50340c2ca1b0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3588e535-2f86-4e3d-91d5-50340c2ca1b0', 'protein', 9.7, 'as-fed'),
  ('3588e535-2f86-4e3d-91d5-50340c2ca1b0', 'fat', 11.8, 'as-fed'),
  ('3588e535-2f86-4e3d-91d5-50340c2ca1b0', 'fiber', 0.8, 'as-fed'),
  ('3588e535-2f86-4e3d-91d5-50340c2ca1b0', 'ash', 2.5, 'as-fed'),
  ('3588e535-2f86-4e3d-91d5-50340c2ca1b0', 'moisture', 74, 'as-fed'),
  ('3588e535-2f86-4e3d-91d5-50340c2ca1b0', 'kcal', 149.5, 'as-fed'),
  ('3588e535-2f86-4e3d-91d5-50340c2ca1b0', 'calcium', 0.5, 'as-fed'),
  ('3588e535-2f86-4e3d-91d5-50340c2ca1b0', 'phosphorus', 0.4, 'as-fed');

-- Farm Food — Fresh Menu Rundvlees Compleet (zacht gestoomd) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.farmfood.nl/product/farm-food-rundvlees-compleet-zacht-gestoomd/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen. kcal omgerekend van 1500 kcal/kg naar 150 kcal/100 g (gedeeld door 10). Omega-3 en omega-6 worden niet vermeld.'
 where id = '5b86f2ab-97e3-4126-80a2-dfb04a24d4da';
delete from public.recipe_nutrition where recipe_version_id = '5b86f2ab-97e3-4126-80a2-dfb04a24d4da';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5b86f2ab-97e3-4126-80a2-dfb04a24d4da', 'protein', 11.1, 'as-fed'),
  ('5b86f2ab-97e3-4126-80a2-dfb04a24d4da', 'fat', 10.9, 'as-fed'),
  ('5b86f2ab-97e3-4126-80a2-dfb04a24d4da', 'fiber', 0.8, 'as-fed'),
  ('5b86f2ab-97e3-4126-80a2-dfb04a24d4da', 'ash', 2.4, 'as-fed'),
  ('5b86f2ab-97e3-4126-80a2-dfb04a24d4da', 'moisture', 72.9, 'as-fed'),
  ('5b86f2ab-97e3-4126-80a2-dfb04a24d4da', 'kcal', 150, 'as-fed'),
  ('5b86f2ab-97e3-4126-80a2-dfb04a24d4da', 'calcium', 0.5, 'as-fed'),
  ('5b86f2ab-97e3-4126-80a2-dfb04a24d4da', 'phosphorus', 0.4, 'as-fed');

-- Farm Food — Fresh Menu Schaap (zacht gestoomd) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.farmfood.nl/product/farm-food-fresh-menu-schaap-zacht-gestoomd/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen. kcal omgerekend van 1311 kcal/kg naar 131,1 kcal/100 g (gedeeld door 10). Omega-3 en omega-6 worden niet vermeld.'
 where id = '0ca16e25-1d7d-4165-8f81-b62119daabd0';
delete from public.recipe_nutrition where recipe_version_id = '0ca16e25-1d7d-4165-8f81-b62119daabd0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0ca16e25-1d7d-4165-8f81-b62119daabd0', 'protein', 10.2, 'as-fed'),
  ('0ca16e25-1d7d-4165-8f81-b62119daabd0', 'fat', 8.7, 'as-fed'),
  ('0ca16e25-1d7d-4165-8f81-b62119daabd0', 'fiber', 0.3, 'as-fed'),
  ('0ca16e25-1d7d-4165-8f81-b62119daabd0', 'ash', 2.8, 'as-fed'),
  ('0ca16e25-1d7d-4165-8f81-b62119daabd0', 'moisture', 75, 'as-fed'),
  ('0ca16e25-1d7d-4165-8f81-b62119daabd0', 'kcal', 131.1, 'as-fed'),
  ('0ca16e25-1d7d-4165-8f81-b62119daabd0', 'calcium', 0.42, 'as-fed'),
  ('0ca16e25-1d7d-4165-8f81-b62119daabd0', 'phosphorus', 0.37, 'as-fed');

-- Farm Food — Fresh Pens & Hart Compleet (diepvries) (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.farmfood.nl/product/farm-food-pens-hart-compleet-diepvries/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen. kcal omgerekend van 2061 kcal/kg naar 206,1 kcal/100 g (gedeeld door 10). Omega-3 en omega-6 worden niet vermeld.'
 where id = '4ed2930d-b9ae-471f-b6a6-6e097a80cc5f';
delete from public.recipe_nutrition where recipe_version_id = '4ed2930d-b9ae-471f-b6a6-6e097a80cc5f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4ed2930d-b9ae-471f-b6a6-6e097a80cc5f', 'protein', 14.5, 'as-fed'),
  ('4ed2930d-b9ae-471f-b6a6-6e097a80cc5f', 'fat', 15.5, 'as-fed'),
  ('4ed2930d-b9ae-471f-b6a6-6e097a80cc5f', 'fiber', 1.5, 'as-fed'),
  ('4ed2930d-b9ae-471f-b6a6-6e097a80cc5f', 'ash', 3, 'as-fed'),
  ('4ed2930d-b9ae-471f-b6a6-6e097a80cc5f', 'moisture', 63.5, 'as-fed'),
  ('4ed2930d-b9ae-471f-b6a6-6e097a80cc5f', 'kcal', 206.1, 'as-fed'),
  ('4ed2930d-b9ae-471f-b6a6-6e097a80cc5f', 'calcium', 0.6, 'as-fed'),
  ('4ed2930d-b9ae-471f-b6a6-6e097a80cc5f', 'phosphorus', 0.48, 'as-fed');

-- Farm Food — Fresh Rundvlees Compleet (diepvries) (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.farmfood.nl/product/farm-food-rundvlees-compleet-diepvries/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen. kcal omgerekend van 2330 kcal/kg naar 233 kcal/100 g (gedeeld door 10). Omega-3 en omega-6 worden niet vermeld.'
 where id = 'f77fd2cb-94cf-45e7-8e3d-f2467e10a36a';
delete from public.recipe_nutrition where recipe_version_id = 'f77fd2cb-94cf-45e7-8e3d-f2467e10a36a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f77fd2cb-94cf-45e7-8e3d-f2467e10a36a', 'protein', 16, 'as-fed'),
  ('f77fd2cb-94cf-45e7-8e3d-f2467e10a36a', 'fat', 17.4, 'as-fed'),
  ('f77fd2cb-94cf-45e7-8e3d-f2467e10a36a', 'fiber', 0.6, 'as-fed'),
  ('f77fd2cb-94cf-45e7-8e3d-f2467e10a36a', 'ash', 3, 'as-fed'),
  ('f77fd2cb-94cf-45e7-8e3d-f2467e10a36a', 'moisture', 60, 'as-fed'),
  ('f77fd2cb-94cf-45e7-8e3d-f2467e10a36a', 'kcal', 233, 'as-fed'),
  ('f77fd2cb-94cf-45e7-8e3d-f2467e10a36a', 'calcium', 0.6, 'as-fed'),
  ('f77fd2cb-94cf-45e7-8e3d-f2467e10a36a', 'phosphorus', 0.48, 'as-fed');

-- Farm Food — HE Classic (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.farmfood.nl/product/farm-food-he-classic/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen. Ruwe as is door de fabrikant als maximum (max. 6%) vermeld; de waarde 6 is overgenomen. kcal omgerekend van 4145 kcal/kg naar 414,5 kcal/100 g (gedeeld door 10). Omega-3 en omega-6 worden niet vermeld.'
 where id = '455d55aa-3534-40b1-ab58-f7ca3303b5f4';
delete from public.recipe_nutrition where recipe_version_id = '455d55aa-3534-40b1-ab58-f7ca3303b5f4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('455d55aa-3534-40b1-ab58-f7ca3303b5f4', 'protein', 24, 'as-fed'),
  ('455d55aa-3534-40b1-ab58-f7ca3303b5f4', 'fat', 14, 'as-fed'),
  ('455d55aa-3534-40b1-ab58-f7ca3303b5f4', 'fiber', 2, 'as-fed'),
  ('455d55aa-3534-40b1-ab58-f7ca3303b5f4', 'ash', 6, 'as-fed'),
  ('455d55aa-3534-40b1-ab58-f7ca3303b5f4', 'moisture', 8, 'as-fed'),
  ('455d55aa-3534-40b1-ab58-f7ca3303b5f4', 'kcal', 414.5, 'as-fed'),
  ('455d55aa-3534-40b1-ab58-f7ca3303b5f4', 'calcium', 1, 'as-fed'),
  ('455d55aa-3534-40b1-ab58-f7ca3303b5f4', 'phosphorus', 0.8, 'as-fed');

-- Farm Food — HE Glutenvrij (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.farmfood.nl/product/farm-food-he-glutenvrij/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen. Ruwe as is door de fabrikant als maximum (max. 6%) vermeld; de waarde 6 is overgenomen. kcal omgerekend van 4145 kcal/kg naar 414,5 kcal/100 g (gedeeld door 10). Omega-3 en omega-6 worden niet vermeld.'
 where id = '155235da-0a37-4f7f-9bb5-36feb531d92b';
delete from public.recipe_nutrition where recipe_version_id = '155235da-0a37-4f7f-9bb5-36feb531d92b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('155235da-0a37-4f7f-9bb5-36feb531d92b', 'protein', 24, 'as-fed'),
  ('155235da-0a37-4f7f-9bb5-36feb531d92b', 'fat', 14, 'as-fed'),
  ('155235da-0a37-4f7f-9bb5-36feb531d92b', 'fiber', 2, 'as-fed'),
  ('155235da-0a37-4f7f-9bb5-36feb531d92b', 'ash', 6, 'as-fed'),
  ('155235da-0a37-4f7f-9bb5-36feb531d92b', 'moisture', 8, 'as-fed'),
  ('155235da-0a37-4f7f-9bb5-36feb531d92b', 'kcal', 414.5, 'as-fed'),
  ('155235da-0a37-4f7f-9bb5-36feb531d92b', 'calcium', 1, 'as-fed'),
  ('155235da-0a37-4f7f-9bb5-36feb531d92b', 'phosphorus', 0.8, 'as-fed');

-- Farm Food — HE met Schotse Zalmolie (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.farmfood.nl/product/farm-food-he-met-schotse-zalmolie/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen. De fabrikant vermeldt dat de analyse gelijk is aan HE Classic. Ruwe as is als maximum (max. 6%) vermeld; de waarde 6 is overgenomen. kcal omgerekend van 4145 kcal/kg naar 414,5 kcal/100 g (gedeeld door 10). Omega-3 en omega-6 worden niet vermeld.'
 where id = '16396e3f-7da7-4921-a716-ff197e485920';
delete from public.recipe_nutrition where recipe_version_id = '16396e3f-7da7-4921-a716-ff197e485920';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('16396e3f-7da7-4921-a716-ff197e485920', 'protein', 24, 'as-fed'),
  ('16396e3f-7da7-4921-a716-ff197e485920', 'fat', 14, 'as-fed'),
  ('16396e3f-7da7-4921-a716-ff197e485920', 'fiber', 2, 'as-fed'),
  ('16396e3f-7da7-4921-a716-ff197e485920', 'ash', 6, 'as-fed'),
  ('16396e3f-7da7-4921-a716-ff197e485920', 'moisture', 8, 'as-fed'),
  ('16396e3f-7da7-4921-a716-ff197e485920', 'kcal', 414.5, 'as-fed'),
  ('16396e3f-7da7-4921-a716-ff197e485920', 'calcium', 1, 'as-fed'),
  ('16396e3f-7da7-4921-a716-ff197e485920', 'phosphorus', 0.8, 'as-fed');

-- Farm Food — HE Schaap (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.farmfood.nl/product/farm-food-he-schaap/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen. Ruwe as is door de fabrikant als maximum (max. 6%) vermeld; de waarde 6 is overgenomen. kcal omgerekend van 4145 kcal/kg naar 414,5 kcal/100 g (gedeeld door 10). Omega-3 en omega-6 worden niet vermeld.'
 where id = 'f3afc7dd-0de2-4efb-bd2d-4480a1531c49';
delete from public.recipe_nutrition where recipe_version_id = 'f3afc7dd-0de2-4efb-bd2d-4480a1531c49';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f3afc7dd-0de2-4efb-bd2d-4480a1531c49', 'protein', 24, 'as-fed'),
  ('f3afc7dd-0de2-4efb-bd2d-4480a1531c49', 'fat', 14, 'as-fed'),
  ('f3afc7dd-0de2-4efb-bd2d-4480a1531c49', 'fiber', 2, 'as-fed'),
  ('f3afc7dd-0de2-4efb-bd2d-4480a1531c49', 'ash', 6, 'as-fed'),
  ('f3afc7dd-0de2-4efb-bd2d-4480a1531c49', 'moisture', 8, 'as-fed'),
  ('f3afc7dd-0de2-4efb-bd2d-4480a1531c49', 'kcal', 414.5, 'as-fed'),
  ('f3afc7dd-0de2-4efb-bd2d-4480a1531c49', 'calcium', 1, 'as-fed'),
  ('f3afc7dd-0de2-4efb-bd2d-4480a1531c49', 'phosphorus', 0.8, 'as-fed');

-- Yora — Adult Alle Rassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://yorapets.be/hond/insecteneiwit-adult-alle-rassen-hond-droogvoer/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen. De fabrikant vermeldt de energie direct als 357,6 kcal per 100 g; geen omrekening nodig. Vocht en fosfor worden niet vermeld.'
 where id = 'a3ab7136-e23e-4ee4-94ed-5a448d9d1316';
delete from public.recipe_nutrition where recipe_version_id = 'a3ab7136-e23e-4ee4-94ed-5a448d9d1316';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a3ab7136-e23e-4ee4-94ed-5a448d9d1316', 'protein', 24, 'as-fed'),
  ('a3ab7136-e23e-4ee4-94ed-5a448d9d1316', 'fat', 14, 'as-fed'),
  ('a3ab7136-e23e-4ee4-94ed-5a448d9d1316', 'fiber', 5.5, 'as-fed'),
  ('a3ab7136-e23e-4ee4-94ed-5a448d9d1316', 'ash', 7.5, 'as-fed'),
  ('a3ab7136-e23e-4ee4-94ed-5a448d9d1316', 'kcal', 357.6, 'as-fed'),
  ('a3ab7136-e23e-4ee4-94ed-5a448d9d1316', 'calcium', 1, 'as-fed'),
  ('a3ab7136-e23e-4ee4-94ed-5a448d9d1316', 'omega3', 1, 'as-fed'),
  ('a3ab7136-e23e-4ee4-94ed-5a448d9d1316', 'omega6', 2.5, 'as-fed');

-- Yora — Adult Graanvrij (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://yorapets.be/hond/insecteneiwit-adult-graanvrij-hond-droogvoer/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen. De fabrikant vermeldt de energie direct als 358,1 kcal per 100 g; geen omrekening nodig. Vocht en fosfor worden niet vermeld.'
 where id = '7a279df7-bec5-4581-bda7-debed448555d';
delete from public.recipe_nutrition where recipe_version_id = '7a279df7-bec5-4581-bda7-debed448555d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7a279df7-bec5-4581-bda7-debed448555d', 'protein', 24, 'as-fed'),
  ('7a279df7-bec5-4581-bda7-debed448555d', 'fat', 14.5, 'as-fed'),
  ('7a279df7-bec5-4581-bda7-debed448555d', 'fiber', 5.5, 'as-fed'),
  ('7a279df7-bec5-4581-bda7-debed448555d', 'ash', 8, 'as-fed'),
  ('7a279df7-bec5-4581-bda7-debed448555d', 'kcal', 358.1, 'as-fed'),
  ('7a279df7-bec5-4581-bda7-debed448555d', 'calcium', 1.2, 'as-fed'),
  ('7a279df7-bec5-4581-bda7-debed448555d', 'omega3', 1, 'as-fed'),
  ('7a279df7-bec5-4581-bda7-debed448555d', 'omega6', 2.5, 'as-fed');

-- Yora — Adult Grote Rassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://yorapets.be/hond/insecteneiwit-grote-rassen-rassen-hond-droogvoer/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen. De fabrikant vermeldt de energie direct als 348,3 kcal per 100 g; geen omrekening nodig. Vocht en fosfor worden niet vermeld.'
 where id = 'a8d68bc7-265e-4e9f-9faf-fdb11f07bad1';
delete from public.recipe_nutrition where recipe_version_id = 'a8d68bc7-265e-4e9f-9faf-fdb11f07bad1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a8d68bc7-265e-4e9f-9faf-fdb11f07bad1', 'protein', 24, 'as-fed'),
  ('a8d68bc7-265e-4e9f-9faf-fdb11f07bad1', 'fat', 13, 'as-fed'),
  ('a8d68bc7-265e-4e9f-9faf-fdb11f07bad1', 'fiber', 6, 'as-fed'),
  ('a8d68bc7-265e-4e9f-9faf-fdb11f07bad1', 'ash', 8, 'as-fed'),
  ('a8d68bc7-265e-4e9f-9faf-fdb11f07bad1', 'kcal', 348.3, 'as-fed'),
  ('a8d68bc7-265e-4e9f-9faf-fdb11f07bad1', 'calcium', 1.1, 'as-fed'),
  ('a8d68bc7-265e-4e9f-9faf-fdb11f07bad1', 'omega3', 1, 'as-fed'),
  ('a8d68bc7-265e-4e9f-9faf-fdb11f07bad1', 'omega6', 2.2, 'as-fed');

-- Yora — Adult Kleine Rassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://yorapets.be/hond/insecteneiwit-kleine-rassen-hond-droogvoer/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen. De fabrikant vermeldt de energie direct als 360,6 kcal per 100 g; geen omrekening nodig. Vocht en fosfor worden niet vermeld.'
 where id = '24c0087e-4a63-46f6-a87f-a3e5f0a517f8';
delete from public.recipe_nutrition where recipe_version_id = '24c0087e-4a63-46f6-a87f-a3e5f0a517f8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('24c0087e-4a63-46f6-a87f-a3e5f0a517f8', 'protein', 25, 'as-fed'),
  ('24c0087e-4a63-46f6-a87f-a3e5f0a517f8', 'fat', 15, 'as-fed'),
  ('24c0087e-4a63-46f6-a87f-a3e5f0a517f8', 'fiber', 5.5, 'as-fed'),
  ('24c0087e-4a63-46f6-a87f-a3e5f0a517f8', 'ash', 8, 'as-fed'),
  ('24c0087e-4a63-46f6-a87f-a3e5f0a517f8', 'kcal', 360.6, 'as-fed'),
  ('24c0087e-4a63-46f6-a87f-a3e5f0a517f8', 'calcium', 1, 'as-fed'),
  ('24c0087e-4a63-46f6-a87f-a3e5f0a517f8', 'omega3', 1.1, 'as-fed'),
  ('24c0087e-4a63-46f6-a87f-a3e5f0a517f8', 'omega6', 2.5, 'as-fed');

-- Yora — Adult Light / Senior (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://yorapets.be/hond/insecteneiwit-light-senior-rassen-hond-droogvoer/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen. De fabrikant vermeldt de energie direct als 340,7 kcal per 100 g; geen omrekening nodig. Vocht en fosfor worden niet vermeld.'
 where id = '303cbbdb-b3d3-4afa-a3e4-110585051e44';
delete from public.recipe_nutrition where recipe_version_id = '303cbbdb-b3d3-4afa-a3e4-110585051e44';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('303cbbdb-b3d3-4afa-a3e4-110585051e44', 'protein', 24, 'as-fed'),
  ('303cbbdb-b3d3-4afa-a3e4-110585051e44', 'fat', 12, 'as-fed'),
  ('303cbbdb-b3d3-4afa-a3e4-110585051e44', 'fiber', 6.5, 'as-fed'),
  ('303cbbdb-b3d3-4afa-a3e4-110585051e44', 'ash', 8, 'as-fed'),
  ('303cbbdb-b3d3-4afa-a3e4-110585051e44', 'kcal', 340.7, 'as-fed'),
  ('303cbbdb-b3d3-4afa-a3e4-110585051e44', 'calcium', 1.3, 'as-fed'),
  ('303cbbdb-b3d3-4afa-a3e4-110585051e44', 'omega3', 1, 'as-fed'),
  ('303cbbdb-b3d3-4afa-a3e4-110585051e44', 'omega6', 6.5, 'as-fed');

-- Yora — Pâté Appel & Pastinaak (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://yorapets.be/hond/insecteneiwit-volwassen-hond-pate-appel-pastinaak/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen. De fabrikant vermeldt de energie direct als 102,6 kcal per 100 g; geen omrekening nodig. Calcium, fosfor en omega-3/omega-6 worden niet vermeld.'
 where id = '2c4aaf2d-9cd5-455f-b9df-9652c3549682';
delete from public.recipe_nutrition where recipe_version_id = '2c4aaf2d-9cd5-455f-b9df-9652c3549682';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2c4aaf2d-9cd5-455f-b9df-9652c3549682', 'protein', 10, 'as-fed'),
  ('2c4aaf2d-9cd5-455f-b9df-9652c3549682', 'fat', 5, 'as-fed'),
  ('2c4aaf2d-9cd5-455f-b9df-9652c3549682', 'fiber', 2, 'as-fed'),
  ('2c4aaf2d-9cd5-455f-b9df-9652c3549682', 'ash', 2, 'as-fed'),
  ('2c4aaf2d-9cd5-455f-b9df-9652c3549682', 'moisture', 74, 'as-fed'),
  ('2c4aaf2d-9cd5-455f-b9df-9652c3549682', 'kcal', 102.6, 'as-fed');

-- Yora — Pâté Rode Biet & Koolraap (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://yorapets.be/hond/insecteneiwit-volwassen-hond-natvoer-rode-bieten-koolraap/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen. De fabrikant vermeldt de energie direct als 102,6 kcal per 100 g; geen omrekening nodig. Calcium, fosfor en omega-3/omega-6 worden niet vermeld.'
 where id = '3b7987e7-6e24-43cf-ab4b-e8658510451b';
delete from public.recipe_nutrition where recipe_version_id = '3b7987e7-6e24-43cf-ab4b-e8658510451b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3b7987e7-6e24-43cf-ab4b-e8658510451b', 'protein', 10, 'as-fed'),
  ('3b7987e7-6e24-43cf-ab4b-e8658510451b', 'fat', 5, 'as-fed'),
  ('3b7987e7-6e24-43cf-ab4b-e8658510451b', 'fiber', 2, 'as-fed'),
  ('3b7987e7-6e24-43cf-ab4b-e8658510451b', 'ash', 2, 'as-fed'),
  ('3b7987e7-6e24-43cf-ab4b-e8658510451b', 'moisture', 74, 'as-fed'),
  ('3b7987e7-6e24-43cf-ab4b-e8658510451b', 'kcal', 102.6, 'as-fed');

-- Yora — Pâté Wortel & Aardappel (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://yorapets.be/hond/insecteneiwit-volwassen-hondpate-wortel-aardappel/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen. De fabrikant vermeldt de energie direct als 102,6 kcal per 100 g; geen omrekening nodig. Calcium, fosfor en omega-3/omega-6 worden niet vermeld.'
 where id = '355492cd-8c9c-4ca3-8c5d-5baa9b450275';
delete from public.recipe_nutrition where recipe_version_id = '355492cd-8c9c-4ca3-8c5d-5baa9b450275';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('355492cd-8c9c-4ca3-8c5d-5baa9b450275', 'protein', 10, 'as-fed'),
  ('355492cd-8c9c-4ca3-8c5d-5baa9b450275', 'fat', 5, 'as-fed'),
  ('355492cd-8c9c-4ca3-8c5d-5baa9b450275', 'fiber', 2, 'as-fed'),
  ('355492cd-8c9c-4ca3-8c5d-5baa9b450275', 'ash', 2, 'as-fed'),
  ('355492cd-8c9c-4ca3-8c5d-5baa9b450275', 'moisture', 74, 'as-fed'),
  ('355492cd-8c9c-4ca3-8c5d-5baa9b450275', 'kcal', 102.6, 'as-fed');

-- Yora — Puppy Alle Rassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://yorapets.be/hond/insecteneiwit-puppy-alle-rassen-droogvoer/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen. De fabrikant vermeldt de energie direct als 358,6 kcal per 100 g; geen omrekening nodig. Vocht en fosfor worden niet vermeld.'
 where id = '2dfb699d-4ff6-4fbc-b318-9482a02cf9bc';
delete from public.recipe_nutrition where recipe_version_id = '2dfb699d-4ff6-4fbc-b318-9482a02cf9bc';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2dfb699d-4ff6-4fbc-b318-9482a02cf9bc', 'protein', 27.5, 'as-fed'),
  ('2dfb699d-4ff6-4fbc-b318-9482a02cf9bc', 'fat', 14, 'as-fed'),
  ('2dfb699d-4ff6-4fbc-b318-9482a02cf9bc', 'fiber', 5.5, 'as-fed'),
  ('2dfb699d-4ff6-4fbc-b318-9482a02cf9bc', 'ash', 7.5, 'as-fed'),
  ('2dfb699d-4ff6-4fbc-b318-9482a02cf9bc', 'kcal', 358.6, 'as-fed'),
  ('2dfb699d-4ff6-4fbc-b318-9482a02cf9bc', 'calcium', 1, 'as-fed'),
  ('2dfb699d-4ff6-4fbc-b318-9482a02cf9bc', 'omega3', 1, 'as-fed'),
  ('2dfb699d-4ff6-4fbc-b318-9482a02cf9bc', 'omega6', 2.5, 'as-fed');

-- Iams — Droogvoer met lam voor volwassen honden van grote rassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://iams.eu/nl-nl/hond/droogvoer/droogvoer-met-lam-voor-volwassen-honden-van-grote-rassen',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina. Vocht en energie (kcal) worden niet vermeld; die blijven null.'
 where id = 'e39f3a4a-39bd-498b-8d95-e596d0218aa2';
delete from public.recipe_nutrition where recipe_version_id = 'e39f3a4a-39bd-498b-8d95-e596d0218aa2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e39f3a4a-39bd-498b-8d95-e596d0218aa2', 'protein', 23, 'as-fed'),
  ('e39f3a4a-39bd-498b-8d95-e596d0218aa2', 'fat', 13, 'as-fed'),
  ('e39f3a4a-39bd-498b-8d95-e596d0218aa2', 'fiber', 2.5, 'as-fed'),
  ('e39f3a4a-39bd-498b-8d95-e596d0218aa2', 'ash', 6.1, 'as-fed'),
  ('e39f3a4a-39bd-498b-8d95-e596d0218aa2', 'calcium', 1.2, 'as-fed'),
  ('e39f3a4a-39bd-498b-8d95-e596d0218aa2', 'phosphorus', 1, 'as-fed'),
  ('e39f3a4a-39bd-498b-8d95-e596d0218aa2', 'omega3', 0.2, 'as-fed'),
  ('e39f3a4a-39bd-498b-8d95-e596d0218aa2', 'omega6', 1.6, 'as-fed');

-- Iams — Droogvoer met lam voor volwassen honden van kleine en middelgrote rassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://iams.eu/nl-nl/hond/droogvoer/droogvoer-met-lam-voor-volwassen-honden-van-kleine-en-middelgrote-rassen',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina. Vocht en energie (kcal) worden niet vermeld; die blijven null.'
 where id = '05ce6d90-2623-4440-b4f5-d56389dde149';
delete from public.recipe_nutrition where recipe_version_id = '05ce6d90-2623-4440-b4f5-d56389dde149';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('05ce6d90-2623-4440-b4f5-d56389dde149', 'protein', 26, 'as-fed'),
  ('05ce6d90-2623-4440-b4f5-d56389dde149', 'fat', 15, 'as-fed'),
  ('05ce6d90-2623-4440-b4f5-d56389dde149', 'fiber', 2.6, 'as-fed'),
  ('05ce6d90-2623-4440-b4f5-d56389dde149', 'ash', 6.7, 'as-fed'),
  ('05ce6d90-2623-4440-b4f5-d56389dde149', 'calcium', 1.5, 'as-fed'),
  ('05ce6d90-2623-4440-b4f5-d56389dde149', 'phosphorus', 1.1, 'as-fed'),
  ('05ce6d90-2623-4440-b4f5-d56389dde149', 'omega3', 0.2, 'as-fed'),
  ('05ce6d90-2623-4440-b4f5-d56389dde149', 'omega6', 1.6, 'as-fed');

-- Iams — Droogvoer met verse kip en laag vetgehalte voor volwassen honden van alle rassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://iams.eu/nl-nl/hond/droogvoer/droogvoer-met-verse-kip-en-laag-vetgehalte-voor-volwassen-honden-van-alle-rassen',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina. Vocht en energie (kcal) worden niet vermeld; die blijven null.'
 where id = '69327723-80b7-4a10-b41b-5f9920044a01';
delete from public.recipe_nutrition where recipe_version_id = '69327723-80b7-4a10-b41b-5f9920044a01';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('69327723-80b7-4a10-b41b-5f9920044a01', 'protein', 20, 'as-fed'),
  ('69327723-80b7-4a10-b41b-5f9920044a01', 'fat', 10, 'as-fed'),
  ('69327723-80b7-4a10-b41b-5f9920044a01', 'fiber', 2.8, 'as-fed'),
  ('69327723-80b7-4a10-b41b-5f9920044a01', 'ash', 5.3, 'as-fed'),
  ('69327723-80b7-4a10-b41b-5f9920044a01', 'calcium', 1, 'as-fed'),
  ('69327723-80b7-4a10-b41b-5f9920044a01', 'phosphorus', 0.8, 'as-fed'),
  ('69327723-80b7-4a10-b41b-5f9920044a01', 'omega3', 0.25, 'as-fed'),
  ('69327723-80b7-4a10-b41b-5f9920044a01', 'omega6', 1.5, 'as-fed');

-- Iams — Droogvoer met verse kip voor puppy's van grote rassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://iams.eu/nl-nl/hond/droogvoer/droogvoer-met-verse-kip-voor-puppys-van-grote-rassen',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina. Vocht en energie (kcal) worden niet vermeld; die blijven null. DHA is niet als omega-3-totaal overgenomen.'
 where id = '0bf585d3-1517-4991-b2a6-08e4f4a3e093';
delete from public.recipe_nutrition where recipe_version_id = '0bf585d3-1517-4991-b2a6-08e4f4a3e093';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0bf585d3-1517-4991-b2a6-08e4f4a3e093', 'protein', 26, 'as-fed'),
  ('0bf585d3-1517-4991-b2a6-08e4f4a3e093', 'fat', 14, 'as-fed'),
  ('0bf585d3-1517-4991-b2a6-08e4f4a3e093', 'fiber', 2.6, 'as-fed'),
  ('0bf585d3-1517-4991-b2a6-08e4f4a3e093', 'ash', 6, 'as-fed'),
  ('0bf585d3-1517-4991-b2a6-08e4f4a3e093', 'calcium', 1.1, 'as-fed'),
  ('0bf585d3-1517-4991-b2a6-08e4f4a3e093', 'phosphorus', 0.8, 'as-fed'),
  ('0bf585d3-1517-4991-b2a6-08e4f4a3e093', 'omega3', 0.5, 'as-fed'),
  ('0bf585d3-1517-4991-b2a6-08e4f4a3e093', 'omega6', 2.8, 'as-fed');

-- Iams — Droogvoer met verse kip voor puppy's van kleine en middelgrote rassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://iams.eu/nl-nl/hond/droogvoer/droogvoer-met-verse-kip-voor-puppys-van-kleine-en-middelgrote-rassen',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina. Vocht en energie (kcal) worden niet vermeld; die blijven null. DHA is niet als omega-3-totaal overgenomen.'
 where id = 'c6f20163-ce97-42d9-8121-742bb4cdb943';
delete from public.recipe_nutrition where recipe_version_id = 'c6f20163-ce97-42d9-8121-742bb4cdb943';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c6f20163-ce97-42d9-8121-742bb4cdb943', 'protein', 28, 'as-fed'),
  ('c6f20163-ce97-42d9-8121-742bb4cdb943', 'fat', 17, 'as-fed'),
  ('c6f20163-ce97-42d9-8121-742bb4cdb943', 'fiber', 2.3, 'as-fed'),
  ('c6f20163-ce97-42d9-8121-742bb4cdb943', 'ash', 6.5, 'as-fed'),
  ('c6f20163-ce97-42d9-8121-742bb4cdb943', 'calcium', 1.4, 'as-fed'),
  ('c6f20163-ce97-42d9-8121-742bb4cdb943', 'phosphorus', 1, 'as-fed'),
  ('c6f20163-ce97-42d9-8121-742bb4cdb943', 'omega3', 0.5, 'as-fed'),
  ('c6f20163-ce97-42d9-8121-742bb4cdb943', 'omega6', 2.5, 'as-fed');

-- Iams — Droogvoer met verse kip voor senior honden van kleine en middelgrote rassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://iams.eu/nl-nl/hond/droogvoer/droogvoer-met-verse-kip-voor-senior-katten-1',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina. De URL bevat ''katten'', maar de pagina en de titel betreffen het hondenproduct voor senior honden van kleine en middelgrote rassen. Vocht en energie (kcal) worden niet vermeld; die blijven null.'
 where id = 'ed63919c-5661-470c-8a79-e0600a42dbda';
delete from public.recipe_nutrition where recipe_version_id = 'ed63919c-5661-470c-8a79-e0600a42dbda';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ed63919c-5661-470c-8a79-e0600a42dbda', 'protein', 27, 'as-fed'),
  ('ed63919c-5661-470c-8a79-e0600a42dbda', 'fat', 12, 'as-fed'),
  ('ed63919c-5661-470c-8a79-e0600a42dbda', 'fiber', 2.7, 'as-fed'),
  ('ed63919c-5661-470c-8a79-e0600a42dbda', 'ash', 6.7, 'as-fed'),
  ('ed63919c-5661-470c-8a79-e0600a42dbda', 'calcium', 1.5, 'as-fed'),
  ('ed63919c-5661-470c-8a79-e0600a42dbda', 'phosphorus', 1.1, 'as-fed'),
  ('ed63919c-5661-470c-8a79-e0600a42dbda', 'omega3', 0.2, 'as-fed'),
  ('ed63919c-5661-470c-8a79-e0600a42dbda', 'omega6', 1.2, 'as-fed');

-- Iams — Droogvoer met verse kip voor volwassen honden van grote rassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://iams.eu/nl-nl/hond/droogvoer/droogvoer-met-verse-kip-voor-volwassen-honden-van-grote-rassen',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina. Vocht en energie (kcal) worden niet vermeld; die blijven null.'
 where id = 'c50356ae-bd83-48aa-b976-90ad2933f9ea';
delete from public.recipe_nutrition where recipe_version_id = 'c50356ae-bd83-48aa-b976-90ad2933f9ea';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c50356ae-bd83-48aa-b976-90ad2933f9ea', 'protein', 23, 'as-fed'),
  ('c50356ae-bd83-48aa-b976-90ad2933f9ea', 'fat', 13, 'as-fed'),
  ('c50356ae-bd83-48aa-b976-90ad2933f9ea', 'fiber', 2.5, 'as-fed'),
  ('c50356ae-bd83-48aa-b976-90ad2933f9ea', 'ash', 5.9, 'as-fed'),
  ('c50356ae-bd83-48aa-b976-90ad2933f9ea', 'calcium', 1.2, 'as-fed'),
  ('c50356ae-bd83-48aa-b976-90ad2933f9ea', 'phosphorus', 0.9, 'as-fed'),
  ('c50356ae-bd83-48aa-b976-90ad2933f9ea', 'omega3', 0.2, 'as-fed'),
  ('c50356ae-bd83-48aa-b976-90ad2933f9ea', 'omega6', 1.5, 'as-fed');

-- Iams — Droogvoer met verse kip voor volwassen honden van kleine en middelgrote rassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://iams.eu/nl-nl/hond/droogvoer/droogvoer-met-verse-kip-voor-volwassen-honden-van-kleine-en-middelgrote-rassen',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'As-fed overgenomen van de officiële productpagina. Vocht en energie (kcal) worden niet vermeld; die blijven null.'
 where id = '92d6739f-217d-4a5d-8c61-dd099e0585a1';
delete from public.recipe_nutrition where recipe_version_id = '92d6739f-217d-4a5d-8c61-dd099e0585a1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('92d6739f-217d-4a5d-8c61-dd099e0585a1', 'protein', 26, 'as-fed'),
  ('92d6739f-217d-4a5d-8c61-dd099e0585a1', 'fat', 15, 'as-fed'),
  ('92d6739f-217d-4a5d-8c61-dd099e0585a1', 'fiber', 2.6, 'as-fed'),
  ('92d6739f-217d-4a5d-8c61-dd099e0585a1', 'ash', 6.5, 'as-fed'),
  ('92d6739f-217d-4a5d-8c61-dd099e0585a1', 'calcium', 1.4, 'as-fed'),
  ('92d6739f-217d-4a5d-8c61-dd099e0585a1', 'phosphorus', 1.1, 'as-fed'),
  ('92d6739f-217d-4a5d-8c61-dd099e0585a1', 'omega3', 0.3, 'as-fed'),
  ('92d6739f-217d-4a5d-8c61-dd099e0585a1', 'omega6', 1.5, 'as-fed');

commit;
