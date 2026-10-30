begin;

-- Butcher's — Kip & pens (Chicken & Tripe Loaf) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/chicken-tripe-loaf-400g/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De 98 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '8f3f9430-0cb7-4813-897d-916a2192fad1';
delete from public.recipe_nutrition where recipe_version_id = '8f3f9430-0cb7-4813-897d-916a2192fad1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8f3f9430-0cb7-4813-897d-916a2192fad1', 'protein', 8.5, 'as-fed'),
  ('8f3f9430-0cb7-4813-897d-916a2192fad1', 'fat', 6, 'as-fed'),
  ('8f3f9430-0cb7-4813-897d-916a2192fad1', 'fiber', 0.2, 'as-fed'),
  ('8f3f9430-0cb7-4813-897d-916a2192fad1', 'ash', 2, 'as-fed'),
  ('8f3f9430-0cb7-4813-897d-916a2192fad1', 'moisture', 80, 'as-fed'),
  ('8f3f9430-0cb7-4813-897d-916a2192fad1', 'kcal', 98, 'as-fed');

-- Butcher's — Originele pens (Tripe Mix) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/tripe-400g/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'e934bb7c-6202-4919-a14a-c95d58e4cdd4';
delete from public.recipe_nutrition where recipe_version_id = 'e934bb7c-6202-4919-a14a-c95d58e4cdd4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e934bb7c-6202-4919-a14a-c95d58e4cdd4', 'protein', 8.5, 'as-fed'),
  ('e934bb7c-6202-4919-a14a-c95d58e4cdd4', 'fat', 6, 'as-fed'),
  ('e934bb7c-6202-4919-a14a-c95d58e4cdd4', 'fiber', 0.2, 'as-fed'),
  ('e934bb7c-6202-4919-a14a-c95d58e4cdd4', 'ash', 2, 'as-fed'),
  ('e934bb7c-6202-4919-a14a-c95d58e4cdd4', 'moisture', 80, 'as-fed');

-- Butcher's — Puppy Perfect met kip (blik) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/puppy-perfect-6-pack-400g/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Fosfor, omega-3 en omega-6 worden niet vermeld. Calcium 0,35% is overgenomen.'
 where id = '8cfa7a61-a834-4ab9-893f-c8591c4d83fe';
delete from public.recipe_nutrition where recipe_version_id = '8cfa7a61-a834-4ab9-893f-c8591c4d83fe';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8cfa7a61-a834-4ab9-893f-c8591c4d83fe', 'protein', 8, 'as-fed'),
  ('8cfa7a61-a834-4ab9-893f-c8591c4d83fe', 'fat', 6, 'as-fed'),
  ('8cfa7a61-a834-4ab9-893f-c8591c4d83fe', 'fiber', 0.2, 'as-fed'),
  ('8cfa7a61-a834-4ab9-893f-c8591c4d83fe', 'ash', 2, 'as-fed'),
  ('8cfa7a61-a834-4ab9-893f-c8591c4d83fe', 'moisture', 82, 'as-fed'),
  ('8cfa7a61-a834-4ab9-893f-c8591c4d83fe', 'calcium', 0.35, 'as-fed');

-- Butcher's — Recovery & Revive met kip (blik) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/recovery-revive-single-can-400g/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '33995c49-4155-4d1a-962d-8e7efb0bc751';
delete from public.recipe_nutrition where recipe_version_id = '33995c49-4155-4d1a-962d-8e7efb0bc751';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('33995c49-4155-4d1a-962d-8e7efb0bc751', 'protein', 8, 'as-fed'),
  ('33995c49-4155-4d1a-962d-8e7efb0bc751', 'fat', 7, 'as-fed'),
  ('33995c49-4155-4d1a-962d-8e7efb0bc751', 'fiber', 0.2, 'as-fed'),
  ('33995c49-4155-4d1a-962d-8e7efb0bc751', 'ash', 2.5, 'as-fed'),
  ('33995c49-4155-4d1a-962d-8e7efb0bc751', 'moisture', 82, 'as-fed');

-- Butcher's — Simply Gentle met kip (blik) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/simply-gentle-6-pack-390g-2/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De 82 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '6b499fa9-11b7-4993-b6ac-49eaa6a3caba';
delete from public.recipe_nutrition where recipe_version_id = '6b499fa9-11b7-4993-b6ac-49eaa6a3caba';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6b499fa9-11b7-4993-b6ac-49eaa6a3caba', 'protein', 8.5, 'as-fed'),
  ('6b499fa9-11b7-4993-b6ac-49eaa6a3caba', 'fat', 4.5, 'as-fed'),
  ('6b499fa9-11b7-4993-b6ac-49eaa6a3caba', 'fiber', 0.2, 'as-fed'),
  ('6b499fa9-11b7-4993-b6ac-49eaa6a3caba', 'ash', 2.5, 'as-fed'),
  ('6b499fa9-11b7-4993-b6ac-49eaa6a3caba', 'moisture', 82, 'as-fed'),
  ('6b499fa9-11b7-4993-b6ac-49eaa6a3caba', 'kcal', 82, 'as-fed');

-- DARF — Vol Rund (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-vol-rund-4-kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 418 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '6226b3c5-cfc0-4b14-844a-2afcf28b0461';
delete from public.recipe_nutrition where recipe_version_id = '6226b3c5-cfc0-4b14-844a-2afcf28b0461';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6226b3c5-cfc0-4b14-844a-2afcf28b0461', 'protein', 23, 'as-fed'),
  ('6226b3c5-cfc0-4b14-844a-2afcf28b0461', 'fat', 12, 'as-fed'),
  ('6226b3c5-cfc0-4b14-844a-2afcf28b0461', 'fiber', 4, 'as-fed'),
  ('6226b3c5-cfc0-4b14-844a-2afcf28b0461', 'ash', 6, 'as-fed'),
  ('6226b3c5-cfc0-4b14-844a-2afcf28b0461', 'moisture', 6, 'as-fed'),
  ('6226b3c5-cfc0-4b14-844a-2afcf28b0461', 'kcal', 418, 'as-fed'),
  ('6226b3c5-cfc0-4b14-844a-2afcf28b0461', 'calcium', 1.2, 'as-fed'),
  ('6226b3c5-cfc0-4b14-844a-2afcf28b0461', 'phosphorus', 0.9, 'as-fed');

-- DARF — Vol Zalm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-vol-zalm-4-kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 394 kcal per 100 g; geen omrekening nodig. Calcium staat op de bron zonder %-teken (1,30); als percentage overgenomen. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'd6ad6131-5fa5-40a0-8eea-c82294ef6678';
delete from public.recipe_nutrition where recipe_version_id = 'd6ad6131-5fa5-40a0-8eea-c82294ef6678';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d6ad6131-5fa5-40a0-8eea-c82294ef6678', 'protein', 25, 'as-fed'),
  ('d6ad6131-5fa5-40a0-8eea-c82294ef6678', 'fat', 10, 'as-fed'),
  ('d6ad6131-5fa5-40a0-8eea-c82294ef6678', 'fiber', 2, 'as-fed'),
  ('d6ad6131-5fa5-40a0-8eea-c82294ef6678', 'ash', 6, 'as-fed'),
  ('d6ad6131-5fa5-40a0-8eea-c82294ef6678', 'moisture', 5, 'as-fed'),
  ('d6ad6131-5fa5-40a0-8eea-c82294ef6678', 'kcal', 394, 'as-fed'),
  ('d6ad6131-5fa5-40a0-8eea-c82294ef6678', 'calcium', 1.3, 'as-fed'),
  ('d6ad6131-5fa5-40a0-8eea-c82294ef6678', 'phosphorus', 0.75, 'as-fed');

-- DARF — Menu Malse Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-menu-malse-kip-200g',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 88 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = '19917c39-c548-4d68-a146-f99f6a6170b5';
delete from public.recipe_nutrition where recipe_version_id = '19917c39-c548-4d68-a146-f99f6a6170b5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('19917c39-c548-4d68-a146-f99f6a6170b5', 'protein', 10.4, 'as-fed'),
  ('19917c39-c548-4d68-a146-f99f6a6170b5', 'fat', 4.9, 'as-fed'),
  ('19917c39-c548-4d68-a146-f99f6a6170b5', 'fiber', 0.4, 'as-fed'),
  ('19917c39-c548-4d68-a146-f99f6a6170b5', 'ash', 1.9, 'as-fed'),
  ('19917c39-c548-4d68-a146-f99f6a6170b5', 'moisture', 79.7, 'as-fed'),
  ('19917c39-c548-4d68-a146-f99f6a6170b5', 'kcal', 88, 'as-fed'),
  ('19917c39-c548-4d68-a146-f99f6a6170b5', 'calcium', 0.17, 'as-fed'),
  ('19917c39-c548-4d68-a146-f99f6a6170b5', 'phosphorus', 0.12, 'as-fed');

-- DARF — Eend KVV (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-eend-kvv-10-x-1-kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 131 kcal per 100 g; geen omrekening nodig. Calcium en fosfor worden niet afzonderlijk vermeld, alleen de Ca/P-ratio 1,03; daarom blijven beide null. Omega-3 en omega-6 worden niet vermeld.'
 where id = '8fe1de3c-3e76-457d-9613-4da01b46b21c';
delete from public.recipe_nutrition where recipe_version_id = '8fe1de3c-3e76-457d-9613-4da01b46b21c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8fe1de3c-3e76-457d-9613-4da01b46b21c', 'protein', 17.79, 'as-fed'),
  ('8fe1de3c-3e76-457d-9613-4da01b46b21c', 'fat', 8.03, 'as-fed'),
  ('8fe1de3c-3e76-457d-9613-4da01b46b21c', 'fiber', 1.28, 'as-fed'),
  ('8fe1de3c-3e76-457d-9613-4da01b46b21c', 'ash', 2.72, 'as-fed'),
  ('8fe1de3c-3e76-457d-9613-4da01b46b21c', 'moisture', 70.18, 'as-fed'),
  ('8fe1de3c-3e76-457d-9613-4da01b46b21c', 'kcal', 131, 'as-fed');

-- DARF — Zalm KVV (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://darf.nl/product/darf-zalm-kvv-10-x-1-kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron al als 196 kcal per 100 g; geen omrekening nodig. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'cefcc837-c86b-4e5c-81e6-55244b5206f1';
delete from public.recipe_nutrition where recipe_version_id = 'cefcc837-c86b-4e5c-81e6-55244b5206f1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('cefcc837-c86b-4e5c-81e6-55244b5206f1', 'protein', 15, 'as-fed'),
  ('cefcc837-c86b-4e5c-81e6-55244b5206f1', 'fat', 12, 'as-fed'),
  ('cefcc837-c86b-4e5c-81e6-55244b5206f1', 'fiber', 3.5, 'as-fed'),
  ('cefcc837-c86b-4e5c-81e6-55244b5206f1', 'ash', 2.8, 'as-fed'),
  ('cefcc837-c86b-4e5c-81e6-55244b5206f1', 'moisture', 65, 'as-fed'),
  ('cefcc837-c86b-4e5c-81e6-55244b5206f1', 'kcal', 196, 'as-fed'),
  ('cefcc837-c86b-4e5c-81e6-55244b5206f1', 'calcium', 0.87, 'as-fed'),
  ('cefcc837-c86b-4e5c-81e6-55244b5206f1', 'phosphorus', 0.44, 'as-fed');

-- Eukanuba — Volwassen Middelgrote rassen Verse kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/volwassen-middelgrote-rassen-verse-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = '6d3d0b1f-1b05-44b4-9d2d-f5975f938769';
delete from public.recipe_nutrition where recipe_version_id = '6d3d0b1f-1b05-44b4-9d2d-f5975f938769';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6d3d0b1f-1b05-44b4-9d2d-f5975f938769', 'protein', 27, 'as-fed'),
  ('6d3d0b1f-1b05-44b4-9d2d-f5975f938769', 'fat', 15, 'as-fed'),
  ('6d3d0b1f-1b05-44b4-9d2d-f5975f938769', 'fiber', 2.4, 'as-fed'),
  ('6d3d0b1f-1b05-44b4-9d2d-f5975f938769', 'ash', 6.5, 'as-fed'),
  ('6d3d0b1f-1b05-44b4-9d2d-f5975f938769', 'calcium', 1.3, 'as-fed'),
  ('6d3d0b1f-1b05-44b4-9d2d-f5975f938769', 'phosphorus', 1.1, 'as-fed'),
  ('6d3d0b1f-1b05-44b4-9d2d-f5975f938769', 'omega3', 0.26, 'as-fed'),
  ('6d3d0b1f-1b05-44b4-9d2d-f5975f938769', 'omega6', 2.53, 'as-fed');

-- Eukanuba — Volwassen Kleine rassen Verse kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/volwassen-kleine-rassen-verse-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = 'bbfeecf1-d4b6-4f58-adb5-a98605d3e32e';
delete from public.recipe_nutrition where recipe_version_id = 'bbfeecf1-d4b6-4f58-adb5-a98605d3e32e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('bbfeecf1-d4b6-4f58-adb5-a98605d3e32e', 'protein', 30, 'as-fed'),
  ('bbfeecf1-d4b6-4f58-adb5-a98605d3e32e', 'fat', 18, 'as-fed'),
  ('bbfeecf1-d4b6-4f58-adb5-a98605d3e32e', 'fiber', 2.2, 'as-fed'),
  ('bbfeecf1-d4b6-4f58-adb5-a98605d3e32e', 'ash', 6.7, 'as-fed'),
  ('bbfeecf1-d4b6-4f58-adb5-a98605d3e32e', 'calcium', 1.5, 'as-fed'),
  ('bbfeecf1-d4b6-4f58-adb5-a98605d3e32e', 'phosphorus', 1.2, 'as-fed'),
  ('bbfeecf1-d4b6-4f58-adb5-a98605d3e32e', 'omega3', 0.32, 'as-fed'),
  ('bbfeecf1-d4b6-4f58-adb5-a98605d3e32e', 'omega6', 3.07, 'as-fed');

-- Eukanuba — Special Care Sensitive Skin Volwassen Alle rassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/special-care-sensitive-skin-volwassen-alle-rassen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = 'f3f9e1fd-12ae-45cb-8a25-199f556b0420';
delete from public.recipe_nutrition where recipe_version_id = 'f3f9e1fd-12ae-45cb-8a25-199f556b0420';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f3f9e1fd-12ae-45cb-8a25-199f556b0420', 'protein', 22, 'as-fed'),
  ('f3f9e1fd-12ae-45cb-8a25-199f556b0420', 'fat', 14, 'as-fed'),
  ('f3f9e1fd-12ae-45cb-8a25-199f556b0420', 'fiber', 2, 'as-fed'),
  ('f3f9e1fd-12ae-45cb-8a25-199f556b0420', 'ash', 6.4, 'as-fed'),
  ('f3f9e1fd-12ae-45cb-8a25-199f556b0420', 'calcium', 0.9, 'as-fed'),
  ('f3f9e1fd-12ae-45cb-8a25-199f556b0420', 'phosphorus', 0.8, 'as-fed'),
  ('f3f9e1fd-12ae-45cb-8a25-199f556b0420', 'omega3', 0.6, 'as-fed'),
  ('f3f9e1fd-12ae-45cb-8a25-199f556b0420', 'omega6', 2.2, 'as-fed');

-- Eukanuba — Adult rijk aan kalkoen met wortelen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/adult-rijk-aan-kalkoen-met-wortelen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie op de productpagina; kcal blijft null. Geen omrekening nodig.'
 where id = '883b66f4-9a7d-4d5c-b14e-82bd0c857f56';
delete from public.recipe_nutrition where recipe_version_id = '883b66f4-9a7d-4d5c-b14e-82bd0c857f56';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('883b66f4-9a7d-4d5c-b14e-82bd0c857f56', 'protein', 10, 'as-fed'),
  ('883b66f4-9a7d-4d5c-b14e-82bd0c857f56', 'fat', 6.5, 'as-fed'),
  ('883b66f4-9a7d-4d5c-b14e-82bd0c857f56', 'fiber', 1, 'as-fed'),
  ('883b66f4-9a7d-4d5c-b14e-82bd0c857f56', 'ash', 2.5, 'as-fed'),
  ('883b66f4-9a7d-4d5c-b14e-82bd0c857f56', 'moisture', 79, 'as-fed'),
  ('883b66f4-9a7d-4d5c-b14e-82bd0c857f56', 'calcium', 0.36, 'as-fed'),
  ('883b66f4-9a7d-4d5c-b14e-82bd0c857f56', 'phosphorus', 0.29, 'as-fed'),
  ('883b66f4-9a7d-4d5c-b14e-82bd0c857f56', 'omega3', 0.1, 'as-fed'),
  ('883b66f4-9a7d-4d5c-b14e-82bd0c857f56', 'omega6', 0.6, 'as-fed');

-- Eukanuba — Adult rijk aan rund met pompoen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/adult-rijk-aan-rund-met-pompoen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie op de productpagina; kcal blijft null. Geen omrekening nodig.'
 where id = '639319d0-4776-4c4c-9d08-ee735d154ca7';
delete from public.recipe_nutrition where recipe_version_id = '639319d0-4776-4c4c-9d08-ee735d154ca7';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('639319d0-4776-4c4c-9d08-ee735d154ca7', 'protein', 10, 'as-fed'),
  ('639319d0-4776-4c4c-9d08-ee735d154ca7', 'fat', 6.5, 'as-fed'),
  ('639319d0-4776-4c4c-9d08-ee735d154ca7', 'fiber', 1, 'as-fed'),
  ('639319d0-4776-4c4c-9d08-ee735d154ca7', 'ash', 2.5, 'as-fed'),
  ('639319d0-4776-4c4c-9d08-ee735d154ca7', 'moisture', 79, 'as-fed'),
  ('639319d0-4776-4c4c-9d08-ee735d154ca7', 'calcium', 0.36, 'as-fed'),
  ('639319d0-4776-4c4c-9d08-ee735d154ca7', 'phosphorus', 0.27, 'as-fed'),
  ('639319d0-4776-4c4c-9d08-ee735d154ca7', 'omega3', 0.1, 'as-fed'),
  ('639319d0-4776-4c4c-9d08-ee735d154ca7', 'omega6', 0.6, 'as-fed');

-- Hill's Science Plan — Adult Medium met kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-medium-chicken-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) en omega-3 (0,45%) staan niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina; die waarden zijn daaruit overgenomen. Omega-6 staat in de alinea als 3,4% (tabel: 3,41%). De pagina vermeldt zowel 3.724 kcal/kg als 372 kcal/100 g; de opgegeven 372 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = '36ac5eb6-e1c9-4cf1-80f6-097bd887ebad';
delete from public.recipe_nutrition where recipe_version_id = '36ac5eb6-e1c9-4cf1-80f6-097bd887ebad';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('36ac5eb6-e1c9-4cf1-80f6-097bd887ebad', 'protein', 21.5, 'as-fed'),
  ('36ac5eb6-e1c9-4cf1-80f6-097bd887ebad', 'fat', 14.9, 'as-fed'),
  ('36ac5eb6-e1c9-4cf1-80f6-097bd887ebad', 'fiber', 1.5, 'as-fed'),
  ('36ac5eb6-e1c9-4cf1-80f6-097bd887ebad', 'ash', 4.6, 'as-fed'),
  ('36ac5eb6-e1c9-4cf1-80f6-097bd887ebad', 'moisture', 8, 'as-fed'),
  ('36ac5eb6-e1c9-4cf1-80f6-097bd887ebad', 'kcal', 372, 'as-fed'),
  ('36ac5eb6-e1c9-4cf1-80f6-097bd887ebad', 'calcium', 0.69, 'as-fed'),
  ('36ac5eb6-e1c9-4cf1-80f6-097bd887ebad', 'phosphorus', 0.61, 'as-fed'),
  ('36ac5eb6-e1c9-4cf1-80f6-097bd887ebad', 'omega3', 0.45, 'as-fed'),
  ('36ac5eb6-e1c9-4cf1-80f6-097bd887ebad', 'omega6', 3.4, 'as-fed');

-- Hill's Science Plan — Small & Mini Adult Hondenvoer met Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-small-mini-chicken-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) en omega-3 (0,56%) staan niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina; die waarden zijn daaruit overgenomen. Omega-6 staat in de alinea als 3,3% (tabel: 3,27%). De pagina vermeldt zowel 3.721 kcal/kg als 372 kcal/100 g; de opgegeven 372 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = 'f332e6df-1b8a-4d5a-a695-ad38d82f1bce';
delete from public.recipe_nutrition where recipe_version_id = 'f332e6df-1b8a-4d5a-a695-ad38d82f1bce';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f332e6df-1b8a-4d5a-a695-ad38d82f1bce', 'protein', 23, 'as-fed'),
  ('f332e6df-1b8a-4d5a-a695-ad38d82f1bce', 'fat', 14.3, 'as-fed'),
  ('f332e6df-1b8a-4d5a-a695-ad38d82f1bce', 'fiber', 1.3, 'as-fed'),
  ('f332e6df-1b8a-4d5a-a695-ad38d82f1bce', 'ash', 4.8, 'as-fed'),
  ('f332e6df-1b8a-4d5a-a695-ad38d82f1bce', 'moisture', 8, 'as-fed'),
  ('f332e6df-1b8a-4d5a-a695-ad38d82f1bce', 'kcal', 372, 'as-fed'),
  ('f332e6df-1b8a-4d5a-a695-ad38d82f1bce', 'calcium', 0.77, 'as-fed'),
  ('f332e6df-1b8a-4d5a-a695-ad38d82f1bce', 'phosphorus', 0.66, 'as-fed'),
  ('f332e6df-1b8a-4d5a-a695-ad38d82f1bce', 'omega3', 0.56, 'as-fed'),
  ('f332e6df-1b8a-4d5a-a695-ad38d82f1bce', 'omega6', 3.3, 'as-fed');

-- Hill's Science Plan — Hypoallergenic Medium Adult Hondenvoer met Zalm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-medium-hypoallergenic-dry',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Vocht (8%) staat niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina; die waarde is daaruit overgenomen. Omega-6 staat in de alinea als 3,0% (tabel: 2,97%) en omega-3 als 0,7% (tabel: 0,69%). De pagina vermeldt zowel 3.700 kcal/kg als 370 kcal/100 g; de opgegeven 370 kcal/100 g is overgenomen, dus er was geen omrekening nodig.'
 where id = 'c8c414b5-ecfd-46d1-9cd4-c5f850ac789c';
delete from public.recipe_nutrition where recipe_version_id = 'c8c414b5-ecfd-46d1-9cd4-c5f850ac789c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c8c414b5-ecfd-46d1-9cd4-c5f850ac789c', 'protein', 19.9, 'as-fed'),
  ('c8c414b5-ecfd-46d1-9cd4-c5f850ac789c', 'fat', 14.2, 'as-fed'),
  ('c8c414b5-ecfd-46d1-9cd4-c5f850ac789c', 'fiber', 2.1, 'as-fed'),
  ('c8c414b5-ecfd-46d1-9cd4-c5f850ac789c', 'ash', 4.8, 'as-fed'),
  ('c8c414b5-ecfd-46d1-9cd4-c5f850ac789c', 'moisture', 8, 'as-fed'),
  ('c8c414b5-ecfd-46d1-9cd4-c5f850ac789c', 'kcal', 370, 'as-fed'),
  ('c8c414b5-ecfd-46d1-9cd4-c5f850ac789c', 'calcium', 0.64, 'as-fed'),
  ('c8c414b5-ecfd-46d1-9cd4-c5f850ac789c', 'phosphorus', 0.59, 'as-fed'),
  ('c8c414b5-ecfd-46d1-9cd4-c5f850ac789c', 'omega3', 0.7, 'as-fed'),
  ('c8c414b5-ecfd-46d1-9cd4-c5f850ac789c', 'omega6', 3, 'as-fed');

-- Hill's Science Plan — Adult Natvoer Hond met Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-chicken-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,06%) en omega-6 (0,55%) staan niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina; die waarden zijn daaruit overgenomen. Metaboliseerbare energie 922 kcal/kg omgerekend naar 92,2 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 341 kcal per blik van 370 g.'
 where id = '9bb7dbbf-23d0-4ad9-97d5-405ea521e999';
delete from public.recipe_nutrition where recipe_version_id = '9bb7dbbf-23d0-4ad9-97d5-405ea521e999';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9bb7dbbf-23d0-4ad9-97d5-405ea521e999', 'protein', 6.1, 'as-fed'),
  ('9bb7dbbf-23d0-4ad9-97d5-405ea521e999', 'fat', 3.4, 'as-fed'),
  ('9bb7dbbf-23d0-4ad9-97d5-405ea521e999', 'fiber', 0.29, 'as-fed'),
  ('9bb7dbbf-23d0-4ad9-97d5-405ea521e999', 'ash', 1.3, 'as-fed'),
  ('9bb7dbbf-23d0-4ad9-97d5-405ea521e999', 'moisture', 77, 'as-fed'),
  ('9bb7dbbf-23d0-4ad9-97d5-405ea521e999', 'kcal', 92.2, 'as-fed'),
  ('9bb7dbbf-23d0-4ad9-97d5-405ea521e999', 'calcium', 0.2, 'as-fed'),
  ('9bb7dbbf-23d0-4ad9-97d5-405ea521e999', 'phosphorus', 0.14, 'as-fed'),
  ('9bb7dbbf-23d0-4ad9-97d5-405ea521e999', 'omega3', 0.06, 'as-fed'),
  ('9bb7dbbf-23d0-4ad9-97d5-405ea521e999', 'omega6', 0.55, 'as-fed');

-- Hill's Science Plan — Adult Natvoer Hond met Rund (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.hillspet.nl/dog-food/science-plan-adult-beef-barley-entree-canned',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Omega-3 (0,06%) en omega-6 (0,54%) staan niet in de analytische alinea maar in de tabel ''Voedingsstoffen in het voer %'' op dezelfde pagina; die waarden zijn daaruit overgenomen. Metaboliseerbare energie 907 kcal/kg omgerekend naar 90,7 kcal/100 g (gedeeld door 10); de pagina vermeldt daarnaast 335 kcal per blik van 370 g.'
 where id = 'be56e145-177a-4c8f-8ad3-e5af989f22cc';
delete from public.recipe_nutrition where recipe_version_id = 'be56e145-177a-4c8f-8ad3-e5af989f22cc';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('be56e145-177a-4c8f-8ad3-e5af989f22cc', 'protein', 5.7, 'as-fed'),
  ('be56e145-177a-4c8f-8ad3-e5af989f22cc', 'fat', 3, 'as-fed'),
  ('be56e145-177a-4c8f-8ad3-e5af989f22cc', 'fiber', 0.29, 'as-fed'),
  ('be56e145-177a-4c8f-8ad3-e5af989f22cc', 'ash', 1.1, 'as-fed'),
  ('be56e145-177a-4c8f-8ad3-e5af989f22cc', 'moisture', 77, 'as-fed'),
  ('be56e145-177a-4c8f-8ad3-e5af989f22cc', 'kcal', 90.7, 'as-fed'),
  ('be56e145-177a-4c8f-8ad3-e5af989f22cc', 'calcium', 0.16, 'as-fed'),
  ('be56e145-177a-4c8f-8ad3-e5af989f22cc', 'phosphorus', 0.14, 'as-fed'),
  ('be56e145-177a-4c8f-8ad3-e5af989f22cc', 'omega3', 0.06, 'as-fed'),
  ('be56e145-177a-4c8f-8ad3-e5af989f22cc', 'omega6', 0.54, 'as-fed');

-- Royal Canin — Adult Medium Dogs (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/vet-products/adult-3705',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3.922 kcal/kg omgerekend naar 392,2 kcal/100 g (gedeeld door 10). Vocht, calcium en fosfor worden op de pagina niet vermeld. EPA/DHA en taurine horen niet bij de 10 nutrient-sleutels en zijn daarom niet opgenomen.'
 where id = '1cdeefc6-147f-487a-b2dd-353e6388cdf0';
delete from public.recipe_nutrition where recipe_version_id = '1cdeefc6-147f-487a-b2dd-353e6388cdf0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1cdeefc6-147f-487a-b2dd-353e6388cdf0', 'protein', 23, 'as-fed'),
  ('1cdeefc6-147f-487a-b2dd-353e6388cdf0', 'fat', 16, 'as-fed'),
  ('1cdeefc6-147f-487a-b2dd-353e6388cdf0', 'fiber', 1.4, 'as-fed'),
  ('1cdeefc6-147f-487a-b2dd-353e6388cdf0', 'ash', 6.1, 'as-fed'),
  ('1cdeefc6-147f-487a-b2dd-353e6388cdf0', 'kcal', 392.2, 'as-fed'),
  ('1cdeefc6-147f-487a-b2dd-353e6388cdf0', 'omega3', 0.64, 'as-fed'),
  ('1cdeefc6-147f-487a-b2dd-353e6388cdf0', 'omega6', 3.4, 'as-fed');

-- Royal Canin — Mini Adult (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/mini-adult-3001',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3.916 kcal/kg omgerekend naar 391,6 kcal/100 g (gedeeld door 10). Vocht, calcium, fosfor en omega-3/6 worden op de pagina niet vermeld. De aparte RSA-tabel met waarden in g/kg is niet gebruikt.'
 where id = 'ef92dfab-fdae-489a-93b3-8b58f913fb57';
delete from public.recipe_nutrition where recipe_version_id = 'ef92dfab-fdae-489a-93b3-8b58f913fb57';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ef92dfab-fdae-489a-93b3-8b58f913fb57', 'protein', 27, 'as-fed'),
  ('ef92dfab-fdae-489a-93b3-8b58f913fb57', 'fat', 16, 'as-fed'),
  ('ef92dfab-fdae-489a-93b3-8b58f913fb57', 'fiber', 1.4, 'as-fed'),
  ('ef92dfab-fdae-489a-93b3-8b58f913fb57', 'ash', 6.7, 'as-fed'),
  ('ef92dfab-fdae-489a-93b3-8b58f913fb57', 'kcal', 391.6, 'as-fed');

-- Royal Canin — Dermacomfort Medium (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/medium-dermacomfort-2442',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Vocht, calcium en fosfor worden niet vermeld. Gamma-linoleenzuur en EPA/DHA horen niet bij de 10 nutrient-sleutels en zijn daarom niet opgenomen.'
 where id = '52c1709e-eb42-4920-82fd-0e8128af3cec';
delete from public.recipe_nutrition where recipe_version_id = '52c1709e-eb42-4920-82fd-0e8128af3cec';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('52c1709e-eb42-4920-82fd-0e8128af3cec', 'protein', 24, 'as-fed'),
  ('52c1709e-eb42-4920-82fd-0e8128af3cec', 'fat', 17, 'as-fed'),
  ('52c1709e-eb42-4920-82fd-0e8128af3cec', 'fiber', 1.4, 'as-fed'),
  ('52c1709e-eb42-4920-82fd-0e8128af3cec', 'ash', 5.9, 'as-fed'),
  ('52c1709e-eb42-4920-82fd-0e8128af3cec', 'omega3', 1.13, 'as-fed'),
  ('52c1709e-eb42-4920-82fd-0e8128af3cec', 'omega6', 3.42, 'as-fed');

-- Royal Canin — Dermacomfort in Loaf (paté) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/dermacomfort-1181',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = '0880572c-b5b6-49be-8796-b446a24a5942';
delete from public.recipe_nutrition where recipe_version_id = '0880572c-b5b6-49be-8796-b446a24a5942';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0880572c-b5b6-49be-8796-b446a24a5942', 'protein', 8.6, 'as-fed'),
  ('0880572c-b5b6-49be-8796-b446a24a5942', 'fat', 6.6, 'as-fed'),
  ('0880572c-b5b6-49be-8796-b446a24a5942', 'fiber', 1.3, 'as-fed'),
  ('0880572c-b5b6-49be-8796-b446a24a5942', 'ash', 1.9, 'as-fed'),
  ('0880572c-b5b6-49be-8796-b446a24a5942', 'moisture', 78.1, 'as-fed');

-- Royal Canin — Digestive Care in Loaf (paté) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.royalcanin.com/nl/dogs/products/retail-products/digestive-care-1180',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Calcium, fosfor en omega-3/6 worden niet vermeld.'
 where id = 'd6c1bd8e-4a96-415e-a90b-bc8ae324c969';
delete from public.recipe_nutrition where recipe_version_id = 'd6c1bd8e-4a96-415e-a90b-bc8ae324c969';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d6c1bd8e-4a96-415e-a90b-bc8ae324c969', 'protein', 8.6, 'as-fed'),
  ('d6c1bd8e-4a96-415e-a90b-bc8ae324c969', 'fat', 5.8, 'as-fed'),
  ('d6c1bd8e-4a96-415e-a90b-bc8ae324c969', 'fiber', 1.3, 'as-fed'),
  ('d6c1bd8e-4a96-415e-a90b-bc8ae324c969', 'ash', 1.8, 'as-fed'),
  ('d6c1bd8e-4a96-415e-a90b-bc8ae324c969', 'moisture', 78.9, 'as-fed');

commit;
