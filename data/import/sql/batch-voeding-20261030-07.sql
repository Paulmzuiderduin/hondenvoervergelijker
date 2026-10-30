begin;

-- Purina Pro Plan — Medium Adult Sensitive Skin Zalm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.purina.nl/hond/hondenvoer/product-proplan-adult-medium-skin-zalm',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Geen metaboliseerbare energie op de pagina vermeld, daarom kcal null. Niet vermeld op de pagina: vocht, calcium, fosfor, omega-3 en omega-6.'
 where id = '7e7ca62a-52cd-4710-9a16-6ec0e1ee52cf';
delete from public.recipe_nutrition where recipe_version_id = '7e7ca62a-52cd-4710-9a16-6ec0e1ee52cf';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7e7ca62a-52cd-4710-9a16-6ec0e1ee52cf', 'protein', 29, 'as-fed'),
  ('7e7ca62a-52cd-4710-9a16-6ec0e1ee52cf', 'fat', 18, 'as-fed'),
  ('7e7ca62a-52cd-4710-9a16-6ec0e1ee52cf', 'fiber', 3, 'as-fed'),
  ('7e7ca62a-52cd-4710-9a16-6ec0e1ee52cf', 'ash', 7, 'as-fed');

commit;
