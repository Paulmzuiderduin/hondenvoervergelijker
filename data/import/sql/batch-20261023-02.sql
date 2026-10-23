-- Automatisch overgenomen etiketten, batch 2 van 2026-10-23 (15 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Eukanuba — Puppy rijk aan lam met aardappelen (400 g)
-- bron: https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/puppy-rijk-aan-lam-met-aardappelen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Puppy rijk aan lam met aardappelen', 'wet', '400 g', null, 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/puppy-rijk-aan-lam-met-aardappelen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip (50%), lam (14%), aardappelen (4%), mineralen, zalmolie (1%), bietenpulp (0.5%), inuline (0.4%), MOS (0.3%).', true, now(), 'sha256:f68912080608c5c92dcb8acd00dfa9c804270da9bbb670c7d220486e70fec1c9', null from p;

-- Eukanuba — Puppy rijk aan forel met zoete aardappelen (400 g)
-- bron: https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/puppy-rijk-aan-forel-met-zoete-aardappelen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Puppy rijk aan forel met zoete aardappelen', 'wet', '400 g', null, 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/puppy-rijk-aan-forel-met-zoete-aardappelen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip (50%), forel (14%), zoete aardappelen (4%), mineralen, zalmolie (1%), bietenpulp (0.5%), inuline (0.4%), MOS (0.3%).', true, now(), 'sha256:2f271267152d635925739376edd3df4f34d85e6faed061b2e82367261efbeef7', null from p;

-- Eukanuba — Adult rijk aan kalkoen met wortelen (400 g)
-- bron: https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/adult-rijk-aan-kalkoen-met-wortelen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Adult rijk aan kalkoen met wortelen', 'wet', '400 g', null, 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/adult-rijk-aan-kalkoen-met-wortelen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip (46%), kalkoen (14%), wortels (4%), mineralen, bietenpulp (0.5%), zalmolie (0.5%), inuline (0.4%), MOS (0.3%).', true, now(), 'sha256:da07b6cceb1b680953270337e69293f89c0c9f2e94ddf3bdceed052d367443e5', null from p;

-- Eukanuba — Adult rijk aan lam met aardappelen (400 g)
-- bron: https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/adult-rijk-aan-lam-met-aardappelen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Adult rijk aan lam met aardappelen', 'wet', '400 g', null, 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/adult-rijk-aan-lam-met-aardappelen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip (46%), lam (14%), aardappelen (4%), mineralen, bietenpulp (0.5%), zalmolie (0.5%), inuline (0.4%), MOS (0.3%).', true, now(), 'sha256:c4a886d2993c2ea310a7427ad68fc16cafa7cc890c24115af42ed71df378dff6', null from p;

-- Eukanuba — Adult rijk aan forel met zoete aardappelen (400 g)
-- bron: https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/adult-rijk-aan-forel-met-zoete-aardappelen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Adult rijk aan forel met zoete aardappelen', 'wet', '400 g', null, 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/adult-rijk-aan-forel-met-zoete-aardappelen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip (46%), forel (14%), zoete aardappelen (4%), mineralen, bietenpulp (0.5%), zalmolie (0.5%), inuline (0.4%), MOS (0.3%).', true, now(), 'sha256:eda5236411d9ffc79147ced102acf881517dc58052749608134bbb9d4d806453', null from p;

-- Eukanuba — Senior rijk aan kalkoen met wortelen (400 g)
-- bron: https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/senior-rijk-aan-kalkoen-met-wortelen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Senior rijk aan kalkoen met wortelen', 'wet', '400 g', null, 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/senior-rijk-aan-kalkoen-met-wortelen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip (41%), kalkoen (14%), wortels (4%), mineralen, bietenpulp (0.5%), zalmolie (0.5%), inuline (0.4%), MOS (0.3%).', true, now(), 'sha256:9045a6644c8927e67d49270452fd581a5f9abdbbb6e9c92fe450b72badbd2b87', null from p;

-- Eukanuba — Senior rijk aan rund met pompoen (400 g)
-- bron: https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/senior-rijk-aan-rund-met-pompoen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Senior rijk aan rund met pompoen', 'wet', '400 g', null, 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/senior-rijk-aan-rund-met-pompoen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip (41%), rund (14%), pompoen (4%), mineralen, bietenpulp (0.5%), zalmolie (0.5%), inuline (0.4%), MOS (0.3%).', true, now(), 'sha256:b1b5e4b0118e2d4d0e8c5463644dcaa17185920f0533e6dc1c299ab26472d61a', null from p;

-- Eukanuba — Senior rijk aan lam met aardappelen (400 g)
-- bron: https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/senior-rijk-aan-lam-met-aardappelen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Senior rijk aan lam met aardappelen', 'wet', '400 g', null, 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/senior-rijk-aan-lam-met-aardappelen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip (41%), lam (14%), aardappelen (4%), mineralen, bietenpulp (0.5%), zalmolie (0.5%), inuline (0.4%), MOS (0.3%).', true, now(), 'sha256:20dbc1f782281bb258de5a2de53fc43ca681cd3d79ea106e839e971242c4da0d', null from p;

-- Eukanuba — Senior rijk aan forel met zoete aardappelen (400 g)
-- bron: https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/senior-rijk-aan-forel-met-zoete-aardappelen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Senior rijk aan forel met zoete aardappelen', 'wet', '400 g', null, 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/senior-rijk-aan-forel-met-zoete-aardappelen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip (41%), forel (14%), zoete aardappelen (4%), mineralen, bietenpulp (0.5%), zalmolie (0.5%), inuline (0.4%), MOS (0.3%).', true, now(), 'sha256:64a8c6e013533eee4d4ee2ab90d85ee6d9adf7f218752b4a3253ee53871b57a9', null from p;

-- Eukanuba — Sensitive Digestion Puppy Alle rassen (400 g)
-- bron: https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/sensitive-digestion-puppy-alle-rassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Sensitive Digestion Puppy Alle rassen', 'wet', '400 g', null, 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/sensitive-digestion-puppy-alle-rassen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip (61.5%), rijst (2%), mineralen, bietenpulp (0.5%), zalmolie (0.5%), inuline (0.4%), MOS (0.3%).', true, now(), 'sha256:a1163cc19d75843a9f1f9e5f43dc98616638d1a6166538c318e379ded8d35931', null from p;

-- Eukanuba — Sensitive Digestion Volwassen Alle rassen (400 g)
-- bron: https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/sensitive-digestion-volwassen-alle-rassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Sensitive Digestion Volwassen Alle rassen', 'wet', '400 g', null, 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/sensitive-digestion-volwassen-alle-rassen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip (60%), rijst (2%), mineralen, bietenpulp (0.5%), inuline (0.4%), MOS (0.3%).', true, now(), 'sha256:5e2901823b27af1c190440b9080baa5361eb26831b981ba25019104c3baec440', null from p;

-- Eukanuba — Working & Endurance voor volwassen honden van alle rassen (400 g)
-- bron: https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/working-endurance-voor-volwassen-honden-van-alle-rassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Working & Endurance voor volwassen honden van alle rassen', 'wet', '400 g', null, 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/working-endurance-voor-volwassen-honden-van-alle-rassen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'varken (30%), kip (20%), zalm (5%), wortels, (1%), erwten (1%), aardappel (1%), rijst (1%), mineralen, lijnzaadolie, bietenpulp (0.5%).', true, now(), 'sha256:b1523d8dc14b9f953394679f55a5f230f94980778e73488dc24f5c36a5dab048', null from p;

-- Eukanuba — Mono-Protein Eend Volwassen Alle rassen (400 g)
-- bron: https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/mono-protein-eend-volwassen-alle-rassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Mono-Protein Eend Volwassen Alle rassen', 'wet', '400 g', null, 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/mono-protein-eend-volwassen-alle-rassen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'eend (65%), mineralen, bietenpulp (0.5%), inuline (0.3%), MOS (0.3%).', true, now(), 'sha256:7cdbed26e0f096a0147a11e948433139af35a9be6201b708296cb6054f8f5997', null from p;

-- Eukanuba — Mono-Protein Lam Volwassen Alle Rassen (400 g)
-- bron: https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/mono-protein-lam-volwassen-alle-rassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Mono-Protein Lam Volwassen Alle Rassen', 'wet', '400 g', null, 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/mono-protein-lam-volwassen-alle-rassen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'lam (65%), mineralen, bietenpulp (0.5%), inuline (0.3%), MOS (0.3%).', true, now(), 'sha256:23ef6982cc2021592c07e0f50b7d34bbddadab15b834fc0dad2d0351684a933e', null from p;

-- Eukanuba — Mono-Protein Kip Volwassen Alle rassen (400 g)
-- bron: https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/mono-protein-kip-volwassen-alle-rassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Mono-Protein Kip Volwassen Alle rassen', 'wet', '400 g', null, 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/mono-protein-kip-volwassen-alle-rassen', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip (65%), mineralen, bietenpulp (0.5%), inuline (0.3%), MOS (0.3%).', true, now(), 'sha256:613783ae893387e7d7e8e0e0c67e225d9578d83fb66ddf4574d58513a5dc13f9', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
