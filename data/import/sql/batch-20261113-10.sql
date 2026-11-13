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
