-- Automatisch overgenomen etiketten, batch 2 van 2026-11-09 (29 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Ultra Premium Direct — Graanvrije brokken met verse kip voor volwassen honden van alle groottes (12 kg)
-- bron: https://www.ultrapremiumdirect.nl/producten/graanvrije-brokken-verse-kip-volwassen-honden-alle-formaten/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ultra Premium Direct', 'Graanvrije brokken met verse kip voor volwassen honden van alle groottes', 'kibble', '12 kg', '3760026305165', 'https://www.ultrapremiumdirect.nl/producten/graanvrije-brokken-verse-kip-volwassen-honden-alle-formaten/', date '2026-11-09', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'verse kip* (20%), gedehydrateerd kippeneiwit (17%), tapioca* (9,5%), gedehydrateerde zoete aardappel* (9%), aardappelzetmeel* (9%), gedehydrateerde erwten* (9%), gedehydrateerd varkenseiwit (8,5%), pluimveevet (6%), gehydrolyseerd kippeneiwit (5%), gedehydrateerde bietenpulp*, zalmolie (1,5%), gedehydrateerde biergist*, gedehydrateerde appel* (1%), mineralen, natriumchloride, kaliumchloride, fructo-oligosachariden (FOS), mannan-oligosachariden (MOS), gedehydrateerde broccoli* (0,1%), chondroïtinesulfaat, glucosamine, gedehydrateerde ascophyllum nodosum* (0,05%), gedehydrateerde yucca schidigera*, gedehydrateerde bosbessen* (0,01%), gedehydrateerde veenbessen* (0,01%), gedehydrateerde rozemarijn* (0,01%), gedroogde peterselie* (0,01%). * Ingrediënten van natuurlijke oorsprong.', true, now(), 'sha256:3290323894f5ae38943e36ccbf2733f10019dfac69dd5285d203a552385240c6', null from p;

-- Ultra Premium Direct — Graanvrije brokken met verse zalm voor volwassen honden van alle groottes (12 kg)
-- bron: https://www.ultrapremiumdirect.nl/producten/graanvrije-brokken-verse-zalm-volwassen-honden-alle-formaten/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ultra Premium Direct', 'Graanvrije brokken met verse zalm voor volwassen honden van alle groottes', 'kibble', '12 kg', '3760026305455', 'https://www.ultrapremiumdirect.nl/producten/graanvrije-brokken-verse-zalm-volwassen-honden-alle-formaten/', date '2026-11-09', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'verse zalm* (20%), gedehydrateerde creton (100% varkensvlees) (20%), tapioca* (18%), gedehydrateerde aardappel* (18%), gevogeltevet (4%), gedehydrateerd aardappeleiwit, gehydrolyseerd varkenseiwit, gedehydrateerde cichoreipulp* (bron van FOS) (2,5%), gedehydrateerde bietenpulp*, gedehydrateerde biergist* (bron van MOS) (2,5%), mineralen, zalmolie (1,5%), gedroogde appel* (0,5%), psyllium*, gedroogde ascophyllum nodosum* (0,1%), gedroogde frambozen* (0,1%), beta-glucanen, gedroogde bosbessen* (0,05%), glucosamine, chondroïtinesulfaat. * Ingrediënten van natuurlijke oorsprong.', true, now(), 'sha256:32dbc185a9d6aa8dcac6ae1252e7eb085a02536d5bb34f99d7f39be798b45dff', null from p;

-- Ultra Premium Direct — Super Premium brokken voor grote puppy's (4 kg / 12 kg)
-- bron: https://www.ultrapremiumdirect.nl/producten/brokken-super-premium-pour-puppies-van-groot-formaat/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ultra Premium Direct', 'Super Premium brokken voor grote puppy''s', 'kibble', '4 kg / 12 kg', null, 'https://www.ultrapremiumdirect.nl/producten/brokken-super-premium-pour-puppies-van-groot-formaat/', date '2026-11-09', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydrateerd kippeneiwit (28,5%), rijst (19,5%), maïs (13%), gedehydrateerde erwten (10%), kippenvet (7,5%), gedehydrateerd zalmeiwit (5%), gehydrolyseerd gevogelte-eiwit (5%), gedehydrateerde johannesbroodpeul (4,5%), gedehydrateerde bietenpulp, zalmolie (1,5%), gedehydrateerd biergist, mineralen, plantaardige vezels, kaliumchloride, natriumchloride, mannan-oligosachariden (MOS), fructo-oligosachariden (FOS), chondroïtinesulfaat, glucosamine, gedehydrateerde ascophyllum nodosum (0,01%), gedroogde veenbessen, gedroogde spinazie, gedroogde broccoli, gedroogde bosbessen, gedroogde yucca schidigera.', true, now(), 'sha256:645b543c8193d20526298372e87f9b626f79e589dd2f0a2c85b924ef61a99ebb', null from p;

-- Ultra Premium Direct — Super Premium brokken voor honden met een gevoelige spijsvertering (12 kg)
-- bron: https://www.ultrapremiumdirect.nl/producten/brokken-super-premium-voor-gevoelige-honden/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ultra Premium Direct', 'Super Premium brokken voor honden met een gevoelige spijsvertering', 'kibble', '12 kg', null, 'https://www.ultrapremiumdirect.nl/producten/brokken-super-premium-voor-gevoelige-honden/', date '2026-11-09', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydrateerde lamseiwitten (16%), rijst (16%), erwten (16%), maïs (15,5%), gedehydrateerde varkenseiwitten (13,5%), kippenvet (8,5%), gehydrolyseerde varkenseiwitten (3%), gedehydrateerde bietenpulp (3%), zalmolie (1,5%), erwtenvezels (1%), biergist, mineralen, fructo-oligosacchariden (FOS) (0,2%), gistwand (bron van MOS) (0,15%), algen (waarvan Ascophyllum nodosum) (0,1%), gedehydrateerde planten (cichorei, broccoli, veenbes, spinazie, bosbes, citrusvruchten, kurkuma, kruidnagel, rozemarijn).', true, now(), 'sha256:4b72e8525f33ed712365b692b2c895367fddd74566bf2212ce9327f2a649277d', null from p;

-- Ultra Premium Direct — Super Premium brokken voor kleine en middelgrote puppy's (4 kg / 12 kg)
-- bron: https://www.ultrapremiumdirect.nl/producten/brokken-super-premium-puppies-formaat-klein-medium/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ultra Premium Direct', 'Super Premium brokken voor kleine en middelgrote puppy''s', 'kibble', '4 kg / 12 kg', null, 'https://www.ultrapremiumdirect.nl/producten/brokken-super-premium-puppies-formaat-klein-medium/', date '2026-11-09', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydrateerd kippeneiwit (29,5%), rijst (24,5%), gedehydrateerde erwten (15%), kippenvet (13%), gehydrolyseerd kippeneiwit (6%), gedehydrateerd viseiwit, gedehydrateerde johannesbroodpeul, gedehydrateerde bietenpulp, zalmolie (1,5%), gedehydrateerd ei, mineralen, plantaardige vezels, gedehydrateerde biergist, mannan-oligosachariden (MOS), fructo-oligosachariden (FOS), gedehydrateerde yucca schidigera, gedehydrateerde spirulina, gedehydrateerde cranberry, gedehydrateerde spinazie, gedehydrateerde broccoli, gedehydrateerde bosbessen, gedehydrateerde ascophyllum nodosum (0,01%).', true, now(), 'sha256:d6486ad819a411171b65c152fb4e41ce9dc8066d9769b29ac4ef1596c53e3a8d', null from p;

-- Ultra Premium Direct — Graanvrije brokken met verse kip voor puppy's (4 kg / 12 kg)
-- bron: https://www.ultrapremiumdirect.nl/producten/graanvrije-brokken-verse-kip-puppy/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ultra Premium Direct', 'Graanvrije brokken met verse kip voor puppy''s', 'kibble', '4 kg / 12 kg', null, 'https://www.ultrapremiumdirect.nl/producten/graanvrije-brokken-verse-kip-puppy/', date '2026-11-09', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse kip* (20%), gedroogd kippeneiwit (18%), tapioca* (10%), gedroogd varkenseiwit (10%), gedroogde erwten* (10%), aardappelzetmeel* (10%), pluimveevet (9%), gedroogde bietenpulp*, gehydrolyseerd kippeneiwit, gedroogde appel* (1,5%), zalmolie (1,5%), gedroogde brouwersgist*, gedroogde cichorei* (bron van FOS), mineralen, kaliumchloride, natriumchloride, mannan-oligosachariden (MOS), gedroogde broccoli* (0,1%), chondroïtinesulfaat, glucosamine, gedroogde ascophyllum nodosum* (0,05%), gedroogde yucca schidigera*, gedroogde cranberry* (0,01%), gedroogde bosbessen* (0,01%), gedroogde peterselie* (0,01%). * Ingrediënten van natuurlijke oorsprong.', true, now(), 'sha256:25224122c2f3e22ce16fdbe49543fc842f9d38743a403773732f10b7593608d2', null from p;

-- Ultra Premium Direct — Graanvrije brokken voor honden met een gevoelige spijsvertering (4 kg / 12 kg)
-- bron: https://www.ultrapremiumdirect.nl/producten/graanvrije-brokken-voor-gevoelige-honden-in-alle-maten/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ultra Premium Direct', 'Graanvrije brokken voor honden met een gevoelige spijsvertering', 'kibble', '4 kg / 12 kg', null, 'https://www.ultrapremiumdirect.nl/producten/graanvrije-brokken-voor-gevoelige-honden-in-alle-maten/', date '2026-11-09', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydrateerd lamseiwit (20%), erwten (17,5%), gedehydrateerd varkenseiwit (14%), maniok (12%), kippenvet (10%), aardappelzetmeel (10%), tapioca (4,5%), gehydrolyseerd varkenseiwit (3%), gedehydrateerde bietenpulp (3%), zalmolie (1,5%), appelvezels (1%), mineralen, biergist, fructo-oligosacchariden (FOS) (0,3%, waarvan gedehydrateerde cichorei), gistwand (bron van MOS) (0,3%), gedehydrateerde planten (cichorei, broccoli, veenbes, spinazie, bosbes, citrusvruchten, kurkuma, kruidnagel, rozemarijn), algen (waarvan Ascophyllum nodosum) (0,1%), glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:fc5537db4e337b35b8a8402c9e70c5b8ad2783cf946b6818cd91bafbe045dfad', null from p;

-- Ultra Premium Direct — Light Super Premium brokken voor gesteriliseerde honden met overgewicht - Lam (12 kg)
-- bron: https://www.ultrapremiumdirect.nl/producten/light-super-premium-brokken-voor-gesteriliseerde-honden-met-overgewicht/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ultra Premium Direct', 'Light Super Premium brokken voor gesteriliseerde honden met overgewicht - Lam', 'kibble', '12 kg', '3760026306162', 'https://www.ultrapremiumdirect.nl/producten/light-super-premium-brokken-voor-gesteriliseerde-honden-met-overgewicht/', date '2026-11-09', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydrateerd lamseiwit (16%), gedehydrateerd varkenseiwit (15%), rijst (15%), gedehydrateerde erwten (14%), maïs (11,5%), kippenvet (5%), gehydrolyseerd varkenseiwit (5%), bruine rijst (5%), gedehydrateerde johannesbroodboonpeul, gedehydrateerde bietenpulp, tapioca, biergist, zalmolie (1,5%), mineralen, kaliumchloride, fructo-oligosachariden (FOS), mannan-oligosachariden (MOS), gedehydrateerde ascophyllum nodosum (0,01%), gedehydrateerde planten (tijm, rosmarinus sp. , kurkuma sp., citrus sp., eugenia sp., yucca schidigera).', true, now(), 'sha256:66542da87f26088df3da1ff10b0d9f9ebcffc974a45d5f44809d63589cb67e27', null from p;

-- Ultra Premium Direct — Light Care hondenbrokken voor gesteriliseerde honden met overgewicht - Kip (12 kg)
-- bron: https://www.ultrapremiumdirect.nl/producten/brokken-honden-met-overgewicht-gesteriliseerd-love-care/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ultra Premium Direct', 'Light Care hondenbrokken voor gesteriliseerde honden met overgewicht - Kip', 'kibble', '12 kg', '3760026302539', 'https://www.ultrapremiumdirect.nl/producten/brokken-honden-met-overgewicht-gesteriliseerd-love-care/', date '2026-11-09', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydrateerd kippeneiwit (32,5%), rijst (25,5%), gedehydrateerde erwten (15%), gehydrolyseerd gevogelte-eiwit (5%), plantaardige vezels (5%), kippenvet (4%), gedehydrateerde johannesbroodpeulen, gedehydrateerde bietenpulp, tapioca, zalmolie (1,5%), gedehydrateerd varkenseiwit, biergist, mineralen, raapzaadolie, mannan-oligosachariden (MOS) (0,1%), fructo-oligosachariden (FOS) (0,1%), gedehydrateerde spirulina, gedroogde veenbessen, gedroogde spinazie, gedroogde broccoli, gedroogde bosbessen, glucosamine (0,01%), chondroïtinesulfaat (0,01%), gedehydrateerde yucca schidigera, gedehydrateerde ascophyllum nodosum (0,01%).', true, now(), 'sha256:04d19b04c28e13cdb40d2e78cfdfb535470cfacb920bd14cfd6dcf33db3a565b', null from p;

-- Ultra Premium Direct — Care Digestion brokken voor volwassen honden van alle groottes - Eend (12 kg)
-- bron: https://www.ultrapremiumdirect.nl/producten/eend-vertering-hond-brokken/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ultra Premium Direct', 'Care Digestion brokken voor volwassen honden van alle groottes - Eend', 'kibble', '12 kg', '3760026306544', 'https://www.ultrapremiumdirect.nl/producten/eend-vertering-hond-brokken/', date '2026-11-09', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogd eendeneiwit (19%), zoete aardappel (18%), tapioca (13%), gedroogd varkenseiwit (12%), aardappelzetmeel (10%), kippenvet (7%), erwtenvezel (6%), gehydrolyseerd varkenseiwit (3%), bietenpulp (2,5%), lijnzaad (2%), zalmolie (1,5%), mineralen, bakkersgist (1%), fructooligosacchariden (FOS) (0,15%), zeewier (inclusief gedroogde Ascophyllum nodosum) (0,1%), gedroogde kruiden (cichorei, broccoli, cranberry, spinazie, bosbes, citrusvruchten, kurkuma, kruidnagel, rozemarijn), gistcelwand (bron van MOS) (0,08%).', true, now(), 'sha256:5778b5a351526af6ce0975e9ef33caf96cf78265f0e91c033e0166a4ef8e2012', null from p;

-- Ultra Premium Direct — Huid & Vacht Care brokken voor volwassen honden van alle groottes - Zalm (12 kg)
-- bron: https://www.ultrapremiumdirect.nl/producten/brokken-huid-en-pels-voor-honden/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ultra Premium Direct', 'Huid & Vacht Care brokken voor volwassen honden van alle groottes - Zalm', 'kibble', '12 kg', '3760026305554', 'https://www.ultrapremiumdirect.nl/producten/brokken-huid-en-pels-voor-honden/', date '2026-11-09', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydrateerd zalmeiwit (23,5%), gedehydrateerde zoete aardappel (20,5%), aardappelzetmeel (20,5%), gedehydrateerd viseiwit (8%), pluimveevet (6%), gedehydrateerde biergist (4%), gehydrolyseerd kippeneiwit, zonnebloemolie (2,5%), gedehydrateerde bietenpulp, lijnzaad (2%), zalmolie (1,5%), plantaardige vezels, mineralen, gedehydrateerde cichorei (bron van FOS), mannan-oligosachariden (MOS), bernagiezaad (0,2%), krillmeel (0,2%), gedehydrateerde kruiden (0,1%) (granaatappel, peterselie, oregano, tijm), gedehydrateerde wortel, gedehydrateerde ascophyllum nodosum (0,05%), kurkumapoeder, gedehydrateerde kruiden (rosmarinus sp., curcuma sp., citrus sp., eugenia sp.), gedehydrateerde bosbessen, gedehydrateerde veenbessen.', true, now(), 'sha256:74d44a31fa7857cf62b658ffd7aca29ceae988ad0587bebeea19cf9b34f540fe', null from p;

-- Ultra Premium Direct — Super Premium brokken voor middelgrote honden (10 tot 30 kg) - Kip (12 kg)
-- bron: https://www.ultrapremiumdirect.nl/producten/brokken-super-premium-voor-middelgrote-honden/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ultra Premium Direct', 'Super Premium brokken voor middelgrote honden (10 tot 30 kg) - Kip', 'kibble', '12 kg', '3760026306148', 'https://www.ultrapremiumdirect.nl/producten/brokken-super-premium-voor-middelgrote-honden/', date '2026-11-09', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydrateerd kippeneiwit (31%), rijst (20%), maïs (17%), erwten (12%), kippenvet (8%), gehydrolyseerd varkenseiwit (3%), gedehydrateerde bietenpulp (2,5%), zalmolie (1,5%), plantaardige vezels (1%), biergist, mineralen, gistwand (bron van MOS), fructo-oligosacchariden (FOS), algen (waarvan Ascophyllum nodosum) (0,1%), gedehydrateerde planten (cichorei, broccoli, veenbes, spinazie, bosbes, citrusvruchten, kurkuma, kruidnagel, rozemarijn).', true, now(), 'sha256:3971cde1de5616846c50b689db4f3057f49310d9cc546655a587a9fd16fa9372', null from p;

-- Ultra Premium Direct — Super Premium brokken - Lam en rijst (12 kg)
-- bron: https://www.ultrapremiumdirect.nl/producten/brokken-super-premium-voor-honden-lam-en-rijst/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ultra Premium Direct', 'Super Premium brokken - Lam en rijst', 'kibble', '12 kg', null, 'https://www.ultrapremiumdirect.nl/producten/brokken-super-premium-voor-honden-lam-en-rijst/', date '2026-11-09', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydrateerd lamseiwit (16%), gedehydrateerd varkenseiwit (15%), rijst (15%), gedehydrateerde erwten (15%), maïs (8%), kippenvet (8%), gehydrolyseerd varkenseiwit (5%), bruine rijst (4%), gedehydrateerde johannesbroodpeulen, tapioca, biergist, gedehydrateerde bietenpulp, zalmolie (1,5%), gedehydrateerd aardappeleiwit, mineralen, fructo-oligosachariden (FOS) (0,5%), mannan-oligosachariden (MOS) (0,5%), natriumchloride, kaliumchloride, gedehydrateerde ascophyllum nodosum (0,01%), gedehydrateerde planten (tijm, rosmarinus sp. , curcuma sp., citrus sp., eugenia sp., yucca schidigera).', true, now(), 'sha256:b4332c3ecc1de1ed6f1eee7c8fe66c6d2fb9c9ac684b44d01079a9c1a5a7c5ca', null from p;

-- Ultra Premium Direct — Super Premium brokken voor puppy's van alle groottes – Lam en rijst (12 kg)
-- bron: https://www.ultrapremiumdirect.nl/producten/Super-Premium-brokken-voor-puppy-van-alle-groottes/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ultra Premium Direct', 'Super Premium brokken voor puppy''s van alle groottes – Lam en rijst', 'kibble', '12 kg', '3760026305899', 'https://www.ultrapremiumdirect.nl/producten/Super-Premium-brokken-voor-puppy-van-alle-groottes/', date '2026-11-09', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydrateerd lameiwit (16,5%), rijst (16,5%), gedehydrateerd varkensvlees (100% varkensvlees) (16%), maïs (16%), gevogeltevet (10%), gedehydrateerde zoete aardappel (6%), gehydrolyseerde varkenseiwitten, gedehydrateerde bietenpulp, zalmolie (1,5%), gedehydrateerde appel, mineralen, gedehydrateerde cichoreipulp (bron van FOS) (0,5%), mannan-oligosacchariden (MOS) (0,5%), gedehydrateerde planten (cichoreiwortel, broccoli, veenbes, spinazie, bosbessensap, citrusvruchten, kurkuma, kruidnagel, rozemarijn), gedehydrateerde Ascophyllum nodosum (0,05%), glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:958bff60948792441dc817f53b754c4ed501941495e47c94180bd4955e012f41', null from p;

-- Ultra Premium Direct — Graanvrije brokken met verse zalm voor puppy's van alle groottes (12 kg)
-- bron: https://www.ultrapremiumdirect.nl/producten/graanvrije-brokken-met-verse-zalm-voor-puppy-van-alle-rassen/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ultra Premium Direct', 'Graanvrije brokken met verse zalm voor puppy''s van alle groottes', 'kibble', '12 kg', '3760026305974', 'https://www.ultrapremiumdirect.nl/producten/graanvrije-brokken-met-verse-zalm-voor-puppy-van-alle-rassen/', date '2026-11-09', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'verse zalm* (20%), gedehydrateerd varkensvlees (100% varkensvlees) (20%), gedehydrateerde aardappel* (20%), tapioca* (12%), pluimveevet (6%), gedehydrateerde aardappeleiwit (5%), gedehydrateerde bietenpulp* (4%), mineralen, gehydrolyseerde varkenseiwitten, zalmolie (1,5%), gedehydrateerde biergist*, gedroogde appel* (1%), gedroogde wortel* (1%), gistextracten (bron van MOS), gedehydrateerde cichoreipulp* (bron van FOS), gedehydrateerde kruiden* (kamille, venkel, goudsbloem) (0,2%), gedehydrateerde frambozen* (0,1%), gedehydrateerde yucca schidigera*, gedehydrateerde ascophyllum nodosum* (0,1%), glucosamine, gedehydrateerde groenten* (broccoli, spinazie) (0,04%), chondroïtinesulfaat. *Ingrediënten van natuurlijke oorsprong.', true, now(), 'sha256:6ff73485a68f8728b6c0eefb036d4cdacce027e1620bbf2ce741b8935bb050f6', null from p;

-- Ultra Premium Direct — Super Premium brokken voor grote honden (12 kg / 4 x 12 kg)
-- bron: https://www.ultrapremiumdirect.nl/producten/brokken-super-premium-voor-honden-van-groot-formaat/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ultra Premium Direct', 'Super Premium brokken voor grote honden', 'kibble', '12 kg / 4 x 12 kg', null, 'https://www.ultrapremiumdirect.nl/producten/brokken-super-premium-voor-honden-van-groot-formaat/', date '2026-11-09', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydrateerd kippeneiwit (35%), rijst (20%), maïs (13%), erwten (12%), kippenvet (9%), gehydrolyseerd varkenseiwit (2,5%), bietenpulp (2,5%), plantaardige vezels, zalmolie (1,5%), biergist, mineralen, gistwand (bron van MOS), fructo-oligosacchariden (FOS), algen (waarvan Ascophyllum nodosum) (0,1%), gedehydrateerde planten (cichorei, broccoli, veenbes, spinazie, bosbes, citrusvruchten, kurkuma, kruidnagel, rozemarijn), glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:5c5250bbf4733290b146080ff81f2b784b73bca542ff1211cbd3bbd3ce957822', null from p;

-- Ultra Premium Direct — Senior Care hondenbrokken voor alle groottes (7 jaar) - Kip (12 kg)
-- bron: https://www.ultrapremiumdirect.nl/producten/brokken-honden-senior-love-care/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ultra Premium Direct', 'Senior Care hondenbrokken voor alle groottes (7 jaar) - Kip', 'kibble', '12 kg', '3760026306179', 'https://www.ultrapremiumdirect.nl/producten/brokken-honden-senior-love-care/', date '2026-11-09', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydrateerd kippeneiwit (26%), rijst (20%), erwten (12%), maïs (12%), erwtenvezels (6%), kippenvet (5,5%), gedehydrateerd varkenseiwit (5%), zalmolie (3,5%), gehydrolyseerd varkenseiwit (3%), gedehydrateerde bietenpulp (3%), appelvezels, biergist, mineralen, gehydrolyseerd zeecollageen (0,15%), fructo-oligosacchariden (FOS) (0,1%), algen (waaronder Ascophyllum nodosum) (0,1%), gedroogde planten (cichorei, broccoli, veenbes, spinazie, bosbes, citrusvruchten, kurkuma, kruidnagel, rozemarijn), gistextracten (0,08%), glucosamine (0,05%), chondroïtinesulfaat (0,01%).', true, now(), 'sha256:530e77e38ce9767593476cc77c6764b681a65123ec9c6088984286536ad33c0c', null from p;

-- Ultra Premium Direct — Graanvrije Light brokken voor gesteriliseerde honden met overgewicht - Lam (12 kg)
-- bron: https://www.ultrapremiumdirect.nl/producten/light-graanvrije-brokken-voor-gesteriliseerde-honden-met-overgewicht/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ultra Premium Direct', 'Graanvrije Light brokken voor gesteriliseerde honden met overgewicht - Lam', 'kibble', '12 kg', '3760026306131', 'https://www.ultrapremiumdirect.nl/producten/light-graanvrije-brokken-voor-gesteriliseerde-honden-met-overgewicht/', date '2026-11-09', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydrateerd lamseiwit (18%), erwten (16%), gedehydrateerd varkenseiwit (15%), aardappelzetmeel (14%), maniok (12%), kippenvet (7%), erwtenvezels, gehydrolyseerd varkenseiwit (3%), gedehydrateerde bietenpulp (3%), zalmolie (1,5%), appelvezels (1%), mineralen, biergist, fructo-oligosacchariden (FOS) (0,2%, waarvan gedehydrateerde cichorei), gistwand (bron van MOS) (0,15%), gedehydrateerde planten (cichorei, broccoli, veenbes, spinazie, bosbes, citrusvruchten, kurkuma, kruidnagel, rozemarijn), algen (waarvan Ascophyllum nodosum) (0,1%), glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:18152482314d3e490e511e834287d52ee7721f6aa71031f2365f3c565ab1d650', null from p;

-- Ultra Premium Direct — Hypoallergene brokken met vis - Care (12 kg)
-- bron: https://www.ultrapremiumdirect.nl/producten/hypoallergene-brokken-allergische-honden/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ultra Premium Direct', 'Hypoallergene brokken met vis - Care', 'kibble', '12 kg', '3760026306452', 'https://www.ultrapremiumdirect.nl/producten/hypoallergene-brokken-allergische-honden/', date '2026-11-09', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydrateerde viseiwitten (29%), rijst (29%), erwten (16,5%), kippenvet (7,5%), gedehydrateerde bietenpulp (3%), lijnzaad (3%), gehydrolyseerde varkenseiwitten (2,5%), erwtenvezels (2%), maniok (2%), zalmolie (1,5%), biergist, fructo-oligosacchariden (FOS) (0,12%), gistwand (bron van MOS) (0,1%), algen (waarvan Ascophyllum nodosum) (0,1%), gedehydrateerde planten (cichorei, broccoli, veenbes, spinazie, bosbes, citrusvruchten, kurkuma, kruidnagel, rozemarijn).', true, now(), 'sha256:cf7ee1dfcd0fe65c949f659d30d77cc8d32476896c3a77cf0b3028d027b2e74d', null from p;

-- Ultra Premium Direct — Super Premium brokken - Zalm en rijst (12 kg)
-- bron: https://www.ultrapremiumdirect.nl/producten/brokken-super-premium-voor-honden-zalm-en-rijst/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ultra Premium Direct', 'Super Premium brokken - Zalm en rijst', 'kibble', '12 kg', '3760026306377', 'https://www.ultrapremiumdirect.nl/producten/brokken-super-premium-voor-honden-zalm-en-rijst/', date '2026-11-09', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydrateerd kippeneiwit (28,5%), rijst (19,5%), maïs (13%), gedehydrateerde erwten (10%), kippenvet (7,5%), gedehydrateerd zalmeiwit (5%), gehydrolyseerd gevogelte-eiwit (5%), gedehydrateerde johannesbroodpeul (4,5%), gedehydrateerde bietenpulp, zalmolie (1,5%), biergist, mineralen, plantaardige vezels, kaliumchloride, natriumchloride, mannan-oligosachariden (MOS), fructo-oligosachariden (FOS), chondroïtinesulfaat, glucosamine, gedehydrateerde ascophyllum nodosum (0,01%), gedroogde veenbessen, gedroogde spinazie, gedroogde broccoli, gedroogde bosbessen, gedroogde yucca schidigera.', true, now(), 'sha256:d0227ef1d6bdb176b40824502ebaf0bc28f87a1adc862038ccfe5341c9cdd5fe', null from p;

-- Ultra Premium Direct — Graanvrije brokken Original voor volwassen honden van alle groottes (12 kg)
-- bron: https://www.ultrapremiumdirect.nl/producten/graanvrije-brokken-origineel-volwassen-honden-en-gigantisch-sup-40-kg/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ultra Premium Direct', 'Graanvrije brokken Original voor volwassen honden van alle groottes', 'kibble', '12 kg', '3760026305059', 'https://www.ultrapremiumdirect.nl/producten/graanvrije-brokken-origineel-volwassen-honden-en-gigantisch-sup-40-kg/', date '2026-11-09', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydrateerd pluimvee-eiwit (29,5%), gedehydrateerde kanen (100% varkensvlees) (16%), gedehydrateerde erwten (14%), pluimveevet (10%), tapioca (9%), gedehydrateerde aardappel (8%), gehydrolyseerd kippeneiwit, gedehydrateerd tonijneiwit, zalmolie (1,5%), gedehydrateerde brouwersgist (bron van MOS), gedehydrateerd ei, gedehydrateerde bietenpulp, lijnzaad, mineralen, gedehydrateerde planten, gedehydrateerde cichoreipulp (bron van FOS), mannan-oligosachariden (MOS), gedehydrateerde ascophyllum nodosum (0,1%), gedehydrateerde yucca schidigera, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:f8ed419c142eb28e1833601a097b0f510d51c72f68af818cc4fb8d776b475205', null from p;

-- Ultra Premium Direct — Light Super Premium brokken voor kleine gesteriliseerde honden (tot 10 kg) - Lam (7 kg)
-- bron: https://www.ultrapremiumdirect.nl/producten/brokken-light-super-premium-voor-gesteriliseerde-honden-van-klein-formaat/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ultra Premium Direct', 'Light Super Premium brokken voor kleine gesteriliseerde honden (tot 10 kg) - Lam', 'kibble', '7 kg', '3760026304786', 'https://www.ultrapremiumdirect.nl/producten/brokken-light-super-premium-voor-gesteriliseerde-honden-van-klein-formaat/', date '2026-11-09', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydrateerde lamseiwitten (16%), rijst (16%), erwten (15,5%), maïs (15%), gedehydrateerde varkenseiwitten (14%), tuinbonenvezels (6,5%), kippenvet (5,5%), gehydrolyseerde varkenseiwitten (3%), gedehydrateerde bietenpulp (3%), zalmolie (1,5%), biergist, mineralen, fructo-oligosacchariden (FOS) (0,1%), gistwand (bron van MOS) (0,1%), algen (waarvan Ascophyllum nodosum) (0,1%), gedehydrateerde planten (cichorei, broccoli, veenbes, spinazie, bosbes, citrusvruchten, kurkuma, kruidnagel, rozemarijn).', true, now(), 'sha256:c00cee955553f44f468689512f5955a2f38ed2afa2b210f8255800b18d282a3a', null from p;

-- Ultra Premium Direct — Super Premium brokken voor actieve honden (alle groottes) - Kip (12 kg)
-- bron: https://www.ultrapremiumdirect.nl/producten/brokken-super-premium-voor-actieve-honden-van-alle-formaten/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ultra Premium Direct', 'Super Premium brokken voor actieve honden (alle groottes) - Kip', 'kibble', '12 kg', '3760026306155', 'https://www.ultrapremiumdirect.nl/producten/brokken-super-premium-voor-actieve-honden-van-alle-formaten/', date '2026-11-09', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydrateerd kippeneiwit (34%), rijst (15%), maïs (14%), erwten (12%), kippenvet (11,5%), lijnzaad (3%), gehydrolyseerd varkenseiwit (2,5%), gedehydrateerde bietenpulp (2,5%), zalmolie (1,5%), biergist, plantaardige vezels, mineralen, gistwand (bron van MOS), fructo-oligosacchariden (FOS), algen (waarvan Ascophyllum nodosum) (0,1%), gedehydrateerde planten (cichorei, broccoli, veenbes, spinazie, bosbes, citrusvruchten, kurkuma, kruidnagel, rozemarijn), glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:0390ba27b0446ac620e0dad18068a46a7e0ce7b3ca22f94450b311e8c6828cb4', null from p;

-- Ultra Premium Direct — Graanvrije brokken voor puppy's met een gevoelige spijsvertering (4 kg / 12 kg)
-- bron: https://www.ultrapremiumdirect.nl/producten/graanvrije-brokken-voor-gevoelige-puppies-van-alle-formaten/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ultra Premium Direct', 'Graanvrije brokken voor puppy''s met een gevoelige spijsvertering', 'kibble', '4 kg / 12 kg', null, 'https://www.ultrapremiumdirect.nl/producten/graanvrije-brokken-voor-gevoelige-puppies-van-alle-formaten/', date '2026-11-09', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydrateerd lamseiwit (18%), gedehydrateerd varkenseiwit (16%), erwten (16%), maniok (12%), aardappelzetmeel (11%), kippenvet (10%), tapioca (5%), gehydrolyseerd varkenseiwit (3%), zalmolie (1,5%), gedehydrateerde bietenpulp (1%), appelvezels (1%), biergist, mineralen, fructo-oligosacchariden (FOS) (0,3%, waarvan gedehydrateerde cichorei), gistwand (bron van MOS) (0,3%), gedehydrateerde planten (cichorei, broccoli, veenbes, spinazie, bosbes, citrusvruchten, kurkuma, kruidnagel, rozemarijn), algen (waarvan Ascophyllum nodosum) (0,1%), glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:2d4173dab1f4a0bec4ab173055cb532f94073c1bb4ea3cf0365d2affc181f834', null from p;

-- Ultra Premium Direct — Graanvrije brokken met verse zalm voor kleine volwassen honden (10 kg) (7 kg)
-- bron: https://www.ultrapremiumdirect.nl/producten/brokken-zalm-vers-hond-volwassen-kleintjes/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ultra Premium Direct', 'Graanvrije brokken met verse zalm voor kleine volwassen honden (10 kg)', 'kibble', '7 kg', '3760026305523', 'https://www.ultrapremiumdirect.nl/producten/brokken-zalm-vers-hond-volwassen-kleintjes/', date '2026-11-09', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'verse zalm* (20%), gedehydrateerd kippeneiwit (20%), gedehydrateerde zoete aardappel* (12%), aardappelzetmeel (12%), gedehydrateerde erwten* (12%), gevogeltevet (5%), gedehydrateerd varkenscrèton (4%), gehydrolyseerd gevogelte-eiwit, gedehydrateerde bietenpulp*, lijnzaad*, zalmolie (1,5%), gedehydrateerde biergist*, gedehydrateerde appel* (1%), plantaardige vezels*, gedehydrateerde cichorei* (bron van FOS) (0,8%), mineralen, mannan-oligosacchariden (MOS), gedehydrateerde ascophyllum nodosum* (0,05%), gedehydrateerde planten (rosmarinus sp. , kurkuma sp., citrus sp., eugenia sp.), glucosamine, chondroïtinesulfaat, gedehydrateerde* bosbes (0,01%), gedehydrateerde* veenbes (0,01%), gedehydrateerde* broccoli (0,01%), gedehydrateerde* spinazie, gedehydrateerde* yucca schidigera. Ingrediënten van natuurlijke oorsprong.', true, now(), 'sha256:683e520efbbeed39346f252d5d124f0864a957a17278c8c21e53a2a610dd229e', null from p;

-- Ultra Premium Direct — Super Premium brokken voor kleine honden (tot 10 kg) - Kip (8 kg)
-- bron: https://www.ultrapremiumdirect.nl/producten/brokken-super-premium-voor-kleine-honden/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ultra Premium Direct', 'Super Premium brokken voor kleine honden (tot 10 kg) - Kip', 'kibble', '8 kg', '3760026305004', 'https://www.ultrapremiumdirect.nl/producten/brokken-super-premium-voor-kleine-honden/', date '2026-11-09', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydrateerd kippeneiwit (29,5%), rijst (24,5%), gedehydrateerde erwten (15%), kippenvet (13%), gehydrolyseerd kippeneiwit (6%), gedehydrateerd viseiwit, gedehydrateerde johannesbroodpeul, gedehydrateerde bietenpulp, zalmolie (1,5%), gedehydrateerd ei, mineralen, plantaardige vezels, gedehydrateerde biergist, mannan-oligosachariden (MOS), fructo-oligosachariden (FOS), gedehydrateerde yucca schidigera, gedehydrateerde spirulina, gedehydrateerde cranberry, gedehydrateerde spinazie, gedehydrateerde broccoli, gedehydrateerde bosbessen, gedehydrateerde ascophyllum nodosum (0,01%).', true, now(), 'sha256:d6486ad819a411171b65c152fb4e41ce9dc8066d9769b29ac4ef1596c53e3a8d', null from p;

-- Ultra Premium Direct — Graanvrij paté voor honden - Kip & kalkoen (12 x 400 g / 24 x 400 g)
-- bron: https://www.ultrapremiumdirect.nl/producten/12-blikjes-pate-voor-honden-graanvrij-kip-kalkoen-wortel-spinazie/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ultra Premium Direct', 'Graanvrij paté voor honden - Kip & kalkoen', 'wet', '12 x 400 g / 24 x 400 g', null, 'https://www.ultrapremiumdirect.nl/producten/12-blikjes-pate-voor-honden-graanvrij-kip-kalkoen-wortel-spinazie/', date '2026-11-09', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'pluimvee 60% (vlees 20% (kip 10% en kalkoen 10%), gevogelteharten en -levers 20%, gevogeltemagen 15%, gevogeltevellen 5%), wortel 5%, spinazie 4%, mango 1%, inuline (prebioticum), lijnzaadolie 0,2%, mineralen.', true, now(), 'sha256:cac186bcb7bcedeff59470296e2a00126c22e2d14b3079b6d3663a0392bbf3c3', null from p;

-- Ultra Premium Direct — Graanvrije paté voor honden - Lam (12 x 400 g / 24 x 400 g)
-- bron: https://www.ultrapremiumdirect.nl/producten/12-blikjes-graanvrije-pate-voor-honden-lam-courgette-wortel/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ultra Premium Direct', 'Graanvrije paté voor honden - Lam', 'wet', '12 x 400 g / 24 x 400 g', null, 'https://www.ultrapremiumdirect.nl/producten/12-blikjes-graanvrije-pate-voor-honden-lam-courgette-wortel/', date '2026-11-09', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'lam 30% (levers 20%, lobben 10%), varkensvlees 30% (vlees 20%, nieren 5% en lobben 5%), courgette 6%, wortel 3%, appel 1%, mineralen, inuline (prebioticum), lijnzaadolie 0,2%.', true, now(), 'sha256:40ae97818b5020553ee392d02b1eebc53bfe20c40bc8ba0695cc05d7f73af539', null from p;

-- Ultra Premium Direct — Lamsreepjes in saus voor honden – Natvoer zonder granen (12 x 100 g / 24 x 100 g)
-- bron: https://www.ultrapremiumdirect.nl/producten/12-zakken-met-mals-gesneden-hondenvoer-graanvrij-lamsvlees-en-sperziebonen/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ultra Premium Direct', 'Lamsreepjes in saus voor honden – Natvoer zonder granen', 'wet', '12 x 100 g / 24 x 100 g', null, 'https://www.ultrapremiumdirect.nl/producten/12-zakken-met-mals-gesneden-hondenvoer-graanvrij-lamsvlees-en-sperziebonen/', date '2026-11-09', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'varkensvlees, lamsvlees (4%), sperziebonen (4%), aardappelzetmeel, mineralen.', true, now(), 'sha256:0baf6c5d42eb6255b10212ee01e6fd36510617ffe563cffd2eb5590d911f4c07', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
