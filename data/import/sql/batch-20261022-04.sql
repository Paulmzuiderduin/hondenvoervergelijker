-- Automatisch overgenomen etiketten, batch 4 van 2026-10-22 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Prins Petfoods — NatureCare Veterinary Diet Hypoallergic Lamb (6 x 400 g)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/naturecare-diet-dog/hypoallergenic-lamb-400g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'NatureCare Veterinary Diet Hypoallergic Lamb', 'wet', '6 x 400 g', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/naturecare-diet-dog/hypoallergenic-lamb-400g', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam 50% (long, vlees, lever, hart), aardappel (5,0%), mineralen, visolie (0,3%), gefermenteerde rijst, gist (inclusief mannan-oligosacchariden 0,04%), fructo-oligosacchariden (FOS)', true, now(), 'sha256:e753f2d09699793cd2957bcb022dc7325a78b9c2aa24f8829496f3e4febeffe5', null from p;

-- Prins Petfoods — NatureCare Veterinary Diet Mobility (6 x 400 g)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/naturecare-diet-dog/mobility-400g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'NatureCare Veterinary Diet Mobility', 'wet', '6 x 400 g', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/naturecare-diet-dog/mobility-400g', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kippenhart, kippenmaag, kippenlever, kippennek, rundvlees, runderlong, zalmolie (2.6%), lijnzaadolie (0.3%), groenlipmosselextract (0.1%), chondroïtine (0.1%), glucosamine (0.09%), bètaglucanen (0.06%).', true, now(), 'sha256:2e1ab48ce50397abdf2956963342dfd61c565511101005d7d14ce32ada590925', null from p;

-- Prins Petfoods — NatureCare Diet Struvite & Calcium Oxalate (6 x 400 g)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/naturecare-diet-dog/struvite-calciumoxalate-400g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'NatureCare Diet Struvite & Calcium Oxalate', 'wet', '6 x 400 g', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/naturecare-diet-dog/struvite-calciumoxalate-400g', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gevogeltehart, gevogeltevlees, gevogeltemaag, runderhart, runderlever, rijst, aardappel, cranberries (3%), zalmolie, lijnzaadolie, mineralen (natriumchloride, calciumchloride).', true, now(), 'sha256:8200fda256573dbe7bc453c66859fae93d1648d6d86305e7543a383e6843cc98', null from p;

-- Prins Petfoods — NatureCare Diet Dog Weight Reduction & Diabetic (6 x 400 g)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/naturecare-diet-dog/weight-reduction-diabetic-400g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'NatureCare Diet Dog Weight Reduction & Diabetic', 'wet', '6 x 400 g', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/naturecare-diet-dog/weight-reduction-diabetic-400g', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kippenhart, kippenmaag, kippenlever, runderhart, runderpens, cellulose, tarwezemelen, calciumcarbonaat.', true, now(), 'sha256:3366167db6ba804cf023dd50849e25b4543988eb0fb8a04a76b5f697ae84ffbe', null from p;

-- Prins Petfoods — TotalCare Lamb & Rice (6 x 2,5 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/totalcare/lamb-rice-2-5kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'TotalCare Lamb & Rice', 'raw', '6 x 2,5 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/totalcare/lamb-rice-2-5kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip 69% (spiervlees, bevleesd rugdeel, vel), lam 23% (pens, long, spiervlees, lever), rijst (5%), bietenpulp, zalmolie, koolzaadolie, mineralen (natriumchloride, kaliumchloride).', true, now(), 'sha256:7187c5e23b831a0ae5d25f10bd91b72da8ccd313d6c17cdf58c78a94dbac9ecf', null from p;

-- Prins Petfoods — TotalCare Puppy (6 x 2,5 kg / 600 g)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/totalcare/puppy-2-5kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'TotalCare Puppy', 'raw', '6 x 2,5 kg / 600 g', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/totalcare/puppy-2-5kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip 52% (bevleesd rugdeel, vel, spiervlees), Rund 36% (pens, long, nier, lever, vet), mais, bietenpulp (gedroogd), zalmolie, zonnebloemolie.', true, now(), 'sha256:9c5fffcb0c5c8ad5e6d3b789110280aef13a40d69703f5534635126e5de50024', null from p;

-- Prins Petfoods — TotalCare Resist Calm (6 x 2,5 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/totalcare/resist-calm-2-5kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'TotalCare Resist Calm', 'raw', '6 x 2,5 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/totalcare/resist-calm-2-5kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip 52% (bevleesd rugdeel, vel, spiervlees), Rund 36% (pens, long, nier, lever, vet), mais, bietenpulp (gedroogd), zalmolie, zonnebloemolie, kruidencomplex (500mg) (siberean ginseng, lycium fruit, polygoni multiflori (He Shou Wu), acantopanax, schizandra, xu duan, tu si zi, xian mao, shan yao).', true, now(), 'sha256:7b5ca2783478d176bf131d5449a0969c619f7f5023fa70a74ea6428b9f308bd5', null from p;

-- Prins Petfoods — TotalCare Super Active (6 x 2,5 kg / 600 g)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/totalcare/super-active-2-5kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'TotalCare Super Active', 'raw', '6 x 2,5 kg / 600 g', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/totalcare/super-active-2-5kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip 52% (bevleesd rugdeel, vel, spiervlees), Rund 36% (pens, long, nier, lever, vet), mais, bietenpulp (gedroogd), zalmolie, zonnebloemolie.', true, now(), 'sha256:9c5fffcb0c5c8ad5e6d3b789110280aef13a40d69703f5534635126e5de50024', null from p;

-- Prins Petfoods — FreshCare Chicken (750 g / 8 x 750 g)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/freshcare/chicken-750g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'FreshCare Chicken', 'raw', '750 g / 8 x 750 g', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/freshcare/chicken-750g', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip 83% (spiervlees, bevleesd rugdeel, vel), rijst, cichoreipulp, andijvie, wortel, venkel, aalbes, zonnebloemolie, visolie.', true, now(), 'sha256:20d190ca52dc3de5843cab6a2c127f8bb8cab83e5fffb1acee3dcf909c2e4292', null from p;

-- Prins Petfoods — FreshCare Duck (750 g / 8 x 750 g)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/freshcare/duck-schijven-750g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'FreshCare Duck', 'raw', '750 g / 8 x 750 g', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/freshcare/duck-schijven-750g', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eend 81% (bevleesd rugdeel, spiervlees, vel, hart, lever), aardappeleiwit, bietenpulp, cichoreipulp, spinazie, appel, wortel, pastinaak, visolie.', true, now(), 'sha256:7302646196e1ba00f30b9eafd1b45456e3e7cf8f965a5f047a9ac1da30e46b4d', null from p;

-- Prins Petfoods — FreshCare Horse (750 g / 8 x 750 g)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/freshcare/horse-schijven-750g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'FreshCare Horse', 'raw', '750 g / 8 x 750 g', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/freshcare/horse-schijven-750g', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Paard (spiervlees, lever) 69%, aardappel, cichorei, pompoen, courgette, visolie (1%), spinazie, erwt, koolzaadolie, appel.', true, now(), 'sha256:46a67518d487c86a63d7a7f704dd97a495c88d3087f75960692c237a25e74600', null from p;

-- Prins Petfoods — FreshCare Lamb (750 g / 8 x 750 g)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/freshcare/lamb-schijven-750g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'FreshCare Lamb', 'raw', '750 g / 8 x 750 g', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/freshcare/lamb-schijven-750g', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam 81% (lamsrib, spiervlees, long, pens en lever), rijst, cichoreipulp, broccoli, wortel, appel, andijvie, zonnebloemolie, visolie.', true, now(), 'sha256:9de0f7ec752a5f819cca5a9f7e078939b6a320c5002e3a887ed75e56c5731086', null from p;

-- Renske — Vers bereide Rund met eend (95 / 185 / 375 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/rund-met-eend-375g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Vers bereide Rund met eend', 'wet', '95 / 185 / 375 g', null, 'https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/rund-met-eend-375g', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rund 42%, eend 8%, erwten 3%, gebroken rijst 2%, wortelen 1%, gedroogde algen (fucus vesiculosus) 0,06%, mineralen 0,04%, Xylo-oligosacchariden, duindoorn, yucca schidigera extract.', true, now(), 'sha256:91aaebffab2da0246ed8dc60be429ad37bb4d5e72bd551a854e642d316480d25', null from p;

-- Renske — Vers bereide Kip graanvrij (95 / 185 / 375 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/kip-graanvrij-375g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Vers bereide Kip graanvrij', 'wet', '95 / 185 / 375 g', null, 'https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/kip-graanvrij-375g', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip 60%, pompoen 5% (flespompoen), erwten 1%, wortelen 1%, gedroogde algen (fucus vesiculosus) 0,06%, Xylo-oligosacchariden, duindoorn, yucca schidigera extract.', true, now(), 'sha256:5f2167cac0fa5c110b1fdfe9a6e908cafc58998528486a29bb2cd5fe86aee4f3', null from p;

-- Renske — Vers bereide Kalkoen graanvrij (95 / 185 / 375 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/kalkoen-graanvrij-375g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Vers bereide Kalkoen graanvrij', 'wet', '95 / 185 / 375 g', null, 'https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/kalkoen-graanvrij-375g', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen 55%, cranberries (8% gedroogd), pompoen 2% (flespompoen), appelsap, erwten 1%, wortelen 1%, gedroogde algen (fucus vesiculosus) 0,06%, zonnebloemolie, mineralen 0,02%, Xylo-oligosacchariden, duindoorn, yucca schidigera extract.', true, now(), 'sha256:8e54289d0d6b1730f6f2b4df7a808489120d696146b217ab6b5a3495719fcdca', null from p;

-- Renske — Vers bereide Kalkoen met eend (95 / 185 / 375 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/kalkoen-met-eend-375g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Vers bereide Kalkoen met eend', 'wet', '95 / 185 / 375 g', null, 'https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/kalkoen-met-eend-375g', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen 45%, eend 20%, erwten 3%, gebroken rijst 2%, wortelen 1%, gedroogde algen (fucus vesiculosus) 0,06%, Xylo-oligosacchariden, duindoorn, yucca schidigera extract.', true, now(), 'sha256:49a72497568c05a92279c8bf847cae22ea583bcfc2a4614bba5122c75949e5a0', null from p;

-- Renske — Vers bereide Oceaanvis (95 / 185 / 375 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/oceaanvis-375g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Vers bereide Oceaanvis', 'wet', '95 / 185 / 375 g', null, 'https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/oceaanvis-375g', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Oceaanvis 40%, waarvan tonijn 36% sardine 4%, gebroken rijst 4%, erwten 3%, wortelen 1%, zalmolie 0,7%, mineralen 0,18%, gedroogde algen (fucus vesiculosus) 0,06%, Xylo-oligosacchariden, duindoorn, yucca schidigera extract.', true, now(), 'sha256:3549dadba74155e9036e9a675632e0a1f22af1814d5f0a37264da04f63efc7e1', null from p;

-- Renske — Vers bereide Lam graanvrij 95g (95 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/lam-graanvrij-95g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Vers bereide Lam graanvrij 95g', 'wet', '95 g', null, 'https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/lam-graanvrij-95g', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam 60%, aardappel 4%, olijfolie 2%, erwten 1%, wortelen 1%, mineralen 0,4%, gedroogde algen (fucus vesiculosus) 0,3%, Xylo-oligosaccharide, duindoorn, yucca schidigera extract.', true, now(), 'sha256:8c812a63c0fc7f4c31a29e96a072ce9f9c986f54bb0395951c1c9cbe2c6eb656', null from p;

-- Renske — Vers bereide Puppy Kip met lam (185 / 375 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/puppy-kip-lam-375g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Vers bereide Puppy Kip met lam', 'wet', '185 / 375 g', null, 'https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/puppy-kip-lam-375g', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip 53%, lam 17%, erwten 3%, gebroken rijst 2%, wortelen 1%, gedroogde algen (fucus vesiculosus) 0,02%, Xylo-oligosacchariden, duindoorn, yucca schidigera extract.', true, now(), 'sha256:88106f15e33f2889378cbb1326850f83ce53679be19811ec9b1b4d97ef07f768', null from p;

-- Renske — Vers bereide Puppy Kip met lam 95g (95 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/puppy-kip-lam-95g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Vers bereide Puppy Kip met lam 95g', 'wet', '95 g', null, 'https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/puppy-kip-lam-95g', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip 48%, lam 12%, erwten 3%, gebroken rijst 2%, wortelen 1%, gedroogde algen (fucus vesiculosus) 0,02%, Xylo-oligosaccharide, duindoorn, yucca schidigera extract.', true, now(), 'sha256:049a866f54e9db20d2c97e34dad330283bf7b3388ae68481bfbeb4858dbc22da', null from p;

-- Renske — Vers gestoomde Kip graanvrij (395 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/kip-graanvrij-395g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Vers gestoomde Kip graanvrij', 'wet', '395 g', null, 'https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/kip-graanvrij-395g', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers gestoomde kip (80%), pompoen (4%), erwten (1%), wortelen (1%), zeewier (0,45%), prebiotica: FOS (Fructo Oligosacchariden), mineralen, yucca, gemalen smeerwortel, peterselie, rozemarijn en knoflook, glucosamine (50 mg/kg), chondroitine (50 mg/kg).', true, now(), 'sha256:b582b8a9bcddd84773c4b9f129a865c0005fd2468b14fb83f0fbb91a35529e10', null from p;

-- Renske — Vers gestoomde Eend met hert graanvrij (395 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/eend-met-hert-graanvrij-395g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Vers gestoomde Eend met hert graanvrij', 'wet', '395 g', null, 'https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/eend-met-hert-graanvrij-395g', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eend (48%), hert (27%), sperziebonen (4%), abrikoos (4%), lijnzaadolie (0,5%), mineralen, gedroogd zeewier (0,5%), peterselie, rozemarijn, brandnetel, kamille, cichoreiwortel extract (als bron van prebiotica fructo-oligosacchariden), glucosamine (50 mg/kg), chondroitine (50 mg/kg) ,yucca extract.', true, now(), 'sha256:3eb7db0cd160dda1f2440d85a4d1eeff700415f57248facbbbf7b6882bd40e84', null from p;

-- Renske — Vers gestoomde Kalkoen met eend (395 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/kalkoen-met-eend-395g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Vers gestoomde Kalkoen met eend', 'wet', '395 g', null, 'https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/kalkoen-met-eend-395g', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse gestoomde kalkoen (62%), vers gestoomde eend (18%), erwten (3%), bruine rijst (2%), wortelen (1%), mineralen, gedroogd zeewier (0,45%), peterselie, rozemarijn, cichoreiwortel extract (als bron van prebiotica fructo-oligosacchariden), glucosamine (50 mg/kg), chondroitine (50 mg/kg) ,yucca extract.', true, now(), 'sha256:340ed2e1dbdcc5baf97392b00367b19c1d8e60dafcf0dc4be5e7736090111082', null from p;

-- Renske — Vers gestoomde Kalkoen graanvrij (395 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/kalkoen-graanvrij-395g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Vers gestoomde Kalkoen graanvrij', 'wet', '395 g', null, 'https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/kalkoen-graanvrij-395g', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers gestoomde kalkoen (75%), kalkoenlever (5%), cranberries (4%), pompoen (1%), erwten (1%), wortelen (1%), mineralen, gedroogd zeewier (0,45%), peterselie, rozemarijn, cichoreiwortel extract als bron van prebiotica fructo-oligosacchariden), glucosamine (50 mg/kg), chondroitine (50 mg/kg) ,yucca extract.', true, now(), 'sha256:367f77b00bd04c09cbeac06bc9da7d41b29636f3040eddcaef896006512e6718', null from p;

-- Renske — Vers gestoomde Kalkoen met gans graanvrij (395 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/kalkoen-met-gans-graanvrij-395g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Vers gestoomde Kalkoen met gans graanvrij', 'wet', '395 g', null, 'https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/kalkoen-met-gans-graanvrij-395g', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen (48%), gans (27%), pompoen (4%), cranberries (4%), lijnzaadolie (0,5%), mineralen, gedroogd zeewier (0,5%), peterselie, rozemarijn, brandnetel, kamille, cichoreiwortel extract (als bron van prebiotica fructo-oligosacchariden), glucosamine (50 mg/kg), chondroitine (50 mg/kg) ,yucca extract.', true, now(), 'sha256:75e188aa45778533c3631f9a78be61c8d6baab2b3140a9da6c13b955957b9c59', null from p;

-- Renske — Vers gestoomde Lam graanvrij (395 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/lam-graanvrij-395g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Vers gestoomde Lam graanvrij', 'wet', '395 g', null, 'https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/lam-graanvrij-395g', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers gestoomde lam (80%), zoete aardappel (4%), erwten (1%), wortelen (1%), mineralen, gedroogd zeewier (0,45%), peterselie, rozemarijn, cichoreiwortel extract (als bron van prebiotica fructo-oligosacchariden), glucosamine (50 mg/kg), chondroitine (50 mg/kg) ,yucca extract.', true, now(), 'sha256:eaa5cf6214ff15706e4e76a6ab6a80cf9cec71487771300cd405a8c2b305cd5e', null from p;

-- Renske — Vers gestoomde Zalm graanvrij (395 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/zalm-graanvrij-395g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Vers gestoomde Zalm graanvrij', 'wet', '395 g', null, 'https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/zalm-graanvrij-395g', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers gestoomde zalm (80%), aardappel (10%), gedroogd zeewier (0,84%), cichoreiwortel extract (als bron van prebiotica fructo-oligosacchariden), yucca extract.', true, now(), 'sha256:ead0f77f66ae3ce1a3a0ff886cbaf34de5de288185a2a914dd5d5fc3445c0a25', null from p;

-- Renske — Vers gestoomde Oceaanvis (395 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/oceaanvis-395
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Vers gestoomde Oceaanvis', 'wet', '395 g', null, 'https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/oceaanvis-395', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers gestoomde oceaanvis (82%), bruine rijst (4%), erwten (3%), wortelen (1%), gedroogd zeewier (0,84%), peterselie, rozemarijn, cichoreiwortel extract (als bron van prebiotica fructo-oligosacchariden), glucosamine (50 mg/kg), chondroitine (50 mg/kg) ,yucca extract.', true, now(), 'sha256:d63207b9b84754a659b17c32c9873b94965922c9bec29600856b10b34650d373', null from p;

-- Renske — Vers gestoomde Puppy Kip met lam (395 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/puppy-kip-lam-395g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Vers gestoomde Puppy Kip met lam', 'wet', '395 g', null, 'https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/puppy-kip-lam-395g', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers gestoomde kip (60%), vers gestoomde lam (20%), erwten (3%), bruine rijst (2%), wortelen (1%), mineralen, gedroogd zeewier (0,45%), peterselie, rozemarijn, cichoreiwortel extract (als bron van prebiotica fructo-oligosacchariden), glucosamine (50 mg/kg), chondroitine (50 mg/kg) ,yucca extract.', true, now(), 'sha256:0098929c77f6f7c4460f61006b2b3c1a71087ca6af8008aac06c936aaf0b4775', null from p;

-- Renske — Kerstdiner Kalkoen met cranberry (395 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/special-edition-kerstdiner-395g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Kerstdiner Kalkoen met cranberry', 'wet', '395 g', null, 'https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/special-edition-kerstdiner-395g', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers gestoomde kalkoen (75%), kalkoenlever (5%), cranberries (4%), pompoen (1%), erwten (1%), wortelen (1%), mineralen, gedroogd zeewier (0,45%), peterselie, rozemarijn, cichoreiwortel extract als bron van prebiotica fructo-oligosacchariden), glucosamine (50 mg/kg), chondroitine (50 mg/kg) ,yucca extract.', true, now(), 'sha256:367f77b00bd04c09cbeac06bc9da7d41b29636f3040eddcaef896006512e6718', null from p;

-- Renske — Kerstdiner Wildstoofpotje met abrikoos (395 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/special-edition-kerstdiner-wildstoofpotje-395g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Kerstdiner Wildstoofpotje met abrikoos', 'wet', '395 g', null, 'https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/special-edition-kerstdiner-wildstoofpotje-395g', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'eend (48%), hert (27%), sperziebonen (4%), abrikoos (4%), lijnzaadolie (0,5%), mineralen, gedroogd zeewier (0,5%), peterselie, rozemarijn, brandnetel, kamille, cichoreiwortel extract (als bron van prebiotica fructo-oligosacchariden), glucosamine (50 mg/kg), chondroitine (50 mg/kg), yucca extract.', true, now(), 'sha256:9d4d247b7476841da77770e8f6a344b4df75052219859f2d3de3f166e06955bc', null from p;

-- Renske — Biologisch Vers Gestoomde Kip 300g (300 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/renske-biologische-hondenvoeding/vers-gestoomde-kip-300g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Biologisch Vers Gestoomde Kip 300g', 'wet', '300 g', null, 'https://www.renske.com/nl/producten/hondenvoer/renske-biologische-hondenvoeding/vers-gestoomde-kip-300g', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Biologisch gecertificeerde kip (vleugels, nek, lever, karkas) (89%), biologisch lijnzaad (6%), biologische kruidenmix (brandnetel, rozenbottel, anijs, kamille, melisse, Echinacea) (1,6%), mineralen.', true, now(), 'sha256:f3f6d8648e55fa434f6617386ee704f1b56accb6c194c369b4e7e638cdcd03dd', null from p;

-- Renske — Biologisch Vers Gestoomde Rund (500 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/renske-biologische-hondenvoeding/vers-gestoomde-rund-500g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Biologisch Vers Gestoomde Rund', 'wet', '500 g', null, 'https://www.renske.com/nl/producten/hondenvoer/renske-biologische-hondenvoeding/vers-gestoomde-rund-500g', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Biologisch gecertificeerde rund (long, lever, hart) (53%), biologische kip (vleugels, nek, karkas) (25%), biologische boekweit, biologisch lijnzaad (5%), biologische kruidenmix (brandnetel, rozenbottel, anijs, kamille, melisse, Echinacea) (1%), mineralen.', true, now(), 'sha256:42cc944e399d0fed74eaf349f4b6188339a2907a6d14408746dc6e0f87061143', null from p;

-- Renske — Biologisch Vers Gestoomde Rund 300g (300 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/renske-biologische-hondenvoeding/vers-gestoomde-rund-300g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Biologisch Vers Gestoomde Rund 300g', 'wet', '300 g', null, 'https://www.renske.com/nl/producten/hondenvoer/renske-biologische-hondenvoeding/vers-gestoomde-rund-300g', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Biologisch gecertificeerde rund (long, hart, lever) (89%), biologisch lijnzaad (6%), biologische kruidenmix (brandnetel, rozenbottel, anijs, kamille, melisse, Echinacea) (1,6%), mineralen.', true, now(), 'sha256:dbcc1b79299f5f62f09de94c1ca7a627a1c3b5ac0e9a68d1952cf15b8af2409b', null from p;

-- Renske — Super Premium Vers bereide Zalm (600 g / 2 / 6,5 / 12 kg)
-- bron: https://www.renske.com/nl/producten/hondenvoer/super-premium/vers-bereide-zalm
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Super Premium Vers bereide Zalm', 'kibble', '600 g / 2 / 6,5 / 12 kg', null, 'https://www.renske.com/nl/producten/hondenvoer/super-premium/vers-bereide-zalm', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse bereide zalm (27%), aardappel (16%), zoete aardappel (16%), gedroogde zalm (12%), bietenpulp, erwten (6%), zalmolie, gedroogde krill (4%), biergist, mineralen, zalmbouillon, lijnzaad, gedroogde witte asperges (0,2%), gedroogde wortel (0,08%), gedroogde spinazie (0,08%), zeewier, beta-glucanen, gedroogde cranberries, gedroogde appel (0,04%), gedroogde peer, gedroogde broccoli, gedroogde tomaat, glucosamine (170 mg/kg), methylsulfonylmethaan (MSM) (170 mg/kg), chondroïtinesulfaat (120mg/kg).', true, now(), 'sha256:328b09ee9c02e8f7ea37e7a6bf1911e61b7e48ca208ebeb30c53034112094e1e', null from p;

-- Renske — Super Premium Vers bereide Lam (600 g / 2 / 6,5 / 12 kg)
-- bron: https://www.renske.com/nl/producten/hondenvoer/super-premium/vers-bereide-lam
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Super Premium Vers bereide Lam', 'kibble', '600 g / 2 / 6,5 / 12 kg', null, 'https://www.renske.com/nl/producten/hondenvoer/super-premium/vers-bereide-lam', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide lam (min. 26%), zoete aardappel, aardappel (16%), gedroogde lam (12%), erwten, erwten eiwitten, lamsvet, aardappel eiwit, biergist, bietenpulp, lijnzaad, lamsbouillon, mineralen, zeewier, beta-glucanen, gedroogde cranberries (0,04%), gedroogde appel (0,04%), gedroogde peer (0,04%), gedroogde broccoli (0,04%), gedroogde tomaat (0,04%), glucosamine (170 mg/kg), methylsulfonylmethaan (MSM) (170 mg/kg), chondroïtinesulfaat (120 mg/kg).', true, now(), 'sha256:39ccdb7dd94d7876571737d9769260108ab9784da2cd1ab874baa151556f2e12', null from p;

-- Renske — Super Premium Vers bereide Oceaanvis (600 g / 2 / 6,5 / 12 kg)
-- bron: https://www.renske.com/nl/producten/hondenvoer/super-premium/vers-bereide-oceaanvis
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Super Premium Vers bereide Oceaanvis', 'kibble', '600 g / 2 / 6,5 / 12 kg', null, 'https://www.renske.com/nl/producten/hondenvoer/super-premium/vers-bereide-oceaanvis', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse witte vis (26%), gedroogde oceaan vis (heek, koolvis en kabeljauw, min. 21%), rijst, sorghum, erwten eiwit, erwten (5%), zongedroogde luzerne (4,5%), kippenbouillon, kippenvet, bietenpulp, gedroogde cichoreiwortel (een natuurlijke bron van FOS en inuline) verse zalmolie, biergist, gedroogde Antarctische krill (1,5%), gedroogde appel (1,5%), lijnzaad (1,2%), mineralen (natriumtripolyfosfaat 0,1%), gedroogde wortel (0,5%), gedroogde spinazie (0,05%), cranberries (0,02%), MOS (mannanoligosachariden), Macleaya cordata, Yucca schidigera.', true, now(), 'sha256:8cf4c70fcba0f4a50eb102b94198d89fc0878027fe6c49d801e84f1046a8e961', null from p;

-- Renske — Super Premium Vers bereide Kalkoen met eend (600 g / 2 / 6,5 / 12 kg)
-- bron: https://www.renske.com/nl/producten/hondenvoer/super-premium/vers-bereide-kalkoen-met-eend
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Super Premium Vers bereide Kalkoen met eend', 'kibble', '600 g / 2 / 6,5 / 12 kg', null, 'https://www.renske.com/nl/producten/hondenvoer/super-premium/vers-bereide-kalkoen-met-eend', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide kalkoen (15%), vers bereide eend (14%), bruine rijst, rijst, gedroogde eend (12%), gedroogde kalkoen (12%), haver (11%), lijnzaad, eendenvet (3%), mineralen, eendenbouillon (1,5%), zeewier (0,07%), beta-glucanen, gedroogde appel (0,04%), gedroogde tomaat (0,04%), gedroogde cranberries, gedroogde peer (0,04%), gedroogde broccoli (0,04%), glucosamine (170 mg/kg), methylsulfonylmethaan (170 mg/kg), chondroïtinesulfaat (120 mg/kg).', true, now(), 'sha256:f72f55c0b81d14913ee23b44af83272da9c2aa2e9f7453cfbddddfc24fbdcbe2', null from p;

-- Renske — Super Premium Vers bereide Eend met konijn (600 g / 2 / 6,5 / 12 kg)
-- bron: https://www.renske.com/nl/producten/hondenvoer/super-premium/vers-bereide-eend-met-konijn
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Super Premium Vers bereide Eend met konijn', 'kibble', '600 g / 2 / 6,5 / 12 kg', null, 'https://www.renske.com/nl/producten/hondenvoer/super-premium/vers-bereide-eend-met-konijn', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse eend (30%), rijst, gedroogd konijn (12%), sorghum, gierst, gedroogde eend (9%), haver (5%), lijnzaad, eendenvet (3%), mineralen, eendenbouillon (1,5%), zeewier, beta-glucanen, gedroogde appel (0,04%), gedroogde tomaat (0,04%), gedroogde cranberries (0,04%), gedroogde peer (0,04%), gedroogde broccoli (0,04%), glucosamine (170 mg/kg), methylsulfonylmethaan (MSM) (170 mg/kg), chondroïtinesulfaat (120 mg/kg).', true, now(), 'sha256:7b8c49a27c735e6dcb7725bda9e54203b740fdc9771838dc29ae03f49951a39d', null from p;

-- Renske — Super Premium Vers bereide Kalkoen senior (600 g / 2 / 6,5 / 12 kg)
-- bron: https://www.renske.com/nl/producten/hondenvoer/super-premium/vers-bereide-kalkoen-senior
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Super Premium Vers bereide Kalkoen senior', 'kibble', '600 g / 2 / 6,5 / 12 kg', null, 'https://www.renske.com/nl/producten/hondenvoer/super-premium/vers-bereide-kalkoen-senior', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers gevogelte (kalkoen en kip 26%), gedroogd gevogelte (kalkoen en kip, min. 24%), sorghum, aardappel, erwten (5%), kippenbouillon, gedroogde appel (3%), bietenpulp, gedroogde cichoreiwortel, johannesbroodmeel, zongedroogde luzerne, biergist, lijnzaad (1,2%), gevogeltevet, verse zalmolie, gedroogde wortel (0,5%), mineralen (natriumtripolyfosfaat 0,1%), gedroogde spinazie (0,05%), cranberries (0,023%), MOS (mannanoligosaccheriden), chondroïtinesulfaat, glucosamine, Macleaya cordata, Yucca Schidigera.', true, now(), 'sha256:e1a39e77c839d33e939395ed1ca452237e29d7431ac3c4176ec6fe17780afec0', null from p;

-- Renske — Super Premium Mini Vers bereide Kip met lam (600 g / 2 / 6,5 kg)
-- bron: https://www.renske.com/nl/producten/hondenvoer/super-premium/mini-vers-bereide-kip-lam
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Super Premium Mini Vers bereide Kip met lam', 'kibble', '600 g / 2 / 6,5 kg', null, 'https://www.renske.com/nl/producten/hondenvoer/super-premium/mini-vers-bereide-kip-lam', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide kip (26%), gedroogde kip (15%), bruine rijst, gierst, sorghum, haver, gevogeltevet, bietenpulp, gedroogde lam (5%), gedroogde krill, gedroogd ei, kippenbouillon, mineralen, biergist, lijnzaad (1,2%), zeewier, beta-glucanen, gedroogde cranberries (0,04%), gedroogde appel (0,04%), gedroogde tomaat (0,04%), gedroogde peer (0,04%), gedroogde broccoli (0,04%), glucosamine (170 mg/kg), methylsulfonylmethaan (MSM) (170 mg/kg), chondroïtinesulfaat (125 mg/kg).', true, now(), 'sha256:a4e6f1d5a6f33ecf5ae98d1072122c78252e4a612ace14a6701398363ddb7272', null from p;

-- Renske — Super Premium Puppy Vers bereide Kip met lam (600 g / 2 / 6,5 / 12 kg)
-- bron: https://www.renske.com/nl/producten/hondenvoer/super-premium/vers-bereide-kip-en-lam-puppy
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Super Premium Puppy Vers bereide Kip met lam', 'kibble', '600 g / 2 / 6,5 / 12 kg', null, 'https://www.renske.com/nl/producten/hondenvoer/super-premium/vers-bereide-kip-en-lam-puppy', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse kip (26%), gedroogde kip (15%), bruine rijst, gierst, sorghum, haver, gevogeltevet, bietenpulp, gedroogde lam (5%), gedroogde krill, gedroogd ei, kippenbouillon, mineralen, biergist, lijnzaad (1,2%), zeewier, beta-glucanen, gedroogde cranberries (0,04%), gedroogde appel (0,04%), gedroogde tomaat (0,04%), gedroogde peer (0,04%), gedroogde broccoli (0,04%), glucosamine (170 mg/kg), methylsulfonylmethaan (MSM) (170 mg/kg), chondroïtinesulfaat (125 mg/kg).', true, now(), 'sha256:b1f77fee89afa15272e7348ca0d0d176fc6687981a2bfd44d133aedb8aa95a03', null from p;

-- Renske — M.O.P. Vers bereide Lam & Rijst (600 g / 3 / 6,5 / 12 kg)
-- bron: https://www.renske.com/nl/producten/hondenvoer/mop-droogvoer/vers-bereide-lam-met-rijst
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'M.O.P. Vers bereide Lam & Rijst', 'kibble', '600 g / 3 / 6,5 / 12 kg', null, 'https://www.renske.com/nl/producten/hondenvoer/mop-droogvoer/vers-bereide-lam-met-rijst', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse lam (26%), gedroogde lam (20%), rijst (20%), mais, havermeel uit gepelde zaden, lijnzaad (5%), erwtenmeel, bietenpulp, gevogeltevet, plantaardige oliën (palm en kokosnoot), gemalen zeezoöplankton (krill) (3%), gedroogde biergist, gedroogd johannesbroodmeel, druivenpitextract, gevogeltelever (gehydroliseerd), steenzout.', true, now(), 'sha256:54b4d1571ca846c2ef17ce9c798895d331a65e811c9b74f23d094f36698981d3', null from p;

-- Renske — M.O.P. Vers bereide Kalkoen met eend (600 g / 3 / 6,5 / 12 kg)
-- bron: https://www.renske.com/nl/producten/hondenvoer/mop-droogvoer/verse-kalkoen-met-eend
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'M.O.P. Vers bereide Kalkoen met eend', 'kibble', '600 g / 3 / 6,5 / 12 kg', null, 'https://www.renske.com/nl/producten/hondenvoer/mop-droogvoer/verse-kalkoen-met-eend', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse kalkoen (14%), ontsloten rijst, havermout, maïs, gedroogde kalkoen (12%), rijst, erwten, gevogeltevet, gedroogde eend (4%), lijnzaad (4%), erwtenzetmeel, zalmolie, gedroogde bietenpulp, biergist, gedroogde johannesbrood, eipoeder, mineralen, inuline (bron van FOS), cranberry, glucosamine, chondroïtine.', true, now(), 'sha256:3ef6024a2ed418a8beb82c3c641dbcdb5688dbd8d03ab9d162b573e5a17fb9a3', null from p;

-- Renske — M.O.P. Vers bereide Zalm (600 g / 3 / 6,5 / 12 kg)
-- bron: https://www.renske.com/nl/producten/hondenvoer/mop-droogvoer/verse-zalm
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'M.O.P. Vers bereide Zalm', 'kibble', '600 g / 3 / 6,5 / 12 kg', null, 'https://www.renske.com/nl/producten/hondenvoer/mop-droogvoer/verse-zalm', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse zalm (14%), ontsloten rijst, havermout, maïs, erwtenzetmeel, rijst, gedroogde zalm (7%), erwten, gevogeltevet, lijnzaad (4%), mineralen, gehydrolyseerde kippenlever, gedroogde bietenpulp, biergist, zalmolie, gedroogde johannesbrood, eipoeder, inuline (bron van FOS), cranberry, glucosamine, chondroïtine.', true, now(), 'sha256:585809cc5675e555faa4f1696a5fd94fd0ef2063f24662931fa255830dfd8ac9', null from p;

-- Renske — Vers Ingevroren Kalkoen (600 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/renske-vers-ingevroren/kalkoen-600g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Vers Ingevroren Kalkoen', 'raw', '600 g', null, 'https://www.renske.com/nl/producten/hondenvoer/renske-vers-ingevroren/kalkoen-600g', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers ingevroren kalkoenvlees (73%), wortel (8%), spinazie (6%), kalkoen lever (5%), lijnzaad (4%), appel (2%), mineralen, koolzaadolie.', true, now(), 'sha256:00da2195e89b6c7c395cbe2e27ca49a4a34b404c29b3184b33e108bcbcd9d842', null from p;

-- Smuldier — Complete maaltijd Rundvlees (400 g)
-- bron: https://smuldier.nl/product/smuldier-complete-maaltijd-400g-rundvlees-2/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smuldier', 'Complete maaltijd Rundvlees', 'raw', '400 g', null, 'https://smuldier.nl/product/smuldier-complete-maaltijd-400g-rundvlees-2/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rundersteekvlees 25,0%, runderkeelvlees 25,0%, bevleesde runderribben 25,0%, rundervlees 12,5%, runderlever 5,0%, rundermilten 3,8%, rundernieren 1,9%, vitamines en mineralen 1,0%, zonnebloemolie 0,8%.', true, now(), 'sha256:c63412d6c3fb07ce484dd360e980d2b82c1ee9e3c8b78344418450e4b42ad41e', null from p;

-- Smuldier — Complete maaltijd Lam met Rijst (4 x 60 g)
-- bron: https://smuldier.nl/product/lam-met-rijst-complete-maaltijd-4x60g-2/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smuldier', 'Complete maaltijd Lam met Rijst', 'raw', '4 x 60 g', null, 'https://smuldier.nl/product/lam-met-rijst-complete-maaltijd-4x60g-2/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam 28,1%, kippenvlees 28,1%, bevleesde kippenkarkassen 21,9%, rijst 10%, vitamines en mineralen 1%, oliën en vetten 0,8%.', true, now(), 'sha256:a1f0205f67c46444e27884821779c03481bca773a6e741d586b0cc22e60f9a9c', null from p;

-- Smuldier — Complete maaltijd Kip met Groenten (4 x 60 g)
-- bron: https://smuldier.nl/product/smuldier-complete-maaltijd-4x60g-kip-met-groenten/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smuldier', 'Complete maaltijd Kip met Groenten', 'raw', '4 x 60 g', null, 'https://smuldier.nl/product/smuldier-complete-maaltijd-4x60g-kip-met-groenten/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kippenvlees (min. 26%), bevleesd kippenkarkas, groenten (min. 10%, in wisselende samenstelling: erwten, andijvie, wortel), rijst, vitaminen en mineralen, zonnebloemolie.', true, now(), 'sha256:3b66bee38b2fa425a23c668cb1f528aa77d0af5a5cf2b8e4e6e464d3a20a40e4', null from p;

-- Smuldier — Complete maaltijd Rund met Groenten (4 x 60 g)
-- bron: https://smuldier.nl/product/rund-met-groenten-complete-maaltijd-4x60g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smuldier', 'Complete maaltijd Rund met Groenten', 'raw', '4 x 60 g', null, 'https://smuldier.nl/product/rund-met-groenten-complete-maaltijd-4x60g/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rundersteekvlees 26%, bevleesd kippenkarkas 23,4%, kippenvlees 18,7%, rijst10%, groenten (min. 10%, in wisselende samenstelling: courgette, wortel en spinazie), vitamines en mineralen, zonnebloemolie.', true, now(), 'sha256:a5eeeb12339b40e8161e1f2125601d195236ed416e0bcf626c886d0b7d17dedb', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
