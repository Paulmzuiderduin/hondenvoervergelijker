-- Automatisch overgenomen etiketten, batch 1 van 2026-10-30 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Almo Nature — Almo Nature Bio Organic met Kip en Groenten (100 g / 300 g)
-- bron: https://www.almonature.com/nl/hondenproducten/300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Almo Nature', 'Almo Nature Bio Organic met Kip en Groenten', 'wet', '100 g / 300 g', null, 'https://www.almonature.com/nl/hondenproducten/300', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees* en dierlijke bijprodukten* 44,5% (kip* 9,9%), groenten* 4,1% (wortelen* en erwten*), plantaardige bijprodukten*, mineralen. *BIO. 100% van de ingrediënten van agrarische oorsprong afkomstig uit de biologische landbouw.', true, now(), 'sha256:f7436b0f2120ef2bc11890d93e0934d83b0cfdf77a778fa5665d1a1e5b7a2ed6', null from p;

-- Almo Nature — Almo Nature Bio Organic met Rund en Groenten (100 g / 300 g)
-- bron: https://www.almonature.com/nl/hondenproducten/303
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Almo Nature', 'Almo Nature Bio Organic met Rund en Groenten', 'wet', '100 g / 300 g', null, 'https://www.almonature.com/nl/hondenproducten/303', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees* en dierlijke bijprodukten* 44,5% (rund* 12,9%), groenten* 4,1% (wortelen* en erwten*), plantaardige bijprodukten*, mineralen. *BIO. 100% van de ingrediënten van agrarische oorsprong afkomstig uit de biologische landbouw.', true, now(), 'sha256:ccc34350bfa0c14768c06382f9f34b10fe82b12bcb767c33bd0b54e9a9419e28', null from p;

-- Almo Nature — Almo Nature Daily met Rundvlees (380 g / 400 g)
-- bron: https://www.almonature.com/nl/hondenproducten/381
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Almo Nature', 'Almo Nature Daily met Rundvlees', 'wet', '380 g / 400 g', null, 'https://www.almonature.com/nl/hondenproducten/381', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijprodukten* 53% (rund* 7%), mineralen. *Natuurlijke ingrediënten.', true, now(), 'sha256:52bb3ea8370bfe6005da035c5ff2ea88627dd79c42c78d3ea5e7e646ef76bc4b', null from p;

-- Almo Nature — Almo Nature Life Maintenance met Verse Lam M (12 kg)
-- bron: https://www.almonature.com/nl/hondenproducten/741
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Almo Nature', 'Almo Nature Life Maintenance met Verse Lam M', 'kibble', '12 kg', null, 'https://www.almonature.com/nl/hondenproducten/741', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse lam 26%, maïs*, rijst, bruine rijstmeel, gedroogd rund 9%, gedroogde kip 6,3%, maïseiwitten*, gehydrolyseerde dierlijke eiwitten, kippenvet, bietenpulp, gist, mineralen, mannan-oligosacharides 0,1%, inuline van cichorei - bron van FOS - 0,1%. *Zonder-GGO.', true, now(), 'sha256:8c001279c4a1eef6f68c630cbf14f193f929161d44024e687012471f055ce07e', null from p;

-- Almo Nature — Almo Nature Life Maintenance met Verse Kip M (12 kg)
-- bron: https://www.almonature.com/nl/hondenproducten/744
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Almo Nature', 'Almo Nature Life Maintenance met Verse Kip M', 'kibble', '12 kg', null, 'https://www.almonature.com/nl/hondenproducten/744', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip 32,7% (verse kip 26%, gedroogde kip 6,7%), maïs*, rijst, gedroogd rund 12,1%, bruine rijstmeel, gehydrolyseerde dierlijke eiwitten, kippenvet, bietenpulp, gist, mineralen, mannan-oligosacharides 0,1%, inuline van cichorei - bron van FOS - 0,1%. *Zonder-GGO.', true, now(), 'sha256:a7794395067888bb1fe018cd96496566d8eb367746c07a61facf962c5493ed8e', null from p;

-- Almo Nature — Almo Nature Life Maintenance met Verse Zalm M (12 kg)
-- bron: https://www.almonature.com/nl/hondenproducten/745
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Almo Nature', 'Almo Nature Life Maintenance met Verse Zalm M', 'kibble', '12 kg', null, 'https://www.almonature.com/nl/hondenproducten/745', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse zalm* 26%, maïs**, rijst, bruine rijstmeel, gedroogde tonijn 10%, gedroogde kip 9,5%, kippenvet, gehydrolyseerde dierlijke eiwitten, bietenpulp, gist, mineralen, mannan-oligosacharides 0,1%, inuline van cichorei - bron van FOS - 0,1%. *Natuurlijke bron van omega 3. **Zonder-GGO.', true, now(), 'sha256:96e72c7239313a9b6aa75b0c84386f1e5055a2c43f3f637a6734aee0e24bee75', null from p;

-- Cesar — Classic Rund (150 gr)
-- bron: https://www.cesar.nl/assortiment/classic/classic-rund
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Cesar', 'Classic Rund', 'wet', '150 gr', '4008429092749', 'https://www.cesar.nl/assortiment/classic/classic-rund', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (55%, waarvan 95% natuurlijk*, waarvan 4% rund, 4% lever), granen, mineralen, plantaardige bijproducten, plantaardige eiwitextracten, *natuurlijke ingrediënten.', true, now(), 'sha256:a28ba192005d2bac446db44dd91f9309da8fce5f026f5f6cf1390ee4601fe311', null from p;

-- Cesar — Classic Kip (150 gr; 300 gr)
-- bron: https://www.cesar.nl/assortiment/classic/classic-kip-300
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Cesar', 'Classic Kip', 'wet', '150 gr; 300 gr', '3065890136007', 'https://www.cesar.nl/assortiment/classic/classic-kip-300', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (55%, waarvan natuurlijk* 95%, waarvan kippenlever 4%), granen, mineralen, plantaardige bijproducten, plantaardige eiwitextracten, *natuurlijke ingrediënten.', true, now(), 'sha256:232a3409c53e78d5aa2269a2b31cd83a23a2381e439bdfdea59756683a01e2cc', null from p;

-- Cesar — Classic Kalf & Gevogelte (150 gr)
-- bron: https://www.cesar.nl/assortiment/classic/classic-kalf-gevogelte
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Cesar', 'Classic Kalf & Gevogelte', 'wet', '150 gr', '4008429092756', 'https://www.cesar.nl/assortiment/classic/classic-kalf-gevogelte', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (55%, waarvan 95% natuurlijk*, waarvan 4% kalf, 4% kippenlever), granen, mineralen, plantaardige bijproducten, plantaardige eiwitextracten, *natuurlijke ingrediënten.', true, now(), 'sha256:6cf72c0ef7b15603424d0dc6678f1acb43eb34b2fc9a1668efbb0a6a4fbcba1c', null from p;

-- Cesar — Cuisine Kalf & Kalkoen (150 gr)
-- bron: https://www.cesar.nl/assortiment/cuisine/cuisine-kalf-kalkoen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Cesar', 'Cuisine Kalf & Kalkoen', 'wet', '150 gr', '4008429092930', 'https://www.cesar.nl/assortiment/cuisine/cuisine-kalf-kalkoen', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (43%, waarvan 92% natuurlijk*, waarvan 4% kalf, 4% kalkoen, 4% lever), plantaardige bijproducten, mineralen, plantaardige eiwitextracten, groenten, *natuurlijke ingrediënten.', true, now(), 'sha256:c8cdf585bc82db73088154d2bd3068ba396f2ce12ba07e4c1d3a6b2d00a7ca13', null from p;

-- Cesar — Senior Kip & Rijst 10+ (150 gr)
-- bron: https://www.cesar.nl/assortiment/senior-10/senior-kip-rijst-10
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Cesar', 'Senior Kip & Rijst 10+', 'wet', '150 gr', '4008429092954', 'https://www.cesar.nl/assortiment/senior-10/senior-kip-rijst-10', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (44%, waarvan 92% natuurlijk*, waarvan 4% kippenlever), granen (waarvan 1.1% rijst, wat gelijk staat aan 4% gekookte rijst), mineralen, plantaardige eiwitextracten, plantaardige bijproducten, *natuurlijke ingrediënten.', true, now(), 'sha256:399bc36ecee0158c02cedca6fd761c8e87ca6d1dae373ddb00f51ecfe0b65358', null from p;

-- Cesar — Primeur Lam & Kalkoen (150 gr)
-- bron: https://www.cesar.nl/assortiment/primeur/primeur-lam-kalkoen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Cesar', 'Primeur Lam & Kalkoen', 'wet', '150 gr', '4008429092794', 'https://www.cesar.nl/assortiment/primeur/primeur-lam-kalkoen', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (55%, waarvan 95% natuurlijk*, waarvan 4% lam, 4% kalkoen, 4% lever), groenten (waarvan 4% sperziebonen), granen, mineralen, plantaardige bijproducten, plantaardige eiwitextracten, *natuurlijke ingrediënten.', true, now(), 'sha256:d304a88b379495e3812a251655b2aaff3daccd95c894a4416902f0abf93497ff', null from p;

-- Cesar — Natural Goodness Organic Chicken (100 g)
-- bron: https://www.cesar.nl/products/natural-goodness/cesar-natural-goodness-organic-chicken-loaf-tray-100gr
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Cesar', 'Natural Goodness Organic Chicken', 'wet', '100 g', '4008429164743', 'https://www.cesar.nl/products/natural-goodness/cesar-natural-goodness-organic-chicken-loaf-tray-100gr', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten*^3 (waarvan kip 4%, lever 4%) groenten*^3 (waarvan worteltjes 2%, erwtjes 2%) vis- en bijproducten*^3 mineralen kamille*^3 rozenbottels*^3 *Natuurlijke ingrediënten. ^3Organisch of bio.', true, now(), 'sha256:cd9f20cda2756c8eacaa87ee349cab73a523bd4b765aad27d18ef18b0ddb1881', null from p;

-- Dog Chow — Dog Chow Adult Kip (14 kg; dubbelpak 2 x 14 kg)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_droog/dogchow/adult/456957
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Dog Chow', 'Dog Chow Adult Kip', 'kibble', '14 kg; dubbelpak 2 x 14 kg', '7613034487629', 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/dogchow/adult/456957', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'graan, vlees en dierlijke nevenproducten (8%*), plantaardige eiwitextracten, olie en vet, plantaardige nevenproducten, groente (1,1% gedroogde chicoréewortel), mineralen. * Komt overeen met 16% gedehydreerd vlees en dierlijke nevenproducten: minstens 4% kip.', true, now(), 'sha256:1c4f415a49a3e3b980cd4c8ca1b8951a2e0ee51fcc2790ab770536d4ad6ee515', 'Nederlands etiket overgenomen van zooplus.nl; Dog Chow heeft geen Nederlandse fabrikantpagina meer; buitenlandse Purina-pagina''s wijken qua receptuur af.' from p;

-- Dog Chow — Dog Chow Adult Lam (14 kg; dubbelpak 2 x 14 kg)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_droog/dogchow/adult/457040
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Dog Chow', 'Dog Chow Adult Lam', 'kibble', '14 kg; dubbelpak 2 x 14 kg', '7613034487636', 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/dogchow/adult/457040', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'graan, vlees en dierlijke nevenproducten (8%*), plantaardige eiwitextracten, olie en vet, plantaardige nevenproducten, groente (1,1% gedroogde chicoréewortel), mineralen. * Komt overeen met 16% gedehydreerd vlees en dierlijke nevenproducten: minstens 4% lam.', true, now(), 'sha256:f904eba72807a1574c18a76567cef62c01d5d6cc27d5731beb9ebb2318a8a4fc', 'Nederlands etiket overgenomen van zooplus.nl; Dog Chow heeft geen Nederlandse fabrikantpagina meer; buitenlandse Purina-pagina''s wijken qua receptuur af.' from p;

-- Dog Chow — Dog Chow Adult Sensitive Zalm (14 kg; dubbelpak 2 x 14 kg)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_droog/dogchow/adult/457043
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Dog Chow', 'Dog Chow Adult Sensitive Zalm', 'kibble', '14 kg; dubbelpak 2 x 14 kg', '7613034488244', 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/dogchow/adult/457043', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'graan, vlees en dierlijke nevenproducten, plantaardige eiwitextracten, olie en vet, vis en visnevenproducten (1,8%*), plantaardige nevenproducten (1,5% gedroogde bietensnijdsel), groente (1,1% gedroogde chicoréewortel), mineralen. * Komt overeen met 4% gedehydreerde vis en visnevenproducten: minstens 4% zalm.', true, now(), 'sha256:bd1c9c0335b8e33cf47321d296e5ee15d4f3d75ec5ea74e4382115e097fba711', 'Nederlands etiket overgenomen van zooplus.nl; Dog Chow heeft geen Nederlandse fabrikantpagina meer; buitenlandse Purina-pagina''s wijken qua receptuur af.' from p;

-- Dog Chow — Dog Chow Large Breed Kalkoen (14 kg; dubbelpak 2 x 14 kg)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_droog/dogchow/adult/457041
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Dog Chow', 'Dog Chow Large Breed Kalkoen', 'kibble', '14 kg; dubbelpak 2 x 14 kg', '7613034487926', 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/dogchow/adult/457041', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'graan, vlees en dierlijke nevenproducten (8%*), plantaardige eiwitextracten, olie en vet (visolie 0,7%), plantaardige nevenproducten, groente (1,1% gedroogde chicoréewortel), mineralen. * Komt overeen met 16% gedehydreerd vlees en dierlijke nevenproducten: minstens 4% kalkoen.', true, now(), 'sha256:22218701172fd9368e342d03cd8e396eeed940ffcdc8be6c1473a96cef432096', 'Nederlands etiket overgenomen van zooplus.nl; Dog Chow heeft geen Nederlandse fabrikantpagina meer; buitenlandse Purina-pagina''s wijken qua receptuur af.' from p;

-- Dog Chow — Dog Chow Senior Lam (14 kg; dubbelpak 2 x 14 kg)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_droog/dogchow/mature/661102
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Dog Chow', 'Dog Chow Senior Lam', 'kibble', '14 kg; dubbelpak 2 x 14 kg', '7613287575456', 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/dogchow/mature/661102', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Granen* (53% volkoren), vlees en dierlijke bijproducten (20%, waarvan 4% lam), plantaardige eiwitextracten, plantaardige bijproducten, oliën en vetten, groenten* (1,1% gedroogde cichoreiwortel, 0,08% gedroogde erwten, 0,08% gedroogde wortelen), mineralen. * = natuurlijke ingrediënten.', true, now(), 'sha256:35e8b1db1fd00e4028901adb18de10b25b5af40781a3bbb06283809f8a3357b4', 'Nederlands etiket overgenomen van zooplus.nl; Dog Chow heeft geen Nederlandse fabrikantpagina meer; buitenlandse Purina-pagina''s wijken qua receptuur af.' from p;

-- Dog Chow — Dog Chow Puppy Lam (14 kg; dubbelpak 2 x 14 kg)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_droog/dogchow/puppy/457038
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Dog Chow', 'Dog Chow Puppy Lam', 'kibble', '14 kg; dubbelpak 2 x 14 kg', '7613034487872', 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/dogchow/puppy/457038', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'graan, vlees en dierlijke nevenproducten (8%*), plantaardige eiwitextracten, olie en vet, plantaardige nevenproducten, groente (1,1% gedroogde chicoréewortel), mineralen. * Komt overeen met 16% gerehydreerd vlees en dierlijke nevenproducten: minstens 4% lam.', true, now(), 'sha256:110cf709026233cdeda9bf59f2cd9989be648ffd022842bee0552b98bbbe8723', 'Nederlands etiket overgenomen van zooplus.nl; Dog Chow heeft geen Nederlandse fabrikantpagina meer; buitenlandse Purina-pagina''s wijken qua receptuur af.' from p;

-- Dog Chow — Dog Chow Adult Light Kalkoen (14 kg; dubbelpak 2 x 14 kg)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_droog/dogchow/adult/456958
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Dog Chow', 'Dog Chow Adult Light Kalkoen', 'kibble', '14 kg; dubbelpak 2 x 14 kg', '7613034487773', 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/dogchow/adult/456958', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'graan, vlees en dierlijke nevenproducten (8%*), plantaardige eiwitextracten, olie en vet, plantaardige nevenproducten, groente (1,1% gedroogde bietensnijdsel), mineralen. * Komt overeen met 16% gedehydreerd vlees en dierlijke nevenproducten: minstens 4% kalkoen.', true, now(), 'sha256:5d3cdf5cf72f0d88c616624b98e76075d7a79dcf5040a8e166bfd914ff7dbf51', 'Nederlands etiket overgenomen van zooplus.nl; Dog Chow heeft geen Nederlandse fabrikantpagina meer; buitenlandse Purina-pagina''s wijken qua receptuur af.' from p;

-- Frolic — Frolic Droog Rund 1,5 kg (1,5 kg)
-- bron: https://www.petsplace.nl/frolic-droog-hondenvoer-5900951315305-pps
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Frolic', 'Frolic Droog Rund 1,5 kg', 'kibble', '1,5 kg', '5900951315305', 'https://www.petsplace.nl/frolic-droog-hondenvoer-5900951315305-pps', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'granen* (waarvan volkorentarwe 12%), vlees en dierlijke bijproducten (waarvan vers rund 4%*), oliën en vetten, plantaardige bijproducten (waarvan gedroogde bietenpulp 3%*), mineralen, groenten* (waarvan gedroogde worteltjes 0.5%, wat gelijk staat aan worteltjes 4%). *Natuurlijke ingrediënten.', true, now(), 'sha256:70de2d683ff49fdbd7275ec83a9f1d36176d0fc169e0b29ebc4018fceab77950', 'Nederlands etiket overgenomen van Pets Place; frolic.nl blokkeert geautomatiseerde toegang; de Nederlandse etiketten komen van Pets Place.' from p;

-- Frolic — Frolic Droog Rund 2,6 kg (2,6 kg)
-- bron: https://www.petsplace.nl/frolic-droog-rund-hondenvoer-5900951315237-pps
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Frolic', 'Frolic Droog Rund 2,6 kg', 'kibble', '2,6 kg', '5900951315237', 'https://www.petsplace.nl/frolic-droog-rund-hondenvoer-5900951315237-pps', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'granen* (waarvan volkorentarwe 12%), vlees en dierlijke bijproducten (waarvan vers rund 4%*), oliën en vetten, plantaardige bijproducten (waarvan gedroogde bietenpulp 3%*), mineralen, groenten* (waarvan gedroogde worteltjes 0.5%, wat gelijk staat aan worteltjes 4%). *Natuurlijke ingrediënten.', true, now(), 'sha256:70de2d683ff49fdbd7275ec83a9f1d36176d0fc169e0b29ebc4018fceab77950', 'Nederlands etiket overgenomen van Pets Place; frolic.nl blokkeert geautomatiseerde toegang; de Nederlandse etiketten komen van Pets Place.' from p;

-- Frolic — Frolic Droog Gevogelte (1,5 kg)
-- bron: https://www.petsplace.nl/frolic-droog-gevogelte-hondenvoer-5900951315282-pps
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Frolic', 'Frolic Droog Gevogelte', 'kibble', '1,5 kg', '5900951315282', 'https://www.petsplace.nl/frolic-droog-gevogelte-hondenvoer-5900951315282-pps', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'granen* (waarvan volkorentarwe 12%), vlees en dierlijke bijproducten (waarvan vers gevogelte 4% *), oliën en vetten, plantaardige bijproducten (waarvan gedroogde bietenpulp 3% *), mineralen, groenten* (waarvan gedroogde worteltjes 0.5%, wat gelijk staat aan worteltjes 4%). *Natuurlijke ingrediënten.', true, now(), 'sha256:917fa75ecf8dc61487ba3a909ee55394e583392429d5df0ad8c5a371aa522e0d', 'Nederlands etiket overgenomen van Pets Place; frolic.nl blokkeert geautomatiseerde toegang; de Nederlandse etiketten komen van Pets Place.' from p;

-- Frolic — Frolic Droog Mini Rund (800 g)
-- bron: https://www.petsplace.nl/frolic-droog-mini-hondenvoer-5900951315350-pps
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Frolic', 'Frolic Droog Mini Rund', 'kibble', '800 g', '5900951315350', 'https://www.petsplace.nl/frolic-droog-mini-hondenvoer-5900951315350-pps', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'granen* (waarvan volkorentarwe 12%), vlees en dierlijke bijproducten (waarvan vers rund 4%*), oliën en vetten, plantaardige bijproducten (waarvan gedroogde bietenpulp 3%*), mineralen, groenten* (waarvan gedroogde worteltjes 0.5%, wat gelijk staat aan worteltjes 4%). *Natuurlijke ingrediënten.', true, now(), 'sha256:70de2d683ff49fdbd7275ec83a9f1d36176d0fc169e0b29ebc4018fceab77950', 'Nederlands etiket overgenomen van Pets Place; frolic.nl blokkeert geautomatiseerde toegang; de Nederlandse etiketten komen van Pets Place.' from p;

-- Frolic — Frolic Droog Mini Gevogelte (800 g)
-- bron: https://www.petsplace.nl/frolic-droog-mini-gevogelte-hondenvoer-5900951315374-pps
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Frolic', 'Frolic Droog Mini Gevogelte', 'kibble', '800 g', '5900951315374', 'https://www.petsplace.nl/frolic-droog-mini-gevogelte-hondenvoer-5900951315374-pps', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'granen* (waarvan volkorentarwe 12%), vlees en dierlijke bijproducten (waarvan vers gevogelte 4% *), oliën en vetten, plantaardige bijproducten (waarvan gedroogde bietenpulp 3% *), mineralen, groenten* (waarvan gedroogde worteltjes 0.5%, wat gelijk staat aan worteltjes 4%). *Natuurlijke ingrediënten.', true, now(), 'sha256:917fa75ecf8dc61487ba3a909ee55394e583392429d5df0ad8c5a371aa522e0d', 'Nederlands etiket overgenomen van Pets Place; frolic.nl blokkeert geautomatiseerde toegang; de Nederlandse etiketten komen van Pets Place.' from p;

-- Frolic — Frolic Compleet Malse Maaltijd Rund (1,5 kg; 3 kg)
-- bron: https://www.petsplace.nl/frolic-compleet-malse-maaltijd-hondenvoer-m-4008429029110-pps
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Frolic', 'Frolic Compleet Malse Maaltijd Rund', 'kibble', '1,5 kg; 3 kg', '4008429029110', 'https://www.petsplace.nl/frolic-compleet-malse-maaltijd-hondenvoer-m-4008429029110-pps', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'granen (waarvan tarwe 4%), plantaardige bijproducten, oliën en vetten (waarvan zonnebloemolie 1.4%), vlees en dierlijke bijproducten (14%, waarvan vers rund 4%), groenten (waarvan worteltjes 4%), mineralen, plantaardige eiwitextracten, suikers, melk- en bijproducten, vis- en bijproducten, kruiden.', true, now(), 'sha256:0b180c6ed75b46c6f1253ba96cb1473cd7caae8bae8fa56b7ccc2c1481908cae', 'Nederlands etiket overgenomen van Pets Place; frolic.nl blokkeert geautomatiseerde toegang; de Nederlandse etiketten komen van Pets Place.' from p;

-- Iams — Droogvoer met verse kip voor puppy's van kleine en middelgrote rassen (3 kg; 12 kg)
-- bron: https://iams.eu/nl-nl/hond/droogvoer/droogvoer-met-verse-kip-voor-puppys-van-kleine-en-middelgrote-rassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Iams', 'Droogvoer met verse kip voor puppy''s van kleine en middelgrote rassen', 'kibble', '3 kg; 12 kg', null, 'https://iams.eu/nl-nl/hond/droogvoer/droogvoer-met-verse-kip-voor-puppys-van-kleine-en-middelgrote-rassen', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen 30% (waaronder kip 18%), gerst, maïs, verse kip (10%), varkensvet, rijst, gedroogde bietenpulp (2.5%), kippenjus, visolie, zonnebloemolie, fructo-oligosachariden (0.2%), gedroogde biergist, mineralen.', true, now(), 'sha256:0fbfef371094e347199cfd3452f291a417d3ce5e1f98deae54ccba429fd65b26', null from p;

-- Iams — Droogvoer met verse kip voor puppy's van grote rassen (2 kg; 3 kg; 12 kg)
-- bron: https://iams.eu/nl-nl/hond/droogvoer/droogvoer-met-verse-kip-voor-puppys-van-grote-rassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Iams', 'Droogvoer met verse kip voor puppy''s van grote rassen', 'kibble', '2 kg; 3 kg; 12 kg', null, 'https://iams.eu/nl-nl/hond/droogvoer/droogvoer-met-verse-kip-voor-puppys-van-grote-rassen', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen 26% (waaronder kip 16%), gerst, maïs, verse kip (10%), gedroogde bietenpulp (2.5%), zonnebloemolie, varkensvet, kippenjus, visolie, fructo-oligosachariden (0.2%), gedroogde biergist, mineralen.', true, now(), 'sha256:0f13f9d58b9d05298c1f91bf3f5048be1f7a490608911507ba29fdc1621f101a', null from p;

-- Iams — Droogvoer met verse kip voor volwassen honden van kleine en middelgrote rassen (3 kg; 5 kg; 12 kg)
-- bron: https://iams.eu/nl-nl/hond/droogvoer/droogvoer-met-verse-kip-voor-volwassen-honden-van-kleine-en-middelgrote-rassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Iams', 'Droogvoer met verse kip voor volwassen honden van kleine en middelgrote rassen', 'kibble', '3 kg; 5 kg; 12 kg', null, 'https://iams.eu/nl-nl/hond/droogvoer/droogvoer-met-verse-kip-voor-volwassen-honden-van-kleine-en-middelgrote-rassen', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen 27% (waaronder kip 16%), gerst, maïs, verse kip (10%), varkensvet, gedroogde bietenpulp (2.5%), kippenjus, mineralen (waaronder natriumhexametafosfaat 0.35%), visolie, lijnzaad, fructo-oligosachariden (0.2%), gedroogde biergist.', true, now(), 'sha256:219dbe9ea85192c3e07705ec04b3de6026901ac25979470d73c8e7a8845bf236', null from p;

-- Iams — Droogvoer met lam voor volwassen honden van kleine en middelgrote rassen (3 kg; 12 kg)
-- bron: https://iams.eu/nl-nl/hond/droogvoer/droogvoer-met-lam-voor-volwassen-honden-van-kleine-en-middelgrote-rassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Iams', 'Droogvoer met lam voor volwassen honden van kleine en middelgrote rassen', 'kibble', '3 kg; 12 kg', null, 'https://iams.eu/nl-nl/hond/droogvoer/droogvoer-met-lam-voor-volwassen-honden-van-kleine-en-middelgrote-rassen', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen 29% (waaronder kip 18%), gerst, maïs, varkensvet, lam (4%), gedroogde bietenpulp (2.5%), kippenjus, mineralen (waaronder natriumhexametafosfaat 0.35%), lijnzaad, fructo-oligosachariden (0.2%), gedroogde biergist.', true, now(), 'sha256:251bd6a641e95b75152706d69843d639279c435dd32d4be7aa1a31da6e477c65', null from p;

-- Iams — Droogvoer met verse kip voor volwassen honden van grote rassen (3 kg; 5 kg; 12 kg)
-- bron: https://iams.eu/nl-nl/hond/droogvoer/droogvoer-met-verse-kip-voor-volwassen-honden-van-grote-rassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Iams', 'Droogvoer met verse kip voor volwassen honden van grote rassen', 'kibble', '3 kg; 5 kg; 12 kg', null, 'https://iams.eu/nl-nl/hond/droogvoer/droogvoer-met-verse-kip-voor-volwassen-honden-van-grote-rassen', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen 22% (waaronder kip 13%), gerst, maïs, verse kip (10%), maïsmeel, varkensvet, gedroogde bietenpulp (2.5%), kippenjus, mineralen (waaronder natriumhexametafosfaat 0.35%), lijnzaad, fructo-oligosachariden (0.2%), gedroogde biergist.', true, now(), 'sha256:1d7b7dbb8fe28035d744095d28362b77a59d8822cbec82243231e756c2058742', null from p;

-- Iams — Droogvoer met lam voor volwassen honden van grote rassen (3 kg; 12 kg)
-- bron: https://iams.eu/nl-nl/hond/droogvoer/droogvoer-met-lam-voor-volwassen-honden-van-grote-rassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Iams', 'Droogvoer met lam voor volwassen honden van grote rassen', 'kibble', '3 kg; 12 kg', null, 'https://iams.eu/nl-nl/hond/droogvoer/droogvoer-met-lam-voor-volwassen-honden-van-grote-rassen', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen 24% (waaronder kip 15%), gerst, maïs, maïsmeel, varkensvet, lam (4%), gedroogde bietenpulp (2.5%), kippenjus, mineralen (waaronder natriumhexametafosfaat 0.35%), gedroogde biergist, lijnzaad, fructo-oligosachariden (0.2%).', true, now(), 'sha256:dd9d1dfdc785a147265cf2996d9a5f6ea02cdafcc932b0e7b2a234b9581e2488', null from p;

-- Iams — Droogvoer met verse kip en laag vetgehalte voor volwassen honden van alle rassen (3 kg; 12 kg)
-- bron: https://iams.eu/nl-nl/hond/droogvoer/droogvoer-met-verse-kip-en-laag-vetgehalte-voor-volwassen-honden-van-alle-rassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Iams', 'Droogvoer met verse kip en laag vetgehalte voor volwassen honden van alle rassen', 'kibble', '3 kg; 12 kg', null, 'https://iams.eu/nl-nl/hond/droogvoer/droogvoer-met-verse-kip-en-laag-vetgehalte-voor-volwassen-honden-van-alle-rassen', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gerst, maïs, gedroogde kip en kalkoen 17% (waaronder kip 10%), verse kip (10%), maïsmeel, varkensvet, gedroogde bietenpulp (2.5%), kippenjus, mineralen (waaronder natriumhexametafosfaat 0.38%), lijnzaad, zonnebloemolie, fructo-oligosachariden (0.2%), visolie, gedroogde biergist.', true, now(), 'sha256:2b298ad9e183cea220d763ba0ca8a6ac80409a2b6a948d290d89ecbb849582fe', null from p;

-- Iams — Droogvoer met verse kip voor senior honden van kleine en middelgrote rassen (3 kg; 5 kg; 12 kg)
-- bron: https://iams.eu/nl-nl/hond/droogvoer/droogvoer-met-verse-kip-voor-senior-katten-1
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Iams', 'Droogvoer met verse kip voor senior honden van kleine en middelgrote rassen', 'kibble', '3 kg; 5 kg; 12 kg', null, 'https://iams.eu/nl-nl/hond/droogvoer/droogvoer-met-verse-kip-voor-senior-katten-1', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen 28% (waaronder kip 17%), gerst, maïs, verse kip (10%), varkensvet, gedroogde bietenpulp (2.5%), kippenjus, mineralen (waaronder natriumhexametafosfaat 0.35%), lijnzaad, fructo-oligosachariden (0.2%), gedroogde biergist, glucosamine van dierlijke weefsels (0.04%).', true, now(), 'sha256:0fc05740775db8759b6777e8e1984dcba270e4f6193e17a9d7251218a7fbda26', null from p;

-- James Wellbeloved — James Wellbeloved Adult Lam & Rijst (2 kg / 10 kg)
-- bron: https://www.wellbeloved.com/p/adult-lamb-and-rice-dry-dog-food/15843891/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('James Wellbeloved', 'James Wellbeloved Adult Lam & Rijst', 'kibble', '2 kg / 10 kg', null, 'https://www.wellbeloved.com/p/adult-lamb-and-rice-dry-dog-food/15843891/', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling: gedroogd lamsvleesproteïne* (19%), gerst*, naakte haver*, zilvervliesrijst* (13%), witte rijst* (13%), gevogeltevet*, heel lijnzaad* (3,9%), erwteneiwit, lamssaus, suikerbietenpulp*, alfalfameel*, mineralen, zeewier* (0,5%), visolie, cichorei-extract* (0,1%), yucca-extract* (0,02%). *Natuurlijk ingrediënt.', true, now(), 'sha256:07d8350eef0deaac827472b81a0d5df31c41a8bcb0166b058641382c254e7b81', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- James Wellbeloved — James Wellbeloved Junior Kalkoen & Rijst (2 kg / 10 kg)
-- bron: https://www.wellbeloved.com/p/puppy-turkey-and-rice-dry-dog-food/15843908/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('James Wellbeloved', 'James Wellbeloved Junior Kalkoen & Rijst', 'kibble', '2 kg / 10 kg', null, 'https://www.wellbeloved.com/p/puppy-turkey-and-rice-dry-dog-food/15843908/', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling: gedroogd kalkoenproteïne* (24%), witte rijst* (16%), naakte haver*, zilvervliesrijst* (15%), erwteneiwit, gevogeltevet*, heel lijnzaad* (3,5%), kalkoensaus, suikerbietenpulp*, alfalfameel*, erwtenvezel*, mineralen, zeewier* (0,5%), visolie, cichorei-extract* (0,25%), yucca-extract* (0,02%). *Natuurlijk ingrediënt.', true, now(), 'sha256:eb4bbc249260d2f46256f0e686b7f7da232f8c298419004e8a7443ffc6e16c74', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- James Wellbeloved — James Wellbeloved Junior Lam & Rijst (2 kg / 10 kg)
-- bron: https://www.wellbeloved.com/p/puppy-lamb-and-rice-dry-dog-food/15843893/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('James Wellbeloved', 'James Wellbeloved Junior Lam & Rijst', 'kibble', '2 kg / 10 kg', null, 'https://www.wellbeloved.com/p/puppy-lamb-and-rice-dry-dog-food/15843893/', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling: gedroogd lamsvleesproteïne* (19,5%), witte rijst* (16%), naakte haver*, erwteneiwit, zilvervliesrijst* (13%), gevogeltevet*, heel lijnzaad* (3,9%), lamssaus, visolie, suikerbietenpulp*, alfalfameel*, mineralen, zeewier* (0,5%), cichorei-extract* (0,25%), yucca-extract* (0,02%). *Natuurlijk ingrediënt.', true, now(), 'sha256:07067e33a507c44cee106a0cfc03a1e073f31560b06f796e923356d7d383356f', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- James Wellbeloved — James Wellbeloved Senior/Light Kalkoen & Rijst (2 kg / 10 kg)
-- bron: https://www.wellbeloved.com/p/senior-turkey-and-rice-dry-dog-food/15843902/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('James Wellbeloved', 'James Wellbeloved Senior/Light Kalkoen & Rijst', 'kibble', '2 kg / 10 kg', null, 'https://www.wellbeloved.com/p/senior-turkey-and-rice-dry-dog-food/15843902/', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling: zilvervliesrijst* (26%), gedroogd kalkoenproteïne* (17,5%), naakte haver*, gerst*, witte rijst* (10%), heel lijnzaad* (4%), gevogeltevet*, suikerbietenpulp*, kalkoensaus, alfalfameel*, erwtenvezel*, zeewier* (0,5%), mineralen, visolie, brandnetel*, peterselie*, cichorei-extract* (0,1%), glucosamine (0,045%), yucca-extract* (0,02%), chondroïtine (0,005%). *Natuurlijk ingrediënt.', true, now(), 'sha256:8181092ed317319f0dd9dcc725810d40fae0a3f997f0561fa8b4ff947be8f6b0', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- James Wellbeloved — James Wellbeloved Senior/Light Lam & Rijst (2 kg / 10 kg)
-- bron: https://www.wellbeloved.com/p/senior-lamb-and-rice-dry-dog-food/15843886/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('James Wellbeloved', 'James Wellbeloved Senior/Light Lam & Rijst', 'kibble', '2 kg / 10 kg', null, 'https://www.wellbeloved.com/p/senior-lamb-and-rice-dry-dog-food/15843886/', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling: zilvervliesrijst* (26%), gedroogd lamsvleesproteïne* (19,5%), naakte haver*, gerst*, witte rijst* (10%), heel lijnzaad* (4%), gevogeltevet*, lamssaus, suikerbietenpulp*, alfalfameel*, zeewier* (0,5%), mineralen, visolie, brandnetel*, peterselie*, cichorei-extract* (0,1%), glucosamine (0,045%), yucca-extract* (0,02%), chondroïtine (0,005%). *Natuurlijk ingrediënt.', true, now(), 'sha256:c7282c38d8efffa1d4d6e044d1dd1990e45b00f7492c8aafbccb64635b28463d', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Lily's Kitchen — Lily's Kitchen Chicken & Duck Countryside Casserole (1 kg / 7 kg)
-- bron: https://eu.lilyskitchen.com/nl/honden/droogvoer/chicken-and-duck-countryside-casserole
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Lily''s Kitchen', 'Lily''s Kitchen Chicken & Duck Countryside Casserole', 'kibble', '1 kg / 7 kg', null, 'https://eu.lilyskitchen.com/nl/honden/droogvoer/chicken-and-duck-countryside-casserole', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '42% kip en eend: verse kip (31%), vers bereide eend (8%), kippenlever (3%). Zoete aardappel (29%), hele erwten (6,5%), hele linzen, erwteneiwit, lijnzaad, eieren, aardappeleiwit, kippensaus, mineralen, planten en kruiden* (1%), zalmolie, prebiotica (mannan-oligosachariden 1,3 g/kg, fructo-oligosachariden 0,8 g/kg), wortels, appels, mengsel voor gewrichtsondersteuning (glucosamine 175 mg/kg, methylsulfonylmethaan 175 mg/kg, chondroïtinesulfaat 125 mg/kg), cranberry''s, spinazie. *Planten en kruiden: alfalfa, vogelmuur, kleefkruid, guldenroede, brandnetel, zeewier, paardenbloemwortel, selderiezaad, mariadistel, kliswortel, goudsbloembloesem, rozenbottels.', true, now(), 'sha256:e443211919446fae2d4b747f6a455901fac85344dd2065a4585a8d2df61f2fab', null from p;

-- Lily's Kitchen — Lily's Kitchen Wild Woodlands with Duck, Salmon and Venison (1 kg / 7 kg)
-- bron: https://eu.lilyskitchen.com/nl/honden/droogvoer/duck-salmon-venison
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Lily''s Kitchen', 'Lily''s Kitchen Wild Woodlands with Duck, Salmon and Venison', 'kibble', '1 kg / 7 kg', null, 'https://eu.lilyskitchen.com/nl/honden/droogvoer/duck-salmon-venison', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% vers bereide ingrediënten: eend (20%), zalm (10%), hert (5%). Aardappelen, erwteneiwit, hele linzen, hele erwten, eieren, lijnzaad, mineralen, lamssaus, voedingsgist, planten en kruiden* (1%), prebiotica (mannan-oligosachariden 1,8 g/kg, fructo-oligosachariden 1,1 g/kg), wortels, appels, mengsel voor gewrichtsondersteuning (methylsulfonylmethaan 200 mg/kg, glucosamine 170 mg/kg, chondroïtinesulfaat 125 mg/kg), cranberry''s, bramen, spinazie. *Planten en kruiden: alfalfa, vogelmuur, kleefkruid, guldenroede, brandnetel, zeewier, paardenbloemwortel, selderiezaad, mariadistel, kliswortel, goudsbloembloesem, rozenbottels.', true, now(), 'sha256:b9b63451478a213898fe65926ca725e46c081cc541fdadcb6ac55b1d96bde4c6', null from p;

-- Lily's Kitchen — Lily's Kitchen Salmon Supper (1 kg)
-- bron: https://eu.lilyskitchen.com/nl/honden/droogvoer/salmon-supper
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Lily''s Kitchen', 'Lily''s Kitchen Salmon Supper', 'kibble', '1 kg', null, 'https://eu.lilyskitchen.com/nl/honden/droogvoer/salmon-supper', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse zalm (40%), zoete aardappel (13,5%), aardappelen, hele erwten (8%), erwteneiwit, aardappeleiwit, visbouillon, erwtenvezel, voedingsgist, mineralen, planten en kruiden* (1%), zalmolie, lijnzaad, prebiotica (mannan-oligosachariden 2,6 g/kg, fructo-oligosachariden 1,5 g/kg), zonnebloemolie, eieren, hele linzen, kamille, cranberry''s, appels, spinazie, dille (0,05%), mengsel voor gewrichtsondersteuning (glucosamine 180 mg/kg, methylsulfonylmethaan 180 mg/kg, chondroïtinesulfaat 125 mg/kg). *Planten en kruiden: alfalfa, vogelmuur, kleefkruid, guldenroede, brandnetel, zeewier, paardenbloemwortel, selderiezaad, mariadistel, kliswortel, goudsbloembloesem, rozenbottels.', true, now(), 'sha256:cb122c771d336eaf7e1b09cfc5fc0b0b54fae787d2f30bb7aea5a1ec7fd3777a', null from p;

-- Lily's Kitchen — Lily's Kitchen Lamb Shepherd’s Pie (1 kg)
-- bron: https://eu.lilyskitchen.com/nl/honden/droogvoer/lamb-shepherds-pie
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Lily''s Kitchen', 'Lily''s Kitchen Lamb Shepherd’s Pie', 'kibble', '1 kg', null, 'https://eu.lilyskitchen.com/nl/honden/droogvoer/lamb-shepherds-pie', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '32% vers bereide ingrediënten: lam (27%), lamslever (5%). Zoete aardappel, aardappelen (16%), erwteneiwit, aardappeleiwit, hele erwten (4%), hele linzen, lijnzaad, lamssaus, mineralen, planten en kruiden* (1%), zonnebloemolie, erwtenvezel, prebiotica (mannan-oligosachariden 2 g/kg, fructo-oligosachariden 1,2 g/kg), mengsel voor gewrichtsondersteuning (methylsulfonylmethaan 200 mg/kg, chondroïtinesulfaat 200 mg/kg, glucosamine 200 mg/kg), wortels, peterselie (0,01%), cranberry''s, appels, spinazie. *Planten en kruiden: alfalfa, vogelmuur, kleefkruid, guldenroede, brandnetel, zeewier, paardenbloemwortel, selderiezaad, mariadistel, kliswortel, goudsbloembloesem, rozenbottels.', true, now(), 'sha256:58b4deda7cc1b40afdb27e1dd4ffe940a5c47f53ee86c53eef50c6890f3a99c7', null from p;

-- Lily's Kitchen — Lily's Kitchen Wild Campfire Stew (400 g)
-- bron: https://eu.lilyskitchen.com/nl/honden/natvoer/wild-campfire-stew
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Lily''s Kitchen', 'Lily''s Kitchen Wild Campfire Stew', 'wet', '400 g', null, 'https://eu.lilyskitchen.com/nl/honden/natvoer/wild-campfire-stew', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '65% Vers bereide Ingrediënten: Hert (40%), Fazant (15%), Zalm (10%), Aardappelen (3%), Muskaatpompoen (2%), Sperziebonen (1%), Appels, Mineralen, Hennepolie (0,1%). Planten en kruiden: Guldenroede, Brandnetel, Anijszaad, Rozenbottels, Goudsbloemblaadjes, Kleefkruid, Kelp, Alfalfa, Mariadistel, Paardenbloemwortel, Kliswortel, Selderiezaad.', true, now(), 'sha256:cd31cb297850759ff4b5eccfb284747b16cfe4d856dfde27350240db088f43d4', null from p;

-- Lily's Kitchen — Lily's Kitchen Lamb Hotpot (400 g)
-- bron: https://eu.lilyskitchen.com/nl/honden/natvoer/lamb-hotpot
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Lily''s Kitchen', 'Lily''s Kitchen Lamb Hotpot', 'wet', '400 g', null, 'https://eu.lilyskitchen.com/nl/honden/natvoer/lamb-hotpot', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% Vers bereid Lam, Aardappelen (3%), Pompoen (2%), Appels (2%), Wortels (1%), Erwten (1%), Broccoli (1%), Bosbessen (1%), Lijnzaad, Mineralen. Planten en kruiden: Guldenroede, Brandnetel, Anijszaad, Rozenbottels, Goudsbloemblaadjes, Kleefkruid, Kelp, Alfalfa, Mariadistel, Paardenbloemwortel, Kliswortel, Selderiezaad.', true, now(), 'sha256:ebc2568358b034105c46935d6afd746d5dd67db432d19055e8dd520245016405', null from p;

-- Lily's Kitchen — Lily's Kitchen Cottage Pie (400 g)
-- bron: https://eu.lilyskitchen.com/nl/honden/natvoer/cottage-pie
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Lily''s Kitchen', 'Lily''s Kitchen Cottage Pie', 'wet', '400 g', null, 'https://eu.lilyskitchen.com/nl/honden/natvoer/cottage-pie', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '60% Vers bereid Rundvlees, Aardappelen (3%), Wortels (3%), Appels, Broccoli, Sperziebonen, Vitaminen en Gecheleerde Mineralen, Lijnzaad. Planten en kruiden: Guldenroede, Brandnetel, Anijszaad, Selderiezaad, Rozenbottels, Goudsbloemblaadjes, Kleefkruid, Zeewier, Alfalfa, Mariadistel, Paardenbloemwortel, Kliswortel.', true, now(), 'sha256:f71a9bba8195af848c5b05e66457ae12315b720eac83040b61156b43d3842714', null from p;

-- Lily's Kitchen — Lily's Kitchen Chicken & Turkey Casserole (400 g)
-- bron: https://eu.lilyskitchen.com/nl/honden/natvoer/chicken-turkey-casserole
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Lily''s Kitchen', 'Lily''s Kitchen Chicken & Turkey Casserole', 'wet', '400 g', null, 'https://eu.lilyskitchen.com/nl/honden/natvoer/chicken-turkey-casserole', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse kip (45%), Vers bereide Kalkoen (15%), Wortels (2%), Pompoen (2%), Parelgort (1%), Bruine rijst, Appels, Broccoli, Erwten, Bosbessen (1 %), Vitaminen en Mineralen, Lijnzaad. Planten en kruiden: Guldenroede, Brandnetel, Anijszaad, Selderiezaad, Rozenbottels, Goudsbloemblaadjes, Kleefkruid, Zeewier, Alfalfa, Mariadistel, Paardenbloemwortel, Kliswortel.', true, now(), 'sha256:00d37a276a3d6c6a2a5eb5035e12fb4814607a24d21e910f02db851c1399bb62', null from p;

-- Monge — Monge Natural Superpremium Monoproteïne Adult Eend met Rijst en Aardappelen (15 kg)
-- bron: https://www.mongebenelux.com/nl/hondenbrokken-monoproteine-adult-eend-me-145549550.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Monge', 'Monge Natural Superpremium Monoproteïne Adult Eend met Rijst en Aardappelen', 'kibble', '15 kg', null, 'https://www.mongebenelux.com/nl/hondenbrokken-monoproteine-adult-eend-me-145549550.html', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eend (gedroogd 30%, vers vlees 10%), rijst (15%), aardappeleiwit (5%), maïs, gedroogde bietenpulp, biergist, gehydrolyseerde dierlijke eiwitten (lever), dierlijk vet (eendenolie gezuiverd op 99,5%), mineralen, gistproducten (mannano-oligosachariden MOS 1%), xylo-oligosachariden (XOS 0,3%), yucca schidigera (0,3%), algenmeel (spirulina- Arthrospira platensis 0,3%), producten van de verwerking van planten (wortel van Echinacea purpurea 0,2%, Origanum Vulgare 0,1%), gedroogde knoflook (0,2%), glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:c80d8e2ff4ed7c0d2a07a6768e6f687a44d564b84ed7afbd8aaf39ddd4736094', null from p;

-- Monge — Monge Natural Superpremium Monoproteïne Adult Rundvlees met Rijst (15 kg)
-- bron: https://www.mongebenelux.com/nl/hondenbrokken-monoproteine-adult-rundvle-145561903.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Monge', 'Monge Natural Superpremium Monoproteïne Adult Rundvlees met Rijst', 'kibble', '15 kg', null, 'https://www.mongebenelux.com/nl/hondenbrokken-monoproteine-adult-rundvle-145561903.html', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rundvlees (gedroogd 30%, vers vlees 10%), rijst (7%), dierlijk vet (talk gezuiverd op 99,5%), aardappeleiwit, maïs, gedroogde bietenpulp, gehydrolyseerde dierlijke eiwitten (lever), biergist, haver, mineralen, gistproducten (mannano-oligosacchariden MOS 1%), xylo-oligosacchariden (XOS 0,3%), yucca schidigera (0,3%), algenmeel (spirulina - Arthrospira platensis 0,3%), producten van de verwerking van planten (wortel van Echinacea purpurea 0,2%, Origanum Vulgare 0,1%), gedroogde knoflook (0,2%), glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:111dc32b56f16de9a36cf429da986d9efa1f9d1f3790e507cbc836b8eede95fa', null from p;

-- Monge — Monge Natural Superpremium Monoproteïne Adult Varken met Rijst en Aardappelen (15 kg)
-- bron: https://www.mongebenelux.com/nl/hondenbrokken-monoproteine-adult-varken-145561914.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Monge', 'Monge Natural Superpremium Monoproteïne Adult Varken met Rijst en Aardappelen', 'kibble', '15 kg', null, 'https://www.mongebenelux.com/nl/hondenbrokken-monoproteine-adult-varken-145561914.html', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Varkensvlees (gedroogd 30%, vers vlees 10%), rijst (15%), aardappeleiwit (5%), maïs, gedroogde bietenpulp, biergist, gehydrolyseerde dierlijke eiwitten (lever), dierlijk vet (varkensvet gezuiverd op 99,5%), mineralen, haver, gistproducten (mannano-oligosachariden MOS 1%), xylo-oligosachariden (XOS 0,3%), yucca schidigera (0,3%), algenmeel (spirulina- Arthrospira platensis 0,3%), producten van de verwerking van planten (wortel van Echinacea purpurea 0,2%, Origanum Vulgare 0,1%), gedroogde knoflook (0,2%), glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:43d432d4c65a99caa2975eb6c77fdbb0c50d2c6ca706650eadb3bcf9ee89ba83', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
