begin;

-- Purina One — Purina ONE Medium/Maxi Adult Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/purina_one_dog/mediummaxi/1875000',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Bron is de zooplus-productpagina uit het opdrachtbestand. Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Niet vermeld op de pagina: vocht, calcium en fosfor.'
 where id = '99e136f0-634b-4cd4-a7b6-31f36fb0dd47';
delete from public.recipe_nutrition where recipe_version_id = '99e136f0-634b-4cd4-a7b6-31f36fb0dd47';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('99e136f0-634b-4cd4-a7b6-31f36fb0dd47', 'protein', 28, 'as-fed'),
  ('99e136f0-634b-4cd4-a7b6-31f36fb0dd47', 'fat', 16, 'as-fed'),
  ('99e136f0-634b-4cd4-a7b6-31f36fb0dd47', 'fiber', 2, 'as-fed'),
  ('99e136f0-634b-4cd4-a7b6-31f36fb0dd47', 'ash', 6.5, 'as-fed'),
  ('99e136f0-634b-4cd4-a7b6-31f36fb0dd47', 'omega3', 0.28, 'as-fed'),
  ('99e136f0-634b-4cd4-a7b6-31f36fb0dd47', 'omega6', 2.9, 'as-fed');

-- Purina One — Purina ONE Medium/Maxi Adult Rund & Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/purina_one_dog/mediummaxi/1337160',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Bron is de zooplus-productpagina uit het opdrachtbestand. Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Niet vermeld op de pagina: vocht, calcium en fosfor.'
 where id = '99077a6e-bde5-4032-ab21-df870a0f4c70';
delete from public.recipe_nutrition where recipe_version_id = '99077a6e-bde5-4032-ab21-df870a0f4c70';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('99077a6e-bde5-4032-ab21-df870a0f4c70', 'protein', 25, 'as-fed'),
  ('99077a6e-bde5-4032-ab21-df870a0f4c70', 'fat', 15, 'as-fed'),
  ('99077a6e-bde5-4032-ab21-df870a0f4c70', 'fiber', 2.5, 'as-fed'),
  ('99077a6e-bde5-4032-ab21-df870a0f4c70', 'ash', 7, 'as-fed'),
  ('99077a6e-bde5-4032-ab21-df870a0f4c70', 'omega3', 0.2, 'as-fed'),
  ('99077a6e-bde5-4032-ab21-df870a0f4c70', 'omega6', 2.5, 'as-fed');

-- Purina One — Purina ONE Medium/Maxi Sensitive Zalm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/purina_one_dog/mediummaxi/1874999',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Bron is de zooplus-productpagina uit het opdrachtbestand. Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Niet vermeld op de pagina: vocht, calcium en fosfor.'
 where id = 'a96aee7f-10d2-48b0-870d-208fe5d119a1';
delete from public.recipe_nutrition where recipe_version_id = 'a96aee7f-10d2-48b0-870d-208fe5d119a1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a96aee7f-10d2-48b0-870d-208fe5d119a1', 'protein', 25, 'as-fed'),
  ('a96aee7f-10d2-48b0-870d-208fe5d119a1', 'fat', 15, 'as-fed'),
  ('a96aee7f-10d2-48b0-870d-208fe5d119a1', 'fiber', 2.5, 'as-fed'),
  ('a96aee7f-10d2-48b0-870d-208fe5d119a1', 'ash', 7.5, 'as-fed'),
  ('a96aee7f-10d2-48b0-870d-208fe5d119a1', 'omega3', 0.58, 'as-fed'),
  ('a96aee7f-10d2-48b0-870d-208fe5d119a1', 'omega6', 1.8, 'as-fed');

-- Purina One — Purina ONE Medium/Maxi Weight Control Sterilised Kalkoen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/purina_one_dog/mediummaxi/1868165',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Bron is de zooplus-productpagina uit het opdrachtbestand. Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Niet vermeld op de pagina: vocht, calcium en fosfor.'
 where id = 'a9b0fd44-daab-4b15-96cb-219217f267be';
delete from public.recipe_nutrition where recipe_version_id = 'a9b0fd44-daab-4b15-96cb-219217f267be';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a9b0fd44-daab-4b15-96cb-219217f267be', 'protein', 27, 'as-fed'),
  ('a9b0fd44-daab-4b15-96cb-219217f267be', 'fat', 9, 'as-fed'),
  ('a9b0fd44-daab-4b15-96cb-219217f267be', 'fiber', 2.5, 'as-fed'),
  ('a9b0fd44-daab-4b15-96cb-219217f267be', 'ash', 7.5, 'as-fed'),
  ('a9b0fd44-daab-4b15-96cb-219217f267be', 'omega3', 0.14, 'as-fed'),
  ('a9b0fd44-daab-4b15-96cb-219217f267be', 'omega6', 2.2, 'as-fed');

-- Purina One — Purina ONE Mini Adult Rund & Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/purina_one_dog/mini/1337161',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Bron is de zooplus-productpagina uit het opdrachtbestand. Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Niet vermeld op de pagina: vocht, calcium en fosfor.'
 where id = 'b0a0d7cf-28ca-4e84-a709-fe4ddb2ad1f8';
delete from public.recipe_nutrition where recipe_version_id = 'b0a0d7cf-28ca-4e84-a709-fe4ddb2ad1f8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b0a0d7cf-28ca-4e84-a709-fe4ddb2ad1f8', 'protein', 27, 'as-fed'),
  ('b0a0d7cf-28ca-4e84-a709-fe4ddb2ad1f8', 'fat', 17, 'as-fed'),
  ('b0a0d7cf-28ca-4e84-a709-fe4ddb2ad1f8', 'fiber', 2, 'as-fed'),
  ('b0a0d7cf-28ca-4e84-a709-fe4ddb2ad1f8', 'ash', 8, 'as-fed'),
  ('b0a0d7cf-28ca-4e84-a709-fe4ddb2ad1f8', 'omega3', 0.2, 'as-fed'),
  ('b0a0d7cf-28ca-4e84-a709-fe4ddb2ad1f8', 'omega6', 2.7, 'as-fed');

-- Purina One — Purina ONE Mini Delicate Zalm & Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/purina_one_dog/mini/1874995',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Bron is de zooplus-productpagina uit het opdrachtbestand. Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Niet vermeld op de pagina: vocht, calcium en fosfor.'
 where id = '014ab764-4013-4ab0-bf4d-38bf1c84aca2';
delete from public.recipe_nutrition where recipe_version_id = '014ab764-4013-4ab0-bf4d-38bf1c84aca2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('014ab764-4013-4ab0-bf4d-38bf1c84aca2', 'protein', 27, 'as-fed'),
  ('014ab764-4013-4ab0-bf4d-38bf1c84aca2', 'fat', 17, 'as-fed'),
  ('014ab764-4013-4ab0-bf4d-38bf1c84aca2', 'fiber', 2, 'as-fed'),
  ('014ab764-4013-4ab0-bf4d-38bf1c84aca2', 'ash', 7.5, 'as-fed'),
  ('014ab764-4013-4ab0-bf4d-38bf1c84aca2', 'omega3', 0.4, 'as-fed'),
  ('014ab764-4013-4ab0-bf4d-38bf1c84aca2', 'omega6', 2.7, 'as-fed');

-- Purina One — Purina ONE Mini Sensitive-Delicate Zalm (natvoer) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/purina_one/2007011',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Bron is de zooplus-productpagina uit het opdrachtbestand. Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Niet vermeld op de pagina: calcium, fosfor en omega-6.'
 where id = '1c834c46-a12b-4895-91ca-adf715bb398d';
delete from public.recipe_nutrition where recipe_version_id = '1c834c46-a12b-4895-91ca-adf715bb398d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1c834c46-a12b-4895-91ca-adf715bb398d', 'protein', 11.2, 'as-fed'),
  ('1c834c46-a12b-4895-91ca-adf715bb398d', 'fat', 3.2, 'as-fed'),
  ('1c834c46-a12b-4895-91ca-adf715bb398d', 'fiber', 1, 'as-fed'),
  ('1c834c46-a12b-4895-91ca-adf715bb398d', 'ash', 1.9, 'as-fed'),
  ('1c834c46-a12b-4895-91ca-adf715bb398d', 'moisture', 79, 'as-fed'),
  ('1c834c46-a12b-4895-91ca-adf715bb398d', 'omega3', 0.14, 'as-fed');

-- Purina One — Purina ONE Mini Weight Control / Sterilised Kalkoen & Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/purina_one_dog/mini/1337170',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Bron is de zooplus-productpagina uit het opdrachtbestand. Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Niet vermeld op de pagina: vocht, calcium en fosfor.'
 where id = 'b8e29cce-e5c7-4ff5-9f15-12666c56c033';
delete from public.recipe_nutrition where recipe_version_id = 'b8e29cce-e5c7-4ff5-9f15-12666c56c033';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b8e29cce-e5c7-4ff5-9f15-12666c56c033', 'protein', 28.5, 'as-fed'),
  ('b8e29cce-e5c7-4ff5-9f15-12666c56c033', 'fat', 10.5, 'as-fed'),
  ('b8e29cce-e5c7-4ff5-9f15-12666c56c033', 'fiber', 2.9, 'as-fed'),
  ('b8e29cce-e5c7-4ff5-9f15-12666c56c033', 'ash', 8.5, 'as-fed'),
  ('b8e29cce-e5c7-4ff5-9f15-12666c56c033', 'omega3', 0.1, 'as-fed'),
  ('b8e29cce-e5c7-4ff5-9f15-12666c56c033', 'omega6', 2.3, 'as-fed');

-- Purina Pro Plan — All Sizes Adult Light/Sterilised Rijk aan Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-adult-light-sterilised-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Niet vermeld op de pagina: vocht, calcium, fosfor, omega-3 en omega-6.'
 where id = 'eb819ecd-bf91-4cdf-9949-4c830fa956ea';
delete from public.recipe_nutrition where recipe_version_id = 'eb819ecd-bf91-4cdf-9949-4c830fa956ea';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('eb819ecd-bf91-4cdf-9949-4c830fa956ea', 'protein', 27, 'as-fed'),
  ('eb819ecd-bf91-4cdf-9949-4c830fa956ea', 'fat', 9, 'as-fed'),
  ('eb819ecd-bf91-4cdf-9949-4c830fa956ea', 'fiber', 3, 'as-fed'),
  ('eb819ecd-bf91-4cdf-9949-4c830fa956ea', 'ash', 7.5, 'as-fed');

-- Purina Pro Plan — All Sizes Adult Protein & Energy Rijk aan Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-adult-proteinenergy-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Niet vermeld op de pagina: vocht, calcium, fosfor, omega-3 en omega-6.'
 where id = 'f2ad8bc4-842c-46d2-a4f0-a0daf96c8285';
delete from public.recipe_nutrition where recipe_version_id = 'f2ad8bc4-842c-46d2-a4f0-a0daf96c8285';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f2ad8bc4-842c-46d2-a4f0-a0daf96c8285', 'protein', 31, 'as-fed'),
  ('f2ad8bc4-842c-46d2-a4f0-a0daf96c8285', 'fat', 21, 'as-fed'),
  ('f2ad8bc4-842c-46d2-a4f0-a0daf96c8285', 'fiber', 2, 'as-fed'),
  ('f2ad8bc4-842c-46d2-a4f0-a0daf96c8285', 'ash', 7.5, 'as-fed');

-- Purina Pro Plan — Expert Care Adult 7+ Rijk aan Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-expert-care-senior-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3841 kcal/kg omgerekend naar 384,1 kcal/100 g (gedeeld door 10). Niet vermeld op de pagina: calcium, fosfor, omega-3 en omega-6.'
 where id = '0e644c9e-68b3-4c1c-b283-7b3914cbcaa7';
delete from public.recipe_nutrition where recipe_version_id = '0e644c9e-68b3-4c1c-b283-7b3914cbcaa7';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0e644c9e-68b3-4c1c-b283-7b3914cbcaa7', 'protein', 29, 'as-fed'),
  ('0e644c9e-68b3-4c1c-b283-7b3914cbcaa7', 'fat', 15, 'as-fed'),
  ('0e644c9e-68b3-4c1c-b283-7b3914cbcaa7', 'fiber', 2, 'as-fed'),
  ('0e644c9e-68b3-4c1c-b283-7b3914cbcaa7', 'ash', 8, 'as-fed'),
  ('0e644c9e-68b3-4c1c-b283-7b3914cbcaa7', 'moisture', 8, 'as-fed'),
  ('0e644c9e-68b3-4c1c-b283-7b3914cbcaa7', 'kcal', 384.1, 'as-fed');

-- Purina Pro Plan — Expert Care Adult Rijk aan Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-expert-care-adult-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3858 kcal/kg omgerekend naar 385,8 kcal/100 g (gedeeld door 10). Niet vermeld op de pagina: calcium, fosfor en omega-3.'
 where id = '0c5c111f-decb-4fcb-a7a8-fd93f233d037';
delete from public.recipe_nutrition where recipe_version_id = '0c5c111f-decb-4fcb-a7a8-fd93f233d037';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0c5c111f-decb-4fcb-a7a8-fd93f233d037', 'protein', 26, 'as-fed'),
  ('0c5c111f-decb-4fcb-a7a8-fd93f233d037', 'fat', 16, 'as-fed'),
  ('0c5c111f-decb-4fcb-a7a8-fd93f233d037', 'fiber', 2.5, 'as-fed'),
  ('0c5c111f-decb-4fcb-a7a8-fd93f233d037', 'ash', 7.5, 'as-fed'),
  ('0c5c111f-decb-4fcb-a7a8-fd93f233d037', 'moisture', 8, 'as-fed'),
  ('0c5c111f-decb-4fcb-a7a8-fd93f233d037', 'kcal', 385.8, 'as-fed'),
  ('0c5c111f-decb-4fcb-a7a8-fd93f233d037', 'omega6', 2.5, 'as-fed');

-- Purina Pro Plan — Expert Care Derma Care Rijk aan Zalm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-expert-care-derma-care-zalm',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3941 kcal/kg omgerekend naar 394,1 kcal/100 g (gedeeld door 10). Niet vermeld op de pagina: calcium en fosfor.'
 where id = 'e257c8c8-e49b-43db-a146-e9252cc1faba';
delete from public.recipe_nutrition where recipe_version_id = 'e257c8c8-e49b-43db-a146-e9252cc1faba';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e257c8c8-e49b-43db-a146-e9252cc1faba', 'protein', 29, 'as-fed'),
  ('e257c8c8-e49b-43db-a146-e9252cc1faba', 'fat', 18, 'as-fed'),
  ('e257c8c8-e49b-43db-a146-e9252cc1faba', 'fiber', 3, 'as-fed'),
  ('e257c8c8-e49b-43db-a146-e9252cc1faba', 'ash', 7, 'as-fed'),
  ('e257c8c8-e49b-43db-a146-e9252cc1faba', 'moisture', 8, 'as-fed'),
  ('e257c8c8-e49b-43db-a146-e9252cc1faba', 'kcal', 394.1, 'as-fed'),
  ('e257c8c8-e49b-43db-a146-e9252cc1faba', 'omega3', 0.8, 'as-fed'),
  ('e257c8c8-e49b-43db-a146-e9252cc1faba', 'omega6', 2.5, 'as-fed');

-- Purina Pro Plan — Expert Care Digestion Care Rijk aan Lam (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-expert-care-digestion-care-lam',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3470 kcal/kg omgerekend naar 347 kcal/100 g (gedeeld door 10). Niet vermeld op de pagina: calcium, fosfor, omega-3 en omega-6.'
 where id = 'd3cda390-1f9a-4ec7-9b87-6c3aad052e98';
delete from public.recipe_nutrition where recipe_version_id = 'd3cda390-1f9a-4ec7-9b87-6c3aad052e98';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d3cda390-1f9a-4ec7-9b87-6c3aad052e98', 'protein', 26, 'as-fed'),
  ('d3cda390-1f9a-4ec7-9b87-6c3aad052e98', 'fat', 16, 'as-fed'),
  ('d3cda390-1f9a-4ec7-9b87-6c3aad052e98', 'fiber', 2.5, 'as-fed'),
  ('d3cda390-1f9a-4ec7-9b87-6c3aad052e98', 'ash', 7.5, 'as-fed'),
  ('d3cda390-1f9a-4ec7-9b87-6c3aad052e98', 'moisture', 8, 'as-fed'),
  ('d3cda390-1f9a-4ec7-9b87-6c3aad052e98', 'kcal', 347, 'as-fed');

-- Purina Pro Plan — Expert Care Light/Sterilised Rijk aan Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-expert-care-light-sterilised-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3470 kcal/kg omgerekend naar 347 kcal/100 g (gedeeld door 10). Niet vermeld op de pagina: calcium, fosfor, omega-3 en omega-6.'
 where id = '9050a0e6-a3c3-4ad8-ae62-293940098821';
delete from public.recipe_nutrition where recipe_version_id = '9050a0e6-a3c3-4ad8-ae62-293940098821';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9050a0e6-a3c3-4ad8-ae62-293940098821', 'protein', 26, 'as-fed'),
  ('9050a0e6-a3c3-4ad8-ae62-293940098821', 'fat', 16, 'as-fed'),
  ('9050a0e6-a3c3-4ad8-ae62-293940098821', 'fiber', 2.5, 'as-fed'),
  ('9050a0e6-a3c3-4ad8-ae62-293940098821', 'ash', 7.5, 'as-fed'),
  ('9050a0e6-a3c3-4ad8-ae62-293940098821', 'moisture', 8, 'as-fed'),
  ('9050a0e6-a3c3-4ad8-ae62-293940098821', 'kcal', 347, 'as-fed');

-- Purina Pro Plan — Expert Care Puppy Rijk aan Lam (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-expert-care-puppy-lam',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3993 kcal/kg omgerekend naar 399,3 kcal/100 g (gedeeld door 10).'
 where id = '23401784-cd3d-41c4-ab97-c732b9c84551';
delete from public.recipe_nutrition where recipe_version_id = '23401784-cd3d-41c4-ab97-c732b9c84551';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('23401784-cd3d-41c4-ab97-c732b9c84551', 'protein', 30, 'as-fed'),
  ('23401784-cd3d-41c4-ab97-c732b9c84551', 'fat', 19, 'as-fed'),
  ('23401784-cd3d-41c4-ab97-c732b9c84551', 'fiber', 2.5, 'as-fed'),
  ('23401784-cd3d-41c4-ab97-c732b9c84551', 'ash', 8, 'as-fed'),
  ('23401784-cd3d-41c4-ab97-c732b9c84551', 'moisture', 8, 'as-fed'),
  ('23401784-cd3d-41c4-ab97-c732b9c84551', 'kcal', 399.3, 'as-fed'),
  ('23401784-cd3d-41c4-ab97-c732b9c84551', 'calcium', 1.52, 'as-fed'),
  ('23401784-cd3d-41c4-ab97-c732b9c84551', 'phosphorus', 1.01, 'as-fed'),
  ('23401784-cd3d-41c4-ab97-c732b9c84551', 'omega3', 0.3, 'as-fed'),
  ('23401784-cd3d-41c4-ab97-c732b9c84551', 'omega6', 1.8, 'as-fed');

-- Purina Pro Plan — Expert Care Small & Mini Adult Rijk aan Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-expert-care-small-mini-adult-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3894 kcal/kg omgerekend naar 389,4 kcal/100 g (gedeeld door 10). Niet vermeld op de pagina: calcium, fosfor en omega-3. Omega-6 staat op de pagina als 0,1%; overgenomen zoals gepubliceerd.'
 where id = '65faeff0-83ce-43c2-bc67-8d2b84e1f81f';
delete from public.recipe_nutrition where recipe_version_id = '65faeff0-83ce-43c2-bc67-8d2b84e1f81f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('65faeff0-83ce-43c2-bc67-8d2b84e1f81f', 'protein', 28, 'as-fed'),
  ('65faeff0-83ce-43c2-bc67-8d2b84e1f81f', 'fat', 17, 'as-fed'),
  ('65faeff0-83ce-43c2-bc67-8d2b84e1f81f', 'fiber', 2.5, 'as-fed'),
  ('65faeff0-83ce-43c2-bc67-8d2b84e1f81f', 'ash', 8, 'as-fed'),
  ('65faeff0-83ce-43c2-bc67-8d2b84e1f81f', 'moisture', 8, 'as-fed'),
  ('65faeff0-83ce-43c2-bc67-8d2b84e1f81f', 'kcal', 389.4, 'as-fed'),
  ('65faeff0-83ce-43c2-bc67-8d2b84e1f81f', 'omega6', 0.1, 'as-fed');

-- Purina Pro Plan — Expert Care Small & Mini Derma Care Rijk aan Zalm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-expert-care-small-mini-derma-care-zalm',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3927 kcal/kg omgerekend naar 392,7 kcal/100 g (gedeeld door 10). Niet vermeld op de pagina: calcium en fosfor.'
 where id = '287f2370-fe36-487d-86ad-05c04502e63d';
delete from public.recipe_nutrition where recipe_version_id = '287f2370-fe36-487d-86ad-05c04502e63d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('287f2370-fe36-487d-86ad-05c04502e63d', 'protein', 30, 'as-fed'),
  ('287f2370-fe36-487d-86ad-05c04502e63d', 'fat', 18, 'as-fed'),
  ('287f2370-fe36-487d-86ad-05c04502e63d', 'fiber', 3, 'as-fed'),
  ('287f2370-fe36-487d-86ad-05c04502e63d', 'ash', 7.5, 'as-fed'),
  ('287f2370-fe36-487d-86ad-05c04502e63d', 'moisture', 8, 'as-fed'),
  ('287f2370-fe36-487d-86ad-05c04502e63d', 'kcal', 392.7, 'as-fed'),
  ('287f2370-fe36-487d-86ad-05c04502e63d', 'omega3', 0.9, 'as-fed'),
  ('287f2370-fe36-487d-86ad-05c04502e63d', 'omega6', 2, 'as-fed');

-- Purina Pro Plan — Expert Care Small & Mini Puppy Rijk aan Lam (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-expert-care-small-mini-puppy-lam',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 4100 kcal/kg omgerekend naar 410 kcal/100 g (gedeeld door 10). Omega-3 staat op de pagina als 4%; overgenomen zoals gepubliceerd.'
 where id = 'fbe56385-c30f-4326-b970-7915a1a03d18';
delete from public.recipe_nutrition where recipe_version_id = 'fbe56385-c30f-4326-b970-7915a1a03d18';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fbe56385-c30f-4326-b970-7915a1a03d18', 'protein', 34, 'as-fed'),
  ('fbe56385-c30f-4326-b970-7915a1a03d18', 'fat', 21, 'as-fed'),
  ('fbe56385-c30f-4326-b970-7915a1a03d18', 'fiber', 2.5, 'as-fed'),
  ('fbe56385-c30f-4326-b970-7915a1a03d18', 'ash', 8, 'as-fed'),
  ('fbe56385-c30f-4326-b970-7915a1a03d18', 'moisture', 8, 'as-fed'),
  ('fbe56385-c30f-4326-b970-7915a1a03d18', 'kcal', 410, 'as-fed'),
  ('fbe56385-c30f-4326-b970-7915a1a03d18', 'calcium', 1.57, 'as-fed'),
  ('fbe56385-c30f-4326-b970-7915a1a03d18', 'phosphorus', 1.04, 'as-fed'),
  ('fbe56385-c30f-4326-b970-7915a1a03d18', 'omega3', 4, 'as-fed'),
  ('fbe56385-c30f-4326-b970-7915a1a03d18', 'omega6', 1.9, 'as-fed');

-- Purina Pro Plan — Large Athletic Adult Everyday Nutrition Rijk aan Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-adult-large-athletic-everyday-nutrition-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Niet vermeld op de pagina: vocht, calcium, fosfor, omega-3 en omega-6.'
 where id = 'c29eeae4-68aa-43ac-8dc8-bc768e849594';
delete from public.recipe_nutrition where recipe_version_id = 'c29eeae4-68aa-43ac-8dc8-bc768e849594';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c29eeae4-68aa-43ac-8dc8-bc768e849594', 'protein', 28, 'as-fed'),
  ('c29eeae4-68aa-43ac-8dc8-bc768e849594', 'fat', 18, 'as-fed'),
  ('c29eeae4-68aa-43ac-8dc8-bc768e849594', 'fiber', 2, 'as-fed'),
  ('c29eeae4-68aa-43ac-8dc8-bc768e849594', 'ash', 7.5, 'as-fed');

-- Purina Pro Plan — Large Athletic Adult Sensitive Skin Rijk aan Zalm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-adult-large-athletic-sensitive-skin-zalm',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Niet vermeld op de pagina: vocht, calcium, fosfor, omega-3 en omega-6.'
 where id = '00f4b629-9862-434f-92c7-8bf9e7e6c657';
delete from public.recipe_nutrition where recipe_version_id = '00f4b629-9862-434f-92c7-8bf9e7e6c657';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('00f4b629-9862-434f-92c7-8bf9e7e6c657', 'protein', 28, 'as-fed'),
  ('00f4b629-9862-434f-92c7-8bf9e7e6c657', 'fat', 18, 'as-fed'),
  ('00f4b629-9862-434f-92c7-8bf9e7e6c657', 'fiber', 3, 'as-fed'),
  ('00f4b629-9862-434f-92c7-8bf9e7e6c657', 'ash', 6.5, 'as-fed');

-- Purina Pro Plan — Large Athletic Puppy Healthy Start Rijk aan Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-puppy-large-athletic-healthy-start-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Niet vermeld op de pagina: vocht, calcium, fosfor, omega-3 en omega-6.'
 where id = 'f8858870-eab3-4748-bed7-aa2d166088fc';
delete from public.recipe_nutrition where recipe_version_id = 'f8858870-eab3-4748-bed7-aa2d166088fc';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f8858870-eab3-4748-bed7-aa2d166088fc', 'protein', 32, 'as-fed'),
  ('f8858870-eab3-4748-bed7-aa2d166088fc', 'fat', 18, 'as-fed'),
  ('f8858870-eab3-4748-bed7-aa2d166088fc', 'fiber', 2, 'as-fed'),
  ('f8858870-eab3-4748-bed7-aa2d166088fc', 'ash', 7.5, 'as-fed');

-- Purina Pro Plan — Large Puppy Starter Rijk aan Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-large-puppy-starter-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Niet vermeld op de pagina: vocht, calcium, fosfor, omega-3 en omega-6.'
 where id = 'fe356191-dd10-40e8-baee-78e93147acf4';
delete from public.recipe_nutrition where recipe_version_id = 'fe356191-dd10-40e8-baee-78e93147acf4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fe356191-dd10-40e8-baee-78e93147acf4', 'protein', 30, 'as-fed'),
  ('fe356191-dd10-40e8-baee-78e93147acf4', 'fat', 18, 'as-fed'),
  ('fe356191-dd10-40e8-baee-78e93147acf4', 'fiber', 3.5, 'as-fed'),
  ('fe356191-dd10-40e8-baee-78e93147acf4', 'ash', 8, 'as-fed');

-- Purina Pro Plan — Large Robust Adult Everyday Nutrition Rijk aan Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-adult-large-robust-everyday-nutrition-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Niet vermeld op de pagina: vocht, calcium, fosfor, omega-3 en omega-6.'
 where id = '2df2b654-326e-4b56-b936-9326f512d87c';
delete from public.recipe_nutrition where recipe_version_id = '2df2b654-326e-4b56-b936-9326f512d87c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2df2b654-326e-4b56-b936-9326f512d87c', 'protein', 27, 'as-fed'),
  ('2df2b654-326e-4b56-b936-9326f512d87c', 'fat', 12, 'as-fed'),
  ('2df2b654-326e-4b56-b936-9326f512d87c', 'fiber', 2.5, 'as-fed'),
  ('2df2b654-326e-4b56-b936-9326f512d87c', 'ash', 7.5, 'as-fed');

-- Purina Pro Plan — Large Robust Adult Sensitive Skin Rijk aan Zalm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-adult-large-robust-sensitive-skin-zalm',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Niet vermeld op de pagina: vocht, calcium, fosfor, omega-3 en omega-6.'
 where id = '9ebd1886-dd3c-43d5-a9ef-6998e1786f3f';
delete from public.recipe_nutrition where recipe_version_id = '9ebd1886-dd3c-43d5-a9ef-6998e1786f3f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9ebd1886-dd3c-43d5-a9ef-6998e1786f3f', 'protein', 27, 'as-fed'),
  ('9ebd1886-dd3c-43d5-a9ef-6998e1786f3f', 'fat', 12.5, 'as-fed'),
  ('9ebd1886-dd3c-43d5-a9ef-6998e1786f3f', 'fiber', 3, 'as-fed'),
  ('9ebd1886-dd3c-43d5-a9ef-6998e1786f3f', 'ash', 7.5, 'as-fed');

-- Purina Pro Plan — Large Robust Puppy Healthy Start Rijk aan Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-puppy-large-robust-healthy-start-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Niet vermeld op de pagina: vocht, calcium, fosfor, omega-3 en omega-6.'
 where id = 'c032cfbc-4ff9-4093-acee-6ebca7f1c763';
delete from public.recipe_nutrition where recipe_version_id = 'c032cfbc-4ff9-4093-acee-6ebca7f1c763';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c032cfbc-4ff9-4093-acee-6ebca7f1c763', 'protein', 29, 'as-fed'),
  ('c032cfbc-4ff9-4093-acee-6ebca7f1c763', 'fat', 15, 'as-fed'),
  ('c032cfbc-4ff9-4093-acee-6ebca7f1c763', 'fiber', 2.5, 'as-fed'),
  ('c032cfbc-4ff9-4093-acee-6ebca7f1c763', 'ash', 7.5, 'as-fed');

-- Purina Pro Plan — Medium & Large Adult 7+ Age Defence Rijk aan Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-senior-medium-large-age-defence-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Niet vermeld op de pagina: vocht, calcium, fosfor, omega-3 en omega-6.'
 where id = '140b72f1-9b67-46af-870a-c608578af6a1';
delete from public.recipe_nutrition where recipe_version_id = '140b72f1-9b67-46af-870a-c608578af6a1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('140b72f1-9b67-46af-870a-c608578af6a1', 'protein', 29, 'as-fed'),
  ('140b72f1-9b67-46af-870a-c608578af6a1', 'fat', 15, 'as-fed'),
  ('140b72f1-9b67-46af-870a-c608578af6a1', 'fiber', 2, 'as-fed'),
  ('140b72f1-9b67-46af-870a-c608578af6a1', 'ash', 8, 'as-fed');

-- Purina Pro Plan — Medium & Large Adult 7+ Sensitive Skin Rijk aan Zalm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-senior-medium-sensitive-skin-zalm',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Niet vermeld op de pagina: vocht, calcium, fosfor, omega-3 en omega-6.'
 where id = 'b310432e-0d09-4fb1-84d3-a25e7a044ca9';
delete from public.recipe_nutrition where recipe_version_id = 'b310432e-0d09-4fb1-84d3-a25e7a044ca9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b310432e-0d09-4fb1-84d3-a25e7a044ca9', 'protein', 28, 'as-fed'),
  ('b310432e-0d09-4fb1-84d3-a25e7a044ca9', 'fat', 14, 'as-fed'),
  ('b310432e-0d09-4fb1-84d3-a25e7a044ca9', 'fiber', 2.5, 'as-fed'),
  ('b310432e-0d09-4fb1-84d3-a25e7a044ca9', 'ash', 7.5, 'as-fed');

-- Purina Pro Plan — Medium & Large Adult Sensitive Digestion Graanvrij Rijk aan Kalkoen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-graan-vrij-medium-sensitive-digestion-kalkoen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Niet vermeld op de pagina: vocht, calcium, fosfor, omega-3 en omega-6.'
 where id = 'a29a3ab0-4801-4839-8827-72ca359cf9ea';
delete from public.recipe_nutrition where recipe_version_id = 'a29a3ab0-4801-4839-8827-72ca359cf9ea';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a29a3ab0-4801-4839-8827-72ca359cf9ea', 'protein', 28, 'as-fed'),
  ('a29a3ab0-4801-4839-8827-72ca359cf9ea', 'fat', 16, 'as-fed'),
  ('a29a3ab0-4801-4839-8827-72ca359cf9ea', 'fiber', 3, 'as-fed'),
  ('a29a3ab0-4801-4839-8827-72ca359cf9ea', 'ash', 8, 'as-fed');

-- Purina Pro Plan — Medium Adult Everyday Nutrition Rijk aan Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-adult-medium-everyday-nutrition-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Niet vermeld op de pagina: vocht, calcium, fosfor, omega-3 en omega-6.'
 where id = '895a924a-c350-4438-8683-33d8fb475778';
delete from public.recipe_nutrition where recipe_version_id = '895a924a-c350-4438-8683-33d8fb475778';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('895a924a-c350-4438-8683-33d8fb475778', 'protein', 26, 'as-fed'),
  ('895a924a-c350-4438-8683-33d8fb475778', 'fat', 16, 'as-fed'),
  ('895a924a-c350-4438-8683-33d8fb475778', 'fiber', 2, 'as-fed'),
  ('895a924a-c350-4438-8683-33d8fb475778', 'ash', 7.5, 'as-fed');

-- Purina Pro Plan — Medium Adult Sensitive Digestion Rijk aan Lam (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-adult-medium-sensitive-digestion-lam',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Niet vermeld op de pagina: vocht, calcium, fosfor, omega-3 en omega-6.'
 where id = '173f4a5c-5214-43a8-96d3-8c68dc41d4d0';
delete from public.recipe_nutrition where recipe_version_id = '173f4a5c-5214-43a8-96d3-8c68dc41d4d0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('173f4a5c-5214-43a8-96d3-8c68dc41d4d0', 'protein', 26, 'as-fed'),
  ('173f4a5c-5214-43a8-96d3-8c68dc41d4d0', 'fat', 16, 'as-fed'),
  ('173f4a5c-5214-43a8-96d3-8c68dc41d4d0', 'fiber', 2.5, 'as-fed'),
  ('173f4a5c-5214-43a8-96d3-8c68dc41d4d0', 'ash', 7.5, 'as-fed');

-- Purina Pro Plan — Medium Puppy Healthy Start Rijk aan Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-puppy-medium-healthy-start-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Niet vermeld op de pagina: vocht, calcium, fosfor, omega-3 en omega-6.'
 where id = '5b25254c-2182-45ab-a6ce-5d370119cf67';
delete from public.recipe_nutrition where recipe_version_id = '5b25254c-2182-45ab-a6ce-5d370119cf67';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5b25254c-2182-45ab-a6ce-5d370119cf67', 'protein', 30, 'as-fed'),
  ('5b25254c-2182-45ab-a6ce-5d370119cf67', 'fat', 19, 'as-fed'),
  ('5b25254c-2182-45ab-a6ce-5d370119cf67', 'fiber', 2, 'as-fed'),
  ('5b25254c-2182-45ab-a6ce-5d370119cf67', 'ash', 7.5, 'as-fed');

-- Purina Pro Plan — Medium Puppy Sensitive Digestion Rijk aan Lam (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-puppy-medium-sensitive-digestion-lam',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Niet vermeld op de pagina: vocht, calcium, fosfor, omega-3 en omega-6.'
 where id = '2e8b9627-1899-402a-a55e-12be3b4b0ea8';
delete from public.recipe_nutrition where recipe_version_id = '2e8b9627-1899-402a-a55e-12be3b4b0ea8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2e8b9627-1899-402a-a55e-12be3b4b0ea8', 'protein', 30, 'as-fed'),
  ('2e8b9627-1899-402a-a55e-12be3b4b0ea8', 'fat', 19, 'as-fed'),
  ('2e8b9627-1899-402a-a55e-12be3b4b0ea8', 'fiber', 2.5, 'as-fed'),
  ('2e8b9627-1899-402a-a55e-12be3b4b0ea8', 'ash', 7.7, 'as-fed');

-- Purina Pro Plan — Medium Puppy Sensitive Skin Rijk aan Zalm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-puppy-medium-sensitive-skin-zalm',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Niet vermeld op de pagina: vocht, calcium, fosfor, omega-3 en omega-6.'
 where id = '5fd9709f-bb94-4925-b189-7f1bd2154fbc';
delete from public.recipe_nutrition where recipe_version_id = '5fd9709f-bb94-4925-b189-7f1bd2154fbc';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5fd9709f-bb94-4925-b189-7f1bd2154fbc', 'protein', 32, 'as-fed'),
  ('5fd9709f-bb94-4925-b189-7f1bd2154fbc', 'fat', 20, 'as-fed'),
  ('5fd9709f-bb94-4925-b189-7f1bd2154fbc', 'fiber', 2.5, 'as-fed'),
  ('5fd9709f-bb94-4925-b189-7f1bd2154fbc', 'ash', 7.5, 'as-fed');

-- Purina Pro Plan — Small & Medium Puppy Starter Rijk aan Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-small-medium-puppy-starter-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Niet vermeld op de pagina: vocht, calcium, fosfor, omega-3 en omega-6.'
 where id = 'e9dcf884-c268-4b44-a7d9-2159026f16e2';
delete from public.recipe_nutrition where recipe_version_id = 'e9dcf884-c268-4b44-a7d9-2159026f16e2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e9dcf884-c268-4b44-a7d9-2159026f16e2', 'protein', 31, 'as-fed'),
  ('e9dcf884-c268-4b44-a7d9-2159026f16e2', 'fat', 19, 'as-fed'),
  ('e9dcf884-c268-4b44-a7d9-2159026f16e2', 'fiber', 3.5, 'as-fed'),
  ('e9dcf884-c268-4b44-a7d9-2159026f16e2', 'ash', 8, 'as-fed');

-- Purina Pro Plan — Small & Mini Adult 9+ Age Defence Rijk aan Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-senior-small-age-defence-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Niet vermeld op de pagina: vocht, calcium, fosfor, omega-3 en omega-6.'
 where id = '8d5dcd03-c7b0-4d49-a12c-b164cbe527c3';
delete from public.recipe_nutrition where recipe_version_id = '8d5dcd03-c7b0-4d49-a12c-b164cbe527c3';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8d5dcd03-c7b0-4d49-a12c-b164cbe527c3', 'protein', 29, 'as-fed'),
  ('8d5dcd03-c7b0-4d49-a12c-b164cbe527c3', 'fat', 15, 'as-fed'),
  ('8d5dcd03-c7b0-4d49-a12c-b164cbe527c3', 'fiber', 2, 'as-fed'),
  ('8d5dcd03-c7b0-4d49-a12c-b164cbe527c3', 'ash', 7.5, 'as-fed');

-- Purina Pro Plan — Small & Mini Adult Everyday Nutrition Rijk aan Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-adult-small-everyday-nutrition-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Niet vermeld op de pagina: vocht, calcium, fosfor, omega-3 en omega-6.'
 where id = '1ef8f93b-f00d-4808-b0b1-577f2d7953dd';
delete from public.recipe_nutrition where recipe_version_id = '1ef8f93b-f00d-4808-b0b1-577f2d7953dd';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1ef8f93b-f00d-4808-b0b1-577f2d7953dd', 'protein', 28, 'as-fed'),
  ('1ef8f93b-f00d-4808-b0b1-577f2d7953dd', 'fat', 17, 'as-fed'),
  ('1ef8f93b-f00d-4808-b0b1-577f2d7953dd', 'fiber', 2, 'as-fed'),
  ('1ef8f93b-f00d-4808-b0b1-577f2d7953dd', 'ash', 7.5, 'as-fed');

-- Purina Pro Plan — Small & Mini Adult Sensitive Skin Rijk aan Zalm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-adult-small-sensitive-skin-zalm',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Niet vermeld op de pagina: vocht, calcium, fosfor, omega-3 en omega-6.'
 where id = 'b5222477-eae8-4c78-acd3-67fc1d323bc5';
delete from public.recipe_nutrition where recipe_version_id = 'b5222477-eae8-4c78-acd3-67fc1d323bc5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b5222477-eae8-4c78-acd3-67fc1d323bc5', 'protein', 30, 'as-fed'),
  ('b5222477-eae8-4c78-acd3-67fc1d323bc5', 'fat', 18, 'as-fed'),
  ('b5222477-eae8-4c78-acd3-67fc1d323bc5', 'fiber', 2.5, 'as-fed'),
  ('b5222477-eae8-4c78-acd3-67fc1d323bc5', 'ash', 7, 'as-fed');

-- Purina Pro Plan — Small & Mini Puppy Healthy Start Rijk aan Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-puppy-small-healthy-start-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Niet vermeld op de pagina: vocht, calcium, fosfor, omega-3 en omega-6.'
 where id = '74077f8c-dcf2-42c8-99b8-48e3dee065f8';
delete from public.recipe_nutrition where recipe_version_id = '74077f8c-dcf2-42c8-99b8-48e3dee065f8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('74077f8c-dcf2-42c8-99b8-48e3dee065f8', 'protein', 32, 'as-fed'),
  ('74077f8c-dcf2-42c8-99b8-48e3dee065f8', 'fat', 21, 'as-fed'),
  ('74077f8c-dcf2-42c8-99b8-48e3dee065f8', 'fiber', 2, 'as-fed'),
  ('74077f8c-dcf2-42c8-99b8-48e3dee065f8', 'ash', 7.5, 'as-fed');

-- Purina Pro Plan — Small & Mini Puppy Sensitive Skin Rijk aan Zalm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-puppy-small-sensitive-skin-zalm',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Niet vermeld op de pagina: vocht, calcium, fosfor, omega-3 en omega-6.'
 where id = '11bb060e-d214-4af9-bbcb-bf686c2c3f54';
delete from public.recipe_nutrition where recipe_version_id = '11bb060e-d214-4af9-bbcb-bf686c2c3f54';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('11bb060e-d214-4af9-bbcb-bf686c2c3f54', 'protein', 32, 'as-fed'),
  ('11bb060e-d214-4af9-bbcb-bf686c2c3f54', 'fat', 21, 'as-fed'),
  ('11bb060e-d214-4af9-bbcb-bf686c2c3f54', 'fiber', 2, 'as-fed'),
  ('11bb060e-d214-4af9-bbcb-bf686c2c3f54', 'ash', 7, 'as-fed');

-- Purina Pro Plan Veterinary Diets — CN Convalescence (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-convalescence-natvoer',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 1,1 kcal/g omgerekend naar 110 kcal/100 g (× 100). Niet vermeld op de pagina: ruwe as, calcium en fosfor.'
 where id = 'ae5b3c38-3674-46cc-bfc5-3e05dee4fd0c';
delete from public.recipe_nutrition where recipe_version_id = 'ae5b3c38-3674-46cc-bfc5-3e05dee4fd0c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ae5b3c38-3674-46cc-bfc5-3e05dee4fd0c', 'protein', 11.2, 'as-fed'),
  ('ae5b3c38-3674-46cc-bfc5-3e05dee4fd0c', 'fat', 7.8, 'as-fed'),
  ('ae5b3c38-3674-46cc-bfc5-3e05dee4fd0c', 'fiber', 0.3, 'as-fed'),
  ('ae5b3c38-3674-46cc-bfc5-3e05dee4fd0c', 'moisture', 76, 'as-fed'),
  ('ae5b3c38-3674-46cc-bfc5-3e05dee4fd0c', 'kcal', 110, 'as-fed'),
  ('ae5b3c38-3674-46cc-bfc5-3e05dee4fd0c', 'omega3', 0.3, 'as-fed'),
  ('ae5b3c38-3674-46cc-bfc5-3e05dee4fd0c', 'omega6', 2.5, 'as-fed');

-- Purina Pro Plan Veterinary Diets — DM Diabetes Management (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-diabetes-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3,35 kcal/g omgerekend naar 335 kcal/100 g (× 100). Niet vermeld op de pagina: ruwe as, vocht, calcium en fosfor.'
 where id = 'a9b72c74-7683-4af1-9151-8709355071bc';
delete from public.recipe_nutrition where recipe_version_id = 'a9b72c74-7683-4af1-9151-8709355071bc';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a9b72c74-7683-4af1-9151-8709355071bc', 'protein', 37, 'as-fed'),
  ('a9b72c74-7683-4af1-9151-8709355071bc', 'fat', 12, 'as-fed'),
  ('a9b72c74-7683-4af1-9151-8709355071bc', 'fiber', 7, 'as-fed'),
  ('a9b72c74-7683-4af1-9151-8709355071bc', 'kcal', 335, 'as-fed'),
  ('a9b72c74-7683-4af1-9151-8709355071bc', 'omega3', 0.4, 'as-fed'),
  ('a9b72c74-7683-4af1-9151-8709355071bc', 'omega6', 2, 'as-fed');

-- Purina Pro Plan Veterinary Diets — DRM Dermatosis (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondennvoer/product-proplan-veterinary-diets-dermatose-vis',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 4,01 kcal/g omgerekend naar 401 kcal/100 g (× 100). Niet vermeld op de pagina: ruwe as, calcium en fosfor.'
 where id = 'a9089c57-3aec-4912-b1e5-97b15b40a2eb';
delete from public.recipe_nutrition where recipe_version_id = 'a9089c57-3aec-4912-b1e5-97b15b40a2eb';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a9089c57-3aec-4912-b1e5-97b15b40a2eb', 'protein', 30, 'as-fed'),
  ('a9089c57-3aec-4912-b1e5-97b15b40a2eb', 'fat', 18, 'as-fed'),
  ('a9089c57-3aec-4912-b1e5-97b15b40a2eb', 'fiber', 2.5, 'as-fed'),
  ('a9089c57-3aec-4912-b1e5-97b15b40a2eb', 'moisture', 7.5, 'as-fed'),
  ('a9089c57-3aec-4912-b1e5-97b15b40a2eb', 'kcal', 401, 'as-fed'),
  ('a9089c57-3aec-4912-b1e5-97b15b40a2eb', 'omega3', 1.5, 'as-fed'),
  ('a9089c57-3aec-4912-b1e5-97b15b40a2eb', 'omega6', 2.3, 'as-fed');

-- Purina Pro Plan Veterinary Diets — EN Gastrointestinal (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-gastrointestinaal',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3,48 kcal/g omgerekend naar 348 kcal/100 g (× 100). Niet vermeld op de pagina: ruwe as, calcium en fosfor.'
 where id = 'c9ade6f0-fc65-4514-a65c-e43ce99f20d4';
delete from public.recipe_nutrition where recipe_version_id = 'c9ade6f0-fc65-4514-a65c-e43ce99f20d4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c9ade6f0-fc65-4514-a65c-e43ce99f20d4', 'protein', 24, 'as-fed'),
  ('c9ade6f0-fc65-4514-a65c-e43ce99f20d4', 'fat', 10.5, 'as-fed'),
  ('c9ade6f0-fc65-4514-a65c-e43ce99f20d4', 'fiber', 2, 'as-fed'),
  ('c9ade6f0-fc65-4514-a65c-e43ce99f20d4', 'moisture', 7.5, 'as-fed'),
  ('c9ade6f0-fc65-4514-a65c-e43ce99f20d4', 'kcal', 348, 'as-fed'),
  ('c9ade6f0-fc65-4514-a65c-e43ce99f20d4', 'omega3', 0.4, 'as-fed'),
  ('c9ade6f0-fc65-4514-a65c-e43ce99f20d4', 'omega6', 2.2, 'as-fed');

-- Purina Pro Plan Veterinary Diets — EN Gastrointestinal Natvoer (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-gastrointestinaal-natvoer',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 1,08 kcal/g omgerekend naar 108 kcal/100 g (× 100). Niet vermeld op de pagina: ruwe as, calcium en fosfor.'
 where id = 'c1073555-4e1d-41a1-834e-81159058553a';
delete from public.recipe_nutrition where recipe_version_id = 'c1073555-4e1d-41a1-834e-81159058553a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c1073555-4e1d-41a1-834e-81159058553a', 'protein', 8, 'as-fed'),
  ('c1073555-4e1d-41a1-834e-81159058553a', 'fat', 4.5, 'as-fed'),
  ('c1073555-4e1d-41a1-834e-81159058553a', 'fiber', 1, 'as-fed'),
  ('c1073555-4e1d-41a1-834e-81159058553a', 'moisture', 72.5, 'as-fed'),
  ('c1073555-4e1d-41a1-834e-81159058553a', 'kcal', 108, 'as-fed'),
  ('c1073555-4e1d-41a1-834e-81159058553a', 'omega3', 0.1, 'as-fed'),
  ('c1073555-4e1d-41a1-834e-81159058553a', 'omega6', 0.8, 'as-fed');

-- Purina Pro Plan Veterinary Diets — HA Hypoallergenic (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-hypoallergeen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3,42 kcal/g omgerekend naar 342 kcal/100 g (× 100). Niet vermeld op de pagina: ruwe as, calcium en fosfor.'
 where id = '81ed7ebd-8ae4-420a-90dd-fc1c82122143';
delete from public.recipe_nutrition where recipe_version_id = '81ed7ebd-8ae4-420a-90dd-fc1c82122143';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('81ed7ebd-8ae4-420a-90dd-fc1c82122143', 'protein', 21, 'as-fed'),
  ('81ed7ebd-8ae4-420a-90dd-fc1c82122143', 'fat', 10, 'as-fed'),
  ('81ed7ebd-8ae4-420a-90dd-fc1c82122143', 'fiber', 2, 'as-fed'),
  ('81ed7ebd-8ae4-420a-90dd-fc1c82122143', 'moisture', 7.5, 'as-fed'),
  ('81ed7ebd-8ae4-420a-90dd-fc1c82122143', 'kcal', 342, 'as-fed'),
  ('81ed7ebd-8ae4-420a-90dd-fc1c82122143', 'omega3', 0.5, 'as-fed'),
  ('81ed7ebd-8ae4-420a-90dd-fc1c82122143', 'omega6', 1.8, 'as-fed');

-- Purina Pro Plan Veterinary Diets — HA Hypoallergenic Natvoer (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-hypoallergeen-natvoer',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 0,94 kcal/g omgerekend naar 94 kcal/100 g (× 100). Niet vermeld op de pagina: ruwe as, calcium en fosfor.'
 where id = '0117527e-d962-4a58-92d7-c4f07393d956';
delete from public.recipe_nutrition where recipe_version_id = '0117527e-d962-4a58-92d7-c4f07393d956';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0117527e-d962-4a58-92d7-c4f07393d956', 'protein', 6.2, 'as-fed'),
  ('0117527e-d962-4a58-92d7-c4f07393d956', 'fat', 3.7, 'as-fed'),
  ('0117527e-d962-4a58-92d7-c4f07393d956', 'fiber', 2.1, 'as-fed'),
  ('0117527e-d962-4a58-92d7-c4f07393d956', 'moisture', 74.3, 'as-fed'),
  ('0117527e-d962-4a58-92d7-c4f07393d956', 'kcal', 94, 'as-fed'),
  ('0117527e-d962-4a58-92d7-c4f07393d956', 'omega3', 0.17, 'as-fed'),
  ('0117527e-d962-4a58-92d7-c4f07393d956', 'omega6', 0.89, 'as-fed');

-- Purina Pro Plan Veterinary Diets — HP Hepatic (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-hepatic-lever',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3,92 kcal/g omgerekend naar 392 kcal/100 g (× 100). Niet vermeld op de pagina: ruwe as, vocht, calcium en fosfor.'
 where id = '0672be6a-835d-4226-988e-375652a3fa3d';
delete from public.recipe_nutrition where recipe_version_id = '0672be6a-835d-4226-988e-375652a3fa3d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0672be6a-835d-4226-988e-375652a3fa3d', 'protein', 19, 'as-fed'),
  ('0672be6a-835d-4226-988e-375652a3fa3d', 'fat', 18, 'as-fed'),
  ('0672be6a-835d-4226-988e-375652a3fa3d', 'fiber', 3.5, 'as-fed'),
  ('0672be6a-835d-4226-988e-375652a3fa3d', 'kcal', 392, 'as-fed'),
  ('0672be6a-835d-4226-988e-375652a3fa3d', 'omega3', 0.45, 'as-fed'),
  ('0672be6a-835d-4226-988e-375652a3fa3d', 'omega6', 2.43, 'as-fed');

-- Purina Pro Plan Veterinary Diets — JM Joint Mobility (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-Joint-mobility-gewricht',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3,72 kcal/g omgerekend naar 372 kcal/100 g (× 100). Niet vermeld op de pagina: ruwe as, calcium en fosfor.'
 where id = '9d4056c2-c7a3-47d0-9e56-4399e5cdab74';
delete from public.recipe_nutrition where recipe_version_id = '9d4056c2-c7a3-47d0-9e56-4399e5cdab74';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9d4056c2-c7a3-47d0-9e56-4399e5cdab74', 'protein', 30, 'as-fed'),
  ('9d4056c2-c7a3-47d0-9e56-4399e5cdab74', 'fat', 12, 'as-fed'),
  ('9d4056c2-c7a3-47d0-9e56-4399e5cdab74', 'fiber', 2.5, 'as-fed'),
  ('9d4056c2-c7a3-47d0-9e56-4399e5cdab74', 'moisture', 7.5, 'as-fed'),
  ('9d4056c2-c7a3-47d0-9e56-4399e5cdab74', 'kcal', 372, 'as-fed'),
  ('9d4056c2-c7a3-47d0-9e56-4399e5cdab74', 'omega3', 1, 'as-fed'),
  ('9d4056c2-c7a3-47d0-9e56-4399e5cdab74', 'omega6', 1.5, 'as-fed');

-- Purina Pro Plan Veterinary Diets — NC Neurocare (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-neurocare-hersenfunctie',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3,92 kcal/g omgerekend naar 392 kcal/100 g (× 100). Niet vermeld op de pagina: ruwe as, calcium, fosfor, omega-3 en omega-6.'
 where id = '464e5caf-37c2-447f-83a9-9babafb3d00e';
delete from public.recipe_nutrition where recipe_version_id = '464e5caf-37c2-447f-83a9-9babafb3d00e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('464e5caf-37c2-447f-83a9-9babafb3d00e', 'protein', 30, 'as-fed'),
  ('464e5caf-37c2-447f-83a9-9babafb3d00e', 'fat', 15, 'as-fed'),
  ('464e5caf-37c2-447f-83a9-9babafb3d00e', 'fiber', 1.5, 'as-fed'),
  ('464e5caf-37c2-447f-83a9-9babafb3d00e', 'moisture', 7.5, 'as-fed'),
  ('464e5caf-37c2-447f-83a9-9babafb3d00e', 'kcal', 392, 'as-fed');

-- Purina Pro Plan Veterinary Diets — NF Renal Function (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-nierfunctie',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3,75 kcal/g omgerekend naar 375 kcal/100 g (× 100). Niet vermeld op de pagina: ruwe as.'
 where id = '123fad15-a243-4539-9447-0e2840fd5679';
delete from public.recipe_nutrition where recipe_version_id = '123fad15-a243-4539-9447-0e2840fd5679';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('123fad15-a243-4539-9447-0e2840fd5679', 'protein', 13, 'as-fed'),
  ('123fad15-a243-4539-9447-0e2840fd5679', 'fat', 14.5, 'as-fed'),
  ('123fad15-a243-4539-9447-0e2840fd5679', 'fiber', 2, 'as-fed'),
  ('123fad15-a243-4539-9447-0e2840fd5679', 'moisture', 7, 'as-fed'),
  ('123fad15-a243-4539-9447-0e2840fd5679', 'kcal', 375, 'as-fed'),
  ('123fad15-a243-4539-9447-0e2840fd5679', 'calcium', 0.8, 'as-fed'),
  ('123fad15-a243-4539-9447-0e2840fd5679', 'phosphorus', 0.3, 'as-fed'),
  ('123fad15-a243-4539-9447-0e2840fd5679', 'omega3', 0.3, 'as-fed'),
  ('123fad15-a243-4539-9447-0e2840fd5679', 'omega6', 2.5, 'as-fed');

-- Purina Pro Plan Veterinary Diets — NF Renal Function Natvoer (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-nierfunctie-natvoer',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 1,29 kcal/g omgerekend naar 129 kcal/100 g (× 100). Niet vermeld op de pagina: ruwe as.'
 where id = '41c0744c-f1ed-448c-ae04-12718ffd307c';
delete from public.recipe_nutrition where recipe_version_id = '41c0744c-f1ed-448c-ae04-12718ffd307c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('41c0744c-f1ed-448c-ae04-12718ffd307c', 'protein', 5.4, 'as-fed'),
  ('41c0744c-f1ed-448c-ae04-12718ffd307c', 'fat', 7.6, 'as-fed'),
  ('41c0744c-f1ed-448c-ae04-12718ffd307c', 'fiber', 0.3, 'as-fed'),
  ('41c0744c-f1ed-448c-ae04-12718ffd307c', 'moisture', 72, 'as-fed'),
  ('41c0744c-f1ed-448c-ae04-12718ffd307c', 'kcal', 129, 'as-fed'),
  ('41c0744c-f1ed-448c-ae04-12718ffd307c', 'calcium', 0.22, 'as-fed'),
  ('41c0744c-f1ed-448c-ae04-12718ffd307c', 'phosphorus', 0.11, 'as-fed'),
  ('41c0744c-f1ed-448c-ae04-12718ffd307c', 'omega3', 0.1, 'as-fed'),
  ('41c0744c-f1ed-448c-ae04-12718ffd307c', 'omega6', 1.2, 'as-fed');

-- Purina Pro Plan Veterinary Diets — OM Obesity Management (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-overgewicht',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 2,9 kcal/g omgerekend naar 290 kcal/100 g (× 100). Niet vermeld op de pagina: ruwe as, calcium, fosfor, omega-3 en omega-6.'
 where id = '025ea89f-1c1a-4a45-9782-8f23128df4af';
delete from public.recipe_nutrition where recipe_version_id = '025ea89f-1c1a-4a45-9782-8f23128df4af';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('025ea89f-1c1a-4a45-9782-8f23128df4af', 'protein', 29, 'as-fed'),
  ('025ea89f-1c1a-4a45-9782-8f23128df4af', 'fat', 6, 'as-fed'),
  ('025ea89f-1c1a-4a45-9782-8f23128df4af', 'fiber', 10, 'as-fed'),
  ('025ea89f-1c1a-4a45-9782-8f23128df4af', 'moisture', 7.5, 'as-fed'),
  ('025ea89f-1c1a-4a45-9782-8f23128df4af', 'kcal', 290, 'as-fed');

-- Purina Pro Plan Veterinary Diets — OM Obesity Management Natvoer (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-overgewicht-natvoer',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 0,62 kcal/g omgerekend naar 62 kcal/100 g (× 100). Niet vermeld op de pagina: ruwe as, calcium, fosfor, omega-3 en omega-6.'
 where id = '9257dd90-0755-4874-8a9d-049f4812b1f3';
delete from public.recipe_nutrition where recipe_version_id = '9257dd90-0755-4874-8a9d-049f4812b1f3';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9257dd90-0755-4874-8a9d-049f4812b1f3', 'protein', 8.8, 'as-fed'),
  ('9257dd90-0755-4874-8a9d-049f4812b1f3', 'fat', 2.5, 'as-fed'),
  ('9257dd90-0755-4874-8a9d-049f4812b1f3', 'fiber', 4.4, 'as-fed'),
  ('9257dd90-0755-4874-8a9d-049f4812b1f3', 'moisture', 79.5, 'as-fed'),
  ('9257dd90-0755-4874-8a9d-049f4812b1f3', 'kcal', 62, 'as-fed');

-- Purina Pro Plan Veterinary Diets — UR Urinary (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-urinary',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3,8 kcal/g omgerekend naar 380 kcal/100 g (× 100). Niet vermeld op de pagina: ruwe as, omega-3 en omega-6.'
 where id = 'cbd569a3-95a4-4a44-bdbb-88752dd5a31d';
delete from public.recipe_nutrition where recipe_version_id = 'cbd569a3-95a4-4a44-bdbb-88752dd5a31d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('cbd569a3-95a4-4a44-bdbb-88752dd5a31d', 'protein', 22, 'as-fed'),
  ('cbd569a3-95a4-4a44-bdbb-88752dd5a31d', 'fat', 15, 'as-fed'),
  ('cbd569a3-95a4-4a44-bdbb-88752dd5a31d', 'fiber', 1.5, 'as-fed'),
  ('cbd569a3-95a4-4a44-bdbb-88752dd5a31d', 'moisture', 7, 'as-fed'),
  ('cbd569a3-95a4-4a44-bdbb-88752dd5a31d', 'kcal', 380, 'as-fed'),
  ('cbd569a3-95a4-4a44-bdbb-88752dd5a31d', 'calcium', 0.7, 'as-fed'),
  ('cbd569a3-95a4-4a44-bdbb-88752dd5a31d', 'phosphorus', 0.6, 'as-fed');

commit;
