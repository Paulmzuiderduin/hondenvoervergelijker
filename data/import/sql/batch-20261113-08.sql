-- Automatisch overgenomen etiketten, batch 8 van 2026-11-13 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Alsa Nature — CLASSIC Wildzwijn & Rund met courgette (90 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99012001
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', 'wet', '90 x 500 g', null, 'https://www.alsa-nature.nl/p/99012001', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Wildzwijn (bestaande uit wildzwijnvlees), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% courgette, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:87e2446ca93cc5c653b46fb9ff3d72ca3cd6dcf950bc0dea7e563e62290079bb', null from p;

-- Alsa Nature — CLASSIC Kalkoen & Rund met wortel (120 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99011501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Kalkoen & Rund met wortel', 'wet', '120 x 500 g', null, 'https://www.alsa-nature.nl/p/99011501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kalkoen (bestaande uit kalkoenhart, kalkoenvlees, kalkoenmaag, kalkoennek), 30% rund (bestaande uit runderhart, rundervlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% wortelen, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:f044e9c2a74016429cb28b9fefa97c318e87e6cfbccb2fac8dd356bf29dc19e6', null from p;

-- Alsa Nature — CLASSIC Wildzwijn & Rund met courgette (120 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99012101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Wildzwijn & Rund met courgette', 'wet', '120 x 500 g', null, 'https://www.alsa-nature.nl/p/99012101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Wildzwijn (bestaande uit wildzwijnvlees), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 28,8% bouillon, 5% courgette, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:87e2446ca93cc5c653b46fb9ff3d72ca3cd6dcf950bc0dea7e563e62290079bb', null from p;

-- Alsa Nature — CLASSIC Gevogelteharten & Kip met rode biet (12 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99013501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', 'wet', '12 x 500 g', null, 'https://www.alsa-nature.nl/p/99013501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Gevogelteharten, 30% kip (bestaande uit kippenhart, kippenvlees, kippenlever, kippenmaag en kippennek), 28,8% bouillon, 5% rode biet, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:8c1eeeadfdd1f4790726ff6b89f714aa9fa4aeb9e4697218a38ef851de0aefab', null from p;

-- Alsa Nature — CLASSIC Gevogelteharten & Kip met rode biet (30 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99013601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', 'wet', '30 x 500 g', null, 'https://www.alsa-nature.nl/p/99013601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Gevogelteharten, 30% kip (bestaande uit kippenhart, kippenvlees, kippenlever, kippenmaag en kippennek), 28,8% bouillon, 5% rode biet, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:8c1eeeadfdd1f4790726ff6b89f714aa9fa4aeb9e4697218a38ef851de0aefab', null from p;

-- Alsa Nature — CLASSIC Gevogelteharten & Kip met rode biet (90 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99013801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', 'wet', '90 x 500 g', null, 'https://www.alsa-nature.nl/p/99013801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Gevogelteharten, 30% kip (bestaande uit kippenhart, kippenvlees, kippenlever, kippenmaag en kippennek), 28,8% bouillon, 5% rode biet, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:8c1eeeadfdd1f4790726ff6b89f714aa9fa4aeb9e4697218a38ef851de0aefab', null from p;

-- Alsa Nature — CLASSIC Gevogelteharten & Kip met rode biet (120 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99013901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Gevogelteharten & Kip met rode biet', 'wet', '120 x 500 g', null, 'https://www.alsa-nature.nl/p/99013901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Gevogelteharten, 30% kip (bestaande uit kippenhart, kippenvlees, kippenlever, kippenmaag en kippennek), 28,8% bouillon, 5% rode biet, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:8c1eeeadfdd1f4790726ff6b89f714aa9fa4aeb9e4697218a38ef851de0aefab', null from p;

-- Alsa Nature — Light Speciaal Eiwit (1,5 kg)
-- bron: https://www.alsa-nature.nl/p/91310101
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Light Speciaal Eiwit', 'kibble', '1,5 kg', '4050001101721', 'https://www.alsa-nature.nl/p/91310101', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gevogelte 21%, rijst, bietenvezels, gevogelte eiwit gehydroliseerd 3%, vet van gevogelte, natriumchloride, cichoreipoeder, Nieuw-Zeelandse groenlipmossel (Perna canaliculus) gedroogd', true, now(), 'sha256:075928fe2feb8008a8f2c9ee0685d316c8e96c7c4276b1b651c3252e51deb294', null from p;

-- Alsa Nature — Classic Kalfs-Ragout met Peterselie-aardappel en pompoen (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92001901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92001901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kalf, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,4% bouillon, 5% aardappel, 2% pompoen, 1% mineralen, 0,5% peterselie, 0,1% distelolie', true, now(), 'sha256:6df952e1d131a664ded8343a27b3f93da3a6aad25a4d1e50d18ae32adfdecaeb', null from p;

-- Alsa Nature — Struisvogel Enkel-eiwit (2 x 12 kg)
-- bron: https://www.alsa-nature.nl/p/91350501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Struisvogel Enkel-eiwit', 'kibble', '2 x 12 kg', null, 'https://www.alsa-nature.nl/p/91350501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, struisvogel 24%, bietenvezels, oliën en vetten, mineralen, natriumchloride', true, now(), 'sha256:c0b93cbdcfb3f92736dcd44f7671a93a2656e29da9186edf81c533b0771e747c', null from p;

-- Alsa Nature — Classic Kalfs-Ragout met Peterselie-aardappel en pompoen (800 g)
-- bron: https://www.alsa-nature.nl/p/92001701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', 'wet', '800 g', '4050001116329', 'https://www.alsa-nature.nl/p/92001701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kalf, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,4% bouillon, 5% aardappel, 2% pompoen, 1% mineralen, 0,5% peterselie, 0,1% distelolie', true, now(), 'sha256:6df952e1d131a664ded8343a27b3f93da3a6aad25a4d1e50d18ae32adfdecaeb', null from p;

-- Alsa Nature — Classic Kip gerecht met Rijst, Peer & Venkel (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92002401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92002401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 25,9% bouillon, 5% rijst, 2% peer, 1% venkel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:6fbe7005183710e46a8664c247fa4ae1972c98e8bc2718f5973f2048dae6e474', null from p;

-- Alsa Nature — Classic Kip gerecht met Rijst, Peer & Venkel (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92002201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92002201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 25,9% bouillon, 5% rijst, 2% peer, 1% venkel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:6fbe7005183710e46a8664c247fa4ae1972c98e8bc2718f5973f2048dae6e474', null from p;

-- Alsa Nature — SINGLE Kangoeroe met aardappel (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92004901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92004901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:7e615daef2ffbd8f7b5126ebc8da26c36ce43867c0960b84b111bd172d163855', null from p;

-- Alsa Nature — Classic Kip gerecht met Rijst, Peer & Venkel (400 g)
-- bron: https://www.alsa-nature.nl/p/92002001
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kip gerecht met Rijst, Peer & Venkel', 'wet', '400 g', '4050001116336', 'https://www.alsa-nature.nl/p/92002001', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 25,9% bouillon, 5% rijst, 2% peer, 1% venkel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:6fbe7005183710e46a8664c247fa4ae1972c98e8bc2718f5973f2048dae6e474', null from p;

-- Alsa Nature — SINGLE Kangoeroe met aardappel (800 g)
-- bron: https://www.alsa-nature.nl/p/92004701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Kangoeroe met aardappel', 'wet', '800 g', '4050001116596', 'https://www.alsa-nature.nl/p/92004701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Kangoeroe (bestaande uit kangoeroevlees, kangoeroeharten, kangoeroelever, kangoeroelong), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:7e615daef2ffbd8f7b5126ebc8da26c36ce43867c0960b84b111bd172d163855', null from p;

-- Alsa Nature — Classic Kalkoen met zoete aardappel, peer & paardebloem (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92027600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kalkoen met zoete aardappel, peer & paardebloem', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92027600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '31% Kalkoen (bestaande uit kalkoenenharten, kalkoenvlees, kalkoenlever, kalkoenennekken), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,9% bouillon, 3% zoete aardappel, 3% peer, 1% paardenbloem, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:25559e76815297ca19ceb3b9957f3b08a32043e417960a8285520bc27b9a93d0', null from p;

-- Alsa Nature — JUNIOR Lam met aardappel (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92028500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Lam met aardappel', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92028500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslongen, lamspens), 28,8% bouillon, 2% aardappel, 2% erwt, 2% wortel, 1% mineralen, 0,1% levertraan, 0,1% lijnolie', true, now(), 'sha256:544e52e477781db8fb4a900e663baa3f6f6b8f34539e8157fb9e48d8aa3ce197', null from p;

-- Alsa Nature — Classic Wild-Ragout met rode bieten, aardappel en appel (400 g)
-- bron: https://www.alsa-nature.nl/p/92005901
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', 'wet', '400 g', '4050001116091', 'https://www.alsa-nature.nl/p/92005901', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Wild (bestaande uit hart, vlees, lever, longen en pens van wild), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 23,9% bouillon, 5% aardappel, 3% rode biet, 2% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:1fc11a3d2946c1847e5fce4c494744b02a219cfb990b5310acdcd1ba9be3aa7c', null from p;

-- Alsa Nature — JUNIOR Kip met pastinaak & appel (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92028900
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Kip met pastinaak & appel', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92028900', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Kip (bestaande uit kippenharten, kippenvlees, kippenlever, kippenmagen, kippennekken), 28,8% bouillon, 3% pastinaak, 3% appel, 1% mineralen, 0,1% levertraan, 0,1% lijnolie', true, now(), 'sha256:62136434906283004c379230d0485b915532284da9ec6eb5a09f3b267076a2ff', null from p;

-- Alsa Nature — JUNIOR Runderhart met aardappel & wortel (6 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92029400
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Runderhart met aardappel & wortel', 'wet', '6 x 400 g', null, 'https://www.alsa-nature.nl/p/92029400', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Rund (bestaande uit rundvlees, 10% runderhart, runderlever, runderlongen, runderpens), 28,8% bouillon, 3% aardappel, 3% wortel, 1% mineralen, 0,1% levertraan, 0,1% lijnolie', true, now(), 'sha256:16bf01f1dc3993857ec2d25ededf1dd5498eba9e8ca7eb3d622f80c57d38c10e', null from p;

-- Alsa Nature — JUNIOR Lam met aardappel (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92028600
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Lam met aardappel', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92028600', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Lam (bestaande uit lamsharten, lamsvlees, lamslever, lamslongen, lamspens), 28,8% bouillon, 2% aardappel, 2% erwt, 2% wortel, 1% mineralen, 0,1% levertraan, 0,1% lijnolie', true, now(), 'sha256:544e52e477781db8fb4a900e663baa3f6f6b8f34539e8157fb9e48d8aa3ce197', null from p;

-- Alsa Nature — Classic Wild-Ragout met rode bieten, aardappel en appel (800 g)
-- bron: https://www.alsa-nature.nl/p/92006201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', 'wet', '800 g', '4050001116107', 'https://www.alsa-nature.nl/p/92006201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Wild (bestaande uit hart, vlees, lever, longen en pens van wild), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 23,9% bouillon, 5% aardappel, 3% rode biet, 2% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:1fc11a3d2946c1847e5fce4c494744b02a219cfb990b5310acdcd1ba9be3aa7c', null from p;

-- Alsa Nature — JUNIOR Runderhart met aardappel & wortel (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92029500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'JUNIOR Runderhart met aardappel & wortel', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92029500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Rund (bestaande uit rundvlees, 10% runderhart, runderlever, runderlongen, runderpens), 28,8% bouillon, 3% aardappel, 3% wortel, 1% mineralen, 0,1% levertraan, 0,1% lijnolie', true, now(), 'sha256:16bf01f1dc3993857ec2d25ededf1dd5498eba9e8ca7eb3d622f80c57d38c10e', null from p;

-- Alsa Nature — Speciaal Nierdieet (60 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92040100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Speciaal Nierdieet', 'wet', '60 x 400 g', null, 'https://www.alsa-nature.nl/p/92040100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35,3% Bouillon, 35% kip (bestaande uit kippenharten, kippenmagen, kippenvet), 12% rijst, 10% aardappelen, 5% pompoen, 1% mineralen, 1% cellulose, 0,5% zalmolie, 0,1% voleipoeder, 0,1% biergist', true, now(), 'sha256:5bc16099b3cf0be75f656662e9c63fee5a52c64f22b47951501ab4c54778fbfe', null from p;

-- Alsa Nature — FINEST Kalkoen-spiervlees met zoete aardappel, mango & lijnolie (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920445
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FINEST Kalkoen-spiervlees met zoete aardappel, mango & lijnolie', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/920445', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Kalkoenspiervlees, 30% kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlever, kalkoenhals), 28,8% bouillon, 5% zoete aardappel, 2% mango, 1% mineralen, 0,2% lijnolie.', true, now(), 'sha256:534725db891b7a00735b08f83c3e3e6186bf266217883ae013165c95d5ecd0b5', null from p;

-- Alsa Nature — SINGLE Lam met aardappel (120 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920635
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Lam met aardappel', 'wet', '120 x 400 g', null, 'https://www.alsa-nature.nl/p/920635', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Lam (bestaande uit lamshart, lamsvlees, lamslever, lamslong, lamspens), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:f547056025bca7a535e62eb92c287764677bf709d1b78b3b4d3d948672e2a274', null from p;

-- Alsa Nature — VEGGIE Groente-bijlage met fruit (12 x 375 g)
-- bron: https://www.alsa-nature.nl/p/92037200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'VEGGIE Groente-bijlage met fruit', 'wet', '12 x 375 g', null, 'https://www.alsa-nature.nl/p/92037200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '39,8%, Bouillon, 12% wortelen, 10% pompoen, 7% courgette, 7% venkel, 4% pastinaak, 4% appel, 3% ananas, 3% abrikoos, 2% spinazie, 2% veenbessen, 2% bramen, 2% duindoorn, 1% rozenbottels, 1% mineralen, 0,1% lijnolie', true, now(), 'sha256:9d64e8eb9d5864f59da6ea9768e6a69497c6b36f4a4baa26383364fdeb325974', null from p;

-- Alsa Nature — SINGLE Lam met aardappel (120 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920639
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Lam met aardappel', 'wet', '120 x 800 g', null, 'https://www.alsa-nature.nl/p/920639', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Lam (bestaande uit lamshart, lamsvlees, lamslever, lamslong, lamspens), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:f547056025bca7a535e62eb92c287764677bf709d1b78b3b4d3d948672e2a274', null from p;

-- Alsa Nature — SINGLE Geit met pastinaak (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920435
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Geit met pastinaak', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/920435', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Geit (bestaande uit geitenspiervlees, geitenhart, geitenlever, geitenlong), 29,5% bouillon, 5% pastinaak, 1% mineralen, 0,5% lijnolie.', true, now(), 'sha256:e407571587adef11047ea053b3136f6fea0fdfcf7265b73108285aea3ba5fd67', null from p;

-- Alsa Nature — FINEST Kippen-spiervlees met pastinaak, pompoen en lijnolie (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920442
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FINEST Kippen-spiervlees met pastinaak, pompoen en lijnolie', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/920442', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '33% Kippenspiervlees, 30% kip (bestaande uit kippenharten, kippenlever, kippenmagen, kippenhalsen), 28,8% bouillon, 5% pastinaak, 2% pompoen, 1% mineralen, 0,2% lijnolie.', true, now(), 'sha256:ca2f4a1e81de1bb6841baff9e6b91542b39a9fe8708c52e9732ea1e003764af9', null from p;

-- Alsa Nature — Light Speciaal Eiwit (12 kg)
-- bron: https://www.alsa-nature.nl/p/91310401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Light Speciaal Eiwit', 'kibble', '12 kg', '4050001101752', 'https://www.alsa-nature.nl/p/91310401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gevogelte 21%, rijst, bietenvezels, gevogelte eiwit gehydroliseerd 3%, vet van gevogelte, natriumchloride, cichoreipoeder, Nieuw-Zeelandse groenlipmossel (Perna canaliculus) gedroogd', true, now(), 'sha256:075928fe2feb8008a8f2c9ee0685d316c8e96c7c4276b1b651c3252e51deb294', null from p;

-- Alsa Nature — Light Speciaal Eiwit (2 x 12 kg)
-- bron: https://www.alsa-nature.nl/p/91310501
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Light Speciaal Eiwit', 'kibble', '2 x 12 kg', null, 'https://www.alsa-nature.nl/p/91310501', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gevogelte 21%, rijst, bietenvezels, gevogelte eiwit gehydroliseerd 3%, vet van gevogelte, natriumchloride, cichoreipoeder, Nieuw-Zeelandse groenlipmossel (Perna canaliculus) gedroogd', true, now(), 'sha256:075928fe2feb8008a8f2c9ee0685d316c8e96c7c4276b1b651c3252e51deb294', null from p;

-- Alsa Nature — SINGLE Lam met aardappel (60 x 400 g)
-- bron: https://www.alsa-nature.nl/p/920633
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Lam met aardappel', 'wet', '60 x 400 g', null, 'https://www.alsa-nature.nl/p/920633', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Lam (bestaande uit lamshart, lamsvlees, lamslever, lamslong, lamspens), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:f547056025bca7a535e62eb92c287764677bf709d1b78b3b4d3d948672e2a274', null from p;

-- Alsa Nature — Classic Kalfs-Ragout met Peterselie-aardappel en pompoen (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92001601
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92001601', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kalf, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,4% bouillon, 5% aardappel, 2% pompoen, 1% mineralen, 0,5% peterselie, 0,1% distelolie', true, now(), 'sha256:6df952e1d131a664ded8343a27b3f93da3a6aad25a4d1e50d18ae32adfdecaeb', null from p;

-- Alsa Nature — Classic Wild-Ragout met rode bieten, aardappel en appel (12 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92006401
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Wild-Ragout met rode bieten, aardappel en appel', 'wet', '12 x 800 g', null, 'https://www.alsa-nature.nl/p/92006401', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Wild (bestaande uit hart, vlees, lever, longen en pens van wild), 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 23,9% bouillon, 5% aardappel, 3% rode biet, 2% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:1fc11a3d2946c1847e5fce4c494744b02a219cfb990b5310acdcd1ba9be3aa7c', null from p;

-- Alsa Nature — BIG-JUNIOR Medium eiwit (3 kg)
-- bron: https://www.alsa-nature.nl/p/91360201
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'BIG-JUNIOR Medium eiwit', 'kibble', '3 kg', '4050001101660', 'https://www.alsa-nature.nl/p/91360201', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gevogelte 27%, rijst, bietenvezels, vet van gevogelte, gevogelteeiwit gehydroliseerd 3%, maïseiwit, natriumchloride, gist, cichoreipoeder, kaliumchloride, vlees van de Nieuw-Zeelandse groenlipmossel (Perna canaliculus) gedroogd', true, now(), 'sha256:0a0e6e3c40b0348922d16a4a3f503cb96ebc46757e29a5f22abc703d84a01ddb', null from p;

-- Alsa Nature — SINGLE Paard met aardappel (30 x 800 g)
-- bron: https://www.alsa-nature.nl/p/920644
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'SINGLE Paard met aardappel', 'wet', '30 x 800 g', null, 'https://www.alsa-nature.nl/p/920644', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '64% Paard (bestaande uit paardenvlees, paardenhart, paardenlever), 29,5% bouillon, 5% aardappel, 1% mineralen, 0,5% distelolie', true, now(), 'sha256:425d605b0eb5772fa93f681b963c849f368b11355f86314d2a96628ef17c75f0', null from p;

-- Alsa Nature — Classic Kalfs-Ragout met Peterselie-aardappel en pompoen (6 x 800 g)
-- bron: https://www.alsa-nature.nl/p/92001801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Kalfs-Ragout met Peterselie-aardappel en pompoen', 'wet', '6 x 800 g', null, 'https://www.alsa-nature.nl/p/92001801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Kalf, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 26,4% bouillon, 5% aardappel, 2% pompoen, 1% mineralen, 0,5% peterselie, 0,1% distelolie', true, now(), 'sha256:6df952e1d131a664ded8343a27b3f93da3a6aad25a4d1e50d18ae32adfdecaeb', null from p;

-- Alsa Nature — Classic Bizon met pastinaak, rode bieten & appel (12 x 400 g)
-- bron: https://www.alsa-nature.nl/p/92026500
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Classic Bizon met pastinaak, rode bieten & appel', 'wet', '12 x 400 g', null, 'https://www.alsa-nature.nl/p/92026500', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '30% Bizon, 30% rund (bestaande uit runderhart, rundvlees, runderlever, runderlongen, runderpens), 29,9% bouillon, 3% pastinaak, 3% rode bieten, 3% appel, 1% mineralen, 0,1% distelolie', true, now(), 'sha256:c94f42101f67b5b48ced5069838cc0e21d28c8055bebab4fd53ad2dfba56bc1b', null from p;

-- Alsa Nature — FOODLOVE Kalkoen met amarant, zoete aardappel & mango (60 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99005800
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kalkoen met amarant, zoete aardappel & mango', 'raw', '60 x 300 g', null, 'https://www.alsa-nature.nl/p/99005800', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kalkoen (bestaande uit kalkoenharten, kalkoenvlees, kalkoenlevers, kalkoenmagen, kalkoenhalzen), 27,3% bouillon, 4% amarant, 4% zoete aardappel, 3% mango, 1% mineralen, 0,5% kruiden, 0,2% distelolie', true, now(), 'sha256:eeaccf92f5a2a0cd9a733c5fbb9564a463ed14fda2ae77e652874e9c79fbb54e', null from p;

-- Alsa Nature — FOODLOVE Kalf met quinoa, boerenkool & appel (6 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99006200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', 'raw', '6 x 300 g', '4050001118590', 'https://www.alsa-nature.nl/p/99006200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kalf (bestaande uit kalfsharten, kalfslongen, kalfspens), 27,3% bouillon, 4% quinoa, 4% boerenkool, 3% appel, 1% mineralen, 0,5% kruiden, 0,2% distelolie', true, now(), 'sha256:d1e5605427439abf5d258930281f91cb1b137012c26abe5a2ea14d29b6544880', null from p;

-- Alsa Nature — FOODLOVE Kalf met quinoa, boerenkool & appel (120 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99006700
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', 'raw', '120 x 300 g', null, 'https://www.alsa-nature.nl/p/99006700', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kalf (bestaande uit kalfsharten, kalfslongen, kalfspens), 27,3% bouillon, 4% quinoa, 4% boerenkool, 3% appel, 1% mineralen, 0,5% kruiden, 0,2% distelolie', true, now(), 'sha256:d1e5605427439abf5d258930281f91cb1b137012c26abe5a2ea14d29b6544880', null from p;

-- Alsa Nature — FOODLOVE Rund met amarant, zoete aardappel & bessen (30 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99005000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Rund met amarant, zoete aardappel & bessen', 'raw', '30 x 300 g', null, 'https://www.alsa-nature.nl/p/99005000', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% rund (bestaande uit runderharten, rundvlees, runderlongen, runderlevers, runderpensen), 27,3% bouillon, 4% amarant, 4% zoete aardappel, 2% veenbessen, 1% frambozen, 1% mineralen, 0,5% kruiden, 0,2% zonnebloemolie', true, now(), 'sha256:3df457138c10a8d101a9b07f691104848db8814ce40f4d842d893ac83a4a6284', null from p;

-- Alsa Nature — FOODLOVE Kalf met quinoa, boerenkool & appel (12 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99006300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kalf met quinoa, boerenkool & appel', 'raw', '12 x 300 g', null, 'https://www.alsa-nature.nl/p/99006300', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kalf (bestaande uit kalfsharten, kalfslongen, kalfspens), 27,3% bouillon, 4% quinoa, 4% boerenkool, 3% appel, 1% mineralen, 0,5% kruiden, 0,2% distelolie', true, now(), 'sha256:d1e5605427439abf5d258930281f91cb1b137012c26abe5a2ea14d29b6544880', null from p;

-- Alsa Nature — CLASSIC Lam & Kip met zoete aardappel (120 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99012701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Lam & Kip met zoete aardappel', 'wet', '120 x 500 g', null, 'https://www.alsa-nature.nl/p/99012701', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Lam (bestaande uit lamslever, lamslongen, lamsvlees, lamspens, lamshart), 30% kip (bestaande uit kippenhart, kippevlees, kippemaag, kippenek), 28,8% bouillon, 5% zoete aardappel, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:5d6f1b2594d0e46843a133aded81911cac32095a451b35b3ee7f587a506760df', null from p;

-- Alsa Nature — FOODLOVE Kip met quinoa, pompoen & broccoli (30 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99007100
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kip met quinoa, pompoen & broccoli', 'raw', '30 x 300 g', null, 'https://www.alsa-nature.nl/p/99007100', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% kip (bestaande uit kippenharten, kippenvlees, kippenlevers, kippenmagen, kippenhalzen), 27,3% bouillon, 4% quinoa, 4% pompoen, 3% broccoli, 1% mineralen, 0,5% kruiden, 0,2% lijnzaadolie', true, now(), 'sha256:ed4d8e19f7eec9bc4131474c422d0501a4d4d95d941b86413b3a8084f2e37e83', null from p;

-- Alsa Nature — FOODLOVE Kip & Forel met quinoa, pastinaak & papaja (12 x 300 g)
-- bron: https://www.alsa-nature.nl/p/99007700
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'FOODLOVE Kip & Forel met quinoa, pastinaak & papaja', 'raw', '12 x 300 g', null, 'https://www.alsa-nature.nl/p/99007700', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '40% kip (bestaande uit kippenharten, kippenvlees, kippenlevers, kippenmagen, kippenhalzen), 27,3% bouillon, 20% forel, 4% quinoa, 4% pastinaak, 3% papaya, 1% mineralen, 0,5% kruiden, 0,2% lijnzaadolie', true, now(), 'sha256:77ef1a615fd4a37a4093a031d6776961b79ac44300f21c9fe5ef4a0a81f4921a', null from p;

-- Alsa Nature — CLASSIC Runderharten & Kip met pastinaak (6 x 500 g)
-- bron: https://www.alsa-nature.nl/p/99012801
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'CLASSIC Runderharten & Kip met pastinaak', 'wet', '6 x 500 g', '4050001123419', 'https://www.alsa-nature.nl/p/99012801', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% Runderharten, 30% kip (bestaande uit kippenhart, kippenvlees, kippenlever, kippenmaag, kippennekken), 28,8% bouillon, 5% pastinaak, 1% mineralen, 0,2% lijnzaadolie', true, now(), 'sha256:63f11bbfbe5f4514ab8298a2a2ac3f68106aea386f1a2a2d19a131382244b335', null from p;

-- Alsa Nature — Haring & Aardappel granenvrij (1,5 kg)
-- bron: https://www.alsa-nature.nl/p/91004200
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Alsa Nature', 'Haring & Aardappel granenvrij', 'kibble', '1,5 kg', '4050001108690', 'https://www.alsa-nature.nl/p/91004200', date '2026-11-13', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Aardappel 37%, haring 20%, bietenpulp, aardappeleiwit, vet van gevogelte, heel eipoeder, biergist, zalmolie, gehydrolyseerde kippenlever, kruiden, fructo-oligosacchariden, inuline', true, now(), 'sha256:586033dda6b3b4aca81738410b17cf3196ee49ccd3f992111348274ee08232f6', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
