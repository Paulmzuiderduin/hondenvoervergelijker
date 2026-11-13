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
