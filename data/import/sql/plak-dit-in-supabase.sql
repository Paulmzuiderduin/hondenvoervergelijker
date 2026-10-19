-- Plak dit hele bestand in de Supabase SQL Editor en klik op Run.
--
-- Wat erin zit:
--   1. migratie 20261019190000_import_herkomst.sql
--   2. de importbatch: 111 producten van Acana, bosch, DARF, Edgard & Cooper, Eukanuba, Farmina, Happy Dog, Hill's Prescription Diet, Hill's Science Plan, Josera, Orijen, Purina Pro Plan Veterinary Diets, Purina Pro Plan, Royal Canin, Specific, Trovet, Wolfsblut, Yarrah
--
-- Wat er daarna op de site staat:
--   - de nieuwe producten doen meteen mee in de vergelijking;
--   - op elke kaart staat "Automatisch overgenomen van <domein> op <datum> ·
--     nog niet door een mens nagelopen";
--   - waar het etiket een vertaling is, staat dat erbij;
--   - geen enkel product krijgt de status "nagekeken": dat gebeurt alleen als
--     een mens in Beheer op die knop klikt.
--
-- Alles zit in één transactie. Gaat er iets mis, dan is er niets veranderd.
-- Heb je dit bestand al eerder geplakt, dan stopt hij met een melding over een
-- bestaande sleutel: dat betekent dat de producten er al staan.

begin;


-- Herkomst van een automatisch overgenomen etiket.
--
-- De beheerder kan een tekst "nagekeken" verklaren; die klik betekent: dit is de
-- tekst van de fabrikant. Bij een automatische import doet niemand die klik, en
-- dat mag de site ook nooit beweren. De herkomst staat daarom apart:
--
--   imported_at   wanneer de tekst van de bronpagina is overgenomen
--   import_hash   vingerafdruk van de overgenomen tekst, om de bron later te
--                 kunnen hervergelijken (bronbewaking)
--   import_note   wat de bezoeker erover moet weten, bijvoorbeeld dat het een
--                 Nederlandse vertaling is van een anderstalig etiket
--
-- Op de kaart staat dan: "Automatisch overgenomen van <domein> op <datum> · nog
-- niet door een mens nagelopen". De menselijke uitspraak blijft uitsluitend in
-- reviewed_at/reviewed_by: een import kan een product nooit "nagekeken" maken.

alter table public.recipe_versions
  add column if not exists imported_at timestamptz,
  add column if not exists import_hash text,
  add column if not exists import_note text;

-- De vijf bosch-producten zijn vertaald; die aantekening hoort ook op de plek
-- waar de site hem kan tonen (import_note). De aantekening in het beheer blijft
-- gewoon staan. Ze zijn door de beheerder nagekeken, dus ze krijgen géén
-- imported_at: de tekst is een vertaling, geen letterlijke brontekst.
update public.recipe_versions rv
set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.'
where rv.import_note is null
  and rv.review_note like 'Nederlandse vertaling van de etiket tekst%';

-- save_product_with_recipe(): een nieuwe versie van hetzelfde etiket houdt de
-- herkomst vast, net als de review — de tekst is dezelfde tekst. Verandert de
-- tekst wel, dan vervalt de herkomst: de nieuwe tekst kwam niet van de import
-- en moet dus opnieuw bekeken worden.
create or replace function public.save_product_with_recipe(
  p_product_id uuid,
  p_brand text,
  p_name text,
  p_food_type public.food_type,
  p_package_size text,
  p_gtin text,
  p_source_url text,
  p_last_checked_at date,
  p_published boolean,
  p_ingredients_text text,
  p_reviewed boolean,
  p_review_note text,
  p_allergens text[]
) returns uuid
language plpgsql
security definer
set search_path = public
as $$
declare
  v_product_id uuid;
  v_version_id uuid;
  v_previous_text text;
  v_previous_reviewed_at timestamptz;
  v_previous_reviewed_by uuid;
  v_previous_note text;
  v_previous_imported_at timestamptz;
  v_previous_import_hash text;
  v_previous_import_note text;
  v_text_same boolean;
begin
  if not coalesce(public.is_admin(), false) then
    raise exception 'Alleen een beheerder kan een product opslaan.' using errcode = '42501';
  end if;

  if p_product_id is null then
    insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
    values (p_brand, p_name, p_food_type, p_package_size, p_gtin, p_source_url, p_last_checked_at, p_published)
    returning id into v_product_id;
  else
    update public.products
    set brand = p_brand, name = p_name, food_type = p_food_type, package_size = p_package_size,
        gtin = p_gtin, source_url = p_source_url, last_checked_at = p_last_checked_at, published = p_published
    where id = p_product_id
    returning id into v_product_id;

    if v_product_id is null then
      raise exception 'Product % niet gevonden of geen beheerdersrechten.', p_product_id;
    end if;

    select rv.ingredients_text, rv.reviewed_at, rv.reviewed_by, rv.review_note,
           rv.imported_at, rv.import_hash, rv.import_note
    into v_previous_text, v_previous_reviewed_at, v_previous_reviewed_by, v_previous_note,
         v_previous_imported_at, v_previous_import_hash, v_previous_import_note
    from public.recipe_versions rv
    where rv.product_id = v_product_id
      and rv.is_current;

    update public.recipe_versions set is_current = false where product_id = v_product_id and is_current;
  end if;

  v_text_same := v_previous_text is not distinct from p_ingredients_text;

  insert into public.recipe_versions (product_id, ingredients_text, is_current, reviewed_at, reviewed_by, review_note, imported_at, import_hash, import_note)
  values (
    v_product_id,
    p_ingredients_text,
    true,
    case when coalesce(p_reviewed, false) then now() when v_text_same then v_previous_reviewed_at else null end,
    case when coalesce(p_reviewed, false) then (select auth.uid()) when v_text_same then v_previous_reviewed_by else null end,
    case when coalesce(p_reviewed, false) then nullif(btrim(coalesce(p_review_note, '')), '') when v_text_same then v_previous_note else null end,
    case when v_text_same then v_previous_imported_at else null end,
    case when v_text_same then v_previous_import_hash else null end,
    case when v_text_same then v_previous_import_note else null end
  )
  returning id into v_version_id;

  insert into public.recipe_ingredients (recipe_version_id, allergen_key, certainty)
  select v_version_id, keys.allergen_key, 'confirmed'
  from (select distinct unnest(coalesce(p_allergens, '{}'::text[])) as allergen_key) keys
  where keys.allergen_key is not null and keys.allergen_key <> '';

  return v_product_id;
end;
$$;

revoke all on function public.save_product_with_recipe(uuid, text, text, public.food_type, text, text, text, date, boolean, text, boolean, text, text[]) from public;
grant execute on function public.save_product_with_recipe(uuid, text, text, public.food_type, text, text, text, date, boolean, text, boolean, text, text[]) to authenticated;

-- Controle: hoeveel versies hebben een herkomst, en hoeveel een vertaalaantekening?
select count(*) as versies,
       count(*) filter (where imported_at is not null) as automatisch_overgenomen,
       count(*) filter (where import_note is not null) as met_aantekening
  from public.recipe_versions;

-- Automatisch overgenomen etiketten, batch 4 van 2026-10-19 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site zegt daarna:
-- "automatisch overgenomen van <domein> op <datum> · nog niet door een mens
-- nagelopen". Er wordt hier geen enkele controle door een mens geclaimd.

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

-- Automatisch overgenomen etiketten, batch 5 van 2026-10-19 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site zegt daarna:
-- "automatisch overgenomen van <domein> op <datum> · nog niet door een mens
-- nagelopen". Er wordt hier geen enkele controle door een mens geclaimd.

-- Hill's Prescription Diet — z/d Low Fat Hondenvoer (1,5 / 3 / 10 kg)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-zd-low-fat-hydrolysed-soy-food-sensitivities-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'z/d Low Fat Hondenvoer', 'kibble', '1,5 / 3 / 10 kg', null, 'https://www.hillspet.nl/dog-food/prescription-diet-zd-low-fat-hydrolysed-soy-food-sensitivities-dry', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Producten van plantaardige oorsprong, plantaardige eiwitextracten (soja-eiwithydrolysaat 27%), oliën en vetten, mineralen, vlees en dierlijke bijproducten, fruit, zaden. Koolhydraatbron: Maïszetmeel. ActivBiome+ prebiotische mix (4.1%): Gemalen pecannotenschil, lijnzaad, gedroogde bietenpulp, gedroogde citruspulp, gedroogde veenbessen. Eiwitbronnen: Soja-eiwithydrolysaat, kippenleverhydrolysaat.', true, now(), 'sha256:15429a49e91780a5a1ea7e54caffc60c797e6991c641dc5e21b5f6c08120dcfd', null from p;

-- Hill's Prescription Diet — d/d Hondenvoer met Eend & Rijst (4 / 12 kg)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-dd-duck-rice-skin-care-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'd/d Hondenvoer met Eend & Rijst', 'kibble', '4 / 12 kg', null, 'https://www.hillspet.nl/dog-food/prescription-diet-dd-duck-rice-skin-care-dry', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eiwitbron: Eendenmeel. Koolhydraatbron: Breukrijst. SAMENSTELLING: Granen (breukrijst 66%), vlees en dierlijke bijproducten (eend 12%), oliën en vetten, mineralen, producten van plantaardige oorsprong.', true, now(), 'sha256:3969642d09a378509c6e74025b0a23cfa6c868575b7a0b44f0dd94372c7fdc91', null from p;

-- Hill's Prescription Diet — d/d Natvoer voor Honden Eend (370 g)
-- bron: https://www.hillspet.nl/dog-food/prescription-diet-dd-duck-skin-care-canned
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Prescription Diet', 'd/d Natvoer voor Honden Eend', 'wet', '370 g', null, 'https://www.hillspet.nl/dog-food/prescription-diet-dd-duck-skin-care-canned', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Vlees en dierlijke bijproducten (eend 27%), granen, oliën en vetten, mineralen, producten van plantaardige oorsprong. Eiwitbron: Eend. Koolhydraatbron: Rijst.', true, now(), 'sha256:d6957534b7eb2bd81c1e41daf7c30821747284dd3458c878e8128e914b3da195', null from p;

-- Hill's Science Plan — Small & Mini Adult Hondenvoer met Kip (1,5 / 3 / 6 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-small-mini-chicken-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Small & Mini Adult Hondenvoer met Kip', 'kibble', '1,5 / 3 / 6 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-small-mini-chicken-dry', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Kippen- en kalkoenenmeel (kip 13%; totaal gevogelte 21%), maïs, tarwe, breukrijst, dierlijk vet, eiwithydrolysaat, plantaardige olie, lijnzaad, mineralen, haverzemelen, spinaziepoeder, gedroogde citruspulp, gedroogde tomatenpuree, fructo-oligosacchariden. ActivBiome+ Multi Benefit mix van prebiotica (0,6%): Haverzemelen, fructo-oligosacchariden.', true, now(), 'sha256:66fd5960229a01df113e51f70d7b90bb836c48361340c5aa58a2ac9fa4e1c362', null from p;

-- Hill's Science Plan — Sensitive Stomach & Skin Medium & Large Breed Adult Hondenvoer met Kip (2,5 / 12 kg)
-- bron: https://www.hillspet.nl/dog-food/science-plan-adult-sensitive-stomach-skin-chicken-dry
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Sensitive Stomach & Skin Medium & Large Breed Adult Hondenvoer met Kip', 'kibble', '2,5 / 12 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-sensitive-stomach-skin-chicken-dry', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'SAMENSTELLING: Kippen- en kalkoenenmeel (kip 9%; totaal gevogelte 15%), breukrijst, maïs, bruine rijst, maïseiwitmeel, gerst, haver, dierlijk vet, eiwithydrolysaat, plantaardige olie, gedroogde bietenpulp (2,5%), lijnzaad, mineralen, eipoeder.', true, now(), 'sha256:50dae670c33bd72d4a71d931d10c3cd26ba3add327dc1a6ca3b17e48909a7d72', null from p;

-- Josera — SensiPlus (0,9 / 3 / 12,5 kg)
-- bron: https://www.josera.de/josera-sensiplus.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Josera', 'SensiPlus', 'kibble', '0,9 / 3 / 12,5 kg', null, 'https://www.josera.de/josera-sensiplus.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogd gevogelte-eiwit (gevogelte 24,0%, eend 4,0%); volkorenmais; rijst; gevogeltevet; bietenvezel; gehydrolyseerd gevogelte-eiwit; mineralen; gemalen cichoreiwortel (natuurlijke bron van inuline)', true, now(), 'sha256:1552751cafae4e2c38d34fac1c6ccf2dcd24b21973dfb8d0341eeafbe915e9b7', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Josera — SensiJunior (0,9 / 3 / 12,5 kg)
-- bron: https://www.josera.de/josera-sensijunior.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Josera', 'SensiJunior', 'kibble', '0,9 / 3 / 12,5 kg', null, 'https://www.josera.de/josera-sensijunior.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst; gedroogd gevogelte-eiwit; gevogeltevet; gedroogd eendeneiwit (4%); gedroogd zalmeiwit (4%); aardappeleiwit; gehydrolyseerd gevogelte-eiwit; bietenvezel; plantaardige vezel; johannesbroodmeel; mineralen; gistcelwanden (0,5%); gemalen cichoreiwortel (natuurlijke bron van inuline); vlozaadschillen (psyllium) (0,1%); gedroogd eiwit van de Nieuw-Zeelandse groenlipmossel (Perna canaliculus)', true, now(), 'sha256:26fdf2ddf16655a543c2e9aa15afa9fef482aefcfbd33815882cb74db492d532', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Josera — SensiAdult (0,9 / 3 / 12,5 kg)
-- bron: https://www.josera.de/josera-sensiadult.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Josera', 'SensiAdult', 'kibble', '0,9 / 3 / 12,5 kg', null, 'https://www.josera.de/josera-sensiadult.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst; gedroogd gevogelte-eiwit (gevogelte 21,0%, eend 4,0%); gevogeltevet; gedroogd zalmeiwit (4%); gehydrolyseerd gevogelte-eiwit; bietenvezel; plantaardige vezel; johannesbroodmeel; mineralen; gistcelwanden (0,5%); kruiden, vruchten; gemalen cichoreiwortel (natuurlijke bron van inuline); vlozaadschillen (psyllium) (0,1%); gedroogd eiwit van de Nieuw-Zeelandse groenlipmossel (Perna canaliculus)', true, now(), 'sha256:72f84ee1f300b9fca384d20faaa55b32579ccc7d08e4ef303b1e548a464ef8eb', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Josera — YoungStar (0,9 / 3 / 12,5 kg)
-- bron: https://www.josera.de/josera-youngstar.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Josera', 'YoungStar', 'kibble', '0,9 / 3 / 12,5 kg', null, 'https://www.josera.de/josera-youngstar.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogde aardappel (42%); gedroogd gevogelte-eiwit 30,0% (waarvan kip 40,0%); gevogeltevet; bietenvezel; johannesbroodmeel; gehydrolyseerd gevogelte-eiwit; gist; gehydrolyseerd plantaardig eiwit; zalmolie (0,8%); mineralen; gemalen cichoreiwortel (natuurlijke bron van inuline); gedroogd eiwit van de Nieuw-Zeelandse groenlipmossel (Perna canaliculus)', true, now(), 'sha256:d12cf14f995afc32eb917e03d0b364c85163abcd293ffef4f18f8e0c8eef5be2', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Josera — Active Nature (0,9 / 3 / 12,5 kg)
-- bron: https://www.josera.de/josera-active-nature.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Josera', 'Active Nature', 'kibble', '0,9 / 3 / 12,5 kg', null, 'https://www.josera.de/josera-active-nature.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogd gevogelte-eiwit; rijst; gevogeltevet; aardappelzetmeel; bietenvezel; erwtenmeel; gedroogd lamseiwit (4%); gehydrolyseerd gevogelte-eiwit; mineralen; appelvezel; gistcelwanden (0,5%); johannesbroodmeel; gemalen cichoreiwortel (natuurlijke bron van inuline); kruiden, vruchten (0,1%); gedroogd eiwit van de Nieuw-Zeelandse groenlipmossel (Perna canaliculus)', true, now(), 'sha256:83f222312b06734cd6516e5fcd0bc84fa0fa876b4741e4c62fd85848641c9cf0', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Josera — Senior Salmon & Rice (0,9 / 3 / 12,5 kg)
-- bron: https://www.josera.de/josera-seniorplus.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Josera', 'Senior Salmon & Rice', 'kibble', '0,9 / 3 / 12,5 kg', null, 'https://www.josera.de/josera-seniorplus.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'volkorenmais; rijst (22%); gedroogd gevogelte-eiwit; gerst; gedroogd zalmeiwit (6%); gevogeltevet; bietenvezel; gehydrolyseerd dierlijk eiwit; zalmolie (0,8%); mineralen; gistcelwanden (0,5%); kruiden, vruchten; gemalen cichoreiwortel (natuurlijke bron van inuline)', true, now(), 'sha256:1f71ce189c6dbe75ac5dacf1591fcb85211fd72225dced2b1d274077649a960e', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Orijen — Original (2 / 6 / 11,4 kg)
-- bron: https://www.orijenpetfoods.com/en-CA/dogs/dog-food/original/ns-ori-original.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Orijen', 'Original', 'kibble', '2 / 6 / 11,4 kg', null, 'https://www.orijenpetfoods.com/en-CA/dogs/dog-food/original/ns-ori-original.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse kip (25%), rauwe kalkoen (8%), vers kippenslachtafval (lever, hart) (7%), rauwe hele haring (6%), rauwe hele heek (5%), verse eieren (5%), rauwe kalkoenlever (5%), gedehydrateerde kip (4%), gedehydrateerde kalkoen (4%), gedehydrateerde makreel (4%), gedehydrateerde sardine (4%), gedehydrateerde haring (4%), hele rode linzen, hele kikkererwten, hele erwten, kippenvet (3%), hele groene linzen, hele pintobonen, hele navybonen, linzenvezel, pollakolie (1%), erwtenzetmeel, gedroogde kelp, verse hele pompoen, verse hele butternutpompoen, verse hele courgette, verse hele wortels, verse hele appels, verse hele peren, gedroogde cichoreiwortel, verse boerenkool, verse spinazie, vers bietenloof, verse raapstelen, hele veenbessen, hele bosbessen, hele saskatoonbessen, kurkuma, mariadistel, kliswortel, lavendel, heemstwortel, rozenbottels.', true, now(), 'sha256:fa6860192a8f5d5f7d916440493dbb4e8dd04edcdd190cd8a293392bde9c2359', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Orijen — Six Fish (2 / 6 / 11,4 kg)
-- bron: https://www.orijenpetfoods.com/en-CA/dogs/dog-food/six-fish/ns-ori-sixfish.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Orijen', 'Six Fish', 'kibble', '2 / 6 / 11,4 kg', null, 'https://www.orijenpetfoods.com/en-CA/dogs/dog-food/six-fish/ns-ori-sixfish.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rauwe hele pilchard (18%), rauwe hele makreel (11%), rauwe hele heek (10%), rauwe bot (6%), rauwe hele rotsvis (6%), rauwe hele tong (6%), gedehydrateerde makreel (5%), gedehydrateerde haring (5%), gedehydrateerde pollak (5%), gedehydrateerde sardine (5%), gedehydrateerde blauwe wijting (4%), haringolie (4%), hele rode linzen, hele erwten, hele kikkererwten, hele groene linzen, linzenvezel, hele pintobonen, erwtenzetmeel, zonnebloemolie, gedroogde kelp, verse hele pompoen, verse hele butternutpompoen, verse hele courgette, verse hele wortels, verse hele appels, verse hele peren, gedroogde cichoreiwortel, verse boerenkool, verse spinazie, vers bietenloof, verse raapstelen, hele veenbessen, hele bosbessen, hele saskatoonbessen, kurkuma, mariadistel, kliswortel, lavendel, heemstwortel, rozenbottels', true, now(), 'sha256:c1bdd77307857be682d1396fa8861fe12c65fcf4fd125b8a5bd407c72f75b227', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Orijen — Tundra (11,4 kg)
-- bron: https://www.orijenpetfoods.com/en-CA/dogs/dog-food/tundra/ns-ori-tundra.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Orijen', 'Tundra', 'kibble', '11,4 kg', null, 'https://www.orijenpetfoods.com/en-CA/dogs/dog-food/tundra/ns-ori-tundra.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rauw lamsvlees (7%), rauw hertenvlees (5%), rauwe eend (5%), rauwe ridderforel (5%), rauwe hele pilchard (5%), rauw varken (5%), rauwe eendenlever (5%), rauwe lamslever (4%), verse eieren (4%), gedehydrateerd lamsvlees (4%), gedehydrateerde witvis (4%), gedehydrateerde blauwe wijting (4%), gedehydrateerd schapenvlees (4%), gedehydrateerde haring (4%), gedehydrateerde makreel (4%), rauwe geit (4%), rauwe varkenslever (4%), hele groene linzen, hele kikkererwten, hele erwten, rauwe regenboogforel (3%), varkensvet (3%), hele rode linzen, hele pintobonen, linzenvezel, pollakolie (1%), hele navybonen, erwtenzetmeel, rauwe lamsnier (0,5%), rauwe lamspens (0,5%), gedroogde kelp, verse hele pompoen, verse hele butternutpompoen, verse hele courgette, verse hele wortels, verse hele appels, verse hele peren, gedroogde cichoreiwortel, verse boerenkool, verse spinazie, vers bietenloof, verse raapstelen, hele veenbessen, hele bosbessen, hele saskatoonbessen, kurkuma, mariadistel, kliswortel, lavendel, heemstwortel, rozenbottels.', true, now(), 'sha256:4739702519a019e5989657b81673b58096164b3f781ec832f835ee3bf1bbce6d', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Orijen — Puppy (2 / 6 / 11,4 kg)
-- bron: https://www.orijenpetfoods.com/en-CA/dogs/dog-food/puppy/ns-ori-puppy.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Orijen', 'Puppy', 'kibble', '2 / 6 / 11,4 kg', null, 'https://www.orijenpetfoods.com/en-CA/dogs/dog-food/puppy/ns-ori-puppy.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse kip (23%), rauwe kalkoen (10%), vers kippenslachtafval (lever, hart) (8%), rauwe hele haring (6%), rauwe hele heek (5%), verse eieren (5%), gedehydrateerde kip (4%), gedehydrateerde kalkoen (4%), gedehydrateerde makreel (4%), gedehydrateerde sardine (4%), gedehydrateerde haring (4%), kippenvet (4%), hele rode linzen, hele erwten, hele groene linzen, hele kikkererwten, linzenvezel, hele pintobonen, hele navybonen, rauwe kalkoenlever (2%), pollakolie (2%), erwtenzetmeel, gedroogde kelp, verse hele pompoen, verse hele butternutpompoen, verse hele courgette, verse hele wortels, verse hele appels, verse hele peren, gedroogde cichoreiwortel, verse boerenkool, verse spinazie, vers bietenloof, verse raapstelen, hele veenbessen, hele bosbessen, hele saskatoonbessen, kurkuma, mariadistel, kliswortel, lavendel, heemstwortel, rozenbottels.', true, now(), 'sha256:122b041cd97883a364b3d8c7af9b8f8fd2dd09862a0cbc937878f24520658d87', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Purina Pro Plan Veterinary Diets — HA Hypoallergenic (3 / 11 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-hypoallergeen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan Veterinary Diets', 'HA Hypoallergenic', 'kibble', '3 / 11 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-hypoallergeen', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Maiszetmeel* Gehydrolyseerd soja-eiwit** Mineralen Kokosolie Suiker* Raapzaadolie Cellulose Sojaolie Visolie *Gezuiverde koolhydraatbronnen. **Eiwitbron.', true, now(), 'sha256:994d8ea445ee040698c505b3a618b7ae524d69023845cfb7824dc48e2155ce74', null from p;

-- Purina Pro Plan Veterinary Diets — EN Gastrointestinal (1,5 / 5 / 12 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-gastrointestinaal
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan Veterinary Diets', 'EN Gastrointestinal', 'kibble', '1,5 / 5 / 12 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-gastrointestinaal', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Rijst* Mais Maisglutenmeel* Gedehydreerd gevogelte-eiwit* Gedroogde bietenpulp Digest Erwteneiwitconcentraat* Mineralen Kokosolie*(4%) Dierlijk vet Mono- en diglyceriden Sojaolie Visolie Inuline *Zeer goed verteerbare ingrediënten.', true, now(), 'sha256:c63b2bf271e5f4aaff03d891194f561c1c57a6b24cebf52fa53fce6aaa21ab70', null from p;

-- Purina Pro Plan Veterinary Diets — EN Gastrointestinal Natvoer (400 g)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-gastrointestinaal-natvoer
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan Veterinary Diets', 'EN Gastrointestinal Natvoer', 'wet', '400 g', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-gastrointestinaal-natvoer', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Varken Rijstebloem Gevogelte Gedroogd ei Mineralen Kokosolie Cellulosepoeder', true, now(), 'sha256:eb4eb4651dccaf529c3c9d4c2844efec687067c81c03005875283c42c2a7e988', null from p;

-- Purina Pro Plan Veterinary Diets — DRM Dermatosis (3 / 12 kg)
-- bron: https://www.purina.nl/hond/hondennvoer/product-proplan-veterinary-diets-dermatose-vis
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan Veterinary Diets', 'DRM Dermatosis', 'kibble', '3 / 12 kg', null, 'https://www.purina.nl/hond/hondennvoer/product-proplan-veterinary-diets-dermatose-vis', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Maiszetmeel Raapzaadmeel* Erwteneiwtconcentraat* Gedehydrateerd haringeiwit* Dierlijk vet Digest* Mineralen Visolie Raapzaadolie *Bron van eiwitten.', true, now(), 'sha256:2f731c68cc3ed6aa060f88a00098b0db1615881582e3b319ce709e2195d54b4f', null from p;

-- Purina Pro Plan Veterinary Diets — DM Diabetes Management (3 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-diabetes-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan Veterinary Diets', 'DM Diabetes Management', 'kibble', '3 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-diabetes-kip', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Gedehydrateerd gevogelte-eiwit Gerst* Mais* Sojameel* Erwtenvezel* Maisglutenmeel* Erwteneiwitconcentraat Dierlijk vet Digest Gedroogde bietenpulp* Cellulose Visolie Mineralen Witte bonenextract (0,1%, bron van amylase-remmer) *Koolhydraatbronnen.', true, now(), 'sha256:f74b4b58f2510a2eccc911b789a19fc66daa2f062ff6f3d10ddc9bc988e7e4c9', null from p;

-- Purina Pro Plan Veterinary Diets — OM Obesity Management (3 / 12 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-overgewicht
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan Veterinary Diets', 'OM Obesity Management', 'kibble', '3 / 12 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-veterinary-diets-overgewicht', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Mais* Sojameel* Gedehydrateerd gevogelte-eiwit Gerst* Tarweglutenmeel Erwtenvezel* Cellulose Digest Mineralen Dierlijk vet * Koolhydraatbronnen.', true, now(), 'sha256:5a2c2fbad4835618b2fea995b671ed4eab38c089f514d47a6d6a3e8699612fe9', null from p;

-- Purina Pro Plan — Medium Adult Sensitive Digestion Rijk aan Lam (3 / 14 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-adult-medium-sensitive-digestion-lam
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Medium Adult Sensitive Digestion Rijk aan Lam', 'kibble', '3 / 14 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-adult-medium-sensitive-digestion-lam', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Lam (19%) Maïs Gedehydreerd gevogelte-eiwit Maïsgries Rijst (8%) Dierlijk vet Gedroogde bietenpulp Sojameel Digest Maïsglutenmeel Gedroogde ei Mineralen Visolie', true, now(), 'sha256:f8cdda41ef6d95bc27ece05299d8341a49096c00ba8c0679299420904b982f3f', null from p;

-- Purina Pro Plan — Expert Care Digestion Care Rijk aan Lam (3 / 10 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-expert-care-digestion-care-lam
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Expert Care Digestion Care Rijk aan Lam', 'kibble', '3 / 10 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-expert-care-digestion-care-lam', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Lam (19%) Mais Gedehydrateerd gevogelte-eiwit Maisgrit Rijst Dierlijk vet Sojameel Gedroogde bietenpulp Maiseiwitmeel Mineralen Gedroogd ei Digest Visolie Gedroogd colostrum (0,1%)', true, now(), 'sha256:f31397867e572652d8cf46492e04e7bcf6bad6afca827a2b96fd0462e9597e91', null from p;

-- Purina Pro Plan — Medium Adult Everyday Nutrition Rijk aan Kip (3 / 14 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-adult-medium-everyday-nutrition-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Medium Adult Everyday Nutrition Rijk aan Kip', 'kibble', '3 / 14 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-adult-medium-everyday-nutrition-kip', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Kip van hoge kwaliteit (20%) (inclusief rug en borst) Tarwe Gedroogd gevogelte-eiwit Maïs Rijst (9%) Dierlijke vetten Gedroogde bietenpulp Digest Sojameel Maïseiwitmeel Tarwegluten Mineralen Gedroogd ei Visolie', true, now(), 'sha256:14883d84615c2be7e5db4c7f82b70d7275a213a76406eb0e2ad9bc8041e0588a', null from p;

-- Purina Pro Plan — Medium & Large Adult Sensitive Digestion Graanvrij Rijk aan Kalkoen (2,5 / 12 kg)
-- bron: https://www.purina.nl/hond/hondenvoer/product-proplan-graan-vrij-medium-sensitive-digestion-kalkoen
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Medium & Large Adult Sensitive Digestion Graanvrij Rijk aan Kalkoen', 'kibble', '2,5 / 12 kg', null, 'https://www.purina.nl/hond/hondenvoer/product-proplan-graan-vrij-medium-sensitive-digestion-kalkoen', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling Kalkoen (16%) Gedehydrateerd kippeneiwit Erwtenzetmeel Cassave (12%) Gedroogde erwten Dierlijk vet Sojameel Erwteneiwit Gedroogde bietenpulp Digest Gedroogd ei Mineralen Visolie', true, now(), 'sha256:3ea531592d4fe64b8c3ed6cfb72fbf03a455e1004c4fc8aa33fe325e86f273f5', null from p;

-- Royal Canin — Hypoallergenic (2 / 7 / 14 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/hypoallergenic-3910
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Hypoallergenic', 'kibble', '2 / 7 / 14 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/hypoallergenic-3910', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijstmeel, gehydrolyseerd soja-eiwit isolaat, dierlijke vetten, rijst, gehydrolyseerd gevogeltelever, bietenpulp, mineralen, sojaolie, fructo-oligosacchariden, visolie, bernagieolie, tagetes meel. Eiwitbronnen: gehydrolyseerd soja-eiwit isolaat (17,6%), gehydrolyseerd gevogeltelever (5,0%). Koolhydraatbron: rijst (48,1%).', true, now(), 'sha256:0e0dc9abf272b0180f6eea5f76784fe822abde08884feedf6a88994676e12cb5', null from p;

-- Royal Canin — Hypoallergenic (200 / 400 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/hypoallergenic-4084
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Hypoallergenic', 'wet', '200 / 400 g', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/hypoallergenic-4084', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'plantaardige bijproducten, plantaardige eiwitextracten, oliën en vetten, vlees en dierlijke bijproducten, mineralen. Eiwitbronnen: concentraat van gehydrolyseerd soja-eiwit (6,4%), gehydrolyseerde gevogelte bijproducten (2,0%). Koolhydraatbron: erwtenzetmeel (10,0%).', true, now(), 'sha256:d510e28b2a084c7e469fc0f129879a29a208f3584f9d6ccd85931e023f0a6b0a', null from p;

-- Royal Canin — Anallergenic (3 / 8 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/anallergenic-4014
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Anallergenic', 'kibble', '3 / 8 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/anallergenic-4014', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïszetmeel, hydrolysaat van veren met een laag molecuulgewicht (bron van L-aminozuren en oligopeptiden), kopraolie, sojaolie, mineralen, plantaardige vezels, cichoreipulp, fructo-oligosacchariden, visolie, mono- en diglyceriden van palmitinezuur en stearinezuur veresterd met citroenzuur, dierlijk vet, tagetes meel. Eiwitbron: hydrolysaat van veren met een laag molecuulgewicht (19,78%). Koolhydraatbron: maïszetmeel (46,3%).', true, now(), 'sha256:25b49d321fb3d61ebbe6858fee5661421820ae9f6bc2c8aad6f97fcf0810ffaf', null from p;

-- Royal Canin — Sensitivity Control (1,5 / 7 / 14 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/sensitivity-control-3922
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Sensitivity Control', 'kibble', '1,5 / 7 / 14 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/sensitivity-control-3922', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maniok (tapioca), gedehydreerde eendeneiwitten, plantaardige vezels, gehydrolyseerde gevogelte-eiwitten, mineralen, dierlijk vet, bietenpulp, visolie, psylliumschil en psylliumzaden, sojaolie, fructo-oligosacchariden, tagetes meel. Eiwitbronnen: gedehydreerde eendeneiwitten (28,0%), gehydrolyseerde gevogelte-eiwitten (4,2%). Koolhydraatbron: tapioca (47,0%).', true, now(), 'sha256:11d9e0c63af35d4933dc0b66f80efd780bc420cdce4e705200a120b63b5e0011', null from p;

-- Royal Canin — Sensitivity Control Kip met Rijst (12 x 410 g)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/sensitivity-control-chicken-with-rice-4026
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Sensitivity Control Kip met Rijst', 'wet', '12 x 410 g', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/sensitivity-control-chicken-with-rice-4026', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'vlees en dierlijke bijproducten, granen, plantaardige bijproducten, oliën en vetten, mineralen, suikers. Eiwitbron: kip (54%). Koolhydraatbron: rijst (9,9%).', true, now(), 'sha256:5b19b3fb92d815a3b2a6c430de5eb1104a7179d8ef1aebe1e812c616dd94e65e', null from p;

-- Royal Canin — Mini Adult 8+ (2 / 4 / 8 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/mini-adult-8%2b-3002
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Mini Adult 8+', 'kibble', '2 / 4 / 8 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/mini-adult-8%2b-3002', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, maïs, rijst, tarwemeel, dierlijke vetten, tarwegluten, maïsgluten, maïsmeel, tarwe, gehydrolyseerde dierlijke eiwitten, bietenpulp, mineralen, sojaolie, gistproducten, visolie, fructo-oligosachariden, algenolie Schizochytrium sp.', true, now(), 'sha256:227dc107c6bffa1edc5bf70068430dc5c1d87906665d68eade560669abcaab2c', null from p;

-- Specific — CDD Food Allergen Management (2 kg, 3x2 kg, 12 kg)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cdd-food-allergen-management
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CDD Food Allergen Management', 'kibble', '2 kg, 3x2 kg, 12 kg', null, 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cdd-food-allergen-management', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, eipoeder, mineralen, varkensvet, gehydrolyseerd eiwit, vitaminen en spoorelementen (inclusief gecheleerde sporenelementen), cellulosepoeder, psyllium husk, methionine, rozemarijn extract. Natuurlijke antioxidanten (tocopherolen, rozemarijn extract en vitamine C).', true, now(), 'sha256:5aac46efac4a6acdd907ee7a142f4ae08a0c693b6bc5489d3871b3723321fa12', null from p;

-- Specific — CDW Food Allergen Management (6 x 300 g)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cdw-food-allergen-management
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CDW Food Allergen Management', 'wet', '6 x 300 g', null, 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cdw-food-allergen-management', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam, rijst, vitaminen en spoorelementen (inclusief gecheleerde sporenelementen), visolie, zonnebloemolie, mineralen, cellulosepoeder, psyllium husk, dextrose, xylose.', true, now(), 'sha256:5e140c13cbc4bfd0c21bca5f5656205405f650e8ff65c008c7ae0c2e0b32d352', null from p;

-- Specific — CDD-HY Food Allergen Management (2 kg, 3 x 2 kg, 7 kg, 12 kg)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cdd-hy-food-allergen-management
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CDD-HY Food Allergen Management', 'kibble', '2 kg, 3 x 2 kg, 7 kg, 12 kg', null, 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cdd-hy-food-allergen-management', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, rijsteiwit, varkensvet, gehydrolyseerd zalmeiwit, mineralen, gehydrolyseerd eiwit, cellulosepoeder, vitaminen en spoorelementen (inclusief gecheleerde sporenelementen), visolie, psyllium husk, rozemarijn extract. Natuurlijke antioxidanten (tocopherolen, rozemarijn extract en vitamine C).', true, now(), 'sha256:bbbc885a2a735cc727b505e23ab80be4b7c5100afe7e78dc151d35d15660ecf0', null from p;

-- Specific — CID Digestive Support (2 kg, 3 x 2 kg, 7 kg, 12 kg)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cid-digestive-support
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CID Digestive Support', 'kibble', '2 kg, 3 x 2 kg, 7 kg, 12 kg', null, 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cid-digestive-support', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, eipoeder, vismeel, maïs, bietenpulp, mineralen (inclusief zeoliet), dextrose, varkensvet, gehydrolyseerd dierlijk eiwit, vitaminen en spoorelementen (inclusief gecheleerde sporenelementen), visolie, Antarctische krill, gist (inclusief bron van β ß-1,3/1,6-glucanen en mannan-oligo-sacchariden ), gistfermentatieproduct (Saccharomyces cerevisiae producten, calciumcarbonaat), fructooligo-sachariden, psyllium husk , AuraGuard (calciumcarbonaat, citrus extract, maltodextrine, natriumchloride), xylo-oligo-sacchariden, Yucca poeder, rozemarijnextract. Natuurlijke antioxidanten (tocopherolen en vitamine C).', true, now(), 'sha256:abd78b2e7e4c6ff5f6a13650f4f60d6be498afa188d05fe6b5914b86d7f59cc8', null from p;

-- Specific — COD-HY Allergen Management Plus (2 kg, 3 x 2 kg, 3 x 4 kg)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cod-hy-allergen-management-plus
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'COD-HY Allergen Management Plus', 'kibble', '2 kg, 3 x 2 kg, 3 x 4 kg', null, 'https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen/cod-hy-allergen-management-plus', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst, rijsteiwit, visolie, gehydrolyseerd zalmeiwit, cellulosepoeder, mineralen, varkensvet, gehydrolyseerd eiwit, vitaminen en spoorelementen (inclusief gecheleerde sporenelementen), borage olie, psyllium husk, rozemarijn extract. Natuurlijke antioxidanten (tocopherolen, rozemarijn extract en vitamine C).', true, now(), 'sha256:051e3ae2d0affc86029fe9bc689f060bc81f3db39ad373efd995349c52660ed2', null from p;

-- Specific — CXD-M Adult Medium breed (4 kg, 7 kg, 12 kg)
-- bron: https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cxd-m-adult-medium-breed
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Specific', 'CXD-M Adult Medium breed', 'kibble', '4 kg, 7 kg, 12 kg', null, 'https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden/cxd-m-adult-medium-breed', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Samenstelling: Tarwe, maïseiwit, vismeel, varkensvet, bietenpulp (3,5%), gehydrolyseerd dierlijk eiwit, mineralen, visolie, eipoeder. Bevat geen toegevoegde kunstmatige kleur- en smaakstoffen. Toevoegingsmiddelen (per kg): Nutritionele toevoegingsmiddelen: vitamine D3 1044 IE, koper 7,9 mg (koperchelaat van glycinehydraat), ijzer 85 mg (ijzersulfaat monohydraat), zink 101 mg (zinkchelaat van glycinehydraat), mangaan 5,8 mg (mangaanchelaat van glycinehydraat), jodium 2,0 mg (calciumjodaat anhydraat); natuurlijke antioxidanten.', true, now(), 'sha256:68eaa4bd467f51db10eccbfc3fa2e6f345abf71fd4cb7d6e866e006a98a9497f', null from p;

-- Trovet — Hypoallergenic (Turkey) (400 g)
-- bron: https://www.trovet.com/nl/product/hypoallergenic-turkey-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Hypoallergenic (Turkey)', 'wet', '400 g', null, 'https://www.trovet.com/nl/product/hypoallergenic-turkey-hond/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kalkoen, aardappel, mineralen, zonnebloemolie, olijfolie.', true, now(), 'sha256:e332583ce20ec30733e9a1e45f3722f572985b136df6e27609ff8f104e8af48e', null from p;

-- Trovet — Hypoallergenic (Rich in Venison) (3 / 10 kg)
-- bron: https://www.trovet.com/nl/product/hypoallergenic-venison-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Hypoallergenic (Rich in Venison)', 'kibble', '3 / 10 kg', null, 'https://www.trovet.com/nl/product/hypoallergenic-venison-hond/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'aardappel 50%, gedehydrateerd herteneiwit 14%, gevogelte-olie, aardappeleiwit, bietenpulp, gefermenteerde producten, lijnzaden, gehydroliseerd gevogeltelever, zonnebloemolie, gist (saccharomyces cerevisiae), minerale bestanddelen.', true, now(), 'sha256:7fecbdea8ab5cdb8a9979c601fcd64591827a979a95c862a3db648b6008de51c', null from p;

-- Trovet — Hypoallergenic (Rich in Rabbit) (3 / 10 kg)
-- bron: https://www.trovet.com/nl/product/hypoallergenic-rabbit-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Hypoallergenic (Rich in Rabbit)', 'kibble', '3 / 10 kg', null, 'https://www.trovet.com/nl/product/hypoallergenic-rabbit-hond/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, rijstzemelen, gedehydrateerd konijneneiwit (20%), gevogelte-olie, rijsteiwit, bietenpulp, gevogeltehydrolysaat, lijnzaad, minerale bestanddelen.', true, now(), 'sha256:cf7f8d85887dd7cf5d9808e186c6ca929f42d25a4a43be526bc867d32d0819b4', null from p;

-- Trovet — Hypoallergenic (Rich in Insect) (3 / 10 kg)
-- bron: https://www.trovet.com/nl/product/hypoallergenic-insect-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Hypoallergenic (Rich in Insect)', 'kibble', '3 / 10 kg', null, 'https://www.trovet.com/nl/product/hypoallergenic-insect-hond/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'aardappel, 54%, gedehydrateerd insectenmeel 16%, gevogelte olie, aardappeleiwit, lijnzaad, mineralen, gevogelte hydrolisaat, visolie.', true, now(), 'sha256:b06e91e75ef38d5474737803812eff33356115bca89bb152213bc503ec04e6b0', null from p;

-- Trovet — Hypoallergenic (Rich in Horse) (3 / 10 kg)
-- bron: https://www.trovet.com/nl/product/hypoallergenic-horse-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Hypoallergenic (Rich in Horse)', 'kibble', '3 / 10 kg', null, 'https://www.trovet.com/nl/product/hypoallergenic-horse-hond/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'aardappel 45%, aardappeleiwit, gedehydrateerd paardeneiwit 14%, kippenvet, bietenpulp, gevogelte hydrolysaat, visolie, mineralen, celwand van gehydrolyseerde gist (bron van manno-oligosacchariden (MOS)), inuline fructo-oligosacchariden (FOS).', true, now(), 'sha256:88e77ea7af4943b74588fecfd76b8ecdf9d1a896b02c5c97b2b67fef606c024c', null from p;

-- Trovet — Exclusion (2,5 / 12,5 kg)
-- bron: https://www.trovet.com/nl/product/exclusion-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Exclusion', 'kibble', '2,5 / 12,5 kg', null, 'https://www.trovet.com/nl/product/exclusion-hond/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïs, soja eiwit (concentraat), zonnebloemolie, vitaminen en mineralen, aardappeleiwit, rijst, palmolie, bietenpulp, gist (hydrolisaat).', true, now(), 'sha256:b91ceddcb3d7a1d5839161298882feb4ac12a93973c2176fb4bfa4a21e048110', null from p;

-- Trovet — Adult (3 / 12,5 kg)
-- bron: https://www.trovet.com/nl/product/adult-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Adult', 'kibble', '3 / 12,5 kg', null, 'https://www.trovet.com/nl/product/adult-hond/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïs, gedehydrateerd gevogelte-eiwit, rijst, gevogelte-olie, haver, gevogeltehydrolysaat, bietenpulp, johannesbrood, lijnzaden, gist, minerale bestanddelen, inuline (bron van FOS), heel gedehydrateerd ei.', true, now(), 'sha256:6cfe8e888da88d64170f825bb6a8faed38cea206c47a4ac403b21ff4e76761ef', null from p;

-- Trovet — Dental (2,5 kg)
-- bron: https://www.trovet.com/nl/product/dental-hond/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Trovet', 'Dental', 'kibble', '2,5 kg', null, 'https://www.trovet.com/nl/product/dental-hond/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'pluimveemeel, maïs, rijst, aardappelzetmeel, pluimveevet, cellulose, gerst, bietenpulp, rijstzemelen, collageen (hydrolisaat), gist, gevogeltelever (hydrolisaat), lijnzaad, natriumtripolyfosfaat, kaliumchloride, xylitol, melkpoeder.', true, now(), 'sha256:fa4419fefa7778d9170acbca80052a11f97d6b7b22242a2441c5856721324b82', null from p;

-- Wolfsblut — Adult Green Valley (12,5 kg)
-- bron: https://www.wolfsblut.com/wolfsblut-adult-green-valley-lamm-und-lachs-trockenfutter-12-5-kg.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Wolfsblut', 'Adult Green Valley', 'kibble', '12,5 kg', null, 'https://www.wolfsblut.com/wolfsblut-adult-green-valley-lamm-und-lachs-trockenfutter-12-5-kg.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam & zalm 54% (vers lamsvlees 18%, verse zalm 18%, gedroogd lamsvlees 9%, gedroogde zalm 9%), aardappelen 18%, kikkererwten, pompoen, luzerne, lamsvet 2%, pastinaak, lamsbouillon 2%, venkel, zalmolie 1%, mineralen, topinamboer, tijm, marjolein, oregano, peterselie 0,1%, salie, rozenbottels, tomaten, duindoorn, appels, wortelen, lavas, mannan-oligosachariden (prebiotisch MOS), fructo-oligosachariden (prebiotisch FOS), brandnetel, meidoorn, paardenbloem, ginseng, anijszaad, fenegriek, bramen 0,02%, zwarte bessen, vlierbessen, yucca schidigera-extract, frambozen 0,01%, bosbessen 0,01%, aroniabessen.', true, now(), 'sha256:b541d587e5fc37334562cd5543fa0425f31230b0127becae90160c0d8f0d0c88', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Wolfsblut — Adult Wild Pacific (12,5 kg)
-- bron: https://www.wolfsblut.com/wolfsblut-adult-wild-pacific-seefisch-und-kartoffel-trockenfutter-12-5-kg.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Wolfsblut', 'Adult Wild Pacific', 'kibble', '12,5 kg', null, 'https://www.wolfsblut.com/wolfsblut-adult-wild-pacific-seefisch-und-kartoffel-trockenfutter-12-5-kg.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vis 48% (verse zalm 13%, gedroogde zalm 8%, gedroogde haring 8%, gedroogde witvis 8%, verse forel 8%, gedroogde garnalen 3%), aardappelen 34%, zalmolie 6%, kikkererwten, pastinaak, pompoen, zalmbouillon 2%, venkel, mineralen, topinamboer 0,3%, tijm, marjolein, oregano, peterselie 0,1%, salie, tomaten, spirulina, zeewier 0,04%, mariadistel, paardenbloem, brandnetel, meidoorn, ginseng, mannan-oligosachariden (prebiotisch MOS), fructo-oligosachariden (prebiotisch FOS), anijszaad, fenegriek, yucca schidigera-extract.', true, now(), 'sha256:0c3a2ba4613125a8272c695a69fa93463968ccf4cdb7946a9c099750b12113c6', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Wolfsblut — Adult Alaska Salmon (12,5 kg)
-- bron: https://www.wolfsblut.com/wolfsblut-adult-alaska-salmon-lachs-und-kartoffeln-trockenfutter-12-5-kg.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Wolfsblut', 'Adult Alaska Salmon', 'kibble', '12,5 kg', null, 'https://www.wolfsblut.com/wolfsblut-adult-alaska-salmon-lachs-und-kartoffeln-trockenfutter-12-5-kg.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Volledig voer voor volwassen honden zalm 49% (waarvan verse zalm 25%, gedroogde zalm 18%, zalmolie 6%) aardappelen 20%, volkorenrijst 15%, rijstkiemen, zeegras 2,5%, cranberries 1%, eieren, yucca schidigera-extract, mannan-oligosachariden (prebiotisch MOS), fructo-oligosachariden (prebiotisch FOS), mineralen.', true, now(), 'sha256:6e34fee2bbb242326c5ac3f709b144bd1ed218d692cffa01d7509e5eb1c709bb', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Wolfsblut — Adult Dark Forest (12,5 kg)
-- bron: https://www.wolfsblut.com/wolfsblut-adult-dark-forest-wild-und-susskartoffel-trockenfutter-12-5-kg.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Wolfsblut', 'Adult Dark Forest', 'kibble', '12,5 kg', null, 'https://www.wolfsblut.com/wolfsblut-adult-dark-forest-wild-und-susskartoffel-trockenfutter-12-5-kg.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers wild 30%, zoete aardappelen 24%, erwten, gedroogd lamsvlees 7%, pompoen, pastinaak, lamsvet, lamsbouillon, erwtenvezels, venkel, mineralen, topinamboer, spirulina, tijm 0,1%, marjolein, oregano, peterselie, salie, tomaten, brandnetel, meidoorn, paardenbloem, ginseng 0,05%, mannan-oligosachariden (prebiotisch MOS), fructo-oligosachariden (prebiotisch FOS), rozenbottels, zwarte bessen, bramen, vlierbessen, yucca schidigera-extract, frambozen 0,01%, bosbessen 0,01%, aroniabessen.', true, now(), 'sha256:9d50ae8f11e0d9a8fe8fb82054f3087e6258ac4c98420ad224d888124ddc6525', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Wolfsblut — Adult Blue Mountain (12,5 kg)
-- bron: https://www.wolfsblut.com/wolfsblut-adult-blue-mountain-wild-und-waldfruchten-trockenfutter-12-5-kg.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Wolfsblut', 'Adult Blue Mountain', 'kibble', '12,5 kg', null, 'https://www.wolfsblut.com/wolfsblut-adult-blue-mountain-wild-und-waldfruchten-trockenfutter-12-5-kg.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Wild 46% (vers wild 26%, gedroogd konijn 15%, vers konijn 5%), aardappelen 23%, lamsvet 6%, kikkererwten, erwteneiwit, pompoen, erwtenvezel, lamsbouillon 2%, venkel, pastinaak, mineralen, topinamboer 0,3%, lijnzaad, tijm, marjolein, oregano, peterselie 0,1%, salie, tomaten, mannan-oligosachariden (prebiotisch MOS), fructo-oligosachariden (prebiotisch FOS), lavas, wortelen, appels, bananen, brandnetel, meidoorn, paardenbloem, ginseng, rozenbottels, honing, anijszaad, fenegriek, zwarte bessen, bramen 0,02%, vlierbessen, yucca schidigera-extract, frambozen 0,01%,bosbessen 0,01%, aroniabessen.', true, now(), 'sha256:f0988af982d62a18a604fad46b25f8249cc45ffcf1afabee9b9d1e045edf32f2', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Automatisch overgenomen etiketten, batch 6 van 2026-10-19 (11 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site zegt daarna:
-- "automatisch overgenomen van <domein> op <datum> · nog niet door een mens
-- nagelopen". Er wordt hier geen enkele controle door een mens geclaimd.

-- Wolfsblut — Adult Wide Plain (12,5 kg)
-- bron: https://www.wolfsblut.com/wolfsblut-adult-wolfsblut-wide-plain-pferdefleisch-und-susskartoffel-trockenfutter-12-5-kg.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Wolfsblut', 'Adult Wide Plain', 'kibble', '12,5 kg', null, 'https://www.wolfsblut.com/wolfsblut-adult-wolfsblut-wide-plain-pferdefleisch-und-susskartoffel-trockenfutter-12-5-kg.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Paard 40% (vers paardenvlees 31%, gedroogd paardenvlees 9%), zoete aardappelen 18%, erwten, paardenvet 8%, erwteneiwit, pompoen, kikkererwten, pastinaak, groentebouillon, erwtenvezel, venkel, mineralen, topinamboer, lijnzaad, tijm, marjolein, oregano, peterselie 0,1%, salie, tomaten, brandnetel, meidoorn, paardenbloem, ginseng, mannan-oligosachariden (prebiotisch MOS), fructo-oligosachariden (prebiotisch FOS), rozenbottels, zwarte bessen, bramen, vlierbessen, yucca schidigera-extract, frambozen, bosbessen 0,01%, aroniabessen 0,01%.', true, now(), 'sha256:9991c18a8d377dbdc762ef06033fda217ff5da68ca96775ebec84388139903e2', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Wolfsblut — Adult Hunters Pride (12,5 kg)
-- bron: https://www.wolfsblut.com/wolfsblut-adult-hunters-pride-fasan-ente-und-kaninchen-trockenfutter-12-5-kg.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Wolfsblut', 'Adult Hunters Pride', 'kibble', '12,5 kg', null, 'https://www.wolfsblut.com/wolfsblut-adult-hunters-pride-fasan-ente-und-kaninchen-trockenfutter-12-5-kg.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Wild 45% (gedroogde eend 17%, verse fazant 10%, verse eend 10%, vers konijn 4%, gedroogde waterbuffel 4%), aardappelen, zoete aardappelen 9%, erwten, eendenvet 4%, eendenbouillon, pompoen, kikkererwten, pastinaak, venkel, mineralen, topinamboer, tijm, marjolein, oregano, peterselie, salie, lijnzaad, tomaten, zeewier, spinazie, rode biet, lavas, brandnetel, meidoorn, paardenbloem, ginseng, mannan-oligosachariden (prebiotisch MOS), fructo-oligosachariden (prebiotisch FOS), rozenbottels, zwarte bessen, bramen 0,02%, vlierbessen, yucca schidigera-extract, frambozen 0,01%, bosbessen 0,01%, aroniabessen.', true, now(), 'sha256:01c9b6e89e9896d65837cfbdc03a43af43acf5ef288b5bdd5bb93d30b59facbb', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Wolfsblut — Adult Cold River (12,5 kg)
-- bron: https://www.wolfsblut.com/wolfsblut-adult-cold-river-forelle-und-susskartoffel-trockenfutter-12-5-kg.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Wolfsblut', 'Adult Cold River', 'kibble', '12,5 kg', null, 'https://www.wolfsblut.com/wolfsblut-adult-cold-river-forelle-und-susskartoffel-trockenfutter-12-5-kg.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vis 38% (verse forel 25%, gedroogde zalm 6,5%, gedroogde forel 6,5%), zoete aardappelen 32%, aardappelen, zalmolie, zalmbouillon, mineralen, venkel, kikkererwten, pompoen, pastinaak, zeewier 0,3%, topinamboer, tijm, marjolein, oregano, peterselie, salie 0,1%, tomaten, brandnetel, meidoorn, paardenbloem 0,04%, ginseng, mannan-oligosachariden (prebiotisch MOS), fructo-oligosachariden (prebiotisch FOS), spirulina, yucca schidigera-extract.', true, now(), 'sha256:7c9f99d7eb021a4f9cf8372601429434347743ff669c5cbad5a1404241e6f8d3', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Wolfsblut — VetLine Hypoallergenic (12 kg)
-- bron: https://www.wolfsblut.com/wolfsblut-vetline-wolfsblut-vetline-hypoallergenic-trockenfutter-12-kg.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Wolfsblut', 'VetLine Hypoallergenic', 'kibble', '12 kg', null, 'https://www.wolfsblut.com/wolfsblut-vetline-wolfsblut-vetline-hypoallergenic-trockenfutter-12-kg.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Dieet-volledig voer voor volwassen honden zoete aardappelen 42%, paard 29% (vers paardenvlees 19%, gedroogd paardenvlees 10%), paardenvet 7%, pompoen 6%, erwteneiwit, luzerne, lijnzaad 2%, algen (rijk aan DHA*), zonnebloemolie, mineralen, topinamboer 0,4%, mannan-oligosachariden (prebiotisch) 0,2%, fructo-oligosachariden (prebiotisch) 0,2%. Eiwitbronnen: vers paardenvlees, gedroogd paardenvlees, erwteneiwit. Koolhydraatbronnen: zoete aardappelen, pompoen. *Docosahexaeenzuur', true, now(), 'sha256:14ae75a6ba33cd6ff83d38b541bd64ba5f8437dec6a5170e301f3c5ee2518ed1', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Wolfsblut — VetLine Gastrointestinal (12 kg)
-- bron: https://www.wolfsblut.com/wolfsblut-vetline-wolfsblut-vetline-gastrointestinal-trockenfutter-12-kg.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Wolfsblut', 'VetLine Gastrointestinal', 'kibble', '12 kg', null, 'https://www.wolfsblut.com/wolfsblut-vetline-wolfsblut-vetline-gastrointestinal-trockenfutter-12-kg.html', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Zoete aardappelen 43%, eend 34% (verse eend 26%, gedroogde eend 8%), erwteneiwit, luzerne 2%, pompoen 2%, eendenbouillon 2%, gedroogd vol ei, visolie, mineralen (elektrolyten: natriumbicarbonaat, kaliumchloride, natriumchloride), topinamboer, mannan-oligosachariden (prebiotisch) 0,2%, fructo-oligosachariden (prebiotisch) 0,2%, aroniabessen, kurkuma 0,08%. Koolhydraatbronnen: zoete aardappelen, pompoen.', true, now(), 'sha256:0eecbad0bec31ed3d616fb5bbbf6df4e674fa073273efb58954400cdc42c85fc', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Yarrah — Biologisch Adult hondenvoer met kip (2 / 10 / 15 kg)
-- bron: https://www.yarrah.com/biologisch-adult-hondenvoer-met-kip/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Yarrah', 'Biologisch Adult hondenvoer met kip', 'kibble', '2 / 10 / 15 kg', null, 'https://www.yarrah.com/biologisch-adult-hondenvoer-met-kip/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '18% kipmeel*, 17% haver*, maïs*, tarwe*, kippenvet*, rijsteiwit*, sojaschilfers*, 4,0% erwten*, MSC-haringmeel¹, gehydrolyseerd eiwit*, baobab*, zonnebloemzaadschilfers*, biergist, mineralen, 0,5% MSC-visolie¹. * = biologisch ¹Uit een MSC gecertificeerde duurzame visserij. www.msc.org/nl', true, now(), 'sha256:2e619b33cfe8f94989129a9cc8cf0b08001f9a6b2694d0d93ed7394bb106aaf2', null from p;

-- Yarrah — Biologisch Sensitive hondenvoer (2 / 10 kg)
-- bron: https://www.yarrah.com/biologisch-sensitive-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Yarrah', 'Biologisch Sensitive hondenvoer', 'kibble', '2 / 10 kg', null, 'https://www.yarrah.com/biologisch-sensitive-hondenvoer/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Tarwevrije receptuur. 65% paddy rijst*, 20% kipmeel*, rijsteiwit*, kippenvet*, gehydrolyseerd eiwit*, mineralen, MSC-visolie¹, 0,1% gedroogd zeewier*, 0,1% gedroogde spirulina*. * = biologisch. ¹Uit een MSC-gecertificeerde duurzame visserij. www.msc.org/nl.', true, now(), 'sha256:2377edfecfc096880d01992d5d9ce039bca0c393f6177341ba431eb588f92045', null from p;

-- Yarrah — Biologisch Senior hondenvoer (2 / 10 kg)
-- bron: https://www.yarrah.com/biologisch-senior-hondenvoer/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Yarrah', 'Biologisch Senior hondenvoer', 'kibble', '2 / 10 kg', null, 'https://www.yarrah.com/biologisch-senior-hondenvoer/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '17,5% kipmeel*, mais*, tarwe*, haver*, erwten*, sojaschilfers*, kippenvet*, zonnebloemzaadschilfers*, rijsteiwit*, MSC haringmeel¹, gehydrolyseerd eiwit*, biergist, mineralen, MSC visolie¹, kruiden* (0,13% gedroogde heermoes*, 0,13% gedroogde duivelsklauw*, 0,13% gedroogde rozenbottel*). * = biologisch ¹Uit een MSC gecertificeerde duurzame visserij. www.msc.org/nl', true, now(), 'sha256:3d83fc1554763026205d619fd07039a9bbdcfe8d82722d2dc214c976b85b0156', null from p;

-- Yarrah — Biologisch hondenvoer chunks met kip (405 / 820 g)
-- bron: https://www.yarrah.com/biologisch-hondenvoer-chunks-met-kip/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Yarrah', 'Biologisch hondenvoer chunks met kip', 'wet', '405 / 820 g', null, 'https://www.yarrah.com/biologisch-hondenvoer-chunks-met-kip/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '35% kip* (karkas*, vlees*, lever*), tarwe*, mineralen, 0,1% gedroogde tomaat*, 0,1% gedroogde brandnetel*. * = biologisch', true, now(), 'sha256:82705d371b8df0a39160006ae65a80cc8182459824f0b82d0b6e43466dbb6bec', null from p;

-- Yarrah — Biologisch hondenvoer chunks met rund (405 / 820 g)
-- bron: https://www.yarrah.com/biologisch-hondenvoer-chunks-met-rund/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Yarrah', 'Biologisch hondenvoer chunks met rund', 'wet', '405 / 820 g', null, 'https://www.yarrah.com/biologisch-hondenvoer-chunks-met-rund/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '26% kip* (karkas*, vlees*), tarwe*, 5,0% rund* (lever*, hart*, nier*), varkensvlees* (vlees*, hart*, nier*), mineralen, 0,1% gedroogde tomaat*, 0,1% gedroogde brandnetel* * = biologisch', true, now(), 'sha256:1397855e6b215b1564896650234d584368dd00de7602f2d275a94652bc04241d', null from p;

-- Yarrah — Biologisch hondenvoer paté met kip en kalkoen (12 x 150 g)
-- bron: https://www.yarrah.com/biologisch-hondenvoer-pate-met-kip-en-kalkoen-alu/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Yarrah', 'Biologisch hondenvoer paté met kip en kalkoen', 'wet', '12 x 150 g', null, 'https://www.yarrah.com/biologisch-hondenvoer-pate-met-kip-en-kalkoen-alu/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Graanvrije receptuur. 46% kip* (karkas*, lever*, vlees*, hart*, maag*), 10% kalkoen* (vlees*), mineralen, zonnebloemolie*, 0,0075% gedroogde aloë vera* (komt overeen met 1,5% aloë vera*). * = biologisch.', true, now(), 'sha256:66fbf50e2e6ab3e5dc495500412e20a6397e72a90788aec3784fbaadb139aa76', null from p;


-- Controle na het plakken: hoeveel producten per merk, en hoeveel daarvan
-- automatisch zijn overgenomen?
select p.brand, count(*) as producten,
       count(*) filter (where rv.imported_at is not null) as automatisch_overgenomen
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 group by p.brand
 order by p.brand;

commit;
