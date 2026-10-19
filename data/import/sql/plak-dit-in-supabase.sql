-- Plak dit hele bestand in de Supabase SQL Editor en klik op Run.
--
-- Wat erin zit:
--   1. migratie 20261019190000_import_herkomst.sql
--   2. importbatch batch-20261019-01.sql: 34 producten van bosch, Hill's Prescription Diet, Hill's Science Plan, Royal Canin, Specific, Trovet
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



-- Automatisch overgenomen etiketten, batch 1 van 2026-10-19 (34 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site zegt daarna:
-- "automatisch overgenomen van <domein> op <datum> · nog niet door een mens
-- nagelopen". Er wordt hier geen enkele controle door een mens geclaimd.

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


-- Controle na het plakken: hoeveel producten per merk, en hoeveel daarvan
-- automatisch zijn overgenomen?
select p.brand, count(*) as producten,
       count(*) filter (where rv.imported_at is not null) as automatisch_overgenomen
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 group by p.brand
 order by p.brand;

commit;
