-- Automatisch overgenomen etiketten, batch 6 van 2026-10-21 (46 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site zegt daarna:
-- "automatisch overgenomen van <domein> op <datum> · nog niet door een mens
-- nagelopen". Er wordt hier geen enkele controle door een mens geclaimd.
begin;

-- Kivo — Kalkoen compleet (500 / 1000 g (worst); 500 g portieverpakking (blokjes van 25 g))
-- bron: https://www.kivopetfood.nl/p/kalkoen-compleet/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Kalkoen compleet', 'raw', '500 / 1000 g (worst); 500 g portieverpakking (blokjes van 25 g)', null, 'https://www.kivopetfood.nl/p/kalkoen-compleet/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Deze maaltijd bestaat voor 100% uit vers kalkoenvlees. Dit wordt samengesteld uit: 65% spiervlees: kalkoenvlees, kalkoen MDM 20% orgaanvlees: kalkoenhart, kalkoenmaag 15% bot: kalkoenkarkas', true, now(), 'sha256:bb79f366c325484a6d205a8cec1e15738f88da1ae3afe941bf75f297e3e636f1', null from p;

-- Kivo — Rund & Kip compleet (250 / 500 / 1000 g)
-- bron: https://www.kivopetfood.nl/p/rund-kip-compleet/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Rund & Kip compleet', 'raw', '250 / 500 / 1000 g', null, 'https://www.kivopetfood.nl/p/rund-kip-compleet/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Deze maaltijd bestaat voor 60% uit vers rundvlees en voor 40% uit vers kippenvlees. Dit wordt samengesteld uit: – 65% spiervlees: kippenvlees, rundertrimmings, runderhart. – 20% orgaanvlees: runderpens, rundernier, runderlong, rundermilt, runderlever. – 15% bot: kipkarkas.', true, now(), 'sha256:a53d27360bf296c94b0d33ec9645db63bf0123b4632679941468135596aa2a4d', null from p;

-- Kivo — Rund & Kip Compleet Portie (500 g portieverpakking (blokjes van 25 g))
-- bron: https://www.kivopetfood.nl/p/rund-kip-compleet-portie/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Rund & Kip Compleet Portie', 'raw', '500 g portieverpakking (blokjes van 25 g)', null, 'https://www.kivopetfood.nl/p/rund-kip-compleet-portie/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Deze maaltijd bestaat voor 60% uit vers rundvlees en voor 40% uit vers kippenvlees. Dit wordt samengesteld uit: – 70% spiervlees: kippenvlees, rundertrimmings, runderhart. – 20% orgaanvlees: runderpens, rundernier, runderlong, rundermilt, runderlever. – 10% bot: kipkarkas.', true, now(), 'sha256:f05a2e46ece198e712ef833bab07eeba41f4d50b4c8bbbbaa4eb6374701de8b6', null from p;

-- Kivo — Rund & Eend puppy (250 / 500 g)
-- bron: https://www.kivopetfood.nl/p/rund-eend-puppy/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Rund & Eend puppy', 'raw', '250 / 500 g', null, 'https://www.kivopetfood.nl/p/rund-eend-puppy/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Deze maaltijd bestaat voor 60% uit verse rund en voor 40% uit vers eend. Dit wordt samengesteld uit: – 65% spiervlees: eendenvlees, rundertrimmings, runderhart. – 20% orgaanvlees: runderlever, rundermilt, rundernier, runderlong, runderpens, eendenhart, eendenniertjes. – 15% bot: eendenkarkas.', true, now(), 'sha256:2df42a38e16da471c0c930f7e5463825254d63cd29bf2da26682f9a742b2db0d', null from p;

-- Kivo — Rund & Kip puppy (250 / 500 / 1000 g)
-- bron: https://www.kivopetfood.nl/p/rund-kip-puppy/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Rund & Kip puppy', 'raw', '250 / 500 / 1000 g', null, 'https://www.kivopetfood.nl/p/rund-kip-puppy/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Deze maaltijd bestaat voor 60% uit vers rundvlees en voor 40% uit vers kippenvlees. Dit wordt samengesteld uit: – 70% spiervlees: kippenvlees, rundertrimmings, runderhart. – 20% orgaanvlees: runderpens, rundernier, runderlong, rundermilt, runderlever. – 10% bot: kipkarkas.', true, now(), 'sha256:f05a2e46ece198e712ef833bab07eeba41f4d50b4c8bbbbaa4eb6374701de8b6', null from p;

-- Kivo — Rund & Eend compleet (500 / 1000 g)
-- bron: https://www.kivopetfood.nl/p/rund-eend-compleet/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Rund & Eend compleet', 'raw', '500 / 1000 g', null, 'https://www.kivopetfood.nl/p/rund-eend-compleet/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Deze maaltijd bestaat voor 60% uit verse rund en voor 40% uit verse eend. Dit wordt samengesteld uit: – 65% spiervlees: eendenvlees, rundertrimmings, runderhart. – 20% orgaanvlees: runderlever, rundermilt, rundernier, runderlong, runderpens, eendenhart, eendenniertjes. – 15% bot: eendenkarkas.', true, now(), 'sha256:60c20ef6d2a21c50fb92311bab20854ed3a3ba7cd735ddb1a336fc8b947b3a4c', null from p;

-- Kivo — Lam compleet (500 g)
-- bron: https://www.kivopetfood.nl/p/lam-compleet/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Lam compleet', 'raw', '500 g', null, 'https://www.kivopetfood.nl/p/lam-compleet/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Deze maaltijd bestaat voor 100% uit vers lamsvlees. Dit wordt samengesteld uit: 65% spiervlees: Lamsnippers & trimmings 20% orgaanvlees: lamspluck (lever, hart, long), lamspens 15% bot: lamsbot', true, now(), 'sha256:ce873bf92882e9c08b2a0b1fa5ed1bf49d15fbc14dad411ce00a6ed5f505bdcc', null from p;

-- Kivo — 5 Diersoorten compleet (500 / 1000 g)
-- bron: https://www.kivopetfood.nl/p/5-diersoorten-compleet/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', '5 Diersoorten compleet', 'raw', '500 / 1000 g', null, 'https://www.kivopetfood.nl/p/5-diersoorten-compleet/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Deze complete maaltijd bestaat voor 40% uit rund, 20% uit eend, 20% uit kalkoen, 10% uit zalm en 10% uit paling. Dit wordt samengesteld uit: – 65% spiervlees: rundertrimmings, runderhart, kalkoenvlees, zalmlijven, palinglijven. – 20% orgaanvlees: runderpens, rundernier, rundermilt, runderlong, runderlever, eendenhart, eendenniertjes. – 15% bot: eendenkarkas, kalkoenkarkas', true, now(), 'sha256:2951712b5e7ab2e03887225e64824e4c3e949b34b4a4fffe499e18aaced4597e', null from p;

-- Kivo — Kip & Vis compleet (500 / 1000 g)
-- bron: https://www.kivopetfood.nl/p/kip-vis-compleet/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Kip & Vis compleet', 'raw', '500 / 1000 g', null, 'https://www.kivopetfood.nl/p/kip-vis-compleet/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Deze maaltijd bestaat voor 65% uit vers kippenvlees, 20% verse paling en voor 15% uit verse zalm. Dit wordt samengesteld uit: – 65% spiervlees: kippenvlees, kip MDM, zalmlijven, palinglijven – 20% orgaanvlees: kippenmaag, kippenhart, kippenlever. – 15% bot: kipkarkas', true, now(), 'sha256:c61ee2abcfc701af9344cf70f347e37fa648635971adbce80075c51f0bf515c4', null from p;

-- Kivo — Kip compleet (500 / 1000 g)
-- bron: https://www.kivopetfood.nl/p/kip-compleet/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Kip compleet', 'raw', '500 / 1000 g', null, 'https://www.kivopetfood.nl/p/kip-compleet/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Deze maaltijd bestaat voor 100% uit vers kippenvlees Dit wordt samengesteld uit: 65% spiervlees: kippenvlees 20% orgaanvlees: kippenhart, kippenmaag, kippenlever, 15% bot: kipkarkas', true, now(), 'sha256:6a1a6a62d4d60fb90289d93b1856088e60f3978e1a844d08af9fe759efe7deb0', null from p;

-- Kivo — Rund compleet (500 / 1000 g)
-- bron: https://www.kivopetfood.nl/p/rund-compleet/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Rund compleet', 'raw', '500 / 1000 g', null, 'https://www.kivopetfood.nl/p/rund-compleet/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Deze maaltijd bestaat uit 100% vers rundvlees. Dit wordt samengesteld uit: – 65% spiervlees: rundertrimmings, runderhart – 20% orgaanvlees: runderpens, rundernier, rundermilt, runderlong, runderlever. – 15% bot: runderbot', true, now(), 'sha256:d1b65a2a874d2f837f0e76c871d6f126953b6b8c3647601b65da5f9ba8820dd5', null from p;

-- Kivo — Paard & Konijn compleet (500 g)
-- bron: https://www.kivopetfood.nl/p/paard-konijn-compleet/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Paard & Konijn compleet', 'raw', '500 g', null, 'https://www.kivopetfood.nl/p/paard-konijn-compleet/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Deze maaltijd bestaat voor 80% uit vers paardenvlees en voor 20% uit vers konijnenvlees. Dit wordt samengesteld uit: 65% spiervlees: paardentrimmings, konijnenvlees 20% orgaanvlees: paardennieren, paardenlong, paardenhart, paardenlever, konijnenniertjes 15% bot: konijnenkarkassen', true, now(), 'sha256:34d16e7b0e4591b59ae2bfd712ff2d2578df79095852651dd8edafcc7b97deac', null from p;

-- Kivo — Gestoomde lam (600 g)
-- bron: https://www.kivopetfood.nl/p/gestoomde-lam/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Gestoomde lam', 'wet', '600 g', null, 'https://www.kivopetfood.nl/p/gestoomde-lam/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '78% lamsvlees (5% hart, 8% pluck (lever, long, longhaas), 15% zilvervliesrijst, 3% groenten, 2% fruit, vitamines en mineralen.', true, now(), 'sha256:36153d48eb52c042606e5ef2304bd99080f88e3e16faaf2d0432b95bcc47b110', null from p;

-- Kivo — Gestoomde eend (600 g)
-- bron: https://www.kivopetfood.nl/p/gestoomde-eend/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Gestoomde eend', 'wet', '600 g', null, 'https://www.kivopetfood.nl/p/gestoomde-eend/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '78% eendenvlees (met 5% hart, 3% lever), 15% zilvervliesrijst, 3% groenten, 2% fruit, vitamines en mineralen.', true, now(), 'sha256:f37c5321b6278040d7ae250281a41fb36a62636712168b63d3e54ade70031b1d', null from p;

-- Kivo — Gestoomde Kip & Zalm (600 g)
-- bron: https://www.kivopetfood.nl/p/gestoomde-kip-zalm/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Gestoomde Kip & Zalm', 'wet', '600 g', null, 'https://www.kivopetfood.nl/p/gestoomde-kip-zalm/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '71% kippenvlees (met 5% hart en 5% lever), 8% zalm, 15% zilvervliesrijst, 3% groenten, 2% fruit, vitamines en mineralen.', true, now(), 'sha256:56f87086b13eda9e0faade65a60a4018d3374e91d405e165b721491ebae72a1d', null from p;

-- Kivo — Gestoomde Rund & Kip (600 g)
-- bron: https://www.kivopetfood.nl/p/gestoomde-rund-kip/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Gestoomde Rund & Kip', 'wet', '600 g', null, 'https://www.kivopetfood.nl/p/gestoomde-rund-kip/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '57% kippenvlees, 21% rundvlees ( met 5% hart, 5% long, 5% milt/nier, 3% lever), 15% zilvervliesrijst, 3% groenten, 2% fruit, vitamines en mineralen.', true, now(), 'sha256:0ab9d6d2f57d1b5b21d149972af96d712c048babd978d413c750882e80ae9c21', null from p;

-- Kivo — Gestoomde rund (600 g)
-- bron: https://www.kivopetfood.nl/p/gestoomde-rund/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Gestoomde rund', 'wet', '600 g', null, 'https://www.kivopetfood.nl/p/gestoomde-rund/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '78% rundvlees (met 5% hart, 5% long, 5% milt/nier, 3% lever) , 15% zilvervliesrijst, 3% groenten, 2% fruit, vitamines en mineralen.', true, now(), 'sha256:55643bd07d8f3e795be8ce5152765a2d6754da0f3375120cbc68e809aaa7c57a', null from p;

-- Kivo — Gestoomde Kip (600 g)
-- bron: https://www.kivopetfood.nl/p/gestoomde-kip/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Kivo', 'Gestoomde Kip', 'wet', '600 g', null, 'https://www.kivopetfood.nl/p/gestoomde-kip/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '78% kippenvlees (met 5% hart en 5% lever), 15% zilvervliesrijst, 3% groenten, 2% fruit, vitamines en mineralen.', true, now(), 'sha256:6bf8d36c93fb3886c67363bb61d425f13c725f6cae1839d9c45608ec51106f5c', null from p;

-- Riverwood — Rendier & Hert met Wild Zwijn (2 / 12 kg)
-- bron: https://www.riverwoodpetfood.com/products/rendier-hert-met-wild-zwijn
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Rendier & Hert met Wild Zwijn', 'kibble', '2 / 12 kg', null, 'https://www.riverwoodpetfood.com/products/rendier-hert-met-wild-zwijn', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rendier gedehydreerd 26%, hert gedehydreerd 15%, gele erwten 15%, gele-erwtenzetmeel 14%, pluimveevet geconserveerd met tocoferolen 8%, gedroogde appelpulp 7%, wildzwijn gedehydreerd 5%, erwteneiwit 5%, gehydrolyseerd eiwit 2%, spinazie 1%, teunisbloemolie 0,5%, wortels 0,5%, glucosaminesulfaat 220 mg/kg, mannan-oligosachariden 150 mg/kg, chondroïtinesulfaat 130 mg/kg, fructo-oligosachariden 100 mg/kg, Yucca schidigera 90 mg/kg, goudsbloem 80 mg/kg, brandnetel80 mg/kg, spirulina35 mg/kg, kurkuma 30 mg/kg, citruspulp 30 mg/kg, veenbessen 30 mg/kg, kamille 25 mg/kg, kaneel 25 mg/kg', true, now(), 'sha256:aa4af5fa21c3a8564969892c3993761ae79ecd1e16f534c501aa80d226c81f5d', null from p;

-- Riverwood — Adult Large Breed Eend & Kalkoen met Fazant (2 / 12 kg)
-- bron: https://www.riverwoodpetfood.com/products/adult-large-breed-eend-kalkoen-met-fazant
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Adult Large Breed Eend & Kalkoen met Fazant', 'kibble', '2 / 12 kg', null, 'https://www.riverwoodpetfood.com/products/adult-large-breed-eend-kalkoen-met-fazant', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'eend gedehydreerd 28%, kalkoen gedehydreerd 16%, gele erwten 16%, gele erwtenzetmeel15%, pluimveevet geconserveerd met tocoferolen 8%, gedroogde appelpulp 6%, fazant gedehydreerd 4%, erwteneiwit 2%, gehydrolyseerd eiwit 2%, spinazie 1%, teunisbloemolie 0,5%, wortels 0,5%, glucosaminesulfaat 240 mg/kg, mannan-oligosachariden 150 mg/kg, chondroïtinesulfaat 140 mg/kg, fructo-oligosachariden100 mg/kg, Yucca schidigera 90 mg/kg, goudsbloem 80 mg/kg, brandnetel 80 mg/kg, spirulina 35 mg/kg, kurkuma 30 mg/kg, citruspulp 30 mg/kg, veenbessen 30 mg/kg, kamille 25 mg/kg, kaneel25 mg/kg', true, now(), 'sha256:2affdd65aacce404b11f6d2420e9deafbc3c554a5bdd5f4afde0522c8da4323c', null from p;

-- Riverwood — Junior Large Breed Eend & Kalkoen met Fazant (2 / 12 kg)
-- bron: https://www.riverwoodpetfood.com/products/junior-xl-eend-kalkoen-met-fazant
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Junior Large Breed Eend & Kalkoen met Fazant', 'kibble', '2 / 12 kg', null, 'https://www.riverwoodpetfood.com/products/junior-xl-eend-kalkoen-met-fazant', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'eend gedehydreerd (26%), kalkoen gedehydreerd (17%), gele erwten (16%), gele-erwtenzetmeel (14%), pluimveevet (geconserveerd met tocoferolen, 8%), gedroogde appelpulp (7%), fazant gedehydreerd (4%), erwteneiwit (3%), gehydrolyseerd eiwit (2%), spinazie (1%), teunisbloemolie (0,5%), wortels (0,5%), glucosaminesulfaat (290 mg/kg), mannan-oligosachariden (170 mg/kg), chondroïtinesulfaat (160 mg/kg), fructo-oligosachariden (110 mg/kg), Yucca schidigera (95 mg/kg), goudsbloem (90 mg/kg), brandnetel (90 mg/kg), spirulina (40 mg/kg), kurkuma (35 mg/kg), citruspulp (35 mg/kg), veenbessen (35 mg/kg), kamille (30 mg/kg), kaneel (30 mg/kg)', true, now(), 'sha256:f4e2d7468b2408dd4c7922572160dcf0191bf1326523ce17c6cf0316adb6fe5b', null from p;

-- Riverwood — Hert & Lam met Konijn (2 / 12 kg)
-- bron: https://www.riverwoodpetfood.com/products/hert-lam-met-konijn
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Hert & Lam met Konijn', 'kibble', '2 / 12 kg', null, 'https://www.riverwoodpetfood.com/products/hert-lam-met-konijn', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'hert gedehydreerd (26%), lam gedehydreerd (20%), gele erwten (19%), pluimveevet (geconserveerd met tocoferolen, 9%), gele-erwtenzetmeel (9%), gedroogde appelpulp (6%), konijn gedehydreerd (4%), erwteneiwit (2%), gehydrolyseerd eiwit (2%), spinazie (1%), teunisbloemolie (0,5%), wortels (0,5%), glucosaminesulfaat (220 mg/kg), mannan-oligosachariden (150 mg/kg), chondroïtinesulfaat (130 mg/kg), fructo-oligosachariden (100 mg/kg), Yucca schidigera (90 mg/kg), goudsbloem (80 mg/kg), brandnetel (80 mg/kg), spirulina (35 mg/kg), kurkuma (30 mg/kg), citruspulp (30 mg/kg), veenbessen (30 mg/kg), kamille (25 mg/kg), kaneel (25 mg/kg).', true, now(), 'sha256:b455847d8c37b13f5406fb65cdf6e4d13ae8a4e536d5a616a13d7b726b5c2002', null from p;

-- Riverwood — Forel & Makreel met Haring (2 / 12 kg)
-- bron: https://www.riverwoodpetfood.com/products/forel-makreel-met-haring
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Forel & Makreel met Haring', 'kibble', '2 / 12 kg', null, 'https://www.riverwoodpetfood.com/products/forel-makreel-met-haring', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'forel gedehydreerd 35%, gele erwten 30%, makreel gedehydreerd 14%, pluimveevet (geconserveerd met tocoferolen) 8%, haring gedehydreerd 4%, gedroogde appelpulp 2,5%, zalmolie 2%, gehydrolyseerd eiwit 2%, lijnaad 2%, erwtenmeel, glucosaminesulfaat 0,026%, chondroïtinesulfaat 0,016%, fructo-oligosacchariden 0,02%, mannan-oligosacchariden 0,015%, yucca schidigera 90 mg/kg, goudsbloem 80 mg/kg, brandnetel 80 mg/kg, spirulina 35 mg/kg, kurkuma 30 mg/kg, citruspulp 30 mg/kg, veebessen 30 mg/kg, kamille 25 mg/kg, kaneel 25 mg/kg', true, now(), 'sha256:f1a57718be0793bd907077b2ba9ef5b92ce8c5acc25f22b062e9b68d004ebf7d', null from p;

-- Riverwood — Adult Paard & Hert met Konijn (2 / 12 kg)
-- bron: https://www.riverwoodpetfood.com/products/paard-hert-met-konijn
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Adult Paard & Hert met Konijn', 'kibble', '2 / 12 kg', null, 'https://www.riverwoodpetfood.com/products/paard-hert-met-konijn', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'paardeneiwit (35%), gele erwt (30%), herteneiwit (14%), gevogeltevet (geconserveerd met gemengde tocoferolen, 8%), konijneneiwit (4%), gedroogde appelpulp (2,5%), zalmolie (2%), gehydrolyseerd eiwit (2%), lijnzaad (2%), erwtenmeel, glucosamine (0,026%), fructo-oligosachariden (0,02%), chondroïtinesulfaat (0,016%), mannan-oligosachariden (0,015%), Yucca schidigera (90 mg/kg), gedroogde goudsbloem (80 mg/kg), gedroogde brandnetel (80 mg/kg), spirulina (35 mg/kg), gedroogde kurkuma (30 mg/kg), gedroogde citruspulp (30 mg/kg), gedroogde veenbessen (30 mg/kg), gedroogde kamille (25 mg/kg), gedroogde kaneel (25 mg/kg)', true, now(), 'sha256:9b1fa5085ea17ee81e66f3633b034a26c442c77af8cf832e9b9b54a0de52ad61', null from p;

-- Riverwood — Small Breed Gans & Eend met Kwartel (2 / 6 kg)
-- bron: https://www.riverwoodpetfood.com/products/small-breed-gans-eend-met-kwartel
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Small Breed Gans & Eend met Kwartel', 'kibble', '2 / 6 kg', null, 'https://www.riverwoodpetfood.com/products/small-breed-gans-eend-met-kwartel', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gans gedehyrdreerd 32%, gele erwten 30%, eend gedehydreerd 14%, pluimveevet (geconserveerd met tocoferolen) 8%, kwartel gedehydreerd 4%, gedroogde appelpulp 2,5%, zalmolie 2%, gehydrolyseerd eiwit 2%, lijnzaad 2%, erwtenmeel, glucosaminesulfaat 0,026%, chondroïtinesulfaat 0,016%, fructo-oligosacchariden 0,02%, mannan-oligosacchariden 0,015%, yucca schidigera 90 mg.kg, goudsbloem 80 mg/kg, brandnetel 80 mg/kg, spirulina 35 mg/kg, kurkuma 30 mg/kg, citruspulp 30 mg/kg, veenbessen 30 mg/kg, kamille 25 mg/kg, kaneel 25 mg/kg', true, now(), 'sha256:c4bb54542b6971a34d4a2952226100e7e7ccf49cdc79f052534ec0077f0e7cc2', null from p;

-- Riverwood — Puppy Kalkoen & Eend met Fazant (2 / 12 kg)
-- bron: https://www.riverwoodpetfood.com/products/puppy-kalkoen-eend-met-fazant
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Puppy Kalkoen & Eend met Fazant', 'kibble', '2 / 12 kg', null, 'https://www.riverwoodpetfood.com/products/puppy-kalkoen-eend-met-fazant', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kalkoen gedehydreerd (30%), eend gedehydreerd (15%), gele erwten (15%), pluimveevet (geconserveerd met tocoferolen, 11%), gele-erwtenzetmeel (11%), gedroogde appelpulp (6%), fazant gedehydreerd (4%), erwteneiwit (3%), gehydrolyseerd eiwit (2%), spinazie (1%), teunisbloemolie (0,5%), wortels (0,5%), glucosaminesulfaat (220 mg/kg), mannan-oligosachariden (170 mg/kg), chondroïtinesulfaat (130 mg/kg), fructo-oligosachariden (110 mg/kg), Yucca schidigera (95 mg/kg), goudsbloem (90 mg/kg), brandnetel (90 mg/kg), spirulina (40 mg/kg), kurkuma (35 mg/kg), citruspulp (35 mg/kg), veenbessen (35 mg/kg), kamille (30 mg/kg), kaneel (30 mg/kg)', true, now(), 'sha256:a9467e5aa74c9af9eefe8e170b1e5a47606c81b8f4f811ecc5262b3042c78b4f', null from p;

-- Riverwood — Zalm & Witvis met Haring (2 / 12 kg)
-- bron: https://www.riverwoodpetfood.com/products/zalm-witvis-met-haring
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Zalm & Witvis met Haring', 'kibble', '2 / 12 kg', null, 'https://www.riverwoodpetfood.com/products/zalm-witvis-met-haring', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Schotse zalm gedehydreerd (26%), witvis gedehydreerd (16%), gele erwten (16%), gele-erwtenzetmeel (12%), haring gedehydreerd (10%), pluimveevet (geconserveerd met tocoferolen, 9%), gedroogde appelpulp (4%), erwteneiwit (2%), gehydrolyseerd eiwit (2%), spinazie (1%), teunisbloemolie (0,5%), wortels (0,5%), glucosaminesulfaat (220 mg/kg), mannan-oligosachariden (150 mg/kg), chondroïtinesulfaat (130 mg/kg), fructo-oligosachariden (100 mg/kg), Yucca schidigera (90 mg/kg), goudsbloem (80 mg/kg), brandnetel (80 mg/kg), spirulina (35 mg/kg), kurkuma (30 mg/kg), citruspulp (30 mg/kg), veenbessen (30 mg/kg), kamille (25 mg/kg), kaneel (25 mg/kg)', true, now(), 'sha256:49510f1c9bd85f2acf5a340718f79d3d7075c38cedeefdd484ff428097a3fce6', null from p;

-- Riverwood — Adult Surf 'n Turf Kalkoen met Buffel & Karper (300 g / 12 x 300 g)
-- bron: https://www.riverwoodpetfood.com/products/adult-surf-n-turf-kalkoen-met-buffel-karper
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Adult Surf ''n Turf Kalkoen met Buffel & Karper', 'wet', '300 g / 12 x 300 g', null, 'https://www.riverwoodpetfood.com/products/adult-surf-n-turf-kalkoen-met-buffel-karper', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kalkoen 40%, buffel 10%, karper 10%, bouillon, erwtenmeel, cassia-gom, carrageen, guargom, erwtenvezels, mineralen en vitamines, rozenblaadjes 0,1%', true, now(), 'sha256:1ede69bde99d35a13f3d22576e7e438d398fa3a124eebdd50e2968c50df014c0', null from p;

-- Riverwood — Adult Surf 'n Turf Kalkoen met Zalm & Karper (300 g / 12 x 300 g)
-- bron: https://www.riverwoodpetfood.com/products/adult-surf-n-turf-turkey-with-salmon-carp
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Adult Surf ''n Turf Kalkoen met Zalm & Karper', 'wet', '300 g / 12 x 300 g', null, 'https://www.riverwoodpetfood.com/products/adult-surf-n-turf-turkey-with-salmon-carp', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kalkoen 34%, zalm 16%, karper 10%, bouillon, bosbessen 4%, erwtenmeel, cassia-gom, carrageen, guargom, erwtenvezels, mineralen en vitamines', true, now(), 'sha256:f22b1a6f23ed02da963c5982c4410076406ab5c54776a129cdc78720b13e858a', null from p;

-- Riverwood — Adult Surf 'n Turf Kalkoen met Wildzwijn & Karper (300 g / 12 x 300 g)
-- bron: https://www.riverwoodpetfood.com/products/natvoer-vlees-en-vis-hond-adult-surf-n-turf-kalkoen-met-wildzwijn-karper-300-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Adult Surf ''n Turf Kalkoen met Wildzwijn & Karper', 'wet', '300 g / 12 x 300 g', null, 'https://www.riverwoodpetfood.com/products/natvoer-vlees-en-vis-hond-adult-surf-n-turf-kalkoen-met-wildzwijn-karper-300-gram', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kalkoen 43%, karper 10%, wildzwijn 7%, bouillon, erwtenmeel, cassia-gom, carrageen, guargom, rozenbottelvruchten 1%, erwtenvezels, mineralen en vitamines', true, now(), 'sha256:9e2a3f097bb1b8801100584d5b0c83982d5e7da2c40d045140f286501227626e', null from p;

-- Riverwood — Adult Surf 'n Turf Kalkoen met Fazant & Karper (300 g / 12 x 300 g)
-- bron: https://www.riverwoodpetfood.com/products/natvoer-hond-adult-surf-n-turf-kalkoen-met-fazant-karper
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Adult Surf ''n Turf Kalkoen met Fazant & Karper', 'wet', '300 g / 12 x 300 g', null, 'https://www.riverwoodpetfood.com/products/natvoer-hond-adult-surf-n-turf-kalkoen-met-fazant-karper', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kalkoen 43%, fazant 10%, karper 10%, bouillon, erwtenmeel, cassia-gom, carrageen, guargom, erwtenvezels, mineralen en vitamines, frambozenbladeren 0,1%.', true, now(), 'sha256:f6936ae729fc169e606e2993ba0b64f7c83f999cee797520578fcc29c98d012e', null from p;

-- Riverwood — Adult Surf 'n Turf Kalkoen met Struisvogel & Karper (300 g / 12 x 300 g)
-- bron: https://www.riverwoodpetfood.com/products/natvoer-vlees-en-vis-hond-adult-surf-n-turf-kalkoen-met-struisvogel-karper-300-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Adult Surf ''n Turf Kalkoen met Struisvogel & Karper', 'wet', '300 g / 12 x 300 g', null, 'https://www.riverwoodpetfood.com/products/natvoer-vlees-en-vis-hond-adult-surf-n-turf-kalkoen-met-struisvogel-karper-300-gram', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kalkoen 46%, karper 10%, struisvogel 4%, bouillon, erwtenmeel, cassia-gom, carrageen, guargom, erwtenvezels, mineralen en vitamines, bramen 0,1%.', true, now(), 'sha256:d63463b39eb68515246d951857a14422122467811df9fed9768740ff237154ce', null from p;

-- Riverwood — Adult Surf 'n Turf Kalkoen met Kwartel & Karper (300 g / 12 x 300 g)
-- bron: https://www.riverwoodpetfood.com/products/natvoer-vlees-en-vis-hond-adult-surf-n-turf-kalkoen-met-kwartel-karper-300-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Adult Surf ''n Turf Kalkoen met Kwartel & Karper', 'wet', '300 g / 12 x 300 g', null, 'https://www.riverwoodpetfood.com/products/natvoer-vlees-en-vis-hond-adult-surf-n-turf-kalkoen-met-kwartel-karper-300-gram', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kalkoen 41%, karper 10%, kwartel 9%, bouillon, wortel 2,5%, erwtenmeel, cassia-gom, carrageen, guargom, erwtenvezels, mineralen en vitamines.', true, now(), 'sha256:8a45b8dd85c860a1e411d242c6cf54790f2a2de26c6ab321ac30833985240932', null from p;

-- Riverwood — Eend Mono Proteïne (400 g / 6 x 400 g)
-- bron: https://www.riverwoodpetfood.com/products/eend-mono-proteine-400-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Eend Mono Proteïne', 'wet', '400 g / 6 x 400 g', null, 'https://www.riverwoodpetfood.com/products/eend-mono-proteine-400-gram', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% eend, 28,5% bouillon, 1% mineralen, 0,5% zonnebloemolie', true, now(), 'sha256:697fa8bb4812e15b09e854e2648c288af7c5e4b0b95956ff2f39410d6677aed4', null from p;

-- Riverwood — Geit Mono Proteïne (400 g / 6 x 400 g)
-- bron: https://www.riverwoodpetfood.com/products/geit-mono-proteine-400-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Geit Mono Proteïne', 'wet', '400 g / 6 x 400 g', null, 'https://www.riverwoodpetfood.com/products/geit-mono-proteine-400-gram', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% geit, 28,5% bouillon, 1% mineralen, 0,5% zonnebloemolie', true, now(), 'sha256:6b8828d38b4e7e3ec12215512f1e7b5fc9cb3712b322bba6046c637834711fae', null from p;

-- Riverwood — Hert Mono Proteïne (400 g / 6 x 400 g)
-- bron: https://www.riverwoodpetfood.com/products/hert-mono-proteine-400-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Hert Mono Proteïne', 'wet', '400 g / 6 x 400 g', null, 'https://www.riverwoodpetfood.com/products/hert-mono-proteine-400-gram', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% hert, 28,5% bouillon, 1% mineralen, 0,5% zonnebloemolie', true, now(), 'sha256:b1b9d640f9ba9f63488dfe4975e5f6edb5e86bcfe266ab94c9c0414f0f4757a4', null from p;

-- Riverwood — Kalf Mono Proteïne (400 g / 6 x 400 g)
-- bron: https://www.riverwoodpetfood.com/products/kalf-mono-proteine-400-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Kalf Mono Proteïne', 'wet', '400 g / 6 x 400 g', null, 'https://www.riverwoodpetfood.com/products/kalf-mono-proteine-400-gram', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% kalf bestaande uit hart, long en pens, 28,5% bouillon, 1% mineralen, 0,5% zonnebloemolie', true, now(), 'sha256:de53e948411aa3903e24ad68a164d6e537a951f01dd0cafc49be98b065208ce5', null from p;

-- Riverwood — Kalkoen Mono Proteïne (400 g / 6 x 400 g)
-- bron: https://www.riverwoodpetfood.com/products/kalkoen-mono-proteine-400-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Kalkoen Mono Proteïne', 'wet', '400 g / 6 x 400 g', null, 'https://www.riverwoodpetfood.com/products/kalkoen-mono-proteine-400-gram', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% kalkoen bestaande uit hart, vlees, lever, maag en nek, 28,5% bouillon, 1% mineralen, 0,5% zonnebloemolie', true, now(), 'sha256:690a6cf4ddf8ef2baf908a9f947aa8a301206c1da2daa016ef443ecf81096d39', null from p;

-- Riverwood — Paard Mono Proteïne (400 g / 6 x 400 g)
-- bron: https://www.riverwoodpetfood.com/products/paard-mono-proteine-400-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Paard Mono Proteïne', 'wet', '400 g / 6 x 400 g', null, 'https://www.riverwoodpetfood.com/products/paard-mono-proteine-400-gram', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% paard bestaande uit vlees, hart, lever en long, 28,5% bouillon, 1% mineralen, 0,5% zonnebloemolie', true, now(), 'sha256:d4b1908e39fb3f0dcd70330a1f85a680515331e393cad46bb83e487fee02fab5', null from p;

-- Riverwood — Wildzwijn Mono Proteïne (400 g / 6 x 400 g)
-- bron: https://www.riverwoodpetfood.com/products/wildzwijn-mono-proteine-400-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Wildzwijn Mono Proteïne', 'wet', '400 g / 6 x 400 g', null, 'https://www.riverwoodpetfood.com/products/wildzwijn-mono-proteine-400-gram', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% wild zwijn, 28,5% bouillon, 1% mineralen, 0,5% zonnebloemolie', true, now(), 'sha256:5867e7d047fe9aa06ee7d5e18a06ea7fde3acea92888c1d0fe0aea096ffaf26a', null from p;

-- Riverwood — Lam Mono Proteïne (400 g / 6 x 400 g)
-- bron: https://www.riverwoodpetfood.com/products/lam-mono-proteine-400-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Lam Mono Proteïne', 'wet', '400 g / 6 x 400 g', null, 'https://www.riverwoodpetfood.com/products/lam-mono-proteine-400-gram', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% lam bestaande uit hart, vlees, lever, long en pens, 28,5% bouillon, 0,1% mineralen, 0,5% zonnebloemolie.', true, now(), 'sha256:fc3b90625f5649da6f322d37155ea088385074e12c4da76d1fc791857dacb660', null from p;

-- Riverwood — Kerstmaaltijd Konijn & Kalkoen (400 g / 6 x 400 g)
-- bron: https://www.riverwoodpetfood.com/products/christmas-dinner-konijn-kalkoen-400-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Kerstmaaltijd Konijn & Kalkoen', 'wet', '400 g / 6 x 400 g', null, 'https://www.riverwoodpetfood.com/products/christmas-dinner-konijn-kalkoen-400-gram', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Konijn 36%, kalkoen 34%, bouillon 26,5%, vitamines en mineral 1%, appel 1%, cranberry 1%, pompoen 0,5%.', true, now(), 'sha256:32af0f96644c4bf9aeee4df117e98a0cef056c3c08b0456f8fa3a3a370c74a04', null from p;

-- Riverwood — Kabeljauw Visworst (800 g)
-- bron: https://www.riverwoodpetfood.com/products/kabeljauw-visworst-800-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Kabeljauw Visworst', 'wet', '800 g', null, 'https://www.riverwoodpetfood.com/products/kabeljauw-visworst-800-gram', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '70% kabeljauw, 13% water, 4% erwten, 4% spinazie, 3% boekweit, gepeld, 3% boekweitmeel, mineralen, 0,5% gemalen rozenbottel, 0,3% dille', true, now(), 'sha256:f65d3003b2c94c9bd985217d1546596683afa5c29f1c3f5cc34ae6d666c818a7', null from p;

-- Riverwood — Kabeljauw & Tonijn Visworst (800 g)
-- bron: https://www.riverwoodpetfood.com/products/kabeljauw-tonijn-visworst-800-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Kabeljauw & Tonijn Visworst', 'wet', '800 g', null, 'https://www.riverwoodpetfood.com/products/kabeljauw-tonijn-visworst-800-gram', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '44% kabeljauw, 26% tonijn, 13% water, 4% erwten, 4% spinazie, 3% boekweit, gepeld, 3% boekweitmeel, mineralen, 0,5% gemalen rozenbottel, 0,3% dille', true, now(), 'sha256:76475a3c63ea8151d83e20b6fd6de06bae4a23ea785cdb8ed56db58fdc1fa8e3', null from p;

-- Riverwood — Kabeljauw & Forel Visworst (800 g)
-- bron: https://www.riverwoodpetfood.com/products/kabeljauw-forel-visworst-800-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Kabeljauw & Forel Visworst', 'wet', '800 g', null, 'https://www.riverwoodpetfood.com/products/kabeljauw-forel-visworst-800-gram', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '44% kabeljauw, 26% forel, 13% water, 4% erwten, 4% spinazie, 3% boekweit, gepeld, 3% boekweitmeel, mineralen, 0,5% gemalen rozenbottel, 0,3% dille', true, now(), 'sha256:1e6245205ec3c8a24f0578cbd796e08f6abb3b13ada3e9aa709f53d3b032252e', null from p;

-- Riverwood — Kabeljauw & Zalm Visworst (800 g)
-- bron: https://www.riverwoodpetfood.com/products/kabeljauw-zalm-visworst-800-gram
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Riverwood', 'Kabeljauw & Zalm Visworst', 'wet', '800 g', null, 'https://www.riverwoodpetfood.com/products/kabeljauw-zalm-visworst-800-gram', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '44% kabeljauw, 26% zalm, 13% water, 4% erwten, 4% spinazie, 3% boekweit, gepeld, 3% boekweitmeel, mineralen, 0,5% gemalen rozenbottel, 0,3% dille', true, now(), 'sha256:4cc94db222b496db317713de0e91620897d545f55ff2a3e70670c904d4589c1c', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
