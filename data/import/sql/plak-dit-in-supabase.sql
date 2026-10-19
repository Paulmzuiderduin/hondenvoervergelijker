-- Plak dit hele bestand in de Supabase SQL Editor en klik op Run.
--
-- Wat erin zit:
--   1. de importbatch: 97 producten van Animonda, Belcando, Bonzo, CaroCroc, Cavom, GranataPet, Markus-Mühle, Prins Petfoods, Renske, Smuldier
--   2. de woordenlijst: 121 woorden (woorden-20261019-02.sql)
--
-- Wat er daarna op de site staat:
--   - de nieuwe producten doen meteen mee in de vergelijking;
--   - op elke kaart staat "Automatisch overgenomen van <domein> op <datum> ·
--     nog niet door een mens nagelopen";
--   - waar het etiket een vertaling is, staat dat erbij;
--   - geen enkel product krijgt de status "nagekeken": dat gebeurt alleen als
--     een mens in Beheer op die knop klikt.
--
-- Alles zit in één transactie. Gaat er iets mis, dan is er niets veranderd.
-- Heb je dit bestand al eerder geplakt, dan stopt hij met een melding over een
-- bestaande sleutel: dat betekent dat de producten er al staan.

begin;


-- Automatisch overgenomen etiketten, batch 1 van 2026-10-19 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site zegt daarna:
-- "automatisch overgenomen van <domein> op <datum> · nog niet door een mens
-- nagelopen". Er wordt hier geen enkele controle door een mens geclaimd.

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

-- Automatisch overgenomen etiketten, batch 2 van 2026-10-19 (47 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site zegt daarna:
-- "automatisch overgenomen van <domein> op <datum> · nog niet door een mens
-- nagelopen". Er wordt hier geen enkele controle door een mens geclaimd.

-- GranataPet — Liebling's Mahlzeit kalkoen Senior (1,8 kg)
-- bron: https://www.granatapet.de/pute-senior-1-8-kg-191036
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('GranataPet', 'Liebling''s Mahlzeit kalkoen Senior', 'kibble', '1,8 kg', '4260165191036', 'https://www.granatapet.de/pute-senior-1-8-kg-191036', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gevogeltevlees 38% (waarvan kalkoen 70%, gedroogd en fijn gemalen), aardappelvlokken (ontsloten), aardappelzetmeel (fijn gemalen), granaatappelpitjes 7%, gevogeltevet, zalmolie 1%, lignocellulose, mineralen, biergist, cichorei 0,5% (fijn gemalen, met FOS en inuline), spirulina 0,1% (fijn gemalen), Nieuw-Zeelandse groenlipmossel 0,1% (fijn gemalen, van nature rijk aan glucosamine en chondroïtine), yucca schidigera', true, now(), 'sha256:130bc0025c9b88d5427d38deca27324c8c521e40c2fac315a6bf2f65349c4b2d', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- GranataPet — Mini Royal paard Mono (1 kg)
-- bron: https://www.granatapet.de/pferd-mono-1-kg-191333
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('GranataPet', 'Mini Royal paard Mono', 'kibble', '1 kg', '4260165191333', 'https://www.granatapet.de/pferd-mono-1-kg-191333', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'paard 38% (vers paardenvlees 26%, paardenvlees gedroogd en fijn gemalen 12% ), erwten 25%, gedroogde zoete aardappel 22%, koolzaadolie 6%, bietenpulp (ontsuikerd) 5%, granaatappelpitjes 2% (gedroogd en fijn gemalen), mineralen 0,8%, cichorei 0,5% (fijn gemalen, met natuurlijke FOS en inuline), vitaminen 0,5%, Nieuw-Zeelandse groenlipmossel 0,1% (fijn gemalen, van nature rijk aan glucosamine en chondroïtine), yucca schidigera 0,1%', true, now(), 'sha256:f437408fd7a8323d7bb9c2f847001b627d29be383eefdb44fd3ec6be06067dba', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- GranataPet — Natural Taste paard Mono (4 kg)
-- bron: https://www.granatapet.de/pferd-mono-4-kg-191098
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('GranataPet', 'Natural Taste paard Mono', 'kibble', '4 kg', '4260165191098', 'https://www.granatapet.de/pferd-mono-4-kg-191098', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'paard 38% (vers paardenvlees 26%, paardenvlees gedroogd en fijn gemalen 12% ), erwten 25%, gedroogde zoete aardappel 22%, koolzaadolie 6%, bietenpulp (ontsuikerd) 5%, granaatappelpitjes 2% (gedroogd en fijn gemalen), mineralen 0,8%, cichorei 0,5% (fijn gemalen, met FOS en inuline), vitaminen 0,5%, Nieuw-Zeelandse groenlipmossel 0,1% (fijn gemalen, van nature rijk aan glucosamine en chondroïtine), yucca schidigera 0,1%', true, now(), 'sha256:537d32532b20753690c589c61ce78fc69ab51704aae338fb77c9fce656fc4fb9', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- GranataPet — Liebling's Mahlzeit PUR gevogelte (400 g)
-- bron: https://www.granatapet.de/gefluegel-400-g-186070
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('GranataPet', 'Liebling''s Mahlzeit PUR gevogelte', 'wet', '400 g', '4260165186070', 'https://www.granatapet.de/gefluegel-400-g-186070', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gevogeltevlees 70% (bestaande uit spiervlees, hart, lever, gevogeltemaag), gevogeltebouillon 27,4%, granaatappelpitjes 1% (gedroogd en fijn gemalen), mineralen 1%, zalmolie 0,5%, groenlipmossel 0,1% (fijn gemalen, van nature rijk aan glucosamine en chondroïtine)', true, now(), 'sha256:26222af76fd28d2e20eeddf7b995814b36bbad861a341ae9d45e276309d8aa1c', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- GranataPet — Liebling's Mahlzeit PUR paard (400 g)
-- bron: https://www.granatapet.de/pferd-400-g-186131
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('GranataPet', 'Liebling''s Mahlzeit PUR paard', 'wet', '400 g', '4260165186131', 'https://www.granatapet.de/pferd-400-g-186131', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'paardenvlees 70% (bestaande uit spiervlees, hart, lever), paardenbouillon 27,4%, granaatappelpitjes 1% (gedroogd en fijn gemalen), mineralen 1%, zalmolie 0,5%, groenlipmossel 0,1% (fijn gemalen, van nature rijk aan glucosamine en chondroïtine)', true, now(), 'sha256:d45cfeb02a192f08f70a525c75cfb0e5f019525d8ca60b7c00501cfb25d073de', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- GranataPet — Liebling's Mahlzeit lam & aardappel (400 g)
-- bron: https://www.granatapet.de/lamm-kartoffel-400-g-183987
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('GranataPet', 'Liebling''s Mahlzeit lam & aardappel', 'wet', '400 g', '4260165183987', 'https://www.granatapet.de/lamm-kartoffel-400-g-183987', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'lamsvlees 65% (bestaande uit spiervlees, hart, lever, long, pens), lamsbouillon 23,4%, aardappel 5%, hüttenkäse 2%, venkel 2%, granaatappelpitjes 1% (gedroogd en fijn gemalen), mineralen 1%, olijfolie 0,5%, groenlipmossel 0,1% (fijn gemalen, van nature rijk aan glucosamine en chondroïtine)', true, now(), 'sha256:f91ff40fc7967fa8a4da2723f3f11a2e5a007f011fee048f5c2cbeba0639ecdb', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- GranataPet — Liebling's Mahlzeit kip & pastinaak (400 g)
-- bron: https://www.granatapet.de/huhn-pastinaken-400-g-192149
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('GranataPet', 'Liebling''s Mahlzeit kip & pastinaak', 'wet', '400 g', '4260165192149', 'https://www.granatapet.de/huhn-pastinaken-400-g-192149', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kippenvlees 65% (bestaande uit spiervlees, hart, lever, maag), kippenbouillon 26,3%, pastinaak 5%, vlierplant 1%, granaatappelpitjes 1% (gedroogd en fijn gemalen), mineralen 1%, lijnzaadolie 0,5%, basilicum 0,1%, groenlipmossel 0,1% (fijn gemalen, van nature rijk aan glucosamine en chondroïtine)', true, now(), 'sha256:d449881cb064789797989a480cc0ca33d0fb3a9911c2c83f1f9152ff7a1a95f9', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Markus-Mühle — FREILAND Gans (5 / 12 kg)
-- bron: https://markus-muehle.de/freiland/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Markus-Mühle', 'FREILAND Gans', 'kibble', '5 / 12 kg', null, 'https://markus-muehle.de/freiland/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gemalen gedroogd ganzenvlees 31%, gestoomde aardappelen 25%, gestoomd groentemengsel (bestaande uit: wortels, selderij, erwten, pastinaak), rode biet 6%, bietenpulp. koudgeperste hennepolie, witvisolie, appels 3%, gedroogd en gemalen kruidenmengsel (bestaande uit: brandnetelbladeren, heermoes, paardenbloem), lijnzaad, zeewiermeel, veen', true, now(), 'sha256:f70aef95ec62faf9000c0cd40d86ced98629d9a8fe78012c4c5f8525f852ceef', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Markus-Mühle — LUPO Sensitiv 24/10 (5 / 15 kg)
-- bron: https://markus-muehle.de/hundetrockenfutter-kaltgepresst/lupo-sensitiv/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Markus-Mühle', 'LUPO Sensitiv 24/10', 'kibble', '5 / 15 kg', null, 'https://markus-muehle.de/hundetrockenfutter-kaltgepresst/lupo-sensitiv/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gemalen gedroogd kippenvlees 33%, gewalst aardappelmeel 33%, rode biet, bietenpulp, mariadistelzaad, koudgeperst plantaardig oliemengsel (bestaande uit hennepolie en koolzaadolie), gelatine, algen, visolie, veen, lijnzaad, gedroogde cichorei, gedroogde brandnetels, gedroogde paardenbloembladeren, gedroogde yucca schidigera', true, now(), 'sha256:7d2780de7ff17332f0910a647d0d518cdda3aa53ccd3537a494a253177cd3cde', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Markus-Mühle — Black Angus Adult (1,5 / 5 / 15 kg)
-- bron: https://markus-muehle.de/hundetrockenfutter-kaltgepresst/black-angus/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Markus-Mühle', 'Black Angus Adult', 'kibble', '1,5 / 5 / 15 kg', null, 'https://markus-muehle.de/hundetrockenfutter-kaltgepresst/black-angus/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gemalen gedroogd Black Angus-vlees 17,3%, gemalen bruine volkorenrijst, gemalen gedroogd eendenvlees 9,7%, gemalen zeevis 6,6%, gemalen gierst, pompoen, gelatine, koudgeperst plantaardig oliemengsel (bestaande uit hennep- en koolzaadolie), bietenpulp, zeewiermeel, visolie, gedroogd en gemalen kruidenmengsel (bestaande uit brandnetelbladeren, heermoes, paardenbloem), gedroogde bosbessen, mariadistelzaad, venkelzaad, veen, lijnzaad, kiezelaarde 1,5%, mosselextract uit Perna Canaliculus 1,5%, zeeweekdiereiwit uit Perna Canaliculus 1%, gedroogde en gemalen yucca schidigera, eipoeder', true, now(), 'sha256:ed7bed48f2914289200e5be9b3d6ec4bf162ff38a7656457d4e1e95e7fa5bee1', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Markus-Mühle — Black Angus Junior (1,5 / 5 / 15 kg)
-- bron: https://markus-muehle.de/hundetrockenfutter-kaltgepresst/black-angus/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Markus-Mühle', 'Black Angus Junior', 'kibble', '1,5 / 5 / 15 kg', null, 'https://markus-muehle.de/hundetrockenfutter-kaltgepresst/black-angus/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gemalen gedroogd Black Angus-vlees 20,2%, gemalen bruine volkorenrijst, gemalen gedroogd eendenvlees 9,1%, zeevis 5,6%, gemalen volkorenmais, gemalen gierst, pompoen, gelatine, koudgeperst plantaardig oliemengsel (bestaande uit hennep- en koolzaadolie), zeewiermeel, visolie, bietenpulp, gedroogd veen 2%, kruidenmengsel, gedroogd en gemalen (bestaande uit brandnetelbladeren, heermoes, paardenbloem), gedroogde bosbessen, kiezelaarde 1,5%, mosselextract uit Perna Canaliculus 1,4%, groene mineralaarde 1,4%, zeeweekdiereiwit uit Perna Canaliculus 1%, venkelzaad, eipoeder, lijnzaad, gedroogde en gemalen yucca schidigera', true, now(), 'sha256:bbc1f197f4b22f420bfed3ec4655590eff7943cc0c6e511dd5d838ce05333618', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Markus-Mühle — Black Angus Senior (1,5 / 5 / 15 kg)
-- bron: https://markus-muehle.de/hundetrockenfutter-kaltgepresst/black-angus/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Markus-Mühle', 'Black Angus Senior', 'kibble', '1,5 / 5 / 15 kg', null, 'https://markus-muehle.de/hundetrockenfutter-kaltgepresst/black-angus/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gemalen gedroogd Black Angus-vlees 17%, gemalen bruine volkorenrijst, gemalen gedroogd eendenvlees 8,5%, gemalen zeevis 5,4%, gemalen gierst, pompoen, gelatine, bietenpulp, koudgeperst plantaardig oliemengsel, zeewiermeel, visolie, gedroogd veen 2%, mariadistelzaad, venkelzaad, kruidenmengsel, gedroogd en gemalen (bestaande uit brandnetelbladeren, heermoes, paardenbloem), gedroogde bosbessen, lijnzaad, kiezelaarde 1,5%, mosselextract uit Perna Canaliculus 1,5%, groene mineralaarde 1,5%, zeeweekdiereiwit uit Perna Canaliculus 1%, gedroogde en gemalen yucca schidigera, eipoeder, tagetesbloemen', true, now(), 'sha256:42999b1131c0871e99890bc3eeba1c74f3355b66e9240fe6b556fd5fbd108044', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Markus-Mühle — Rotwild Hirsch (5 / 15 kg)
-- bron: https://markus-muehle.de/hundetrockenfutter-kaltgepresst/rotwild-hirsch/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Markus-Mühle', 'Rotwild Hirsch', 'kibble', '5 / 15 kg', null, 'https://markus-muehle.de/hundetrockenfutter-kaltgepresst/rotwild-hirsch/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gemalen gedroogd barbarie-eendvlees 18%, gemalen bruine volkorenrijst, gemalen gedroogd hertenvlees 9,4%, aardappelvlokken, gemalen gedroogde zeevis 6,3%, gemalen gierst, koudgeperst plantaardig oliemengsel (bestaande uit: koolzaad- en hennepolie), gelatine, gedroogde en gemalen rode biet, gedroogde en gemalen wildbeenderen, zeewiermeel, gedroogde en gemalen kruidenplanten (bestaande uit brandnetelbladeren, heermoes, paardenbloem), lijnzaad, gedroogd veen 2%, bosvruchten (bestaande uit rode bessen, frambozen, bramen, bosbessen, rozenbottels, vossenbessen) 2%, venkelzaad, gedroogde en gemalen yucca schidigera, eipoeder, kiezelaarde 1,5%, mosselextract uit Perna Canaliculus 1,5%', true, now(), 'sha256:58fd3bc8abbc62e9138e8a0b2de14c347ae6e18f9ef3a0b73e5d995fc98fbba4', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Markus-Mühle — Weidelamm (5 / 15 kg)
-- bron: https://markus-muehle.de/hundetrockenfutter-kaltgepresst/weidelamm/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Markus-Mühle', 'Weidelamm', 'kibble', '5 / 15 kg', null, 'https://markus-muehle.de/hundetrockenfutter-kaltgepresst/weidelamm/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gemalen gedroogd lammenvlees 20%, gemalen bruine volkorenrijst, groentemengsel (bestaande uit erwten, rode biet, wortels, pompoen, bietenpulp) 18%, gemalen gierst 15%, koudgeperste hennepolie 4,5%, zeewiermeel, gelatine, visolie 3%, gedroogd en gemalen kruidenmengsel (bestaande uit brandnetelbladeren, heermoes, paardenbloem), gedroogde bosbessen, lijnzaad, mariadistelzaad, venkelzaad, kiezelaarde, mosselextract uit Perna Canaliculus, groene mineralaarde, gedroogde en gemalen yucca schidigera, eipoeder', true, now(), 'sha256:13d8892b35ccb1c4d660b7deb697d7f0398def99521c010f8ed4cf2af70c8175', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Markus-Mühle — NaturNah (1,5 / 5 / 15 kg)
-- bron: https://markus-muehle.de/hundetrockenfutter-kaltgepresst/naturnah/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Markus-Mühle', 'NaturNah', 'kibble', '1,5 / 5 / 15 kg', null, 'https://markus-muehle.de/hundetrockenfutter-kaltgepresst/naturnah/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gemalen gedroogd kippenvlees 28%, gemalen volkorenmais, gemalen volkorenrijst, gemalen wildpens 5%, gemalen wildbeenderen 5%, rode biet, gedroogde bietenpulp, visolie, koudgeperste koolzaadolie, veen, vruchtenmengsel (bestaande uit: appels, peren, zwarte bessen, acerola, bananen, papaja''s), kruidenmengsel (bestaande uit: brandnetelbladeren, heermoes, viooltjes, marjolein, paardenbloem), lijnzaad, zeewieren, gedroogde en gemalen yucca schidigera, eipoeder 0,5%', true, now(), 'sha256:4d1910ba5e4c5b2bcb220cfc39dc3c70554a204d8c2c50e532806b4b6a81e807', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Markus-Mühle — True Nature (1,5 / 5 / 15 kg)
-- bron: https://markus-muehle.de/hundetrockenfutter-kaltgepresst/true-nature/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Markus-Mühle', 'True Nature', 'kibble', '1,5 / 5 / 15 kg', null, 'https://markus-muehle.de/hundetrockenfutter-kaltgepresst/true-nature/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogd en gemalen Zwitsers kippenvlees 29%, gestoomde aardappelen 16%, bruine volkorenrijst, gedroogd witvisvlees, gemalen 6%, gepureerde groenten (bestaande uit: bieten, cichorei, selderij, snijbiet, pastinaak, peterseliewortel), koudgeperste plantaardige oliën (bestaande uit: lijnolie, koolzaadolie, walnootolie, teunisbloemolie), kastanjemeel, rijstkiemen, gedroogd zeevruchtenmengsel 4% (bestaande uit: zeewieren, mosselvlees, schaaldierenvlees), visolie, gedroogd alpenkruidenmengsel 3% (bestaande uit: venkel, brandnetels, paardenbloem, karwij, kamille, tijm, frambozenbladeren, braambladeren, gentiaan), alfalfa, fenegriekzaad, mariadistelzaad, veen, rozemarijnolie, tagetesbloemen', true, now(), 'sha256:2cc801173d0d2223c0226f5f115ff3e41216eed44c0ab4f116fdd0792e002f67', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Markus-Mühle — Veggie (1 / 5 / 12 kg)
-- bron: https://markus-muehle.de/hundetrockenfutter-kaltgepresst/veggie/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Markus-Mühle', 'Veggie', 'kibble', '1 / 5 / 12 kg', null, 'https://markus-muehle.de/hundetrockenfutter-kaltgepresst/veggie/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'groentemengsel (bestaande uit erwten 50%, gedroogde wortels 15%, rode biet 15%, pastinaak, selderij, cichorei) 45%, gedroogde en gemalen zoete lupinen 15%, hennepmeel, maiskiemen, rijstkiemen, aardappelmeel, lijnzaad 4%, oliemengsel (bestaande uit: koolzaadolie, notenolie, tarwekiemolie), gedroogd en gemalen vruchtenmengsel (bestaande uit: appels 45%, peren 45%, rode bessen, aroniabessen, rozenbottels, bosbessen), bietenpulp, algenmengsel (bestaande uit: Ascophyllum nodosum, Schizochytrium), mariadistelzaad 1%, gedroogde en gemalen kruidenplanten (brandnetelbladeren, heermoes, paardenbloem) 1%, groene mineralaarde, yucca schidigera', true, now(), 'sha256:69b1fba32b084a948666ece5fe3d004cc425a25689b797d1c3c9c1708e1cac84', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Prins Petfoods — ProCare Puppy & Junior (null)
-- bron: https://prinspetfoods.com/product/procare-puppy-junior/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Puppy & Junior', 'kibble', 'null', null, 'https://prinspetfoods.com/product/procare-puppy-junior/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogeltemeel (21,0%), maïs, tarwe, sorghum, rundertalg, gehydrolyseerd gevogelte-eiwit (7,5%), gedroogde cichoreipulp, cellulose, zonnebloemolie, fructo-oligosachariden (FOS), algenolie (0,3%), gehydrolyseerde gist.', true, now(), 'sha256:decbbb7b74094224c3a7dbb296b38b85c7b363097c2d24adb8adf2091a6d6286', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Prins Petfoods — ProCare Standard Fit (null)
-- bron: https://prinspetfoods.com/product/procare-standard-fit/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Standard Fit', 'kibble', 'null', null, 'https://prinspetfoods.com/product/procare-standard-fit/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogeltemeel (21,0%), maïs, tarwe, sorghum, gehydrolyseerd gevogelte-eiwit (4,5%), gedroogde cichoreipulp (2,0%), rundertalg, cellulose, zonnebloemolie, fructo-oligosachariden (FOS) (0,5%), algenolie (0,2%), gehydrolyseerde gist.', true, now(), 'sha256:a220818794823b9938b2ee64ab697f4cfc9b40964bbc83327ed2a1fd6ca52144', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Prins Petfoods — ProCare Mini Standard Fit (null)
-- bron: https://prinspetfoods.com/product/procare-mini-standard-fit/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Mini Standard Fit', 'kibble', 'null', null, 'https://prinspetfoods.com/product/procare-mini-standard-fit/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogeltemeel (21,0%), maïs, tarwe, sorghum, gehydrolyseerd gevogelte-eiwit (4,5%), gedroogde cichoreipulp (2,0%), rundertalg, cellulose, zonnebloemolie, fructo-oligosachariden (FOS) (0,5%), algenolie (0,2%), gehydrolyseerde gist.', true, now(), 'sha256:a220818794823b9938b2ee64ab697f4cfc9b40964bbc83327ed2a1fd6ca52144', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Prins Petfoods — ProCare Super Active (null)
-- bron: https://prinspetfoods.com/product/procare-super-active/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Super Active', 'kibble', 'null', null, 'https://prinspetfoods.com/product/procare-super-active/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogeltemeel (21,0%), maïs, tarwe, sorghum, rundertalg, gehydrolyseerd gevogelte-eiwit (7,5%), gedroogde cichoreipulp (2,0%), cellulose, zonnebloemolie, fructo-oligosachariden (FOS) (0,5%), algenolie (0,2%), gehydrolyseerde gist.', true, now(), 'sha256:66527316974722a137ba4044bb20c06ca34213d0bb6d360d2bb6919c882c1efb', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Prins Petfoods — ProCare Senior Support (null)
-- bron: https://prinspetfoods.com/product/procare-senior-support/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Senior Support', 'kibble', 'null', null, 'https://prinspetfoods.com/product/procare-senior-support/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gevogeltemeel (11,0%), gehydrolyseerd gevogelte-eiwit (10,0%), tarwe, sorghum, rundervet, gedroogde cichoreipulp, cellulose, aardappelzetmeel, zonnebloemolie, fructo-oligosachariden (FOS), gehydrolyseerde gist, algenolie (0,2%), glucosamine (0,05%), chondroïtine (0,05%).', true, now(), 'sha256:11ae7b7129139b2e390da931bdf7f9e007d6ae0d33a395564ed34bccd9d1eb95', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Prins Petfoods — ProCare Light Low calorie (null)
-- bron: https://prinspetfoods.com/product/procare-light-low-calorie/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Light Low calorie', 'kibble', 'null', null, 'https://prinspetfoods.com/product/procare-light-low-calorie/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogeltemeel (26,0%), tarwe, maïs, cellulose (8,8%), maïsgluten, gehydrolyseerd gevogelte-eiwit (4,5%), gedroogde cichoreipulp (4,0%), rundervet, zonnebloemolie, fructo-oligosachariden (FOS) (0,5%), gehydrolyseerde gist, algenolie (0,2%).', true, now(), 'sha256:63851a3bbf2530e2625523f76a3a2afa2405643035ed2132fc0b038f8db081dc', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Prins Petfoods — ProCare Lamb & Rice (null)
-- bron: https://prinspetfoods.com/product/procare-lamb-rice/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Lamb & Rice', 'kibble', 'null', null, 'https://prinspetfoods.com/product/procare-lamb-rice/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, rijst (21,0%), lamsmeel (18,0%), rundertalg, maïsgluten, aardappeleiwit, aardappelzetmeel, gedroogde cichoreipulp (2,0%), cellulose, zonnebloemolie, fructo-oligosachariden (FOS) (0,5%), algenolie (0,2%), gehydrolyseerde gist.', true, now(), 'sha256:337b4e24d0843cbf7d3ddd790a8d3cfde852ed032d505850576b4286625fb556', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Prins Petfoods — ProCare Grainfree Sensible (null)
-- bron: https://prinspetfoods.com/product/procare-grainfree-sensible/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Grainfree Sensible', 'kibble', 'null', null, 'https://prinspetfoods.com/product/procare-grainfree-sensible/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedehydrateerde eend (29,0%), aardappelzetmeel, erwten, rundertalg, aardappeleiwit, gedroogde cichoreipulp, cellulose, zonnebloemolie, fructo-oligosachariden (FOS), kaliumchloride, algenolie (0,3%), gehydrolyseerde gist.', true, now(), 'sha256:32b5a4c8ec3c1ae3b1122e22c4a2228253f0e594286ab846e33b73fdf5bfe20e', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Prins Petfoods — ProCare Sport-Life Excellent (null)
-- bron: https://prinspetfoods.com/product/procare-sport-life-excellent/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Sport-Life Excellent', 'kibble', 'null', null, 'https://prinspetfoods.com/product/procare-sport-life-excellent/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedehydrateerde kip en kalkoen (30%), maïs, tarwe, dierlijk vet (rund), maïsgluten, gehydrolyseerd gevogelte-eiwit (4,5%), maltodextrine, hemoglobinepoeder, gedroogde cichoreipulp, zalmolie, zonnebloemolie, inuline, gisthydrolysaat.', true, now(), 'sha256:2dbeda75191c5561ed872d43c3862c92ab4fc363fc18a7c2925cd033d8797c62', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Prins Petfoods — Fit Selection Chicken & Rice (null)
-- bron: https://prinspetfoods.com/product/fit-selection-chicken-rice/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'Fit Selection Chicken & Rice', 'kibble', 'null', null, 'https://prinspetfoods.com/product/fit-selection-chicken-rice/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedehydrateerde kip (25%), maïs, tarwe, rijst (9%), dierlijk vet (kip), bietenpulp (2,3%), gehydrolyseerde lever, visolie (0,5%), gist, kaliumchloride, natriumchloride, yucca schidigera-extract (0,1%).', true, now(), 'sha256:3fc54328fee8409428211e00c42669429b862c0075f02a68ab0fe35e20f15959', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Renske — Vers bereide Kip met rund (95 / 185 / 375 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/kip-met-rund-375g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Vers bereide Kip met rund', 'wet', '95 / 185 / 375 g', null, 'https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/kip-met-rund-375g', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip 50%, rund 10%, gebroken rijst 3,5%, wortelen 3%, erwten 1%, gedroogde algen (fucus vesiculosus) 0,06%, Xylo-oligosacchariden, duindoorn, yucca schidigera extract.', true, now(), 'sha256:9564e94ac9a8a99d9f9f26a2920cad241ba37fe4e436980cca2510da5489dded', null from p;

-- Renske — Vers bereide Lam graanvrij (95 / 185 / 375 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/lam-graanvrij-375g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Vers bereide Lam graanvrij', 'wet', '95 / 185 / 375 g', null, 'https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/lam-graanvrij-375g', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam 70%, aardappel 4%, olijfolie 2,4%, erwten 1%, wortelen 1%, mineralen 0,5%, gedroogde algen (fucus vesiculosus) 0,3%, Xylo-oligosacchariden, duindoorn, yucca schidigera extract.', true, now(), 'sha256:1c3d755c3b49c1e4455cfc675eb205af6bedb6a24fb9942ba749dc6b6d9cb192', null from p;

-- Renske — Vers bereide Zalm graanvrij (95 / 185 / 375 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/zalm-graanvrij-375g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Vers bereide Zalm graanvrij', 'wet', '95 / 185 / 375 g', null, 'https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/zalm-graanvrij-375g', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Zalm 55%, aardappel 10%, gedroogde algen (fucus vesiculosus) 0,06%, mineralen 0,04%, Xylo-oligosacchariden, duindoorn, yucca schidigera extract.', true, now(), 'sha256:bc542bec431707daa795cb639f40ccd4bb5b307b29864c41fcb7b38b70e08cf1', null from p;

-- Renske — Vers bereide Konijn met eend (95 / 185 / 375 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/konijn-met-eend-375g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Vers bereide Konijn met eend', 'wet', '95 / 185 / 375 g', null, 'https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/konijn-met-eend-375g', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Konijn 40%, eend 20%, erwten 3%, wortelen 1%, gedroogde algen (fucus vesiculosus) 0,06%, Xylo-oligosacchariden, duindoorn, yucca schidigera extract.', true, now(), 'sha256:7ef624488a696d2aa61ad6b7d07780a7b8a197005a39ec00c2015c5d0b15a5c5', null from p;

-- Renske — Vers gestoomde Kip (395 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/kip-395g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Vers gestoomde Kip', 'wet', '395 g', null, 'https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/kip-395g', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers gestoomde kip (80%), erwten (3%), bruine rijst (2%), wortelen (1%), mineralen, gedroogd zeewier (0,45%), peterselie, rozemarijn, cichoreiwortel extract (als bron van prebiotica fructo-oligosacchariden), glucosamine (0,05%), chondroitine (0,05%) ,yucca extract.', true, now(), 'sha256:6e710853f2f7a32d78a59011057ab983c6f0836f38e8d32a895f19acbf9230a9', null from p;

-- Renske — Vers gestoomde Eend met konijn (395 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/eend-met-konijn-395g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Vers gestoomde Eend met konijn', 'wet', '395 g', null, 'https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/eend-met-konijn-395g', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eend (62%), konijn (18%), erwten (3%), bruine rijst (2%), wortelen (1%), mineralen, gedroogd zeewier (0,45%), peterselie, rozemarijn, cichoreiwortel extract (als bron van prebiotica fructo-oligosacchariden), glucosamine (50 mg/kg), chondroitine (50 mg/kg) ,yucca extract.', true, now(), 'sha256:d39ae81c09166da426ff3cbc2a46b082d28c591af75df29a73475f5fcfdca8e0', null from p;

-- Renske — Biologisch Vers Gestoomde Kip (500 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/renske-biologische-hondenvoeding/vers-gestoomde-kip-500g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Biologisch Vers Gestoomde Kip', 'wet', '500 g', null, 'https://www.renske.com/nl/producten/hondenvoer/renske-biologische-hondenvoeding/vers-gestoomde-kip-500g', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Biologisch gecertificeerde kip (vleugels, nek, lever, karkas) (68%), biologische boekweit, biologische kalkoen (vleugels, nek, karkas) (5%), biologische wortelen, biologisch lijnzaad (5%), biologische kruidenmix (brandnetel, rozenbottel, anijs, kamille, melisse, Echinacea) (1%), mineralen.', true, now(), 'sha256:6d175e5e3dfb8413bf4b49fd12e0a88324bc926bbb86be341b91e5c5e31d9536', null from p;

-- Renske — Vers Ingevroren Kip & Rund (600 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/renske-vers-ingevroren/kip-rund-600g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Vers Ingevroren Kip & Rund', 'raw', '600 g', null, 'https://www.renske.com/nl/producten/hondenvoer/renske-vers-ingevroren/kip-rund-600g', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers ingevroren kippenvlees (43%), vers ingevroren rund (35%) (long, maag, lever), wortel (8%), spinazie (6%), lijnzaad (4%), rode bessen (2%), mineralen, koolzaadolie.', true, now(), 'sha256:e871017f14f4314b11263b8928a291be7eb7c99585cd343154d472beedda4302', null from p;

-- Renske — Super Premium Vers bereide Kip (600 g / 2 / 6,5 / 12 kg)
-- bron: https://www.renske.com/nl/producten/hondenvoer/super-premium/vers-bereide-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Super Premium Vers bereide Kip', 'kibble', '600 g / 2 / 6,5 / 12 kg', null, 'https://www.renske.com/nl/producten/hondenvoer/super-premium/vers-bereide-kip', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide kip (26%), gedroogd gevogelte (19%), aardappel (15%), zoete aardappel, bietenpulp, gevogeltevet, gedroogde krill, gedroogd ei, kippenbouillon, biergist, mineralen, lijnzaad (1,2%), zeewier, beta-glucanen, gedroogde cranberries (0,04%), gedroogde appel (0,04%), gedroogde peer (0,04%), gedroogde broccoli (0,04%), gedroogde tomaat, glucosamine (170 mg/kg), methylsulfonylmethaan (MSM) (170 mg/kg), chondroïtinesulfaat (120 mg/kg).', true, now(), 'sha256:820fdf28579ecf3d0aa9592cf42e4a86f3395c94b1c5bf49801c6ff79ba0c323', null from p;

-- Renske — M.O.P. Vers bereide Kip & Rijst (600 g / 3 / 6,5 / 12 kg)
-- bron: https://www.renske.com/nl/producten/hondenvoer/mop-droogvoer/vers-bereide-kip-met-rijst
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'M.O.P. Vers bereide Kip & Rijst', 'kibble', '600 g / 3 / 6,5 / 12 kg', null, 'https://www.renske.com/nl/producten/hondenvoer/mop-droogvoer/vers-bereide-kip-met-rijst', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse kip (30%), rijst (28%), gedroogd gevogelte (12%), havermeel uit gepelde zaden, maïs, lijnzaad (5%), erwtenmeel, bietenpulp, gemalen zeezoöplankton (krill) (3%), gedroogde biergist, gedroogd johannesbroodmeel, dicalciumfosfaat, gevogeltevet, plantaardige oliën (palm en kokosnoot), gevogeltelever (gehydroliseerd), steenzout.', true, now(), 'sha256:9fb1dd03320f36167624057e4183cf39fd84ca5fbdebb945932b19fba6a43912', null from p;

-- Smuldier — Complete maaltijd Vlees (400 g)
-- bron: https://smuldier.nl/product/smuldier-complete-maaltijd-400g-vlees/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smuldier', 'Complete maaltijd Vlees', 'raw', '400 g', null, 'https://smuldier.nl/product/smuldier-complete-maaltijd-400g-vlees/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kippenvlees (28,3%), runderpens 25,0%, bevleesde kippenkarkassen 20,5%, bevleesde runderribben 12,5%, runderlever 5,0%, rundermilten 3,8%, rundernieren 3,1%, vitamines en mineralen 1,0%, zonnebloemolie 0,8%.', true, now(), 'sha256:b026b2d2591681bcb2c8da256934d7ac94b724a01cc9f3bcff241459d6788956', null from p;

-- Smuldier — Complete maaltijd Pens & Vlees (400 g)
-- bron: https://smuldier.nl/product/smuldier-complete-maaltijd-400g-pens-vlees/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smuldier', 'Complete maaltijd Pens & Vlees', 'raw', '400 g', null, 'https://smuldier.nl/product/smuldier-complete-maaltijd-400g-pens-vlees/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Runderpens 49,4%, bevleesde kippenkarkassen 31,9%, runderlever 10,0%, rundermilten 3,8%, rundernieren 3,1%, vitamines en mineralen 1,0%, zonnebloemolie 0,8%.', true, now(), 'sha256:50e60a66f578a7211320832f6a19a6b1c04dd874742163ea0372d4cbf16d6ca2', null from p;

-- Smuldier — Complete maaltijd Kip (400 g)
-- bron: https://smuldier.nl/product/kip-complete-maaltijd-400g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smuldier', 'Complete maaltijd Kip', 'raw', '400 g', null, 'https://smuldier.nl/product/kip-complete-maaltijd-400g/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Bevleesde kippenkarkassen 57,6%, kippenvlees 37,5%, rijst 3,1%, vitamines en mineralen 1,0%, zonnebloemolie 0,8%.', true, now(), 'sha256:82e800aa1268a2d20f0f22c7a80a8ae8c2b4485e8af364de446e7dfa102e5d5c', null from p;

-- Smuldier — Complete maaltijd Lam (400 g)
-- bron: https://smuldier.nl/product/smuldier-complete-maaltijd-400g-lam/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smuldier', 'Complete maaltijd Lam', 'raw', '400 g', null, 'https://smuldier.nl/product/smuldier-complete-maaltijd-400g-lam/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lamspens 37,5%, bevleesde kippenkarkassen 21,5%, kippenvlees 18,7%, lamsvlees 12,5%, lamsorganen 8,8%, vitamines en mineralen 1%.', true, now(), 'sha256:2b81809a096f64a7a24cdb60b6b34b1f06acb11369df17143125fdcb215e60b2', null from p;

-- Smuldier — Complete maaltijd Eend (400 g)
-- bron: https://smuldier.nl/product/smuldier-complete-maaltijd-400g-eend/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smuldier', 'Complete maaltijd Eend', 'raw', '400 g', null, 'https://smuldier.nl/product/smuldier-complete-maaltijd-400g-eend/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Bevleesde eendenkarkassen 59%, kippenvlees 30%, kippenlever 7,5%, kippenhart 2,5%, vitamines en mineralen 1%.', true, now(), 'sha256:7f01fcbd53734f107c663b0c9e9d67d3bcf227479b21289a589bb863207e0c09', null from p;

-- Smuldier — Complete maaltijd Hart (400 g)
-- bron: https://smuldier.nl/product/hart-complete-maaltijd-400g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smuldier', 'Complete maaltijd Hart', 'raw', '400 g', null, 'https://smuldier.nl/product/hart-complete-maaltijd-400g/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Bevleesde kippenkarkassen 53,1%, runderhart 26,3%, kippenvlees 18,8%, vitamines en mineralen 1,0%, zonnebloemolie 0,8%.', true, now(), 'sha256:566fe73cb8118fd72e3543419b2d69e1f692be39eb5c44cb54573000363bb10c', null from p;

-- Smuldier — Complete maaltijd Pens & Hart (400 g)
-- bron: https://smuldier.nl/product/pens-hart-complete-maaltijd-400g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smuldier', 'Complete maaltijd Pens & Hart', 'raw', '400 g', null, 'https://smuldier.nl/product/pens-hart-complete-maaltijd-400g/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Runderpens 36,3%, bevleesde kippenkarkassen 35,6%, runderhart 26,3%, vitamines en mineralen 1,0%, zonnebloemolie 0,8%.', true, now(), 'sha256:74eb27a9812803e5986f1434dba142128eb79bbbc10f87a96965f009c36154c1', null from p;

-- Smuldier — Complete maaltijd Eend & Rund (400 g)
-- bron: https://smuldier.nl/product/smuldier-complete-maaltijd-400g-eend-rund/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smuldier', 'Complete maaltijd Eend & Rund', 'raw', '400 g', null, 'https://smuldier.nl/product/smuldier-complete-maaltijd-400g-eend-rund/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kippenvlees 34,0%, bevleesde eendenkarkassen 27,7%, bevleesde runderribben 20,0%, runderlever 8,0%, rundernieren 4,0%, rundermilten 4,0%, zonnebloemolie 1,3%, vitamines en mineralen 1,0%.', true, now(), 'sha256:52258a04257b22fb32861cf2b1792db3f7948236421ce721d9f134eb5b2af029', null from p;

-- Smuldier — Vers vlees Maaltijd Rund (300 g)
-- bron: https://smuldier.nl/product/smuldier-vers-vlees-maaltijd-300g-rund/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smuldier', 'Vers vlees Maaltijd Rund', 'wet', '300 g', null, 'https://smuldier.nl/product/smuldier-vers-vlees-maaltijd-300g-rund/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rund 70% (rundvlees, runderlong, runderlever, runderpens), bouillon, vitamines & mineralen.', true, now(), 'sha256:63421e95fe66b699287030aef73bcfd3f972f2097634aa595b5a1502051039a8', null from p;

-- Smuldier — Vers vlees Maaltijd Kip (300 g)
-- bron: https://smuldier.nl/product/smuldier-vers-vlees-maaltijd-300g-kip/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smuldier', 'Vers vlees Maaltijd Kip', 'wet', '300 g', null, 'https://smuldier.nl/product/smuldier-vers-vlees-maaltijd-300g-kip/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip 70% (kippenhart, kippenvlees, kippenmaag, kippenlever, kippennek, kippenvet), bouillon, vitamines & mineralen.', true, now(), 'sha256:cd75cacfd4cf02a05cdb71c7822446c2b5635684128d26fc3fa9497db33af7ca', null from p;

-- Indeling van de woorden die de keuring niet kende.
--
-- Elk woord krijgt een eigen regel met een notitie, zodat in Beheer te zien is
-- waarom het zo is ingedeeld. Opnieuw uitvoeren is veilig: dezelfde woorden
-- worden bijgewerkt in plaats van dubbel toegevoegd.
--
--   bron         het woord is een bron van een allergeen uit onze lijst
--   onduidelijk  het woord kan een allergeen verbergen dat er niet bij staat
--   onschuldig   geen allergeen in onze lijst en verbergt er ook geen
--
-- Tweede ronde: geit, waterbuffel en suiker staan nu als allergeen in de
-- keuring zelf, dus die woorden staan hier niet meer bij. Woorden als
-- luzerne, isolaat, aminozuren, premix, lijven/randen, weefsels en honing
-- zijn strenger geworden: ze kunnen iets verbergen en doen dat nu ook.
--
-- 121 woorden.


-- Woorden uit de eerste ronde die nu door de keuring zelf worden gedekt
-- (geit, waterbuffel, suiker en hun vormen) of die vervangen zijn, gaan eruit.
delete from public.ingredient_terms where term in ('geit', 'geitenvlees', 'geitvlees', 'waterbuffel', 'suiker', 'suikers', 'dextrose', 'xylose', 'vitamine b');

insert into public.ingredient_terms (term, kind, allergen_keys, note) values
  ('groenlipmossel', 'bron', array['shellfish']::text[], 'Groenlipmossel is een mossel (schaaldier).'),
  ('groenlipmosselen', 'bron', array['shellfish']::text[], 'Meervoud van groenlipmossel (schaaldier).'),
  ('perna', 'bron', array['shellfish']::text[], 'Latijnse geslachtsnaam van de groenlipmossel (Perna canaliculus).'),
  ('canaliculus', 'bron', array['shellfish']::text[], 'Soortnaam van de groenlipmossel (Perna canaliculus).'),
  ('pintobonen', 'bron', array['bean']::text[], 'Pintobonen zijn bonen.'),
  ('navybonen', 'bron', array['bean']::text[], 'Navybonen zijn bonen.'),
  ('schapenvlees', 'bron', array['lamb']::text[], 'Schapenvlees is lam.'),
  ('pecannotenschil', 'bron', array['nuts']::text[], 'Pecannoot is een noot; de schil hoort bij die noot.'),
  ('milo', 'bron', array['grains']::text[], 'Milo is een sorghumsoort, dus een graan.'),
  ('pilchard', 'bron', array['fish']::text[], 'Pilchard is een vissoort (sardine-achtige).'),
  ('pollakolie', 'bron', array['fish']::text[], 'Olie van pollak, een vis.'),
  ('butternutpompoen', 'bron', array['pumpkin']::text[], 'Butternut is een pompoensoort.'),
  ('zeegras', 'bron', array['algae']::text[], 'Zeegras hoort bij algen/zeewier.'),
  ('schizochytrium', 'bron', array['algae']::text[], 'Schizochytrium is een alg (bron van algenolie).'),
  ('granaatappel', 'bron', array['fruit']::text[], 'Granaatappel is fruit.'),
  ('duindoorn', 'bron', array['fruit']::text[], 'Duindoorn is een vrucht.'),
  ('aroniabessen', 'bron', array['fruit']::text[], 'Aroniabessen zijn vruchten.'),
  ('saskatoonbessen', 'bron', array['fruit']::text[], 'Saskatoonbessen zijn vruchten.'),
  ('vlierbessen', 'bron', array['fruit']::text[], 'Vlierbessen zijn vruchten.'),
  ('vlierbloesem', 'bron', array['fruit']::text[], 'Vlierbloesem hoort bij de vlierbes (fruit).'),
  ('baobab', 'bron', array['fruit']::text[], 'Baobab is een vrucht.'),
  ('salie', 'bron', array['herbs']::text[], 'Kruid.'),
  ('marjolein', 'bron', array['herbs']::text[], 'Kruid.'),
  ('oregano', 'bron', array['herbs']::text[], 'Kruid.'),
  ('basilicum', 'bron', array['herbs']::text[], 'Kruid.'),
  ('koriander', 'bron', array['herbs']::text[], 'Kruid.'),
  ('lavas', 'bron', array['herbs']::text[], 'Kruid (lavas = maggiplant).'),
  ('lavendel', 'bron', array['herbs']::text[], 'Kruid.'),
  ('lavendelbloemen', 'bron', array['herbs']::text[], 'Kruid.'),
  ('gember', 'bron', array['herbs']::text[], 'Kruid.'),
  ('anijszaad', 'bron', array['herbs']::text[], 'Kruidzaad.'),
  ('anisvruchten', 'bron', array['herbs']::text[], 'Kruidzaad.'),
  ('fenegriek', 'bron', array['herbs']::text[], 'Kruid.'),
  ('zoethoutwortel', 'bron', array['herbs']::text[], 'Kruid.'),
  ('mariadistel', 'bron', array['herbs']::text[], 'Kruid.'),
  ('kliswortel', 'bron', array['herbs']::text[], 'Kruid.'),
  ('heemstwortel', 'bron', array['herbs']::text[], 'Kruid.'),
  ('meidoorn', 'bron', array['herbs']::text[], 'Kruid.'),
  ('maretak', 'bron', array['herbs']::text[], 'Kruid.'),
  ('duizendblad', 'bron', array['herbs']::text[], 'Kruid.'),
  ('duizendguldenkruid', 'bron', array['herbs']::text[], 'Kruid.'),
  ('gentiaanwortel', 'bron', array['herbs']::text[], 'Kruid.'),
  ('althaeawortel', 'bron', array['herbs']::text[], 'Kruid.'),
  ('sarsaparillawortel', 'bron', array['herbs']::text[], 'Kruid.'),
  ('heermoes', 'bron', array['herbs']::text[], 'Kruid.'),
  ('duivelsklauw', 'bron', array['herbs']::text[], 'Kruid.'),
  ('berkenbladeren', 'bron', array['herbs']::text[], 'Kruid.'),
  ('jeneverbessen', 'bron', array['herbs']::text[], 'Kruid (jeneverbes).'),
  ('ginseng', 'bron', array['herbs']::text[], 'Kruid.'),
  ('raapstelen', 'bron', array['vegetables']::text[], 'Groente.'),
  ('artisjok', 'bron', array['vegetables']::text[], 'Groente.'),
  ('topinamboer', 'bron', array['vegetables']::text[], 'Groente (topinamboer = aardpeer).'),
  ('tuinkers', 'bron', array['vegetables']::text[], 'Groente.'),
  ('grieben', 'onduidelijk', array['chicken', 'turkey', 'beef', 'lamb', 'duck', 'pork', 'rabbit', 'venison', 'horse', 'kangaroo', 'ostrich', 'poultry']::text[], 'Grieben (Duits) is dierlijk vetweefsel zonder diersoort; welk dier staat er niet.'),
  ('hemoglobine', 'onduidelijk', array['chicken', 'turkey', 'beef', 'lamb', 'duck', 'pork', 'rabbit', 'venison', 'horse', 'kangaroo', 'ostrich', 'poultry']::text[], 'Hemoglobine komt van dierlijk bloed; de diersoort staat er niet bij.'),
  ('chondroitinesulfaat', 'onduidelijk', array['beef', 'chicken', 'duck', 'horse', 'kangaroo', 'lamb', 'ostrich', 'pork', 'poultry', 'rabbit', 'turkey', 'venison', 'fish']::text[], 'Chondroïtine komt uit kraakbeen; de diersoort staat er niet bij.'),
  ('colostrum', 'onduidelijk', array['milk']::text[], 'Colostrum is afkomstig van melk (meestal rund).'),
  ('vetzuren', 'onduidelijk', array['chicken', 'turkey', 'beef', 'lamb', 'duck', 'pork', 'rabbit', 'venison', 'horse', 'kangaroo', 'ostrich', 'poultry', 'soy', 'milk', 'fish', 'corn', 'nuts', 'peanut', 'sesame']::text[], 'Vetzuren kunnen van dierlijk of plantaardig vet komen; de bron staat er niet bij.'),
  ('maltodextrine', 'onduidelijk', array['wheat', 'barley', 'oats', 'corn', 'rice', 'grains', 'millet', 'rye', 'spelt', 'buckwheat', 'quinoa', 'potato', 'sweetpotato', 'tapioca']::text[], 'Maltodextrine wordt van zetmeel gemaakt (maïs, tarwe of aardappel); de bron staat er niet bij.'),
  ('bessen', 'onduidelijk', array['strawberry', 'apple', 'banana', 'blueberry', 'blackberry', 'cranberry', 'date', 'raspberry', 'fruit', 'mango', 'papaya', 'pear', 'peach']::text[], 'Bessen zijn fruit, maar niet welke soort.'),
  ('bes', 'onduidelijk', array['strawberry', 'apple', 'banana', 'blueberry', 'blackberry', 'cranberry', 'date', 'raspberry', 'fruit', 'mango', 'papaya', 'pear', 'peach']::text[], 'Bes is fruit, maar niet welke soort.'),
  ('weefsels', 'onduidelijk', array['chicken', 'turkey', 'beef', 'lamb', 'duck', 'pork', 'rabbit', 'venison', 'horse', 'kangaroo', 'ostrich', 'poultry']::text[], 'Weefsels kunnen van elk dier komen; het etiket noemt de soort niet.'),
  ('lijven', 'onduidelijk', array['chicken', 'turkey', 'beef', 'lamb', 'duck', 'pork', 'rabbit', 'venison', 'horse', 'kangaroo', 'ostrich', 'poultry', 'fish']::text[], 'Lichaamsdelen van een dier zonder genoemde soort.'),
  ('randen', 'onduidelijk', array['chicken', 'turkey', 'beef', 'lamb', 'duck', 'pork', 'rabbit', 'venison', 'horse', 'kangaroo', 'ostrich', 'poultry', 'fish']::text[], 'Snijresten van een dier zonder genoemde soort.'),
  ('luzerne', 'onduidelijk', array['pea', 'bean', 'lentil', 'chickpea', 'lupin', 'soy', 'peanut']::text[], 'Luzerne (alfalfa) is een vlinderbloemige, net als erwt, boon, linze en soja.'),
  ('luzernemeel', 'onduidelijk', array['pea', 'bean', 'lentil', 'chickpea', 'lupin', 'soy', 'peanut']::text[], 'Meel van luzerne, een vlinderbloemige (net als erwt, boon en soja).'),
  ('isolaat', 'onduidelijk', array['anchovy', 'duck', 'trout', 'goat', 'poultry', 'herring', 'venison', 'insect', 'turkey', 'kangaroo', 'chicken', 'rabbit', 'lamb', 'mackerel', 'horse', 'beef', 'sardine', 'shellfish', 'ostrich', 'tuna', 'pork', 'fish', 'buffalo', 'whitefish', 'salmon', 'potato', 'buckwheat', 'bean', 'pea', 'barley', 'millet', 'grains', 'oats', 'chickpea', 'lentil', 'lupin', 'corn', 'quinoa', 'rice', 'rye', 'soy', 'spelt', 'sugar', 'tapioca', 'wheat', 'sweetpotato', 'asparagus', 'aubergine', 'beetroot', 'cauliflower', 'kale', 'broccoli', 'courgette', 'vegetables', 'garlic', 'cucumber', 'parsnip', 'paprika', 'pumpkin', 'leek', 'celery', 'spinach', 'tomato', 'onion', 'carrot', 'strawberry', 'apple', 'banana', 'blackberry', 'blueberry', 'cranberry', 'date', 'raspberry', 'fruit', 'mango', 'papaya', 'pear', 'peach', 'algae', 'egg', 'herbs', 'milk', 'mint', 'nuts', 'parsley', 'peanut', 'rosemary', 'sesame', 'thyme']::text[], 'Een isolaat is eiwit zonder genoemde bron; dat kan van elk dier of elke plant zijn.'),
  ('aminozuren', 'onduidelijk', array['chicken', 'turkey', 'beef', 'lamb', 'duck', 'pork', 'rabbit', 'venison', 'horse', 'kangaroo', 'ostrich', 'poultry', 'soy']::text[], 'Aminozurenmengsels worden uit dierlijk eiwit of soja gemaakt; de bron staat er niet bij.'),
  ('dha', 'onduidelijk', array['fish', 'algae']::text[], 'DHA (omega-3) komt van vis of van algen; de bron staat er niet bij.'),
  ('docosahexaeenzuur', 'onduidelijk', array['fish', 'algae']::text[], 'DHA (omega-3) komt van vis of van algen; de bron staat er niet bij.'),
  ('diglyceriden', 'onduidelijk', array['chicken', 'turkey', 'beef', 'lamb', 'duck', 'pork', 'rabbit', 'venison', 'horse', 'kangaroo', 'ostrich', 'poultry', 'soy', 'milk', 'fish', 'corn', 'nuts', 'peanut', 'sesame']::text[], 'Emulgator uit vetten; de bron van dat vet staat er niet bij.'),
  ('premix', 'onduidelijk', array['wheat', 'corn', 'rice', 'grains', 'soy']::text[], 'Een premix (vitamines/mineralen) zit vaak op een drager van tarwe, maïs of soja; het etiket noemt die drager niet.'),
  ('honing', 'onduidelijk', array['sugar']::text[], 'Honing bestaat grotendeels uit suikers.'),
  ('yucca', 'onschuldig', null, 'Yucca schidigera is een plant, geen allergeen in onze lijst.'),
  ('schidigera', 'onschuldig', null, 'Soortnaam van Yucca schidigera.'),
  ('aloe', 'onschuldig', null, 'Aloë is een plant.'),
  ('vera', 'onschuldig', null, 'Deel van de naam "aloë vera".'),
  ('tagetes', 'onschuldig', null, 'Tagetes (afrikaantje) is een plant.'),
  ('biergist', 'onschuldig', null, 'Gist is geen allergeen in onze lijst.'),
  ('saccharomyces', 'onschuldig', null, 'Saccharomyces cerevisiae is gist.'),
  ('cerevisiae', 'onschuldig', null, 'Soortnaam van gist (Saccharomyces cerevisiae).'),
  ('borage', 'onschuldig', null, 'Borage (bernagie) is een plant.'),
  ('bernagieolie', 'onschuldig', null, 'Olie van bernagie; de bron staat erbij.'),
  ('kopraolie', 'onschuldig', null, 'Kopra is gedroogde kokos; geen allergeen in onze lijst.'),
  ('ontsuikerd', 'onschuldig', null, 'Bereidingswoord: de suiker is er juist uit gehaald.'),
  ('gecheleerde', 'onschuldig', null, 'Bereidingswoord uit de chemie (chelaat).'),
  ('wilde', 'onschuldig', null, 'Bijvoeglijk naamwoord ("wilde gans"); het zelfstandige woord "wild" staat al in de lijst.'),
  ('witte', 'onschuldig', null, 'Kleurwoord ("witte rijst").'),
  ('zeelandse', 'onschuldig', null, 'Deel van de naam "Nieuw-Zeelandse groenlipmossel".'),
  ('antarctische', 'onschuldig', null, 'Deel van de naam "Antarctische krill"; krill staat al in de lijst.'),
  ('overeen', 'onschuldig', null, 'Zinsdeel ("komt overeen met").'),
  ('uit', 'onschuldig', null, 'Voorzetsel uit een voetnoot.'),
  ('ingredienten', 'onschuldig', null, 'Kop boven de lijst.'),
  ('activbiome', 'onschuldig', null, 'Naam van een mix; de samenstelling staat er direct achter.'),
  ('digestion', 'onschuldig', null, 'Deel van de merknaam ActivBiome+ Digestion.'),
  ('auraguard', 'onschuldig', null, 'Naam van een mix; de samenstelling staat erachter.'),
  ('zeoliet', 'onschuldig', null, 'Mineraal.'),
  ('amylase', 'onschuldig', null, 'Enzym; staat hier als onderdeel van "amylase-remmer" uit witte bonenextract, en die bron staat erbij.'),
  ('omega', 'onschuldig', null, 'Deel van "omega-3-vetzuren".'),
  ('stearinezuur', 'onschuldig', null, 'Losse vetzuurnaam uit de chemie; een vetzuur verbergt geen eiwitbron en de vetbron (dierlijk vet) staat elders op het etiket.'),
  ('mono', 'onschuldig', null, 'Deel van "mono- en diglyceriden" (emulgator).'),
  ('veresterd', 'onschuldig', null, 'Bereidingswoord uit de chemie.'),
  ('anhydraat', 'onschuldig', null, 'Vorm van een mineraalzout.'),
  ('monohydraat', 'onschuldig', null, 'Vorm van een mineraalzout.'),
  ('glycinehydraat', 'onschuldig', null, 'Vorm van een mineraalzout (chelaat van glycine).'),
  ('monodicalciumfosfaat', 'onschuldig', null, 'Mineraal.'),
  ('xylitol', 'onschuldig', null, 'Suikervervanger: dit is juist geen suiker.'),
  ('xylo', 'onschuldig', null, 'Deel van "xylo-oligosacchariden" (vezel).'),
  ('sachariden', 'onschuldig', null, 'Deel van vezelnamen als fructo-oligosachariden; het programma behandelt zulke namen ook als onschuldig.'),
  ('glucanen', 'onschuldig', null, 'Deel van bèta-glucanen (vezel).'),
  ('psyllium', 'onschuldig', null, 'Vezel (vlozaad).'),
  ('psylliumschil', 'onschuldig', null, 'Schil van psyllium (vezel).'),
  ('psylliumschillen', 'onschuldig', null, 'Schillen van psyllium (vezel).'),
  ('psylliumzaden', 'onschuldig', null, 'Zaden van psyllium (vezel).'),
  ('husk', 'onschuldig', null, 'Engels voor schil ("psyllium husk").'),
  ('vlozaad', 'onschuldig', null, 'Vlozaad is psyllium (vezel).'),
  ('vlozaadschillen', 'onschuldig', null, 'Schillen van vlozaad (vezel).'),
  ('lijnzaden', 'onschuldig', null, 'Meervoud van lijnzaad; staat ook in de vaste lijst als andere bron.'),
  ('paddy', 'onschuldig', null, 'Deel van "paddy rijst"; het woord rijst ernaast is de bron.'),
  ('msc', 'onschuldig', null, 'Keurmerk voor duurzame visserij, geen ingrediënt.'),
  ('b', 'onschuldig', null, 'Losse letter b op het etiket: vitamine B of beta (bijvoorbeeld B-vitaminen, bèta-glucanen), net als de losse letters c en d3 die al in de lijst staan.')
on conflict (term) do update set
  kind = excluded.kind,
  allergen_keys = excluded.allergen_keys,
  note = excluded.note;


-- Controle na het plakken: hoeveel producten per merk, en hoeveel daarvan
-- automatisch zijn overgenomen?
select p.brand, count(*) as producten,
       count(*) filter (where rv.imported_at is not null) as automatisch_overgenomen
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 group by p.brand
 order by p.brand;

commit;
