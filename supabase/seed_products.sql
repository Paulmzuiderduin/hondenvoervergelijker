-- Seed:10 populaire hondenbrokken (volgens bol.com bestseller-lijst Adult brokken,
-- aangevuld met de populairste merken bij Brekz/Medpets).
-- Ingrediëntenlijsten zijn letterlijk overgenomen van fabrikant-/winkelteksten (NL).
-- Datum:2026-10-18. Voer uit in de SQL Editor van Supabase.

--1. Bonzo Menubrokken Adult Kip & Groenten (bol.com bestseller #1)
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Bonzo', 'Menubrokken Adult Kip & Groenten', 'kibble', '15 kg', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/bonzo_friskies/adult/1005419', '2026-10-18', true)
  returning id
), v as (
  insert into public.recipe_versions (product_id, ingredients_text, has_uncertain_ingredients, is_current)
  select id, 'Granen (volkoren granen 63%), vlees en dierlijke bijproducten (8% *), plantaardige bijproducten, oliën en vetten, plantaardige eiwitextracten, mineralen, groenten (0,6% gedehydeerde groenten, gelijkwaardig aan 4% groenten) *gelijkwaardig aan 16% gerehydrateerd vlees en dierlijke bijproducten, met min 4% kip', true, true from p
  returning id
)
insert into public.recipe_ingredients (recipe_version_id, allergen_key, certainty)
select id, k, 'confirmed' from v, unnest(array['chicken']) k;

--2. WOOOF Regular geperste brok (bol.com bestseller #2)
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('WOOOF', 'Regular geperst', 'kibble', '18 kg', null, 'https://wooof.com/WOOOF-regular', '2026-10-18', true)
  returning id
), v as (
  insert into public.recipe_versions (product_id, ingredients_text, has_uncertain_ingredients, is_current)
  select id, 'Ontsloten mais, gedroogd dierlijk eiwit (rund 21%, kip 4%), gevogeltevet, weipoeder, zalmolie (0,5%), lijnzaad, inuline (0,3%), vitamines, mineralen', false, true from p
  returning id
)
insert into public.recipe_ingredients (recipe_version_id, allergen_key, certainty)
select id, k, 'confirmed' from v, unnest(array['corn','beef','chicken','milk','salmon','fish']) k;

--3. Edgard & Cooper Adult Kip (graanvrij) (bol.com bestseller #4)
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Adult Kip graanvrij', 'kibble', '7 kg', null, 'https://www.edgardcooper.com/nl/products/dog-dry-food-chicken/', '2026-10-18', true)
  returning id
), v as (
  insert into public.recipe_versions (product_id, ingredients_text, has_uncertain_ingredients, is_current)
  select id, 'Verse kip 41%, aardappelen, erwten, erwteneiwit, kippenvet, lijnzaad, kippensaus, mineralen, visolie, mannan-oligosachariden (MOS), fructo-oligosacchariden (FOS), mango 0,04%, bosbessen 0,04%, appels 0,04%, aardbeien 0,04%, wortels 0,04%, tomaten 0,04%, goudsbloemblaadjes, brandnetel, braambesblaadjes, venkel, karwij, kamille, melisse.', false, true from p
  returning id
)
insert into public.recipe_ingredients (recipe_version_id, allergen_key, certainty)
select id, k, 'confirmed' from v, unnest(array['chicken','pea','fish']) k;

--4. Versele-Laga Classic Duo Krok (bol.com bestseller #5)
-- Algemeen gedeclareerde samenstelling: alleen de onzekerheidsvlag, geen allergenen-rijen.
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Versele-Laga', 'Classic Duo Krok', 'kibble', '20 kg', null, 'https://www.versele.com/nl/be/classic/producten/classic-duokrok1020kg', '2026-10-18', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, has_uncertain_ingredients, is_current)
select id, 'Granen, vlees en dierlijke bijproducten, plantaardige bijproducten, oliën en vetten, mineralen, groenten, zaden', true, true from p;

--5. CaroCroc Original23/12 (bol.com bestseller #6)
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('CaroCroc', 'Original 23/12', 'kibble', '12,5 kg', '8714469002889', 'https://www.carocroc.nl/producten/premium/original/', '2026-10-18', true)
  returning id
), v as (
  insert into public.recipe_versions (product_id, ingredients_text, has_uncertain_ingredients, is_current)
  select id, 'Vleesmix (33%), mais, tarwe, dierlijk eiwitextract (13%), gevogelte (9%), dierlijk vet (gevogelte, rund), rijstzemelen, rijst, tarwegries, bietenpulp, gehydrolyseerde kippenlever, lijnzaad, mineralen, cellulose.', true, true from p
  returning id
)
insert into public.recipe_ingredients (recipe_version_id, allergen_key, certainty)
select id, k, 'confirmed' from v, unnest(array['corn','wheat','rice','chicken','beef']) k;

with p2 as (
  select v.id from public.recipe_versions v join public.products pr on pr.id = v.product_id
  where pr.brand = 'CaroCroc' and pr.name = 'Original 23/12' and v.is_current
)
insert into public.recipe_ingredients (recipe_version_id, allergen_key, certainty)
select id, 'turkey', 'uncertain' from p2;

--6. Cavom Compleet Adult (bol.com bestseller #9)
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Cavom', 'Compleet Adult', 'kibble', '20 kg', '8716081990032', 'https://www.cavom.nl/', '2026-10-18', true)
  returning id
), v as (
  insert into public.recipe_versions (product_id, ingredients_text, has_uncertain_ingredients, is_current)
  select id, 'Granen (tarwe, maïs, rijst), vlees en dierlijke bijproducten (rund, schaap), oliën en vetten (rundervet), plantaardige bijproducten', true, true from p
  returning id
)
insert into public.recipe_ingredients (recipe_version_id, allergen_key, certainty)
select id, k, 'confirmed' from v, unnest(array['wheat','corn','rice','beef','lamb']) k;

--7. Purina Pro Plan Medium Adult Sensitive Skin Zalm (bol.com bestseller #10)
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina Pro Plan', 'Medium Adult Sensitive Skin Zalm', 'kibble', '14 kg', null, 'https://www.purina.nl/hond/hondenvoer/pro-plan', '2026-10-18', true)
  returning id
), v as (
  insert into public.recipe_versions (product_id, ingredients_text, has_uncertain_ingredients, is_current)
  select id, 'Zalm* (17%), rijst* (16%), maïsglutenmeel*, gedehydreerd zalmeiwit*, maïszetmeel, maïs*, sojameel*, dierlijk vet, mineralen, gedroogde bietenpulp*, cellulose, gedroogd ei*, sojaolie, digest, visolie. *Eiwitbronnen', false, true from p
  returning id
)
insert into public.recipe_ingredients (recipe_version_id, allergen_key, certainty)
select id, k, 'confirmed' from v, unnest(array['salmon','fish','rice','corn','soy','egg']) k;

--8. Royal Canin Medium Adult (populairste merk bij Brekz en bol.com)
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Medium Adult', 'kibble', '10 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/medium-adult-3004', '2026-10-18', true)
  returning id
), v as (
  insert into public.recipe_versions (product_id, ingredients_text, has_uncertain_ingredients, is_current)
  select id, 'Gedehydreerde gevogelte-eiwitten, maïs, maïsmeel, tarwemeel, dierlijke vetten, gedehydreerd runder- en varkenseiwit, tarwe, hydrolysaat van dierlijke eiwitten, bietenpulp, visolie, mineralen, sojaolie, gist en delen daarvan, hydrolysaat van gist (bron van Manno-Oligo-Sacchariden (0,05%)).', true, true from p
  returning id
)
insert into public.recipe_ingredients (recipe_version_id, allergen_key, certainty)
select id, k, 'confirmed' from v, unnest(array['corn','wheat','soy','fish','beef','pork']) k;

with p2 as (
  select v.id from public.recipe_versions v join public.products pr on pr.id = v.product_id
  where pr.brand = 'Royal Canin' and pr.name = 'Medium Adult' and v.is_current
)
insert into public.recipe_ingredients (recipe_version_id, allergen_key, certainty)
select id, k, 'uncertain' from p2, unnest(array['chicken','turkey']) k;

--9. Hill's Science Plan Adult Medium met kip (populairste merk bij Medpets)
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Hill''s Science Plan', 'Adult Medium met kip', 'kibble', '14 kg', null, 'https://www.hillspet.nl/dog-food/science-plan-adult-medium-chicken-dry', '2026-10-18', true)
  returning id
), v as (
  insert into public.recipe_versions (product_id, ingredients_text, has_uncertain_ingredients, is_current)
  select id, 'Maïs, tarwe, kip- (9%) en kalkoenmeel (totaal 14% gevogelte), dierlijk vet, eiwithydrolysaat, maïsglutenmeel, soja-olie, mineralen, gedroogde bietenpulp, lijnzaad, vitaminen, sporenelementen en bèta-caroteen. Met een natuurlijk antioxidant (gemengde tocoferolen).', false, true from p
  returning id
)
insert into public.recipe_ingredients (recipe_version_id, allergen_key, certainty)
select id, k, 'confirmed' from v, unnest(array['corn','wheat','chicken','turkey','soy']) k;

--10. Eukanuba Active Adult Medium Breed kip (topmerk bij Brekz/Medpets)
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Eukanuba', 'Active Adult Medium Breed kip', 'kibble', '12 kg', '8710255201900', 'https://www.brekz.nl/eukanuba-hondenvoer/eukanuba-active-adult-medium-breed-kip-hondenvoer.html', '2026-10-18', true)
  returning id
), v as (
  insert into public.recipe_versions (product_id, ingredients_text, has_uncertain_ingredients, is_current)
  select id, 'Gedroogde kip en kalkoen (25% waaronder kip 18%, een natuurlijke bron van glucosamine, chondroïtine en taurine), verse kip (16%), gerst, maïs, tarwe, gevogeltevet, sorghum, havervlokken, gedroogde bietenpulp (3%), kippenjus, mineralen (waaronder natriumhexametafosfaat 0.35%), fructo-oligosachariden (0,25%, een natuurlijk prebioticum), gedroogde hele eieren.', false, true from p
  returning id
)
insert into public.recipe_ingredients (recipe_version_id, allergen_key, certainty)
select id, k, 'confirmed' from v, unnest(array['chicken','turkey','barley','corn','wheat','oats','egg']) k;

-- Markeer de zojuist ingevoerde receptversies als volledig in kaart gebracht,
-- behalve de versies met een onduidelijke categorie. Zonder deze bevestiging
-- komt een product niet bij "Geschikt" te staan.
update public.recipe_versions rv
set ingredients_mapped = true
where rv.is_current
  and not rv.has_uncertain_ingredients
  and exists (select 1 from public.recipe_ingredients ri where ri.recipe_version_id = rv.id);
