-- Automatisch overgenomen etiketten, batch 1 van 2026-10-19 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site zegt daarna:
-- "automatisch overgenomen van <domein> op <datum> · nog niet door een mens
-- nagelopen". Er wordt hier geen enkele controle door een mens geclaimd.
begin;

-- Animonda — Integra Protect Renal droogvoer voor honden (700 g)
-- bron: https://animonda.de/product/integra-protect-adult-renal/86443-0
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Animonda', 'Integra Protect Renal droogvoer voor honden', 'kibble', '700 g', '4017721864435', 'https://animonda.de/product/integra-protect-adult-renal/86443-0', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, maïs, gevogelte-eiwit (gedroogd), gevogeltevet, rundvet, bietenpulp, gevogelte-eiwit (gehydrolyseerd), gevogeltelever, zalmolie, lijnzaad, heel ei (gedroogd), fructo-oligosachariden, calciumcarbonaat, biergist, kaliumchloride, yucca schidigera.', true, now(), 'sha256:3f1fdd0efd0983e249b8501dd23f3e9b96d1b0c0fd68a6ae1268e4dfdab9a81b', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Animonda — Integra Protect Sensitive droogvoer voor honden (700 g)
-- bron: https://animonda.de/product/integra-protect-adult-sensitive/86447-0
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Animonda', 'Integra Protect Sensitive droogvoer voor honden', 'kibble', '700 g', '4017721864473', 'https://animonda.de/product/integra-protect-adult-sensitive/86447-0', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïs, kalkoeneiwit (gedroogd), gevogeltevet, kalkoenlever, maïsgluten, zalmolie, kaliumchloride, DL-methionine.', true, now(), 'sha256:16602e2ec54c3289df8c0971b570f1e6e5f9f4a9071093aaa75a0d130b232794', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Animonda — Integra Protect Intestinal droogvoer voor honden (4 kg)
-- bron: https://animonda.de/product/integra-protect-adult-intestinal/86415-0
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Animonda', 'Integra Protect Intestinal droogvoer voor honden', 'kibble', '4 kg', '4017721864152', 'https://animonda.de/product/integra-protect-adult-intestinal/86415-0', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïs, gevogelte-eiwit (gedroogd), rijst, gevogelte-eiwit gehydrolyseerd, gevogeltelever, heel ei (gedroogd), biergist, gevogeltevet, rundvet, zalmolie, bietenpulp, lijnzaad, havervezels, fructo-oligosachariden, natriumchloride, kaliumchloride, calciumcarbonaat, yucca schidigera. Licht verteerbare uitgangsbronnen: gevogelte-eiwit (gedroogd), gevogelte-eiwit gehydrolyseerd, rijst.', true, now(), 'sha256:c7d7bb4f80335ca365356f7cda1a986474ae307a7d36c0f2d8c982953c30f35d', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Animonda — Integra Protect Renal met kip (11 x 150 g)
-- bron: https://animonda.de/product/integra-protect-adult-renal-mit-huhn/86400-0
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Animonda', 'Integra Protect Renal met kip', 'wet', '11 x 150 g', '4017721864008', 'https://animonda.de/product/integra-protect-adult-renal-mit-huhn/86400-0', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten (22 % kip, varken, rund), oliën en vetten, groenten (aardappelen), plantaardige bijproducten, mineralen. Eiwitbronnen: kip, varken, rund.', true, now(), 'sha256:0aa8eaf4ba3cac34114bd64776bd14616c7405322f8a6737c30e7a1945a3b750', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Animonda — Integra Protect Sensitive kip + pastinaak (11 x 150 g)
-- bron: https://animonda.de/product/integra-protect-adult-sensitive-huhn-pastinaken/86538-0
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Animonda', 'Integra Protect Sensitive kip + pastinaak', 'wet', '11 x 150 g', '4017721865388', 'https://animonda.de/product/integra-protect-adult-sensitive-huhn-pastinaken/86538-0', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '63 % kip, 5 % pastinaak, calciumcarbonaat, 0,5 % koolzaadolie, natriumchloride.', true, now(), 'sha256:a0ae90b21bf245045adf259e10c2a3d3e0cabb659558a9b55f88bac174f38d6e', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Animonda — Integra Protect Intestinal pure kip (6 x 400 g)
-- bron: https://animonda.de/product/integra-protect-adult-intestinal-huhn-pur/86414-0
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Animonda', 'Integra Protect Intestinal pure kip', 'wet', '6 x 400 g', '4017721864145', 'https://animonda.de/product/integra-protect-adult-intestinal-huhn-pur/86414-0', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip (67 %), rijst (1 %), mineralen.', true, now(), 'sha256:1418d4b67b0e99d996c0feed2603ee7b45ddf325842f3aad59504131b2a0cd07', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Animonda — GranCarno Adult rund + kip (6 x 400 g)
-- bron: https://animonda.de/product/grancarno-adult-rind-huhn/82732-0
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Animonda', 'GranCarno Adult rund + kip', 'wet', '6 x 400 g', '4017721827324', 'https://animonda.de/product/grancarno-adult-rind-huhn/82732-0', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '38 % rund (long, lever, vlees, hart, nier, uier), 30 % kip (vlees, hart, maag, lever, nek), mineralen, distelolie.', true, now(), 'sha256:fd222a1bff6cbb29c6b5471c7158da2dd947682f5e642f966f3ab10d4dd170e1', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Animonda — GranCarno Senior rund + lam (6 x 400 g)
-- bron: https://animonda.de/product/grancarno-senior-rind-lamm/82737-0
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Animonda', 'GranCarno Senior rund + lam', 'wet', '6 x 400 g', '4017721827379', 'https://animonda.de/product/grancarno-senior-rind-lamm/82737-0', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '43 % rund (long, vlees, hart, uier, nier), 25 % lam (lever, pens), mineralen, distelolie, zalmolie.', true, now(), 'sha256:32a787b673acef01caee6f6d644fd5640149707c7376c65e7fdc4cc829cf3c86', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Animonda — GranCarno Junior gevogelte + lam droogvoer (1 kg)
-- bron: https://animonda.de/product/grancarno-junior-gefluegel-lamm/82944-0
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Animonda', 'GranCarno Junior gevogelte + lam droogvoer', 'kibble', '1 kg', '4017721829441', 'https://animonda.de/product/grancarno-junior-gefluegel-lamm/82944-0', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '23% gevogelte-eiwit (gedroogd), 15% vers gevogeltevlees, aardappelvlokken, erwten, aardappelzetmeel, 6,2% gevogeltevet, 4% lameiwit (gedroogd), tuinbonen, 3% gevogelte-eiwit hydrolysaat, lijnzaad, gedroogde bietenpulp, 0,4% zalmolie, mineralen.', true, now(), 'sha256:5f22fae2bf8b4b796f7446f6b2591b9b3779215a750eefab30904fda3a072903', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Animonda — BugBell Adult HighSensitive droogvoer (800 g)
-- bron: https://animonda.de/product/bugbell-adult-trockenfutter-highsensitive/85004-0
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Animonda', 'BugBell Adult HighSensitive droogvoer', 'kibble', '800 g', '4260704280818', 'https://animonda.de/product/bugbell-adult-trockenfutter-highsensitive/85004-0', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'tapioca (57 %), insecteneiwit (Hermetia illucens 28 %), mineralen (7 %), koolzaadolie (4,8 %), lijnzaadolie (3 %).', true, now(), 'sha256:2a0d6ca714320f8c5720b8bf9c40e3ad00f3fd8fdbf4d1508b6c537f18a6bd31', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Belcando — Adult Active (1 / 4 / 12,5 kg)
-- bron: https://www.belcando.de/belcando-adult-active
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Belcando', 'Adult Active', 'kibble', '1 / 4 / 12,5 kg', null, 'https://www.belcando.de/belcando-adult-active', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vers gevogeltevlees (30%); mais; gevogelte-eiwit, asarm*¹ (15%); rijst; havermeel van gepelde zaden; vismeel van zeevissen (5%); johannesbroodschroot*¹ (2,5%); druivenpitexpeller; gelatine*² (2,5%); biergist, geïnactiveerd*¹; lijnzaad (2,3%); gevogeltevet; plantaardige olie (kokos); gedroogde bietenpulp*³; dicalciumfosfaat; gevogeltelever*²; natriumchloride; kaliumchloride; kruiden*¹ (brandnetelbladeren, gentiaanwortel, duizendguldenkruid, kamille, venkel, karwij, maretakkruid, duizendbladkruid, braambladeren) (0,2%); yucca schidigera *¹gedroogd *²gehydrolyseerd *³ontsuikerd', true, now(), 'sha256:b2254de0673cdf1b9f0a98b0cf9beba3da3d4987c7a71f2f02fb1c7b916e771b', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Belcando — Adult Dinner (1 / 4 / 12,5 kg)
-- bron: https://www.belcando.de/belcando-adult-dinner
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Belcando', 'Adult Dinner', 'kibble', '1 / 4 / 12,5 kg', null, 'https://www.belcando.de/belcando-adult-dinner', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vers gevogeltevlees (30%); mais; gevogelte-eiwit, asarm*¹ (16%); rijst; aardappelzetmeel (14%); vismeel van zeevissen (3%); gedroogde bietenpulp*²; johannesbroodschroot*¹; druivenpitexpeller (2,5%); biergist, geïnactiveerd*¹; dicalciumfosfaat; chiazaad; gevogeltelever*³; gevogeltevet; plantaardige olie (kokos); natriumchloride; kaliumchloride; kruiden*¹ (brandnetelbladeren, gentiaanwortel, duizendguldenkruid, kamille, venkel, karwij, maretakkruid, duizendbladkruid, braambladeren) (0,2%); yucca schidigera *¹gedroogd *²ontsuikerd *³gehydrolyseerd', true, now(), 'sha256:389cc7f360aece8fe252d873e1a70bf95fb95a561bfbc5c089c5a6746ca77851', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Belcando — Adult GF Poultry (1 / 4 / 12,5 kg)
-- bron: https://www.belcando.de/belcando-adult-gf-poultry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Belcando', 'Adult GF Poultry', 'kibble', '1 / 4 / 12,5 kg', null, 'https://www.belcando.de/belcando-adult-gf-poultry', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vers gevogeltevlees (40%); amaranth (20%); gevogelte-eiwit, asarm*¹ (15%); aardappelzetmeel; erwtenmeel; marien zoöplankton (krill) (2,5%); druivenpitexpeller; biergist, geïnactiveerd*¹; johannesbroodschroot*¹; gevogeltevet; dicalciumfosfaat; vismeel van zeevissen (1%); chiazaad; gevogeltelever*²; gedroogde bietenpulp*³; natriumchloride; kaliumchloride; kruiden*¹ (brandnetelbladeren, gentiaanwortel, duizendguldenkruid, kamille, venkel, karwij, maretakkruid, duizendbladkruid, braambladeren) (0,2%); yucca schidigera *¹gedroogd *²gehydrolyseerd *³ontsuikerd', true, now(), 'sha256:3d73d0877936ba2debfb0075c1e1a4145f5da28a6c25231be8379a7eb544f474', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Belcando — Adult Lamb & Rice (1 / 4 / 12,5 kg)
-- bron: https://www.belcando.de/belcando-adult-lamb-rice
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Belcando', 'Adult Lamb & Rice', 'kibble', '1 / 4 / 12,5 kg', null, 'https://www.belcando.de/belcando-adult-lamb-rice', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst (40%); vers lamsvlees, -lever, -long (30%); gevogelte-eiwit, asarm*¹ (12,5%); lameiwit*¹ (10%); havermeel van gepelde zaden; druivenpitexpeller; biergist, geïnactiveerd*¹; haverdoppen; chiazaad (1,5%); gevogeltevet; lijnzaad; gevogeltelever*²; natriumchloride; kaliumchloride; kruiden*¹ (brandnetelbladeren, gentiaanwortel, duizendguldenkruid, kamille, venkel, karwij, maretakkruid, duizendbladkruid, braambladeren) (0,2%); yucca schidigera *¹gedroogd *²gehydrolyseerd', true, now(), 'sha256:a9443f7cc33d8a6bbb35eb040100986c61090c1026be5d8455968871138a1c1f', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Belcando — Adult Light (1 / 4 / 12,5 kg)
-- bron: https://www.belcando.de/belcando-adult-light
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Belcando', 'Adult Light', 'kibble', '1 / 4 / 12,5 kg', null, 'https://www.belcando.de/belcando-adult-light', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vers gevogeltevlees (30%); rijst; havermeel van gepelde zaden (17,5%); aardappelzetmeel; gevogelte-eiwit, asarm*¹ (10%); haverdoppen; vismeel van zeevissen (2,5%); druivenpitexpeller; biergist, geïnactiveerd*¹; gedroogde bietenpulp*²; dicalciumfosfaat; chiazaad (1,5%); gevogeltelever*³; lijnzaad; gevogeltevet; plantaardige olie (kokos); natriumchloride; kaliumchloride; kruiden*¹ (brandnetelbladeren, gentiaanwortel, duizendguldenkruid, kamille, venkel, karwij, maretakkruid, duizendbladkruid, braambladeren) (0,2%); yucca schidigera *¹gedroogd *²ontsuikerd *³gehydrolyseerd', true, now(), 'sha256:99ef23e8274a8c7f575298a86b40e86a9b31820769a2a7d4228c7b503ae2a110', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Belcando — Adult Multi-Croc (1 / 4 / 12,5 kg)
-- bron: https://www.belcando.de/belcando-adult-multi-croc
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Belcando', 'Adult Multi-Croc', 'kibble', '1 / 4 / 12,5 kg', null, 'https://www.belcando.de/belcando-adult-multi-croc', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'mais; rijst (14%); gevogelte-eiwit, asarm*¹; maisvoermeel; noedels (7%); grieben*¹; eiwitten uit gelatinewinning; tarwe; groenten*² (erwten 1,35%, wortels 0,1%) (4%); gerst; plantaardige olie (kokos); gevogeltevet; biergist, geïnactiveerd*¹; gedroogde bietenpulp*³; vismeel van zeevissen; johannesbroodschroot*¹; gevogeltelever*⁴; ei*¹; natriumchloride; dicalciumfosfaat; kaliumchloride; calciumcarbonaat *¹gedroogd *²geëxtrudeerd *³ontsuikerd *⁴gehydrolyseerd', true, now(), 'sha256:64ca5ac37cc7f2d9abbf48115c953c27ce1bfb193f224a86b882ec7fde98e378', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Belcando — Finest GF Salmon (1 / 4 / 12,5 kg)
-- bron: https://www.belcando.de/belcando-finest-gf-salmon
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Belcando', 'Finest GF Salmon', 'kibble', '1 / 4 / 12,5 kg', null, 'https://www.belcando.de/belcando-finest-gf-salmon', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'verse zalm (40%); amaranth (16%); aardappelzetmeel; erwtenmeel; vismeel van zeevissen; zalmmeel; marien zoöplankton (krill)*¹ (5%); biergist, geïnactiveerd*² (2,5%); zalmolie; druivenpitexpeller; johannesbroodschroot*²; zalm*³; chiazaad; gedroogde bietenpulp*⁴; dicalciumfosfaat; distelolie; kruiden*² (brandnetelbladeren, gentiaanwortel, duizendguldenkruid, kamille, venkel, karwij, maretakkruid, duizendbladkruid, braambladeren) (0,2%); kaliumchloride; natriumchloride; yucca schidigera *¹gemalen *²gedroogd *³gehydrolyseerd *⁴ontsuikerd', true, now(), 'sha256:3ba7449b81f0aeb054537c81de3ffe646d82f9847216e5c85ef63f88d13182dc', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Belcando — Junior GF Poultry (1 / 4 / 12,5 kg)
-- bron: https://www.belcando.de/belcando-junior-gf-poultry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Belcando', 'Junior GF Poultry', 'kibble', '1 / 4 / 12,5 kg', null, 'https://www.belcando.de/belcando-junior-gf-poultry', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vers gevogeltevlees (40%); amaranth (16%); gevogelte-eiwit, asarm*¹ (14%); aardappelzetmeel; erwtenmeel; marien zoöplankton (krill)*² (2,5%); vismeel van zeevissen (2,5%); gelatine*³ (2,5%); biergist, geïnactiveerd*¹ (2,5%); ei*¹; johannesbroodschroot*¹; dicalciumfosfaat; gevogeltevet; gedroogde bietenpulp*⁴; chiazaad; gevogeltelever*³; zalmolie; natriumchloride; kaliumchloride *¹gedroogd *²gemalen *³gehydrolyseerd *⁴ontsuikerd', true, now(), 'sha256:3789ff5167ec702e6c9011acaf9aacabcb05e840f7b7a814571ac5fb660df2c0', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Belcando — Puppy Gravy (1 / 4 / 12,5 kg)
-- bron: https://www.belcando.de/belcando-puppy-gravy
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Belcando', 'Puppy Gravy', 'kibble', '1 / 4 / 12,5 kg', null, 'https://www.belcando.de/belcando-puppy-gravy', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vers gevogeltevlees (30%); rijst (23%); gevogelte-eiwit, asarm*¹ (19%); mais; vismeel van zeevissen (6%); gevogeltevet; plantaardige olie (kokos); ei*¹ (2,5%); gelatine*² (2,5%); biergist, geïnactiveerd*¹ (2,5%); johannesbroodschroot*¹; gedroogde bietenpulp*³; dicalciumfosfaat; gevogeltelever*²; lijnzaad; zalmolie; chiazaad; natriumchloride; kaliumchloride *¹gedroogd *²gehydrolyseerd *³ontsuikerd', true, now(), 'sha256:8461ab7693b4b216aa418396d3ee578829c85e83bf4195c019b7d90d2cc2b30a', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Belcando — Senior Sensitive (1 / 4 / 12,5 kg)
-- bron: https://www.belcando.de/belcando-senior-sensitive
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Belcando', 'Senior Sensitive', 'kibble', '1 / 4 / 12,5 kg', null, 'https://www.belcando.de/belcando-senior-sensitive', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vers gevogeltevlees (30%); rijst; havermeel van gepelde zaden; aardappelzetmeel (12%); gevogelte-eiwit, asarm*¹ (8%); vismeel van zeevissen (2,5%); gelatine*² (2,5%); druivenpitexpeller (2,5%); biergist, geïnactiveerd*¹; johannesbroodschroot*¹; gedroogde bietenpulp*³; haverdoppen; lijnzaad; chiazaad; gevogeltevet; gevogeltelever*²; dicalciumfosfaat; natriumchloride; kaliumchloride; kruiden*¹ (brandnetelbladeren, gentiaanwortel, duizendguldenkruid, kamille, venkel, karwij, maretakkruid, duizendbladkruid, braambladeren) (0,2%); yucca schidigera *¹gedroogd *²gehydrolyseerd *³ontsuikerd', true, now(), 'sha256:ee6b85e8814cf95bad79bf2f9e7beaa7e2284362db463ef5392cdaa6d536bab4', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Bonzo — Junior met Kip, Groenten en Melk (1,5 / 15 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-bonzo-honden-brokken-junior-kip-groenten
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Bonzo', 'Junior met Kip, Groenten en Melk', 'kibble', '1,5 / 15 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-bonzo-honden-brokken-junior-kip-groenten', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Granen* (volkoren granen 55%) Vlees en dierlijke bijproducten (waarvan 4% Kip) Oliën en vetten Plantaardige bijproducten Plantaardige eiwitextracten Mineralen Groenten* (0,6% gedroogde groenten, gelijk aan 4% groenten) Melk en melkbijproducten (0,7% magere melkpoeder, gelijk aan 4% magere melk in botvormige brokjes**) *Natuurlijke ingrediënten **Totale inhoud in product: 0,07% magere melkpoeder, gelijk aan 0,4% magere melk, Standaard productsamenstelling: 85% kubusbrokjes en 15% botbrokjes', true, now(), 'sha256:aa739353cc8a887ad40d56bc073be1a39c4dbbcae8f09542a0c231e5c3d3aaa8', null from p;

-- Bonzo — Maxi voor grote rassen met Rund (15 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-bonzo-honden-brokken-maxi-rund
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Bonzo', 'Maxi voor grote rassen met Rund', 'kibble', '15 kg', '7613287220585', 'https://www.purina.nl/hond/hondenvoer/product-bonzo-honden-brokken-maxi-rund', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Granen* (volkoren granen 65%) Vlees en dierlijke bijproducten (waarvan 4% rund) Oliën en vetten Plantaardige bijproducten* Plantaardige eiwitextracten Mineralen Groenten* (0,6% gedehydreerde groenten gelijk aan 4% groenten) *natuurlijke ingrediënten.', true, now(), 'sha256:91f041d3e3e6a6f0369b9f83e7183007a2a13363b7fcd62f2e72fd450b1214e0', null from p;

-- Bonzo — Mini Menu met Kip (1,5 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-bonzo-honden-brokken-mini-menu-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Bonzo', 'Mini Menu met Kip', 'kibble', '1,5 kg', '7613287217882', 'https://www.purina.nl/hond/hondenvoer/product-bonzo-honden-brokken-mini-menu-kip', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Granen* (volkoren granen 55%) Vlees en dierlijke bijproducten (waarvan kip 4%) Oliën en vetten Plantaardige bijproducten* Plantaardige eiwitextracten Mineralen Groenten* (0.6% gedehydreerde groenten gelijk aan 4% groenten) *natuurlijke ingrediënten', true, now(), 'sha256:508bd5b608c09fbe6376f7513117c9415b47a5d17cb516619eed38a898c3b6eb', null from p;

-- Bonzo — Mini Menu met Rund (1,5 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-bonzo-honden-brokken-mini-menu-rund
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Bonzo', 'Mini Menu met Rund', 'kibble', '1,5 kg', '7613287217868', 'https://www.purina.nl/hond/hondenvoer/product-bonzo-honden-brokken-mini-menu-rund', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Granen* (volkoren granen 55%) Vlees en dierlijke bijproducten (waarvan 4% rund) Oliën en vetten Plantaardige bijproducten* Plantaardige eiwitextracten Groenten* (0,6% gedehydreerde groenten gelijk aan 4% groenten) Mineralen *natuurlijke ingrediënten.', true, now(), 'sha256:d130912642e27377d4cadaa884cf5ebfcefe8936f7efab803eca4c5b00130eca', null from p;

-- Bonzo — Mini Menu met Lam en Rund (1,5 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-bonzo-honden-brokken-mini-menu-rund-lam
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Bonzo', 'Mini Menu met Lam en Rund', 'kibble', '1,5 kg', '7613287552129', 'https://www.purina.nl/hond/hondenvoer/product-bonzo-honden-brokken-mini-menu-rund-lam', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Granen* (volkoren granen 55%) Vlees en dierlijke bijproducten (waarvan 3% rund en 1% lam) Oliën en vetten Plantaardige bijproducten* Plantaardige eiwitextracten Groenten* (0,6% gedehydreerde groenten gelijk aan 4% groenten) Mineralen *natuurlijke ingrediënten.', true, now(), 'sha256:4f01447908060a310a751ae6036db3370ad5ff65595660e84a904fbd746b8ce8', null from p;

-- Bonzo — Senior met Kip en Groenten (3 / 15 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-bonzo-honden-brokken-senior-kip-groenten
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Bonzo', 'Senior met Kip en Groenten', 'kibble', '3 / 15 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-bonzo-honden-brokken-senior-kip-groenten', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Granen* (volkoren 59%) Vlees en dierlijke bijproducten (waarvan 4% kip) Plantaardige eiwitextracten Plantaardige bijproducten* Oliën en vetten Mineralen Groenten* (0,6% gedehydreerde groenten, gelijk aan 4% groenten) *natuurlijke ingrediënten.', true, now(), 'sha256:1f22adecea1f87d65fa85ca59a179dbf887d4d8c7fc66699f8f922a7b3375f61', null from p;

-- Bonzo — Selections met Rund, Kip of Lam in Gelei (12 x 85 g)
-- bron: https://www.purina.nl/hond/hondenvoer/product-bonzo-natvoer-pouch-rund-kip-lam-gelei
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Bonzo', 'Selections met Rund, Kip of Lam in Gelei', 'wet', '12 x 85 g', null, 'https://www.purina.nl/hond/hondenvoer/product-bonzo-natvoer-pouch-rund-kip-lam-gelei', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Vlees en dierlijke bijproducten (waarvan kip* 4%; 89% natuurlijke ingrediënten*) Granen* Groenten* (1,2% gedehydreerde erwten, gelijk aan 10,8% erwten) Mineralen Suiker *Natuurlijke ingrediënten.', true, now(), 'sha256:055033a5e1cc25b029f9146da3e26292d4c4b4fd370da8936fdd7d6b1575de4d', null from p;

-- Bonzo — Selections met Rund, Kip of Lam in Saus (12 x 85 g)
-- bron: https://www.purina.nl/hond/hondenvoer/product-bonzo-natvoer-pouch-rund-kip-lam-saus
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Bonzo', 'Selections met Rund, Kip of Lam in Saus', 'wet', '12 x 85 g', null, 'https://www.purina.nl/hond/hondenvoer/product-bonzo-natvoer-pouch-rund-kip-lam-saus', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Vlees en dierlijke bijproducten (waarvan kip* 9%; 94% natuurlijke ingrediënten*) Granen* Groenten (0,8% gedehydreerde wortel, gelijk aan 7,2% wortel) Mineralen Suiker *Natuurlijke ingrediënten.', true, now(), 'sha256:dfd5534258786736a53906f08460a895086bcc029745a613f7fac628d7404098', null from p;

-- Bonzo — Tasty Strips Kip, Kalkoen en Eend in Saus (12 x 85 g)
-- bron: https://www.purina.nl/hond/hondenvoer/product-bonzo-natvoer-tasty-strips
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Bonzo', 'Tasty Strips Kip, Kalkoen en Eend in Saus', 'wet', '12 x 85 g', null, 'https://www.purina.nl/hond/hondenvoer/product-bonzo-natvoer-tasty-strips', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Vlees en dierlijke bijproducten (waarvan 7% kip*; 94% natuurlijke ingrediënten*) Granen* Groenten (1% gedehydreerde wortel, gelijk aan 9% wortel; 0,6% gedehydreerde tomaat*, gelijk aan 5,4% tomaat*) Mineralen Suiker *natuurlijke ingrediënten', true, now(), 'sha256:9896d652dbfad3097a860b151ff45d1579b31620e1f6feec3087085f1d42ceb8', null from p;

-- CaroCroc — Puppy (3 / 12,5 kg)
-- bron: https://www.carocroc.nl/producten/premium/puppy/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('CaroCroc', 'Puppy', 'kibble', '3 / 12,5 kg', null, 'https://www.carocroc.nl/producten/premium/puppy/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte (36%), dierlijk eiwitextract (26%), rijst, mais, tarwe, dierlijk vet (rund, gevogelte), gerst, bietenpulp, tarwegries, rijstzemelen, gist, mineralen, visolie (zalm) (0,8%), cellulose, gehydrolyseerde kippenlever, maisgluten, lijnzaadolie.', true, now(), 'sha256:60b2df47962be34f7bbadc82affe4527b7a9918f69fb05452e23d988a9f70a7c', null from p;

-- CaroCroc — Puppy Large (3 / 12,5 kg)
-- bron: https://www.carocroc.nl/producten/premium/puppy-large/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('CaroCroc', 'Puppy Large', 'kibble', '3 / 12,5 kg', null, 'https://www.carocroc.nl/producten/premium/puppy-large/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Dierlijk eiwitextract (24%), gevogelte (22%), mais, tarwe, vleesmix (9%), dierlijk vet (gevogelte, rund), tarwegries, rijstzemelen, rijst, visolie (zalm) (1,1%), gerst, mineralen, gist, cellulose, bietenpulp, gehydrolyseerde kippenlever, lijnzaadolie.', true, now(), 'sha256:755b0e2b1b9d20105a364fc32a7d83640b10b24c8c28fd5ce2e3400042baedf1', null from p;

-- CaroCroc — Large Breed (12,5 kg)
-- bron: https://www.carocroc.nl/producten/premium/large-breed/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('CaroCroc', 'Large Breed', 'kibble', '12,5 kg', null, 'https://www.carocroc.nl/producten/premium/large-breed/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Dierlijk eiwitextract (25%), vleesmix (22%), mais, tarwe, gevogelte (8,3%), gerst, gehydrolyseerd collageeneiwit (5,6%), dierlijk vet (gevogelte, rund), rijstzemelen, rijst, tarwegries, visolie (zalm) (1,4%), mineralen, bietenpulp, lijnzaad, gehydrolyseerde kippenlever, cellulose, hemoglobine.', true, now(), 'sha256:a3945e22a5b96fb53c4a6542438645410588b1e971e9b74542cc6099c5728737', null from p;

-- CaroCroc — Small Breed (1,5 / 3 / 12,5 kg)
-- bron: https://www.carocroc.nl/producten/premium/small-breed/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('CaroCroc', 'Small Breed', 'kibble', '1,5 / 3 / 12,5 kg', null, 'https://www.carocroc.nl/producten/premium/small-breed/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vleesmix (26%), dierlijk eiwit extract (19%), mais, tarwe, gevogelte (13%), dierlijk vet (gevogelte, rund), rijst, rijstzemelen, bietenpulp, tarwegries, mineralen (waaronder natriumtripolyfosfaat 0,22%), gehydrolyseerde kippenlever, cellulose, hemoglobine, lijnzaad, gist.', true, now(), 'sha256:73c1fa61305c9e43d75d708c9755dd9c847a119da47ca534d1090de6bfb1a8f8', null from p;

-- CaroCroc — Senior (3 / 12,5 kg)
-- bron: https://www.carocroc.nl/producten/premium/senior/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('CaroCroc', 'Senior', 'kibble', '3 / 12,5 kg', null, 'https://www.carocroc.nl/producten/premium/senior/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Tarwe, gevogelte (18%), mais, vleesmix (15%), tarwegries, dierlijk eiwitextract (4%), gerst, dierlijk vet (gevogelte, rund), rijst, rijstzemelen, bietenpulp, lijnzaad, mineralen, gehydrolyseerde kippenlever, cellulose.', true, now(), 'sha256:98ae249ad827f4ec092ffb4e530a4cfddbf67ee6a4dd3a94646a3be344898299', null from p;

-- CaroCroc — Low Energy (3 / 12,5 kg)
-- bron: https://www.carocroc.nl/producten/premium/low-energy/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('CaroCroc', 'Low Energy', 'kibble', '3 / 12,5 kg', null, 'https://www.carocroc.nl/producten/premium/low-energy/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vleesmix (27%), gevogelte (19%), mais, tarwe, dierlijk eiwit extract (7%), gerst, rijstzemelen, rijst, tarwegries, bietenpulp, dierlijk vet (gevogelte, rund), gehydrolyseerde kippenlever, lijnzaad, mineralen, cellulose.', true, now(), 'sha256:ccf2b9b10d43dd85c739c5ce10f4aec10edb820f28d281a51b05fa10695200b8', null from p;

-- CaroCroc — Energy (3 / 12,5 kg)
-- bron: https://www.carocroc.nl/producten/premium/energy/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('CaroCroc', 'Energy', 'kibble', '3 / 12,5 kg', null, 'https://www.carocroc.nl/producten/premium/energy/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Dierlijk eiwit extract (22%), vleesmix (22%), gevogelte (14%), tarwe, mais, dierlijk vet (rund, gevogelte), rijst, rijstzemelen, bietenpulp, tarwegries, mineralen, lijnzaad, cellulose, gehydrolyseerde kippenlever, hemoglobine.', true, now(), 'sha256:7baade6d020f641c6629087178e5fac0c4b62b464b9f25a3e98a4f23093c8707', null from p;

-- CaroCroc — Senior Sensitive (3 / 12,5 kg)
-- bron: https://www.carocroc.nl/producten/speciale-aandacht/carocroc-senior-sensitive/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('CaroCroc', 'Senior Sensitive', 'kibble', '3 / 12,5 kg', null, 'https://www.carocroc.nl/producten/speciale-aandacht/carocroc-senior-sensitive/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam (38%, waarvan minstens 4% verse lam), tarwe, maïs, rijst, gerst, dierlijk vet (gevogelte, rund), gehydrolyseerde kippenlever, bietenpulp, lijnzaad, mineralen, gist.', true, now(), 'sha256:53fa43fc89e6ab704b0e7a397a9051cdfcd03c44d6a34849b069aaea4423cf0e', null from p;

-- CaroCroc — Superior (3 / 12,5 kg)
-- bron: https://www.carocroc.nl/producten/speciale-aandacht/carocroc-superior/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('CaroCroc', 'Superior', 'kibble', '3 / 12,5 kg', null, 'https://www.carocroc.nl/producten/speciale-aandacht/carocroc-superior/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam (44%, waarvan minstens 4% verse lam), maïs, rijst, maïsgluten, gehydrolyseerde kippenlever, bietenpulp (2,7%), dierlijk vet (rund, gevogelte), gist, mineralen, lijnzaadolie.', true, now(), 'sha256:467cef742baa4cc75b0da0398ef8a3123119b80c57de8a9cb4a6bb45c1950364', null from p;

-- Cavom — compleet Adult (5 / 20 kg)
-- bron: https://www.cavom.nl/product/compleet/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Cavom', 'compleet Adult', 'kibble', '5 / 20 kg', null, 'https://www.cavom.nl/product/compleet/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rund*, ontsloten mais, ontsloten tarwe, rundvet, ontsloten rijst, gemalen cichoreiwortel (bron van inuline), lam*, di-calciumfosfaat, raapzaadolie, mineralen, zalmolie (1%), plantaardige vezels, gist (postbiotica). (*gedroogd)', true, now(), 'sha256:d43d50929b3b521b3aabdddd8dc742d360ae8af772b062e1ec7700038669e5a4', null from p;

-- Cavom — compleet Pup/Junior (5 / 20 kg)
-- bron: https://www.cavom.nl/product/compleet-pup-junior/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Cavom', 'compleet Pup/Junior', 'kibble', '5 / 20 kg', null, 'https://www.cavom.nl/product/compleet-pup-junior/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rund*, ontsloten mais, ontsloten tarwe, rundvet, lam*, ontsloten rijst, gemalen cichoreiwortel (bron van inuline), di-calciumfosfaat, raapzaadolie, mineralen, zalmolie (1%), plantaardige vezels, gist (postbiotica). (*gedroogd)', true, now(), 'sha256:ad3ccb8a07b4e3b03f4513ba6820a72504ca4ba6acd793e3367142a575fc5925', null from p;

-- Cavom — compleet Senior (5 / 20 kg)
-- bron: https://www.cavom.nl/product/compleet-senior/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Cavom', 'compleet Senior', 'kibble', '5 / 20 kg', null, 'https://www.cavom.nl/product/compleet-senior/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ontsloten mais, ontsloten tarwe, rund*, rundvet, lam*, gemalen cichoreiwortel (bron van inuline), di-calciumfosfaat, ontsloten rijst, raapzaadolie, mineralen, zalmolie (1%), plantaardige vezels, gist (postbiotica), glucosamine (2000mg/kg). (*gedroogd)', true, now(), 'sha256:482c376def1cacbc23b29d194119f0658c42020e23e68e2796b60153091a0f2e', null from p;

-- Cavom — compleet Light (5 / 20 kg)
-- bron: https://www.cavom.nl/product/compleet-light/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Cavom', 'compleet Light', 'kibble', '5 / 20 kg', null, 'https://www.cavom.nl/product/compleet-light/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ontsloten mais, rund*, ontsloten tarwe, ontsloten rijst, rundvet, plantaardige vezels, gemalen cichoreiwortel (bron van inuline), di-calciumfosfaat, raapzaadolie, mineralen, zalmolie (1%), gist (postbiotica). (*gedroogd)', true, now(), 'sha256:894bba085f4d5ec6e6017bf850a363815a8e89f281a5fe9edc708110a863ca7d', null from p;

-- Cavom — compleet Sport (5 / 20 kg)
-- bron: https://www.cavom.nl/product/compleet-sport/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Cavom', 'compleet Sport', 'kibble', '5 / 20 kg', null, 'https://www.cavom.nl/product/compleet-sport/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rund*, ontsloten mais, ontsloten tarwe, rundvet, kalkoen*, lam*, gemalen cichoreiwortel (bron van inuline), di-calciumfosfaat, raapzaadolie, mineralen, zalmolie (1,2%), plantaardige vezels, krill, gist (postbiotica), glucosamine (2000mg/kg). (*gedroogd)', true, now(), 'sha256:ebd441b36eff5c25bcd577bc4642da73edff8edbafc17bc9b7487632d6589639', null from p;

-- Cavom — compleet Zalm (5 / 20 kg)
-- bron: https://www.cavom.nl/product/compleet-zalm/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Cavom', 'compleet Zalm', 'kibble', '5 / 20 kg', null, 'https://www.cavom.nl/product/compleet-zalm/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ontsloten mais, zalm* (17%), ontsloten rijst, kalkoen*, rundvet, gemalen cichoreiwortel (bron van inuline), di-calciumfosfaat, raapzaadolie, mineralen, krill*, zalmolie (1,2%), plantaardige vezels, gist (postbiotica), glucosamine (2000mg/kg). (*gedroogd)', true, now(), 'sha256:616270f1568e114cabf11ceb408fb8f88ab4f4033bd98ddd72d5ef1e1c82e922', null from p;

-- Cavom — compleet Midi (2 / 10 kg)
-- bron: https://www.cavom.nl/product/compleet-midi/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Cavom', 'compleet Midi', 'kibble', '2 / 10 kg', null, 'https://www.cavom.nl/product/compleet-midi/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rund*, ontsloten mais, ontsloten tarwe, rundvet, ontsloten rijst, gemalen cichoreiwortel (bron van inuline), lam*, di-calciumfosfaat, raapzaadolie, mineralen, zalmolie (1%), plantaardige vezels, gist (postbiotica). (*gedroogd)', true, now(), 'sha256:d43d50929b3b521b3aabdddd8dc742d360ae8af772b062e1ec7700038669e5a4', null from p;

-- Cavom — compleet Diner (10 kg)
-- bron: https://www.cavom.nl/product/compleet-diner/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Cavom', 'compleet Diner', 'kibble', '10 kg', null, 'https://www.cavom.nl/product/compleet-diner/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Granen, vlees en dierlijke bijproducten, oliën en vetten (waaronder 1% zalmolie), plantaardige bijproducten, vitaminen en mineralen.', true, now(), 'sha256:afb398e888d4050997f58b61b86d2aed3ad0108b58a60a196a386e3edec504e2', null from p;

-- Cavom — compleet Lam & Rijst (5 / 20 kg)
-- bron: https://www.cavom.nl/product/compleet-lam-rijst/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Cavom', 'compleet Lam & Rijst', 'kibble', '5 / 20 kg', null, 'https://www.cavom.nl/product/compleet-lam-rijst/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam* (23%), ontsloten mais, ontsloten rijst (20,5%), rundvet, kalkoen*, gemalen cichoreiwortel (bron van inuline), di-calciumfosfaat, raapzaadolie, mineralen, zalmolie (1%), plantaardige vezels, gist (postbiotica). (*gedroogd)', true, now(), 'sha256:a98302fd6a9eeb10ed655d890598e90de0b4b2267ed923b4aed7df5ef1ccb19e', null from p;

-- GranataPet — Liebling's Mahlzeit eend Sensitive (1,8 kg)
-- bron: https://www.granatapet.de/ente-sensitive-1-8-kg-204392
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('GranataPet', 'Liebling''s Mahlzeit eend Sensitive', 'kibble', '1,8 kg', '4260165204392', 'https://www.granatapet.de/ente-sensitive-1-8-kg-204392', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'eendenvlees 40% (gedroogd en fijn gemalen), aardappelvlokken (ontsloten), aardappelzetmeel (fijn gemalen), gevogeltevet, granaatappelpitjes 7%, zalmolie 1%, lignocellulose, mineralen, biergist, cichorei 0,5% (fijn gemalen, met natuurlijke FOS en inuline), spirulina 0,1% (fijn gemalen), Nieuw-Zeelandse groenlipmossel 0,1% (fijn gemalen, van nature rijk aan glucosamine en chondroïtine), yucca schidigera', true, now(), 'sha256:8e24ac384b5f962e7795a5a353b64b589f88167e80866dde20454c85be24d432', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- GranataPet — Liebling's Mahlzeit vis Sensitive (1,8 kg)
-- bron: https://www.granatapet.de/fisch-sensitive-1-8-kg-204347
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('GranataPet', 'Liebling''s Mahlzeit vis Sensitive', 'kibble', '1,8 kg', '4260165204347', 'https://www.granatapet.de/fisch-sensitive-1-8-kg-204347', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vis 40% (bestaande uit roodbaars, kabeljauw, koolvis en haring, gedroogd en fijn gemalen), aardappelvlokken (ontsloten), aardappelzetmeel (fijn gemalen), gevogeltevet, granaatappelpitjes 7%, zalmolie 1%, lignocellulose, mineralen, biergist, cichorei 0,5% (fijn gemalen, met natuurlijke FOS en inuline), spirulina 0,1% (fijn gemalen), Nieuw-Zeelandse groenlipmossel 0,1% (fijn gemalen, van nature rijk aan glucosamine en chondroïtine), yucca schidigera', true, now(), 'sha256:f99b7b2c0f135ce144a827eed3c541c04baeaa632a69b954591babc45bfe43d2', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- GranataPet — Liebling's Mahlzeit gevogelte Junior (1,8 kg)
-- bron: https://www.granatapet.de/gefluegel-junior-1-8-kg-204194
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('GranataPet', 'Liebling''s Mahlzeit gevogelte Junior', 'kibble', '1,8 kg', '4260165204194', 'https://www.granatapet.de/gefluegel-junior-1-8-kg-204194', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gevogeltevlees 44% (gedroogd en fijn gemalen), aardappelvlokken (ontsloten), aardappelzetmeel (fijn gemalen), gevogeltevet 8,5%, granaatappelpitjes 7%, zalmolie 1%, lignocellulose, mineralen, biergist, cichorei 0,5% (fijn gemalen, met FOS en inuline), spirulina 0,1% (fijn gemalen), Nieuw-Zeelandse groenlipmossel 0,1% (fijn gemalen, van nature rijk aan glucosamine en chondroïtine), yucca schidigera', true, now(), 'sha256:3d8be1212bd6a2dc6e2e2533b880085c55c019ca1fc847a5b979bb0d0749969c', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
