-- Automatisch overgenomen etiketten, batch 5 van 2026-11-23 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- N&D — Ancestral Grain Kip medium/maxi (2,5 / 12 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-ancestral-grain-hondenvoeding-kip-mediummaxi-25-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Ancestral Grain Kip medium/maxi', 'kibble', '2,5 / 12 kg', null, 'https://www.bestpetfoods.nl/product/nd-ancestral-grain-hondenvoeding-kip-mediummaxi-25-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip zonder botten (20%), gedehydrateerde kippeneiwit (18%), spelt (10%), haver (10%), kippenvet, gedroogde eieren, haring, gedehydrateerde haringproteïne, gedroogde bietenpulp, visolie (van haring), gedroogde wortelen, luzernemeel, inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde granaatappel (0,5%), gedroogde appel, gedroogde spinazie, psylliumschillen en zaden (0,3%), gedroogde zoete sinaasappel, gedroogde bosbessen, natriumchloride, gedroogde biergist, kurkuma (0,2%), aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:4954782e0d81d42d874ac645ae07129ca6350c8b8053f0acbe0f937b0ff64382', null from p;

-- N&D — White voor de witte hond small breed (2 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-white-hondenvoeding-voor-de-witte-hond-small-breed-2-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'White voor de witte hond small breed', 'kibble', '2 kg', '8010276041012', 'https://www.bestpetfoods.nl/product/nd-white-hondenvoeding-voor-de-witte-hond-small-breed-2-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Zeebaars (20%), gedehydrateerde zeebaarsproteïne (20%), zoete aardappel, visolie (van haring), gehydrolyseerd viseiwit, gedroogde spirulina (5%), lijnzaad, gedroogde venkel (2.5%), erwtenvezel, luzernemeel, inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde spinazie, psylliumschillen en zaden, gedroogde biergist, dicalciumfosfaat, kaliumchloride, natriumchloride, aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:3413ae9b3ace9b72a9028adeb24f7d257da80c9fe6d6f06dcadb4da7857e651f', null from p;

-- N&D — Ocean Haring small breed (800 g / 2,5 kg / 7 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-ocean-hondenvoeding-haring-small-breed-25-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Ocean Haring small breed', 'kibble', '800 g / 2,5 kg / 7 kg', null, 'https://www.bestpetfoods.nl/product/nd-ocean-hondenvoeding-haring-small-breed-25-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Haring (26%), gedehydrateerde haringproteïne (25%), bataten, visolie (van haring), gedroogde eieren, erwtenvezel, gedroogde wortelen, luzernemeel, inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde zoete sinaasappel (0.5%), gedroogde appel, gedroogde granaatappel, gedroogde spinazie, psylliumschillen en zaden (0.3%), gedroogde bosbessen, natriumchloride, gedroogde biergist, kurkuma (0.2%), aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:4ef38901cbbcd7ec8890e5dcce10fea02589054c49cc47d1c5de8b6bb236c9e4', null from p;

-- N&D — Prime Kip medium/maxi (2,5 / 12 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-prime-hondenvoeding-kip-mediummaxi-25-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Prime Kip medium/maxi', 'kibble', '2,5 / 12 kg', null, 'https://www.bestpetfoods.nl/product/nd-prime-hondenvoeding-kip-mediummaxi-25-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip zonder bot (26%), gedehydrateerde kippeneiwit (25%), bataten, kippenvet, gedroogde eieren, haring, gedehydrateerde haringproteïne, visolie (van haring), erwtenvezel, gedroogde wortelen, luzernemeel, inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde granaatappel (0.5%), gedroogde appel, gedroogde spinazie, psylliumschillen en zaden (0.3%), gedroogde zoete sinaasappel, gedroogde bosbessen, natriumchloride, gedroogde biergist, kurkuma (0.2%), aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:2832b0460ca45b0ddeeada51a64c57a57a434ef747fc5f6a92172229452b0ac4', null from p;

-- N&D — Tropical puppyvoeding Lam small breed (1,5 / 5 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-tropical-puppyvoeding-lam-small-breed-5-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Tropical puppyvoeding Lam small breed', 'kibble', '1,5 / 5 kg', null, 'https://www.bestpetfoods.nl/product/nd-tropical-puppyvoeding-lam-small-breed-5-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lamsvlees (20%), gedehydrateerd lamseiwit (20%), spelt (10%), haver (10%), kippenvet, gedehydrateerd haringeiwit, gedroogde bietenpulp, visolie (van haring), gedroogde wortel, luzernemeel, kippenkraakbeen (bron van glucosamine en chondroïtinesulfaat), inuline, fructo-oligosacchariden, gistextract (bron van manno-oligosacchariden), gedroogde banaan (0,5%), gedroogde kiwi (0,5%), gedroogde mango (0,5%), gedroogde papaya (0,5%), gedroogde ananas (0,5%), gedroogde spinazie, psylliumschillen en -zaden, natriumchloride, gedroogde biergist, kurkuma, aloë vera-extract..', true, now(), 'sha256:72f0187b0d46fedece3b5aed3b8ffeadacb79810dee49df659a9d73fe2530a18', null from p;

-- N&D — Prime natvoeding Lam (6 x 140 g / 6 x 285 g)
-- bron: https://www.bestpetfoods.nl/product/nd-prime-natvoeding-voor-de-hond-lam-140-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Prime natvoeding Lam', 'wet', '6 x 140 g / 6 x 285 g', null, 'https://www.bestpetfoods.nl/product/nd-prime-natvoeding-voor-de-hond-lam-140-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lamsbeen (50%), haring, bataten, gekookte kippeneieren, bosbessen (4%), visolie, dierlijk vet, fructo-oligosachariden, chondroïtinesulfaat, glucosamine, vitamines, mineralen.', true, now(), 'sha256:df55192feaf03b990794b6347238822136cec4017d5e475a4e505bf9619aebef', null from p;

-- N&D — Prime puppyvoeding Kip medium/maxi (2,5 / 12 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-prime-puppyvoeding-kip-mediummaxi-12-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Prime puppyvoeding Kip medium/maxi', 'kibble', '2,5 / 12 kg', null, 'https://www.bestpetfoods.nl/product/nd-prime-puppyvoeding-kip-mediummaxi-12-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip zonder bot (28%), gedehydrateerde kippeneiwit (27%), bataten, kippenvet, gedroogde eieren, haring, gedehydrateerde haringproteïne, visolie (van haring), erwtenvezel, gedroogde wortelen, luzernemeel, kippenkraakbeen (bron van glucosamine en chondroïtinesulfaat), inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde granaatappel (0.5%), gedroogde appel, gedroogde spinazie, psylliumschillen en zaden (0.3%), gedroogde zoete sinaasappel, gedroogde bosbessen, natriumchloride, gedroogde biergist, kurkuma (0.2%), aloë vera-extract.', true, now(), 'sha256:d69e6f0c1cf184696a052415e88ffbeffac9e67b4d2cc38b0c61453cb59812ed', null from p;

-- N&D — Quinoa natvoeding Skin & Coat Haring (6 x 285 g)
-- bron: https://www.bestpetfoods.nl/product/nd-quinoa-natvoeding-voor-de-hond-skin-coat-haring-285-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Quinoa natvoeding Skin & Coat Haring', 'wet', '6 x 285 g', '8606014105629', 'https://www.bestpetfoods.nl/product/nd-quinoa-natvoeding-voor-de-hond-skin-coat-haring-285-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Haring (55%), gehydrolyseerd viseiwit, quinoazaadschroot (5%), visolie, kokosnoot (4%), fructo-oligosachariden, chondroïtinesulfaat, glucosamine, vitamines, mineralen. Eiwitbronnen: haring, gehydrolyseerd viseiwit. Koolhydraatbronnen: quinoazaadschroot', true, now(), 'sha256:145832d32eeb6d5a02885693cfa69b3b49f2a868f76f389d824b1ef8542a4311', null from p;

-- N&D — Pumpkin Eend medium/maxi (12 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-pumpkin-hondenvoeding-eend-mediummaxi-12-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Pumpkin Eend medium/maxi', 'kibble', '12 kg', '8010276038968', 'https://www.bestpetfoods.nl/product/nd-pumpkin-hondenvoeding-eend-mediummaxi-12-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eendenvlees zonder bot (24%), gedehydrateerd eendeneiwit (22%), zoete aardappel, kippenvet, gedroogde pompoen (5%), gedroogd ei, haring, gedehydrateerd haringeiwit, visolie (van haring), erwtenvezels, gedroogde wortel, luzernemeel, inuline, fructo-oligosacchariden, gistextract (bron van manno-oligo-sacchariden), gedroogde cantaloupe meloen (0,5%), gedroogde appel, gedroogde spinazie, psylliumschillen en -zaden, gedroogde zoete sinaasappel, gedroogde bosbes, natriumchloride, gedroogde biergist, kurkuma (0,2%), aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:8223b83d9453918943a76ce20de60cf4a6a70a5576be163d0ad3caae32b4a7c4', null from p;

-- N&D — Quinoa Skin & Coat small breed Eend (800 g / 2,5 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-skin-coat-small-breed-eend-25-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Quinoa Skin & Coat small breed Eend', 'kibble', '800 g / 2,5 kg', null, 'https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-skin-coat-small-breed-eend-25-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eend zonder botten (20%), gedehydrateerde eendenproteïne (20%), erwtenzetmeel, visolie (van haring), quinoazaadschroot (8%), lijnzaad, gedroogde kokosnoot (2.5%), kurkuma (2.5%), inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), calciumcarbonaat, diCalciumfosfaat, psylliumschillen en zaden, kaliumchloride, natriumchloride, gedroogde biergist, aloë vera-extract, glucosamine, chondroïtinesulfaat. Eiwitbronnen: eend zonder been, gedehydrateerde eendenproteïne. Koolhydraatbronnen: erwtenzetmeel, quinoazaadschroot.', true, now(), 'sha256:ff5783d7d3486f0b0190b93f93e6b5893105d47f1747f14011c8d110f20d075d', null from p;

-- N&D — Pumpkin Lam small breed (800 g / 2,5 kg / 7 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-pumpkin-hondenvoeding-lam-small-breed-800-gr
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Pumpkin Lam small breed', 'kibble', '800 g / 2,5 kg / 7 kg', null, 'https://www.bestpetfoods.nl/product/nd-pumpkin-hondenvoeding-lam-small-breed-800-gr', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lamsvlees (22%), gedehydrateerde lamproteïne (20%), erwtenzetmeel, kippenvet, gedroogd pompoen (5%), gedroogde eieren, haring, gedehydrateerde haringproteïne, visolie (van haring), erwtenvezel, gedroogde wortelen, luzernemeel, inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde bosbessen (0.5%), gedroogde appel, gedroogde granaatappel, gedroogde zoete sinaasappel, gedroogde spinazie, psylliumschillen en zaden (0.3%), natriumchloride, gedroogde biergist, kurkuma (0.2%), aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:87781539c2e431328ec1f776ef3046373302055313531f5d87306ab595c2ad05', null from p;

-- N&D — Prime natvoeding Wild Zwijn (6 x 140 g / 6 x 285 g)
-- bron: https://www.bestpetfoods.nl/product/nd-prime-natvoeding-voor-de-hond-wild-zwijn-140-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Prime natvoeding Wild Zwijn', 'wet', '6 x 140 g / 6 x 285 g', null, 'https://www.bestpetfoods.nl/product/nd-prime-natvoeding-voor-de-hond-wild-zwijn-140-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Wildzwijnschouder (45%), wildzwijnschenkel, haring, bataten, gekookte kippeneieren, appel (4%), visolie, dierlijk vet, fructo-oligosachariden, chondroïtinesulfaat, glucosamine, vitamines, mineralen.', true, now(), 'sha256:3d2e9fad9b58765cd368051be1d8f68c974d52759746f3a47e1656397ba19823', null from p;

-- N&D — Tropical Zalm medium/maxi (2 / 10 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-tropical-hondenvoeding-zalm-mediummaxi-10-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Tropical Zalm medium/maxi', 'kibble', '2 / 10 kg', null, 'https://www.bestpetfoods.nl/product/nd-tropical-hondenvoeding-zalm-mediummaxi-10-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Zalm (20%), gedehydrateerd zalmproteïne (20%), spelt (12%), haver (12%), visolie (uit haring), gedehydrateerd haringproteïne, gedroogde bietenpulp, gedroogde wortel, luzernemeel, inuline, fructo-oligosacchariden, gistextract (bron van manno-oligo-sacchariden), gedroogde banaan (0,5%), gedroogde kiwi (0,5%), gedroogde mango (0,5%), gedroogde papaya (0,5%), gedroogde ananas (0,5%), gedroogde spinazie, psylliumschillen en zaden, natriumchloride, gedroogde brouwersgist, kurkuma, aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:ef77d067ee027a9d3583ae651302dde8e946c4bfcc6fad303eeff1f8ba469e5b', null from p;

-- N&D — Tropical Kip small breed (1,5 / 5 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-tropical-hondenvoeding-kip-small-breed-15-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Tropical Kip small breed', 'kibble', '1,5 / 5 kg', null, 'https://www.bestpetfoods.nl/product/nd-tropical-hondenvoeding-kip-small-breed-15-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip zonder been (20%), gedehydrateerd kippeneiwit (20%), spelt (12%), haver (12%), kippenvet, gedehydrateerd haringeiwit, gedroogde bietenpulp, visolie (van haring), gedroogde wortel, luzernemeel , inuline, fructo-oligo-sacchariden, gistextract (bron van manno-oligo-sacchariden), gedroogde banaan (0,5%), gedroogde kiwi (0,5%), gedroogde mango (0,5%), gedroogde papaya (0,5%), gedroogde ananas ( 0,5%), gedroogde spinazie, psylliumschillen en -zaden, natriumchloride, gedroogde biergist, kurkuma, aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:1e25dfea8d1e357cd9d1116dd9f9b7976489b9dda8ee33ba54fe1c1739dc6edf', null from p;

-- N&D — Prime natvoeding Kip (6 x 140 g / 6 x 285 g)
-- bron: https://www.bestpetfoods.nl/product/nd-prime-natvoeding-voor-de-hond-kip-285-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Prime natvoeding Kip', 'wet', '6 x 140 g / 6 x 285 g', null, 'https://www.bestpetfoods.nl/product/nd-prime-natvoeding-voor-de-hond-kip-285-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kipfilet (45%), kippenbout, haring, bataten, gekookte kippeneieren, granaatappel (4%), visolie, dierlijk vet, fructo-oligosachariden, chondroïtinesulfaat, glucosamine, vitamines, mineralen.', true, now(), 'sha256:eda4eae74c1b1c00bcdef0594c70b9fc1cad733516049d460a1f3cb3af770064', null from p;

-- N&D — Prime Wild Zwijn small breed (800 g / 2,5 kg / 7 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-prime-hondenvoeding-wild-zwijn-small-breed-7-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Prime Wild Zwijn small breed', 'kibble', '800 g / 2,5 kg / 7 kg', null, 'https://www.bestpetfoods.nl/product/nd-prime-hondenvoeding-wild-zwijn-small-breed-7-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Wildzwijn (22%), gedehydrateerde wildzwijnenproteïne (20%), bataten, kip zonder been, gedehydrateerde kippeneiwit, kippenvet, gedroogde eieren, gedehydrateerde viseiwit, visolie (van haring), erwtenvezel, gedroogde wortelen, luzernemeel, inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde appel (0.5%), gedroogde granaatappel, gedroogde zoete sinaasappel, gedroogde spinazie, psylliumschillen en zaden (0.3%), gedroogde bosbessen, natriumchloride, gedroogde biergist, kurkuma (0.2%), aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:f9664461bcc42021876bb472885df3426b3f1e434442381b2e9b929ce8d9ecab', null from p;

-- N&D — Spirulina puppyvoeding Lam small breed (2 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-spirulina-puppyvoeding-lam-small-breed-2-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Spirulina puppyvoeding Lam small breed', 'kibble', '2 kg', '8010276041036', 'https://www.bestpetfoods.nl/product/nd-spirulina-puppyvoeding-lam-small-breed-2-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lamsvlees (24%), gedehydrateerde lamproteïne (24%), zoete aardappel, kippenvet, gedehydrateerde haringproteïne, gedroogde spirulina (5%), haring, gedroogde eieren, gedroogde gojibessen, visolie (van haring), erwtenvezel, gedroogde wortelen, luzernemeel, kippenkraakbeen (bron van glucosamine en chondroïtinesulfaat), inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde spinazie, psylliumschillen en zaden, natriumchloride, gedroogde biergist, kurkuma, aloë vera-extract.', true, now(), 'sha256:02b8ddfec03bdfbc918923ee3578219ee0824719c87a944a0b16cc6afed916c7', null from p;

-- N&D — Brown voor de bruine hond small breed (2 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-brown-hondenvoeding-voor-de-bruine-hond-small-breed-2-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Brown voor de bruine hond small breed', 'kibble', '2 kg', '8010276041029', 'https://www.bestpetfoods.nl/product/nd-brown-hondenvoeding-voor-de-bruine-hond-small-breed-2-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lamsvlees (26%), gedehydrateerde lamproteïne (25%), zoete aardappel, gehydrolyseerd viseiwit, kippenvet, visolie (van haring), gedroogde spirulina (5%), lijnzaad, gedroogde wortelen (2.5%), kurkuma, erwtenvezel, luzernemeel, inuline, fructo-oligosachariden, gedroogde biergist, dicalciumfosfaat, kaliumchloride, natriumchloride, aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:fa165dc7fb823685a5d06825dd60c59ab3cd03dd798e7f8c5047bccaa467149b', null from p;

-- N&D — Ocean Puppyvoeding Kabeljauw met Pompoen small breed (800 g / 2,5 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-ocean-puppyvoeding-kabeljauw-met-pompoen-small-breed-25-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Ocean Puppyvoeding Kabeljauw met Pompoen small breed', 'kibble', '800 g / 2,5 kg', null, 'https://www.bestpetfoods.nl/product/nd-ocean-puppyvoeding-kabeljauw-met-pompoen-small-breed-25-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kabeljauw (28%), gedehydrateerde kabeljauw proteïne (27%), bataten, visolie (van haring), gedehydrateerde haringproteïne, gedroogd pompoen (5%), gedehydrateerde garnalen (bron van glucosamine en chondroïtinesulfaat), erwtenvezel, gedroogde wortelen, luzernemeel, inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde meloen (0.5%), gedroogde appel, gedroogde granaatappel, gedroogde spinazie, psylliumschillen en zaden, gedroogde bosbessen, natriumchloride, kaliumchloride, calciumcarbonaat, gedroogde biergist, kurkuma (0.2%), aloë vera-extract.', true, now(), 'sha256:fd508005035c05bc637ded5b32e67a6b581521caa5b006b194d6c69aca682bba', null from p;

-- N&D — Prime Wild Zwijn medium/maxi (2,5 / 12 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-prime-hondenvoeding-wild-zwijn-mediummaxi-12-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Prime Wild Zwijn medium/maxi', 'kibble', '2,5 / 12 kg', null, 'https://www.bestpetfoods.nl/product/nd-prime-hondenvoeding-wild-zwijn-mediummaxi-12-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Wildzwijn (22%), gedehydrateerde wildzwijnenproteïne (20%), bataten, kip zonder been, gedehydrateerde kippeneiwit, kippenvet, gedroogde eieren, gedehydrateerde viseiwit, visolie (van haring), erwtenvezel, gedroogde wortelen, luzernemeel, inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde appel (0.5%), gedroogde granaatappel, gedroogde zoete sinaasappel, gedroogde spinazie, psylliumschillen en zaden (0.3%), gedroogde bosbessen, natriumchloride, gedroogde biergist, kurkuma (0.2%), aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:f9664461bcc42021876bb472885df3426b3f1e434442381b2e9b929ce8d9ecab', null from p;

-- N&D — Pumpkin Eend small breed (2 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-pumpkin-hondenvoeding-eend-small-breed-2-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Pumpkin Eend small breed', 'kibble', '2 kg', '8010276038937', 'https://www.bestpetfoods.nl/product/nd-pumpkin-hondenvoeding-eend-small-breed-2-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eendenvlees zonder bot (24%), gedehydrateerd eendeneiwit (22%), zoete aardappel, kippenvet, gedroogde pompoen (5%), gedroogd ei, haring, gedehydrateerd haringeiwit, visolie (van haring), erwtenvezels, gedroogde wortel, luzernemeel, inuline, fructo-oligosacchariden, gistextract (bron van manno-oligo-sacchariden), gedroogde cantaloupe meloen (0,5%), gedroogde appel, gedroogde spinazie, psylliumschillen en -zaden, gedroogde zoete sinaasappel, gedroogde bosbes, natriumchloride, gedroogde biergist, kurkuma (0,2%), aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:8223b83d9453918943a76ce20de60cf4a6a70a5576be163d0ad3caae32b4a7c4', null from p;

-- N&D — Spirulina Haring small breed (2 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-spirulina-hondenvoeding-haring-small-breed-2-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Spirulina Haring small breed', 'kibble', '2 kg', '8010276041098', 'https://www.bestpetfoods.nl/product/nd-spirulina-hondenvoeding-haring-small-breed-2-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Haring (24%), gedehydrateerde haringproteïne (23%), zoete aardappel, visolie (van haring), gedroogde spirulina (5%), lijnzaad, gedroogde gojibessen (2.5%), erwtenvezel, gedroogde wortelen, luzernemeel, inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde spinazie, psylliumschillen en zaden, natriumchloride, gedroogde biergist, kurkuma, aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:1038d3439a8d637a6faf58c5ecf99c69bf61b9e9b6056660d99c47f05c1e5c02', null from p;

-- N&D — Pumpkin natvoeding Eend (6 x 285 g)
-- bron: https://www.bestpetfoods.nl/product/nd-pumpkin-natvoeding-voor-de-hond-eend-285-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Pumpkin natvoeding Eend', 'wet', '6 x 285 g', '8606014105568', 'https://www.bestpetfoods.nl/product/nd-pumpkin-natvoeding-voor-de-hond-eend-285-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eendenfilet (30%), kipfilet, kippenbout, haring, pompoen (5%), bataten, gekookte kippeneieren, visolie, dierlijk vet, fructo-oligosachariden, chondroïtinesulfaat, glucosamine, vitamines, mineralen.', true, now(), 'sha256:c5396cc74e2757c3855c3e73ca68eb5426430ed594f497a1b1d495bdb1f68298', null from p;

-- N&D — Spirulina puppyvoeding Lam medium/maxi (2 / 7 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-spirulina-puppyvoeding-lam-mediummaxi-7-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Spirulina puppyvoeding Lam medium/maxi', 'kibble', '2 / 7 kg', null, 'https://www.bestpetfoods.nl/product/nd-spirulina-puppyvoeding-lam-mediummaxi-7-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lamsvlees (24%), gedehydrateerde lamproteïne (24%), zoete aardappel, kippenvet, gedehydrateerde haringproteïne, gedroogde spirulina (5%), haring, gedroogde eieren, gedroogde gojibessen, visolie (van haring), erwtenvezel, gedroogde wortelen, luzernemeel, kippenkraakbeen (bron van glucosamine en chondroïtinesulfaat), inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde spinazie, psylliumschillen en zaden, natriumchloride, gedroogde biergist, kurkuma, aloë vera-extract.', true, now(), 'sha256:02b8ddfec03bdfbc918923ee3578219ee0824719c87a944a0b16cc6afed916c7', null from p;

-- N&D — Tropical Lam medium/maxi (2 / 10 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-tropical-hondenvoeding-lam-mediummaxi-10-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Tropical Lam medium/maxi', 'kibble', '2 / 10 kg', null, 'https://www.bestpetfoods.nl/product/nd-tropical-hondenvoeding-lam-mediummaxi-10-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lamsvlees (20%), gedehydrateerd lamseiwit (20%), spelt (12%), haver (12%), kippenvet, gedehydrateerd haringeiwit, gedroogde bietenpulp, visolie (van haring), gedroogde wortel, luzernemeel, inuline, fructo-oligosacchariden, gistextract (bron van manno-oligosacchariden), gedroogde banaan (0,5%), gedroogde kiwi (0,5%), gedroogde mango (0,5%), gedroogde papaja (0,5%), gedroogde ananas (0,5%) %), gedroogde spinazie, psylliumschillen en -zaden, natriumchloride, gedroogde biergist, kurkuma, aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:499ef28d7bc8816e6c8dba5ac415d27beaafc169a1ab06ac7607fc2b73bb945b', null from p;

-- N&D — Quinoa Gecastreerde Hond small breed (800 g / 2,5 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-quinoa-voeding-voor-de-gecastreerde-hond-small-breed-25-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Quinoa Gecastreerde Hond small breed', 'kibble', '800 g / 2,5 kg', null, 'https://www.bestpetfoods.nl/product/nd-quinoa-voeding-voor-de-gecastreerde-hond-small-breed-25-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eend zonder been (20%), gedehydrateerde eendenproteïne (20%), bataten, gedroogde bietenpulp, gedroogde eieren, quinoazaadschroot (8%), kippenvet, gedehydrateerde haringproteïne, erwtenvezel, lijnzaad, visolie (van haring), gedroogde broccoli (2.5%), gedroogde asperges (2.5%), fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), poedercellulose, gedroogde biergist, psylliumschillen en zaden, calciumsulfaatdihydraat, kaliumchloride, natriumchloride, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:30c7a3d8f12bb3d5eadea1cc0ce31ddd371e2ff8f4ea4ecb96f11f8c46f1c818', null from p;

-- N&D — Quinoa Digestion small breed Lam (800 g / 2,5 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-digestion-small-breed-lam-25-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Quinoa Digestion small breed Lam', 'kibble', '800 g / 2,5 kg', null, 'https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-digestion-small-breed-lam-25-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lamsvlees (22%), erwtenzetmeel, gedehydrateerde lamproteïne (12%), kippenvet, gedroogde eieren, quinoazaadschroot (8%), gedehydrateerde haringproteïne, visolie (van haring), gedroogde venkel (2,0%), gedroogde munt (2,0%), gedroogde artisjok (2,0%), inuline (0,6%), fructo-oligosachariden (0,4%), gistextract (bron van manno-oligo-sacchariden) (0,4%), calciumcarbonaat, psylliumschillen en zaden, kaliumchloride, natriumchloride, aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:c60e24ea71482f72d4b76ec25a85c3ea7566db0c2ded12de14e187e37df00beb', null from p;

-- N&D — Quinoa Skin & Coat small breed Kwartel (800 g / 2,5 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-skin-coat-small-breed-kwartel-800-gr
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Quinoa Skin & Coat small breed Kwartel', 'kibble', '800 g / 2,5 kg', null, 'https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-skin-coat-small-breed-kwartel-800-gr', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kwartel (20%), gedroogde kwarteleiwit (20%), erwtenzetmeel, visolie (van haring), quinoazaadschroot (8%), lijnzaad, gedroogde kokosnoot (2.5%), kurkuma (2.5%), inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), calciumcarbonaat, diCalciumfosfaat, psylliumschillen en zaden, kaliumchloride, natriumchloride, gedroogde biergist, aloë vera-extract, glucosamine, chondroïtinesulfaat. Eiwitbronnen: kwartel, gedroogde kwarteleiwit. Koolhydraatbronnen: erwtenzetmeel, quinoazaadschroot.', true, now(), 'sha256:829909ddca530d20174e1bea3a09a9656e8a9f9b847c0d1d7155797049258e4d', null from p;

-- N&D — Prime Lam medium/maxi (2,5 / 12 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-prime-hondenvoeding-lam-mediummaxi-12-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Prime Lam medium/maxi', 'kibble', '2,5 / 12 kg', null, 'https://www.bestpetfoods.nl/product/nd-prime-hondenvoeding-lam-mediummaxi-12-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lamsvlees (26%), gedehydrateerde lamproteïne (25%), bataten, gedroogde eieren, haring, gedehydrateerde haringproteïne, kippenvet, visolie (van haring), erwtenvezel, gedroogde wortelen, luzernemeel, inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde bosbessen (0.5%), gedroogde appel, gedroogde granaatappel, gedroogde zoete sinaasappel, gedroogde spinazie, psylliumschillen en zaden (0.3%), natriumchloride, gedroogde biergist, kurkuma (0.2%), aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:59cc7c154cfd3ae9cfc3125286ae72104c541074ec910eff62c5ac9385513991', null from p;

-- N&D — Pumpkin Lam medium/maxi (2,5 / 12 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-pumpkin-hondenvoeding-lam-mediummaxi-12-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Pumpkin Lam medium/maxi', 'kibble', '2,5 / 12 kg', null, 'https://www.bestpetfoods.nl/product/nd-pumpkin-hondenvoeding-lam-mediummaxi-12-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lamsvlees (22%), gedehydrateerde lamproteïne (20%), erwtenzetmeel, kippenvet, gedroogd pompoen (5%), gedroogde eieren, haring, gedehydrateerde haringproteïne, visolie (van haring), erwtenvezel, gedroogde wortelen, luzernemeel, inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde bosbessen (0.5%), gedroogde appel, gedroogde granaatappel, gedroogde zoete sinaasappel, gedroogde spinazie, psylliumschillen en zaden (0.3%), natriumchloride, gedroogde biergist, kurkuma (0.2%), aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:87781539c2e431328ec1f776ef3046373302055313531f5d87306ab595c2ad05', null from p;

-- N&D — Pumpkin Kip medium/maxi (2,5 / 12 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-pumpkin-hondenvoeding-kip-mediummaxi-12-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Pumpkin Kip medium/maxi', 'kibble', '2,5 / 12 kg', null, 'https://www.bestpetfoods.nl/product/nd-pumpkin-hondenvoeding-kip-mediummaxi-12-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip zonder bot (24%), gedehydrateerde kippeneiwit (22%), erwtenzetmeel, kippenvet, gedroogd pompoen (5%), gedroogde eieren, haring, gedehydrateerde haringproteïne, visolie (van haring), erwtenvezel, gedroogde wortelen, luzernemeel, inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde granaatappel (0.5%), gedroogde appel, gedroogde spinazie, psylliumschillen en zaden (0.3%), gedroogde zoete sinaasappel, gedroogde bosbessen, natriumchloride, gedroogde biergist, kurkuma (0.2%), aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:806ad9f35229f69a09382a3e76942957426c87d5d4917c2119a8cfff807c8b16', null from p;

-- N&D — Quinoa Skin & Coat medium/maxi Eend (2,5 / 7 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-skin-coat-mediummaxi-eend-25-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Quinoa Skin & Coat medium/maxi Eend', 'kibble', '2,5 / 7 kg', '8010276042002', 'https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-skin-coat-mediummaxi-eend-25-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eend zonder botten (20%), gedehydrateerde eendenproteïne (20%), erwtenzetmeel, visolie (van haring), quinoazaadschroot (8%), lijnzaad, gedroogde kokosnoot (2.5%), kurkuma (2.5%), inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), calciumcarbonaat, diCalciumfosfaat, psylliumschillen en zaden, kaliumchloride, natriumchloride, gedroogde biergist, aloë vera-extract, glucosamine, chondroïtinesulfaat. Eiwitbronnen: eend zonder been, gedehydrateerde eendenproteïne. Koolhydraatbronnen: erwtenzetmeel, quinoazaadschroot.', true, now(), 'sha256:ff5783d7d3486f0b0190b93f93e6b5893105d47f1747f14011c8d110f20d075d', null from p;

-- N&D — Tropical Zalm small breed (1,5 / 5 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-tropical-hondenvoeding-zalm-small-breed-5-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Tropical Zalm small breed', 'kibble', '1,5 / 5 kg', null, 'https://www.bestpetfoods.nl/product/nd-tropical-hondenvoeding-zalm-small-breed-5-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Zalm (20%), gedehydrateerd zalmproteïne (20%), spelt (12%), haver (12%), visolie (uit haring), gedehydrateerd haringproteïne, gedroogde bietenpulp, gedroogde wortel, luzernemeel, inuline, fructo-oligosacchariden, gistextract (bron van manno-oligo-sacchariden), gedroogde banaan (0,5%), gedroogde kiwi (0,5%), gedroogde mango (0,5%), gedroogde papaya (0,5%), gedroogde ananas (0,5%), gedroogde spinazie, psylliumschillen en zaden, natriumchloride, gedroogde brouwersgist, kurkuma, aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:ef77d067ee027a9d3583ae651302dde8e946c4bfcc6fad303eeff1f8ba469e5b', null from p;

-- N&D — Tropical Kip medium/maxi (2 / 10 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-tropical-hondenvoeding-kip-mediummaxi-10-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Tropical Kip medium/maxi', 'kibble', '2 / 10 kg', null, 'https://www.bestpetfoods.nl/product/nd-tropical-hondenvoeding-kip-mediummaxi-10-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip zonder been (20%), gedehydrateerd kippeneiwit (20%), spelt (12%), haver (12%), kippenvet, gedehydrateerd haringeiwit, gedroogde bietenpulp, visolie (van haring), gedroogde wortel, luzernemeel , inuline, fructo-oligo-sacchariden, gistextract (bron van manno-oligo-sacchariden), gedroogde banaan (0,5%), gedroogde kiwi (0,5%), gedroogde mango (0,5%), gedroogde papaya (0,5%), gedroogde ananas ( 0,5%), gedroogde spinazie, psylliumschillen en -zaden, natriumchloride, gedroogde biergist, kurkuma, aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:1e25dfea8d1e357cd9d1116dd9f9b7976489b9dda8ee33ba54fe1c1739dc6edf', null from p;

-- N&D — Quinoa Skin & Coat medium/maxi Hert (2,5 / 7 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-skin-coat-mediummaxi-hert-7-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Quinoa Skin & Coat medium/maxi Hert', 'kibble', '2,5 / 7 kg', null, 'https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-skin-coat-mediummaxi-hert-7-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Hert (20%), gedroogde hertproteïne (20%), erwtenzetmeel, visolie (van haring), quinoazaadschroot (8%), lijnzaad, gedroogde kokosnoot (2.5%), kurkuma (2.5%), inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), calciumcarbonaat, diCalciumfosfaat, psylliumschillen en zaden, kaliumchloride, natriumchloride, gedroogde biergist, aloë vera-extract, glucosamine, chondroïtinesulfaat. Eiwitbronnen: hert, gedroogde hertproteïne. Koolhydraatbronnen: erwtenzetmeel, quinoazaadschroot.', true, now(), 'sha256:fec8c92aa6d213881a0c4ee6811b54caea57e8f26ffb26a38f0d1a7f613eca16', null from p;

-- N&D — Spirulina Haring medium/maxi (2 / 7 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-spirulina-hondenvoeding-haring-mediummaxi-7-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Spirulina Haring medium/maxi', 'kibble', '2 / 7 kg', null, 'https://www.bestpetfoods.nl/product/nd-spirulina-hondenvoeding-haring-mediummaxi-7-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Haring (24%), gedehydrateerde haringproteïne (23%), zoete aardappel, visolie (van haring), gedroogde spirulina (5%), lijnzaad, gedroogde gojibessen (2.5%), erwtenvezel, gedroogde wortelen, luzernemeel, inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde spinazie, psylliumschillen en zaden, natriumchloride, gedroogde biergist, kurkuma, aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:1038d3439a8d637a6faf58c5ecf99c69bf61b9e9b6056660d99c47f05c1e5c02', null from p;

-- N&D — Pumpkin Wild Zwijn medium/maxi (2,5 / 12 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-pumpkin-hondenvoeding-wild-zwijn-mediummaxi-25-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Pumpkin Wild Zwijn medium/maxi', 'kibble', '2,5 / 12 kg', null, 'https://www.bestpetfoods.nl/product/nd-pumpkin-hondenvoeding-wild-zwijn-mediummaxi-25-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Wildzwijn (24%), gedehydrateerde wildzwijnenproteïne (22%), erwtenzetmeel, kippenvet, gedroogd pompoen (5%), gedroogde eieren, visolie (van haring), erwtenvezel, gedroogde wortelen, luzernemeel, inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde appel (0.5%), gedroogde spinazie, psylliumschillen en zaden (0.3%), gedroogde granaatappel, gedroogde zoete sinaasappel, gedroogde bosbessen, natriumchloride, gedroogde biergist, kurkuma (0.2%), aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:3b6e6578585006a5c8f4e005c9315a30bd022d2ea09adb791d93fb7ba9de69b8', null from p;

-- N&D — Tropical Varken medium/maxi (2 / 10 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-tropical-hondenvoeding-varken-mediummaxi-10-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Tropical Varken medium/maxi', 'kibble', '2 / 10 kg', null, 'https://www.bestpetfoods.nl/product/nd-tropical-hondenvoeding-varken-mediummaxi-10-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Varkensvlees (20%), gedehydrateerd varkenseiwit (20%), spelt (12%), haver (12%), kippenvet, gedehydrateerd haringeiwit, gedroogde bietenpulp, visolie (van haring), gedroogde wortel, luzernemeel, inuline, fructo-oligosacchariden, gistextract (bron van manno-oligosacchariden), gedroogde banaan (0,5%), gedroogde kiwi (0,5%), gedroogde mango (0,5%), gedroogde papaja (0,5%), gedroogde ananas (0,5%) %), gedroogde spinazie, psylliumschillen en -zaden, natriumchloride, gedroogde biergist, kurkuma, aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:292c73fedf14cf40c323929fbf65ef0e7cf1e02beb9e70e249accac860aba442', null from p;

-- N&D — Prime Kip small breed (800 g / 2,5 kg / 7 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-prime-hondenvoeding-kip-small-breed-800-gr
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Prime Kip small breed', 'kibble', '800 g / 2,5 kg / 7 kg', null, 'https://www.bestpetfoods.nl/product/nd-prime-hondenvoeding-kip-small-breed-800-gr', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip zonder bot (26%), gedehydrateerde kippeneiwit (25%), bataten, kippenvet, gedroogde eieren, haring, gedehydrateerde haringproteïne, visolie (van haring), erwtenvezel, gedroogde wortelen, luzernemeel, inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde granaatappel (0.5%), gedroogde appel, gedroogde spinazie, psylliumschillen en zaden (0.3%), gedroogde zoete sinaasappel, gedroogde bosbessen, natriumchloride, gedroogde biergist, kurkuma (0.2%), aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:2832b0460ca45b0ddeeada51a64c57a57a434ef747fc5f6a92172229452b0ac4', null from p;

-- N&D — Pumpkin puppyvoeding Kip medium/maxi (2,5 / 12 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-pumpkin-puppyvoeding-kip-mediummaxi-25-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Pumpkin puppyvoeding Kip medium/maxi', 'kibble', '2,5 / 12 kg', null, 'https://www.bestpetfoods.nl/product/nd-pumpkin-puppyvoeding-kip-mediummaxi-25-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip zonder bot (24%), gedehydrateerde kippeneiwit (24%), erwtenzetmeel, kippenvet, gedehydrateerde haringproteïne, gedroogd pompoen (5%), haring, gedroogde eieren, visolie (van haring), erwtenvezel, gedroogde wortelen, luzernemeel, kippenkraakbeen (bron van glucosamine en chondroïtinesulfaat), inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde granaatappel (0.5%), gedroogde spinazie, psylliumschillen en zaden (0.3%), gedroogde appel, gedroogde zoete sinaasappel, gedroogde bosbessen, natriumchloride, gedroogde biergist, kurkuma (0.2%), aloë vera-extract.', true, now(), 'sha256:c6d144818ff7c8bda4de8a5649db5595dede3abafa1e05e9cbd52013586113f9', null from p;

-- N&D — Pumpkin Hert small breed (2 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-pumpkin-hondenvoeding-hert-small-breed-2-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Pumpkin Hert small breed', 'kibble', '2 kg', '8010276039071', 'https://www.bestpetfoods.nl/product/nd-pumpkin-hondenvoeding-hert-small-breed-2-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Hert (22%), gedehydrateerd herten eiwit (20%), zoete aardappel, kippenvet, gedroogde pompoen (5%), gedroogd ei, haring, gedehydrateerd haring eiwit, visolie (van haring), erwtenvezels, gedroogde wortelen, luzernemeel, inuline, fructo-oligosacchariden, gistextract (bron van manno-oligosacchariden), gedroogde appel (0,5%), gedroogde granaatappel, gedroogde spinazie, psyllium en psylliumschillen, gedroogde sinaasappels, gedroogde bosbessen, natriumchloride, gedroogde biergist, kurkuma (0,2%), aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:88f1df7230057e59e0bcd219011ee286399b6417d6742f0b113eaffc624eefd0', null from p;

-- N&D — Pumpkin puppyvoeding Lam small breed (800 g / 2,5 kg / 7 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-pumpkin-puppyvoeding-lam-small-breed-7-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Pumpkin puppyvoeding Lam small breed', 'kibble', '800 g / 2,5 kg / 7 kg', null, 'https://www.bestpetfoods.nl/product/nd-pumpkin-puppyvoeding-lam-small-breed-7-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lamsvlees (24%), gedehydrateerde lamproteïne (24%), erwtenzetmeel, kippenvet, gedehydrateerde haringproteïne, gedroogd pompoen (5%), haring, gedroogde eieren, visolie (van haring), erwtenvezel, gedroogde wortelen, luzernemeel, kippenkraakbeen (bron van glucosamine en chondroïtinesulfaat), inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde bosbessen (0.5%), gedroogde spinazie, psylliumschillen en zaden (0.3%), gedroogde appel, gedroogde zoete sinaasappel, gedroogde granaatappel, natriumchloride, gedroogde biergist, kurkuma (0.2%), aloë vera-extract.', true, now(), 'sha256:282d0c81ebf1b13603561317c341d4c503669759728b81f9bd053f3700f05eca', null from p;

-- N&D — Spirulina Lam medium/maxi (2 / 7 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-spirulina-hondenvoeding-lam-mediummaxi-7-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Spirulina Lam medium/maxi', 'kibble', '2 / 7 kg', null, 'https://www.bestpetfoods.nl/product/nd-spirulina-hondenvoeding-lam-mediummaxi-7-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lamsvlees (22%), gedehydrateerde lamproteïne (20%), zoete aardappel, kippenvet, gedroogde spirulina (5%), gedroogde eieren, haring, gedehydrateerde haringproteïne, gedroogde gojibessen (2.5%), visolie (van haring), erwtenvezel, gedroogde wortelen, luzernemeel, inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde spinazie, psylliumschillen en zaden, natriumchloride, gedroogde biergist, kurkuma, aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:97a926b37c9e2a683d902a36a5c28e2c436481dd6cd3c4f09851e55f39982a23', null from p;

-- N&D — Pumpkin Kip small breed (800 g / 2,5 kg / 7 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-pumpkin-hondenvoeding-kip-small-breed-25-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Pumpkin Kip small breed', 'kibble', '800 g / 2,5 kg / 7 kg', null, 'https://www.bestpetfoods.nl/product/nd-pumpkin-hondenvoeding-kip-small-breed-25-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip zonder bot (24%), gedehydrateerde kippeneiwit (22%), erwtenzetmeel, kippenvet, gedroogd pompoen (5%), gedroogde eieren, haring, gedehydrateerde haringproteïne, visolie (van haring), erwtenvezel, gedroogde wortelen, luzernemeel, inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde granaatappel (0.5%), gedroogde appel, gedroogde spinazie, psylliumschillen en zaden (0.3%), gedroogde zoete sinaasappel, gedroogde bosbessen, natriumchloride, gedroogde biergist, kurkuma (0.2%), aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:806ad9f35229f69a09382a3e76942957426c87d5d4917c2119a8cfff807c8b16', null from p;

-- N&D — Ocean Kabeljauw met Pompoen small breed (800 g / 2,5 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-ocean-hondenvoeding-kabeljauw-met-pompoen-small-breed-25-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Ocean Kabeljauw met Pompoen small breed', 'kibble', '800 g / 2,5 kg', null, 'https://www.bestpetfoods.nl/product/nd-ocean-hondenvoeding-kabeljauw-met-pompoen-small-breed-25-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kabeljauw (25%), gedehydrateerde kabeljauw proteïne (25%), erwtenzetmeel, visolie (van haring), gedroogd pompoen (5%), erwtenvezel, gedroogde wortelen, luzernemeel, inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde zoete sinaasappel (0.5%), gedroogde appel, gedroogde granaatappel, gedroogde spinazie, psylliumschillen en zaden (0.3%), gedroogde bosbessen, natriumchloride, gedroogde biergist, kurkuma (0.2%), aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:2db09bae8b39f6101ff5674807964ba5ea8a7ab03304d89ea67da9f734ffdca8', null from p;

-- N&D — Ocean Puppyvoeding Kabeljauw met Pompoen medium/maxi (2,5 / 12 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-ocean-puppyvoeding-kabeljauw-met-pompoen-mediummaxi-25-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Ocean Puppyvoeding Kabeljauw met Pompoen medium/maxi', 'kibble', '2,5 / 12 kg', null, 'https://www.bestpetfoods.nl/product/nd-ocean-puppyvoeding-kabeljauw-met-pompoen-mediummaxi-25-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kabeljauw (28%), gedehydrateerde kabeljauw proteïne (27%), bataten, visolie (van haring), gedehydrateerde haringproteïne, gedroogd pompoen (5%), gedehydrateerde garnalen (bron van glucosamine en chondroïtinesulfaat), erwtenvezel, gedroogde wortelen, luzernemeel, inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde meloen (0.5%), gedroogde appel, gedroogde granaatappel, gedroogde spinazie, psylliumschillen en zaden, gedroogde bosbessen, natriumchloride, kaliumchloride, calciumcarbonaat, gedroogde biergist, kurkuma (0.2%), aloë vera-extract.', true, now(), 'sha256:fd508005035c05bc637ded5b32e67a6b581521caa5b006b194d6c69aca682bba', null from p;

-- N&D — Tropical Lam small breed (1,5 / 5 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-tropical-hondenvoeding-lam-small-breed-15-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Tropical Lam small breed', 'kibble', '1,5 / 5 kg', null, 'https://www.bestpetfoods.nl/product/nd-tropical-hondenvoeding-lam-small-breed-15-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lamsvlees (20%), gedehydrateerd lamseiwit (20%), spelt (12%), haver (12%), kippenvet, gedehydrateerd haringeiwit, gedroogde bietenpulp, visolie (van haring), gedroogde wortel, luzernemeel, inuline, fructo-oligosacchariden, gistextract (bron van manno-oligosacchariden), gedroogde banaan (0,5%), gedroogde kiwi (0,5%), gedroogde mango (0,5%), gedroogde papaja (0,5%), gedroogde ananas (0,5%) %), gedroogde spinazie, psylliumschillen en -zaden, natriumchloride, gedroogde biergist, kurkuma, aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:499ef28d7bc8816e6c8dba5ac415d27beaafc169a1ab06ac7607fc2b73bb945b', null from p;

-- N&D — Quinoa Weight Management medium/maxi (2,5 / 7 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-weight-management-mediummaxi-25-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Quinoa Weight Management medium/maxi', 'kibble', '2,5 / 7 kg', null, 'https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-weight-management-mediummaxi-25-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lamsvlees (20%), gedehydrateerde lamproteïne (20%), erwtenzetmeel, erwtenvezel, quinoazaadschroot (8%), kippenvet, lijnzaad, gedehydrateerde haringproteïne, visolie (van haring), gedroogde broccoli (2.5%), gedroogde asperges (2.5%), dicalciumfosfaat, luzernemeel, psylliumschillen en zaden, kaliumchloride, calciumcarbonaat, natriumchloride, aloë vera-extract, glucosamine, chondroïtinesulfaat', true, now(), 'sha256:d4e906bc95ff6ddb27cab413bee57e8088353e21e9dcce9170cc07e51dc658d8', null from p;

-- N&D — Ocean Haring medium/maxi (2,5 / 12 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-ocean-hondenvoeding-haring-mediummaxi-25-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Ocean Haring medium/maxi', 'kibble', '2,5 / 12 kg', null, 'https://www.bestpetfoods.nl/product/nd-ocean-hondenvoeding-haring-mediummaxi-25-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Haring (26%), gedehydrateerde haringproteïne (25%), bataten, visolie (van haring), gedroogde eieren, erwtenvezel, gedroogde wortelen, luzernemeel, inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde zoete sinaasappel (0.5%), gedroogde appel, gedroogde granaatappel, gedroogde spinazie, psylliumschillen en zaden (0.3%), gedroogde bosbessen, natriumchloride, gedroogde biergist, kurkuma (0.2%), aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:4ef38901cbbcd7ec8890e5dcce10fea02589054c49cc47d1c5de8b6bb236c9e4', null from p;

-- N&D — Pumpkin puppyvoeding Kip small breed (800 g / 2,5 kg / 7 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-pumpkin-puppyvoeding-kip-small-breed-7-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Pumpkin puppyvoeding Kip small breed', 'kibble', '800 g / 2,5 kg / 7 kg', null, 'https://www.bestpetfoods.nl/product/nd-pumpkin-puppyvoeding-kip-small-breed-7-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip zonder bot (24%), gedehydrateerde kippeneiwit (24%), erwtenzetmeel, kippenvet, gedehydrateerde haringproteïne, gedroogd pompoen (5%), haring, gedroogde eieren, visolie (van haring), erwtenvezel, gedroogde wortelen, luzernemeel, kippenkraakbeen (bron van glucosamine en chondroïtinesulfaat), inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde granaatappel (0.5%), gedroogde spinazie, psylliumschillen en zaden (0.3%), gedroogde appel, gedroogde zoete sinaasappel, gedroogde bosbessen, natriumchloride, gedroogde biergist, kurkuma (0.2%), aloë vera-extract.', true, now(), 'sha256:c6d144818ff7c8bda4de8a5649db5595dede3abafa1e05e9cbd52013586113f9', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
