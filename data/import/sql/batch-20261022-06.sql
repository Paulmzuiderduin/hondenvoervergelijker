-- Automatisch overgenomen etiketten, batch 6 van 2026-10-22 (36 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Smølke — Puppy Mini & Medium (3 / 12 kg)
-- bron: https://www.smolke.nl/hondenvoer/hondenbrokken/puppy-mini-medium/VE6601/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smølke', 'Puppy Mini & Medium', 'kibble', '3 / 12 kg', '8710429018013', 'https://www.smolke.nl/hondenvoer/hondenbrokken/puppy-mini-medium/VE6601/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kippenmeel (23%), mais, gerst, kippenvet (gestabiliseerd met natuurlijke tocoferolen), verse kip (4%), lamsmeel (4%), rijst, sorghum, bietenpulp, gehydroliseerd eiwit, MSC-gecertificeerde vismeel (2%)*, cellulose (1%), biergist, MSC-gecertificeerde visolie (0,8%)*, cichorei (0,7%), vitamine en mineralen mix. *Uit een MSC gecertificeerde duurzame visserij. www.msc.org/nl', true, now(), 'sha256:3c1e2bb4d76900f7c19be1c8f59e3c34166daea490805f4d91042bb76c3a54ef', null from p;

-- Smølke — Puppy Maxi (3 / 12 kg)
-- bron: https://www.smolke.nl/hondenvoer/hondenbrokken/puppy-maxi/VE6603/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smølke', 'Puppy Maxi', 'kibble', '3 / 12 kg', '8710429018037', 'https://www.smolke.nl/hondenvoer/hondenbrokken/puppy-maxi/VE6603/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kippenmeel (21%), mais, gerst, kippenvet (gestabiliseerd met natuurlijke tocoferolen), verse kip (4%), lamsmeel (4%), rijst, sorghum, bietenpulp, gehydroliseerd eiwit, MSC-gecertificeerde vismeel (2%)*, cellulose (1%) , biergist, MSC-gecertificeerde visolie (0,8%)*, cichorei (0,7%), vitamine en mineralen mix, glucosamine (0,01%). *Uit een MSC gecertificeerde duurzame visserij. www.msc.org/nl', true, now(), 'sha256:3d35458c9d472aeff6851b064e83ea770055030188217671c90db197e717cb8f', null from p;

-- Smølke — Hond Adult Mini (3 / 12 kg)
-- bron: https://www.smolke.nl/hondenvoer/hondenbrokken/adult-mini/VE6621/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smølke', 'Hond Adult Mini', 'kibble', '3 / 12 kg', '8710429018051', 'https://www.smolke.nl/hondenvoer/hondenbrokken/adult-mini/VE6621/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kippenmeel (20%), mais, gerst, kippenvet (gestabiliseerd met natuurlijke tocoferolen), sorghum, verse kip (4%), lamsmeel (4%), rijst, bietenpulp, gehydroliseerd eiwit, MSC-gecertificeerde vismeel (2%)*, cellulose (1%) , biergist, MSC-gecertificeerde visolie (0,8%)*, cichorei (0,7%), vitamine en mineralen mix (bevat natriumhexametafosfaat 0,1%). *Uit een MSC gecertificeerde duurzame visserij. www.msc.org/nl', true, now(), 'sha256:1ca10c8fedac43c1a5cc7701a6bf2e26bace840684d0cc478b5da7a326957385', null from p;

-- Smølke — Hond Adult Medium (3 / 12 kg)
-- bron: https://www.smolke.nl/hondenvoer/hondenbrokken/adult-medium/VE6623/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smølke', 'Hond Adult Medium', 'kibble', '3 / 12 kg', '8710429018075', 'https://www.smolke.nl/hondenvoer/hondenbrokken/adult-medium/VE6623/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kippenmeel (18%), mais, gerst, sorghum, kippenvet (gestabiliseerd met natuurlijke tocoferolen), verse kip (4%), lamsmeel (4%), rijst, bietenpulp, gehydroliseerd eiwit, MSC-gecertificeerde vismeel (2%)*, cellulose (1%) , biergist, MSC-gecertificeerde visolie (0,8%)*, cichorei (0,7%), vitamine en mineralen mix (bevat natriumhexametafosfaat 0,1%). *Uit een MSC gecertificeerde duurzame visserij. www.msc.org/nl', true, now(), 'sha256:c83a122fc2552e9bc4b1cd75227dd467d0ea92cda3ce9ff43b6a56b55941273b', null from p;

-- Smølke — Hond Adult Maxi (3 / 12 kg)
-- bron: https://www.smolke.nl/hondenvoer/hondenbrokken/adult-maxi/VE6625/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smølke', 'Hond Adult Maxi', 'kibble', '3 / 12 kg', '8710429018099', 'https://www.smolke.nl/hondenvoer/hondenbrokken/adult-maxi/VE6625/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kippenmeel (16%), mais, gerst, sorghum, rijst, kippenvet (gestabiliseerd met natuurlijke tocoferolen), verse kip (4%), lamsmeel (4%), bietenpulp, gehydroliseerd eiwit, MSC-gecertificeerde vismeel (2%)*, cellulose (1%) , biergist, MSC-gecertificeerde visolie (0,8%)*, cichorei (0,7%), vitamine en mineralen mix (bevat natriumhexametafosfaat 0,1%), glucosamine (0,023%). *Uit een MSC gecertificeerde duurzame visserij. www.msc.org/nl', true, now(), 'sha256:df422eaecf126aef9bfd223de2a1f1cece5b3047fa9713760bf08456d6e3cdf4', null from p;

-- Smølke — Hond Senior Mini (3 kg)
-- bron: https://www.smolke.nl/hondenvoer/hondenbrokken/senior-mini/VE6641/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smølke', 'Hond Senior Mini', 'kibble', '3 kg', '8710429018112', 'https://www.smolke.nl/hondenvoer/hondenbrokken/senior-mini/VE6641/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kippenmeel (21%), mais, gerst, kippenvet (gestabiliseerd met natuurlijke tocoferolen), verse kip (4%), lamsmeel (4%), rijst, sorghum, bietenpulp, gehydroliseerd eiwit, cellulose (2,5%), MSC-gecertificeerde vismeel (2%)*, biergist, MSC-gecertificeerde visolie (0,8%)*, cichorei (0,7%), vitamine en mineralen mix (bevat natriumhexametafosfaat 0,1%), glucosamine (0,022%). *Uit een MSC gecertificeerde duurzame visserij. www.msc.org/nl', true, now(), 'sha256:5f973ef553031bbb40f01e5fef82141bd26102a7957ae4016a86d50136615343', null from p;

-- Smølke — Hond Senior Medium (3 / 12 kg)
-- bron: https://www.smolke.nl/hondenvoer/hondenbrokken/senior-medium/VE6643/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smølke', 'Hond Senior Medium', 'kibble', '3 / 12 kg', '8710429018136', 'https://www.smolke.nl/hondenvoer/hondenbrokken/senior-medium/VE6643/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling: Kippenmeel (20%), mais, gerst, sorghum, kippenvet (gestabiliseerd met natuurlijke tocoferolen), verse kip (4%), lamsmeel (4%), rijst, bietenpulp, gehydroliseerd eiwit, cellulose (2,5%), MSC-gecertificeerde vismeel (2%)*, biergist, MSC-gecertificeerde visolie (0,8%)*, cichorei (0,7%), vitamine en mineralen mix (bevat natriumhexametafosfaat 0,1%), glucosamine (0,03%). *Uit een MSC gecertificeerde duurzame visserij. www.msc.org/nl', true, now(), 'sha256:2ad1e18bf894c56e06590adf4067c43d889bd19ce041e6dd83d68b270107449e', null from p;

-- Smølke — Hond Senior Maxi (3 / 12 kg)
-- bron: https://www.smolke.nl/hondenvoer/hondenbrokken/senior-maxi/VE6645/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smølke', 'Hond Senior Maxi', 'kibble', '3 / 12 kg', '8710429018150', 'https://www.smolke.nl/hondenvoer/hondenbrokken/senior-maxi/VE6645/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kippenmeel (18%), mais, gerst, sorghum, rijst, kippenvet (gestabiliseerd met natuurlijke tocoferolen), verse kip (4%), lamsmeel (4%), bietenpulp, gehydroliseerd eiwit, cellulose (2,5%), MSC-gecertificeerde vismeel (2%)*, biergist, MSC-gecertificeerde visolie (0,8%)*, cichorei (0,7%), vitamine en mineralen mix (bevat natriumhexametafosfaat 0,1%), glucosamine (0,04%). *Uit een MSC gecertificeerde duurzame visserij. www.msc.org/nl', true, now(), 'sha256:abda390a135c9b7158b44c192555239f694dfdfaf248fe0754d9a5b8f5b47e73', null from p;

-- Smølke — Hond Weight Control (3 / 12 kg)
-- bron: https://www.smolke.nl/hondenvoer/hondenbrokken/weight-control/VE6660/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smølke', 'Hond Weight Control', 'kibble', '3 / 12 kg', '8710429018198', 'https://www.smolke.nl/hondenvoer/hondenbrokken/weight-control/VE6660/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kippenmeel (18%), mais, gerst, sorghum, cellulose (5%), verse kip (4%), lamsmeel (4%), rijst, bietenpulp, kippenvet (gestabiliseerd met natuurlijke tocoferolen), gehydroliseerd eiwit, MSC-gecertificeerde vismeel (2%)*, biergist, MSC-gecertificeerde visolie (0,8%)*, cichorei (0,7%), vitamine en mineralen mix (bevat natriumhexametafosfaat 0,1%). *Uit een MSC gecertificeerde duurzame visserij. www.msc.org/nl', true, now(), 'sha256:9f327d629e52ceb69b2c2ec2cb96246e3d7d3fbc7bd42a0d0e8507eb06b7e50b', null from p;

-- Smølke — Hond Adult Graanvrij (3 / 12 kg)
-- bron: https://www.smolke.nl/hondenvoer/hondenbrokken/graanvrij/VE6627/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smølke', 'Hond Adult Graanvrij', 'kibble', '3 / 12 kg', '8710429017528', 'https://www.smolke.nl/hondenvoer/hondenbrokken/graanvrij/VE6627/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kippenmeel (27%), aardappelmeel, groene erwten, kippenvet (gestabiliseerd met natuurlijke tocoferolen), verse kip (4%), lamsmeel (4%), bietenpulp, gehydroliseerd eiwit, MSC-gecertificeerde vismeel (2%)*, biergist, heel eipoeder (zonder schaal) (1,5%), cellulose (1,2%), MSC-gecertificeerde visolie (0,8%)*, cichorei (0,7%), vitamine en mineralen mix (bevat natriumhexametafosfaat 0,1%). *Uit een MSC gecertificeerde duurzame visserij. www.msc.org/nl', true, now(), 'sha256:ce24023fd372be92ec8a17714ad58d56cbc8d45feed4e0ea17acf4538dcd69db', null from p;

-- Smølke — Hond Sensitive Lam (3 / 12 kg)
-- bron: https://www.smolke.nl/hondenvoer/hondenbrokken/sensitive-lam/VE6662/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smølke', 'Hond Sensitive Lam', 'kibble', '3 / 12 kg', '8710429018174', 'https://www.smolke.nl/hondenvoer/hondenbrokken/sensitive-lam/VE6662/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lamsmeel (26%), rijst, aardappelmeel, groene erwten, kippenvet (gestabiliseerd met natuurlijke tocoferolen), aardappeleiwit, bietenpulp, gehydrolyseerde gist, biergist, cellulose (1,3%), MSC-gecertificeerde visolie (0,8%)*, cichorei (0,7%), vitamine en mineralen mix (bevat natriumhexametafosfaat 0,1%). *Uit een MSC gecertificeerde duurzame visserij. www.msc.org/nl-', true, now(), 'sha256:a1f6aa68bd39801185a9e39f96717cafcddaa35e885599248125fc3dc0aed86c', null from p;

-- Smølke — Hond Sensitive Eend (3 / 12 kg)
-- bron: https://www.smolke.nl/hondenvoer/hondenbrokken/sensitive-eend/VE6664/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smølke', 'Hond Sensitive Eend', 'kibble', '3 / 12 kg', '8710429018617', 'https://www.smolke.nl/hondenvoer/hondenbrokken/sensitive-eend/VE6664/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eendenmeel (26%), rijst, groene erwten, aardappelmeel, kippenvet (gestabiliseerd met natuurlijke tocoferolen), bietenpulp, gehydrolyseerde gist, biergist, cellulose (1,3%), MSC-gecertificeerde visolie (0,8%)*, cichorei (0,7%), vitamine en mineralen mix (bevat natriumhexametafosfaat 0,1%). *Uit een MSC gecertificeerde duurzame visserij. www.msc.org/nl', true, now(), 'sha256:08765e64e3a33d56a6b817b0c1504d175c296996a6c75fc5047b0adc5ba782ea', null from p;

-- Smølke — Orange Goodness Kip (300 g)
-- bron: https://www.smolke.nl/orange-goodness-chicken/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smølke', 'Orange Goodness Kip', 'wet', '300 g', null, 'https://www.smolke.nl/orange-goodness-chicken/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip (55%) (hart, vlees, lever, maag, nek, vet), zoete aardappel, pompoen (4%), wortel (4%), mineralen, zalmolie, gedroogde goudsbloem (0,2%).', true, now(), 'sha256:be2bfca6934711f578c18b2e7dbeebdcec96b4a3b2155f9f060b1d3e6393a637', null from p;

-- Smølke — Red Goodness Rund (300 g)
-- bron: https://www.smolke.nl/red-goodness-rund/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smølke', 'Red Goodness Rund', 'wet', '300 g', '08710429019829', 'https://www.smolke.nl/red-goodness-rund/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rund (55%) (hart, vlees, lever, long, pens), rode linzen (5%), rode paprika (4%), tomaat (4%), mineralen, rozenbottel (0,2%), zalmolie (0,1%).', true, now(), 'sha256:5e63c19b206d5595f9000a82781244255e93964cbb5c3df4b8d72491660ec4ed', null from p;

-- Smølke — Purple Goodness Lam (300 g)
-- bron: https://www.smolke.nl/purple-goodness-lam/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smølke', 'Purple Goodness Lam', 'wet', '300 g', '08710429019843', 'https://www.smolke.nl/purple-goodness-lam/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam (55%) (levers, longen, vlees, harten, pens), amarant (5%), rode biet (4%), aubergine (4%), mineralen, gedroogde rozemarijn (0,2%), zalmolie (0,1%).', true, now(), 'sha256:96ff393ec304aa5bd84395bce5d0e9a9992cd2df3adcd9e82f1d2e9f78c64b22', null from p;

-- Smølke — Green Goodness Wild (300 g)
-- bron: https://www.smolke.nl/green-goodness-wild/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smølke', 'Green Goodness Wild', 'wet', '300 g', '08710429019867', 'https://www.smolke.nl/green-goodness-wild/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Hert (45%) (vlees, lever, long, pens), wild zwijn (10%) (vlees), aardappelen (5%), spinazie (4%), courgette (4%), mineralen, basilicum (0,2%), zalmolie (0,1%).', true, now(), 'sha256:2d2f6fbd3b3b1fb465c5228a25ce4616455ee2decd084afa3239729acadc0be4', null from p;

-- Smølke — Vers Gestoomde Maaltijd Kip (395 g)
-- bron: https://www.smolke.nl/hondenvoer/natvoer/vers-gestoomde-maaltijd-kip/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smølke', 'Vers Gestoomde Maaltijd Kip', 'wet', '395 g', '8710429017641', 'https://www.smolke.nl/hondenvoer/natvoer/vers-gestoomde-maaltijd-kip/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip (70%) (Bevlees kippenkarkas, kippenvlees, kippenlever), bruine rijst, gedroogde zoete aardappel (1,1%, gelijk aan 4% aardappel), gedroogde erwten (1,1%, gelijk aan 4% broccoli), zalmolie, mineralen, gedroogde peterselie (0,04%), glucosamine (0,0035%), chondroitine (0,002%)', true, now(), 'sha256:d90853a92935f00948de5c941528d865a2cf04c3a7365dac0e57c6d5fe61dad4', null from p;

-- Smølke — Vers Gestoomde Maaltijd Lam (395 g)
-- bron: https://www.smolke.nl/hondenvoer/natvoer/vers-gestoomde-maaltijd-lam/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smølke', 'Vers Gestoomde Maaltijd Lam', 'wet', '395 g', '8710429017665', 'https://www.smolke.nl/hondenvoer/natvoer/vers-gestoomde-maaltijd-lam/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam (70%) (bevleesd lamskarkas, lamsvlees, lamspens), bruine rijst, gedroogde wortelen (1,5%, gelijk aan 10% wortelen), gedroogde erwten (1,5% gelijk aan 4% erwten), zalmolie, mineralen, gedroogde tijm (0,04%), glucosamine (0,0035%), chondroitine (0,002%)', true, now(), 'sha256:a92e2b48f24e2290e1b32ab434f1ed09fd6e77429c4cad3897a85a1657706254', null from p;

-- Smølke — Vers Gestoomde Maaltijd Eend (395 g)
-- bron: https://www.smolke.nl/hondenvoer/natvoer/vers-gestoomde-maaltijd-eend/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smølke', 'Vers Gestoomde Maaltijd Eend', 'wet', '395 g', '8710429017702', 'https://www.smolke.nl/hondenvoer/natvoer/vers-gestoomde-maaltijd-eend/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eend (70%) (bevleesd eendenkarkas, eendenvlees), bruine rijst, gedroogde erwten (1,3%, gelijk aan 4% erwten), tomatenpoeder (0,4%, gelijk aan 4% tomaat), zalmolie, mineralen, gedroogde rozemarijn (0,04%), glucosamine (0,0035%), chondroitine (0,002%).', true, now(), 'sha256:0226e24b900e7323c773ea7f60b23886f2c6c0fd3d094896873f831b1ab285d5', null from p;

-- Smølke — Vers Gestoomde Maaltijd Smølmix (395 g)
-- bron: https://www.smolke.nl/hondenvoer/natvoer/vers-gestoomde-maaltijd-smolmix/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smølke', 'Vers Gestoomde Maaltijd Smølmix', 'wet', '395 g', '8710429019720', 'https://www.smolke.nl/hondenvoer/natvoer/vers-gestoomde-maaltijd-smolmix/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam (27%) (lamsvlees, lamslong, lamlever, lamshart), kip (27%) (kippenvlees, bevleesd kippenkarkas), vis* (16% zalm), bruine rijst, gedroogde pastinaak (0,95%, gelijk aan 4% pastinaak), gedroogde brocolli (0,5% gelijk aan 4% brocolli), zalmolie, mineralen, gedroogde basilicum (0,04%), glucosamine (0,0035%), chondroitine (0,002%). *afkomstig van duurzame vangst', true, now(), 'sha256:f2748fd12e83846f255073af0be0a67860a2a900f445ed724ba053aee07f867d', null from p;

-- Smølke — Vers Gestoomde Maaltijd met Kalkoen (395 g)
-- bron: https://www.smolke.nl/hondenvoer/natvoer/vers-gestoomde-maaltijd-kalkoen/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smølke', 'Vers Gestoomde Maaltijd met Kalkoen', 'wet', '395 g', '8710429019683', 'https://www.smolke.nl/hondenvoer/natvoer/vers-gestoomde-maaltijd-kalkoen/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen (70%) (kalkoenvlees, bevleesd kalkoenkarkas), gedroogde aardappel (1%, gelijk aan 4% aardappel), gedroogde broccoli (0,5%, gelijk aan 4% broccoli), zalmolie, mineralen, gedroogde oregano (0,04%), glucosamine (0,0035%), chondroitine (0,002%)', true, now(), 'sha256:e318cd4f674c112d95bf8fb70221f0b8c624a26a5eeb13694d6b59b3177767cc', null from p;

-- Smølke — Vers Gestoomde Maaltijd Wild (395 g)
-- bron: https://www.smolke.nl/hondenvoer/natvoer/vers-gestoomde-maaltijd-wild/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smølke', 'Vers Gestoomde Maaltijd Wild', 'wet', '395 g', '8710429017726', 'https://www.smolke.nl/hondenvoer/natvoer/vers-gestoomde-maaltijd-wild/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eend (43%) (eendenvlees, bevleesd eendenkarkas, hert (27%) (hertenvlees), gedroogde aardappel (1%, gelijk aan 4% aardappel), gedroogde wortel (0,6%, gelijk aan 4% wortel), zalmolie, mineralen, gedroogde salie (0,04%), glucosamine (0,0035%), chondroitine (0,002%)', true, now(), 'sha256:82316c4519a2788979eb450acbea551d4c211bdf106735a04219b08b747f1b60', null from p;

-- Smølke — Soft Paté Hond Kalkoen (125 g)
-- bron: https://www.smolke.nl/hondenvoer/natvoer/soft-pate-kalkoen/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smølke', 'Soft Paté Hond Kalkoen', 'wet', '125 g', '8710429018457', 'https://www.smolke.nl/hondenvoer/natvoer/soft-pate-kalkoen/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen (53%) (kalkoen hart, kalkoenvlees, kalkoen lever), chia zaad (1%), vitaminen- en mineralenmix, zalmolie, gefermenteerde rijst.', true, now(), 'sha256:aab56edd8dde7fe419d3be254e10f3dde0659935c1ac7db3c72c79f614ca369b', null from p;

-- Smølke — Soft Paté Hond Kip (125 g)
-- bron: https://www.smolke.nl/hondenvoer/natvoer/soft-pate-kip/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smølke', 'Soft Paté Hond Kip', 'wet', '125 g', '8710429018471', 'https://www.smolke.nl/hondenvoer/natvoer/soft-pate-kip/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip (53%) (kippenhart, kippenvlees, kippenlever), lijnzaad (1%), vitaminen- en mineralen- mix, zalmolie, gefermenteerde rijst', true, now(), 'sha256:0c597f4ef80b50b60333d5c5b64afd3450c95eb608e23ea0ac8082ab86f9faac', null from p;

-- Smølke — Soft Paté Hond Rund (125 g)
-- bron: https://www.smolke.nl/hondenvoer/natvoer/soft-pate-beef/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smølke', 'Soft Paté Hond Rund', 'wet', '125 g', '8710429018495', 'https://www.smolke.nl/hondenvoer/natvoer/soft-pate-beef/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rund (50%) (runderhart, runderlong, rundvlees, runderlever), hennepzaad (1%), vitaminen- en mineralenmix, zalmolie, gefermenteerde rijst', true, now(), 'sha256:4faa8c2a5295ea338da37e6ddc827b0e2b2964f5904b1f81969f31d5f09a97b4', null from p;

-- Smølke — Soft Paté Hond Lam (125 g)
-- bron: https://www.smolke.nl/hondenvoer/natvoer/soft-pate-lam/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smølke', 'Soft Paté Hond Lam', 'wet', '125 g', '8710429018518', 'https://www.smolke.nl/hondenvoer/natvoer/soft-pate-lam/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam (50%) (lamslong, lamsvlees, lamslever, lamshart), cranberries (1,5%) vitaminen- en mineralenmix, zalmolie, gefermenteerde rijst.', true, now(), 'sha256:e2d2f12d7b02353257f4797ee0d0abcc83d1d9d0e5ad6245270db946719c26c7', null from p;

-- Smølke — Soft Paté Hond Party Edition (125 g)
-- bron: https://www.smolke.nl/hondenvoer/natvoer/soft-pate-party-edition/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smølke', 'Soft Paté Hond Party Edition', 'wet', '125 g', '8710429018532', 'https://www.smolke.nl/hondenvoer/natvoer/soft-pate-party-edition/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip (23%) (kippenhart), kalkoen (20%) (kalkoenvlees, kalkoenlever), eend (10%) (eendenvlees), hennepzaad (1%), mineralen en vitamines, zalmolie, gefermenteerde rijst.', true, now(), 'sha256:6ca478a54122e7db04169c1a8c0dc681bd199c22021fa303801cafddc838e475', null from p;

-- Yora — Puppy Alle Rassen (1,5 / 12 kg)
-- bron: https://yorapets.be/hond/insecteneiwit-puppy-alle-rassen-droogvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Yora', 'Puppy Alle Rassen', 'kibble', '1,5 / 12 kg', null, 'https://yorapets.be/hond/insecteneiwit-puppy-alle-rassen-droogvoer/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '*Insect 44% (**Insectenmeel 30%, Vers Bereide Insecten 8.5%, Insectenolie 5.5%), Aardappel (17%), Haver (15%), Zoete Aardappel (5%), Bietenpulp (5%), Groentebouillon, Mineralen, Biergist, Aardappeleiwit, Lijnzaad, Zeewiermeel (0.5%), Cichoreiwortelextract (als bron van prebiotische FOS) (0.1%), Gedroogde Algen (als bron van DHA) (0.1%), Gedroogde Spinazie (0.05%), Gedroogde Blauwe Bes (0.05%), Gedroogde Wortel, Gedroogde Brandnetel, Gedroogde Peterselie, Gedroogde Rozemarijn, Chondroïtine (400mg/kg), Kurkuma (0.005%), Gedroogde Munt. *Hermetia illucens-larven **Bron van Glucosamine', true, now(), 'sha256:771e5511e77e38d097cd90296a3f3bfa244dc9f25ebdecb9c5b88d9f3ccd2b42', null from p;

-- Yora — Adult Kleine Rassen (1,5 / 6 kg)
-- bron: https://yorapets.be/hond/insecteneiwit-kleine-rassen-hond-droogvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Yora', 'Adult Kleine Rassen', 'kibble', '1,5 / 6 kg', null, 'https://yorapets.be/hond/insecteneiwit-kleine-rassen-hond-droogvoer/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '*Insect 43% (**Insectenmeel 27.5%, Vers Bereide Insecten 8.5%, Insectenolie 7%), Aardappel (20%), Gepelde Haver (18%), Bietenpulp (5%), Mineralen, Groentebouillon, Biergist, Lijnzaad, Aardappeleiwit, Zeewiermeel (0.5%), Cichoreiwortelextract (als bron van prebiotische FOS) (0.1%), Chondroïtine (500mg/kg), Gedroogde Spinazie (0.05%), Gedroogde Blauwe Bes (0.05%), Gedroogde Wortel, Gedroogde Brandnetel, Gedroogde Peterselie, Gedroogde Rozemarijn, Kurkuma (0.005%), Gedroogde Munt. *Hermetia illucens-larven **Bron van Glucosamine', true, now(), 'sha256:31ca726330074ca730b14bde74dbab46424c3cd8455dcf768144361385f1f327', null from p;

-- Yora — Adult Alle Rassen (1,5 / 6 / 12 kg)
-- bron: https://yorapets.be/hond/insecteneiwit-adult-alle-rassen-hond-droogvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Yora', 'Adult Alle Rassen', 'kibble', '1,5 / 6 / 12 kg', null, 'https://yorapets.be/hond/insecteneiwit-adult-alle-rassen-hond-droogvoer/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '*Insect 40% (**Insectenmeel 26.5%, Vers Bereide Insecten 8%, Insectenolie 5.5%), Aardappel (20%), Gepelde Haver (18%), Zoete Aardappel (5.5%), Bietenpulp, Groentebouillon, Mineralen, Biergist, Lijnzaad, Zeewiermeel (0.5%), Cichoreiwortelextract (als bron van prebiotische FOS) (0.1%), Chondroïtine (500 mg/kg), Gedroogde Spinazie (0.05%), Gedroogde Blauwe Bes (0.05%), Gedroogde Wortel, Gedroogde Brandnetel, Gedroogde Peterselie, Gedroogde Rozemarijn, Kurkuma (0.005%), Gedroogde Munt. *Hermetia illucens-larven **Bron van Glucosamine', true, now(), 'sha256:0018d436160552f2fda55d434fe40a1107b3b90782c43e157015ee5dbb642805', null from p;

-- Yora — Adult Graanvrij (1,5 / 12 kg)
-- bron: https://yorapets.be/hond/insecteneiwit-adult-graanvrij-hond-droogvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Yora', 'Adult Graanvrij', 'kibble', '1,5 / 12 kg', null, 'https://yorapets.be/hond/insecteneiwit-adult-graanvrij-hond-droogvoer/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '*Insect 41.5% (**Insectenmeel 28%, Vers Bereide Insecten 8%, Insectenolie 5.5%), Zoete Aardappel (23%), Aardappel (20%), Bietenpulp (5%), Mineralen, Groentebouillon, Lijnzaad, Zeewiermeel (0.5%), Cichoreiwortelextract (als bron van prebiotische FOS) (0.1%), Chondroïtine (500mg/Kg), Gedroogde Spinazie (0.05%), Gedroogde Blauwe Bes (0.05%), Gedroogde Wortel, Gedroogde Brandnetel, Gedroogde Peterselie, Gedroogde Rozemarijn, Kurkuma (0.005%), Gedroogde Munt. *Hermetia illucens-larven **Bron van Glucosamine', true, now(), 'sha256:ec145993a659f27062ece91d9c7d19553cfcc23727b6c6d3f249bf99be463b1d', null from p;

-- Yora — Adult Grote Rassen (1,5 / 12 kg)
-- bron: https://yorapets.be/hond/insecteneiwit-grote-rassen-rassen-hond-droogvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Yora', 'Adult Grote Rassen', 'kibble', '1,5 / 12 kg', null, 'https://yorapets.be/hond/insecteneiwit-grote-rassen-rassen-hond-droogvoer/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '*Insect 37.5% (**Insectenmeel 24.5%, Vers Bereide Insecten 8.5%, Insectenolie 4.5%), Aardappel (18.5%), Gepelde Haver (16.5%), Zoete Aardappel (8.5%), Bietenpulp (5%), Groentebouillon, Mineralen, Biergist, Lijnzaad, Aardappeleiwit, Zeewiermeel (0.5%), Cichoreiwortelextract (als bron van prebiotische FOS) (0.1%), Chondroïtine (1000mg/kg), MSM (1000mg/kg), Gedroogde Spinazie (0.05%), Gedroogde Blauwe Bes (0.05%), Gedroogde Wortel, Gedroogde Brandnetel, Gedroogde Peterselie, Gedroogde Rozemarijn, Kurkuma (0.005%), Gedroogde Munt. *Hermetia illucens-larven **Bron van Glucosamine', true, now(), 'sha256:8ecc9af16181847107c9ef6770d36cf21877d0a9e4268e06dde665f73bd32b34', null from p;

-- Yora — Adult Light / Senior (1,5 / 12 kg)
-- bron: https://yorapets.be/hond/insecteneiwit-light-senior-rassen-hond-droogvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Yora', 'Adult Light / Senior', 'kibble', '1,5 / 12 kg', null, 'https://yorapets.be/hond/insecteneiwit-light-senior-rassen-hond-droogvoer/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '*Insect 37.5% (**Insectenmeel 25%, Vers Bereide Insecten 8.5%, Insectenolie 4%), Aardappel (22%), Gepelde Haver (19%), Bietenpulp (7.5%), Mineralen, Groentebouillon, Biergist, Lijnzaad, Aardappeleiwit, Zeewiermeel (0.5%), Cichoreiwortelextract (als bron van prebiotische FOS) (0.1%), Chondroïtine (1000mg/kg), MSM (1000mg/kg), Gedroogde Algen (als bron van DHA) (0.1%), Gedroogde Spinazie (0.05%), Gedroogde Blauwe Bes (0.05%), Gedroogde Wortel, Gedroogde Brandnetel, Gedroogde Peterselie, Gedroogde Rozemarijn, Kurkuma (0.005%), Gedroogde Munt. *Hermetia illucens-larven **Bron van Glucosamine', true, now(), 'sha256:c8728b3c37bdc77964a6a4d58fc1d8cba8990bf5f8d2e34db143dfb962431988', null from p;

-- Yora — Pâté Wortel & Aardappel (390 g)
-- bron: https://yorapets.be/hond/insecteneiwit-volwassen-hondpate-wortel-aardappel/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Yora', 'Pâté Wortel & Aardappel', 'wet', '390 g', null, 'https://yorapets.be/hond/insecteneiwit-volwassen-hondpate-wortel-aardappel/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers Bereide Insecten 58%, Groentebouillon, Wortel 6%, Aardappel 6%, Erwteneiwit, Biergist 1.5%, Mineralen 0.2%, Prebiotische MOS (Gisten 0.09%), Prebiotische FOS (Cichoreimeel 0.09%).', true, now(), 'sha256:0c1082f2bf63d43a84c9062a19bba69764857fe645211382f6cdcb977e9f0c91', null from p;

-- Yora — Pâté Appel & Pastinaak (390 g)
-- bron: https://yorapets.be/hond/insecteneiwit-volwassen-hond-pate-appel-pastinaak/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Yora', 'Pâté Appel & Pastinaak', 'wet', '390 g', null, 'https://yorapets.be/hond/insecteneiwit-volwassen-hond-pate-appel-pastinaak/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers Bereide Insecten 58%, Groentebouillon, Appel 6%, Pastinaak 6%, Erwteneiwit 3%, Biergist 1.5%, Mineralen 0.2%, Prebiotische MOS (Gisten 0.09%), Prebiotische FOS (Cichoreimeel 0.09%).', true, now(), 'sha256:14ec6b483a6b33ffeba65c5b0faa2818ef6644fba9aaae5486ae6cc29c6a1fee', null from p;

-- Yora — Pâté Rode Biet & Koolraap (390 g)
-- bron: https://yorapets.be/hond/insecteneiwit-volwassen-hond-natvoer-rode-bieten-koolraap/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Yora', 'Pâté Rode Biet & Koolraap', 'wet', '390 g', null, 'https://yorapets.be/hond/insecteneiwit-volwassen-hond-natvoer-rode-bieten-koolraap/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers Bereide Insecten 58%, Groentebouillon, Rode Biet 6%, Koolraap 6%, Erwteneiwit 3%, Biergist 1.5%, Mineralen 0.2%, Prebiotische MOS (Gisten 0.09%), Prebiotische FOS (Cichoreimeel 0.09%).', true, now(), 'sha256:3fed28c16a4967f1f1e7b47bfbe65b15431041c6ea5a415302d6d00d96cb0bcb', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
