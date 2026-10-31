begin;

-- Rodi — Balance Gevogelte (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://rodi-petfood.nl/product/rodi-balance/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron al als 91 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '31192630-79a4-4782-a742-4cf4ddd9e972';
delete from public.recipe_nutrition where recipe_version_id = '31192630-79a4-4782-a742-4cf4ddd9e972';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('31192630-79a4-4782-a742-4cf4ddd9e972', 'protein', 10.5, 'as-fed'),
  ('31192630-79a4-4782-a742-4cf4ddd9e972', 'fat', 5.1, 'as-fed'),
  ('31192630-79a4-4782-a742-4cf4ddd9e972', 'fiber', 0.4, 'as-fed'),
  ('31192630-79a4-4782-a742-4cf4ddd9e972', 'ash', 2.5, 'as-fed'),
  ('31192630-79a4-4782-a742-4cf4ddd9e972', 'moisture', 80, 'as-fed'),
  ('31192630-79a4-4782-a742-4cf4ddd9e972', 'kcal', 91, 'as-fed'),
  ('31192630-79a4-4782-a742-4cf4ddd9e972', 'calcium', 0.3, 'as-fed'),
  ('31192630-79a4-4782-a742-4cf4ddd9e972', 'phosphorus', 0.23, 'as-fed');

-- Rodi — Kip met Kaas (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://rodi-petfood.nl/product/kip-met-kaas/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 175 kcal per 100 g; geen omrekening nodig. De bron noemt dit product een worst; de opdracht geeft voertype wet en verpakking 400 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = '21906d86-4fcc-4277-bfe4-7c8a9921393f';
delete from public.recipe_nutrition where recipe_version_id = '21906d86-4fcc-4277-bfe4-7c8a9921393f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('21906d86-4fcc-4277-bfe4-7c8a9921393f', 'protein', 16, 'as-fed'),
  ('21906d86-4fcc-4277-bfe4-7c8a9921393f', 'fat', 10, 'as-fed'),
  ('21906d86-4fcc-4277-bfe4-7c8a9921393f', 'fiber', 0.5, 'as-fed'),
  ('21906d86-4fcc-4277-bfe4-7c8a9921393f', 'ash', 4, 'as-fed'),
  ('21906d86-4fcc-4277-bfe4-7c8a9921393f', 'moisture', 63, 'as-fed'),
  ('21906d86-4fcc-4277-bfe4-7c8a9921393f', 'kcal', 175, 'as-fed'),
  ('21906d86-4fcc-4277-bfe4-7c8a9921393f', 'calcium', 0.45, 'as-fed'),
  ('21906d86-4fcc-4277-bfe4-7c8a9921393f', 'phosphorus', 0.3, 'as-fed');

-- Rodi — Kip met Rund (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://rodi-petfood.nl/product/kip-met-rund/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 175 kcal per 100 g; geen omrekening nodig. De bron noemt dit product een worst; de opdracht geeft voertype wet en verpakking 400 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'f64fe5b7-e9e9-41fb-aaea-32292ec5acef';
delete from public.recipe_nutrition where recipe_version_id = 'f64fe5b7-e9e9-41fb-aaea-32292ec5acef';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f64fe5b7-e9e9-41fb-aaea-32292ec5acef', 'protein', 16, 'as-fed'),
  ('f64fe5b7-e9e9-41fb-aaea-32292ec5acef', 'fat', 10, 'as-fed'),
  ('f64fe5b7-e9e9-41fb-aaea-32292ec5acef', 'fiber', 0.5, 'as-fed'),
  ('f64fe5b7-e9e9-41fb-aaea-32292ec5acef', 'ash', 4, 'as-fed'),
  ('f64fe5b7-e9e9-41fb-aaea-32292ec5acef', 'moisture', 63, 'as-fed'),
  ('f64fe5b7-e9e9-41fb-aaea-32292ec5acef', 'kcal', 175, 'as-fed'),
  ('f64fe5b7-e9e9-41fb-aaea-32292ec5acef', 'calcium', 0.45, 'as-fed'),
  ('f64fe5b7-e9e9-41fb-aaea-32292ec5acef', 'phosphorus', 0.3, 'as-fed');

-- Rodi — Lam met Rijst (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://rodi-petfood.nl/product/lam-met-rijst/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 160 kcal per 100 g; geen omrekening nodig. De bron noemt dit product een worst; de opdracht geeft voertype wet en verpakking 400 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = '11f75662-0d15-485b-83b2-4cd4839122c5';
delete from public.recipe_nutrition where recipe_version_id = '11f75662-0d15-485b-83b2-4cd4839122c5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('11f75662-0d15-485b-83b2-4cd4839122c5', 'protein', 15, 'as-fed'),
  ('11f75662-0d15-485b-83b2-4cd4839122c5', 'fat', 6, 'as-fed'),
  ('11f75662-0d15-485b-83b2-4cd4839122c5', 'fiber', 0.5, 'as-fed'),
  ('11f75662-0d15-485b-83b2-4cd4839122c5', 'ash', 3.5, 'as-fed'),
  ('11f75662-0d15-485b-83b2-4cd4839122c5', 'moisture', 63, 'as-fed'),
  ('11f75662-0d15-485b-83b2-4cd4839122c5', 'kcal', 160, 'as-fed'),
  ('11f75662-0d15-485b-83b2-4cd4839122c5', 'calcium', 0.8, 'as-fed'),
  ('11f75662-0d15-485b-83b2-4cd4839122c5', 'phosphorus', 0.5, 'as-fed');

-- Rodi — Maaltijdburgers Kip met Rijst (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://rodi-petfood.nl/product/daily-basics-hart/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron al als 166 kcal per 100 g; geen omrekening nodig. De paginatitel is ''Maaltijdburgers Kip met Rijst''; de URL bevat ''hart''. Omega-3 en omega-6 worden niet vermeld.'
 where id = '05e482a9-b57f-4e9d-aadd-da260212607c';
delete from public.recipe_nutrition where recipe_version_id = '05e482a9-b57f-4e9d-aadd-da260212607c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('05e482a9-b57f-4e9d-aadd-da260212607c', 'protein', 12, 'as-fed'),
  ('05e482a9-b57f-4e9d-aadd-da260212607c', 'fat', 11.5, 'as-fed'),
  ('05e482a9-b57f-4e9d-aadd-da260212607c', 'fiber', 1.5, 'as-fed'),
  ('05e482a9-b57f-4e9d-aadd-da260212607c', 'ash', 3.5, 'as-fed'),
  ('05e482a9-b57f-4e9d-aadd-da260212607c', 'moisture', 68, 'as-fed'),
  ('05e482a9-b57f-4e9d-aadd-da260212607c', 'kcal', 166, 'as-fed'),
  ('05e482a9-b57f-4e9d-aadd-da260212607c', 'calcium', 0.5, 'as-fed'),
  ('05e482a9-b57f-4e9d-aadd-da260212607c', 'phosphorus', 0.4, 'as-fed');

-- Rodi — Maaltijdburgers Lam met Rijst (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://rodi-petfood.nl/product/daily-basics-lam-met-rijst/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron al als 159 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '1fe560b7-f38e-4f6a-a328-20b7acda982b';
delete from public.recipe_nutrition where recipe_version_id = '1fe560b7-f38e-4f6a-a328-20b7acda982b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1fe560b7-f38e-4f6a-a328-20b7acda982b', 'protein', 11, 'as-fed'),
  ('1fe560b7-f38e-4f6a-a328-20b7acda982b', 'fat', 10.5, 'as-fed'),
  ('1fe560b7-f38e-4f6a-a328-20b7acda982b', 'fiber', 1.5, 'as-fed'),
  ('1fe560b7-f38e-4f6a-a328-20b7acda982b', 'ash', 4, 'as-fed'),
  ('1fe560b7-f38e-4f6a-a328-20b7acda982b', 'moisture', 68, 'as-fed'),
  ('1fe560b7-f38e-4f6a-a328-20b7acda982b', 'kcal', 159, 'as-fed'),
  ('1fe560b7-f38e-4f6a-a328-20b7acda982b', 'calcium', 0.4, 'as-fed'),
  ('1fe560b7-f38e-4f6a-a328-20b7acda982b', 'phosphorus', 0.3, 'as-fed');

-- Rodi — Maaltijdburgers Rund met Hart (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://rodi-petfood.nl/product/daily-basics-rund-met-pens/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron al als 147 kcal per 100 g; geen omrekening nodig. De paginatitel is ''Maaltijdburgers Rund met Hart''; de URL bevat ''pens''. Omega-3 en omega-6 worden niet vermeld.'
 where id = '6deff713-53db-4fd2-a396-9793b0ba3348';
delete from public.recipe_nutrition where recipe_version_id = '6deff713-53db-4fd2-a396-9793b0ba3348';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6deff713-53db-4fd2-a396-9793b0ba3348', 'protein', 13.5, 'as-fed'),
  ('6deff713-53db-4fd2-a396-9793b0ba3348', 'fat', 7, 'as-fed'),
  ('6deff713-53db-4fd2-a396-9793b0ba3348', 'fiber', 1.2, 'as-fed'),
  ('6deff713-53db-4fd2-a396-9793b0ba3348', 'ash', 3.5, 'as-fed'),
  ('6deff713-53db-4fd2-a396-9793b0ba3348', 'moisture', 68, 'as-fed'),
  ('6deff713-53db-4fd2-a396-9793b0ba3348', 'kcal', 147, 'as-fed'),
  ('6deff713-53db-4fd2-a396-9793b0ba3348', 'calcium', 0.5, 'as-fed'),
  ('6deff713-53db-4fd2-a396-9793b0ba3348', 'phosphorus', 0.4, 'as-fed');

-- Rodi — Maaltijdburgers Rund met Pens (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://rodi-petfood.nl/product/daily-basics-rund/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron al als 177 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '987b3525-a80b-4a3c-a8dd-d62a1672e995';
delete from public.recipe_nutrition where recipe_version_id = '987b3525-a80b-4a3c-a8dd-d62a1672e995';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('987b3525-a80b-4a3c-a8dd-d62a1672e995', 'protein', 14, 'as-fed'),
  ('987b3525-a80b-4a3c-a8dd-d62a1672e995', 'fat', 13, 'as-fed'),
  ('987b3525-a80b-4a3c-a8dd-d62a1672e995', 'fiber', 1, 'as-fed'),
  ('987b3525-a80b-4a3c-a8dd-d62a1672e995', 'ash', 3, 'as-fed'),
  ('987b3525-a80b-4a3c-a8dd-d62a1672e995', 'moisture', 68, 'as-fed'),
  ('987b3525-a80b-4a3c-a8dd-d62a1672e995', 'kcal', 177, 'as-fed'),
  ('987b3525-a80b-4a3c-a8dd-d62a1672e995', 'calcium', 0.4, 'as-fed'),
  ('987b3525-a80b-4a3c-a8dd-d62a1672e995', 'phosphorus', 0.3, 'as-fed');

-- Rodi — Power Rund (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://rodi-petfood.nl/product/rodi-power/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron al als 121 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'e9d5b1d7-27f8-462a-9885-9f41e00bf095';
delete from public.recipe_nutrition where recipe_version_id = 'e9d5b1d7-27f8-462a-9885-9f41e00bf095';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e9d5b1d7-27f8-462a-9885-9f41e00bf095', 'protein', 11.5, 'as-fed'),
  ('e9d5b1d7-27f8-462a-9885-9f41e00bf095', 'fat', 7.5, 'as-fed'),
  ('e9d5b1d7-27f8-462a-9885-9f41e00bf095', 'fiber', 0.6, 'as-fed'),
  ('e9d5b1d7-27f8-462a-9885-9f41e00bf095', 'ash', 2.2, 'as-fed'),
  ('e9d5b1d7-27f8-462a-9885-9f41e00bf095', 'moisture', 75, 'as-fed'),
  ('e9d5b1d7-27f8-462a-9885-9f41e00bf095', 'kcal', 121, 'as-fed'),
  ('e9d5b1d7-27f8-462a-9885-9f41e00bf095', 'calcium', 0.21, 'as-fed'),
  ('e9d5b1d7-27f8-462a-9885-9f41e00bf095', 'phosphorus', 0.17, 'as-fed');

-- Rodi — Sensitive Lam (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://rodi-petfood.nl/product/rodi-sensitive/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron al als 123 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'ab5fff4e-e175-4a12-addf-b6d5271325c9';
delete from public.recipe_nutrition where recipe_version_id = 'ab5fff4e-e175-4a12-addf-b6d5271325c9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ab5fff4e-e175-4a12-addf-b6d5271325c9', 'protein', 10, 'as-fed'),
  ('ab5fff4e-e175-4a12-addf-b6d5271325c9', 'fat', 8, 'as-fed'),
  ('ab5fff4e-e175-4a12-addf-b6d5271325c9', 'fiber', 0.7, 'as-fed'),
  ('ab5fff4e-e175-4a12-addf-b6d5271325c9', 'ash', 3, 'as-fed'),
  ('ab5fff4e-e175-4a12-addf-b6d5271325c9', 'moisture', 74, 'as-fed'),
  ('ab5fff4e-e175-4a12-addf-b6d5271325c9', 'kcal', 123, 'as-fed'),
  ('ab5fff4e-e175-4a12-addf-b6d5271325c9', 'calcium', 0.3, 'as-fed'),
  ('ab5fff4e-e175-4a12-addf-b6d5271325c9', 'phosphorus', 0.28, 'as-fed');

-- Rodi — Shine Kip met Zalm (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://rodi-petfood.nl/product/rodi-shine/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron al als 98 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 staan expliciet op de bron.'
 where id = '9d60430f-6155-4325-b234-2e5abb5e650a';
delete from public.recipe_nutrition where recipe_version_id = '9d60430f-6155-4325-b234-2e5abb5e650a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9d60430f-6155-4325-b234-2e5abb5e650a', 'protein', 10.1, 'as-fed'),
  ('9d60430f-6155-4325-b234-2e5abb5e650a', 'fat', 6, 'as-fed'),
  ('9d60430f-6155-4325-b234-2e5abb5e650a', 'fiber', 0.4, 'as-fed'),
  ('9d60430f-6155-4325-b234-2e5abb5e650a', 'ash', 2.7, 'as-fed'),
  ('9d60430f-6155-4325-b234-2e5abb5e650a', 'moisture', 79, 'as-fed'),
  ('9d60430f-6155-4325-b234-2e5abb5e650a', 'kcal', 98, 'as-fed'),
  ('9d60430f-6155-4325-b234-2e5abb5e650a', 'calcium', 0.33, 'as-fed'),
  ('9d60430f-6155-4325-b234-2e5abb5e650a', 'phosphorus', 0.26, 'as-fed'),
  ('9d60430f-6155-4325-b234-2e5abb5e650a', 'omega3', 0.42, 'as-fed'),
  ('9d60430f-6155-4325-b234-2e5abb5e650a', 'omega6', 1.2, 'as-fed');

-- Rodi — Vitality Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://rodi-petfood.nl/product/rodi-vitality/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron al als 88 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '684eb834-be83-465e-986d-3a35914a1ae4';
delete from public.recipe_nutrition where recipe_version_id = '684eb834-be83-465e-986d-3a35914a1ae4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('684eb834-be83-465e-986d-3a35914a1ae4', 'protein', 10.2, 'as-fed'),
  ('684eb834-be83-465e-986d-3a35914a1ae4', 'fat', 5, 'as-fed'),
  ('684eb834-be83-465e-986d-3a35914a1ae4', 'fiber', 0.7, 'as-fed'),
  ('684eb834-be83-465e-986d-3a35914a1ae4', 'ash', 2.6, 'as-fed'),
  ('684eb834-be83-465e-986d-3a35914a1ae4', 'moisture', 78, 'as-fed'),
  ('684eb834-be83-465e-986d-3a35914a1ae4', 'kcal', 88, 'as-fed'),
  ('684eb834-be83-465e-986d-3a35914a1ae4', 'calcium', 0.3, 'as-fed'),
  ('684eb834-be83-465e-986d-3a35914a1ae4', 'phosphorus', 0.25, 'as-fed');

-- bosch — Adult met gevogelte & gierst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bosch-tiernahrung.de/bosch_de_de/hpc-adult-gefluegel-hirse.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 365 kcal/100 g; geen omrekening nodig. Vocht, omega-3 en omega-6 worden niet vermeld.'
 where id = '1e48dbb5-94c2-4669-b86b-77de029b7823';
delete from public.recipe_nutrition where recipe_version_id = '1e48dbb5-94c2-4669-b86b-77de029b7823';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1e48dbb5-94c2-4669-b86b-77de029b7823', 'protein', 21.5, 'as-fed'),
  ('1e48dbb5-94c2-4669-b86b-77de029b7823', 'fat', 10.5, 'as-fed'),
  ('1e48dbb5-94c2-4669-b86b-77de029b7823', 'fiber', 2.5, 'as-fed'),
  ('1e48dbb5-94c2-4669-b86b-77de029b7823', 'ash', 6.5, 'as-fed'),
  ('1e48dbb5-94c2-4669-b86b-77de029b7823', 'kcal', 365, 'as-fed'),
  ('1e48dbb5-94c2-4669-b86b-77de029b7823', 'calcium', 1.3, 'as-fed'),
  ('1e48dbb5-94c2-4669-b86b-77de029b7823', 'phosphorus', 1, 'as-fed');

-- bosch — Adult met lam & rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bosch-tiernahrung.de/bosch_de_de/hpc-adult-lamm-reis.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 363 kcal/100 g; geen omrekening nodig. Vocht, omega-3 en omega-6 worden niet vermeld.'
 where id = '183d4565-5818-4f14-9a99-038291da6830';
delete from public.recipe_nutrition where recipe_version_id = '183d4565-5818-4f14-9a99-038291da6830';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('183d4565-5818-4f14-9a99-038291da6830', 'protein', 21.5, 'as-fed'),
  ('183d4565-5818-4f14-9a99-038291da6830', 'fat', 10.5, 'as-fed'),
  ('183d4565-5818-4f14-9a99-038291da6830', 'fiber', 2.5, 'as-fed'),
  ('183d4565-5818-4f14-9a99-038291da6830', 'ash', 5.8, 'as-fed'),
  ('183d4565-5818-4f14-9a99-038291da6830', 'kcal', 363, 'as-fed'),
  ('183d4565-5818-4f14-9a99-038291da6830', 'calcium', 1.1, 'as-fed'),
  ('183d4565-5818-4f14-9a99-038291da6830', 'phosphorus', 0.8, 'as-fed');

-- bosch — Freshe Schnauze Kalkoen met quinoa & spinazie (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bosch-tiernahrung.de/bosch_de_en/freshe-schnauze-nassfutter-pute.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 132 kcal/100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld. De verpakking staat niet op de bronpagina.'
 where id = '96ce219e-b92a-4e75-8345-7e87c6deacce';
delete from public.recipe_nutrition where recipe_version_id = '96ce219e-b92a-4e75-8345-7e87c6deacce';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('96ce219e-b92a-4e75-8345-7e87c6deacce', 'protein', 9, 'as-fed'),
  ('96ce219e-b92a-4e75-8345-7e87c6deacce', 'fat', 6.5, 'as-fed'),
  ('96ce219e-b92a-4e75-8345-7e87c6deacce', 'fiber', 0.9, 'as-fed'),
  ('96ce219e-b92a-4e75-8345-7e87c6deacce', 'ash', 2.1, 'as-fed'),
  ('96ce219e-b92a-4e75-8345-7e87c6deacce', 'moisture', 73.5, 'as-fed'),
  ('96ce219e-b92a-4e75-8345-7e87c6deacce', 'kcal', 132, 'as-fed'),
  ('96ce219e-b92a-4e75-8345-7e87c6deacce', 'calcium', 0.4, 'as-fed'),
  ('96ce219e-b92a-4e75-8345-7e87c6deacce', 'phosphorus', 0.32, 'as-fed');

-- bosch — Freshe Schnauze Kip met pompoen & broccoli (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bosch-tiernahrung.de/bosch_de_en/freshe-schnauze-nassfutter-huhn-mit-kuerbis.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 132 kcal/100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld. De verpakking staat niet op de bronpagina.'
 where id = 'fabd0b69-4e68-4908-be31-891d59ae6284';
delete from public.recipe_nutrition where recipe_version_id = 'fabd0b69-4e68-4908-be31-891d59ae6284';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fabd0b69-4e68-4908-be31-891d59ae6284', 'protein', 9, 'as-fed'),
  ('fabd0b69-4e68-4908-be31-891d59ae6284', 'fat', 6.5, 'as-fed'),
  ('fabd0b69-4e68-4908-be31-891d59ae6284', 'fiber', 0.9, 'as-fed'),
  ('fabd0b69-4e68-4908-be31-891d59ae6284', 'ash', 2.1, 'as-fed'),
  ('fabd0b69-4e68-4908-be31-891d59ae6284', 'moisture', 76, 'as-fed'),
  ('fabd0b69-4e68-4908-be31-891d59ae6284', 'kcal', 132, 'as-fed'),
  ('fabd0b69-4e68-4908-be31-891d59ae6284', 'calcium', 0.4, 'as-fed'),
  ('fabd0b69-4e68-4908-be31-891d59ae6284', 'phosphorus', 0.32, 'as-fed');

-- bosch — Freshe Schnauze Kip met rijst & wortel (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bosch-tiernahrung.de/bosch_de_en/freshe-schnauze-nassfutter-huhn.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 132 kcal/100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld. De verpakking staat niet op de bronpagina.'
 where id = '37e5c9aa-483e-4047-aeb1-646927bb7a95';
delete from public.recipe_nutrition where recipe_version_id = '37e5c9aa-483e-4047-aeb1-646927bb7a95';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('37e5c9aa-483e-4047-aeb1-646927bb7a95', 'protein', 9, 'as-fed'),
  ('37e5c9aa-483e-4047-aeb1-646927bb7a95', 'fat', 5.8, 'as-fed'),
  ('37e5c9aa-483e-4047-aeb1-646927bb7a95', 'fiber', 0.8, 'as-fed'),
  ('37e5c9aa-483e-4047-aeb1-646927bb7a95', 'ash', 2, 'as-fed'),
  ('37e5c9aa-483e-4047-aeb1-646927bb7a95', 'moisture', 71.5, 'as-fed'),
  ('37e5c9aa-483e-4047-aeb1-646927bb7a95', 'kcal', 132, 'as-fed'),
  ('37e5c9aa-483e-4047-aeb1-646927bb7a95', 'calcium', 0.42, 'as-fed'),
  ('37e5c9aa-483e-4047-aeb1-646927bb7a95', 'phosphorus', 0.35, 'as-fed');

-- bosch — Freshe Schnauze Rund met gierst & rode biet (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bosch-tiernahrung.de/bosch_de_en/freshe-schnauze-nassfutter-rind.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De bron vermeldt zowel 327 kcal/100 g als 5,70 MJ/kg; die waarden spreken elkaar tegen. 5,70 MJ/kg is omgerekend 136,2 kcal/100 g. Die omgerekende waarde is aangehouden omdat 327 kcal/100 g bij 72% vocht en 8,7% eiwit/7,2% vet onwaarschijnlijk is; de 327 lijkt een typefout. Omega-3 en omega-6 worden niet vermeld.'
 where id = '151279fc-f9df-43f3-9beb-6a285abd5dd6';
delete from public.recipe_nutrition where recipe_version_id = '151279fc-f9df-43f3-9beb-6a285abd5dd6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('151279fc-f9df-43f3-9beb-6a285abd5dd6', 'protein', 8.7, 'as-fed'),
  ('151279fc-f9df-43f3-9beb-6a285abd5dd6', 'fat', 7.2, 'as-fed'),
  ('151279fc-f9df-43f3-9beb-6a285abd5dd6', 'fiber', 0.9, 'as-fed'),
  ('151279fc-f9df-43f3-9beb-6a285abd5dd6', 'ash', 2.1, 'as-fed'),
  ('151279fc-f9df-43f3-9beb-6a285abd5dd6', 'moisture', 72, 'as-fed'),
  ('151279fc-f9df-43f3-9beb-6a285abd5dd6', 'kcal', 136.2, 'as-fed'),
  ('151279fc-f9df-43f3-9beb-6a285abd5dd6', 'calcium', 0.28, 'as-fed'),
  ('151279fc-f9df-43f3-9beb-6a285abd5dd6', 'phosphorus', 0.22, 'as-fed');

-- bosch — Heimat Adult met 68% regionaal rund (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bosch-tiernahrung.de/bosch_de_en/heimat-adult-regionales-landrind.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De bron vermeldt alleen 4,66 MJ/kg. Omgerekend: 4,66 MJ/kg = 4660 kJ/kg / 4,184 = 1113,8 kcal/kg, dus 111,4 kcal/100 g. Omega-3 en omega-6 worden niet vermeld. De verpakking staat niet op de bronpagina.'
 where id = '1ef03778-2ad3-4391-bc4d-add03308f31b';
delete from public.recipe_nutrition where recipe_version_id = '1ef03778-2ad3-4391-bc4d-add03308f31b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1ef03778-2ad3-4391-bc4d-add03308f31b', 'protein', 10, 'as-fed'),
  ('1ef03778-2ad3-4391-bc4d-add03308f31b', 'fat', 8, 'as-fed'),
  ('1ef03778-2ad3-4391-bc4d-add03308f31b', 'fiber', 0.5, 'as-fed'),
  ('1ef03778-2ad3-4391-bc4d-add03308f31b', 'ash', 2.5, 'as-fed'),
  ('1ef03778-2ad3-4391-bc4d-add03308f31b', 'moisture', 78, 'as-fed'),
  ('1ef03778-2ad3-4391-bc4d-add03308f31b', 'kcal', 111.4, 'as-fed'),
  ('1ef03778-2ad3-4391-bc4d-add03308f31b', 'calcium', 0.3, 'as-fed'),
  ('1ef03778-2ad3-4391-bc4d-add03308f31b', 'phosphorus', 0.25, 'as-fed');

-- bosch — Junior met lam & rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bosch-tiernahrung.de/bosch_de_de/hpc-junior-lamm-reis.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 370 kcal/100 g; geen omrekening nodig. Vocht, omega-3 en omega-6 worden niet vermeld.'
 where id = 'c6f77f78-f581-447e-b7aa-4532be6470cf';
delete from public.recipe_nutrition where recipe_version_id = 'c6f77f78-f581-447e-b7aa-4532be6470cf';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c6f77f78-f581-447e-b7aa-4532be6470cf', 'protein', 25, 'as-fed'),
  ('c6f77f78-f581-447e-b7aa-4532be6470cf', 'fat', 13, 'as-fed'),
  ('c6f77f78-f581-447e-b7aa-4532be6470cf', 'fiber', 2.5, 'as-fed'),
  ('c6f77f78-f581-447e-b7aa-4532be6470cf', 'ash', 7, 'as-fed'),
  ('c6f77f78-f581-447e-b7aa-4532be6470cf', 'kcal', 370, 'as-fed'),
  ('c6f77f78-f581-447e-b7aa-4532be6470cf', 'calcium', 1.3, 'as-fed'),
  ('c6f77f78-f581-447e-b7aa-4532be6470cf', 'phosphorus', 0.95, 'as-fed');

-- bosch — Sensitive met lam & rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bosch-tiernahrung.de/bosch_de_de/hpc-sensitive-lamm-reis.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 373 kcal/100 g; geen omrekening nodig. Vocht, omega-3 en omega-6 worden niet vermeld.'
 where id = '9a1a979a-0cab-4a0d-88cd-0568e1bc8857';
delete from public.recipe_nutrition where recipe_version_id = '9a1a979a-0cab-4a0d-88cd-0568e1bc8857';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9a1a979a-0cab-4a0d-88cd-0568e1bc8857', 'protein', 22.5, 'as-fed'),
  ('9a1a979a-0cab-4a0d-88cd-0568e1bc8857', 'fat', 14, 'as-fed'),
  ('9a1a979a-0cab-4a0d-88cd-0568e1bc8857', 'fiber', 2.5, 'as-fed'),
  ('9a1a979a-0cab-4a0d-88cd-0568e1bc8857', 'ash', 8, 'as-fed'),
  ('9a1a979a-0cab-4a0d-88cd-0568e1bc8857', 'kcal', 373, 'as-fed'),
  ('9a1a979a-0cab-4a0d-88cd-0568e1bc8857', 'calcium', 1.4, 'as-fed'),
  ('9a1a979a-0cab-4a0d-88cd-0568e1bc8857', 'phosphorus', 1.1, 'as-fed');

-- bosch — Soft Adult met kip & banaan (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bosch-tiernahrung.de/bosch_de_de/soft-adult-huehnchen-banane.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 338 kcal/100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '9a95616e-fe69-4aa2-922e-eddb1213298d';
delete from public.recipe_nutrition where recipe_version_id = '9a95616e-fe69-4aa2-922e-eddb1213298d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9a95616e-fe69-4aa2-922e-eddb1213298d', 'protein', 21, 'as-fed'),
  ('9a95616e-fe69-4aa2-922e-eddb1213298d', 'fat', 14, 'as-fed'),
  ('9a95616e-fe69-4aa2-922e-eddb1213298d', 'fiber', 2.5, 'as-fed'),
  ('9a95616e-fe69-4aa2-922e-eddb1213298d', 'ash', 6.3, 'as-fed'),
  ('9a95616e-fe69-4aa2-922e-eddb1213298d', 'moisture', 19, 'as-fed'),
  ('9a95616e-fe69-4aa2-922e-eddb1213298d', 'kcal', 338, 'as-fed'),
  ('9a95616e-fe69-4aa2-922e-eddb1213298d', 'calcium', 1.2, 'as-fed'),
  ('9a95616e-fe69-4aa2-922e-eddb1213298d', 'phosphorus', 0.8, 'as-fed');

-- bosch — Soft Junior met kip & zoete aardappel (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bosch-tiernahrung.de/bosch_de_de/soft-junior-huehnchen-suesskartoffel.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 349 kcal/100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'a960c05e-fe41-4a87-aafc-24007e688aa5';
delete from public.recipe_nutrition where recipe_version_id = 'a960c05e-fe41-4a87-aafc-24007e688aa5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a960c05e-fe41-4a87-aafc-24007e688aa5', 'protein', 24, 'as-fed'),
  ('a960c05e-fe41-4a87-aafc-24007e688aa5', 'fat', 16, 'as-fed'),
  ('a960c05e-fe41-4a87-aafc-24007e688aa5', 'fiber', 2, 'as-fed'),
  ('a960c05e-fe41-4a87-aafc-24007e688aa5', 'ash', 7, 'as-fed'),
  ('a960c05e-fe41-4a87-aafc-24007e688aa5', 'moisture', 19, 'as-fed'),
  ('a960c05e-fe41-4a87-aafc-24007e688aa5', 'kcal', 349, 'as-fed'),
  ('a960c05e-fe41-4a87-aafc-24007e688aa5', 'calcium', 1.35, 'as-fed'),
  ('a960c05e-fe41-4a87-aafc-24007e688aa5', 'phosphorus', 0.85, 'as-fed');

-- Animonda — BugBell Adult HighSensitive droogvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://animonda.de/product/bugbell-adult-trockenfutter-highsensitive/85004-0',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 357 kcal per 100 g; geen omrekening nodig. Vocht, omega-3 en omega-6 worden niet vermeld.'
 where id = '00198abb-3cd0-4126-ac6b-d63531535595';
delete from public.recipe_nutrition where recipe_version_id = '00198abb-3cd0-4126-ac6b-d63531535595';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('00198abb-3cd0-4126-ac6b-d63531535595', 'protein', 16, 'as-fed'),
  ('00198abb-3cd0-4126-ac6b-d63531535595', 'fat', 12, 'as-fed'),
  ('00198abb-3cd0-4126-ac6b-d63531535595', 'fiber', 4, 'as-fed'),
  ('00198abb-3cd0-4126-ac6b-d63531535595', 'ash', 6.5, 'as-fed'),
  ('00198abb-3cd0-4126-ac6b-d63531535595', 'kcal', 357, 'as-fed'),
  ('00198abb-3cd0-4126-ac6b-d63531535595', 'calcium', 0.9, 'as-fed'),
  ('00198abb-3cd0-4126-ac6b-d63531535595', 'phosphorus', 0.5, 'as-fed');

-- Animonda — GranCarno Adult rund + kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://animonda.de/product/grancarno-adult-rind-huhn/82732-0',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie alleen als 0,50 MJ per 100 g vermeld; omgerekend 500 kJ / 4,184 = 119,5 kcal/100 g. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '1355f078-920a-408d-9113-c830448a0c52';
delete from public.recipe_nutrition where recipe_version_id = '1355f078-920a-408d-9113-c830448a0c52';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1355f078-920a-408d-9113-c830448a0c52', 'protein', 10.5, 'as-fed'),
  ('1355f078-920a-408d-9113-c830448a0c52', 'fat', 7.5, 'as-fed'),
  ('1355f078-920a-408d-9113-c830448a0c52', 'fiber', 0.5, 'as-fed'),
  ('1355f078-920a-408d-9113-c830448a0c52', 'ash', 2.2, 'as-fed'),
  ('1355f078-920a-408d-9113-c830448a0c52', 'moisture', 78, 'as-fed'),
  ('1355f078-920a-408d-9113-c830448a0c52', 'kcal', 119.5, 'as-fed');

-- Animonda — GranCarno Junior gevogelte + lam droogvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://animonda.de/product/grancarno-junior-gefluegel-lamm/82944-0',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie alleen als 1,608 MJ per 100 g vermeld; omgerekend 1608 kJ / 4,184 = 384,3 kcal/100 g. Vocht, calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'f1f61207-d4c3-4754-8a4d-ed0e5863b2aa';
delete from public.recipe_nutrition where recipe_version_id = 'f1f61207-d4c3-4754-8a4d-ed0e5863b2aa';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f1f61207-d4c3-4754-8a4d-ed0e5863b2aa', 'protein', 30, 'as-fed'),
  ('f1f61207-d4c3-4754-8a4d-ed0e5863b2aa', 'fat', 16, 'as-fed'),
  ('f1f61207-d4c3-4754-8a4d-ed0e5863b2aa', 'fiber', 3, 'as-fed'),
  ('f1f61207-d4c3-4754-8a4d-ed0e5863b2aa', 'ash', 7.3, 'as-fed'),
  ('f1f61207-d4c3-4754-8a4d-ed0e5863b2aa', 'kcal', 384.3, 'as-fed');

-- Animonda — GranCarno Senior rund + lam (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://animonda.de/product/grancarno-senior-rind-lamm/82737-0',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie alleen als 0,49 MJ per 100 g vermeld; omgerekend 490 kJ / 4,184 = 117,1 kcal/100 g. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '574bddb0-7737-4568-80ea-2e87667953cb';
delete from public.recipe_nutrition where recipe_version_id = '574bddb0-7737-4568-80ea-2e87667953cb';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('574bddb0-7737-4568-80ea-2e87667953cb', 'protein', 10.5, 'as-fed'),
  ('574bddb0-7737-4568-80ea-2e87667953cb', 'fat', 8.5, 'as-fed'),
  ('574bddb0-7737-4568-80ea-2e87667953cb', 'fiber', 0.5, 'as-fed'),
  ('574bddb0-7737-4568-80ea-2e87667953cb', 'ash', 2.2, 'as-fed'),
  ('574bddb0-7737-4568-80ea-2e87667953cb', 'moisture', 77, 'as-fed'),
  ('574bddb0-7737-4568-80ea-2e87667953cb', 'kcal', 117.1, 'as-fed');

-- Animonda — Integra Protect Intestinal droogvoer voor honden (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://animonda.de/product/integra-protect-adult-intestinal/86415-0',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie alleen als 1,59 MJ per 100 g vermeld; omgerekend 1590 kJ / 4,184 = 380,0 kcal/100 g. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '7fe9d7e5-d6d1-4baf-9fd8-9328a9a19060';
delete from public.recipe_nutrition where recipe_version_id = '7fe9d7e5-d6d1-4baf-9fd8-9328a9a19060';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7fe9d7e5-d6d1-4baf-9fd8-9328a9a19060', 'protein', 26.5, 'as-fed'),
  ('7fe9d7e5-d6d1-4baf-9fd8-9328a9a19060', 'fat', 13.5, 'as-fed'),
  ('7fe9d7e5-d6d1-4baf-9fd8-9328a9a19060', 'fiber', 2.5, 'as-fed'),
  ('7fe9d7e5-d6d1-4baf-9fd8-9328a9a19060', 'ash', 6, 'as-fed'),
  ('7fe9d7e5-d6d1-4baf-9fd8-9328a9a19060', 'moisture', 8, 'as-fed'),
  ('7fe9d7e5-d6d1-4baf-9fd8-9328a9a19060', 'kcal', 380, 'as-fed');

-- Animonda — Integra Protect Intestinal pure kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://animonda.de/product/integra-protect-adult-intestinal-huhn-pur/86414-0',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie alleen als 0,35 MJ per 100 g vermeld; omgerekend 350 kJ / 4,184 = 83,7 kcal/100 g. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'a79e07ae-32c9-41a4-b43d-0ddab5182eda';
delete from public.recipe_nutrition where recipe_version_id = 'a79e07ae-32c9-41a4-b43d-0ddab5182eda';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a79e07ae-32c9-41a4-b43d-0ddab5182eda', 'protein', 10.6, 'as-fed'),
  ('a79e07ae-32c9-41a4-b43d-0ddab5182eda', 'fat', 4, 'as-fed'),
  ('a79e07ae-32c9-41a4-b43d-0ddab5182eda', 'fiber', 0.3, 'as-fed'),
  ('a79e07ae-32c9-41a4-b43d-0ddab5182eda', 'ash', 2.2, 'as-fed'),
  ('a79e07ae-32c9-41a4-b43d-0ddab5182eda', 'moisture', 81, 'as-fed'),
  ('a79e07ae-32c9-41a4-b43d-0ddab5182eda', 'kcal', 83.7, 'as-fed');

-- Animonda — Integra Protect Renal droogvoer voor honden (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://animonda.de/product/integra-protect-adult-renal/86443-0',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie alleen als 1,74 MJ per 100 g vermeld; omgerekend 1740 kJ / 4,184 = 415,9 kcal/100 g. Linolzuur wordt vermeld, maar niet als omega-6; daarom omega6 null. Omega-3 wordt niet vermeld.'
 where id = 'e9c73646-6f9a-4f42-8ca5-45fedb039dec';
delete from public.recipe_nutrition where recipe_version_id = 'e9c73646-6f9a-4f42-8ca5-45fedb039dec';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e9c73646-6f9a-4f42-8ca5-45fedb039dec', 'protein', 16, 'as-fed'),
  ('e9c73646-6f9a-4f42-8ca5-45fedb039dec', 'fat', 20, 'as-fed'),
  ('e9c73646-6f9a-4f42-8ca5-45fedb039dec', 'fiber', 2, 'as-fed'),
  ('e9c73646-6f9a-4f42-8ca5-45fedb039dec', 'ash', 4.5, 'as-fed'),
  ('e9c73646-6f9a-4f42-8ca5-45fedb039dec', 'moisture', 8, 'as-fed'),
  ('e9c73646-6f9a-4f42-8ca5-45fedb039dec', 'kcal', 415.9, 'as-fed'),
  ('e9c73646-6f9a-4f42-8ca5-45fedb039dec', 'calcium', 0.7, 'as-fed'),
  ('e9c73646-6f9a-4f42-8ca5-45fedb039dec', 'phosphorus', 0.4, 'as-fed');

-- Animonda — Integra Protect Renal met kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://animonda.de/product/integra-protect-adult-renal-mit-huhn/86400-0',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie alleen als 0,66 MJ per 100 g vermeld; omgerekend 660 kJ / 4,184 = 157,7 kcal/100 g. Linolzuur wordt vermeld, maar niet als omega-6; daarom omega6 null. Omega-3 wordt niet vermeld.'
 where id = '4e0c2ca7-c7bf-40b1-8155-74ce275f7f4a';
delete from public.recipe_nutrition where recipe_version_id = '4e0c2ca7-c7bf-40b1-8155-74ce275f7f4a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4e0c2ca7-c7bf-40b1-8155-74ce275f7f4a', 'protein', 6.6, 'as-fed'),
  ('4e0c2ca7-c7bf-40b1-8155-74ce275f7f4a', 'fat', 16, 'as-fed'),
  ('4e0c2ca7-c7bf-40b1-8155-74ce275f7f4a', 'fiber', 0.5, 'as-fed'),
  ('4e0c2ca7-c7bf-40b1-8155-74ce275f7f4a', 'ash', 1.3, 'as-fed'),
  ('4e0c2ca7-c7bf-40b1-8155-74ce275f7f4a', 'moisture', 73, 'as-fed'),
  ('4e0c2ca7-c7bf-40b1-8155-74ce275f7f4a', 'kcal', 157.7, 'as-fed'),
  ('4e0c2ca7-c7bf-40b1-8155-74ce275f7f4a', 'calcium', 0.21, 'as-fed'),
  ('4e0c2ca7-c7bf-40b1-8155-74ce275f7f4a', 'phosphorus', 0.15, 'as-fed');

-- Animonda — Integra Protect Sensitive droogvoer voor honden (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://animonda.de/product/integra-protect-adult-sensitive/86447-0',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie alleen als 1,69 MJ per 100 g vermeld; omgerekend 1690 kJ / 4,184 = 403,9 kcal/100 g. Calcium en fosfor worden niet vermeld. Linolzuur wordt vermeld, maar niet als omega-6; daarom omega6 null.'
 where id = '4569dc76-f0c2-4c05-a1ef-f2b8e1484ac7';
delete from public.recipe_nutrition where recipe_version_id = '4569dc76-f0c2-4c05-a1ef-f2b8e1484ac7';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4569dc76-f0c2-4c05-a1ef-f2b8e1484ac7', 'protein', 24.5, 'as-fed'),
  ('4569dc76-f0c2-4c05-a1ef-f2b8e1484ac7', 'fat', 16, 'as-fed'),
  ('4569dc76-f0c2-4c05-a1ef-f2b8e1484ac7', 'fiber', 1.5, 'as-fed'),
  ('4569dc76-f0c2-4c05-a1ef-f2b8e1484ac7', 'ash', 6.5, 'as-fed'),
  ('4569dc76-f0c2-4c05-a1ef-f2b8e1484ac7', 'moisture', 6, 'as-fed'),
  ('4569dc76-f0c2-4c05-a1ef-f2b8e1484ac7', 'kcal', 403.9, 'as-fed');

-- Animonda — Integra Protect Sensitive kip + pastinaak (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://animonda.de/product/integra-protect-adult-sensitive-huhn-pastinaken/86538-0',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie alleen als 0,39 MJ per 100 g vermeld; omgerekend 390 kJ / 4,184 = 93,2 kcal/100 g. Calcium en fosfor worden niet vermeld. Linolzuur wordt vermeld, maar niet als omega-6; daarom omega6 null.'
 where id = '0b9f3928-0674-456c-89b1-fb3f39d41d90';
delete from public.recipe_nutrition where recipe_version_id = '0b9f3928-0674-456c-89b1-fb3f39d41d90';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0b9f3928-0674-456c-89b1-fb3f39d41d90', 'protein', 10, 'as-fed'),
  ('0b9f3928-0674-456c-89b1-fb3f39d41d90', 'fat', 6, 'as-fed'),
  ('0b9f3928-0674-456c-89b1-fb3f39d41d90', 'fiber', 0.5, 'as-fed'),
  ('0b9f3928-0674-456c-89b1-fb3f39d41d90', 'ash', 1.6, 'as-fed'),
  ('0b9f3928-0674-456c-89b1-fb3f39d41d90', 'moisture', 80, 'as-fed'),
  ('0b9f3928-0674-456c-89b1-fb3f39d41d90', 'kcal', 93.2, 'as-fed');

-- Belcando — Adult Active (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.belcando.de/belcando-adult-active',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie komt uit de door de fabrikant bij dit product gelinkte Analysetabelle (PDF): 3680 kcal/kg, dus 368 kcal/100 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = '1de1eb1e-40db-491c-9aa7-7053729a70bb';
delete from public.recipe_nutrition where recipe_version_id = '1de1eb1e-40db-491c-9aa7-7053729a70bb';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1de1eb1e-40db-491c-9aa7-7053729a70bb', 'protein', 25, 'as-fed'),
  ('1de1eb1e-40db-491c-9aa7-7053729a70bb', 'fat', 14.5, 'as-fed'),
  ('1de1eb1e-40db-491c-9aa7-7053729a70bb', 'fiber', 3.2, 'as-fed'),
  ('1de1eb1e-40db-491c-9aa7-7053729a70bb', 'ash', 7, 'as-fed'),
  ('1de1eb1e-40db-491c-9aa7-7053729a70bb', 'moisture', 10, 'as-fed'),
  ('1de1eb1e-40db-491c-9aa7-7053729a70bb', 'kcal', 368, 'as-fed'),
  ('1de1eb1e-40db-491c-9aa7-7053729a70bb', 'calcium', 1.3, 'as-fed'),
  ('1de1eb1e-40db-491c-9aa7-7053729a70bb', 'phosphorus', 0.9, 'as-fed');

-- Belcando — Adult Dinner (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.belcando.de/belcando-adult-dinner',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie komt uit de door de fabrikant bij dit product gelinkte Analysetabelle (PDF): 3480 kcal/kg, dus 348 kcal/100 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = '5cba303f-e325-43de-a891-ea497cc48f3c';
delete from public.recipe_nutrition where recipe_version_id = '5cba303f-e325-43de-a891-ea497cc48f3c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5cba303f-e325-43de-a891-ea497cc48f3c', 'protein', 23, 'as-fed'),
  ('5cba303f-e325-43de-a891-ea497cc48f3c', 'fat', 10.5, 'as-fed'),
  ('5cba303f-e325-43de-a891-ea497cc48f3c', 'fiber', 3.4, 'as-fed'),
  ('5cba303f-e325-43de-a891-ea497cc48f3c', 'ash', 7, 'as-fed'),
  ('5cba303f-e325-43de-a891-ea497cc48f3c', 'moisture', 10, 'as-fed'),
  ('5cba303f-e325-43de-a891-ea497cc48f3c', 'kcal', 348, 'as-fed'),
  ('5cba303f-e325-43de-a891-ea497cc48f3c', 'calcium', 1.3, 'as-fed'),
  ('5cba303f-e325-43de-a891-ea497cc48f3c', 'phosphorus', 0.9, 'as-fed');

-- Belcando — Adult GF Poultry (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.belcando.de/belcando-adult-gf-poultry',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie komt uit de door de fabrikant bij dit product gelinkte Analysetabelle (PDF): 3550 kcal/kg, dus 355 kcal/100 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = '0e761622-ceb1-4700-b4d0-e2f12929b713';
delete from public.recipe_nutrition where recipe_version_id = '0e761622-ceb1-4700-b4d0-e2f12929b713';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0e761622-ceb1-4700-b4d0-e2f12929b713', 'protein', 23.5, 'as-fed'),
  ('0e761622-ceb1-4700-b4d0-e2f12929b713', 'fat', 12.5, 'as-fed'),
  ('0e761622-ceb1-4700-b4d0-e2f12929b713', 'fiber', 3.5, 'as-fed'),
  ('0e761622-ceb1-4700-b4d0-e2f12929b713', 'ash', 7, 'as-fed'),
  ('0e761622-ceb1-4700-b4d0-e2f12929b713', 'moisture', 10, 'as-fed'),
  ('0e761622-ceb1-4700-b4d0-e2f12929b713', 'kcal', 355, 'as-fed'),
  ('0e761622-ceb1-4700-b4d0-e2f12929b713', 'calcium', 1.2, 'as-fed'),
  ('0e761622-ceb1-4700-b4d0-e2f12929b713', 'phosphorus', 0.9, 'as-fed');

-- Belcando — Adult Lamb & Rice (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.belcando.de/belcando-adult-lamb-rice',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie komt uit de door de fabrikant bij dit product gelinkte Analysetabelle (PDF): 3580 kcal/kg, dus 358 kcal/100 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = '9906a29b-cde4-4d6d-8979-9594d3034964';
delete from public.recipe_nutrition where recipe_version_id = '9906a29b-cde4-4d6d-8979-9594d3034964';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9906a29b-cde4-4d6d-8979-9594d3034964', 'protein', 23, 'as-fed'),
  ('9906a29b-cde4-4d6d-8979-9594d3034964', 'fat', 12.5, 'as-fed'),
  ('9906a29b-cde4-4d6d-8979-9594d3034964', 'fiber', 3.2, 'as-fed'),
  ('9906a29b-cde4-4d6d-8979-9594d3034964', 'ash', 7, 'as-fed'),
  ('9906a29b-cde4-4d6d-8979-9594d3034964', 'moisture', 10, 'as-fed'),
  ('9906a29b-cde4-4d6d-8979-9594d3034964', 'kcal', 358, 'as-fed'),
  ('9906a29b-cde4-4d6d-8979-9594d3034964', 'calcium', 1.6, 'as-fed'),
  ('9906a29b-cde4-4d6d-8979-9594d3034964', 'phosphorus', 1, 'as-fed');

-- Belcando — Adult Light (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.belcando.de/belcando-adult-light',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie komt uit de door de fabrikant bij dit product gelinkte Analysetabelle (PDF): 3330 kcal/kg, dus 333 kcal/100 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'c8c7fe99-0d23-4202-8365-b7588b86bc02';
delete from public.recipe_nutrition where recipe_version_id = 'c8c7fe99-0d23-4202-8365-b7588b86bc02';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c8c7fe99-0d23-4202-8365-b7588b86bc02', 'protein', 19.8, 'as-fed'),
  ('c8c7fe99-0d23-4202-8365-b7588b86bc02', 'fat', 9, 'as-fed'),
  ('c8c7fe99-0d23-4202-8365-b7588b86bc02', 'fiber', 5, 'as-fed'),
  ('c8c7fe99-0d23-4202-8365-b7588b86bc02', 'ash', 6.5, 'as-fed'),
  ('c8c7fe99-0d23-4202-8365-b7588b86bc02', 'moisture', 10, 'as-fed'),
  ('c8c7fe99-0d23-4202-8365-b7588b86bc02', 'kcal', 333, 'as-fed'),
  ('c8c7fe99-0d23-4202-8365-b7588b86bc02', 'calcium', 1, 'as-fed'),
  ('c8c7fe99-0d23-4202-8365-b7588b86bc02', 'phosphorus', 0.8, 'as-fed');

-- Belcando — Adult Multi-Croc (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.belcando.de/belcando-adult-multi-croc',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie komt uit de door de fabrikant bij dit product gelinkte Analysetabelle (PDF): 3550 kcal/kg, dus 355 kcal/100 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'f003ec6a-5b15-446d-9bb1-2cf97172ea58';
delete from public.recipe_nutrition where recipe_version_id = 'f003ec6a-5b15-446d-9bb1-2cf97172ea58';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f003ec6a-5b15-446d-9bb1-2cf97172ea58', 'protein', 24, 'as-fed'),
  ('f003ec6a-5b15-446d-9bb1-2cf97172ea58', 'fat', 11, 'as-fed'),
  ('f003ec6a-5b15-446d-9bb1-2cf97172ea58', 'fiber', 2.8, 'as-fed'),
  ('f003ec6a-5b15-446d-9bb1-2cf97172ea58', 'ash', 7, 'as-fed'),
  ('f003ec6a-5b15-446d-9bb1-2cf97172ea58', 'moisture', 10, 'as-fed'),
  ('f003ec6a-5b15-446d-9bb1-2cf97172ea58', 'kcal', 355, 'as-fed'),
  ('f003ec6a-5b15-446d-9bb1-2cf97172ea58', 'calcium', 1.4, 'as-fed'),
  ('f003ec6a-5b15-446d-9bb1-2cf97172ea58', 'phosphorus', 1, 'as-fed');

-- Belcando — Finest GF Salmon (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.belcando.de/belcando-finest-gf-salmon',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie komt uit de door de fabrikant bij dit product gelinkte Analysetabelle (PDF): 3670 kcal/kg, dus 367 kcal/100 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'd218c7d0-a2af-4cf5-9dfb-3a161fc27f07';
delete from public.recipe_nutrition where recipe_version_id = 'd218c7d0-a2af-4cf5-9dfb-3a161fc27f07';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d218c7d0-a2af-4cf5-9dfb-3a161fc27f07', 'protein', 25, 'as-fed'),
  ('d218c7d0-a2af-4cf5-9dfb-3a161fc27f07', 'fat', 15, 'as-fed'),
  ('d218c7d0-a2af-4cf5-9dfb-3a161fc27f07', 'fiber', 3.6, 'as-fed'),
  ('d218c7d0-a2af-4cf5-9dfb-3a161fc27f07', 'ash', 7.3, 'as-fed'),
  ('d218c7d0-a2af-4cf5-9dfb-3a161fc27f07', 'moisture', 10, 'as-fed'),
  ('d218c7d0-a2af-4cf5-9dfb-3a161fc27f07', 'kcal', 367, 'as-fed'),
  ('d218c7d0-a2af-4cf5-9dfb-3a161fc27f07', 'calcium', 1.2, 'as-fed'),
  ('d218c7d0-a2af-4cf5-9dfb-3a161fc27f07', 'phosphorus', 0.9, 'as-fed');

-- Belcando — Junior GF Poultry (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.belcando.de/belcando-junior-gf-poultry',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie komt uit de door de fabrikant bij dit product gelinkte Analysetabelle (PDF): 3720 kcal/kg, dus 372 kcal/100 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'a2778946-9cac-4285-8150-a3130b8ce0c9';
delete from public.recipe_nutrition where recipe_version_id = 'a2778946-9cac-4285-8150-a3130b8ce0c9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a2778946-9cac-4285-8150-a3130b8ce0c9', 'protein', 26, 'as-fed'),
  ('a2778946-9cac-4285-8150-a3130b8ce0c9', 'fat', 15, 'as-fed'),
  ('a2778946-9cac-4285-8150-a3130b8ce0c9', 'fiber', 2.8, 'as-fed'),
  ('a2778946-9cac-4285-8150-a3130b8ce0c9', 'ash', 7.4, 'as-fed'),
  ('a2778946-9cac-4285-8150-a3130b8ce0c9', 'moisture', 10, 'as-fed'),
  ('a2778946-9cac-4285-8150-a3130b8ce0c9', 'kcal', 372, 'as-fed'),
  ('a2778946-9cac-4285-8150-a3130b8ce0c9', 'calcium', 1.2, 'as-fed'),
  ('a2778946-9cac-4285-8150-a3130b8ce0c9', 'phosphorus', 1, 'as-fed');

-- Belcando — Puppy Gravy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.belcando.de/belcando-puppy-gravy',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie komt uit de door de fabrikant bij dit product gelinkte Analysetabelle (PDF): 3910 kcal/kg, dus 391 kcal/100 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = '4859a4b1-ad42-4a7d-b3a3-0784063199f4';
delete from public.recipe_nutrition where recipe_version_id = '4859a4b1-ad42-4a7d-b3a3-0784063199f4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4859a4b1-ad42-4a7d-b3a3-0784063199f4', 'protein', 29, 'as-fed'),
  ('4859a4b1-ad42-4a7d-b3a3-0784063199f4', 'fat', 17, 'as-fed'),
  ('4859a4b1-ad42-4a7d-b3a3-0784063199f4', 'fiber', 2, 'as-fed'),
  ('4859a4b1-ad42-4a7d-b3a3-0784063199f4', 'ash', 7.5, 'as-fed'),
  ('4859a4b1-ad42-4a7d-b3a3-0784063199f4', 'moisture', 10, 'as-fed'),
  ('4859a4b1-ad42-4a7d-b3a3-0784063199f4', 'kcal', 391, 'as-fed'),
  ('4859a4b1-ad42-4a7d-b3a3-0784063199f4', 'calcium', 1.4, 'as-fed'),
  ('4859a4b1-ad42-4a7d-b3a3-0784063199f4', 'phosphorus', 1.1, 'as-fed');

-- Belcando — Senior Sensitive (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.belcando.de/belcando-senior-sensitive',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie komt uit de door de fabrikant bij dit product gelinkte Analysetabelle (PDF): 3440 kcal/kg, dus 344 kcal/100 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'd19c1244-c8d4-4f78-8ea5-4609f4bb3eac';
delete from public.recipe_nutrition where recipe_version_id = 'd19c1244-c8d4-4f78-8ea5-4609f4bb3eac';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d19c1244-c8d4-4f78-8ea5-4609f4bb3eac', 'protein', 19.5, 'as-fed'),
  ('d19c1244-c8d4-4f78-8ea5-4609f4bb3eac', 'fat', 10, 'as-fed'),
  ('d19c1244-c8d4-4f78-8ea5-4609f4bb3eac', 'fiber', 4.5, 'as-fed'),
  ('d19c1244-c8d4-4f78-8ea5-4609f4bb3eac', 'ash', 5, 'as-fed'),
  ('d19c1244-c8d4-4f78-8ea5-4609f4bb3eac', 'moisture', 10, 'as-fed'),
  ('d19c1244-c8d4-4f78-8ea5-4609f4bb3eac', 'kcal', 344, 'as-fed'),
  ('d19c1244-c8d4-4f78-8ea5-4609f4bb3eac', 'calcium', 0.8, 'as-fed'),
  ('d19c1244-c8d4-4f78-8ea5-4609f4bb3eac', 'phosphorus', 0.55, 'as-fed');

-- Bonzo — Junior met Kip, Groenten en Melk (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-bonzo-honden-brokken-junior-kip-groenten',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De fabrikant vermeldt op deze pagina geen metaboliseerbare energie; daarom kcal null. Vocht wordt niet vermeld. De bron noemt bij omega 3 ''linolzuur''; de opgegeven 0,1% is overgenomen.'
 where id = '7c86e1a7-aa82-4a7f-9b17-2ec87b04d2f3';
delete from public.recipe_nutrition where recipe_version_id = '7c86e1a7-aa82-4a7f-9b17-2ec87b04d2f3';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7c86e1a7-aa82-4a7f-9b17-2ec87b04d2f3', 'protein', 25, 'as-fed'),
  ('7c86e1a7-aa82-4a7f-9b17-2ec87b04d2f3', 'fat', 12, 'as-fed'),
  ('7c86e1a7-aa82-4a7f-9b17-2ec87b04d2f3', 'fiber', 3, 'as-fed'),
  ('7c86e1a7-aa82-4a7f-9b17-2ec87b04d2f3', 'ash', 7.5, 'as-fed'),
  ('7c86e1a7-aa82-4a7f-9b17-2ec87b04d2f3', 'calcium', 1.4, 'as-fed'),
  ('7c86e1a7-aa82-4a7f-9b17-2ec87b04d2f3', 'phosphorus', 1, 'as-fed'),
  ('7c86e1a7-aa82-4a7f-9b17-2ec87b04d2f3', 'omega3', 0.1, 'as-fed'),
  ('7c86e1a7-aa82-4a7f-9b17-2ec87b04d2f3', 'omega6', 1.6, 'as-fed');

-- Bonzo — Maxi voor grote rassen met Rund (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-bonzo-honden-brokken-maxi-rund',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De fabrikant vermeldt op deze pagina geen metaboliseerbare energie; daarom kcal null. Vocht, calcium en fosfor worden niet vermeld. De bron noemt bij omega 3 ''linolzuur''; de opgegeven 0,1% is overgenomen.'
 where id = '95561896-7938-4a8c-b087-2f1428170e34';
delete from public.recipe_nutrition where recipe_version_id = '95561896-7938-4a8c-b087-2f1428170e34';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('95561896-7938-4a8c-b087-2f1428170e34', 'protein', 20, 'as-fed'),
  ('95561896-7938-4a8c-b087-2f1428170e34', 'fat', 10, 'as-fed'),
  ('95561896-7938-4a8c-b087-2f1428170e34', 'fiber', 3.5, 'as-fed'),
  ('95561896-7938-4a8c-b087-2f1428170e34', 'ash', 8, 'as-fed'),
  ('95561896-7938-4a8c-b087-2f1428170e34', 'omega3', 0.1, 'as-fed'),
  ('95561896-7938-4a8c-b087-2f1428170e34', 'omega6', 1.5, 'as-fed');

-- Bonzo — Menubrokken Adult Kip & Groenten (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-bonzo-honden-brokken-menu-brokken-rund-kip',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De fabrikant vermeldt op deze pagina geen metaboliseerbare energie; daarom kcal null. Vocht, calcium en fosfor worden niet vermeld.'
 where id = '85f581dc-2050-4876-b6f3-9b5aed3d5db4';
delete from public.recipe_nutrition where recipe_version_id = '85f581dc-2050-4876-b6f3-9b5aed3d5db4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('85f581dc-2050-4876-b6f3-9b5aed3d5db4', 'protein', 20, 'as-fed'),
  ('85f581dc-2050-4876-b6f3-9b5aed3d5db4', 'fat', 10, 'as-fed'),
  ('85f581dc-2050-4876-b6f3-9b5aed3d5db4', 'fiber', 3.5, 'as-fed'),
  ('85f581dc-2050-4876-b6f3-9b5aed3d5db4', 'ash', 8, 'as-fed'),
  ('85f581dc-2050-4876-b6f3-9b5aed3d5db4', 'omega3', 0.1, 'as-fed'),
  ('85f581dc-2050-4876-b6f3-9b5aed3d5db4', 'omega6', 1.7, 'as-fed');

-- Bonzo — Mini Menu met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-bonzo-honden-brokken-mini-menu-kip',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De fabrikant vermeldt op deze pagina geen metaboliseerbare energie; daarom kcal null. Vocht, calcium en fosfor worden niet vermeld.'
 where id = '87c2e8e2-1b7e-427d-b76f-7db5f3b675c9';
delete from public.recipe_nutrition where recipe_version_id = '87c2e8e2-1b7e-427d-b76f-7db5f3b675c9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('87c2e8e2-1b7e-427d-b76f-7db5f3b675c9', 'protein', 25, 'as-fed'),
  ('87c2e8e2-1b7e-427d-b76f-7db5f3b675c9', 'fat', 12, 'as-fed'),
  ('87c2e8e2-1b7e-427d-b76f-7db5f3b675c9', 'fiber', 3.5, 'as-fed'),
  ('87c2e8e2-1b7e-427d-b76f-7db5f3b675c9', 'ash', 8, 'as-fed'),
  ('87c2e8e2-1b7e-427d-b76f-7db5f3b675c9', 'omega3', 0.1, 'as-fed'),
  ('87c2e8e2-1b7e-427d-b76f-7db5f3b675c9', 'omega6', 1.7, 'as-fed');

-- Bonzo — Mini Menu met Lam en Rund (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-bonzo-honden-brokken-mini-menu-rund-lam',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De fabrikant vermeldt op deze pagina geen metaboliseerbare energie; daarom kcal null. Vocht, calcium en fosfor worden niet vermeld.'
 where id = 'f632f533-dc28-44d3-8e54-f8415f089251';
delete from public.recipe_nutrition where recipe_version_id = 'f632f533-dc28-44d3-8e54-f8415f089251';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f632f533-dc28-44d3-8e54-f8415f089251', 'protein', 25, 'as-fed'),
  ('f632f533-dc28-44d3-8e54-f8415f089251', 'fat', 12, 'as-fed'),
  ('f632f533-dc28-44d3-8e54-f8415f089251', 'fiber', 3.5, 'as-fed'),
  ('f632f533-dc28-44d3-8e54-f8415f089251', 'ash', 8, 'as-fed'),
  ('f632f533-dc28-44d3-8e54-f8415f089251', 'omega3', 0.1, 'as-fed'),
  ('f632f533-dc28-44d3-8e54-f8415f089251', 'omega6', 1.7, 'as-fed');

-- Bonzo — Mini Menu met Rund (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-bonzo-honden-brokken-mini-menu-rund',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De fabrikant vermeldt op deze pagina geen metaboliseerbare energie; daarom kcal null. Vocht wordt niet vermeld.'
 where id = 'bc2531cb-7562-4e60-b145-045fed51b831';
delete from public.recipe_nutrition where recipe_version_id = 'bc2531cb-7562-4e60-b145-045fed51b831';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('bc2531cb-7562-4e60-b145-045fed51b831', 'protein', 25, 'as-fed'),
  ('bc2531cb-7562-4e60-b145-045fed51b831', 'fat', 12, 'as-fed'),
  ('bc2531cb-7562-4e60-b145-045fed51b831', 'fiber', 3.5, 'as-fed'),
  ('bc2531cb-7562-4e60-b145-045fed51b831', 'ash', 8, 'as-fed'),
  ('bc2531cb-7562-4e60-b145-045fed51b831', 'calcium', 2, 'as-fed'),
  ('bc2531cb-7562-4e60-b145-045fed51b831', 'phosphorus', 1.1, 'as-fed'),
  ('bc2531cb-7562-4e60-b145-045fed51b831', 'omega3', 0.1, 'as-fed'),
  ('bc2531cb-7562-4e60-b145-045fed51b831', 'omega6', 1.7, 'as-fed');

-- Bonzo — Selections met Rund, Kip of Lam in Gelei (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-bonzo-natvoer-pouch-rund-kip-lam-gelei',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De fabrikant vermeldt op deze pagina geen metaboliseerbare energie; daarom kcal null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'ac95c318-e660-4b3d-bf65-06a438834ab1';
delete from public.recipe_nutrition where recipe_version_id = 'ac95c318-e660-4b3d-bf65-06a438834ab1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ac95c318-e660-4b3d-bf65-06a438834ab1', 'protein', 6.5, 'as-fed'),
  ('ac95c318-e660-4b3d-bf65-06a438834ab1', 'fat', 2.5, 'as-fed'),
  ('ac95c318-e660-4b3d-bf65-06a438834ab1', 'fiber', 0.05, 'as-fed'),
  ('ac95c318-e660-4b3d-bf65-06a438834ab1', 'ash', 1.7, 'as-fed'),
  ('ac95c318-e660-4b3d-bf65-06a438834ab1', 'moisture', 83, 'as-fed');

-- Bonzo — Selections met Rund, Kip of Lam in Saus (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-bonzo-natvoer-pouch-rund-kip-lam-saus',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De fabrikant vermeldt op deze pagina geen metaboliseerbare energie; daarom kcal null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '0b69efb6-4717-4144-9e6e-ebabd978fbee';
delete from public.recipe_nutrition where recipe_version_id = '0b69efb6-4717-4144-9e6e-ebabd978fbee';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0b69efb6-4717-4144-9e6e-ebabd978fbee', 'protein', 6.5, 'as-fed'),
  ('0b69efb6-4717-4144-9e6e-ebabd978fbee', 'fat', 2.5, 'as-fed'),
  ('0b69efb6-4717-4144-9e6e-ebabd978fbee', 'fiber', 0.05, 'as-fed'),
  ('0b69efb6-4717-4144-9e6e-ebabd978fbee', 'ash', 1.8, 'as-fed'),
  ('0b69efb6-4717-4144-9e6e-ebabd978fbee', 'moisture', 82.5, 'as-fed');

-- Bonzo — Senior met Kip en Groenten (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-bonzo-honden-brokken-senior-kip-groenten',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De fabrikant vermeldt op deze pagina geen metaboliseerbare energie; daarom kcal null. Vocht, calcium en fosfor worden niet vermeld. De bron noemt bij omega 3 ''linolzuur''; de opgegeven 0,1% is overgenomen.'
 where id = 'a3c35dba-8f98-40f1-8031-b3d51d58ea87';
delete from public.recipe_nutrition where recipe_version_id = 'a3c35dba-8f98-40f1-8031-b3d51d58ea87';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a3c35dba-8f98-40f1-8031-b3d51d58ea87', 'protein', 24, 'as-fed'),
  ('a3c35dba-8f98-40f1-8031-b3d51d58ea87', 'fat', 8, 'as-fed'),
  ('a3c35dba-8f98-40f1-8031-b3d51d58ea87', 'fiber', 3.5, 'as-fed'),
  ('a3c35dba-8f98-40f1-8031-b3d51d58ea87', 'ash', 8, 'as-fed'),
  ('a3c35dba-8f98-40f1-8031-b3d51d58ea87', 'omega3', 0.1, 'as-fed'),
  ('a3c35dba-8f98-40f1-8031-b3d51d58ea87', 'omega6', 1.7, 'as-fed');

-- Bonzo — Tasty Strips Kip, Kalkoen en Eend in Saus (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-bonzo-natvoer-tasty-strips',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De fabrikant vermeldt op deze pagina geen metaboliseerbare energie; daarom kcal null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'e770212b-b2ea-4033-ae22-9d4e176cd6b8';
delete from public.recipe_nutrition where recipe_version_id = 'e770212b-b2ea-4033-ae22-9d4e176cd6b8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e770212b-b2ea-4033-ae22-9d4e176cd6b8', 'protein', 6.5, 'as-fed'),
  ('e770212b-b2ea-4033-ae22-9d4e176cd6b8', 'fat', 3, 'as-fed'),
  ('e770212b-b2ea-4033-ae22-9d4e176cd6b8', 'fiber', 0.05, 'as-fed'),
  ('e770212b-b2ea-4033-ae22-9d4e176cd6b8', 'ash', 2.5, 'as-fed'),
  ('e770212b-b2ea-4033-ae22-9d4e176cd6b8', 'moisture', 81.5, 'as-fed');

-- Brit — Care Dog Hypoallergenic Adult Medium Breed Lam & Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://brit.pet/en/products/brit-care-dog-hypoallergenic-adult-medium-breed',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 3810 kcal/kg, dus 381 kcal/100 g.'
 where id = 'e586eb7d-05f3-4f5b-9acb-7cb29df487f3';
delete from public.recipe_nutrition where recipe_version_id = 'e586eb7d-05f3-4f5b-9acb-7cb29df487f3';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e586eb7d-05f3-4f5b-9acb-7cb29df487f3', 'protein', 26, 'as-fed'),
  ('e586eb7d-05f3-4f5b-9acb-7cb29df487f3', 'fat', 16, 'as-fed'),
  ('e586eb7d-05f3-4f5b-9acb-7cb29df487f3', 'fiber', 2.5, 'as-fed'),
  ('e586eb7d-05f3-4f5b-9acb-7cb29df487f3', 'ash', 7.2, 'as-fed'),
  ('e586eb7d-05f3-4f5b-9acb-7cb29df487f3', 'moisture', 10, 'as-fed'),
  ('e586eb7d-05f3-4f5b-9acb-7cb29df487f3', 'kcal', 381, 'as-fed'),
  ('e586eb7d-05f3-4f5b-9acb-7cb29df487f3', 'calcium', 1.4, 'as-fed'),
  ('e586eb7d-05f3-4f5b-9acb-7cb29df487f3', 'phosphorus', 1, 'as-fed'),
  ('e586eb7d-05f3-4f5b-9acb-7cb29df487f3', 'omega3', 0.5, 'as-fed'),
  ('e586eb7d-05f3-4f5b-9acb-7cb29df487f3', 'omega6', 1.9, 'as-fed');

-- Brit — Care Dog Sustainable Sensitive Vis & Insecten (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://brit.pet/en/products/brit-care-dog-sustainable-sensitive',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 3650 kcal/kg, dus 365 kcal/100 g.'
 where id = 'e72f3f8c-c066-47d8-ad9e-4fd506efed5e';
delete from public.recipe_nutrition where recipe_version_id = 'e72f3f8c-c066-47d8-ad9e-4fd506efed5e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e72f3f8c-c066-47d8-ad9e-4fd506efed5e', 'protein', 25, 'as-fed'),
  ('e72f3f8c-c066-47d8-ad9e-4fd506efed5e', 'fat', 13, 'as-fed'),
  ('e72f3f8c-c066-47d8-ad9e-4fd506efed5e', 'fiber', 3.2, 'as-fed'),
  ('e72f3f8c-c066-47d8-ad9e-4fd506efed5e', 'ash', 6.5, 'as-fed'),
  ('e72f3f8c-c066-47d8-ad9e-4fd506efed5e', 'moisture', 10, 'as-fed'),
  ('e72f3f8c-c066-47d8-ad9e-4fd506efed5e', 'kcal', 365, 'as-fed'),
  ('e72f3f8c-c066-47d8-ad9e-4fd506efed5e', 'calcium', 1.1, 'as-fed'),
  ('e72f3f8c-c066-47d8-ad9e-4fd506efed5e', 'phosphorus', 0.5, 'as-fed'),
  ('e72f3f8c-c066-47d8-ad9e-4fd506efed5e', 'omega3', 0.9, 'as-fed'),
  ('e72f3f8c-c066-47d8-ad9e-4fd506efed5e', 'omega6', 0.75, 'as-fed');

-- Brit — Care Hond Graanvrij Sensitive Wild & Aardappel (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://brit.pet/en/products/brit-care-dog-grain-free-sensitive',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 3640 kcal/kg, dus 364 kcal/100 g.'
 where id = '31b2f505-76a1-4dfc-a542-966d68fffb0d';
delete from public.recipe_nutrition where recipe_version_id = '31b2f505-76a1-4dfc-a542-966d68fffb0d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('31b2f505-76a1-4dfc-a542-966d68fffb0d', 'protein', 25, 'as-fed'),
  ('31b2f505-76a1-4dfc-a542-966d68fffb0d', 'fat', 14, 'as-fed'),
  ('31b2f505-76a1-4dfc-a542-966d68fffb0d', 'fiber', 3, 'as-fed'),
  ('31b2f505-76a1-4dfc-a542-966d68fffb0d', 'ash', 8.5, 'as-fed'),
  ('31b2f505-76a1-4dfc-a542-966d68fffb0d', 'moisture', 10, 'as-fed'),
  ('31b2f505-76a1-4dfc-a542-966d68fffb0d', 'kcal', 364, 'as-fed'),
  ('31b2f505-76a1-4dfc-a542-966d68fffb0d', 'calcium', 1.7, 'as-fed'),
  ('31b2f505-76a1-4dfc-a542-966d68fffb0d', 'phosphorus', 1.2, 'as-fed'),
  ('31b2f505-76a1-4dfc-a542-966d68fffb0d', 'omega3', 1, 'as-fed'),
  ('31b2f505-76a1-4dfc-a542-966d68fffb0d', 'omega6', 0.8, 'as-fed');

-- Brit — Care Hond Hypoallergenic Gewichtsverlies Konijn (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://brit-petfood.com/en/products/dogs/991648-brit-care-dog-hypoallergenic-weight-loss',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 3110 kcal/kg, dus 311 kcal/100 g.'
 where id = 'd25337fc-56fb-4ff3-9f3f-1680dff97ed4';
delete from public.recipe_nutrition where recipe_version_id = 'd25337fc-56fb-4ff3-9f3f-1680dff97ed4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d25337fc-56fb-4ff3-9f3f-1680dff97ed4', 'protein', 27, 'as-fed'),
  ('d25337fc-56fb-4ff3-9f3f-1680dff97ed4', 'fat', 9, 'as-fed'),
  ('d25337fc-56fb-4ff3-9f3f-1680dff97ed4', 'fiber', 9.5, 'as-fed'),
  ('d25337fc-56fb-4ff3-9f3f-1680dff97ed4', 'ash', 5.5, 'as-fed'),
  ('d25337fc-56fb-4ff3-9f3f-1680dff97ed4', 'moisture', 10, 'as-fed'),
  ('d25337fc-56fb-4ff3-9f3f-1680dff97ed4', 'kcal', 311, 'as-fed'),
  ('d25337fc-56fb-4ff3-9f3f-1680dff97ed4', 'calcium', 1.2, 'as-fed'),
  ('d25337fc-56fb-4ff3-9f3f-1680dff97ed4', 'phosphorus', 0.8, 'as-fed'),
  ('d25337fc-56fb-4ff3-9f3f-1680dff97ed4', 'omega3', 0.3, 'as-fed'),
  ('d25337fc-56fb-4ff3-9f3f-1680dff97ed4', 'omega6', 1.5, 'as-fed');

-- Brit — Care Mini Sterilised in saus (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://brit-petfood.com/en/products/dogs/281356-brit-care-mini-salmon-and-herring-fillets-in-gravy-for-sterilised-dogs',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 774 kcal/kg, dus 77,4 kcal/100 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = '9bcd0c73-08b4-4c5a-89de-1903fa53d1f6';
delete from public.recipe_nutrition where recipe_version_id = '9bcd0c73-08b4-4c5a-89de-1903fa53d1f6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9bcd0c73-08b4-4c5a-89de-1903fa53d1f6', 'protein', 6, 'as-fed'),
  ('9bcd0c73-08b4-4c5a-89de-1903fa53d1f6', 'fat', 4, 'as-fed'),
  ('9bcd0c73-08b4-4c5a-89de-1903fa53d1f6', 'fiber', 0.4, 'as-fed'),
  ('9bcd0c73-08b4-4c5a-89de-1903fa53d1f6', 'ash', 1, 'as-fed'),
  ('9bcd0c73-08b4-4c5a-89de-1903fa53d1f6', 'moisture', 84, 'as-fed'),
  ('9bcd0c73-08b4-4c5a-89de-1903fa53d1f6', 'kcal', 77.4, 'as-fed'),
  ('9bcd0c73-08b4-4c5a-89de-1903fa53d1f6', 'calcium', 0.3, 'as-fed'),
  ('9bcd0c73-08b4-4c5a-89de-1903fa53d1f6', 'phosphorus', 0.2, 'as-fed');

-- Brit — Mono Protein Kalkoen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://brit.pet/en/products/brit-mono-protein-turkey',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 1220 kcal/kg, dus 122 kcal/100 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = '7cf70cc2-f6f3-4b25-8642-bf5aa7fd8c28';
delete from public.recipe_nutrition where recipe_version_id = '7cf70cc2-f6f3-4b25-8642-bf5aa7fd8c28';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7cf70cc2-f6f3-4b25-8642-bf5aa7fd8c28', 'protein', 9, 'as-fed'),
  ('7cf70cc2-f6f3-4b25-8642-bf5aa7fd8c28', 'fat', 10, 'as-fed'),
  ('7cf70cc2-f6f3-4b25-8642-bf5aa7fd8c28', 'fiber', 0.5, 'as-fed'),
  ('7cf70cc2-f6f3-4b25-8642-bf5aa7fd8c28', 'ash', 2, 'as-fed'),
  ('7cf70cc2-f6f3-4b25-8642-bf5aa7fd8c28', 'moisture', 78, 'as-fed'),
  ('7cf70cc2-f6f3-4b25-8642-bf5aa7fd8c28', 'kcal', 122, 'as-fed'),
  ('7cf70cc2-f6f3-4b25-8642-bf5aa7fd8c28', 'calcium', 0.3, 'as-fed'),
  ('7cf70cc2-f6f3-4b25-8642-bf5aa7fd8c28', 'phosphorus', 0.3, 'as-fed');

-- Brit — Paté & Vlees Puppy (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://brit.pet/en/products/brit-pate-meat-puppy',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 1075 kcal/kg, dus 107,5 kcal/100 g. Omega-3 en omega-6 worden niet vermeld.'
 where id = '81b1aee3-9673-4f4f-a8de-6fe0440d45ec';
delete from public.recipe_nutrition where recipe_version_id = '81b1aee3-9673-4f4f-a8de-6fe0440d45ec';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('81b1aee3-9673-4f4f-a8de-6fe0440d45ec', 'protein', 10, 'as-fed'),
  ('81b1aee3-9673-4f4f-a8de-6fe0440d45ec', 'fat', 7, 'as-fed'),
  ('81b1aee3-9673-4f4f-a8de-6fe0440d45ec', 'fiber', 0.4, 'as-fed'),
  ('81b1aee3-9673-4f4f-a8de-6fe0440d45ec', 'ash', 2.5, 'as-fed'),
  ('81b1aee3-9673-4f4f-a8de-6fe0440d45ec', 'moisture', 78, 'as-fed'),
  ('81b1aee3-9673-4f4f-a8de-6fe0440d45ec', 'kcal', 107.5, 'as-fed'),
  ('81b1aee3-9673-4f4f-a8de-6fe0440d45ec', 'calcium', 0.3, 'as-fed'),
  ('81b1aee3-9673-4f4f-a8de-6fe0440d45ec', 'phosphorus', 0.2, 'as-fed');

-- Brit — Premium Adult L (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://brit.pet/en/products/brit-premium-by-nature-adult-l',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 3770 kcal/kg, dus 377 kcal/100 g.'
 where id = '526443e3-5c1c-423b-a02c-540574c73815';
delete from public.recipe_nutrition where recipe_version_id = '526443e3-5c1c-423b-a02c-540574c73815';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('526443e3-5c1c-423b-a02c-540574c73815', 'protein', 27, 'as-fed'),
  ('526443e3-5c1c-423b-a02c-540574c73815', 'fat', 14, 'as-fed'),
  ('526443e3-5c1c-423b-a02c-540574c73815', 'fiber', 2, 'as-fed'),
  ('526443e3-5c1c-423b-a02c-540574c73815', 'ash', 7, 'as-fed'),
  ('526443e3-5c1c-423b-a02c-540574c73815', 'moisture', 10, 'as-fed'),
  ('526443e3-5c1c-423b-a02c-540574c73815', 'kcal', 377, 'as-fed'),
  ('526443e3-5c1c-423b-a02c-540574c73815', 'calcium', 1.5, 'as-fed'),
  ('526443e3-5c1c-423b-a02c-540574c73815', 'phosphorus', 1.1, 'as-fed'),
  ('526443e3-5c1c-423b-a02c-540574c73815', 'omega3', 0.2, 'as-fed'),
  ('526443e3-5c1c-423b-a02c-540574c73815', 'omega6', 1.6, 'as-fed');

-- Brit — Premium Adult S (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://brit.pet/en/products/brit-premium-by-nature-adult-s',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 3820 kcal/kg, dus 382 kcal/100 g.'
 where id = '58b6f825-9125-4fa1-89c9-4e8f322be443';
delete from public.recipe_nutrition where recipe_version_id = '58b6f825-9125-4fa1-89c9-4e8f322be443';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('58b6f825-9125-4fa1-89c9-4e8f322be443', 'protein', 28, 'as-fed'),
  ('58b6f825-9125-4fa1-89c9-4e8f322be443', 'fat', 16, 'as-fed'),
  ('58b6f825-9125-4fa1-89c9-4e8f322be443', 'fiber', 2.5, 'as-fed'),
  ('58b6f825-9125-4fa1-89c9-4e8f322be443', 'ash', 7.2, 'as-fed'),
  ('58b6f825-9125-4fa1-89c9-4e8f322be443', 'moisture', 10, 'as-fed'),
  ('58b6f825-9125-4fa1-89c9-4e8f322be443', 'kcal', 382, 'as-fed'),
  ('58b6f825-9125-4fa1-89c9-4e8f322be443', 'calcium', 1.5, 'as-fed'),
  ('58b6f825-9125-4fa1-89c9-4e8f322be443', 'phosphorus', 1.1, 'as-fed'),
  ('58b6f825-9125-4fa1-89c9-4e8f322be443', 'omega3', 0.2, 'as-fed'),
  ('58b6f825-9125-4fa1-89c9-4e8f322be443', 'omega6', 1.85, 'as-fed');

-- Brit — Premium by Nature Sensitive Lam (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://brit.pet/en/products/brit-premium-by-nature-sensitive-lamb',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 3660 kcal/kg, dus 366 kcal/100 g.'
 where id = '3ab56ebc-5e09-431d-b147-d32b7a5d86f8';
delete from public.recipe_nutrition where recipe_version_id = '3ab56ebc-5e09-431d-b147-d32b7a5d86f8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3ab56ebc-5e09-431d-b147-d32b7a5d86f8', 'protein', 26, 'as-fed'),
  ('3ab56ebc-5e09-431d-b147-d32b7a5d86f8', 'fat', 13, 'as-fed'),
  ('3ab56ebc-5e09-431d-b147-d32b7a5d86f8', 'fiber', 3, 'as-fed'),
  ('3ab56ebc-5e09-431d-b147-d32b7a5d86f8', 'ash', 7, 'as-fed'),
  ('3ab56ebc-5e09-431d-b147-d32b7a5d86f8', 'moisture', 10, 'as-fed'),
  ('3ab56ebc-5e09-431d-b147-d32b7a5d86f8', 'kcal', 366, 'as-fed'),
  ('3ab56ebc-5e09-431d-b147-d32b7a5d86f8', 'calcium', 1.6, 'as-fed'),
  ('3ab56ebc-5e09-431d-b147-d32b7a5d86f8', 'phosphorus', 1.1, 'as-fed'),
  ('3ab56ebc-5e09-431d-b147-d32b7a5d86f8', 'omega3', 0.2, 'as-fed'),
  ('3ab56ebc-5e09-431d-b147-d32b7a5d86f8', 'omega6', 1.5, 'as-fed');

commit;
