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
