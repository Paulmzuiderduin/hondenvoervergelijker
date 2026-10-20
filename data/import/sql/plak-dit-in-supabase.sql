-- Automatisch overgenomen etiketten, batch 1 van 2026-10-20 (43 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site zegt daarna:
-- "automatisch overgenomen van <domein> op <datum> . nog niet door een mens
-- nagelopen". Er wordt hier geen enkele controle door een mens geclaimd.
begin;

-- Brit - Care Dog Hypoallergenic Adult Medium Breed Lam & Rijst (3 kg / 12 kg)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_droog/brit/brit_care/1578955
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Brit', 'Care Dog Hypoallergenic Adult Medium Breed Lam & Rijst', 'kibble', '3 kg / 12 kg', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/brit/brit_care/1578955', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogd lam (40%), rijst (35%), gedroogde appelpulp, kippenvet, natuurlijk aroma, biergist, zalmolie (2%), erwtenmeel, glucosamine (260 mg/kg), fructo-oligosacchariden ( 200 mg/kg), chondro' || chr(239) || 'tinesulfaat (200 mg/kg), mannan-oligosacchariden (150 mg/kg), Mojave yucca (150 mg/kg), mariadistelzaad (90 mg/kg), ' || chr(946) || '-glucanen (50 mg /kg), gedroogd zeegras (50 mg/kg), gedroogde duindoorn (50 mg/kg), probioticum Lactobacillus helveticus HA - 122 ge' || chr(239) || 'nactiveerd (15x109 cellen/kg)', true, now(), 'sha256:7c7c6e43e752e1356215b1dd890c1b1fe40ba7b63167b9f1e56bf99a151393fc', null from p;

-- Brit - Care Hond Hypoallergenic Gewichtsverlies Konijn (3 kg / 12 kg)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_droog/brit/brit_care/1579266
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Brit', 'Care Hond Hypoallergenic Gewichtsverlies Konijn', 'kibble', '3 kg / 12 kg', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/brit/brit_care/1579266', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogd konijn (36%), rijst (35%), gedroogde appelpulp (12%), lignocellulose (10%), kippenvet, natuurlijk aroma, biergist, zalmolie (1%), psyllium husks & seeds (0,5%), erwtenmeel, glucosamine (300 mg/kg), fructooligosacchariden (230 mg/kg), chondro' || chr(239) || 'tinesulfaat (230 mg/kg), mannan-oligosacchariden (180 mg/kg), Mojave yucca (180 mg/kg), mariadistelzaad (110 mg/kg), ' || chr(946) || '-glucanen (60 mg/kg), gedroogd zeegras (60 mg/kg), gedroogde duindoorn (60 mg/kg), probioticum Lactobacillus helveticus HA - 122 ge' || chr(239) || 'nactiveerd (15x109 cellen/kg)', true, now(), 'sha256:5c3d6fe70105db3a6540832a9fdda9818b62ab46875e14ee36aaef98a5a4a494', null from p;

-- Brit - Care Hond Graanvrij Sensitive Wild & Aardappel (3 kg / 12 kg)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_droog/brit/brit_care/1579614
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Brit', 'Care Hond Graanvrij Sensitive Wild & Aardappel', 'kibble', '3 kg / 12 kg', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/brit/brit_care/1579614', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogd hertenvlees (36%), aardappelen (30%), kokosolie, gedroogde appelpulp, zalmolie (5%), lijnzaad (4%), biergist, erwtenmeel, glucosamine (300 mg/kg), fructo-oligosachariden (230 mg/kg), chondro' || chr(239) || 'tinesulfaat (230 mg/kg), mannan-oligosachariden (180 mg/kg), Mojave yucca (180 mg/kg), mariadistelzaad (110 mg/kg), ' || chr(946) || '-glucanen (60 mg/kg), gedroogd zeegras (60 mg/kg), gedroogde duindoorn (60 mg/kg), probioticum Lactobacillus helveticus HA - 122 ge' || chr(239) || 'nactiveerd (15x109 cellen/kg)', true, now(), 'sha256:135c6eb6bbc2c15bc8e84ccf4e3bc795554c3d8d1a22ebe8604395ba3a0ff819', null from p;

-- Brit - Care Dog Sustainable Sensitive Vis & Insecten (3 kg / 12 kg)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_droog/brit/brit_care/1579510
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Brit', 'Care Dog Sustainable Sensitive Vis & Insecten', 'kibble', '3 kg / 12 kg', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/brit/brit_care/1579510', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogde insecten (14%), gedroogde witvis (14%), gele erwten (14%), groene erwten (14%), gedroogde appelpulp, erwteneiwit, kokosolie (8%), gehydrolyseerd witviseiwit (4%), biergist, zalmolie (2%), lijnzaad (2%), eierschalen, erwtenmeel, glucosamine (300 mg/kg), fructo-oligosachariden (230 mg/kg), Chondro' || chr(239) || 'tinesulfaat (230 mg/kg), Mannan oligosacchariden (180 mg/kg), Mojave yucca (180 mg/kg), Mariadistelzaad (110 mg/kg), ' || chr(946) || '-glucanen (60 mg/kg), gedroogde cordial (60 mg/kg), gedroogde duindoorn (60 mg/kg), probioticum Lactobacillus helveticus HA - 122 ge' || chr(239) || 'nactiveerd (15x109 cellen/kg)', true, now(), 'sha256:6fa94b4165c9f92dc570e2d4a1347bc01875f7e4ba19fb4fd711920e8c8af52c', null from p;

-- Brit - Premium by Nature Sensitive Lam (3 kg / 15 kg)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_droog/brit/britpremium/1579521
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Brit', 'Premium by Nature Sensitive Lam', 'kibble', '3 kg / 15 kg', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/brit/britpremium/1579521', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogd lamsvlees (35%), rijst, kippenvet, rijstzemelen, gedroogde appelpulp, zalmolie (2%), gehydrolyseerde kippenlever, biergist, collageen, glucosamine (210 mg/kg), chondro' || chr(239) || 'tinesulfaat (150 mg/kg), mannanoligosachariden (120 mg/kg), fructooligosachariden (90 mg/kg), Yucca schidigera (90 mg/kg), gedroogde echte kamille (80 mg/kg), glycosaminoglycanen (50 mg/kg), gedroogde bosbessen (50 mg/kg), gedroogde kruidnagel (40 mg/kg), gedroogde citrusvruchten (40 mg/kg), gedroogde rozemarijn (40 mg/kg), gedroogde kurkuma (40 mg/kg)', true, now(), 'sha256:67c1afd27917de518dba19496f3cdb1aa2707af10b66a5b3ba50c502b965fbd0', null from p;

-- Brit - Premium Adult L (3 kg / 15 kg)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_droog/brit/britpremium/1579514
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Brit', 'Premium Adult L', 'kibble', '3 kg / 15 kg', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/brit/britpremium/1579514', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip (45%, waarvan 25% gedroogd, 20% uitgebeend), haver, tarwe, kippenvet (geconserveerd met gemengde tecoferolen), ma' || chr(239) || 's, gedroogde appels, zalmolie (2%), gehydrolyseerde kippenlever, biergist, collageen, schaaldieren [bron van glucosamine] (210 mg/kg), kraakbeen [bron van chondro' || chr(239) || 'tine] (150 ml/kg), Vruchten en kruiden (kruidnagel, citrusvruchten, rozemarijn, kurkuma - 120 mg/kg), mannan-oligosacchariden (120 mg/kg), fructoooligosacchariden (90 mg/kg), mohave palmilie (90 mg/kg), gedroogde kamille (80 mg/kg), groenlipmosselen [glycosaminoglycanen] (50 mg/kg), gedroogde bosbessen (50 mg/kg)', true, now(), 'sha256:caf3cbac5e67a2aa5cb997be57240221b14a604aca3abe392614dec0f1491080', null from p;

-- Brit - Premium Adult S (8 kg)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_droog/brit/britpremium/1580019
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Brit', 'Premium Adult S', 'kibble', '8 kg', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/brit/britpremium/1580019', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip (50%, waarvan 30% gedroogd, 20% uitgebeend), haver, tarwe, kippenvet (geconserveerd met gemengde tecoferolen), ma' || chr(239) || 's, gedroogde appels, zalmolie (2%), gehydrolyseerde kippenlever, biergist, collageen, schaaldieren [bron van glucosamine] (210 mg/kg), kraakbeen [bron van chondro' || chr(239) || 'tine] (150 ml/kg), Vruchten en kruiden (kruidnagel, citrusvruchten, rozemarijn, kurkuma - 120 mg/kg), mannan-oligosacchariden (120 mg/kg), fructoooligosacchariden (90 mg/kg), mohave palmilie (90 mg/kg), gedroogde kamille (80 mg/kg), groenlipmosselen [glycosaminoglycanen] (50 mg/kg), gedroogde bosbessen (50 mg/kg)', true, now(), 'sha256:be64a63d4aaf55fae2a6f2f5249d4d7f50947ca0c642e0d617c1db691901abcc', null from p;

-- Brit - Mono Protein Kalkoen (400 g / 6 x 400 g / 12 x 400 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/brit/2111488
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Brit', 'Mono Protein Kalkoen', 'wet', '400 g / 6 x 400 g / 12 x 400 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/brit/2111488', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen (74%, vlees en slachtafval), erwtenzetmeel (3%), lignocellulose (1%)', true, now(), 'sha256:7e1d9abc193a128629daa2346d8f31162fbf56baa62089cfe890272890ecdc29', null from p;

-- Brit - Pate & Vlees Puppy (800 g / 12 x 800 g / 24 x 800 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/brit/1579818
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Brit', 'Pat' || chr(233) || ' & Vlees Puppy', 'wet', '800 g / 12 x 800 g / 24 x 800 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/brit/1579818', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip (vlees en slachtafval, 44%), kalkoen (vlees en slachtafval, 26%), erwtenzetmeel (3%), erwtenvezels (1%), zalmolie (0,5%)', true, now(), 'sha256:86f42bf3bc9558cfe4ac7266d96a4b122d2fdc30e73e5b207b9b43a8e03da875', null from p;

-- Brit - Care Mini Sterilised in saus (48 x 85 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/brit/2679422
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Brit', 'Care Mini Sterilised in saus', 'wet', '48 x 85 g', '8595602554850', 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/brit/2679422', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en organen in filetvorm (77%, 4% zalm, 4% haring), erwtenmeel (2,7%), gedroogde bosbessen (1,5%), lignocellulose (0,9%), gedroogde kruidnagel (0,4%), gedroogde citrusvruchten (0,4%), gedroogde rozemarijn (0,4%), gedroogde kurkuma (0,4%), calciumcarbonaat (0,2%)', true, now(), 'sha256:cf89e50a5094545dc8042f871c406eb6d583fce5efebfcf8bc68d3dcaed7bcce', null from p;

-- Terra Canis - Classic Rund met wortel, appel & rijst (6 x 400 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_hondenvoer/29125
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Terra Canis', 'Classic Rund met wortel, appel & rijst', 'wet', '6 x 400 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_hondenvoer/29125', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Spiervlees van rund (20%), hart van rund (15%), lever van rund (9%), long van rund (8%), wortels (12%), appel (9%), courgette, bruine rijst (6%), abrikoos, lijnolie, gist, peterselie, basilicum, venkel, wei, mineraalaarde, rosebottelpoeder, biologische eierschalen (0,4%), zeealgen(0,4%)', true, now(), 'sha256:538cfca18ca6bef1279d9859f70b83623e3d361b712039f91cb38751cc2faf0c', null from p;

-- Terra Canis - Classic Kalkoen met Broccoli, peer & aardappelen (6 x 400 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_hondenvoer/29125
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Terra Canis', 'Classic Kalkoen met Broccoli, peer & aardappelen', 'wet', '6 x 400 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_hondenvoer/29125', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoenharten (40%), wortels, aardappelen (10%), spiervlees van kalkoen (9%), kalkoenlever (9%), peer (7%), gierst, abrikozen, broccoli (3%), lijnzaadolie, gist, eierschaal poeder (0,4%), lijnzaad, basilicum, peterselie, mineraalaarde, zeealgen (0,13%), pollen', true, now(), 'sha256:adf99a1afe5063cd8be18d353c4fe7a395955b9a9c58ffa1a79ff61c6977fca7', null from p;

-- Terra Canis - Classic Lam met courgette, gierst & dille (6 x 400 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_hondenvoer/29125
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Terra Canis', 'Classic Lam met courgette, gierst & dille', 'wet', '6 x 400 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_hondenvoer/29125', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lamshart (20%), spiervlees van lam (18%), lamslong (10%), courgette (13%), gierst (8%), wortels, appel, selderij, lijnolie, gist, eierschaal poeder (0,4%), basilicum, dille (0,2%), venkelzaden, mineraalaarde, zeealgen (0,13%), pollen', true, now(), 'sha256:1fc23ebb616245126bc32208915d94921ce1160134864254d26c169c88f10032', null from p;

-- Terra Canis - Classic Konijn met Courgette, Amarant en Wilde Knoflook (6 x 400 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_hondenvoer/29125
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Terra Canis', 'Classic Konijn met Courgette, Amarant en Wilde Knoflook', 'wet', '6 x 400 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_hondenvoer/29125', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Konijnspiervlees (38%), kalkoenlever (12%), konijnenlong (8%), pompoen, tomaat, courgette (8%), selderij, amarant (4%), gierst, lijnzaadolie, gist, eischaalpoeder (0,5%), bieslook, gemalen lijnzaad, wilde knoflook (0,3%), mineraalaarde, andeszout, zeewier (0,15%), pollen', true, now(), 'sha256:c4964c8e268240d457f8464cc22ff3f10aebfa0cd21dd760ecfc206f7048b9d7', null from p;

-- Terra Canis - Classic Kip met amarant, tomaten & basilicum (6 x 400 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_hondenvoer/29125
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Terra Canis', 'Classic Kip met amarant, tomaten & basilicum', 'wet', '6 x 400 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_hondenvoer/29125', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kippenhart (24%), kippenmagen (22%), amarant (5%), tomaten (17%), kippenlever (10%), peren, gierst, rode biet, bleekselderij, kokosnootolie, lijnzaadolie, gist, eierschaal poeder (0,5%), basilicum (0,4%), bieslook, zeewier (0,14%), Andeszout, rozenbottel', true, now(), 'sha256:c7322d6abfb13946aa9915638b66b6be8e53afc1261ac44115c552b3ac3a7302', null from p;

-- Terra Canis - Classic Zeezalm met courgette, boekweit en rozenbottels (6 x 400 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_hondenvoer/29125
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Terra Canis', 'Classic Zeezalm met courgette, boekweit en rozenbottels', 'wet', '6 x 400 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_hondenvoer/29125', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Zalmfilet (58%), pompoen, courgette (10%), aardappelen, boekweit (10%), broccoli, tarwekiemolie, dille, basilicum, rozenbottels (0,7%), biologische eierschalen (0,3%), gemalen lijnzaad, zeealg (0,4%)', true, now(), 'sha256:ed65f9fa920c8b927a8167f5b3a08e2d0dfc4a8f449029fd2697947996633698', null from p;

-- Terra Canis - Classic Paard met Amarant, Perzik & Rode Biet (6 x 400 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_hondenvoer/29125
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Terra Canis', 'Classic Paard met Amarant, Perzik & Rode Biet', 'wet', '6 x 400 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_hondenvoer/29125', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Paardenspiervlees (51%), wortel, selderij (9%), amarant (7,5%), venkel, appel, perzik (5%), rode biet (3%), lijnzaadolie, gist, eierschaalpoeder (0,4%), tijm, zeewier (0,15%), bieslook, andeszout, mineraalaarde', true, now(), 'sha256:7ec103f6279efa3dd0712a507b521d2c7d702ab468e8f7224901c4cb0cd3e39c', null from p;

-- Terra Canis - Graanvrij Rundvlees met courgette, pompoen en oregano (6 x 800 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_sensitive_hondenvoer/110181
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Terra Canis', 'Graanvrij Rundvlees met courgette, pompoen en oregano', 'wet', '6 x 800 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_sensitive_hondenvoer/110181', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rundvlees (47%, bestaande uit runderhart 34%, runderlong 9%, runderspiervlees 4%), bouillon (25%), pompoen (12%), courgette (7%), rode biet (3%)*, pastinaak (1%)*, mineralen (1%)*, kokosmeel, koolzaadolie, pompoenpittenmeel, bakkersgist*, psylliumvezels*, basilicum*, Andeszout, oesterschelp*, oregano (0,1%)*, peterselie*, minerale klei*, spirulina*', true, now(), 'sha256:8622f75e497c8b6fde69b63601e13a84125e7d13a8f77b1495cbbd6b7c100394', null from p;

-- Terra Canis - Graanvrij Kalkoen met selderij, pompoen en waterkers (6 x 800 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_sensitive_hondenvoer/110181
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Terra Canis', 'Graanvrij Kalkoen met selderij, pompoen en waterkers', 'wet', '6 x 800 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_sensitive_hondenvoer/110181', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen (51%, bestaande uit kalkoenhart 31%, kalkoenmaag 12%, kalkoenspiervlees 5%, kalkoenvel 3%), bouillon (19%), wortel (7%), selderij (7%)*, pompoen (6%)*, komkommer (3%)*, mineralen (1%)*, kokosmeel, koolzaadolie, pompoenpittenmeel, bakkersgist*, psylliumvezels*, basilicum*, kamille*, waterkers (0,1%)*, oesterschelp*, rozenbottelschelp*, minerale klei*, spirulina*', true, now(), 'sha256:077fd240df6f620db38d4ac278dbee535d05b17c59c3e3c0c4b4f34ae1c75e9c', null from p;

-- Terra Canis - Graanvrij Kip met pastinaak, paardenbloem en bramen (6 x 800 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_sensitive_hondenvoer/110181
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Terra Canis', 'Graanvrij Kip met pastinaak, paardenbloem en bramen', 'wet', '6 x 800 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_sensitive_hondenvoer/110181', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip (49%, bestaande uit kippenmaagjes 26%, kippenharten 15%, kippenspiervlees 4%, kippenvel 2%, kippenlever 2%), bouillon (23%), pompoen (12%), appel (6%), braam (2%), mineralen (1%)*, kokosmeel, pastinaak (0,8%)*, koolzaadolie, pompoenpittenmeel, bakkersgist*, psylliumvezels*, kamille*, rozenbottelschelpen*, oesterschelpen*, paardenbloem (0,1%)*, Andeszout, minerale klei*, spirulina*', true, now(), 'sha256:9cebc555bc94cf345553ce0af43d83cb8af9fe7e287dfe7ce4d9998ef31c7fa1', null from p;

-- Terra Canis - Graanvrij Kalfsvlees met peterseliewortel, mango en rode bes (6 x 800 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_sensitive_hondenvoer/110181
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Terra Canis', 'Graanvrij Kalfsvlees met peterseliewortel, mango en rode bes', 'wet', '6 x 800 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_sensitive_hondenvoer/110181', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalfsvlees (46%, bestaande uit kalfshart 35%, kalfslong 11%), bouillon (24%), pompoen (8%), peterseliewortel (8%), meloen (5%), mango (3%), kokosmeel (1%), mineralen (1%)*, pastinaak*, rode bes (0,5%), koolzaadolie, pompoenpittenmeel, bakkersgist*, salie*, basilicum*, oesterschelp*, Andeszout, kervel*, venkelzaad*, paardenbloem*, minerale klei*, spirulina*', true, now(), 'sha256:c1c39119fc3a1c031414b7093c3ea6370a22a23a356f4fb03c34a3956c0ddef9', null from p;

-- Terra Canis - Graanvrij Paardenvlees met koolraap, venkel en salie (6 x 800 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_sensitive_hondenvoer/110181
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Terra Canis', 'Graanvrij Paardenvlees met koolraap, venkel en salie', 'wet', '6 x 800 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_sensitive_hondenvoer/110181', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Paardenspier (46%), bouillon (23%), aardappel (9%), pompoen (6%), koolraap (6%), venkel (3%), rode biet (3%)*, mineralen (1%)*, raapzaadolie, kokosmeel, pastinaak*, biergist*, salie (0,1%)*, paardenbloem*, vlierbloesem*, oesterschelp*, Andeszout, minerale klei*, spirulina*', true, now(), 'sha256:db7da845a743fa35d25a6d32149188fd1ef473c6afcbf014d7c1e43af274fd4d', null from p;

-- Terra Canis - Graanvrij Lam met pompoen, pastinaak en passiebloem (6 x 800 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_sensitive_hondenvoer/110181
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Terra Canis', 'Graanvrij Lam met pompoen, pastinaak en passiebloem', 'wet', '6 x 800 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_sensitive_hondenvoer/110181', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam (42%, bestaande uit lamshart 33%, lamslong 9%), bouillon (25%), wortel (9%), pompoen (9%), appel (6%), perzik (3%), pastinaak (1%)*, mineralen (1%)*, koolzaadolie, lupinegries*, kokosmeel, bakkersgist*, passiebloem (0,2%)*, basilicum*, paardenbloem*, salie*, minerale klei*, oesterschelp*, Andeszout, spirulina*', true, now(), 'sha256:f8fd8c225b78b2f4b950ae6c50d4250937ab1521e85ebe70858ba6b960f65827', null from p;

-- Terra Canis - Graanvrij Wild met appel en cranberries (6 x 800 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_sensitive_hondenvoer/110181
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Terra Canis', 'Graanvrij Wild met appel en cranberries', 'wet', '6 x 800 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_sensitive_hondenvoer/110181', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Spiervlees van ree en edelhert (41%), bouillon (28%), wortel (10%), aardappel (6%), courgette (6%), appel (3%), mineralen (1%)*, pastinaak*, koolzaadolie, kokosmeel, pompoenpittenmeel, cranberry (0,3%)*, bakkersgist*, psylliumvezels*, oesterschelp*, Andeszout, minerale klei*, kardemom*, spirulina*', true, now(), 'sha256:e67139b3e1a8af8c4c8c2c9ae8f883fdaf6bc33e0af2f2e36f94defd9f68ada6', null from p;

-- Terra Canis - Graanvrij Konijn met courgette, abrikoos en bonenkruid (6 x 800 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_sensitive_hondenvoer/110181
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Terra Canis', 'Graanvrij Konijn met courgette, abrikoos en bonenkruid', 'wet', '6 x 800 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_sensitive_hondenvoer/110181', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Konijn en kalkoen (45%, bestaande uit 34% konijnenvlees en 11% kalkoenlever), bouillon (23%), wortel (10%), pompoen (9%), courgette (6%), abrikoos (3%), mineralen (1%)*, kokosmeel, koolzaadolie, pompoenpittenmeel, bakkersgist*, basilicum*, rozenbottel*, bonenkruid (0,1%)*, venkelzaad*, oesterschelp*, lijnzaad*, Andeszout, minerale klei*, spirulina*', true, now(), 'sha256:a3190d02e1701b9e9da8c970d65c52119e45a20b0d80c01c0ec7c4047c0c56bc', null from p;

-- Terra Canis - Graanvrij Eend met pompoen, aardbeien en vlierbloesem (6 x 800 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_sensitive_hondenvoer/110181
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Terra Canis', 'Graanvrij Eend met pompoen, aardbeien en vlierbloesem', 'wet', '6 x 800 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_sensitive_hondenvoer/110181', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eend (46%, bestaande uit eendenhart 41%, eendenlever 5%), bouillon (18%), pompoen (10%), wortel (8%), courgette (4%), selderij (4%), appel (3%), meloen (3%), kastanje, aardbei (1%), mineralen (1%)*, koolzaadolie, bakkersgist*, vlierbloesem (0,2%)*, psylliumvezels*, oesterschelp*, kervel*, paardenbloem*, basilicum*, minerale klei*, peterselie*, Andeszout, spirulina*. * = gedroogd.', true, now(), 'sha256:6f687c9e7823ffb3fb914d63fffa2dad508c388d919a8bb3a731fc36ca6b6715', null from p;

-- Terra Canis - Puppy Rund met appel, wortelen & rozenbottel (6 x 400 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_puppy_hondenvoer/145939
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Terra Canis', 'Puppy Rund met appel, wortelen & rozenbottel', 'wet', '6 x 400 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_puppy_hondenvoer/145939', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Runderhart (29%), longen van runderen (13%), lever van rund (11%), spiervlees van rund (5%), courgette, wortels (11%), appels (6%), gierst, meel poempoenzaden (1% ), lijnzaadolie, organische eierschaal poeder (0,7%), veenbessen, basilicum, peterselie, biergist, rozenbottel poeder (0,2%), minerale klei, zeewier (0,1%), Andeszout, stuifmeel', true, now(), 'sha256:93edadbe68764c304b5095168b6c252d765e6d7a8106155226ba1e03cf93ed10', null from p;

-- Terra Canis - Puppy Gevogelte met pompoen, boekweit & bloempollen (6 x 400 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_puppy_hondenvoer/145939
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Terra Canis', 'Puppy Gevogelte met pompoen, boekweit & bloempollen', 'wet', '6 x 400 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_puppy_hondenvoer/145939', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kippenhart (40%), kippenmaagjes (20%), pompoen (14%), tomaten, appel, gierst, meel pompoenzaad (1%), lijnolie, raapolie, organische eierschaal poeder (0,6%), bieslook, gist, kamille ( 0,2%), rozenbottel poeder, minerale klei, zeewier (0,1%), pollen (0,04%)', true, now(), 'sha256:d99fe4e64a17ee7b7c1632dfa5c2b70c5e608ef825b9f6bceac9866397ae10e8', null from p;

-- Terra Canis - Puppy Lam met courgette, venkel & magere yoghurt (6 x 400 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_puppy_hondenvoer/145939
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Terra Canis', 'Puppy Lam met courgette, venkel & magere yoghurt', 'wet', '6 x 400 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_puppy_hondenvoer/145939', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam hart (23%), spiervlees lammeren (15%), long van lam (14%), courgette (18%), wortel, bruine rijst, magere yoghurt (4%), venkel (2%), bloem pompoenzaad (1%), lijnolie, raapolie, organische eierschaal poeder (0,6%), basilicum, gist, rozenbottelpoeder minerale klei, zeewier (0,1%), pollen', true, now(), 'sha256:08ea97954f0d3057e46eeaa7c86b7a1a736a1ce84194346e1bc6160538cca4da', null from p;

-- Terra Canis - Puppy Pangasius met wortelen, venkel & bessen (6 x 400 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_puppy_hondenvoer/145939
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Terra Canis', 'Puppy Pangasius met wortelen, venkel & bessen', 'wet', '6 x 400 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_puppy_hondenvoer/145939', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Pangasius filet, wortelen, aardappelen, selderij, bleekselderij, koolzaadolie, vlierbessen, dille, venkel, waterkers, kamille, rozenbottel, bloesempollen, eierschalen, zeewier, drinkwater, verhouding vis: aardappelen: overige grondstoffen (zonder drinkwater) = 56%: 10%: 34%', true, now(), 'sha256:5cfa599c0c2bb090f28b1b647764250530ac169df469a22a8fdf0a0f540cec03', null from p;

-- Terra Canis - Senior Graanvrij Rundvlees met selderij, abrikoos en kruiden (6 x 800 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/1579270
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Terra Canis', 'Senior Graanvrij Rundvlees met selderij, abrikoos en kruiden', 'wet', '6 x 800 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/1579270', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rundvlees (48%, bestaande uit runderhart 36%, runderlong 12%), bouillon (18%), aardappel (7%), wortel (6%), courgette (6%), selderij (6%), abrikoos (3%), naturel yoghurt (1%), mineralen (1%)*, kokosmeel*, koolzaadolie, biergist*, heermoes (0,2%)*, rozenbottelschil (0,2%)*, basilicum (0,2%)*, meidoornbes (0,2%)*, glucosamine (0,2%)*, brandnetel (0,1%)*, kamille (0,1%)*, minerale klei (0,1%)*, oesterschelp*, spirulina*', true, now(), 'sha256:e2da1712dfbc1ed4a8c23b945b7d23ea34e40728eba078a38eacbdbfe0904104', null from p;

-- Terra Canis - Senior Graanvrij Kip met komkommer, pompoen en kruiden (6 x 800 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/1579270
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Terra Canis', 'Senior Graanvrij Kip met komkommer, pompoen en kruiden', 'wet', '6 x 800 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/1579270', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip (48%, bestaande uit kippenhart 24%, kippenmaag 18%, kippenlever 3%, kippenspiervlees 3%), bouillon (16%), aardappel (8%), courgette (6%), pompoen (6%), tomaat (6%), komkommer (3%), naturel yoghurt (2%), mineralen (1%), kokosmeel, koolzaadolie, biergist, heermoes (0,2%)*, meidoornbes (0,2%)*, glucosamine (0,2%)*, brandnetel (0,1%), rozenbottelschil (0,1%), venkelzaad (0,1%), kamille (0,1%), basilicum, minerale klei, oesterschelp, spirulina', true, now(), 'sha256:26b6cd7458e794ce63edda79ef8c86411506a3a35053d4acbdb0856b61f486b6', null from p;

-- Terra Canis - Senior Graanvrij Hertenvlees met tomaat, appel en kruiden (6 x 800 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/1579270
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Terra Canis', 'Senior Graanvrij Hertenvlees met tomaat, appel en kruiden', 'wet', '6 x 800 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/1579270', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Hertenvleesspier (44%), bouillon (21%), aardappel (6%), wortel (6%), tomaat (6%), selderij (6%), appel (3%), naturel yoghurt (2%), mineralen (1%)*, kokosmeel*, koolzaadolie, biergist*, heermoes (0,2%)*, paardenbloem (0,2%)*, meidoornbes (0,2%)*, glucosamine (0,2%)*, brandnetel (0,1%)*, rozenbottelschil (0,1%)*, venkelzaad (0,1%)*, minerale klei*, oesterschelp*. * = gedroogd', true, now(), 'sha256:561a3990bd6bd09558ea245c5a57cd7204fb652cdd4d94698c5d49e4c3da2cab', null from p;

-- Terra Canis - Hypoallergeen Kangoeroe met pastinaak (6 x 800 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/hypoallergeen/926713
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Terra Canis', 'Hypoallergeen Kangoeroe met pastinaak', 'wet', '6 x 800 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/hypoallergeen/926713', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kangoeroevlees (46%), bouillon (45%), pastinaak (5%)*, koolzaadolie (2%), mineralen (1%)*, spirulina*', true, now(), 'sha256:2eb1d2f735e754f0634ff34f25fe8744b13e2eb24c65a306b3c8a9238175655d', null from p;

-- Terra Canis - Hypoallergeen Paardenvlees met aardpeer (6 x 800 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/hypoallergeen/926713
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Terra Canis', 'Hypoallergeen Paardenvlees met aardpeer', 'wet', '6 x 800 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/hypoallergeen/926713', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Paardenvlees (46%), aardpeer (31%), bouillon (19%), koolzaadolie (2%), mineralen (1%)*, spirulina*', true, now(), 'sha256:d2d55a1b4b9e5df2a6ad727b77f329058deca9db9292c25c2fc39b61feb04fb6', null from p;

-- Terra Canis - Hypoallergeen Struisvogel met pastinaak (6 x 800 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/hypoallergeen/926713
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Terra Canis', 'Hypoallergeen Struisvogel met pastinaak', 'wet', '6 x 800 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/hypoallergeen/926713', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Struisvogelvlees (46%), bouillon (45%), pastinaak (5%)*, koolzaadolie (2%), mineralen (1%)*, spirulina*. * = gedroogd', true, now(), 'sha256:1d76ecf6e84f3e6ff5120a724677db3d654f4b176e6291a92f1269ff52a8b61e', null from p;

-- Terra Canis - Derma Dieet Kip & Zalm (6 x 400 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_sensitive_hondenvoer/2564625
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Terra Canis', 'Derma Dieet Kip & Zalm', 'wet', '6 x 400 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_sensitive_hondenvoer/2564625', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip en zalm (52%, kippenmaag 27%, kippenhart 17%, zalmfilet 8%), bouillon (20%), pompoen (5%), komkommer (4%), aardappel (8%), courgette (3%), zoete aardappel (3%), mineralen (1%), framboos, koolzaadolie, visolie (0,7%), goudsbloem, kamille, basilicum, tijm, brandnetel, kokosmeel, kokosvlok, spirulina*. *gedroogd', true, now(), 'sha256:6eac179ba80b667c417aa7aef84e995418436ecdb3e0a31f6db4e6eff865176b', null from p;

-- Terra Canis - Derma Dieet Lam (6 x 400 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_sensitive_hondenvoer/2564625
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Terra Canis', 'Derma Dieet Lam', 'wet', '6 x 400 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_sensitive_hondenvoer/2564625', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lamhart (50%), bouillon (20%), aardappel (8%), pompoen (5%), komkommer (4%), courgette (3%), zoete aardappel (3%), visolie (1%), kokosmeel (1%), mineralen (1%), framboos, koolzaadolie, kokosrasp, kamille, goudsbloem, tijm, brandnetel, basilicum, spirulina. *gedroogd', true, now(), 'sha256:036a7fcce263e61ed3ecd298930d141a42e77561e700636900074b6e290895c8', null from p;

-- Terra Canis - Alimentum Veterinarium Low Protein Kip (6 x 400 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/1926075
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Terra Canis', 'Alimentum Veterinarium Low Protein Kip', 'wet', '6 x 400 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/1926075', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Spiervlees van kip (24%), kippenmaag (15%), aardappel, wortel (8%), courgette, pompoen (8%), kippenhuid (5%), meloen, appel, lijnzaadolie, kokosmeel, paardenbloem*, berkenbladeren*, peterselie*, chiazaden, goudsbloem*, brandnetel*, oesterschelp*, zeewier*, mineralen', true, now(), 'sha256:ac8aa155e869506361e382fb86bb5229c74ec60ec316d21bad21cc69ac36f082', null from p;

-- Terra Canis - Alimentum Veterinarium Low Protein Kalf (6 x 400 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/1926075
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Terra Canis', 'Alimentum Veterinarium Low Protein Kalf', 'wet', '6 x 400 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/1926075', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalfshart (25%), kalfslong (12%), kalfsvet (7%), aardappel, wortel (8%), courgette, pompoen (8%), meloen, appel, lijnzaadolie, kokosmeel, paardenbloem*, berkenbladeren*, peterselie*, chiazaden, goudsbloem*, brandnetel*, oesterschaal*, zeewier*, mineralen', true, now(), 'sha256:488e3cc3a6ed97c188830c02cc2ddf3572289c31242b9a05335654b527759203', null from p;

-- Terra Canis - Alimentum Veterinarium Low Protein Wild (6 x 400 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/1926075
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Terra Canis', 'Alimentum Veterinarium Low Protein Wild', 'wet', '6 x 400 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/1926075', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Spiervlees van wild (39%), aardappel, wortel (8%), courgette, pompoen (8%), wildvet (5%), meloen, appel, lijnzaadolie, kokosmeel, paardenbloem*, berkenbladeren*, peterselie*, chiazaden, goudsbloem*, brandnetel*, oesterschaal*, zeewier*, mineralen. *gedroogd', true, now(), 'sha256:b9cf866ef7e2fe446f031cffa226d949de869d84b80bfa5b68f0912f825cea1f', null from p;

-- Terra Canis - Canireo Adult kip (2,5 kg)
-- bron: https://www.maxizoo.be/nl/p/terra-canis-canireo-adult-kip-25-kg-1216485/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Terra Canis', 'Canireo Adult kip', 'kibble', '2,5 kg', null, 'https://www.maxizoo.be/nl/p/terra-canis-canireo-adult-kip-25-kg-1216485/', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers kippenspiervlees (64%), aardappelvlokken* (15%), kokosmeel (5%), abrikozen* (2%), wortelen* (1,5%), courgette* (1,4%), selderij* (1,2%), verse lever van gevogelte (1%), biergist (1%), lijnzaad (1%), appel* (0,9%), pompoen* (0,8%), pastinaak* (0,8%), eierschaalpoeder (0,7%), rode biet* (0,5%), minerale aarde (0,5%), peterseliewortel* (0,4%), fenegriek (0,4%), koolzaadmeel (0,4%), paardenbloem* (0,3%), rozenbottel* (0,3%), kamille* (0,2%), aroniabessen* (0,2%), spinazie (0,2%), zeewier* (0,1%), rozemarijn* (0,1%), tijm* (0,1%) *gedroogd', true, now(), 'sha256:8980a46c85a3b13d0bceb5e5c0b41fb4e15e29b46eb7e5e5b9001bd137e11c83', null from p;

-- Terra Canis - Canireo Wild (1 / 2,5 / 5 kg)
-- bron: https://www.futterfreund.de/terra-canis-trockenfutter-canireo-wild
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Terra Canis', 'Canireo Wild', 'kibble', '1 / 2,5 / 5 kg', null, 'https://www.futterfreund.de/terra-canis-trockenfutter-canireo-wild', date '2026-10-20', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers spiervlees van ree en hert 64%, aardappelvlokken 12%, kokosmeel 4,8%, zoete lupine, biergist*, appel* 1,5%, wortel* 1,4%, courgette* 1,4%, selderij* 1,1%, verse lever van ree en hert 1%, eierschaalpoeder 1%, pompoen* 0,8%, pastinaak* 0,8%, lijnzaad, abrikoos* 0,5%, fenegriek 0,4%, peterseliewortel* 0,4%, koolzaadmeel, minerale aarde, spinazie* 0,2%, zeewier, paardenbloem* 0,1%, rozenbottel* 0,1%, kamille* 0,1%, rozemarijn, tijm, mineralen *gedroogd', true, now(), 'sha256:7dfaeac6a824e3514122aa17935ffb8efc0f2d573862a9a2dff676e6bb9df1e6', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
