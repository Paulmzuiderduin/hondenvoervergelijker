begin;

-- Taste of the Wild — Taste of the Wild High Prairie Canine (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/taste_of_the_wild/droogvoer/175524',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Bron is de zooplus-productpagina uit het opdrachtbestand. De pagina vermeldt geen metaboliseerbare energie, calcium of fosfor; deze blijven null. Taurine is geen standaardnutrient en is niet opgenomen.'
 where id = '54a5ad84-b109-4169-b82d-4f70df89044c';
delete from public.recipe_nutrition where recipe_version_id = '54a5ad84-b109-4169-b82d-4f70df89044c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('54a5ad84-b109-4169-b82d-4f70df89044c', 'protein', 32, 'as-fed'),
  ('54a5ad84-b109-4169-b82d-4f70df89044c', 'fat', 18, 'as-fed'),
  ('54a5ad84-b109-4169-b82d-4f70df89044c', 'fiber', 3, 'as-fed'),
  ('54a5ad84-b109-4169-b82d-4f70df89044c', 'ash', 9.2, 'as-fed'),
  ('54a5ad84-b109-4169-b82d-4f70df89044c', 'moisture', 10, 'as-fed'),
  ('54a5ad84-b109-4169-b82d-4f70df89044c', 'omega3', 0.3, 'as-fed'),
  ('54a5ad84-b109-4169-b82d-4f70df89044c', 'omega6', 2.8, 'as-fed');

-- Taste of the Wild — Taste of the Wild High Prairie Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/taste_of_the_wild/droogvoer/409376',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Bron is de zooplus-productpagina uit het opdrachtbestand. De pagina vermeldt geen metaboliseerbare energie, calcium of fosfor; deze blijven null. DHA is geen standaardnutrient en is niet opgenomen.'
 where id = 'a0b1e55f-3492-46a8-8074-abbaffef6268';
delete from public.recipe_nutrition where recipe_version_id = 'a0b1e55f-3492-46a8-8074-abbaffef6268';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a0b1e55f-3492-46a8-8074-abbaffef6268', 'protein', 27, 'as-fed'),
  ('a0b1e55f-3492-46a8-8074-abbaffef6268', 'fat', 15, 'as-fed'),
  ('a0b1e55f-3492-46a8-8074-abbaffef6268', 'fiber', 5, 'as-fed'),
  ('a0b1e55f-3492-46a8-8074-abbaffef6268', 'ash', 7.3, 'as-fed'),
  ('a0b1e55f-3492-46a8-8074-abbaffef6268', 'moisture', 10, 'as-fed'),
  ('a0b1e55f-3492-46a8-8074-abbaffef6268', 'omega3', 0.3, 'as-fed'),
  ('a0b1e55f-3492-46a8-8074-abbaffef6268', 'omega6', 2.8, 'as-fed');

-- Taste of the Wild — Taste of the Wild Pacific Stream Canine (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/taste_of_the_wild/droogvoer/175525',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Bron is de zooplus-productpagina uit het opdrachtbestand. De pagina vermeldt geen metaboliseerbare energie, calcium of fosfor; deze blijven null.'
 where id = '59c37e17-402b-477c-9f73-d919b29c8a90';
delete from public.recipe_nutrition where recipe_version_id = '59c37e17-402b-477c-9f73-d919b29c8a90';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('59c37e17-402b-477c-9f73-d919b29c8a90', 'protein', 25, 'as-fed'),
  ('59c37e17-402b-477c-9f73-d919b29c8a90', 'fat', 15, 'as-fed'),
  ('59c37e17-402b-477c-9f73-d919b29c8a90', 'fiber', 3, 'as-fed'),
  ('59c37e17-402b-477c-9f73-d919b29c8a90', 'ash', 8.9, 'as-fed'),
  ('59c37e17-402b-477c-9f73-d919b29c8a90', 'moisture', 10, 'as-fed'),
  ('59c37e17-402b-477c-9f73-d919b29c8a90', 'omega3', 0.3, 'as-fed'),
  ('59c37e17-402b-477c-9f73-d919b29c8a90', 'omega6', 2.4, 'as-fed');

-- Taste of the Wild — Taste of the Wild Pine Forest Canine (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/taste_of_the_wild/droogvoer/550354',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Bron is de zooplus-productpagina uit het opdrachtbestand. De pagina vermeldt geen metaboliseerbare energie, calcium of fosfor; deze blijven null. DHA is geen standaardnutrient en is niet opgenomen.'
 where id = '25859661-a727-47fa-88f7-327a7f2c342d';
delete from public.recipe_nutrition where recipe_version_id = '25859661-a727-47fa-88f7-327a7f2c342d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('25859661-a727-47fa-88f7-327a7f2c342d', 'protein', 28, 'as-fed'),
  ('25859661-a727-47fa-88f7-327a7f2c342d', 'fat', 15, 'as-fed'),
  ('25859661-a727-47fa-88f7-327a7f2c342d', 'fiber', 4.5, 'as-fed'),
  ('25859661-a727-47fa-88f7-327a7f2c342d', 'ash', 6.9, 'as-fed'),
  ('25859661-a727-47fa-88f7-327a7f2c342d', 'moisture', 10, 'as-fed'),
  ('25859661-a727-47fa-88f7-327a7f2c342d', 'omega3', 0.3, 'as-fed'),
  ('25859661-a727-47fa-88f7-327a7f2c342d', 'omega6', 2.8, 'as-fed');

-- Taste of the Wild — Taste of the Wild Southwest Canyon Canine (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/taste_of_the_wild/droogvoer/409374',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Bron is de zooplus-productpagina uit het opdrachtbestand. De pagina vermeldt geen metaboliseerbare energie, calcium of fosfor; deze blijven null. DHA is geen standaardnutrient en is niet opgenomen.'
 where id = '661342cf-ab37-4e91-9aae-504eaefd7ee6';
delete from public.recipe_nutrition where recipe_version_id = '661342cf-ab37-4e91-9aae-504eaefd7ee6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('661342cf-ab37-4e91-9aae-504eaefd7ee6', 'protein', 29, 'as-fed'),
  ('661342cf-ab37-4e91-9aae-504eaefd7ee6', 'fat', 15, 'as-fed'),
  ('661342cf-ab37-4e91-9aae-504eaefd7ee6', 'fiber', 4.5, 'as-fed'),
  ('661342cf-ab37-4e91-9aae-504eaefd7ee6', 'ash', 7.8, 'as-fed'),
  ('661342cf-ab37-4e91-9aae-504eaefd7ee6', 'moisture', 10, 'as-fed'),
  ('661342cf-ab37-4e91-9aae-504eaefd7ee6', 'omega3', 0.3, 'as-fed'),
  ('661342cf-ab37-4e91-9aae-504eaefd7ee6', 'omega6', 2.4, 'as-fed');

-- KB RAW — KB Complete Eend/Lam (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://kbraw.eu/products/kb-complete/kb-complete-eend-lam/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron al als 185 kcal per 100 g; geen omrekening nodig. De Ca:P-ratio wordt niet als apart nutriënt opgeslagen. Omega-3 en omega-6 worden niet vermeld.'
 where id = '05d43d91-6c84-4f58-aa2f-f5a479585311';
delete from public.recipe_nutrition where recipe_version_id = '05d43d91-6c84-4f58-aa2f-f5a479585311';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('05d43d91-6c84-4f58-aa2f-f5a479585311', 'protein', 16, 'as-fed'),
  ('05d43d91-6c84-4f58-aa2f-f5a479585311', 'fat', 14, 'as-fed'),
  ('05d43d91-6c84-4f58-aa2f-f5a479585311', 'fiber', 0.14, 'as-fed'),
  ('05d43d91-6c84-4f58-aa2f-f5a479585311', 'ash', 3.5, 'as-fed'),
  ('05d43d91-6c84-4f58-aa2f-f5a479585311', 'moisture', 66, 'as-fed'),
  ('05d43d91-6c84-4f58-aa2f-f5a479585311', 'kcal', 185, 'as-fed'),
  ('05d43d91-6c84-4f58-aa2f-f5a479585311', 'calcium', 0.82, 'as-fed'),
  ('05d43d91-6c84-4f58-aa2f-f5a479585311', 'phosphorus', 0.58, 'as-fed');

-- KB RAW — KB Complete Insect/Konijn (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.kbraw.eu/products/kb-complete/kb-complete-insect-konijn/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron al als 154 kcal per 100 g; geen omrekening nodig. De Ca:P-ratio wordt niet als apart nutriënt opgeslagen. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'f3730dea-fd81-44c1-b33b-7b03bbff0106';
delete from public.recipe_nutrition where recipe_version_id = 'f3730dea-fd81-44c1-b33b-7b03bbff0106';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f3730dea-fd81-44c1-b33b-7b03bbff0106', 'protein', 16, 'as-fed'),
  ('f3730dea-fd81-44c1-b33b-7b03bbff0106', 'fat', 10, 'as-fed'),
  ('f3730dea-fd81-44c1-b33b-7b03bbff0106', 'fiber', 0.9, 'as-fed'),
  ('f3730dea-fd81-44c1-b33b-7b03bbff0106', 'ash', 2.6, 'as-fed'),
  ('f3730dea-fd81-44c1-b33b-7b03bbff0106', 'moisture', 69, 'as-fed'),
  ('f3730dea-fd81-44c1-b33b-7b03bbff0106', 'kcal', 154, 'as-fed'),
  ('f3730dea-fd81-44c1-b33b-7b03bbff0106', 'calcium', 0.68, 'as-fed'),
  ('f3730dea-fd81-44c1-b33b-7b03bbff0106', 'phosphorus', 0.4, 'as-fed');

-- KB RAW — KB Complete Regular (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://kbraw.eu/products/kb-complete/regular/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron al als 188 kcal per 100 g; geen omrekening nodig. De Ca:P-ratio wordt niet als apart nutriënt opgeslagen. Omega-3 en omega-6 worden niet vermeld.'
 where id = '2124cbb2-3356-4b60-870f-a4a90849a0e5';
delete from public.recipe_nutrition where recipe_version_id = '2124cbb2-3356-4b60-870f-a4a90849a0e5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2124cbb2-3356-4b60-870f-a4a90849a0e5', 'protein', 16, 'as-fed'),
  ('2124cbb2-3356-4b60-870f-a4a90849a0e5', 'fat', 14, 'as-fed'),
  ('2124cbb2-3356-4b60-870f-a4a90849a0e5', 'fiber', 0.3, 'as-fed'),
  ('2124cbb2-3356-4b60-870f-a4a90849a0e5', 'ash', 2.4, 'as-fed'),
  ('2124cbb2-3356-4b60-870f-a4a90849a0e5', 'moisture', 64, 'as-fed'),
  ('2124cbb2-3356-4b60-870f-a4a90849a0e5', 'kcal', 188, 'as-fed'),
  ('2124cbb2-3356-4b60-870f-a4a90849a0e5', 'calcium', 0.64, 'as-fed'),
  ('2124cbb2-3356-4b60-870f-a4a90849a0e5', 'phosphorus', 0.39, 'as-fed');

-- KB RAW — KB Complete Sensitive (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.kbraw.eu/products/kb-complete/sensitive/',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron al als 165 kcal per 100 g; geen omrekening nodig. De Ca:P-ratio wordt niet als apart nutriënt opgeslagen. Omega-3 en omega-6 worden niet vermeld.'
 where id = '1fce13dc-8798-4149-b39c-9f65c05b491e';
delete from public.recipe_nutrition where recipe_version_id = '1fce13dc-8798-4149-b39c-9f65c05b491e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1fce13dc-8798-4149-b39c-9f65c05b491e', 'protein', 19, 'as-fed'),
  ('1fce13dc-8798-4149-b39c-9f65c05b491e', 'fat', 10, 'as-fed'),
  ('1fce13dc-8798-4149-b39c-9f65c05b491e', 'fiber', 0.2, 'as-fed'),
  ('1fce13dc-8798-4149-b39c-9f65c05b491e', 'ash', 2.2, 'as-fed'),
  ('1fce13dc-8798-4149-b39c-9f65c05b491e', 'moisture', 66, 'as-fed'),
  ('1fce13dc-8798-4149-b39c-9f65c05b491e', 'kcal', 165, 'as-fed'),
  ('1fce13dc-8798-4149-b39c-9f65c05b491e', 'calcium', 0.64, 'as-fed'),
  ('1fce13dc-8798-4149-b39c-9f65c05b491e', 'phosphorus', 0.38, 'as-fed');

-- BARFmenu — Eend (raw)
update public.recipe_versions
   set nutrition_source_url = 'https://www.barfmenu.com/nl/barfmenu-eend.html',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'Energie staat op de bron al als 179,96 kcal per 100 g; geen omrekening nodig. Calcium en fosfor komen uit de specificatietabel van de analyse, niet uit de lijst met toegevoegde mineralen. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'ef5ed593-eac4-489b-8aa0-08dd7638106c';
delete from public.recipe_nutrition where recipe_version_id = 'ef5ed593-eac4-489b-8aa0-08dd7638106c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ef5ed593-eac4-489b-8aa0-08dd7638106c', 'protein', 15.92, 'as-fed'),
  ('ef5ed593-eac4-489b-8aa0-08dd7638106c', 'fat', 12.92, 'as-fed'),
  ('ef5ed593-eac4-489b-8aa0-08dd7638106c', 'fiber', 0.05, 'as-fed'),
  ('ef5ed593-eac4-489b-8aa0-08dd7638106c', 'ash', 3.42, 'as-fed'),
  ('ef5ed593-eac4-489b-8aa0-08dd7638106c', 'moisture', 66.41, 'as-fed'),
  ('ef5ed593-eac4-489b-8aa0-08dd7638106c', 'kcal', 179.96, 'as-fed'),
  ('ef5ed593-eac4-489b-8aa0-08dd7638106c', 'calcium', 0.93, 'as-fed'),
  ('ef5ed593-eac4-489b-8aa0-08dd7638106c', 'phosphorus', 0.62, 'as-fed');

-- Versele-Laga — Classic Duo Krok (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.versele.com/nl/be/classic/producten/classic-duokrok1020kg',
       nutrition_checked_at = '2026-10-31',
       nutrition_note = 'De pagina vermeldt geen vocht of metaboliseerbare energie; beide blijven null. Omega-3 en omega-6 worden niet vermeld.'
 where id = 'dc604c42-4c66-4b40-bf66-892976141e0e';
delete from public.recipe_nutrition where recipe_version_id = 'dc604c42-4c66-4b40-bf66-892976141e0e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('dc604c42-4c66-4b40-bf66-892976141e0e', 'protein', 22, 'as-fed'),
  ('dc604c42-4c66-4b40-bf66-892976141e0e', 'fat', 8, 'as-fed'),
  ('dc604c42-4c66-4b40-bf66-892976141e0e', 'fiber', 3, 'as-fed'),
  ('dc604c42-4c66-4b40-bf66-892976141e0e', 'ash', 7, 'as-fed'),
  ('dc604c42-4c66-4b40-bf66-892976141e0e', 'calcium', 1.6, 'as-fed'),
  ('dc604c42-4c66-4b40-bf66-892976141e0e', 'phosphorus', 1.1, 'as-fed');

commit;
