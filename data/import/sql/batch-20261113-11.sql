-- Automatisch overgenomen etiketten, batch 11 van 2026-11-13 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Alsa Nature — Classic Wild-Ragout met rode bieten, aardappel en appel (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92006001
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92006001', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Wild (bestaande uit hart, vlees, lever, longen en pens van wild), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 23,9% bouillon, 5% aardappel, 3% rode biet, 2% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:1fc11a3d2946c1847e5fce4c494744b02a219cfb990b5310acdcd1ba9be3aa7c', null from p;

-- Alsa Nature — Classic Wild-Ragout met rode bieten, aardappel en appel (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92006101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92006101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Wild (bestaande uit hart, vlees, lever, longen en pens van wild), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 23,9% bouillon, 5% aardappel, 3% rode biet, 2% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:1fc11a3d2946c1847e5fce4c494744b02a219cfb990b5310acdcd1ba9be3aa7c', null from p;

-- Alsa Nature — Classic Hert met zoete aardappel en kastanjes (200 g)
-- bron: https://www.alsa-nature.nl/p/92007101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Hert met zoete aardappel en kastanjes', 'wet', '200 g', '4050001116114', 'https://www.alsa-nature.nl/p/92007101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Hert, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 27,9% bouillon, 5% zoete aardappel, 1% kastanje, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:f6769b7bfa9d15eac38dc1a78c0c9acb6b0c81a72d8643a3fd426c161d0da13c', null from p;

-- Alsa Nature — BIO Rund met aardappel en rode bieten (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92022200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'BIO Rund met aardappel en rode bieten', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92022200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '65% Rund*, 28% bouillon*, 4% aardappel*, 2% rode bieten*, 1% mineralen. *Uit gecontroleerde biologische aanbouw/houderij', true, now(), 'sha256:3bd8db67cabb46bfb5b499db98d7e4513b052d271266932b9c896a3451b99540', null from p;

-- Alsa Nature — Classic Bizon met pastinaak, rode bieten & appel (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92026400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92026400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '30% Bizon, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,9% bouillon, 3% pastinaak, 3% rode bieten, 3% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:c94f42101f67b5b48ced5069838cc0e21d28c8055bebab4fd53ad2dfba56bc1b', null from p;

-- Alsa Nature — Classic Bizon met pastinaak, rode bieten & appel (800 g)
-- bron: https://www.alsa-nature.nl/p/92026600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', 'wet', '800 g', '4050001116275', 'https://www.alsa-nature.nl/p/92026600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '30% Bizon, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,9% bouillon, 3% pastinaak, 3% rode bieten, 3% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:c94f42101f67b5b48ced5069838cc0e21d28c8055bebab4fd53ad2dfba56bc1b', null from p;

-- Alsa Nature — Classic Bizon met pastinaak, rode bieten & appel (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92026800
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92026800', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '30% Bizon, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,9% bouillon, 3% pastinaak, 3% rode bieten, 3% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:c94f42101f67b5b48ced5069838cc0e21d28c8055bebab4fd53ad2dfba56bc1b', null from p;

-- Alsa Nature — JUNIOR Eend met abrikoos (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92029700
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Eend met abrikoos', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92029700', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '30% Eend, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,8% bouillon, 3% pompoen, 3% venkel, 3% abrikoos, 1% mineralen, 0,1% levertraan, 0,1% lijnolie', true, now(), 'sha256:571bc9e84fdbef76c4f7d66f241b80b1fd25f45a410a2ce91e0e1ea089343b96', null from p;

-- Alsa Nature — SINGLE Kalkoen puur (400 g)
-- bron: https://www.alsa-nature.nl/p/92027800
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kalkoen puur', 'wet', '400 g', '4050001116688', 'https://www.alsa-nature.nl/p/92027800', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoennekken), bouillon 28,5%, mineralen 1%, distelolie 0,5%', true, now(), 'sha256:7c01b711f4038061fb77e21d0d0cc1fa8a01462032c83e0701e566f974e08b91', null from p;

-- Alsa Nature — Classic Kalkoen met zoete aardappel, peer & paardebloem (400 g)
-- bron: https://www.alsa-nature.nl/p/92027200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', 'wet', '400 g', '4050001116299', 'https://www.alsa-nature.nl/p/92027200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '31% Kalkoen (bestaande uit kalkoenenharten, kalkoenvlees, kalkoenlever, kalkoenennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,9% bouillon, 3% zoete aardappel, 3% peer, 1% paardenbloem, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:25559e76815297ca19ceb3b9957f3b08a32043e417960a8285520bc27b9a93d0', null from p;

-- Alsa Nature — JUNIOR Runderhart met aardappel & wortel (400 g)
-- bron: https://www.alsa-nature.nl/p/92029300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Runderhart met aardappel & wortel', 'wet', '400 g', '4050001116466', 'https://www.alsa-nature.nl/p/92029300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Rund (bestaande uit rundvlees, 10% runderhart, runderlever, runderlongen, runderpens), 28,8% bouillon, 3% aardappel, 3% wortel, 1% mineralen, 0,1% levertraan, 0,1% lijnolie', true, now(), 'sha256:16bf01f1dc3993857ec2d25ededf1dd5498eba9e8ca7eb3d622f80c57d38c10e', null from p;

-- Alsa Nature — SINGLE Kalkoen puur (800 g)
-- bron: https://www.alsa-nature.nl/p/92028100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kalkoen puur', 'wet', '800 g', '4050001116695', 'https://www.alsa-nature.nl/p/92028100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoennekken), bouillon 28,5%, mineralen 1%, distelolie 0,5%', true, now(), 'sha256:7c01b711f4038061fb77e21d0d0cc1fa8a01462032c83e0701e566f974e08b91', null from p;

-- Alsa Nature — SINGLE Kalkoen puur (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92028200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kalkoen puur', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92028200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoennekken), bouillon 28,5%, mineralen 1%, distelolie 0,5%', true, now(), 'sha256:7c01b711f4038061fb77e21d0d0cc1fa8a01462032c83e0701e566f974e08b91', null from p;

-- Alsa Nature — Light Speciaal Eiwit (3 kg)
-- bron: https://www.alsa-nature.nl/p/91310201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Light Speciaal Eiwit', 'kibble', '3 kg', '4050001101738', 'https://www.alsa-nature.nl/p/91310201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gevogelte 21%, rijst, bietenvezels, gevogelte eiwit gehydroliseerd 3%, vet van gevogelte, natriumchloride, cichoreipoeder, Nieuw-Zeelandse groenlipmossel (Perna canaliculus) gedroogd', true, now(), 'sha256:075928fe2feb8008a8f2c9ee0685d316c8e96c7c4276b1b651c3252e51deb294', null from p;

-- Alsa Nature — Speciaal Light-menu (60 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92040700
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Light-menu', 'wet', '60 x 400 g', null, 'https://www.alsa-nature.nl/p/92040700', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '56% Kip (bestaande uit kippenmagen, kippenlever, kippennekken), 31,6% bouillon, 5% pompoen, 4% rijst, 2% cellulose, 1% mineralen, 0,2% distelolie, 0,2% zalmolie', true, now(), 'sha256:d21ee0ded14bcae787236b3e4a81c600c570ccffdcd0492ae47e996b8f0d58fb', null from p;

-- Alsa Nature — JUNIOR Kip & zalm met aardappel (400 g)
-- bron: https://www.alsa-nature.nl/p/92041000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Kip & zalm met aardappel', 'wet', '400 g', '4050001116459', 'https://www.alsa-nature.nl/p/92041000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippenhals), 29,8% bouillon, 10% zalm, 3% aardappel, 3% pompoen, 3% courgette, 1% mineralen, 0,1% lijnolie, 0,1% levertraan.', true, now(), 'sha256:eed7afbd2ba96be23e52a21c29a6c5280e4846484aa50ea7ed05e614546b1e93', null from p;

-- Alsa Nature — Senior Lam met pastinaak, pompoen & abrikoos (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92041500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92041500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '61% Lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslongen, lamspens), 29,5% bouillon, 4% pastinaak, 2% pompoen, 2% abrikoos, 1% mineralen, 0,5% distelolie.', true, now(), 'sha256:d80a3a081cdd98e3264cb1e8c715c03e858292e88316da2f0ab0c9dd161ef2b6', null from p;

-- Alsa Nature — Speciaal Nierdieet (30 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92040000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Nierdieet', 'wet', '30 x 400 g', null, 'https://www.alsa-nature.nl/p/92040000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35,3% Bouillon, 35% kip (bestaande uit kippenharten, kippenmagen, kippenvet), 12% rijst, 10% aardappelen, 5% pompoen, 1% mineralen, 1% cellulose, 0,5% zalmolie, 0,1% voleipoeder, 0,1% biergist', true, now(), 'sha256:5bc16099b3cf0be75f656662e9c63fee5a52c64f22b47951501ab4c54778fbfe', null from p;

-- Alsa Nature — Speciaal Sensibel (30 x 200 g)
-- bron: https://www.alsa-nature.nl/p/92040200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Sensibel', 'wet', '30 x 200 g', null, 'https://www.alsa-nature.nl/p/92040200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenmagen, kippenlever, kippennekken), 30% bouillon, 8% rijst, 6% appels, 5% wortel, 5% hüttenkäse, 1% mineralen, monocalciumfosfaat', true, now(), 'sha256:7054a6c636ce1f252f50ac80a2d170481c5f99cdf2264b889a71298b9bc8c496', null from p;

-- Alsa Nature — Speciaal Sensibel (60 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92040500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Sensibel', 'wet', '60 x 400 g', null, 'https://www.alsa-nature.nl/p/92040500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Kip (bestaande uit kippenmagen, kippenlever, kippennekken), 30% bouillon, 8% rijst, 6% appels, 5% wortel, 5% hüttenkäse, 1% mineralen, monocalciumfosfaat', true, now(), 'sha256:7054a6c636ce1f252f50ac80a2d170481c5f99cdf2264b889a71298b9bc8c496', null from p;

-- Alsa Nature — Speciaal Single-sensitief (30 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92040800
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Single-sensitief', 'wet', '30 x 400 g', null, 'https://www.alsa-nature.nl/p/92040800', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Paard (bestaande uit paardenvlees, paardenlever), 7% pompoen, 7% courgette, 7% zoete aardappel, 1% mineralen, 0,5% distelolie, monocalciumfosfaat', true, now(), 'sha256:76fbba52907d123eb5908b7dcfd42651c46f1ec9e1fcc3597dbd8337c547bff6', null from p;

-- Alsa Nature — Speciaal Single-sensitief (60 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92040900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Single-sensitief', 'wet', '60 x 400 g', null, 'https://www.alsa-nature.nl/p/92040900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '45% Paard (bestaande uit paardenvlees, paardenlever), 7% pompoen, 7% courgette, 7% zoete aardappel, 1% mineralen, 0,5% distelolie, monocalciumfosfaat', true, now(), 'sha256:76fbba52907d123eb5908b7dcfd42651c46f1ec9e1fcc3597dbd8337c547bff6', null from p;

-- Alsa Nature — Senior Lam met pastinaak, pompoen & abrikoos (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92041700
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Senior Lam met pastinaak, pompoen & abrikoos', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92041700', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '61% Lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslongen, lamspens), 29,5% bouillon, 4% pastinaak, 2% pompoen, 2% abrikoos, 1% mineralen, 0,5% distelolie.', true, now(), 'sha256:d80a3a081cdd98e3264cb1e8c715c03e858292e88316da2f0ab0c9dd161ef2b6', null from p;

-- Alsa Nature — SIMPLE Wild puur (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920560
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Wild puur', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/920560', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Wild (bestaande uit hart, spiervlees, lever, long, pens), 28% bouillon', true, now(), 'sha256:0e382179b6b3239616c4abf7c43ba0cde9e9ba914b3c13319246831c3cb38c2c', null from p;

-- Alsa Nature — SINGLE Paard met aardappel (120 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920643
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Paard met aardappel', 'wet', '120 x 400 g', null, 'https://www.alsa-nature.nl/p/920643', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Paard (bestaande uit paardenvlees, paardenhart, paardenlever), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:425d605b0eb5772fa93f681b963c849f368b11355f86314d2a96628ef17c75f0', null from p;

-- Alsa Nature — INSECTUM Insecten met erwten, pompoen & abrikoos (750 g)
-- bron: https://www.alsa-nature.nl/p/920515
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'INSECTUM Insecten met erwten, pompoen & abrikoos', 'wet', '750 g', '4050001121248', 'https://www.alsa-nature.nl/p/920515', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '50% insecten (zwarte soldaatvlieg), 36% bouillon, 4% erwten, 4% pompoen, 4% abrikoos, 1% mineralen, 0,5% kruiden, 0,5% distelolie', true, now(), 'sha256:8be03b622db20cada942549c91e0b26edcf5c1bee6d9318e0a7d84011d1520ee', null from p;

-- Alsa Nature — SIMPLE Wild puur (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920561
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SIMPLE Wild puur', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/920561', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '72% Wild (bestaande uit hart, spiervlees, lever, long, pens), 28% bouillon', true, now(), 'sha256:0e382179b6b3239616c4abf7c43ba0cde9e9ba914b3c13319246831c3cb38c2c', null from p;

-- Alsa Nature — SINGLE Paard met aardappel (60 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920645
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Paard met aardappel', 'wet', '60 x 800 g', null, 'https://www.alsa-nature.nl/p/920645', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Paard (bestaande uit paardenvlees, paardenhart, paardenlever), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:425d605b0eb5772fa93f681b963c849f368b11355f86314d2a96628ef17c75f0', null from p;

-- Alsa Nature — FOODLOVE Kalf met quinoa, boerenkool & appel (90 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99006600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', 'raw', '90 x 300 g', null, 'https://www.alsa-nature.nl/p/99006600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kalf (bestaande uit kalfsharten, kalfslongen, kalfspens), 27,3% bouillon, 4% quinoa, 4% boerenkool, 3% appel, 1% mineralen, 0,5% kruiden, 0,2% distelolie', true, now(), 'sha256:d1e5605427439abf5d258930281f91cb1b137012c26abe5a2ea14d29b6544880', null from p;

-- Isegrim Roots — RIVER Zalm & Forel (7 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980085
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'RIVER Zalm & Forel', 'raw', '7 x 410 g', '4250231541261', 'https://www.alsa-nature.nl/p/980085', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip, 27,5% bouillon, 20% zalm, 14,5% forel, 1,5% aardpeer, 1% mineralen, 0,3% rivier kruiden, 0,2% distelolie', true, now(), 'sha256:4728131aeba35095ae1011bc66741c385f300eb399ace7b42c9869de1313d363', null from p;

-- Isegrim Roots — FIELD Paard (7 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980088
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'FIELD Paard', 'raw', '7 x 410 g', '4250231541278', 'https://www.alsa-nature.nl/p/980088', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Paard, 27% bouillon, 1,5% plantaardige mix, 1% mineralen, 0,3% veldkruiden, 0,2% lijnzaadolie.', true, now(), 'sha256:9b8229aceebf5c2a0badfbc18b72b5e8475bb2a296f9f8c5db234607bf2942cb', null from p;

-- Isegrim Roots — RIVER Zalm & Forel (35 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980087
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'RIVER Zalm & Forel', 'raw', '35 x 410 g', null, 'https://www.alsa-nature.nl/p/980087', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip, 27,5% bouillon, 20% zalm, 14,5% forel, 1,5% aardpeer, 1% mineralen, 0,3% rivier kruiden, 0,2% distelolie', true, now(), 'sha256:4728131aeba35095ae1011bc66741c385f300eb399ace7b42c9869de1313d363', null from p;

-- Isegrim Roots — FIELD Paard (14 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980089
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'FIELD Paard', 'raw', '14 x 410 g', null, 'https://www.alsa-nature.nl/p/980089', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Paard, 27% bouillon, 1,5% plantaardige mix, 1% mineralen, 0,3% veldkruiden, 0,2% lijnzaadolie.', true, now(), 'sha256:9b8229aceebf5c2a0badfbc18b72b5e8475bb2a296f9f8c5db234607bf2942cb', null from p;

-- Isegrim Roots — FIELD Paard (35 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980090
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'FIELD Paard', 'raw', '35 x 410 g', null, 'https://www.alsa-nature.nl/p/980090', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Paard, 27% bouillon, 1,5% plantaardige mix, 1% mineralen, 0,3% veldkruiden, 0,2% lijnzaadolie.', true, now(), 'sha256:9b8229aceebf5c2a0badfbc18b72b5e8475bb2a296f9f8c5db234607bf2942cb', null from p;

-- Isegrim Roots — MOUNTAIN Kalkoen (7 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980091
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'MOUNTAIN Kalkoen', 'raw', '7 x 410 g', '4250231541285', 'https://www.alsa-nature.nl/p/980091', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Kalkoen, 27% bouillon, 1,5% schorseneer, 1% mineralen, 0,3% bergkruiden, 0,2% zonnebloemolie', true, now(), 'sha256:b62f3ec0242920af8ae9d0be248eaf8e26909675e16da1c102a8637c50af5958', null from p;

-- Isegrim Roots — MOUNTAIN Kalkoen (14 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980092
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'MOUNTAIN Kalkoen', 'raw', '14 x 410 g', null, 'https://www.alsa-nature.nl/p/980092', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Kalkoen, 27% bouillon, 1,5% schorseneer, 1% mineralen, 0,3% bergkruiden, 0,2% zonnebloemolie', true, now(), 'sha256:b62f3ec0242920af8ae9d0be248eaf8e26909675e16da1c102a8637c50af5958', null from p;

-- Isegrim Roots — Puppy en Junior MOUNTAIN Kalkoen & Rund (35 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980084
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'Puppy en Junior MOUNTAIN Kalkoen & Rund', 'raw', '35 x 410 g', null, 'https://www.alsa-nature.nl/p/980084', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kalkoen, 35% rundvlees, 27% bouillon, 1,1% zoete aardappelen, 1% mineralen, 0,6% zalmolie, 0,3% bergkruiden', true, now(), 'sha256:83c04da8131677f024dd520d251e739d5c3d1dbe36685722d6286515d283137f', null from p;

-- Isegrim Roots — RIVER Zalm & Forel (14 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980086
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'RIVER Zalm & Forel', 'raw', '14 x 410 g', null, 'https://www.alsa-nature.nl/p/980086', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip, 27,5% bouillon, 20% zalm, 14,5% forel, 1,5% aardpeer, 1% mineralen, 0,3% rivier kruiden, 0,2% distelolie', true, now(), 'sha256:4728131aeba35095ae1011bc66741c385f300eb399ace7b42c9869de1313d363', null from p;

-- Isegrim Roots — FIELD Eend & Harten (14 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'FIELD Eend & Harten', 'raw', '14 x 410 g', null, 'https://www.alsa-nature.nl/p/980101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% Eend, 27% bouillon, 10% kippenharten, 1,5% groentemix, 1% mineralen, 0,3% veldkruiden, 0,2% lijnzaadolie', true, now(), 'sha256:83d1f81a2432fbdbec778abeebea7d4eb49d80043d91adf11f1fd996e501153f', null from p;

-- Isegrim Roots — FOREST Hert & Wild (35 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980096
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'FOREST Hert & Wild', 'raw', '35 x 410 g', null, 'https://www.alsa-nature.nl/p/980096', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Hert, 35% wild, 27% bouillon, 1,5% peterseliewortel, 1% mineralen, 0,3% boskruiden, 0,2% distelolie', true, now(), 'sha256:deda8144377d233ed0d611c961a7ed770a9b46ffd9704fb33855ad84cb80f0f0', null from p;

-- Isegrim Roots — FOREST Wildzwijn (14 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980098
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'FOREST Wildzwijn', 'raw', '14 x 410 g', null, 'https://www.alsa-nature.nl/p/980098', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Wildzwijn, 27% bouillon, 1,5% pastinaak, 1% mineralen, 0,3% boskruiden, 0,2% raapzaadolie', true, now(), 'sha256:e7295136f6994070695a54a094906047842d04f99d6845f4cf14dadb4e3c586a', null from p;

-- Isegrim Roots — FIELD Eend & Harten (35 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980102
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'FIELD Eend & Harten', 'raw', '35 x 410 g', null, 'https://www.alsa-nature.nl/p/980102', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% Eend, 27% bouillon, 10% kippenharten, 1,5% groentemix, 1% mineralen, 0,3% veldkruiden, 0,2% lijnzaadolie', true, now(), 'sha256:83d1f81a2432fbdbec778abeebea7d4eb49d80043d91adf11f1fd996e501153f', null from p;

-- Isegrim Roots — Puppy en Junior MOUNTAIN Kalkoen & Rund (14 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980083
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'Puppy en Junior MOUNTAIN Kalkoen & Rund', 'raw', '14 x 410 g', null, 'https://www.alsa-nature.nl/p/980083', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kalkoen, 35% rundvlees, 27% bouillon, 1,1% zoete aardappelen, 1% mineralen, 0,6% zalmolie, 0,3% bergkruiden', true, now(), 'sha256:83c04da8131677f024dd520d251e739d5c3d1dbe36685722d6286515d283137f', null from p;

-- Isegrim Roots — FOREST Hert & Wild (7 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980094
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'FOREST Hert & Wild', 'raw', '7 x 410 g', '4250231541292', 'https://www.alsa-nature.nl/p/980094', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Hert, 35% wild, 27% bouillon, 1,5% peterseliewortel, 1% mineralen, 0,3% boskruiden, 0,2% distelolie', true, now(), 'sha256:deda8144377d233ed0d611c961a7ed770a9b46ffd9704fb33855ad84cb80f0f0', null from p;

-- Isegrim Roots — MOUNTAIN Kalkoen (35 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980093
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'MOUNTAIN Kalkoen', 'raw', '35 x 410 g', null, 'https://www.alsa-nature.nl/p/980093', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Kalkoen, 27% bouillon, 1,5% schorseneer, 1% mineralen, 0,3% bergkruiden, 0,2% zonnebloemolie', true, now(), 'sha256:b62f3ec0242920af8ae9d0be248eaf8e26909675e16da1c102a8637c50af5958', null from p;

-- Isegrim Roots — FOREST Wildzwijn (7 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980097
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'FOREST Wildzwijn', 'raw', '7 x 410 g', '4250231541308', 'https://www.alsa-nature.nl/p/980097', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Wildzwijn, 27% bouillon, 1,5% pastinaak, 1% mineralen, 0,3% boskruiden, 0,2% raapzaadolie', true, now(), 'sha256:e7295136f6994070695a54a094906047842d04f99d6845f4cf14dadb4e3c586a', null from p;

-- Isegrim Roots — FOREST Wildzwijn (35 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980099
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'FOREST Wildzwijn', 'raw', '35 x 410 g', null, 'https://www.alsa-nature.nl/p/980099', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% Wildzwijn, 27% bouillon, 1,5% pastinaak, 1% mineralen, 0,3% boskruiden, 0,2% raapzaadolie', true, now(), 'sha256:e7295136f6994070695a54a094906047842d04f99d6845f4cf14dadb4e3c586a', null from p;

-- Isegrim Roots — Puppy en Junior MOUNTAIN Kalkoen & Rund (7 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980082
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'Puppy en Junior MOUNTAIN Kalkoen & Rund', 'raw', '7 x 410 g', '4250231541254', 'https://www.alsa-nature.nl/p/980082', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kalkoen, 35% rundvlees, 27% bouillon, 1,1% zoete aardappelen, 1% mineralen, 0,6% zalmolie, 0,3% bergkruiden', true, now(), 'sha256:83c04da8131677f024dd520d251e739d5c3d1dbe36685722d6286515d283137f', null from p;

-- Isegrim Roots — FOREST Hert & Wild (14 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980095
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'FOREST Hert & Wild', 'raw', '14 x 410 g', null, 'https://www.alsa-nature.nl/p/980095', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Hert, 35% wild, 27% bouillon, 1,5% peterseliewortel, 1% mineralen, 0,3% boskruiden, 0,2% distelolie', true, now(), 'sha256:deda8144377d233ed0d611c961a7ed770a9b46ffd9704fb33855ad84cb80f0f0', null from p;

-- Isegrim Roots — FIELD Eend & Harten (7 x 410 g)
-- bron: https://www.alsa-nature.nl/p/980100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Isegrim Roots', 'FIELD Eend & Harten', 'raw', '7 x 410 g', '4250231541315', 'https://www.alsa-nature.nl/p/980100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% Eend, 27% bouillon, 10% kippenharten, 1,5% groentemix, 1% mineralen, 0,3% veldkruiden, 0,2% lijnzaadolie', true, now(), 'sha256:83d1f81a2432fbdbec778abeebea7d4eb49d80043d91adf11f1fd996e501153f', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
