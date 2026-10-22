-- Automatisch overgenomen etiketten, batch 3 van 2026-10-22 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Prins Petfoods — ProCare Veggie (3 / 12 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare/veggie-3kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Veggie', 'kibble', '3 / 12 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare/veggie-3kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, rijsteiwit (23,0%), erwt, rijst, zonnebloemolie, maisgluten, aardappelzetmeel, gedroogde cichoreipulp, cellulose, fructo-oligosachariden (FOS), algenolie (0,2%), gehydrolyseerde gist.', true, now(), 'sha256:e9ee2387bb0c650a1de36ecb8b935f89a78ff617995b8569c640abfcac98c220', null from p;

-- Prins Petfoods — ProCare Resist Calm (3 / 12 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare/resist-calm-3kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Resist Calm', 'kibble', '3 / 12 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare/resist-calm-3kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogeltemeel (21,0%), maïs, tarwe, sorghum, gehydrolyseerd gevogelte eiwit (4,5%), rundvet, gedroogde cichoreipulp (2,0%), cellulose, kruidenmengsel (groene thee, passiebloem, kamille) (1,7%), zonnebloemolie, fructo-oligosachariden (FOS) (0,5%), algenolie (0,2%), gehydrolyseerde gist.', true, now(), 'sha256:151058beb451a58653cc05188df1676836f3d62c147c43230fe7bd33a08de7e0', null from p;

-- Prins Petfoods — ProCare Grainfree Skin & Coat (3 / 12 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-grainfree/skin-coat-3kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Grainfree Skin & Coat', 'kibble', '3 / 12 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-grainfree/skin-coat-3kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogeltemeel (28,5%), aardappelzetmeel, erwt, gehydrolyseerd gevogelte eiwit, rundvet, cichoreipulp, cellulose, zonnebloemolie, fructooligosacharide (FOS), algenolie (0,2%), gisthydrolysaat, kaliumchloride.', true, now(), 'sha256:384c34d79de6ea47989ae8a0ee996ff8a4c3814704b7d4f75d5c17d9b53f7b29', null from p;

-- Prins Petfoods — ProCare Mini Puppy & Junior (3 / 12 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-mini/puppy-junior-3kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Mini Puppy & Junior', 'kibble', '3 / 12 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-mini/puppy-junior-3kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogeltemeel (21,0%), maïs, tarwe, sorghum, rundvet, gehydrolyseerd gevogelte eiwit (7,5%), gedroogde cichoreipulp, cellulose, zonnebloemolie, fructo-oligosachariden (FOS), algenolie (0,3%), gehydrolyseerde gist.', true, now(), 'sha256:c1ca00eff1bb015c834657a8c91a7726442edd6423b59ca161438c522f6d43f3', null from p;

-- Prins Petfoods — ProCare Mini Senior Support (3 / 12 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-mini/senior-support-3kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Mini Senior Support', 'kibble', '3 / 12 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-mini/senior-support-3kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gevogeltemeel (11,0%), gehydrolyseerd gevogelte eiwit (10,0%), tarwe, sorghum, rundvet, gedroogde cichoreipulp, cellulose, aardappelzetmeel, zonnebloemolie, fructo-oligosachariden (FOS), gehydrolyseerde gist, algenolie (0,2%), glucosamine (0,05%), chondroitine (0,05%).', true, now(), 'sha256:ff8b12059ba690d9d57bd1ec3e3adabb3f86a3219fd65a9a5f04a55d2442fb15', null from p;

-- Prins Petfoods — ProCare Herring & Rice (3 / 12 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare/herring-rice-3kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Herring & Rice', 'kibble', '3 / 12 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare/herring-rice-3kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Haringmeel (22,0%), maïs, rijst (18,0%), erwt, maïsgluten, rundvet, aardappelzetmeel, gedroogde cichoreipulp (2,0%), cellulose, zonnebloemolie, fructo-oligosachariden (FOS) (0,5%), algenolie (0,2%), gehydrolyseerde gist.', true, now(), 'sha256:b57b34965fa7a96b4380fc618099b4e97285b64b77945bf0db5893c7d8a4cf85', null from p;

-- Prins Petfoods — ProCare Grainfree Junior & Adult (3 / 12 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-grainfree/adult-pro-energy-3kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Grainfree Junior & Adult', 'kibble', '3 / 12 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-grainfree/adult-pro-energy-3kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogeltemeel (26,0%), erwt aardappelzetmeel, rundvet, gehydrolyseerd gevogelte eiwit, cichoreipulp, cellulose, zonnebloemolie, fructooligosacharide (FOS), kaliumchloride, algenolie (0,3%), gisthydrolysaat.', true, now(), 'sha256:e2892407c4e07b3efb92ca67b1b30d7bdc89e4f7b07a136954b03d86ae43646f', null from p;

-- Prins Petfoods — ProCare Protection Puppy (3 / 7,5 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-protection/puppy-3kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Protection Puppy', 'kibble', '3 / 7,5 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-protection/puppy-3kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerd gevogelte, mais, tarwe, dierlijke vetten (rund), rijst, maisgluten, gevogelte eiwithydrolysaat, gedroogde cichoreipulp, maltodextrine, hemoglobinepoeder, mineralen (kaliumchloride, kopersulfaat), zalmolie (0.5%), hydrolysaat van gist, bloedplasma, zonnebloemolie, kruidenextracten & schüssler celzouten (dioscorea, curculigo, dipsacus, drynaria, psoralea, Schüssler celzouten nr. 1,2,5,7) (0.075%), glucosamine (500mg), chondroitine (500mg), Fructo-Oligo-Sachariden (FOS) (400mg).', true, now(), 'sha256:d562bd161e2a6403e71595d3e9b0a7bce216828d0cdb060c6be842b216189131', null from p;

-- Prins Petfoods — ProCare Croque Senior Superior (10 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-croque/senior-superior-10kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Croque Senior Superior', 'kibble', '10 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-croque/senior-superior-10kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Granen, oliën en vetten (zalmolie 0.5%), vlees en dierlijke bijproducten (gevogelte, 500mg glucosamine en 500mg chondroïtine), plantaardige bijproducten (FOS 0.05%), gist.', true, now(), 'sha256:30ccb97914afe9055501f98cc1436052f7b1f2ced972c95e7ca5151fa53520a7', null from p;

-- Prins Petfoods — ProCare Croque Lamb & Rice (10 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-croque/lamb-rice-10kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Croque Lamb & Rice', 'kibble', '10 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-croque/lamb-rice-10kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'granen (rijst 25%), vlees en dierlijke bijproducten (gedehydreerd lam 18%), oliën en vetten (zalmolie 0.5%), plantaardige bijproducten (FOS 0.05%), gist.', true, now(), 'sha256:372e58983b05bf26edcbcffefcf2645e0fbd20b7de7f251239051762d05133ed', null from p;

-- Prins Petfoods — ProCare Protection Super Active (3 / 15 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-protection/super-active-3kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Protection Super Active', 'kibble', '3 / 15 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-protection/super-active-3kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerd gevogelte, mais, tarwe, dierlijke vetten (rund), rijst, maisgluten, gevogelte eiwithydrolysaat, gedroogde cichoreipulp, maltodextrine, hemoglobinepoeder, mineralen (kaliumchloride, kopersulfaat), hydrolysaat van gist, zalmolie (0.5%), zonnebloemolie, kruidenextracten & schüssler celzouten (dioscorea, curculigo, dipsacus, drynaria, psoralea, crataegus, schrüssler celzouten nr. 2,5,7,8,9,11) (0,07%), glucosamine (500mg), chondroitine (500mg), Fructo-Oligo-Sachariden (FOS) (400mg).', true, now(), 'sha256:91c3dc0b8c8aca750531c7db07c709ea677c0869630f5198c00530c64616c43a', null from p;

-- Prins Petfoods — ProCare Croque Basic Excellent (10 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-croque/basic-excellent-10kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Croque Basic Excellent', 'kibble', '10 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-croque/basic-excellent-10kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Granen, vlees en dierlijke bijproducten (gevogelte), plantaardige bijproducten (400mg Fructo-Oligo-Sacchariden), oliën en vetten (0.5% zalmolie), gist.', true, now(), 'sha256:0641a7a0c873d50207cc3d3e10e4ecdc0b6b7bf089969dfcd9de098bb4db9817', null from p;

-- Prins Petfoods — ProCare Mini Lamb & Rice (3 / 12 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-mini/lamb-rice-3kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Mini Lamb & Rice', 'kibble', '3 / 12 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-mini/lamb-rice-3kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, rijst (21,0%), lamsmeel (18,0%), rundvet, maïsgluten, aardappeleiwit, aardappelzetmeel, gedroogde cichoreipulp (2,0%), cellulose, zonnebloemolie, fructo-oligosachariden (FOS) (0,5%), algenolie (0,2%) gehydrolyseerde gist.', true, now(), 'sha256:c86002f2829cd8a23e651db2461eb74b48390d002e7825dd373d5228434e7553', null from p;

-- Prins Petfoods — ProCare Protection Lamb (3 / 15 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-protection/lamb-3kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Protection Lamb', 'kibble', '3 / 15 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-protection/lamb-3kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Mais, gedehydreerd lam (18%), rijst, dierlijke vetten (rund), maisgluten, gedroogde cichoreipulp, aardappelzetmeel, maltodextrine, mineralen (kaliumchloride), hydrolysaat van gist, zalmolie (0.5%), zonnebloemolie, kruidenextracten & schüssler celzouten (dioscorea, curculigo, dipsacus, drynaria, psoralea, crataegus, gallus, schrüssler celzouten nr. 5,6,7,10) (0.065%), glucosamine (500mg), chondroitine (500mg), Fructo-Oligo-Sachariden (FOS) (400mg).', true, now(), 'sha256:744b4491dcd897a039a812a75cd9417d7f44282c9267890c385dbc1b63fe8f76', null from p;

-- Prins Petfoods — ProCare Insect & Rice (3 / 12 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare/insect-rice-3kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Insect & Rice', 'kibble', '3 / 12 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare/insect-rice-3kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, insectenmeel (16,0%), maisgluten, rijst, erwt, rundvet, aardappelzetmeel, gedroogde cichoreipulp, cellulose, zonnebloemolie, fructo-oligosachariden (FOS), algenolie (0,2%), gehydrolyseerde gist.', true, now(), 'sha256:026ef8d5bfd11ef1d5c36c3162f1cd9e1c9a61446ae1b1f546c38f63450b117a', null from p;

-- Prins Petfoods — ProCare Mini Super Active (3 / 12 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-mini/super-active-3kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Mini Super Active', 'kibble', '3 / 12 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-mini/super-active-3kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogeltemeel (21,0%), maïs, tarwe, sorghum, rundvet, gehydrolyseerd gevogelte eiwit (7,5%), gedroogde cichoreipulp (2,0%), cellulose, zonnebloemolie, fructo-oligosachariden (FOS) (0,5%), algenolie (0,2%), gehydrolyseerde gist.', true, now(), 'sha256:006b543cf251a907dba4df3de8f0cf2fb0f59af26e9a1f040f256f0745737e91', null from p;

-- Prins Petfoods — ProCare Mini Resist Calm (3 / 12 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-mini/resist-calm-3kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Mini Resist Calm', 'kibble', '3 / 12 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-mini/resist-calm-3kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogeltemeel (21,0%), maïs, tarwe, sorghum, gehydrolyseerd gevogelte eiwit (4,5%), rundvet, gedroogde cichoreipulp (2,0%), cellulose, kruidenmengsel (groene thee, passiebloem, kamille) (1,7%), zonnebloemolie, fructo-oligosachariden (FOS) (0,5%), algenolie (0,2%), gehydrolyseerde gist.', true, now(), 'sha256:151058beb451a58653cc05188df1676836f3d62c147c43230fe7bd33a08de7e0', null from p;

-- Prins Petfoods — ProCare Grainfree Senior Fit (3 / 12 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-grainfree/senior-fit-3kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Grainfree Senior Fit', 'kibble', '3 / 12 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-grainfree/senior-fit-3kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Aardappelzetmeel, erwt, gevogeltemeel (10,0%), aardappeleiwit, rundvet, gehydrolyseerd gevogelte eiwit, cichoreipulp, cellulose, zonnebloemolie, fructooligosacharide (FOS), algenolie (0,4%), kaliumchloride, gisthydrolysaat, glucosamine (500mg), chondroitine (500mg).', true, now(), 'sha256:64d033a4a1a9e5d11ea23a57e04a929a79061351f9fe07a689e94f6b9db8d837', null from p;

-- Prins Petfoods — ProCare Croque Super Performance (10 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-croque/super-performance-10kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Croque Super Performance', 'kibble', '10 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-croque/super-performance-10kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Granen, vlees en dierlijke bijproducten (gevogelte), plantaardige bijproducten, oliën en vetten (0,5% zalmolie), gist.', true, now(), 'sha256:cc9f46aae2b41d12d3374b0610fa6f158b91b9d04084c9d26c278cf94a614422', null from p;

-- Prins Petfoods — ProCare Mini Herring & Rice (3 / 12 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-mini/herring-rice-3kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Mini Herring & Rice', 'kibble', '3 / 12 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-mini/herring-rice-3kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Haringmeel (22,0%), maïs, rijst (18,0%), erwt, maïsgluten, rundvet, aardappelzetmeel, gedroogde cichoreipulp (2,0%), cellulose, zonnebloemolie, fructo-oligosachariden (FOS) (0,5%), algenolie (0,2%), gehydrolyseerde gist.', true, now(), 'sha256:b57b34965fa7a96b4380fc618099b4e97285b64b77945bf0db5893c7d8a4cf85', null from p;

-- Prins Petfoods — ProCare Protection Senior (3 / 15 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-protection/senior-fit-3kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Protection Senior', 'kibble', '3 / 15 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-protection/senior-fit-3kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerd gevogelte, mais, tarwe, rijst, dierlijke vetten (rund), gedroogde cichoreipulp, maltodextrine, gevogelte eiwithydrolysaat, hemoglobinepoeder, mineralen (kaliumchloride), hydrolysaat van gist, zalmolie (0.5%), hydrolysaat van gist, zonnebloemolie, kruidenextracten & Schüssler celzouten (dioscorea, curculigo, dipsacus, drynaria, psoralea, crataegus, Schüssler celzouten nr. 5,6,7,10) (0,08%), glucosamine (500mg), chondroitine (500mg), Fructo-Oligo-Sachariden (FOS) (400mg).', true, now(), 'sha256:4a698ae746e80863c6ad7918fee64c8c4f0de88e7c9f17f1f066acae17a99d4e', null from p;

-- Prins Petfoods — ProCare Protection Sterilised (3 / 15 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-protection/sterilised-3kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Protection Sterilised', 'kibble', '3 / 15 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-protection/sterilised-3kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerd gevogelte, mais, tarwe, gedroogde cichoreipulp, dierlijke vetten (rund), rijst, maisgluten, gevogelte eiwithydrolysaat, cellulose, hemoglobinepoeder, maltodextrine, mineralen (kaliumchloride), hydrolysaat van gist, zalmolie (0.5%), zonnebloemolie, kruidenextracten & Schüssler celzouten (dioscorea, drynaria, psoralea, crataegus, acanthopanax, epimedium, Schüssler celzouten nr. 2,4,9,10) (0,075%), glucosamine (500mg), chondroitine (500mg), Fructo-Oligo-Sachariden (FOS) (400mg).', true, now(), 'sha256:fa4247e198e00cb0d1e720d2596a863680d7753b07f7abffd783fc3a0c721834', null from p;

-- Prins Petfoods — ProCare Lamb & Rice Senior (3 / 12 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare/lamb-rice-senior-3kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Lamb & Rice Senior', 'kibble', '3 / 12 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare/lamb-rice-senior-3kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, rijst (25,0%), lamsmeel (10,0%), maïsgluten, rundvet, aardappeleiwit, aardappelzetmeel, gedroogde cichoreipulp (2,0%), cellulose, zonnebloemolie, fructo-oligosachariden (FOS) (0,5%), mineralen (kaliumchloride), algenolie (0,3%), gehydrolyseerde gist, glucosamine (0,05%), chondroitine (0,05%).', true, now(), 'sha256:790697c88cd5a8b575a68e3bd46960a15cdc25bffde5c534a2e4ba5cfd1140c1', null from p;

-- Prins Petfoods — Protection Croque Basic Excellent (2 / 10 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/protection-croque/basic-excellent-2kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'Protection Croque Basic Excellent', 'kibble', '2 / 10 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/protection-croque/basic-excellent-2kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerd gevogelte (25,0%), tarwe, mais, maisgluten, gedroogde bietenpulp, cellulose, gevogeltevet, sorghum, gehydrolyseerde kippenlever, zonnebloemolie, zalmolie (0,6%), gist, inuline (0,3%), kaliumchloride, kruidenextracten & Schüssler celmineralen (0,085%) (Acanthopanax, Siberean Ginseng, Dipsacus root, Dioscorea rhizome, Cuscuta seed, Curculigo rhizome, Morus fruit, Mume fruit, Cnidium rhizome, Cyperus, Polygonatum, celminerals nr: 2, 4, 9, 10), glucosamine (0,05%), chondroïtinesulfaat (0,05%).', true, now(), 'sha256:1b70304f08441c1643caef97e10538a650753f3384d9b26a946bf5d2c5ddf30e', null from p;

-- Prins Petfoods — Protection Croque Senior Fit (2 / 10 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/protection-croque/senior-fit-2kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'Protection Croque Senior Fit', 'kibble', '2 / 10 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/protection-croque/senior-fit-2kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'mais, gedehydreerd lam (18,0%), rijst, gevogeltevet, gedroogde bietenpulp, maisgluten, gehydrolyseerde lever, cellulose, zonnebloemolie, zalmolie (1,0%), gist, inuline (0,3%), kaliumchloride, kruidenextracten & Schüssler celmineralen (0,085%) (Eleutherococci root, Dipsacus root, Cuscuta seed, Curculigo rhizome, Dioscorea rhizome, Morus fruit, Mume fruit, Cnidium rhizome, Cyperus, Polygonatum, Crataegus, Citrus peel, celminerals nr: 5, 6, 7, 10), glucosamine (0,05%), chondroïtinesulfaat (0,05%).', true, now(), 'sha256:f886211e037b407c345254f8c253ad38b551f09939dc865742495c8f9c284bf3', null from p;

-- Prins Petfoods — Protection Croque Mini Lamb (2 / 10 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/protection-croque-mini/lamb-2kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'Protection Croque Mini Lamb', 'kibble', '2 / 10 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/protection-croque-mini/lamb-2kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'mais, gedehydreerd lam (18,0%), rijst, gevogeltevet, maisgluten, gedroogde bietenpulp, gehydrolyseerde lever, zonnebloemolie, zalmolie (1,0%), cellulose, natriumtripolyfosfaat (0,5%), gist, kaliumchloride, inuline (0,3%), kruidenextracten & Schüssler celmineralen (0,05%) (Eleutherococci root, Dipsacus root, Cuscuta seed, Curculigo rhizome, Dioscorea rhizome, Morus fruit, Mume fruit, Cnidium rhizome, Cyperus, Polygonatum, Crataegus, Citrus peel, celminerals nr: 5, 6, 7, 10), glucosamine (0,05%), chondroïtinesulfaat (0,05%), yucca schidigera (0,02%).', true, now(), 'sha256:1bf963785a31e829cfa43dcb9574802a163a6ee69093ffaf68b579afd2dea8e1', null from p;

-- Prins Petfoods — Protection Croque Super Vitality (2 / 10 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/protection-croque/super-vitality-2kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'Protection Croque Super Vitality', 'kibble', '2 / 10 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/protection-croque/super-vitality-2kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerd gevogelte (25,0%), tarwe, mais, sorghum, gevogeltevet, maisgluten, gedroogde bietenpulp, gehydrolyseerde kippenlever, cellulose, zonnebloemolie, zalmolie (0,6%), gist, inuline (0,3%), kaliumchloride, kruidenextracten & Schüssler celmineralen (0,085%) (Acanthopanax, Siberean Ginseng, Dipsacus root, Dioscorea rhizome, Cuscuta seed, Curculigo rhizome, Morus fruit, Mume fruit, Cnidium rhizome, Cyperus, Polygonatum, Crataegus, celminerals nr: 2, 5, 7, 8, 9, 11), glucosamine (0,05%), chondroïtinesulfaat (0,05%).', true, now(), 'sha256:49e0288e24637d88c38b5f135b39b721a778f0c0e1b7c6df9f94b0e180a5b8dc', null from p;

-- Prins Petfoods — Protection Croque Lamb (2 / 10 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/protection-croque/lamb-2kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'Protection Croque Lamb', 'kibble', '2 / 10 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/protection-croque/lamb-2kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'mais, gedehydreerd lam (18,0%), rijst, gevogeltevet, gedroogde bietenpulp, maisgluten, gehydrolyseerde lever, cellulose, zonnebloemolie, zalmolie (1,0%), gist, inuline (0,3%), kaliumchloride, kruidenextracten & Schüssler celmineralen (0,085%) (Eleutherococci root, Dipsacus root, Cuscuta seed, Curculigo rhizome, Dioscorea rhizome, Morus fruit, Mume fruit, Cnidium rhizome, Cyperus, Polygonatum, Crataegus, Citrus peel, celminerals nr: 5, 6, 7, 10), glucosamine (0,05%), chondroïtinesulfaat (0,05%).', true, now(), 'sha256:f886211e037b407c345254f8c253ad38b551f09939dc865742495c8f9c284bf3', null from p;

-- Prins Petfoods — Protection Croque Mini Senior Fit (2 / 10 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/protection-croque-mini/senior-fit-2kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'Protection Croque Mini Senior Fit', 'kibble', '2 / 10 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/protection-croque-mini/senior-fit-2kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'mais, gedehydreerde gevogelte (18,0%), tarwe, rijst, gevogeltevet, maisgluten, bietenpulp, sorghum, gehydrolyseerde kippenlever, cellulose, zonnebloemolie, zalmolie (0,6%), natriumtripolyfosfaat (0,5%), gist, inuline (0,3%), kaliumchloride, kruidenextracten & Schüssler celmineralen (0,05%) (Acanthopanax, Siberean Ginseng, Dipsacus root, Dioscorea rhizome, Cuscuta seed, Curculigo rhizome, Morus fruit, Mume fruit, Cnidium rhizome, Cyperus, Polygonatum, Crataegu, celminerals nr: 5, 7, 8, 9, 11), glucosamine (0,05%), chondroitine (0,05%), yucca schidigera (0,02%).', true, now(), 'sha256:578c4de0a27e621acad7d18eba226a2a1dece40f87724bb44c2e04900f98a30f', null from p;

-- Prins Petfoods — Protection Croque Mini Basic Excellent (2 / 10 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/protection-croque-mini/basic-excellent-2kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'Protection Croque Mini Basic Excellent', 'kibble', '2 / 10 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/protection-croque-mini/basic-excellent-2kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerd gevogelte (26,0%), tarwe, mais, gedroogde bietenpulp, cellulose, maisgluten, gevogeltevet, sorghum, gehydrolyseerde kippenlever, zonnebloemolie, zalmolie (0,6%), natriumtripolyfosfaat (0,5%), gist, inuline (0,3%), kaliumchloride, kruidenextracten & Schüssler celmineralen (0,05%) (Acanthopanax, Siberean Ginseng, Dipsacus root, Dioscorea rhizome, Cuscuta seed, Curculigo rhizome, Morus fruit, Mume fruit, Cnidium rhizome, Cyperus, Polygonatum, celminerals nr: 2, 4, 9, 10), glucosamine (0,05%), chondroïtinesulfaat (0,05%), yucca schidigera (0,02%).', true, now(), 'sha256:4ca0b9eb594c74141ee55e82eb6f299c8536cafe526cca9eb490223ea9a7a7b3', null from p;

-- Prins Petfoods — Protection Croque Mini Super Vitality (2 / 10 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/protection-croque-mini/super-vitality-2kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'Protection Croque Mini Super Vitality', 'kibble', '2 / 10 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/protection-croque-mini/super-vitality-2kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerd gevogelte (27,0%), tarwe, mais, gevogeltevet, gedroogde bietenpulp, sorghum, gehydrolyseerde kippenlever, maisgluten, zonnebloemolie, cellulose, zalmolie (0,6%), natriumtripolyfosfaat (0,5%), gist, inuline (0,3%), kaliumchloride, kruidenextracten & Schüssler celmineralen (0,05%) (Acanthopanax, Siberean Ginseng, Dipsacus root, Dioscorea rhizome, Cuscuta seed, Curculigo rhizome, Morus fruit, Mume fruit, Cnidium rhizome, Cyperus, Polygonatum, Crataegus, celminerals nr: 2, 5, 7, 8, 9, 11), glucosamine (0,05%), chondroïtinesulfaat (0,05%), yucca schidigera (0,02%).', true, now(), 'sha256:8da66027f31563c68cae3818feffdcfacda1822cf6248270d00730c211d75c12', null from p;

-- Prins Petfoods — Protection Croque Junior Vitality (2 / 10 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/protection-croque/junior-vitality-2kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'Protection Croque Junior Vitality', 'kibble', '2 / 10 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/protection-croque/junior-vitality-2kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerd gevogelte (25,0%), tarwe, mais, sorghum, gevogeltevet, gedroogde bietenpulp, maisgluten, gehydrolyseerde kippenlever, cellulose, zonnebloemolie, zalmolie (1,0%), gist, inuline (0,3%), kaliumchloride, kruidenextracten & Schüssler celmineralen (0,085%) (Siberean ginseng, Dipsacus root, Dioscorea rhizome, Cuscuta seed, Curculigo rhizome, Morus fruit, Mume fruit, Cnidium rhizome, Cyperus, Polygonatum, celminerals nr: 1, 2, 5, 7), glucosamine (0,05%), chondroïtinesulfaat (0,05%).', true, now(), 'sha256:5206451e7da361dce5b9a57a923bfe07625924f80bdf4f6d318b68358893da8c', null from p;

-- Prins Petfoods — Protection Croque Mini Junior Vitality (2 / 10 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/protection-croque-mini/junior-vitality-2kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'Protection Croque Mini Junior Vitality', 'kibble', '2 / 10 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/protection-croque-mini/junior-vitality-2kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerd gevogelte (27,0%), tarwe, mais, gevogeltevet, gedroogde bietenpulp, sorghum, gehydrolyseerde kippenlever, maisgluten, zalmolie (1,0%), zonnebloemolie, cellulose, natriumtripolyfosfaat (0,5%), gist, inuline (0,3%), kaliumchloride, kruidenextracten & Schüssler celmineralen (0,05%) (Siberean ginseng, Dipsacus root, Dioscorea rhizome, Cuscuta seed, Curculigo rhizome, Morus fruit, Mume fruit, Cnidium rhizome, Cyperus, Polygonatum, celminerals nr: 1, 2, 5, 7), glucosamine (0,05%), chondroïtinesulfaat (0,05%), yucca schidigera (0,02%).', true, now(), 'sha256:6a82ff9dfe67f2170c48ec64ac716bfe8904af71ecb8a902acfeb8f30b2f9b71', null from p;

-- Prins Petfoods — Fit Selection Lamb & Rice (2 / 14 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/fit-selection/lamb-rice-2kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'Fit Selection Lamb & Rice', 'kibble', '2 / 14 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/fit-selection/lamb-rice-2kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Mais, rijst (25%), gedehydreerde lam (17%), dierlijke vetten, maisgluten, bietenpulp, lignocellulose, gehydrolyseerde lever, zalmolie (0.5%), gist, mineralen (kaliumchloride), yucca schidigera extract (200mg).', true, now(), 'sha256:fff8d73d0f390220094081ad9da854fd0a066ed0d12e3564b9c1fc3dc5263408', null from p;

-- Prins Petfoods — Fit Selection Senior (2 / 15 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/fit-selection/senior-2kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'Fit Selection Senior', 'kibble', '2 / 15 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/fit-selection/senior-2kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Mais, gedehydreerde kip (16,5%), gedehydreerde zalm (7,0%), dierlijk vet, rijst, bietenpulp, gehydrolyseerde lever, calciumcarbonaat, gist, visolie (0,1%), glucosamine (0,01%), chondroitine (0,01%).', true, now(), 'sha256:154970a654a85ac7b443c2733d235ec402eb5e27ddbf4be088d162bd9379014d', null from p;

-- Prins Petfoods — Fit Selection Salmon & Rice (2 / 14 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/fit-selection/salmon-rice-2kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'Fit Selection Salmon & Rice', 'kibble', '2 / 14 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/fit-selection/salmon-rice-2kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde zalm (14%), mais, erwt, tarwe, rijst (13.5%), gedehydreerde kip, kippenvet, bietenpulp, gehydrolyseerde lever, maïsgluten, visolie (0.5%), gist, kaliumchloride, yucca schidigera extract (0.1%).', true, now(), 'sha256:6e7624ac1a677839ed80f8d96bd2b0ed20309372d9d9c4c03267440c47829a6a', null from p;

-- Prins Petfoods — Fit Selection Puppy & Junior (2 / 10 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/fit-selection/puppy-junior-2kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'Fit Selection Puppy & Junior', 'kibble', '2 / 10 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/fit-selection/puppy-junior-2kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerd gevogeltemeel (24%), mais, tarwe, gevogeltevet, rijst, gedroogde bietenpulp, maisgluten, gehydrolyseerde lever (gevogelte), zalmolie (0.5%), gist, L-carnitine, Fructo-Oligosaccharide (FOS).', true, now(), 'sha256:7993fc9734a20f6a761df97229af50e28824b8068e4a3a2996795b285e1238e5', null from p;

-- Prins Petfoods — ProCare Croque Diet Gastro-Intestinal (3 / 10 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/diet-croque/gastro-intestinal-3kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Croque Diet Gastro-Intestinal', 'kibble', '3 / 10 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/diet-croque/gastro-intestinal-3kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'mais, gehydrolyseerde zalm (17%), rijst, gehydrolyseerde lever, dierlijke vetten (gevogelte), dicalciumfosfaat, zalmolie, kaliumchloride, natriumchloride, lijnzaadolie, calciumcarbonaat, mannan-oligosacchariden (0.5%), inuline (0.3%), cholinechloride, enterococcus faecium (0.02%).', true, now(), 'sha256:093e986b3070eb2ad5c4c79a7e8a0093ab61825e4f0d45d89196577eab8467cf', null from p;

-- Prins Petfoods — ProCare Croque Diet Weight Reduction & Diabetic (3 / 10 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/diet-croque/weight-reduction-diabetic-3kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Croque Diet Weight Reduction & Diabetic', 'kibble', '3 / 10 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/diet-croque/weight-reduction-diabetic-3kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerd gevogelte, dierlijk eiwitextract, cellulose, maïs, gedroogde aardappel, gedroogde bietenpulp, gerst, gedroogde appel, dierlijke vetten (gevogelte, rund), aardappeleiwit, gevogelte eiwithydrolysaat, gist, gehydrolyseerde kippenlever, lijnzaad, mineralen.', true, now(), 'sha256:aeea31f4c45bc8f3f113e970f075b2d04ae50e872de93da74db5f65d0b42d9bb', null from p;

-- Prins Petfoods — ProCare Croque Diet Renal & Liver Support (3 / 10 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/diet-croque/renal-liver-support-3kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Croque Diet Renal & Liver Support', 'kibble', '3 / 10 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/diet-croque/renal-liver-support-3kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, maïsgluten, gerst, rijst, gedehydreerd gevogelte, gevogeltevet, visolie (5,9%), gedroogde bietenpulp, gehydrolyseerde kippenlever.', true, now(), 'sha256:e6d355e5258a64add41a4ef5f5b0969174ff9b271d4a8bba804f328bedc1fc2d', null from p;

-- Prins Petfoods — ProCare Croque Diet Skin Support (3 / 10 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/diet-croque/skin-intestinal-3kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Croque Diet Skin Support', 'kibble', '3 / 10 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/diet-croque/skin-intestinal-3kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, gedehydreerde eend (26,0%), zalmolie (5,0%), rundvet, gevogeltevet, gedroogde bietenpulp, lijnzaad, inuline (0,5%), gehydrolyseerde lever.', true, now(), 'sha256:2e51064405dc1510e2fd4054158646b6280a33ccf7f4780b267b1ab69050eb4c', null from p;

-- Prins Petfoods — ProCare Croque Diet Urinary (3 / 10 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/diet-croque/urinary-3kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Croque Diet Urinary', 'kibble', '3 / 10 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/diet-croque/urinary-3kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, mais, dierlijk eiwitextract, dierlijke vetten (gevogelte), gerst, gehydrolyseerde kippenlever, zalmolie, natriumchloride, kaliumchloride, lijnzaadolie, cranberries (0.5%), inuline, cholinechloride, yucca schidigera extract.', true, now(), 'sha256:6f6b811ce85d3bf61ca95f29a89949a5db540522671d68b7a9333f168ed861ab', null from p;

-- Prins Petfoods — ProCare Croque Diet Mobility (3 / 10 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/diet-croque/mobility-3kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Croque Diet Mobility', 'kibble', '3 / 10 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/diet-croque/mobility-3kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerd gevogelte, rijst, maïs, gerst, gedroogde bietenpulp, lijnzaadolie, zalmolie, rijstzemelen, gelatine hydrolysaat (2.5%), gist, lijnzaad, dierlijk vet (gevogelte), gehydrolyseerde kippenlever, mineralen, extract van schaal- en weekdieren (bron van glucosamine) (0.15%), gistextract (bron van bèta-glucanen) (0.08%), chondroïtine sulfaat (0.01%).', true, now(), 'sha256:af177a65402e288822f03118777fcb017093f8bf631647fc4516af8c602c27cc', null from p;

-- Prins Petfoods — ProCare Pressed Diet Skin Support (3 / 12 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/diet-pressed/skin-support-3kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Pressed Diet Skin Support', 'kibble', '3 / 12 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/diet-pressed/skin-support-3kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedehydreerde eend (30,0%), mais, rijst, gedroogde cichoreipulp, zonnebloemolie, rundvet, algenolie (2,0%), cellulose, fructo-oligosachariden (FOS), kaliumchloride.', true, now(), 'sha256:d52f2e3cd4064e6748ac8711c99114c67bd4ea2436025d4c8c760f3a55d296da', null from p;

-- Prins Petfoods — ProCare Pressed Diet Mobility (3 / 12 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/diet-pressed/mobility-3kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Pressed Diet Mobility', 'kibble', '3 / 12 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/diet-pressed/mobility-3kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedehydreerd gevogelte, tarwe, maïs, rijst, gedroogde cichoreipulp, lijnzaadolie, gevogelte eiwithydrolysaat, gelatine hydrolysaat (2,5%), algenolie (2,0%), gisthydrolysaat, extract van schaal- en weekdieren (bron van glucosamine) (0,15%), gistextract (bron van bèta-glucanen) (0,08%), plantaardige olie, fructo-oligosachariden (FOS), chondroïtine sulfaat (0,01%).', true, now(), 'sha256:48ca039c1ba8a0d56c4abd78baf3896562d6cb9ad551003064ebee06a17e9517', null from p;

-- Prins Petfoods — ProCare Pressed Diet Weight Reduction & Diabetic (3 / 12 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/diet-pressed/weight-reduction-diabetic-3kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Pressed Diet Weight Reduction & Diabetic', 'kibble', '3 / 12 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/diet-pressed/weight-reduction-diabetic-3kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedehydreerd gevogelte, mais, cellulose, gevogelte eiwithydrolysaat, rijst, maisgluten, gedroogde cichoreipulp, rundvet, zonnebloemolie, fructo-oligosachariden (FOS), algenolie, gisthydrolysaat.', true, now(), 'sha256:0cc1d886dc1b1bb110bb796b7c9358a0aad6b05d9a48c9a5c205692efa723f93', null from p;

-- Prins Petfoods — ProCare Pressed Diet Gastro-Intestinal (3 / 12 kg)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-pressed-diet/gastro-intestinal-3kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Pressed Diet Gastro-Intestinal', 'kibble', '3 / 12 kg', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-pressed-diet/gastro-intestinal-3kg', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, zalmmeel (20,0%), rijst, rundvet, zonnebloemolie, mannan-oligosachariden (0,5%), fructo-oligosachariden (0,5%), algenolie (0,3%).', true, now(), 'sha256:ff7d64b6b78d26e59aac911bd5c83dd0c2155d69d2aa7dceaa9f4e85e7136bee', null from p;

-- Prins Petfoods — NatureCare Dog Chicken (250 g / 12 x 250 g)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/naturecare-dog/chicken-250g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'NatureCare Dog Chicken', 'wet', '250 g / 12 x 250 g', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/naturecare-dog/chicken-250g', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip (70%), aardappeleiwit (14%), aardappelzetmeel (7%), gedroogde chicorei, inuline, zalmolie, zeewier, dicalciumfosfaat, calciumcarbonaat, natriumtripolyfosfaat.', true, now(), 'sha256:dd32fff0d34ad875e338adb86c54e81c747d6438920d0b54e796bf1f0ae4bece', null from p;

-- Prins Petfoods — NatureCare Dog Lamb (250 g / 12 x 250 g)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/naturecare-dog/lamb-250g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'NatureCare Dog Lamb', 'wet', '250 g / 12 x 250 g', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/naturecare-dog/lamb-250g', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam (70%), aardappeleiwit (9%), aardappelzetmeel (7%), gedroogde chicorei, inuline, zalmolie, zeewier, dicalciumfosfaat, natriumtripolyfosfaat, calciumcarbonaat.', true, now(), 'sha256:5d23f2da0416bd830002bb950bd664adc7b4185acd44737eedfa43459ef209bf', null from p;

-- Prins Petfoods — NatureCare Dog Turkey (250 g / 12 x 250 g)
-- bron: https://www.prinspetfoods.nl/nl_NL/hondenvoer/naturecare-dog/turkey-250g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'NatureCare Dog Turkey', 'wet', '250 g / 12 x 250 g', null, 'https://www.prinspetfoods.nl/nl_NL/hondenvoer/naturecare-dog/turkey-250g', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen (70%), aardappeleiwit (15%), aardappelzetmeel (8%), gedroogde chicorei, inuline, zalmolie, zeewier, dicalciumfosfaat, calciumcarbonaat, natriumtripolyfosfaat.', true, now(), 'sha256:02e4831e21d12d9311fe10ac385a959b7e836da2e1e3cf0e7ef79b1843b0eaef', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
