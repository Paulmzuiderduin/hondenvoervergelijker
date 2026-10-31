begin;

-- Profine — Dog 65% Hert & Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://profinepetfood.com/products/profine-dog-65-hert-kip-400-g',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 1.060 kcal/kg naar kcal/100 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'a327271b-d161-412a-a7df-63b606fd4ecf';
delete from public.recipe_nutrition where recipe_version_id = 'a327271b-d161-412a-a7df-63b606fd4ecf';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a327271b-d161-412a-a7df-63b606fd4ecf', 'protein', 9, 'as-fed'),
  ('a327271b-d161-412a-a7df-63b606fd4ecf', 'fat', 7.5, 'as-fed'),
  ('a327271b-d161-412a-a7df-63b606fd4ecf', 'fiber', 0.5, 'as-fed'),
  ('a327271b-d161-412a-a7df-63b606fd4ecf', 'ash', 4, 'as-fed'),
  ('a327271b-d161-412a-a7df-63b606fd4ecf', 'moisture', 78, 'as-fed'),
  ('a327271b-d161-412a-a7df-63b606fd4ecf', 'kcal', 106, 'as-fed'),
  ('a327271b-d161-412a-a7df-63b606fd4ecf', 'calcium', 0.3, 'as-fed'),
  ('a327271b-d161-412a-a7df-63b606fd4ecf', 'phosphorus', 0.2, 'as-fed');

-- Profine — Dog 65% Kip met Lever (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://profinepetfood.com/products/profine-dog-65-kip-met-lever-400-g',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 1.000 kcal/kg naar kcal/100 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'ee273005-89b3-4b46-8cba-2fa57edd9a98';
delete from public.recipe_nutrition where recipe_version_id = 'ee273005-89b3-4b46-8cba-2fa57edd9a98';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ee273005-89b3-4b46-8cba-2fa57edd9a98', 'protein', 9, 'as-fed'),
  ('ee273005-89b3-4b46-8cba-2fa57edd9a98', 'fat', 5.5, 'as-fed'),
  ('ee273005-89b3-4b46-8cba-2fa57edd9a98', 'fiber', 0.5, 'as-fed'),
  ('ee273005-89b3-4b46-8cba-2fa57edd9a98', 'ash', 3.5, 'as-fed'),
  ('ee273005-89b3-4b46-8cba-2fa57edd9a98', 'moisture', 78, 'as-fed'),
  ('ee273005-89b3-4b46-8cba-2fa57edd9a98', 'kcal', 100, 'as-fed'),
  ('ee273005-89b3-4b46-8cba-2fa57edd9a98', 'calcium', 0.3, 'as-fed'),
  ('ee273005-89b3-4b46-8cba-2fa57edd9a98', 'phosphorus', 0.2, 'as-fed');

-- Profine — Dog 65% Lam met Hartjes (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://profinepetfood.com/products/profine-dog-65-lam-met-hartjes-400-g',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 1.030 kcal/kg naar kcal/100 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'af940b90-ef22-40c8-a763-dcf0814d74d8';
delete from public.recipe_nutrition where recipe_version_id = 'af940b90-ef22-40c8-a763-dcf0814d74d8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('af940b90-ef22-40c8-a763-dcf0814d74d8', 'protein', 9, 'as-fed'),
  ('af940b90-ef22-40c8-a763-dcf0814d74d8', 'fat', 6.5, 'as-fed'),
  ('af940b90-ef22-40c8-a763-dcf0814d74d8', 'fiber', 0.5, 'as-fed'),
  ('af940b90-ef22-40c8-a763-dcf0814d74d8', 'ash', 3.5, 'as-fed'),
  ('af940b90-ef22-40c8-a763-dcf0814d74d8', 'moisture', 78, 'as-fed'),
  ('af940b90-ef22-40c8-a763-dcf0814d74d8', 'kcal', 103, 'as-fed'),
  ('af940b90-ef22-40c8-a763-dcf0814d74d8', 'calcium', 0.3, 'as-fed'),
  ('af940b90-ef22-40c8-a763-dcf0814d74d8', 'phosphorus', 0.2, 'as-fed');

-- Profine — Dog 65% Rund met Lever (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://profinepetfood.com/products/profine-dog-65-rund-met-lever-400-g',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 1.137 kcal/kg naar kcal/100 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = '8abf3a72-5617-4c0e-a002-b79b9679a0ba';
delete from public.recipe_nutrition where recipe_version_id = '8abf3a72-5617-4c0e-a002-b79b9679a0ba';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8abf3a72-5617-4c0e-a002-b79b9679a0ba', 'protein', 10, 'as-fed'),
  ('8abf3a72-5617-4c0e-a002-b79b9679a0ba', 'fat', 9, 'as-fed'),
  ('8abf3a72-5617-4c0e-a002-b79b9679a0ba', 'fiber', 0.5, 'as-fed'),
  ('8abf3a72-5617-4c0e-a002-b79b9679a0ba', 'ash', 2.5, 'as-fed'),
  ('8abf3a72-5617-4c0e-a002-b79b9679a0ba', 'moisture', 78, 'as-fed'),
  ('8abf3a72-5617-4c0e-a002-b79b9679a0ba', 'kcal', 113.7, 'as-fed'),
  ('8abf3a72-5617-4c0e-a002-b79b9679a0ba', 'calcium', 0.3, 'as-fed'),
  ('8abf3a72-5617-4c0e-a002-b79b9679a0ba', 'phosphorus', 0.2, 'as-fed');

-- Profine — Dog 65% Zalm & Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://profinepetfood.com/products/profine-dog-65-zalm-kip-400-g',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 1.100 kcal/kg naar kcal/100 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = '0dd71849-7f78-4aaf-8c5a-5a4000847944';
delete from public.recipe_nutrition where recipe_version_id = '0dd71849-7f78-4aaf-8c5a-5a4000847944';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0dd71849-7f78-4aaf-8c5a-5a4000847944', 'protein', 8, 'as-fed'),
  ('0dd71849-7f78-4aaf-8c5a-5a4000847944', 'fat', 7.5, 'as-fed'),
  ('0dd71849-7f78-4aaf-8c5a-5a4000847944', 'fiber', 0.5, 'as-fed'),
  ('0dd71849-7f78-4aaf-8c5a-5a4000847944', 'ash', 3, 'as-fed'),
  ('0dd71849-7f78-4aaf-8c5a-5a4000847944', 'moisture', 78, 'as-fed'),
  ('0dd71849-7f78-4aaf-8c5a-5a4000847944', 'kcal', 110, 'as-fed'),
  ('0dd71849-7f78-4aaf-8c5a-5a4000847944', 'calcium', 0.3, 'as-fed'),
  ('0dd71849-7f78-4aaf-8c5a-5a4000847944', 'phosphorus', 0.2, 'as-fed');

-- Profine — Dog Dry Adult Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://profinepetfood.com/products/profine-dog-dry-adult-kip-12-kg',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3.800 kcal/kg naar kcal/100 g.'
 where id = '56b61a1c-ccd1-4c6c-b0ca-86ddd869c833';
delete from public.recipe_nutrition where recipe_version_id = '56b61a1c-ccd1-4c6c-b0ca-86ddd869c833';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('56b61a1c-ccd1-4c6c-b0ca-86ddd869c833', 'protein', 26, 'as-fed'),
  ('56b61a1c-ccd1-4c6c-b0ca-86ddd869c833', 'fat', 16, 'as-fed'),
  ('56b61a1c-ccd1-4c6c-b0ca-86ddd869c833', 'fiber', 2.8, 'as-fed'),
  ('56b61a1c-ccd1-4c6c-b0ca-86ddd869c833', 'ash', 7.2, 'as-fed'),
  ('56b61a1c-ccd1-4c6c-b0ca-86ddd869c833', 'moisture', 10, 'as-fed'),
  ('56b61a1c-ccd1-4c6c-b0ca-86ddd869c833', 'kcal', 380, 'as-fed'),
  ('56b61a1c-ccd1-4c6c-b0ca-86ddd869c833', 'calcium', 1.6, 'as-fed'),
  ('56b61a1c-ccd1-4c6c-b0ca-86ddd869c833', 'phosphorus', 1.2, 'as-fed'),
  ('56b61a1c-ccd1-4c6c-b0ca-86ddd869c833', 'omega3', 0.25, 'as-fed'),
  ('56b61a1c-ccd1-4c6c-b0ca-86ddd869c833', 'omega6', 1.9, 'as-fed');

-- Profine — Dog Dry Adult Lam (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://profinepetfood.com/products/profine-dog-dry-adult-lam-12-kg',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3.700 kcal/kg naar kcal/100 g.'
 where id = '8bee013f-e703-4eb1-b7e3-1154a690f4eb';
delete from public.recipe_nutrition where recipe_version_id = '8bee013f-e703-4eb1-b7e3-1154a690f4eb';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8bee013f-e703-4eb1-b7e3-1154a690f4eb', 'protein', 25, 'as-fed'),
  ('8bee013f-e703-4eb1-b7e3-1154a690f4eb', 'fat', 13, 'as-fed'),
  ('8bee013f-e703-4eb1-b7e3-1154a690f4eb', 'fiber', 3, 'as-fed'),
  ('8bee013f-e703-4eb1-b7e3-1154a690f4eb', 'ash', 6.8, 'as-fed'),
  ('8bee013f-e703-4eb1-b7e3-1154a690f4eb', 'moisture', 10, 'as-fed'),
  ('8bee013f-e703-4eb1-b7e3-1154a690f4eb', 'kcal', 370, 'as-fed'),
  ('8bee013f-e703-4eb1-b7e3-1154a690f4eb', 'calcium', 1.6, 'as-fed'),
  ('8bee013f-e703-4eb1-b7e3-1154a690f4eb', 'phosphorus', 1.2, 'as-fed'),
  ('8bee013f-e703-4eb1-b7e3-1154a690f4eb', 'omega3', 0.22, 'as-fed'),
  ('8bee013f-e703-4eb1-b7e3-1154a690f4eb', 'omega6', 1.28, 'as-fed');

-- Profine — Dog Dry Adult Large Breed Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://profinepetfood.com/products/profine-dog-dry-adult-large-kip-12-kg',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3.700 kcal/kg naar kcal/100 g.'
 where id = '056c90b1-dfe5-4eae-a738-3137de6088f6';
delete from public.recipe_nutrition where recipe_version_id = '056c90b1-dfe5-4eae-a738-3137de6088f6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('056c90b1-dfe5-4eae-a738-3137de6088f6', 'protein', 25, 'as-fed'),
  ('056c90b1-dfe5-4eae-a738-3137de6088f6', 'fat', 14, 'as-fed'),
  ('056c90b1-dfe5-4eae-a738-3137de6088f6', 'fiber', 2.8, 'as-fed'),
  ('056c90b1-dfe5-4eae-a738-3137de6088f6', 'ash', 6.4, 'as-fed'),
  ('056c90b1-dfe5-4eae-a738-3137de6088f6', 'moisture', 10, 'as-fed'),
  ('056c90b1-dfe5-4eae-a738-3137de6088f6', 'kcal', 370, 'as-fed'),
  ('056c90b1-dfe5-4eae-a738-3137de6088f6', 'calcium', 1.5, 'as-fed'),
  ('056c90b1-dfe5-4eae-a738-3137de6088f6', 'phosphorus', 1, 'as-fed'),
  ('056c90b1-dfe5-4eae-a738-3137de6088f6', 'omega3', 0.24, 'as-fed'),
  ('056c90b1-dfe5-4eae-a738-3137de6088f6', 'omega6', 1.65, 'as-fed');

-- Profine — Dog Dry Adult Large Breed Zalm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://profinepetfood.com/products/profine-dog-dry-adult-large-zalm-12-kg',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3.700 kcal/kg naar kcal/100 g.'
 where id = '2c869009-b779-49d8-9aa6-2e598b49394d';
delete from public.recipe_nutrition where recipe_version_id = '2c869009-b779-49d8-9aa6-2e598b49394d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2c869009-b779-49d8-9aa6-2e598b49394d', 'protein', 25, 'as-fed'),
  ('2c869009-b779-49d8-9aa6-2e598b49394d', 'fat', 14, 'as-fed'),
  ('2c869009-b779-49d8-9aa6-2e598b49394d', 'fiber', 2.5, 'as-fed'),
  ('2c869009-b779-49d8-9aa6-2e598b49394d', 'ash', 6, 'as-fed'),
  ('2c869009-b779-49d8-9aa6-2e598b49394d', 'moisture', 10, 'as-fed'),
  ('2c869009-b779-49d8-9aa6-2e598b49394d', 'kcal', 370, 'as-fed'),
  ('2c869009-b779-49d8-9aa6-2e598b49394d', 'calcium', 1.1, 'as-fed'),
  ('2c869009-b779-49d8-9aa6-2e598b49394d', 'phosphorus', 0.9, 'as-fed'),
  ('2c869009-b779-49d8-9aa6-2e598b49394d', 'omega3', 0.65, 'as-fed'),
  ('2c869009-b779-49d8-9aa6-2e598b49394d', 'omega6', 1.75, 'as-fed');

-- Profine — Dog Dry Adult Small Breed Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://profinepetfood.com/products/profine-dog-dry-adult-small-kip-3-kg',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3.900 kcal/kg naar kcal/100 g.'
 where id = 'a97d9a3d-9f2e-413d-a32d-8c41b0a63a8f';
delete from public.recipe_nutrition where recipe_version_id = 'a97d9a3d-9f2e-413d-a32d-8c41b0a63a8f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a97d9a3d-9f2e-413d-a32d-8c41b0a63a8f', 'protein', 28, 'as-fed'),
  ('a97d9a3d-9f2e-413d-a32d-8c41b0a63a8f', 'fat', 18, 'as-fed'),
  ('a97d9a3d-9f2e-413d-a32d-8c41b0a63a8f', 'fiber', 2.5, 'as-fed'),
  ('a97d9a3d-9f2e-413d-a32d-8c41b0a63a8f', 'ash', 7, 'as-fed'),
  ('a97d9a3d-9f2e-413d-a32d-8c41b0a63a8f', 'moisture', 10, 'as-fed'),
  ('a97d9a3d-9f2e-413d-a32d-8c41b0a63a8f', 'kcal', 390, 'as-fed'),
  ('a97d9a3d-9f2e-413d-a32d-8c41b0a63a8f', 'calcium', 1.6, 'as-fed'),
  ('a97d9a3d-9f2e-413d-a32d-8c41b0a63a8f', 'phosphorus', 1.1, 'as-fed'),
  ('a97d9a3d-9f2e-413d-a32d-8c41b0a63a8f', 'omega3', 0.29, 'as-fed'),
  ('a97d9a3d-9f2e-413d-a32d-8c41b0a63a8f', 'omega6', 2.3, 'as-fed');

-- Profine — Dog Dry Adult Zalm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://profinepetfood.com/products/profine-dog-dry-adult-zalm-12-kg',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3.800 kcal/kg naar kcal/100 g.'
 where id = '7cd0bd44-0e9c-488b-bb10-33aaf57e66c6';
delete from public.recipe_nutrition where recipe_version_id = '7cd0bd44-0e9c-488b-bb10-33aaf57e66c6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7cd0bd44-0e9c-488b-bb10-33aaf57e66c6', 'protein', 24, 'as-fed'),
  ('7cd0bd44-0e9c-488b-bb10-33aaf57e66c6', 'fat', 14, 'as-fed'),
  ('7cd0bd44-0e9c-488b-bb10-33aaf57e66c6', 'fiber', 2, 'as-fed'),
  ('7cd0bd44-0e9c-488b-bb10-33aaf57e66c6', 'ash', 5.2, 'as-fed'),
  ('7cd0bd44-0e9c-488b-bb10-33aaf57e66c6', 'moisture', 10, 'as-fed'),
  ('7cd0bd44-0e9c-488b-bb10-33aaf57e66c6', 'kcal', 380, 'as-fed'),
  ('7cd0bd44-0e9c-488b-bb10-33aaf57e66c6', 'calcium', 1, 'as-fed'),
  ('7cd0bd44-0e9c-488b-bb10-33aaf57e66c6', 'phosphorus', 0.8, 'as-fed'),
  ('7cd0bd44-0e9c-488b-bb10-33aaf57e66c6', 'omega3', 0.55, 'as-fed'),
  ('7cd0bd44-0e9c-488b-bb10-33aaf57e66c6', 'omega6', 1.7, 'as-fed');

-- Profine — Dog Dry Energy Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://profinepetfood.com/products/profine-dog-dry-energy-kip-12-kg',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 4.200 kcal/kg naar kcal/100 g.'
 where id = '990d67e4-589e-4e3f-961d-7a69f2ef6969';
delete from public.recipe_nutrition where recipe_version_id = '990d67e4-589e-4e3f-961d-7a69f2ef6969';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('990d67e4-589e-4e3f-961d-7a69f2ef6969', 'protein', 33, 'as-fed'),
  ('990d67e4-589e-4e3f-961d-7a69f2ef6969', 'fat', 22, 'as-fed'),
  ('990d67e4-589e-4e3f-961d-7a69f2ef6969', 'fiber', 2, 'as-fed'),
  ('990d67e4-589e-4e3f-961d-7a69f2ef6969', 'ash', 7.2, 'as-fed'),
  ('990d67e4-589e-4e3f-961d-7a69f2ef6969', 'moisture', 10, 'as-fed'),
  ('990d67e4-589e-4e3f-961d-7a69f2ef6969', 'kcal', 420, 'as-fed'),
  ('990d67e4-589e-4e3f-961d-7a69f2ef6969', 'calcium', 1.7, 'as-fed'),
  ('990d67e4-589e-4e3f-961d-7a69f2ef6969', 'phosphorus', 1.2, 'as-fed'),
  ('990d67e4-589e-4e3f-961d-7a69f2ef6969', 'omega3', 0.22, 'as-fed'),
  ('990d67e4-589e-4e3f-961d-7a69f2ef6969', 'omega6', 2.8, 'as-fed');

-- Profine — Dog Dry Junior Large Breed Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://profinepetfood.com/products/profine-dog-dry-junior-large-kip-12-kg',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3.700 kcal/kg naar kcal/100 g.'
 where id = '357553f2-6303-4754-997e-f07db224e5ae';
delete from public.recipe_nutrition where recipe_version_id = '357553f2-6303-4754-997e-f07db224e5ae';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('357553f2-6303-4754-997e-f07db224e5ae', 'protein', 27, 'as-fed'),
  ('357553f2-6303-4754-997e-f07db224e5ae', 'fat', 14, 'as-fed'),
  ('357553f2-6303-4754-997e-f07db224e5ae', 'fiber', 3, 'as-fed'),
  ('357553f2-6303-4754-997e-f07db224e5ae', 'ash', 7, 'as-fed'),
  ('357553f2-6303-4754-997e-f07db224e5ae', 'moisture', 10, 'as-fed'),
  ('357553f2-6303-4754-997e-f07db224e5ae', 'kcal', 370, 'as-fed'),
  ('357553f2-6303-4754-997e-f07db224e5ae', 'calcium', 1.5, 'as-fed'),
  ('357553f2-6303-4754-997e-f07db224e5ae', 'phosphorus', 1.1, 'as-fed'),
  ('357553f2-6303-4754-997e-f07db224e5ae', 'omega3', 0.25, 'as-fed'),
  ('357553f2-6303-4754-997e-f07db224e5ae', 'omega6', 1.75, 'as-fed');

-- Profine — Dog Dry Junior Large Breed Zalm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://profinepetfood.com/products/profine-dog-dry-junior-large-zalm-12-kg',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3.800 kcal/kg naar kcal/100 g.'
 where id = 'a634e11d-8b8f-4d66-9298-094b70bfaeaa';
delete from public.recipe_nutrition where recipe_version_id = 'a634e11d-8b8f-4d66-9298-094b70bfaeaa';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a634e11d-8b8f-4d66-9298-094b70bfaeaa', 'protein', 26, 'as-fed'),
  ('a634e11d-8b8f-4d66-9298-094b70bfaeaa', 'fat', 14, 'as-fed'),
  ('a634e11d-8b8f-4d66-9298-094b70bfaeaa', 'fiber', 2, 'as-fed'),
  ('a634e11d-8b8f-4d66-9298-094b70bfaeaa', 'ash', 6.5, 'as-fed'),
  ('a634e11d-8b8f-4d66-9298-094b70bfaeaa', 'moisture', 10, 'as-fed'),
  ('a634e11d-8b8f-4d66-9298-094b70bfaeaa', 'kcal', 380, 'as-fed'),
  ('a634e11d-8b8f-4d66-9298-094b70bfaeaa', 'calcium', 1.2, 'as-fed'),
  ('a634e11d-8b8f-4d66-9298-094b70bfaeaa', 'phosphorus', 1, 'as-fed'),
  ('a634e11d-8b8f-4d66-9298-094b70bfaeaa', 'omega3', 0.7, 'as-fed'),
  ('a634e11d-8b8f-4d66-9298-094b70bfaeaa', 'omega6', 1.9, 'as-fed');

-- Profine — Dog Dry Light Lam (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://profinepetfood.com/products/profine-dog-dry-light-lam-12-kg',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van de kopwaarde 3.400 kcal/kg naar kcal/100 g. De pagina is tegenstrijdig: in de kop staat 3.400 kcal/kg, in de analyse-alinea 4300 kcal/kg; de kopwaarde is aangehouden. Het vochtgehalte ontbreekt in de bron, daarom moisture null.'
 where id = '90af019b-9edd-4121-aa73-724dec6389a8';
delete from public.recipe_nutrition where recipe_version_id = '90af019b-9edd-4121-aa73-724dec6389a8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('90af019b-9edd-4121-aa73-724dec6389a8', 'protein', 25, 'as-fed'),
  ('90af019b-9edd-4121-aa73-724dec6389a8', 'fat', 9, 'as-fed'),
  ('90af019b-9edd-4121-aa73-724dec6389a8', 'fiber', 3.5, 'as-fed'),
  ('90af019b-9edd-4121-aa73-724dec6389a8', 'ash', 7, 'as-fed'),
  ('90af019b-9edd-4121-aa73-724dec6389a8', 'kcal', 340, 'as-fed'),
  ('90af019b-9edd-4121-aa73-724dec6389a8', 'calcium', 1.5, 'as-fed'),
  ('90af019b-9edd-4121-aa73-724dec6389a8', 'phosphorus', 1.2, 'as-fed'),
  ('90af019b-9edd-4121-aa73-724dec6389a8', 'omega3', 0.17, 'as-fed'),
  ('90af019b-9edd-4121-aa73-724dec6389a8', 'omega6', 0.62, 'as-fed');

-- Profine — Dog Dry Puppy Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://profinepetfood.com/products/profine-dog-dry-puppy-kip-12-kg',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 4.100 kcal/kg naar kcal/100 g.'
 where id = 'c406bb9c-0363-4afe-a38a-e521e27519fe';
delete from public.recipe_nutrition where recipe_version_id = 'c406bb9c-0363-4afe-a38a-e521e27519fe';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c406bb9c-0363-4afe-a38a-e521e27519fe', 'protein', 30, 'as-fed'),
  ('c406bb9c-0363-4afe-a38a-e521e27519fe', 'fat', 20, 'as-fed'),
  ('c406bb9c-0363-4afe-a38a-e521e27519fe', 'fiber', 2.2, 'as-fed'),
  ('c406bb9c-0363-4afe-a38a-e521e27519fe', 'ash', 7, 'as-fed'),
  ('c406bb9c-0363-4afe-a38a-e521e27519fe', 'moisture', 10, 'as-fed'),
  ('c406bb9c-0363-4afe-a38a-e521e27519fe', 'kcal', 410, 'as-fed'),
  ('c406bb9c-0363-4afe-a38a-e521e27519fe', 'calcium', 1.6, 'as-fed'),
  ('c406bb9c-0363-4afe-a38a-e521e27519fe', 'phosphorus', 1.1, 'as-fed'),
  ('c406bb9c-0363-4afe-a38a-e521e27519fe', 'omega3', 0.31, 'as-fed'),
  ('c406bb9c-0363-4afe-a38a-e521e27519fe', 'omega6', 2.6, 'as-fed');

-- Profine — Dog Dry Puppy Lam (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://profinepetfood.com/products/profine-dog-dry-puppy-lam-12-kg',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 4.000 kcal/kg naar kcal/100 g.'
 where id = '8e8359ec-a1f0-443b-8f0f-d9783b1ac721';
delete from public.recipe_nutrition where recipe_version_id = '8e8359ec-a1f0-443b-8f0f-d9783b1ac721';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8e8359ec-a1f0-443b-8f0f-d9783b1ac721', 'protein', 27, 'as-fed'),
  ('8e8359ec-a1f0-443b-8f0f-d9783b1ac721', 'fat', 19, 'as-fed'),
  ('8e8359ec-a1f0-443b-8f0f-d9783b1ac721', 'fiber', 2, 'as-fed'),
  ('8e8359ec-a1f0-443b-8f0f-d9783b1ac721', 'ash', 7.5, 'as-fed'),
  ('8e8359ec-a1f0-443b-8f0f-d9783b1ac721', 'moisture', 10, 'as-fed'),
  ('8e8359ec-a1f0-443b-8f0f-d9783b1ac721', 'kcal', 400, 'as-fed'),
  ('8e8359ec-a1f0-443b-8f0f-d9783b1ac721', 'calcium', 1.5, 'as-fed'),
  ('8e8359ec-a1f0-443b-8f0f-d9783b1ac721', 'phosphorus', 1.2, 'as-fed'),
  ('8e8359ec-a1f0-443b-8f0f-d9783b1ac721', 'omega3', 0.3, 'as-fed'),
  ('8e8359ec-a1f0-443b-8f0f-d9783b1ac721', 'omega6', 2.2, 'as-fed');

-- Profine — Dog Dry Senior Kalkoen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://profinepetfood.com/products/profine-dog-dry-senior-kalkoen-12-kg',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3.500 kcal/kg naar kcal/100 g.'
 where id = '0cbfa51a-b2d5-4b01-8ac5-6ad354fddef0';
delete from public.recipe_nutrition where recipe_version_id = '0cbfa51a-b2d5-4b01-8ac5-6ad354fddef0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0cbfa51a-b2d5-4b01-8ac5-6ad354fddef0', 'protein', 24, 'as-fed'),
  ('0cbfa51a-b2d5-4b01-8ac5-6ad354fddef0', 'fat', 12, 'as-fed'),
  ('0cbfa51a-b2d5-4b01-8ac5-6ad354fddef0', 'fiber', 4.5, 'as-fed'),
  ('0cbfa51a-b2d5-4b01-8ac5-6ad354fddef0', 'ash', 6.5, 'as-fed'),
  ('0cbfa51a-b2d5-4b01-8ac5-6ad354fddef0', 'moisture', 10, 'as-fed'),
  ('0cbfa51a-b2d5-4b01-8ac5-6ad354fddef0', 'kcal', 350, 'as-fed'),
  ('0cbfa51a-b2d5-4b01-8ac5-6ad354fddef0', 'calcium', 1.6, 'as-fed'),
  ('0cbfa51a-b2d5-4b01-8ac5-6ad354fddef0', 'phosphorus', 1.2, 'as-fed'),
  ('0cbfa51a-b2d5-4b01-8ac5-6ad354fddef0', 'omega3', 0.22, 'as-fed'),
  ('0cbfa51a-b2d5-4b01-8ac5-6ad354fddef0', 'omega6', 1.28, 'as-fed');

-- Profine — Dog Salami Hondenworst Eend & Groenten (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://profinepetfood.com/products/profine-dog-salami-eend-groenten-800-g',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 1.530 kcal/kg naar kcal/100 g. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'e901bbf8-08db-4007-8671-fd7e11d4686d';
delete from public.recipe_nutrition where recipe_version_id = 'e901bbf8-08db-4007-8671-fd7e11d4686d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e901bbf8-08db-4007-8671-fd7e11d4686d', 'protein', 9, 'as-fed'),
  ('e901bbf8-08db-4007-8671-fd7e11d4686d', 'fat', 11, 'as-fed'),
  ('e901bbf8-08db-4007-8671-fd7e11d4686d', 'fiber', 2, 'as-fed'),
  ('e901bbf8-08db-4007-8671-fd7e11d4686d', 'ash', 2.5, 'as-fed'),
  ('e901bbf8-08db-4007-8671-fd7e11d4686d', 'moisture', 70, 'as-fed'),
  ('e901bbf8-08db-4007-8671-fd7e11d4686d', 'kcal', 153, 'as-fed');

-- Profine — Dog Salami Hondenworst Kalkoen & Groenten (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://profinepetfood.com/products/profine-dog-salami-kalkoen-groenten-800-g',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De fabrikant vermeldt op deze pagina geen energiewaarde, daarom kcal null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'f4f21cb0-7497-4612-ad05-00ebd4e62731';
delete from public.recipe_nutrition where recipe_version_id = 'f4f21cb0-7497-4612-ad05-00ebd4e62731';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f4f21cb0-7497-4612-ad05-00ebd4e62731', 'protein', 9, 'as-fed'),
  ('f4f21cb0-7497-4612-ad05-00ebd4e62731', 'fat', 11, 'as-fed'),
  ('f4f21cb0-7497-4612-ad05-00ebd4e62731', 'fiber', 2, 'as-fed'),
  ('f4f21cb0-7497-4612-ad05-00ebd4e62731', 'ash', 2, 'as-fed'),
  ('f4f21cb0-7497-4612-ad05-00ebd4e62731', 'moisture', 70, 'as-fed');

-- Profine — Dog Salami Hondenworst Kip & Groenten (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://profinepetfood.com/products/profine-dog-salami-kip-groenten-800-g',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 1.610 kcal/kg naar kcal/100 g. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '19ceb0a8-837f-4331-98ed-aec7e8350461';
delete from public.recipe_nutrition where recipe_version_id = '19ceb0a8-837f-4331-98ed-aec7e8350461';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('19ceb0a8-837f-4331-98ed-aec7e8350461', 'protein', 9, 'as-fed'),
  ('19ceb0a8-837f-4331-98ed-aec7e8350461', 'fat', 12, 'as-fed'),
  ('19ceb0a8-837f-4331-98ed-aec7e8350461', 'fiber', 2, 'as-fed'),
  ('19ceb0a8-837f-4331-98ed-aec7e8350461', 'ash', 2, 'as-fed'),
  ('19ceb0a8-837f-4331-98ed-aec7e8350461', 'moisture', 70, 'as-fed'),
  ('19ceb0a8-837f-4331-98ed-aec7e8350461', 'kcal', 161, 'as-fed');

-- Profine — Dog Salami Hondenworst Lam & Groenten (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://profinepetfood.com/products/profine-dog-salami-lam-groenten-800-g',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 1.430 kcal/kg naar kcal/100 g. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'cdd74596-5ff3-4cd7-98bc-bcfc410a538c';
delete from public.recipe_nutrition where recipe_version_id = 'cdd74596-5ff3-4cd7-98bc-bcfc410a538c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('cdd74596-5ff3-4cd7-98bc-bcfc410a538c', 'protein', 8, 'as-fed'),
  ('cdd74596-5ff3-4cd7-98bc-bcfc410a538c', 'fat', 9, 'as-fed'),
  ('cdd74596-5ff3-4cd7-98bc-bcfc410a538c', 'fiber', 2, 'as-fed'),
  ('cdd74596-5ff3-4cd7-98bc-bcfc410a538c', 'ash', 3, 'as-fed'),
  ('cdd74596-5ff3-4cd7-98bc-bcfc410a538c', 'moisture', 70, 'as-fed'),
  ('cdd74596-5ff3-4cd7-98bc-bcfc410a538c', 'kcal', 143, 'as-fed');

-- Profine — Dog Salami Hondenworst Zalm & Groenten (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://profinepetfood.com/products/profine-dog-salami-zalm-groenten-800-g',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 1.490 kcal/kg naar kcal/100 g. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '2d6dba16-4645-4421-a3b5-38308b27ff41';
delete from public.recipe_nutrition where recipe_version_id = '2d6dba16-4645-4421-a3b5-38308b27ff41';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2d6dba16-4645-4421-a3b5-38308b27ff41', 'protein', 8, 'as-fed'),
  ('2d6dba16-4645-4421-a3b5-38308b27ff41', 'fat', 10, 'as-fed'),
  ('2d6dba16-4645-4421-a3b5-38308b27ff41', 'fiber', 1.5, 'as-fed'),
  ('2d6dba16-4645-4421-a3b5-38308b27ff41', 'ash', 3, 'as-fed'),
  ('2d6dba16-4645-4421-a3b5-38308b27ff41', 'moisture', 70, 'as-fed'),
  ('2d6dba16-4645-4421-a3b5-38308b27ff41', 'kcal', 149, 'as-fed');

-- Profine — Dog Single Protein Eend (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://profinepetfood.com/products/profine-dog-single-protein-eend-400-g',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 1.123 kcal/kg naar kcal/100 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = '68e6cfcc-9ba5-4fec-b991-f9e0bae279b1';
delete from public.recipe_nutrition where recipe_version_id = '68e6cfcc-9ba5-4fec-b991-f9e0bae279b1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('68e6cfcc-9ba5-4fec-b991-f9e0bae279b1', 'protein', 9.5, 'as-fed'),
  ('68e6cfcc-9ba5-4fec-b991-f9e0bae279b1', 'fat', 8.5, 'as-fed'),
  ('68e6cfcc-9ba5-4fec-b991-f9e0bae279b1', 'fiber', 0.5, 'as-fed'),
  ('68e6cfcc-9ba5-4fec-b991-f9e0bae279b1', 'ash', 2.2, 'as-fed'),
  ('68e6cfcc-9ba5-4fec-b991-f9e0bae279b1', 'moisture', 78, 'as-fed'),
  ('68e6cfcc-9ba5-4fec-b991-f9e0bae279b1', 'kcal', 112.3, 'as-fed'),
  ('68e6cfcc-9ba5-4fec-b991-f9e0bae279b1', 'calcium', 0.3, 'as-fed'),
  ('68e6cfcc-9ba5-4fec-b991-f9e0bae279b1', 'phosphorus', 0.2, 'as-fed');

-- Profine — Dog Single Protein Kalkoen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://profinepetfood.com/products/profine-dog-single-protein-kalkoen-400-g',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 1.020 kcal/kg naar kcal/100 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'd326638b-af9b-43fb-bf85-b430c31327ae';
delete from public.recipe_nutrition where recipe_version_id = 'd326638b-af9b-43fb-bf85-b430c31327ae';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d326638b-af9b-43fb-bf85-b430c31327ae', 'protein', 9.5, 'as-fed'),
  ('d326638b-af9b-43fb-bf85-b430c31327ae', 'fat', 6, 'as-fed'),
  ('d326638b-af9b-43fb-bf85-b430c31327ae', 'fiber', 0.5, 'as-fed'),
  ('d326638b-af9b-43fb-bf85-b430c31327ae', 'ash', 2, 'as-fed'),
  ('d326638b-af9b-43fb-bf85-b430c31327ae', 'moisture', 78, 'as-fed'),
  ('d326638b-af9b-43fb-bf85-b430c31327ae', 'kcal', 102, 'as-fed'),
  ('d326638b-af9b-43fb-bf85-b430c31327ae', 'calcium', 0.3, 'as-fed'),
  ('d326638b-af9b-43fb-bf85-b430c31327ae', 'phosphorus', 0.2, 'as-fed');

-- Profine — Dog Single Protein Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://profinepetfood.com/products/profine-dog-single-protein-kip-400-g',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 992 kcal/kg naar kcal/100 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = '68ac0a88-ce86-4709-83b5-c2148c735603';
delete from public.recipe_nutrition where recipe_version_id = '68ac0a88-ce86-4709-83b5-c2148c735603';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('68ac0a88-ce86-4709-83b5-c2148c735603', 'protein', 9, 'as-fed'),
  ('68ac0a88-ce86-4709-83b5-c2148c735603', 'fat', 5.5, 'as-fed'),
  ('68ac0a88-ce86-4709-83b5-c2148c735603', 'fiber', 0.5, 'as-fed'),
  ('68ac0a88-ce86-4709-83b5-c2148c735603', 'ash', 2.1, 'as-fed'),
  ('68ac0a88-ce86-4709-83b5-c2148c735603', 'moisture', 78, 'as-fed'),
  ('68ac0a88-ce86-4709-83b5-c2148c735603', 'kcal', 99.2, 'as-fed'),
  ('68ac0a88-ce86-4709-83b5-c2148c735603', 'calcium', 0.3, 'as-fed'),
  ('68ac0a88-ce86-4709-83b5-c2148c735603', 'phosphorus', 0.2, 'as-fed');

-- Profine — Dog Single Protein Lam (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://profinepetfood.com/products/profine-dog-single-protein-lam-400-g',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 990 kcal/kg naar kcal/100 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'b86308f1-4806-4d56-9eec-d387c984ff9a';
delete from public.recipe_nutrition where recipe_version_id = 'b86308f1-4806-4d56-9eec-d387c984ff9a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b86308f1-4806-4d56-9eec-d387c984ff9a', 'protein', 8.5, 'as-fed'),
  ('b86308f1-4806-4d56-9eec-d387c984ff9a', 'fat', 5.5, 'as-fed'),
  ('b86308f1-4806-4d56-9eec-d387c984ff9a', 'fiber', 0.5, 'as-fed'),
  ('b86308f1-4806-4d56-9eec-d387c984ff9a', 'ash', 1.9, 'as-fed'),
  ('b86308f1-4806-4d56-9eec-d387c984ff9a', 'moisture', 78, 'as-fed'),
  ('b86308f1-4806-4d56-9eec-d387c984ff9a', 'kcal', 99, 'as-fed'),
  ('b86308f1-4806-4d56-9eec-d387c984ff9a', 'calcium', 0.3, 'as-fed'),
  ('b86308f1-4806-4d56-9eec-d387c984ff9a', 'phosphorus', 0.2, 'as-fed');

-- Profine — Dog Single Protein Rund (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://profinepetfood.com/products/profine-dog-single-protein-rund-400-g',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 1.024 kcal/kg naar kcal/100 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = '099773e5-d5ae-4163-8443-e98168977a31';
delete from public.recipe_nutrition where recipe_version_id = '099773e5-d5ae-4163-8443-e98168977a31';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('099773e5-d5ae-4163-8443-e98168977a31', 'protein', 10.5, 'as-fed'),
  ('099773e5-d5ae-4163-8443-e98168977a31', 'fat', 6, 'as-fed'),
  ('099773e5-d5ae-4163-8443-e98168977a31', 'fiber', 0.5, 'as-fed'),
  ('099773e5-d5ae-4163-8443-e98168977a31', 'ash', 2.1, 'as-fed'),
  ('099773e5-d5ae-4163-8443-e98168977a31', 'moisture', 78, 'as-fed'),
  ('099773e5-d5ae-4163-8443-e98168977a31', 'kcal', 102.4, 'as-fed'),
  ('099773e5-d5ae-4163-8443-e98168977a31', 'calcium', 0.3, 'as-fed'),
  ('099773e5-d5ae-4163-8443-e98168977a31', 'phosphorus', 0.2, 'as-fed');

-- Profine — Dog Single Protein Zalm voor puppies (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://profinepetfood.com/products/profine-dog-single-protein-zalm-for-puppies-400-g',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 1.013 kcal/kg naar kcal/100 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'abfb7111-291a-4d96-aa08-ab96c494e7b2';
delete from public.recipe_nutrition where recipe_version_id = 'abfb7111-291a-4d96-aa08-ab96c494e7b2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('abfb7111-291a-4d96-aa08-ab96c494e7b2', 'protein', 9.5, 'as-fed'),
  ('abfb7111-291a-4d96-aa08-ab96c494e7b2', 'fat', 6, 'as-fed'),
  ('abfb7111-291a-4d96-aa08-ab96c494e7b2', 'fiber', 0.7, 'as-fed'),
  ('abfb7111-291a-4d96-aa08-ab96c494e7b2', 'ash', 2.2, 'as-fed'),
  ('abfb7111-291a-4d96-aa08-ab96c494e7b2', 'moisture', 78, 'as-fed'),
  ('abfb7111-291a-4d96-aa08-ab96c494e7b2', 'kcal', 101.3, 'as-fed'),
  ('abfb7111-291a-4d96-aa08-ab96c494e7b2', 'calcium', 0.3, 'as-fed'),
  ('abfb7111-291a-4d96-aa08-ab96c494e7b2', 'phosphorus', 0.2, 'as-fed');

-- Riverwood — Adult Large Breed Eend & Kalkoen met Fazant (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.riverwoodpetfood.com/products/adult-large-breed-eend-kalkoen-met-fazant',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De fabrikant vermeldt op deze pagina geen energiewaarde, daarom kcal null. Geen omrekening nodig.'
 where id = 'fdc74575-b2eb-4fd8-a6fc-bdea7b6ab43e';
delete from public.recipe_nutrition where recipe_version_id = 'fdc74575-b2eb-4fd8-a6fc-bdea7b6ab43e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fdc74575-b2eb-4fd8-a6fc-bdea7b6ab43e', 'protein', 38, 'as-fed'),
  ('fdc74575-b2eb-4fd8-a6fc-bdea7b6ab43e', 'fat', 17, 'as-fed'),
  ('fdc74575-b2eb-4fd8-a6fc-bdea7b6ab43e', 'fiber', 2.2, 'as-fed'),
  ('fdc74575-b2eb-4fd8-a6fc-bdea7b6ab43e', 'ash', 8.2, 'as-fed'),
  ('fdc74575-b2eb-4fd8-a6fc-bdea7b6ab43e', 'moisture', 10, 'as-fed'),
  ('fdc74575-b2eb-4fd8-a6fc-bdea7b6ab43e', 'calcium', 1.7, 'as-fed'),
  ('fdc74575-b2eb-4fd8-a6fc-bdea7b6ab43e', 'phosphorus', 1.4, 'as-fed'),
  ('fdc74575-b2eb-4fd8-a6fc-bdea7b6ab43e', 'omega3', 0.35, 'as-fed'),
  ('fdc74575-b2eb-4fd8-a6fc-bdea7b6ab43e', 'omega6', 2.4, 'as-fed');

-- Riverwood — Adult Paard & Hert met Konijn (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.riverwoodpetfood.com/products/paard-hert-met-konijn',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3.710 kcal/kg naar kcal/100 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = '5d3de452-7971-45cb-8825-06c127170dd9';
delete from public.recipe_nutrition where recipe_version_id = '5d3de452-7971-45cb-8825-06c127170dd9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5d3de452-7971-45cb-8825-06c127170dd9', 'protein', 32, 'as-fed'),
  ('5d3de452-7971-45cb-8825-06c127170dd9', 'fat', 14, 'as-fed'),
  ('5d3de452-7971-45cb-8825-06c127170dd9', 'fiber', 2, 'as-fed'),
  ('5d3de452-7971-45cb-8825-06c127170dd9', 'ash', 8.5, 'as-fed'),
  ('5d3de452-7971-45cb-8825-06c127170dd9', 'moisture', 10, 'as-fed'),
  ('5d3de452-7971-45cb-8825-06c127170dd9', 'kcal', 371, 'as-fed'),
  ('5d3de452-7971-45cb-8825-06c127170dd9', 'calcium', 1.7, 'as-fed'),
  ('5d3de452-7971-45cb-8825-06c127170dd9', 'phosphorus', 1.2, 'as-fed');

-- Riverwood — Adult Surf 'n Turf Kalkoen met Buffel & Karper (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.riverwoodpetfood.com/products/adult-surf-n-turf-kalkoen-met-buffel-karper',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 1.130 kcal/kg naar kcal/100 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = '67c37f02-7e20-4953-894e-ca9440e42c7e';
delete from public.recipe_nutrition where recipe_version_id = '67c37f02-7e20-4953-894e-ca9440e42c7e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('67c37f02-7e20-4953-894e-ca9440e42c7e', 'protein', 10, 'as-fed'),
  ('67c37f02-7e20-4953-894e-ca9440e42c7e', 'fat', 7, 'as-fed'),
  ('67c37f02-7e20-4953-894e-ca9440e42c7e', 'fiber', 2.5, 'as-fed'),
  ('67c37f02-7e20-4953-894e-ca9440e42c7e', 'ash', 2.5, 'as-fed'),
  ('67c37f02-7e20-4953-894e-ca9440e42c7e', 'moisture', 76, 'as-fed'),
  ('67c37f02-7e20-4953-894e-ca9440e42c7e', 'kcal', 113, 'as-fed'),
  ('67c37f02-7e20-4953-894e-ca9440e42c7e', 'calcium', 0.3, 'as-fed'),
  ('67c37f02-7e20-4953-894e-ca9440e42c7e', 'phosphorus', 0.25, 'as-fed');

-- Riverwood — Adult Surf 'n Turf Kalkoen met Fazant & Karper (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.riverwoodpetfood.com/products/natvoer-hond-adult-surf-n-turf-kalkoen-met-fazant-karper',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 1.140 kcal/kg naar kcal/100 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'eb6b8d55-c726-4ae5-b519-49b42bcf97de';
delete from public.recipe_nutrition where recipe_version_id = 'eb6b8d55-c726-4ae5-b519-49b42bcf97de';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('eb6b8d55-c726-4ae5-b519-49b42bcf97de', 'protein', 10, 'as-fed'),
  ('eb6b8d55-c726-4ae5-b519-49b42bcf97de', 'fat', 8.3, 'as-fed'),
  ('eb6b8d55-c726-4ae5-b519-49b42bcf97de', 'fiber', 2.1, 'as-fed'),
  ('eb6b8d55-c726-4ae5-b519-49b42bcf97de', 'ash', 3, 'as-fed'),
  ('eb6b8d55-c726-4ae5-b519-49b42bcf97de', 'moisture', 76, 'as-fed'),
  ('eb6b8d55-c726-4ae5-b519-49b42bcf97de', 'kcal', 114, 'as-fed'),
  ('eb6b8d55-c726-4ae5-b519-49b42bcf97de', 'calcium', 0.85, 'as-fed'),
  ('eb6b8d55-c726-4ae5-b519-49b42bcf97de', 'phosphorus', 0.53, 'as-fed');

-- Riverwood — Adult Surf 'n Turf Kalkoen met Kwartel & Karper (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.riverwoodpetfood.com/products/natvoer-vlees-en-vis-hond-adult-surf-n-turf-kalkoen-met-kwartel-karper-300-gram',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 1.010 kcal/kg naar kcal/100 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'bc2dce59-5724-4844-8c37-147683948c6b';
delete from public.recipe_nutrition where recipe_version_id = 'bc2dce59-5724-4844-8c37-147683948c6b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('bc2dce59-5724-4844-8c37-147683948c6b', 'protein', 9, 'as-fed'),
  ('bc2dce59-5724-4844-8c37-147683948c6b', 'fat', 6.9, 'as-fed'),
  ('bc2dce59-5724-4844-8c37-147683948c6b', 'fiber', 2.4, 'as-fed'),
  ('bc2dce59-5724-4844-8c37-147683948c6b', 'ash', 3.7, 'as-fed'),
  ('bc2dce59-5724-4844-8c37-147683948c6b', 'moisture', 76, 'as-fed'),
  ('bc2dce59-5724-4844-8c37-147683948c6b', 'kcal', 101, 'as-fed'),
  ('bc2dce59-5724-4844-8c37-147683948c6b', 'calcium', 0.83, 'as-fed'),
  ('bc2dce59-5724-4844-8c37-147683948c6b', 'phosphorus', 0.51, 'as-fed');

-- Riverwood — Adult Surf 'n Turf Kalkoen met Struisvogel & Karper (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.riverwoodpetfood.com/products/natvoer-vlees-en-vis-hond-adult-surf-n-turf-kalkoen-met-struisvogel-karper-300-gram',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 1.080 kcal/kg naar kcal/100 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'fd925aed-cad7-4250-8957-30e42e4aa492';
delete from public.recipe_nutrition where recipe_version_id = 'fd925aed-cad7-4250-8957-30e42e4aa492';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fd925aed-cad7-4250-8957-30e42e4aa492', 'protein', 9.8, 'as-fed'),
  ('fd925aed-cad7-4250-8957-30e42e4aa492', 'fat', 7.3, 'as-fed'),
  ('fd925aed-cad7-4250-8957-30e42e4aa492', 'fiber', 2.2, 'as-fed'),
  ('fd925aed-cad7-4250-8957-30e42e4aa492', 'ash', 3.4, 'as-fed'),
  ('fd925aed-cad7-4250-8957-30e42e4aa492', 'moisture', 76, 'as-fed'),
  ('fd925aed-cad7-4250-8957-30e42e4aa492', 'kcal', 108, 'as-fed'),
  ('fd925aed-cad7-4250-8957-30e42e4aa492', 'calcium', 0.75, 'as-fed'),
  ('fd925aed-cad7-4250-8957-30e42e4aa492', 'phosphorus', 0.5, 'as-fed');

-- Riverwood — Adult Surf 'n Turf Kalkoen met Wildzwijn & Karper (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.riverwoodpetfood.com/products/natvoer-vlees-en-vis-hond-adult-surf-n-turf-kalkoen-met-wildzwijn-karper-300-gram',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 1.050 kcal/kg naar kcal/100 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = '6df30d90-fa49-4407-821b-3de4a050f899';
delete from public.recipe_nutrition where recipe_version_id = '6df30d90-fa49-4407-821b-3de4a050f899';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6df30d90-fa49-4407-821b-3de4a050f899', 'protein', 11.2, 'as-fed'),
  ('6df30d90-fa49-4407-821b-3de4a050f899', 'fat', 7.6, 'as-fed'),
  ('6df30d90-fa49-4407-821b-3de4a050f899', 'fiber', 2.5, 'as-fed'),
  ('6df30d90-fa49-4407-821b-3de4a050f899', 'ash', 4.8, 'as-fed'),
  ('6df30d90-fa49-4407-821b-3de4a050f899', 'moisture', 75, 'as-fed'),
  ('6df30d90-fa49-4407-821b-3de4a050f899', 'kcal', 105, 'as-fed'),
  ('6df30d90-fa49-4407-821b-3de4a050f899', 'calcium', 1, 'as-fed'),
  ('6df30d90-fa49-4407-821b-3de4a050f899', 'phosphorus', 0.6, 'as-fed');

-- Riverwood — Adult Surf 'n Turf Kalkoen met Zalm & Karper (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.riverwoodpetfood.com/products/adult-surf-n-turf-turkey-with-salmon-carp',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 1.190 kcal/kg naar kcal/100 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = '62817801-5213-4c12-8f1d-43e94db3d1b8';
delete from public.recipe_nutrition where recipe_version_id = '62817801-5213-4c12-8f1d-43e94db3d1b8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('62817801-5213-4c12-8f1d-43e94db3d1b8', 'protein', 10, 'as-fed'),
  ('62817801-5213-4c12-8f1d-43e94db3d1b8', 'fat', 8, 'as-fed'),
  ('62817801-5213-4c12-8f1d-43e94db3d1b8', 'fiber', 3.5, 'as-fed'),
  ('62817801-5213-4c12-8f1d-43e94db3d1b8', 'ash', 2.5, 'as-fed'),
  ('62817801-5213-4c12-8f1d-43e94db3d1b8', 'moisture', 75, 'as-fed'),
  ('62817801-5213-4c12-8f1d-43e94db3d1b8', 'kcal', 119, 'as-fed'),
  ('62817801-5213-4c12-8f1d-43e94db3d1b8', 'calcium', 0.4, 'as-fed'),
  ('62817801-5213-4c12-8f1d-43e94db3d1b8', 'phosphorus', 0.3, 'as-fed');

-- Riverwood — Eend Mono Proteïne (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.riverwoodpetfood.com/products/eend-mono-proteine-400-gram',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 917 kcal/kg naar kcal/100 g.'
 where id = '245a2bf4-7fbf-4b8a-9752-f1a2cae2dc32';
delete from public.recipe_nutrition where recipe_version_id = '245a2bf4-7fbf-4b8a-9752-f1a2cae2dc32';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('245a2bf4-7fbf-4b8a-9752-f1a2cae2dc32', 'protein', 10.5, 'as-fed'),
  ('245a2bf4-7fbf-4b8a-9752-f1a2cae2dc32', 'fat', 5.2, 'as-fed'),
  ('245a2bf4-7fbf-4b8a-9752-f1a2cae2dc32', 'fiber', 0.4, 'as-fed'),
  ('245a2bf4-7fbf-4b8a-9752-f1a2cae2dc32', 'ash', 2.5, 'as-fed'),
  ('245a2bf4-7fbf-4b8a-9752-f1a2cae2dc32', 'moisture', 80, 'as-fed'),
  ('245a2bf4-7fbf-4b8a-9752-f1a2cae2dc32', 'kcal', 91.7, 'as-fed'),
  ('245a2bf4-7fbf-4b8a-9752-f1a2cae2dc32', 'calcium', 0.26, 'as-fed'),
  ('245a2bf4-7fbf-4b8a-9752-f1a2cae2dc32', 'phosphorus', 0.2, 'as-fed'),
  ('245a2bf4-7fbf-4b8a-9752-f1a2cae2dc32', 'omega3', 0.08, 'as-fed'),
  ('245a2bf4-7fbf-4b8a-9752-f1a2cae2dc32', 'omega6', 1.08, 'as-fed');

-- Riverwood — Forel & Makreel met Haring (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.riverwoodpetfood.com/products/forel-makreel-met-haring',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3.765 kcal/kg naar kcal/100 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'cf61e884-a8c2-42cb-a538-d2a2c63e5dfc';
delete from public.recipe_nutrition where recipe_version_id = 'cf61e884-a8c2-42cb-a538-d2a2c63e5dfc';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('cf61e884-a8c2-42cb-a538-d2a2c63e5dfc', 'protein', 33, 'as-fed'),
  ('cf61e884-a8c2-42cb-a538-d2a2c63e5dfc', 'fat', 14, 'as-fed'),
  ('cf61e884-a8c2-42cb-a538-d2a2c63e5dfc', 'fiber', 1.5, 'as-fed'),
  ('cf61e884-a8c2-42cb-a538-d2a2c63e5dfc', 'ash', 8.2, 'as-fed'),
  ('cf61e884-a8c2-42cb-a538-d2a2c63e5dfc', 'moisture', 10, 'as-fed'),
  ('cf61e884-a8c2-42cb-a538-d2a2c63e5dfc', 'kcal', 376.5, 'as-fed'),
  ('cf61e884-a8c2-42cb-a538-d2a2c63e5dfc', 'calcium', 1.4, 'as-fed'),
  ('cf61e884-a8c2-42cb-a538-d2a2c63e5dfc', 'phosphorus', 1.1, 'as-fed');

-- Riverwood — Geit Mono Proteïne (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.riverwoodpetfood.com/products/geit-mono-proteine-400-gram',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 1.132 kcal/kg naar kcal/100 g.'
 where id = 'fb946ea8-2dd2-4e4b-ae12-e445e8efaf3e';
delete from public.recipe_nutrition where recipe_version_id = 'fb946ea8-2dd2-4e4b-ae12-e445e8efaf3e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fb946ea8-2dd2-4e4b-ae12-e445e8efaf3e', 'protein', 10.6, 'as-fed'),
  ('fb946ea8-2dd2-4e4b-ae12-e445e8efaf3e', 'fat', 6.5, 'as-fed'),
  ('fb946ea8-2dd2-4e4b-ae12-e445e8efaf3e', 'fiber', 0.5, 'as-fed'),
  ('fb946ea8-2dd2-4e4b-ae12-e445e8efaf3e', 'ash', 2.2, 'as-fed'),
  ('fb946ea8-2dd2-4e4b-ae12-e445e8efaf3e', 'moisture', 76, 'as-fed'),
  ('fb946ea8-2dd2-4e4b-ae12-e445e8efaf3e', 'kcal', 113.2, 'as-fed'),
  ('fb946ea8-2dd2-4e4b-ae12-e445e8efaf3e', 'calcium', 0.21, 'as-fed'),
  ('fb946ea8-2dd2-4e4b-ae12-e445e8efaf3e', 'phosphorus', 0.16, 'as-fed'),
  ('fb946ea8-2dd2-4e4b-ae12-e445e8efaf3e', 'omega3', 0.1, 'as-fed'),
  ('fb946ea8-2dd2-4e4b-ae12-e445e8efaf3e', 'omega6', 0.5, 'as-fed');

-- Riverwood — Hert & Lam met Konijn (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.riverwoodpetfood.com/products/hert-lam-met-konijn',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3.700 kcal/kg naar kcal/100 g.'
 where id = '965bf901-c35d-411f-821f-6fc2b3b0eb83';
delete from public.recipe_nutrition where recipe_version_id = '965bf901-c35d-411f-821f-6fc2b3b0eb83';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('965bf901-c35d-411f-821f-6fc2b3b0eb83', 'protein', 28, 'as-fed'),
  ('965bf901-c35d-411f-821f-6fc2b3b0eb83', 'fat', 16, 'as-fed'),
  ('965bf901-c35d-411f-821f-6fc2b3b0eb83', 'fiber', 2.9, 'as-fed'),
  ('965bf901-c35d-411f-821f-6fc2b3b0eb83', 'ash', 9.6, 'as-fed'),
  ('965bf901-c35d-411f-821f-6fc2b3b0eb83', 'moisture', 10, 'as-fed'),
  ('965bf901-c35d-411f-821f-6fc2b3b0eb83', 'kcal', 370, 'as-fed'),
  ('965bf901-c35d-411f-821f-6fc2b3b0eb83', 'calcium', 1.8, 'as-fed'),
  ('965bf901-c35d-411f-821f-6fc2b3b0eb83', 'phosphorus', 1.4, 'as-fed'),
  ('965bf901-c35d-411f-821f-6fc2b3b0eb83', 'omega3', 0.3, 'as-fed'),
  ('965bf901-c35d-411f-821f-6fc2b3b0eb83', 'omega6', 1.8, 'as-fed');

-- Riverwood — Hert Mono Proteïne (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.riverwoodpetfood.com/products/hert-mono-proteine-400-gram',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 1.132 kcal/kg naar kcal/100 g.'
 where id = 'b92ec678-72a7-4394-8267-9901d96f377d';
delete from public.recipe_nutrition where recipe_version_id = 'b92ec678-72a7-4394-8267-9901d96f377d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b92ec678-72a7-4394-8267-9901d96f377d', 'protein', 10.4, 'as-fed'),
  ('b92ec678-72a7-4394-8267-9901d96f377d', 'fat', 6.8, 'as-fed'),
  ('b92ec678-72a7-4394-8267-9901d96f377d', 'fiber', 0.4, 'as-fed'),
  ('b92ec678-72a7-4394-8267-9901d96f377d', 'ash', 2.8, 'as-fed'),
  ('b92ec678-72a7-4394-8267-9901d96f377d', 'moisture', 76, 'as-fed'),
  ('b92ec678-72a7-4394-8267-9901d96f377d', 'kcal', 113.2, 'as-fed'),
  ('b92ec678-72a7-4394-8267-9901d96f377d', 'calcium', 0.35, 'as-fed'),
  ('b92ec678-72a7-4394-8267-9901d96f377d', 'phosphorus', 0.29, 'as-fed'),
  ('b92ec678-72a7-4394-8267-9901d96f377d', 'omega3', 0.05, 'as-fed'),
  ('b92ec678-72a7-4394-8267-9901d96f377d', 'omega6', 0.8, 'as-fed');

-- Riverwood — Junior Large Breed Eend & Kalkoen met Fazant (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.riverwoodpetfood.com/products/junior-xl-eend-kalkoen-met-fazant',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3.850 kcal/kg naar kcal/100 g.'
 where id = '202a1fec-6a2c-4ad9-a947-e8d68442ef95';
delete from public.recipe_nutrition where recipe_version_id = '202a1fec-6a2c-4ad9-a947-e8d68442ef95';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('202a1fec-6a2c-4ad9-a947-e8d68442ef95', 'protein', 36, 'as-fed'),
  ('202a1fec-6a2c-4ad9-a947-e8d68442ef95', 'fat', 16, 'as-fed'),
  ('202a1fec-6a2c-4ad9-a947-e8d68442ef95', 'fiber', 2.8, 'as-fed'),
  ('202a1fec-6a2c-4ad9-a947-e8d68442ef95', 'ash', 7, 'as-fed'),
  ('202a1fec-6a2c-4ad9-a947-e8d68442ef95', 'moisture', 10, 'as-fed'),
  ('202a1fec-6a2c-4ad9-a947-e8d68442ef95', 'kcal', 385, 'as-fed'),
  ('202a1fec-6a2c-4ad9-a947-e8d68442ef95', 'calcium', 1.3, 'as-fed'),
  ('202a1fec-6a2c-4ad9-a947-e8d68442ef95', 'phosphorus', 1, 'as-fed'),
  ('202a1fec-6a2c-4ad9-a947-e8d68442ef95', 'omega3', 0.13, 'as-fed'),
  ('202a1fec-6a2c-4ad9-a947-e8d68442ef95', 'omega6', 1.9, 'as-fed');

-- Riverwood — Kabeljauw & Forel Visworst (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.riverwoodpetfood.com/products/kabeljauw-forel-visworst-800-gram',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 1.088 kcal/kg naar kcal/100 g. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '9d65f852-33a6-4b9a-9878-524cfd2c4662';
delete from public.recipe_nutrition where recipe_version_id = '9d65f852-33a6-4b9a-9878-524cfd2c4662';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9d65f852-33a6-4b9a-9878-524cfd2c4662', 'protein', 11.4, 'as-fed'),
  ('9d65f852-33a6-4b9a-9878-524cfd2c4662', 'fat', 4.5, 'as-fed'),
  ('9d65f852-33a6-4b9a-9878-524cfd2c4662', 'fiber', 0.5, 'as-fed'),
  ('9d65f852-33a6-4b9a-9878-524cfd2c4662', 'ash', 4.4, 'as-fed'),
  ('9d65f852-33a6-4b9a-9878-524cfd2c4662', 'moisture', 72.9, 'as-fed'),
  ('9d65f852-33a6-4b9a-9878-524cfd2c4662', 'kcal', 108.8, 'as-fed');

-- Riverwood — Kabeljauw & Tonijn Visworst (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.riverwoodpetfood.com/products/kabeljauw-tonijn-visworst-800-gram',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 888 kcal/kg naar kcal/100 g. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '7bc2e35b-4dd6-41a5-9e95-85dbf2ad2b01';
delete from public.recipe_nutrition where recipe_version_id = '7bc2e35b-4dd6-41a5-9e95-85dbf2ad2b01';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7bc2e35b-4dd6-41a5-9e95-85dbf2ad2b01', 'protein', 12.1, 'as-fed'),
  ('7bc2e35b-4dd6-41a5-9e95-85dbf2ad2b01', 'fat', 2, 'as-fed'),
  ('7bc2e35b-4dd6-41a5-9e95-85dbf2ad2b01', 'fiber', 0.5, 'as-fed'),
  ('7bc2e35b-4dd6-41a5-9e95-85dbf2ad2b01', 'ash', 4.2, 'as-fed'),
  ('7bc2e35b-4dd6-41a5-9e95-85dbf2ad2b01', 'moisture', 75.2, 'as-fed'),
  ('7bc2e35b-4dd6-41a5-9e95-85dbf2ad2b01', 'kcal', 88.8, 'as-fed');

-- Riverwood — Kabeljauw & Zalm Visworst (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.riverwoodpetfood.com/products/kabeljauw-zalm-visworst-800-gram',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 1.248 kcal/kg naar kcal/100 g. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '055a52b7-0768-4bdb-9c3a-b9dbc0173db3';
delete from public.recipe_nutrition where recipe_version_id = '055a52b7-0768-4bdb-9c3a-b9dbc0173db3';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('055a52b7-0768-4bdb-9c3a-b9dbc0173db3', 'protein', 11.8, 'as-fed'),
  ('055a52b7-0768-4bdb-9c3a-b9dbc0173db3', 'fat', 6.5, 'as-fed'),
  ('055a52b7-0768-4bdb-9c3a-b9dbc0173db3', 'fiber', 0.5, 'as-fed'),
  ('055a52b7-0768-4bdb-9c3a-b9dbc0173db3', 'ash', 4.4, 'as-fed'),
  ('055a52b7-0768-4bdb-9c3a-b9dbc0173db3', 'moisture', 71, 'as-fed'),
  ('055a52b7-0768-4bdb-9c3a-b9dbc0173db3', 'kcal', 124.8, 'as-fed');

-- Riverwood — Kabeljauw Visworst (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.riverwoodpetfood.com/products/kabeljauw-visworst-800-gram',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 789 kcal/kg naar kcal/100 g. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'b2b827ca-dc35-4d63-99f7-5b74778a0d51';
delete from public.recipe_nutrition where recipe_version_id = 'b2b827ca-dc35-4d63-99f7-5b74778a0d51';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b2b827ca-dc35-4d63-99f7-5b74778a0d51', 'protein', 12.4, 'as-fed'),
  ('b2b827ca-dc35-4d63-99f7-5b74778a0d51', 'fat', 1, 'as-fed'),
  ('b2b827ca-dc35-4d63-99f7-5b74778a0d51', 'fiber', 0.5, 'as-fed'),
  ('b2b827ca-dc35-4d63-99f7-5b74778a0d51', 'ash', 4.9, 'as-fed'),
  ('b2b827ca-dc35-4d63-99f7-5b74778a0d51', 'moisture', 75.7, 'as-fed'),
  ('b2b827ca-dc35-4d63-99f7-5b74778a0d51', 'kcal', 78.9, 'as-fed');

-- Riverwood — Kalf Mono Proteïne (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.riverwoodpetfood.com/products/kalf-mono-proteine-400-gram',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 1.284 kcal/kg naar kcal/100 g.'
 where id = 'e10dc9be-5a1d-46c5-8218-32934c3b5300';
delete from public.recipe_nutrition where recipe_version_id = 'e10dc9be-5a1d-46c5-8218-32934c3b5300';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e10dc9be-5a1d-46c5-8218-32934c3b5300', 'protein', 10.8, 'as-fed'),
  ('e10dc9be-5a1d-46c5-8218-32934c3b5300', 'fat', 7.2, 'as-fed'),
  ('e10dc9be-5a1d-46c5-8218-32934c3b5300', 'fiber', 0.4, 'as-fed'),
  ('e10dc9be-5a1d-46c5-8218-32934c3b5300', 'ash', 2.3, 'as-fed'),
  ('e10dc9be-5a1d-46c5-8218-32934c3b5300', 'moisture', 73, 'as-fed'),
  ('e10dc9be-5a1d-46c5-8218-32934c3b5300', 'kcal', 128.4, 'as-fed'),
  ('e10dc9be-5a1d-46c5-8218-32934c3b5300', 'calcium', 0.21, 'as-fed'),
  ('e10dc9be-5a1d-46c5-8218-32934c3b5300', 'phosphorus', 0.16, 'as-fed'),
  ('e10dc9be-5a1d-46c5-8218-32934c3b5300', 'omega3', 0.07, 'as-fed'),
  ('e10dc9be-5a1d-46c5-8218-32934c3b5300', 'omega6', 0.6, 'as-fed');

-- Riverwood — Kalkoen Mono Proteïne (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.riverwoodpetfood.com/products/kalkoen-mono-proteine-400-gram',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 966 kcal/kg naar kcal/100 g.'
 where id = 'ebdd12ef-aae3-44be-b749-1291e123b9a9';
delete from public.recipe_nutrition where recipe_version_id = 'ebdd12ef-aae3-44be-b749-1291e123b9a9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ebdd12ef-aae3-44be-b749-1291e123b9a9', 'protein', 10.8, 'as-fed'),
  ('ebdd12ef-aae3-44be-b749-1291e123b9a9', 'fat', 5.6, 'as-fed'),
  ('ebdd12ef-aae3-44be-b749-1291e123b9a9', 'fiber', 0.5, 'as-fed'),
  ('ebdd12ef-aae3-44be-b749-1291e123b9a9', 'ash', 2.5, 'as-fed'),
  ('ebdd12ef-aae3-44be-b749-1291e123b9a9', 'moisture', 79, 'as-fed'),
  ('ebdd12ef-aae3-44be-b749-1291e123b9a9', 'kcal', 96.6, 'as-fed'),
  ('ebdd12ef-aae3-44be-b749-1291e123b9a9', 'calcium', 0.26, 'as-fed'),
  ('ebdd12ef-aae3-44be-b749-1291e123b9a9', 'phosphorus', 0.2, 'as-fed'),
  ('ebdd12ef-aae3-44be-b749-1291e123b9a9', 'omega3', 0.1, 'as-fed'),
  ('ebdd12ef-aae3-44be-b749-1291e123b9a9', 'omega6', 1.3, 'as-fed');

-- Riverwood — Kerstmaaltijd Konijn & Kalkoen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.riverwoodpetfood.com/products/christmas-dinner-konijn-kalkoen-400-gram',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 1.143 kcal/kg naar kcal/100 g. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '557ccf1c-1eea-40ed-97cd-a9940e203757';
delete from public.recipe_nutrition where recipe_version_id = '557ccf1c-1eea-40ed-97cd-a9940e203757';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('557ccf1c-1eea-40ed-97cd-a9940e203757', 'protein', 11.1, 'as-fed'),
  ('557ccf1c-1eea-40ed-97cd-a9940e203757', 'fat', 6.3, 'as-fed'),
  ('557ccf1c-1eea-40ed-97cd-a9940e203757', 'fiber', 0.6, 'as-fed'),
  ('557ccf1c-1eea-40ed-97cd-a9940e203757', 'ash', 2.5, 'as-fed'),
  ('557ccf1c-1eea-40ed-97cd-a9940e203757', 'moisture', 75, 'as-fed'),
  ('557ccf1c-1eea-40ed-97cd-a9940e203757', 'kcal', 114.3, 'as-fed');

-- Riverwood — Lam Mono Proteïne (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.riverwoodpetfood.com/products/lam-mono-proteine-400-gram',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 1.067 kcal/kg naar kcal/100 g.'
 where id = 'c2e6aa34-e172-410d-ad9b-124b8eb2053f';
delete from public.recipe_nutrition where recipe_version_id = 'c2e6aa34-e172-410d-ad9b-124b8eb2053f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c2e6aa34-e172-410d-ad9b-124b8eb2053f', 'protein', 10.5, 'as-fed'),
  ('c2e6aa34-e172-410d-ad9b-124b8eb2053f', 'fat', 7.8, 'as-fed'),
  ('c2e6aa34-e172-410d-ad9b-124b8eb2053f', 'fiber', 0.3, 'as-fed'),
  ('c2e6aa34-e172-410d-ad9b-124b8eb2053f', 'ash', 3, 'as-fed'),
  ('c2e6aa34-e172-410d-ad9b-124b8eb2053f', 'moisture', 79, 'as-fed'),
  ('c2e6aa34-e172-410d-ad9b-124b8eb2053f', 'kcal', 106.7, 'as-fed'),
  ('c2e6aa34-e172-410d-ad9b-124b8eb2053f', 'calcium', 0.35, 'as-fed'),
  ('c2e6aa34-e172-410d-ad9b-124b8eb2053f', 'phosphorus', 0.3, 'as-fed'),
  ('c2e6aa34-e172-410d-ad9b-124b8eb2053f', 'omega3', 0.1, 'as-fed'),
  ('c2e6aa34-e172-410d-ad9b-124b8eb2053f', 'omega6', 0.5, 'as-fed');

-- Riverwood — Paard Mono Proteïne (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.riverwoodpetfood.com/products/paard-mono-proteine-400-gram',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 1.041 kcal/kg naar kcal/100 g.'
 where id = '5bfc0135-8070-4182-986f-cdf1608ebea4';
delete from public.recipe_nutrition where recipe_version_id = '5bfc0135-8070-4182-986f-cdf1608ebea4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5bfc0135-8070-4182-986f-cdf1608ebea4', 'protein', 11.4, 'as-fed'),
  ('5bfc0135-8070-4182-986f-cdf1608ebea4', 'fat', 4.9, 'as-fed'),
  ('5bfc0135-8070-4182-986f-cdf1608ebea4', 'fiber', 0.4, 'as-fed'),
  ('5bfc0135-8070-4182-986f-cdf1608ebea4', 'ash', 1.9, 'as-fed'),
  ('5bfc0135-8070-4182-986f-cdf1608ebea4', 'moisture', 77, 'as-fed'),
  ('5bfc0135-8070-4182-986f-cdf1608ebea4', 'kcal', 104.1, 'as-fed'),
  ('5bfc0135-8070-4182-986f-cdf1608ebea4', 'calcium', 0.24, 'as-fed'),
  ('5bfc0135-8070-4182-986f-cdf1608ebea4', 'phosphorus', 0.2, 'as-fed'),
  ('5bfc0135-8070-4182-986f-cdf1608ebea4', 'omega3', 0.5, 'as-fed'),
  ('5bfc0135-8070-4182-986f-cdf1608ebea4', 'omega6', 1.7, 'as-fed');

-- Riverwood — Puppy Kalkoen & Eend met Fazant (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.riverwoodpetfood.com/products/puppy-kalkoen-eend-met-fazant',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 4.000 kcal/kg naar kcal/100 g.'
 where id = 'a5c4bdb9-53bf-4247-9fed-bd327aac9cfe';
delete from public.recipe_nutrition where recipe_version_id = 'a5c4bdb9-53bf-4247-9fed-bd327aac9cfe';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a5c4bdb9-53bf-4247-9fed-bd327aac9cfe', 'protein', 39, 'as-fed'),
  ('a5c4bdb9-53bf-4247-9fed-bd327aac9cfe', 'fat', 18, 'as-fed'),
  ('a5c4bdb9-53bf-4247-9fed-bd327aac9cfe', 'fiber', 2.8, 'as-fed'),
  ('a5c4bdb9-53bf-4247-9fed-bd327aac9cfe', 'ash', 7, 'as-fed'),
  ('a5c4bdb9-53bf-4247-9fed-bd327aac9cfe', 'moisture', 10, 'as-fed'),
  ('a5c4bdb9-53bf-4247-9fed-bd327aac9cfe', 'kcal', 400, 'as-fed'),
  ('a5c4bdb9-53bf-4247-9fed-bd327aac9cfe', 'calcium', 1.4, 'as-fed'),
  ('a5c4bdb9-53bf-4247-9fed-bd327aac9cfe', 'phosphorus', 1, 'as-fed'),
  ('a5c4bdb9-53bf-4247-9fed-bd327aac9cfe', 'omega3', 0.16, 'as-fed'),
  ('a5c4bdb9-53bf-4247-9fed-bd327aac9cfe', 'omega6', 2.3, 'as-fed');

-- Riverwood — Rendier & Hert met Wild Zwijn (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.riverwoodpetfood.com/products/rendier-hert-met-wild-zwijn',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De fabrikant vermeldt op deze pagina geen energiewaarde, daarom kcal null. Geen omrekening nodig.'
 where id = 'c83b53aa-a5b5-45e6-aef2-186087e189f8';
delete from public.recipe_nutrition where recipe_version_id = 'c83b53aa-a5b5-45e6-aef2-186087e189f8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c83b53aa-a5b5-45e6-aef2-186087e189f8', 'protein', 37, 'as-fed'),
  ('c83b53aa-a5b5-45e6-aef2-186087e189f8', 'fat', 17, 'as-fed'),
  ('c83b53aa-a5b5-45e6-aef2-186087e189f8', 'fiber', 3, 'as-fed'),
  ('c83b53aa-a5b5-45e6-aef2-186087e189f8', 'ash', 8, 'as-fed'),
  ('c83b53aa-a5b5-45e6-aef2-186087e189f8', 'moisture', 10, 'as-fed'),
  ('c83b53aa-a5b5-45e6-aef2-186087e189f8', 'calcium', 1.8, 'as-fed'),
  ('c83b53aa-a5b5-45e6-aef2-186087e189f8', 'phosphorus', 1.4, 'as-fed'),
  ('c83b53aa-a5b5-45e6-aef2-186087e189f8', 'omega3', 0.34, 'as-fed'),
  ('c83b53aa-a5b5-45e6-aef2-186087e189f8', 'omega6', 2, 'as-fed');

-- Riverwood — Small Breed Gans & Eend met Kwartel (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.riverwoodpetfood.com/products/small-breed-gans-eend-met-kwartel',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3.700 kcal/kg naar kcal/100 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'd1519526-46d6-42e6-816d-d87d78ede862';
delete from public.recipe_nutrition where recipe_version_id = 'd1519526-46d6-42e6-816d-d87d78ede862';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d1519526-46d6-42e6-816d-d87d78ede862', 'protein', 33, 'as-fed'),
  ('d1519526-46d6-42e6-816d-d87d78ede862', 'fat', 14, 'as-fed'),
  ('d1519526-46d6-42e6-816d-d87d78ede862', 'fiber', 2.5, 'as-fed'),
  ('d1519526-46d6-42e6-816d-d87d78ede862', 'ash', 8, 'as-fed'),
  ('d1519526-46d6-42e6-816d-d87d78ede862', 'moisture', 10, 'as-fed'),
  ('d1519526-46d6-42e6-816d-d87d78ede862', 'kcal', 370, 'as-fed'),
  ('d1519526-46d6-42e6-816d-d87d78ede862', 'calcium', 1.8, 'as-fed'),
  ('d1519526-46d6-42e6-816d-d87d78ede862', 'phosphorus', 1.3, 'as-fed');

-- Riverwood — Wildzwijn Mono Proteïne (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.riverwoodpetfood.com/products/wildzwijn-mono-proteine-400-gram',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 1.080 kcal/kg naar kcal/100 g.'
 where id = '6e76e883-20e7-4a97-8f7f-fd47f827f50d';
delete from public.recipe_nutrition where recipe_version_id = '6e76e883-20e7-4a97-8f7f-fd47f827f50d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6e76e883-20e7-4a97-8f7f-fd47f827f50d', 'protein', 10.5, 'as-fed'),
  ('6e76e883-20e7-4a97-8f7f-fd47f827f50d', 'fat', 6.5, 'as-fed'),
  ('6e76e883-20e7-4a97-8f7f-fd47f827f50d', 'fiber', 0.4, 'as-fed'),
  ('6e76e883-20e7-4a97-8f7f-fd47f827f50d', 'ash', 2.8, 'as-fed'),
  ('6e76e883-20e7-4a97-8f7f-fd47f827f50d', 'moisture', 77, 'as-fed'),
  ('6e76e883-20e7-4a97-8f7f-fd47f827f50d', 'kcal', 108, 'as-fed'),
  ('6e76e883-20e7-4a97-8f7f-fd47f827f50d', 'calcium', 0.35, 'as-fed'),
  ('6e76e883-20e7-4a97-8f7f-fd47f827f50d', 'phosphorus', 0.29, 'as-fed'),
  ('6e76e883-20e7-4a97-8f7f-fd47f827f50d', 'omega3', 0.05, 'as-fed'),
  ('6e76e883-20e7-4a97-8f7f-fd47f827f50d', 'omega6', 0.8, 'as-fed');

-- Riverwood — Zalm & Witvis met Haring (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.riverwoodpetfood.com/products/zalm-witvis-met-haring',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3.780 kcal/kg naar kcal/100 g.'
 where id = '1bf3a7e7-ebb3-49c2-b519-ca0dfacd0f6a';
delete from public.recipe_nutrition where recipe_version_id = '1bf3a7e7-ebb3-49c2-b519-ca0dfacd0f6a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1bf3a7e7-ebb3-49c2-b519-ca0dfacd0f6a', 'protein', 32, 'as-fed'),
  ('1bf3a7e7-ebb3-49c2-b519-ca0dfacd0f6a', 'fat', 15, 'as-fed'),
  ('1bf3a7e7-ebb3-49c2-b519-ca0dfacd0f6a', 'fiber', 2, 'as-fed'),
  ('1bf3a7e7-ebb3-49c2-b519-ca0dfacd0f6a', 'ash', 8.2, 'as-fed'),
  ('1bf3a7e7-ebb3-49c2-b519-ca0dfacd0f6a', 'moisture', 10, 'as-fed'),
  ('1bf3a7e7-ebb3-49c2-b519-ca0dfacd0f6a', 'kcal', 378, 'as-fed'),
  ('1bf3a7e7-ebb3-49c2-b519-ca0dfacd0f6a', 'calcium', 1.3, 'as-fed'),
  ('1bf3a7e7-ebb3-49c2-b519-ca0dfacd0f6a', 'phosphorus', 1, 'as-fed'),
  ('1bf3a7e7-ebb3-49c2-b519-ca0dfacd0f6a', 'omega3', 0.9, 'as-fed'),
  ('1bf3a7e7-ebb3-49c2-b519-ca0dfacd0f6a', 'omega6', 2.2, 'as-fed');

commit;
