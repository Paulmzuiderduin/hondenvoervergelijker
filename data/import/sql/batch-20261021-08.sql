-- Automatisch overgenomen etiketten, batch 8 van 2026-10-21 (40 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- DARF — Houdbaar worst Zalm (200 / 800 g)
-- bron: https://darf.nl/product/darf-houdbare-worst-zalm-200g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Houdbaar worst Zalm', 'wet', '200 / 800 g', '8721551952076', 'https://darf.nl/product/darf-houdbare-worst-zalm-200g', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ingrediënten: 97% Zalm 3% Tapioca Vitamine en mineralenpreparaat, Bevattende: Vitamine A 4.400 IU/kg, Vitamine D 300 IU/kg, Vitamine E 48 mg/kg.', true, now(), 'sha256:76a89ad1f65c69a5cfaa78feaa8dde8db065871d99cdc1d0aa543efb8b8b4b9c', null from p;

-- DARF — Houdbaar worst Kip (200 g)
-- bron: https://darf.nl/product/houdbare-worst-kip-200g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Houdbaar worst Kip', 'wet', '200 g', '8721551951994', 'https://darf.nl/product/houdbare-worst-kip-200g', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ingrediënten: – 98% Kip: – 2% Tapioca: – Toegevoegd als Vitamine en Mineralen: – Vitamine A 4.400 IU/kg – Vitamine D3 300 IU/kg – Vitamine E 48 mg/kg', true, now(), 'sha256:c4142fe1ad651e2264d15d5c257f87f29ff2c85546438d24612e6f35bf1528cc', null from p;

-- DARF — Houdbaar worst Kip (800 g)
-- bron: https://darf.nl/product/product-darf-houdbare-worst-kip-800-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Houdbaar worst Kip', 'wet', '800 g', '8721551951932', 'https://darf.nl/product/product-darf-houdbare-worst-kip-800-gram', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ingrediënten: 95% Kip, 3% Tapioca, 2%VItamine en mineralenpreparaat, Bevattende: Vitamine A 4.400 IU/kg, Vitamine D 300 IU/kg, Vitamine E 48 mg/kg.', true, now(), 'sha256:b032974e39fc561a8afeb51834e2f6155033f5e201f8e10df8bb95f58d5b3392', null from p;

-- DARF — Houdbaar worst Paard (800 g)
-- bron: https://darf.nl/product/product-darf-houdbare-worst-paard-800-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Houdbaar worst Paard', 'wet', '800 g', '8721551951963', 'https://darf.nl/product/product-darf-houdbare-worst-paard-800-gram', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '95% Paard 3% Tapioca 2% vitamine en mineralen VItamine en mineralenpreparaat, Bevattende: Vitamine A 4.400 IU/kg, Vitamine D 300 IU/kg, Vitamine E 48 mg/kg.', true, now(), 'sha256:743adcb11c895d20d98a98806b9d8a2638257b2266d24cbaf7ebddd461d7c1dd', null from p;

-- DARF — Houdbaar worst Wild (800 g)
-- bron: https://darf.nl/product/product-darf-houdbare-worst-wild-800-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Houdbaar worst Wild', 'wet', '800 g', '8721551951970', 'https://darf.nl/product/product-darf-houdbare-worst-wild-800-gram', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '97% Hert 3% Tapioca Vitamine en mineralenpreparaat, Bevattende: Vitamine A 4.400 IU/kg, Vitamine D 300 IU/kg, Vitamine E 48 mg/kg.', true, now(), 'sha256:be2b88ca3f2aadf79015504dd9e0ef521a78205b41dcaecf211a2218dd9eaa86', null from p;

-- Pedigree — Droog Adult Gevogelte en Groenten (2,6 / 12 kg)
-- bron: https://www.pedigree.nl/onze-producten/droogvoer/pedigree-adult-hondenbrokken-kip-en-groenten-hondenvoer-10-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Droog Adult Gevogelte en Groenten', 'kibble', '2,6 / 12 kg', null, 'https://www.pedigree.nl/onze-producten/droogvoer/pedigree-adult-hondenbrokken-kip-en-groenten-hondenvoer-10-kg', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Granen*, vlees en dierlijke bijproducten (waarvan gevogelte 4%), oliën en vetten, plantaardige bijproducten (waarvan gedroogde bietenpulp 3%*), mineralen, groenten* (waarvan gedroogde worteltjes- en erwtjesmix 0.7%, wat gelijk staat aan worteltjes- en erwtjesmix 4%), gist (waarvan brouwergist 0.4%), *Natuurlijke ingrediënten.', true, now(), 'sha256:faf93c7ddb9ac855f0a661ccada0e829878b4a23748e67e216b4e973f630a137', null from p;

-- Pedigree — Droog Adult Rund en Groenten (2,6 / 12 kg)
-- bron: https://www.pedigree.nl/onze-producten/droogvoer/pedigree-adult-hondenbrokken-rund-en-groenten-hondenvoer-10-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Droog Adult Rund en Groenten', 'kibble', '2,6 / 12 kg', null, 'https://www.pedigree.nl/onze-producten/droogvoer/pedigree-adult-hondenbrokken-rund-en-groenten-hondenvoer-10-kg', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Granen*, vlees en dierlijke bijproducten (waarvan rund 4%), oliën en vetten, plantaardige bijproducten (waarvan gedroogde bietenpulp 3%*), mineralen, groenten* (waarvan gedroogde worteltjes- en erwtjesmix 0.7%, wat gelijk staat aan worteltjes- en erwtjesmix 4%), gist (waarvan brouwergist 0.4%), *Natuurlijke ingrediënten.', true, now(), 'sha256:e2ab8dc116419321d5e877d95a45d3a926cc8b5a8f782219803b1c8fecf322db', null from p;

-- Pedigree — Droog Adult Mini Gevogelte en Groenten (0,5 / 1,4 kg)
-- bron: https://www.pedigree.nl/onze-producten/droogvoer/pedigree-adult-mini-hondenbrokken-kip-en-groenten-hondenvoer-500-g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Droog Adult Mini Gevogelte en Groenten', 'kibble', '0,5 / 1,4 kg', null, 'https://www.pedigree.nl/onze-producten/droogvoer/pedigree-adult-mini-hondenbrokken-kip-en-groenten-hondenvoer-500-g', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Granen*, vlees en dierlijke bijproducten (waarvan gevogelte 4%), oliën en vetten, plantaardige bijproducten (waarvan gedroogde bietenpulp 3%*), mineralen (waarvan natriumtripolyfosfaat 0.4%), groenten* (waarvan gedroogde worteltjes- en erwtjesmix 0.7%, wat gelijk staat aan worteltjes- en erwtjesmix 4%), gist (waarvan brouwergist 0.4%). *Natuurlijke ingrediënten.', true, now(), 'sha256:aa50f5aee34b28f8db3983bd96e61c7d4c458ed1977ce6bf3151e21ed1fd3bca', null from p;

-- Pedigree — Droog Adult Mini Rund en Groenten (1,4 / 12 kg)
-- bron: https://www.pedigree.nl/onze-producten/droogvoer/pedigree-adult-maxi-hondenbrokken-rund-en-rijst-hondenvoer-15-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Droog Adult Mini Rund en Groenten', 'kibble', '1,4 / 12 kg', null, 'https://www.pedigree.nl/onze-producten/droogvoer/pedigree-adult-maxi-hondenbrokken-rund-en-rijst-hondenvoer-15-kg', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Granen*, vlees en dierlijke bijproducten (waarvan rund 4%), oliën en vetten, plantaardige bijproducten (waarvan gedroogde bietenpulp 3%*), mineralen (waarvan natriumtripolyfosfaat 0.4%), groenten* (waarvan gedroogde worteltjes- en erwtjesmix 0.7%, wat gelijk staat aan worteltjes- en erwtjesmix 4%), gist (waarvan brouwergist 0.4%), *Natuurlijke ingrediënten.', true, now(), 'sha256:7540836d41262a6097e9910a3688c0385b315c1064fb0d648df0f510318cfab2', null from p;

-- Pedigree — Droog Junior Gevogelte en Groenten (2,6 / 12 kg)
-- bron: https://www.pedigree.nl/onze-producten/droogvoer/pedigree-junior-hondenbrokken-kip-en-rijst-hondenvoer-10-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Droog Junior Gevogelte en Groenten', 'kibble', '2,6 / 12 kg', null, 'https://www.pedigree.nl/onze-producten/droogvoer/pedigree-junior-hondenbrokken-kip-en-rijst-hondenvoer-10-kg', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Granen**, vlees en dierlijke bijproducten (waarvan gevogelte 4%), oliën en vetten, plantaardige bijproducten (waarvan gedroogde bietenpulp 3%**), mineralen, groenten** (waarvan gedroogde worteltjes- en erwtjesmix 0.7%, wat gelijk staat aan worteltjes- en erwtjesmix 4%), gist (waarvan brouwergist 0.4%), **Natuurlijke ingrediënten.', true, now(), 'sha256:6699081daa7823212b8287024f47a6af7542d6ca2101d18d61506c6c0a4c6af8', null from p;

-- Pedigree — Droog Adult Vis en Groenten (12 kg)
-- bron: https://www.pedigree.nl/products/droogvoer/pedigree-droog-adult-vis-en-groenten-12kg-volwassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Droog Adult Vis en Groenten', 'kibble', '12 kg', null, 'https://www.pedigree.nl/products/droogvoer/pedigree-droog-adult-vis-en-groenten-12kg-volwassen', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Granen* vlees en dierlijke bijproducten oliën en vetten plantaardige bijproducten (waarvan gedroogde bietenpulp 3%*) vis- en bijproducten (waarvan vis 4%), mineralen, groenten* (waarvan gedroogde worteltjes- en erwtjesmix 0.7%, wat gelijk staat aan worteltjes- en erwtjesmix 4%), gist (waarvan brouwergist 0.4%), *Natuurlijke ingrediënten.', true, now(), 'sha256:84c92784ecc566411572abc7285ca26c2c1ac7bba2c8c07495cd050fca7520af', null from p;

-- Pedigree — Kip & Lam in Gelei – Kip (4 x 100 g)
-- bron: https://www.pedigree.nl/onze-producten/natvoer/pedigree-kip-and-lam-in-gelei
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Kip & Lam in Gelei – Kip', 'wet', '4 x 100 g', null, 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-kip-and-lam-in-gelei', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten (40%, natuurlijk^ 93%; waarvan kip 14% en varkenslever 9% in de brokken**), plantaardige eiwitextracten, granen, oliën en vetten, mineralen (0.6%), plantaardige bijproducten^ (waarvan gedroogde bietenpulp 0.5%). ^natuurlijke ingrediënten. ** brokken meestal 48% van het product.', true, now(), 'sha256:7ab78cf97a667de2dd29ce00bfabb4e22de61b56f914c1e739f48dc88b9aa93e', null from p;

-- Pedigree — Kip & Lam in Gelei – Lam- en levermix (4 x 100 g)
-- bron: https://www.pedigree.nl/onze-producten/natvoer/pedigree-kip-and-lam-in-gelei
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Kip & Lam in Gelei – Lam- en levermix', 'wet', '4 x 100 g', null, 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-kip-and-lam-in-gelei', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten (40%, natuurlijk^ 93%; waarvan een mix van lam 6% en varkenslever 9% in de brokken**), plantaardige, eiwitextracten, granen, oliën en vetten, mineralen (0.6%), plantaardige bijproducten^ (waarvan gedroogde bietenpulp 0.5%). ^natuurlijke ingrediënten. ** brokken meestal 48% van het product.', true, now(), 'sha256:f4493586e17234a839ddeaa3c0b124e3770a9ce577226f84350fb51a2327938a', null from p;

-- Pedigree — Kip & Rund in Saus – Kip (4 x 100 g)
-- bron: https://www.pedigree.nl/onze-producten/natvoer/pedigree-kip-and-rund-in-saus
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Kip & Rund in Saus – Kip', 'wet', '4 x 100 g', null, 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-kip-and-rund-in-saus', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten (35%, natuurlijk* 93%; waarvan kip 14% en varkenslever 9% in de brokken**), granen, groenten (waarvan gedroogde worteltjes- en erwtjesmix 0.8%, wat gelijk staat aan worteltjes- en erwtjesmix 4%), plantaardige eiwitextracten, plantaardige bijproducten* (waarvan gedroogde bietenpulp 0.8%), oliën en vetten, mineralen (0.6%). *natuurlijke ingrediënten. **brokken meestal 45% van het product.', true, now(), 'sha256:fdcbbc6d8e8f7c521db7e851a395e7a8c1599b4471fa85b2cff0d6f139033c3f', null from p;

-- Pedigree — Kip & Rund in Saus – Rund- en levermix (4 x 100 g)
-- bron: https://www.pedigree.nl/onze-producten/natvoer/pedigree-kip-and-rund-in-saus
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Kip & Rund in Saus – Rund- en levermix', 'wet', '4 x 100 g', null, 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-kip-and-rund-in-saus', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten (35%, natuurlijk* 93%, waarvan een mix van rund 6% en varkenslever 9% in de brokken**), granen, groenten (waarvan gedroogde worteltjes- en erwtjesmix 0.8%, wat gelijk staat aan worteltjes- en erwtjesmix 4%), plantaardige eiwitextracten, plantaardige bijproducten* (waarvan gedroogde bietenpulp 0.8%), oliën en vetten, mineralen (0.6%). *natuurlijke ingrediënten. **brokken meestal 45% van het product.', true, now(), 'sha256:55267a7b673d80ab18df49c2e46738f3d5df3a2149895a49de7b95b9e79161ea', null from p;

-- Pedigree — Maaltijdzakjes Adult Gevogelte in Saus – Kip (12 x 100 g)
-- bron: https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-gevogelte-in-saus
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Maaltijdzakjes Adult Gevogelte in Saus – Kip', 'wet', '12 x 100 g', null, 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-gevogelte-in-saus', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten (35%, natuurlijk* 93%; waarvan kip 14% en varkenslever 9% in de brokken**), granen, groenten (waarvan gedroogde worteltjes- en erwtjesmix 0.8%, wat gelijk staat aan worteltjes- en erwtjesmix 4%), plantaardige eiwitextracten, plantaardige bijproducten* (waarvan gedroogde bietenpulp 0.8%), oliën en vetten, mineralen (0.6%). *Natuurlijke ingrediënten. **Brokken meestal 45% van het product. "', true, now(), 'sha256:273a8d5e1f4cde938f97db67f297da300e7a2735b63b81230eb552c6d816deab', null from p;

-- Pedigree — Maaltijdzakjes Adult Gevogelte in Saus – Kalkoen (12 x 100 g)
-- bron: https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-gevogelte-in-saus
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Maaltijdzakjes Adult Gevogelte in Saus – Kalkoen', 'wet', '12 x 100 g', null, 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-gevogelte-in-saus', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten (35%, natuurlijk* 93%; waarvan kalkoen 14% en varkenslever 9% in de brokken**), granen, groenten (waarvan gedroogde worteltjes 0.6%, wat gelijk staat aan worteltjes 4%), plantaardige eiwitextracten, plantaardige bijproducten* (waarvan gedroogde bietenpulp 0.8%), oliën en vetten, mineralen (0.6%). *Natuurlijke ingrediënten. **Brokken meestal 45% van het product. "', true, now(), 'sha256:d288694796b075f6a65069f73922d10ba70a972c257ad8dd2efd6cb490f07968', null from p;

-- Pedigree — Maaltijdzakjes Adult Gevogelte in Saus – Gevogelte (12 x 100 g)
-- bron: https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-gevogelte-in-saus
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Maaltijdzakjes Adult Gevogelte in Saus – Gevogelte', 'wet', '12 x 100 g', null, 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-gevogelte-in-saus', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten (35%, natuurlijk* 93%; waarvan gevogelte 14% en varkenslever 9% in de brokken**), granen, plantaardige eiwitextracten, plantaardige bijproducten* (waarvan gedroogde bietenpulp 0.8%), oliën en vetten, mineralen (0.6%). *Natuurlijke ingrediënten. **Brokken meestal 45% van het product. "', true, now(), 'sha256:6d34d76d488f26b82db6a097371ec94abc3554ad893b1e1032e8e74d4b86c1ae', null from p;

-- Pedigree — Maaltijdzakjes Adult Gevogelte in Saus – Eend (12 x 100 g)
-- bron: https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-gevogelte-in-saus
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Maaltijdzakjes Adult Gevogelte in Saus – Eend', 'wet', '12 x 100 g', null, 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-gevogelte-in-saus', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten (35%, natuurlijk* 93%; waarvan eend 14% en varkenslever 9% in de brokken**), granen, plantaardige eiwitextracten, plantaardige bijproducten* (waarvan gedroogde bietenpulp 0.8%), oliën en vetten, mineralen (0.6%). *Natuurlijke ingrediënten. **Brokken meestal 45% van het product. "', true, now(), 'sha256:fb1343e7a54ed05b2bc2883e232abd72da6a93aa44479270424ae50e567bb109', null from p;

-- Pedigree — Maaltijdzakjes Adult Mix Selectie in Gelei – Rund- en levermix (12 x 100 g / 40 x 100 g)
-- bron: https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-mix-selectie-in-gelei-12x100gr
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Maaltijdzakjes Adult Mix Selectie in Gelei – Rund- en levermix', 'wet', '12 x 100 g / 40 x 100 g', null, 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-mix-selectie-in-gelei-12x100gr', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten (40%, natuurlijk* 93%; waarvan een mix van rund 6% en varkenslever 9% in de brokken**), plantaardige eiwitextracten, granen, oliën en vetten, mineralen (0.6%), plantaardige bijproducten* (waarvan gedroogde bietenpulp 0.5%). *natuurlijke ingrediënten. **brokken meestal 48% van het product.', true, now(), 'sha256:3a2f871c0e731c697fdf4f12e671c70671b3c82225d9e212a2960b4873382ea2', null from p;

-- Pedigree — Maaltijdzakjes Adult Mix Selectie in Gelei – Kip (12 x 100 g / 40 x 100 g)
-- bron: https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-mix-selectie-in-gelei-12x100gr
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Maaltijdzakjes Adult Mix Selectie in Gelei – Kip', 'wet', '12 x 100 g / 40 x 100 g', null, 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-mix-selectie-in-gelei-12x100gr', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten (40%, natuurlijk* 93%; waarvan kip 14% en varkenslever 9% in de brokken**), plantaardige eiwitextracten, granen, oliën en vetten, mineralen (0.6%), plantaardige bijproducten* (waarvan gedroogde bietenpulp 0.5%). *natuurlijke ingrediënten. **brokken meestal 48% van het product.', true, now(), 'sha256:8646b43b1a4973536b2462e2662ddd6078d5a5900c9893d3ce2f5104c6f9e2ad', null from p;

-- Pedigree — Maaltijdzakjes Adult Mix Selectie in Gelei – Lam- en levermix (12 x 100 g / 40 x 100 g)
-- bron: https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-mix-selectie-in-gelei-12x100gr
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Maaltijdzakjes Adult Mix Selectie in Gelei – Lam- en levermix', 'wet', '12 x 100 g / 40 x 100 g', null, 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-mix-selectie-in-gelei-12x100gr', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten (40%, natuurlijk* 93%; waarvan een mix van lam 6% en varkenslever 9% in de brokken**), plantaardige eiwitextracten, granen, oliën en vetten, mineralen (0.6%), plantaardige bijproducten* (waarvan gedroogde bietenpulp 0.5%). *natuurlijke ingrediënten. **brokken meestal 48% van het product.', true, now(), 'sha256:03a4109b5b76be8efc3b2ef22f17c5e6fb24a1267927c3700b9dff7e2a7f6e28', null from p;

-- Pedigree — Maaltijdzakjes Adult Mix Selectie in Gelei – Gevogelte (12 x 100 g / 40 x 100 g)
-- bron: https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-mix-selectie-in-gelei-12x100gr
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Maaltijdzakjes Adult Mix Selectie in Gelei – Gevogelte', 'wet', '12 x 100 g / 40 x 100 g', null, 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-mix-selectie-in-gelei-12x100gr', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten (40%, natuurlijk* 93%; waarvan gevogelte 14% en varkenslever 9% in de brokken**), plantaardige eiwitextracten, granen, oliën en vetten, mineralen (0.6%), plantaardige bijproducten* (waarvan gedroogde bietenpulp 0.5%). *natuurlijke ingrediënten. **brokken meestal 48% van het product.', true, now(), 'sha256:b96119c06b03ddf965a992deed7f4813e33cfffbb0a42fdfff19e06eab958936', null from p;

-- Pedigree — Maaltijdzakjes Adult Mix Selectie in Saus – Kip (12 x 100 g / 80 x 100 g)
-- bron: https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-mix-selectie-in-saus-80x100g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Maaltijdzakjes Adult Mix Selectie in Saus – Kip', 'wet', '12 x 100 g / 80 x 100 g', null, 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-mix-selectie-in-saus-80x100g', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten (35%, natuurlijk* 93%; waarvan kip 14% en varkenslever 9% in de brokken**), granen, groenten (waarvan gedroogde worteltjes- en erwtjesmix 0.8%, wat gelijk staat an worteltjes- en erwtjesmix 4%), plantaardige eiwitextracten, plantaardige bijproducten* (waarvan gedroogde bietenpulp 0.8%), oliën en vetten, mineralen (0.6%). *natuurlijke ingrediënten. **brokken meestal 45% van het product.', true, now(), 'sha256:e7547161cf72b2f41831379d37e899506ee84bf14540001eb7a28d0a3ff351ca', null from p;

-- Pedigree — Maaltijdzakjes Adult Mix Selectie in Saus – Rund- en levermix (12 x 100 g / 80 x 100 g)
-- bron: https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-mix-selectie-in-saus-80x100g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Maaltijdzakjes Adult Mix Selectie in Saus – Rund- en levermix', 'wet', '12 x 100 g / 80 x 100 g', null, 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-mix-selectie-in-saus-80x100g', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten (35%, natuurlijk* 93%; waarvan een mix van rund 6% en varkenslever 9% in de brokken**), granen, groenten (waarvan gedroogde worteltjes- en erwtjesmix 0.8%, wat gelijk staat aan worteltjes- en erwtjesmix 4%), plantaardige eiwitextracten, plantaardige bijproducten* (waarvan gedroogde bietenpulp 0.8%), oliën en vetten, mineralen (0.6%). *natuurlijke ingrediënten. **brokken meestal 45% van het product.', true, now(), 'sha256:1589b6d45a886f5bce926cb76871142c6056d09f2a69324b543987c291d7d9c7', null from p;

-- Pedigree — Maaltijdzakjes Adult Mix Selectie in Saus – Kalkoen (12 x 100 g / 80 x 100 g)
-- bron: https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-mix-selectie-in-saus-80x100g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Maaltijdzakjes Adult Mix Selectie in Saus – Kalkoen', 'wet', '12 x 100 g / 80 x 100 g', null, 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-mix-selectie-in-saus-80x100g', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten (35%, natuurlijk* 93%; waarvan kalkoen 14% en varkenslever 9% in de brokken**), granen, groenten (waarvan gedroogde worteltjes 0.6%, wat gelijk staat aan worteltjes 4%), plantaardige eiwitextracten, plantaardige bijproducten* (waarvan gedroogde bietenpulp 0.8%), oliën en vetten, mineralen (0.6%). *natuurlijke ingrediënten. **brokken meestal 45% van het product.', true, now(), 'sha256:8658de2012da5910dfe719ba4640b06de5c14d77543d226f31fbf2c38bfb1389', null from p;

-- Pedigree — Maaltijdzakjes Adult Mix Selectie in Saus – Rund- en lammix (12 x 100 g / 80 x 100 g)
-- bron: https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-mix-selectie-in-saus-80x100g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Maaltijdzakjes Adult Mix Selectie in Saus – Rund- en lammix', 'wet', '12 x 100 g / 80 x 100 g', null, 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-adult-mix-selectie-in-saus-80x100g', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten (35%, natuurlijk* 93%; waarvan een mix van rund 7%, lam 7% en varkenslever 9% in de brokken**), granen, groenten (waarvan gedroogde worteltjes 0.6%, wat gelijk staat aan worteltjes 4%), plantaardige eiwitextracten, plantaardige bijproducten* (waarvan gedroogde bietenpulp 0.8%), oliën en vetten, mineralen (0.6%). *natuurlijke ingrediënten. **brokken meestal 45% van het product.', true, now(), 'sha256:f3122736570fa45cbff41d898203df1765ed6a917908862a2d3b307f7856bd78', null from p;

-- Pedigree — Maaltijdzakjes Junior Mix Selectie in Gelei – Kip (12 x 100 g)
-- bron: https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-junior-mix-selectie-in-gelei
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Maaltijdzakjes Junior Mix Selectie in Gelei – Kip', 'wet', '12 x 100 g', null, 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-junior-mix-selectie-in-gelei', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten (44%, natuurlijk* 95%; waarvan kip 14% en varkenslever 8% in de brokken**), mineralen (1.4%), granen (waarvan rijstemeel 1.1%, wat gelijk staat aan gekookte rijst 4%), vis- en bijproducten*, oliën en vetten, plantaardige bijproducten*, plantaardige eiwitextracten. *natuurlijke ingrediënten. **brokken meestal 54% van het product.', true, now(), 'sha256:912c461f0d617c30435a14e8ce6ad04b37600049b58d7a7700fb27510b4a1e37', null from p;

-- Pedigree — Maaltijdzakjes Junior Mix Selectie in Gelei – Lam- en levermix (12 x 100 g)
-- bron: https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-junior-mix-selectie-in-gelei
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Maaltijdzakjes Junior Mix Selectie in Gelei – Lam- en levermix', 'wet', '12 x 100 g', null, 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-junior-mix-selectie-in-gelei', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten (44%, natuurlijk* 95%; waarvan een mix van lam 7% en varkenslever 8% in de brokken**), mineralen (1.4%), granen (waarvan rijstemeel 1.1%, wat gelijk staat aan gekookte rijst 4%), vis- en bijproducten*, oliën en vetten, plantaardige bijproducten*, plantaardige eiwitextracten. *natuurlijke ingrediënten. **brokken meestal 54% van het product.', true, now(), 'sha256:4ad1d6b379ace0c260e6e3065e19b793a0d4675a9fdf50b22080c079d2fa5909', null from p;

-- Pedigree — Maaltijdzakjes Junior Mix Selectie in Gelei – Gevogelte (12 x 100 g)
-- bron: https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-junior-mix-selectie-in-gelei
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Maaltijdzakjes Junior Mix Selectie in Gelei – Gevogelte', 'wet', '12 x 100 g', null, 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-junior-mix-selectie-in-gelei', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten (44%, natuurlijk* 95%; waarvan gevogelte 14% en varkenslever 8% in de brokken**), mineralen (1.4%), granen (waarvan rijstemeel 1.1%, wat gelijk staat aan gekookte rijst 4%), vis- en bijproducten*, oliën en vetten, plantaardige bijproducten*, plantaardige eiwitextracten. *natuurlijke ingrediënten. **brokken meestal 54% van het product.', true, now(), 'sha256:bebdd8a95e51a117ea168736e667e8dad22a99abad10842d3b0573e64229cd78', null from p;

-- Pedigree — Maaltijdzakjes Junior Mix Selectie in Gelei – Rund- en levermix (12 x 100 g)
-- bron: https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-junior-mix-selectie-in-gelei
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Maaltijdzakjes Junior Mix Selectie in Gelei – Rund- en levermix', 'wet', '12 x 100 g', null, 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-junior-mix-selectie-in-gelei', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten (44%, natuurlijk* 95%; waarvan rund 7% en varkenslever 8% in de brokken**), mineralen (1.4%), granen (waarvan rijstemeel 1.1%, wat gelijk staat aan gekookte rijst 4%), vis- en bijproducten*, oliën en vetten, plantaardige bijproducten*, plantaardige eiwitextracten. *natuurlijke ingrediënten. **brokken meestal 54% van het product.', true, now(), 'sha256:94e0897ea35ba23d0572311464f1b909847f2e1782435273590ddaedbca20b77', null from p;

-- Pedigree — Maaltijdzakjes Senior Mix Selectie in Gelei – Rund- en levermix (12 x 100 g)
-- bron: https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-senior-mix-selectie-in-gelei
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Maaltijdzakjes Senior Mix Selectie in Gelei – Rund- en levermix', 'wet', '12 x 100 g', null, 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-senior-mix-selectie-in-gelei', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten (40%, natuurlijk^ 93%; waarvan een mix van rund 6% en varkenslever 9% in de brokken**), plantaardige eiwitextracten, granen, oliën en vetten, mineralen (0.6%), plantaardige bijproducten^ (waarvan gedroogde bietenpulp 0.5%). ^natuurlijke ingrediënten. **brokken meestal 48% van het product.', true, now(), 'sha256:d31f232b957e3f0a6ffef343e6c0d3ec636017168914f1f811bcbc5e3c67b861', null from p;

-- Pedigree — Maaltijdzakjes Senior Mix Selectie in Gelei – Kip (12 x 100 g)
-- bron: https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-senior-mix-selectie-in-gelei
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Maaltijdzakjes Senior Mix Selectie in Gelei – Kip', 'wet', '12 x 100 g', null, 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-senior-mix-selectie-in-gelei', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten (40%, natuurlijk^ 93%; waarvan kip 14% en varkenslever 9% in de brokken**), plantaardige eiwitextracten, granen, oliën en vetten, mineralen (0.6%), plantaardige bijproducten^ (waarvan gedroogde bietenpulp 0.5%). ^natuurlijke ingrediënten. **brokken meestal 48% van het product.', true, now(), 'sha256:cbe7a3326e3e43f2875092778dc925384a35f935a6561e855d999fba48fe1a1d', null from p;

-- Pedigree — Maaltijdzakjes Senior Mix Selectie in Gelei – Lam- en levermix (12 x 100 g)
-- bron: https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-senior-mix-selectie-in-gelei
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Maaltijdzakjes Senior Mix Selectie in Gelei – Lam- en levermix', 'wet', '12 x 100 g', null, 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-senior-mix-selectie-in-gelei', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten (40%, natuurlijk^ 93%; waarvan een mix van lam 6% en varkenslever 9% in de brokken**), plantaardige eiwitextracten, granen, oliën en vetten, mineralen (0.6%), plantaardige bijproducten^ (waarvan gedroogde bietenpulp 0.5%). ^natuurlijke ingrediënten. **brokken meestal 48% van het product.', true, now(), 'sha256:b0635ce59bf1b25c01a6852046d108a3966a3c9ba1b002eab68c6aac356048c9', null from p;

-- Pedigree — Maaltijdzakjes Senior Mix Selectie in Gelei – Gevogelte (12 x 100 g)
-- bron: https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-senior-mix-selectie-in-gelei
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Maaltijdzakjes Senior Mix Selectie in Gelei – Gevogelte', 'wet', '12 x 100 g', null, 'https://www.pedigree.nl/onze-producten/natvoer/pedigree-maaltijdzakjes-senior-mix-selectie-in-gelei', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten (40%, natuurlijk^ 93%; waarvan gevogelte 14% en varkenslever 9% in de brokken**), plantaardige eiwitextracten, granen, oliën en vetten, mineralen (0.6%), plantaardige bijproducten^ (waarvan gedroogde bietenpulp 0.5%). ^natuurlijke ingrediënten. **brokken meestal 48% van het product.', true, now(), 'sha256:540f0ad8c7677fafcabbf9e927c72507e6fc91861cb1acca288d78975acf0e97', null from p;

-- Pedigree — Adult Maaltijdzakjes Proteïne+ Selectie in gelei – Rund- en levermix (12 x 85 g)
-- bron: https://www.pedigree.nl/products/natvoer/pedigree-adult-maaltijdzakjes-proteine-selectie-gelei-volwassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Adult Maaltijdzakjes Proteïne+ Selectie in gelei – Rund- en levermix', 'wet', '12 x 85 g', null, 'https://www.pedigree.nl/products/natvoer/pedigree-adult-maaltijdzakjes-proteine-selectie-gelei-volwassen', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (in de brokken* 85%, waarvan rund 4% en varkenslever 8%), plantaardige eiwitextracten, mineralen, plantaardige bijproducten (waarvan gedroogde bietenpulp 0.6%). *93% natuurlijk, brokken meestal 50% van het product.', true, now(), 'sha256:1c024510e82dc33fdeb90f365d918c260d0d2391a729ef3370d5d38da553c670', null from p;

-- Pedigree — Adult Maaltijdzakjes Proteïne+ Selectie in gelei – Kip en rund (12 x 85 g)
-- bron: https://www.pedigree.nl/products/natvoer/pedigree-adult-maaltijdzakjes-proteine-selectie-gelei-volwassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Adult Maaltijdzakjes Proteïne+ Selectie in gelei – Kip en rund', 'wet', '12 x 85 g', null, 'https://www.pedigree.nl/products/natvoer/pedigree-adult-maaltijdzakjes-proteine-selectie-gelei-volwassen', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (in de brokken* 85%, waarvan kip 4%, rund 4% en varkenslever 8%), plantaardige eiwitextracten, mineralen, plantaardige bijproducten (waarvan gedroogde bietenpulp 0.6%). *93% natuurlijk, brokken meestal 50% van het product.', true, now(), 'sha256:428e5d54af44bc5dddf4f568acb556ac1c0a7a95e530c8289cd55ce6496ddae7', null from p;

-- Pedigree — Adult met Rund in Gelei (400 g)
-- bron: https://www.pedigree.nl/products/natvoer/pedigree-adult-met-rund-gelei-400-g-volwassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Adult met Rund in Gelei', 'wet', '400 g', null, 'https://www.pedigree.nl/products/natvoer/pedigree-adult-met-rund-gelei-400-g-volwassen', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten* (waarvan een mix van rund 2% en lever 4%), granen, plantaardige eiwitextracten, mineralen plantaardige bijproducten (waarvan gedroogde bietenpulp 0.5%) *97% natuurlijk.', true, now(), 'sha256:9af592854cd0f3c9fe6c9ae7b99937f5c2b314fe7a81a29f22023f40ce530956', null from p;

-- Pedigree — Maaltijdzakjes Adult Kip & Vis Selectie in Gelei – Kip (4 x 100 g)
-- bron: https://www.pedigree.nl/products/natvoer/pedigree-maaltijdzakjes-adult-kip-vis-selectie-gelei-volwassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Maaltijdzakjes Adult Kip & Vis Selectie in Gelei – Kip', 'wet', '4 x 100 g', null, 'https://www.pedigree.nl/products/natvoer/pedigree-maaltijdzakjes-adult-kip-vis-selectie-gelei-volwassen', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten^ (waarvan kip 14% en varkenslever 9% in de brokken**), granen, plantaardige eiwitextracten, mineralen, plantaardige bijproducten (gedroogde bietenpulp 0.5%), gist (mannan-oligosacchariden 0.1%). ^95% natuurlijk. **Brokken meestal 48% van het product.', true, now(), 'sha256:a276307f2c589d011ac2293949e34ce9335b1e54cd61dfc15c7e1e6701ac0897', null from p;

-- Pedigree — Maaltijdzakjes Adult Kip & Vis Selectie in Gelei – Vis (4 x 100 g)
-- bron: https://www.pedigree.nl/products/natvoer/pedigree-maaltijdzakjes-adult-kip-vis-selectie-gelei-volwassen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Pedigree', 'Maaltijdzakjes Adult Kip & Vis Selectie in Gelei – Vis', 'wet', '4 x 100 g', null, 'https://www.pedigree.nl/products/natvoer/pedigree-maaltijdzakjes-adult-kip-vis-selectie-gelei-volwassen', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten^ (waarvan kip 14% en varkenslever 9% in de brokken**), vis- en bijproducten (witvis 6% in de brokken**), granen, plantaardige eiwitextracten, plantaardige bijproducten (gedroogde bietenpulp 0.5%), gist (mannan-oligosacchariden 0.1%). ^95% natuurlijk. **Brokken meestal 48% van het product.', true, now(), 'sha256:e4e8f72067cd459821374373ed1a4beccc81d4976b7bbbaef310ddf105e0ee33', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
