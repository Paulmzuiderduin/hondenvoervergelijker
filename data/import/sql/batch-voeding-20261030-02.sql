begin;

-- Butcher's — Healthy Heart met forel & groenten (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/healthy-heart-6-pack-can-390g-new/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. 84 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium en fosfor worden niet vermeld.'
 where id = 'ce3df1d0-0c97-4862-b052-b193dce96d6d';
delete from public.recipe_nutrition where recipe_version_id = 'ce3df1d0-0c97-4862-b052-b193dce96d6d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ce3df1d0-0c97-4862-b052-b193dce96d6d', 'protein', 8, 'as-fed'),
  ('ce3df1d0-0c97-4862-b052-b193dce96d6d', 'fat', 5, 'as-fed'),
  ('ce3df1d0-0c97-4862-b052-b193dce96d6d', 'fiber', 0.2, 'as-fed'),
  ('ce3df1d0-0c97-4862-b052-b193dce96d6d', 'ash', 2.5, 'as-fed'),
  ('ce3df1d0-0c97-4862-b052-b193dce96d6d', 'moisture', 82, 'as-fed'),
  ('ce3df1d0-0c97-4862-b052-b193dce96d6d', 'kcal', 84, 'as-fed'),
  ('ce3df1d0-0c97-4862-b052-b193dce96d6d', 'omega3', 0.17, 'as-fed'),
  ('ce3df1d0-0c97-4862-b052-b193dce96d6d', 'omega6', 0.7, 'as-fed');

-- Butcher's — Healthy Heart met kalkoen & groenten (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/healthy-heart-6-pack-can-390g-new/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. 84 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium en fosfor worden niet vermeld.'
 where id = '65634a4c-52a6-4766-94e6-0e61e3f75792';
delete from public.recipe_nutrition where recipe_version_id = '65634a4c-52a6-4766-94e6-0e61e3f75792';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('65634a4c-52a6-4766-94e6-0e61e3f75792', 'protein', 8, 'as-fed'),
  ('65634a4c-52a6-4766-94e6-0e61e3f75792', 'fat', 5, 'as-fed'),
  ('65634a4c-52a6-4766-94e6-0e61e3f75792', 'fiber', 0.2, 'as-fed'),
  ('65634a4c-52a6-4766-94e6-0e61e3f75792', 'ash', 2.5, 'as-fed'),
  ('65634a4c-52a6-4766-94e6-0e61e3f75792', 'moisture', 82, 'as-fed'),
  ('65634a4c-52a6-4766-94e6-0e61e3f75792', 'kcal', 84, 'as-fed'),
  ('65634a4c-52a6-4766-94e6-0e61e3f75792', 'omega3', 0.17, 'as-fed'),
  ('65634a4c-52a6-4766-94e6-0e61e3f75792', 'omega6', 0.7, 'as-fed');

-- Butcher's — Healthy Heart met zalm & groenten (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/healthy-heart-6-pack-can-390g-new/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. 84 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium en fosfor worden niet vermeld.'
 where id = '9b958b9f-17b1-4d62-be7e-66cb8673f69b';
delete from public.recipe_nutrition where recipe_version_id = '9b958b9f-17b1-4d62-be7e-66cb8673f69b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9b958b9f-17b1-4d62-be7e-66cb8673f69b', 'protein', 8, 'as-fed'),
  ('9b958b9f-17b1-4d62-be7e-66cb8673f69b', 'fat', 5, 'as-fed'),
  ('9b958b9f-17b1-4d62-be7e-66cb8673f69b', 'fiber', 0.2, 'as-fed'),
  ('9b958b9f-17b1-4d62-be7e-66cb8673f69b', 'ash', 2.5, 'as-fed'),
  ('9b958b9f-17b1-4d62-be7e-66cb8673f69b', 'moisture', 82, 'as-fed'),
  ('9b958b9f-17b1-4d62-be7e-66cb8673f69b', 'kcal', 84, 'as-fed'),
  ('9b958b9f-17b1-4d62-be7e-66cb8673f69b', 'omega3', 0.17, 'as-fed'),
  ('9b958b9f-17b1-4d62-be7e-66cb8673f69b', 'omega6', 0.7, 'as-fed');

-- Butcher's — Joints & Coat met kalkoen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/joints-coat-6-pack-390g-2/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. 89 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium en fosfor worden niet vermeld.'
 where id = '12102a43-c60d-41f0-88b5-668f9a4d9ee3';
delete from public.recipe_nutrition where recipe_version_id = '12102a43-c60d-41f0-88b5-668f9a4d9ee3';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('12102a43-c60d-41f0-88b5-668f9a4d9ee3', 'protein', 8.5, 'as-fed'),
  ('12102a43-c60d-41f0-88b5-668f9a4d9ee3', 'fat', 6, 'as-fed'),
  ('12102a43-c60d-41f0-88b5-668f9a4d9ee3', 'fiber', 0.2, 'as-fed'),
  ('12102a43-c60d-41f0-88b5-668f9a4d9ee3', 'ash', 2.5, 'as-fed'),
  ('12102a43-c60d-41f0-88b5-668f9a4d9ee3', 'moisture', 82, 'as-fed'),
  ('12102a43-c60d-41f0-88b5-668f9a4d9ee3', 'kcal', 89, 'as-fed'),
  ('12102a43-c60d-41f0-88b5-668f9a4d9ee3', 'omega3', 0.3, 'as-fed'),
  ('12102a43-c60d-41f0-88b5-668f9a4d9ee3', 'omega6', 0.7, 'as-fed');

-- Butcher's — Joints & Coat met kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/joints-coat-6-pack-390g-2/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. 89 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium en fosfor worden niet vermeld.'
 where id = 'afbaed30-c582-4a5c-9999-dacf8e74aa85';
delete from public.recipe_nutrition where recipe_version_id = 'afbaed30-c582-4a5c-9999-dacf8e74aa85';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('afbaed30-c582-4a5c-9999-dacf8e74aa85', 'protein', 8.5, 'as-fed'),
  ('afbaed30-c582-4a5c-9999-dacf8e74aa85', 'fat', 6, 'as-fed'),
  ('afbaed30-c582-4a5c-9999-dacf8e74aa85', 'fiber', 0.2, 'as-fed'),
  ('afbaed30-c582-4a5c-9999-dacf8e74aa85', 'ash', 2.5, 'as-fed'),
  ('afbaed30-c582-4a5c-9999-dacf8e74aa85', 'moisture', 82, 'as-fed'),
  ('afbaed30-c582-4a5c-9999-dacf8e74aa85', 'kcal', 89, 'as-fed'),
  ('afbaed30-c582-4a5c-9999-dacf8e74aa85', 'omega3', 0.3, 'as-fed'),
  ('afbaed30-c582-4a5c-9999-dacf8e74aa85', 'omega6', 0.7, 'as-fed');

-- Butcher's — Joints & Coat met zalm (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/joints-coat-6-pack-390g-2/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. 89 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium en fosfor worden niet vermeld.'
 where id = 'ad7fae84-f6fb-4972-8bf5-e0e0753c0313';
delete from public.recipe_nutrition where recipe_version_id = 'ad7fae84-f6fb-4972-8bf5-e0e0753c0313';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ad7fae84-f6fb-4972-8bf5-e0e0753c0313', 'protein', 8.5, 'as-fed'),
  ('ad7fae84-f6fb-4972-8bf5-e0e0753c0313', 'fat', 6, 'as-fed'),
  ('ad7fae84-f6fb-4972-8bf5-e0e0753c0313', 'fiber', 0.2, 'as-fed'),
  ('ad7fae84-f6fb-4972-8bf5-e0e0753c0313', 'ash', 2.5, 'as-fed'),
  ('ad7fae84-f6fb-4972-8bf5-e0e0753c0313', 'moisture', 82, 'as-fed'),
  ('ad7fae84-f6fb-4972-8bf5-e0e0753c0313', 'kcal', 89, 'as-fed'),
  ('ad7fae84-f6fb-4972-8bf5-e0e0753c0313', 'omega3', 0.3, 'as-fed'),
  ('ad7fae84-f6fb-4972-8bf5-e0e0753c0313', 'omega6', 0.7, 'as-fed');

-- Butcher's — Lean & Tasty met kalkoen, rijst & groenten (blik) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/lean-tasty-6-pack-390g-2/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. 74 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'dec68c57-1305-4bb0-8422-ff6b5f9f34f3';
delete from public.recipe_nutrition where recipe_version_id = 'dec68c57-1305-4bb0-8422-ff6b5f9f34f3';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('dec68c57-1305-4bb0-8422-ff6b5f9f34f3', 'protein', 8.5, 'as-fed'),
  ('dec68c57-1305-4bb0-8422-ff6b5f9f34f3', 'fat', 3, 'as-fed'),
  ('dec68c57-1305-4bb0-8422-ff6b5f9f34f3', 'fiber', 0.3, 'as-fed'),
  ('dec68c57-1305-4bb0-8422-ff6b5f9f34f3', 'ash', 2.5, 'as-fed'),
  ('dec68c57-1305-4bb0-8422-ff6b5f9f34f3', 'moisture', 82, 'as-fed'),
  ('dec68c57-1305-4bb0-8422-ff6b5f9f34f3', 'kcal', 74, 'as-fed');

-- Butcher's — Lean & Tasty met kalkoen, rijst & groenten (tray) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/lean-tasty-12-pack-150g-2/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. 72 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '85542c4c-5596-45b9-84a7-18452b1201aa';
delete from public.recipe_nutrition where recipe_version_id = '85542c4c-5596-45b9-84a7-18452b1201aa';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('85542c4c-5596-45b9-84a7-18452b1201aa', 'protein', 8.5, 'as-fed'),
  ('85542c4c-5596-45b9-84a7-18452b1201aa', 'fat', 2.5, 'as-fed'),
  ('85542c4c-5596-45b9-84a7-18452b1201aa', 'fiber', 0.2, 'as-fed'),
  ('85542c4c-5596-45b9-84a7-18452b1201aa', 'ash', 2.5, 'as-fed'),
  ('85542c4c-5596-45b9-84a7-18452b1201aa', 'moisture', 82, 'as-fed'),
  ('85542c4c-5596-45b9-84a7-18452b1201aa', 'kcal', 72, 'as-fed');

-- Butcher's — Lean & Tasty met kip, rijst & groenten (blik) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/lean-tasty-6-pack-390g-2/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. 74 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'a02327d2-d0aa-4a8e-ab66-9dafa245303d';
delete from public.recipe_nutrition where recipe_version_id = 'a02327d2-d0aa-4a8e-ab66-9dafa245303d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a02327d2-d0aa-4a8e-ab66-9dafa245303d', 'protein', 8.5, 'as-fed'),
  ('a02327d2-d0aa-4a8e-ab66-9dafa245303d', 'fat', 3, 'as-fed'),
  ('a02327d2-d0aa-4a8e-ab66-9dafa245303d', 'fiber', 0.3, 'as-fed'),
  ('a02327d2-d0aa-4a8e-ab66-9dafa245303d', 'ash', 2.5, 'as-fed'),
  ('a02327d2-d0aa-4a8e-ab66-9dafa245303d', 'moisture', 82, 'as-fed'),
  ('a02327d2-d0aa-4a8e-ab66-9dafa245303d', 'kcal', 74, 'as-fed');

-- Butcher's — Lean & Tasty met kip, rijst & groenten (tray) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/lean-tasty-12-pack-150g-2/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. 72 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'fe00de64-b466-48ad-b4f7-9978a84e508b';
delete from public.recipe_nutrition where recipe_version_id = 'fe00de64-b466-48ad-b4f7-9978a84e508b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fe00de64-b466-48ad-b4f7-9978a84e508b', 'protein', 8.5, 'as-fed'),
  ('fe00de64-b466-48ad-b4f7-9978a84e508b', 'fat', 2.5, 'as-fed'),
  ('fe00de64-b466-48ad-b4f7-9978a84e508b', 'fiber', 0.2, 'as-fed'),
  ('fe00de64-b466-48ad-b4f7-9978a84e508b', 'ash', 2.5, 'as-fed'),
  ('fe00de64-b466-48ad-b4f7-9978a84e508b', 'moisture', 82, 'as-fed'),
  ('fe00de64-b466-48ad-b4f7-9978a84e508b', 'kcal', 72, 'as-fed');

-- Butcher's — Lean & Tasty met rund, rijst & groenten (blik) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/lean-tasty-6-pack-390g-2/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. 74 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '8dbcb546-a30c-4809-83d3-ef4de8459c6d';
delete from public.recipe_nutrition where recipe_version_id = '8dbcb546-a30c-4809-83d3-ef4de8459c6d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8dbcb546-a30c-4809-83d3-ef4de8459c6d', 'protein', 8.5, 'as-fed'),
  ('8dbcb546-a30c-4809-83d3-ef4de8459c6d', 'fat', 3, 'as-fed'),
  ('8dbcb546-a30c-4809-83d3-ef4de8459c6d', 'fiber', 0.3, 'as-fed'),
  ('8dbcb546-a30c-4809-83d3-ef4de8459c6d', 'ash', 2.5, 'as-fed'),
  ('8dbcb546-a30c-4809-83d3-ef4de8459c6d', 'moisture', 82, 'as-fed'),
  ('8dbcb546-a30c-4809-83d3-ef4de8459c6d', 'kcal', 74, 'as-fed');

-- Butcher's — Lean & Tasty met rund, rijst & groenten (tray) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/lean-tasty-12-pack-150g-2/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. 72 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'b44a0c55-bd40-4e81-ab6f-0a5c06ad7fbb';
delete from public.recipe_nutrition where recipe_version_id = 'b44a0c55-bd40-4e81-ab6f-0a5c06ad7fbb';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b44a0c55-bd40-4e81-ab6f-0a5c06ad7fbb', 'protein', 8.5, 'as-fed'),
  ('b44a0c55-bd40-4e81-ab6f-0a5c06ad7fbb', 'fat', 2.5, 'as-fed'),
  ('b44a0c55-bd40-4e81-ab6f-0a5c06ad7fbb', 'fiber', 0.2, 'as-fed'),
  ('b44a0c55-bd40-4e81-ab6f-0a5c06ad7fbb', 'ash', 2.5, 'as-fed'),
  ('b44a0c55-bd40-4e81-ab6f-0a5c06ad7fbb', 'moisture', 82, 'as-fed'),
  ('b44a0c55-bd40-4e81-ab6f-0a5c06ad7fbb', 'kcal', 72, 'as-fed');

-- Butcher's — Loaf Recipes met kip, rijst & wortelen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/loaf-recipes-6-pack-400g/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'b05a2e9d-4339-459e-baf8-8d41476854c2';
delete from public.recipe_nutrition where recipe_version_id = 'b05a2e9d-4339-459e-baf8-8d41476854c2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b05a2e9d-4339-459e-baf8-8d41476854c2', 'protein', 8, 'as-fed'),
  ('b05a2e9d-4339-459e-baf8-8d41476854c2', 'fat', 5.5, 'as-fed'),
  ('b05a2e9d-4339-459e-baf8-8d41476854c2', 'fiber', 0.2, 'as-fed'),
  ('b05a2e9d-4339-459e-baf8-8d41476854c2', 'ash', 2, 'as-fed'),
  ('b05a2e9d-4339-459e-baf8-8d41476854c2', 'moisture', 80, 'as-fed');

-- Butcher's — Loaf Recipes met lam, rijst & erwten (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/loaf-recipes-6-pack-400g/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'd03bd0d6-301c-430b-9e88-981b64e5b598';
delete from public.recipe_nutrition where recipe_version_id = 'd03bd0d6-301c-430b-9e88-981b64e5b598';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d03bd0d6-301c-430b-9e88-981b64e5b598', 'protein', 8, 'as-fed'),
  ('d03bd0d6-301c-430b-9e88-981b64e5b598', 'fat', 5.5, 'as-fed'),
  ('d03bd0d6-301c-430b-9e88-981b64e5b598', 'fiber', 0.2, 'as-fed'),
  ('d03bd0d6-301c-430b-9e88-981b64e5b598', 'ash', 2, 'as-fed'),
  ('d03bd0d6-301c-430b-9e88-981b64e5b598', 'moisture', 80, 'as-fed');

-- Butcher's — Loaf Recipes met rund, rijst & groenten (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/loaf-recipes-6-pack-400g/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'b0f44b15-7db4-4419-8488-d5d8d6f2812e';
delete from public.recipe_nutrition where recipe_version_id = 'b0f44b15-7db4-4419-8488-d5d8d6f2812e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b0f44b15-7db4-4419-8488-d5d8d6f2812e', 'protein', 8, 'as-fed'),
  ('b0f44b15-7db4-4419-8488-d5d8d6f2812e', 'fat', 5.5, 'as-fed'),
  ('b0f44b15-7db4-4419-8488-d5d8d6f2812e', 'fiber', 0.2, 'as-fed'),
  ('b0f44b15-7db4-4419-8488-d5d8d6f2812e', 'ash', 2, 'as-fed'),
  ('b0f44b15-7db4-4419-8488-d5d8d6f2812e', 'moisture', 80, 'as-fed');

-- Butcher's — Puppy Perfect met kalkoen (tray) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/puppy-perfect-4-pack-150g/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Fosfor, omega-3 en omega-6 worden niet vermeld. Calcium 0,3% is overgenomen.'
 where id = '172c7dfa-6e2b-451b-9bf9-90857a4a5599';
delete from public.recipe_nutrition where recipe_version_id = '172c7dfa-6e2b-451b-9bf9-90857a4a5599';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('172c7dfa-6e2b-451b-9bf9-90857a4a5599', 'protein', 9, 'as-fed'),
  ('172c7dfa-6e2b-451b-9bf9-90857a4a5599', 'fat', 6, 'as-fed'),
  ('172c7dfa-6e2b-451b-9bf9-90857a4a5599', 'fiber', 0.2, 'as-fed'),
  ('172c7dfa-6e2b-451b-9bf9-90857a4a5599', 'ash', 2, 'as-fed'),
  ('172c7dfa-6e2b-451b-9bf9-90857a4a5599', 'moisture', 82, 'as-fed'),
  ('172c7dfa-6e2b-451b-9bf9-90857a4a5599', 'calcium', 0.3, 'as-fed');

-- Butcher's — Puppy Perfect met kip (tray) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/puppy-perfect-4-pack-150g/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Fosfor, omega-3 en omega-6 worden niet vermeld. Calcium 0,3% is overgenomen.'
 where id = '0754d878-a1ff-4336-84f4-aa7bdcf1d3b9';
delete from public.recipe_nutrition where recipe_version_id = '0754d878-a1ff-4336-84f4-aa7bdcf1d3b9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0754d878-a1ff-4336-84f4-aa7bdcf1d3b9', 'protein', 9, 'as-fed'),
  ('0754d878-a1ff-4336-84f4-aa7bdcf1d3b9', 'fat', 6, 'as-fed'),
  ('0754d878-a1ff-4336-84f4-aa7bdcf1d3b9', 'fiber', 0.2, 'as-fed'),
  ('0754d878-a1ff-4336-84f4-aa7bdcf1d3b9', 'ash', 2, 'as-fed'),
  ('0754d878-a1ff-4336-84f4-aa7bdcf1d3b9', 'moisture', 82, 'as-fed'),
  ('0754d878-a1ff-4336-84f4-aa7bdcf1d3b9', 'calcium', 0.3, 'as-fed');

-- Butcher's — Puppy Perfect met rund (tray) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/puppy-perfect-4-pack-150g/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Fosfor, omega-3 en omega-6 worden niet vermeld. Calcium 0,3% is overgenomen.'
 where id = '4e857094-82a8-42f1-8948-ba3db38e28b1';
delete from public.recipe_nutrition where recipe_version_id = '4e857094-82a8-42f1-8948-ba3db38e28b1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4e857094-82a8-42f1-8948-ba3db38e28b1', 'protein', 9, 'as-fed'),
  ('4e857094-82a8-42f1-8948-ba3db38e28b1', 'fat', 6, 'as-fed'),
  ('4e857094-82a8-42f1-8948-ba3db38e28b1', 'fiber', 0.2, 'as-fed'),
  ('4e857094-82a8-42f1-8948-ba3db38e28b1', 'ash', 2, 'as-fed'),
  ('4e857094-82a8-42f1-8948-ba3db38e28b1', 'moisture', 82, 'as-fed'),
  ('4e857094-82a8-42f1-8948-ba3db38e28b1', 'calcium', 0.3, 'as-fed');

-- Butcher's — Puppy Perfect met lam (blik) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/puppy-perfect-6-pack-400g/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Fosfor, omega-3 en omega-6 worden niet vermeld. Calcium 0,35% is overgenomen.'
 where id = 'a8317c8d-0dad-4b6c-9abc-bed57f384e62';
delete from public.recipe_nutrition where recipe_version_id = 'a8317c8d-0dad-4b6c-9abc-bed57f384e62';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a8317c8d-0dad-4b6c-9abc-bed57f384e62', 'protein', 8, 'as-fed'),
  ('a8317c8d-0dad-4b6c-9abc-bed57f384e62', 'fat', 6, 'as-fed'),
  ('a8317c8d-0dad-4b6c-9abc-bed57f384e62', 'fiber', 0.2, 'as-fed'),
  ('a8317c8d-0dad-4b6c-9abc-bed57f384e62', 'ash', 2, 'as-fed'),
  ('a8317c8d-0dad-4b6c-9abc-bed57f384e62', 'moisture', 82, 'as-fed'),
  ('a8317c8d-0dad-4b6c-9abc-bed57f384e62', 'calcium', 0.35, 'as-fed');

-- Butcher's — Puppy Perfect met rund (blik) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/puppy-perfect-6-pack-400g/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Fosfor, omega-3 en omega-6 worden niet vermeld. Calcium 0,35% is overgenomen.'
 where id = 'a5c4c7da-67b0-4c49-8b90-bbc8559daead';
delete from public.recipe_nutrition where recipe_version_id = 'a5c4c7da-67b0-4c49-8b90-bbc8559daead';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a5c4c7da-67b0-4c49-8b90-bbc8559daead', 'protein', 8, 'as-fed'),
  ('a5c4c7da-67b0-4c49-8b90-bbc8559daead', 'fat', 6, 'as-fed'),
  ('a5c4c7da-67b0-4c49-8b90-bbc8559daead', 'fiber', 0.2, 'as-fed'),
  ('a5c4c7da-67b0-4c49-8b90-bbc8559daead', 'ash', 2, 'as-fed'),
  ('a5c4c7da-67b0-4c49-8b90-bbc8559daead', 'moisture', 82, 'as-fed'),
  ('a5c4c7da-67b0-4c49-8b90-bbc8559daead', 'calcium', 0.35, 'as-fed');

-- Butcher's — Recipes in Gravy met kalkoen & tuinbouwgroenten (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/recipes-in-gravy-6-pack-400g/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. 86 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '88f75657-a28a-4ae0-b72f-9c80fbf61097';
delete from public.recipe_nutrition where recipe_version_id = '88f75657-a28a-4ae0-b72f-9c80fbf61097';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('88f75657-a28a-4ae0-b72f-9c80fbf61097', 'protein', 7.5, 'as-fed'),
  ('88f75657-a28a-4ae0-b72f-9c80fbf61097', 'fat', 5, 'as-fed'),
  ('88f75657-a28a-4ae0-b72f-9c80fbf61097', 'fiber', 0.2, 'as-fed'),
  ('88f75657-a28a-4ae0-b72f-9c80fbf61097', 'ash', 2, 'as-fed'),
  ('88f75657-a28a-4ae0-b72f-9c80fbf61097', 'moisture', 82, 'as-fed'),
  ('88f75657-a28a-4ae0-b72f-9c80fbf61097', 'kcal', 86, 'as-fed');

-- Butcher's — Recipes in Gravy met kip & tuinbouwgroenten (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/recipes-in-gravy-6-pack-400g/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. 86 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'adb29b76-9aea-4891-ae0d-53d1ffa35e81';
delete from public.recipe_nutrition where recipe_version_id = 'adb29b76-9aea-4891-ae0d-53d1ffa35e81';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('adb29b76-9aea-4891-ae0d-53d1ffa35e81', 'protein', 7.5, 'as-fed'),
  ('adb29b76-9aea-4891-ae0d-53d1ffa35e81', 'fat', 5, 'as-fed'),
  ('adb29b76-9aea-4891-ae0d-53d1ffa35e81', 'fiber', 0.2, 'as-fed'),
  ('adb29b76-9aea-4891-ae0d-53d1ffa35e81', 'ash', 2, 'as-fed'),
  ('adb29b76-9aea-4891-ae0d-53d1ffa35e81', 'moisture', 82, 'as-fed'),
  ('adb29b76-9aea-4891-ae0d-53d1ffa35e81', 'kcal', 86, 'as-fed');

-- Butcher's — Recipes in Gravy met rund & tuinbouwgroenten (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/recipes-in-gravy-6-pack-400g/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. 86 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'e3dd42dc-8bd0-4e70-8066-2dea305b2647';
delete from public.recipe_nutrition where recipe_version_id = 'e3dd42dc-8bd0-4e70-8066-2dea305b2647';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e3dd42dc-8bd0-4e70-8066-2dea305b2647', 'protein', 7.5, 'as-fed'),
  ('e3dd42dc-8bd0-4e70-8066-2dea305b2647', 'fat', 5, 'as-fed'),
  ('e3dd42dc-8bd0-4e70-8066-2dea305b2647', 'fiber', 0.2, 'as-fed'),
  ('e3dd42dc-8bd0-4e70-8066-2dea305b2647', 'ash', 2, 'as-fed'),
  ('e3dd42dc-8bd0-4e70-8066-2dea305b2647', 'moisture', 82, 'as-fed'),
  ('e3dd42dc-8bd0-4e70-8066-2dea305b2647', 'kcal', 86, 'as-fed');

-- Butcher's — Recipes in Jelly met kip & lever (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/recipes-in-jelly-6-pack-400g/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. 82 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '351224f0-7f38-4466-acda-53e47188089f';
delete from public.recipe_nutrition where recipe_version_id = '351224f0-7f38-4466-acda-53e47188089f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('351224f0-7f38-4466-acda-53e47188089f', 'protein', 7.5, 'as-fed'),
  ('351224f0-7f38-4466-acda-53e47188089f', 'fat', 5, 'as-fed'),
  ('351224f0-7f38-4466-acda-53e47188089f', 'fiber', 0.2, 'as-fed'),
  ('351224f0-7f38-4466-acda-53e47188089f', 'ash', 2, 'as-fed'),
  ('351224f0-7f38-4466-acda-53e47188089f', 'moisture', 83, 'as-fed'),
  ('351224f0-7f38-4466-acda-53e47188089f', 'kcal', 82, 'as-fed');

-- Butcher's — Recipes in Jelly met lam & nier (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/recipes-in-jelly-6-pack-400g/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. 82 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '60056bb0-0299-4dfe-97a6-435ae2d499e6';
delete from public.recipe_nutrition where recipe_version_id = '60056bb0-0299-4dfe-97a6-435ae2d499e6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('60056bb0-0299-4dfe-97a6-435ae2d499e6', 'protein', 7.5, 'as-fed'),
  ('60056bb0-0299-4dfe-97a6-435ae2d499e6', 'fat', 5, 'as-fed'),
  ('60056bb0-0299-4dfe-97a6-435ae2d499e6', 'fiber', 0.2, 'as-fed'),
  ('60056bb0-0299-4dfe-97a6-435ae2d499e6', 'ash', 2, 'as-fed'),
  ('60056bb0-0299-4dfe-97a6-435ae2d499e6', 'moisture', 83, 'as-fed'),
  ('60056bb0-0299-4dfe-97a6-435ae2d499e6', 'kcal', 82, 'as-fed');

-- Butcher's — Recipes in Jelly met pens (variatiepak) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/variety-recipes-in-jelly-24-pack-400g/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. 82 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '951ab35a-cd3d-4bb4-85c3-af76e59762ea';
delete from public.recipe_nutrition where recipe_version_id = '951ab35a-cd3d-4bb4-85c3-af76e59762ea';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('951ab35a-cd3d-4bb4-85c3-af76e59762ea', 'protein', 7.5, 'as-fed'),
  ('951ab35a-cd3d-4bb4-85c3-af76e59762ea', 'fat', 5, 'as-fed'),
  ('951ab35a-cd3d-4bb4-85c3-af76e59762ea', 'fiber', 0.2, 'as-fed'),
  ('951ab35a-cd3d-4bb4-85c3-af76e59762ea', 'ash', 2, 'as-fed'),
  ('951ab35a-cd3d-4bb4-85c3-af76e59762ea', 'moisture', 83, 'as-fed'),
  ('951ab35a-cd3d-4bb4-85c3-af76e59762ea', 'kcal', 82, 'as-fed');

-- Butcher's — Recipes in Jelly met rund & lever (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/recipes-in-jelly-6-pack-400g/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. 82 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '96fb8df9-83b0-4ad4-8fbd-9467e2552e83';
delete from public.recipe_nutrition where recipe_version_id = '96fb8df9-83b0-4ad4-8fbd-9467e2552e83';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('96fb8df9-83b0-4ad4-8fbd-9467e2552e83', 'protein', 7.5, 'as-fed'),
  ('96fb8df9-83b0-4ad4-8fbd-9467e2552e83', 'fat', 5, 'as-fed'),
  ('96fb8df9-83b0-4ad4-8fbd-9467e2552e83', 'fiber', 0.2, 'as-fed'),
  ('96fb8df9-83b0-4ad4-8fbd-9467e2552e83', 'ash', 2, 'as-fed'),
  ('96fb8df9-83b0-4ad4-8fbd-9467e2552e83', 'moisture', 83, 'as-fed'),
  ('96fb8df9-83b0-4ad4-8fbd-9467e2552e83', 'kcal', 82, 'as-fed');

-- Butcher's — Recovery & Revive met kip (tray) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/recovery-revive-4-pack-150g/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '32aa9f79-a787-47bb-87fb-1fb5a34a09b9';
delete from public.recipe_nutrition where recipe_version_id = '32aa9f79-a787-47bb-87fb-1fb5a34a09b9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('32aa9f79-a787-47bb-87fb-1fb5a34a09b9', 'protein', 7.5, 'as-fed'),
  ('32aa9f79-a787-47bb-87fb-1fb5a34a09b9', 'fat', 7, 'as-fed'),
  ('32aa9f79-a787-47bb-87fb-1fb5a34a09b9', 'fiber', 0.2, 'as-fed'),
  ('32aa9f79-a787-47bb-87fb-1fb5a34a09b9', 'ash', 2.5, 'as-fed'),
  ('32aa9f79-a787-47bb-87fb-1fb5a34a09b9', 'moisture', 82, 'as-fed');

-- Butcher's — Rund & pens (Beef & Tripe Loaf) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/tripe-loaf-recipes-6-pack-400g/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. 98 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'f34dfbc8-0a60-4c56-a1d5-0a8205615a81';
delete from public.recipe_nutrition where recipe_version_id = 'f34dfbc8-0a60-4c56-a1d5-0a8205615a81';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f34dfbc8-0a60-4c56-a1d5-0a8205615a81', 'protein', 8.5, 'as-fed'),
  ('f34dfbc8-0a60-4c56-a1d5-0a8205615a81', 'fat', 6, 'as-fed'),
  ('f34dfbc8-0a60-4c56-a1d5-0a8205615a81', 'fiber', 0.2, 'as-fed'),
  ('f34dfbc8-0a60-4c56-a1d5-0a8205615a81', 'ash', 2, 'as-fed'),
  ('f34dfbc8-0a60-4c56-a1d5-0a8205615a81', 'moisture', 80, 'as-fed'),
  ('f34dfbc8-0a60-4c56-a1d5-0a8205615a81', 'kcal', 98, 'as-fed');

-- Butcher's — Simply Gentle met kalkoen (blik) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/simply-gentle-6-pack-390g-2/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. 82 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '643726fe-e520-4c04-97ca-44866b955e88';
delete from public.recipe_nutrition where recipe_version_id = '643726fe-e520-4c04-97ca-44866b955e88';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('643726fe-e520-4c04-97ca-44866b955e88', 'protein', 8.5, 'as-fed'),
  ('643726fe-e520-4c04-97ca-44866b955e88', 'fat', 4.5, 'as-fed'),
  ('643726fe-e520-4c04-97ca-44866b955e88', 'fiber', 0.2, 'as-fed'),
  ('643726fe-e520-4c04-97ca-44866b955e88', 'ash', 2.5, 'as-fed'),
  ('643726fe-e520-4c04-97ca-44866b955e88', 'moisture', 82, 'as-fed'),
  ('643726fe-e520-4c04-97ca-44866b955e88', 'kcal', 82, 'as-fed');

-- Butcher's — Simply Gentle met kalkoen (tray) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/simply-gentle-12-pack-150g-2/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. 82 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '82632a47-e3b8-4213-bd31-8f4b25184de7';
delete from public.recipe_nutrition where recipe_version_id = '82632a47-e3b8-4213-bd31-8f4b25184de7';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('82632a47-e3b8-4213-bd31-8f4b25184de7', 'protein', 8.5, 'as-fed'),
  ('82632a47-e3b8-4213-bd31-8f4b25184de7', 'fat', 4.5, 'as-fed'),
  ('82632a47-e3b8-4213-bd31-8f4b25184de7', 'fiber', 0.2, 'as-fed'),
  ('82632a47-e3b8-4213-bd31-8f4b25184de7', 'ash', 2.5, 'as-fed'),
  ('82632a47-e3b8-4213-bd31-8f4b25184de7', 'moisture', 82, 'as-fed'),
  ('82632a47-e3b8-4213-bd31-8f4b25184de7', 'kcal', 82, 'as-fed');

-- Butcher's — Simply Gentle met kip (tray) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/simply-gentle-12-pack-150g-2/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. 82 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '8fd7012f-b15e-45f7-9db0-c311cd6002b8';
delete from public.recipe_nutrition where recipe_version_id = '8fd7012f-b15e-45f7-9db0-c311cd6002b8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8fd7012f-b15e-45f7-9db0-c311cd6002b8', 'protein', 8.5, 'as-fed'),
  ('8fd7012f-b15e-45f7-9db0-c311cd6002b8', 'fat', 4.5, 'as-fed'),
  ('8fd7012f-b15e-45f7-9db0-c311cd6002b8', 'fiber', 0.2, 'as-fed'),
  ('8fd7012f-b15e-45f7-9db0-c311cd6002b8', 'ash', 2.5, 'as-fed'),
  ('8fd7012f-b15e-45f7-9db0-c311cd6002b8', 'moisture', 82, 'as-fed'),
  ('8fd7012f-b15e-45f7-9db0-c311cd6002b8', 'kcal', 82, 'as-fed');

-- Butcher's — Simply Gentle met zalm (blik) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/simply-gentle-6-pack-390g-2/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. 82 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '185961f3-658b-40e6-9f2f-2c2f5f7f46c1';
delete from public.recipe_nutrition where recipe_version_id = '185961f3-658b-40e6-9f2f-2c2f5f7f46c1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('185961f3-658b-40e6-9f2f-2c2f5f7f46c1', 'protein', 8.5, 'as-fed'),
  ('185961f3-658b-40e6-9f2f-2c2f5f7f46c1', 'fat', 4.5, 'as-fed'),
  ('185961f3-658b-40e6-9f2f-2c2f5f7f46c1', 'fiber', 0.2, 'as-fed'),
  ('185961f3-658b-40e6-9f2f-2c2f5f7f46c1', 'ash', 2.5, 'as-fed'),
  ('185961f3-658b-40e6-9f2f-2c2f5f7f46c1', 'moisture', 82, 'as-fed'),
  ('185961f3-658b-40e6-9f2f-2c2f5f7f46c1', 'kcal', 82, 'as-fed');

-- Butcher's — Simply Gentle met zalm (tray) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/simply-gentle-12-pack-150g-2/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. 82 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'a53e5393-6e31-4ab9-91e2-7543448d0bc8';
delete from public.recipe_nutrition where recipe_version_id = 'a53e5393-6e31-4ab9-91e2-7543448d0bc8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a53e5393-6e31-4ab9-91e2-7543448d0bc8', 'protein', 8.5, 'as-fed'),
  ('a53e5393-6e31-4ab9-91e2-7543448d0bc8', 'fat', 4.5, 'as-fed'),
  ('a53e5393-6e31-4ab9-91e2-7543448d0bc8', 'fiber', 0.2, 'as-fed'),
  ('a53e5393-6e31-4ab9-91e2-7543448d0bc8', 'ash', 2.5, 'as-fed'),
  ('a53e5393-6e31-4ab9-91e2-7543448d0bc8', 'moisture', 82, 'as-fed'),
  ('a53e5393-6e31-4ab9-91e2-7543448d0bc8', 'kcal', 82, 'as-fed');

-- Butcher's — Succulent Recipes met kip & lever (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/succulent-recipes-4-pack-150g/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. 88 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '5a93c706-ae0b-4748-9a74-b2e4ac60b18c';
delete from public.recipe_nutrition where recipe_version_id = '5a93c706-ae0b-4748-9a74-b2e4ac60b18c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5a93c706-ae0b-4748-9a74-b2e4ac60b18c', 'protein', 8.5, 'as-fed'),
  ('5a93c706-ae0b-4748-9a74-b2e4ac60b18c', 'fat', 5.5, 'as-fed'),
  ('5a93c706-ae0b-4748-9a74-b2e4ac60b18c', 'fiber', 0.2, 'as-fed'),
  ('5a93c706-ae0b-4748-9a74-b2e4ac60b18c', 'ash', 2, 'as-fed'),
  ('5a93c706-ae0b-4748-9a74-b2e4ac60b18c', 'moisture', 82, 'as-fed'),
  ('5a93c706-ae0b-4748-9a74-b2e4ac60b18c', 'kcal', 88, 'as-fed');

-- Butcher's — Succulent Recipes met lam & nier (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/succulent-recipes-4-pack-150g/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. 88 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '9a06a047-7e30-4bc2-b6fb-59e42832762b';
delete from public.recipe_nutrition where recipe_version_id = '9a06a047-7e30-4bc2-b6fb-59e42832762b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9a06a047-7e30-4bc2-b6fb-59e42832762b', 'protein', 8.5, 'as-fed'),
  ('9a06a047-7e30-4bc2-b6fb-59e42832762b', 'fat', 5.5, 'as-fed'),
  ('9a06a047-7e30-4bc2-b6fb-59e42832762b', 'fiber', 0.2, 'as-fed'),
  ('9a06a047-7e30-4bc2-b6fb-59e42832762b', 'ash', 2, 'as-fed'),
  ('9a06a047-7e30-4bc2-b6fb-59e42832762b', 'moisture', 82, 'as-fed'),
  ('9a06a047-7e30-4bc2-b6fb-59e42832762b', 'kcal', 88, 'as-fed');

-- Butcher's — Succulent Recipes met rund & lever (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/succulent-recipes-4-pack-150g/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. 88 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '6b19b5c4-f008-4478-b9bb-aaea80091c33';
delete from public.recipe_nutrition where recipe_version_id = '6b19b5c4-f008-4478-b9bb-aaea80091c33';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6b19b5c4-f008-4478-b9bb-aaea80091c33', 'protein', 8.5, 'as-fed'),
  ('6b19b5c4-f008-4478-b9bb-aaea80091c33', 'fat', 5.5, 'as-fed'),
  ('6b19b5c4-f008-4478-b9bb-aaea80091c33', 'fiber', 0.2, 'as-fed'),
  ('6b19b5c4-f008-4478-b9bb-aaea80091c33', 'ash', 2, 'as-fed'),
  ('6b19b5c4-f008-4478-b9bb-aaea80091c33', 'moisture', 82, 'as-fed'),
  ('6b19b5c4-f008-4478-b9bb-aaea80091c33', 'kcal', 88, 'as-fed');

-- Butcher's — Traditional Recipes met kalkoen & groenten (4-pack) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/traditional-recipes-4-pack-150g/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '6f46a7fd-d09e-47dc-bf5c-f701f5256d07';
delete from public.recipe_nutrition where recipe_version_id = '6f46a7fd-d09e-47dc-bf5c-f701f5256d07';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6f46a7fd-d09e-47dc-bf5c-f701f5256d07', 'protein', 9, 'as-fed'),
  ('6f46a7fd-d09e-47dc-bf5c-f701f5256d07', 'fat', 5, 'as-fed'),
  ('6f46a7fd-d09e-47dc-bf5c-f701f5256d07', 'fiber', 0.2, 'as-fed'),
  ('6f46a7fd-d09e-47dc-bf5c-f701f5256d07', 'ash', 2, 'as-fed'),
  ('6f46a7fd-d09e-47dc-bf5c-f701f5256d07', 'moisture', 83, 'as-fed');

-- Butcher's — Traditional Recipes met kalkoen & wortelen (12/24-pack) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/traditional-recipes-12-pack-150g/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. 88 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '0290b8c3-5480-40b3-a715-adf6dd4707a8';
delete from public.recipe_nutrition where recipe_version_id = '0290b8c3-5480-40b3-a715-adf6dd4707a8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0290b8c3-5480-40b3-a715-adf6dd4707a8', 'protein', 8, 'as-fed'),
  ('0290b8c3-5480-40b3-a715-adf6dd4707a8', 'fat', 5, 'as-fed'),
  ('0290b8c3-5480-40b3-a715-adf6dd4707a8', 'fiber', 0.2, 'as-fed'),
  ('0290b8c3-5480-40b3-a715-adf6dd4707a8', 'ash', 2, 'as-fed'),
  ('0290b8c3-5480-40b3-a715-adf6dd4707a8', 'moisture', 82, 'as-fed'),
  ('0290b8c3-5480-40b3-a715-adf6dd4707a8', 'kcal', 88, 'as-fed');

-- Butcher's — Traditional Recipes met lam & erwten (12/24-pack) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/traditional-recipes-12-pack-150g/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. 88 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'e69ca1f3-b896-46f2-9fad-50bbc47f4b35';
delete from public.recipe_nutrition where recipe_version_id = 'e69ca1f3-b896-46f2-9fad-50bbc47f4b35';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e69ca1f3-b896-46f2-9fad-50bbc47f4b35', 'protein', 8, 'as-fed'),
  ('e69ca1f3-b896-46f2-9fad-50bbc47f4b35', 'fat', 5, 'as-fed'),
  ('e69ca1f3-b896-46f2-9fad-50bbc47f4b35', 'fiber', 0.2, 'as-fed'),
  ('e69ca1f3-b896-46f2-9fad-50bbc47f4b35', 'ash', 2, 'as-fed'),
  ('e69ca1f3-b896-46f2-9fad-50bbc47f4b35', 'moisture', 82, 'as-fed'),
  ('e69ca1f3-b896-46f2-9fad-50bbc47f4b35', 'kcal', 88, 'as-fed');

-- Butcher's — Traditional Recipes met lam & groenten (4-pack) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/traditional-recipes-4-pack-150g/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'fcef330d-361e-462d-bc74-21d1ad9953dc';
delete from public.recipe_nutrition where recipe_version_id = 'fcef330d-361e-462d-bc74-21d1ad9953dc';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fcef330d-361e-462d-bc74-21d1ad9953dc', 'protein', 9, 'as-fed'),
  ('fcef330d-361e-462d-bc74-21d1ad9953dc', 'fat', 5, 'as-fed'),
  ('fcef330d-361e-462d-bc74-21d1ad9953dc', 'fiber', 0.2, 'as-fed'),
  ('fcef330d-361e-462d-bc74-21d1ad9953dc', 'ash', 2, 'as-fed'),
  ('fcef330d-361e-462d-bc74-21d1ad9953dc', 'moisture', 83, 'as-fed');

-- Butcher's — Traditional Recipes met rund & groenten (12/24-pack) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/traditional-recipes-12-pack-150g/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. 88 kcal/100 g stond direct op de pagina; geen omrekening nodig. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '819719ac-5cca-4b24-bd5c-3b2912dd52c5';
delete from public.recipe_nutrition where recipe_version_id = '819719ac-5cca-4b24-bd5c-3b2912dd52c5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('819719ac-5cca-4b24-bd5c-3b2912dd52c5', 'protein', 8, 'as-fed'),
  ('819719ac-5cca-4b24-bd5c-3b2912dd52c5', 'fat', 5, 'as-fed'),
  ('819719ac-5cca-4b24-bd5c-3b2912dd52c5', 'fiber', 0.2, 'as-fed'),
  ('819719ac-5cca-4b24-bd5c-3b2912dd52c5', 'ash', 2, 'as-fed'),
  ('819719ac-5cca-4b24-bd5c-3b2912dd52c5', 'moisture', 82, 'as-fed'),
  ('819719ac-5cca-4b24-bd5c-3b2912dd52c5', 'kcal', 88, 'as-fed');

-- Butcher's — Traditional Recipes met rund & groenten (4-pack) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://butchersdogfood.co.uk/product/traditional-recipes-4-pack-150g/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Analytische bestanddelen zijn as-fed. De fabrikant publiceert één gezamenlijke analyse voor dit variatiepak; die is voor deze smaak overgenomen. Op de pagina staat geen energieopgave (kcal of kJ), dus kcal is null. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '5eb7f64b-98ff-47ea-8fcd-bea1b15adf2d';
delete from public.recipe_nutrition where recipe_version_id = '5eb7f64b-98ff-47ea-8fcd-bea1b15adf2d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5eb7f64b-98ff-47ea-8fcd-bea1b15adf2d', 'protein', 9, 'as-fed'),
  ('5eb7f64b-98ff-47ea-8fcd-bea1b15adf2d', 'fat', 5, 'as-fed'),
  ('5eb7f64b-98ff-47ea-8fcd-bea1b15adf2d', 'fiber', 0.2, 'as-fed'),
  ('5eb7f64b-98ff-47ea-8fcd-bea1b15adf2d', 'ash', 2, 'as-fed'),
  ('5eb7f64b-98ff-47ea-8fcd-bea1b15adf2d', 'moisture', 83, 'as-fed');

-- Edgard & Cooper — Adult Kip graanvrij (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-dry-food-chicken/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 371,1 kcal per 100 g; geen omrekening nodig. Vocht wordt niet vermeld.'
 where id = '3d80e417-aea9-441f-a121-b1a1c8dc7024';
delete from public.recipe_nutrition where recipe_version_id = '3d80e417-aea9-441f-a121-b1a1c8dc7024';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3d80e417-aea9-441f-a121-b1a1c8dc7024', 'protein', 25, 'as-fed'),
  ('3d80e417-aea9-441f-a121-b1a1c8dc7024', 'fat', 15, 'as-fed'),
  ('3d80e417-aea9-441f-a121-b1a1c8dc7024', 'fiber', 3.5, 'as-fed'),
  ('3d80e417-aea9-441f-a121-b1a1c8dc7024', 'ash', 8.2, 'as-fed'),
  ('3d80e417-aea9-441f-a121-b1a1c8dc7024', 'kcal', 371.1, 'as-fed'),
  ('3d80e417-aea9-441f-a121-b1a1c8dc7024', 'calcium', 1.3, 'as-fed'),
  ('3d80e417-aea9-441f-a121-b1a1c8dc7024', 'phosphorus', 0.8, 'as-fed'),
  ('3d80e417-aea9-441f-a121-b1a1c8dc7024', 'omega3', 0.9, 'as-fed'),
  ('3d80e417-aea9-441f-a121-b1a1c8dc7024', 'omega6', 2.5, 'as-fed');

-- Edgard & Cooper — ASC-Zalm & Kalkoen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-tin-salmon-turkey/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 103 kcal per 100 g; geen omrekening nodig. Vocht is overgenomen uit ''vochtgehalte''. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'a4acd309-d25c-4210-84f7-cdd6ad1c296b';
delete from public.recipe_nutrition where recipe_version_id = 'a4acd309-d25c-4210-84f7-cdd6ad1c296b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a4acd309-d25c-4210-84f7-cdd6ad1c296b', 'protein', 10, 'as-fed'),
  ('a4acd309-d25c-4210-84f7-cdd6ad1c296b', 'fat', 6, 'as-fed'),
  ('a4acd309-d25c-4210-84f7-cdd6ad1c296b', 'fiber', 0.6, 'as-fed'),
  ('a4acd309-d25c-4210-84f7-cdd6ad1c296b', 'ash', 2, 'as-fed'),
  ('a4acd309-d25c-4210-84f7-cdd6ad1c296b', 'moisture', 78, 'as-fed'),
  ('a4acd309-d25c-4210-84f7-cdd6ad1c296b', 'kcal', 103, 'as-fed');

-- Edgard & Cooper — Biologisch rund (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-cup-beef/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 84,7 kcal per 100 g; geen omrekening nodig. Vocht is overgenomen uit ''vochtgehalte''. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'ca798650-f55b-48da-ae82-09ab7ce56dbc';
delete from public.recipe_nutrition where recipe_version_id = 'ca798650-f55b-48da-ae82-09ab7ce56dbc';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ca798650-f55b-48da-ae82-09ab7ce56dbc', 'protein', 9.5, 'as-fed'),
  ('ca798650-f55b-48da-ae82-09ab7ce56dbc', 'fat', 5, 'as-fed'),
  ('ca798650-f55b-48da-ae82-09ab7ce56dbc', 'fiber', 0.3, 'as-fed'),
  ('ca798650-f55b-48da-ae82-09ab7ce56dbc', 'ash', 2.2, 'as-fed'),
  ('ca798650-f55b-48da-ae82-09ab7ce56dbc', 'moisture', 82, 'as-fed'),
  ('ca798650-f55b-48da-ae82-09ab7ce56dbc', 'kcal', 84.7, 'as-fed');

-- Edgard & Cooper — Biologische kalkoen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-cup-turkey/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 87,1 kcal per 100 g; geen omrekening nodig. Vocht is overgenomen uit ''vochtgehalte''. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'd8bcc370-10d0-4dcd-a58a-46b65f59c616';
delete from public.recipe_nutrition where recipe_version_id = 'd8bcc370-10d0-4dcd-a58a-46b65f59c616';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d8bcc370-10d0-4dcd-a58a-46b65f59c616', 'protein', 9.5, 'as-fed'),
  ('d8bcc370-10d0-4dcd-a58a-46b65f59c616', 'fat', 5.5, 'as-fed'),
  ('d8bcc370-10d0-4dcd-a58a-46b65f59c616', 'fiber', 0.3, 'as-fed'),
  ('d8bcc370-10d0-4dcd-a58a-46b65f59c616', 'ash', 2.2, 'as-fed'),
  ('d8bcc370-10d0-4dcd-a58a-46b65f59c616', 'moisture', 82, 'as-fed'),
  ('d8bcc370-10d0-4dcd-a58a-46b65f59c616', 'kcal', 87.1, 'as-fed');

-- Edgard & Cooper — Biologische kip & vis (puppy) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-cup-chicken-fish/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 87,1 kcal per 100 g; geen omrekening nodig. Vocht is overgenomen uit ''vochtgehalte''. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'c0993f4b-323f-42e3-b7fe-9c7c4f720546';
delete from public.recipe_nutrition where recipe_version_id = 'c0993f4b-323f-42e3-b7fe-9c7c4f720546';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c0993f4b-323f-42e3-b7fe-9c7c4f720546', 'protein', 9.5, 'as-fed'),
  ('c0993f4b-323f-42e3-b7fe-9c7c4f720546', 'fat', 5.5, 'as-fed'),
  ('c0993f4b-323f-42e3-b7fe-9c7c4f720546', 'fiber', 0.3, 'as-fed'),
  ('c0993f4b-323f-42e3-b7fe-9c7c4f720546', 'ash', 2.2, 'as-fed'),
  ('c0993f4b-323f-42e3-b7fe-9c7c4f720546', 'moisture', 82, 'as-fed'),
  ('c0993f4b-323f-42e3-b7fe-9c7c4f720546', 'kcal', 87.1, 'as-fed');

-- Edgard & Cooper — Biologische vis (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-cup-fish/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 87,1 kcal per 100 g; geen omrekening nodig. Vocht is overgenomen uit ''vochtgehalte''. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '2115fc16-5791-4f29-bcd9-db625d5a62e3';
delete from public.recipe_nutrition where recipe_version_id = '2115fc16-5791-4f29-bcd9-db625d5a62e3';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2115fc16-5791-4f29-bcd9-db625d5a62e3', 'protein', 9.5, 'as-fed'),
  ('2115fc16-5791-4f29-bcd9-db625d5a62e3', 'fat', 5.5, 'as-fed'),
  ('2115fc16-5791-4f29-bcd9-db625d5a62e3', 'fiber', 0.3, 'as-fed'),
  ('2115fc16-5791-4f29-bcd9-db625d5a62e3', 'ash', 2.2, 'as-fed'),
  ('2115fc16-5791-4f29-bcd9-db625d5a62e3', 'moisture', 82, 'as-fed'),
  ('2115fc16-5791-4f29-bcd9-db625d5a62e3', 'kcal', 87.1, 'as-fed');

-- Edgard & Cooper — Eend & kip (puppy, kuipje) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-cup-duck-chicken/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 93,2 kcal per 100 g; geen omrekening nodig. Vocht is overgenomen uit ''vochtgehalte''. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'dd07f7f3-16cd-408f-bb65-c6a1b49323cb';
delete from public.recipe_nutrition where recipe_version_id = 'dd07f7f3-16cd-408f-bb65-c6a1b49323cb';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('dd07f7f3-16cd-408f-bb65-c6a1b49323cb', 'protein', 9.5, 'as-fed'),
  ('dd07f7f3-16cd-408f-bb65-c6a1b49323cb', 'fat', 6, 'as-fed'),
  ('dd07f7f3-16cd-408f-bb65-c6a1b49323cb', 'fiber', 0.3, 'as-fed'),
  ('dd07f7f3-16cd-408f-bb65-c6a1b49323cb', 'ash', 2.2, 'as-fed'),
  ('dd07f7f3-16cd-408f-bb65-c6a1b49323cb', 'moisture', 81, 'as-fed'),
  ('dd07f7f3-16cd-408f-bb65-c6a1b49323cb', 'kcal', 93.2, 'as-fed');

-- Edgard & Cooper — Eend & kip (puppy) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-tin-duck-chicken/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 116 kcal per 100 g; geen omrekening nodig. Vocht is overgenomen uit ''vochtgehalte''. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '320f4fba-2531-4ed2-801d-d7536d4ec778';
delete from public.recipe_nutrition where recipe_version_id = '320f4fba-2531-4ed2-801d-d7536d4ec778';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('320f4fba-2531-4ed2-801d-d7536d4ec778', 'protein', 12, 'as-fed'),
  ('320f4fba-2531-4ed2-801d-d7536d4ec778', 'fat', 7, 'as-fed'),
  ('320f4fba-2531-4ed2-801d-d7536d4ec778', 'fiber', 0.6, 'as-fed'),
  ('320f4fba-2531-4ed2-801d-d7536d4ec778', 'ash', 2, 'as-fed'),
  ('320f4fba-2531-4ed2-801d-d7536d4ec778', 'moisture', 76, 'as-fed'),
  ('320f4fba-2531-4ed2-801d-d7536d4ec778', 'kcal', 116, 'as-fed');

-- Edgard & Cooper — Kip & ASC-Zalm (senior) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-tin-chicken-salmon/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 97 kcal per 100 g; geen omrekening nodig. Vocht is overgenomen uit ''vochtgehalte''. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'e988bcf8-5b03-4d5a-af2b-1f5477ac1bc7';
delete from public.recipe_nutrition where recipe_version_id = 'e988bcf8-5b03-4d5a-af2b-1f5477ac1bc7';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e988bcf8-5b03-4d5a-af2b-1f5477ac1bc7', 'protein', 10, 'as-fed'),
  ('e988bcf8-5b03-4d5a-af2b-1f5477ac1bc7', 'fat', 5, 'as-fed'),
  ('e988bcf8-5b03-4d5a-af2b-1f5477ac1bc7', 'fiber', 0.8, 'as-fed'),
  ('e988bcf8-5b03-4d5a-af2b-1f5477ac1bc7', 'ash', 2, 'as-fed'),
  ('e988bcf8-5b03-4d5a-af2b-1f5477ac1bc7', 'moisture', 78, 'as-fed'),
  ('e988bcf8-5b03-4d5a-af2b-1f5477ac1bc7', 'kcal', 97, 'as-fed');

-- Edgard & Cooper — Kip & kalkoen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-tin-chicken-turkey/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 103 kcal per 100 g; geen omrekening nodig. Vocht is overgenomen uit ''vochtgehalte''. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '1da59161-66b5-4f7b-a9eb-fad96f316fcd';
delete from public.recipe_nutrition where recipe_version_id = '1da59161-66b5-4f7b-a9eb-fad96f316fcd';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1da59161-66b5-4f7b-a9eb-fad96f316fcd', 'protein', 11, 'as-fed'),
  ('1da59161-66b5-4f7b-a9eb-fad96f316fcd', 'fat', 6, 'as-fed'),
  ('1da59161-66b5-4f7b-a9eb-fad96f316fcd', 'fiber', 0.6, 'as-fed'),
  ('1da59161-66b5-4f7b-a9eb-fad96f316fcd', 'ash', 2, 'as-fed'),
  ('1da59161-66b5-4f7b-a9eb-fad96f316fcd', 'moisture', 78, 'as-fed'),
  ('1da59161-66b5-4f7b-a9eb-fad96f316fcd', 'kcal', 103, 'as-fed');

-- Edgard & Cooper — Kip & kalkoen (kuipje) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-cup-chicken-turkey/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 84,5 kcal per 100 g; geen omrekening nodig. Vocht is overgenomen uit ''vochtgehalte''. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '3855f1f2-9d2b-4cd3-87ae-e06fd10cde62';
delete from public.recipe_nutrition where recipe_version_id = '3855f1f2-9d2b-4cd3-87ae-e06fd10cde62';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3855f1f2-9d2b-4cd3-87ae-e06fd10cde62', 'protein', 9, 'as-fed'),
  ('3855f1f2-9d2b-4cd3-87ae-e06fd10cde62', 'fat', 5, 'as-fed'),
  ('3855f1f2-9d2b-4cd3-87ae-e06fd10cde62', 'fiber', 0.3, 'as-fed'),
  ('3855f1f2-9d2b-4cd3-87ae-e06fd10cde62', 'ash', 2.2, 'as-fed'),
  ('3855f1f2-9d2b-4cd3-87ae-e06fd10cde62', 'moisture', 82, 'as-fed'),
  ('3855f1f2-9d2b-4cd3-87ae-e06fd10cde62', 'kcal', 84.5, 'as-fed');

-- Edgard & Cooper — Kip & zalm (senior) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-cup-chicken-salmon/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 84,5 kcal per 100 g; geen omrekening nodig. Vocht is overgenomen uit ''vochtgehalte''. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'f5b18be5-9411-4218-81e7-10d84f5159eb';
delete from public.recipe_nutrition where recipe_version_id = 'f5b18be5-9411-4218-81e7-10d84f5159eb';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f5b18be5-9411-4218-81e7-10d84f5159eb', 'protein', 9, 'as-fed'),
  ('f5b18be5-9411-4218-81e7-10d84f5159eb', 'fat', 5, 'as-fed'),
  ('f5b18be5-9411-4218-81e7-10d84f5159eb', 'fiber', 0.3, 'as-fed'),
  ('f5b18be5-9411-4218-81e7-10d84f5159eb', 'ash', 2.2, 'as-fed'),
  ('f5b18be5-9411-4218-81e7-10d84f5159eb', 'moisture', 82, 'as-fed'),
  ('f5b18be5-9411-4218-81e7-10d84f5159eb', 'kcal', 84.5, 'as-fed');

-- Edgard & Cooper — Kwijl-in-Stijl Eend (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-pouch-drool-worthy-duck/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 88,7 kcal per 100 g; geen omrekening nodig. Vocht is overgenomen uit ''vochtgehalte''. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '06a9eef9-d903-4c8a-8e1b-37b96c900b99';
delete from public.recipe_nutrition where recipe_version_id = '06a9eef9-d903-4c8a-8e1b-37b96c900b99';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('06a9eef9-d903-4c8a-8e1b-37b96c900b99', 'protein', 9.5, 'as-fed'),
  ('06a9eef9-d903-4c8a-8e1b-37b96c900b99', 'fat', 4, 'as-fed'),
  ('06a9eef9-d903-4c8a-8e1b-37b96c900b99', 'fiber', 1.5, 'as-fed'),
  ('06a9eef9-d903-4c8a-8e1b-37b96c900b99', 'ash', 2.5, 'as-fed'),
  ('06a9eef9-d903-4c8a-8e1b-37b96c900b99', 'moisture', 77, 'as-fed'),
  ('06a9eef9-d903-4c8a-8e1b-37b96c900b99', 'kcal', 88.7, 'as-fed');

-- Edgard & Cooper — Kwijl-in-Stijl Kalkoen (puppy) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-pouch-drool-worthy-turkey/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 95,2 kcal per 100 g; geen omrekening nodig. Vocht is overgenomen uit ''vochtgehalte''. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'f1efe6d7-5da8-4c8b-b465-375a955e5278';
delete from public.recipe_nutrition where recipe_version_id = 'f1efe6d7-5da8-4c8b-b465-375a955e5278';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f1efe6d7-5da8-4c8b-b465-375a955e5278', 'protein', 11, 'as-fed'),
  ('f1efe6d7-5da8-4c8b-b465-375a955e5278', 'fat', 4.5, 'as-fed'),
  ('f1efe6d7-5da8-4c8b-b465-375a955e5278', 'fiber', 1, 'as-fed'),
  ('f1efe6d7-5da8-4c8b-b465-375a955e5278', 'ash', 2.5, 'as-fed'),
  ('f1efe6d7-5da8-4c8b-b465-375a955e5278', 'moisture', 77, 'as-fed'),
  ('f1efe6d7-5da8-4c8b-b465-375a955e5278', 'kcal', 95.2, 'as-fed');

-- Edgard & Cooper — Kwijl-in-Stijl Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-pouch-drool-worthy-chicken/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 88,7 kcal per 100 g; geen omrekening nodig. Vocht is overgenomen uit ''vochtgehalte''. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '4fd995ab-935c-4b71-93b5-dc782d8e8a6d';
delete from public.recipe_nutrition where recipe_version_id = '4fd995ab-935c-4b71-93b5-dc782d8e8a6d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4fd995ab-935c-4b71-93b5-dc782d8e8a6d', 'protein', 9.5, 'as-fed'),
  ('4fd995ab-935c-4b71-93b5-dc782d8e8a6d', 'fat', 4, 'as-fed'),
  ('4fd995ab-935c-4b71-93b5-dc782d8e8a6d', 'fiber', 1.5, 'as-fed'),
  ('4fd995ab-935c-4b71-93b5-dc782d8e8a6d', 'ash', 2.5, 'as-fed'),
  ('4fd995ab-935c-4b71-93b5-dc782d8e8a6d', 'moisture', 77, 'as-fed'),
  ('4fd995ab-935c-4b71-93b5-dc782d8e8a6d', 'kcal', 88.7, 'as-fed');

-- Edgard & Cooper — Kwijl-in-Stijl Kip (senior) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-pouch-senior-drool-worthy-chicken/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 86,7 kcal per 100 g; geen omrekening nodig. Vocht is overgenomen uit ''vochtgehalte''. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'fdc31657-e8db-4be7-98d1-b93c8b7102b5';
delete from public.recipe_nutrition where recipe_version_id = 'fdc31657-e8db-4be7-98d1-b93c8b7102b5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fdc31657-e8db-4be7-98d1-b93c8b7102b5', 'protein', 9, 'as-fed'),
  ('fdc31657-e8db-4be7-98d1-b93c8b7102b5', 'fat', 4, 'as-fed'),
  ('fdc31657-e8db-4be7-98d1-b93c8b7102b5', 'fiber', 1.75, 'as-fed'),
  ('fdc31657-e8db-4be7-98d1-b93c8b7102b5', 'ash', 2.5, 'as-fed'),
  ('fdc31657-e8db-4be7-98d1-b93c8b7102b5', 'moisture', 77, 'as-fed'),
  ('fdc31657-e8db-4be7-98d1-b93c8b7102b5', 'kcal', 86.7, 'as-fed');

-- Edgard & Cooper — Kwijl-in-Stijl Lam & Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-pouch-drool-worthy-lamb-chicken/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 88,7 kcal per 100 g; geen omrekening nodig. Vocht is overgenomen uit ''vochtgehalte''. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'b8af4c3b-dee8-4421-8bd7-cf185940c3bb';
delete from public.recipe_nutrition where recipe_version_id = 'b8af4c3b-dee8-4421-8bd7-cf185940c3bb';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b8af4c3b-dee8-4421-8bd7-cf185940c3bb', 'protein', 9.5, 'as-fed'),
  ('b8af4c3b-dee8-4421-8bd7-cf185940c3bb', 'fat', 4, 'as-fed'),
  ('b8af4c3b-dee8-4421-8bd7-cf185940c3bb', 'fiber', 1.5, 'as-fed'),
  ('b8af4c3b-dee8-4421-8bd7-cf185940c3bb', 'ash', 2.5, 'as-fed'),
  ('b8af4c3b-dee8-4421-8bd7-cf185940c3bb', 'moisture', 77, 'as-fed'),
  ('b8af4c3b-dee8-4421-8bd7-cf185940c3bb', 'kcal', 88.7, 'as-fed');

-- Edgard & Cooper — Kwijl-in-Stijl Wild Zwijn & Eend (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-pouch-drool-worthy-wild-boar-duck/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 88,7 kcal per 100 g; geen omrekening nodig. Vocht is overgenomen uit ''vochtgehalte''. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '37ef6704-1ab8-4722-973c-a7b1d51f0290';
delete from public.recipe_nutrition where recipe_version_id = '37ef6704-1ab8-4722-973c-a7b1d51f0290';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('37ef6704-1ab8-4722-973c-a7b1d51f0290', 'protein', 9.5, 'as-fed'),
  ('37ef6704-1ab8-4722-973c-a7b1d51f0290', 'fat', 4, 'as-fed'),
  ('37ef6704-1ab8-4722-973c-a7b1d51f0290', 'fiber', 1.5, 'as-fed'),
  ('37ef6704-1ab8-4722-973c-a7b1d51f0290', 'ash', 2.5, 'as-fed'),
  ('37ef6704-1ab8-4722-973c-a7b1d51f0290', 'moisture', 77, 'as-fed'),
  ('37ef6704-1ab8-4722-973c-a7b1d51f0290', 'kcal', 88.7, 'as-fed');

-- Edgard & Cooper — Kwijl-in-Stijl Zalm & Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-pouch-drool-worthy-salmon-chicken/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 88,7 kcal per 100 g; geen omrekening nodig. Vocht is overgenomen uit ''vochtgehalte''. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '3515bbe9-35e2-40c3-9509-ff1830817dce';
delete from public.recipe_nutrition where recipe_version_id = '3515bbe9-35e2-40c3-9509-ff1830817dce';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3515bbe9-35e2-40c3-9509-ff1830817dce', 'protein', 9.5, 'as-fed'),
  ('3515bbe9-35e2-40c3-9509-ff1830817dce', 'fat', 4, 'as-fed'),
  ('3515bbe9-35e2-40c3-9509-ff1830817dce', 'fiber', 1.5, 'as-fed'),
  ('3515bbe9-35e2-40c3-9509-ff1830817dce', 'ash', 2.5, 'as-fed'),
  ('3515bbe9-35e2-40c3-9509-ff1830817dce', 'moisture', 77, 'as-fed'),
  ('3515bbe9-35e2-40c3-9509-ff1830817dce', 'kcal', 88.7, 'as-fed');

-- Edgard & Cooper — Lam & rund (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-tin-lamb-beef/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 103 kcal per 100 g; geen omrekening nodig. Vocht is overgenomen uit ''vochtgehalte''. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '3be409d5-feba-41b5-977f-f2b0cf306291';
delete from public.recipe_nutrition where recipe_version_id = '3be409d5-feba-41b5-977f-f2b0cf306291';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3be409d5-feba-41b5-977f-f2b0cf306291', 'protein', 11, 'as-fed'),
  ('3be409d5-feba-41b5-977f-f2b0cf306291', 'fat', 6, 'as-fed'),
  ('3be409d5-feba-41b5-977f-f2b0cf306291', 'fiber', 0.6, 'as-fed'),
  ('3be409d5-feba-41b5-977f-f2b0cf306291', 'ash', 2, 'as-fed'),
  ('3be409d5-feba-41b5-977f-f2b0cf306291', 'moisture', 78, 'as-fed'),
  ('3be409d5-feba-41b5-977f-f2b0cf306291', 'kcal', 103, 'as-fed');

-- Edgard & Cooper — Lam & rund (kuipje) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-cup-lamb-beef/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 84,5 kcal per 100 g; geen omrekening nodig. Vocht is overgenomen uit ''vochtgehalte''. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'e937bb07-0c7e-4c95-8cbd-ebcf8f4edaa9';
delete from public.recipe_nutrition where recipe_version_id = 'e937bb07-0c7e-4c95-8cbd-ebcf8f4edaa9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e937bb07-0c7e-4c95-8cbd-ebcf8f4edaa9', 'protein', 9, 'as-fed'),
  ('e937bb07-0c7e-4c95-8cbd-ebcf8f4edaa9', 'fat', 5, 'as-fed'),
  ('e937bb07-0c7e-4c95-8cbd-ebcf8f4edaa9', 'fiber', 0.3, 'as-fed'),
  ('e937bb07-0c7e-4c95-8cbd-ebcf8f4edaa9', 'ash', 2.2, 'as-fed'),
  ('e937bb07-0c7e-4c95-8cbd-ebcf8f4edaa9', 'moisture', 82, 'as-fed'),
  ('e937bb07-0c7e-4c95-8cbd-ebcf8f4edaa9', 'kcal', 84.5, 'as-fed');

-- Edgard & Cooper — Rode Biet & Pompoen (plantaardig) (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-dry-food-beetroot-pumpkin/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 354,7 kcal per 100 g; geen omrekening nodig. Vocht wordt niet vermeld.'
 where id = '1a20cdd9-2e36-49bb-9a6c-ef105a7b62e5';
delete from public.recipe_nutrition where recipe_version_id = '1a20cdd9-2e36-49bb-9a6c-ef105a7b62e5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1a20cdd9-2e36-49bb-9a6c-ef105a7b62e5', 'protein', 25, 'as-fed'),
  ('1a20cdd9-2e36-49bb-9a6c-ef105a7b62e5', 'fat', 12, 'as-fed'),
  ('1a20cdd9-2e36-49bb-9a6c-ef105a7b62e5', 'fiber', 4, 'as-fed'),
  ('1a20cdd9-2e36-49bb-9a6c-ef105a7b62e5', 'ash', 8, 'as-fed'),
  ('1a20cdd9-2e36-49bb-9a6c-ef105a7b62e5', 'kcal', 354.7, 'as-fed'),
  ('1a20cdd9-2e36-49bb-9a6c-ef105a7b62e5', 'calcium', 1.2, 'as-fed'),
  ('1a20cdd9-2e36-49bb-9a6c-ef105a7b62e5', 'phosphorus', 0.8, 'as-fed'),
  ('1a20cdd9-2e36-49bb-9a6c-ef105a7b62e5', 'omega3', 0.8, 'as-fed'),
  ('1a20cdd9-2e36-49bb-9a6c-ef105a7b62e5', 'omega6', 2.5, 'as-fed');

-- Edgard & Cooper — Rund (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-tin-beef/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 107 kcal per 100 g; geen omrekening nodig. Vocht is overgenomen uit ''vochtgehalte''. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'abcbfc33-499a-4abf-9bb6-70ada98b2aa6';
delete from public.recipe_nutrition where recipe_version_id = 'abcbfc33-499a-4abf-9bb6-70ada98b2aa6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('abcbfc33-499a-4abf-9bb6-70ada98b2aa6', 'protein', 11, 'as-fed'),
  ('abcbfc33-499a-4abf-9bb6-70ada98b2aa6', 'fat', 7, 'as-fed'),
  ('abcbfc33-499a-4abf-9bb6-70ada98b2aa6', 'fiber', 0.6, 'as-fed'),
  ('abcbfc33-499a-4abf-9bb6-70ada98b2aa6', 'ash', 2.3, 'as-fed'),
  ('abcbfc33-499a-4abf-9bb6-70ada98b2aa6', 'moisture', 78, 'as-fed'),
  ('abcbfc33-499a-4abf-9bb6-70ada98b2aa6', 'kcal', 107, 'as-fed');

-- Edgard & Cooper — Rund & eend (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-cup-beef-duck/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 84,5 kcal per 100 g; geen omrekening nodig. Vocht is overgenomen uit ''vochtgehalte''. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = 'bb2adf90-5166-4ad2-a6ce-a5138a749cd9';
delete from public.recipe_nutrition where recipe_version_id = 'bb2adf90-5166-4ad2-a6ce-a5138a749cd9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('bb2adf90-5166-4ad2-a6ce-a5138a749cd9', 'protein', 9, 'as-fed'),
  ('bb2adf90-5166-4ad2-a6ce-a5138a749cd9', 'fat', 5, 'as-fed'),
  ('bb2adf90-5166-4ad2-a6ce-a5138a749cd9', 'fiber', 0.3, 'as-fed'),
  ('bb2adf90-5166-4ad2-a6ce-a5138a749cd9', 'ash', 2.2, 'as-fed'),
  ('bb2adf90-5166-4ad2-a6ce-a5138a749cd9', 'moisture', 82, 'as-fed'),
  ('bb2adf90-5166-4ad2-a6ce-a5138a749cd9', 'kcal', 84.5, 'as-fed');

-- Edgard & Cooper — Vers Hert & Eend (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-dry-food-venison-duck/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 372,2 kcal per 100 g; geen omrekening nodig. Vocht wordt niet vermeld.'
 where id = 'd50f3485-b409-4d3a-b54f-0189f6f57339';
delete from public.recipe_nutrition where recipe_version_id = 'd50f3485-b409-4d3a-b54f-0189f6f57339';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d50f3485-b409-4d3a-b54f-0189f6f57339', 'protein', 25, 'as-fed'),
  ('d50f3485-b409-4d3a-b54f-0189f6f57339', 'fat', 15, 'as-fed'),
  ('d50f3485-b409-4d3a-b54f-0189f6f57339', 'fiber', 3.5, 'as-fed'),
  ('d50f3485-b409-4d3a-b54f-0189f6f57339', 'ash', 7.9, 'as-fed'),
  ('d50f3485-b409-4d3a-b54f-0189f6f57339', 'kcal', 372.2, 'as-fed'),
  ('d50f3485-b409-4d3a-b54f-0189f6f57339', 'calcium', 1.2, 'as-fed'),
  ('d50f3485-b409-4d3a-b54f-0189f6f57339', 'phosphorus', 0.8, 'as-fed'),
  ('d50f3485-b409-4d3a-b54f-0189f6f57339', 'omega3', 1, 'as-fed'),
  ('d50f3485-b409-4d3a-b54f-0189f6f57339', 'omega6', 2.5, 'as-fed');

-- Edgard & Cooper — Vers Lam (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-dry-food-lamb/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 370,8 kcal per 100 g; geen omrekening nodig. Vocht wordt niet vermeld.'
 where id = '6b5467cb-e355-44dd-bbd2-973bb9c9291a';
delete from public.recipe_nutrition where recipe_version_id = '6b5467cb-e355-44dd-bbd2-973bb9c9291a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6b5467cb-e355-44dd-bbd2-973bb9c9291a', 'protein', 25, 'as-fed'),
  ('6b5467cb-e355-44dd-bbd2-973bb9c9291a', 'fat', 15, 'as-fed'),
  ('6b5467cb-e355-44dd-bbd2-973bb9c9291a', 'fiber', 3.5, 'as-fed'),
  ('6b5467cb-e355-44dd-bbd2-973bb9c9291a', 'ash', 8.3, 'as-fed'),
  ('6b5467cb-e355-44dd-bbd2-973bb9c9291a', 'kcal', 370.8, 'as-fed'),
  ('6b5467cb-e355-44dd-bbd2-973bb9c9291a', 'calcium', 1.2, 'as-fed'),
  ('6b5467cb-e355-44dd-bbd2-973bb9c9291a', 'phosphorus', 0.8, 'as-fed'),
  ('6b5467cb-e355-44dd-bbd2-973bb9c9291a', 'omega3', 1, 'as-fed'),
  ('6b5467cb-e355-44dd-bbd2-973bb9c9291a', 'omega6', 2.5, 'as-fed');

-- Edgard & Cooper — Verse Eend (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-dry-food-duck/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 373,9 kcal per 100 g; geen omrekening nodig. Vocht wordt niet vermeld.'
 where id = '6c831735-16f3-4b2d-a208-4982cc8d59b2';
delete from public.recipe_nutrition where recipe_version_id = '6c831735-16f3-4b2d-a208-4982cc8d59b2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6c831735-16f3-4b2d-a208-4982cc8d59b2', 'protein', 25, 'as-fed'),
  ('6c831735-16f3-4b2d-a208-4982cc8d59b2', 'fat', 15, 'as-fed'),
  ('6c831735-16f3-4b2d-a208-4982cc8d59b2', 'fiber', 3.5, 'as-fed'),
  ('6c831735-16f3-4b2d-a208-4982cc8d59b2', 'ash', 7.4, 'as-fed'),
  ('6c831735-16f3-4b2d-a208-4982cc8d59b2', 'kcal', 373.9, 'as-fed'),
  ('6c831735-16f3-4b2d-a208-4982cc8d59b2', 'calcium', 1.2, 'as-fed'),
  ('6c831735-16f3-4b2d-a208-4982cc8d59b2', 'phosphorus', 0.8, 'as-fed'),
  ('6c831735-16f3-4b2d-a208-4982cc8d59b2', 'omega3', 1, 'as-fed'),
  ('6c831735-16f3-4b2d-a208-4982cc8d59b2', 'omega6', 3, 'as-fed');

-- Edgard & Cooper — Verse Eend & Kip (puppy) (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-dry-food-duck-chicken/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 383,2 kcal per 100 g; geen omrekening nodig. Vocht wordt niet vermeld.'
 where id = '65b11052-df4c-4f45-bcd7-bc0c00692e56';
delete from public.recipe_nutrition where recipe_version_id = '65b11052-df4c-4f45-bcd7-bc0c00692e56';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('65b11052-df4c-4f45-bcd7-bc0c00692e56', 'protein', 28, 'as-fed'),
  ('65b11052-df4c-4f45-bcd7-bc0c00692e56', 'fat', 16, 'as-fed'),
  ('65b11052-df4c-4f45-bcd7-bc0c00692e56', 'fiber', 3, 'as-fed'),
  ('65b11052-df4c-4f45-bcd7-bc0c00692e56', 'ash', 7.4, 'as-fed'),
  ('65b11052-df4c-4f45-bcd7-bc0c00692e56', 'kcal', 383.2, 'as-fed'),
  ('65b11052-df4c-4f45-bcd7-bc0c00692e56', 'calcium', 1.1, 'as-fed'),
  ('65b11052-df4c-4f45-bcd7-bc0c00692e56', 'phosphorus', 0.95, 'as-fed'),
  ('65b11052-df4c-4f45-bcd7-bc0c00692e56', 'omega3', 1, 'as-fed'),
  ('65b11052-df4c-4f45-bcd7-bc0c00692e56', 'omega6', 2.5, 'as-fed');

-- Edgard & Cooper — Verse Kalkoen & Kip (bio) (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-dry-food-turkey-chicken/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 363,6 kcal per 100 g; geen omrekening nodig. Vocht wordt niet vermeld.'
 where id = 'e9586216-df90-40d0-9800-6be108fcebd5';
delete from public.recipe_nutrition where recipe_version_id = 'e9586216-df90-40d0-9800-6be108fcebd5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e9586216-df90-40d0-9800-6be108fcebd5', 'protein', 25, 'as-fed'),
  ('e9586216-df90-40d0-9800-6be108fcebd5', 'fat', 12.5, 'as-fed'),
  ('e9586216-df90-40d0-9800-6be108fcebd5', 'fiber', 3.5, 'as-fed'),
  ('e9586216-df90-40d0-9800-6be108fcebd5', 'ash', 7.1, 'as-fed'),
  ('e9586216-df90-40d0-9800-6be108fcebd5', 'kcal', 363.6, 'as-fed'),
  ('e9586216-df90-40d0-9800-6be108fcebd5', 'calcium', 1.15, 'as-fed'),
  ('e9586216-df90-40d0-9800-6be108fcebd5', 'phosphorus', 0.8, 'as-fed'),
  ('e9586216-df90-40d0-9800-6be108fcebd5', 'omega3', 0.2, 'as-fed'),
  ('e9586216-df90-40d0-9800-6be108fcebd5', 'omega6', 2.9, 'as-fed');

-- Edgard & Cooper — Verse Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-dry-food-chicken/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 371,1 kcal per 100 g; geen omrekening nodig. Vocht wordt niet vermeld.'
 where id = '388307a8-ff11-42d2-9b92-d2a98024755e';
delete from public.recipe_nutrition where recipe_version_id = '388307a8-ff11-42d2-9b92-d2a98024755e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('388307a8-ff11-42d2-9b92-d2a98024755e', 'protein', 25, 'as-fed'),
  ('388307a8-ff11-42d2-9b92-d2a98024755e', 'fat', 15, 'as-fed'),
  ('388307a8-ff11-42d2-9b92-d2a98024755e', 'fiber', 3.5, 'as-fed'),
  ('388307a8-ff11-42d2-9b92-d2a98024755e', 'ash', 8.2, 'as-fed'),
  ('388307a8-ff11-42d2-9b92-d2a98024755e', 'kcal', 371.1, 'as-fed'),
  ('388307a8-ff11-42d2-9b92-d2a98024755e', 'calcium', 1.3, 'as-fed'),
  ('388307a8-ff11-42d2-9b92-d2a98024755e', 'phosphorus', 0.8, 'as-fed'),
  ('388307a8-ff11-42d2-9b92-d2a98024755e', 'omega3', 0.9, 'as-fed'),
  ('388307a8-ff11-42d2-9b92-d2a98024755e', 'omega6', 2.5, 'as-fed');

-- Edgard & Cooper — Verse Kip & Zalm (senior) (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-dry-food-chicken-salmon/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 348,6 kcal per 100 g; geen omrekening nodig. Vocht wordt niet vermeld.'
 where id = 'b07643e1-b2d9-4684-9d0d-8766ee72459e';
delete from public.recipe_nutrition where recipe_version_id = 'b07643e1-b2d9-4684-9d0d-8766ee72459e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b07643e1-b2d9-4684-9d0d-8766ee72459e', 'protein', 22, 'as-fed'),
  ('b07643e1-b2d9-4684-9d0d-8766ee72459e', 'fat', 12, 'as-fed'),
  ('b07643e1-b2d9-4684-9d0d-8766ee72459e', 'fiber', 5, 'as-fed'),
  ('b07643e1-b2d9-4684-9d0d-8766ee72459e', 'ash', 7.5, 'as-fed'),
  ('b07643e1-b2d9-4684-9d0d-8766ee72459e', 'kcal', 348.6, 'as-fed'),
  ('b07643e1-b2d9-4684-9d0d-8766ee72459e', 'calcium', 0.9, 'as-fed'),
  ('b07643e1-b2d9-4684-9d0d-8766ee72459e', 'phosphorus', 0.6, 'as-fed'),
  ('b07643e1-b2d9-4684-9d0d-8766ee72459e', 'omega3', 0.8, 'as-fed'),
  ('b07643e1-b2d9-4684-9d0d-8766ee72459e', 'omega6', 3, 'as-fed');

-- Edgard & Cooper — Verse Rund & Kip (bio) (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-dry-food-beef-chicken/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 377,8 kcal per 100 g; geen omrekening nodig. Vocht wordt niet vermeld.'
 where id = 'd5916d94-0275-443c-b14a-72e08c472a16';
delete from public.recipe_nutrition where recipe_version_id = 'd5916d94-0275-443c-b14a-72e08c472a16';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d5916d94-0275-443c-b14a-72e08c472a16', 'protein', 25, 'as-fed'),
  ('d5916d94-0275-443c-b14a-72e08c472a16', 'fat', 14.5, 'as-fed'),
  ('d5916d94-0275-443c-b14a-72e08c472a16', 'fiber', 3, 'as-fed'),
  ('d5916d94-0275-443c-b14a-72e08c472a16', 'ash', 6.7, 'as-fed'),
  ('d5916d94-0275-443c-b14a-72e08c472a16', 'kcal', 377.8, 'as-fed'),
  ('d5916d94-0275-443c-b14a-72e08c472a16', 'calcium', 1.1, 'as-fed'),
  ('d5916d94-0275-443c-b14a-72e08c472a16', 'phosphorus', 0.75, 'as-fed'),
  ('d5916d94-0275-443c-b14a-72e08c472a16', 'omega3', 0.2, 'as-fed'),
  ('d5916d94-0275-443c-b14a-72e08c472a16', 'omega6', 2.8, 'as-fed');

-- Edgard & Cooper — Verse Zalm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-dry-food-salmon/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 374,5 kcal per 100 g; geen omrekening nodig. Vocht wordt niet vermeld.'
 where id = '0791933a-9956-40f9-877b-40db32945790';
delete from public.recipe_nutrition where recipe_version_id = '0791933a-9956-40f9-877b-40db32945790';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0791933a-9956-40f9-877b-40db32945790', 'protein', 25, 'as-fed'),
  ('0791933a-9956-40f9-877b-40db32945790', 'fat', 15.5, 'as-fed'),
  ('0791933a-9956-40f9-877b-40db32945790', 'fiber', 3.5, 'as-fed'),
  ('0791933a-9956-40f9-877b-40db32945790', 'ash', 7.9, 'as-fed'),
  ('0791933a-9956-40f9-877b-40db32945790', 'kcal', 374.5, 'as-fed'),
  ('0791933a-9956-40f9-877b-40db32945790', 'calcium', 1.2, 'as-fed'),
  ('0791933a-9956-40f9-877b-40db32945790', 'phosphorus', 0.8, 'as-fed'),
  ('0791933a-9956-40f9-877b-40db32945790', 'omega3', 2, 'as-fed'),
  ('0791933a-9956-40f9-877b-40db32945790', 'omega6', 2.5, 'as-fed');

-- Edgard & Cooper — Verse Zalm & Kalkoen (puppy) (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-dry-food-salmon-turkey/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 381,4 kcal per 100 g; geen omrekening nodig. Vocht wordt niet vermeld.'
 where id = '718d8a3c-723d-4739-9f75-bfd21b3e8386';
delete from public.recipe_nutrition where recipe_version_id = '718d8a3c-723d-4739-9f75-bfd21b3e8386';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('718d8a3c-723d-4739-9f75-bfd21b3e8386', 'protein', 28, 'as-fed'),
  ('718d8a3c-723d-4739-9f75-bfd21b3e8386', 'fat', 16, 'as-fed'),
  ('718d8a3c-723d-4739-9f75-bfd21b3e8386', 'fiber', 3, 'as-fed'),
  ('718d8a3c-723d-4739-9f75-bfd21b3e8386', 'ash', 7.9, 'as-fed'),
  ('718d8a3c-723d-4739-9f75-bfd21b3e8386', 'kcal', 381.4, 'as-fed'),
  ('718d8a3c-723d-4739-9f75-bfd21b3e8386', 'calcium', 1.1, 'as-fed'),
  ('718d8a3c-723d-4739-9f75-bfd21b3e8386', 'phosphorus', 0.92, 'as-fed'),
  ('718d8a3c-723d-4739-9f75-bfd21b3e8386', 'omega3', 1, 'as-fed'),
  ('718d8a3c-723d-4739-9f75-bfd21b3e8386', 'omega6', 2.5, 'as-fed');

-- Edgard & Cooper — Wild & eend (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-tin-game-duck/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 106 kcal per 100 g; geen omrekening nodig. Vocht is overgenomen uit ''vochtgehalte''. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '6bb4e100-6938-4a97-986d-322c9453f7e3';
delete from public.recipe_nutrition where recipe_version_id = '6bb4e100-6938-4a97-986d-322c9453f7e3';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6bb4e100-6938-4a97-986d-322c9453f7e3', 'protein', 11, 'as-fed'),
  ('6bb4e100-6938-4a97-986d-322c9453f7e3', 'fat', 7, 'as-fed'),
  ('6bb4e100-6938-4a97-986d-322c9453f7e3', 'fiber', 0.6, 'as-fed'),
  ('6bb4e100-6938-4a97-986d-322c9453f7e3', 'ash', 2.5, 'as-fed'),
  ('6bb4e100-6938-4a97-986d-322c9453f7e3', 'moisture', 78, 'as-fed'),
  ('6bb4e100-6938-4a97-986d-322c9453f7e3', 'kcal', 106, 'as-fed');

-- Edgard & Cooper — Wild & eend (kuipje) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-cup-game-duck/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 84,5 kcal per 100 g; geen omrekening nodig. Vocht is overgenomen uit ''vochtgehalte''. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '5d6cd663-0c39-4764-9b11-8f7333423874';
delete from public.recipe_nutrition where recipe_version_id = '5d6cd663-0c39-4764-9b11-8f7333423874';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5d6cd663-0c39-4764-9b11-8f7333423874', 'protein', 9, 'as-fed'),
  ('5d6cd663-0c39-4764-9b11-8f7333423874', 'fat', 5, 'as-fed'),
  ('5d6cd663-0c39-4764-9b11-8f7333423874', 'fiber', 0.3, 'as-fed'),
  ('5d6cd663-0c39-4764-9b11-8f7333423874', 'ash', 2.2, 'as-fed'),
  ('5d6cd663-0c39-4764-9b11-8f7333423874', 'moisture', 82, 'as-fed'),
  ('5d6cd663-0c39-4764-9b11-8f7333423874', 'kcal', 84.5, 'as-fed');

-- Edgard & Cooper — Wortel & Courgette (plantaardig) (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-dry-food-carrot-courgette/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 354,7 kcal per 100 g; geen omrekening nodig. Vocht wordt niet vermeld.'
 where id = '7bf1ac59-2c46-4e34-881c-a66a43cabc8e';
delete from public.recipe_nutrition where recipe_version_id = '7bf1ac59-2c46-4e34-881c-a66a43cabc8e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7bf1ac59-2c46-4e34-881c-a66a43cabc8e', 'protein', 25, 'as-fed'),
  ('7bf1ac59-2c46-4e34-881c-a66a43cabc8e', 'fat', 12, 'as-fed'),
  ('7bf1ac59-2c46-4e34-881c-a66a43cabc8e', 'fiber', 4, 'as-fed'),
  ('7bf1ac59-2c46-4e34-881c-a66a43cabc8e', 'ash', 8, 'as-fed'),
  ('7bf1ac59-2c46-4e34-881c-a66a43cabc8e', 'kcal', 354.7, 'as-fed'),
  ('7bf1ac59-2c46-4e34-881c-a66a43cabc8e', 'calcium', 1.2, 'as-fed'),
  ('7bf1ac59-2c46-4e34-881c-a66a43cabc8e', 'phosphorus', 0.8, 'as-fed'),
  ('7bf1ac59-2c46-4e34-881c-a66a43cabc8e', 'omega3', 0.8, 'as-fed'),
  ('7bf1ac59-2c46-4e34-881c-a66a43cabc8e', 'omega6', 2.5, 'as-fed');

-- Edgard & Cooper — Zalm & Kalkoen (kuipje) (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.edgardcooper.com/nl/products/dog-cup-salmon-turkey/',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energie staat op de bron als 85 kcal per 100 g; geen omrekening nodig. Vocht is overgenomen uit ''vochtgehalte''. Calcium, fosfor, omega-3 en omega-6 worden niet vermeld.'
 where id = '1987b152-ce9b-4b6e-9f64-15b362e5fba0';
delete from public.recipe_nutrition where recipe_version_id = '1987b152-ce9b-4b6e-9f64-15b362e5fba0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1987b152-ce9b-4b6e-9f64-15b362e5fba0', 'protein', 9, 'as-fed'),
  ('1987b152-ce9b-4b6e-9f64-15b362e5fba0', 'fat', 5, 'as-fed'),
  ('1987b152-ce9b-4b6e-9f64-15b362e5fba0', 'fiber', 0.3, 'as-fed'),
  ('1987b152-ce9b-4b6e-9f64-15b362e5fba0', 'ash', 2.2, 'as-fed'),
  ('1987b152-ce9b-4b6e-9f64-15b362e5fba0', 'moisture', 82, 'as-fed'),
  ('1987b152-ce9b-4b6e-9f64-15b362e5fba0', 'kcal', 85, 'as-fed');

-- Eukanuba — Active Adult Medium Breed kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/dog/dry-food/life-care/adult-medium-breed-rich-in-fresh-chicken',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = '0363bf53-c84c-4f69-8eaa-6b91a2eebb11';
delete from public.recipe_nutrition where recipe_version_id = '0363bf53-c84c-4f69-8eaa-6b91a2eebb11';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0363bf53-c84c-4f69-8eaa-6b91a2eebb11', 'protein', 27, 'as-fed'),
  ('0363bf53-c84c-4f69-8eaa-6b91a2eebb11', 'fat', 15, 'as-fed'),
  ('0363bf53-c84c-4f69-8eaa-6b91a2eebb11', 'fiber', 2.4, 'as-fed'),
  ('0363bf53-c84c-4f69-8eaa-6b91a2eebb11', 'ash', 6.5, 'as-fed'),
  ('0363bf53-c84c-4f69-8eaa-6b91a2eebb11', 'calcium', 1.3, 'as-fed'),
  ('0363bf53-c84c-4f69-8eaa-6b91a2eebb11', 'phosphorus', 1.1, 'as-fed'),
  ('0363bf53-c84c-4f69-8eaa-6b91a2eebb11', 'omega3', 0.26, 'as-fed'),
  ('0363bf53-c84c-4f69-8eaa-6b91a2eebb11', 'omega6', 2.53, 'as-fed');

-- Eukanuba — Adult kleine/middelgrote rassen, zalm en gerst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/life-care/adult-kleinemiddelgrote-rassen-zalm-en-gerst',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = '7fd13ea4-93b9-4d14-b34f-066359666ddb';
delete from public.recipe_nutrition where recipe_version_id = '7fd13ea4-93b9-4d14-b34f-066359666ddb';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7fd13ea4-93b9-4d14-b34f-066359666ddb', 'protein', 25, 'as-fed'),
  ('7fd13ea4-93b9-4d14-b34f-066359666ddb', 'fat', 15, 'as-fed'),
  ('7fd13ea4-93b9-4d14-b34f-066359666ddb', 'fiber', 2.2, 'as-fed'),
  ('7fd13ea4-93b9-4d14-b34f-066359666ddb', 'ash', 6.6, 'as-fed'),
  ('7fd13ea4-93b9-4d14-b34f-066359666ddb', 'calcium', 1.4, 'as-fed'),
  ('7fd13ea4-93b9-4d14-b34f-066359666ddb', 'phosphorus', 1.1, 'as-fed'),
  ('7fd13ea4-93b9-4d14-b34f-066359666ddb', 'omega3', 0.67, 'as-fed'),
  ('7fd13ea4-93b9-4d14-b34f-066359666ddb', 'omega6', 3.66, 'as-fed');

-- Eukanuba — Adult rijk aan forel met zoete aardappelen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/adult-rijk-aan-forel-met-zoete-aardappelen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie op de productpagina; kcal blijft null. Geen omrekening nodig.'
 where id = 'cba76a15-0ec0-4044-91fb-0cd7fa95196d';
delete from public.recipe_nutrition where recipe_version_id = 'cba76a15-0ec0-4044-91fb-0cd7fa95196d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('cba76a15-0ec0-4044-91fb-0cd7fa95196d', 'protein', 10, 'as-fed'),
  ('cba76a15-0ec0-4044-91fb-0cd7fa95196d', 'fat', 6.5, 'as-fed'),
  ('cba76a15-0ec0-4044-91fb-0cd7fa95196d', 'fiber', 1, 'as-fed'),
  ('cba76a15-0ec0-4044-91fb-0cd7fa95196d', 'ash', 2.5, 'as-fed'),
  ('cba76a15-0ec0-4044-91fb-0cd7fa95196d', 'moisture', 79, 'as-fed'),
  ('cba76a15-0ec0-4044-91fb-0cd7fa95196d', 'calcium', 0.45, 'as-fed'),
  ('cba76a15-0ec0-4044-91fb-0cd7fa95196d', 'phosphorus', 0.32, 'as-fed'),
  ('cba76a15-0ec0-4044-91fb-0cd7fa95196d', 'omega3', 0.4, 'as-fed'),
  ('cba76a15-0ec0-4044-91fb-0cd7fa95196d', 'omega6', 1, 'as-fed');

-- Eukanuba — Adult rijk aan lam met aardappelen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/adult-rijk-aan-lam-met-aardappelen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie op de productpagina; kcal blijft null. Geen omrekening nodig.'
 where id = '0a761797-2def-4ecd-bfb0-a5e2756b17e3';
delete from public.recipe_nutrition where recipe_version_id = '0a761797-2def-4ecd-bfb0-a5e2756b17e3';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0a761797-2def-4ecd-bfb0-a5e2756b17e3', 'protein', 10, 'as-fed'),
  ('0a761797-2def-4ecd-bfb0-a5e2756b17e3', 'fat', 6.5, 'as-fed'),
  ('0a761797-2def-4ecd-bfb0-a5e2756b17e3', 'fiber', 1, 'as-fed'),
  ('0a761797-2def-4ecd-bfb0-a5e2756b17e3', 'ash', 2.5, 'as-fed'),
  ('0a761797-2def-4ecd-bfb0-a5e2756b17e3', 'moisture', 79, 'as-fed'),
  ('0a761797-2def-4ecd-bfb0-a5e2756b17e3', 'calcium', 0.37, 'as-fed'),
  ('0a761797-2def-4ecd-bfb0-a5e2756b17e3', 'phosphorus', 0.28, 'as-fed'),
  ('0a761797-2def-4ecd-bfb0-a5e2756b17e3', 'omega3', 0.1, 'as-fed'),
  ('0a761797-2def-4ecd-bfb0-a5e2756b17e3', 'omega6', 0.6, 'as-fed');

-- Eukanuba — Breed Care Australische herder Volwassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-australische-herder-volwassen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = 'a449e72d-744a-4e04-8196-666a858eb9f2';
delete from public.recipe_nutrition where recipe_version_id = 'a449e72d-744a-4e04-8196-666a858eb9f2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a449e72d-744a-4e04-8196-666a858eb9f2', 'protein', 27, 'as-fed'),
  ('a449e72d-744a-4e04-8196-666a858eb9f2', 'fat', 14, 'as-fed'),
  ('a449e72d-744a-4e04-8196-666a858eb9f2', 'fiber', 2.1, 'as-fed'),
  ('a449e72d-744a-4e04-8196-666a858eb9f2', 'ash', 6.2, 'as-fed'),
  ('a449e72d-744a-4e04-8196-666a858eb9f2', 'calcium', 1.2, 'as-fed'),
  ('a449e72d-744a-4e04-8196-666a858eb9f2', 'phosphorus', 1, 'as-fed'),
  ('a449e72d-744a-4e04-8196-666a858eb9f2', 'omega3', 0.46, 'as-fed'),
  ('a449e72d-744a-4e04-8196-666a858eb9f2', 'omega6', 2.35, 'as-fed');

-- Eukanuba — Breed Care Boxer Volwassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-boxer-volwassen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = 'bdfc6159-8e68-49c5-b100-b9ec897887f9';
delete from public.recipe_nutrition where recipe_version_id = 'bdfc6159-8e68-49c5-b100-b9ec897887f9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('bdfc6159-8e68-49c5-b100-b9ec897887f9', 'protein', 27, 'as-fed'),
  ('bdfc6159-8e68-49c5-b100-b9ec897887f9', 'fat', 14, 'as-fed'),
  ('bdfc6159-8e68-49c5-b100-b9ec897887f9', 'fiber', 2.1, 'as-fed'),
  ('bdfc6159-8e68-49c5-b100-b9ec897887f9', 'ash', 6.2, 'as-fed'),
  ('bdfc6159-8e68-49c5-b100-b9ec897887f9', 'calcium', 1.2, 'as-fed'),
  ('bdfc6159-8e68-49c5-b100-b9ec897887f9', 'phosphorus', 1, 'as-fed'),
  ('bdfc6159-8e68-49c5-b100-b9ec897887f9', 'omega3', 0.46, 'as-fed'),
  ('bdfc6159-8e68-49c5-b100-b9ec897887f9', 'omega6', 2.35, 'as-fed');

-- Eukanuba — Breed Care Cocker Spaniël Volwassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-cocker-spaniel-volwassen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = '8d3d9b31-f9be-457c-805f-23d76d84aef1';
delete from public.recipe_nutrition where recipe_version_id = '8d3d9b31-f9be-457c-805f-23d76d84aef1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8d3d9b31-f9be-457c-805f-23d76d84aef1', 'protein', 27, 'as-fed'),
  ('8d3d9b31-f9be-457c-805f-23d76d84aef1', 'fat', 14, 'as-fed'),
  ('8d3d9b31-f9be-457c-805f-23d76d84aef1', 'fiber', 2.1, 'as-fed'),
  ('8d3d9b31-f9be-457c-805f-23d76d84aef1', 'ash', 6.2, 'as-fed'),
  ('8d3d9b31-f9be-457c-805f-23d76d84aef1', 'calcium', 1.2, 'as-fed'),
  ('8d3d9b31-f9be-457c-805f-23d76d84aef1', 'phosphorus', 1, 'as-fed'),
  ('8d3d9b31-f9be-457c-805f-23d76d84aef1', 'omega3', 0.46, 'as-fed'),
  ('8d3d9b31-f9be-457c-805f-23d76d84aef1', 'omega6', 2.35, 'as-fed');

-- Eukanuba — Breed Care Duitse herder Volwassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-duitse-herder-volwassen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = 'c3e37e48-c505-4733-9ac0-779345183d06';
delete from public.recipe_nutrition where recipe_version_id = 'c3e37e48-c505-4733-9ac0-779345183d06';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c3e37e48-c505-4733-9ac0-779345183d06', 'protein', 27, 'as-fed'),
  ('c3e37e48-c505-4733-9ac0-779345183d06', 'fat', 14, 'as-fed'),
  ('c3e37e48-c505-4733-9ac0-779345183d06', 'fiber', 2.1, 'as-fed'),
  ('c3e37e48-c505-4733-9ac0-779345183d06', 'ash', 6.2, 'as-fed'),
  ('c3e37e48-c505-4733-9ac0-779345183d06', 'calcium', 1.2, 'as-fed'),
  ('c3e37e48-c505-4733-9ac0-779345183d06', 'phosphorus', 1, 'as-fed'),
  ('c3e37e48-c505-4733-9ac0-779345183d06', 'omega3', 0.46, 'as-fed'),
  ('c3e37e48-c505-4733-9ac0-779345183d06', 'omega6', 2.35, 'as-fed');

-- Eukanuba — Breed Care Golden Retriever Volwassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-golden-retriever-volwassen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = '79f54d56-ea8b-48b9-a603-4163ffc5161d';
delete from public.recipe_nutrition where recipe_version_id = '79f54d56-ea8b-48b9-a603-4163ffc5161d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('79f54d56-ea8b-48b9-a603-4163ffc5161d', 'protein', 27, 'as-fed'),
  ('79f54d56-ea8b-48b9-a603-4163ffc5161d', 'fat', 14, 'as-fed'),
  ('79f54d56-ea8b-48b9-a603-4163ffc5161d', 'fiber', 2.1, 'as-fed'),
  ('79f54d56-ea8b-48b9-a603-4163ffc5161d', 'ash', 6.2, 'as-fed'),
  ('79f54d56-ea8b-48b9-a603-4163ffc5161d', 'calcium', 1.2, 'as-fed'),
  ('79f54d56-ea8b-48b9-a603-4163ffc5161d', 'phosphorus', 1, 'as-fed'),
  ('79f54d56-ea8b-48b9-a603-4163ffc5161d', 'omega3', 0.46, 'as-fed'),
  ('79f54d56-ea8b-48b9-a603-4163ffc5161d', 'omega6', 2.35, 'as-fed');

-- Eukanuba — Breed Care Jackrusselterriër Volwassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-jackrusselterrier-volwassen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = 'b97a1e6f-3bbe-4dcb-a8d8-3532fae06d56';
delete from public.recipe_nutrition where recipe_version_id = 'b97a1e6f-3bbe-4dcb-a8d8-3532fae06d56';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b97a1e6f-3bbe-4dcb-a8d8-3532fae06d56', 'protein', 27, 'as-fed'),
  ('b97a1e6f-3bbe-4dcb-a8d8-3532fae06d56', 'fat', 14, 'as-fed'),
  ('b97a1e6f-3bbe-4dcb-a8d8-3532fae06d56', 'fiber', 2.1, 'as-fed'),
  ('b97a1e6f-3bbe-4dcb-a8d8-3532fae06d56', 'ash', 6.2, 'as-fed'),
  ('b97a1e6f-3bbe-4dcb-a8d8-3532fae06d56', 'calcium', 1.2, 'as-fed'),
  ('b97a1e6f-3bbe-4dcb-a8d8-3532fae06d56', 'phosphorus', 1, 'as-fed'),
  ('b97a1e6f-3bbe-4dcb-a8d8-3532fae06d56', 'omega3', 0.46, 'as-fed'),
  ('b97a1e6f-3bbe-4dcb-a8d8-3532fae06d56', 'omega6', 2.35, 'as-fed');

-- Eukanuba — Breed Care Labrador Retriever Volwassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-labrador-retriever-volwassen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = '42dcf43b-0bbc-4e36-afde-badc277fb913';
delete from public.recipe_nutrition where recipe_version_id = '42dcf43b-0bbc-4e36-afde-badc277fb913';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('42dcf43b-0bbc-4e36-afde-badc277fb913', 'protein', 27, 'as-fed'),
  ('42dcf43b-0bbc-4e36-afde-badc277fb913', 'fat', 14, 'as-fed'),
  ('42dcf43b-0bbc-4e36-afde-badc277fb913', 'fiber', 2.1, 'as-fed'),
  ('42dcf43b-0bbc-4e36-afde-badc277fb913', 'ash', 6.2, 'as-fed'),
  ('42dcf43b-0bbc-4e36-afde-badc277fb913', 'calcium', 1.2, 'as-fed'),
  ('42dcf43b-0bbc-4e36-afde-badc277fb913', 'phosphorus', 1, 'as-fed'),
  ('42dcf43b-0bbc-4e36-afde-badc277fb913', 'omega3', 0.46, 'as-fed'),
  ('42dcf43b-0bbc-4e36-afde-badc277fb913', 'omega6', 2.35, 'as-fed');

-- Eukanuba — Breed Care Poedel Volwassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-poedel-volwassen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = '8bd7ce43-7abd-41d6-a3bc-ae738692ac2d';
delete from public.recipe_nutrition where recipe_version_id = '8bd7ce43-7abd-41d6-a3bc-ae738692ac2d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8bd7ce43-7abd-41d6-a3bc-ae738692ac2d', 'protein', 27, 'as-fed'),
  ('8bd7ce43-7abd-41d6-a3bc-ae738692ac2d', 'fat', 14, 'as-fed'),
  ('8bd7ce43-7abd-41d6-a3bc-ae738692ac2d', 'fiber', 2.1, 'as-fed'),
  ('8bd7ce43-7abd-41d6-a3bc-ae738692ac2d', 'ash', 6.2, 'as-fed'),
  ('8bd7ce43-7abd-41d6-a3bc-ae738692ac2d', 'calcium', 1.2, 'as-fed'),
  ('8bd7ce43-7abd-41d6-a3bc-ae738692ac2d', 'phosphorus', 1, 'as-fed'),
  ('8bd7ce43-7abd-41d6-a3bc-ae738692ac2d', 'omega3', 0.46, 'as-fed'),
  ('8bd7ce43-7abd-41d6-a3bc-ae738692ac2d', 'omega6', 2.35, 'as-fed');

-- Eukanuba — Breed Care Rottweiler Volwassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-rottweiler-volwassen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = 'b30e6582-4c5c-4c77-aba1-0e40e4ea39cb';
delete from public.recipe_nutrition where recipe_version_id = 'b30e6582-4c5c-4c77-aba1-0e40e4ea39cb';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b30e6582-4c5c-4c77-aba1-0e40e4ea39cb', 'protein', 27, 'as-fed'),
  ('b30e6582-4c5c-4c77-aba1-0e40e4ea39cb', 'fat', 14, 'as-fed'),
  ('b30e6582-4c5c-4c77-aba1-0e40e4ea39cb', 'fiber', 2.1, 'as-fed'),
  ('b30e6582-4c5c-4c77-aba1-0e40e4ea39cb', 'ash', 6.2, 'as-fed'),
  ('b30e6582-4c5c-4c77-aba1-0e40e4ea39cb', 'calcium', 1.2, 'as-fed'),
  ('b30e6582-4c5c-4c77-aba1-0e40e4ea39cb', 'phosphorus', 1, 'as-fed'),
  ('b30e6582-4c5c-4c77-aba1-0e40e4ea39cb', 'omega3', 0.46, 'as-fed'),
  ('b30e6582-4c5c-4c77-aba1-0e40e4ea39cb', 'omega6', 2.35, 'as-fed');

-- Eukanuba — Breed Care Teckel Volwassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-teckel-volwassen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = '11b2bbe8-a5bf-4867-97d9-60fead6cfea7';
delete from public.recipe_nutrition where recipe_version_id = '11b2bbe8-a5bf-4867-97d9-60fead6cfea7';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('11b2bbe8-a5bf-4867-97d9-60fead6cfea7', 'protein', 27, 'as-fed'),
  ('11b2bbe8-a5bf-4867-97d9-60fead6cfea7', 'fat', 14, 'as-fed'),
  ('11b2bbe8-a5bf-4867-97d9-60fead6cfea7', 'fiber', 2.1, 'as-fed'),
  ('11b2bbe8-a5bf-4867-97d9-60fead6cfea7', 'ash', 6.2, 'as-fed'),
  ('11b2bbe8-a5bf-4867-97d9-60fead6cfea7', 'calcium', 1.2, 'as-fed'),
  ('11b2bbe8-a5bf-4867-97d9-60fead6cfea7', 'phosphorus', 1, 'as-fed'),
  ('11b2bbe8-a5bf-4867-97d9-60fead6cfea7', 'omega3', 0.46, 'as-fed'),
  ('11b2bbe8-a5bf-4867-97d9-60fead6cfea7', 'omega6', 2.35, 'as-fed');

-- Eukanuba — Breed Care West Highland White Terrier Volwassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-west-highland-white-terrier-volwassen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = 'a1509ca2-3fac-4532-a2e2-54dd0a314c0d';
delete from public.recipe_nutrition where recipe_version_id = 'a1509ca2-3fac-4532-a2e2-54dd0a314c0d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a1509ca2-3fac-4532-a2e2-54dd0a314c0d', 'protein', 27, 'as-fed'),
  ('a1509ca2-3fac-4532-a2e2-54dd0a314c0d', 'fat', 14, 'as-fed'),
  ('a1509ca2-3fac-4532-a2e2-54dd0a314c0d', 'fiber', 2.1, 'as-fed'),
  ('a1509ca2-3fac-4532-a2e2-54dd0a314c0d', 'ash', 6.2, 'as-fed'),
  ('a1509ca2-3fac-4532-a2e2-54dd0a314c0d', 'calcium', 1.2, 'as-fed'),
  ('a1509ca2-3fac-4532-a2e2-54dd0a314c0d', 'phosphorus', 1, 'as-fed'),
  ('a1509ca2-3fac-4532-a2e2-54dd0a314c0d', 'omega3', 0.46, 'as-fed'),
  ('a1509ca2-3fac-4532-a2e2-54dd0a314c0d', 'omega6', 2.35, 'as-fed');

-- Eukanuba — Breed Care Yorkshire Terriër Volwassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/breed-care-yorkshire-terrier-volwassen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = 'df7ef2fe-0edf-40b4-9277-4880d3458cf9';
delete from public.recipe_nutrition where recipe_version_id = 'df7ef2fe-0edf-40b4-9277-4880d3458cf9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('df7ef2fe-0edf-40b4-9277-4880d3458cf9', 'protein', 27, 'as-fed'),
  ('df7ef2fe-0edf-40b4-9277-4880d3458cf9', 'fat', 14, 'as-fed'),
  ('df7ef2fe-0edf-40b4-9277-4880d3458cf9', 'fiber', 2.1, 'as-fed'),
  ('df7ef2fe-0edf-40b4-9277-4880d3458cf9', 'ash', 6.2, 'as-fed'),
  ('df7ef2fe-0edf-40b4-9277-4880d3458cf9', 'calcium', 1.2, 'as-fed'),
  ('df7ef2fe-0edf-40b4-9277-4880d3458cf9', 'phosphorus', 1, 'as-fed'),
  ('df7ef2fe-0edf-40b4-9277-4880d3458cf9', 'omega3', 0.46, 'as-fed'),
  ('df7ef2fe-0edf-40b4-9277-4880d3458cf9', 'omega6', 2.35, 'as-fed');

-- Eukanuba — Grain Free Puppy grote rassen, zeevis (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-puppy-grote-rassen-zeevis',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = '09d1cd97-cbd7-4778-a93f-8a8e1172c483';
delete from public.recipe_nutrition where recipe_version_id = '09d1cd97-cbd7-4778-a93f-8a8e1172c483';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('09d1cd97-cbd7-4778-a93f-8a8e1172c483', 'protein', 26, 'as-fed'),
  ('09d1cd97-cbd7-4778-a93f-8a8e1172c483', 'fat', 15, 'as-fed'),
  ('09d1cd97-cbd7-4778-a93f-8a8e1172c483', 'fiber', 2.4, 'as-fed'),
  ('09d1cd97-cbd7-4778-a93f-8a8e1172c483', 'ash', 6.6, 'as-fed'),
  ('09d1cd97-cbd7-4778-a93f-8a8e1172c483', 'calcium', 1.1, 'as-fed'),
  ('09d1cd97-cbd7-4778-a93f-8a8e1172c483', 'phosphorus', 0.9, 'as-fed'),
  ('09d1cd97-cbd7-4778-a93f-8a8e1172c483', 'omega3', 0.6, 'as-fed'),
  ('09d1cd97-cbd7-4778-a93f-8a8e1172c483', 'omega6', 3.2, 'as-fed');

-- Eukanuba — Grain Free Puppy kleine/middelgrote rassen, zeevis (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-puppy-kleinemiddelgrote-rassen-zeevis',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = '4e27b135-b615-4768-befa-3f044cd8ad06';
delete from public.recipe_nutrition where recipe_version_id = '4e27b135-b615-4768-befa-3f044cd8ad06';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4e27b135-b615-4768-befa-3f044cd8ad06', 'protein', 28.5, 'as-fed'),
  ('4e27b135-b615-4768-befa-3f044cd8ad06', 'fat', 17, 'as-fed'),
  ('4e27b135-b615-4768-befa-3f044cd8ad06', 'fiber', 2.1, 'as-fed'),
  ('4e27b135-b615-4768-befa-3f044cd8ad06', 'ash', 7, 'as-fed'),
  ('4e27b135-b615-4768-befa-3f044cd8ad06', 'calcium', 1.2, 'as-fed'),
  ('4e27b135-b615-4768-befa-3f044cd8ad06', 'phosphorus', 0.9, 'as-fed'),
  ('4e27b135-b615-4768-befa-3f044cd8ad06', 'omega3', 0.7, 'as-fed'),
  ('4e27b135-b615-4768-befa-3f044cd8ad06', 'omega6', 3.6, 'as-fed');

-- Eukanuba — Grain Free Senior grote rassen, zeevis (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-senior-grote-rassen-zeevis',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = '43c11ccc-03ca-4237-b14c-eff4e9852065';
delete from public.recipe_nutrition where recipe_version_id = '43c11ccc-03ca-4237-b14c-eff4e9852065';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('43c11ccc-03ca-4237-b14c-eff4e9852065', 'protein', 25.5, 'as-fed'),
  ('43c11ccc-03ca-4237-b14c-eff4e9852065', 'fat', 12, 'as-fed'),
  ('43c11ccc-03ca-4237-b14c-eff4e9852065', 'fiber', 2.3, 'as-fed'),
  ('43c11ccc-03ca-4237-b14c-eff4e9852065', 'ash', 7, 'as-fed'),
  ('43c11ccc-03ca-4237-b14c-eff4e9852065', 'calcium', 1.1, 'as-fed'),
  ('43c11ccc-03ca-4237-b14c-eff4e9852065', 'phosphorus', 0.9, 'as-fed'),
  ('43c11ccc-03ca-4237-b14c-eff4e9852065', 'omega3', 0.6, 'as-fed'),
  ('43c11ccc-03ca-4237-b14c-eff4e9852065', 'omega6', 3.2, 'as-fed');

-- Eukanuba — Grain Free Senior kleine/middelgrote rassen, zeevis (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-senior-kleinemiddelgrote-rassen-zeevis',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = '938620af-7523-4b70-8b1d-68a6fcc4c61e';
delete from public.recipe_nutrition where recipe_version_id = '938620af-7523-4b70-8b1d-68a6fcc4c61e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('938620af-7523-4b70-8b1d-68a6fcc4c61e', 'protein', 28, 'as-fed'),
  ('938620af-7523-4b70-8b1d-68a6fcc4c61e', 'fat', 14, 'as-fed'),
  ('938620af-7523-4b70-8b1d-68a6fcc4c61e', 'fiber', 2.3, 'as-fed'),
  ('938620af-7523-4b70-8b1d-68a6fcc4c61e', 'ash', 7, 'as-fed'),
  ('938620af-7523-4b70-8b1d-68a6fcc4c61e', 'calcium', 1.1, 'as-fed'),
  ('938620af-7523-4b70-8b1d-68a6fcc4c61e', 'phosphorus', 0.9, 'as-fed'),
  ('938620af-7523-4b70-8b1d-68a6fcc4c61e', 'omega3', 0.7, 'as-fed'),
  ('938620af-7523-4b70-8b1d-68a6fcc4c61e', 'omega6', 3.5, 'as-fed');

-- Eukanuba — Grain Free Volwassen alle rassen, hert (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-volwassen-alle-rassen-hert',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = '8cdcd3b2-69de-40d6-9e66-f2af90d0abb2';
delete from public.recipe_nutrition where recipe_version_id = '8cdcd3b2-69de-40d6-9e66-f2af90d0abb2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8cdcd3b2-69de-40d6-9e66-f2af90d0abb2', 'protein', 26, 'as-fed'),
  ('8cdcd3b2-69de-40d6-9e66-f2af90d0abb2', 'fat', 14, 'as-fed'),
  ('8cdcd3b2-69de-40d6-9e66-f2af90d0abb2', 'fiber', 3, 'as-fed'),
  ('8cdcd3b2-69de-40d6-9e66-f2af90d0abb2', 'ash', 7.2, 'as-fed'),
  ('8cdcd3b2-69de-40d6-9e66-f2af90d0abb2', 'calcium', 1.6, 'as-fed'),
  ('8cdcd3b2-69de-40d6-9e66-f2af90d0abb2', 'phosphorus', 1.1, 'as-fed'),
  ('8cdcd3b2-69de-40d6-9e66-f2af90d0abb2', 'omega3', 0.4, 'as-fed'),
  ('8cdcd3b2-69de-40d6-9e66-f2af90d0abb2', 'omega6', 2.3, 'as-fed');

-- Eukanuba — Grain Free Volwassen grote rassen, kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-volwassen-grote-rassen-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = 'dcc4cced-5eca-4db2-8a5a-8a9ec9cf7c19';
delete from public.recipe_nutrition where recipe_version_id = 'dcc4cced-5eca-4db2-8a5a-8a9ec9cf7c19';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('dcc4cced-5eca-4db2-8a5a-8a9ec9cf7c19', 'protein', 24, 'as-fed'),
  ('dcc4cced-5eca-4db2-8a5a-8a9ec9cf7c19', 'fat', 13, 'as-fed'),
  ('dcc4cced-5eca-4db2-8a5a-8a9ec9cf7c19', 'fiber', 3, 'as-fed'),
  ('dcc4cced-5eca-4db2-8a5a-8a9ec9cf7c19', 'ash', 6.3, 'as-fed'),
  ('dcc4cced-5eca-4db2-8a5a-8a9ec9cf7c19', 'calcium', 1.2, 'as-fed'),
  ('dcc4cced-5eca-4db2-8a5a-8a9ec9cf7c19', 'phosphorus', 0.9, 'as-fed'),
  ('dcc4cced-5eca-4db2-8a5a-8a9ec9cf7c19', 'omega3', 0.4, 'as-fed'),
  ('dcc4cced-5eca-4db2-8a5a-8a9ec9cf7c19', 'omega6', 2, 'as-fed');

-- Eukanuba — Grain Free Volwassen grote rassen, lam (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-volwassen-grote-rassen-lam',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = '9de197ca-f478-43ac-8394-6125d6a31c25';
delete from public.recipe_nutrition where recipe_version_id = '9de197ca-f478-43ac-8394-6125d6a31c25';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9de197ca-f478-43ac-8394-6125d6a31c25', 'protein', 24, 'as-fed'),
  ('9de197ca-f478-43ac-8394-6125d6a31c25', 'fat', 12, 'as-fed'),
  ('9de197ca-f478-43ac-8394-6125d6a31c25', 'fiber', 2.7, 'as-fed'),
  ('9de197ca-f478-43ac-8394-6125d6a31c25', 'ash', 6.2, 'as-fed'),
  ('9de197ca-f478-43ac-8394-6125d6a31c25', 'calcium', 1.2, 'as-fed'),
  ('9de197ca-f478-43ac-8394-6125d6a31c25', 'phosphorus', 1, 'as-fed'),
  ('9de197ca-f478-43ac-8394-6125d6a31c25', 'omega3', 0.4, 'as-fed'),
  ('9de197ca-f478-43ac-8394-6125d6a31c25', 'omega6', 2, 'as-fed');

-- Eukanuba — Grain Free Volwassen grote rassen, zeevis (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-volwassen-grote-rassen-zeevis',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = '4de1452b-01f1-48f5-b922-fb56262a9390';
delete from public.recipe_nutrition where recipe_version_id = '4de1452b-01f1-48f5-b922-fb56262a9390';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4de1452b-01f1-48f5-b922-fb56262a9390', 'protein', 25, 'as-fed'),
  ('4de1452b-01f1-48f5-b922-fb56262a9390', 'fat', 13, 'as-fed'),
  ('4de1452b-01f1-48f5-b922-fb56262a9390', 'fiber', 2.5, 'as-fed'),
  ('4de1452b-01f1-48f5-b922-fb56262a9390', 'ash', 6.7, 'as-fed'),
  ('4de1452b-01f1-48f5-b922-fb56262a9390', 'calcium', 1, 'as-fed'),
  ('4de1452b-01f1-48f5-b922-fb56262a9390', 'phosphorus', 0.8, 'as-fed'),
  ('4de1452b-01f1-48f5-b922-fb56262a9390', 'omega3', 0.6, 'as-fed'),
  ('4de1452b-01f1-48f5-b922-fb56262a9390', 'omega6', 3, 'as-fed');

-- Eukanuba — Grain Free Volwassen kleine/middelgrote rassen, kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-volwassen-kleinemiddelgrote-rassen-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = 'd4804def-c277-414e-8cd5-3c4aa05fe500';
delete from public.recipe_nutrition where recipe_version_id = 'd4804def-c277-414e-8cd5-3c4aa05fe500';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d4804def-c277-414e-8cd5-3c4aa05fe500', 'protein', 27, 'as-fed'),
  ('d4804def-c277-414e-8cd5-3c4aa05fe500', 'fat', 15, 'as-fed'),
  ('d4804def-c277-414e-8cd5-3c4aa05fe500', 'fiber', 2.9, 'as-fed'),
  ('d4804def-c277-414e-8cd5-3c4aa05fe500', 'ash', 7, 'as-fed'),
  ('d4804def-c277-414e-8cd5-3c4aa05fe500', 'calcium', 1.4, 'as-fed'),
  ('d4804def-c277-414e-8cd5-3c4aa05fe500', 'phosphorus', 1, 'as-fed'),
  ('d4804def-c277-414e-8cd5-3c4aa05fe500', 'omega3', 0.4, 'as-fed'),
  ('d4804def-c277-414e-8cd5-3c4aa05fe500', 'omega6', 2.2, 'as-fed');

-- Eukanuba — Grain Free Volwassen kleine/middelgrote rassen, lam (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-volwassen-kleinemiddelgrote-rassen-lam',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = 'b16ed775-b889-4cb0-a7d3-9e84ca9d2a28';
delete from public.recipe_nutrition where recipe_version_id = 'b16ed775-b889-4cb0-a7d3-9e84ca9d2a28';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b16ed775-b889-4cb0-a7d3-9e84ca9d2a28', 'protein', 26, 'as-fed'),
  ('b16ed775-b889-4cb0-a7d3-9e84ca9d2a28', 'fat', 14, 'as-fed'),
  ('b16ed775-b889-4cb0-a7d3-9e84ca9d2a28', 'fiber', 3, 'as-fed'),
  ('b16ed775-b889-4cb0-a7d3-9e84ca9d2a28', 'ash', 6.8, 'as-fed'),
  ('b16ed775-b889-4cb0-a7d3-9e84ca9d2a28', 'calcium', 1.4, 'as-fed'),
  ('b16ed775-b889-4cb0-a7d3-9e84ca9d2a28', 'phosphorus', 1, 'as-fed'),
  ('b16ed775-b889-4cb0-a7d3-9e84ca9d2a28', 'omega3', 0.4, 'as-fed'),
  ('b16ed775-b889-4cb0-a7d3-9e84ca9d2a28', 'omega6', 2.1, 'as-fed');

-- Eukanuba — Grain Free Volwassen kleine/middelgrote rassen, zeevis (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-volwassen-kleinemiddelgrote-rassen-zeevis',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = '47e18f08-5520-43de-9e03-b0e4cb2ebfe2';
delete from public.recipe_nutrition where recipe_version_id = '47e18f08-5520-43de-9e03-b0e4cb2ebfe2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('47e18f08-5520-43de-9e03-b0e4cb2ebfe2', 'protein', 26, 'as-fed'),
  ('47e18f08-5520-43de-9e03-b0e4cb2ebfe2', 'fat', 15, 'as-fed'),
  ('47e18f08-5520-43de-9e03-b0e4cb2ebfe2', 'fiber', 2.4, 'as-fed'),
  ('47e18f08-5520-43de-9e03-b0e4cb2ebfe2', 'ash', 7, 'as-fed'),
  ('47e18f08-5520-43de-9e03-b0e4cb2ebfe2', 'calcium', 1.1, 'as-fed'),
  ('47e18f08-5520-43de-9e03-b0e4cb2ebfe2', 'phosphorus', 0.9, 'as-fed'),
  ('47e18f08-5520-43de-9e03-b0e4cb2ebfe2', 'omega3', 0.7, 'as-fed'),
  ('47e18f08-5520-43de-9e03-b0e4cb2ebfe2', 'omega6', 3.5, 'as-fed');

-- Eukanuba — Junior Grote rassen Verse kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/junior-grote-rassen-verse-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = 'cd0ea8ce-16be-46ff-8fd5-0541b7545e1e';
delete from public.recipe_nutrition where recipe_version_id = 'cd0ea8ce-16be-46ff-8fd5-0541b7545e1e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('cd0ea8ce-16be-46ff-8fd5-0541b7545e1e', 'protein', 25, 'as-fed'),
  ('cd0ea8ce-16be-46ff-8fd5-0541b7545e1e', 'fat', 14, 'as-fed'),
  ('cd0ea8ce-16be-46ff-8fd5-0541b7545e1e', 'fiber', 1.8, 'as-fed'),
  ('cd0ea8ce-16be-46ff-8fd5-0541b7545e1e', 'ash', 6, 'as-fed'),
  ('cd0ea8ce-16be-46ff-8fd5-0541b7545e1e', 'calcium', 1.1, 'as-fed'),
  ('cd0ea8ce-16be-46ff-8fd5-0541b7545e1e', 'phosphorus', 1, 'as-fed'),
  ('cd0ea8ce-16be-46ff-8fd5-0541b7545e1e', 'omega3', 0.38, 'as-fed'),
  ('cd0ea8ce-16be-46ff-8fd5-0541b7545e1e', 'omega6', 2.06, 'as-fed');

-- Eukanuba — Mono-Protein Eend Volwassen Alle rassen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/mono-protein-eend-volwassen-alle-rassen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie op de productpagina; kcal blijft null. Geen omrekening nodig.'
 where id = '7d83e414-fa9b-41c0-8149-e42529ecf7eb';
delete from public.recipe_nutrition where recipe_version_id = '7d83e414-fa9b-41c0-8149-e42529ecf7eb';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7d83e414-fa9b-41c0-8149-e42529ecf7eb', 'protein', 9.5, 'as-fed'),
  ('7d83e414-fa9b-41c0-8149-e42529ecf7eb', 'fat', 7.5, 'as-fed'),
  ('7d83e414-fa9b-41c0-8149-e42529ecf7eb', 'fiber', 1, 'as-fed'),
  ('7d83e414-fa9b-41c0-8149-e42529ecf7eb', 'ash', 2.5, 'as-fed'),
  ('7d83e414-fa9b-41c0-8149-e42529ecf7eb', 'moisture', 78.5, 'as-fed'),
  ('7d83e414-fa9b-41c0-8149-e42529ecf7eb', 'calcium', 0.27, 'as-fed'),
  ('7d83e414-fa9b-41c0-8149-e42529ecf7eb', 'phosphorus', 0.25, 'as-fed'),
  ('7d83e414-fa9b-41c0-8149-e42529ecf7eb', 'omega3', 0.01, 'as-fed'),
  ('7d83e414-fa9b-41c0-8149-e42529ecf7eb', 'omega6', 0.47, 'as-fed');

-- Eukanuba — Mono-Protein Kip Volwassen Alle rassen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/mono-protein-kip-volwassen-alle-rassen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie op de productpagina; kcal blijft null. Geen omrekening nodig.'
 where id = '9870590e-1fa0-4768-a19e-aee639a0d3de';
delete from public.recipe_nutrition where recipe_version_id = '9870590e-1fa0-4768-a19e-aee639a0d3de';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9870590e-1fa0-4768-a19e-aee639a0d3de', 'protein', 10.5, 'as-fed'),
  ('9870590e-1fa0-4768-a19e-aee639a0d3de', 'fat', 6, 'as-fed'),
  ('9870590e-1fa0-4768-a19e-aee639a0d3de', 'fiber', 1, 'as-fed'),
  ('9870590e-1fa0-4768-a19e-aee639a0d3de', 'ash', 2.5, 'as-fed'),
  ('9870590e-1fa0-4768-a19e-aee639a0d3de', 'moisture', 79, 'as-fed'),
  ('9870590e-1fa0-4768-a19e-aee639a0d3de', 'calcium', 0.4, 'as-fed'),
  ('9870590e-1fa0-4768-a19e-aee639a0d3de', 'phosphorus', 0.3, 'as-fed'),
  ('9870590e-1fa0-4768-a19e-aee639a0d3de', 'omega3', 0.06, 'as-fed'),
  ('9870590e-1fa0-4768-a19e-aee639a0d3de', 'omega6', 0.08, 'as-fed');

-- Eukanuba — Mono-Protein Lam Volwassen Alle Rassen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/mono-protein-lam-volwassen-alle-rassen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie op de productpagina; kcal blijft null. Geen omrekening nodig.'
 where id = 'd992129d-ca51-41b2-ae0e-75875727a4e4';
delete from public.recipe_nutrition where recipe_version_id = 'd992129d-ca51-41b2-ae0e-75875727a4e4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d992129d-ca51-41b2-ae0e-75875727a4e4', 'protein', 9.5, 'as-fed'),
  ('d992129d-ca51-41b2-ae0e-75875727a4e4', 'fat', 7.5, 'as-fed'),
  ('d992129d-ca51-41b2-ae0e-75875727a4e4', 'fiber', 1, 'as-fed'),
  ('d992129d-ca51-41b2-ae0e-75875727a4e4', 'ash', 3, 'as-fed'),
  ('d992129d-ca51-41b2-ae0e-75875727a4e4', 'moisture', 78, 'as-fed'),
  ('d992129d-ca51-41b2-ae0e-75875727a4e4', 'calcium', 0.45, 'as-fed'),
  ('d992129d-ca51-41b2-ae0e-75875727a4e4', 'phosphorus', 0.31, 'as-fed'),
  ('d992129d-ca51-41b2-ae0e-75875727a4e4', 'omega3', 0.01, 'as-fed'),
  ('d992129d-ca51-41b2-ae0e-75875727a4e4', 'omega6', 0.01, 'as-fed');

-- Eukanuba — Puppy Grote rassen Lam & Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/puppy-grote-rassen-lam-rijst',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = 'f7c26766-8fb8-4905-bae0-c6fa30dee7a9';
delete from public.recipe_nutrition where recipe_version_id = 'f7c26766-8fb8-4905-bae0-c6fa30dee7a9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f7c26766-8fb8-4905-bae0-c6fa30dee7a9', 'protein', 26, 'as-fed'),
  ('f7c26766-8fb8-4905-bae0-c6fa30dee7a9', 'fat', 14, 'as-fed'),
  ('f7c26766-8fb8-4905-bae0-c6fa30dee7a9', 'fiber', 1.5, 'as-fed'),
  ('f7c26766-8fb8-4905-bae0-c6fa30dee7a9', 'ash', 5.4, 'as-fed'),
  ('f7c26766-8fb8-4905-bae0-c6fa30dee7a9', 'calcium', 1.1, 'as-fed'),
  ('f7c26766-8fb8-4905-bae0-c6fa30dee7a9', 'phosphorus', 0.9, 'as-fed'),
  ('f7c26766-8fb8-4905-bae0-c6fa30dee7a9', 'omega3', 0.39, 'as-fed'),
  ('f7c26766-8fb8-4905-bae0-c6fa30dee7a9', 'omega6', 2.12, 'as-fed');

-- Eukanuba — Puppy Grote rassen Verse kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/puppy-grote-rassen-verse-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = 'b930c6e2-9e28-4791-88d9-23faf99ab070';
delete from public.recipe_nutrition where recipe_version_id = 'b930c6e2-9e28-4791-88d9-23faf99ab070';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b930c6e2-9e28-4791-88d9-23faf99ab070', 'protein', 26.5, 'as-fed'),
  ('b930c6e2-9e28-4791-88d9-23faf99ab070', 'fat', 14.5, 'as-fed'),
  ('b930c6e2-9e28-4791-88d9-23faf99ab070', 'fiber', 2, 'as-fed'),
  ('b930c6e2-9e28-4791-88d9-23faf99ab070', 'ash', 5.3, 'as-fed'),
  ('b930c6e2-9e28-4791-88d9-23faf99ab070', 'calcium', 1.1, 'as-fed'),
  ('b930c6e2-9e28-4791-88d9-23faf99ab070', 'phosphorus', 0.9, 'as-fed'),
  ('b930c6e2-9e28-4791-88d9-23faf99ab070', 'omega3', 0.35, 'as-fed'),
  ('b930c6e2-9e28-4791-88d9-23faf99ab070', 'omega6', 2.29, 'as-fed');

-- Eukanuba — Puppy Kleine rassen Verse kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/puppy-kleine-rassen-verse-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = '6b87af8d-e34d-494d-9465-c2d92cfea09b';
delete from public.recipe_nutrition where recipe_version_id = '6b87af8d-e34d-494d-9465-c2d92cfea09b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6b87af8d-e34d-494d-9465-c2d92cfea09b', 'protein', 33, 'as-fed'),
  ('6b87af8d-e34d-494d-9465-c2d92cfea09b', 'fat', 21, 'as-fed'),
  ('6b87af8d-e34d-494d-9465-c2d92cfea09b', 'fiber', 2, 'as-fed'),
  ('6b87af8d-e34d-494d-9465-c2d92cfea09b', 'ash', 6.6, 'as-fed'),
  ('6b87af8d-e34d-494d-9465-c2d92cfea09b', 'calcium', 1.3, 'as-fed'),
  ('6b87af8d-e34d-494d-9465-c2d92cfea09b', 'phosphorus', 1, 'as-fed'),
  ('6b87af8d-e34d-494d-9465-c2d92cfea09b', 'omega3', 0.48, 'as-fed'),
  ('6b87af8d-e34d-494d-9465-c2d92cfea09b', 'omega6', 3.3, 'as-fed');

-- Eukanuba — Puppy Kleine/Middelgrote rassen Lam & Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/puppy-kleinemiddelgrote-rassen-lam-rijst',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = '6b4bf631-5f5a-4a8f-b289-86071558966a';
delete from public.recipe_nutrition where recipe_version_id = '6b4bf631-5f5a-4a8f-b289-86071558966a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6b4bf631-5f5a-4a8f-b289-86071558966a', 'protein', 28, 'as-fed'),
  ('6b4bf631-5f5a-4a8f-b289-86071558966a', 'fat', 17, 'as-fed'),
  ('6b4bf631-5f5a-4a8f-b289-86071558966a', 'fiber', 1.5, 'as-fed'),
  ('6b4bf631-5f5a-4a8f-b289-86071558966a', 'ash', 6.2, 'as-fed'),
  ('6b4bf631-5f5a-4a8f-b289-86071558966a', 'calcium', 1.3, 'as-fed'),
  ('6b4bf631-5f5a-4a8f-b289-86071558966a', 'phosphorus', 1.1, 'as-fed'),
  ('6b4bf631-5f5a-4a8f-b289-86071558966a', 'omega3', 0.53, 'as-fed'),
  ('6b4bf631-5f5a-4a8f-b289-86071558966a', 'omega6', 2.78, 'as-fed');

-- Eukanuba — Puppy Middelgrote rassen Verse kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/life-care/puppy-middelgrote-rassen-verse-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = '13843dfc-fdfb-4b0c-a83c-5bada4913e4c';
delete from public.recipe_nutrition where recipe_version_id = '13843dfc-fdfb-4b0c-a83c-5bada4913e4c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('13843dfc-fdfb-4b0c-a83c-5bada4913e4c', 'protein', 30, 'as-fed'),
  ('13843dfc-fdfb-4b0c-a83c-5bada4913e4c', 'fat', 18, 'as-fed'),
  ('13843dfc-fdfb-4b0c-a83c-5bada4913e4c', 'fiber', 2, 'as-fed'),
  ('13843dfc-fdfb-4b0c-a83c-5bada4913e4c', 'ash', 6.3, 'as-fed'),
  ('13843dfc-fdfb-4b0c-a83c-5bada4913e4c', 'calcium', 1.3, 'as-fed'),
  ('13843dfc-fdfb-4b0c-a83c-5bada4913e4c', 'phosphorus', 1.1, 'as-fed'),
  ('13843dfc-fdfb-4b0c-a83c-5bada4913e4c', 'omega3', 0.72, 'as-fed'),
  ('13843dfc-fdfb-4b0c-a83c-5bada4913e4c', 'omega6', 3.63, 'as-fed');

-- Eukanuba — Puppy rijk aan forel met zoete aardappelen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/puppy-rijk-aan-forel-met-zoete-aardappelen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie op de productpagina; kcal blijft null. Geen omrekening nodig.'
 where id = '7e502476-1d84-4cb6-927a-a492c8ef9793';
delete from public.recipe_nutrition where recipe_version_id = '7e502476-1d84-4cb6-927a-a492c8ef9793';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7e502476-1d84-4cb6-927a-a492c8ef9793', 'protein', 10.5, 'as-fed'),
  ('7e502476-1d84-4cb6-927a-a492c8ef9793', 'fat', 7.5, 'as-fed'),
  ('7e502476-1d84-4cb6-927a-a492c8ef9793', 'fiber', 1, 'as-fed'),
  ('7e502476-1d84-4cb6-927a-a492c8ef9793', 'ash', 2.5, 'as-fed'),
  ('7e502476-1d84-4cb6-927a-a492c8ef9793', 'moisture', 78, 'as-fed'),
  ('7e502476-1d84-4cb6-927a-a492c8ef9793', 'calcium', 0.38, 'as-fed'),
  ('7e502476-1d84-4cb6-927a-a492c8ef9793', 'phosphorus', 0.29, 'as-fed'),
  ('7e502476-1d84-4cb6-927a-a492c8ef9793', 'omega3', 0.31, 'as-fed'),
  ('7e502476-1d84-4cb6-927a-a492c8ef9793', 'omega6', 0.9, 'as-fed');

-- Eukanuba — Puppy rijk aan kalkoen met wortelen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/puppy-rijk-aan-kalkoen-met-wortelen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie op de productpagina; kcal blijft null. Geen omrekening nodig.'
 where id = '93aea4f9-983a-4581-b02c-a9f361269c34';
delete from public.recipe_nutrition where recipe_version_id = '93aea4f9-983a-4581-b02c-a9f361269c34';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('93aea4f9-983a-4581-b02c-a9f361269c34', 'protein', 10.5, 'as-fed'),
  ('93aea4f9-983a-4581-b02c-a9f361269c34', 'fat', 7.5, 'as-fed'),
  ('93aea4f9-983a-4581-b02c-a9f361269c34', 'fiber', 1, 'as-fed'),
  ('93aea4f9-983a-4581-b02c-a9f361269c34', 'ash', 2.5, 'as-fed'),
  ('93aea4f9-983a-4581-b02c-a9f361269c34', 'moisture', 78, 'as-fed'),
  ('93aea4f9-983a-4581-b02c-a9f361269c34', 'calcium', 0.36, 'as-fed'),
  ('93aea4f9-983a-4581-b02c-a9f361269c34', 'phosphorus', 0.29, 'as-fed'),
  ('93aea4f9-983a-4581-b02c-a9f361269c34', 'omega3', 0.15, 'as-fed'),
  ('93aea4f9-983a-4581-b02c-a9f361269c34', 'omega6', 0.6, 'as-fed');

-- Eukanuba — Puppy rijk aan lam met aardappelen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/puppy-rijk-aan-lam-met-aardappelen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie op de productpagina; kcal blijft null. Geen omrekening nodig.'
 where id = '54a7b6ca-7789-4adc-9140-eeac1fda6585';
delete from public.recipe_nutrition where recipe_version_id = '54a7b6ca-7789-4adc-9140-eeac1fda6585';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('54a7b6ca-7789-4adc-9140-eeac1fda6585', 'protein', 10.5, 'as-fed'),
  ('54a7b6ca-7789-4adc-9140-eeac1fda6585', 'fat', 7.5, 'as-fed'),
  ('54a7b6ca-7789-4adc-9140-eeac1fda6585', 'fiber', 1, 'as-fed'),
  ('54a7b6ca-7789-4adc-9140-eeac1fda6585', 'ash', 2.5, 'as-fed'),
  ('54a7b6ca-7789-4adc-9140-eeac1fda6585', 'moisture', 78, 'as-fed'),
  ('54a7b6ca-7789-4adc-9140-eeac1fda6585', 'calcium', 0.34, 'as-fed'),
  ('54a7b6ca-7789-4adc-9140-eeac1fda6585', 'phosphorus', 0.28, 'as-fed'),
  ('54a7b6ca-7789-4adc-9140-eeac1fda6585', 'omega3', 0.15, 'as-fed'),
  ('54a7b6ca-7789-4adc-9140-eeac1fda6585', 'omega6', 0.6, 'as-fed');

-- Eukanuba — Puppy rijk aan rund met pompoen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/puppy-rijk-aan-rund-met-pompoen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie op de productpagina; kcal blijft null. Geen omrekening nodig.'
 where id = 'cbcbe698-cbda-41ea-a3f1-615c1be12bd6';
delete from public.recipe_nutrition where recipe_version_id = 'cbcbe698-cbda-41ea-a3f1-615c1be12bd6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('cbcbe698-cbda-41ea-a3f1-615c1be12bd6', 'protein', 10.5, 'as-fed'),
  ('cbcbe698-cbda-41ea-a3f1-615c1be12bd6', 'fat', 7.5, 'as-fed'),
  ('cbcbe698-cbda-41ea-a3f1-615c1be12bd6', 'fiber', 1, 'as-fed'),
  ('cbcbe698-cbda-41ea-a3f1-615c1be12bd6', 'ash', 2.5, 'as-fed'),
  ('cbcbe698-cbda-41ea-a3f1-615c1be12bd6', 'moisture', 78, 'as-fed'),
  ('cbcbe698-cbda-41ea-a3f1-615c1be12bd6', 'calcium', 0.35, 'as-fed'),
  ('cbcbe698-cbda-41ea-a3f1-615c1be12bd6', 'phosphorus', 0.29, 'as-fed'),
  ('cbcbe698-cbda-41ea-a3f1-615c1be12bd6', 'omega3', 0.15, 'as-fed'),
  ('cbcbe698-cbda-41ea-a3f1-615c1be12bd6', 'omega6', 0.6, 'as-fed');

-- Eukanuba — Senior Grote rassen Lam & Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/senior-grote-rassen-lam-rijst',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = 'e0afbc5c-031f-4ee5-a6ec-362bc9fcf603';
delete from public.recipe_nutrition where recipe_version_id = 'e0afbc5c-031f-4ee5-a6ec-362bc9fcf603';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e0afbc5c-031f-4ee5-a6ec-362bc9fcf603', 'protein', 24, 'as-fed'),
  ('e0afbc5c-031f-4ee5-a6ec-362bc9fcf603', 'fat', 12, 'as-fed'),
  ('e0afbc5c-031f-4ee5-a6ec-362bc9fcf603', 'fiber', 2.1, 'as-fed'),
  ('e0afbc5c-031f-4ee5-a6ec-362bc9fcf603', 'ash', 7, 'as-fed'),
  ('e0afbc5c-031f-4ee5-a6ec-362bc9fcf603', 'calcium', 1.5, 'as-fed'),
  ('e0afbc5c-031f-4ee5-a6ec-362bc9fcf603', 'phosphorus', 1.1, 'as-fed'),
  ('e0afbc5c-031f-4ee5-a6ec-362bc9fcf603', 'omega3', 0.2, 'as-fed'),
  ('e0afbc5c-031f-4ee5-a6ec-362bc9fcf603', 'omega6', 1.84, 'as-fed');

-- Eukanuba — Senior Grote rassen Verse kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/senior-grote-rassen-verse-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = '7c822047-d455-4516-a989-99b93d798a2a';
delete from public.recipe_nutrition where recipe_version_id = '7c822047-d455-4516-a989-99b93d798a2a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7c822047-d455-4516-a989-99b93d798a2a', 'protein', 26, 'as-fed'),
  ('7c822047-d455-4516-a989-99b93d798a2a', 'fat', 13, 'as-fed'),
  ('7c822047-d455-4516-a989-99b93d798a2a', 'fiber', 2.1, 'as-fed'),
  ('7c822047-d455-4516-a989-99b93d798a2a', 'ash', 6.1, 'as-fed'),
  ('7c822047-d455-4516-a989-99b93d798a2a', 'calcium', 1.3, 'as-fed'),
  ('7c822047-d455-4516-a989-99b93d798a2a', 'phosphorus', 1, 'as-fed'),
  ('7c822047-d455-4516-a989-99b93d798a2a', 'omega3', 0.22, 'as-fed'),
  ('7c822047-d455-4516-a989-99b93d798a2a', 'omega6', 2.18, 'as-fed');

-- Eukanuba — Senior Kleine rassen Verse kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/senior-kleine-rassen-verse-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = 'c9053c42-2b2a-4347-8ab4-fa1ee82e921a';
delete from public.recipe_nutrition where recipe_version_id = 'c9053c42-2b2a-4347-8ab4-fa1ee82e921a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c9053c42-2b2a-4347-8ab4-fa1ee82e921a', 'protein', 31, 'as-fed'),
  ('c9053c42-2b2a-4347-8ab4-fa1ee82e921a', 'fat', 18, 'as-fed'),
  ('c9053c42-2b2a-4347-8ab4-fa1ee82e921a', 'fiber', 2.1, 'as-fed'),
  ('c9053c42-2b2a-4347-8ab4-fa1ee82e921a', 'ash', 6.8, 'as-fed'),
  ('c9053c42-2b2a-4347-8ab4-fa1ee82e921a', 'calcium', 1.5, 'as-fed'),
  ('c9053c42-2b2a-4347-8ab4-fa1ee82e921a', 'phosphorus', 1.2, 'as-fed'),
  ('c9053c42-2b2a-4347-8ab4-fa1ee82e921a', 'omega3', 0.36, 'as-fed'),
  ('c9053c42-2b2a-4347-8ab4-fa1ee82e921a', 'omega6', 3, 'as-fed');

-- Eukanuba — Senior Kleine/Middelgrote rassen Lam & Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/senior-kleinemiddelgrote-rassen-lam-rijst',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = 'a4da28ea-7fea-4b49-a416-4a2c6e5e6796';
delete from public.recipe_nutrition where recipe_version_id = 'a4da28ea-7fea-4b49-a416-4a2c6e5e6796';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a4da28ea-7fea-4b49-a416-4a2c6e5e6796', 'protein', 26, 'as-fed'),
  ('a4da28ea-7fea-4b49-a416-4a2c6e5e6796', 'fat', 14, 'as-fed'),
  ('a4da28ea-7fea-4b49-a416-4a2c6e5e6796', 'fiber', 1.9, 'as-fed'),
  ('a4da28ea-7fea-4b49-a416-4a2c6e5e6796', 'ash', 6.7, 'as-fed'),
  ('a4da28ea-7fea-4b49-a416-4a2c6e5e6796', 'calcium', 1.5, 'as-fed'),
  ('a4da28ea-7fea-4b49-a416-4a2c6e5e6796', 'phosphorus', 1.1, 'as-fed'),
  ('a4da28ea-7fea-4b49-a416-4a2c6e5e6796', 'omega3', 0.22, 'as-fed'),
  ('a4da28ea-7fea-4b49-a416-4a2c6e5e6796', 'omega6', 2.01, 'as-fed');

-- Eukanuba — Senior Middelgrote rassen Verse kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/life-care/senior-middelgrote-rassen-verse-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = 'b2a449a8-cbee-4902-8f58-1f6dd2dd7937';
delete from public.recipe_nutrition where recipe_version_id = 'b2a449a8-cbee-4902-8f58-1f6dd2dd7937';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b2a449a8-cbee-4902-8f58-1f6dd2dd7937', 'protein', 28, 'as-fed'),
  ('b2a449a8-cbee-4902-8f58-1f6dd2dd7937', 'fat', 15, 'as-fed'),
  ('b2a449a8-cbee-4902-8f58-1f6dd2dd7937', 'fiber', 1.9, 'as-fed'),
  ('b2a449a8-cbee-4902-8f58-1f6dd2dd7937', 'ash', 6.3, 'as-fed'),
  ('b2a449a8-cbee-4902-8f58-1f6dd2dd7937', 'calcium', 1.3, 'as-fed'),
  ('b2a449a8-cbee-4902-8f58-1f6dd2dd7937', 'phosphorus', 1.1, 'as-fed'),
  ('b2a449a8-cbee-4902-8f58-1f6dd2dd7937', 'omega3', 0.28, 'as-fed'),
  ('b2a449a8-cbee-4902-8f58-1f6dd2dd7937', 'omega6', 2.51, 'as-fed');

-- Eukanuba — Senior rijk aan forel met zoete aardappelen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/senior-rijk-aan-forel-met-zoete-aardappelen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie op de productpagina; kcal blijft null. Geen omrekening nodig.'
 where id = '902b25b0-5ed4-4b2f-a88c-2e7d7e36bd93';
delete from public.recipe_nutrition where recipe_version_id = '902b25b0-5ed4-4b2f-a88c-2e7d7e36bd93';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('902b25b0-5ed4-4b2f-a88c-2e7d7e36bd93', 'protein', 9, 'as-fed'),
  ('902b25b0-5ed4-4b2f-a88c-2e7d7e36bd93', 'fat', 6, 'as-fed'),
  ('902b25b0-5ed4-4b2f-a88c-2e7d7e36bd93', 'fiber', 1, 'as-fed'),
  ('902b25b0-5ed4-4b2f-a88c-2e7d7e36bd93', 'ash', 2.5, 'as-fed'),
  ('902b25b0-5ed4-4b2f-a88c-2e7d7e36bd93', 'moisture', 81, 'as-fed'),
  ('902b25b0-5ed4-4b2f-a88c-2e7d7e36bd93', 'calcium', 0.36, 'as-fed'),
  ('902b25b0-5ed4-4b2f-a88c-2e7d7e36bd93', 'phosphorus', 0.3, 'as-fed'),
  ('902b25b0-5ed4-4b2f-a88c-2e7d7e36bd93', 'omega3', 0.4, 'as-fed'),
  ('902b25b0-5ed4-4b2f-a88c-2e7d7e36bd93', 'omega6', 0.9, 'as-fed');

-- Eukanuba — Senior rijk aan kalkoen met wortelen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/senior-rijk-aan-kalkoen-met-wortelen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie op de productpagina; kcal blijft null. Geen omrekening nodig.'
 where id = '33c1fa58-3519-478e-b4aa-11c43045cab7';
delete from public.recipe_nutrition where recipe_version_id = '33c1fa58-3519-478e-b4aa-11c43045cab7';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('33c1fa58-3519-478e-b4aa-11c43045cab7', 'protein', 9, 'as-fed'),
  ('33c1fa58-3519-478e-b4aa-11c43045cab7', 'fat', 6, 'as-fed'),
  ('33c1fa58-3519-478e-b4aa-11c43045cab7', 'fiber', 1, 'as-fed'),
  ('33c1fa58-3519-478e-b4aa-11c43045cab7', 'ash', 2.5, 'as-fed'),
  ('33c1fa58-3519-478e-b4aa-11c43045cab7', 'moisture', 81, 'as-fed'),
  ('33c1fa58-3519-478e-b4aa-11c43045cab7', 'calcium', 0.35, 'as-fed'),
  ('33c1fa58-3519-478e-b4aa-11c43045cab7', 'phosphorus', 0.29, 'as-fed'),
  ('33c1fa58-3519-478e-b4aa-11c43045cab7', 'omega3', 0.1, 'as-fed'),
  ('33c1fa58-3519-478e-b4aa-11c43045cab7', 'omega6', 0.5, 'as-fed');

-- Eukanuba — Senior rijk aan lam met aardappelen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/senior-rijk-aan-lam-met-aardappelen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie op de productpagina; kcal blijft null. Geen omrekening nodig.'
 where id = '4a8a63c9-e1ff-42ee-ab09-14301906988f';
delete from public.recipe_nutrition where recipe_version_id = '4a8a63c9-e1ff-42ee-ab09-14301906988f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4a8a63c9-e1ff-42ee-ab09-14301906988f', 'protein', 9, 'as-fed'),
  ('4a8a63c9-e1ff-42ee-ab09-14301906988f', 'fat', 6, 'as-fed'),
  ('4a8a63c9-e1ff-42ee-ab09-14301906988f', 'fiber', 1, 'as-fed'),
  ('4a8a63c9-e1ff-42ee-ab09-14301906988f', 'ash', 2.5, 'as-fed'),
  ('4a8a63c9-e1ff-42ee-ab09-14301906988f', 'moisture', 81, 'as-fed'),
  ('4a8a63c9-e1ff-42ee-ab09-14301906988f', 'calcium', 0.35, 'as-fed'),
  ('4a8a63c9-e1ff-42ee-ab09-14301906988f', 'phosphorus', 0.28, 'as-fed'),
  ('4a8a63c9-e1ff-42ee-ab09-14301906988f', 'omega3', 0.1, 'as-fed'),
  ('4a8a63c9-e1ff-42ee-ab09-14301906988f', 'omega6', 0.5, 'as-fed');

-- Eukanuba — Senior rijk aan rund met pompoen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/senior-rijk-aan-rund-met-pompoen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie op de productpagina; kcal blijft null. Geen omrekening nodig.'
 where id = '4427d556-a782-4a6f-b669-2fab7d0ae4c4';
delete from public.recipe_nutrition where recipe_version_id = '4427d556-a782-4a6f-b669-2fab7d0ae4c4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4427d556-a782-4a6f-b669-2fab7d0ae4c4', 'protein', 9, 'as-fed'),
  ('4427d556-a782-4a6f-b669-2fab7d0ae4c4', 'fat', 6, 'as-fed'),
  ('4427d556-a782-4a6f-b669-2fab7d0ae4c4', 'fiber', 1, 'as-fed'),
  ('4427d556-a782-4a6f-b669-2fab7d0ae4c4', 'ash', 2.5, 'as-fed'),
  ('4427d556-a782-4a6f-b669-2fab7d0ae4c4', 'moisture', 81, 'as-fed'),
  ('4427d556-a782-4a6f-b669-2fab7d0ae4c4', 'calcium', 0.34, 'as-fed'),
  ('4427d556-a782-4a6f-b669-2fab7d0ae4c4', 'phosphorus', 0.28, 'as-fed'),
  ('4427d556-a782-4a6f-b669-2fab7d0ae4c4', 'omega3', 0.1, 'as-fed'),
  ('4427d556-a782-4a6f-b669-2fab7d0ae4c4', 'omega6', 0.5, 'as-fed');

-- Eukanuba — Sensitive Digestion Puppy Alle rassen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/sensitive-digestion-puppy-alle-rassen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie op de productpagina; kcal blijft null. Geen omrekening nodig.'
 where id = '5362e028-163c-4c18-a397-08dbbdc843ca';
delete from public.recipe_nutrition where recipe_version_id = '5362e028-163c-4c18-a397-08dbbdc843ca';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5362e028-163c-4c18-a397-08dbbdc843ca', 'protein', 10, 'as-fed'),
  ('5362e028-163c-4c18-a397-08dbbdc843ca', 'fat', 6.5, 'as-fed'),
  ('5362e028-163c-4c18-a397-08dbbdc843ca', 'fiber', 1, 'as-fed'),
  ('5362e028-163c-4c18-a397-08dbbdc843ca', 'ash', 2.5, 'as-fed'),
  ('5362e028-163c-4c18-a397-08dbbdc843ca', 'moisture', 78, 'as-fed'),
  ('5362e028-163c-4c18-a397-08dbbdc843ca', 'calcium', 0.31, 'as-fed'),
  ('5362e028-163c-4c18-a397-08dbbdc843ca', 'phosphorus', 0.25, 'as-fed'),
  ('5362e028-163c-4c18-a397-08dbbdc843ca', 'omega3', 0.3, 'as-fed'),
  ('5362e028-163c-4c18-a397-08dbbdc843ca', 'omega6', 0.9, 'as-fed');

-- Eukanuba — Sensitive Digestion Volwassen Alle rassen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/sensitive-digestion-volwassen-alle-rassen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie op de productpagina; kcal blijft null. Geen omrekening nodig.'
 where id = 'e6aeafc7-2637-40e2-a54d-3a3522f8af9a';
delete from public.recipe_nutrition where recipe_version_id = 'e6aeafc7-2637-40e2-a54d-3a3522f8af9a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e6aeafc7-2637-40e2-a54d-3a3522f8af9a', 'protein', 10, 'as-fed'),
  ('e6aeafc7-2637-40e2-a54d-3a3522f8af9a', 'fat', 5.5, 'as-fed'),
  ('e6aeafc7-2637-40e2-a54d-3a3522f8af9a', 'fiber', 1, 'as-fed'),
  ('e6aeafc7-2637-40e2-a54d-3a3522f8af9a', 'ash', 2.5, 'as-fed'),
  ('e6aeafc7-2637-40e2-a54d-3a3522f8af9a', 'moisture', 79, 'as-fed'),
  ('e6aeafc7-2637-40e2-a54d-3a3522f8af9a', 'calcium', 0.4, 'as-fed'),
  ('e6aeafc7-2637-40e2-a54d-3a3522f8af9a', 'phosphorus', 0.28, 'as-fed'),
  ('e6aeafc7-2637-40e2-a54d-3a3522f8af9a', 'omega3', 0.1, 'as-fed'),
  ('e6aeafc7-2637-40e2-a54d-3a3522f8af9a', 'omega6', 0.5, 'as-fed');

-- Eukanuba — Special Care Mono-Protein Volwassen Alle rassen Eend (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/special-care-mono-protein-volwassen-alle-rassen-eend',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = 'af85b2fb-80d6-4427-a150-51c1fa817662';
delete from public.recipe_nutrition where recipe_version_id = 'af85b2fb-80d6-4427-a150-51c1fa817662';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('af85b2fb-80d6-4427-a150-51c1fa817662', 'protein', 24, 'as-fed'),
  ('af85b2fb-80d6-4427-a150-51c1fa817662', 'fat', 12, 'as-fed'),
  ('af85b2fb-80d6-4427-a150-51c1fa817662', 'fiber', 2.7, 'as-fed'),
  ('af85b2fb-80d6-4427-a150-51c1fa817662', 'ash', 7.2, 'as-fed'),
  ('af85b2fb-80d6-4427-a150-51c1fa817662', 'calcium', 1.4, 'as-fed'),
  ('af85b2fb-80d6-4427-a150-51c1fa817662', 'phosphorus', 0.9, 'as-fed'),
  ('af85b2fb-80d6-4427-a150-51c1fa817662', 'omega3', 0.9, 'as-fed'),
  ('af85b2fb-80d6-4427-a150-51c1fa817662', 'omega6', 2.7, 'as-fed');

-- Eukanuba — Special Care Mono-Protein Volwassen Alle rassen Lam (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/special-care-mono-protein-volwassen-alle-rassen-lam',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = 'c20df720-44dc-42ce-8261-bb8cc3e9cb38';
delete from public.recipe_nutrition where recipe_version_id = 'c20df720-44dc-42ce-8261-bb8cc3e9cb38';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c20df720-44dc-42ce-8261-bb8cc3e9cb38', 'protein', 23.5, 'as-fed'),
  ('c20df720-44dc-42ce-8261-bb8cc3e9cb38', 'fat', 12, 'as-fed'),
  ('c20df720-44dc-42ce-8261-bb8cc3e9cb38', 'fiber', 2.9, 'as-fed'),
  ('c20df720-44dc-42ce-8261-bb8cc3e9cb38', 'ash', 8.3, 'as-fed'),
  ('c20df720-44dc-42ce-8261-bb8cc3e9cb38', 'calcium', 1.7, 'as-fed'),
  ('c20df720-44dc-42ce-8261-bb8cc3e9cb38', 'phosphorus', 1, 'as-fed'),
  ('c20df720-44dc-42ce-8261-bb8cc3e9cb38', 'omega3', 0.4, 'as-fed'),
  ('c20df720-44dc-42ce-8261-bb8cc3e9cb38', 'omega6', 1.2, 'as-fed');

-- Eukanuba — Special Care Mono-Protein Volwassen Alle rassen Zalm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/special-care-mono-protein-volwassen-alle-rassen-zalm',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = 'b5b11a41-94c4-435e-b751-c76da5859e1a';
delete from public.recipe_nutrition where recipe_version_id = 'b5b11a41-94c4-435e-b751-c76da5859e1a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b5b11a41-94c4-435e-b751-c76da5859e1a', 'protein', 24, 'as-fed'),
  ('b5b11a41-94c4-435e-b751-c76da5859e1a', 'fat', 12, 'as-fed'),
  ('b5b11a41-94c4-435e-b751-c76da5859e1a', 'fiber', 2.6, 'as-fed'),
  ('b5b11a41-94c4-435e-b751-c76da5859e1a', 'ash', 6.9, 'as-fed'),
  ('b5b11a41-94c4-435e-b751-c76da5859e1a', 'calcium', 1.2, 'as-fed'),
  ('b5b11a41-94c4-435e-b751-c76da5859e1a', 'phosphorus', 0.9, 'as-fed'),
  ('b5b11a41-94c4-435e-b751-c76da5859e1a', 'omega3', 1.2, 'as-fed'),
  ('b5b11a41-94c4-435e-b751-c76da5859e1a', 'omega6', 3.6, 'as-fed');

-- Eukanuba — Special Care Overweight Volwassen Alle rassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/special-care-overweight-volwassen-alle-rassen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = '55600061-eac7-44f1-8eaa-9376ee5deb44';
delete from public.recipe_nutrition where recipe_version_id = '55600061-eac7-44f1-8eaa-9376ee5deb44';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('55600061-eac7-44f1-8eaa-9376ee5deb44', 'protein', 22, 'as-fed'),
  ('55600061-eac7-44f1-8eaa-9376ee5deb44', 'fat', 7.5, 'as-fed'),
  ('55600061-eac7-44f1-8eaa-9376ee5deb44', 'fiber', 4, 'as-fed'),
  ('55600061-eac7-44f1-8eaa-9376ee5deb44', 'ash', 7, 'as-fed'),
  ('55600061-eac7-44f1-8eaa-9376ee5deb44', 'calcium', 1.3, 'as-fed'),
  ('55600061-eac7-44f1-8eaa-9376ee5deb44', 'phosphorus', 0.9, 'as-fed'),
  ('55600061-eac7-44f1-8eaa-9376ee5deb44', 'omega3', 0.3, 'as-fed'),
  ('55600061-eac7-44f1-8eaa-9376ee5deb44', 'omega6', 1.7, 'as-fed');

-- Eukanuba — Special Care Sensitive Digestion Puppy Alle rassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/special-care-sensitive-digestion-puppy-alle-rassen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = 'cbc40f8f-7144-446a-bab3-c2ddcba817db';
delete from public.recipe_nutrition where recipe_version_id = 'cbc40f8f-7144-446a-bab3-c2ddcba817db';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('cbc40f8f-7144-446a-bab3-c2ddcba817db', 'protein', 31, 'as-fed'),
  ('cbc40f8f-7144-446a-bab3-c2ddcba817db', 'fat', 20.8, 'as-fed'),
  ('cbc40f8f-7144-446a-bab3-c2ddcba817db', 'fiber', 1.9, 'as-fed'),
  ('cbc40f8f-7144-446a-bab3-c2ddcba817db', 'ash', 7, 'as-fed'),
  ('cbc40f8f-7144-446a-bab3-c2ddcba817db', 'calcium', 1.2, 'as-fed'),
  ('cbc40f8f-7144-446a-bab3-c2ddcba817db', 'phosphorus', 1, 'as-fed'),
  ('cbc40f8f-7144-446a-bab3-c2ddcba817db', 'omega3', 1.2, 'as-fed'),
  ('cbc40f8f-7144-446a-bab3-c2ddcba817db', 'omega6', 3.8, 'as-fed');

-- Eukanuba — Special Care Sensitive Digestion Volwassen Alle rassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/special-care-sensitive-digestion-volwassen-alle-rassen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = '3aa53cfa-427d-4ea5-b584-ac726d146800';
delete from public.recipe_nutrition where recipe_version_id = '3aa53cfa-427d-4ea5-b584-ac726d146800';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3aa53cfa-427d-4ea5-b584-ac726d146800', 'protein', 22.5, 'as-fed'),
  ('3aa53cfa-427d-4ea5-b584-ac726d146800', 'fat', 12.5, 'as-fed'),
  ('3aa53cfa-427d-4ea5-b584-ac726d146800', 'fiber', 1.8, 'as-fed'),
  ('3aa53cfa-427d-4ea5-b584-ac726d146800', 'ash', 7, 'as-fed'),
  ('3aa53cfa-427d-4ea5-b584-ac726d146800', 'calcium', 1.4, 'as-fed'),
  ('3aa53cfa-427d-4ea5-b584-ac726d146800', 'phosphorus', 1.1, 'as-fed'),
  ('3aa53cfa-427d-4ea5-b584-ac726d146800', 'omega3', 0.4, 'as-fed'),
  ('3aa53cfa-427d-4ea5-b584-ac726d146800', 'omega6', 2.2, 'as-fed');

-- Eukanuba — Special Care Sensitive Joints Volwassen Alle rassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/special-care-sensitive-joints-volwassen-alle-rassen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = '8077371b-baec-4ec3-9b3c-4cc79bfc7f6d';
delete from public.recipe_nutrition where recipe_version_id = '8077371b-baec-4ec3-9b3c-4cc79bfc7f6d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8077371b-baec-4ec3-9b3c-4cc79bfc7f6d', 'protein', 24, 'as-fed'),
  ('8077371b-baec-4ec3-9b3c-4cc79bfc7f6d', 'fat', 13, 'as-fed'),
  ('8077371b-baec-4ec3-9b3c-4cc79bfc7f6d', 'fiber', 2.5, 'as-fed'),
  ('8077371b-baec-4ec3-9b3c-4cc79bfc7f6d', 'ash', 6.7, 'as-fed'),
  ('8077371b-baec-4ec3-9b3c-4cc79bfc7f6d', 'calcium', 1.4, 'as-fed'),
  ('8077371b-baec-4ec3-9b3c-4cc79bfc7f6d', 'phosphorus', 1.1, 'as-fed'),
  ('8077371b-baec-4ec3-9b3c-4cc79bfc7f6d', 'omega3', 0.4, 'as-fed'),
  ('8077371b-baec-4ec3-9b3c-4cc79bfc7f6d', 'omega6', 2.1, 'as-fed');

-- Eukanuba — Special Care Weight Control Volwassen Grote rassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/special-care-weight-control-volwassen-grote-rassen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = 'd9cf9f34-2055-44df-8a60-f24266dcf349';
delete from public.recipe_nutrition where recipe_version_id = 'd9cf9f34-2055-44df-8a60-f24266dcf349';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d9cf9f34-2055-44df-8a60-f24266dcf349', 'protein', 21, 'as-fed'),
  ('d9cf9f34-2055-44df-8a60-f24266dcf349', 'fat', 8.5, 'as-fed'),
  ('d9cf9f34-2055-44df-8a60-f24266dcf349', 'fiber', 2.7, 'as-fed'),
  ('d9cf9f34-2055-44df-8a60-f24266dcf349', 'ash', 6, 'as-fed'),
  ('d9cf9f34-2055-44df-8a60-f24266dcf349', 'calcium', 1.1, 'as-fed'),
  ('d9cf9f34-2055-44df-8a60-f24266dcf349', 'phosphorus', 0.9, 'as-fed'),
  ('d9cf9f34-2055-44df-8a60-f24266dcf349', 'omega3', 0.3, 'as-fed'),
  ('d9cf9f34-2055-44df-8a60-f24266dcf349', 'omega6', 2.3, 'as-fed');

-- Eukanuba — Special Care Weight Control Volwassen Kleine/Middelgrote rassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/special-care-weight-control-volwassen-kleinemiddelgrote-rassen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = '1b86b688-6f54-403c-805e-0469bf5f2add';
delete from public.recipe_nutrition where recipe_version_id = '1b86b688-6f54-403c-805e-0469bf5f2add';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('1b86b688-6f54-403c-805e-0469bf5f2add', 'protein', 21, 'as-fed'),
  ('1b86b688-6f54-403c-805e-0469bf5f2add', 'fat', 9, 'as-fed'),
  ('1b86b688-6f54-403c-805e-0469bf5f2add', 'fiber', 2.7, 'as-fed'),
  ('1b86b688-6f54-403c-805e-0469bf5f2add', 'ash', 6, 'as-fed'),
  ('1b86b688-6f54-403c-805e-0469bf5f2add', 'calcium', 1.1, 'as-fed'),
  ('1b86b688-6f54-403c-805e-0469bf5f2add', 'phosphorus', 0.9, 'as-fed'),
  ('1b86b688-6f54-403c-805e-0469bf5f2add', 'omega3', 0.3, 'as-fed'),
  ('1b86b688-6f54-403c-805e-0469bf5f2add', 'omega6', 2.3, 'as-fed');

-- Eukanuba — Special Care Working & Endurance Volwassen Alle rassen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/special-care-working-endurance-volwassen-alle-rassen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = '80fe12ce-aee5-4e27-8ffb-7ddebb0427c7';
delete from public.recipe_nutrition where recipe_version_id = '80fe12ce-aee5-4e27-8ffb-7ddebb0427c7';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('80fe12ce-aee5-4e27-8ffb-7ddebb0427c7', 'protein', 30, 'as-fed'),
  ('80fe12ce-aee5-4e27-8ffb-7ddebb0427c7', 'fat', 20, 'as-fed'),
  ('80fe12ce-aee5-4e27-8ffb-7ddebb0427c7', 'fiber', 1.9, 'as-fed'),
  ('80fe12ce-aee5-4e27-8ffb-7ddebb0427c7', 'ash', 6.5, 'as-fed'),
  ('80fe12ce-aee5-4e27-8ffb-7ddebb0427c7', 'calcium', 1.4, 'as-fed'),
  ('80fe12ce-aee5-4e27-8ffb-7ddebb0427c7', 'phosphorus', 1.1, 'as-fed'),
  ('80fe12ce-aee5-4e27-8ffb-7ddebb0427c7', 'omega3', 0.7, 'as-fed'),
  ('80fe12ce-aee5-4e27-8ffb-7ddebb0427c7', 'omega6', 3.7, 'as-fed');

-- Eukanuba — Veterinary Diets Dermatosis FP (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/speciaalvoer/diergeneeskundige-voeding/veterinary-diets-dermatosis-fp',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = '80d49d0b-6df7-4062-be5a-923ffce2e1f0';
delete from public.recipe_nutrition where recipe_version_id = '80d49d0b-6df7-4062-be5a-923ffce2e1f0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('80d49d0b-6df7-4062-be5a-923ffce2e1f0', 'protein', 22, 'as-fed'),
  ('80d49d0b-6df7-4062-be5a-923ffce2e1f0', 'fat', 15, 'as-fed'),
  ('80d49d0b-6df7-4062-be5a-923ffce2e1f0', 'fiber', 1.7, 'as-fed'),
  ('80d49d0b-6df7-4062-be5a-923ffce2e1f0', 'ash', 6.5, 'as-fed'),
  ('80d49d0b-6df7-4062-be5a-923ffce2e1f0', 'calcium', 1.1, 'as-fed'),
  ('80d49d0b-6df7-4062-be5a-923ffce2e1f0', 'phosphorus', 0.78, 'as-fed'),
  ('80d49d0b-6df7-4062-be5a-923ffce2e1f0', 'omega3', 0.78, 'as-fed'),
  ('80d49d0b-6df7-4062-be5a-923ffce2e1f0', 'omega6', 2.83, 'as-fed');

-- Eukanuba — Veterinary Diets Intestinal (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/speciaalvoer/diergeneeskundige-voeding/veterinary-diets-intestinal',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3644 kcal/kg volgens NRC 2006, omgerekend naar 364,4 kcal/100 g (delen door 10). Vocht wordt niet vermeld en blijft null.'
 where id = '4b2b30bf-15b1-457b-bea5-b81c18d366a9';
delete from public.recipe_nutrition where recipe_version_id = '4b2b30bf-15b1-457b-bea5-b81c18d366a9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4b2b30bf-15b1-457b-bea5-b81c18d366a9', 'protein', 23, 'as-fed'),
  ('4b2b30bf-15b1-457b-bea5-b81c18d366a9', 'fat', 10, 'as-fed'),
  ('4b2b30bf-15b1-457b-bea5-b81c18d366a9', 'fiber', 1.4, 'as-fed'),
  ('4b2b30bf-15b1-457b-bea5-b81c18d366a9', 'ash', 7.5, 'as-fed'),
  ('4b2b30bf-15b1-457b-bea5-b81c18d366a9', 'kcal', 364.4, 'as-fed'),
  ('4b2b30bf-15b1-457b-bea5-b81c18d366a9', 'calcium', 1.4, 'as-fed'),
  ('4b2b30bf-15b1-457b-bea5-b81c18d366a9', 'phosphorus', 1, 'as-fed'),
  ('4b2b30bf-15b1-457b-bea5-b81c18d366a9', 'omega3', 0.23, 'as-fed'),
  ('4b2b30bf-15b1-457b-bea5-b81c18d366a9', 'omega6', 1.75, 'as-fed');

-- Eukanuba — Veterinary Diets Joint Mobility (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/speciaalvoer/diergeneeskundige-voeding/veterinary-diets-joint-mobility',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3669 kcal/kg volgens NRC 2006a, omgerekend naar 366,9 kcal/100 g (delen door 10). Vocht wordt niet vermeld en blijft null.'
 where id = '4d93e75c-0c86-4f2c-bc2e-00915dd5fc6c';
delete from public.recipe_nutrition where recipe_version_id = '4d93e75c-0c86-4f2c-bc2e-00915dd5fc6c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4d93e75c-0c86-4f2c-bc2e-00915dd5fc6c', 'protein', 27, 'as-fed'),
  ('4d93e75c-0c86-4f2c-bc2e-00915dd5fc6c', 'fat', 11, 'as-fed'),
  ('4d93e75c-0c86-4f2c-bc2e-00915dd5fc6c', 'fiber', 2.2, 'as-fed'),
  ('4d93e75c-0c86-4f2c-bc2e-00915dd5fc6c', 'ash', 7, 'as-fed'),
  ('4d93e75c-0c86-4f2c-bc2e-00915dd5fc6c', 'kcal', 366.9, 'as-fed'),
  ('4d93e75c-0c86-4f2c-bc2e-00915dd5fc6c', 'calcium', 1.5, 'as-fed'),
  ('4d93e75c-0c86-4f2c-bc2e-00915dd5fc6c', 'phosphorus', 1.2, 'as-fed'),
  ('4d93e75c-0c86-4f2c-bc2e-00915dd5fc6c', 'omega3', 0.27, 'as-fed'),
  ('4d93e75c-0c86-4f2c-bc2e-00915dd5fc6c', 'omega6', 2.21, 'as-fed');

-- Eukanuba — Veterinary Diets Restricted Calorie (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/speciaalvoer/diergeneeskundige-voeding/veterinary-diets-restricted-calorie',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Metaboliseerbare energie 3131 kcal/kg volgens NRC 2006a, omgerekend naar 313,1 kcal/100 g (delen door 10). Vocht wordt niet vermeld en blijft null.'
 where id = '4ec60aa5-8839-40c3-8084-386f2cdba3c4';
delete from public.recipe_nutrition where recipe_version_id = '4ec60aa5-8839-40c3-8084-386f2cdba3c4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4ec60aa5-8839-40c3-8084-386f2cdba3c4', 'protein', 28, 'as-fed'),
  ('4ec60aa5-8839-40c3-8084-386f2cdba3c4', 'fat', 7.5, 'as-fed'),
  ('4ec60aa5-8839-40c3-8084-386f2cdba3c4', 'fiber', 7.5, 'as-fed'),
  ('4ec60aa5-8839-40c3-8084-386f2cdba3c4', 'ash', 7.7, 'as-fed'),
  ('4ec60aa5-8839-40c3-8084-386f2cdba3c4', 'kcal', 313.1, 'as-fed'),
  ('4ec60aa5-8839-40c3-8084-386f2cdba3c4', 'calcium', 1.7, 'as-fed'),
  ('4ec60aa5-8839-40c3-8084-386f2cdba3c4', 'phosphorus', 1.2, 'as-fed'),
  ('4ec60aa5-8839-40c3-8084-386f2cdba3c4', 'omega3', 0.22, 'as-fed'),
  ('4ec60aa5-8839-40c3-8084-386f2cdba3c4', 'omega6', 1.6, 'as-fed');

-- Eukanuba — Volwassen Grote rassen Lam & Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/volwassen-grote-rassen-lam-rijst',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = '764d139e-61aa-4e9e-84d0-c59efe99d77a';
delete from public.recipe_nutrition where recipe_version_id = '764d139e-61aa-4e9e-84d0-c59efe99d77a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('764d139e-61aa-4e9e-84d0-c59efe99d77a', 'protein', 23, 'as-fed'),
  ('764d139e-61aa-4e9e-84d0-c59efe99d77a', 'fat', 13, 'as-fed'),
  ('764d139e-61aa-4e9e-84d0-c59efe99d77a', 'fiber', 2.1, 'as-fed'),
  ('764d139e-61aa-4e9e-84d0-c59efe99d77a', 'ash', 6.6, 'as-fed'),
  ('764d139e-61aa-4e9e-84d0-c59efe99d77a', 'calcium', 1.3, 'as-fed'),
  ('764d139e-61aa-4e9e-84d0-c59efe99d77a', 'phosphorus', 1, 'as-fed'),
  ('764d139e-61aa-4e9e-84d0-c59efe99d77a', 'omega3', 0.21, 'as-fed'),
  ('764d139e-61aa-4e9e-84d0-c59efe99d77a', 'omega6', 2.07, 'as-fed');

-- Eukanuba — Volwassen Grote rassen Verse kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/life-care/volwassen-grote-rassen-verse-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = '9f787887-0805-4cfb-a438-5595c4438ade';
delete from public.recipe_nutrition where recipe_version_id = '9f787887-0805-4cfb-a438-5595c4438ade';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9f787887-0805-4cfb-a438-5595c4438ade', 'protein', 24, 'as-fed'),
  ('9f787887-0805-4cfb-a438-5595c4438ade', 'fat', 13, 'as-fed'),
  ('9f787887-0805-4cfb-a438-5595c4438ade', 'fiber', 2.4, 'as-fed'),
  ('9f787887-0805-4cfb-a438-5595c4438ade', 'ash', 6.2, 'as-fed'),
  ('9f787887-0805-4cfb-a438-5595c4438ade', 'calcium', 1.2, 'as-fed'),
  ('9f787887-0805-4cfb-a438-5595c4438ade', 'phosphorus', 1, 'as-fed'),
  ('9f787887-0805-4cfb-a438-5595c4438ade', 'omega3', 0.29, 'as-fed'),
  ('9f787887-0805-4cfb-a438-5595c4438ade', 'omega6', 2.11, 'as-fed');

-- Eukanuba — Volwassen Grote rassen Zalm & Gerst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/volwassen-grote-rassen-zalm-gerst',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = 'c3bd36a2-3ccd-4c16-a898-ccd5ad972026';
delete from public.recipe_nutrition where recipe_version_id = 'c3bd36a2-3ccd-4c16-a898-ccd5ad972026';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c3bd36a2-3ccd-4c16-a898-ccd5ad972026', 'protein', 23, 'as-fed'),
  ('c3bd36a2-3ccd-4c16-a898-ccd5ad972026', 'fat', 13, 'as-fed'),
  ('c3bd36a2-3ccd-4c16-a898-ccd5ad972026', 'fiber', 2.5, 'as-fed'),
  ('c3bd36a2-3ccd-4c16-a898-ccd5ad972026', 'ash', 6.9, 'as-fed'),
  ('c3bd36a2-3ccd-4c16-a898-ccd5ad972026', 'calcium', 1.3, 'as-fed'),
  ('c3bd36a2-3ccd-4c16-a898-ccd5ad972026', 'phosphorus', 1, 'as-fed'),
  ('c3bd36a2-3ccd-4c16-a898-ccd5ad972026', 'omega3', 0.62, 'as-fed'),
  ('c3bd36a2-3ccd-4c16-a898-ccd5ad972026', 'omega6', 3.23, 'as-fed');

-- Eukanuba — Volwassen Kleine/Middelgrote rassen Lam & Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/volwassen-kleinemiddelgrote-rassen-lam-rijst',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie en geen vocht op de productpagina; deze waarden blijven null. Geen omrekening nodig.'
 where id = '86322fc6-8781-45f8-9672-a02e87bef359';
delete from public.recipe_nutrition where recipe_version_id = '86322fc6-8781-45f8-9672-a02e87bef359';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('86322fc6-8781-45f8-9672-a02e87bef359', 'protein', 25, 'as-fed'),
  ('86322fc6-8781-45f8-9672-a02e87bef359', 'fat', 15, 'as-fed'),
  ('86322fc6-8781-45f8-9672-a02e87bef359', 'fiber', 1.9, 'as-fed'),
  ('86322fc6-8781-45f8-9672-a02e87bef359', 'ash', 6.4, 'as-fed'),
  ('86322fc6-8781-45f8-9672-a02e87bef359', 'calcium', 1.4, 'as-fed'),
  ('86322fc6-8781-45f8-9672-a02e87bef359', 'phosphorus', 1.1, 'as-fed'),
  ('86322fc6-8781-45f8-9672-a02e87bef359', 'omega3', 0.33, 'as-fed'),
  ('86322fc6-8781-45f8-9672-a02e87bef359', 'omega6', 2.15, 'as-fed');

-- Eukanuba — Working & Endurance voor volwassen honden van alle rassen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/working-endurance-voor-volwassen-honden-van-alle-rassen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Fabrikant vermeldt geen energie op de productpagina; kcal blijft null. Geen omrekening nodig.'
 where id = 'd8c5ee43-80d4-4cb5-b91c-5ab5303d86d8';
delete from public.recipe_nutrition where recipe_version_id = 'd8c5ee43-80d4-4cb5-b91c-5ab5303d86d8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('d8c5ee43-80d4-4cb5-b91c-5ab5303d86d8', 'protein', 10, 'as-fed'),
  ('d8c5ee43-80d4-4cb5-b91c-5ab5303d86d8', 'fat', 8, 'as-fed'),
  ('d8c5ee43-80d4-4cb5-b91c-5ab5303d86d8', 'fiber', 1, 'as-fed'),
  ('d8c5ee43-80d4-4cb5-b91c-5ab5303d86d8', 'ash', 2.5, 'as-fed'),
  ('d8c5ee43-80d4-4cb5-b91c-5ab5303d86d8', 'moisture', 77, 'as-fed'),
  ('d8c5ee43-80d4-4cb5-b91c-5ab5303d86d8', 'calcium', 0.4, 'as-fed'),
  ('d8c5ee43-80d4-4cb5-b91c-5ab5303d86d8', 'phosphorus', 0.31, 'as-fed'),
  ('d8c5ee43-80d4-4cb5-b91c-5ab5303d86d8', 'omega3', 0.4, 'as-fed'),
  ('d8c5ee43-80d4-4cb5-b91c-5ab5303d86d8', 'omega6', 1, 'as-fed');

-- Jarco — Dinner-Mix Compleet (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/dinner-mix-compleet',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3300 kcal/kg naar 330 kcal/100 g (gedeeld door 10). Niet vermeld: vocht, omega-3, omega-6.'
 where id = '9e84e489-6074-4035-a08e-fb0cf5b07ee7';
delete from public.recipe_nutrition where recipe_version_id = '9e84e489-6074-4035-a08e-fb0cf5b07ee7';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9e84e489-6074-4035-a08e-fb0cf5b07ee7', 'protein', 24, 'as-fed'),
  ('9e84e489-6074-4035-a08e-fb0cf5b07ee7', 'fat', 6.5, 'as-fed'),
  ('9e84e489-6074-4035-a08e-fb0cf5b07ee7', 'fiber', 3, 'as-fed'),
  ('9e84e489-6074-4035-a08e-fb0cf5b07ee7', 'ash', 6, 'as-fed'),
  ('9e84e489-6074-4035-a08e-fb0cf5b07ee7', 'kcal', 330, 'as-fed'),
  ('9e84e489-6074-4035-a08e-fb0cf5b07ee7', 'calcium', 1, 'as-fed'),
  ('9e84e489-6074-4035-a08e-fb0cf5b07ee7', 'phosphorus', 0.8, 'as-fed');

-- Jarco — Honden Vleeskuipjes Kip-Eend (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/honden-vleeskuipjes-kip-eend-2x-150-gr-verpakt-a-6-x-2-st',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'De fabrikant vermeldt geen energiewaarde. Eiwit, vet en vezel zijn minimumwaarden en as en vocht maximumwaarden, zoals op de bron vermeld. Niet vermeld: kcal, calcium, fosfor, omega-3, omega-6.'
 where id = '2df60fab-624e-4d46-814f-03c25cd1686e';
delete from public.recipe_nutrition where recipe_version_id = '2df60fab-624e-4d46-814f-03c25cd1686e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2df60fab-624e-4d46-814f-03c25cd1686e', 'protein', 9.5, 'as-fed'),
  ('2df60fab-624e-4d46-814f-03c25cd1686e', 'fat', 8.5, 'as-fed'),
  ('2df60fab-624e-4d46-814f-03c25cd1686e', 'fiber', 0.8, 'as-fed'),
  ('2df60fab-624e-4d46-814f-03c25cd1686e', 'ash', 1.6, 'as-fed'),
  ('2df60fab-624e-4d46-814f-03c25cd1686e', 'moisture', 72, 'as-fed');

-- Jarco — Honden Vleeskuipjes Kip-Kalkoen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/honden-vleeskuipjes-kip-kalkoen-2x-150-gr-verpakt-a-6-x-2-st',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'De fabrikant vermeldt geen energiewaarde. Eiwit, vet en vezel zijn minimumwaarden en as en vocht maximumwaarden, zoals op de bron vermeld. Niet vermeld: kcal, calcium, fosfor, omega-3, omega-6.'
 where id = 'a58255f0-04ca-4d75-a195-3a87080ffc9a';
delete from public.recipe_nutrition where recipe_version_id = 'a58255f0-04ca-4d75-a195-3a87080ffc9a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a58255f0-04ca-4d75-a195-3a87080ffc9a', 'protein', 9.5, 'as-fed'),
  ('a58255f0-04ca-4d75-a195-3a87080ffc9a', 'fat', 8.5, 'as-fed'),
  ('a58255f0-04ca-4d75-a195-3a87080ffc9a', 'fiber', 0.8, 'as-fed'),
  ('a58255f0-04ca-4d75-a195-3a87080ffc9a', 'ash', 1.6, 'as-fed'),
  ('a58255f0-04ca-4d75-a195-3a87080ffc9a', 'moisture', 72, 'as-fed');

-- Jarco — Honden Vleeskuipjes Kip-Konijn (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/honden-vleeskuipjes-kip-konijn-2x-150-gr-verpakt-a-6-x-2-st',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'De fabrikant vermeldt geen energiewaarde. Eiwit, vet en vezel zijn minimumwaarden en as en vocht maximumwaarden, zoals op de bron vermeld. Niet vermeld: kcal, calcium, fosfor, omega-3, omega-6.'
 where id = '8f17bb3e-5b28-4450-9984-9cd28524db04';
delete from public.recipe_nutrition where recipe_version_id = '8f17bb3e-5b28-4450-9984-9cd28524db04';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8f17bb3e-5b28-4450-9984-9cd28524db04', 'protein', 9.5, 'as-fed'),
  ('8f17bb3e-5b28-4450-9984-9cd28524db04', 'fat', 8.5, 'as-fed'),
  ('8f17bb3e-5b28-4450-9984-9cd28524db04', 'fiber', 0.8, 'as-fed'),
  ('8f17bb3e-5b28-4450-9984-9cd28524db04', 'ash', 1.6, 'as-fed'),
  ('8f17bb3e-5b28-4450-9984-9cd28524db04', 'moisture', 72, 'as-fed');

-- Jarco — Honden Vleeskuipjes Kip-Rund (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/honden-vleeskuipjes-kip-rund-2x-150-gr-verpakt-a-6-x-2-st',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'De fabrikant vermeldt geen energiewaarde. Eiwit, vet en vezel zijn minimumwaarden en as en vocht maximumwaarden, zoals op de bron vermeld. Niet vermeld: kcal, calcium, fosfor, omega-3, omega-6.'
 where id = 'c389eb3a-bfa0-42ed-b0e6-cafec92b8f05';
delete from public.recipe_nutrition where recipe_version_id = 'c389eb3a-bfa0-42ed-b0e6-cafec92b8f05';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c389eb3a-bfa0-42ed-b0e6-cafec92b8f05', 'protein', 9.5, 'as-fed'),
  ('c389eb3a-bfa0-42ed-b0e6-cafec92b8f05', 'fat', 8.5, 'as-fed'),
  ('c389eb3a-bfa0-42ed-b0e6-cafec92b8f05', 'fiber', 0.8, 'as-fed'),
  ('c389eb3a-bfa0-42ed-b0e6-cafec92b8f05', 'ash', 1.6, 'as-fed'),
  ('c389eb3a-bfa0-42ed-b0e6-cafec92b8f05', 'moisture', 72, 'as-fed');

-- Jarco — Honden Vleeskuipjes Kip-Zalm (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/honden-vleeskuipjes-kip-zalm-2x-150-gr-verpakt-a-6-x-2-st',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'De fabrikant vermeldt geen energiewaarde. Eiwit, vet en vezel zijn minimumwaarden en as en vocht maximumwaarden, zoals op de bron vermeld. Niet vermeld: kcal, calcium, fosfor, omega-3, omega-6.'
 where id = 'f161edf2-5d2e-4a3f-9bb7-118ea8bce46b';
delete from public.recipe_nutrition where recipe_version_id = 'f161edf2-5d2e-4a3f-9bb7-118ea8bce46b';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f161edf2-5d2e-4a3f-9bb7-118ea8bce46b', 'protein', 9.5, 'as-fed'),
  ('f161edf2-5d2e-4a3f-9bb7-118ea8bce46b', 'fat', 8.5, 'as-fed'),
  ('f161edf2-5d2e-4a3f-9bb7-118ea8bce46b', 'fiber', 0.8, 'as-fed'),
  ('f161edf2-5d2e-4a3f-9bb7-118ea8bce46b', 'ash', 1.6, 'as-fed'),
  ('f161edf2-5d2e-4a3f-9bb7-118ea8bce46b', 'moisture', 72, 'as-fed');

-- Jarco — Hondenblikvoeding - Kalkoen menu (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/jarco-hondenblikvoeding-kalkoen-menu-400-gr-verpakt-a-6-st',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'De fabrikant vermeldt geen energiewaarde. Niet vermeld: kcal, omega-3, omega-6.'
 where id = '4b0c8bb5-0f2f-4554-8d1a-4c5ec0019078';
delete from public.recipe_nutrition where recipe_version_id = '4b0c8bb5-0f2f-4554-8d1a-4c5ec0019078';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4b0c8bb5-0f2f-4554-8d1a-4c5ec0019078', 'protein', 10.1, 'as-fed'),
  ('4b0c8bb5-0f2f-4554-8d1a-4c5ec0019078', 'fat', 6.5, 'as-fed'),
  ('4b0c8bb5-0f2f-4554-8d1a-4c5ec0019078', 'fiber', 0.3, 'as-fed'),
  ('4b0c8bb5-0f2f-4554-8d1a-4c5ec0019078', 'ash', 1.7, 'as-fed'),
  ('4b0c8bb5-0f2f-4554-8d1a-4c5ec0019078', 'moisture', 78, 'as-fed'),
  ('4b0c8bb5-0f2f-4554-8d1a-4c5ec0019078', 'calcium', 0.25, 'as-fed'),
  ('4b0c8bb5-0f2f-4554-8d1a-4c5ec0019078', 'phosphorus', 0.19, 'as-fed');

-- Jarco — Hondenblikvoeding - Kip menu (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/jarco-honden-blikvoeding-kip-menu-400-gr-verpakt-a-6-st',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'De fabrikant vermeldt geen energiewaarde. Niet vermeld: kcal, omega-3, omega-6.'
 where id = '3b0be4ad-1a80-45d3-b38b-894565bf5202';
delete from public.recipe_nutrition where recipe_version_id = '3b0be4ad-1a80-45d3-b38b-894565bf5202';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3b0be4ad-1a80-45d3-b38b-894565bf5202', 'protein', 11.3, 'as-fed'),
  ('3b0be4ad-1a80-45d3-b38b-894565bf5202', 'fat', 6.2, 'as-fed'),
  ('3b0be4ad-1a80-45d3-b38b-894565bf5202', 'fiber', 0.2, 'as-fed'),
  ('3b0be4ad-1a80-45d3-b38b-894565bf5202', 'ash', 2, 'as-fed'),
  ('3b0be4ad-1a80-45d3-b38b-894565bf5202', 'moisture', 77, 'as-fed'),
  ('3b0be4ad-1a80-45d3-b38b-894565bf5202', 'calcium', 0.25, 'as-fed'),
  ('3b0be4ad-1a80-45d3-b38b-894565bf5202', 'phosphorus', 0.17, 'as-fed');

-- Jarco — Hondenblikvoeding - Lam menu (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/jarco-hondenblikvoeding-lam-menu-400-gr-verpakt-a-6-st',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'De fabrikant vermeldt geen energiewaarde. Niet vermeld: kcal, omega-3, omega-6.'
 where id = '849b04d8-92c9-4027-8ec5-1c6bb8dd8ac7';
delete from public.recipe_nutrition where recipe_version_id = '849b04d8-92c9-4027-8ec5-1c6bb8dd8ac7';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('849b04d8-92c9-4027-8ec5-1c6bb8dd8ac7', 'protein', 10.6, 'as-fed'),
  ('849b04d8-92c9-4027-8ec5-1c6bb8dd8ac7', 'fat', 6.7, 'as-fed'),
  ('849b04d8-92c9-4027-8ec5-1c6bb8dd8ac7', 'fiber', 0.3, 'as-fed'),
  ('849b04d8-92c9-4027-8ec5-1c6bb8dd8ac7', 'ash', 1.8, 'as-fed'),
  ('849b04d8-92c9-4027-8ec5-1c6bb8dd8ac7', 'moisture', 76, 'as-fed'),
  ('849b04d8-92c9-4027-8ec5-1c6bb8dd8ac7', 'calcium', 0.24, 'as-fed'),
  ('849b04d8-92c9-4027-8ec5-1c6bb8dd8ac7', 'phosphorus', 0.16, 'as-fed');

-- Jarco — Hondenblikvoeding - Rund menu (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/jarco-hondenblikvoeding-rund-menu-400-gr-verpakt-a-6-st',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'De fabrikant vermeldt geen energiewaarde. Niet vermeld: kcal, omega-3, omega-6.'
 where id = '2df8568f-5735-44d9-b988-646bab8ff395';
delete from public.recipe_nutrition where recipe_version_id = '2df8568f-5735-44d9-b988-646bab8ff395';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2df8568f-5735-44d9-b988-646bab8ff395', 'protein', 10.9, 'as-fed'),
  ('2df8568f-5735-44d9-b988-646bab8ff395', 'fat', 6.5, 'as-fed'),
  ('2df8568f-5735-44d9-b988-646bab8ff395', 'fiber', 0.3, 'as-fed'),
  ('2df8568f-5735-44d9-b988-646bab8ff395', 'ash', 1.7, 'as-fed'),
  ('2df8568f-5735-44d9-b988-646bab8ff395', 'moisture', 77, 'as-fed'),
  ('2df8568f-5735-44d9-b988-646bab8ff395', 'calcium', 0.28, 'as-fed'),
  ('2df8568f-5735-44d9-b988-646bab8ff395', 'phosphorus', 0.17, 'as-fed');

-- Jarco — Hondenblikvoeding - Vis menu (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/jarco-hondenblikvoeding-vis-menu-400-gr-verpakt-a-6-st',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'De fabrikant vermeldt geen energiewaarde. Niet vermeld: kcal, omega-3, omega-6.'
 where id = '64a29a6b-cc64-4844-a728-e0c05f90493a';
delete from public.recipe_nutrition where recipe_version_id = '64a29a6b-cc64-4844-a728-e0c05f90493a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('64a29a6b-cc64-4844-a728-e0c05f90493a', 'protein', 10.5, 'as-fed'),
  ('64a29a6b-cc64-4844-a728-e0c05f90493a', 'fat', 6, 'as-fed'),
  ('64a29a6b-cc64-4844-a728-e0c05f90493a', 'fiber', 0.1, 'as-fed'),
  ('64a29a6b-cc64-4844-a728-e0c05f90493a', 'ash', 2.5, 'as-fed'),
  ('64a29a6b-cc64-4844-a728-e0c05f90493a', 'moisture', 79, 'as-fed'),
  ('64a29a6b-cc64-4844-a728-e0c05f90493a', 'calcium', 0.28, 'as-fed'),
  ('64a29a6b-cc64-4844-a728-e0c05f90493a', 'phosphorus', 0.25, 'as-fed');

-- Jarco — Hondenblikvoeding - Wild menu (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/jarco-hondenblikvoeding-wild-menu-400-gr-verpakt-a-6-st',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'De fabrikant vermeldt geen energiewaarde. Niet vermeld: kcal, omega-3, omega-6.'
 where id = '0c8f230a-99d3-4fc8-945f-d985eca8a9e7';
delete from public.recipe_nutrition where recipe_version_id = '0c8f230a-99d3-4fc8-945f-d985eca8a9e7';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0c8f230a-99d3-4fc8-945f-d985eca8a9e7', 'protein', 11.5, 'as-fed'),
  ('0c8f230a-99d3-4fc8-945f-d985eca8a9e7', 'fat', 5.6, 'as-fed'),
  ('0c8f230a-99d3-4fc8-945f-d985eca8a9e7', 'fiber', 0.3, 'as-fed'),
  ('0c8f230a-99d3-4fc8-945f-d985eca8a9e7', 'ash', 1.6, 'as-fed'),
  ('0c8f230a-99d3-4fc8-945f-d985eca8a9e7', 'moisture', 78, 'as-fed'),
  ('0c8f230a-99d3-4fc8-945f-d985eca8a9e7', 'calcium', 0.17, 'as-fed'),
  ('0c8f230a-99d3-4fc8-945f-d985eca8a9e7', 'phosphorus', 0.16, 'as-fed');

-- Jarco — Hondenbrokken Giant Senior Lam (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-giant-senior-lam',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 4000 kcal/kg naar 400 kcal/100 g (gedeeld door 10).'
 where id = '8bfc0e53-90a9-4fa8-8911-a04159e6085e';
delete from public.recipe_nutrition where recipe_version_id = '8bfc0e53-90a9-4fa8-8911-a04159e6085e';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8bfc0e53-90a9-4fa8-8911-a04159e6085e', 'protein', 25, 'as-fed'),
  ('8bfc0e53-90a9-4fa8-8911-a04159e6085e', 'fat', 18, 'as-fed'),
  ('8bfc0e53-90a9-4fa8-8911-a04159e6085e', 'fiber', 2.8, 'as-fed'),
  ('8bfc0e53-90a9-4fa8-8911-a04159e6085e', 'ash', 7.2, 'as-fed'),
  ('8bfc0e53-90a9-4fa8-8911-a04159e6085e', 'moisture', 10, 'as-fed'),
  ('8bfc0e53-90a9-4fa8-8911-a04159e6085e', 'kcal', 400, 'as-fed'),
  ('8bfc0e53-90a9-4fa8-8911-a04159e6085e', 'calcium', 1.3, 'as-fed'),
  ('8bfc0e53-90a9-4fa8-8911-a04159e6085e', 'phosphorus', 1, 'as-fed'),
  ('8bfc0e53-90a9-4fa8-8911-a04159e6085e', 'omega3', 0.3, 'as-fed'),
  ('8bfc0e53-90a9-4fa8-8911-a04159e6085e', 'omega6', 2.5, 'as-fed');

-- Jarco — Hondenbrokken High Energy Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-high-energy-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 4300 kcal/kg naar 430 kcal/100 g (gedeeld door 10).'
 where id = '81abe827-fe26-4be9-adb3-1149da4b5146';
delete from public.recipe_nutrition where recipe_version_id = '81abe827-fe26-4be9-adb3-1149da4b5146';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('81abe827-fe26-4be9-adb3-1149da4b5146', 'protein', 30, 'as-fed'),
  ('81abe827-fe26-4be9-adb3-1149da4b5146', 'fat', 20, 'as-fed'),
  ('81abe827-fe26-4be9-adb3-1149da4b5146', 'fiber', 2.5, 'as-fed'),
  ('81abe827-fe26-4be9-adb3-1149da4b5146', 'ash', 8, 'as-fed'),
  ('81abe827-fe26-4be9-adb3-1149da4b5146', 'moisture', 10, 'as-fed'),
  ('81abe827-fe26-4be9-adb3-1149da4b5146', 'kcal', 430, 'as-fed'),
  ('81abe827-fe26-4be9-adb3-1149da4b5146', 'calcium', 1.6, 'as-fed'),
  ('81abe827-fe26-4be9-adb3-1149da4b5146', 'phosphorus', 1.2, 'as-fed'),
  ('81abe827-fe26-4be9-adb3-1149da4b5146', 'omega3', 0.5, 'as-fed'),
  ('81abe827-fe26-4be9-adb3-1149da4b5146', 'omega6', 2.5, 'as-fed');

-- Jarco — Hondenbrokken Mini Puppy Eend (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/mini-puppy-eend-1-75-kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 4115 kcal/kg naar 411.5 kcal/100 g (gedeeld door 10).'
 where id = '4505c5b0-05e1-4f99-9529-8f7cd041ced9';
delete from public.recipe_nutrition where recipe_version_id = '4505c5b0-05e1-4f99-9529-8f7cd041ced9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4505c5b0-05e1-4f99-9529-8f7cd041ced9', 'protein', 30, 'as-fed'),
  ('4505c5b0-05e1-4f99-9529-8f7cd041ced9', 'fat', 18.9, 'as-fed'),
  ('4505c5b0-05e1-4f99-9529-8f7cd041ced9', 'fiber', 2.2, 'as-fed'),
  ('4505c5b0-05e1-4f99-9529-8f7cd041ced9', 'ash', 6.1, 'as-fed'),
  ('4505c5b0-05e1-4f99-9529-8f7cd041ced9', 'moisture', 9, 'as-fed'),
  ('4505c5b0-05e1-4f99-9529-8f7cd041ced9', 'kcal', 411.5, 'as-fed'),
  ('4505c5b0-05e1-4f99-9529-8f7cd041ced9', 'calcium', 1.1, 'as-fed'),
  ('4505c5b0-05e1-4f99-9529-8f7cd041ced9', 'phosphorus', 0.94, 'as-fed'),
  ('4505c5b0-05e1-4f99-9529-8f7cd041ced9', 'omega3', 0.4, 'as-fed'),
  ('4505c5b0-05e1-4f99-9529-8f7cd041ced9', 'omega6', 3.3, 'as-fed');

-- Jarco — Hondenbrokken Mini Senior Lam (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-mini-senior-lam-1-75-kg',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3752 kcal/kg naar 375.2 kcal/100 g (gedeeld door 10).'
 where id = '6e936e94-d626-4e58-9420-aa93e938baf7';
delete from public.recipe_nutrition where recipe_version_id = '6e936e94-d626-4e58-9420-aa93e938baf7';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6e936e94-d626-4e58-9420-aa93e938baf7', 'protein', 25, 'as-fed'),
  ('6e936e94-d626-4e58-9420-aa93e938baf7', 'fat', 12, 'as-fed'),
  ('6e936e94-d626-4e58-9420-aa93e938baf7', 'fiber', 3.4, 'as-fed'),
  ('6e936e94-d626-4e58-9420-aa93e938baf7', 'ash', 5.4, 'as-fed'),
  ('6e936e94-d626-4e58-9420-aa93e938baf7', 'moisture', 10, 'as-fed'),
  ('6e936e94-d626-4e58-9420-aa93e938baf7', 'kcal', 375.2, 'as-fed'),
  ('6e936e94-d626-4e58-9420-aa93e938baf7', 'calcium', 0.7, 'as-fed'),
  ('6e936e94-d626-4e58-9420-aa93e938baf7', 'phosphorus', 0.69, 'as-fed'),
  ('6e936e94-d626-4e58-9420-aa93e938baf7', 'omega3', 0.3, 'as-fed'),
  ('6e936e94-d626-4e58-9420-aa93e938baf7', 'omega6', 2.5, 'as-fed');

-- Jarco — Hondenbrokken Natural Active Kalkoen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-active-kalkoen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3900 kcal/kg naar 390 kcal/100 g (gedeeld door 10).'
 where id = '0db77dd6-1ff2-4219-815e-9d218b6c6992';
delete from public.recipe_nutrition where recipe_version_id = '0db77dd6-1ff2-4219-815e-9d218b6c6992';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0db77dd6-1ff2-4219-815e-9d218b6c6992', 'protein', 25, 'as-fed'),
  ('0db77dd6-1ff2-4219-815e-9d218b6c6992', 'fat', 15, 'as-fed'),
  ('0db77dd6-1ff2-4219-815e-9d218b6c6992', 'fiber', 2.5, 'as-fed'),
  ('0db77dd6-1ff2-4219-815e-9d218b6c6992', 'ash', 5.5, 'as-fed'),
  ('0db77dd6-1ff2-4219-815e-9d218b6c6992', 'moisture', 9, 'as-fed'),
  ('0db77dd6-1ff2-4219-815e-9d218b6c6992', 'kcal', 390, 'as-fed'),
  ('0db77dd6-1ff2-4219-815e-9d218b6c6992', 'calcium', 1.2, 'as-fed'),
  ('0db77dd6-1ff2-4219-815e-9d218b6c6992', 'phosphorus', 0.9, 'as-fed'),
  ('0db77dd6-1ff2-4219-815e-9d218b6c6992', 'omega3', 0.3, 'as-fed'),
  ('0db77dd6-1ff2-4219-815e-9d218b6c6992', 'omega6', 2.5, 'as-fed');

-- Jarco — Hondenbrokken Natural Classic Persbrok Adult Eend (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-classic-persbrok-adult-eend',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3700 kcal/kg naar 370 kcal/100 g (gedeeld door 10).'
 where id = '38cbab95-9633-4c36-a8cf-5d3a86276b75';
delete from public.recipe_nutrition where recipe_version_id = '38cbab95-9633-4c36-a8cf-5d3a86276b75';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('38cbab95-9633-4c36-a8cf-5d3a86276b75', 'protein', 24, 'as-fed'),
  ('38cbab95-9633-4c36-a8cf-5d3a86276b75', 'fat', 13, 'as-fed'),
  ('38cbab95-9633-4c36-a8cf-5d3a86276b75', 'fiber', 1.8, 'as-fed'),
  ('38cbab95-9633-4c36-a8cf-5d3a86276b75', 'ash', 6, 'as-fed'),
  ('38cbab95-9633-4c36-a8cf-5d3a86276b75', 'moisture', 10, 'as-fed'),
  ('38cbab95-9633-4c36-a8cf-5d3a86276b75', 'kcal', 370, 'as-fed'),
  ('38cbab95-9633-4c36-a8cf-5d3a86276b75', 'calcium', 1.3, 'as-fed'),
  ('38cbab95-9633-4c36-a8cf-5d3a86276b75', 'phosphorus', 1, 'as-fed'),
  ('38cbab95-9633-4c36-a8cf-5d3a86276b75', 'omega3', 0.3, 'as-fed'),
  ('38cbab95-9633-4c36-a8cf-5d3a86276b75', 'omega6', 2.1, 'as-fed');

-- Jarco — Hondenbrokken Natural Classic Persbrok Adult Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-classic-persbrok-adult-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3750 kcal/kg naar 375 kcal/100 g (gedeeld door 10).'
 where id = '380b5699-846a-4065-bc29-4f80b7c2bd65';
delete from public.recipe_nutrition where recipe_version_id = '380b5699-846a-4065-bc29-4f80b7c2bd65';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('380b5699-846a-4065-bc29-4f80b7c2bd65', 'protein', 26, 'as-fed'),
  ('380b5699-846a-4065-bc29-4f80b7c2bd65', 'fat', 15, 'as-fed'),
  ('380b5699-846a-4065-bc29-4f80b7c2bd65', 'fiber', 2, 'as-fed'),
  ('380b5699-846a-4065-bc29-4f80b7c2bd65', 'ash', 7.5, 'as-fed'),
  ('380b5699-846a-4065-bc29-4f80b7c2bd65', 'moisture', 10, 'as-fed'),
  ('380b5699-846a-4065-bc29-4f80b7c2bd65', 'kcal', 375, 'as-fed'),
  ('380b5699-846a-4065-bc29-4f80b7c2bd65', 'calcium', 1.2, 'as-fed'),
  ('380b5699-846a-4065-bc29-4f80b7c2bd65', 'phosphorus', 0.8, 'as-fed'),
  ('380b5699-846a-4065-bc29-4f80b7c2bd65', 'omega3', 0.5, 'as-fed'),
  ('380b5699-846a-4065-bc29-4f80b7c2bd65', 'omega6', 3.3, 'as-fed');

-- Jarco — Hondenbrokken Natural Classic Persbrok Konijn (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-classic-persbrok-konijn',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3700 kcal/kg naar 370 kcal/100 g (gedeeld door 10).'
 where id = '005732fb-6ef8-4b61-a640-95abb5de1641';
delete from public.recipe_nutrition where recipe_version_id = '005732fb-6ef8-4b61-a640-95abb5de1641';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('005732fb-6ef8-4b61-a640-95abb5de1641', 'protein', 24, 'as-fed'),
  ('005732fb-6ef8-4b61-a640-95abb5de1641', 'fat', 13, 'as-fed'),
  ('005732fb-6ef8-4b61-a640-95abb5de1641', 'fiber', 1.8, 'as-fed'),
  ('005732fb-6ef8-4b61-a640-95abb5de1641', 'ash', 6, 'as-fed'),
  ('005732fb-6ef8-4b61-a640-95abb5de1641', 'moisture', 10, 'as-fed'),
  ('005732fb-6ef8-4b61-a640-95abb5de1641', 'kcal', 370, 'as-fed'),
  ('005732fb-6ef8-4b61-a640-95abb5de1641', 'calcium', 1.3, 'as-fed'),
  ('005732fb-6ef8-4b61-a640-95abb5de1641', 'phosphorus', 1, 'as-fed'),
  ('005732fb-6ef8-4b61-a640-95abb5de1641', 'omega3', 0.3, 'as-fed'),
  ('005732fb-6ef8-4b61-a640-95abb5de1641', 'omega6', 2.1, 'as-fed');

-- Jarco — Hondenbrokken Natural Classic Persbrok Lam/Rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-classic-persbrok-lam-rijst',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3750 kcal/kg naar 375 kcal/100 g (gedeeld door 10).'
 where id = '0a7f9d4c-1477-4637-9025-23533f54e80d';
delete from public.recipe_nutrition where recipe_version_id = '0a7f9d4c-1477-4637-9025-23533f54e80d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0a7f9d4c-1477-4637-9025-23533f54e80d', 'protein', 24, 'as-fed'),
  ('0a7f9d4c-1477-4637-9025-23533f54e80d', 'fat', 12, 'as-fed'),
  ('0a7f9d4c-1477-4637-9025-23533f54e80d', 'fiber', 2, 'as-fed'),
  ('0a7f9d4c-1477-4637-9025-23533f54e80d', 'ash', 7.5, 'as-fed'),
  ('0a7f9d4c-1477-4637-9025-23533f54e80d', 'moisture', 10, 'as-fed'),
  ('0a7f9d4c-1477-4637-9025-23533f54e80d', 'kcal', 375, 'as-fed'),
  ('0a7f9d4c-1477-4637-9025-23533f54e80d', 'calcium', 1.2, 'as-fed'),
  ('0a7f9d4c-1477-4637-9025-23533f54e80d', 'phosphorus', 0.8, 'as-fed'),
  ('0a7f9d4c-1477-4637-9025-23533f54e80d', 'omega3', 0.2, 'as-fed'),
  ('0a7f9d4c-1477-4637-9025-23533f54e80d', 'omega6', 2, 'as-fed');

-- Jarco — Hondenbrokken Natural Classic Persbrok Puppy (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-classic-persbrok-puppy',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 4100 kcal/kg naar 410 kcal/100 g (gedeeld door 10).'
 where id = '35ca4886-b6bb-498c-ba7f-0de7c42ac7e3';
delete from public.recipe_nutrition where recipe_version_id = '35ca4886-b6bb-498c-ba7f-0de7c42ac7e3';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('35ca4886-b6bb-498c-ba7f-0de7c42ac7e3', 'protein', 28, 'as-fed'),
  ('35ca4886-b6bb-498c-ba7f-0de7c42ac7e3', 'fat', 15, 'as-fed'),
  ('35ca4886-b6bb-498c-ba7f-0de7c42ac7e3', 'fiber', 3, 'as-fed'),
  ('35ca4886-b6bb-498c-ba7f-0de7c42ac7e3', 'ash', 6, 'as-fed'),
  ('35ca4886-b6bb-498c-ba7f-0de7c42ac7e3', 'moisture', 10, 'as-fed'),
  ('35ca4886-b6bb-498c-ba7f-0de7c42ac7e3', 'kcal', 410, 'as-fed'),
  ('35ca4886-b6bb-498c-ba7f-0de7c42ac7e3', 'calcium', 1.4, 'as-fed'),
  ('35ca4886-b6bb-498c-ba7f-0de7c42ac7e3', 'phosphorus', 0.9, 'as-fed'),
  ('35ca4886-b6bb-498c-ba7f-0de7c42ac7e3', 'omega3', 0.4, 'as-fed'),
  ('35ca4886-b6bb-498c-ba7f-0de7c42ac7e3', 'omega6', 3.3, 'as-fed');

-- Jarco — Hondenbrokken Natural Classic Persbrok Rendier (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-classic-persbrok-rendier',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3700 kcal/kg naar 370 kcal/100 g (gedeeld door 10).'
 where id = '38978260-7534-45f8-bafd-8950c0a7c9d5';
delete from public.recipe_nutrition where recipe_version_id = '38978260-7534-45f8-bafd-8950c0a7c9d5';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('38978260-7534-45f8-bafd-8950c0a7c9d5', 'protein', 24, 'as-fed'),
  ('38978260-7534-45f8-bafd-8950c0a7c9d5', 'fat', 13, 'as-fed'),
  ('38978260-7534-45f8-bafd-8950c0a7c9d5', 'fiber', 1.8, 'as-fed'),
  ('38978260-7534-45f8-bafd-8950c0a7c9d5', 'ash', 6, 'as-fed'),
  ('38978260-7534-45f8-bafd-8950c0a7c9d5', 'moisture', 10, 'as-fed'),
  ('38978260-7534-45f8-bafd-8950c0a7c9d5', 'kcal', 370, 'as-fed'),
  ('38978260-7534-45f8-bafd-8950c0a7c9d5', 'calcium', 1.3, 'as-fed'),
  ('38978260-7534-45f8-bafd-8950c0a7c9d5', 'phosphorus', 1, 'as-fed'),
  ('38978260-7534-45f8-bafd-8950c0a7c9d5', 'omega3', 0.3, 'as-fed'),
  ('38978260-7534-45f8-bafd-8950c0a7c9d5', 'omega6', 2.1, 'as-fed');

-- Jarco — Hondenbrokken Natural Classic Persbrok Zalm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-classic-persbrok-zalm',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3798 kcal/kg naar 379.8 kcal/100 g (gedeeld door 10).'
 where id = 'c9287eb2-22b3-41fb-9e82-bba5b1413f7c';
delete from public.recipe_nutrition where recipe_version_id = 'c9287eb2-22b3-41fb-9e82-bba5b1413f7c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c9287eb2-22b3-41fb-9e82-bba5b1413f7c', 'protein', 27, 'as-fed'),
  ('c9287eb2-22b3-41fb-9e82-bba5b1413f7c', 'fat', 12, 'as-fed'),
  ('c9287eb2-22b3-41fb-9e82-bba5b1413f7c', 'fiber', 1.5, 'as-fed'),
  ('c9287eb2-22b3-41fb-9e82-bba5b1413f7c', 'ash', 5, 'as-fed'),
  ('c9287eb2-22b3-41fb-9e82-bba5b1413f7c', 'moisture', 10, 'as-fed'),
  ('c9287eb2-22b3-41fb-9e82-bba5b1413f7c', 'kcal', 379.8, 'as-fed'),
  ('c9287eb2-22b3-41fb-9e82-bba5b1413f7c', 'calcium', 1.2, 'as-fed'),
  ('c9287eb2-22b3-41fb-9e82-bba5b1413f7c', 'phosphorus', 0.8, 'as-fed'),
  ('c9287eb2-22b3-41fb-9e82-bba5b1413f7c', 'omega3', 0.6, 'as-fed'),
  ('c9287eb2-22b3-41fb-9e82-bba5b1413f7c', 'omega6', 2.4, 'as-fed');

-- Jarco — Hondenbrokken Natural Giant Adult Lam (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-giant-adult-lam',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 4275 kcal/kg naar 427.5 kcal/100 g (gedeeld door 10).'
 where id = 'bbeb397e-6bdb-46cf-9241-bcf1195e8660';
delete from public.recipe_nutrition where recipe_version_id = 'bbeb397e-6bdb-46cf-9241-bcf1195e8660';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('bbeb397e-6bdb-46cf-9241-bcf1195e8660', 'protein', 28, 'as-fed'),
  ('bbeb397e-6bdb-46cf-9241-bcf1195e8660', 'fat', 20, 'as-fed'),
  ('bbeb397e-6bdb-46cf-9241-bcf1195e8660', 'fiber', 3, 'as-fed'),
  ('bbeb397e-6bdb-46cf-9241-bcf1195e8660', 'ash', 7.4, 'as-fed'),
  ('bbeb397e-6bdb-46cf-9241-bcf1195e8660', 'moisture', 10, 'as-fed'),
  ('bbeb397e-6bdb-46cf-9241-bcf1195e8660', 'kcal', 427.5, 'as-fed'),
  ('bbeb397e-6bdb-46cf-9241-bcf1195e8660', 'calcium', 1.3, 'as-fed'),
  ('bbeb397e-6bdb-46cf-9241-bcf1195e8660', 'phosphorus', 1, 'as-fed'),
  ('bbeb397e-6bdb-46cf-9241-bcf1195e8660', 'omega3', 0.3, 'as-fed'),
  ('bbeb397e-6bdb-46cf-9241-bcf1195e8660', 'omega6', 2.5, 'as-fed');

-- Jarco — Hondenbrokken Natural Giant Junior Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-giant-junior-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 4100 kcal/kg naar 410 kcal/100 g (gedeeld door 10).'
 where id = '3d83d0c0-a50c-41a1-a618-20478100f560';
delete from public.recipe_nutrition where recipe_version_id = '3d83d0c0-a50c-41a1-a618-20478100f560';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('3d83d0c0-a50c-41a1-a618-20478100f560', 'protein', 30, 'as-fed'),
  ('3d83d0c0-a50c-41a1-a618-20478100f560', 'fat', 18, 'as-fed'),
  ('3d83d0c0-a50c-41a1-a618-20478100f560', 'fiber', 6, 'as-fed'),
  ('3d83d0c0-a50c-41a1-a618-20478100f560', 'ash', 6.8, 'as-fed'),
  ('3d83d0c0-a50c-41a1-a618-20478100f560', 'moisture', 8, 'as-fed'),
  ('3d83d0c0-a50c-41a1-a618-20478100f560', 'kcal', 410, 'as-fed'),
  ('3d83d0c0-a50c-41a1-a618-20478100f560', 'calcium', 1, 'as-fed'),
  ('3d83d0c0-a50c-41a1-a618-20478100f560', 'phosphorus', 0.8, 'as-fed'),
  ('3d83d0c0-a50c-41a1-a618-20478100f560', 'omega3', 0.3, 'as-fed'),
  ('3d83d0c0-a50c-41a1-a618-20478100f560', 'omega6', 2.5, 'as-fed');

-- Jarco — Hondenbrokken Natural Giant Puppy Kalkoen (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-giant-puppy-kalkoen',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3800 kcal/kg naar 380 kcal/100 g (gedeeld door 10).'
 where id = 'e37a36ad-f8f4-4a80-bd68-65ed5b65b4b0';
delete from public.recipe_nutrition where recipe_version_id = 'e37a36ad-f8f4-4a80-bd68-65ed5b65b4b0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e37a36ad-f8f4-4a80-bd68-65ed5b65b4b0', 'protein', 25, 'as-fed'),
  ('e37a36ad-f8f4-4a80-bd68-65ed5b65b4b0', 'fat', 15, 'as-fed'),
  ('e37a36ad-f8f4-4a80-bd68-65ed5b65b4b0', 'fiber', 2.5, 'as-fed'),
  ('e37a36ad-f8f4-4a80-bd68-65ed5b65b4b0', 'ash', 5.5, 'as-fed'),
  ('e37a36ad-f8f4-4a80-bd68-65ed5b65b4b0', 'moisture', 9, 'as-fed'),
  ('e37a36ad-f8f4-4a80-bd68-65ed5b65b4b0', 'kcal', 380, 'as-fed'),
  ('e37a36ad-f8f4-4a80-bd68-65ed5b65b4b0', 'calcium', 1, 'as-fed'),
  ('e37a36ad-f8f4-4a80-bd68-65ed5b65b4b0', 'phosphorus', 0.8, 'as-fed'),
  ('e37a36ad-f8f4-4a80-bd68-65ed5b65b4b0', 'omega3', 0.3, 'as-fed'),
  ('e37a36ad-f8f4-4a80-bd68-65ed5b65b4b0', 'omega6', 2.5, 'as-fed');

-- Jarco — Hondenbrokken Natural Large Adult Eend (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-large-adult-eend',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3653 kcal/kg naar 365.3 kcal/100 g (gedeeld door 10).'
 where id = '2467385a-c044-4cbf-aacd-d81bbe4f4771';
delete from public.recipe_nutrition where recipe_version_id = '2467385a-c044-4cbf-aacd-d81bbe4f4771';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2467385a-c044-4cbf-aacd-d81bbe4f4771', 'protein', 24, 'as-fed'),
  ('2467385a-c044-4cbf-aacd-d81bbe4f4771', 'fat', 13, 'as-fed'),
  ('2467385a-c044-4cbf-aacd-d81bbe4f4771', 'fiber', 2.5, 'as-fed'),
  ('2467385a-c044-4cbf-aacd-d81bbe4f4771', 'ash', 5.5, 'as-fed'),
  ('2467385a-c044-4cbf-aacd-d81bbe4f4771', 'moisture', 9, 'as-fed'),
  ('2467385a-c044-4cbf-aacd-d81bbe4f4771', 'kcal', 365.3, 'as-fed'),
  ('2467385a-c044-4cbf-aacd-d81bbe4f4771', 'calcium', 1.2, 'as-fed'),
  ('2467385a-c044-4cbf-aacd-d81bbe4f4771', 'phosphorus', 0.9, 'as-fed'),
  ('2467385a-c044-4cbf-aacd-d81bbe4f4771', 'omega3', 0.2, 'as-fed'),
  ('2467385a-c044-4cbf-aacd-d81bbe4f4771', 'omega6', 2, 'as-fed');

-- Jarco — Hondenbrokken Natural Large Adult Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-large-adult-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3653 kcal/kg naar 365.3 kcal/100 g (gedeeld door 10).'
 where id = '7113d8bb-37c6-43a1-9026-7cdf665ba025';
delete from public.recipe_nutrition where recipe_version_id = '7113d8bb-37c6-43a1-9026-7cdf665ba025';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7113d8bb-37c6-43a1-9026-7cdf665ba025', 'protein', 25, 'as-fed'),
  ('7113d8bb-37c6-43a1-9026-7cdf665ba025', 'fat', 12, 'as-fed'),
  ('7113d8bb-37c6-43a1-9026-7cdf665ba025', 'fiber', 3, 'as-fed'),
  ('7113d8bb-37c6-43a1-9026-7cdf665ba025', 'ash', 6, 'as-fed'),
  ('7113d8bb-37c6-43a1-9026-7cdf665ba025', 'moisture', 9, 'as-fed'),
  ('7113d8bb-37c6-43a1-9026-7cdf665ba025', 'kcal', 365.3, 'as-fed'),
  ('7113d8bb-37c6-43a1-9026-7cdf665ba025', 'calcium', 1.1, 'as-fed'),
  ('7113d8bb-37c6-43a1-9026-7cdf665ba025', 'phosphorus', 0.8, 'as-fed'),
  ('7113d8bb-37c6-43a1-9026-7cdf665ba025', 'omega3', 0.3, 'as-fed'),
  ('7113d8bb-37c6-43a1-9026-7cdf665ba025', 'omega6', 2.2, 'as-fed');

-- Jarco — Hondenbrokken Natural Large Puppy Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-large-puppy-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3979 kcal/kg naar 397.9 kcal/100 g (gedeeld door 10).'
 where id = '586d5ea7-30f5-4b02-83b0-266d7f7944fb';
delete from public.recipe_nutrition where recipe_version_id = '586d5ea7-30f5-4b02-83b0-266d7f7944fb';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('586d5ea7-30f5-4b02-83b0-266d7f7944fb', 'protein', 25, 'as-fed'),
  ('586d5ea7-30f5-4b02-83b0-266d7f7944fb', 'fat', 16, 'as-fed'),
  ('586d5ea7-30f5-4b02-83b0-266d7f7944fb', 'fiber', 2.4, 'as-fed'),
  ('586d5ea7-30f5-4b02-83b0-266d7f7944fb', 'ash', 5.7, 'as-fed'),
  ('586d5ea7-30f5-4b02-83b0-266d7f7944fb', 'moisture', 10, 'as-fed'),
  ('586d5ea7-30f5-4b02-83b0-266d7f7944fb', 'kcal', 397.9, 'as-fed'),
  ('586d5ea7-30f5-4b02-83b0-266d7f7944fb', 'calcium', 1.07, 'as-fed'),
  ('586d5ea7-30f5-4b02-83b0-266d7f7944fb', 'phosphorus', 0.8, 'as-fed'),
  ('586d5ea7-30f5-4b02-83b0-266d7f7944fb', 'omega3', 0.3, 'as-fed'),
  ('586d5ea7-30f5-4b02-83b0-266d7f7944fb', 'omega6', 2.2, 'as-fed');

-- Jarco — Hondenbrokken Natural Large Senior Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-large-senior-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3483 kcal/kg naar 348.3 kcal/100 g (gedeeld door 10).'
 where id = 'e6464867-864e-43a0-b286-5e73bc088734';
delete from public.recipe_nutrition where recipe_version_id = 'e6464867-864e-43a0-b286-5e73bc088734';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e6464867-864e-43a0-b286-5e73bc088734', 'protein', 23, 'as-fed'),
  ('e6464867-864e-43a0-b286-5e73bc088734', 'fat', 10, 'as-fed'),
  ('e6464867-864e-43a0-b286-5e73bc088734', 'fiber', 3, 'as-fed'),
  ('e6464867-864e-43a0-b286-5e73bc088734', 'ash', 6, 'as-fed'),
  ('e6464867-864e-43a0-b286-5e73bc088734', 'moisture', 9, 'as-fed'),
  ('e6464867-864e-43a0-b286-5e73bc088734', 'kcal', 348.3, 'as-fed'),
  ('e6464867-864e-43a0-b286-5e73bc088734', 'calcium', 1.1, 'as-fed'),
  ('e6464867-864e-43a0-b286-5e73bc088734', 'phosphorus', 0.8, 'as-fed'),
  ('e6464867-864e-43a0-b286-5e73bc088734', 'omega3', 0.3, 'as-fed'),
  ('e6464867-864e-43a0-b286-5e73bc088734', 'omega6', 2.3, 'as-fed');

-- Jarco — Hondenbrokken Natural Light Rund (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-light-rund',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3200 kcal/kg naar 320 kcal/100 g (gedeeld door 10).'
 where id = 'bb0f1cdc-4bb9-4966-b0be-5e80ea6bab7d';
delete from public.recipe_nutrition where recipe_version_id = 'bb0f1cdc-4bb9-4966-b0be-5e80ea6bab7d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('bb0f1cdc-4bb9-4966-b0be-5e80ea6bab7d', 'protein', 20, 'as-fed'),
  ('bb0f1cdc-4bb9-4966-b0be-5e80ea6bab7d', 'fat', 10, 'as-fed'),
  ('bb0f1cdc-4bb9-4966-b0be-5e80ea6bab7d', 'fiber', 4.5, 'as-fed'),
  ('bb0f1cdc-4bb9-4966-b0be-5e80ea6bab7d', 'ash', 4.5, 'as-fed'),
  ('bb0f1cdc-4bb9-4966-b0be-5e80ea6bab7d', 'moisture', 10, 'as-fed'),
  ('bb0f1cdc-4bb9-4966-b0be-5e80ea6bab7d', 'kcal', 320, 'as-fed'),
  ('bb0f1cdc-4bb9-4966-b0be-5e80ea6bab7d', 'calcium', 0.9, 'as-fed'),
  ('bb0f1cdc-4bb9-4966-b0be-5e80ea6bab7d', 'phosphorus', 0.7, 'as-fed'),
  ('bb0f1cdc-4bb9-4966-b0be-5e80ea6bab7d', 'omega3', 0.2, 'as-fed'),
  ('bb0f1cdc-4bb9-4966-b0be-5e80ea6bab7d', 'omega6', 1.4, 'as-fed');

-- Jarco — Hondenbrokken Natural Medium Adult Eend (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-medium-adult-eend',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3653 kcal/kg naar 365.3 kcal/100 g (gedeeld door 10).'
 where id = '04706e71-b9ef-4123-8a6b-d2ab2be9d626';
delete from public.recipe_nutrition where recipe_version_id = '04706e71-b9ef-4123-8a6b-d2ab2be9d626';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('04706e71-b9ef-4123-8a6b-d2ab2be9d626', 'protein', 25, 'as-fed'),
  ('04706e71-b9ef-4123-8a6b-d2ab2be9d626', 'fat', 12, 'as-fed'),
  ('04706e71-b9ef-4123-8a6b-d2ab2be9d626', 'fiber', 3, 'as-fed'),
  ('04706e71-b9ef-4123-8a6b-d2ab2be9d626', 'ash', 6, 'as-fed'),
  ('04706e71-b9ef-4123-8a6b-d2ab2be9d626', 'moisture', 9, 'as-fed'),
  ('04706e71-b9ef-4123-8a6b-d2ab2be9d626', 'kcal', 365.3, 'as-fed'),
  ('04706e71-b9ef-4123-8a6b-d2ab2be9d626', 'calcium', 1.1, 'as-fed'),
  ('04706e71-b9ef-4123-8a6b-d2ab2be9d626', 'phosphorus', 0.8, 'as-fed'),
  ('04706e71-b9ef-4123-8a6b-d2ab2be9d626', 'omega3', 0.3, 'as-fed'),
  ('04706e71-b9ef-4123-8a6b-d2ab2be9d626', 'omega6', 2.2, 'as-fed');

-- Jarco — Hondenbrokken Natural Medium Adult Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-medium-adult-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Bron vermeldt ''Ruwe celstof 33%'' en ''Energiewaarde 2,652 kcal/kg''; deze waarden wijken sterk af van de overige waarden en lijken typefouten. De celstofwaarde is letterlijk overgenomen. De energiewaarde is door de tegenstrijdige notatie niet omgerekend en blijft null. Calcium staat op de bron als ''Clacium'' (1,1%) en is als calcium overgenomen.'
 where id = '4c3e1030-4a91-4a91-9d0f-810c0db70acd';
delete from public.recipe_nutrition where recipe_version_id = '4c3e1030-4a91-4a91-9d0f-810c0db70acd';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4c3e1030-4a91-4a91-9d0f-810c0db70acd', 'protein', 25, 'as-fed'),
  ('4c3e1030-4a91-4a91-9d0f-810c0db70acd', 'fat', 12, 'as-fed'),
  ('4c3e1030-4a91-4a91-9d0f-810c0db70acd', 'fiber', 33, 'as-fed'),
  ('4c3e1030-4a91-4a91-9d0f-810c0db70acd', 'ash', 6, 'as-fed'),
  ('4c3e1030-4a91-4a91-9d0f-810c0db70acd', 'moisture', 9, 'as-fed'),
  ('4c3e1030-4a91-4a91-9d0f-810c0db70acd', 'calcium', 1.1, 'as-fed'),
  ('4c3e1030-4a91-4a91-9d0f-810c0db70acd', 'phosphorus', 0.8, 'as-fed'),
  ('4c3e1030-4a91-4a91-9d0f-810c0db70acd', 'omega3', 0.3, 'as-fed'),
  ('4c3e1030-4a91-4a91-9d0f-810c0db70acd', 'omega6', 2.2, 'as-fed');

-- Jarco — Hondenbrokken Natural Medium Puppy Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-medium-puppy-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 4060 kcal/kg naar 406 kcal/100 g (gedeeld door 10).'
 where id = '05ffebcd-2da7-475d-8887-ce3e5428b1db';
delete from public.recipe_nutrition where recipe_version_id = '05ffebcd-2da7-475d-8887-ce3e5428b1db';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('05ffebcd-2da7-475d-8887-ce3e5428b1db', 'protein', 28, 'as-fed'),
  ('05ffebcd-2da7-475d-8887-ce3e5428b1db', 'fat', 18, 'as-fed'),
  ('05ffebcd-2da7-475d-8887-ce3e5428b1db', 'fiber', 2.4, 'as-fed'),
  ('05ffebcd-2da7-475d-8887-ce3e5428b1db', 'ash', 6.5, 'as-fed'),
  ('05ffebcd-2da7-475d-8887-ce3e5428b1db', 'moisture', 10, 'as-fed'),
  ('05ffebcd-2da7-475d-8887-ce3e5428b1db', 'kcal', 406, 'as-fed'),
  ('05ffebcd-2da7-475d-8887-ce3e5428b1db', 'calcium', 1.3, 'as-fed'),
  ('05ffebcd-2da7-475d-8887-ce3e5428b1db', 'phosphorus', 1, 'as-fed'),
  ('05ffebcd-2da7-475d-8887-ce3e5428b1db', 'omega3', 0.3, 'as-fed'),
  ('05ffebcd-2da7-475d-8887-ce3e5428b1db', 'omega6', 2.2, 'as-fed');

-- Jarco — Hondenbrokken Natural Medium Senior Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-medium-senior-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3653 kcal/kg naar 365.3 kcal/100 g (gedeeld door 10).'
 where id = '347d753d-ab61-4a09-9cdb-f3e479f29f2d';
delete from public.recipe_nutrition where recipe_version_id = '347d753d-ab61-4a09-9cdb-f3e479f29f2d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('347d753d-ab61-4a09-9cdb-f3e479f29f2d', 'protein', 25, 'as-fed'),
  ('347d753d-ab61-4a09-9cdb-f3e479f29f2d', 'fat', 12, 'as-fed'),
  ('347d753d-ab61-4a09-9cdb-f3e479f29f2d', 'fiber', 3, 'as-fed'),
  ('347d753d-ab61-4a09-9cdb-f3e479f29f2d', 'ash', 6, 'as-fed'),
  ('347d753d-ab61-4a09-9cdb-f3e479f29f2d', 'moisture', 9, 'as-fed'),
  ('347d753d-ab61-4a09-9cdb-f3e479f29f2d', 'kcal', 365.3, 'as-fed'),
  ('347d753d-ab61-4a09-9cdb-f3e479f29f2d', 'calcium', 1.1, 'as-fed'),
  ('347d753d-ab61-4a09-9cdb-f3e479f29f2d', 'phosphorus', 0.8, 'as-fed'),
  ('347d753d-ab61-4a09-9cdb-f3e479f29f2d', 'omega3', 0.3, 'as-fed'),
  ('347d753d-ab61-4a09-9cdb-f3e479f29f2d', 'omega6', 2.2, 'as-fed');

-- Jarco — Hondenbrokken Natural Mini Adult Eend (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/natural-mini-adult-eend',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 4060 kcal/kg naar 406 kcal/100 g (gedeeld door 10).'
 where id = 'a9758915-64f7-48c7-978e-fe855ab853fa';
delete from public.recipe_nutrition where recipe_version_id = 'a9758915-64f7-48c7-978e-fe855ab853fa';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a9758915-64f7-48c7-978e-fe855ab853fa', 'protein', 28, 'as-fed'),
  ('a9758915-64f7-48c7-978e-fe855ab853fa', 'fat', 18, 'as-fed'),
  ('a9758915-64f7-48c7-978e-fe855ab853fa', 'fiber', 2.4, 'as-fed'),
  ('a9758915-64f7-48c7-978e-fe855ab853fa', 'ash', 6.4, 'as-fed'),
  ('a9758915-64f7-48c7-978e-fe855ab853fa', 'moisture', 10, 'as-fed'),
  ('a9758915-64f7-48c7-978e-fe855ab853fa', 'kcal', 406, 'as-fed'),
  ('a9758915-64f7-48c7-978e-fe855ab853fa', 'calcium', 1.3, 'as-fed'),
  ('a9758915-64f7-48c7-978e-fe855ab853fa', 'phosphorus', 1, 'as-fed'),
  ('a9758915-64f7-48c7-978e-fe855ab853fa', 'omega3', 0.3, 'as-fed'),
  ('a9758915-64f7-48c7-978e-fe855ab853fa', 'omega6', 2.2, 'as-fed');

-- Jarco — Hondenbrokken Natural Mini Adult Zalm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/natural-hondenbrokken-mini-adult-zalm',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3700 kcal/kg naar 370 kcal/100 g (gedeeld door 10).'
 where id = 'f75151d5-5dd8-4508-bb6d-e9810d46b535';
delete from public.recipe_nutrition where recipe_version_id = 'f75151d5-5dd8-4508-bb6d-e9810d46b535';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f75151d5-5dd8-4508-bb6d-e9810d46b535', 'protein', 23, 'as-fed'),
  ('f75151d5-5dd8-4508-bb6d-e9810d46b535', 'fat', 13, 'as-fed'),
  ('f75151d5-5dd8-4508-bb6d-e9810d46b535', 'fiber', 2.4, 'as-fed'),
  ('f75151d5-5dd8-4508-bb6d-e9810d46b535', 'ash', 6.4, 'as-fed'),
  ('f75151d5-5dd8-4508-bb6d-e9810d46b535', 'moisture', 10, 'as-fed'),
  ('f75151d5-5dd8-4508-bb6d-e9810d46b535', 'kcal', 370, 'as-fed'),
  ('f75151d5-5dd8-4508-bb6d-e9810d46b535', 'calcium', 1, 'as-fed'),
  ('f75151d5-5dd8-4508-bb6d-e9810d46b535', 'phosphorus', 0.9, 'as-fed'),
  ('f75151d5-5dd8-4508-bb6d-e9810d46b535', 'omega3', 0.6, 'as-fed'),
  ('f75151d5-5dd8-4508-bb6d-e9810d46b535', 'omega6', 3, 'as-fed');

-- Jarco — Hondenbrokken Natural Sensitive Hert (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-sensitive-hert',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3650 kcal/kg naar 365 kcal/100 g (gedeeld door 10).'
 where id = '7aabb7f7-fecf-4130-a0e0-2c512b676c77';
delete from public.recipe_nutrition where recipe_version_id = '7aabb7f7-fecf-4130-a0e0-2c512b676c77';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7aabb7f7-fecf-4130-a0e0-2c512b676c77', 'protein', 20, 'as-fed'),
  ('7aabb7f7-fecf-4130-a0e0-2c512b676c77', 'fat', 10, 'as-fed'),
  ('7aabb7f7-fecf-4130-a0e0-2c512b676c77', 'fiber', 2.8, 'as-fed'),
  ('7aabb7f7-fecf-4130-a0e0-2c512b676c77', 'ash', 6.3, 'as-fed'),
  ('7aabb7f7-fecf-4130-a0e0-2c512b676c77', 'moisture', 10, 'as-fed'),
  ('7aabb7f7-fecf-4130-a0e0-2c512b676c77', 'kcal', 365, 'as-fed'),
  ('7aabb7f7-fecf-4130-a0e0-2c512b676c77', 'calcium', 1.2, 'as-fed'),
  ('7aabb7f7-fecf-4130-a0e0-2c512b676c77', 'phosphorus', 0.9, 'as-fed'),
  ('7aabb7f7-fecf-4130-a0e0-2c512b676c77', 'omega3', 0.3, 'as-fed'),
  ('7aabb7f7-fecf-4130-a0e0-2c512b676c77', 'omega6', 2.2, 'as-fed');

-- Jarco — Hondenbrokken Natural Sensitive Insect (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-sensitive-insect',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3260 kcal/kg naar 326 kcal/100 g (gedeeld door 10). Niet vermeld: omega-3, omega-6.'
 where id = 'b1b313a2-b575-4d95-8338-a5c7f9d28489';
delete from public.recipe_nutrition where recipe_version_id = 'b1b313a2-b575-4d95-8338-a5c7f9d28489';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b1b313a2-b575-4d95-8338-a5c7f9d28489', 'protein', 22, 'as-fed'),
  ('b1b313a2-b575-4d95-8338-a5c7f9d28489', 'fat', 12, 'as-fed'),
  ('b1b313a2-b575-4d95-8338-a5c7f9d28489', 'fiber', 5.5, 'as-fed'),
  ('b1b313a2-b575-4d95-8338-a5c7f9d28489', 'ash', 6.5, 'as-fed'),
  ('b1b313a2-b575-4d95-8338-a5c7f9d28489', 'moisture', 9, 'as-fed'),
  ('b1b313a2-b575-4d95-8338-a5c7f9d28489', 'kcal', 326, 'as-fed'),
  ('b1b313a2-b575-4d95-8338-a5c7f9d28489', 'calcium', 1.4, 'as-fed'),
  ('b1b313a2-b575-4d95-8338-a5c7f9d28489', 'phosphorus', 1.1, 'as-fed');

-- Jarco — Hondenbrokken Natural Sensitive Lam (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-sensitive-lam',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3600 kcal/kg naar 360 kcal/100 g (gedeeld door 10).'
 where id = 'a80be764-a0c5-49c2-980e-51a1916d9418';
delete from public.recipe_nutrition where recipe_version_id = 'a80be764-a0c5-49c2-980e-51a1916d9418';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a80be764-a0c5-49c2-980e-51a1916d9418', 'protein', 23, 'as-fed'),
  ('a80be764-a0c5-49c2-980e-51a1916d9418', 'fat', 10, 'as-fed'),
  ('a80be764-a0c5-49c2-980e-51a1916d9418', 'fiber', 3.3, 'as-fed'),
  ('a80be764-a0c5-49c2-980e-51a1916d9418', 'ash', 7.7, 'as-fed'),
  ('a80be764-a0c5-49c2-980e-51a1916d9418', 'moisture', 10, 'as-fed'),
  ('a80be764-a0c5-49c2-980e-51a1916d9418', 'kcal', 360, 'as-fed'),
  ('a80be764-a0c5-49c2-980e-51a1916d9418', 'calcium', 1.4, 'as-fed'),
  ('a80be764-a0c5-49c2-980e-51a1916d9418', 'phosphorus', 1.2, 'as-fed'),
  ('a80be764-a0c5-49c2-980e-51a1916d9418', 'omega3', 0.3, 'as-fed'),
  ('a80be764-a0c5-49c2-980e-51a1916d9418', 'omega6', 2.2, 'as-fed');

-- Jarco — Hondenbrokken Natural Sensitive Zalm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-natural-sensitive-zalm',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3600 kcal/kg naar 360 kcal/100 g (gedeeld door 10).'
 where id = 'b8ab62c7-a256-47f2-9670-eb6dc3da12d4';
delete from public.recipe_nutrition where recipe_version_id = 'b8ab62c7-a256-47f2-9670-eb6dc3da12d4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('b8ab62c7-a256-47f2-9670-eb6dc3da12d4', 'protein', 24, 'as-fed'),
  ('b8ab62c7-a256-47f2-9670-eb6dc3da12d4', 'fat', 13, 'as-fed'),
  ('b8ab62c7-a256-47f2-9670-eb6dc3da12d4', 'fiber', 2.5, 'as-fed'),
  ('b8ab62c7-a256-47f2-9670-eb6dc3da12d4', 'ash', 6, 'as-fed'),
  ('b8ab62c7-a256-47f2-9670-eb6dc3da12d4', 'moisture', 9, 'as-fed'),
  ('b8ab62c7-a256-47f2-9670-eb6dc3da12d4', 'kcal', 360, 'as-fed'),
  ('b8ab62c7-a256-47f2-9670-eb6dc3da12d4', 'calcium', 1.3, 'as-fed'),
  ('b8ab62c7-a256-47f2-9670-eb6dc3da12d4', 'phosphorus', 0.9, 'as-fed'),
  ('b8ab62c7-a256-47f2-9670-eb6dc3da12d4', 'omega3', 0.6, 'as-fed'),
  ('b8ab62c7-a256-47f2-9670-eb6dc3da12d4', 'omega6', 3, 'as-fed');

-- Jarco — Hondenbrokken Veterinair Hypoallergeen H.R.D. (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-veterinair-hypoallergeen-h-r-d',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3645 kcal/kg naar 364.5 kcal/100 g (gedeeld door 10). Niet vermeld: vocht.'
 where id = 'e11dfde6-6a0f-4968-ad76-ade6db3f57d1';
delete from public.recipe_nutrition where recipe_version_id = 'e11dfde6-6a0f-4968-ad76-ade6db3f57d1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e11dfde6-6a0f-4968-ad76-ade6db3f57d1', 'protein', 20, 'as-fed'),
  ('e11dfde6-6a0f-4968-ad76-ade6db3f57d1', 'fat', 10, 'as-fed'),
  ('e11dfde6-6a0f-4968-ad76-ade6db3f57d1', 'fiber', 2.4, 'as-fed'),
  ('e11dfde6-6a0f-4968-ad76-ade6db3f57d1', 'ash', 5.3, 'as-fed'),
  ('e11dfde6-6a0f-4968-ad76-ade6db3f57d1', 'kcal', 364.5, 'as-fed'),
  ('e11dfde6-6a0f-4968-ad76-ade6db3f57d1', 'calcium', 1.2, 'as-fed'),
  ('e11dfde6-6a0f-4968-ad76-ade6db3f57d1', 'phosphorus', 0.7, 'as-fed'),
  ('e11dfde6-6a0f-4968-ad76-ade6db3f57d1', 'omega3', 0.6, 'as-fed'),
  ('e11dfde6-6a0f-4968-ad76-ade6db3f57d1', 'omega6', 1.9, 'as-fed');

-- Jarco — Hondenbrokken Veterinair Hypoallergeen L.R.D. (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-veterinair-hypoallergeen-l-r-d',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3480 kcal/kg naar 348 kcal/100 g (gedeeld door 10).'
 where id = 'a09a453d-9af6-4c08-b190-ed4f888a6113';
delete from public.recipe_nutrition where recipe_version_id = 'a09a453d-9af6-4c08-b190-ed4f888a6113';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('a09a453d-9af6-4c08-b190-ed4f888a6113', 'protein', 23, 'as-fed'),
  ('a09a453d-9af6-4c08-b190-ed4f888a6113', 'fat', 9.8, 'as-fed'),
  ('a09a453d-9af6-4c08-b190-ed4f888a6113', 'fiber', 3, 'as-fed'),
  ('a09a453d-9af6-4c08-b190-ed4f888a6113', 'ash', 7.7, 'as-fed'),
  ('a09a453d-9af6-4c08-b190-ed4f888a6113', 'moisture', 9, 'as-fed'),
  ('a09a453d-9af6-4c08-b190-ed4f888a6113', 'kcal', 348, 'as-fed'),
  ('a09a453d-9af6-4c08-b190-ed4f888a6113', 'calcium', 1.6, 'as-fed'),
  ('a09a453d-9af6-4c08-b190-ed4f888a6113', 'phosphorus', 1.2, 'as-fed'),
  ('a09a453d-9af6-4c08-b190-ed4f888a6113', 'omega3', 0.5, 'as-fed'),
  ('a09a453d-9af6-4c08-b190-ed4f888a6113', 'omega6', 3, 'as-fed');

-- Jarco — Hondenbrokken Veterinair Hypoallergeen P.E.D. (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-veterinair-hypoallergeen-p-e-d',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3515 kcal/kg naar 351.5 kcal/100 g (gedeeld door 10). Niet vermeld: vocht, omega-3, omega-6.'
 where id = '0ea88354-2bd4-4948-ab63-7601f6929edb';
delete from public.recipe_nutrition where recipe_version_id = '0ea88354-2bd4-4948-ab63-7601f6929edb';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0ea88354-2bd4-4948-ab63-7601f6929edb', 'protein', 23, 'as-fed'),
  ('0ea88354-2bd4-4948-ab63-7601f6929edb', 'fat', 9, 'as-fed'),
  ('0ea88354-2bd4-4948-ab63-7601f6929edb', 'fiber', 2.5, 'as-fed'),
  ('0ea88354-2bd4-4948-ab63-7601f6929edb', 'ash', 5.3, 'as-fed'),
  ('0ea88354-2bd4-4948-ab63-7601f6929edb', 'kcal', 351.5, 'as-fed'),
  ('0ea88354-2bd4-4948-ab63-7601f6929edb', 'calcium', 0.9, 'as-fed'),
  ('0ea88354-2bd4-4948-ab63-7601f6929edb', 'phosphorus', 0.6, 'as-fed');

-- Jarco — Hondenbrokken Veterinair Weight reduction V.C.D. (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/hondenbrokken-veterinair-weight-reduction-v-c-d',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 2700 kcal/kg naar 270 kcal/100 g (gedeeld door 10).'
 where id = 'ecd74a39-3ab6-4baf-b772-e2c844c1ad0f';
delete from public.recipe_nutrition where recipe_version_id = 'ecd74a39-3ab6-4baf-b772-e2c844c1ad0f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ecd74a39-3ab6-4baf-b772-e2c844c1ad0f', 'protein', 17, 'as-fed'),
  ('ecd74a39-3ab6-4baf-b772-e2c844c1ad0f', 'fat', 8, 'as-fed'),
  ('ecd74a39-3ab6-4baf-b772-e2c844c1ad0f', 'fiber', 9.5, 'as-fed'),
  ('ecd74a39-3ab6-4baf-b772-e2c844c1ad0f', 'ash', 5, 'as-fed'),
  ('ecd74a39-3ab6-4baf-b772-e2c844c1ad0f', 'moisture', 9, 'as-fed'),
  ('ecd74a39-3ab6-4baf-b772-e2c844c1ad0f', 'kcal', 270, 'as-fed'),
  ('ecd74a39-3ab6-4baf-b772-e2c844c1ad0f', 'calcium', 1, 'as-fed'),
  ('ecd74a39-3ab6-4baf-b772-e2c844c1ad0f', 'phosphorus', 0.7, 'as-fed'),
  ('ecd74a39-3ab6-4baf-b772-e2c844c1ad0f', 'omega3', 0.3, 'as-fed'),
  ('ecd74a39-3ab6-4baf-b772-e2c844c1ad0f', 'omega6', 2.2, 'as-fed');

-- Jarco — Natural Classic Persbrok Vers Vlees Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/natural-classic-persbrok-vers-vlees-kip',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'Energiewaarde omgerekend van 3750 kcal/kg naar 375 kcal/100 g (gedeeld door 10).'
 where id = '0548de6e-52cd-4a84-8a08-6f619f76b107';
delete from public.recipe_nutrition where recipe_version_id = '0548de6e-52cd-4a84-8a08-6f619f76b107';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0548de6e-52cd-4a84-8a08-6f619f76b107', 'protein', 24, 'as-fed'),
  ('0548de6e-52cd-4a84-8a08-6f619f76b107', 'fat', 13, 'as-fed'),
  ('0548de6e-52cd-4a84-8a08-6f619f76b107', 'fiber', 2.7, 'as-fed'),
  ('0548de6e-52cd-4a84-8a08-6f619f76b107', 'ash', 5.3, 'as-fed'),
  ('0548de6e-52cd-4a84-8a08-6f619f76b107', 'moisture', 10, 'as-fed'),
  ('0548de6e-52cd-4a84-8a08-6f619f76b107', 'kcal', 375, 'as-fed'),
  ('0548de6e-52cd-4a84-8a08-6f619f76b107', 'calcium', 1.2, 'as-fed'),
  ('0548de6e-52cd-4a84-8a08-6f619f76b107', 'phosphorus', 0.8, 'as-fed'),
  ('0548de6e-52cd-4a84-8a08-6f619f76b107', 'omega3', 0.4, 'as-fed'),
  ('0548de6e-52cd-4a84-8a08-6f619f76b107', 'omega6', 2, 'as-fed');

-- Jarco — Vers gestoomde maaltijd Eend (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/gestoomde-maaltijd-eend',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'De fabrikant vermeldt geen energiewaarde. De bron vermeldt alleen ''omega 3+6 0,3%'' als gecombineerde waarde; omega-3 en omega-6 zijn daarom null. Niet vermeld: kcal, calcium, fosfor, omega-3, omega-6.'
 where id = '69a2be7f-55dd-497a-b798-04959304cd56';
delete from public.recipe_nutrition where recipe_version_id = '69a2be7f-55dd-497a-b798-04959304cd56';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('69a2be7f-55dd-497a-b798-04959304cd56', 'protein', 10, 'as-fed'),
  ('69a2be7f-55dd-497a-b798-04959304cd56', 'fat', 9.5, 'as-fed'),
  ('69a2be7f-55dd-497a-b798-04959304cd56', 'fiber', 0.5, 'as-fed'),
  ('69a2be7f-55dd-497a-b798-04959304cd56', 'ash', 3.5, 'as-fed'),
  ('69a2be7f-55dd-497a-b798-04959304cd56', 'moisture', 75, 'as-fed');

-- Jarco — Vers gestoomde maaltijd Lam (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/vers-gestoomde-maaltijd-lam',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'De fabrikant vermeldt geen energiewaarde. De bron vermeldt alleen ''omega 3+6 0,3%'' als gecombineerde waarde; omega-3 en omega-6 zijn daarom null. Niet vermeld: kcal, calcium, fosfor, omega-3, omega-6.'
 where id = '25eb62a4-ea58-4994-b96b-2d10507072d4';
delete from public.recipe_nutrition where recipe_version_id = '25eb62a4-ea58-4994-b96b-2d10507072d4';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('25eb62a4-ea58-4994-b96b-2d10507072d4', 'protein', 10, 'as-fed'),
  ('25eb62a4-ea58-4994-b96b-2d10507072d4', 'fat', 9.5, 'as-fed'),
  ('25eb62a4-ea58-4994-b96b-2d10507072d4', 'fiber', 0.5, 'as-fed'),
  ('25eb62a4-ea58-4994-b96b-2d10507072d4', 'ash', 3.5, 'as-fed'),
  ('25eb62a4-ea58-4994-b96b-2d10507072d4', 'moisture', 75, 'as-fed');

-- Jarco — Vers gestoomde maaltijd Zalm (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/vers-gestoomde-maaltijd-zalm',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'De fabrikant vermeldt geen energiewaarde. De bron vermeldt alleen ''omega 3+6 0,3%'' als gecombineerde waarde; omega-3 en omega-6 zijn daarom null. Niet vermeld: kcal, calcium, fosfor, omega-3, omega-6.'
 where id = '98e57926-f142-41bc-a15a-71cb71873914';
delete from public.recipe_nutrition where recipe_version_id = '98e57926-f142-41bc-a15a-71cb71873914';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('98e57926-f142-41bc-a15a-71cb71873914', 'protein', 10, 'as-fed'),
  ('98e57926-f142-41bc-a15a-71cb71873914', 'fat', 9.5, 'as-fed'),
  ('98e57926-f142-41bc-a15a-71cb71873914', 'fiber', 0.5, 'as-fed'),
  ('98e57926-f142-41bc-a15a-71cb71873914', 'ash', 3.5, 'as-fed'),
  ('98e57926-f142-41bc-a15a-71cb71873914', 'moisture', 75, 'as-fed');

-- Jarco — Verse Hondenworst Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/verse-hondenworst-kip-giant',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'De fabrikant vermeldt geen energiewaarde. Niet vermeld: kcal, omega-3, omega-6.'
 where id = '97b2e824-c2f4-495b-b51a-95756d466747';
delete from public.recipe_nutrition where recipe_version_id = '97b2e824-c2f4-495b-b51a-95756d466747';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('97b2e824-c2f4-495b-b51a-95756d466747', 'protein', 9.9, 'as-fed'),
  ('97b2e824-c2f4-495b-b51a-95756d466747', 'fat', 10.4, 'as-fed'),
  ('97b2e824-c2f4-495b-b51a-95756d466747', 'fiber', 2.1, 'as-fed'),
  ('97b2e824-c2f4-495b-b51a-95756d466747', 'ash', 6.1, 'as-fed'),
  ('97b2e824-c2f4-495b-b51a-95756d466747', 'moisture', 58.3, 'as-fed'),
  ('97b2e824-c2f4-495b-b51a-95756d466747', 'calcium', 1.9, 'as-fed'),
  ('97b2e824-c2f4-495b-b51a-95756d466747', 'phosphorus', 0.9, 'as-fed');

-- Jarco — Verse Hondenworst Kip-Eend (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/verse-hondenworst-kip-eend',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'De fabrikant vermeldt geen energiewaarde. Niet vermeld: kcal, omega-3, omega-6.'
 where id = '268798d7-d00d-41c3-9bee-9c828d603b05';
delete from public.recipe_nutrition where recipe_version_id = '268798d7-d00d-41c3-9bee-9c828d603b05';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('268798d7-d00d-41c3-9bee-9c828d603b05', 'protein', 9.3, 'as-fed'),
  ('268798d7-d00d-41c3-9bee-9c828d603b05', 'fat', 10.8, 'as-fed'),
  ('268798d7-d00d-41c3-9bee-9c828d603b05', 'fiber', 1.7, 'as-fed'),
  ('268798d7-d00d-41c3-9bee-9c828d603b05', 'ash', 5, 'as-fed'),
  ('268798d7-d00d-41c3-9bee-9c828d603b05', 'moisture', 60.2, 'as-fed'),
  ('268798d7-d00d-41c3-9bee-9c828d603b05', 'calcium', 2, 'as-fed'),
  ('268798d7-d00d-41c3-9bee-9c828d603b05', 'phosphorus', 0.9, 'as-fed');

-- Jarco — Verse Hondenworst Kip-Kalkoen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/verse-hondenworst-kip-kalkoen-giant',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'De fabrikant vermeldt geen energiewaarde. Niet vermeld: kcal, omega-3, omega-6.'
 where id = 'dc8700b7-5991-4fae-be28-00e6f79f3d1f';
delete from public.recipe_nutrition where recipe_version_id = 'dc8700b7-5991-4fae-be28-00e6f79f3d1f';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('dc8700b7-5991-4fae-be28-00e6f79f3d1f', 'protein', 10.1, 'as-fed'),
  ('dc8700b7-5991-4fae-be28-00e6f79f3d1f', 'fat', 9.2, 'as-fed'),
  ('dc8700b7-5991-4fae-be28-00e6f79f3d1f', 'fiber', 1.8, 'as-fed'),
  ('dc8700b7-5991-4fae-be28-00e6f79f3d1f', 'ash', 5, 'as-fed'),
  ('dc8700b7-5991-4fae-be28-00e6f79f3d1f', 'moisture', 60.9, 'as-fed'),
  ('dc8700b7-5991-4fae-be28-00e6f79f3d1f', 'calcium', 1.5, 'as-fed'),
  ('dc8700b7-5991-4fae-be28-00e6f79f3d1f', 'phosphorus', 0.9, 'as-fed');

-- Jarco — Verse Hondenworst Kip-Konijn (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/verse-hondenworst-kip-konijn-giant',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'De fabrikant vermeldt geen energiewaarde. Niet vermeld: kcal, omega-3, omega-6.'
 where id = '104e0bd7-127b-4cef-84e9-65901e4a0e90';
delete from public.recipe_nutrition where recipe_version_id = '104e0bd7-127b-4cef-84e9-65901e4a0e90';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('104e0bd7-127b-4cef-84e9-65901e4a0e90', 'protein', 10.2, 'as-fed'),
  ('104e0bd7-127b-4cef-84e9-65901e4a0e90', 'fat', 9, 'as-fed'),
  ('104e0bd7-127b-4cef-84e9-65901e4a0e90', 'fiber', 2, 'as-fed'),
  ('104e0bd7-127b-4cef-84e9-65901e4a0e90', 'ash', 6.1, 'as-fed'),
  ('104e0bd7-127b-4cef-84e9-65901e4a0e90', 'moisture', 60.7, 'as-fed'),
  ('104e0bd7-127b-4cef-84e9-65901e4a0e90', 'calcium', 2.1, 'as-fed'),
  ('104e0bd7-127b-4cef-84e9-65901e4a0e90', 'phosphorus', 1, 'as-fed');

-- Jarco — Verse Hondenworst Kip-Rund (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/verse-hondenworst-kip-rund-giant',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'De fabrikant vermeldt geen energiewaarde. Niet vermeld: kcal, omega-3, omega-6.'
 where id = '8c505b8f-e8d2-4ed8-8107-d55324795585';
delete from public.recipe_nutrition where recipe_version_id = '8c505b8f-e8d2-4ed8-8107-d55324795585';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('8c505b8f-e8d2-4ed8-8107-d55324795585', 'protein', 10.1, 'as-fed'),
  ('8c505b8f-e8d2-4ed8-8107-d55324795585', 'fat', 9.2, 'as-fed'),
  ('8c505b8f-e8d2-4ed8-8107-d55324795585', 'fiber', 1.8, 'as-fed'),
  ('8c505b8f-e8d2-4ed8-8107-d55324795585', 'ash', 5, 'as-fed'),
  ('8c505b8f-e8d2-4ed8-8107-d55324795585', 'moisture', 60.9, 'as-fed'),
  ('8c505b8f-e8d2-4ed8-8107-d55324795585', 'calcium', 1.5, 'as-fed'),
  ('8c505b8f-e8d2-4ed8-8107-d55324795585', 'phosphorus', 0.9, 'as-fed');

-- Jarco — Verse Hondenworst Sensitive Lam (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/verse-hondenworst-sensitive-lam',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'De fabrikant vermeldt geen energiewaarde. Niet vermeld: kcal, omega-3, omega-6.'
 where id = 'aa17c64b-b1d6-4878-8af9-6844fe599750';
delete from public.recipe_nutrition where recipe_version_id = 'aa17c64b-b1d6-4878-8af9-6844fe599750';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('aa17c64b-b1d6-4878-8af9-6844fe599750', 'protein', 11.7, 'as-fed'),
  ('aa17c64b-b1d6-4878-8af9-6844fe599750', 'fat', 8, 'as-fed'),
  ('aa17c64b-b1d6-4878-8af9-6844fe599750', 'fiber', 1.4, 'as-fed'),
  ('aa17c64b-b1d6-4878-8af9-6844fe599750', 'ash', 0.7, 'as-fed'),
  ('aa17c64b-b1d6-4878-8af9-6844fe599750', 'moisture', 67.2, 'as-fed'),
  ('aa17c64b-b1d6-4878-8af9-6844fe599750', 'calcium', 0.7, 'as-fed'),
  ('aa17c64b-b1d6-4878-8af9-6844fe599750', 'phosphorus', 0.1, 'as-fed');

-- Jarco — Vleeskuipjes Kip (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://jarco.nl/products/vleeskuipjes-kip-2x-150-gr-verpakt-a-6x-2-st',
       nutrition_checked_at = '2026-10-30',
       nutrition_note = 'De fabrikant vermeldt geen energiewaarde. Eiwit, vet en vezel zijn minimumwaarden en as en vocht maximumwaarden, zoals op de bron vermeld. Niet vermeld: kcal, calcium, fosfor, omega-3, omega-6.'
 where id = '0958090f-2fd0-404c-a29e-034e6d4dedd8';
delete from public.recipe_nutrition where recipe_version_id = '0958090f-2fd0-404c-a29e-034e6d4dedd8';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('0958090f-2fd0-404c-a29e-034e6d4dedd8', 'protein', 9.5, 'as-fed'),
  ('0958090f-2fd0-404c-a29e-034e6d4dedd8', 'fat', 8.5, 'as-fed'),
  ('0958090f-2fd0-404c-a29e-034e6d4dedd8', 'fiber', 0.8, 'as-fed'),
  ('0958090f-2fd0-404c-a29e-034e6d4dedd8', 'ash', 1.6, 'as-fed'),
  ('0958090f-2fd0-404c-a29e-034e6d4dedd8', 'moisture', 72, 'as-fed');

commit;
