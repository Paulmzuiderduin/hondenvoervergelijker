-- Automatisch overgenomen etiketten, batch 2 van 2026-10-22 (2 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- WOOOF — Zalm & Kip Worst (800 g / 8 kg / 24 kg)
-- bron: https://wooof.com/WOOOF-Zalm-Kip-Worst-Vers/10-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('WOOOF', 'Zalm & Kip Worst', 'wet', '800 g / 8 kg / 24 kg', null, 'https://wooof.com/WOOOF-Zalm-Kip-Worst-Vers/10-stuks', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '94% kippenvlees en zalm, 4% aardappelzetmeel, 2% toegevoegde vitaminen en mineralen.', true, now(), 'sha256:db2c5f483d8fbf801abf5b588444f0d40614019f192ed90e24ac0c7cc2acd474', null from p;

-- WOOOF — Vis Trio Worst (800 g / 8 kg / 24 kg)
-- bron: https://wooof.com/wooof-vis-trio-worst-vers/10-pack
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('WOOOF', 'Vis Trio Worst', 'wet', '800 g / 8 kg / 24 kg', null, 'https://wooof.com/wooof-vis-trio-worst-vers/10-pack', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vismix (92%), aardappelzetmeel (6%), vitamines en mineralen (2%).', true, now(), 'sha256:77336ed84358b75531c6374424d7db7c46b5b19458fe53d691f5e622afca6473', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
