-- Automatisch overgenomen etiketten, batch 3 van 2026-10-21 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site zegt daarna:
-- "automatisch overgenomen van <domein> op <datum> · nog niet door een mens
-- nagelopen". Er wordt hier geen enkele controle door een mens geclaimd.
begin;

-- Carnilove — True Fresh Kalkoen Droogvoer (12 kg + 4 kg)
-- bron: https://carnilove.com/en/products/carnilove-true-fresh-dog-dry-turkey-for-adult-all-breeds
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'True Fresh Kalkoen Droogvoer', 'kibble', '12 kg + 4 kg', null, 'https://carnilove.com/en/products/carnilove-true-fresh-dog-dry-turkey-for-adult-all-breeds', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse kalkoen (60%), gele erwten, rundvet (5%), gehydrolyseerde lever (3%), kikkererwten (3%), pompoen (3%), rode linzen, gedroogde appelpulp (2,3%), zalmolie (2%), lijnzaad, wortels, eierschalen, kaliumchloride, erwtenmeel, gedroogde duindoorn (0,2%), gedroogde gemberwortel (0,1%), gedroogde bosbessen (0,1%), gedroogde rozemarijn (0,1%), gedroogde cranberries (0,1%), gedroogde tijm (0,1%), gehydrolyseerde schaaldierenschalen (bron van glucosamine, 0,022%), cichoreiwortel (bron van fructo-oligosachariden, 0,0163%), kraakbeenextract (bron van chondroïtine, 0,014%), biergist (bron van mannan-oligosachariden, 0,013%), Mojave yucca (0,0085%).', true, now(), 'sha256:a65a06280cccc63f99ac5796373ec1c2e8d240752efec8e329ac21edff49bd62', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Paté Blikvoer met Kalkoen & Zalm voor Honden (400 g / 5 + 1 x 400 g)
-- bron: https://carnilove.com/en/products/pate-can-food-made-with-turkey-and-salmon-for-dogs-400g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Paté Blikvoer met Kalkoen & Zalm voor Honden', 'wet', '400 g / 5 + 1 x 400 g', null, 'https://carnilove.com/en/products/pate-can-food-made-with-turkey-and-salmon-for-dogs-400g', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen (47%), water, zalm (20%), zwarte bes (2%), erwtenmeel (2%), lignocellulose (1%), zalmolie (1%), calciumcarbonaat (0,3%).', true, now(), 'sha256:d6b15622c58e6ea2dcceb2b9c6a9acb20f4553e72bc8dcf87701ef9692282ac8', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Paté Blikvoer met Kalkoen & Zalm voor Puppy's (400 g / 5 + 1 x 400 g)
-- bron: https://carnilove.com/en/products/pate-can-food-made-with-turkey-and-salmon-for-puppies-400g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Paté Blikvoer met Kalkoen & Zalm voor Puppy''s', 'wet', '400 g / 5 + 1 x 400 g', null, 'https://carnilove.com/en/products/pate-can-food-made-with-turkey-and-salmon-for-puppies-400g', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen (47%), water, zalm (20%), zwarte bes (2%), erwtenmeel (2%), lignocellulose (1%), zalmolie (1%), calciumcarbonaat (0,3%).', true, now(), 'sha256:d6b15622c58e6ea2dcceb2b9c6a9acb20f4553e72bc8dcf87701ef9692282ac8', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Paté Blikvoer met Kalkoen & Rendier voor Honden (400 g / 5 + 1 x 400 g)
-- bron: https://carnilove.com/en/products/pate-can-food-made-with-turkey-and-reindeer-for-dogs-400g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Paté Blikvoer met Kalkoen & Rendier voor Honden', 'wet', '400 g / 5 + 1 x 400 g', null, 'https://carnilove.com/en/products/pate-can-food-made-with-turkey-and-reindeer-for-dogs-400g', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen (50%), water, rendier (10%), wild zwijn (7%), zwarte bes (2%), erwtenmeel (2%), lignocellulose (1%), calciumcarbonaat (0,3%).', true, now(), 'sha256:a38fc435d1d566ad9b7bef6d72e44eae1dc9de8c1b6b5fdfc52bd1c751624519', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Paté Blikvoer met Lam & Wild Zwijn voor Honden (400 g / 5 + 1 x 400 g)
-- bron: https://carnilove.com/en/products/pate-can-food-made-with-lamb-and-wild-boar-for-dogs-400g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Paté Blikvoer met Lam & Wild Zwijn voor Honden', 'wet', '400 g / 5 + 1 x 400 g', null, 'https://carnilove.com/en/products/pate-can-food-made-with-lamb-and-wild-boar-for-dogs-400g', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam (35%), wild zwijn (32%), water, zwarte bes (2%), erwtenmeel (2%), lignocellulose (1%), calciumcarbonaat (0,3%).', true, now(), 'sha256:3839abe63a49f48e1584eda71f982b0234780084f390dd059bed0d18df2fc1bb', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Paté Blikvoer met Eend & Fazant voor Honden (400 g / 5 + 1 x 400 g)
-- bron: https://carnilove.com/en/products/pate-can-food-made-with-duck-and-pheasant-for-dogs-400g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Paté Blikvoer met Eend & Fazant voor Honden', 'wet', '400 g / 5 + 1 x 400 g', null, 'https://carnilove.com/en/products/pate-can-food-made-with-duck-and-pheasant-for-dogs-400g', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eend (41%), water, fazant (26%), zwarte bes (2%), erwtenmeel (2%), lignocellulose (1%), calciumcarbonaat (0,3%).', true, now(), 'sha256:ede88bef551ad41b0f89edc6ce137622ee2d576c91766e95146a076330bb77cc', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Kalkoen & Eend met Timoteegras Paté Pouch voor Honden (300 g)
-- bron: https://carnilove.com/en/products/turkey-and-duck-with-timothy-grass-dog-pouch-pate-300g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Kalkoen & Eend met Timoteegras Paté Pouch voor Honden', 'wet', '300 g', null, 'https://carnilove.com/en/products/turkey-and-duck-with-timothy-grass-dog-pouch-pate-300g', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen 44%, eend 26%, bouillon, timoteegras 4%, erwtenmeel, lijnzaadolie, erwtenvezel.', true, now(), 'sha256:0ecd095386a56e2b17e9e2993dc4392ca95b19cbbe5cf5061f0ad76c8fb802d0', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Kalkoen & Buffel met Rozenblaadjes Paté Pouch voor Honden (300 g)
-- bron: https://carnilove.com/en/products/turkey-and-buffalo-with-rose-petals-dog-pouch-pate-300g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Kalkoen & Buffel met Rozenblaadjes Paté Pouch voor Honden', 'wet', '300 g', null, 'https://carnilove.com/en/products/turkey-and-buffalo-with-rose-petals-dog-pouch-pate-300g', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen 44%, buffel 26%, bouillon, rozenblaadjes 4%, erwtenmeel, lijnzaadolie, erwtenvezel.', true, now(), 'sha256:b73594fc1b9c349325b89e1557a655d2c16ee47ed5b9eee78ae7037e3342c2d5', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Kalkoen & Kwartel met Wortel Paté Pouch voor Honden (300 g)
-- bron: https://carnilove.com/en/products/turkey-and-quail-with-carrot-dog-pouch-pate-300g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Kalkoen & Kwartel met Wortel Paté Pouch voor Honden', 'wet', '300 g', null, 'https://carnilove.com/en/products/turkey-and-quail-with-carrot-dog-pouch-pate-300g', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen 44%, kwartel 26%, bouillon, wortel 4%, erwtenmeel, lijnzaadolie, erwtenvezel.', true, now(), 'sha256:e3ebb70bb12971b68a9e9c553f489a52d5664598ae1204d65732f30c8e4b951b', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Kalkoen & Fazant met Frambozenblad Paté Pouch voor Honden (300 g)
-- bron: https://carnilove.com/en/products/turkey-and-pheasant-with-raspberry-leaves-dog-pouch-pate-300g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Kalkoen & Fazant met Frambozenblad Paté Pouch voor Honden', 'wet', '300 g', null, 'https://carnilove.com/en/products/turkey-and-pheasant-with-raspberry-leaves-dog-pouch-pate-300g', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen 44%, fazant 26%, bouillon, frambozenblad 4%, erwtenmeel, lijnzaadolie, erwtenvezel.', true, now(), 'sha256:a9a49af4f604b19b75ab0e53c0ced0239c9160c88728c151b2db81e64f274263', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Kalkoen & Hert met Aardbeiblad Paté Pouch voor Honden (300 g)
-- bron: https://carnilove.com/en/products/turkey-and-venison-with-strawberry-leaves-dog-pouch-pate-300g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Kalkoen & Hert met Aardbeiblad Paté Pouch voor Honden', 'wet', '300 g', null, 'https://carnilove.com/en/products/turkey-and-venison-with-strawberry-leaves-dog-pouch-pate-300g', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen 44%, hertenvlees 26%, bouillon, aardbeiblad 4%. erwtenmeel, lijnzaadolie, erwtenvezel.', true, now(), 'sha256:55456e5ff4b04bf5ccefeda578559f4193fbab1253c9eac718f673cc801e8767', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Kalkoen & Wild Zwijn met Rozenbottels Paté Pouch voor Honden (300 g)
-- bron: https://carnilove.com/en/products/turkey-and-wildboar-with-rosehips-dog-pouch-pate-300g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Kalkoen & Wild Zwijn met Rozenbottels Paté Pouch voor Honden', 'wet', '300 g', null, 'https://carnilove.com/en/products/turkey-and-wildboar-with-rosehips-dog-pouch-pate-300g', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen 44%, wild zwijn 26%, bouillon, rozenbottels 4%, erwtenmeel, lijnzaadolie, erwtenvezel.', true, now(), 'sha256:ee36110851c16b4639a9dcc10a16aff7f415a3ec11220dd21f6944f8f6bf89e1', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Carnilove — Kalkoen & Zalm met Bosbessen Paté Pouch voor Puppy's (300 g)
-- bron: https://carnilove.com/en/products/turkey-and-salmon-with-blueberries-puppy-pouch-pate-300g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Carnilove', 'Kalkoen & Zalm met Bosbessen Paté Pouch voor Puppy''s', 'wet', '300 g', null, 'https://carnilove.com/en/products/turkey-and-salmon-with-blueberries-puppy-pouch-pate-300g', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen 44%, zalm 26%, bouillon, bosbessen 4%, lijnzaadolie, erwtenmeel, erwtenvezel.', true, now(), 'sha256:9e694114276a03afd2c344d02d5b712131ca0a98216a60dc2edb98e9b9cc88ba', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- CaroCroc — High Energy (3 / 12,5 kg)
-- bron: https://www.carocroc.nl/producten/premium/high-energy/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('CaroCroc', 'High Energy', 'kibble', '3 / 12,5 kg', null, 'https://www.carocroc.nl/producten/premium/high-energy/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte (52%), dierlijk eiwitextract (10%), gerst, dierlijk vet (gevogelte, rund), tarwe, mais, rijst, bietenpulp, rijstzemelen, geëxtraheerde sojabonen (getoast), hemoglobine, cellulose, mineralen, gehydrolyseerde kippenlever, lijnzaad.', true, now(), 'sha256:46bdb3438d51f82b8a8544268eb6f7f5e0ae5f81ab96966e9834b2fa0c3616ef', null from p;

-- CaroCroc — Grain Free (3 / 12,5 kg)
-- bron: https://www.carocroc.nl/producten/speciale-aandacht/grain-free/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('CaroCroc', 'Grain Free', 'kibble', '3 / 12,5 kg', null, 'https://www.carocroc.nl/producten/speciale-aandacht/grain-free/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte (51%, waarvan minstens 4% verse kip), aardappel (26%), bietenpulp (5,5%), eipoeder, dierlijk vet (gevogelte), gehydrolyseerde kippenlever, aardappelzetmeel, aardappeleiwit, gist, lijnzaad, visolie (zalm) (0,6%), kruiden (peterselie, rozemarijn, brandnetel, kamille, salie, tijm, koriander, paardenbloem, zoethout), mineralen, inuline (bron van FOS).', true, now(), 'sha256:d88160760b404ae09b08aa3ddfd94c4f636b191cab390a440b25acd3f6472de9', null from p;

-- CaroCroc — Mobility Support (3 / 12,5 kg)
-- bron: https://www.carocroc.nl/producten/speciale-aandacht/mobility-support/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('CaroCroc', 'Mobility Support', 'kibble', '3 / 12,5 kg', null, 'https://www.carocroc.nl/producten/speciale-aandacht/mobility-support/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte (54%, waarvan minstens 4% verse kip), maïs, ei (8,2%), rijst, gehydrolyseerde kippenlever, visolie (zalm) (1,1%), gist, mineralen, cellulose, bietenpulp, dierlijk vet (gevogelte), lijnzaad, glucosamine (0,02%), chondroïtinesulfaat (0,02%).', true, now(), 'sha256:86b7c2dbd85a4ed5d5cf8b121cc0da01ba1b6abacda0f64018759b8f9eefe668', null from p;

-- CaroCroc — Skin Support (3 / 12,5 kg)
-- bron: https://www.carocroc.nl/producten/speciale-aandacht/carocroc-skin-support/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('CaroCroc', 'Skin Support', 'kibble', '3 / 12,5 kg', null, 'https://www.carocroc.nl/producten/speciale-aandacht/carocroc-skin-support/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogelte (37%), maïs, vis (21%, waarvan minstens 4% verse zalm), bietenpulp, rijstzemelen, rijst, dierlijk vet (rund, gevogelte), visolie (zalm) (1,4%), gehydrolyseerde kippenlever, gist, lijnzaad, mineralen.', true, now(), 'sha256:f564a4236e4ee12a7a2b00d26d99647a1f1f3b2daab111f3cf04f9678314f0a7', null from p;

-- CaroCroc — Worst met kip (400 g)
-- bron: https://www.carocroc.nl/producten/worsten/carocroc-worst-met-kip/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('CaroCroc', 'Worst met kip', 'wet', '400 g', null, 'https://www.carocroc.nl/producten/worsten/carocroc-worst-met-kip/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip 80%, rund 4%, granen, mineralen.', true, now(), 'sha256:81cbfa70583c84484854c4a4e84a460cee697e333781d089bd4bc1c1b39277d4', null from p;

-- CaroCroc — Worst met lam (400 g)
-- bron: https://www.carocroc.nl/producten/worsten/carocroc-worst-met-lam/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('CaroCroc', 'Worst met lam', 'wet', '400 g', null, 'https://www.carocroc.nl/producten/worsten/carocroc-worst-met-lam/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten (75%, waarvan 35% lam), granen, oliën en vetten (schapenvet 1,5%), mineralen.', true, now(), 'sha256:a7703d69c271c0b8937b2d17732d5de161d8eb92dad871d7b0c98bf2b45cb0b4', null from p;

-- Edgard & Cooper — Verse Zalm (0,7 / 1 / 2,5 / 3 / 7 / 12 kg)
-- bron: https://www.edgardcooper.com/nl/products/dog-dry-food-salmon/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Verse Zalm', 'kibble', '0,7 / 1 / 2,5 / 3 / 7 / 12 kg', null, 'https://www.edgardcooper.com/nl/products/dog-dry-food-salmon/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'verse zalm* 40%, zoete aardappelen* (gedroogd) 13%, aardappelen* (gedroogd), erwteneiwit*, erwten* (gedroogd), aardappeleiwit, vegetarische saus, lijnzaad* 2%, bietenpulp* (gedroogd), mineralen*, gist* (gedroogd) 1,3%, tomatenpulp*, cichorei* (gedroogd) 0,5%, pompoen* (gedroogd) 0,2%, boerenkool* (gedroogd) 0,2%, zalmolie* 0,1%, bosbessen* (gedroogd) 0,05%, appel* (gedroogd) 0,05%, peterselie* (gedroogd) 0,02%, rozenbottel* (gedroogd) 0,02%, glucosamine 0,02%, chondroïtinesulfaat* 0,02%. *Natura', true, now(), 'sha256:226550c24750512c2a70bed3ce547e6ec1c04e48a8066f03117a1103bed6ecfb', null from p;

-- Edgard & Cooper — Vers Hert & Eend (1 / 2,5 / 3 / 7 / 12 kg)
-- bron: https://www.edgardcooper.com/nl/products/dog-dry-food-venison-duck/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Vers Hert & Eend', 'kibble', '1 / 2,5 / 3 / 7 / 12 kg', null, 'https://www.edgardcooper.com/nl/products/dog-dry-food-venison-duck/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'verse eend* 35%, zoete aardappelen* (gedroogd) 13,5%, aardappelen* (gedroogd), erwteneiwit*, erwten* (gedroogd), vers hert* 5%, aardappeleiwit, lijnzaad* 2%, bietenpulp* (gedroogd), zalmolie* 2%, eendensaus, mineralen*, gist* (gedroogd) 1,3%, zonnebloemolie*, tomatenpulp*, cichorei* (gedroogd) 0,5%, pompoen* (gedroogd) 0,2%, boerenkool* (gedroogd) 0,2%, bosbessen* (gedroogd) 0,05%, appel* (gedroogd) 0,05%, peterselie* (gedroogd) 0,02%, rozenbottel* (gedroogd) 0,02%, glucosamine 0,02%, chondroïtinesulfaat* 0,02%. *Natura', true, now(), 'sha256:a0ebb27afa63075dee68b406c402d1401a315a48a228af3175b6591b475aba47', null from p;

-- Edgard & Cooper — Verse Rund & Kip (bio) (2,5 / 7 kg)
-- bron: https://www.edgardcooper.com/nl/products/dog-dry-food-beef-chicken/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Verse Rund & Kip (bio)', 'kibble', '2,5 / 7 kg', null, 'https://www.edgardcooper.com/nl/products/dog-dry-food-beef-chicken/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'biologische verse kip* 25%, biologische volkorenrijst*, biologisch rijsteiwit*, biologische volkorengierst*, biologisch vers rund* 5%, biologisch kippenvet*, mineralen*, biologische varkenssaus, biologische wortel* 0,04%, biologische tomaat* 0,04%, biologische boerenkool* 0,04%, biologische kokosnoot* 0,04%, biologische brandnetels*, biologische braambesblaadjes*, biologische venkel* 0,04%, biologisch karwijzaad*, biologische kamille*, biologische melisse*', true, now(), 'sha256:0d970f72269e75de8fd65a2e3ca465d139b12b1c788a7d7a53708c6c4ffd2a9b', null from p;

-- Edgard & Cooper — Verse Kalkoen & Kip (bio) (2,5 / 7 kg)
-- bron: https://www.edgardcooper.com/nl/products/dog-dry-food-turkey-chicken/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Verse Kalkoen & Kip (bio)', 'kibble', '2,5 / 7 kg', null, 'https://www.edgardcooper.com/nl/products/dog-dry-food-turkey-chicken/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'biologische verse kip* 25%, biologische volkorenrijst*, biologisch rijsteiwit*, biologische volkorengierst*, biologische volkoren haver*, biologische verse kalkoen* 5%, biologische varkenssaus, biologisch kippenvet*, mineralen*, biologische erwten* 0,17%, biologische wortel* 0,04%, biologische tomaat* 0,04%, biologische peer* 0,04%, biologische appel* 0,04%, biologische chiazaden* 0,04%, biologische kokosnoot* 0,04%, biologische brandnetels*, biologische braambesblaadjes*, biologische venkel*, biologisch karwijzaad*, biologische kamille*, biologische melisse*', true, now(), 'sha256:f8012ee597becef3bbf9c648b6ef8351faf0fae61606fb83ddbb0b64617bf65b', null from p;

-- Edgard & Cooper — Wortel & Courgette (plantaardig) (1 / 2,5 / 7 kg)
-- bron: https://www.edgardcooper.com/nl/products/dog-dry-food-carrot-courgette/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Wortel & Courgette (plantaardig)', 'kibble', '1 / 2,5 / 7 kg', null, 'https://www.edgardcooper.com/nl/products/dog-dry-food-carrot-courgette/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'groenten* 20% (wortel* 4%, courgette* 4%, aardappel* 4%, knolraap*, selderij*, pastinaak*, bonen*, erwten* 1%), rijst* 17,3%, rijsteiwit 9%, erwteneiwit* 9%, koolzaadolie* 5,7%, aardappeleiwit 4,5%, mineralen*, erwtenzetmeel* 3,5%, vegetarische saus*, aardappelen* (gedroogd) 3%, erwten* (gedroogd) 3%, zonnebloemzaad*, gist* (gedroogd) 3%, bietenpulp* (gedroogd), luzerne* (gedroogd), linzen* (gedroogd), lijnzaad* 1,8%, lignocellulose*, algen* (gedroogd) 0,25%, cichorei* (gedroogd) 0,12%, peer* (gedroogd) 0,1%, bosbessen* (gedroogd) 0,05%, vlierbessen* (gedroogd), marjolein* (gedroogd)', true, now(), 'sha256:d5037ee1312606feaf6085ab81f5abf15eae133a310b8e91def46ae8a6f8fe81', null from p;

-- Edgard & Cooper — Rode Biet & Pompoen (plantaardig) (2,5 / 7 kg)
-- bron: https://www.edgardcooper.com/nl/products/dog-dry-food-beetroot-pumpkin/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Rode Biet & Pompoen (plantaardig)', 'kibble', '2,5 / 7 kg', null, 'https://www.edgardcooper.com/nl/products/dog-dry-food-beetroot-pumpkin/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'groenten* 20% (pompoen* 4%, rode bieten* 4%, aardappel* 4%, knolraap*, pastinaak* 2%, boerenkool*, bonen*, erwten* 1%), rijst* 16,5%, rijsteiwit 11%, erwteneiwit* 7%, koolzaadolie* 5,5%, aardappeleiwit 4,5%, erwten* (gedroogd) 4,2%, erwtenzetmeel 4%*, mineralen*, bietenpulp* (gedroogd), vegetarische saus*, gist* (gedroogd) 3,1%, zonnebloemzaad*, linzen* (gedroogd), aardappelen* (gedroogd) 2,1%, lijnzaad* 1,8%, luzerne* (gedroogd), algen* (gedroogd) 0,25%, cichorei* (gedroogd) 0,12%, appel* (gedroogd), bosbessen* (gedroogd) 0,05%, vlierbessen* (gedroogd), marjolein* (gedroogd)', true, now(), 'sha256:6e06f683cf6759ce6a273a74bbd940593d343a8ea088fa416e6c52a44ea1033c', null from p;

-- Edgard & Cooper — Verse Eend & Kip (puppy) (1 / 2,5 / 3 / 7 / 12 kg)
-- bron: https://www.edgardcooper.com/nl/products/dog-dry-food-duck-chicken/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Verse Eend & Kip (puppy)', 'kibble', '1 / 2,5 / 3 / 7 / 12 kg', null, 'https://www.edgardcooper.com/nl/products/dog-dry-food-duck-chicken/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'verse kip* 40%, aardappelen* (gedroogd), verse eend* 10%, erwten* (gedroogd), erwteneiwit*, zoete aardappelen* (gedroogd) 4%, aardappeleiwit, zalmolie* 2,3%, kippensaus, gist* (gedroogd) 1,7%, lijnzaad* 1%, bietenpulp* (gedroogd), mineralen*, cichorei* (gedroogd) 0,5%, wortel* (gedroogd) 0,4%, peer* (gedroogd) 0,1%, kurkuma* (gedroogd) 0,02%, tijm* (gedroogd) 0,02%, glucosamine 0,02%, chondroïtinesulfaat* 0,02%. *Natuurlijk', true, now(), 'sha256:c5687cd20b22843e6fcaa25a0ecb17c569178ae266bf917b88262d50a9860527', null from p;

-- Edgard & Cooper — Verse Zalm & Kalkoen (puppy) (2,5 / 7 / 12 kg)
-- bron: https://www.edgardcooper.com/nl/products/dog-dry-food-salmon-turkey/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Verse Zalm & Kalkoen (puppy)', 'kibble', '2,5 / 7 / 12 kg', null, 'https://www.edgardcooper.com/nl/products/dog-dry-food-salmon-turkey/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'verse kalkoen* 35%, aardappelen* (gedroogd), verse zalm* 10%, zoete aardappelen* (gedroogd) 10%, erwteneiwit*, erwten* (gedroogd), aardappeleiwit, vegetarische saus, gist* (gedroogd) 1,7%, lijnzaad* 1%, bietenpulp* (gedroogd), mineralen*, zalmolie* 0,7%, cichorei* (gedroogd) 0,5%, zonnebloemolie*, wortel* (gedroogd) 0,4%, peer* (gedroogd) 0,1%, kurkuma* (gedroogd) 0,02%, tijm* (gedroogd) 0,02%, glucosamine 0,02%, chondroïtinesulfaat* 0,02%. *Natuurlijk', true, now(), 'sha256:dda452a990886669bc08ae14d156d11900dbfa7da5501bbec9f2a23c6b55b348', null from p;

-- Edgard & Cooper — Verse Kip & Zalm (senior) (2,5 / 7 / 12 kg)
-- bron: https://www.edgardcooper.com/nl/products/dog-dry-food-chicken-salmon/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Verse Kip & Zalm (senior)', 'kibble', '2,5 / 7 / 12 kg', null, 'https://www.edgardcooper.com/nl/products/dog-dry-food-chicken-salmon/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'verse kip* 35%, zoete aardappelen* (gedroogd) 16,2%, erwten* (gedroogd), aardappelen* (gedroogd), verse zalm* 5%, erwteneiwit*, aardappeleiwit, kippensaus, gist* (gedroogd) 2%, tomatenpulp*, lijnzaad* 2%, bietenpulp* (gedroogd), mineralen*, cichorei* (gedroogd) 0,5%, zalmolie* 0,5%, kippenvet*, broccoli* (gedroogd) 0,4%, bosbessen* (gedroogd) 0,1%, glucosamine 0,04%, chondroïtinesulfaat* 0,04%, rozenbottel* (gedroogd) 0,02%, kurkuma* (gedroogd) 0,02%. *Natuurlijk', true, now(), 'sha256:008a5ec00ed15551281f3a549df0f7fad922df24746de87b9aa8c21e007e647e', null from p;

-- Edgard & Cooper — Kwijl-in-Stijl Zalm & Kip (150 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-pouch-drool-worthy-salmon-chicken/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Kwijl-in-Stijl Zalm & Kip', 'wet', '150 g', null, 'https://www.edgardcooper.com/nl/products/dog-pouch-drool-worthy-salmon-chicken/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip* 26%, MSC**-zalm* 6%, eiwit* (gedroogd), zoete aardappelen* (gedroogd) 2%, sperziebonen* (gedroogd) 2%, erwtenzetmeel*, mineralen, gist* (gedroogd), zalmolie*, erwtenvezel*, bietenpulp* (gedroogd), peterselie* (gedroogd) 0,1%, glucosamine, chondroïtinesulfaat. *Natuurlijk', true, now(), 'sha256:2e7cc3b0fb809bc210bf78033ac70011901f573f1e18b7806e16b3f3b1cb45d2', null from p;

-- Edgard & Cooper — Kwijl-in-Stijl Lam & Kip (150 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-pouch-drool-worthy-lamb-chicken/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Kwijl-in-Stijl Lam & Kip', 'wet', '150 g', null, 'https://www.edgardcooper.com/nl/products/dog-pouch-drool-worthy-lamb-chicken/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip* 26%, lam* 6%, eiwit* (gedroogd), wortel* (gedroogd) 2%, sperziebonen* (gedroogd) 2%, erwtenzetmeel*, mineralen, gist* (gedroogd), zalmolie*, erwtenvezel*, bietenpulp* (gedroogd), rozemarijn* (gedroogd) 0,1%, glucosamine, chondroïtinesulfaat. *Natuurlijk', true, now(), 'sha256:d6cd849236ae3cc283bed00af679683a2fbe6ba4f6921f27eb970119026e1fb3', null from p;

-- Edgard & Cooper — Kwijl-in-Stijl Eend (150 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-pouch-drool-worthy-duck/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Kwijl-in-Stijl Eend', 'wet', '150 g', null, 'https://www.edgardcooper.com/nl/products/dog-pouch-drool-worthy-duck/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'eend* 32%, varken*, zoete aardappelen* (gedroogd) 2%, erwten* (gedroogd) 2%, erwtenzetmeel*, mineralen, gist* (gedroogd), zalmolie*, erwtenvezel*, bietenpulp* (gedroogd), salie* (gedroogd) 0,1%, glucosamine, chondroïtinesulfaat. *Natuurlijk', true, now(), 'sha256:b6c52ea5b3ee28cd1c2334a8b0d1522b6d06e67173beb433de07efbd3093b3e6', null from p;

-- Edgard & Cooper — Kwijl-in-Stijl Wild Zwijn & Eend (150 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-pouch-drool-worthy-wild-boar-duck/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Kwijl-in-Stijl Wild Zwijn & Eend', 'wet', '150 g', null, 'https://www.edgardcooper.com/nl/products/dog-pouch-drool-worthy-wild-boar-duck/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'eend* 26%, wild zwijn* 6%, varken*, wortel* (gedroogd) 2%, sperziebonen* (gedroogd) 2%, erwtenzetmeel*, mineralen, gist* (gedroogd), zalmolie*, erwtenvezel*, bietenpulp* (gedroogd), salie* (gedroogd) 0,1%, glucosamine, chondroïtinesulfaat. *Natuurlijk', true, now(), 'sha256:f92cfb1a460b8d172c3025e5303b32bf657413da3f7bd51bb4ab354e1f1f6da1', null from p;

-- Edgard & Cooper — Kwijl-in-Stijl Kalkoen (puppy) (150 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-pouch-drool-worthy-turkey/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Kwijl-in-Stijl Kalkoen (puppy)', 'wet', '150 g', null, 'https://www.edgardcooper.com/nl/products/dog-pouch-drool-worthy-turkey/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kalkoen* 32%, eiwit* (gedroogd), wortel* (gedroogd) 2%, erwten* (gedroogd) 2%, erwtenzetmeel*, zalmolie*, mineralen, gist* (gedroogd), erwtenvezel*, bietenpulp* (gedroogd), salie* (gedroogd) 0,1%, glucosamine, chondroïtinesulfaat. *Natuurlijk.', true, now(), 'sha256:6fb81b5bc770129133442585ea6253869887b56086ab46580bf181a21acc034c', null from p;

-- Edgard & Cooper — Kwijl-in-Stijl Kip (senior) (150 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-pouch-senior-drool-worthy-chicken/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Kwijl-in-Stijl Kip (senior)', 'wet', '150 g', null, 'https://www.edgardcooper.com/nl/products/dog-pouch-senior-drool-worthy-chicken/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip* 32%, eiwit* (gedroogd), zoete aardappelen* (gedroogd) 2%, erwten* (gedroogd) 2%, erwtenzetmeel*, mineralen, gist* (gedroogd), zalmolie*, erwtenvezel*, bietenpulp* (gedroogd), tijm* (gedroogd) 0,1%, glucosamine, chondroïtinesulfaat. *Natuurlijk', true, now(), 'sha256:f2884a2680cd0f64510ca17c1b14baf9de7d997b3f2280e03c5642f4b5aee1dd', null from p;

-- Edgard & Cooper — Lam & rund (400 / 800 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-tin-lamb-beef/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Lam & rund', 'wet', '400 / 800 g', null, 'https://www.edgardcooper.com/nl/products/dog-tin-lamb-beef/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'lam 30%, rund 30%, wortel 2%, mineralen, mannan-oligosachariden (MOS), broccoli (gedroogd) 0,25%, rode bieten (gedroogd) 0,25%, lijnzaadolie, fructo-oligosachariden (FOS), zalmolie, appel (gedroogd) 0,06%, peer (gedroogd) 0,05%, banaan (gedroogd) 0,05%, bosbessen (gedroogd) 0,05%, gedroogde venkel 0,01%, gedroogd karwijzaad 0,01%, gedroogd duizendblad 0,01%, gedroogde braambessenblaadjes 0,01%, gedroogde maretak 0,01%, gedroogde kamillebloesem 0,01%, gedroogde gentiaanwortel 0,01%, gedroogd duizendguldenkruid 0,01%', true, now(), 'sha256:bfbd5e2f8f6dfa92e8cb4f1ad1376811a06d2b3991f81f88202829914f6785ae', null from p;

-- Edgard & Cooper — Wild & eend (400 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-tin-game-duck/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Wild & eend', 'wet', '400 g', null, 'https://www.edgardcooper.com/nl/products/dog-tin-game-duck/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'wild 35%, eend 25%, zoete aardappel 2%, rode bieten (gedroogd) 0,5%, mineralen, mannan-oligosachariden (MOS), lijnzaadolie, fructo-oligosachariden (FOS), appel (gedroogd) 0,13%, peer (gedroogd) 0,05%, bosbessen (gedroogd) 0,05%, gedroogde venkel 0,01%, gedroogd karwijzaad 0,01%, gedroogd duizendblad 0,01%, gedroogde braambessenblaadjes 0,01%, gedroogde maretak 0,01%, gedroogde kamillebloesem 0,01%, gedroogde gentiaanwortel 0,01%, gedroogd duizendguldenkruid 0,01%', true, now(), 'sha256:2904db8e933f016ce472ef69593e7a8ed3167110ee0f96249e47e9a8b2cee571', null from p;

-- Edgard & Cooper — ASC-Zalm & Kalkoen (400 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-tin-salmon-turkey/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'ASC-Zalm & Kalkoen', 'wet', '400 g', null, 'https://www.edgardcooper.com/nl/products/dog-tin-salmon-turkey/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kalkoen 52%, ASC* zalm 8%, erwten 1%, pompoen 1%, spinazie (gedroogd) 0,5%, mineralen, mannan-oligosachariden (MOS), fructo-oligosachariden (FOS), appel (gedroogd) 0,08%, rode bieten (gedroogd) 0,08%, gedroogde venkel 0,01%, gedroogd karwijzaad 0,01%, gedroogd duizendblad 0,01%, gedroogde braambessenblaadjes 0,01%, gedroogde maretak 0,01%, gedroogde kamillebloesem 0,01%, gedroogde gentiaanwortel 0,01%, gedroogd duizendguldenkruid 0,01%. *Van een ASC-gecertificeerde, verantwoorde kwekerij. www.asc-aqua.org', true, now(), 'sha256:c901921a287d331de6ca8ac01957e40e1bcca5484b0d42f23296f6e05bbccbcf', null from p;

-- Edgard & Cooper — Rund (400 / 800 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-tin-beef/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Rund', 'wet', '400 / 800 g', null, 'https://www.edgardcooper.com/nl/products/dog-tin-beef/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rund 60%, wortel 2%, broccoli (gedroogd) 0,5%, mineralen, mannan-oligosachariden (MOS), lijnzaadolie, fructo-oligosachariden (FOS), rode bieten (gedroogd) 0,13%, peer (gedroogd) 0,08%, gedroogde venkel 0,01%, gedroogd karwijzaad 0,01%, gedroogd duizendblad 0,01%, gedroogde braambessenblaadjes 0,01%, gedroogde maretak 0,01%, gedroogde kamillebloesem 0,01%, gedroogde gentiaanwortel 0,01%, gedroogd duizendguldenkruid 0,01%', true, now(), 'sha256:33edc7691b05744ce965dec0dbf1ad0030721092aa6cb4447389f4cc0a9da3a1', null from p;

-- Edgard & Cooper — Eend & kip (puppy) (400 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-tin-duck-chicken/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Eend & kip (puppy)', 'wet', '400 g', null, 'https://www.edgardcooper.com/nl/products/dog-tin-duck-chicken/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip 50%, eend 10%, pompoen 2%, erwten 2%, mineralen, wortel 0,5%, zalmolie, mannan-oligosachariden (MOS), fructo-oligosachariden (FOS), broccoli (gedroogd) 0,13%, banaan (gedroogd) 0,05%, aardbeien (gedroogd) 0,05%, glucosamine, chondroïtinesulfaat, gedroogde venkel 0,01%, gedroogd karwijzaad 0,01%, gedroogd duizendblad 0,01%, gedroogde braambessenblaadjes 0,01%, gedroogde maretak 0,01%, gedroogde kamillebloesem 0,01%, gedroogde gentiaanwortel 0,01%, gedroogd duizendguldenkruid 0,01%', true, now(), 'sha256:cfb1317772225331c0010d26494e91bdc08ed4b6ee47bb6cbfd68553b935ba8e', null from p;

-- Edgard & Cooper — Kip & ASC-Zalm (senior) (400 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-tin-chicken-salmon/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Kip & ASC-Zalm (senior)', 'wet', '400 g', null, 'https://www.edgardcooper.com/nl/products/dog-tin-chicken-salmon/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip 50%, ASC* zalm 10%, aardappel 4%, erwten 2%, broccoli (gedroogd) 0,5%, mineralen, mannan-oligosachariden (MOS), lijnzaad, zalmolie, fructo-oligosachariden (FOS), spinazie (gedroogd) 0,06%, bosbessen (gedroogd) 0,05%, cranberry''s (gedroogd) 0,05%, glucosamine, chondroïtinesulfaat, gedroogde venkel 0,01%, gedroogd karwijzaad 0,01%, gedroogd duizendblad 0,01%, gedroogde braambessenblaadjes 0,01%, gedroogde maretak 0,01%, gedroogde kamillebloesem 0,01%, gedroogde gentiaanwortel 0,01%, gedroogd duizendguldenkruid 0,01%. *Van een ASC-gecertificeerde, verantwoorde kwekerij. www.asc-aqua.org', true, now(), 'sha256:d5937373dfa205142ef6d05c0e4ca5124f42119a8c51ffabf6135c4cf19f7dbe', null from p;

-- Edgard & Cooper — Kip & kalkoen (kuipje) (150 / 300 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-cup-chicken-turkey/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Kip & kalkoen (kuipje)', 'wet', '150 / 300 g', null, 'https://www.edgardcooper.com/nl/products/dog-cup-chicken-turkey/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kip 30%, kalkoen 26%, mineralen, wortel 2%, cranberry''s 1%, tomaat 1%, pompoen 1%, appel 1%, peterselie 0,1%, dille 0,1%', true, now(), 'sha256:74a8577fa2f0258895efefd2903a3d95de72d734ed9762526da28ad3d127443f', null from p;

-- Edgard & Cooper — Wild & eend (kuipje) (150 / 300 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-cup-game-duck/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Wild & eend (kuipje)', 'wet', '150 / 300 g', null, 'https://www.edgardcooper.com/nl/products/dog-cup-game-duck/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'wild 30%, eend 26%, mineralen, wortel 2%, zoete aardappel 1%, rode bieten 1%, cranberry''s 1%, appel 1%, peterselie 0,1%, dille 0,1%', true, now(), 'sha256:c6d232921152373e8155775672d4bbc03c0d3a7b716a8d9542ce26b95b9a7dc1', null from p;

-- Edgard & Cooper — Zalm & Kalkoen (kuipje) (150 / 300 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-cup-salmon-turkey/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Zalm & Kalkoen (kuipje)', 'wet', '150 / 300 g', null, 'https://www.edgardcooper.com/nl/products/dog-cup-salmon-turkey/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kalkoen 46%, zalm 10%, wortel 2%, erwten 2%, mineralen, appel 1%, rode bieten 1%, peterselie (gedroogd) 0,1%, dillee (gedroogd) 0,1%', true, now(), 'sha256:5ddc06316b69d217d4f89077208c8855046cb3ee2c10c0a83f6192b04bf639f3', null from p;

-- Edgard & Cooper — Lam & rund (kuipje) (150 / 300 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-cup-lamb-beef/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Lam & rund (kuipje)', 'wet', '150 / 300 g', null, 'https://www.edgardcooper.com/nl/products/dog-cup-lamb-beef/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'lam 30%, rund 26%, mineralen, wortel 2%, broccoli 1%, rode bieten 1%, appel 1%, spinazie 1%, peterselie 0,1%, dille 0,1%', true, now(), 'sha256:81ae0c3133fe19647891bb599a8138a75beba70ef3a98ae523c8af898d4b4de5', null from p;

-- Edgard & Cooper — Rund & eend (150 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-cup-beef-duck/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Rund & eend', 'wet', '150 g', null, 'https://www.edgardcooper.com/nl/products/dog-cup-beef-duck/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rund 42%, eend 14%, mineralen, wortel 2%, rode bieten 1%, broccoli 1%, cranberry''s 1%, zoete aardappel 1%, peterselie 0,1%, dille 0,1%', true, now(), 'sha256:8084264172dbb09477c67a4a5530332d166ed22e15a6575e8b933c395a2482f2', null from p;

-- Edgard & Cooper — Biologische kalkoen (100 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-cup-turkey/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Biologische kalkoen', 'wet', '100 g', null, 'https://www.edgardcooper.com/nl/products/dog-cup-turkey/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '*Vervaardigd met producten afkomstig van 100% gecontroleerde biologische landbouw en veeteelt. Biologische kalkoen* 26%, biologisch rund*, biologisch varken*, biologische kip*, mineralen, biologische kokosnoot* 0,15%, biologische chiazaden* 0,15%, biologische rozenbottel* 0,1%, biologische kamille* 0,1%', true, now(), 'sha256:9f6688e49e7c6e3b8f224131f8df50f7ddfc36f729dc3cfb69dfd42570aba873', null from p;

-- Edgard & Cooper — Biologisch rund (100 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-cup-beef/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Biologisch rund', 'wet', '100 g', null, 'https://www.edgardcooper.com/nl/products/dog-cup-beef/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '*Vervaardigd met producten afkomstig van 100% gecontroleerde biologische landbouw en veeteelt. Biologisch rund* 51%, biologisch varken*, biologische kip*, mineralen, biologische kokosnoot* 0,15%, biologische chiazaden* 0,15%, biologische rozenbottel* 0,1%, biologische kamille* 0,1%', true, now(), 'sha256:82c9444b0c79abb109ca761daaa768755ba23dab33fa5053dab0665e68376ae7', null from p;

-- Edgard & Cooper — Biologische vis (100 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-cup-fish/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Biologische vis', 'wet', '100 g', null, 'https://www.edgardcooper.com/nl/products/dog-cup-fish/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '*Vervaardigd met producten afkomstig van 100% gecontroleerde biologische landbouw en veeteelt. Biologisch rund*, biologische kip*, biologische vis* 14%, biologisch varken*, mineralen, biologische wortel* 2%, biologische erwten* 2%, biologische venkel* 0,1%, biologische rozenbottel* 0,1%, biologische kamille* 0,1%', true, now(), 'sha256:2365a8ae65310d5fa0b61ddfc7f2ec505a3d22b4fffcaf040adde92f49b10865', null from p;

-- Edgard & Cooper — Eend & kip (puppy, kuipje) (150 / 300 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-cup-duck-chicken/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Eend & kip (puppy, kuipje)', 'wet', '150 / 300 g', null, 'https://www.edgardcooper.com/nl/products/dog-cup-duck-chicken/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'eend 30%, kip 26%, mineralen, wortel 2%, broccoli 1%, appel 1%, pompoen 1%, erwten 1%, zalmolie 0,5%, peterselie 0,1%, dille 0,1%', true, now(), 'sha256:e678fbfdaa85b2089dd6a6381e2f4de1df2fd090f8ece88fad61fcedbbd668cf', null from p;

-- Edgard & Cooper — Biologische kip & vis (puppy) (100 g)
-- bron: https://www.edgardcooper.com/nl/products/dog-cup-chicken-fish/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Edgard & Cooper', 'Biologische kip & vis (puppy)', 'wet', '100 g', null, 'https://www.edgardcooper.com/nl/products/dog-cup-chicken-fish/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, '*Vervaardigd met producten afkomstig van 100% gecontroleerde biologische landbouw en veeteelt. Biologische kip* 26%, biologisch rund*, biologische vis* 10%, biologisch varken*, mineralen, biologische wortel* 2%, biologische erwten* 2%, biologische rozenbottel* 0,1%, biologische kamille* 0,1%', true, now(), 'sha256:a343d75e6257077220aed80b02a45c40353689011864743d802847845ad63602', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
