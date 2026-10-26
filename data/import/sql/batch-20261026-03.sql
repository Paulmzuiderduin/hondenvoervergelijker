-- Automatisch overgenomen etiketten, batch 3 van 2026-10-26 (37 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Purina Pro Plan Veterinary Diets — HA Hypoallergenic Natvoer (400 g)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-hypoallergeen-natvoer
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan Veterinary Diets', 'HA Hypoallergenic Natvoer', 'wet', '400 g', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-hypoallergeen-natvoer', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Maiszetmeel* Gehydrolyseerd soja-eiwit** Mineralen Kokosolie Suiker* Raapzaadolie Cellulose Sojaolie Visolie *Gezuiverde koolhydraatbronnen. **Eiwitbron.', true, now(), 'sha256:994d8ea445ee040698c505b3a618b7ae524d69023845cfb7824dc48e2155ce74', null from p;

-- Purina Pro Plan — All Sizes Adult Light/Sterilised Rijk aan Kip (3 / 14 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-adult-light-sterilised-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'All Sizes Adult Light/Sterilised Rijk aan Kip', 'kibble', '3 / 14 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-adult-light-sterilised-kip', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Kip (15%) Tarwe Gedehydreerd gevogelte-eiwit Maïs Rijst (9%) Gedroogde bietenpulp Sojameel Digest Maïsglutenmeel Maïsgries Tarweglutenmeel Mineralen Visolie Dierlijk vet', true, now(), 'sha256:e9490cb5cc7de0bbcb7ba9f6c8cc839f847777fce9144767c5da8b89daa94ecb', null from p;

-- Purina Pro Plan — All Sizes Adult Protein & Energy Rijk aan Kip (14 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-adult-proteinenergy-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'All Sizes Adult Protein & Energy Rijk aan Kip', 'kibble', '14 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-adult-proteinenergy-kip', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Kip van hoge kwailiteit (20,5%) (inclusief rug en borst) Gedroogd gevogelte-eiwi Tarwe Dierlijke vetten Rijst (8%) Sojameel Maïseiwitmeel Digest Gedroogde bietenpulp Maïs Mineralen Visolie Gedroogd ei', true, now(), 'sha256:83207473d875c363a8f45befb95f99d13f0e427f910c6d16841cb50d1bd1fbba', null from p;

-- Purina Pro Plan — Expert Care Adult 7+ Rijk aan Kip (3 / 10 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-expert-care-senior-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Expert Care Adult 7+ Rijk aan Kip', 'kibble', '3 / 10 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-expert-care-senior-kip', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Kip (16%) Gedehydrateerd gevogelte-eiwit Tarwe Rijst Mais Maiseiwitmeel Fracties van plantaardige olieën (5,5%) Gedroogde bietenpulp Sojameel Mineralen Tarweglutenmeel Digest Dierlijk vet Visolie Gedroogd colostrum (0,1%)', true, now(), 'sha256:3fb67ca762a986a745e90b1915dd4fd5f0f4f3b0c9bda586ac56bd9ddf88e7ce', null from p;

-- Purina Pro Plan — Expert Care Adult Rijk aan Kip (3 / 10 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-expert-care-adult-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Expert Care Adult Rijk aan Kip', 'kibble', '3 / 10 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-expert-care-adult-kip', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Kip (20%) Tarwe Gedehydrateerd gevogelte-eiwit Mais Rijst Dierlijk vet Gedroogde bietenpulp Sojameel Maiseiwitmeel Tarweglutenmeel Digest Mineralen Gedroogd ei Visolie Gedroogd colostrum (0,1%)', true, now(), 'sha256:3cbe9f7964d9549cd5f6ceb8e551997a9a318c421a7027ea113c37a36ca487e1', null from p;

-- Purina Pro Plan — Expert Care Derma Care Rijk aan Zalm (3 / 10 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-expert-care-derma-care-zalm
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Expert Care Derma Care Rijk aan Zalm', 'kibble', '3 / 10 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-expert-care-derma-care-zalm', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Zalm* (17%) Rijst* Maiseiwitmeel* Gedehydrateerd zalmeiwit* Mais* Dierlijk vet sojameel* Maisgrit Gedroogde bietenpulp* Maiszetmeel Digest Cellulose Mineralen Sojabonenolie Gedroogd ei* Visolie Gedroogd colostrum (0,1%) *Bron van eiwitten.', true, now(), 'sha256:6ed4dae9776f2db8fccce9c77e23f2c60100222e9a2003de6c57238391dc82e7', null from p;

-- Purina Pro Plan — Expert Care Light/Sterilised Rijk aan Kip (3 / 10 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-expert-care-light-sterilised-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Expert Care Light/Sterilised Rijk aan Kip', 'kibble', '3 / 10 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-expert-care-light-sterilised-kip', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Kip (15%) Tarwe Gedehydrateerd gevogelte-eiwit Mais Rijst Gedroogde bietenpulp Sojameel Maisgrit Maiseiwitmeel Mineralen Tarweglutenmeel Digest Visolie Dierlijk vet Gedroogd colostrum (0,1%)', true, now(), 'sha256:c65b884352985bbf78d8b4ef4813d5ae43a491668e9743f564707780f7de30de', null from p;

-- Purina Pro Plan — Expert Care Puppy Rijk aan Lam (3 / 10 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-expert-care-puppy-lam
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Expert Care Puppy Rijk aan Lam', 'kibble', '3 / 10 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-expert-care-puppy-lam', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Lam (20%) Gedehydrateerd gevogelte-eiwit Mais Rijst Sojameel Dierlijk vet Gedroogde bietenpulp Maiseiwitmeel Gedroogd ei Mineralen Digest Visolie (0,8%) Gedroogd colostrum (0,1%)', true, now(), 'sha256:dea474cd8dd4132c79c07c87c87eb9847c5d3020daafedfff1e0cf0e0be5fa67', null from p;

-- Purina Pro Plan — Expert Care Small & Mini Adult Rijk aan Kip (1,5 / 3 / 7 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-expert-care-small-mini-adult-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Expert Care Small & Mini Adult Rijk aan Kip', 'kibble', '1,5 / 3 / 7 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-expert-care-small-mini-adult-kip', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Kip (20%) Tarwe Gedehydrateerd gevogelte-eiwit Mais Rijst Dierlijk vet Sojameel Digest Gedroogde bietenpulp Maiseiwitmeel Tarweglutenmeel Mineralen Gedroogd ei Visolie Gist Gedroogd colostrum (0,1%)', true, now(), 'sha256:443ea971b3642521ee654763d1c4c33db7ea5c29e428a1933e55296a730268e3', null from p;

-- Purina Pro Plan — Expert Care Small & Mini Derma Care Rijk aan Zalm (1,5 / 3 / 7 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-expert-care-small-mini-derma-care-zalm
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Expert Care Small & Mini Derma Care Rijk aan Zalm', 'kibble', '1,5 / 3 / 7 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-expert-care-small-mini-derma-care-zalm', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Zalm* (20%) Rijst* Maiseiwitmeel* Gedehydrateerd zalmeiwit* Mais* Dierlijk vet Sojameel* Gedroogde bietenpulp* Maiszetmeel Mineralen Digest Cellulose Gedroogd ei* Sojabonenolie Visolie Gedroogd colostrum (0,1%) *Bron van eiwitten.', true, now(), 'sha256:a04e1bcfff0814acd44933932d00374e53140610c998384483e226827ed35e0d', null from p;

-- Purina Pro Plan — Expert Care Small & Mini Puppy Rijk aan Lam (3 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-expert-care-small-mini-puppy-lam
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Expert Care Small & Mini Puppy Rijk aan Lam', 'kibble', '3 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-expert-care-small-mini-puppy-lam', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Lam (20%) Gedroogd gevogelte-eiwit Sojameel Rijst Dierlijk vet Maisgrit Maïseiwitmeel Gedroogde bietenpulp Mais Gedroogd ei Digest Mineralen Visolie (1%) Gedroogd colostrum (0,1%)', true, now(), 'sha256:10d7934b94f1c050c0fdae89c7438548b8a71be02499df8fea3624bf3bd19d9a', null from p;

-- Purina Pro Plan — Large Athletic Adult Everyday Nutrition Rijk aan Kip (14 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-adult-large-athletic-everyday-nutrition-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Large Athletic Adult Everyday Nutrition Rijk aan Kip', 'kibble', '14 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-adult-large-athletic-everyday-nutrition-kip', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Kip (19%) Tarwe Gedehydreerd gevogelte-eiwit Maïs Rijst (8%) Dierlijk vet Sojameel Gedroogde bietenpulp Digest Maïsglutenmeel Maïsgries Tarweglutenmeel Gedehydreerd zalm-eiwit Mineralen Gedroogd ei Visolie', true, now(), 'sha256:8239eeb7e6eb29515caad30cb039661caadd7e0066d9e4ed5ffc4d5c8c85355b', null from p;

-- Purina Pro Plan — Large Athletic Adult Sensitive Skin Rijk aan Zalm (14 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-adult-large-athletic-sensitive-skin-zalm
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Large Athletic Adult Sensitive Skin Rijk aan Zalm', 'kibble', '14 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-adult-large-athletic-sensitive-skin-zalm', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Zalm van hoge kwaliteit* (17%) (inclusief kop, beenderen, vlees) Rijst* (14%) Gedehydreerd zalmeiwit* Maïsglutenmeel* Maïs* Dierlijk vet Sojameel* Gedroogde bietenpulp* Maïsgries* Digest Maïszetmeel gedroogde plantaardige vezel Mineralen Gedroogd ei* Sojaolie Visolie *Eiwitbronnen.', true, now(), 'sha256:a72def321c95d97ec0bf2bb118699f04d6016f8e5554818b83263e58b635c8a7', null from p;

-- Purina Pro Plan — Large Athletic Puppy Healthy Start Rijk aan Kip (3 / 12 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-puppy-large-athletic-healthy-start-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Large Athletic Puppy Healthy Start Rijk aan Kip', 'kibble', '3 / 12 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-puppy-large-athletic-healthy-start-kip', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Kip (19%) Tarwe Gedehydreerd gevogelte-eiwit Rijst (9%) Sojameel Dierlijk vet Digest Maïsglutenmeel Tarweglutenmeel Maïs Gedroogde bietenpulp Mineralen Gedroogd ei Visolie Gedroogde colostrum (0,1%)', true, now(), 'sha256:2d406f2c7ffc13db335198e0bd96a8b3b477374203bae2f4b74e5c3ba9153462', null from p;

-- Purina Pro Plan — Large Puppy Starter Rijk aan Kip (18 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-large-puppy-starter-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Large Puppy Starter Rijk aan Kip', 'kibble', '18 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-large-puppy-starter-kip', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Kip (20%) Gedroogd gevogelte-eiwit Mais Rijst Sojameel Dierlijk vet Gedroogde bietenpulp Digest Maltodextrine (3,6 %) Maiseiwitmeel Gedroogd ei Mineralen Maisgrutten Visolie Gedroogd colostrum (0,1%)', true, now(), 'sha256:07ba30cc1fae1876a7e6d0e7a12c76082faa7259b4777fe1e1332c3bc9949bd6', null from p;

-- Purina Pro Plan — Large Robust Adult Everyday Nutrition Rijk aan Kip (14 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-adult-large-robust-everyday-nutrition-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Large Robust Adult Everyday Nutrition Rijk aan Kip', 'kibble', '14 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-adult-large-robust-everyday-nutrition-kip', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Kip (19%) Tarwe Gedehydreerd gevogelte-eiwit Maïs Rijst (7%) Tarwevezel Digest Gedroogde bietenpulp Sojameel Tarweglutenmeel Dierlijk vet Maïsglutenmeel Mineralen Gedroogd ei Visolie', true, now(), 'sha256:4d71c12f8f4b4d23ff6b9f21a520dd29b84e530a5163c516011b8a8c43d56531', null from p;

-- Purina Pro Plan — Large Robust Adult Sensitive Skin Rijk aan Zalm (14 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-adult-large-robust-sensitive-skin-zalm
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Large Robust Adult Sensitive Skin Rijk aan Zalm', 'kibble', '14 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-adult-large-robust-sensitive-skin-zalm', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Zalm* (16%) Rijst* (14%) Maïs* Gedehydreerd zalmeiwit* Maïsglutenmeel* Maïsgries* Sojameel* Gedroogde bietenpulp* Digest Dierlijk vet Mineralen Cellulose Gedroogd ei* Sojaolie Visolie *Eiwitbronnen.', true, now(), 'sha256:15e837fe2af2264a7c8dbdc3ec6da0fb43c818a86b12955f1defc7b5e34e5b63', null from p;

-- Purina Pro Plan — Large Robust Puppy Healthy Start Rijk aan Kip (3 / 12 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-puppy-large-robust-healthy-start-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Large Robust Puppy Healthy Start Rijk aan Kip', 'kibble', '3 / 12 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-puppy-large-robust-healthy-start-kip', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Kip (18%) Tarwe Gedehydreerd gevogelte-eiwit Maïs Sojameel Rijst (7%) Dierlijk vet Tarwevezel Digest Gedroogde bietenpulp Maïsglutenmeel Tarweglutenmeel Mineralen Gedroogd ei Visolie Gedroogde colostrum (0,1%)', true, now(), 'sha256:f90e376d974fae3823d8c0678b7f16af4c1da6b88dd203e1d3f3fe028464ad7b', null from p;

-- Purina Pro Plan — Medium & Large Adult 7+ Age Defence Rijk aan Kip (3 / 14 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-senior-medium-large-age-defence-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Medium & Large Adult 7+ Age Defence Rijk aan Kip', 'kibble', '3 / 14 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-senior-medium-large-age-defence-kip', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Kip (16%) Gedehydreerd gevogelte-eiwit Tarwe Rijst (12%) Maïs Maïsglutenmeel Plantaardige oliefracties (5,5%) Gedroogde bietenpulp Sojameel Mineralen Tarweglutenmeel Dierlijk vet Digest Visolie', true, now(), 'sha256:cc2c12da82f508605ac78a1df35f37c46f27cde52557fcb635efcb4a4846be4d', null from p;

-- Purina Pro Plan — Medium & Large Adult 7+ Sensitive Skin Rijk aan Zalm (3 / 14 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-senior-medium-sensitive-skin-zalm
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Medium & Large Adult 7+ Sensitive Skin Rijk aan Zalm', 'kibble', '3 / 14 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-senior-medium-sensitive-skin-zalm', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Zalm* (17%) Rijst* (16%) Maïsglutenmeel* Gedehydreerd zalmeiwit* Maïszetmeel Maïs* Sojameel* Dierlijk vet Mineralen Gedroogde bietenpulp* Cellulose Gedroogd ei* Sojaolie Digest Visolie *Eiwitbronnen.', true, now(), 'sha256:86ead58d149f3fe307046d01a7ddce37dadbf059f45c90afae76b9f6d95a65ba', null from p;

-- Purina Pro Plan — Medium Puppy Healthy Start Rijk aan Kip (3 / 12 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-puppy-medium-healthy-start-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Medium Puppy Healthy Start Rijk aan Kip', 'kibble', '3 / 12 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-puppy-medium-healthy-start-kip', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Kip (20%) Gedehydreerd gevogelte-eiwit Tarwe Sojameel Dierlijk vet Rijst (8%) Maïs Digest Gedroogde bietenpulp Maïsglutenmeel Mineralen Gedroogd ei Visolie Gedroogde colostrum (0,1%)', true, now(), 'sha256:bc0111a9c979f1d4941eea4dee9fd2b09933ed754f255e9a7722b45dbc9cc488', null from p;

-- Purina Pro Plan — Medium Puppy Sensitive Digestion Rijk aan Lam (3 / 12 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-puppy-medium-sensitive-digestion-lam
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Medium Puppy Sensitive Digestion Rijk aan Lam', 'kibble', '3 / 12 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-puppy-medium-sensitive-digestion-lam', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Lam (20%) Gedehydreerd gevogelte-eiwit Maïs Rijst (10%) Sojameel Dierlijk vet Gedroogde bietenpulp Digest Maïsglutenmeel Gedroogd ei Maïsgries Mineralen Visolie Gedroogde colostrum (0,1%)', true, now(), 'sha256:dd875c49d8bd09c633df95cadc88fdca06f74d68b625f1516a9355dee88389ab', null from p;

-- Purina Pro Plan — Medium Puppy Sensitive Skin Rijk aan Zalm (3 / 12 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-puppy-medium-sensitive-skin-zalm
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Medium Puppy Sensitive Skin Rijk aan Zalm', 'kibble', '3 / 12 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-puppy-medium-sensitive-skin-zalm', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Zalm van hoge kwaliteit* (inclusief kop, beenderen, vlees) (17%) Gedroogd zalmeiwit* Rijst* (16%) Maïsglutenmeel* Dierlijk vet Maïs* Sojameel* Maïsgries* Gedroogd ei* Gehydrolyseerd soja-eiwit* Digest Gedroogde bietenpulp* Mineralen Gedroogde plantaardige vezels Sojaolie Visolie *Eiwitbronnen.', true, now(), 'sha256:9dd4cf397d7660fdbbbcb0316afe3107c4f9ceb005f768fdfd8807ab8c5b382e', null from p;

-- Purina Pro Plan — Small & Medium Puppy Starter Rijk aan Kip (3 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-small-medium-puppy-starter-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Small & Medium Puppy Starter Rijk aan Kip', 'kibble', '3 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-small-medium-puppy-starter-kip', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Kip (20%) Gedroogd gevogelte-eiwit Mais Rijst Sojameel Dierlijk vet Gedroogde bietenpulp Digest Maltodextrine (3,1 %) Maiseiwitmeel Gedroogd ei Mineralen Maisgrutten Visolie Gedroogd colostrum (0,1%)', true, now(), 'sha256:02c042a75af5189c2c6c88d5465100adea90ac655161eaf1865b5be181ead378', null from p;

-- Purina Pro Plan — Small & Mini Adult 9+ Age Defence Rijk aan Kip (3 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-senior-small-age-defence-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Small & Mini Adult 9+ Age Defence Rijk aan Kip', 'kibble', '3 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-senior-small-age-defence-kip', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Kip (15%) Gedehydreerd gevogelte-eiwit Tarwe Rijst (12%) Maïs Maïsglutenmeel Plantaardige oliefracties (5,5%) Gedroogde bietenpulp Tarweglutenmeel Sojameel Mineralen Dierlijk vet Visolie Digest Gist', true, now(), 'sha256:fc1e163f8ce13b37deef1b065aaab73d14a5d3606ef127df826cc215516d77eb', null from p;

-- Purina Pro Plan — Small & Mini Adult Everyday Nutrition Rijk aan Kip (3 / 7 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-adult-small-everyday-nutrition-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Small & Mini Adult Everyday Nutrition Rijk aan Kip', 'kibble', '3 / 7 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-adult-small-everyday-nutrition-kip', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Kip (20%) Tarwe Gedehydreerd gevogelte-eiwit Maïs Rijst (7%) Dierlijk vet Sojameel Gedroogde bietenpulp Maïsglutenmeel Tarweglutenmeel Mineralen Gedroogd ei Visolie Digest Gist', true, now(), 'sha256:a7c47cc4d9eda21c4dcd070c522b75c1c9f78dd9dcae7813035ba593e0fc7850', null from p;

-- Purina Pro Plan — Small & Mini Adult Sensitive Skin Rijk aan Zalm (3 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-adult-small-sensitive-skin-zalm
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Small & Mini Adult Sensitive Skin Rijk aan Zalm', 'kibble', '3 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-adult-small-sensitive-skin-zalm', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Zalm* (20%) Rijst* (18%) Maïsglutenmeel* Gedehydreerd zalm-eiwit* Maïs* Dierlijk vet Sojameel* Gedroogde bietenpulp* Maïszetmeel Mineralen Cellulose Sojaolie Maïsgries Digest Gist* Gedroogd ei* Visolie *Eiwitbronnen.', true, now(), 'sha256:cf97567f058c263d7be0d2d63205b858796c0403e38b766c37bb996eb3d27c5e', null from p;

-- Purina Pro Plan — Small & Mini Puppy Healthy Start Rijk aan Kip (3 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-puppy-small-healthy-start-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Small & Mini Puppy Healthy Start Rijk aan Kip', 'kibble', '3 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-puppy-small-healthy-start-kip', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Kip (20%) Gedehydreerd gevogelte-eiwit Tarwe Dierlijk vet Sojameel Rijst (7%) Maïsglutenmeel Gedroogde bietenpulp Maïs Tarweglutenmeel Mineralen Gedroogd ei Visolie Digest Gedroogde colostrum (0,1%)', true, now(), 'sha256:ba12bed390d1672a0b013a2ec31bfaa67e89a76442033ae38e740a3f4ee4079d', null from p;

-- Purina Pro Plan — Small & Mini Puppy Sensitive Skin Rijk aan Zalm (3 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-puppy-small-sensitive-skin-zalm
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Small & Mini Puppy Sensitive Skin Rijk aan Zalm', 'kibble', '3 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-puppy-small-sensitive-skin-zalm', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Zalm* (18%) Gedehydreerd zalm-eiwit* Rijst* (16%) Dierlijk vet Maïsglutenmeel* Maïszetmeel* Sojameel* Gedehydreerd soja-eiwit* Gedroogd ei* Gedroogde bietenpulp* Mineralen Cellulose Maïsgritten Digest Sojabonenolie* Visolie *Eiwitbronnen.', true, now(), 'sha256:63835e537b0b033d1278b12b8df929b9eeb0773effc85565569cc258def6b306', null from p;

-- Purina Pro Plan Veterinary Diets — CN Convalescence (195 g)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-convalescence-natvoer
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan Veterinary Diets', 'CN Convalescence', 'wet', '195 g', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-convalescence-natvoer', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Varkensnier -lever -long en -plasma Kalkoen Zalm Zonnebloemolie Mineralen Maiszetmeel Visolie Verscheidene suikers', true, now(), 'sha256:c8eb7a0e6ae220657da2634258ff0b341b42017dec27e9143efef0394c0ea4bd', null from p;

-- Purina Pro Plan Veterinary Diets — HP Hepatic (3 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-hepatic-lever
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan Veterinary Diets', 'HP Hepatic', 'kibble', '3 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-hepatic-lever', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Mais* ** Gedroogd ei* Sojameel* Gedroogde bietenpulp* Dierlijk vet Digest* Mineralen Kokosolie Gedroogde cichoreiwortel Visolie Cellulose *Bron van eiwitten. **Zeer goed verteerbare koolhydraatbronnen.', true, now(), 'sha256:7d2556c1b9bbb1ee562f9e8a375145dc96e02cbebe1b620680995f8d7a2bdee1', null from p;

-- Purina Pro Plan Veterinary Diets — JM Joint Mobility (3 / 12 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-Joint-mobility-gewricht
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan Veterinary Diets', 'JM Joint Mobility', 'kibble', '3 / 12 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-Joint-mobility-gewricht', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Rijst Gedehydreerd zalmeiwit Tarwemeel Gedehydreerd gevogelte-eiwit Soja-eiwit Mais Gedroogd ei Digest Visolie Erwtenvezel Dierlijk vet Mineralen Cellulose', true, now(), 'sha256:ff284c063491416a00c135133a88ce7db0197e26bcd64cce9b34f9f83af8833c', null from p;

-- Purina Pro Plan Veterinary Diets — NC Neurocare (3 / 12 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-neurocare-hersenfunctie
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan Veterinary Diets', 'NC Neurocare', 'kibble', '3 / 12 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-neurocare-hersenfunctie', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Mais Gedehydreerd gevogelte-eiwit Tarwebloem Gedehydreerd zalmeiwit Middellangeketen-vetzuurolie (6,5%) Gedroogde bietenpulp Rijst Gedroogd ei Maisglutenmeel Digest Visolie Mineralen', true, now(), 'sha256:cf3e4d1a4d1ad05b218199d098d7f40a83bbbb4cacdbf2395ca4ed885db36bac', null from p;

-- Purina Pro Plan Veterinary Diets — NF Renal Function (3 / 12 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-nierfunctie
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan Veterinary Diets', 'NF Renal Function', 'kibble', '3 / 12 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-nierfunctie', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Mais* Rijst* Gedroogd ei* Gedroogde wei* Dierlijk vet Suiker Digest* Gedroogde bietenpulp* Mineralen Sojaolie Visolie *Bron van eiwitten. Urine-alkaliserende stof: calciumcarbonaat.', true, now(), 'sha256:40e5ad054d4f5ef44af593627f57c9b31f83eddbf4b43c8315153ec5bfe6f094', null from p;

-- Purina Pro Plan Veterinary Diets — NF Renal Function Natvoer (400 g)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-nierfunctie-natvoer
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan Veterinary Diets', 'NF Renal Function Natvoer', 'wet', '400 g', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-nierfunctie-natvoer', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Varkenshart en -lever Vis- en zonnebloemolie Maïs Rijstebloem Varkensvet Kalkoen Suiker Mineralen Gedroogd ei', true, now(), 'sha256:ee27eae6041976dc02c3cee6fedd9dc8d5ab16f0ea4bc5782604a4d574b896b1', null from p;

-- Purina Pro Plan Veterinary Diets — OM Obesity Management Natvoer (400 g)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-overgewicht-natvoer
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan Veterinary Diets', 'OM Obesity Management Natvoer', 'wet', '400 g', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-overgewicht-natvoer', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Varkenshart en -lever Hart en lever van gevogelte Cellulosepoeder Rijstebloem Mineralen Suiker', true, now(), 'sha256:d393787a339abbe167abf5e32d4d7a924460ee0d7bb6fb5f42171a34e4de3c6e', null from p;

-- Purina Pro Plan Veterinary Diets — UR Urinary (3 / 12 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-urinary
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan Veterinary Diets', 'UR Urinary', 'kibble', '3 / 12 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-urinary', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Mais* Tarwebloem* Gedehydrateerd gevogelte-eiwit* Rijst* Dierlijk vet Maisglutenmeel* Digest* Gedroogde bietenpulp* Gedroogd ei* Mineralen Visolie *Bron van eiwitten. Urineverzurende.', true, now(), 'sha256:44d8cd577d106ae8f5a30b085ca05395b1c79b58b65427b21fd1209d2bfd7bb4', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
