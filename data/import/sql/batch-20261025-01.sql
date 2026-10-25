-- Automatisch overgenomen etiketten, batch 1 van 2026-10-25 (41 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- RAW4DOGS — Chicken (450 g / 1 kg)
-- bron: https://www.raw4dogs.nl/producten/chicken
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('RAW4DOGS', 'Chicken', 'raw', '450 g / 1 kg', null, 'https://www.raw4dogs.nl/producten/chicken', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip (87%) - bevleesde kippenrug, kippenmaag, kippenhart Groentemix (10%) - bloemkool, wortel, spinazie Zeewier (1%) Zalmolie (1%) Vitaminen en mineralen mix, cranberry (0,01%) Vitamine A 3.000 IE, Vitamine D3 300 IE, Vitamine E 100 mg, Vitamine C 30 mg, Biotine 50 μg', true, now(), 'sha256:d8678a8bd7e35f0eda9edd9ad6a869550f4c5ff4cdf0a97f70df0b2a9a5d2c20', null from p;

-- RAW4DOGS — Beef & chicken (450 g / 1 kg)
-- bron: https://www.raw4dogs.nl/producten/beef-chicken
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('RAW4DOGS', 'Beef & chicken', 'raw', '450 g / 1 kg', null, 'https://www.raw4dogs.nl/producten/beef-chicken', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rund (45%) - bevleesde tongbotjes, runderpens, runderhart Kip (42%) - bevleesde kippenrug Groentemix (10%) - bloemkool, wortel, spinazie Zeewier (1%) Zalmolie (1%) Vitaminen en mineralen mix Cranberry (0,01%) Vitamine A 3.000 IE, Vitamine D3 300 IE, Vitamine E 100 mg, Vitamine C 30 mg, Biotine 50 μg', true, now(), 'sha256:62a74a18d6dbfd1648316d75865969307c596291905bdb08d7295642c240e708', null from p;

-- RAW4DOGS — Lamb (450 g / 1 kg)
-- bron: https://www.raw4dogs.nl/producten/lamb
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('RAW4DOGS', 'Lamb', 'raw', '450 g / 1 kg', null, 'https://www.raw4dogs.nl/producten/lamb', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam (87%) - lamspens, lamsorganen, lamsvlees, bevleesde lamsribben, lamsvet Groentemix (10%) - bloemkool, wortel, spinazie Zeewier (1%) Zalmolie (1%) Vitaminen en mineralen mix Cranberry (0,01%) Vitamine A 3.000 IE, Vitamine D3 300 IE, Vitamine E 100 mg, Vitamine C 30 mg, Biotine 50 μg', true, now(), 'sha256:91936488c9f3dc1d8cda7591768c29f40097a81715f9f023a8bf528c19420b03', null from p;

-- RAW4DOGS — Duck (450 g / 1 kg)
-- bron: https://www.raw4dogs.nl/producten/duck
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('RAW4DOGS', 'Duck', 'raw', '450 g / 1 kg', null, 'https://www.raw4dogs.nl/producten/duck', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eend (87%) - bevleesde eendenrug, eendenvlees, eendennek, eendenhart Groentemix (10%) - bloemkool, wortel, spinazie Zeewier (1%) Zalmolie (1%) Vitaminen en mineralen mix Cranberry (0,01%) Vitamine A 3.000 IE, Vitamine D3 300 IE, Vitamine E 100 mg, Vitamine C 30 mg, Biotine 50 μg', true, now(), 'sha256:5b51d2ed5cdec6661fcef7992bdf16fe9f9f9648693f6c49de06680821ad89cc', null from p;

-- RAW4DOGS — Fish Mix (450 g / 1 kg)
-- bron: https://www.raw4dogs.nl/producten/fish-mix
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('RAW4DOGS', 'Fish Mix', 'raw', '450 g / 1 kg', null, 'https://www.raw4dogs.nl/producten/fish-mix', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Zalm (58%) - zalmlijven, zalmkoppen Hele ansjovis (15%) Hele haring (15%) Groentemix (10%) - bloemkool, wortel, spinazie Zeewier (1%) Vitaminen en mineralen mix Cranberry (0,01%) Vitamine A 3.000 IE, Vitamine D3 300 IE, Vitamine E 100 mg, Vitamine C 30 mg, Biotine 50 μg', true, now(), 'sha256:a61c3bdd05982fa9b9d7a237ff508a1a4f2e616ed222a204bbb5f52bfd73dd95', null from p;

-- RAW4DOGS — Game Mix (450 g / 1 kg)
-- bron: https://www.raw4dogs.nl/producten/game-mix
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('RAW4DOGS', 'Game Mix', 'raw', '450 g / 1 kg', null, 'https://www.raw4dogs.nl/producten/game-mix', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Fazant (37%) - bevleesd fazantenkarkas, fazantenorganen Haas (30%) - bevleesd hazenkarkas, hazenorganen Hert (20%) - gemalen hertenvlees Groentemix (10%) - bloemkool, wortel, spinazie Zeewier (1%) Zalmolie (1%) Vitaminen en mineralen mix Cranberry (0,01%) Vitamine A 3.000 IE, Vitamine D3 300 IE, Vitamine E 100 mg, Vitamine C 30 mg, Biotine 50 μg', true, now(), 'sha256:138253547b95a58bb739915ed7d200502440aac9487f209c26926f3cfd8eed0d', null from p;

-- RAW4DOGS — Barf 5 Mix (450 g / 1 kg)
-- bron: https://www.raw4dogs.nl/producten/barf-5-mix
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('RAW4DOGS', 'Barf 5 Mix', 'raw', '450 g / 1 kg', null, 'https://www.raw4dogs.nl/producten/barf-5-mix', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip (22%) - bevleesde kippenrug Zalm (20%) - zalmkoppen Eend (20%) - bevleesde eendenrug Lam (15%) - lamsorganen Rund (10%) - runderhart Groentemix (10%) - bloemkool, wortel, spinazie Zeewier (1%) Zalmolie (1%) Vitaminen en mineralen mix Cranberry (0,01%) Vitamine A 3.000 IE, Vitamine D3 300 IE, Vitamine E 100 mg, Vitamine C 30 mg, Biotine 50 μg', true, now(), 'sha256:8063eb2a03f17bd804408f16309b638c0ef8ec9b1ea4f2af54da4884eac3fc0b', null from p;

-- Rodi — Power Rund (400 g)
-- bron: https://rodi-petfood.nl/product/rodi-power/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Rodi', 'Power Rund', 'wet', '400 g', null, 'https://rodi-petfood.nl/product/rodi-power/', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rund (60%) (hart, vlees, lever, long, pens), skyr (4%), erwteneiwit, mineralen, sesamzaad (0,5%), sesamolie.', true, now(), 'sha256:1509bbeefedba8cf54763e0999ec64118dd2dd5da37027c030d17663c160185d', null from p;

-- Rodi — Shine Kip met Zalm (400 g)
-- bron: https://rodi-petfood.nl/product/rodi-shine/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Rodi', 'Shine Kip met Zalm', 'wet', '400 g', null, 'https://rodi-petfood.nl/product/rodi-shine/', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip (46%) (hart, vlees, maag, lever, nek, vet), zalm (14%), zoete aardappel (4%), wortel, heel ei, mineralen, bosbessen (1%), biergist, zalmolie (0,1%), zeealgen.', true, now(), 'sha256:070969ee64617a68d5eddabef2d8abb37b2e80aace8e529649f83ef1e892ea81', null from p;

-- Rodi — Balance Gevogelte (400 g)
-- bron: https://rodi-petfood.nl/product/rodi-balance/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Rodi', 'Balance Gevogelte', 'wet', '400 g', null, 'https://rodi-petfood.nl/product/rodi-balance/', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen (30%) (hart, vlees, maag, lever, nek), kip (30%) (hart, vlees, maag, lever, nek, vet), courgette (4%), rijst, peer (1,5%), mineralen, cellulose, zonnebloemolie.', true, now(), 'sha256:c1bb35125273325087e925adcb7ea5aa1cf6cd9946dc95533a11ada3e1d312f2', null from p;

-- Rodi — Sensitive Lam (400 g)
-- bron: https://rodi-petfood.nl/product/rodi-sensitive/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Rodi', 'Sensitive Lam', 'wet', '400 g', null, 'https://rodi-petfood.nl/product/rodi-sensitive/', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam (60%) (lever, long, vlees, hart, pens), boekweit, boerenkool (4%), mineralen, gember (0,2%), inuline (0,2%), bernagieolie.', true, now(), 'sha256:d52e42ec66ca8936a01c66443bb1bb9aa44787b5783a3f8b687209d9a597c82e', null from p;

-- Rodi — Vitality Kip (400 g)
-- bron: https://rodi-petfood.nl/product/rodi-vitality/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Rodi', 'Vitality Kip', 'wet', '400 g', null, 'https://rodi-petfood.nl/product/rodi-vitality/', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip (60%) (hart, vlees, lever, maag, nek, vet), quinoa, zoete aardappel (2%), appel (2%), mineralen, aardbei (1%), perzik (1%), zalmolie.', true, now(), 'sha256:0cf761b32e5926ca1e9d092eaba1b5727795d255d9ad4e07dcf3300d534cee08', null from p;

-- Rodi — Lam met Rijst (400 g)
-- bron: https://rodi-petfood.nl/product/lam-met-rijst/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Rodi', 'Lam met Rijst', 'wet', '400 g', null, 'https://rodi-petfood.nl/product/lam-met-rijst/', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (72%, 32% lam), granen (9% rijst), oliën en vetten (1% schapenvet), mineralen.', true, now(), 'sha256:dd2fb7a95756ea00847ac223cd6edfb4604595893229bedeac740659f49683fa', null from p;

-- Rodi — Kip met Rund (400 g)
-- bron: https://rodi-petfood.nl/product/kip-met-rund/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Rodi', 'Kip met Rund', 'wet', '400 g', null, 'https://rodi-petfood.nl/product/kip-met-rund/', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (81% verse kip, 4% runderlever), granen (rijst), mineralen.', true, now(), 'sha256:77206f73d9f523ae30cae41e8c8ceee703aaf7125bb8d65189d594ab0ebd4f68', null from p;

-- Rodi — Kip met Kaas (400 g)
-- bron: https://rodi-petfood.nl/product/kip-met-kaas/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Rodi', 'Kip met Kaas', 'wet', '400 g', null, 'https://rodi-petfood.nl/product/kip-met-kaas/', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (75% verse kip), granen (rijst), melk- en melkbijproducten (4% kaasblokjes), mineralen.', true, now(), 'sha256:5bd29a9e7c646e6d64f84b378d452723dfbe8efdf5e2522aba3c95f8b7722bda', null from p;

-- Rodi — Maaltijdburgers Kip met Rijst (1 kg)
-- bron: https://rodi-petfood.nl/product/daily-basics-hart/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Rodi', 'Maaltijdburgers Kip met Rijst', 'raw', '1 kg', null, 'https://rodi-petfood.nl/product/daily-basics-hart/', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip (75%) (kippenvlees, kipkarkas, kippenmaag, kippenlever), gewelde gepofte rijst (12%), gemalen wortels, gemalen erwten, vitamine- en mineralenmix, erwtenvezels, lijnzaadolie.', true, now(), 'sha256:66525aaa99b99e3cd5c9bc139d960deff06ef9138ba5dc6ec95fab8db0103299', null from p;

-- Rodi — Maaltijdburgers Rund met Pens (1 kg)
-- bron: https://rodi-petfood.nl/product/daily-basics-rund/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Rodi', 'Maaltijdburgers Rund met Pens', 'raw', '1 kg', null, 'https://rodi-petfood.nl/product/daily-basics-rund/', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rund (79%) (runderpens (26%), runderlong, rundvet, rundvlees, rundercollageen), gemalen wortels, gemalen spinazie, vitamine- en mineralen mix, erwtenvezels, lijnzaadolie.', true, now(), 'sha256:7ad01c0dc912e0ae59baaee5986c7186f3f96887bd4615792420c3763375e6ad', null from p;

-- Rodi — Maaltijdburgers Lam met Rijst (1 kg)
-- bron: https://rodi-petfood.nl/product/daily-basics-lam-met-rijst/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Rodi', 'Maaltijdburgers Lam met Rijst', 'raw', '1 kg', null, 'https://rodi-petfood.nl/product/daily-basics-lam-met-rijst/', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam (75%) (lamsvlees, lamspens, lamshart, lamslong), gewelde gepofte rijst (12%) gemalen wortels, gemalen spinazie, vitamine-en mineralen mix, erwtenvezels, lijnzaadolie.', true, now(), 'sha256:63eaf87a018abeb56d7e03e0ced0e580cd7a9fb7653cd5ce961b6bbf091379bd', null from p;

-- Rodi — Maaltijdburgers Rund met Hart (1 kg)
-- bron: https://rodi-petfood.nl/product/daily-basics-rund-met-pens/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Rodi', 'Maaltijdburgers Rund met Hart', 'raw', '1 kg', null, 'https://rodi-petfood.nl/product/daily-basics-rund-met-pens/', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rund (70%) (runderlong, rundernier, runderhart (8%), rundvlees, rundermilt, rundercollageen), gemalen wortels, gemalen erwten, vitamine-en mineralen mix, erwtenvezels, lijnzaadolie.', true, now(), 'sha256:bef9c9936869a7c1080e89b3cc84809e188018907d54332d4af3bb980a644c19', null from p;

-- Sanimed — Puppy (3 / 12,5 kg)
-- bron: https://www.sanimed.nl/producten/preventive/puppy/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Sanimed', 'Puppy', 'kibble', '3 / 12,5 kg', null, 'https://www.sanimed.nl/producten/preventive/puppy/', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, maïs, gedehydreerd gevogelte, gerst, gedroogde bietenpulp, dierlijk vet (gevogelte, rund), gedehydreerde vis, heeleipoeder, maïsgluten, gist, visolie, gedehydreerd lam, gehydrolyseerde kippenlever, gedehydreerde hemoglobine, lijnzaadolie, mineralen.', true, now(), 'sha256:9d12ba3e1b71766dcf725a59b54e8afe868e8cc086bef8a8b8b9b9719feee841', null from p;

-- Sanimed — Junior (3 / 12,5 kg)
-- bron: https://www.sanimed.nl/producten/preventive/junior/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Sanimed', 'Junior', 'kibble', '3 / 12,5 kg', null, 'https://www.sanimed.nl/producten/preventive/junior/', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, rijst, gerst, gedehydreerd gevogelte, gedroogde bietenpulp, dierlijk vet (rund, gevogelte), gedehydreerde vis, heeleipoeder, maïsgluten, gist, gedehydreerd lam, visolie, gehydrolyseerde kippenlever, gedehydreerde hemoglobine, lijnzaadolie, mineralen, fructo-oligosacchariden (FOS) en plantenextracten.', true, now(), 'sha256:7e5cab9c6bd6f1768c5d29e973efb447addeca2f6757b3d84d0ec71fcdcfb6dd', null from p;

-- Sanimed — Senior (3 / 12,5 kg)
-- bron: https://www.sanimed.nl/producten/preventive/senior/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Sanimed', 'Senior', 'kibble', '3 / 12,5 kg', null, 'https://www.sanimed.nl/producten/preventive/senior/', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gerst, rijst, gedehydreerd gevogelte, gedroogde bietenpulp, dierlijk vet (gevogelte), visolie, gist, gedehydreerde vis, gedehydreerd lam, heeleipoeder, gehydrolyseerde kippenlever, mineralen.', true, now(), 'sha256:94506a6f112ec2af0351bab51c45270393ebf7f5a974c98a6f091c5bd9c9aa31', null from p;

-- Sanimed — Adult Small Breed (3 kg)
-- bron: https://www.sanimed.nl/producten/preventive/adult-small-breed/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Sanimed', 'Adult Small Breed', 'kibble', '3 kg', null, 'https://www.sanimed.nl/producten/preventive/adult-small-breed/', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, maïs, gerst, gedehydreerd gevogelte, gedroogde bietenpulp, dierlijk vet (gevogelte), visolie, gedehydreerde vis, gist, maïsgluten, gehydrolyseerde kippenlever, mineralen, heeleipoeder, gedehydreerde hemoglobine, lijnzaadolie, cellulose.', true, now(), 'sha256:237a3bdf08799a722193b4191b6f1e88bb839ed6b4fbc3e6fdb9be6f5938652f', null from p;

-- Sanimed — Adult (3 / 12,5 kg)
-- bron: https://www.sanimed.nl/producten/preventive/adult/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Sanimed', 'Adult', 'kibble', '3 / 12,5 kg', null, 'https://www.sanimed.nl/producten/preventive/adult/', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, maïs, gerst, gedehydreerd gevogelte, gedroogde bietenpulp, dierlijk vet (gevogelte, rund), visolie, gedehydreerde vis, gist, gedehydreerd lam, maïsgluten, heeleipoeder, gehydrolyseerde kippenlever, gedehydreerde hemoglobine, mineralen, cellulose, lijnzaadolie.', true, now(), 'sha256:2033b6c7e8605d832882570182be93d227643a85728a02c52adf0531b6cb3e2c', null from p;

-- Sanimed — Anti-Struvite (3 / 12,5 kg)
-- bron: https://www.sanimed.nl/producten/curative/anti-struvite/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Sanimed', 'Anti-Struvite', 'kibble', '3 / 12,5 kg', null, 'https://www.sanimed.nl/producten/curative/anti-struvite/', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gerst, maïszetmeel, dierlijk vet (gevogelte, rund), rijst, gedehydreerd gevogelte, dierlijk eiwitextract, plantaardig vet, heeleipoeder, visolie, gehydrolyseerde kippenlever, gist, mineralen, cellulose.', true, now(), 'sha256:adeb6c22ca73bf2062c5968c9598a5ba2ddf34f82d3ce75ea22deabb0cc22f0e', null from p;

-- Sanimed — Weight Reduction (3 / 12,5 kg)
-- bron: https://www.sanimed.nl/producten/curative/weight-reduction/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Sanimed', 'Weight Reduction', 'kibble', '3 / 12,5 kg', null, 'https://www.sanimed.nl/producten/curative/weight-reduction/', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedehydreerd gevogelte, cellulose, gedroogde bietenpulp, gestructureerd plantaardig vet, gedroogde aardappel, aardappeleiwit, maïsgluten, gedroogde appel, gerst, erwten, gedroogd johannesbrood, geëxtraheerde sojabonen, gist, dierlijk vet (gevogelte), lijnzaad, gedroogde luzerne, gehydrolyseerde kippenlever.', true, now(), 'sha256:82ff2228950498ae83a4dc7806cbb823fa68d068e368d17c8344e6e20e1a0894', null from p;

-- Sanimed — Skin/Sensitive (3 / 12,5 kg)
-- bron: https://www.sanimed.nl/producten/curative/skin-sensitive/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Sanimed', 'Skin/Sensitive', 'kibble', '3 / 12,5 kg', null, 'https://www.sanimed.nl/producten/curative/skin-sensitive/', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst (54%), gehydrolyseerde vis (12%), aardappeleiwit, dierlijk vet (gevogelte), visolie, gedroogde bietenpulp, mineralen, soja-eiwitconcentraat, gehydrolyseerde kippenlever, borageolie, lijnzaadolie.', true, now(), 'sha256:a96a86afeb13bdc096cd44fb6b62e47dff07c2f307fac4b9570edd4a6202aa45', null from p;

-- Sanimed — Weight Control (3 / 12,5 kg)
-- bron: https://www.sanimed.nl/producten/curative/weight-control/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Sanimed', 'Weight Control', 'kibble', '3 / 12,5 kg', null, 'https://www.sanimed.nl/producten/curative/weight-control/', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedehydreerd gevogelte, gerst, cellulose, gedroogde bietenpulp, aardappeleiwit, gedroogde appel, maïsgluten, geëxtraheerde sojabonen, erwten, gedroogde aardappel, gedroogde johannesbrood, gist, dierlijk vet (gevogelte), gedroogde luzerne, lijnzaad, gehydrolyseerde kippenlever.', true, now(), 'sha256:6958364fa301c204a1434bc96ea2d907d4ee80b38f108705b17a4f0aa7ebee3c', null from p;

-- Sanimed — Osteoarthritis (3 / 12,5 kg)
-- bron: https://www.sanimed.nl/producten/curative/osteoarthritis/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Sanimed', 'Osteoarthritis', 'kibble', '3 / 12,5 kg', null, 'https://www.sanimed.nl/producten/curative/osteoarthritis/', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gerst, gedehydreerd gevogelte, gedroogde bietenpulp, rijstzemelen, lijnzaadolie, visolie (3,6%), gehydrolyseerd collageeneiwit (2,5%), gist, lijnzaad, gehydrolyseerde kippenlever, cellulose, mineralen, dierlijk vet (gevogelte), gistextract (bron van bèta-glucanen, 0,08%).', true, now(), 'sha256:d4295891b561ccd2e541df0532cc8026f0ee6573d6199628e9708211ccd0dd0a', null from p;

-- Sanimed — Neuro Support (3 / 12,5 kg)
-- bron: https://www.sanimed.nl/producten/curative/neuro-support/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Sanimed', 'Neuro Support', 'kibble', '3 / 12,5 kg', null, 'https://www.sanimed.nl/producten/curative/neuro-support/', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gerst, gedehydreerd gevogelte, gedroogde bietenpulp, gefractioneerde plantaardige olie (mct) 5,5%, dierlijk vet (gevogelte), mineralen, gehydrolyseerde kippenlever.', true, now(), 'sha256:7a8f8cb846f6a027733bb710b50347aba668c8cc22d1caab9b0c7b1e4fa7f9c2', null from p;

-- Sanimed — Renal (3 / 12,5 kg)
-- bron: https://www.sanimed.nl/producten/curative/renal/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Sanimed', 'Renal', 'kibble', '3 / 12,5 kg', null, 'https://www.sanimed.nl/producten/curative/renal/', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gerst, maïs, rijst, dierlijk vet (gevogelte), gedehydreerd gevogelte, gedroogde bietenpulp, visolie, heeleipoeder, gist, maïsgluten, gehydrolyseerde kippenlever, mineralen.', true, now(), 'sha256:64c2ac51edfe5a9b362097d7b6b0d6437ac790d947260961be0ce9a1122a8abc', null from p;

-- Sanimed — Hypoallergenic DR (3 / 12,5 kg)
-- bron: https://www.sanimed.nl/producten/curative/hypoallergenic-dr/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Sanimed', 'Hypoallergenic DR', 'kibble', '3 / 12,5 kg', null, 'https://www.sanimed.nl/producten/curative/hypoallergenic-dr/', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst (45%), gedehydreerde eend (22%), dierlijk vet (rund, gevogelte), gedroogde bietenpulp, mineralen, gist, gehydrolyseerde kippenlever (1%), lijnzaad.', true, now(), 'sha256:c6c487590deefa1853fd5fa4efa92c07a2ab3c03a37c12e092c89945b191e7dc', null from p;

-- Sanimed — Hypoallergenic LR (3 / 12,5 kg)
-- bron: https://www.sanimed.nl/producten/curative/hypoallergenic-lr/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Sanimed', 'Hypoallergenic LR', 'kibble', '3 / 12,5 kg', null, 'https://www.sanimed.nl/producten/curative/hypoallergenic-lr/', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, rijst (28%), gedehydreerd lam (16%), maïsgluten, gedroogde bietenpulp, dierlijk vet (rund), gist, mineralen, gehydrolyseerde kippenlever (0,7%), visolie, lijnzaadolie.', true, now(), 'sha256:5fe5a5eca39641fc6ce652d003a96d408d253f4faa8dc52b2322fde8493232ef', null from p;

-- Sanimed — Intestinal (1,5 / 3 / 12,5 kg)
-- bron: https://www.sanimed.nl/producten/curative/intestinal/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Sanimed', 'Intestinal', 'kibble', '1,5 / 3 / 12,5 kg', null, 'https://www.sanimed.nl/producten/curative/intestinal/', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, erwteneiwitisolaat, insectenmeel (13%), aardappelzetmeel, mineralen, dierlijk vet (gevogelte), visolie, gedroogde bietenpulp, gehydrolyseerde kippenlever, gistextract (bron van bètaglucanen) (0,08%).', true, now(), 'sha256:92933c3132796c5538c4934d2a4ca8c6e1d7bf8cd4a3870195990c5c0d794937', null from p;

-- Sanimed — Dental (3 / 12,5 kg)
-- bron: https://www.sanimed.nl/producten/curative/dental/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Sanimed', 'Dental', 'kibble', '3 / 12,5 kg', null, 'https://www.sanimed.nl/producten/curative/dental/', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, maïs, gedehydreerd gevogelte, gedehydreerde aardappel, cellulose, gedehydreerde bietenpulp, dierlijk vet (gevogelte), gehydrolyseerde kippenlever, gist, visolie (zalm), maïsgluten, natriumtripolyfosfaat (0,7%), lijnzaadolie (geraffineerd), rijstzemelen.', true, now(), 'sha256:9b88267c67d3a73d8732562d3f48b230858957432e1b26120d378ad27b992e1b', null from p;

-- Sanimed — Hypoallergenic DR worst (400 g)
-- bron: https://www.sanimed.nl/producten/curative/hypoallergenic-dr-worst/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Sanimed', 'Hypoallergenic DR worst', 'wet', '400 g', null, 'https://www.sanimed.nl/producten/curative/hypoallergenic-dr-worst/', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eend (75%), rijst (11%), lamsvet, mineralen, cellulose.', true, now(), 'sha256:68bb1c3d1974cd0409d50be5508a21400d11b081d7d420f41986d4d2eb502c89', null from p;

-- Sanimed — Hypoallergenic LR worst (400 g)
-- bron: https://www.sanimed.nl/producten/curative/hypoallergenic-lr-worst/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Sanimed', 'Hypoallergenic LR worst', 'wet', '400 g', null, 'https://www.sanimed.nl/producten/curative/hypoallergenic-lr-worst/', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lamsvlees (53%), rijst (14%), lamsvet, mineralen, cellulose, zalmolie, lijnzaadolie.', true, now(), 'sha256:6172528a5bd374a2498d69117aa4dda8c0719e6b70fb0d7468e5fd459d629c36', null from p;

-- Sanimed — Clinical Choice Pure Duck worst (400 g)
-- bron: https://www.sanimed.nl/producten/curative/clinical-choice-pure-duck-worst/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Sanimed', 'Clinical Choice Pure Duck worst', 'wet', '400 g', null, 'https://www.sanimed.nl/producten/curative/clinical-choice-pure-duck-worst/', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eend (75%), rijst (11%), mineralen, cellulose.', true, now(), 'sha256:4d35ceedf4e846dcdcf716ecda10d01fa177b8da58ca5d74e2b8f8a12e452e99', null from p;

-- Sanimed — Weight Reduction worst (400 g)
-- bron: https://www.sanimed.nl/producten/curative/weight-reduction-worst/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Sanimed', 'Weight Reduction worst', 'wet', '400 g', null, 'https://www.sanimed.nl/producten/curative/weight-reduction-worst/', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lamsvlees (18,8%), cellulose (8,5%), aardappeleiwit, rijst, gedehydreerd gevogelte, plasma-eiwit, gehydrolyseerde kippenlever, mineralen.', true, now(), 'sha256:0af3e78e69d169a1bc32a12292caa9e3c733b1372fc3c99693f4b7edbb464967', null from p;

-- Sanimed — Recovery worst (400 g)
-- bron: https://www.sanimed.nl/producten/curative/recovery-worst/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Sanimed', 'Recovery worst', 'wet', '400 g', null, 'https://www.sanimed.nl/producten/curative/recovery-worst/', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rundvlees (55,5%) , plasma-eiwit, dierlijk vet (rund), rijst, mineralen, plantaardige olie, visolie, cellulose.', true, now(), 'sha256:8b92208f5243bcdad9b0d62545dc52f85d28ee605846692a9e43639483ae98a4', null from p;

-- Sanimed — Skin/Sensitive worst (400 g)
-- bron: https://www.sanimed.nl/producten/curative/skin-sensitive-worst/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Sanimed', 'Skin/Sensitive worst', 'wet', '400 g', null, 'https://www.sanimed.nl/producten/curative/skin-sensitive-worst/', date '2026-10-25', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gehydrolyseerde vis (13,4%), rijst (12%), rijstebloem, dierlijk vet, cellulose, visolie, mineralen, gehydrolyseerde kippenlever, zonnebloemolie, borageolie.', true, now(), 'sha256:ff9b822285006c0cfcb7c396bda81d11f7b961c407b08c8ff201c7decf8ee9aa', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
