begin;

-- Prins Petfoods — Fit Selection Chicken & Rice (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/fit-selection/chicken-rice-2kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3685 kcal/kg naar 368,5 kcal/100 g (delen door 10). Omega-6 overgenomen uit de op de pagina vermelde linolzuurwaarde; linolzuur is een omega-6-vetzuur. Niet vermeld op de bron: omega-3.'
 where id = 'c96aa077-e14d-4043-a516-2893a43a8da5';
delete from public.recipe_nutrition where recipe_version_id = 'c96aa077-e14d-4043-a516-2893a43a8da5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c96aa077-e14d-4043-a516-2893a43a8da5', 'protein', 25, 'as-fed'),
  ('c96aa077-e14d-4043-a516-2893a43a8da5', 'fat', 12, 'as-fed'),
  ('c96aa077-e14d-4043-a516-2893a43a8da5', 'fiber', 2, 'as-fed'),
  ('c96aa077-e14d-4043-a516-2893a43a8da5', 'ash', 7, 'as-fed'),
  ('c96aa077-e14d-4043-a516-2893a43a8da5', 'moisture', 9, 'as-fed'),
  ('c96aa077-e14d-4043-a516-2893a43a8da5', 'kcal', 368.5, 'as-fed'),
  ('c96aa077-e14d-4043-a516-2893a43a8da5', 'calcium', 1.4, 'as-fed'),
  ('c96aa077-e14d-4043-a516-2893a43a8da5', 'phosphorus', 1.1, 'as-fed'),
  ('c96aa077-e14d-4043-a516-2893a43a8da5', 'omega6', 2.9, 'as-fed');

-- Prins Petfoods — Fit Selection Lamb & Rice (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/fit-selection/lamb-rice-2kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3870 kcal/kg naar 387 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '237188a9-b349-473e-8acb-a51ea270115f';
delete from public.recipe_nutrition where recipe_version_id = '237188a9-b349-473e-8acb-a51ea270115f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('237188a9-b349-473e-8acb-a51ea270115f', 'protein', 18, 'as-fed'),
  ('237188a9-b349-473e-8acb-a51ea270115f', 'fat', 13, 'as-fed'),
  ('237188a9-b349-473e-8acb-a51ea270115f', 'fiber', 4.5, 'as-fed'),
  ('237188a9-b349-473e-8acb-a51ea270115f', 'ash', 6, 'as-fed'),
  ('237188a9-b349-473e-8acb-a51ea270115f', 'moisture', 9, 'as-fed'),
  ('237188a9-b349-473e-8acb-a51ea270115f', 'kcal', 387, 'as-fed'),
  ('237188a9-b349-473e-8acb-a51ea270115f', 'calcium', 1.4, 'as-fed'),
  ('237188a9-b349-473e-8acb-a51ea270115f', 'phosphorus', 0.8, 'as-fed');

-- Prins Petfoods — Fit Selection Puppy & Junior (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/fit-selection/puppy-junior-2kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 4090 kcal/kg naar 409 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = 'f7e844d3-4e56-437b-a06b-63b0c7004ccb';
delete from public.recipe_nutrition where recipe_version_id = 'f7e844d3-4e56-437b-a06b-63b0c7004ccb';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f7e844d3-4e56-437b-a06b-63b0c7004ccb', 'protein', 24, 'as-fed'),
  ('f7e844d3-4e56-437b-a06b-63b0c7004ccb', 'fat', 17, 'as-fed'),
  ('f7e844d3-4e56-437b-a06b-63b0c7004ccb', 'fiber', 2.5, 'as-fed'),
  ('f7e844d3-4e56-437b-a06b-63b0c7004ccb', 'ash', 6.5, 'as-fed'),
  ('f7e844d3-4e56-437b-a06b-63b0c7004ccb', 'moisture', 9, 'as-fed'),
  ('f7e844d3-4e56-437b-a06b-63b0c7004ccb', 'kcal', 409, 'as-fed'),
  ('f7e844d3-4e56-437b-a06b-63b0c7004ccb', 'calcium', 1.4, 'as-fed'),
  ('f7e844d3-4e56-437b-a06b-63b0c7004ccb', 'phosphorus', 1.1, 'as-fed');

-- Prins Petfoods — Fit Selection Salmon & Rice (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/fit-selection/salmon-rice-2kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 4030 kcal/kg naar 403 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = 'bc2ea889-a59c-40af-97af-b5778d0ff9a2';
delete from public.recipe_nutrition where recipe_version_id = 'bc2ea889-a59c-40af-97af-b5778d0ff9a2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('bc2ea889-a59c-40af-97af-b5778d0ff9a2', 'protein', 25, 'as-fed'),
  ('bc2ea889-a59c-40af-97af-b5778d0ff9a2', 'fat', 15, 'as-fed'),
  ('bc2ea889-a59c-40af-97af-b5778d0ff9a2', 'fiber', 2, 'as-fed'),
  ('bc2ea889-a59c-40af-97af-b5778d0ff9a2', 'ash', 7, 'as-fed'),
  ('bc2ea889-a59c-40af-97af-b5778d0ff9a2', 'moisture', 9, 'as-fed'),
  ('bc2ea889-a59c-40af-97af-b5778d0ff9a2', 'kcal', 403, 'as-fed'),
  ('bc2ea889-a59c-40af-97af-b5778d0ff9a2', 'calcium', 1.4, 'as-fed'),
  ('bc2ea889-a59c-40af-97af-b5778d0ff9a2', 'phosphorus', 1.1, 'as-fed');

-- Prins Petfoods — Fit Selection Senior (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/fit-selection/senior-2kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3880 kcal/kg naar 388 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '50887786-b1d6-4689-906c-9c74ca2fe88a';
delete from public.recipe_nutrition where recipe_version_id = '50887786-b1d6-4689-906c-9c74ca2fe88a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('50887786-b1d6-4689-906c-9c74ca2fe88a', 'protein', 21, 'as-fed'),
  ('50887786-b1d6-4689-906c-9c74ca2fe88a', 'fat', 12, 'as-fed'),
  ('50887786-b1d6-4689-906c-9c74ca2fe88a', 'fiber', 2, 'as-fed'),
  ('50887786-b1d6-4689-906c-9c74ca2fe88a', 'ash', 7, 'as-fed'),
  ('50887786-b1d6-4689-906c-9c74ca2fe88a', 'moisture', 9, 'as-fed'),
  ('50887786-b1d6-4689-906c-9c74ca2fe88a', 'kcal', 388, 'as-fed'),
  ('50887786-b1d6-4689-906c-9c74ca2fe88a', 'calcium', 1.3, 'as-fed'),
  ('50887786-b1d6-4689-906c-9c74ca2fe88a', 'phosphorus', 0.9, 'as-fed');

-- Prins Petfoods — FreshCare Chicken (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/freshcare/chicken-750g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 1826 kcal/kg naar 182,6 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = 'b8493bbd-c777-4c8c-bad9-1f7035832139';
delete from public.recipe_nutrition where recipe_version_id = 'b8493bbd-c777-4c8c-bad9-1f7035832139';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b8493bbd-c777-4c8c-bad9-1f7035832139', 'protein', 12.2, 'as-fed'),
  ('b8493bbd-c777-4c8c-bad9-1f7035832139', 'fat', 11.8, 'as-fed'),
  ('b8493bbd-c777-4c8c-bad9-1f7035832139', 'fiber', 1.2, 'as-fed'),
  ('b8493bbd-c777-4c8c-bad9-1f7035832139', 'ash', 2.8, 'as-fed'),
  ('b8493bbd-c777-4c8c-bad9-1f7035832139', 'moisture', 63.9, 'as-fed'),
  ('b8493bbd-c777-4c8c-bad9-1f7035832139', 'kcal', 182.6, 'as-fed'),
  ('b8493bbd-c777-4c8c-bad9-1f7035832139', 'calcium', 0.62, 'as-fed'),
  ('b8493bbd-c777-4c8c-bad9-1f7035832139', 'phosphorus', 0.49, 'as-fed');

-- Prins Petfoods — FreshCare Duck (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/freshcare/duck-schijven-750g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 1960 kcal/kg naar 196 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '095b76b5-be18-4c50-ba1f-e0c8203c2d3a';
delete from public.recipe_nutrition where recipe_version_id = '095b76b5-be18-4c50-ba1f-e0c8203c2d3a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('095b76b5-be18-4c50-ba1f-e0c8203c2d3a', 'protein', 12.5, 'as-fed'),
  ('095b76b5-be18-4c50-ba1f-e0c8203c2d3a', 'fat', 15.2, 'as-fed'),
  ('095b76b5-be18-4c50-ba1f-e0c8203c2d3a', 'fiber', 1, 'as-fed'),
  ('095b76b5-be18-4c50-ba1f-e0c8203c2d3a', 'ash', 3.2, 'as-fed'),
  ('095b76b5-be18-4c50-ba1f-e0c8203c2d3a', 'moisture', 65.8, 'as-fed'),
  ('095b76b5-be18-4c50-ba1f-e0c8203c2d3a', 'kcal', 196, 'as-fed'),
  ('095b76b5-be18-4c50-ba1f-e0c8203c2d3a', 'calcium', 0.8, 'as-fed'),
  ('095b76b5-be18-4c50-ba1f-e0c8203c2d3a', 'phosphorus', 0.48, 'as-fed');

-- Prins Petfoods — FreshCare Horse (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/freshcare/horse-schijven-750g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 1451 kcal/kg naar 145,1 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '4dea4981-caed-4bf6-859a-b2303a42d93b';
delete from public.recipe_nutrition where recipe_version_id = '4dea4981-caed-4bf6-859a-b2303a42d93b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4dea4981-caed-4bf6-859a-b2303a42d93b', 'protein', 13.2, 'as-fed'),
  ('4dea4981-caed-4bf6-859a-b2303a42d93b', 'fat', 9.1, 'as-fed'),
  ('4dea4981-caed-4bf6-859a-b2303a42d93b', 'fiber', 1.2, 'as-fed'),
  ('4dea4981-caed-4bf6-859a-b2303a42d93b', 'ash', 2.6, 'as-fed'),
  ('4dea4981-caed-4bf6-859a-b2303a42d93b', 'moisture', 69.5, 'as-fed'),
  ('4dea4981-caed-4bf6-859a-b2303a42d93b', 'kcal', 145.1, 'as-fed'),
  ('4dea4981-caed-4bf6-859a-b2303a42d93b', 'calcium', 0.41, 'as-fed'),
  ('4dea4981-caed-4bf6-859a-b2303a42d93b', 'phosphorus', 0.37, 'as-fed');

-- Prins Petfoods — FreshCare Lamb (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/freshcare/lamb-schijven-750g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 1737 kcal/kg naar 173,7 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '47587e76-bead-4b51-9c1f-dfde6041e891';
delete from public.recipe_nutrition where recipe_version_id = '47587e76-bead-4b51-9c1f-dfde6041e891';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('47587e76-bead-4b51-9c1f-dfde6041e891', 'protein', 13.7, 'as-fed'),
  ('47587e76-bead-4b51-9c1f-dfde6041e891', 'fat', 9.7, 'as-fed'),
  ('47587e76-bead-4b51-9c1f-dfde6041e891', 'fiber', 1.2, 'as-fed'),
  ('47587e76-bead-4b51-9c1f-dfde6041e891', 'ash', 2.7, 'as-fed'),
  ('47587e76-bead-4b51-9c1f-dfde6041e891', 'moisture', 64.8, 'as-fed'),
  ('47587e76-bead-4b51-9c1f-dfde6041e891', 'kcal', 173.7, 'as-fed'),
  ('47587e76-bead-4b51-9c1f-dfde6041e891', 'calcium', 0.54, 'as-fed'),
  ('47587e76-bead-4b51-9c1f-dfde6041e891', 'phosphorus', 0.44, 'as-fed');

-- Prins Petfoods — NatureCare Diet Dog Weight Reduction & Diabetic (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/naturecare-diet-dog/weight-reduction-diabetic-400g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 795 kcal/kg naar 79,5 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '1e3276b4-e5a9-4254-a336-093a297ba37a';
delete from public.recipe_nutrition where recipe_version_id = '1e3276b4-e5a9-4254-a336-093a297ba37a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1e3276b4-e5a9-4254-a336-093a297ba37a', 'protein', 10.3, 'as-fed'),
  ('1e3276b4-e5a9-4254-a336-093a297ba37a', 'fat', 3.5, 'as-fed'),
  ('1e3276b4-e5a9-4254-a336-093a297ba37a', 'fiber', 2.5, 'as-fed'),
  ('1e3276b4-e5a9-4254-a336-093a297ba37a', 'ash', 2, 'as-fed'),
  ('1e3276b4-e5a9-4254-a336-093a297ba37a', 'moisture', 80, 'as-fed'),
  ('1e3276b4-e5a9-4254-a336-093a297ba37a', 'kcal', 79.5, 'as-fed'),
  ('1e3276b4-e5a9-4254-a336-093a297ba37a', 'calcium', 0.3, 'as-fed'),
  ('1e3276b4-e5a9-4254-a336-093a297ba37a', 'phosphorus', 0.2, 'as-fed');

-- Prins Petfoods — NatureCare Diet Struvite & Calcium Oxalate (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/naturecare-diet-dog/struvite-calciumoxalate-400g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 1253 kcal/kg naar 125,3 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '8d476269-4363-44f6-b4b6-721dfdb309db';
delete from public.recipe_nutrition where recipe_version_id = '8d476269-4363-44f6-b4b6-721dfdb309db';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8d476269-4363-44f6-b4b6-721dfdb309db', 'protein', 7.4, 'as-fed'),
  ('8d476269-4363-44f6-b4b6-721dfdb309db', 'fat', 6.5, 'as-fed'),
  ('8d476269-4363-44f6-b4b6-721dfdb309db', 'fiber', 0.3, 'as-fed'),
  ('8d476269-4363-44f6-b4b6-721dfdb309db', 'ash', 1.5, 'as-fed'),
  ('8d476269-4363-44f6-b4b6-721dfdb309db', 'moisture', 75, 'as-fed'),
  ('8d476269-4363-44f6-b4b6-721dfdb309db', 'kcal', 125.3, 'as-fed'),
  ('8d476269-4363-44f6-b4b6-721dfdb309db', 'calcium', 0.16, 'as-fed'),
  ('8d476269-4363-44f6-b4b6-721dfdb309db', 'phosphorus', 0.13, 'as-fed');

-- Prins Petfoods — NatureCare Dog Chicken (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/naturecare-dog/chicken-250g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 1853 kcal/kg naar 185,3 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '81849fb8-2e5c-4196-b49f-fd737312fe2e';
delete from public.recipe_nutrition where recipe_version_id = '81849fb8-2e5c-4196-b49f-fd737312fe2e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('81849fb8-2e5c-4196-b49f-fd737312fe2e', 'protein', 15, 'as-fed'),
  ('81849fb8-2e5c-4196-b49f-fd737312fe2e', 'fat', 10.5, 'as-fed'),
  ('81849fb8-2e5c-4196-b49f-fd737312fe2e', 'fiber', 1, 'as-fed'),
  ('81849fb8-2e5c-4196-b49f-fd737312fe2e', 'ash', 0.8, 'as-fed'),
  ('81849fb8-2e5c-4196-b49f-fd737312fe2e', 'moisture', 65, 'as-fed'),
  ('81849fb8-2e5c-4196-b49f-fd737312fe2e', 'kcal', 185.3, 'as-fed'),
  ('81849fb8-2e5c-4196-b49f-fd737312fe2e', 'calcium', 0.5, 'as-fed'),
  ('81849fb8-2e5c-4196-b49f-fd737312fe2e', 'phosphorus', 0.4, 'as-fed');

-- Prins Petfoods — NatureCare Dog Lamb (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/naturecare-dog/lamb-250g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 1425 kcal/kg naar 142,5 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = 'df458aeb-afc1-49f9-bdbd-01287f636fbd';
delete from public.recipe_nutrition where recipe_version_id = 'df458aeb-afc1-49f9-bdbd-01287f636fbd';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('df458aeb-afc1-49f9-bdbd-01287f636fbd', 'protein', 15, 'as-fed'),
  ('df458aeb-afc1-49f9-bdbd-01287f636fbd', 'fat', 6.5, 'as-fed'),
  ('df458aeb-afc1-49f9-bdbd-01287f636fbd', 'fiber', 1.5, 'as-fed'),
  ('df458aeb-afc1-49f9-bdbd-01287f636fbd', 'ash', 1, 'as-fed'),
  ('df458aeb-afc1-49f9-bdbd-01287f636fbd', 'moisture', 70, 'as-fed'),
  ('df458aeb-afc1-49f9-bdbd-01287f636fbd', 'kcal', 142.5, 'as-fed'),
  ('df458aeb-afc1-49f9-bdbd-01287f636fbd', 'calcium', 0.4, 'as-fed'),
  ('df458aeb-afc1-49f9-bdbd-01287f636fbd', 'phosphorus', 0.3, 'as-fed');

-- Prins Petfoods — NatureCare Dog Turkey (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/naturecare-dog/turkey-250g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 1903 kcal/kg naar 190,3 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = 'a2926028-a9ef-4154-8e3a-a66b38fcf113';
delete from public.recipe_nutrition where recipe_version_id = 'a2926028-a9ef-4154-8e3a-a66b38fcf113';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a2926028-a9ef-4154-8e3a-a66b38fcf113', 'protein', 17.5, 'as-fed'),
  ('a2926028-a9ef-4154-8e3a-a66b38fcf113', 'fat', 9.5, 'as-fed'),
  ('a2926028-a9ef-4154-8e3a-a66b38fcf113', 'fiber', 0.4, 'as-fed'),
  ('a2926028-a9ef-4154-8e3a-a66b38fcf113', 'ash', 0.9, 'as-fed'),
  ('a2926028-a9ef-4154-8e3a-a66b38fcf113', 'moisture', 63, 'as-fed'),
  ('a2926028-a9ef-4154-8e3a-a66b38fcf113', 'kcal', 190.3, 'as-fed'),
  ('a2926028-a9ef-4154-8e3a-a66b38fcf113', 'calcium', 0.5, 'as-fed'),
  ('a2926028-a9ef-4154-8e3a-a66b38fcf113', 'phosphorus', 0.4, 'as-fed');

-- Prins Petfoods — NatureCare Veterinary Diet Hypoallergic Lamb (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/naturecare-diet-dog/hypoallergenic-lamb-400g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 852 kcal/kg naar 85,2 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '55764ddb-7838-48f0-a579-b3a3857312a3';
delete from public.recipe_nutrition where recipe_version_id = '55764ddb-7838-48f0-a579-b3a3857312a3';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('55764ddb-7838-48f0-a579-b3a3857312a3', 'protein', 8, 'as-fed'),
  ('55764ddb-7838-48f0-a579-b3a3857312a3', 'fat', 5.5, 'as-fed'),
  ('55764ddb-7838-48f0-a579-b3a3857312a3', 'fiber', 0.5, 'as-fed'),
  ('55764ddb-7838-48f0-a579-b3a3857312a3', 'ash', 2, 'as-fed'),
  ('55764ddb-7838-48f0-a579-b3a3857312a3', 'moisture', 81, 'as-fed'),
  ('55764ddb-7838-48f0-a579-b3a3857312a3', 'kcal', 85.2, 'as-fed'),
  ('55764ddb-7838-48f0-a579-b3a3857312a3', 'calcium', 0.4, 'as-fed'),
  ('55764ddb-7838-48f0-a579-b3a3857312a3', 'phosphorus', 0.27, 'as-fed');

-- Prins Petfoods — NatureCare Veterinary Diet Mobility (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/naturecare-diet-dog/mobility-400g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 1139 kcal/kg naar 113,9 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '88acfe02-7116-4049-a517-8876dfb6b39b';
delete from public.recipe_nutrition where recipe_version_id = '88acfe02-7116-4049-a517-8876dfb6b39b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('88acfe02-7116-4049-a517-8876dfb6b39b', 'protein', 11, 'as-fed'),
  ('88acfe02-7116-4049-a517-8876dfb6b39b', 'fat', 5.5, 'as-fed'),
  ('88acfe02-7116-4049-a517-8876dfb6b39b', 'fiber', 0.3, 'as-fed'),
  ('88acfe02-7116-4049-a517-8876dfb6b39b', 'ash', 2.1, 'as-fed'),
  ('88acfe02-7116-4049-a517-8876dfb6b39b', 'moisture', 76, 'as-fed'),
  ('88acfe02-7116-4049-a517-8876dfb6b39b', 'kcal', 113.9, 'as-fed'),
  ('88acfe02-7116-4049-a517-8876dfb6b39b', 'calcium', 0.2, 'as-fed'),
  ('88acfe02-7116-4049-a517-8876dfb6b39b', 'phosphorus', 0.1, 'as-fed');

-- Prins Petfoods — ProCare Croque Basic Excellent (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-croque/basic-excellent-10kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3820 kcal/kg naar 382 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '4df021b6-b86b-484b-b7e9-46170d076eb5';
delete from public.recipe_nutrition where recipe_version_id = '4df021b6-b86b-484b-b7e9-46170d076eb5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4df021b6-b86b-484b-b7e9-46170d076eb5', 'protein', 24, 'as-fed'),
  ('4df021b6-b86b-484b-b7e9-46170d076eb5', 'fat', 12, 'as-fed'),
  ('4df021b6-b86b-484b-b7e9-46170d076eb5', 'fiber', 3.5, 'as-fed'),
  ('4df021b6-b86b-484b-b7e9-46170d076eb5', 'ash', 7, 'as-fed'),
  ('4df021b6-b86b-484b-b7e9-46170d076eb5', 'moisture', 9, 'as-fed'),
  ('4df021b6-b86b-484b-b7e9-46170d076eb5', 'kcal', 382, 'as-fed'),
  ('4df021b6-b86b-484b-b7e9-46170d076eb5', 'calcium', 1.2, 'as-fed'),
  ('4df021b6-b86b-484b-b7e9-46170d076eb5', 'phosphorus', 0.8, 'as-fed');

-- Prins Petfoods — ProCare Croque Diet Gastro-Intestinal (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/diet-croque/gastro-intestinal-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3714 kcal/kg naar 371,4 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-6.'
 where id = 'e02b715d-1ee3-47ec-8651-f6fa09fb3d09';
delete from public.recipe_nutrition where recipe_version_id = 'e02b715d-1ee3-47ec-8651-f6fa09fb3d09';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e02b715d-1ee3-47ec-8651-f6fa09fb3d09', 'protein', 22, 'as-fed'),
  ('e02b715d-1ee3-47ec-8651-f6fa09fb3d09', 'fat', 7, 'as-fed'),
  ('e02b715d-1ee3-47ec-8651-f6fa09fb3d09', 'fiber', 1.8, 'as-fed'),
  ('e02b715d-1ee3-47ec-8651-f6fa09fb3d09', 'ash', 6.1, 'as-fed'),
  ('e02b715d-1ee3-47ec-8651-f6fa09fb3d09', 'moisture', 8, 'as-fed'),
  ('e02b715d-1ee3-47ec-8651-f6fa09fb3d09', 'kcal', 371.4, 'as-fed'),
  ('e02b715d-1ee3-47ec-8651-f6fa09fb3d09', 'calcium', 0.6, 'as-fed'),
  ('e02b715d-1ee3-47ec-8651-f6fa09fb3d09', 'phosphorus', 0.5, 'as-fed'),
  ('e02b715d-1ee3-47ec-8651-f6fa09fb3d09', 'omega3', 0.86, 'as-fed');

-- Prins Petfoods — ProCare Croque Diet Mobility (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/diet-croque/mobility-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3975 kcal/kg naar 397,5 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-6.'
 where id = 'bc8eb962-abdd-4f0f-9c70-b7a5d3482863';
delete from public.recipe_nutrition where recipe_version_id = 'bc8eb962-abdd-4f0f-9c70-b7a5d3482863';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('bc8eb962-abdd-4f0f-9c70-b7a5d3482863', 'protein', 22, 'as-fed'),
  ('bc8eb962-abdd-4f0f-9c70-b7a5d3482863', 'fat', 13.5, 'as-fed'),
  ('bc8eb962-abdd-4f0f-9c70-b7a5d3482863', 'fiber', 3.5, 'as-fed'),
  ('bc8eb962-abdd-4f0f-9c70-b7a5d3482863', 'ash', 6, 'as-fed'),
  ('bc8eb962-abdd-4f0f-9c70-b7a5d3482863', 'moisture', 8, 'as-fed'),
  ('bc8eb962-abdd-4f0f-9c70-b7a5d3482863', 'kcal', 397.5, 'as-fed'),
  ('bc8eb962-abdd-4f0f-9c70-b7a5d3482863', 'calcium', 1, 'as-fed'),
  ('bc8eb962-abdd-4f0f-9c70-b7a5d3482863', 'phosphorus', 0.7, 'as-fed'),
  ('bc8eb962-abdd-4f0f-9c70-b7a5d3482863', 'omega3', 3, 'as-fed');

-- Prins Petfoods — ProCare Croque Diet Renal & Liver Support (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/diet-croque/renal-liver-support-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3997 kcal/kg naar 399,7 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '252a1adc-756d-45df-ad2e-4897226aaf33';
delete from public.recipe_nutrition where recipe_version_id = '252a1adc-756d-45df-ad2e-4897226aaf33';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('252a1adc-756d-45df-ad2e-4897226aaf33', 'protein', 18, 'as-fed'),
  ('252a1adc-756d-45df-ad2e-4897226aaf33', 'fat', 17, 'as-fed'),
  ('252a1adc-756d-45df-ad2e-4897226aaf33', 'fiber', 2.6, 'as-fed'),
  ('252a1adc-756d-45df-ad2e-4897226aaf33', 'ash', 3.9, 'as-fed'),
  ('252a1adc-756d-45df-ad2e-4897226aaf33', 'moisture', 8, 'as-fed'),
  ('252a1adc-756d-45df-ad2e-4897226aaf33', 'kcal', 399.7, 'as-fed'),
  ('252a1adc-756d-45df-ad2e-4897226aaf33', 'calcium', 0.5, 'as-fed'),
  ('252a1adc-756d-45df-ad2e-4897226aaf33', 'phosphorus', 0.4, 'as-fed');

-- Prins Petfoods — ProCare Croque Diet Skin Support (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/diet-croque/skin-intestinal-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3794 kcal/kg naar 379,4 kcal/100 g (delen door 10). Omega-6 overgenomen uit de op de pagina vermelde linolzuurwaarde; linolzuur is een omega-6-vetzuur. Niet vermeld op de bron: omega-3 (alleen EPA & DHA als deelwaarde vermeld).'
 where id = 'a062fe81-25ca-4048-9509-6122274a1b2f';
delete from public.recipe_nutrition where recipe_version_id = 'a062fe81-25ca-4048-9509-6122274a1b2f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a062fe81-25ca-4048-9509-6122274a1b2f', 'protein', 23, 'as-fed'),
  ('a062fe81-25ca-4048-9509-6122274a1b2f', 'fat', 15, 'as-fed'),
  ('a062fe81-25ca-4048-9509-6122274a1b2f', 'fiber', 2.7, 'as-fed'),
  ('a062fe81-25ca-4048-9509-6122274a1b2f', 'ash', 7.3, 'as-fed'),
  ('a062fe81-25ca-4048-9509-6122274a1b2f', 'moisture', 8, 'as-fed'),
  ('a062fe81-25ca-4048-9509-6122274a1b2f', 'kcal', 379.4, 'as-fed'),
  ('a062fe81-25ca-4048-9509-6122274a1b2f', 'calcium', 1.2, 'as-fed'),
  ('a062fe81-25ca-4048-9509-6122274a1b2f', 'phosphorus', 1, 'as-fed'),
  ('a062fe81-25ca-4048-9509-6122274a1b2f', 'omega6', 1.7, 'as-fed');

-- Prins Petfoods — ProCare Croque Diet Urinary (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/diet-croque/urinary-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 4396 kcal/kg naar 439,6 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '748b5bbd-62f4-4ae2-9cf1-d77a78338ed2';
delete from public.recipe_nutrition where recipe_version_id = '748b5bbd-62f4-4ae2-9cf1-d77a78338ed2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('748b5bbd-62f4-4ae2-9cf1-d77a78338ed2', 'protein', 18, 'as-fed'),
  ('748b5bbd-62f4-4ae2-9cf1-d77a78338ed2', 'fat', 18, 'as-fed'),
  ('748b5bbd-62f4-4ae2-9cf1-d77a78338ed2', 'fiber', 1.5, 'as-fed'),
  ('748b5bbd-62f4-4ae2-9cf1-d77a78338ed2', 'ash', 3.1, 'as-fed'),
  ('748b5bbd-62f4-4ae2-9cf1-d77a78338ed2', 'moisture', 8, 'as-fed'),
  ('748b5bbd-62f4-4ae2-9cf1-d77a78338ed2', 'kcal', 439.6, 'as-fed'),
  ('748b5bbd-62f4-4ae2-9cf1-d77a78338ed2', 'calcium', 0.4, 'as-fed'),
  ('748b5bbd-62f4-4ae2-9cf1-d77a78338ed2', 'phosphorus', 0.4, 'as-fed');

-- Prins Petfoods — ProCare Croque Diet Weight Reduction & Diabetic (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/diet-croque/weight-reduction-diabetic-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 2697 kcal/kg naar 269,7 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '688a0034-689a-4379-ae53-fb3d1b5eeeba';
delete from public.recipe_nutrition where recipe_version_id = '688a0034-689a-4379-ae53-fb3d1b5eeeba';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('688a0034-689a-4379-ae53-fb3d1b5eeeba', 'protein', 30, 'as-fed'),
  ('688a0034-689a-4379-ae53-fb3d1b5eeeba', 'fat', 10, 'as-fed'),
  ('688a0034-689a-4379-ae53-fb3d1b5eeeba', 'fiber', 16, 'as-fed'),
  ('688a0034-689a-4379-ae53-fb3d1b5eeeba', 'ash', 6, 'as-fed'),
  ('688a0034-689a-4379-ae53-fb3d1b5eeeba', 'moisture', 8, 'as-fed'),
  ('688a0034-689a-4379-ae53-fb3d1b5eeeba', 'kcal', 269.7, 'as-fed'),
  ('688a0034-689a-4379-ae53-fb3d1b5eeeba', 'calcium', 1.1, 'as-fed'),
  ('688a0034-689a-4379-ae53-fb3d1b5eeeba', 'phosphorus', 0.7, 'as-fed');

-- Prins Petfoods — ProCare Croque Lamb & Rice (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-croque/lamb-rice-10kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3890 kcal/kg naar 389 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '4299d2e0-fc69-4d33-bb3e-db2cb10b1bb3';
delete from public.recipe_nutrition where recipe_version_id = '4299d2e0-fc69-4d33-bb3e-db2cb10b1bb3';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4299d2e0-fc69-4d33-bb3e-db2cb10b1bb3', 'protein', 18, 'as-fed'),
  ('4299d2e0-fc69-4d33-bb3e-db2cb10b1bb3', 'fat', 13, 'as-fed'),
  ('4299d2e0-fc69-4d33-bb3e-db2cb10b1bb3', 'fiber', 3, 'as-fed'),
  ('4299d2e0-fc69-4d33-bb3e-db2cb10b1bb3', 'ash', 7, 'as-fed'),
  ('4299d2e0-fc69-4d33-bb3e-db2cb10b1bb3', 'moisture', 9, 'as-fed'),
  ('4299d2e0-fc69-4d33-bb3e-db2cb10b1bb3', 'kcal', 389, 'as-fed'),
  ('4299d2e0-fc69-4d33-bb3e-db2cb10b1bb3', 'calcium', 1.3, 'as-fed'),
  ('4299d2e0-fc69-4d33-bb3e-db2cb10b1bb3', 'phosphorus', 0.9, 'as-fed');

-- Prins Petfoods — ProCare Croque Senior Superior (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-croque/senior-superior-10kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3870 kcal/kg naar 387 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = 'f00fa149-2014-4f7b-a547-bb4404a35ee5';
delete from public.recipe_nutrition where recipe_version_id = 'f00fa149-2014-4f7b-a547-bb4404a35ee5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f00fa149-2014-4f7b-a547-bb4404a35ee5', 'protein', 13, 'as-fed'),
  ('f00fa149-2014-4f7b-a547-bb4404a35ee5', 'fat', 13, 'as-fed'),
  ('f00fa149-2014-4f7b-a547-bb4404a35ee5', 'fiber', 4.5, 'as-fed'),
  ('f00fa149-2014-4f7b-a547-bb4404a35ee5', 'ash', 6, 'as-fed'),
  ('f00fa149-2014-4f7b-a547-bb4404a35ee5', 'moisture', 9, 'as-fed'),
  ('f00fa149-2014-4f7b-a547-bb4404a35ee5', 'kcal', 387, 'as-fed'),
  ('f00fa149-2014-4f7b-a547-bb4404a35ee5', 'calcium', 1.2, 'as-fed'),
  ('f00fa149-2014-4f7b-a547-bb4404a35ee5', 'phosphorus', 1, 'as-fed');

-- Prins Petfoods — ProCare Croque Super Performance (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-croque/super-performance-10kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 4090 kcal/kg naar 409 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '9496802d-e0f0-4138-83eb-829d4b06914e';
delete from public.recipe_nutrition where recipe_version_id = '9496802d-e0f0-4138-83eb-829d4b06914e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9496802d-e0f0-4138-83eb-829d4b06914e', 'protein', 24, 'as-fed'),
  ('9496802d-e0f0-4138-83eb-829d4b06914e', 'fat', 17, 'as-fed'),
  ('9496802d-e0f0-4138-83eb-829d4b06914e', 'fiber', 3, 'as-fed'),
  ('9496802d-e0f0-4138-83eb-829d4b06914e', 'ash', 7, 'as-fed'),
  ('9496802d-e0f0-4138-83eb-829d4b06914e', 'moisture', 9, 'as-fed'),
  ('9496802d-e0f0-4138-83eb-829d4b06914e', 'kcal', 409, 'as-fed'),
  ('9496802d-e0f0-4138-83eb-829d4b06914e', 'calcium', 1.4, 'as-fed'),
  ('9496802d-e0f0-4138-83eb-829d4b06914e', 'phosphorus', 1, 'as-fed');

-- Prins Petfoods — ProCare Grainfree Junior & Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-grainfree/adult-pro-energy-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3702 kcal/kg naar 370,2 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '2af5ac5b-51c2-4281-a963-3d7afc6b6164';
delete from public.recipe_nutrition where recipe_version_id = '2af5ac5b-51c2-4281-a963-3d7afc6b6164';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2af5ac5b-51c2-4281-a963-3d7afc6b6164', 'protein', 26, 'as-fed'),
  ('2af5ac5b-51c2-4281-a963-3d7afc6b6164', 'fat', 15, 'as-fed'),
  ('2af5ac5b-51c2-4281-a963-3d7afc6b6164', 'fiber', 3.5, 'as-fed'),
  ('2af5ac5b-51c2-4281-a963-3d7afc6b6164', 'ash', 7.5, 'as-fed'),
  ('2af5ac5b-51c2-4281-a963-3d7afc6b6164', 'moisture', 9, 'as-fed'),
  ('2af5ac5b-51c2-4281-a963-3d7afc6b6164', 'kcal', 370.2, 'as-fed'),
  ('2af5ac5b-51c2-4281-a963-3d7afc6b6164', 'calcium', 1.2, 'as-fed'),
  ('2af5ac5b-51c2-4281-a963-3d7afc6b6164', 'phosphorus', 0.8, 'as-fed');

-- Prins Petfoods — ProCare Grainfree Senior Fit (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-grainfree/senior-fit-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3701 kcal/kg naar 370,1 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = 'ce3f1ad7-6364-4fbb-ad07-b31bb634e7fb';
delete from public.recipe_nutrition where recipe_version_id = 'ce3f1ad7-6364-4fbb-ad07-b31bb634e7fb';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ce3f1ad7-6364-4fbb-ad07-b31bb634e7fb', 'protein', 21.5, 'as-fed'),
  ('ce3f1ad7-6364-4fbb-ad07-b31bb634e7fb', 'fat', 13, 'as-fed'),
  ('ce3f1ad7-6364-4fbb-ad07-b31bb634e7fb', 'fiber', 3.5, 'as-fed'),
  ('ce3f1ad7-6364-4fbb-ad07-b31bb634e7fb', 'ash', 4.5, 'as-fed'),
  ('ce3f1ad7-6364-4fbb-ad07-b31bb634e7fb', 'moisture', 9, 'as-fed'),
  ('ce3f1ad7-6364-4fbb-ad07-b31bb634e7fb', 'kcal', 370.1, 'as-fed'),
  ('ce3f1ad7-6364-4fbb-ad07-b31bb634e7fb', 'calcium', 0.7, 'as-fed'),
  ('ce3f1ad7-6364-4fbb-ad07-b31bb634e7fb', 'phosphorus', 0.6, 'as-fed');

-- Prins Petfoods — ProCare Grainfree Sensible (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-grainfree/sensible-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3489 kcal/kg naar 348,9 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '409aa73a-25b1-48b6-a3c6-f219ada79494';
delete from public.recipe_nutrition where recipe_version_id = '409aa73a-25b1-48b6-a3c6-f219ada79494';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('409aa73a-25b1-48b6-a3c6-f219ada79494', 'protein', 25, 'as-fed'),
  ('409aa73a-25b1-48b6-a3c6-f219ada79494', 'fat', 10, 'as-fed'),
  ('409aa73a-25b1-48b6-a3c6-f219ada79494', 'fiber', 3.5, 'as-fed'),
  ('409aa73a-25b1-48b6-a3c6-f219ada79494', 'ash', 7, 'as-fed'),
  ('409aa73a-25b1-48b6-a3c6-f219ada79494', 'moisture', 9, 'as-fed'),
  ('409aa73a-25b1-48b6-a3c6-f219ada79494', 'kcal', 348.9, 'as-fed'),
  ('409aa73a-25b1-48b6-a3c6-f219ada79494', 'calcium', 1.4, 'as-fed'),
  ('409aa73a-25b1-48b6-a3c6-f219ada79494', 'phosphorus', 0.9, 'as-fed');

-- Prins Petfoods — ProCare Grainfree Skin & Coat (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-grainfree/skin-coat-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3476 kcal/kg naar 347,6 kcal/100 g (delen door 10). Omega-6 overgenomen uit de op de pagina vermelde linolzuurwaarde; linolzuur is een omega-6-vetzuur. Niet vermeld op de bron: omega-3.'
 where id = '2f241c5e-1759-4b38-a580-77e5bc514b73';
delete from public.recipe_nutrition where recipe_version_id = '2f241c5e-1759-4b38-a580-77e5bc514b73';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2f241c5e-1759-4b38-a580-77e5bc514b73', 'protein', 26.5, 'as-fed'),
  ('2f241c5e-1759-4b38-a580-77e5bc514b73', 'fat', 10, 'as-fed'),
  ('2f241c5e-1759-4b38-a580-77e5bc514b73', 'fiber', 3.5, 'as-fed'),
  ('2f241c5e-1759-4b38-a580-77e5bc514b73', 'ash', 7.5, 'as-fed'),
  ('2f241c5e-1759-4b38-a580-77e5bc514b73', 'moisture', 9, 'as-fed'),
  ('2f241c5e-1759-4b38-a580-77e5bc514b73', 'kcal', 347.6, 'as-fed'),
  ('2f241c5e-1759-4b38-a580-77e5bc514b73', 'calcium', 1.3, 'as-fed'),
  ('2f241c5e-1759-4b38-a580-77e5bc514b73', 'phosphorus', 0.9, 'as-fed'),
  ('2f241c5e-1759-4b38-a580-77e5bc514b73', 'omega6', 2.2, 'as-fed');

-- Prins Petfoods — ProCare Herring & Rice (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare/herring-rice-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3482 kcal/kg naar 348,2 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = 'de2b15d4-87e4-4c44-a99e-2092c53e2958';
delete from public.recipe_nutrition where recipe_version_id = 'de2b15d4-87e4-4c44-a99e-2092c53e2958';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('de2b15d4-87e4-4c44-a99e-2092c53e2958', 'protein', 24, 'as-fed'),
  ('de2b15d4-87e4-4c44-a99e-2092c53e2958', 'fat', 11, 'as-fed'),
  ('de2b15d4-87e4-4c44-a99e-2092c53e2958', 'fiber', 5, 'as-fed'),
  ('de2b15d4-87e4-4c44-a99e-2092c53e2958', 'ash', 6.5, 'as-fed'),
  ('de2b15d4-87e4-4c44-a99e-2092c53e2958', 'moisture', 8, 'as-fed'),
  ('de2b15d4-87e4-4c44-a99e-2092c53e2958', 'kcal', 348.2, 'as-fed'),
  ('de2b15d4-87e4-4c44-a99e-2092c53e2958', 'calcium', 0.9, 'as-fed'),
  ('de2b15d4-87e4-4c44-a99e-2092c53e2958', 'phosphorus', 0.7, 'as-fed');

-- Prins Petfoods — ProCare Insect & Rice (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare/insect-rice-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3591 kcal/kg naar 359,1 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '4759ff8a-b355-4496-afe9-e492f6a9a043';
delete from public.recipe_nutrition where recipe_version_id = '4759ff8a-b355-4496-afe9-e492f6a9a043';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4759ff8a-b355-4496-afe9-e492f6a9a043', 'protein', 22.5, 'as-fed'),
  ('4759ff8a-b355-4496-afe9-e492f6a9a043', 'fat', 12, 'as-fed'),
  ('4759ff8a-b355-4496-afe9-e492f6a9a043', 'fiber', 4.5, 'as-fed'),
  ('4759ff8a-b355-4496-afe9-e492f6a9a043', 'ash', 5.5, 'as-fed'),
  ('4759ff8a-b355-4496-afe9-e492f6a9a043', 'moisture', 8, 'as-fed'),
  ('4759ff8a-b355-4496-afe9-e492f6a9a043', 'kcal', 359.1, 'as-fed'),
  ('4759ff8a-b355-4496-afe9-e492f6a9a043', 'calcium', 1, 'as-fed'),
  ('4759ff8a-b355-4496-afe9-e492f6a9a043', 'phosphorus', 0.9, 'as-fed');

-- Prins Petfoods — ProCare Lamb & Rice (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare/lamb-rice-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3530 kcal/kg naar 353 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '30a2f260-30a7-4689-9a35-53c0217a8c1a';
delete from public.recipe_nutrition where recipe_version_id = '30a2f260-30a7-4689-9a35-53c0217a8c1a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('30a2f260-30a7-4689-9a35-53c0217a8c1a', 'protein', 19.5, 'as-fed'),
  ('30a2f260-30a7-4689-9a35-53c0217a8c1a', 'fat', 12, 'as-fed'),
  ('30a2f260-30a7-4689-9a35-53c0217a8c1a', 'fiber', 5, 'as-fed'),
  ('30a2f260-30a7-4689-9a35-53c0217a8c1a', 'ash', 6, 'as-fed'),
  ('30a2f260-30a7-4689-9a35-53c0217a8c1a', 'moisture', 8, 'as-fed'),
  ('30a2f260-30a7-4689-9a35-53c0217a8c1a', 'kcal', 353, 'as-fed'),
  ('30a2f260-30a7-4689-9a35-53c0217a8c1a', 'calcium', 1.5, 'as-fed'),
  ('30a2f260-30a7-4689-9a35-53c0217a8c1a', 'phosphorus', 0.9, 'as-fed');

-- Prins Petfoods — ProCare Lamb & Rice Senior (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare/lamb-rice-senior-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3543 kcal/kg naar 354,3 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = 'a2a96aef-4589-4725-b3ff-b56736bee4df';
delete from public.recipe_nutrition where recipe_version_id = 'a2a96aef-4589-4725-b3ff-b56736bee4df';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a2a96aef-4589-4725-b3ff-b56736bee4df', 'protein', 20, 'as-fed'),
  ('a2a96aef-4589-4725-b3ff-b56736bee4df', 'fat', 11.5, 'as-fed'),
  ('a2a96aef-4589-4725-b3ff-b56736bee4df', 'fiber', 5, 'as-fed'),
  ('a2a96aef-4589-4725-b3ff-b56736bee4df', 'ash', 5, 'as-fed'),
  ('a2a96aef-4589-4725-b3ff-b56736bee4df', 'moisture', 8, 'as-fed'),
  ('a2a96aef-4589-4725-b3ff-b56736bee4df', 'kcal', 354.3, 'as-fed'),
  ('a2a96aef-4589-4725-b3ff-b56736bee4df', 'calcium', 0.8, 'as-fed'),
  ('a2a96aef-4589-4725-b3ff-b56736bee4df', 'phosphorus', 0.7, 'as-fed');

-- Prins Petfoods — ProCare Light Low calorie (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare/light-low-calorie-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 2927 kcal/kg naar 292,7 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '256315d9-bf0e-432a-8af1-eedbee019ff0';
delete from public.recipe_nutrition where recipe_version_id = '256315d9-bf0e-432a-8af1-eedbee019ff0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('256315d9-bf0e-432a-8af1-eedbee019ff0', 'protein', 28, 'as-fed'),
  ('256315d9-bf0e-432a-8af1-eedbee019ff0', 'fat', 8.5, 'as-fed'),
  ('256315d9-bf0e-432a-8af1-eedbee019ff0', 'fiber', 11, 'as-fed'),
  ('256315d9-bf0e-432a-8af1-eedbee019ff0', 'ash', 8, 'as-fed'),
  ('256315d9-bf0e-432a-8af1-eedbee019ff0', 'moisture', 8, 'as-fed'),
  ('256315d9-bf0e-432a-8af1-eedbee019ff0', 'kcal', 292.7, 'as-fed'),
  ('256315d9-bf0e-432a-8af1-eedbee019ff0', 'calcium', 1.6, 'as-fed'),
  ('256315d9-bf0e-432a-8af1-eedbee019ff0', 'phosphorus', 1.1, 'as-fed');

-- Prins Petfoods — ProCare Mini Herring & Rice (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-mini/herring-rice-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3482 kcal/kg naar 348,2 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '6cbb9208-3fe5-4ff1-b65b-7daf0988a1d4';
delete from public.recipe_nutrition where recipe_version_id = '6cbb9208-3fe5-4ff1-b65b-7daf0988a1d4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6cbb9208-3fe5-4ff1-b65b-7daf0988a1d4', 'protein', 24, 'as-fed'),
  ('6cbb9208-3fe5-4ff1-b65b-7daf0988a1d4', 'fat', 11, 'as-fed'),
  ('6cbb9208-3fe5-4ff1-b65b-7daf0988a1d4', 'fiber', 5, 'as-fed'),
  ('6cbb9208-3fe5-4ff1-b65b-7daf0988a1d4', 'ash', 6.5, 'as-fed'),
  ('6cbb9208-3fe5-4ff1-b65b-7daf0988a1d4', 'moisture', 8, 'as-fed'),
  ('6cbb9208-3fe5-4ff1-b65b-7daf0988a1d4', 'kcal', 348.2, 'as-fed'),
  ('6cbb9208-3fe5-4ff1-b65b-7daf0988a1d4', 'calcium', 0.9, 'as-fed'),
  ('6cbb9208-3fe5-4ff1-b65b-7daf0988a1d4', 'phosphorus', 0.7, 'as-fed');

-- Prins Petfoods — ProCare Mini Lamb & Rice (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-mini/lamb-rice-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3530 kcal/kg naar 353 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = 'ae3dc8dd-31b8-46d5-a399-c2496dd8ab2a';
delete from public.recipe_nutrition where recipe_version_id = 'ae3dc8dd-31b8-46d5-a399-c2496dd8ab2a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ae3dc8dd-31b8-46d5-a399-c2496dd8ab2a', 'protein', 19.5, 'as-fed'),
  ('ae3dc8dd-31b8-46d5-a399-c2496dd8ab2a', 'fat', 12, 'as-fed'),
  ('ae3dc8dd-31b8-46d5-a399-c2496dd8ab2a', 'fiber', 5, 'as-fed'),
  ('ae3dc8dd-31b8-46d5-a399-c2496dd8ab2a', 'ash', 6, 'as-fed'),
  ('ae3dc8dd-31b8-46d5-a399-c2496dd8ab2a', 'moisture', 8, 'as-fed'),
  ('ae3dc8dd-31b8-46d5-a399-c2496dd8ab2a', 'kcal', 353, 'as-fed'),
  ('ae3dc8dd-31b8-46d5-a399-c2496dd8ab2a', 'calcium', 1.5, 'as-fed'),
  ('ae3dc8dd-31b8-46d5-a399-c2496dd8ab2a', 'phosphorus', 0.9, 'as-fed');

-- Prins Petfoods — ProCare Mini Puppy & Junior (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-mini/puppy-junior-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3804 kcal/kg naar 380,4 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '1f6dd7a2-a443-4a67-b934-606b13a1ea96';
delete from public.recipe_nutrition where recipe_version_id = '1f6dd7a2-a443-4a67-b934-606b13a1ea96';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1f6dd7a2-a443-4a67-b934-606b13a1ea96', 'protein', 26.5, 'as-fed'),
  ('1f6dd7a2-a443-4a67-b934-606b13a1ea96', 'fat', 16, 'as-fed'),
  ('1f6dd7a2-a443-4a67-b934-606b13a1ea96', 'fiber', 3.5, 'as-fed'),
  ('1f6dd7a2-a443-4a67-b934-606b13a1ea96', 'ash', 7, 'as-fed'),
  ('1f6dd7a2-a443-4a67-b934-606b13a1ea96', 'moisture', 8, 'as-fed'),
  ('1f6dd7a2-a443-4a67-b934-606b13a1ea96', 'kcal', 380.4, 'as-fed'),
  ('1f6dd7a2-a443-4a67-b934-606b13a1ea96', 'calcium', 1.4, 'as-fed'),
  ('1f6dd7a2-a443-4a67-b934-606b13a1ea96', 'phosphorus', 1, 'as-fed');

-- Prins Petfoods — ProCare Mini Resist Calm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-mini/resist-calm-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3537 kcal/kg naar 353,7 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = 'e4c80b41-4875-42dc-9d36-f2e01e8983dc';
delete from public.recipe_nutrition where recipe_version_id = 'e4c80b41-4875-42dc-9d36-f2e01e8983dc';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e4c80b41-4875-42dc-9d36-f2e01e8983dc', 'protein', 25, 'as-fed'),
  ('e4c80b41-4875-42dc-9d36-f2e01e8983dc', 'fat', 11, 'as-fed'),
  ('e4c80b41-4875-42dc-9d36-f2e01e8983dc', 'fiber', 4, 'as-fed'),
  ('e4c80b41-4875-42dc-9d36-f2e01e8983dc', 'ash', 7, 'as-fed'),
  ('e4c80b41-4875-42dc-9d36-f2e01e8983dc', 'moisture', 8, 'as-fed'),
  ('e4c80b41-4875-42dc-9d36-f2e01e8983dc', 'kcal', 353.7, 'as-fed'),
  ('e4c80b41-4875-42dc-9d36-f2e01e8983dc', 'calcium', 1.3, 'as-fed'),
  ('e4c80b41-4875-42dc-9d36-f2e01e8983dc', 'phosphorus', 1, 'as-fed');

-- Prins Petfoods — ProCare Mini Senior Support (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-mini/senior-support-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3676 kcal/kg naar 367,6 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = 'a85138e8-76fe-4580-9ead-e93a2cdb3aa3';
delete from public.recipe_nutrition where recipe_version_id = 'a85138e8-76fe-4580-9ead-e93a2cdb3aa3';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a85138e8-76fe-4580-9ead-e93a2cdb3aa3', 'protein', 19.5, 'as-fed'),
  ('a85138e8-76fe-4580-9ead-e93a2cdb3aa3', 'fat', 12.5, 'as-fed'),
  ('a85138e8-76fe-4580-9ead-e93a2cdb3aa3', 'fiber', 3.5, 'as-fed'),
  ('a85138e8-76fe-4580-9ead-e93a2cdb3aa3', 'ash', 5, 'as-fed'),
  ('a85138e8-76fe-4580-9ead-e93a2cdb3aa3', 'moisture', 8, 'as-fed'),
  ('a85138e8-76fe-4580-9ead-e93a2cdb3aa3', 'kcal', 367.6, 'as-fed'),
  ('a85138e8-76fe-4580-9ead-e93a2cdb3aa3', 'calcium', 0.8, 'as-fed'),
  ('a85138e8-76fe-4580-9ead-e93a2cdb3aa3', 'phosphorus', 0.7, 'as-fed');

-- Prins Petfoods — ProCare Mini Standard Fit (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-mini/standard-fit-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3537 kcal/kg naar 353,7 kcal/100 g (delen door 10). Omega-6 overgenomen uit de op de pagina vermelde linolzuurwaarde; linolzuur is een omega-6-vetzuur. Niet vermeld op de bron: omega-3.'
 where id = '2e78bf56-a8d6-4e78-aebe-920b8f7ff36b';
delete from public.recipe_nutrition where recipe_version_id = '2e78bf56-a8d6-4e78-aebe-920b8f7ff36b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2e78bf56-a8d6-4e78-aebe-920b8f7ff36b', 'protein', 25, 'as-fed'),
  ('2e78bf56-a8d6-4e78-aebe-920b8f7ff36b', 'fat', 11, 'as-fed'),
  ('2e78bf56-a8d6-4e78-aebe-920b8f7ff36b', 'fiber', 4, 'as-fed'),
  ('2e78bf56-a8d6-4e78-aebe-920b8f7ff36b', 'ash', 7, 'as-fed'),
  ('2e78bf56-a8d6-4e78-aebe-920b8f7ff36b', 'moisture', 8, 'as-fed'),
  ('2e78bf56-a8d6-4e78-aebe-920b8f7ff36b', 'kcal', 353.7, 'as-fed'),
  ('2e78bf56-a8d6-4e78-aebe-920b8f7ff36b', 'calcium', 1.3, 'as-fed'),
  ('2e78bf56-a8d6-4e78-aebe-920b8f7ff36b', 'phosphorus', 1, 'as-fed'),
  ('2e78bf56-a8d6-4e78-aebe-920b8f7ff36b', 'omega6', 2, 'as-fed');

-- Prins Petfoods — ProCare Mini Super Active (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-mini/super-active-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3804 kcal/kg naar 380,4 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '0cec0adb-6c9f-4ebc-b594-00115b95488c';
delete from public.recipe_nutrition where recipe_version_id = '0cec0adb-6c9f-4ebc-b594-00115b95488c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0cec0adb-6c9f-4ebc-b594-00115b95488c', 'protein', 26.5, 'as-fed'),
  ('0cec0adb-6c9f-4ebc-b594-00115b95488c', 'fat', 16, 'as-fed'),
  ('0cec0adb-6c9f-4ebc-b594-00115b95488c', 'fiber', 3.5, 'as-fed'),
  ('0cec0adb-6c9f-4ebc-b594-00115b95488c', 'ash', 7, 'as-fed'),
  ('0cec0adb-6c9f-4ebc-b594-00115b95488c', 'moisture', 8, 'as-fed'),
  ('0cec0adb-6c9f-4ebc-b594-00115b95488c', 'kcal', 380.4, 'as-fed'),
  ('0cec0adb-6c9f-4ebc-b594-00115b95488c', 'calcium', 1.4, 'as-fed'),
  ('0cec0adb-6c9f-4ebc-b594-00115b95488c', 'phosphorus', 1, 'as-fed');

-- Prins Petfoods — ProCare Pressed Diet Gastro-Intestinal (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-pressed-diet/gastro-intestinal-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3584 kcal/kg naar 358,4 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-6.'
 where id = '5a44d29f-a2c3-423a-9569-5236e4bf366d';
delete from public.recipe_nutrition where recipe_version_id = '5a44d29f-a2c3-423a-9569-5236e4bf366d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5a44d29f-a2c3-423a-9569-5236e4bf366d', 'protein', 20, 'as-fed'),
  ('5a44d29f-a2c3-423a-9569-5236e4bf366d', 'fat', 8, 'as-fed'),
  ('5a44d29f-a2c3-423a-9569-5236e4bf366d', 'fiber', 2.3, 'as-fed'),
  ('5a44d29f-a2c3-423a-9569-5236e4bf366d', 'ash', 4.6, 'as-fed'),
  ('5a44d29f-a2c3-423a-9569-5236e4bf366d', 'moisture', 8, 'as-fed'),
  ('5a44d29f-a2c3-423a-9569-5236e4bf366d', 'kcal', 358.4, 'as-fed'),
  ('5a44d29f-a2c3-423a-9569-5236e4bf366d', 'calcium', 0.6, 'as-fed'),
  ('5a44d29f-a2c3-423a-9569-5236e4bf366d', 'phosphorus', 0.5, 'as-fed'),
  ('5a44d29f-a2c3-423a-9569-5236e4bf366d', 'omega3', 0.19, 'as-fed');

-- Prins Petfoods — ProCare Pressed Diet Mobility (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/diet-pressed/mobility-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3550 kcal/kg naar 355 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '683455ed-48b5-46bb-9631-5ca93b2f073b';
delete from public.recipe_nutrition where recipe_version_id = '683455ed-48b5-46bb-9631-5ca93b2f073b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('683455ed-48b5-46bb-9631-5ca93b2f073b', 'protein', 26, 'as-fed'),
  ('683455ed-48b5-46bb-9631-5ca93b2f073b', 'fat', 13.5, 'as-fed'),
  ('683455ed-48b5-46bb-9631-5ca93b2f073b', 'fiber', 5.3, 'as-fed'),
  ('683455ed-48b5-46bb-9631-5ca93b2f073b', 'ash', 7.3, 'as-fed'),
  ('683455ed-48b5-46bb-9631-5ca93b2f073b', 'moisture', 8, 'as-fed'),
  ('683455ed-48b5-46bb-9631-5ca93b2f073b', 'kcal', 355, 'as-fed'),
  ('683455ed-48b5-46bb-9631-5ca93b2f073b', 'calcium', 1.4, 'as-fed'),
  ('683455ed-48b5-46bb-9631-5ca93b2f073b', 'phosphorus', 1, 'as-fed');

-- Prins Petfoods — ProCare Pressed Diet Skin Support (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/diet-pressed/skin-support-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3489 kcal/kg naar 348,9 kcal/100 g (delen door 10). Omega-6 overgenomen uit de op de pagina vermelde linolzuurwaarde; linolzuur is een omega-6-vetzuur. Niet vermeld op de bron: omega-3 (alleen EPA & DHA als deelwaarde vermeld).'
 where id = 'c0e28a47-88e6-4a71-ae83-59290c699469';
delete from public.recipe_nutrition where recipe_version_id = 'c0e28a47-88e6-4a71-ae83-59290c699469';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c0e28a47-88e6-4a71-ae83-59290c699469', 'protein', 22, 'as-fed'),
  ('c0e28a47-88e6-4a71-ae83-59290c699469', 'fat', 13, 'as-fed'),
  ('c0e28a47-88e6-4a71-ae83-59290c699469', 'fiber', 5, 'as-fed'),
  ('c0e28a47-88e6-4a71-ae83-59290c699469', 'ash', 7.6, 'as-fed'),
  ('c0e28a47-88e6-4a71-ae83-59290c699469', 'moisture', 8, 'as-fed'),
  ('c0e28a47-88e6-4a71-ae83-59290c699469', 'kcal', 348.9, 'as-fed'),
  ('c0e28a47-88e6-4a71-ae83-59290c699469', 'calcium', 1.7, 'as-fed'),
  ('c0e28a47-88e6-4a71-ae83-59290c699469', 'phosphorus', 1, 'as-fed'),
  ('c0e28a47-88e6-4a71-ae83-59290c699469', 'omega6', 2.6, 'as-fed');

-- Prins Petfoods — ProCare Pressed Diet Weight Reduction & Diabetic (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/diet-pressed/weight-reduction-diabetic-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 2706 kcal/kg naar 270,6 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '9e725550-eae8-425c-ba2c-1bdc1abe309e';
delete from public.recipe_nutrition where recipe_version_id = '9e725550-eae8-425c-ba2c-1bdc1abe309e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9e725550-eae8-425c-ba2c-1bdc1abe309e', 'protein', 30, 'as-fed'),
  ('9e725550-eae8-425c-ba2c-1bdc1abe309e', 'fat', 8.5, 'as-fed'),
  ('9e725550-eae8-425c-ba2c-1bdc1abe309e', 'fiber', 14.5, 'as-fed'),
  ('9e725550-eae8-425c-ba2c-1bdc1abe309e', 'ash', 7.5, 'as-fed'),
  ('9e725550-eae8-425c-ba2c-1bdc1abe309e', 'moisture', 8, 'as-fed'),
  ('9e725550-eae8-425c-ba2c-1bdc1abe309e', 'kcal', 270.6, 'as-fed'),
  ('9e725550-eae8-425c-ba2c-1bdc1abe309e', 'calcium', 1.3, 'as-fed'),
  ('9e725550-eae8-425c-ba2c-1bdc1abe309e', 'phosphorus', 1, 'as-fed');

-- Prins Petfoods — ProCare Protection Lamb (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-protection/lamb-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3850 kcal/kg naar 385 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '78f77b69-d018-48f4-a722-481924f9bdc8';
delete from public.recipe_nutrition where recipe_version_id = '78f77b69-d018-48f4-a722-481924f9bdc8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('78f77b69-d018-48f4-a722-481924f9bdc8', 'protein', 18, 'as-fed'),
  ('78f77b69-d018-48f4-a722-481924f9bdc8', 'fat', 13, 'as-fed'),
  ('78f77b69-d018-48f4-a722-481924f9bdc8', 'fiber', 4, 'as-fed'),
  ('78f77b69-d018-48f4-a722-481924f9bdc8', 'ash', 7, 'as-fed'),
  ('78f77b69-d018-48f4-a722-481924f9bdc8', 'moisture', 9, 'as-fed'),
  ('78f77b69-d018-48f4-a722-481924f9bdc8', 'kcal', 385, 'as-fed'),
  ('78f77b69-d018-48f4-a722-481924f9bdc8', 'calcium', 1.5, 'as-fed'),
  ('78f77b69-d018-48f4-a722-481924f9bdc8', 'phosphorus', 1, 'as-fed');

-- Prins Petfoods — ProCare Protection Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-protection/puppy-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 4090 kcal/kg naar 409 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = 'd0ab4302-5a23-43d9-85a0-5b9c4203f5da';
delete from public.recipe_nutrition where recipe_version_id = 'd0ab4302-5a23-43d9-85a0-5b9c4203f5da';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d0ab4302-5a23-43d9-85a0-5b9c4203f5da', 'protein', 25, 'as-fed'),
  ('d0ab4302-5a23-43d9-85a0-5b9c4203f5da', 'fat', 17, 'as-fed'),
  ('d0ab4302-5a23-43d9-85a0-5b9c4203f5da', 'fiber', 3, 'as-fed'),
  ('d0ab4302-5a23-43d9-85a0-5b9c4203f5da', 'ash', 7, 'as-fed'),
  ('d0ab4302-5a23-43d9-85a0-5b9c4203f5da', 'moisture', 9, 'as-fed'),
  ('d0ab4302-5a23-43d9-85a0-5b9c4203f5da', 'kcal', 409, 'as-fed'),
  ('d0ab4302-5a23-43d9-85a0-5b9c4203f5da', 'calcium', 1.1, 'as-fed'),
  ('d0ab4302-5a23-43d9-85a0-5b9c4203f5da', 'phosphorus', 0.8, 'as-fed');

-- Prins Petfoods — ProCare Protection Senior (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-protection/senior-fit-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 4045 kcal/kg naar 404,5 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '3e8f6d27-b07f-4378-9a09-74138be417c0';
delete from public.recipe_nutrition where recipe_version_id = '3e8f6d27-b07f-4378-9a09-74138be417c0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3e8f6d27-b07f-4378-9a09-74138be417c0', 'protein', 21, 'as-fed'),
  ('3e8f6d27-b07f-4378-9a09-74138be417c0', 'fat', 14.5, 'as-fed'),
  ('3e8f6d27-b07f-4378-9a09-74138be417c0', 'fiber', 2, 'as-fed'),
  ('3e8f6d27-b07f-4378-9a09-74138be417c0', 'ash', 6, 'as-fed'),
  ('3e8f6d27-b07f-4378-9a09-74138be417c0', 'moisture', 9, 'as-fed'),
  ('3e8f6d27-b07f-4378-9a09-74138be417c0', 'kcal', 404.5, 'as-fed'),
  ('3e8f6d27-b07f-4378-9a09-74138be417c0', 'calcium', 0.8, 'as-fed'),
  ('3e8f6d27-b07f-4378-9a09-74138be417c0', 'phosphorus', 0.6, 'as-fed');

-- Prins Petfoods — ProCare Protection Sterilised (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-protection/sterilised-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3690 kcal/kg naar 369 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '50c25a27-2d60-4faa-9284-863c89bd85e0';
delete from public.recipe_nutrition where recipe_version_id = '50c25a27-2d60-4faa-9284-863c89bd85e0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('50c25a27-2d60-4faa-9284-863c89bd85e0', 'protein', 26, 'as-fed'),
  ('50c25a27-2d60-4faa-9284-863c89bd85e0', 'fat', 11, 'as-fed'),
  ('50c25a27-2d60-4faa-9284-863c89bd85e0', 'fiber', 6, 'as-fed'),
  ('50c25a27-2d60-4faa-9284-863c89bd85e0', 'ash', 6.5, 'as-fed'),
  ('50c25a27-2d60-4faa-9284-863c89bd85e0', 'moisture', 9, 'as-fed'),
  ('50c25a27-2d60-4faa-9284-863c89bd85e0', 'kcal', 369, 'as-fed'),
  ('50c25a27-2d60-4faa-9284-863c89bd85e0', 'calcium', 1.1, 'as-fed'),
  ('50c25a27-2d60-4faa-9284-863c89bd85e0', 'phosphorus', 0.8, 'as-fed');

-- Prins Petfoods — ProCare Protection Super Active (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-protection/super-active-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 4090 kcal/kg naar 409 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '9575fc42-b887-4923-abd6-809e1443bfe0';
delete from public.recipe_nutrition where recipe_version_id = '9575fc42-b887-4923-abd6-809e1443bfe0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9575fc42-b887-4923-abd6-809e1443bfe0', 'protein', 25, 'as-fed'),
  ('9575fc42-b887-4923-abd6-809e1443bfe0', 'fat', 17, 'as-fed'),
  ('9575fc42-b887-4923-abd6-809e1443bfe0', 'fiber', 3, 'as-fed'),
  ('9575fc42-b887-4923-abd6-809e1443bfe0', 'ash', 7, 'as-fed'),
  ('9575fc42-b887-4923-abd6-809e1443bfe0', 'moisture', 9, 'as-fed'),
  ('9575fc42-b887-4923-abd6-809e1443bfe0', 'kcal', 409, 'as-fed'),
  ('9575fc42-b887-4923-abd6-809e1443bfe0', 'calcium', 1.1, 'as-fed'),
  ('9575fc42-b887-4923-abd6-809e1443bfe0', 'phosphorus', 0.8, 'as-fed');

-- Prins Petfoods — ProCare Puppy & Junior (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare/puppy-junior-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3804 kcal/kg naar 380,4 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = 'c0d146ce-293f-4798-a85c-7550178969fe';
delete from public.recipe_nutrition where recipe_version_id = 'c0d146ce-293f-4798-a85c-7550178969fe';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c0d146ce-293f-4798-a85c-7550178969fe', 'protein', 26.5, 'as-fed'),
  ('c0d146ce-293f-4798-a85c-7550178969fe', 'fat', 16, 'as-fed'),
  ('c0d146ce-293f-4798-a85c-7550178969fe', 'fiber', 3.5, 'as-fed'),
  ('c0d146ce-293f-4798-a85c-7550178969fe', 'ash', 7, 'as-fed'),
  ('c0d146ce-293f-4798-a85c-7550178969fe', 'moisture', 8, 'as-fed'),
  ('c0d146ce-293f-4798-a85c-7550178969fe', 'kcal', 380.4, 'as-fed'),
  ('c0d146ce-293f-4798-a85c-7550178969fe', 'calcium', 1.4, 'as-fed'),
  ('c0d146ce-293f-4798-a85c-7550178969fe', 'phosphorus', 1, 'as-fed');

-- Prins Petfoods — ProCare Resist Calm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare/resist-calm-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3537 kcal/kg naar 353,7 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = 'dbea9651-ff77-42a6-9c2d-509a7849f233';
delete from public.recipe_nutrition where recipe_version_id = 'dbea9651-ff77-42a6-9c2d-509a7849f233';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('dbea9651-ff77-42a6-9c2d-509a7849f233', 'protein', 25, 'as-fed'),
  ('dbea9651-ff77-42a6-9c2d-509a7849f233', 'fat', 11, 'as-fed'),
  ('dbea9651-ff77-42a6-9c2d-509a7849f233', 'fiber', 4, 'as-fed'),
  ('dbea9651-ff77-42a6-9c2d-509a7849f233', 'ash', 7, 'as-fed'),
  ('dbea9651-ff77-42a6-9c2d-509a7849f233', 'moisture', 8, 'as-fed'),
  ('dbea9651-ff77-42a6-9c2d-509a7849f233', 'kcal', 353.7, 'as-fed'),
  ('dbea9651-ff77-42a6-9c2d-509a7849f233', 'calcium', 1.3, 'as-fed'),
  ('dbea9651-ff77-42a6-9c2d-509a7849f233', 'phosphorus', 1, 'as-fed');

-- Prins Petfoods — ProCare Senior Support (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare/senior-support-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3676 kcal/kg naar 367,6 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '99898429-91eb-44f2-9e06-2fc5eb4d20a1';
delete from public.recipe_nutrition where recipe_version_id = '99898429-91eb-44f2-9e06-2fc5eb4d20a1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('99898429-91eb-44f2-9e06-2fc5eb4d20a1', 'protein', 19.5, 'as-fed'),
  ('99898429-91eb-44f2-9e06-2fc5eb4d20a1', 'fat', 12.5, 'as-fed'),
  ('99898429-91eb-44f2-9e06-2fc5eb4d20a1', 'fiber', 3.5, 'as-fed'),
  ('99898429-91eb-44f2-9e06-2fc5eb4d20a1', 'ash', 5, 'as-fed'),
  ('99898429-91eb-44f2-9e06-2fc5eb4d20a1', 'moisture', 8, 'as-fed'),
  ('99898429-91eb-44f2-9e06-2fc5eb4d20a1', 'kcal', 367.6, 'as-fed'),
  ('99898429-91eb-44f2-9e06-2fc5eb4d20a1', 'calcium', 0.8, 'as-fed'),
  ('99898429-91eb-44f2-9e06-2fc5eb4d20a1', 'phosphorus', 0.7, 'as-fed');

-- Prins Petfoods — ProCare Sport-Life Excellent (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare/sport-life-excellent-15kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 4163 kcal/kg naar 416,3 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '6efa75e6-3ede-4515-bb26-9b5c2d5d3177';
delete from public.recipe_nutrition where recipe_version_id = '6efa75e6-3ede-4515-bb26-9b5c2d5d3177';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6efa75e6-3ede-4515-bb26-9b5c2d5d3177', 'protein', 32, 'as-fed'),
  ('6efa75e6-3ede-4515-bb26-9b5c2d5d3177', 'fat', 22, 'as-fed'),
  ('6efa75e6-3ede-4515-bb26-9b5c2d5d3177', 'fiber', 3, 'as-fed'),
  ('6efa75e6-3ede-4515-bb26-9b5c2d5d3177', 'ash', 6, 'as-fed'),
  ('6efa75e6-3ede-4515-bb26-9b5c2d5d3177', 'moisture', 9, 'as-fed'),
  ('6efa75e6-3ede-4515-bb26-9b5c2d5d3177', 'kcal', 416.3, 'as-fed'),
  ('6efa75e6-3ede-4515-bb26-9b5c2d5d3177', 'calcium', 1.4, 'as-fed'),
  ('6efa75e6-3ede-4515-bb26-9b5c2d5d3177', 'phosphorus', 0.9, 'as-fed');

-- Prins Petfoods — ProCare Standard Fit (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare/standard-fit-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3537 kcal/kg naar 353,7 kcal/100 g (delen door 10). Omega-6 overgenomen uit de op de pagina vermelde linolzuurwaarde; linolzuur is een omega-6-vetzuur. Niet vermeld op de bron: omega-3.'
 where id = '8938aa41-432c-4e57-a671-fdc81f57ff20';
delete from public.recipe_nutrition where recipe_version_id = '8938aa41-432c-4e57-a671-fdc81f57ff20';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8938aa41-432c-4e57-a671-fdc81f57ff20', 'protein', 25, 'as-fed'),
  ('8938aa41-432c-4e57-a671-fdc81f57ff20', 'fat', 11, 'as-fed'),
  ('8938aa41-432c-4e57-a671-fdc81f57ff20', 'fiber', 4, 'as-fed'),
  ('8938aa41-432c-4e57-a671-fdc81f57ff20', 'ash', 7, 'as-fed'),
  ('8938aa41-432c-4e57-a671-fdc81f57ff20', 'moisture', 8, 'as-fed'),
  ('8938aa41-432c-4e57-a671-fdc81f57ff20', 'kcal', 353.7, 'as-fed'),
  ('8938aa41-432c-4e57-a671-fdc81f57ff20', 'calcium', 1.3, 'as-fed'),
  ('8938aa41-432c-4e57-a671-fdc81f57ff20', 'phosphorus', 1, 'as-fed'),
  ('8938aa41-432c-4e57-a671-fdc81f57ff20', 'omega6', 2, 'as-fed');

-- Prins Petfoods — ProCare Super Active (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare/super-active-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3804 kcal/kg naar 380,4 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = 'dc362b47-6bf8-46fe-8ac2-6f1cf8b9e350';
delete from public.recipe_nutrition where recipe_version_id = 'dc362b47-6bf8-46fe-8ac2-6f1cf8b9e350';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('dc362b47-6bf8-46fe-8ac2-6f1cf8b9e350', 'protein', 26.5, 'as-fed'),
  ('dc362b47-6bf8-46fe-8ac2-6f1cf8b9e350', 'fat', 16, 'as-fed'),
  ('dc362b47-6bf8-46fe-8ac2-6f1cf8b9e350', 'fiber', 3.5, 'as-fed'),
  ('dc362b47-6bf8-46fe-8ac2-6f1cf8b9e350', 'ash', 7, 'as-fed'),
  ('dc362b47-6bf8-46fe-8ac2-6f1cf8b9e350', 'moisture', 8, 'as-fed'),
  ('dc362b47-6bf8-46fe-8ac2-6f1cf8b9e350', 'kcal', 380.4, 'as-fed'),
  ('dc362b47-6bf8-46fe-8ac2-6f1cf8b9e350', 'calcium', 1.4, 'as-fed'),
  ('dc362b47-6bf8-46fe-8ac2-6f1cf8b9e350', 'phosphorus', 1, 'as-fed');

-- Prins Petfoods — ProCare Veggie (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare/veggie-3kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3591 kcal/kg naar 359,1 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = 'f6a58cf0-b19a-44bf-b43c-01f2f921a57b';
delete from public.recipe_nutrition where recipe_version_id = 'f6a58cf0-b19a-44bf-b43c-01f2f921a57b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f6a58cf0-b19a-44bf-b43c-01f2f921a57b', 'protein', 22.5, 'as-fed'),
  ('f6a58cf0-b19a-44bf-b43c-01f2f921a57b', 'fat', 12, 'as-fed'),
  ('f6a58cf0-b19a-44bf-b43c-01f2f921a57b', 'fiber', 4.5, 'as-fed'),
  ('f6a58cf0-b19a-44bf-b43c-01f2f921a57b', 'ash', 5.5, 'as-fed'),
  ('f6a58cf0-b19a-44bf-b43c-01f2f921a57b', 'moisture', 8, 'as-fed'),
  ('f6a58cf0-b19a-44bf-b43c-01f2f921a57b', 'kcal', 359.1, 'as-fed'),
  ('f6a58cf0-b19a-44bf-b43c-01f2f921a57b', 'calcium', 0.6, 'as-fed'),
  ('f6a58cf0-b19a-44bf-b43c-01f2f921a57b', 'phosphorus', 0.6, 'as-fed');

-- Prins Petfoods — Protection Croque Basic Excellent (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/protection-croque/basic-excellent-2kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3466 kcal/kg naar 346,6 kcal/100 g (delen door 10). Omega-6 overgenomen uit de op de pagina vermelde linolzuurwaarde; linolzuur is een omega-6-vetzuur. Niet vermeld op de bron: omega-3.'
 where id = '4d72cf2b-4d3a-43ab-a30f-fe07900a945b';
delete from public.recipe_nutrition where recipe_version_id = '4d72cf2b-4d3a-43ab-a30f-fe07900a945b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4d72cf2b-4d3a-43ab-a30f-fe07900a945b', 'protein', 26, 'as-fed'),
  ('4d72cf2b-4d3a-43ab-a30f-fe07900a945b', 'fat', 11, 'as-fed'),
  ('4d72cf2b-4d3a-43ab-a30f-fe07900a945b', 'fiber', 5.7, 'as-fed'),
  ('4d72cf2b-4d3a-43ab-a30f-fe07900a945b', 'ash', 5.7, 'as-fed'),
  ('4d72cf2b-4d3a-43ab-a30f-fe07900a945b', 'moisture', 8, 'as-fed'),
  ('4d72cf2b-4d3a-43ab-a30f-fe07900a945b', 'kcal', 346.6, 'as-fed'),
  ('4d72cf2b-4d3a-43ab-a30f-fe07900a945b', 'calcium', 1.1, 'as-fed'),
  ('4d72cf2b-4d3a-43ab-a30f-fe07900a945b', 'phosphorus', 0.8, 'as-fed'),
  ('4d72cf2b-4d3a-43ab-a30f-fe07900a945b', 'omega6', 2.7, 'as-fed');

-- Prins Petfoods — Protection Croque Junior Vitality (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/protection-croque/junior-vitality-2kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3905 kcal/kg naar 390,5 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3 (alleen DHA als deelwaarde vermeld), omega-6.'
 where id = '878c416a-ba51-4ddf-9b4f-1193807a5049';
delete from public.recipe_nutrition where recipe_version_id = '878c416a-ba51-4ddf-9b4f-1193807a5049';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('878c416a-ba51-4ddf-9b4f-1193807a5049', 'protein', 25, 'as-fed'),
  ('878c416a-ba51-4ddf-9b4f-1193807a5049', 'fat', 17, 'as-fed'),
  ('878c416a-ba51-4ddf-9b4f-1193807a5049', 'fiber', 3.4, 'as-fed'),
  ('878c416a-ba51-4ddf-9b4f-1193807a5049', 'ash', 5.5, 'as-fed'),
  ('878c416a-ba51-4ddf-9b4f-1193807a5049', 'moisture', 8, 'as-fed'),
  ('878c416a-ba51-4ddf-9b4f-1193807a5049', 'kcal', 390.5, 'as-fed'),
  ('878c416a-ba51-4ddf-9b4f-1193807a5049', 'calcium', 1.1, 'as-fed'),
  ('878c416a-ba51-4ddf-9b4f-1193807a5049', 'phosphorus', 0.8, 'as-fed');

-- Prins Petfoods — Protection Croque Lamb (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/protection-croque/lamb-2kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3612 kcal/kg naar 361,2 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '49722f87-74c0-47b8-afd9-5a15929db273';
delete from public.recipe_nutrition where recipe_version_id = '49722f87-74c0-47b8-afd9-5a15929db273';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('49722f87-74c0-47b8-afd9-5a15929db273', 'protein', 18, 'as-fed'),
  ('49722f87-74c0-47b8-afd9-5a15929db273', 'fat', 13, 'as-fed'),
  ('49722f87-74c0-47b8-afd9-5a15929db273', 'fiber', 4, 'as-fed'),
  ('49722f87-74c0-47b8-afd9-5a15929db273', 'ash', 6.8, 'as-fed'),
  ('49722f87-74c0-47b8-afd9-5a15929db273', 'moisture', 8, 'as-fed'),
  ('49722f87-74c0-47b8-afd9-5a15929db273', 'kcal', 361.2, 'as-fed'),
  ('49722f87-74c0-47b8-afd9-5a15929db273', 'calcium', 1.5, 'as-fed'),
  ('49722f87-74c0-47b8-afd9-5a15929db273', 'phosphorus', 0.9, 'as-fed');

-- Prins Petfoods — Protection Croque Mini Basic Excellent (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/protection-croque-mini/basic-excellent-2kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3435 kcal/kg naar 343,5 kcal/100 g (delen door 10). Omega-6 overgenomen uit de op de pagina vermelde linolzuurwaarde; linolzuur is een omega-6-vetzuur. Niet vermeld op de bron: omega-3.'
 where id = '5dc9626c-0165-4748-ba89-432aa73be729';
delete from public.recipe_nutrition where recipe_version_id = '5dc9626c-0165-4748-ba89-432aa73be729';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5dc9626c-0165-4748-ba89-432aa73be729', 'protein', 26, 'as-fed'),
  ('5dc9626c-0165-4748-ba89-432aa73be729', 'fat', 11, 'as-fed'),
  ('5dc9626c-0165-4748-ba89-432aa73be729', 'fiber', 5.8, 'as-fed'),
  ('5dc9626c-0165-4748-ba89-432aa73be729', 'ash', 6.4, 'as-fed'),
  ('5dc9626c-0165-4748-ba89-432aa73be729', 'moisture', 8, 'as-fed'),
  ('5dc9626c-0165-4748-ba89-432aa73be729', 'kcal', 343.5, 'as-fed'),
  ('5dc9626c-0165-4748-ba89-432aa73be729', 'calcium', 1.2, 'as-fed'),
  ('5dc9626c-0165-4748-ba89-432aa73be729', 'phosphorus', 0.9, 'as-fed'),
  ('5dc9626c-0165-4748-ba89-432aa73be729', 'omega6', 2.8, 'as-fed');

-- Prins Petfoods — Protection Croque Mini Junior Vitality (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/protection-croque-mini/junior-vitality-2kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3948 kcal/kg naar 394,8 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3 (alleen DHA als deelwaarde vermeld), omega-6.'
 where id = 'b3b978ba-5c48-452a-9472-b4ec65c85dd9';
delete from public.recipe_nutrition where recipe_version_id = 'b3b978ba-5c48-452a-9472-b4ec65c85dd9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b3b978ba-5c48-452a-9472-b4ec65c85dd9', 'protein', 25, 'as-fed'),
  ('b3b978ba-5c48-452a-9472-b4ec65c85dd9', 'fat', 17, 'as-fed'),
  ('b3b978ba-5c48-452a-9472-b4ec65c85dd9', 'fiber', 2.5, 'as-fed'),
  ('b3b978ba-5c48-452a-9472-b4ec65c85dd9', 'ash', 6.2, 'as-fed'),
  ('b3b978ba-5c48-452a-9472-b4ec65c85dd9', 'moisture', 8, 'as-fed'),
  ('b3b978ba-5c48-452a-9472-b4ec65c85dd9', 'kcal', 394.8, 'as-fed'),
  ('b3b978ba-5c48-452a-9472-b4ec65c85dd9', 'calcium', 1.2, 'as-fed'),
  ('b3b978ba-5c48-452a-9472-b4ec65c85dd9', 'phosphorus', 0.9, 'as-fed');

-- Prins Petfoods — Protection Croque Mini Lamb (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/protection-croque-mini/lamb-2kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3705 kcal/kg naar 370,5 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '84317d20-8291-4716-a55a-9a86c5caef44';
delete from public.recipe_nutrition where recipe_version_id = '84317d20-8291-4716-a55a-9a86c5caef44';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('84317d20-8291-4716-a55a-9a86c5caef44', 'protein', 18, 'as-fed'),
  ('84317d20-8291-4716-a55a-9a86c5caef44', 'fat', 13, 'as-fed'),
  ('84317d20-8291-4716-a55a-9a86c5caef44', 'fiber', 2.5, 'as-fed'),
  ('84317d20-8291-4716-a55a-9a86c5caef44', 'ash', 7.1, 'as-fed'),
  ('84317d20-8291-4716-a55a-9a86c5caef44', 'moisture', 8, 'as-fed'),
  ('84317d20-8291-4716-a55a-9a86c5caef44', 'kcal', 370.5, 'as-fed'),
  ('84317d20-8291-4716-a55a-9a86c5caef44', 'calcium', 1.4, 'as-fed'),
  ('84317d20-8291-4716-a55a-9a86c5caef44', 'phosphorus', 1, 'as-fed');

-- Prins Petfoods — Protection Croque Mini Senior Fit (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/protection-croque-mini/senior-fit-2kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3803 kcal/kg naar 380,3 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '37261974-f383-4caf-b0bb-ee7c33c02fa4';
delete from public.recipe_nutrition where recipe_version_id = '37261974-f383-4caf-b0bb-ee7c33c02fa4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('37261974-f383-4caf-b0bb-ee7c33c02fa4', 'protein', 21, 'as-fed'),
  ('37261974-f383-4caf-b0bb-ee7c33c02fa4', 'fat', 14.5, 'as-fed'),
  ('37261974-f383-4caf-b0bb-ee7c33c02fa4', 'fiber', 3.2, 'as-fed'),
  ('37261974-f383-4caf-b0bb-ee7c33c02fa4', 'ash', 5.2, 'as-fed'),
  ('37261974-f383-4caf-b0bb-ee7c33c02fa4', 'moisture', 8, 'as-fed'),
  ('37261974-f383-4caf-b0bb-ee7c33c02fa4', 'kcal', 380.3, 'as-fed'),
  ('37261974-f383-4caf-b0bb-ee7c33c02fa4', 'calcium', 0.8, 'as-fed'),
  ('37261974-f383-4caf-b0bb-ee7c33c02fa4', 'phosphorus', 0.7, 'as-fed');

-- Prins Petfoods — Protection Croque Mini Super Vitality (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/protection-croque-mini/super-vitality-2kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3948 kcal/kg naar 394,8 kcal/100 g (delen door 10). Omega-6 overgenomen uit de op de pagina vermelde linolzuurwaarde; linolzuur is een omega-6-vetzuur. Niet vermeld op de bron: omega-3.'
 where id = '987ad610-6785-4ac0-b48d-a92a84a1fd1d';
delete from public.recipe_nutrition where recipe_version_id = '987ad610-6785-4ac0-b48d-a92a84a1fd1d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('987ad610-6785-4ac0-b48d-a92a84a1fd1d', 'protein', 25, 'as-fed'),
  ('987ad610-6785-4ac0-b48d-a92a84a1fd1d', 'fat', 17, 'as-fed'),
  ('987ad610-6785-4ac0-b48d-a92a84a1fd1d', 'fiber', 2.5, 'as-fed'),
  ('987ad610-6785-4ac0-b48d-a92a84a1fd1d', 'ash', 6.2, 'as-fed'),
  ('987ad610-6785-4ac0-b48d-a92a84a1fd1d', 'moisture', 8, 'as-fed'),
  ('987ad610-6785-4ac0-b48d-a92a84a1fd1d', 'kcal', 394.8, 'as-fed'),
  ('987ad610-6785-4ac0-b48d-a92a84a1fd1d', 'calcium', 1.2, 'as-fed'),
  ('987ad610-6785-4ac0-b48d-a92a84a1fd1d', 'phosphorus', 0.9, 'as-fed'),
  ('987ad610-6785-4ac0-b48d-a92a84a1fd1d', 'omega6', 3.9, 'as-fed');

-- Prins Petfoods — Protection Croque Senior Fit (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/protection-croque/senior-fit-2kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3612 kcal/kg naar 361,2 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '43fd0499-d779-4b8f-8d0e-6ec22ae14733';
delete from public.recipe_nutrition where recipe_version_id = '43fd0499-d779-4b8f-8d0e-6ec22ae14733';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('43fd0499-d779-4b8f-8d0e-6ec22ae14733', 'protein', 18, 'as-fed'),
  ('43fd0499-d779-4b8f-8d0e-6ec22ae14733', 'fat', 13, 'as-fed'),
  ('43fd0499-d779-4b8f-8d0e-6ec22ae14733', 'fiber', 4, 'as-fed'),
  ('43fd0499-d779-4b8f-8d0e-6ec22ae14733', 'ash', 6.8, 'as-fed'),
  ('43fd0499-d779-4b8f-8d0e-6ec22ae14733', 'moisture', 8, 'as-fed'),
  ('43fd0499-d779-4b8f-8d0e-6ec22ae14733', 'kcal', 361.2, 'as-fed'),
  ('43fd0499-d779-4b8f-8d0e-6ec22ae14733', 'calcium', 1.5, 'as-fed'),
  ('43fd0499-d779-4b8f-8d0e-6ec22ae14733', 'phosphorus', 0.9, 'as-fed');

-- Prins Petfoods — Protection Croque Super Vitality (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/protection-croque/super-vitality-2kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 3935 kcal/kg naar 393,5 kcal/100 g (delen door 10). Omega-6 overgenomen uit de op de pagina vermelde linolzuurwaarde; linolzuur is een omega-6-vetzuur. Niet vermeld op de bron: omega-3.'
 where id = '219e2c4e-7c82-43b0-9604-e4757ef31a60';
delete from public.recipe_nutrition where recipe_version_id = '219e2c4e-7c82-43b0-9604-e4757ef31a60';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('219e2c4e-7c82-43b0-9604-e4757ef31a60', 'protein', 25, 'as-fed'),
  ('219e2c4e-7c82-43b0-9604-e4757ef31a60', 'fat', 17, 'as-fed'),
  ('219e2c4e-7c82-43b0-9604-e4757ef31a60', 'fiber', 3, 'as-fed'),
  ('219e2c4e-7c82-43b0-9604-e4757ef31a60', 'ash', 5.5, 'as-fed'),
  ('219e2c4e-7c82-43b0-9604-e4757ef31a60', 'moisture', 8, 'as-fed'),
  ('219e2c4e-7c82-43b0-9604-e4757ef31a60', 'kcal', 393.5, 'as-fed'),
  ('219e2c4e-7c82-43b0-9604-e4757ef31a60', 'calcium', 1.1, 'as-fed'),
  ('219e2c4e-7c82-43b0-9604-e4757ef31a60', 'phosphorus', 0.8, 'as-fed'),
  ('219e2c4e-7c82-43b0-9604-e4757ef31a60', 'omega6', 3.9, 'as-fed');

-- Prins Petfoods — TotalCare Lamb & Rice (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/totalcare/lamb-rice-2-5kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 2179 kcal/kg naar 217,9 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = 'aacf21c2-66b9-450e-9e5b-96c9e3cf69ed';
delete from public.recipe_nutrition where recipe_version_id = 'aacf21c2-66b9-450e-9e5b-96c9e3cf69ed';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('aacf21c2-66b9-450e-9e5b-96c9e3cf69ed', 'protein', 14.1, 'as-fed'),
  ('aacf21c2-66b9-450e-9e5b-96c9e3cf69ed', 'fat', 16.9, 'as-fed'),
  ('aacf21c2-66b9-450e-9e5b-96c9e3cf69ed', 'fiber', 0.9, 'as-fed'),
  ('aacf21c2-66b9-450e-9e5b-96c9e3cf69ed', 'ash', 3.1, 'as-fed'),
  ('aacf21c2-66b9-450e-9e5b-96c9e3cf69ed', 'moisture', 59.8, 'as-fed'),
  ('aacf21c2-66b9-450e-9e5b-96c9e3cf69ed', 'kcal', 217.9, 'as-fed'),
  ('aacf21c2-66b9-450e-9e5b-96c9e3cf69ed', 'calcium', 0.61, 'as-fed'),
  ('aacf21c2-66b9-450e-9e5b-96c9e3cf69ed', 'phosphorus', 0.53, 'as-fed');

-- Prins Petfoods — TotalCare Puppy (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/totalcare/puppy-2-5kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 1920 kcal/kg naar 192 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '1f0a6012-76c0-4db0-90c6-5f8f2aa4c1e1';
delete from public.recipe_nutrition where recipe_version_id = '1f0a6012-76c0-4db0-90c6-5f8f2aa4c1e1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1f0a6012-76c0-4db0-90c6-5f8f2aa4c1e1', 'protein', 12.4, 'as-fed'),
  ('1f0a6012-76c0-4db0-90c6-5f8f2aa4c1e1', 'fat', 13.7, 'as-fed'),
  ('1f0a6012-76c0-4db0-90c6-5f8f2aa4c1e1', 'fiber', 0.6, 'as-fed'),
  ('1f0a6012-76c0-4db0-90c6-5f8f2aa4c1e1', 'ash', 2.7, 'as-fed'),
  ('1f0a6012-76c0-4db0-90c6-5f8f2aa4c1e1', 'moisture', 63.6, 'as-fed'),
  ('1f0a6012-76c0-4db0-90c6-5f8f2aa4c1e1', 'kcal', 192, 'as-fed'),
  ('1f0a6012-76c0-4db0-90c6-5f8f2aa4c1e1', 'calcium', 0.53, 'as-fed'),
  ('1f0a6012-76c0-4db0-90c6-5f8f2aa4c1e1', 'phosphorus', 0.49, 'as-fed');

-- Prins Petfoods — TotalCare Resist Calm (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/totalcare/resist-calm-2-5kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 1920 kcal/kg naar 192 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = 'f6938de6-0edf-4652-ab3f-e461150cce94';
delete from public.recipe_nutrition where recipe_version_id = 'f6938de6-0edf-4652-ab3f-e461150cce94';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f6938de6-0edf-4652-ab3f-e461150cce94', 'protein', 12.4, 'as-fed'),
  ('f6938de6-0edf-4652-ab3f-e461150cce94', 'fat', 13.7, 'as-fed'),
  ('f6938de6-0edf-4652-ab3f-e461150cce94', 'fiber', 0.6, 'as-fed'),
  ('f6938de6-0edf-4652-ab3f-e461150cce94', 'ash', 2.7, 'as-fed'),
  ('f6938de6-0edf-4652-ab3f-e461150cce94', 'moisture', 63.6, 'as-fed'),
  ('f6938de6-0edf-4652-ab3f-e461150cce94', 'kcal', 192, 'as-fed'),
  ('f6938de6-0edf-4652-ab3f-e461150cce94', 'calcium', 0.53, 'as-fed'),
  ('f6938de6-0edf-4652-ab3f-e461150cce94', 'phosphorus', 0.49, 'as-fed');

-- Prins Petfoods — TotalCare Super Active (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/totalcare/super-active-2-5kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie omgerekend van 1920 kcal/kg naar 192 kcal/100 g (delen door 10). Niet vermeld op de bron: omega-3, omega-6.'
 where id = '8d2f4722-19ee-4653-af3e-e014e172465c';
delete from public.recipe_nutrition where recipe_version_id = '8d2f4722-19ee-4653-af3e-e014e172465c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8d2f4722-19ee-4653-af3e-e014e172465c', 'protein', 12.4, 'as-fed'),
  ('8d2f4722-19ee-4653-af3e-e014e172465c', 'fat', 13.7, 'as-fed'),
  ('8d2f4722-19ee-4653-af3e-e014e172465c', 'fiber', 0.6, 'as-fed'),
  ('8d2f4722-19ee-4653-af3e-e014e172465c', 'ash', 2.7, 'as-fed'),
  ('8d2f4722-19ee-4653-af3e-e014e172465c', 'moisture', 63.6, 'as-fed'),
  ('8d2f4722-19ee-4653-af3e-e014e172465c', 'kcal', 192, 'as-fed'),
  ('8d2f4722-19ee-4653-af3e-e014e172465c', 'calcium', 0.53, 'as-fed'),
  ('8d2f4722-19ee-4653-af3e-e014e172465c', 'phosphorus', 0.49, 'as-fed');

commit;
