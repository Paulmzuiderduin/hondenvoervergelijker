-- Automatisch overgenomen etiketten, batch 5 van 2026-10-19 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site zegt daarna:
-- "automatisch overgenomen van <domein> op <datum> · nog niet door een mens
-- nagelopen". Er wordt hier geen enkele controle door een mens geclaimd.
begin;

-- Hill's Prescription Diet — z/d Low Fat Hondenvoer (1,5 / 3 / 10 kg)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-zd-low-fat-hydrolysed-soy-food-sensitivities-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'z/d Low Fat Hondenvoer', 'kibble', '1,5 / 3 / 10 kg', null, 'https://www.hillspet.nl/dog-food/prescription-diet-zd-low-fat-hydrolysed-soy-food-sensitivities-dry', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Producten van plantaardige oorsprong, plantaardige eiwitextracten (soja-eiwithydrolysaat 27%), oliën en vetten, mineralen, vlees en dierlijke bijproducten, fruit, zaden. Koolhydraatbron: Maïszetmeel. ActivBiome+ prebiotische mix (4.1%): Gemalen pecannotenschil, lijnzaad, gedroogde bietenpulp, gedroogde citruspulp, gedroogde veenbessen. Eiwitbronnen: Soja-eiwithydrolysaat, kippenleverhydrolysaat.', true, now(), 'sha256:15429a49e91780a5a1ea7e54caffc60c797e6991c641dc5e21b5f6c08120dcfd', null from p;

-- Hill's Prescription Diet — d/d Hondenvoer met Eend & Rijst (4 / 12 kg)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-dd-duck-rice-skin-care-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'd/d Hondenvoer met Eend & Rijst', 'kibble', '4 / 12 kg', null, 'https://www.hillspet.nl/dog-food/prescription-diet-dd-duck-rice-skin-care-dry', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eiwitbron: Eendenmeel. Koolhydraatbron: Breukrijst. SAMENSTELLING: Granen (breukrijst 66%), vlees en dierlijke bijproducten (eend 12%), oliën en vetten, mineralen, producten van plantaardige oorsprong.', true, now(), 'sha256:3969642d09a378509c6e74025b0a23cfa6c868575b7a0b44f0dd94372c7fdc91', null from p;

-- Hill's Prescription Diet — d/d Natvoer voor Honden Eend (370 g)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-dd-duck-skin-care-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'd/d Natvoer voor Honden Eend', 'wet', '370 g', null, 'https://www.hillspet.nl/dog-food/prescription-diet-dd-duck-skin-care-canned', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (eend 27%), granen, oliën en vetten, mineralen, producten van plantaardige oorsprong. Eiwitbron: Eend. Koolhydraatbron: Rijst.', true, now(), 'sha256:d6957534b7eb2bd81c1e41daf7c30821747284dd3458c878e8128e914b3da195', null from p;

-- Hill's Science Plan — Small & Mini Adult Hondenvoer met Kip (1,5 / 3 / 6 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-small-mini-chicken-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Small & Mini Adult Hondenvoer met Kip', 'kibble', '1,5 / 3 / 6 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-small-mini-chicken-dry', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Kippen- en kalkoenenmeel (kip 13%; totaal gevogelte 21%), maïs, tarwe, breukrijst, dierlijk vet, eiwithydrolysaat, plantaardige olie, lijnzaad, mineralen, haverzemelen, spinaziepoeder, gedroogde citruspulp, gedroogde tomatenpuree, fructo-oligosacchariden. ActivBiome+ Multi Benefit mix van prebiotica (0,6%): Haverzemelen, fructo-oligosacchariden.', true, now(), 'sha256:66fd5960229a01df113e51f70d7b90bb836c48361340c5aa58a2ac9fa4e1c362', null from p;

-- Hill's Science Plan — Sensitive Stomach & Skin Medium & Large Breed Adult Hondenvoer met Kip (2,5 / 12 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-sensitive-stomach-skin-chicken-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Sensitive Stomach & Skin Medium & Large Breed Adult Hondenvoer met Kip', 'kibble', '2,5 / 12 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-sensitive-stomach-skin-chicken-dry', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Kippen- en kalkoenenmeel (kip 9%; totaal gevogelte 15%), breukrijst, maïs, bruine rijst, maïseiwitmeel, gerst, haver, dierlijk vet, eiwithydrolysaat, plantaardige olie, gedroogde bietenpulp (2,5%), lijnzaad, mineralen, eipoeder.', true, now(), 'sha256:50dae670c33bd72d4a71d931d10c3cd26ba3add327dc1a6ca3b17e48909a7d72', null from p;

-- Josera — SensiPlus (0,9 / 3 / 12,5 kg)
-- bron: https://www.josera.de/josera-sensiplus.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Josera', 'SensiPlus', 'kibble', '0,9 / 3 / 12,5 kg', null, 'https://www.josera.de/josera-sensiplus.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogd gevogelte-eiwit (gevogelte 24,0%, eend 4,0%); volkorenmais; rijst; gevogeltevet; bietenvezel; gehydrolyseerd gevogelte-eiwit; mineralen; gemalen cichoreiwortel (natuurlijke bron van inuline)', true, now(), 'sha256:1552751cafae4e2c38d34fac1c6ccf2dcd24b21973dfb8d0341eeafbe915e9b7', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Josera — SensiJunior (0,9 / 3 / 12,5 kg)
-- bron: https://www.josera.de/josera-sensijunior.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Josera', 'SensiJunior', 'kibble', '0,9 / 3 / 12,5 kg', null, 'https://www.josera.de/josera-sensijunior.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst; gedroogd gevogelte-eiwit; gevogeltevet; gedroogd eendeneiwit (4%); gedroogd zalmeiwit (4%); aardappeleiwit; gehydrolyseerd gevogelte-eiwit; bietenvezel; plantaardige vezel; johannesbroodmeel; mineralen; gistcelwanden (0,5%); gemalen cichoreiwortel (natuurlijke bron van inuline); vlozaadschillen (psyllium) (0,1%); gedroogd eiwit van de Nieuw-Zeelandse groenlipmossel (Perna canaliculus)', true, now(), 'sha256:26fdf2ddf16655a543c2e9aa15afa9fef482aefcfbd33815882cb74db492d532', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Josera — SensiAdult (0,9 / 3 / 12,5 kg)
-- bron: https://www.josera.de/josera-sensiadult.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Josera', 'SensiAdult', 'kibble', '0,9 / 3 / 12,5 kg', null, 'https://www.josera.de/josera-sensiadult.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst; gedroogd gevogelte-eiwit (gevogelte 21,0%, eend 4,0%); gevogeltevet; gedroogd zalmeiwit (4%); gehydrolyseerd gevogelte-eiwit; bietenvezel; plantaardige vezel; johannesbroodmeel; mineralen; gistcelwanden (0,5%); kruiden, vruchten; gemalen cichoreiwortel (natuurlijke bron van inuline); vlozaadschillen (psyllium) (0,1%); gedroogd eiwit van de Nieuw-Zeelandse groenlipmossel (Perna canaliculus)', true, now(), 'sha256:72f84ee1f300b9fca384d20faaa55b32579ccc7d08e4ef303b1e548a464ef8eb', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Josera — YoungStar (0,9 / 3 / 12,5 kg)
-- bron: https://www.josera.de/josera-youngstar.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Josera', 'YoungStar', 'kibble', '0,9 / 3 / 12,5 kg', null, 'https://www.josera.de/josera-youngstar.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde aardappel (42%); gedroogd gevogelte-eiwit 30,0% (waarvan kip 40,0%); gevogeltevet; bietenvezel; johannesbroodmeel; gehydrolyseerd gevogelte-eiwit; gist; gehydrolyseerd plantaardig eiwit; zalmolie (0,8%); mineralen; gemalen cichoreiwortel (natuurlijke bron van inuline); gedroogd eiwit van de Nieuw-Zeelandse groenlipmossel (Perna canaliculus)', true, now(), 'sha256:d12cf14f995afc32eb917e03d0b364c85163abcd293ffef4f18f8e0c8eef5be2', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Josera — Active Nature (0,9 / 3 / 12,5 kg)
-- bron: https://www.josera.de/josera-active-nature.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Josera', 'Active Nature', 'kibble', '0,9 / 3 / 12,5 kg', null, 'https://www.josera.de/josera-active-nature.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogd gevogelte-eiwit; rijst; gevogeltevet; aardappelzetmeel; bietenvezel; erwtenmeel; gedroogd lamseiwit (4%); gehydrolyseerd gevogelte-eiwit; mineralen; appelvezel; gistcelwanden (0,5%); johannesbroodmeel; gemalen cichoreiwortel (natuurlijke bron van inuline); kruiden, vruchten (0,1%); gedroogd eiwit van de Nieuw-Zeelandse groenlipmossel (Perna canaliculus)', true, now(), 'sha256:83f222312b06734cd6516e5fcd0bc84fa0fa876b4741e4c62fd85848641c9cf0', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Josera — Senior Salmon & Rice (0,9 / 3 / 12,5 kg)
-- bron: https://www.josera.de/josera-seniorplus.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Josera', 'Senior Salmon & Rice', 'kibble', '0,9 / 3 / 12,5 kg', null, 'https://www.josera.de/josera-seniorplus.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'volkorenmais; rijst (22%); gedroogd gevogelte-eiwit; gerst; gedroogd zalmeiwit (6%); gevogeltevet; bietenvezel; gehydrolyseerd dierlijk eiwit; zalmolie (0,8%); mineralen; gistcelwanden (0,5%); kruiden, vruchten; gemalen cichoreiwortel (natuurlijke bron van inuline)', true, now(), 'sha256:1f71ce189c6dbe75ac5dacf1591fcb85211fd72225dced2b1d274077649a960e', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Orijen — Original (2 / 6 / 11,4 kg)
-- bron: https://www.orijenpetfoods.com/en-CA/dogs/dog-food/original/ns-ori-original.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Orijen', 'Original', 'kibble', '2 / 6 / 11,4 kg', null, 'https://www.orijenpetfoods.com/en-CA/dogs/dog-food/original/ns-ori-original.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse kip (25%), rauwe kalkoen (8%), vers kippenslachtafval (lever, hart) (7%), rauwe hele haring (6%), rauwe hele heek (5%), verse eieren (5%), rauwe kalkoenlever (5%), gedehydrateerde kip (4%), gedehydrateerde kalkoen (4%), gedehydrateerde makreel (4%), gedehydrateerde sardine (4%), gedehydrateerde haring (4%), hele rode linzen, hele kikkererwten, hele erwten, kippenvet (3%), hele groene linzen, hele pintobonen, hele navybonen, linzenvezel, pollakolie (1%), erwtenzetmeel, gedroogde kelp, verse hele pompoen, verse hele butternutpompoen, verse hele courgette, verse hele wortels, verse hele appels, verse hele peren, gedroogde cichoreiwortel, verse boerenkool, verse spinazie, vers bietenloof, verse raapstelen, hele veenbessen, hele bosbessen, hele saskatoonbessen, kurkuma, mariadistel, kliswortel, lavendel, heemstwortel, rozenbottels.', true, now(), 'sha256:fa6860192a8f5d5f7d916440493dbb4e8dd04edcdd190cd8a293392bde9c2359', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Orijen — Six Fish (2 / 6 / 11,4 kg)
-- bron: https://www.orijenpetfoods.com/en-CA/dogs/dog-food/six-fish/ns-ori-sixfish.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Orijen', 'Six Fish', 'kibble', '2 / 6 / 11,4 kg', null, 'https://www.orijenpetfoods.com/en-CA/dogs/dog-food/six-fish/ns-ori-sixfish.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rauwe hele pilchard (18%), rauwe hele makreel (11%), rauwe hele heek (10%), rauwe bot (6%), rauwe hele rotsvis (6%), rauwe hele tong (6%), gedehydrateerde makreel (5%), gedehydrateerde haring (5%), gedehydrateerde pollak (5%), gedehydrateerde sardine (5%), gedehydrateerde blauwe wijting (4%), haringolie (4%), hele rode linzen, hele erwten, hele kikkererwten, hele groene linzen, linzenvezel, hele pintobonen, erwtenzetmeel, zonnebloemolie, gedroogde kelp, verse hele pompoen, verse hele butternutpompoen, verse hele courgette, verse hele wortels, verse hele appels, verse hele peren, gedroogde cichoreiwortel, verse boerenkool, verse spinazie, vers bietenloof, verse raapstelen, hele veenbessen, hele bosbessen, hele saskatoonbessen, kurkuma, mariadistel, kliswortel, lavendel, heemstwortel, rozenbottels', true, now(), 'sha256:c1bdd77307857be682d1396fa8861fe12c65fcf4fd125b8a5bd407c72f75b227', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Orijen — Tundra (11,4 kg)
-- bron: https://www.orijenpetfoods.com/en-CA/dogs/dog-food/tundra/ns-ori-tundra.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Orijen', 'Tundra', 'kibble', '11,4 kg', null, 'https://www.orijenpetfoods.com/en-CA/dogs/dog-food/tundra/ns-ori-tundra.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rauw lamsvlees (7%), rauw hertenvlees (5%), rauwe eend (5%), rauwe ridderforel (5%), rauwe hele pilchard (5%), rauw varken (5%), rauwe eendenlever (5%), rauwe lamslever (4%), verse eieren (4%), gedehydrateerd lamsvlees (4%), gedehydrateerde witvis (4%), gedehydrateerde blauwe wijting (4%), gedehydrateerd schapenvlees (4%), gedehydrateerde haring (4%), gedehydrateerde makreel (4%), rauwe geit (4%), rauwe varkenslever (4%), hele groene linzen, hele kikkererwten, hele erwten, rauwe regenboogforel (3%), varkensvet (3%), hele rode linzen, hele pintobonen, linzenvezel, pollakolie (1%), hele navybonen, erwtenzetmeel, rauwe lamsnier (0,5%), rauwe lamspens (0,5%), gedroogde kelp, verse hele pompoen, verse hele butternutpompoen, verse hele courgette, verse hele wortels, verse hele appels, verse hele peren, gedroogde cichoreiwortel, verse boerenkool, verse spinazie, vers bietenloof, verse raapstelen, hele veenbessen, hele bosbessen, hele saskatoonbessen, kurkuma, mariadistel, kliswortel, lavendel, heemstwortel, rozenbottels.', true, now(), 'sha256:4739702519a019e5989657b81673b58096164b3f781ec832f835ee3bf1bbce6d', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Orijen — Puppy (2 / 6 / 11,4 kg)
-- bron: https://www.orijenpetfoods.com/en-CA/dogs/dog-food/puppy/ns-ori-puppy.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Orijen', 'Puppy', 'kibble', '2 / 6 / 11,4 kg', null, 'https://www.orijenpetfoods.com/en-CA/dogs/dog-food/puppy/ns-ori-puppy.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse kip (23%), rauwe kalkoen (10%), vers kippenslachtafval (lever, hart) (8%), rauwe hele haring (6%), rauwe hele heek (5%), verse eieren (5%), gedehydrateerde kip (4%), gedehydrateerde kalkoen (4%), gedehydrateerde makreel (4%), gedehydrateerde sardine (4%), gedehydrateerde haring (4%), kippenvet (4%), hele rode linzen, hele erwten, hele groene linzen, hele kikkererwten, linzenvezel, hele pintobonen, hele navybonen, rauwe kalkoenlever (2%), pollakolie (2%), erwtenzetmeel, gedroogde kelp, verse hele pompoen, verse hele butternutpompoen, verse hele courgette, verse hele wortels, verse hele appels, verse hele peren, gedroogde cichoreiwortel, verse boerenkool, verse spinazie, vers bietenloof, verse raapstelen, hele veenbessen, hele bosbessen, hele saskatoonbessen, kurkuma, mariadistel, kliswortel, lavendel, heemstwortel, rozenbottels.', true, now(), 'sha256:122b041cd97883a364b3d8c7af9b8f8fd2dd09862a0cbc937878f24520658d87', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Purina Pro Plan Veterinary Diets — HA Hypoallergenic (3 / 11 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-hypoallergeen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan Veterinary Diets', 'HA Hypoallergenic', 'kibble', '3 / 11 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-hypoallergeen', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Maiszetmeel* Gehydrolyseerd soja-eiwit** Mineralen Kokosolie Suiker* Raapzaadolie Cellulose Sojaolie Visolie *Gezuiverde koolhydraatbronnen. **Eiwitbron.', true, now(), 'sha256:994d8ea445ee040698c505b3a618b7ae524d69023845cfb7824dc48e2155ce74', null from p;

-- Purina Pro Plan Veterinary Diets — EN Gastrointestinal (1,5 / 5 / 12 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-gastrointestinaal
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan Veterinary Diets', 'EN Gastrointestinal', 'kibble', '1,5 / 5 / 12 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-gastrointestinaal', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Rijst* Mais Maisglutenmeel* Gedehydreerd gevogelte-eiwit* Gedroogde bietenpulp Digest Erwteneiwitconcentraat* Mineralen Kokosolie*(4%) Dierlijk vet Mono- en diglyceriden Sojaolie Visolie Inuline *Zeer goed verteerbare ingrediënten.', true, now(), 'sha256:c63b2bf271e5f4aaff03d891194f561c1c57a6b24cebf52fa53fce6aaa21ab70', null from p;

-- Purina Pro Plan Veterinary Diets — EN Gastrointestinal Natvoer (400 g)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-gastrointestinaal-natvoer
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan Veterinary Diets', 'EN Gastrointestinal Natvoer', 'wet', '400 g', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-gastrointestinaal-natvoer', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Varken Rijstebloem Gevogelte Gedroogd ei Mineralen Kokosolie Cellulosepoeder', true, now(), 'sha256:eb4eb4651dccaf529c3c9d4c2844efec687067c81c03005875283c42c2a7e988', null from p;

-- Purina Pro Plan Veterinary Diets — DRM Dermatosis (3 / 12 kg)
-- bron: https://www.purina.nl/hond/hondennvoer/product-proplan-veterinary-diets-dermatose-vis
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan Veterinary Diets', 'DRM Dermatosis', 'kibble', '3 / 12 kg', null, 'https://www.purina.nl/hond/hondennvoer/product-proplan-veterinary-diets-dermatose-vis', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Maiszetmeel Raapzaadmeel* Erwteneiwtconcentraat* Gedehydrateerd haringeiwit* Dierlijk vet Digest* Mineralen Visolie Raapzaadolie *Bron van eiwitten.', true, now(), 'sha256:2f731c68cc3ed6aa060f88a00098b0db1615881582e3b319ce709e2195d54b4f', null from p;

-- Purina Pro Plan Veterinary Diets — DM Diabetes Management (3 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-diabetes-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan Veterinary Diets', 'DM Diabetes Management', 'kibble', '3 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-diabetes-kip', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Gedehydrateerd gevogelte-eiwit Gerst* Mais* Sojameel* Erwtenvezel* Maisglutenmeel* Erwteneiwitconcentraat Dierlijk vet Digest Gedroogde bietenpulp* Cellulose Visolie Mineralen Witte bonenextract (0,1%, bron van amylase-remmer) *Koolhydraatbronnen.', true, now(), 'sha256:f74b4b58f2510a2eccc911b789a19fc66daa2f062ff6f3d10ddc9bc988e7e4c9', null from p;

-- Purina Pro Plan Veterinary Diets — OM Obesity Management (3 / 12 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-overgewicht
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan Veterinary Diets', 'OM Obesity Management', 'kibble', '3 / 12 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-overgewicht', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Mais* Sojameel* Gedehydrateerd gevogelte-eiwit Gerst* Tarweglutenmeel Erwtenvezel* Cellulose Digest Mineralen Dierlijk vet * Koolhydraatbronnen.', true, now(), 'sha256:5a2c2fbad4835618b2fea995b671ed4eab38c089f514d47a6d6a3e8699612fe9', null from p;

-- Purina Pro Plan — Medium Adult Sensitive Digestion Rijk aan Lam (3 / 14 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-adult-medium-sensitive-digestion-lam
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Medium Adult Sensitive Digestion Rijk aan Lam', 'kibble', '3 / 14 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-adult-medium-sensitive-digestion-lam', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Lam (19%) Maïs Gedehydreerd gevogelte-eiwit Maïsgries Rijst (8%) Dierlijk vet Gedroogde bietenpulp Sojameel Digest Maïsglutenmeel Gedroogde ei Mineralen Visolie', true, now(), 'sha256:f8cdda41ef6d95bc27ece05299d8341a49096c00ba8c0679299420904b982f3f', null from p;

-- Purina Pro Plan — Expert Care Digestion Care Rijk aan Lam (3 / 10 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-expert-care-digestion-care-lam
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Expert Care Digestion Care Rijk aan Lam', 'kibble', '3 / 10 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-expert-care-digestion-care-lam', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Lam (19%) Mais Gedehydrateerd gevogelte-eiwit Maisgrit Rijst Dierlijk vet Sojameel Gedroogde bietenpulp Maiseiwitmeel Mineralen Gedroogd ei Digest Visolie Gedroogd colostrum (0,1%)', true, now(), 'sha256:f31397867e572652d8cf46492e04e7bcf6bad6afca827a2b96fd0462e9597e91', null from p;

-- Purina Pro Plan — Medium Adult Everyday Nutrition Rijk aan Kip (3 / 14 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-adult-medium-everyday-nutrition-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Medium Adult Everyday Nutrition Rijk aan Kip', 'kibble', '3 / 14 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-adult-medium-everyday-nutrition-kip', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Kip van hoge kwaliteit (20%) (inclusief rug en borst) Tarwe Gedroogd gevogelte-eiwit Maïs Rijst (9%) Dierlijke vetten Gedroogde bietenpulp Digest Sojameel Maïseiwitmeel Tarwegluten Mineralen Gedroogd ei Visolie', true, now(), 'sha256:14883d84615c2be7e5db4c7f82b70d7275a213a76406eb0e2ad9bc8041e0588a', null from p;

-- Purina Pro Plan — Medium & Large Adult Sensitive Digestion Graanvrij Rijk aan Kalkoen (2,5 / 12 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-graan-vrij-medium-sensitive-digestion-kalkoen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Medium & Large Adult Sensitive Digestion Graanvrij Rijk aan Kalkoen', 'kibble', '2,5 / 12 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-graan-vrij-medium-sensitive-digestion-kalkoen', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Kalkoen (16%) Gedehydrateerd kippeneiwit Erwtenzetmeel Cassave (12%) Gedroogde erwten Dierlijk vet Sojameel Erwteneiwit Gedroogde bietenpulp Digest Gedroogd ei Mineralen Visolie', true, now(), 'sha256:3ea531592d4fe64b8c3ed6cfb72fbf03a455e1004c4fc8aa33fe325e86f273f5', null from p;

-- Royal Canin — Hypoallergenic (2 / 7 / 14 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/hypoallergenic-3910
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Hypoallergenic', 'kibble', '2 / 7 / 14 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/hypoallergenic-3910', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijstmeel, gehydrolyseerd soja-eiwit isolaat, dierlijke vetten, rijst, gehydrolyseerd gevogeltelever, bietenpulp, mineralen, sojaolie, fructo-oligosacchariden, visolie, bernagieolie, tagetes meel. Eiwitbronnen: gehydrolyseerd soja-eiwit isolaat (17,6%), gehydrolyseerd gevogeltelever (5,0%). Koolhydraatbron: rijst (48,1%).', true, now(), 'sha256:0e0dc9abf272b0180f6eea5f76784fe822abde08884feedf6a88994676e12cb5', null from p;

-- Royal Canin — Hypoallergenic (200 / 400 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/hypoallergenic-4084
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Hypoallergenic', 'wet', '200 / 400 g', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/hypoallergenic-4084', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'plantaardige bijproducten, plantaardige eiwitextracten, oliën en vetten, vlees en dierlijke bijproducten, mineralen. Eiwitbronnen: concentraat van gehydrolyseerd soja-eiwit (6,4%), gehydrolyseerde gevogelte bijproducten (2,0%). Koolhydraatbron: erwtenzetmeel (10,0%).', true, now(), 'sha256:d510e28b2a084c7e469fc0f129879a29a208f3584f9d6ccd85931e023f0a6b0a', null from p;

-- Royal Canin — Anallergenic (3 / 8 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/anallergenic-4014
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Anallergenic', 'kibble', '3 / 8 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/anallergenic-4014', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïszetmeel, hydrolysaat van veren met een laag molecuulgewicht (bron van L-aminozuren en oligopeptiden), kopraolie, sojaolie, mineralen, plantaardige vezels, cichoreipulp, fructo-oligosacchariden, visolie, mono- en diglyceriden van palmitinezuur en stearinezuur veresterd met citroenzuur, dierlijk vet, tagetes meel. Eiwitbron: hydrolysaat van veren met een laag molecuulgewicht (19,78%). Koolhydraatbron: maïszetmeel (46,3%).', true, now(), 'sha256:25b49d321fb3d61ebbe6858fee5661421820ae9f6bc2c8aad6f97fcf0810ffaf', null from p;

-- Royal Canin — Sensitivity Control (1,5 / 7 / 14 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/sensitivity-control-3922
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Sensitivity Control', 'kibble', '1,5 / 7 / 14 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/sensitivity-control-3922', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maniok (tapioca), gedehydreerde eendeneiwitten, plantaardige vezels, gehydrolyseerde gevogelte-eiwitten, mineralen, dierlijk vet, bietenpulp, visolie, psylliumschil en psylliumzaden, sojaolie, fructo-oligosacchariden, tagetes meel. Eiwitbronnen: gedehydreerde eendeneiwitten (28,0%), gehydrolyseerde gevogelte-eiwitten (4,2%). Koolhydraatbron: tapioca (47,0%).', true, now(), 'sha256:11d9e0c63af35d4933dc0b66f80efd780bc420cdce4e705200a120b63b5e0011', null from p;

-- Royal Canin — Sensitivity Control Kip met Rijst (12 x 410 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/sensitivity-control-chicken-with-rice-4026
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Sensitivity Control Kip met Rijst', 'wet', '12 x 410 g', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/sensitivity-control-chicken-with-rice-4026', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, granen, plantaardige bijproducten, oliën en vetten, mineralen, suikers. Eiwitbron: kip (54%). Koolhydraatbron: rijst (9,9%).', true, now(), 'sha256:5b19b3fb92d815a3b2a6c430de5eb1104a7179d8ef1aebe1e812c616dd94e65e', null from p;

-- Royal Canin — Mini Adult 8+ (2 / 4 / 8 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/mini-adult-8%2b-3002
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Mini Adult 8+', 'kibble', '2 / 4 / 8 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/mini-adult-8%2b-3002', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, maïs, rijst, tarwemeel, dierlijke vetten, tarwegluten, maïsgluten, maïsmeel, tarwe, gehydrolyseerde dierlijke eiwitten, bietenpulp, mineralen, sojaolie, gistproducten, visolie, fructo-oligosachariden, algenolie Schizochytrium sp.', true, now(), 'sha256:227dc107c6bffa1edc5bf70068430dc5c1d87906665d68eade560669abcaab2c', null from p;

-- Specific — CDD Food Allergen Management (2 kg, 3x2 kg, 12 kg)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cdd-food-allergen-management
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CDD Food Allergen Management', 'kibble', '2 kg, 3x2 kg, 12 kg', null, 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cdd-food-allergen-management', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, eipoeder, mineralen, varkensvet, gehydrolyseerd eiwit, vitaminen en spoorelementen (inclusief gecheleerde sporenelementen), cellulosepoeder, psyllium husk, methionine, rozemarijn extract. Natuurlijke antioxidanten (tocopherolen, rozemarijn extract en vitamine C).', true, now(), 'sha256:5aac46efac4a6acdd907ee7a142f4ae08a0c693b6bc5489d3871b3723321fa12', null from p;

-- Specific — CDW Food Allergen Management (6 x 300 g)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cdw-food-allergen-management
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CDW Food Allergen Management', 'wet', '6 x 300 g', null, 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cdw-food-allergen-management', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam, rijst, vitaminen en spoorelementen (inclusief gecheleerde sporenelementen), visolie, zonnebloemolie, mineralen, cellulosepoeder, psyllium husk, dextrose, xylose.', true, now(), 'sha256:5e140c13cbc4bfd0c21bca5f5656205405f650e8ff65c008c7ae0c2e0b32d352', null from p;

-- Specific — CDD-HY Food Allergen Management (2 kg, 3 x 2 kg, 7 kg, 12 kg)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cdd-hy-food-allergen-management
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CDD-HY Food Allergen Management', 'kibble', '2 kg, 3 x 2 kg, 7 kg, 12 kg', null, 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cdd-hy-food-allergen-management', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, rijsteiwit, varkensvet, gehydrolyseerd zalmeiwit, mineralen, gehydrolyseerd eiwit, cellulosepoeder, vitaminen en spoorelementen (inclusief gecheleerde sporenelementen), visolie, psyllium husk, rozemarijn extract. Natuurlijke antioxidanten (tocopherolen, rozemarijn extract en vitamine C).', true, now(), 'sha256:bbbc885a2a735cc727b505e23ab80be4b7c5100afe7e78dc151d35d15660ecf0', null from p;

-- Specific — CID Digestive Support (2 kg, 3 x 2 kg, 7 kg, 12 kg)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cid-digestive-support
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CID Digestive Support', 'kibble', '2 kg, 3 x 2 kg, 7 kg, 12 kg', null, 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cid-digestive-support', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, eipoeder, vismeel, maïs, bietenpulp, mineralen (inclusief zeoliet), dextrose, varkensvet, gehydrolyseerd dierlijk eiwit, vitaminen en spoorelementen (inclusief gecheleerde sporenelementen), visolie, Antarctische krill, gist (inclusief bron van β ß-1,3/1,6-glucanen en mannan-oligo-sacchariden ), gistfermentatieproduct (Saccharomyces cerevisiae producten, calciumcarbonaat), fructooligo-sachariden, psyllium husk , AuraGuard (calciumcarbonaat, citrus extract, maltodextrine, natriumchloride), xylo-oligo-sacchariden, Yucca poeder, rozemarijnextract. Natuurlijke antioxidanten (tocopherolen en vitamine C).', true, now(), 'sha256:abd78b2e7e4c6ff5f6a13650f4f60d6be498afa188d05fe6b5914b86d7f59cc8', null from p;

-- Specific — COD-HY Allergen Management Plus (2 kg, 3 x 2 kg, 3 x 4 kg)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cod-hy-allergen-management-plus
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'COD-HY Allergen Management Plus', 'kibble', '2 kg, 3 x 2 kg, 3 x 4 kg', null, 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cod-hy-allergen-management-plus', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, rijsteiwit, visolie, gehydrolyseerd zalmeiwit, cellulosepoeder, mineralen, varkensvet, gehydrolyseerd eiwit, vitaminen en spoorelementen (inclusief gecheleerde sporenelementen), borage olie, psyllium husk, rozemarijn extract. Natuurlijke antioxidanten (tocopherolen, rozemarijn extract en vitamine C).', true, now(), 'sha256:051e3ae2d0affc86029fe9bc689f060bc81f3db39ad373efd995349c52660ed2', null from p;

-- Specific — CXD-M Adult Medium breed (4 kg, 7 kg, 12 kg)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cxd-m-adult-medium-breed
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CXD-M Adult Medium breed', 'kibble', '4 kg, 7 kg, 12 kg', null, 'https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cxd-m-adult-medium-breed', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling: Tarwe, maïseiwit, vismeel, varkensvet, bietenpulp (3,5%), gehydrolyseerd dierlijk eiwit, mineralen, visolie, eipoeder. Bevat geen toegevoegde kunstmatige kleur- en smaakstoffen. Toevoegingsmiddelen (per kg): Nutritionele toevoegingsmiddelen: vitamine D3 1044 IE, koper 7,9 mg (koperchelaat van glycinehydraat), ijzer 85 mg (ijzersulfaat monohydraat), zink 101 mg (zinkchelaat van glycinehydraat), mangaan 5,8 mg (mangaanchelaat van glycinehydraat), jodium 2,0 mg (calciumjodaat anhydraat); natuurlijke antioxidanten.', true, now(), 'sha256:68eaa4bd467f51db10eccbfc3fa2e6f345abf71fd4cb7d6e866e006a98a9497f', null from p;

-- Trovet — Hypoallergenic (Turkey) (400 g)
-- bron: https://www.trovet.com/nl/product/hypoallergenic-turkey-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Hypoallergenic (Turkey)', 'wet', '400 g', null, 'https://www.trovet.com/nl/product/hypoallergenic-turkey-hond/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kalkoen, aardappel, mineralen, zonnebloemolie, olijfolie.', true, now(), 'sha256:e332583ce20ec30733e9a1e45f3722f572985b136df6e27609ff8f104e8af48e', null from p;

-- Trovet — Hypoallergenic (Rich in Venison) (3 / 10 kg)
-- bron: https://www.trovet.com/nl/product/hypoallergenic-venison-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Hypoallergenic (Rich in Venison)', 'kibble', '3 / 10 kg', null, 'https://www.trovet.com/nl/product/hypoallergenic-venison-hond/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'aardappel 50%, gedehydrateerd herteneiwit 14%, gevogelte-olie, aardappeleiwit, bietenpulp, gefermenteerde producten, lijnzaden, gehydroliseerd gevogeltelever, zonnebloemolie, gist (saccharomyces cerevisiae), minerale bestanddelen.', true, now(), 'sha256:7fecbdea8ab5cdb8a9979c601fcd64591827a979a95c862a3db648b6008de51c', null from p;

-- Trovet — Hypoallergenic (Rich in Rabbit) (3 / 10 kg)
-- bron: https://www.trovet.com/nl/product/hypoallergenic-rabbit-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Hypoallergenic (Rich in Rabbit)', 'kibble', '3 / 10 kg', null, 'https://www.trovet.com/nl/product/hypoallergenic-rabbit-hond/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, rijstzemelen, gedehydrateerd konijneneiwit (20%), gevogelte-olie, rijsteiwit, bietenpulp, gevogeltehydrolysaat, lijnzaad, minerale bestanddelen.', true, now(), 'sha256:cf7f8d85887dd7cf5d9808e186c6ca929f42d25a4a43be526bc867d32d0819b4', null from p;

-- Trovet — Hypoallergenic (Rich in Insect) (3 / 10 kg)
-- bron: https://www.trovet.com/nl/product/hypoallergenic-insect-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Hypoallergenic (Rich in Insect)', 'kibble', '3 / 10 kg', null, 'https://www.trovet.com/nl/product/hypoallergenic-insect-hond/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'aardappel, 54%, gedehydrateerd insectenmeel 16%, gevogelte olie, aardappeleiwit, lijnzaad, mineralen, gevogelte hydrolisaat, visolie.', true, now(), 'sha256:b06e91e75ef38d5474737803812eff33356115bca89bb152213bc503ec04e6b0', null from p;

-- Trovet — Hypoallergenic (Rich in Horse) (3 / 10 kg)
-- bron: https://www.trovet.com/nl/product/hypoallergenic-horse-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Hypoallergenic (Rich in Horse)', 'kibble', '3 / 10 kg', null, 'https://www.trovet.com/nl/product/hypoallergenic-horse-hond/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'aardappel 45%, aardappeleiwit, gedehydrateerd paardeneiwit 14%, kippenvet, bietenpulp, gevogelte hydrolysaat, visolie, mineralen, celwand van gehydrolyseerde gist (bron van manno-oligosacchariden (MOS)), inuline fructo-oligosacchariden (FOS).', true, now(), 'sha256:88e77ea7af4943b74588fecfd76b8ecdf9d1a896b02c5c97b2b67fef606c024c', null from p;

-- Trovet — Exclusion (2,5 / 12,5 kg)
-- bron: https://www.trovet.com/nl/product/exclusion-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Exclusion', 'kibble', '2,5 / 12,5 kg', null, 'https://www.trovet.com/nl/product/exclusion-hond/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïs, soja eiwit (concentraat), zonnebloemolie, vitaminen en mineralen, aardappeleiwit, rijst, palmolie, bietenpulp, gist (hydrolisaat).', true, now(), 'sha256:b91ceddcb3d7a1d5839161298882feb4ac12a93973c2176fb4bfa4a21e048110', null from p;

-- Trovet — Adult (3 / 12,5 kg)
-- bron: https://www.trovet.com/nl/product/adult-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Adult', 'kibble', '3 / 12,5 kg', null, 'https://www.trovet.com/nl/product/adult-hond/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïs, gedehydrateerd gevogelte-eiwit, rijst, gevogelte-olie, haver, gevogeltehydrolysaat, bietenpulp, johannesbrood, lijnzaden, gist, minerale bestanddelen, inuline (bron van FOS), heel gedehydrateerd ei.', true, now(), 'sha256:6cfe8e888da88d64170f825bb6a8faed38cea206c47a4ac403b21ff4e76761ef', null from p;

-- Trovet — Dental (2,5 kg)
-- bron: https://www.trovet.com/nl/product/dental-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Dental', 'kibble', '2,5 kg', null, 'https://www.trovet.com/nl/product/dental-hond/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'pluimveemeel, maïs, rijst, aardappelzetmeel, pluimveevet, cellulose, gerst, bietenpulp, rijstzemelen, collageen (hydrolisaat), gist, gevogeltelever (hydrolisaat), lijnzaad, natriumtripolyfosfaat, kaliumchloride, xylitol, melkpoeder.', true, now(), 'sha256:fa4419fefa7778d9170acbca80052a11f97d6b7b22242a2441c5856721324b82', null from p;

-- Wolfsblut — Adult Green Valley (12,5 kg)
-- bron: https://www.wolfsblut.com/wolfsblut-adult-green-valley-lamm-und-lachs-trockenfutter-12-5-kg.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Wolfsblut', 'Adult Green Valley', 'kibble', '12,5 kg', null, 'https://www.wolfsblut.com/wolfsblut-adult-green-valley-lamm-und-lachs-trockenfutter-12-5-kg.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam & zalm 54% (vers lamsvlees 18%, verse zalm 18%, gedroogd lamsvlees 9%, gedroogde zalm 9%), aardappelen 18%, kikkererwten, pompoen, luzerne, lamsvet 2%, pastinaak, lamsbouillon 2%, venkel, zalmolie 1%, mineralen, topinamboer, tijm, marjolein, oregano, peterselie 0,1%, salie, rozenbottels, tomaten, duindoorn, appels, wortelen, lavas, mannan-oligosachariden (prebiotisch MOS), fructo-oligosachariden (prebiotisch FOS), brandnetel, meidoorn, paardenbloem, ginseng, anijszaad, fenegriek, bramen 0,02%, zwarte bessen, vlierbessen, yucca schidigera-extract, frambozen 0,01%, bosbessen 0,01%, aroniabessen.', true, now(), 'sha256:b541d587e5fc37334562cd5543fa0425f31230b0127becae90160c0d8f0d0c88', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Wolfsblut — Adult Wild Pacific (12,5 kg)
-- bron: https://www.wolfsblut.com/wolfsblut-adult-wild-pacific-seefisch-und-kartoffel-trockenfutter-12-5-kg.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Wolfsblut', 'Adult Wild Pacific', 'kibble', '12,5 kg', null, 'https://www.wolfsblut.com/wolfsblut-adult-wild-pacific-seefisch-und-kartoffel-trockenfutter-12-5-kg.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vis 48% (verse zalm 13%, gedroogde zalm 8%, gedroogde haring 8%, gedroogde witvis 8%, verse forel 8%, gedroogde garnalen 3%), aardappelen 34%, zalmolie 6%, kikkererwten, pastinaak, pompoen, zalmbouillon 2%, venkel, mineralen, topinamboer 0,3%, tijm, marjolein, oregano, peterselie 0,1%, salie, tomaten, spirulina, zeewier 0,04%, mariadistel, paardenbloem, brandnetel, meidoorn, ginseng, mannan-oligosachariden (prebiotisch MOS), fructo-oligosachariden (prebiotisch FOS), anijszaad, fenegriek, yucca schidigera-extract.', true, now(), 'sha256:0c3a2ba4613125a8272c695a69fa93463968ccf4cdb7946a9c099750b12113c6', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Wolfsblut — Adult Alaska Salmon (12,5 kg)
-- bron: https://www.wolfsblut.com/wolfsblut-adult-alaska-salmon-lachs-und-kartoffeln-trockenfutter-12-5-kg.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Wolfsblut', 'Adult Alaska Salmon', 'kibble', '12,5 kg', null, 'https://www.wolfsblut.com/wolfsblut-adult-alaska-salmon-lachs-und-kartoffeln-trockenfutter-12-5-kg.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Volledig voer voor volwassen honden zalm 49% (waarvan verse zalm 25%, gedroogde zalm 18%, zalmolie 6%) aardappelen 20%, volkorenrijst 15%, rijstkiemen, zeegras 2,5%, cranberries 1%, eieren, yucca schidigera-extract, mannan-oligosachariden (prebiotisch MOS), fructo-oligosachariden (prebiotisch FOS), mineralen.', true, now(), 'sha256:6e34fee2bbb242326c5ac3f709b144bd1ed218d692cffa01d7509e5eb1c709bb', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Wolfsblut — Adult Dark Forest (12,5 kg)
-- bron: https://www.wolfsblut.com/wolfsblut-adult-dark-forest-wild-und-susskartoffel-trockenfutter-12-5-kg.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Wolfsblut', 'Adult Dark Forest', 'kibble', '12,5 kg', null, 'https://www.wolfsblut.com/wolfsblut-adult-dark-forest-wild-und-susskartoffel-trockenfutter-12-5-kg.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers wild 30%, zoete aardappelen 24%, erwten, gedroogd lamsvlees 7%, pompoen, pastinaak, lamsvet, lamsbouillon, erwtenvezels, venkel, mineralen, topinamboer, spirulina, tijm 0,1%, marjolein, oregano, peterselie, salie, tomaten, brandnetel, meidoorn, paardenbloem, ginseng 0,05%, mannan-oligosachariden (prebiotisch MOS), fructo-oligosachariden (prebiotisch FOS), rozenbottels, zwarte bessen, bramen, vlierbessen, yucca schidigera-extract, frambozen 0,01%, bosbessen 0,01%, aroniabessen.', true, now(), 'sha256:9d50ae8f11e0d9a8fe8fb82054f3087e6258ac4c98420ad224d888124ddc6525', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Wolfsblut — Adult Blue Mountain (12,5 kg)
-- bron: https://www.wolfsblut.com/wolfsblut-adult-blue-mountain-wild-und-waldfruchten-trockenfutter-12-5-kg.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Wolfsblut', 'Adult Blue Mountain', 'kibble', '12,5 kg', null, 'https://www.wolfsblut.com/wolfsblut-adult-blue-mountain-wild-und-waldfruchten-trockenfutter-12-5-kg.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Wild 46% (vers wild 26%, gedroogd konijn 15%, vers konijn 5%), aardappelen 23%, lamsvet 6%, kikkererwten, erwteneiwit, pompoen, erwtenvezel, lamsbouillon 2%, venkel, pastinaak, mineralen, topinamboer 0,3%, lijnzaad, tijm, marjolein, oregano, peterselie 0,1%, salie, tomaten, mannan-oligosachariden (prebiotisch MOS), fructo-oligosachariden (prebiotisch FOS), lavas, wortelen, appels, bananen, brandnetel, meidoorn, paardenbloem, ginseng, rozenbottels, honing, anijszaad, fenegriek, zwarte bessen, bramen 0,02%, vlierbessen, yucca schidigera-extract, frambozen 0,01%,bosbessen 0,01%, aroniabessen.', true, now(), 'sha256:f0988af982d62a18a604fad46b25f8249cc45ffcf1afabee9b9d1e045edf32f2', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
