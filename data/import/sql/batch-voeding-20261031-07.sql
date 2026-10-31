begin;

-- Trovet — Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.trovet.com/nl/product/adult-hond/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3880 kcal/kg naar kcal/100 g (gedeeld door 10). Niet vermeld: omega-3, omega-6.'
 where id = '61503533-b79f-4bbe-99ca-3ef6206f0aa4';
delete from public.recipe_nutrition where recipe_version_id = '61503533-b79f-4bbe-99ca-3ef6206f0aa4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('61503533-b79f-4bbe-99ca-3ef6206f0aa4', 'protein', 25, 'as-fed'),
  ('61503533-b79f-4bbe-99ca-3ef6206f0aa4', 'fat', 15, 'as-fed'),
  ('61503533-b79f-4bbe-99ca-3ef6206f0aa4', 'fiber', 2, 'as-fed'),
  ('61503533-b79f-4bbe-99ca-3ef6206f0aa4', 'ash', 6.5, 'as-fed'),
  ('61503533-b79f-4bbe-99ca-3ef6206f0aa4', 'moisture', 8, 'as-fed'),
  ('61503533-b79f-4bbe-99ca-3ef6206f0aa4', 'kcal', 388, 'as-fed'),
  ('61503533-b79f-4bbe-99ca-3ef6206f0aa4', 'calcium', 1.3, 'as-fed'),
  ('61503533-b79f-4bbe-99ca-3ef6206f0aa4', 'phosphorus', 1, 'as-fed');

-- Trovet — Adult (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.trovet.com/nl/product/adult-hond/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 860 kcal/kg naar kcal/100 g (gedeeld door 10). De pagina vermeldt naast ''Anorganische stof 2,0%'' ook ''Ruwe as 0,3%''; die dubbele, tegenstrijdige waarde is niet gebruikt en ruwe vezel blijft daarom null. Trovet noemt de analyse ''per kg'', maar vermeldt de macro''s in procenten; die zijn als as-fed overgenomen. Niet vermeld: omega-3, omega-6.'
 where id = '9d9db334-afb2-4790-beb5-583a3ae29be5';
delete from public.recipe_nutrition where recipe_version_id = '9d9db334-afb2-4790-beb5-583a3ae29be5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9d9db334-afb2-4790-beb5-583a3ae29be5', 'protein', 8, 'as-fed'),
  ('9d9db334-afb2-4790-beb5-583a3ae29be5', 'fat', 5.5, 'as-fed'),
  ('9d9db334-afb2-4790-beb5-583a3ae29be5', 'ash', 2, 'as-fed'),
  ('9d9db334-afb2-4790-beb5-583a3ae29be5', 'moisture', 81, 'as-fed'),
  ('9d9db334-afb2-4790-beb5-583a3ae29be5', 'kcal', 86, 'as-fed'),
  ('9d9db334-afb2-4790-beb5-583a3ae29be5', 'calcium', 0.3, 'as-fed'),
  ('9d9db334-afb2-4790-beb5-583a3ae29be5', 'phosphorus', 0.22, 'as-fed');

-- Trovet — Dental (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.trovet.com/nl/product/dental-hond/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3478 kcal/kg naar kcal/100 g (gedeeld door 10). Niet vermeld: omega-3, omega-6.'
 where id = 'e62afe76-2219-4e45-8b82-ded88a935d36';
delete from public.recipe_nutrition where recipe_version_id = 'e62afe76-2219-4e45-8b82-ded88a935d36';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e62afe76-2219-4e45-8b82-ded88a935d36', 'protein', 22, 'as-fed'),
  ('e62afe76-2219-4e45-8b82-ded88a935d36', 'fat', 14, 'as-fed'),
  ('e62afe76-2219-4e45-8b82-ded88a935d36', 'fiber', 7.7, 'as-fed'),
  ('e62afe76-2219-4e45-8b82-ded88a935d36', 'ash', 5, 'as-fed'),
  ('e62afe76-2219-4e45-8b82-ded88a935d36', 'moisture', 8, 'as-fed'),
  ('e62afe76-2219-4e45-8b82-ded88a935d36', 'kcal', 347.8, 'as-fed'),
  ('e62afe76-2219-4e45-8b82-ded88a935d36', 'calcium', 0.8, 'as-fed'),
  ('e62afe76-2219-4e45-8b82-ded88a935d36', 'phosphorus', 0.76, 'as-fed');

-- Trovet — Exclusion (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.trovet.com/nl/product/exclusion-hond/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3587 kcal/kg naar kcal/100 g (gedeeld door 10). Niet vermeld: omega-3, omega-6.'
 where id = 'dfaf3046-4ca7-4c6d-8eae-37bf8093e876';
delete from public.recipe_nutrition where recipe_version_id = 'dfaf3046-4ca7-4c6d-8eae-37bf8093e876';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('dfaf3046-4ca7-4c6d-8eae-37bf8093e876', 'protein', 21.5, 'as-fed'),
  ('dfaf3046-4ca7-4c6d-8eae-37bf8093e876', 'fat', 14, 'as-fed'),
  ('dfaf3046-4ca7-4c6d-8eae-37bf8093e876', 'fiber', 2, 'as-fed'),
  ('dfaf3046-4ca7-4c6d-8eae-37bf8093e876', 'ash', 7.6, 'as-fed'),
  ('dfaf3046-4ca7-4c6d-8eae-37bf8093e876', 'moisture', 8, 'as-fed'),
  ('dfaf3046-4ca7-4c6d-8eae-37bf8093e876', 'kcal', 358.7, 'as-fed'),
  ('dfaf3046-4ca7-4c6d-8eae-37bf8093e876', 'calcium', 1.5, 'as-fed'),
  ('dfaf3046-4ca7-4c6d-8eae-37bf8093e876', 'phosphorus', 1, 'as-fed');

-- Trovet — Hepatic (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.trovet.com/nl/product/hepatic-hond/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 4000 kcal/kg naar kcal/100 g (gedeeld door 10). Niet vermeld: omega-3, omega-6.'
 where id = '4c7c0533-355f-448a-a2f7-d270f3745fe4';
delete from public.recipe_nutrition where recipe_version_id = '4c7c0533-355f-448a-a2f7-d270f3745fe4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4c7c0533-355f-448a-a2f7-d270f3745fe4', 'protein', 27, 'as-fed'),
  ('4c7c0533-355f-448a-a2f7-d270f3745fe4', 'fat', 17, 'as-fed'),
  ('4c7c0533-355f-448a-a2f7-d270f3745fe4', 'fiber', 2, 'as-fed'),
  ('4c7c0533-355f-448a-a2f7-d270f3745fe4', 'ash', 6, 'as-fed'),
  ('4c7c0533-355f-448a-a2f7-d270f3745fe4', 'moisture', 8, 'as-fed'),
  ('4c7c0533-355f-448a-a2f7-d270f3745fe4', 'kcal', 400, 'as-fed'),
  ('4c7c0533-355f-448a-a2f7-d270f3745fe4', 'calcium', 1.1, 'as-fed'),
  ('4c7c0533-355f-448a-a2f7-d270f3745fe4', 'phosphorus', 0.9, 'as-fed');

-- Trovet — Hepatic (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.trovet.com/nl/product/hepatic-hond/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 954 kcal/kg naar kcal/100 g (gedeeld door 10). Niet vermeld: omega-3, omega-6.'
 where id = '9293b0a9-64ff-41ff-8e25-05e3b85c217f';
delete from public.recipe_nutrition where recipe_version_id = '9293b0a9-64ff-41ff-8e25-05e3b85c217f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9293b0a9-64ff-41ff-8e25-05e3b85c217f', 'protein', 10, 'as-fed'),
  ('9293b0a9-64ff-41ff-8e25-05e3b85c217f', 'fat', 5, 'as-fed'),
  ('9293b0a9-64ff-41ff-8e25-05e3b85c217f', 'fiber', 0.9, 'as-fed'),
  ('9293b0a9-64ff-41ff-8e25-05e3b85c217f', 'ash', 2, 'as-fed'),
  ('9293b0a9-64ff-41ff-8e25-05e3b85c217f', 'moisture', 77, 'as-fed'),
  ('9293b0a9-64ff-41ff-8e25-05e3b85c217f', 'kcal', 95.4, 'as-fed'),
  ('9293b0a9-64ff-41ff-8e25-05e3b85c217f', 'calcium', 0.33, 'as-fed'),
  ('9293b0a9-64ff-41ff-8e25-05e3b85c217f', 'phosphorus', 0.28, 'as-fed');

-- Trovet — Hypoallergenic (Rich in Horse) (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.trovet.com/nl/product/hypoallergenic-horse-hond/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3758 kcal/kg naar kcal/100 g (gedeeld door 10). Niet vermeld: vocht, omega-3, omega-6.'
 where id = '27fffec6-4318-488a-8551-a9bb8fae4b22';
delete from public.recipe_nutrition where recipe_version_id = '27fffec6-4318-488a-8551-a9bb8fae4b22';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('27fffec6-4318-488a-8551-a9bb8fae4b22', 'protein', 24, 'as-fed'),
  ('27fffec6-4318-488a-8551-a9bb8fae4b22', 'fat', 14, 'as-fed'),
  ('27fffec6-4318-488a-8551-a9bb8fae4b22', 'fiber', 2.5, 'as-fed'),
  ('27fffec6-4318-488a-8551-a9bb8fae4b22', 'ash', 7.5, 'as-fed'),
  ('27fffec6-4318-488a-8551-a9bb8fae4b22', 'kcal', 375.8, 'as-fed'),
  ('27fffec6-4318-488a-8551-a9bb8fae4b22', 'calcium', 2.2, 'as-fed'),
  ('27fffec6-4318-488a-8551-a9bb8fae4b22', 'phosphorus', 1.2, 'as-fed');

-- Trovet — Hypoallergenic (Rich in Insect) (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.trovet.com/nl/product/hypoallergenic-insect-hond/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3697 kcal/kg naar kcal/100 g (gedeeld door 10). Niet vermeld: omega-3, omega-6.'
 where id = '2dbbf6d9-030e-40ad-880f-b6a4b9a415d9';
delete from public.recipe_nutrition where recipe_version_id = '2dbbf6d9-030e-40ad-880f-b6a4b9a415d9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2dbbf6d9-030e-40ad-880f-b6a4b9a415d9', 'protein', 21, 'as-fed'),
  ('2dbbf6d9-030e-40ad-880f-b6a4b9a415d9', 'fat', 16, 'as-fed'),
  ('2dbbf6d9-030e-40ad-880f-b6a4b9a415d9', 'fiber', 5, 'as-fed'),
  ('2dbbf6d9-030e-40ad-880f-b6a4b9a415d9', 'ash', 6.4, 'as-fed'),
  ('2dbbf6d9-030e-40ad-880f-b6a4b9a415d9', 'moisture', 8, 'as-fed'),
  ('2dbbf6d9-030e-40ad-880f-b6a4b9a415d9', 'kcal', 369.7, 'as-fed'),
  ('2dbbf6d9-030e-40ad-880f-b6a4b9a415d9', 'calcium', 1.1, 'as-fed'),
  ('2dbbf6d9-030e-40ad-880f-b6a4b9a415d9', 'phosphorus', 0.6, 'as-fed');

-- Trovet — Hypoallergenic (Rich in Rabbit) (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.trovet.com/nl/product/hypoallergenic-rabbit-hond/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3935 kcal/kg naar kcal/100 g (gedeeld door 10). Niet vermeld: omega-3, omega-6.'
 where id = '33b11041-6421-4bab-be0a-6c2956270f94';
delete from public.recipe_nutrition where recipe_version_id = '33b11041-6421-4bab-be0a-6c2956270f94';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('33b11041-6421-4bab-be0a-6c2956270f94', 'protein', 22, 'as-fed'),
  ('33b11041-6421-4bab-be0a-6c2956270f94', 'fat', 18, 'as-fed'),
  ('33b11041-6421-4bab-be0a-6c2956270f94', 'fiber', 3, 'as-fed'),
  ('33b11041-6421-4bab-be0a-6c2956270f94', 'ash', 6.5, 'as-fed'),
  ('33b11041-6421-4bab-be0a-6c2956270f94', 'moisture', 8, 'as-fed'),
  ('33b11041-6421-4bab-be0a-6c2956270f94', 'kcal', 393.5, 'as-fed'),
  ('33b11041-6421-4bab-be0a-6c2956270f94', 'calcium', 1.1, 'as-fed'),
  ('33b11041-6421-4bab-be0a-6c2956270f94', 'phosphorus', 0.9, 'as-fed');

-- Trovet — Hypoallergenic (Rich in Venison) (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.trovet.com/nl/product/hypoallergenic-venison-hond/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3835 kcal/kg naar kcal/100 g (gedeeld door 10). Niet vermeld: omega-3, omega-6.'
 where id = '6026f76f-9653-4ae4-84d8-61d99953df21';
delete from public.recipe_nutrition where recipe_version_id = '6026f76f-9653-4ae4-84d8-61d99953df21';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6026f76f-9653-4ae4-84d8-61d99953df21', 'protein', 19.5, 'as-fed'),
  ('6026f76f-9653-4ae4-84d8-61d99953df21', 'fat', 17, 'as-fed'),
  ('6026f76f-9653-4ae4-84d8-61d99953df21', 'fiber', 3, 'as-fed'),
  ('6026f76f-9653-4ae4-84d8-61d99953df21', 'ash', 7.75, 'as-fed'),
  ('6026f76f-9653-4ae4-84d8-61d99953df21', 'moisture', 8, 'as-fed'),
  ('6026f76f-9653-4ae4-84d8-61d99953df21', 'kcal', 383.5, 'as-fed'),
  ('6026f76f-9653-4ae4-84d8-61d99953df21', 'calcium', 2.4, 'as-fed'),
  ('6026f76f-9653-4ae4-84d8-61d99953df21', 'phosphorus', 1.3, 'as-fed');

-- Trovet — Hypoallergenic (Turkey) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.trovet.com/nl/product/unique-protein-turkey-hond/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 878 kcal/kg naar kcal/100 g (gedeeld door 10). Niet vermeld: omega-3, omega-6.'
 where id = '25771eb4-7715-4d8f-9331-4bbb5753a623';
delete from public.recipe_nutrition where recipe_version_id = '25771eb4-7715-4d8f-9331-4bbb5753a623';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('25771eb4-7715-4d8f-9331-4bbb5753a623', 'protein', 7, 'as-fed'),
  ('25771eb4-7715-4d8f-9331-4bbb5753a623', 'fat', 6, 'as-fed'),
  ('25771eb4-7715-4d8f-9331-4bbb5753a623', 'fiber', 0.5, 'as-fed'),
  ('25771eb4-7715-4d8f-9331-4bbb5753a623', 'ash', 1, 'as-fed'),
  ('25771eb4-7715-4d8f-9331-4bbb5753a623', 'moisture', 82, 'as-fed'),
  ('25771eb4-7715-4d8f-9331-4bbb5753a623', 'kcal', 87.8, 'as-fed'),
  ('25771eb4-7715-4d8f-9331-4bbb5753a623', 'calcium', 0.14, 'as-fed'),
  ('25771eb4-7715-4d8f-9331-4bbb5753a623', 'phosphorus', 0.15, 'as-fed');

-- Trovet — Intestinal (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.trovet.com/nl/product/intestinal-hond/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3878 kcal/kg naar kcal/100 g (gedeeld door 10). Niet vermeld: omega-3, omega-6.'
 where id = 'ece3b422-ca85-4ceb-b626-dae223aaa1bc';
delete from public.recipe_nutrition where recipe_version_id = 'ece3b422-ca85-4ceb-b626-dae223aaa1bc';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ece3b422-ca85-4ceb-b626-dae223aaa1bc', 'protein', 22, 'as-fed'),
  ('ece3b422-ca85-4ceb-b626-dae223aaa1bc', 'fat', 16, 'as-fed'),
  ('ece3b422-ca85-4ceb-b626-dae223aaa1bc', 'fiber', 2.5, 'as-fed'),
  ('ece3b422-ca85-4ceb-b626-dae223aaa1bc', 'ash', 6.5, 'as-fed'),
  ('ece3b422-ca85-4ceb-b626-dae223aaa1bc', 'moisture', 8, 'as-fed'),
  ('ece3b422-ca85-4ceb-b626-dae223aaa1bc', 'kcal', 387.8, 'as-fed'),
  ('ece3b422-ca85-4ceb-b626-dae223aaa1bc', 'calcium', 1.3, 'as-fed'),
  ('ece3b422-ca85-4ceb-b626-dae223aaa1bc', 'phosphorus', 1, 'as-fed');

-- Trovet — Intestinal (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.trovet.com/nl/product/intestinal-hond/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 911 kcal/kg naar kcal/100 g (gedeeld door 10). Niet vermeld: omega-3, omega-6.'
 where id = '18a7d8b6-b873-4381-851b-87a933d13060';
delete from public.recipe_nutrition where recipe_version_id = '18a7d8b6-b873-4381-851b-87a933d13060';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('18a7d8b6-b873-4381-851b-87a933d13060', 'protein', 8.5, 'as-fed'),
  ('18a7d8b6-b873-4381-851b-87a933d13060', 'fat', 6.3, 'as-fed'),
  ('18a7d8b6-b873-4381-851b-87a933d13060', 'fiber', 1, 'as-fed'),
  ('18a7d8b6-b873-4381-851b-87a933d13060', 'ash', 2, 'as-fed'),
  ('18a7d8b6-b873-4381-851b-87a933d13060', 'moisture', 80, 'as-fed'),
  ('18a7d8b6-b873-4381-851b-87a933d13060', 'kcal', 91.1, 'as-fed'),
  ('18a7d8b6-b873-4381-851b-87a933d13060', 'calcium', 0.32, 'as-fed'),
  ('18a7d8b6-b873-4381-851b-87a933d13060', 'phosphorus', 0.21, 'as-fed');

-- Trovet — Mobility & Geriatrics (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.trovet.com/nl/product/mobility-geriatrics-hond/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3790 kcal/kg naar kcal/100 g (gedeeld door 10). Niet vermeld: omega-6.'
 where id = '65ef22ee-d7af-4432-924b-fa761dc7ad9c';
delete from public.recipe_nutrition where recipe_version_id = '65ef22ee-d7af-4432-924b-fa761dc7ad9c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('65ef22ee-d7af-4432-924b-fa761dc7ad9c', 'protein', 19, 'as-fed'),
  ('65ef22ee-d7af-4432-924b-fa761dc7ad9c', 'fat', 15.5, 'as-fed'),
  ('65ef22ee-d7af-4432-924b-fa761dc7ad9c', 'fiber', 4, 'as-fed'),
  ('65ef22ee-d7af-4432-924b-fa761dc7ad9c', 'ash', 5, 'as-fed'),
  ('65ef22ee-d7af-4432-924b-fa761dc7ad9c', 'moisture', 8, 'as-fed'),
  ('65ef22ee-d7af-4432-924b-fa761dc7ad9c', 'kcal', 379, 'as-fed'),
  ('65ef22ee-d7af-4432-924b-fa761dc7ad9c', 'calcium', 0.65, 'as-fed'),
  ('65ef22ee-d7af-4432-924b-fa761dc7ad9c', 'phosphorus', 0.55, 'as-fed'),
  ('65ef22ee-d7af-4432-924b-fa761dc7ad9c', 'omega3', 3.3, 'as-fed');

-- Trovet — Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.trovet.com/nl/product/puppy-hond/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3708 kcal/kg naar kcal/100 g (gedeeld door 10). Niet vermeld: omega-3, omega-6.'
 where id = '0a450d6c-af12-4152-99e3-7683e4660269';
delete from public.recipe_nutrition where recipe_version_id = '0a450d6c-af12-4152-99e3-7683e4660269';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0a450d6c-af12-4152-99e3-7683e4660269', 'protein', 28, 'as-fed'),
  ('0a450d6c-af12-4152-99e3-7683e4660269', 'fat', 16, 'as-fed'),
  ('0a450d6c-af12-4152-99e3-7683e4660269', 'fiber', 4, 'as-fed'),
  ('0a450d6c-af12-4152-99e3-7683e4660269', 'ash', 5, 'as-fed'),
  ('0a450d6c-af12-4152-99e3-7683e4660269', 'moisture', 8, 'as-fed'),
  ('0a450d6c-af12-4152-99e3-7683e4660269', 'kcal', 370.8, 'as-fed'),
  ('0a450d6c-af12-4152-99e3-7683e4660269', 'calcium', 0.8, 'as-fed'),
  ('0a450d6c-af12-4152-99e3-7683e4660269', 'phosphorus', 0.65, 'as-fed');

-- Trovet — Puppy (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.trovet.com/nl/product/puppy-hond/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 879 kcal/kg naar kcal/100 g (gedeeld door 10). Niet vermeld: omega-3, omega-6.'
 where id = '9db3ad3c-473b-4832-814e-3832a20d5316';
delete from public.recipe_nutrition where recipe_version_id = '9db3ad3c-473b-4832-814e-3832a20d5316';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9db3ad3c-473b-4832-814e-3832a20d5316', 'protein', 11.5, 'as-fed'),
  ('9db3ad3c-473b-4832-814e-3832a20d5316', 'fat', 5.6, 'as-fed'),
  ('9db3ad3c-473b-4832-814e-3832a20d5316', 'fiber', 0.3, 'as-fed'),
  ('9db3ad3c-473b-4832-814e-3832a20d5316', 'ash', 2.9, 'as-fed'),
  ('9db3ad3c-473b-4832-814e-3832a20d5316', 'moisture', 79.7, 'as-fed'),
  ('9db3ad3c-473b-4832-814e-3832a20d5316', 'kcal', 87.9, 'as-fed'),
  ('9db3ad3c-473b-4832-814e-3832a20d5316', 'calcium', 0.3, 'as-fed'),
  ('9db3ad3c-473b-4832-814e-3832a20d5316', 'phosphorus', 0.25, 'as-fed');

-- Trovet — Recovery Liquid (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.trovet.com/nl/product/recovery-liquid-hond/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 694 kcal/kg naar kcal/100 g (gedeeld door 10). Niet vermeld: omega-6.'
 where id = 'beca335e-d85e-4f4e-9c04-9efaaa2765ec';
delete from public.recipe_nutrition where recipe_version_id = 'beca335e-d85e-4f4e-9c04-9efaaa2765ec';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('beca335e-d85e-4f4e-9c04-9efaaa2765ec', 'protein', 5, 'as-fed'),
  ('beca335e-d85e-4f4e-9c04-9efaaa2765ec', 'fat', 5, 'as-fed'),
  ('beca335e-d85e-4f4e-9c04-9efaaa2765ec', 'fiber', 0.3, 'as-fed'),
  ('beca335e-d85e-4f4e-9c04-9efaaa2765ec', 'ash', 1.6, 'as-fed'),
  ('beca335e-d85e-4f4e-9c04-9efaaa2765ec', 'moisture', 87, 'as-fed'),
  ('beca335e-d85e-4f4e-9c04-9efaaa2765ec', 'kcal', 69.4, 'as-fed'),
  ('beca335e-d85e-4f4e-9c04-9efaaa2765ec', 'calcium', 0.18, 'as-fed'),
  ('beca335e-d85e-4f4e-9c04-9efaaa2765ec', 'phosphorus', 0.15, 'as-fed'),
  ('beca335e-d85e-4f4e-9c04-9efaaa2765ec', 'omega3', 0.22, 'as-fed');

-- Trovet — Regulator (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.trovet.com/nl/product/regulator-hond/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3782 kcal/kg naar kcal/100 g (gedeeld door 10). Omega-3 staat op de pagina in mg/kg (8820 mg/kg) en is niet naar een percentage omgerekend, daarom null. Niet vermeld: omega-6.'
 where id = 'b157ea02-9c63-42c3-b469-863c57357e24';
delete from public.recipe_nutrition where recipe_version_id = 'b157ea02-9c63-42c3-b469-863c57357e24';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b157ea02-9c63-42c3-b469-863c57357e24', 'protein', 22, 'as-fed'),
  ('b157ea02-9c63-42c3-b469-863c57357e24', 'fat', 15, 'as-fed'),
  ('b157ea02-9c63-42c3-b469-863c57357e24', 'fiber', 3.5, 'as-fed'),
  ('b157ea02-9c63-42c3-b469-863c57357e24', 'ash', 5.9, 'as-fed'),
  ('b157ea02-9c63-42c3-b469-863c57357e24', 'moisture', 8, 'as-fed'),
  ('b157ea02-9c63-42c3-b469-863c57357e24', 'kcal', 378.2, 'as-fed'),
  ('b157ea02-9c63-42c3-b469-863c57357e24', 'calcium', 0.8, 'as-fed'),
  ('b157ea02-9c63-42c3-b469-863c57357e24', 'phosphorus', 0.65, 'as-fed');

-- Trovet — Renal & Oxalate (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.trovet.com/nl/product/renal-oxalate-hond/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 4032 kcal/kg naar kcal/100 g (gedeeld door 10). Bij ''Omega 3 vetzuren'' ontbreekt op de pagina de waarde, daarom omega-3 null. Niet vermeld: omega-6.'
 where id = 'c6e484f5-cd99-4c79-981f-16d454032465';
delete from public.recipe_nutrition where recipe_version_id = 'c6e484f5-cd99-4c79-981f-16d454032465';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c6e484f5-cd99-4c79-981f-16d454032465', 'protein', 15, 'as-fed'),
  ('c6e484f5-cd99-4c79-981f-16d454032465', 'fat', 17.7, 'as-fed'),
  ('c6e484f5-cd99-4c79-981f-16d454032465', 'fiber', 2, 'as-fed'),
  ('c6e484f5-cd99-4c79-981f-16d454032465', 'ash', 4.5, 'as-fed'),
  ('c6e484f5-cd99-4c79-981f-16d454032465', 'moisture', 8, 'as-fed'),
  ('c6e484f5-cd99-4c79-981f-16d454032465', 'kcal', 403.2, 'as-fed'),
  ('c6e484f5-cd99-4c79-981f-16d454032465', 'calcium', 0.8, 'as-fed'),
  ('c6e484f5-cd99-4c79-981f-16d454032465', 'phosphorus', 0.4, 'as-fed');

-- Trovet — Renal & Oxalate (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.trovet.com/nl/product/renal-oxalate-hond/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 1169 kcal/kg naar kcal/100 g (gedeeld door 10). Niet vermeld: omega-3, omega-6.'
 where id = '69c547f9-07eb-4890-87bc-377344d441e5';
delete from public.recipe_nutrition where recipe_version_id = '69c547f9-07eb-4890-87bc-377344d441e5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('69c547f9-07eb-4890-87bc-377344d441e5', 'protein', 6.5, 'as-fed'),
  ('69c547f9-07eb-4890-87bc-377344d441e5', 'fat', 6.5, 'as-fed'),
  ('69c547f9-07eb-4890-87bc-377344d441e5', 'fiber', 0.9, 'as-fed'),
  ('69c547f9-07eb-4890-87bc-377344d441e5', 'ash', 1, 'as-fed'),
  ('69c547f9-07eb-4890-87bc-377344d441e5', 'moisture', 74, 'as-fed'),
  ('69c547f9-07eb-4890-87bc-377344d441e5', 'kcal', 116.9, 'as-fed'),
  ('69c547f9-07eb-4890-87bc-377344d441e5', 'calcium', 0.2, 'as-fed'),
  ('69c547f9-07eb-4890-87bc-377344d441e5', 'phosphorus', 0.12, 'as-fed');

-- Trovet — Unique Protein (Horse) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.trovet.com/nl/product/unique-protein-horse-hond/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 831 kcal/kg naar kcal/100 g (gedeeld door 10). Niet vermeld: omega-3, omega-6.'
 where id = '8ce943eb-6be3-45e6-bdca-692f4ee4261a';
delete from public.recipe_nutrition where recipe_version_id = '8ce943eb-6be3-45e6-bdca-692f4ee4261a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8ce943eb-6be3-45e6-bdca-692f4ee4261a', 'protein', 8.5, 'as-fed'),
  ('8ce943eb-6be3-45e6-bdca-692f4ee4261a', 'fat', 5, 'as-fed'),
  ('8ce943eb-6be3-45e6-bdca-692f4ee4261a', 'fiber', 0.5, 'as-fed'),
  ('8ce943eb-6be3-45e6-bdca-692f4ee4261a', 'ash', 0.9, 'as-fed'),
  ('8ce943eb-6be3-45e6-bdca-692f4ee4261a', 'moisture', 82, 'as-fed'),
  ('8ce943eb-6be3-45e6-bdca-692f4ee4261a', 'kcal', 83.1, 'as-fed'),
  ('8ce943eb-6be3-45e6-bdca-692f4ee4261a', 'calcium', 0.07, 'as-fed'),
  ('8ce943eb-6be3-45e6-bdca-692f4ee4261a', 'phosphorus', 0.12, 'as-fed');

-- Trovet — Unique Protein (Lamb) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.trovet.com/nl/product/unique-protein-lamb-hond/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 828 kcal/kg naar kcal/100 g (gedeeld door 10). Niet vermeld: omega-3, omega-6.'
 where id = '6dccd8d1-38ab-43fd-af65-86e12a1266c3';
delete from public.recipe_nutrition where recipe_version_id = '6dccd8d1-38ab-43fd-af65-86e12a1266c3';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6dccd8d1-38ab-43fd-af65-86e12a1266c3', 'protein', 8.5, 'as-fed'),
  ('6dccd8d1-38ab-43fd-af65-86e12a1266c3', 'fat', 5, 'as-fed'),
  ('6dccd8d1-38ab-43fd-af65-86e12a1266c3', 'fiber', 0.5, 'as-fed'),
  ('6dccd8d1-38ab-43fd-af65-86e12a1266c3', 'ash', 1, 'as-fed'),
  ('6dccd8d1-38ab-43fd-af65-86e12a1266c3', 'moisture', 82, 'as-fed'),
  ('6dccd8d1-38ab-43fd-af65-86e12a1266c3', 'kcal', 82.8, 'as-fed'),
  ('6dccd8d1-38ab-43fd-af65-86e12a1266c3', 'calcium', 0.09, 'as-fed'),
  ('6dccd8d1-38ab-43fd-af65-86e12a1266c3', 'phosphorus', 0.11, 'as-fed');

-- Trovet — Unique Protein (Rabbit) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.trovet.com/nl/product/unique-protein-rabbit-hond/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 796 kcal/kg naar kcal/100 g (gedeeld door 10). Niet vermeld: omega-3, omega-6.'
 where id = '82aeb936-2795-4999-8420-8fadfeb7e6bc';
delete from public.recipe_nutrition where recipe_version_id = '82aeb936-2795-4999-8420-8fadfeb7e6bc';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('82aeb936-2795-4999-8420-8fadfeb7e6bc', 'protein', 5.5, 'as-fed'),
  ('82aeb936-2795-4999-8420-8fadfeb7e6bc', 'fat', 5, 'as-fed'),
  ('82aeb936-2795-4999-8420-8fadfeb7e6bc', 'fiber', 0.5, 'as-fed'),
  ('82aeb936-2795-4999-8420-8fadfeb7e6bc', 'ash', 0.9, 'as-fed'),
  ('82aeb936-2795-4999-8420-8fadfeb7e6bc', 'moisture', 83, 'as-fed'),
  ('82aeb936-2795-4999-8420-8fadfeb7e6bc', 'kcal', 79.6, 'as-fed'),
  ('82aeb936-2795-4999-8420-8fadfeb7e6bc', 'calcium', 0.11, 'as-fed'),
  ('82aeb936-2795-4999-8420-8fadfeb7e6bc', 'phosphorus', 0.11, 'as-fed');

-- Trovet — Unique Protein (Venison) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.trovet.com/nl/product/unique-protein-venison-hond/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 771 kcal/kg naar kcal/100 g (gedeeld door 10). Niet vermeld: omega-3, omega-6.'
 where id = '266406ef-643d-4701-adf5-22a395b682e4';
delete from public.recipe_nutrition where recipe_version_id = '266406ef-643d-4701-adf5-22a395b682e4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('266406ef-643d-4701-adf5-22a395b682e4', 'protein', 7, 'as-fed'),
  ('266406ef-643d-4701-adf5-22a395b682e4', 'fat', 4.5, 'as-fed'),
  ('266406ef-643d-4701-adf5-22a395b682e4', 'fiber', 0.5, 'as-fed'),
  ('266406ef-643d-4701-adf5-22a395b682e4', 'ash', 0.9, 'as-fed'),
  ('266406ef-643d-4701-adf5-22a395b682e4', 'moisture', 83, 'as-fed'),
  ('266406ef-643d-4701-adf5-22a395b682e4', 'kcal', 77.1, 'as-fed'),
  ('266406ef-643d-4701-adf5-22a395b682e4', 'calcium', 0.07, 'as-fed'),
  ('266406ef-643d-4701-adf5-22a395b682e4', 'phosphorus', 0.1, 'as-fed');

-- Trovet — Urinary Struvite (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.trovet.com/nl/product/urinary-struvite-hond/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3861 kcal/kg naar kcal/100 g (gedeeld door 10). Niet vermeld: omega-3, omega-6.'
 where id = '7729459c-baac-48fc-a1bd-fba275ff1413';
delete from public.recipe_nutrition where recipe_version_id = '7729459c-baac-48fc-a1bd-fba275ff1413';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7729459c-baac-48fc-a1bd-fba275ff1413', 'protein', 23.5, 'as-fed'),
  ('7729459c-baac-48fc-a1bd-fba275ff1413', 'fat', 18.5, 'as-fed'),
  ('7729459c-baac-48fc-a1bd-fba275ff1413', 'fiber', 1.7, 'as-fed'),
  ('7729459c-baac-48fc-a1bd-fba275ff1413', 'ash', 6.5, 'as-fed'),
  ('7729459c-baac-48fc-a1bd-fba275ff1413', 'moisture', 8, 'as-fed'),
  ('7729459c-baac-48fc-a1bd-fba275ff1413', 'kcal', 386.1, 'as-fed'),
  ('7729459c-baac-48fc-a1bd-fba275ff1413', 'calcium', 0.9, 'as-fed'),
  ('7729459c-baac-48fc-a1bd-fba275ff1413', 'phosphorus', 0.5, 'as-fed');

-- Trovet — Urinary Struvite (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.trovet.com/nl/product/urinary-struvite-hond/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 1085 kcal/kg naar kcal/100 g (gedeeld door 10). Niet vermeld: omega-3, omega-6.'
 where id = '86f39cc3-6e1d-4519-8b00-510a4d0d7685';
delete from public.recipe_nutrition where recipe_version_id = '86f39cc3-6e1d-4519-8b00-510a4d0d7685';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('86f39cc3-6e1d-4519-8b00-510a4d0d7685', 'protein', 7, 'as-fed'),
  ('86f39cc3-6e1d-4519-8b00-510a4d0d7685', 'fat', 6.5, 'as-fed'),
  ('86f39cc3-6e1d-4519-8b00-510a4d0d7685', 'fiber', 0.8, 'as-fed'),
  ('86f39cc3-6e1d-4519-8b00-510a4d0d7685', 'ash', 1.5, 'as-fed'),
  ('86f39cc3-6e1d-4519-8b00-510a4d0d7685', 'moisture', 76, 'as-fed'),
  ('86f39cc3-6e1d-4519-8b00-510a4d0d7685', 'kcal', 108.5, 'as-fed'),
  ('86f39cc3-6e1d-4519-8b00-510a4d0d7685', 'calcium', 0.25, 'as-fed'),
  ('86f39cc3-6e1d-4519-8b00-510a4d0d7685', 'phosphorus', 0.2, 'as-fed');

-- Trovet — Weight & Diabetic (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.trovet.com/nl/product/weight-diabetic-hond/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 3048 kcal/kg naar kcal/100 g (gedeeld door 10). Niet vermeld: omega-3, omega-6.'
 where id = 'd168c442-3606-4452-925c-689c2b8c90c1';
delete from public.recipe_nutrition where recipe_version_id = 'd168c442-3606-4452-925c-689c2b8c90c1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d168c442-3606-4452-925c-689c2b8c90c1', 'protein', 32, 'as-fed'),
  ('d168c442-3606-4452-925c-689c2b8c90c1', 'fat', 6, 'as-fed'),
  ('d168c442-3606-4452-925c-689c2b8c90c1', 'fiber', 8.5, 'as-fed'),
  ('d168c442-3606-4452-925c-689c2b8c90c1', 'ash', 6.5, 'as-fed'),
  ('d168c442-3606-4452-925c-689c2b8c90c1', 'moisture', 8, 'as-fed'),
  ('d168c442-3606-4452-925c-689c2b8c90c1', 'kcal', 304.8, 'as-fed'),
  ('d168c442-3606-4452-925c-689c2b8c90c1', 'calcium', 1.2, 'as-fed'),
  ('d168c442-3606-4452-925c-689c2b8c90c1', 'phosphorus', 0.8, 'as-fed');

-- Trovet — Weight & Diabetic (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.trovet.com/nl/product/weight-diabetic-hond/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal omgerekend van 648 kcal/kg naar kcal/100 g (gedeeld door 10). Niet vermeld: omega-3, omega-6.'
 where id = '1c3fc7d6-1fce-48da-9e21-68d5c7c6a85d';
delete from public.recipe_nutrition where recipe_version_id = '1c3fc7d6-1fce-48da-9e21-68d5c7c6a85d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1c3fc7d6-1fce-48da-9e21-68d5c7c6a85d', 'protein', 7.5, 'as-fed'),
  ('1c3fc7d6-1fce-48da-9e21-68d5c7c6a85d', 'fat', 2.6, 'as-fed'),
  ('1c3fc7d6-1fce-48da-9e21-68d5c7c6a85d', 'fiber', 1.7, 'as-fed'),
  ('1c3fc7d6-1fce-48da-9e21-68d5c7c6a85d', 'ash', 2, 'as-fed'),
  ('1c3fc7d6-1fce-48da-9e21-68d5c7c6a85d', 'moisture', 81.5, 'as-fed'),
  ('1c3fc7d6-1fce-48da-9e21-68d5c7c6a85d', 'kcal', 64.8, 'as-fed'),
  ('1c3fc7d6-1fce-48da-9e21-68d5c7c6a85d', 'calcium', 0.35, 'as-fed'),
  ('1c3fc7d6-1fce-48da-9e21-68d5c7c6a85d', 'phosphorus', 0.28, 'as-fed');

-- Smølke — Green Goodness Wild (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.smolke.nl/green-goodness-wild/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De fabrikant vermeldt op deze pagina geen energie, daarom kcal null. Niet vermeld: energie, calcium, fosfor, omega-3, omega-6.'
 where id = '729e0335-17bb-4aec-8325-be6753dc6e75';
delete from public.recipe_nutrition where recipe_version_id = '729e0335-17bb-4aec-8325-be6753dc6e75';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('729e0335-17bb-4aec-8325-be6753dc6e75', 'protein', 9.8, 'as-fed'),
  ('729e0335-17bb-4aec-8325-be6753dc6e75', 'fat', 7, 'as-fed'),
  ('729e0335-17bb-4aec-8325-be6753dc6e75', 'fiber', 0.8, 'as-fed'),
  ('729e0335-17bb-4aec-8325-be6753dc6e75', 'ash', 3, 'as-fed'),
  ('729e0335-17bb-4aec-8325-be6753dc6e75', 'moisture', 76, 'as-fed');

-- Smølke — Hond Adult Graanvrij (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.smolke.nl/hondenvoer/hondenbrokken/graanvrij/VE6627/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal staat op de pagina al per 100 g en is ongewijzigd overgenomen. Niet vermeld: vocht.'
 where id = '215c4568-acf2-4585-b7eb-15393cf90025';
delete from public.recipe_nutrition where recipe_version_id = '215c4568-acf2-4585-b7eb-15393cf90025';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('215c4568-acf2-4585-b7eb-15393cf90025', 'protein', 31, 'as-fed'),
  ('215c4568-acf2-4585-b7eb-15393cf90025', 'fat', 15, 'as-fed'),
  ('215c4568-acf2-4585-b7eb-15393cf90025', 'fiber', 4, 'as-fed'),
  ('215c4568-acf2-4585-b7eb-15393cf90025', 'ash', 7.5, 'as-fed'),
  ('215c4568-acf2-4585-b7eb-15393cf90025', 'kcal', 372, 'as-fed'),
  ('215c4568-acf2-4585-b7eb-15393cf90025', 'calcium', 1.5, 'as-fed'),
  ('215c4568-acf2-4585-b7eb-15393cf90025', 'phosphorus', 1, 'as-fed'),
  ('215c4568-acf2-4585-b7eb-15393cf90025', 'omega3', 0.9, 'as-fed'),
  ('215c4568-acf2-4585-b7eb-15393cf90025', 'omega6', 2.3, 'as-fed');

-- Smølke — Hond Adult Maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.smolke.nl/hondenvoer/hondenbrokken/adult-maxi/VE6625/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal staat op de pagina al per 100 g en is ongewijzigd overgenomen. Niet vermeld: vocht.'
 where id = 'f287e68d-0f8e-445b-9175-21f6c9f33f84';
delete from public.recipe_nutrition where recipe_version_id = 'f287e68d-0f8e-445b-9175-21f6c9f33f84';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f287e68d-0f8e-445b-9175-21f6c9f33f84', 'protein', 23, 'as-fed'),
  ('f287e68d-0f8e-445b-9175-21f6c9f33f84', 'fat', 12, 'as-fed'),
  ('f287e68d-0f8e-445b-9175-21f6c9f33f84', 'fiber', 3.5, 'as-fed'),
  ('f287e68d-0f8e-445b-9175-21f6c9f33f84', 'ash', 6, 'as-fed'),
  ('f287e68d-0f8e-445b-9175-21f6c9f33f84', 'kcal', 365, 'as-fed'),
  ('f287e68d-0f8e-445b-9175-21f6c9f33f84', 'calcium', 1.2, 'as-fed'),
  ('f287e68d-0f8e-445b-9175-21f6c9f33f84', 'phosphorus', 0.9, 'as-fed'),
  ('f287e68d-0f8e-445b-9175-21f6c9f33f84', 'omega3', 0.5, 'as-fed'),
  ('f287e68d-0f8e-445b-9175-21f6c9f33f84', 'omega6', 2.1, 'as-fed');

-- Smølke — Hond Adult Medium (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.smolke.nl/hondenvoer/hondenbrokken/adult-medium/VE6623/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal staat op de pagina al per 100 g en is ongewijzigd overgenomen. Niet vermeld: vocht.'
 where id = 'bceffdca-5533-40f2-a226-692edc83cf62';
delete from public.recipe_nutrition where recipe_version_id = 'bceffdca-5533-40f2-a226-692edc83cf62';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('bceffdca-5533-40f2-a226-692edc83cf62', 'protein', 24, 'as-fed'),
  ('bceffdca-5533-40f2-a226-692edc83cf62', 'fat', 13, 'as-fed'),
  ('bceffdca-5533-40f2-a226-692edc83cf62', 'fiber', 4, 'as-fed'),
  ('bceffdca-5533-40f2-a226-692edc83cf62', 'ash', 6, 'as-fed'),
  ('bceffdca-5533-40f2-a226-692edc83cf62', 'kcal', 365, 'as-fed'),
  ('bceffdca-5533-40f2-a226-692edc83cf62', 'calcium', 1.3, 'as-fed'),
  ('bceffdca-5533-40f2-a226-692edc83cf62', 'phosphorus', 0.9, 'as-fed'),
  ('bceffdca-5533-40f2-a226-692edc83cf62', 'omega3', 0.6, 'as-fed'),
  ('bceffdca-5533-40f2-a226-692edc83cf62', 'omega6', 2.2, 'as-fed');

-- Smølke — Hond Adult Mini (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.smolke.nl/hondenvoer/hondenbrokken/adult-mini/VE6621/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal staat op de pagina al per 100 g en is ongewijzigd overgenomen. Omega-6 staat op de pagina zonder %-teken (2,16) in de tabel met analytische bestanddelen; als percentage overgenomen. Niet vermeld: vocht.'
 where id = 'ce46c63d-2943-4203-8362-f1fbc144b9e2';
delete from public.recipe_nutrition where recipe_version_id = 'ce46c63d-2943-4203-8362-f1fbc144b9e2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ce46c63d-2943-4203-8362-f1fbc144b9e2', 'protein', 25, 'as-fed'),
  ('ce46c63d-2943-4203-8362-f1fbc144b9e2', 'fat', 15, 'as-fed'),
  ('ce46c63d-2943-4203-8362-f1fbc144b9e2', 'fiber', 3.5, 'as-fed'),
  ('ce46c63d-2943-4203-8362-f1fbc144b9e2', 'ash', 6.5, 'as-fed'),
  ('ce46c63d-2943-4203-8362-f1fbc144b9e2', 'kcal', 373, 'as-fed'),
  ('ce46c63d-2943-4203-8362-f1fbc144b9e2', 'calcium', 1.4, 'as-fed'),
  ('ce46c63d-2943-4203-8362-f1fbc144b9e2', 'phosphorus', 0.9, 'as-fed'),
  ('ce46c63d-2943-4203-8362-f1fbc144b9e2', 'omega3', 0.9, 'as-fed'),
  ('ce46c63d-2943-4203-8362-f1fbc144b9e2', 'omega6', 2.16, 'as-fed');

-- Smølke — Hond Senior Maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.smolke.nl/hondenvoer/hondenbrokken/senior-maxi/VE6645/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal staat op de pagina al per 100 g en is ongewijzigd overgenomen. Niet vermeld: vocht.'
 where id = 'ccdd737c-1aef-4125-bee2-e764b9209136';
delete from public.recipe_nutrition where recipe_version_id = 'ccdd737c-1aef-4125-bee2-e764b9209136';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ccdd737c-1aef-4125-bee2-e764b9209136', 'protein', 24, 'as-fed'),
  ('ccdd737c-1aef-4125-bee2-e764b9209136', 'fat', 11, 'as-fed'),
  ('ccdd737c-1aef-4125-bee2-e764b9209136', 'fiber', 5, 'as-fed'),
  ('ccdd737c-1aef-4125-bee2-e764b9209136', 'ash', 6, 'as-fed'),
  ('ccdd737c-1aef-4125-bee2-e764b9209136', 'kcal', 350, 'as-fed'),
  ('ccdd737c-1aef-4125-bee2-e764b9209136', 'calcium', 1.3, 'as-fed'),
  ('ccdd737c-1aef-4125-bee2-e764b9209136', 'phosphorus', 0.9, 'as-fed'),
  ('ccdd737c-1aef-4125-bee2-e764b9209136', 'omega3', 0.7, 'as-fed'),
  ('ccdd737c-1aef-4125-bee2-e764b9209136', 'omega6', 1.9, 'as-fed');

-- Smølke — Hond Senior Medium (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.smolke.nl/hondenvoer/hondenbrokken/senior-medium/VE6643/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal staat op de pagina al per 100 g en is ongewijzigd overgenomen. Niet vermeld: vocht.'
 where id = 'ab8b8ef8-a254-4f29-bb19-deec2e8810ac';
delete from public.recipe_nutrition where recipe_version_id = 'ab8b8ef8-a254-4f29-bb19-deec2e8810ac';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ab8b8ef8-a254-4f29-bb19-deec2e8810ac', 'protein', 25, 'as-fed'),
  ('ab8b8ef8-a254-4f29-bb19-deec2e8810ac', 'fat', 12, 'as-fed'),
  ('ab8b8ef8-a254-4f29-bb19-deec2e8810ac', 'fiber', 5, 'as-fed'),
  ('ab8b8ef8-a254-4f29-bb19-deec2e8810ac', 'ash', 6.5, 'as-fed'),
  ('ab8b8ef8-a254-4f29-bb19-deec2e8810ac', 'kcal', 350, 'as-fed'),
  ('ab8b8ef8-a254-4f29-bb19-deec2e8810ac', 'calcium', 1.4, 'as-fed'),
  ('ab8b8ef8-a254-4f29-bb19-deec2e8810ac', 'phosphorus', 1, 'as-fed'),
  ('ab8b8ef8-a254-4f29-bb19-deec2e8810ac', 'omega3', 0.7, 'as-fed'),
  ('ab8b8ef8-a254-4f29-bb19-deec2e8810ac', 'omega6', 2.1, 'as-fed');

-- Smølke — Hond Senior Mini (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.smolke.nl/hondenvoer/hondenbrokken/senior-mini/VE6641/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal staat op de pagina al per 100 g en is ongewijzigd overgenomen. Niet vermeld: vocht.'
 where id = '32413e16-341f-4ef3-8ef1-dff4de068ed8';
delete from public.recipe_nutrition where recipe_version_id = '32413e16-341f-4ef3-8ef1-dff4de068ed8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('32413e16-341f-4ef3-8ef1-dff4de068ed8', 'protein', 26, 'as-fed'),
  ('32413e16-341f-4ef3-8ef1-dff4de068ed8', 'fat', 13, 'as-fed'),
  ('32413e16-341f-4ef3-8ef1-dff4de068ed8', 'fiber', 5, 'as-fed'),
  ('32413e16-341f-4ef3-8ef1-dff4de068ed8', 'ash', 6.5, 'as-fed'),
  ('32413e16-341f-4ef3-8ef1-dff4de068ed8', 'kcal', 358, 'as-fed'),
  ('32413e16-341f-4ef3-8ef1-dff4de068ed8', 'calcium', 1.4, 'as-fed'),
  ('32413e16-341f-4ef3-8ef1-dff4de068ed8', 'phosphorus', 1, 'as-fed'),
  ('32413e16-341f-4ef3-8ef1-dff4de068ed8', 'omega3', 0.8, 'as-fed'),
  ('32413e16-341f-4ef3-8ef1-dff4de068ed8', 'omega6', 2.2, 'as-fed');

-- Smølke — Hond Sensitive Eend (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.smolke.nl/hondenvoer/hondenbrokken/sensitive-eend/VE6664/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal staat op de pagina al per 100 g en is ongewijzigd overgenomen. Niet vermeld: vocht.'
 where id = '3751b58f-b1c4-4660-b337-268ce019f424';
delete from public.recipe_nutrition where recipe_version_id = '3751b58f-b1c4-4660-b337-268ce019f424';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3751b58f-b1c4-4660-b337-268ce019f424', 'protein', 25, 'as-fed'),
  ('3751b58f-b1c4-4660-b337-268ce019f424', 'fat', 13, 'as-fed'),
  ('3751b58f-b1c4-4660-b337-268ce019f424', 'fiber', 3.5, 'as-fed'),
  ('3751b58f-b1c4-4660-b337-268ce019f424', 'ash', 7, 'as-fed'),
  ('3751b58f-b1c4-4660-b337-268ce019f424', 'kcal', 362, 'as-fed'),
  ('3751b58f-b1c4-4660-b337-268ce019f424', 'calcium', 1.5, 'as-fed'),
  ('3751b58f-b1c4-4660-b337-268ce019f424', 'phosphorus', 1, 'as-fed'),
  ('3751b58f-b1c4-4660-b337-268ce019f424', 'omega3', 0.8, 'as-fed'),
  ('3751b58f-b1c4-4660-b337-268ce019f424', 'omega6', 1.8, 'as-fed');

-- Smølke — Hond Sensitive Lam (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.smolke.nl/hondenvoer/hondenbrokken/sensitive-lam/VE6662/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal staat op de pagina al per 100 g en is ongewijzigd overgenomen. Niet vermeld: vocht.'
 where id = '743744b8-cfce-472a-9c5b-359327e1b238';
delete from public.recipe_nutrition where recipe_version_id = '743744b8-cfce-472a-9c5b-359327e1b238';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('743744b8-cfce-472a-9c5b-359327e1b238', 'protein', 24, 'as-fed'),
  ('743744b8-cfce-472a-9c5b-359327e1b238', 'fat', 13, 'as-fed'),
  ('743744b8-cfce-472a-9c5b-359327e1b238', 'fiber', 3.5, 'as-fed'),
  ('743744b8-cfce-472a-9c5b-359327e1b238', 'ash', 8, 'as-fed'),
  ('743744b8-cfce-472a-9c5b-359327e1b238', 'kcal', 366, 'as-fed'),
  ('743744b8-cfce-472a-9c5b-359327e1b238', 'calcium', 2.1, 'as-fed'),
  ('743744b8-cfce-472a-9c5b-359327e1b238', 'phosphorus', 1.3, 'as-fed'),
  ('743744b8-cfce-472a-9c5b-359327e1b238', 'omega3', 0.8, 'as-fed'),
  ('743744b8-cfce-472a-9c5b-359327e1b238', 'omega6', 1.5, 'as-fed');

-- Smølke — Hond Weight Control (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.smolke.nl/hondenvoer/hondenbrokken/weight-control/VE6660/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal staat op de pagina al per 100 g en is ongewijzigd overgenomen. Niet vermeld: vocht.'
 where id = 'e484ead2-aa40-49fd-a918-4d7d3450f1f9';
delete from public.recipe_nutrition where recipe_version_id = 'e484ead2-aa40-49fd-a918-4d7d3450f1f9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e484ead2-aa40-49fd-a918-4d7d3450f1f9', 'protein', 24, 'as-fed'),
  ('e484ead2-aa40-49fd-a918-4d7d3450f1f9', 'fat', 10, 'as-fed'),
  ('e484ead2-aa40-49fd-a918-4d7d3450f1f9', 'fiber', 6.5, 'as-fed'),
  ('e484ead2-aa40-49fd-a918-4d7d3450f1f9', 'ash', 6, 'as-fed'),
  ('e484ead2-aa40-49fd-a918-4d7d3450f1f9', 'kcal', 362, 'as-fed'),
  ('e484ead2-aa40-49fd-a918-4d7d3450f1f9', 'calcium', 1.5, 'as-fed'),
  ('e484ead2-aa40-49fd-a918-4d7d3450f1f9', 'phosphorus', 1, 'as-fed'),
  ('e484ead2-aa40-49fd-a918-4d7d3450f1f9', 'omega3', 0.6, 'as-fed'),
  ('e484ead2-aa40-49fd-a918-4d7d3450f1f9', 'omega6', 1.7, 'as-fed');

-- Smølke — Orange Goodness Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.smolke.nl/orange-goodness-chicken/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De fabrikant vermeldt op deze pagina geen energie, daarom kcal null. Niet vermeld: energie, calcium, fosfor, omega-3, omega-6.'
 where id = '6150501f-5544-47da-9ecb-590fbfbe1f25';
delete from public.recipe_nutrition where recipe_version_id = '6150501f-5544-47da-9ecb-590fbfbe1f25';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6150501f-5544-47da-9ecb-590fbfbe1f25', 'protein', 9.7, 'as-fed'),
  ('6150501f-5544-47da-9ecb-590fbfbe1f25', 'fat', 5.2, 'as-fed'),
  ('6150501f-5544-47da-9ecb-590fbfbe1f25', 'fiber', 0.7, 'as-fed'),
  ('6150501f-5544-47da-9ecb-590fbfbe1f25', 'ash', 2.5, 'as-fed'),
  ('6150501f-5544-47da-9ecb-590fbfbe1f25', 'moisture', 79, 'as-fed');

-- Smølke — Puppy Maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.smolke.nl/hondenvoer/hondenbrokken/puppy-maxi/VE6603/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal staat op de pagina al per 100 g en is ongewijzigd overgenomen. Niet vermeld: vocht.'
 where id = '7a91e766-312d-4bc5-8bca-cb5b9b31f91d';
delete from public.recipe_nutrition where recipe_version_id = '7a91e766-312d-4bc5-8bca-cb5b9b31f91d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7a91e766-312d-4bc5-8bca-cb5b9b31f91d', 'protein', 26, 'as-fed'),
  ('7a91e766-312d-4bc5-8bca-cb5b9b31f91d', 'fat', 15, 'as-fed'),
  ('7a91e766-312d-4bc5-8bca-cb5b9b31f91d', 'fiber', 3.5, 'as-fed'),
  ('7a91e766-312d-4bc5-8bca-cb5b9b31f91d', 'ash', 6, 'as-fed'),
  ('7a91e766-312d-4bc5-8bca-cb5b9b31f91d', 'kcal', 385, 'as-fed'),
  ('7a91e766-312d-4bc5-8bca-cb5b9b31f91d', 'calcium', 1.3, 'as-fed'),
  ('7a91e766-312d-4bc5-8bca-cb5b9b31f91d', 'phosphorus', 1, 'as-fed'),
  ('7a91e766-312d-4bc5-8bca-cb5b9b31f91d', 'omega3', 0.6, 'as-fed'),
  ('7a91e766-312d-4bc5-8bca-cb5b9b31f91d', 'omega6', 2.3, 'as-fed');

-- Smølke — Puppy Mini & Medium (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.smolke.nl/hondenvoer/hondenbrokken/puppy-mini-medium/VE6601/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal staat op de pagina al per 100 g en is ongewijzigd overgenomen. Niet vermeld: vocht.'
 where id = '125ba742-223d-42c0-9c4e-348c13f27067';
delete from public.recipe_nutrition where recipe_version_id = '125ba742-223d-42c0-9c4e-348c13f27067';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('125ba742-223d-42c0-9c4e-348c13f27067', 'protein', 27, 'as-fed'),
  ('125ba742-223d-42c0-9c4e-348c13f27067', 'fat', 17, 'as-fed'),
  ('125ba742-223d-42c0-9c4e-348c13f27067', 'fiber', 3.5, 'as-fed'),
  ('125ba742-223d-42c0-9c4e-348c13f27067', 'ash', 6.5, 'as-fed'),
  ('125ba742-223d-42c0-9c4e-348c13f27067', 'kcal', 392, 'as-fed'),
  ('125ba742-223d-42c0-9c4e-348c13f27067', 'calcium', 1.3, 'as-fed'),
  ('125ba742-223d-42c0-9c4e-348c13f27067', 'phosphorus', 1, 'as-fed'),
  ('125ba742-223d-42c0-9c4e-348c13f27067', 'omega3', 1, 'as-fed'),
  ('125ba742-223d-42c0-9c4e-348c13f27067', 'omega6', 2.6, 'as-fed');

-- Smølke — Purple Goodness Lam (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.smolke.nl/purple-goodness-lam/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De fabrikant vermeldt op deze pagina geen energie, daarom kcal null. Niet vermeld: energie, calcium, fosfor, omega-3, omega-6.'
 where id = '8b7a6854-5dc6-47ec-9db2-50f335b54846';
delete from public.recipe_nutrition where recipe_version_id = '8b7a6854-5dc6-47ec-9db2-50f335b54846';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8b7a6854-5dc6-47ec-9db2-50f335b54846', 'protein', 9.8, 'as-fed'),
  ('8b7a6854-5dc6-47ec-9db2-50f335b54846', 'fat', 7, 'as-fed'),
  ('8b7a6854-5dc6-47ec-9db2-50f335b54846', 'fiber', 0.8, 'as-fed'),
  ('8b7a6854-5dc6-47ec-9db2-50f335b54846', 'ash', 3, 'as-fed'),
  ('8b7a6854-5dc6-47ec-9db2-50f335b54846', 'moisture', 75, 'as-fed');

-- Smølke — Red Goodness Rund (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.smolke.nl/red-goodness-rund/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De fabrikant vermeldt op deze pagina geen energie, daarom kcal null. Niet vermeld: energie, calcium, fosfor, omega-3, omega-6.'
 where id = '87080bc1-5594-4ae7-8242-1cc7acdbf5fb';
delete from public.recipe_nutrition where recipe_version_id = '87080bc1-5594-4ae7-8242-1cc7acdbf5fb';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('87080bc1-5594-4ae7-8242-1cc7acdbf5fb', 'protein', 10, 'as-fed'),
  ('87080bc1-5594-4ae7-8242-1cc7acdbf5fb', 'fat', 6, 'as-fed'),
  ('87080bc1-5594-4ae7-8242-1cc7acdbf5fb', 'fiber', 0.8, 'as-fed'),
  ('87080bc1-5594-4ae7-8242-1cc7acdbf5fb', 'ash', 2.2, 'as-fed'),
  ('87080bc1-5594-4ae7-8242-1cc7acdbf5fb', 'moisture', 75, 'as-fed');

-- Smølke — Soft Paté Hond Kalkoen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.smolke.nl/hondenvoer/natvoer/soft-pate-kalkoen/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal staat op de pagina al per 100 g en is ongewijzigd overgenomen. Niet vermeld: calcium, fosfor, omega-3, omega-6.'
 where id = '88c3eb8a-af74-4ade-bbe5-4c30a7f8e1bf';
delete from public.recipe_nutrition where recipe_version_id = '88c3eb8a-af74-4ade-bbe5-4c30a7f8e1bf';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('88c3eb8a-af74-4ade-bbe5-4c30a7f8e1bf', 'protein', 9, 'as-fed'),
  ('88c3eb8a-af74-4ade-bbe5-4c30a7f8e1bf', 'fat', 6.5, 'as-fed'),
  ('88c3eb8a-af74-4ade-bbe5-4c30a7f8e1bf', 'fiber', 0.2, 'as-fed'),
  ('88c3eb8a-af74-4ade-bbe5-4c30a7f8e1bf', 'ash', 2, 'as-fed'),
  ('88c3eb8a-af74-4ade-bbe5-4c30a7f8e1bf', 'moisture', 80, 'as-fed'),
  ('88c3eb8a-af74-4ade-bbe5-4c30a7f8e1bf', 'kcal', 101, 'as-fed');

-- Smølke — Soft Paté Hond Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.smolke.nl/hondenvoer/natvoer/soft-pate-kip/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal staat op de pagina al per 100 g en is ongewijzigd overgenomen. Niet vermeld: calcium, fosfor, omega-3, omega-6.'
 where id = 'a193f843-0dbe-42f9-8bcb-12608885577d';
delete from public.recipe_nutrition where recipe_version_id = 'a193f843-0dbe-42f9-8bcb-12608885577d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a193f843-0dbe-42f9-8bcb-12608885577d', 'protein', 8, 'as-fed'),
  ('a193f843-0dbe-42f9-8bcb-12608885577d', 'fat', 7, 'as-fed'),
  ('a193f843-0dbe-42f9-8bcb-12608885577d', 'fiber', 0.1, 'as-fed'),
  ('a193f843-0dbe-42f9-8bcb-12608885577d', 'ash', 2, 'as-fed'),
  ('a193f843-0dbe-42f9-8bcb-12608885577d', 'moisture', 80, 'as-fed'),
  ('a193f843-0dbe-42f9-8bcb-12608885577d', 'kcal', 104, 'as-fed');

-- Smølke — Soft Paté Hond Lam (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.smolke.nl/hondenvoer/natvoer/soft-pate-lam/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal staat op de pagina al per 100 g en is ongewijzigd overgenomen. Niet vermeld: calcium, fosfor, omega-3, omega-6.'
 where id = '585de527-7fff-4b89-a7b4-91528d5ddbbf';
delete from public.recipe_nutrition where recipe_version_id = '585de527-7fff-4b89-a7b4-91528d5ddbbf';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('585de527-7fff-4b89-a7b4-91528d5ddbbf', 'protein', 9, 'as-fed'),
  ('585de527-7fff-4b89-a7b4-91528d5ddbbf', 'fat', 6, 'as-fed'),
  ('585de527-7fff-4b89-a7b4-91528d5ddbbf', 'fiber', 0.2, 'as-fed'),
  ('585de527-7fff-4b89-a7b4-91528d5ddbbf', 'ash', 2, 'as-fed'),
  ('585de527-7fff-4b89-a7b4-91528d5ddbbf', 'moisture', 80, 'as-fed'),
  ('585de527-7fff-4b89-a7b4-91528d5ddbbf', 'kcal', 98, 'as-fed');

-- Smølke — Soft Paté Hond Party Edition (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.smolke.nl/hondenvoer/natvoer/soft-pate-party-edition/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal staat op de pagina al per 100 g en is ongewijzigd overgenomen. Niet vermeld: calcium, fosfor, omega-3, omega-6.'
 where id = 'faf546ac-f187-4e69-84ca-d64aadb48b38';
delete from public.recipe_nutrition where recipe_version_id = 'faf546ac-f187-4e69-84ca-d64aadb48b38';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('faf546ac-f187-4e69-84ca-d64aadb48b38', 'protein', 9, 'as-fed'),
  ('faf546ac-f187-4e69-84ca-d64aadb48b38', 'fat', 7.5, 'as-fed'),
  ('faf546ac-f187-4e69-84ca-d64aadb48b38', 'fiber', 0.2, 'as-fed'),
  ('faf546ac-f187-4e69-84ca-d64aadb48b38', 'ash', 2, 'as-fed'),
  ('faf546ac-f187-4e69-84ca-d64aadb48b38', 'moisture', 80, 'as-fed'),
  ('faf546ac-f187-4e69-84ca-d64aadb48b38', 'kcal', 106, 'as-fed');

-- Smølke — Soft Paté Hond Rund (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.smolke.nl/hondenvoer/natvoer/soft-pate-beef/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal staat op de pagina al per 100 g en is ongewijzigd overgenomen. Niet vermeld: calcium, fosfor, omega-3, omega-6.'
 where id = '8a61913d-bdd1-4481-ac60-dcedae1b28e6';
delete from public.recipe_nutrition where recipe_version_id = '8a61913d-bdd1-4481-ac60-dcedae1b28e6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8a61913d-bdd1-4481-ac60-dcedae1b28e6', 'protein', 9, 'as-fed'),
  ('8a61913d-bdd1-4481-ac60-dcedae1b28e6', 'fat', 6, 'as-fed'),
  ('8a61913d-bdd1-4481-ac60-dcedae1b28e6', 'fiber', 0.2, 'as-fed'),
  ('8a61913d-bdd1-4481-ac60-dcedae1b28e6', 'ash', 2, 'as-fed'),
  ('8a61913d-bdd1-4481-ac60-dcedae1b28e6', 'moisture', 80, 'as-fed'),
  ('8a61913d-bdd1-4481-ac60-dcedae1b28e6', 'kcal', 98, 'as-fed');

-- Smølke — Vers Gestoomde Maaltijd Eend (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.smolke.nl/hondenvoer/natvoer/vers-gestoomde-maaltijd-eend/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal staat op de pagina al per 100 g en is ongewijzigd overgenomen. Niet vermeld: omega-3, omega-6.'
 where id = '4d461ddc-6280-4791-9f02-c5d2f281876a';
delete from public.recipe_nutrition where recipe_version_id = '4d461ddc-6280-4791-9f02-c5d2f281876a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4d461ddc-6280-4791-9f02-c5d2f281876a', 'protein', 10, 'as-fed'),
  ('4d461ddc-6280-4791-9f02-c5d2f281876a', 'fat', 9.5, 'as-fed'),
  ('4d461ddc-6280-4791-9f02-c5d2f281876a', 'fiber', 0.5, 'as-fed'),
  ('4d461ddc-6280-4791-9f02-c5d2f281876a', 'ash', 3, 'as-fed'),
  ('4d461ddc-6280-4791-9f02-c5d2f281876a', 'moisture', 75, 'as-fed'),
  ('4d461ddc-6280-4791-9f02-c5d2f281876a', 'kcal', 141, 'as-fed'),
  ('4d461ddc-6280-4791-9f02-c5d2f281876a', 'calcium', 0.5, 'as-fed'),
  ('4d461ddc-6280-4791-9f02-c5d2f281876a', 'phosphorus', 0.3, 'as-fed');

-- Smølke — Vers Gestoomde Maaltijd Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.smolke.nl/hondenvoer/natvoer/vers-gestoomde-maaltijd-kip/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal staat op de pagina al per 100 g en is ongewijzigd overgenomen. Niet vermeld: calcium, fosfor, omega-3, omega-6.'
 where id = 'a850b5a8-c75a-4747-b478-07d3771ca560';
delete from public.recipe_nutrition where recipe_version_id = 'a850b5a8-c75a-4747-b478-07d3771ca560';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a850b5a8-c75a-4747-b478-07d3771ca560', 'protein', 10.5, 'as-fed'),
  ('a850b5a8-c75a-4747-b478-07d3771ca560', 'fat', 7, 'as-fed'),
  ('a850b5a8-c75a-4747-b478-07d3771ca560', 'fiber', 0.5, 'as-fed'),
  ('a850b5a8-c75a-4747-b478-07d3771ca560', 'ash', 3, 'as-fed'),
  ('a850b5a8-c75a-4747-b478-07d3771ca560', 'moisture', 75, 'as-fed'),
  ('a850b5a8-c75a-4747-b478-07d3771ca560', 'kcal', 133, 'as-fed');

-- Smølke — Vers Gestoomde Maaltijd Lam (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.smolke.nl/hondenvoer/natvoer/vers-gestoomde-maaltijd-lam/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal staat op de pagina al per 100 g en is ongewijzigd overgenomen. Niet vermeld: omega-3, omega-6.'
 where id = '0f8c9f67-40c3-4e94-9838-12ee639545c0';
delete from public.recipe_nutrition where recipe_version_id = '0f8c9f67-40c3-4e94-9838-12ee639545c0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0f8c9f67-40c3-4e94-9838-12ee639545c0', 'protein', 10, 'as-fed'),
  ('0f8c9f67-40c3-4e94-9838-12ee639545c0', 'fat', 9.5, 'as-fed'),
  ('0f8c9f67-40c3-4e94-9838-12ee639545c0', 'fiber', 0.5, 'as-fed'),
  ('0f8c9f67-40c3-4e94-9838-12ee639545c0', 'ash', 3, 'as-fed'),
  ('0f8c9f67-40c3-4e94-9838-12ee639545c0', 'moisture', 72.5, 'as-fed'),
  ('0f8c9f67-40c3-4e94-9838-12ee639545c0', 'kcal', 141, 'as-fed'),
  ('0f8c9f67-40c3-4e94-9838-12ee639545c0', 'calcium', 0.4, 'as-fed'),
  ('0f8c9f67-40c3-4e94-9838-12ee639545c0', 'phosphorus', 0.25, 'as-fed');

-- Smølke — Vers Gestoomde Maaltijd met Kalkoen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.smolke.nl/hondenvoer/natvoer/vers-gestoomde-maaltijd-kalkoen/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal staat op de pagina al per 100 g en is ongewijzigd overgenomen. Niet vermeld: omega-3, omega-6.'
 where id = '24566da4-e1ae-4b53-b37f-bbf56948db20';
delete from public.recipe_nutrition where recipe_version_id = '24566da4-e1ae-4b53-b37f-bbf56948db20';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('24566da4-e1ae-4b53-b37f-bbf56948db20', 'protein', 10, 'as-fed'),
  ('24566da4-e1ae-4b53-b37f-bbf56948db20', 'fat', 9, 'as-fed'),
  ('24566da4-e1ae-4b53-b37f-bbf56948db20', 'fiber', 0.5, 'as-fed'),
  ('24566da4-e1ae-4b53-b37f-bbf56948db20', 'ash', 2.5, 'as-fed'),
  ('24566da4-e1ae-4b53-b37f-bbf56948db20', 'moisture', 75, 'as-fed'),
  ('24566da4-e1ae-4b53-b37f-bbf56948db20', 'kcal', 141, 'as-fed'),
  ('24566da4-e1ae-4b53-b37f-bbf56948db20', 'calcium', 0.4, 'as-fed'),
  ('24566da4-e1ae-4b53-b37f-bbf56948db20', 'phosphorus', 0.27, 'as-fed');

-- Smølke — Vers Gestoomde Maaltijd Smølmix (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.smolke.nl/hondenvoer/natvoer/vers-gestoomde-maaltijd-smolmix/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal staat op de pagina al per 100 g en is ongewijzigd overgenomen. Niet vermeld: omega-3, omega-6.'
 where id = 'c0130aa2-e8e1-4f41-a72e-c83c91d7b217';
delete from public.recipe_nutrition where recipe_version_id = 'c0130aa2-e8e1-4f41-a72e-c83c91d7b217';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c0130aa2-e8e1-4f41-a72e-c83c91d7b217', 'protein', 8.5, 'as-fed'),
  ('c0130aa2-e8e1-4f41-a72e-c83c91d7b217', 'fat', 10, 'as-fed'),
  ('c0130aa2-e8e1-4f41-a72e-c83c91d7b217', 'fiber', 0.5, 'as-fed'),
  ('c0130aa2-e8e1-4f41-a72e-c83c91d7b217', 'ash', 2, 'as-fed'),
  ('c0130aa2-e8e1-4f41-a72e-c83c91d7b217', 'moisture', 75, 'as-fed'),
  ('c0130aa2-e8e1-4f41-a72e-c83c91d7b217', 'kcal', 141, 'as-fed'),
  ('c0130aa2-e8e1-4f41-a72e-c83c91d7b217', 'calcium', 0.35, 'as-fed'),
  ('c0130aa2-e8e1-4f41-a72e-c83c91d7b217', 'phosphorus', 0.22, 'as-fed');

-- Smølke — Vers Gestoomde Maaltijd Wild (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.smolke.nl/hondenvoer/natvoer/vers-gestoomde-maaltijd-wild/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Kcal staat op de pagina al per 100 g en is ongewijzigd overgenomen. Niet vermeld: omega-3, omega-6.'
 where id = 'a35c09a0-e931-46e8-9d08-5fe7470e6adc';
delete from public.recipe_nutrition where recipe_version_id = 'a35c09a0-e931-46e8-9d08-5fe7470e6adc';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a35c09a0-e931-46e8-9d08-5fe7470e6adc', 'protein', 9, 'as-fed'),
  ('a35c09a0-e931-46e8-9d08-5fe7470e6adc', 'fat', 10, 'as-fed'),
  ('a35c09a0-e931-46e8-9d08-5fe7470e6adc', 'fiber', 0.5, 'as-fed'),
  ('a35c09a0-e931-46e8-9d08-5fe7470e6adc', 'ash', 3.5, 'as-fed'),
  ('a35c09a0-e931-46e8-9d08-5fe7470e6adc', 'moisture', 75, 'as-fed'),
  ('a35c09a0-e931-46e8-9d08-5fe7470e6adc', 'kcal', 131, 'as-fed'),
  ('a35c09a0-e931-46e8-9d08-5fe7470e6adc', 'calcium', 0.5, 'as-fed'),
  ('a35c09a0-e931-46e8-9d08-5fe7470e6adc', 'phosphorus', 0.4, 'as-fed');

commit;
