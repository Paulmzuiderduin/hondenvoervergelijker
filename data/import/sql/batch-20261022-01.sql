-- Automatisch overgenomen etiketten, batch 1 van 2026-10-22 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Acana — Adult Dog Recipe (2 / 6 / 11,4 / 17 kg)
-- bron: https://emea.acana.com/nl-NL/voor-honden/eu-aca-adult.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Acana', 'Adult Dog Recipe', 'kibble', '2 / 6 / 11,4 / 17 kg', null, 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-adult.html', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse kip (13%), kippenvlees meel (13%), hele rode linzen, hele groene erwten, hele kikkererwten, verse kippeningewanden (lever, hart) (6,5%), kalkoenmeel (6,5%), kippenvet (6%), verse eieren (4%), rauwe heek (4%), linzenvezel, erwtenzetmeel, visolie (3%), hele groene linzen, hele gele erwten,haringmeel (3%), rauwe kalkoenlever (1%), zout, gedroogde kelp, verse hele appels, verse hele flespompoen, verse hele wortelen, verse hele peren, verse hele pompoen, verse hele courgette, gedroogde cichoreiwortel, vers bietenloof, verse boerenkool, verse spinazie, verse raapstelen, hele bosbessen, hele veenbessen, hele Saskatoon-bessen, kliswortel, lavendel, heemstwortel, mariadistel, rozebottels, kurkuma.', true, now(), 'sha256:8d3b75018f2afb8aa7afc5391d3f6f23e948e3cad136d33daf6f5e36644826c4', null from p;

-- Acana — Adult Large Breed Recipe (11,4 / 17 kg)
-- bron: https://emea.acana.com/nl-NL/voor-honden/eu-aca-adult-large.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Acana', 'Adult Large Breed Recipe', 'kibble', '11,4 / 17 kg', null, 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-adult-large.html', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse kip (16%), kippenvlees meel (15%), hele rode linzen, hele groene erwten, kalkoenmeel (7%), hele kikkererwten, verse kippeningewanden (lever, hart) (4%), kippenvet (4%), verse eieren (4%), rauwe heek (4%), visolie (3%),haringmeel (2,5%), hele groene linzen, hele gele erwten, linzenvezel, erwtenzetmeel, rauwe kalkoenlever (0,5%), zout, gedroogde kelp, verse hele pompoen, verse hele flespompoen, verse hele wortelen, verse hele appels, verse hele peren, verse hele courgette, gedroogde cichoreiwortel, verse boerenkool, verse spinazie, verse raapstelen, vers bietenloof, hele veenbessen, hele bosbessen, hele Saskatoon-bessen, kurkuma, mariadistel, kliswortel, lavendel, heemstwortel, rozebottels.', true, now(), 'sha256:11a2f0341fd8f70d28ab19297d96811fae3b235da55fc80b0d4fe308f304073d', null from p;

-- Acana — Red Meat (2 / 9,7 / 14,5 kg)
-- bron: https://emea.acana.com/nl-NL/voor-honden/eu-aca-classicred.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Acana', 'Red Meat', 'kibble', '2 / 9,7 / 14,5 kg', null, 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-classicred.html', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rauw rundvlees (16%), lamsvleesmeel (15%), parelgort, hele erwten, havergrutten, varkensvet (8%), varkensvleesmeel (8%), hele haver, kikkererwtenvezel, rauw varkensvlees (2%), visolie (1%), kaliumchloride, gedroogde kelp, zout, gedroogde cichoreiwortel, verse hele pompoen, verse hele flespompoen, verse hele wortelen, verse hele appels, verse hele peren, verse hele courgette, verse boerenkool, verse spinazie, verse raapstelen, vers bietenloof, hele veenbessen, hele bosbessen, hele Saskatoon-bessen, kurkuma, mariadistel, kliswortel, lavendel, heemstwortel, rozebottels.', true, now(), 'sha256:d03c0312e4d54e3a20642df182a5f11d09b3eeed383ac50e5af1421f10212c66', null from p;

-- Acana — Coldwater Fish Recipe (2 / 6 / 11,4 kg)
-- bron: https://emea.acana.com/nl-NL/voor-honden/eu-aca-cold-water-fish.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Acana', 'Coldwater Fish Recipe', 'kibble', '2 / 6 / 11,4 kg', null, 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-cold-water-fish.html', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rauwe forel (19%), rauwe zalm (12%), gedehydrateerde zalm (9%), hele rode linzen, hele pintobonen, hele groene erwten, visolie (8%), hele groene linzen, hele kikkererwten, hele gele erwten, rauwe hele heek (4%), gedehydrateerde koolvis (4%), gedehydrateerde makreel (4%), zonnebloemolie, linzenvezel, erwtenzetmeel, calciumcarbonaat, zout, gedroogd zeewier, gist (s. cerevisiae), verse hele pompoen, verse hele flespompoen, verse hele courgette, verse hele wortels, verse hele appels, verse hele peren, verse boerenkool, verse spinazie, vers bietenloof, verse raapstelen, hele veenbessen, hele bosbessen, gedroogde cichoreiwortel, kurkuma, heemstwortel, rozenbottels, jeneverbes.', true, now(), 'sha256:5fccf9fb541be11850e4e054fdd921d4eb8c20516e4575b3f3c8071f95c89ab2', null from p;

-- Acana — Pacifica (2 / 6 / 11,4 kg)
-- bron: https://emea.acana.com/nl-NL/voor-honden/eu-aca-pacifica.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Acana', 'Pacifica', 'kibble', '2 / 6 / 11,4 kg', null, 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-pacifica.html', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rauwe hele haring (13%), rauwe zalm (13%), rauwe bot (7%), gedehydrateerde haring (7%), gedehydrateerde zalm (7%), gedehydrateerde blauwe wijting (7%), hele rode linzen, hele kikkererwten, hele groene erwten, hele groene linzen, visolie (6%), rauwe hele heek (5%), rauwe hele roodbaars (5%), hele pintobonen, hele gele erwten, erwtenzetmeel, zonnebloemolie, linzenvezel, gedroogd zeewier, gist (s. cerevisiae), verse hele pompoen, verse hele muskaatpompoen, verse hele wortels, verse hele appels, verse hele peren, verse hele courgette, verse boerenkool, verse spinazie, verse raapstelen, vers bietenloof, hele veenbessen, hele bosbessen, gedroogde cichoreiwortel, kurkuma, sarsaparilla-wortel, heemstwortel, rozenbottels, jeneverbes.', true, now(), 'sha256:805b4fecc8910c13bd38ff8a463393747b93e36f9fcdb2f139cb7e3d88684d5c', null from p;

-- Acana — Prairie Poultry (2 / 9,7 / 14,5 kg)
-- bron: https://emea.acana.com/nl-NL/voor-honden/eu-aca-prairiepoultry.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Acana', 'Prairie Poultry', 'kibble', '2 / 9,7 / 14,5 kg', null, 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-prairiepoultry.html', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse kip (21%), kipvleesmeel (20%), parelgort, hele erwten, havergrutten, kippenvet (8%), hele haver, kikkererwtenvezel, visolie (1%), kaliumchloride, gedroogde kelp, zout, gedroogde cichoreiwortel, verse hele pompoen, verse hele flespompoen, verse hele wortelen, verse hele appels, verse hele peren, verse hele courgette, verse boerenkool, verse spinazie, verse raapstelen, vers bietenloof, hele veenbessen, hele bosbessen, hele Saskatoon-bessen, kurkuma, mariadistel, kliswortel, lavendel, heemstwortel, rozebottels.', true, now(), 'sha256:b7ea2e2bfb0251ad99c30991052a0c3848e9cd5a3554218f786c7cc2e94c417d', null from p;

-- Acana — Puppy Large Breed (11,4 / 17 kg)
-- bron: https://emea.acana.com/nl-NL/voor-honden/eu-aca-puppy-large.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Acana', 'Puppy Large Breed', 'kibble', '11,4 / 17 kg', null, 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-puppy-large.html', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse kip (22%), kippenvlees meel (21%), hele rode linzen, hele groene erwten, verse kippeningewanden (lever, hart) (6,5%), verse eieren (4%), rauwe heek (4%), visolie (4%), haringmeel (4%), hele kikkererwten, erwtenzetmeel, kalkoenvlees meel (2%), hele groene linzen, hele gele erwten, kippenvet (2%), linzenvezel, rauwe kalkoenlever (0,5%), zout, gedroogde kelp, verse hele appels, verse hele flespompoen, verse hele wortelen, verse hele peren, verse hele pompoen, verse hele courgette, gedroogde cichoreiwortel, verse boerenkool, verse spinazie, verse raapstelen, vers bietenloof, hele bosbessen, hele veenbessen, hele Saskatoon-bessen, kliswortel, lavendel, heemstwortel, mariadistel, rozebottels, kurkuma.', true, now(), 'sha256:de98be5070c8f2ca8ea07f53c995f93e97c10c25e54e65b6fea054101c8171cb', null from p;

-- Acana — Puppy Small Breed Recipe (2 / 6 kg)
-- bron: https://emea.acana.com/nl-NL/voor-honden/eu-aca-puppy-small.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Acana', 'Puppy Small Breed Recipe', 'kibble', '2 / 6 kg', null, 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-puppy-small.html', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse kip (18%), kippenvlees meel (18%), hele rode linzen, hele groene erwten, verse kippeningewanden (lever, hart) (7%), kippenvet (7%), kalkoenvlees meel (4%), verse eieren (4%), rauwe heek (4%), haringmeel (4%), visolie (3%), hele groene linzen, hele kikkererwten, hele gele erwten, linzenvezel, erwtenzetmeel, rauwe kalkoenlever (1%), zout, gedroogde kelp, verse hele pompoen, verse hele flespompoen, verse hele wortelen, verse hele appels, verse hele peren, verse hele courgette, gedroogde cichoreiwortel, verse boerenkool, verse spinazie, verse raapstelen, vers bietenloof, hele veenbessen, hele bosbessen, hele Saskatoon-bessen, kurkuma, mariadistel, kliswortel, lavendel, heemstwortel, rozebottels.', true, now(), 'sha256:bb894350e4a941a6e66d88bf0f57d94b4ff1c23521762e16fdea40f1ec0d1b0d', null from p;

-- Acana — Ranchlands (2 / 6 / 11,4 kg)
-- bron: https://emea.acana.com/nl-NL/voor-honden/eu-aca-ranchlands.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Acana', 'Ranchlands', 'kibble', '2 / 6 / 11,4 kg', null, 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-ranchlands.html', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rauw rundvlees (9%), rauw lamsvlees (8%), rauw varkensvlees (8%), rundvlees meel (8%), lamsvlees meel(8%), varkensvlees meel (7%), hele groene erwten, hele rode linzen, hele kikkererwten, rundvet (5%), rauwe runderlever (4%), rauwe varkenslever (4%), rauwe zoetwatervis* (4%), hele groene linzen, hele pintobonen, hele gele erwten, erwtenzetmeel, rauwe bizon (2%), visolie (2%), linzenvezel, rauwe lamslever (0,5%), rauwe lamspens (0,5%), gedroogde kelp, zout, gevriesdroogde rund en lever, verse hele pompoen, verse hele flespompoen, verse hele wortelen, verse hele appels, verse hele peren, verse hele courgette, gedroogde cichoreiwortel, verse boerenkool, verse spinazie, verse raapstelen, vers bietenloof, hele veenbessen, hele bosbessen, hele Saskatoon-bessen, kurkuma, mariadistel, kliswortel, lavendel, heemstwortel, rozebottels. *gevarieerde mix van rauwe tullibee, witvis, snoek en harder.', true, now(), 'sha256:96e39507ad6b6923ed38773fd33c0fb11b1024ac1c8277436b42c74404c6f6bb', null from p;

-- Acana — Red Meat Recipe (null)
-- bron: https://emea.acana.com/nl-NL/voor-honden/eu-aca-red-meat.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Acana', 'Red Meat Recipe', 'kibble', 'null', null, 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-red-meat.html', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rauw rundvlees (11%), rauw varken (11%), gedehydrateerd varken (9%), hele rode linzen, hele pintobonen, hele groene erwten, gedehydrateerde haring (8%), varkensvet (7%), hele groene linzen, hele kikkererwten, hele gele erwten, rauw lamsvlees (4%), rauwe varkenslever (4%), visolie (4%), linzenvezel, erwtenzetmeel, dicalciumfosfaat, rauwe runderlever (1%), rauwe rundernier (0,5%), rauwe runderpens (0,5%), zout, gedroogd zeewier, gist (s. cerevisiae), verse hele pompoen, verse hele flespompoen, verse hele courgette, verse hele wortels, verse hele appels, verse hele peren, verse boerenkool, verse spinazie, vers bietenloof, verse raapstelen, hele veenbessen, hele bosbessen, gedroogde cichoreiwortel, kurkuma, heemstwortel, rozenbottels, jeneverbes.', true, now(), 'sha256:e71583943c9ed4d78be717ee215fb7aae14227d5ad663b493f873f43e4b7f5f9', null from p;

-- Acana — Senior Recipe (2 / 6 / 11,4 kg)
-- bron: https://emea.acana.com/nl-NL/voor-honden/eu-aca-senior.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Acana', 'Senior Recipe', 'kibble', '2 / 6 / 11,4 kg', null, 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-senior.html', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse kip (19%), kippenvlees meel (18%), hele rode linzen, hele groene erwten, kalkoenvlees meel (6%), hele kikkererwten, verse kippeningewanden (lever, hart) (5%), linzenvezel, verse eieren (4%), rauwe heek (4%), visolie (4%), haringmeel (3%), hele groene linzen, hele gele erwten, erwtenzetmeel, kippenvet (1%), rauwe kalkoenlever (1%), gedroogde kelp, verse hele pompoen, verse hele flespompoen, verse hele wortelen, verse hele appels, verse hele peren, verse hele courgette, gedroogde cichoreiwortel, verse boerenkool, verse spinazie, verse raapstelen, vers bietenloof, hele veenbessen, hele bosbessen, hele Saskatoon-bessen, kurkuma, mariadistel, kliswortel, lavendel, heemstwortel, rozebottels.', true, now(), 'sha256:2034773701bc93823b2f3853bcc9ad114b4cfbf94cfc06a554383bf5d0346c65', null from p;

-- Acana — Singles Beef With Pumpkin Recipe (null)
-- bron: https://emea.acana.com/nl-NL/voor-honden/eu-aca-singles-beef-new.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Acana', 'Singles Beef With Pumpkin Recipe', 'kibble', 'null', null, 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-singles-beef-new.html', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rauw rundvlees (21%), gedehydrateerd rund (19%), rauwe runderlever (14%), zoete aardappel, hele kikkererwten, rundvet (7%), hele linzen, verse hele pompoen (4%), visolie (3%), linzenvezel, rauwe rundernier (0,5%), rauwe runderpens (0,5%), zout, gedroogd zeewier, verse hele flespompoen, gist (s. cerevisiae), hele veenbessen, hele bosbessen, gedroogde cichoreiwortel, kurkuma, heemstwortel, rozenbottels, jeneverbes.', true, now(), 'sha256:4f83ccbf739503af6576b8aad0c2445b18156323860150d446560415364c98c3', null from p;

-- Acana — Free-Run Duck (2 / 6 / 11,4 kg)
-- bron: https://emea.acana.com/nl-NL/voor-honden/eu-aca-singles-duck-new.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Acana', 'Free-Run Duck', 'kibble', '2 / 6 / 11,4 kg', null, 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-singles-duck-new.html', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse eend (18%),eendenvlees meel (17%), hele groene erwten, hele rode linzen, verse eendeningewanden (lever, hart, nier) (7%), eendenvet (6%), verse Bartlett peren (4%), hele garbanzo bonen, hele groene linzen, hele gele erwten, gedroogd eendenkraakbeen (2%), linzenvezel, zeealgen (1,2%) (zuivere en duurzame bron van DHA en EPA), verse hele flespompoen, verse hele pompoen, gedroogde bruine kelp, gevriesdroogde eendenlever, zout, verse hele veenbessen, verse hele bosbessen, cichoreiwortel, kurkuma wortel, mariadistel, kliswortel, lavendel, heemstwortel, rozebottels.', true, now(), 'sha256:39875f9adfc1ecad8bf9025febfc427dbe3da6b873561ecc7cd5c7ef12a9e50e', null from p;

-- Acana — Grass-fed Lamb (2 / 6 / 11,4 / 17 kg)
-- bron: https://emea.acana.com/nl-NL/voor-honden/eu-aca-singles-lamb-new.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Acana', 'Grass-fed Lamb', 'kibble', '2 / 6 / 11,4 / 17 kg', null, 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-singles-lamb-new.html', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rauw lamsvlees (21%), lamsvlees meel (19%), hele groene erwten, hele rode linzen, rauwe lamslever (8%), koolzaadolie, verse appels (4%), hele kikkererwten, hele groene linzen, hele gele erwten, linzenvezel, erwtenzetmeel, zonnebloemolie, algen (bron van EPA en DHA), rauwe lamspens (1%), rauwe lamsnier (1%), verse hele flespompoen, verse hele pompoen, gedroogde kelp, zout, gedroogde cichoreiwortel, hele veenbessen, hele bosbessen, kurkuma, mariadistel, kliswortel, lavendel, heemstwortel, rozebottels.', true, now(), 'sha256:fcf4914870a1c9b7cf6337a804925249597b5ddd3c2b6912de8b712c0a30fdd1', null from p;

-- Acana — Yorkshire Pork (2 / 6 / 11,4 kg)
-- bron: https://emea.acana.com/nl-NL/voor-honden/eu-aca-singles-pork-new.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Acana', 'Yorkshire Pork', 'kibble', '2 / 6 / 11,4 kg', null, 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-singles-pork-new.html', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers Yorkshire varken (16%), varkensvlees meel (16%), hele groene erwten, hele rode linzen, verse varkenslever (6%), varkensvet (6%), verse varkensnier (4%), verse hele flespompoen (4%), hele garbanzo bonen, hele groene linzen, hele gele erwten, gedroogd varkenskraakbeen (2%), linzenvezel, zeealgen (1,2%) (zuivere en duurzame bron van DHA en EPA), verse hele pompoen, gedroogde bruine kelp, zout, gevriesdroogde varkenslever, verse hele veenbessen, verse hele bosbessen, cichoreiwortel, kurkuma wortel, mariadistel, kliswortel, lavendel, heemstwortel, rozebottels.', true, now(), 'sha256:a754ae6eff981b9e2d7b107638e20a63ec1adf3ff10d4412f2b3ef9a5e5c3ab7', null from p;

-- Acana — Sport & Agility Recipe (11,4 / 17 kg)
-- bron: https://emea.acana.com/nl-NL/voor-honden/eu-aca-sport-agility.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Acana', 'Sport & Agility Recipe', 'kibble', '11,4 / 17 kg', null, 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-sport-agility.html', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse kip (21%), kippenvlees meel (20%), hele rode linzen, hele groene erwten, kippenvet (8%), kalkoenvlees meel (7%), verse kippeningewanden (lever, hart) (4%), verse eieren (4%), rauwe heek (4%), visolie (3,5%), haringmeel (3%), hele kikkererwten, hele groene linzen, hele gele erwten, erwtenzetmeel, rauwe kalkoenlever (0,5%), zout, gedroogde kelp, verse hele pompoen, verse hele flespompoen, verse hele wortelen, verse hele appels, verse hele peren, verse hele courgette, gedroogde cichoreiwortel, verse boerenkool, verse spinazie, verse raapstelen, vers bietenloof, hele veenbessen, hele bosbessen, hele Saskatoon-bessen, kurkuma, mariadistel, kliswortel, lavendel, heemstwortel, rozebottels.', true, now(), 'sha256:23787d68a97fcf36720e25a0d0b4c936958863e6aeba2ecbc6e17a1ef14b6eb3', null from p;

-- Acana — Wild Prairie (2 / 6 / 11,4 kg)
-- bron: https://emea.acana.com/nl-NL/voor-honden/eu-aca-wild-prairie.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Acana', 'Wild Prairie', 'kibble', '2 / 6 / 11,4 kg', null, 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-wild-prairie.html', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse kip (11%), rauwe kalkoen (9%), verse kippeningewanden (lever, hart) (9%), kippenvlees meel (9%), haringmeel (9%), hele groene erwten, hele rode linzen, hele kikkererwten, rauwe zoetwatervis* (6%), kalkoenvlees meel (6%), eieren (4%), kippenvet (4%), hele groene linzen, hele pintobonen, hele gele erwten, linzenvezel, visolie (2%), erwtenzetmeel, rauwe kalkoenlever (1%), gedroogde kelp, zout, gevriesdroogde kip en lever, verse hele pompoen, verse hele flespompoen, verse hele wortelen, verse hele appels, verse hele peren, verse hele courgette, gedroogde cichoreiwortel, verse boerenkool, verse spinazie, verse raapstelen, vers bietenloof, hele veenbessen, hele bosbessen, hele Saskatoon-bessen, kurkuma, mariadistel, kliswortel, lavendel, heemstwortel, rozebottels. *gevarieerde mix van rauwe tullibee, witvis, snoek en harder.', true, now(), 'sha256:bcf43602a84ea69c85435335854a93e0e717f2cfd5160ea05feb0cd6d787e10f', null from p;

-- Acana — Wild Coast (2 / 9,7 / 14,5 kg)
-- bron: https://emea.acana.com/nl-NL/voor-honden/eu-aca-wildcoast.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Acana', 'Wild Coast', 'kibble', '2 / 9,7 / 14,5 kg', null, 'https://emea.acana.com/nl-NL/voor-honden/eu-aca-wildcoast.html', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rauwe zalm (22%), haringmeel (19%), parelgort, hele erwten, havergrutten, varkensvet (8%), hele haver, kikkererwtenvezel, visolie (1%), calciumcarbonaat, kaliumchloride, gedroogde kelp, zout, gedroogde cichoreiwortel, verse hele pompoen, verse hele flespompoen, verse hele wortelen, verse hele appels, verse hele peren, verse hele courgette, verse boerenkool, verse spinazie, verse raapstelen, vers bietenloof, hele veenbessen, hele bosbessen, hele Saskatoon-bessen, kurkuma, mariadistel, kliswortel, lavendel, heemstwortel, rozebottels.', true, now(), 'sha256:bcf71177031d35a39bfea63b95289680a2fb418cc96d7d1a0c2e5be573317097', null from p;

-- Orijen — Regional Red (340 g / 2 / 6 / 11,4 kg)
-- bron: https://emea.orijenpetfoods.com/nl-NL/eu-ori-ns-ori-regionalred.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Orijen', 'Regional Red', 'kibble', '340 g / 2 / 6 / 11,4 kg', null, 'https://emea.orijenpetfoods.com/nl-NL/eu-ori-ns-ori-regionalred.html', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rauw rund (18,5%), rauw lam (7%), rauw varken (7%), rauw runderlever (5%), rauwe zalm (5%), rauwe varkenslever (5%), verse eieren (5%), gedroogd lam (5%), gedroogd rund (5%), gedroogde haring (5%), hele rode linzen, hele pinto bonen, gedroogd varken (3,5%), gedroogde sardine (3,5%), hele groene linzen, hele kikkererwten, hele navy bonen, linzen vezel, rundervet (2%), witvisolie (2%), rauwe lamslever (1,5%), rauwe rundernier (1,5%), rauwe runder pens (1,5%), rauwe lams nier (1%), rauwe lams pens (1%), gedroogd zeewier, verse hele pompoen, verse hele muskaat pompoen, verse hele courgette, verse hele wortels, verse hele appels, verse hele peren, gedroogde cichoreiwortel, verse boerenkool, verse spinazie, vers bieten loof, verse raapstelen, hele veenbessen, hele bosbessen, hele saskatoon bessen, kurkuma, mariadistel, kliswortel, lavendel, heemstwortel, rozenbottels.', true, now(), 'sha256:8404ccda7c28b299c11aa05dc0fc2d9e9f6563a602c38c45aba4fd13e3b00ff9', null from p;

-- Orijen — Fit & Trim (2 / 6 / 11,4 kg)
-- bron: https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-ori-fittrim.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Orijen', 'Fit & Trim', 'kibble', '2 / 6 / 11,4 kg', null, 'https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-ori-fittrim.html', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse kip (25%), rauwe hele haring (6%), rauwe kalkoen (6%), verse kippeningewanden (lever, hart) (6%), rauwe hele heek (5%), rauwe hele makreel (5%), verse eieren (5%), kippenvlees meel (4%), gedroogde makreel (4%), gedroogde sardine (4%), gedroogde haring (4%), gedroogd kalkoenvlles (4%), gedroogde witvis (4%), linzenvezel, hele pintobonen, hele witte bonen, hele kikkererwten, hele rode linzen, hele groene linzen, hele erwten, erwtenzetmeel, rauwe kalkoenlever (1,5%), kippenvet (1,5%), appelvezels, algen (bron van DHA), gedroogde kelp, verse hele pompoen, verse hele flespompoen, verse hele courgette, verse hele wortelen, verse hele appels, verse hele peren, gedroogde cichoreiwortel, verse boerenkool, verse spinazie, vers bietenloof, verse raapstelen, hele veenbessen, hele bosbessen, hele Saskatoon-bessen, kurkuma, mariadistel, kliswortel, lavendel, heemstwortel, rozebottels.', true, now(), 'sha256:e1dedf7249edfefdde49bf4e201671cd230cced203c208f661f26f048a977a02', null from p;

-- Orijen — Senior (2 / 6 / 11,4 kg)
-- bron: https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-ori-senior.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Orijen', 'Senior', 'kibble', '2 / 6 / 11,4 kg', null, 'https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-ori-senior.html', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse kip (18%), rauwe kalkoen (10%), verse kippeningewanden (lever, hart) (10%), rauwe hele haring (6%), rauwe hele heek (5%), verse eieren (5%), rauwe kalkoenlever (5%), gedroogd kippenvlees (5%), gedroogd kalkoenvlees (5%), gedroogde makreel (4%), gedroogde sardine (4%), gedroogde haring (4%), hele rode linzen, hele groene linzen, hele erwten, linzenvezel, hele kikkererwten, hele pintobonen, erwtenzetmeel, koolvisolie (2%), kippenvet (2%), hele witte bonen, gedroogde kelp, verse hele pompoen, verse hele flespompoen, verse hele courgette, verse hele wortelen, verse hele appels, verse hele peren, gedroogde cichoreiwortel, verse boerenkool, verse spinazie, vers bietenloof, verse raapstelen, hele veenbessen, hele bosbessen, hele Saskatoon-bessen, kurkuma, mariadistel, kliswortel, lavendel, heemstwortel, rozebottels.', true, now(), 'sha256:6a27786d22c071a235a0d82fa395e9ac7e6a294e8e4c7cb5fe390d4f35d5e253', null from p;

-- Orijen — Large Breed Puppy (6 / 11,4 kg)
-- bron: https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-ori-puppy-large.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Orijen', 'Large Breed Puppy', 'kibble', '6 / 11,4 kg', null, 'https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-ori-puppy-large.html', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse kip (21%), rauwe kalkoen (11%), verse kippeningewanden (lever, hart) (10%), rauwe hele heek (5%), rauwe hele haring (5%), verse eieren (5%), rauwe kalkoenlever (5%), gedroogde kip (5%), gedroogde makreel (5%), gedroogde sardine (4.5%), gedroogde haring (4%), hele rode linzen, hele groene linzen, hele erwten, linzenvezel, hele kikkererwten, hele pintobonen, erwtenzetmeel, gedroogde kalkoen (2%), kippenvet (2%), hele witte bonen, koolvisolie (0,5%), gedroogde kelp, verse hele pompoen, verse hele flespompoen, verse hele courgette, verse hele wortelen, verse hele appels, verse hele peren, gedroogde cichoreiwortel, verse boerenkool, verse spinazie, vers bietenloof, verse raapstelen, hele veenbessen, hele bosbessen, hele Saskatoon-bessen, kurkuma, mariadistel, kliswortel, lavendel, heemstwortel, rozebottels.', true, now(), 'sha256:aaf23aca51a689f89c7fcbab829f768fedd147f24711e68aef98b38489db3672', null from p;

-- Orijen — Large Breed Adult (11,4 kg)
-- bron: https://emea.orijenpetfoods.com/de-DE/dogs/dog-food/eu-ori-ns-ori-large-breed-adult.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Orijen', 'Large Breed Adult', 'kibble', '11,4 kg', null, 'https://emea.orijenpetfoods.com/de-DE/dogs/dog-food/eu-ori-ns-ori-large-breed-adult.html', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse kip (29%), verse kippeningewanden (lever, hart, spiermaag) (6%), rauwe kalkoen (6%), rauwe zalm (5%), rauwe hele haring (5%), gedroogde kip (5%), gedroogde koolvis (5%), gedroogde sardine (5%), gedroogde kalkoen (5%), gedroogde haring (4,5%), hele rode linzen, hele erwten, linzenvezel, rauwe kalkoenlever (4%), verse eieren (4%), hele groene linzen, hele kikkererwten, hele pintobonen, hele witte bonen, gedroogde appelvezels, witvisolie (0,5%), kippenvet (0,5%), gedroogde kippenlever (0,5%), gedroogde kelp, verse hele pompoen, verse hele flespompoen, verse hele wortelen, verse hele appels, verse hele peren, verse hele courgette, gedroogde cichoreiwortel, verse boerenkool, verse spinazie, verse raapstelen, vers bietenloof, hele veenbessen, hele bosbessen, hele Saskatoon-bessen, kurkuma, mariadistel, kliswortel, lavendel, heemstwortel, rozenbottels.', true, now(), 'sha256:b585d11865c416463fb9bd3e7bace7474920d205609e479d68ac3680b8ade220', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Orijen — Small Breed (1,8 / 4,5 kg)
-- bron: https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-ori-small-breed.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Orijen', 'Small Breed', 'kibble', '1,8 / 4,5 kg', null, 'https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-ori-small-breed.html', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rauwe kalkoen (19%), verse kip (18,5%), rauwe kwartel (4%), rauwe hele heek (4%), rauwe hele haring (4%), rauwe kalkoenlever (4%), verse kippeningewanden (lever, hart) (4%), verse eieren (4%), gedroogde kalkoen (4%), gedroogde kip (4%), gedroogde haring (4%), gedroogde kippenlever (4%), gedroogd ei (4%), hele rode linzen, hele pintobonen, hele groene linzen, kippenvet (3%), hele witte bonen, hele kikkererwten, linzenvezel, hele erwten, koolvisolie (0,5%), erwtenzetmeel, gedroogde kelp, Nieuw-Zeelandse groene mosselen, verse hele flespompoen, verse hele pompoen, zout, verse hele appels, verse hele wortelen, verse hele peren, verse hele courgette, gedroogde cichoreiwortel, vers bietenloof, verse boerenkool, verse spinazie, verse raapstelen, hele veenbessen, hele bosbessen, hele Saskatoon-bessen, kurkuma, mariadistel, kliswortel, lavendel, heemstwortel, rozebottels.', true, now(), 'sha256:e9beb702a7222703c157922a6d8b64e582b674319e1b9fbc1f1ca98f78eec179', null from p;

-- Orijen — Small Breed Puppy (1,8 / 4,5 kg)
-- bron: https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-ori-small-breed-puppy.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Orijen', 'Small Breed Puppy', 'kibble', '1,8 / 4,5 kg', null, 'https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-ori-small-breed-puppy.html', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse kip (18%), rauwe zalm (12%), rauwe kalkoen (10%), rauwe hele heek (4%), rauwe hele haring (4%), rauwe kalkoenlever (4%), verse kippeningewanden (lever, hart) (4%), verse eieren (4%), gedroogd kalkoenvlees (4%), gedroogd kippenvlees (4%), gedroogde haring (4%), gedroogde kippenlever (4%), gedroogd ei (4%), hele rode linzen, hele pintobonen, kippenvet (3%), hele groene linzen, hele witte bonen, hele kikkererwten, hele erwten, koolvisolie (2%), linzenvezel, rauwe Nieuw-Zeelandse groene mosselen, gedroogde kelp, verse hele flespompoen, verse hele pompoen, zout, gedroogde cichoreiwortel, verse hele appels, verse hele wortelen, verse hele peren, verse hele courgette, vers bietenloof, verse boerenkool, verse spinazie, verse raapstelen, hele veenbessen, hele bosbessen, hele Saskatoon-bessen, kurkuma, mariadistel, kliswortel, lavendel, heemstwortel, rozebottels.', true, now(), 'sha256:04f5672335c0601eb2a6e99a8ebd29c77bfe1c03b02377dd9d2e8a01115b3f45', null from p;

-- Orijen — Small Breed Marine Fish (1,8 / 4,5 kg)
-- bron: https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-ori-small-breed-marine-fish.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Orijen', 'Small Breed Marine Fish', 'kibble', '1,8 / 4,5 kg', null, 'https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-ori-small-breed-marine-fish.html', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rauwe zalm (17%), rauwe hele haring (16%), rauwe botvis (7%), rauwe hele heek (6%), rauwe hele roodbaars (6%), rauwe hele tong (6%), gedroogde haring (5%), gedroogde sardine (5%), gedroogde koolvis (5%), gedroogde makreel (5%), gedroogde blauwe wijting (5%), hele rode linzen, hele erwten, hele kikkererwten, hele groene linzen, linzenvezel, hele pintobonen, zonnebloemolie, haring olie (2%), hele witte bonen, rauwe Nieuw-Zeelandse groene mosselen, gedroogde kelp, verse hele flespompoen, verse hele pompoen, gedroogde cichoreiwortel, verse hele appels, verse hele wortelen, verse hele peren, verse hele courgette, Mojave-yucca, vers bietenloof, verse boerenkool, verse spinazie, verse raapstelen, hele veenbessen, hele bosbessen, hele Saskatoon-bessen, kurkuma, mariadistel, kliswortel, lavendel, heemstwortel, rozebottels.', true, now(), 'sha256:3a9c0c1173bea72fac503f1549c32607de1b4e2e33a15f13b0acee922ac7a113', null from p;

-- WOOOF — Eend Hondenbrokken - Geperst (18 / 36 kg)
-- bron: https://wooof.com/WOOOF-eend/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('WOOOF', 'Eend Hondenbrokken - Geperst', 'kibble', '18 / 36 kg', null, 'https://wooof.com/WOOOF-eend/', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde eend (22,5%), ontsloten rijst, ontsloten aardappel, erwtenzetmeel, gevogeltevet (2%), eipoeder, zalmolie (1%), gedroogde tomaat, zonnebloemolie, gedroogde appel, cranberry, lijnzaadolie, spirulina, Echinacea, glucosamine (0,02%), chondroïtine (0,02%), yucca schidigera', true, now(), 'sha256:3a4372440b844ee1e1d704e42670fcd8cb63a52b1045ff08f3860ff877f6db4e', null from p;

-- WOOOF — High Energy Hondenvoer - Geperst (18 / 36 kg)
-- bron: https://wooof.com/WOOOF-high-energy/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('WOOOF', 'High Energy Hondenvoer - Geperst', 'kibble', '18 / 36 kg', null, 'https://wooof.com/WOOOF-high-energy/', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ontsloten mais, gedroogd dierlijk eiwit (rund 23,9%, kip 4%), gevogeltevet (9%), zalmolie (0,5%), lijnzaad, inuline (0,3%), mineralen', true, now(), 'sha256:760165375ad416efdaf8607ce52b21cb486884940b0567ed2e922bacb053dbbf', null from p;

-- WOOOF — Lam & Aardappel Hondenbrokken - Geperst (18 / 36 kg)
-- bron: https://wooof.com/WOOOF-lam-aardappel/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('WOOOF', 'Lam & Aardappel Hondenbrokken - Geperst', 'kibble', '18 / 36 kg', null, 'https://wooof.com/WOOOF-lam-aardappel/', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogd lam (20%), erwten (15%), ontsloten aardappel (14,5%), ontsloten zoete aardappel (12,7%), gedroogde aardappel (11%), gevogeltevet (8,5%), gelatinehydrolysaat (5%), hemoglobinepoeder (5%), biergist, zalmolie (0,5%), inuline (0,2%, bron van FOS), lijnzaadolie, mineralen, gedroogde wortel, brandnetel, Echinacea, gedroogde tomaat, gedroogde appel, gedroogde mango, gedroogde pruimen, gedroogde banaan, tijm basilicum, spirulina, cranberry, selderij, glucosamine (0,02%) en chondroïtine (0,02%)', true, now(), 'sha256:37c530defb0844e8e6b7403995f0973336b4ea2c14223b4ca030cab4176466c6', null from p;

-- WOOOF — Lam & Rijst Hondenvoer - Geperst (18 / 36 kg)
-- bron: https://wooof.com/WOOOF-lam-rijst/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('WOOOF', 'Lam & Rijst Hondenvoer - Geperst', 'kibble', '18 / 36 kg', null, 'https://wooof.com/WOOOF-lam-rijst/', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ontsloten maïs, gedroogde lam (21%), ontsloten rijst, gevogeltevet, gedroogde bietenpulp, lijnzaad, zalmolie (0,5%).', true, now(), 'sha256:f539564612f0bc0e966f2ab02df9965aced7360bf9c983afb790f092ae58e517', null from p;

-- WOOOF — Light Hondenvoer - Geperst (18 / 36 kg)
-- bron: https://wooof.com/WOOOF-light/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('WOOOF', 'Light Hondenvoer - Geperst', 'kibble', '18 / 36 kg', null, 'https://wooof.com/WOOOF-light/', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ontsloten maïs, gedroogde kalkoen (8%), gedroogde vis (4%), ontsloten rijst, gedroogde bietenpulp, gevogeltevet, biergist, zalmolie (1%), inuline (bron van FOS), chondroïtine (0,03%), glucosamine (0,03%), yucca', true, now(), 'sha256:9c35335a02127422d6889a020adc5865c9589b224272baf1851fb72152329019', null from p;

-- WOOOF — Puppybrokken - Geperst (6 / 18 / 36 kg)
-- bron: https://wooof.com/WOOOF-puppyvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('WOOOF', 'Puppybrokken - Geperst', 'kibble', '6 / 18 / 36 kg', null, 'https://wooof.com/WOOOF-puppyvoer/', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ontsloten maïs, gedroogd dierlijk eiwit (rund 26,5%), gevogeltevet (7%), gedroogde kip (4%), cellulose, weipoeder, zalmolie (0,5%), mannanoligosaccharide (MOS), inuline (0,3%, bron van FOS), lijnzaadolie, maltodextrine.', true, now(), 'sha256:9c08a3d8cd47a243b7099d2cb335c132ba9f743f90ffa593623e9877fac2c039', null from p;

-- WOOOF — Puppybrokken Graanvrij - Geperst (10 / 18 kg)
-- bron: https://wooof.com/WOOOF-puppyvoer-graanvrij/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('WOOOF', 'Puppybrokken Graanvrij - Geperst', 'kibble', '10 / 18 kg', null, 'https://wooof.com/WOOOF-puppyvoer-graanvrij/', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde kalkoen (31%), erwtenzetmeel, gedroogde aardappel, erwten, gevogeltevet, collageeneiwit, gedroogde bietenpulp, lijnzaad, zalmolie, mannanoligosacchariden (MOS), inuline (bron van FOS), biergist, gedroogde eieren, mineralen.', true, now(), 'sha256:4bf9a68f13b9f31cfb64577d84bee8dbaacf0f2409b8b57933f31634419d5dbe', null from p;

-- WOOOF — Senior Hondenvoer - Geperst (18 / 36 kg)
-- bron: https://wooof.com/WOOOF-senior/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('WOOOF', 'Senior Hondenvoer - Geperst', 'kibble', '18 / 36 kg', null, 'https://wooof.com/WOOOF-senior/', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ontsloten maïs, gedroogde kalkoen (8%), gedroogde vis (4%), ontsloten rijst, gedroogde bietenpulp, gevogeltevet, biergist, zalmolie (1%), inuline (bron van FOS), chondroïtine (0,03%), glucosamine (0,03%), yucca', true, now(), 'sha256:9c35335a02127422d6889a020adc5865c9589b224272baf1851fb72152329019', null from p;

-- WOOOF — Zalm & Aardappel Hondenbrokken - Geperst (18 / 36 kg)
-- bron: https://wooof.com/WOOOF-zalm-aardappel-18kg/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('WOOOF', 'Zalm & Aardappel Hondenbrokken - Geperst', 'kibble', '18 / 36 kg', null, 'https://wooof.com/WOOOF-zalm-aardappel-18kg/', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Zalm (waarvan 15% verse zalm), gedroogde aardappel (21%), aardappelzetmeel, erwten, gevogeltevet, biergist, zalmolie (1%), eipoeder, gedroogde appels (0,3%), cranberries (0,3%), inuline (bron van FOS, 0,3%), gedroogde tomaten (0,2%), spirulina (0,1%), Echinacea (0,1%).', true, now(), 'sha256:30136c2f7fd905a0b52e57580cd90e98e94252ae9c93b562203a187c305cacb1', null from p;

-- WOOOF — Zalm Hondenbrokken - Geperst (6 / 18 / 36 kg)
-- bron: https://wooof.com/WOOOF-zalm/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('WOOOF', 'Zalm Hondenbrokken - Geperst', 'kibble', '6 / 18 / 36 kg', null, 'https://wooof.com/WOOOF-zalm/', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Ontsloten mais, gedroogde zalm (25%), gevogeltevet (5%), lignocellulose, zalmolie (1%), biergist, glucosamine (0,03%) en chondroïtine (0,01%).', true, now(), 'sha256:4aa7cf3d3fc00886ab69f5b109cbe1fceed2545e58bc3fad68121a05ad5986e1', null from p;

-- WOOOF — Eend Hondenvoer - Krokant (18 / 36 kg)
-- bron: https://wooof.com/wooof-eend-hondenvoer-krokant/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('WOOOF', 'Eend Hondenvoer - Krokant', 'kibble', '18 / 36 kg', null, 'https://wooof.com/wooof-eend-hondenvoer-krokant/', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gedroogde eend (25%), rijst (14%), gerst, gevogeltevet, erwten, gedroogde bietenpulp, gedroogde johannesbroodpeulen, lijnzaad, biergist, mineralen.', true, now(), 'sha256:ec2f037dfcebbe38875369b817d52af2429f78e78808b333450cff62c3e0ab82', null from p;

-- WOOOF — Lam & Aardappel Hondenvoer - Krokant (18 / 36 kg)
-- bron: https://wooof.com/wooof-lam-aardappel-hondenvoer-krokant/18kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('WOOOF', 'Lam & Aardappel Hondenvoer - Krokant', 'kibble', '18 / 36 kg', null, 'https://wooof.com/wooof-lam-aardappel-hondenvoer-krokant/18kg', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde zoete aardappel, gedroogd lam (20%), erwten, gevogeltevet, erwteneiwit, lijnzaad, gedroogd konijn, gedroogde tomaat, gedroogde johannesbrood, luzerne, eipoeder, gedroogde wortelen, zalmolie (1%), alfalfa, cranberry, inuline (bron van FOS), glucosamine, chondroïtine, Yucca Schidigera.', true, now(), 'sha256:a323bfcc2c2039ff80c37b0a8925ae394e36a4ce9114136e64cd0133e1e69f37', null from p;

-- WOOOF — Lam & Rijst Hondenvoer - Krokant (18 / 36 kg)
-- bron: https://wooof.com/WOOOF-Lam-Rijst-Hondenvoer-Krokant/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('WOOOF', 'Lam & Rijst Hondenvoer - Krokant', 'kibble', '18 / 36 kg', null, 'https://wooof.com/WOOOF-Lam-Rijst-Hondenvoer-Krokant/', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gedroogd lam (14%), rijst (14%), gerst, gevogeltevet, gedroogde bietenpulp, erwten, gedroogde vis, gedroogde johannesbroodpeulen, biergist, zalmolie, lijnzaad, inuline (bron van FOS), eipoeder, glucosamine, chondroïtine.', true, now(), 'sha256:839a27fe8f8079f814091e72eb31749d1a841616af4c46a5e71ee53526151848', null from p;

-- WOOOF — Puppy Hondenvoer - Krokant (6 / 18 / 36 kg)
-- bron: https://wooof.com/wooof-puppyvoer-krokant/18kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('WOOOF', 'Puppy Hondenvoer - Krokant', 'kibble', '6 / 18 / 36 kg', null, 'https://wooof.com/wooof-puppyvoer-krokant/18kg', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gedroogde kip, gerst, gevogeltevet, rijst, gedroogde johannesbroodpeulen, gedroogde bietenpulp, lijnzaad, lignocellulose, biergist, zalmolie, eipoeder, glucosamine, chondroïtine.', true, now(), 'sha256:3c14472786c80aeceb7518e46329970d1d47dbe63d71591611017f2dbb7683a2', null from p;

-- WOOOF — Regular Hondenvoer - Krokant (6 / 18 / 36 kg)
-- bron: https://wooof.com/wooof-regular-hondenvoer-krokant/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('WOOOF', 'Regular Hondenvoer - Krokant', 'kibble', '6 / 18 / 36 kg', null, 'https://wooof.com/wooof-regular-hondenvoer-krokant/', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde gevogelte, maïs, rijst, gerst, erwten, gevogeltevet, gedroogde bietenpulp, gedroogde vis, lijnzaad, gedroogde johannesbroodpeulen, biergist, mineralen, glucosamine, chondroïtine.', true, now(), 'sha256:7fe4e0a529e0cf474f5fd4627da610ffda00657a836803921ff349e98f5e43e1', null from p;

-- WOOOF — Senior Hondenvoer - Krokant (18 / 36 kg)
-- bron: https://wooof.com/wooof-senior-hondenvoer-krokant/18kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('WOOOF', 'Senior Hondenvoer - Krokant', 'kibble', '18 / 36 kg', null, 'https://wooof.com/wooof-senior-hondenvoer-krokant/18kg', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, rijst, gedroogd gevogelte (waarvan 8% gedroogde eend), gerst, gevogeltevet, gedroogde bietenpulp, lijnzaad, gedroogde vis, zalmolie, biergist, inuline (bron van FOS) (0,1%), glucosamine, chondroïtine.', true, now(), 'sha256:571f1da90dc5387eb519d5950301e7070bda0e10cf8e4a61649469c492d531cb', null from p;

-- WOOOF — Zalm Hondenvoer - Krokant (6 / 18 / 36 kg)
-- bron: https://wooof.com/wooof-zalm-hondenvoer-krokant/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('WOOOF', 'Zalm Hondenvoer - Krokant', 'kibble', '6 / 18 / 36 kg', null, 'https://wooof.com/wooof-zalm-hondenvoer-krokant/', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gedroogde zalm (20%), rijst (15%), gevogeltevet, gedroogde bietenpulp, biergist, lijnzaad, zalmolie, glucosamine, chondroïtine.', true, now(), 'sha256:0388cf1c0d5ccd65a31de62d68877fbf7eff850cc3e78b3cb83f800e225549cc', null from p;

-- WOOOF — Eend Worst (800 g / 8 kg / 24 kg)
-- bron: https://wooof.com/WOOOF-verse-eend-worst/10-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('WOOOF', 'Eend Worst', 'wet', '800 g / 8 kg / 24 kg', null, 'https://wooof.com/WOOOF-verse-eend-worst/10-stuks', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eend (95%), rijst (4%) en vitamine en mineralen (1%).', true, now(), 'sha256:2675826d7d3521f6620343d15b762b0d5b0835656829f56d8983dcc15a9d462f', null from p;

-- WOOOF — Lam Worst (800 g / 8 kg / 24 kg)
-- bron: https://wooof.com/WOOOF-verse-lam-worst/10-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('WOOOF', 'Lam Worst', 'wet', '800 g / 8 kg / 24 kg', null, 'https://wooof.com/WOOOF-verse-lam-worst/10-stuks', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam (95%), rijst (4%), vitamines en mineralen (1%)', true, now(), 'sha256:44d8067d46684769ca65fabd4374471394e768c684373223334fdb3e3e2ba291', null from p;

-- WOOOF — Kip Worst (900 g / 9 kg / 27 kg)
-- bron: https://wooof.com/WOOOF-verse-kip-worst/9-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('WOOOF', 'Kip Worst', 'wet', '900 g / 9 kg / 27 kg', null, 'https://wooof.com/WOOOF-verse-kip-worst/9-kg', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip (80%), aardappelzetmeel, vitamine en mineralen', true, now(), 'sha256:19a687af52fb11dc4d923490a1734a8d443cad84add5e154f46ac245ffdc9c2c', null from p;

-- WOOOF — Rund & Kip Worst (900 g / 9 kg / 27 kg)
-- bron: https://wooof.com/WOOOF-verse-kip-rund-worst/9-kg
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('WOOOF', 'Rund & Kip Worst', 'wet', '900 g / 9 kg / 27 kg', null, 'https://wooof.com/WOOOF-verse-kip-rund-worst/9-kg', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip en Rund (56% kip, 24% rund), aardappelzetmeel, vitamines en mineralen', true, now(), 'sha256:cd6dab53ad443c76c2828b0f7acc3c051683753ab5ccbeb0f8e821d7531a97e0', null from p;

-- WOOOF — Rund Worst - Graanvrij (900 g / 9 kg / 27 kg)
-- bron: https://wooof.com/WOOOF-Rund-worst-Graanvrij/10-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('WOOOF', 'Rund Worst - Graanvrij', 'wet', '900 g / 9 kg / 27 kg', null, 'https://wooof.com/WOOOF-Rund-worst-Graanvrij/10-stuks', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rund (80%), aardappelzetmeel, vitaminen en mineralen.', true, now(), 'sha256:50c23317a198c8fa32e993ef91f8c4001ae387cf716aa40a1fbc41d37cd7b41c', null from p;

-- WOOOF — Hert & Kip Worst (900 g / 9 kg / 27 kg)
-- bron: https://wooof.com/WOOOF-verse-kip-hert-worst/10-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('WOOOF', 'Hert & Kip Worst', 'wet', '900 g / 9 kg / 27 kg', null, 'https://wooof.com/WOOOF-verse-kip-hert-worst/10-stuks', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Hert (30%), kip (69%), vitamine-premix (1%)', true, now(), 'sha256:91b66280075a29a8bb0cfaddb647af30e789bd324c4d623645a00e95b3fe6a4e', null from p;

-- WOOOF — Kalkoen Worst Vers - Graanvrij (900 g / 9 kg / 27 kg)
-- bron: https://wooof.com/WOOOF-Kalkoen-Worst-Vers-Graanvrij/10-stuks
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('WOOOF', 'Kalkoen Worst Vers - Graanvrij', 'wet', '900 g / 9 kg / 27 kg', null, 'https://wooof.com/WOOOF-Kalkoen-Worst-Vers-Graanvrij/10-stuks', date '2026-10-21', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen (80%), aardappelzetmeel, vitaminen en mineralen', true, now(), 'sha256:2033f5c87edc62d3326ad409e405d8da21bfe8f9cc83e314f044ae4dfc1438c3', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
