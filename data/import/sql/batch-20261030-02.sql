-- Automatisch overgenomen etiketten, batch 2 van 2026-10-30 (16 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Monge — Monge Natural Superpremium Hypoallergeen Adult Zalm en Tonijn (15 kg)
-- bron: https://www.mongebenelux.com/nl/hondenbrokken-hypoallergeen-adult-zalm-en-tonijn-1.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Monge', 'Monge Natural Superpremium Hypoallergeen Adult Zalm en Tonijn', 'kibble', '15 kg', null, 'https://www.mongebenelux.com/nl/hondenbrokken-hypoallergeen-adult-zalm-en-tonijn-1.html', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rijst (58%), zalm (gedroogd 10% en vers 8%), tonijn (gedroogd 10%), biergist, plantaardige olie (maïsolie geraffineerd), visolie (zalmolie gezuiverd op 99,5%), gedroogde bietenpulp, mineralen, Xylo-oligosaccharide (XOS 0,3%), Yucca schidigera, gistproducten (bron van mannano-oligo-sacchariden-MOS), Chondroïtinesulfaat, Glucosamine. Geselecteerde koolhydraatbron: rijst.', true, now(), 'sha256:49e786aa437d48db5a0c393f972a8b1384ba9068e0abbffdeeb4abc79951ec6b', null from p;

-- Monge — Monge Natural Superpremium Monoproteïne Light Zalm (15 kg)
-- bron: https://www.mongebenelux.com/nl/hondenbrokken-monoproteine-adult-zalm-me-145561944.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Monge', 'Monge Natural Superpremium Monoproteïne Light Zalm', 'kibble', '15 kg', null, 'https://www.mongebenelux.com/nl/hondenbrokken-monoproteine-adult-zalm-me-145561944.html', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vis (gedroogde zalm 26%, verse zalm 10%), rijst (15%), maïs, gedroogde bietenpulp, biergist, gehydrolyseerde viseiwitten, visolie (zalmolie), maïsgluten, mineralen, gistproducten (mannano-oligosachariden MOS 1%), xylo-oligosachariden (XOS 0,3%), yucca schidigera (0,3%), algenmeel (spirulina - Arthrospira platensis 0,3%), producten van de verwerking van planten (wortel van Echinacea purpurea 0,2%, Origanum Vulgare 0,1%), gedroogde knoflook (0,2%), glucosamine, chondroïtinesulfaat.', true, now(), 'sha256:66cd471d96e2f351b15b739324fda6a62b58c701eca5d329f72864a76cc3b356', null from p;

-- Monge — Monge Natural Superpremium Monoproteïne Puppy & Junior Lamsvlees met Rijst (15 kg)
-- bron: https://www.mongebenelux.com/nl/hondenbrokken-monoproteine-puppy-junior-145562133.html
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Monge', 'Monge Natural Superpremium Monoproteïne Puppy & Junior Lamsvlees met Rijst', 'kibble', '15 kg', null, 'https://www.mongebenelux.com/nl/hondenbrokken-monoproteine-puppy-junior-145562133.html', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam (gedroogd 30%, vers vlees 10%), rijst (15%), maïs, dierlijk vet (99,5% gezuiverde kippenolie), aardappeleiwit, gedroogde bietenpulp, biergist, gehydrolyseerde dierlijke eiwitten (lever), haver, gedroogde eieren, mineralen, gistproducten (mannano-oligosacchariden MOS 1%), xylo-oligosacchariden (XOS 0,3%), yucca schidigera (0,3%), algenmeel (spirulina - Arthrospira platensis 0,3%), producten van de verwerking van planten (wortel van Echinacea purpurea 0,2%, Origanum Vulgare 0,1%), gedroogde knoflook (0,2%), glucosamine (0,057%), chondroïtinesulfaat (0,04%).', true, now(), 'sha256:d3559ba483d356e303c6b72a628044fc7703044aa5bef12370cf67dae6eec01f', null from p;

-- Purina One — Purina ONE Medium/Maxi Adult Rund & Rijst (7 kg; 12 kg; dubbelpak 2 x 7 kg)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_droog/purina_one_dog/mediummaxi/1337160
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina One', 'Purina ONE Medium/Maxi Adult Rund & Rijst', 'kibble', '7 kg; 12 kg; dubbelpak 2 x 7 kg', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/purina_one_dog/mediummaxi/1337160', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rundvleesbijproducten (17%), maïs (16,5%), gedroogd gevogelte-eiwit, tarwe (16,0%), dierlijke vetten, maïsgrutten, rijst (4,6%), gedroogde suikerbietenpulp (4,5%), tarwegluten, eiwithydrolysaat, mineralen, glycerol, maïseiwitmeel, geroosterd moutmeel, visolie.', true, now(), 'sha256:2b0e468c230c737ae8946c9232021576242ff39fdcdeaa13ffc086495a2e3da3', 'Nederlands etiket overgenomen van zooplus.nl; Purina heeft geen Nederlandse Purina ONE-hondenproductpagina; de Belgische pagina wijkt qua receptuur af.' from p;

-- Purina One — Purina ONE Medium/Maxi Adult Kip (12 kg; dubbelpak 2 x 12 kg)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_droog/purina_one_dog/mediummaxi/1875000
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina One', 'Purina ONE Medium/Maxi Adult Kip', 'kibble', '12 kg; dubbelpak 2 x 12 kg', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/purina_one_dog/mediummaxi/1875000', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip (17%, inclusief botten, vlees, huid), maïs (16%), gedroogd gevogelte-eiwit, tarwe (15%), dierlijke vetten, tarwegluten, rijst (4,6%), gedroogde bietenpulp (4,5%), maïseiwitmeel, eiwithydrolysaat, glycerine, maïsgries, mineralen, geroosterd moutmeel, visolie.', true, now(), 'sha256:6ba28b289ba2bd473efe36f7e771f05c0e23aba409bf65477e212c194d4a9c14', 'Nederlands etiket overgenomen van zooplus.nl; Purina heeft geen Nederlandse Purina ONE-hondenproductpagina; de Belgische pagina wijkt qua receptuur af.' from p;

-- Purina One — Purina ONE Medium/Maxi Weight Control Sterilised Kalkoen (2,5 kg; dubbelpak 2 x 2,5 kg)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_droog/purina_one_dog/mediummaxi/1868165
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina One', 'Purina ONE Medium/Maxi Weight Control Sterilised Kalkoen', 'kibble', '2,5 kg; dubbelpak 2 x 2,5 kg', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/purina_one_dog/mediummaxi/1868165', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kalkoen (18%, inclusief botten, vlees, huid), tarwe (17,5%), gedroogd gevogelte-eiwit, maïs (15%), rijst (12%), gedroogde suikerbietenpulp (6%), tarwegluten, eiwithydrolysaat, maïseiwitmeel, dierlijke vetten, mineralen, geroosterd moutmeel.', true, now(), 'sha256:fd23883208a6341437f0e3bd4fe32f47bdf507e684841159f599e7fe447730e7', 'Nederlands etiket overgenomen van zooplus.nl; Purina heeft geen Nederlandse Purina ONE-hondenproductpagina; de Belgische pagina wijkt qua receptuur af.' from p;

-- Purina One — Purina ONE Medium/Maxi Sensitive Zalm (2,5 kg; dubbelpak 2 x 2,5 kg)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_droog/purina_one_dog/mediummaxi/1874999
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina One', 'Purina ONE Medium/Maxi Sensitive Zalm', 'kibble', '2,5 kg; dubbelpak 2 x 2,5 kg', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/purina_one_dog/mediummaxi/1874999', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Zalm (17%, inclusief kop, botten, vlees), gedroogd gevogelte-eiwit, maïs (16%), rijst (14%), maïsgrutten, dierlijke vetten, gedroogde suikerbietenpulp (5,5%), maïseiwitmeel, sojameel, eiwithydrolysaat, mineralen, gedroogde cichoreiwortel (0,5%, bron van natuurlijk prebioticum), sojaolie.', true, now(), 'sha256:33e9681bc694ecde4bdc4404406ce01c7ff5c9446360c8e443d50f7d36635789', 'Nederlands etiket overgenomen van zooplus.nl; Purina heeft geen Nederlandse Purina ONE-hondenproductpagina; de Belgische pagina wijkt qua receptuur af.' from p;

-- Purina One — Purina ONE Mini Adult Rund & Rijst (800 g; voordeelpakket 3 x 800 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_droog/purina_one_dog/mini/1337161
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina One', 'Purina ONE Mini Adult Rund & Rijst', 'kibble', '800 g; voordeelpakket 3 x 800 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/purina_one_dog/mini/1337161', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogd gevogelte-eiwit, tarwe (22%), runderafval (14%), maïs, rundervet, rijst (4%), sojameel, eiwithydrolysaat, glycerine, mineralen, vet van gevogelte, maïseiwitmeel, maïsgrutten, visolie.', true, now(), 'sha256:281bb44fb8a5db6b6a0eda288d71192d9b6c3082b13220629d3ddad922cbf031', 'Nederlands etiket overgenomen van zooplus.nl; Purina heeft geen Nederlandse Purina ONE-hondenproductpagina; de Belgische pagina wijkt qua receptuur af.' from p;

-- Purina One — Purina ONE Mini Delicate Zalm & Rijst (800 g; voordeelpakket 3 x 800 g; 5 x 800 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_droog/purina_one_dog/mini/1874995
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina One', 'Purina ONE Mini Delicate Zalm & Rijst', 'kibble', '800 g; voordeelpakket 3 x 800 g; 5 x 800 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/purina_one_dog/mini/1874995', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogd gevogelte-eiwit, tarwe (23,0%), maïs (13,0%), dierlijke vetten, zalm (8%, inclusief kop, botten, vlees), rijst (4,0%), gedroogde bietenpulp (3,0%), digest, sojameel, glycerine, mineralen, gedroogde cichoreiwortel (0,5% natuurlijk prebioticum), visolie.', true, now(), 'sha256:9ac0d3aa8a933d97b2a805c87584c21b38d76113b3c97a095e8f401cf83ef64c', 'Nederlands etiket overgenomen van zooplus.nl; Purina heeft geen Nederlandse Purina ONE-hondenproductpagina; de Belgische pagina wijkt qua receptuur af.' from p;

-- Purina One — Purina ONE Mini Weight Control / Sterilised Kalkoen & Rijst (9 kg (6 x 1,5 kg); 18 kg (12 x 1,5 kg))
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_droog/purina_one_dog/mini/1337170
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina One', 'Purina ONE Mini Weight Control / Sterilised Kalkoen & Rijst', 'kibble', '9 kg (6 x 1,5 kg); 18 kg (12 x 1,5 kg)', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/purina_one_dog/mini/1337170', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedroogd gevogelte-eiwit, tarwe (18%), kalkoen (14%), maïs (13,0%), gedroogde bietenpulp (6,5%), rijst (5,3%), tarwebloem, eiwithydrolysaat van dierlijke oorsprong, sojabloem, dierlijk vet, glycerol, mineralen, maïsgrutten, conserveermiddelen, vitaminen, aminozuren, antioxidanten.', true, now(), 'sha256:c3a6a4bb35a58ac7a645fe0ee93923740ce9fbc509a47c04dd9455d8631f73c4', 'Nederlands etiket overgenomen van zooplus.nl; Purina heeft geen Nederlandse Purina ONE-hondenproductpagina; de Belgische pagina wijkt qua receptuur af.' from p;

-- Purina One — Purina ONE Mini Sensitive-Delicate Zalm (natvoer) (10 x 85 g; 20 x 85 g)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_nat/purina_one/2007011
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Purina One', 'Purina ONE Mini Sensitive-Delicate Zalm (natvoer)', 'wet', '10 x 85 g; 20 x 85 g', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_nat/purina_one/2007011', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vlees en dierlijke bijproducten, plantaardige eiwitextracten, vis en bijproducten uit vis (waarvan 4% zalm), plantaardige bijproducten (waarvan 0,3% cichorei-inuline), granen (0,8% rijst, overeenkomstig met 4,8% gekookte rijst), groenten (0,8% gedehydrateerde wortelen, overeenkomstig met 7,2% wortelen), mineralen, verschillende suikers.', true, now(), 'sha256:1ef2765acfa9f83400ecbd153fe2c8ca4746f3b7fc202ebd75fd77e2d92266b1', 'Nederlands etiket overgenomen van zooplus.nl; Purina heeft geen Nederlandse Purina ONE-hondenproductpagina; de Belgische pagina wijkt qua receptuur af.' from p;

-- Taste of the Wild — Taste of the Wild High Prairie Canine (2 kg / 5,6 kg / 12,2 kg)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_droog/taste_of_the_wild/droogvoer/175524
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Taste of the Wild', 'Taste of the Wild High Prairie Canine', 'kibble', '2 kg / 5,6 kg / 12,2 kg', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/taste_of_the_wild/droogvoer/175524', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Bizon (12%), lamsmeel, kippenmeel, zoete aardappelen, erwten, aardappelen, kippenvet (geconserveerd met gemengde tocoferolen), eiproducten, rundvlees, gebraden hert (4%), tomatenpulp, aardappeleiwit, erwteneiwit, zeevismeel, mineralen, gedroogde cichoreiwortel, tomaten, bosbessen, frambozen, extract van Yucca schidigera.', true, now(), 'sha256:5b7e188f174f7bcc61e742d9ff3794f4e50220fb21ca1bf54319bf27d4992274', 'Nederlands etiket overgenomen van zooplus.nl; de Amerikaanse fabrikantpagina toont een afwijkende formule.' from p;

-- Taste of the Wild — Taste of the Wild Pacific Stream Canine (2 kg / 5,6 kg / 12,2 kg)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_droog/taste_of_the_wild/droogvoer/175525
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Taste of the Wild', 'Taste of the Wild Pacific Stream Canine', 'kibble', '2 kg / 5,6 kg / 12,2 kg', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/taste_of_the_wild/droogvoer/175525', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Zalm (21%), zeevismeel, zoete aardappelen, aardappelen, erwten, raapzaadolie, linzen, zalmmeel, gerookte zalm (4%), aardappelvezel, mineralen, gedroogde cichoreiwortel, tomaten, bosbessen, frambozen, extract van Yucca schidigera.', true, now(), 'sha256:903fd590289c48ee96d51c4e2da30ae767fa47ae3fb66416cc4ccddb7893b0c8', 'Nederlands etiket overgenomen van zooplus.nl; de Amerikaanse fabrikantpagina toont een afwijkende formule.' from p;

-- Taste of the Wild — Taste of the Wild Southwest Canyon Canine (2 kg / 12,2 kg)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_droog/taste_of_the_wild/droogvoer/409374
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Taste of the Wild', 'Taste of the Wild Southwest Canyon Canine', 'kibble', '2 kg / 12,2 kg', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/taste_of_the_wild/droogvoer/409374', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rundvlees (18%), erwten, kikkererwten, lamsmeel, raapzaadolie, eiproducten, wild zwijn (4%), zeevismeel, erwtenmeel, biergist, tomatenpulp, lijnzaad, zalmolie (een bron van DHA), mineralen, gedroogde cichoreiwortel, tomaten, bosbessen, frambozen, extract van Yucca schidigera.', true, now(), 'sha256:94bf3c83a7cb3898c4317af306ab45972906ad91ade7ce73975ebba675524e66', 'Nederlands etiket overgenomen van zooplus.nl; de Amerikaanse fabrikantpagina toont een afwijkende formule.' from p;

-- Taste of the Wild — Taste of the Wild Pine Forest Canine (2 kg / 12,2 kg)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_droog/taste_of_the_wild/droogvoer/550354
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Taste of the Wild', 'Taste of the Wild Pine Forest Canine', 'kibble', '2 kg / 12,2 kg', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/taste_of_the_wild/droogvoer/550354', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Hert (10%), lamsmeel, kikkererwten (10%), erwten (10%), linzen (10%), erwtenmeel, gedroogde gist, eiproducten, raapzaadolie, tomatenpulp, zeevismeel, zalmolie (een bron van DHA), mineralen, gedroogde cichoreiwortel, extract van Yucca schidigera, tomaten, bosbessen, frambozen', true, now(), 'sha256:ebb40cbcf449cebd9582b2f84b8d21f2e23902c5c06f231434dc6c02d4a27759', 'Nederlands etiket overgenomen van zooplus.nl; de Amerikaanse fabrikantpagina toont een afwijkende formule.' from p;

-- Taste of the Wild — Taste of the Wild High Prairie Puppy (2 kg / 5,6 kg / 12,2 kg)
-- bron: https://www.zooplus.nl/shop/honden/hondenvoer_droog/taste_of_the_wild/droogvoer/409376
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Taste of the Wild', 'Taste of the Wild High Prairie Puppy', 'kibble', '2 kg / 5,6 kg / 12,2 kg', null, 'https://www.zooplus.nl/shop/honden/hondenvoer_droog/taste_of_the_wild/droogvoer/409376', date '2026-10-30', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Bizon (10,5%), lamsmeel, zoete aardappelen, eiproducten, erwteneiwit, erwten, aardappelen, kippenvet (geconserveerd met gemengde tocoferolen), tomatenpulp, gebraden hert (4%), rundvlees, lijnzaad, aardappelvezel, zeevismeel, zalmolie (een bron van DHA), mineralen, gedroogde cichoreiwortel, extract van Yucca schidigera, tomaten, bosbessen, frambozen.', true, now(), 'sha256:824a7bfea503c7fa7900877d21e896e74ba730f650bf27be9850439365a3e446', 'Nederlands etiket overgenomen van zooplus.nl; de Amerikaanse fabrikantpagina toont een afwijkende formule.' from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
