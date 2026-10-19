-- Automatisch overgenomen etiketten, batch 4 van 2026-10-19 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site zegt daarna:
-- "automatisch overgenomen van <domein> op <datum> · nog niet door een mens
-- nagelopen". Er wordt hier geen enkele controle door een mens geclaimd.
begin;

-- Acana — Puppy Recipe (2 / 6 / 11,4 kg)
-- bron: https://www.acana.com/en-CA/dogs/dog-food/puppy-recipe/ns-aca-puppy-junior.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Acana', 'Puppy Recipe', 'kibble', '2 / 6 / 11,4 kg', null, 'https://www.acana.com/en-CA/dogs/dog-food/puppy-recipe/ns-aca-puppy-junior.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse kip (18%), kippenmeel (18%), hele rode linzen, hele groene erwten, vers kippenslachtafval (lever, hart) (7%), kippenvet (7%), kalkoenmeel (4%), verse eieren (4%), rauwe heek (4%), haringmeel (4%), visolie (3%), hele groene linzen, hele kikkererwten, hele gele erwten, linzenvezel, erwtenzetmeel, rauwe kalkoenlevers (1%), zout, gedroogde kelp, verse hele pompoen, verse hele butternutpompoen, verse hele wortels, verse hele appels, verse hele peren, verse hele courgette, gedroogde cichoreiwortel, verse boerenkool, verse spinazie, verse raapstelen, vers bietenloof, hele veenbessen, hele bosbessen, hele saskatoonbessen, kurkuma, mariadistel, kliswortel, lavendel, heemstwortel, rozenbottels', true, now(), 'sha256:f8edd535993b560d36a716ae9faf640e886440fabb9f2fa00016098404192ec6', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Acana — Adult Small Breed Recipe (2 / 6 kg)
-- bron: https://www.acana.com/en-CA/dogs/dog-food/adult-small-breed-recipe/ns-aca-adult-small.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Acana', 'Adult Small Breed Recipe', 'kibble', '2 / 6 kg', null, 'https://www.acana.com/en-CA/dogs/dog-food/adult-small-breed-recipe/ns-aca-adult-small.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse kip (14%), kippenmeel (14%), hele rode linzen, hele groene erwten, hele kikkererwten, kalkoenmeel (6,5%), kippenvet (6%), vers kippenslachtafval (lever, hart) (4%), vers ei (4%), rauwe heek (4%), visolie (4%), haringmeel (3%), hele groene linzen, hele gele erwten, linzenvezel, erwtenzetmeel, rauwe kalkoenlever (0,5%), zout, gedroogde kelp, verse hele pompoen, verse hele butternutpompoen, verse hele wortels, verse hele appels, verse hele peren, verse hele courgette, gedroogde cichoreiwortel, verse boerenkool, verse spinazie, verse raapstelen, vers bietenloof, hele veenbessen, hele bosbessen, hele saskatoonbessen, kurkuma, mariadistel, kliswortel, lavendel, heemstwortel, rozenbottels.', true, now(), 'sha256:d486ec9291871c2332dee7e79fe87b91f4e7b7c5d955c4651fa41f63250ca3ca', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Acana — Light & Fit Recipe (2 / 6 / 11,4 kg)
-- bron: https://www.acana.com/en-CA/dogs/dog-food/light-and-fit-recipe/ns-aca-light-fit.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Acana', 'Light & Fit Recipe', 'kibble', '2 / 6 / 11,4 kg', null, 'https://www.acana.com/en-CA/dogs/dog-food/light-and-fit-recipe/ns-aca-light-fit.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse kip (21%), kippenmeel (20%), hele rode linzen, hele groene erwten, linzenvezel, vers kippenslachtafval (lever, hart) (5%), kalkoenmeel (5%), verse eieren (4%), rauwe heek (4%), hele kikkererwten, hele groene linzen, hele gele erwten, erwtenzetmeel, haringmeel (3%), kippenvet (1,5%), visolie (1%), rauwe kalkoenlevers (0,5%), zout, gedroogde kelp, verse hele pompoen, verse hele butternutpompoen, verse hele wortels, verse hele appels, verse hele peren, verse hele courgette, gedroogde cichoreiwortel, verse boerenkool, verse spinazie, verse raapstelen, vers bietenloof, hele veenbessen, hele bosbessen, hele saskatoonbessen, kurkuma, mariadistel, kliswortel, lavendel, heemstwortel, rozenbottels.', true, now(), 'sha256:7a41edd771de3b9a5b5c78bd4914bd92227ff51dfa007cd480a2890b0facb876', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Acana — Grasslands (2 / 6 / 11,4 kg)
-- bron: https://www.acana.com/en-CA/dogs/dog-food/highest-protein%2C-grasslands/ns-aca-grasslands.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Acana', 'Grasslands', 'kibble', '2 / 6 / 11,4 kg', null, 'https://www.acana.com/en-CA/dogs/dog-food/highest-protein%2C-grasslands/ns-aca-grasslands.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rauw lamsvlees (9%), rauwe eend (9%), verse eieren (8%), lamsmeel (7%), haringmeel (7%), kalkoenmeel (7%), hele rode linzen, hele kikkererwten, hele groene erwten, kippenvet (4%), rauwe kalkoen (4%), rauwe forel (4%), rauwe zalm (4%), rauwe lamslever (4%), hele groene linzen, hele pintobonen, hele gele erwten, visolie (2%), linzenvezel, erwtenzetmeel, rauwe lamsnier (0,5%), rauwe lamspens (0,5%), gedroogde kelp, gist (s. cerevisiae), verse hele pompoen, verse hele butternutpompoen, verse hele wortels, verse hele appels, verse hele peren, verse hele courgette, verse boerenkool, verse spinazie, verse raapstelen, vers bietenloof, hele veenbessen, hele bosbessen, gedroogde cichoreiwortel, kurkuma, sarsaparillawortel, althaeawortel, rozenbottels, jeneverbessen', true, now(), 'sha256:34a1ab3d16314b09ccfe2b5cbfb04c7b2ec2824763d60d469bb4dcf8bbd88ddc', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- bosch — Adult met gevogelte & gierst (1 / 3 / 15 kg)
-- bron: https://www.bosch-tiernahrung.de/bosch_de_de/hpc-adult-gefluegel-hirse.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('bosch', 'Adult met gevogelte & gierst', 'kibble', '1 / 3 / 15 kg', null, 'https://www.bosch-tiernahrung.de/bosch_de_de/hpc-adult-gefluegel-hirse.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers gevogelte (30%), gierst (17,5%), gerst, maïs, gevogelte-eiwit (gedroogd), rijst, eiwithydrolysaat, gedroogde bietenpulp (ontsuikerd), vismeel, gevogeltevet, erwten (gedroogd), gist (gedroogd, incl. 0,1% mannan-oligosachariden, 0,06% bèta-glucanen), visolie, natriumchloride, kaliumchloride, groenlipmosselen (gedroogd, 0,1%), cichorei (gedroogd).', true, now(), 'sha256:ee5b1a111f91b6b5f3b20c9c0aee360466be0eb0822174169bb176d3edbd2548', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- bosch — Adult met lam & rijst (1 / 3 / 15 kg)
-- bron: https://www.bosch-tiernahrung.de/bosch_de_de/hpc-adult-lamm-reis.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('bosch', 'Adult met lam & rijst', 'kibble', '1 / 3 / 15 kg', null, 'https://www.bosch-tiernahrung.de/bosch_de_de/hpc-adult-lamm-reis.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers gevogelte (20%), rijst (16%), gerst, maïs, gierst (Milo), gevogelte-eiwit (gedroogd), lamseiwit (gedroogd, 4%), visolie (2%), gedroogde bietenpulp (ontsuikerd), eiwithydrolysaat, gevogeltevet, gist (gedroogd, incl. 0,1% mannan-oligosachariden, 0,06% bèta-glucanen), natriumchloride, kaliumchloride, groenlipmosselen (gedroogd, 0,1%), cichorei (gedroogd).', true, now(), 'sha256:79d25a9a31b6693fbf3b6ffb1278a8e40d7984f8f63eac4f2b0ac1833fc03ab6', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- bosch — Sensitive met lam & rijst (1 / 3 / 15 kg)
-- bron: https://www.bosch-tiernahrung.de/bosch_de_de/hpc-sensitive-lamm-reis.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('bosch', 'Sensitive met lam & rijst', 'kibble', '1 / 3 / 15 kg', null, 'https://www.bosch-tiernahrung.de/bosch_de_de/hpc-sensitive-lamm-reis.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst (37,5%), lamseiwit (gedroogd, 20%), aardappelen (gedroogd), gevogeltevet, gedroogde bietenpulp (ontsuikerd), erwteneiwit, aardappeleiwit, rijsteiwit, lijnzaad, eiwithydrolysaat, erwten (gedroogd), gist (gedroogd, incl. 0,1% mannan-oligosachariden, 0,06% bèta-glucanen), visolie, cellulose, natriumchloride, kaliumchloride, groenlipmosselen (gedroogd, 0,1%), cichorei (gedroogd).', true, now(), 'sha256:2f3422befa8647e5dd4ef02d13346aedd55843143bd4caf2b019b1a20f9848d3', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- bosch — Junior met lam & rijst (1 / 3 / 15 kg)
-- bron: https://www.bosch-tiernahrung.de/bosch_de_de/hpc-junior-lamm-reis.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('bosch', 'Junior met lam & rijst', 'kibble', '1 / 3 / 15 kg', null, 'https://www.bosch-tiernahrung.de/bosch_de_de/hpc-junior-lamm-reis.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers gevogelte (25%), rijst (20%), volkorenrijst, lamseiwit (gedroogd, 10%), rijstmeel, grieben (gedroogd), gevogelte-eiwit (gedroogd), gevogeltevet, eiwithydrolysaat, gedroogde bietenpulp (ontsuikerd), erwten (gedroogd), lijnzaad, rijsteiwit, visolie, gist (gedroogd, 0,1% mannan-oligosachariden, 0,06% bèta-glucanen), colostrum (0,2%), kaliumchloride, natriumchloride, groenlipmosselen (gedroogd, 0,1%), cichorei (gedroogd).', true, now(), 'sha256:c3618878dbe6427308abec6c8069e76acc50711aa72fb1cec6318f4039cb57ef', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- bosch — Soft Adult met kip & banaan (1 / 2,5 / 12,5 kg)
-- bron: https://www.bosch-tiernahrung.de/bosch_de_de/soft-adult-huehnchen-banane.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('bosch', 'Soft Adult met kip & banaan', 'kibble', '1 / 2,5 / 12,5 kg', null, 'https://www.bosch-tiernahrung.de/bosch_de_de/soft-adult-huehnchen-banane.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse kip (60%), aardappelmeel, kookbanaan (gedroogd, 9%), aardappelzetmeel, aardappeleiwit, erwten (gedroogd), erwtenvezels, gevogeltevet, eiwithydrolysaat (vegetarisch), venkel (gedroogd), kruiden (gedroogd), cichorei (gedroogd, 0,25%), vlozaad (psyllium), gist (gedroogd, incl. 0,04% bèta-glucanen), glucosamine, chondroïtinesulfaat, yucca (gedroogd).', true, now(), 'sha256:27d4e21971273ad216b163eb83fbe74a961713a44be7304ed73bce3308ba3714', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- bosch — Soft Junior met kip & zoete aardappel (1 / 2,5 / 12,5 kg)
-- bron: https://www.bosch-tiernahrung.de/bosch_de_de/soft-junior-huehnchen-suesskartoffel.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('bosch', 'Soft Junior met kip & zoete aardappel', 'kibble', '1 / 2,5 / 12,5 kg', null, 'https://www.bosch-tiernahrung.de/bosch_de_de/soft-junior-huehnchen-suesskartoffel.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse kip (70%), zoete aardappel (gedroogd, 10%), aardappelmeel, aardappeleiwit, aardappelzetmeel, eiwithydrolysaat (vegetarisch), gedroogde bietenpulp (ontsuikerd), venkel (gedroogd), kruiden (gedroogd), cichorei (gedroogd, 0,3%), erwten (gedroogd), cellulose, gist (gedroogd, incl. 0,04% bèta-glucanen), algen (gedroogd), yucca (gedroogd), vlozaad (psyllium), glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:6035627a1532a287c1b3e042c9e90bc10ffa0789a91110c1d8de6efa796c1855', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- DARF — KVV (10 x 1 kg)
-- bron: https://darf.nl/product/darf-kvv-10-x-1-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'KVV', 'raw', '10 x 1 kg', '8721551950218', 'https://darf.nl/product/darf-kvv-10-x-1-kg', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling: – 50% Kip*: bot, vlees – 30% Rund*: vlees, pens, long hart, lever, nier – 10% Lam*: vlees, bot, long, pens, lever – 10% Geit*: vlees, pens, long', true, now(), 'sha256:c8e5de233fd2b0d4887c479d4327bfa07e424e87b69f0f3d102f856a9ba13fb5', null from p;

-- DARF — Zalm KVV (10 x 1 kg)
-- bron: https://darf.nl/product/darf-zalm-kvv-10-x-1-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Zalm KVV', 'raw', '10 x 1 kg', '8721551950669', 'https://darf.nl/product/darf-zalm-kvv-10-x-1-kg', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '100% kant en klaar vlees: – 10% zalm: lijven, randen – 45% kip: bot, vlees -25% Geit: Vlees, Pens, Long – 10% rund: vlees. hart, pens, long, lever – 10% lam: bot, vlees, lever, long pens', true, now(), 'sha256:f31aa2132aa9bcbe015dc4ff2b80b320ea3c858a2b75febe7707a4c81e1d35bc', null from p;

-- DARF — Kalkoen KVV (10 x 1 kg)
-- bron: https://darf.nl/product/darf-kalkoen-kvv-10-x-1-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Kalkoen KVV', 'raw', '10 x 1 kg', '8721551950591', 'https://darf.nl/product/darf-kalkoen-kvv-10-x-1-kg', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '100% Vers vlees: – 70% Vlees: 50% Kalkoen, 30% Rund, 10% Lam, 10% Geit – 10% Orgaanvlees: Rund: long, hart, nier, lever; Lam: long, lever; Geit: long – 20% bot: lam en kalkoen', true, now(), 'sha256:85308dece2a2ebd34c7bf720015ffe2791bb76d213b77d540ea861adb606decb', null from p;

-- DARF — Geit Kip (10 x 1 kg)
-- bron: https://darf.nl/product/darf-geit-kip-10-x-1-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Geit Kip', 'raw', '10 x 1 kg', '8721551950119', 'https://darf.nl/product/darf-geit-kip-10-x-1-kg', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Geit 49% Kip 50% Complex van sporenelementen en vitamines (premix) 1%', true, now(), 'sha256:75daaa5339b48871fed4aa44cd7c2a3ec76eafb1656f0a39a3d94582f9aceb3d', null from p;

-- DARF — Hert (10 x 1 kg)
-- bron: https://darf.nl/product/darf-hert-10-x-1-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Hert', 'raw', '10 x 1 kg', '8721551950133', 'https://darf.nl/product/darf-hert-10-x-1-kg', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam 30.77% Hert 23.08% Paard 30.77% Wilde gans 30.77% Complex van sporenelementen en vitamines (premix) 1%', true, now(), 'sha256:ae62af12dc03657c4c4f02ad0061a31f40aa46d9b6b8a0629e4b150ee1e7d398', null from p;

-- DARF — Wild KVV (10 x 1 kg)
-- bron: https://darf.nl/product/darf-wild-kvv-10-x-1-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Wild KVV', 'raw', '10 x 1 kg', '8721551950225', 'https://darf.nl/product/darf-wild-kvv-10-x-1-kg', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'hert 30% Fazant 15% Konijn 14% Wilde gans 30% Ree 10% Complex van sporenelementen en vitamines (premix) 1%', true, now(), 'sha256:b4fadb8e333f68c855978df1b615bd0bffa1829f917529375a51cc05bb9b17f0', null from p;

-- DARF — Vol Active (4 kg)
-- bron: https://darf.nl/product/darf-vol-active-4-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Vol Active', 'kibble', '4 kg', '8721551950034', 'https://darf.nl/product/darf-vol-active-4-kg', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ingrediënten: – 70%: (Rundvlees, Runderorganen, Rundervet) – 10%: gedroogde wortel rauw – 10%: appel rauw – 6%: gierst – 2%: krill – 1%: Zalmolie – 0.5%: Vocht – 0.5%: vitamine en mineralen preparaat: 0.5%, Bevattende:', true, now(), 'sha256:8d85fe45c2e8c9ac7a472de2ed76dde835af008da25c05fd620784303c32f748', null from p;

-- DARF — Vol Light (4 kg)
-- bron: https://darf.nl/product/darf-vol-light-4-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Vol Light', 'kibble', '4 kg', '8721551950386', 'https://darf.nl/product/darf-vol-light-4-kg', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ingrediënten: – 60% kippennekken, rundvlees, lamsvlees, geitenvlees, kippenvlees, runderhart, runderlong, runderpens, runderlever – 10% gedroogde wortel rauw – 9% gedroogde appel rauw – 5% gierst – 2% krill – 1% kokosolie – 1% brandnetel – 0,5% vitamine en mineralenprepaat, 0,5% vocht', true, now(), 'sha256:50fb9c58f628a7599c703bade3cca2612ae4e2e6fb165a63311199aed97fb2d9', null from p;

-- DARF — Vol Regular (4 kg)
-- bron: https://darf.nl/product/darf-vol-regular-4-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Vol Regular', 'kibble', '4 kg', '8721551950447', 'https://darf.nl/product/darf-vol-regular-4-kg', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '– 60%: Kipnekken, rundvlees, lamsvlees, geitvlees, kipvlees, runderhart, runderlong runderlever – 15%: gedroogde wortel – 14% gedroogde appel – 5% gierst – 2% krill – 2% kokosolie – 1% brandnetel', true, now(), 'sha256:6b7bd957e3ce1b517ff48a28f94217eb2491885a493c07492d0e15047315c823', null from p;

-- DARF — Vol Zalm (4 kg)
-- bron: https://darf.nl/product/darf-vol-zalm-4-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('DARF', 'Vol Zalm', 'kibble', '4 kg', '8721551950485', 'https://darf.nl/product/darf-vol-zalm-4-kg', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '– 60%: Zalmranden, lamsvlees, lamsbot, lamsorganen en eieren – 15% gedroogde wortel rauw – 14% gedroogde appel rauw – 5% gierst – 2% krill – 2% kokosolie – 1% brandnetel', true, now(), 'sha256:6a97e2cbdfafc69b80b9b39453947e181b61361e4c643c7d81a05d2c1f880833', null from p;

-- Edgard & Cooper — Verse Kip (0,7 / 1 / 2,5 / 3 / 7 / 12 kg)
-- bron: https://www.edgardcooper.com/nl/products/dog-dry-food-chicken/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Verse Kip', 'kibble', '0,7 / 1 / 2,5 / 3 / 7 / 12 kg', null, 'https://www.edgardcooper.com/nl/products/dog-dry-food-chicken/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'verse kip* 40%, zoete aardappelen* (gedroogd) 13,2%, aardappelen* (gedroogd), erwteneiwit*, erwten* (gedroogd), kippenvet*, aardappeleiwit, kippensaus, lijnzaad* 2%, bietenpulp* (gedroogd), mineralen*, gist* (gedroogd) 1,2%, tomatenpulp*, cichorei* (gedroogd) 0,5%, zalmolie* 0,4%, pompoen* (gedroogd) 0,2%, boerenkool* (gedroogd) 0,2%, bosbessen* (gedroogd) 0,05%, appel* (gedroogd) 0,05%, peterselie* (gedroogd) 0,02%, rozenbottel* (gedroogd) 0,02%, glucosamine 0,02%, chondroïtinesulfaat* 0,02%. *Natuurlijk', true, now(), 'sha256:05193c40e04bf056a4b9e70d313da5b453ff14c7a6b43986accb8ce8c3bde2e6', null from p;

-- Edgard & Cooper — Vers Lam (0,7 / 1 / 2,5 / 3 / 7 / 12 kg)
-- bron: https://www.edgardcooper.com/nl/products/dog-dry-food-lamb/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Vers Lam', 'kibble', '0,7 / 1 / 2,5 / 3 / 7 / 12 kg', null, 'https://www.edgardcooper.com/nl/products/dog-dry-food-lamb/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vers lam* 40%, zoete aardappelen* (gedroogd) 12,3%, aardappelen* (gedroogd), erwten* (gedroogd), erwteneiwit*, aardappeleiwit, zonnebloemolie*, mineralen*, lijnzaad* 2%, bietenpulp* (gedroogd), lamssaus, tomatenpulp*, gist* (gedroogd) 1%, zalmolie* 1%, cichorei* (gedroogd) 0,5%, pompoen* (gedroogd) 0,2%, boerenkool* (gedroogd) 0,2%, bosbessen* (gedroogd) 0,05%, appel* (gedroogd) 0,05%, peterselie* (gedroogd) 0,02%, rozenbottel* (gedroogd) 0,02%, glucosamine 0,02%, chondroïtinesulfaat* 0,02%. *Natuurlijk', true, now(), 'sha256:dd946a3a47e33be2e84892b4288c8f4e3886398566819157511751db808fc741', null from p;

-- Edgard & Cooper — Verse Eend (2,5 / 7 / 12 kg)
-- bron: https://www.edgardcooper.com/nl/products/dog-dry-food-duck/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Verse Eend', 'kibble', '2,5 / 7 / 12 kg', null, 'https://www.edgardcooper.com/nl/products/dog-dry-food-duck/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'verse eend* 40%, zoete aardappelen* (gedroogd) 13,4%, aardappelen* (gedroogd), erwteneiwit*, erwten* (gedroogd), aardappeleiwit, lijnzaad* 2%, bietenpulp* (gedroogd), zalmolie* 2%, eendensaus, mineralen*, tomatenpulp*, gist* (gedroogd) 1%, zonnebloemolie*, cichorei* (gedroogd) 0,5%, pompoen* (gedroogd) 0,2%, boerenkool* (gedroogd) 0,2%, bosbessen* (gedroogd) 0,05%, appel* (gedroogd) 0,05%, peterselie* (gedroogd) 0,02%, rozenbottel* (gedroogd) 0,02%, glucosamine 0,02%, chondroïtinesulfaat* 0,02%. *Natuurlijk', true, now(), 'sha256:510db79f2efad00537998f932b47213d9ab9dc031893c40bb2fe72bb454ee3c5', null from p;

-- Edgard & Cooper — Kip & kalkoen (400 / 800 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-tin-chicken-turkey/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Kip & kalkoen', 'wet', '400 / 800 g', null, 'https://www.edgardcooper.com/nl/products/dog-tin-chicken-turkey/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip 52%, kalkoen 8%, wortel 2%, mineralen, mannan-oligosachariden (MOS), tomaat (gedroogd) 0,25%, appel (gedroogd) 0,25%, lijnzaadolie, zalmolie, fructo-oligosachariden (FOS), bosbessen (gedroogd) 0,13%, aardbeien (gedroogd) 0,05%, gedroogde venkel 0,01%, gedroogd karwijzaad 0,01%, gedroogd duizendblad 0,01%, gedroogde braambessenblaadjes 0,01%, gedroogde maretak 0,01%, gedroogde kamillebloesem 0,01%, gedroogde gentiaanwortel 0,01%, gedroogd duizendguldenkruid 0,01%', true, now(), 'sha256:4a90e4d6365e176de0ad651e8a35aa3c402f69046b5d80885fba3c2673c390a4', null from p;

-- Edgard & Cooper — Wild & eend (400 / 800 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-tin-game-duck/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Wild & eend', 'wet', '400 / 800 g', null, 'https://www.edgardcooper.com/nl/products/dog-tin-game-duck/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'wild 35%, eend 25%, zoete aardappel 2%, rode bieten (gedroogd) 0,5%, mineralen, mannan-oligosachariden (MOS), lijnzaadolie, fructo-oligosachariden (FOS), appel (gedroogd) 0,13%, peer (gedroogd) 0,05%, bosbessen (gedroogd) 0,05%, gedroogde venkel 0,01%, gedroogd karwijzaad 0,01%, gedroogd duizendblad 0,01%, gedroogde braambessenblaadjes 0,01%, gedroogde maretak 0,01%, gedroogde kamillebloesem 0,01%, gedroogde gentiaanwortel 0,01%, gedroogd duizendguldenkruid 0,01%', true, now(), 'sha256:2904db8e933f016ce472ef69593e7a8ed3167110ee0f96249e47e9a8b2cee571', null from p;

-- Edgard & Cooper — Kwijl-in-Stijl Kip (150 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-pouch-drool-worthy-chicken/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Kwijl-in-Stijl Kip', 'wet', '150 g', null, 'https://www.edgardcooper.com/nl/products/dog-pouch-drool-worthy-chicken/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip* 32%, eiwit* (gedroogd), wortel* (gedroogd) 2%, erwten* (gedroogd) 2%, erwtenzetmeel*, mineralen, gist* (gedroogd), zalmolie*, erwtenvezel*, bietenpulp* (gedroogd), tijm* (gedroogd) 0,1%, glucosamine, chondroïtinesulfaat. *Natuurlijk', true, now(), 'sha256:14ce0929c111f15ae923bd39e4b852facb99f881f85423c50f0cf7d8857b6eb4', null from p;

-- Eukanuba — Veterinary Diets Dermatosis FP (5 / 12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/speciaalvoer/diergeneeskundige-voeding/veterinary-diets-dermatosis-fp
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Veterinary Diets Dermatosis FP', 'kibble', '5 / 12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/speciaalvoer/diergeneeskundige-voeding/veterinary-diets-dermatosis-fp', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'aardappel, vismeel, gevogeltevet, gedroogde bietenpulp (4%), visjus, mineralen (waaronder natriumhexametafosfaat), zonnebloemolie, fructo-oligosachariden (0.5%).', true, now(), 'sha256:5a4c21568d559130e8739bc2a0efcff41f6e11ed6b24bab93f5815257bf213d4', null from p;

-- Eukanuba — Veterinary Diets Intestinal (5 / 12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/speciaalvoer/diergeneeskundige-voeding/veterinary-diets-intestinal
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Veterinary Diets Intestinal', 'kibble', '5 / 12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/speciaalvoer/diergeneeskundige-voeding/veterinary-diets-intestinal', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'witte rijst, gedroogde kip en kalkoen, maïs, gedroogde hele eieren, gedroogde bietenpulp (3,3%), varkensvet, kippenjus, mineralen (waaronder natriumhexametafosfaat 0.38%), fructo-oligosachariden (1%), gedroogde biergist, lijnzaad, visolie, mannanoligosachariden (0.19%).', true, now(), 'sha256:205d51627b84b5fa77c3400b50901a1f40c63dafeb8dd9363252eab92b6a694f', null from p;

-- Eukanuba — Veterinary Diets Restricted Calorie (5 / 12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/speciaalvoer/diergeneeskundige-voeding/veterinary-diets-restricted-calorie
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Veterinary Diets Restricted Calorie', 'kibble', '5 / 12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/speciaalvoer/diergeneeskundige-voeding/veterinary-diets-restricted-calorie', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen, maïs, tarwe, havervlokken, gerst, gedroogde bietenpulp, cellulose, kippenjus, gedroogde appelpulp, vismeel, gevogeltevet, gedroogde biergist, mineralen (waaronder natriumhexametafosfaat), gedroogde hele eieren, fructo-oligosachariden, natriumchloride, visolie, lijnzaad, kaliumchloride, glucosamine (van dierlijke weefsels) (450mg/kg), chondroïtinesulfaat (45mg/kg).', true, now(), 'sha256:26a9a451896fc3aa347fd820263ec9d7999ad6a4ab9a0d5f65b387765823f9d8', null from p;

-- Eukanuba — Veterinary Diets Joint Mobility (12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/speciaalvoer/diergeneeskundige-voeding/veterinary-diets-joint-mobility
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Veterinary Diets Joint Mobility', 'kibble', '12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/speciaalvoer/diergeneeskundige-voeding/veterinary-diets-joint-mobility', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen, maïs, tarwe, sorghum, gerst, varkensvet, gedroogde bietenpulp, kippenjus, mineralen (waaronder natriumhexametafosfaat), gedroogde hele eieren, lijnzaad, fructo-oligosachariden, gedroogde biergist, glucosamine (van dierlijke weefsels) (718 mg/kg), chondroïtinesulfaat (72mg/kg).', true, now(), 'sha256:c88c9ce607bd14d3a784682b48dbe296a3f6c0c65e8eaa79e3d65c0902db4737', null from p;

-- Eukanuba — Puppy Middelgrote rassen Verse kip (800 g / 3 / 12 / 15 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/life-care/puppy-middelgrote-rassen-verse-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Puppy Middelgrote rassen Verse kip', 'kibble', '800 g / 3 / 12 / 15 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/life-care/puppy-middelgrote-rassen-verse-kip', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen (29% waaronder kip 21%, een natuurlijke bron van glucosamine, chondroïtine en taurine), verse kip (15%), tarwe, gerst, maïs, gevogeltevet, rijst, gedroogde bietenpulp (3%), kippenjus, maïsgries, visolie (een natuurlijke bron van omega-3-vetzuren), mineralen (waaronder natriumhexametafosfaat 0.35%), gedroogde hele eieren, gedroogde biergist (een natuurlijke bron van B-vitaminen en selenium), fructo-oligosachariden (0.25%, een natuurlijk prebioticum), mannanoligosachariden (0.13%, een natuurlijk prebioticum).', true, now(), 'sha256:d169774fc08305e6c5b29a102dfea8ec769411afb7165ee765a65f09ba48b35d', null from p;

-- Eukanuba — Senior Middelgrote rassen Verse kip (3 / 12 / 15 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/life-care/senior-middelgrote-rassen-verse-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Senior Middelgrote rassen Verse kip', 'kibble', '3 / 12 / 15 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/life-care/senior-middelgrote-rassen-verse-kip', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen (26% waaronder kip 18%, een natuurlijke bron van glucosamine, chondroïtine en taurine), verse kip (17%), maïs, tarwe, gevogeltevet, havervlokken, rijst, gerst, gedroogde bietenpulp (3%), kippenjus, mineralen (waaronder natriumhexametafosfaat 0.34%), gedroogde hele eieren, fructo-oligosachariden (0.37%, een natuurlijk prebioticum), mannanoligosachariden (0.13%, een natuurlijk prebioticum), glucosamine (van dierlijke weefsels) (0.04%), chondroïtinesulfaat (0.004%).', true, now(), 'sha256:6d3f25867131fb122aebd12893b280b8acbeccd9bf10d9020d714f1a092f174c', null from p;

-- Eukanuba — Volwassen Grote rassen Verse kip (3 / 12 / 15 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/life-care/volwassen-grote-rassen-verse-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Volwassen Grote rassen Verse kip', 'kibble', '3 / 12 / 15 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/life-care/volwassen-grote-rassen-verse-kip', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'verse kip (20%), gedroogde kip en kalkoen (19% waaronder kip 13%, een natuurlijke bron van glucosamine, chondroïtine en taurine), maïs, tarwe, gerst, havervlokken, sorghum, gevogeltevet, gedroogde bietenpulp (2.5%), kippenjus, maïsgries, mineralen (waaronder natriumhexametafosfaat 0.34%), fructo-oligosachariden (0.25%, een natuurlijk prebioticum), gedroogde hele eieren, gedroogde biergist (een natuurlijke bron van B-vitaminen en selenium), glucosamine (van dierlijke weefsels) (0.04%).', true, now(), 'sha256:12957ee0c56bfba473252c583094bcd6225a7db2a1a80f1efd3c95c8870b5e9d', null from p;

-- Eukanuba — Adult kleine/middelgrote rassen, zalm en gerst (12 kg)
-- bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/life-care/adult-kleinemiddelgrote-rassen-zalm-en-gerst
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Adult kleine/middelgrote rassen, zalm en gerst', 'kibble', '12 kg', null, 'https://www.eukanuba.eu/nl-nl/hond/droogvoer/life-care/adult-kleinemiddelgrote-rassen-zalm-en-gerst', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde kip en kalkoen (een natuurlijke bron van glucosamine, chondroïtine en taurine), zalm (14%), gerst (14%), maïs, havervlokken, sorghum, gevogeltevet, gedroogde bietenpulp (2.6%), kippenjus, zonnebloemolie, mineralen (waaronder natriumhexametafosfaat 0.35%), fructo-oligosachariden (0.25%, een natuurlijk prebioticum), gedroogde biergist (een natuurlijke bron van B-vitaminen en selenium).', true, now(), 'sha256:d4974f2ac49ec0ab917a6d045eeb0052eee084c220b3cb77189ad82fc8b7cd8a', null from p;

-- Eukanuba — Adult rijk aan rund met pompoen (400 g)
-- bron: https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/adult-rijk-aan-rund-met-pompoen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Adult rijk aan rund met pompoen', 'wet', '400 g', null, 'https://www.eukanuba.eu/nl-nl/hond/nat-hondenvoer/adult-rijk-aan-rund-met-pompoen', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip (46%), rund (14%), pompoen (4%), mineralen, bietenpulp (0.5%), zalmolie (0.5%), inuline (0.4%), MOS (0.3%).', true, now(), 'sha256:77fa7e96c93a176032152ee0431a5f55e2fe402d84e81e78453b639ae1743b85', null from p;

-- Farmina — Vet Life UltraHypo Adult (2 / 12 kg)
-- bron: https://www.farmina.com/nl/hondenvoeding/farmina-vet-life/72-ultrahypo-adult.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Farmina', 'Vet Life UltraHypo Adult', 'kibble', '2 / 12 kg', null, 'https://www.farmina.com/nl/hondenvoeding/farmina-vet-life/72-ultrahypo-adult.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst zetmeel, gehydrolyseerd viseiwit, visolie, kaliumchloride, calciumcarbonaat, monodicalciumfosfaat, natriumchloride. Eiwitbron: gehydrolyseerd viseiwit. Koolhydraatbron: rijst zetmeel.', true, now(), 'sha256:1b679199eff2d769d6c7ae2c8189382a5f0872529fe413ccc569a9ca9496b7d4', null from p;

-- Farmina — Vet Life Hypoallergenic Ei & Rijst Adult (2 / 12 kg)
-- bron: https://www.farmina.com/nl/hondenvoeding/farmina-vet-life/74-hypoallergenic-ei-&-rijst-adult.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Farmina', 'Vet Life Hypoallergenic Ei & Rijst Adult', 'kibble', '2 / 12 kg', null, 'https://www.farmina.com/nl/hondenvoeding/farmina-vet-life/74-hypoallergenic-ei-&-rijst-adult.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst (67%), gedroogde eieren (22%), visolie, kaliumchloride, calciumcarbonaat, monodicalciumfosfaat, natriumchloride. Eiwitbron: gedroogde eieren. Koolhydraatbron: rijst.', true, now(), 'sha256:6c0825af1aab1179128e581efb4c0d3b0d8b8f0739be42db527b0f7c2ecf1884', null from p;

-- Farmina — Vet Life Gastrointestinal Adult (2 / 12 kg)
-- bron: https://www.farmina.com/nl/hondenvoeding/farmina-vet-life/65-gastrointestinal-adult.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Farmina', 'Vet Life Gastrointestinal Adult', 'kibble', '2 / 12 kg', null, 'https://www.farmina.com/nl/hondenvoeding/farmina-vet-life/65-gastrointestinal-adult.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, zoete aardappel, gedehydrateerd kippeneiwit, haver, kippenvet, gedroogde eieren, gedehydrateerd viseiwit, gedroogde bietenpulp, visolie, gehydrolyseerd viseiwit, kaliumchloride, inuline (0.6%), fructo-oligosachariden (0.4%), gistextract (bron van manno-oligo-sacchariden) (0.4%), calciumcarbonaat, natriumchloride.', true, now(), 'sha256:98c34ba94af5b0f3c67bbd5d960e241f633d8c95ea06cd82528ef1eaad013184', null from p;

-- Farmina — Vet Life Renal Adult (2 kg)
-- bron: https://www.farmina.com/nl/hondenvoeding/farmina-vet-life/69-renal-adult.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Farmina', 'Vet Life Renal Adult', 'kibble', '2 kg', null, 'https://www.farmina.com/nl/hondenvoeding/farmina-vet-life/69-renal-adult.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Zoete aardappel, rijst, kippenvet, gedroogde eieren, calciumcarbonaat, lijnzaad, visolie, gehydrolyseerd viseiwit, natriumchloride, kaliumchloride. Eiwitbronnen: gedroogde eieren, gehydrolyseerd viseiwit.', true, now(), 'sha256:8dc27c23d39a18ba34d17e899fd7fb18fdbc9aac313e338166f854d1417e71d8', null from p;

-- Farmina — N&D Pumpkin Kip & Granaatappel Adult Medium & Maxi (2,5 / 12 kg)
-- bron: https://www.farmina.com/nl/hondenvoeding/n&d-pumpkin/391-kip-&-granaatappel-adult-medium-&-maxi.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Farmina', 'N&D Pumpkin Kip & Granaatappel Adult Medium & Maxi', 'kibble', '2,5 / 12 kg', null, 'https://www.farmina.com/nl/hondenvoeding/n&d-pumpkin/391-kip-&-granaatappel-adult-medium-&-maxi.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ontbeende kip (24%), gedehydrateerd kippeneiwit (22%), erwtenzetmeel, kippenvet, gedroogde pompoen (5%), gedroogde eieren, haring, gedehydrateerd haringeiwit, visolie (van haring), erwtenvezel, gedroogde wortel, luzernemeel, inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde granaatappel (0.5%), gedroogde appel, gedroogde spinazie, psylliumschillen en zaden (0.3%), gedroogde zoete sinaasappel, gedroogde blauwe bes, natriumchloride, gedroogde biergist, kurkuma (0.2%), aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:1ae056b4ac5ee238cf84a9967927b556aa573f55aa0da3b3e257af2b963350d7', null from p;

-- Farmina — N&D Ancestral Grain Kip & Granaatappel Adult Medium & Maxi (2,5 / 12 kg)
-- bron: https://www.farmina.com/nl/hondenvoeding/n&d-ancestral-grain/594-kip-&-granaatappel-adult-medium-&-maxi.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Farmina', 'N&D Ancestral Grain Kip & Granaatappel Adult Medium & Maxi', 'kibble', '2,5 / 12 kg', null, 'https://www.farmina.com/nl/hondenvoeding/n&d-ancestral-grain/594-kip-&-granaatappel-adult-medium-&-maxi.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ontbeende kip (20%), gedehydrateerd kippeneiwit (18%), spelt (10%), haver (10%), kippenvet, gedroogde eieren, haring, gedehydrateerd haringeiwit, gedroogde bietenpulp, visolie (van haring), gedroogde wortel, luzernemeel, inuline, fructo-oligosachariden, gistextract (bron van manno-oligo-sacchariden), gedroogde granaatappel (0.5%), gedroogde appel, gedroogde spinazie, psylliumschillen en zaden (0.3%), gedroogde zoete sinaasappel, gedroogde blauwe bes, natriumchloride, gedroogde biergist, kurkuma (0.2%), aloë vera-extract, glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:90c80679a273dca6c79c55c7fcd9cd62f38871cc9d30edb0cf09be778c88df02', null from p;

-- Happy Dog — Sensible Ireland (0,3 / 1 / 4 / 12,5 kg)
-- bron: https://happydog.de/hundefutter/trockenfutter/happy-dog-sensible-ireland-60301
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Happy Dog', 'Sensible Ireland', 'kibble', '0,3 / 1 / 4 / 12,5 kg', null, 'https://happydog.de/hundefutter/trockenfutter/happy-dog-sensible-ireland-60301', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'haver, zalmmeel (13%), gerst, maïs, konijneneiwit* (8%), aardappel*, oliën en vetten, bietenmelassepulp* (ontsuikerd), gehydrolyseerd eiwit, hemoglobine*, appelpulp* (1,1%), gedroogd heel ei, kaliumchloride, gist*, natriumchloride, zeewier*, lijnzaad (0,15%), mosselvlees* (0,05%), mariadistel, Yucca schidigera*, gist* (geëxtraheerd), artisjok, paardenbloem, gember (0,014%), berkenbladeren, brandnetel, kamille, koriander, rozemarijn, salie, zoethoutwortel, tijm, (gedroogde kruiden totaal: 0,17%) *) gedroogd', true, now(), 'sha256:e887415554405cf65eba4f49f55f3150e813e7f8778bf88b3fce0f635730abe4', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Happy Dog — Sensible Toscana (0,3 / 1 / 4 / 12,5 kg)
-- bron: https://happydog.de/hundefutter/trockenfutter/happy-dog-sensible-toscana-60303
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Happy Dog', 'Sensible Toscana', 'kibble', '0,3 / 1 / 4 / 12,5 kg', null, 'https://happydog.de/hundefutter/trockenfutter/happy-dog-sensible-toscana-60303', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'eendeneiwit* (23%), maïsmeel, maïs, rijst, zalmmeel (5%), oliën en vetten, gehydrolyseerd eiwit, bietenmelassepulp* (ontsuikerd), appelpulp* (0,8%), kaliumchloride, gist*, natriumchloride, zeewier* (0,18%), lijnzaad (0,15%), gedroogd heel ei, mosselvlees* (0,05%), vlierbessen, mariadistel, gist* (geëxtraheerd), artisjok (0,015%), paardenbloem, gember (0,015%), berkenbladeren, brandnetel, kamille, rozemarijn, salie, tijm, bonenkruid, marjolein, koriander, zoethoutwortel, anisvruchten, basilicum, venkelvruchten, vlierbloesem, lavendelbloemen (gedroogde kruiden totaal: 0,26%) *) gedroogd', true, now(), 'sha256:f04e9893fa50f1e4c842bef19ceaea86d7763f6720cdb5bee7c2dc563fa86666', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Happy Dog — Sensible Montana (0,3 / 1 / 4 / 10 kg)
-- bron: https://happydog.de/hundefutter/trockenfutter/happy-dog-sensible-montana-60488
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Happy Dog', 'Sensible Montana', 'kibble', '0,3 / 1 / 4 / 10 kg', null, 'https://happydog.de/hundefutter/trockenfutter/happy-dog-sensible-montana-60488', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'aardappel*, paardeneiwit* (15%), aardappeleiwit*, oliën en vetten, bietenmelassepulp* (ontsuikerd), gehydrolyseerd eiwit, appelpulp*, natriumchloride, gist* (geëxtraheerd) *) gedroogd', true, now(), 'sha256:4b5949757a44b9647ecf7378f025f6110f5def4ab835f120f9126a48cc4d7098', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Happy Dog — fit & vital - Sport (1 / 14 kg)
-- bron: https://happydog.de/hundefutter/trockenfutter/happy-dog-fit-vital-sport-60777
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Happy Dog', 'fit & vital - Sport', 'kibble', '1 / 14 kg', null, 'https://happydog.de/hundefutter/trockenfutter/happy-dog-fit-vital-sport-60777', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'dierlijke eiwitten* (17,5% gevogelte, 4% lam), maïsmeel, maïs, oliën en vetten, rijst, gerst, hemoglobine*, vismeel (4%, waarvan 50% zalmmeel), grieben, gehydrolyseerd eiwit, bietenmelassepulp* (ontsuikerd), appelpulp*, kaliumchloride, gist*, natriumchloride, zeewier*, lijnzaad (0,15%), gedroogd heel ei (0,1%), mariadistel, gist* (geëxtraheerd), mosselvlees* (0,02%), artisjok, paardenbloem, gember (0,017%), berkenbladeren, brandnetel, kamille, koriander, rozemarijn, salie, zoethoutwortel, tijm, (gedroogde kruiden totaal: 0,17%) *) gedroogd', true, now(), 'sha256:bf63f81256e9637fe9b2813bfb70386eddc6301269cf791738708b9b8606b3cd', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Happy Dog — NaturCroq Geflügel & Reis (1 / 4 / 11 kg)
-- bron: https://happydog.de/hundefutter/trockenfutter/happy-dog-naturcroq-gefluegel-reis-60513
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Happy Dog', 'NaturCroq Geflügel & Reis', 'kibble', '1 / 4 / 11 kg', null, 'https://happydog.de/hundefutter/trockenfutter/happy-dog-naturcroq-gefluegel-reis-60513', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gevogelte-eiwit* (24,5%), rijst (17,0%), volkorenmais, maïsmeel, volkorengerst, oliën en vetten, bietenmelassepulp* (ontsuikerd), gehydrolyseerd eiwit, appelpulp* (0,8%), gist*, kaliumchloride, wortel*, natriumchloride, groene haver*, zonnebloem* (0,07%), tuinkers*, peterselie*, (groene kruiden totaal: 0,3%) *) gedroogd', true, now(), 'sha256:37b9694aee4a50e54dce3aeaa1cd2cab2c90944d0c54d2d704e3d578899bd717', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Happy Dog — NaturCroq Senior (4 / 15 kg)
-- bron: https://happydog.de/hundefutter/trockenfutter/happy-dog-naturcroq-senior-60533
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Happy Dog', 'NaturCroq Senior', 'kibble', '4 / 15 kg', null, 'https://happydog.de/hundefutter/trockenfutter/happy-dog-naturcroq-senior-60533', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gevogelte-eiwit* (12%), tarwemeel, volkorengerst, volkorentarwe, volkorenmais, maïsmeel, rijst, oliën en vetten, grieben, vismeel, bietenmelassepulp* (ontsuikerd), gehydrolyseerd eiwit, appelpulp* (0,9%), gist*, wortel*, natriumchloride, groene haver*, zonnebloem* (0,07%), tuinkers*, peterselie*, (groene kruiden totaal: 0,3%) *) gedroogd', true, now(), 'sha256:041d8d56804d93bba9ae279f1dd2059c3dfbbd02640d4382d47f762b27d3919b', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Hill's Prescription Diet — z/d Hondenvoer Origineel (3 / 8 / 10 kg)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-zd-food-sensitivities-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'z/d Hondenvoer Origineel', 'kibble', '3 / 8 / 10 kg', null, 'https://www.hillspet.nl/dog-food/prescription-diet-zd-food-sensitivities-dry', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Producten van plantaardige oorsprong, vlees en dierlijke bijproducten, oliën en vetten (visolie 0,9%), mineralen, fruit, zaden. Eiwitbron: Kippenleverhydrolysaat (25%). Koolhydraatbron: Maïszetmeel. ActivBiome+ Digestion prebiotische mix (13%): Gemalen pecannotenschil, lijnzaad, gedroogde bietenpulp, gedroogde citruspulp, gedroogde veenbessen.', true, now(), 'sha256:7283872986f6134be874cb3e7280ff3036ed828f3903b806b436643b4d6437b1', null from p;

-- Hill's Prescription Diet — z/d Mini Hondenvoer (1 / 6 kg)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-zd-small-bites-food-sensitivities-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'z/d Mini Hondenvoer', 'kibble', '1 / 6 kg', null, 'https://www.hillspet.nl/dog-food/prescription-diet-zd-small-bites-food-sensitivities-dry', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Bijproducten van natuurlijke oorsprong, vlees en dierlijke bijproducten, oliën en vetten (visolie 0,9%), fruit, mineralen, zaden. Eiwitbron: Kippenleverhydrolysaat (26%). Koolhydraatbron: Maïszetmeel.', true, now(), 'sha256:6edcc44b7ced4e4f929f9b14503e7a27c306e8a6123ba5b3cee81fa069f2bffe', null from p;

-- Hill's Prescription Diet — z/d Hondenvoer (370 g)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-zd-food-sensitivities-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'z/d Hondenvoer', 'wet', '370 g', null, 'https://www.hillspet.nl/dog-food/prescription-diet-zd-food-sensitivities-canned', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten, bijproducten van plantaardige oorsprong, oliën en vetten, mineralen, fruit, zaden. Eiwitbron: Kippenleverhydrolysaat. Koolhydraatbron: Maïszetmeel. ActivBiome+ Digestion prebiotische mix (3,5%): Gemalen pecannootdop, lijnzaad, gedroogde bietenpulp, gedroogde citruspulp, gedroogde veenbessen.', true, now(), 'sha256:75c9bc56a63b3606279988693fbca1293f7b33d95a6eac81ff205902e84d185a', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
