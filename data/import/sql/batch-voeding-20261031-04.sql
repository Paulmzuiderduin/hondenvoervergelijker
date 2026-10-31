begin;

-- Sanimed — Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.sanimed.nl/producten/preventive/adult/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie wordt niet vermeld. Omega-6 overgenomen uit linolzuur; linolzuur is een omega-6-vetzuur. Omega-3 wordt niet als totaal vermeld (alleen ALA, EPA en DHA als deelwaarden).'
 where id = '738fe21c-d262-43f8-af3a-abd42f4bab1b';
delete from public.recipe_nutrition where recipe_version_id = '738fe21c-d262-43f8-af3a-abd42f4bab1b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('738fe21c-d262-43f8-af3a-abd42f4bab1b', 'protein', 20, 'as-fed'),
  ('738fe21c-d262-43f8-af3a-abd42f4bab1b', 'fat', 10, 'as-fed'),
  ('738fe21c-d262-43f8-af3a-abd42f4bab1b', 'fiber', 3, 'as-fed'),
  ('738fe21c-d262-43f8-af3a-abd42f4bab1b', 'ash', 4.4, 'as-fed'),
  ('738fe21c-d262-43f8-af3a-abd42f4bab1b', 'moisture', 8, 'as-fed'),
  ('738fe21c-d262-43f8-af3a-abd42f4bab1b', 'calcium', 0.7, 'as-fed'),
  ('738fe21c-d262-43f8-af3a-abd42f4bab1b', 'phosphorus', 0.5, 'as-fed'),
  ('738fe21c-d262-43f8-af3a-abd42f4bab1b', 'omega6', 1.6, 'as-fed');

-- Sanimed — Adult Small Breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.sanimed.nl/producten/preventive/adult-small-breed/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie wordt niet vermeld. Omega-6 overgenomen uit linolzuur; linolzuur is een omega-6-vetzuur. Omega-3 wordt niet als totaal vermeld (alleen ALA, EPA en DHA als deelwaarden).'
 where id = '62324ad7-1cdb-452b-835d-ceba60a03061';
delete from public.recipe_nutrition where recipe_version_id = '62324ad7-1cdb-452b-835d-ceba60a03061';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('62324ad7-1cdb-452b-835d-ceba60a03061', 'protein', 20, 'as-fed'),
  ('62324ad7-1cdb-452b-835d-ceba60a03061', 'fat', 10, 'as-fed'),
  ('62324ad7-1cdb-452b-835d-ceba60a03061', 'fiber', 3.4, 'as-fed'),
  ('62324ad7-1cdb-452b-835d-ceba60a03061', 'ash', 4.7, 'as-fed'),
  ('62324ad7-1cdb-452b-835d-ceba60a03061', 'moisture', 8, 'as-fed'),
  ('62324ad7-1cdb-452b-835d-ceba60a03061', 'calcium', 0.7, 'as-fed'),
  ('62324ad7-1cdb-452b-835d-ceba60a03061', 'phosphorus', 0.5, 'as-fed'),
  ('62324ad7-1cdb-452b-835d-ceba60a03061', 'omega6', 1.8, 'as-fed');

-- Sanimed — Anti-Struvite (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.sanimed.nl/producten/curative/anti-struvite/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie wordt niet vermeld. Fosfor overgenomen als totaal fosfor; de bron vermeldt daarnaast 0,3% beschikbaar fosfor. Omega-6 overgenomen uit linolzuur; linolzuur is een omega-6-vetzuur. Omega-3 wordt niet als totaal vermeld (alleen ALA, EPA en DHA als deelwaarden).'
 where id = 'caaf35d6-5f08-40fc-a868-aa803f828cdf';
delete from public.recipe_nutrition where recipe_version_id = 'caaf35d6-5f08-40fc-a868-aa803f828cdf';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('caaf35d6-5f08-40fc-a868-aa803f828cdf', 'protein', 17, 'as-fed'),
  ('caaf35d6-5f08-40fc-a868-aa803f828cdf', 'fat', 18, 'as-fed'),
  ('caaf35d6-5f08-40fc-a868-aa803f828cdf', 'fiber', 2.5, 'as-fed'),
  ('caaf35d6-5f08-40fc-a868-aa803f828cdf', 'ash', 4.5, 'as-fed'),
  ('caaf35d6-5f08-40fc-a868-aa803f828cdf', 'moisture', 8, 'as-fed'),
  ('caaf35d6-5f08-40fc-a868-aa803f828cdf', 'calcium', 0.4, 'as-fed'),
  ('caaf35d6-5f08-40fc-a868-aa803f828cdf', 'phosphorus', 0.4, 'as-fed'),
  ('caaf35d6-5f08-40fc-a868-aa803f828cdf', 'omega6', 2.5, 'as-fed');

-- Sanimed — Clinical Choice Pure Duck worst (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.sanimed.nl/producten/curative/clinical-choice-pure-duck-worst/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie, calcium en fosfor worden niet vermeld. Omega-6 overgenomen uit linolzuur; linolzuur is een omega-6-vetzuur. Omega-3 wordt niet als totaal vermeld (alleen ALA als deelwaarde).'
 where id = '454cf1f4-d847-415b-b5f4-007b3912caa3';
delete from public.recipe_nutrition where recipe_version_id = '454cf1f4-d847-415b-b5f4-007b3912caa3';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('454cf1f4-d847-415b-b5f4-007b3912caa3', 'protein', 12.5, 'as-fed'),
  ('454cf1f4-d847-415b-b5f4-007b3912caa3', 'fat', 9, 'as-fed'),
  ('454cf1f4-d847-415b-b5f4-007b3912caa3', 'fiber', 0.9, 'as-fed'),
  ('454cf1f4-d847-415b-b5f4-007b3912caa3', 'ash', 5.5, 'as-fed'),
  ('454cf1f4-d847-415b-b5f4-007b3912caa3', 'moisture', 63, 'as-fed'),
  ('454cf1f4-d847-415b-b5f4-007b3912caa3', 'omega6', 0.9, 'as-fed');

-- Sanimed — Dental (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.sanimed.nl/producten/curative/dental/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie wordt niet vermeld. Omega-6 overgenomen uit linolzuur; linolzuur is een omega-6-vetzuur. Omega-3 wordt niet als totaal vermeld (alleen ALA, EPA en DHA als deelwaarden).'
 where id = 'a6c8de4b-3e7a-40aa-8c88-1b3ccc88ebf6';
delete from public.recipe_nutrition where recipe_version_id = 'a6c8de4b-3e7a-40aa-8c88-1b3ccc88ebf6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a6c8de4b-3e7a-40aa-8c88-1b3ccc88ebf6', 'protein', 20, 'as-fed'),
  ('a6c8de4b-3e7a-40aa-8c88-1b3ccc88ebf6', 'fat', 11, 'as-fed'),
  ('a6c8de4b-3e7a-40aa-8c88-1b3ccc88ebf6', 'fiber', 6.4, 'as-fed'),
  ('a6c8de4b-3e7a-40aa-8c88-1b3ccc88ebf6', 'ash', 4.7, 'as-fed'),
  ('a6c8de4b-3e7a-40aa-8c88-1b3ccc88ebf6', 'moisture', 8, 'as-fed'),
  ('a6c8de4b-3e7a-40aa-8c88-1b3ccc88ebf6', 'calcium', 0.7, 'as-fed'),
  ('a6c8de4b-3e7a-40aa-8c88-1b3ccc88ebf6', 'phosphorus', 0.7, 'as-fed'),
  ('a6c8de4b-3e7a-40aa-8c88-1b3ccc88ebf6', 'omega6', 2.05, 'as-fed');

-- Sanimed — Hypoallergenic DR (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.sanimed.nl/producten/curative/hypoallergenic-dr/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie wordt niet vermeld. Omega-6 overgenomen uit linolzuur; linolzuur is een omega-6-vetzuur. Omega-3 wordt niet als totaal vermeld (alleen ALA als deelwaarde).'
 where id = 'b168eeeb-6312-43cf-8c31-8fff8f4f42b9';
delete from public.recipe_nutrition where recipe_version_id = 'b168eeeb-6312-43cf-8c31-8fff8f4f42b9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b168eeeb-6312-43cf-8c31-8fff8f4f42b9', 'protein', 22, 'as-fed'),
  ('b168eeeb-6312-43cf-8c31-8fff8f4f42b9', 'fat', 18, 'as-fed'),
  ('b168eeeb-6312-43cf-8c31-8fff8f4f42b9', 'fiber', 2, 'as-fed'),
  ('b168eeeb-6312-43cf-8c31-8fff8f4f42b9', 'ash', 7.2, 'as-fed'),
  ('b168eeeb-6312-43cf-8c31-8fff8f4f42b9', 'moisture', 10, 'as-fed'),
  ('b168eeeb-6312-43cf-8c31-8fff8f4f42b9', 'calcium', 1.4, 'as-fed'),
  ('b168eeeb-6312-43cf-8c31-8fff8f4f42b9', 'phosphorus', 1, 'as-fed'),
  ('b168eeeb-6312-43cf-8c31-8fff8f4f42b9', 'omega6', 2.1, 'as-fed');

-- Sanimed — Hypoallergenic DR worst (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.sanimed.nl/producten/curative/hypoallergenic-dr-worst/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie, calcium en fosfor worden niet vermeld. Omega-6 overgenomen uit linolzuur; linolzuur is een omega-6-vetzuur. Omega-3 wordt niet als totaal vermeld (alleen ALA als deelwaarde).'
 where id = 'aa4fc9ad-1ee7-4898-8a3e-45cf0931a5f2';
delete from public.recipe_nutrition where recipe_version_id = 'aa4fc9ad-1ee7-4898-8a3e-45cf0931a5f2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('aa4fc9ad-1ee7-4898-8a3e-45cf0931a5f2', 'protein', 12.5, 'as-fed'),
  ('aa4fc9ad-1ee7-4898-8a3e-45cf0931a5f2', 'fat', 9, 'as-fed'),
  ('aa4fc9ad-1ee7-4898-8a3e-45cf0931a5f2', 'fiber', 0.9, 'as-fed'),
  ('aa4fc9ad-1ee7-4898-8a3e-45cf0931a5f2', 'ash', 5.5, 'as-fed'),
  ('aa4fc9ad-1ee7-4898-8a3e-45cf0931a5f2', 'moisture', 63, 'as-fed'),
  ('aa4fc9ad-1ee7-4898-8a3e-45cf0931a5f2', 'omega6', 0.9, 'as-fed');

-- Sanimed — Hypoallergenic LR (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.sanimed.nl/producten/curative/hypoallergenic-lr/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie wordt niet vermeld. Omega-6 overgenomen uit linolzuur; linolzuur is een omega-6-vetzuur. Omega-3 wordt niet als totaal vermeld (alleen ALA, EPA en DHA als deelwaarden).'
 where id = '3f42bac9-13d3-407f-9569-6aab8ff59df2';
delete from public.recipe_nutrition where recipe_version_id = '3f42bac9-13d3-407f-9569-6aab8ff59df2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3f42bac9-13d3-407f-9569-6aab8ff59df2', 'protein', 20, 'as-fed'),
  ('3f42bac9-13d3-407f-9569-6aab8ff59df2', 'fat', 11, 'as-fed'),
  ('3f42bac9-13d3-407f-9569-6aab8ff59df2', 'fiber', 2.3, 'as-fed'),
  ('3f42bac9-13d3-407f-9569-6aab8ff59df2', 'ash', 6.6, 'as-fed'),
  ('3f42bac9-13d3-407f-9569-6aab8ff59df2', 'moisture', 8, 'as-fed'),
  ('3f42bac9-13d3-407f-9569-6aab8ff59df2', 'calcium', 1.4, 'as-fed'),
  ('3f42bac9-13d3-407f-9569-6aab8ff59df2', 'phosphorus', 0.9, 'as-fed'),
  ('3f42bac9-13d3-407f-9569-6aab8ff59df2', 'omega6', 1.6, 'as-fed');

-- Sanimed — Hypoallergenic LR worst (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.sanimed.nl/producten/curative/hypoallergenic-lr-worst/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie, calcium en fosfor worden niet vermeld. Omega-6 overgenomen uit linolzuur; linolzuur is een omega-6-vetzuur. Omega-3 wordt niet als totaal vermeld (alleen ALA, EPA en DHA als deelwaarden).'
 where id = '6978f0f0-f435-43e0-9370-1a30e424b7dc';
delete from public.recipe_nutrition where recipe_version_id = '6978f0f0-f435-43e0-9370-1a30e424b7dc';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6978f0f0-f435-43e0-9370-1a30e424b7dc', 'protein', 10.7, 'as-fed'),
  ('6978f0f0-f435-43e0-9370-1a30e424b7dc', 'fat', 11.9, 'as-fed'),
  ('6978f0f0-f435-43e0-9370-1a30e424b7dc', 'fiber', 0.9, 'as-fed'),
  ('6978f0f0-f435-43e0-9370-1a30e424b7dc', 'ash', 3.8, 'as-fed'),
  ('6978f0f0-f435-43e0-9370-1a30e424b7dc', 'moisture', 61.2, 'as-fed'),
  ('6978f0f0-f435-43e0-9370-1a30e424b7dc', 'omega6', 0.81, 'as-fed');

-- Sanimed — Intestinal (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.sanimed.nl/producten/curative/intestinal/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie wordt niet vermeld. Omega-6 overgenomen uit linolzuur; linolzuur is een omega-6-vetzuur. Omega-3 wordt niet als totaal vermeld (alleen ALA, EPA en DHA als deelwaarden).'
 where id = '8de0603d-1570-4e1e-a8f4-7b356bf14ac4';
delete from public.recipe_nutrition where recipe_version_id = '8de0603d-1570-4e1e-a8f4-7b356bf14ac4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8de0603d-1570-4e1e-a8f4-7b356bf14ac4', 'protein', 24.5, 'as-fed'),
  ('8de0603d-1570-4e1e-a8f4-7b356bf14ac4', 'fat', 8.5, 'as-fed'),
  ('8de0603d-1570-4e1e-a8f4-7b356bf14ac4', 'fiber', 1.5, 'as-fed'),
  ('8de0603d-1570-4e1e-a8f4-7b356bf14ac4', 'ash', 7, 'as-fed'),
  ('8de0603d-1570-4e1e-a8f4-7b356bf14ac4', 'moisture', 8, 'as-fed'),
  ('8de0603d-1570-4e1e-a8f4-7b356bf14ac4', 'calcium', 0.8, 'as-fed'),
  ('8de0603d-1570-4e1e-a8f4-7b356bf14ac4', 'phosphorus', 0.55, 'as-fed'),
  ('8de0603d-1570-4e1e-a8f4-7b356bf14ac4', 'omega6', 1.2, 'as-fed');

-- Sanimed — Junior (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.sanimed.nl/producten/preventive/junior/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie wordt niet vermeld. Omega-6 overgenomen uit linolzuur; linolzuur is een omega-6-vetzuur. Omega-3 wordt niet als totaal vermeld (alleen ALA, EPA en DHA als deelwaarden).'
 where id = '387a1b49-5414-45b2-9eb0-9d5044a50728';
delete from public.recipe_nutrition where recipe_version_id = '387a1b49-5414-45b2-9eb0-9d5044a50728';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('387a1b49-5414-45b2-9eb0-9d5044a50728', 'protein', 22, 'as-fed'),
  ('387a1b49-5414-45b2-9eb0-9d5044a50728', 'fat', 11, 'as-fed'),
  ('387a1b49-5414-45b2-9eb0-9d5044a50728', 'fiber', 2.3, 'as-fed'),
  ('387a1b49-5414-45b2-9eb0-9d5044a50728', 'ash', 4.6, 'as-fed'),
  ('387a1b49-5414-45b2-9eb0-9d5044a50728', 'moisture', 8, 'as-fed'),
  ('387a1b49-5414-45b2-9eb0-9d5044a50728', 'calcium', 0.75, 'as-fed'),
  ('387a1b49-5414-45b2-9eb0-9d5044a50728', 'phosphorus', 0.6, 'as-fed'),
  ('387a1b49-5414-45b2-9eb0-9d5044a50728', 'omega6', 1.8, 'as-fed');

-- Sanimed — Neuro Support (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.sanimed.nl/producten/curative/neuro-support/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie wordt niet vermeld. Omega-6 overgenomen uit linolzuur; linolzuur is een omega-6-vetzuur. Omega-3 wordt niet als totaal vermeld (alleen ALA als deelwaarde).'
 where id = 'fef2f88d-d3d2-403b-9286-0ef852080308';
delete from public.recipe_nutrition where recipe_version_id = 'fef2f88d-d3d2-403b-9286-0ef852080308';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fef2f88d-d3d2-403b-9286-0ef852080308', 'protein', 20, 'as-fed'),
  ('fef2f88d-d3d2-403b-9286-0ef852080308', 'fat', 13.5, 'as-fed'),
  ('fef2f88d-d3d2-403b-9286-0ef852080308', 'fiber', 3.3, 'as-fed'),
  ('fef2f88d-d3d2-403b-9286-0ef852080308', 'ash', 5.2, 'as-fed'),
  ('fef2f88d-d3d2-403b-9286-0ef852080308', 'moisture', 8, 'as-fed'),
  ('fef2f88d-d3d2-403b-9286-0ef852080308', 'calcium', 1, 'as-fed'),
  ('fef2f88d-d3d2-403b-9286-0ef852080308', 'phosphorus', 0.75, 'as-fed'),
  ('fef2f88d-d3d2-403b-9286-0ef852080308', 'omega6', 1.9, 'as-fed');

-- Sanimed — Osteoarthritis (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.sanimed.nl/producten/curative/osteoarthritis/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie en vocht worden niet vermeld. Omega-3 overgenomen uit de apart vermelde ''omega-3-vetzuren 3,4%''. Omega-6 overgenomen uit linolzuur; linolzuur is een omega-6-vetzuur.'
 where id = '084b683d-e7d7-4825-abba-d87e81f6df6c';
delete from public.recipe_nutrition where recipe_version_id = '084b683d-e7d7-4825-abba-d87e81f6df6c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('084b683d-e7d7-4825-abba-d87e81f6df6c', 'protein', 21.2, 'as-fed'),
  ('084b683d-e7d7-4825-abba-d87e81f6df6c', 'fat', 14.7, 'as-fed'),
  ('084b683d-e7d7-4825-abba-d87e81f6df6c', 'fiber', 4.5, 'as-fed'),
  ('084b683d-e7d7-4825-abba-d87e81f6df6c', 'ash', 5.1, 'as-fed'),
  ('084b683d-e7d7-4825-abba-d87e81f6df6c', 'calcium', 0.65, 'as-fed'),
  ('084b683d-e7d7-4825-abba-d87e81f6df6c', 'phosphorus', 0.54, 'as-fed'),
  ('084b683d-e7d7-4825-abba-d87e81f6df6c', 'omega3', 3.4, 'as-fed'),
  ('084b683d-e7d7-4825-abba-d87e81f6df6c', 'omega6', 2.3, 'as-fed');

-- Sanimed — Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.sanimed.nl/producten/preventive/puppy/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie wordt niet vermeld. Omega-6 overgenomen uit linolzuur; linolzuur is een omega-6-vetzuur. Omega-3 wordt niet als totaal vermeld (alleen ALA, EPA en DHA als deelwaarden).'
 where id = 'f93d7487-94ac-499e-9b31-810d39a09abf';
delete from public.recipe_nutrition where recipe_version_id = 'f93d7487-94ac-499e-9b31-810d39a09abf';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f93d7487-94ac-499e-9b31-810d39a09abf', 'protein', 24, 'as-fed'),
  ('f93d7487-94ac-499e-9b31-810d39a09abf', 'fat', 12, 'as-fed'),
  ('f93d7487-94ac-499e-9b31-810d39a09abf', 'fiber', 2.3, 'as-fed'),
  ('f93d7487-94ac-499e-9b31-810d39a09abf', 'ash', 4.6, 'as-fed'),
  ('f93d7487-94ac-499e-9b31-810d39a09abf', 'moisture', 8, 'as-fed'),
  ('f93d7487-94ac-499e-9b31-810d39a09abf', 'calcium', 0.75, 'as-fed'),
  ('f93d7487-94ac-499e-9b31-810d39a09abf', 'phosphorus', 0.6, 'as-fed'),
  ('f93d7487-94ac-499e-9b31-810d39a09abf', 'omega6', 1.8, 'as-fed');

-- Sanimed — Recovery worst (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.sanimed.nl/producten/curative/recovery-worst/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 191 kcal per 100 g; geen omrekening nodig. De bron vermeldt daarnaast 0,803 MJ/100 g. Omega-6 overgenomen uit linolzuur; linolzuur is een omega-6-vetzuur. Omega-3 wordt niet als totaal vermeld (alleen ALA, EPA en DHA als deelwaarden).'
 where id = '75ebfdcc-cd8f-4224-bb31-6d223ecb1644';
delete from public.recipe_nutrition where recipe_version_id = '75ebfdcc-cd8f-4224-bb31-6d223ecb1644';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('75ebfdcc-cd8f-4224-bb31-6d223ecb1644', 'protein', 19.6, 'as-fed'),
  ('75ebfdcc-cd8f-4224-bb31-6d223ecb1644', 'fat', 11.7, 'as-fed'),
  ('75ebfdcc-cd8f-4224-bb31-6d223ecb1644', 'fiber', 0.5, 'as-fed'),
  ('75ebfdcc-cd8f-4224-bb31-6d223ecb1644', 'ash', 2.1, 'as-fed'),
  ('75ebfdcc-cd8f-4224-bb31-6d223ecb1644', 'moisture', 63.8, 'as-fed'),
  ('75ebfdcc-cd8f-4224-bb31-6d223ecb1644', 'kcal', 191, 'as-fed'),
  ('75ebfdcc-cd8f-4224-bb31-6d223ecb1644', 'calcium', 0.35, 'as-fed'),
  ('75ebfdcc-cd8f-4224-bb31-6d223ecb1644', 'phosphorus', 0.31, 'as-fed'),
  ('75ebfdcc-cd8f-4224-bb31-6d223ecb1644', 'omega6', 0.9, 'as-fed');

-- Sanimed — Renal (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.sanimed.nl/producten/curative/renal/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie wordt niet vermeld. Fosfor overgenomen als totaal fosfor; de bron vermeldt daarnaast 0,3% beschikbaar fosfor. Omega-6 overgenomen uit linolzuur; linolzuur is een omega-6-vetzuur. Omega-3 wordt niet als totaal vermeld (alleen ALA, EPA en DHA als deelwaarden).'
 where id = '5f85280b-fc56-4276-9691-13d15e2e54a4';
delete from public.recipe_nutrition where recipe_version_id = '5f85280b-fc56-4276-9691-13d15e2e54a4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5f85280b-fc56-4276-9691-13d15e2e54a4', 'protein', 14.5, 'as-fed'),
  ('5f85280b-fc56-4276-9691-13d15e2e54a4', 'fat', 17, 'as-fed'),
  ('5f85280b-fc56-4276-9691-13d15e2e54a4', 'fiber', 3.2, 'as-fed'),
  ('5f85280b-fc56-4276-9691-13d15e2e54a4', 'ash', 4.3, 'as-fed'),
  ('5f85280b-fc56-4276-9691-13d15e2e54a4', 'moisture', 8, 'as-fed'),
  ('5f85280b-fc56-4276-9691-13d15e2e54a4', 'calcium', 0.5, 'as-fed'),
  ('5f85280b-fc56-4276-9691-13d15e2e54a4', 'phosphorus', 0.4, 'as-fed'),
  ('5f85280b-fc56-4276-9691-13d15e2e54a4', 'omega6', 2.9, 'as-fed');

-- Sanimed — Senior (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.sanimed.nl/producten/preventive/senior/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie wordt niet vermeld. Omega-6 overgenomen uit linolzuur; linolzuur is een omega-6-vetzuur. Omega-3 wordt niet als totaal vermeld (alleen ALA, EPA en DHA als deelwaarden).'
 where id = 'd881f321-b50b-4461-80d4-efd5d467232d';
delete from public.recipe_nutrition where recipe_version_id = 'd881f321-b50b-4461-80d4-efd5d467232d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d881f321-b50b-4461-80d4-efd5d467232d', 'protein', 17, 'as-fed'),
  ('d881f321-b50b-4461-80d4-efd5d467232d', 'fat', 9, 'as-fed'),
  ('d881f321-b50b-4461-80d4-efd5d467232d', 'fiber', 3.7, 'as-fed'),
  ('d881f321-b50b-4461-80d4-efd5d467232d', 'ash', 4.4, 'as-fed'),
  ('d881f321-b50b-4461-80d4-efd5d467232d', 'moisture', 8, 'as-fed'),
  ('d881f321-b50b-4461-80d4-efd5d467232d', 'calcium', 0.65, 'as-fed'),
  ('d881f321-b50b-4461-80d4-efd5d467232d', 'phosphorus', 0.52, 'as-fed'),
  ('d881f321-b50b-4461-80d4-efd5d467232d', 'omega6', 1.4, 'as-fed');

-- Sanimed — Skin/Sensitive (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.sanimed.nl/producten/curative/skin-sensitive/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie wordt niet vermeld. Omega-6 overgenomen uit linolzuur; linolzuur is een omega-6-vetzuur. Omega-3 wordt niet als totaal vermeld (alleen ALA, EPA en DHA als deelwaarden).'
 where id = '3829e649-3b14-48c8-b4ed-7938095afdd7';
delete from public.recipe_nutrition where recipe_version_id = '3829e649-3b14-48c8-b4ed-7938095afdd7';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3829e649-3b14-48c8-b4ed-7938095afdd7', 'protein', 22, 'as-fed'),
  ('3829e649-3b14-48c8-b4ed-7938095afdd7', 'fat', 15, 'as-fed'),
  ('3829e649-3b14-48c8-b4ed-7938095afdd7', 'fiber', 3.6, 'as-fed'),
  ('3829e649-3b14-48c8-b4ed-7938095afdd7', 'ash', 5.6, 'as-fed'),
  ('3829e649-3b14-48c8-b4ed-7938095afdd7', 'moisture', 8, 'as-fed'),
  ('3829e649-3b14-48c8-b4ed-7938095afdd7', 'calcium', 0.8, 'as-fed'),
  ('3829e649-3b14-48c8-b4ed-7938095afdd7', 'phosphorus', 0.6, 'as-fed'),
  ('3829e649-3b14-48c8-b4ed-7938095afdd7', 'omega6', 1.8, 'as-fed');

-- Sanimed — Skin/Sensitive worst (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.sanimed.nl/producten/curative/skin-sensitive-worst/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie, calcium en fosfor worden niet vermeld. Omega-6 overgenomen uit linolzuur; linolzuur is een omega-6-vetzuur. Omega-3 wordt niet als totaal vermeld (alleen alfalinoleenzuur, EPA en DHA als deelwaarden).'
 where id = '3f3eb77a-0355-4a2f-89ab-4d27ad77862b';
delete from public.recipe_nutrition where recipe_version_id = '3f3eb77a-0355-4a2f-89ab-4d27ad77862b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3f3eb77a-0355-4a2f-89ab-4d27ad77862b', 'protein', 11, 'as-fed'),
  ('3f3eb77a-0355-4a2f-89ab-4d27ad77862b', 'fat', 11, 'as-fed'),
  ('3f3eb77a-0355-4a2f-89ab-4d27ad77862b', 'fiber', 1.5, 'as-fed'),
  ('3f3eb77a-0355-4a2f-89ab-4d27ad77862b', 'ash', 4, 'as-fed'),
  ('3f3eb77a-0355-4a2f-89ab-4d27ad77862b', 'moisture', 52, 'as-fed'),
  ('3f3eb77a-0355-4a2f-89ab-4d27ad77862b', 'omega6', 0.8, 'as-fed');

-- Sanimed — Weight Control (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.sanimed.nl/producten/curative/weight-control/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie, omega-3 en omega-6 worden niet vermeld.'
 where id = 'd624a00e-2676-45ef-80ae-854f05b142ac';
delete from public.recipe_nutrition where recipe_version_id = 'd624a00e-2676-45ef-80ae-854f05b142ac';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d624a00e-2676-45ef-80ae-854f05b142ac', 'protein', 30, 'as-fed'),
  ('d624a00e-2676-45ef-80ae-854f05b142ac', 'fat', 5, 'as-fed'),
  ('d624a00e-2676-45ef-80ae-854f05b142ac', 'fiber', 20, 'as-fed'),
  ('d624a00e-2676-45ef-80ae-854f05b142ac', 'ash', 6, 'as-fed'),
  ('d624a00e-2676-45ef-80ae-854f05b142ac', 'moisture', 8, 'as-fed'),
  ('d624a00e-2676-45ef-80ae-854f05b142ac', 'calcium', 0.9, 'as-fed'),
  ('d624a00e-2676-45ef-80ae-854f05b142ac', 'phosphorus', 0.7, 'as-fed');

-- Sanimed — Weight Reduction (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.sanimed.nl/producten/curative/weight-reduction/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie, omega-3 en omega-6 worden niet vermeld. Het vetgehalte is op de bron aangeduid als ''laag verteerbaar''.'
 where id = '95b97ce8-7dfc-4e07-a69f-1758e83a5052';
delete from public.recipe_nutrition where recipe_version_id = '95b97ce8-7dfc-4e07-a69f-1758e83a5052';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('95b97ce8-7dfc-4e07-a69f-1758e83a5052', 'protein', 30, 'as-fed'),
  ('95b97ce8-7dfc-4e07-a69f-1758e83a5052', 'fat', 15, 'as-fed'),
  ('95b97ce8-7dfc-4e07-a69f-1758e83a5052', 'fiber', 20, 'as-fed'),
  ('95b97ce8-7dfc-4e07-a69f-1758e83a5052', 'ash', 6, 'as-fed'),
  ('95b97ce8-7dfc-4e07-a69f-1758e83a5052', 'moisture', 8, 'as-fed'),
  ('95b97ce8-7dfc-4e07-a69f-1758e83a5052', 'calcium', 0.9, 'as-fed'),
  ('95b97ce8-7dfc-4e07-a69f-1758e83a5052', 'phosphorus', 0.7, 'as-fed');

-- Sanimed — Weight Reduction worst (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.sanimed.nl/producten/curative/weight-reduction-worst/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 126 kcal per 100 g; geen omrekening nodig. De bron vermeldt daarnaast 0,531 MJ/100 g. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '9b3cefb4-27ff-4bd3-9d35-98676c0e07cc';
delete from public.recipe_nutrition where recipe_version_id = '9b3cefb4-27ff-4bd3-9d35-98676c0e07cc';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9b3cefb4-27ff-4bd3-9d35-98676c0e07cc', 'protein', 15, 'as-fed'),
  ('9b3cefb4-27ff-4bd3-9d35-98676c0e07cc', 'fat', 4, 'as-fed'),
  ('9b3cefb4-27ff-4bd3-9d35-98676c0e07cc', 'fiber', 7, 'as-fed'),
  ('9b3cefb4-27ff-4bd3-9d35-98676c0e07cc', 'ash', 3, 'as-fed'),
  ('9b3cefb4-27ff-4bd3-9d35-98676c0e07cc', 'moisture', 63, 'as-fed'),
  ('9b3cefb4-27ff-4bd3-9d35-98676c0e07cc', 'kcal', 126, 'as-fed');

-- Greenheart-Premiums — 3D Heart, Liver & Kidney Diet (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://greenheart-premiums.com/greenheart-3d-heart-liver-kidney-diet.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energiewaarde 4205 kcal/kg volgens de fabrikant; omgerekend naar 420,5 kcal per 100 g (delen door 10). Vocht, calcium, fosfor, omega-3 en omega-6 worden op deze pagina niet vermeld.'
 where id = '1b162875-1ed4-482c-a8f7-74037421c499';
delete from public.recipe_nutrition where recipe_version_id = '1b162875-1ed4-482c-a8f7-74037421c499';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1b162875-1ed4-482c-a8f7-74037421c499', 'protein', 14.5, 'as-fed'),
  ('1b162875-1ed4-482c-a8f7-74037421c499', 'fat', 16.5, 'as-fed'),
  ('1b162875-1ed4-482c-a8f7-74037421c499', 'fiber', 2, 'as-fed'),
  ('1b162875-1ed4-482c-a8f7-74037421c499', 'ash', 5.5, 'as-fed'),
  ('1b162875-1ed4-482c-a8f7-74037421c499', 'kcal', 420.5, 'as-fed');

-- Greenheart-Premiums — Anti Allergy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://greenheart-premiums.com/greenheart-anti-allergy.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energiewaarde 3904 kcal/kg volgens de fabrikant; omgerekend naar 390,4 kcal per 100 g (delen door 10). Vocht, calcium, fosfor, omega-3 en omega-6 worden op deze pagina niet vermeld.'
 where id = '004b6c27-f32c-4b9d-b537-ca99f31b6041';
delete from public.recipe_nutrition where recipe_version_id = '004b6c27-f32c-4b9d-b537-ca99f31b6041';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('004b6c27-f32c-4b9d-b537-ca99f31b6041', 'protein', 24.5, 'as-fed'),
  ('004b6c27-f32c-4b9d-b537-ca99f31b6041', 'fat', 14, 'as-fed'),
  ('004b6c27-f32c-4b9d-b537-ca99f31b6041', 'fiber', 2.9, 'as-fed'),
  ('004b6c27-f32c-4b9d-b537-ca99f31b6041', 'ash', 7, 'as-fed'),
  ('004b6c27-f32c-4b9d-b537-ca99f31b6041', 'kcal', 390.4, 'as-fed');

-- Greenheart-Premiums — Large Breeds (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://greenheart-premiums.com/greenheart-large-breeds.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energiewaarde 4035 kcal/kg volgens de fabrikant; omgerekend naar 403,5 kcal per 100 g (delen door 10). Vocht, calcium, fosfor, omega-3 en omega-6 worden op deze pagina niet vermeld.'
 where id = '03ba09ad-b183-4855-ab1c-7dc7f4608d42';
delete from public.recipe_nutrition where recipe_version_id = '03ba09ad-b183-4855-ab1c-7dc7f4608d42';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('03ba09ad-b183-4855-ab1c-7dc7f4608d42', 'protein', 27, 'as-fed'),
  ('03ba09ad-b183-4855-ab1c-7dc7f4608d42', 'fat', 18, 'as-fed'),
  ('03ba09ad-b183-4855-ab1c-7dc7f4608d42', 'fiber', 3, 'as-fed'),
  ('03ba09ad-b183-4855-ab1c-7dc7f4608d42', 'ash', 6.4, 'as-fed'),
  ('03ba09ad-b183-4855-ab1c-7dc7f4608d42', 'kcal', 403.5, 'as-fed');

-- Greenheart-Premiums — Medium Energy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://greenheart-premiums.com/greenheart-medium-energy.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energiewaarde 3918 kcal/kg volgens de fabrikant; omgerekend naar 391,8 kcal per 100 g (delen door 10). Vocht, calcium, fosfor, omega-3 en omega-6 worden op deze pagina niet vermeld.'
 where id = 'b21f4974-f23a-4cc6-b629-eaed48de9bff';
delete from public.recipe_nutrition where recipe_version_id = 'b21f4974-f23a-4cc6-b629-eaed48de9bff';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b21f4974-f23a-4cc6-b629-eaed48de9bff', 'protein', 23, 'as-fed'),
  ('b21f4974-f23a-4cc6-b629-eaed48de9bff', 'fat', 12.3, 'as-fed'),
  ('b21f4974-f23a-4cc6-b629-eaed48de9bff', 'fiber', 4.6, 'as-fed'),
  ('b21f4974-f23a-4cc6-b629-eaed48de9bff', 'ash', 5.3, 'as-fed'),
  ('b21f4974-f23a-4cc6-b629-eaed48de9bff', 'kcal', 391.8, 'as-fed');

-- Greenheart-Premiums — Medium Sensitive Fish (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://greenheart-premiums.com/greenheart-medium-sensitive-fish.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energiewaarde 3819 kcal/kg volgens de fabrikant; omgerekend naar 381,9 kcal per 100 g (delen door 10). Vocht, calcium, fosfor, omega-3 en omega-6 worden op deze pagina niet vermeld.'
 where id = '85fc60dc-24c2-49ad-91d2-79dfb2756500';
delete from public.recipe_nutrition where recipe_version_id = '85fc60dc-24c2-49ad-91d2-79dfb2756500';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('85fc60dc-24c2-49ad-91d2-79dfb2756500', 'protein', 23, 'as-fed'),
  ('85fc60dc-24c2-49ad-91d2-79dfb2756500', 'fat', 11, 'as-fed'),
  ('85fc60dc-24c2-49ad-91d2-79dfb2756500', 'fiber', 4.2, 'as-fed'),
  ('85fc60dc-24c2-49ad-91d2-79dfb2756500', 'ash', 4.7, 'as-fed'),
  ('85fc60dc-24c2-49ad-91d2-79dfb2756500', 'kcal', 381.9, 'as-fed');

-- Greenheart-Premiums — Medium Sensitive Lamb (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://greenheart-premiums.com/greenheart-medium-sensitive-lamb.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energiewaarde 3766 kcal/kg volgens de fabrikant; omgerekend naar 376,6 kcal per 100 g (delen door 10). Vocht, calcium, fosfor, omega-3 en omega-6 worden op deze pagina niet vermeld.'
 where id = 'fe5b0b3e-fa9b-4045-a644-f2e7f6318680';
delete from public.recipe_nutrition where recipe_version_id = 'fe5b0b3e-fa9b-4045-a644-f2e7f6318680';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fe5b0b3e-fa9b-4045-a644-f2e7f6318680', 'protein', 23, 'as-fed'),
  ('fe5b0b3e-fa9b-4045-a644-f2e7f6318680', 'fat', 11, 'as-fed'),
  ('fe5b0b3e-fa9b-4045-a644-f2e7f6318680', 'fiber', 2.6, 'as-fed'),
  ('fe5b0b3e-fa9b-4045-a644-f2e7f6318680', 'ash', 7, 'as-fed'),
  ('fe5b0b3e-fa9b-4045-a644-f2e7f6318680', 'kcal', 376.6, 'as-fed');

-- Greenheart-Premiums — Multi-Effective Fish Oil Rich Diet (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://greenheart-premiums.com/greenheart-multi-effective-fish-oil-rich-diet.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energiewaarde 4802 kcal/kg volgens de fabrikant; omgerekend naar 480,2 kcal per 100 g (delen door 10). Vocht, calcium, fosfor, omega-3 en omega-6 worden op deze pagina niet vermeld.'
 where id = 'cbba3f65-11f4-4d55-a5ed-347ae6146f51';
delete from public.recipe_nutrition where recipe_version_id = 'cbba3f65-11f4-4d55-a5ed-347ae6146f51';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('cbba3f65-11f4-4d55-a5ed-347ae6146f51', 'protein', 31.5, 'as-fed'),
  ('cbba3f65-11f4-4d55-a5ed-347ae6146f51', 'fat', 31, 'as-fed'),
  ('cbba3f65-11f4-4d55-a5ed-347ae6146f51', 'fiber', 1.6, 'as-fed'),
  ('cbba3f65-11f4-4d55-a5ed-347ae6146f51', 'ash', 9.1, 'as-fed'),
  ('cbba3f65-11f4-4d55-a5ed-347ae6146f51', 'kcal', 480.2, 'as-fed');

-- Greenheart-Premiums — Normal Use Light (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://greenheart-premiums.com/greenheart-normal-use-light.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energiewaarde 3576 kcal/kg volgens de fabrikant; omgerekend naar 357,6 kcal per 100 g (delen door 10). Vocht, calcium, fosfor, omega-3 en omega-6 worden op deze pagina niet vermeld.'
 where id = '23ff6d40-f237-44fc-a76b-0ed452450538';
delete from public.recipe_nutrition where recipe_version_id = '23ff6d40-f237-44fc-a76b-0ed452450538';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('23ff6d40-f237-44fc-a76b-0ed452450538', 'protein', 20, 'as-fed'),
  ('23ff6d40-f237-44fc-a76b-0ed452450538', 'fat', 8, 'as-fed'),
  ('23ff6d40-f237-44fc-a76b-0ed452450538', 'fiber', 5.3, 'as-fed'),
  ('23ff6d40-f237-44fc-a76b-0ed452450538', 'ash', 4.8, 'as-fed'),
  ('23ff6d40-f237-44fc-a76b-0ed452450538', 'kcal', 357.6, 'as-fed');

-- Greenheart-Premiums — Optimal Condition Light (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://greenheart-premiums.com/greenheart-optimal-condition-light.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energiewaarde 3429 kcal/kg volgens de fabrikant; omgerekend naar 342,9 kcal per 100 g (delen door 10). Vocht, calcium, fosfor, omega-3 en omega-6 worden op deze pagina niet vermeld.'
 where id = 'e33dabba-aeef-43d0-9b15-0921c161a02c';
delete from public.recipe_nutrition where recipe_version_id = 'e33dabba-aeef-43d0-9b15-0921c161a02c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e33dabba-aeef-43d0-9b15-0921c161a02c', 'protein', 24, 'as-fed'),
  ('e33dabba-aeef-43d0-9b15-0921c161a02c', 'fat', 8.5, 'as-fed'),
  ('e33dabba-aeef-43d0-9b15-0921c161a02c', 'fiber', 7.5, 'as-fed'),
  ('e33dabba-aeef-43d0-9b15-0921c161a02c', 'ash', 7.4, 'as-fed'),
  ('e33dabba-aeef-43d0-9b15-0921c161a02c', 'kcal', 342.9, 'as-fed');

-- Greenheart-Premiums — Power Meat for a Day – Chicken & Rice (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://greenheart-premiums.com/greenheart-meat-for-a-day-box.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De Nederlandse productpagina vermeldt alleen vet 22,3%; de volledige analyse komt van de officiële Greenheart-pagina van hetzelfde product (greenheart.at/power-meat-for-a-day.html), omdat de Nederlandse pagina geen eiwit vermeldt. Energie, omega-3 en omega-6 worden niet vermeld.'
 where id = '1c9d61e4-9112-475b-888f-fe854a2ac21f';
delete from public.recipe_nutrition where recipe_version_id = '1c9d61e4-9112-475b-888f-fe854a2ac21f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1c9d61e4-9112-475b-888f-fe854a2ac21f', 'protein', 12.1, 'as-fed'),
  ('1c9d61e4-9112-475b-888f-fe854a2ac21f', 'fat', 22.3, 'as-fed'),
  ('1c9d61e4-9112-475b-888f-fe854a2ac21f', 'fiber', 0.8, 'as-fed'),
  ('1c9d61e4-9112-475b-888f-fe854a2ac21f', 'ash', 1.3, 'as-fed'),
  ('1c9d61e4-9112-475b-888f-fe854a2ac21f', 'moisture', 53.5, 'as-fed'),
  ('1c9d61e4-9112-475b-888f-fe854a2ac21f', 'calcium', 1, 'as-fed'),
  ('1c9d61e4-9112-475b-888f-fe854a2ac21f', 'phosphorus', 0.6, 'as-fed');

-- Greenheart-Premiums — Puppy All Breeds (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://greenheart-premiums.com/greenheart-puppy-all-breeds.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energiewaarde 4022 kcal/kg volgens de fabrikant; omgerekend naar 402,2 kcal per 100 g (delen door 10). Vocht, calcium, fosfor, omega-3 en omega-6 worden op deze pagina niet vermeld.'
 where id = 'ed2e32ca-1584-49c7-98f5-97b2fda683c4';
delete from public.recipe_nutrition where recipe_version_id = 'ed2e32ca-1584-49c7-98f5-97b2fda683c4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ed2e32ca-1584-49c7-98f5-97b2fda683c4', 'protein', 29, 'as-fed'),
  ('ed2e32ca-1584-49c7-98f5-97b2fda683c4', 'fat', 17.5, 'as-fed'),
  ('ed2e32ca-1584-49c7-98f5-97b2fda683c4', 'fiber', 3, 'as-fed'),
  ('ed2e32ca-1584-49c7-98f5-97b2fda683c4', 'ash', 6.2, 'as-fed'),
  ('ed2e32ca-1584-49c7-98f5-97b2fda683c4', 'kcal', 402.2, 'as-fed');

-- Greenheart-Premiums — Puppy Medium/Large Breeds (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://greenheart-premiums.com/greenheart-puppy-medium-large-breeds.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energiewaarde 4116 kcal/kg volgens de fabrikant; omgerekend naar 411,6 kcal per 100 g (delen door 10). Vocht, calcium, fosfor, omega-3 en omega-6 worden op deze pagina niet vermeld.'
 where id = '36df4b03-2ec1-484a-94ed-184122fb1335';
delete from public.recipe_nutrition where recipe_version_id = '36df4b03-2ec1-484a-94ed-184122fb1335';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('36df4b03-2ec1-484a-94ed-184122fb1335', 'protein', 27, 'as-fed'),
  ('36df4b03-2ec1-484a-94ed-184122fb1335', 'fat', 18, 'as-fed'),
  ('36df4b03-2ec1-484a-94ed-184122fb1335', 'fiber', 3, 'as-fed'),
  ('36df4b03-2ec1-484a-94ed-184122fb1335', 'ash', 6.6, 'as-fed'),
  ('36df4b03-2ec1-484a-94ed-184122fb1335', 'kcal', 411.6, 'as-fed');

-- Greenheart-Premiums — Senior Sensitive Fish (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://greenheart-premiums.com/greenheart-senior-sensitive-fish.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energiewaarde 3788 kcal/kg volgens de fabrikant; omgerekend naar 378,8 kcal per 100 g (delen door 10). Vocht, calcium, fosfor, omega-3 en omega-6 worden op deze pagina niet vermeld.'
 where id = '4d717d33-992e-4f56-bb99-6d2a779b3785';
delete from public.recipe_nutrition where recipe_version_id = '4d717d33-992e-4f56-bb99-6d2a779b3785';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4d717d33-992e-4f56-bb99-6d2a779b3785', 'protein', 19.5, 'as-fed'),
  ('4d717d33-992e-4f56-bb99-6d2a779b3785', 'fat', 12, 'as-fed'),
  ('4d717d33-992e-4f56-bb99-6d2a779b3785', 'fiber', 4.5, 'as-fed'),
  ('4d717d33-992e-4f56-bb99-6d2a779b3785', 'ash', 5.8, 'as-fed'),
  ('4d717d33-992e-4f56-bb99-6d2a779b3785', 'kcal', 378.8, 'as-fed');

-- Greenheart-Premiums — Small Breeds Active (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://greenheart-premiums.com/greenheart-small-breeds-active.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energiewaarde 4116 kcal/kg volgens de fabrikant; omgerekend naar 411,6 kcal per 100 g (delen door 10). Vocht, calcium, fosfor, omega-3 en omega-6 worden op deze pagina niet vermeld.'
 where id = '5f62dce8-03f9-4384-aec5-5c92e85c6fc6';
delete from public.recipe_nutrition where recipe_version_id = '5f62dce8-03f9-4384-aec5-5c92e85c6fc6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5f62dce8-03f9-4384-aec5-5c92e85c6fc6', 'protein', 27, 'as-fed'),
  ('5f62dce8-03f9-4384-aec5-5c92e85c6fc6', 'fat', 18, 'as-fed'),
  ('5f62dce8-03f9-4384-aec5-5c92e85c6fc6', 'fiber', 3, 'as-fed'),
  ('5f62dce8-03f9-4384-aec5-5c92e85c6fc6', 'ash', 6.6, 'as-fed'),
  ('5f62dce8-03f9-4384-aec5-5c92e85c6fc6', 'kcal', 411.6, 'as-fed');

-- Greenheart-Premiums — Small Breeds Hypoallergenic Fish (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://greenheart-premiums.com/greenheart-small-breeds-hypoallergenic-fish.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energiewaarde 3547 kcal/kg volgens de fabrikant; omgerekend naar 354,7 kcal per 100 g (delen door 10). Vocht, calcium, fosfor, omega-3 en omega-6 worden op deze pagina niet vermeld.'
 where id = '1cee2483-4625-4bc8-9daa-ffaa24d09f2c';
delete from public.recipe_nutrition where recipe_version_id = '1cee2483-4625-4bc8-9daa-ffaa24d09f2c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1cee2483-4625-4bc8-9daa-ffaa24d09f2c', 'protein', 25, 'as-fed'),
  ('1cee2483-4625-4bc8-9daa-ffaa24d09f2c', 'fat', 12, 'as-fed'),
  ('1cee2483-4625-4bc8-9daa-ffaa24d09f2c', 'fiber', 4, 'as-fed'),
  ('1cee2483-4625-4bc8-9daa-ffaa24d09f2c', 'ash', 8, 'as-fed'),
  ('1cee2483-4625-4bc8-9daa-ffaa24d09f2c', 'kcal', 354.7, 'as-fed');

-- Greenheart-Premiums — Small Breeds Low Activity (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://greenheart-premiums.com/greenheart-small-breeds-low-activity.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energiewaarde 3695 kcal/kg volgens de fabrikant; omgerekend naar 369,5 kcal per 100 g (delen door 10). Vocht, calcium, fosfor, omega-3 en omega-6 worden op deze pagina niet vermeld.'
 where id = '44740620-cf29-4d4f-b357-04fa1c4e95b0';
delete from public.recipe_nutrition where recipe_version_id = '44740620-cf29-4d4f-b357-04fa1c4e95b0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('44740620-cf29-4d4f-b357-04fa1c4e95b0', 'protein', 28, 'as-fed'),
  ('44740620-cf29-4d4f-b357-04fa1c4e95b0', 'fat', 9.5, 'as-fed'),
  ('44740620-cf29-4d4f-b357-04fa1c4e95b0', 'fiber', 3, 'as-fed'),
  ('44740620-cf29-4d4f-b357-04fa1c4e95b0', 'ash', 6.5, 'as-fed'),
  ('44740620-cf29-4d4f-b357-04fa1c4e95b0', 'kcal', 369.5, 'as-fed');

-- Greenheart-Premiums — Sportline Classic (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://greenheart-premiums.com/greenheart-sportline-classic-2.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energiewaarde 4240 kcal/kg volgens de fabrikant; omgerekend naar 424 kcal per 100 g (delen door 10). Vocht, calcium, fosfor, omega-3 en omega-6 worden op deze pagina niet vermeld.'
 where id = 'd808db81-62b5-443d-aa98-d94535ad3b56';
delete from public.recipe_nutrition where recipe_version_id = 'd808db81-62b5-443d-aa98-d94535ad3b56';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d808db81-62b5-443d-aa98-d94535ad3b56', 'protein', 28.5, 'as-fed'),
  ('d808db81-62b5-443d-aa98-d94535ad3b56', 'fat', 20.8, 'as-fed'),
  ('d808db81-62b5-443d-aa98-d94535ad3b56', 'fiber', 3.5, 'as-fed'),
  ('d808db81-62b5-443d-aa98-d94535ad3b56', 'ash', 6.5, 'as-fed'),
  ('d808db81-62b5-443d-aa98-d94535ad3b56', 'kcal', 424, 'as-fed');

-- Greenheart-Premiums — Sportline Extreme (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://greenheart-premiums.com/greenheart-sportline-extreme.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energiewaarde 4802 kcal/kg volgens de fabrikant; omgerekend naar 480,2 kcal per 100 g (delen door 10). Vocht, calcium, fosfor, omega-3 en omega-6 worden op deze pagina niet vermeld.'
 where id = 'e7a66512-e9c7-4e89-a75f-960da7836f23';
delete from public.recipe_nutrition where recipe_version_id = 'e7a66512-e9c7-4e89-a75f-960da7836f23';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e7a66512-e9c7-4e89-a75f-960da7836f23', 'protein', 31.5, 'as-fed'),
  ('e7a66512-e9c7-4e89-a75f-960da7836f23', 'fat', 31, 'as-fed'),
  ('e7a66512-e9c7-4e89-a75f-960da7836f23', 'fiber', 1.6, 'as-fed'),
  ('e7a66512-e9c7-4e89-a75f-960da7836f23', 'ash', 9.1, 'as-fed'),
  ('e7a66512-e9c7-4e89-a75f-960da7836f23', 'kcal', 480.2, 'as-fed');

-- Greenheart-Premiums — Sportline Grain Free (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://greenheart-premiums.com/greenheart-sportline-grainfree.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energiewaarde 4801 kcal/kg volgens de fabrikant; omgerekend naar 480,1 kcal per 100 g (delen door 10). Vocht, calcium, fosfor, omega-3 en omega-6 worden op deze pagina niet vermeld.'
 where id = '5edcee15-3cfc-4ac4-b7eb-99227b5868f6';
delete from public.recipe_nutrition where recipe_version_id = '5edcee15-3cfc-4ac4-b7eb-99227b5868f6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5edcee15-3cfc-4ac4-b7eb-99227b5868f6', 'protein', 31, 'as-fed'),
  ('5edcee15-3cfc-4ac4-b7eb-99227b5868f6', 'fat', 30.5, 'as-fed'),
  ('5edcee15-3cfc-4ac4-b7eb-99227b5868f6', 'fiber', 2, 'as-fed'),
  ('5edcee15-3cfc-4ac4-b7eb-99227b5868f6', 'ash', 8.1, 'as-fed'),
  ('5edcee15-3cfc-4ac4-b7eb-99227b5868f6', 'kcal', 480.1, 'as-fed');

-- Greenheart-Premiums — Sportline Summerstyle (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://greenheart-premiums.com/greenheart-sportline-summerstyle-2.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energiewaarde 4035 kcal/kg volgens de fabrikant; omgerekend naar 403,5 kcal per 100 g (delen door 10). Vocht, calcium, fosfor, omega-3 en omega-6 worden op deze pagina niet vermeld.'
 where id = '2c565cd6-57bd-4afa-96ed-938a11fc89c2';
delete from public.recipe_nutrition where recipe_version_id = '2c565cd6-57bd-4afa-96ed-938a11fc89c2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2c565cd6-57bd-4afa-96ed-938a11fc89c2', 'protein', 27, 'as-fed'),
  ('2c565cd6-57bd-4afa-96ed-938a11fc89c2', 'fat', 18, 'as-fed'),
  ('2c565cd6-57bd-4afa-96ed-938a11fc89c2', 'fiber', 3, 'as-fed'),
  ('2c565cd6-57bd-4afa-96ed-938a11fc89c2', 'ash', 6.4, 'as-fed'),
  ('2c565cd6-57bd-4afa-96ed-938a11fc89c2', 'kcal', 403.5, 'as-fed');

-- Smuldier — Complete maaltijd Eend (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://smuldier.nl/product/smuldier-complete-maaltijd-400g-eend/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 268 kcal per 100 g; geen omrekening nodig. Calcium en fosfor omgerekend van g/kg naar % (delen door 10). Omega-3 en omega-6 worden niet vermeld.'
 where id = 'cc9be4bd-995d-45ef-ac25-2bdc51f41c15';
delete from public.recipe_nutrition where recipe_version_id = 'cc9be4bd-995d-45ef-ac25-2bdc51f41c15';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('cc9be4bd-995d-45ef-ac25-2bdc51f41c15', 'protein', 14.4, 'as-fed'),
  ('cc9be4bd-995d-45ef-ac25-2bdc51f41c15', 'fat', 23.2, 'as-fed'),
  ('cc9be4bd-995d-45ef-ac25-2bdc51f41c15', 'fiber', 0.2, 'as-fed'),
  ('cc9be4bd-995d-45ef-ac25-2bdc51f41c15', 'ash', 3, 'as-fed'),
  ('cc9be4bd-995d-45ef-ac25-2bdc51f41c15', 'moisture', 58.7, 'as-fed'),
  ('cc9be4bd-995d-45ef-ac25-2bdc51f41c15', 'kcal', 268, 'as-fed'),
  ('cc9be4bd-995d-45ef-ac25-2bdc51f41c15', 'calcium', 0.733, 'as-fed'),
  ('cc9be4bd-995d-45ef-ac25-2bdc51f41c15', 'phosphorus', 0.478, 'as-fed');

-- Smuldier — Complete maaltijd Eend & Rund (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://smuldier.nl/product/smuldier-complete-maaltijd-400g-eend-rund/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 227 kcal per 100 g; geen omrekening nodig. Calcium en fosfor omgerekend van g/kg naar % (delen door 10). Omega-3 en omega-6 worden niet vermeld.'
 where id = '31fd6a71-eda6-421f-9471-634a26ca61ff';
delete from public.recipe_nutrition where recipe_version_id = '31fd6a71-eda6-421f-9471-634a26ca61ff';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('31fd6a71-eda6-421f-9471-634a26ca61ff', 'protein', 14.4, 'as-fed'),
  ('31fd6a71-eda6-421f-9471-634a26ca61ff', 'fat', 18.8, 'as-fed'),
  ('31fd6a71-eda6-421f-9471-634a26ca61ff', 'fiber', 0.2, 'as-fed'),
  ('31fd6a71-eda6-421f-9471-634a26ca61ff', 'ash', 3.9, 'as-fed'),
  ('31fd6a71-eda6-421f-9471-634a26ca61ff', 'moisture', 62.5, 'as-fed'),
  ('31fd6a71-eda6-421f-9471-634a26ca61ff', 'kcal', 227, 'as-fed'),
  ('31fd6a71-eda6-421f-9471-634a26ca61ff', 'calcium', 1.05, 'as-fed'),
  ('31fd6a71-eda6-421f-9471-634a26ca61ff', 'phosphorus', 0.64, 'as-fed');

-- Smuldier — Complete maaltijd Hart (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://smuldier.nl/product/hart-complete-maaltijd-400g/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 212 kcal per 100 g; geen omrekening nodig. Calcium en fosfor omgerekend van g/kg naar % (delen door 10). Omega-3 en omega-6 worden niet vermeld.'
 where id = 'cefa71a7-c0e6-4552-af53-dac4c78c2ec2';
delete from public.recipe_nutrition where recipe_version_id = 'cefa71a7-c0e6-4552-af53-dac4c78c2ec2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('cefa71a7-c0e6-4552-af53-dac4c78c2ec2', 'protein', 14.9, 'as-fed'),
  ('cefa71a7-c0e6-4552-af53-dac4c78c2ec2', 'fat', 16.9, 'as-fed'),
  ('cefa71a7-c0e6-4552-af53-dac4c78c2ec2', 'fiber', 0.4, 'as-fed'),
  ('cefa71a7-c0e6-4552-af53-dac4c78c2ec2', 'ash', 2.9, 'as-fed'),
  ('cefa71a7-c0e6-4552-af53-dac4c78c2ec2', 'moisture', 65, 'as-fed'),
  ('cefa71a7-c0e6-4552-af53-dac4c78c2ec2', 'kcal', 212, 'as-fed'),
  ('cefa71a7-c0e6-4552-af53-dac4c78c2ec2', 'calcium', 0.68, 'as-fed'),
  ('cefa71a7-c0e6-4552-af53-dac4c78c2ec2', 'phosphorus', 0.47, 'as-fed');

-- Smuldier — Complete maaltijd Kip (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://smuldier.nl/product/kip-complete-maaltijd-400g/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 224 kcal per 100 g; geen omrekening nodig. Calcium en fosfor omgerekend van g/kg naar % (delen door 10). Omega-3 en omega-6 worden niet vermeld.'
 where id = '51e9f829-2c83-49f6-861d-6ed736f02104';
delete from public.recipe_nutrition where recipe_version_id = '51e9f829-2c83-49f6-861d-6ed736f02104';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('51e9f829-2c83-49f6-861d-6ed736f02104', 'protein', 14.3, 'as-fed'),
  ('51e9f829-2c83-49f6-861d-6ed736f02104', 'fat', 17.5, 'as-fed'),
  ('51e9f829-2c83-49f6-861d-6ed736f02104', 'fiber', 0.3, 'as-fed'),
  ('51e9f829-2c83-49f6-861d-6ed736f02104', 'ash', 3.1, 'as-fed'),
  ('51e9f829-2c83-49f6-861d-6ed736f02104', 'moisture', 62.5, 'as-fed'),
  ('51e9f829-2c83-49f6-861d-6ed736f02104', 'kcal', 224, 'as-fed'),
  ('51e9f829-2c83-49f6-861d-6ed736f02104', 'calcium', 0.77, 'as-fed'),
  ('51e9f829-2c83-49f6-861d-6ed736f02104', 'phosphorus', 0.5, 'as-fed');

-- Smuldier — Complete maaltijd Kip met Groenten (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://smuldier.nl/product/smuldier-complete-maaltijd-4x60g-kip-met-groenten/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 198 kcal per 100 g; geen omrekening nodig. Calcium en fosfor omgerekend van g/kg naar % (delen door 10). Omega-3 en omega-6 worden niet vermeld.'
 where id = '72a963e0-775a-4d80-a9c8-283bc9109d58';
delete from public.recipe_nutrition where recipe_version_id = '72a963e0-775a-4d80-a9c8-283bc9109d58';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('72a963e0-775a-4d80-a9c8-283bc9109d58', 'protein', 10, 'as-fed'),
  ('72a963e0-775a-4d80-a9c8-283bc9109d58', 'fat', 13.4, 'as-fed'),
  ('72a963e0-775a-4d80-a9c8-283bc9109d58', 'fiber', 0.6, 'as-fed'),
  ('72a963e0-775a-4d80-a9c8-283bc9109d58', 'ash', 2.8, 'as-fed'),
  ('72a963e0-775a-4d80-a9c8-283bc9109d58', 'moisture', 63.8, 'as-fed'),
  ('72a963e0-775a-4d80-a9c8-283bc9109d58', 'kcal', 198, 'as-fed'),
  ('72a963e0-775a-4d80-a9c8-283bc9109d58', 'calcium', 0.794, 'as-fed'),
  ('72a963e0-775a-4d80-a9c8-283bc9109d58', 'phosphorus', 0.485, 'as-fed');

-- Smuldier — Complete maaltijd Lam (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://smuldier.nl/product/smuldier-complete-maaltijd-400g-lam/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 176 kcal per 100 g; geen omrekening nodig. Calcium en fosfor omgerekend van g/kg naar % (delen door 10). Omega-3 en omega-6 worden niet vermeld.'
 where id = '0a65254d-8272-4b08-9e3a-e3a826b64a98';
delete from public.recipe_nutrition where recipe_version_id = '0a65254d-8272-4b08-9e3a-e3a826b64a98';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0a65254d-8272-4b08-9e3a-e3a826b64a98', 'protein', 14.4, 'as-fed'),
  ('0a65254d-8272-4b08-9e3a-e3a826b64a98', 'fat', 13.1, 'as-fed'),
  ('0a65254d-8272-4b08-9e3a-e3a826b64a98', 'fiber', 0.5, 'as-fed'),
  ('0a65254d-8272-4b08-9e3a-e3a826b64a98', 'ash', 2.7, 'as-fed'),
  ('0a65254d-8272-4b08-9e3a-e3a826b64a98', 'moisture', 69.1, 'as-fed'),
  ('0a65254d-8272-4b08-9e3a-e3a826b64a98', 'kcal', 176, 'as-fed'),
  ('0a65254d-8272-4b08-9e3a-e3a826b64a98', 'calcium', 0.64, 'as-fed'),
  ('0a65254d-8272-4b08-9e3a-e3a826b64a98', 'phosphorus', 0.433, 'as-fed');

-- Smuldier — Complete maaltijd Lam met Rijst (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://smuldier.nl/product/lam-met-rijst-complete-maaltijd-4x60g-2/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 217 kcal per 100 g; geen omrekening nodig. Calcium en fosfor omgerekend van g/kg naar % (delen door 10). Omega-3 en omega-6 worden niet vermeld.'
 where id = '2192b426-b825-4cb1-bb93-66ad269f9dae';
delete from public.recipe_nutrition where recipe_version_id = '2192b426-b825-4cb1-bb93-66ad269f9dae';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2192b426-b825-4cb1-bb93-66ad269f9dae', 'protein', 12.1, 'as-fed'),
  ('2192b426-b825-4cb1-bb93-66ad269f9dae', 'fat', 15.4, 'as-fed'),
  ('2192b426-b825-4cb1-bb93-66ad269f9dae', 'fiber', 0.4, 'as-fed'),
  ('2192b426-b825-4cb1-bb93-66ad269f9dae', 'ash', 3.7, 'as-fed'),
  ('2192b426-b825-4cb1-bb93-66ad269f9dae', 'moisture', 61, 'as-fed'),
  ('2192b426-b825-4cb1-bb93-66ad269f9dae', 'kcal', 217, 'as-fed'),
  ('2192b426-b825-4cb1-bb93-66ad269f9dae', 'calcium', 1.06, 'as-fed'),
  ('2192b426-b825-4cb1-bb93-66ad269f9dae', 'phosphorus', 0.61, 'as-fed');

-- Smuldier — Complete maaltijd Pens & Hart (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://smuldier.nl/product/pens-hart-complete-maaltijd-400g/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 200 kcal per 100 g; geen omrekening nodig. Calcium en fosfor omgerekend van g/kg naar % (delen door 10). Omega-3 en omega-6 worden niet vermeld.'
 where id = '13f31f87-501f-43fe-ba59-244a68e0f629';
delete from public.recipe_nutrition where recipe_version_id = '13f31f87-501f-43fe-ba59-244a68e0f629';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('13f31f87-501f-43fe-ba59-244a68e0f629', 'protein', 14.4, 'as-fed'),
  ('13f31f87-501f-43fe-ba59-244a68e0f629', 'fat', 15.9, 'as-fed'),
  ('13f31f87-501f-43fe-ba59-244a68e0f629', 'fiber', 0.5, 'as-fed'),
  ('13f31f87-501f-43fe-ba59-244a68e0f629', 'ash', 2.6, 'as-fed'),
  ('13f31f87-501f-43fe-ba59-244a68e0f629', 'moisture', 67, 'as-fed'),
  ('13f31f87-501f-43fe-ba59-244a68e0f629', 'kcal', 200, 'as-fed'),
  ('13f31f87-501f-43fe-ba59-244a68e0f629', 'calcium', 0.52, 'as-fed'),
  ('13f31f87-501f-43fe-ba59-244a68e0f629', 'phosphorus', 0.38, 'as-fed');

-- Smuldier — Complete maaltijd Pens & Vlees (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://smuldier.nl/product/smuldier-complete-maaltijd-400g-pens-vlees/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 190 kcal per 100 g; geen omrekening nodig. Calcium en fosfor omgerekend van g/kg naar % (delen door 10). Omega-3 en omega-6 worden niet vermeld.'
 where id = 'f2178ce6-7295-4821-a189-84bb6ee8935c';
delete from public.recipe_nutrition where recipe_version_id = 'f2178ce6-7295-4821-a189-84bb6ee8935c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f2178ce6-7295-4821-a189-84bb6ee8935c', 'protein', 14.4, 'as-fed'),
  ('f2178ce6-7295-4821-a189-84bb6ee8935c', 'fat', 14.6, 'as-fed'),
  ('f2178ce6-7295-4821-a189-84bb6ee8935c', 'fiber', 0.5, 'as-fed'),
  ('f2178ce6-7295-4821-a189-84bb6ee8935c', 'ash', 2.6, 'as-fed'),
  ('f2178ce6-7295-4821-a189-84bb6ee8935c', 'moisture', 67.7, 'as-fed'),
  ('f2178ce6-7295-4821-a189-84bb6ee8935c', 'kcal', 190, 'as-fed'),
  ('f2178ce6-7295-4821-a189-84bb6ee8935c', 'calcium', 0.5, 'as-fed'),
  ('f2178ce6-7295-4821-a189-84bb6ee8935c', 'phosphorus', 0.38, 'as-fed');

-- Smuldier — Complete maaltijd Rund met Groenten (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://smuldier.nl/product/rund-met-groenten-complete-maaltijd-4x60g/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 228 kcal per 100 g; geen omrekening nodig. Calcium en fosfor omgerekend van g/kg naar % (delen door 10). Omega-3 en omega-6 worden niet vermeld.'
 where id = 'c79a66e9-4ddd-47e5-8595-fb5d21856725';
delete from public.recipe_nutrition where recipe_version_id = 'c79a66e9-4ddd-47e5-8595-fb5d21856725';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c79a66e9-4ddd-47e5-8595-fb5d21856725', 'protein', 10.8, 'as-fed'),
  ('c79a66e9-4ddd-47e5-8595-fb5d21856725', 'fat', 17.1, 'as-fed'),
  ('c79a66e9-4ddd-47e5-8595-fb5d21856725', 'fiber', 0.5, 'as-fed'),
  ('c79a66e9-4ddd-47e5-8595-fb5d21856725', 'ash', 1.9, 'as-fed'),
  ('c79a66e9-4ddd-47e5-8595-fb5d21856725', 'moisture', 61.8, 'as-fed'),
  ('c79a66e9-4ddd-47e5-8595-fb5d21856725', 'kcal', 228, 'as-fed'),
  ('c79a66e9-4ddd-47e5-8595-fb5d21856725', 'calcium', 0.35, 'as-fed'),
  ('c79a66e9-4ddd-47e5-8595-fb5d21856725', 'phosphorus', 0.26, 'as-fed');

-- Smuldier — Complete maaltijd Rundvlees (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://smuldier.nl/product/smuldier-complete-maaltijd-400g-rundvlees-2/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 222 kcal per 100 g; geen omrekening nodig. Calcium en fosfor omgerekend van g/kg naar % (delen door 10). Omega-3 en omega-6 worden niet vermeld.'
 where id = 'e4ca4bbc-bec4-4268-93af-681ed829f238';
delete from public.recipe_nutrition where recipe_version_id = 'e4ca4bbc-bec4-4268-93af-681ed829f238';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e4ca4bbc-bec4-4268-93af-681ed829f238', 'protein', 14.3, 'as-fed'),
  ('e4ca4bbc-bec4-4268-93af-681ed829f238', 'fat', 18.3, 'as-fed'),
  ('e4ca4bbc-bec4-4268-93af-681ed829f238', 'fiber', 0.3, 'as-fed'),
  ('e4ca4bbc-bec4-4268-93af-681ed829f238', 'ash', 3.3, 'as-fed'),
  ('e4ca4bbc-bec4-4268-93af-681ed829f238', 'moisture', 63.7, 'as-fed'),
  ('e4ca4bbc-bec4-4268-93af-681ed829f238', 'kcal', 222, 'as-fed'),
  ('e4ca4bbc-bec4-4268-93af-681ed829f238', 'calcium', 0.87, 'as-fed'),
  ('e4ca4bbc-bec4-4268-93af-681ed829f238', 'phosphorus', 0.54, 'as-fed');

-- Smuldier — Complete maaltijd Vlees (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://smuldier.nl/product/smuldier-complete-maaltijd-400g-vlees/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 192 kcal per 100 g; geen omrekening nodig. Calcium en fosfor omgerekend van g/kg naar % (delen door 10). Omega-3 en omega-6 worden niet vermeld.'
 where id = 'c0139d10-f4b2-49b8-83cc-829e0e27b9be';
delete from public.recipe_nutrition where recipe_version_id = 'c0139d10-f4b2-49b8-83cc-829e0e27b9be';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c0139d10-f4b2-49b8-83cc-829e0e27b9be', 'protein', 14.3, 'as-fed'),
  ('c0139d10-f4b2-49b8-83cc-829e0e27b9be', 'fat', 15.1, 'as-fed'),
  ('c0139d10-f4b2-49b8-83cc-829e0e27b9be', 'fiber', 0.3, 'as-fed'),
  ('c0139d10-f4b2-49b8-83cc-829e0e27b9be', 'ash', 3.2, 'as-fed'),
  ('c0139d10-f4b2-49b8-83cc-829e0e27b9be', 'moisture', 67.3, 'as-fed'),
  ('c0139d10-f4b2-49b8-83cc-829e0e27b9be', 'kcal', 192, 'as-fed'),
  ('c0139d10-f4b2-49b8-83cc-829e0e27b9be', 'calcium', 0.78, 'as-fed'),
  ('c0139d10-f4b2-49b8-83cc-829e0e27b9be', 'phosphorus', 0.5, 'as-fed');

-- Smuldier — Vers vlees Brokjes Complete maaltijd Kip met Groenten (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://smuldier.nl/product/vers-vlees-brokjes-kip-met-groenten-300g/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie wordt op deze pagina niet vermeld. Calcium en fosfor omgerekend van g/kg naar % (delen door 10). Omega-3 en omega-6 worden niet vermeld.'
 where id = '733a1841-44a6-4f81-a5f0-298bfa557555';
delete from public.recipe_nutrition where recipe_version_id = '733a1841-44a6-4f81-a5f0-298bfa557555';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('733a1841-44a6-4f81-a5f0-298bfa557555', 'protein', 11.2, 'as-fed'),
  ('733a1841-44a6-4f81-a5f0-298bfa557555', 'fat', 12.8, 'as-fed'),
  ('733a1841-44a6-4f81-a5f0-298bfa557555', 'fiber', 0.3, 'as-fed'),
  ('733a1841-44a6-4f81-a5f0-298bfa557555', 'ash', 3.1, 'as-fed'),
  ('733a1841-44a6-4f81-a5f0-298bfa557555', 'moisture', 62.9, 'as-fed'),
  ('733a1841-44a6-4f81-a5f0-298bfa557555', 'calcium', 0.73, 'as-fed'),
  ('733a1841-44a6-4f81-a5f0-298bfa557555', 'phosphorus', 0.45, 'as-fed');

-- Smuldier — Vers vlees Brokjes Complete maaltijd Lam met Rijst (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://smuldier.nl/product/vers-vlees-brokjes-lam-met-rijst-300g/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie wordt op deze pagina niet vermeld. Calcium en fosfor omgerekend van g/kg naar % (delen door 10). Omega-3 en omega-6 worden niet vermeld.'
 where id = '62e9f66e-7a6f-4e0e-abbf-9d6397ecebd1';
delete from public.recipe_nutrition where recipe_version_id = '62e9f66e-7a6f-4e0e-abbf-9d6397ecebd1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('62e9f66e-7a6f-4e0e-abbf-9d6397ecebd1', 'protein', 13.3, 'as-fed'),
  ('62e9f66e-7a6f-4e0e-abbf-9d6397ecebd1', 'fat', 13.4, 'as-fed'),
  ('62e9f66e-7a6f-4e0e-abbf-9d6397ecebd1', 'fiber', 0.4, 'as-fed'),
  ('62e9f66e-7a6f-4e0e-abbf-9d6397ecebd1', 'ash', 3.4, 'as-fed'),
  ('62e9f66e-7a6f-4e0e-abbf-9d6397ecebd1', 'moisture', 64.7, 'as-fed'),
  ('62e9f66e-7a6f-4e0e-abbf-9d6397ecebd1', 'calcium', 0.9, 'as-fed'),
  ('62e9f66e-7a6f-4e0e-abbf-9d6397ecebd1', 'phosphorus', 0.55, 'as-fed');

-- Smuldier — Vers vlees Brokjes Complete maaltijd Rund met Groenten (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://smuldier.nl/product/vers-vlees-brokjes-rund-met-groenten-300g/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie wordt op deze pagina niet vermeld. Calcium en fosfor omgerekend van g/kg naar % (delen door 10). Omega-3 en omega-6 worden niet vermeld.'
 where id = '9e430750-1564-4676-9cad-00ebd2a047d3';
delete from public.recipe_nutrition where recipe_version_id = '9e430750-1564-4676-9cad-00ebd2a047d3';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9e430750-1564-4676-9cad-00ebd2a047d3', 'protein', 12.1, 'as-fed'),
  ('9e430750-1564-4676-9cad-00ebd2a047d3', 'fat', 14.9, 'as-fed'),
  ('9e430750-1564-4676-9cad-00ebd2a047d3', 'fiber', 0.4, 'as-fed'),
  ('9e430750-1564-4676-9cad-00ebd2a047d3', 'ash', 3.3, 'as-fed'),
  ('9e430750-1564-4676-9cad-00ebd2a047d3', 'moisture', 66.9, 'as-fed'),
  ('9e430750-1564-4676-9cad-00ebd2a047d3', 'calcium', 0.36, 'as-fed'),
  ('9e430750-1564-4676-9cad-00ebd2a047d3', 'phosphorus', 0.27, 'as-fed');

-- Smuldier — Vers vlees Maaltijd Hart (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://smuldier.nl/product/smuldier-vers-vlees-maaltijd-300g-hart/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 127 kcal per 100 g; geen omrekening nodig. Calcium en fosfor omgerekend van g/kg naar % (delen door 10). Omega-3 en omega-6 worden niet vermeld.'
 where id = '6714d721-bb7e-46ea-bbf4-3601004d9d99';
delete from public.recipe_nutrition where recipe_version_id = '6714d721-bb7e-46ea-bbf4-3601004d9d99';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6714d721-bb7e-46ea-bbf4-3601004d9d99', 'protein', 10.8, 'as-fed'),
  ('6714d721-bb7e-46ea-bbf4-3601004d9d99', 'fat', 8.5, 'as-fed'),
  ('6714d721-bb7e-46ea-bbf4-3601004d9d99', 'fiber', 0.4, 'as-fed'),
  ('6714d721-bb7e-46ea-bbf4-3601004d9d99', 'ash', 2.2, 'as-fed'),
  ('6714d721-bb7e-46ea-bbf4-3601004d9d99', 'moisture', 75, 'as-fed'),
  ('6714d721-bb7e-46ea-bbf4-3601004d9d99', 'kcal', 127, 'as-fed'),
  ('6714d721-bb7e-46ea-bbf4-3601004d9d99', 'calcium', 0.25, 'as-fed'),
  ('6714d721-bb7e-46ea-bbf4-3601004d9d99', 'phosphorus', 0.22, 'as-fed');

-- Smuldier — Vers vlees Maaltijd Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://smuldier.nl/product/smuldier-vers-vlees-maaltijd-300g-kip/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 92 kcal per 100 g; geen omrekening nodig. Calcium en fosfor omgerekend van g/kg naar % (delen door 10). Omega-3 en omega-6 worden niet vermeld.'
 where id = '5f8597e2-19af-4c34-a3e5-d9be7b57fed0';
delete from public.recipe_nutrition where recipe_version_id = '5f8597e2-19af-4c34-a3e5-d9be7b57fed0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5f8597e2-19af-4c34-a3e5-d9be7b57fed0', 'protein', 10.2, 'as-fed'),
  ('5f8597e2-19af-4c34-a3e5-d9be7b57fed0', 'fat', 5.2, 'as-fed'),
  ('5f8597e2-19af-4c34-a3e5-d9be7b57fed0', 'fiber', 0.4, 'as-fed'),
  ('5f8597e2-19af-4c34-a3e5-d9be7b57fed0', 'ash', 2.5, 'as-fed'),
  ('5f8597e2-19af-4c34-a3e5-d9be7b57fed0', 'moisture', 80, 'as-fed'),
  ('5f8597e2-19af-4c34-a3e5-d9be7b57fed0', 'kcal', 92, 'as-fed'),
  ('5f8597e2-19af-4c34-a3e5-d9be7b57fed0', 'calcium', 0.25, 'as-fed'),
  ('5f8597e2-19af-4c34-a3e5-d9be7b57fed0', 'phosphorus', 0.21, 'as-fed');

-- Smuldier — Vers vlees Maaltijd Rund (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://smuldier.nl/product/smuldier-vers-vlees-maaltijd-300g-rund/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 127 kcal per 100 g; geen omrekening nodig. Calcium en fosfor omgerekend van g/kg naar % (delen door 10). Omega-3 en omega-6 worden niet vermeld.'
 where id = '003c3266-b61b-47a4-aa6f-ba19c6d43aee';
delete from public.recipe_nutrition where recipe_version_id = '003c3266-b61b-47a4-aa6f-ba19c6d43aee';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('003c3266-b61b-47a4-aa6f-ba19c6d43aee', 'protein', 10.8, 'as-fed'),
  ('003c3266-b61b-47a4-aa6f-ba19c6d43aee', 'fat', 8.5, 'as-fed'),
  ('003c3266-b61b-47a4-aa6f-ba19c6d43aee', 'fiber', 0.4, 'as-fed'),
  ('003c3266-b61b-47a4-aa6f-ba19c6d43aee', 'ash', 2.2, 'as-fed'),
  ('003c3266-b61b-47a4-aa6f-ba19c6d43aee', 'moisture', 75, 'as-fed'),
  ('003c3266-b61b-47a4-aa6f-ba19c6d43aee', 'kcal', 127, 'as-fed'),
  ('003c3266-b61b-47a4-aa6f-ba19c6d43aee', 'calcium', 0.25, 'as-fed'),
  ('003c3266-b61b-47a4-aa6f-ba19c6d43aee', 'phosphorus', 0.22, 'as-fed');

-- Smuldier — Vers vlees Maaltijd Runderpens (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://smuldier.nl/product/smuldier-vers-vlees-maaltijd-300g-runderpens/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron als 120 kcal per 100 g; geen omrekening nodig. Calcium en fosfor omgerekend van g/kg naar % (delen door 10). Omega-3 en omega-6 worden niet vermeld.'
 where id = 'c993f2d0-b566-428c-a29c-39dcd72363d7';
delete from public.recipe_nutrition where recipe_version_id = 'c993f2d0-b566-428c-a29c-39dcd72363d7';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c993f2d0-b566-428c-a29c-39dcd72363d7', 'protein', 10.5, 'as-fed'),
  ('c993f2d0-b566-428c-a29c-39dcd72363d7', 'fat', 7.8, 'as-fed'),
  ('c993f2d0-b566-428c-a29c-39dcd72363d7', 'fiber', 0.4, 'as-fed'),
  ('c993f2d0-b566-428c-a29c-39dcd72363d7', 'ash', 2.2, 'as-fed'),
  ('c993f2d0-b566-428c-a29c-39dcd72363d7', 'moisture', 76, 'as-fed'),
  ('c993f2d0-b566-428c-a29c-39dcd72363d7', 'kcal', 120, 'as-fed'),
  ('c993f2d0-b566-428c-a29c-39dcd72363d7', 'calcium', 0.25, 'as-fed'),
  ('c993f2d0-b566-428c-a29c-39dcd72363d7', 'phosphorus', 0.22, 'as-fed');

commit;
