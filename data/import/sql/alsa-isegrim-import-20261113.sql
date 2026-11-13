-- Automatisch overgenomen etiketten, batch 1 van 2026-11-13 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Alsa Nature — Hert & Aardappel granenvrij (6 kg)
-- bron: https://www.alsa-nature.nl/p/91005900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Hert & Aardappel granenvrij', 'kibble', '6 kg', '4050001108881', 'https://www.alsa-nature.nl/p/91005900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Aardappel 39%, hert 15%, bietenvezels, aardappeleiwit, vet van gevogelte, hele eierpoeder, biergist, zalmolie, lijnzaad, lecithine, gevogeltelever gehydroliseerd, kruiden, fructoligosaccharide, inuline', true, now(), 'sha256:c4754800a879ca840fba60bbdba5df9f2379aafdb50355e33d48cceff5d1eb40', null from p;

-- Alsa Nature — Gevogelte & Aardappel granenvrij (12 kg)
-- bron: https://www.alsa-nature.nl/p/91005200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', 'kibble', '12 kg', '4050001108744', 'https://www.alsa-nature.nl/p/91005200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Aardappelgranulaat 33,3%, gevogeltevlees 29%, aardappelzetmeel 11%, gevogeltevet, bietenvezels, aardappeleiwit, Johannisbroodmeel, gevogelte-eiwit gehydroliseert 3%, aardappeleiwit 2%, gist, plantaardige eiwit gehydrolyseerd, natriumchloride, cichorei poeder, gedroogde algen, nieuwzeelandse groenlipmossel (Perna canaliculus) gedroogd', true, now(), 'sha256:02116e1235be7683f0ce653a217eed8c35ed041aee3cc8729c18c2cc0ac75986', null from p;

-- Alsa Nature — Eend & Zoete aardappel granenvrij (1,5 kg)
-- bron: https://www.alsa-nature.nl/p/91008000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', 'kibble', '1,5 kg', '4050001111270', 'https://www.alsa-nature.nl/p/91008000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Zoete aardappel (52%), eend (32%), gevogeltevet, gevogelte-eiwit gehydrolyseerd, canola, zonnebloemolie, lijnzaad, biergist, Yucca Schidigera extract, inuline, Nieuw-Zeelandse groenlipmossel (0,2%)', true, now(), 'sha256:513a68ad5abe953dfb590a5a300b6794ffbbcf7b966593e3323d6dd6186f8b18', null from p;

-- Alsa Nature — Zalm-sausmenu (2 x 12 kg)
-- bron: https://www.alsa-nature.nl/p/91290401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Zalm-sausmenu', 'kibble', '2 x 12 kg', null, 'https://www.alsa-nature.nl/p/91290401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte 27%, maïs, rijst, vet van gevogelte, bietenvezels, zalm 4%, aardappelzetmeel, gevogelte eiwit gehydroliseerd 2%, plantaardig eiwit gehydrolyseerd, gevogeltelever gedroogd, hemoglobinepoeder, natriumchloride, cichoreipoeder, gist, Nieuw-Zeelandse groenlipmossel (Perna canaliculus) gedroogd', true, now(), 'sha256:f1c2c20db8c00a32fc503e96254630fee3a704c15e2872d33b5eb8a6bc001e03', null from p;

-- Alsa Nature — Senso Medium Eiwit (6 kg)
-- bron: https://www.alsa-nature.nl/p/91130701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senso Medium Eiwit', 'kibble', '6 kg', '4050001101592', 'https://www.alsa-nature.nl/p/91130701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, lamsvlees 26%, bietenvezels, vet van gevogelte, gist gehydroliseerd, johannesbroodpitmeel, gist, natriumchloride, kaliumchloride', true, now(), 'sha256:66708d65a4ce00ff20fceba5f0532e8363a6b952da38d9760e6686b913914547', null from p;

-- Alsa Nature — Hert & Aardappel granenvrij (12 kg)
-- bron: https://www.alsa-nature.nl/p/91006000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Hert & Aardappel granenvrij', 'kibble', '12 kg', '4050001106344', 'https://www.alsa-nature.nl/p/91006000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Aardappel 39%, hert 15%, bietenvezels, aardappeleiwit, vet van gevogelte, hele eierpoeder, biergist, zalmolie, lijnzaad, lecithine, gevogeltelever gehydroliseerd, kruiden, fructoligosaccharide, inuline', true, now(), 'sha256:c4754800a879ca840fba60bbdba5df9f2379aafdb50355e33d48cceff5d1eb40', null from p;

-- Alsa Nature — Haring & Aardappel granenvrij (2 x 12 kg)
-- bron: https://www.alsa-nature.nl/p/91004600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Haring & Aardappel granenvrij', 'kibble', '2 x 12 kg', null, 'https://www.alsa-nature.nl/p/91004600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Aardappel 37%, haring 20%, bietenpulp, aardappeleiwit, vet van gevogelte, heel eipoeder, biergist, zalmolie, gehydrolyseerde kippenlever, kruiden, fructo-oligosacchariden, inuline', true, now(), 'sha256:586033dda6b3b4aca81738410b17cf3196ee49ccd3f992111348274ee08232f6', null from p;

-- Alsa Nature — Senso Medium Eiwit (12 kg)
-- bron: https://www.alsa-nature.nl/p/91130801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senso Medium Eiwit', 'kibble', '12 kg', '4050001101608', 'https://www.alsa-nature.nl/p/91130801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, lamsvlees 26%, bietenvezels, vet van gevogelte, gist gehydroliseerd, johannesbroodpitmeel, gist, natriumchloride, kaliumchloride', true, now(), 'sha256:66708d65a4ce00ff20fceba5f0532e8363a6b952da38d9760e6686b913914547', null from p;

-- Alsa Nature — Actief Speciaal Eiwit (3 kg)
-- bron: https://www.alsa-nature.nl/p/91110201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Actief Speciaal Eiwit', 'kibble', '3 kg', '4050001101691', 'https://www.alsa-nature.nl/p/91110201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte 25%, maïs, oliën en vetten, rijst, bietenvezels, zalm 4%, gevogelte eiwit 1,5%, natriumchloride, cichorei poeder, kaliumchloride, Nieuw-Zeelandse groenlipmossel', true, now(), 'sha256:bfbd8ecc61d37d4a2acd0b0048dccdc8b51990d09f52ae4e97ebc914572808d9', null from p;

-- Alsa Nature — Senso Medium Eiwit (3 kg)
-- bron: https://www.alsa-nature.nl/p/91130601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senso Medium Eiwit', 'kibble', '3 kg', '4050001101585', 'https://www.alsa-nature.nl/p/91130601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, lamsvlees 26%, bietenvezels, vet van gevogelte, gist gehydroliseerd, johannesbroodpitmeel, gist, natriumchloride, kaliumchloride', true, now(), 'sha256:66708d65a4ce00ff20fceba5f0532e8363a6b952da38d9760e6686b913914547', null from p;

-- Alsa Nature — JUNIOR Medium eiwit (6 kg)
-- bron: https://www.alsa-nature.nl/p/91120701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Medium eiwit', 'kibble', '6 kg', '4050001101639', 'https://www.alsa-nature.nl/p/91120701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gevogelte 26%, rijst, bietenvezels, eend 5%, vet van gevogelte, gevogelte eiwit gehydroliseerd 3%, maïseiwit, natriumchloride, gist, cichorei poeder, Nieuw-Zeelandse groenlipmossel (Perna canaliculus)', true, now(), 'sha256:5f3e52e64207eeaa8ea00c873cb5ef7fb74b25ca415bc0b86d1117d603110071', null from p;

-- Alsa Nature — INSECTUM Aardappel (3 kg)
-- bron: https://www.alsa-nature.nl/p/910089
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'INSECTUM Aardappel', 'kibble', '3 kg', '4050001114127', 'https://www.alsa-nature.nl/p/910089', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Aardappelgranulaat 34%, erwten, zonnebloemolie, insecten 10% (zwarte soldaatvlieg), gist, aardappeleiwit 9%, gehydrolyseerde gist, gedroogde bietenvezels, johannisbroodmeel, calciumcarbonaat, mononatriumfosfaat, natriumchloride', true, now(), 'sha256:22330286e4799c23c1e63e5d77f63c2a4b473f8cfd1853bb12f5ce7276f01d2c', null from p;

-- Alsa Nature — Vegetarisch (6 kg)
-- bron: https://www.alsa-nature.nl/p/91140301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Vegetarisch', 'kibble', '6 kg', '4050001102025', 'https://www.alsa-nature.nl/p/91140301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, rijst, gerst, rijstmeel, erwten, mineralen (monocalciumfosfaat, calciumcarbonaat, natriumchloride, kaliumchloride), zonnebloemolie, lijnzaad, bietenvezels, gist', true, now(), 'sha256:4b901bdb197b83753055c483cfc03829d8908a1f62c410f590a523ef0424e4f2', null from p;

-- Alsa Nature — Eend & Zoete aardappel granenvrij (6 kg)
-- bron: https://www.alsa-nature.nl/p/91008200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', 'kibble', '6 kg', '4050001111294', 'https://www.alsa-nature.nl/p/91008200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Zoete aardappel (52%), eend (32%), gevogeltevet, gevogelte-eiwit gehydrolyseerd, canola, zonnebloemolie, lijnzaad, biergist, Yucca Schidigera extract, inuline, Nieuw-Zeelandse groenlipmossel (0,2%)', true, now(), 'sha256:513a68ad5abe953dfb590a5a300b6794ffbbcf7b966593e3323d6dd6186f8b18', null from p;

-- Alsa Nature — Senso (6 kg)
-- bron: https://www.alsa-nature.nl/p/91130301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senso', 'kibble', '6 kg', '4050001101486', 'https://www.alsa-nature.nl/p/91130301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, lamsvlees 21%, rijst, gerst, vet van gevogelte, gevogelte, bietenvezels, dierlijk eiwit gehydroliseerd, gist, natriumchloride, kaliumchloride, maïseiwit', true, now(), 'sha256:e7448111f2026dbb86e88629959b4b5a613f87c3fabc62e9b19efd35c3699d76', null from p;

-- Alsa Nature — Zalm-sausmenu (3 kg)
-- bron: https://www.alsa-nature.nl/p/91290101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Zalm-sausmenu', 'kibble', '3 kg', '4050001101882', 'https://www.alsa-nature.nl/p/91290101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte 27%, maïs, rijst, vet van gevogelte, bietenvezels, zalm 4%, aardappelzetmeel, gevogelte eiwit gehydroliseerd 2%, plantaardig eiwit gehydrolyseerd, gevogeltelever gedroogd, hemoglobinepoeder, natriumchloride, cichoreipoeder, gist, Nieuw-Zeelandse groenlipmossel (Perna canaliculus) gedroogd', true, now(), 'sha256:f1c2c20db8c00a32fc503e96254630fee3a704c15e2872d33b5eb8a6bc001e03', null from p;

-- Alsa Nature — Lam & Rijst brokken (6 kg)
-- bron: https://www.alsa-nature.nl/p/91160301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Lam & Rijst brokken', 'kibble', '6 kg', '4050001101950', 'https://www.alsa-nature.nl/p/91160301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gevogelte, Rijst 11,8%, lamsvlees 6,3%, vet van gevogelte, bietenvezels, maïseiwit, gevogelteeiwit gehydroliseerd 1,4%, natriumchloride, dierlijk eiwit gehydroliseerd, rode bieten poeder, gist, kaliumchloride', true, now(), 'sha256:39bb0a4fb084c04d4a84b4851be89e3b79f3463448b7e7abbecdce53e955e4d5', null from p;

-- Alsa Nature — Lam & Rijst brokken (2 x 12 kg)
-- bron: https://www.alsa-nature.nl/p/91160501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Lam & Rijst brokken', 'kibble', '2 x 12 kg', null, 'https://www.alsa-nature.nl/p/91160501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gevogelte, Rijst 11,8%, lamsvlees 6,3%, vet van gevogelte, bietenvezels, maïseiwit, gevogelteeiwit gehydroliseerd 1,4%, natriumchloride, dierlijk eiwit gehydroliseerd, rode bieten poeder, gist, kaliumchloride', true, now(), 'sha256:39bb0a4fb084c04d4a84b4851be89e3b79f3463448b7e7abbecdce53e955e4d5', null from p;

-- Alsa Nature — Zalm-sausmenu (6 kg)
-- bron: https://www.alsa-nature.nl/p/91290201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Zalm-sausmenu', 'kibble', '6 kg', '4050001101899', 'https://www.alsa-nature.nl/p/91290201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte 27%, maïs, rijst, vet van gevogelte, bietenvezels, zalm 4%, aardappelzetmeel, gevogelte eiwit gehydroliseerd 2%, plantaardig eiwit gehydrolyseerd, gevogeltelever gedroogd, hemoglobinepoeder, natriumchloride, cichoreipoeder, gist, Nieuw-Zeelandse groenlipmossel (Perna canaliculus) gedroogd', true, now(), 'sha256:f1c2c20db8c00a32fc503e96254630fee3a704c15e2872d33b5eb8a6bc001e03', null from p;

-- Alsa Nature — BIG-JUNIOR Medium eiwit (2 x 12 kg)
-- bron: https://www.alsa-nature.nl/p/91360501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'BIG-JUNIOR Medium eiwit', 'kibble', '2 x 12 kg', null, 'https://www.alsa-nature.nl/p/91360501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gevogelte 27%, rijst, bietenvezels, vet van gevogelte, gevogelteeiwit gehydroliseerd 3%, maïseiwit, natriumchloride, gist, cichoreipoeder, kaliumchloride, vlees van de Nieuw-Zeelandse groenlipmossel (Perna canaliculus) gedroogd', true, now(), 'sha256:0a0e6e3c40b0348922d16a4a3f503cb96ebc46757e29a5f22abc703d84a01ddb', null from p;

-- Alsa Nature — Senior Wild & Konijn met aardappel & paardebloem (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92005201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92005201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% Wild (bestaande uit hart, vlees, lever, longen en pens van wild), 30,3% bouillon, 14% konijn, 4% aardappel, 1% mineralen, 0,5% teunisbloemolie, 0,2% paardenbloem', true, now(), 'sha256:633e97168ca30226a051589ab231d99701c1976f762d60122c82efdee0a80734', null from p;

-- Alsa Nature — Classic Hert met zoete aardappel en kastanjes (12 x 200 g)
-- bron: https://www.alsa-nature.nl/p/92007301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', 'wet', '12 x 200 g', null, 'https://www.alsa-nature.nl/p/92007301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Hert, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 27,9% bouillon, 5% zoete aardappel, 1% kastanje, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:f6769b7bfa9d15eac38dc1a78c0c9acb6b0c81a72d8643a3fd426c161d0da13c', null from p;

-- Alsa Nature — Classic Hert met zoete aardappel en kastanjes (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92007501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92007501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Hert, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 27,9% bouillon, 5% zoete aardappel, 1% kastanje, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:f6769b7bfa9d15eac38dc1a78c0c9acb6b0c81a72d8643a3fd426c161d0da13c', null from p;

-- Alsa Nature — BIG-JUNIOR Medium eiwit (12 kg)
-- bron: https://www.alsa-nature.nl/p/91360401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'BIG-JUNIOR Medium eiwit', 'kibble', '12 kg', '4050001101684', 'https://www.alsa-nature.nl/p/91360401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gevogelte 27%, rijst, bietenvezels, vet van gevogelte, gevogelteeiwit gehydroliseerd 3%, maïseiwit, natriumchloride, gist, cichoreipoeder, kaliumchloride, vlees van de Nieuw-Zeelandse groenlipmossel (Perna canaliculus) gedroogd', true, now(), 'sha256:0a0e6e3c40b0348922d16a4a3f503cb96ebc46757e29a5f22abc703d84a01ddb', null from p;

-- Alsa Nature — Zalm-sausmenu (12 kg)
-- bron: https://www.alsa-nature.nl/p/91290301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Zalm-sausmenu', 'kibble', '12 kg', '4050001101905', 'https://www.alsa-nature.nl/p/91290301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte 27%, maïs, rijst, vet van gevogelte, bietenvezels, zalm 4%, aardappelzetmeel, gevogelte eiwit gehydroliseerd 2%, plantaardig eiwit gehydrolyseerd, gevogeltelever gedroogd, hemoglobinepoeder, natriumchloride, cichoreipoeder, gist, Nieuw-Zeelandse groenlipmossel (Perna canaliculus) gedroogd', true, now(), 'sha256:f1c2c20db8c00a32fc503e96254630fee3a704c15e2872d33b5eb8a6bc001e03', null from p;

-- Alsa Nature — Classic Kalfs-Ragout met Peterselie-aardappel en pompoen (400 g)
-- bron: https://www.alsa-nature.nl/p/92002601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', 'wet', '400 g', '4050001116312', 'https://www.alsa-nature.nl/p/92002601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kalf, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,4% bouillon, 5% aardappel, 2% pompoen, 1% mineralen, 0,5% peterselie, 0,1% distelolie', true, now(), 'sha256:6df952e1d131a664ded8343a27b3f93da3a6aad25a4d1e50d18ae32adfdecaeb', null from p;

-- Alsa Nature — Classic Kwartel met aardappel en koolrabi (400 g)
-- bron: https://www.alsa-nature.nl/p/92013100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', 'wet', '400 g', '4050001116350', 'https://www.alsa-nature.nl/p/92013100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% Rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26% bouillon, 15% kwartel, 5% aardappel, 3% koolrabi, 1% mineralen', true, now(), 'sha256:b34177852786f441a0f1805bf3ea24ab7230c5ecbe9e3826c17a3685bcf72f31', null from p;

-- Alsa Nature — Classic Hert met zoete aardappel en kastanjes (400 g)
-- bron: https://www.alsa-nature.nl/p/92007401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', 'wet', '400 g', '4050001116121', 'https://www.alsa-nature.nl/p/92007401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Hert, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 27,9% bouillon, 5% zoete aardappel, 1% kastanje, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:f6769b7bfa9d15eac38dc1a78c0c9acb6b0c81a72d8643a3fd426c161d0da13c', null from p;

-- Alsa Nature — Classic Kwartel met aardappel en koolrabi (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92013300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92013300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% Rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26% bouillon, 15% kwartel, 5% aardappel, 3% koolrabi, 1% mineralen', true, now(), 'sha256:b34177852786f441a0f1805bf3ea24ab7230c5ecbe9e3826c17a3685bcf72f31', null from p;

-- Alsa Nature — Classic Hert met zoete aardappel en kastanjes (800 g)
-- bron: https://www.alsa-nature.nl/p/92007701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', 'wet', '800 g', '4050001116138', 'https://www.alsa-nature.nl/p/92007701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Hert, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 27,9% bouillon, 5% zoete aardappel, 1% kastanje, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:f6769b7bfa9d15eac38dc1a78c0c9acb6b0c81a72d8643a3fd426c161d0da13c', null from p;

-- Alsa Nature — Classic Hert met zoete aardappel en kastanjes (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92007901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92007901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Hert, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 27,9% bouillon, 5% zoete aardappel, 1% kastanje, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:f6769b7bfa9d15eac38dc1a78c0c9acb6b0c81a72d8643a3fd426c161d0da13c', null from p;

-- Alsa Nature — Classic Struisvogel met aardappelen en broccoli (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92013800
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92013800', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 25,9% bouillon, 20% struisvogel, 5% aardappel, 3% broccoli, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:aa28d20a59b1235e7fd62b9afbe0c399166fa3d4c12f60049da51b57aeb5677a', null from p;

-- Alsa Nature — SINGLE Paard met aardappel (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92019000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Paard met aardappel', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92019000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Paard (bestaande uit paardenvlees, paardenhart, paardenlever), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:425d605b0eb5772fa93f681b963c849f368b11355f86314d2a96628ef17c75f0', null from p;

-- Alsa Nature — Classic Kwartel met aardappel en koolrabi (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92013500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92013500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% Rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26% bouillon, 15% kwartel, 5% aardappel, 3% koolrabi, 1% mineralen', true, now(), 'sha256:b34177852786f441a0f1805bf3ea24ab7230c5ecbe9e3826c17a3685bcf72f31', null from p;

-- Alsa Nature — Classic Bizon met pastinaak, rode bieten & appel (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92026700
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92026700', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '30% Bizon, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,9% bouillon, 3% pastinaak, 3% rode bieten, 3% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:c94f42101f67b5b48ced5069838cc0e21d28c8055bebab4fd53ad2dfba56bc1b', null from p;

-- Alsa Nature — Classic Kalkoen met zoete aardappel, peer & paardebloem (6 x 200 g)
-- bron: https://www.alsa-nature.nl/p/92027000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', 'wet', '6 x 200 g', null, 'https://www.alsa-nature.nl/p/92027000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '31% Kalkoen (bestaande uit kalkoenenharten, kalkoenvlees, kalkoenlever, kalkoenennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,9% bouillon, 3% zoete aardappel, 3% peer, 1% paardenbloem, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:25559e76815297ca19ceb3b9957f3b08a32043e417960a8285520bc27b9a93d0', null from p;

-- Alsa Nature — SINGLE Kalkoen puur (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92028300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kalkoen puur', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92028300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoennekken), bouillon 28,5%, mineralen 1%, distelolie 0,5%', true, now(), 'sha256:7c01b711f4038061fb77e21d0d0cc1fa8a01462032c83e0701e566f974e08b91', null from p;

-- Alsa Nature — JUNIOR Kip met pastinaak & appel (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92028800
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Kip met pastinaak & appel', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92028800', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 28,8% bouillon, 3% pastinaak, 3% appel, 1% mineralen, 0,1% levertraan, 0,1% lijnolie', true, now(), 'sha256:62136434906283004c379230d0485b915532284da9ec6eb5a09f3b267076a2ff', null from p;

-- Alsa Nature — JUNIOR Eend met abrikoos (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92029800
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Eend met abrikoos', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92029800', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '30% Eend, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,8% bouillon, 3% pompoen, 3% venkel, 3% abrikoos, 1% mineralen, 0,1% levertraan, 0,1% lijnolie', true, now(), 'sha256:571bc9e84fdbef76c4f7d66f241b80b1fd25f45a410a2ce91e0e1ea089343b96', null from p;

-- Alsa Nature — SINGLE Rendier met aardappel (120 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920651
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Rendier met aardappel', 'wet', '120 x 400 g', null, 'https://www.alsa-nature.nl/p/920651', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Rendier, 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:5e00e05c0e60cac39c54f32530c54082eed627c0e03825fae4926eaa3f86ae6f', null from p;

-- Alsa Nature — SINGLE Rendier met aardappel (120 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920655
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Rendier met aardappel', 'wet', '120 x 800 g', null, 'https://www.alsa-nature.nl/p/920655', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Rendier, 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:5e00e05c0e60cac39c54f32530c54082eed627c0e03825fae4926eaa3f86ae6f', null from p;

-- Alsa Nature — SINGLE Paard met aardappel (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92019400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Paard met aardappel', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92019400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Paard (bestaande uit paardenvlees, paardenhart, paardenlever), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:425d605b0eb5772fa93f681b963c849f368b11355f86314d2a96628ef17c75f0', null from p;

-- Alsa Nature — BIO Rund met aardappel en rode bieten (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92022100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'BIO Rund met aardappel en rode bieten', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92022100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '65% Rund*, 28% bouillon*, 4% aardappel*, 2% rode bieten*, 1% mineralen. *Uit gecontroleerde biologische aanbouw/houderij', true, now(), 'sha256:3bd8db67cabb46bfb5b499db98d7e4513b052d271266932b9c896a3451b99540', null from p;

-- Alsa Nature — Classic Kalkoen met zoete aardappel, peer & paardebloem (200 g)
-- bron: https://www.alsa-nature.nl/p/92026900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', 'wet', '200 g', '4050001116282', 'https://www.alsa-nature.nl/p/92026900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '31% Kalkoen (bestaande uit kalkoenenharten, kalkoenvlees, kalkoenlever, kalkoenennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,9% bouillon, 3% zoete aardappel, 3% peer, 1% paardenbloem, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:25559e76815297ca19ceb3b9957f3b08a32043e417960a8285520bc27b9a93d0', null from p;

-- Alsa Nature — Classic Kalkoen met zoete aardappel, peer & paardebloem (12 x 200 g)
-- bron: https://www.alsa-nature.nl/p/92027100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', 'wet', '12 x 200 g', null, 'https://www.alsa-nature.nl/p/92027100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '31% Kalkoen (bestaande uit kalkoenenharten, kalkoenvlees, kalkoenlever, kalkoenennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,9% bouillon, 3% zoete aardappel, 3% peer, 1% paardenbloem, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:25559e76815297ca19ceb3b9957f3b08a32043e417960a8285520bc27b9a93d0', null from p;

-- Alsa Nature — SINGLE Geit met pastinaak (60 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920665
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Geit met pastinaak', 'wet', '60 x 400 g', null, 'https://www.alsa-nature.nl/p/920665', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Geit (bestaande uit geitenspiervlees, geitenhart, geitenlever, geitenlong), 29,5% bouillon, 5% pastinaak, 1% mineralen, 0,5% lijnolie.', true, now(), 'sha256:e407571587adef11047ea053b3136f6fea0fdfcf7265b73108285aea3ba5fd67', null from p;

-- Alsa Nature — SINGLE Gans puur (120 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920663
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Gans puur', 'wet', '120 x 800 g', null, 'https://www.alsa-nature.nl/p/920663', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Gans, 28,5% bouillon, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:57e1b17c747342add9952c2fab7b32537999c9f7cdd3de28ad981b0ca43a4bea', null from p;

-- Alsa Nature — SINGLE Geit met pastinaak (30 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920664
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Geit met pastinaak', 'wet', '30 x 400 g', null, 'https://www.alsa-nature.nl/p/920664', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Geit (bestaande uit geitenspiervlees, geitenhart, geitenlever, geitenlong), 29,5% bouillon, 5% pastinaak, 1% mineralen, 0,5% lijnolie.', true, now(), 'sha256:e407571587adef11047ea053b3136f6fea0fdfcf7265b73108285aea3ba5fd67', null from p;

-- Alsa Nature — SINGLE Geit met pastinaak (120 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920671
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Geit met pastinaak', 'wet', '120 x 800 g', null, 'https://www.alsa-nature.nl/p/920671', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Geit (bestaande uit geitenspiervlees, geitenhart, geitenlever, geitenlong), 29,5% bouillon, 5% pastinaak, 1% mineralen, 0,5% lijnolie.', true, now(), 'sha256:e407571587adef11047ea053b3136f6fea0fdfcf7265b73108285aea3ba5fd67', null from p;

-- Alsa Nature — SINGLE Gans puur (60 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920657
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Gans puur', 'wet', '60 x 400 g', null, 'https://www.alsa-nature.nl/p/920657', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Gans, 28,5% bouillon, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:57e1b17c747342add9952c2fab7b32537999c9f7cdd3de28ad981b0ca43a4bea', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;

-- Automatisch overgenomen etiketten, batch 2 van 2026-11-13 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Alsa Nature — JUBILEUM Rund (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92075401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Rund', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92075401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% rund (bestaande uit runderhart, rundvlees, runderlever, runderlong, runderpens, rundernieren), 28,8% bouillon, 5% aardappelen, 2% peterselie, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:771bb3f986b2652161946b757159c16f02d5f9a7d5b4c882668b0b05416743b2', null from p;

-- Alsa Nature — JUBILEUM Kip & Zalm (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92076901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip & Zalm', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92076901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '52% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken), 28,8% bouillon, 15% zalm, 3% spinazie, 1% mineralen, 0,2% zalmolie', true, now(), 'sha256:6f1eddee8ba63562136d6416b4053537e664e6ec6633940f716361d3465ab54c', null from p;

-- Alsa Nature — SINGLE Gans puur (90 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920662
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Gans puur', 'wet', '90 x 800 g', null, 'https://www.alsa-nature.nl/p/920662', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Gans, 28,5% bouillon, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:57e1b17c747342add9952c2fab7b32537999c9f7cdd3de28ad981b0ca43a4bea', null from p;

-- Alsa Nature — JUBILEUM Kip & Zalm (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92077201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip & Zalm', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92077201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '52% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken), 28,8% bouillon, 15% zalm, 3% spinazie, 1% mineralen, 0,2% zalmolie', true, now(), 'sha256:6f1eddee8ba63562136d6416b4053537e664e6ec6633940f716361d3465ab54c', null from p;

-- Alsa Nature — SINGLE Geit met pastinaak (60 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920669
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Geit met pastinaak', 'wet', '60 x 800 g', null, 'https://www.alsa-nature.nl/p/920669', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Geit (bestaande uit geitenspiervlees, geitenhart, geitenlever, geitenlong), 29,5% bouillon, 5% pastinaak, 1% mineralen, 0,5% lijnolie.', true, now(), 'sha256:e407571587adef11047ea053b3136f6fea0fdfcf7265b73108285aea3ba5fd67', null from p;

-- Alsa Nature — Classic Lam met volkorenpasta en wortel (6 x 200 g)
-- bron: https://www.alsa-nature.nl/p/92130801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', 'wet', '6 x 200 g', null, 'https://www.alsa-nature.nl/p/92130801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslongen, lamspens), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,9% bouillon, 5% volkorennoedels, 4% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:8c1c078fccceb1540b1c64b7506e19a88ba3eebb39424e173a7574b7ebb268cb', null from p;

-- Alsa Nature — JUBILEUM Wild (400 g)
-- bron: https://www.alsa-nature.nl/p/92076201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Wild', 'wet', '400 g', '4050001120203', 'https://www.alsa-nature.nl/p/92076201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% wild, 28,8% bouillon, 5% zoete aardappel, 2% aalbessen, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:16825c78e6d041a25818c34c7bb15dd92c849f855e9df6316e5f218e5466bf31', null from p;

-- Alsa Nature — Classic Lam met volkorenpasta en wortel (200 g)
-- bron: https://www.alsa-nature.nl/p/92130701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', 'wet', '200 g', '4050001116183', 'https://www.alsa-nature.nl/p/92130701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslongen, lamspens), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,9% bouillon, 5% volkorennoedels, 4% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:8c1c078fccceb1540b1c64b7506e19a88ba3eebb39424e173a7574b7ebb268cb', null from p;

-- Alsa Nature — JUBILEUM Wild (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92076401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Wild', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92076401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% wild, 28,8% bouillon, 5% zoete aardappel, 2% aalbessen, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:16825c78e6d041a25818c34c7bb15dd92c849f855e9df6316e5f218e5466bf31', null from p;

-- Alsa Nature — SINGLE Gans puur (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92260501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Gans puur', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92260501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Gans, 28,5% bouillon, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:57e1b17c747342add9952c2fab7b32537999c9f7cdd3de28ad981b0ca43a4bea', null from p;

-- Alsa Nature — Classic Rund & Rijst met rode bieten & appel (400 g)
-- bron: https://www.alsa-nature.nl/p/92200101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', 'wet', '400 g', '4050001116169', 'https://www.alsa-nature.nl/p/92200101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% Rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 27,9% bouillon, 4% rijst, 2% rode biet, 2% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:2ece60d8d8fad762f709ba0d2e3ee48cae2b942fa53a1845a03266d395bab419', null from p;

-- Alsa Nature — Classic Eend met ham en spinazie ravioli (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92190501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92190501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Eend, 28,9% bouillon, 27% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 5% italiaanse ham, 5% spinazie ravioli, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:408129383c82a50aa59e651e4d27f4aaef9f7f0902bab9e267b8f38bdab2e515', null from p;

-- Alsa Nature — SINGLE Gans puur (400 g)
-- bron: https://www.alsa-nature.nl/p/92260401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Gans puur', 'wet', '400 g', '4050001116640', 'https://www.alsa-nature.nl/p/92260401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Gans, 28,5% bouillon, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:57e1b17c747342add9952c2fab7b32537999c9f7cdd3de28ad981b0ca43a4bea', null from p;

-- Alsa Nature — Classic Rund & Rijst met rode bieten & appel (800 g)
-- bron: https://www.alsa-nature.nl/p/92200401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', 'wet', '800 g', '4050001116176', 'https://www.alsa-nature.nl/p/92200401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% Rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 27,9% bouillon, 4% rijst, 2% rode biet, 2% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:2ece60d8d8fad762f709ba0d2e3ee48cae2b942fa53a1845a03266d395bab419', null from p;

-- Alsa Nature — Classic Spiervlees met aardappel en wortel (800 g)
-- bron: https://www.alsa-nature.nl/p/92340701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', 'wet', '800 g', '4050001116251', 'https://www.alsa-nature.nl/p/92340701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Runderspiervlees, 30% rund (bestaande uit runderhart, runderlever, runderlongen, runderpens), 25,9% bouillon, 5% aardappel, 3% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:c7880603df2be98c9434a20d8b02b9f7d58c788a8cef3b0d8069e6934b4e2b04', null from p;

-- Alsa Nature — SINGLE Lam met aardappel (800 g)
-- bron: https://www.alsa-nature.nl/p/92510701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Lam met aardappel', 'wet', '800 g', '4050001116619', 'https://www.alsa-nature.nl/p/92510701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Lam (bestaande uit lamshart, lamsvlees, lamslever, lamslong, lamspens), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:f547056025bca7a535e62eb92c287764677bf709d1b78b3b4d3d948672e2a274', null from p;

-- Alsa Nature — Classic Kwartel met aardappel en koolrabi (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92013200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92013200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% Rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26% bouillon, 15% kwartel, 5% aardappel, 3% koolrabi, 1% mineralen', true, now(), 'sha256:b34177852786f441a0f1805bf3ea24ab7230c5ecbe9e3826c17a3685bcf72f31', null from p;

-- Alsa Nature — Senior Wild & Konijn met aardappel & paardebloem (800 g)
-- bron: https://www.alsa-nature.nl/p/92005301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', 'wet', '800 g', '4050001116558', 'https://www.alsa-nature.nl/p/92005301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% Wild (bestaande uit hart, vlees, lever, longen en pens van wild), 30,3% bouillon, 14% konijn, 4% aardappel, 1% mineralen, 0,5% teunisbloemolie, 0,2% paardenbloem', true, now(), 'sha256:633e97168ca30226a051589ab231d99701c1976f762d60122c82efdee0a80734', null from p;

-- Alsa Nature — Classic Kwartel met aardappel en koolrabi (800 g)
-- bron: https://www.alsa-nature.nl/p/92013400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', 'wet', '800 g', '4050001116367', 'https://www.alsa-nature.nl/p/92013400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% Rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26% bouillon, 15% kwartel, 5% aardappel, 3% koolrabi, 1% mineralen', true, now(), 'sha256:b34177852786f441a0f1805bf3ea24ab7230c5ecbe9e3826c17a3685bcf72f31', null from p;

-- Alsa Nature — Classic Wild-Ragout met rode bieten, aardappel en appel (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92006301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92006301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Wild (bestaande uit hart, vlees, lever, longen en pens van wild), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 23,9% bouillon, 5% aardappel, 3% rode biet, 2% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:1fc11a3d2946c1847e5fce4c494744b02a219cfb990b5310acdcd1ba9be3aa7c', null from p;

-- Alsa Nature — Classic Struisvogel met aardappelen en broccoli (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92014200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92014200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 25,9% bouillon, 20% struisvogel, 5% aardappel, 3% broccoli, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:aa28d20a59b1235e7fd62b9afbe0c399166fa3d4c12f60049da51b57aeb5677a', null from p;

-- Alsa Nature — Classic Struisvogel met aardappelen en broccoli (12 x 200 g)
-- bron: https://www.alsa-nature.nl/p/92014500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', 'wet', '12 x 200 g', null, 'https://www.alsa-nature.nl/p/92014500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 25,9% bouillon, 20% struisvogel, 5% aardappel, 3% broccoli, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:aa28d20a59b1235e7fd62b9afbe0c399166fa3d4c12f60049da51b57aeb5677a', null from p;

-- Alsa Nature — Classic Kalkoen met zoete aardappel, peer & paardebloem (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92027300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92027300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '31% Kalkoen (bestaande uit kalkoenenharten, kalkoenvlees, kalkoenlever, kalkoenennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,9% bouillon, 3% zoete aardappel, 3% peer, 1% paardenbloem, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:25559e76815297ca19ceb3b9957f3b08a32043e417960a8285520bc27b9a93d0', null from p;

-- Alsa Nature — Classic Kalkoen met zoete aardappel, peer & paardebloem (800 g)
-- bron: https://www.alsa-nature.nl/p/92027500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', 'wet', '800 g', '4050001116305', 'https://www.alsa-nature.nl/p/92027500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '31% Kalkoen (bestaande uit kalkoenenharten, kalkoenvlees, kalkoenlever, kalkoenennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,9% bouillon, 3% zoete aardappel, 3% peer, 1% paardenbloem, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:25559e76815297ca19ceb3b9957f3b08a32043e417960a8285520bc27b9a93d0', null from p;

-- Alsa Nature — Classic Struisvogel met aardappelen en broccoli (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92013900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92013900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 25,9% bouillon, 20% struisvogel, 5% aardappel, 3% broccoli, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:aa28d20a59b1235e7fd62b9afbe0c399166fa3d4c12f60049da51b57aeb5677a', null from p;

-- Alsa Nature — Classic Hert met zoete aardappel en kastanjes (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92007601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92007601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Hert, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 27,9% bouillon, 5% zoete aardappel, 1% kastanje, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:f6769b7bfa9d15eac38dc1a78c0c9acb6b0c81a72d8643a3fd426c161d0da13c', null from p;

-- Alsa Nature — Classic Struisvogel met aardappelen en broccoli (800 g)
-- bron: https://www.alsa-nature.nl/p/92014000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', 'wet', '800 g', '4050001116398', 'https://www.alsa-nature.nl/p/92014000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 25,9% bouillon, 20% struisvogel, 5% aardappel, 3% broccoli, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:aa28d20a59b1235e7fd62b9afbe0c399166fa3d4c12f60049da51b57aeb5677a', null from p;

-- Alsa Nature — SINGLE Kalkoen puur (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92028000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kalkoen puur', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92028000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoennekken), bouillon 28,5%, mineralen 1%, distelolie 0,5%', true, now(), 'sha256:7c01b711f4038061fb77e21d0d0cc1fa8a01462032c83e0701e566f974e08b91', null from p;

-- Alsa Nature — SINGLE Paard met aardappel (400 g)
-- bron: https://www.alsa-nature.nl/p/92018900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Paard met aardappel', 'wet', '400 g', '4050001116701', 'https://www.alsa-nature.nl/p/92018900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Paard (bestaande uit paardenvlees, paardenhart, paardenlever), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:425d605b0eb5772fa93f681b963c849f368b11355f86314d2a96628ef17c75f0', null from p;

-- Alsa Nature — Classic Struisvogel met aardappelen en broccoli (200 g)
-- bron: https://www.alsa-nature.nl/p/92014300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', 'wet', '200 g', '4050001116374', 'https://www.alsa-nature.nl/p/92014300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 25,9% bouillon, 20% struisvogel, 5% aardappel, 3% broccoli, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:aa28d20a59b1235e7fd62b9afbe0c399166fa3d4c12f60049da51b57aeb5677a', null from p;

-- Alsa Nature — JUNIOR Kip met pastinaak & appel (400 g)
-- bron: https://www.alsa-nature.nl/p/92028700
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Kip met pastinaak & appel', 'wet', '400 g', '4050001116442', 'https://www.alsa-nature.nl/p/92028700', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 28,8% bouillon, 3% pastinaak, 3% appel, 1% mineralen, 0,1% levertraan, 0,1% lijnolie', true, now(), 'sha256:62136434906283004c379230d0485b915532284da9ec6eb5a09f3b267076a2ff', null from p;

-- Alsa Nature — JUNIOR Eend met abrikoos (400 g)
-- bron: https://www.alsa-nature.nl/p/92029600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Eend met abrikoos', 'wet', '400 g', '4050001116473', 'https://www.alsa-nature.nl/p/92029600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '30% Eend, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,8% bouillon, 3% pompoen, 3% venkel, 3% abrikoos, 1% mineralen, 0,1% levertraan, 0,1% lijnolie', true, now(), 'sha256:571bc9e84fdbef76c4f7d66f241b80b1fd25f45a410a2ce91e0e1ea089343b96', null from p;

-- Alsa Nature — Senior Lam met pastinaak, pompoen & abrikoos (400 g)
-- bron: https://www.alsa-nature.nl/p/92041300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', 'wet', '400 g', '4050001116565', 'https://www.alsa-nature.nl/p/92041300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '61% Lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslongen, lamspens), 29,5% bouillon, 4% pastinaak, 2% pompoen, 2% abrikoos, 1% mineralen, 0,5% distelolie.', true, now(), 'sha256:d80a3a081cdd98e3264cb1e8c715c03e858292e88316da2f0ab0c9dd161ef2b6', null from p;

-- Alsa Nature — SINGLE Geit met pastinaak (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920432
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Geit met pastinaak', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/920432', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Geit (bestaande uit geitenspiervlees, geitenhart, geitenlever, geitenlong), 29,5% bouillon, 5% pastinaak, 1% mineralen, 0,5% lijnolie.', true, now(), 'sha256:e407571587adef11047ea053b3136f6fea0fdfcf7265b73108285aea3ba5fd67', null from p;

-- Alsa Nature — INSECTUM Insecten met wortel, zoete aardappel & courgette (12 x 750 g)
-- bron: https://www.alsa-nature.nl/p/920523
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', 'wet', '12 x 750 g', null, 'https://www.alsa-nature.nl/p/920523', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% insecten (zwarte soldaatvlieg), 36% bouillon, 4% wortel, 4% courgette, 4% zoete aardappelen, 1% mineralen, 0,5% kruiden, 0,5% distelolie', true, now(), 'sha256:e7bc1cee98eca5f9ac3ec03e565c0c3237a9bd60df21f4e287e3bd24eff861bc', null from p;

-- Alsa Nature — SIMPLE Kangoeroe puur (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920545
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Kangoeroe puur', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/920545', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 28% bouillon', true, now(), 'sha256:53cd16766f13dbb6204f668f2fd590887c22f6fac057fd66a54680aea1d2ebdf', null from p;

-- Alsa Nature — SIMPLE Rund puur (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920548
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Rund puur', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/920548', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Rund (bestaande uit runderharten, rundvlees, runderlever, runderlong, runderpens), 28% bouillon', true, now(), 'sha256:2fecdfcbc9a9fc5f548cadf9a0eb7ad396561303982f4d1edfa8f7cb6e839a59', null from p;

-- Alsa Nature — SIMPLE Rund puur (800 g)
-- bron: https://www.alsa-nature.nl/p/920550
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Rund puur', 'wet', '800 g', '4050001115285', 'https://www.alsa-nature.nl/p/920550', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Rund (bestaande uit runderharten, rundvlees, runderlever, runderlong, runderpens), 28% bouillon', true, now(), 'sha256:2fecdfcbc9a9fc5f548cadf9a0eb7ad396561303982f4d1edfa8f7cb6e839a59', null from p;

-- Alsa Nature — SIMPLE Rund puur (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920549
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Rund puur', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/920549', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Rund (bestaande uit runderharten, rundvlees, runderlever, runderlong, runderpens), 28% bouillon', true, now(), 'sha256:2fecdfcbc9a9fc5f548cadf9a0eb7ad396561303982f4d1edfa8f7cb6e839a59', null from p;

-- Alsa Nature — INSECTUM Insecten met wortel, zoete aardappel & courgette (6 x 750 g)
-- bron: https://www.alsa-nature.nl/p/920522
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', 'wet', '6 x 750 g', null, 'https://www.alsa-nature.nl/p/920522', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% insecten (zwarte soldaatvlieg), 36% bouillon, 4% wortel, 4% courgette, 4% zoete aardappelen, 1% mineralen, 0,5% kruiden, 0,5% distelolie', true, now(), 'sha256:e7bc1cee98eca5f9ac3ec03e565c0c3237a9bd60df21f4e287e3bd24eff861bc', null from p;

-- Alsa Nature — SIMPLE Rund puur (400 g)
-- bron: https://www.alsa-nature.nl/p/920547
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Rund puur', 'wet', '400 g', '4050001115254', 'https://www.alsa-nature.nl/p/920547', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Rund (bestaande uit runderharten, rundvlees, runderlever, runderlong, runderpens), 28% bouillon', true, now(), 'sha256:2fecdfcbc9a9fc5f548cadf9a0eb7ad396561303982f4d1edfa8f7cb6e839a59', null from p;

-- Alsa Nature — SIMPLE Wild puur (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920564
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Wild puur', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/920564', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Wild (bestaande uit hart, spiervlees, lever, long, pens), 28% bouillon', true, now(), 'sha256:0e382179b6b3239616c4abf7c43ba0cde9e9ba914b3c13319246831c3cb38c2c', null from p;

-- Alsa Nature — SIMPLE Wild puur (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920563
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Wild puur', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/920563', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Wild (bestaande uit hart, spiervlees, lever, long, pens), 28% bouillon', true, now(), 'sha256:0e382179b6b3239616c4abf7c43ba0cde9e9ba914b3c13319246831c3cb38c2c', null from p;

-- Alsa Nature — SIMPLE Rund puur (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920551
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Rund puur', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/920551', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Rund (bestaande uit runderharten, rundvlees, runderlever, runderlong, runderpens), 28% bouillon', true, now(), 'sha256:2fecdfcbc9a9fc5f548cadf9a0eb7ad396561303982f4d1edfa8f7cb6e839a59', null from p;

-- Alsa Nature — SIMPLE Rund puur (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920552
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Rund puur', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/920552', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Rund (bestaande uit runderharten, rundvlees, runderlever, runderlong, runderpens), 28% bouillon', true, now(), 'sha256:2fecdfcbc9a9fc5f548cadf9a0eb7ad396561303982f4d1edfa8f7cb6e839a59', null from p;

-- Alsa Nature — SINGLE Kangoeroe met aardappel (30 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920628
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', 'wet', '30 x 800 g', null, 'https://www.alsa-nature.nl/p/920628', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:7e615daef2ffbd8f7b5126ebc8da26c36ce43867c0960b84b111bd172d163855', null from p;

-- Alsa Nature — SINGLE Kangoeroe met aardappel (60 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920629
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', 'wet', '60 x 800 g', null, 'https://www.alsa-nature.nl/p/920629', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:7e615daef2ffbd8f7b5126ebc8da26c36ce43867c0960b84b111bd172d163855', null from p;

-- Alsa Nature — JUBILEUM Kip (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92074801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92074801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken, kippenvet), 28,8% bouillon, 4% broccoli, 3% perzik, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:6558b32f439496c8c3c9d7e6ff5c5f1e5bdad3f7e661403e9d177004e336cd2b', null from p;

-- Alsa Nature — JUBILEUM Rund (400 g)
-- bron: https://www.alsa-nature.nl/p/92075001
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Rund', 'wet', '400 g', '4050001120180', 'https://www.alsa-nature.nl/p/92075001', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% rund (bestaande uit runderhart, rundvlees, runderlever, runderlong, runderpens, rundernieren), 28,8% bouillon, 5% aardappelen, 2% peterselie, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:771bb3f986b2652161946b757159c16f02d5f9a7d5b4c882668b0b05416743b2', null from p;

-- Alsa Nature — JUBILEUM Kip & Zalm (400 g)
-- bron: https://www.alsa-nature.nl/p/92076801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip & Zalm', 'wet', '400 g', '4050001120104', 'https://www.alsa-nature.nl/p/92076801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '52% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken), 28,8% bouillon, 15% zalm, 3% spinazie, 1% mineralen, 0,2% zalmolie', true, now(), 'sha256:6f1eddee8ba63562136d6416b4053537e664e6ec6633940f716361d3465ab54c', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;

-- Automatisch overgenomen etiketten, batch 3 van 2026-11-13 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Alsa Nature — JUBILEUM Rund (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92075101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Rund', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92075101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% rund (bestaande uit runderhart, rundvlees, runderlever, runderlong, runderpens, rundernieren), 28,8% bouillon, 5% aardappelen, 2% peterselie, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:771bb3f986b2652161946b757159c16f02d5f9a7d5b4c882668b0b05416743b2', null from p;

-- Alsa Nature — Classic Gevogelte met volkorenrijst en wortel (400 g)
-- bron: https://www.alsa-nature.nl/p/92100101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', 'wet', '400 g', '4050001116060', 'https://www.alsa-nature.nl/p/92100101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Gevogelte (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,9% bouillon, 5% volkorenrijst, 4% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:317891f7d558c88d829209ca23f7b14b9d739fec355d1a86673591d12420cc45', null from p;

-- Alsa Nature — 4-SEASONS Herfstmenu Wild & Hert met zoete aardappel (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92090001
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', '4-SEASONS Herfstmenu Wild & Hert met zoete aardappel', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92090001', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '55% Wild, 26,9% bouillon, 10% Hert, 3% zoete aardappel, 2% peren, 2% cranberries, mineralen, 0,1% teunisbloemolie', true, now(), 'sha256:6b0be9de7103e25127e9ba095db682f57bcce53ec8a1d7b5f3410fc8de7abe73', null from p;

-- Alsa Nature — SINGLE Paard met aardappel (90 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920642
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Paard met aardappel', 'wet', '90 x 400 g', null, 'https://www.alsa-nature.nl/p/920642', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Paard (bestaande uit paardenvlees, paardenhart, paardenlever), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:425d605b0eb5772fa93f681b963c849f368b11355f86314d2a96628ef17c75f0', null from p;

-- Alsa Nature — JUBILEUM Kip & Kalkoen (800 g)
-- bron: https://www.alsa-nature.nl/p/92074101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', 'wet', '800 g', '4050001120173', 'https://www.alsa-nature.nl/p/92074101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '43% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken, kippenvet), 28,8% bouillon, 20% kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenmaag, kalkoenlever, kalkoennekken), 4% courgette, 3% wortel, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:b20633e4cf744d14d8fe3c546f6acf25dbfc093c90fcac5834e9bfdf71178874', null from p;

-- Alsa Nature — Classic Gevogelte met volkorenrijst en wortel (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92100401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92100401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Gevogelte (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,9% bouillon, 5% volkorenrijst, 4% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:317891f7d558c88d829209ca23f7b14b9d739fec355d1a86673591d12420cc45', null from p;

-- Alsa Nature — JUBILEUM Wild (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92076601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Wild', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92076601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% wild, 28,8% bouillon, 5% zoete aardappel, 2% aalbessen, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:16825c78e6d041a25818c34c7bb15dd92c849f855e9df6316e5f218e5466bf31', null from p;

-- Alsa Nature — Classic Gevogelte met volkorenrijst en wortel (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92100501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92100501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Gevogelte (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,9% bouillon, 5% volkorenrijst, 4% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:317891f7d558c88d829209ca23f7b14b9d739fec355d1a86673591d12420cc45', null from p;

-- Alsa Nature — Classic Gevogelte met volkorenrijst en wortel (6 x 200 g)
-- bron: https://www.alsa-nature.nl/p/92100801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', 'wet', '6 x 200 g', null, 'https://www.alsa-nature.nl/p/92100801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Gevogelte (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,9% bouillon, 5% volkorenrijst, 4% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:317891f7d558c88d829209ca23f7b14b9d739fec355d1a86673591d12420cc45', null from p;

-- Alsa Nature — 4-SEASONS Herfstmenu Wild & Hert met zoete aardappel (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92090101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', '4-SEASONS Herfstmenu Wild & Hert met zoete aardappel', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92090101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '55% Wild, 26,9% bouillon, 10% Hert, 3% zoete aardappel, 2% peren, 2% cranberries, mineralen, 0,1% teunisbloemolie', true, now(), 'sha256:6b0be9de7103e25127e9ba095db682f57bcce53ec8a1d7b5f3410fc8de7abe73', null from p;

-- Alsa Nature — Classic Lam met volkorenpasta en wortel (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92130301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92130301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslongen, lamspens), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,9% bouillon, 5% volkorennoedels, 4% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:8c1c078fccceb1540b1c64b7506e19a88ba3eebb39424e173a7574b7ebb268cb', null from p;

-- Alsa Nature — Classic Eend met ham en spinazie ravioli (400 g)
-- bron: https://www.alsa-nature.nl/p/92190401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', 'wet', '400 g', '4050001116213', 'https://www.alsa-nature.nl/p/92190401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Eend, 28,9% bouillon, 27% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 5% italiaanse ham, 5% spinazie ravioli, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:408129383c82a50aa59e651e4d27f4aaef9f7f0902bab9e267b8f38bdab2e515', null from p;

-- Alsa Nature — Speciaal Nierdieet (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92180201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Nierdieet', 'wet', '6 x 400 g', '4050001116787', 'https://www.alsa-nature.nl/p/92180201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35,3% Bouillon, 35% kip (bestaande uit kippenharten, kippenmagen, kippenvet), 12% rijst, 10% aardappelen, 5% pompoen, 1% mineralen, 1% cellulose, 0,5% zalmolie, 0,1% voleipoeder, 0,1% biergist', true, now(), 'sha256:5bc16099b3cf0be75f656662e9c63fee5a52c64f22b47951501ab4c54778fbfe', null from p;

-- Alsa Nature — Classic Spiervlees met aardappel en wortel (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92340501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92340501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Runderspiervlees, 30% rund (bestaande uit runderhart, runderlever, runderlongen, runderpens), 25,9% bouillon, 5% aardappel, 3% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:c7880603df2be98c9434a20d8b02b9f7d58c788a8cef3b0d8069e6934b4e2b04', null from p;

-- Alsa Nature — Speciaal Light-menu (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92330501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Light-menu', 'wet', '6 x 400 g', '4050001116794', 'https://www.alsa-nature.nl/p/92330501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '56% Kip (bestaande uit kippenmagen, kippenlever, kippennekken), 31,6% bouillon, 5% pompoen, 4% rijst, 2% cellulose, 1% mineralen, 0,2% distelolie, 0,2% zalmolie', true, now(), 'sha256:d21ee0ded14bcae787236b3e4a81c600c570ccffdcd0492ae47e996b8f0d58fb', null from p;

-- Alsa Nature — SINGLE Lam met aardappel (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92510601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Lam met aardappel', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92510601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Lam (bestaande uit lamshart, lamsvlees, lamslever, lamslong, lamspens), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:f547056025bca7a535e62eb92c287764677bf709d1b78b3b4d3d948672e2a274', null from p;

-- Alsa Nature — Classic Lam met volkorenpasta en wortel (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92130501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92130501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslongen, lamspens), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,9% bouillon, 5% volkorennoedels, 4% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:8c1c078fccceb1540b1c64b7506e19a88ba3eebb39424e173a7574b7ebb268cb', null from p;

-- Alsa Nature — Classic Spiervlees met aardappel en wortel (200 g)
-- bron: https://www.alsa-nature.nl/p/92340101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', 'wet', '200 g', '4050001116237', 'https://www.alsa-nature.nl/p/92340101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Runderspiervlees, 30% rund (bestaande uit runderhart, runderlever, runderlongen, runderpens), 25,9% bouillon, 5% aardappel, 3% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:c7880603df2be98c9434a20d8b02b9f7d58c788a8cef3b0d8069e6934b4e2b04', null from p;

-- Alsa Nature — SINGLE Rendier met aardappel (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92520901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Rendier met aardappel', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92520901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Rendier, 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:5e00e05c0e60cac39c54f32530c54082eed627c0e03825fae4926eaa3f86ae6f', null from p;

-- Alsa Nature — SINGLE Rendier met aardappel (400 g)
-- bron: https://www.alsa-nature.nl/p/92520401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Rendier met aardappel', 'wet', '400 g', '4050001116626', 'https://www.alsa-nature.nl/p/92520401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Rendier, 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:5e00e05c0e60cac39c54f32530c54082eed627c0e03825fae4926eaa3f86ae6f', null from p;

-- Alsa Nature — Senior Kip & Kalkoen met aardappel en peterselie (400 g)
-- bron: https://www.alsa-nature.nl/p/92620401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', 'wet', '400 g', '4050001116527', 'https://www.alsa-nature.nl/p/92620401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% kalkoen (bestaande uit kalkoenenharten, kalkoenvlees, kalkoenlever, kalkoenennekken), 28,4% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie, 0,1% peterselie', true, now(), 'sha256:fb266ac396bdcac4e90adcdcc86e428e3f6fa442bc7cf7e6bca111537392ce87', null from p;

-- Alsa Nature — SINGLE Rendier met aardappel (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92520801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Rendier met aardappel', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92520801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Rendier, 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:5e00e05c0e60cac39c54f32530c54082eed627c0e03825fae4926eaa3f86ae6f', null from p;

-- Alsa Nature — Pens worst (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/93450801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Pens worst', 'wet', '6 x 800 g', '4050001102711', 'https://www.alsa-nature.nl/p/93450801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '67% rundvlees (bestaande uit runderpens, runderlong, runderlever, rundernieren), 26,8% bouillon, 4% wortel, 2% havervlokken, 0,1% distelolie, 0,1% mineralen', true, now(), 'sha256:494bed78eebfd515b6e65dcefc521bf369588dbeb9df3664233eb43d24229352', null from p;

-- Alsa Nature — FOODLOVE Lam met amarant, aardpeer & vijg (30 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99004300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', 'raw', '30 x 300 g', null, 'https://www.alsa-nature.nl/p/99004300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% lam (bestaande uit lamsharten, lamsvlees, lamslevers, lamslongen, lamspensen), 27,3% bouillon, 4% amarant, 4% vijgen, 3% aardperen, 1% mineralen, 0,5% kruiden, 0,2% zonnebloemolie', true, now(), 'sha256:19f896126cedb83b9ad4ca77ca311367b519546aa1163f8bbe869066d18d01db', null from p;

-- Alsa Nature — FOODLOVE Lam met amarant, aardpeer & vijg (60 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99004400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', 'raw', '60 x 300 g', null, 'https://www.alsa-nature.nl/p/99004400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% lam (bestaande uit lamsharten, lamsvlees, lamslevers, lamslongen, lamspensen), 27,3% bouillon, 4% amarant, 4% vijgen, 3% aardperen, 1% mineralen, 0,5% kruiden, 0,2% zonnebloemolie', true, now(), 'sha256:19f896126cedb83b9ad4ca77ca311367b519546aa1163f8bbe869066d18d01db', null from p;

-- Alsa Nature — FOODLOVE Rund met amarant, zoete aardappel & bessen (12 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99004900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', 'raw', '12 x 300 g', null, 'https://www.alsa-nature.nl/p/99004900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% rund (bestaande uit runderharten, rundvlees, runderlongen, runderlevers, runderpensen), 27,3% bouillon, 4% amarant, 4% zoete aardappel, 2% veenbessen, 1% frambozen, 1% mineralen, 0,5% kruiden, 0,2% zonnebloemolie', true, now(), 'sha256:3df457138c10a8d101a9b07f691104848db8814ce40f4d842d893ac83a4a6284', null from p;

-- Alsa Nature — FOODLOVE Rund met amarant, zoete aardappel & bessen (90 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99005200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', 'raw', '90 x 300 g', null, 'https://www.alsa-nature.nl/p/99005200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% rund (bestaande uit runderharten, rundvlees, runderlongen, runderlevers, runderpensen), 27,3% bouillon, 4% amarant, 4% zoete aardappel, 2% veenbessen, 1% frambozen, 1% mineralen, 0,5% kruiden, 0,2% zonnebloemolie', true, now(), 'sha256:3df457138c10a8d101a9b07f691104848db8814ce40f4d842d893ac83a4a6284', null from p;

-- Alsa Nature — FOODLOVE Kip & Forel met quinoa, pastinaak & papaja (90 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99008000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', 'raw', '90 x 300 g', null, 'https://www.alsa-nature.nl/p/99008000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '40% kip (bestaande uit kippenharten, kippenvlees, kippenlevers, kippenmagen, kippenhalzen), 27,3% bouillon, 20% forel, 4% quinoa, 4% pastinaak, 3% papaya, 1% mineralen, 0,5% kruiden, 0,2% lijnzaadolie', true, now(), 'sha256:77ef1a615fd4a37a4093a031d6776961b79ac44300f21c9fe5ef4a0a81f4921a', null from p;

-- Alsa Nature — FOODLOVE Rund met amarant, zoete aardappel & bessen (6 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99004800
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', 'raw', '6 x 300 g', '4050001118576', 'https://www.alsa-nature.nl/p/99004800', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% rund (bestaande uit runderharten, rundvlees, runderlongen, runderlevers, runderpensen), 27,3% bouillon, 4% amarant, 4% zoete aardappel, 2% veenbessen, 1% frambozen, 1% mineralen, 0,5% kruiden, 0,2% zonnebloemolie', true, now(), 'sha256:3df457138c10a8d101a9b07f691104848db8814ce40f4d842d893ac83a4a6284', null from p;

-- Alsa Nature — CLASSIC Eend & Rund met aardappel (30 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99010601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', 'wet', '30 x 500 g', null, 'https://www.alsa-nature.nl/p/99010601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Eend (bestaande uit eendenmaag, eendennek, eendenhart), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% aardappel, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:fa7b052a87dd44e6b4be9a2b412d6e48e846544f045b13405cc01725e0fdd50d', null from p;

-- Alsa Nature — CLASSIC Wildzwijn & Rund met courgette (6 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99011601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', 'wet', '6 x 500 g', '4050001123396', 'https://www.alsa-nature.nl/p/99011601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Wildzwijn (bestaande uit wildzwijnvlees), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% courgette, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:87e2446ca93cc5c653b46fb9ff3d72ca3cd6dcf950bc0dea7e563e62290079bb', null from p;

-- Alsa Nature — FOODLOVE Rund met amarant, zoete aardappel & bessen (60 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99005100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', 'raw', '60 x 300 g', null, 'https://www.alsa-nature.nl/p/99005100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% rund (bestaande uit runderharten, rundvlees, runderlongen, runderlevers, runderpensen), 27,3% bouillon, 4% amarant, 4% zoete aardappel, 2% veenbessen, 1% frambozen, 1% mineralen, 0,5% kruiden, 0,2% zonnebloemolie', true, now(), 'sha256:3df457138c10a8d101a9b07f691104848db8814ce40f4d842d893ac83a4a6284', null from p;

-- Alsa Nature — CLASSIC Runderharten & Kip met pastinaak (60 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99013101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', 'wet', '60 x 500 g', null, 'https://www.alsa-nature.nl/p/99013101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Runderharten, 30% kip (bestaande uit kippenhart, kippenvlees, kippenlever, kippenmaag, kippennekken), 28,8% bouillon, 5% pastinaak, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:63f11bbfbe5f4514ab8298a2a2ac3f68106aea386f1a2a2d19a131382244b335', null from p;

-- Alsa Nature — CLASSIC Runderharten & Kip met pastinaak (90 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99013201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', 'wet', '90 x 500 g', null, 'https://www.alsa-nature.nl/p/99013201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Runderharten, 30% kip (bestaande uit kippenhart, kippenvlees, kippenlever, kippenmaag, kippennekken), 28,8% bouillon, 5% pastinaak, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:63f11bbfbe5f4514ab8298a2a2ac3f68106aea386f1a2a2d19a131382244b335', null from p;

-- Alsa Nature — CLASSIC Gevogelteharten & Kip met rode biet (6 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99013401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', 'wet', '6 x 500 g', '4050001123426', 'https://www.alsa-nature.nl/p/99013401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Gevogelteharten, 30% kip (bestaande uit kippenhart, kippenvlees, kippenlever, kippenmaag en kippennek), 28,8% bouillon, 5% rode biet, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:8c1eeeadfdd1f4790726ff6b89f714aa9fa4aeb9e4697218a38ef851de0aefab', null from p;

-- Alsa Nature — CLASSIC Eend & Rund met aardappel (120 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99010901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', 'wet', '120 x 500 g', null, 'https://www.alsa-nature.nl/p/99010901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Eend (bestaande uit eendenmaag, eendennek, eendenhart), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% aardappel, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:fa7b052a87dd44e6b4be9a2b412d6e48e846544f045b13405cc01725e0fdd50d', null from p;

-- Alsa Nature — CLASSIC Gevogelteharten & Kip met rode biet (60 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99013701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', 'wet', '60 x 500 g', null, 'https://www.alsa-nature.nl/p/99013701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Gevogelteharten, 30% kip (bestaande uit kippenhart, kippenvlees, kippenlever, kippenmaag en kippennek), 28,8% bouillon, 5% rode biet, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:8c1eeeadfdd1f4790726ff6b89f714aa9fa4aeb9e4697218a38ef851de0aefab', null from p;

-- Alsa Nature — CLASSIC Runderharten & Kip met pastinaak (120 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99013301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', 'wet', '120 x 500 g', null, 'https://www.alsa-nature.nl/p/99013301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Runderharten, 30% kip (bestaande uit kippenhart, kippenvlees, kippenlever, kippenmaag, kippennekken), 28,8% bouillon, 5% pastinaak, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:63f11bbfbe5f4514ab8298a2a2ac3f68106aea386f1a2a2d19a131382244b335', null from p;

-- Alsa Nature — SINGLE Paard met aardappel (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92019100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Paard met aardappel', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92019100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Paard (bestaande uit paardenvlees, paardenhart, paardenlever), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:425d605b0eb5772fa93f681b963c849f368b11355f86314d2a96628ef17c75f0', null from p;

-- Alsa Nature — Classic Bizon met pastinaak, rode bieten & appel (400 g)
-- bron: https://www.alsa-nature.nl/p/92026300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', 'wet', '400 g', '4050001116268', 'https://www.alsa-nature.nl/p/92026300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '30% Bizon, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,9% bouillon, 3% pastinaak, 3% rode bieten, 3% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:c94f42101f67b5b48ced5069838cc0e21d28c8055bebab4fd53ad2dfba56bc1b', null from p;

-- Alsa Nature — Classic Kalkoen met zoete aardappel, peer & paardebloem (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92027700
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92027700', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '31% Kalkoen (bestaande uit kalkoenenharten, kalkoenvlees, kalkoenlever, kalkoenennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,9% bouillon, 3% zoete aardappel, 3% peer, 1% paardenbloem, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:25559e76815297ca19ceb3b9957f3b08a32043e417960a8285520bc27b9a93d0', null from p;

-- Alsa Nature — Classic Kalkoen met zoete aardappel, peer & paardebloem (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92027400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92027400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '31% Kalkoen (bestaande uit kalkoenenharten, kalkoenvlees, kalkoenlever, kalkoenennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,9% bouillon, 3% zoete aardappel, 3% peer, 1% paardenbloem, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:25559e76815297ca19ceb3b9957f3b08a32043e417960a8285520bc27b9a93d0', null from p;

-- Alsa Nature — JUNIOR Wild met aardappel (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92030000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Wild met aardappel', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92030000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '30% Wild (bestaande uit hart, vlees, lever, longen en pens van wild), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,8% bouillon, 3% aardappel, 3% rode bosbes, 1% mineralen, 0,1% levertraan, 0,1% lijnolie', true, now(), 'sha256:714d21a8b6c757c610695bd7554368d31d9e025c3d00a8cda906fe0c944c869f', null from p;

-- Alsa Nature — JUNIOR Wild met aardappel (400 g)
-- bron: https://www.alsa-nature.nl/p/92029900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Wild met aardappel', 'wet', '400 g', '4050001116480', 'https://www.alsa-nature.nl/p/92029900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '30% Wild (bestaande uit hart, vlees, lever, longen en pens van wild), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,8% bouillon, 3% aardappel, 3% rode bosbes, 1% mineralen, 0,1% levertraan, 0,1% lijnolie', true, now(), 'sha256:714d21a8b6c757c610695bd7554368d31d9e025c3d00a8cda906fe0c944c869f', null from p;

-- Alsa Nature — Speciaal Single-sensitief (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92030300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Single-sensitief', 'wet', '6 x 400 g', '4050001116770', 'https://www.alsa-nature.nl/p/92030300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Paard (bestaande uit paardenvlees, paardenlever), 7% pompoen, 7% courgette, 7% zoete aardappel, 1% mineralen, 0,5% distelolie, monocalciumfosfaat', true, now(), 'sha256:76fbba52907d123eb5908b7dcfd42651c46f1ec9e1fcc3597dbd8337c547bff6', null from p;

-- Alsa Nature — SINGLE Geit met pastinaak (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920433
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Geit met pastinaak', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/920433', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Geit (bestaande uit geitenspiervlees, geitenhart, geitenlever, geitenlong), 29,5% bouillon, 5% pastinaak, 1% mineralen, 0,5% lijnolie.', true, now(), 'sha256:e407571587adef11047ea053b3136f6fea0fdfcf7265b73108285aea3ba5fd67', null from p;

-- Alsa Nature — FINEST Runder-spiervlees met aardperen, venkel en lijnolie (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920448
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FINEST Runder-spiervlees met aardperen, venkel en lijnolie', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/920448', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Runderspiervlees, 30% rund (bestaande uit runderhart, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% aardpeer, 2% venkel, 1% mineralen, 0,2% lijnolie.', true, now(), 'sha256:27a98410a204d943ccbfe50caf2f04f2f67183ddd24783aa02a91bc9e4517067', null from p;

-- Alsa Nature — SINGLE Kalkoen puur (30 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920620
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kalkoen puur', 'wet', '30 x 800 g', null, 'https://www.alsa-nature.nl/p/920620', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoennekken), bouillon 28,5%, mineralen 1%, distelolie 0,5%', true, now(), 'sha256:7c01b711f4038061fb77e21d0d0cc1fa8a01462032c83e0701e566f974e08b91', null from p;

-- Alsa Nature — SINGLE Kalkoen puur (60 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920617
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kalkoen puur', 'wet', '60 x 400 g', null, 'https://www.alsa-nature.nl/p/920617', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoennekken), bouillon 28,5%, mineralen 1%, distelolie 0,5%', true, now(), 'sha256:7c01b711f4038061fb77e21d0d0cc1fa8a01462032c83e0701e566f974e08b91', null from p;

-- Alsa Nature — SINGLE Kalkoen puur (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92027900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kalkoen puur', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92027900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoennekken), bouillon 28,5%, mineralen 1%, distelolie 0,5%', true, now(), 'sha256:7c01b711f4038061fb77e21d0d0cc1fa8a01462032c83e0701e566f974e08b91', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;

-- Automatisch overgenomen etiketten, batch 4 van 2026-11-13 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Alsa Nature — JUNIOR Lam met aardappel (400 g)
-- bron: https://www.alsa-nature.nl/p/92028400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Lam met aardappel', 'wet', '400 g', '4050001116435', 'https://www.alsa-nature.nl/p/92028400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslongen, lamspens), 28,8% bouillon, 2% aardappel, 2% erwt, 2% wortel, 1% mineralen, 0,1% levertraan, 0,1% lijnolie', true, now(), 'sha256:544e52e477781db8fb4a900e663baa3f6f6b8f34539e8157fb9e48d8aa3ce197', null from p;

-- Alsa Nature — SINGLE Paard met aardappel (60 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920641
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Paard met aardappel', 'wet', '60 x 400 g', null, 'https://www.alsa-nature.nl/p/920641', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Paard (bestaande uit paardenvlees, paardenhart, paardenlever), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:425d605b0eb5772fa93f681b963c849f368b11355f86314d2a96628ef17c75f0', null from p;

-- Alsa Nature — Speciaal Single-sensitief (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92030400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Single-sensitief', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92030400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Paard (bestaande uit paardenvlees, paardenlever), 7% pompoen, 7% courgette, 7% zoete aardappel, 1% mineralen, 0,5% distelolie, monocalciumfosfaat', true, now(), 'sha256:76fbba52907d123eb5908b7dcfd42651c46f1ec9e1fcc3597dbd8337c547bff6', null from p;

-- Alsa Nature — SINGLE Gans puur (120 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920659
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Gans puur', 'wet', '120 x 400 g', null, 'https://www.alsa-nature.nl/p/920659', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Gans, 28,5% bouillon, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:57e1b17c747342add9952c2fab7b32537999c9f7cdd3de28ad981b0ca43a4bea', null from p;

-- Alsa Nature — SINGLE Kangoeroe met aardappel (120 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920631
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', 'wet', '120 x 800 g', null, 'https://www.alsa-nature.nl/p/920631', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:7e615daef2ffbd8f7b5126ebc8da26c36ce43867c0960b84b111bd172d163855', null from p;

-- Alsa Nature — SINGLE Kangoeroe met aardappel (30 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920624
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', 'wet', '30 x 400 g', null, 'https://www.alsa-nature.nl/p/920624', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:7e615daef2ffbd8f7b5126ebc8da26c36ce43867c0960b84b111bd172d163855', null from p;

-- Alsa Nature — SINGLE Gans puur (30 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920660
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Gans puur', 'wet', '30 x 800 g', null, 'https://www.alsa-nature.nl/p/920660', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Gans, 28,5% bouillon, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:57e1b17c747342add9952c2fab7b32537999c9f7cdd3de28ad981b0ca43a4bea', null from p;

-- Alsa Nature — SINGLE Kalkoen puur (60 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920621
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kalkoen puur', 'wet', '60 x 800 g', null, 'https://www.alsa-nature.nl/p/920621', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoennekken), bouillon 28,5%, mineralen 1%, distelolie 0,5%', true, now(), 'sha256:7c01b711f4038061fb77e21d0d0cc1fa8a01462032c83e0701e566f974e08b91', null from p;

-- Alsa Nature — JUBILEUM Lam (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92076001
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Lam', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92076001', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslong, lamspens), 28,8% bouillon, 5% aardpeer, 2% bonen, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:59fb5938f9e043737b259cc8873248986c1eeb861c882839a1e06c713bb4b309', null from p;

-- Alsa Nature — SINGLE Rendier met aardappel (30 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920652
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Rendier met aardappel', 'wet', '30 x 800 g', null, 'https://www.alsa-nature.nl/p/920652', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Rendier, 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:5e00e05c0e60cac39c54f32530c54082eed627c0e03825fae4926eaa3f86ae6f', null from p;

-- Alsa Nature — JUBILEUM Rund (800 g)
-- bron: https://www.alsa-nature.nl/p/92075301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Rund', 'wet', '800 g', '4050001120197', 'https://www.alsa-nature.nl/p/92075301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% rund (bestaande uit runderhart, rundvlees, runderlever, runderlong, runderpens, rundernieren), 28,8% bouillon, 5% aardappelen, 2% peterselie, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:771bb3f986b2652161946b757159c16f02d5f9a7d5b4c882668b0b05416743b2', null from p;

-- Alsa Nature — Speciaal Sensibel (6 x 200 g)
-- bron: https://www.alsa-nature.nl/p/92170501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Sensibel', 'wet', '6 x 200 g', '4050001116817', 'https://www.alsa-nature.nl/p/92170501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenmagen, kippenlever, kippennekken), 30% bouillon, 8% rijst, 6% appels, 5% wortel, 5% hüttenkäse, 1% mineralen, monocalciumfosfaat', true, now(), 'sha256:7054a6c636ce1f252f50ac80a2d170481c5f99cdf2264b889a71298b9bc8c496', null from p;

-- Alsa Nature — Classic Rund & Rijst met rode bieten & appel (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92200601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92200601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% Rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 27,9% bouillon, 4% rijst, 2% rode biet, 2% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:2ece60d8d8fad762f709ba0d2e3ee48cae2b942fa53a1845a03266d395bab419', null from p;

-- Alsa Nature — JUBILEUM Wild (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92076701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Wild', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92076701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% wild, 28,8% bouillon, 5% zoete aardappel, 2% aalbessen, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:16825c78e6d041a25818c34c7bb15dd92c849f855e9df6316e5f218e5466bf31', null from p;

-- Alsa Nature — SINGLE Gans puur (60 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920661
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Gans puur', 'wet', '60 x 800 g', null, 'https://www.alsa-nature.nl/p/920661', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Gans, 28,5% bouillon, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:57e1b17c747342add9952c2fab7b32537999c9f7cdd3de28ad981b0ca43a4bea', null from p;

-- Alsa Nature — Classic Eend met ham en spinazie ravioli (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92190901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92190901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Eend, 28,9% bouillon, 27% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 5% italiaanse ham, 5% spinazie ravioli, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:408129383c82a50aa59e651e4d27f4aaef9f7f0902bab9e267b8f38bdab2e515', null from p;

-- Alsa Nature — SINGLE Lam met aardappel (400 g)
-- bron: https://www.alsa-nature.nl/p/92510401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Lam met aardappel', 'wet', '400 g', '4050001116602', 'https://www.alsa-nature.nl/p/92510401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Lam (bestaande uit lamshart, lamsvlees, lamslever, lamslong, lamspens), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:f547056025bca7a535e62eb92c287764677bf709d1b78b3b4d3d948672e2a274', null from p;

-- Alsa Nature — SINGLE Gans puur (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92260601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Gans puur', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92260601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Gans, 28,5% bouillon, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:57e1b17c747342add9952c2fab7b32537999c9f7cdd3de28ad981b0ca43a4bea', null from p;

-- Alsa Nature — Classic Spiervlees met aardappel en wortel (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92340901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92340901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Runderspiervlees, 30% rund (bestaande uit runderhart, runderlever, runderlongen, runderpens), 25,9% bouillon, 5% aardappel, 3% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:c7880603df2be98c9434a20d8b02b9f7d58c788a8cef3b0d8069e6934b4e2b04', null from p;

-- Alsa Nature — SINGLE Lam met aardappel (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92510801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Lam met aardappel', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92510801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Lam (bestaande uit lamshart, lamsvlees, lamslever, lamslong, lamspens), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:f547056025bca7a535e62eb92c287764677bf709d1b78b3b4d3d948672e2a274', null from p;

-- Alsa Nature — SINGLE Rendier met aardappel (800 g)
-- bron: https://www.alsa-nature.nl/p/92520701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Rendier met aardappel', 'wet', '800 g', '4050001116633', 'https://www.alsa-nature.nl/p/92520701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Rendier, 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:5e00e05c0e60cac39c54f32530c54082eed627c0e03825fae4926eaa3f86ae6f', null from p;

-- Alsa Nature — SINGLE Rendier met aardappel (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92520601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Rendier met aardappel', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92520601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Rendier, 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:5e00e05c0e60cac39c54f32530c54082eed627c0e03825fae4926eaa3f86ae6f', null from p;

-- Alsa Nature — Senior Kip & Kalkoen met aardappel en peterselie (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92620601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92620601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% kalkoen (bestaande uit kalkoenenharten, kalkoenvlees, kalkoenlever, kalkoenennekken), 28,4% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie, 0,1% peterselie', true, now(), 'sha256:fb266ac396bdcac4e90adcdcc86e428e3f6fa442bc7cf7e6bca111537392ce87', null from p;

-- Alsa Nature — Senior Kip & Kalkoen met aardappel en peterselie (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92620901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92620901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% kalkoen (bestaande uit kalkoenenharten, kalkoenvlees, kalkoenlever, kalkoenennekken), 28,4% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie, 0,1% peterselie', true, now(), 'sha256:fb266ac396bdcac4e90adcdcc86e428e3f6fa442bc7cf7e6bca111537392ce87', null from p;

-- Alsa Nature — FOODLOVE Kip met quinoa, pompoen & broccoli (12 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99007000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', 'raw', '12 x 300 g', null, 'https://www.alsa-nature.nl/p/99007000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kip (bestaande uit kippenharten, kippenvlees, kippenlevers, kippenmagen, kippenhalzen), 27,3% bouillon, 4% quinoa, 4% pompoen, 3% broccoli, 1% mineralen, 0,5% kruiden, 0,2% lijnzaadolie', true, now(), 'sha256:ed4d8e19f7eec9bc4131474c422d0501a4d4d95d941b86413b3a8084f2e37e83', null from p;

-- Alsa Nature — FOODLOVE Lam met amarant, aardpeer & vijg (90 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99004500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', 'raw', '90 x 300 g', null, 'https://www.alsa-nature.nl/p/99004500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% lam (bestaande uit lamsharten, lamsvlees, lamslevers, lamslongen, lamspensen), 27,3% bouillon, 4% amarant, 4% vijgen, 3% aardperen, 1% mineralen, 0,5% kruiden, 0,2% zonnebloemolie', true, now(), 'sha256:19f896126cedb83b9ad4ca77ca311367b519546aa1163f8bbe869066d18d01db', null from p;

-- Alsa Nature — FOODLOVE Kip met quinoa, pompoen & broccoli (60 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99007200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', 'raw', '60 x 300 g', null, 'https://www.alsa-nature.nl/p/99007200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kip (bestaande uit kippenharten, kippenvlees, kippenlevers, kippenmagen, kippenhalzen), 27,3% bouillon, 4% quinoa, 4% pompoen, 3% broccoli, 1% mineralen, 0,5% kruiden, 0,2% lijnzaadolie', true, now(), 'sha256:ed4d8e19f7eec9bc4131474c422d0501a4d4d95d941b86413b3a8084f2e37e83', null from p;

-- Alsa Nature — FOODLOVE Kip & Forel met quinoa, pastinaak & papaja (6 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99007600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', 'raw', '6 x 300 g', '4050001118613', 'https://www.alsa-nature.nl/p/99007600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '40% kip (bestaande uit kippenharten, kippenvlees, kippenlevers, kippenmagen, kippenhalzen), 27,3% bouillon, 20% forel, 4% quinoa, 4% pastinaak, 3% papaya, 1% mineralen, 0,5% kruiden, 0,2% lijnzaadolie', true, now(), 'sha256:77ef1a615fd4a37a4093a031d6776961b79ac44300f21c9fe5ef4a0a81f4921a', null from p;

-- Alsa Nature — FOODLOVE Kip & Forel met quinoa, pastinaak & papaja (60 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99007900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', 'raw', '60 x 300 g', null, 'https://www.alsa-nature.nl/p/99007900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '40% kip (bestaande uit kippenharten, kippenvlees, kippenlevers, kippenmagen, kippenhalzen), 27,3% bouillon, 20% forel, 4% quinoa, 4% pastinaak, 3% papaya, 1% mineralen, 0,5% kruiden, 0,2% lijnzaadolie', true, now(), 'sha256:77ef1a615fd4a37a4093a031d6776961b79ac44300f21c9fe5ef4a0a81f4921a', null from p;

-- Alsa Nature — CLASSIC Kalkoen & Rund met wortel (12 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99011101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', 'wet', '12 x 500 g', null, 'https://www.alsa-nature.nl/p/99011101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kalkoen (bestaande uit kalkoenhart, kalkoenvlees, kalkoenmaag, kalkoennek), 30% rund (bestaande uit runderhart, rundervlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% wortelen, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:f044e9c2a74016429cb28b9fefa97c318e87e6cfbccb2fac8dd356bf29dc19e6', null from p;

-- Alsa Nature — CLASSIC Kalkoen & Rund met wortel (6 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99011001
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', 'wet', '6 x 500 g', '4050001123389', 'https://www.alsa-nature.nl/p/99011001', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kalkoen (bestaande uit kalkoenhart, kalkoenvlees, kalkoenmaag, kalkoennek), 30% rund (bestaande uit runderhart, rundervlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% wortelen, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:f044e9c2a74016429cb28b9fefa97c318e87e6cfbccb2fac8dd356bf29dc19e6', null from p;

-- Alsa Nature — CLASSIC Kalkoen & Rund met wortel (90 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99011401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', 'wet', '90 x 500 g', null, 'https://www.alsa-nature.nl/p/99011401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kalkoen (bestaande uit kalkoenhart, kalkoenvlees, kalkoenmaag, kalkoennek), 30% rund (bestaande uit runderhart, rundervlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% wortelen, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:f044e9c2a74016429cb28b9fefa97c318e87e6cfbccb2fac8dd356bf29dc19e6', null from p;

-- Alsa Nature — Classic Kip gerecht met Rijst, Peer & Venkel (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92002101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92002101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 25,9% bouillon, 5% rijst, 2% peer, 1% venkel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:6fbe7005183710e46a8664c247fa4ae1972c98e8bc2718f5973f2048dae6e474', null from p;

-- Alsa Nature — CLASSIC Kalkoen & Rund met wortel (60 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99011301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', 'wet', '60 x 500 g', null, 'https://www.alsa-nature.nl/p/99011301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kalkoen (bestaande uit kalkoenhart, kalkoenvlees, kalkoenmaag, kalkoennek), 30% rund (bestaande uit runderhart, rundervlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% wortelen, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:f044e9c2a74016429cb28b9fefa97c318e87e6cfbccb2fac8dd356bf29dc19e6', null from p;

-- Alsa Nature — SINGLE Kangoeroe met aardappel (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92004601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92004601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:7e615daef2ffbd8f7b5126ebc8da26c36ce43867c0960b84b111bd172d163855', null from p;

-- Alsa Nature — CLASSIC Runderharten & Kip met pastinaak (30 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99013001
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', 'wet', '30 x 500 g', null, 'https://www.alsa-nature.nl/p/99013001', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Runderharten, 30% kip (bestaande uit kippenhart, kippenvlees, kippenlever, kippenmaag, kippennekken), 28,8% bouillon, 5% pastinaak, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:63f11bbfbe5f4514ab8298a2a2ac3f68106aea386f1a2a2d19a131382244b335', null from p;

-- Alsa Nature — SINGLE Kangoeroe met aardappel (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92004501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92004501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:7e615daef2ffbd8f7b5126ebc8da26c36ce43867c0960b84b111bd172d163855', null from p;

-- Alsa Nature — Struisvogel Enkel-eiwit (1,5 kg)
-- bron: https://www.alsa-nature.nl/p/91350101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Struisvogel Enkel-eiwit', 'kibble', '1,5 kg', '4050001101844', 'https://www.alsa-nature.nl/p/91350101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, struisvogel 24%, bietenvezels, oliën en vetten, mineralen, natriumchloride', true, now(), 'sha256:c0b93cbdcfb3f92736dcd44f7671a93a2656e29da9186edf81c533b0771e747c', null from p;

-- Alsa Nature — SINGLE Kangoeroe met aardappel (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92004801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92004801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:7e615daef2ffbd8f7b5126ebc8da26c36ce43867c0960b84b111bd172d163855', null from p;

-- Alsa Nature — Classic Struisvogel met aardappelen en broccoli (400 g)
-- bron: https://www.alsa-nature.nl/p/92013700
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', 'wet', '400 g', '4050001116381', 'https://www.alsa-nature.nl/p/92013700', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 25,9% bouillon, 20% struisvogel, 5% aardappel, 3% broccoli, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:aa28d20a59b1235e7fd62b9afbe0c399166fa3d4c12f60049da51b57aeb5677a', null from p;

-- Alsa Nature — Senior Wild & Konijn met aardappel & paardebloem (400 g)
-- bron: https://www.alsa-nature.nl/p/92005001
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', 'wet', '400 g', '4050001116541', 'https://www.alsa-nature.nl/p/92005001', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% Wild (bestaande uit hart, vlees, lever, longen en pens van wild), 30,3% bouillon, 14% konijn, 4% aardappel, 1% mineralen, 0,5% teunisbloemolie, 0,2% paardenbloem', true, now(), 'sha256:633e97168ca30226a051589ab231d99701c1976f762d60122c82efdee0a80734', null from p;

-- Alsa Nature — Classic Struisvogel met aardappelen en broccoli (6 x 200 g)
-- bron: https://www.alsa-nature.nl/p/92014400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', 'wet', '6 x 200 g', null, 'https://www.alsa-nature.nl/p/92014400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 25,9% bouillon, 20% struisvogel, 5% aardappel, 3% broccoli, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:aa28d20a59b1235e7fd62b9afbe0c399166fa3d4c12f60049da51b57aeb5677a', null from p;

-- Alsa Nature — Senior Wild & Konijn met aardappel & paardebloem (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92005401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92005401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% Wild (bestaande uit hart, vlees, lever, longen en pens van wild), 30,3% bouillon, 14% konijn, 4% aardappel, 1% mineralen, 0,5% teunisbloemolie, 0,2% paardenbloem', true, now(), 'sha256:633e97168ca30226a051589ab231d99701c1976f762d60122c82efdee0a80734', null from p;

-- Alsa Nature — Classic Kwartel met aardappel en koolrabi (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92013600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92013600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% Rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26% bouillon, 15% kwartel, 5% aardappel, 3% koolrabi, 1% mineralen', true, now(), 'sha256:b34177852786f441a0f1805bf3ea24ab7230c5ecbe9e3826c17a3685bcf72f31', null from p;

-- Alsa Nature — Classic Struisvogel met aardappelen en broccoli (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92014100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92014100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 25,9% bouillon, 20% struisvogel, 5% aardappel, 3% broccoli, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:aa28d20a59b1235e7fd62b9afbe0c399166fa3d4c12f60049da51b57aeb5677a', null from p;

-- Alsa Nature — BIO Kip met rijst en jonge groenten (400 g)
-- bron: https://www.alsa-nature.nl/p/920214
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'BIO Kip met rijst en jonge groenten', 'wet', '400 g', '4050001116497', 'https://www.alsa-nature.nl/p/920214', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip*, 30% rund*, 26% bouillon, 4% rijst*, 2% wortelen*, 2% erwten*, 1% mineralen. *Uit gecontroleerde biologische aanbouw/houderij', true, now(), 'sha256:fa42159c3611f40944e1a91452a7ee29b3170fe9697afbc27d9a2c10598619ba', null from p;

-- Alsa Nature — SINGLE Paard met aardappel (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92019300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Paard met aardappel', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92019300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Paard (bestaande uit paardenvlees, paardenhart, paardenlever), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:425d605b0eb5772fa93f681b963c849f368b11355f86314d2a96628ef17c75f0', null from p;

-- Alsa Nature — BIO Kip met rijst en jonge groenten (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92021500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'BIO Kip met rijst en jonge groenten', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92021500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip*, 30% rund*, 26% bouillon, 4% rijst*, 2% wortelen*, 2% erwten*, 1% mineralen. *Uit gecontroleerde biologische aanbouw/houderij', true, now(), 'sha256:fa42159c3611f40944e1a91452a7ee29b3170fe9697afbc27d9a2c10598619ba', null from p;

-- Alsa Nature — BIO Kip met rijst en jonge groenten (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92021600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'BIO Kip met rijst en jonge groenten', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92021600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip*, 30% rund*, 26% bouillon, 4% rijst*, 2% wortelen*, 2% erwten*, 1% mineralen. *Uit gecontroleerde biologische aanbouw/houderij', true, now(), 'sha256:fa42159c3611f40944e1a91452a7ee29b3170fe9697afbc27d9a2c10598619ba', null from p;

-- Alsa Nature — BIO Rund met aardappel en rode bieten (400 g)
-- bron: https://www.alsa-nature.nl/p/92022000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'BIO Rund met aardappel en rode bieten', 'wet', '400 g', '4050001116510', 'https://www.alsa-nature.nl/p/92022000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '65% Rund*, 28% bouillon*, 4% aardappel*, 2% rode bieten*, 1% mineralen. *Uit gecontroleerde biologische aanbouw/houderij', true, now(), 'sha256:3bd8db67cabb46bfb5b499db98d7e4513b052d271266932b9c896a3451b99540', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;

-- Automatisch overgenomen etiketten, batch 5 van 2026-11-13 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Alsa Nature — VEGGIE Groentemaaltijd met Hüttenkäse, fruit en kruiden (12 x 375 g)
-- bron: https://www.alsa-nature.nl/p/92036900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'VEGGIE Groentemaaltijd met Hüttenkäse, fruit en kruiden', 'wet', '12 x 375 g', null, 'https://www.alsa-nature.nl/p/92036900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33,78% Bouillon, 10% hüttenkäse, 8% heeleipoeder, 6% pastinaak, 6% pompoen, 6% wortelen, 5% amarant vlokken, 5% perzik, 4% lijnzaadolie, 3% courgette, 3% erwten, 3% boekweitvlokken, 2,12 mineralen, 2% mango, 2% duindoorn, 1% biergist, 0,1%, kruiden', true, now(), 'sha256:6f9276676f45f2d19fa9eeb8eb158e33965b9843fe3333a3b75476352c571c4f', null from p;

-- Alsa Nature — Speciaal Sensibel (60 x 200 g)
-- bron: https://www.alsa-nature.nl/p/92040300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Sensibel', 'wet', '60 x 200 g', null, 'https://www.alsa-nature.nl/p/92040300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenmagen, kippenlever, kippennekken), 30% bouillon, 8% rijst, 6% appels, 5% wortel, 5% hüttenkäse, 1% mineralen, monocalciumfosfaat', true, now(), 'sha256:7054a6c636ce1f252f50ac80a2d170481c5f99cdf2264b889a71298b9bc8c496', null from p;

-- Alsa Nature — VEGGIE Groente-bijlage met fruit (375 g)
-- bron: https://www.alsa-nature.nl/p/92037000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'VEGGIE Groente-bijlage met fruit', 'wet', '375 g', '4050001116152', 'https://www.alsa-nature.nl/p/92037000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '39,8%, Bouillon, 12% wortelen, 10% pompoen, 7% courgette, 7% venkel, 4% pastinaak, 4% appel, 3% ananas, 3% abrikoos, 2% spinazie, 2% veenbessen, 2% bramen, 2% duindoorn, 1% rozenbottels, 1% mineralen, 0,1% lijnolie', true, now(), 'sha256:9d64e8eb9d5864f59da6ea9768e6a69497c6b36f4a4baa26383364fdeb325974', null from p;

-- Alsa Nature — JUNIOR Kip & zalm met aardappel (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92041100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Kip & zalm met aardappel', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92041100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippenhals), 29,8% bouillon, 10% zalm, 3% aardappel, 3% pompoen, 3% courgette, 1% mineralen, 0,1% lijnolie, 0,1% levertraan.', true, now(), 'sha256:eed7afbd2ba96be23e52a21c29a6c5280e4846484aa50ea7ed05e614546b1e93', null from p;

-- Alsa Nature — JUNIOR Kip & zalm met aardappel (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92041200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Kip & zalm met aardappel', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92041200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippenhals), 29,8% bouillon, 10% zalm, 3% aardappel, 3% pompoen, 3% courgette, 1% mineralen, 0,1% lijnolie, 0,1% levertraan.', true, now(), 'sha256:eed7afbd2ba96be23e52a21c29a6c5280e4846484aa50ea7ed05e614546b1e93', null from p;

-- Alsa Nature — FINEST Runder-spiervlees met aardperen, venkel en lijnolie (400 g)
-- bron: https://www.alsa-nature.nl/p/920446
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FINEST Runder-spiervlees met aardperen, venkel en lijnolie', 'wet', '400 g', '4050001116411', 'https://www.alsa-nature.nl/p/920446', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Runderspiervlees, 30% rund (bestaande uit runderhart, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% aardpeer, 2% venkel, 1% mineralen, 0,2% lijnolie.', true, now(), 'sha256:27a98410a204d943ccbfe50caf2f04f2f67183ddd24783aa02a91bc9e4517067', null from p;

-- Alsa Nature — INSECTUM Insecten met erwten, pompoen & abrikoos (375 g)
-- bron: https://www.alsa-nature.nl/p/920512
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', 'wet', '375 g', '4050001121231', 'https://www.alsa-nature.nl/p/920512', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% insecten (zwarte soldaatvlieg), 36% bouillon, 4% erwten, 4% pompoen, 4% abrikoos, 1% mineralen, 0,5% kruiden, 0,5% distelolie', true, now(), 'sha256:8be03b622db20cada942549c91e0b26edcf5c1bee6d9318e0a7d84011d1520ee', null from p;

-- Alsa Nature — FINEST Kalkoen-spiervlees met zoete aardappel, mango & lijnolie (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920444
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FINEST Kalkoen-spiervlees met zoete aardappel, mango & lijnolie', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/920444', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Kalkoenspiervlees, 30% kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlever, kalkoenhals), 28,8% bouillon, 5% zoete aardappel, 2% mango, 1% mineralen, 0,2% lijnolie.', true, now(), 'sha256:534725db891b7a00735b08f83c3e3e6186bf266217883ae013165c95d5ecd0b5', null from p;

-- Alsa Nature — INSECTUM Insecten met erwten, pompoen & abrikoos (12 x 375 g)
-- bron: https://www.alsa-nature.nl/p/920514
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', 'wet', '12 x 375 g', null, 'https://www.alsa-nature.nl/p/920514', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% insecten (zwarte soldaatvlieg), 36% bouillon, 4% erwten, 4% pompoen, 4% abrikoos, 1% mineralen, 0,5% kruiden, 0,5% distelolie', true, now(), 'sha256:8be03b622db20cada942549c91e0b26edcf5c1bee6d9318e0a7d84011d1520ee', null from p;

-- Alsa Nature — FINEST Runder-spiervlees met aardperen, venkel en lijnolie (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920447
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FINEST Runder-spiervlees met aardperen, venkel en lijnolie', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/920447', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Runderspiervlees, 30% rund (bestaande uit runderhart, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% aardpeer, 2% venkel, 1% mineralen, 0,2% lijnolie.', true, now(), 'sha256:27a98410a204d943ccbfe50caf2f04f2f67183ddd24783aa02a91bc9e4517067', null from p;

-- Alsa Nature — SIMPLE Kangoeroe puur (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920543
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Kangoeroe puur', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/920543', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 28% bouillon', true, now(), 'sha256:53cd16766f13dbb6204f668f2fd590887c22f6fac057fd66a54680aea1d2ebdf', null from p;

-- Alsa Nature — SIMPLE Kangoeroe puur (800 g)
-- bron: https://www.alsa-nature.nl/p/920544
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Kangoeroe puur', 'wet', '800 g', '4050001115308', 'https://www.alsa-nature.nl/p/920544', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 28% bouillon', true, now(), 'sha256:53cd16766f13dbb6204f668f2fd590887c22f6fac057fd66a54680aea1d2ebdf', null from p;

-- Alsa Nature — SIMPLE Kangoeroe puur (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920546
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Kangoeroe puur', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/920546', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 28% bouillon', true, now(), 'sha256:53cd16766f13dbb6204f668f2fd590887c22f6fac057fd66a54680aea1d2ebdf', null from p;

-- Alsa Nature — SIMPLE Wild puur (400 g)
-- bron: https://www.alsa-nature.nl/p/920559
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Wild puur', 'wet', '400 g', '4050001115230', 'https://www.alsa-nature.nl/p/920559', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Wild (bestaande uit hart, spiervlees, lever, long, pens), 28% bouillon', true, now(), 'sha256:0e382179b6b3239616c4abf7c43ba0cde9e9ba914b3c13319246831c3cb38c2c', null from p;

-- Alsa Nature — SIMPLE Wild puur (800 g)
-- bron: https://www.alsa-nature.nl/p/920562
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Wild puur', 'wet', '800 g', '4050001115278', 'https://www.alsa-nature.nl/p/920562', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Wild (bestaande uit hart, spiervlees, lever, long, pens), 28% bouillon', true, now(), 'sha256:0e382179b6b3239616c4abf7c43ba0cde9e9ba914b3c13319246831c3cb38c2c', null from p;

-- Alsa Nature — SINGLE Kalkoen puur (90 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920618
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kalkoen puur', 'wet', '90 x 400 g', null, 'https://www.alsa-nature.nl/p/920618', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoennekken), bouillon 28,5%, mineralen 1%, distelolie 0,5%', true, now(), 'sha256:7c01b711f4038061fb77e21d0d0cc1fa8a01462032c83e0701e566f974e08b91', null from p;

-- Alsa Nature — SINGLE Kalkoen puur (120 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920619
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kalkoen puur', 'wet', '120 x 400 g', null, 'https://www.alsa-nature.nl/p/920619', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoennekken), bouillon 28,5%, mineralen 1%, distelolie 0,5%', true, now(), 'sha256:7c01b711f4038061fb77e21d0d0cc1fa8a01462032c83e0701e566f974e08b91', null from p;

-- Alsa Nature — SINGLE Kalkoen puur (30 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920616
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kalkoen puur', 'wet', '30 x 400 g', null, 'https://www.alsa-nature.nl/p/920616', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoennekken), bouillon 28,5%, mineralen 1%, distelolie 0,5%', true, now(), 'sha256:7c01b711f4038061fb77e21d0d0cc1fa8a01462032c83e0701e566f974e08b91', null from p;

-- Alsa Nature — SINGLE Lam met aardappel (30 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920632
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Lam met aardappel', 'wet', '30 x 400 g', null, 'https://www.alsa-nature.nl/p/920632', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Lam (bestaande uit lamshart, lamsvlees, lamslever, lamslong, lamspens), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:f547056025bca7a535e62eb92c287764677bf709d1b78b3b4d3d948672e2a274', null from p;

-- Alsa Nature — SINGLE Lam met aardappel (90 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920634
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Lam met aardappel', 'wet', '90 x 400 g', null, 'https://www.alsa-nature.nl/p/920634', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Lam (bestaande uit lamshart, lamsvlees, lamslever, lamslong, lamspens), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:f547056025bca7a535e62eb92c287764677bf709d1b78b3b4d3d948672e2a274', null from p;

-- Alsa Nature — SINGLE Lam met aardappel (30 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920636
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Lam met aardappel', 'wet', '30 x 800 g', null, 'https://www.alsa-nature.nl/p/920636', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Lam (bestaande uit lamshart, lamsvlees, lamslever, lamslong, lamspens), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:f547056025bca7a535e62eb92c287764677bf709d1b78b3b4d3d948672e2a274', null from p;

-- Alsa Nature — SINGLE Kangoeroe met aardappel (90 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920630
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', 'wet', '90 x 800 g', null, 'https://www.alsa-nature.nl/p/920630', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:7e615daef2ffbd8f7b5126ebc8da26c36ce43867c0960b84b111bd172d163855', null from p;

-- Alsa Nature — SINGLE Geit met pastinaak (90 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920666
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Geit met pastinaak', 'wet', '90 x 400 g', null, 'https://www.alsa-nature.nl/p/920666', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Geit (bestaande uit geitenspiervlees, geitenhart, geitenlever, geitenlong), 29,5% bouillon, 5% pastinaak, 1% mineralen, 0,5% lijnolie.', true, now(), 'sha256:e407571587adef11047ea053b3136f6fea0fdfcf7265b73108285aea3ba5fd67', null from p;

-- Alsa Nature — SINGLE Paard met aardappel (30 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920640
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Paard met aardappel', 'wet', '30 x 400 g', null, 'https://www.alsa-nature.nl/p/920640', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Paard (bestaande uit paardenvlees, paardenhart, paardenlever), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:425d605b0eb5772fa93f681b963c849f368b11355f86314d2a96628ef17c75f0', null from p;

-- Alsa Nature — SINGLE Rendier met aardappel (60 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920653
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Rendier met aardappel', 'wet', '60 x 800 g', null, 'https://www.alsa-nature.nl/p/920653', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Rendier, 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:5e00e05c0e60cac39c54f32530c54082eed627c0e03825fae4926eaa3f86ae6f', null from p;

-- Alsa Nature — JUBILEUM Lam (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92076101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Lam', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92076101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslong, lamspens), 28,8% bouillon, 5% aardpeer, 2% bonen, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:59fb5938f9e043737b259cc8873248986c1eeb861c882839a1e06c713bb4b309', null from p;

-- Alsa Nature — JUBILEUM Wild (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92076301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Wild', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92076301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% wild, 28,8% bouillon, 5% zoete aardappel, 2% aalbessen, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:16825c78e6d041a25818c34c7bb15dd92c849f855e9df6316e5f218e5466bf31', null from p;

-- Alsa Nature — SINGLE Geit met pastinaak (120 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920667
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Geit met pastinaak', 'wet', '120 x 400 g', null, 'https://www.alsa-nature.nl/p/920667', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Geit (bestaande uit geitenspiervlees, geitenhart, geitenlever, geitenlong), 29,5% bouillon, 5% pastinaak, 1% mineralen, 0,5% lijnolie.', true, now(), 'sha256:e407571587adef11047ea053b3136f6fea0fdfcf7265b73108285aea3ba5fd67', null from p;

-- Alsa Nature — JUBILEUM Wild (800 g)
-- bron: https://www.alsa-nature.nl/p/92076501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Wild', 'wet', '800 g', '4050001120210', 'https://www.alsa-nature.nl/p/92076501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% wild, 28,8% bouillon, 5% zoete aardappel, 2% aalbessen, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:16825c78e6d041a25818c34c7bb15dd92c849f855e9df6316e5f218e5466bf31', null from p;

-- Alsa Nature — JUBILEUM Lam (800 g)
-- bron: https://www.alsa-nature.nl/p/92075901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Lam', 'wet', '800 g', '4050001120159', 'https://www.alsa-nature.nl/p/92075901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslong, lamspens), 28,8% bouillon, 5% aardpeer, 2% bonen, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:59fb5938f9e043737b259cc8873248986c1eeb861c882839a1e06c713bb4b309', null from p;

-- Alsa Nature — SINGLE Geit met pastinaak (30 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920668
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Geit met pastinaak', 'wet', '30 x 800 g', null, 'https://www.alsa-nature.nl/p/920668', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Geit (bestaande uit geitenspiervlees, geitenhart, geitenlever, geitenlong), 29,5% bouillon, 5% pastinaak, 1% mineralen, 0,5% lijnolie.', true, now(), 'sha256:e407571587adef11047ea053b3136f6fea0fdfcf7265b73108285aea3ba5fd67', null from p;

-- Alsa Nature — 4-SEASONS Zomermenu Rund & Zalm met mango en meloen (400 g)
-- bron: https://www.alsa-nature.nl/p/92089601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', '4-SEASONS Zomermenu Rund & Zalm met mango en meloen', 'wet', '400 g', '4050001123761', 'https://www.alsa-nature.nl/p/92089601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% Rund (bestaande uit runderhart, rundervlees, runderlongen, runderlever, runderpens), 29,9% bouillon, 15% zalm, 2% mango, 2% meloen, mineralen, 0,1% zalmolie', true, now(), 'sha256:62703d4fcc5aa05a3eee6339c223af0262ff2e6746eb5eeb69626128b7ece592', null from p;

-- Alsa Nature — JUBILEUM Kip & Zalm (800 g)
-- bron: https://www.alsa-nature.nl/p/92077101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip & Zalm', 'wet', '800 g', '4050001120111', 'https://www.alsa-nature.nl/p/92077101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '52% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken), 28,8% bouillon, 15% zalm, 3% spinazie, 1% mineralen, 0,2% zalmolie', true, now(), 'sha256:6f1eddee8ba63562136d6416b4053537e664e6ec6633940f716361d3465ab54c', null from p;

-- Alsa Nature — Classic Eend met ham en spinazie ravioli (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92190601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92190601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Eend, 28,9% bouillon, 27% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 5% italiaanse ham, 5% spinazie ravioli, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:408129383c82a50aa59e651e4d27f4aaef9f7f0902bab9e267b8f38bdab2e515', null from p;

-- Alsa Nature — Speciaal Sensibel (12 x 200 g)
-- bron: https://www.alsa-nature.nl/p/92170601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Sensibel', 'wet', '12 x 200 g', null, 'https://www.alsa-nature.nl/p/92170601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenmagen, kippenlever, kippennekken), 30% bouillon, 8% rijst, 6% appels, 5% wortel, 5% hüttenkäse, 1% mineralen, monocalciumfosfaat', true, now(), 'sha256:7054a6c636ce1f252f50ac80a2d170481c5f99cdf2264b889a71298b9bc8c496', null from p;

-- Alsa Nature — Speciaal Nierdieet (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92180301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Nierdieet', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92180301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35,3% Bouillon, 35% kip (bestaande uit kippenharten, kippenmagen, kippenvet), 12% rijst, 10% aardappelen, 5% pompoen, 1% mineralen, 1% cellulose, 0,5% zalmolie, 0,1% voleipoeder, 0,1% biergist', true, now(), 'sha256:5bc16099b3cf0be75f656662e9c63fee5a52c64f22b47951501ab4c54778fbfe', null from p;

-- Alsa Nature — Classic Eend met ham en spinazie ravioli (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92190801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92190801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Eend, 28,9% bouillon, 27% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 5% italiaanse ham, 5% spinazie ravioli, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:408129383c82a50aa59e651e4d27f4aaef9f7f0902bab9e267b8f38bdab2e515', null from p;

-- Alsa Nature — Classic Eend met ham en spinazie ravioli (800 g)
-- bron: https://www.alsa-nature.nl/p/92190701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', 'wet', '800 g', '4050001116220', 'https://www.alsa-nature.nl/p/92190701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Eend, 28,9% bouillon, 27% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 5% italiaanse ham, 5% spinazie ravioli, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:408129383c82a50aa59e651e4d27f4aaef9f7f0902bab9e267b8f38bdab2e515', null from p;

-- Alsa Nature — Classic Spiervlees met aardappel en wortel (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92340601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92340601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Runderspiervlees, 30% rund (bestaande uit runderhart, runderlever, runderlongen, runderpens), 25,9% bouillon, 5% aardappel, 3% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:c7880603df2be98c9434a20d8b02b9f7d58c788a8cef3b0d8069e6934b4e2b04', null from p;

-- Alsa Nature — Classic Rund & Rijst met rode bieten & appel (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92200201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92200201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% Rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 27,9% bouillon, 4% rijst, 2% rode biet, 2% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:2ece60d8d8fad762f709ba0d2e3ee48cae2b942fa53a1845a03266d395bab419', null from p;

-- Alsa Nature — Classic Rund & Rijst met rode bieten & appel (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92200301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92200301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% Rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 27,9% bouillon, 4% rijst, 2% rode biet, 2% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:2ece60d8d8fad762f709ba0d2e3ee48cae2b942fa53a1845a03266d395bab419', null from p;

-- Alsa Nature — Classic Spiervlees met aardappel en wortel (6 x 200 g)
-- bron: https://www.alsa-nature.nl/p/92340201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', 'wet', '6 x 200 g', null, 'https://www.alsa-nature.nl/p/92340201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Runderspiervlees, 30% rund (bestaande uit runderhart, runderlever, runderlongen, runderpens), 25,9% bouillon, 5% aardappel, 3% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:c7880603df2be98c9434a20d8b02b9f7d58c788a8cef3b0d8069e6934b4e2b04', null from p;

-- Alsa Nature — Classic Spiervlees met aardappel en wortel (12 x 200 g)
-- bron: https://www.alsa-nature.nl/p/92340301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', 'wet', '12 x 200 g', null, 'https://www.alsa-nature.nl/p/92340301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Runderspiervlees, 30% rund (bestaande uit runderhart, runderlever, runderlongen, runderpens), 25,9% bouillon, 5% aardappel, 3% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:c7880603df2be98c9434a20d8b02b9f7d58c788a8cef3b0d8069e6934b4e2b04', null from p;

-- Alsa Nature — Senior Kip & Kalkoen met aardappel en peterselie (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92620801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92620801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% kalkoen (bestaande uit kalkoenenharten, kalkoenvlees, kalkoenlever, kalkoenennekken), 28,4% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie, 0,1% peterselie', true, now(), 'sha256:fb266ac396bdcac4e90adcdcc86e428e3f6fa442bc7cf7e6bca111537392ce87', null from p;

-- Alsa Nature — Classic Spiervlees met aardappel en wortel (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92340801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92340801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Runderspiervlees, 30% rund (bestaande uit runderhart, runderlever, runderlongen, runderpens), 25,9% bouillon, 5% aardappel, 3% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:c7880603df2be98c9434a20d8b02b9f7d58c788a8cef3b0d8069e6934b4e2b04', null from p;

-- Alsa Nature — FOODLOVE Kip & Forel met quinoa, pastinaak & papaja (30 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99007800
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', 'raw', '30 x 300 g', null, 'https://www.alsa-nature.nl/p/99007800', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '40% kip (bestaande uit kippenharten, kippenvlees, kippenlevers, kippenmagen, kippenhalzen), 27,3% bouillon, 20% forel, 4% quinoa, 4% pastinaak, 3% papaya, 1% mineralen, 0,5% kruiden, 0,2% lijnzaadolie', true, now(), 'sha256:77ef1a615fd4a37a4093a031d6776961b79ac44300f21c9fe5ef4a0a81f4921a', null from p;

-- Alsa Nature — CLASSIC Eend & Rund met aardappel (60 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99010701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', 'wet', '60 x 500 g', null, 'https://www.alsa-nature.nl/p/99010701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Eend (bestaande uit eendenmaag, eendennek, eendenhart), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% aardappel, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:fa7b052a87dd44e6b4be9a2b412d6e48e846544f045b13405cc01725e0fdd50d', null from p;

-- Alsa Nature — FOODLOVE Kip met quinoa, pompoen & broccoli (90 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99007300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', 'raw', '90 x 300 g', null, 'https://www.alsa-nature.nl/p/99007300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kip (bestaande uit kippenharten, kippenvlees, kippenlevers, kippenmagen, kippenhalzen), 27,3% bouillon, 4% quinoa, 4% pompoen, 3% broccoli, 1% mineralen, 0,5% kruiden, 0,2% lijnzaadolie', true, now(), 'sha256:ed4d8e19f7eec9bc4131474c422d0501a4d4d95d941b86413b3a8084f2e37e83', null from p;

-- Alsa Nature — CLASSIC Eend & Rund met aardappel (90 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99010801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', 'wet', '90 x 500 g', null, 'https://www.alsa-nature.nl/p/99010801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Eend (bestaande uit eendenmaag, eendennek, eendenhart), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% aardappel, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:fa7b052a87dd44e6b4be9a2b412d6e48e846544f045b13405cc01725e0fdd50d', null from p;

-- Alsa Nature — CLASSIC Wildzwijn & Rund met courgette (60 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99011901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', 'wet', '60 x 500 g', null, 'https://www.alsa-nature.nl/p/99011901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Wildzwijn (bestaande uit wildzwijnvlees), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% courgette, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:87e2446ca93cc5c653b46fb9ff3d72ca3cd6dcf950bc0dea7e563e62290079bb', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;

-- Automatisch overgenomen etiketten, batch 6 van 2026-11-13 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Alsa Nature — Classic Kip gerecht met Rijst, Peer & Venkel (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92002501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92002501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 25,9% bouillon, 5% rijst, 2% peer, 1% venkel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:6fbe7005183710e46a8664c247fa4ae1972c98e8bc2718f5973f2048dae6e474', null from p;

-- Alsa Nature — CLASSIC Eend & Rund met aardappel (12 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99010501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', 'wet', '12 x 500 g', null, 'https://www.alsa-nature.nl/p/99010501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Eend (bestaande uit eendenmaag, eendennek, eendenhart), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% aardappel, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:fa7b052a87dd44e6b4be9a2b412d6e48e846544f045b13405cc01725e0fdd50d', null from p;

-- Alsa Nature — Classic Kip gerecht met Rijst, Peer & Venkel (800 g)
-- bron: https://www.alsa-nature.nl/p/92002301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', 'wet', '800 g', '4050001116343', 'https://www.alsa-nature.nl/p/92002301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 25,9% bouillon, 5% rijst, 2% peer, 1% venkel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:6fbe7005183710e46a8664c247fa4ae1972c98e8bc2718f5973f2048dae6e474', null from p;

-- Alsa Nature — CLASSIC Lam & Kip met zoete aardappel (60 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99012501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', 'wet', '60 x 500 g', null, 'https://www.alsa-nature.nl/p/99012501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Lam (bestaande uit lamslever, lamslongen, lamsvlees, lamspens, lamshart), 30% kip (bestaande uit kippenhart, kippevlees, kippemaag, kippenek), 28,8% bouillon, 5% zoete aardappel, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:5d6f1b2594d0e46843a133aded81911cac32095a451b35b3ee7f587a506760df', null from p;

-- Alsa Nature — SINGLE Kangoeroe met aardappel (400 g)
-- bron: https://www.alsa-nature.nl/p/92004401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', 'wet', '400 g', '4050001116589', 'https://www.alsa-nature.nl/p/92004401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:7e615daef2ffbd8f7b5126ebc8da26c36ce43867c0960b84b111bd172d163855', null from p;

-- Alsa Nature — Senior Wild & Konijn met aardappel & paardebloem (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92005101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92005101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% Wild (bestaande uit hart, vlees, lever, longen en pens van wild), 30,3% bouillon, 14% konijn, 4% aardappel, 1% mineralen, 0,5% teunisbloemolie, 0,2% paardenbloem', true, now(), 'sha256:633e97168ca30226a051589ab231d99701c1976f762d60122c82efdee0a80734', null from p;

-- Alsa Nature — CLASSIC Lam & Kip met zoete aardappel (90 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99012601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', 'wet', '90 x 500 g', null, 'https://www.alsa-nature.nl/p/99012601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Lam (bestaande uit lamslever, lamslongen, lamsvlees, lamspens, lamshart), 30% kip (bestaande uit kippenhart, kippevlees, kippemaag, kippenek), 28,8% bouillon, 5% zoete aardappel, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:5d6f1b2594d0e46843a133aded81911cac32095a451b35b3ee7f587a506760df', null from p;

-- Alsa Nature — SINGLE Paard met aardappel (800 g)
-- bron: https://www.alsa-nature.nl/p/92019200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Paard met aardappel', 'wet', '800 g', '4050001116718', 'https://www.alsa-nature.nl/p/92019200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Paard (bestaande uit paardenvlees, paardenhart, paardenlever), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:425d605b0eb5772fa93f681b963c849f368b11355f86314d2a96628ef17c75f0', null from p;

-- Alsa Nature — VEGGIE Groente-bijlage met fruit (6 x 375 g)
-- bron: https://www.alsa-nature.nl/p/92037100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'VEGGIE Groente-bijlage met fruit', 'wet', '6 x 375 g', null, 'https://www.alsa-nature.nl/p/92037100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '39,8%, Bouillon, 12% wortelen, 10% pompoen, 7% courgette, 7% venkel, 4% pastinaak, 4% appel, 3% ananas, 3% abrikoos, 2% spinazie, 2% veenbessen, 2% bramen, 2% duindoorn, 1% rozenbottels, 1% mineralen, 0,1% lijnolie', true, now(), 'sha256:9d64e8eb9d5864f59da6ea9768e6a69497c6b36f4a4baa26383364fdeb325974', null from p;

-- Alsa Nature — VEGGIE Groentemaaltijd met Hüttenkäse, fruit en kruiden (6 x 375 g)
-- bron: https://www.alsa-nature.nl/p/92036800
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'VEGGIE Groentemaaltijd met Hüttenkäse, fruit en kruiden', 'wet', '6 x 375 g', null, 'https://www.alsa-nature.nl/p/92036800', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33,78% Bouillon, 10% hüttenkäse, 8% heeleipoeder, 6% pastinaak, 6% pompoen, 6% wortelen, 5% amarant vlokken, 5% perzik, 4% lijnzaadolie, 3% courgette, 3% erwten, 3% boekweitvlokken, 2,12 mineralen, 2% mango, 2% duindoorn, 1% biergist, 0,1%, kruiden', true, now(), 'sha256:6f9276676f45f2d19fa9eeb8eb158e33965b9843fe3333a3b75476352c571c4f', null from p;

-- Alsa Nature — JUNIOR Wild met aardappel (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92030100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Wild met aardappel', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92030100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '30% Wild (bestaande uit hart, vlees, lever, longen en pens van wild), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,8% bouillon, 3% aardappel, 3% rode bosbes, 1% mineralen, 0,1% levertraan, 0,1% lijnolie', true, now(), 'sha256:714d21a8b6c757c610695bd7554368d31d9e025c3d00a8cda906fe0c944c869f', null from p;

-- Alsa Nature — Speciaal Single-sensitief (400 g)
-- bron: https://www.alsa-nature.nl/p/92030200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Single-sensitief', 'wet', '400 g', '4050001116725', 'https://www.alsa-nature.nl/p/92030200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Paard (bestaande uit paardenvlees, paardenlever), 7% pompoen, 7% courgette, 7% zoete aardappel, 1% mineralen, 0,5% distelolie, monocalciumfosfaat', true, now(), 'sha256:76fbba52907d123eb5908b7dcfd42651c46f1ec9e1fcc3597dbd8337c547bff6', null from p;

-- Alsa Nature — SIMPLE Kangoeroe puur (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920542
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Kangoeroe puur', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/920542', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 28% bouillon', true, now(), 'sha256:53cd16766f13dbb6204f668f2fd590887c22f6fac057fd66a54680aea1d2ebdf', null from p;

-- Alsa Nature — FINEST Kippen-spiervlees met pastinaak, pompoen en lijnolie (400 g)
-- bron: https://www.alsa-nature.nl/p/920440
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FINEST Kippen-spiervlees met pastinaak, pompoen en lijnolie', 'wet', '400 g', '4050001116428', 'https://www.alsa-nature.nl/p/920440', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Kippenspiervlees, 30% kip (bestaande uit kippenharten, kippenlever, kippenmagen, kippenhalsen), 28,8% bouillon, 5% pastinaak, 2% pompoen, 1% mineralen, 0,2% lijnolie.', true, now(), 'sha256:ca2f4a1e81de1bb6841baff9e6b91542b39a9fe8708c52e9732ea1e003764af9', null from p;

-- Alsa Nature — SINGLE Kangoeroe met aardappel (90 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920626
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', 'wet', '90 x 400 g', null, 'https://www.alsa-nature.nl/p/920626', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:7e615daef2ffbd8f7b5126ebc8da26c36ce43867c0960b84b111bd172d163855', null from p;

-- Alsa Nature — SINGLE Lam met aardappel (90 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920638
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Lam met aardappel', 'wet', '90 x 800 g', null, 'https://www.alsa-nature.nl/p/920638', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Lam (bestaande uit lamshart, lamsvlees, lamslever, lamslong, lamspens), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:f547056025bca7a535e62eb92c287764677bf709d1b78b3b4d3d948672e2a274', null from p;

-- Alsa Nature — SINGLE Paard met aardappel (120 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920647
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Paard met aardappel', 'wet', '120 x 800 g', null, 'https://www.alsa-nature.nl/p/920647', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Paard (bestaande uit paardenvlees, paardenhart, paardenlever), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:425d605b0eb5772fa93f681b963c849f368b11355f86314d2a96628ef17c75f0', null from p;

-- Alsa Nature — SINGLE Kalkoen puur (120 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920623
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kalkoen puur', 'wet', '120 x 800 g', null, 'https://www.alsa-nature.nl/p/920623', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoennekken), bouillon 28,5%, mineralen 1%, distelolie 0,5%', true, now(), 'sha256:7c01b711f4038061fb77e21d0d0cc1fa8a01462032c83e0701e566f974e08b91', null from p;

-- Alsa Nature — SINGLE Kangoeroe met aardappel (120 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920627
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', 'wet', '120 x 400 g', null, 'https://www.alsa-nature.nl/p/920627', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:7e615daef2ffbd8f7b5126ebc8da26c36ce43867c0960b84b111bd172d163855', null from p;

-- Alsa Nature — SINGLE Lam met aardappel (60 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920637
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Lam met aardappel', 'wet', '60 x 800 g', null, 'https://www.alsa-nature.nl/p/920637', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Lam (bestaande uit lamshart, lamsvlees, lamslever, lamslong, lamspens), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:f547056025bca7a535e62eb92c287764677bf709d1b78b3b4d3d948672e2a274', null from p;

-- Alsa Nature — Senior Kip & Kalkoen met aardappel en peterselie (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92620501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92620501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% kalkoen (bestaande uit kalkoenenharten, kalkoenvlees, kalkoenlever, kalkoenennekken), 28,4% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie, 0,1% peterselie', true, now(), 'sha256:fb266ac396bdcac4e90adcdcc86e428e3f6fa442bc7cf7e6bca111537392ce87', null from p;

-- Alsa Nature — JUBILEUM Kip & Zalm (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92077001
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip & Zalm', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92077001', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '52% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken), 28,8% bouillon, 15% zalm, 3% spinazie, 1% mineralen, 0,2% zalmolie', true, now(), 'sha256:6f1eddee8ba63562136d6416b4053537e664e6ec6633940f716361d3465ab54c', null from p;

-- Alsa Nature — JUBILEUM Rund (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92075201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Rund', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92075201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% rund (bestaande uit runderhart, rundvlees, runderlever, runderlong, runderpens, rundernieren), 28,8% bouillon, 5% aardappelen, 2% peterselie, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:771bb3f986b2652161946b757159c16f02d5f9a7d5b4c882668b0b05416743b2', null from p;

-- Alsa Nature — Senior Kip & Kalkoen met aardappel en peterselie (800 g)
-- bron: https://www.alsa-nature.nl/p/92620701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', 'wet', '800 g', '4050001116534', 'https://www.alsa-nature.nl/p/92620701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% kalkoen (bestaande uit kalkoenenharten, kalkoenvlees, kalkoenlever, kalkoenennekken), 28,4% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie, 0,1% peterselie', true, now(), 'sha256:fb266ac396bdcac4e90adcdcc86e428e3f6fa442bc7cf7e6bca111537392ce87', null from p;

-- Alsa Nature — FOODLOVE Lam met amarant, aardpeer & vijg (120 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99004600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', 'raw', '120 x 300 g', null, 'https://www.alsa-nature.nl/p/99004600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% lam (bestaande uit lamsharten, lamsvlees, lamslevers, lamslongen, lamspensen), 27,3% bouillon, 4% amarant, 4% vijgen, 3% aardperen, 1% mineralen, 0,5% kruiden, 0,2% zonnebloemolie', true, now(), 'sha256:19f896126cedb83b9ad4ca77ca311367b519546aa1163f8bbe869066d18d01db', null from p;

-- Alsa Nature — FOODLOVE Kalkoen met amarant, zoete aardappel & mango (12 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99005600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', 'raw', '12 x 300 g', null, 'https://www.alsa-nature.nl/p/99005600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoenmagen, kalkoenhalzen), 27,3% bouillon, 4% amarant, 4% zoete aardappel, 3% mango, 1% mineralen, 0,5% kruiden, 0,2% distelolie', true, now(), 'sha256:eeaccf92f5a2a0cd9a733c5fbb9564a463ed14fda2ae77e652874e9c79fbb54e', null from p;

-- Alsa Nature — FOODLOVE Kip met quinoa, pompoen & broccoli (120 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99007400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', 'raw', '120 x 300 g', null, 'https://www.alsa-nature.nl/p/99007400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kip (bestaande uit kippenharten, kippenvlees, kippenlevers, kippenmagen, kippenhalzen), 27,3% bouillon, 4% quinoa, 4% pompoen, 3% broccoli, 1% mineralen, 0,5% kruiden, 0,2% lijnzaadolie', true, now(), 'sha256:ed4d8e19f7eec9bc4131474c422d0501a4d4d95d941b86413b3a8084f2e37e83', null from p;

-- Alsa Nature — FOODLOVE Kip & Forel met quinoa, pastinaak & papaja (120 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99008100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', 'raw', '120 x 300 g', null, 'https://www.alsa-nature.nl/p/99008100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '40% kip (bestaande uit kippenharten, kippenvlees, kippenlevers, kippenmagen, kippenhalzen), 27,3% bouillon, 20% forel, 4% quinoa, 4% pastinaak, 3% papaya, 1% mineralen, 0,5% kruiden, 0,2% lijnzaadolie', true, now(), 'sha256:77ef1a615fd4a37a4093a031d6776961b79ac44300f21c9fe5ef4a0a81f4921a', null from p;

-- Alsa Nature — CLASSIC Lam & Kip met zoete aardappel (12 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99012301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', 'wet', '12 x 500 g', null, 'https://www.alsa-nature.nl/p/99012301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Lam (bestaande uit lamslever, lamslongen, lamsvlees, lamspens, lamshart), 30% kip (bestaande uit kippenhart, kippevlees, kippemaag, kippenek), 28,8% bouillon, 5% zoete aardappel, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:5d6f1b2594d0e46843a133aded81911cac32095a451b35b3ee7f587a506760df', null from p;

-- Alsa Nature — CLASSIC Kalkoen & Rund met wortel (30 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99011201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', 'wet', '30 x 500 g', null, 'https://www.alsa-nature.nl/p/99011201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kalkoen (bestaande uit kalkoenhart, kalkoenvlees, kalkoenmaag, kalkoennek), 30% rund (bestaande uit runderhart, rundervlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% wortelen, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:f044e9c2a74016429cb28b9fefa97c318e87e6cfbccb2fac8dd356bf29dc19e6', null from p;

-- Alsa Nature — CLASSIC Runderharten & Kip met pastinaak (12 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99012901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', 'wet', '12 x 500 g', null, 'https://www.alsa-nature.nl/p/99012901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Runderharten, 30% kip (bestaande uit kippenhart, kippenvlees, kippenlever, kippenmaag, kippennekken), 28,8% bouillon, 5% pastinaak, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:63f11bbfbe5f4514ab8298a2a2ac3f68106aea386f1a2a2d19a131382244b335', null from p;

-- Alsa Nature — FOODLOVE Kip met quinoa, pompoen & broccoli (6 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99006900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', 'raw', '6 x 300 g', '4050001118606', 'https://www.alsa-nature.nl/p/99006900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kip (bestaande uit kippenharten, kippenvlees, kippenlevers, kippenmagen, kippenhalzen), 27,3% bouillon, 4% quinoa, 4% pompoen, 3% broccoli, 1% mineralen, 0,5% kruiden, 0,2% lijnzaadolie', true, now(), 'sha256:ed4d8e19f7eec9bc4131474c422d0501a4d4d95d941b86413b3a8084f2e37e83', null from p;

-- Alsa Nature — CLASSIC Lam & Kip met zoete aardappel (6 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99012201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', 'wet', '6 x 500 g', '4050001123402', 'https://www.alsa-nature.nl/p/99012201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Lam (bestaande uit lamslever, lamslongen, lamsvlees, lamspens, lamshart), 30% kip (bestaande uit kippenhart, kippevlees, kippemaag, kippenek), 28,8% bouillon, 5% zoete aardappel, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:5d6f1b2594d0e46843a133aded81911cac32095a451b35b3ee7f587a506760df', null from p;

-- Alsa Nature — CLASSIC Lam & Kip met zoete aardappel (30 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99012401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', 'wet', '30 x 500 g', null, 'https://www.alsa-nature.nl/p/99012401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Lam (bestaande uit lamslever, lamslongen, lamsvlees, lamspens, lamshart), 30% kip (bestaande uit kippenhart, kippevlees, kippemaag, kippenek), 28,8% bouillon, 5% zoete aardappel, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:5d6f1b2594d0e46843a133aded81911cac32095a451b35b3ee7f587a506760df', null from p;

-- Alsa Nature — Speciaal Sensibel (30 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92040400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Sensibel', 'wet', '30 x 400 g', null, 'https://www.alsa-nature.nl/p/92040400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenmagen, kippenlever, kippennekken), 30% bouillon, 8% rijst, 6% appels, 5% wortel, 5% hüttenkäse, 1% mineralen, monocalciumfosfaat', true, now(), 'sha256:7054a6c636ce1f252f50ac80a2d170481c5f99cdf2264b889a71298b9bc8c496', null from p;

-- Alsa Nature — FINEST Kippen-spiervlees met pastinaak, pompoen en lijnolie (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920441
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FINEST Kippen-spiervlees met pastinaak, pompoen en lijnolie', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/920441', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Kippenspiervlees, 30% kip (bestaande uit kippenharten, kippenlever, kippenmagen, kippenhalsen), 28,8% bouillon, 5% pastinaak, 2% pompoen, 1% mineralen, 0,2% lijnolie.', true, now(), 'sha256:ca2f4a1e81de1bb6841baff9e6b91542b39a9fe8708c52e9732ea1e003764af9', null from p;

-- Alsa Nature — Speciaal Light-menu (30 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92040600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Light-menu', 'wet', '30 x 400 g', null, 'https://www.alsa-nature.nl/p/92040600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '56% Kip (bestaande uit kippenmagen, kippenlever, kippennekken), 31,6% bouillon, 5% pompoen, 4% rijst, 2% cellulose, 1% mineralen, 0,2% distelolie, 0,2% zalmolie', true, now(), 'sha256:d21ee0ded14bcae787236b3e4a81c600c570ccffdcd0492ae47e996b8f0d58fb', null from p;

-- Alsa Nature — SINGLE Rendier met aardappel (90 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920650
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Rendier met aardappel', 'wet', '90 x 400 g', null, 'https://www.alsa-nature.nl/p/920650', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Rendier, 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:5e00e05c0e60cac39c54f32530c54082eed627c0e03825fae4926eaa3f86ae6f', null from p;

-- Alsa Nature — Senior Lam met pastinaak, pompoen & abrikoos (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92041800
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92041800', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '61% Lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslongen, lamspens), 29,5% bouillon, 4% pastinaak, 2% pompoen, 2% abrikoos, 1% mineralen, 0,5% distelolie.', true, now(), 'sha256:d80a3a081cdd98e3264cb1e8c715c03e858292e88316da2f0ab0c9dd161ef2b6', null from p;

-- Alsa Nature — INSECTUM Insecten met erwten, pompoen & abrikoos (6 x 375 g)
-- bron: https://www.alsa-nature.nl/p/920513
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', 'wet', '6 x 375 g', null, 'https://www.alsa-nature.nl/p/920513', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% insecten (zwarte soldaatvlieg), 36% bouillon, 4% erwten, 4% pompoen, 4% abrikoos, 1% mineralen, 0,5% kruiden, 0,5% distelolie', true, now(), 'sha256:8be03b622db20cada942549c91e0b26edcf5c1bee6d9318e0a7d84011d1520ee', null from p;

-- Alsa Nature — SIMPLE Kangoeroe puur (400 g)
-- bron: https://www.alsa-nature.nl/p/920541
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Kangoeroe puur', 'wet', '400 g', '4050001115261', 'https://www.alsa-nature.nl/p/920541', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 28% bouillon', true, now(), 'sha256:53cd16766f13dbb6204f668f2fd590887c22f6fac057fd66a54680aea1d2ebdf', null from p;

-- Alsa Nature — SINGLE Gans puur (30 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920656
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Gans puur', 'wet', '30 x 400 g', null, 'https://www.alsa-nature.nl/p/920656', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Gans, 28,5% bouillon, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:57e1b17c747342add9952c2fab7b32537999c9f7cdd3de28ad981b0ca43a4bea', null from p;

-- Alsa Nature — SINGLE Gans puur (90 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920658
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Gans puur', 'wet', '90 x 400 g', null, 'https://www.alsa-nature.nl/p/920658', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Gans, 28,5% bouillon, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:57e1b17c747342add9952c2fab7b32537999c9f7cdd3de28ad981b0ca43a4bea', null from p;

-- Alsa Nature — SINGLE Geit met pastinaak (90 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920670
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Geit met pastinaak', 'wet', '90 x 800 g', null, 'https://www.alsa-nature.nl/p/920670', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Geit (bestaande uit geitenspiervlees, geitenhart, geitenlever, geitenlong), 29,5% bouillon, 5% pastinaak, 1% mineralen, 0,5% lijnolie.', true, now(), 'sha256:e407571587adef11047ea053b3136f6fea0fdfcf7265b73108285aea3ba5fd67', null from p;

-- Alsa Nature — SINGLE Rendier met aardappel (90 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920654
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Rendier met aardappel', 'wet', '90 x 800 g', null, 'https://www.alsa-nature.nl/p/920654', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Rendier, 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:5e00e05c0e60cac39c54f32530c54082eed627c0e03825fae4926eaa3f86ae6f', null from p;

-- Alsa Nature — JUBILEUM Kip & Kalkoen (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92073901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92073901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '43% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken, kippenvet), 28,8% bouillon, 20% kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenmaag, kalkoenlever, kalkoennekken), 4% courgette, 3% wortel, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:b20633e4cf744d14d8fe3c546f6acf25dbfc093c90fcac5834e9bfdf71178874', null from p;

-- Alsa Nature — JUBILEUM Kip (400 g)
-- bron: https://www.alsa-nature.nl/p/92074401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip', 'wet', '400 g', '4050001120128', 'https://www.alsa-nature.nl/p/92074401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken, kippenvet), 28,8% bouillon, 4% broccoli, 3% perzik, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:6558b32f439496c8c3c9d7e6ff5c5f1e5bdad3f7e661403e9d177004e336cd2b', null from p;

-- Alsa Nature — JUBILEUM Kip (800 g)
-- bron: https://www.alsa-nature.nl/p/92074701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip', 'wet', '800 g', '4050001120135', 'https://www.alsa-nature.nl/p/92074701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken, kippenvet), 28,8% bouillon, 4% broccoli, 3% perzik, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:6558b32f439496c8c3c9d7e6ff5c5f1e5bdad3f7e661403e9d177004e336cd2b', null from p;

-- Alsa Nature — JUBILEUM Kip (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92074901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92074901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken, kippenvet), 28,8% bouillon, 4% broccoli, 3% perzik, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:6558b32f439496c8c3c9d7e6ff5c5f1e5bdad3f7e661403e9d177004e336cd2b', null from p;

-- Alsa Nature — JUBILEUM Lam (400 g)
-- bron: https://www.alsa-nature.nl/p/92075601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Lam', 'wet', '400 g', '4050001120142', 'https://www.alsa-nature.nl/p/92075601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslong, lamspens), 28,8% bouillon, 5% aardpeer, 2% bonen, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:59fb5938f9e043737b259cc8873248986c1eeb861c882839a1e06c713bb4b309', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;

-- Automatisch overgenomen etiketten, batch 7 van 2026-11-13 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Alsa Nature — JUBILEUM Lam (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92075801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Lam', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92075801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslong, lamspens), 28,8% bouillon, 5% aardpeer, 2% bonen, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:59fb5938f9e043737b259cc8873248986c1eeb861c882839a1e06c713bb4b309', null from p;

-- Alsa Nature — JUBILEUM Rund (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92075501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Rund', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92075501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% rund (bestaande uit runderhart, rundvlees, runderlever, runderlong, runderpens, rundernieren), 28,8% bouillon, 5% aardappelen, 2% peterselie, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:771bb3f986b2652161946b757159c16f02d5f9a7d5b4c882668b0b05416743b2', null from p;

-- Alsa Nature — Speciaal Sensibel (200 g)
-- bron: https://www.alsa-nature.nl/p/92170401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Sensibel', 'wet', '200 g', '4050001116763', 'https://www.alsa-nature.nl/p/92170401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenmagen, kippenlever, kippennekken), 30% bouillon, 8% rijst, 6% appels, 5% wortel, 5% hüttenkäse, 1% mineralen, monocalciumfosfaat', true, now(), 'sha256:7054a6c636ce1f252f50ac80a2d170481c5f99cdf2264b889a71298b9bc8c496', null from p;

-- Alsa Nature — JUBILEUM Kip (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92074601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92074601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken, kippenvet), 28,8% bouillon, 4% broccoli, 3% perzik, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:6558b32f439496c8c3c9d7e6ff5c5f1e5bdad3f7e661403e9d177004e336cd2b', null from p;

-- Alsa Nature — JUBILEUM Kip (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92074501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92074501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken, kippenvet), 28,8% bouillon, 4% broccoli, 3% perzik, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:6558b32f439496c8c3c9d7e6ff5c5f1e5bdad3f7e661403e9d177004e336cd2b', null from p;

-- Alsa Nature — SINGLE Gans puur (800 g)
-- bron: https://www.alsa-nature.nl/p/92260701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Gans puur', 'wet', '800 g', '4050001104623', 'https://www.alsa-nature.nl/p/92260701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Gans, 28,5% bouillon, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:57e1b17c747342add9952c2fab7b32537999c9f7cdd3de28ad981b0ca43a4bea', null from p;

-- Alsa Nature — SINGLE Gans puur (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92260901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Gans puur', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92260901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Gans, 28,5% bouillon, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:57e1b17c747342add9952c2fab7b32537999c9f7cdd3de28ad981b0ca43a4bea', null from p;

-- Alsa Nature — JUBILEUM Lam (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92075701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Lam', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92075701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslong, lamspens), 28,8% bouillon, 5% aardpeer, 2% bonen, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:59fb5938f9e043737b259cc8873248986c1eeb861c882839a1e06c713bb4b309', null from p;

-- Alsa Nature — Speciaal Sensibel (400 g)
-- bron: https://www.alsa-nature.nl/p/92170101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Sensibel', 'wet', '400 g', '4050001116756', 'https://www.alsa-nature.nl/p/92170101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenmagen, kippenlever, kippennekken), 30% bouillon, 8% rijst, 6% appels, 5% wortel, 5% hüttenkäse, 1% mineralen, monocalciumfosfaat', true, now(), 'sha256:7054a6c636ce1f252f50ac80a2d170481c5f99cdf2264b889a71298b9bc8c496', null from p;

-- Alsa Nature — Speciaal Nierdieet (400 g)
-- bron: https://www.alsa-nature.nl/p/92180101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Nierdieet', 'wet', '400 g', '4050001116732', 'https://www.alsa-nature.nl/p/92180101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35,3% Bouillon, 35% kip (bestaande uit kippenharten, kippenmagen, kippenvet), 12% rijst, 10% aardappelen, 5% pompoen, 1% mineralen, 1% cellulose, 0,5% zalmolie, 0,1% voleipoeder, 0,1% biergist', true, now(), 'sha256:5bc16099b3cf0be75f656662e9c63fee5a52c64f22b47951501ab4c54778fbfe', null from p;

-- Alsa Nature — SINGLE Gans puur (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92260801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Gans puur', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92260801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Gans, 28,5% bouillon, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:57e1b17c747342add9952c2fab7b32537999c9f7cdd3de28ad981b0ca43a4bea', null from p;

-- Alsa Nature — Speciaal Light-menu (400 g)
-- bron: https://www.alsa-nature.nl/p/92330401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Light-menu', 'wet', '400 g', '4050001116749', 'https://www.alsa-nature.nl/p/92330401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '56% Kip (bestaande uit kippenmagen, kippenlever, kippennekken), 31,6% bouillon, 5% pompoen, 4% rijst, 2% cellulose, 1% mineralen, 0,2% distelolie, 0,2% zalmolie', true, now(), 'sha256:d21ee0ded14bcae787236b3e4a81c600c570ccffdcd0492ae47e996b8f0d58fb', null from p;

-- Alsa Nature — FOODLOVE Lam met amarant, aardpeer & vijg (6 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99004100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', 'raw', '6 x 300 g', '4050001118569', 'https://www.alsa-nature.nl/p/99004100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% lam (bestaande uit lamsharten, lamsvlees, lamslevers, lamslongen, lamspensen), 27,3% bouillon, 4% amarant, 4% vijgen, 3% aardperen, 1% mineralen, 0,5% kruiden, 0,2% zonnebloemolie', true, now(), 'sha256:19f896126cedb83b9ad4ca77ca311367b519546aa1163f8bbe869066d18d01db', null from p;

-- Alsa Nature — FOODLOVE Lam met amarant, aardpeer & vijg (12 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99004200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', 'raw', '12 x 300 g', null, 'https://www.alsa-nature.nl/p/99004200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% lam (bestaande uit lamsharten, lamsvlees, lamslevers, lamslongen, lamspensen), 27,3% bouillon, 4% amarant, 4% vijgen, 3% aardperen, 1% mineralen, 0,5% kruiden, 0,2% zonnebloemolie', true, now(), 'sha256:19f896126cedb83b9ad4ca77ca311367b519546aa1163f8bbe869066d18d01db', null from p;

-- Alsa Nature — FOODLOVE Kalkoen met amarant, zoete aardappel & mango (90 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99005900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', 'raw', '90 x 300 g', null, 'https://www.alsa-nature.nl/p/99005900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoenmagen, kalkoenhalzen), 27,3% bouillon, 4% amarant, 4% zoete aardappel, 3% mango, 1% mineralen, 0,5% kruiden, 0,2% distelolie', true, now(), 'sha256:eeaccf92f5a2a0cd9a733c5fbb9564a463ed14fda2ae77e652874e9c79fbb54e', null from p;

-- Alsa Nature — FOODLOVE Rund met amarant, zoete aardappel & bessen (120 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99005300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', 'raw', '120 x 300 g', null, 'https://www.alsa-nature.nl/p/99005300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% rund (bestaande uit runderharten, rundvlees, runderlongen, runderlevers, runderpensen), 27,3% bouillon, 4% amarant, 4% zoete aardappel, 2% veenbessen, 1% frambozen, 1% mineralen, 0,5% kruiden, 0,2% zonnebloemolie', true, now(), 'sha256:3df457138c10a8d101a9b07f691104848db8814ce40f4d842d893ac83a4a6284', null from p;

-- Alsa Nature — Struisvogel Enkel-eiwit (3 kg)
-- bron: https://www.alsa-nature.nl/p/91350201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Struisvogel Enkel-eiwit', 'kibble', '3 kg', '4050001101851', 'https://www.alsa-nature.nl/p/91350201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, struisvogel 24%, bietenvezels, oliën en vetten, mineralen, natriumchloride', true, now(), 'sha256:c0b93cbdcfb3f92736dcd44f7671a93a2656e29da9186edf81c533b0771e747c', null from p;

-- Alsa Nature — Struisvogel Enkel-eiwit (12 kg)
-- bron: https://www.alsa-nature.nl/p/91350401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Struisvogel Enkel-eiwit', 'kibble', '12 kg', '4050001101875', 'https://www.alsa-nature.nl/p/91350401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, struisvogel 24%, bietenvezels, oliën en vetten, mineralen, natriumchloride', true, now(), 'sha256:c0b93cbdcfb3f92736dcd44f7671a93a2656e29da9186edf81c533b0771e747c', null from p;

-- Alsa Nature — Classic Kalfs-Ragout met Peterselie-aardappel en pompoen (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92001501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92001501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kalf, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,4% bouillon, 5% aardappel, 2% pompoen, 1% mineralen, 0,5% peterselie, 0,1% distelolie', true, now(), 'sha256:6df952e1d131a664ded8343a27b3f93da3a6aad25a4d1e50d18ae32adfdecaeb', null from p;

-- Alsa Nature — Classic Hert met zoete aardappel en kastanjes (6 x 200 g)
-- bron: https://www.alsa-nature.nl/p/92007201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', 'wet', '6 x 200 g', null, 'https://www.alsa-nature.nl/p/92007201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Hert, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 27,9% bouillon, 5% zoete aardappel, 1% kastanje, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:f6769b7bfa9d15eac38dc1a78c0c9acb6b0c81a72d8643a3fd426c161d0da13c', null from p;

-- Alsa Nature — JUBILEUM Kip & Kalkoen (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92074001
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92074001', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '43% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken, kippenvet), 28,8% bouillon, 20% kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenmaag, kalkoenlever, kalkoennekken), 4% courgette, 3% wortel, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:b20633e4cf744d14d8fe3c546f6acf25dbfc093c90fcac5834e9bfdf71178874', null from p;

-- Alsa Nature — Classic Hert met zoete aardappel en kastanjes (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92007801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92007801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Hert, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 27,9% bouillon, 5% zoete aardappel, 1% kastanje, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:f6769b7bfa9d15eac38dc1a78c0c9acb6b0c81a72d8643a3fd426c161d0da13c', null from p;

-- Alsa Nature — JUBILEUM Kip & Kalkoen (400 g)
-- bron: https://www.alsa-nature.nl/p/92073801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', 'wet', '400 g', '4050001120166', 'https://www.alsa-nature.nl/p/92073801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '43% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken, kippenvet), 28,8% bouillon, 20% kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenmaag, kalkoenlever, kalkoennekken), 4% courgette, 3% wortel, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:b20633e4cf744d14d8fe3c546f6acf25dbfc093c90fcac5834e9bfdf71178874', null from p;

-- Alsa Nature — JUBILEUM Kip & Kalkoen (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92074301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92074301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '43% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken, kippenvet), 28,8% bouillon, 20% kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenmaag, kalkoenlever, kalkoennekken), 4% courgette, 3% wortel, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:b20633e4cf744d14d8fe3c546f6acf25dbfc093c90fcac5834e9bfdf71178874', null from p;

-- Alsa Nature — 4-SEASONS Herfstmenu Wild & Hert met zoete aardappel (400 g)
-- bron: https://www.alsa-nature.nl/p/92089901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', '4-SEASONS Herfstmenu Wild & Hert met zoete aardappel', 'wet', '400 g', '4050001123754', 'https://www.alsa-nature.nl/p/92089901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '55% Wild, 26,9% bouillon, 10% Hert, 3% zoete aardappel, 2% peren, 2% cranberries, mineralen, 0,1% teunisbloemolie', true, now(), 'sha256:6b0be9de7103e25127e9ba095db682f57bcce53ec8a1d7b5f3410fc8de7abe73', null from p;

-- Alsa Nature — 4-SEASONS Zomermenu Rund & Zalm met mango en meloen (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92089701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', '4-SEASONS Zomermenu Rund & Zalm met mango en meloen', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92089701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% Rund (bestaande uit runderhart, rundervlees, runderlongen, runderlever, runderpens), 29,9% bouillon, 15% zalm, 2% mango, 2% meloen, mineralen, 0,1% zalmolie', true, now(), 'sha256:62703d4fcc5aa05a3eee6339c223af0262ff2e6746eb5eeb69626128b7ece592', null from p;

-- Alsa Nature — Classic Gevogelte met volkorenrijst en wortel (200 g)
-- bron: https://www.alsa-nature.nl/p/92100701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', 'wet', '200 g', '4050001116084', 'https://www.alsa-nature.nl/p/92100701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Gevogelte (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,9% bouillon, 5% volkorenrijst, 4% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:317891f7d558c88d829209ca23f7b14b9d739fec355d1a86673591d12420cc45', null from p;

-- Alsa Nature — 4-SEASONS Zomermenu Rund & Zalm met mango en meloen (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92089801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', '4-SEASONS Zomermenu Rund & Zalm met mango en meloen', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92089801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% Rund (bestaande uit runderhart, rundervlees, runderlongen, runderlever, runderpens), 29,9% bouillon, 15% zalm, 2% mango, 2% meloen, mineralen, 0,1% zalmolie', true, now(), 'sha256:62703d4fcc5aa05a3eee6339c223af0262ff2e6746eb5eeb69626128b7ece592', null from p;

-- Alsa Nature — Classic Lam met volkorenpasta en wortel (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92130601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92130601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslongen, lamspens), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,9% bouillon, 5% volkorennoedels, 4% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:8c1c078fccceb1540b1c64b7506e19a88ba3eebb39424e173a7574b7ebb268cb', null from p;

-- Alsa Nature — Classic Gevogelte met volkorenrijst en wortel (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92100301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92100301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Gevogelte (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,9% bouillon, 5% volkorenrijst, 4% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:317891f7d558c88d829209ca23f7b14b9d739fec355d1a86673591d12420cc45', null from p;

-- Alsa Nature — Classic Lam met volkorenpasta en wortel (800 g)
-- bron: https://www.alsa-nature.nl/p/92130401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', 'wet', '800 g', '4050001116206', 'https://www.alsa-nature.nl/p/92130401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslongen, lamspens), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,9% bouillon, 5% volkorennoedels, 4% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:8c1c078fccceb1540b1c64b7506e19a88ba3eebb39424e173a7574b7ebb268cb', null from p;

-- Alsa Nature — Classic Lam met volkorenpasta en wortel (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92130201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92130201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslongen, lamspens), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,9% bouillon, 5% volkorennoedels, 4% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:8c1c078fccceb1540b1c64b7506e19a88ba3eebb39424e173a7574b7ebb268cb', null from p;

-- Alsa Nature — Classic Lam met volkorenpasta en wortel (12 x 200 g)
-- bron: https://www.alsa-nature.nl/p/92130901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', 'wet', '12 x 200 g', null, 'https://www.alsa-nature.nl/p/92130901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslongen, lamspens), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,9% bouillon, 5% volkorennoedels, 4% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:8c1c078fccceb1540b1c64b7506e19a88ba3eebb39424e173a7574b7ebb268cb', null from p;

-- Alsa Nature — SINGLE Lam met aardappel (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92510901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Lam met aardappel', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92510901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Lam (bestaande uit lamshart, lamsvlees, lamslever, lamslong, lamspens), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:f547056025bca7a535e62eb92c287764677bf709d1b78b3b4d3d948672e2a274', null from p;

-- Alsa Nature — Lamsworst met aardappel & wortelen (6 x 200 g)
-- bron: https://www.alsa-nature.nl/p/93410201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Lamsworst met aardappel & wortelen', 'wet', '6 x 200 g', '4050001102643', 'https://www.alsa-nature.nl/p/93410201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '47% lam (bestaande uit lamspens, lamslever, lamslongen, lamsharten), 29,8% bouillon, 15% gevogelte, 4% wortel, 4% aardappelen, 0,1% distelolie, 0,1% mineralen', true, now(), 'sha256:432a61639f031ebd2dd1ec9b2390e4744c8976c6c5b37037e0ab94c8007db559', null from p;

-- Alsa Nature — JUBILEUM Kip & Zalm (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92077301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip & Zalm', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92077301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '52% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken), 28,8% bouillon, 15% zalm, 3% spinazie, 1% mineralen, 0,2% zalmolie', true, now(), 'sha256:6f1eddee8ba63562136d6416b4053537e664e6ec6633940f716361d3465ab54c', null from p;

-- Alsa Nature — SINGLE Rendier met aardappel (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92520501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Rendier met aardappel', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92520501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Rendier, 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:5e00e05c0e60cac39c54f32530c54082eed627c0e03825fae4926eaa3f86ae6f', null from p;

-- Alsa Nature — Classic Rund & Rijst met rode bieten & appel (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92200501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92200501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63% Rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 27,9% bouillon, 4% rijst, 2% rode biet, 2% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:2ece60d8d8fad762f709ba0d2e3ee48cae2b942fa53a1845a03266d395bab419', null from p;

-- Alsa Nature — Classic Gevogelte met volkorenrijst en wortel (12 x 200 g)
-- bron: https://www.alsa-nature.nl/p/92100901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', 'wet', '12 x 200 g', null, 'https://www.alsa-nature.nl/p/92100901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Gevogelte (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,9% bouillon, 5% volkorenrijst, 4% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:317891f7d558c88d829209ca23f7b14b9d739fec355d1a86673591d12420cc45', null from p;

-- Alsa Nature — Speciaal Light-menu (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92330601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Light-menu', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92330601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '56% Kip (bestaande uit kippenmagen, kippenlever, kippennekken), 31,6% bouillon, 5% pompoen, 4% rijst, 2% cellulose, 1% mineralen, 0,2% distelolie, 0,2% zalmolie', true, now(), 'sha256:d21ee0ded14bcae787236b3e4a81c600c570ccffdcd0492ae47e996b8f0d58fb', null from p;

-- Alsa Nature — Lamsworst met aardappel & wortelen (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/93410801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Lamsworst met aardappel & wortelen', 'wet', '6 x 800 g', '4050001102704', 'https://www.alsa-nature.nl/p/93410801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '47% lam (bestaande uit lamspens, lamslever, lamslongen, lamsharten), 29,8% bouillon, 15% gevogelte, 4% wortel, 4% aardappelen, 0,1% distelolie, 0,1% mineralen', true, now(), 'sha256:432a61639f031ebd2dd1ec9b2390e4744c8976c6c5b37037e0ab94c8007db559', null from p;

-- Alsa Nature — Gevogelteworst met rijst (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/93440801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Gevogelteworst met rijst', 'wet', '6 x 800 g', '4050001102681', 'https://www.alsa-nature.nl/p/93440801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '54% gevogelte (bestaande uit gevogeltevlees, gevogeltelever, gevogeltemagen, gevogelteharten), 30,8% bouillon, 11% rundvlees, 4% rijst, 0,1% distelolie, 0,1% mineralen', true, now(), 'sha256:e3da2ac23fe95c6342c3e679e0f8fb588780a9940f361d5b92179a79fbe6f509', null from p;

-- Alsa Nature — FOODLOVE Kalkoen met amarant, zoete aardappel & mango (30 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99005700
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', 'raw', '30 x 300 g', null, 'https://www.alsa-nature.nl/p/99005700', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoenmagen, kalkoenhalzen), 27,3% bouillon, 4% amarant, 4% zoete aardappel, 3% mango, 1% mineralen, 0,5% kruiden, 0,2% distelolie', true, now(), 'sha256:eeaccf92f5a2a0cd9a733c5fbb9564a463ed14fda2ae77e652874e9c79fbb54e', null from p;

-- Alsa Nature — FOODLOVE Kalkoen met amarant, zoete aardappel & mango (6 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99005500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', 'raw', '6 x 300 g', '4050001118583', 'https://www.alsa-nature.nl/p/99005500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoenmagen, kalkoenhalzen), 27,3% bouillon, 4% amarant, 4% zoete aardappel, 3% mango, 1% mineralen, 0,5% kruiden, 0,2% distelolie', true, now(), 'sha256:eeaccf92f5a2a0cd9a733c5fbb9564a463ed14fda2ae77e652874e9c79fbb54e', null from p;

-- Alsa Nature — FOODLOVE Kalkoen met amarant, zoete aardappel & mango (120 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99006000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', 'raw', '120 x 300 g', null, 'https://www.alsa-nature.nl/p/99006000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoenmagen, kalkoenhalzen), 27,3% bouillon, 4% amarant, 4% zoete aardappel, 3% mango, 1% mineralen, 0,5% kruiden, 0,2% distelolie', true, now(), 'sha256:eeaccf92f5a2a0cd9a733c5fbb9564a463ed14fda2ae77e652874e9c79fbb54e', null from p;

-- Alsa Nature — FOODLOVE Kalf met quinoa, boerenkool & appel (30 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99006400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', 'raw', '30 x 300 g', null, 'https://www.alsa-nature.nl/p/99006400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kalf (bestaande uit kalfsharten, kalfslongen, kalfspens), 27,3% bouillon, 4% quinoa, 4% boerenkool, 3% appel, 1% mineralen, 0,5% kruiden, 0,2% distelolie', true, now(), 'sha256:d1e5605427439abf5d258930281f91cb1b137012c26abe5a2ea14d29b6544880', null from p;

-- Alsa Nature — FOODLOVE Kalf met quinoa, boerenkool & appel (60 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99006500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', 'raw', '60 x 300 g', null, 'https://www.alsa-nature.nl/p/99006500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kalf (bestaande uit kalfsharten, kalfslongen, kalfspens), 27,3% bouillon, 4% quinoa, 4% boerenkool, 3% appel, 1% mineralen, 0,5% kruiden, 0,2% distelolie', true, now(), 'sha256:d1e5605427439abf5d258930281f91cb1b137012c26abe5a2ea14d29b6544880', null from p;

-- Alsa Nature — CLASSIC Eend & Rund met aardappel (6 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99010401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', 'wet', '6 x 500 g', '4050001123372', 'https://www.alsa-nature.nl/p/99010401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Eend (bestaande uit eendenmaag, eendennek, eendenhart), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% aardappel, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:fa7b052a87dd44e6b4be9a2b412d6e48e846544f045b13405cc01725e0fdd50d', null from p;

-- Alsa Nature — CLASSIC Wildzwijn & Rund met courgette (12 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99011701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', 'wet', '12 x 500 g', null, 'https://www.alsa-nature.nl/p/99011701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Wildzwijn (bestaande uit wildzwijnvlees), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% courgette, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:87e2446ca93cc5c653b46fb9ff3d72ca3cd6dcf950bc0dea7e563e62290079bb', null from p;

-- Alsa Nature — CLASSIC Wildzwijn & Rund met courgette (30 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99011801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', 'wet', '30 x 500 g', null, 'https://www.alsa-nature.nl/p/99011801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Wildzwijn (bestaande uit wildzwijnvlees), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% courgette, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:87e2446ca93cc5c653b46fb9ff3d72ca3cd6dcf950bc0dea7e563e62290079bb', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;

-- Automatisch overgenomen etiketten, batch 8 van 2026-11-13 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Alsa Nature — CLASSIC Wildzwijn & Rund met courgette (90 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99012001
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', 'wet', '90 x 500 g', null, 'https://www.alsa-nature.nl/p/99012001', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Wildzwijn (bestaande uit wildzwijnvlees), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% courgette, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:87e2446ca93cc5c653b46fb9ff3d72ca3cd6dcf950bc0dea7e563e62290079bb', null from p;

-- Alsa Nature — CLASSIC Kalkoen & Rund met wortel (120 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99011501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', 'wet', '120 x 500 g', null, 'https://www.alsa-nature.nl/p/99011501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kalkoen (bestaande uit kalkoenhart, kalkoenvlees, kalkoenmaag, kalkoennek), 30% rund (bestaande uit runderhart, rundervlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% wortelen, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:f044e9c2a74016429cb28b9fefa97c318e87e6cfbccb2fac8dd356bf29dc19e6', null from p;

-- Alsa Nature — CLASSIC Wildzwijn & Rund met courgette (120 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99012101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', 'wet', '120 x 500 g', null, 'https://www.alsa-nature.nl/p/99012101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Wildzwijn (bestaande uit wildzwijnvlees), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% courgette, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:87e2446ca93cc5c653b46fb9ff3d72ca3cd6dcf950bc0dea7e563e62290079bb', null from p;

-- Alsa Nature — CLASSIC Gevogelteharten & Kip met rode biet (12 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99013501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', 'wet', '12 x 500 g', null, 'https://www.alsa-nature.nl/p/99013501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Gevogelteharten, 30% kip (bestaande uit kippenhart, kippenvlees, kippenlever, kippenmaag en kippennek), 28,8% bouillon, 5% rode biet, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:8c1eeeadfdd1f4790726ff6b89f714aa9fa4aeb9e4697218a38ef851de0aefab', null from p;

-- Alsa Nature — CLASSIC Gevogelteharten & Kip met rode biet (30 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99013601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', 'wet', '30 x 500 g', null, 'https://www.alsa-nature.nl/p/99013601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Gevogelteharten, 30% kip (bestaande uit kippenhart, kippenvlees, kippenlever, kippenmaag en kippennek), 28,8% bouillon, 5% rode biet, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:8c1eeeadfdd1f4790726ff6b89f714aa9fa4aeb9e4697218a38ef851de0aefab', null from p;

-- Alsa Nature — CLASSIC Gevogelteharten & Kip met rode biet (90 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99013801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', 'wet', '90 x 500 g', null, 'https://www.alsa-nature.nl/p/99013801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Gevogelteharten, 30% kip (bestaande uit kippenhart, kippenvlees, kippenlever, kippenmaag en kippennek), 28,8% bouillon, 5% rode biet, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:8c1eeeadfdd1f4790726ff6b89f714aa9fa4aeb9e4697218a38ef851de0aefab', null from p;

-- Alsa Nature — CLASSIC Gevogelteharten & Kip met rode biet (120 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99013901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', 'wet', '120 x 500 g', null, 'https://www.alsa-nature.nl/p/99013901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Gevogelteharten, 30% kip (bestaande uit kippenhart, kippenvlees, kippenlever, kippenmaag en kippennek), 28,8% bouillon, 5% rode biet, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:8c1eeeadfdd1f4790726ff6b89f714aa9fa4aeb9e4697218a38ef851de0aefab', null from p;

-- Alsa Nature — Light Speciaal Eiwit (1,5 kg)
-- bron: https://www.alsa-nature.nl/p/91310101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Light Speciaal Eiwit', 'kibble', '1,5 kg', '4050001101721', 'https://www.alsa-nature.nl/p/91310101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gevogelte 21%, rijst, bietenvezels, gevogelte eiwit gehydroliseerd 3%, vet van gevogelte, natriumchloride, cichoreipoeder, Nieuw-Zeelandse groenlipmossel (Perna canaliculus) gedroogd', true, now(), 'sha256:075928fe2feb8008a8f2c9ee0685d316c8e96c7c4276b1b651c3252e51deb294', null from p;

-- Alsa Nature — Classic Kalfs-Ragout met Peterselie-aardappel en pompoen (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92001901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92001901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kalf, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,4% bouillon, 5% aardappel, 2% pompoen, 1% mineralen, 0,5% peterselie, 0,1% distelolie', true, now(), 'sha256:6df952e1d131a664ded8343a27b3f93da3a6aad25a4d1e50d18ae32adfdecaeb', null from p;

-- Alsa Nature — Struisvogel Enkel-eiwit (2 x 12 kg)
-- bron: https://www.alsa-nature.nl/p/91350501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Struisvogel Enkel-eiwit', 'kibble', '2 x 12 kg', null, 'https://www.alsa-nature.nl/p/91350501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, struisvogel 24%, bietenvezels, oliën en vetten, mineralen, natriumchloride', true, now(), 'sha256:c0b93cbdcfb3f92736dcd44f7671a93a2656e29da9186edf81c533b0771e747c', null from p;

-- Alsa Nature — Classic Kalfs-Ragout met Peterselie-aardappel en pompoen (800 g)
-- bron: https://www.alsa-nature.nl/p/92001701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', 'wet', '800 g', '4050001116329', 'https://www.alsa-nature.nl/p/92001701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kalf, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,4% bouillon, 5% aardappel, 2% pompoen, 1% mineralen, 0,5% peterselie, 0,1% distelolie', true, now(), 'sha256:6df952e1d131a664ded8343a27b3f93da3a6aad25a4d1e50d18ae32adfdecaeb', null from p;

-- Alsa Nature — Classic Kip gerecht met Rijst, Peer & Venkel (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92002401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92002401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 25,9% bouillon, 5% rijst, 2% peer, 1% venkel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:6fbe7005183710e46a8664c247fa4ae1972c98e8bc2718f5973f2048dae6e474', null from p;

-- Alsa Nature — Classic Kip gerecht met Rijst, Peer & Venkel (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92002201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92002201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 25,9% bouillon, 5% rijst, 2% peer, 1% venkel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:6fbe7005183710e46a8664c247fa4ae1972c98e8bc2718f5973f2048dae6e474', null from p;

-- Alsa Nature — SINGLE Kangoeroe met aardappel (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92004901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92004901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:7e615daef2ffbd8f7b5126ebc8da26c36ce43867c0960b84b111bd172d163855', null from p;

-- Alsa Nature — Classic Kip gerecht met Rijst, Peer & Venkel (400 g)
-- bron: https://www.alsa-nature.nl/p/92002001
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', 'wet', '400 g', '4050001116336', 'https://www.alsa-nature.nl/p/92002001', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 25,9% bouillon, 5% rijst, 2% peer, 1% venkel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:6fbe7005183710e46a8664c247fa4ae1972c98e8bc2718f5973f2048dae6e474', null from p;

-- Alsa Nature — SINGLE Kangoeroe met aardappel (800 g)
-- bron: https://www.alsa-nature.nl/p/92004701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', 'wet', '800 g', '4050001116596', 'https://www.alsa-nature.nl/p/92004701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:7e615daef2ffbd8f7b5126ebc8da26c36ce43867c0960b84b111bd172d163855', null from p;

-- Alsa Nature — Classic Kalkoen met zoete aardappel, peer & paardebloem (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92027600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92027600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '31% Kalkoen (bestaande uit kalkoenenharten, kalkoenvlees, kalkoenlever, kalkoenennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,9% bouillon, 3% zoete aardappel, 3% peer, 1% paardenbloem, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:25559e76815297ca19ceb3b9957f3b08a32043e417960a8285520bc27b9a93d0', null from p;

-- Alsa Nature — JUNIOR Lam met aardappel (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92028500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Lam met aardappel', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92028500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslongen, lamspens), 28,8% bouillon, 2% aardappel, 2% erwt, 2% wortel, 1% mineralen, 0,1% levertraan, 0,1% lijnolie', true, now(), 'sha256:544e52e477781db8fb4a900e663baa3f6f6b8f34539e8157fb9e48d8aa3ce197', null from p;

-- Alsa Nature — Classic Wild-Ragout met rode bieten, aardappel en appel (400 g)
-- bron: https://www.alsa-nature.nl/p/92005901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', 'wet', '400 g', '4050001116091', 'https://www.alsa-nature.nl/p/92005901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Wild (bestaande uit hart, vlees, lever, longen en pens van wild), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 23,9% bouillon, 5% aardappel, 3% rode biet, 2% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:1fc11a3d2946c1847e5fce4c494744b02a219cfb990b5310acdcd1ba9be3aa7c', null from p;

-- Alsa Nature — JUNIOR Kip met pastinaak & appel (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92028900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Kip met pastinaak & appel', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92028900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 28,8% bouillon, 3% pastinaak, 3% appel, 1% mineralen, 0,1% levertraan, 0,1% lijnolie', true, now(), 'sha256:62136434906283004c379230d0485b915532284da9ec6eb5a09f3b267076a2ff', null from p;

-- Alsa Nature — JUNIOR Runderhart met aardappel & wortel (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92029400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Runderhart met aardappel & wortel', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92029400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Rund (bestaande uit rundvlees, 10% runderhart, runderlever, runderlongen, runderpens), 28,8% bouillon, 3% aardappel, 3% wortel, 1% mineralen, 0,1% levertraan, 0,1% lijnolie', true, now(), 'sha256:16bf01f1dc3993857ec2d25ededf1dd5498eba9e8ca7eb3d622f80c57d38c10e', null from p;

-- Alsa Nature — JUNIOR Lam met aardappel (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92028600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Lam met aardappel', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92028600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslongen, lamspens), 28,8% bouillon, 2% aardappel, 2% erwt, 2% wortel, 1% mineralen, 0,1% levertraan, 0,1% lijnolie', true, now(), 'sha256:544e52e477781db8fb4a900e663baa3f6f6b8f34539e8157fb9e48d8aa3ce197', null from p;

-- Alsa Nature — Classic Wild-Ragout met rode bieten, aardappel en appel (800 g)
-- bron: https://www.alsa-nature.nl/p/92006201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', 'wet', '800 g', '4050001116107', 'https://www.alsa-nature.nl/p/92006201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Wild (bestaande uit hart, vlees, lever, longen en pens van wild), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 23,9% bouillon, 5% aardappel, 3% rode biet, 2% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:1fc11a3d2946c1847e5fce4c494744b02a219cfb990b5310acdcd1ba9be3aa7c', null from p;

-- Alsa Nature — JUNIOR Runderhart met aardappel & wortel (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92029500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Runderhart met aardappel & wortel', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92029500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Rund (bestaande uit rundvlees, 10% runderhart, runderlever, runderlongen, runderpens), 28,8% bouillon, 3% aardappel, 3% wortel, 1% mineralen, 0,1% levertraan, 0,1% lijnolie', true, now(), 'sha256:16bf01f1dc3993857ec2d25ededf1dd5498eba9e8ca7eb3d622f80c57d38c10e', null from p;

-- Alsa Nature — Speciaal Nierdieet (60 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92040100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Nierdieet', 'wet', '60 x 400 g', null, 'https://www.alsa-nature.nl/p/92040100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35,3% Bouillon, 35% kip (bestaande uit kippenharten, kippenmagen, kippenvet), 12% rijst, 10% aardappelen, 5% pompoen, 1% mineralen, 1% cellulose, 0,5% zalmolie, 0,1% voleipoeder, 0,1% biergist', true, now(), 'sha256:5bc16099b3cf0be75f656662e9c63fee5a52c64f22b47951501ab4c54778fbfe', null from p;

-- Alsa Nature — FINEST Kalkoen-spiervlees met zoete aardappel, mango & lijnolie (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920445
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FINEST Kalkoen-spiervlees met zoete aardappel, mango & lijnolie', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/920445', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Kalkoenspiervlees, 30% kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlever, kalkoenhals), 28,8% bouillon, 5% zoete aardappel, 2% mango, 1% mineralen, 0,2% lijnolie.', true, now(), 'sha256:534725db891b7a00735b08f83c3e3e6186bf266217883ae013165c95d5ecd0b5', null from p;

-- Alsa Nature — SINGLE Lam met aardappel (120 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920635
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Lam met aardappel', 'wet', '120 x 400 g', null, 'https://www.alsa-nature.nl/p/920635', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Lam (bestaande uit lamshart, lamsvlees, lamslever, lamslong, lamspens), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:f547056025bca7a535e62eb92c287764677bf709d1b78b3b4d3d948672e2a274', null from p;

-- Alsa Nature — VEGGIE Groente-bijlage met fruit (12 x 375 g)
-- bron: https://www.alsa-nature.nl/p/92037200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'VEGGIE Groente-bijlage met fruit', 'wet', '12 x 375 g', null, 'https://www.alsa-nature.nl/p/92037200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '39,8%, Bouillon, 12% wortelen, 10% pompoen, 7% courgette, 7% venkel, 4% pastinaak, 4% appel, 3% ananas, 3% abrikoos, 2% spinazie, 2% veenbessen, 2% bramen, 2% duindoorn, 1% rozenbottels, 1% mineralen, 0,1% lijnolie', true, now(), 'sha256:9d64e8eb9d5864f59da6ea9768e6a69497c6b36f4a4baa26383364fdeb325974', null from p;

-- Alsa Nature — SINGLE Lam met aardappel (120 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920639
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Lam met aardappel', 'wet', '120 x 800 g', null, 'https://www.alsa-nature.nl/p/920639', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Lam (bestaande uit lamshart, lamsvlees, lamslever, lamslong, lamspens), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:f547056025bca7a535e62eb92c287764677bf709d1b78b3b4d3d948672e2a274', null from p;

-- Alsa Nature — SINGLE Geit met pastinaak (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920435
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Geit met pastinaak', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/920435', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Geit (bestaande uit geitenspiervlees, geitenhart, geitenlever, geitenlong), 29,5% bouillon, 5% pastinaak, 1% mineralen, 0,5% lijnolie.', true, now(), 'sha256:e407571587adef11047ea053b3136f6fea0fdfcf7265b73108285aea3ba5fd67', null from p;

-- Alsa Nature — FINEST Kippen-spiervlees met pastinaak, pompoen en lijnolie (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920442
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FINEST Kippen-spiervlees met pastinaak, pompoen en lijnolie', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/920442', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Kippenspiervlees, 30% kip (bestaande uit kippenharten, kippenlever, kippenmagen, kippenhalsen), 28,8% bouillon, 5% pastinaak, 2% pompoen, 1% mineralen, 0,2% lijnolie.', true, now(), 'sha256:ca2f4a1e81de1bb6841baff9e6b91542b39a9fe8708c52e9732ea1e003764af9', null from p;

-- Alsa Nature — Light Speciaal Eiwit (12 kg)
-- bron: https://www.alsa-nature.nl/p/91310401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Light Speciaal Eiwit', 'kibble', '12 kg', '4050001101752', 'https://www.alsa-nature.nl/p/91310401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gevogelte 21%, rijst, bietenvezels, gevogelte eiwit gehydroliseerd 3%, vet van gevogelte, natriumchloride, cichoreipoeder, Nieuw-Zeelandse groenlipmossel (Perna canaliculus) gedroogd', true, now(), 'sha256:075928fe2feb8008a8f2c9ee0685d316c8e96c7c4276b1b651c3252e51deb294', null from p;

-- Alsa Nature — Light Speciaal Eiwit (2 x 12 kg)
-- bron: https://www.alsa-nature.nl/p/91310501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Light Speciaal Eiwit', 'kibble', '2 x 12 kg', null, 'https://www.alsa-nature.nl/p/91310501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gevogelte 21%, rijst, bietenvezels, gevogelte eiwit gehydroliseerd 3%, vet van gevogelte, natriumchloride, cichoreipoeder, Nieuw-Zeelandse groenlipmossel (Perna canaliculus) gedroogd', true, now(), 'sha256:075928fe2feb8008a8f2c9ee0685d316c8e96c7c4276b1b651c3252e51deb294', null from p;

-- Alsa Nature — SINGLE Lam met aardappel (60 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920633
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Lam met aardappel', 'wet', '60 x 400 g', null, 'https://www.alsa-nature.nl/p/920633', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Lam (bestaande uit lamshart, lamsvlees, lamslever, lamslong, lamspens), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:f547056025bca7a535e62eb92c287764677bf709d1b78b3b4d3d948672e2a274', null from p;

-- Alsa Nature — Classic Kalfs-Ragout met Peterselie-aardappel en pompoen (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92001601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92001601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kalf, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,4% bouillon, 5% aardappel, 2% pompoen, 1% mineralen, 0,5% peterselie, 0,1% distelolie', true, now(), 'sha256:6df952e1d131a664ded8343a27b3f93da3a6aad25a4d1e50d18ae32adfdecaeb', null from p;

-- Alsa Nature — Classic Wild-Ragout met rode bieten, aardappel en appel (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92006401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92006401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Wild (bestaande uit hart, vlees, lever, longen en pens van wild), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 23,9% bouillon, 5% aardappel, 3% rode biet, 2% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:1fc11a3d2946c1847e5fce4c494744b02a219cfb990b5310acdcd1ba9be3aa7c', null from p;

-- Alsa Nature — BIG-JUNIOR Medium eiwit (3 kg)
-- bron: https://www.alsa-nature.nl/p/91360201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'BIG-JUNIOR Medium eiwit', 'kibble', '3 kg', '4050001101660', 'https://www.alsa-nature.nl/p/91360201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gevogelte 27%, rijst, bietenvezels, vet van gevogelte, gevogelteeiwit gehydroliseerd 3%, maïseiwit, natriumchloride, gist, cichoreipoeder, kaliumchloride, vlees van de Nieuw-Zeelandse groenlipmossel (Perna canaliculus) gedroogd', true, now(), 'sha256:0a0e6e3c40b0348922d16a4a3f503cb96ebc46757e29a5f22abc703d84a01ddb', null from p;

-- Alsa Nature — SINGLE Paard met aardappel (30 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920644
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Paard met aardappel', 'wet', '30 x 800 g', null, 'https://www.alsa-nature.nl/p/920644', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Paard (bestaande uit paardenvlees, paardenhart, paardenlever), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:425d605b0eb5772fa93f681b963c849f368b11355f86314d2a96628ef17c75f0', null from p;

-- Alsa Nature — Classic Kalfs-Ragout met Peterselie-aardappel en pompoen (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92001801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92001801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kalf, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,4% bouillon, 5% aardappel, 2% pompoen, 1% mineralen, 0,5% peterselie, 0,1% distelolie', true, now(), 'sha256:6df952e1d131a664ded8343a27b3f93da3a6aad25a4d1e50d18ae32adfdecaeb', null from p;

-- Alsa Nature — Classic Bizon met pastinaak, rode bieten & appel (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92026500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92026500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '30% Bizon, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,9% bouillon, 3% pastinaak, 3% rode bieten, 3% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:c94f42101f67b5b48ced5069838cc0e21d28c8055bebab4fd53ad2dfba56bc1b', null from p;

-- Alsa Nature — FOODLOVE Kalkoen met amarant, zoete aardappel & mango (60 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99005800
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', 'raw', '60 x 300 g', null, 'https://www.alsa-nature.nl/p/99005800', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoenmagen, kalkoenhalzen), 27,3% bouillon, 4% amarant, 4% zoete aardappel, 3% mango, 1% mineralen, 0,5% kruiden, 0,2% distelolie', true, now(), 'sha256:eeaccf92f5a2a0cd9a733c5fbb9564a463ed14fda2ae77e652874e9c79fbb54e', null from p;

-- Alsa Nature — FOODLOVE Kalf met quinoa, boerenkool & appel (6 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99006200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', 'raw', '6 x 300 g', '4050001118590', 'https://www.alsa-nature.nl/p/99006200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kalf (bestaande uit kalfsharten, kalfslongen, kalfspens), 27,3% bouillon, 4% quinoa, 4% boerenkool, 3% appel, 1% mineralen, 0,5% kruiden, 0,2% distelolie', true, now(), 'sha256:d1e5605427439abf5d258930281f91cb1b137012c26abe5a2ea14d29b6544880', null from p;

-- Alsa Nature — FOODLOVE Kalf met quinoa, boerenkool & appel (120 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99006700
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', 'raw', '120 x 300 g', null, 'https://www.alsa-nature.nl/p/99006700', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kalf (bestaande uit kalfsharten, kalfslongen, kalfspens), 27,3% bouillon, 4% quinoa, 4% boerenkool, 3% appel, 1% mineralen, 0,5% kruiden, 0,2% distelolie', true, now(), 'sha256:d1e5605427439abf5d258930281f91cb1b137012c26abe5a2ea14d29b6544880', null from p;

-- Alsa Nature — FOODLOVE Rund met amarant, zoete aardappel & bessen (30 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99005000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', 'raw', '30 x 300 g', null, 'https://www.alsa-nature.nl/p/99005000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% rund (bestaande uit runderharten, rundvlees, runderlongen, runderlevers, runderpensen), 27,3% bouillon, 4% amarant, 4% zoete aardappel, 2% veenbessen, 1% frambozen, 1% mineralen, 0,5% kruiden, 0,2% zonnebloemolie', true, now(), 'sha256:3df457138c10a8d101a9b07f691104848db8814ce40f4d842d893ac83a4a6284', null from p;

-- Alsa Nature — FOODLOVE Kalf met quinoa, boerenkool & appel (12 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99006300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', 'raw', '12 x 300 g', null, 'https://www.alsa-nature.nl/p/99006300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kalf (bestaande uit kalfsharten, kalfslongen, kalfspens), 27,3% bouillon, 4% quinoa, 4% boerenkool, 3% appel, 1% mineralen, 0,5% kruiden, 0,2% distelolie', true, now(), 'sha256:d1e5605427439abf5d258930281f91cb1b137012c26abe5a2ea14d29b6544880', null from p;

-- Alsa Nature — CLASSIC Lam & Kip met zoete aardappel (120 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99012701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', 'wet', '120 x 500 g', null, 'https://www.alsa-nature.nl/p/99012701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Lam (bestaande uit lamslever, lamslongen, lamsvlees, lamspens, lamshart), 30% kip (bestaande uit kippenhart, kippevlees, kippemaag, kippenek), 28,8% bouillon, 5% zoete aardappel, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:5d6f1b2594d0e46843a133aded81911cac32095a451b35b3ee7f587a506760df', null from p;

-- Alsa Nature — FOODLOVE Kip met quinoa, pompoen & broccoli (30 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99007100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', 'raw', '30 x 300 g', null, 'https://www.alsa-nature.nl/p/99007100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kip (bestaande uit kippenharten, kippenvlees, kippenlevers, kippenmagen, kippenhalzen), 27,3% bouillon, 4% quinoa, 4% pompoen, 3% broccoli, 1% mineralen, 0,5% kruiden, 0,2% lijnzaadolie', true, now(), 'sha256:ed4d8e19f7eec9bc4131474c422d0501a4d4d95d941b86413b3a8084f2e37e83', null from p;

-- Alsa Nature — FOODLOVE Kip & Forel met quinoa, pastinaak & papaja (12 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99007700
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', 'raw', '12 x 300 g', null, 'https://www.alsa-nature.nl/p/99007700', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '40% kip (bestaande uit kippenharten, kippenvlees, kippenlevers, kippenmagen, kippenhalzen), 27,3% bouillon, 20% forel, 4% quinoa, 4% pastinaak, 3% papaya, 1% mineralen, 0,5% kruiden, 0,2% lijnzaadolie', true, now(), 'sha256:77ef1a615fd4a37a4093a031d6776961b79ac44300f21c9fe5ef4a0a81f4921a', null from p;

-- Alsa Nature — CLASSIC Runderharten & Kip met pastinaak (6 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99012801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', 'wet', '6 x 500 g', '4050001123419', 'https://www.alsa-nature.nl/p/99012801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Runderharten, 30% kip (bestaande uit kippenhart, kippenvlees, kippenlever, kippenmaag, kippennekken), 28,8% bouillon, 5% pastinaak, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:63f11bbfbe5f4514ab8298a2a2ac3f68106aea386f1a2a2d19a131382244b335', null from p;

-- Alsa Nature — Haring & Aardappel granenvrij (1,5 kg)
-- bron: https://www.alsa-nature.nl/p/91004200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Haring & Aardappel granenvrij', 'kibble', '1,5 kg', '4050001108690', 'https://www.alsa-nature.nl/p/91004200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Aardappel 37%, haring 20%, bietenpulp, aardappeleiwit, vet van gevogelte, heel eipoeder, biergist, zalmolie, gehydrolyseerde kippenlever, kruiden, fructo-oligosacchariden, inuline', true, now(), 'sha256:586033dda6b3b4aca81738410b17cf3196ee49ccd3f992111348274ee08232f6', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;

-- Automatisch overgenomen etiketten, batch 9 van 2026-11-13 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Alsa Nature — INSECTUM Aardappel (2 x 12 kg)
-- bron: https://www.alsa-nature.nl/p/910092
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'INSECTUM Aardappel', 'kibble', '2 x 12 kg', null, 'https://www.alsa-nature.nl/p/910092', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Aardappelgranulaat 34%, erwten, zonnebloemolie, insecten 10% (zwarte soldaatvlieg), gist, aardappeleiwit 9%, gehydrolyseerde gist, gedroogde bietenvezels, johannisbroodmeel, calciumcarbonaat, mononatriumfosfaat, natriumchloride', true, now(), 'sha256:22330286e4799c23c1e63e5d77f63c2a4b473f8cfd1853bb12f5ce7276f01d2c', null from p;

-- Alsa Nature — INSECTUM Rijst (1,5 kg)
-- bron: https://www.alsa-nature.nl/p/910094
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'INSECTUM Rijst', 'kibble', '1,5 kg', '4050001114073', 'https://www.alsa-nature.nl/p/910094', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst 49,8%, insecten 15% (zwarte soldaatvlieg), gist, zonnebloemolie, bietenvezels, aardappeleiwit, mineralen, psylliumvezels, witlofwortel (inulinebron).', true, now(), 'sha256:5d4ceceae01c8a6e507e0e5c4ab1db8bf05c45af1a3e6ca36d7ba375b08af5d1', null from p;

-- Alsa Nature — Gevoelig Paard & Aardappel (6 kg)
-- bron: https://www.alsa-nature.nl/p/910105
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Gevoelig Paard & Aardappel', 'kibble', '6 kg', '4050001117524', 'https://www.alsa-nature.nl/p/910105', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Aardappel 40%, paard 25%, bietenvezel, gevogeltevet, geëxtrudeerd lijnzaad, gehydrolyseerd gevogelte-eiwit, witlof, biergist, mineralen, vitamines, sporenelementen, groene luzernemeel, kruiden, Nieuw-Zeelandse groenlipmossel (Perna canaliculus) gedroogd, L-carnitine, yucca schidigera-extract.', true, now(), 'sha256:5b73e521d24247ab024781097073c12e458e0593d16b4de1a5b9b9923cc2aeae', null from p;

-- Alsa Nature — Gevoelig Paard & Aardappel (2 x 12 kg)
-- bron: https://www.alsa-nature.nl/p/910107
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Gevoelig Paard & Aardappel', 'kibble', '2 x 12 kg', null, 'https://www.alsa-nature.nl/p/910107', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Aardappel 40%, paard 25%, bietenvezel, gevogeltevet, geëxtrudeerd lijnzaad, gehydrolyseerd gevogelte-eiwit, witlof, biergist, mineralen, vitamines, sporenelementen, groene luzernemeel, kruiden, Nieuw-Zeelandse groenlipmossel (Perna canaliculus) gedroogd, L-carnitine, yucca schidigera-extract.', true, now(), 'sha256:5b73e521d24247ab024781097073c12e458e0593d16b4de1a5b9b9923cc2aeae', null from p;

-- Alsa Nature — Leverdieet (2 x 12 kg)
-- bron: https://www.alsa-nature.nl/p/91011401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Leverdieet', 'kibble', '2 x 12 kg', null, 'https://www.alsa-nature.nl/p/91011401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gevogelte, rijst, gevogeltevet, gedroogde bietenpulp, gehydrolyseerd gevogelte-eiwit, gehydrolyseerde gist, zalmolie, mineralen, kruiden, fruit, cichoreipoeder', true, now(), 'sha256:30fcbadbfad9fa720573c4f12981afa1f47024e1b5cd439270612b84ce7d953a', null from p;

-- Alsa Nature — Sensigon Eend & Aardappel granenvrij (1,5 kg)
-- bron: https://www.alsa-nature.nl/p/91002900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', 'kibble', '1,5 kg', '4050001101806', 'https://www.alsa-nature.nl/p/91002900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eend 26%, gedroogde aardappel 26%, gedroogde tapioca 16,4%, gevogeltevet, bietenvezels, aardappeleiwit 5,1%, johannesbroodmeel, gehydrolyseerd eiwit van gevogelte 3%, gist, gehydrolyseerd plantaardig eiwit, mineralen, gemalen witlof wortel', true, now(), 'sha256:37dc83495e466eb918a11584e5bd547db14a497080899b2d0486c815f719e74b', null from p;

-- Alsa Nature — Nierdieet (1,5 kg)
-- bron: https://www.alsa-nature.nl/p/91011601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Nierdieet', 'kibble', '1,5 kg', '4050001124102', 'https://www.alsa-nature.nl/p/91011601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'bevat een phytogeen complex met brandnetel. Brandnetel wordt traditioneel gebruikt ter ondersteuning van de natuurlijke doorspoeling van de urinewegen. Daarnaast levert hoogwaardige zalmolie waardevolle omega 3 vetzuren, terwijl het verhoogde gehalte aan B vitaminen helpt om het verlies van deze vitaminen, dat bij honden met nierproblemen vaker kan voorkomen, aan te vullen. Zo draagt dit nierdieet bij aan een passende en complete verzorging van volwassen honden met speciale voedingsbehoeften. Zorg altijd voor vers drinkwater. Aanbevolen voedingsduur: In eerste instantie tot zes maanden. Het is raadzaam om voor gebruik of voor het verlengen van de voedingsperiode advies in te winnen bij een dierenarts. Eiwitbron: Gevogelte. Let op: bij stoornissen van de nierfunctie moet altijd een dierenarts worden geraadpleegd. Voedingsmiddelsoort Volledig dieetvoer voor volwassen honden ter ondersteuning van de nierfunctie bij chronische nierinsufficiëntie. Rijst, maïs, gevogeltevet, gedroogd gevogelte-eiwit, gedroogde bietenpulp, gehydrolyseerd gevogelte-eiwit, mineralen, gehydrolyseerd plantaardig eiwit, zalmolie, gist, kruiden, fruit, cichoreipoeder.', true, now(), 'sha256:cd27364df192f9d8c34ff071e7350ae9572618a144599d6b9cb34bb6142469f2', null from p;

-- Alsa Nature — Vitaal Medium Eiwit (12 kg)
-- bron: https://www.alsa-nature.nl/p/91100801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Vitaal Medium Eiwit', 'kibble', '12 kg', '4050001101561', 'https://www.alsa-nature.nl/p/91100801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte 26,5%, rijst, maïs, gerst, vet van gevogelte, bietenvezels, gevogelte eiwit gehydroliseerd 1,5%, natriumchloride, gist, kaliumchloride', true, now(), 'sha256:b14a9c6866a6f2013f1f42bf67ed8f6fd515f5e589f3ae6c50c4b786d37ad679', null from p;

-- Alsa Nature — Actief Speciaal Eiwit (2 x 12 kg)
-- bron: https://www.alsa-nature.nl/p/91110501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Actief Speciaal Eiwit', 'kibble', '2 x 12 kg', null, 'https://www.alsa-nature.nl/p/91110501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte 25%, maïs, oliën en vetten, rijst, bietenvezels, zalm 4%, gevogelte eiwit 1,5%, natriumchloride, cichorei poeder, kaliumchloride, Nieuw-Zeelandse groenlipmossel', true, now(), 'sha256:bfbd8ecc61d37d4a2acd0b0048dccdc8b51990d09f52ae4e97ebc914572808d9', null from p;

-- Alsa Nature — INSECTUM Aardappel (12 kg)
-- bron: https://www.alsa-nature.nl/p/910091
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'INSECTUM Aardappel', 'kibble', '12 kg', '4050001114141', 'https://www.alsa-nature.nl/p/910091', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Aardappelgranulaat 34%, erwten, zonnebloemolie, insecten 10% (zwarte soldaatvlieg), gist, aardappeleiwit 9%, gehydrolyseerde gist, gedroogde bietenvezels, johannisbroodmeel, calciumcarbonaat, mononatriumfosfaat, natriumchloride', true, now(), 'sha256:22330286e4799c23c1e63e5d77f63c2a4b473f8cfd1853bb12f5ce7276f01d2c', null from p;

-- Alsa Nature — Nierdieet (2 x 12 kg)
-- bron: https://www.alsa-nature.nl/p/91012001
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Nierdieet', 'kibble', '2 x 12 kg', null, 'https://www.alsa-nature.nl/p/91012001', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'bevat een phytogeen complex met brandnetel. Brandnetel wordt traditioneel gebruikt ter ondersteuning van de natuurlijke doorspoeling van de urinewegen. Daarnaast levert hoogwaardige zalmolie waardevolle omega 3 vetzuren, terwijl het verhoogde gehalte aan B vitaminen helpt om het verlies van deze vitaminen, dat bij honden met nierproblemen vaker kan voorkomen, aan te vullen. Zo draagt dit nierdieet bij aan een passende en complete verzorging van volwassen honden met speciale voedingsbehoeften. Zorg altijd voor vers drinkwater. Aanbevolen voedingsduur: In eerste instantie tot zes maanden. Het is raadzaam om voor gebruik of voor het verlengen van de voedingsperiode advies in te winnen bij een dierenarts. Eiwitbron: Gevogelte. Let op: bij stoornissen van de nierfunctie moet altijd een dierenarts worden geraadpleegd. Voedingsmiddelsoort Volledig dieetvoer voor volwassen honden ter ondersteuning van de nierfunctie bij chronische nierinsufficiëntie. Rijst, maïs, gevogeltevet, gedroogd gevogelte-eiwit, gedroogde bietenpulp, gehydrolyseerd gevogelte-eiwit, mineralen, gehydrolyseerd plantaardig eiwit, zalmolie, gist, kruiden, fruit, cichoreipoeder.', true, now(), 'sha256:cd27364df192f9d8c34ff071e7350ae9572618a144599d6b9cb34bb6142469f2', null from p;

-- Alsa Nature — JUNIOR Medium eiwit (1,5 kg)
-- bron: https://www.alsa-nature.nl/p/91120501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Medium eiwit', 'kibble', '1,5 kg', '4050001101615', 'https://www.alsa-nature.nl/p/91120501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gevogelte 26%, rijst, bietenvezels, eend 5%, vet van gevogelte, gevogelte eiwit gehydroliseerd 3%, maïseiwit, natriumchloride, gist, cichorei poeder, Nieuw-Zeelandse groenlipmossel (Perna canaliculus)', true, now(), 'sha256:5f3e52e64207eeaa8ea00c873cb5ef7fb74b25ca415bc0b86d1117d603110071', null from p;

-- Alsa Nature — Senso (3 kg)
-- bron: https://www.alsa-nature.nl/p/91130201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senso', 'kibble', '3 kg', '4050001101479', 'https://www.alsa-nature.nl/p/91130201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, lamsvlees 21%, rijst, gerst, vet van gevogelte, gevogelte, bietenvezels, dierlijk eiwit gehydroliseerd, gist, natriumchloride, kaliumchloride, maïseiwit', true, now(), 'sha256:e7448111f2026dbb86e88629959b4b5a613f87c3fabc62e9b19efd35c3699d76', null from p;

-- Alsa Nature — JUNIOR Medium eiwit (2 x 12 kg)
-- bron: https://www.alsa-nature.nl/p/91120901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Medium eiwit', 'kibble', '2 x 12 kg', null, 'https://www.alsa-nature.nl/p/91120901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gevogelte 26%, rijst, bietenvezels, eend 5%, vet van gevogelte, gevogelte eiwit gehydroliseerd 3%, maïseiwit, natriumchloride, gist, cichorei poeder, Nieuw-Zeelandse groenlipmossel (Perna canaliculus)', true, now(), 'sha256:5f3e52e64207eeaa8ea00c873cb5ef7fb74b25ca415bc0b86d1117d603110071', null from p;

-- Alsa Nature — Senso (1,5 kg)
-- bron: https://www.alsa-nature.nl/p/91130101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senso', 'kibble', '1,5 kg', '4050001101462', 'https://www.alsa-nature.nl/p/91130101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, lamsvlees 21%, rijst, gerst, vet van gevogelte, gevogelte, bietenvezels, dierlijk eiwit gehydroliseerd, gist, natriumchloride, kaliumchloride, maïseiwit', true, now(), 'sha256:e7448111f2026dbb86e88629959b4b5a613f87c3fabc62e9b19efd35c3699d76', null from p;

-- Alsa Nature — Light Speciaal Eiwit (6 kg)
-- bron: https://www.alsa-nature.nl/p/91310301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Light Speciaal Eiwit', 'kibble', '6 kg', '4050001101745', 'https://www.alsa-nature.nl/p/91310301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gevogelte 21%, rijst, bietenvezels, gevogelte eiwit gehydroliseerd 3%, vet van gevogelte, natriumchloride, cichoreipoeder, Nieuw-Zeelandse groenlipmossel (Perna canaliculus) gedroogd', true, now(), 'sha256:075928fe2feb8008a8f2c9ee0685d316c8e96c7c4276b1b651c3252e51deb294', null from p;

-- Alsa Nature — BIG-JUNIOR Medium eiwit (6 kg)
-- bron: https://www.alsa-nature.nl/p/91360301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'BIG-JUNIOR Medium eiwit', 'kibble', '6 kg', '4050001101677', 'https://www.alsa-nature.nl/p/91360301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gevogelte 27%, rijst, bietenvezels, vet van gevogelte, gevogelteeiwit gehydroliseerd 3%, maïseiwit, natriumchloride, gist, cichoreipoeder, kaliumchloride, vlees van de Nieuw-Zeelandse groenlipmossel (Perna canaliculus) gedroogd', true, now(), 'sha256:0a0e6e3c40b0348922d16a4a3f503cb96ebc46757e29a5f22abc703d84a01ddb', null from p;

-- Alsa Nature — Vitaal (2 x 12 kg)
-- bron: https://www.alsa-nature.nl/p/91101001
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Vitaal', 'kibble', '2 x 12 kg', null, 'https://www.alsa-nature.nl/p/91101001', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte 30%, rijst, maïs, vet van gevogelte, bietenvezels, gevogelte eiwit gehydroliseerd, natriumchloride, cichorei poeder, Nieuw-Zeelandse groenlipmossel (Perna canaliculus)', true, now(), 'sha256:07d927d4b4533fd5380c857ea27b0e088efd5c1e9dbe54301cebd99c33f87a9f', null from p;

-- Alsa Nature — VEGGIE Groentemaaltijd met Hüttenkäse, fruit en kruiden (375 g)
-- bron: https://www.alsa-nature.nl/p/92036700
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'VEGGIE Groentemaaltijd met Hüttenkäse, fruit en kruiden', 'wet', '375 g', '4050001116145', 'https://www.alsa-nature.nl/p/92036700', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33,78% Bouillon, 10% hüttenkäse, 8% heeleipoeder, 6% pastinaak, 6% pompoen, 6% wortelen, 5% amarant vlokken, 5% perzik, 4% lijnzaadolie, 3% courgette, 3% erwten, 3% boekweitvlokken, 2,12 mineralen, 2% mango, 2% duindoorn, 1% biergist, 0,1%, kruiden', true, now(), 'sha256:6f9276676f45f2d19fa9eeb8eb158e33965b9843fe3333a3b75476352c571c4f', null from p;

-- Alsa Nature — Senior Lam met pastinaak, pompoen & abrikoos (800 g)
-- bron: https://www.alsa-nature.nl/p/92041600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', 'wet', '800 g', '4050001116572', 'https://www.alsa-nature.nl/p/92041600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '61% Lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslongen, lamspens), 29,5% bouillon, 4% pastinaak, 2% pompoen, 2% abrikoos, 1% mineralen, 0,5% distelolie.', true, now(), 'sha256:d80a3a081cdd98e3264cb1e8c715c03e858292e88316da2f0ab0c9dd161ef2b6', null from p;

-- Alsa Nature — SINGLE Geit met pastinaak (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920436
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Geit met pastinaak', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/920436', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Geit (bestaande uit geitenspiervlees, geitenhart, geitenlever, geitenlong), 29,5% bouillon, 5% pastinaak, 1% mineralen, 0,5% lijnolie.', true, now(), 'sha256:e407571587adef11047ea053b3136f6fea0fdfcf7265b73108285aea3ba5fd67', null from p;

-- Alsa Nature — INSECTUM Insecten met erwten, pompoen & abrikoos (12 x 750 g)
-- bron: https://www.alsa-nature.nl/p/920517
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', 'wet', '12 x 750 g', null, 'https://www.alsa-nature.nl/p/920517', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% insecten (zwarte soldaatvlieg), 36% bouillon, 4% erwten, 4% pompoen, 4% abrikoos, 1% mineralen, 0,5% kruiden, 0,5% distelolie', true, now(), 'sha256:8be03b622db20cada942549c91e0b26edcf5c1bee6d9318e0a7d84011d1520ee', null from p;

-- Alsa Nature — INSECTUM Insecten met wortel, zoete aardappel & courgette (375 g)
-- bron: https://www.alsa-nature.nl/p/920518
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', 'wet', '375 g', '4050001121224', 'https://www.alsa-nature.nl/p/920518', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% insecten (zwarte soldaatvlieg), 36% bouillon, 4% wortel, 4% courgette, 4% zoete aardappelen, 1% mineralen, 0,5% kruiden, 0,5% distelolie', true, now(), 'sha256:e7bc1cee98eca5f9ac3ec03e565c0c3237a9bd60df21f4e287e3bd24eff861bc', null from p;

-- Alsa Nature — Senior Lam met pastinaak, pompoen & abrikoos (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92041400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92041400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '61% Lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslongen, lamspens), 29,5% bouillon, 4% pastinaak, 2% pompoen, 2% abrikoos, 1% mineralen, 0,5% distelolie.', true, now(), 'sha256:d80a3a081cdd98e3264cb1e8c715c03e858292e88316da2f0ab0c9dd161ef2b6', null from p;

-- Alsa Nature — FINEST Kalkoen-spiervlees met zoete aardappel, mango & lijnolie (400 g)
-- bron: https://www.alsa-nature.nl/p/920443
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FINEST Kalkoen-spiervlees met zoete aardappel, mango & lijnolie', 'wet', '400 g', '4050001116404', 'https://www.alsa-nature.nl/p/920443', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Kalkoenspiervlees, 30% kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlever, kalkoenhals), 28,8% bouillon, 5% zoete aardappel, 2% mango, 1% mineralen, 0,2% lijnolie.', true, now(), 'sha256:534725db891b7a00735b08f83c3e3e6186bf266217883ae013165c95d5ecd0b5', null from p;

-- Alsa Nature — INSECTUM Insecten met wortel, zoete aardappel & courgette (6 x 375 g)
-- bron: https://www.alsa-nature.nl/p/920519
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', 'wet', '6 x 375 g', null, 'https://www.alsa-nature.nl/p/920519', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% insecten (zwarte soldaatvlieg), 36% bouillon, 4% wortel, 4% courgette, 4% zoete aardappelen, 1% mineralen, 0,5% kruiden, 0,5% distelolie', true, now(), 'sha256:e7bc1cee98eca5f9ac3ec03e565c0c3237a9bd60df21f4e287e3bd24eff861bc', null from p;

-- Alsa Nature — SINGLE Geit met pastinaak (800 g)
-- bron: https://www.alsa-nature.nl/p/920434
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Geit met pastinaak', 'wet', '800 g', '4050001116671', 'https://www.alsa-nature.nl/p/920434', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Geit (bestaande uit geitenspiervlees, geitenhart, geitenlever, geitenlong), 29,5% bouillon, 5% pastinaak, 1% mineralen, 0,5% lijnolie.', true, now(), 'sha256:e407571587adef11047ea053b3136f6fea0fdfcf7265b73108285aea3ba5fd67', null from p;

-- Alsa Nature — INSECTUM Insecten met wortel, zoete aardappel & courgette (12 x 375 g)
-- bron: https://www.alsa-nature.nl/p/920520
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', 'wet', '12 x 375 g', null, 'https://www.alsa-nature.nl/p/920520', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% insecten (zwarte soldaatvlieg), 36% bouillon, 4% wortel, 4% courgette, 4% zoete aardappelen, 1% mineralen, 0,5% kruiden, 0,5% distelolie', true, now(), 'sha256:e7bc1cee98eca5f9ac3ec03e565c0c3237a9bd60df21f4e287e3bd24eff861bc', null from p;

-- Alsa Nature — INSECTUM Insecten met wortel, zoete aardappel & courgette (750 g)
-- bron: https://www.alsa-nature.nl/p/920521
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', 'wet', '750 g', '4050001121255', 'https://www.alsa-nature.nl/p/920521', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% insecten (zwarte soldaatvlieg), 36% bouillon, 4% wortel, 4% courgette, 4% zoete aardappelen, 1% mineralen, 0,5% kruiden, 0,5% distelolie', true, now(), 'sha256:e7bc1cee98eca5f9ac3ec03e565c0c3237a9bd60df21f4e287e3bd24eff861bc', null from p;

-- Alsa Nature — INSECTUM Insecten met erwten, pompoen & abrikoos (6 x 750 g)
-- bron: https://www.alsa-nature.nl/p/920516
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', 'wet', '6 x 750 g', null, 'https://www.alsa-nature.nl/p/920516', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% insecten (zwarte soldaatvlieg), 36% bouillon, 4% erwten, 4% pompoen, 4% abrikoos, 1% mineralen, 0,5% kruiden, 0,5% distelolie', true, now(), 'sha256:8be03b622db20cada942549c91e0b26edcf5c1bee6d9318e0a7d84011d1520ee', null from p;

-- Alsa Nature — SINGLE Kalkoen puur (90 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920622
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kalkoen puur', 'wet', '90 x 800 g', null, 'https://www.alsa-nature.nl/p/920622', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoennekken), bouillon 28,5%, mineralen 1%, distelolie 0,5%', true, now(), 'sha256:7c01b711f4038061fb77e21d0d0cc1fa8a01462032c83e0701e566f974e08b91', null from p;

-- Alsa Nature — SINGLE Rendier met aardappel (60 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920649
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Rendier met aardappel', 'wet', '60 x 400 g', null, 'https://www.alsa-nature.nl/p/920649', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Rendier, 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:5e00e05c0e60cac39c54f32530c54082eed627c0e03825fae4926eaa3f86ae6f', null from p;

-- Alsa Nature — SINGLE Paard met aardappel (90 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920646
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Paard met aardappel', 'wet', '90 x 800 g', null, 'https://www.alsa-nature.nl/p/920646', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Paard (bestaande uit paardenvlees, paardenhart, paardenlever), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:425d605b0eb5772fa93f681b963c849f368b11355f86314d2a96628ef17c75f0', null from p;

-- Alsa Nature — JUBILEUM Kip & Kalkoen (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92074201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92074201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '43% kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmaag, kippennekken, kippenvet), 28,8% bouillon, 20% kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenmaag, kalkoenlever, kalkoennekken), 4% courgette, 3% wortel, 1% mineralen, 0,2% zwarte komijnolie', true, now(), 'sha256:b20633e4cf744d14d8fe3c546f6acf25dbfc093c90fcac5834e9bfdf71178874', null from p;

-- Alsa Nature — SINGLE Kangoeroe met aardappel (60 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920625
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', 'wet', '60 x 400 g', null, 'https://www.alsa-nature.nl/p/920625', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:7e615daef2ffbd8f7b5126ebc8da26c36ce43867c0960b84b111bd172d163855', null from p;

-- Alsa Nature — Classic Gevogelte met volkorenrijst en wortel (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92100601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92100601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Gevogelte (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,9% bouillon, 5% volkorenrijst, 4% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:317891f7d558c88d829209ca23f7b14b9d739fec355d1a86673591d12420cc45', null from p;

-- Alsa Nature — Classic Lam met volkorenpasta en wortel (400 g)
-- bron: https://www.alsa-nature.nl/p/92130101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', 'wet', '400 g', '4050001116190', 'https://www.alsa-nature.nl/p/92130101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslongen, lamspens), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,9% bouillon, 5% volkorennoedels, 4% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:8c1c078fccceb1540b1c64b7506e19a88ba3eebb39424e173a7574b7ebb268cb', null from p;

-- Alsa Nature — Classic Gevogelte met volkorenrijst en wortel (800 g)
-- bron: https://www.alsa-nature.nl/p/92100201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', 'wet', '800 g', '4050001116077', 'https://www.alsa-nature.nl/p/92100201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Gevogelte (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,9% bouillon, 5% volkorenrijst, 4% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:317891f7d558c88d829209ca23f7b14b9d739fec355d1a86673591d12420cc45', null from p;

-- Alsa Nature — Speciaal Sensibel (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92170201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Sensibel', 'wet', '6 x 400 g', '4050001116800', 'https://www.alsa-nature.nl/p/92170201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenmagen, kippenlever, kippennekken), 30% bouillon, 8% rijst, 6% appels, 5% wortel, 5% hüttenkäse, 1% mineralen, monocalciumfosfaat', true, now(), 'sha256:7054a6c636ce1f252f50ac80a2d170481c5f99cdf2264b889a71298b9bc8c496', null from p;

-- Alsa Nature — SINGLE Rendier met aardappel (30 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920648
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Rendier met aardappel', 'wet', '30 x 400 g', null, 'https://www.alsa-nature.nl/p/920648', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Rendier, 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:5e00e05c0e60cac39c54f32530c54082eed627c0e03825fae4926eaa3f86ae6f', null from p;

-- Alsa Nature — Speciaal Sensibel (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92170301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Sensibel', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92170301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenmagen, kippenlever, kippennekken), 30% bouillon, 8% rijst, 6% appels, 5% wortel, 5% hüttenkäse, 1% mineralen, monocalciumfosfaat', true, now(), 'sha256:7054a6c636ce1f252f50ac80a2d170481c5f99cdf2264b889a71298b9bc8c496', null from p;

-- Alsa Nature — Classic Spiervlees met aardappel en wortel (400 g)
-- bron: https://www.alsa-nature.nl/p/92340401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', 'wet', '400 g', '4050001116244', 'https://www.alsa-nature.nl/p/92340401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Runderspiervlees, 30% rund (bestaande uit runderhart, runderlever, runderlongen, runderpens), 25,9% bouillon, 5% aardappel, 3% wortel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:c7880603df2be98c9434a20d8b02b9f7d58c788a8cef3b0d8069e6934b4e2b04', null from p;

-- Alsa Nature — SINGLE Lam met aardappel (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92510501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Lam met aardappel', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92510501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Lam (bestaande uit lamshart, lamsvlees, lamslever, lamslong, lamspens), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:f547056025bca7a535e62eb92c287764677bf709d1b78b3b4d3d948672e2a274', null from p;

-- Alsa Nature — Gevogelteworst met rijst (6 x 200 g)
-- bron: https://www.alsa-nature.nl/p/93440201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Gevogelteworst met rijst', 'wet', '6 x 200 g', '4050001102629', 'https://www.alsa-nature.nl/p/93440201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '54% gevogelte (bestaande uit gevogeltevlees, gevogeltelever, gevogeltemagen, gevogelteharten), 30,8% bouillon, 11% rundvlees, 4% rijst, 0,1% distelolie, 0,1% mineralen', true, now(), 'sha256:e3da2ac23fe95c6342c3e679e0f8fb588780a9940f361d5b92179a79fbe6f509', null from p;

-- Alsa Nature — Sensigon Eend & Aardappel granenvrij (12 kg)
-- bron: https://www.alsa-nature.nl/p/91003200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', 'kibble', '12 kg', '4050001101837', 'https://www.alsa-nature.nl/p/91003200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eend 26%, gedroogde aardappel 26%, gedroogde tapioca 16,4%, gevogeltevet, bietenvezels, aardappeleiwit 5,1%, johannesbroodmeel, gehydrolyseerd eiwit van gevogelte 3%, gist, gehydrolyseerd plantaardig eiwit, mineralen, gemalen witlof wortel', true, now(), 'sha256:37dc83495e466eb918a11584e5bd547db14a497080899b2d0486c815f719e74b', null from p;

-- Alsa Nature — Lam & Aardappel granenvrij (12 kg)
-- bron: https://www.alsa-nature.nl/p/91007500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Lam & Aardappel granenvrij', 'kibble', '12 kg', '4050103111024', 'https://www.alsa-nature.nl/p/91007500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Aardappelgranulaat 44%, lamsvlees 25%, aardappelzetmeel 8%, bietenpulp, gevogeltevet, johannisbroodmeel, aardappeleiwit 2%, gehydroliseert viseiwit, natriumchloride, kruiden, vruchten, cichorei poeder', true, now(), 'sha256:aa95bb938c61b3b09b41c501db246c3ec1091485640697d3f03801a665ab8a65', null from p;

-- Alsa Nature — Gevogelte & Aardappel granenvrij (3 kg)
-- bron: https://www.alsa-nature.nl/p/91005000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', 'kibble', '3 kg', '4050001108720', 'https://www.alsa-nature.nl/p/91005000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Aardappelgranulaat 33,3%, gevogeltevlees 29%, aardappelzetmeel 11%, gevogeltevet, bietenvezels, aardappeleiwit, Johannisbroodmeel, gevogelte-eiwit gehydroliseert 3%, aardappeleiwit 2%, gist, plantaardige eiwit gehydrolyseerd, natriumchloride, cichorei poeder, gedroogde algen, nieuwzeelandse groenlipmossel (Perna canaliculus) gedroogd', true, now(), 'sha256:02116e1235be7683f0ce653a217eed8c35ed041aee3cc8729c18c2cc0ac75986', null from p;

-- Alsa Nature — INSECTUM Rijst (12 kg)
-- bron: https://www.alsa-nature.nl/p/910097
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'INSECTUM Rijst', 'kibble', '12 kg', '4050001114103', 'https://www.alsa-nature.nl/p/910097', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst 49,8%, insecten 15% (zwarte soldaatvlieg), gist, zonnebloemolie, bietenvezels, aardappeleiwit, mineralen, psylliumvezels, witlofwortel (inulinebron).', true, now(), 'sha256:5d4ceceae01c8a6e507e0e5c4ab1db8bf05c45af1a3e6ca36d7ba375b08af5d1', null from p;

-- Alsa Nature — Pens worst (6 x 200 g)
-- bron: https://www.alsa-nature.nl/p/93450201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Pens worst', 'wet', '6 x 200 g', '4050001102650', 'https://www.alsa-nature.nl/p/93450201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '67% rundvlees (bestaande uit runderpens, runderlong, runderlever, rundernieren), 26,8% bouillon, 4% wortel, 2% havervlokken, 0,1% distelolie, 0,1% mineralen', true, now(), 'sha256:494bed78eebfd515b6e65dcefc521bf369588dbeb9df3664233eb43d24229352', null from p;

-- Alsa Nature — Gevoelig Paard & Aardappel (3 kg)
-- bron: https://www.alsa-nature.nl/p/910104
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Gevoelig Paard & Aardappel', 'kibble', '3 kg', '4050001117517', 'https://www.alsa-nature.nl/p/910104', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Aardappel 40%, paard 25%, bietenvezel, gevogeltevet, geëxtrudeerd lijnzaad, gehydrolyseerd gevogelte-eiwit, witlof, biergist, mineralen, vitamines, sporenelementen, groene luzernemeel, kruiden, Nieuw-Zeelandse groenlipmossel (Perna canaliculus) gedroogd, L-carnitine, yucca schidigera-extract.', true, now(), 'sha256:5b73e521d24247ab024781097073c12e458e0593d16b4de1a5b9b9923cc2aeae', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;

-- Automatisch overgenomen etiketten, batch 10 van 2026-11-13 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Alsa Nature — Gevoelig Paard & Aardappel (12 kg)
-- bron: https://www.alsa-nature.nl/p/910106
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Gevoelig Paard & Aardappel', 'kibble', '12 kg', '4050001117531', 'https://www.alsa-nature.nl/p/910106', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Aardappel 40%, paard 25%, bietenvezel, gevogeltevet, geëxtrudeerd lijnzaad, gehydrolyseerd gevogelte-eiwit, witlof, biergist, mineralen, vitamines, sporenelementen, groene luzernemeel, kruiden, Nieuw-Zeelandse groenlipmossel (Perna canaliculus) gedroogd, L-carnitine, yucca schidigera-extract.', true, now(), 'sha256:5b73e521d24247ab024781097073c12e458e0593d16b4de1a5b9b9923cc2aeae', null from p;

-- Alsa Nature — Leverdieet (12 kg)
-- bron: https://www.alsa-nature.nl/p/91011301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Leverdieet', 'kibble', '12 kg', '4050001124195', 'https://www.alsa-nature.nl/p/91011301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gevogelte, rijst, gevogeltevet, gedroogde bietenpulp, gehydrolyseerd gevogelte-eiwit, gehydrolyseerde gist, zalmolie, mineralen, kruiden, fruit, cichoreipoeder', true, now(), 'sha256:30fcbadbfad9fa720573c4f12981afa1f47024e1b5cd439270612b84ce7d953a', null from p;

-- Alsa Nature — Gevogelte & Aardappel granenvrij (2 x 12 kg)
-- bron: https://www.alsa-nature.nl/p/91005300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', 'kibble', '2 x 12 kg', null, 'https://www.alsa-nature.nl/p/91005300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Aardappelgranulaat 33,3%, gevogeltevlees 29%, aardappelzetmeel 11%, gevogeltevet, bietenvezels, aardappeleiwit, Johannisbroodmeel, gevogelte-eiwit gehydroliseert 3%, aardappeleiwit 2%, gist, plantaardige eiwit gehydrolyseerd, natriumchloride, cichorei poeder, gedroogde algen, nieuwzeelandse groenlipmossel (Perna canaliculus) gedroogd', true, now(), 'sha256:02116e1235be7683f0ce653a217eed8c35ed041aee3cc8729c18c2cc0ac75986', null from p;

-- Alsa Nature — Vitaal (6 kg)
-- bron: https://www.alsa-nature.nl/p/91100301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Vitaal', 'kibble', '6 kg', '4050001101448', 'https://www.alsa-nature.nl/p/91100301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte 30%, rijst, maïs, vet van gevogelte, bietenvezels, gevogelte eiwit gehydroliseerd, natriumchloride, cichorei poeder, Nieuw-Zeelandse groenlipmossel (Perna canaliculus)', true, now(), 'sha256:07d927d4b4533fd5380c857ea27b0e088efd5c1e9dbe54301cebd99c33f87a9f', null from p;

-- Alsa Nature — JUNIOR Medium eiwit (12 kg)
-- bron: https://www.alsa-nature.nl/p/91120801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Medium eiwit', 'kibble', '12 kg', '4050001101646', 'https://www.alsa-nature.nl/p/91120801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gevogelte 26%, rijst, bietenvezels, eend 5%, vet van gevogelte, gevogelte eiwit gehydroliseerd 3%, maïseiwit, natriumchloride, gist, cichorei poeder, Nieuw-Zeelandse groenlipmossel (Perna canaliculus)', true, now(), 'sha256:5f3e52e64207eeaa8ea00c873cb5ef7fb74b25ca415bc0b86d1117d603110071', null from p;

-- Alsa Nature — Leverdieet (3 kg)
-- bron: https://www.alsa-nature.nl/p/91011101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Leverdieet', 'kibble', '3 kg', '4050001124171', 'https://www.alsa-nature.nl/p/91011101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gevogelte, rijst, gevogeltevet, gedroogde bietenpulp, gehydrolyseerd gevogelte-eiwit, gehydrolyseerde gist, zalmolie, mineralen, kruiden, fruit, cichoreipoeder', true, now(), 'sha256:30fcbadbfad9fa720573c4f12981afa1f47024e1b5cd439270612b84ce7d953a', null from p;

-- Alsa Nature — Vitaal Medium Eiwit (2 x 12 kg)
-- bron: https://www.alsa-nature.nl/p/91101101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Vitaal Medium Eiwit', 'kibble', '2 x 12 kg', null, 'https://www.alsa-nature.nl/p/91101101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte 26,5%, rijst, maïs, gerst, vet van gevogelte, bietenvezels, gevogelte eiwit gehydroliseerd 1,5%, natriumchloride, gist, kaliumchloride', true, now(), 'sha256:b14a9c6866a6f2013f1f42bf67ed8f6fd515f5e589f3ae6c50c4b786d37ad679', null from p;

-- Alsa Nature — Haring & Aardappel granenvrij (6 kg)
-- bron: https://www.alsa-nature.nl/p/91004400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Haring & Aardappel granenvrij', 'kibble', '6 kg', '4050001108676', 'https://www.alsa-nature.nl/p/91004400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Aardappel 37%, haring 20%, bietenpulp, aardappeleiwit, vet van gevogelte, heel eipoeder, biergist, zalmolie, gehydrolyseerde kippenlever, kruiden, fructo-oligosacchariden, inuline', true, now(), 'sha256:586033dda6b3b4aca81738410b17cf3196ee49ccd3f992111348274ee08232f6', null from p;

-- Alsa Nature — Vitaal (1,5 kg)
-- bron: https://www.alsa-nature.nl/p/91100101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Vitaal', 'kibble', '1,5 kg', '4050001101424', 'https://www.alsa-nature.nl/p/91100101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte 30%, rijst, maïs, vet van gevogelte, bietenvezels, gevogelte eiwit gehydroliseerd, natriumchloride, cichorei poeder, Nieuw-Zeelandse groenlipmossel (Perna canaliculus)', true, now(), 'sha256:07d927d4b4533fd5380c857ea27b0e088efd5c1e9dbe54301cebd99c33f87a9f', null from p;

-- Alsa Nature — Actief Speciaal Eiwit (12 kg)
-- bron: https://www.alsa-nature.nl/p/91110401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Actief Speciaal Eiwit', 'kibble', '12 kg', '4050001101714', 'https://www.alsa-nature.nl/p/91110401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte 25%, maïs, oliën en vetten, rijst, bietenvezels, zalm 4%, gevogelte eiwit 1,5%, natriumchloride, cichorei poeder, kaliumchloride, Nieuw-Zeelandse groenlipmossel', true, now(), 'sha256:bfbd8ecc61d37d4a2acd0b0048dccdc8b51990d09f52ae4e97ebc914572808d9', null from p;

-- Alsa Nature — Vitaal (12 kg)
-- bron: https://www.alsa-nature.nl/p/91100401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Vitaal', 'kibble', '12 kg', '4050001101455', 'https://www.alsa-nature.nl/p/91100401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte 30%, rijst, maïs, vet van gevogelte, bietenvezels, gevogelte eiwit gehydroliseerd, natriumchloride, cichorei poeder, Nieuw-Zeelandse groenlipmossel (Perna canaliculus)', true, now(), 'sha256:07d927d4b4533fd5380c857ea27b0e088efd5c1e9dbe54301cebd99c33f87a9f', null from p;

-- Alsa Nature — Haring & Aardappel granenvrij (3 kg)
-- bron: https://www.alsa-nature.nl/p/91004300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Haring & Aardappel granenvrij', 'kibble', '3 kg', '4050001108683', 'https://www.alsa-nature.nl/p/91004300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Aardappel 37%, haring 20%, bietenpulp, aardappeleiwit, vet van gevogelte, heel eipoeder, biergist, zalmolie, gehydrolyseerde kippenlever, kruiden, fructo-oligosacchariden, inuline', true, now(), 'sha256:586033dda6b3b4aca81738410b17cf3196ee49ccd3f992111348274ee08232f6', null from p;

-- Alsa Nature — Sensigon Eend & Aardappel granenvrij (6 kg)
-- bron: https://www.alsa-nature.nl/p/910031
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', 'kibble', '6 kg', '4050001101820', 'https://www.alsa-nature.nl/p/910031', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eend 26%, gedroogde aardappel 26%, gedroogde tapioca 16,4%, gevogeltevet, bietenvezels, aardappeleiwit 5,1%, johannesbroodmeel, gehydrolyseerd eiwit van gevogelte 3%, gist, gehydrolyseerd plantaardig eiwit, mineralen, gemalen witlof wortel', true, now(), 'sha256:37dc83495e466eb918a11584e5bd547db14a497080899b2d0486c815f719e74b', null from p;

-- Alsa Nature — Sensigon Eend & Aardappel granenvrij (3 kg)
-- bron: https://www.alsa-nature.nl/p/91003000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', 'kibble', '3 kg', '4050001101813', 'https://www.alsa-nature.nl/p/91003000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eend 26%, gedroogde aardappel 26%, gedroogde tapioca 16,4%, gevogeltevet, bietenvezels, aardappeleiwit 5,1%, johannesbroodmeel, gehydrolyseerd eiwit van gevogelte 3%, gist, gehydrolyseerd plantaardig eiwit, mineralen, gemalen witlof wortel', true, now(), 'sha256:37dc83495e466eb918a11584e5bd547db14a497080899b2d0486c815f719e74b', null from p;

-- Alsa Nature — Gevogelte & Aardappel granenvrij (6 kg)
-- bron: https://www.alsa-nature.nl/p/91005100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', 'kibble', '6 kg', '4050001108737', 'https://www.alsa-nature.nl/p/91005100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Aardappelgranulaat 33,3%, gevogeltevlees 29%, aardappelzetmeel 11%, gevogeltevet, bietenvezels, aardappeleiwit, Johannisbroodmeel, gevogelte-eiwit gehydroliseert 3%, aardappeleiwit 2%, gist, plantaardige eiwit gehydrolyseerd, natriumchloride, cichorei poeder, gedroogde algen, nieuwzeelandse groenlipmossel (Perna canaliculus) gedroogd', true, now(), 'sha256:02116e1235be7683f0ce653a217eed8c35ed041aee3cc8729c18c2cc0ac75986', null from p;

-- Alsa Nature — Vitaal Medium Eiwit (6 kg)
-- bron: https://www.alsa-nature.nl/p/91100701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Vitaal Medium Eiwit', 'kibble', '6 kg', '4050001101554', 'https://www.alsa-nature.nl/p/91100701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte 26,5%, rijst, maïs, gerst, vet van gevogelte, bietenvezels, gevogelte eiwit gehydroliseerd 1,5%, natriumchloride, gist, kaliumchloride', true, now(), 'sha256:b14a9c6866a6f2013f1f42bf67ed8f6fd515f5e589f3ae6c50c4b786d37ad679', null from p;

-- Alsa Nature — Eend & Zoete aardappel granenvrij (3 kg)
-- bron: https://www.alsa-nature.nl/p/91008100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', 'kibble', '3 kg', '4050001111287', 'https://www.alsa-nature.nl/p/91008100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Zoete aardappel (52%), eend (32%), gevogeltevet, gevogelte-eiwit gehydrolyseerd, canola, zonnebloemolie, lijnzaad, biergist, Yucca Schidigera extract, inuline, Nieuw-Zeelandse groenlipmossel (0,2%)', true, now(), 'sha256:513a68ad5abe953dfb590a5a300b6794ffbbcf7b966593e3323d6dd6186f8b18', null from p;

-- Alsa Nature — Hert & Aardappel granenvrij (2 x 12 kg)
-- bron: https://www.alsa-nature.nl/p/91006100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Hert & Aardappel granenvrij', 'kibble', '2 x 12 kg', null, 'https://www.alsa-nature.nl/p/91006100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Aardappel 39%, hert 15%, bietenvezels, aardappeleiwit, vet van gevogelte, hele eierpoeder, biergist, zalmolie, lijnzaad, lecithine, gevogeltelever gehydroliseerd, kruiden, fructoligosaccharide, inuline', true, now(), 'sha256:c4754800a879ca840fba60bbdba5df9f2379aafdb50355e33d48cceff5d1eb40', null from p;

-- Alsa Nature — INSECTUM Aardappel (6 kg)
-- bron: https://www.alsa-nature.nl/p/910090
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'INSECTUM Aardappel', 'kibble', '6 kg', '4050001114134', 'https://www.alsa-nature.nl/p/910090', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Aardappelgranulaat 34%, erwten, zonnebloemolie, insecten 10% (zwarte soldaatvlieg), gist, aardappeleiwit 9%, gehydrolyseerde gist, gedroogde bietenvezels, johannisbroodmeel, calciumcarbonaat, mononatriumfosfaat, natriumchloride', true, now(), 'sha256:22330286e4799c23c1e63e5d77f63c2a4b473f8cfd1853bb12f5ce7276f01d2c', null from p;

-- Alsa Nature — INSECTUM Rijst (2 x 12 kg)
-- bron: https://www.alsa-nature.nl/p/910098
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'INSECTUM Rijst', 'kibble', '2 x 12 kg', null, 'https://www.alsa-nature.nl/p/910098', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst 49,8%, insecten 15% (zwarte soldaatvlieg), gist, zonnebloemolie, bietenvezels, aardappeleiwit, mineralen, psylliumvezels, witlofwortel (inulinebron).', true, now(), 'sha256:5d4ceceae01c8a6e507e0e5c4ab1db8bf05c45af1a3e6ca36d7ba375b08af5d1', null from p;

-- Alsa Nature — JUNIOR Medium eiwit (3 kg)
-- bron: https://www.alsa-nature.nl/p/91120601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Medium eiwit', 'kibble', '3 kg', '4050001101622', 'https://www.alsa-nature.nl/p/91120601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gevogelte 26%, rijst, bietenvezels, eend 5%, vet van gevogelte, gevogelte eiwit gehydroliseerd 3%, maïseiwit, natriumchloride, gist, cichorei poeder, Nieuw-Zeelandse groenlipmossel (Perna canaliculus)', true, now(), 'sha256:5f3e52e64207eeaa8ea00c873cb5ef7fb74b25ca415bc0b86d1117d603110071', null from p;

-- Alsa Nature — Hert & Aardappel granenvrij (3 kg)
-- bron: https://www.alsa-nature.nl/p/91005800
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Hert & Aardappel granenvrij', 'kibble', '3 kg', '4050001108874', 'https://www.alsa-nature.nl/p/91005800', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Aardappel 39%, hert 15%, bietenvezels, aardappeleiwit, vet van gevogelte, hele eierpoeder, biergist, zalmolie, lijnzaad, lecithine, gevogeltelever gehydroliseerd, kruiden, fructoligosaccharide, inuline', true, now(), 'sha256:c4754800a879ca840fba60bbdba5df9f2379aafdb50355e33d48cceff5d1eb40', null from p;

-- Alsa Nature — INSECTUM Rijst (3 kg)
-- bron: https://www.alsa-nature.nl/p/910095
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'INSECTUM Rijst', 'kibble', '3 kg', '4050001114080', 'https://www.alsa-nature.nl/p/910095', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst 49,8%, insecten 15% (zwarte soldaatvlieg), gist, zonnebloemolie, bietenvezels, aardappeleiwit, mineralen, psylliumvezels, witlofwortel (inulinebron).', true, now(), 'sha256:5d4ceceae01c8a6e507e0e5c4ab1db8bf05c45af1a3e6ca36d7ba375b08af5d1', null from p;

-- Alsa Nature — Actief Speciaal Eiwit (6 kg)
-- bron: https://www.alsa-nature.nl/p/91110301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Actief Speciaal Eiwit', 'kibble', '6 kg', '4050001101707', 'https://www.alsa-nature.nl/p/91110301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte 25%, maïs, oliën en vetten, rijst, bietenvezels, zalm 4%, gevogelte eiwit 1,5%, natriumchloride, cichorei poeder, kaliumchloride, Nieuw-Zeelandse groenlipmossel', true, now(), 'sha256:bfbd8ecc61d37d4a2acd0b0048dccdc8b51990d09f52ae4e97ebc914572808d9', null from p;

-- Alsa Nature — Eend & Zoete aardappel granenvrij (12 kg)
-- bron: https://www.alsa-nature.nl/p/91008300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', 'kibble', '12 kg', '4050001111300', 'https://www.alsa-nature.nl/p/91008300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Zoete aardappel (52%), eend (32%), gevogeltevet, gevogelte-eiwit gehydrolyseerd, canola, zonnebloemolie, lijnzaad, biergist, Yucca Schidigera extract, inuline, Nieuw-Zeelandse groenlipmossel (0,2%)', true, now(), 'sha256:513a68ad5abe953dfb590a5a300b6794ffbbcf7b966593e3323d6dd6186f8b18', null from p;

-- Alsa Nature — Senso Medium Eiwit (2 x 12 kg)
-- bron: https://www.alsa-nature.nl/p/91131101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senso Medium Eiwit', 'kibble', '2 x 12 kg', null, 'https://www.alsa-nature.nl/p/91131101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, lamsvlees 26%, bietenvezels, vet van gevogelte, gist gehydroliseerd, johannesbroodpitmeel, gist, natriumchloride, kaliumchloride', true, now(), 'sha256:66708d65a4ce00ff20fceba5f0532e8363a6b952da38d9760e6686b913914547', null from p;

-- Alsa Nature — Gevoelig Paard & Aardappel (1,5 kg)
-- bron: https://www.alsa-nature.nl/p/910103
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Gevoelig Paard & Aardappel', 'kibble', '1,5 kg', '4050001117500', 'https://www.alsa-nature.nl/p/910103', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Aardappel 40%, paard 25%, bietenvezel, gevogeltevet, geëxtrudeerd lijnzaad, gehydrolyseerd gevogelte-eiwit, witlof, biergist, mineralen, vitamines, sporenelementen, groene luzernemeel, kruiden, Nieuw-Zeelandse groenlipmossel (Perna canaliculus) gedroogd, L-carnitine, yucca schidigera-extract.', true, now(), 'sha256:5b73e521d24247ab024781097073c12e458e0593d16b4de1a5b9b9923cc2aeae', null from p;

-- Alsa Nature — Vitaal Medium Eiwit (3 kg)
-- bron: https://www.alsa-nature.nl/p/91100601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Vitaal Medium Eiwit', 'kibble', '3 kg', '4050001101547', 'https://www.alsa-nature.nl/p/91100601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte 26,5%, rijst, maïs, gerst, vet van gevogelte, bietenvezels, gevogelte eiwit gehydroliseerd 1,5%, natriumchloride, gist, kaliumchloride', true, now(), 'sha256:b14a9c6866a6f2013f1f42bf67ed8f6fd515f5e589f3ae6c50c4b786d37ad679', null from p;

-- Alsa Nature — Nierdieet (3 kg)
-- bron: https://www.alsa-nature.nl/p/91011701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Nierdieet', 'kibble', '3 kg', '4050001124119', 'https://www.alsa-nature.nl/p/91011701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'bevat een phytogeen complex met brandnetel. Brandnetel wordt traditioneel gebruikt ter ondersteuning van de natuurlijke doorspoeling van de urinewegen. Daarnaast levert hoogwaardige zalmolie waardevolle omega 3 vetzuren, terwijl het verhoogde gehalte aan B vitaminen helpt om het verlies van deze vitaminen, dat bij honden met nierproblemen vaker kan voorkomen, aan te vullen. Zo draagt dit nierdieet bij aan een passende en complete verzorging van volwassen honden met speciale voedingsbehoeften. Zorg altijd voor vers drinkwater. Aanbevolen voedingsduur: In eerste instantie tot zes maanden. Het is raadzaam om voor gebruik of voor het verlengen van de voedingsperiode advies in te winnen bij een dierenarts. Eiwitbron: Gevogelte. Let op: bij stoornissen van de nierfunctie moet altijd een dierenarts worden geraadpleegd. Voedingsmiddelsoort Volledig dieetvoer voor volwassen honden ter ondersteuning van de nierfunctie bij chronische nierinsufficiëntie. Rijst, maïs, gevogeltevet, gedroogd gevogelte-eiwit, gedroogde bietenpulp, gehydrolyseerd gevogelte-eiwit, mineralen, gehydrolyseerd plantaardig eiwit, zalmolie, gist, kruiden, fruit, cichoreipoeder.', true, now(), 'sha256:cd27364df192f9d8c34ff071e7350ae9572618a144599d6b9cb34bb6142469f2', null from p;

-- Alsa Nature — Senso (12 kg)
-- bron: https://www.alsa-nature.nl/p/91130401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senso', 'kibble', '12 kg', '4050001101493', 'https://www.alsa-nature.nl/p/91130401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, lamsvlees 21%, rijst, gerst, vet van gevogelte, gevogelte, bietenvezels, dierlijk eiwit gehydroliseerd, gist, natriumchloride, kaliumchloride, maïseiwit', true, now(), 'sha256:e7448111f2026dbb86e88629959b4b5a613f87c3fabc62e9b19efd35c3699d76', null from p;

-- Alsa Nature — Hert & Aardappel granenvrij (1,5 kg)
-- bron: https://www.alsa-nature.nl/p/91005700
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Hert & Aardappel granenvrij', 'kibble', '1,5 kg', '4050001106313', 'https://www.alsa-nature.nl/p/91005700', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Aardappel 39%, hert 15%, bietenvezels, aardappeleiwit, vet van gevogelte, hele eierpoeder, biergist, zalmolie, lijnzaad, lecithine, gevogeltelever gehydroliseerd, kruiden, fructoligosaccharide, inuline', true, now(), 'sha256:c4754800a879ca840fba60bbdba5df9f2379aafdb50355e33d48cceff5d1eb40', null from p;

-- Alsa Nature — Senso (2 x 12 kg)
-- bron: https://www.alsa-nature.nl/p/91131001
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senso', 'kibble', '2 x 12 kg', null, 'https://www.alsa-nature.nl/p/91131001', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, lamsvlees 21%, rijst, gerst, vet van gevogelte, gevogelte, bietenvezels, dierlijk eiwit gehydroliseerd, gist, natriumchloride, kaliumchloride, maïseiwit', true, now(), 'sha256:e7448111f2026dbb86e88629959b4b5a613f87c3fabc62e9b19efd35c3699d76', null from p;

-- Alsa Nature — Sensigon Eend & Aardappel granenvrij (2 x 12 kg)
-- bron: https://www.alsa-nature.nl/p/91003300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', 'kibble', '2 x 12 kg', null, 'https://www.alsa-nature.nl/p/91003300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eend 26%, gedroogde aardappel 26%, gedroogde tapioca 16,4%, gevogeltevet, bietenvezels, aardappeleiwit 5,1%, johannesbroodmeel, gehydrolyseerd eiwit van gevogelte 3%, gist, gehydrolyseerd plantaardig eiwit, mineralen, gemalen witlof wortel', true, now(), 'sha256:37dc83495e466eb918a11584e5bd547db14a497080899b2d0486c815f719e74b', null from p;

-- Alsa Nature — Haring & Aardappel granenvrij (12 kg)
-- bron: https://www.alsa-nature.nl/p/91004500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Haring & Aardappel granenvrij', 'kibble', '12 kg', '4050001108706', 'https://www.alsa-nature.nl/p/91004500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Aardappel 37%, haring 20%, bietenpulp, aardappeleiwit, vet van gevogelte, heel eipoeder, biergist, zalmolie, gehydrolyseerde kippenlever, kruiden, fructo-oligosacchariden, inuline', true, now(), 'sha256:586033dda6b3b4aca81738410b17cf3196ee49ccd3f992111348274ee08232f6', null from p;

-- Alsa Nature — Eend & Zoete aardappel granenvrij (2 x 12 kg)
-- bron: https://www.alsa-nature.nl/p/91008400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', 'kibble', '2 x 12 kg', null, 'https://www.alsa-nature.nl/p/91008400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Zoete aardappel (52%), eend (32%), gevogeltevet, gevogelte-eiwit gehydrolyseerd, canola, zonnebloemolie, lijnzaad, biergist, Yucca Schidigera extract, inuline, Nieuw-Zeelandse groenlipmossel (0,2%)', true, now(), 'sha256:513a68ad5abe953dfb590a5a300b6794ffbbcf7b966593e3323d6dd6186f8b18', null from p;

-- Alsa Nature — Lam & Aardappel granenvrij (6 kg)
-- bron: https://www.alsa-nature.nl/p/91007400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Lam & Aardappel granenvrij', 'kibble', '6 kg', '4050105111046', 'https://www.alsa-nature.nl/p/91007400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Aardappelgranulaat 44%, lamsvlees 25%, aardappelzetmeel 8%, bietenpulp, gevogeltevet, johannisbroodmeel, aardappeleiwit 2%, gehydroliseert viseiwit, natriumchloride, kruiden, vruchten, cichorei poeder', true, now(), 'sha256:aa95bb938c61b3b09b41c501db246c3ec1091485640697d3f03801a665ab8a65', null from p;

-- Alsa Nature — Gevogelte & Aardappel granenvrij (1,5 kg)
-- bron: https://www.alsa-nature.nl/p/91004900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', 'kibble', '1,5 kg', '4050001108713', 'https://www.alsa-nature.nl/p/91004900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Aardappelgranulaat 33,3%, gevogeltevlees 29%, aardappelzetmeel 11%, gevogeltevet, bietenvezels, aardappeleiwit, Johannisbroodmeel, gevogelte-eiwit gehydroliseert 3%, aardappeleiwit 2%, gist, plantaardige eiwit gehydrolyseerd, natriumchloride, cichorei poeder, gedroogde algen, nieuwzeelandse groenlipmossel (Perna canaliculus) gedroogd', true, now(), 'sha256:02116e1235be7683f0ce653a217eed8c35ed041aee3cc8729c18c2cc0ac75986', null from p;

-- Alsa Nature — Lam & Aardappel granenvrij (3 kg)
-- bron: https://www.alsa-nature.nl/p/91007300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Lam & Aardappel granenvrij', 'kibble', '3 kg', '4050106111052', 'https://www.alsa-nature.nl/p/91007300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Aardappelgranulaat 44%, lamsvlees 25%, aardappelzetmeel 8%, bietenpulp, gevogeltevet, johannisbroodmeel, aardappeleiwit 2%, gehydroliseert viseiwit, natriumchloride, kruiden, vruchten, cichorei poeder', true, now(), 'sha256:aa95bb938c61b3b09b41c501db246c3ec1091485640697d3f03801a665ab8a65', null from p;

-- Alsa Nature — Lam & Aardappel granenvrij (1,5 kg)
-- bron: https://www.alsa-nature.nl/p/91007200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Lam & Aardappel granenvrij', 'kibble', '1,5 kg', '4050104111030', 'https://www.alsa-nature.nl/p/91007200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Aardappelgranulaat 44%, lamsvlees 25%, aardappelzetmeel 8%, bietenpulp, gevogeltevet, johannisbroodmeel, aardappeleiwit 2%, gehydroliseert viseiwit, natriumchloride, kruiden, vruchten, cichorei poeder', true, now(), 'sha256:aa95bb938c61b3b09b41c501db246c3ec1091485640697d3f03801a665ab8a65', null from p;

-- Alsa Nature — Lam & Aardappel granenvrij (2 x 12 kg)
-- bron: https://www.alsa-nature.nl/p/91007600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Lam & Aardappel granenvrij', 'kibble', '2 x 12 kg', null, 'https://www.alsa-nature.nl/p/91007600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Aardappelgranulaat 44%, lamsvlees 25%, aardappelzetmeel 8%, bietenpulp, gevogeltevet, johannisbroodmeel, aardappeleiwit 2%, gehydroliseert viseiwit, natriumchloride, kruiden, vruchten, cichorei poeder', true, now(), 'sha256:aa95bb938c61b3b09b41c501db246c3ec1091485640697d3f03801a665ab8a65', null from p;

-- Alsa Nature — INSECTUM Rijst (6 kg)
-- bron: https://www.alsa-nature.nl/p/910096
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'INSECTUM Rijst', 'kibble', '6 kg', '4050001114097', 'https://www.alsa-nature.nl/p/910096', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst 49,8%, insecten 15% (zwarte soldaatvlieg), gist, zonnebloemolie, bietenvezels, aardappeleiwit, mineralen, psylliumvezels, witlofwortel (inulinebron).', true, now(), 'sha256:5d4ceceae01c8a6e507e0e5c4ab1db8bf05c45af1a3e6ca36d7ba375b08af5d1', null from p;

-- Alsa Nature — Leverdieet (1,5 kg)
-- bron: https://www.alsa-nature.nl/p/91011001
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Leverdieet', 'kibble', '1,5 kg', '4050001124164', 'https://www.alsa-nature.nl/p/91011001', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gevogelte, rijst, gevogeltevet, gedroogde bietenpulp, gehydrolyseerd gevogelte-eiwit, gehydrolyseerde gist, zalmolie, mineralen, kruiden, fruit, cichoreipoeder', true, now(), 'sha256:30fcbadbfad9fa720573c4f12981afa1f47024e1b5cd439270612b84ce7d953a', null from p;

-- Alsa Nature — Nierdieet (12 kg)
-- bron: https://www.alsa-nature.nl/p/91011901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Nierdieet', 'kibble', '12 kg', '4050001124133', 'https://www.alsa-nature.nl/p/91011901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'bevat een phytogeen complex met brandnetel. Brandnetel wordt traditioneel gebruikt ter ondersteuning van de natuurlijke doorspoeling van de urinewegen. Daarnaast levert hoogwaardige zalmolie waardevolle omega 3 vetzuren, terwijl het verhoogde gehalte aan B vitaminen helpt om het verlies van deze vitaminen, dat bij honden met nierproblemen vaker kan voorkomen, aan te vullen. Zo draagt dit nierdieet bij aan een passende en complete verzorging van volwassen honden met speciale voedingsbehoeften. Zorg altijd voor vers drinkwater. Aanbevolen voedingsduur: In eerste instantie tot zes maanden. Het is raadzaam om voor gebruik of voor het verlengen van de voedingsperiode advies in te winnen bij een dierenarts. Eiwitbron: Gevogelte. Let op: bij stoornissen van de nierfunctie moet altijd een dierenarts worden geraadpleegd. Voedingsmiddelsoort Volledig dieetvoer voor volwassen honden ter ondersteuning van de nierfunctie bij chronische nierinsufficiëntie. Rijst, maïs, gevogeltevet, gedroogd gevogelte-eiwit, gedroogde bietenpulp, gehydrolyseerd gevogelte-eiwit, mineralen, gehydrolyseerd plantaardig eiwit, zalmolie, gist, kruiden, fruit, cichoreipoeder.', true, now(), 'sha256:cd27364df192f9d8c34ff071e7350ae9572618a144599d6b9cb34bb6142469f2', null from p;

-- Alsa Nature — Vitaal (3 kg)
-- bron: https://www.alsa-nature.nl/p/91100201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Vitaal', 'kibble', '3 kg', '4050001101431', 'https://www.alsa-nature.nl/p/91100201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte 30%, rijst, maïs, vet van gevogelte, bietenvezels, gevogelte eiwit gehydroliseerd, natriumchloride, cichorei poeder, Nieuw-Zeelandse groenlipmossel (Perna canaliculus)', true, now(), 'sha256:07d927d4b4533fd5380c857ea27b0e088efd5c1e9dbe54301cebd99c33f87a9f', null from p;

-- Alsa Nature — Struisvogel Enkel-eiwit (6 kg)
-- bron: https://www.alsa-nature.nl/p/91350301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Struisvogel Enkel-eiwit', 'kibble', '6 kg', '4050001101868', 'https://www.alsa-nature.nl/p/91350301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, struisvogel 24%, bietenvezels, oliën en vetten, mineralen, natriumchloride', true, now(), 'sha256:c0b93cbdcfb3f92736dcd44f7671a93a2656e29da9186edf81c533b0771e747c', null from p;

-- Alsa Nature — Nierdieet (6 kg)
-- bron: https://www.alsa-nature.nl/p/91011801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Nierdieet', 'kibble', '6 kg', '4050001124126', 'https://www.alsa-nature.nl/p/91011801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'bevat een phytogeen complex met brandnetel. Brandnetel wordt traditioneel gebruikt ter ondersteuning van de natuurlijke doorspoeling van de urinewegen. Daarnaast levert hoogwaardige zalmolie waardevolle omega 3 vetzuren, terwijl het verhoogde gehalte aan B vitaminen helpt om het verlies van deze vitaminen, dat bij honden met nierproblemen vaker kan voorkomen, aan te vullen. Zo draagt dit nierdieet bij aan een passende en complete verzorging van volwassen honden met speciale voedingsbehoeften. Zorg altijd voor vers drinkwater. Aanbevolen voedingsduur: In eerste instantie tot zes maanden. Het is raadzaam om voor gebruik of voor het verlengen van de voedingsperiode advies in te winnen bij een dierenarts. Eiwitbron: Gevogelte. Let op: bij stoornissen van de nierfunctie moet altijd een dierenarts worden geraadpleegd. Voedingsmiddelsoort Volledig dieetvoer voor volwassen honden ter ondersteuning van de nierfunctie bij chronische nierinsufficiëntie. Rijst, maïs, gevogeltevet, gedroogd gevogelte-eiwit, gedroogde bietenpulp, gehydrolyseerd gevogelte-eiwit, mineralen, gehydrolyseerd plantaardig eiwit, zalmolie, gist, kruiden, fruit, cichoreipoeder.', true, now(), 'sha256:cd27364df192f9d8c34ff071e7350ae9572618a144599d6b9cb34bb6142469f2', null from p;

-- Alsa Nature — Leverdieet (6 kg)
-- bron: https://www.alsa-nature.nl/p/91011201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Leverdieet', 'kibble', '6 kg', '4050001124188', 'https://www.alsa-nature.nl/p/91011201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gevogelte, rijst, gevogeltevet, gedroogde bietenpulp, gehydrolyseerd gevogelte-eiwit, gehydrolyseerde gist, zalmolie, mineralen, kruiden, fruit, cichoreipoeder', true, now(), 'sha256:30fcbadbfad9fa720573c4f12981afa1f47024e1b5cd439270612b84ce7d953a', null from p;

-- Alsa Nature — Lam & Rijst brokken (3 kg)
-- bron: https://www.alsa-nature.nl/p/91160201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Lam & Rijst brokken', 'kibble', '3 kg', '4050001101943', 'https://www.alsa-nature.nl/p/91160201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gevogelte, Rijst 11,8%, lamsvlees 6,3%, vet van gevogelte, bietenvezels, maïseiwit, gevogelteeiwit gehydroliseerd 1,4%, natriumchloride, dierlijk eiwit gehydroliseerd, rode bieten poeder, gist, kaliumchloride', true, now(), 'sha256:39bb0a4fb084c04d4a84b4851be89e3b79f3463448b7e7abbecdce53e955e4d5', null from p;

-- Alsa Nature — Lam & Rijst brokken (12 kg)
-- bron: https://www.alsa-nature.nl/p/91160401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Lam & Rijst brokken', 'kibble', '12 kg', '4050001101967', 'https://www.alsa-nature.nl/p/91160401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gevogelte, Rijst 11,8%, lamsvlees 6,3%, vet van gevogelte, bietenvezels, maïseiwit, gevogelteeiwit gehydroliseerd 1,4%, natriumchloride, dierlijk eiwit gehydroliseerd, rode bieten poeder, gist, kaliumchloride', true, now(), 'sha256:39bb0a4fb084c04d4a84b4851be89e3b79f3463448b7e7abbecdce53e955e4d5', null from p;

-- Alsa Nature — Senior Wild & Konijn met aardappel & paardebloem (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92005501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92005501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% Wild (bestaande uit hart, vlees, lever, longen en pens van wild), 30,3% bouillon, 14% konijn, 4% aardappel, 1% mineralen, 0,5% teunisbloemolie, 0,2% paardenbloem', true, now(), 'sha256:633e97168ca30226a051589ab231d99701c1976f762d60122c82efdee0a80734', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;

-- Automatisch overgenomen etiketten, batch 11 van 2026-11-13 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Alsa Nature — Classic Wild-Ragout met rode bieten, aardappel en appel (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92006001
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92006001', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Wild (bestaande uit hart, vlees, lever, longen en pens van wild), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 23,9% bouillon, 5% aardappel, 3% rode biet, 2% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:1fc11a3d2946c1847e5fce4c494744b02a219cfb990b5310acdcd1ba9be3aa7c', null from p;

-- Alsa Nature — Classic Wild-Ragout met rode bieten, aardappel en appel (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92006101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92006101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Wild (bestaande uit hart, vlees, lever, longen en pens van wild), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 23,9% bouillon, 5% aardappel, 3% rode biet, 2% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:1fc11a3d2946c1847e5fce4c494744b02a219cfb990b5310acdcd1ba9be3aa7c', null from p;

-- Alsa Nature — Classic Hert met zoete aardappel en kastanjes (200 g)
-- bron: https://www.alsa-nature.nl/p/92007101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', 'wet', '200 g', '4050001116114', 'https://www.alsa-nature.nl/p/92007101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Hert, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 27,9% bouillon, 5% zoete aardappel, 1% kastanje, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:f6769b7bfa9d15eac38dc1a78c0c9acb6b0c81a72d8643a3fd426c161d0da13c', null from p;

-- Alsa Nature — BIO Rund met aardappel en rode bieten (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92022200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'BIO Rund met aardappel en rode bieten', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92022200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '65% Rund*, 28% bouillon*, 4% aardappel*, 2% rode bieten*, 1% mineralen. *Uit gecontroleerde biologische aanbouw/houderij', true, now(), 'sha256:3bd8db67cabb46bfb5b499db98d7e4513b052d271266932b9c896a3451b99540', null from p;

-- Alsa Nature — Classic Bizon met pastinaak, rode bieten & appel (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92026400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92026400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '30% Bizon, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,9% bouillon, 3% pastinaak, 3% rode bieten, 3% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:c94f42101f67b5b48ced5069838cc0e21d28c8055bebab4fd53ad2dfba56bc1b', null from p;

-- Alsa Nature — Classic Bizon met pastinaak, rode bieten & appel (800 g)
-- bron: https://www.alsa-nature.nl/p/92026600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', 'wet', '800 g', '4050001116275', 'https://www.alsa-nature.nl/p/92026600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '30% Bizon, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,9% bouillon, 3% pastinaak, 3% rode bieten, 3% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:c94f42101f67b5b48ced5069838cc0e21d28c8055bebab4fd53ad2dfba56bc1b', null from p;

-- Alsa Nature — Classic Bizon met pastinaak, rode bieten & appel (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92026800
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92026800', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '30% Bizon, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,9% bouillon, 3% pastinaak, 3% rode bieten, 3% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:c94f42101f67b5b48ced5069838cc0e21d28c8055bebab4fd53ad2dfba56bc1b', null from p;

-- Alsa Nature — JUNIOR Eend met abrikoos (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92029700
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Eend met abrikoos', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92029700', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '30% Eend, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,8% bouillon, 3% pompoen, 3% venkel, 3% abrikoos, 1% mineralen, 0,1% levertraan, 0,1% lijnolie', true, now(), 'sha256:571bc9e84fdbef76c4f7d66f241b80b1fd25f45a410a2ce91e0e1ea089343b96', null from p;

-- Alsa Nature — SINGLE Kalkoen puur (400 g)
-- bron: https://www.alsa-nature.nl/p/92027800
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kalkoen puur', 'wet', '400 g', '4050001116688', 'https://www.alsa-nature.nl/p/92027800', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoennekken), bouillon 28,5%, mineralen 1%, distelolie 0,5%', true, now(), 'sha256:7c01b711f4038061fb77e21d0d0cc1fa8a01462032c83e0701e566f974e08b91', null from p;

-- Alsa Nature — Classic Kalkoen met zoete aardappel, peer & paardebloem (400 g)
-- bron: https://www.alsa-nature.nl/p/92027200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', 'wet', '400 g', '4050001116299', 'https://www.alsa-nature.nl/p/92027200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '31% Kalkoen (bestaande uit kalkoenenharten, kalkoenvlees, kalkoenlever, kalkoenennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,9% bouillon, 3% zoete aardappel, 3% peer, 1% paardenbloem, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:25559e76815297ca19ceb3b9957f3b08a32043e417960a8285520bc27b9a93d0', null from p;

-- Alsa Nature — JUNIOR Runderhart met aardappel & wortel (400 g)
-- bron: https://www.alsa-nature.nl/p/92029300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Runderhart met aardappel & wortel', 'wet', '400 g', '4050001116466', 'https://www.alsa-nature.nl/p/92029300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Rund (bestaande uit rundvlees, 10% runderhart, runderlever, runderlongen, runderpens), 28,8% bouillon, 3% aardappel, 3% wortel, 1% mineralen, 0,1% levertraan, 0,1% lijnolie', true, now(), 'sha256:16bf01f1dc3993857ec2d25ededf1dd5498eba9e8ca7eb3d622f80c57d38c10e', null from p;

-- Alsa Nature — SINGLE Kalkoen puur (800 g)
-- bron: https://www.alsa-nature.nl/p/92028100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kalkoen puur', 'wet', '800 g', '4050001116695', 'https://www.alsa-nature.nl/p/92028100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoennekken), bouillon 28,5%, mineralen 1%, distelolie 0,5%', true, now(), 'sha256:7c01b711f4038061fb77e21d0d0cc1fa8a01462032c83e0701e566f974e08b91', null from p;

-- Alsa Nature — SINGLE Kalkoen puur (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92028200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kalkoen puur', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92028200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoennekken), bouillon 28,5%, mineralen 1%, distelolie 0,5%', true, now(), 'sha256:7c01b711f4038061fb77e21d0d0cc1fa8a01462032c83e0701e566f974e08b91', null from p;

-- Alsa Nature — Light Speciaal Eiwit (3 kg)
-- bron: https://www.alsa-nature.nl/p/91310201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Light Speciaal Eiwit', 'kibble', '3 kg', '4050001101738', 'https://www.alsa-nature.nl/p/91310201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gevogelte 21%, rijst, bietenvezels, gevogelte eiwit gehydroliseerd 3%, vet van gevogelte, natriumchloride, cichoreipoeder, Nieuw-Zeelandse groenlipmossel (Perna canaliculus) gedroogd', true, now(), 'sha256:075928fe2feb8008a8f2c9ee0685d316c8e96c7c4276b1b651c3252e51deb294', null from p;

-- Alsa Nature — Speciaal Light-menu (60 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92040700
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Light-menu', 'wet', '60 x 400 g', null, 'https://www.alsa-nature.nl/p/92040700', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '56% Kip (bestaande uit kippenmagen, kippenlever, kippennekken), 31,6% bouillon, 5% pompoen, 4% rijst, 2% cellulose, 1% mineralen, 0,2% distelolie, 0,2% zalmolie', true, now(), 'sha256:d21ee0ded14bcae787236b3e4a81c600c570ccffdcd0492ae47e996b8f0d58fb', null from p;

-- Alsa Nature — JUNIOR Kip & zalm met aardappel (400 g)
-- bron: https://www.alsa-nature.nl/p/92041000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Kip & zalm met aardappel', 'wet', '400 g', '4050001116459', 'https://www.alsa-nature.nl/p/92041000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippenhals), 29,8% bouillon, 10% zalm, 3% aardappel, 3% pompoen, 3% courgette, 1% mineralen, 0,1% lijnolie, 0,1% levertraan.', true, now(), 'sha256:eed7afbd2ba96be23e52a21c29a6c5280e4846484aa50ea7ed05e614546b1e93', null from p;

-- Alsa Nature — Senior Lam met pastinaak, pompoen & abrikoos (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92041500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92041500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '61% Lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslongen, lamspens), 29,5% bouillon, 4% pastinaak, 2% pompoen, 2% abrikoos, 1% mineralen, 0,5% distelolie.', true, now(), 'sha256:d80a3a081cdd98e3264cb1e8c715c03e858292e88316da2f0ab0c9dd161ef2b6', null from p;

-- Alsa Nature — Speciaal Nierdieet (30 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92040000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Nierdieet', 'wet', '30 x 400 g', null, 'https://www.alsa-nature.nl/p/92040000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35,3% Bouillon, 35% kip (bestaande uit kippenharten, kippenmagen, kippenvet), 12% rijst, 10% aardappelen, 5% pompoen, 1% mineralen, 1% cellulose, 0,5% zalmolie, 0,1% voleipoeder, 0,1% biergist', true, now(), 'sha256:5bc16099b3cf0be75f656662e9c63fee5a52c64f22b47951501ab4c54778fbfe', null from p;

-- Alsa Nature — Speciaal Sensibel (30 x 200 g)
-- bron: https://www.alsa-nature.nl/p/92040200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Sensibel', 'wet', '30 x 200 g', null, 'https://www.alsa-nature.nl/p/92040200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenmagen, kippenlever, kippennekken), 30% bouillon, 8% rijst, 6% appels, 5% wortel, 5% hüttenkäse, 1% mineralen, monocalciumfosfaat', true, now(), 'sha256:7054a6c636ce1f252f50ac80a2d170481c5f99cdf2264b889a71298b9bc8c496', null from p;

-- Alsa Nature — Speciaal Sensibel (60 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92040500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Sensibel', 'wet', '60 x 400 g', null, 'https://www.alsa-nature.nl/p/92040500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenmagen, kippenlever, kippennekken), 30% bouillon, 8% rijst, 6% appels, 5% wortel, 5% hüttenkäse, 1% mineralen, monocalciumfosfaat', true, now(), 'sha256:7054a6c636ce1f252f50ac80a2d170481c5f99cdf2264b889a71298b9bc8c496', null from p;

-- Alsa Nature — Speciaal Single-sensitief (30 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92040800
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Single-sensitief', 'wet', '30 x 400 g', null, 'https://www.alsa-nature.nl/p/92040800', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Paard (bestaande uit paardenvlees, paardenlever), 7% pompoen, 7% courgette, 7% zoete aardappel, 1% mineralen, 0,5% distelolie, monocalciumfosfaat', true, now(), 'sha256:76fbba52907d123eb5908b7dcfd42651c46f1ec9e1fcc3597dbd8337c547bff6', null from p;

-- Alsa Nature — Speciaal Single-sensitief (60 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92040900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Single-sensitief', 'wet', '60 x 400 g', null, 'https://www.alsa-nature.nl/p/92040900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Paard (bestaande uit paardenvlees, paardenlever), 7% pompoen, 7% courgette, 7% zoete aardappel, 1% mineralen, 0,5% distelolie, monocalciumfosfaat', true, now(), 'sha256:76fbba52907d123eb5908b7dcfd42651c46f1ec9e1fcc3597dbd8337c547bff6', null from p;

-- Alsa Nature — Senior Lam met pastinaak, pompoen & abrikoos (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92041700
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92041700', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '61% Lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslongen, lamspens), 29,5% bouillon, 4% pastinaak, 2% pompoen, 2% abrikoos, 1% mineralen, 0,5% distelolie.', true, now(), 'sha256:d80a3a081cdd98e3264cb1e8c715c03e858292e88316da2f0ab0c9dd161ef2b6', null from p;

-- Alsa Nature — SIMPLE Wild puur (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920560
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Wild puur', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/920560', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Wild (bestaande uit hart, spiervlees, lever, long, pens), 28% bouillon', true, now(), 'sha256:0e382179b6b3239616c4abf7c43ba0cde9e9ba914b3c13319246831c3cb38c2c', null from p;

-- Alsa Nature — SINGLE Paard met aardappel (120 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920643
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Paard met aardappel', 'wet', '120 x 400 g', null, 'https://www.alsa-nature.nl/p/920643', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Paard (bestaande uit paardenvlees, paardenhart, paardenlever), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:425d605b0eb5772fa93f681b963c849f368b11355f86314d2a96628ef17c75f0', null from p;

-- Alsa Nature — INSECTUM Insecten met erwten, pompoen & abrikoos (750 g)
-- bron: https://www.alsa-nature.nl/p/920515
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', 'wet', '750 g', '4050001121248', 'https://www.alsa-nature.nl/p/920515', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% insecten (zwarte soldaatvlieg), 36% bouillon, 4% erwten, 4% pompoen, 4% abrikoos, 1% mineralen, 0,5% kruiden, 0,5% distelolie', true, now(), 'sha256:8be03b622db20cada942549c91e0b26edcf5c1bee6d9318e0a7d84011d1520ee', null from p;

-- Alsa Nature — SIMPLE Wild puur (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920561
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Wild puur', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/920561', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Wild (bestaande uit hart, spiervlees, lever, long, pens), 28% bouillon', true, now(), 'sha256:0e382179b6b3239616c4abf7c43ba0cde9e9ba914b3c13319246831c3cb38c2c', null from p;

-- Alsa Nature — SINGLE Paard met aardappel (60 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920645
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Paard met aardappel', 'wet', '60 x 800 g', null, 'https://www.alsa-nature.nl/p/920645', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Paard (bestaande uit paardenvlees, paardenhart, paardenlever), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:425d605b0eb5772fa93f681b963c849f368b11355f86314d2a96628ef17c75f0', null from p;

-- Alsa Nature — FOODLOVE Kalf met quinoa, boerenkool & appel (90 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99006600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', 'raw', '90 x 300 g', null, 'https://www.alsa-nature.nl/p/99006600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kalf (bestaande uit kalfsharten, kalfslongen, kalfspens), 27,3% bouillon, 4% quinoa, 4% boerenkool, 3% appel, 1% mineralen, 0,5% kruiden, 0,2% distelolie', true, now(), 'sha256:d1e5605427439abf5d258930281f91cb1b137012c26abe5a2ea14d29b6544880', null from p;

-- Isegrim Roots — RIVER Zalm & Forel (7 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980085
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'RIVER Zalm & Forel', 'raw', '7 x 410 g', '4250231541261', 'https://www.alsa-nature.nl/p/980085', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip, 27,5% bouillon, 20% zalm, 14,5% forel, 1,5% aardpeer, 1% mineralen, 0,3% rivier kruiden, 0,2% distelolie', true, now(), 'sha256:4728131aeba35095ae1011bc66741c385f300eb399ace7b42c9869de1313d363', null from p;

-- Isegrim Roots — FIELD Paard (7 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980088
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'FIELD Paard', 'raw', '7 x 410 g', '4250231541278', 'https://www.alsa-nature.nl/p/980088', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Paard, 27% bouillon, 1,5% plantaardige mix, 1% mineralen, 0,3% veldkruiden, 0,2% lijnzaadolie.', true, now(), 'sha256:9b8229aceebf5c2a0badfbc18b72b5e8475bb2a296f9f8c5db234607bf2942cb', null from p;

-- Isegrim Roots — RIVER Zalm & Forel (35 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980087
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'RIVER Zalm & Forel', 'raw', '35 x 410 g', null, 'https://www.alsa-nature.nl/p/980087', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip, 27,5% bouillon, 20% zalm, 14,5% forel, 1,5% aardpeer, 1% mineralen, 0,3% rivier kruiden, 0,2% distelolie', true, now(), 'sha256:4728131aeba35095ae1011bc66741c385f300eb399ace7b42c9869de1313d363', null from p;

-- Isegrim Roots — FIELD Paard (14 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980089
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'FIELD Paard', 'raw', '14 x 410 g', null, 'https://www.alsa-nature.nl/p/980089', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Paard, 27% bouillon, 1,5% plantaardige mix, 1% mineralen, 0,3% veldkruiden, 0,2% lijnzaadolie.', true, now(), 'sha256:9b8229aceebf5c2a0badfbc18b72b5e8475bb2a296f9f8c5db234607bf2942cb', null from p;

-- Isegrim Roots — FIELD Paard (35 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980090
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'FIELD Paard', 'raw', '35 x 410 g', null, 'https://www.alsa-nature.nl/p/980090', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Paard, 27% bouillon, 1,5% plantaardige mix, 1% mineralen, 0,3% veldkruiden, 0,2% lijnzaadolie.', true, now(), 'sha256:9b8229aceebf5c2a0badfbc18b72b5e8475bb2a296f9f8c5db234607bf2942cb', null from p;

-- Isegrim Roots — MOUNTAIN Kalkoen (7 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980091
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'MOUNTAIN Kalkoen', 'raw', '7 x 410 g', '4250231541285', 'https://www.alsa-nature.nl/p/980091', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Kalkoen, 27% bouillon, 1,5% schorseneer, 1% mineralen, 0,3% bergkruiden, 0,2% zonnebloemolie', true, now(), 'sha256:b62f3ec0242920af8ae9d0be248eaf8e26909675e16da1c102a8637c50af5958', null from p;

-- Isegrim Roots — MOUNTAIN Kalkoen (14 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980092
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'MOUNTAIN Kalkoen', 'raw', '14 x 410 g', null, 'https://www.alsa-nature.nl/p/980092', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Kalkoen, 27% bouillon, 1,5% schorseneer, 1% mineralen, 0,3% bergkruiden, 0,2% zonnebloemolie', true, now(), 'sha256:b62f3ec0242920af8ae9d0be248eaf8e26909675e16da1c102a8637c50af5958', null from p;

-- Isegrim Roots — Puppy en Junior MOUNTAIN Kalkoen & Rund (35 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980084
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'Puppy en Junior MOUNTAIN Kalkoen & Rund', 'raw', '35 x 410 g', null, 'https://www.alsa-nature.nl/p/980084', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kalkoen, 35% rundvlees, 27% bouillon, 1,1% zoete aardappelen, 1% mineralen, 0,6% zalmolie, 0,3% bergkruiden', true, now(), 'sha256:83c04da8131677f024dd520d251e739d5c3d1dbe36685722d6286515d283137f', null from p;

-- Isegrim Roots — RIVER Zalm & Forel (14 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980086
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'RIVER Zalm & Forel', 'raw', '14 x 410 g', null, 'https://www.alsa-nature.nl/p/980086', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip, 27,5% bouillon, 20% zalm, 14,5% forel, 1,5% aardpeer, 1% mineralen, 0,3% rivier kruiden, 0,2% distelolie', true, now(), 'sha256:4728131aeba35095ae1011bc66741c385f300eb399ace7b42c9869de1313d363', null from p;

-- Isegrim Roots — FIELD Eend & Harten (14 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'FIELD Eend & Harten', 'raw', '14 x 410 g', null, 'https://www.alsa-nature.nl/p/980101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% Eend, 27% bouillon, 10% kippenharten, 1,5% groentemix, 1% mineralen, 0,3% veldkruiden, 0,2% lijnzaadolie', true, now(), 'sha256:83d1f81a2432fbdbec778abeebea7d4eb49d80043d91adf11f1fd996e501153f', null from p;

-- Isegrim Roots — FOREST Hert & Wild (35 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980096
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'FOREST Hert & Wild', 'raw', '35 x 410 g', null, 'https://www.alsa-nature.nl/p/980096', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Hert, 35% wild, 27% bouillon, 1,5% peterseliewortel, 1% mineralen, 0,3% boskruiden, 0,2% distelolie', true, now(), 'sha256:deda8144377d233ed0d611c961a7ed770a9b46ffd9704fb33855ad84cb80f0f0', null from p;

-- Isegrim Roots — FOREST Wildzwijn (14 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980098
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'FOREST Wildzwijn', 'raw', '14 x 410 g', null, 'https://www.alsa-nature.nl/p/980098', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Wildzwijn, 27% bouillon, 1,5% pastinaak, 1% mineralen, 0,3% boskruiden, 0,2% raapzaadolie', true, now(), 'sha256:e7295136f6994070695a54a094906047842d04f99d6845f4cf14dadb4e3c586a', null from p;

-- Isegrim Roots — FIELD Eend & Harten (35 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980102
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'FIELD Eend & Harten', 'raw', '35 x 410 g', null, 'https://www.alsa-nature.nl/p/980102', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% Eend, 27% bouillon, 10% kippenharten, 1,5% groentemix, 1% mineralen, 0,3% veldkruiden, 0,2% lijnzaadolie', true, now(), 'sha256:83d1f81a2432fbdbec778abeebea7d4eb49d80043d91adf11f1fd996e501153f', null from p;

-- Isegrim Roots — Puppy en Junior MOUNTAIN Kalkoen & Rund (14 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980083
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'Puppy en Junior MOUNTAIN Kalkoen & Rund', 'raw', '14 x 410 g', null, 'https://www.alsa-nature.nl/p/980083', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kalkoen, 35% rundvlees, 27% bouillon, 1,1% zoete aardappelen, 1% mineralen, 0,6% zalmolie, 0,3% bergkruiden', true, now(), 'sha256:83c04da8131677f024dd520d251e739d5c3d1dbe36685722d6286515d283137f', null from p;

-- Isegrim Roots — FOREST Hert & Wild (7 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980094
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'FOREST Hert & Wild', 'raw', '7 x 410 g', '4250231541292', 'https://www.alsa-nature.nl/p/980094', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Hert, 35% wild, 27% bouillon, 1,5% peterseliewortel, 1% mineralen, 0,3% boskruiden, 0,2% distelolie', true, now(), 'sha256:deda8144377d233ed0d611c961a7ed770a9b46ffd9704fb33855ad84cb80f0f0', null from p;

-- Isegrim Roots — MOUNTAIN Kalkoen (35 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980093
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'MOUNTAIN Kalkoen', 'raw', '35 x 410 g', null, 'https://www.alsa-nature.nl/p/980093', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Kalkoen, 27% bouillon, 1,5% schorseneer, 1% mineralen, 0,3% bergkruiden, 0,2% zonnebloemolie', true, now(), 'sha256:b62f3ec0242920af8ae9d0be248eaf8e26909675e16da1c102a8637c50af5958', null from p;

-- Isegrim Roots — FOREST Wildzwijn (7 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980097
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'FOREST Wildzwijn', 'raw', '7 x 410 g', '4250231541308', 'https://www.alsa-nature.nl/p/980097', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Wildzwijn, 27% bouillon, 1,5% pastinaak, 1% mineralen, 0,3% boskruiden, 0,2% raapzaadolie', true, now(), 'sha256:e7295136f6994070695a54a094906047842d04f99d6845f4cf14dadb4e3c586a', null from p;

-- Isegrim Roots — FOREST Wildzwijn (35 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980099
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'FOREST Wildzwijn', 'raw', '35 x 410 g', null, 'https://www.alsa-nature.nl/p/980099', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Wildzwijn, 27% bouillon, 1,5% pastinaak, 1% mineralen, 0,3% boskruiden, 0,2% raapzaadolie', true, now(), 'sha256:e7295136f6994070695a54a094906047842d04f99d6845f4cf14dadb4e3c586a', null from p;

-- Isegrim Roots — Puppy en Junior MOUNTAIN Kalkoen & Rund (7 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980082
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'Puppy en Junior MOUNTAIN Kalkoen & Rund', 'raw', '7 x 410 g', '4250231541254', 'https://www.alsa-nature.nl/p/980082', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kalkoen, 35% rundvlees, 27% bouillon, 1,1% zoete aardappelen, 1% mineralen, 0,6% zalmolie, 0,3% bergkruiden', true, now(), 'sha256:83c04da8131677f024dd520d251e739d5c3d1dbe36685722d6286515d283137f', null from p;

-- Isegrim Roots — FOREST Hert & Wild (14 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980095
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'FOREST Hert & Wild', 'raw', '14 x 410 g', null, 'https://www.alsa-nature.nl/p/980095', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Hert, 35% wild, 27% bouillon, 1,5% peterseliewortel, 1% mineralen, 0,3% boskruiden, 0,2% distelolie', true, now(), 'sha256:deda8144377d233ed0d611c961a7ed770a9b46ffd9704fb33855ad84cb80f0f0', null from p;

-- Isegrim Roots — FIELD Eend & Harten (7 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'FIELD Eend & Harten', 'raw', '7 x 410 g', '4250231541315', 'https://www.alsa-nature.nl/p/980100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% Eend, 27% bouillon, 10% kippenharten, 1,5% groentemix, 1% mineralen, 0,3% veldkruiden, 0,2% lijnzaadolie', true, now(), 'sha256:83d1f81a2432fbdbec778abeebea7d4eb49d80043d91adf11f1fd996e501153f', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;

-- Automatisch overgenomen etiketten, batch 12 van 2026-11-13 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Isegrim — RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98000100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/98000100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (48% gevogelte), bouillon (28,8%), vis en bijproducten van vis (14% zalm), granen (4% gierst), fruit (4% bosbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:e651e8f6cdfbfb7eb42a8da9923692accef27033d9b04e3b7cc11ab053b3f193', null from p;

-- Isegrim — TUNDRA Eend met pastinaak & wegedoornbessen (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98001300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/98001300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% eend, 30% gevogelte), bouillon (28,8%), groenten (4% pastinaak), fruit (4% wegedoornbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:68453c04ae188e5120637d0d94686d778caba8fbd4183ce53e4e67a3cb05ad5a', null from p;

-- Isegrim — RIVER Forel met pastinaak, cranberry's & wilde kruiden (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98003800
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/98003800', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (48% gevogelte), bouillon (28,8%), vis en bijproducten van vis (14% forel), groenten (4% pastinaak), fruit (4% veenbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:a60093bcf26e584934faf808cdb037dfad59d87639d4e0fffffb3621c3ae9372', null from p;

-- Isegrim — FOREST Rendier met bramen, champignons & wilde kruiden (400 g)
-- bron: https://www.alsa-nature.nl/p/98002400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', 'wet', '400 g', '4250231540189', 'https://www.alsa-nature.nl/p/98002400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (62% rendier), bouillon (28,8%), fruit (4% bramen), paddenstoelen (champignons 4%), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:fc386280453229683c5fdff229bfdea08c2a2168f142b0cd0713adde9f35cd57', null from p;

-- Isegrim — STEPPE Lam met bessen & wilde kruiden (12 kg)
-- bron: https://www.alsa-nature.nl/p/98006300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'STEPPE Lam met bessen & wilde kruiden', 'kibble', '12 kg', '4250231540097', 'https://www.alsa-nature.nl/p/98006300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogd lamsvlees 33%, verse kip 25%, aardappelen 15%, gevogelte vet (geconserveerd met tocoferol en rozemarijn extract) 8%, erwten 4%, bessen (bosbessen, veenbessen, frambozen) 4%, appels 3%, zalm olie 2%, wortelen 2%, gehydrolyseerd kippenlever 2%, aardappeleiwit 1%, glucosamine, mannan-oligosachariden, chondroïtinesulfaat, fructo-oligosacchariden, kruidenmix (paardebloem, kamille, weegbree, rozemarijn, duizendblad, peterselie, psyllium, goudsbloem) 0,01%, Yucca schidigera', true, now(), 'sha256:96da914509143cbcc967672e1b5860f47591ce17353a123546e6ca9532b86fc8', null from p;

-- Isegrim — Puppy en Junior RIVER Zalm met gierst (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/98006900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/98006900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte 54%, bouillon 28%, zalm 10%, gierst 3,7%, bosbessen 3%, mineralen 1%, zalmolie 0,2%, kruiden 0,1%', true, now(), 'sha256:b48f514dc20c82ffce5a62d2c8a8bf107f51ca05b2c32c637fef802fdc4336c7', null from p;

-- Isegrim — TUNDRA Eend met pastinaak & wegedoornbessen (800 g)
-- bron: https://www.alsa-nature.nl/p/98001500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', 'wet', '800 g', '4250231540158', 'https://www.alsa-nature.nl/p/98001500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% eend, 30% gevogelte), bouillon (28,8%), groenten (4% pastinaak), fruit (4% wegedoornbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:68453c04ae188e5120637d0d94686d778caba8fbd4183ce53e4e67a3cb05ad5a', null from p;

-- Isegrim — RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98000200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/98000200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (48% gevogelte), bouillon (28,8%), vis en bijproducten van vis (14% zalm), granen (4% gierst), fruit (4% bosbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:e651e8f6cdfbfb7eb42a8da9923692accef27033d9b04e3b7cc11ab053b3f193', null from p;

-- Isegrim — STEPPE Paard met appelbessen, champignons & wilde kruiden (800 g)
-- bron: https://www.alsa-nature.nl/p/98003300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', 'wet', '800 g', '4250231540219', 'https://www.alsa-nature.nl/p/98003300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (62% paard), bouillon (28,8%), fruit (4% appelbessen), paddenstoelen (champignons 4%), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:b11dc5c060503d81b238382eaf2bdcd5c635b154e023ddd0db73eac3b1bd99dd', null from p;

-- Isegrim — RIVER Forel met pastinaak, cranberry's & wilde kruiden (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98003700
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/98003700', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (48% gevogelte), bouillon (28,8%), vis en bijproducten van vis (14% forel), groenten (4% pastinaak), fruit (4% veenbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:a60093bcf26e584934faf808cdb037dfad59d87639d4e0fffffb3621c3ae9372', null from p;

-- Isegrim — RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden (800 g)
-- bron: https://www.alsa-nature.nl/p/98000300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', 'wet', '800 g', '4250231540110', 'https://www.alsa-nature.nl/p/98000300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (48% gevogelte), bouillon (28,8%), vis en bijproducten van vis (14% zalm), granen (4% gierst), fruit (4% bosbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:e651e8f6cdfbfb7eb42a8da9923692accef27033d9b04e3b7cc11ab053b3f193', null from p;

-- Isegrim — PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98001900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/98001900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% gans, 30% gevogelte), bouillon (28,8%), groenten (4% zoete aardappel), fruit (4% rozenbottel), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:0190eb8eaf99949f89811090f4a4ebda4895fd95495a0c248eeeebcaa6d3e201', null from p;

-- Isegrim — FOREST Rendier met bramen, champignons & wilde kruiden (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/98002900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/98002900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (62% rendier), bouillon (28,8%), fruit (4% bramen), paddenstoelen (champignons 4%), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:fc386280453229683c5fdff229bfdea08c2a2168f142b0cd0713adde9f35cd57', null from p;

-- Isegrim — GREEN HILLS Eend met bessen & wilde kruiden (3 kg)
-- bron: https://www.alsa-nature.nl/p/98006000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'GREEN HILLS Eend met bessen & wilde kruiden', 'kibble', '3 kg', '4250231540066', 'https://www.alsa-nature.nl/p/98006000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogd eendenvlees 30%, vers eendenvlees 25%, aardappelen 13%, gevogelte vet (geconserveerd met tocoferol en rozemarijn extract) 10%, tapioca 4%, bessen (bosbessen, veenbessen, frambozen) 4%, appels 3%, zalm olie 2%, wortelen 2%, erwten 2%, gehydrolyseerd kippenlever 2%, aardappeleiwit 1%, glucosamine, mannan-oligosachariden, chondroïtinesulfaat, fructo-oligosacchariden, kruidenmix (paardebloem, kamille, weegbree, rozemarijn, duizendblad, peterselie, psyllium, goudsbloem) 0,01%, Yucca schidigera.', true, now(), 'sha256:46d0cac86adc2f743163cb85b946099b902703e3a6c5cad2cf2f63fc2fe59591', null from p;

-- Isegrim — Puppy en Junior RIVER Zalm met gierst (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98006500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/98006500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte 54%, bouillon 28%, zalm 10%, gierst 3,7%, bosbessen 3%, mineralen 1%, zalmolie 0,2%, kruiden 0,1%', true, now(), 'sha256:b48f514dc20c82ffce5a62d2c8a8bf107f51ca05b2c32c637fef802fdc4336c7', null from p;

-- Isegrim — RIVER Forel met pastinaak, cranberry's & wilde kruiden (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/98004100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/98004100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (48% gevogelte), bouillon (28,8%), vis en bijproducten van vis (14% forel), groenten (4% pastinaak), fruit (4% veenbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:a60093bcf26e584934faf808cdb037dfad59d87639d4e0fffffb3621c3ae9372', null from p;

-- Isegrim — Puppy en Junior FOREST Wildzwijn met aardappelen (400 g)
-- bron: https://www.alsa-nature.nl/p/98012201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'Puppy en Junior FOREST Wildzwijn met aardappelen', 'wet', '400 g', '4250231543920', 'https://www.alsa-nature.nl/p/98012201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% wildzwijn, 28% bouillon, 3,7% aardappelen, 3% pompoen, 1% mineralen, 0,2% lijnolie, 0,1% wilde kruiden', true, now(), 'sha256:61e417fd90ce4cae13e2f04c65ffc84566ce05571877442f668a5a60792e9f7d', null from p;

-- Isegrim — Puppy en Junior FOREST Wildzwijn met aardappelen (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98012401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'Puppy en Junior FOREST Wildzwijn met aardappelen', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/98012401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% wildzwijn, 28% bouillon, 3,7% aardappelen, 3% pompoen, 1% mineralen, 0,2% lijnolie, 0,1% wilde kruiden', true, now(), 'sha256:61e417fd90ce4cae13e2f04c65ffc84566ce05571877442f668a5a60792e9f7d', null from p;

-- Isegrim — STEPPE Paard met appelbessen, champignons & wilde kruiden (400 g)
-- bron: https://www.alsa-nature.nl/p/98003000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', 'wet', '400 g', '4250231540202', 'https://www.alsa-nature.nl/p/98003000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (62% paard), bouillon (28,8%), fruit (4% appelbessen), paddenstoelen (champignons 4%), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:b11dc5c060503d81b238382eaf2bdcd5c635b154e023ddd0db73eac3b1bd99dd', null from p;

-- Isegrim — Puppy en Junior RIVER Zalm met bessen (3 kg)
-- bron: https://www.alsa-nature.nl/p/98005400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'Puppy en Junior RIVER Zalm met bessen', 'kibble', '3 kg', '4250231540004', 'https://www.alsa-nature.nl/p/98005400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse zalm 30%, gedroogde zalm 25%, aardappelen 15%, gevogelte vet (geconserveerd met tocoferol en rozemarijn extract) 12%, erwten 4%, bessen (bosbessen, veenbessen, frambozen) 4%, appels 3%, wortelen 2%, zalm olie 4%, gehydrolyseerd kippeneiwit 3%, gehydrolyseerd kippenlever 2%, glucosamine, mannan-oligosachariden, chondroïtinesulfaat, fructo-oligosacchariden, kruidenmix (paardebloem, kamille, weegbree, rozemarijn, duizendblad, peterselie, psyllium, goudsbloem) 0,012%, Yucca schidigera.', true, now(), 'sha256:5a61ad1b76c85b72cbd6dd3585a23e5d862c16efe69725ce84038dec922d44b4', null from p;

-- Isegrim — PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/98002200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/98002200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% gans, 30% gevogelte), bouillon (28,8%), groenten (4% zoete aardappel), fruit (4% rozenbottel), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:0190eb8eaf99949f89811090f4a4ebda4895fd95495a0c248eeeebcaa6d3e201', null from p;

-- Isegrim — RIVER Forel met pastinaak, cranberry's & wilde kruiden (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/98004000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/98004000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (48% gevogelte), bouillon (28,8%), vis en bijproducten van vis (14% forel), groenten (4% pastinaak), fruit (4% veenbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:a60093bcf26e584934faf808cdb037dfad59d87639d4e0fffffb3621c3ae9372', null from p;

-- Isegrim — Puppy en Junior RIVER Zalm met gierst (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/98006800
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/98006800', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte 54%, bouillon 28%, zalm 10%, gierst 3,7%, bosbessen 3%, mineralen 1%, zalmolie 0,2%, kruiden 0,1%', true, now(), 'sha256:b48f514dc20c82ffce5a62d2c8a8bf107f51ca05b2c32c637fef802fdc4336c7', null from p;

-- Isegrim — STEPPE Paard met appelbessen, champignons & wilde kruiden (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98003100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/98003100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (62% paard), bouillon (28,8%), fruit (4% appelbessen), paddenstoelen (champignons 4%), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:b11dc5c060503d81b238382eaf2bdcd5c635b154e023ddd0db73eac3b1bd99dd', null from p;

-- Isegrim — TUNDRA Eend met pastinaak & wegedoornbessen (400 g)
-- bron: https://www.alsa-nature.nl/p/98001200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', 'wet', '400 g', '4250231540141', 'https://www.alsa-nature.nl/p/98001200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% eend, 30% gevogelte), bouillon (28,8%), groenten (4% pastinaak), fruit (4% wegedoornbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:68453c04ae188e5120637d0d94686d778caba8fbd4183ce53e4e67a3cb05ad5a', null from p;

-- Isegrim — TUNDRA Eend met pastinaak & wegedoornbessen (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/98001700
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/98001700', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% eend, 30% gevogelte), bouillon (28,8%), groenten (4% pastinaak), fruit (4% wegedoornbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:68453c04ae188e5120637d0d94686d778caba8fbd4183ce53e4e67a3cb05ad5a', null from p;

-- Isegrim — FOREST Rendier met bramen, champignons & wilde kruiden (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98002600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/98002600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (62% rendier), bouillon (28,8%), fruit (4% bramen), paddenstoelen (champignons 4%), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:fc386280453229683c5fdff229bfdea08c2a2168f142b0cd0713adde9f35cd57', null from p;

-- Isegrim — FOREST Rendier met bramen, champignons & wilde kruiden (800 g)
-- bron: https://www.alsa-nature.nl/p/98002700
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', 'wet', '800 g', '4250231540196', 'https://www.alsa-nature.nl/p/98002700', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (62% rendier), bouillon (28,8%), fruit (4% bramen), paddenstoelen (champignons 4%), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:fc386280453229683c5fdff229bfdea08c2a2168f142b0cd0713adde9f35cd57', null from p;

-- Isegrim — TUNDRA Eend met pastinaak & wegedoornbessen (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/98001600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/98001600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% eend, 30% gevogelte), bouillon (28,8%), groenten (4% pastinaak), fruit (4% wegedoornbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:68453c04ae188e5120637d0d94686d778caba8fbd4183ce53e4e67a3cb05ad5a', null from p;

-- Isegrim — PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98002000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/98002000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% gans, 30% gevogelte), bouillon (28,8%), groenten (4% zoete aardappel), fruit (4% rozenbottel), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:0190eb8eaf99949f89811090f4a4ebda4895fd95495a0c248eeeebcaa6d3e201', null from p;

-- Isegrim — Puppy en Junior RIVER Zalm met gierst (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98006600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/98006600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte 54%, bouillon 28%, zalm 10%, gierst 3,7%, bosbessen 3%, mineralen 1%, zalmolie 0,2%, kruiden 0,1%', true, now(), 'sha256:b48f514dc20c82ffce5a62d2c8a8bf107f51ca05b2c32c637fef802fdc4336c7', null from p;

-- Isegrim — PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden (800 g)
-- bron: https://www.alsa-nature.nl/p/98002100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', 'wet', '800 g', '4250231540172', 'https://www.alsa-nature.nl/p/98002100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% gans, 30% gevogelte), bouillon (28,8%), groenten (4% zoete aardappel), fruit (4% rozenbottel), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:0190eb8eaf99949f89811090f4a4ebda4895fd95495a0c248eeeebcaa6d3e201', null from p;

-- Isegrim — PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden (400 g)
-- bron: https://www.alsa-nature.nl/p/98001800
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', 'wet', '400 g', '4250231540165', 'https://www.alsa-nature.nl/p/98001800', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% gans, 30% gevogelte), bouillon (28,8%), groenten (4% zoete aardappel), fruit (4% rozenbottel), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:0190eb8eaf99949f89811090f4a4ebda4895fd95495a0c248eeeebcaa6d3e201', null from p;

-- Isegrim — FOREST Rendier met bramen, champignons & wilde kruiden (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/98002800
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/98002800', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (62% rendier), bouillon (28,8%), fruit (4% bramen), paddenstoelen (champignons 4%), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:fc386280453229683c5fdff229bfdea08c2a2168f142b0cd0713adde9f35cd57', null from p;

-- Isegrim — Puppy en Junior FOREST Wildzwijn met aardappelen (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98012301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'Puppy en Junior FOREST Wildzwijn met aardappelen', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/98012301', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% wildzwijn, 28% bouillon, 3,7% aardappelen, 3% pompoen, 1% mineralen, 0,2% lijnolie, 0,1% wilde kruiden', true, now(), 'sha256:61e417fd90ce4cae13e2f04c65ffc84566ce05571877442f668a5a60792e9f7d', null from p;

-- Isegrim — RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden (400 g)
-- bron: https://www.alsa-nature.nl/p/98000000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', 'wet', '400 g', '4250231540103', 'https://www.alsa-nature.nl/p/98000000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (48% gevogelte), bouillon (28,8%), vis en bijproducten van vis (14% zalm), granen (4% gierst), fruit (4% bosbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:e651e8f6cdfbfb7eb42a8da9923692accef27033d9b04e3b7cc11ab053b3f193', null from p;

-- Isegrim — FOREST Hert met aardperen, rode bosbessen & wilde kruiden (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98000800
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/98000800', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% hert, 30% gevogelte), bouillon (28,8%), plantaardige bijproducten (4% aardpeer), fruit (4% rode bosbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:e4f7e2e2b640a72f7d66758b7683a86422f2b5bd37cabdebe04f06393d7fe1a6', null from p;

-- Isegrim — PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/98002300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/98002300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% gans, 30% gevogelte), bouillon (28,8%), groenten (4% zoete aardappel), fruit (4% rozenbottel), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:0190eb8eaf99949f89811090f4a4ebda4895fd95495a0c248eeeebcaa6d3e201', null from p;

-- Isegrim — STEPPE Paard met appelbessen, champignons & wilde kruiden (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/98003500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/98003500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (62% paard), bouillon (28,8%), fruit (4% appelbessen), paddenstoelen (champignons 4%), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:b11dc5c060503d81b238382eaf2bdcd5c635b154e023ddd0db73eac3b1bd99dd', null from p;

-- Isegrim — RIVER Forel met pastinaak, cranberry's & wilde kruiden (400 g)
-- bron: https://www.alsa-nature.nl/p/98003600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', 'wet', '400 g', '4250231540226', 'https://www.alsa-nature.nl/p/98003600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (48% gevogelte), bouillon (28,8%), vis en bijproducten van vis (14% forel), groenten (4% pastinaak), fruit (4% veenbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:a60093bcf26e584934faf808cdb037dfad59d87639d4e0fffffb3621c3ae9372', null from p;

-- Isegrim — FOREST Hert met aardperen, rode bosbessen & wilde kruiden (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/98001100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/98001100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% hert, 30% gevogelte), bouillon (28,8%), plantaardige bijproducten (4% aardpeer), fruit (4% rode bosbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:e4f7e2e2b640a72f7d66758b7683a86422f2b5bd37cabdebe04f06393d7fe1a6', null from p;

-- Isegrim — TUNDRA Eend met pastinaak & wegedoornbessen (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98001400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/98001400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% eend, 30% gevogelte), bouillon (28,8%), groenten (4% pastinaak), fruit (4% wegedoornbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:68453c04ae188e5120637d0d94686d778caba8fbd4183ce53e4e67a3cb05ad5a', null from p;

-- Isegrim — FOREST Hert met aardperen, rode bosbessen & wilde kruiden (800 g)
-- bron: https://www.alsa-nature.nl/p/98000900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', 'wet', '800 g', '4250231540134', 'https://www.alsa-nature.nl/p/98000900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% hert, 30% gevogelte), bouillon (28,8%), plantaardige bijproducten (4% aardpeer), fruit (4% rode bosbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:e4f7e2e2b640a72f7d66758b7683a86422f2b5bd37cabdebe04f06393d7fe1a6', null from p;

-- Isegrim — FOREST Rendier met bramen, champignons & wilde kruiden (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98002500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/98002500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (62% rendier), bouillon (28,8%), fruit (4% bramen), paddenstoelen (champignons 4%), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:fc386280453229683c5fdff229bfdea08c2a2168f142b0cd0713adde9f35cd57', null from p;

-- Isegrim — Puppy en Junior RIVER Zalm met gierst (800 g)
-- bron: https://www.alsa-nature.nl/p/98006700
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', 'wet', '800 g', '4250231540417', 'https://www.alsa-nature.nl/p/98006700', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte 54%, bouillon 28%, zalm 10%, gierst 3,7%, bosbessen 3%, mineralen 1%, zalmolie 0,2%, kruiden 0,1%', true, now(), 'sha256:b48f514dc20c82ffce5a62d2c8a8bf107f51ca05b2c32c637fef802fdc4336c7', null from p;

-- Isegrim — GREEN HILLS Eend met bessen & wilde kruiden (12 kg)
-- bron: https://www.alsa-nature.nl/p/98006100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'GREEN HILLS Eend met bessen & wilde kruiden', 'kibble', '12 kg', '4250231540073', 'https://www.alsa-nature.nl/p/98006100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogd eendenvlees 30%, vers eendenvlees 25%, aardappelen 13%, gevogelte vet (geconserveerd met tocoferol en rozemarijn extract) 10%, tapioca 4%, bessen (bosbessen, veenbessen, frambozen) 4%, appels 3%, zalm olie 2%, wortelen 2%, erwten 2%, gehydrolyseerd kippenlever 2%, aardappeleiwit 1%, glucosamine, mannan-oligosachariden, chondroïtinesulfaat, fructo-oligosacchariden, kruidenmix (paardebloem, kamille, weegbree, rozemarijn, duizendblad, peterselie, psyllium, goudsbloem) 0,01%, Yucca schidigera.', true, now(), 'sha256:46d0cac86adc2f743163cb85b946099b902703e3a6c5cad2cf2f63fc2fe59591', null from p;

-- Isegrim — Puppy en Junior RIVER Zalm met bessen (12 kg)
-- bron: https://www.alsa-nature.nl/p/98005500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'Puppy en Junior RIVER Zalm met bessen', 'kibble', '12 kg', '4250231540011', 'https://www.alsa-nature.nl/p/98005500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse zalm 30%, gedroogde zalm 25%, aardappelen 15%, gevogelte vet (geconserveerd met tocoferol en rozemarijn extract) 12%, erwten 4%, bessen (bosbessen, veenbessen, frambozen) 4%, appels 3%, wortelen 2%, zalm olie 4%, gehydrolyseerd kippeneiwit 3%, gehydrolyseerd kippenlever 2%, glucosamine, mannan-oligosachariden, chondroïtinesulfaat, fructo-oligosacchariden, kruidenmix (paardebloem, kamille, weegbree, rozemarijn, duizendblad, peterselie, psyllium, goudsbloem) 0,012%, Yucca schidigera.', true, now(), 'sha256:5a61ad1b76c85b72cbd6dd3585a23e5d862c16efe69725ce84038dec922d44b4', null from p;

-- Isegrim — FOREST Edelhert met bessen & wilde kruiden (3 kg)
-- bron: https://www.alsa-nature.nl/p/98005800
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'FOREST Edelhert met bessen & wilde kruiden', 'kibble', '3 kg', '4250231540042', 'https://www.alsa-nature.nl/p/98005800', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogd edelhertenvlees 31%, verse kip 25%, aardappelen 16%, gevogelte vet (geconserveerd met tocoferol en rozemarijn extract) 9%, bessen (bosbessen, veenbessen, frambozen) 4%, appels 3%, zalm olie 3%, wortelen 2%, erwten 2%, gehydrolyseerd kippenlever 2%, aardappeleiwit 1%, glucosamine, mannan-oligosachariden, chondroïtinesulfaat, fructo-oligosacchariden, kruidenmix (paardebloem, kamille, weegbree, rozemarijn, duizendblad, peterselie, psyllium, goudsbloem) 0,01%, Yucca schidigera.', true, now(), 'sha256:0a9404855885ed5863a2a70e31ad5fd7491dd98c998f45b82935cf84cefcbf36', null from p;

-- Isegrim — FOREST Edelhert met bessen & wilde kruiden (12 kg)
-- bron: https://www.alsa-nature.nl/p/98005900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'FOREST Edelhert met bessen & wilde kruiden', 'kibble', '12 kg', '4250231540059', 'https://www.alsa-nature.nl/p/98005900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogd edelhertenvlees 31%, verse kip 25%, aardappelen 16%, gevogelte vet (geconserveerd met tocoferol en rozemarijn extract) 9%, bessen (bosbessen, veenbessen, frambozen) 4%, appels 3%, zalm olie 3%, wortelen 2%, erwten 2%, gehydrolyseerd kippenlever 2%, aardappeleiwit 1%, glucosamine, mannan-oligosachariden, chondroïtinesulfaat, fructo-oligosacchariden, kruidenmix (paardebloem, kamille, weegbree, rozemarijn, duizendblad, peterselie, psyllium, goudsbloem) 0,01%, Yucca schidigera.', true, now(), 'sha256:0a9404855885ed5863a2a70e31ad5fd7491dd98c998f45b82935cf84cefcbf36', null from p;

-- Isegrim — FOREST Hert met aardperen, rode bosbessen & wilde kruiden (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98000700
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/98000700', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% hert, 30% gevogelte), bouillon (28,8%), plantaardige bijproducten (4% aardpeer), fruit (4% rode bosbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:e4f7e2e2b640a72f7d66758b7683a86422f2b5bd37cabdebe04f06393d7fe1a6', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;

-- Automatisch overgenomen etiketten, batch 13 van 2026-11-13 (11 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Isegrim — RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/98000400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/98000400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (48% gevogelte), bouillon (28,8%), vis en bijproducten van vis (14% zalm), granen (4% gierst), fruit (4% bosbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:e651e8f6cdfbfb7eb42a8da9923692accef27033d9b04e3b7cc11ab053b3f193', null from p;

-- Isegrim — FOREST Hert met aardperen, rode bosbessen & wilde kruiden (400 g)
-- bron: https://www.alsa-nature.nl/p/98000600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', 'wet', '400 g', '4250231540127', 'https://www.alsa-nature.nl/p/98000600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% hert, 30% gevogelte), bouillon (28,8%), plantaardige bijproducten (4% aardpeer), fruit (4% rode bosbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:e4f7e2e2b640a72f7d66758b7683a86422f2b5bd37cabdebe04f06393d7fe1a6', null from p;

-- Isegrim — STEPPE Paard met appelbessen, champignons & wilde kruiden (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/98003200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/98003200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (62% paard), bouillon (28,8%), fruit (4% appelbessen), paddenstoelen (champignons 4%), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:b11dc5c060503d81b238382eaf2bdcd5c635b154e023ddd0db73eac3b1bd99dd', null from p;

-- Isegrim — RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/98000500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/98000500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (48% gevogelte), bouillon (28,8%), vis en bijproducten van vis (14% zalm), granen (4% gierst), fruit (4% bosbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:e651e8f6cdfbfb7eb42a8da9923692accef27033d9b04e3b7cc11ab053b3f193', null from p;

-- Isegrim — STEPPE Paard met appelbessen, champignons & wilde kruiden (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/98003400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/98003400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (62% paard), bouillon (28,8%), fruit (4% appelbessen), paddenstoelen (champignons 4%), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:b11dc5c060503d81b238382eaf2bdcd5c635b154e023ddd0db73eac3b1bd99dd', null from p;

-- Isegrim — FOREST Hert met aardperen, rode bosbessen & wilde kruiden (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/98001000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/98001000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten 62% (32% hert, 30% gevogelte), bouillon (28,8%), plantaardige bijproducten (4% aardpeer), fruit (4% rode bosbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:e4f7e2e2b640a72f7d66758b7683a86422f2b5bd37cabdebe04f06393d7fe1a6', null from p;

-- Isegrim — RIVER Forel met pastinaak, cranberry's & wilde kruiden (800 g)
-- bron: https://www.alsa-nature.nl/p/98003900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', 'wet', '800 g', '4050001111195', 'https://www.alsa-nature.nl/p/98003900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (48% gevogelte), bouillon (28,8%), vis en bijproducten van vis (14% forel), groenten (4% pastinaak), fruit (4% veenbessen), mineralen (1%), kruiden (0,1%), oliën en vetten (0,1% zalm olie).', true, now(), 'sha256:a60093bcf26e584934faf808cdb037dfad59d87639d4e0fffffb3621c3ae9372', null from p;

-- Isegrim — RIVER Zalm met bessen & wilde kruiden (3 kg)
-- bron: https://www.alsa-nature.nl/p/98005600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'RIVER Zalm met bessen & wilde kruiden', 'kibble', '3 kg', '4250231540028', 'https://www.alsa-nature.nl/p/98005600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde zalm 32%, verse zalm 25%, aardappelen 16%, gevogelte vet (geconserveerd met tocoferol en rozemarijn extract) 8%, erwten 3%, bessen (bosbessen, veenbessen, frambozen) 4%, appels 3%, zalm olie 3%, wortelen 2%, gehydrolyseerd kippenlever 2%, aardappeleiwit 1%, glucosamine, mannan-oligosachariden, chondroïtinesulfaat, fructo-oligosacchariden, kruidenmix (paardebloem, kamille, weegbree, rozemarijn, duizendblad, peterselie, psyllium, goudsbloem) 0,01%, Yucca schidigera', true, now(), 'sha256:e74d8c880c14ab157b7055905622141d8cfc887a7315fa07568ea18e8b4f356d', null from p;

-- Isegrim — RIVER Zalm met bessen & wilde kruiden (12 kg)
-- bron: https://www.alsa-nature.nl/p/98005700
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'RIVER Zalm met bessen & wilde kruiden', 'kibble', '12 kg', '4250231540035', 'https://www.alsa-nature.nl/p/98005700', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde zalm 32%, verse zalm 25%, aardappelen 16%, gevogelte vet (geconserveerd met tocoferol en rozemarijn extract) 8%, erwten 3%, bessen (bosbessen, veenbessen, frambozen) 4%, appels 3%, zalm olie 3%, wortelen 2%, gehydrolyseerd kippenlever 2%, aardappeleiwit 1%, glucosamine, mannan-oligosachariden, chondroïtinesulfaat, fructo-oligosacchariden, kruidenmix (paardebloem, kamille, weegbree, rozemarijn, duizendblad, peterselie, psyllium, goudsbloem) 0,01%, Yucca schidigera', true, now(), 'sha256:e74d8c880c14ab157b7055905622141d8cfc887a7315fa07568ea18e8b4f356d', null from p;

-- Isegrim — Puppy en Junior RIVER Zalm met gierst (400 g)
-- bron: https://www.alsa-nature.nl/p/98006400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', 'wet', '400 g', '4250231540400', 'https://www.alsa-nature.nl/p/98006400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte 54%, bouillon 28%, zalm 10%, gierst 3,7%, bosbessen 3%, mineralen 1%, zalmolie 0,2%, kruiden 0,1%', true, now(), 'sha256:b48f514dc20c82ffce5a62d2c8a8bf107f51ca05b2c32c637fef802fdc4336c7', null from p;

-- Isegrim — STEPPE Lam met bessen & wilde kruiden (3 kg)
-- bron: https://www.alsa-nature.nl/p/98006200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim', 'STEPPE Lam met bessen & wilde kruiden', 'kibble', '3 kg', '4250231540080', 'https://www.alsa-nature.nl/p/98006200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogd lamsvlees 33%, verse kip 25%, aardappelen 15%, gevogelte vet (geconserveerd met tocoferol en rozemarijn extract) 8%, erwten 4%, bessen (bosbessen, veenbessen, frambozen) 4%, appels 3%, zalm olie 2%, wortelen 2%, gehydrolyseerd kippenlever 2%, aardappeleiwit 1%, glucosamine, mannan-oligosachariden, chondroïtinesulfaat, fructo-oligosacchariden, kruidenmix (paardebloem, kamille, weegbree, rozemarijn, duizendblad, peterselie, psyllium, goudsbloem) 0,01%, Yucca schidigera', true, now(), 'sha256:96da914509143cbcc967672e1b5860f47591ce17353a123546e6ca9532b86fc8', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;

-- Voedingsbronnen en controledatums.
begin;
with data(brand, name, package_size, source_url, checked_at, note) as (values
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '6 kg', 'https://www.alsa-nature.nl/p/91005900', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '12 kg', 'https://www.alsa-nature.nl/p/91005200', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '1,5 kg', 'https://www.alsa-nature.nl/p/91008000', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Zalm-sausmenu', '2 x 12 kg', 'https://www.alsa-nature.nl/p/91290401', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Senso Medium Eiwit', '6 kg', 'https://www.alsa-nature.nl/p/91130701', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '12 kg', 'https://www.alsa-nature.nl/p/91006000', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '2 x 12 kg', 'https://www.alsa-nature.nl/p/91004600', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Senso Medium Eiwit', '12 kg', 'https://www.alsa-nature.nl/p/91130801', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Actief Speciaal Eiwit', '3 kg', 'https://www.alsa-nature.nl/p/91110201', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Senso Medium Eiwit', '3 kg', 'https://www.alsa-nature.nl/p/91130601', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '6 kg', 'https://www.alsa-nature.nl/p/91120701', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'INSECTUM Aardappel', '3 kg', 'https://www.alsa-nature.nl/p/910089', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Vegetarisch', '6 kg', 'https://www.alsa-nature.nl/p/91140301', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '6 kg', 'https://www.alsa-nature.nl/p/91008200', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Senso', '6 kg', 'https://www.alsa-nature.nl/p/91130301', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Zalm-sausmenu', '3 kg', 'https://www.alsa-nature.nl/p/91290101', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Lam & Rijst brokken', '6 kg', 'https://www.alsa-nature.nl/p/91160301', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Lam & Rijst brokken', '2 x 12 kg', 'https://www.alsa-nature.nl/p/91160501', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Zalm-sausmenu', '6 kg', 'https://www.alsa-nature.nl/p/91290201', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'BIG-JUNIOR Medium eiwit', '2 x 12 kg', 'https://www.alsa-nature.nl/p/91360501', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '12 x 400 g', 'https://www.alsa-nature.nl/p/92005201', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '12 x 200 g', 'https://www.alsa-nature.nl/p/92007301', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '6 x 400 g', 'https://www.alsa-nature.nl/p/92007501', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'BIG-JUNIOR Medium eiwit', '12 kg', 'https://www.alsa-nature.nl/p/91360401', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Zalm-sausmenu', '12 kg', 'https://www.alsa-nature.nl/p/91290301', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '400 g', 'https://www.alsa-nature.nl/p/92002601', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '400 g', 'https://www.alsa-nature.nl/p/92013100', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '400 g', 'https://www.alsa-nature.nl/p/92007401', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '12 x 400 g', 'https://www.alsa-nature.nl/p/92013300', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '800 g', 'https://www.alsa-nature.nl/p/92007701', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '12 x 800 g', 'https://www.alsa-nature.nl/p/92007901', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '6 x 400 g', 'https://www.alsa-nature.nl/p/92013800', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '6 x 400 g', 'https://www.alsa-nature.nl/p/92019000', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '6 x 800 g', 'https://www.alsa-nature.nl/p/92013500', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '6 x 800 g', 'https://www.alsa-nature.nl/p/92026700', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '6 x 200 g', 'https://www.alsa-nature.nl/p/92027000', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '12 x 800 g', 'https://www.alsa-nature.nl/p/92028300', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUNIOR Kip met pastinaak & appel', '6 x 400 g', 'https://www.alsa-nature.nl/p/92028800', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUNIOR Eend met abrikoos', '12 x 400 g', 'https://www.alsa-nature.nl/p/92029800', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '120 x 400 g', 'https://www.alsa-nature.nl/p/920651', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '120 x 800 g', 'https://www.alsa-nature.nl/p/920655', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '12 x 800 g', 'https://www.alsa-nature.nl/p/92019400', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'BIO Rund met aardappel en rode bieten', '6 x 400 g', 'https://www.alsa-nature.nl/p/92022100', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '200 g', 'https://www.alsa-nature.nl/p/92026900', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '12 x 200 g', 'https://www.alsa-nature.nl/p/92027100', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '60 x 400 g', 'https://www.alsa-nature.nl/p/920665', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Gans puur', '120 x 800 g', 'https://www.alsa-nature.nl/p/920663', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '30 x 400 g', 'https://www.alsa-nature.nl/p/920664', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '120 x 800 g', 'https://www.alsa-nature.nl/p/920671', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Gans puur', '60 x 400 g', 'https://www.alsa-nature.nl/p/920657', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Rund', '6 x 800 g', 'https://www.alsa-nature.nl/p/92075401', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '6 x 400 g', 'https://www.alsa-nature.nl/p/92076901', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Gans puur', '90 x 800 g', 'https://www.alsa-nature.nl/p/920662', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '6 x 800 g', 'https://www.alsa-nature.nl/p/92077201', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '60 x 800 g', 'https://www.alsa-nature.nl/p/920669', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '6 x 200 g', 'https://www.alsa-nature.nl/p/92130801', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Wild', '400 g', 'https://www.alsa-nature.nl/p/92076201', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '200 g', 'https://www.alsa-nature.nl/p/92130701', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Wild', '12 x 400 g', 'https://www.alsa-nature.nl/p/92076401', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Gans puur', '6 x 400 g', 'https://www.alsa-nature.nl/p/92260501', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '400 g', 'https://www.alsa-nature.nl/p/92200101', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '6 x 400 g', 'https://www.alsa-nature.nl/p/92190501', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Gans puur', '400 g', 'https://www.alsa-nature.nl/p/92260401', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '800 g', 'https://www.alsa-nature.nl/p/92200401', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '800 g', 'https://www.alsa-nature.nl/p/92340701', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '800 g', 'https://www.alsa-nature.nl/p/92510701', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '6 x 400 g', 'https://www.alsa-nature.nl/p/92013200', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '800 g', 'https://www.alsa-nature.nl/p/92005301', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '800 g', 'https://www.alsa-nature.nl/p/92013400', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '6 x 800 g', 'https://www.alsa-nature.nl/p/92006301', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '12 x 800 g', 'https://www.alsa-nature.nl/p/92014200', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '12 x 200 g', 'https://www.alsa-nature.nl/p/92014500', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '6 x 400 g', 'https://www.alsa-nature.nl/p/92027300', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '800 g', 'https://www.alsa-nature.nl/p/92027500', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '12 x 400 g', 'https://www.alsa-nature.nl/p/92013900', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '12 x 400 g', 'https://www.alsa-nature.nl/p/92007601', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '800 g', 'https://www.alsa-nature.nl/p/92014000', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '12 x 400 g', 'https://www.alsa-nature.nl/p/92028000', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '400 g', 'https://www.alsa-nature.nl/p/92018900', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '200 g', 'https://www.alsa-nature.nl/p/92014300', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUNIOR Kip met pastinaak & appel', '400 g', 'https://www.alsa-nature.nl/p/92028700', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUNIOR Eend met abrikoos', '400 g', 'https://www.alsa-nature.nl/p/92029600', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '400 g', 'https://www.alsa-nature.nl/p/92041300', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '6 x 400 g', 'https://www.alsa-nature.nl/p/920432', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '12 x 750 g', 'https://www.alsa-nature.nl/p/920523', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '6 x 800 g', 'https://www.alsa-nature.nl/p/920545', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SIMPLE Rund puur', '6 x 400 g', 'https://www.alsa-nature.nl/p/920548', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SIMPLE Rund puur', '800 g', 'https://www.alsa-nature.nl/p/920550', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SIMPLE Rund puur', '12 x 400 g', 'https://www.alsa-nature.nl/p/920549', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '6 x 750 g', 'https://www.alsa-nature.nl/p/920522', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SIMPLE Rund puur', '400 g', 'https://www.alsa-nature.nl/p/920547', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SIMPLE Wild puur', '12 x 800 g', 'https://www.alsa-nature.nl/p/920564', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SIMPLE Wild puur', '6 x 800 g', 'https://www.alsa-nature.nl/p/920563', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SIMPLE Rund puur', '6 x 800 g', 'https://www.alsa-nature.nl/p/920551', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SIMPLE Rund puur', '12 x 800 g', 'https://www.alsa-nature.nl/p/920552', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '30 x 800 g', 'https://www.alsa-nature.nl/p/920628', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '60 x 800 g', 'https://www.alsa-nature.nl/p/920629', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Kip', '6 x 800 g', 'https://www.alsa-nature.nl/p/92074801', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Rund', '400 g', 'https://www.alsa-nature.nl/p/92075001', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '400 g', 'https://www.alsa-nature.nl/p/92076801', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Rund', '6 x 400 g', 'https://www.alsa-nature.nl/p/92075101', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '400 g', 'https://www.alsa-nature.nl/p/92100101', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', '4-SEASONS Herfstmenu Wild & Hert met zoete aardappel', '6 x 400 g', 'https://www.alsa-nature.nl/p/92090001', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '90 x 400 g', 'https://www.alsa-nature.nl/p/920642', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '800 g', 'https://www.alsa-nature.nl/p/92074101', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '6 x 800 g', 'https://www.alsa-nature.nl/p/92100401', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Wild', '6 x 800 g', 'https://www.alsa-nature.nl/p/92076601', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '12 x 800 g', 'https://www.alsa-nature.nl/p/92100501', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '6 x 200 g', 'https://www.alsa-nature.nl/p/92100801', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', '4-SEASONS Herfstmenu Wild & Hert met zoete aardappel', '12 x 400 g', 'https://www.alsa-nature.nl/p/92090101', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '12 x 400 g', 'https://www.alsa-nature.nl/p/92130301', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '400 g', 'https://www.alsa-nature.nl/p/92190401', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Speciaal Nierdieet', '6 x 400 g', 'https://www.alsa-nature.nl/p/92180201', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '6 x 400 g', 'https://www.alsa-nature.nl/p/92340501', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Speciaal Light-menu', '6 x 400 g', 'https://www.alsa-nature.nl/p/92330501', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '12 x 400 g', 'https://www.alsa-nature.nl/p/92510601', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '6 x 800 g', 'https://www.alsa-nature.nl/p/92130501', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '200 g', 'https://www.alsa-nature.nl/p/92340101', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '12 x 800 g', 'https://www.alsa-nature.nl/p/92520901', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '400 g', 'https://www.alsa-nature.nl/p/92520401', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '400 g', 'https://www.alsa-nature.nl/p/92620401', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '6 x 800 g', 'https://www.alsa-nature.nl/p/92520801', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Pens worst', '6 x 800 g', 'https://www.alsa-nature.nl/p/93450801', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '30 x 300 g', 'https://www.alsa-nature.nl/p/99004300', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '60 x 300 g', 'https://www.alsa-nature.nl/p/99004400', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '12 x 300 g', 'https://www.alsa-nature.nl/p/99004900', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '90 x 300 g', 'https://www.alsa-nature.nl/p/99005200', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '90 x 300 g', 'https://www.alsa-nature.nl/p/99008000', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '6 x 300 g', 'https://www.alsa-nature.nl/p/99004800', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', '30 x 500 g', 'https://www.alsa-nature.nl/p/99010601', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', '6 x 500 g', 'https://www.alsa-nature.nl/p/99011601', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '60 x 300 g', 'https://www.alsa-nature.nl/p/99005100', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', '60 x 500 g', 'https://www.alsa-nature.nl/p/99013101', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', '90 x 500 g', 'https://www.alsa-nature.nl/p/99013201', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', '6 x 500 g', 'https://www.alsa-nature.nl/p/99013401', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', '120 x 500 g', 'https://www.alsa-nature.nl/p/99010901', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', '60 x 500 g', 'https://www.alsa-nature.nl/p/99013701', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', '120 x 500 g', 'https://www.alsa-nature.nl/p/99013301', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '12 x 400 g', 'https://www.alsa-nature.nl/p/92019100', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '400 g', 'https://www.alsa-nature.nl/p/92026300', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '12 x 800 g', 'https://www.alsa-nature.nl/p/92027700', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '12 x 400 g', 'https://www.alsa-nature.nl/p/92027400', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUNIOR Wild met aardappel', '6 x 400 g', 'https://www.alsa-nature.nl/p/92030000', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUNIOR Wild met aardappel', '400 g', 'https://www.alsa-nature.nl/p/92029900', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Speciaal Single-sensitief', '6 x 400 g', 'https://www.alsa-nature.nl/p/92030300', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '12 x 400 g', 'https://www.alsa-nature.nl/p/920433', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FINEST Runder-spiervlees met aardperen, venkel en lijnolie', '12 x 400 g', 'https://www.alsa-nature.nl/p/920448', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '30 x 800 g', 'https://www.alsa-nature.nl/p/920620', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '60 x 400 g', 'https://www.alsa-nature.nl/p/920617', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '6 x 400 g', 'https://www.alsa-nature.nl/p/92027900', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUNIOR Lam met aardappel', '400 g', 'https://www.alsa-nature.nl/p/92028400', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '60 x 400 g', 'https://www.alsa-nature.nl/p/920641', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Speciaal Single-sensitief', '12 x 400 g', 'https://www.alsa-nature.nl/p/92030400', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Gans puur', '120 x 400 g', 'https://www.alsa-nature.nl/p/920659', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '120 x 800 g', 'https://www.alsa-nature.nl/p/920631', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '30 x 400 g', 'https://www.alsa-nature.nl/p/920624', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Gans puur', '30 x 800 g', 'https://www.alsa-nature.nl/p/920660', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '60 x 800 g', 'https://www.alsa-nature.nl/p/920621', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Lam', '6 x 800 g', 'https://www.alsa-nature.nl/p/92076001', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '30 x 800 g', 'https://www.alsa-nature.nl/p/920652', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Rund', '800 g', 'https://www.alsa-nature.nl/p/92075301', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Speciaal Sensibel', '6 x 200 g', 'https://www.alsa-nature.nl/p/92170501', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '12 x 800 g', 'https://www.alsa-nature.nl/p/92200601', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Wild', '12 x 800 g', 'https://www.alsa-nature.nl/p/92076701', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Gans puur', '60 x 800 g', 'https://www.alsa-nature.nl/p/920661', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '12 x 800 g', 'https://www.alsa-nature.nl/p/92190901', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '400 g', 'https://www.alsa-nature.nl/p/92510401', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Gans puur', '12 x 400 g', 'https://www.alsa-nature.nl/p/92260601', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '12 x 800 g', 'https://www.alsa-nature.nl/p/92340901', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '6 x 800 g', 'https://www.alsa-nature.nl/p/92510801', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '800 g', 'https://www.alsa-nature.nl/p/92520701', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '12 x 400 g', 'https://www.alsa-nature.nl/p/92520601', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '12 x 400 g', 'https://www.alsa-nature.nl/p/92620601', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '12 x 800 g', 'https://www.alsa-nature.nl/p/92620901', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '12 x 300 g', 'https://www.alsa-nature.nl/p/99007000', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '90 x 300 g', 'https://www.alsa-nature.nl/p/99004500', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '60 x 300 g', 'https://www.alsa-nature.nl/p/99007200', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '6 x 300 g', 'https://www.alsa-nature.nl/p/99007600', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '60 x 300 g', 'https://www.alsa-nature.nl/p/99007900', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', '12 x 500 g', 'https://www.alsa-nature.nl/p/99011101', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', '6 x 500 g', 'https://www.alsa-nature.nl/p/99011001', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', '90 x 500 g', 'https://www.alsa-nature.nl/p/99011401', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '6 x 400 g', 'https://www.alsa-nature.nl/p/92002101', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', '60 x 500 g', 'https://www.alsa-nature.nl/p/99011301', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '12 x 400 g', 'https://www.alsa-nature.nl/p/92004601', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', '30 x 500 g', 'https://www.alsa-nature.nl/p/99013001', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '6 x 400 g', 'https://www.alsa-nature.nl/p/92004501', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '1,5 kg', 'https://www.alsa-nature.nl/p/91350101', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '6 x 800 g', 'https://www.alsa-nature.nl/p/92004801', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '400 g', 'https://www.alsa-nature.nl/p/92013700', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '400 g', 'https://www.alsa-nature.nl/p/92005001', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '6 x 200 g', 'https://www.alsa-nature.nl/p/92014400', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '6 x 800 g', 'https://www.alsa-nature.nl/p/92005401', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '12 x 800 g', 'https://www.alsa-nature.nl/p/92013600', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '6 x 800 g', 'https://www.alsa-nature.nl/p/92014100', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'BIO Kip met rijst en jonge groenten', '400 g', 'https://www.alsa-nature.nl/p/920214', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '6 x 800 g', 'https://www.alsa-nature.nl/p/92019300', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'BIO Kip met rijst en jonge groenten', '6 x 400 g', 'https://www.alsa-nature.nl/p/92021500', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'BIO Kip met rijst en jonge groenten', '12 x 400 g', 'https://www.alsa-nature.nl/p/92021600', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'BIO Rund met aardappel en rode bieten', '400 g', 'https://www.alsa-nature.nl/p/92022000', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'VEGGIE Groentemaaltijd met Hüttenkäse, fruit en kruiden', '12 x 375 g', 'https://www.alsa-nature.nl/p/92036900', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Speciaal Sensibel', '60 x 200 g', 'https://www.alsa-nature.nl/p/92040300', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'VEGGIE Groente-bijlage met fruit', '375 g', 'https://www.alsa-nature.nl/p/92037000', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUNIOR Kip & zalm met aardappel', '6 x 400 g', 'https://www.alsa-nature.nl/p/92041100', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUNIOR Kip & zalm met aardappel', '12 x 400 g', 'https://www.alsa-nature.nl/p/92041200', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FINEST Runder-spiervlees met aardperen, venkel en lijnolie', '400 g', 'https://www.alsa-nature.nl/p/920446', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '375 g', 'https://www.alsa-nature.nl/p/920512', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FINEST Kalkoen-spiervlees met zoete aardappel, mango & lijnolie', '6 x 400 g', 'https://www.alsa-nature.nl/p/920444', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '12 x 375 g', 'https://www.alsa-nature.nl/p/920514', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FINEST Runder-spiervlees met aardperen, venkel en lijnolie', '6 x 400 g', 'https://www.alsa-nature.nl/p/920447', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '12 x 400 g', 'https://www.alsa-nature.nl/p/920543', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '800 g', 'https://www.alsa-nature.nl/p/920544', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '12 x 800 g', 'https://www.alsa-nature.nl/p/920546', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SIMPLE Wild puur', '400 g', 'https://www.alsa-nature.nl/p/920559', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SIMPLE Wild puur', '800 g', 'https://www.alsa-nature.nl/p/920562', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '90 x 400 g', 'https://www.alsa-nature.nl/p/920618', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '120 x 400 g', 'https://www.alsa-nature.nl/p/920619', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '30 x 400 g', 'https://www.alsa-nature.nl/p/920616', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '30 x 400 g', 'https://www.alsa-nature.nl/p/920632', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '90 x 400 g', 'https://www.alsa-nature.nl/p/920634', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '30 x 800 g', 'https://www.alsa-nature.nl/p/920636', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '90 x 800 g', 'https://www.alsa-nature.nl/p/920630', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '90 x 400 g', 'https://www.alsa-nature.nl/p/920666', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '30 x 400 g', 'https://www.alsa-nature.nl/p/920640', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '60 x 800 g', 'https://www.alsa-nature.nl/p/920653', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Lam', '12 x 800 g', 'https://www.alsa-nature.nl/p/92076101', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Wild', '6 x 400 g', 'https://www.alsa-nature.nl/p/92076301', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '120 x 400 g', 'https://www.alsa-nature.nl/p/920667', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Wild', '800 g', 'https://www.alsa-nature.nl/p/92076501', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Lam', '800 g', 'https://www.alsa-nature.nl/p/92075901', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '30 x 800 g', 'https://www.alsa-nature.nl/p/920668', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', '4-SEASONS Zomermenu Rund & Zalm met mango en meloen', '400 g', 'https://www.alsa-nature.nl/p/92089601', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '800 g', 'https://www.alsa-nature.nl/p/92077101', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '12 x 400 g', 'https://www.alsa-nature.nl/p/92190601', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Speciaal Sensibel', '12 x 200 g', 'https://www.alsa-nature.nl/p/92170601', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Speciaal Nierdieet', '12 x 400 g', 'https://www.alsa-nature.nl/p/92180301', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '6 x 800 g', 'https://www.alsa-nature.nl/p/92190801', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '800 g', 'https://www.alsa-nature.nl/p/92190701', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '12 x 400 g', 'https://www.alsa-nature.nl/p/92340601', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '6 x 400 g', 'https://www.alsa-nature.nl/p/92200201', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '12 x 400 g', 'https://www.alsa-nature.nl/p/92200301', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '6 x 200 g', 'https://www.alsa-nature.nl/p/92340201', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '12 x 200 g', 'https://www.alsa-nature.nl/p/92340301', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '6 x 800 g', 'https://www.alsa-nature.nl/p/92620801', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '6 x 800 g', 'https://www.alsa-nature.nl/p/92340801', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '30 x 300 g', 'https://www.alsa-nature.nl/p/99007800', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', '60 x 500 g', 'https://www.alsa-nature.nl/p/99010701', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '90 x 300 g', 'https://www.alsa-nature.nl/p/99007300', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', '90 x 500 g', 'https://www.alsa-nature.nl/p/99010801', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', '60 x 500 g', 'https://www.alsa-nature.nl/p/99011901', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '12 x 800 g', 'https://www.alsa-nature.nl/p/92002501', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', '12 x 500 g', 'https://www.alsa-nature.nl/p/99010501', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '800 g', 'https://www.alsa-nature.nl/p/92002301', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', '60 x 500 g', 'https://www.alsa-nature.nl/p/99012501', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '400 g', 'https://www.alsa-nature.nl/p/92004401', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '6 x 400 g', 'https://www.alsa-nature.nl/p/92005101', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', '90 x 500 g', 'https://www.alsa-nature.nl/p/99012601', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '800 g', 'https://www.alsa-nature.nl/p/92019200', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'VEGGIE Groente-bijlage met fruit', '6 x 375 g', 'https://www.alsa-nature.nl/p/92037100', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'VEGGIE Groentemaaltijd met Hüttenkäse, fruit en kruiden', '6 x 375 g', 'https://www.alsa-nature.nl/p/92036800', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUNIOR Wild met aardappel', '12 x 400 g', 'https://www.alsa-nature.nl/p/92030100', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Speciaal Single-sensitief', '400 g', 'https://www.alsa-nature.nl/p/92030200', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '6 x 400 g', 'https://www.alsa-nature.nl/p/920542', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FINEST Kippen-spiervlees met pastinaak, pompoen en lijnolie', '400 g', 'https://www.alsa-nature.nl/p/920440', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '90 x 400 g', 'https://www.alsa-nature.nl/p/920626', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '90 x 800 g', 'https://www.alsa-nature.nl/p/920638', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '120 x 800 g', 'https://www.alsa-nature.nl/p/920647', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '120 x 800 g', 'https://www.alsa-nature.nl/p/920623', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '120 x 400 g', 'https://www.alsa-nature.nl/p/920627', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '60 x 800 g', 'https://www.alsa-nature.nl/p/920637', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '6 x 400 g', 'https://www.alsa-nature.nl/p/92620501', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '12 x 400 g', 'https://www.alsa-nature.nl/p/92077001', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Rund', '12 x 400 g', 'https://www.alsa-nature.nl/p/92075201', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '800 g', 'https://www.alsa-nature.nl/p/92620701', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '120 x 300 g', 'https://www.alsa-nature.nl/p/99004600', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '12 x 300 g', 'https://www.alsa-nature.nl/p/99005600', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '120 x 300 g', 'https://www.alsa-nature.nl/p/99007400', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '120 x 300 g', 'https://www.alsa-nature.nl/p/99008100', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', '12 x 500 g', 'https://www.alsa-nature.nl/p/99012301', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', '30 x 500 g', 'https://www.alsa-nature.nl/p/99011201', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', '12 x 500 g', 'https://www.alsa-nature.nl/p/99012901', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '6 x 300 g', 'https://www.alsa-nature.nl/p/99006900', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', '6 x 500 g', 'https://www.alsa-nature.nl/p/99012201', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', '30 x 500 g', 'https://www.alsa-nature.nl/p/99012401', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Speciaal Sensibel', '30 x 400 g', 'https://www.alsa-nature.nl/p/92040400', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FINEST Kippen-spiervlees met pastinaak, pompoen en lijnolie', '6 x 400 g', 'https://www.alsa-nature.nl/p/920441', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Speciaal Light-menu', '30 x 400 g', 'https://www.alsa-nature.nl/p/92040600', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '90 x 400 g', 'https://www.alsa-nature.nl/p/920650', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '12 x 800 g', 'https://www.alsa-nature.nl/p/92041800', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '6 x 375 g', 'https://www.alsa-nature.nl/p/920513', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '400 g', 'https://www.alsa-nature.nl/p/920541', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Gans puur', '30 x 400 g', 'https://www.alsa-nature.nl/p/920656', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Gans puur', '90 x 400 g', 'https://www.alsa-nature.nl/p/920658', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '90 x 800 g', 'https://www.alsa-nature.nl/p/920670', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '90 x 800 g', 'https://www.alsa-nature.nl/p/920654', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '6 x 400 g', 'https://www.alsa-nature.nl/p/92073901', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Kip', '400 g', 'https://www.alsa-nature.nl/p/92074401', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Kip', '800 g', 'https://www.alsa-nature.nl/p/92074701', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Kip', '12 x 800 g', 'https://www.alsa-nature.nl/p/92074901', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Lam', '400 g', 'https://www.alsa-nature.nl/p/92075601', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Lam', '12 x 400 g', 'https://www.alsa-nature.nl/p/92075801', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Rund', '12 x 800 g', 'https://www.alsa-nature.nl/p/92075501', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Speciaal Sensibel', '200 g', 'https://www.alsa-nature.nl/p/92170401', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Kip', '12 x 400 g', 'https://www.alsa-nature.nl/p/92074601', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Kip', '6 x 400 g', 'https://www.alsa-nature.nl/p/92074501', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Gans puur', '800 g', 'https://www.alsa-nature.nl/p/92260701', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Gans puur', '12 x 800 g', 'https://www.alsa-nature.nl/p/92260901', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Lam', '6 x 400 g', 'https://www.alsa-nature.nl/p/92075701', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Speciaal Sensibel', '400 g', 'https://www.alsa-nature.nl/p/92170101', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Speciaal Nierdieet', '400 g', 'https://www.alsa-nature.nl/p/92180101', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Gans puur', '6 x 800 g', 'https://www.alsa-nature.nl/p/92260801', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Speciaal Light-menu', '400 g', 'https://www.alsa-nature.nl/p/92330401', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '6 x 300 g', 'https://www.alsa-nature.nl/p/99004100', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '12 x 300 g', 'https://www.alsa-nature.nl/p/99004200', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '90 x 300 g', 'https://www.alsa-nature.nl/p/99005900', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '120 x 300 g', 'https://www.alsa-nature.nl/p/99005300', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '3 kg', 'https://www.alsa-nature.nl/p/91350201', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '12 kg', 'https://www.alsa-nature.nl/p/91350401', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '6 x 400 g', 'https://www.alsa-nature.nl/p/92001501', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '6 x 200 g', 'https://www.alsa-nature.nl/p/92007201', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '12 x 400 g', 'https://www.alsa-nature.nl/p/92074001', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '6 x 800 g', 'https://www.alsa-nature.nl/p/92007801', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '400 g', 'https://www.alsa-nature.nl/p/92073801', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '12 x 800 g', 'https://www.alsa-nature.nl/p/92074301', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', '4-SEASONS Herfstmenu Wild & Hert met zoete aardappel', '400 g', 'https://www.alsa-nature.nl/p/92089901', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', '4-SEASONS Zomermenu Rund & Zalm met mango en meloen', '6 x 400 g', 'https://www.alsa-nature.nl/p/92089701', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '200 g', 'https://www.alsa-nature.nl/p/92100701', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', '4-SEASONS Zomermenu Rund & Zalm met mango en meloen', '12 x 400 g', 'https://www.alsa-nature.nl/p/92089801', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '12 x 800 g', 'https://www.alsa-nature.nl/p/92130601', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '6 x 400 g', 'https://www.alsa-nature.nl/p/92100301', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '800 g', 'https://www.alsa-nature.nl/p/92130401', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '6 x 400 g', 'https://www.alsa-nature.nl/p/92130201', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '12 x 200 g', 'https://www.alsa-nature.nl/p/92130901', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '12 x 800 g', 'https://www.alsa-nature.nl/p/92510901', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Lamsworst met aardappel & wortelen', '6 x 200 g', 'https://www.alsa-nature.nl/p/93410201', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '12 x 800 g', 'https://www.alsa-nature.nl/p/92077301', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '6 x 400 g', 'https://www.alsa-nature.nl/p/92520501', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '6 x 800 g', 'https://www.alsa-nature.nl/p/92200501', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '12 x 200 g', 'https://www.alsa-nature.nl/p/92100901', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Speciaal Light-menu', '12 x 400 g', 'https://www.alsa-nature.nl/p/92330601', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Lamsworst met aardappel & wortelen', '6 x 800 g', 'https://www.alsa-nature.nl/p/93410801', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Gevogelteworst met rijst', '6 x 800 g', 'https://www.alsa-nature.nl/p/93440801', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '30 x 300 g', 'https://www.alsa-nature.nl/p/99005700', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '6 x 300 g', 'https://www.alsa-nature.nl/p/99005500', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '120 x 300 g', 'https://www.alsa-nature.nl/p/99006000', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '30 x 300 g', 'https://www.alsa-nature.nl/p/99006400', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '60 x 300 g', 'https://www.alsa-nature.nl/p/99006500', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', '6 x 500 g', 'https://www.alsa-nature.nl/p/99010401', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', '12 x 500 g', 'https://www.alsa-nature.nl/p/99011701', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', '30 x 500 g', 'https://www.alsa-nature.nl/p/99011801', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', '90 x 500 g', 'https://www.alsa-nature.nl/p/99012001', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', '120 x 500 g', 'https://www.alsa-nature.nl/p/99011501', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', '120 x 500 g', 'https://www.alsa-nature.nl/p/99012101', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', '12 x 500 g', 'https://www.alsa-nature.nl/p/99013501', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', '30 x 500 g', 'https://www.alsa-nature.nl/p/99013601', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', '90 x 500 g', 'https://www.alsa-nature.nl/p/99013801', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', '120 x 500 g', 'https://www.alsa-nature.nl/p/99013901', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Light Speciaal Eiwit', '1,5 kg', 'https://www.alsa-nature.nl/p/91310101', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '12 x 800 g', 'https://www.alsa-nature.nl/p/92001901', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '2 x 12 kg', 'https://www.alsa-nature.nl/p/91350501', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '800 g', 'https://www.alsa-nature.nl/p/92001701', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '6 x 800 g', 'https://www.alsa-nature.nl/p/92002401', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '12 x 400 g', 'https://www.alsa-nature.nl/p/92002201', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '12 x 800 g', 'https://www.alsa-nature.nl/p/92004901', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '400 g', 'https://www.alsa-nature.nl/p/92002001', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '800 g', 'https://www.alsa-nature.nl/p/92004701', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '6 x 800 g', 'https://www.alsa-nature.nl/p/92027600', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUNIOR Lam met aardappel', '6 x 400 g', 'https://www.alsa-nature.nl/p/92028500', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '400 g', 'https://www.alsa-nature.nl/p/92005901', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUNIOR Kip met pastinaak & appel', '12 x 400 g', 'https://www.alsa-nature.nl/p/92028900', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUNIOR Runderhart met aardappel & wortel', '6 x 400 g', 'https://www.alsa-nature.nl/p/92029400', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUNIOR Lam met aardappel', '12 x 400 g', 'https://www.alsa-nature.nl/p/92028600', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '800 g', 'https://www.alsa-nature.nl/p/92006201', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUNIOR Runderhart met aardappel & wortel', '12 x 400 g', 'https://www.alsa-nature.nl/p/92029500', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Speciaal Nierdieet', '60 x 400 g', 'https://www.alsa-nature.nl/p/92040100', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FINEST Kalkoen-spiervlees met zoete aardappel, mango & lijnolie', '12 x 400 g', 'https://www.alsa-nature.nl/p/920445', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '120 x 400 g', 'https://www.alsa-nature.nl/p/920635', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'VEGGIE Groente-bijlage met fruit', '12 x 375 g', 'https://www.alsa-nature.nl/p/92037200', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '120 x 800 g', 'https://www.alsa-nature.nl/p/920639', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '6 x 800 g', 'https://www.alsa-nature.nl/p/920435', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FINEST Kippen-spiervlees met pastinaak, pompoen en lijnolie', '12 x 400 g', 'https://www.alsa-nature.nl/p/920442', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Light Speciaal Eiwit', '12 kg', 'https://www.alsa-nature.nl/p/91310401', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Light Speciaal Eiwit', '2 x 12 kg', 'https://www.alsa-nature.nl/p/91310501', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '60 x 400 g', 'https://www.alsa-nature.nl/p/920633', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '12 x 400 g', 'https://www.alsa-nature.nl/p/92001601', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '12 x 800 g', 'https://www.alsa-nature.nl/p/92006401', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'BIG-JUNIOR Medium eiwit', '3 kg', 'https://www.alsa-nature.nl/p/91360201', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '30 x 800 g', 'https://www.alsa-nature.nl/p/920644', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '6 x 800 g', 'https://www.alsa-nature.nl/p/92001801', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '12 x 400 g', 'https://www.alsa-nature.nl/p/92026500', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '60 x 300 g', 'https://www.alsa-nature.nl/p/99005800', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '6 x 300 g', 'https://www.alsa-nature.nl/p/99006200', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '120 x 300 g', 'https://www.alsa-nature.nl/p/99006700', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '30 x 300 g', 'https://www.alsa-nature.nl/p/99005000', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '12 x 300 g', 'https://www.alsa-nature.nl/p/99006300', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', '120 x 500 g', 'https://www.alsa-nature.nl/p/99012701', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '30 x 300 g', 'https://www.alsa-nature.nl/p/99007100', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '12 x 300 g', 'https://www.alsa-nature.nl/p/99007700', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', '6 x 500 g', 'https://www.alsa-nature.nl/p/99012801', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '1,5 kg', 'https://www.alsa-nature.nl/p/91004200', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'INSECTUM Aardappel', '2 x 12 kg', 'https://www.alsa-nature.nl/p/910092', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'INSECTUM Rijst', '1,5 kg', 'https://www.alsa-nature.nl/p/910094', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '6 kg', 'https://www.alsa-nature.nl/p/910105', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '2 x 12 kg', 'https://www.alsa-nature.nl/p/910107', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Leverdieet', '2 x 12 kg', 'https://www.alsa-nature.nl/p/91011401', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '1,5 kg', 'https://www.alsa-nature.nl/p/91002900', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Nierdieet', '1,5 kg', 'https://www.alsa-nature.nl/p/91011601', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Vitaal Medium Eiwit', '12 kg', 'https://www.alsa-nature.nl/p/91100801', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Actief Speciaal Eiwit', '2 x 12 kg', 'https://www.alsa-nature.nl/p/91110501', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'INSECTUM Aardappel', '12 kg', 'https://www.alsa-nature.nl/p/910091', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Nierdieet', '2 x 12 kg', 'https://www.alsa-nature.nl/p/91012001', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '1,5 kg', 'https://www.alsa-nature.nl/p/91120501', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Senso', '3 kg', 'https://www.alsa-nature.nl/p/91130201', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '2 x 12 kg', 'https://www.alsa-nature.nl/p/91120901', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Senso', '1,5 kg', 'https://www.alsa-nature.nl/p/91130101', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Light Speciaal Eiwit', '6 kg', 'https://www.alsa-nature.nl/p/91310301', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'BIG-JUNIOR Medium eiwit', '6 kg', 'https://www.alsa-nature.nl/p/91360301', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Vitaal', '2 x 12 kg', 'https://www.alsa-nature.nl/p/91101001', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'VEGGIE Groentemaaltijd met Hüttenkäse, fruit en kruiden', '375 g', 'https://www.alsa-nature.nl/p/92036700', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '800 g', 'https://www.alsa-nature.nl/p/92041600', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '12 x 800 g', 'https://www.alsa-nature.nl/p/920436', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '12 x 750 g', 'https://www.alsa-nature.nl/p/920517', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '375 g', 'https://www.alsa-nature.nl/p/920518', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '6 x 400 g', 'https://www.alsa-nature.nl/p/92041400', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FINEST Kalkoen-spiervlees met zoete aardappel, mango & lijnolie', '400 g', 'https://www.alsa-nature.nl/p/920443', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '6 x 375 g', 'https://www.alsa-nature.nl/p/920519', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '800 g', 'https://www.alsa-nature.nl/p/920434', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '12 x 375 g', 'https://www.alsa-nature.nl/p/920520', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '750 g', 'https://www.alsa-nature.nl/p/920521', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '6 x 750 g', 'https://www.alsa-nature.nl/p/920516', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '90 x 800 g', 'https://www.alsa-nature.nl/p/920622', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '60 x 400 g', 'https://www.alsa-nature.nl/p/920649', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '90 x 800 g', 'https://www.alsa-nature.nl/p/920646', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '6 x 800 g', 'https://www.alsa-nature.nl/p/92074201', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '60 x 400 g', 'https://www.alsa-nature.nl/p/920625', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '12 x 400 g', 'https://www.alsa-nature.nl/p/92100601', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '400 g', 'https://www.alsa-nature.nl/p/92130101', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '800 g', 'https://www.alsa-nature.nl/p/92100201', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Speciaal Sensibel', '6 x 400 g', 'https://www.alsa-nature.nl/p/92170201', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '30 x 400 g', 'https://www.alsa-nature.nl/p/920648', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Speciaal Sensibel', '12 x 400 g', 'https://www.alsa-nature.nl/p/92170301', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '400 g', 'https://www.alsa-nature.nl/p/92340401', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '6 x 400 g', 'https://www.alsa-nature.nl/p/92510501', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Gevogelteworst met rijst', '6 x 200 g', 'https://www.alsa-nature.nl/p/93440201', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '12 kg', 'https://www.alsa-nature.nl/p/91003200', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '12 kg', 'https://www.alsa-nature.nl/p/91007500', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '3 kg', 'https://www.alsa-nature.nl/p/91005000', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'INSECTUM Rijst', '12 kg', 'https://www.alsa-nature.nl/p/910097', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Pens worst', '6 x 200 g', 'https://www.alsa-nature.nl/p/93450201', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '3 kg', 'https://www.alsa-nature.nl/p/910104', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '12 kg', 'https://www.alsa-nature.nl/p/910106', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Leverdieet', '12 kg', 'https://www.alsa-nature.nl/p/91011301', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '2 x 12 kg', 'https://www.alsa-nature.nl/p/91005300', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Vitaal', '6 kg', 'https://www.alsa-nature.nl/p/91100301', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '12 kg', 'https://www.alsa-nature.nl/p/91120801', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Leverdieet', '3 kg', 'https://www.alsa-nature.nl/p/91011101', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Vitaal Medium Eiwit', '2 x 12 kg', 'https://www.alsa-nature.nl/p/91101101', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '6 kg', 'https://www.alsa-nature.nl/p/91004400', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Vitaal', '1,5 kg', 'https://www.alsa-nature.nl/p/91100101', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Actief Speciaal Eiwit', '12 kg', 'https://www.alsa-nature.nl/p/91110401', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Vitaal', '12 kg', 'https://www.alsa-nature.nl/p/91100401', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '3 kg', 'https://www.alsa-nature.nl/p/91004300', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '6 kg', 'https://www.alsa-nature.nl/p/910031', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '3 kg', 'https://www.alsa-nature.nl/p/91003000', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '6 kg', 'https://www.alsa-nature.nl/p/91005100', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Vitaal Medium Eiwit', '6 kg', 'https://www.alsa-nature.nl/p/91100701', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '3 kg', 'https://www.alsa-nature.nl/p/91008100', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '2 x 12 kg', 'https://www.alsa-nature.nl/p/91006100', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'INSECTUM Aardappel', '6 kg', 'https://www.alsa-nature.nl/p/910090', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'INSECTUM Rijst', '2 x 12 kg', 'https://www.alsa-nature.nl/p/910098', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '3 kg', 'https://www.alsa-nature.nl/p/91120601', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '3 kg', 'https://www.alsa-nature.nl/p/91005800', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'INSECTUM Rijst', '3 kg', 'https://www.alsa-nature.nl/p/910095', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Actief Speciaal Eiwit', '6 kg', 'https://www.alsa-nature.nl/p/91110301', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '12 kg', 'https://www.alsa-nature.nl/p/91008300', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Senso Medium Eiwit', '2 x 12 kg', 'https://www.alsa-nature.nl/p/91131101', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '1,5 kg', 'https://www.alsa-nature.nl/p/910103', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Vitaal Medium Eiwit', '3 kg', 'https://www.alsa-nature.nl/p/91100601', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Nierdieet', '3 kg', 'https://www.alsa-nature.nl/p/91011701', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Senso', '12 kg', 'https://www.alsa-nature.nl/p/91130401', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '1,5 kg', 'https://www.alsa-nature.nl/p/91005700', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Senso', '2 x 12 kg', 'https://www.alsa-nature.nl/p/91131001', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '2 x 12 kg', 'https://www.alsa-nature.nl/p/91003300', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '12 kg', 'https://www.alsa-nature.nl/p/91004500', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '2 x 12 kg', 'https://www.alsa-nature.nl/p/91008400', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '6 kg', 'https://www.alsa-nature.nl/p/91007400', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '1,5 kg', 'https://www.alsa-nature.nl/p/91004900', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '3 kg', 'https://www.alsa-nature.nl/p/91007300', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '1,5 kg', 'https://www.alsa-nature.nl/p/91007200', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '2 x 12 kg', 'https://www.alsa-nature.nl/p/91007600', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'INSECTUM Rijst', '6 kg', 'https://www.alsa-nature.nl/p/910096', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Leverdieet', '1,5 kg', 'https://www.alsa-nature.nl/p/91011001', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Nierdieet', '12 kg', 'https://www.alsa-nature.nl/p/91011901', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Vitaal', '3 kg', 'https://www.alsa-nature.nl/p/91100201', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '6 kg', 'https://www.alsa-nature.nl/p/91350301', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Nierdieet', '6 kg', 'https://www.alsa-nature.nl/p/91011801', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Leverdieet', '6 kg', 'https://www.alsa-nature.nl/p/91011201', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Lam & Rijst brokken', '3 kg', 'https://www.alsa-nature.nl/p/91160201', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Lam & Rijst brokken', '12 kg', 'https://www.alsa-nature.nl/p/91160401', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '12 x 800 g', 'https://www.alsa-nature.nl/p/92005501', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '6 x 400 g', 'https://www.alsa-nature.nl/p/92006001', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '12 x 400 g', 'https://www.alsa-nature.nl/p/92006101', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '200 g', 'https://www.alsa-nature.nl/p/92007101', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'BIO Rund met aardappel en rode bieten', '12 x 400 g', 'https://www.alsa-nature.nl/p/92022200', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '6 x 400 g', 'https://www.alsa-nature.nl/p/92026400', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '800 g', 'https://www.alsa-nature.nl/p/92026600', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '12 x 800 g', 'https://www.alsa-nature.nl/p/92026800', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUNIOR Eend met abrikoos', '6 x 400 g', 'https://www.alsa-nature.nl/p/92029700', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '400 g', 'https://www.alsa-nature.nl/p/92027800', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '400 g', 'https://www.alsa-nature.nl/p/92027200', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUNIOR Runderhart met aardappel & wortel', '400 g', 'https://www.alsa-nature.nl/p/92029300', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '800 g', 'https://www.alsa-nature.nl/p/92028100', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '6 x 800 g', 'https://www.alsa-nature.nl/p/92028200', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Light Speciaal Eiwit', '3 kg', 'https://www.alsa-nature.nl/p/91310201', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Speciaal Light-menu', '60 x 400 g', 'https://www.alsa-nature.nl/p/92040700', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'JUNIOR Kip & zalm met aardappel', '400 g', 'https://www.alsa-nature.nl/p/92041000', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '12 x 400 g', 'https://www.alsa-nature.nl/p/92041500', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Speciaal Nierdieet', '30 x 400 g', 'https://www.alsa-nature.nl/p/92040000', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Speciaal Sensibel', '30 x 200 g', 'https://www.alsa-nature.nl/p/92040200', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Speciaal Sensibel', '60 x 400 g', 'https://www.alsa-nature.nl/p/92040500', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Speciaal Single-sensitief', '30 x 400 g', 'https://www.alsa-nature.nl/p/92040800', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Speciaal Single-sensitief', '60 x 400 g', 'https://www.alsa-nature.nl/p/92040900', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '6 x 800 g', 'https://www.alsa-nature.nl/p/92041700', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SIMPLE Wild puur', '6 x 400 g', 'https://www.alsa-nature.nl/p/920560', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '120 x 400 g', 'https://www.alsa-nature.nl/p/920643', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '750 g', 'https://www.alsa-nature.nl/p/920515', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SIMPLE Wild puur', '12 x 400 g', 'https://www.alsa-nature.nl/p/920561', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '60 x 800 g', 'https://www.alsa-nature.nl/p/920645', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '90 x 300 g', 'https://www.alsa-nature.nl/p/99006600', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '6 x 400 g', 'https://www.alsa-nature.nl/p/98000100', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '6 x 400 g', 'https://www.alsa-nature.nl/p/98001300', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '12 x 400 g', 'https://www.alsa-nature.nl/p/98003800', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '400 g', 'https://www.alsa-nature.nl/p/98002400', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'STEPPE Lam met bessen & wilde kruiden', '12 kg', 'https://www.alsa-nature.nl/p/98006300', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '12 x 800 g', 'https://www.alsa-nature.nl/p/98006900', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '800 g', 'https://www.alsa-nature.nl/p/98001500', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '12 x 400 g', 'https://www.alsa-nature.nl/p/98000200', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '800 g', 'https://www.alsa-nature.nl/p/98003300', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '6 x 400 g', 'https://www.alsa-nature.nl/p/98003700', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '800 g', 'https://www.alsa-nature.nl/p/98000300', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '6 x 400 g', 'https://www.alsa-nature.nl/p/98001900', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '12 x 800 g', 'https://www.alsa-nature.nl/p/98002900', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'GREEN HILLS Eend met bessen & wilde kruiden', '3 kg', 'https://www.alsa-nature.nl/p/98006000', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '6 x 400 g', 'https://www.alsa-nature.nl/p/98006500', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '12 x 800 g', 'https://www.alsa-nature.nl/p/98004100', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'Puppy en Junior FOREST Wildzwijn met aardappelen', '400 g', 'https://www.alsa-nature.nl/p/98012201', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'Puppy en Junior FOREST Wildzwijn met aardappelen', '12 x 400 g', 'https://www.alsa-nature.nl/p/98012401', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '400 g', 'https://www.alsa-nature.nl/p/98003000', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met bessen', '3 kg', 'https://www.alsa-nature.nl/p/98005400', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '6 x 800 g', 'https://www.alsa-nature.nl/p/98002200', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '6 x 800 g', 'https://www.alsa-nature.nl/p/98004000', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '6 x 800 g', 'https://www.alsa-nature.nl/p/98006800', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '6 x 400 g', 'https://www.alsa-nature.nl/p/98003100', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '400 g', 'https://www.alsa-nature.nl/p/98001200', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '12 x 800 g', 'https://www.alsa-nature.nl/p/98001700', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '12 x 400 g', 'https://www.alsa-nature.nl/p/98002600', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '800 g', 'https://www.alsa-nature.nl/p/98002700', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '6 x 800 g', 'https://www.alsa-nature.nl/p/98001600', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '12 x 400 g', 'https://www.alsa-nature.nl/p/98002000', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '12 x 400 g', 'https://www.alsa-nature.nl/p/98006600', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '800 g', 'https://www.alsa-nature.nl/p/98002100', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '400 g', 'https://www.alsa-nature.nl/p/98001800', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '6 x 800 g', 'https://www.alsa-nature.nl/p/98002800', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'Puppy en Junior FOREST Wildzwijn met aardappelen', '6 x 400 g', 'https://www.alsa-nature.nl/p/98012301', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '400 g', 'https://www.alsa-nature.nl/p/98000000', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '12 x 400 g', 'https://www.alsa-nature.nl/p/98000800', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '12 x 800 g', 'https://www.alsa-nature.nl/p/98002300', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '12 x 800 g', 'https://www.alsa-nature.nl/p/98003500', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '400 g', 'https://www.alsa-nature.nl/p/98003600', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '12 x 800 g', 'https://www.alsa-nature.nl/p/98001100', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '12 x 400 g', 'https://www.alsa-nature.nl/p/98001400', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '800 g', 'https://www.alsa-nature.nl/p/98000900', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '6 x 400 g', 'https://www.alsa-nature.nl/p/98002500', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '800 g', 'https://www.alsa-nature.nl/p/98006700', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'GREEN HILLS Eend met bessen & wilde kruiden', '12 kg', 'https://www.alsa-nature.nl/p/98006100', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met bessen', '12 kg', 'https://www.alsa-nature.nl/p/98005500', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'FOREST Edelhert met bessen & wilde kruiden', '3 kg', 'https://www.alsa-nature.nl/p/98005800', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'FOREST Edelhert met bessen & wilde kruiden', '12 kg', 'https://www.alsa-nature.nl/p/98005900', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '6 x 400 g', 'https://www.alsa-nature.nl/p/98000700', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '6 x 800 g', 'https://www.alsa-nature.nl/p/98000400', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '400 g', 'https://www.alsa-nature.nl/p/98000600', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '12 x 400 g', 'https://www.alsa-nature.nl/p/98003200', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '12 x 800 g', 'https://www.alsa-nature.nl/p/98000500', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '6 x 800 g', 'https://www.alsa-nature.nl/p/98003400', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '6 x 800 g', 'https://www.alsa-nature.nl/p/98001000', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '800 g', 'https://www.alsa-nature.nl/p/98003900', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'RIVER Zalm met bessen & wilde kruiden', '3 kg', 'https://www.alsa-nature.nl/p/98005600', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'RIVER Zalm met bessen & wilde kruiden', '12 kg', 'https://www.alsa-nature.nl/p/98005700', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '400 g', 'https://www.alsa-nature.nl/p/98006400', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim', 'STEPPE Lam met bessen & wilde kruiden', '3 kg', 'https://www.alsa-nature.nl/p/98006200', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim Roots', 'RIVER Zalm & Forel', '7 x 410 g', 'https://www.alsa-nature.nl/p/980085', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim Roots', 'FIELD Paard', '7 x 410 g', 'https://www.alsa-nature.nl/p/980088', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim Roots', 'RIVER Zalm & Forel', '35 x 410 g', 'https://www.alsa-nature.nl/p/980087', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim Roots', 'FIELD Paard', '14 x 410 g', 'https://www.alsa-nature.nl/p/980089', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim Roots', 'FIELD Paard', '35 x 410 g', 'https://www.alsa-nature.nl/p/980090', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim Roots', 'MOUNTAIN Kalkoen', '7 x 410 g', 'https://www.alsa-nature.nl/p/980091', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim Roots', 'MOUNTAIN Kalkoen', '14 x 410 g', 'https://www.alsa-nature.nl/p/980092', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim Roots', 'Puppy en Junior MOUNTAIN Kalkoen & Rund', '35 x 410 g', 'https://www.alsa-nature.nl/p/980084', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim Roots', 'RIVER Zalm & Forel', '14 x 410 g', 'https://www.alsa-nature.nl/p/980086', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim Roots', 'FIELD Eend & Harten', '14 x 410 g', 'https://www.alsa-nature.nl/p/980101', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim Roots', 'FOREST Hert & Wild', '35 x 410 g', 'https://www.alsa-nature.nl/p/980096', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim Roots', 'FOREST Wildzwijn', '14 x 410 g', 'https://www.alsa-nature.nl/p/980098', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim Roots', 'FIELD Eend & Harten', '35 x 410 g', 'https://www.alsa-nature.nl/p/980102', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim Roots', 'Puppy en Junior MOUNTAIN Kalkoen & Rund', '14 x 410 g', 'https://www.alsa-nature.nl/p/980083', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim Roots', 'FOREST Hert & Wild', '7 x 410 g', 'https://www.alsa-nature.nl/p/980094', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim Roots', 'MOUNTAIN Kalkoen', '35 x 410 g', 'https://www.alsa-nature.nl/p/980093', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim Roots', 'FOREST Wildzwijn', '7 x 410 g', 'https://www.alsa-nature.nl/p/980097', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim Roots', 'FOREST Wildzwijn', '35 x 410 g', 'https://www.alsa-nature.nl/p/980099', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim Roots', 'Puppy en Junior MOUNTAIN Kalkoen & Rund', '7 x 410 g', 'https://www.alsa-nature.nl/p/980082', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim Roots', 'FOREST Hert & Wild', '14 x 410 g', 'https://www.alsa-nature.nl/p/980095', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.'),
  ('Isegrim Roots', 'FIELD Eend & Harten', '7 x 410 g', 'https://www.alsa-nature.nl/p/980100', date '2026-11-13', 'Automatisch overgenomen van de officiële productpagina op 2026-11-13. Ontbrekende waarden zijn niet vermeld.')
)
update public.recipe_versions rv
   set nutrition_source_url = d.source_url,
       nutrition_checked_at = d.checked_at,
       nutrition_note = d.note
  from data d
  join public.products p on p.brand = d.brand and p.name = d.name and p.package_size is not distinct from d.package_size
 where rv.product_id = p.id and rv.is_current;
commit;

-- Voedingswaarden (as-fed).
begin;
with data(brand, name, package_size, nutrient_key, value) as (values
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '6 kg', 'protein', 22.9),
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '6 kg', 'fat', 10.8),
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '6 kg', 'fiber', 4.6),
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '6 kg', 'ash', 10.8),
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '6 kg', 'calcium', 1.4),
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '6 kg', 'phosphorus', 1),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '12 kg', 'protein', 25),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '12 kg', 'fat', 13),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '12 kg', 'fiber', 2),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '12 kg', 'ash', 7.1),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '12 kg', 'calcium', 1.4),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '12 kg', 'phosphorus', 0.9),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '1,5 kg', 'protein', 27),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '1,5 kg', 'fat', 12),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '1,5 kg', 'fiber', 3.7),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '1,5 kg', 'ash', 8),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '1,5 kg', 'moisture', 9),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '1,5 kg', 'calcium', 1.2),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '1,5 kg', 'phosphorus', 0.6),
  ('Alsa Nature', 'Zalm-sausmenu', '2 x 12 kg', 'protein', 26),
  ('Alsa Nature', 'Zalm-sausmenu', '2 x 12 kg', 'fat', 16),
  ('Alsa Nature', 'Zalm-sausmenu', '2 x 12 kg', 'fiber', 2.2),
  ('Alsa Nature', 'Zalm-sausmenu', '2 x 12 kg', 'ash', 6.4),
  ('Alsa Nature', 'Zalm-sausmenu', '2 x 12 kg', 'calcium', 1.5),
  ('Alsa Nature', 'Zalm-sausmenu', '2 x 12 kg', 'phosphorus', 1),
  ('Alsa Nature', 'Senso Medium Eiwit', '6 kg', 'protein', 20),
  ('Alsa Nature', 'Senso Medium Eiwit', '6 kg', 'fat', 11),
  ('Alsa Nature', 'Senso Medium Eiwit', '6 kg', 'fiber', 2.6),
  ('Alsa Nature', 'Senso Medium Eiwit', '6 kg', 'ash', 8),
  ('Alsa Nature', 'Senso Medium Eiwit', '6 kg', 'calcium', 2),
  ('Alsa Nature', 'Senso Medium Eiwit', '6 kg', 'phosphorus', 1.15),
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '12 kg', 'protein', 22.9),
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '12 kg', 'fat', 10.8),
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '12 kg', 'fiber', 4.6),
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '12 kg', 'ash', 10.8),
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '12 kg', 'calcium', 1.4),
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '12 kg', 'phosphorus', 1),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '2 x 12 kg', 'protein', 24),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '2 x 12 kg', 'fat', 14),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '2 x 12 kg', 'fiber', 2.7),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '2 x 12 kg', 'ash', 5.8),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '2 x 12 kg', 'calcium', 0.66),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '2 x 12 kg', 'phosphorus', 0.52),
  ('Alsa Nature', 'Senso Medium Eiwit', '12 kg', 'protein', 20),
  ('Alsa Nature', 'Senso Medium Eiwit', '12 kg', 'fat', 11),
  ('Alsa Nature', 'Senso Medium Eiwit', '12 kg', 'fiber', 2.6),
  ('Alsa Nature', 'Senso Medium Eiwit', '12 kg', 'ash', 8),
  ('Alsa Nature', 'Senso Medium Eiwit', '12 kg', 'calcium', 2),
  ('Alsa Nature', 'Senso Medium Eiwit', '12 kg', 'phosphorus', 1.15),
  ('Alsa Nature', 'Actief Speciaal Eiwit', '3 kg', 'protein', 31),
  ('Alsa Nature', 'Actief Speciaal Eiwit', '3 kg', 'fat', 22),
  ('Alsa Nature', 'Actief Speciaal Eiwit', '3 kg', 'fiber', 2.2),
  ('Alsa Nature', 'Actief Speciaal Eiwit', '3 kg', 'ash', 6.4),
  ('Alsa Nature', 'Actief Speciaal Eiwit', '3 kg', 'phosphorus', 0.95),
  ('Alsa Nature', 'Senso Medium Eiwit', '3 kg', 'protein', 20),
  ('Alsa Nature', 'Senso Medium Eiwit', '3 kg', 'fat', 11),
  ('Alsa Nature', 'Senso Medium Eiwit', '3 kg', 'fiber', 2.6),
  ('Alsa Nature', 'Senso Medium Eiwit', '3 kg', 'ash', 8),
  ('Alsa Nature', 'Senso Medium Eiwit', '3 kg', 'calcium', 2),
  ('Alsa Nature', 'Senso Medium Eiwit', '3 kg', 'phosphorus', 1.15),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '6 kg', 'protein', 26),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '6 kg', 'fat', 11),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '6 kg', 'fiber', 2.5),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '6 kg', 'ash', 6.7),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '6 kg', 'calcium', 1.5),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '6 kg', 'phosphorus', 1),
  ('Alsa Nature', 'INSECTUM Aardappel', '3 kg', 'protein', 22),
  ('Alsa Nature', 'INSECTUM Aardappel', '3 kg', 'fat', 12),
  ('Alsa Nature', 'INSECTUM Aardappel', '3 kg', 'fiber', 3),
  ('Alsa Nature', 'INSECTUM Aardappel', '3 kg', 'ash', 7),
  ('Alsa Nature', 'INSECTUM Aardappel', '3 kg', 'calcium', 0.9),
  ('Alsa Nature', 'INSECTUM Aardappel', '3 kg', 'phosphorus', 0.7),
  ('Alsa Nature', 'Vegetarisch', '6 kg', 'protein', 23),
  ('Alsa Nature', 'Vegetarisch', '6 kg', 'fat', 9),
  ('Alsa Nature', 'Vegetarisch', '6 kg', 'fiber', 2.4),
  ('Alsa Nature', 'Vegetarisch', '6 kg', 'ash', 5.8),
  ('Alsa Nature', 'Vegetarisch', '6 kg', 'calcium', 1.05),
  ('Alsa Nature', 'Vegetarisch', '6 kg', 'phosphorus', 0.85),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '6 kg', 'protein', 27),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '6 kg', 'fat', 12),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '6 kg', 'fiber', 3.7),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '6 kg', 'ash', 8),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '6 kg', 'moisture', 9),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '6 kg', 'calcium', 1.2),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '6 kg', 'phosphorus', 0.6),
  ('Alsa Nature', 'Senso', '6 kg', 'protein', 22),
  ('Alsa Nature', 'Senso', '6 kg', 'fat', 14),
  ('Alsa Nature', 'Senso', '6 kg', 'fiber', 2.5),
  ('Alsa Nature', 'Senso', '6 kg', 'ash', 8),
  ('Alsa Nature', 'Senso', '6 kg', 'calcium', 2),
  ('Alsa Nature', 'Senso', '6 kg', 'phosphorus', 1.15),
  ('Alsa Nature', 'Zalm-sausmenu', '3 kg', 'protein', 26),
  ('Alsa Nature', 'Zalm-sausmenu', '3 kg', 'fat', 16),
  ('Alsa Nature', 'Zalm-sausmenu', '3 kg', 'fiber', 2.2),
  ('Alsa Nature', 'Zalm-sausmenu', '3 kg', 'ash', 6.4),
  ('Alsa Nature', 'Zalm-sausmenu', '3 kg', 'calcium', 1.5),
  ('Alsa Nature', 'Zalm-sausmenu', '3 kg', 'phosphorus', 1),
  ('Alsa Nature', 'Lam & Rijst brokken', '6 kg', 'protein', 20),
  ('Alsa Nature', 'Lam & Rijst brokken', '6 kg', 'fat', 11.5),
  ('Alsa Nature', 'Lam & Rijst brokken', '6 kg', 'fiber', 2.3),
  ('Alsa Nature', 'Lam & Rijst brokken', '6 kg', 'ash', 5.5),
  ('Alsa Nature', 'Lam & Rijst brokken', '6 kg', 'calcium', 1.25),
  ('Alsa Nature', 'Lam & Rijst brokken', '6 kg', 'phosphorus', 0.85),
  ('Alsa Nature', 'Lam & Rijst brokken', '2 x 12 kg', 'protein', 20),
  ('Alsa Nature', 'Lam & Rijst brokken', '2 x 12 kg', 'fat', 11.5),
  ('Alsa Nature', 'Lam & Rijst brokken', '2 x 12 kg', 'fiber', 2.3),
  ('Alsa Nature', 'Lam & Rijst brokken', '2 x 12 kg', 'ash', 5.5),
  ('Alsa Nature', 'Lam & Rijst brokken', '2 x 12 kg', 'calcium', 1.25),
  ('Alsa Nature', 'Lam & Rijst brokken', '2 x 12 kg', 'phosphorus', 0.85),
  ('Alsa Nature', 'Zalm-sausmenu', '6 kg', 'protein', 26),
  ('Alsa Nature', 'Zalm-sausmenu', '6 kg', 'fat', 16),
  ('Alsa Nature', 'Zalm-sausmenu', '6 kg', 'fiber', 2.2),
  ('Alsa Nature', 'Zalm-sausmenu', '6 kg', 'ash', 6.4),
  ('Alsa Nature', 'Zalm-sausmenu', '6 kg', 'calcium', 1.5),
  ('Alsa Nature', 'Zalm-sausmenu', '6 kg', 'phosphorus', 1),
  ('Alsa Nature', 'BIG-JUNIOR Medium eiwit', '2 x 12 kg', 'protein', 25),
  ('Alsa Nature', 'BIG-JUNIOR Medium eiwit', '2 x 12 kg', 'fat', 12),
  ('Alsa Nature', 'BIG-JUNIOR Medium eiwit', '2 x 12 kg', 'fiber', 2.3),
  ('Alsa Nature', 'BIG-JUNIOR Medium eiwit', '2 x 12 kg', 'ash', 6.1),
  ('Alsa Nature', 'BIG-JUNIOR Medium eiwit', '2 x 12 kg', 'calcium', 1.35),
  ('Alsa Nature', 'BIG-JUNIOR Medium eiwit', '2 x 12 kg', 'phosphorus', 0.95),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '12 x 400 g', 'protein', 10.2),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '12 x 400 g', 'fat', 5.4),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '12 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '12 x 400 g', 'ash', 2.4),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '12 x 400 g', 'moisture', 79),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '12 x 200 g', 'protein', 10.6),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '12 x 200 g', 'fat', 7),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '12 x 200 g', 'fiber', 0.3),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '12 x 200 g', 'ash', 2.6),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '12 x 200 g', 'moisture', 77),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '6 x 400 g', 'protein', 10.6),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '6 x 400 g', 'fat', 7),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '6 x 400 g', 'fiber', 0.3),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '6 x 400 g', 'ash', 2.6),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '6 x 400 g', 'moisture', 77),
  ('Alsa Nature', 'BIG-JUNIOR Medium eiwit', '12 kg', 'protein', 25),
  ('Alsa Nature', 'BIG-JUNIOR Medium eiwit', '12 kg', 'fat', 12),
  ('Alsa Nature', 'BIG-JUNIOR Medium eiwit', '12 kg', 'fiber', 2.3),
  ('Alsa Nature', 'BIG-JUNIOR Medium eiwit', '12 kg', 'ash', 6.1),
  ('Alsa Nature', 'BIG-JUNIOR Medium eiwit', '12 kg', 'calcium', 1.35),
  ('Alsa Nature', 'BIG-JUNIOR Medium eiwit', '12 kg', 'phosphorus', 0.95),
  ('Alsa Nature', 'Zalm-sausmenu', '12 kg', 'protein', 26),
  ('Alsa Nature', 'Zalm-sausmenu', '12 kg', 'fat', 16),
  ('Alsa Nature', 'Zalm-sausmenu', '12 kg', 'fiber', 2.2),
  ('Alsa Nature', 'Zalm-sausmenu', '12 kg', 'ash', 6.4),
  ('Alsa Nature', 'Zalm-sausmenu', '12 kg', 'calcium', 1.5),
  ('Alsa Nature', 'Zalm-sausmenu', '12 kg', 'phosphorus', 1),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '400 g', 'protein', 10.9),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '400 g', 'fat', 7.3),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '400 g', 'fiber', 0.3),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '400 g', 'ash', 1.7),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '400 g', 'moisture', 75),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '400 g', 'protein', 10.8),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '400 g', 'fat', 7.1),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '400 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '400 g', 'ash', 2),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '400 g', 'moisture', 75),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '400 g', 'protein', 10.6),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '400 g', 'fat', 7),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '400 g', 'fiber', 0.3),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '400 g', 'ash', 2.6),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '400 g', 'moisture', 77),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '12 x 400 g', 'protein', 10.8),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '12 x 400 g', 'fat', 7.1),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '12 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '12 x 400 g', 'ash', 2),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '12 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '800 g', 'protein', 10.6),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '800 g', 'fat', 7),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '800 g', 'fiber', 0.3),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '800 g', 'ash', 2.6),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '800 g', 'moisture', 77),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '12 x 800 g', 'protein', 10.6),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '12 x 800 g', 'fat', 7),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '12 x 800 g', 'fiber', 0.3),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '12 x 800 g', 'ash', 2.6),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '12 x 800 g', 'moisture', 77),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '6 x 400 g', 'protein', 10.4),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '6 x 400 g', 'fat', 5.2),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '6 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '6 x 400 g', 'ash', 2),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '6 x 400 g', 'moisture', 80),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '6 x 400 g', 'protein', 11.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '6 x 400 g', 'fat', 5.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '6 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '6 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '6 x 400 g', 'moisture', 77),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '6 x 800 g', 'protein', 10.8),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '6 x 800 g', 'fat', 7.1),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '6 x 800 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '6 x 800 g', 'ash', 2),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '6 x 800 g', 'moisture', 75),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '6 x 800 g', 'protein', 10.5),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '6 x 800 g', 'fat', 6.7),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '6 x 800 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '6 x 800 g', 'ash', 2.5),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '6 x 800 g', 'moisture', 75),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '6 x 200 g', 'protein', 10.8),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '6 x 200 g', 'fat', 6.5),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '6 x 200 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '6 x 200 g', 'ash', 2.5),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '6 x 200 g', 'moisture', 75),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '12 x 800 g', 'protein', 10.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '12 x 800 g', 'fat', 5.3),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '12 x 800 g', 'fiber', 0.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '12 x 800 g', 'ash', 2.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '12 x 800 g', 'moisture', 80),
  ('Alsa Nature', 'JUNIOR Kip met pastinaak & appel', '6 x 400 g', 'protein', 10.4),
  ('Alsa Nature', 'JUNIOR Kip met pastinaak & appel', '6 x 400 g', 'fat', 5.4),
  ('Alsa Nature', 'JUNIOR Kip met pastinaak & appel', '6 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUNIOR Kip met pastinaak & appel', '6 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'JUNIOR Kip met pastinaak & appel', '6 x 400 g', 'moisture', 80),
  ('Alsa Nature', 'JUNIOR Kip met pastinaak & appel', '6 x 400 g', 'calcium', 0.25),
  ('Alsa Nature', 'JUNIOR Kip met pastinaak & appel', '6 x 400 g', 'phosphorus', 0.2),
  ('Alsa Nature', 'JUNIOR Eend met abrikoos', '12 x 400 g', 'protein', 10.8),
  ('Alsa Nature', 'JUNIOR Eend met abrikoos', '12 x 400 g', 'fat', 7.1),
  ('Alsa Nature', 'JUNIOR Eend met abrikoos', '12 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUNIOR Eend met abrikoos', '12 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'JUNIOR Eend met abrikoos', '12 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'JUNIOR Eend met abrikoos', '12 x 400 g', 'calcium', 0.27),
  ('Alsa Nature', 'JUNIOR Eend met abrikoos', '12 x 400 g', 'phosphorus', 0.24),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '120 x 400 g', 'protein', 10.2),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '120 x 400 g', 'fat', 5.6),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '120 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '120 x 400 g', 'ash', 2.4),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '120 x 400 g', 'moisture', 78),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '120 x 800 g', 'protein', 10.2),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '120 x 800 g', 'fat', 5.6),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '120 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '120 x 800 g', 'ash', 2.4),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '120 x 800 g', 'moisture', 78),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '12 x 800 g', 'protein', 11.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '12 x 800 g', 'fat', 5.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '12 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '12 x 800 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '12 x 800 g', 'moisture', 77),
  ('Alsa Nature', 'BIO Rund met aardappel en rode bieten', '6 x 400 g', 'protein', 10.8),
  ('Alsa Nature', 'BIO Rund met aardappel en rode bieten', '6 x 400 g', 'fat', 7.3),
  ('Alsa Nature', 'BIO Rund met aardappel en rode bieten', '6 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'BIO Rund met aardappel en rode bieten', '6 x 400 g', 'ash', 2.1),
  ('Alsa Nature', 'BIO Rund met aardappel en rode bieten', '6 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '200 g', 'protein', 10.8),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '200 g', 'fat', 6.5),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '200 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '200 g', 'ash', 2.5),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '200 g', 'moisture', 75),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '12 x 200 g', 'protein', 10.8),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '12 x 200 g', 'fat', 6.5),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '12 x 200 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '12 x 200 g', 'ash', 2.5),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '12 x 200 g', 'moisture', 75),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '60 x 400 g', 'protein', 10.6),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '60 x 400 g', 'fat', 6.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '60 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '60 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '60 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'SINGLE Gans puur', '120 x 800 g', 'protein', 10.2),
  ('Alsa Nature', 'SINGLE Gans puur', '120 x 800 g', 'fat', 4.9),
  ('Alsa Nature', 'SINGLE Gans puur', '120 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Gans puur', '120 x 800 g', 'ash', 2.2),
  ('Alsa Nature', 'SINGLE Gans puur', '120 x 800 g', 'moisture', 79),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '30 x 400 g', 'protein', 10.6),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '30 x 400 g', 'fat', 6.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '30 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '30 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '30 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '120 x 800 g', 'protein', 10.6),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '120 x 800 g', 'fat', 6.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '120 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '120 x 800 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '120 x 800 g', 'moisture', 75),
  ('Alsa Nature', 'SINGLE Gans puur', '60 x 400 g', 'protein', 10.2),
  ('Alsa Nature', 'SINGLE Gans puur', '60 x 400 g', 'fat', 4.9),
  ('Alsa Nature', 'SINGLE Gans puur', '60 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Gans puur', '60 x 400 g', 'ash', 2.2),
  ('Alsa Nature', 'SINGLE Gans puur', '60 x 400 g', 'moisture', 79),
  ('Alsa Nature', 'JUBILEUM Rund', '6 x 800 g', 'protein', 10.8),
  ('Alsa Nature', 'JUBILEUM Rund', '6 x 800 g', 'fat', 9),
  ('Alsa Nature', 'JUBILEUM Rund', '6 x 800 g', 'fiber', 0.3),
  ('Alsa Nature', 'JUBILEUM Rund', '6 x 800 g', 'ash', 2.2),
  ('Alsa Nature', 'JUBILEUM Rund', '6 x 800 g', 'moisture', 74),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '6 x 400 g', 'protein', 10.2),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '6 x 400 g', 'fat', 5.4),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '6 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '6 x 400 g', 'ash', 3.2),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '6 x 400 g', 'moisture', 78),
  ('Alsa Nature', 'SINGLE Gans puur', '90 x 800 g', 'protein', 10.2),
  ('Alsa Nature', 'SINGLE Gans puur', '90 x 800 g', 'fat', 4.9),
  ('Alsa Nature', 'SINGLE Gans puur', '90 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Gans puur', '90 x 800 g', 'ash', 2.2),
  ('Alsa Nature', 'SINGLE Gans puur', '90 x 800 g', 'moisture', 79),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '6 x 800 g', 'protein', 10.2),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '6 x 800 g', 'fat', 5.4),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '6 x 800 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '6 x 800 g', 'ash', 3.2),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '6 x 800 g', 'moisture', 78),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '60 x 800 g', 'protein', 10.6),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '60 x 800 g', 'fat', 6.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '60 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '60 x 800 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '60 x 800 g', 'moisture', 75),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '6 x 200 g', 'protein', 11),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '6 x 200 g', 'fat', 7.3),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '6 x 200 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '6 x 200 g', 'ash', 2),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '6 x 200 g', 'moisture', 75),
  ('Alsa Nature', 'JUBILEUM Wild', '400 g', 'protein', 10.5),
  ('Alsa Nature', 'JUBILEUM Wild', '400 g', 'fat', 6.5),
  ('Alsa Nature', 'JUBILEUM Wild', '400 g', 'fiber', 0.3),
  ('Alsa Nature', 'JUBILEUM Wild', '400 g', 'ash', 2.8),
  ('Alsa Nature', 'JUBILEUM Wild', '400 g', 'moisture', 78),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '200 g', 'protein', 11),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '200 g', 'fat', 7.3),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '200 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '200 g', 'ash', 2),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '200 g', 'moisture', 75),
  ('Alsa Nature', 'JUBILEUM Wild', '12 x 400 g', 'protein', 10.5),
  ('Alsa Nature', 'JUBILEUM Wild', '12 x 400 g', 'fat', 6.5),
  ('Alsa Nature', 'JUBILEUM Wild', '12 x 400 g', 'fiber', 0.3),
  ('Alsa Nature', 'JUBILEUM Wild', '12 x 400 g', 'ash', 2.8),
  ('Alsa Nature', 'JUBILEUM Wild', '12 x 400 g', 'moisture', 78),
  ('Alsa Nature', 'SINGLE Gans puur', '6 x 400 g', 'protein', 10.2),
  ('Alsa Nature', 'SINGLE Gans puur', '6 x 400 g', 'fat', 4.9),
  ('Alsa Nature', 'SINGLE Gans puur', '6 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Gans puur', '6 x 400 g', 'ash', 2.2),
  ('Alsa Nature', 'SINGLE Gans puur', '6 x 400 g', 'moisture', 79),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '400 g', 'protein', 11),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '400 g', 'fat', 7.3),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '400 g', 'fiber', 0.3),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '400 g', 'ash', 1.8),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '400 g', 'moisture', 74),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '6 x 400 g', 'protein', 10.7),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '6 x 400 g', 'fat', 7),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '6 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '6 x 400 g', 'ash', 2.2),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '6 x 400 g', 'moisture', 76),
  ('Alsa Nature', 'SINGLE Gans puur', '400 g', 'protein', 10.2),
  ('Alsa Nature', 'SINGLE Gans puur', '400 g', 'fat', 4.9),
  ('Alsa Nature', 'SINGLE Gans puur', '400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Gans puur', '400 g', 'ash', 2.2),
  ('Alsa Nature', 'SINGLE Gans puur', '400 g', 'moisture', 79),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '800 g', 'protein', 11),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '800 g', 'fat', 7.3),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '800 g', 'fiber', 0.3),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '800 g', 'ash', 1.8),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '800 g', 'moisture', 74),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '800 g', 'protein', 11.2),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '800 g', 'fat', 7.3),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '800 g', 'fiber', 0.5),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '800 g', 'ash', 1.8),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '800 g', 'moisture', 75),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '800 g', 'protein', 10.8),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '800 g', 'fat', 7.2),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '800 g', 'ash', 2.1),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '800 g', 'moisture', 75),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '6 x 400 g', 'protein', 10.8),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '6 x 400 g', 'fat', 7.1),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '6 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '6 x 400 g', 'ash', 2),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '6 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '800 g', 'protein', 10.2),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '800 g', 'fat', 5.4),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '800 g', 'fiber', 0.5),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '800 g', 'ash', 2.4),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '800 g', 'moisture', 79),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '800 g', 'protein', 10.8),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '800 g', 'fat', 7.1),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '800 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '800 g', 'ash', 2),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '800 g', 'moisture', 75),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '6 x 800 g', 'protein', 11),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '6 x 800 g', 'fat', 7),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '6 x 800 g', 'fiber', 0.3),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '6 x 800 g', 'ash', 2.3),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '6 x 800 g', 'moisture', 77),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '12 x 800 g', 'protein', 10.4),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '12 x 800 g', 'fat', 5.2),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '12 x 800 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '12 x 800 g', 'ash', 2),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '12 x 800 g', 'moisture', 80),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '12 x 200 g', 'protein', 10.4),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '12 x 200 g', 'fat', 5.2),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '12 x 200 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '12 x 200 g', 'ash', 2),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '12 x 200 g', 'moisture', 80),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '6 x 400 g', 'protein', 10.8),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '6 x 400 g', 'fat', 6.5),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '6 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '6 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '6 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '800 g', 'protein', 10.8),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '800 g', 'fat', 6.5),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '800 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '800 g', 'ash', 2.5),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '800 g', 'moisture', 75),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '12 x 400 g', 'protein', 10.4),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '12 x 400 g', 'fat', 5.2),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '12 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '12 x 400 g', 'ash', 2),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '12 x 400 g', 'moisture', 80),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '12 x 400 g', 'protein', 10.6),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '12 x 400 g', 'fat', 7),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '12 x 400 g', 'fiber', 0.3),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '12 x 400 g', 'ash', 2.6),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '12 x 400 g', 'moisture', 77),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '800 g', 'protein', 10.4),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '800 g', 'fat', 5.2),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '800 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '800 g', 'ash', 2),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '800 g', 'moisture', 80),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '12 x 400 g', 'protein', 10.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '12 x 400 g', 'fat', 5.3),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '12 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '12 x 400 g', 'ash', 2.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '12 x 400 g', 'moisture', 80),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '400 g', 'protein', 11.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '400 g', 'fat', 5.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '400 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '400 g', 'moisture', 77),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '200 g', 'protein', 10.4),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '200 g', 'fat', 5.2),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '200 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '200 g', 'ash', 2),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '200 g', 'moisture', 80),
  ('Alsa Nature', 'JUNIOR Kip met pastinaak & appel', '400 g', 'protein', 10.4),
  ('Alsa Nature', 'JUNIOR Kip met pastinaak & appel', '400 g', 'fat', 5.4),
  ('Alsa Nature', 'JUNIOR Kip met pastinaak & appel', '400 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUNIOR Kip met pastinaak & appel', '400 g', 'ash', 2.5),
  ('Alsa Nature', 'JUNIOR Kip met pastinaak & appel', '400 g', 'moisture', 80),
  ('Alsa Nature', 'JUNIOR Kip met pastinaak & appel', '400 g', 'calcium', 0.25),
  ('Alsa Nature', 'JUNIOR Kip met pastinaak & appel', '400 g', 'phosphorus', 0.2),
  ('Alsa Nature', 'JUNIOR Eend met abrikoos', '400 g', 'protein', 10.8),
  ('Alsa Nature', 'JUNIOR Eend met abrikoos', '400 g', 'fat', 7.1),
  ('Alsa Nature', 'JUNIOR Eend met abrikoos', '400 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUNIOR Eend met abrikoos', '400 g', 'ash', 2.5),
  ('Alsa Nature', 'JUNIOR Eend met abrikoos', '400 g', 'moisture', 75),
  ('Alsa Nature', 'JUNIOR Eend met abrikoos', '400 g', 'calcium', 0.27),
  ('Alsa Nature', 'JUNIOR Eend met abrikoos', '400 g', 'phosphorus', 0.24),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '400 g', 'protein', 10.6),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '400 g', 'fat', 6),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '400 g', 'fiber', 0.5),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '400 g', 'ash', 2),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '400 g', 'moisture', 76),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '6 x 400 g', 'protein', 10.6),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '6 x 400 g', 'fat', 6.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '6 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '6 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '6 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '12 x 750 g', 'protein', 5.5),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '12 x 750 g', 'fat', 5),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '12 x 750 g', 'fiber', 1.5),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '12 x 750 g', 'ash', 2.5),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '12 x 750 g', 'moisture', 80),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '6 x 800 g', 'protein', 11.5),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '6 x 800 g', 'fat', 4.4),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '6 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '6 x 800 g', 'ash', 2.5),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '6 x 800 g', 'moisture', 80),
  ('Alsa Nature', 'SIMPLE Rund puur', '6 x 400 g', 'protein', 11.1),
  ('Alsa Nature', 'SIMPLE Rund puur', '6 x 400 g', 'fat', 7.2),
  ('Alsa Nature', 'SIMPLE Rund puur', '6 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SIMPLE Rund puur', '6 x 400 g', 'ash', 2.3),
  ('Alsa Nature', 'SIMPLE Rund puur', '6 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'SIMPLE Rund puur', '800 g', 'protein', 11.1),
  ('Alsa Nature', 'SIMPLE Rund puur', '800 g', 'fat', 7.2),
  ('Alsa Nature', 'SIMPLE Rund puur', '800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SIMPLE Rund puur', '800 g', 'ash', 2.3),
  ('Alsa Nature', 'SIMPLE Rund puur', '800 g', 'moisture', 75),
  ('Alsa Nature', 'SIMPLE Rund puur', '12 x 400 g', 'protein', 11.1),
  ('Alsa Nature', 'SIMPLE Rund puur', '12 x 400 g', 'fat', 7.2),
  ('Alsa Nature', 'SIMPLE Rund puur', '12 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SIMPLE Rund puur', '12 x 400 g', 'ash', 2.3),
  ('Alsa Nature', 'SIMPLE Rund puur', '12 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '6 x 750 g', 'protein', 5.5),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '6 x 750 g', 'fat', 5),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '6 x 750 g', 'fiber', 1.5),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '6 x 750 g', 'ash', 2.5),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '6 x 750 g', 'moisture', 80),
  ('Alsa Nature', 'SIMPLE Rund puur', '400 g', 'protein', 11.1),
  ('Alsa Nature', 'SIMPLE Rund puur', '400 g', 'fat', 7.2),
  ('Alsa Nature', 'SIMPLE Rund puur', '400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SIMPLE Rund puur', '400 g', 'ash', 2.3),
  ('Alsa Nature', 'SIMPLE Rund puur', '400 g', 'moisture', 75),
  ('Alsa Nature', 'SIMPLE Wild puur', '12 x 800 g', 'protein', 10.8),
  ('Alsa Nature', 'SIMPLE Wild puur', '12 x 800 g', 'fat', 6.3),
  ('Alsa Nature', 'SIMPLE Wild puur', '12 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SIMPLE Wild puur', '12 x 800 g', 'ash', 2.5),
  ('Alsa Nature', 'SIMPLE Wild puur', '12 x 800 g', 'moisture', 77),
  ('Alsa Nature', 'SIMPLE Wild puur', '6 x 800 g', 'protein', 10.8),
  ('Alsa Nature', 'SIMPLE Wild puur', '6 x 800 g', 'fat', 6.3),
  ('Alsa Nature', 'SIMPLE Wild puur', '6 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SIMPLE Wild puur', '6 x 800 g', 'ash', 2.5),
  ('Alsa Nature', 'SIMPLE Wild puur', '6 x 800 g', 'moisture', 77),
  ('Alsa Nature', 'SIMPLE Rund puur', '6 x 800 g', 'protein', 11.1),
  ('Alsa Nature', 'SIMPLE Rund puur', '6 x 800 g', 'fat', 7.2),
  ('Alsa Nature', 'SIMPLE Rund puur', '6 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SIMPLE Rund puur', '6 x 800 g', 'ash', 2.3),
  ('Alsa Nature', 'SIMPLE Rund puur', '6 x 800 g', 'moisture', 75),
  ('Alsa Nature', 'SIMPLE Rund puur', '12 x 800 g', 'protein', 11.1),
  ('Alsa Nature', 'SIMPLE Rund puur', '12 x 800 g', 'fat', 7.2),
  ('Alsa Nature', 'SIMPLE Rund puur', '12 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SIMPLE Rund puur', '12 x 800 g', 'ash', 2.3),
  ('Alsa Nature', 'SIMPLE Rund puur', '12 x 800 g', 'moisture', 75),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '30 x 800 g', 'protein', 12.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '30 x 800 g', 'fat', 4.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '30 x 800 g', 'fiber', 0.6),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '30 x 800 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '30 x 800 g', 'moisture', 78),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '60 x 800 g', 'protein', 12.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '60 x 800 g', 'fat', 4.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '60 x 800 g', 'fiber', 0.6),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '60 x 800 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '60 x 800 g', 'moisture', 78),
  ('Alsa Nature', 'JUBILEUM Kip', '6 x 800 g', 'protein', 10.3),
  ('Alsa Nature', 'JUBILEUM Kip', '6 x 800 g', 'fat', 5.2),
  ('Alsa Nature', 'JUBILEUM Kip', '6 x 800 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUBILEUM Kip', '6 x 800 g', 'ash', 2.5),
  ('Alsa Nature', 'JUBILEUM Kip', '6 x 800 g', 'moisture', 80),
  ('Alsa Nature', 'JUBILEUM Rund', '400 g', 'protein', 10.8),
  ('Alsa Nature', 'JUBILEUM Rund', '400 g', 'fat', 9),
  ('Alsa Nature', 'JUBILEUM Rund', '400 g', 'fiber', 0.3),
  ('Alsa Nature', 'JUBILEUM Rund', '400 g', 'ash', 2.2),
  ('Alsa Nature', 'JUBILEUM Rund', '400 g', 'moisture', 74),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '400 g', 'protein', 10.2),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '400 g', 'fat', 5.4),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '400 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '400 g', 'ash', 3.2),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '400 g', 'moisture', 78),
  ('Alsa Nature', 'JUBILEUM Rund', '6 x 400 g', 'protein', 10.8),
  ('Alsa Nature', 'JUBILEUM Rund', '6 x 400 g', 'fat', 9),
  ('Alsa Nature', 'JUBILEUM Rund', '6 x 400 g', 'fiber', 0.3),
  ('Alsa Nature', 'JUBILEUM Rund', '6 x 400 g', 'ash', 2.2),
  ('Alsa Nature', 'JUBILEUM Rund', '6 x 400 g', 'moisture', 74),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '400 g', 'protein', 10.8),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '400 g', 'fat', 6.6),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '400 g', 'fiber', 0.7),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '400 g', 'ash', 1.9),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '400 g', 'moisture', 77),
  ('Alsa Nature', '4-SEASONS Herfstmenu Wild & Hert met zoete aardappel', '6 x 400 g', 'protein', 10.5),
  ('Alsa Nature', '4-SEASONS Herfstmenu Wild & Hert met zoete aardappel', '6 x 400 g', 'fat', 5.8),
  ('Alsa Nature', '4-SEASONS Herfstmenu Wild & Hert met zoete aardappel', '6 x 400 g', 'ash', 3),
  ('Alsa Nature', '4-SEASONS Herfstmenu Wild & Hert met zoete aardappel', '6 x 400 g', 'moisture', 77),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '90 x 400 g', 'protein', 11.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '90 x 400 g', 'fat', 5.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '90 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '90 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '90 x 400 g', 'moisture', 77),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '800 g', 'protein', 10.4),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '800 g', 'fat', 5.3),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '800 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '800 g', 'ash', 2.5),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '800 g', 'moisture', 80),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '6 x 800 g', 'protein', 10.8),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '6 x 800 g', 'fat', 6.6),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '6 x 800 g', 'fiber', 0.7),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '6 x 800 g', 'ash', 1.9),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '6 x 800 g', 'moisture', 77),
  ('Alsa Nature', 'JUBILEUM Wild', '6 x 800 g', 'protein', 10.5),
  ('Alsa Nature', 'JUBILEUM Wild', '6 x 800 g', 'fat', 6.5),
  ('Alsa Nature', 'JUBILEUM Wild', '6 x 800 g', 'fiber', 0.3),
  ('Alsa Nature', 'JUBILEUM Wild', '6 x 800 g', 'ash', 2.8),
  ('Alsa Nature', 'JUBILEUM Wild', '6 x 800 g', 'moisture', 78),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '12 x 800 g', 'protein', 10.8),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '12 x 800 g', 'fat', 6.6),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '12 x 800 g', 'fiber', 0.7),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '12 x 800 g', 'ash', 1.9),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '12 x 800 g', 'moisture', 77),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '6 x 200 g', 'protein', 10.8),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '6 x 200 g', 'fat', 6.6),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '6 x 200 g', 'fiber', 0.7),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '6 x 200 g', 'ash', 1.9),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '6 x 200 g', 'moisture', 77),
  ('Alsa Nature', '4-SEASONS Herfstmenu Wild & Hert met zoete aardappel', '12 x 400 g', 'protein', 10.5),
  ('Alsa Nature', '4-SEASONS Herfstmenu Wild & Hert met zoete aardappel', '12 x 400 g', 'fat', 5.8),
  ('Alsa Nature', '4-SEASONS Herfstmenu Wild & Hert met zoete aardappel', '12 x 400 g', 'ash', 3),
  ('Alsa Nature', '4-SEASONS Herfstmenu Wild & Hert met zoete aardappel', '12 x 400 g', 'moisture', 77),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '12 x 400 g', 'protein', 11),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '12 x 400 g', 'fat', 7.3),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '12 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '12 x 400 g', 'ash', 2),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '12 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '400 g', 'protein', 10.7),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '400 g', 'fat', 7),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '400 g', 'fiber', 0.5),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '400 g', 'ash', 2.2),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '400 g', 'moisture', 76),
  ('Alsa Nature', 'Speciaal Nierdieet', '6 x 400 g', 'protein', 6),
  ('Alsa Nature', 'Speciaal Nierdieet', '6 x 400 g', 'fat', 6.7),
  ('Alsa Nature', 'Speciaal Nierdieet', '6 x 400 g', 'fiber', 1.4),
  ('Alsa Nature', 'Speciaal Nierdieet', '6 x 400 g', 'ash', 2.1),
  ('Alsa Nature', 'Speciaal Nierdieet', '6 x 400 g', 'moisture', 71),
  ('Alsa Nature', 'Speciaal Nierdieet', '6 x 400 g', 'calcium', 0.17),
  ('Alsa Nature', 'Speciaal Nierdieet', '6 x 400 g', 'phosphorus', 0.1),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '6 x 400 g', 'protein', 11.2),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '6 x 400 g', 'fat', 7.3),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '6 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '6 x 400 g', 'ash', 1.8),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '6 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'Speciaal Light-menu', '6 x 400 g', 'protein', 10.1),
  ('Alsa Nature', 'Speciaal Light-menu', '6 x 400 g', 'fat', 2.2),
  ('Alsa Nature', 'Speciaal Light-menu', '6 x 400 g', 'fiber', 2),
  ('Alsa Nature', 'Speciaal Light-menu', '6 x 400 g', 'ash', 2.4),
  ('Alsa Nature', 'Speciaal Light-menu', '6 x 400 g', 'moisture', 79),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '12 x 400 g', 'protein', 10.8),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '12 x 400 g', 'fat', 7.2),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '12 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '12 x 400 g', 'ash', 2.1),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '12 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '6 x 800 g', 'protein', 11),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '6 x 800 g', 'fat', 7.3),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '6 x 800 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '6 x 800 g', 'ash', 2),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '6 x 800 g', 'moisture', 75),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '200 g', 'protein', 11.2),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '200 g', 'fat', 7.3),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '200 g', 'fiber', 0.5),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '200 g', 'ash', 1.8),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '200 g', 'moisture', 75),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '12 x 800 g', 'protein', 10.2),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '12 x 800 g', 'fat', 5.6),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '12 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '12 x 800 g', 'ash', 2.4),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '12 x 800 g', 'moisture', 78),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '400 g', 'protein', 10.2),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '400 g', 'fat', 5.6),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '400 g', 'ash', 2.4),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '400 g', 'moisture', 78),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '400 g', 'protein', 10.4),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '400 g', 'fat', 5.2),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '400 g', 'fiber', 0.5),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '400 g', 'ash', 2.5),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '400 g', 'moisture', 80),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '6 x 800 g', 'protein', 10.2),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '6 x 800 g', 'fat', 5.6),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '6 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '6 x 800 g', 'ash', 2.4),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '6 x 800 g', 'moisture', 78),
  ('Alsa Nature', 'Pens worst', '6 x 800 g', 'protein', 11.8),
  ('Alsa Nature', 'Pens worst', '6 x 800 g', 'fat', 6.8),
  ('Alsa Nature', 'Pens worst', '6 x 800 g', 'fiber', 0.6),
  ('Alsa Nature', 'Pens worst', '6 x 800 g', 'ash', 1.8),
  ('Alsa Nature', 'Pens worst', '6 x 800 g', 'moisture', 76),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '30 x 300 g', 'protein', 10.5),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '30 x 300 g', 'fat', 8),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '30 x 300 g', 'fiber', 0.3),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '30 x 300 g', 'ash', 3),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '30 x 300 g', 'moisture', 76),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '60 x 300 g', 'protein', 10.5),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '60 x 300 g', 'fat', 8),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '60 x 300 g', 'fiber', 0.3),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '60 x 300 g', 'ash', 3),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '60 x 300 g', 'moisture', 76),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '12 x 300 g', 'protein', 10.4),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '12 x 300 g', 'fat', 8),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '12 x 300 g', 'fiber', 0.6),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '12 x 300 g', 'ash', 2.6),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '12 x 300 g', 'moisture', 76),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '90 x 300 g', 'protein', 10.4),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '90 x 300 g', 'fat', 8),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '90 x 300 g', 'fiber', 0.6),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '90 x 300 g', 'ash', 2.6),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '90 x 300 g', 'moisture', 76),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '90 x 300 g', 'protein', 10),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '90 x 300 g', 'fat', 4.9),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '90 x 300 g', 'fiber', 0.5),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '90 x 300 g', 'ash', 2.5),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '90 x 300 g', 'moisture', 77),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '6 x 300 g', 'protein', 10.4),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '6 x 300 g', 'fat', 8),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '6 x 300 g', 'fiber', 0.6),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '6 x 300 g', 'ash', 2.6),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '6 x 300 g', 'moisture', 76),
  ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', '30 x 500 g', 'protein', 10.7),
  ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', '30 x 500 g', 'fat', 8),
  ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', '30 x 500 g', 'ash', 2.6),
  ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', '30 x 500 g', 'moisture', 75),
  ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', '6 x 500 g', 'protein', 10.7),
  ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', '6 x 500 g', 'fat', 7),
  ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', '6 x 500 g', 'ash', 3),
  ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', '6 x 500 g', 'moisture', 76),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '60 x 300 g', 'protein', 10.4),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '60 x 300 g', 'fat', 8),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '60 x 300 g', 'fiber', 0.6),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '60 x 300 g', 'ash', 2.6),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '60 x 300 g', 'moisture', 76),
  ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', '60 x 500 g', 'protein', 10.7),
  ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', '60 x 500 g', 'fat', 8),
  ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', '60 x 500 g', 'ash', 2.6),
  ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', '60 x 500 g', 'moisture', 75),
  ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', '90 x 500 g', 'protein', 10.7),
  ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', '90 x 500 g', 'fat', 8),
  ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', '90 x 500 g', 'ash', 2.6),
  ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', '90 x 500 g', 'moisture', 75),
  ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', '6 x 500 g', 'protein', 10.2),
  ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', '6 x 500 g', 'fat', 5),
  ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', '6 x 500 g', 'ash', 2.5),
  ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', '6 x 500 g', 'moisture', 79),
  ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', '120 x 500 g', 'protein', 10.7),
  ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', '120 x 500 g', 'fat', 8),
  ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', '120 x 500 g', 'ash', 2.6),
  ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', '120 x 500 g', 'moisture', 75),
  ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', '60 x 500 g', 'protein', 10.2),
  ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', '60 x 500 g', 'fat', 5),
  ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', '60 x 500 g', 'ash', 2.5),
  ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', '60 x 500 g', 'moisture', 79),
  ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', '120 x 500 g', 'protein', 10.7),
  ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', '120 x 500 g', 'fat', 8),
  ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', '120 x 500 g', 'ash', 2.6),
  ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', '120 x 500 g', 'moisture', 75),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '12 x 400 g', 'protein', 11.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '12 x 400 g', 'fat', 5.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '12 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '12 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '12 x 400 g', 'moisture', 77),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '400 g', 'protein', 10.5),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '400 g', 'fat', 6.7),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '400 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '400 g', 'ash', 2.5),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '400 g', 'moisture', 75),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '12 x 800 g', 'protein', 10.8),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '12 x 800 g', 'fat', 6.5),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '12 x 800 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '12 x 800 g', 'ash', 2.5),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '12 x 800 g', 'moisture', 75),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '12 x 400 g', 'protein', 10.8),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '12 x 400 g', 'fat', 6.5),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '12 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '12 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '12 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'JUNIOR Wild met aardappel', '6 x 400 g', 'protein', 10.4),
  ('Alsa Nature', 'JUNIOR Wild met aardappel', '6 x 400 g', 'fat', 6.8),
  ('Alsa Nature', 'JUNIOR Wild met aardappel', '6 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUNIOR Wild met aardappel', '6 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'JUNIOR Wild met aardappel', '6 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'JUNIOR Wild met aardappel', '6 x 400 g', 'calcium', 0.24),
  ('Alsa Nature', 'JUNIOR Wild met aardappel', '6 x 400 g', 'phosphorus', 0.22),
  ('Alsa Nature', 'JUNIOR Wild met aardappel', '400 g', 'protein', 10.4),
  ('Alsa Nature', 'JUNIOR Wild met aardappel', '400 g', 'fat', 6.8),
  ('Alsa Nature', 'JUNIOR Wild met aardappel', '400 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUNIOR Wild met aardappel', '400 g', 'ash', 2.5),
  ('Alsa Nature', 'JUNIOR Wild met aardappel', '400 g', 'moisture', 75),
  ('Alsa Nature', 'JUNIOR Wild met aardappel', '400 g', 'calcium', 0.24),
  ('Alsa Nature', 'JUNIOR Wild met aardappel', '400 g', 'phosphorus', 0.22),
  ('Alsa Nature', 'Speciaal Single-sensitief', '6 x 400 g', 'protein', 8.4),
  ('Alsa Nature', 'Speciaal Single-sensitief', '6 x 400 g', 'fat', 4.8),
  ('Alsa Nature', 'Speciaal Single-sensitief', '6 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'Speciaal Single-sensitief', '6 x 400 g', 'ash', 2.2),
  ('Alsa Nature', 'Speciaal Single-sensitief', '6 x 400 g', 'moisture', 81),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '12 x 400 g', 'protein', 10.6),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '12 x 400 g', 'fat', 6.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '12 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '12 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '12 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'FINEST Runder-spiervlees met aardperen, venkel en lijnolie', '12 x 400 g', 'protein', 11),
  ('Alsa Nature', 'FINEST Runder-spiervlees met aardperen, venkel en lijnolie', '12 x 400 g', 'fat', 6.4),
  ('Alsa Nature', 'FINEST Runder-spiervlees met aardperen, venkel en lijnolie', '12 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'FINEST Runder-spiervlees met aardperen, venkel en lijnolie', '12 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'FINEST Runder-spiervlees met aardperen, venkel en lijnolie', '12 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '30 x 800 g', 'protein', 10.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '30 x 800 g', 'fat', 5.3),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '30 x 800 g', 'fiber', 0.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '30 x 800 g', 'ash', 2.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '30 x 800 g', 'moisture', 80),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '60 x 400 g', 'protein', 10.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '60 x 400 g', 'fat', 5.3),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '60 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '60 x 400 g', 'ash', 2.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '60 x 400 g', 'moisture', 80),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '6 x 400 g', 'protein', 10.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '6 x 400 g', 'fat', 5.3),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '6 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '6 x 400 g', 'ash', 2.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '6 x 400 g', 'moisture', 80),
  ('Alsa Nature', 'JUNIOR Lam met aardappel', '400 g', 'protein', 10.9),
  ('Alsa Nature', 'JUNIOR Lam met aardappel', '400 g', 'fat', 7.2),
  ('Alsa Nature', 'JUNIOR Lam met aardappel', '400 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUNIOR Lam met aardappel', '400 g', 'ash', 2.5),
  ('Alsa Nature', 'JUNIOR Lam met aardappel', '400 g', 'moisture', 75),
  ('Alsa Nature', 'JUNIOR Lam met aardappel', '400 g', 'calcium', 0.3),
  ('Alsa Nature', 'JUNIOR Lam met aardappel', '400 g', 'phosphorus', 0.28),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '60 x 400 g', 'protein', 11.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '60 x 400 g', 'fat', 5.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '60 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '60 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '60 x 400 g', 'moisture', 77),
  ('Alsa Nature', 'Speciaal Single-sensitief', '12 x 400 g', 'protein', 8.4),
  ('Alsa Nature', 'Speciaal Single-sensitief', '12 x 400 g', 'fat', 4.8),
  ('Alsa Nature', 'Speciaal Single-sensitief', '12 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'Speciaal Single-sensitief', '12 x 400 g', 'ash', 2.2),
  ('Alsa Nature', 'Speciaal Single-sensitief', '12 x 400 g', 'moisture', 81),
  ('Alsa Nature', 'SINGLE Gans puur', '120 x 400 g', 'protein', 10.2),
  ('Alsa Nature', 'SINGLE Gans puur', '120 x 400 g', 'fat', 4.9),
  ('Alsa Nature', 'SINGLE Gans puur', '120 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Gans puur', '120 x 400 g', 'ash', 2.2),
  ('Alsa Nature', 'SINGLE Gans puur', '120 x 400 g', 'moisture', 79),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '120 x 800 g', 'protein', 12.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '120 x 800 g', 'fat', 4.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '120 x 800 g', 'fiber', 0.6),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '120 x 800 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '120 x 800 g', 'moisture', 78),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '30 x 400 g', 'protein', 12.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '30 x 400 g', 'fat', 4.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '30 x 400 g', 'fiber', 0.6),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '30 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '30 x 400 g', 'moisture', 78),
  ('Alsa Nature', 'SINGLE Gans puur', '30 x 800 g', 'protein', 10.2),
  ('Alsa Nature', 'SINGLE Gans puur', '30 x 800 g', 'fat', 4.9),
  ('Alsa Nature', 'SINGLE Gans puur', '30 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Gans puur', '30 x 800 g', 'ash', 2.2),
  ('Alsa Nature', 'SINGLE Gans puur', '30 x 800 g', 'moisture', 79),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '60 x 800 g', 'protein', 10.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '60 x 800 g', 'fat', 5.3),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '60 x 800 g', 'fiber', 0.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '60 x 800 g', 'ash', 2.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '60 x 800 g', 'moisture', 80),
  ('Alsa Nature', 'JUBILEUM Lam', '6 x 800 g', 'protein', 10.6),
  ('Alsa Nature', 'JUBILEUM Lam', '6 x 800 g', 'fat', 8.5),
  ('Alsa Nature', 'JUBILEUM Lam', '6 x 800 g', 'fiber', 0.3),
  ('Alsa Nature', 'JUBILEUM Lam', '6 x 800 g', 'ash', 2.8),
  ('Alsa Nature', 'JUBILEUM Lam', '6 x 800 g', 'moisture', 75),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '30 x 800 g', 'protein', 10.2),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '30 x 800 g', 'fat', 5.6),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '30 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '30 x 800 g', 'ash', 2.4),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '30 x 800 g', 'moisture', 78),
  ('Alsa Nature', 'JUBILEUM Rund', '800 g', 'protein', 10.8),
  ('Alsa Nature', 'JUBILEUM Rund', '800 g', 'fat', 9),
  ('Alsa Nature', 'JUBILEUM Rund', '800 g', 'fiber', 0.3),
  ('Alsa Nature', 'JUBILEUM Rund', '800 g', 'ash', 2.2),
  ('Alsa Nature', 'JUBILEUM Rund', '800 g', 'moisture', 74),
  ('Alsa Nature', 'Speciaal Sensibel', '6 x 200 g', 'protein', 8.5),
  ('Alsa Nature', 'Speciaal Sensibel', '6 x 200 g', 'fat', 2.1),
  ('Alsa Nature', 'Speciaal Sensibel', '6 x 200 g', 'fiber', 0.6),
  ('Alsa Nature', 'Speciaal Sensibel', '6 x 200 g', 'ash', 2.2),
  ('Alsa Nature', 'Speciaal Sensibel', '6 x 200 g', 'moisture', 76),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '12 x 800 g', 'protein', 11),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '12 x 800 g', 'fat', 7.3),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '12 x 800 g', 'fiber', 0.3),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '12 x 800 g', 'ash', 1.8),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '12 x 800 g', 'moisture', 74),
  ('Alsa Nature', 'JUBILEUM Wild', '12 x 800 g', 'protein', 10.5),
  ('Alsa Nature', 'JUBILEUM Wild', '12 x 800 g', 'fat', 6.5),
  ('Alsa Nature', 'JUBILEUM Wild', '12 x 800 g', 'fiber', 0.3),
  ('Alsa Nature', 'JUBILEUM Wild', '12 x 800 g', 'ash', 2.8),
  ('Alsa Nature', 'JUBILEUM Wild', '12 x 800 g', 'moisture', 78),
  ('Alsa Nature', 'SINGLE Gans puur', '60 x 800 g', 'protein', 10.2),
  ('Alsa Nature', 'SINGLE Gans puur', '60 x 800 g', 'fat', 4.9),
  ('Alsa Nature', 'SINGLE Gans puur', '60 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Gans puur', '60 x 800 g', 'ash', 2.2),
  ('Alsa Nature', 'SINGLE Gans puur', '60 x 800 g', 'moisture', 79),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '12 x 800 g', 'protein', 10.7),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '12 x 800 g', 'fat', 7),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '12 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '12 x 800 g', 'ash', 2.2),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '12 x 800 g', 'moisture', 76),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '400 g', 'protein', 10.8),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '400 g', 'fat', 7.2),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '400 g', 'ash', 2.1),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '400 g', 'moisture', 75),
  ('Alsa Nature', 'SINGLE Gans puur', '12 x 400 g', 'protein', 10.2),
  ('Alsa Nature', 'SINGLE Gans puur', '12 x 400 g', 'fat', 4.9),
  ('Alsa Nature', 'SINGLE Gans puur', '12 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Gans puur', '12 x 400 g', 'ash', 2.2),
  ('Alsa Nature', 'SINGLE Gans puur', '12 x 400 g', 'moisture', 79),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '12 x 800 g', 'protein', 11.2),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '12 x 800 g', 'fat', 7.3),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '12 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '12 x 800 g', 'ash', 1.8),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '12 x 800 g', 'moisture', 75),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '6 x 800 g', 'protein', 10.8),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '6 x 800 g', 'fat', 7.2),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '6 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '6 x 800 g', 'ash', 2.1),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '6 x 800 g', 'moisture', 75),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '800 g', 'protein', 10.2),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '800 g', 'fat', 5.6),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '800 g', 'ash', 2.4),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '800 g', 'moisture', 78),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '12 x 400 g', 'protein', 10.2),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '12 x 400 g', 'fat', 5.6),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '12 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '12 x 400 g', 'ash', 2.4),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '12 x 400 g', 'moisture', 78),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '12 x 400 g', 'protein', 10.4),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '12 x 400 g', 'fat', 5.2),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '12 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '12 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '12 x 400 g', 'moisture', 80),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '12 x 800 g', 'protein', 10.4),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '12 x 800 g', 'fat', 5.2),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '12 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '12 x 800 g', 'ash', 2.5),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '12 x 800 g', 'moisture', 80),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '12 x 300 g', 'protein', 10.3),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '12 x 300 g', 'fat', 5.5),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '12 x 300 g', 'fiber', 0.5),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '12 x 300 g', 'ash', 2.5),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '12 x 300 g', 'moisture', 78),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '90 x 300 g', 'protein', 10.5),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '90 x 300 g', 'fat', 8),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '90 x 300 g', 'fiber', 0.3),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '90 x 300 g', 'ash', 3),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '90 x 300 g', 'moisture', 76),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '60 x 300 g', 'protein', 10.3),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '60 x 300 g', 'fat', 5.5),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '60 x 300 g', 'fiber', 0.5),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '60 x 300 g', 'ash', 2.5),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '60 x 300 g', 'moisture', 78),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '6 x 300 g', 'protein', 10),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '6 x 300 g', 'fat', 4.9),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '6 x 300 g', 'fiber', 0.5),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '6 x 300 g', 'ash', 2.5),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '6 x 300 g', 'moisture', 77),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '60 x 300 g', 'protein', 10),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '60 x 300 g', 'fat', 4.9),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '60 x 300 g', 'fiber', 0.5),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '60 x 300 g', 'ash', 2.5),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '60 x 300 g', 'moisture', 77),
  ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', '12 x 500 g', 'protein', 10.8),
  ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', '12 x 500 g', 'fat', 7),
  ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', '12 x 500 g', 'ash', 2.6),
  ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', '12 x 500 g', 'moisture', 76),
  ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', '6 x 500 g', 'protein', 10.8),
  ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', '6 x 500 g', 'fat', 7),
  ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', '6 x 500 g', 'ash', 2.6),
  ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', '6 x 500 g', 'moisture', 76),
  ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', '90 x 500 g', 'protein', 10.8),
  ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', '90 x 500 g', 'fat', 7),
  ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', '90 x 500 g', 'ash', 2.6),
  ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', '90 x 500 g', 'moisture', 76),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '6 x 400 g', 'protein', 10.6),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '6 x 400 g', 'fat', 6.2),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '6 x 400 g', 'fiber', 0.3),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '6 x 400 g', 'ash', 2.3),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '6 x 400 g', 'moisture', 76),
  ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', '60 x 500 g', 'protein', 10.8),
  ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', '60 x 500 g', 'fat', 7),
  ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', '60 x 500 g', 'ash', 2.6),
  ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', '60 x 500 g', 'moisture', 76),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '12 x 400 g', 'protein', 12.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '12 x 400 g', 'fat', 4.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '12 x 400 g', 'fiber', 0.6),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '12 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '12 x 400 g', 'moisture', 78),
  ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', '30 x 500 g', 'protein', 10.7),
  ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', '30 x 500 g', 'fat', 8),
  ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', '30 x 500 g', 'ash', 2.6),
  ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', '30 x 500 g', 'moisture', 75),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '6 x 400 g', 'protein', 12.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '6 x 400 g', 'fat', 4.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '6 x 400 g', 'fiber', 0.6),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '6 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '6 x 400 g', 'moisture', 78),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '1,5 kg', 'protein', 22),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '1,5 kg', 'fat', 12),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '1,5 kg', 'fiber', 1.8),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '1,5 kg', 'ash', 9),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '1,5 kg', 'moisture', 9),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '1,5 kg', 'calcium', 2.4),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '1,5 kg', 'phosphorus', 1.2),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '6 x 800 g', 'protein', 12.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '6 x 800 g', 'fat', 4.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '6 x 800 g', 'fiber', 0.6),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '6 x 800 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '6 x 800 g', 'moisture', 78),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '400 g', 'protein', 10.4),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '400 g', 'fat', 5.2),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '400 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '400 g', 'ash', 2),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '400 g', 'moisture', 80),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '400 g', 'protein', 10.2),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '400 g', 'fat', 5.4),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '400 g', 'fiber', 0.5),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '400 g', 'ash', 2.4),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '400 g', 'moisture', 79),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '6 x 200 g', 'protein', 10.4),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '6 x 200 g', 'fat', 5.2),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '6 x 200 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '6 x 200 g', 'ash', 2),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '6 x 200 g', 'moisture', 80),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '6 x 800 g', 'protein', 10.2),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '6 x 800 g', 'fat', 5.4),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '6 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '6 x 800 g', 'ash', 2.4),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '6 x 800 g', 'moisture', 79),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '12 x 800 g', 'protein', 10.8),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '12 x 800 g', 'fat', 7.1),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '12 x 800 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '12 x 800 g', 'ash', 2),
  ('Alsa Nature', 'Classic Kwartel met aardappel en koolrabi', '12 x 800 g', 'moisture', 75),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '6 x 800 g', 'protein', 10.4),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '6 x 800 g', 'fat', 5.2),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '6 x 800 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '6 x 800 g', 'ash', 2),
  ('Alsa Nature', 'Classic Struisvogel met aardappelen en broccoli', '6 x 800 g', 'moisture', 80),
  ('Alsa Nature', 'BIO Kip met rijst en jonge groenten', '400 g', 'protein', 10.8),
  ('Alsa Nature', 'BIO Kip met rijst en jonge groenten', '400 g', 'fat', 4.5),
  ('Alsa Nature', 'BIO Kip met rijst en jonge groenten', '400 g', 'fiber', 0.4),
  ('Alsa Nature', 'BIO Kip met rijst en jonge groenten', '400 g', 'ash', 2.3),
  ('Alsa Nature', 'BIO Kip met rijst en jonge groenten', '400 g', 'moisture', 77),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '6 x 800 g', 'protein', 11.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '6 x 800 g', 'fat', 5.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '6 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '6 x 800 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '6 x 800 g', 'moisture', 77),
  ('Alsa Nature', 'BIO Kip met rijst en jonge groenten', '6 x 400 g', 'protein', 10.8),
  ('Alsa Nature', 'BIO Kip met rijst en jonge groenten', '6 x 400 g', 'fat', 4.5),
  ('Alsa Nature', 'BIO Kip met rijst en jonge groenten', '6 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'BIO Kip met rijst en jonge groenten', '6 x 400 g', 'ash', 2.3),
  ('Alsa Nature', 'BIO Kip met rijst en jonge groenten', '6 x 400 g', 'moisture', 77),
  ('Alsa Nature', 'BIO Kip met rijst en jonge groenten', '12 x 400 g', 'protein', 10.8),
  ('Alsa Nature', 'BIO Kip met rijst en jonge groenten', '12 x 400 g', 'fat', 4.5),
  ('Alsa Nature', 'BIO Kip met rijst en jonge groenten', '12 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'BIO Kip met rijst en jonge groenten', '12 x 400 g', 'ash', 2.3),
  ('Alsa Nature', 'BIO Kip met rijst en jonge groenten', '12 x 400 g', 'moisture', 77),
  ('Alsa Nature', 'BIO Rund met aardappel en rode bieten', '400 g', 'protein', 10.8),
  ('Alsa Nature', 'BIO Rund met aardappel en rode bieten', '400 g', 'fat', 7.3),
  ('Alsa Nature', 'BIO Rund met aardappel en rode bieten', '400 g', 'fiber', 0.4),
  ('Alsa Nature', 'BIO Rund met aardappel en rode bieten', '400 g', 'ash', 2.1),
  ('Alsa Nature', 'BIO Rund met aardappel en rode bieten', '400 g', 'moisture', 75),
  ('Alsa Nature', 'VEGGIE Groentemaaltijd met Hüttenkäse, fruit en kruiden', '12 x 375 g', 'protein', 6.5),
  ('Alsa Nature', 'VEGGIE Groentemaaltijd met Hüttenkäse, fruit en kruiden', '12 x 375 g', 'fat', 6),
  ('Alsa Nature', 'VEGGIE Groentemaaltijd met Hüttenkäse, fruit en kruiden', '12 x 375 g', 'fiber', 1.2),
  ('Alsa Nature', 'VEGGIE Groentemaaltijd met Hüttenkäse, fruit en kruiden', '12 x 375 g', 'ash', 2.2),
  ('Alsa Nature', 'VEGGIE Groentemaaltijd met Hüttenkäse, fruit en kruiden', '12 x 375 g', 'moisture', 72),
  ('Alsa Nature', 'Speciaal Sensibel', '60 x 200 g', 'protein', 8.5),
  ('Alsa Nature', 'Speciaal Sensibel', '60 x 200 g', 'fat', 2.1),
  ('Alsa Nature', 'Speciaal Sensibel', '60 x 200 g', 'fiber', 0.6),
  ('Alsa Nature', 'Speciaal Sensibel', '60 x 200 g', 'ash', 2.2),
  ('Alsa Nature', 'Speciaal Sensibel', '60 x 200 g', 'moisture', 76),
  ('Alsa Nature', 'VEGGIE Groente-bijlage met fruit', '375 g', 'protein', 3.8),
  ('Alsa Nature', 'VEGGIE Groente-bijlage met fruit', '375 g', 'fat', 1.3),
  ('Alsa Nature', 'VEGGIE Groente-bijlage met fruit', '375 g', 'fiber', 1.1),
  ('Alsa Nature', 'VEGGIE Groente-bijlage met fruit', '375 g', 'ash', 0.3),
  ('Alsa Nature', 'VEGGIE Groente-bijlage met fruit', '375 g', 'moisture', 91),
  ('Alsa Nature', 'JUNIOR Kip & zalm met aardappel', '6 x 400 g', 'protein', 10.9),
  ('Alsa Nature', 'JUNIOR Kip & zalm met aardappel', '6 x 400 g', 'fat', 7.2),
  ('Alsa Nature', 'JUNIOR Kip & zalm met aardappel', '6 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUNIOR Kip & zalm met aardappel', '6 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'JUNIOR Kip & zalm met aardappel', '6 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'JUNIOR Kip & zalm met aardappel', '6 x 400 g', 'calcium', 0.28),
  ('Alsa Nature', 'JUNIOR Kip & zalm met aardappel', '6 x 400 g', 'phosphorus', 0.25),
  ('Alsa Nature', 'JUNIOR Kip & zalm met aardappel', '12 x 400 g', 'protein', 10.9),
  ('Alsa Nature', 'JUNIOR Kip & zalm met aardappel', '12 x 400 g', 'fat', 7.2),
  ('Alsa Nature', 'JUNIOR Kip & zalm met aardappel', '12 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUNIOR Kip & zalm met aardappel', '12 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'JUNIOR Kip & zalm met aardappel', '12 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'JUNIOR Kip & zalm met aardappel', '12 x 400 g', 'calcium', 0.28),
  ('Alsa Nature', 'JUNIOR Kip & zalm met aardappel', '12 x 400 g', 'phosphorus', 0.25),
  ('Alsa Nature', 'FINEST Runder-spiervlees met aardperen, venkel en lijnolie', '400 g', 'protein', 11),
  ('Alsa Nature', 'FINEST Runder-spiervlees met aardperen, venkel en lijnolie', '400 g', 'fat', 6.4),
  ('Alsa Nature', 'FINEST Runder-spiervlees met aardperen, venkel en lijnolie', '400 g', 'fiber', 0.5),
  ('Alsa Nature', 'FINEST Runder-spiervlees met aardperen, venkel en lijnolie', '400 g', 'ash', 2.5),
  ('Alsa Nature', 'FINEST Runder-spiervlees met aardperen, venkel en lijnolie', '400 g', 'moisture', 75),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '375 g', 'protein', 5.5),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '375 g', 'fat', 5),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '375 g', 'fiber', 1.5),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '375 g', 'ash', 2.5),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '375 g', 'moisture', 80),
  ('Alsa Nature', 'FINEST Kalkoen-spiervlees met zoete aardappel, mango & lijnolie', '6 x 400 g', 'protein', 10.9),
  ('Alsa Nature', 'FINEST Kalkoen-spiervlees met zoete aardappel, mango & lijnolie', '6 x 400 g', 'fat', 6.3),
  ('Alsa Nature', 'FINEST Kalkoen-spiervlees met zoete aardappel, mango & lijnolie', '6 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'FINEST Kalkoen-spiervlees met zoete aardappel, mango & lijnolie', '6 x 400 g', 'ash', 2.3),
  ('Alsa Nature', 'FINEST Kalkoen-spiervlees met zoete aardappel, mango & lijnolie', '6 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '12 x 375 g', 'protein', 5.5),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '12 x 375 g', 'fat', 5),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '12 x 375 g', 'fiber', 1.5),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '12 x 375 g', 'ash', 2.5),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '12 x 375 g', 'moisture', 80),
  ('Alsa Nature', 'FINEST Runder-spiervlees met aardperen, venkel en lijnolie', '6 x 400 g', 'protein', 11),
  ('Alsa Nature', 'FINEST Runder-spiervlees met aardperen, venkel en lijnolie', '6 x 400 g', 'fat', 6.4),
  ('Alsa Nature', 'FINEST Runder-spiervlees met aardperen, venkel en lijnolie', '6 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'FINEST Runder-spiervlees met aardperen, venkel en lijnolie', '6 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'FINEST Runder-spiervlees met aardperen, venkel en lijnolie', '6 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '12 x 400 g', 'protein', 11.5),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '12 x 400 g', 'fat', 4.4),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '12 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '12 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '12 x 400 g', 'moisture', 80),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '800 g', 'protein', 11.5),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '800 g', 'fat', 4.4),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '800 g', 'ash', 2.5),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '800 g', 'moisture', 80),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '12 x 800 g', 'protein', 11.5),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '12 x 800 g', 'fat', 4.4),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '12 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '12 x 800 g', 'ash', 2.5),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '12 x 800 g', 'moisture', 80),
  ('Alsa Nature', 'SIMPLE Wild puur', '400 g', 'protein', 10.8),
  ('Alsa Nature', 'SIMPLE Wild puur', '400 g', 'fat', 6.3),
  ('Alsa Nature', 'SIMPLE Wild puur', '400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SIMPLE Wild puur', '400 g', 'ash', 2.5),
  ('Alsa Nature', 'SIMPLE Wild puur', '400 g', 'moisture', 77),
  ('Alsa Nature', 'SIMPLE Wild puur', '800 g', 'protein', 10.8),
  ('Alsa Nature', 'SIMPLE Wild puur', '800 g', 'fat', 6.3),
  ('Alsa Nature', 'SIMPLE Wild puur', '800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SIMPLE Wild puur', '800 g', 'ash', 2.5),
  ('Alsa Nature', 'SIMPLE Wild puur', '800 g', 'moisture', 77),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '90 x 400 g', 'protein', 10.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '90 x 400 g', 'fat', 5.3),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '90 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '90 x 400 g', 'ash', 2.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '90 x 400 g', 'moisture', 80),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '120 x 400 g', 'protein', 10.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '120 x 400 g', 'fat', 5.3),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '120 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '120 x 400 g', 'ash', 2.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '120 x 400 g', 'moisture', 80),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '30 x 400 g', 'protein', 10.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '30 x 400 g', 'fat', 5.3),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '30 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '30 x 400 g', 'ash', 2.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '30 x 400 g', 'moisture', 80),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '30 x 400 g', 'protein', 10.8),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '30 x 400 g', 'fat', 7.2),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '30 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '30 x 400 g', 'ash', 2.1),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '30 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '90 x 400 g', 'protein', 10.8),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '90 x 400 g', 'fat', 7.2),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '90 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '90 x 400 g', 'ash', 2.1),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '90 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '30 x 800 g', 'protein', 10.8),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '30 x 800 g', 'fat', 7.2),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '30 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '30 x 800 g', 'ash', 2.1),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '30 x 800 g', 'moisture', 75),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '90 x 800 g', 'protein', 12.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '90 x 800 g', 'fat', 4.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '90 x 800 g', 'fiber', 0.6),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '90 x 800 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '90 x 800 g', 'moisture', 78),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '90 x 400 g', 'protein', 10.6),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '90 x 400 g', 'fat', 6.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '90 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '90 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '90 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '30 x 400 g', 'protein', 11.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '30 x 400 g', 'fat', 5.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '30 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '30 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '30 x 400 g', 'moisture', 77),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '60 x 800 g', 'protein', 10.2),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '60 x 800 g', 'fat', 5.6),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '60 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '60 x 800 g', 'ash', 2.4),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '60 x 800 g', 'moisture', 78),
  ('Alsa Nature', 'JUBILEUM Lam', '12 x 800 g', 'protein', 10.6),
  ('Alsa Nature', 'JUBILEUM Lam', '12 x 800 g', 'fat', 8.5),
  ('Alsa Nature', 'JUBILEUM Lam', '12 x 800 g', 'fiber', 0.3),
  ('Alsa Nature', 'JUBILEUM Lam', '12 x 800 g', 'ash', 2.8),
  ('Alsa Nature', 'JUBILEUM Lam', '12 x 800 g', 'moisture', 75),
  ('Alsa Nature', 'JUBILEUM Wild', '6 x 400 g', 'protein', 10.5),
  ('Alsa Nature', 'JUBILEUM Wild', '6 x 400 g', 'fat', 6.5),
  ('Alsa Nature', 'JUBILEUM Wild', '6 x 400 g', 'fiber', 0.3),
  ('Alsa Nature', 'JUBILEUM Wild', '6 x 400 g', 'ash', 2.8),
  ('Alsa Nature', 'JUBILEUM Wild', '6 x 400 g', 'moisture', 78),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '120 x 400 g', 'protein', 10.6),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '120 x 400 g', 'fat', 6.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '120 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '120 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '120 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'JUBILEUM Wild', '800 g', 'protein', 10.5),
  ('Alsa Nature', 'JUBILEUM Wild', '800 g', 'fat', 6.5),
  ('Alsa Nature', 'JUBILEUM Wild', '800 g', 'fiber', 0.3),
  ('Alsa Nature', 'JUBILEUM Wild', '800 g', 'ash', 2.8),
  ('Alsa Nature', 'JUBILEUM Wild', '800 g', 'moisture', 78),
  ('Alsa Nature', 'JUBILEUM Lam', '800 g', 'protein', 10.6),
  ('Alsa Nature', 'JUBILEUM Lam', '800 g', 'fat', 8.5),
  ('Alsa Nature', 'JUBILEUM Lam', '800 g', 'fiber', 0.3),
  ('Alsa Nature', 'JUBILEUM Lam', '800 g', 'ash', 2.8),
  ('Alsa Nature', 'JUBILEUM Lam', '800 g', 'moisture', 75),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '30 x 800 g', 'protein', 10.6),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '30 x 800 g', 'fat', 6.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '30 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '30 x 800 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '30 x 800 g', 'moisture', 75),
  ('Alsa Nature', '4-SEASONS Zomermenu Rund & Zalm met mango en meloen', '400 g', 'protein', 10.5),
  ('Alsa Nature', '4-SEASONS Zomermenu Rund & Zalm met mango en meloen', '400 g', 'fat', 9),
  ('Alsa Nature', '4-SEASONS Zomermenu Rund & Zalm met mango en meloen', '400 g', 'fiber', 0.5),
  ('Alsa Nature', '4-SEASONS Zomermenu Rund & Zalm met mango en meloen', '400 g', 'ash', 3),
  ('Alsa Nature', '4-SEASONS Zomermenu Rund & Zalm met mango en meloen', '400 g', 'moisture', 74),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '800 g', 'protein', 10.2),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '800 g', 'fat', 5.4),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '800 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '800 g', 'ash', 3.2),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '800 g', 'moisture', 78),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '12 x 400 g', 'protein', 10.7),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '12 x 400 g', 'fat', 7),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '12 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '12 x 400 g', 'ash', 2.2),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '12 x 400 g', 'moisture', 76),
  ('Alsa Nature', 'Speciaal Sensibel', '12 x 200 g', 'protein', 8.5),
  ('Alsa Nature', 'Speciaal Sensibel', '12 x 200 g', 'fat', 2.1),
  ('Alsa Nature', 'Speciaal Sensibel', '12 x 200 g', 'fiber', 0.6),
  ('Alsa Nature', 'Speciaal Sensibel', '12 x 200 g', 'ash', 2.2),
  ('Alsa Nature', 'Speciaal Sensibel', '12 x 200 g', 'moisture', 76),
  ('Alsa Nature', 'Speciaal Nierdieet', '12 x 400 g', 'protein', 6),
  ('Alsa Nature', 'Speciaal Nierdieet', '12 x 400 g', 'fat', 6.7),
  ('Alsa Nature', 'Speciaal Nierdieet', '12 x 400 g', 'fiber', 1.4),
  ('Alsa Nature', 'Speciaal Nierdieet', '12 x 400 g', 'ash', 2.1),
  ('Alsa Nature', 'Speciaal Nierdieet', '12 x 400 g', 'moisture', 71),
  ('Alsa Nature', 'Speciaal Nierdieet', '12 x 400 g', 'calcium', 0.17),
  ('Alsa Nature', 'Speciaal Nierdieet', '12 x 400 g', 'phosphorus', 0.1),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '6 x 800 g', 'protein', 10.7),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '6 x 800 g', 'fat', 7),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '6 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '6 x 800 g', 'ash', 2.2),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '6 x 800 g', 'moisture', 76),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '800 g', 'protein', 10.7),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '800 g', 'fat', 7),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '800 g', 'fiber', 0.5),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '800 g', 'ash', 2.2),
  ('Alsa Nature', 'Classic Eend met ham en spinazie ravioli', '800 g', 'moisture', 76),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '12 x 400 g', 'protein', 11.2),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '12 x 400 g', 'fat', 7.3),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '12 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '12 x 400 g', 'ash', 1.8),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '12 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '6 x 400 g', 'protein', 11),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '6 x 400 g', 'fat', 7.3),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '6 x 400 g', 'fiber', 0.3),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '6 x 400 g', 'ash', 1.8),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '6 x 400 g', 'moisture', 74),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '12 x 400 g', 'protein', 11),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '12 x 400 g', 'fat', 7.3),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '12 x 400 g', 'fiber', 0.3),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '12 x 400 g', 'ash', 1.8),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '12 x 400 g', 'moisture', 74),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '6 x 200 g', 'protein', 11.2),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '6 x 200 g', 'fat', 7.3),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '6 x 200 g', 'fiber', 0.5),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '6 x 200 g', 'ash', 1.8),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '6 x 200 g', 'moisture', 75),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '12 x 200 g', 'protein', 11.2),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '12 x 200 g', 'fat', 7.3),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '12 x 200 g', 'fiber', 0.5),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '12 x 200 g', 'ash', 1.8),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '12 x 200 g', 'moisture', 75),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '6 x 800 g', 'protein', 10.4),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '6 x 800 g', 'fat', 5.2),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '6 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '6 x 800 g', 'ash', 2.5),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '6 x 800 g', 'moisture', 80),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '6 x 800 g', 'protein', 11.2),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '6 x 800 g', 'fat', 7.3),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '6 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '6 x 800 g', 'ash', 1.8),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '6 x 800 g', 'moisture', 75),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '30 x 300 g', 'protein', 10),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '30 x 300 g', 'fat', 4.9),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '30 x 300 g', 'fiber', 0.5),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '30 x 300 g', 'ash', 2.5),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '30 x 300 g', 'moisture', 77),
  ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', '60 x 500 g', 'protein', 10.7),
  ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', '60 x 500 g', 'fat', 8),
  ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', '60 x 500 g', 'ash', 2.6),
  ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', '60 x 500 g', 'moisture', 75),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '90 x 300 g', 'protein', 10.3),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '90 x 300 g', 'fat', 5.5),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '90 x 300 g', 'fiber', 0.5),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '90 x 300 g', 'ash', 2.5),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '90 x 300 g', 'moisture', 78),
  ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', '90 x 500 g', 'protein', 10.7),
  ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', '90 x 500 g', 'fat', 8),
  ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', '90 x 500 g', 'ash', 2.6),
  ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', '90 x 500 g', 'moisture', 75),
  ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', '60 x 500 g', 'protein', 10.7),
  ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', '60 x 500 g', 'fat', 7),
  ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', '60 x 500 g', 'ash', 3),
  ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', '60 x 500 g', 'moisture', 76),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '12 x 800 g', 'protein', 10.6),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '12 x 800 g', 'fat', 6.2),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '12 x 800 g', 'fiber', 0.3),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '12 x 800 g', 'ash', 2.3),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '12 x 800 g', 'moisture', 76),
  ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', '12 x 500 g', 'protein', 10.7),
  ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', '12 x 500 g', 'fat', 8),
  ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', '12 x 500 g', 'ash', 2.6),
  ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', '12 x 500 g', 'moisture', 75),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '800 g', 'protein', 10.6),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '800 g', 'fat', 6.2),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '800 g', 'fiber', 0.3),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '800 g', 'ash', 2.3),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '800 g', 'moisture', 76),
  ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', '60 x 500 g', 'protein', 10.2),
  ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', '60 x 500 g', 'fat', 7),
  ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', '60 x 500 g', 'ash', 3),
  ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', '60 x 500 g', 'moisture', 76),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '400 g', 'protein', 12.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '400 g', 'fat', 4.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '400 g', 'fiber', 0.6),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '400 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '400 g', 'moisture', 78),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '6 x 400 g', 'protein', 10.2),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '6 x 400 g', 'fat', 5.4),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '6 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '6 x 400 g', 'ash', 2.4),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '6 x 400 g', 'moisture', 79),
  ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', '90 x 500 g', 'protein', 10.2),
  ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', '90 x 500 g', 'fat', 7),
  ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', '90 x 500 g', 'ash', 3),
  ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', '90 x 500 g', 'moisture', 76),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '800 g', 'protein', 11.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '800 g', 'fat', 5.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '800 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '800 g', 'moisture', 77),
  ('Alsa Nature', 'VEGGIE Groente-bijlage met fruit', '6 x 375 g', 'protein', 3.8),
  ('Alsa Nature', 'VEGGIE Groente-bijlage met fruit', '6 x 375 g', 'fat', 1.3),
  ('Alsa Nature', 'VEGGIE Groente-bijlage met fruit', '6 x 375 g', 'fiber', 1.1),
  ('Alsa Nature', 'VEGGIE Groente-bijlage met fruit', '6 x 375 g', 'ash', 0.3),
  ('Alsa Nature', 'VEGGIE Groente-bijlage met fruit', '6 x 375 g', 'moisture', 91),
  ('Alsa Nature', 'VEGGIE Groentemaaltijd met Hüttenkäse, fruit en kruiden', '6 x 375 g', 'protein', 6.5),
  ('Alsa Nature', 'VEGGIE Groentemaaltijd met Hüttenkäse, fruit en kruiden', '6 x 375 g', 'fat', 6),
  ('Alsa Nature', 'VEGGIE Groentemaaltijd met Hüttenkäse, fruit en kruiden', '6 x 375 g', 'fiber', 1.2),
  ('Alsa Nature', 'VEGGIE Groentemaaltijd met Hüttenkäse, fruit en kruiden', '6 x 375 g', 'ash', 2.2),
  ('Alsa Nature', 'VEGGIE Groentemaaltijd met Hüttenkäse, fruit en kruiden', '6 x 375 g', 'moisture', 72),
  ('Alsa Nature', 'JUNIOR Wild met aardappel', '12 x 400 g', 'protein', 10.4),
  ('Alsa Nature', 'JUNIOR Wild met aardappel', '12 x 400 g', 'fat', 6.8),
  ('Alsa Nature', 'JUNIOR Wild met aardappel', '12 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUNIOR Wild met aardappel', '12 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'JUNIOR Wild met aardappel', '12 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'JUNIOR Wild met aardappel', '12 x 400 g', 'calcium', 0.24),
  ('Alsa Nature', 'JUNIOR Wild met aardappel', '12 x 400 g', 'phosphorus', 0.22),
  ('Alsa Nature', 'Speciaal Single-sensitief', '400 g', 'protein', 8.4),
  ('Alsa Nature', 'Speciaal Single-sensitief', '400 g', 'fat', 4.8),
  ('Alsa Nature', 'Speciaal Single-sensitief', '400 g', 'fiber', 0.5),
  ('Alsa Nature', 'Speciaal Single-sensitief', '400 g', 'ash', 2.2),
  ('Alsa Nature', 'Speciaal Single-sensitief', '400 g', 'moisture', 81),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '6 x 400 g', 'protein', 11.5),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '6 x 400 g', 'fat', 4.4),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '6 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '6 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '6 x 400 g', 'moisture', 80),
  ('Alsa Nature', 'FINEST Kippen-spiervlees met pastinaak, pompoen en lijnolie', '400 g', 'protein', 10.8),
  ('Alsa Nature', 'FINEST Kippen-spiervlees met pastinaak, pompoen en lijnolie', '400 g', 'fat', 6.1),
  ('Alsa Nature', 'FINEST Kippen-spiervlees met pastinaak, pompoen en lijnolie', '400 g', 'fiber', 0.5),
  ('Alsa Nature', 'FINEST Kippen-spiervlees met pastinaak, pompoen en lijnolie', '400 g', 'ash', 2.5),
  ('Alsa Nature', 'FINEST Kippen-spiervlees met pastinaak, pompoen en lijnolie', '400 g', 'moisture', 75),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '90 x 400 g', 'protein', 12.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '90 x 400 g', 'fat', 4.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '90 x 400 g', 'fiber', 0.6),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '90 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '90 x 400 g', 'moisture', 78),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '90 x 800 g', 'protein', 10.8),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '90 x 800 g', 'fat', 7.2),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '90 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '90 x 800 g', 'ash', 2.1),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '90 x 800 g', 'moisture', 75),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '120 x 800 g', 'protein', 11.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '120 x 800 g', 'fat', 5.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '120 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '120 x 800 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '120 x 800 g', 'moisture', 77),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '120 x 800 g', 'protein', 10.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '120 x 800 g', 'fat', 5.3),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '120 x 800 g', 'fiber', 0.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '120 x 800 g', 'ash', 2.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '120 x 800 g', 'moisture', 80),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '120 x 400 g', 'protein', 12.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '120 x 400 g', 'fat', 4.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '120 x 400 g', 'fiber', 0.6),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '120 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '120 x 400 g', 'moisture', 78),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '60 x 800 g', 'protein', 10.8),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '60 x 800 g', 'fat', 7.2),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '60 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '60 x 800 g', 'ash', 2.1),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '60 x 800 g', 'moisture', 75),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '6 x 400 g', 'protein', 10.4),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '6 x 400 g', 'fat', 5.2),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '6 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '6 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '6 x 400 g', 'moisture', 80),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '12 x 400 g', 'protein', 10.2),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '12 x 400 g', 'fat', 5.4),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '12 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '12 x 400 g', 'ash', 3.2),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '12 x 400 g', 'moisture', 78),
  ('Alsa Nature', 'JUBILEUM Rund', '12 x 400 g', 'protein', 10.8),
  ('Alsa Nature', 'JUBILEUM Rund', '12 x 400 g', 'fat', 9),
  ('Alsa Nature', 'JUBILEUM Rund', '12 x 400 g', 'fiber', 0.3),
  ('Alsa Nature', 'JUBILEUM Rund', '12 x 400 g', 'ash', 2.2),
  ('Alsa Nature', 'JUBILEUM Rund', '12 x 400 g', 'moisture', 74),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '800 g', 'protein', 10.4),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '800 g', 'fat', 5.2),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '800 g', 'fiber', 0.5),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '800 g', 'ash', 2.5),
  ('Alsa Nature', 'Senior Kip & Kalkoen met aardappel en peterselie', '800 g', 'moisture', 80),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '120 x 300 g', 'protein', 10.5),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '120 x 300 g', 'fat', 8),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '120 x 300 g', 'fiber', 0.3),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '120 x 300 g', 'ash', 3),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '120 x 300 g', 'moisture', 76),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '12 x 300 g', 'protein', 10.8),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '12 x 300 g', 'fat', 5.6),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '12 x 300 g', 'fiber', 0.5),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '12 x 300 g', 'ash', 2.5),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '12 x 300 g', 'moisture', 78),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '120 x 300 g', 'protein', 10.3),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '120 x 300 g', 'fat', 5.5),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '120 x 300 g', 'fiber', 0.5),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '120 x 300 g', 'ash', 2.5),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '120 x 300 g', 'moisture', 78),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '120 x 300 g', 'protein', 10),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '120 x 300 g', 'fat', 4.9),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '120 x 300 g', 'fiber', 0.5),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '120 x 300 g', 'ash', 2.5),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '120 x 300 g', 'moisture', 77),
  ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', '12 x 500 g', 'protein', 10.2),
  ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', '12 x 500 g', 'fat', 7),
  ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', '12 x 500 g', 'ash', 3),
  ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', '12 x 500 g', 'moisture', 76),
  ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', '30 x 500 g', 'protein', 10.8),
  ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', '30 x 500 g', 'fat', 7),
  ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', '30 x 500 g', 'ash', 2.6),
  ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', '30 x 500 g', 'moisture', 76),
  ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', '12 x 500 g', 'protein', 10.7),
  ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', '12 x 500 g', 'fat', 8),
  ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', '12 x 500 g', 'ash', 2.6),
  ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', '12 x 500 g', 'moisture', 75),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '6 x 300 g', 'protein', 10.3),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '6 x 300 g', 'fat', 5.5),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '6 x 300 g', 'fiber', 0.5),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '6 x 300 g', 'ash', 2.5),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '6 x 300 g', 'moisture', 78),
  ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', '6 x 500 g', 'protein', 10.2),
  ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', '6 x 500 g', 'fat', 7),
  ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', '6 x 500 g', 'ash', 3),
  ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', '6 x 500 g', 'moisture', 76),
  ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', '30 x 500 g', 'protein', 10.2),
  ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', '30 x 500 g', 'fat', 7),
  ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', '30 x 500 g', 'ash', 3),
  ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', '30 x 500 g', 'moisture', 76),
  ('Alsa Nature', 'Speciaal Sensibel', '30 x 400 g', 'protein', 8.5),
  ('Alsa Nature', 'Speciaal Sensibel', '30 x 400 g', 'fat', 2.1),
  ('Alsa Nature', 'Speciaal Sensibel', '30 x 400 g', 'fiber', 0.6),
  ('Alsa Nature', 'Speciaal Sensibel', '30 x 400 g', 'ash', 2.2),
  ('Alsa Nature', 'Speciaal Sensibel', '30 x 400 g', 'moisture', 76),
  ('Alsa Nature', 'FINEST Kippen-spiervlees met pastinaak, pompoen en lijnolie', '6 x 400 g', 'protein', 10.8),
  ('Alsa Nature', 'FINEST Kippen-spiervlees met pastinaak, pompoen en lijnolie', '6 x 400 g', 'fat', 6.1),
  ('Alsa Nature', 'FINEST Kippen-spiervlees met pastinaak, pompoen en lijnolie', '6 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'FINEST Kippen-spiervlees met pastinaak, pompoen en lijnolie', '6 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'FINEST Kippen-spiervlees met pastinaak, pompoen en lijnolie', '6 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'Speciaal Light-menu', '30 x 400 g', 'protein', 10.1),
  ('Alsa Nature', 'Speciaal Light-menu', '30 x 400 g', 'fat', 2.2),
  ('Alsa Nature', 'Speciaal Light-menu', '30 x 400 g', 'fiber', 2),
  ('Alsa Nature', 'Speciaal Light-menu', '30 x 400 g', 'ash', 2.4),
  ('Alsa Nature', 'Speciaal Light-menu', '30 x 400 g', 'moisture', 79),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '90 x 400 g', 'protein', 10.2),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '90 x 400 g', 'fat', 5.6),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '90 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '90 x 400 g', 'ash', 2.4),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '90 x 400 g', 'moisture', 78),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '12 x 800 g', 'protein', 10.6),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '12 x 800 g', 'fat', 6),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '12 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '12 x 800 g', 'ash', 2),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '12 x 800 g', 'moisture', 76),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '6 x 375 g', 'protein', 5.5),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '6 x 375 g', 'fat', 5),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '6 x 375 g', 'fiber', 1.5),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '6 x 375 g', 'ash', 2.5),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '6 x 375 g', 'moisture', 80),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '400 g', 'protein', 11.5),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '400 g', 'fat', 4.4),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '400 g', 'ash', 2.5),
  ('Alsa Nature', 'SIMPLE Kangoeroe puur', '400 g', 'moisture', 80),
  ('Alsa Nature', 'SINGLE Gans puur', '30 x 400 g', 'protein', 10.2),
  ('Alsa Nature', 'SINGLE Gans puur', '30 x 400 g', 'fat', 4.9),
  ('Alsa Nature', 'SINGLE Gans puur', '30 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Gans puur', '30 x 400 g', 'ash', 2.2),
  ('Alsa Nature', 'SINGLE Gans puur', '30 x 400 g', 'moisture', 79),
  ('Alsa Nature', 'SINGLE Gans puur', '90 x 400 g', 'protein', 10.2),
  ('Alsa Nature', 'SINGLE Gans puur', '90 x 400 g', 'fat', 4.9),
  ('Alsa Nature', 'SINGLE Gans puur', '90 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Gans puur', '90 x 400 g', 'ash', 2.2),
  ('Alsa Nature', 'SINGLE Gans puur', '90 x 400 g', 'moisture', 79),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '90 x 800 g', 'protein', 10.6),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '90 x 800 g', 'fat', 6.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '90 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '90 x 800 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '90 x 800 g', 'moisture', 75),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '90 x 800 g', 'protein', 10.2),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '90 x 800 g', 'fat', 5.6),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '90 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '90 x 800 g', 'ash', 2.4),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '90 x 800 g', 'moisture', 78),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '6 x 400 g', 'protein', 10.4),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '6 x 400 g', 'fat', 5.3),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '6 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '6 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '6 x 400 g', 'moisture', 80),
  ('Alsa Nature', 'JUBILEUM Kip', '400 g', 'protein', 10.3),
  ('Alsa Nature', 'JUBILEUM Kip', '400 g', 'fat', 5.2),
  ('Alsa Nature', 'JUBILEUM Kip', '400 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUBILEUM Kip', '400 g', 'ash', 2.5),
  ('Alsa Nature', 'JUBILEUM Kip', '400 g', 'moisture', 80),
  ('Alsa Nature', 'JUBILEUM Kip', '800 g', 'protein', 10.3),
  ('Alsa Nature', 'JUBILEUM Kip', '800 g', 'fat', 5.2),
  ('Alsa Nature', 'JUBILEUM Kip', '800 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUBILEUM Kip', '800 g', 'ash', 2.5),
  ('Alsa Nature', 'JUBILEUM Kip', '800 g', 'moisture', 80),
  ('Alsa Nature', 'JUBILEUM Kip', '12 x 800 g', 'protein', 10.3),
  ('Alsa Nature', 'JUBILEUM Kip', '12 x 800 g', 'fat', 5.2),
  ('Alsa Nature', 'JUBILEUM Kip', '12 x 800 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUBILEUM Kip', '12 x 800 g', 'ash', 2.5),
  ('Alsa Nature', 'JUBILEUM Kip', '12 x 800 g', 'moisture', 80),
  ('Alsa Nature', 'JUBILEUM Lam', '400 g', 'protein', 10.6),
  ('Alsa Nature', 'JUBILEUM Lam', '400 g', 'fat', 8.5),
  ('Alsa Nature', 'JUBILEUM Lam', '400 g', 'fiber', 0.3),
  ('Alsa Nature', 'JUBILEUM Lam', '400 g', 'ash', 2.8),
  ('Alsa Nature', 'JUBILEUM Lam', '400 g', 'moisture', 75),
  ('Alsa Nature', 'JUBILEUM Lam', '12 x 400 g', 'protein', 10.6),
  ('Alsa Nature', 'JUBILEUM Lam', '12 x 400 g', 'fat', 8.5),
  ('Alsa Nature', 'JUBILEUM Lam', '12 x 400 g', 'fiber', 0.3),
  ('Alsa Nature', 'JUBILEUM Lam', '12 x 400 g', 'ash', 2.8),
  ('Alsa Nature', 'JUBILEUM Lam', '12 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'JUBILEUM Rund', '12 x 800 g', 'protein', 10.8),
  ('Alsa Nature', 'JUBILEUM Rund', '12 x 800 g', 'fat', 9),
  ('Alsa Nature', 'JUBILEUM Rund', '12 x 800 g', 'fiber', 0.3),
  ('Alsa Nature', 'JUBILEUM Rund', '12 x 800 g', 'ash', 2.2),
  ('Alsa Nature', 'JUBILEUM Rund', '12 x 800 g', 'moisture', 74),
  ('Alsa Nature', 'Speciaal Sensibel', '200 g', 'protein', 8.5),
  ('Alsa Nature', 'Speciaal Sensibel', '200 g', 'fat', 2.1),
  ('Alsa Nature', 'Speciaal Sensibel', '200 g', 'fiber', 0.6),
  ('Alsa Nature', 'Speciaal Sensibel', '200 g', 'ash', 2.2),
  ('Alsa Nature', 'Speciaal Sensibel', '200 g', 'moisture', 76),
  ('Alsa Nature', 'JUBILEUM Kip', '12 x 400 g', 'protein', 10.3),
  ('Alsa Nature', 'JUBILEUM Kip', '12 x 400 g', 'fat', 5.2),
  ('Alsa Nature', 'JUBILEUM Kip', '12 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUBILEUM Kip', '12 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'JUBILEUM Kip', '12 x 400 g', 'moisture', 80),
  ('Alsa Nature', 'JUBILEUM Kip', '6 x 400 g', 'protein', 10.3),
  ('Alsa Nature', 'JUBILEUM Kip', '6 x 400 g', 'fat', 5.2),
  ('Alsa Nature', 'JUBILEUM Kip', '6 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUBILEUM Kip', '6 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'JUBILEUM Kip', '6 x 400 g', 'moisture', 80),
  ('Alsa Nature', 'SINGLE Gans puur', '800 g', 'protein', 10.2),
  ('Alsa Nature', 'SINGLE Gans puur', '800 g', 'fat', 4.9),
  ('Alsa Nature', 'SINGLE Gans puur', '800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Gans puur', '800 g', 'ash', 2.2),
  ('Alsa Nature', 'SINGLE Gans puur', '800 g', 'moisture', 79),
  ('Alsa Nature', 'SINGLE Gans puur', '12 x 800 g', 'protein', 10.2),
  ('Alsa Nature', 'SINGLE Gans puur', '12 x 800 g', 'fat', 4.9),
  ('Alsa Nature', 'SINGLE Gans puur', '12 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Gans puur', '12 x 800 g', 'ash', 2.2),
  ('Alsa Nature', 'SINGLE Gans puur', '12 x 800 g', 'moisture', 79),
  ('Alsa Nature', 'JUBILEUM Lam', '6 x 400 g', 'protein', 10.6),
  ('Alsa Nature', 'JUBILEUM Lam', '6 x 400 g', 'fat', 8.5),
  ('Alsa Nature', 'JUBILEUM Lam', '6 x 400 g', 'fiber', 0.3),
  ('Alsa Nature', 'JUBILEUM Lam', '6 x 400 g', 'ash', 2.8),
  ('Alsa Nature', 'JUBILEUM Lam', '6 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'Speciaal Sensibel', '400 g', 'protein', 8.5),
  ('Alsa Nature', 'Speciaal Sensibel', '400 g', 'fat', 2.1),
  ('Alsa Nature', 'Speciaal Sensibel', '400 g', 'fiber', 0.6),
  ('Alsa Nature', 'Speciaal Sensibel', '400 g', 'ash', 2.2),
  ('Alsa Nature', 'Speciaal Sensibel', '400 g', 'moisture', 76),
  ('Alsa Nature', 'Speciaal Nierdieet', '400 g', 'protein', 6),
  ('Alsa Nature', 'Speciaal Nierdieet', '400 g', 'fat', 6.7),
  ('Alsa Nature', 'Speciaal Nierdieet', '400 g', 'fiber', 1.4),
  ('Alsa Nature', 'Speciaal Nierdieet', '400 g', 'ash', 2.1),
  ('Alsa Nature', 'Speciaal Nierdieet', '400 g', 'moisture', 71),
  ('Alsa Nature', 'Speciaal Nierdieet', '400 g', 'calcium', 0.17),
  ('Alsa Nature', 'Speciaal Nierdieet', '400 g', 'phosphorus', 0.1),
  ('Alsa Nature', 'SINGLE Gans puur', '6 x 800 g', 'protein', 10.2),
  ('Alsa Nature', 'SINGLE Gans puur', '6 x 800 g', 'fat', 4.9),
  ('Alsa Nature', 'SINGLE Gans puur', '6 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Gans puur', '6 x 800 g', 'ash', 2.2),
  ('Alsa Nature', 'SINGLE Gans puur', '6 x 800 g', 'moisture', 79),
  ('Alsa Nature', 'Speciaal Light-menu', '400 g', 'protein', 10.1),
  ('Alsa Nature', 'Speciaal Light-menu', '400 g', 'fat', 2.2),
  ('Alsa Nature', 'Speciaal Light-menu', '400 g', 'fiber', 2),
  ('Alsa Nature', 'Speciaal Light-menu', '400 g', 'ash', 2.4),
  ('Alsa Nature', 'Speciaal Light-menu', '400 g', 'moisture', 79),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '6 x 300 g', 'protein', 10.5),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '6 x 300 g', 'fat', 8),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '6 x 300 g', 'fiber', 0.3),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '6 x 300 g', 'ash', 3),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '6 x 300 g', 'moisture', 76),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '12 x 300 g', 'protein', 10.5),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '12 x 300 g', 'fat', 8),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '12 x 300 g', 'fiber', 0.3),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '12 x 300 g', 'ash', 3),
  ('Alsa Nature', 'FOODLOVE Lam met amarant, aardpeer & vijg', '12 x 300 g', 'moisture', 76),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '90 x 300 g', 'protein', 10.8),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '90 x 300 g', 'fat', 5.6),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '90 x 300 g', 'fiber', 0.5),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '90 x 300 g', 'ash', 2.5),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '90 x 300 g', 'moisture', 78),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '120 x 300 g', 'protein', 10.4),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '120 x 300 g', 'fat', 8),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '120 x 300 g', 'fiber', 0.6),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '120 x 300 g', 'ash', 2.6),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '120 x 300 g', 'moisture', 76),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '3 kg', 'protein', 22),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '3 kg', 'fat', 12),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '3 kg', 'fiber', 1.8),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '3 kg', 'ash', 9),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '3 kg', 'moisture', 9),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '3 kg', 'calcium', 2.4),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '3 kg', 'phosphorus', 1.2),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '12 kg', 'protein', 22),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '12 kg', 'fat', 12),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '12 kg', 'fiber', 1.8),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '12 kg', 'ash', 9),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '12 kg', 'moisture', 9),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '12 kg', 'calcium', 2.4),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '12 kg', 'phosphorus', 1.2),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '6 x 400 g', 'protein', 10.9),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '6 x 400 g', 'fat', 7.3),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '6 x 400 g', 'fiber', 0.3),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '6 x 400 g', 'ash', 1.7),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '6 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '6 x 200 g', 'protein', 10.6),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '6 x 200 g', 'fat', 7),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '6 x 200 g', 'fiber', 0.3),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '6 x 200 g', 'ash', 2.6),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '6 x 200 g', 'moisture', 77),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '12 x 400 g', 'protein', 10.4),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '12 x 400 g', 'fat', 5.3),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '12 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '12 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '12 x 400 g', 'moisture', 80),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '6 x 800 g', 'protein', 10.6),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '6 x 800 g', 'fat', 7),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '6 x 800 g', 'fiber', 0.3),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '6 x 800 g', 'ash', 2.6),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '6 x 800 g', 'moisture', 77),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '400 g', 'protein', 10.4),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '400 g', 'fat', 5.3),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '400 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '400 g', 'ash', 2.5),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '400 g', 'moisture', 80),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '12 x 800 g', 'protein', 10.4),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '12 x 800 g', 'fat', 5.3),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '12 x 800 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '12 x 800 g', 'ash', 2.5),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '12 x 800 g', 'moisture', 80),
  ('Alsa Nature', '4-SEASONS Herfstmenu Wild & Hert met zoete aardappel', '400 g', 'protein', 10.5),
  ('Alsa Nature', '4-SEASONS Herfstmenu Wild & Hert met zoete aardappel', '400 g', 'fat', 5.8),
  ('Alsa Nature', '4-SEASONS Herfstmenu Wild & Hert met zoete aardappel', '400 g', 'ash', 3),
  ('Alsa Nature', '4-SEASONS Herfstmenu Wild & Hert met zoete aardappel', '400 g', 'moisture', 77),
  ('Alsa Nature', '4-SEASONS Zomermenu Rund & Zalm met mango en meloen', '6 x 400 g', 'protein', 10.5),
  ('Alsa Nature', '4-SEASONS Zomermenu Rund & Zalm met mango en meloen', '6 x 400 g', 'fat', 9),
  ('Alsa Nature', '4-SEASONS Zomermenu Rund & Zalm met mango en meloen', '6 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', '4-SEASONS Zomermenu Rund & Zalm met mango en meloen', '6 x 400 g', 'ash', 3),
  ('Alsa Nature', '4-SEASONS Zomermenu Rund & Zalm met mango en meloen', '6 x 400 g', 'moisture', 74),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '200 g', 'protein', 10.8),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '200 g', 'fat', 6.6),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '200 g', 'fiber', 0.7),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '200 g', 'ash', 1.9),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '200 g', 'moisture', 77),
  ('Alsa Nature', '4-SEASONS Zomermenu Rund & Zalm met mango en meloen', '12 x 400 g', 'protein', 10.5),
  ('Alsa Nature', '4-SEASONS Zomermenu Rund & Zalm met mango en meloen', '12 x 400 g', 'fat', 9),
  ('Alsa Nature', '4-SEASONS Zomermenu Rund & Zalm met mango en meloen', '12 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', '4-SEASONS Zomermenu Rund & Zalm met mango en meloen', '12 x 400 g', 'ash', 3),
  ('Alsa Nature', '4-SEASONS Zomermenu Rund & Zalm met mango en meloen', '12 x 400 g', 'moisture', 74),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '12 x 800 g', 'protein', 11),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '12 x 800 g', 'fat', 7.3),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '12 x 800 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '12 x 800 g', 'ash', 2),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '12 x 800 g', 'moisture', 75),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '6 x 400 g', 'protein', 10.8),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '6 x 400 g', 'fat', 6.6),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '6 x 400 g', 'fiber', 0.7),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '6 x 400 g', 'ash', 1.9),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '6 x 400 g', 'moisture', 77),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '800 g', 'protein', 11),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '800 g', 'fat', 7.3),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '800 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '800 g', 'ash', 2),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '800 g', 'moisture', 75),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '6 x 400 g', 'protein', 11),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '6 x 400 g', 'fat', 7.3),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '6 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '6 x 400 g', 'ash', 2),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '6 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '12 x 200 g', 'protein', 11),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '12 x 200 g', 'fat', 7.3),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '12 x 200 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '12 x 200 g', 'ash', 2),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '12 x 200 g', 'moisture', 75),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '12 x 800 g', 'protein', 10.8),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '12 x 800 g', 'fat', 7.2),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '12 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '12 x 800 g', 'ash', 2.1),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '12 x 800 g', 'moisture', 75),
  ('Alsa Nature', 'Lamsworst met aardappel & wortelen', '6 x 200 g', 'protein', 10.9),
  ('Alsa Nature', 'Lamsworst met aardappel & wortelen', '6 x 200 g', 'fat', 6.3),
  ('Alsa Nature', 'Lamsworst met aardappel & wortelen', '6 x 200 g', 'fiber', 0.6),
  ('Alsa Nature', 'Lamsworst met aardappel & wortelen', '6 x 200 g', 'ash', 2),
  ('Alsa Nature', 'Lamsworst met aardappel & wortelen', '6 x 200 g', 'moisture', 77),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '12 x 800 g', 'protein', 10.2),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '12 x 800 g', 'fat', 5.4),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '12 x 800 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '12 x 800 g', 'ash', 3.2),
  ('Alsa Nature', 'JUBILEUM Kip & Zalm', '12 x 800 g', 'moisture', 78),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '6 x 400 g', 'protein', 10.2),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '6 x 400 g', 'fat', 5.6),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '6 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '6 x 400 g', 'ash', 2.4),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '6 x 400 g', 'moisture', 78),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '6 x 800 g', 'protein', 11),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '6 x 800 g', 'fat', 7.3),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '6 x 800 g', 'fiber', 0.3),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '6 x 800 g', 'ash', 1.8),
  ('Alsa Nature', 'Classic Rund & Rijst met rode bieten & appel', '6 x 800 g', 'moisture', 74),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '12 x 200 g', 'protein', 10.8),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '12 x 200 g', 'fat', 6.6),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '12 x 200 g', 'fiber', 0.7),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '12 x 200 g', 'ash', 1.9),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '12 x 200 g', 'moisture', 77),
  ('Alsa Nature', 'Speciaal Light-menu', '12 x 400 g', 'protein', 10.1),
  ('Alsa Nature', 'Speciaal Light-menu', '12 x 400 g', 'fat', 2.2),
  ('Alsa Nature', 'Speciaal Light-menu', '12 x 400 g', 'fiber', 2),
  ('Alsa Nature', 'Speciaal Light-menu', '12 x 400 g', 'ash', 2.4),
  ('Alsa Nature', 'Speciaal Light-menu', '12 x 400 g', 'moisture', 79),
  ('Alsa Nature', 'Lamsworst met aardappel & wortelen', '6 x 800 g', 'protein', 10.9),
  ('Alsa Nature', 'Lamsworst met aardappel & wortelen', '6 x 800 g', 'fat', 6.3),
  ('Alsa Nature', 'Lamsworst met aardappel & wortelen', '6 x 800 g', 'fiber', 0.6),
  ('Alsa Nature', 'Lamsworst met aardappel & wortelen', '6 x 800 g', 'ash', 2),
  ('Alsa Nature', 'Lamsworst met aardappel & wortelen', '6 x 800 g', 'moisture', 77),
  ('Alsa Nature', 'Gevogelteworst met rijst', '6 x 800 g', 'protein', 10.9),
  ('Alsa Nature', 'Gevogelteworst met rijst', '6 x 800 g', 'fat', 6.9),
  ('Alsa Nature', 'Gevogelteworst met rijst', '6 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'Gevogelteworst met rijst', '6 x 800 g', 'ash', 2),
  ('Alsa Nature', 'Gevogelteworst met rijst', '6 x 800 g', 'moisture', 77),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '30 x 300 g', 'protein', 10.8),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '30 x 300 g', 'fat', 5.6),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '30 x 300 g', 'fiber', 0.5),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '30 x 300 g', 'ash', 2.5),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '30 x 300 g', 'moisture', 78),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '6 x 300 g', 'protein', 10.8),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '6 x 300 g', 'fat', 5.6),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '6 x 300 g', 'fiber', 0.5),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '6 x 300 g', 'ash', 2.5),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '6 x 300 g', 'moisture', 78),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '120 x 300 g', 'protein', 10.8),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '120 x 300 g', 'fat', 5.6),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '120 x 300 g', 'fiber', 0.5),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '120 x 300 g', 'ash', 2.5),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '120 x 300 g', 'moisture', 78),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '30 x 300 g', 'protein', 10.4),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '30 x 300 g', 'fat', 8),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '30 x 300 g', 'fiber', 0.6),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '30 x 300 g', 'ash', 2.6),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '30 x 300 g', 'moisture', 76),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '60 x 300 g', 'protein', 10.4),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '60 x 300 g', 'fat', 8),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '60 x 300 g', 'fiber', 0.6),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '60 x 300 g', 'ash', 2.6),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '60 x 300 g', 'moisture', 76),
  ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', '6 x 500 g', 'protein', 10.7),
  ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', '6 x 500 g', 'fat', 8),
  ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', '6 x 500 g', 'ash', 2.6),
  ('Alsa Nature', 'CLASSIC Eend & Rund met aardappel', '6 x 500 g', 'moisture', 75),
  ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', '12 x 500 g', 'protein', 10.7),
  ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', '12 x 500 g', 'fat', 7),
  ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', '12 x 500 g', 'ash', 3),
  ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', '12 x 500 g', 'moisture', 76),
  ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', '30 x 500 g', 'protein', 10.7),
  ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', '30 x 500 g', 'fat', 7),
  ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', '30 x 500 g', 'ash', 3),
  ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', '30 x 500 g', 'moisture', 76),
  ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', '90 x 500 g', 'protein', 10.7),
  ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', '90 x 500 g', 'fat', 7),
  ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', '90 x 500 g', 'ash', 3),
  ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', '90 x 500 g', 'moisture', 76),
  ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', '120 x 500 g', 'protein', 10.8),
  ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', '120 x 500 g', 'fat', 7),
  ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', '120 x 500 g', 'ash', 2.6),
  ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', '120 x 500 g', 'moisture', 76),
  ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', '120 x 500 g', 'protein', 10.7),
  ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', '120 x 500 g', 'fat', 7),
  ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', '120 x 500 g', 'ash', 3),
  ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', '120 x 500 g', 'moisture', 76),
  ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', '12 x 500 g', 'protein', 10.2),
  ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', '12 x 500 g', 'fat', 5),
  ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', '12 x 500 g', 'ash', 2.5),
  ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', '12 x 500 g', 'moisture', 79),
  ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', '30 x 500 g', 'protein', 10.2),
  ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', '30 x 500 g', 'fat', 5),
  ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', '30 x 500 g', 'ash', 2.5),
  ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', '30 x 500 g', 'moisture', 79),
  ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', '90 x 500 g', 'protein', 10.2),
  ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', '90 x 500 g', 'fat', 5),
  ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', '90 x 500 g', 'ash', 2.5),
  ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', '90 x 500 g', 'moisture', 79),
  ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', '120 x 500 g', 'protein', 10.2),
  ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', '120 x 500 g', 'fat', 5),
  ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', '120 x 500 g', 'ash', 2.5),
  ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', '120 x 500 g', 'moisture', 79),
  ('Alsa Nature', 'Light Speciaal Eiwit', '1,5 kg', 'protein', 20),
  ('Alsa Nature', 'Light Speciaal Eiwit', '1,5 kg', 'fat', 8),
  ('Alsa Nature', 'Light Speciaal Eiwit', '1,5 kg', 'fiber', 2.7),
  ('Alsa Nature', 'Light Speciaal Eiwit', '1,5 kg', 'ash', 5.5),
  ('Alsa Nature', 'Light Speciaal Eiwit', '1,5 kg', 'calcium', 1.1),
  ('Alsa Nature', 'Light Speciaal Eiwit', '1,5 kg', 'phosphorus', 0.8),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '12 x 800 g', 'protein', 10.9),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '12 x 800 g', 'fat', 7.3),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '12 x 800 g', 'fiber', 0.3),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '12 x 800 g', 'ash', 1.7),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '12 x 800 g', 'moisture', 75),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '2 x 12 kg', 'protein', 22),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '2 x 12 kg', 'fat', 12),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '2 x 12 kg', 'fiber', 1.8),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '2 x 12 kg', 'ash', 9),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '2 x 12 kg', 'moisture', 9),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '2 x 12 kg', 'calcium', 2.4),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '2 x 12 kg', 'phosphorus', 1.2),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '800 g', 'protein', 10.9),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '800 g', 'fat', 7.3),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '800 g', 'fiber', 0.3),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '800 g', 'ash', 1.7),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '800 g', 'moisture', 75),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '6 x 800 g', 'protein', 10.6),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '6 x 800 g', 'fat', 6.2),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '6 x 800 g', 'fiber', 0.3),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '6 x 800 g', 'ash', 2.3),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '6 x 800 g', 'moisture', 76),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '12 x 400 g', 'protein', 10.6),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '12 x 400 g', 'fat', 6.2),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '12 x 400 g', 'fiber', 0.3),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '12 x 400 g', 'ash', 2.3),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '12 x 400 g', 'moisture', 76),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '12 x 800 g', 'protein', 12.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '12 x 800 g', 'fat', 4.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '12 x 800 g', 'fiber', 0.6),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '12 x 800 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '12 x 800 g', 'moisture', 78),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '400 g', 'protein', 10.6),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '400 g', 'fat', 6.2),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '400 g', 'fiber', 0.3),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '400 g', 'ash', 2.3),
  ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', '400 g', 'moisture', 76),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '800 g', 'protein', 12.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '800 g', 'fat', 4.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '800 g', 'fiber', 0.6),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '800 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '800 g', 'moisture', 78),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '6 x 800 g', 'protein', 10.8),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '6 x 800 g', 'fat', 6.5),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '6 x 800 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '6 x 800 g', 'ash', 2.5),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '6 x 800 g', 'moisture', 75),
  ('Alsa Nature', 'JUNIOR Lam met aardappel', '6 x 400 g', 'protein', 10.9),
  ('Alsa Nature', 'JUNIOR Lam met aardappel', '6 x 400 g', 'fat', 7.2),
  ('Alsa Nature', 'JUNIOR Lam met aardappel', '6 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUNIOR Lam met aardappel', '6 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'JUNIOR Lam met aardappel', '6 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'JUNIOR Lam met aardappel', '6 x 400 g', 'calcium', 0.3),
  ('Alsa Nature', 'JUNIOR Lam met aardappel', '6 x 400 g', 'phosphorus', 0.28),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '400 g', 'protein', 11),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '400 g', 'fat', 7),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '400 g', 'fiber', 0.3),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '400 g', 'ash', 2.3),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '400 g', 'moisture', 77),
  ('Alsa Nature', 'JUNIOR Kip met pastinaak & appel', '12 x 400 g', 'protein', 10.4),
  ('Alsa Nature', 'JUNIOR Kip met pastinaak & appel', '12 x 400 g', 'fat', 5.4),
  ('Alsa Nature', 'JUNIOR Kip met pastinaak & appel', '12 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUNIOR Kip met pastinaak & appel', '12 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'JUNIOR Kip met pastinaak & appel', '12 x 400 g', 'moisture', 80),
  ('Alsa Nature', 'JUNIOR Kip met pastinaak & appel', '12 x 400 g', 'calcium', 0.25),
  ('Alsa Nature', 'JUNIOR Kip met pastinaak & appel', '12 x 400 g', 'phosphorus', 0.2),
  ('Alsa Nature', 'JUNIOR Runderhart met aardappel & wortel', '6 x 400 g', 'protein', 10.9),
  ('Alsa Nature', 'JUNIOR Runderhart met aardappel & wortel', '6 x 400 g', 'fat', 7.2),
  ('Alsa Nature', 'JUNIOR Runderhart met aardappel & wortel', '6 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUNIOR Runderhart met aardappel & wortel', '6 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'JUNIOR Runderhart met aardappel & wortel', '6 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'JUNIOR Runderhart met aardappel & wortel', '6 x 400 g', 'calcium', 0.25),
  ('Alsa Nature', 'JUNIOR Runderhart met aardappel & wortel', '6 x 400 g', 'phosphorus', 0.23),
  ('Alsa Nature', 'JUNIOR Lam met aardappel', '12 x 400 g', 'protein', 10.9),
  ('Alsa Nature', 'JUNIOR Lam met aardappel', '12 x 400 g', 'fat', 7.2),
  ('Alsa Nature', 'JUNIOR Lam met aardappel', '12 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUNIOR Lam met aardappel', '12 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'JUNIOR Lam met aardappel', '12 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'JUNIOR Lam met aardappel', '12 x 400 g', 'calcium', 0.3),
  ('Alsa Nature', 'JUNIOR Lam met aardappel', '12 x 400 g', 'phosphorus', 0.28),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '800 g', 'protein', 11),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '800 g', 'fat', 7),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '800 g', 'fiber', 0.3),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '800 g', 'ash', 2.3),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '800 g', 'moisture', 77),
  ('Alsa Nature', 'JUNIOR Runderhart met aardappel & wortel', '12 x 400 g', 'protein', 10.9),
  ('Alsa Nature', 'JUNIOR Runderhart met aardappel & wortel', '12 x 400 g', 'fat', 7.2),
  ('Alsa Nature', 'JUNIOR Runderhart met aardappel & wortel', '12 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUNIOR Runderhart met aardappel & wortel', '12 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'JUNIOR Runderhart met aardappel & wortel', '12 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'JUNIOR Runderhart met aardappel & wortel', '12 x 400 g', 'calcium', 0.25),
  ('Alsa Nature', 'JUNIOR Runderhart met aardappel & wortel', '12 x 400 g', 'phosphorus', 0.23),
  ('Alsa Nature', 'Speciaal Nierdieet', '60 x 400 g', 'protein', 6),
  ('Alsa Nature', 'Speciaal Nierdieet', '60 x 400 g', 'fat', 6.7),
  ('Alsa Nature', 'Speciaal Nierdieet', '60 x 400 g', 'fiber', 1.4),
  ('Alsa Nature', 'Speciaal Nierdieet', '60 x 400 g', 'ash', 2.1),
  ('Alsa Nature', 'Speciaal Nierdieet', '60 x 400 g', 'moisture', 71),
  ('Alsa Nature', 'Speciaal Nierdieet', '60 x 400 g', 'calcium', 0.17),
  ('Alsa Nature', 'Speciaal Nierdieet', '60 x 400 g', 'phosphorus', 0.1),
  ('Alsa Nature', 'FINEST Kalkoen-spiervlees met zoete aardappel, mango & lijnolie', '12 x 400 g', 'protein', 10.9),
  ('Alsa Nature', 'FINEST Kalkoen-spiervlees met zoete aardappel, mango & lijnolie', '12 x 400 g', 'fat', 6.3),
  ('Alsa Nature', 'FINEST Kalkoen-spiervlees met zoete aardappel, mango & lijnolie', '12 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'FINEST Kalkoen-spiervlees met zoete aardappel, mango & lijnolie', '12 x 400 g', 'ash', 2.3),
  ('Alsa Nature', 'FINEST Kalkoen-spiervlees met zoete aardappel, mango & lijnolie', '12 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '120 x 400 g', 'protein', 10.8),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '120 x 400 g', 'fat', 7.2),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '120 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '120 x 400 g', 'ash', 2.1),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '120 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'VEGGIE Groente-bijlage met fruit', '12 x 375 g', 'protein', 3.8),
  ('Alsa Nature', 'VEGGIE Groente-bijlage met fruit', '12 x 375 g', 'fat', 1.3),
  ('Alsa Nature', 'VEGGIE Groente-bijlage met fruit', '12 x 375 g', 'fiber', 1.1),
  ('Alsa Nature', 'VEGGIE Groente-bijlage met fruit', '12 x 375 g', 'ash', 0.3),
  ('Alsa Nature', 'VEGGIE Groente-bijlage met fruit', '12 x 375 g', 'moisture', 91),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '120 x 800 g', 'protein', 10.8),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '120 x 800 g', 'fat', 7.2),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '120 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '120 x 800 g', 'ash', 2.1),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '120 x 800 g', 'moisture', 75),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '6 x 800 g', 'protein', 10.6),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '6 x 800 g', 'fat', 6.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '6 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '6 x 800 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '6 x 800 g', 'moisture', 75),
  ('Alsa Nature', 'FINEST Kippen-spiervlees met pastinaak, pompoen en lijnolie', '12 x 400 g', 'protein', 10.8),
  ('Alsa Nature', 'FINEST Kippen-spiervlees met pastinaak, pompoen en lijnolie', '12 x 400 g', 'fat', 6.1),
  ('Alsa Nature', 'FINEST Kippen-spiervlees met pastinaak, pompoen en lijnolie', '12 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'FINEST Kippen-spiervlees met pastinaak, pompoen en lijnolie', '12 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'FINEST Kippen-spiervlees met pastinaak, pompoen en lijnolie', '12 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'Light Speciaal Eiwit', '12 kg', 'protein', 20),
  ('Alsa Nature', 'Light Speciaal Eiwit', '12 kg', 'fat', 8),
  ('Alsa Nature', 'Light Speciaal Eiwit', '12 kg', 'fiber', 2.7),
  ('Alsa Nature', 'Light Speciaal Eiwit', '12 kg', 'ash', 5.5),
  ('Alsa Nature', 'Light Speciaal Eiwit', '12 kg', 'calcium', 1.1),
  ('Alsa Nature', 'Light Speciaal Eiwit', '12 kg', 'phosphorus', 0.8),
  ('Alsa Nature', 'Light Speciaal Eiwit', '2 x 12 kg', 'protein', 20),
  ('Alsa Nature', 'Light Speciaal Eiwit', '2 x 12 kg', 'fat', 8),
  ('Alsa Nature', 'Light Speciaal Eiwit', '2 x 12 kg', 'fiber', 2.7),
  ('Alsa Nature', 'Light Speciaal Eiwit', '2 x 12 kg', 'ash', 5.5),
  ('Alsa Nature', 'Light Speciaal Eiwit', '2 x 12 kg', 'calcium', 1.1),
  ('Alsa Nature', 'Light Speciaal Eiwit', '2 x 12 kg', 'phosphorus', 0.8),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '60 x 400 g', 'protein', 10.8),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '60 x 400 g', 'fat', 7.2),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '60 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '60 x 400 g', 'ash', 2.1),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '60 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '12 x 400 g', 'protein', 10.9),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '12 x 400 g', 'fat', 7.3),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '12 x 400 g', 'fiber', 0.3),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '12 x 400 g', 'ash', 1.7),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '12 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '12 x 800 g', 'protein', 11),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '12 x 800 g', 'fat', 7),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '12 x 800 g', 'fiber', 0.3),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '12 x 800 g', 'ash', 2.3),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '12 x 800 g', 'moisture', 77),
  ('Alsa Nature', 'BIG-JUNIOR Medium eiwit', '3 kg', 'protein', 25),
  ('Alsa Nature', 'BIG-JUNIOR Medium eiwit', '3 kg', 'fat', 12),
  ('Alsa Nature', 'BIG-JUNIOR Medium eiwit', '3 kg', 'fiber', 2.3),
  ('Alsa Nature', 'BIG-JUNIOR Medium eiwit', '3 kg', 'ash', 6.1),
  ('Alsa Nature', 'BIG-JUNIOR Medium eiwit', '3 kg', 'calcium', 1.35),
  ('Alsa Nature', 'BIG-JUNIOR Medium eiwit', '3 kg', 'phosphorus', 0.95),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '30 x 800 g', 'protein', 11.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '30 x 800 g', 'fat', 5.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '30 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '30 x 800 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '30 x 800 g', 'moisture', 77),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '6 x 800 g', 'protein', 10.9),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '6 x 800 g', 'fat', 7.3),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '6 x 800 g', 'fiber', 0.3),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '6 x 800 g', 'ash', 1.7),
  ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', '6 x 800 g', 'moisture', 75),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '12 x 400 g', 'protein', 10.5),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '12 x 400 g', 'fat', 6.7),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '12 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '12 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '12 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '60 x 300 g', 'protein', 10.8),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '60 x 300 g', 'fat', 5.6),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '60 x 300 g', 'fiber', 0.5),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '60 x 300 g', 'ash', 2.5),
  ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', '60 x 300 g', 'moisture', 78),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '6 x 300 g', 'protein', 10.4),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '6 x 300 g', 'fat', 8),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '6 x 300 g', 'fiber', 0.6),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '6 x 300 g', 'ash', 2.6),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '6 x 300 g', 'moisture', 76),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '120 x 300 g', 'protein', 10.4),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '120 x 300 g', 'fat', 8),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '120 x 300 g', 'fiber', 0.6),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '120 x 300 g', 'ash', 2.6),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '120 x 300 g', 'moisture', 76),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '30 x 300 g', 'protein', 10.4),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '30 x 300 g', 'fat', 8),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '30 x 300 g', 'fiber', 0.6),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '30 x 300 g', 'ash', 2.6),
  ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', '30 x 300 g', 'moisture', 76),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '12 x 300 g', 'protein', 10.4),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '12 x 300 g', 'fat', 8),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '12 x 300 g', 'fiber', 0.6),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '12 x 300 g', 'ash', 2.6),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '12 x 300 g', 'moisture', 76),
  ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', '120 x 500 g', 'protein', 10.2),
  ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', '120 x 500 g', 'fat', 7),
  ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', '120 x 500 g', 'ash', 3),
  ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', '120 x 500 g', 'moisture', 76),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '30 x 300 g', 'protein', 10.3),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '30 x 300 g', 'fat', 5.5),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '30 x 300 g', 'fiber', 0.5),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '30 x 300 g', 'ash', 2.5),
  ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', '30 x 300 g', 'moisture', 78),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '12 x 300 g', 'protein', 10),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '12 x 300 g', 'fat', 4.9),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '12 x 300 g', 'fiber', 0.5),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '12 x 300 g', 'ash', 2.5),
  ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', '12 x 300 g', 'moisture', 77),
  ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', '6 x 500 g', 'protein', 10.7),
  ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', '6 x 500 g', 'fat', 8),
  ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', '6 x 500 g', 'ash', 2.6),
  ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', '6 x 500 g', 'moisture', 75),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '1,5 kg', 'protein', 24),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '1,5 kg', 'fat', 14),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '1,5 kg', 'fiber', 2.7),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '1,5 kg', 'ash', 5.8),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '1,5 kg', 'calcium', 0.66),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '1,5 kg', 'phosphorus', 0.52),
  ('Alsa Nature', 'INSECTUM Aardappel', '2 x 12 kg', 'protein', 22),
  ('Alsa Nature', 'INSECTUM Aardappel', '2 x 12 kg', 'fat', 12),
  ('Alsa Nature', 'INSECTUM Aardappel', '2 x 12 kg', 'fiber', 3),
  ('Alsa Nature', 'INSECTUM Aardappel', '2 x 12 kg', 'ash', 7),
  ('Alsa Nature', 'INSECTUM Aardappel', '2 x 12 kg', 'calcium', 0.9),
  ('Alsa Nature', 'INSECTUM Aardappel', '2 x 12 kg', 'phosphorus', 0.7),
  ('Alsa Nature', 'INSECTUM Rijst', '1,5 kg', 'protein', 20),
  ('Alsa Nature', 'INSECTUM Rijst', '1,5 kg', 'fat', 10),
  ('Alsa Nature', 'INSECTUM Rijst', '1,5 kg', 'fiber', 3),
  ('Alsa Nature', 'INSECTUM Rijst', '1,5 kg', 'ash', 6.5),
  ('Alsa Nature', 'INSECTUM Rijst', '1,5 kg', 'calcium', 1),
  ('Alsa Nature', 'INSECTUM Rijst', '1,5 kg', 'phosphorus', 0.75),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '6 kg', 'protein', 23.4),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '6 kg', 'fat', 13),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '6 kg', 'fiber', 3.9),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '6 kg', 'ash', 9),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '6 kg', 'calcium', 1.7),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '6 kg', 'phosphorus', 1.1),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '2 x 12 kg', 'protein', 23.4),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '2 x 12 kg', 'fat', 13),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '2 x 12 kg', 'fiber', 3.9),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '2 x 12 kg', 'ash', 9),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '2 x 12 kg', 'calcium', 1.7),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '2 x 12 kg', 'phosphorus', 1.1),
  ('Alsa Nature', 'Leverdieet', '2 x 12 kg', 'protein', 18),
  ('Alsa Nature', 'Leverdieet', '2 x 12 kg', 'fat', 16),
  ('Alsa Nature', 'Leverdieet', '2 x 12 kg', 'ash', 4.1),
  ('Alsa Nature', 'Leverdieet', '2 x 12 kg', 'calcium', 0.8),
  ('Alsa Nature', 'Leverdieet', '2 x 12 kg', 'phosphorus', 0.5),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '1,5 kg', 'protein', 24),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '1,5 kg', 'fat', 14),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '1,5 kg', 'fiber', 2.4),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '1,5 kg', 'ash', 7.9),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '1,5 kg', 'calcium', 1.5),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '1,5 kg', 'phosphorus', 0.9),
  ('Alsa Nature', 'Nierdieet', '1,5 kg', 'protein', 16.5),
  ('Alsa Nature', 'Nierdieet', '1,5 kg', 'fat', 18),
  ('Alsa Nature', 'Nierdieet', '1,5 kg', 'ash', 4.4),
  ('Alsa Nature', 'Nierdieet', '1,5 kg', 'calcium', 0.8),
  ('Alsa Nature', 'Nierdieet', '1,5 kg', 'phosphorus', 0.45),
  ('Alsa Nature', 'Vitaal Medium Eiwit', '12 kg', 'protein', 23),
  ('Alsa Nature', 'Vitaal Medium Eiwit', '12 kg', 'fat', 12),
  ('Alsa Nature', 'Vitaal Medium Eiwit', '12 kg', 'fiber', 2.9),
  ('Alsa Nature', 'Vitaal Medium Eiwit', '12 kg', 'ash', 6.4),
  ('Alsa Nature', 'Vitaal Medium Eiwit', '12 kg', 'calcium', 1.37),
  ('Alsa Nature', 'Vitaal Medium Eiwit', '12 kg', 'phosphorus', 1),
  ('Alsa Nature', 'Actief Speciaal Eiwit', '2 x 12 kg', 'protein', 31),
  ('Alsa Nature', 'Actief Speciaal Eiwit', '2 x 12 kg', 'fat', 22),
  ('Alsa Nature', 'Actief Speciaal Eiwit', '2 x 12 kg', 'fiber', 2.2),
  ('Alsa Nature', 'Actief Speciaal Eiwit', '2 x 12 kg', 'ash', 6.4),
  ('Alsa Nature', 'Actief Speciaal Eiwit', '2 x 12 kg', 'phosphorus', 0.95),
  ('Alsa Nature', 'INSECTUM Aardappel', '12 kg', 'protein', 22),
  ('Alsa Nature', 'INSECTUM Aardappel', '12 kg', 'fat', 12),
  ('Alsa Nature', 'INSECTUM Aardappel', '12 kg', 'fiber', 3),
  ('Alsa Nature', 'INSECTUM Aardappel', '12 kg', 'ash', 7),
  ('Alsa Nature', 'INSECTUM Aardappel', '12 kg', 'calcium', 0.9),
  ('Alsa Nature', 'INSECTUM Aardappel', '12 kg', 'phosphorus', 0.7),
  ('Alsa Nature', 'Nierdieet', '2 x 12 kg', 'protein', 16.5),
  ('Alsa Nature', 'Nierdieet', '2 x 12 kg', 'fat', 18),
  ('Alsa Nature', 'Nierdieet', '2 x 12 kg', 'ash', 4.4),
  ('Alsa Nature', 'Nierdieet', '2 x 12 kg', 'calcium', 0.8),
  ('Alsa Nature', 'Nierdieet', '2 x 12 kg', 'phosphorus', 0.45),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '1,5 kg', 'protein', 26),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '1,5 kg', 'fat', 11),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '1,5 kg', 'fiber', 2.5),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '1,5 kg', 'ash', 6.7),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '1,5 kg', 'calcium', 1.5),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '1,5 kg', 'phosphorus', 1),
  ('Alsa Nature', 'Senso', '3 kg', 'protein', 22),
  ('Alsa Nature', 'Senso', '3 kg', 'fat', 14),
  ('Alsa Nature', 'Senso', '3 kg', 'fiber', 2.5),
  ('Alsa Nature', 'Senso', '3 kg', 'ash', 8),
  ('Alsa Nature', 'Senso', '3 kg', 'calcium', 2),
  ('Alsa Nature', 'Senso', '3 kg', 'phosphorus', 1.15),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '2 x 12 kg', 'protein', 26),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '2 x 12 kg', 'fat', 11),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '2 x 12 kg', 'fiber', 2.5),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '2 x 12 kg', 'ash', 6.7),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '2 x 12 kg', 'calcium', 1.5),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '2 x 12 kg', 'phosphorus', 1),
  ('Alsa Nature', 'Senso', '1,5 kg', 'protein', 22),
  ('Alsa Nature', 'Senso', '1,5 kg', 'fat', 14),
  ('Alsa Nature', 'Senso', '1,5 kg', 'fiber', 2.5),
  ('Alsa Nature', 'Senso', '1,5 kg', 'ash', 8),
  ('Alsa Nature', 'Senso', '1,5 kg', 'calcium', 2),
  ('Alsa Nature', 'Senso', '1,5 kg', 'phosphorus', 1.15),
  ('Alsa Nature', 'Light Speciaal Eiwit', '6 kg', 'protein', 20),
  ('Alsa Nature', 'Light Speciaal Eiwit', '6 kg', 'fat', 8),
  ('Alsa Nature', 'Light Speciaal Eiwit', '6 kg', 'fiber', 2.7),
  ('Alsa Nature', 'Light Speciaal Eiwit', '6 kg', 'ash', 5.5),
  ('Alsa Nature', 'Light Speciaal Eiwit', '6 kg', 'calcium', 1.1),
  ('Alsa Nature', 'Light Speciaal Eiwit', '6 kg', 'phosphorus', 0.8),
  ('Alsa Nature', 'BIG-JUNIOR Medium eiwit', '6 kg', 'protein', 25),
  ('Alsa Nature', 'BIG-JUNIOR Medium eiwit', '6 kg', 'fat', 12),
  ('Alsa Nature', 'BIG-JUNIOR Medium eiwit', '6 kg', 'fiber', 2.3),
  ('Alsa Nature', 'BIG-JUNIOR Medium eiwit', '6 kg', 'ash', 6.1),
  ('Alsa Nature', 'BIG-JUNIOR Medium eiwit', '6 kg', 'calcium', 1.35),
  ('Alsa Nature', 'BIG-JUNIOR Medium eiwit', '6 kg', 'phosphorus', 0.95),
  ('Alsa Nature', 'Vitaal', '2 x 12 kg', 'protein', 26),
  ('Alsa Nature', 'Vitaal', '2 x 12 kg', 'fat', 14),
  ('Alsa Nature', 'Vitaal', '2 x 12 kg', 'fiber', 2.3),
  ('Alsa Nature', 'Vitaal', '2 x 12 kg', 'ash', 6.5),
  ('Alsa Nature', 'Vitaal', '2 x 12 kg', 'calcium', 1.5),
  ('Alsa Nature', 'Vitaal', '2 x 12 kg', 'phosphorus', 1),
  ('Alsa Nature', 'VEGGIE Groentemaaltijd met Hüttenkäse, fruit en kruiden', '375 g', 'protein', 6.5),
  ('Alsa Nature', 'VEGGIE Groentemaaltijd met Hüttenkäse, fruit en kruiden', '375 g', 'fat', 6),
  ('Alsa Nature', 'VEGGIE Groentemaaltijd met Hüttenkäse, fruit en kruiden', '375 g', 'fiber', 1.2),
  ('Alsa Nature', 'VEGGIE Groentemaaltijd met Hüttenkäse, fruit en kruiden', '375 g', 'ash', 2.2),
  ('Alsa Nature', 'VEGGIE Groentemaaltijd met Hüttenkäse, fruit en kruiden', '375 g', 'moisture', 72),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '800 g', 'protein', 10.6),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '800 g', 'fat', 6),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '800 g', 'fiber', 0.5),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '800 g', 'ash', 2),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '800 g', 'moisture', 76),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '12 x 800 g', 'protein', 10.6),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '12 x 800 g', 'fat', 6.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '12 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '12 x 800 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '12 x 800 g', 'moisture', 75),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '12 x 750 g', 'protein', 5.5),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '12 x 750 g', 'fat', 5),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '12 x 750 g', 'fiber', 1.5),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '12 x 750 g', 'ash', 2.5),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '12 x 750 g', 'moisture', 80),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '375 g', 'protein', 5.5),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '375 g', 'fat', 5),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '375 g', 'fiber', 1.5),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '375 g', 'ash', 2.5),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '375 g', 'moisture', 80),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '6 x 400 g', 'protein', 10.6),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '6 x 400 g', 'fat', 6),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '6 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '6 x 400 g', 'ash', 2),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '6 x 400 g', 'moisture', 76),
  ('Alsa Nature', 'FINEST Kalkoen-spiervlees met zoete aardappel, mango & lijnolie', '400 g', 'protein', 10.9),
  ('Alsa Nature', 'FINEST Kalkoen-spiervlees met zoete aardappel, mango & lijnolie', '400 g', 'fat', 6.3),
  ('Alsa Nature', 'FINEST Kalkoen-spiervlees met zoete aardappel, mango & lijnolie', '400 g', 'fiber', 0.5),
  ('Alsa Nature', 'FINEST Kalkoen-spiervlees met zoete aardappel, mango & lijnolie', '400 g', 'ash', 2.3),
  ('Alsa Nature', 'FINEST Kalkoen-spiervlees met zoete aardappel, mango & lijnolie', '400 g', 'moisture', 75),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '6 x 375 g', 'protein', 5.5),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '6 x 375 g', 'fat', 5),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '6 x 375 g', 'fiber', 1.5),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '6 x 375 g', 'ash', 2.5),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '6 x 375 g', 'moisture', 80),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '800 g', 'protein', 10.6),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '800 g', 'fat', 6.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '800 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Geit met pastinaak', '800 g', 'moisture', 75),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '12 x 375 g', 'protein', 5.5),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '12 x 375 g', 'fat', 5),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '12 x 375 g', 'fiber', 1.5),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '12 x 375 g', 'ash', 2.5),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '12 x 375 g', 'moisture', 80),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '750 g', 'protein', 5.5),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '750 g', 'fat', 5),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '750 g', 'fiber', 1.5),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '750 g', 'ash', 2.5),
  ('Alsa Nature', 'INSECTUM Insecten met wortel, zoete aardappel & courgette', '750 g', 'moisture', 80),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '6 x 750 g', 'protein', 5.5),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '6 x 750 g', 'fat', 5),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '6 x 750 g', 'fiber', 1.5),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '6 x 750 g', 'ash', 2.5),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '6 x 750 g', 'moisture', 80),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '90 x 800 g', 'protein', 10.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '90 x 800 g', 'fat', 5.3),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '90 x 800 g', 'fiber', 0.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '90 x 800 g', 'ash', 2.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '90 x 800 g', 'moisture', 80),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '60 x 400 g', 'protein', 10.2),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '60 x 400 g', 'fat', 5.6),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '60 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '60 x 400 g', 'ash', 2.4),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '60 x 400 g', 'moisture', 78),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '90 x 800 g', 'protein', 11.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '90 x 800 g', 'fat', 5.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '90 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '90 x 800 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '90 x 800 g', 'moisture', 77),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '6 x 800 g', 'protein', 10.4),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '6 x 800 g', 'fat', 5.3),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '6 x 800 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '6 x 800 g', 'ash', 2.5),
  ('Alsa Nature', 'JUBILEUM Kip & Kalkoen', '6 x 800 g', 'moisture', 80),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '60 x 400 g', 'protein', 12.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '60 x 400 g', 'fat', 4.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '60 x 400 g', 'fiber', 0.6),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '60 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', '60 x 400 g', 'moisture', 78),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '12 x 400 g', 'protein', 10.8),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '12 x 400 g', 'fat', 6.6),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '12 x 400 g', 'fiber', 0.7),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '12 x 400 g', 'ash', 1.9),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '12 x 400 g', 'moisture', 77),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '400 g', 'protein', 11),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '400 g', 'fat', 7.3),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '400 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '400 g', 'ash', 2),
  ('Alsa Nature', 'Classic Lam met volkorenpasta en wortel', '400 g', 'moisture', 75),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '800 g', 'protein', 10.8),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '800 g', 'fat', 6.6),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '800 g', 'fiber', 0.7),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '800 g', 'ash', 1.9),
  ('Alsa Nature', 'Classic Gevogelte met volkorenrijst en wortel', '800 g', 'moisture', 77),
  ('Alsa Nature', 'Speciaal Sensibel', '6 x 400 g', 'protein', 8.5),
  ('Alsa Nature', 'Speciaal Sensibel', '6 x 400 g', 'fat', 2.1),
  ('Alsa Nature', 'Speciaal Sensibel', '6 x 400 g', 'fiber', 0.6),
  ('Alsa Nature', 'Speciaal Sensibel', '6 x 400 g', 'ash', 2.2),
  ('Alsa Nature', 'Speciaal Sensibel', '6 x 400 g', 'moisture', 76),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '30 x 400 g', 'protein', 10.2),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '30 x 400 g', 'fat', 5.6),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '30 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '30 x 400 g', 'ash', 2.4),
  ('Alsa Nature', 'SINGLE Rendier met aardappel', '30 x 400 g', 'moisture', 78),
  ('Alsa Nature', 'Speciaal Sensibel', '12 x 400 g', 'protein', 8.5),
  ('Alsa Nature', 'Speciaal Sensibel', '12 x 400 g', 'fat', 2.1),
  ('Alsa Nature', 'Speciaal Sensibel', '12 x 400 g', 'fiber', 0.6),
  ('Alsa Nature', 'Speciaal Sensibel', '12 x 400 g', 'ash', 2.2),
  ('Alsa Nature', 'Speciaal Sensibel', '12 x 400 g', 'moisture', 76),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '400 g', 'protein', 11.2),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '400 g', 'fat', 7.3),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '400 g', 'fiber', 0.5),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '400 g', 'ash', 1.8),
  ('Alsa Nature', 'Classic Spiervlees met aardappel en wortel', '400 g', 'moisture', 75),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '6 x 400 g', 'protein', 10.8),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '6 x 400 g', 'fat', 7.2),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '6 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '6 x 400 g', 'ash', 2.1),
  ('Alsa Nature', 'SINGLE Lam met aardappel', '6 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'Gevogelteworst met rijst', '6 x 200 g', 'protein', 10.9),
  ('Alsa Nature', 'Gevogelteworst met rijst', '6 x 200 g', 'fat', 6.9),
  ('Alsa Nature', 'Gevogelteworst met rijst', '6 x 200 g', 'fiber', 0.5),
  ('Alsa Nature', 'Gevogelteworst met rijst', '6 x 200 g', 'ash', 2),
  ('Alsa Nature', 'Gevogelteworst met rijst', '6 x 200 g', 'moisture', 77),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '12 kg', 'protein', 24),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '12 kg', 'fat', 14),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '12 kg', 'fiber', 2.4),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '12 kg', 'ash', 7.9),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '12 kg', 'calcium', 1.5),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '12 kg', 'phosphorus', 0.9),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '12 kg', 'protein', 20),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '12 kg', 'fat', 10),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '12 kg', 'fiber', 2.3),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '12 kg', 'ash', 9),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '12 kg', 'calcium', 2),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '12 kg', 'phosphorus', 1.1),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '3 kg', 'protein', 25),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '3 kg', 'fat', 13),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '3 kg', 'fiber', 2),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '3 kg', 'ash', 7.1),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '3 kg', 'calcium', 1.4),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '3 kg', 'phosphorus', 0.9),
  ('Alsa Nature', 'INSECTUM Rijst', '12 kg', 'protein', 20),
  ('Alsa Nature', 'INSECTUM Rijst', '12 kg', 'fat', 10),
  ('Alsa Nature', 'INSECTUM Rijst', '12 kg', 'fiber', 3),
  ('Alsa Nature', 'INSECTUM Rijst', '12 kg', 'ash', 6.5),
  ('Alsa Nature', 'INSECTUM Rijst', '12 kg', 'calcium', 1),
  ('Alsa Nature', 'INSECTUM Rijst', '12 kg', 'phosphorus', 0.75),
  ('Alsa Nature', 'Pens worst', '6 x 200 g', 'protein', 11.8),
  ('Alsa Nature', 'Pens worst', '6 x 200 g', 'fat', 6.8),
  ('Alsa Nature', 'Pens worst', '6 x 200 g', 'fiber', 0.6),
  ('Alsa Nature', 'Pens worst', '6 x 200 g', 'ash', 1.8),
  ('Alsa Nature', 'Pens worst', '6 x 200 g', 'moisture', 76),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '3 kg', 'protein', 23.4),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '3 kg', 'fat', 13),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '3 kg', 'fiber', 3.9),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '3 kg', 'ash', 9),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '3 kg', 'calcium', 1.7),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '3 kg', 'phosphorus', 1.1),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '12 kg', 'protein', 23.4),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '12 kg', 'fat', 13),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '12 kg', 'fiber', 3.9),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '12 kg', 'ash', 9),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '12 kg', 'calcium', 1.7),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '12 kg', 'phosphorus', 1.1),
  ('Alsa Nature', 'Leverdieet', '12 kg', 'protein', 18),
  ('Alsa Nature', 'Leverdieet', '12 kg', 'fat', 16),
  ('Alsa Nature', 'Leverdieet', '12 kg', 'ash', 4.1),
  ('Alsa Nature', 'Leverdieet', '12 kg', 'calcium', 0.8),
  ('Alsa Nature', 'Leverdieet', '12 kg', 'phosphorus', 0.5),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '2 x 12 kg', 'protein', 25),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '2 x 12 kg', 'fat', 13),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '2 x 12 kg', 'fiber', 2),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '2 x 12 kg', 'ash', 7.1),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '2 x 12 kg', 'calcium', 1.4),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '2 x 12 kg', 'phosphorus', 0.9),
  ('Alsa Nature', 'Vitaal', '6 kg', 'protein', 26),
  ('Alsa Nature', 'Vitaal', '6 kg', 'fat', 14),
  ('Alsa Nature', 'Vitaal', '6 kg', 'fiber', 2.3),
  ('Alsa Nature', 'Vitaal', '6 kg', 'ash', 6.5),
  ('Alsa Nature', 'Vitaal', '6 kg', 'calcium', 1.5),
  ('Alsa Nature', 'Vitaal', '6 kg', 'phosphorus', 1),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '12 kg', 'protein', 26),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '12 kg', 'fat', 11),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '12 kg', 'fiber', 2.5),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '12 kg', 'ash', 6.7),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '12 kg', 'calcium', 1.5),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '12 kg', 'phosphorus', 1),
  ('Alsa Nature', 'Leverdieet', '3 kg', 'protein', 18),
  ('Alsa Nature', 'Leverdieet', '3 kg', 'fat', 16),
  ('Alsa Nature', 'Leverdieet', '3 kg', 'ash', 4.1),
  ('Alsa Nature', 'Leverdieet', '3 kg', 'calcium', 0.8),
  ('Alsa Nature', 'Leverdieet', '3 kg', 'phosphorus', 0.5),
  ('Alsa Nature', 'Vitaal Medium Eiwit', '2 x 12 kg', 'protein', 23),
  ('Alsa Nature', 'Vitaal Medium Eiwit', '2 x 12 kg', 'fat', 12),
  ('Alsa Nature', 'Vitaal Medium Eiwit', '2 x 12 kg', 'fiber', 2.9),
  ('Alsa Nature', 'Vitaal Medium Eiwit', '2 x 12 kg', 'ash', 6.4),
  ('Alsa Nature', 'Vitaal Medium Eiwit', '2 x 12 kg', 'calcium', 1.37),
  ('Alsa Nature', 'Vitaal Medium Eiwit', '2 x 12 kg', 'phosphorus', 1),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '6 kg', 'protein', 24),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '6 kg', 'fat', 14),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '6 kg', 'fiber', 2.7),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '6 kg', 'ash', 5.8),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '6 kg', 'calcium', 0.66),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '6 kg', 'phosphorus', 0.52),
  ('Alsa Nature', 'Vitaal', '1,5 kg', 'protein', 26),
  ('Alsa Nature', 'Vitaal', '1,5 kg', 'fat', 14),
  ('Alsa Nature', 'Vitaal', '1,5 kg', 'fiber', 2.3),
  ('Alsa Nature', 'Vitaal', '1,5 kg', 'ash', 6.5),
  ('Alsa Nature', 'Vitaal', '1,5 kg', 'calcium', 1.5),
  ('Alsa Nature', 'Vitaal', '1,5 kg', 'phosphorus', 1),
  ('Alsa Nature', 'Actief Speciaal Eiwit', '12 kg', 'protein', 31),
  ('Alsa Nature', 'Actief Speciaal Eiwit', '12 kg', 'fat', 22),
  ('Alsa Nature', 'Actief Speciaal Eiwit', '12 kg', 'fiber', 2.2),
  ('Alsa Nature', 'Actief Speciaal Eiwit', '12 kg', 'ash', 6.4),
  ('Alsa Nature', 'Actief Speciaal Eiwit', '12 kg', 'phosphorus', 0.95),
  ('Alsa Nature', 'Vitaal', '12 kg', 'protein', 26),
  ('Alsa Nature', 'Vitaal', '12 kg', 'fat', 14),
  ('Alsa Nature', 'Vitaal', '12 kg', 'fiber', 2.3),
  ('Alsa Nature', 'Vitaal', '12 kg', 'ash', 6.5),
  ('Alsa Nature', 'Vitaal', '12 kg', 'calcium', 1.5),
  ('Alsa Nature', 'Vitaal', '12 kg', 'phosphorus', 1),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '3 kg', 'protein', 24),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '3 kg', 'fat', 14),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '3 kg', 'fiber', 2.7),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '3 kg', 'ash', 5.8),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '3 kg', 'calcium', 0.66),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '3 kg', 'phosphorus', 0.52),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '6 kg', 'protein', 24),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '6 kg', 'fat', 14),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '6 kg', 'fiber', 2.4),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '6 kg', 'ash', 7.9),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '6 kg', 'calcium', 1.5),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '6 kg', 'phosphorus', 0.9),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '3 kg', 'protein', 24),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '3 kg', 'fat', 14),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '3 kg', 'fiber', 2.4),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '3 kg', 'ash', 7.9),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '3 kg', 'calcium', 1.5),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '3 kg', 'phosphorus', 0.9),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '6 kg', 'protein', 25),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '6 kg', 'fat', 13),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '6 kg', 'fiber', 2),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '6 kg', 'ash', 7.1),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '6 kg', 'calcium', 1.4),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '6 kg', 'phosphorus', 0.9),
  ('Alsa Nature', 'Vitaal Medium Eiwit', '6 kg', 'protein', 23),
  ('Alsa Nature', 'Vitaal Medium Eiwit', '6 kg', 'fat', 12),
  ('Alsa Nature', 'Vitaal Medium Eiwit', '6 kg', 'fiber', 2.9),
  ('Alsa Nature', 'Vitaal Medium Eiwit', '6 kg', 'ash', 6.4),
  ('Alsa Nature', 'Vitaal Medium Eiwit', '6 kg', 'calcium', 1.37),
  ('Alsa Nature', 'Vitaal Medium Eiwit', '6 kg', 'phosphorus', 1),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '3 kg', 'protein', 27),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '3 kg', 'fat', 12),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '3 kg', 'fiber', 3.7),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '3 kg', 'ash', 8),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '3 kg', 'moisture', 9),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '3 kg', 'calcium', 1.2),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '3 kg', 'phosphorus', 0.6),
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '2 x 12 kg', 'protein', 22.9),
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '2 x 12 kg', 'fat', 10.8),
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '2 x 12 kg', 'fiber', 4.6),
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '2 x 12 kg', 'ash', 10.8),
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '2 x 12 kg', 'calcium', 1.4),
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '2 x 12 kg', 'phosphorus', 1),
  ('Alsa Nature', 'INSECTUM Aardappel', '6 kg', 'protein', 22),
  ('Alsa Nature', 'INSECTUM Aardappel', '6 kg', 'fat', 12),
  ('Alsa Nature', 'INSECTUM Aardappel', '6 kg', 'fiber', 3),
  ('Alsa Nature', 'INSECTUM Aardappel', '6 kg', 'ash', 7),
  ('Alsa Nature', 'INSECTUM Aardappel', '6 kg', 'calcium', 0.9),
  ('Alsa Nature', 'INSECTUM Aardappel', '6 kg', 'phosphorus', 0.7),
  ('Alsa Nature', 'INSECTUM Rijst', '2 x 12 kg', 'protein', 20),
  ('Alsa Nature', 'INSECTUM Rijst', '2 x 12 kg', 'fat', 10),
  ('Alsa Nature', 'INSECTUM Rijst', '2 x 12 kg', 'fiber', 3),
  ('Alsa Nature', 'INSECTUM Rijst', '2 x 12 kg', 'ash', 6.5),
  ('Alsa Nature', 'INSECTUM Rijst', '2 x 12 kg', 'calcium', 1),
  ('Alsa Nature', 'INSECTUM Rijst', '2 x 12 kg', 'phosphorus', 0.75),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '3 kg', 'protein', 26),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '3 kg', 'fat', 11),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '3 kg', 'fiber', 2.5),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '3 kg', 'ash', 6.7),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '3 kg', 'calcium', 1.5),
  ('Alsa Nature', 'JUNIOR Medium eiwit', '3 kg', 'phosphorus', 1),
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '3 kg', 'protein', 22.9),
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '3 kg', 'fat', 10.8),
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '3 kg', 'fiber', 4.6),
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '3 kg', 'ash', 10.8),
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '3 kg', 'calcium', 1.4),
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '3 kg', 'phosphorus', 1),
  ('Alsa Nature', 'INSECTUM Rijst', '3 kg', 'protein', 20),
  ('Alsa Nature', 'INSECTUM Rijst', '3 kg', 'fat', 10),
  ('Alsa Nature', 'INSECTUM Rijst', '3 kg', 'fiber', 3),
  ('Alsa Nature', 'INSECTUM Rijst', '3 kg', 'ash', 6.5),
  ('Alsa Nature', 'INSECTUM Rijst', '3 kg', 'calcium', 1),
  ('Alsa Nature', 'INSECTUM Rijst', '3 kg', 'phosphorus', 0.75),
  ('Alsa Nature', 'Actief Speciaal Eiwit', '6 kg', 'protein', 31),
  ('Alsa Nature', 'Actief Speciaal Eiwit', '6 kg', 'fat', 22),
  ('Alsa Nature', 'Actief Speciaal Eiwit', '6 kg', 'fiber', 2.2),
  ('Alsa Nature', 'Actief Speciaal Eiwit', '6 kg', 'ash', 6.4),
  ('Alsa Nature', 'Actief Speciaal Eiwit', '6 kg', 'phosphorus', 0.95),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '12 kg', 'protein', 27),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '12 kg', 'fat', 12),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '12 kg', 'fiber', 3.7),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '12 kg', 'ash', 8),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '12 kg', 'moisture', 9),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '12 kg', 'calcium', 1.2),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '12 kg', 'phosphorus', 0.6),
  ('Alsa Nature', 'Senso Medium Eiwit', '2 x 12 kg', 'protein', 20),
  ('Alsa Nature', 'Senso Medium Eiwit', '2 x 12 kg', 'fat', 11),
  ('Alsa Nature', 'Senso Medium Eiwit', '2 x 12 kg', 'fiber', 2.6),
  ('Alsa Nature', 'Senso Medium Eiwit', '2 x 12 kg', 'ash', 8),
  ('Alsa Nature', 'Senso Medium Eiwit', '2 x 12 kg', 'calcium', 2),
  ('Alsa Nature', 'Senso Medium Eiwit', '2 x 12 kg', 'phosphorus', 1.15),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '1,5 kg', 'protein', 23.4),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '1,5 kg', 'fat', 13),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '1,5 kg', 'fiber', 3.9),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '1,5 kg', 'ash', 9),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '1,5 kg', 'calcium', 1.7),
  ('Alsa Nature', 'Gevoelig Paard & Aardappel', '1,5 kg', 'phosphorus', 1.1),
  ('Alsa Nature', 'Vitaal Medium Eiwit', '3 kg', 'protein', 23),
  ('Alsa Nature', 'Vitaal Medium Eiwit', '3 kg', 'fat', 12),
  ('Alsa Nature', 'Vitaal Medium Eiwit', '3 kg', 'fiber', 2.9),
  ('Alsa Nature', 'Vitaal Medium Eiwit', '3 kg', 'ash', 6.4),
  ('Alsa Nature', 'Vitaal Medium Eiwit', '3 kg', 'calcium', 1.37),
  ('Alsa Nature', 'Vitaal Medium Eiwit', '3 kg', 'phosphorus', 1),
  ('Alsa Nature', 'Nierdieet', '3 kg', 'protein', 16.5),
  ('Alsa Nature', 'Nierdieet', '3 kg', 'fat', 18),
  ('Alsa Nature', 'Nierdieet', '3 kg', 'ash', 4.4),
  ('Alsa Nature', 'Nierdieet', '3 kg', 'calcium', 0.8),
  ('Alsa Nature', 'Nierdieet', '3 kg', 'phosphorus', 0.45),
  ('Alsa Nature', 'Senso', '12 kg', 'protein', 22),
  ('Alsa Nature', 'Senso', '12 kg', 'fat', 14),
  ('Alsa Nature', 'Senso', '12 kg', 'fiber', 2.5),
  ('Alsa Nature', 'Senso', '12 kg', 'ash', 8),
  ('Alsa Nature', 'Senso', '12 kg', 'calcium', 2),
  ('Alsa Nature', 'Senso', '12 kg', 'phosphorus', 1.15),
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '1,5 kg', 'protein', 22.9),
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '1,5 kg', 'fat', 10.8),
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '1,5 kg', 'fiber', 4.6),
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '1,5 kg', 'ash', 10.8),
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '1,5 kg', 'calcium', 1.4),
  ('Alsa Nature', 'Hert & Aardappel granenvrij', '1,5 kg', 'phosphorus', 1),
  ('Alsa Nature', 'Senso', '2 x 12 kg', 'protein', 22),
  ('Alsa Nature', 'Senso', '2 x 12 kg', 'fat', 14),
  ('Alsa Nature', 'Senso', '2 x 12 kg', 'fiber', 2.5),
  ('Alsa Nature', 'Senso', '2 x 12 kg', 'ash', 8),
  ('Alsa Nature', 'Senso', '2 x 12 kg', 'calcium', 2),
  ('Alsa Nature', 'Senso', '2 x 12 kg', 'phosphorus', 1.15),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '2 x 12 kg', 'protein', 24),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '2 x 12 kg', 'fat', 14),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '2 x 12 kg', 'fiber', 2.4),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '2 x 12 kg', 'ash', 7.9),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '2 x 12 kg', 'calcium', 1.5),
  ('Alsa Nature', 'Sensigon Eend & Aardappel granenvrij', '2 x 12 kg', 'phosphorus', 0.9),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '12 kg', 'protein', 24),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '12 kg', 'fat', 14),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '12 kg', 'fiber', 2.7),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '12 kg', 'ash', 5.8),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '12 kg', 'calcium', 0.66),
  ('Alsa Nature', 'Haring & Aardappel granenvrij', '12 kg', 'phosphorus', 0.52),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '2 x 12 kg', 'protein', 27),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '2 x 12 kg', 'fat', 12),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '2 x 12 kg', 'fiber', 3.7),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '2 x 12 kg', 'ash', 8),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '2 x 12 kg', 'moisture', 9),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '2 x 12 kg', 'calcium', 1.2),
  ('Alsa Nature', 'Eend & Zoete aardappel granenvrij', '2 x 12 kg', 'phosphorus', 0.6),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '6 kg', 'protein', 20),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '6 kg', 'fat', 10),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '6 kg', 'fiber', 2.3),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '6 kg', 'ash', 9),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '6 kg', 'calcium', 2),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '6 kg', 'phosphorus', 1.1),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '1,5 kg', 'protein', 25),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '1,5 kg', 'fat', 13),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '1,5 kg', 'fiber', 2),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '1,5 kg', 'ash', 7.1),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '1,5 kg', 'calcium', 1.4),
  ('Alsa Nature', 'Gevogelte & Aardappel granenvrij', '1,5 kg', 'phosphorus', 0.9),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '3 kg', 'protein', 20),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '3 kg', 'fat', 10),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '3 kg', 'fiber', 2.3),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '3 kg', 'ash', 9),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '3 kg', 'calcium', 2),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '3 kg', 'phosphorus', 1.1),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '1,5 kg', 'protein', 20),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '1,5 kg', 'fat', 10),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '1,5 kg', 'fiber', 2.3),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '1,5 kg', 'ash', 9),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '1,5 kg', 'calcium', 2),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '1,5 kg', 'phosphorus', 1.1),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '2 x 12 kg', 'protein', 20),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '2 x 12 kg', 'fat', 10),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '2 x 12 kg', 'fiber', 2.3),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '2 x 12 kg', 'ash', 9),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '2 x 12 kg', 'calcium', 2),
  ('Alsa Nature', 'Lam & Aardappel granenvrij', '2 x 12 kg', 'phosphorus', 1.1),
  ('Alsa Nature', 'INSECTUM Rijst', '6 kg', 'protein', 20),
  ('Alsa Nature', 'INSECTUM Rijst', '6 kg', 'fat', 10),
  ('Alsa Nature', 'INSECTUM Rijst', '6 kg', 'fiber', 3),
  ('Alsa Nature', 'INSECTUM Rijst', '6 kg', 'ash', 6.5),
  ('Alsa Nature', 'INSECTUM Rijst', '6 kg', 'calcium', 1),
  ('Alsa Nature', 'INSECTUM Rijst', '6 kg', 'phosphorus', 0.75),
  ('Alsa Nature', 'Leverdieet', '1,5 kg', 'protein', 18),
  ('Alsa Nature', 'Leverdieet', '1,5 kg', 'fat', 16),
  ('Alsa Nature', 'Leverdieet', '1,5 kg', 'ash', 4.1),
  ('Alsa Nature', 'Leverdieet', '1,5 kg', 'calcium', 0.8),
  ('Alsa Nature', 'Leverdieet', '1,5 kg', 'phosphorus', 0.5),
  ('Alsa Nature', 'Nierdieet', '12 kg', 'protein', 16.5),
  ('Alsa Nature', 'Nierdieet', '12 kg', 'fat', 18),
  ('Alsa Nature', 'Nierdieet', '12 kg', 'ash', 4.4),
  ('Alsa Nature', 'Nierdieet', '12 kg', 'calcium', 0.8),
  ('Alsa Nature', 'Nierdieet', '12 kg', 'phosphorus', 0.45),
  ('Alsa Nature', 'Vitaal', '3 kg', 'protein', 26),
  ('Alsa Nature', 'Vitaal', '3 kg', 'fat', 14),
  ('Alsa Nature', 'Vitaal', '3 kg', 'fiber', 2.3),
  ('Alsa Nature', 'Vitaal', '3 kg', 'ash', 6.5),
  ('Alsa Nature', 'Vitaal', '3 kg', 'calcium', 1.5),
  ('Alsa Nature', 'Vitaal', '3 kg', 'phosphorus', 1),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '6 kg', 'protein', 22),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '6 kg', 'fat', 12),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '6 kg', 'fiber', 1.8),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '6 kg', 'ash', 9),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '6 kg', 'moisture', 9),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '6 kg', 'calcium', 2.4),
  ('Alsa Nature', 'Struisvogel Enkel-eiwit', '6 kg', 'phosphorus', 1.2),
  ('Alsa Nature', 'Nierdieet', '6 kg', 'protein', 16.5),
  ('Alsa Nature', 'Nierdieet', '6 kg', 'fat', 18),
  ('Alsa Nature', 'Nierdieet', '6 kg', 'ash', 4.4),
  ('Alsa Nature', 'Nierdieet', '6 kg', 'calcium', 0.8),
  ('Alsa Nature', 'Nierdieet', '6 kg', 'phosphorus', 0.45),
  ('Alsa Nature', 'Leverdieet', '6 kg', 'protein', 18),
  ('Alsa Nature', 'Leverdieet', '6 kg', 'fat', 16),
  ('Alsa Nature', 'Leverdieet', '6 kg', 'ash', 4.1),
  ('Alsa Nature', 'Leverdieet', '6 kg', 'calcium', 0.8),
  ('Alsa Nature', 'Leverdieet', '6 kg', 'phosphorus', 0.5),
  ('Alsa Nature', 'Lam & Rijst brokken', '3 kg', 'protein', 20),
  ('Alsa Nature', 'Lam & Rijst brokken', '3 kg', 'fat', 11.5),
  ('Alsa Nature', 'Lam & Rijst brokken', '3 kg', 'fiber', 2.3),
  ('Alsa Nature', 'Lam & Rijst brokken', '3 kg', 'ash', 5.5),
  ('Alsa Nature', 'Lam & Rijst brokken', '3 kg', 'calcium', 1.25),
  ('Alsa Nature', 'Lam & Rijst brokken', '3 kg', 'phosphorus', 0.85),
  ('Alsa Nature', 'Lam & Rijst brokken', '12 kg', 'protein', 20),
  ('Alsa Nature', 'Lam & Rijst brokken', '12 kg', 'fat', 11.5),
  ('Alsa Nature', 'Lam & Rijst brokken', '12 kg', 'fiber', 2.3),
  ('Alsa Nature', 'Lam & Rijst brokken', '12 kg', 'ash', 5.5),
  ('Alsa Nature', 'Lam & Rijst brokken', '12 kg', 'calcium', 1.25),
  ('Alsa Nature', 'Lam & Rijst brokken', '12 kg', 'phosphorus', 0.85),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '12 x 800 g', 'protein', 10.2),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '12 x 800 g', 'fat', 5.4),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '12 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '12 x 800 g', 'ash', 2.4),
  ('Alsa Nature', 'Senior Wild & Konijn met aardappel & paardebloem', '12 x 800 g', 'moisture', 79),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '6 x 400 g', 'protein', 11),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '6 x 400 g', 'fat', 7),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '6 x 400 g', 'fiber', 0.3),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '6 x 400 g', 'ash', 2.3),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '6 x 400 g', 'moisture', 77),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '12 x 400 g', 'protein', 11),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '12 x 400 g', 'fat', 7),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '12 x 400 g', 'fiber', 0.3),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '12 x 400 g', 'ash', 2.3),
  ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', '12 x 400 g', 'moisture', 77),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '200 g', 'protein', 10.6),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '200 g', 'fat', 7),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '200 g', 'fiber', 0.3),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '200 g', 'ash', 2.6),
  ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', '200 g', 'moisture', 77),
  ('Alsa Nature', 'BIO Rund met aardappel en rode bieten', '12 x 400 g', 'protein', 10.8),
  ('Alsa Nature', 'BIO Rund met aardappel en rode bieten', '12 x 400 g', 'fat', 7.3),
  ('Alsa Nature', 'BIO Rund met aardappel en rode bieten', '12 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'BIO Rund met aardappel en rode bieten', '12 x 400 g', 'ash', 2.1),
  ('Alsa Nature', 'BIO Rund met aardappel en rode bieten', '12 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '6 x 400 g', 'protein', 10.5),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '6 x 400 g', 'fat', 6.7),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '6 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '6 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '6 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '800 g', 'protein', 10.5),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '800 g', 'fat', 6.7),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '800 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '800 g', 'ash', 2.5),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '800 g', 'moisture', 75),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '12 x 800 g', 'protein', 10.5),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '12 x 800 g', 'fat', 6.7),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '12 x 800 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '12 x 800 g', 'ash', 2.5),
  ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', '12 x 800 g', 'moisture', 75),
  ('Alsa Nature', 'JUNIOR Eend met abrikoos', '6 x 400 g', 'protein', 10.8),
  ('Alsa Nature', 'JUNIOR Eend met abrikoos', '6 x 400 g', 'fat', 7.1),
  ('Alsa Nature', 'JUNIOR Eend met abrikoos', '6 x 400 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUNIOR Eend met abrikoos', '6 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'JUNIOR Eend met abrikoos', '6 x 400 g', 'moisture', 75),
  ('Alsa Nature', 'JUNIOR Eend met abrikoos', '6 x 400 g', 'calcium', 0.27),
  ('Alsa Nature', 'JUNIOR Eend met abrikoos', '6 x 400 g', 'phosphorus', 0.24),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '400 g', 'protein', 10.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '400 g', 'fat', 5.3),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '400 g', 'fiber', 0.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '400 g', 'ash', 2.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '400 g', 'moisture', 80),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '400 g', 'protein', 10.8),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '400 g', 'fat', 6.5),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '400 g', 'fiber', 0.4),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '400 g', 'ash', 2.5),
  ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', '400 g', 'moisture', 75),
  ('Alsa Nature', 'JUNIOR Runderhart met aardappel & wortel', '400 g', 'protein', 10.9),
  ('Alsa Nature', 'JUNIOR Runderhart met aardappel & wortel', '400 g', 'fat', 7.2),
  ('Alsa Nature', 'JUNIOR Runderhart met aardappel & wortel', '400 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUNIOR Runderhart met aardappel & wortel', '400 g', 'ash', 2.5),
  ('Alsa Nature', 'JUNIOR Runderhart met aardappel & wortel', '400 g', 'moisture', 75),
  ('Alsa Nature', 'JUNIOR Runderhart met aardappel & wortel', '400 g', 'calcium', 0.25),
  ('Alsa Nature', 'JUNIOR Runderhart met aardappel & wortel', '400 g', 'phosphorus', 0.23),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '800 g', 'protein', 10.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '800 g', 'fat', 5.3),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '800 g', 'fiber', 0.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '800 g', 'ash', 2.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '800 g', 'moisture', 80),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '6 x 800 g', 'protein', 10.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '6 x 800 g', 'fat', 5.3),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '6 x 800 g', 'fiber', 0.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '6 x 800 g', 'ash', 2.4),
  ('Alsa Nature', 'SINGLE Kalkoen puur', '6 x 800 g', 'moisture', 80),
  ('Alsa Nature', 'Light Speciaal Eiwit', '3 kg', 'protein', 20),
  ('Alsa Nature', 'Light Speciaal Eiwit', '3 kg', 'fat', 8),
  ('Alsa Nature', 'Light Speciaal Eiwit', '3 kg', 'fiber', 2.7),
  ('Alsa Nature', 'Light Speciaal Eiwit', '3 kg', 'ash', 5.5),
  ('Alsa Nature', 'Light Speciaal Eiwit', '3 kg', 'calcium', 1.1),
  ('Alsa Nature', 'Light Speciaal Eiwit', '3 kg', 'phosphorus', 0.8),
  ('Alsa Nature', 'Speciaal Light-menu', '60 x 400 g', 'protein', 10.1),
  ('Alsa Nature', 'Speciaal Light-menu', '60 x 400 g', 'fat', 2.2),
  ('Alsa Nature', 'Speciaal Light-menu', '60 x 400 g', 'fiber', 2),
  ('Alsa Nature', 'Speciaal Light-menu', '60 x 400 g', 'ash', 2.4),
  ('Alsa Nature', 'Speciaal Light-menu', '60 x 400 g', 'moisture', 79),
  ('Alsa Nature', 'JUNIOR Kip & zalm met aardappel', '400 g', 'protein', 10.9),
  ('Alsa Nature', 'JUNIOR Kip & zalm met aardappel', '400 g', 'fat', 7.2),
  ('Alsa Nature', 'JUNIOR Kip & zalm met aardappel', '400 g', 'fiber', 0.4),
  ('Alsa Nature', 'JUNIOR Kip & zalm met aardappel', '400 g', 'ash', 2.5),
  ('Alsa Nature', 'JUNIOR Kip & zalm met aardappel', '400 g', 'moisture', 75),
  ('Alsa Nature', 'JUNIOR Kip & zalm met aardappel', '400 g', 'calcium', 0.28),
  ('Alsa Nature', 'JUNIOR Kip & zalm met aardappel', '400 g', 'phosphorus', 0.25),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '12 x 400 g', 'protein', 10.6),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '12 x 400 g', 'fat', 6),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '12 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '12 x 400 g', 'ash', 2),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '12 x 400 g', 'moisture', 76),
  ('Alsa Nature', 'Speciaal Nierdieet', '30 x 400 g', 'protein', 6),
  ('Alsa Nature', 'Speciaal Nierdieet', '30 x 400 g', 'fat', 6.7),
  ('Alsa Nature', 'Speciaal Nierdieet', '30 x 400 g', 'fiber', 1.4),
  ('Alsa Nature', 'Speciaal Nierdieet', '30 x 400 g', 'ash', 2.1),
  ('Alsa Nature', 'Speciaal Nierdieet', '30 x 400 g', 'moisture', 71),
  ('Alsa Nature', 'Speciaal Nierdieet', '30 x 400 g', 'calcium', 0.17),
  ('Alsa Nature', 'Speciaal Nierdieet', '30 x 400 g', 'phosphorus', 0.1),
  ('Alsa Nature', 'Speciaal Sensibel', '30 x 200 g', 'protein', 8.5),
  ('Alsa Nature', 'Speciaal Sensibel', '30 x 200 g', 'fat', 2.1),
  ('Alsa Nature', 'Speciaal Sensibel', '30 x 200 g', 'fiber', 0.6),
  ('Alsa Nature', 'Speciaal Sensibel', '30 x 200 g', 'ash', 2.2),
  ('Alsa Nature', 'Speciaal Sensibel', '30 x 200 g', 'moisture', 76),
  ('Alsa Nature', 'Speciaal Sensibel', '60 x 400 g', 'protein', 8.5),
  ('Alsa Nature', 'Speciaal Sensibel', '60 x 400 g', 'fat', 2.1),
  ('Alsa Nature', 'Speciaal Sensibel', '60 x 400 g', 'fiber', 0.6),
  ('Alsa Nature', 'Speciaal Sensibel', '60 x 400 g', 'ash', 2.2),
  ('Alsa Nature', 'Speciaal Sensibel', '60 x 400 g', 'moisture', 76),
  ('Alsa Nature', 'Speciaal Single-sensitief', '30 x 400 g', 'protein', 8.4),
  ('Alsa Nature', 'Speciaal Single-sensitief', '30 x 400 g', 'fat', 4.8),
  ('Alsa Nature', 'Speciaal Single-sensitief', '30 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'Speciaal Single-sensitief', '30 x 400 g', 'ash', 2.2),
  ('Alsa Nature', 'Speciaal Single-sensitief', '30 x 400 g', 'moisture', 81),
  ('Alsa Nature', 'Speciaal Single-sensitief', '60 x 400 g', 'protein', 8.4),
  ('Alsa Nature', 'Speciaal Single-sensitief', '60 x 400 g', 'fat', 4.8),
  ('Alsa Nature', 'Speciaal Single-sensitief', '60 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'Speciaal Single-sensitief', '60 x 400 g', 'ash', 2.2),
  ('Alsa Nature', 'Speciaal Single-sensitief', '60 x 400 g', 'moisture', 81),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '6 x 800 g', 'protein', 10.6),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '6 x 800 g', 'fat', 6),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '6 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '6 x 800 g', 'ash', 2),
  ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', '6 x 800 g', 'moisture', 76),
  ('Alsa Nature', 'SIMPLE Wild puur', '6 x 400 g', 'protein', 10.8),
  ('Alsa Nature', 'SIMPLE Wild puur', '6 x 400 g', 'fat', 6.3),
  ('Alsa Nature', 'SIMPLE Wild puur', '6 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SIMPLE Wild puur', '6 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'SIMPLE Wild puur', '6 x 400 g', 'moisture', 77),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '120 x 400 g', 'protein', 11.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '120 x 400 g', 'fat', 5.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '120 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '120 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '120 x 400 g', 'moisture', 77),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '750 g', 'protein', 5.5),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '750 g', 'fat', 5),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '750 g', 'fiber', 1.5),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '750 g', 'ash', 2.5),
  ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', '750 g', 'moisture', 80),
  ('Alsa Nature', 'SIMPLE Wild puur', '12 x 400 g', 'protein', 10.8),
  ('Alsa Nature', 'SIMPLE Wild puur', '12 x 400 g', 'fat', 6.3),
  ('Alsa Nature', 'SIMPLE Wild puur', '12 x 400 g', 'fiber', 0.5),
  ('Alsa Nature', 'SIMPLE Wild puur', '12 x 400 g', 'ash', 2.5),
  ('Alsa Nature', 'SIMPLE Wild puur', '12 x 400 g', 'moisture', 77),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '60 x 800 g', 'protein', 11.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '60 x 800 g', 'fat', 5.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '60 x 800 g', 'fiber', 0.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '60 x 800 g', 'ash', 2.5),
  ('Alsa Nature', 'SINGLE Paard met aardappel', '60 x 800 g', 'moisture', 77),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '90 x 300 g', 'protein', 10.4),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '90 x 300 g', 'fat', 8),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '90 x 300 g', 'fiber', 0.6),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '90 x 300 g', 'ash', 2.6),
  ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', '90 x 300 g', 'moisture', 76),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '6 x 400 g', 'protein', 10.6),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '6 x 400 g', 'fat', 6.3),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '6 x 400 g', 'fiber', 0.5),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '6 x 400 g', 'ash', 2.5),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '6 x 400 g', 'moisture', 75),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '6 x 400 g', 'protein', 10.8),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '6 x 400 g', 'fat', 6.5),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '6 x 400 g', 'fiber', 0.5),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '6 x 400 g', 'ash', 2.5),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '6 x 400 g', 'moisture', 75),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '12 x 400 g', 'protein', 10.7),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '12 x 400 g', 'fat', 6.4),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '12 x 400 g', 'fiber', 0.5),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '12 x 400 g', 'ash', 2.5),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '12 x 400 g', 'moisture', 75),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '400 g', 'protein', 10.5),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '400 g', 'fat', 6.9),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '400 g', 'fiber', 0.5),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '400 g', 'ash', 2.5),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '400 g', 'moisture', 75),
  ('Isegrim', 'STEPPE Lam met bessen & wilde kruiden', '12 kg', 'protein', 28),
  ('Isegrim', 'STEPPE Lam met bessen & wilde kruiden', '12 kg', 'fat', 14),
  ('Isegrim', 'STEPPE Lam met bessen & wilde kruiden', '12 kg', 'fiber', 3.5),
  ('Isegrim', 'STEPPE Lam met bessen & wilde kruiden', '12 kg', 'ash', 7.8),
  ('Isegrim', 'STEPPE Lam met bessen & wilde kruiden', '12 kg', 'calcium', 1.6),
  ('Isegrim', 'STEPPE Lam met bessen & wilde kruiden', '12 kg', 'phosphorus', 1.2),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '12 x 800 g', 'protein', 11.1),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '12 x 800 g', 'fat', 6.6),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '12 x 800 g', 'fiber', 0.5),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '12 x 800 g', 'ash', 2.5),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '12 x 800 g', 'moisture', 75),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '800 g', 'protein', 10.8),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '800 g', 'fat', 6.5),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '800 g', 'fiber', 0.5),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '800 g', 'ash', 2.5),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '800 g', 'moisture', 75),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '12 x 400 g', 'protein', 10.6),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '12 x 400 g', 'fat', 6.3),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '12 x 400 g', 'fiber', 0.5),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '12 x 400 g', 'ash', 2.5),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '12 x 400 g', 'moisture', 75),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '800 g', 'protein', 10.1),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '800 g', 'fat', 6.6),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '800 g', 'fiber', 0.5),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '800 g', 'ash', 2.5),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '800 g', 'moisture', 75),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '6 x 400 g', 'protein', 10.7),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '6 x 400 g', 'fat', 6.4),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '6 x 400 g', 'fiber', 0.5),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '6 x 400 g', 'ash', 2.5),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '6 x 400 g', 'moisture', 75),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '800 g', 'protein', 10.6),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '800 g', 'fat', 6.3),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '800 g', 'fiber', 0.5),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '800 g', 'ash', 2.5),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '800 g', 'moisture', 75),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '6 x 400 g', 'protein', 10.7),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '6 x 400 g', 'fat', 6.6),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '6 x 400 g', 'fiber', 0.5),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '6 x 400 g', 'ash', 2.5),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '6 x 400 g', 'moisture', 75),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '12 x 800 g', 'protein', 10.5),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '12 x 800 g', 'fat', 6.9),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '12 x 800 g', 'fiber', 0.5),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '12 x 800 g', 'ash', 2.5),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '12 x 800 g', 'moisture', 75),
  ('Isegrim', 'GREEN HILLS Eend met bessen & wilde kruiden', '3 kg', 'protein', 36),
  ('Isegrim', 'GREEN HILLS Eend met bessen & wilde kruiden', '3 kg', 'fat', 17),
  ('Isegrim', 'GREEN HILLS Eend met bessen & wilde kruiden', '3 kg', 'fiber', 2.3),
  ('Isegrim', 'GREEN HILLS Eend met bessen & wilde kruiden', '3 kg', 'ash', 8.2),
  ('Isegrim', 'GREEN HILLS Eend met bessen & wilde kruiden', '3 kg', 'calcium', 1.8),
  ('Isegrim', 'GREEN HILLS Eend met bessen & wilde kruiden', '3 kg', 'phosphorus', 1.3),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '6 x 400 g', 'protein', 11.1),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '6 x 400 g', 'fat', 6.6),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '6 x 400 g', 'fiber', 0.5),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '6 x 400 g', 'ash', 2.5),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '6 x 400 g', 'moisture', 75),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '12 x 800 g', 'protein', 10.7),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '12 x 800 g', 'fat', 6.4),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '12 x 800 g', 'fiber', 0.5),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '12 x 800 g', 'ash', 2.5),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '12 x 800 g', 'moisture', 75),
  ('Isegrim', 'Puppy en Junior FOREST Wildzwijn met aardappelen', '400 g', 'protein', 10.6),
  ('Isegrim', 'Puppy en Junior FOREST Wildzwijn met aardappelen', '400 g', 'fat', 6.6),
  ('Isegrim', 'Puppy en Junior FOREST Wildzwijn met aardappelen', '400 g', 'fiber', 0.5),
  ('Isegrim', 'Puppy en Junior FOREST Wildzwijn met aardappelen', '400 g', 'ash', 2.2),
  ('Isegrim', 'Puppy en Junior FOREST Wildzwijn met aardappelen', '400 g', 'moisture', 75),
  ('Isegrim', 'Puppy en Junior FOREST Wildzwijn met aardappelen', '12 x 400 g', 'protein', 10.6),
  ('Isegrim', 'Puppy en Junior FOREST Wildzwijn met aardappelen', '12 x 400 g', 'fat', 6.6),
  ('Isegrim', 'Puppy en Junior FOREST Wildzwijn met aardappelen', '12 x 400 g', 'fiber', 0.5),
  ('Isegrim', 'Puppy en Junior FOREST Wildzwijn met aardappelen', '12 x 400 g', 'ash', 2.2),
  ('Isegrim', 'Puppy en Junior FOREST Wildzwijn met aardappelen', '12 x 400 g', 'moisture', 75),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '400 g', 'protein', 10.1),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '400 g', 'fat', 6.6),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '400 g', 'fiber', 0.5),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '400 g', 'ash', 2.5),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '400 g', 'moisture', 75),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met bessen', '3 kg', 'protein', 37),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met bessen', '3 kg', 'fat', 18),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met bessen', '3 kg', 'fiber', 2),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met bessen', '3 kg', 'ash', 8.2),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met bessen', '3 kg', 'calcium', 1.5),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met bessen', '3 kg', 'phosphorus', 1.1),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '6 x 800 g', 'protein', 10.7),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '6 x 800 g', 'fat', 6.6),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '6 x 800 g', 'fiber', 0.5),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '6 x 800 g', 'ash', 2.5),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '6 x 800 g', 'moisture', 75),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '6 x 800 g', 'protein', 10.7),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '6 x 800 g', 'fat', 6.4),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '6 x 800 g', 'fiber', 0.5),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '6 x 800 g', 'ash', 2.5),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '6 x 800 g', 'moisture', 75),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '6 x 800 g', 'protein', 11.1),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '6 x 800 g', 'fat', 6.6),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '6 x 800 g', 'fiber', 0.5),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '6 x 800 g', 'ash', 2.5),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '6 x 800 g', 'moisture', 75),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '6 x 400 g', 'protein', 10.1),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '6 x 400 g', 'fat', 6.6),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '6 x 400 g', 'fiber', 0.5),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '6 x 400 g', 'ash', 2.5),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '6 x 400 g', 'moisture', 75),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '400 g', 'protein', 10.8),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '400 g', 'fat', 6.5),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '400 g', 'fiber', 0.5),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '400 g', 'ash', 2.5),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '400 g', 'moisture', 75),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '12 x 800 g', 'protein', 10.8),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '12 x 800 g', 'fat', 6.5),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '12 x 800 g', 'fiber', 0.5),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '12 x 800 g', 'ash', 2.5),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '12 x 800 g', 'moisture', 75),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '12 x 400 g', 'protein', 10.5),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '12 x 400 g', 'fat', 6.9),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '12 x 400 g', 'fiber', 0.5),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '12 x 400 g', 'ash', 2.5),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '12 x 400 g', 'moisture', 75),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '800 g', 'protein', 10.5),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '800 g', 'fat', 6.9),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '800 g', 'fiber', 0.5),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '800 g', 'ash', 2.5),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '800 g', 'moisture', 75),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '6 x 800 g', 'protein', 10.8),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '6 x 800 g', 'fat', 6.5),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '6 x 800 g', 'fiber', 0.5),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '6 x 800 g', 'ash', 2.5),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '6 x 800 g', 'moisture', 75),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '12 x 400 g', 'protein', 10.7),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '12 x 400 g', 'fat', 6.6),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '12 x 400 g', 'fiber', 0.5),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '12 x 400 g', 'ash', 2.5),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '12 x 400 g', 'moisture', 75),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '12 x 400 g', 'protein', 11.1),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '12 x 400 g', 'fat', 6.6),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '12 x 400 g', 'fiber', 0.5),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '12 x 400 g', 'ash', 2.5),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '12 x 400 g', 'moisture', 75),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '800 g', 'protein', 10.7),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '800 g', 'fat', 6.6),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '800 g', 'fiber', 0.5),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '800 g', 'ash', 2.5),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '800 g', 'moisture', 75),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '400 g', 'protein', 10.7),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '400 g', 'fat', 6.6),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '400 g', 'fiber', 0.5),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '400 g', 'ash', 2.5),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '400 g', 'moisture', 75),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '6 x 800 g', 'protein', 10.5),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '6 x 800 g', 'fat', 6.9),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '6 x 800 g', 'fiber', 0.5),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '6 x 800 g', 'ash', 2.5),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '6 x 800 g', 'moisture', 75),
  ('Isegrim', 'Puppy en Junior FOREST Wildzwijn met aardappelen', '6 x 400 g', 'protein', 10.6),
  ('Isegrim', 'Puppy en Junior FOREST Wildzwijn met aardappelen', '6 x 400 g', 'fat', 6.6),
  ('Isegrim', 'Puppy en Junior FOREST Wildzwijn met aardappelen', '6 x 400 g', 'fiber', 0.5),
  ('Isegrim', 'Puppy en Junior FOREST Wildzwijn met aardappelen', '6 x 400 g', 'ash', 2.2),
  ('Isegrim', 'Puppy en Junior FOREST Wildzwijn met aardappelen', '6 x 400 g', 'moisture', 75),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '400 g', 'protein', 10.6),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '400 g', 'fat', 6.3),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '400 g', 'fiber', 0.5),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '400 g', 'ash', 2.5),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '400 g', 'moisture', 75),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '12 x 400 g', 'protein', 10.7),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '12 x 400 g', 'fat', 6.4),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '12 x 400 g', 'fiber', 0.5),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '12 x 400 g', 'ash', 2.5),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '12 x 400 g', 'moisture', 75),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '12 x 800 g', 'protein', 10.7),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '12 x 800 g', 'fat', 6.6),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '12 x 800 g', 'fiber', 0.5),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '12 x 800 g', 'ash', 2.5),
  ('Isegrim', 'PRAIRIE Gans met zoete aardappelen, rozenbottels en wilde kruiden', '12 x 800 g', 'moisture', 75),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '12 x 800 g', 'protein', 10.1),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '12 x 800 g', 'fat', 6.6),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '12 x 800 g', 'fiber', 0.5),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '12 x 800 g', 'ash', 2.5),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '12 x 800 g', 'moisture', 75),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '400 g', 'protein', 10.7),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '400 g', 'fat', 6.4),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '400 g', 'fiber', 0.5),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '400 g', 'ash', 2.5),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '400 g', 'moisture', 75),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '12 x 800 g', 'protein', 10.7),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '12 x 800 g', 'fat', 6.4),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '12 x 800 g', 'fiber', 0.5),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '12 x 800 g', 'ash', 2.5),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '12 x 800 g', 'moisture', 75),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '12 x 400 g', 'protein', 10.8),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '12 x 400 g', 'fat', 6.5),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '12 x 400 g', 'fiber', 0.5),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '12 x 400 g', 'ash', 2.5),
  ('Isegrim', 'TUNDRA Eend met pastinaak & wegedoornbessen', '12 x 400 g', 'moisture', 75),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '800 g', 'protein', 10.7),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '800 g', 'fat', 6.4),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '800 g', 'fiber', 0.5),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '800 g', 'ash', 2.5),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '800 g', 'moisture', 75),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '6 x 400 g', 'protein', 10.5),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '6 x 400 g', 'fat', 6.9),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '6 x 400 g', 'fiber', 0.5),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '6 x 400 g', 'ash', 2.5),
  ('Isegrim', 'FOREST Rendier met bramen, champignons & wilde kruiden', '6 x 400 g', 'moisture', 75),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '800 g', 'protein', 11.1),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '800 g', 'fat', 6.6),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '800 g', 'fiber', 0.5),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '800 g', 'ash', 2.5),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '800 g', 'moisture', 75),
  ('Isegrim', 'GREEN HILLS Eend met bessen & wilde kruiden', '12 kg', 'protein', 36),
  ('Isegrim', 'GREEN HILLS Eend met bessen & wilde kruiden', '12 kg', 'fat', 17),
  ('Isegrim', 'GREEN HILLS Eend met bessen & wilde kruiden', '12 kg', 'fiber', 2.3),
  ('Isegrim', 'GREEN HILLS Eend met bessen & wilde kruiden', '12 kg', 'ash', 8.2),
  ('Isegrim', 'GREEN HILLS Eend met bessen & wilde kruiden', '12 kg', 'calcium', 1.8),
  ('Isegrim', 'GREEN HILLS Eend met bessen & wilde kruiden', '12 kg', 'phosphorus', 1.3),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met bessen', '12 kg', 'protein', 37),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met bessen', '12 kg', 'fat', 18),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met bessen', '12 kg', 'fiber', 2),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met bessen', '12 kg', 'ash', 8.2),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met bessen', '12 kg', 'calcium', 1.5),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met bessen', '12 kg', 'phosphorus', 1.1),
  ('Isegrim', 'FOREST Edelhert met bessen & wilde kruiden', '3 kg', 'protein', 26),
  ('Isegrim', 'FOREST Edelhert met bessen & wilde kruiden', '3 kg', 'fat', 15),
  ('Isegrim', 'FOREST Edelhert met bessen & wilde kruiden', '3 kg', 'fiber', 3.2),
  ('Isegrim', 'FOREST Edelhert met bessen & wilde kruiden', '3 kg', 'ash', 9),
  ('Isegrim', 'FOREST Edelhert met bessen & wilde kruiden', '3 kg', 'calcium', 1.6),
  ('Isegrim', 'FOREST Edelhert met bessen & wilde kruiden', '3 kg', 'phosphorus', 1.1),
  ('Isegrim', 'FOREST Edelhert met bessen & wilde kruiden', '12 kg', 'protein', 26),
  ('Isegrim', 'FOREST Edelhert met bessen & wilde kruiden', '12 kg', 'fat', 15),
  ('Isegrim', 'FOREST Edelhert met bessen & wilde kruiden', '12 kg', 'fiber', 3.2),
  ('Isegrim', 'FOREST Edelhert met bessen & wilde kruiden', '12 kg', 'ash', 9),
  ('Isegrim', 'FOREST Edelhert met bessen & wilde kruiden', '12 kg', 'calcium', 1.6),
  ('Isegrim', 'FOREST Edelhert met bessen & wilde kruiden', '12 kg', 'phosphorus', 1.1),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '6 x 400 g', 'protein', 10.7),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '6 x 400 g', 'fat', 6.4),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '6 x 400 g', 'fiber', 0.5),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '6 x 400 g', 'ash', 2.5),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '6 x 400 g', 'moisture', 75),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '6 x 800 g', 'protein', 10.6),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '6 x 800 g', 'fat', 6.3),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '6 x 800 g', 'fiber', 0.5),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '6 x 800 g', 'ash', 2.5),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '6 x 800 g', 'moisture', 75),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '400 g', 'protein', 10.7),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '400 g', 'fat', 6.4),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '400 g', 'fiber', 0.5),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '400 g', 'ash', 2.5),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '400 g', 'moisture', 75),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '12 x 400 g', 'protein', 10.1),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '12 x 400 g', 'fat', 6.6),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '12 x 400 g', 'fiber', 0.5),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '12 x 400 g', 'ash', 2.5),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '12 x 400 g', 'moisture', 75),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '12 x 800 g', 'protein', 10.6),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '12 x 800 g', 'fat', 6.3),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '12 x 800 g', 'fiber', 0.5),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '12 x 800 g', 'ash', 2.5),
  ('Isegrim', 'RIVER Zalm met gierst, blauwe bosbessen & wilde kruiden', '12 x 800 g', 'moisture', 75),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '6 x 800 g', 'protein', 10.1),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '6 x 800 g', 'fat', 6.6),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '6 x 800 g', 'fiber', 0.5),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '6 x 800 g', 'ash', 2.5),
  ('Isegrim', 'STEPPE Paard met appelbessen, champignons & wilde kruiden', '6 x 800 g', 'moisture', 75),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '6 x 800 g', 'protein', 10.7),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '6 x 800 g', 'fat', 6.4),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '6 x 800 g', 'fiber', 0.5),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '6 x 800 g', 'ash', 2.5),
  ('Isegrim', 'FOREST Hert met aardperen, rode bosbessen & wilde kruiden', '6 x 800 g', 'moisture', 75),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '800 g', 'protein', 10.7),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '800 g', 'fat', 6.4),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '800 g', 'fiber', 0.5),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '800 g', 'ash', 2.5),
  ('Isegrim', 'RIVER Forel met pastinaak, cranberry''s & wilde kruiden', '800 g', 'moisture', 75),
  ('Isegrim', 'RIVER Zalm met bessen & wilde kruiden', '3 kg', 'protein', 34),
  ('Isegrim', 'RIVER Zalm met bessen & wilde kruiden', '3 kg', 'fat', 15),
  ('Isegrim', 'RIVER Zalm met bessen & wilde kruiden', '3 kg', 'fiber', 2),
  ('Isegrim', 'RIVER Zalm met bessen & wilde kruiden', '3 kg', 'ash', 8.3),
  ('Isegrim', 'RIVER Zalm met bessen & wilde kruiden', '3 kg', 'calcium', 1.3),
  ('Isegrim', 'RIVER Zalm met bessen & wilde kruiden', '3 kg', 'phosphorus', 1),
  ('Isegrim', 'RIVER Zalm met bessen & wilde kruiden', '12 kg', 'protein', 34),
  ('Isegrim', 'RIVER Zalm met bessen & wilde kruiden', '12 kg', 'fat', 15),
  ('Isegrim', 'RIVER Zalm met bessen & wilde kruiden', '12 kg', 'fiber', 2),
  ('Isegrim', 'RIVER Zalm met bessen & wilde kruiden', '12 kg', 'ash', 8.3),
  ('Isegrim', 'RIVER Zalm met bessen & wilde kruiden', '12 kg', 'calcium', 1.3),
  ('Isegrim', 'RIVER Zalm met bessen & wilde kruiden', '12 kg', 'phosphorus', 1),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '400 g', 'protein', 11.1),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '400 g', 'fat', 6.6),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '400 g', 'fiber', 0.5),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '400 g', 'ash', 2.5),
  ('Isegrim', 'Puppy en Junior RIVER Zalm met gierst', '400 g', 'moisture', 75),
  ('Isegrim', 'STEPPE Lam met bessen & wilde kruiden', '3 kg', 'protein', 28),
  ('Isegrim', 'STEPPE Lam met bessen & wilde kruiden', '3 kg', 'fat', 14),
  ('Isegrim', 'STEPPE Lam met bessen & wilde kruiden', '3 kg', 'fiber', 3.5),
  ('Isegrim', 'STEPPE Lam met bessen & wilde kruiden', '3 kg', 'ash', 7.8),
  ('Isegrim', 'STEPPE Lam met bessen & wilde kruiden', '3 kg', 'calcium', 1.6),
  ('Isegrim', 'STEPPE Lam met bessen & wilde kruiden', '3 kg', 'phosphorus', 1.2),
  ('Isegrim Roots', 'RIVER Zalm & Forel', '7 x 410 g', 'protein', 11),
  ('Isegrim Roots', 'RIVER Zalm & Forel', '7 x 410 g', 'fat', 5.7),
  ('Isegrim Roots', 'RIVER Zalm & Forel', '7 x 410 g', 'fiber', 0.5),
  ('Isegrim Roots', 'RIVER Zalm & Forel', '7 x 410 g', 'ash', 2.3),
  ('Isegrim Roots', 'RIVER Zalm & Forel', '7 x 410 g', 'moisture', 79),
  ('Isegrim Roots', 'FIELD Paard', '7 x 410 g', 'protein', 11),
  ('Isegrim Roots', 'FIELD Paard', '7 x 410 g', 'fat', 5.7),
  ('Isegrim Roots', 'FIELD Paard', '7 x 410 g', 'fiber', 0.5),
  ('Isegrim Roots', 'FIELD Paard', '7 x 410 g', 'ash', 2.3),
  ('Isegrim Roots', 'FIELD Paard', '7 x 410 g', 'moisture', 79),
  ('Isegrim Roots', 'RIVER Zalm & Forel', '35 x 410 g', 'protein', 11),
  ('Isegrim Roots', 'RIVER Zalm & Forel', '35 x 410 g', 'fat', 5.7),
  ('Isegrim Roots', 'RIVER Zalm & Forel', '35 x 410 g', 'fiber', 0.5),
  ('Isegrim Roots', 'RIVER Zalm & Forel', '35 x 410 g', 'ash', 2.3),
  ('Isegrim Roots', 'RIVER Zalm & Forel', '35 x 410 g', 'moisture', 79),
  ('Isegrim Roots', 'FIELD Paard', '14 x 410 g', 'protein', 11),
  ('Isegrim Roots', 'FIELD Paard', '14 x 410 g', 'fat', 5.7),
  ('Isegrim Roots', 'FIELD Paard', '14 x 410 g', 'fiber', 0.5),
  ('Isegrim Roots', 'FIELD Paard', '14 x 410 g', 'ash', 2.3),
  ('Isegrim Roots', 'FIELD Paard', '14 x 410 g', 'moisture', 79),
  ('Isegrim Roots', 'FIELD Paard', '35 x 410 g', 'protein', 11),
  ('Isegrim Roots', 'FIELD Paard', '35 x 410 g', 'fat', 5.7),
  ('Isegrim Roots', 'FIELD Paard', '35 x 410 g', 'fiber', 0.5),
  ('Isegrim Roots', 'FIELD Paard', '35 x 410 g', 'ash', 2.3),
  ('Isegrim Roots', 'FIELD Paard', '35 x 410 g', 'moisture', 79),
  ('Isegrim Roots', 'MOUNTAIN Kalkoen', '7 x 410 g', 'protein', 11.1),
  ('Isegrim Roots', 'MOUNTAIN Kalkoen', '7 x 410 g', 'fat', 5.8),
  ('Isegrim Roots', 'MOUNTAIN Kalkoen', '7 x 410 g', 'fiber', 0.5),
  ('Isegrim Roots', 'MOUNTAIN Kalkoen', '7 x 410 g', 'ash', 2.1),
  ('Isegrim Roots', 'MOUNTAIN Kalkoen', '7 x 410 g', 'moisture', 79),
  ('Isegrim Roots', 'MOUNTAIN Kalkoen', '14 x 410 g', 'protein', 11.1),
  ('Isegrim Roots', 'MOUNTAIN Kalkoen', '14 x 410 g', 'fat', 5.8),
  ('Isegrim Roots', 'MOUNTAIN Kalkoen', '14 x 410 g', 'fiber', 0.5),
  ('Isegrim Roots', 'MOUNTAIN Kalkoen', '14 x 410 g', 'ash', 2.1),
  ('Isegrim Roots', 'MOUNTAIN Kalkoen', '14 x 410 g', 'moisture', 79),
  ('Isegrim Roots', 'Puppy en Junior MOUNTAIN Kalkoen & Rund', '35 x 410 g', 'protein', 11.5),
  ('Isegrim Roots', 'Puppy en Junior MOUNTAIN Kalkoen & Rund', '35 x 410 g', 'fat', 6.8),
  ('Isegrim Roots', 'Puppy en Junior MOUNTAIN Kalkoen & Rund', '35 x 410 g', 'fiber', 0.5),
  ('Isegrim Roots', 'Puppy en Junior MOUNTAIN Kalkoen & Rund', '35 x 410 g', 'ash', 2),
  ('Isegrim Roots', 'Puppy en Junior MOUNTAIN Kalkoen & Rund', '35 x 410 g', 'moisture', 78),
  ('Isegrim Roots', 'RIVER Zalm & Forel', '14 x 410 g', 'protein', 11),
  ('Isegrim Roots', 'RIVER Zalm & Forel', '14 x 410 g', 'fat', 5.7),
  ('Isegrim Roots', 'RIVER Zalm & Forel', '14 x 410 g', 'fiber', 0.5),
  ('Isegrim Roots', 'RIVER Zalm & Forel', '14 x 410 g', 'ash', 2.3),
  ('Isegrim Roots', 'RIVER Zalm & Forel', '14 x 410 g', 'moisture', 79),
  ('Isegrim Roots', 'FIELD Eend & Harten', '14 x 410 g', 'protein', 11.1),
  ('Isegrim Roots', 'FIELD Eend & Harten', '14 x 410 g', 'fat', 5.4),
  ('Isegrim Roots', 'FIELD Eend & Harten', '14 x 410 g', 'fiber', 0.5),
  ('Isegrim Roots', 'FIELD Eend & Harten', '14 x 410 g', 'ash', 2.3),
  ('Isegrim Roots', 'FIELD Eend & Harten', '14 x 410 g', 'moisture', 80),
  ('Isegrim Roots', 'FOREST Hert & Wild', '35 x 410 g', 'protein', 11),
  ('Isegrim Roots', 'FOREST Hert & Wild', '35 x 410 g', 'fat', 6.3),
  ('Isegrim Roots', 'FOREST Hert & Wild', '35 x 410 g', 'fiber', 0.5),
  ('Isegrim Roots', 'FOREST Hert & Wild', '35 x 410 g', 'ash', 2.3),
  ('Isegrim Roots', 'FOREST Hert & Wild', '35 x 410 g', 'moisture', 78),
  ('Isegrim Roots', 'FOREST Wildzwijn', '14 x 410 g', 'protein', 11.2),
  ('Isegrim Roots', 'FOREST Wildzwijn', '14 x 410 g', 'fat', 6.1),
  ('Isegrim Roots', 'FOREST Wildzwijn', '14 x 410 g', 'fiber', 0.5),
  ('Isegrim Roots', 'FOREST Wildzwijn', '14 x 410 g', 'ash', 2),
  ('Isegrim Roots', 'FOREST Wildzwijn', '14 x 410 g', 'moisture', 79),
  ('Isegrim Roots', 'FIELD Eend & Harten', '35 x 410 g', 'protein', 11.1),
  ('Isegrim Roots', 'FIELD Eend & Harten', '35 x 410 g', 'fat', 5.4),
  ('Isegrim Roots', 'FIELD Eend & Harten', '35 x 410 g', 'fiber', 0.5),
  ('Isegrim Roots', 'FIELD Eend & Harten', '35 x 410 g', 'ash', 2.3),
  ('Isegrim Roots', 'FIELD Eend & Harten', '35 x 410 g', 'moisture', 80),
  ('Isegrim Roots', 'Puppy en Junior MOUNTAIN Kalkoen & Rund', '14 x 410 g', 'protein', 11.5),
  ('Isegrim Roots', 'Puppy en Junior MOUNTAIN Kalkoen & Rund', '14 x 410 g', 'fat', 6.8),
  ('Isegrim Roots', 'Puppy en Junior MOUNTAIN Kalkoen & Rund', '14 x 410 g', 'fiber', 0.5),
  ('Isegrim Roots', 'Puppy en Junior MOUNTAIN Kalkoen & Rund', '14 x 410 g', 'ash', 2),
  ('Isegrim Roots', 'Puppy en Junior MOUNTAIN Kalkoen & Rund', '14 x 410 g', 'moisture', 78),
  ('Isegrim Roots', 'FOREST Hert & Wild', '7 x 410 g', 'protein', 11),
  ('Isegrim Roots', 'FOREST Hert & Wild', '7 x 410 g', 'fat', 6.3),
  ('Isegrim Roots', 'FOREST Hert & Wild', '7 x 410 g', 'fiber', 0.5),
  ('Isegrim Roots', 'FOREST Hert & Wild', '7 x 410 g', 'ash', 2.3),
  ('Isegrim Roots', 'FOREST Hert & Wild', '7 x 410 g', 'moisture', 78),
  ('Isegrim Roots', 'MOUNTAIN Kalkoen', '35 x 410 g', 'protein', 11.1),
  ('Isegrim Roots', 'MOUNTAIN Kalkoen', '35 x 410 g', 'fat', 5.8),
  ('Isegrim Roots', 'MOUNTAIN Kalkoen', '35 x 410 g', 'fiber', 0.5),
  ('Isegrim Roots', 'MOUNTAIN Kalkoen', '35 x 410 g', 'ash', 2.1),
  ('Isegrim Roots', 'MOUNTAIN Kalkoen', '35 x 410 g', 'moisture', 79),
  ('Isegrim Roots', 'FOREST Wildzwijn', '7 x 410 g', 'protein', 11.2),
  ('Isegrim Roots', 'FOREST Wildzwijn', '7 x 410 g', 'fat', 6.1),
  ('Isegrim Roots', 'FOREST Wildzwijn', '7 x 410 g', 'fiber', 0.5),
  ('Isegrim Roots', 'FOREST Wildzwijn', '7 x 410 g', 'ash', 2),
  ('Isegrim Roots', 'FOREST Wildzwijn', '7 x 410 g', 'moisture', 79),
  ('Isegrim Roots', 'FOREST Wildzwijn', '35 x 410 g', 'protein', 11.2),
  ('Isegrim Roots', 'FOREST Wildzwijn', '35 x 410 g', 'fat', 6.1),
  ('Isegrim Roots', 'FOREST Wildzwijn', '35 x 410 g', 'fiber', 0.5),
  ('Isegrim Roots', 'FOREST Wildzwijn', '35 x 410 g', 'ash', 2),
  ('Isegrim Roots', 'FOREST Wildzwijn', '35 x 410 g', 'moisture', 79),
  ('Isegrim Roots', 'Puppy en Junior MOUNTAIN Kalkoen & Rund', '7 x 410 g', 'protein', 11.5),
  ('Isegrim Roots', 'Puppy en Junior MOUNTAIN Kalkoen & Rund', '7 x 410 g', 'fat', 6.8),
  ('Isegrim Roots', 'Puppy en Junior MOUNTAIN Kalkoen & Rund', '7 x 410 g', 'fiber', 0.5),
  ('Isegrim Roots', 'Puppy en Junior MOUNTAIN Kalkoen & Rund', '7 x 410 g', 'ash', 2),
  ('Isegrim Roots', 'Puppy en Junior MOUNTAIN Kalkoen & Rund', '7 x 410 g', 'moisture', 78),
  ('Isegrim Roots', 'FOREST Hert & Wild', '14 x 410 g', 'protein', 11),
  ('Isegrim Roots', 'FOREST Hert & Wild', '14 x 410 g', 'fat', 6.3),
  ('Isegrim Roots', 'FOREST Hert & Wild', '14 x 410 g', 'fiber', 0.5),
  ('Isegrim Roots', 'FOREST Hert & Wild', '14 x 410 g', 'ash', 2.3),
  ('Isegrim Roots', 'FOREST Hert & Wild', '14 x 410 g', 'moisture', 78),
  ('Isegrim Roots', 'FIELD Eend & Harten', '7 x 410 g', 'protein', 11.1),
  ('Isegrim Roots', 'FIELD Eend & Harten', '7 x 410 g', 'fat', 5.4),
  ('Isegrim Roots', 'FIELD Eend & Harten', '7 x 410 g', 'fiber', 0.5),
  ('Isegrim Roots', 'FIELD Eend & Harten', '7 x 410 g', 'ash', 2.3),
  ('Isegrim Roots', 'FIELD Eend & Harten', '7 x 410 g', 'moisture', 80)
)
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis)
select rv.id, d.nutrient_key, d.value, 'as-fed'
  from data d
  join public.products p on p.brand = d.brand and p.name = d.name and p.package_size is not distinct from d.package_size
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
on conflict (recipe_version_id, nutrient_key, basis) do update set value = excluded.value;

select count(distinct p.id) as producten, count(rn.id) as voedingswaarden
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
  left join public.recipe_nutrition rn on rn.recipe_version_id = rv.id
 where p.brand in ('Alsa Nature', 'Isegrim', 'Isegrim Roots');
commit;
