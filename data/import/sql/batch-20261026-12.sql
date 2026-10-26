-- Automatisch overgenomen etiketten, batch 12 van 2026-10-26 (31 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Specific — CCD Struvite Management (2 kg, 3 x 2 kg, 7 kg, 12 kg)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/ccd-struvite-management
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CCD Struvite Management', 'kibble', '2 kg, 3 x 2 kg, 7 kg, 12 kg', null, 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/ccd-struvite-management', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïszetmeel, tarwe, maïseiwit, varkensvet, maïs, eipoeder, mineralen, vismeel, gehydrolyseerd dierlijk eiwit, aardappeleiwit, Antarctische krill, vitaminen en spoorelementen, (inclusief gecheleerde sporenelementen), cellulosepoeder, gist, methionine, visolie, psyllium husk, rozemarijn extract. Natuurlijke antioxidanten (tocopherolen, rozemarijn extract en vitamine C). Bevat geen toegevoegde kunstmatige kleur- en smaakstoffen.', true, now(), 'sha256:ca889c23b87441387a297f2e5920640468b0475fe902a2f13acaa336dc7e06bc', null from p;

-- Specific — CED-DM Endocrine support (2 kg, 3 x 2 kg, 12 kg)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/ced-dm-endocrine-support
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CED-DM Endocrine support', 'kibble', '2 kg, 3 x 2 kg, 12 kg', null, 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/ced-dm-endocrine-support', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse vis, vismeel, haver, gedroogde erwten, gehydrolyseerd zalmeiwit, aardappeleiwit, maïseiwit, erwtenzetmeel, cellulosepoeder, gehydrolyseerd dierlijk eiwit, bietenpulp,varkensvet, visolie, vitaminen en spoorelementen (inclusief gecheleerde sporenelementen), eipoeder, Antarctische krill, mineralen, plantaardige olie, fructo-oligo-sachariden, psyllium husk, taurine, gist (bron vanβß-1,3/1,6-glucanen), methionine, L-carnitine, groene thee extract, granaatappel extract, cranberry extract, rozemarijnextract. Natuurlijke antioxidanten (tocopherolen en vitamine C). Bevat geen toegevoegde kunstmatige kleur- en smaakstoffen.', true, now(), 'sha256:ccdc9861abe5d8fa638f78757cd4e5d24b38cd084fbe77ea2b63366e75122f6d', null from p;

-- Specific — CIW Digestive Support (6 x 300 g, 7 x 100 g)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/ciw-digestive-support
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CIW Digestive Support', 'wet', '6 x 300 g, 7 x 100 g', null, 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/ciw-digestive-support', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Varken, maïs, rijst, mineralen (inclusief zeoliet), vitaminen en spoorelementen (inclusief gecheleerde sporenelementen), eipoeder, dextrose, psyllium husk, visolie, zonnebloemolie, postbiotische gistfermentatieproducten, gist (bron van ß-1,3/1,6-glucanen en mannan-oligosacchariden), AuraGuard (calciumcarbonaat, citrus extract, maltodextrine, natriumchloride), yucca poeder. Bevat geen toegevoegde kunstmatige kleur- en smaakstoffen.', true, now(), 'sha256:c54278f4bcbd593aebbe93ba8c4a5d7d13279efe60a77883efb868394ff293f8', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Specific — CID-LF Digestive Support Low Fat (1,6 kg, 3 x 1,6 kg, 6 kg, 12 kg)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cid-lf-digestive-support-low-fat
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CID-LF Digestive Support Low Fat', 'kibble', '1,6 kg, 3 x 1,6 kg, 6 kg, 12 kg', null, 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cid-lf-digestive-support-low-fat', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Tapioca, rijsteiwit, gehydrolyseerd zalmeiwit, mineralen, visolie, aardappeleiwit, gehydrolyseerd dierlijk eiwit, plantaardige olie, bietenpulp, vitaminen en spoorelementen (inclusief gecheleerde sporenelementen), cellulosepoeder, gist (inclusief bron van nucleotiden, ß-1,3/1,6-glucanen en mannan-oligosacchariden), psyllium husk, fructooligo-sachariden, AuraGuard (calciumcarbonaat, citrus extract, maltodextrine, natriumchloride), rozemarijnextract. Natuurlijke antioxidanten (tocopherolen en vitamine C). Bevat geen toegevoegde kunstmatige kleur- en smaakstoffen.', true, now(), 'sha256:0811cf9580b9bab736d4f343c505af97e2321e9723c7211f2b00272a31b54155', null from p;

-- Specific — CIW-LF Digestive Support Low Fat (7 x 100 g, 6 x 300 g)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/ciw-lf-digestive-support-low-fat
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CIW-LF Digestive Support Low Fat', 'wet', '7 x 100 g, 6 x 300 g', null, 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/ciw-lf-digestive-support-low-fat', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Aardappelzetmeel, gehydrolyseerd zalmeiwit, mineralen (inclusief zeoliet), cellulosepoeder, zonnebloemolie, visolie, psyllium husk, vitaminen en spoorelementen (inclusief gecheleerde sporenelementen), gist (inclusief bron van nucleotiden, ß-1,3/1,6-glucanen en mannan-oligosacchariden), fructooligosachariden), dextrose, xylose, AuraGuard (calciumcarbonaat, citrus extract,maltodextrine, natriumchloride), yucca poeder. Bevat geen toegevoegde kunstmatige kleur- en smaakstoffen.', true, now(), 'sha256:02651896500fd6203c47269feaa5268db62871a1b09992376e1cefd2ffe2b528', null from p;

-- Specific — CJD Joint Support (2 kg, 3 x 2 kg, 3 x 4 kg)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cjd-joint-support
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CJD Joint Support', 'kibble', '2 kg, 3 x 2 kg, 3 x 4 kg', null, 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cjd-joint-support', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Tarwe, vismeel, rijst, cellulosepoeder, visolie, bietenpulp, eipoeder, gehydrolyseerd dierlijk eiwit, PETAGILE ® (gehydrolyseerd collageen), vitaminen en spoorelementen (inclusief gecheleerde sporenelementen), Antarctische krill, mineralen, gist (inclusief bron van ß-1,3/1,6-glucanen), psyllium husk, chondroïtinesulfaat, borage olie, L-carnitine, rozemarijn extract. Natuurlijke antioxidanten (tocopherolen, rozemarijn extract en vitamine C). Bevat geen toegevoegde kunstmatige kleur- en smaakstoffen.', true, now(), 'sha256:598f7bbf2542addec46d97bd58ddd9c57349ece9d8ef4f429666be0e7c649964', null from p;

-- Specific — CKD Heart & Kidney Support (2 kg, 3 x 2 kg, 7 kg, 3 x 4 kg)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/ckd-heart-kidney-support
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CKD Heart & Kidney Support', 'kibble', '2 kg, 3 x 2 kg, 7 kg, 3 x 4 kg', null, 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/ckd-heart-kidney-support', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, tarwe, maïs, visolie, varkensvet, aardappeleiwit, bietenpulp, gehydrolyseerd dierlijk eiwit, eipoeder, Antarctische krill, mineralen, cellulosepoeder, gist, fructooligo-sachariden, AuraGuard (calciumcarbonaat citrus extract maltodextrine natriumchloride). Natuurlijke antioxidanten (tocopherolen, rozemarijn extract en vitamine C). Bevat geen toegevoegde kunstmatige kleur- en smaakstoffen', true, now(), 'sha256:64628541a5f56d69d431f920fe2d4ffa3a73be3bb0aa56956f366c04917fb25b', null from p;

-- Specific — CKW Heart & Kidney Support (6 x 300 g)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/ckw-heart-kidney-support
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CKW Heart & Kidney Support', 'wet', '6 x 300 g', null, 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/ckw-heart-kidney-support', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, varken, maïs, visolie, eipoeder, zonnebloemolie, cellulosepoeder, mineralen, bietenpulp, fructooligo-sachariden, psyllium husk, dextrose, AuraGuard (calciumcarbonaat citrus extract maltodextrine natriumchloride). Bevat geen toegevoegde kunstmatige kleur- en smaakstoffen.', true, now(), 'sha256:cb70cb4cde529bf0d5feb3612ce494941b5a3a4b4c812a3923a226f110292c68', null from p;

-- Specific — CKD-HY Heart & Kidney Support hydrolysed (4 kg, 3 x 4 kg)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/ckd-hy-heart-kidney-support-hydrolysed
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CKD-HY Heart & Kidney Support hydrolysed', 'kibble', '4 kg, 3 x 4 kg', null, 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/ckd-hy-heart-kidney-support-hydrolysed', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde aardappel, varkensvet, gehydrolyseerd zalmeiwit, visolie, bietenpulp, gehydrolyseerd eiwit, aardappeleiwit, mineralen, plantaardige olie, cellulosepoeder, fructooligo-sachariden, AuraGuard (calciumcarbonaat citrus extract maltodextrine natriumchloride). Natuurlijke antioxidanten (tocopherolen, rozemarijn extract en vitamine C).Bevat geen toegevoegde kunstmatige kleur- en smaakstoffen.', true, now(), 'sha256:25805e04bdd958a00d24fd00662d3e8e27c6fe00ca533276938b795bc495b40a', null from p;

-- Specific — CKW-HY Heart & Kidney Support hydrolysed (6 x 300 g)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/ckw-hy-heart-kidney-support-hydrolysed
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CKW-HY Heart & Kidney Support hydrolysed', 'wet', '6 x 300 g', null, 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/ckw-hy-heart-kidney-support-hydrolysed', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Aardappelzetmeel, gehydrolyseerd zalmeiwit, zonnebloemolie, visolie, aardappeleiwit, cellulosepoeder, bietenpulp, mineralen, psyllium husk, fructooligo-sachariden, dextrose, AuraGuard (calciumcarbonaat citrus extract maltodextrine natriumchloride), gistproducten. Bevat geen toegevoegde kunstmatige kleur- en smaakstoffen', true, now(), 'sha256:32aa3ed6040e3fc72d7a41df16957066c907a56bfb52568bf42dba063eafb941', null from p;

-- Specific — COD Skin Function Support (2 kg, 3 x 2 kg, 7 kg, 3 x 4 kg)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cod-skin-function-support
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'COD Skin Function Support', 'kibble', '2 kg, 3 x 2 kg, 7 kg, 3 x 4 kg', null, 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cod-skin-function-support', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Tarwe, rijst, vismeel, maïseiwit, visolie, eipoeder, varkensvet, aardappeleiwit, gehydrolyseerd dierlijk eiwit, mineralen, Antarctische krill, vitaminen en spoorelementen (inclusief gecheleerde sporenelementen), gist (inclusief bron van ß-1,3/1,6-glucanen), cellulosepoeder, borage olie, psyllium husk, taurine, L-carnitine, rozemarijn extract. Natuurlijke antioxidanten (tocopherolen, rozemarijn extract en vitamine C). Bevat geen toegevoegde kunstmatige kleur- en smaakstoffen', true, now(), 'sha256:c54ddbfa813d792aed38a559d680f549fc3f0280cc6583ae003c8036dfeb24f4', null from p;

-- Specific — COW-HY Allergen Management Plus (6 x 300 g)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cow-hy-allergen-management-plus
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'COW-HY Allergen Management Plus', 'wet', '6 x 300 g', null, 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cow-hy-allergen-management-plus', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, rijsteiwit, gehydrolyseerd zalmeiwit, visolie, vitaminen en spoorelementen (inclusief gecheleerde sporenelementen), mineralen, zonnebloemolie, cellulosepoeder, psyllium husk, borage olie, dextrose, xylose. Bevat geen toegevoegde kunstmatige kleur- en smaakstoffen.', true, now(), 'sha256:f10d66c15694f6b13134e1e349b070126c15e4ccf17d60fc63523bb609557a52', null from p;

-- Specific — CRD-1 Weight Reduction (1,6 kg, 3 x 1,6 kg, 6 kg, 12 kg)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/crd-1-weight-reduction
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CRD-1 Weight Reduction', 'kibble', '1,6 kg, 3 x 1,6 kg, 6 kg, 12 kg', null, 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/crd-1-weight-reduction', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Tarwe, vismeel, maïseiwit, haver, cellulosepoeder, bietenpulp, gehydrolyseerd dierlijk eiwit, aardappeleiwit, Antarctische krill, visolie, mineralen, plantaardige olie, vitaminen en spoorelementen (inclusief gecheleerde sporenelementen), gist, psyllium husk, methionine, L-carnitine, rozemarijn extract. Natuurlijke antioxidanten (tocopherolen, rozemarijn extract en vitamine C). Bevat geen toegevoegde kunstmatige kleur- en smaakstoffen.', true, now(), 'sha256:040c94fe48882149f7ba4e8ee63674b37ac326897f6d3553b812f0996d3a910b', null from p;

-- Specific — CRW-1 Weight Reduction (6 x 300 g)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/crw-1-weight-reduction
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CRW-1 Weight Reduction', 'wet', '6 x 300 g', null, 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/crw-1-weight-reduction', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Varken, maïs, vis, cellulosepoeder, vitaminen en spoorelementen (inclusief gecheleerde sporenelementen), eipoeder, visolie, zonnebloemolie, psyllium husk, mineralen, L-carnitine. Bevat geen toegevoegde kunstmatige kleur- en smaakstoffen.', true, now(), 'sha256:9a64f32c31b7f3f99afdfed304f358dc1858008952f69e5e7b8e30d00c229687', null from p;

-- Specific — CRD-2 Weight Control (1,6 kg, 3 x 1,6 kg, 6 kg, 12 kg)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/crd-2-weight-control
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CRD-2 Weight Control', 'kibble', '1,6 kg, 3 x 1,6 kg, 6 kg, 12 kg', null, 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/crd-2-weight-control', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Tarwe, vismeel, maïseiwit, cellulosepoeder, bietenpulp, eipoeder, gehydrolyseerd dierlijk eiwit, mineralen, plantaardige olie, vitaminen en spoorelementen, (inclusief gecheleerde sporenelementen), Antarctische krill, visolie, aardappeleiwit, gist, psyllium husk, methionine, L-carnitine, rozemarijn extract. Natuurlijke antioxidanten (tocopherolen, rozemarijn extract en vitamine C). Bevat geen toegevoegde kunstmatige kleur- en smaakstoffen.', true, now(), 'sha256:3cd3835f939406b8f671050d65b61cfdde0ece8faabf2bb5f6ec456a384200df', null from p;

-- Specific — F/C-IN-W Intensive Support (7 x 95 g)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/f-c-in-w-intensive-support
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'F/C-IN-W Intensive Support', 'wet', '7 x 95 g', null, 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/f-c-in-w-intensive-support', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip, varken, vis, eipoeder, visolie, aardappelzetmeel, aardappeleiwit, mineralen, vitaminen en spoorelementen (inclusief gecheleerde sporenelementen), zonnebloemolie, psyllium husk, dextrose, xylose, taurine, gist (bron van β-1,3/1,6-glucanen), L-carnitine. Bevat geen toegevoegde kunstmatige kleur- en smaakstoffen.', true, now(), 'sha256:8cc138ee2b849267c8b447af324b8d51e95e1994ee370c6e4e664b755fb62c98', null from p;

-- Specific — F/C-IN-L Intensive Support (7 x 95 g)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/f-c-in-l-intensive-support
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'F/C-IN-L Intensive Support', 'wet', '7 x 95 g', null, 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/f-c-in-l-intensive-support', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip, magere melkpoeder, visolie, mineralen, eipoeder, dierlijk vet (kip), vitaminen en spoorelementen (inclusief gecheleerde sporenelementen), taurine, fructo-oligosacchariden, gist (bron van β-1,3/1,6-glucanen), L-carnitine. Bevat geen toegevoegde kunstmatige kleur- en smaakstoffen.', true, now(), 'sha256:df9aa6223cfdd978e1ab9e5a6e2c7bc83a5bc8fd8f714e296a9716b350c41654', null from p;

-- Specific — CPD-S Puppy Small Breed (1 kg, 4 kg, 7 kg)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cpd-s-puppy-small-breed
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CPD-S Puppy Small Breed', 'kibble', '1 kg, 4 kg, 7 kg', null, 'https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cpd-s-puppy-small-breed', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Tarwe, vismeel, maïseiwit, varkensvet, eipoeder, gehydrolyseerd dierlijk eiwit, bietenpulp (2%), mineralen, visolie, psyllium husk. Bevat geen toegevoegde kunstmatige kleur- en smaakstoffen. Toevoegingsmiddelen (per kg): Nutritionele toevoegingsmiddelen: vitamine D3 1044 IE, koper 10,1 mg (koperchelaat van glycinehydraat), ijzer 108 mg (ijzersulfaat monohydraat), zink 129 mg (zinkchelaat van glycinehydraat), mangaan 7,4 mg (mangaanchelaat van glycinehydraat), jodium 2,5 mg (calciumjodaat anhydraat); natuurlijke antioxidanten.', true, now(), 'sha256:413b02028f77f3e4ea2006245d07b83ef33877033f16454b3e04251910a85e5d', null from p;

-- Specific — CPD-M Puppy Medium Breed (4 kg, 7 kg, 12 kg)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cpd-m-puppy-medium-breed
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CPD-M Puppy Medium Breed', 'kibble', '4 kg, 7 kg, 12 kg', null, 'https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cpd-m-puppy-medium-breed', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Tarwe, vismeel, maïseiwit, varkensvet, eipoeder, gehydrolyseerd dierlijk eiwit, bietenpulp (2%), mineralen, visolie, psyllium husk. Bevat geen toegevoegde kunstmatige kleur- en smaakstoffen. Toevoegingsmiddelen (per kg): Nutritionele toevoegingsmiddelen: vitamine D3 1044 IE, koper 10,1 mg (koperchelaat van glycinehydraat), ijzer 108 mg (ijzersulfaat monohydraat), zink 129 mg (zinkchelaat van glycinehydraat), mangaan 7,4 mg (mangaanchelaat van glycinehydraat), jodium 2,5 mg (calciumjodaat anhydraat); natuurlijke antioxidanten.', true, now(), 'sha256:413b02028f77f3e4ea2006245d07b83ef33877033f16454b3e04251910a85e5d', null from p;

-- Specific — CPD-XL Puppy Large & Giant breed (4 kg, 12 kg)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cpd-xl-puppy-large-giant-breed
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CPD-XL Puppy Large & Giant breed', 'kibble', '4 kg, 12 kg', null, 'https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cpd-xl-puppy-large-giant-breed', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Tarwe, maïseiwit, vismeel, bietenpulp (5%), varkensvet, gehydrolyseerd dierlijk eiwit, eipoeder, mineralen, visolie, psyllium husk. Bevat geen toegevoegde kunstmatige kleur- en smaakstoffen. Toevoegingsmiddelen (per kg): Nutritionele toevoegingsmiddelen: vitamine D3 1044 IE, koper 10,1 mg (koperchelaat van glycinehydraat), ijzer 108 mg (ijzersulfaat monohydraat), zink 129 mg (zinkchelaat van glycinehydraat), mangaan 7,4 mg (mangaanchelaat van glycinehydraat), jodium 2,5 mg (calciumjodaat anhydraat), taurine 0,5 g; natuurlijke antioxidanten.', true, now(), 'sha256:2a21f815db79a6dc35eb460b003fc44011defae913499b0706d646b426fb3e81', null from p;

-- Specific — CPW Puppy all breeds (6 x 300 g)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cpw-puppy-all-breeds
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CPW Puppy all breeds', 'wet', '6 x 300 g', null, 'https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cpw-puppy-all-breeds', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Varken, maïs, eipoeder, zonnebloemolie, rijst, mineralen, cellulosepoeder, visolie, vitaminen en spoorelementen (inclusief gecheleerde sporenelementen), psyllium husk, gist (bron van β-1,3/1,6-glucanen). Bevat geen toegevoegde kunstmatige kleur- en smaakstoffen', true, now(), 'sha256:c1f8b5d21d73ae024420552c3edf14587a034438da27677143cb63acfbf0acb0', null from p;

-- Specific — CXD-S Adult Small breed (1 kg, 4 kg, 7 kg)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cxd-s-adult-small-breed
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CXD-S Adult Small breed', 'kibble', '1 kg, 4 kg, 7 kg', null, 'https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cxd-s-adult-small-breed', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Tarwe, maïseiwit, vismeel, varkensvet, bietenpulp (3,5%), gehydrolyseerd dierlijk eiwit, mineralen, visolie, eipoeder. Bevat geen toegevoegde kunstmatige kleur- en smaakstoffen. Toevoegingsmiddelen (per kg) : Nutritionele toevoegingsmiddelen: vitamine D3 1044 IE, koper 7,9 mg (koperchelaat van glycinehydraat), ijzer 85 mg (ijzersulfaat monohydraat), zink 101 mg (zinkchelaat van glycinehydraat), mangaan 5,8 mg (mangaanchelaat van glycinehydraat), jodium 2,0 mg (calciumjodaat anhydraat); natuurlijke antioxidanten.', true, now(), 'sha256:203540e16b66bdb71ab86cc3bb0a3efd473d5b44c8634150b5fa86e967d4003f', null from p;

-- Specific — CXD-XL Adult large & giant breed (4 kg, 12 kg)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cxd-xl-adult-large-giant-breed
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CXD-XL Adult large & giant breed', 'kibble', '4 kg, 12 kg', null, 'https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cxd-xl-adult-large-giant-breed', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Tarwe, maïseiwit, vismeel, bietenpulp (7%), varkensvet, maïs, gehydrolyseerd dierlijk eiwit, visolie, mineralen, eipoeder, psyllium husk. Bevat geen toegevoegde kunstmatige kleuren smaakstoffen. Toevoegingsmiddelen (per kg): Nutritionele toevoegingsmiddelen: vitamine D3 1044 IE, koper 10,1 mg (koperchelaat van glycinehydraat), ijzer 108 mg (ijzersulfaat monohydraat), zink 129 mg (zinkchelaat van glycinehydraat), mangaan 7,4 mg (mangaanchelaat van glycinehydraat), jodium 2,5 mg (calciumjodaat anhydraat), taurine 0,5 g, L-carnitine 300 mg; natuurlijke antioxidanten', true, now(), 'sha256:a610b6c965eafffc4a79d9a592bc91fcd664ea61c1277499e5e039291c732e8d', null from p;

-- Specific — CXW Adult all breeds (6 x 300 g)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cxw-adult-all-breeds
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CXW Adult all breeds', 'wet', '6 x 300 g', null, 'https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cxw-adult-all-breeds', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Varken, maïs, vitaminen en spoorelementen (inclusief gecheleerde sporenelementen), mineralen, eipoeder, cellulosepoeder, psyllium husk, dextrose, zonnebloemolie, xylose, gist (bron van β-1,3/1,6-glucanen). Bevat geen toegevoegde kunstmatige kleur- en smaakstoffen.', true, now(), 'sha256:c4cdd14fb9290e5266431bccb7f9334adb92059ba4caa7be618a3d7b16595683', null from p;

-- Specific — CGD-S Senior small breed (1 kg, 4 kg, 7 kg)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cgd-s-senior-small-breed
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CGD-S Senior small breed', 'kibble', '1 kg, 4 kg, 7 kg', null, 'https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cgd-s-senior-small-breed', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Tarwe, vismeel, maïseiwit, bietenpulp, varkensvet, gehydrolyseerd dierlijk eiwit, eipoeder, visolie, mineralen, gist (bron van mannan-oligo-sacchariden 0,1%). Bevat geen toegevoegde kunstmatige kleur- en smaakstoffen. Toevoegingsmiddelen (per kg): Nutritionele toevoegingsmiddelen: vitamine D3 814 IE, koper 4,6 mg (koperchelaat van glycinehydraat), ijzer 81 mg (ijzersulfaat monohydraat), zink 159 mg (zinkchelaat van glycinehydraat), mangaan 10,4 mg (mangaanchelaat van glycinehydraat), jodium 2,0 mg (calciumjodaat anhydraat), taurine 0,9 g, L-carnitine 300 mg; natuurlijke antioxidanten.', true, now(), 'sha256:6a09a8e068c09dd5127af73f4133c7ebc28823a5e996952f2525503a178f77d1', null from p;

-- Specific — CGD-M Senior medium breed (4 kg, 7 kg, 12 kg)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cgd-m-senior-medium-breed
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CGD-M Senior medium breed', 'kibble', '4 kg, 7 kg, 12 kg', null, 'https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cgd-m-senior-medium-breed', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Tarwe, vismeel, maïseiwit, bietenpulp, varkensvet, gehydrolyseerd dierlijk eiwit, eipoeder, visolie, mineralen, gist (bron van mannan-oligo-sacchariden 0,1%). Bevat geen toegevoegde kunstmatige kleur- en smaakstoffen. Toevoegingsmiddelen (per kg): Nutritionele toevoegingsmiddelen: vitamine D3 814 IE, koper 4,6 mg (koperchelaat van glycinehydraat), ijzer 81 mg (ijzersulfaat monohydraat), zink 159 mg (zinkchelaat van glycinehydraat), mangaan 10,4 mg (mangaanchelaat van glycinehydraat), jodium 2,0 mg (calciumjodaat anhydraat), taurine 0,9 g, L-carnitine 300 mg; natuurlijke antioxidanten.', true, now(), 'sha256:6a09a8e068c09dd5127af73f4133c7ebc28823a5e996952f2525503a178f77d1', null from p;

-- Specific — CGD-XL Senior large and giant breed (4 kg, 12 kg)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cgd-xl-senior-large-and-giant-breed
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CGD-XL Senior large and giant breed', 'kibble', '4 kg, 12 kg', null, 'https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cgd-xl-senior-large-and-giant-breed', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Tarwe, maïseiwit, vismeel, bietenpulp, varke nsvet, gehydrolyseerd dierlijk eiwit, eipoeder, visolie, mineralen, psyllium husk, gist (bron van mannan-oligo-sacchariden 0,1%). Bevat geen toegevoegde kunstmatige kleur- en smaakstoffen. Toevoegingsmiddelen (per kg): Nutritionele toevoegingsmiddelen: vitamine D3 814 IE, koper 4,4 mg (koperchelaat van glycinehydraat), ijzer 79 mg (ijzersulfaat monohydraat), zink 156 mg (zinkchelaat van glycinehydraat), mangaan 10,2 mg (mangaanchelaat van glycinehydraat), jodium 1,9 mg (calciumjodaat anhydraat), taurine 0,9 g, L-carnitine 300 mg; natuurlijke antioxidanten.', true, now(), 'sha256:eabeb8187eea6cd7590811c8ca8ce01500ba86f4bac3a2c580c19dc99db1abfd', null from p;

-- Specific — CGW Senior all breeds (6 x 300 g)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cgw-senior-all-breeds
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CGW Senior all breeds', 'wet', '6 x 300 g', null, 'https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cgw-senior-all-breeds', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Varken, maïs, vis, visolie, eipoeder, cellulosepoeder, vitaminen en spoorelementen, (inclusief gecheleerde sporenelementen), dextrose, mineralen, zonnebloemolie, psyllium husk, xylose, taurine, gist (bron van mannan-oligo-sacchariden en ß-1,3/1,6-glucanen), L-carnitine. Bevat geen toegevoegde kunstmatige kleur- en smaakstoffen.', true, now(), 'sha256:76c8aaf3bca0d1b87a3054a8819a422b94cf037da05cc4dbf7916400b45cd99a', null from p;

-- Specific — CAD Active (12 kg)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cad-active
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CAD Active', 'kibble', '12 kg', null, 'https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cad-active', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Tarwe, varkensvet, vismeel, maïseiwit, eipoeder, aardappeleiwit, rijst, mineralen, dextrose,gehydrolyseerd dierlijk eiwit, visolie, gist (inclusief bron van β-1,3/1,6-glucanen 0,1%), cellulosepoeder, psyllium husk. Bevat geen toegevoegde kunstmatige kleur- en smaakstoffen. Toevoegingsmiddelen (per kg) : Nutritionele toevoegingsmiddelen: vitamine D3 1420 IE, koper 7,1 mg (koperchelaat van glycinehydraat), ijzer 78 mg (ijzersulfaat monohydraat), zink 150 mg (zinkchelaat van glycinehydraat), jodium 3,0 mg (calciumjodaat anhydraat), taurine 1,5 g, L-carnitine 250 mg; natuurlijke antioxidanten.', true, now(), 'sha256:6900eb37492d04a0fca45c5e611cc4d7946922d1ab11d70b3346634ec1c3d5cb', null from p;

-- Specific — C-BIO-W with beef (5 x 150 g)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/c-bio-w-with-beef
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'C-BIO-W with beef', 'wet', '5 x 150 g', null, 'https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/c-bio-w-with-beef', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Varken* en rund* (tenminste 16% rund), kip*, spelt (2%), mineralen, koolzaadolie*, vitaminen en spoorelementen. *: van gecontroleerde, gecertificeerde biologische herkomst. Bevat geen toegevoegde kunstmatige antioxidanten, kleur- en smaakstoffen.', true, now(), 'sha256:d38101e7e28c81305ed6599d541b5e7442819d5e4c50503a6c3e220c8d7bb7cf', null from p;

-- Specific — C-BIO-W with fish (5 x 150 g)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/c-bio-w-with-fish
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'C-BIO-W with fish', 'wet', '5 x 150 g', null, 'https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/c-bio-w-with-fish', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Varken* en rund*, kip*, vis* (10%), spelt* (2%), mineralen, koolzaadolie*, vitaminen en spoorelementen. *: van gecontroleerde, gecertificeerde biologische herkomst. Bevat geen toegevoegde kunstmatige antioxidanten, kleur- en smaakstoffen.', true, now(), 'sha256:68df61b3cd57daf13ba5ede995b23e9c39a8c05823013c5a8444e76f587c914a', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
