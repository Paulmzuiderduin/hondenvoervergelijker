-- Automatisch overgenomen etiketten, batch 4 van 2026-11-23 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Buddy — Chicken + Lamb Feast (2 / 12 kg)
-- bron: https://www.bestpetfoods.nl/product/buddy-chicken-lamb-feast-12-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Buddy', 'Chicken + Lamb Feast', 'kibble', '2 / 12 kg', null, 'https://www.bestpetfoods.nl/product/buddy-chicken-lamb-feast-12-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip (35%), erwten, vers lamsvlees (15%), zoete aardappel, gedroogde appels, kippenvet (geconserveerd met tocoferolen), gehydrolyseerde kippenlever (2%), zalmolie, wortels, gedroogde kelp (ascophyllum nodosum), glucosamine (0,026%), chondroïtinesulfaat (0,016%), mannan-oligosachariden (0,015%), fructo-oligosachariden (0,012%), Mojave yucca (0,01%), citrusextract (0,005%), kurkuma-extract (0,005%) en rozemarijn extract (0,005%).', true, now(), 'sha256:88ec779bcf3c99847e6db06d0374573049287b79c00afa5e8a7475e367e91ba3', null from p;

-- Buddy — Natvoeding Yummy Beef (400 g)
-- bron: https://www.bestpetfoods.nl/product/buddy-natvoeding-yummy-beef-400-gr
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Buddy', 'Natvoeding Yummy Beef', 'wet', '400 g', '7350112971945', 'https://www.bestpetfoods.nl/product/buddy-natvoeding-yummy-beef-400-gr', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '65% vlees en dierlijke bijproducten (25% rundvlees, 20% runderstrot, 20% runderhart), 2% erwtenmeel, 0,7% lignocellulose, 0,3% calciumcarbonaat, 0,1% gedroogde kelp, 0,01% gedroogde veenbessen, 0,01% gedroogde bosbessen.', true, now(), 'sha256:608a8c603ceaf895e2cef173886436de61255e59c622272bda0458b4d65492d5', null from p;

-- Buddy — Natvoeding Delicious Lamb (400 g)
-- bron: https://www.bestpetfoods.nl/product/buddy-natvoeding-delicious-lamb-400-gr
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Buddy', 'Natvoeding Delicious Lamb', 'wet', '400 g', '7350112971938', 'https://www.bestpetfoods.nl/product/buddy-natvoeding-delicious-lamb-400-gr', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '65% vlees en dierlijke bijproducten (35% lamsvlees, 20% lamspens, 10% lamshart), 2% erwtenmeel, 0,7% lignocellulose, 0,3% calciumcarbonaat, 0,1% gedroogde kelp, 0,01% gedroogde veenbessen, 0,01% gedroogde bosbessen.', true, now(), 'sha256:9633bcde9ce466a24f81209902c50a191b1e5722b2fa77b1fd92654b37a68873', null from p;

-- Buddy — Natvoeding Salmon & Chicken Feast (400 g)
-- bron: https://www.bestpetfoods.nl/product/buddy-natvoeding-salmon-chicken-feast-400-gr
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Buddy', 'Natvoeding Salmon & Chicken Feast', 'wet', '400 g', '7350112971976', 'https://www.bestpetfoods.nl/product/buddy-natvoeding-salmon-chicken-feast-400-gr', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '39% vlees en dierlijke bijproducten (25% kippenvlees, 14% kippenhart), 26% vis en visbijproducten (zalm), 2% erwtenmeel, 0,7% lignocellulose, 0,3% calciumcarbonaat, 0,1% gedroogde kelp, 0,01% gedroogde veenbessen, 0,01% gedroogde bosbessen.', true, now(), 'sha256:db9daa40736eebb5d9184c969b86383feea16d0382b82087e59dbfd949812d14', null from p;

-- Buddy — Grass-Fed Lamb (2 / 12 kg)
-- bron: https://www.bestpetfoods.nl/product/buddy-grass-fed-lamb-2-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Buddy', 'Grass-Fed Lamb', 'kibble', '2 / 12 kg', null, 'https://www.bestpetfoods.nl/product/buddy-grass-fed-lamb-2-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogd lamsvlees (35%), erwten, vers lamsvlees (15%), zoete aardappel, kippenvet (geconserveerd met tocoferolen), gedroogde appels, gehydrolyseerde kippenlever (2%), zalmolie, wortels, gedroogde kelp (ascophyllum nodosum), glucosamine (0,026%), chondroïtinesulfaat (0,016%), mannan-oligosacchariden (0,015%), fructo-oligosacchariden (0,012%), Mojave yucca (0,01%), citrusextract (0,005%), kurkuma-extract (0,005%) en rozemarijnextract (0,005%).', true, now(), 'sha256:b664e2dd8118ccd5aa7989005052a5350e7582627d3a00bda2491123ecd35610', null from p;

-- Buddy — Natvoeding Delightful Duck (400 g)
-- bron: https://www.bestpetfoods.nl/product/buddy-natvoeding-delightful-duck-400-gr
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Buddy', 'Natvoeding Delightful Duck', 'wet', '400 g', '7350112971969', 'https://www.bestpetfoods.nl/product/buddy-natvoeding-delightful-duck-400-gr', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '65% vlees/vlees en dierlijke bijproducten (40% eendenvlees, 15% eendenmaag, 10% eendenhart), 2% erwtenmeel, 0,7% lignocellulose, 0,3% calciumcarbonaat, 0,1% gedroogde kelp 0,01% gedroogde veenbessen, 0,01% gedroogde bosbessen.', true, now(), 'sha256:c2b6b75dfa4481bf6b5104acfcaaa40a6218c5d8472b3e63e2a8569b2fca0eff', null from p;

-- Buddy — Free-Range Duck (2 / 12 kg)
-- bron: https://www.bestpetfoods.nl/product/buddy-free-range-duck-2-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Buddy', 'Free-Range Duck', 'kibble', '2 / 12 kg', null, 'https://www.bestpetfoods.nl/product/buddy-free-range-duck-2-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eend (44%), verse eend (26%), kippenvet (geconserveerd met tocoferol), erwten, zoete aardappel, gehydrolyseerde kippenlever (2%), zalmolie, gedroogde appels, wortels, gedroogde kelp (ascophyllum nodosum), glucosamine (0,026%), chondroïtinesulfaat (0,016%), mannan-oligosacchariden (0,015%), fructo-oligosacchariden (0,012%), Mojave-yucca (0,01%)', true, now(), 'sha256:4a7e0dbc0de74b030e10881d401737e9c675634ab5090eccd0f5ab02d90e318c', null from p;

-- Buddy — Natvoeding Turkey & Rabbit (400 g)
-- bron: https://www.bestpetfoods.nl/product/buddy-natvoeding-turkey-rabbit-400-gr
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Buddy', 'Natvoeding Turkey & Rabbit', 'wet', '400 g', '7350112972317', 'https://www.bestpetfoods.nl/product/buddy-natvoeding-turkey-rabbit-400-gr', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '65% vlees en dierlijke bijproducten (26% konijnenvlees, 14% kalkoenvleess, 13% kalkoenhart, 12% kalkoenmaag), 2% erwtenmeel, 0,7% lignocellulose, 0,3% calciumcarbonaat, 0, 1% gedroogde kelp, 0,01% gedroogde veenbessen, 0,01% gedroogde bosbessen.', true, now(), 'sha256:ffacb7398913761d410c0267874f0eaf1c75fa52aa0fbc448d9f56d883a57743', null from p;

-- Buddy — Wild Venison (2 / 12 kg)
-- bron: https://www.bestpetfoods.nl/product/buddy-wild-venison-12-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Buddy', 'Wild Venison', 'kibble', '2 / 12 kg', null, 'https://www.bestpetfoods.nl/product/buddy-wild-venison-12-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Hertenvlees (35%), erwten, vers hertenvlees (15%), zoete aardappel, gedroogde appels, kippenvet (geconserveerd met tocoferolen), gehydrolyseerde kippenlever (2%), zalmolie, wortels, gedroogde kelp (Ascophyllum nodosum), glucosamine (0,026%), chondroïtinesulfaat (0,016%), mannan-oligosachariden (0,015%), fructo-oligosachariden (0,012%), Mojave yucca (0,01%), citrusextract (0,005%), kurkuma-extract (0,005%) en rozemarijn extract (0,005%).', true, now(), 'sha256:1c0db81a77ee709c6bc9145c054e6ff4c36bd588d675a9c02a569c7e0c727611', null from p;

-- Buddy — Natvoeding Puppy Lavish Lamb (400 g)
-- bron: https://www.bestpetfoods.nl/product/buddy-natvoeding-puppy-lavish-lamb-400-gr
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Buddy', 'Natvoeding Puppy Lavish Lamb', 'wet', '400 g', '7350112972300', 'https://www.bestpetfoods.nl/product/buddy-natvoeding-puppy-lavish-lamb-400-gr', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% vlees en dierlijke bijproducten (35% lamsvlees, 20% lamspens, 15% lamshart), 4% rijst, 2% erwtenmeel, 0,7% lignocellulose, 0,3% calciumcarbonaat, 0,1% gedroogde kelp, 0,01% gedroogde veenbessen, 0,01% gedroogde bosbessen.', true, now(), 'sha256:c9765fbfc34a961a466ef73e0c76d4edc882588bafbb73eccf3b10421f917ebe', null from p;

-- Buddy — Puppy Love (2 / 5 kg)
-- bron: https://www.bestpetfoods.nl/product/buddy-puppy-love-2-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Buddy', 'Puppy Love', 'kibble', '2 / 5 kg', null, 'https://www.bestpetfoods.nl/product/buddy-puppy-love-2-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Zalm (42%), verse kalkoen (26%), kippenvet (geconserveerd met tocoferolen), erwten, zoete aardappel, gedroogde appel, gehydrolyseerde kippenlever (2%), zalmolie, wortels, gedroogde kelp (ascophyllum nodosum), glucosamine (0,036%), chondroïtinesulfaat (0,026%), mannan-oligosachariden (0,018%), fructo-oligosachariden (0,015%), Mojave yucca (0,012%), citrusextract (0,006%), kurkuma-extract (0,006%) en rozemarijn extract (0,006%).', true, now(), 'sha256:3d15e74a42d1fd76e199447d5b31de418b3b62020c7c7fa9db25bb24dee97a4c', null from p;

-- Buddy — Tasty Duck Bites (2 / 5 kg)
-- bron: https://www.bestpetfoods.nl/product/buddy-tasty-duck-bites-2-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Buddy', 'Tasty Duck Bites', 'kibble', '2 / 5 kg', null, 'https://www.bestpetfoods.nl/product/buddy-tasty-duck-bites-2-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eend (40%), erwten, verse eend (15%), zoete aardappel, kippenvet (geconserveerd met tocoferolen), gedroogde appels, gehydrolyseerde kippenlever (2%), zalmolie, wortels, gedroogde kelp (ascophyllum nodosum), glucosamine (0,026%), chondroïtinesulfaat (0,016%), mannan-oligosachariden (0,015%), fructo-oligosachariden (0,012%), Mojave yucca (0,01%), citrusextract (0,005%), kurkuma-extract (0,005%), rozemarijn extract (0,005%)', true, now(), 'sha256:4aa7f56b97c69e5c5ca75697e602531fa798bd6793d198a99de237f961f7de7f', null from p;

-- Buddy — Wild-Caught Salmon (2 / 12 kg)
-- bron: https://www.bestpetfoods.nl/product/buddy-wild-caught-salmon-12-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Buddy', 'Wild-Caught Salmon', 'kibble', '2 / 12 kg', null, 'https://www.bestpetfoods.nl/product/buddy-wild-caught-salmon-12-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Zalm (35%), erwten, verse zalm (15%), zoete aardappel, gedroogde appels, kippenvet (geconserveerd met tocoferolen), gehydrolyseerde kippenlever (2%), zalmolie, wortels, gedroogde kelp (ascophyllum nodosum), glucosamine (0,026%), chondroïtinesulfaat (0,016%), mannan-oligosachariden (0,015%), fructo-oligosachariden (0,012%), Mojave yucca (0,01%), citrusextract (0,005%), kurkuma-extract (0,005%), rozemarijn extract (0,005%).', true, now(), 'sha256:f59aa2f85321d54cb1e2fa2b9571bc7a2ba2db0c142f36642f4cbe70e738f6cf', null from p;

-- Buddy — Natvoeding Tasty Duck Pate (400 g)
-- bron: https://www.bestpetfoods.nl/product/buddy-natvoeding-tasty-duck-pate-400-gr
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Buddy', 'Natvoeding Tasty Duck Pate', 'wet', '400 g', '7350112971983', 'https://www.bestpetfoods.nl/product/buddy-natvoeding-tasty-duck-pate-400-gr', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '54,5% vlees en dierlijke bijproducten (31% eendenvlees, 13% eendenhart, 10,5 eendenvleugels), 2,5% rijst, 2% erwtenmeel, 0,7% lignocellulose, 0,3% calciumcarbonaat, 0,2% gedroogde spinazie, 0,1% gedroogde kelp, 0,01% gedroogde veenbessen, 0,01% gedroogde bosbessen.', true, now(), 'sha256:a103d089196a13516ad8305b890229e1af01745545c918875a05b1c5d37463d9', null from p;

-- Buddy — Natvoeding Juicy Turkey (400 g)
-- bron: https://www.bestpetfoods.nl/product/buddy-natvoeding-juicy-turkey-400-gr
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Buddy', 'Natvoeding Juicy Turkey', 'wet', '400 g', '7350112971952', 'https://www.bestpetfoods.nl/product/buddy-natvoeding-juicy-turkey-400-gr', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '65% vlees en dierlijke bijproducten (30% kalkoenvlees, 25% kalkoenhart, 10% kalkoenmaag), 2% erwtenmeel, 0,7% lignocellulose, 0,3% calciumcarbonaat, 0,1% gedroogde kelp 0,01% gedroogde veenbessen, 0,01% gedroogde bosbessen.', true, now(), 'sha256:3daf1647234fe0ebb7705bb967f493b6c893c802b05cb12b4e8f36e306dc190c', null from p;

-- Herrmann's — Sensitive hond Konijn met rijstvlokken (14 x 150 g / 6 x 400 g / 6 x 800 g)
-- bron: https://www.bestpetfoods.nl/product/herrmanns-sensitive-hond-konijn-met-rijstvlokken-400-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Herrmann''s', 'Sensitive hond Konijn met rijstvlokken', 'wet', '14 x 150 g / 6 x 400 g / 6 x 800 g', null, 'https://www.bestpetfoods.nl/product/herrmanns-sensitive-hond-konijn-met-rijstvlokken-400-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% konijn (spiervlees, hart, long, lever), 22,9% kookbouillon*, 9% rijstvlokken*, 8% wortel*, 5% appel*, 2% tapiocameel*, 1% hennepolie*, 1% biergist, 0,5% algenkalk, 0,5% levertraan, 0,1% knotswier* (ascophyllum modosum) * afkomstig van gecontroleerde biologische productie, waarvan het totale aandeel 48,0%', true, now(), 'sha256:a4938973a14df0556593caf1658837bbaa97b13608111e9759655d77d2032079', null from p;

-- Herrmann's — Adult Zalm met abrikoos (14 x 150 g / 6 x 400 g / 6 x 800 g)
-- bron: https://www.bestpetfoods.nl/product/herrmanns-adult-hond-zalm-met-abrikoos-150-gr-per-14-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Herrmann''s', 'Adult Zalm met abrikoos', 'wet', '14 x 150 g / 6 x 400 g / 6 x 800 g', null, 'https://www.bestpetfoods.nl/product/herrmanns-adult-hond-zalm-met-abrikoos-150-gr-per-14-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% zalm, 28,95% kookbouillon*, 8% aardappel*, 6% abrikozen*, 5% chiameel*, 1% biergist, 0,5% zonnebloemolie*, 0,5% levertraan, 0,05% knotswier* (ascophyllum modosum) * afkomstig van gecontroleerde biologische productie, waarvan het totale aandeel 48,5%', true, now(), 'sha256:6f187ec7f30edff1c7769c2e1cce8cc3b110895eb6c4514a4b2748d14c6c7559', null from p;

-- Herrmann's — Sensitive hond Geit met Rode bieten (14 x 150 g / 6 x 400 g / 6 x 800 g)
-- bron: https://www.bestpetfoods.nl/product/herrmanns-sensitive-hond-geit-met-rode-bieten-400-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Herrmann''s', 'Sensitive hond Geit met Rode bieten', 'wet', '14 x 150 g / 6 x 400 g / 6 x 800 g', null, 'https://www.bestpetfoods.nl/product/herrmanns-sensitive-hond-geit-met-rode-bieten-400-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% geit (spiervlees, long, hart, lever), 24,1% kookbouillon*, 7% rode biet*, 6% gierst*, 5% pompoen*, 5% appel*, 1% biergist, 1% teunisbloemolie*, 0,3% algenkalk, 0,3% levertraan, 0,2% zwarte komijn* (zaad), 0,1% knotswier* (ascophyllum modosum) * afkomstig van gecontroleerde biologische productie, waarvan het totale aandeel 48,4 %', true, now(), 'sha256:ba15ecb68db01a65feeed7299c83115c02a93a97bbc2a5fd16f10e823b07285d', null from p;

-- Herrmann's — Bio Adult Kip met venkel (14 x 150 g / 6 x 400 g / 6 x 800 g)
-- bron: https://www.bestpetfoods.nl/product/herrmanns-bio-adult-hond-kip-met-venkel-400-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Herrmann''s', 'Bio Adult Kip met venkel', 'wet', '14 x 150 g / 6 x 400 g / 6 x 800 g', null, 'https://www.bestpetfoods.nl/product/herrmanns-bio-adult-hond-kip-met-venkel-400-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% kip* (vlees, karkas, hart, nek, lever), 24,4% kookbouillon*, 8% courgette*, 8% venkel*, 6% boekweit*, 1% kokosvlokken*, 1% biergist, 1% teunisbloemolie*, 0,5% levertraan, 0,1% knotswier* (ascophyllum modosum) *biologisch', true, now(), 'sha256:ce6bbf843cb1721df2781c8d107b8c9e55319f61d71aa56d96139e64279abb0b', null from p;

-- Herrmann's — Bio Creative Vleesvrij met groenten (15 x 150 g / 6 x 400 g)
-- bron: https://www.bestpetfoods.nl/product/herrmanns-bio-creative-vleesvrij-met-groenten-150-gr-per-15-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Herrmann''s', 'Bio Creative Vleesvrij met groenten', 'wet', '15 x 150 g / 6 x 400 g', null, 'https://www.bestpetfoods.nl/product/herrmanns-bio-creative-vleesvrij-met-groenten-150-gr-per-15-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'biologisch vegataries met biologische wortel, biologische aardappel, biologische appel, biologische peer, biologische banaan.', true, now(), 'sha256:8317234ca498595daed6cf4b7452152d4bb165e5c371a87f295a6532d7a06885', null from p;

-- Herrmann's — Bio Sensitive hond Eend met venkel (14 x 150 g / 6 x 400 g / 6 x 800 g)
-- bron: https://www.bestpetfoods.nl/product/herrmanns-bio-sensitive-hond-eend-met-venkel-800-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Herrmann''s', 'Bio Sensitive hond Eend met venkel', 'wet', '14 x 150 g / 6 x 400 g / 6 x 800 g', null, 'https://www.bestpetfoods.nl/product/herrmanns-bio-sensitive-hond-eend-met-venkel-800-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% eend* (borst, karkas, hart, hals, lever), 23,4% kookbouillon*, 9% venkel*, 9% appel*, 6% boekweit*, 1% zonnebloemolie*, 1% biergist, 0,5% levertraan, 0,1% knotswier* (ascophyllum modosum) * biologisch', true, now(), 'sha256:86949ea355bb11c9253c1305b89801f8baeaa3f6a06fa4663a310e631c6cc342', null from p;

-- Herrmann's — Bio Sensitive hond Purinearm Rund met wortel (14 x 150 g / 6 x 400 g / 6 x 800 g)
-- bron: https://www.bestpetfoods.nl/product/herrmanns-bio-sensitive-hond-purinearm-rund-met-wortel-400-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Herrmann''s', 'Bio Sensitive hond Purinearm Rund met wortel', 'wet', '14 x 150 g / 6 x 400 g / 6 x 800 g', null, 'https://www.bestpetfoods.nl/product/herrmanns-bio-sensitive-hond-purinearm-rund-met-wortel-400-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '40% rund* (spiervlees), 20,8% kookbouillon*, 11% zoete aardappel*, 10% wortel*, 9% courgette*, 5% appel*, 1% lijnzaadolie*, 1% rozenbottel* (gedroogd), 1% minerale stoffen, 0,5% brandnetel* (gedroogd), 0,5% psyllium*, 0,1% eierschaalpoeder*, 0,05% knotswier* (ascophyllum modosum), 0,05% zeezout * biologisch', true, now(), 'sha256:8682e11e17a322105809ebb742afb3f61f0e43c96ab8beef1f13bdf21f92ec05', null from p;

-- Herrmann's — Bio Puppy Rund met appel (6 x 400 g)
-- bron: https://www.bestpetfoods.nl/product/herrmanns-bio-puppy-rund-met-appel-400-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Herrmann''s', 'Bio Puppy Rund met appel', 'wet', '6 x 400 g', '4047459006784', 'https://www.bestpetfoods.nl/product/herrmanns-bio-puppy-rund-met-appel-400-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% rund* (spiervlees, hart, long, lever), 18,65% kookbouillon*, 8% havermout*, 5% appel*, 4% wortel*, 1,5% biergist, 1% teunisbloemolie*, 0,75% eierschaalpoeder*, 0,5% kokosvlokken*, 0,5% levertraan, 0,1% knotswier* (ascophyllum modosum) *biologisch', true, now(), 'sha256:e3042f1fcd7054555172095aa03de6e8eb1f34fa7c1957db7313b15727b150e3', null from p;

-- Herrmann's — Sensitive hond Paard met zoete aardappel (14 x 150 g / 6 x 400 g / 6 x 800 g)
-- bron: https://www.bestpetfoods.nl/product/herrmanns-sensitive-hond-paard-met-zoete-aardappel-800-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Herrmann''s', 'Sensitive hond Paard met zoete aardappel', 'wet', '14 x 150 g / 6 x 400 g / 6 x 800 g', null, 'https://www.bestpetfoods.nl/product/herrmanns-sensitive-hond-paard-met-zoete-aardappel-800-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% paard (spiervlees), 18% courgette*, 17,75% kookbouillon*, 10% zoete aardappel*, 1% biergist, 1% psyllium*, 1% zonnebloemolie*, 0,5% lijnzaadolie*, 0,35% eierschaalpoeder*, 0,3% levertraan, 0,1% knotswier* (ascophyllum modosum) * afkomstig van gecontroleerde biologische productie, waarvan het totale aandeel 48,7 %', true, now(), 'sha256:8fb42c95abdb49e671ea1960fdd5d6aec41d5acd73bddc6565dd5ca774ef3baa', null from p;

-- Herrmann's — Bio Adult Kalkoen met pastinaak (6 x 400 g / 6 x 800 g)
-- bron: https://www.bestpetfoods.nl/product/herrmanns-bio-adult-hond-kalkoen-met-pastinaak-800-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Herrmann''s', 'Bio Adult Kalkoen met pastinaak', 'wet', '6 x 400 g / 6 x 800 g', null, 'https://www.bestpetfoods.nl/product/herrmanns-bio-adult-hond-kalkoen-met-pastinaak-800-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% kalkoen* (vlees, karkas, hart, lever), 18,95% kookbouillon*, 15% pastinaak*, 10% aardappel*, 3% venkel*, 1% courgette*, 1% biergist, 0,5% teunisbloemolie*, 0,5% levertraan, 0,05% knotswier* (ascophyllum modosum) * biologisch', true, now(), 'sha256:9e91dbf9a78f1e301face12f8e8f9058e10d5fc1b90790692999b3c5e3c01556', null from p;

-- Herrmann's — Bio Creative Groenten met bessen (14 x 150 g / 6 x 400 g)
-- bron: https://www.bestpetfoods.nl/product/herrmanns-bio-creative-groenten-met-bessen-400-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Herrmann''s', 'Bio Creative Groenten met bessen', 'wet', '14 x 150 g / 6 x 400 g', null, 'https://www.bestpetfoods.nl/product/herrmanns-bio-creative-groenten-met-bessen-400-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'biologische groenten met biologische zoete aardappel, biologische pompoen, biologische courgette, biologische bessen', true, now(), 'sha256:d343943187750ede1e0661b890178ae7efef3f8505db69c1717107aacea0e420', null from p;

-- Herrmann's — Bio Puur Eend (200 g / 6 x 400 g / 6 x 800 g)
-- bron: https://www.bestpetfoods.nl/product/herrmanns-bio-puur-eend-200-gr
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Herrmann''s', 'Bio Puur Eend', 'wet', '200 g / 6 x 400 g / 6 x 800 g', null, 'https://www.bestpetfoods.nl/product/herrmanns-bio-puur-eend-200-gr', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '100% biologische eend* (spiervlees, karkas, hart, nek) gegaard in eigen jus. *Afkomstig van gecontroleerde biologische landbouw.', true, now(), 'sha256:0ec87af675ed3eb7e1f419aa80fc8c12eb9a79812ef6ea8b05a8e18b984e4b79', null from p;

-- Herrmann's — Bio Adult Rund met wortel (6 x 400 g / 6 x 800 g)
-- bron: https://www.bestpetfoods.nl/product/herrmanns-bio-adult-hond-rund-met-wortel-800-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Herrmann''s', 'Bio Adult Rund met wortel', 'wet', '6 x 400 g / 6 x 800 g', null, 'https://www.bestpetfoods.nl/product/herrmanns-bio-adult-hond-rund-met-wortel-800-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% rund* (spiervlees, hart, long, lever), 27,2% kookbouillon*, 7% wortel*, 7% amaranth*, 5% selderij*, 1% biergist, 1% vruchten* (bessenmengsel), 1% teunisbloemolie*, 0,4% eierschaalpoeder*, 0,3% levertraan, 0,1% knotswier* (ascophyllum modosum) *biologisch', true, now(), 'sha256:00eb82bc396517331a4ec26174fdf9db9c71d9af48764d5d1fc4347fce7cf2e2', null from p;

-- Herrmann's — Light hond Hert met pompoen (14 x 150 g / 6 x 400 g / 6 x 800 g)
-- bron: https://www.bestpetfoods.nl/product/herrmanns-light-hond-hert-met-pompoen-800-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Herrmann''s', 'Light hond Hert met pompoen', 'wet', '14 x 150 g / 6 x 400 g / 6 x 800 g', null, 'https://www.bestpetfoods.nl/product/herrmanns-light-hond-hert-met-pompoen-800-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% hert/ree (spiervlees, hart, long, lever), 26,4% kookbouillon*, 12% pompoen*, 8% quinoa*, 1% vruchten* (bessenmengsel), 1% biergist, 0,8% zonnebloemolie*, 0,4% levertraan, 0,3% eierschaalpoeder*, 0,1% knotswier* (ascophyllum modosum) * afkomstig van gecontroleerde biologische productie, waarvan het totale aandeel 48,6 %', true, now(), 'sha256:db4a7ec9fdcf16a99cc7ce0df7be3d0b940e32ca982d1fd519bd19a7ee45bed9', null from p;

-- Herrmann's — Adult Hert met aardappel (14 x 150 g / 6 x 400 g / 6 x 800 g)
-- bron: https://www.bestpetfoods.nl/product/herrmanns-adult-hond-hert-met-aardappel-400-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Herrmann''s', 'Adult Hert met aardappel', 'wet', '14 x 150 g / 6 x 400 g / 6 x 800 g', null, 'https://www.bestpetfoods.nl/product/herrmanns-adult-hond-hert-met-aardappel-400-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% hert/ree (spiervlees, hart, long, lever), 26,65% kookbouillon*, 8% aardappel*, 8% courgette*, 3% kweeperen*, 2% gemalen lijnzaad*, 1% biergist, 0,5% zonnebloemolie*, 0,5% levertraan, 0,3% eierschaalpoeder*, 0,05% knotswier* (ascophyllum modosum) * afkomstig van gecontroleerde biologische productie, waarvan het totale aandeel 48,5 %', true, now(), 'sha256:17767634422a36f07154c213266b81c1c6a05f8b69556d973ba991442d9de793', null from p;

-- Herrmann's — Sensitive hond Schaap met courgette (14 x 150 g / 6 x 400 g / 6 x 800 g)
-- bron: https://www.bestpetfoods.nl/product/herrmanns-sensitive-hond-schaap-met-courgette-400-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Herrmann''s', 'Sensitive hond Schaap met courgette', 'wet', '14 x 150 g / 6 x 400 g / 6 x 800 g', null, 'https://www.bestpetfoods.nl/product/herrmanns-sensitive-hond-schaap-met-courgette-400-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% schaap (spiervlees, long, hart, lever), 22,7% kookbouillon*, 10% courgette*, 8% peterseliewortel*, 6% aardappel*, 1% biergist, 1% brandnetel *(gedroogd), 0,5% teunisbloemolie*, 0,5% levertraan, 0,2 % eierschaalpoeder*, 0,1% knotswier* (ascophyllum modosum) * afkomstig van gecontroleerde biologische productie, waarvan het totale aandeel 48,5%', true, now(), 'sha256:8c7359e64b13f56a7a82c2d7620f3a476b2b6b43a093416c9c257fa8211259c8', null from p;

-- Herrmann's — Bio Light hond Kalkoen met courgette (14 x 150 g / 6 x 400 g / 6 x 800 g)
-- bron: https://www.bestpetfoods.nl/product/herrmanns-bio-light-hond-kalkoen-met-courgette-800-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Herrmann''s', 'Bio Light hond Kalkoen met courgette', 'wet', '14 x 150 g / 6 x 400 g / 6 x 800 g', null, 'https://www.bestpetfoods.nl/product/herrmanns-bio-light-hond-kalkoen-met-courgette-800-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% kalkoen* (vlees, karkas, hart, lever), 21,45% kookbouillon*, 15% appel*, 9% courgette*, 1% wortel*, 1% aardperen* (extract), 1% biergist, 0,5% teunisbloemolie*, 0,5% levertraan, 0,5% psyllium*, 0,05% knotswier* (ascophyllum modosum) * biologisch', true, now(), 'sha256:ac5925bf4ad93e6407f4c3cdf891e39d0be7c613c6f91b6a174887606e36e20a', null from p;

-- Herrmann's — Bio Puppy Gans met pompoen (6 x 400 g)
-- bron: https://www.bestpetfoods.nl/product/herrmanns-bio-puppy-gans-met-pompoen-400-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Herrmann''s', 'Bio Puppy Gans met pompoen', 'wet', '6 x 400 g', '4047459006760', 'https://www.bestpetfoods.nl/product/herrmanns-bio-puppy-gans-met-pompoen-400-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% gans* (vlees, karkas, hart, nek, lever), 21,4% kookbouillon*, 7% aardappel*, 7% pompoen*, 1,5% bakkersgist, 1% fruit* (gemengde bessen), 1% zonnebloemolie*, 0,5% levertraan, 0,5% kokosvlokken*, 0,1% knoopwier* (Ascophyllum nodosum) *van gecontroleerde biologische teelt', true, now(), 'sha256:206fe2990bfed2a2083bd5d9b1072bc92c9fdc80df9cf4bb59cceb7b8321fde3', null from p;

-- Herrmann's — Biologische kip (1 kg)
-- bron: https://www.bestpetfoods.nl/product/herrmanns-hondenvoeding-biologische-kip-1-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Herrmann''s', 'Biologische kip', 'kibble', '1 kg', '4047459903687', 'https://www.bestpetfoods.nl/product/herrmanns-hondenvoeding-biologische-kip-1-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% verse kip*, 22,7% rijst*, 12% erwten*, 10% haver*, 5% gevogelte-eiwit*, 1,4% mineralen, 1,3% eiwithydrolysaat*, 0,2% zonnebloemolie*, 0,07% appels*, 0,07% tomaten*, 0,07% wortelen*, 0,07% peren* * = uit gecontroleerde biologische productie', true, now(), 'sha256:a88c2d9f45980be814506e6a870d07da1ee8f3618cc87d9e14b8367c6475cbc0', null from p;

-- Herrmann's — Bio Sensitive hond Kip met wortel (14 x 150 g / 6 x 400 g / 6 x 800 g)
-- bron: https://www.bestpetfoods.nl/product/herrmanns-bio-sensitive-hond-kip-met-wortel-800-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Herrmann''s', 'Bio Sensitive hond Kip met wortel', 'wet', '14 x 150 g / 6 x 400 g / 6 x 800 g', null, 'https://www.bestpetfoods.nl/product/herrmanns-bio-sensitive-hond-kip-met-wortel-800-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% kip* (vlees, karkas, hart, nek, lever), 28,6% kookbouillon*, 8% wortel*, 8% rijst*, 3% venkel*, 1% biergist, 0,7% teunisbloemolie*, 0,3% levertraan, 0,2% basilicum* (gedroogd), 0,1% peterselie* (gedroogd), 0,1% knotswier* (ascophyllum modosum) *biologisch', true, now(), 'sha256:65ea2735d1265c5789e441719c239fbc6537381a4a5ccbaadca0933c8b0434c2', null from p;

-- Herrmann's — Bio Light hond Veggie met witte zoete lupine (6 x 400 g)
-- bron: https://www.bestpetfoods.nl/product/herrmanns-bio-light-hond-veggie-met-witte-zoete-lupine-400-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Herrmann''s', 'Bio Light hond Veggie met witte zoete lupine', 'wet', '6 x 400 g', '4047459007125', 'https://www.bestpetfoods.nl/product/herrmanns-bio-light-hond-veggie-met-witte-zoete-lupine-400-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '58,2% kookbouillon*, 12% lupine* (gedroogd), 10% speltvlokken*, 10% wortel*, 8% sperziebonen*, 1% zonnebloemolie*, 0,5% peterselie* (gedroogd), 0,3% algenkalk * biologisch', true, now(), 'sha256:6cea655610e33abc66e4317a5a4dcd1bd35d033d9b88982db5244280bde849b7', null from p;

-- N&D — Ocean Zalm small breed (800 g / 2,5 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-ocean-hondenvoeding-zalm-small-breed-25-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Ocean Zalm small breed', 'kibble', '800 g / 2,5 kg', null, 'https://www.bestpetfoods.nl/product/nd-ocean-hondenvoeding-zalm-small-breed-25-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Zalm (20%), gedehydrateerde zalmeiwit (20%), bataten, kabeljauw (10%), gedehydrateerde kabeljauw proteïne (10%), visolie (van haring), gedehydrateerde haringproteïne, erwtenvezel, gedroogde wortelen, luzernemeel, inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde meloen (0.5%), gedroogde bosbessen, gedroogde appel, gedroogde spinazie, psylliumschillen en zaden, gedroogde granaatappel, natriumchloride, kaliumchloride, gedroogde biergist, kurkuma (0.2%), aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:fa6e4d911c9780e08e4a5729504bb74682eca7c9ed78314611a9816f60843391', null from p;

-- N&D — Quinoa natvoeding Skin & Coat Kwartel (6 x 285 g)
-- bron: https://www.bestpetfoods.nl/product/nd-quinoa-natvoeding-voor-de-hond-skin-coat-kwartel-285-gr-per-6-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Quinoa natvoeding Skin & Coat Kwartel', 'wet', '6 x 285 g', '8606014105636', 'https://www.bestpetfoods.nl/product/nd-quinoa-natvoeding-voor-de-hond-skin-coat-kwartel-285-gr-per-6-stuks', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kwartelfilet(55%), quinoazaadschroot (5%), visolie, kokosnoot (4%), fructo-oligosachariden, chondroïtinesulfaat, glucosamine, vitamines, mineralen. Eiwitbronnen: kwartelfilet en thigh. Koolhydraatbronnen: quinoazaadschroot.', true, now(), 'sha256:da225db31dbbe1d7414e20867d6b81b06f13eba68069582bbd81f8c7c29fc9d9', null from p;

-- N&D — Quinoa Skin & Coat medium/maxi Haring (2,5 / 7 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-skin-coat-mediummaxi-haring-25-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Quinoa Skin & Coat medium/maxi Haring', 'kibble', '2,5 / 7 kg', null, 'https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-skin-coat-mediummaxi-haring-25-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Haring (20%), gedehydrateerde haringproteïne (20%), erwtenzetmeel, visolie (van haring), quinoazaadschroot (8%), lijnzaad, gedroogde kokosnoot (2.5%), kurkuma (2.5%), inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), calciumcarbonaat, diCalciumfosfaat, psylliumschillen en zaden, kaliumchloride, natriumchloride, gedroogde biergist, aloë vera-extract, glucosamine, chondroïtinesulfaat. Eiwitbronnen: haring, gedehydrateerde haringproteïne. Koolhydraatbronnen: erwtenzetmeel, quinoazaadschroot', true, now(), 'sha256:58ad29917f339b75a24f53525ec93269a4368fca9ab4adeadd3592ae912b0a53', null from p;

-- N&D — Quinoa Digestion medium/maxi Lam (2,5 / 7 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-digestion-mediummaxi-lam-25-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Quinoa Digestion medium/maxi Lam', 'kibble', '2,5 / 7 kg', null, 'https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-digestion-mediummaxi-lam-25-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lamsvlees (22%), erwtenzetmeel, gedehydrateerde lamproteïne (12%), kippenvet, gedroogde eieren, quinoazaadschroot (8%), gedehydrateerde haringproteïne, visolie (van haring), gedroogde venkel (2,0%), gedroogde munt (2,0%), gedroogde artisjok (2,0%), inuline (0,6%), fructo-oligosachariden (0,4%), gistextract (bron van manno-oligo-sacchariden) (0,4%), calciumcarbonaat, psylliumschillen en zaden, kaliumchloride, natriumchloride, aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:c60e24ea71482f72d4b76ec25a85c3ea7566db0c2ded12de14e187e37df00beb', null from p;

-- N&D — Ocean Kabeljauw met Pompoen medium/maxi (2,5 / 12 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-ocean-hondenvoeding-kabeljauw-met-pompoen-mediummaxi-25-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Ocean Kabeljauw met Pompoen medium/maxi', 'kibble', '2,5 / 12 kg', null, 'https://www.bestpetfoods.nl/product/nd-ocean-hondenvoeding-kabeljauw-met-pompoen-mediummaxi-25-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kabeljauw (25%), gedehydrateerde kabeljauw proteïne (25%), erwtenzetmeel, visolie (van haring), gedroogd pompoen (5%), erwtenvezel, gedroogde wortelen, luzernemeel, inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde zoete sinaasappel (0.5%), gedroogde appel, gedroogde granaatappel, gedroogde spinazie, psylliumschillen en zaden (0.3%), gedroogde bosbessen, natriumchloride, gedroogde biergist, kurkuma (0.2%), aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:2db09bae8b39f6101ff5674807964ba5ea8a7ab03304d89ea67da9f734ffdca8', null from p;

-- N&D — Quinoa Gecastreerde Hond medium/maxi (2,5 / 12 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-quinoa-voeding-voor-de-gecastreerde-hond-mediummaxi-12-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Quinoa Gecastreerde Hond medium/maxi', 'kibble', '2,5 / 12 kg', null, 'https://www.bestpetfoods.nl/product/nd-quinoa-voeding-voor-de-gecastreerde-hond-mediummaxi-12-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eend zonder been (20%), gedehydrateerde eendenproteïne (20%), bataten, gedroogde bietenpulp, gedroogde eieren, quinoazaadschroot (8%), kippenvet, gedehydrateerde haringproteïne, erwtenvezel, lijnzaad, visolie (van haring), gedroogde broccoli (2.5%), gedroogde asperges (2.5%), fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), poedercellulose, gedroogde biergist, psylliumschillen en zaden, calciumsulfaatdihydraat, kaliumchloride, natriumchloride, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:30c7a3d8f12bb3d5eadea1cc0ce31ddd371e2ff8f4ea4ecb96f11f8c46f1c818', null from p;

-- N&D — Quinoa Skin & Coat medium/maxi Kwartel (2,5 / 7 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-skin-coat-mediummaxi-kwartel-7-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Quinoa Skin & Coat medium/maxi Kwartel', 'kibble', '2,5 / 7 kg', null, 'https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-skin-coat-mediummaxi-kwartel-7-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kwartel (20%), gedroogde kwarteleiwit (20%), erwtenzetmeel, visolie (van haring), quinoazaadschroot (8%), lijnzaad, gedroogde kokosnoot (2.5%), kurkuma (2.5%), inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), calciumcarbonaat, diCalciumfosfaat, psylliumschillen en zaden, kaliumchloride, natriumchloride, gedroogde biergist, aloë vera-extract, glucosamine, chondroïtinesulfaat. Eiwitbronnen: kwartel, gedroogde kwarteleiwit. Koolhydraatbronnen: erwtenzetmeel, quinoazaadschroot.', true, now(), 'sha256:829909ddca530d20174e1bea3a09a9656e8a9f9b847c0d1d7155797049258e4d', null from p;

-- N&D — Ancestral Grain Lam medium/maxi (2,5 / 12 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-ancestral-grain-hondenvoeding-lam-mediummaxi-12-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Ancestral Grain Lam medium/maxi', 'kibble', '2,5 / 12 kg', null, 'https://www.bestpetfoods.nl/product/nd-ancestral-grain-hondenvoeding-lam-mediummaxi-12-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lamsvlees (20%), gedehydrateerde lamproteïne (18%), spelt (10%), haver (10%), gedroogde eieren, haring, gedehydrateerde haringproteïne, kippenvet, visolie (van haring), gedroogde bietenpulp, gedroogde wortelen, luzernemeel, inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde bosbessen (0.5%), gedroogde appel, gedroogde granaatappel, gedroogde zoete sinaasappel, gedroogde spinazie, psylliumschillen en zaden (0.3%), natriumchloride, gedroogde biergist, kurkuma (0.2%), aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:e991521701baa18cdb030e3dc6da8c22ab603baf58085953d21760742e2ae087', null from p;

-- N&D — Prime Lam small breed (800 g / 2,5 kg / 7 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-prime-hondenvoeding-lam-small-breed-7-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Prime Lam small breed', 'kibble', '800 g / 2,5 kg / 7 kg', null, 'https://www.bestpetfoods.nl/product/nd-prime-hondenvoeding-lam-small-breed-7-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lamsvlees (26%), gedehydrateerde lamproteïne (25%), bataten, gedroogde eieren, haring, gedehydrateerde haringproteïne, kippenvet, visolie (van haring), erwtenvezel, gedroogde wortelen, luzernemeel, inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde bosbessen (0.5%), gedroogde appel, gedroogde granaatappel, gedroogde zoete sinaasappel, gedroogde spinazie, psylliumschillen en zaden (0.3%), natriumchloride, gedroogde biergist, kurkuma (0.2%), aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:59cc7c154cfd3ae9cfc3125286ae72104c541074ec910eff62c5ac9385513991', null from p;

-- N&D — Tropical Varken small breed (1,5 / 5 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-tropical-hondenvoeding-varken-small-breed-15-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Tropical Varken small breed', 'kibble', '1,5 / 5 kg', null, 'https://www.bestpetfoods.nl/product/nd-tropical-hondenvoeding-varken-small-breed-15-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Varkensvlees (20%), gedehydrateerd varkenseiwit (20%), spelt (12%), haver (12%), kippenvet, gedehydrateerd haringeiwit, gedroogde bietenpulp, visolie (van haring), gedroogde wortel, luzernemeel, inuline, fructo-oligosacchariden, gistextract (bron van manno-oligosacchariden), gedroogde banaan (0,5%), gedroogde kiwi (0,5%), gedroogde mango (0,5%), gedroogde papaja (0,5%), gedroogde ananas (0,5%) %), gedroogde spinazie, psylliumschillen en -zaden, natriumchloride, gedroogde biergist, kurkuma, aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:292c73fedf14cf40c323929fbf65ef0e7cf1e02beb9e70e249accac860aba442', null from p;

-- N&D — Ocean Zalm medium/maxi (2,5 / 12 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-ocean-hondenvoeding-zalm-mediummaxi-25-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Ocean Zalm medium/maxi', 'kibble', '2,5 / 12 kg', null, 'https://www.bestpetfoods.nl/product/nd-ocean-hondenvoeding-zalm-mediummaxi-25-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Zalm (20%), gedehydrateerde zalmeiwit (20%), bataten, kabeljauw (10%), gedehydrateerde kabeljauw proteïne (10%), visolie (van haring), gedehydrateerde haringproteïne, erwtenvezel, gedroogde wortelen, luzernemeel, inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde meloen (0.5%), gedroogde bosbessen, gedroogde appel, gedroogde spinazie, psylliumschillen en zaden, gedroogde granaatappel, natriumchloride, kaliumchloride, gedroogde biergist, kurkuma (0.2%), aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:fa6e4d911c9780e08e4a5729504bb74682eca7c9ed78314611a9816f60843391', null from p;

-- N&D — Prime puppyvoeding Kip small breed (800 g / 2,5 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-prime-puppyvoeding-kip-small-breed-800-gr
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Prime puppyvoeding Kip small breed', 'kibble', '800 g / 2,5 kg', null, 'https://www.bestpetfoods.nl/product/nd-prime-puppyvoeding-kip-small-breed-800-gr', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip zonder bot (28%), gedehydrateerde kippeneiwit (27%), bataten, kippenvet, gedroogde eieren, haring, gedehydrateerde haringproteïne, visolie (van haring), erwtenvezel, gedroogde wortelen, luzernemeel, kippenkraakbeen (bron van glucosamine en chondroïtinesulfaat), inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde granaatappel (0.5%), gedroogde appel, gedroogde spinazie, psylliumschillen en zaden (0.3%), gedroogde zoete sinaasappel, gedroogde bosbessen, natriumchloride, gedroogde biergist, kurkuma (0.2%), aloë vera-extract.', true, now(), 'sha256:d69e6f0c1cf184696a052415e88ffbeffac9e67b4d2cc38b0c61453cb59812ed', null from p;

-- N&D — Pumpkin Wild Zwijn small breed (800 g / 2,5 kg / 7 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-pumpkin-hondenvoeding-wild-zwijn-small-breed-7-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Pumpkin Wild Zwijn small breed', 'kibble', '800 g / 2,5 kg / 7 kg', null, 'https://www.bestpetfoods.nl/product/nd-pumpkin-hondenvoeding-wild-zwijn-small-breed-7-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Wild zwijn (24%), gedehydrateerde wildzwijnenproteïne (22%), erwtenzetmeel, kippenvet, gedroogd pompoen (5%), gedroogde eieren, visolie (van haring), erwtenvezel, gedroogde wortelen, luzernemeel, inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde appel (0.5%), gedroogde spinazie, psylliumschillen en zaden (0.3%), gedroogde granaatappel, gedroogde zoete sinaasappel, gedroogde bosbessen, natriumchloride, gedroogde biergist, kurkuma (0.2%), aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:1e1caa6b4382a4367dd77e56696980262e08c649573cd21712fe5dcb8e1b5389', null from p;

-- N&D — Quinoa Skin & Coat small breed Hert (800 g / 2,5 kg)
-- bron: https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-skin-coat-small-breed-hert-25-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('N&D', 'Quinoa Skin & Coat small breed Hert', 'kibble', '800 g / 2,5 kg', null, 'https://www.bestpetfoods.nl/product/nd-quinoa-hondenvoeding-skin-coat-small-breed-hert-25-kg', date '2026-11-23', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Hert (20%), gedroogde hertproteïne (20%), erwtenzetmeel, visolie (van haring), quinoazaadschroot (8%), lijnzaad, gedroogde kokosnoot (2.5%), kurkuma (2.5%), inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), calciumcarbonaat, diCalciumfosfaat, psylliumschillen en zaden, kaliumchloride, natriumchloride, gedroogde biergist, aloë vera-extract, glucosamine, chondroïtinesulfaat. Eiwitbronnen: hert, gedroogde hertproteïne. Koolhydraatbronnen: erwtenzetmeel, quinoazaadschroot.', true, now(), 'sha256:fec8c92aa6d213881a0c4ee6811b54caea57e8f26ffb26a38f0d1a7f613eca16', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
