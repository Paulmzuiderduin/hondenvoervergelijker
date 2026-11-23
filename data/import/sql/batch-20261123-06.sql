-- Automatisch overgenomen etiketten, batch 6 van 2026-11-23 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- N&D — Pumpkin Hert medium/maxi (12 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-pumpkin-hondenvoeding-hert-mediummaxi-12-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Pumpkin Hert medium/maxi', 'kibble', '12 kg', '8010276039101', 'https://www.bestpetfoods.nl/product/nd-pumpkin-hondenvoeding-hert-mediummaxi-12-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Hert (22%), gedehydrateerd herten eiwit (20%), zoete aardappel, kippenvet, gedroogde pompoen (5%), gedroogd ei, haring, gedehydrateerd haring eiwit, visolie (van haring), erwtenvezels, gedroogde wortelen, luzernemeel, inuline, fructo-oligosacchariden, gistextract (bron van manno-oligosacchariden), gedroogde appel (0,5%), gedroogde granaatappel, gedroogde spinazie, psyllium en psylliumschillen, gedroogde sinaasappels, gedroogde bosbessen, natriumchloride, gedroogde biergist, kurkuma (0,2%), aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:88f1df7230057e59e0bcd219011ee286399b6417d6742f0b113eaffc624eefd0', null from p;

-- N&D — Pumpkin natvoeding Lam (6 x 285 g)
-- bron: https://www.bestpetfoods.nl/product/nd-pumpkin-natvoeding-voor-de-hond-lam-285-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Pumpkin natvoeding Lam', 'wet', '6 x 285 g', '8606014105575', 'https://www.bestpetfoods.nl/product/nd-pumpkin-natvoeding-voor-de-hond-lam-285-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lamsbeen (50%), lamslever, haring, pompoen (5%), bataten, gekookte kippeneieren, bosbessen (4%), visolie, dierlijk vet, fructo-oligosachariden, chondroïtinesulfaat, glucosamine, vitamines, mineralen.', true, now(), 'sha256:b7313664cf73c83652788bbc54e807ff6245bc610955d6607866b306212c7b45', null from p;

-- N&D — Quinoa Weight Management small breed (800 g)
-- bron: https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-weight-management-small-breed-800-gr
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Quinoa Weight Management small breed', 'kibble', '800 g', '8010276039941', 'https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-weight-management-small-breed-800-gr', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lamsvlees (20%), gedehydrateerde lamproteïne (20%), erwtenzetmeel, erwtenvezel, quinoazaadschroot (8%), kippenvet, lijnzaad, gedehydrateerde haringproteïne, visolie (van haring), gedroogde broccoli (2.5%), gedroogde asperges (2.5%), dicalciumfosfaat, luzernemeel, psylliumschillen en zaden, kaliumchloride, calciumcarbonaat, natriumchloride, aloë vera-extract, glucosamine, chondroïtinesulfaat', true, now(), 'sha256:d4e906bc95ff6ddb27cab413bee57e8088353e21e9dcce9170cc07e51dc658d8', null from p;

-- N&D — Pumpkin natvoeding Wild Zwijn (6 x 285 g)
-- bron: https://www.bestpetfoods.nl/product/nd-pumpkin-natvoeding-voor-de-hond-wild-zwijn-285-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Pumpkin natvoeding Wild Zwijn', 'wet', '6 x 285 g', '8606014105537', 'https://www.bestpetfoods.nl/product/nd-pumpkin-natvoeding-voor-de-hond-wild-zwijn-285-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Wild zwijn schouder (45%), wild zwijn schenkel, haring, pompoen (5%), gekookte kippeneieren, visolie, zoete aardappel, appel (2%), fructo-oligosachariden, cholinechloride, chondroïtinesulfaat, glucosamine, vitamines, mineralen.', true, now(), 'sha256:8b9928561037c5fd15f54c7a7a808d715907c76e485490b660ce1fc989792835', null from p;

-- N&D — Spirulina Lam small breed (2 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-spirulina-hondenvoeding-lam-small-breed-2-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Spirulina Lam small breed', 'kibble', '2 kg', '8010276041067', 'https://www.bestpetfoods.nl/product/nd-spirulina-hondenvoeding-lam-small-breed-2-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lamsvlees (22%), gedehydrateerde lamproteïne (20%), zoete aardappel, kippenvet, gedroogde spirulina (5%), gedroogde eieren, haring, gedehydrateerde haringproteïne, gedroogde gojibessen (2.5%), visolie (van haring), erwtenvezel, gedroogde wortelen, luzernemeel, inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde spinazie, psylliumschillen en zaden, natriumchloride, gedroogde biergist, kurkuma, aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:97a926b37c9e2a683d902a36a5c28e2c436481dd6cd3c4f09851e55f39982a23', null from p;

-- N&D — Quinoa Skin & Coat small breed Haring (800 g / 2,5 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-skin-coat-small-breed-haring-25-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Quinoa Skin & Coat small breed Haring', 'kibble', '800 g / 2,5 kg', null, 'https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-skin-coat-small-breed-haring-25-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Haring (20%), gedehydrateerde haringproteïne (20%), erwtenzetmeel, visolie (van haring), quinoazaadschroot (8%), lijnzaad, gedroogde kokosnoot (2.5%), kurkuma (2.5%), inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), calciumcarbonaat, diCalciumfosfaat, psylliumschillen en zaden, kaliumchloride, natriumchloride, gedroogde biergist, aloë vera-extract, glucosamine, chondroïtinesulfaat. Eiwitbronnen: haring, gedehydrateerde haringproteïne. Koolhydraatbronnen: erwtenzetmeel, quinoazaadschroot', true, now(), 'sha256:58ad29917f339b75a24f53525ec93269a4368fca9ab4adeadd3592ae912b0a53', null from p;

-- N&D — Prime puppy natvoeding Kip (6 x 140 g)
-- bron: https://www.bestpetfoods.nl/product/nd-prime-puppy-natvoeding-kip-140-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Prime puppy natvoeding Kip', 'wet', '6 x 140 g', '8606014105254', 'https://www.bestpetfoods.nl/product/nd-prime-puppy-natvoeding-kip-140-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kipfilet (55%), kippenbout, haring, bataten, gekookte kippeneieren, granaatappel (4%), visolie, dierlijk vet, fructo-oligosachariden, chondroïtinesulfaat, glucosamine, vitamines, mineralen.', true, now(), 'sha256:a979418acb8da7c0721c166d39196f11c3b12032394b1ee222d1610c3050affc', null from p;

-- N&D — Quinoa natvoeding Skin & Coat Hert (6 x 285 g)
-- bron: https://www.bestpetfoods.nl/product/nd-quinoa-natvoeding-voor-de-hond-skin-coat-hert-285-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Quinoa natvoeding Skin & Coat Hert', 'wet', '6 x 285 g', '8606014105643', 'https://www.bestpetfoods.nl/product/nd-quinoa-natvoeding-voor-de-hond-skin-coat-hert-285-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Hert (55%), quinoazaadschroot (5%), visolie, kokosnoot (4%), fructo-oligosachariden, chondroïtinesulfaat, glucosamine, vitamines, mineralen. Eiwitbronnen: hert shank. Koolhydraatbronnen: quinoazaadschroot.', true, now(), 'sha256:aabd979044fa10ee117477977da7a953f389e2e367d34320be49b4ebd3ac64a9', null from p;

-- N&D — Quinoa natvoeding Weight Management (6 x 285 g)
-- bron: https://www.bestpetfoods.nl/product/nd-quinoa-natvoeding-voor-de-hond-weight-management-285-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Quinoa natvoeding Weight Management', 'wet', '6 x 285 g', '8606014105650', 'https://www.bestpetfoods.nl/product/nd-quinoa-natvoeding-voor-de-hond-weight-management-285-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lamsrack en schouder (40%), gehydrolyseerd viseiwit, quinoazaadschroot (5%), visolie, broccoli, asperges, fructo-oligosachariden, psylliumschillen en zaden, chondroïtinesulfaat, glucosamine, vitamines, mineralen.', true, now(), 'sha256:ed0b0596a42645b16885556bf5630458457905a32ce88d1f996a87153a9d5ab0', null from p;

-- N&D — Pumpkin natvoeding Hert (6 x 285 g)
-- bron: https://www.bestpetfoods.nl/product/nd-pumpkin-natvoeding-voor-de-hond-hert-285-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Pumpkin natvoeding Hert', 'wet', '6 x 285 g', '8606014105599', 'https://www.bestpetfoods.nl/product/nd-pumpkin-natvoeding-voor-de-hond-hert-285-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Hertenschouder (30%), kipfilet, kippenbout, haring, pompoen (5%), bataten, gekookte kippeneieren, visolie, dierlijk vet, fructo-oligosachariden, chondroïtinesulfaat, glucosamine, vitamines, mineralen.', true, now(), 'sha256:45a00efbb1e27aa1674fe7bc1a3c3845056703e18b4ef0ecdb079cf05cca7e6c', null from p;

-- N&D — Pumpkin natvoeding Kip (6 x 285 g)
-- bron: https://www.bestpetfoods.nl/product/nd-pumpkin-natvoeding-voor-de-hond-kip-285-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Pumpkin natvoeding Kip', 'wet', '6 x 285 g', '8606014105551', 'https://www.bestpetfoods.nl/product/nd-pumpkin-natvoeding-voor-de-hond-kip-285-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kipfilet (40%), kippenbout, haring, pompoen (5%), bataten, gekookte kippeneieren, granaatappel (4%), visolie, dierlijk vet, fructo-oligosachariden, chondroïtinesulfaat, glucosamine, vitamines, mineralen.', true, now(), 'sha256:dfa3a64ce6fe1d11b0b6c01cc4d3a6fa57a5aa696befc271ea21f3928cf48900', null from p;

-- N&D — Quinoa natvoeding Skin & Coat Eend (6 x 285 g)
-- bron: https://www.bestpetfoods.nl/product/nd-quinoa-natvoeding-voor-de-hond-skin-coat-eend-285-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Quinoa natvoeding Skin & Coat Eend', 'wet', '6 x 285 g', '8606014105612', 'https://www.bestpetfoods.nl/product/nd-quinoa-natvoeding-voor-de-hond-skin-coat-eend-285-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eendenfilet (55%), quinoazaadschroot (5%), visolie, kokosnoot (4%), fructo-oligosachariden, chondroïtinesulfaat, glucosamine, vitamines, mineralen. Eiwitbronnen: eendenfilet. Koolhydraatbronnen: quinoazaadschroot.', true, now(), 'sha256:33b6d3fa21f7e1f0789cfc921a9f12398f873f0180da1b60a8294d30eab70b21', null from p;

-- N&D — Prime natvoeding voor pups Kip (6 x 285 g)
-- bron: https://www.bestpetfoods.nl/product/nd-prime-natvoeding-voor-pups-kip-285-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Prime natvoeding voor pups Kip', 'wet', '6 x 285 g', '8606014105506', 'https://www.bestpetfoods.nl/product/nd-prime-natvoeding-voor-pups-kip-285-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kipfilet (55%), kippenbout, haring, bataten, gekookte kippeneieren, granaatappel (4%), visolie, dierlijk vet, fructo-oligosachariden, chondroïtinesulfaat, glucosamine, vitamines, mineralen.', true, now(), 'sha256:a979418acb8da7c0721c166d39196f11c3b12032394b1ee222d1610c3050affc', null from p;

-- N&D — Pumpkin natvoeding voor pups Kip (6 x 285 g)
-- bron: https://www.bestpetfoods.nl/product/nd-pumpkin-natvoeding-voor-pups-kip-285-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Pumpkin natvoeding voor pups Kip', 'wet', '6 x 285 g', '8606014105780', 'https://www.bestpetfoods.nl/product/nd-pumpkin-natvoeding-voor-pups-kip-285-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kipfilet (45%), kippenbout, haring, pompoen (5%), bataten, gekookte kippeneieren, granaatappel (4%), visolie, dierlijk vet, fructo-oligosachariden, chondroïtinesulfaat, glucosamine, vitamines, mineralen.', true, now(), 'sha256:1cc134a3a7dcee17e654fdf26e39d52454a2b43e7ec46b6de3bf09a21e4d6c85', null from p;

-- N&D — Pumpkin puppyvoeding Lam medium/maxi (2,5 / 12 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-pumpkin-puppyvoeding-lam-mediummaxi-12-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Pumpkin puppyvoeding Lam medium/maxi', 'kibble', '2,5 / 12 kg', null, 'https://www.bestpetfoods.nl/product/nd-pumpkin-puppyvoeding-lam-mediummaxi-12-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lamsvlees (24%), gedehydrateerde lamproteïne (24%), erwtenzetmeel, kippenvet, gedehydrateerde haringproteïne, gedroogd pompoen (5%), haring, gedroogde eieren, visolie (van haring), erwtenvezel, gedroogde wortelen, luzernemeel, kippenkraakbeen (bron van glucosamine en chondroïtinesulfaat), inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde bosbessen (0.5%), gedroogde spinazie, psylliumschillen en zaden (0.3%), gedroogde appel, gedroogde zoete sinaasappel, gedroogde granaatappel, natriumchloride, gedroogde biergist, kurkuma (0.2%), aloë vera-extract.', true, now(), 'sha256:282d0c81ebf1b13603561317c341d4c503669759728b81f9bd053f3700f05eca', null from p;

-- N&D — Tropical puppyvoeding Lam medium/maxi (2 / 10 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-tropical-puppyvoeding-lam-mediummaxi-10-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Tropical puppyvoeding Lam medium/maxi', 'kibble', '2 / 10 kg', null, 'https://www.bestpetfoods.nl/product/nd-tropical-puppyvoeding-lam-mediummaxi-10-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lamsvlees (20%), gedehydrateerd lamseiwit (20%), spelt (10%), haver (10%), kippenvet, gedehydrateerd haringeiwit, gedroogde bietenpulp, visolie (van haring), gedroogde wortel, luzernemeel, kippenkraakbeen (bron van glucosamine en chondroïtinesulfaat), inuline, fructo-oligosacchariden, gistextract (bron van manno-oligosacchariden), gedroogde banaan (0,5%), gedroogde kiwi (0,5%), gedroogde mango (0,5%), gedroogde papaya (0,5%), gedroogde ananas (0,5%), gedroogde spinazie, psylliumschillen en -zaden, natriumchloride, gedroogde biergist, kurkuma, aloë vera-extract.', true, now(), 'sha256:4fca65e3e9bc9addf78ca8d4a503654150d55df4acc2bd235d9acccc3c6757f7', null from p;

-- N&D — Pumpkin natvoeding Kwartel (6 x 285 g)
-- bron: https://www.bestpetfoods.nl/product/nd-pumpkin-natvoeding-voor-de-hond-kwartel-285-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Pumpkin natvoeding Kwartel', 'wet', '6 x 285 g', '8606014105582', 'https://www.bestpetfoods.nl/product/nd-pumpkin-natvoeding-voor-de-hond-kwartel-285-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kwartelfilet (30%), kipfilet, kippenbout, haring, pompoen (5%), bataten, gekookte kippeneieren, visolie, dierlijk vet, fructo-oligosachariden, chondroïtinesulfaat, glucosamine, vitamines, mineralen.', true, now(), 'sha256:16aabf3d9bff9ac82e4e1953288cb17b69b29df0fcf75ec001be9a53b744769d', null from p;

-- N&D — Ocean Kabeljauw met Spelt medium/maxi (12 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-ocean-hondenvoeding-kabeljauw-met-spelt-mediummaxi-12-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Ocean Kabeljauw met Spelt medium/maxi', 'kibble', '12 kg', '8010276036636', 'https://www.bestpetfoods.nl/product/nd-ocean-hondenvoeding-kabeljauw-met-spelt-mediummaxi-12-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kabeljauw (24%), gedehydrateerde kabeljauw proteïne (24%), visolie (van haring), spelt (10%), haver (10%), gedroogde bietenpulp, gedroogde wortelen, luzernemeel, inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde zoete sinaasappel (0.5%), gedroogde appel, gedroogde granaatappel, gedroogde spinazie, psylliumschillen en zaden (0.3%), gedroogde bosbessen, natriumchloride, gedroogde biergist, kurkuma (0.2%), aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:7696596c0acccf090e965679150d8bab005836c2e890f46524fa5dafa885f419', null from p;

-- N&D — Quinoa natvoeding Digestion Lam (6 x 285 g)
-- bron: https://www.bestpetfoods.nl/product/nd-quinoa-natvoeding-voor-de-hond-digestion-lam-285-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Quinoa natvoeding Digestion Lam', 'wet', '6 x 285 g', '8606014105605', 'https://www.bestpetfoods.nl/product/nd-quinoa-natvoeding-voor-de-hond-digestion-lam-285-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lamsrack en schouder (35%), gehydrolyseerd viseiwit, quinoazaadschroot (5%), visolie, artisjok, venkel, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde biergist, chondroïtinesulfaat, glucosamine, vitamines, mineralen.', true, now(), 'sha256:20769a1c62acdc7269c8dd38ab4b28d8f36c026dcfc6b0a816a91c30e0cb8323', null from p;

-- N&D — Ancestral Grain Puppyvoeding Kip medium/maxi (12 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-ancestral-grain-puppyvoeding-kip-mediummaxi-12-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Ancestral Grain Puppyvoeding Kip medium/maxi', 'kibble', '12 kg', '8010276036186', 'https://www.bestpetfoods.nl/product/nd-ancestral-grain-puppyvoeding-kip-mediummaxi-12-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip zonder bot (20%), gedehydrateerde kippeneiwit (20%), spelt (10%), haver (10%), kippenvet, gedroogde eieren, haring, gedehydrateerde haringproteïne, gedroogde bietenpulp, visolie (van haring), gedroogde wortelen, luzernemeel, kippenkraakbeen (bron van glucosamine en chondroïtinesulfaat), inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde granaatappel (0.5%), gedroogde appel, gedroogde spinazie, psylliumschillen en zaden (0.3%), gedroogde zoete sinaasappel, gedroogde bosbessen, natriumchloride, gedroogde biergist, kurkuma (0.2%), aloë vera-extract.', true, now(), 'sha256:ad636f5cbd6df1ce6cf48ceaf01f07cb685acd9afd61616e2c14c96f591aee9d', null from p;

-- N&D — Pumpkin Starter natvoeding voor pups Lam (6 x 285 g)
-- bron: https://www.bestpetfoods.nl/product/nd-pumpkin-starter-natvoeding-voor-pups-lam-285-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Pumpkin Starter natvoeding voor pups Lam', 'wet', '6 x 285 g', '8606014105865', 'https://www.bestpetfoods.nl/product/nd-pumpkin-starter-natvoeding-voor-pups-lam-285-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lamsrack en schouder (45%), pompoen (5%), gekookte kippeneieren, bataten, gehydrolyseerd viseiwit, visolie, bosbessen (4%), fructo-oligosachariden, chondroïtinesulfaat, glucosamine, vitamines, mineralen.', true, now(), 'sha256:0fef73f6b96a5bcf9ff9527367eef5c25aa71dbe489e2f7385596c60a54ed692', null from p;

-- Pawfect — Freeze Dried Vis (250 / 500 g)
-- bron: https://www.bestpetfoods.nl/product/pawfect-freeze-dried-hondenvoeding-vis-250-gr
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pawfect', 'Freeze Dried Vis', 'raw', '250 / 500 g', null, 'https://www.bestpetfoods.nl/product/pawfect-freeze-dried-hondenvoeding-vis-250-gr', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Sardines, meerval, groenlipmossel, kip, kippenlever, broccoli, wortel, appel, mango, papaja, pompoen, biologische kokosolie, tomaten, gemalen lijnzaad, zonnebloempitten, gemengd tocoferol.', true, now(), 'sha256:9a8e5420cf2211a573514fe3cde5ba018ca323c5909dfdb1b0ea5f3861d2fa3c', null from p;

-- Pawfect — Freeze Dried Geit (250 / 500 g)
-- bron: https://www.bestpetfoods.nl/product/pawfect-freeze-dried-hondenvoeding-geit-250-gr
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pawfect', 'Freeze Dried Geit', 'raw', '250 / 500 g', null, 'https://www.bestpetfoods.nl/product/pawfect-freeze-dried-hondenvoeding-geit-250-gr', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Geitenvlees, geitenlever, pompoen, broccoli, zoete aardappel, wortel, appel, spinazie, pap, okra, mango, biologische kokosolie, tomaten, gemalen lijnzaad, zonnebloempitten, eierschalenpoeder, tocopherolmengsel.', true, now(), 'sha256:0d7abe3558fdf943b3eada781b8d58874d06923dd7cb66ee8e197ac998534a29', null from p;

-- Pawfect — Freeze Dried Kip (250 / 500 g)
-- bron: https://www.bestpetfoods.nl/product/pawfect-freeze-dried-hondenvoeding-kip-250-gr
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pawfect', 'Freeze Dried Kip', 'raw', '250 / 500 g', null, 'https://www.bestpetfoods.nl/product/pawfect-freeze-dried-hondenvoeding-kip-250-gr', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip, kippenlever, gevederde boon, broccoli, pompoen, wortelen, appel, guave, aardbei, biologische kokosolie, gemalen lijnzaad, sesamzaad, kurkuma', true, now(), 'sha256:c1d64d2b7d62ba9518c48397e0e8105965adfb39501c12470ea39611d6617709', null from p;

-- Vet Life — Hypoallergenic Vis met Aardappel (2 / 12 kg)
-- bron: https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-hypoallergenic-vis-met-aardappel-12-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Vet Life', 'Hypoallergenic Vis met Aardappel', 'kibble', '2 / 12 kg', null, 'https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-hypoallergenic-vis-met-aardappel-12-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Zoete aardappel (69%), gedehydrateerde viseiwit (14%), visolie, calciumcarbonaat, monodicalciumfosfaat, natriumchloride. Eiwitbron: gedehydrateerde viseiwit. Koolhydraatbron: bataten.', true, now(), 'sha256:affbd1976e4b0dd1f6d195d09c1561fdb61f2ddf03d6f93874e18413cacf521a', null from p;

-- Vet Life — Struvite Management (2 / 12 kg)
-- bron: https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-struvite-management-2-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Vet Life', 'Struvite Management', 'kibble', '2 / 12 kg', null, 'https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-struvite-management-2-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, gedehydrateerde kippeneiwit, kippenvet, bataten, haver, gedroogde eieren, lijnzaad, gehydrolyseerd viseiwit, visolie, kaliumchloride, calciumsulfaatdihydraat, calciumcarbonaat, natriumchloride, glucosamine (0.06%).', true, now(), 'sha256:ca5ec2dc516e8820231a2aa95edb538b69785a1d58124c3eba43a40bb3e90852', null from p;

-- Vet Life — Struvite (2 kg)
-- bron: https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-struvite-2-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Vet Life', 'Struvite', 'kibble', '2 kg', '8010276025227', 'https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-struvite-2-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, gedehydrateerde kippeneiwit, kippenvet, bataten, haver, gedroogde eieren, lijnzaad, gehydrolyseerd viseiwit, visolie, kaliumchloride, calciumsulfaatdihydraat, calciumcarbonaat, natriumchloride. Eiwitbronnen: gedehydrateerde kippeneiwit, gedroogde eieren, gehydrolyseerd viseiwit.', true, now(), 'sha256:624dee0f3163da850a5df311f3533d9db90fe2fbedd4b47c7e5013414deed37a', null from p;

-- Vet Life — Oxalate (2 kg)
-- bron: https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-oxalate-2-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Vet Life', 'Oxalate', 'kibble', '2 kg', '8010276025234', 'https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-oxalate-2-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, haver, kippenvet, gedroogde eieren, lijnzaad, gehydrolyseerd viseiwit, gedroogde bietenpulp, visolie, calciumcarbonaat, natriumchloride. Eiwitbronnen: gedroogde eieren, gehydrolyseerd viseiwit.', true, now(), 'sha256:012fbeb30c5e15d2f26ec1bcd2f8cb97cc8e19019a38419b87525fbe29d959bf', null from p;

-- Vet Life — Cardiac (2 kg)
-- bron: https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-cardiac-2-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Vet Life', 'Cardiac', 'kibble', '2 kg', '8010276030344', 'https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-cardiac-2-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Spelt, haver, gedehydrateerde kippeneiwit, kippenvet, visolie, lijnzaad, maïsgluten, gehydrolyseerd viseiwit, gedroogde eieren, gedehydrateerde viseiwit, erwtenvezel, gedroogde bietenpulp, kaliumchloride, calciumcarbonaat, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), monodicalciumfosfaat, gedroogde biergist.', true, now(), 'sha256:18e5b0877998c7879c70bc6925ac18c23e302b39bf2b206e26ad2dc1251301b9', null from p;

-- Vet Life — Gastrointestinal (2 / 12 kg)
-- bron: https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-gastrointestinal-2-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Vet Life', 'Gastrointestinal', 'kibble', '2 / 12 kg', null, 'https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-gastrointestinal-2-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, bataten, gedehydrateerde kippeneiwit, haver, kippenvet, gedroogde eieren, gedehydrateerde viseiwit, gedroogde bietenpulp, visolie, gehydrolyseerd viseiwit, kaliumchloride, inuline (0.6%), fructo-oligosachariden (0.4%), gistextract (bron van manno-oligo-sacchariden) (0.4%), calciumcarbonaat, natriumchloride.', true, now(), 'sha256:a64849c255140be03afefa5067afec58ed89f85805b7b7e3e9d4126cc4b68e95', null from p;

-- Vet Life — Obesity (2 kg)
-- bron: https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-obesity-2-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Vet Life', 'Obesity', 'kibble', '2 kg', '8010276025258', 'https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-obesity-2-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Spelt, gedroogde bietenpulp, gedehydrateerde kippeneiwit, haver, kippenvet, gedehydrateerde viseiwit, lijnzaad, gehydrolyseerd viseiwit, visolie, kaliumchloride, natriumchloride, calciumcarbonaat, monodicalciumfosfaat. Koolhydraatbronnen: spelt, haver.', true, now(), 'sha256:83170834a1bab7c905d1aa3fffe139ec7417c5f016ca8e0a03217202d98f2e15', null from p;

-- Vet Life — Renal (2 kg)
-- bron: https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-renal-2-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Vet Life', 'Renal', 'kibble', '2 kg', '8010276025241', 'https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-renal-2-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Zoete aardappel, rijst, kippenvet, gedroogde eieren, calciumcarbonaat, lijnzaad, visolie, gehydrolyseerd viseiwit, natriumchloride, kaliumchloride. Eiwitbronnen: gedroogde eieren, gehydrolyseerd viseiwit.', true, now(), 'sha256:8dc27c23d39a18ba34d17e899fd7fb18fdbc9aac313e338166f854d1417e71d8', null from p;

-- Vet Life — Natvoeding Renal (6 x 300 g)
-- bron: https://www.bestpetfoods.nl/product/vet-life-natvoeding-voor-de-hond-renal-300-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Vet Life', 'Natvoeding Renal', 'wet', '6 x 300 g', '8606014103960', 'https://www.bestpetfoods.nl/product/vet-life-natvoeding-voor-de-hond-renal-300-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kipfilet, bataten, gehydrolyseerd viseiwit, visolie, kippenlever, vis (sardine), kippenvet, quinoazaadschroot, eieren vloeibare dooier, calciumcarbonaat, erwtenvezel, fructo-oligosachariden, kaliumchloride, natriumchloride, psylliumschillen en zaden, Yucca schidigera, gedroogde biergist, glucosamine. Eiwitbronnen: kipfilet, gehydrolyseerd viseiwit, kippenlever, fish, eieren vloeibare dooier.', true, now(), 'sha256:4ad2c9f36f15eb5d35d4d9aad73e5ac0680dc22c72a7d98b614a77a9f667f12b', null from p;

-- Vet Life — Joint (2 kg)
-- bron: https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-joint-2-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Vet Life', 'Joint', 'kibble', '2 kg', '8010276022486', 'https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-joint-2-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Spelt, haver, gedehydrateerde kippeneiwit, lijnzaad, kippenvet, gedroogde eieren, gedroogde bietenpulp, gehydrolyseerd viseiwit, visolie, erwtenvezel, kaliumchloride, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde biergist, natriumchloride, aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:404ec920a45b3a1aaf163050a4dc3b7bc7a67e9f7a27aec02ffd38959b0393d4', null from p;

-- Vet Life — UltraHypo (2 / 12 kg)
-- bron: https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-ultrahypo-12-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Vet Life', 'UltraHypo', 'kibble', '2 / 12 kg', null, 'https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-ultrahypo-12-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst zetmeel, gehydrolyseerd viseiwit, visolie, kaliumchloride, calciumcarbonaat, monodicalciumfosfaat, natriumchloride. Eiwitbron: gehydrolyseerd viseiwit. Koolhydraatbron: rijst zetmeel.', true, now(), 'sha256:1b679199eff2d769d6c7ae2c8189382a5f0872529fe413ccc569a9ca9496b7d4', null from p;

-- Vet Life — Natvoeding Hypoallergenic Eend met Aardappel (6 x 300 g)
-- bron: https://www.bestpetfoods.nl/product/vet-life-natvoeding-voor-de-hond-hypoallergenic-eend-met-aardappel-300-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Vet Life', 'Natvoeding Hypoallergenic Eend met Aardappel', 'wet', '6 x 300 g', '8606014103946', 'https://www.bestpetfoods.nl/product/vet-life-natvoeding-voor-de-hond-hypoallergenic-eend-met-aardappel-300-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eendfilet (40%), bataten (12%), gehydrolyseerd viseiwit, quinoazaadschroot, visolie, poedercellulose, calciumcarbonaat, diCalciumfosfaat, kaliumchloride. Eiwitbron: eendfilet, gehydrolyseerd viseiwit. Koolhydraatbronnen: bataten, quinoazaadschroot', true, now(), 'sha256:28fa2f8ce78eb33cbabc0e89b8787fb18ca002b012c42da79d9fc5f0cab6ae6e', null from p;

-- Vet Life — Natvoeding Gastrointestinal (6 x 300 g)
-- bron: https://www.bestpetfoods.nl/product/vet-life-natvoeding-voor-de-hond-gastrointestinal-300-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Vet Life', 'Natvoeding Gastrointestinal', 'wet', '6 x 300 g', '8606014103939', 'https://www.bestpetfoods.nl/product/vet-life-natvoeding-voor-de-hond-gastrointestinal-300-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kipfilet, gehydrolyseerd viseiwit, bataten, kippenlever, visolie, vis (sardine, tonijn), eieren vloeibare dooier, quinoazaadschroot, kippenvet, dicalciumfosfaat, calciumcarbonaat, lijnzaad, kaliumchloride, fructo-oligosachariden (0.25%), gistextract (bron van manno-oligo-sacchariden) (0.15%), natriumchloride, erwtenvezel, gedroogde biergist.', true, now(), 'sha256:f04460d16618c7114996fe7f812dde0b2538f36ef278a841c27c9cbe2b654879', null from p;

-- Vet Life — Hepatic (2 kg)
-- bron: https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-hepatic-2-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Vet Life', 'Hepatic', 'kibble', '2 kg', '8010276030368', 'https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-hepatic-2-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Spelt, kippenvet, maïsgluten, gehydrolyseerd viseiwit, visolie, calciumcarbonaat, lijnzaad, haver, gedroogde bietenpulp, kaliumchloride, rijst zetmeel, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), monodicalciumfosfaat, gedroogde biergist, natriumchloride. Eiwitbronnen: maïsgluten, gehydrolyseerd viseiwit. Bron van goed verteerbare koolhydraten: rijst zetmeel.', true, now(), 'sha256:43baa9d0999c3a5cb32319cc3e8780d3ceed4c77e69be626c1a54c4eec2c2248', null from p;

-- Vet Life — Diabetic (2 kg)
-- bron: https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-diabetic-2-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Vet Life', 'Diabetic', 'kibble', '2 kg', '8010276031297', 'https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-diabetic-2-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedehydrateerde kippeneiwit, spelt, gehydrolyseerd viseiwit, gedroogde eieren, haver, erwtenvezel, gedehydrateerde viseiwit, kippenvet, lijnzaad, visolie, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), kaliumchloride, natriumchloride, calciumcarbonaat, monodicalciumfosfaat, psylliumschillen en zaden, glucosamine, chondroïtinesulfaat. Koolhydraatbronnen: spelt, haver.', true, now(), 'sha256:dfbf45e2c962da19c9c44307170e6f3a9e549aab52ca808c34d9cebfd152e524', null from p;

-- Vet Life — Hypoallergenic Ei met Rijst (2 / 12 kg)
-- bron: https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-hypoallergenic-ei-met-rijst-12-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Vet Life', 'Hypoallergenic Ei met Rijst', 'kibble', '2 / 12 kg', null, 'https://www.bestpetfoods.nl/product/vet-life-hondenvoeding-hypoallergenic-ei-met-rijst-12-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst (67%), gedroogde eieren (22%), visolie, kaliumchloride, calciumcarbonaat, monodicalciumfosfaat, natriumchloride. Eiwitbron: gedroogde eieren. Koolhydraatbron: rijst.', true, now(), 'sha256:6c0825af1aab1179128e581efb4c0d3b0d8b8f0739be42db527b0f7c2ecf1884', null from p;

-- Vet Life — Puppyvoeding Gastrointestinal (2 kg)
-- bron: https://www.bestpetfoods.nl/product/vet-life-puppyvoeding-gastrointestinal-2-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Vet Life', 'Puppyvoeding Gastrointestinal', 'kibble', '2 kg', '8010276036940', 'https://www.bestpetfoods.nl/product/vet-life-puppyvoeding-gastrointestinal-2-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedehydrateerde kippeneiwit, rijst, kippenvet, gedroogde eieren, haver, gedroogde bietenpulp, lijnzaad, gehydrolyseerd viseiwit, visolie (van haring), erwtenvezel, inuline (0.6%), kaliumchloride, calciumcarbonaat, gedroogde biergist, monodicalciumfosfaat, natriumchloride, glucosamine (0.025%), chondroïtinesulfaat (0.025%).', true, now(), 'sha256:84b7e509f6f948bfcadde0d945064ecc9f2464273d48bc8be6b1fff732016987', null from p;

-- Ziwi Peak — Air-Dried Hert (1 / 2,5 kg)
-- bron: https://www.bestpetfoods.nl/product/ziwi-peak-air-dried-hondenvoeding-hert-25-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ziwi Peak', 'Air-Dried Hert', 'raw', '1 / 2,5 kg', null, 'https://www.bestpetfoods.nl/product/ziwi-peak-air-dried-hondenvoeding-hert-25-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '93% hertenvlees en hertenorganen (o.a. hertenvlees, maag, hart, long, lever, nier, bot, kraakbeen), 3% Nieuw-Zeelandse groene mossel, lecithine, peterselie, gedroogde appelpulp, inuline uit cichorei, mineralen, gedroogde organische kelp.', true, now(), 'sha256:1e30f912a1789262059e3147e44b06260d2db2a17021d667cac95800f60007b6', null from p;

-- Ziwi Peak — Air-Dried Makreel & Lam (1 / 2,5 kg)
-- bron: https://www.bestpetfoods.nl/product/ziwi-peak-air-dried-hondenvoeding-makreel-lam-25-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ziwi Peak', 'Air-Dried Makreel & Lam', 'raw', '1 / 2,5 kg', null, 'https://www.bestpetfoods.nl/product/ziwi-peak-air-dried-hondenvoeding-makreel-lam-25-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '58% lamsvlees en -organen (o.a. lamsvlees, maag, long, hart, lever, nier, milt, bot, kraakbeen) 35% volledige makreel, 3% Nieuw-Zeelandse groene mossel, lecithine, peterselie, gedroogde appelpulp, inuline uit cichorei, mineralen, gedroogde organische kelp.', true, now(), 'sha256:44fb7dc5f7f1506ae22471697b13c9b38a6fc7d9e8aa7bfb1e14a793c60e8c0e', null from p;

-- Ziwi Peak — Steam & Dried Rund (800 g / 1,5 kg / 3,2 kg)
-- bron: https://www.bestpetfoods.nl/product/ziwi-peak-steam-dried-hondenvoeding-rund-15-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ziwi Peak', 'Steam & Dried Rund', 'kibble', '800 g / 1,5 kg / 3,2 kg', null, 'https://www.bestpetfoods.nl/product/ziwi-peak-steam-dried-hondenvoeding-rund-15-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '83% rundvlees en rundvleesorganen (inclusief rundvlees, long, pens, lever, hart, plasma, milt, bot, kraakbeen), pompoen (1,7% verse pompoen, 1,3% gedroogde pompoen (equivalent aan 13,2% verse pompoen)), lecithine, 2% rundvleesvet, gedroogde groene erwten, gedroogde groene linzen, gedroogde appelpulp, gedroogde quinoa, visolie, rutabaga, wortel, bieten, mineralen, gedroogde cichoreiwortel, gedroogde kelp.', true, now(), 'sha256:245e16c79dcc8c4cfaf6e3d7bc0b806eb8ca77932aef8649c688d4244febe8bb', null from p;

-- Ziwi Peak — Natvoeding Kip (170 / 390 g)
-- bron: https://www.bestpetfoods.nl/product/ziwi-peak-natvoeding-voor-de-hond-kip-390-gr
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ziwi Peak', 'Natvoeding Kip', 'wet', '170 / 390 g', null, 'https://www.bestpetfoods.nl/product/ziwi-peak-natvoeding-voor-de-hond-kip-390-gr', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip, voldoende water voor bereiding, kippenlever, kippenhart, kikkererwten, Nieuw-Zeelandse groenlipmossel, kippenbot, mineralen (dikaliumfosfaat, magnesiumsulfaat, zinkaminozuurcomplex, koperaminozuurcomplex, seleniumgist, mangaanaminozuurcomplex), gedroogde kelp, zout, vitamines (vitamine E-supplement, thiamine-mononitraat, vitamine B5-supplement, vitamine D3-supplement, foliumzuur).', true, now(), 'sha256:681bc113b3cda746781bf5d7f5cef2eaa626f6603895924ec94d838ebd8498f6', null from p;

-- Ziwi Peak — Steam & Dried Lam (800 g / 1,5 kg / 3,2 kg)
-- bron: https://www.bestpetfoods.nl/product/ziwi-peak-steam-dried-hondenvoeding-lam-32-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ziwi Peak', 'Steam & Dried Lam', 'kibble', '800 g / 1,5 kg / 3,2 kg', null, 'https://www.bestpetfoods.nl/product/ziwi-peak-steam-dried-hondenvoeding-lam-32-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '83% lamsvlees en organen (inclusief lamsvlees, long, pens, lever, hart, plasma, botten, milt, kraakbeen), 4,3% groenten (gedroogde groene erwten, spinazie, boerenkool, sperziebonen, bietblad), gedroogde groene linzen, 2% lamsvet, lecithine, gedroogde quinoa, gedroogde appelpulp, visolie, mineralen, gedroogde chicoreiwortel, gedroogde kelp.', true, now(), 'sha256:7d7c7fe9800afc6f93179338a1a99c3c6310c624c61b2efc780ac0ea800ac566', null from p;

-- Ziwi Peak — Natvoeding Rund (170 / 390 g)
-- bron: https://www.bestpetfoods.nl/product/ziwi-peak-natvoeding-voor-de-hond-rund-170-gr
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ziwi Peak', 'Natvoeding Rund', 'wet', '170 / 390 g', null, 'https://www.bestpetfoods.nl/product/ziwi-peak-natvoeding-voor-de-hond-rund-170-gr', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rundvlees, voldoende water voor bereiding, runderlong, rundernier, runderpens, kikkererwten, runderlever, Nieuw-Zeelandse groenlipmossel, runderbot, lecithine, mineralen (dikaliumfosfaat, magnesiumsulfaat, zinkaminozuurcomplex, koperaminozuurcomplex, seleniumgist, mangaanaminozuurcomplex), gedroogde kelp, zout, vitamines (vitamine E-supplement, thiamine-mononitraat, vitamine B5-supplement, vitamine D3-supplement, foliumzuur).', true, now(), 'sha256:928d9f8d6af0aec74f995578ffbe90a390b206572250478fc99d4bcf76b2e9c6', null from p;

-- Ziwi Peak — Natvoeding Makreel & Lam (170 / 390 g)
-- bron: https://www.bestpetfoods.nl/product/ziwi-peak-natvoeding-voor-de-hond-makreel-lam-170-gr
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ziwi Peak', 'Natvoeding Makreel & Lam', 'wet', '170 / 390 g', null, 'https://www.bestpetfoods.nl/product/ziwi-peak-natvoeding-voor-de-hond-makreel-lam-170-gr', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Makreel, voldoende water voor bereiding, lam, lamslong, kikkererwten, lamspens, lamshart, lamsnier, lamslever, Nieuw-Zeelandse groenlipmossel, lamsbot, lecithine, mineralen (dikaliumfosfaat, magnesiumsulfaat, zinkaminozuurcomplex, koperaminozuurcomplex, seleniumgist, mangaanaminozuurcomplex), gedroogde kelp, zout, vitamines (vitamine E-supplement, thiamine-mononitraat, vitamine B5-supplement, vitamine D3-supplement, foliumzuur).', true, now(), 'sha256:5dff91a32c100276770c3dd0db43a28b88dc51dc82f698fa57eb17e4dc242825', null from p;

-- Ziwi Peak — Natvoeding Hert (170 / 390 g)
-- bron: https://www.bestpetfoods.nl/product/ziwi-peak-natvoeding-voor-de-hond-hert-170-gr
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ziwi Peak', 'Natvoeding Hert', 'wet', '170 / 390 g', null, 'https://www.bestpetfoods.nl/product/ziwi-peak-natvoeding-voor-de-hond-hert-170-gr', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Hertenvlees, voldoende water voor bereiding, hertenpens, hertenlever, kikkererwten, hertenlong, hertenhart, hertennier, Nieuw-Zeelandse groenlipmossel, hertenbot, lecithine, mineralen (dikaliumfosfaat, magnesiumsulfaat, zinkaminozuurcomplex, koperaminozuurcomplex, seleniumgist, mangaanaminozuurcomplex), gedroogde kelp, zout, vitaminen (vitamine E-supplement, thiamine-mononitraat, vitamine B5-supplement, vitamine D3-supplement, foliumzuur).', true, now(), 'sha256:4e9692777115aad13232e5806787fbb8f6ac8147227eb898e65081a8a1f3abe4', null from p;

-- Ziwi Peak — Steam & Dried Kip (800 g / 1,5 kg / 3,2 kg)
-- bron: https://www.bestpetfoods.nl/product/ziwi-peak-steam-dried-hondenvoeding-kip-15-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Ziwi Peak', 'Steam & Dried Kip', 'kibble', '800 g / 1,5 kg / 3,2 kg', null, 'https://www.bestpetfoods.nl/product/ziwi-peak-steam-dried-hondenvoeding-kip-15-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '80% kip en kippenorganen (inclusief kip, lever, nek, bot, kraakbeen, hart), 4% fruit (appel, peer, kiwi, bosbessen, kaki), 3% gedroogd eiwit, gedroogde groene erwten, gedroogde groene linzen, gedroogde quinoa, 2% kippenvet, visolie, mineralen, gedroogde cichoreiwortel, gedroogde kelp.', true, now(), 'sha256:d3d76b2e9b2e72d20b3ae5f5a7c6cfe9b72aa0c48ab87111a849c0732135cf1f', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
