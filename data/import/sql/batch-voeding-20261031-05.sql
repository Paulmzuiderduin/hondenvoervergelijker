begin;

-- Yarrah — Biologisch Adult hondenvoer met kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.yarrah.com/biologisch-adult-hondenvoer-met-kip/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De 344,50 kcal/100 g stond direct op de pagina; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '946de620-c48c-47f0-844a-01a22ff8e6a0';
delete from public.recipe_nutrition where recipe_version_id = '946de620-c48c-47f0-844a-01a22ff8e6a0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('946de620-c48c-47f0-844a-01a22ff8e6a0', 'protein', 25, 'as-fed'),
  ('946de620-c48c-47f0-844a-01a22ff8e6a0', 'fat', 13, 'as-fed'),
  ('946de620-c48c-47f0-844a-01a22ff8e6a0', 'fiber', 4.2, 'as-fed'),
  ('946de620-c48c-47f0-844a-01a22ff8e6a0', 'ash', 7.2, 'as-fed'),
  ('946de620-c48c-47f0-844a-01a22ff8e6a0', 'moisture', 8, 'as-fed'),
  ('946de620-c48c-47f0-844a-01a22ff8e6a0', 'kcal', 344.5, 'as-fed'),
  ('946de620-c48c-47f0-844a-01a22ff8e6a0', 'calcium', 1.1, 'as-fed'),
  ('946de620-c48c-47f0-844a-01a22ff8e6a0', 'phosphorus', 0.9, 'as-fed');

-- Yarrah — Biologisch Grain-Free hondenvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.yarrah.com/biologisch-grain-free-hondenvoer-2kg/17064/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De 346,50 kcal/100 g stond direct op de pagina; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'd88cd801-fe50-4f12-b13e-60bad3c614e9';
delete from public.recipe_nutrition where recipe_version_id = 'd88cd801-fe50-4f12-b13e-60bad3c614e9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d88cd801-fe50-4f12-b13e-60bad3c614e9', 'protein', 28, 'as-fed'),
  ('d88cd801-fe50-4f12-b13e-60bad3c614e9', 'fat', 15, 'as-fed'),
  ('d88cd801-fe50-4f12-b13e-60bad3c614e9', 'fiber', 5.1, 'as-fed'),
  ('d88cd801-fe50-4f12-b13e-60bad3c614e9', 'ash', 6.2, 'as-fed'),
  ('d88cd801-fe50-4f12-b13e-60bad3c614e9', 'moisture', 8, 'as-fed'),
  ('d88cd801-fe50-4f12-b13e-60bad3c614e9', 'kcal', 346.5, 'as-fed'),
  ('d88cd801-fe50-4f12-b13e-60bad3c614e9', 'calcium', 1.3, 'as-fed'),
  ('d88cd801-fe50-4f12-b13e-60bad3c614e9', 'phosphorus', 0.9, 'as-fed');

-- Yarrah — Biologisch hondenvoer chunks met kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.yarrah.com/biologisch-hondenvoer-chunks-met-kip/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De 89 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '9ab27d74-aa42-4a17-8624-5245bd1b43a1';
delete from public.recipe_nutrition where recipe_version_id = '9ab27d74-aa42-4a17-8624-5245bd1b43a1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9ab27d74-aa42-4a17-8624-5245bd1b43a1', 'protein', 7, 'as-fed'),
  ('9ab27d74-aa42-4a17-8624-5245bd1b43a1', 'fat', 5, 'as-fed'),
  ('9ab27d74-aa42-4a17-8624-5245bd1b43a1', 'fiber', 0.4, 'as-fed'),
  ('9ab27d74-aa42-4a17-8624-5245bd1b43a1', 'ash', 2, 'as-fed'),
  ('9ab27d74-aa42-4a17-8624-5245bd1b43a1', 'moisture', 81, 'as-fed'),
  ('9ab27d74-aa42-4a17-8624-5245bd1b43a1', 'kcal', 89, 'as-fed');

-- Yarrah — Biologisch hondenvoer chunks met rund (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.yarrah.com/biologisch-hondenvoer-chunks-met-rund/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De 89 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '86b968d7-83d8-4c0b-a248-f66f176f78d0';
delete from public.recipe_nutrition where recipe_version_id = '86b968d7-83d8-4c0b-a248-f66f176f78d0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('86b968d7-83d8-4c0b-a248-f66f176f78d0', 'protein', 7, 'as-fed'),
  ('86b968d7-83d8-4c0b-a248-f66f176f78d0', 'fat', 5, 'as-fed'),
  ('86b968d7-83d8-4c0b-a248-f66f176f78d0', 'fiber', 0.4, 'as-fed'),
  ('86b968d7-83d8-4c0b-a248-f66f176f78d0', 'ash', 2, 'as-fed'),
  ('86b968d7-83d8-4c0b-a248-f66f176f78d0', 'moisture', 81, 'as-fed'),
  ('86b968d7-83d8-4c0b-a248-f66f176f78d0', 'kcal', 89, 'as-fed');

-- Yarrah — Biologisch hondenvoer chunks vega (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.yarrah.com/biologisch-hondenvoer-vega-chunks/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De 85,40 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '1b5410fe-88a6-428b-af19-22afdf6a26e2';
delete from public.recipe_nutrition where recipe_version_id = '1b5410fe-88a6-428b-af19-22afdf6a26e2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1b5410fe-88a6-428b-af19-22afdf6a26e2', 'protein', 9, 'as-fed'),
  ('1b5410fe-88a6-428b-af19-22afdf6a26e2', 'fat', 4, 'as-fed'),
  ('1b5410fe-88a6-428b-af19-22afdf6a26e2', 'fiber', 0.4, 'as-fed'),
  ('1b5410fe-88a6-428b-af19-22afdf6a26e2', 'ash', 2, 'as-fed'),
  ('1b5410fe-88a6-428b-af19-22afdf6a26e2', 'moisture', 77.5, 'as-fed'),
  ('1b5410fe-88a6-428b-af19-22afdf6a26e2', 'kcal', 85.4, 'as-fed');

-- Yarrah — Biologisch hondenvoer paté met kip (alu) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.yarrah.com/biologisch-hondenvoer-pate-met-kip-alu/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De 99,10 kcal/100 g stond direct op de pagina; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '9099a2c2-5a64-4065-83f7-0161df536378';
delete from public.recipe_nutrition where recipe_version_id = '9099a2c2-5a64-4065-83f7-0161df536378';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9099a2c2-5a64-4065-83f7-0161df536378', 'protein', 9, 'as-fed'),
  ('9099a2c2-5a64-4065-83f7-0161df536378', 'fat', 7, 'as-fed'),
  ('9099a2c2-5a64-4065-83f7-0161df536378', 'fiber', 0.3, 'as-fed'),
  ('9099a2c2-5a64-4065-83f7-0161df536378', 'ash', 2.5, 'as-fed'),
  ('9099a2c2-5a64-4065-83f7-0161df536378', 'moisture', 81, 'as-fed'),
  ('9099a2c2-5a64-4065-83f7-0161df536378', 'kcal', 99.1, 'as-fed'),
  ('9099a2c2-5a64-4065-83f7-0161df536378', 'calcium', 0.34, 'as-fed'),
  ('9099a2c2-5a64-4065-83f7-0161df536378', 'phosphorus', 0.29, 'as-fed');

-- Yarrah — Biologisch hondenvoer paté met kip (blik) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.yarrah.com/biologisch-hondenvoer-pate-met-kip-blik/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De 88 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'a064ae76-b244-4ee4-bd60-ce1a6af93ff2';
delete from public.recipe_nutrition where recipe_version_id = 'a064ae76-b244-4ee4-bd60-ce1a6af93ff2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a064ae76-b244-4ee4-bd60-ce1a6af93ff2', 'protein', 9, 'as-fed'),
  ('a064ae76-b244-4ee4-bd60-ce1a6af93ff2', 'fat', 5, 'as-fed'),
  ('a064ae76-b244-4ee4-bd60-ce1a6af93ff2', 'fiber', 0.6, 'as-fed'),
  ('a064ae76-b244-4ee4-bd60-ce1a6af93ff2', 'ash', 2, 'as-fed'),
  ('a064ae76-b244-4ee4-bd60-ce1a6af93ff2', 'moisture', 81, 'as-fed'),
  ('a064ae76-b244-4ee4-bd60-ce1a6af93ff2', 'kcal', 88, 'as-fed');

-- Yarrah — Biologisch hondenvoer paté met kip en eend (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.yarrah.com/biologisch-hondenvoer-pate-met-kip-en-eend/9161/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De 107,40 kcal/100 g stond direct op de pagina; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'c0b6685e-7f6f-4fe1-985f-72c82b143f8a';
delete from public.recipe_nutrition where recipe_version_id = 'c0b6685e-7f6f-4fe1-985f-72c82b143f8a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c0b6685e-7f6f-4fe1-985f-72c82b143f8a', 'protein', 9, 'as-fed'),
  ('c0b6685e-7f6f-4fe1-985f-72c82b143f8a', 'fat', 8.5, 'as-fed'),
  ('c0b6685e-7f6f-4fe1-985f-72c82b143f8a', 'fiber', 0.3, 'as-fed'),
  ('c0b6685e-7f6f-4fe1-985f-72c82b143f8a', 'ash', 2, 'as-fed'),
  ('c0b6685e-7f6f-4fe1-985f-72c82b143f8a', 'moisture', 80, 'as-fed'),
  ('c0b6685e-7f6f-4fe1-985f-72c82b143f8a', 'kcal', 107.4, 'as-fed'),
  ('c0b6685e-7f6f-4fe1-985f-72c82b143f8a', 'calcium', 0.34, 'as-fed'),
  ('c0b6685e-7f6f-4fe1-985f-72c82b143f8a', 'phosphorus', 0.25, 'as-fed');

-- Yarrah — Biologisch hondenvoer paté met kip en kalkoen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.yarrah.com/biologisch-hondenvoer-pate-met-kip-en-kalkoen-alu/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De 90,60 kcal/100 g stond direct op de pagina; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '7bca8ef9-7494-4a2d-8433-2ae5ca911c1d';
delete from public.recipe_nutrition where recipe_version_id = '7bca8ef9-7494-4a2d-8433-2ae5ca911c1d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7bca8ef9-7494-4a2d-8433-2ae5ca911c1d', 'protein', 9, 'as-fed'),
  ('7bca8ef9-7494-4a2d-8433-2ae5ca911c1d', 'fat', 7, 'as-fed'),
  ('7bca8ef9-7494-4a2d-8433-2ae5ca911c1d', 'fiber', 0.3, 'as-fed'),
  ('7bca8ef9-7494-4a2d-8433-2ae5ca911c1d', 'ash', 2, 'as-fed'),
  ('7bca8ef9-7494-4a2d-8433-2ae5ca911c1d', 'moisture', 81.5, 'as-fed'),
  ('7bca8ef9-7494-4a2d-8433-2ae5ca911c1d', 'kcal', 90.6, 'as-fed'),
  ('7bca8ef9-7494-4a2d-8433-2ae5ca911c1d', 'calcium', 0.31, 'as-fed'),
  ('7bca8ef9-7494-4a2d-8433-2ae5ca911c1d', 'phosphorus', 0.26, 'as-fed');

-- Yarrah — Biologisch hondenvoer paté met kip en zalm (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.yarrah.com/biologisch-hondenvoer-pate-met-kip-en-zalm/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De 107,40 kcal/100 g stond direct op de pagina; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '2c54b110-bd9c-46d2-84f6-c47cc73b5d7c';
delete from public.recipe_nutrition where recipe_version_id = '2c54b110-bd9c-46d2-84f6-c47cc73b5d7c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2c54b110-bd9c-46d2-84f6-c47cc73b5d7c', 'protein', 9, 'as-fed'),
  ('2c54b110-bd9c-46d2-84f6-c47cc73b5d7c', 'fat', 8, 'as-fed'),
  ('2c54b110-bd9c-46d2-84f6-c47cc73b5d7c', 'fiber', 0.3, 'as-fed'),
  ('2c54b110-bd9c-46d2-84f6-c47cc73b5d7c', 'ash', 2, 'as-fed'),
  ('2c54b110-bd9c-46d2-84f6-c47cc73b5d7c', 'moisture', 80, 'as-fed'),
  ('2c54b110-bd9c-46d2-84f6-c47cc73b5d7c', 'kcal', 107.4, 'as-fed'),
  ('2c54b110-bd9c-46d2-84f6-c47cc73b5d7c', 'calcium', 0.37, 'as-fed'),
  ('2c54b110-bd9c-46d2-84f6-c47cc73b5d7c', 'phosphorus', 0.26, 'as-fed');

-- Yarrah — Biologisch hondenvoer paté met rund en kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.yarrah.com/biologisch-hondenvoer-pate-met-rund-en-kip-alu/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De 86 kcal/100 g stond direct op de pagina; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'f4773b3f-8055-49e5-a8dc-1934d855c32b';
delete from public.recipe_nutrition where recipe_version_id = 'f4773b3f-8055-49e5-a8dc-1934d855c32b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f4773b3f-8055-49e5-a8dc-1934d855c32b', 'protein', 9.5, 'as-fed'),
  ('f4773b3f-8055-49e5-a8dc-1934d855c32b', 'fat', 7, 'as-fed'),
  ('f4773b3f-8055-49e5-a8dc-1934d855c32b', 'fiber', 0.3, 'as-fed'),
  ('f4773b3f-8055-49e5-a8dc-1934d855c32b', 'ash', 2, 'as-fed'),
  ('f4773b3f-8055-49e5-a8dc-1934d855c32b', 'moisture', 80, 'as-fed'),
  ('f4773b3f-8055-49e5-a8dc-1934d855c32b', 'kcal', 86, 'as-fed'),
  ('f4773b3f-8055-49e5-a8dc-1934d855c32b', 'calcium', 0.37, 'as-fed'),
  ('f4773b3f-8055-49e5-a8dc-1934d855c32b', 'phosphorus', 0.31, 'as-fed');

-- Yarrah — Biologisch hondenvoer paté met varkensvlees (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.yarrah.com/biologisch-hondenvoer-pate-met-varkensvlees-blik/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De 86 kcal/100 g stond direct op de pagina; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'd3658ff5-3657-45e8-a7a3-4b6d0571964a';
delete from public.recipe_nutrition where recipe_version_id = 'd3658ff5-3657-45e8-a7a3-4b6d0571964a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d3658ff5-3657-45e8-a7a3-4b6d0571964a', 'protein', 9.5, 'as-fed'),
  ('d3658ff5-3657-45e8-a7a3-4b6d0571964a', 'fat', 5, 'as-fed'),
  ('d3658ff5-3657-45e8-a7a3-4b6d0571964a', 'fiber', 0.4, 'as-fed'),
  ('d3658ff5-3657-45e8-a7a3-4b6d0571964a', 'ash', 2, 'as-fed'),
  ('d3658ff5-3657-45e8-a7a3-4b6d0571964a', 'moisture', 81.5, 'as-fed'),
  ('d3658ff5-3657-45e8-a7a3-4b6d0571964a', 'kcal', 86, 'as-fed'),
  ('d3658ff5-3657-45e8-a7a3-4b6d0571964a', 'calcium', 0.3, 'as-fed'),
  ('d3658ff5-3657-45e8-a7a3-4b6d0571964a', 'phosphorus', 0.2, 'as-fed');

-- Yarrah — Biologisch Puppy hondenvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.yarrah.com/biologische-puppy-brokken-2kg/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De 391,50 kcal/100 g stond direct op de pagina; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '889e3964-3183-4439-b804-9642b6d97074';
delete from public.recipe_nutrition where recipe_version_id = '889e3964-3183-4439-b804-9642b6d97074';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('889e3964-3183-4439-b804-9642b6d97074', 'protein', 28, 'as-fed'),
  ('889e3964-3183-4439-b804-9642b6d97074', 'fat', 18, 'as-fed'),
  ('889e3964-3183-4439-b804-9642b6d97074', 'fiber', 2.4, 'as-fed'),
  ('889e3964-3183-4439-b804-9642b6d97074', 'ash', 6.5, 'as-fed'),
  ('889e3964-3183-4439-b804-9642b6d97074', 'moisture', 8, 'as-fed'),
  ('889e3964-3183-4439-b804-9642b6d97074', 'kcal', 391.5, 'as-fed'),
  ('889e3964-3183-4439-b804-9642b6d97074', 'calcium', 1.2, 'as-fed'),
  ('889e3964-3183-4439-b804-9642b6d97074', 'phosphorus', 0.9, 'as-fed');

-- Yarrah — Biologisch Senior hondenvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.yarrah.com/biologisch-senior-hondenvoer/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De 348 kcal/100 g stond direct op de pagina; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '1b5d6e31-a65d-424d-aa86-8bbeab09ab1f';
delete from public.recipe_nutrition where recipe_version_id = '1b5d6e31-a65d-424d-aa86-8bbeab09ab1f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1b5d6e31-a65d-424d-aa86-8bbeab09ab1f', 'protein', 25, 'as-fed'),
  ('1b5d6e31-a65d-424d-aa86-8bbeab09ab1f', 'fat', 10, 'as-fed'),
  ('1b5d6e31-a65d-424d-aa86-8bbeab09ab1f', 'fiber', 3, 'as-fed'),
  ('1b5d6e31-a65d-424d-aa86-8bbeab09ab1f', 'ash', 6.3, 'as-fed'),
  ('1b5d6e31-a65d-424d-aa86-8bbeab09ab1f', 'moisture', 8, 'as-fed'),
  ('1b5d6e31-a65d-424d-aa86-8bbeab09ab1f', 'kcal', 348, 'as-fed'),
  ('1b5d6e31-a65d-424d-aa86-8bbeab09ab1f', 'calcium', 1.2, 'as-fed'),
  ('1b5d6e31-a65d-424d-aa86-8bbeab09ab1f', 'phosphorus', 0.9, 'as-fed');

-- Yarrah — Biologisch Sensitive hondenvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.yarrah.com/biologisch-sensitive-hondenvoer/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De 300,50 kcal/100 g stond direct op de pagina; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '260d5ad6-d547-47c9-b37e-faac5d555c45';
delete from public.recipe_nutrition where recipe_version_id = '260d5ad6-d547-47c9-b37e-faac5d555c45';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('260d5ad6-d547-47c9-b37e-faac5d555c45', 'protein', 22, 'as-fed'),
  ('260d5ad6-d547-47c9-b37e-faac5d555c45', 'fat', 10, 'as-fed'),
  ('260d5ad6-d547-47c9-b37e-faac5d555c45', 'fiber', 6.9, 'as-fed'),
  ('260d5ad6-d547-47c9-b37e-faac5d555c45', 'ash', 6, 'as-fed'),
  ('260d5ad6-d547-47c9-b37e-faac5d555c45', 'moisture', 8, 'as-fed'),
  ('260d5ad6-d547-47c9-b37e-faac5d555c45', 'kcal', 300.5, 'as-fed'),
  ('260d5ad6-d547-47c9-b37e-faac5d555c45', 'calcium', 1.2, 'as-fed'),
  ('260d5ad6-d547-47c9-b37e-faac5d555c45', 'phosphorus', 0.7, 'as-fed');

-- Yarrah — Biologisch Small Breed hondenvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.yarrah.com/biologisch-small-breed-hondenvoer-5kg/17063/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De 385 kcal/100 g stond direct op de pagina; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'c6cd54bd-0c16-47d9-b913-3a5ed9a2d0f4';
delete from public.recipe_nutrition where recipe_version_id = 'c6cd54bd-0c16-47d9-b913-3a5ed9a2d0f4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c6cd54bd-0c16-47d9-b913-3a5ed9a2d0f4', 'protein', 26, 'as-fed'),
  ('c6cd54bd-0c16-47d9-b913-3a5ed9a2d0f4', 'fat', 17, 'as-fed'),
  ('c6cd54bd-0c16-47d9-b913-3a5ed9a2d0f4', 'fiber', 2.3, 'as-fed'),
  ('c6cd54bd-0c16-47d9-b913-3a5ed9a2d0f4', 'ash', 6.7, 'as-fed'),
  ('c6cd54bd-0c16-47d9-b913-3a5ed9a2d0f4', 'moisture', 8, 'as-fed'),
  ('c6cd54bd-0c16-47d9-b913-3a5ed9a2d0f4', 'kcal', 385, 'as-fed'),
  ('c6cd54bd-0c16-47d9-b913-3a5ed9a2d0f4', 'calcium', 1.3, 'as-fed'),
  ('c6cd54bd-0c16-47d9-b913-3a5ed9a2d0f4', 'phosphorus', 0.9, 'as-fed');

-- Yarrah — Biologisch Vegan hondenvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.yarrah.com/biologisch-vega-hondenvoer-2kg/17165/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De 342 kcal/100 g stond direct op de pagina; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '09ecc98b-cc20-4d67-b8b5-2a2b02aa8dde';
delete from public.recipe_nutrition where recipe_version_id = '09ecc98b-cc20-4d67-b8b5-2a2b02aa8dde';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('09ecc98b-cc20-4d67-b8b5-2a2b02aa8dde', 'protein', 24, 'as-fed'),
  ('09ecc98b-cc20-4d67-b8b5-2a2b02aa8dde', 'fat', 13, 'as-fed'),
  ('09ecc98b-cc20-4d67-b8b5-2a2b02aa8dde', 'fiber', 6.7, 'as-fed'),
  ('09ecc98b-cc20-4d67-b8b5-2a2b02aa8dde', 'ash', 7.6, 'as-fed'),
  ('09ecc98b-cc20-4d67-b8b5-2a2b02aa8dde', 'moisture', 8, 'as-fed'),
  ('09ecc98b-cc20-4d67-b8b5-2a2b02aa8dde', 'kcal', 342, 'as-fed'),
  ('09ecc98b-cc20-4d67-b8b5-2a2b02aa8dde', 'calcium', 1.2, 'as-fed'),
  ('09ecc98b-cc20-4d67-b8b5-2a2b02aa8dde', 'phosphorus', 1, 'as-fed');

-- Yarrah — Biologisch Vegan Tarwevrij hondenvoer (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.yarrah.com/biologisch-vega-grain-free-hondenvoer-2kg/17160/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De 344 kcal/100 g stond direct op de pagina; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '763a5d05-f5c5-4b0c-b0b1-216aa8a9dbdd';
delete from public.recipe_nutrition where recipe_version_id = '763a5d05-f5c5-4b0c-b0b1-216aa8a9dbdd';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('763a5d05-f5c5-4b0c-b0b1-216aa8a9dbdd', 'protein', 24, 'as-fed'),
  ('763a5d05-f5c5-4b0c-b0b1-216aa8a9dbdd', 'fat', 15, 'as-fed'),
  ('763a5d05-f5c5-4b0c-b0b1-216aa8a9dbdd', 'fiber', 7.3, 'as-fed'),
  ('763a5d05-f5c5-4b0c-b0b1-216aa8a9dbdd', 'ash', 8, 'as-fed'),
  ('763a5d05-f5c5-4b0c-b0b1-216aa8a9dbdd', 'moisture', 8, 'as-fed'),
  ('763a5d05-f5c5-4b0c-b0b1-216aa8a9dbdd', 'kcal', 344, 'as-fed'),
  ('763a5d05-f5c5-4b0c-b0b1-216aa8a9dbdd', 'calcium', 1.2, 'as-fed'),
  ('763a5d05-f5c5-4b0c-b0b1-216aa8a9dbdd', 'phosphorus', 0.9, 'as-fed');

-- CaroCroc — Energy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.carocroc.nl/producten/premium/energy/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'c4d39a67-e6fb-474c-8d55-03c721f4b951';
delete from public.recipe_nutrition where recipe_version_id = 'c4d39a67-e6fb-474c-8d55-03c721f4b951';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c4d39a67-e6fb-474c-8d55-03c721f4b951', 'protein', 25, 'as-fed'),
  ('c4d39a67-e6fb-474c-8d55-03c721f4b951', 'fat', 16, 'as-fed'),
  ('c4d39a67-e6fb-474c-8d55-03c721f4b951', 'fiber', 2.5, 'as-fed'),
  ('c4d39a67-e6fb-474c-8d55-03c721f4b951', 'ash', 6.9, 'as-fed'),
  ('c4d39a67-e6fb-474c-8d55-03c721f4b951', 'moisture', 9, 'as-fed'),
  ('c4d39a67-e6fb-474c-8d55-03c721f4b951', 'calcium', 1.5, 'as-fed'),
  ('c4d39a67-e6fb-474c-8d55-03c721f4b951', 'phosphorus', 1, 'as-fed');

-- CaroCroc — Grain Free (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.carocroc.nl/producten/speciale-aandacht/grain-free/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'b630c055-f86d-4a73-babe-f5e7b5e7716f';
delete from public.recipe_nutrition where recipe_version_id = 'b630c055-f86d-4a73-babe-f5e7b5e7716f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b630c055-f86d-4a73-babe-f5e7b5e7716f', 'protein', 23, 'as-fed'),
  ('b630c055-f86d-4a73-babe-f5e7b5e7716f', 'fat', 13, 'as-fed'),
  ('b630c055-f86d-4a73-babe-f5e7b5e7716f', 'fiber', 3.5, 'as-fed'),
  ('b630c055-f86d-4a73-babe-f5e7b5e7716f', 'ash', 6, 'as-fed'),
  ('b630c055-f86d-4a73-babe-f5e7b5e7716f', 'moisture', 8.5, 'as-fed'),
  ('b630c055-f86d-4a73-babe-f5e7b5e7716f', 'calcium', 1.2, 'as-fed'),
  ('b630c055-f86d-4a73-babe-f5e7b5e7716f', 'phosphorus', 0.7, 'as-fed');

-- CaroCroc — High Energy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.carocroc.nl/producten/premium/high-energy/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Omega-3 en omega-6 worden niet als waarde vermeld.'
 where id = '00f6bd98-6d62-4097-b52f-4713f1a3b44c';
delete from public.recipe_nutrition where recipe_version_id = '00f6bd98-6d62-4097-b52f-4713f1a3b44c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('00f6bd98-6d62-4097-b52f-4713f1a3b44c', 'protein', 28, 'as-fed'),
  ('00f6bd98-6d62-4097-b52f-4713f1a3b44c', 'fat', 20, 'as-fed'),
  ('00f6bd98-6d62-4097-b52f-4713f1a3b44c', 'fiber', 2.5, 'as-fed'),
  ('00f6bd98-6d62-4097-b52f-4713f1a3b44c', 'ash', 6.7, 'as-fed'),
  ('00f6bd98-6d62-4097-b52f-4713f1a3b44c', 'moisture', 8.5, 'as-fed'),
  ('00f6bd98-6d62-4097-b52f-4713f1a3b44c', 'calcium', 1.4, 'as-fed'),
  ('00f6bd98-6d62-4097-b52f-4713f1a3b44c', 'phosphorus', 1, 'as-fed');

-- CaroCroc — Large Breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.carocroc.nl/producten/premium/large-breed/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Omega-3 en omega-6 worden niet als waarde vermeld.'
 where id = 'e48d9b45-3992-4748-b785-cbd26784ce8d';
delete from public.recipe_nutrition where recipe_version_id = 'e48d9b45-3992-4748-b785-cbd26784ce8d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e48d9b45-3992-4748-b785-cbd26784ce8d', 'protein', 27, 'as-fed'),
  ('e48d9b45-3992-4748-b785-cbd26784ce8d', 'fat', 16, 'as-fed'),
  ('e48d9b45-3992-4748-b785-cbd26784ce8d', 'fiber', 2.5, 'as-fed'),
  ('e48d9b45-3992-4748-b785-cbd26784ce8d', 'ash', 6.6, 'as-fed'),
  ('e48d9b45-3992-4748-b785-cbd26784ce8d', 'moisture', 8.5, 'as-fed'),
  ('e48d9b45-3992-4748-b785-cbd26784ce8d', 'calcium', 1.3, 'as-fed'),
  ('e48d9b45-3992-4748-b785-cbd26784ce8d', 'phosphorus', 1, 'as-fed');

-- CaroCroc — Low Energy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.carocroc.nl/producten/premium/low-energy/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'cb285569-7051-4a69-8888-a6d436dd1bf1';
delete from public.recipe_nutrition where recipe_version_id = 'cb285569-7051-4a69-8888-a6d436dd1bf1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('cb285569-7051-4a69-8888-a6d436dd1bf1', 'protein', 22, 'as-fed'),
  ('cb285569-7051-4a69-8888-a6d436dd1bf1', 'fat', 8, 'as-fed'),
  ('cb285569-7051-4a69-8888-a6d436dd1bf1', 'fiber', 3, 'as-fed'),
  ('cb285569-7051-4a69-8888-a6d436dd1bf1', 'ash', 6.5, 'as-fed'),
  ('cb285569-7051-4a69-8888-a6d436dd1bf1', 'moisture', 9.5, 'as-fed'),
  ('cb285569-7051-4a69-8888-a6d436dd1bf1', 'calcium', 1.45, 'as-fed'),
  ('cb285569-7051-4a69-8888-a6d436dd1bf1', 'phosphorus', 1, 'as-fed');

-- CaroCroc — Mobility Support (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.carocroc.nl/producten/speciale-aandacht/mobility-support/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Omega-3 is null: de fabrikant vermeldt alleen EPA 0,07% als deelwaarde, geen totaal omega-3. Omega-6 wordt niet vermeld.'
 where id = 'fc050dab-b6b1-4c23-8b07-3e24c0aa497b';
delete from public.recipe_nutrition where recipe_version_id = 'fc050dab-b6b1-4c23-8b07-3e24c0aa497b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fc050dab-b6b1-4c23-8b07-3e24c0aa497b', 'protein', 26, 'as-fed'),
  ('fc050dab-b6b1-4c23-8b07-3e24c0aa497b', 'fat', 12, 'as-fed'),
  ('fc050dab-b6b1-4c23-8b07-3e24c0aa497b', 'fiber', 2.2, 'as-fed'),
  ('fc050dab-b6b1-4c23-8b07-3e24c0aa497b', 'ash', 6, 'as-fed'),
  ('fc050dab-b6b1-4c23-8b07-3e24c0aa497b', 'moisture', 9.5, 'as-fed'),
  ('fc050dab-b6b1-4c23-8b07-3e24c0aa497b', 'calcium', 1, 'as-fed'),
  ('fc050dab-b6b1-4c23-8b07-3e24c0aa497b', 'phosphorus', 0.9, 'as-fed');

-- CaroCroc — Original 23/12 (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.carocroc.nl/producten/premium/original/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'b5861ef8-7030-4fda-8c5b-321c805024b6';
delete from public.recipe_nutrition where recipe_version_id = 'b5861ef8-7030-4fda-8c5b-321c805024b6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b5861ef8-7030-4fda-8c5b-321c805024b6', 'protein', 23, 'as-fed'),
  ('b5861ef8-7030-4fda-8c5b-321c805024b6', 'fat', 12, 'as-fed'),
  ('b5861ef8-7030-4fda-8c5b-321c805024b6', 'fiber', 2.5, 'as-fed'),
  ('b5861ef8-7030-4fda-8c5b-321c805024b6', 'ash', 6.5, 'as-fed'),
  ('b5861ef8-7030-4fda-8c5b-321c805024b6', 'moisture', 9.5, 'as-fed'),
  ('b5861ef8-7030-4fda-8c5b-321c805024b6', 'calcium', 1.5, 'as-fed'),
  ('b5861ef8-7030-4fda-8c5b-321c805024b6', 'phosphorus', 0.9, 'as-fed');

-- CaroCroc — Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.carocroc.nl/producten/premium/puppy/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'd9bd50ca-bf1d-4868-856c-1fcb4992eb1e';
delete from public.recipe_nutrition where recipe_version_id = 'd9bd50ca-bf1d-4868-856c-1fcb4992eb1e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d9bd50ca-bf1d-4868-856c-1fcb4992eb1e', 'protein', 28, 'as-fed'),
  ('d9bd50ca-bf1d-4868-856c-1fcb4992eb1e', 'fat', 18, 'as-fed'),
  ('d9bd50ca-bf1d-4868-856c-1fcb4992eb1e', 'fiber', 2.4, 'as-fed'),
  ('d9bd50ca-bf1d-4868-856c-1fcb4992eb1e', 'ash', 6.1, 'as-fed'),
  ('d9bd50ca-bf1d-4868-856c-1fcb4992eb1e', 'moisture', 9.5, 'as-fed'),
  ('d9bd50ca-bf1d-4868-856c-1fcb4992eb1e', 'calcium', 1.2, 'as-fed'),
  ('d9bd50ca-bf1d-4868-856c-1fcb4992eb1e', 'phosphorus', 0.9, 'as-fed');

-- CaroCroc — Puppy Large (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.carocroc.nl/producten/premium/puppy-large/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'bdf8aa99-fad6-4e1a-8f81-ca74d6b96075';
delete from public.recipe_nutrition where recipe_version_id = 'bdf8aa99-fad6-4e1a-8f81-ca74d6b96075';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('bdf8aa99-fad6-4e1a-8f81-ca74d6b96075', 'protein', 25, 'as-fed'),
  ('bdf8aa99-fad6-4e1a-8f81-ca74d6b96075', 'fat', 16.5, 'as-fed'),
  ('bdf8aa99-fad6-4e1a-8f81-ca74d6b96075', 'fiber', 2.4, 'as-fed'),
  ('bdf8aa99-fad6-4e1a-8f81-ca74d6b96075', 'ash', 6, 'as-fed'),
  ('bdf8aa99-fad6-4e1a-8f81-ca74d6b96075', 'moisture', 9.5, 'as-fed'),
  ('bdf8aa99-fad6-4e1a-8f81-ca74d6b96075', 'calcium', 1, 'as-fed'),
  ('bdf8aa99-fad6-4e1a-8f81-ca74d6b96075', 'phosphorus', 0.8, 'as-fed');

-- CaroCroc — Senior (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.carocroc.nl/producten/premium/senior/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Omega-3 en omega-6 worden niet vermeld.'
 where id = '63cd6a92-2d5f-46f4-9d43-097c3a7ab26e';
delete from public.recipe_nutrition where recipe_version_id = '63cd6a92-2d5f-46f4-9d43-097c3a7ab26e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('63cd6a92-2d5f-46f4-9d43-097c3a7ab26e', 'protein', 17.5, 'as-fed'),
  ('63cd6a92-2d5f-46f4-9d43-097c3a7ab26e', 'fat', 10, 'as-fed'),
  ('63cd6a92-2d5f-46f4-9d43-097c3a7ab26e', 'fiber', 3, 'as-fed'),
  ('63cd6a92-2d5f-46f4-9d43-097c3a7ab26e', 'ash', 5.2, 'as-fed'),
  ('63cd6a92-2d5f-46f4-9d43-097c3a7ab26e', 'moisture', 9.5, 'as-fed'),
  ('63cd6a92-2d5f-46f4-9d43-097c3a7ab26e', 'calcium', 0.9, 'as-fed'),
  ('63cd6a92-2d5f-46f4-9d43-097c3a7ab26e', 'phosphorus', 0.8, 'as-fed');

-- CaroCroc — Senior Sensitive (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.carocroc.nl/producten/speciale-aandacht/carocroc-senior-sensitive/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'fb039b8d-4140-4e73-b5e8-3ad3c19a0490';
delete from public.recipe_nutrition where recipe_version_id = 'fb039b8d-4140-4e73-b5e8-3ad3c19a0490';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fb039b8d-4140-4e73-b5e8-3ad3c19a0490', 'protein', 16, 'as-fed'),
  ('fb039b8d-4140-4e73-b5e8-3ad3c19a0490', 'fat', 10, 'as-fed'),
  ('fb039b8d-4140-4e73-b5e8-3ad3c19a0490', 'fiber', 2.4, 'as-fed'),
  ('fb039b8d-4140-4e73-b5e8-3ad3c19a0490', 'ash', 5.4, 'as-fed'),
  ('fb039b8d-4140-4e73-b5e8-3ad3c19a0490', 'moisture', 9.5, 'as-fed'),
  ('fb039b8d-4140-4e73-b5e8-3ad3c19a0490', 'calcium', 1, 'as-fed'),
  ('fb039b8d-4140-4e73-b5e8-3ad3c19a0490', 'phosphorus', 0.7, 'as-fed');

-- CaroCroc — Skin Support (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.carocroc.nl/producten/speciale-aandacht/carocroc-skin-support/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Omega-6 overgenomen uit de vermelde linolzuurwaarde; linolzuur is een omega-6-vetzuur. Omega-3 is null: alleen afzonderlijke vetzuren (ALA, EPA, DHA) als deelwaarde vermeld, geen totaal omega-3.'
 where id = '45468dc6-85e3-48f0-a64d-ec114ea2bba1';
delete from public.recipe_nutrition where recipe_version_id = '45468dc6-85e3-48f0-a64d-ec114ea2bba1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('45468dc6-85e3-48f0-a64d-ec114ea2bba1', 'protein', 24, 'as-fed'),
  ('45468dc6-85e3-48f0-a64d-ec114ea2bba1', 'fat', 14, 'as-fed'),
  ('45468dc6-85e3-48f0-a64d-ec114ea2bba1', 'fiber', 2, 'as-fed'),
  ('45468dc6-85e3-48f0-a64d-ec114ea2bba1', 'ash', 5.5, 'as-fed'),
  ('45468dc6-85e3-48f0-a64d-ec114ea2bba1', 'moisture', 9.5, 'as-fed'),
  ('45468dc6-85e3-48f0-a64d-ec114ea2bba1', 'calcium', 1.1, 'as-fed'),
  ('45468dc6-85e3-48f0-a64d-ec114ea2bba1', 'phosphorus', 0.9, 'as-fed'),
  ('45468dc6-85e3-48f0-a64d-ec114ea2bba1', 'omega6', 2, 'as-fed');

-- CaroCroc — Small Breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.carocroc.nl/producten/premium/small-breed/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Omega-3 en omega-6 worden niet vermeld.'
 where id = '9dc68ddc-855f-4141-87a8-824577be7af8';
delete from public.recipe_nutrition where recipe_version_id = '9dc68ddc-855f-4141-87a8-824577be7af8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9dc68ddc-855f-4141-87a8-824577be7af8', 'protein', 25, 'as-fed'),
  ('9dc68ddc-855f-4141-87a8-824577be7af8', 'fat', 16, 'as-fed'),
  ('9dc68ddc-855f-4141-87a8-824577be7af8', 'fiber', 2.6, 'as-fed'),
  ('9dc68ddc-855f-4141-87a8-824577be7af8', 'ash', 7.2, 'as-fed'),
  ('9dc68ddc-855f-4141-87a8-824577be7af8', 'moisture', 9.5, 'as-fed'),
  ('9dc68ddc-855f-4141-87a8-824577be7af8', 'calcium', 1.5, 'as-fed'),
  ('9dc68ddc-855f-4141-87a8-824577be7af8', 'phosphorus', 1.1, 'as-fed');

-- CaroCroc — Superior (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.carocroc.nl/producten/speciale-aandacht/carocroc-superior/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Omega-3 en omega-6 worden niet vermeld.'
 where id = '7f1b540f-2639-41f5-82d0-cd0df386abdf';
delete from public.recipe_nutrition where recipe_version_id = '7f1b540f-2639-41f5-82d0-cd0df386abdf';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7f1b540f-2639-41f5-82d0-cd0df386abdf', 'protein', 20, 'as-fed'),
  ('7f1b540f-2639-41f5-82d0-cd0df386abdf', 'fat', 10.5, 'as-fed'),
  ('7f1b540f-2639-41f5-82d0-cd0df386abdf', 'fiber', 1.9, 'as-fed'),
  ('7f1b540f-2639-41f5-82d0-cd0df386abdf', 'ash', 6.1, 'as-fed'),
  ('7f1b540f-2639-41f5-82d0-cd0df386abdf', 'moisture', 9.5, 'as-fed'),
  ('7f1b540f-2639-41f5-82d0-cd0df386abdf', 'calcium', 1.3, 'as-fed'),
  ('7f1b540f-2639-41f5-82d0-cd0df386abdf', 'phosphorus', 0.9, 'as-fed');

-- CaroCroc — Worst met kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.carocroc.nl/producten/worsten/carocroc-worst-met-kip/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'd7f1a954-f407-4de0-af39-78a2f614e772';
delete from public.recipe_nutrition where recipe_version_id = 'd7f1a954-f407-4de0-af39-78a2f614e772';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d7f1a954-f407-4de0-af39-78a2f614e772', 'protein', 17, 'as-fed'),
  ('d7f1a954-f407-4de0-af39-78a2f614e772', 'fat', 9, 'as-fed'),
  ('d7f1a954-f407-4de0-af39-78a2f614e772', 'fiber', 0.1, 'as-fed'),
  ('d7f1a954-f407-4de0-af39-78a2f614e772', 'ash', 5.5, 'as-fed'),
  ('d7f1a954-f407-4de0-af39-78a2f614e772', 'moisture', 60, 'as-fed'),
  ('d7f1a954-f407-4de0-af39-78a2f614e772', 'calcium', 0.8, 'as-fed'),
  ('d7f1a954-f407-4de0-af39-78a2f614e772', 'phosphorus', 0.7, 'as-fed');

-- CaroCroc — Worst met lam (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.carocroc.nl/producten/worsten/carocroc-worst-met-lam/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Omega-3 en omega-6 worden niet vermeld.'
 where id = '16ed6ac7-1747-4de5-afc4-fcc34a5b4b8a';
delete from public.recipe_nutrition where recipe_version_id = '16ed6ac7-1747-4de5-afc4-fcc34a5b4b8a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('16ed6ac7-1747-4de5-afc4-fcc34a5b4b8a', 'protein', 16, 'as-fed'),
  ('16ed6ac7-1747-4de5-afc4-fcc34a5b4b8a', 'fat', 7, 'as-fed'),
  ('16ed6ac7-1747-4de5-afc4-fcc34a5b4b8a', 'fiber', 0.6, 'as-fed'),
  ('16ed6ac7-1747-4de5-afc4-fcc34a5b4b8a', 'ash', 6, 'as-fed'),
  ('16ed6ac7-1747-4de5-afc4-fcc34a5b4b8a', 'moisture', 62, 'as-fed'),
  ('16ed6ac7-1747-4de5-afc4-fcc34a5b4b8a', 'calcium', 1.4, 'as-fed'),
  ('16ed6ac7-1747-4de5-afc4-fcc34a5b4b8a', 'phosphorus', 1, 'as-fed');

-- Carnis — Geperst Kip Regular (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.carnis.nl/nl/droogvoeding-geperst-kip-regular-2kg/a1864',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Omega-3 en omega-6 worden niet als waarde vermeld.'
 where id = '93e8e393-c587-49d3-aa1f-8067c1d834d7';
delete from public.recipe_nutrition where recipe_version_id = '93e8e393-c587-49d3-aa1f-8067c1d834d7';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('93e8e393-c587-49d3-aa1f-8067c1d834d7', 'protein', 25, 'as-fed'),
  ('93e8e393-c587-49d3-aa1f-8067c1d834d7', 'fat', 14, 'as-fed'),
  ('93e8e393-c587-49d3-aa1f-8067c1d834d7', 'fiber', 4, 'as-fed'),
  ('93e8e393-c587-49d3-aa1f-8067c1d834d7', 'ash', 7, 'as-fed'),
  ('93e8e393-c587-49d3-aa1f-8067c1d834d7', 'moisture', 8, 'as-fed'),
  ('93e8e393-c587-49d3-aa1f-8067c1d834d7', 'calcium', 1.23, 'as-fed'),
  ('93e8e393-c587-49d3-aa1f-8067c1d834d7', 'phosphorus', 0.88, 'as-fed');

-- Carnis — Geperst Kip Small (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.carnis.nl/nl/droogvoeding-geperst-kip-small-2kg/a1867',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Omega-3 en omega-6 worden niet als waarde vermeld.'
 where id = 'eafcfee0-1e96-4449-b7c1-9782e6783532';
delete from public.recipe_nutrition where recipe_version_id = 'eafcfee0-1e96-4449-b7c1-9782e6783532';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('eafcfee0-1e96-4449-b7c1-9782e6783532', 'protein', 25, 'as-fed'),
  ('eafcfee0-1e96-4449-b7c1-9782e6783532', 'fat', 14, 'as-fed'),
  ('eafcfee0-1e96-4449-b7c1-9782e6783532', 'fiber', 4, 'as-fed'),
  ('eafcfee0-1e96-4449-b7c1-9782e6783532', 'ash', 7, 'as-fed'),
  ('eafcfee0-1e96-4449-b7c1-9782e6783532', 'moisture', 8, 'as-fed'),
  ('eafcfee0-1e96-4449-b7c1-9782e6783532', 'calcium', 1.23, 'as-fed'),
  ('eafcfee0-1e96-4449-b7c1-9782e6783532', 'phosphorus', 0.88, 'as-fed');

-- Carnis — Geperst Konijn Regular (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.carnis.nl/nl/droogvoeding-geperst-konijn-regular-2kg/a1876',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Omega-3 en omega-6 worden niet als waarde vermeld.'
 where id = '3a50ca7a-f0a5-4a92-bb91-2e9c1c3d285a';
delete from public.recipe_nutrition where recipe_version_id = '3a50ca7a-f0a5-4a92-bb91-2e9c1c3d285a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3a50ca7a-f0a5-4a92-bb91-2e9c1c3d285a', 'protein', 23, 'as-fed'),
  ('3a50ca7a-f0a5-4a92-bb91-2e9c1c3d285a', 'fat', 12, 'as-fed'),
  ('3a50ca7a-f0a5-4a92-bb91-2e9c1c3d285a', 'fiber', 3, 'as-fed'),
  ('3a50ca7a-f0a5-4a92-bb91-2e9c1c3d285a', 'ash', 6, 'as-fed'),
  ('3a50ca7a-f0a5-4a92-bb91-2e9c1c3d285a', 'moisture', 10, 'as-fed'),
  ('3a50ca7a-f0a5-4a92-bb91-2e9c1c3d285a', 'calcium', 0.93, 'as-fed'),
  ('3a50ca7a-f0a5-4a92-bb91-2e9c1c3d285a', 'phosphorus', 0.71, 'as-fed');

-- Carnis — Geperst Konijn Small (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.carnis.nl/nl/droogvoeding-geperst-konijn-small-2kg/a1880',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Omega-3 en omega-6 worden niet als waarde vermeld.'
 where id = '9a550fc9-1455-42e0-8fcf-443e25e52a2e';
delete from public.recipe_nutrition where recipe_version_id = '9a550fc9-1455-42e0-8fcf-443e25e52a2e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9a550fc9-1455-42e0-8fcf-443e25e52a2e', 'protein', 23, 'as-fed'),
  ('9a550fc9-1455-42e0-8fcf-443e25e52a2e', 'fat', 12, 'as-fed'),
  ('9a550fc9-1455-42e0-8fcf-443e25e52a2e', 'fiber', 3, 'as-fed'),
  ('9a550fc9-1455-42e0-8fcf-443e25e52a2e', 'ash', 6, 'as-fed'),
  ('9a550fc9-1455-42e0-8fcf-443e25e52a2e', 'moisture', 10, 'as-fed'),
  ('9a550fc9-1455-42e0-8fcf-443e25e52a2e', 'calcium', 0.93, 'as-fed'),
  ('9a550fc9-1455-42e0-8fcf-443e25e52a2e', 'phosphorus', 0.71, 'as-fed');

-- Carnis — Geperst Rijk aan Lam Regular (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.carnis.nl/nl/droogvoeding-geperst-rijk-aan-lam-regular-2kg/a1873',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Omega-3 en omega-6 worden niet als waarde vermeld.'
 where id = '921c5b3b-251b-46d4-949d-c7cc35e3fae3';
delete from public.recipe_nutrition where recipe_version_id = '921c5b3b-251b-46d4-949d-c7cc35e3fae3';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('921c5b3b-251b-46d4-949d-c7cc35e3fae3', 'protein', 20, 'as-fed'),
  ('921c5b3b-251b-46d4-949d-c7cc35e3fae3', 'fat', 12, 'as-fed'),
  ('921c5b3b-251b-46d4-949d-c7cc35e3fae3', 'fiber', 3, 'as-fed'),
  ('921c5b3b-251b-46d4-949d-c7cc35e3fae3', 'ash', 7, 'as-fed'),
  ('921c5b3b-251b-46d4-949d-c7cc35e3fae3', 'moisture', 10, 'as-fed'),
  ('921c5b3b-251b-46d4-949d-c7cc35e3fae3', 'calcium', 1.57, 'as-fed'),
  ('921c5b3b-251b-46d4-949d-c7cc35e3fae3', 'phosphorus', 0.99, 'as-fed');

-- Carnis — Geperst Rijk aan Lam Small (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.carnis.nl/nl/droogvoeding-geperst-rijk-aan-lam-small-2kg/a1882',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Omega-3 en omega-6 worden niet als waarde vermeld.'
 where id = '313cd010-c95e-465f-8f72-4a8edd7dcd79';
delete from public.recipe_nutrition where recipe_version_id = '313cd010-c95e-465f-8f72-4a8edd7dcd79';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('313cd010-c95e-465f-8f72-4a8edd7dcd79', 'protein', 20, 'as-fed'),
  ('313cd010-c95e-465f-8f72-4a8edd7dcd79', 'fat', 12, 'as-fed'),
  ('313cd010-c95e-465f-8f72-4a8edd7dcd79', 'fiber', 3, 'as-fed'),
  ('313cd010-c95e-465f-8f72-4a8edd7dcd79', 'ash', 7, 'as-fed'),
  ('313cd010-c95e-465f-8f72-4a8edd7dcd79', 'moisture', 10, 'as-fed'),
  ('313cd010-c95e-465f-8f72-4a8edd7dcd79', 'calcium', 1.57, 'as-fed'),
  ('313cd010-c95e-465f-8f72-4a8edd7dcd79', 'phosphorus', 0.99, 'as-fed');

-- Carnis — Geperst Zalm Regular (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.carnis.nl/nl/droogvoeding-geperst-zalm-regular-2kg/a1870',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Omega-3 en omega-6 worden niet als waarde vermeld.'
 where id = '98830c5b-b263-461b-8fae-b6ad0fe8d823';
delete from public.recipe_nutrition where recipe_version_id = '98830c5b-b263-461b-8fae-b6ad0fe8d823';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('98830c5b-b263-461b-8fae-b6ad0fe8d823', 'protein', 23, 'as-fed'),
  ('98830c5b-b263-461b-8fae-b6ad0fe8d823', 'fat', 12, 'as-fed'),
  ('98830c5b-b263-461b-8fae-b6ad0fe8d823', 'fiber', 4, 'as-fed'),
  ('98830c5b-b263-461b-8fae-b6ad0fe8d823', 'ash', 6, 'as-fed'),
  ('98830c5b-b263-461b-8fae-b6ad0fe8d823', 'moisture', 10, 'as-fed'),
  ('98830c5b-b263-461b-8fae-b6ad0fe8d823', 'calcium', 1.02, 'as-fed'),
  ('98830c5b-b263-461b-8fae-b6ad0fe8d823', 'phosphorus', 0.82, 'as-fed');

-- Carnis — Geperst Zalm Small (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.carnis.nl/nl/droogvoeding-geperst-zalm-small-2kg/a1885',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Omega-3 en omega-6 worden niet als waarde vermeld.'
 where id = 'f38548b5-b20d-4e21-87bc-74efa1648bf5';
delete from public.recipe_nutrition where recipe_version_id = 'f38548b5-b20d-4e21-87bc-74efa1648bf5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f38548b5-b20d-4e21-87bc-74efa1648bf5', 'protein', 23, 'as-fed'),
  ('f38548b5-b20d-4e21-87bc-74efa1648bf5', 'fat', 12, 'as-fed'),
  ('f38548b5-b20d-4e21-87bc-74efa1648bf5', 'fiber', 4, 'as-fed'),
  ('f38548b5-b20d-4e21-87bc-74efa1648bf5', 'ash', 6, 'as-fed'),
  ('f38548b5-b20d-4e21-87bc-74efa1648bf5', 'moisture', 10, 'as-fed'),
  ('f38548b5-b20d-4e21-87bc-74efa1648bf5', 'calcium', 1.02, 'as-fed'),
  ('f38548b5-b20d-4e21-87bc-74efa1648bf5', 'phosphorus', 0.82, 'as-fed');

-- Carnis — Gestoomde Vleesworst Eend (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.carnis.nl/nl/gestoomde-vleesworst-eend-400g/a9701',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '0623849b-ef53-45af-ac13-d9002f127506';
delete from public.recipe_nutrition where recipe_version_id = '0623849b-ef53-45af-ac13-d9002f127506';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0623849b-ef53-45af-ac13-d9002f127506', 'protein', 10.5, 'as-fed'),
  ('0623849b-ef53-45af-ac13-d9002f127506', 'fat', 9.5, 'as-fed'),
  ('0623849b-ef53-45af-ac13-d9002f127506', 'fiber', 0.4, 'as-fed'),
  ('0623849b-ef53-45af-ac13-d9002f127506', 'ash', 3, 'as-fed'),
  ('0623849b-ef53-45af-ac13-d9002f127506', 'moisture', 70.5, 'as-fed');

-- Carnis — Gestoomde Vleesworst Kabeljauw met Zalm (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.carnis.nl/nl/gestoomde-vleesworst-kabeljauw-met-zalm-400g/a9700',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'acaac63f-960f-4ce4-88fc-ba669194a445';
delete from public.recipe_nutrition where recipe_version_id = 'acaac63f-960f-4ce4-88fc-ba669194a445';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('acaac63f-960f-4ce4-88fc-ba669194a445', 'protein', 11.5, 'as-fed'),
  ('acaac63f-960f-4ce4-88fc-ba669194a445', 'fat', 5, 'as-fed'),
  ('acaac63f-960f-4ce4-88fc-ba669194a445', 'fiber', 0.5, 'as-fed'),
  ('acaac63f-960f-4ce4-88fc-ba669194a445', 'ash', 3, 'as-fed'),
  ('acaac63f-960f-4ce4-88fc-ba669194a445', 'moisture', 72.5, 'as-fed');

-- Carnis — Gestoomde Vleesworst Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.carnis.nl/nl/gestoomde-vleesworst-kip-400g/a9702',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'c1ccf307-a2a9-4a4c-988f-efea0eabbbd1';
delete from public.recipe_nutrition where recipe_version_id = 'c1ccf307-a2a9-4a4c-988f-efea0eabbbd1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c1ccf307-a2a9-4a4c-988f-efea0eabbbd1', 'protein', 13.5, 'as-fed'),
  ('c1ccf307-a2a9-4a4c-988f-efea0eabbbd1', 'fat', 10.5, 'as-fed'),
  ('c1ccf307-a2a9-4a4c-988f-efea0eabbbd1', 'fiber', 0.5, 'as-fed'),
  ('c1ccf307-a2a9-4a4c-988f-efea0eabbbd1', 'ash', 3, 'as-fed'),
  ('c1ccf307-a2a9-4a4c-988f-efea0eabbbd1', 'moisture', 67, 'as-fed');

-- Carnis — Gestoomde Vleesworst Kip met Zalm (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.carnis.nl/nl/gestoomde-vleesworst-kip-met-zalm-400g/a9697',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'e62479d2-89c5-4116-b587-6fad1634fcc2';
delete from public.recipe_nutrition where recipe_version_id = 'e62479d2-89c5-4116-b587-6fad1634fcc2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e62479d2-89c5-4116-b587-6fad1634fcc2', 'protein', 13, 'as-fed'),
  ('e62479d2-89c5-4116-b587-6fad1634fcc2', 'fat', 10.5, 'as-fed'),
  ('e62479d2-89c5-4116-b587-6fad1634fcc2', 'fiber', 0.4, 'as-fed'),
  ('e62479d2-89c5-4116-b587-6fad1634fcc2', 'ash', 2.5, 'as-fed'),
  ('e62479d2-89c5-4116-b587-6fad1634fcc2', 'moisture', 66.5, 'as-fed');

-- Carnis — Gestoomde Vleesworst Lam (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.carnis.nl/nl/gestoomde-vleesworst-lam-400g/a9698',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '54ae391e-7504-4e66-b513-a3dc00958021';
delete from public.recipe_nutrition where recipe_version_id = '54ae391e-7504-4e66-b513-a3dc00958021';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('54ae391e-7504-4e66-b513-a3dc00958021', 'protein', 13, 'as-fed'),
  ('54ae391e-7504-4e66-b513-a3dc00958021', 'fat', 7.5, 'as-fed'),
  ('54ae391e-7504-4e66-b513-a3dc00958021', 'fiber', 0.4, 'as-fed'),
  ('54ae391e-7504-4e66-b513-a3dc00958021', 'ash', 2.5, 'as-fed'),
  ('54ae391e-7504-4e66-b513-a3dc00958021', 'moisture', 68.5, 'as-fed');

-- Carnis — Gestoomde Vleesworst Rund (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.carnis.nl/nl/gestoomde-vleesworst-rund-400g/a9699',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '9324021e-4252-4c99-8c0d-66d12143e4cc';
delete from public.recipe_nutrition where recipe_version_id = '9324021e-4252-4c99-8c0d-66d12143e4cc';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9324021e-4252-4c99-8c0d-66d12143e4cc', 'protein', 13.5, 'as-fed'),
  ('9324021e-4252-4c99-8c0d-66d12143e4cc', 'fat', 9, 'as-fed'),
  ('9324021e-4252-4c99-8c0d-66d12143e4cc', 'fiber', 0.4, 'as-fed'),
  ('9324021e-4252-4c99-8c0d-66d12143e4cc', 'ash', 2.5, 'as-fed'),
  ('9324021e-4252-4c99-8c0d-66d12143e4cc', 'moisture', 68, 'as-fed');

-- Orijen — Fit & Trim (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-ori-fittrim.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De fabrikant publiceert deze waarden als gegarandeerde analyse: eiwit, vet en vezel als minimum, as en vocht als maximum. Energie omgerekend van 3530 kcal/kg naar 353 kcal/100 g (delen door 10). DHA en EPA zijn apart vermeld en niet in omega-3 opgeteld.'
 where id = '4b699148-9d27-4423-8a1f-ba0bb4426506';
delete from public.recipe_nutrition where recipe_version_id = '4b699148-9d27-4423-8a1f-ba0bb4426506';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4b699148-9d27-4423-8a1f-ba0bb4426506', 'protein', 40, 'as-fed'),
  ('4b699148-9d27-4423-8a1f-ba0bb4426506', 'fat', 13, 'as-fed'),
  ('4b699148-9d27-4423-8a1f-ba0bb4426506', 'fiber', 8, 'as-fed'),
  ('4b699148-9d27-4423-8a1f-ba0bb4426506', 'ash', 8, 'as-fed'),
  ('4b699148-9d27-4423-8a1f-ba0bb4426506', 'moisture', 12, 'as-fed'),
  ('4b699148-9d27-4423-8a1f-ba0bb4426506', 'kcal', 353, 'as-fed'),
  ('4b699148-9d27-4423-8a1f-ba0bb4426506', 'calcium', 1.4, 'as-fed'),
  ('4b699148-9d27-4423-8a1f-ba0bb4426506', 'phosphorus', 1.1, 'as-fed'),
  ('4b699148-9d27-4423-8a1f-ba0bb4426506', 'omega3', 0.9, 'as-fed'),
  ('4b699148-9d27-4423-8a1f-ba0bb4426506', 'omega6', 2.2, 'as-fed');

-- Orijen — Large Breed Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://emea.orijenpetfoods.com/de-DE/dogs/dog-food/eu-ori-ns-ori-large-breed-adult.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De bron is de Duitstalige productpagina van de fabrikant; waarden overgenomen zoals daar vermeld. De fabrikant publiceert deze waarden als gegarandeerde analyse: eiwit, vet en vezel als minimum, as en vocht als maximum. Energie omgerekend van 3710 kcal/kg naar 371 kcal/100 g (delen door 10). DHA en EPA zijn apart vermeld en niet in omega-3 opgeteld.'
 where id = '09bdcd12-87f4-4bcf-a2eb-9650b33e1d63';
delete from public.recipe_nutrition where recipe_version_id = '09bdcd12-87f4-4bcf-a2eb-9650b33e1d63';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('09bdcd12-87f4-4bcf-a2eb-9650b33e1d63', 'protein', 38, 'as-fed'),
  ('09bdcd12-87f4-4bcf-a2eb-9650b33e1d63', 'fat', 15, 'as-fed'),
  ('09bdcd12-87f4-4bcf-a2eb-9650b33e1d63', 'fiber', 6, 'as-fed'),
  ('09bdcd12-87f4-4bcf-a2eb-9650b33e1d63', 'ash', 8, 'as-fed'),
  ('09bdcd12-87f4-4bcf-a2eb-9650b33e1d63', 'moisture', 12, 'as-fed'),
  ('09bdcd12-87f4-4bcf-a2eb-9650b33e1d63', 'kcal', 371, 'as-fed'),
  ('09bdcd12-87f4-4bcf-a2eb-9650b33e1d63', 'calcium', 1.5, 'as-fed'),
  ('09bdcd12-87f4-4bcf-a2eb-9650b33e1d63', 'phosphorus', 1.1, 'as-fed'),
  ('09bdcd12-87f4-4bcf-a2eb-9650b33e1d63', 'omega3', 0.8, 'as-fed'),
  ('09bdcd12-87f4-4bcf-a2eb-9650b33e1d63', 'omega6', 2, 'as-fed');

-- Orijen — Large Breed Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-ori-puppy-large.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De fabrikant publiceert deze waarden als gegarandeerde analyse: eiwit, vet en vezel als minimum, as en vocht als maximum. Energie omgerekend van 3760 kcal/kg naar 376 kcal/100 g (delen door 10). DHA en EPA zijn apart vermeld en niet in omega-3 opgeteld.'
 where id = 'af886eb3-36d3-4a81-8417-82a72bc7869a';
delete from public.recipe_nutrition where recipe_version_id = 'af886eb3-36d3-4a81-8417-82a72bc7869a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('af886eb3-36d3-4a81-8417-82a72bc7869a', 'protein', 38, 'as-fed'),
  ('af886eb3-36d3-4a81-8417-82a72bc7869a', 'fat', 16, 'as-fed'),
  ('af886eb3-36d3-4a81-8417-82a72bc7869a', 'fiber', 6, 'as-fed'),
  ('af886eb3-36d3-4a81-8417-82a72bc7869a', 'ash', 8, 'as-fed'),
  ('af886eb3-36d3-4a81-8417-82a72bc7869a', 'moisture', 12, 'as-fed'),
  ('af886eb3-36d3-4a81-8417-82a72bc7869a', 'kcal', 376, 'as-fed'),
  ('af886eb3-36d3-4a81-8417-82a72bc7869a', 'calcium', 1.3, 'as-fed'),
  ('af886eb3-36d3-4a81-8417-82a72bc7869a', 'phosphorus', 1.1, 'as-fed'),
  ('af886eb3-36d3-4a81-8417-82a72bc7869a', 'omega3', 0.9, 'as-fed'),
  ('af886eb3-36d3-4a81-8417-82a72bc7869a', 'omega6', 2.8, 'as-fed');

-- Orijen — Original (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-ori-original.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De fabrikant publiceert deze waarden als gegarandeerde analyse: eiwit, vet en vezel als minimum, as en vocht als maximum. Energie omgerekend van 3860 kcal/kg naar 386 kcal/100 g (delen door 10). DHA en EPA zijn apart vermeld en niet in omega-3 opgeteld.'
 where id = 'eda0931a-6add-481e-ab43-6aedba4a514e';
delete from public.recipe_nutrition where recipe_version_id = 'eda0931a-6add-481e-ab43-6aedba4a514e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('eda0931a-6add-481e-ab43-6aedba4a514e', 'protein', 38, 'as-fed'),
  ('eda0931a-6add-481e-ab43-6aedba4a514e', 'fat', 18, 'as-fed'),
  ('eda0931a-6add-481e-ab43-6aedba4a514e', 'fiber', 5, 'as-fed'),
  ('eda0931a-6add-481e-ab43-6aedba4a514e', 'ash', 9, 'as-fed'),
  ('eda0931a-6add-481e-ab43-6aedba4a514e', 'moisture', 12, 'as-fed'),
  ('eda0931a-6add-481e-ab43-6aedba4a514e', 'kcal', 386, 'as-fed'),
  ('eda0931a-6add-481e-ab43-6aedba4a514e', 'calcium', 1.4, 'as-fed'),
  ('eda0931a-6add-481e-ab43-6aedba4a514e', 'phosphorus', 1.1, 'as-fed'),
  ('eda0931a-6add-481e-ab43-6aedba4a514e', 'omega3', 1, 'as-fed'),
  ('eda0931a-6add-481e-ab43-6aedba4a514e', 'omega6', 3, 'as-fed');

-- Orijen — Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-puppy.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De fabrikant publiceert deze waarden als gegarandeerde analyse: eiwit, vet en vezel als minimum, as en vocht als maximum. Energie omgerekend van 4000 kcal/kg naar 400 kcal/100 g (delen door 10). DHA en EPA zijn apart vermeld en niet in omega-3 opgeteld.'
 where id = 'a453dcc3-ba3c-4c2b-8ed9-2e7c2409c75f';
delete from public.recipe_nutrition where recipe_version_id = 'a453dcc3-ba3c-4c2b-8ed9-2e7c2409c75f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a453dcc3-ba3c-4c2b-8ed9-2e7c2409c75f', 'protein', 38, 'as-fed'),
  ('a453dcc3-ba3c-4c2b-8ed9-2e7c2409c75f', 'fat', 20, 'as-fed'),
  ('a453dcc3-ba3c-4c2b-8ed9-2e7c2409c75f', 'fiber', 5, 'as-fed'),
  ('a453dcc3-ba3c-4c2b-8ed9-2e7c2409c75f', 'ash', 8, 'as-fed'),
  ('a453dcc3-ba3c-4c2b-8ed9-2e7c2409c75f', 'moisture', 12, 'as-fed'),
  ('a453dcc3-ba3c-4c2b-8ed9-2e7c2409c75f', 'kcal', 400, 'as-fed'),
  ('a453dcc3-ba3c-4c2b-8ed9-2e7c2409c75f', 'calcium', 1.4, 'as-fed'),
  ('a453dcc3-ba3c-4c2b-8ed9-2e7c2409c75f', 'phosphorus', 1.1, 'as-fed'),
  ('a453dcc3-ba3c-4c2b-8ed9-2e7c2409c75f', 'omega3', 1.1, 'as-fed'),
  ('a453dcc3-ba3c-4c2b-8ed9-2e7c2409c75f', 'omega6', 3, 'as-fed');

-- Orijen — Regional Red (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://emea.orijenpetfoods.com/nl-NL/eu-ori-ns-ori-regionalred.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De fabrikant publiceert deze waarden als gegarandeerde analyse: eiwit, vet en vezel als minimum, as en vocht als maximum. Energie omgerekend van 3860 kcal/kg naar 386 kcal/100 g (delen door 10). DHA en EPA zijn apart vermeld en niet in omega-3 opgeteld.'
 where id = 'c126355f-3271-4362-b80a-6c3a2bf10766';
delete from public.recipe_nutrition where recipe_version_id = 'c126355f-3271-4362-b80a-6c3a2bf10766';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c126355f-3271-4362-b80a-6c3a2bf10766', 'protein', 38, 'as-fed'),
  ('c126355f-3271-4362-b80a-6c3a2bf10766', 'fat', 18, 'as-fed'),
  ('c126355f-3271-4362-b80a-6c3a2bf10766', 'fiber', 5, 'as-fed'),
  ('c126355f-3271-4362-b80a-6c3a2bf10766', 'ash', 9, 'as-fed'),
  ('c126355f-3271-4362-b80a-6c3a2bf10766', 'moisture', 12, 'as-fed'),
  ('c126355f-3271-4362-b80a-6c3a2bf10766', 'kcal', 386, 'as-fed'),
  ('c126355f-3271-4362-b80a-6c3a2bf10766', 'calcium', 1.8, 'as-fed'),
  ('c126355f-3271-4362-b80a-6c3a2bf10766', 'phosphorus', 1.2, 'as-fed'),
  ('c126355f-3271-4362-b80a-6c3a2bf10766', 'omega3', 1, 'as-fed'),
  ('c126355f-3271-4362-b80a-6c3a2bf10766', 'omega6', 1.5, 'as-fed');

-- Orijen — Senior (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-ori-senior.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De fabrikant publiceert deze waarden als gegarandeerde analyse: eiwit, vet en vezel als minimum, as en vocht als maximum. Energie omgerekend van 3710 kcal/kg naar 371 kcal/100 g (delen door 10). DHA en EPA zijn apart vermeld en niet in omega-3 opgeteld.'
 where id = '7643cb43-019a-485b-a1b7-4e0a0849da50';
delete from public.recipe_nutrition where recipe_version_id = '7643cb43-019a-485b-a1b7-4e0a0849da50';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7643cb43-019a-485b-a1b7-4e0a0849da50', 'protein', 38, 'as-fed'),
  ('7643cb43-019a-485b-a1b7-4e0a0849da50', 'fat', 15, 'as-fed'),
  ('7643cb43-019a-485b-a1b7-4e0a0849da50', 'fiber', 6, 'as-fed'),
  ('7643cb43-019a-485b-a1b7-4e0a0849da50', 'ash', 8, 'as-fed'),
  ('7643cb43-019a-485b-a1b7-4e0a0849da50', 'moisture', 12, 'as-fed'),
  ('7643cb43-019a-485b-a1b7-4e0a0849da50', 'kcal', 371, 'as-fed'),
  ('7643cb43-019a-485b-a1b7-4e0a0849da50', 'calcium', 1.3, 'as-fed'),
  ('7643cb43-019a-485b-a1b7-4e0a0849da50', 'phosphorus', 1.1, 'as-fed'),
  ('7643cb43-019a-485b-a1b7-4e0a0849da50', 'omega3', 0.9, 'as-fed'),
  ('7643cb43-019a-485b-a1b7-4e0a0849da50', 'omega6', 2.3, 'as-fed');

-- Orijen — Six Fish (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-ori-sixfish.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De fabrikant publiceert deze waarden als gegarandeerde analyse: eiwit, vet en vezel als minimum, as en vocht als maximum. Energie omgerekend van 3880 kcal/kg naar 388 kcal/100 g (delen door 10). DHA en EPA zijn apart vermeld en niet in omega-3 opgeteld.'
 where id = '787a6dc8-5e8b-4be6-9408-e2081af1fbe0';
delete from public.recipe_nutrition where recipe_version_id = '787a6dc8-5e8b-4be6-9408-e2081af1fbe0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('787a6dc8-5e8b-4be6-9408-e2081af1fbe0', 'protein', 38, 'as-fed'),
  ('787a6dc8-5e8b-4be6-9408-e2081af1fbe0', 'fat', 18, 'as-fed'),
  ('787a6dc8-5e8b-4be6-9408-e2081af1fbe0', 'fiber', 5, 'as-fed'),
  ('787a6dc8-5e8b-4be6-9408-e2081af1fbe0', 'ash', 8.5, 'as-fed'),
  ('787a6dc8-5e8b-4be6-9408-e2081af1fbe0', 'moisture', 12, 'as-fed'),
  ('787a6dc8-5e8b-4be6-9408-e2081af1fbe0', 'kcal', 388, 'as-fed'),
  ('787a6dc8-5e8b-4be6-9408-e2081af1fbe0', 'calcium', 1.5, 'as-fed'),
  ('787a6dc8-5e8b-4be6-9408-e2081af1fbe0', 'phosphorus', 1.1, 'as-fed'),
  ('787a6dc8-5e8b-4be6-9408-e2081af1fbe0', 'omega3', 2.1, 'as-fed'),
  ('787a6dc8-5e8b-4be6-9408-e2081af1fbe0', 'omega6', 2.1, 'as-fed');

-- Orijen — Small Breed (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-ori-small-breed.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De fabrikant publiceert deze waarden als gegarandeerde analyse: eiwit, vet en vezel als minimum, as en vocht als maximum. Energie omgerekend van 3900 kcal/kg naar 390 kcal/100 g (delen door 10). DHA en EPA zijn apart vermeld en niet in omega-3 opgeteld.'
 where id = 'c884f0dd-41c5-42e2-8ade-75d695a2036a';
delete from public.recipe_nutrition where recipe_version_id = 'c884f0dd-41c5-42e2-8ade-75d695a2036a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c884f0dd-41c5-42e2-8ade-75d695a2036a', 'protein', 39, 'as-fed'),
  ('c884f0dd-41c5-42e2-8ade-75d695a2036a', 'fat', 18, 'as-fed'),
  ('c884f0dd-41c5-42e2-8ade-75d695a2036a', 'fiber', 4, 'as-fed'),
  ('c884f0dd-41c5-42e2-8ade-75d695a2036a', 'ash', 9, 'as-fed'),
  ('c884f0dd-41c5-42e2-8ade-75d695a2036a', 'moisture', 12, 'as-fed'),
  ('c884f0dd-41c5-42e2-8ade-75d695a2036a', 'kcal', 390, 'as-fed'),
  ('c884f0dd-41c5-42e2-8ade-75d695a2036a', 'calcium', 1.4, 'as-fed'),
  ('c884f0dd-41c5-42e2-8ade-75d695a2036a', 'phosphorus', 1.1, 'as-fed'),
  ('c884f0dd-41c5-42e2-8ade-75d695a2036a', 'omega3', 0.5, 'as-fed'),
  ('c884f0dd-41c5-42e2-8ade-75d695a2036a', 'omega6', 2.8, 'as-fed');

-- Orijen — Small Breed Marine Fish (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-ori-small-breed-marine-fish.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De fabrikant publiceert deze waarden als gegarandeerde analyse: eiwit, vet en vezel als minimum, as en vocht als maximum. Energie omgerekend van 3710 kcal/kg naar 371 kcal/100 g (delen door 10). DHA en EPA zijn apart vermeld en niet in omega-3 opgeteld.'
 where id = '25acd1ca-6b3d-4778-9f74-f4db9c693fb1';
delete from public.recipe_nutrition where recipe_version_id = '25acd1ca-6b3d-4778-9f74-f4db9c693fb1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('25acd1ca-6b3d-4778-9f74-f4db9c693fb1', 'protein', 40, 'as-fed'),
  ('25acd1ca-6b3d-4778-9f74-f4db9c693fb1', 'fat', 15, 'as-fed'),
  ('25acd1ca-6b3d-4778-9f74-f4db9c693fb1', 'fiber', 4, 'as-fed'),
  ('25acd1ca-6b3d-4778-9f74-f4db9c693fb1', 'ash', 10, 'as-fed'),
  ('25acd1ca-6b3d-4778-9f74-f4db9c693fb1', 'moisture', 12, 'as-fed'),
  ('25acd1ca-6b3d-4778-9f74-f4db9c693fb1', 'kcal', 371, 'as-fed'),
  ('25acd1ca-6b3d-4778-9f74-f4db9c693fb1', 'calcium', 1.5, 'as-fed'),
  ('25acd1ca-6b3d-4778-9f74-f4db9c693fb1', 'phosphorus', 1.1, 'as-fed'),
  ('25acd1ca-6b3d-4778-9f74-f4db9c693fb1', 'omega3', 2, 'as-fed'),
  ('25acd1ca-6b3d-4778-9f74-f4db9c693fb1', 'omega6', 2, 'as-fed');

-- Orijen — Small Breed Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-ori-small-breed-puppy.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De fabrikant publiceert deze waarden als gegarandeerde analyse: eiwit, vet en vezel als minimum, as en vocht als maximum. Energie omgerekend van 4000 kcal/kg naar 400 kcal/100 g (delen door 10). DHA en EPA zijn apart vermeld en niet in omega-3 opgeteld.'
 where id = 'e2b58cb1-da4c-4958-8f8a-e1ccb5f29dec';
delete from public.recipe_nutrition where recipe_version_id = 'e2b58cb1-da4c-4958-8f8a-e1ccb5f29dec';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e2b58cb1-da4c-4958-8f8a-e1ccb5f29dec', 'protein', 38, 'as-fed'),
  ('e2b58cb1-da4c-4958-8f8a-e1ccb5f29dec', 'fat', 20, 'as-fed'),
  ('e2b58cb1-da4c-4958-8f8a-e1ccb5f29dec', 'fiber', 4, 'as-fed'),
  ('e2b58cb1-da4c-4958-8f8a-e1ccb5f29dec', 'ash', 9, 'as-fed'),
  ('e2b58cb1-da4c-4958-8f8a-e1ccb5f29dec', 'moisture', 12, 'as-fed'),
  ('e2b58cb1-da4c-4958-8f8a-e1ccb5f29dec', 'kcal', 400, 'as-fed'),
  ('e2b58cb1-da4c-4958-8f8a-e1ccb5f29dec', 'calcium', 1.3, 'as-fed'),
  ('e2b58cb1-da4c-4958-8f8a-e1ccb5f29dec', 'phosphorus', 0.9, 'as-fed'),
  ('e2b58cb1-da4c-4958-8f8a-e1ccb5f29dec', 'omega3', 1, 'as-fed'),
  ('e2b58cb1-da4c-4958-8f8a-e1ccb5f29dec', 'omega6', 3, 'as-fed');

-- Orijen — Tundra (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-ori-tundra.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De fabrikant publiceert deze waarden als gegarandeerde analyse: eiwit, vet en vezel als minimum, as en vocht als maximum. Energie omgerekend van 3680 kcal/kg naar 368 kcal/100 g (delen door 10). DHA en EPA zijn apart vermeld en niet in omega-3 opgeteld.'
 where id = 'a53b0fa4-5d0d-4b33-ac8e-a16c33e8b0a2';
delete from public.recipe_nutrition where recipe_version_id = 'a53b0fa4-5d0d-4b33-ac8e-a16c33e8b0a2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a53b0fa4-5d0d-4b33-ac8e-a16c33e8b0a2', 'protein', 40, 'as-fed'),
  ('a53b0fa4-5d0d-4b33-ac8e-a16c33e8b0a2', 'fat', 18, 'as-fed'),
  ('a53b0fa4-5d0d-4b33-ac8e-a16c33e8b0a2', 'fiber', 5, 'as-fed'),
  ('a53b0fa4-5d0d-4b33-ac8e-a16c33e8b0a2', 'ash', 9, 'as-fed'),
  ('a53b0fa4-5d0d-4b33-ac8e-a16c33e8b0a2', 'moisture', 12, 'as-fed'),
  ('a53b0fa4-5d0d-4b33-ac8e-a16c33e8b0a2', 'kcal', 368, 'as-fed'),
  ('a53b0fa4-5d0d-4b33-ac8e-a16c33e8b0a2', 'calcium', 1.8, 'as-fed'),
  ('a53b0fa4-5d0d-4b33-ac8e-a16c33e8b0a2', 'phosphorus', 1.3, 'as-fed'),
  ('a53b0fa4-5d0d-4b33-ac8e-a16c33e8b0a2', 'omega3', 1, 'as-fed'),
  ('a53b0fa4-5d0d-4b33-ac8e-a16c33e8b0a2', 'omega6', 2.5, 'as-fed');

commit;
