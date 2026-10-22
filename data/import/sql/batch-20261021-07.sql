-- Automatisch overgenomen etiketten, batch 7 van 2026-10-21 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Carnis — Geperst Kip Regular (2 / 4 / 12,5 kg)
-- bron: https://www.carnis.nl/nl/droogvoeding-geperst-kip-regular-2kg/a1864
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnis', 'Geperst Kip Regular', 'kibble', '2 / 4 / 12,5 kg', null, 'https://www.carnis.nl/nl/droogvoeding-geperst-kip-regular-2kg/a1864', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '28% kippenmeel, ontsloten maïs, ontsloten rijstmeel, havermoutmeel, bietenpulp, gefractioneerd vetpoeder, rundvet, vitamine- en mineralen mix, johannesbroodmeel, pensmeel, 0,5% Schotse zalmolie', true, now(), 'sha256:1b7c11ab480343b79ef6c34f45fc299ccf4645d980459dc00ca68df300a08a2a', null from p;

-- Carnis — Geperst Kip Small (2 / 4 / 12,5 kg)
-- bron: https://www.carnis.nl/nl/droogvoeding-geperst-kip-small-2kg/a1867
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnis', 'Geperst Kip Small', 'kibble', '2 / 4 / 12,5 kg', null, 'https://www.carnis.nl/nl/droogvoeding-geperst-kip-small-2kg/a1867', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '28% kippenmeel, ontsloten maïs, ontsloten rijstmeel, havermoutmeel, bietenpulp, gefractioneerd vetpoeder, rundvet, vitamine- en mineralen mix, johannesbroodmeel, pensmeel, 0,5% Schotse zalmolie', true, now(), 'sha256:1b7c11ab480343b79ef6c34f45fc299ccf4645d980459dc00ca68df300a08a2a', null from p;

-- Carnis — Geperst Konijn Regular (2 / 4 / 12,5 kg)
-- bron: https://www.carnis.nl/nl/droogvoeding-geperst-konijn-regular-2kg/a1876
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnis', 'Geperst Konijn Regular', 'kibble', '2 / 4 / 12,5 kg', null, 'https://www.carnis.nl/nl/droogvoeding-geperst-konijn-regular-2kg/a1876', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '30% konijnenmeel, 25% ontsloten haver, ontsloten sorghum, johannesbroodmeel, bietenpulp, kokosvet, biergist, vitamine- en mineralenmix, rundvet, zalmolie', true, now(), 'sha256:b8951b8e35491d0217d36bd614e968832ecbd996074bae405419e94e1b7f79b3', null from p;

-- Carnis — Geperst Konijn Small (2 / 4 / 12,5 kg)
-- bron: https://www.carnis.nl/nl/droogvoeding-geperst-konijn-small-2kg/a1880
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnis', 'Geperst Konijn Small', 'kibble', '2 / 4 / 12,5 kg', null, 'https://www.carnis.nl/nl/droogvoeding-geperst-konijn-small-2kg/a1880', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '30% konijnenmeel, 25% ontsloten haver, ontsloten sorghum, johannesbroodmeel, bietenpulp, kokosvet, biergist, vitamine- en mineralenmix, rundvet, zalmolie', true, now(), 'sha256:b8951b8e35491d0217d36bd614e968832ecbd996074bae405419e94e1b7f79b3', null from p;

-- Carnis — Geperst Rijk aan Lam Regular (2 / 4 / 12,5 kg)
-- bron: https://www.carnis.nl/nl/droogvoeding-geperst-rijk-aan-lam-regular-2kg/a1873
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnis', 'Geperst Rijk aan Lam Regular', 'kibble', '2 / 4 / 12,5 kg', null, 'https://www.carnis.nl/nl/droogvoeding-geperst-rijk-aan-lam-regular-2kg/a1873', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'ontsloten sorghum, 16% lamsmeel, zalmmeel, johannesbroodmeel, bietenpulp, rundvet, 3% biergist, gefractioneerd vetpoeder, vitamine- en mineralen mix, eipoeder, dextrose, 0,6% Schotse zalmolie', true, now(), 'sha256:ab346864e34677f037d7ed30913b7944f31dc55fb7c3339b6c487a25c5bcdaf5', null from p;

-- Carnis — Geperst Rijk aan Lam Small (2 / 4 / 12,5 kg)
-- bron: https://www.carnis.nl/nl/droogvoeding-geperst-rijk-aan-lam-small-2kg/a1882
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnis', 'Geperst Rijk aan Lam Small', 'kibble', '2 / 4 / 12,5 kg', null, 'https://www.carnis.nl/nl/droogvoeding-geperst-rijk-aan-lam-small-2kg/a1882', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'ontsloten sorghum, 16% lamsmeel, zalmmeel, johannesbroodmeel, bietenpulp, rundvet, 3% biergist, gefractioneerd vetpoeder, vitamine- en mineralen mix, eipoeder, dextrose, 0,6% Schotse zalmolie', true, now(), 'sha256:ab346864e34677f037d7ed30913b7944f31dc55fb7c3339b6c487a25c5bcdaf5', null from p;

-- Carnis — Geperst Zalm Regular (2 / 4 / 12,5 kg)
-- bron: https://www.carnis.nl/nl/droogvoeding-geperst-zalm-regular-2kg/a1870
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnis', 'Geperst Zalm Regular', 'kibble', '2 / 4 / 12,5 kg', null, 'https://www.carnis.nl/nl/droogvoeding-geperst-zalm-regular-2kg/a1870', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '26% zalmmeel, ontsloten rijstmeel, ontsloten mais, ontsloten sorghum, ontsloten haver, rundvet, bietenpulp, vitamine- en mineralen mix, gefractioneerd vetpoeder, kippenmeel, 0,5% zonnebloemolie, 0,05% chondroïtine, 0,05% glucosamine', true, now(), 'sha256:61a37752426ad2a184e603e0b908555bb69b0557f4dec8297d0452215e568875', null from p;

-- Carnis — Geperst Zalm Small (2 / 4 / 12,5 kg)
-- bron: https://www.carnis.nl/nl/droogvoeding-geperst-zalm-small-2kg/a1885
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnis', 'Geperst Zalm Small', 'kibble', '2 / 4 / 12,5 kg', null, 'https://www.carnis.nl/nl/droogvoeding-geperst-zalm-small-2kg/a1885', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '26% zalmmeel, ontsloten rijstmeel, ontsloten mais, ontsloten sorghum, ontsloten haver, rundvet, bietenpulp, vitamine- en mineralen mix, gefractioneerd vetpoeder, kippenmeel, 0,5% zonnebloemolie, 0,05% chondroïtine, 0,05% glucosamine', true, now(), 'sha256:61a37752426ad2a184e603e0b908555bb69b0557f4dec8297d0452215e568875', null from p;

-- Carnis — Gestoomde Vleesworst Eend (400 g / 15 x 400 g)
-- bron: https://www.carnis.nl/nl/gestoomde-vleesworst-eend-400g/a9701
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnis', 'Gestoomde Vleesworst Eend', 'wet', '400 g / 15 x 400 g', null, 'https://www.carnis.nl/nl/gestoomde-vleesworst-eend-400g/a9701', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '78% eend (karkas, 26% vlees, maag, lever), boekweitmeel, mineralen', true, now(), 'sha256:d16a9c425f2ac78b7d0ea537a645b55e9f3e33c5cc2081b939befedcbe5f4bae', null from p;

-- Carnis — Gestoomde Vleesworst Kabeljauw met Zalm (400 g / 15 x 400 g)
-- bron: https://www.carnis.nl/nl/gestoomde-vleesworst-kabeljauw-met-zalm-400g/a9700
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnis', 'Gestoomde Vleesworst Kabeljauw met Zalm', 'wet', '400 g / 15 x 400 g', null, 'https://www.carnis.nl/nl/gestoomde-vleesworst-kabeljauw-met-zalm-400g/a9700', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '67% kabeljauw (vlees) en 10% zalm (karkas, hoofd, staart, vlees), boekweitmeel, mineralen, lijnzaadolie, zonnebloemolie', true, now(), 'sha256:05653639f31fd7c37a1c6ee54b649c20233e5e7e72008c51f4c4561c35ff96b7', null from p;

-- Carnis — Gestoomde Vleesworst Kip (400 g / 15 x 400 g)
-- bron: https://www.carnis.nl/nl/gestoomde-vleesworst-kip-400g/a9702
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnis', 'Gestoomde Vleesworst Kip', 'wet', '400 g / 15 x 400 g', null, 'https://www.carnis.nl/nl/gestoomde-vleesworst-kip-400g/a9702', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '83% kip (40% vlees, karkas, lever, maag), boekweitmeel, mineralen', true, now(), 'sha256:c2841b33ded3a1e539c054bd4dbf1d8791be18299c1021d2907c9ae09dffd647', null from p;

-- Carnis — Gestoomde Vleesworst Kip met Zalm (400 g / 15 x 400 g)
-- bron: https://www.carnis.nl/nl/gestoomde-vleesworst-kip-met-zalm-400g/a9697
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnis', 'Gestoomde Vleesworst Kip met Zalm', 'wet', '400 g / 15 x 400 g', null, 'https://www.carnis.nl/nl/gestoomde-vleesworst-kip-met-zalm-400g/a9697', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '67% kip (36% vlees, karkas, lever, maag), 10% zalm (karkas, kop, staart, vlees), boekweitmeel, mineralen, lijnzaadolie', true, now(), 'sha256:30934224283ea11a069848ad10f1a99b8420aec8744b65de0798f6ab6b99b090', null from p;

-- Carnis — Gestoomde Vleesworst Lam (400 g / 15 x 400 g)
-- bron: https://www.carnis.nl/nl/gestoomde-vleesworst-lam-400g/a9698
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnis', 'Gestoomde Vleesworst Lam', 'wet', '400 g / 15 x 400 g', null, 'https://www.carnis.nl/nl/gestoomde-vleesworst-lam-400g/a9698', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '75% lam (35% vlees, long, hart, lever, pens), boekweitmeel, mineralen, lijnzaadolie', true, now(), 'sha256:d9365cace098331069f031eea9c29d1bc3f98d5d99f981660e8f45e666a5e288', null from p;

-- Carnis — Gestoomde Vleesworst Rund (400 g / 15 x 400 g)
-- bron: https://www.carnis.nl/nl/gestoomde-vleesworst-rund-400g/a9699
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnis', 'Gestoomde Vleesworst Rund', 'wet', '400 g / 15 x 400 g', null, 'https://www.carnis.nl/nl/gestoomde-vleesworst-rund-400g/a9699', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '78% rund (40% vlees, long, uier, pens, lever), boekweitmeel, mineralen', true, now(), 'sha256:c5c271c1990f1df14ef26ecb1859847e9ce782be0063917157d38a2d74cb5123', null from p;

-- DARF — Konijn (4,65 kg / 10 x 1 kg)
-- bron: https://darf.nl/product/darf-konijn-kvv-10-x-1-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Konijn', 'raw', '4,65 kg / 10 x 1 kg', '8721551950607', 'https://darf.nl/product/darf-konijn-kvv-10-x-1-kg', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '100% vers vlees: – 50% Konijn – 25% Rund – 15% Lam – 10% Geit', true, now(), 'sha256:d4b1e8562775c08869e0d4ef090e49cf871ba92fc2fced2c4057ee1d6e124b9e', null from p;

-- DARF — Lam Kip (4,65 kg / 10 x 1 kg)
-- bron: https://darf.nl/product/darf-lam-kip-10-x-1-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Lam Kip', 'raw', '4,65 kg / 10 x 1 kg', '8721551950614', 'https://darf.nl/product/darf-lam-kip-10-x-1-kg', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling: – 50% Lam: bot, vlees, long, pens, lever, hart – 50% Kip: bot, vlees lever, maagjes, hart', true, now(), 'sha256:a9ce33f81e1183d390fd39be2e45a36f952098596dd6d1348efc73b93bc7f460', null from p;

-- DARF — Pens Haring Eend (4,65 kg / 10 x 1 kg)
-- bron: https://darf.nl/product/darf-pens-haring-eend-classic
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Pens Haring Eend', 'raw', '4,65 kg / 10 x 1 kg', '8721551950287', 'https://darf.nl/product/darf-pens-haring-eend-classic', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling: – 40% rund – 40% haring – 20% eend', true, now(), 'sha256:89f844d341609a9a5ae9c012b8320e6fd7cd718aa5d70164aea57b464965d57e', null from p;

-- DARF — Pens Zalm Kalkoen (4,65 kg / 10 x 1 kg)
-- bron: https://darf.nl/product/darf-pens-zalm-kalkoen-classic
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Pens Zalm Kalkoen', 'raw', '4,65 kg / 10 x 1 kg', '8721551950294', 'https://darf.nl/product/darf-pens-zalm-kalkoen-classic', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ingrediënten omschrijving Rund 40% (voornamelijk pens), zalm 40%, kalkoen 20%.', true, now(), 'sha256:cded615603e0909782292f4356a1816ae7030a6aaeb78ee71936f23ea64985b3', null from p;

-- DARF — Puppy (4,65 kg / 10 x 1 kg)
-- bron: https://darf.nl/product/darf-voor-de-pup-kvv-classic
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Puppy', 'raw', '4,65 kg / 10 x 1 kg', '8721551950324', 'https://darf.nl/product/darf-voor-de-pup-kvv-classic', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling: – 50% Kip: bot, vlees, hart – 25% Rund: vlees, hart, lever – 10% Lam: vlees, bot, lever – 10% Geit: vlees, hart – 5% Noordzeevis', true, now(), 'sha256:6622535d89ab9b327a904748a439bc51ce38b896b16845e4e725ee42b51b6b69', null from p;

-- DARF — Noordzee (4,65 kg / 10 x 1 kg)
-- bron: https://darf.nl/product/darf-noordzee-kvv-10-x-1-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Noordzee', 'raw', '4,65 kg / 10 x 1 kg', '8721551950621', 'https://darf.nl/product/darf-noordzee-kvv-10-x-1-kg', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ingrediënten omschrijving Noordzeevis gecombineerd met rund, eend en lam. Samenstelling Noordzeevis gecombineerd met rund, eend en lam', true, now(), 'sha256:d57fc7de5e938f16001da81c8dcef53fae04c7b2749336c476a786867598750b', null from p;

-- DARF — Actief (10 x 1 kg)
-- bron: https://darf.nl/product/darf-actief-10-x-1-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Actief', 'raw', '10 x 1 kg', '8721551950508', 'https://darf.nl/product/darf-actief-10-x-1-kg', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '100% vers vlees: – 50% Kip – 30% Rund – 10% Lam – 10% Geit Samenstelling: – 70% Spiervlees: 50% Kip: bot en vlees, 30% Rund, 10% Lam, 10% Geit. – 10% Orgaanvlees: Rund: hart, pens, long, nier, Lam: lever, nier, long, pens, Geit: pens, long – 20% Bot: Lam', true, now(), 'sha256:e44972f5b25c24f007548ed728a96084b3f9b4d786ce2e764baa3eb97c229a5a', null from p;

-- DARF — Actief Classic (4,65 kg)
-- bron: https://darf.nl/product/darf-actief-classic
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Actief Classic', 'raw', '4,65 kg', '8721551950171', 'https://darf.nl/product/darf-actief-classic', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '100% vers vlees: – 50% Kip – 30% Rund – 10% Lam – 10% Geit Samenstelling – 70% Spiervlees: 50% Kip: bot en vlees, 30% Rund, 10% Lam, 10% Geit. – 10% Orgaanvlees: Rund: hart long, nier, Lam: lever, nier, long, Geit: long – 20% Bot: Kip', true, now(), 'sha256:ba45beada0a3de51cd30dcd2a95e799f54316c0d0880e9fd2850136b5b21dfaa', null from p;

-- DARF — Caspar KVV (10 x 1 kg)
-- bron: https://darf.nl/product/darf-caspar-kvv-10-x-1-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Caspar KVV', 'raw', '10 x 1 kg', '8721551950201', 'https://darf.nl/product/darf-caspar-kvv-10-x-1-kg', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ingrediënten omschrijving Eend, paard, wilde gans en hert; 70% vlees, 10% orgaan en 20% bot. Samenstelling Eend, paard, wilde gans en hert; 70% vlees, 10% orgaan en 20% bot. Samenstelling kan door het wildseizoen variëren', true, now(), 'sha256:67d917c938fb053a88f932ccfa063599ce48cb237f5ac3e8f7d43114b557cb23', null from p;

-- DARF — Caspar Classic (4,65 kg)
-- bron: https://darf.nl/product/darf-caspar-classic
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Caspar Classic', 'raw', '4,65 kg', '8721551950188', 'https://darf.nl/product/darf-caspar-classic', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ingrediënten omschrijving Wildmix zonder kip en rund, met eend en wisselende wildsoorten zoals wilde gans, hert/ree, fazant of konijn. Samenstelling Wildmix zonder kip en rund, met eend en wisselende wildsoorten zoals wilde gans, hert/ree, fazant of konijn. Verdeling: 70% vlees, 10% orgaan, 20% bot. Samenstelling kan per wildseizoen variëren.', true, now(), 'sha256:4d6a41ed72ffb7788eaeb6d138f9614c4c49efa0c87b0754f303a274766e6a95', null from p;

-- DARF — Eend KVV (10 x 1 kg)
-- bron: https://darf.nl/product/darf-eend-kvv-10-x-1-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Eend KVV', 'raw', '10 x 1 kg', '8721551950546', 'https://darf.nl/product/darf-eend-kvv-10-x-1-kg', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '– 70% Spiervlees – 10% Orgaanvlees – 20% Bot', true, now(), 'sha256:64d3fd54f58a54946b47eeb97355b647c1ff30a4dec56776e0c32dfbf6f7990e', null from p;

-- DARF — Eend Classic (4,65 kg)
-- bron: https://darf.nl/product/darf-eend-classic
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Eend Classic', 'raw', '4,65 kg', '8721551950195', 'https://darf.nl/product/darf-eend-classic', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ingrediënten omschrijving 100% dierlijke ingrediënten uit eend, rund, lam, paard en geit; 70% spiervlees, 10% orgaanvlees en 20% bot.', true, now(), 'sha256:f5a7c0cc2f2c948694ab12637e62d310111422cdbde186d3a5f1c6934fe3e15e', null from p;

-- DARF — Emi KVV (10 x 1 kg)
-- bron: https://darf.nl/product/darf-emi-kvv-10-x-1-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Emi KVV', 'raw', '10 x 1 kg', '8721551950577', 'https://darf.nl/product/darf-emi-kvv-10-x-1-kg', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling 40% paard 40% gans 10% geit orgaan 10% lam', true, now(), 'sha256:1d267c13fed0c06333f593800ebb82db5c92022cc4c1ee14e8ba8fcb283576d3', null from p;

-- DARF — Small (kleine porties)
-- bron: https://darf.nl/product/darf-small-classic
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Small', 'raw', 'kleine porties', '8721551950317', 'https://darf.nl/product/darf-small-classic', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling: – 45% Kip: bot, vlees – 25% Rund: vlees, pens, long hart, lever, nier – 10% Lam: vlees, bot, long, pens, lever – 10% Geit: vlees, pens, long – 10% Vis', true, now(), 'sha256:49c73ec459a9c6f7dbe8ed0b3a7e1dddcfdd2515f4571824b1d18bd4f80f8d1a', null from p;

-- DARF — Puppy Small (kleine porties)
-- bron: https://darf.nl/product/darf-puppy-small-classic
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Puppy Small', 'raw', 'kleine porties', '8721551950331', 'https://darf.nl/product/darf-puppy-small-classic', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling: – 50% Kip: bot, vlees, hart – 25% Rund: vlees, hart, lever – 10% Lam: vlees, bot, lever – 10% Geit: vlees, hart – 5% Noordzeevis', true, now(), 'sha256:6622535d89ab9b327a904748a439bc51ce38b896b16845e4e725ee42b51b6b69', null from p;

-- DARF — Vol Insect (4 / 14 kg)
-- bron: https://darf.nl/product/darf-vol-insect-4-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Vol Insect', 'kibble', '4 / 14 kg', '8721551950058', 'https://darf.nl/product/darf-vol-insect-4-kg', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling 60% rauwe dierlijke/insectenmix: insectenproteïne (larven van de zwarte soldatenvlieg), Noordzeevis en eischaal 15% gedroogde wortel 14% gedroogde appel 5% gierst 2% krill 2% kokosolie 1% brandnetel 0,5% vitamine- en mineralenpreparaat 0,5% vocht', true, now(), 'sha256:2a6abb4b29edbec1b4577b5279b118c0ffbb757011e455c2d73db978b3a6f78b', null from p;

-- DARF — Vol Kalkoen (4 / 14 kg)
-- bron: https://darf.nl/product/darf-vol-kalkoen-4-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Vol Kalkoen', 'kibble', '4 / 14 kg', '8721551950072', 'https://darf.nl/product/darf-vol-kalkoen-4-kg', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ingrediënten: – 60%: Kalkoennekken, Kalkoenvlees, Runderhart, Kalkoenhart, Rundvet, Runderlong – 10%: gedroogde wortel rauw – 10%: appel rauw – 10%: gierst – 5%: Zeewier – 2%: Kril – 2%: Zalmolie vitamine en mineralen preparaat: 0.5%, vocht 0,5% Bevattende:', true, now(), 'sha256:9ef38227c3582929b76fb763adf1a50a6c09340a10c338af528cadc2d89cb7b3', null from p;

-- DARF — Vol Lam (4 / 14 kg)
-- bron: https://darf.nl/product/darf-vol-lam-4-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Vol Lam', 'kibble', '4 / 14 kg', '8721551950355', 'https://darf.nl/product/darf-vol-lam-4-kg', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ingrediënten: – 60%: lamsvlees, lamsbot, lamsorganen, eieren – 15%: gedroogde wortel rauw – 14%: appel rauw – 5%: gierst – 2%: krill – 2%: kokosolie – 1%: brandnetel vitamine en mineralen preparaat: 1%,', true, now(), 'sha256:0584e46ccc7ad2d738f3d620073e29af3ac4896ba2c87097f6efc532e33faab0', null from p;

-- DARF — Vol Noordzeevis (4 / 14 kg)
-- bron: https://darf.nl/product/darf-vol-noordzeevis-4-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Vol Noordzeevis', 'kibble', '4 / 14 kg', '8721551950515', 'https://darf.nl/product/darf-vol-noordzeevis-4-kg', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '– 60%: Visvlees, lamsvlees, lamsbot, lamsorganen en eieren – 15% gedroogde wortel rauw – 14% gedroogde appel rauw – 5% gierst – 2% krill – 2% kokosolie – 1% brandnetel', true, now(), 'sha256:4ff1e6fa307089b8341415dca6d2114766777f9382c160f5e7b0af611b9fa3c6', null from p;

-- DARF — Vol Pup (4 / 14 kg)
-- bron: https://darf.nl/product/darf-vol-pup-4-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Vol Pup', 'kibble', '4 / 14 kg', '8721551950416', 'https://darf.nl/product/darf-vol-pup-4-kg', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ingrediënten: – 60% Kipnekken, rundvlees, lamsvlees, geitenvlees, kippenvlees, runderhart, runderlong, runderpens, runderlever – 15% gedroogde wortel -14% gedroogde appel – 5% gierst – 2% krill – 2% kokosolie – 1% brandnetel.', true, now(), 'sha256:2819d4ea2831d66b042a32da67154eadbc218b18feb68e6357681c9bdcab362b', null from p;

-- DARF — Vol Regular Mini (4 kg)
-- bron: https://darf.nl/product/darf-vol-regular-mini-4-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Vol Regular Mini', 'kibble', '4 kg', '8721551950010', 'https://darf.nl/product/darf-vol-regular-mini-4-kg', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '– 60%: Kipnekken, rundvlees, lamsvlees, geitvlees, kipvlees, runderhart, runderlong runderlever – 15%: gedroogde wortel – 14% gedroogde appel – 5% gierst – 2% krill – 2% kokosolie – 1% brandnetel', true, now(), 'sha256:6b7bd957e3ce1b517ff48a28f94217eb2491885a493c07492d0e15047315c823', null from p;

-- DARF — Vol Rund (4 / 14 kg)
-- bron: https://darf.nl/product/darf-vol-rund-4-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Vol Rund', 'kibble', '4 / 14 kg', '8721551950430', 'https://darf.nl/product/darf-vol-rund-4-kg', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling 60% rundmix: rundvlees, runderhart, runderlong, runderpens en runderlever 10% gedroogde wortel 9% gedroogde appel 5% gierst 2% krill 2% kokosolie 1% brandnetel 0,5% vitamine- en mineralenpreparaat', true, now(), 'sha256:feca1f252b62b5254f19e0e49315d07d0514aba24695bddc8f52160292462fa8', null from p;

-- DARF — Vol Wild (4 / 14 kg)
-- bron: https://darf.nl/product/darf-vol-wild-4-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Vol Wild', 'kibble', '4 / 14 kg', '8721551950461', 'https://darf.nl/product/darf-vol-wild-4-kg', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ingrediënten: – 60%: Hertenvlees, Reevlees, ganzenbot, Hertenorganen -2%: Eieren – 14%: gedroogde wortel rauw – 13%: appel rauw – 5%: gierst – 2%: krill – 2%: kokosolie – 1%: brandnetel', true, now(), 'sha256:1ace37237501b3fea9fd1e62b23a5b6b189825cfc15f716e49a56ec1e8cf25ab', null from p;

-- DARF — Menu Lekker Kalkoen (200 / 400 g)
-- bron: https://darf.nl/product/darf-menu-lekker-kalkoen-400g-in-blik
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Menu Lekker Kalkoen', 'wet', '200 / 400 g', '4260123691080', 'https://darf.nl/product/darf-menu-lekker-kalkoen-400g-in-blik', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling 55% vlees en orgaanvlees van kalkoen* (vlees, hals, hart, lever en maag), 8% gierst*, 5% wortel*, 5% appel*, mineralen, 0,2% brandnetel* en 0,1% heermoes*.Bevat door het productieproces circa 26% vocht.*Afkomstig uit gecontroleerde biologische productie.', true, now(), 'sha256:8b0d3a4957fc4a7dcafb9de278e106f00357b7b4676ef2fb11a183f40dc39ad0', null from p;

-- DARF — Menu Malse Kip (200 / 400 / 800 g)
-- bron: https://darf.nl/product/darf-menu-malse-kip-200g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Menu Malse Kip', 'wet', '200 / 400 / 800 g', '4260123691264', 'https://darf.nl/product/darf-menu-malse-kip-200g', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling 55% kippenvlees en orgaanvlees* (vlees, hals, lever, hart en maag), 7% wortel*, 4% rijst*, 3% courgette*, mineralen, 0,2% brandnetel* en 0,1% karwij*. Bevat door het productieproces circa 30% vocht. *Afkomstig uit gecontroleerde biologische productie.', true, now(), 'sha256:20fdf8713969f76e48a18ed6ca4be2dabc9e35c8a6012e611a93b984d5ae2127', null from p;

-- DARF — Menu Fit Hartige Zijderups (410 g)
-- bron: https://darf.nl/product/darf-fit-bijzonder-lekkere-zijderups-410g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Menu Fit Hartige Zijderups', 'wet', '410 g', '4260123691356', 'https://darf.nl/product/darf-fit-bijzonder-lekkere-zijderups-410g', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling 18% aardappel*, 14% wortel*, 8% kikkererwtenmeel*, 6% zijderups, 6% appel*, 4% bierdraf*, 3% kokoskoek*, 1% lijnzaadolie*, 0,4% eierschalenpoeder*, 0,2% levertraan van kabeljauw, 0,1% koriander* en 0,1% steenzout. Bevat door het productieproces circa 38% vocht. *Afkomstig uit gecontroleerde biologische productie.', true, now(), 'sha256:680d9f366f8be9fb7cd31142e190da9575ba82033be8d9f7f822edf9fd0b75d3', null from p;

-- DARF — Houdbaar worst Eend (200 g)
-- bron: https://darf.nl/product/darf-houdbare-worst-eend-200g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Houdbaar worst Eend', 'wet', '200 g', '8721551951987', 'https://darf.nl/product/darf-houdbare-worst-eend-200g', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ingrediënten: 98% Eend, 2% Tapioca, VItamine en mineralenpreparaat, Bevattende: Vitamine A 4.400 IU/kg, Vitamine D 300 IU/kg, Vitamine E 48 mg/kg.', true, now(), 'sha256:b8f5b0b4f4a553b218a0d618718aa14a12d62090540eb4a3a3a4fb5fdf532609', null from p;

-- DARF — Houdbaar worst Eend (800 g)
-- bron: https://darf.nl/product/product-darf-houdbare-worst-eend-800-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Houdbaar worst Eend', 'wet', '800 g', '8721551951918', 'https://darf.nl/product/product-darf-houdbare-worst-eend-800-gram', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ingrediënten: 95% Eend, 3% Tapioca, 2%VItamine en mineralenpreparaat, Bevattende: Vitamine A 4.400 IU/kg, Vitamine D 300 IU/kg, Vitamine E 48 mg/kg.', true, now(), 'sha256:e62163ab59dc325f648baf8d81d7f6d7e2d433a03277cce2ff40c18bf564ceaa', null from p;

-- DARF — Houdbaar worst Kalkoen (200 g)
-- bron: https://darf.nl/product/darf-houdbare-worst-kalkoen-200g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Houdbaar worst Kalkoen', 'wet', '200 g', '8721551952007', 'https://darf.nl/product/darf-houdbare-worst-kalkoen-200g', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ingrediënten: 97% Kalkoen 3% Tapioca Vitamine en mineralenpreparaat, Bevattende: Vitamine A 4.400 IU/kg, Vitamine D 300 IU/kg, Vitamine E 48 mg/kg.', true, now(), 'sha256:3c3acd178332ef3c8b882125acc7140eac914ee1c3919ebc04d3bf194dc4ce39', null from p;

-- DARF — Houdbaar worst Kalkoen (800 g)
-- bron: https://darf.nl/product/product-darf-houdbare-worst-kalkoen-800-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Houdbaar worst Kalkoen', 'wet', '800 g', '8721551951925', 'https://darf.nl/product/product-darf-houdbare-worst-kalkoen-800-gram', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ingrediënten: 95% Kalkoen, 3% Tapioca, 2%VItamine en mineralenpreparaat, Bevattende: Vitamine A 4.400 IU/kg, Vitamine D 300 IU/kg, Vitamine E 48 mg/kg.', true, now(), 'sha256:1493a7ce274e9aa3003b33c2bc757632af64fe1a4e077eed32ee69a008333a4d', null from p;

-- DARF — Houdbaar worst Konijn (200 g)
-- bron: https://darf.nl/product/darf-houdbare-worst-konijn-200g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Houdbaar worst Konijn', 'wet', '200 g', '8721551952021', 'https://darf.nl/product/darf-houdbare-worst-konijn-200g', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ingrediënten: 98% Konijn 2% Tapioca Vitamine en mineralenpreparaat, Bevattende: Vitamine A 4.400 IU/kg, Vitamine D 300 IU/kg, Vitamine E 48 mg/kg.', true, now(), 'sha256:35350ef6e8b14d6384196ff1a70abd48c7aaecfcc271d9f3baa3a795d87b00b5', null from p;

-- DARF — Houdbaar worst Konijn (800 g)
-- bron: https://darf.nl/product/product-darf-houdbare-worst-konijn-800-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Houdbaar worst Konijn', 'wet', '800 g', '8721551951949', 'https://darf.nl/product/product-darf-houdbare-worst-konijn-800-gram', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '95% Konijn 3% Tapioca 2% vitamine en mineralen Vitamine en mineralenpreparaat, Bevattende: Vitamine A 4.400 IU/kg, Vitamine D 300 IU/kg, Vitamine E 48 mg/kg.', true, now(), 'sha256:9842cd5eb3721815b4f8098cea6217d9f2419dc7968847b778bb816bbc94e067', null from p;

-- DARF — Houdbaar worst Lam (200 g)
-- bron: https://darf.nl/product/darf-houdbare-worst-lam-200g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Houdbaar worst Lam', 'wet', '200 g', '8721551952045', 'https://darf.nl/product/darf-houdbare-worst-lam-200g', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ingrediënten: – 97% Lam: – 3% Rijst: – Toegevoegd als Vitamine en Mineralen: – Vitamine A 4.400 IU/kg – Vitamine D3 300 IU/kg – Vitamine E 48 mg/kg', true, now(), 'sha256:91eb7f2d1ae9e08cb925ed416fea2c3841dbf75bb33f0ce176a5cce1c9958949', null from p;

-- DARF — Houdbaar worst Lam (800 g)
-- bron: https://darf.nl/product/product-darf-houdbare-worst-lam-800-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Houdbaar worst Lam', 'wet', '800 g', '8721551951956', 'https://darf.nl/product/product-darf-houdbare-worst-lam-800-gram', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ingrediënten: 95% Lam, 3% Tapioca, 2%VItamine en mineralenpreparaat, Bevattende: Vitamine A 4.400 IU/kg, Vitamine D 300 IU/kg, Vitamine E 48 mg/kg.', true, now(), 'sha256:304a19d3b1f908e5fa8b717059843e55a4d0afdd1b5966fac08a2c28a1b216ab', null from p;

-- DARF — Houdbaar worst Rund (200 g)
-- bron: https://darf.nl/product/darf-houdbare-worst-rund-200g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Houdbaar worst Rund', 'wet', '200 g', '8721551952038', 'https://darf.nl/product/darf-houdbare-worst-rund-200g', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ingrediënten: – 98% Rund: – 2% Tapioca: – Toegevoegd als Vitamine en Mineralen: – Vitamine A 4.400 IU/kg – Vitamine D3 300 IU/kg – Vitamine E 48 mg/kg', true, now(), 'sha256:7bc8648a20b89cced297cad74060908326ce75422cce550304fd874f43edc7a1', null from p;

-- DARF — Houdbaar worst Rund (800 g)
-- bron: https://darf.nl/product/darf-houdbare-worst-rund-800g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Houdbaar worst Rund', 'wet', '800 g', '8721551952052', 'https://darf.nl/product/darf-houdbare-worst-rund-800g', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ingrediënten: – 97% Rund: – 3% Tapioca: – Toegevoegd als Vitamine en Mineralen: – Vitamine A 4.400 IU/kg – Vitamine D3 300 IU/kg – Vitamine E 48 mg/kg', true, now(), 'sha256:59a55b7268a99a7e7f6c5681279e88c7454eea796476de88262d65ef31399215', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
