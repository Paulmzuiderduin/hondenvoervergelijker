begin;

-- Royal Canin — Renal Select (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/renal-select-4162',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Omega-6 overgenomen uit de opgave "Essentieel vetzuur (linolzuur)" (linolzuur is een omega-6 vetzuur). EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht en omega-3 worden niet vermeld.'
 where id = '687d7b8c-0ac7-4adc-abb5-a2c9abe3c55d';
delete from public.recipe_nutrition where recipe_version_id = '687d7b8c-0ac7-4adc-abb5-a2c9abe3c55d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('687d7b8c-0ac7-4adc-abb5-a2c9abe3c55d', 'protein', 12.5, 'as-fed'),
  ('687d7b8c-0ac7-4adc-abb5-a2c9abe3c55d', 'fat', 18, 'as-fed'),
  ('687d7b8c-0ac7-4adc-abb5-a2c9abe3c55d', 'fiber', 2.4, 'as-fed'),
  ('687d7b8c-0ac7-4adc-abb5-a2c9abe3c55d', 'ash', 4.4, 'as-fed'),
  ('687d7b8c-0ac7-4adc-abb5-a2c9abe3c55d', 'calcium', 0.6, 'as-fed'),
  ('687d7b8c-0ac7-4adc-abb5-a2c9abe3c55d', 'phosphorus', 0.3, 'as-fed'),
  ('687d7b8c-0ac7-4adc-abb5-a2c9abe3c55d', 'omega6', 3.87, 'as-fed');

-- Royal Canin — Renal Small Dogs (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/renal-small-dog-1249',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Omega-6 overgenomen uit de opgave "Essentieel vetzuur (linolzuur)" (linolzuur is een omega-6 vetzuur). EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht en omega-3 worden niet vermeld.'
 where id = '589767a7-946e-4725-b6e2-2ab09a6157c6';
delete from public.recipe_nutrition where recipe_version_id = '589767a7-946e-4725-b6e2-2ab09a6157c6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('589767a7-946e-4725-b6e2-2ab09a6157c6', 'protein', 14, 'as-fed'),
  ('589767a7-946e-4725-b6e2-2ab09a6157c6', 'fat', 18, 'as-fed'),
  ('589767a7-946e-4725-b6e2-2ab09a6157c6', 'fiber', 2.4, 'as-fed'),
  ('589767a7-946e-4725-b6e2-2ab09a6157c6', 'ash', 4, 'as-fed'),
  ('589767a7-946e-4725-b6e2-2ab09a6157c6', 'calcium', 0.4, 'as-fed'),
  ('589767a7-946e-4725-b6e2-2ab09a6157c6', 'phosphorus', 0.2, 'as-fed'),
  ('589767a7-946e-4725-b6e2-2ab09a6157c6', 'omega6', 4, 'as-fed');

-- Royal Canin — Renal Special (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/renal-special-4161',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Omega-6 overgenomen uit de opgave "Essentieel vetzuur (linolzuur)" (linolzuur is een omega-6 vetzuur). EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht en omega-3 worden niet vermeld.'
 where id = '49d86fc6-ae95-416b-9d24-bfc83717d3f6';
delete from public.recipe_nutrition where recipe_version_id = '49d86fc6-ae95-416b-9d24-bfc83717d3f6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('49d86fc6-ae95-416b-9d24-bfc83717d3f6', 'protein', 13, 'as-fed'),
  ('49d86fc6-ae95-416b-9d24-bfc83717d3f6', 'fat', 16, 'as-fed'),
  ('49d86fc6-ae95-416b-9d24-bfc83717d3f6', 'fiber', 2.4, 'as-fed'),
  ('49d86fc6-ae95-416b-9d24-bfc83717d3f6', 'ash', 4.5, 'as-fed'),
  ('49d86fc6-ae95-416b-9d24-bfc83717d3f6', 'calcium', 0.6, 'as-fed'),
  ('49d86fc6-ae95-416b-9d24-bfc83717d3f6', 'phosphorus', 0.3, 'as-fed'),
  ('49d86fc6-ae95-416b-9d24-bfc83717d3f6', 'omega6', 3.4, 'as-fed');

-- Royal Canin — Rottweiler Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/rottweiler-adult-3971',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '83c4d85d-fff2-4eb9-9cf9-852c48e7c089';
delete from public.recipe_nutrition where recipe_version_id = '83c4d85d-fff2-4eb9-9cf9-852c48e7c089';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('83c4d85d-fff2-4eb9-9cf9-852c48e7c089', 'protein', 26, 'as-fed'),
  ('83c4d85d-fff2-4eb9-9cf9-852c48e7c089', 'fat', 20, 'as-fed'),
  ('83c4d85d-fff2-4eb9-9cf9-852c48e7c089', 'fiber', 2.5, 'as-fed'),
  ('83c4d85d-fff2-4eb9-9cf9-852c48e7c089', 'ash', 6.3, 'as-fed');

-- Royal Canin — Rottweiler Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/rottweiler-puppy-3987',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, omega-3 en omega-6 worden niet vermeld.'
 where id = '3411314e-c697-49a6-af4d-4f5e00390bbb';
delete from public.recipe_nutrition where recipe_version_id = '3411314e-c697-49a6-af4d-4f5e00390bbb';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3411314e-c697-49a6-af4d-4f5e00390bbb', 'protein', 31, 'as-fed'),
  ('3411314e-c697-49a6-af4d-4f5e00390bbb', 'fat', 16, 'as-fed'),
  ('3411314e-c697-49a6-af4d-4f5e00390bbb', 'fiber', 1.8, 'as-fed'),
  ('3411314e-c697-49a6-af4d-4f5e00390bbb', 'ash', 7.9, 'as-fed'),
  ('3411314e-c697-49a6-af4d-4f5e00390bbb', 'calcium', 1.26, 'as-fed'),
  ('3411314e-c697-49a6-af4d-4f5e00390bbb', 'phosphorus', 1, 'as-fed');

-- Royal Canin — Satiety + Mobility (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/satiety-%2b-mobility-4230',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 2.598kcal/kg omgerekend naar 259,8 kcal/100 g (gedeeld door 10). Vocht, calcium, fosfor en omega-6 worden niet vermeld.'
 where id = '9c139737-4af4-4e7d-8eaf-0d2ab58435bf';
delete from public.recipe_nutrition where recipe_version_id = '9c139737-4af4-4e7d-8eaf-0d2ab58435bf';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9c139737-4af4-4e7d-8eaf-0d2ab58435bf', 'protein', 30, 'as-fed'),
  ('9c139737-4af4-4e7d-8eaf-0d2ab58435bf', 'fat', 10.5, 'as-fed'),
  ('9c139737-4af4-4e7d-8eaf-0d2ab58435bf', 'fiber', 16.8, 'as-fed'),
  ('9c139737-4af4-4e7d-8eaf-0d2ab58435bf', 'ash', 6, 'as-fed'),
  ('9c139737-4af4-4e7d-8eaf-0d2ab58435bf', 'kcal', 259.8, 'as-fed'),
  ('9c139737-4af4-4e7d-8eaf-0d2ab58435bf', 'omega3', 1.17, 'as-fed');

-- Royal Canin — Satiety + Mobility Small Dogs (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/satiety-%2b-mobility-small-dogs-8089',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 2.647kcal/kg omgerekend naar 264,7 kcal/100 g (gedeeld door 10). Vocht, calcium, fosfor en omega-6 worden niet vermeld.'
 where id = '836ff2b6-1d91-485b-9116-020dd28fafa6';
delete from public.recipe_nutrition where recipe_version_id = '836ff2b6-1d91-485b-9116-020dd28fafa6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('836ff2b6-1d91-485b-9116-020dd28fafa6', 'protein', 30, 'as-fed'),
  ('836ff2b6-1d91-485b-9116-020dd28fafa6', 'fat', 9.5, 'as-fed'),
  ('836ff2b6-1d91-485b-9116-020dd28fafa6', 'fiber', 15.3, 'as-fed'),
  ('836ff2b6-1d91-485b-9116-020dd28fafa6', 'ash', 6.8, 'as-fed'),
  ('836ff2b6-1d91-485b-9116-020dd28fafa6', 'kcal', 264.7, 'as-fed'),
  ('836ff2b6-1d91-485b-9116-020dd28fafa6', 'omega3', 0.88, 'as-fed');

-- Royal Canin — Satiety Weight Management (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/satiety-weight-management-3948',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 2.668kcal/kg omgerekend naar 266,8 kcal/100 g (gedeeld door 10). Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '76e69fbc-6292-4f50-801e-060cd472429d';
delete from public.recipe_nutrition where recipe_version_id = '76e69fbc-6292-4f50-801e-060cd472429d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('76e69fbc-6292-4f50-801e-060cd472429d', 'protein', 30, 'as-fed'),
  ('76e69fbc-6292-4f50-801e-060cd472429d', 'fat', 9.5, 'as-fed'),
  ('76e69fbc-6292-4f50-801e-060cd472429d', 'fiber', 17, 'as-fed'),
  ('76e69fbc-6292-4f50-801e-060cd472429d', 'ash', 5.8, 'as-fed'),
  ('76e69fbc-6292-4f50-801e-060cd472429d', 'kcal', 266.8, 'as-fed');

-- Royal Canin — Satiety Weight Management (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/satiety-weight-management-4250',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 579kcal/kg omgerekend naar 57,9 kcal/100 g (gedeeld door 10). Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '52cf40e2-f0ce-42a1-8501-19ec36c87a3a';
delete from public.recipe_nutrition where recipe_version_id = '52cf40e2-f0ce-42a1-8501-19ec36c87a3a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('52cf40e2-f0ce-42a1-8501-19ec36c87a3a', 'protein', 8, 'as-fed'),
  ('52cf40e2-f0ce-42a1-8501-19ec36c87a3a', 'fat', 2, 'as-fed'),
  ('52cf40e2-f0ce-42a1-8501-19ec36c87a3a', 'fiber', 2, 'as-fed'),
  ('52cf40e2-f0ce-42a1-8501-19ec36c87a3a', 'ash', 1, 'as-fed'),
  ('52cf40e2-f0ce-42a1-8501-19ec36c87a3a', 'moisture', 83, 'as-fed'),
  ('52cf40e2-f0ce-42a1-8501-19ec36c87a3a', 'kcal', 57.9, 'as-fed');

-- Royal Canin — Satiety Weight Management Small Dog (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/satiety-weight-management-small-dog-4252',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 2.696,0kcal/kg omgerekend naar 269,6 kcal/100 g (gedeeld door 10). Vocht, omega-3 en omega-6 worden niet vermeld.'
 where id = '23e51104-3b41-47bd-8bcf-57f59b32326a';
delete from public.recipe_nutrition where recipe_version_id = '23e51104-3b41-47bd-8bcf-57f59b32326a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('23e51104-3b41-47bd-8bcf-57f59b32326a', 'protein', 30, 'as-fed'),
  ('23e51104-3b41-47bd-8bcf-57f59b32326a', 'fat', 9.5, 'as-fed'),
  ('23e51104-3b41-47bd-8bcf-57f59b32326a', 'fiber', 15.6, 'as-fed'),
  ('23e51104-3b41-47bd-8bcf-57f59b32326a', 'ash', 6.8, 'as-fed'),
  ('23e51104-3b41-47bd-8bcf-57f59b32326a', 'kcal', 269.6, 'as-fed'),
  ('23e51104-3b41-47bd-8bcf-57f59b32326a', 'calcium', 0.91, 'as-fed'),
  ('23e51104-3b41-47bd-8bcf-57f59b32326a', 'phosphorus', 0.75, 'as-fed');

-- Royal Canin — Sensitivity Control (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/sensitivity-control-3922',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Omega-6 overgenomen uit de opgave "Essentieel vetzuur (linolzuur)" (linolzuur is een omega-6 vetzuur). Vocht, calcium en fosfor worden niet vermeld.'
 where id = '95032f03-76e9-465c-bf58-c89aa6eff1f3';
delete from public.recipe_nutrition where recipe_version_id = '95032f03-76e9-465c-bf58-c89aa6eff1f3';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('95032f03-76e9-465c-bf58-c89aa6eff1f3', 'protein', 21, 'as-fed'),
  ('95032f03-76e9-465c-bf58-c89aa6eff1f3', 'fat', 9, 'as-fed'),
  ('95032f03-76e9-465c-bf58-c89aa6eff1f3', 'fiber', 4.5, 'as-fed'),
  ('95032f03-76e9-465c-bf58-c89aa6eff1f3', 'ash', 7.8, 'as-fed'),
  ('95032f03-76e9-465c-bf58-c89aa6eff1f3', 'omega3', 0.68, 'as-fed'),
  ('95032f03-76e9-465c-bf58-c89aa6eff1f3', 'omega6', 1.83, 'as-fed');

-- Royal Canin — Sensitivity Control Eend met Rijst (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/sensitivity-control-duck-with-rice-4027',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Omega-6 overgenomen uit de opgave "Essentieel vetzuur (linolzuur)" (linolzuur is een omega-6 vetzuur). EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Calcium, fosfor en omega-3 worden niet vermeld.'
 where id = 'bdb4de12-f515-4f45-9089-45192eacb51b';
delete from public.recipe_nutrition where recipe_version_id = 'bdb4de12-f515-4f45-9089-45192eacb51b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('bdb4de12-f515-4f45-9089-45192eacb51b', 'protein', 9, 'as-fed'),
  ('bdb4de12-f515-4f45-9089-45192eacb51b', 'fat', 7, 'as-fed'),
  ('bdb4de12-f515-4f45-9089-45192eacb51b', 'fiber', 1, 'as-fed'),
  ('bdb4de12-f515-4f45-9089-45192eacb51b', 'ash', 2.3, 'as-fed'),
  ('bdb4de12-f515-4f45-9089-45192eacb51b', 'moisture', 67.7, 'as-fed'),
  ('bdb4de12-f515-4f45-9089-45192eacb51b', 'omega6', 1.9, 'as-fed');

-- Royal Canin — Sensitivity Control Kip met Rijst (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/sensitivity-control-chicken-with-rice-4026',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Omega-6 overgenomen uit de opgave "Essentieel vetzuur (linolzuur)" (linolzuur is een omega-6 vetzuur). EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Calcium, fosfor en omega-3 worden niet vermeld.'
 where id = 'fcc2d6c0-99a7-4980-bd5a-08e0cffc26b8';
delete from public.recipe_nutrition where recipe_version_id = 'fcc2d6c0-99a7-4980-bd5a-08e0cffc26b8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fcc2d6c0-99a7-4980-bd5a-08e0cffc26b8', 'protein', 9.5, 'as-fed'),
  ('fcc2d6c0-99a7-4980-bd5a-08e0cffc26b8', 'fat', 6, 'as-fed'),
  ('fcc2d6c0-99a7-4980-bd5a-08e0cffc26b8', 'fiber', 1.5, 'as-fed'),
  ('fcc2d6c0-99a7-4980-bd5a-08e0cffc26b8', 'ash', 2.4, 'as-fed'),
  ('fcc2d6c0-99a7-4980-bd5a-08e0cffc26b8', 'moisture', 71, 'as-fed'),
  ('fcc2d6c0-99a7-4980-bd5a-08e0cffc26b8', 'omega6', 1.6, 'as-fed');

-- Royal Canin — Shiba Inu Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/shiba-inu-adult-2104',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'c015d6b2-2580-4f67-bca5-432d7e44a90a';
delete from public.recipe_nutrition where recipe_version_id = 'c015d6b2-2580-4f67-bca5-432d7e44a90a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c015d6b2-2580-4f67-bca5-432d7e44a90a', 'protein', 26, 'as-fed'),
  ('c015d6b2-2580-4f67-bca5-432d7e44a90a', 'fat', 14, 'as-fed'),
  ('c015d6b2-2580-4f67-bca5-432d7e44a90a', 'fiber', 2.5, 'as-fed'),
  ('c015d6b2-2580-4f67-bca5-432d7e44a90a', 'ash', 5.8, 'as-fed');

-- Royal Canin — Shih Tzu Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/shih-tzu-adult-2200',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '4df89278-759e-419e-81c6-2d1f23984235';
delete from public.recipe_nutrition where recipe_version_id = '4df89278-759e-419e-81c6-2d1f23984235';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4df89278-759e-419e-81c6-2d1f23984235', 'protein', 24, 'as-fed'),
  ('4df89278-759e-419e-81c6-2d1f23984235', 'fat', 20, 'as-fed'),
  ('4df89278-759e-419e-81c6-2d1f23984235', 'fiber', 3.1, 'as-fed'),
  ('4df89278-759e-419e-81c6-2d1f23984235', 'ash', 5.8, 'as-fed');

-- Royal Canin — Shih Tzu Adult in Loaf (paté) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/shih-tzu-1258',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'b13edf05-7fe1-416a-8309-3e272e30957e';
delete from public.recipe_nutrition where recipe_version_id = 'b13edf05-7fe1-416a-8309-3e272e30957e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b13edf05-7fe1-416a-8309-3e272e30957e', 'protein', 8, 'as-fed'),
  ('b13edf05-7fe1-416a-8309-3e272e30957e', 'fat', 6, 'as-fed'),
  ('b13edf05-7fe1-416a-8309-3e272e30957e', 'fiber', 1.4, 'as-fed'),
  ('b13edf05-7fe1-416a-8309-3e272e30957e', 'ash', 1.4, 'as-fed'),
  ('b13edf05-7fe1-416a-8309-3e272e30957e', 'moisture', 79.6, 'as-fed');

-- Royal Canin — Shih Tzu Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/shih-tzu-puppy-2439',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '107c0c43-95c6-4ee4-a5ba-ce0810a41499';
delete from public.recipe_nutrition where recipe_version_id = '107c0c43-95c6-4ee4-a5ba-ce0810a41499';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('107c0c43-95c6-4ee4-a5ba-ce0810a41499', 'protein', 28, 'as-fed'),
  ('107c0c43-95c6-4ee4-a5ba-ce0810a41499', 'fat', 18, 'as-fed'),
  ('107c0c43-95c6-4ee4-a5ba-ce0810a41499', 'fiber', 1.5, 'as-fed'),
  ('107c0c43-95c6-4ee4-a5ba-ce0810a41499', 'ash', 7.6, 'as-fed');

-- Royal Canin — Skin Care (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/skin-care-4013',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium en fosfor worden niet vermeld.'
 where id = 'e32d5049-37cf-4063-92ab-acd91e8cd79d';
delete from public.recipe_nutrition where recipe_version_id = 'e32d5049-37cf-4063-92ab-acd91e8cd79d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e32d5049-37cf-4063-92ab-acd91e8cd79d', 'protein', 23, 'as-fed'),
  ('e32d5049-37cf-4063-92ab-acd91e8cd79d', 'fat', 16, 'as-fed'),
  ('e32d5049-37cf-4063-92ab-acd91e8cd79d', 'fiber', 2, 'as-fed'),
  ('e32d5049-37cf-4063-92ab-acd91e8cd79d', 'ash', 5.6, 'as-fed'),
  ('e32d5049-37cf-4063-92ab-acd91e8cd79d', 'omega3', 1, 'as-fed'),
  ('e32d5049-37cf-4063-92ab-acd91e8cd79d', 'omega6', 3.26, 'as-fed');

-- Royal Canin — Skin Care Small Dogs (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/skin-care-small-dog-4006',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Omega-6 overgenomen uit de opgave "Essentieel vetzuur (linolzuur)" (linolzuur is een omega-6 vetzuur). EPA/DHA is niet als omega-3 overgenomen omdat het een deelverzameling van de omega-3-vetzuren is. Vocht, calcium, fosfor en omega-3 worden niet vermeld.'
 where id = '95f89827-21f4-486b-8622-a679d62ef557';
delete from public.recipe_nutrition where recipe_version_id = '95f89827-21f4-486b-8622-a679d62ef557';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('95f89827-21f4-486b-8622-a679d62ef557', 'protein', 25, 'as-fed'),
  ('95f89827-21f4-486b-8622-a679d62ef557', 'fat', 16, 'as-fed'),
  ('95f89827-21f4-486b-8622-a679d62ef557', 'fiber', 1.2, 'as-fed'),
  ('95f89827-21f4-486b-8622-a679d62ef557', 'ash', 6.1, 'as-fed'),
  ('95f89827-21f4-486b-8622-a679d62ef557', 'omega6', 3.46, 'as-fed');

-- Royal Canin — Sporting Life Energy 4100 (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/sporting-life-energy-4100-l-2781',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'fa5895ab-47cb-4241-85a8-311e59bd9dac';
delete from public.recipe_nutrition where recipe_version_id = 'fa5895ab-47cb-4241-85a8-311e59bd9dac';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fa5895ab-47cb-4241-85a8-311e59bd9dac', 'protein', 23, 'as-fed'),
  ('fa5895ab-47cb-4241-85a8-311e59bd9dac', 'fat', 15, 'as-fed'),
  ('fa5895ab-47cb-4241-85a8-311e59bd9dac', 'fiber', 1.6, 'as-fed'),
  ('fa5895ab-47cb-4241-85a8-311e59bd9dac', 'ash', 6.3, 'as-fed');

-- Royal Canin — Sporting Life Energy 4300 (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/sporting-life-energy-4300-2782',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 4.077kcal/kg omgerekend naar 407,7 kcal/100 g (gedeeld door 10). Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '409ea3a0-546f-4753-9e2a-9972f0c62db5';
delete from public.recipe_nutrition where recipe_version_id = '409ea3a0-546f-4753-9e2a-9972f0c62db5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('409ea3a0-546f-4753-9e2a-9972f0c62db5', 'protein', 28, 'as-fed'),
  ('409ea3a0-546f-4753-9e2a-9972f0c62db5', 'fat', 21, 'as-fed'),
  ('409ea3a0-546f-4753-9e2a-9972f0c62db5', 'fiber', 2.7, 'as-fed'),
  ('409ea3a0-546f-4753-9e2a-9972f0c62db5', 'ash', 7.6, 'as-fed'),
  ('409ea3a0-546f-4753-9e2a-9972f0c62db5', 'kcal', 407.7, 'as-fed');

-- Royal Canin — Sterilised Care in Loaf (paté) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/sterilised-1179',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '3cff9fd7-c783-4007-9a74-586ca7146966';
delete from public.recipe_nutrition where recipe_version_id = '3cff9fd7-c783-4007-9a74-586ca7146966';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3cff9fd7-c783-4007-9a74-586ca7146966', 'protein', 8.5, 'as-fed'),
  ('3cff9fd7-c783-4007-9a74-586ca7146966', 'fat', 4.1, 'as-fed'),
  ('3cff9fd7-c783-4007-9a74-586ca7146966', 'fiber', 1.2, 'as-fed'),
  ('3cff9fd7-c783-4007-9a74-586ca7146966', 'ash', 1.6, 'as-fed'),
  ('3cff9fd7-c783-4007-9a74-586ca7146966', 'moisture', 81.1, 'as-fed');

-- Royal Canin — Sterilised Maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/maxi-sterilised-3035',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '15272dfc-7f68-43ae-a1ff-1ea860d37a3c';
delete from public.recipe_nutrition where recipe_version_id = '15272dfc-7f68-43ae-a1ff-1ea860d37a3c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('15272dfc-7f68-43ae-a1ff-1ea860d37a3c', 'protein', 28, 'as-fed'),
  ('15272dfc-7f68-43ae-a1ff-1ea860d37a3c', 'fat', 13, 'as-fed'),
  ('15272dfc-7f68-43ae-a1ff-1ea860d37a3c', 'fiber', 6.7, 'as-fed'),
  ('15272dfc-7f68-43ae-a1ff-1ea860d37a3c', 'ash', 5.8, 'as-fed');

-- Royal Canin — Sterilised Medium (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/medium-sterilised-3034',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '3c46c2c0-94c5-4673-8d62-86b8cf4d01bd';
delete from public.recipe_nutrition where recipe_version_id = '3c46c2c0-94c5-4673-8d62-86b8cf4d01bd';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3c46c2c0-94c5-4673-8d62-86b8cf4d01bd', 'protein', 28, 'as-fed'),
  ('3c46c2c0-94c5-4673-8d62-86b8cf4d01bd', 'fat', 13, 'as-fed'),
  ('3c46c2c0-94c5-4673-8d62-86b8cf4d01bd', 'fiber', 6.4, 'as-fed'),
  ('3c46c2c0-94c5-4673-8d62-86b8cf4d01bd', 'ash', 4.9, 'as-fed');

-- Royal Canin — Sterilised Mini (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/mini-sterilised-3185',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '87b2363c-27aa-4e1b-af27-69febb2e4fed';
delete from public.recipe_nutrition where recipe_version_id = '87b2363c-27aa-4e1b-af27-69febb2e4fed';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('87b2363c-27aa-4e1b-af27-69febb2e4fed', 'protein', 30, 'as-fed'),
  ('87b2363c-27aa-4e1b-af27-69febb2e4fed', 'fat', 13, 'as-fed'),
  ('87b2363c-27aa-4e1b-af27-69febb2e4fed', 'fiber', 6.6, 'as-fed'),
  ('87b2363c-27aa-4e1b-af27-69febb2e4fed', 'ash', 5.4, 'as-fed');

commit;
