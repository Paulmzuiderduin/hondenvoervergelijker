-- Automatisch overgenomen etiketten, batch 11 van 2026-10-26 (20 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Trovet — Adult (400 g)
-- bron: https://www.trovet.com/nl/product/adult-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Adult', 'wet', '400 g', null, 'https://www.trovet.com/nl/product/adult-hond/', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip, mineralen.', true, now(), 'sha256:f81c879842df34d04f6f142c7b1145ceeed71af41ba2ec877c888b8e381aab92', null from p;

-- Trovet — Hepatic (3 / 12,5 kg)
-- bron: https://www.trovet.com/nl/product/hepatic-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Hepatic', 'kibble', '3 / 12,5 kg', null, 'https://www.trovet.com/nl/product/hepatic-hond/', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïs, gedehydrateerd gevolgelte eiwit, rijstzemelen maïsgluten, dierlijk vet, rijst, gedehydrateerd viseiwit, gevogeltehydrolisaat, heel gedehydrateerd ei, bietenpulp, gist (Saccharomyces cerevisiae), visolie, minerale bestanddelen.', true, now(), 'sha256:dd7faace847db42ec8cfe1984ab93824780239a949cd1c2ee97bbe06a0e761b9', null from p;

-- Trovet — Hepatic (400 g)
-- bron: https://www.trovet.com/nl/product/hepatic-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Hepatic', 'wet', '400 g', null, 'https://www.trovet.com/nl/product/hepatic-hond/', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip, rijst, zonnebloemolie, dextrose, cellulose, vitaminen en mineralen, bietenpulp.', true, now(), 'sha256:ab850248f31720aebe23304d35e3e8ffa241d2176abd861c8f936926d1cb5d79', null from p;

-- Trovet — Intestinal (3 / 10 kg)
-- bron: https://www.trovet.com/nl/product/intestinal-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Intestinal', 'kibble', '3 / 10 kg', null, 'https://www.trovet.com/nl/product/intestinal-hond/', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'aardappel, gedehydrateerd eendeneiwit, kippenolie, aardappeleiwit, gefermenteerde producten, kippenhydrolysaat, zonnebloemolie, lijnzaad, johannesbrood, inuline (bron van FOS), bietenpulp, minerale bestanddelen, celwand van gehydrolyseerde gist (bron van mannan-oligosacchariden (MOS)), gist (saccharomyces cerevisiae).', true, now(), 'sha256:17749f24126d76b103e8528239d338c7c430c1df65962687781b75a285f2e4b8', null from p;

-- Trovet — Intestinal (400 g)
-- bron: https://www.trovet.com/nl/product/intestinal-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Intestinal', 'wet', '400 g', null, 'https://www.trovet.com/nl/product/intestinal-hond/', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'eend, aardappel, mineralen, bietenpulp, cellulose, inuline.', true, now(), 'sha256:e4a4c44a58f595d75da5ed2771ff3335b17b20286149d80e61cf0f5375a91639', null from p;

-- Trovet — Mobility & Geriatrics (3 / 12,5 kg)
-- bron: https://www.trovet.com/nl/product/mobility-geriatrics-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Mobility & Geriatrics', 'kibble', '3 / 12,5 kg', null, 'https://www.trovet.com/nl/product/mobility-geriatrics-hond/', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, maïs, gerst, visolie, gedehydrateerd gevogelte-eiwit, rijstzemelen, lijnzaad, gehydrolyseerd collageen, bietenpulp, gist (saccharomyces cerevisiae), gevogeltehydrolysaat, cellulose, minerale bestanddelen, methylsulfonylmethaan (MSM), glucosamine, lijnzaadolie, chondroïtinesulfaat, boswellia-extract, groenlipmosselextract, groene thee, moerbei, duivelsklauw, druivenpitten.', true, now(), 'sha256:ff0de36eb3d2a9dcdf5ff327ca6f1d0e0ad524c541d6075f99ad2ef9eb3e4e90', null from p;

-- Trovet — Recovery Liquid (190 / 400 g)
-- bron: https://www.trovet.com/nl/product/recovery-liquid-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Recovery Liquid', 'wet', '190 / 400 g', null, 'https://www.trovet.com/nl/product/recovery-liquid-hond/', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip, mineralen, visolie, weipoeder, ei (gedroogd), magere melkpoeder, fructo-oligosacchariden (FOS), gist, rozemarijn.', true, now(), 'sha256:0470685470a98e1f916250197af0c7745a7307353ae32679cdc782b36a43252e', null from p;

-- Trovet — Regulator (3 / 12,5 kg)
-- bron: https://www.trovet.com/nl/product/regulator-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Regulator', 'kibble', '3 / 12,5 kg', null, 'https://www.trovet.com/nl/product/regulator-hond/', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, rijstzemelen, hydrolysaat van vis, bietenpulp, vet van gevogelte, aardappeleiwit, visolie, rijst eiwit, soja-eiwithydrolysaat, mineralen, hydrolysaat van gevogelte, bernagie olie, lijnzaadolie.', true, now(), 'sha256:ff4b0ee1ed2e6dc7a13a83cc8fc1aca7641a37f09442c2c9f9f6403acaba7eae', null from p;

-- Trovet — Renal & Oxalate (3 / 12,5 kg)
-- bron: https://www.trovet.com/nl/product/renal-oxalate-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Renal & Oxalate', 'kibble', '3 / 12,5 kg', null, 'https://www.trovet.com/nl/product/renal-oxalate-hond/', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'tarwe, maïs, varkensvet, gedehydrateerd gevogelte-eiwit, gevogeltehydrolysaat, rijst, rijsteiwit., bietenpulp, visolie, calciumcarbonaat 0,9% (urine-alkaliserende stof), minerale bestanddelen.', true, now(), 'sha256:9abd2068170196761742fae7b47dd48cc611055211524cbeae2e3bf52c15611c', null from p;

-- Trovet — Renal & Oxalate (400 g)
-- bron: https://www.trovet.com/nl/product/renal-oxalate-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Renal & Oxalate', 'wet', '400 g', null, 'https://www.trovet.com/nl/product/renal-oxalate-hond/', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'varken, rijst, kip, zonnebloemolie, zalm, dextrose, vitaminen en mineralen, bietenpulp, cellulose.', true, now(), 'sha256:e8b91e86d710dc7b2a1eccba952e0fd458b4040acb2ce45f51b2516ea9c3a5ec', null from p;

-- Trovet — Urinary Struvite (3 / 12,5 kg)
-- bron: https://www.trovet.com/nl/product/urinary-struvite-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Urinary Struvite', 'kibble', '3 / 12,5 kg', null, 'https://www.trovet.com/nl/product/urinary-struvite-hond/', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'tarwe, reuzel, maïsgluten, pluimveemeel, rijst, gevogeltelever (hydrolisaat), ammoniumchloride, calciumchloride, mineralen en sporenelementen, gist, natriumchloride, inuline.', true, now(), 'sha256:6effaa8e681d0e817cb132282da0e9487e62eed00be11920391e9fd744dd3e44', null from p;

-- Trovet — Urinary Struvite (400 g)
-- bron: https://www.trovet.com/nl/product/urinary-struvite-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Urinary Struvite', 'wet', '400 g', null, 'https://www.trovet.com/nl/product/urinary-struvite-hond/', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'varken, rijst, kip, zalm, zonnebloemolie, vitaminen en mineralen, dextrose, cellulose.', true, now(), 'sha256:7db32ae04becf29d7de03279aa5a99cbcd1638de27eb19805a6e8595a90ef28c', null from p;

-- Trovet — Weight & Diabetic (3 / 12,5 kg)
-- bron: https://www.trovet.com/nl/product/weight-diabetic-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Weight & Diabetic', 'kibble', '3 / 12,5 kg', null, 'https://www.trovet.com/nl/product/weight-diabetic-hond/', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydrateerd kippeneiwit, bietenpulp, maïs, tarwe, maïsgluten, tarwe-eiwit, cellulose, kippenhydrolysaat, gedehydrateerd viseiwit, gefermenteerde producten, kippenolie, gist (saccharomyces cerevisiae), minerale bestanddelen.', true, now(), 'sha256:ce42c80f1ec30cc1960d5b8027ae461b4b1e69c8d4eae80739153afb767125fd', null from p;

-- Trovet — Weight & Diabetic (400 g)
-- bron: https://www.trovet.com/nl/product/weight-diabetic-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Weight & Diabetic', 'wet', '400 g', null, 'https://www.trovet.com/nl/product/weight-diabetic-hond/', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'varken, kip, erwt, tarwe, cellulose, wortel, vitaminen en mineralen, bietenpulp.', true, now(), 'sha256:9aab3149a1083c7016c215aaaacc01a27617d38b2bebb44883c92aca0994ae6a', null from p;

-- Trovet — Unique Protein (Horse) (200 / 400 / 800 g)
-- bron: https://www.trovet.com/nl/product/unique-protein-horse-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Unique Protein (Horse)', 'wet', '200 / 400 / 800 g', null, 'https://www.trovet.com/nl/product/unique-protein-horse-hond/', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'paard, zonnebloemolie, olijfolie.', true, now(), 'sha256:7274e26f741649decdacc61eb3484b58834890d3f491cf4cf9154f43c09f746c', null from p;

-- Trovet — Unique Protein (Lamb) (200 / 400 / 800 g)
-- bron: https://www.trovet.com/nl/product/unique-protein-lamb-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Unique Protein (Lamb)', 'wet', '200 / 400 / 800 g', null, 'https://www.trovet.com/nl/product/unique-protein-lamb-hond/', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'lam, zonnebloemolie, olijfolie.', true, now(), 'sha256:a5b83344eb50060ea109dcad41c774b778308c7cd4c25a4301f4cd6304fc0078', null from p;

-- Trovet — Unique Protein (Rabbit) (200 / 400 / 800 g)
-- bron: https://www.trovet.com/nl/product/unique-protein-rabbit-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Unique Protein (Rabbit)', 'wet', '200 / 400 / 800 g', null, 'https://www.trovet.com/nl/product/unique-protein-rabbit-hond/', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'konijn, zonnebloemolie, olijfolie.', true, now(), 'sha256:78eaf17f8afa336930bd91369154f47f5b0ad9a4169e60cbab3dc122c7fc0ee6', null from p;

-- Trovet — Unique Protein (Venison) (200 / 400 / 800 g)
-- bron: https://www.trovet.com/nl/product/unique-protein-venison-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Unique Protein (Venison)', 'wet', '200 / 400 / 800 g', null, 'https://www.trovet.com/nl/product/unique-protein-venison-hond/', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'hert, zonnebloemolie, olijfolie.', true, now(), 'sha256:810f7dcc8ed9a9a0f604e20906e75510d6c65b63265172406be507b6486993ce', null from p;

-- Trovet — Puppy (3 / 10 kg)
-- bron: https://www.trovet.com/nl/product/puppy-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Puppy', 'kibble', '3 / 10 kg', null, 'https://www.trovet.com/nl/product/puppy-hond/', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïs, rijst, vetkanen, pluimveemeel, kippenvet, bietenpulp, gevogeltelever (hydrolisaat), johannesbrood, cellulose, visolie, fructo-oligosacchariden (FOS), gist, vitaminen en sporenelementen, lecithine, cholinechloride, ei, natriumchloride, L-carnitine, chondroïtinesulfaat, glucosamine.', true, now(), 'sha256:5776fec772a2226003a2200af983da2c681bcd55264734d12b24d5d9e85b8382', null from p;

-- Trovet — Puppy (400 g)
-- bron: https://www.trovet.com/nl/product/puppy-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Puppy', 'wet', '400 g', null, 'https://www.trovet.com/nl/product/puppy-hond/', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip, vitaminen en sporenelementen.', true, now(), 'sha256:b957085c0c210f7c842c73c650e8fe036062092c83bcf9ff627605afd33efd1d', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
