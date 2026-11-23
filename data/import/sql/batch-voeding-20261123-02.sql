begin;

-- Buddy — Chicken + Lamb Feast (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/buddy-chicken-lamb-feast-12-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '0bc2dff5-a321-4f77-8507-4b15bb2a6450';
delete from public.recipe_nutrition where recipe_version_id = '0bc2dff5-a321-4f77-8507-4b15bb2a6450';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0bc2dff5-a321-4f77-8507-4b15bb2a6450', 'protein', 25, 'as-fed'),
  ('0bc2dff5-a321-4f77-8507-4b15bb2a6450', 'fat', 15, 'as-fed'),
  ('0bc2dff5-a321-4f77-8507-4b15bb2a6450', 'fiber', 3.2, 'as-fed'),
  ('0bc2dff5-a321-4f77-8507-4b15bb2a6450', 'ash', 7, 'as-fed'),
  ('0bc2dff5-a321-4f77-8507-4b15bb2a6450', 'moisture', 10, 'as-fed'),
  ('0bc2dff5-a321-4f77-8507-4b15bb2a6450', 'calcium', 1.4, 'as-fed'),
  ('0bc2dff5-a321-4f77-8507-4b15bb2a6450', 'phosphorus', 1, 'as-fed');

-- Buddy — Natvoeding Yummy Beef (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/buddy-natvoeding-yummy-beef-400-gr',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '22e413a5-7926-4d3c-b5f9-e20821dfe78a';
delete from public.recipe_nutrition where recipe_version_id = '22e413a5-7926-4d3c-b5f9-e20821dfe78a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('22e413a5-7926-4d3c-b5f9-e20821dfe78a', 'protein', 9, 'as-fed'),
  ('22e413a5-7926-4d3c-b5f9-e20821dfe78a', 'fat', 7.5, 'as-fed'),
  ('22e413a5-7926-4d3c-b5f9-e20821dfe78a', 'fiber', 0.7, 'as-fed'),
  ('22e413a5-7926-4d3c-b5f9-e20821dfe78a', 'ash', 2, 'as-fed'),
  ('22e413a5-7926-4d3c-b5f9-e20821dfe78a', 'moisture', 78, 'as-fed'),
  ('22e413a5-7926-4d3c-b5f9-e20821dfe78a', 'calcium', 0.2, 'as-fed'),
  ('22e413a5-7926-4d3c-b5f9-e20821dfe78a', 'phosphorus', 0.15, 'as-fed');

-- Buddy — Natvoeding Delicious Lamb (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/buddy-natvoeding-delicious-lamb-400-gr',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '022c29b3-822b-41c5-928d-80168455394d';
delete from public.recipe_nutrition where recipe_version_id = '022c29b3-822b-41c5-928d-80168455394d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('022c29b3-822b-41c5-928d-80168455394d', 'protein', 8, 'as-fed'),
  ('022c29b3-822b-41c5-928d-80168455394d', 'fat', 5.5, 'as-fed'),
  ('022c29b3-822b-41c5-928d-80168455394d', 'fiber', 0.7, 'as-fed'),
  ('022c29b3-822b-41c5-928d-80168455394d', 'ash', 2, 'as-fed'),
  ('022c29b3-822b-41c5-928d-80168455394d', 'moisture', 78, 'as-fed'),
  ('022c29b3-822b-41c5-928d-80168455394d', 'calcium', 0.2, 'as-fed'),
  ('022c29b3-822b-41c5-928d-80168455394d', 'phosphorus', 0.15, 'as-fed');

-- Buddy — Natvoeding Salmon & Chicken Feast (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/buddy-natvoeding-salmon-chicken-feast-400-gr',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '92cb97af-97fd-4323-a74d-5a01b6ea5422';
delete from public.recipe_nutrition where recipe_version_id = '92cb97af-97fd-4323-a74d-5a01b6ea5422';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('92cb97af-97fd-4323-a74d-5a01b6ea5422', 'protein', 8.5, 'as-fed'),
  ('92cb97af-97fd-4323-a74d-5a01b6ea5422', 'fat', 7, 'as-fed'),
  ('92cb97af-97fd-4323-a74d-5a01b6ea5422', 'fiber', 0.7, 'as-fed'),
  ('92cb97af-97fd-4323-a74d-5a01b6ea5422', 'ash', 2.5, 'as-fed'),
  ('92cb97af-97fd-4323-a74d-5a01b6ea5422', 'moisture', 78, 'as-fed'),
  ('92cb97af-97fd-4323-a74d-5a01b6ea5422', 'calcium', 0.2, 'as-fed'),
  ('92cb97af-97fd-4323-a74d-5a01b6ea5422', 'phosphorus', 0.15, 'as-fed');

-- Buddy — Grass-Fed Lamb (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/buddy-grass-fed-lamb-2-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'f66c9d71-3bfa-4927-9127-8823373ba81f';
delete from public.recipe_nutrition where recipe_version_id = 'f66c9d71-3bfa-4927-9127-8823373ba81f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f66c9d71-3bfa-4927-9127-8823373ba81f', 'protein', 26, 'as-fed'),
  ('f66c9d71-3bfa-4927-9127-8823373ba81f', 'fat', 15, 'as-fed'),
  ('f66c9d71-3bfa-4927-9127-8823373ba81f', 'fiber', 3, 'as-fed'),
  ('f66c9d71-3bfa-4927-9127-8823373ba81f', 'ash', 7.5, 'as-fed'),
  ('f66c9d71-3bfa-4927-9127-8823373ba81f', 'moisture', 10, 'as-fed'),
  ('f66c9d71-3bfa-4927-9127-8823373ba81f', 'calcium', 1.4, 'as-fed'),
  ('f66c9d71-3bfa-4927-9127-8823373ba81f', 'phosphorus', 1.1, 'as-fed');

-- Buddy — Natvoeding Delightful Duck (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/buddy-natvoeding-delightful-duck-400-gr',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '86d4147f-01ff-44d3-8480-469b89089527';
delete from public.recipe_nutrition where recipe_version_id = '86d4147f-01ff-44d3-8480-469b89089527';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('86d4147f-01ff-44d3-8480-469b89089527', 'protein', 9.5, 'as-fed'),
  ('86d4147f-01ff-44d3-8480-469b89089527', 'fat', 8, 'as-fed'),
  ('86d4147f-01ff-44d3-8480-469b89089527', 'fiber', 0.7, 'as-fed'),
  ('86d4147f-01ff-44d3-8480-469b89089527', 'ash', 2.5, 'as-fed'),
  ('86d4147f-01ff-44d3-8480-469b89089527', 'moisture', 78, 'as-fed'),
  ('86d4147f-01ff-44d3-8480-469b89089527', 'calcium', 0.2, 'as-fed'),
  ('86d4147f-01ff-44d3-8480-469b89089527', 'phosphorus', 0.15, 'as-fed');

-- Buddy — Free-Range Duck (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/buddy-free-range-duck-2-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'fa892bd6-2603-40ce-b630-f5fee4736c33';
delete from public.recipe_nutrition where recipe_version_id = 'fa892bd6-2603-40ce-b630-f5fee4736c33';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fa892bd6-2603-40ce-b630-f5fee4736c33', 'protein', 38, 'as-fed'),
  ('fa892bd6-2603-40ce-b630-f5fee4736c33', 'fat', 18, 'as-fed'),
  ('fa892bd6-2603-40ce-b630-f5fee4736c33', 'fiber', 2.5, 'as-fed'),
  ('fa892bd6-2603-40ce-b630-f5fee4736c33', 'ash', 7.8, 'as-fed'),
  ('fa892bd6-2603-40ce-b630-f5fee4736c33', 'moisture', 10, 'as-fed'),
  ('fa892bd6-2603-40ce-b630-f5fee4736c33', 'calcium', 1.7, 'as-fed'),
  ('fa892bd6-2603-40ce-b630-f5fee4736c33', 'phosphorus', 1.3, 'as-fed');

-- Buddy — Natvoeding Turkey & Rabbit (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/buddy-natvoeding-turkey-rabbit-400-gr',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '790c57df-ee72-4dd7-bc12-39b68a6edd96';
delete from public.recipe_nutrition where recipe_version_id = '790c57df-ee72-4dd7-bc12-39b68a6edd96';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('790c57df-ee72-4dd7-bc12-39b68a6edd96', 'protein', 8, 'as-fed'),
  ('790c57df-ee72-4dd7-bc12-39b68a6edd96', 'fat', 5.5, 'as-fed'),
  ('790c57df-ee72-4dd7-bc12-39b68a6edd96', 'fiber', 0.8, 'as-fed'),
  ('790c57df-ee72-4dd7-bc12-39b68a6edd96', 'ash', 2.1, 'as-fed'),
  ('790c57df-ee72-4dd7-bc12-39b68a6edd96', 'moisture', 78, 'as-fed'),
  ('790c57df-ee72-4dd7-bc12-39b68a6edd96', 'calcium', 0.15, 'as-fed'),
  ('790c57df-ee72-4dd7-bc12-39b68a6edd96', 'phosphorus', 0.1, 'as-fed');

-- Buddy — Wild Venison (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/buddy-wild-venison-12-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'e8c9b0c8-02b4-4dbc-be75-48df70c4845d';
delete from public.recipe_nutrition where recipe_version_id = 'e8c9b0c8-02b4-4dbc-be75-48df70c4845d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e8c9b0c8-02b4-4dbc-be75-48df70c4845d', 'protein', 25, 'as-fed'),
  ('e8c9b0c8-02b4-4dbc-be75-48df70c4845d', 'fat', 14, 'as-fed'),
  ('e8c9b0c8-02b4-4dbc-be75-48df70c4845d', 'fiber', 3, 'as-fed'),
  ('e8c9b0c8-02b4-4dbc-be75-48df70c4845d', 'ash', 8.5, 'as-fed'),
  ('e8c9b0c8-02b4-4dbc-be75-48df70c4845d', 'moisture', 10, 'as-fed'),
  ('e8c9b0c8-02b4-4dbc-be75-48df70c4845d', 'calcium', 1.5, 'as-fed'),
  ('e8c9b0c8-02b4-4dbc-be75-48df70c4845d', 'phosphorus', 1.1, 'as-fed');

-- Buddy — Natvoeding Puppy Lavish Lamb (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/buddy-natvoeding-puppy-lavish-lamb-400-gr',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'e018e282-c0b9-4998-ab77-0708a04011dc';
delete from public.recipe_nutrition where recipe_version_id = 'e018e282-c0b9-4998-ab77-0708a04011dc';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e018e282-c0b9-4998-ab77-0708a04011dc', 'protein', 8.5, 'as-fed'),
  ('e018e282-c0b9-4998-ab77-0708a04011dc', 'fat', 7, 'as-fed'),
  ('e018e282-c0b9-4998-ab77-0708a04011dc', 'fiber', 0.7, 'as-fed'),
  ('e018e282-c0b9-4998-ab77-0708a04011dc', 'ash', 2.2, 'as-fed'),
  ('e018e282-c0b9-4998-ab77-0708a04011dc', 'moisture', 78, 'as-fed'),
  ('e018e282-c0b9-4998-ab77-0708a04011dc', 'calcium', 0.2, 'as-fed'),
  ('e018e282-c0b9-4998-ab77-0708a04011dc', 'phosphorus', 0.15, 'as-fed');

-- Buddy — Puppy Love (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/buddy-puppy-love-2-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'bc837137-9535-4977-a3d6-ddbeed74fd3f';
delete from public.recipe_nutrition where recipe_version_id = 'bc837137-9535-4977-a3d6-ddbeed74fd3f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('bc837137-9535-4977-a3d6-ddbeed74fd3f', 'protein', 36, 'as-fed'),
  ('bc837137-9535-4977-a3d6-ddbeed74fd3f', 'fat', 19, 'as-fed'),
  ('bc837137-9535-4977-a3d6-ddbeed74fd3f', 'fiber', 2, 'as-fed'),
  ('bc837137-9535-4977-a3d6-ddbeed74fd3f', 'ash', 7.8, 'as-fed'),
  ('bc837137-9535-4977-a3d6-ddbeed74fd3f', 'moisture', 10, 'as-fed'),
  ('bc837137-9535-4977-a3d6-ddbeed74fd3f', 'calcium', 1.4, 'as-fed'),
  ('bc837137-9535-4977-a3d6-ddbeed74fd3f', 'phosphorus', 1.1, 'as-fed');

-- Buddy — Tasty Duck Bites (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/buddy-tasty-duck-bites-2-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '541a02fd-e643-4a6f-8d3a-1e0d9e2a4303';
delete from public.recipe_nutrition where recipe_version_id = '541a02fd-e643-4a6f-8d3a-1e0d9e2a4303';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('541a02fd-e643-4a6f-8d3a-1e0d9e2a4303', 'protein', 30, 'as-fed'),
  ('541a02fd-e643-4a6f-8d3a-1e0d9e2a4303', 'fat', 16, 'as-fed'),
  ('541a02fd-e643-4a6f-8d3a-1e0d9e2a4303', 'fiber', 3, 'as-fed'),
  ('541a02fd-e643-4a6f-8d3a-1e0d9e2a4303', 'ash', 7.8, 'as-fed'),
  ('541a02fd-e643-4a6f-8d3a-1e0d9e2a4303', 'moisture', 10, 'as-fed'),
  ('541a02fd-e643-4a6f-8d3a-1e0d9e2a4303', 'calcium', 1.5, 'as-fed'),
  ('541a02fd-e643-4a6f-8d3a-1e0d9e2a4303', 'phosphorus', 1.1, 'as-fed');

-- Buddy — Wild-Caught Salmon (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/buddy-wild-caught-salmon-12-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '4cd39221-4366-4cf2-a624-4a9c6dde6e1d';
delete from public.recipe_nutrition where recipe_version_id = '4cd39221-4366-4cf2-a624-4a9c6dde6e1d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4cd39221-4366-4cf2-a624-4a9c6dde6e1d', 'protein', 27, 'as-fed'),
  ('4cd39221-4366-4cf2-a624-4a9c6dde6e1d', 'fat', 12, 'as-fed'),
  ('4cd39221-4366-4cf2-a624-4a9c6dde6e1d', 'fiber', 4.5, 'as-fed'),
  ('4cd39221-4366-4cf2-a624-4a9c6dde6e1d', 'ash', 7.5, 'as-fed'),
  ('4cd39221-4366-4cf2-a624-4a9c6dde6e1d', 'moisture', 10, 'as-fed'),
  ('4cd39221-4366-4cf2-a624-4a9c6dde6e1d', 'calcium', 1.1, 'as-fed'),
  ('4cd39221-4366-4cf2-a624-4a9c6dde6e1d', 'phosphorus', 0.8, 'as-fed');

-- Buddy — Natvoeding Tasty Duck Pate (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/buddy-natvoeding-tasty-duck-pate-400-gr',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'f86473bd-c351-4ba5-addf-543969bfb620';
delete from public.recipe_nutrition where recipe_version_id = 'f86473bd-c351-4ba5-addf-543969bfb620';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f86473bd-c351-4ba5-addf-543969bfb620', 'protein', 8.5, 'as-fed'),
  ('f86473bd-c351-4ba5-addf-543969bfb620', 'fat', 7, 'as-fed'),
  ('f86473bd-c351-4ba5-addf-543969bfb620', 'fiber', 0.8, 'as-fed'),
  ('f86473bd-c351-4ba5-addf-543969bfb620', 'ash', 2, 'as-fed'),
  ('f86473bd-c351-4ba5-addf-543969bfb620', 'moisture', 78, 'as-fed'),
  ('f86473bd-c351-4ba5-addf-543969bfb620', 'calcium', 0.1, 'as-fed'),
  ('f86473bd-c351-4ba5-addf-543969bfb620', 'phosphorus', 0.1, 'as-fed');

-- Buddy — Natvoeding Juicy Turkey (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/buddy-natvoeding-juicy-turkey-400-gr',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '21fd967d-2c27-49e5-aac0-8edc7b827b99';
delete from public.recipe_nutrition where recipe_version_id = '21fd967d-2c27-49e5-aac0-8edc7b827b99';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('21fd967d-2c27-49e5-aac0-8edc7b827b99', 'protein', 9, 'as-fed'),
  ('21fd967d-2c27-49e5-aac0-8edc7b827b99', 'fat', 5.5, 'as-fed'),
  ('21fd967d-2c27-49e5-aac0-8edc7b827b99', 'fiber', 0.7, 'as-fed'),
  ('21fd967d-2c27-49e5-aac0-8edc7b827b99', 'ash', 2, 'as-fed'),
  ('21fd967d-2c27-49e5-aac0-8edc7b827b99', 'moisture', 78, 'as-fed'),
  ('21fd967d-2c27-49e5-aac0-8edc7b827b99', 'calcium', 0.2, 'as-fed'),
  ('21fd967d-2c27-49e5-aac0-8edc7b827b99', 'phosphorus', 0.15, 'as-fed');

-- Herrmann's — Sensitive hond Konijn met rijstvlokken (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/herrmanns-sensitive-hond-konijn-met-rijstvlokken-400-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '60b85601-88a5-4e0a-a041-d754b48f66a4';
delete from public.recipe_nutrition where recipe_version_id = '60b85601-88a5-4e0a-a041-d754b48f66a4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('60b85601-88a5-4e0a-a041-d754b48f66a4', 'protein', 10.37, 'as-fed'),
  ('60b85601-88a5-4e0a-a041-d754b48f66a4', 'fat', 2.9, 'as-fed'),
  ('60b85601-88a5-4e0a-a041-d754b48f66a4', 'fiber', 0.93, 'as-fed'),
  ('60b85601-88a5-4e0a-a041-d754b48f66a4', 'ash', 1.44, 'as-fed'),
  ('60b85601-88a5-4e0a-a041-d754b48f66a4', 'moisture', 74.07, 'as-fed'),
  ('60b85601-88a5-4e0a-a041-d754b48f66a4', 'calcium', 0.2, 'as-fed'),
  ('60b85601-88a5-4e0a-a041-d754b48f66a4', 'phosphorus', 0.14, 'as-fed'),
  ('60b85601-88a5-4e0a-a041-d754b48f66a4', 'kcal', 107.55, 'as-fed');

-- Herrmann's — Adult Zalm met abrikoos (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/herrmanns-adult-hond-zalm-met-abrikoos-150-gr-per-14-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '3d82ed23-b848-4d76-a0ab-9ca174788364';
delete from public.recipe_nutrition where recipe_version_id = '3d82ed23-b848-4d76-a0ab-9ca174788364';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3d82ed23-b848-4d76-a0ab-9ca174788364', 'protein', 11.21, 'as-fed'),
  ('3d82ed23-b848-4d76-a0ab-9ca174788364', 'fat', 9.86, 'as-fed'),
  ('3d82ed23-b848-4d76-a0ab-9ca174788364', 'fiber', 1.73, 'as-fed'),
  ('3d82ed23-b848-4d76-a0ab-9ca174788364', 'ash', 1.69, 'as-fed'),
  ('3d82ed23-b848-4d76-a0ab-9ca174788364', 'moisture', 72.63, 'as-fed'),
  ('3d82ed23-b848-4d76-a0ab-9ca174788364', 'calcium', 0.39, 'as-fed'),
  ('3d82ed23-b848-4d76-a0ab-9ca174788364', 'phosphorus', 0.29, 'as-fed'),
  ('3d82ed23-b848-4d76-a0ab-9ca174788364', 'kcal', 145.71, 'as-fed');

-- Herrmann's — Sensitive hond Geit met Rode bieten (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/herrmanns-sensitive-hond-geit-met-rode-bieten-400-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'bf978cea-560d-4b24-8ad6-6a637f4b3638';
delete from public.recipe_nutrition where recipe_version_id = 'bf978cea-560d-4b24-8ad6-6a637f4b3638';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('bf978cea-560d-4b24-8ad6-6a637f4b3638', 'protein', 9.32, 'as-fed'),
  ('bf978cea-560d-4b24-8ad6-6a637f4b3638', 'fat', 4.83, 'as-fed'),
  ('bf978cea-560d-4b24-8ad6-6a637f4b3638', 'fiber', 0.79, 'as-fed'),
  ('bf978cea-560d-4b24-8ad6-6a637f4b3638', 'ash', 1.56, 'as-fed'),
  ('bf978cea-560d-4b24-8ad6-6a637f4b3638', 'moisture', 77.71, 'as-fed'),
  ('bf978cea-560d-4b24-8ad6-6a637f4b3638', 'calcium', 0.28, 'as-fed'),
  ('bf978cea-560d-4b24-8ad6-6a637f4b3638', 'phosphorus', 0.19, 'as-fed'),
  ('bf978cea-560d-4b24-8ad6-6a637f4b3638', 'kcal', 105.36, 'as-fed');

-- Herrmann's — Bio Adult Kip met venkel (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/herrmanns-bio-adult-hond-kip-met-venkel-400-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'c3bc0790-c862-4354-8a57-3389b4f0c92a';
delete from public.recipe_nutrition where recipe_version_id = 'c3bc0790-c862-4354-8a57-3389b4f0c92a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c3bc0790-c862-4354-8a57-3389b4f0c92a', 'protein', 9.86, 'as-fed'),
  ('c3bc0790-c862-4354-8a57-3389b4f0c92a', 'fat', 8, 'as-fed'),
  ('c3bc0790-c862-4354-8a57-3389b4f0c92a', 'fiber', 0.7, 'as-fed'),
  ('c3bc0790-c862-4354-8a57-3389b4f0c92a', 'ash', 2.16, 'as-fed'),
  ('c3bc0790-c862-4354-8a57-3389b4f0c92a', 'moisture', 73.5, 'as-fed'),
  ('c3bc0790-c862-4354-8a57-3389b4f0c92a', 'calcium', 0.55, 'as-fed'),
  ('c3bc0790-c862-4354-8a57-3389b4f0c92a', 'phosphorus', 0.36, 'as-fed');

-- Herrmann's — Bio Creative Vleesvrij met groenten (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/herrmanns-bio-creative-vleesvrij-met-groenten-150-gr-per-15-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '3c92df54-0675-49a7-abc0-2396cee87228';
delete from public.recipe_nutrition where recipe_version_id = '3c92df54-0675-49a7-abc0-2396cee87228';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3c92df54-0675-49a7-abc0-2396cee87228', 'protein', 1.1, 'as-fed'),
  ('3c92df54-0675-49a7-abc0-2396cee87228', 'fat', 1.5, 'as-fed'),
  ('3c92df54-0675-49a7-abc0-2396cee87228', 'ash', 0.48, 'as-fed'),
  ('3c92df54-0675-49a7-abc0-2396cee87228', 'moisture', 89.75, 'as-fed');

-- Herrmann's — Bio Sensitive hond Eend met venkel (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/herrmanns-bio-sensitive-hond-eend-met-venkel-800-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '3abb7146-6699-49d2-a5ec-c3a8c632cfcf';
delete from public.recipe_nutrition where recipe_version_id = '3abb7146-6699-49d2-a5ec-c3a8c632cfcf';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3abb7146-6699-49d2-a5ec-c3a8c632cfcf', 'protein', 9.98, 'as-fed'),
  ('3abb7146-6699-49d2-a5ec-c3a8c632cfcf', 'fat', 8.16, 'as-fed'),
  ('3abb7146-6699-49d2-a5ec-c3a8c632cfcf', 'fiber', 0.74, 'as-fed'),
  ('3abb7146-6699-49d2-a5ec-c3a8c632cfcf', 'ash', 2.01, 'as-fed'),
  ('3abb7146-6699-49d2-a5ec-c3a8c632cfcf', 'moisture', 73.11, 'as-fed'),
  ('3abb7146-6699-49d2-a5ec-c3a8c632cfcf', 'calcium', 0.45, 'as-fed'),
  ('3abb7146-6699-49d2-a5ec-c3a8c632cfcf', 'phosphorus', 0.32, 'as-fed'),
  ('3abb7146-6699-49d2-a5ec-c3a8c632cfcf', 'kcal', 138.73, 'as-fed');

-- Herrmann's — Bio Sensitive hond Purinearm Rund met wortel (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/herrmanns-bio-sensitive-hond-purinearm-rund-met-wortel-400-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'f6408bf3-0a47-44cc-a890-f03a3b8cdd30';
delete from public.recipe_nutrition where recipe_version_id = 'f6408bf3-0a47-44cc-a890-f03a3b8cdd30';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f6408bf3-0a47-44cc-a890-f03a3b8cdd30', 'protein', 7.79, 'as-fed'),
  ('f6408bf3-0a47-44cc-a890-f03a3b8cdd30', 'fat', 8, 'as-fed'),
  ('f6408bf3-0a47-44cc-a890-f03a3b8cdd30', 'fiber', 1.94, 'as-fed'),
  ('f6408bf3-0a47-44cc-a890-f03a3b8cdd30', 'ash', 1.69, 'as-fed'),
  ('f6408bf3-0a47-44cc-a890-f03a3b8cdd30', 'moisture', 75.71, 'as-fed'),
  ('f6408bf3-0a47-44cc-a890-f03a3b8cdd30', 'calcium', 0.2, 'as-fed'),
  ('f6408bf3-0a47-44cc-a890-f03a3b8cdd30', 'phosphorus', 0.15, 'as-fed'),
  ('f6408bf3-0a47-44cc-a890-f03a3b8cdd30', 'kcal', 125.9, 'as-fed');

-- Herrmann's — Bio Puppy Rund met appel (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/herrmanns-bio-puppy-rund-met-appel-400-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'b34dd811-164c-4116-b018-ecf4062b334a';
delete from public.recipe_nutrition where recipe_version_id = 'b34dd811-164c-4116-b018-ecf4062b334a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b34dd811-164c-4116-b018-ecf4062b334a', 'protein', 12.91, 'as-fed'),
  ('b34dd811-164c-4116-b018-ecf4062b334a', 'fat', 6.89, 'as-fed'),
  ('b34dd811-164c-4116-b018-ecf4062b334a', 'fiber', 1.06, 'as-fed'),
  ('b34dd811-164c-4116-b018-ecf4062b334a', 'ash', 1.73, 'as-fed'),
  ('b34dd811-164c-4116-b018-ecf4062b334a', 'moisture', 70.8, 'as-fed'),
  ('b34dd811-164c-4116-b018-ecf4062b334a', 'calcium', 0.32, 'as-fed'),
  ('b34dd811-164c-4116-b018-ecf4062b334a', 'phosphorus', 0.18, 'as-fed'),
  ('b34dd811-164c-4116-b018-ecf4062b334a', 'kcal', 142.13, 'as-fed');

-- Herrmann's — Sensitive hond Paard met zoete aardappel (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/herrmanns-sensitive-hond-paard-met-zoete-aardappel-800-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'c85d3110-e132-4d52-a60f-1fd024d9c556';
delete from public.recipe_nutrition where recipe_version_id = 'c85d3110-e132-4d52-a60f-1fd024d9c556';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c85d3110-e132-4d52-a60f-1fd024d9c556', 'protein', 10.28, 'as-fed'),
  ('c85d3110-e132-4d52-a60f-1fd024d9c556', 'fat', 4.43, 'as-fed'),
  ('c85d3110-e132-4d52-a60f-1fd024d9c556', 'fiber', 1.39, 'as-fed'),
  ('c85d3110-e132-4d52-a60f-1fd024d9c556', 'ash', 1.07, 'as-fed'),
  ('c85d3110-e132-4d52-a60f-1fd024d9c556', 'moisture', 79.01, 'as-fed'),
  ('c85d3110-e132-4d52-a60f-1fd024d9c556', 'calcium', 0.16, 'as-fed'),
  ('c85d3110-e132-4d52-a60f-1fd024d9c556', 'phosphorus', 0.11, 'as-fed'),
  ('c85d3110-e132-4d52-a60f-1fd024d9c556', 'kcal', 97.68, 'as-fed');

-- Herrmann's — Bio Adult Kalkoen met pastinaak (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/herrmanns-bio-adult-hond-kalkoen-met-pastinaak-800-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'f1357b0f-1f74-4604-ae67-5f662d51e5f6';
delete from public.recipe_nutrition where recipe_version_id = 'f1357b0f-1f74-4604-ae67-5f662d51e5f6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f1357b0f-1f74-4604-ae67-5f662d51e5f6', 'protein', 9.59, 'as-fed'),
  ('f1357b0f-1f74-4604-ae67-5f662d51e5f6', 'fat', 7.83, 'as-fed'),
  ('f1357b0f-1f74-4604-ae67-5f662d51e5f6', 'fiber', 0.61, 'as-fed'),
  ('f1357b0f-1f74-4604-ae67-5f662d51e5f6', 'ash', 2.1, 'as-fed'),
  ('f1357b0f-1f74-4604-ae67-5f662d51e5f6', 'moisture', 75.5, 'as-fed'),
  ('f1357b0f-1f74-4604-ae67-5f662d51e5f6', 'calcium', 0.5, 'as-fed'),
  ('f1357b0f-1f74-4604-ae67-5f662d51e5f6', 'phosphorus', 0.32, 'as-fed'),
  ('f1357b0f-1f74-4604-ae67-5f662d51e5f6', 'kcal', 125.29, 'as-fed');

-- Herrmann's — Bio Creative Groenten met bessen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/herrmanns-bio-creative-groenten-met-bessen-400-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '8e2af7fb-8fa8-4006-b34f-0b0db33ebae4';
delete from public.recipe_nutrition where recipe_version_id = '8e2af7fb-8fa8-4006-b34f-0b0db33ebae4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8e2af7fb-8fa8-4006-b34f-0b0db33ebae4', 'protein', 1, 'as-fed'),
  ('8e2af7fb-8fa8-4006-b34f-0b0db33ebae4', 'fat', 1.2, 'as-fed'),
  ('8e2af7fb-8fa8-4006-b34f-0b0db33ebae4', 'ash', 0.46, 'as-fed'),
  ('8e2af7fb-8fa8-4006-b34f-0b0db33ebae4', 'moisture', 89.99, 'as-fed');

-- Herrmann's — Bio Puur Eend (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/herrmanns-bio-puur-eend-200-gr',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '7bdab552-9d44-4fd4-9e46-7fa3b49c2a18';
delete from public.recipe_nutrition where recipe_version_id = '7bdab552-9d44-4fd4-9e46-7fa3b49c2a18';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7bdab552-9d44-4fd4-9e46-7fa3b49c2a18', 'protein', 11.1, 'as-fed'),
  ('7bdab552-9d44-4fd4-9e46-7fa3b49c2a18', 'fat', 8, 'as-fed'),
  ('7bdab552-9d44-4fd4-9e46-7fa3b49c2a18', 'fiber', 0.3, 'as-fed'),
  ('7bdab552-9d44-4fd4-9e46-7fa3b49c2a18', 'ash', 1.6, 'as-fed'),
  ('7bdab552-9d44-4fd4-9e46-7fa3b49c2a18', 'moisture', 79, 'as-fed'),
  ('7bdab552-9d44-4fd4-9e46-7fa3b49c2a18', 'kcal', 113, 'as-fed');

-- Herrmann's — Bio Adult Rund met wortel (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/herrmanns-bio-adult-hond-rund-met-wortel-800-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '6cf64c23-6123-4038-b50d-f178541d1e60';
delete from public.recipe_nutrition where recipe_version_id = '6cf64c23-6123-4038-b50d-f178541d1e60';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6cf64c23-6123-4038-b50d-f178541d1e60', 'protein', 10.75, 'as-fed'),
  ('6cf64c23-6123-4038-b50d-f178541d1e60', 'fat', 6.92, 'as-fed'),
  ('6cf64c23-6123-4038-b50d-f178541d1e60', 'fiber', 1.72, 'as-fed'),
  ('6cf64c23-6123-4038-b50d-f178541d1e60', 'ash', 1.28, 'as-fed'),
  ('6cf64c23-6123-4038-b50d-f178541d1e60', 'moisture', 74.52, 'as-fed'),
  ('6cf64c23-6123-4038-b50d-f178541d1e60', 'calcium', 0.19, 'as-fed'),
  ('6cf64c23-6123-4038-b50d-f178541d1e60', 'phosphorus', 0.13, 'as-fed'),
  ('6cf64c23-6123-4038-b50d-f178541d1e60', 'kcal', 127.87, 'as-fed');

-- Herrmann's — Light hond Hert met pompoen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/herrmanns-light-hond-hert-met-pompoen-800-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'd952ec7f-a531-4c3b-a879-28d0901bbf18';
delete from public.recipe_nutrition where recipe_version_id = 'd952ec7f-a531-4c3b-a879-28d0901bbf18';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d952ec7f-a531-4c3b-a879-28d0901bbf18', 'protein', 10, 'as-fed'),
  ('d952ec7f-a531-4c3b-a879-28d0901bbf18', 'fat', 5.99, 'as-fed'),
  ('d952ec7f-a531-4c3b-a879-28d0901bbf18', 'fiber', 0.9, 'as-fed'),
  ('d952ec7f-a531-4c3b-a879-28d0901bbf18', 'ash', 1.1, 'as-fed'),
  ('d952ec7f-a531-4c3b-a879-28d0901bbf18', 'moisture', 75.61, 'as-fed'),
  ('d952ec7f-a531-4c3b-a879-28d0901bbf18', 'calcium', 0.15, 'as-fed'),
  ('d952ec7f-a531-4c3b-a879-28d0901bbf18', 'phosphorus', 0.13, 'as-fed'),
  ('d952ec7f-a531-4c3b-a879-28d0901bbf18', 'kcal', 109, 'as-fed');

-- Herrmann's — Adult Hert met aardappel (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/herrmanns-adult-hond-hert-met-aardappel-400-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '7227a8e6-786c-48d9-9a32-77e3d16de96f';
delete from public.recipe_nutrition where recipe_version_id = '7227a8e6-786c-48d9-9a32-77e3d16de96f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7227a8e6-786c-48d9-9a32-77e3d16de96f', 'protein', 9.86, 'as-fed'),
  ('7227a8e6-786c-48d9-9a32-77e3d16de96f', 'fat', 7.21, 'as-fed'),
  ('7227a8e6-786c-48d9-9a32-77e3d16de96f', 'fiber', 0.93, 'as-fed'),
  ('7227a8e6-786c-48d9-9a32-77e3d16de96f', 'ash', 1.13, 'as-fed'),
  ('7227a8e6-786c-48d9-9a32-77e3d16de96f', 'moisture', 77.89, 'as-fed'),
  ('7227a8e6-786c-48d9-9a32-77e3d16de96f', 'calcium', 0.16, 'as-fed'),
  ('7227a8e6-786c-48d9-9a32-77e3d16de96f', 'phosphorus', 0.1, 'as-fed'),
  ('7227a8e6-786c-48d9-9a32-77e3d16de96f', 'kcal', 114.66, 'as-fed');

-- Herrmann's — Sensitive hond Schaap met courgette (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/herrmanns-sensitive-hond-schaap-met-courgette-400-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'a0ccabe5-3308-4572-8b34-3b146d9b87dc';
delete from public.recipe_nutrition where recipe_version_id = 'a0ccabe5-3308-4572-8b34-3b146d9b87dc';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a0ccabe5-3308-4572-8b34-3b146d9b87dc', 'protein', 9.2, 'as-fed'),
  ('a0ccabe5-3308-4572-8b34-3b146d9b87dc', 'fat', 5.61, 'as-fed'),
  ('a0ccabe5-3308-4572-8b34-3b146d9b87dc', 'fiber', 0.82, 'as-fed'),
  ('a0ccabe5-3308-4572-8b34-3b146d9b87dc', 'ash', 1.27, 'as-fed'),
  ('a0ccabe5-3308-4572-8b34-3b146d9b87dc', 'moisture', 79.97, 'as-fed'),
  ('a0ccabe5-3308-4572-8b34-3b146d9b87dc', 'calcium', 0.2, 'as-fed'),
  ('a0ccabe5-3308-4572-8b34-3b146d9b87dc', 'phosphorus', 0.14, 'as-fed'),
  ('a0ccabe5-3308-4572-8b34-3b146d9b87dc', 'kcal', 97.22, 'as-fed');

-- Herrmann's — Bio Light hond Kalkoen met courgette (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/herrmanns-bio-light-hond-kalkoen-met-courgette-800-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'f18656b0-331d-4d1b-809a-5ac4c0bced99';
delete from public.recipe_nutrition where recipe_version_id = 'f18656b0-331d-4d1b-809a-5ac4c0bced99';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f18656b0-331d-4d1b-809a-5ac4c0bced99', 'protein', 9.5, 'as-fed'),
  ('f18656b0-331d-4d1b-809a-5ac4c0bced99', 'fat', 6.99, 'as-fed'),
  ('f18656b0-331d-4d1b-809a-5ac4c0bced99', 'fiber', 1.25, 'as-fed'),
  ('f18656b0-331d-4d1b-809a-5ac4c0bced99', 'ash', 1.83, 'as-fed'),
  ('f18656b0-331d-4d1b-809a-5ac4c0bced99', 'moisture', 76.71, 'as-fed'),
  ('f18656b0-331d-4d1b-809a-5ac4c0bced99', 'calcium', 0.4, 'as-fed'),
  ('f18656b0-331d-4d1b-809a-5ac4c0bced99', 'phosphorus', 0.28, 'as-fed'),
  ('f18656b0-331d-4d1b-809a-5ac4c0bced99', 'kcal', 106, 'as-fed');

-- Herrmann's — Bio Puppy Gans met pompoen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/herrmanns-bio-puppy-gans-met-pompoen-400-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '34c15f1d-4272-49eb-a928-ec712b885be8';
delete from public.recipe_nutrition where recipe_version_id = '34c15f1d-4272-49eb-a928-ec712b885be8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('34c15f1d-4272-49eb-a928-ec712b885be8', 'protein', 11.3, 'as-fed'),
  ('34c15f1d-4272-49eb-a928-ec712b885be8', 'fat', 10.1, 'as-fed'),
  ('34c15f1d-4272-49eb-a928-ec712b885be8', 'fiber', 0.5, 'as-fed'),
  ('34c15f1d-4272-49eb-a928-ec712b885be8', 'ash', 2.2, 'as-fed'),
  ('34c15f1d-4272-49eb-a928-ec712b885be8', 'moisture', 73.2, 'as-fed');

-- Herrmann's — Biologische kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/herrmanns-hondenvoeding-biologische-kip-1-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '122ebdd7-bd60-4918-a5cf-4955e6841f61';
delete from public.recipe_nutrition where recipe_version_id = '122ebdd7-bd60-4918-a5cf-4955e6841f61';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('122ebdd7-bd60-4918-a5cf-4955e6841f61', 'protein', 24, 'as-fed'),
  ('122ebdd7-bd60-4918-a5cf-4955e6841f61', 'fat', 12, 'as-fed'),
  ('122ebdd7-bd60-4918-a5cf-4955e6841f61', 'fiber', 3.5, 'as-fed'),
  ('122ebdd7-bd60-4918-a5cf-4955e6841f61', 'ash', 6.9, 'as-fed');

-- Herrmann's — Bio Sensitive hond Kip met wortel (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/herrmanns-bio-sensitive-hond-kip-met-wortel-800-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '5e6cde46-d309-42ef-92c9-49c78b31e766';
delete from public.recipe_nutrition where recipe_version_id = '5e6cde46-d309-42ef-92c9-49c78b31e766';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5e6cde46-d309-42ef-92c9-49c78b31e766', 'protein', 9.65, 'as-fed'),
  ('5e6cde46-d309-42ef-92c9-49c78b31e766', 'fat', 8.07, 'as-fed'),
  ('5e6cde46-d309-42ef-92c9-49c78b31e766', 'fiber', 0.61, 'as-fed'),
  ('5e6cde46-d309-42ef-92c9-49c78b31e766', 'ash', 2.13, 'as-fed'),
  ('5e6cde46-d309-42ef-92c9-49c78b31e766', 'moisture', 72.31, 'as-fed'),
  ('5e6cde46-d309-42ef-92c9-49c78b31e766', 'calcium', 0.56, 'as-fed'),
  ('5e6cde46-d309-42ef-92c9-49c78b31e766', 'phosphorus', 0.35, 'as-fed'),
  ('5e6cde46-d309-42ef-92c9-49c78b31e766', 'kcal', 140.63, 'as-fed');

-- Herrmann's — Bio Light hond Veggie met witte zoete lupine (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/herrmanns-bio-light-hond-veggie-met-witte-zoete-lupine-400-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '580ffc81-ebbc-4291-a696-0f2a3c1aa5b6';
delete from public.recipe_nutrition where recipe_version_id = '580ffc81-ebbc-4291-a696-0f2a3c1aa5b6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('580ffc81-ebbc-4291-a696-0f2a3c1aa5b6', 'protein', 6.91, 'as-fed'),
  ('580ffc81-ebbc-4291-a696-0f2a3c1aa5b6', 'fat', 2.67, 'as-fed'),
  ('580ffc81-ebbc-4291-a696-0f2a3c1aa5b6', 'fiber', 4.95, 'as-fed'),
  ('580ffc81-ebbc-4291-a696-0f2a3c1aa5b6', 'ash', 0.86, 'as-fed'),
  ('580ffc81-ebbc-4291-a696-0f2a3c1aa5b6', 'moisture', 75.1, 'as-fed'),
  ('580ffc81-ebbc-4291-a696-0f2a3c1aa5b6', 'calcium', 0.14, 'as-fed'),
  ('580ffc81-ebbc-4291-a696-0f2a3c1aa5b6', 'phosphorus', 0.1, 'as-fed'),
  ('580ffc81-ebbc-4291-a696-0f2a3c1aa5b6', 'kcal', 95.68, 'as-fed');

-- N&D — Ocean Zalm small breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-ocean-hondenvoeding-zalm-small-breed-25-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '1d769c17-c321-4e52-8162-053ad80f3580';
delete from public.recipe_nutrition where recipe_version_id = '1d769c17-c321-4e52-8162-053ad80f3580';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1d769c17-c321-4e52-8162-053ad80f3580', 'protein', 30, 'as-fed'),
  ('1d769c17-c321-4e52-8162-053ad80f3580', 'fat', 18, 'as-fed'),
  ('1d769c17-c321-4e52-8162-053ad80f3580', 'fiber', 2.9, 'as-fed'),
  ('1d769c17-c321-4e52-8162-053ad80f3580', 'ash', 8.5, 'as-fed'),
  ('1d769c17-c321-4e52-8162-053ad80f3580', 'moisture', 9, 'as-fed'),
  ('1d769c17-c321-4e52-8162-053ad80f3580', 'calcium', 0.8, 'as-fed'),
  ('1d769c17-c321-4e52-8162-053ad80f3580', 'phosphorus', 0.7, 'as-fed'),
  ('1d769c17-c321-4e52-8162-053ad80f3580', 'omega3', 2.3, 'as-fed'),
  ('1d769c17-c321-4e52-8162-053ad80f3580', 'omega6', 1.6, 'as-fed'),
  ('1d769c17-c321-4e52-8162-053ad80f3580', 'kcal', 393.7, 'as-fed');

-- N&D — Quinoa natvoeding Skin & Coat Kwartel (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-quinoa-natvoeding-voor-de-hond-skin-coat-kwartel-285-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'eb63d452-e557-4c7a-89bf-db9516a00906';
delete from public.recipe_nutrition where recipe_version_id = 'eb63d452-e557-4c7a-89bf-db9516a00906';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('eb63d452-e557-4c7a-89bf-db9516a00906', 'protein', 11.5, 'as-fed'),
  ('eb63d452-e557-4c7a-89bf-db9516a00906', 'fat', 5.5, 'as-fed'),
  ('eb63d452-e557-4c7a-89bf-db9516a00906', 'fiber', 0.9, 'as-fed'),
  ('eb63d452-e557-4c7a-89bf-db9516a00906', 'ash', 2.9, 'as-fed'),
  ('eb63d452-e557-4c7a-89bf-db9516a00906', 'moisture', 75, 'as-fed'),
  ('eb63d452-e557-4c7a-89bf-db9516a00906', 'kcal', 106.9, 'as-fed');

-- N&D — Quinoa Skin & Coat medium/maxi Haring (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-skin-coat-mediummaxi-haring-25-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'b6fca503-60f5-415c-9e44-2c7e7bce6d15';
delete from public.recipe_nutrition where recipe_version_id = 'b6fca503-60f5-415c-9e44-2c7e7bce6d15';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b6fca503-60f5-415c-9e44-2c7e7bce6d15', 'protein', 23, 'as-fed'),
  ('b6fca503-60f5-415c-9e44-2c7e7bce6d15', 'fat', 12, 'as-fed'),
  ('b6fca503-60f5-415c-9e44-2c7e7bce6d15', 'fiber', 2.8, 'as-fed'),
  ('b6fca503-60f5-415c-9e44-2c7e7bce6d15', 'ash', 7.9, 'as-fed'),
  ('b6fca503-60f5-415c-9e44-2c7e7bce6d15', 'moisture', 9, 'as-fed'),
  ('b6fca503-60f5-415c-9e44-2c7e7bce6d15', 'calcium', 1, 'as-fed'),
  ('b6fca503-60f5-415c-9e44-2c7e7bce6d15', 'phosphorus', 0.8, 'as-fed'),
  ('b6fca503-60f5-415c-9e44-2c7e7bce6d15', 'omega3', 1.8, 'as-fed'),
  ('b6fca503-60f5-415c-9e44-2c7e7bce6d15', 'omega6', 1.5, 'as-fed'),
  ('b6fca503-60f5-415c-9e44-2c7e7bce6d15', 'kcal', 366.5, 'as-fed');

-- N&D — Quinoa Digestion medium/maxi Lam (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-digestion-mediummaxi-lam-25-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '46904080-9af7-49aa-b6a4-b63f177d4fb2';
delete from public.recipe_nutrition where recipe_version_id = '46904080-9af7-49aa-b6a4-b63f177d4fb2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('46904080-9af7-49aa-b6a4-b63f177d4fb2', 'protein', 25, 'as-fed'),
  ('46904080-9af7-49aa-b6a4-b63f177d4fb2', 'fat', 12, 'as-fed'),
  ('46904080-9af7-49aa-b6a4-b63f177d4fb2', 'fiber', 1.9, 'as-fed'),
  ('46904080-9af7-49aa-b6a4-b63f177d4fb2', 'ash', 7.5, 'as-fed'),
  ('46904080-9af7-49aa-b6a4-b63f177d4fb2', 'moisture', 9, 'as-fed'),
  ('46904080-9af7-49aa-b6a4-b63f177d4fb2', 'calcium', 0.9, 'as-fed'),
  ('46904080-9af7-49aa-b6a4-b63f177d4fb2', 'phosphorus', 0.6, 'as-fed'),
  ('46904080-9af7-49aa-b6a4-b63f177d4fb2', 'omega3', 0.2, 'as-fed'),
  ('46904080-9af7-49aa-b6a4-b63f177d4fb2', 'omega6', 0.4, 'as-fed'),
  ('46904080-9af7-49aa-b6a4-b63f177d4fb2', 'kcal', 374.9, 'as-fed');

-- N&D — Ocean Kabeljauw met Pompoen medium/maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-ocean-hondenvoeding-kabeljauw-met-pompoen-mediummaxi-25-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '171f4b43-0204-44b0-aadf-9c90db88963f';
delete from public.recipe_nutrition where recipe_version_id = '171f4b43-0204-44b0-aadf-9c90db88963f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('171f4b43-0204-44b0-aadf-9c90db88963f', 'protein', 30, 'as-fed'),
  ('171f4b43-0204-44b0-aadf-9c90db88963f', 'fat', 18, 'as-fed'),
  ('171f4b43-0204-44b0-aadf-9c90db88963f', 'fiber', 2.9, 'as-fed'),
  ('171f4b43-0204-44b0-aadf-9c90db88963f', 'ash', 7.3, 'as-fed'),
  ('171f4b43-0204-44b0-aadf-9c90db88963f', 'moisture', 9, 'as-fed'),
  ('171f4b43-0204-44b0-aadf-9c90db88963f', 'calcium', 0.8, 'as-fed'),
  ('171f4b43-0204-44b0-aadf-9c90db88963f', 'phosphorus', 0.7, 'as-fed'),
  ('171f4b43-0204-44b0-aadf-9c90db88963f', 'omega3', 2.3, 'as-fed'),
  ('171f4b43-0204-44b0-aadf-9c90db88963f', 'omega6', 1.6, 'as-fed'),
  ('171f4b43-0204-44b0-aadf-9c90db88963f', 'kcal', 398, 'as-fed');

-- N&D — Quinoa Gecastreerde Hond medium/maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-quinoa-voeding-voor-de-gecastreerde-hond-mediummaxi-12-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'da2f2e12-fbea-406d-8715-2be47c1974a8';
delete from public.recipe_nutrition where recipe_version_id = 'da2f2e12-fbea-406d-8715-2be47c1974a8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('da2f2e12-fbea-406d-8715-2be47c1974a8', 'protein', 30, 'as-fed'),
  ('da2f2e12-fbea-406d-8715-2be47c1974a8', 'fat', 11, 'as-fed'),
  ('da2f2e12-fbea-406d-8715-2be47c1974a8', 'fiber', 5.7, 'as-fed'),
  ('da2f2e12-fbea-406d-8715-2be47c1974a8', 'ash', 7.8, 'as-fed'),
  ('da2f2e12-fbea-406d-8715-2be47c1974a8', 'moisture', 9, 'as-fed'),
  ('da2f2e12-fbea-406d-8715-2be47c1974a8', 'calcium', 1.2, 'as-fed'),
  ('da2f2e12-fbea-406d-8715-2be47c1974a8', 'phosphorus', 0.9, 'as-fed'),
  ('da2f2e12-fbea-406d-8715-2be47c1974a8', 'omega3', 0.3, 'as-fed'),
  ('da2f2e12-fbea-406d-8715-2be47c1974a8', 'omega6', 2, 'as-fed'),
  ('da2f2e12-fbea-406d-8715-2be47c1974a8', 'kcal', 344.4, 'as-fed');

-- N&D — Quinoa Skin & Coat medium/maxi Kwartel (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-skin-coat-mediummaxi-kwartel-7-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'c5c15746-3a98-42aa-9102-f0604f05fd90';
delete from public.recipe_nutrition where recipe_version_id = 'c5c15746-3a98-42aa-9102-f0604f05fd90';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c5c15746-3a98-42aa-9102-f0604f05fd90', 'protein', 23, 'as-fed'),
  ('c5c15746-3a98-42aa-9102-f0604f05fd90', 'fat', 12, 'as-fed'),
  ('c5c15746-3a98-42aa-9102-f0604f05fd90', 'fiber', 2.8, 'as-fed'),
  ('c5c15746-3a98-42aa-9102-f0604f05fd90', 'ash', 7.9, 'as-fed'),
  ('c5c15746-3a98-42aa-9102-f0604f05fd90', 'moisture', 9, 'as-fed'),
  ('c5c15746-3a98-42aa-9102-f0604f05fd90', 'calcium', 1, 'as-fed'),
  ('c5c15746-3a98-42aa-9102-f0604f05fd90', 'phosphorus', 0.8, 'as-fed'),
  ('c5c15746-3a98-42aa-9102-f0604f05fd90', 'omega3', 0.4, 'as-fed'),
  ('c5c15746-3a98-42aa-9102-f0604f05fd90', 'omega6', 2.2, 'as-fed'),
  ('c5c15746-3a98-42aa-9102-f0604f05fd90', 'kcal', 369, 'as-fed');

-- N&D — Ancestral Grain Lam medium/maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-ancestral-grain-hondenvoeding-lam-mediummaxi-12-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '3f2e1779-40ef-40ca-b938-abc51154e140';
delete from public.recipe_nutrition where recipe_version_id = '3f2e1779-40ef-40ca-b938-abc51154e140';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3f2e1779-40ef-40ca-b938-abc51154e140', 'protein', 28, 'as-fed'),
  ('3f2e1779-40ef-40ca-b938-abc51154e140', 'fat', 18, 'as-fed'),
  ('3f2e1779-40ef-40ca-b938-abc51154e140', 'fiber', 2.9, 'as-fed'),
  ('3f2e1779-40ef-40ca-b938-abc51154e140', 'ash', 8.2, 'as-fed'),
  ('3f2e1779-40ef-40ca-b938-abc51154e140', 'moisture', 9, 'as-fed'),
  ('3f2e1779-40ef-40ca-b938-abc51154e140', 'calcium', 1.1, 'as-fed'),
  ('3f2e1779-40ef-40ca-b938-abc51154e140', 'phosphorus', 0.8, 'as-fed'),
  ('3f2e1779-40ef-40ca-b938-abc51154e140', 'omega3', 0.9, 'as-fed'),
  ('3f2e1779-40ef-40ca-b938-abc51154e140', 'omega6', 3.3, 'as-fed'),
  ('3f2e1779-40ef-40ca-b938-abc51154e140', 'kcal', 394.1, 'as-fed');

-- N&D — Prime Lam small breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-prime-hondenvoeding-lam-small-breed-7-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'f968ec58-2a75-4f3c-b69d-6479742e4e84';
delete from public.recipe_nutrition where recipe_version_id = 'f968ec58-2a75-4f3c-b69d-6479742e4e84';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f968ec58-2a75-4f3c-b69d-6479742e4e84', 'protein', 34, 'as-fed'),
  ('f968ec58-2a75-4f3c-b69d-6479742e4e84', 'fat', 18, 'as-fed'),
  ('f968ec58-2a75-4f3c-b69d-6479742e4e84', 'fiber', 2.6, 'as-fed'),
  ('f968ec58-2a75-4f3c-b69d-6479742e4e84', 'ash', 8.3, 'as-fed'),
  ('f968ec58-2a75-4f3c-b69d-6479742e4e84', 'moisture', 9, 'as-fed'),
  ('f968ec58-2a75-4f3c-b69d-6479742e4e84', 'calcium', 1.1, 'as-fed'),
  ('f968ec58-2a75-4f3c-b69d-6479742e4e84', 'phosphorus', 0.8, 'as-fed'),
  ('f968ec58-2a75-4f3c-b69d-6479742e4e84', 'omega3', 0.9, 'as-fed'),
  ('f968ec58-2a75-4f3c-b69d-6479742e4e84', 'omega6', 3.3, 'as-fed'),
  ('f968ec58-2a75-4f3c-b69d-6479742e4e84', 'kcal', 398.1, 'as-fed');

-- N&D — Tropical Varken small breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-tropical-hondenvoeding-varken-small-breed-15-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '986f47b5-6618-47f0-a268-b5cba7648737';
delete from public.recipe_nutrition where recipe_version_id = '986f47b5-6618-47f0-a268-b5cba7648737';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('986f47b5-6618-47f0-a268-b5cba7648737', 'protein', 27, 'as-fed'),
  ('986f47b5-6618-47f0-a268-b5cba7648737', 'fat', 16, 'as-fed'),
  ('986f47b5-6618-47f0-a268-b5cba7648737', 'fiber', 2.7, 'as-fed'),
  ('986f47b5-6618-47f0-a268-b5cba7648737', 'ash', 7.5, 'as-fed'),
  ('986f47b5-6618-47f0-a268-b5cba7648737', 'moisture', 9, 'as-fed'),
  ('986f47b5-6618-47f0-a268-b5cba7648737', 'calcium', 0.9, 'as-fed'),
  ('986f47b5-6618-47f0-a268-b5cba7648737', 'phosphorus', 0.8, 'as-fed'),
  ('986f47b5-6618-47f0-a268-b5cba7648737', 'omega3', 0.7, 'as-fed'),
  ('986f47b5-6618-47f0-a268-b5cba7648737', 'omega6', 3, 'as-fed'),
  ('986f47b5-6618-47f0-a268-b5cba7648737', 'kcal', 388.5, 'as-fed');

-- N&D — Ocean Zalm medium/maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-ocean-hondenvoeding-zalm-mediummaxi-25-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '96aa5ee1-04ca-419d-8744-00d57639d40a';
delete from public.recipe_nutrition where recipe_version_id = '96aa5ee1-04ca-419d-8744-00d57639d40a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('96aa5ee1-04ca-419d-8744-00d57639d40a', 'protein', 30, 'as-fed'),
  ('96aa5ee1-04ca-419d-8744-00d57639d40a', 'fat', 18, 'as-fed'),
  ('96aa5ee1-04ca-419d-8744-00d57639d40a', 'fiber', 2.9, 'as-fed'),
  ('96aa5ee1-04ca-419d-8744-00d57639d40a', 'ash', 8.5, 'as-fed'),
  ('96aa5ee1-04ca-419d-8744-00d57639d40a', 'moisture', 9, 'as-fed'),
  ('96aa5ee1-04ca-419d-8744-00d57639d40a', 'calcium', 0.8, 'as-fed'),
  ('96aa5ee1-04ca-419d-8744-00d57639d40a', 'phosphorus', 0.7, 'as-fed'),
  ('96aa5ee1-04ca-419d-8744-00d57639d40a', 'omega3', 2.3, 'as-fed'),
  ('96aa5ee1-04ca-419d-8744-00d57639d40a', 'omega6', 1.6, 'as-fed'),
  ('96aa5ee1-04ca-419d-8744-00d57639d40a', 'kcal', 393.7, 'as-fed');

-- N&D — Pumpkin Wild Zwijn small breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-pumpkin-hondenvoeding-wild-zwijn-small-breed-7-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '0c18d8e6-69f4-4391-8766-caeee68b5422';
delete from public.recipe_nutrition where recipe_version_id = '0c18d8e6-69f4-4391-8766-caeee68b5422';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0c18d8e6-69f4-4391-8766-caeee68b5422', 'protein', 30, 'as-fed'),
  ('0c18d8e6-69f4-4391-8766-caeee68b5422', 'fat', 18, 'as-fed'),
  ('0c18d8e6-69f4-4391-8766-caeee68b5422', 'fiber', 2.9, 'as-fed'),
  ('0c18d8e6-69f4-4391-8766-caeee68b5422', 'ash', 6.6, 'as-fed'),
  ('0c18d8e6-69f4-4391-8766-caeee68b5422', 'moisture', 9, 'as-fed'),
  ('0c18d8e6-69f4-4391-8766-caeee68b5422', 'calcium', 0.9, 'as-fed'),
  ('0c18d8e6-69f4-4391-8766-caeee68b5422', 'phosphorus', 0.7, 'as-fed'),
  ('0c18d8e6-69f4-4391-8766-caeee68b5422', 'omega3', 0.9, 'as-fed'),
  ('0c18d8e6-69f4-4391-8766-caeee68b5422', 'omega6', 3.3, 'as-fed'),
  ('0c18d8e6-69f4-4391-8766-caeee68b5422', 'kcal', 400.5, 'as-fed');

-- N&D — Quinoa Skin & Coat small breed Hert (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-skin-coat-small-breed-hert-25-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '4579d0a8-497a-4434-bf67-ca97973a4905';
delete from public.recipe_nutrition where recipe_version_id = '4579d0a8-497a-4434-bf67-ca97973a4905';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4579d0a8-497a-4434-bf67-ca97973a4905', 'protein', 23, 'as-fed'),
  ('4579d0a8-497a-4434-bf67-ca97973a4905', 'fat', 12, 'as-fed'),
  ('4579d0a8-497a-4434-bf67-ca97973a4905', 'fiber', 2.8, 'as-fed'),
  ('4579d0a8-497a-4434-bf67-ca97973a4905', 'ash', 7.9, 'as-fed'),
  ('4579d0a8-497a-4434-bf67-ca97973a4905', 'moisture', 9, 'as-fed'),
  ('4579d0a8-497a-4434-bf67-ca97973a4905', 'calcium', 1.1, 'as-fed'),
  ('4579d0a8-497a-4434-bf67-ca97973a4905', 'phosphorus', 0.9, 'as-fed'),
  ('4579d0a8-497a-4434-bf67-ca97973a4905', 'omega3', 0.4, 'as-fed'),
  ('4579d0a8-497a-4434-bf67-ca97973a4905', 'omega6', 2.2, 'as-fed'),
  ('4579d0a8-497a-4434-bf67-ca97973a4905', 'kcal', 366.5, 'as-fed');

-- N&D — Ancestral Grain Kip medium/maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-ancestral-grain-hondenvoeding-kip-mediummaxi-25-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '2414b405-3feb-442b-96df-f6387f40921d';
delete from public.recipe_nutrition where recipe_version_id = '2414b405-3feb-442b-96df-f6387f40921d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2414b405-3feb-442b-96df-f6387f40921d', 'protein', 30, 'as-fed'),
  ('2414b405-3feb-442b-96df-f6387f40921d', 'fat', 18, 'as-fed'),
  ('2414b405-3feb-442b-96df-f6387f40921d', 'fiber', 2.9, 'as-fed'),
  ('2414b405-3feb-442b-96df-f6387f40921d', 'ash', 6.8, 'as-fed'),
  ('2414b405-3feb-442b-96df-f6387f40921d', 'moisture', 9, 'as-fed'),
  ('2414b405-3feb-442b-96df-f6387f40921d', 'calcium', 0.9, 'as-fed'),
  ('2414b405-3feb-442b-96df-f6387f40921d', 'phosphorus', 0.8, 'as-fed'),
  ('2414b405-3feb-442b-96df-f6387f40921d', 'omega3', 0.9, 'as-fed'),
  ('2414b405-3feb-442b-96df-f6387f40921d', 'omega6', 3.3, 'as-fed'),
  ('2414b405-3feb-442b-96df-f6387f40921d', 'kcal', 399.7, 'as-fed');

-- N&D — White voor de witte hond small breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-white-hondenvoeding-voor-de-witte-hond-small-breed-2-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '811662a1-be0c-4460-815d-fa0b31416dcf';
delete from public.recipe_nutrition where recipe_version_id = '811662a1-be0c-4460-815d-fa0b31416dcf';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('811662a1-be0c-4460-815d-fa0b31416dcf', 'protein', 23, 'as-fed'),
  ('811662a1-be0c-4460-815d-fa0b31416dcf', 'fat', 18, 'as-fed'),
  ('811662a1-be0c-4460-815d-fa0b31416dcf', 'fiber', 2.9, 'as-fed'),
  ('811662a1-be0c-4460-815d-fa0b31416dcf', 'ash', 7.9, 'as-fed'),
  ('811662a1-be0c-4460-815d-fa0b31416dcf', 'moisture', 9, 'as-fed'),
  ('811662a1-be0c-4460-815d-fa0b31416dcf', 'calcium', 0.9, 'as-fed'),
  ('811662a1-be0c-4460-815d-fa0b31416dcf', 'phosphorus', 0.8, 'as-fed'),
  ('811662a1-be0c-4460-815d-fa0b31416dcf', 'omega3', 2.3, 'as-fed'),
  ('811662a1-be0c-4460-815d-fa0b31416dcf', 'omega6', 1.6, 'as-fed'),
  ('811662a1-be0c-4460-815d-fa0b31416dcf', 'kcal', 397.3, 'as-fed');

-- N&D — Ocean Haring small breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-ocean-hondenvoeding-haring-small-breed-25-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '7435a90a-e872-415d-b0e5-713086739bdd';
delete from public.recipe_nutrition where recipe_version_id = '7435a90a-e872-415d-b0e5-713086739bdd';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7435a90a-e872-415d-b0e5-713086739bdd', 'protein', 34, 'as-fed'),
  ('7435a90a-e872-415d-b0e5-713086739bdd', 'fat', 18, 'as-fed'),
  ('7435a90a-e872-415d-b0e5-713086739bdd', 'fiber', 2.6, 'as-fed'),
  ('7435a90a-e872-415d-b0e5-713086739bdd', 'ash', 7.8, 'as-fed'),
  ('7435a90a-e872-415d-b0e5-713086739bdd', 'moisture', 9, 'as-fed'),
  ('7435a90a-e872-415d-b0e5-713086739bdd', 'calcium', 0.9, 'as-fed'),
  ('7435a90a-e872-415d-b0e5-713086739bdd', 'phosphorus', 0.8, 'as-fed'),
  ('7435a90a-e872-415d-b0e5-713086739bdd', 'omega3', 1.2, 'as-fed'),
  ('7435a90a-e872-415d-b0e5-713086739bdd', 'omega6', 3, 'as-fed'),
  ('7435a90a-e872-415d-b0e5-713086739bdd', 'kcal', 399.9, 'as-fed');

-- N&D — Tropical puppyvoeding Lam small breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-tropical-puppyvoeding-lam-small-breed-5-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '291fccfa-25fa-4d02-860c-1960ac283640';
delete from public.recipe_nutrition where recipe_version_id = '291fccfa-25fa-4d02-860c-1960ac283640';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('291fccfa-25fa-4d02-860c-1960ac283640', 'protein', 30, 'as-fed'),
  ('291fccfa-25fa-4d02-860c-1960ac283640', 'fat', 20, 'as-fed'),
  ('291fccfa-25fa-4d02-860c-1960ac283640', 'fiber', 2.7, 'as-fed'),
  ('291fccfa-25fa-4d02-860c-1960ac283640', 'ash', 8, 'as-fed'),
  ('291fccfa-25fa-4d02-860c-1960ac283640', 'moisture', 9, 'as-fed'),
  ('291fccfa-25fa-4d02-860c-1960ac283640', 'calcium', 1.15, 'as-fed'),
  ('291fccfa-25fa-4d02-860c-1960ac283640', 'phosphorus', 0.95, 'as-fed'),
  ('291fccfa-25fa-4d02-860c-1960ac283640', 'omega3', 0.6, 'as-fed'),
  ('291fccfa-25fa-4d02-860c-1960ac283640', 'omega6', 3.2, 'as-fed'),
  ('291fccfa-25fa-4d02-860c-1960ac283640', 'kcal', 406.2, 'as-fed');

-- N&D — Prime natvoeding Lam (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-prime-natvoeding-voor-de-hond-lam-140-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '85f362d8-d175-4287-94c6-e022d3ea94d4';
delete from public.recipe_nutrition where recipe_version_id = '85f362d8-d175-4287-94c6-e022d3ea94d4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('85f362d8-d175-4287-94c6-e022d3ea94d4', 'protein', 11.5, 'as-fed'),
  ('85f362d8-d175-4287-94c6-e022d3ea94d4', 'fat', 7, 'as-fed'),
  ('85f362d8-d175-4287-94c6-e022d3ea94d4', 'fiber', 0.8, 'as-fed'),
  ('85f362d8-d175-4287-94c6-e022d3ea94d4', 'ash', 2.4, 'as-fed'),
  ('85f362d8-d175-4287-94c6-e022d3ea94d4', 'moisture', 75, 'as-fed'),
  ('85f362d8-d175-4287-94c6-e022d3ea94d4', 'kcal', 116.4, 'as-fed');

-- N&D — Quinoa natvoeding Skin & Coat Haring (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-quinoa-natvoeding-voor-de-hond-skin-coat-haring-285-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'ad7daba8-dcae-4180-b51c-7e9adef11296';
delete from public.recipe_nutrition where recipe_version_id = 'ad7daba8-dcae-4180-b51c-7e9adef11296';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ad7daba8-dcae-4180-b51c-7e9adef11296', 'protein', 11.5, 'as-fed'),
  ('ad7daba8-dcae-4180-b51c-7e9adef11296', 'fat', 5.5, 'as-fed'),
  ('ad7daba8-dcae-4180-b51c-7e9adef11296', 'fiber', 0.9, 'as-fed'),
  ('ad7daba8-dcae-4180-b51c-7e9adef11296', 'ash', 2.9, 'as-fed'),
  ('ad7daba8-dcae-4180-b51c-7e9adef11296', 'moisture', 75, 'as-fed'),
  ('ad7daba8-dcae-4180-b51c-7e9adef11296', 'kcal', 106.9, 'as-fed');

-- N&D — Quinoa Skin & Coat small breed Eend (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-skin-coat-small-breed-eend-25-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '432d55fe-51b5-43b1-9944-0ae4945a12a8';
delete from public.recipe_nutrition where recipe_version_id = '432d55fe-51b5-43b1-9944-0ae4945a12a8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('432d55fe-51b5-43b1-9944-0ae4945a12a8', 'protein', 23, 'as-fed'),
  ('432d55fe-51b5-43b1-9944-0ae4945a12a8', 'fat', 12, 'as-fed'),
  ('432d55fe-51b5-43b1-9944-0ae4945a12a8', 'fiber', 2.8, 'as-fed'),
  ('432d55fe-51b5-43b1-9944-0ae4945a12a8', 'ash', 7.9, 'as-fed'),
  ('432d55fe-51b5-43b1-9944-0ae4945a12a8', 'moisture', 9, 'as-fed'),
  ('432d55fe-51b5-43b1-9944-0ae4945a12a8', 'calcium', 1, 'as-fed'),
  ('432d55fe-51b5-43b1-9944-0ae4945a12a8', 'phosphorus', 0.8, 'as-fed'),
  ('432d55fe-51b5-43b1-9944-0ae4945a12a8', 'omega3', 0.4, 'as-fed'),
  ('432d55fe-51b5-43b1-9944-0ae4945a12a8', 'omega6', 2.2, 'as-fed'),
  ('432d55fe-51b5-43b1-9944-0ae4945a12a8', 'kcal', 366.5, 'as-fed');

-- N&D — Pumpkin Lam small breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-pumpkin-hondenvoeding-lam-small-breed-800-gr',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '75d3ef0e-3cce-4f65-8537-2a4d91b0fd3b';
delete from public.recipe_nutrition where recipe_version_id = '75d3ef0e-3cce-4f65-8537-2a4d91b0fd3b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('75d3ef0e-3cce-4f65-8537-2a4d91b0fd3b', 'protein', 28, 'as-fed'),
  ('75d3ef0e-3cce-4f65-8537-2a4d91b0fd3b', 'fat', 18, 'as-fed'),
  ('75d3ef0e-3cce-4f65-8537-2a4d91b0fd3b', 'fiber', 2.9, 'as-fed'),
  ('75d3ef0e-3cce-4f65-8537-2a4d91b0fd3b', 'ash', 8.6, 'as-fed'),
  ('75d3ef0e-3cce-4f65-8537-2a4d91b0fd3b', 'moisture', 9, 'as-fed'),
  ('75d3ef0e-3cce-4f65-8537-2a4d91b0fd3b', 'calcium', 1.1, 'as-fed'),
  ('75d3ef0e-3cce-4f65-8537-2a4d91b0fd3b', 'phosphorus', 0.8, 'as-fed'),
  ('75d3ef0e-3cce-4f65-8537-2a4d91b0fd3b', 'omega3', 0.9, 'as-fed'),
  ('75d3ef0e-3cce-4f65-8537-2a4d91b0fd3b', 'omega6', 3.3, 'as-fed'),
  ('75d3ef0e-3cce-4f65-8537-2a4d91b0fd3b', 'kcal', 392.6, 'as-fed');

-- N&D — Prime natvoeding Wild Zwijn (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-prime-natvoeding-voor-de-hond-wild-zwijn-140-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'b0760124-31af-432d-b81e-a98ab4c2a342';
delete from public.recipe_nutrition where recipe_version_id = 'b0760124-31af-432d-b81e-a98ab4c2a342';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b0760124-31af-432d-b81e-a98ab4c2a342', 'protein', 12, 'as-fed'),
  ('b0760124-31af-432d-b81e-a98ab4c2a342', 'fat', 5, 'as-fed'),
  ('b0760124-31af-432d-b81e-a98ab4c2a342', 'fiber', 0.8, 'as-fed'),
  ('b0760124-31af-432d-b81e-a98ab4c2a342', 'ash', 1.8, 'as-fed'),
  ('b0760124-31af-432d-b81e-a98ab4c2a342', 'moisture', 75, 'as-fed'),
  ('b0760124-31af-432d-b81e-a98ab4c2a342', 'kcal', 109.5, 'as-fed');

-- N&D — Tropical Zalm medium/maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-tropical-hondenvoeding-zalm-mediummaxi-10-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'd73b3de2-e6d9-4f3a-a946-c75be99ca14c';
delete from public.recipe_nutrition where recipe_version_id = 'd73b3de2-e6d9-4f3a-a946-c75be99ca14c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d73b3de2-e6d9-4f3a-a946-c75be99ca14c', 'protein', 27, 'as-fed'),
  ('d73b3de2-e6d9-4f3a-a946-c75be99ca14c', 'fat', 16, 'as-fed'),
  ('d73b3de2-e6d9-4f3a-a946-c75be99ca14c', 'fiber', 2.9, 'as-fed'),
  ('d73b3de2-e6d9-4f3a-a946-c75be99ca14c', 'ash', 7.9, 'as-fed'),
  ('d73b3de2-e6d9-4f3a-a946-c75be99ca14c', 'moisture', 9, 'as-fed'),
  ('d73b3de2-e6d9-4f3a-a946-c75be99ca14c', 'calcium', 0.9, 'as-fed'),
  ('d73b3de2-e6d9-4f3a-a946-c75be99ca14c', 'phosphorus', 0.8, 'as-fed'),
  ('d73b3de2-e6d9-4f3a-a946-c75be99ca14c', 'omega3', 2, 'as-fed'),
  ('d73b3de2-e6d9-4f3a-a946-c75be99ca14c', 'omega6', 1.6, 'as-fed'),
  ('d73b3de2-e6d9-4f3a-a946-c75be99ca14c', 'kcal', 385.6, 'as-fed');

-- N&D — Tropical Kip small breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-tropical-hondenvoeding-kip-small-breed-15-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '7c2fd864-f06c-4d3e-9163-47f9b7558f90';
delete from public.recipe_nutrition where recipe_version_id = '7c2fd864-f06c-4d3e-9163-47f9b7558f90';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7c2fd864-f06c-4d3e-9163-47f9b7558f90', 'protein', 27, 'as-fed'),
  ('7c2fd864-f06c-4d3e-9163-47f9b7558f90', 'fat', 16, 'as-fed'),
  ('7c2fd864-f06c-4d3e-9163-47f9b7558f90', 'fiber', 2.7, 'as-fed'),
  ('7c2fd864-f06c-4d3e-9163-47f9b7558f90', 'ash', 7.5, 'as-fed'),
  ('7c2fd864-f06c-4d3e-9163-47f9b7558f90', 'moisture', 9, 'as-fed'),
  ('7c2fd864-f06c-4d3e-9163-47f9b7558f90', 'calcium', 0.9, 'as-fed'),
  ('7c2fd864-f06c-4d3e-9163-47f9b7558f90', 'phosphorus', 0.8, 'as-fed'),
  ('7c2fd864-f06c-4d3e-9163-47f9b7558f90', 'omega3', 0.7, 'as-fed'),
  ('7c2fd864-f06c-4d3e-9163-47f9b7558f90', 'omega6', 3, 'as-fed'),
  ('7c2fd864-f06c-4d3e-9163-47f9b7558f90', 'kcal', 388.5, 'as-fed');

-- N&D — Prime natvoeding Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-prime-natvoeding-voor-de-hond-kip-285-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '940cf5e4-0907-4682-8f16-c0f7f2e84f26';
delete from public.recipe_nutrition where recipe_version_id = '940cf5e4-0907-4682-8f16-c0f7f2e84f26';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('940cf5e4-0907-4682-8f16-c0f7f2e84f26', 'protein', 12, 'as-fed'),
  ('940cf5e4-0907-4682-8f16-c0f7f2e84f26', 'fat', 4.5, 'as-fed'),
  ('940cf5e4-0907-4682-8f16-c0f7f2e84f26', 'fiber', 0.8, 'as-fed'),
  ('940cf5e4-0907-4682-8f16-c0f7f2e84f26', 'ash', 1.8, 'as-fed'),
  ('940cf5e4-0907-4682-8f16-c0f7f2e84f26', 'moisture', 75, 'as-fed'),
  ('940cf5e4-0907-4682-8f16-c0f7f2e84f26', 'kcal', 107.2, 'as-fed');

-- N&D — Prime Wild Zwijn small breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-prime-hondenvoeding-wild-zwijn-small-breed-7-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '9f3b683b-6d82-42f5-a275-c17b07fe8d1c';
delete from public.recipe_nutrition where recipe_version_id = '9f3b683b-6d82-42f5-a275-c17b07fe8d1c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9f3b683b-6d82-42f5-a275-c17b07fe8d1c', 'protein', 34, 'as-fed'),
  ('9f3b683b-6d82-42f5-a275-c17b07fe8d1c', 'fat', 18, 'as-fed'),
  ('9f3b683b-6d82-42f5-a275-c17b07fe8d1c', 'fiber', 2.6, 'as-fed'),
  ('9f3b683b-6d82-42f5-a275-c17b07fe8d1c', 'ash', 7.9, 'as-fed'),
  ('9f3b683b-6d82-42f5-a275-c17b07fe8d1c', 'moisture', 9, 'as-fed'),
  ('9f3b683b-6d82-42f5-a275-c17b07fe8d1c', 'calcium', 1, 'as-fed'),
  ('9f3b683b-6d82-42f5-a275-c17b07fe8d1c', 'phosphorus', 0.8, 'as-fed'),
  ('9f3b683b-6d82-42f5-a275-c17b07fe8d1c', 'omega3', 0.9, 'as-fed'),
  ('9f3b683b-6d82-42f5-a275-c17b07fe8d1c', 'omega6', 3.3, 'as-fed'),
  ('9f3b683b-6d82-42f5-a275-c17b07fe8d1c', 'kcal', 399.5, 'as-fed');

-- N&D — Spirulina puppyvoeding Lam small breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-spirulina-puppyvoeding-lam-small-breed-2-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '9e305731-f0d6-4620-8f02-6bd262a7b1c2';
delete from public.recipe_nutrition where recipe_version_id = '9e305731-f0d6-4620-8f02-6bd262a7b1c2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9e305731-f0d6-4620-8f02-6bd262a7b1c2', 'protein', 30, 'as-fed'),
  ('9e305731-f0d6-4620-8f02-6bd262a7b1c2', 'fat', 20, 'as-fed'),
  ('9e305731-f0d6-4620-8f02-6bd262a7b1c2', 'fiber', 2.5, 'as-fed'),
  ('9e305731-f0d6-4620-8f02-6bd262a7b1c2', 'ash', 8.1, 'as-fed'),
  ('9e305731-f0d6-4620-8f02-6bd262a7b1c2', 'moisture', 9, 'as-fed'),
  ('9e305731-f0d6-4620-8f02-6bd262a7b1c2', 'calcium', 1.1, 'as-fed'),
  ('9e305731-f0d6-4620-8f02-6bd262a7b1c2', 'phosphorus', 0.91, 'as-fed'),
  ('9e305731-f0d6-4620-8f02-6bd262a7b1c2', 'omega3', 0.9, 'as-fed'),
  ('9e305731-f0d6-4620-8f02-6bd262a7b1c2', 'omega6', 3.4, 'as-fed'),
  ('9e305731-f0d6-4620-8f02-6bd262a7b1c2', 'kcal', 407.4, 'as-fed');

-- N&D — Brown voor de bruine hond small breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-brown-hondenvoeding-voor-de-bruine-hond-small-breed-2-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'b1d276f6-6ce8-4de6-9187-93cc5f9a3b97';
delete from public.recipe_nutrition where recipe_version_id = 'b1d276f6-6ce8-4de6-9187-93cc5f9a3b97';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b1d276f6-6ce8-4de6-9187-93cc5f9a3b97', 'protein', 34, 'as-fed'),
  ('b1d276f6-6ce8-4de6-9187-93cc5f9a3b97', 'fat', 18, 'as-fed'),
  ('b1d276f6-6ce8-4de6-9187-93cc5f9a3b97', 'fiber', 3.3, 'as-fed'),
  ('b1d276f6-6ce8-4de6-9187-93cc5f9a3b97', 'ash', 8.6, 'as-fed'),
  ('b1d276f6-6ce8-4de6-9187-93cc5f9a3b97', 'moisture', 9, 'as-fed'),
  ('b1d276f6-6ce8-4de6-9187-93cc5f9a3b97', 'calcium', 1.1, 'as-fed'),
  ('b1d276f6-6ce8-4de6-9187-93cc5f9a3b97', 'phosphorus', 0.8, 'as-fed'),
  ('b1d276f6-6ce8-4de6-9187-93cc5f9a3b97', 'omega3', 0.9, 'as-fed'),
  ('b1d276f6-6ce8-4de6-9187-93cc5f9a3b97', 'omega6', 3.3, 'as-fed'),
  ('b1d276f6-6ce8-4de6-9187-93cc5f9a3b97', 'kcal', 391.7, 'as-fed');

-- N&D — Ocean Puppyvoeding Kabeljauw met Pompoen small breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-ocean-puppyvoeding-kabeljauw-met-pompoen-small-breed-25-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'fe4eb44e-0304-4154-aad9-43b7743ecd43';
delete from public.recipe_nutrition where recipe_version_id = 'fe4eb44e-0304-4154-aad9-43b7743ecd43';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fe4eb44e-0304-4154-aad9-43b7743ecd43', 'protein', 35, 'as-fed'),
  ('fe4eb44e-0304-4154-aad9-43b7743ecd43', 'fat', 20, 'as-fed'),
  ('fe4eb44e-0304-4154-aad9-43b7743ecd43', 'fiber', 1.9, 'as-fed'),
  ('fe4eb44e-0304-4154-aad9-43b7743ecd43', 'ash', 8.5, 'as-fed'),
  ('fe4eb44e-0304-4154-aad9-43b7743ecd43', 'moisture', 9, 'as-fed'),
  ('fe4eb44e-0304-4154-aad9-43b7743ecd43', 'calcium', 1.1, 'as-fed'),
  ('fe4eb44e-0304-4154-aad9-43b7743ecd43', 'phosphorus', 0.91, 'as-fed'),
  ('fe4eb44e-0304-4154-aad9-43b7743ecd43', 'omega3', 2.5, 'as-fed'),
  ('fe4eb44e-0304-4154-aad9-43b7743ecd43', 'omega6', 1.8, 'as-fed'),
  ('fe4eb44e-0304-4154-aad9-43b7743ecd43', 'kcal', 412.5, 'as-fed');

-- N&D — Prime Wild Zwijn medium/maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-prime-hondenvoeding-wild-zwijn-mediummaxi-12-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '827c7b6e-8409-4dbe-bf17-522f83a28703';
delete from public.recipe_nutrition where recipe_version_id = '827c7b6e-8409-4dbe-bf17-522f83a28703';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('827c7b6e-8409-4dbe-bf17-522f83a28703', 'protein', 34, 'as-fed'),
  ('827c7b6e-8409-4dbe-bf17-522f83a28703', 'fat', 18, 'as-fed'),
  ('827c7b6e-8409-4dbe-bf17-522f83a28703', 'fiber', 2.6, 'as-fed'),
  ('827c7b6e-8409-4dbe-bf17-522f83a28703', 'ash', 7.9, 'as-fed'),
  ('827c7b6e-8409-4dbe-bf17-522f83a28703', 'moisture', 9, 'as-fed'),
  ('827c7b6e-8409-4dbe-bf17-522f83a28703', 'calcium', 1, 'as-fed'),
  ('827c7b6e-8409-4dbe-bf17-522f83a28703', 'phosphorus', 0.8, 'as-fed'),
  ('827c7b6e-8409-4dbe-bf17-522f83a28703', 'omega3', 0.9, 'as-fed'),
  ('827c7b6e-8409-4dbe-bf17-522f83a28703', 'omega6', 3.3, 'as-fed'),
  ('827c7b6e-8409-4dbe-bf17-522f83a28703', 'kcal', 399.5, 'as-fed');

-- N&D — Spirulina Haring small breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-spirulina-hondenvoeding-haring-small-breed-2-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'bebfb1f4-117d-443e-971f-31ba0bb0275a';
delete from public.recipe_nutrition where recipe_version_id = 'bebfb1f4-117d-443e-971f-31ba0bb0275a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('bebfb1f4-117d-443e-971f-31ba0bb0275a', 'protein', 30, 'as-fed'),
  ('bebfb1f4-117d-443e-971f-31ba0bb0275a', 'fat', 18, 'as-fed'),
  ('bebfb1f4-117d-443e-971f-31ba0bb0275a', 'fiber', 2.9, 'as-fed'),
  ('bebfb1f4-117d-443e-971f-31ba0bb0275a', 'ash', 7.5, 'as-fed'),
  ('bebfb1f4-117d-443e-971f-31ba0bb0275a', 'moisture', 9, 'as-fed'),
  ('bebfb1f4-117d-443e-971f-31ba0bb0275a', 'calcium', 0.8, 'as-fed'),
  ('bebfb1f4-117d-443e-971f-31ba0bb0275a', 'phosphorus', 0.7, 'as-fed'),
  ('bebfb1f4-117d-443e-971f-31ba0bb0275a', 'omega3', 2.3, 'as-fed'),
  ('bebfb1f4-117d-443e-971f-31ba0bb0275a', 'omega6', 1.6, 'as-fed'),
  ('bebfb1f4-117d-443e-971f-31ba0bb0275a', 'kcal', 397.3, 'as-fed');

-- N&D — Pumpkin natvoeding Eend (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-pumpkin-natvoeding-voor-de-hond-eend-285-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '3d671d8b-7ef0-4648-b9ea-754de79261f7';
delete from public.recipe_nutrition where recipe_version_id = '3d671d8b-7ef0-4648-b9ea-754de79261f7';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3d671d8b-7ef0-4648-b9ea-754de79261f7', 'protein', 12, 'as-fed'),
  ('3d671d8b-7ef0-4648-b9ea-754de79261f7', 'fat', 4.5, 'as-fed'),
  ('3d671d8b-7ef0-4648-b9ea-754de79261f7', 'fiber', 1, 'as-fed'),
  ('3d671d8b-7ef0-4648-b9ea-754de79261f7', 'ash', 2.4, 'as-fed'),
  ('3d671d8b-7ef0-4648-b9ea-754de79261f7', 'moisture', 75, 'as-fed'),
  ('3d671d8b-7ef0-4648-b9ea-754de79261f7', 'kcal', 103.5, 'as-fed');

-- N&D — Spirulina puppyvoeding Lam medium/maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-spirulina-puppyvoeding-lam-mediummaxi-7-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '87968280-0c39-4738-bbca-29fbafca9a3c';
delete from public.recipe_nutrition where recipe_version_id = '87968280-0c39-4738-bbca-29fbafca9a3c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('87968280-0c39-4738-bbca-29fbafca9a3c', 'protein', 30, 'as-fed'),
  ('87968280-0c39-4738-bbca-29fbafca9a3c', 'fat', 20, 'as-fed'),
  ('87968280-0c39-4738-bbca-29fbafca9a3c', 'fiber', 2.5, 'as-fed'),
  ('87968280-0c39-4738-bbca-29fbafca9a3c', 'ash', 8.1, 'as-fed'),
  ('87968280-0c39-4738-bbca-29fbafca9a3c', 'moisture', 9, 'as-fed'),
  ('87968280-0c39-4738-bbca-29fbafca9a3c', 'calcium', 1.1, 'as-fed'),
  ('87968280-0c39-4738-bbca-29fbafca9a3c', 'phosphorus', 0.91, 'as-fed'),
  ('87968280-0c39-4738-bbca-29fbafca9a3c', 'omega3', 0.9, 'as-fed'),
  ('87968280-0c39-4738-bbca-29fbafca9a3c', 'omega6', 3.4, 'as-fed'),
  ('87968280-0c39-4738-bbca-29fbafca9a3c', 'kcal', 407.4, 'as-fed');

-- N&D — Tropical Lam medium/maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-tropical-hondenvoeding-lam-mediummaxi-10-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '702af5a2-d9eb-49f9-91bd-a99c9f776b08';
delete from public.recipe_nutrition where recipe_version_id = '702af5a2-d9eb-49f9-91bd-a99c9f776b08';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('702af5a2-d9eb-49f9-91bd-a99c9f776b08', 'protein', 25, 'as-fed'),
  ('702af5a2-d9eb-49f9-91bd-a99c9f776b08', 'fat', 16, 'as-fed'),
  ('702af5a2-d9eb-49f9-91bd-a99c9f776b08', 'fiber', 2.7, 'as-fed'),
  ('702af5a2-d9eb-49f9-91bd-a99c9f776b08', 'ash', 7.9, 'as-fed'),
  ('702af5a2-d9eb-49f9-91bd-a99c9f776b08', 'moisture', 9, 'as-fed'),
  ('702af5a2-d9eb-49f9-91bd-a99c9f776b08', 'calcium', 1, 'as-fed'),
  ('702af5a2-d9eb-49f9-91bd-a99c9f776b08', 'phosphorus', 0.8, 'as-fed'),
  ('702af5a2-d9eb-49f9-91bd-a99c9f776b08', 'omega3', 0.7, 'as-fed'),
  ('702af5a2-d9eb-49f9-91bd-a99c9f776b08', 'omega6', 3, 'as-fed'),
  ('702af5a2-d9eb-49f9-91bd-a99c9f776b08', 'kcal', 386.4, 'as-fed');

-- N&D — Quinoa Gecastreerde Hond small breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-quinoa-voeding-voor-de-gecastreerde-hond-small-breed-25-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '033cb4fa-4a24-41e4-b676-018bc3e41b29';
delete from public.recipe_nutrition where recipe_version_id = '033cb4fa-4a24-41e4-b676-018bc3e41b29';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('033cb4fa-4a24-41e4-b676-018bc3e41b29', 'protein', 30, 'as-fed'),
  ('033cb4fa-4a24-41e4-b676-018bc3e41b29', 'fat', 11, 'as-fed'),
  ('033cb4fa-4a24-41e4-b676-018bc3e41b29', 'fiber', 5.7, 'as-fed'),
  ('033cb4fa-4a24-41e4-b676-018bc3e41b29', 'ash', 7.8, 'as-fed'),
  ('033cb4fa-4a24-41e4-b676-018bc3e41b29', 'moisture', 9, 'as-fed'),
  ('033cb4fa-4a24-41e4-b676-018bc3e41b29', 'calcium', 1.2, 'as-fed'),
  ('033cb4fa-4a24-41e4-b676-018bc3e41b29', 'phosphorus', 0.9, 'as-fed'),
  ('033cb4fa-4a24-41e4-b676-018bc3e41b29', 'omega3', 0.3, 'as-fed'),
  ('033cb4fa-4a24-41e4-b676-018bc3e41b29', 'omega6', 2, 'as-fed'),
  ('033cb4fa-4a24-41e4-b676-018bc3e41b29', 'kcal', 344.4, 'as-fed');

-- N&D — Quinoa Digestion small breed Lam (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-digestion-small-breed-lam-25-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '08356301-41d7-4eb7-8e5f-395f03cc205a';
delete from public.recipe_nutrition where recipe_version_id = '08356301-41d7-4eb7-8e5f-395f03cc205a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('08356301-41d7-4eb7-8e5f-395f03cc205a', 'protein', 25, 'as-fed'),
  ('08356301-41d7-4eb7-8e5f-395f03cc205a', 'fat', 12, 'as-fed'),
  ('08356301-41d7-4eb7-8e5f-395f03cc205a', 'fiber', 1.9, 'as-fed'),
  ('08356301-41d7-4eb7-8e5f-395f03cc205a', 'ash', 7.5, 'as-fed'),
  ('08356301-41d7-4eb7-8e5f-395f03cc205a', 'moisture', 9, 'as-fed'),
  ('08356301-41d7-4eb7-8e5f-395f03cc205a', 'calcium', 0.9, 'as-fed'),
  ('08356301-41d7-4eb7-8e5f-395f03cc205a', 'phosphorus', 0.6, 'as-fed'),
  ('08356301-41d7-4eb7-8e5f-395f03cc205a', 'omega3', 0.2, 'as-fed'),
  ('08356301-41d7-4eb7-8e5f-395f03cc205a', 'omega6', 0.4, 'as-fed'),
  ('08356301-41d7-4eb7-8e5f-395f03cc205a', 'kcal', 374.9, 'as-fed');

-- N&D — Quinoa Skin & Coat small breed Kwartel (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-skin-coat-small-breed-kwartel-800-gr',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'af644f38-853d-47a6-bf11-5f9a5c504a02';
delete from public.recipe_nutrition where recipe_version_id = 'af644f38-853d-47a6-bf11-5f9a5c504a02';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('af644f38-853d-47a6-bf11-5f9a5c504a02', 'protein', 23, 'as-fed'),
  ('af644f38-853d-47a6-bf11-5f9a5c504a02', 'fat', 12, 'as-fed'),
  ('af644f38-853d-47a6-bf11-5f9a5c504a02', 'fiber', 2.8, 'as-fed'),
  ('af644f38-853d-47a6-bf11-5f9a5c504a02', 'ash', 7.9, 'as-fed'),
  ('af644f38-853d-47a6-bf11-5f9a5c504a02', 'moisture', 9, 'as-fed'),
  ('af644f38-853d-47a6-bf11-5f9a5c504a02', 'calcium', 1, 'as-fed'),
  ('af644f38-853d-47a6-bf11-5f9a5c504a02', 'phosphorus', 0.8, 'as-fed'),
  ('af644f38-853d-47a6-bf11-5f9a5c504a02', 'omega3', 0.4, 'as-fed'),
  ('af644f38-853d-47a6-bf11-5f9a5c504a02', 'omega6', 2.2, 'as-fed'),
  ('af644f38-853d-47a6-bf11-5f9a5c504a02', 'kcal', 369, 'as-fed');

-- N&D — Prime Lam medium/maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-prime-hondenvoeding-lam-mediummaxi-12-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'e4723b53-1ad3-4070-b56d-46130630411d';
delete from public.recipe_nutrition where recipe_version_id = 'e4723b53-1ad3-4070-b56d-46130630411d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e4723b53-1ad3-4070-b56d-46130630411d', 'protein', 34, 'as-fed'),
  ('e4723b53-1ad3-4070-b56d-46130630411d', 'fat', 18, 'as-fed'),
  ('e4723b53-1ad3-4070-b56d-46130630411d', 'fiber', 2.6, 'as-fed'),
  ('e4723b53-1ad3-4070-b56d-46130630411d', 'ash', 8.3, 'as-fed'),
  ('e4723b53-1ad3-4070-b56d-46130630411d', 'moisture', 9, 'as-fed'),
  ('e4723b53-1ad3-4070-b56d-46130630411d', 'calcium', 1.1, 'as-fed'),
  ('e4723b53-1ad3-4070-b56d-46130630411d', 'phosphorus', 0.8, 'as-fed'),
  ('e4723b53-1ad3-4070-b56d-46130630411d', 'omega3', 0.9, 'as-fed'),
  ('e4723b53-1ad3-4070-b56d-46130630411d', 'omega6', 3.3, 'as-fed'),
  ('e4723b53-1ad3-4070-b56d-46130630411d', 'kcal', 398.1, 'as-fed');

-- N&D — Pumpkin Lam medium/maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-pumpkin-hondenvoeding-lam-mediummaxi-12-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '511dae8c-68d2-40a1-b5a9-0837e7445dda';
delete from public.recipe_nutrition where recipe_version_id = '511dae8c-68d2-40a1-b5a9-0837e7445dda';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('511dae8c-68d2-40a1-b5a9-0837e7445dda', 'protein', 28, 'as-fed'),
  ('511dae8c-68d2-40a1-b5a9-0837e7445dda', 'fat', 18, 'as-fed'),
  ('511dae8c-68d2-40a1-b5a9-0837e7445dda', 'fiber', 2.9, 'as-fed'),
  ('511dae8c-68d2-40a1-b5a9-0837e7445dda', 'ash', 8.6, 'as-fed'),
  ('511dae8c-68d2-40a1-b5a9-0837e7445dda', 'moisture', 9, 'as-fed'),
  ('511dae8c-68d2-40a1-b5a9-0837e7445dda', 'calcium', 1.1, 'as-fed'),
  ('511dae8c-68d2-40a1-b5a9-0837e7445dda', 'phosphorus', 0.8, 'as-fed'),
  ('511dae8c-68d2-40a1-b5a9-0837e7445dda', 'omega3', 0.9, 'as-fed'),
  ('511dae8c-68d2-40a1-b5a9-0837e7445dda', 'omega6', 3.3, 'as-fed'),
  ('511dae8c-68d2-40a1-b5a9-0837e7445dda', 'kcal', 392.6, 'as-fed');

-- N&D — Quinoa Skin & Coat medium/maxi Eend (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-skin-coat-mediummaxi-eend-25-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'aedcb1a8-1645-4c17-876c-52fe46307907';
delete from public.recipe_nutrition where recipe_version_id = 'aedcb1a8-1645-4c17-876c-52fe46307907';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('aedcb1a8-1645-4c17-876c-52fe46307907', 'protein', 23, 'as-fed'),
  ('aedcb1a8-1645-4c17-876c-52fe46307907', 'fat', 12, 'as-fed'),
  ('aedcb1a8-1645-4c17-876c-52fe46307907', 'fiber', 2.8, 'as-fed'),
  ('aedcb1a8-1645-4c17-876c-52fe46307907', 'ash', 7.9, 'as-fed'),
  ('aedcb1a8-1645-4c17-876c-52fe46307907', 'moisture', 9, 'as-fed'),
  ('aedcb1a8-1645-4c17-876c-52fe46307907', 'calcium', 1, 'as-fed'),
  ('aedcb1a8-1645-4c17-876c-52fe46307907', 'phosphorus', 0.8, 'as-fed'),
  ('aedcb1a8-1645-4c17-876c-52fe46307907', 'omega3', 0.4, 'as-fed'),
  ('aedcb1a8-1645-4c17-876c-52fe46307907', 'omega6', 2.2, 'as-fed'),
  ('aedcb1a8-1645-4c17-876c-52fe46307907', 'kcal', 366.5, 'as-fed');

-- N&D — Tropical Zalm small breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-tropical-hondenvoeding-zalm-small-breed-5-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '0e2341b1-9bc7-4694-83d6-970f175e5056';
delete from public.recipe_nutrition where recipe_version_id = '0e2341b1-9bc7-4694-83d6-970f175e5056';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0e2341b1-9bc7-4694-83d6-970f175e5056', 'protein', 27, 'as-fed'),
  ('0e2341b1-9bc7-4694-83d6-970f175e5056', 'fat', 16, 'as-fed'),
  ('0e2341b1-9bc7-4694-83d6-970f175e5056', 'fiber', 2.9, 'as-fed'),
  ('0e2341b1-9bc7-4694-83d6-970f175e5056', 'ash', 7.9, 'as-fed'),
  ('0e2341b1-9bc7-4694-83d6-970f175e5056', 'moisture', 9, 'as-fed'),
  ('0e2341b1-9bc7-4694-83d6-970f175e5056', 'calcium', 0.9, 'as-fed'),
  ('0e2341b1-9bc7-4694-83d6-970f175e5056', 'phosphorus', 0.8, 'as-fed'),
  ('0e2341b1-9bc7-4694-83d6-970f175e5056', 'omega3', 2, 'as-fed'),
  ('0e2341b1-9bc7-4694-83d6-970f175e5056', 'omega6', 1.6, 'as-fed'),
  ('0e2341b1-9bc7-4694-83d6-970f175e5056', 'kcal', 385.6, 'as-fed');

-- N&D — Tropical Kip medium/maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-tropical-hondenvoeding-kip-mediummaxi-10-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'dc14e741-cc4c-4668-8fbf-b690030f1f37';
delete from public.recipe_nutrition where recipe_version_id = 'dc14e741-cc4c-4668-8fbf-b690030f1f37';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('dc14e741-cc4c-4668-8fbf-b690030f1f37', 'protein', 27, 'as-fed'),
  ('dc14e741-cc4c-4668-8fbf-b690030f1f37', 'fat', 16, 'as-fed'),
  ('dc14e741-cc4c-4668-8fbf-b690030f1f37', 'fiber', 2.7, 'as-fed'),
  ('dc14e741-cc4c-4668-8fbf-b690030f1f37', 'ash', 7.5, 'as-fed'),
  ('dc14e741-cc4c-4668-8fbf-b690030f1f37', 'moisture', 9, 'as-fed'),
  ('dc14e741-cc4c-4668-8fbf-b690030f1f37', 'calcium', 0.9, 'as-fed'),
  ('dc14e741-cc4c-4668-8fbf-b690030f1f37', 'phosphorus', 0.8, 'as-fed'),
  ('dc14e741-cc4c-4668-8fbf-b690030f1f37', 'omega3', 0.7, 'as-fed'),
  ('dc14e741-cc4c-4668-8fbf-b690030f1f37', 'omega6', 3, 'as-fed'),
  ('dc14e741-cc4c-4668-8fbf-b690030f1f37', 'kcal', 388.5, 'as-fed');

-- N&D — Quinoa Skin & Coat medium/maxi Hert (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-skin-coat-mediummaxi-hert-7-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '8401c525-372e-4104-9f22-15068f4ec87a';
delete from public.recipe_nutrition where recipe_version_id = '8401c525-372e-4104-9f22-15068f4ec87a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8401c525-372e-4104-9f22-15068f4ec87a', 'protein', 23, 'as-fed'),
  ('8401c525-372e-4104-9f22-15068f4ec87a', 'fat', 12, 'as-fed'),
  ('8401c525-372e-4104-9f22-15068f4ec87a', 'fiber', 2.8, 'as-fed'),
  ('8401c525-372e-4104-9f22-15068f4ec87a', 'ash', 7.9, 'as-fed'),
  ('8401c525-372e-4104-9f22-15068f4ec87a', 'moisture', 9, 'as-fed'),
  ('8401c525-372e-4104-9f22-15068f4ec87a', 'calcium', 1.1, 'as-fed'),
  ('8401c525-372e-4104-9f22-15068f4ec87a', 'phosphorus', 0.9, 'as-fed'),
  ('8401c525-372e-4104-9f22-15068f4ec87a', 'omega3', 0.4, 'as-fed'),
  ('8401c525-372e-4104-9f22-15068f4ec87a', 'omega6', 2.2, 'as-fed'),
  ('8401c525-372e-4104-9f22-15068f4ec87a', 'kcal', 366.5, 'as-fed');

-- N&D — Spirulina Haring medium/maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-spirulina-hondenvoeding-haring-mediummaxi-7-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'e2fb3f1c-318b-41ad-ac22-4ec2663955d7';
delete from public.recipe_nutrition where recipe_version_id = 'e2fb3f1c-318b-41ad-ac22-4ec2663955d7';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e2fb3f1c-318b-41ad-ac22-4ec2663955d7', 'protein', 30, 'as-fed'),
  ('e2fb3f1c-318b-41ad-ac22-4ec2663955d7', 'fat', 18, 'as-fed'),
  ('e2fb3f1c-318b-41ad-ac22-4ec2663955d7', 'fiber', 2.9, 'as-fed'),
  ('e2fb3f1c-318b-41ad-ac22-4ec2663955d7', 'ash', 7.5, 'as-fed'),
  ('e2fb3f1c-318b-41ad-ac22-4ec2663955d7', 'moisture', 9, 'as-fed'),
  ('e2fb3f1c-318b-41ad-ac22-4ec2663955d7', 'calcium', 0.8, 'as-fed'),
  ('e2fb3f1c-318b-41ad-ac22-4ec2663955d7', 'phosphorus', 0.7, 'as-fed'),
  ('e2fb3f1c-318b-41ad-ac22-4ec2663955d7', 'omega3', 2.3, 'as-fed'),
  ('e2fb3f1c-318b-41ad-ac22-4ec2663955d7', 'omega6', 1.6, 'as-fed'),
  ('e2fb3f1c-318b-41ad-ac22-4ec2663955d7', 'kcal', 397.3, 'as-fed');

-- N&D — Pumpkin Wild Zwijn medium/maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-pumpkin-hondenvoeding-wild-zwijn-mediummaxi-25-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '3e507d8b-1e11-4890-98c6-f790d73bc649';
delete from public.recipe_nutrition where recipe_version_id = '3e507d8b-1e11-4890-98c6-f790d73bc649';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3e507d8b-1e11-4890-98c6-f790d73bc649', 'protein', 30, 'as-fed'),
  ('3e507d8b-1e11-4890-98c6-f790d73bc649', 'fat', 18, 'as-fed'),
  ('3e507d8b-1e11-4890-98c6-f790d73bc649', 'fiber', 2.9, 'as-fed'),
  ('3e507d8b-1e11-4890-98c6-f790d73bc649', 'ash', 6.6, 'as-fed'),
  ('3e507d8b-1e11-4890-98c6-f790d73bc649', 'moisture', 9, 'as-fed'),
  ('3e507d8b-1e11-4890-98c6-f790d73bc649', 'calcium', 0.9, 'as-fed'),
  ('3e507d8b-1e11-4890-98c6-f790d73bc649', 'phosphorus', 0.7, 'as-fed'),
  ('3e507d8b-1e11-4890-98c6-f790d73bc649', 'omega3', 0.9, 'as-fed'),
  ('3e507d8b-1e11-4890-98c6-f790d73bc649', 'omega6', 3.3, 'as-fed'),
  ('3e507d8b-1e11-4890-98c6-f790d73bc649', 'kcal', 400.5, 'as-fed');

-- N&D — Tropical Varken medium/maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-tropical-hondenvoeding-varken-mediummaxi-10-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'e5fb4db4-8e9a-47ba-9fa5-0a59b962edac';
delete from public.recipe_nutrition where recipe_version_id = 'e5fb4db4-8e9a-47ba-9fa5-0a59b962edac';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e5fb4db4-8e9a-47ba-9fa5-0a59b962edac', 'protein', 27, 'as-fed'),
  ('e5fb4db4-8e9a-47ba-9fa5-0a59b962edac', 'fat', 16, 'as-fed'),
  ('e5fb4db4-8e9a-47ba-9fa5-0a59b962edac', 'fiber', 2.7, 'as-fed'),
  ('e5fb4db4-8e9a-47ba-9fa5-0a59b962edac', 'ash', 7.5, 'as-fed'),
  ('e5fb4db4-8e9a-47ba-9fa5-0a59b962edac', 'moisture', 9, 'as-fed'),
  ('e5fb4db4-8e9a-47ba-9fa5-0a59b962edac', 'calcium', 0.9, 'as-fed'),
  ('e5fb4db4-8e9a-47ba-9fa5-0a59b962edac', 'phosphorus', 0.8, 'as-fed'),
  ('e5fb4db4-8e9a-47ba-9fa5-0a59b962edac', 'omega3', 0.7, 'as-fed'),
  ('e5fb4db4-8e9a-47ba-9fa5-0a59b962edac', 'omega6', 3, 'as-fed'),
  ('e5fb4db4-8e9a-47ba-9fa5-0a59b962edac', 'kcal', 388.5, 'as-fed');

-- N&D — Pumpkin Hert small breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-pumpkin-hondenvoeding-hert-small-breed-2-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '2c178d32-f1b2-47c6-bbd6-f4867abb4a72';
delete from public.recipe_nutrition where recipe_version_id = '2c178d32-f1b2-47c6-bbd6-f4867abb4a72';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2c178d32-f1b2-47c6-bbd6-f4867abb4a72', 'protein', 28, 'as-fed'),
  ('2c178d32-f1b2-47c6-bbd6-f4867abb4a72', 'fat', 18, 'as-fed'),
  ('2c178d32-f1b2-47c6-bbd6-f4867abb4a72', 'fiber', 2.9, 'as-fed'),
  ('2c178d32-f1b2-47c6-bbd6-f4867abb4a72', 'ash', 8.6, 'as-fed'),
  ('2c178d32-f1b2-47c6-bbd6-f4867abb4a72', 'moisture', 9, 'as-fed'),
  ('2c178d32-f1b2-47c6-bbd6-f4867abb4a72', 'calcium', 1.1, 'as-fed'),
  ('2c178d32-f1b2-47c6-bbd6-f4867abb4a72', 'phosphorus', 0.8, 'as-fed'),
  ('2c178d32-f1b2-47c6-bbd6-f4867abb4a72', 'omega3', 0.9, 'as-fed'),
  ('2c178d32-f1b2-47c6-bbd6-f4867abb4a72', 'omega6', 3.3, 'as-fed'),
  ('2c178d32-f1b2-47c6-bbd6-f4867abb4a72', 'kcal', 392.6, 'as-fed');

-- N&D — Pumpkin puppyvoeding Lam small breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-pumpkin-puppyvoeding-lam-small-breed-7-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'f5794c2e-13e1-44ac-8477-d9682da42de1';
delete from public.recipe_nutrition where recipe_version_id = 'f5794c2e-13e1-44ac-8477-d9682da42de1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f5794c2e-13e1-44ac-8477-d9682da42de1', 'protein', 35, 'as-fed'),
  ('f5794c2e-13e1-44ac-8477-d9682da42de1', 'fat', 20, 'as-fed'),
  ('f5794c2e-13e1-44ac-8477-d9682da42de1', 'fiber', 1.9, 'as-fed'),
  ('f5794c2e-13e1-44ac-8477-d9682da42de1', 'ash', 8.1, 'as-fed'),
  ('f5794c2e-13e1-44ac-8477-d9682da42de1', 'moisture', 9, 'as-fed'),
  ('f5794c2e-13e1-44ac-8477-d9682da42de1', 'calcium', 1.1, 'as-fed'),
  ('f5794c2e-13e1-44ac-8477-d9682da42de1', 'phosphorus', 0.91, 'as-fed'),
  ('f5794c2e-13e1-44ac-8477-d9682da42de1', 'omega3', 0.9, 'as-fed'),
  ('f5794c2e-13e1-44ac-8477-d9682da42de1', 'omega6', 3.4, 'as-fed'),
  ('f5794c2e-13e1-44ac-8477-d9682da42de1', 'kcal', 413.9, 'as-fed');

-- N&D — Spirulina Lam medium/maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-spirulina-hondenvoeding-lam-mediummaxi-7-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'e8cfdd21-f679-4b67-addd-23e2e60e9c50';
delete from public.recipe_nutrition where recipe_version_id = 'e8cfdd21-f679-4b67-addd-23e2e60e9c50';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e8cfdd21-f679-4b67-addd-23e2e60e9c50', 'protein', 28, 'as-fed'),
  ('e8cfdd21-f679-4b67-addd-23e2e60e9c50', 'fat', 18, 'as-fed'),
  ('e8cfdd21-f679-4b67-addd-23e2e60e9c50', 'fiber', 2.9, 'as-fed'),
  ('e8cfdd21-f679-4b67-addd-23e2e60e9c50', 'ash', 8.6, 'as-fed'),
  ('e8cfdd21-f679-4b67-addd-23e2e60e9c50', 'moisture', 9, 'as-fed'),
  ('e8cfdd21-f679-4b67-addd-23e2e60e9c50', 'calcium', 1.1, 'as-fed'),
  ('e8cfdd21-f679-4b67-addd-23e2e60e9c50', 'phosphorus', 0.8, 'as-fed'),
  ('e8cfdd21-f679-4b67-addd-23e2e60e9c50', 'omega3', 0.9, 'as-fed'),
  ('e8cfdd21-f679-4b67-addd-23e2e60e9c50', 'omega6', 3.3, 'as-fed'),
  ('e8cfdd21-f679-4b67-addd-23e2e60e9c50', 'kcal', 392.6, 'as-fed');

-- N&D — Ocean Kabeljauw met Pompoen small breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-ocean-hondenvoeding-kabeljauw-met-pompoen-small-breed-25-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '954618fa-5263-4508-93ae-3004fb8444d1';
delete from public.recipe_nutrition where recipe_version_id = '954618fa-5263-4508-93ae-3004fb8444d1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('954618fa-5263-4508-93ae-3004fb8444d1', 'protein', 30, 'as-fed'),
  ('954618fa-5263-4508-93ae-3004fb8444d1', 'fat', 18, 'as-fed'),
  ('954618fa-5263-4508-93ae-3004fb8444d1', 'fiber', 2.9, 'as-fed'),
  ('954618fa-5263-4508-93ae-3004fb8444d1', 'ash', 7.3, 'as-fed'),
  ('954618fa-5263-4508-93ae-3004fb8444d1', 'moisture', 9, 'as-fed'),
  ('954618fa-5263-4508-93ae-3004fb8444d1', 'calcium', 0.8, 'as-fed'),
  ('954618fa-5263-4508-93ae-3004fb8444d1', 'phosphorus', 0.7, 'as-fed'),
  ('954618fa-5263-4508-93ae-3004fb8444d1', 'omega3', 2.3, 'as-fed'),
  ('954618fa-5263-4508-93ae-3004fb8444d1', 'omega6', 1.6, 'as-fed'),
  ('954618fa-5263-4508-93ae-3004fb8444d1', 'kcal', 398, 'as-fed');

-- N&D — Ocean Puppyvoeding Kabeljauw met Pompoen medium/maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-ocean-puppyvoeding-kabeljauw-met-pompoen-mediummaxi-25-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '58122c7c-dfe3-47b4-90db-cb7df4ba91a1';
delete from public.recipe_nutrition where recipe_version_id = '58122c7c-dfe3-47b4-90db-cb7df4ba91a1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('58122c7c-dfe3-47b4-90db-cb7df4ba91a1', 'protein', 35, 'as-fed'),
  ('58122c7c-dfe3-47b4-90db-cb7df4ba91a1', 'fat', 20, 'as-fed'),
  ('58122c7c-dfe3-47b4-90db-cb7df4ba91a1', 'fiber', 1.9, 'as-fed'),
  ('58122c7c-dfe3-47b4-90db-cb7df4ba91a1', 'ash', 8.5, 'as-fed'),
  ('58122c7c-dfe3-47b4-90db-cb7df4ba91a1', 'moisture', 9, 'as-fed'),
  ('58122c7c-dfe3-47b4-90db-cb7df4ba91a1', 'calcium', 1.1, 'as-fed'),
  ('58122c7c-dfe3-47b4-90db-cb7df4ba91a1', 'phosphorus', 0.91, 'as-fed'),
  ('58122c7c-dfe3-47b4-90db-cb7df4ba91a1', 'omega3', 2.5, 'as-fed'),
  ('58122c7c-dfe3-47b4-90db-cb7df4ba91a1', 'omega6', 1.8, 'as-fed'),
  ('58122c7c-dfe3-47b4-90db-cb7df4ba91a1', 'kcal', 412.5, 'as-fed');

-- N&D — Tropical Lam small breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-tropical-hondenvoeding-lam-small-breed-15-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '6422a3c4-c326-4f49-9449-5a9733ff8b75';
delete from public.recipe_nutrition where recipe_version_id = '6422a3c4-c326-4f49-9449-5a9733ff8b75';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6422a3c4-c326-4f49-9449-5a9733ff8b75', 'protein', 25, 'as-fed'),
  ('6422a3c4-c326-4f49-9449-5a9733ff8b75', 'fat', 16, 'as-fed'),
  ('6422a3c4-c326-4f49-9449-5a9733ff8b75', 'fiber', 2.7, 'as-fed'),
  ('6422a3c4-c326-4f49-9449-5a9733ff8b75', 'ash', 7.9, 'as-fed'),
  ('6422a3c4-c326-4f49-9449-5a9733ff8b75', 'moisture', 9, 'as-fed'),
  ('6422a3c4-c326-4f49-9449-5a9733ff8b75', 'calcium', 1, 'as-fed'),
  ('6422a3c4-c326-4f49-9449-5a9733ff8b75', 'phosphorus', 0.8, 'as-fed'),
  ('6422a3c4-c326-4f49-9449-5a9733ff8b75', 'omega3', 0.7, 'as-fed'),
  ('6422a3c4-c326-4f49-9449-5a9733ff8b75', 'omega6', 3, 'as-fed'),
  ('6422a3c4-c326-4f49-9449-5a9733ff8b75', 'kcal', 386.4, 'as-fed');

-- N&D — Quinoa Weight Management medium/maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-weight-management-mediummaxi-25-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '6d1fe81c-3154-4b79-8139-7bcb75c150c9';
delete from public.recipe_nutrition where recipe_version_id = '6d1fe81c-3154-4b79-8139-7bcb75c150c9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6d1fe81c-3154-4b79-8139-7bcb75c150c9', 'protein', 28, 'as-fed'),
  ('6d1fe81c-3154-4b79-8139-7bcb75c150c9', 'fat', 8, 'as-fed'),
  ('6d1fe81c-3154-4b79-8139-7bcb75c150c9', 'fiber', 8.2, 'as-fed'),
  ('6d1fe81c-3154-4b79-8139-7bcb75c150c9', 'ash', 7.9, 'as-fed'),
  ('6d1fe81c-3154-4b79-8139-7bcb75c150c9', 'moisture', 9, 'as-fed'),
  ('6d1fe81c-3154-4b79-8139-7bcb75c150c9', 'calcium', 0.9, 'as-fed'),
  ('6d1fe81c-3154-4b79-8139-7bcb75c150c9', 'phosphorus', 0.8, 'as-fed'),
  ('6d1fe81c-3154-4b79-8139-7bcb75c150c9', 'omega3', 0.25, 'as-fed'),
  ('6d1fe81c-3154-4b79-8139-7bcb75c150c9', 'omega6', 1.2, 'as-fed'),
  ('6d1fe81c-3154-4b79-8139-7bcb75c150c9', 'kcal', 313.6, 'as-fed');

-- N&D — Ocean Haring medium/maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-ocean-hondenvoeding-haring-mediummaxi-25-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'cc62acc2-6851-4163-9507-4d572c278768';
delete from public.recipe_nutrition where recipe_version_id = 'cc62acc2-6851-4163-9507-4d572c278768';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('cc62acc2-6851-4163-9507-4d572c278768', 'protein', 34, 'as-fed'),
  ('cc62acc2-6851-4163-9507-4d572c278768', 'fat', 18, 'as-fed'),
  ('cc62acc2-6851-4163-9507-4d572c278768', 'fiber', 2.6, 'as-fed'),
  ('cc62acc2-6851-4163-9507-4d572c278768', 'ash', 7.8, 'as-fed'),
  ('cc62acc2-6851-4163-9507-4d572c278768', 'moisture', 9, 'as-fed'),
  ('cc62acc2-6851-4163-9507-4d572c278768', 'calcium', 0.9, 'as-fed'),
  ('cc62acc2-6851-4163-9507-4d572c278768', 'phosphorus', 0.8, 'as-fed'),
  ('cc62acc2-6851-4163-9507-4d572c278768', 'omega3', 1.2, 'as-fed'),
  ('cc62acc2-6851-4163-9507-4d572c278768', 'omega6', 3, 'as-fed'),
  ('cc62acc2-6851-4163-9507-4d572c278768', 'kcal', 399.9, 'as-fed');

-- N&D — Pumpkin Hert medium/maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-pumpkin-hondenvoeding-hert-mediummaxi-12-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'c2721541-07b0-4814-9fb3-ac409a31aa28';
delete from public.recipe_nutrition where recipe_version_id = 'c2721541-07b0-4814-9fb3-ac409a31aa28';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c2721541-07b0-4814-9fb3-ac409a31aa28', 'protein', 28, 'as-fed'),
  ('c2721541-07b0-4814-9fb3-ac409a31aa28', 'fat', 18, 'as-fed'),
  ('c2721541-07b0-4814-9fb3-ac409a31aa28', 'fiber', 2.9, 'as-fed'),
  ('c2721541-07b0-4814-9fb3-ac409a31aa28', 'ash', 8.6, 'as-fed'),
  ('c2721541-07b0-4814-9fb3-ac409a31aa28', 'moisture', 9, 'as-fed'),
  ('c2721541-07b0-4814-9fb3-ac409a31aa28', 'calcium', 1.1, 'as-fed'),
  ('c2721541-07b0-4814-9fb3-ac409a31aa28', 'phosphorus', 0.8, 'as-fed'),
  ('c2721541-07b0-4814-9fb3-ac409a31aa28', 'omega3', 0.9, 'as-fed'),
  ('c2721541-07b0-4814-9fb3-ac409a31aa28', 'omega6', 3.3, 'as-fed'),
  ('c2721541-07b0-4814-9fb3-ac409a31aa28', 'kcal', 392.6, 'as-fed');

-- N&D — Pumpkin natvoeding Lam (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-pumpkin-natvoeding-voor-de-hond-lam-285-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '35847d4c-2eb3-4ed6-bbfe-a6bf4d01b7b5';
delete from public.recipe_nutrition where recipe_version_id = '35847d4c-2eb3-4ed6-bbfe-a6bf4d01b7b5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('35847d4c-2eb3-4ed6-bbfe-a6bf4d01b7b5', 'protein', 11, 'as-fed'),
  ('35847d4c-2eb3-4ed6-bbfe-a6bf4d01b7b5', 'fat', 7, 'as-fed'),
  ('35847d4c-2eb3-4ed6-bbfe-a6bf4d01b7b5', 'fiber', 1, 'as-fed'),
  ('35847d4c-2eb3-4ed6-bbfe-a6bf4d01b7b5', 'ash', 2.4, 'as-fed'),
  ('35847d4c-2eb3-4ed6-bbfe-a6bf4d01b7b5', 'moisture', 75, 'as-fed'),
  ('35847d4c-2eb3-4ed6-bbfe-a6bf4d01b7b5', 'kcal', 114.5, 'as-fed');

-- N&D — Quinoa Weight Management small breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-weight-management-small-breed-800-gr',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '68d96a97-c466-4c56-933a-9f61e6dc4277';
delete from public.recipe_nutrition where recipe_version_id = '68d96a97-c466-4c56-933a-9f61e6dc4277';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('68d96a97-c466-4c56-933a-9f61e6dc4277', 'protein', 28, 'as-fed'),
  ('68d96a97-c466-4c56-933a-9f61e6dc4277', 'fat', 8, 'as-fed'),
  ('68d96a97-c466-4c56-933a-9f61e6dc4277', 'fiber', 8.2, 'as-fed'),
  ('68d96a97-c466-4c56-933a-9f61e6dc4277', 'ash', 7.9, 'as-fed'),
  ('68d96a97-c466-4c56-933a-9f61e6dc4277', 'moisture', 9, 'as-fed'),
  ('68d96a97-c466-4c56-933a-9f61e6dc4277', 'calcium', 0.9, 'as-fed'),
  ('68d96a97-c466-4c56-933a-9f61e6dc4277', 'phosphorus', 0.8, 'as-fed'),
  ('68d96a97-c466-4c56-933a-9f61e6dc4277', 'omega3', 0.25, 'as-fed'),
  ('68d96a97-c466-4c56-933a-9f61e6dc4277', 'omega6', 1.2, 'as-fed'),
  ('68d96a97-c466-4c56-933a-9f61e6dc4277', 'kcal', 313.6, 'as-fed');

-- N&D — Pumpkin natvoeding Wild Zwijn (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-pumpkin-natvoeding-voor-de-hond-wild-zwijn-285-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '860a4574-3171-4385-8b46-52c18170569b';
delete from public.recipe_nutrition where recipe_version_id = '860a4574-3171-4385-8b46-52c18170569b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('860a4574-3171-4385-8b46-52c18170569b', 'protein', 12, 'as-fed'),
  ('860a4574-3171-4385-8b46-52c18170569b', 'fat', 5, 'as-fed'),
  ('860a4574-3171-4385-8b46-52c18170569b', 'fiber', 1, 'as-fed'),
  ('860a4574-3171-4385-8b46-52c18170569b', 'ash', 1.8, 'as-fed'),
  ('860a4574-3171-4385-8b46-52c18170569b', 'moisture', 75, 'as-fed'),
  ('860a4574-3171-4385-8b46-52c18170569b', 'kcal', 107.9, 'as-fed');

-- N&D — Spirulina Lam small breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-spirulina-hondenvoeding-lam-small-breed-2-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '715b0e84-2973-4243-9747-73a87b26e8be';
delete from public.recipe_nutrition where recipe_version_id = '715b0e84-2973-4243-9747-73a87b26e8be';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('715b0e84-2973-4243-9747-73a87b26e8be', 'protein', 28, 'as-fed'),
  ('715b0e84-2973-4243-9747-73a87b26e8be', 'fat', 18, 'as-fed'),
  ('715b0e84-2973-4243-9747-73a87b26e8be', 'fiber', 2.9, 'as-fed'),
  ('715b0e84-2973-4243-9747-73a87b26e8be', 'ash', 8.6, 'as-fed'),
  ('715b0e84-2973-4243-9747-73a87b26e8be', 'moisture', 9, 'as-fed'),
  ('715b0e84-2973-4243-9747-73a87b26e8be', 'calcium', 1.1, 'as-fed'),
  ('715b0e84-2973-4243-9747-73a87b26e8be', 'phosphorus', 0.8, 'as-fed'),
  ('715b0e84-2973-4243-9747-73a87b26e8be', 'omega3', 0.9, 'as-fed'),
  ('715b0e84-2973-4243-9747-73a87b26e8be', 'omega6', 3.3, 'as-fed'),
  ('715b0e84-2973-4243-9747-73a87b26e8be', 'kcal', 392.6, 'as-fed');

-- N&D — Quinoa Skin & Coat small breed Haring (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-skin-coat-small-breed-haring-25-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '95bf5fad-3188-41ee-8ff7-e193c0a94434';
delete from public.recipe_nutrition where recipe_version_id = '95bf5fad-3188-41ee-8ff7-e193c0a94434';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('95bf5fad-3188-41ee-8ff7-e193c0a94434', 'protein', 23, 'as-fed'),
  ('95bf5fad-3188-41ee-8ff7-e193c0a94434', 'fat', 12, 'as-fed'),
  ('95bf5fad-3188-41ee-8ff7-e193c0a94434', 'fiber', 2.8, 'as-fed'),
  ('95bf5fad-3188-41ee-8ff7-e193c0a94434', 'ash', 7.9, 'as-fed'),
  ('95bf5fad-3188-41ee-8ff7-e193c0a94434', 'moisture', 9, 'as-fed'),
  ('95bf5fad-3188-41ee-8ff7-e193c0a94434', 'calcium', 1, 'as-fed'),
  ('95bf5fad-3188-41ee-8ff7-e193c0a94434', 'phosphorus', 0.8, 'as-fed'),
  ('95bf5fad-3188-41ee-8ff7-e193c0a94434', 'omega3', 1.8, 'as-fed'),
  ('95bf5fad-3188-41ee-8ff7-e193c0a94434', 'omega6', 1.5, 'as-fed'),
  ('95bf5fad-3188-41ee-8ff7-e193c0a94434', 'kcal', 366.5, 'as-fed');

-- N&D — Prime puppy natvoeding Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-prime-puppy-natvoeding-kip-140-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'adeadf7c-3a75-4769-9f9c-195d0d0912df';
delete from public.recipe_nutrition where recipe_version_id = 'adeadf7c-3a75-4769-9f9c-195d0d0912df';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('adeadf7c-3a75-4769-9f9c-195d0d0912df', 'protein', 13, 'as-fed'),
  ('adeadf7c-3a75-4769-9f9c-195d0d0912df', 'fat', 4, 'as-fed'),
  ('adeadf7c-3a75-4769-9f9c-195d0d0912df', 'fiber', 0.6, 'as-fed'),
  ('adeadf7c-3a75-4769-9f9c-195d0d0912df', 'ash', 2.7, 'as-fed'),
  ('adeadf7c-3a75-4769-9f9c-195d0d0912df', 'moisture', 74, 'as-fed'),
  ('adeadf7c-3a75-4769-9f9c-195d0d0912df', 'kcal', 107.4, 'as-fed');

-- N&D — Quinoa natvoeding Skin & Coat Hert (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-quinoa-natvoeding-voor-de-hond-skin-coat-hert-285-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '572d9456-c42a-4286-8af3-097fdf45a134';
delete from public.recipe_nutrition where recipe_version_id = '572d9456-c42a-4286-8af3-097fdf45a134';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('572d9456-c42a-4286-8af3-097fdf45a134', 'protein', 11.5, 'as-fed'),
  ('572d9456-c42a-4286-8af3-097fdf45a134', 'fat', 5.5, 'as-fed'),
  ('572d9456-c42a-4286-8af3-097fdf45a134', 'fiber', 1, 'as-fed'),
  ('572d9456-c42a-4286-8af3-097fdf45a134', 'ash', 3.3, 'as-fed'),
  ('572d9456-c42a-4286-8af3-097fdf45a134', 'moisture', 75, 'as-fed'),
  ('572d9456-c42a-4286-8af3-097fdf45a134', 'kcal', 104.7, 'as-fed');

-- N&D — Quinoa natvoeding Weight Management (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-quinoa-natvoeding-voor-de-hond-weight-management-285-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'e3487191-8a11-4da9-a8e2-6bfccc87c6ba';
delete from public.recipe_nutrition where recipe_version_id = 'e3487191-8a11-4da9-a8e2-6bfccc87c6ba';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e3487191-8a11-4da9-a8e2-6bfccc87c6ba', 'protein', 11.5, 'as-fed'),
  ('e3487191-8a11-4da9-a8e2-6bfccc87c6ba', 'fat', 3, 'as-fed'),
  ('e3487191-8a11-4da9-a8e2-6bfccc87c6ba', 'fiber', 2.2, 'as-fed'),
  ('e3487191-8a11-4da9-a8e2-6bfccc87c6ba', 'ash', 3.3, 'as-fed'),
  ('e3487191-8a11-4da9-a8e2-6bfccc87c6ba', 'moisture', 75, 'as-fed'),
  ('e3487191-8a11-4da9-a8e2-6bfccc87c6ba', 'kcal', 84.9, 'as-fed');

-- N&D — Pumpkin natvoeding Hert (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-pumpkin-natvoeding-voor-de-hond-hert-285-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '1da9b0e2-2c2c-4ad1-b436-79bc99522a85';
delete from public.recipe_nutrition where recipe_version_id = '1da9b0e2-2c2c-4ad1-b436-79bc99522a85';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1da9b0e2-2c2c-4ad1-b436-79bc99522a85', 'protein', 12, 'as-fed'),
  ('1da9b0e2-2c2c-4ad1-b436-79bc99522a85', 'fat', 4.5, 'as-fed'),
  ('1da9b0e2-2c2c-4ad1-b436-79bc99522a85', 'fiber', 1, 'as-fed'),
  ('1da9b0e2-2c2c-4ad1-b436-79bc99522a85', 'ash', 2.7, 'as-fed'),
  ('1da9b0e2-2c2c-4ad1-b436-79bc99522a85', 'moisture', 75, 'as-fed'),
  ('1da9b0e2-2c2c-4ad1-b436-79bc99522a85', 'kcal', 108.9, 'as-fed');

-- N&D — Pumpkin natvoeding Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-pumpkin-natvoeding-voor-de-hond-kip-285-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '0a83fbc4-fb74-42c8-90ed-ad4de3739a2b';
delete from public.recipe_nutrition where recipe_version_id = '0a83fbc4-fb74-42c8-90ed-ad4de3739a2b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0a83fbc4-fb74-42c8-90ed-ad4de3739a2b', 'protein', 12, 'as-fed'),
  ('0a83fbc4-fb74-42c8-90ed-ad4de3739a2b', 'fat', 4.5, 'as-fed'),
  ('0a83fbc4-fb74-42c8-90ed-ad4de3739a2b', 'fiber', 1, 'as-fed'),
  ('0a83fbc4-fb74-42c8-90ed-ad4de3739a2b', 'ash', 1.8, 'as-fed'),
  ('0a83fbc4-fb74-42c8-90ed-ad4de3739a2b', 'moisture', 75, 'as-fed'),
  ('0a83fbc4-fb74-42c8-90ed-ad4de3739a2b', 'kcal', 105.6, 'as-fed');

-- N&D — Quinoa natvoeding Skin & Coat Eend (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-quinoa-natvoeding-voor-de-hond-skin-coat-eend-285-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '4c02ab61-45ee-4f84-ab4c-075479986cfa';
delete from public.recipe_nutrition where recipe_version_id = '4c02ab61-45ee-4f84-ab4c-075479986cfa';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4c02ab61-45ee-4f84-ab4c-075479986cfa', 'protein', 11.5, 'as-fed'),
  ('4c02ab61-45ee-4f84-ab4c-075479986cfa', 'fat', 5.5, 'as-fed'),
  ('4c02ab61-45ee-4f84-ab4c-075479986cfa', 'fiber', 0.9, 'as-fed'),
  ('4c02ab61-45ee-4f84-ab4c-075479986cfa', 'ash', 3.4, 'as-fed'),
  ('4c02ab61-45ee-4f84-ab4c-075479986cfa', 'moisture', 75, 'as-fed'),
  ('4c02ab61-45ee-4f84-ab4c-075479986cfa', 'kcal', 105.2, 'as-fed');

-- N&D — Prime natvoeding voor pups Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-prime-natvoeding-voor-pups-kip-285-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '5c0e0ea9-29b9-4e1c-96e4-eae5497d7d85';
delete from public.recipe_nutrition where recipe_version_id = '5c0e0ea9-29b9-4e1c-96e4-eae5497d7d85';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5c0e0ea9-29b9-4e1c-96e4-eae5497d7d85', 'protein', 13, 'as-fed'),
  ('5c0e0ea9-29b9-4e1c-96e4-eae5497d7d85', 'fat', 4, 'as-fed'),
  ('5c0e0ea9-29b9-4e1c-96e4-eae5497d7d85', 'fiber', 0.6, 'as-fed'),
  ('5c0e0ea9-29b9-4e1c-96e4-eae5497d7d85', 'ash', 2.7, 'as-fed'),
  ('5c0e0ea9-29b9-4e1c-96e4-eae5497d7d85', 'moisture', 74, 'as-fed'),
  ('5c0e0ea9-29b9-4e1c-96e4-eae5497d7d85', 'kcal', 107.4, 'as-fed');

-- N&D — Pumpkin natvoeding voor pups Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-pumpkin-natvoeding-voor-pups-kip-285-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'da62d1e4-f491-4fba-8a70-144af51fc19c';
delete from public.recipe_nutrition where recipe_version_id = 'da62d1e4-f491-4fba-8a70-144af51fc19c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('da62d1e4-f491-4fba-8a70-144af51fc19c', 'protein', 13, 'as-fed'),
  ('da62d1e4-f491-4fba-8a70-144af51fc19c', 'fat', 4, 'as-fed'),
  ('da62d1e4-f491-4fba-8a70-144af51fc19c', 'fiber', 0.7, 'as-fed'),
  ('da62d1e4-f491-4fba-8a70-144af51fc19c', 'ash', 2.8, 'as-fed'),
  ('da62d1e4-f491-4fba-8a70-144af51fc19c', 'moisture', 74, 'as-fed'),
  ('da62d1e4-f491-4fba-8a70-144af51fc19c', 'kcal', 106.3, 'as-fed');

-- N&D — Pumpkin puppyvoeding Lam medium/maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-pumpkin-puppyvoeding-lam-mediummaxi-12-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '96e2f9e1-3021-43c4-ad3a-7e07aee94c51';
delete from public.recipe_nutrition where recipe_version_id = '96e2f9e1-3021-43c4-ad3a-7e07aee94c51';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('96e2f9e1-3021-43c4-ad3a-7e07aee94c51', 'protein', 35, 'as-fed'),
  ('96e2f9e1-3021-43c4-ad3a-7e07aee94c51', 'fat', 20, 'as-fed'),
  ('96e2f9e1-3021-43c4-ad3a-7e07aee94c51', 'fiber', 1.9, 'as-fed'),
  ('96e2f9e1-3021-43c4-ad3a-7e07aee94c51', 'ash', 8.1, 'as-fed'),
  ('96e2f9e1-3021-43c4-ad3a-7e07aee94c51', 'moisture', 9, 'as-fed'),
  ('96e2f9e1-3021-43c4-ad3a-7e07aee94c51', 'calcium', 1.1, 'as-fed'),
  ('96e2f9e1-3021-43c4-ad3a-7e07aee94c51', 'phosphorus', 0.91, 'as-fed'),
  ('96e2f9e1-3021-43c4-ad3a-7e07aee94c51', 'omega3', 0.9, 'as-fed'),
  ('96e2f9e1-3021-43c4-ad3a-7e07aee94c51', 'omega6', 3.4, 'as-fed'),
  ('96e2f9e1-3021-43c4-ad3a-7e07aee94c51', 'kcal', 413.9, 'as-fed');

-- N&D — Tropical puppyvoeding Lam medium/maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-tropical-puppyvoeding-lam-mediummaxi-10-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '6aa4c5fe-0ad1-4b8c-b7ec-a4813e8a5219';
delete from public.recipe_nutrition where recipe_version_id = '6aa4c5fe-0ad1-4b8c-b7ec-a4813e8a5219';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6aa4c5fe-0ad1-4b8c-b7ec-a4813e8a5219', 'protein', 30, 'as-fed'),
  ('6aa4c5fe-0ad1-4b8c-b7ec-a4813e8a5219', 'fat', 20, 'as-fed'),
  ('6aa4c5fe-0ad1-4b8c-b7ec-a4813e8a5219', 'fiber', 2.7, 'as-fed'),
  ('6aa4c5fe-0ad1-4b8c-b7ec-a4813e8a5219', 'ash', 8, 'as-fed'),
  ('6aa4c5fe-0ad1-4b8c-b7ec-a4813e8a5219', 'moisture', 9, 'as-fed'),
  ('6aa4c5fe-0ad1-4b8c-b7ec-a4813e8a5219', 'calcium', 1.15, 'as-fed'),
  ('6aa4c5fe-0ad1-4b8c-b7ec-a4813e8a5219', 'phosphorus', 0.95, 'as-fed'),
  ('6aa4c5fe-0ad1-4b8c-b7ec-a4813e8a5219', 'omega3', 0.6, 'as-fed'),
  ('6aa4c5fe-0ad1-4b8c-b7ec-a4813e8a5219', 'omega6', 3.2, 'as-fed'),
  ('6aa4c5fe-0ad1-4b8c-b7ec-a4813e8a5219', 'kcal', 406.2, 'as-fed');

-- N&D — Pumpkin natvoeding Kwartel (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-pumpkin-natvoeding-voor-de-hond-kwartel-285-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'e76b7f36-bb80-45ae-adeb-90157f8b2f54';
delete from public.recipe_nutrition where recipe_version_id = 'e76b7f36-bb80-45ae-adeb-90157f8b2f54';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e76b7f36-bb80-45ae-adeb-90157f8b2f54', 'protein', 12, 'as-fed'),
  ('e76b7f36-bb80-45ae-adeb-90157f8b2f54', 'fat', 4.5, 'as-fed'),
  ('e76b7f36-bb80-45ae-adeb-90157f8b2f54', 'fiber', 1, 'as-fed'),
  ('e76b7f36-bb80-45ae-adeb-90157f8b2f54', 'ash', 2.4, 'as-fed'),
  ('e76b7f36-bb80-45ae-adeb-90157f8b2f54', 'moisture', 75, 'as-fed'),
  ('e76b7f36-bb80-45ae-adeb-90157f8b2f54', 'kcal', 103.5, 'as-fed');

-- N&D — Ocean Kabeljauw met Spelt medium/maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-ocean-hondenvoeding-kabeljauw-met-spelt-mediummaxi-12-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '5a059437-c17e-41c7-8431-a75b2911caab';
delete from public.recipe_nutrition where recipe_version_id = '5a059437-c17e-41c7-8431-a75b2911caab';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5a059437-c17e-41c7-8431-a75b2911caab', 'protein', 30, 'as-fed'),
  ('5a059437-c17e-41c7-8431-a75b2911caab', 'fat', 18, 'as-fed'),
  ('5a059437-c17e-41c7-8431-a75b2911caab', 'fiber', 2.9, 'as-fed'),
  ('5a059437-c17e-41c7-8431-a75b2911caab', 'ash', 6.9, 'as-fed'),
  ('5a059437-c17e-41c7-8431-a75b2911caab', 'moisture', 9, 'as-fed'),
  ('5a059437-c17e-41c7-8431-a75b2911caab', 'calcium', 0.8, 'as-fed'),
  ('5a059437-c17e-41c7-8431-a75b2911caab', 'phosphorus', 0.7, 'as-fed'),
  ('5a059437-c17e-41c7-8431-a75b2911caab', 'omega3', 2.3, 'as-fed'),
  ('5a059437-c17e-41c7-8431-a75b2911caab', 'omega6', 1.6, 'as-fed'),
  ('5a059437-c17e-41c7-8431-a75b2911caab', 'kcal', 399.4, 'as-fed');

-- N&D — Quinoa natvoeding Digestion Lam (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-quinoa-natvoeding-voor-de-hond-digestion-lam-285-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'cd444e23-b00f-4976-ad92-6cd127dc1ab0';
delete from public.recipe_nutrition where recipe_version_id = 'cd444e23-b00f-4976-ad92-6cd127dc1ab0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('cd444e23-b00f-4976-ad92-6cd127dc1ab0', 'protein', 10.4, 'as-fed'),
  ('cd444e23-b00f-4976-ad92-6cd127dc1ab0', 'fat', 3.8, 'as-fed'),
  ('cd444e23-b00f-4976-ad92-6cd127dc1ab0', 'fiber', 0.9, 'as-fed'),
  ('cd444e23-b00f-4976-ad92-6cd127dc1ab0', 'ash', 3.3, 'as-fed'),
  ('cd444e23-b00f-4976-ad92-6cd127dc1ab0', 'moisture', 75, 'as-fed'),
  ('cd444e23-b00f-4976-ad92-6cd127dc1ab0', 'kcal', 97.4, 'as-fed');

-- N&D — Ancestral Grain Puppyvoeding Kip medium/maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-ancestral-grain-puppyvoeding-kip-mediummaxi-12-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'fe6409b5-34bd-47e6-9062-e40952f5f41a';
delete from public.recipe_nutrition where recipe_version_id = 'fe6409b5-34bd-47e6-9062-e40952f5f41a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fe6409b5-34bd-47e6-9062-e40952f5f41a', 'protein', 35, 'as-fed'),
  ('fe6409b5-34bd-47e6-9062-e40952f5f41a', 'fat', 20, 'as-fed'),
  ('fe6409b5-34bd-47e6-9062-e40952f5f41a', 'fiber', 1.7, 'as-fed'),
  ('fe6409b5-34bd-47e6-9062-e40952f5f41a', 'ash', 7.3, 'as-fed'),
  ('fe6409b5-34bd-47e6-9062-e40952f5f41a', 'moisture', 9, 'as-fed'),
  ('fe6409b5-34bd-47e6-9062-e40952f5f41a', 'calcium', 1.1, 'as-fed'),
  ('fe6409b5-34bd-47e6-9062-e40952f5f41a', 'phosphorus', 0.91, 'as-fed'),
  ('fe6409b5-34bd-47e6-9062-e40952f5f41a', 'omega3', 0.9, 'as-fed'),
  ('fe6409b5-34bd-47e6-9062-e40952f5f41a', 'omega6', 3.4, 'as-fed'),
  ('fe6409b5-34bd-47e6-9062-e40952f5f41a', 'kcal', 418.4, 'as-fed');

-- N&D — Pumpkin Starter natvoeding voor pups Lam (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-pumpkin-starter-natvoeding-voor-pups-lam-285-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'a8aae011-65fe-408b-87fd-a5c88cf86fdd';
delete from public.recipe_nutrition where recipe_version_id = 'a8aae011-65fe-408b-87fd-a5c88cf86fdd';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a8aae011-65fe-408b-87fd-a5c88cf86fdd', 'protein', 6.4, 'as-fed'),
  ('a8aae011-65fe-408b-87fd-a5c88cf86fdd', 'fat', 4, 'as-fed'),
  ('a8aae011-65fe-408b-87fd-a5c88cf86fdd', 'fiber', 0.4, 'as-fed'),
  ('a8aae011-65fe-408b-87fd-a5c88cf86fdd', 'ash', 2.4, 'as-fed'),
  ('a8aae011-65fe-408b-87fd-a5c88cf86fdd', 'moisture', 85, 'as-fed'),
  ('a8aae011-65fe-408b-87fd-a5c88cf86fdd', 'kcal', 66, 'as-fed');

-- N&D — Prime puppyvoeding Kip small breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-prime-puppyvoeding-kip-small-breed-800-gr',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'a92d7cac-71ae-47fa-ac65-ac64d2593180';
delete from public.recipe_nutrition where recipe_version_id = 'a92d7cac-71ae-47fa-ac65-ac64d2593180';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a92d7cac-71ae-47fa-ac65-ac64d2593180', 'protein', 36, 'as-fed'),
  ('a92d7cac-71ae-47fa-ac65-ac64d2593180', 'fat', 22, 'as-fed'),
  ('a92d7cac-71ae-47fa-ac65-ac64d2593180', 'fiber', 2.3, 'as-fed'),
  ('a92d7cac-71ae-47fa-ac65-ac64d2593180', 'ash', 8.6, 'as-fed'),
  ('a92d7cac-71ae-47fa-ac65-ac64d2593180', 'moisture', 9, 'as-fed'),
  ('a92d7cac-71ae-47fa-ac65-ac64d2593180', 'calcium', 1.1, 'as-fed'),
  ('a92d7cac-71ae-47fa-ac65-ac64d2593180', 'phosphorus', 0.91, 'as-fed'),
  ('a92d7cac-71ae-47fa-ac65-ac64d2593180', 'omega3', 1.2, 'as-fed'),
  ('a92d7cac-71ae-47fa-ac65-ac64d2593180', 'omega6', 3.4, 'as-fed'),
  ('a92d7cac-71ae-47fa-ac65-ac64d2593180', 'kcal', 418.6, 'as-fed');

-- N&D — Prime Kip medium/maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-prime-hondenvoeding-kip-mediummaxi-25-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '4720d009-fdc5-4c86-833a-a3be6b816306';
delete from public.recipe_nutrition where recipe_version_id = '4720d009-fdc5-4c86-833a-a3be6b816306';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4720d009-fdc5-4c86-833a-a3be6b816306', 'protein', 34, 'as-fed'),
  ('4720d009-fdc5-4c86-833a-a3be6b816306', 'fat', 18, 'as-fed'),
  ('4720d009-fdc5-4c86-833a-a3be6b816306', 'fiber', 2.6, 'as-fed'),
  ('4720d009-fdc5-4c86-833a-a3be6b816306', 'ash', 7.8, 'as-fed'),
  ('4720d009-fdc5-4c86-833a-a3be6b816306', 'moisture', 9, 'as-fed'),
  ('4720d009-fdc5-4c86-833a-a3be6b816306', 'calcium', 1, 'as-fed'),
  ('4720d009-fdc5-4c86-833a-a3be6b816306', 'phosphorus', 0.8, 'as-fed'),
  ('4720d009-fdc5-4c86-833a-a3be6b816306', 'omega3', 0.9, 'as-fed'),
  ('4720d009-fdc5-4c86-833a-a3be6b816306', 'omega6', 3.3, 'as-fed'),
  ('4720d009-fdc5-4c86-833a-a3be6b816306', 'kcal', 399.9, 'as-fed');

-- N&D — Prime puppyvoeding Kip medium/maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-prime-puppyvoeding-kip-mediummaxi-12-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'cc302ac5-3fb0-4b6e-ac98-13555898cd81';
delete from public.recipe_nutrition where recipe_version_id = 'cc302ac5-3fb0-4b6e-ac98-13555898cd81';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('cc302ac5-3fb0-4b6e-ac98-13555898cd81', 'protein', 36, 'as-fed'),
  ('cc302ac5-3fb0-4b6e-ac98-13555898cd81', 'fat', 22, 'as-fed'),
  ('cc302ac5-3fb0-4b6e-ac98-13555898cd81', 'fiber', 2.3, 'as-fed'),
  ('cc302ac5-3fb0-4b6e-ac98-13555898cd81', 'ash', 8.6, 'as-fed'),
  ('cc302ac5-3fb0-4b6e-ac98-13555898cd81', 'moisture', 9, 'as-fed'),
  ('cc302ac5-3fb0-4b6e-ac98-13555898cd81', 'calcium', 1.1, 'as-fed'),
  ('cc302ac5-3fb0-4b6e-ac98-13555898cd81', 'phosphorus', 0.91, 'as-fed'),
  ('cc302ac5-3fb0-4b6e-ac98-13555898cd81', 'omega3', 1.2, 'as-fed'),
  ('cc302ac5-3fb0-4b6e-ac98-13555898cd81', 'omega6', 3.4, 'as-fed'),
  ('cc302ac5-3fb0-4b6e-ac98-13555898cd81', 'kcal', 418.6, 'as-fed');

-- N&D — Pumpkin Eend medium/maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-pumpkin-hondenvoeding-eend-mediummaxi-12-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'a23a5b89-461f-42cc-833a-3a95d92a1209';
delete from public.recipe_nutrition where recipe_version_id = 'a23a5b89-461f-42cc-833a-3a95d92a1209';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a23a5b89-461f-42cc-833a-3a95d92a1209', 'protein', 30, 'as-fed'),
  ('a23a5b89-461f-42cc-833a-3a95d92a1209', 'fat', 18, 'as-fed'),
  ('a23a5b89-461f-42cc-833a-3a95d92a1209', 'fiber', 2.9, 'as-fed'),
  ('a23a5b89-461f-42cc-833a-3a95d92a1209', 'ash', 7.3, 'as-fed'),
  ('a23a5b89-461f-42cc-833a-3a95d92a1209', 'moisture', 9, 'as-fed'),
  ('a23a5b89-461f-42cc-833a-3a95d92a1209', 'calcium', 0.9, 'as-fed'),
  ('a23a5b89-461f-42cc-833a-3a95d92a1209', 'phosphorus', 0.8, 'as-fed'),
  ('a23a5b89-461f-42cc-833a-3a95d92a1209', 'omega3', 0.9, 'as-fed'),
  ('a23a5b89-461f-42cc-833a-3a95d92a1209', 'omega6', 3.3, 'as-fed'),
  ('a23a5b89-461f-42cc-833a-3a95d92a1209', 'kcal', 398, 'as-fed');

-- N&D — Pumpkin Eend small breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-pumpkin-hondenvoeding-eend-small-breed-2-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '9108641d-1548-4dd4-b2f2-d15dd6bde962';
delete from public.recipe_nutrition where recipe_version_id = '9108641d-1548-4dd4-b2f2-d15dd6bde962';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9108641d-1548-4dd4-b2f2-d15dd6bde962', 'protein', 30, 'as-fed'),
  ('9108641d-1548-4dd4-b2f2-d15dd6bde962', 'fat', 18, 'as-fed'),
  ('9108641d-1548-4dd4-b2f2-d15dd6bde962', 'fiber', 2.9, 'as-fed'),
  ('9108641d-1548-4dd4-b2f2-d15dd6bde962', 'ash', 7.3, 'as-fed'),
  ('9108641d-1548-4dd4-b2f2-d15dd6bde962', 'moisture', 9, 'as-fed'),
  ('9108641d-1548-4dd4-b2f2-d15dd6bde962', 'calcium', 0.9, 'as-fed'),
  ('9108641d-1548-4dd4-b2f2-d15dd6bde962', 'phosphorus', 0.8, 'as-fed'),
  ('9108641d-1548-4dd4-b2f2-d15dd6bde962', 'omega3', 0.9, 'as-fed'),
  ('9108641d-1548-4dd4-b2f2-d15dd6bde962', 'omega6', 3.3, 'as-fed'),
  ('9108641d-1548-4dd4-b2f2-d15dd6bde962', 'kcal', 398, 'as-fed');

-- N&D — Pumpkin Kip medium/maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-pumpkin-hondenvoeding-kip-mediummaxi-12-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '33a5fee5-4845-4d20-ac7b-5e9833dc11ef';
delete from public.recipe_nutrition where recipe_version_id = '33a5fee5-4845-4d20-ac7b-5e9833dc11ef';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('33a5fee5-4845-4d20-ac7b-5e9833dc11ef', 'protein', 30, 'as-fed'),
  ('33a5fee5-4845-4d20-ac7b-5e9833dc11ef', 'fat', 18, 'as-fed'),
  ('33a5fee5-4845-4d20-ac7b-5e9833dc11ef', 'fiber', 2.9, 'as-fed'),
  ('33a5fee5-4845-4d20-ac7b-5e9833dc11ef', 'ash', 7, 'as-fed'),
  ('33a5fee5-4845-4d20-ac7b-5e9833dc11ef', 'moisture', 9, 'as-fed'),
  ('33a5fee5-4845-4d20-ac7b-5e9833dc11ef', 'calcium', 0.8, 'as-fed'),
  ('33a5fee5-4845-4d20-ac7b-5e9833dc11ef', 'phosphorus', 0.8, 'as-fed'),
  ('33a5fee5-4845-4d20-ac7b-5e9833dc11ef', 'omega3', 0.9, 'as-fed'),
  ('33a5fee5-4845-4d20-ac7b-5e9833dc11ef', 'omega6', 3.3, 'as-fed'),
  ('33a5fee5-4845-4d20-ac7b-5e9833dc11ef', 'kcal', 339, 'as-fed');

-- N&D — Prime Kip small breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-prime-hondenvoeding-kip-small-breed-800-gr',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'ab43c353-50dc-401d-9f63-7c23523b5940';
delete from public.recipe_nutrition where recipe_version_id = 'ab43c353-50dc-401d-9f63-7c23523b5940';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ab43c353-50dc-401d-9f63-7c23523b5940', 'protein', 34, 'as-fed'),
  ('ab43c353-50dc-401d-9f63-7c23523b5940', 'fat', 18, 'as-fed'),
  ('ab43c353-50dc-401d-9f63-7c23523b5940', 'fiber', 2.6, 'as-fed'),
  ('ab43c353-50dc-401d-9f63-7c23523b5940', 'ash', 7.8, 'as-fed'),
  ('ab43c353-50dc-401d-9f63-7c23523b5940', 'moisture', 9, 'as-fed'),
  ('ab43c353-50dc-401d-9f63-7c23523b5940', 'calcium', 1, 'as-fed'),
  ('ab43c353-50dc-401d-9f63-7c23523b5940', 'phosphorus', 0.8, 'as-fed'),
  ('ab43c353-50dc-401d-9f63-7c23523b5940', 'omega3', 0.9, 'as-fed'),
  ('ab43c353-50dc-401d-9f63-7c23523b5940', 'omega6', 3.3, 'as-fed'),
  ('ab43c353-50dc-401d-9f63-7c23523b5940', 'kcal', 399.9, 'as-fed');

-- N&D — Pumpkin puppyvoeding Kip medium/maxi (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-pumpkin-puppyvoeding-kip-mediummaxi-25-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '66fad7b9-9a4f-45c0-9291-c31613d96425';
delete from public.recipe_nutrition where recipe_version_id = '66fad7b9-9a4f-45c0-9291-c31613d96425';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('66fad7b9-9a4f-45c0-9291-c31613d96425', 'protein', 35, 'as-fed'),
  ('66fad7b9-9a4f-45c0-9291-c31613d96425', 'fat', 20, 'as-fed'),
  ('66fad7b9-9a4f-45c0-9291-c31613d96425', 'fiber', 1.9, 'as-fed'),
  ('66fad7b9-9a4f-45c0-9291-c31613d96425', 'ash', 7.8, 'as-fed'),
  ('66fad7b9-9a4f-45c0-9291-c31613d96425', 'moisture', 9, 'as-fed'),
  ('66fad7b9-9a4f-45c0-9291-c31613d96425', 'calcium', 1.1, 'as-fed'),
  ('66fad7b9-9a4f-45c0-9291-c31613d96425', 'phosphorus', 0.91, 'as-fed'),
  ('66fad7b9-9a4f-45c0-9291-c31613d96425', 'omega3', 0.9, 'as-fed'),
  ('66fad7b9-9a4f-45c0-9291-c31613d96425', 'omega6', 3.4, 'as-fed'),
  ('66fad7b9-9a4f-45c0-9291-c31613d96425', 'kcal', 415, 'as-fed');

-- N&D — Pumpkin Kip small breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-pumpkin-hondenvoeding-kip-small-breed-25-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '96ce907d-8a81-426c-b2c1-84efb9ab7a57';
delete from public.recipe_nutrition where recipe_version_id = '96ce907d-8a81-426c-b2c1-84efb9ab7a57';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('96ce907d-8a81-426c-b2c1-84efb9ab7a57', 'protein', 30, 'as-fed'),
  ('96ce907d-8a81-426c-b2c1-84efb9ab7a57', 'fat', 18, 'as-fed'),
  ('96ce907d-8a81-426c-b2c1-84efb9ab7a57', 'fiber', 2.9, 'as-fed'),
  ('96ce907d-8a81-426c-b2c1-84efb9ab7a57', 'ash', 7, 'as-fed'),
  ('96ce907d-8a81-426c-b2c1-84efb9ab7a57', 'moisture', 9, 'as-fed'),
  ('96ce907d-8a81-426c-b2c1-84efb9ab7a57', 'calcium', 0.8, 'as-fed'),
  ('96ce907d-8a81-426c-b2c1-84efb9ab7a57', 'phosphorus', 0.8, 'as-fed'),
  ('96ce907d-8a81-426c-b2c1-84efb9ab7a57', 'omega3', 0.9, 'as-fed'),
  ('96ce907d-8a81-426c-b2c1-84efb9ab7a57', 'omega6', 3.3, 'as-fed'),
  ('96ce907d-8a81-426c-b2c1-84efb9ab7a57', 'kcal', 339, 'as-fed');

-- N&D — Pumpkin puppyvoeding Kip small breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/nd-pumpkin-puppyvoeding-kip-small-breed-7-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '14f760a0-1489-4aed-9f1b-52d4f22278e9';
delete from public.recipe_nutrition where recipe_version_id = '14f760a0-1489-4aed-9f1b-52d4f22278e9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('14f760a0-1489-4aed-9f1b-52d4f22278e9', 'protein', 35, 'as-fed'),
  ('14f760a0-1489-4aed-9f1b-52d4f22278e9', 'fat', 20, 'as-fed'),
  ('14f760a0-1489-4aed-9f1b-52d4f22278e9', 'fiber', 1.9, 'as-fed'),
  ('14f760a0-1489-4aed-9f1b-52d4f22278e9', 'ash', 7.8, 'as-fed'),
  ('14f760a0-1489-4aed-9f1b-52d4f22278e9', 'moisture', 9, 'as-fed'),
  ('14f760a0-1489-4aed-9f1b-52d4f22278e9', 'calcium', 1.1, 'as-fed'),
  ('14f760a0-1489-4aed-9f1b-52d4f22278e9', 'phosphorus', 0.91, 'as-fed'),
  ('14f760a0-1489-4aed-9f1b-52d4f22278e9', 'omega3', 0.9, 'as-fed'),
  ('14f760a0-1489-4aed-9f1b-52d4f22278e9', 'omega6', 3.4, 'as-fed'),
  ('14f760a0-1489-4aed-9f1b-52d4f22278e9', 'kcal', 415, 'as-fed');

-- Pawfect — Freeze Dried Vis (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/pawfect-freeze-dried-hondenvoeding-vis-250-gr',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'f8fb776b-e722-4ef4-a8be-69e6727747e5';
delete from public.recipe_nutrition where recipe_version_id = 'f8fb776b-e722-4ef4-a8be-69e6727747e5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f8fb776b-e722-4ef4-a8be-69e6727747e5', 'protein', 48, 'as-fed'),
  ('f8fb776b-e722-4ef4-a8be-69e6727747e5', 'fat', 22, 'as-fed'),
  ('f8fb776b-e722-4ef4-a8be-69e6727747e5', 'fiber', 5, 'as-fed'),
  ('f8fb776b-e722-4ef4-a8be-69e6727747e5', 'ash', 5, 'as-fed');

-- Pawfect — Freeze Dried Kip (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/pawfect-freeze-dried-hondenvoeding-kip-250-gr',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '4c51e4bd-62af-4067-9953-1206d358409b';
delete from public.recipe_nutrition where recipe_version_id = '4c51e4bd-62af-4067-9953-1206d358409b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4c51e4bd-62af-4067-9953-1206d358409b', 'protein', 48, 'as-fed'),
  ('4c51e4bd-62af-4067-9953-1206d358409b', 'fat', 22, 'as-fed'),
  ('4c51e4bd-62af-4067-9953-1206d358409b', 'fiber', 5, 'as-fed'),
  ('4c51e4bd-62af-4067-9953-1206d358409b', 'ash', 5, 'as-fed');

-- Pawfect — Freeze Dried Geit (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/pawfect-freeze-dried-hondenvoeding-geit-250-gr',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'c8ca2df9-1e54-42ce-9b1f-a3e7415b7d9e';
delete from public.recipe_nutrition where recipe_version_id = 'c8ca2df9-1e54-42ce-9b1f-a3e7415b7d9e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c8ca2df9-1e54-42ce-9b1f-a3e7415b7d9e', 'protein', 48, 'as-fed'),
  ('c8ca2df9-1e54-42ce-9b1f-a3e7415b7d9e', 'fat', 19, 'as-fed'),
  ('c8ca2df9-1e54-42ce-9b1f-a3e7415b7d9e', 'fiber', 5, 'as-fed'),
  ('c8ca2df9-1e54-42ce-9b1f-a3e7415b7d9e', 'ash', 7, 'as-fed'),
  ('c8ca2df9-1e54-42ce-9b1f-a3e7415b7d9e', 'moisture', 7, 'as-fed');

-- Vet Life — Hypoallergenic Vis met Aardappel (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-hypoallergenic-vis-met-aardappel-12-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '387c8a21-163c-4d28-ba6b-519531efb079';
delete from public.recipe_nutrition where recipe_version_id = '387c8a21-163c-4d28-ba6b-519531efb079';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('387c8a21-163c-4d28-ba6b-519531efb079', 'protein', 18, 'as-fed'),
  ('387c8a21-163c-4d28-ba6b-519531efb079', 'fat', 13, 'as-fed'),
  ('387c8a21-163c-4d28-ba6b-519531efb079', 'fiber', 1.7, 'as-fed'),
  ('387c8a21-163c-4d28-ba6b-519531efb079', 'ash', 7.6, 'as-fed'),
  ('387c8a21-163c-4d28-ba6b-519531efb079', 'calcium', 0.7, 'as-fed'),
  ('387c8a21-163c-4d28-ba6b-519531efb079', 'phosphorus', 0.5, 'as-fed'),
  ('387c8a21-163c-4d28-ba6b-519531efb079', 'omega3', 2.2, 'as-fed'),
  ('387c8a21-163c-4d28-ba6b-519531efb079', 'omega6', 0.4, 'as-fed'),
  ('387c8a21-163c-4d28-ba6b-519531efb079', 'kcal', 377, 'as-fed');

-- Vet Life — Struvite Management (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-struvite-management-2-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '1730fdf8-320f-43b5-ae1f-6fc69638fb7d';
delete from public.recipe_nutrition where recipe_version_id = '1730fdf8-320f-43b5-ae1f-6fc69638fb7d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1730fdf8-320f-43b5-ae1f-6fc69638fb7d', 'protein', 19.5, 'as-fed'),
  ('1730fdf8-320f-43b5-ae1f-6fc69638fb7d', 'fat', 19, 'as-fed'),
  ('1730fdf8-320f-43b5-ae1f-6fc69638fb7d', 'fiber', 1.3, 'as-fed'),
  ('1730fdf8-320f-43b5-ae1f-6fc69638fb7d', 'ash', 5.4, 'as-fed'),
  ('1730fdf8-320f-43b5-ae1f-6fc69638fb7d', 'calcium', 0.8, 'as-fed'),
  ('1730fdf8-320f-43b5-ae1f-6fc69638fb7d', 'phosphorus', 0.5, 'as-fed'),
  ('1730fdf8-320f-43b5-ae1f-6fc69638fb7d', 'omega3', 0.35, 'as-fed'),
  ('1730fdf8-320f-43b5-ae1f-6fc69638fb7d', 'omega6', 2.7, 'as-fed'),
  ('1730fdf8-320f-43b5-ae1f-6fc69638fb7d', 'kcal', 399.5, 'as-fed');

-- Vet Life — Struvite (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-struvite-2-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '036d783c-1ec5-4df2-8616-4a4fdba02d87';
delete from public.recipe_nutrition where recipe_version_id = '036d783c-1ec5-4df2-8616-4a4fdba02d87';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('036d783c-1ec5-4df2-8616-4a4fdba02d87', 'protein', 19.5, 'as-fed'),
  ('036d783c-1ec5-4df2-8616-4a4fdba02d87', 'fat', 19, 'as-fed'),
  ('036d783c-1ec5-4df2-8616-4a4fdba02d87', 'fiber', 1.3, 'as-fed'),
  ('036d783c-1ec5-4df2-8616-4a4fdba02d87', 'ash', 5.4, 'as-fed'),
  ('036d783c-1ec5-4df2-8616-4a4fdba02d87', 'calcium', 0.8, 'as-fed'),
  ('036d783c-1ec5-4df2-8616-4a4fdba02d87', 'phosphorus', 0.5, 'as-fed'),
  ('036d783c-1ec5-4df2-8616-4a4fdba02d87', 'omega3', 0.35, 'as-fed'),
  ('036d783c-1ec5-4df2-8616-4a4fdba02d87', 'omega6', 2.7, 'as-fed'),
  ('036d783c-1ec5-4df2-8616-4a4fdba02d87', 'kcal', 395.3, 'as-fed');

-- Vet Life — Oxalate (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-oxalate-2-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'dfcf9528-d469-48bc-b7d4-a5cb510f1e17';
delete from public.recipe_nutrition where recipe_version_id = 'dfcf9528-d469-48bc-b7d4-a5cb510f1e17';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('dfcf9528-d469-48bc-b7d4-a5cb510f1e17', 'protein', 9.5, 'as-fed'),
  ('dfcf9528-d469-48bc-b7d4-a5cb510f1e17', 'fat', 19, 'as-fed'),
  ('dfcf9528-d469-48bc-b7d4-a5cb510f1e17', 'fiber', 1.9, 'as-fed'),
  ('dfcf9528-d469-48bc-b7d4-a5cb510f1e17', 'ash', 3.8, 'as-fed'),
  ('dfcf9528-d469-48bc-b7d4-a5cb510f1e17', 'calcium', 0.3, 'as-fed'),
  ('dfcf9528-d469-48bc-b7d4-a5cb510f1e17', 'phosphorus', 0.2, 'as-fed'),
  ('dfcf9528-d469-48bc-b7d4-a5cb510f1e17', 'omega3', 0.5, 'as-fed'),
  ('dfcf9528-d469-48bc-b7d4-a5cb510f1e17', 'omega6', 2.8, 'as-fed'),
  ('dfcf9528-d469-48bc-b7d4-a5cb510f1e17', 'kcal', 399, 'as-fed');

-- Vet Life — Cardiac (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-cardiac-2-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'b818ed96-d2c2-41fc-93de-c065688b989a';
delete from public.recipe_nutrition where recipe_version_id = 'b818ed96-d2c2-41fc-93de-c065688b989a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b818ed96-d2c2-41fc-93de-c065688b989a', 'protein', 24, 'as-fed'),
  ('b818ed96-d2c2-41fc-93de-c065688b989a', 'fat', 18, 'as-fed'),
  ('b818ed96-d2c2-41fc-93de-c065688b989a', 'fiber', 3.4, 'as-fed'),
  ('b818ed96-d2c2-41fc-93de-c065688b989a', 'ash', 6.9, 'as-fed'),
  ('b818ed96-d2c2-41fc-93de-c065688b989a', 'calcium', 0.75, 'as-fed'),
  ('b818ed96-d2c2-41fc-93de-c065688b989a', 'phosphorus', 0.55, 'as-fed'),
  ('b818ed96-d2c2-41fc-93de-c065688b989a', 'omega3', 0.9, 'as-fed'),
  ('b818ed96-d2c2-41fc-93de-c065688b989a', 'omega6', 3.5, 'as-fed'),
  ('b818ed96-d2c2-41fc-93de-c065688b989a', 'kcal', 377.7, 'as-fed');

-- Vet Life — Gastrointestinal (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-gastrointestinal-2-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'ddb44d55-9797-48e4-8c09-bb953c288f80';
delete from public.recipe_nutrition where recipe_version_id = 'ddb44d55-9797-48e4-8c09-bb953c288f80';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ddb44d55-9797-48e4-8c09-bb953c288f80', 'protein', 23, 'as-fed'),
  ('ddb44d55-9797-48e4-8c09-bb953c288f80', 'fat', 10.5, 'as-fed'),
  ('ddb44d55-9797-48e4-8c09-bb953c288f80', 'fiber', 1.3, 'as-fed'),
  ('ddb44d55-9797-48e4-8c09-bb953c288f80', 'ash', 6.5, 'as-fed'),
  ('ddb44d55-9797-48e4-8c09-bb953c288f80', 'calcium', 0.9, 'as-fed'),
  ('ddb44d55-9797-48e4-8c09-bb953c288f80', 'phosphorus', 0.6, 'as-fed'),
  ('ddb44d55-9797-48e4-8c09-bb953c288f80', 'omega3', 0.4, 'as-fed'),
  ('ddb44d55-9797-48e4-8c09-bb953c288f80', 'omega6', 1.9, 'as-fed'),
  ('ddb44d55-9797-48e4-8c09-bb953c288f80', 'kcal', 374.9, 'as-fed');

-- Vet Life — Obesity (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-obesity-2-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'f7579b19-fff1-4727-a9eb-020322f9411d';
delete from public.recipe_nutrition where recipe_version_id = 'f7579b19-fff1-4727-a9eb-020322f9411d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f7579b19-fff1-4727-a9eb-020322f9411d', 'protein', 22, 'as-fed'),
  ('f7579b19-fff1-4727-a9eb-020322f9411d', 'fat', 6.2, 'as-fed'),
  ('f7579b19-fff1-4727-a9eb-020322f9411d', 'fiber', 7.8, 'as-fed'),
  ('f7579b19-fff1-4727-a9eb-020322f9411d', 'ash', 7.8, 'as-fed'),
  ('f7579b19-fff1-4727-a9eb-020322f9411d', 'calcium', 1, 'as-fed'),
  ('f7579b19-fff1-4727-a9eb-020322f9411d', 'phosphorus', 0.8, 'as-fed'),
  ('f7579b19-fff1-4727-a9eb-020322f9411d', 'omega3', 0.25, 'as-fed'),
  ('f7579b19-fff1-4727-a9eb-020322f9411d', 'omega6', 1.2, 'as-fed'),
  ('f7579b19-fff1-4727-a9eb-020322f9411d', 'kcal', 300, 'as-fed');

-- Vet Life — Renal (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-renal-2-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '0bc6aa65-1832-498f-9316-5183f7f80f83';
delete from public.recipe_nutrition where recipe_version_id = '0bc6aa65-1832-498f-9316-5183f7f80f83';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0bc6aa65-1832-498f-9316-5183f7f80f83', 'protein', 13.3, 'as-fed'),
  ('0bc6aa65-1832-498f-9316-5183f7f80f83', 'fat', 15, 'as-fed'),
  ('0bc6aa65-1832-498f-9316-5183f7f80f83', 'fiber', 1.4, 'as-fed'),
  ('0bc6aa65-1832-498f-9316-5183f7f80f83', 'ash', 4.5, 'as-fed'),
  ('0bc6aa65-1832-498f-9316-5183f7f80f83', 'calcium', 0.6, 'as-fed'),
  ('0bc6aa65-1832-498f-9316-5183f7f80f83', 'phosphorus', 0.25, 'as-fed'),
  ('0bc6aa65-1832-498f-9316-5183f7f80f83', 'omega3', 0.5, 'as-fed'),
  ('0bc6aa65-1832-498f-9316-5183f7f80f83', 'omega6', 2.8, 'as-fed'),
  ('0bc6aa65-1832-498f-9316-5183f7f80f83', 'kcal', 378.1, 'as-fed');

-- Vet Life — Natvoeding Renal (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/vet-life-natvoeding-voor-de-hond-renal-300-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '976160b2-2d20-41d3-8f41-8d9d64eefeec';
delete from public.recipe_nutrition where recipe_version_id = '976160b2-2d20-41d3-8f41-8d9d64eefeec';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('976160b2-2d20-41d3-8f41-8d9d64eefeec', 'protein', 6.8, 'as-fed'),
  ('976160b2-2d20-41d3-8f41-8d9d64eefeec', 'fat', 7.8, 'as-fed'),
  ('976160b2-2d20-41d3-8f41-8d9d64eefeec', 'fiber', 0.18, 'as-fed'),
  ('976160b2-2d20-41d3-8f41-8d9d64eefeec', 'ash', 1.9, 'as-fed'),
  ('976160b2-2d20-41d3-8f41-8d9d64eefeec', 'calcium', 0.2, 'as-fed'),
  ('976160b2-2d20-41d3-8f41-8d9d64eefeec', 'phosphorus', 0.09, 'as-fed'),
  ('976160b2-2d20-41d3-8f41-8d9d64eefeec', 'omega3', 0.15, 'as-fed'),
  ('976160b2-2d20-41d3-8f41-8d9d64eefeec', 'omega6', 1, 'as-fed'),
  ('976160b2-2d20-41d3-8f41-8d9d64eefeec', 'kcal', 140.4, 'as-fed');

-- Vet Life — Joint (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-joint-2-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'a7bb4d57-9fa8-4849-adbb-3b689deedf23';
delete from public.recipe_nutrition where recipe_version_id = 'a7bb4d57-9fa8-4849-adbb-3b689deedf23';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a7bb4d57-9fa8-4849-adbb-3b689deedf23', 'protein', 22, 'as-fed'),
  ('a7bb4d57-9fa8-4849-adbb-3b689deedf23', 'fat', 12, 'as-fed'),
  ('a7bb4d57-9fa8-4849-adbb-3b689deedf23', 'fiber', 4.7, 'as-fed'),
  ('a7bb4d57-9fa8-4849-adbb-3b689deedf23', 'ash', 6.4, 'as-fed'),
  ('a7bb4d57-9fa8-4849-adbb-3b689deedf23', 'calcium', 0.65, 'as-fed'),
  ('a7bb4d57-9fa8-4849-adbb-3b689deedf23', 'phosphorus', 0.6, 'as-fed'),
  ('a7bb4d57-9fa8-4849-adbb-3b689deedf23', 'omega3', 3.4, 'as-fed'),
  ('a7bb4d57-9fa8-4849-adbb-3b689deedf23', 'omega6', 3.8, 'as-fed'),
  ('a7bb4d57-9fa8-4849-adbb-3b689deedf23', 'kcal', 345, 'as-fed');

-- Vet Life — UltraHypo (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-ultrahypo-12-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'e27f21f5-4951-44a7-b8a1-3b10ecb7c182';
delete from public.recipe_nutrition where recipe_version_id = 'e27f21f5-4951-44a7-b8a1-3b10ecb7c182';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e27f21f5-4951-44a7-b8a1-3b10ecb7c182', 'protein', 18, 'as-fed'),
  ('e27f21f5-4951-44a7-b8a1-3b10ecb7c182', 'fat', 15, 'as-fed'),
  ('e27f21f5-4951-44a7-b8a1-3b10ecb7c182', 'fiber', 1.2, 'as-fed'),
  ('e27f21f5-4951-44a7-b8a1-3b10ecb7c182', 'ash', 5.3, 'as-fed'),
  ('e27f21f5-4951-44a7-b8a1-3b10ecb7c182', 'calcium', 0.7, 'as-fed'),
  ('e27f21f5-4951-44a7-b8a1-3b10ecb7c182', 'phosphorus', 0.5, 'as-fed'),
  ('e27f21f5-4951-44a7-b8a1-3b10ecb7c182', 'omega3', 2.2, 'as-fed'),
  ('e27f21f5-4951-44a7-b8a1-3b10ecb7c182', 'omega6', 0.4, 'as-fed'),
  ('e27f21f5-4951-44a7-b8a1-3b10ecb7c182', 'kcal', 399.3, 'as-fed');

-- Vet Life — Natvoeding Hypoallergenic Eend met Aardappel (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/vet-life-natvoeding-voor-de-hond-hypoallergenic-eend-met-aardappel-300-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '0a56f729-8cc5-4c27-b6ce-aea820e776de';
delete from public.recipe_nutrition where recipe_version_id = '0a56f729-8cc5-4c27-b6ce-aea820e776de';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0a56f729-8cc5-4c27-b6ce-aea820e776de', 'protein', 9.5, 'as-fed'),
  ('0a56f729-8cc5-4c27-b6ce-aea820e776de', 'fat', 8.4, 'as-fed'),
  ('0a56f729-8cc5-4c27-b6ce-aea820e776de', 'fiber', 0.2, 'as-fed'),
  ('0a56f729-8cc5-4c27-b6ce-aea820e776de', 'ash', 2.3, 'as-fed'),
  ('0a56f729-8cc5-4c27-b6ce-aea820e776de', 'calcium', 0.18, 'as-fed'),
  ('0a56f729-8cc5-4c27-b6ce-aea820e776de', 'phosphorus', 0.11, 'as-fed'),
  ('0a56f729-8cc5-4c27-b6ce-aea820e776de', 'omega3', 0.2, 'as-fed'),
  ('0a56f729-8cc5-4c27-b6ce-aea820e776de', 'omega6', 1.5, 'as-fed'),
  ('0a56f729-8cc5-4c27-b6ce-aea820e776de', 'kcal', 124, 'as-fed');

-- Vet Life — Natvoeding Gastrointestinal (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/vet-life-natvoeding-voor-de-hond-gastrointestinal-300-gr-per-6-stuks',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '982d5fc6-8b0f-4fc0-a46e-b0dd61eee841';
delete from public.recipe_nutrition where recipe_version_id = '982d5fc6-8b0f-4fc0-a46e-b0dd61eee841';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('982d5fc6-8b0f-4fc0-a46e-b0dd61eee841', 'protein', 8.9, 'as-fed'),
  ('982d5fc6-8b0f-4fc0-a46e-b0dd61eee841', 'fat', 4, 'as-fed'),
  ('982d5fc6-8b0f-4fc0-a46e-b0dd61eee841', 'fiber', 0.2, 'as-fed'),
  ('982d5fc6-8b0f-4fc0-a46e-b0dd61eee841', 'ash', 2.6, 'as-fed'),
  ('982d5fc6-8b0f-4fc0-a46e-b0dd61eee841', 'calcium', 0.27, 'as-fed'),
  ('982d5fc6-8b0f-4fc0-a46e-b0dd61eee841', 'phosphorus', 0.2, 'as-fed'),
  ('982d5fc6-8b0f-4fc0-a46e-b0dd61eee841', 'kcal', 120.4, 'as-fed');

-- Vet Life — Hepatic (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-hepatic-2-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'f909be7d-b538-4eb8-af7f-359664c8cbe6';
delete from public.recipe_nutrition where recipe_version_id = 'f909be7d-b538-4eb8-af7f-359664c8cbe6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f909be7d-b538-4eb8-af7f-359664c8cbe6', 'protein', 16, 'as-fed'),
  ('f909be7d-b538-4eb8-af7f-359664c8cbe6', 'fat', 18, 'as-fed'),
  ('f909be7d-b538-4eb8-af7f-359664c8cbe6', 'fiber', 3, 'as-fed'),
  ('f909be7d-b538-4eb8-af7f-359664c8cbe6', 'ash', 5.9, 'as-fed'),
  ('f909be7d-b538-4eb8-af7f-359664c8cbe6', 'calcium', 0.9, 'as-fed'),
  ('f909be7d-b538-4eb8-af7f-359664c8cbe6', 'phosphorus', 0.65, 'as-fed'),
  ('f909be7d-b538-4eb8-af7f-359664c8cbe6', 'omega3', 0.7, 'as-fed'),
  ('f909be7d-b538-4eb8-af7f-359664c8cbe6', 'omega6', 3.3, 'as-fed'),
  ('f909be7d-b538-4eb8-af7f-359664c8cbe6', 'kcal', 382.6, 'as-fed');

-- Vet Life — Diabetic (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-diabetic-2-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '27ad72e5-221e-4508-96d0-25efd3fa7a68';
delete from public.recipe_nutrition where recipe_version_id = '27ad72e5-221e-4508-96d0-25efd3fa7a68';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('27ad72e5-221e-4508-96d0-25efd3fa7a68', 'protein', 35, 'as-fed'),
  ('27ad72e5-221e-4508-96d0-25efd3fa7a68', 'fat', 11, 'as-fed'),
  ('27ad72e5-221e-4508-96d0-25efd3fa7a68', 'fiber', 10, 'as-fed'),
  ('27ad72e5-221e-4508-96d0-25efd3fa7a68', 'ash', 8.9, 'as-fed'),
  ('27ad72e5-221e-4508-96d0-25efd3fa7a68', 'calcium', 1.3, 'as-fed'),
  ('27ad72e5-221e-4508-96d0-25efd3fa7a68', 'phosphorus', 1.1, 'as-fed'),
  ('27ad72e5-221e-4508-96d0-25efd3fa7a68', 'omega3', 0.65, 'as-fed'),
  ('27ad72e5-221e-4508-96d0-25efd3fa7a68', 'omega6', 2.3, 'as-fed'),
  ('27ad72e5-221e-4508-96d0-25efd3fa7a68', 'kcal', 321, 'as-fed');

-- Vet Life — Hypoallergenic Ei met Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-hypoallergenic-ei-met-rijst-12-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'd9f157ed-f26f-42de-b271-1f45031a205d';
delete from public.recipe_nutrition where recipe_version_id = 'd9f157ed-f26f-42de-b271-1f45031a205d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d9f157ed-f26f-42de-b271-1f45031a205d', 'protein', 18, 'as-fed'),
  ('d9f157ed-f26f-42de-b271-1f45031a205d', 'fat', 13, 'as-fed'),
  ('d9f157ed-f26f-42de-b271-1f45031a205d', 'fiber', 1.1, 'as-fed'),
  ('d9f157ed-f26f-42de-b271-1f45031a205d', 'ash', 5.7, 'as-fed'),
  ('d9f157ed-f26f-42de-b271-1f45031a205d', 'calcium', 0.7, 'as-fed'),
  ('d9f157ed-f26f-42de-b271-1f45031a205d', 'phosphorus', 0.5, 'as-fed'),
  ('d9f157ed-f26f-42de-b271-1f45031a205d', 'omega3', 0.6, 'as-fed'),
  ('d9f157ed-f26f-42de-b271-1f45031a205d', 'omega6', 1.5, 'as-fed'),
  ('d9f157ed-f26f-42de-b271-1f45031a205d', 'kcal', 365, 'as-fed');

-- Vet Life — Puppyvoeding Gastrointestinal (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/vet-life-puppyvoeding-gastrointestinal-2-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'ae75d462-22e9-44c7-9d78-45a87a3bad96';
delete from public.recipe_nutrition where recipe_version_id = 'ae75d462-22e9-44c7-9d78-45a87a3bad96';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ae75d462-22e9-44c7-9d78-45a87a3bad96', 'protein', 29, 'as-fed'),
  ('ae75d462-22e9-44c7-9d78-45a87a3bad96', 'fat', 22, 'as-fed'),
  ('ae75d462-22e9-44c7-9d78-45a87a3bad96', 'fiber', 1.4, 'as-fed'),
  ('ae75d462-22e9-44c7-9d78-45a87a3bad96', 'ash', 7.6, 'as-fed'),
  ('ae75d462-22e9-44c7-9d78-45a87a3bad96', 'calcium', 1.4, 'as-fed'),
  ('ae75d462-22e9-44c7-9d78-45a87a3bad96', 'phosphorus', 1, 'as-fed'),
  ('ae75d462-22e9-44c7-9d78-45a87a3bad96', 'omega3', 0.4, 'as-fed'),
  ('ae75d462-22e9-44c7-9d78-45a87a3bad96', 'omega6', 3.1, 'as-fed'),
  ('ae75d462-22e9-44c7-9d78-45a87a3bad96', 'kcal', 426.8, 'as-fed');

-- Ziwi Peak — Air-Dried Hert (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/ziwi-peak-air-dried-hondenvoeding-hert-25-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '2b363351-73bf-423b-bd31-436bba33e3a6';
delete from public.recipe_nutrition where recipe_version_id = '2b363351-73bf-423b-bd31-436bba33e3a6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2b363351-73bf-423b-bd31-436bba33e3a6', 'protein', 49.5, 'as-fed'),
  ('2b363351-73bf-423b-bd31-436bba33e3a6', 'fat', 27, 'as-fed'),
  ('2b363351-73bf-423b-bd31-436bba33e3a6', 'fiber', 1, 'as-fed'),
  ('2b363351-73bf-423b-bd31-436bba33e3a6', 'ash', 10, 'as-fed'),
  ('2b363351-73bf-423b-bd31-436bba33e3a6', 'moisture', 9, 'as-fed');

-- Ziwi Peak — Air-Dried Makreel & Lam (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/ziwi-peak-air-dried-hondenvoeding-makreel-lam-25-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '5a49899a-096b-41d6-bc8f-728f42102c34';
delete from public.recipe_nutrition where recipe_version_id = '5a49899a-096b-41d6-bc8f-728f42102c34';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5a49899a-096b-41d6-bc8f-728f42102c34', 'protein', 48, 'as-fed'),
  ('5a49899a-096b-41d6-bc8f-728f42102c34', 'fat', 27, 'as-fed'),
  ('5a49899a-096b-41d6-bc8f-728f42102c34', 'fiber', 1, 'as-fed'),
  ('5a49899a-096b-41d6-bc8f-728f42102c34', 'ash', 10, 'as-fed'),
  ('5a49899a-096b-41d6-bc8f-728f42102c34', 'moisture', 9, 'as-fed');

-- Ziwi Peak — Steam & Dried Rund (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/ziwi-peak-steam-dried-hondenvoeding-rund-15-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '1277c025-615d-4a4e-9fe8-a661957dfb3c';
delete from public.recipe_nutrition where recipe_version_id = '1277c025-615d-4a4e-9fe8-a661957dfb3c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1277c025-615d-4a4e-9fe8-a661957dfb3c', 'protein', 38, 'as-fed'),
  ('1277c025-615d-4a4e-9fe8-a661957dfb3c', 'fat', 30, 'as-fed'),
  ('1277c025-615d-4a4e-9fe8-a661957dfb3c', 'fiber', 1, 'as-fed'),
  ('1277c025-615d-4a4e-9fe8-a661957dfb3c', 'ash', 9, 'as-fed'),
  ('1277c025-615d-4a4e-9fe8-a661957dfb3c', 'moisture', 9, 'as-fed');

-- Ziwi Peak — Steam & Dried Lam (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/ziwi-peak-steam-dried-hondenvoeding-lam-32-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = 'e6cab24b-4deb-468b-b9b4-ddb691d75aba';
delete from public.recipe_nutrition where recipe_version_id = 'e6cab24b-4deb-468b-b9b4-ddb691d75aba';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e6cab24b-4deb-468b-b9b4-ddb691d75aba', 'protein', 36, 'as-fed'),
  ('e6cab24b-4deb-468b-b9b4-ddb691d75aba', 'fat', 30, 'as-fed'),
  ('e6cab24b-4deb-468b-b9b4-ddb691d75aba', 'fiber', 1, 'as-fed'),
  ('e6cab24b-4deb-468b-b9b4-ddb691d75aba', 'ash', 9, 'as-fed'),
  ('e6cab24b-4deb-468b-b9b4-ddb691d75aba', 'kcal', 440, 'as-fed');

-- Ziwi Peak — Steam & Dried Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/ziwi-peak-steam-dried-hondenvoeding-kip-15-kg',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '650bdc4e-8d78-4ed7-ad22-91a44797866a';
delete from public.recipe_nutrition where recipe_version_id = '650bdc4e-8d78-4ed7-ad22-91a44797866a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('650bdc4e-8d78-4ed7-ad22-91a44797866a', 'protein', 38, 'as-fed'),
  ('650bdc4e-8d78-4ed7-ad22-91a44797866a', 'fat', 28, 'as-fed'),
  ('650bdc4e-8d78-4ed7-ad22-91a44797866a', 'fiber', 1, 'as-fed'),
  ('650bdc4e-8d78-4ed7-ad22-91a44797866a', 'ash', 9, 'as-fed'),
  ('650bdc4e-8d78-4ed7-ad22-91a44797866a', 'moisture', 9, 'as-fed'),
  ('650bdc4e-8d78-4ed7-ad22-91a44797866a', 'kcal', 430, 'as-fed');

-- Ziwi Peak — Natvoeding Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/ziwi-peak-natvoeding-voor-de-hond-kip-390-gr',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '33f25fb2-9585-4461-bf4c-c821bff3f9d6';
delete from public.recipe_nutrition where recipe_version_id = '33f25fb2-9585-4461-bf4c-c821bff3f9d6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('33f25fb2-9585-4461-bf4c-c821bff3f9d6', 'protein', 9, 'as-fed'),
  ('33f25fb2-9585-4461-bf4c-c821bff3f9d6', 'fat', 5.5, 'as-fed'),
  ('33f25fb2-9585-4461-bf4c-c821bff3f9d6', 'fiber', 1, 'as-fed'),
  ('33f25fb2-9585-4461-bf4c-c821bff3f9d6', 'ash', 4, 'as-fed'),
  ('33f25fb2-9585-4461-bf4c-c821bff3f9d6', 'moisture', 78, 'as-fed'),
  ('33f25fb2-9585-4461-bf4c-c821bff3f9d6', 'kcal', 132.5, 'as-fed');

-- Ziwi Peak — Natvoeding Rund (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/ziwi-peak-natvoeding-voor-de-hond-rund-170-gr',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '56770c4d-31bd-4670-9283-331d5ba8cf53';
delete from public.recipe_nutrition where recipe_version_id = '56770c4d-31bd-4670-9283-331d5ba8cf53';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('56770c4d-31bd-4670-9283-331d5ba8cf53', 'protein', 9, 'as-fed'),
  ('56770c4d-31bd-4670-9283-331d5ba8cf53', 'fat', 5.5, 'as-fed'),
  ('56770c4d-31bd-4670-9283-331d5ba8cf53', 'fiber', 2, 'as-fed'),
  ('56770c4d-31bd-4670-9283-331d5ba8cf53', 'ash', 4, 'as-fed'),
  ('56770c4d-31bd-4670-9283-331d5ba8cf53', 'moisture', 78, 'as-fed'),
  ('56770c4d-31bd-4670-9283-331d5ba8cf53', 'kcal', 125, 'as-fed');

-- Ziwi Peak — Natvoeding Makreel & Lam (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/ziwi-peak-natvoeding-voor-de-hond-makreel-lam-170-gr',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '0136b715-660a-4310-8d51-2f7f2bdffcfb';
delete from public.recipe_nutrition where recipe_version_id = '0136b715-660a-4310-8d51-2f7f2bdffcfb';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0136b715-660a-4310-8d51-2f7f2bdffcfb', 'protein', 10.5, 'as-fed'),
  ('0136b715-660a-4310-8d51-2f7f2bdffcfb', 'fat', 4, 'as-fed'),
  ('0136b715-660a-4310-8d51-2f7f2bdffcfb', 'fiber', 2, 'as-fed'),
  ('0136b715-660a-4310-8d51-2f7f2bdffcfb', 'ash', 3, 'as-fed'),
  ('0136b715-660a-4310-8d51-2f7f2bdffcfb', 'moisture', 78, 'as-fed'),
  ('0136b715-660a-4310-8d51-2f7f2bdffcfb', 'calcium', 0.4, 'as-fed'),
  ('0136b715-660a-4310-8d51-2f7f2bdffcfb', 'phosphorus', 0.3, 'as-fed'),
  ('0136b715-660a-4310-8d51-2f7f2bdffcfb', 'kcal', 120, 'as-fed');

-- Ziwi Peak — Natvoeding Hert (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.bestpetfoods.nl/product/ziwi-peak-natvoeding-voor-de-hond-hert-170-gr',
       nutrition_checked_at = '2026-11-23',
       nutrition_note = 'Automatisch overgenomen van de productpagina van Best Petfoods op 2026-11-23. Ontbrekende waarden zijn niet vermeld.'
 where id = '4f6c1b1e-74b3-4849-ba02-d5c9fc6a586c';
delete from public.recipe_nutrition where recipe_version_id = '4f6c1b1e-74b3-4849-ba02-d5c9fc6a586c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4f6c1b1e-74b3-4849-ba02-d5c9fc6a586c', 'protein', 10, 'as-fed'),
  ('4f6c1b1e-74b3-4849-ba02-d5c9fc6a586c', 'fat', 4, 'as-fed'),
  ('4f6c1b1e-74b3-4849-ba02-d5c9fc6a586c', 'fiber', 2, 'as-fed'),
  ('4f6c1b1e-74b3-4849-ba02-d5c9fc6a586c', 'ash', 3, 'as-fed'),
  ('4f6c1b1e-74b3-4849-ba02-d5c9fc6a586c', 'moisture', 78, 'as-fed'),
  ('4f6c1b1e-74b3-4849-ba02-d5c9fc6a586c', 'kcal', 120, 'as-fed');

commit;
