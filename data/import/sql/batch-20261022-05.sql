-- Automatisch overgenomen etiketten, batch 5 van 2026-10-22 (5 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Smuldier — Vers vlees Brokjes Complete maaltijd Rund met Groenten (300 g)
-- bron: https://smuldier.nl/product/vers-vlees-brokjes-rund-met-groenten-300g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smuldier', 'Vers vlees Brokjes Complete maaltijd Rund met Groenten', 'raw', '300 g', null, 'https://smuldier.nl/product/vers-vlees-brokjes-rund-met-groenten-300g/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rundvlees (min. 26%), bevleesd kippenkarkas, kippenvlees, groenten (min. 4%, in wisselende samenstelling: wortel, andijvie), rijst, vitaminen en mineralen, zonnebloemolie.', true, now(), 'sha256:3e23be404b3d12cd073a9611c8db28b01a4f5011e807ab02c47b5c3393beac20', null from p;

-- Smuldier — Vers vlees Brokjes Complete maaltijd Lam met Rijst (300 g)
-- bron: https://smuldier.nl/product/vers-vlees-brokjes-lam-met-rijst-300g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smuldier', 'Vers vlees Brokjes Complete maaltijd Lam met Rijst', 'raw', '300 g', null, 'https://smuldier.nl/product/vers-vlees-brokjes-lam-met-rijst-300g/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lamsvlees (min. 26%), kippenvlees, bevleesd kippenkarkas, rijst (min. 10%), vitaminen en mineralen, zonnebloemolie.', true, now(), 'sha256:2cb9910ac9f1e8cbb0f054c823a45cfdf55c56b70ebc97d95db66ba27ce74cdc', null from p;

-- Smuldier — Vers vlees Brokjes Complete maaltijd Kip met Groenten (300 g)
-- bron: https://smuldier.nl/product/vers-vlees-brokjes-kip-met-groenten-300g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smuldier', 'Vers vlees Brokjes Complete maaltijd Kip met Groenten', 'raw', '300 g', null, 'https://smuldier.nl/product/vers-vlees-brokjes-kip-met-groenten-300g/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Bevleesde kippenkarkassen, kippenvlees (kip totaal min. 26%), rijst, groenten (min. 4% in wisselende samenstelling: wortel, andijvie), vitaminen en mineralen, zonnebloemolie.', true, now(), 'sha256:d300d906859b80deb112a995ed0d12ee265767aa17948e64d14ecf8038250bdd', null from p;

-- Smuldier — Vers vlees Maaltijd Hart (300 g / 6 x 300 g)
-- bron: https://smuldier.nl/product/smuldier-vers-vlees-maaltijd-300g-hart/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smuldier', 'Vers vlees Maaltijd Hart', 'wet', '300 g / 6 x 300 g', null, 'https://smuldier.nl/product/smuldier-vers-vlees-maaltijd-300g-hart/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rund 70% (runderhart 26%, rundvlees, runderlong, runderlever, runderpens), bouillon, vitamines & mineralen.', true, now(), 'sha256:b53c353d1b17cc419821491ebee656f65caec796019aecead6c57be1368b4538', null from p;

-- Smuldier — Vers vlees Maaltijd Runderpens (300 g / 6 x 300 g)
-- bron: https://smuldier.nl/product/smuldier-vers-vlees-maaltijd-300g-runderpens/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smuldier', 'Vers vlees Maaltijd Runderpens', 'wet', '300 g / 6 x 300 g', null, 'https://smuldier.nl/product/smuldier-vers-vlees-maaltijd-300g-runderpens/', date '2026-10-22', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rund 70% (runderpens 26%, runderhart, rundvlees, runderlong, runderlever), bouillon, vitamines & mineralen.', true, now(), 'sha256:656055b38fe7e47e908724cdcfe0686ec6bba9ec9b75e4e34935d1ce165918ae', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
