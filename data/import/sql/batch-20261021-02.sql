-- Automatisch overgenomen etiketten, batch 2 van 2026-10-21 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site zegt daarna:
-- "automatisch overgenomen van <domein> op <datum> · nog niet door een mens
-- nagelopen". Er wordt hier geen enkele controle door een mens geclaimd.
begin;

-- Canagan — Vrije-uitloopkip Kleine Rassen (2 / 6 kg)
-- bron: https://canagan.com/nl/hondenvoer/vrije-uitloopkip-kleine-rassen-droog-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Vrije-uitloopkip Kleine Rassen', 'kibble', '2 / 6 kg', null, 'https://canagan.com/nl/hondenvoer/vrije-uitloopkip-kleine-rassen-droog-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide vrije uitloop kip (26%), gedroogde kip (26%), zoete aardappel, erwten, aardappel, kippenvet (4,2%), alfalfa, gedroogd ei (3%), kippenjus (1,5%), zalmolie (1,2%), glucosamine (830 mg/kg), appel, MSM (830 mg/kg), wortel, fructooligosachariden, spinazie, psyllium, zeewier, chondroïtinesulfaat (610 mg/kg), pepermunt, kamille, goudsbloem, veenbes, anijs en fenegriek.', true, now(), 'sha256:f3533b5d6391d772ccf4ee9c8703b07b86cd3b72015f5b8fb00595b0ae87a8f1', null from p;

-- Canagan — Vrije-uitloopkip Light / Senior (2 / 6 kg)
-- bron: https://canagan.com/nl/hondenvoer/vrije-uitloopkip-light-senior-droog-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Vrije-uitloopkip Light / Senior', 'kibble', '2 / 6 kg', null, 'https://canagan.com/nl/hondenvoer/vrije-uitloopkip-light-senior-droog-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide vrije-uitloopkip (27%), gedroogde kip (27%), zoete aardappel, aardappel, erwten, luzerne, gedroogd ei (3%), kippenvet (1,5%), kippenjus (1,5%), mineralen, glucosamine (1.700 mg/kg), MSM (1.700 mg/kg), chondroïtinesulfaat (1.200 mg/kg), appel, wortel, spinazie, psyllium, zeewier, fructo-oligosacchariden, kamille, pepermunt, goudsbloem, cranberry, anijszaad en fenegriek.', true, now(), 'sha256:35e379c6649f8db4cfb4fea229705433dd4d68661e02ea4c42a1abdfc65a750d', null from p;

-- Canagan — Grasgevoerd Lam (2 / 6 kg)
-- bron: https://canagan.com/nl/hondenvoer/grasgevoerd-lam-droog-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Grasgevoerd Lam', 'kibble', '2 / 6 kg', null, 'https://canagan.com/nl/hondenvoer/grasgevoerd-lam-droog-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereid lamsvlees (47.8%), zoete aardappel, erwten, gedroogd lamsvlees (8%), aardappeleiwit, aardappel, zalmolie (2,7%), lamsjus (1%), alfalfa, gedroogd ei (0. 5%), mineralen, appel, wortel, glucosamine (570 mg/kg), MSM (570 mg/kg), fructooligosachariden, spinazie, psyllium, zeewier, chondroïtinesulfaat (410 mg/kg), pepermunt, kamille, goudsbloem, veenbes, anijs & fenegriek.', true, now(), 'sha256:12ba3900265a837ca14416691e935991209ad471c89371687bc4698fe084d0e6', null from p;

-- Canagan — Schotse Zalm (2 / 6 kg)
-- bron: https://canagan.com/nl/hondenvoer/schotse-zalm-droog-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Schotse Zalm', 'kibble', '2 / 6 kg', null, 'https://canagan.com/nl/hondenvoer/schotse-zalm-droog-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers Bereide Schotse Zalm (30,5%), Zoete Aardappel, Gedroogde Haring (12,2%), Erwten, Aardappel, Vers Bereide Forel (6,6%), Gedroogde Zalm (5%), Alfalfa, Gedroogde Witte Vis (2%), Zalmolie (2%), Zalmbouillon (1,8%), Zonnebloemolie, Appel, Wortel, Zeewier, Fructooligosachariden, Spinazie, Psyllium, Kamille, Cranberry, Goudsbloem, Pepermunt, Anijs en Fenegriek.', true, now(), 'sha256:856dfc70ebbe3db280dea0a16bf2e2f8fe6fdf35b8cb21b5826c359da365266d', null from p;

-- Canagan — Schotse Zalm Kleine Rassen (2 / 6 kg)
-- bron: https://canagan.com/nl/hondenvoer/schotse-zalm-kleine-rassen-droog-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Schotse Zalm Kleine Rassen', 'kibble', '2 / 6 kg', null, 'https://canagan.com/nl/hondenvoer/schotse-zalm-kleine-rassen-droog-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers Bereide Schotse Zalm (30,5%), Zoete Aardappel, Gedroogde Haring (12,2%), Erwten, Aardappel, Vers Bereide Forel (6,6%), Gedroogde Zalm (5%), Alfalfa, Gedroogde Witte Vis (2%), Zalmolie (2%), Zalmbouillon (1,8%), Zonnebloemolie, Appel, Wortel, Zeewier, Fructooligosachariden, Spinazie, Psyllium, Kamille, Cranberry, Goudsbloem, Pepermunt, Anijs en Fenegriek.', true, now(), 'sha256:856dfc70ebbe3db280dea0a16bf2e2f8fe6fdf35b8cb21b5826c359da365266d', null from p;

-- Canagan — Wild (2 / 6 kg)
-- bron: https://canagan.com/nl/hondenvoer/wild-droog-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Wild', 'kibble', '2 / 6 kg', null, 'https://canagan.com/nl/hondenvoer/wild-droog-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers Bereide Eend (25,3%), Gedroogde Kalkoen (16,5%), Zoete Aardappel, Erwten, Gedroogde Eend (6%), Gedroogde Eieren (4,2%), Vers Bereid Hert (4%), Alfalfa, Gedroogde Haring (3%) , Kalkoenvet (3%), Zalmolie (1,7%), Kippenjus (1,7%), Aardappel, Glucosamine (780 mg/kg), Appel, MSM (780 mg/kg), Wortel, Fructo-Oligosacchariden, Spinazie, Psyllium, Zeewier, Chondroïtinesulfaat (570 Mg/Kg), Pepermunt, Kamille, Goudsbloem, Cranberry, Anijs En Fenegriek.', true, now(), 'sha256:9c21e287d8464d86e8b57a533e4ef68776954e679e9e9f8f083cd51d88deca7c', null from p;

-- Canagan — Wild Kleine Rassen (2 / 6 kg)
-- bron: https://canagan.com/nl/hondenvoer/wild-kleine-rassen-droog-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Wild Kleine Rassen', 'kibble', '2 / 6 kg', null, 'https://canagan.com/nl/hondenvoer/wild-kleine-rassen-droog-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers Bereide Eend (25,3%), Gedroogde Kalkoen (16,5%), Zoete Aardappel, Erwten, Gedroogde Eend (6%), Gedroogde Eieren (4,2%), Vers Bereid Hert (4%), Alfalfa, Gedroogde Haring (3%) , Kalkoenvet (3%), Zalmolie (1,7%), Kippenjus (1,7%), Aardappel, Glucosamine (780 mg/kg), Appel, MSM (780 mg/kg), Wortel, Fructo-Oligosacchariden, Spinazie, Psyllium, Zeewier, Chondroïtinesulfaat (570 Mg/Kg), Pepermunt, Kamille, Goudsbloem, Cranberry, Anijs En Fenegriek.', true, now(), 'sha256:9c21e287d8464d86e8b57a533e4ef68776954e679e9e9f8f083cd51d88deca7c', null from p;

-- Canagan — Dental (2 / 6 kg)
-- bron: https://canagan.com/nl/hondenvoer/dental-droog-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Dental', 'kibble', '2 / 6 kg', null, 'https://canagan.com/nl/hondenvoer/dental-droog-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide kalkoen (33%), gedroogde kip (18,7%), zoete aardappel, aardappel, erwten, kippenvet (4%), alfalfa, gedroogd ei (3,1%), erwteneiwit, kippenjus (1,6%), zalmolie (1,2%), mineralen, PlaqueOff (2.500 mg/kg), glucosamine (850 mg/kg), MSM (850 mg/kg), appel, wortel, fructooligosachariden, spinazie, psyllium, chondroïtinesulfaat (620mg/kg), pepermunt, kamille, goudsbloem, veenbes, peterselie, anijs & fenegriek.', true, now(), 'sha256:b16e5b97d2026737285e10827aa37ee6a7181257592bb15e1a5d39e3bb6cb8f7', null from p;

-- Canagan — Dental Kleine Rassen (2 / 6 kg)
-- bron: https://canagan.com/nl/hondenvoer/dental-kleine-rassen-droog-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Dental Kleine Rassen', 'kibble', '2 / 6 kg', null, 'https://canagan.com/nl/hondenvoer/dental-kleine-rassen-droog-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide kalkoen (33%), gedroogde kip (18,7%), zoete aardappel, aardappel, erwten, kippenvet (4%), alfalfa, gedroogd ei (3,1%), erwteneiwit, kippenjus (1,6%), zalmolie (1,2%), mineralen, (2.500 mg/kg), glucosamine (850 mg/kg), MSM (850 mg/kg), appel, wortel, fructooligosachariden, spinazie, psyllium, chondroïtinesulfaat (620mg/kg), pepermunt, kamille, goudsbloem, veenbes, peterselie, anijs & fenegriek.', true, now(), 'sha256:2831e2a6c7eff97b17ec3034ef4ba80196fc37d51d1478d8e41ec0f54444ab69', null from p;

-- Canagan — Senior & Light Small Breed (2 / 6 kg)
-- bron: https://canagan.com/nl/hondenvoer/canagan-hondenbrokken-senior-light-small-breed/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Senior & Light Small Breed', 'kibble', '2 / 6 kg', null, 'https://canagan.com/nl/hondenvoer/canagan-hondenbrokken-senior-light-small-breed/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide kip van vrije uitloop (27%), gedroogde kip (27%), zoete aardappel, aardappel, erwten, luzerne, gedroogd ei (3%), kippenvet (2,3%), kippenjus (1,5%), glucosamine (1.440 mg/kg), MSM (1.440 mg/kg), appel, wortel, fructo-oligosacchariden, spinazie, psyllium, zeewier, chondroïtinesulfaat (1.050 mg/kg), pepermunt, kamille, goudsbloem, cranberry, anijszaad & fenegriek.', true, now(), 'sha256:87cadecc5a16408f3ab7336b8fbe9ef1e4ccdc60d3992ee53aebbfe6d54c5757', null from p;

-- Canagan — Petite Kip & Eend (2 / 6 kg)
-- bron: https://canagan.com/nl/hondenvoer/canagan-petite-hondevoer-kip-eend/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Petite Kip & Eend', 'kibble', '2 / 6 kg', null, 'https://canagan.com/nl/hondenvoer/canagan-petite-hondevoer-kip-eend/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereid scharrelkip (31%), vers bereide eend (20,5%), zoete aardappel, gedroogde kip (12%), aardappel, gedroogde eend (3,7%), erwten, gedroogd ei (1,5%), luzerne, eendensaus (1,2%), kippenjus (0,6%), glucosamine (1.000 mg/kg), MSM (1.000 mg/kg), appel, wortel, psyllium, zeewier, fructo-oligosacchariden, spinazie, chondroïtinesulfaat (700 mg/kg), veenbes, kamille, pepermunt, goudsbloem, anijszaad & fenegriek.', true, now(), 'sha256:ae5eb81c2367763d357b43dbeff817307fee76fcad73b61ebfea94ccc98bbc60', null from p;

-- Canagan — Petite Kip & Zalm (2 / 6 kg)
-- bron: https://canagan.com/nl/hondenvoer/canagan-petite-hondevoer-kip-zalm/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Petite Kip & Zalm', 'kibble', '2 / 6 kg', null, 'https://canagan.com/nl/hondenvoer/canagan-petite-hondevoer-kip-zalm/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereid scharrelkip (29%), vers bereide Schotse zalm (20%), zoete aardappel, gedroogde kip (10%), aardappel, erwten, gedroogde zalm (5,5%), kippenjus (1,85%), glucosamine (1.780 mg/kg), MSM (1.780 mg/kg), luzerne, gedroogd ei (0,62%), chondroïtinesulfaat (1.250 mg/kg), appel, wortel, psyllium, zeewier, fructo-oligosacchariden, spinazie, veenbes, kamille, pepermunt, goudsbloem, anijszaad & fenegriek.', true, now(), 'sha256:474a040238fb0237b35e40a0d0f659f64732f3e08766a225c7e06922a13f2221', null from p;

-- Canagan — Puppy Vrije-uitloopkip (2 / 6 / 12 kg)
-- bron: https://canagan.com/uk/dog-food/free-range-chicken-dry-puppy-food/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Puppy Vrije-uitloopkip', 'kibble', '2 / 6 / 12 kg', null, 'https://canagan.com/uk/dog-food/free-range-chicken-dry-puppy-food/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide vrije-uitloopkip (29%), gedroogde kip (26%), zoete aardappel, aardappel, erwten, kippenvet (4%), alfalfa, gedroogd ei (3,1%), kippenjus (1,6%), mineralen, zalmolie (1,2%), glucosamine (820 mg/kg), MSM (820 mg/kg), appel, wortel, fructo-oligosachariden, spinazie, psyllium, zeewier, chondroïtinesulfaat (600 mg/kg), pepermunt, kamille, goudsbloem, veenbes, anijs & fenegriek.', true, now(), 'sha256:4f89e0fb1a4af21cb3e8c90e262e1fa016eaec98655ad07d0516d05f38513dbe', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Canagan — Hoogland Feestmaal (2 / 6 / 12 kg)
-- bron: https://canagan.com/uk/dog-food/highland-feast-dry-dog-food/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Hoogland Feestmaal', 'kibble', '2 / 6 / 12 kg', null, 'https://canagan.com/uk/dog-food/highland-feast-dry-dog-food/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide eend (14%), vers bereide kalkoen (14%), zoete aardappel, gedroogde kalkoen (11,8%), gedroogde kip (7,4%), tapioca, vers bereide fazant (4,4%), linzen, kikkererwten, gedroogde zalm (3,6%), gedroogde haring (3,6%), alfalfa, kippenvet (3%), gedroogd ei (2%), kippenjus (1,5%), zalmolie (0,75%), glucosamine (780 mg/kg), MSM (780 mg/kg), appel, wortel, fructo-oligosachariden, spinazie, psyllium, zeewier, chondroïtinesulfaat (570 mg/kg), pepermunt, kamille, veenbes, goudsbloem, anijs & fenegriek.', true, now(), 'sha256:72b7ae39dc527a7a54dc6e960b54ae6dfd48bd2cc98c0f9faea697aeae03b73c', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Canagan — Insect (1,5 / 5 / 10 kg)
-- bron: https://canagan.com/uk/dog-food/insect-dry-dog-food/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Insect', 'kibble', '1,5 / 5 / 10 kg', null, 'https://canagan.com/uk/dog-food/insect-dry-dog-food/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '49,8% insect (vers bereide insecten 25%*, gedroogde insecten 19,3%*, insectenolie 5,5%)*, zoete aardappel, aardappel, erwten, aardappeleiwit, mineralen, zalmolie (1,2%), alfalfa, fructo-oligosachariden, glucosamine (860 mg/kg), MSM (860 mg/kg), appel, wortel, spinazie, psyllium, zeewier, chondroïtinesulfaat (620 mg/kg), pepermunt, kamille, goudsbloem, veenbes, anijs & fenegriek. *Larven van de zwarte soldatenvlieg.', true, now(), 'sha256:0cb102928beb4d7ae6a57fb655e58e95aa1cb53bfef9c5f9c75a1f8235a7ce5b', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Canagan — Werkhond (2 / 12 kg)
-- bron: https://canagan.com/uk/dog-food/canagan-working-dog-dry-dog-food/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Werkhond', 'kibble', '2 / 12 kg', null, 'https://canagan.com/uk/dog-food/canagan-working-dog-dry-dog-food/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '56,1% kip & kalkoen (vers bereide vrije-uitloopkip 20,4%, gedroogde kip 19%, vers bereide kalkoen 10,2%, kalkoenvet 5%, kippenjus 1,5%), zoete aardappel, aardappelen, erwten, alfalfa, heel ei (3%), zalmolie (2%), mineralen, glucosamine (1.850 mg), MSM (1.850 mg), chondroïtinesulfaat (1.350 mg), appel, wortel, fructo-oligosachariden, spinazie, psyllium, zeewier, pepermunt, kamille, goudsbloem, veenbes, anijs & fenegriek.', true, now(), 'sha256:339a83d564bd63ce62f000ab0d5c08ca4a5365f402e495de4dcc44a856c99586', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Canagan — Zalm en Haring Lunch (400 g)
-- bron: https://canagan.com/nl/hondenvoer/zalm-en-haring-nat-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Zalm en Haring Lunch', 'wet', '400 g', null, 'https://canagan.com/nl/hondenvoer/zalm-en-haring-nat-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide zalm (35%), vers bereide MSC-gecertificeerde haring (30%), zoete aardappel, wortelen, erwten, broccoli, mineralen, groenlipmossel*, zalmolie, appel, spinazie, zeewier, peterselie, yucca, rozenbottels, brandnetel, goudsbloem, rode iep, anijszaad, pepermunt, rozemarijn. *Bron van glucosamine (100 mg/kg).', true, now(), 'sha256:81ad7fe7fc1308d86cbc9a5f7bfd5446238fba17e48a922f2e2ccd6b5537723b', null from p;

-- Canagan — Diner met Kalkoen en Eend (400 g)
-- bron: https://canagan.com/nl/hondenvoer/diner-met-kalkoen-en-eend-nat-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Diner met Kalkoen en Eend', 'wet', '400 g', null, 'https://canagan.com/nl/hondenvoer/diner-met-kalkoen-en-eend-nat-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide kalkoen (40%), vers bereide eend (25%), zoete aardappel, wortelen, erwten, broccoli, mineralen, groenlipmossel*, zalmolie, appel, spinazie, zeewier, peterselie, yucca, rozenbottels, brandnetel, goudsbloem, rode iep, anijszaad, pepermunt, rozemarijn. *Bron van glucosamine (100 mg/kg).', true, now(), 'sha256:9670bea1e624a933cebbce5358777cecc4f1284c6fa9436f835f4f22c86a593b', null from p;

-- Canagan — Kip Hotpot (400 g)
-- bron: https://canagan.com/nl/hondenvoer/kip-hotpot-nat-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Kip Hotpot', 'wet', '400 g', null, 'https://canagan.com/nl/hondenvoer/kip-hotpot-nat-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide scharrelkip (65%), zoete aardappel, wortelen, erwten, broccoli, mineralen, groenlipmossel*, zalmolie, appel, spinazie, zeewier, peterselie, yucca, rozenbottels, brandnetel, goudsbloem, rode iep, anijszaad, pepermunt, rozemarijn. *Bron van glucosamine (100 mg/kg).', true, now(), 'sha256:06a9fe731b6fb51a769bd17b00fd49cb7044ddd6d9f0505cbb001353fe7388c9', null from p;

-- Canagan — Lamsschotel (400 g)
-- bron: https://canagan.com/nl/hondenvoer/lamsschotel-nat-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Lamsschotel', 'wet', '400 g', null, 'https://canagan.com/nl/hondenvoer/lamsschotel-nat-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereid lam (65%), zoete aardappel, wortelen, erwten, broccoli, mineralen, groenlipmossel*, zalmolie, appel, spinazie, zeewier, peterselie, yucca, rozenbottels, brandnetel, goudsbloem, rode iep, anijszaad, pepermunt, rozemarijn. *Bron van glucosamine (100 mg/kg).', true, now(), 'sha256:68697e1e1154740d21e5e026cbd10136f71b06cbea4558b96468362f352509bf', null from p;

-- Canagan — Puppy-Feestmaal (400 g)
-- bron: https://canagan.com/nl/hondenvoer/puppyfeestmaal-nat-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Puppy-Feestmaal', 'wet', '400 g', null, 'https://canagan.com/nl/hondenvoer/puppyfeestmaal-nat-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide scharrelkip (35%), vers bereid rundvlees (30%), zoete aardappel, wortelen, erwten, broccoli, mineralen, groenlipmossel*, zalmolie, appel, spinazie, zeewier, peterselie, yucca, rozenbottels, brandnetel, goudsbloem, rode iep, anijszaad, pepermunt, rozemarijn. *Bron van glucosamine (100 mg/kg).', true, now(), 'sha256:1f6a8ce45fd97d5150a208cfb9e30e8db3521d9b35be3dd0d5839fea42c74481', null from p;

-- Canagan — Runderstoof (400 g)
-- bron: https://canagan.com/nl/hondenvoer/runderstoof-nat-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Runderstoof', 'wet', '400 g', null, 'https://canagan.com/nl/hondenvoer/runderstoof-nat-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereid rundvlees (65%), zoete aardappel, wortelen, erwten, broccoli, mineralen, groenlipmossel*, zalmolie, appel, spinazie, zeewier, peterselie, yucca, rozenbottels, brandnetel, goudsbloem, rode iep, anijszaad, pepermunt, rozemarijn. *Bron van glucosamine (100 mg/kg).', true, now(), 'sha256:ed9d6a91550ba2c90b87cbb88a7d61e1eac35220797ae174e78aa086b60de144', null from p;

-- Canagan — Scharrelkip (400 g)
-- bron: https://canagan.com/nl/hondenvoer/scharrelkip-nat-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Scharrelkip', 'wet', '400 g', null, 'https://canagan.com/nl/hondenvoer/scharrelkip-nat-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide scharrelkip (65%), zoete aardappel, prebiotica: (cichorei, banaan), broccoli, mineralen, groenlipmossel*, zalmolie, appel, spinazie, zeewier, peterselie, yucca, rozenbottels, brandnetel, goudsbloem, rode iep, anijszaad, pepermunt, rozemarijn. *Bron van glucosamine (100 mg/kg).', true, now(), 'sha256:56d4578128ee9f983638be01ee18e521e950519ff7f064e18f1f3abe4d42c39e', null from p;

-- Canagan — Schotel met Kip en Wild Zwijn (400 g)
-- bron: https://canagan.com/nl/hondenvoer/schotel-met-kip-en-wild-zwijn-nat-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Schotel met Kip en Wild Zwijn', 'wet', '400 g', null, 'https://canagan.com/nl/hondenvoer/schotel-met-kip-en-wild-zwijn-nat-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide scharrelkip (39%), vers bereid wild zwijn (26%), zoete aardappel, wortelen, erwten, biologische broccoli, mineralen, groenlipmossel*, zalmolie, appel, spinazie, zeewier, peterselie, yucca, rozenbottels, brandnetel, goudsbloem, rode iep, anijszaad, pepermunt, rozemarijn. *Bron van glucosamine (100 mg/kg).', true, now(), 'sha256:2bc40fed0bf121e81a15d23cf88511c5347c1e4542564c207c654cd4b3ab2de1', null from p;

-- Canagan — Senior-Feestmaal (400 g)
-- bron: https://canagan.com/nl/hondenvoer/senior-feestmaal-nat-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Senior-Feestmaal', 'wet', '400 g', null, 'https://canagan.com/nl/hondenvoer/senior-feestmaal-nat-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide scharrelkip (40%), vers bereide kalkoen (20%), zoete aardappel, wortelen, erwten, peterselie, cranberry, broccoli, mineralen, groenlipmossel, zalmolie, zeewier, mariadistel, appel, spinazie, glucosamine (1.000 mg/kg), chondro√Øtine (1.000 mg/kg), rozenbottels, brandnetel, goudsbloem, rode iep, anijszaad, pepermunt, rozemarijn.', true, now(), 'sha256:2a0a1e289c23bdaf8869331b0ec4b61d9f6c932a94e113cb9b0b780549f8ae66', null from p;

-- Canagan — Stoof met Hert en Wild Zwijn (400 g)
-- bron: https://canagan.com/nl/hondenvoer/stoof-met-hert-en-wild-zwijn-nat-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Stoof met Hert en Wild Zwijn', 'wet', '400 g', null, 'https://canagan.com/nl/hondenvoer/stoof-met-hert-en-wild-zwijn-nat-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereid hert (35%), vers bereid wild zwijn (30%), zoete aardappel, wortelen, erwten, broccoli, mineralen, groenlipmossel*, zalmolie, appel, spinazie, zeewier, peterselie, yucca, rozenbottels, brandnetel, goudsbloem, rode iep, anijszaad, pepermunt, rozemarijn. *Bron van glucosamine (100 mg/kg).', true, now(), 'sha256:1e6a2c4e33743e21b135d502ecec4974f8a459ccd9213fcbc1663875d2e61155', null from p;

-- Canagan — Wild Nat (400 g)
-- bron: https://canagan.com/nl/hondenvoer/wild-nat-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Wild Nat', 'wet', '400 g', null, 'https://canagan.com/nl/hondenvoer/wild-nat-hondenvoer/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereid hert (25%), vers bereide eend (20%), vers bereide gans (20%), zoete aardappel, wortelen, erwten, broccoli, mineralen, groenlipmossel*, zalmolie, appel, spinazie, zeewier, peterselie, yucca, rozenbottels, brandnetel, goudsbloem, rode iep, anijszaad, pepermunt, rozemarijn. *Bron van glucosamine (100 mg/kg).', true, now(), 'sha256:9a17e19051e0624f9345761ab1420af6baa12e2c4eac5c7e60df713bb232ed32', null from p;

-- Canagan — Petite Runderstoof Paté (100 g)
-- bron: https://canagan.com/uk/dog-food/petite-beef-stew-pate-dog-food/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Petite Runderstoof Paté', 'wet', '100 g', null, 'https://canagan.com/uk/dog-food/petite-beef-stew-pate-dog-food/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rund 66%, biologische wortelen* 2%, biologische erwten* 2%, gedroogde biologische appel* 0,7%, gedroogde spinazie 0,7%, mineralen 0,01% (glucosaminesulfaat), zonnebloemolie, zoete aardappel, broccoli, zalmolie 0,1%, gedroogd zeewier, rozenbottels, peterselie, goudsbloem, yucca, brandnetel, pepermunt, rozemarijn, groenlipmosselpoeder 0,1%, anijszaad. *Van gecertificeerde biologische productie. NL-BIO-01. EU/ niet-EU-landbouw.', true, now(), 'sha256:c29f5521d736477defb3ffca61340b014593b03a0d99ec70508c3bee37d9b8e2', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Canagan — Petite Kip Hotpot Paté (100 g)
-- bron: https://canagan.com/uk/dog-food/petite-chicken-hotpot-pate-dog-food/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Petite Kip Hotpot Paté', 'wet', '100 g', null, 'https://canagan.com/uk/dog-food/petite-chicken-hotpot-pate-dog-food/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip 66%, zoete aardappel 4%, cichorei (0,4% inuline), gedroogde biologische appel* (0,7%), broccoli, gedroogde spinazie (0,7%), mineralen 0,01% (glucosaminesulfaat), zalmolie, gist, groenlipmosselpoeder 0,1%, gedroogd zeewier, rozenbottels, peterselie, goudsbloem, yucca, brandnetel, pepermunt, rozemarijn, anijszaad. *Van gecertificeerde biologische productie. NL-BIO-01. EU/ niet-EU-landbouw.', true, now(), 'sha256:acecb5c876384956853ff22f05c846eb0b2cb4f01bcdf7c9fd6a899d8e2080d3', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Canagan — Petite Kip met Wild Zwijn Paté (100 g)
-- bron: https://canagan.com/uk/dog-food/petite-chicken-wild-boar-pate-dog-food/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Petite Kip met Wild Zwijn Paté', 'wet', '100 g', null, 'https://canagan.com/uk/dog-food/petite-chicken-wild-boar-pate-dog-food/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip 39%, wild zwijn 26%, zoete aardappel 4%, broccoli, gedroogde biologische appel* 0,7%, zonnebloemolie, gedroogde spinazie 0,7%, mineralen 0,01% (glucosaminesulfaat), zalmolie 0,1%, groenlipmosselpoeder 0,1%, gedroogd zeewier, rozenbottels, peterselie, goudsbloem, yucca, brandnetel, pepermunt, rozemarijn, anijszaad. *Van gecertificeerde biologische productie. NL-BIO-01. EU/ niet-EU-landbouw.', true, now(), 'sha256:455216309bc8cd4e4953b9c4b37e597c36ba05edace9efcd5ac43763ac93a08f', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Canagan — Petite Kabeljauw met Haring Paté (100 g)
-- bron: https://canagan.com/uk/dog-food/petite-cod-herring-pate-dog-food/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Petite Kabeljauw met Haring Paté', 'wet', '100 g', null, 'https://canagan.com/uk/dog-food/petite-cod-herring-pate-dog-food/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'MSC-kabeljauw* 61%, MSC-haring* 4%, biologische wortelen** 2%, biologische erwten** 2%, zonnebloemolie, biologische gedroogde appel** 0,7%, gedroogde spinazie 0,7%, mineralen 0,01% (glucosaminesulfaat), zalmolie, zoete aardappel, broccoli, groenlipmosselpoeder 0,1%, gedroogd zeewier, rozenbottels, peterselie, goudsbloem, yucca, brandnetel, pepermunt, rozemarijn, anijszaad. *Van een MSC-gecertificeerde duurzame visserij. www.msc.org **Van gecertificeerde biologische productie. NL-BIO-01. EU/ niet-EU-landbouw.', true, now(), 'sha256:32f006c78947f7553667204881997db78802b5b36b1ddc6c0a69c62ccc553953', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Canagan — Petite Wild Paté (100 g)
-- bron: https://canagan.com/uk/dog-food/petite-country-game-hotpot-pate-dog-food/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Petite Wild Paté', 'wet', '100 g', null, 'https://canagan.com/uk/dog-food/petite-country-game-hotpot-pate-dog-food/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Wildvlees 65% (hert 25%, gans 20% & eend 20%), zoete aardappel 1,5%, biologische wortelen* 1,5%, biologische erwten* 1,5%, broccoli, gedroogde biologische appel* 0,7%, zonnebloemolie, gedroogde spinazie 0,7%, mineralen 0,01% (glucosaminesulfaat), zalmolie, groenlipmosselpoeder 0,1%, gedroogd zeewier, rozenbottels, peterselie, goudsbloem, yucca, brandnetel, pepermunt, rozemarijn, anijszaad. *Van gecertificeerde biologische productie. NL-BIO-01. EU/ niet-EU-landbouw.', true, now(), 'sha256:3248bb22625c1bdeb9b4a7ef3cf6e4ec36c8b5d84ec5dcea10bfa531a68e3dd0', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Canagan — Petite Lamsstoof Paté (100 g)
-- bron: https://canagan.com/uk/dog-food/petite-lamb-casserole-pate-dog-food/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Petite Lamsstoof Paté', 'wet', '100 g', null, 'https://canagan.com/uk/dog-food/petite-lamb-casserole-pate-dog-food/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam 66%, biologische wortelen* 2%, biologische erwten* 2%, biologische gedroogde appel* 0,7%, gedroogde spinazie 0,7%, mineralen 0,01% (glucosaminesulfaat), zoete aardappel, broccoli, zalmolie, groenlipmosselpoeder 0,1%, gedroogd zeewier, rozenbottels, peterselie, goudsbloem, yucca, brandnetel, pepermunt, rozemarijn, anijszaad. *Van gecertificeerde biologische productie. NL-BIO-01. EU/ niet-EU-landbouw.', true, now(), 'sha256:e970795d948f5a48dc8498bfc3b4d5e0f87f28d7ce143f19de3b8509724be807', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Canagan — Petite Kalkoen met Eend Paté (100 g)
-- bron: https://canagan.com/uk/dog-food/petite-turkey-duck-pate-dog-food/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Canagan', 'Petite Kalkoen met Eend Paté', 'wet', '100 g', null, 'https://canagan.com/uk/dog-food/petite-turkey-duck-pate-dog-food/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '65% kalkoen & eend (kalkoen 40%, eend 25%), biologische wortelen* 2%, biologische erwten* 2%, biologische gedroogde appel* 0,7%, gedroogde spinazie 0,7%, mineralen 0,01% (glucosaminesulfaat), zoete aardappel, broccoli, zalmolie, groenlipmosselpoeder 0,1%, gedroogd zeewier, rozenbottels, peterselie, goudsbloem, yucca, brandnetel, pepermunt, rozemarijn, anijszaad. *Van gecertificeerde biologische productie. NL-BIO-01. EU/ niet-EU-landbouw.', true, now(), 'sha256:5c8b8cf4fcb7f33a2d2a3deccdc19a5438bacc39bad4ce652740d23afe18009e', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Active Droogvoer met Zalm voor Volwassen Honden (null)
-- bron: https://carnilove.com/en/products/active-dry-food-made-with-salmon-for-adult-dogs
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Active Droogvoer met Zalm voor Volwassen Honden', 'kibble', 'null', null, 'https://carnilove.com/en/products/active-dry-food-made-with-salmon-for-adult-dogs', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse zalm (26%), zalmeiwit (26%), gele erwten, gehydrolyseerd zalmeiwit (8%), rundvet (4,5%), gehydrolyseerde lever (3%), erwteneiwit, zalmolie (2,5%), kikkererwten, gedroogde appelpulp, lijnzaad, pompoen, wortels, kaliumchloride, erwtenmeel, gedroogde duindoorn (0,2%), gedroogde gemberwortel (0,1%), gedroogde bosbessen (0,1%), gedroogde rozemarijn (0,1%), gedroogde cranberries (0,1%), gedroogde tijm (0,1%), gehydrolyseerde schaaldierenschalen (bron van glucosamine, 0,022%), cichoreiwortel (bron van fructo-oligosachariden, 0,0163%), kraakbeenextract (bron van chondroïtine, 0,014%), biergist (bron van mannan-oligosachariden, 0,013%), Mojave yucca (0,0085%).', true, now(), 'sha256:49d894364647696e435cc22c2084583aba50adf8264fd71d2f7c24f3b2c18e76', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Active Droogvoer met Zalm & Kalkoen voor Kleine Honden (12 kg + 4 kg)
-- bron: https://carnilove.com/en/products/active-dry-food-made-with-salmon-and-turkey-for-small-dogs
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Active Droogvoer met Zalm & Kalkoen voor Kleine Honden', 'kibble', '12 kg + 4 kg', null, 'https://carnilove.com/en/products/active-dry-food-made-with-salmon-and-turkey-for-small-dogs', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse zalm (26%), kalkoeneiwit (23%), gele erwten, rundvet (13%), gehydrolyseerd kalkoeneiwit (9%), gehydrolyseerde lever (3%), erwteneiwit, lijnzaad, zalmolie (1%), kikkererwten, pompoen, gedroogde appelpulp, wortels, kaliumchloride, erwtenmeel, gedroogde duindoorn (0,2%), gedroogde gemberwortel (0,1%), gedroogde bosbessen (0,1%), gedroogde rozemarijn (0,1%), gedroogde cranberries (0,1%), gedroogde tijm (0,1%), gehydrolyseerde schaaldierenschalen (bron van glucosamine, 0,022%), cichoreiwortel (bron van fructo-oligosachariden, 0,0163%), kraakbeenextract (bron van chondroïtine, 0,014%), biergist (bron van mannan-oligosachariden, 0,013%), Mojave yucca (0,0085%).', true, now(), 'sha256:66c6bfacb69ac468ab3b7473bdf671ccddaac652d2efa4e9911c2d797d4ec0c7', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Active Droogvoer met Zalm & Kalkoen voor Grote Honden (12 kg + 4 kg)
-- bron: https://carnilove.com/en/products/active-dry-food-made-with-salmon-and-turkey-for-large-dogs
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Active Droogvoer met Zalm & Kalkoen voor Grote Honden', 'kibble', '12 kg + 4 kg', null, 'https://carnilove.com/en/products/active-dry-food-made-with-salmon-and-turkey-for-large-dogs', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse zalm (26%), kalkoeneiwit (24%), gele erwten, rundvet (9%), gehydrolyseerd kalkoeneiwit (7%), gedroogde appelpulp, erwteneiwit, gehydrolyseerde lever (3%), kikkererwten, lijnzaad, pompoen, zalmolie (1%), wortels, kaliumchloride, erwtenmeel, gedroogde duindoorn (0,2%), gedroogde gemberwortel (0,1%), gedroogde bosbessen (0,1%), gedroogde rozemarijn (0,1%), gedroogde cranberries (0,1%), gedroogde tijm (0,1%), gehydrolyseerde schaaldierenschalen (bron van glucosamine, 0,022%), cichoreiwortel (bron van fructo-oligosachariden, 0,0163%), kraakbeenextract (bron van chondroïtine, 0,014%), biergist (bron van mannan-oligosachariden, 0,013%), Mojave yucca (0,0085%).', true, now(), 'sha256:42ebb30ec5e0673ad72aa69eb6d49c2d38435079b8787efe906a0c5e822cea56', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Active Droogvoer met Zalm & Kalkoen voor Junior Grote Honden (12 kg + 4 kg)
-- bron: https://carnilove.com/en/products/active-dry-food-made-with-salmon-and-turkey-for-junior-dogs
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Active Droogvoer met Zalm & Kalkoen voor Junior Grote Honden', 'kibble', '12 kg + 4 kg', null, 'https://carnilove.com/en/products/active-dry-food-made-with-salmon-and-turkey-for-junior-dogs', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse zalm (26%), kalkoeneiwit (24%), gele erwten, rundvet (8,5%), gehydrolyseerd kalkoeneiwit (7,5%), gedroogde appelpulp, erwteneiwit, gehydrolyseerde lever (3%), kikkererwten, lijnzaad, pompoen, zalmolie (1%), wortels, kaliumchloride, erwtenmeel, gedroogde duindoorn (0,2%), gedroogde gemberwortel (0,1%), gedroogde bosbessen (0,1%), gedroogde rozemarijn (0,1%), gedroogde cranberries (0,1%), gedroogde tijm (0,1%), gehydrolyseerde schaaldierenschalen (bron van glucosamine, 0,022%), cichoreiwortel (bron van fructo-oligosachariden, 0,0163%), kraakbeenextract (bron van chondroïtine, 0,014%), biergist (bron van mannan-oligosachariden, 0,013%), Mojave yucca (0,0085%).', true, now(), 'sha256:817f196cd7a8c58fe470526c56ebe11bd5b877668b708d23dd3ef42ef6bcf8f6', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Active Droogvoer met Zalm & Kalkoen voor Volwassen Honden (12 kg + 4 kg)
-- bron: https://carnilove.com/en/products/active-dry-food-made-with-salmon-and-turkey-for-adult-dogs
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Active Droogvoer met Zalm & Kalkoen voor Volwassen Honden', 'kibble', '12 kg + 4 kg', null, 'https://carnilove.com/en/products/active-dry-food-made-with-salmon-and-turkey-for-adult-dogs', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse zalm (26%), gele erwten, zalmeiwit (15%), kalkoeneiwit (10%), rundvet (10%), gehydrolyseerd kalkoeneiwit (5%), gehydrolyseerde lever (3%), erwteneiwit, kikkererwten, gedroogde appelpulp, lijnzaad, pompoen, zalmolie (1%), wortels, kaliumchloride, erwtenmeel, gedroogde duindoorn (0,2%), gedroogde gemberwortel (0,1%), gedroogde bosbessen (0,1%), gedroogde rozemarijn (0,1%), gedroogde cranberries (0,1%), gedroogde tijm (0,1%), gehydrolyseerde schaaldierenschalen (bron van glucosamine, 0,022%), cichoreiwortel (bron van fructo-oligosachariden, 0,0163%), kraakbeenextract (bron van chondroïtine, 0,014%), biergist (bron van mannan-oligosachariden, 0,013%), Mojave yucca (0,0085%).', true, now(), 'sha256:a7d2164ef95a2474f3c53e23e63a3e1430ca8039755ba7cbc072a72ae446c2bf', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Active Droogvoer met Eend & Fazant (12 kg + 4 kg)
-- bron: https://carnilove.com/en/products/active-dry-dog-food-made-with-duck-and-pheasant
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Active Droogvoer met Eend & Fazant', 'kibble', '12 kg + 4 kg', null, 'https://carnilove.com/en/products/active-dry-dog-food-made-with-duck-and-pheasant', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse eend (26%), gele erwten, gehydrolyseerd fazanteiwit (14%), rundvet (12%), eendeneiwit (10%), gehydrolyseerd kalkoeneiwit (4%), erwteneiwit, gehydrolyseerde lever (3%), kikkererwten, gedroogde appelpulp, lijnzaad, pompoen, zalmolie (1%), wortels, kaliumchloride, erwtenmeel, gedroogde duindoorn (0,2%), gedroogde gemberwortel (0,1%), gedroogde bosbessen (0,1%), gedroogde rozemarijn (0,1%), gedroogde cranberries (0,1%), gedroogde tijm (0,1%), gehydrolyseerde schaaldierenschalen (bron van glucosamine, 0,022%), cichoreiwortel (bron van fructo-oligosachariden, 0,0163%), kraakbeenextract (bron van chondroïtine, 0,014%), biergist (bron van mannan-oligosachariden, 0,013%), Mojave yucca (0,0085%).', true, now(), 'sha256:9f7dd8e8883da02de46059af5bc0baa32adb8924370b749a9402ea0cca855fa8', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Active Droogvoer met Lam & Wild Zwijn (12 kg + 4 kg)
-- bron: https://carnilove.com/en/products/active-dry-dog-food-made-with-lamb-and-wild-boar
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Active Droogvoer met Lam & Wild Zwijn', 'kibble', '12 kg + 4 kg', null, 'https://carnilove.com/en/products/active-dry-dog-food-made-with-lamb-and-wild-boar', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers lam (26%), lameiwit (26%), gele erwten, rundvet (10%), eiwit van wild zwijn (4%), gehydrolyseerde lever (3%), kikkererwten, gedroogde appelpulp, lijnzaad, pompoen, zalmolie (1%), wortels, kaliumchloride, erwtenmeel, gedroogde duindoorn (0,2%), gedroogde gemberwortel (0,1%), gedroogde bosbessen (0,1%), gedroogde rozemarijn (0,1%), gedroogde cranberries (0,1%), gedroogde tijm (0,1%), gehydrolyseerde schaaldierenschalen (bron van glucosamine, 0,022%), cichoreiwortel (bron van fructo-oligosachariden, 0,0163%), kraakbeenextract (bron van chondroïtine, 0,014%), biergist (bron van mannan-oligosachariden, 0,013%), Mojave yucca (0,0085%).', true, now(), 'sha256:e8f73773e3e2e6ed4591cc86724f7a55d5866e991ba4b592b9b54b4fbb9edf03', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Active Droogvoer met Hert & Rendier (12 kg + 4 kg)
-- bron: https://carnilove.com/en/products/active-dry-dog-food-made-with-venison-and-reindeer
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Active Droogvoer met Hert & Rendier', 'kibble', '12 kg + 4 kg', null, 'https://carnilove.com/en/products/active-dry-dog-food-made-with-venison-and-reindeer', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers hertenvlees (26%), gele erwten, rendiereiwit (14%), rundvet (14%), gehydrolyseerd kalkoeneiwit (8%), eiwit van wild zwijn (4%), gehydrolyseerde lever (3%), kikkererwten, lijnzaad, pompoen, gedroogde appelpulp, zalmolie (1%), wortels, kaliumchloride, erwtenmeel, gedroogde duindoorn (0,2%), gedroogde gemberwortel (0,1%), gedroogde bosbessen (0,1%), gedroogde rozemarijn (0,1%), gedroogde cranberries (0,1%), gedroogde tijm (0,1%), gehydrolyseerde schaaldierenschalen (bron van glucosamine, 0,022%), cichoreiwortel (bron van fructo-oligosachariden, 0,0163%), kraakbeenextract (bron van chondroïtine, 0,014%), biergist (bron van mannan-oligosachariden, 0,013%), Mojave yucca (0,0085%).', true, now(), 'sha256:7756bfb68462e839febb327a1dd904a7082ecf09b4353347519dbb0d9da82d16', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Active Droogvoer met Zalm & Kalkoen voor Puppy's (12 kg + 4 kg)
-- bron: https://carnilove.com/en/products/active-dry-food-made-with-salmon-and-turkey-for-puppies
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Active Droogvoer met Zalm & Kalkoen voor Puppy''s', 'kibble', '12 kg + 4 kg', null, 'https://carnilove.com/en/products/active-dry-food-made-with-salmon-and-turkey-for-puppies', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse zalm (26%), kalkoeneiwit (20%), gele erwten, rundvet (12,5%), gehydrolyseerd kalkoeneiwit (12%), gehydrolyseerde lever (3%), erwteneiwit, lijnzaad, zalmolie (1,5%), kikkererwten, pompoen, gedroogde appelpulp, wortels, kaliumchloride, erwtenmeel, gedroogde duindoorn (0,2%), gedroogde gemberwortel (0,1%), gedroogde bosbessen (0,1%), gedroogde rozemarijn (0,1%), gedroogde cranberries (0,1%), gedroogde tijm (0,1%), gehydrolyseerde schaaldierenschalen (bron van glucosamine, 0,022%), cichoreiwortel (bron van fructo-oligosachariden, 0,0163%), kraakbeenextract (bron van chondroïtine, 0,014%), biergist (bron van mannan-oligosachariden, 0,013%), Mojave yucca (0,0085%).', true, now(), 'sha256:465195b01e141920cd936f0faf4bc278330dc7ca2f2b6cbac566a26ff98b06b3', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — True Fresh Eend Droogvoer voor Volwassen Honden (12 kg + 4 kg)
-- bron: https://carnilove.com/en/products/true-fresh-duck-dry-food-for-adult-dogs
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'True Fresh Eend Droogvoer voor Volwassen Honden', 'kibble', '12 kg + 4 kg', null, 'https://carnilove.com/en/products/true-fresh-duck-dry-food-for-adult-dogs', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse eend (60%), gele erwten, rundvet (5%), gehydrolyseerde lever (3%), kikkererwten (3%), pompoen (3%), rode linzen, gedroogde appelpulp (2,3%), zalmolie (2%), lijnzaad, wortels, eierschalen, kaliumchloride, erwtenmeel, gedroogde duindoorn (0,2%), gedroogde gemberwortel (0,1%), gedroogde bosbessen (0,1%), gedroogde rozemarijn (0,1%), gedroogde cranberries (0,1%), gedroogde tijm (0,1%), gehydrolyseerde schaaldierenschalen (bron van glucosamine, 0,022%), cichoreiwortel (bron van fructo-oligosachariden, 0,0163%), kraakbeenextract (bron van chondroïtine, 0,014%), biergist (bron van mannan-oligosachariden, 0,013%), Mojave yucca (0,0085%).', true, now(), 'sha256:0cccb3ad1cca386793610ceface3a272301cc4302284a6b4c6dd4cf8f8857067', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — True Fresh Eend Droogvoer voor Grote Rassen (12 kg + 4 kg)
-- bron: https://carnilove.com/en/products/true-fresh-duck-dry-food-for-large-breeds
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'True Fresh Eend Droogvoer voor Grote Rassen', 'kibble', '12 kg + 4 kg', null, 'https://carnilove.com/en/products/true-fresh-duck-dry-food-for-large-breeds', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse eend (60%), gele erwten, rundvet (4%), gedroogde appelpulp (3,3%), gehydrolyseerde lever (3%), kikkererwten (3%), rode linzen, pompoen (2%), zalmolie (2%), lijnzaad, wortels, eierschalen, kaliumchloride, erwtenmeel, gedroogde duindoorn (0,2%), gedroogde gemberwortel (0,1%), gedroogde bosbessen (0,1%), gedroogde rozemarijn (0,1%), gedroogde cranberries (0,1%), gedroogde tijm (0,1%), gehydrolyseerde schaaldierenschalen (bron van glucosamine, 0,022%), cichoreiwortel (bron van fructo-oligosachariden, 0,0163%), kraakbeenextract (bron van chondroïtine, 0,014%), biergist (bron van mannan-oligosachariden, 0,013%), Mojave yucca (0,0085%).', true, now(), 'sha256:5086e76dd5630201b498cc6dded0d7fcf1a8ea26e9befe105a61b95b06a47a29', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — True Fresh Eend Droogvoer voor Junior Grote Rassen (12 kg + 4 kg)
-- bron: https://carnilove.com/en/products/true-fresh-duck-dry-food-for-junior-large-breeds
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'True Fresh Eend Droogvoer voor Junior Grote Rassen', 'kibble', '12 kg + 4 kg', null, 'https://carnilove.com/en/products/true-fresh-duck-dry-food-for-junior-large-breeds', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse eend (60%), gele erwten, rundvet (3%), gehydrolyseerde lever (3%), lijnzaad, kikkererwten (3%), erwteneiwit, pompoen (2%), zalmolie (2%), rode linzen, gedroogde appelpulp (1%), wortels, eierschalen, kaliumchloride, natriumchloride, erwtenmeel, gedroogde duindoorn (0,2%), gedroogde gemberwortel (0,1%), gedroogde bosbessen (0,1%), gedroogde rozemarijn (0,1%), gedroogde cranberries (0,1%), gedroogde tijm (0,1%), gehydrolyseerde schaaldierenschalen (bron van glucosamine, 0,022%), cichoreiwortel (bron van fructo-oligosachariden, 0,0163%), kraakbeenextract (bron van chondroïtine, 0,014%), biergist (bron van mannan-oligosachariden, 0,013%), Mojave yucca (0,0085%).', true, now(), 'sha256:65513b594a50660696cf33e3e40daf1db64aa499163376563991645dbdab7b70', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — True Fresh Eend Droogvoer voor Kleine Rassen (12 kg + 4 kg)
-- bron: https://carnilove.com/en/products/true-fresh-duck-dry-food-for-small-breeds
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'True Fresh Eend Droogvoer voor Kleine Rassen', 'kibble', '12 kg + 4 kg', null, 'https://carnilove.com/en/products/true-fresh-duck-dry-food-for-small-breeds', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse eend (60%), gele erwten, rundvet (7%), gehydrolyseerde lever (3%), kikkererwten (3%), pompoen (3%), rode linzen, gedroogde appelpulp (2,3%), zalmolie (2%), lijnzaad, wortels, eierschalen, kaliumchloride, erwtenmeel, gedroogde duindoorn (0,2%), gedroogde gemberwortel (0,1%), gedroogde bosbessen (0,1%), gedroogde rozemarijn (0,1%), gedroogde cranberries (0,1%), gedroogde tijm (0,1%), gehydrolyseerde schaaldierenschalen (bron van glucosamine, 0,022%), cichoreiwortel (bron van fructo-oligosachariden, 0,0163%), kraakbeenextract (bron van chondroïtine, 0,014%), biergist (bron van mannan-oligosachariden, 0,013%), Mojave yucca (0,0085%).', true, now(), 'sha256:d42e1d18afafba1fda414b78bd2694119680b9dabee9a9d63340d99e62d535dd', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — True Fresh Eend Droogvoer voor Puppy's (12 kg + 4 kg)
-- bron: https://carnilove.com/en/products/true-fresh-duck-dry-food-for-puppies
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'True Fresh Eend Droogvoer voor Puppy''s', 'kibble', '12 kg + 4 kg', null, 'https://carnilove.com/en/products/true-fresh-duck-dry-food-for-puppies', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse eend (60%), gele erwten, rundvet (8%), gehydrolyseerde lever (3%), erwteneiwit, lijnzaad, kikkererwten (2%), pompoen (2%), zalmolie (2%), rode linzen, gedroogde appelpulp (1%), wortels, eierschalen, kaliumchloride, natriumchloride, erwtenmeel, gedroogde duindoorn (0,2%), gedroogde gemberwortel (0,1%), gedroogde bosbessen (0,1%), gedroogde rozemarijn (0,1%), gedroogde cranberries (0,1%), gedroogde tijm (0,1%), gehydrolyseerde schaaldierenschalen (bron van glucosamine, 0,022%), cichoreiwortel (bron van fructo-oligosachariden, 0,0163%), kraakbeenextract (bron van chondroïtine, 0,014%), biergist (bron van mannan-oligosachariden, 0,013%), Mojave yucca (0,0085%).', true, now(), 'sha256:9f41a98c1f7734266cf21bfd70cb3f8949d5a450d17ecffdff0cfddc83f89b59', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — True Fresh Vis & Kalkoen Droogvoer (12 kg + 4 kg)
-- bron: https://carnilove.com/en/products/true-fresh-fish-and-turkey-dry-dog-food
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'True Fresh Vis & Kalkoen Droogvoer', 'kibble', '12 kg + 4 kg', null, 'https://carnilove.com/en/products/true-fresh-fish-and-turkey-dry-dog-food', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse vis (34%), verse kalkoen (26%), gele erwten, rundvet (5%), gehydrolyseerde lever (3%), kikkererwten (3%), pompoen (3%), rode linzen, gedroogde appelpulp (2,2%), zalmolie (2%), lijnzaad, eierschalen, wortels, kaliumchloride, erwtenmeel, gedroogde duindoorn (0,2%), gedroogde gemberwortel (0,1%), gedroogde bosbessen (0,1%), gedroogde rozemarijn (0,1%), gedroogde cranberries (0,1%), gedroogde tijm (0,1%), gehydrolyseerde schaaldierenschalen (bron van glucosamine, 0,022%), cichoreiwortel (bron van fructo-oligosachariden, 0,0163%), kraakbeenextract (bron van chondroïtine, 0,014%), biergist (bron van mannan-oligosachariden, 0,013%), Mojave yucca (0,0085%).', true, now(), 'sha256:5cd8d913750605b01a4fc522c17b1418522bc06442ca9527748192387bdee355', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — True Fresh Rund Droogvoer (12 kg + 4 kg)
-- bron: https://carnilove.com/en/products/carnilove-true-fresh-dog-dry-beef-for-adult-all-breeds
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'True Fresh Rund Droogvoer', 'kibble', '12 kg + 4 kg', null, 'https://carnilove.com/en/products/carnilove-true-fresh-dog-dry-beef-for-adult-all-breeds', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers rundvlees (60%), gele erwten, rundvet (5%), gehydrolyseerde lever (3%), kikkererwten (3%), pompoen (3%), rode linzen, zalmolie (2%), lijnzaad, eierschalen, gedroogde appelpulp (1,3%), wortels, kaliumchloride, erwtenmeel, gedroogde duindoorn (0,2%), gedroogde gemberwortel (0,1%), gedroogde bosbessen (0,1%), gedroogde rozemarijn (0,1%), gedroogde cranberries (0,1%), gedroogde tijm (0,1%), gehydrolyseerde schaaldierenschalen (bron van glucosamine, 0,022%), cichoreiwortel (bron van fructo-oligosachariden, 0,0163%), kraakbeenextract (bron van chondroïtine, 0,014%), biergist (bron van mannan-oligosachariden, 0,013%), Mojave yucca (0,0085%).', true, now(), 'sha256:1968b7d6ab06c0347fe3579329f81f52df12c5593903b517d9878a6d424a84dd', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
