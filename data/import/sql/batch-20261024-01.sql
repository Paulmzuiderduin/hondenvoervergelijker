-- Automatisch overgenomen etiketten, batch 1 van 2026-10-24 (29 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Profine — Dog Dry Adult Kip (3 / 12 kg)
-- bron: https://profinepetfood.com/products/profine-dog-dry-adult-kip-12-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Profine', 'Dog Dry Adult Kip', 'kibble', '3 / 12 kg', null, 'https://profinepetfood.com/products/profine-dog-dry-adult-kip-12-kg', date '2026-10-24', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip 40% (gedroogde kip 20%, kippenmeel 20%), maïs, aardappelen (20%), kippenvet (geconserveerd met tocoferolen, een bron van vitamine E) (8%), gedroogde appels, brouwers gist, gehydrolyseerde kippenlever (2%), garnalen (1,5%), zalmolie (1%), zeealgen (0,5%), glucosaminesulfaat (0,02%), cichoreiwortels (een bron van mannan-oligosachariden 0,018%), kruidenmengsel (venkel, basilicum, salie 0,018%), fructo-oligosachariden (0,012%), Yucca schidigera-extract (0,01%), chondroïtinesulfaat (0,012%)', true, now(), 'sha256:0fb1b9ba9c289cb49568c34f303c289994e1358e94aa2aba55cb291d63d3454b', null from p;

-- Profine — Dog Dry Adult Lam (3 / 12 kg)
-- bron: https://profinepetfood.com/products/profine-dog-dry-adult-lam-12-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Profine', 'Dog Dry Adult Lam', 'kibble', '3 / 12 kg', null, 'https://profinepetfood.com/products/profine-dog-dry-adult-lam-12-kg', date '2026-10-24', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogd lamsvlees (35%), aardappelen (25%), maïs, kippenvet (geconserveerd met tocoferolen, een bron van vitamine E), gedroogde appels, brouwers gist, gehydrolyseerde kippenlever, garnalen (1,5%), zalmolie (1%), zeealgen (0,5%), glucosaminesulfaat (0,02%), cichoreiwortels (een bron van mannan-oligosachariden 0,018%), kruidenmengsel (venkel, basilicum, salie 0,018%), fructo-oligosachariden (0,012%), Yucca schidigera-extract (0,01%), chondroïtinesulfaat (0,012%), goudsbloemextract (0,01%)', true, now(), 'sha256:592fff83c970e313a828802aaa6ba2f6b18476e1849bc0b50f4dc24adf15cbd8', null from p;

-- Profine — Dog Dry Adult Large Breed Kip (12 kg)
-- bron: https://profinepetfood.com/products/profine-dog-dry-adult-large-kip-12-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Profine', 'Dog Dry Adult Large Breed Kip', 'kibble', '12 kg', null, 'https://profinepetfood.com/products/profine-dog-dry-adult-large-kip-12-kg', date '2026-10-24', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip 40% (gedroogde kip 22%, kippenmeel 18%), aardappelen (22%), maïs, gedroogde appels, kippenvet (geconserveerd met tocoferolen, een bron van vitamine E)(6%), brouwers gist, gehydrolyseerde kippenlever (2%), garnalen (1,5%), zalmolie (1%), zeealgen (0,5%), glucosaminesulfaat (0,02%), cichoreiwortels (een bron van mannan-oligosachariden 0,018%), kruidenmengsel (venkel, basilicum, salie 0,018%), fructo-oligosachariden (0,012%), Yucca schidigera-extract (0,01%), chondroïtinesulfaat (0,012%)', true, now(), 'sha256:79a266d5f575bfabdbd922798ace00ce95db27adcc2113af7aa2e4187edd8ba2', null from p;

-- Profine — Dog Dry Adult Large Breed Zalm (12 kg)
-- bron: https://profinepetfood.com/products/profine-dog-dry-adult-large-zalm-12-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Profine', 'Dog Dry Adult Large Breed Zalm', 'kibble', '12 kg', null, 'https://profinepetfood.com/products/profine-dog-dry-adult-large-zalm-12-kg', date '2026-10-24', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Zalm 38% (zalmmeel 24%, zalmeiwit 14%), maïs, aardappelen (19%), kippenvet (geconserveerd met tocoferolen, een bron van vitamine E), gedroogde appels, brouwers gist, zalmolie (3%), gehydrolyseerde kippenlever, garnalen (1,5%), zeealgen (0,5%), glucosaminesulfaat (0,02%), cichoreiwortels (een bron van mannan-oligosachariden 0,018%), kruidenmengsel (venkel, basilicum, salie 0,018%), fructo-oligosachariden (0,012%), Yucca schidigera-extract (0,01%), chondroïtinesulfaat (0,012%)', true, now(), 'sha256:ee25f4c8d7b8c56558dd34be0b6f47368d42dc09146959b31ef06c55c5fc012b', null from p;

-- Profine — Dog Dry Adult Small Breed Kip (1 / 3 / 7 kg)
-- bron: https://profinepetfood.com/products/profine-dog-dry-adult-small-kip-3-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Profine', 'Dog Dry Adult Small Breed Kip', 'kibble', '1 / 3 / 7 kg', null, 'https://profinepetfood.com/products/profine-dog-dry-adult-small-kip-3-kg', date '2026-10-24', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip 45% (gedroogde kip 25%, kippenmeel 20%), maïs, aardappelen (14%), kippenvet (geconserveerd met tocoferolen, een bron van vitamine E) (9%), gedroogde appels, brouwers gist, gehydrolyseerde kippenlever (2%), garnalen (1,5%), zalmolie (1%), zeealgen (0,5%), natriumhexametafosfaat (0,1%), glucosaminesulfaat (0,02%), cichoreiwortels (een bron van mannan-oligosachariden 0,018%), kruidenmengsel (venkel, basilicum, salie 0,018%), fructo-oligosachariden (0,012%), Yucca schidigera-extract (0,01%), chondroïtinesulfaat (0,012%), kruidnagels (0,008%)', true, now(), 'sha256:b03d4e4e523199f3367c2328968ab7ee674f134008bfda78a5e267506a74995b', null from p;

-- Profine — Dog Dry Adult Zalm (3 / 12 kg)
-- bron: https://profinepetfood.com/products/profine-dog-dry-adult-zalm-12-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Profine', 'Dog Dry Adult Zalm', 'kibble', '3 / 12 kg', null, 'https://profinepetfood.com/products/profine-dog-dry-adult-zalm-12-kg', date '2026-10-24', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Zalm 37% (gedroogde zalm 22%, zalmeiwit 15%), maïs, aardappelen (20%), kippenvet (geconserveerd met tocoferolen, een bron van vitamine E), gedroogde appels, brouwers gist, zalmolie (3%), gehydrolyseerde kippenlever, garnalen (1,5%), zeealgen (0,5%), glucosaminesulfaat (0,02%), cichoreiwortels (een bron van mannan-oligosachariden 0,018%), kruidenmengsel (venkel, basilicum, salie 0,018%), fructo-oligosachariden (0,012%), Yucca schidigera-extract (0,01%), chondroïtinesulfaat (0,012%)', true, now(), 'sha256:23f83f9a2eca70853b2439da3a71d4ca05e8508374c2db3bafee14d36395972e', null from p;

-- Profine — Dog Dry Energy Kip (3 / 12 kg)
-- bron: https://profinepetfood.com/products/profine-dog-dry-energy-kip-12-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Profine', 'Dog Dry Energy Kip', 'kibble', '3 / 12 kg', null, 'https://profinepetfood.com/products/profine-dog-dry-energy-kip-12-kg', date '2026-10-24', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip 50% (gedroogd kipvlees 25%, kippenmeel 25%), kippenvet (geconserveerd met tocoferolen, een bron van vitamine E) (13%), maïs, aardappelen (5%), brouwers gist, gedroogde appels, gehydrolyseerde kippenlever (2%), garnalen (1,5%), zalmolie (1%), zeealgen (0,5%), glucosaminesulfaat (0,02%), cichoreiwortels (een bron van mannan-oligosachariden 0,018%), kruidenmengsel (venkel, basilicum, salie 0,018%), fructo-oligosachariden (0,012%), Yucca schidigera-extract (0,01%), chondroïtinesulfaat (0,012%)', true, now(), 'sha256:2808f817900dc623cd42585868097ddea8173ef97860e03e62febbc72a7b390e', null from p;

-- Profine — Dog Dry Junior Large Breed Kip (12 kg)
-- bron: https://profinepetfood.com/products/profine-dog-dry-junior-large-kip-12-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Profine', 'Dog Dry Junior Large Breed Kip', 'kibble', '12 kg', null, 'https://profinepetfood.com/products/profine-dog-dry-junior-large-kip-12-kg', date '2026-10-24', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip 42% (gedroogd kipvlees 24%, kippenmeel 18%), aardappelen (20%), maïs, gedroogde appels, kippenvet (geconserveerd met tocoferolen, een bron van vitamine E) (6%), brouwers gist, gehydrolyseerde kippenlever (2%), garnalen (1,5%), zalmolie (1%), zeealgen (0,5%), glucosaminesulfaat (0,025%), cichoreiwortels (een bron van mannan-oligosachariden 0,02%), kruidenmengsel (venkel, basilicum, salie 0,02%), fructo-oligosachariden (0,015%), Yucca schidigera-extract (0,015%), chondroïtinesulfaat (0,015%)', true, now(), 'sha256:d9b1dc4c5408ee5899cec8d1d7db6cb82bda40397c046c264f7e8c93d446e14e', null from p;

-- Profine — Dog Dry Junior Large Breed Zalm (12 kg)
-- bron: https://profinepetfood.com/products/profine-dog-dry-junior-large-zalm-12-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Profine', 'Dog Dry Junior Large Breed Zalm', 'kibble', '12 kg', null, 'https://profinepetfood.com/products/profine-dog-dry-junior-large-zalm-12-kg', date '2026-10-24', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Zalm 42% (zalmmeel 26%, zalmeiwit 16%), maïs, aardappelen (15%), gedroogde appels, kippenvet (geconserveerd met tocoferolen, een bron van vitamine E), brouwers gist, zalmolie (3%), gehydrolyseerde kippenlever (2%), garnalen (1,5%), zeealgen (0,5%), glucosaminesulfaat (0,025%), cichoreiwortels (een bron van mannan-oligosachariden 0,02%), kruidenmengsel (venkel, basilicum, salie 0,02%), fructo-oligosachariden (0,015%), Yucca schidigera-extract (0,015%), chondroïtinesulfaat (0,015%)', true, now(), 'sha256:4db4ae7d144b540494a011bf2be256f923d87d88f7500a90dbec7bbd4ec74561', null from p;

-- Profine — Dog Dry Light Lam (3 / 12 kg)
-- bron: https://profinepetfood.com/products/profine-dog-dry-light-lam-12-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Profine', 'Dog Dry Light Lam', 'kibble', '3 / 12 kg', null, 'https://profinepetfood.com/products/profine-dog-dry-light-lam-12-kg', date '2026-10-24', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogd lamsvlees (30%), aardappelen (30%), maïs, gedroogde appels, bietenpulp, kippenvet (geconserveerd met tocoferolen, een bron van vitamine E), brouwers gist, gehydrolyseerde kippenlever, garnalen (1,5%), zalmolie (1%), zeealgen (0,5%), psyllium (0,5%), glucosaminesulfaat (0,02%), cichoreiwortels (een bron van mannan-oligosachariden 0,018%), kruidenmengsel (venkel, basilicum, salie 0,018%), fructo-oligosachariden (0,012%), Yucca schidigera-extract (0,01%), chondroïtinesulfaat (0,012%)', true, now(), 'sha256:f5ab156e809625d540d511c01b3c52e65e623aa8fc469385cdcf4850d74298a8', null from p;

-- Profine — Dog Dry Puppy Kip (3 / 12 kg)
-- bron: https://profinepetfood.com/products/profine-dog-dry-puppy-kip-12-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Profine', 'Dog Dry Puppy Kip', 'kibble', '3 / 12 kg', null, 'https://profinepetfood.com/products/profine-dog-dry-puppy-kip-12-kg', date '2026-10-24', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip 42% (gedroogde kip 25%, kippenvleesmeel 17%), aardappelen 16%, maïs, kippenvet (geconserveerd met gemengde tocoferolen, een bron van vitamine E) (12%), gedroogde appels, biergist, gehydrolyseerd kippenlever (2%), garnalenmeel (1,5%), zalmolie (1%), zeealgen (0,5%), glucosaminesulfaat (0,025%), cichoreiwortel (bron van mannan-oligosachariden 0,02% ), gedroogde kruidenmix (venkel, basilicum, salie 0,02%), fructo-oligosacchariden (0,015%), yucca schidigera extract (0,015%), chondroïtinesulfaat (0,015%)', true, now(), 'sha256:c83afca3cb61630db28dd8b76fbd4c2c4715b651229deb1dee2543c33f975eff', null from p;

-- Profine — Dog Dry Puppy Lam (3 / 12 kg)
-- bron: https://profinepetfood.com/products/profine-dog-dry-puppy-lam-12-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Profine', 'Dog Dry Puppy Lam', 'kibble', '3 / 12 kg', null, 'https://profinepetfood.com/products/profine-dog-dry-puppy-lam-12-kg', date '2026-10-24', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogd lamsvlees (37%), aardappelen (23%), maïs, kippenvet (geconserveerd met tocoferolen, een bron van vitamine E), gedroogde appels, brouwers gist, gehydrolyseerde kippenlever, garnalen (1,5%), zalmolie (1%), zeealgen (0,5%), glucosaminesulfaat (0,025%), cichoreiwortels (een bron van mannan-oligosachariden 0,02%), kruidenmengsel (venkel, basilicum, salie 0,02%), fructo-oligosachariden (0,015%), Yucca schidigera-extract (0,015%), chondroïtinesulfaat (0,015%)', true, now(), 'sha256:c132e67f09ae95f896bf8c016e86d2f7f942829cfd63e5c35c95da541111b850', null from p;

-- Profine — Dog Dry Senior Kalkoen (3 / 12 kg)
-- bron: https://profinepetfood.com/products/profine-dog-dry-senior-kalkoen-12-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Profine', 'Dog Dry Senior Kalkoen', 'kibble', '3 / 12 kg', null, 'https://profinepetfood.com/products/profine-dog-dry-senior-kalkoen-12-kg', date '2026-10-24', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen 35% (gedroogde kalkoen 20%, kalkoenmeel 15%), maïs, aardappelen (20%), gedroogde appels, brouwers gist, kippenvet (geconserveerd met tocoferolen, een bron van vitamine E) (3%), gehydrolyseerde kippenlever (2%), garnalen (1,5%), zalmolie (1%), zeealgen (0,5%), glucosaminesulfaat (0,02%), cichoreiwortels (een bron van mannan-oligosachariden 0,018%), kruidenmengsel (venkel, basilicum, salie 0,018%), fructo-oligosachariden (0,012%), Yucca schidigera-extract (0,01%), chondroïtinesulfaat (0,012%)', true, now(), 'sha256:563c8148c898309635029b5588e2fa347e081347b9e414e86717f688dc27aa09', null from p;

-- Profine — Dog 65% Hert & Kip (400 g)
-- bron: https://profinepetfood.com/products/profine-dog-65-hert-kip-400-g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Profine', 'Dog 65% Hert & Kip', 'wet', '400 g', null, 'https://profinepetfood.com/products/profine-dog-65-hert-kip-400-g', date '2026-10-24', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'hertenvlees en -organen 35%, kippenvlees en -organen 30%, erwtenmeel 2%, lignocellulose 1%.', true, now(), 'sha256:f56c303bb928300db9d292240e821071cd25e022a04dfdf8a03d7a5af1226dff', null from p;

-- Profine — Dog 65% Kip met Lever (400 g)
-- bron: https://profinepetfood.com/products/profine-dog-65-kip-met-lever-400-g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Profine', 'Dog 65% Kip met Lever', 'wet', '400 g', null, 'https://profinepetfood.com/products/profine-dog-65-kip-met-lever-400-g', date '2026-10-24', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kippenvlees en -organen 60%, (varkens)lever 5%, erwtenmeel 2%, lignocellulose 1%.', true, now(), 'sha256:db9b543a6f864ca8668306411cf2ff9fd60ab102b581ae005c328df155ec32df', null from p;

-- Profine — Dog 65% Lam met Hartjes (400 g)
-- bron: https://profinepetfood.com/products/profine-dog-65-lam-met-hartjes-400-g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Profine', 'Dog 65% Lam met Hartjes', 'wet', '400 g', null, 'https://profinepetfood.com/products/profine-dog-65-lam-met-hartjes-400-g', date '2026-10-24', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'lamsvlees en -organen 60%, (varkens)harten 5%, erwtenmeel 2%, lignocellulose 1%.', true, now(), 'sha256:d4946029a3fa7975f053d47f83729092660bd56e00c223f462e960ecec819bfe', null from p;

-- Profine — Dog 65% Rund met Lever (400 g)
-- bron: https://profinepetfood.com/products/profine-dog-65-rund-met-lever-400-g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Profine', 'Dog 65% Rund met Lever', 'wet', '400 g', null, 'https://profinepetfood.com/products/profine-dog-65-rund-met-lever-400-g', date '2026-10-24', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rundvlees en -organen 60%, (varkens)lever 5%, erwtenmeel 2%, lignocellulose 1%.', true, now(), 'sha256:d8c05ed0853ceb6d54f4e9b50192c692e97b8604f970455b042a954d2db10651', null from p;

-- Profine — Dog 65% Zalm & Kip (400 g)
-- bron: https://profinepetfood.com/products/profine-dog-65-zalm-kip-400-g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Profine', 'Dog 65% Zalm & Kip', 'wet', '400 g', null, 'https://profinepetfood.com/products/profine-dog-65-zalm-kip-400-g', date '2026-10-24', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'zalm 35%, kippenvlees en -organen 30%, erwtenmeel 2%, zalmolie 2%, lignocellulose 1%.', true, now(), 'sha256:1c926eb0b67b2111659a9cb8db60ef8b1cbd9ee708f6fba07ba8e9dc351186ad', null from p;

-- Profine — Dog Salami Hondenworst Eend & Groenten (800 g)
-- bron: https://profinepetfood.com/products/profine-dog-salami-eend-groenten-800-g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Profine', 'Dog Salami Hondenworst Eend & Groenten', 'wet', '800 g', null, 'https://profinepetfood.com/products/profine-dog-salami-eend-groenten-800-g', date '2026-10-24', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '86% kippenvlees en kippenorganen, 4% eend, 4% groente (wortel, groene erwten), 3% zeevoeding (zalmolie, zeewier), bouillon, mineralen, 0,1% kruiden (cichoreiwortel, basilicum, salie)', true, now(), 'sha256:5dd13e8180e6f8306d042bf01428bb7a5eae9b6f26420c7d3e2716bf012e147e', null from p;

-- Profine — Dog Salami Hondenworst Kalkoen & Groenten (800 g)
-- bron: https://profinepetfood.com/products/profine-dog-salami-kalkoen-groenten-800-g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Profine', 'Dog Salami Hondenworst Kalkoen & Groenten', 'wet', '800 g', null, 'https://profinepetfood.com/products/profine-dog-salami-kalkoen-groenten-800-g', date '2026-10-24', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '90% kalkoenvlees en kalkoenorganen, 4% groente (wortel, groene erwten), 3% zeevoeding (zalmolie, zeewier), bouillon, mineralen, 0,1% gedroogde kruiden (cichoreiwortel, basilicum, salie)', true, now(), 'sha256:d37cebd784f5a24244b6113ea5b15f9dd00b5df673053a67bbc0fb3c403e268f', null from p;

-- Profine — Dog Salami Hondenworst Kip & Groenten (800 g)
-- bron: https://profinepetfood.com/products/profine-dog-salami-kip-groenten-800-g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Profine', 'Dog Salami Hondenworst Kip & Groenten', 'wet', '800 g', null, 'https://profinepetfood.com/products/profine-dog-salami-kip-groenten-800-g', date '2026-10-24', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '90% kippenvlees en kippenorganen, 4% groente (wortel, groene erwten), 3% zeevoeding (zalmolie, zeewier), bouillon, mineralen, 0,1% gedroogde kruiden (cichoreiwortel, basilicum, salie)', true, now(), 'sha256:dcf0b27981626b1403c18d297da56b08a1cd79b13ed94a75e12b87ae0cd652d6', null from p;

-- Profine — Dog Salami Hondenworst Lam & Groenten (800 g)
-- bron: https://profinepetfood.com/products/profine-dog-salami-lam-groenten-800-g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Profine', 'Dog Salami Hondenworst Lam & Groenten', 'wet', '800 g', null, 'https://profinepetfood.com/products/profine-dog-salami-lam-groenten-800-g', date '2026-10-24', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '85% kippenvlees en kippenorganen, 4% lam, 4% groente (wortel, groene erwten), 3% zeevoeding (zalmolie, zeewier), bouillon, mineralen, 0,1% gedroogde kruiden (cichoreiwortel, basilicum, salie)', true, now(), 'sha256:cdb5a89271a221ff8ef67c02935be48afba49ce2124f22c8a9a6a0508a4cd440', null from p;

-- Profine — Dog Salami Hondenworst Zalm & Groenten (800 g)
-- bron: https://profinepetfood.com/products/profine-dog-salami-zalm-groenten-800-g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Profine', 'Dog Salami Hondenworst Zalm & Groenten', 'wet', '800 g', null, 'https://profinepetfood.com/products/profine-dog-salami-zalm-groenten-800-g', date '2026-10-24', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '86% kippenvlees en kippenorganen, 4% zalm, 4% groente (wortel, groene erwten), 3% zeevoeding (zalmolie, zeewier), bouillon, mineralen, 0,1% gedroogde kruiden (cichoreiwortel, basilicum, salie)', true, now(), 'sha256:89c3cab66cfbec934bb2907c62d513860b614753f2ff0a65db516943290cfe09', null from p;

-- Profine — Dog Single Protein Eend (400 g)
-- bron: https://profinepetfood.com/products/profine-dog-single-protein-eend-400-g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Profine', 'Dog Single Protein Eend', 'wet', '400 g', null, 'https://profinepetfood.com/products/profine-dog-single-protein-eend-400-g', date '2026-10-24', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'eendenvlees en -organen 65%, erwtenmeel 2%, lignocellulose 0,7%.', true, now(), 'sha256:e250b2f93eebbd7c922c0ccfc60ab6a15d374304d4535b3778c3dd61b37ce2d9', null from p;

-- Profine — Dog Single Protein Kalkoen (400 g)
-- bron: https://profinepetfood.com/products/profine-dog-single-protein-kalkoen-400-g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Profine', 'Dog Single Protein Kalkoen', 'wet', '400 g', null, 'https://profinepetfood.com/products/profine-dog-single-protein-kalkoen-400-g', date '2026-10-24', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kalkoenvlees en -organen 65%, erwtenmeel 2%, lignocellulose 0,7%.', true, now(), 'sha256:8c33f49a51cb933322449e51d21566299713870032ff6fd53e5b420da19eeb18', null from p;

-- Profine — Dog Single Protein Kip (400 g)
-- bron: https://profinepetfood.com/products/profine-dog-single-protein-kip-400-g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Profine', 'Dog Single Protein Kip', 'wet', '400 g', null, 'https://profinepetfood.com/products/profine-dog-single-protein-kip-400-g', date '2026-10-24', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kippenvlees en -organen 65%, erwtenmeel 2%, lignocellulose 0,7%.', true, now(), 'sha256:e014a36958258d70c9a06afdd0b4f58b57a025035fe035b7db8eea74358736ec', null from p;

-- Profine — Dog Single Protein Lam (400 g)
-- bron: https://profinepetfood.com/products/profine-dog-single-protein-lam-400-g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Profine', 'Dog Single Protein Lam', 'wet', '400 g', null, 'https://profinepetfood.com/products/profine-dog-single-protein-lam-400-g', date '2026-10-24', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'lamsvlees en -organen 65%, erwtenmeel 2%, lignocellulose 0,7%.', true, now(), 'sha256:af51b1c9cb9b64856c45e31907eadd4b16ebd6ba239a1016dc0fbf5c1f79fd9e', null from p;

-- Profine — Dog Single Protein Rund (400 g)
-- bron: https://profinepetfood.com/products/profine-dog-single-protein-rund-400-g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Profine', 'Dog Single Protein Rund', 'wet', '400 g', null, 'https://profinepetfood.com/products/profine-dog-single-protein-rund-400-g', date '2026-10-24', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rundvlees en -organen 65%, erwtenmeel 2%, lignocellulose 0,7%.', true, now(), 'sha256:d08d1fa9bce64cb3d6cf069234d8e9af21970d9babee933f8dbc083ab2512db3', null from p;

-- Profine — Dog Single Protein Zalm voor puppies (400 g)
-- bron: https://profinepetfood.com/products/profine-dog-single-protein-zalm-for-puppies-400-g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Profine', 'Dog Single Protein Zalm voor puppies', 'wet', '400 g', null, 'https://profinepetfood.com/products/profine-dog-single-protein-zalm-for-puppies-400-g', date '2026-10-24', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'zalm 65%, aardappelen 4%, erwtenmeel 2%, lignocellulose 0,7%.', true, now(), 'sha256:dd3091dcd13327308749c5f4d6abb5d9392e37c3c027cd5ce6741bfcdd4142c3', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
