-- Automatisch overgenomen etiketten, batch 7 van 2026-10-26 (50 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site noemt de
-- automatische herkomst in de disclaimer; er wordt hier geen enkele controle
-- door een mens geclaimd. Alleen een handmatige review krijgt een badge.
begin;

-- Royal Canin — Adult Large Dogs (4 / 13 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/adult-large-dog-3708
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Adult Large Dogs', 'kibble', '4 / 13 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/adult-large-dog-3708', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïs, gedehydreerd gevogelte-eiwit, tarwemeel, dierlijke vetten, tarwegluten*, rijst, gehydrolyseerde dierlijke eiwitten, gedehydreerd varkenseiwit, bietenpulp, mineralen, sojaolie, visolie, plantaardige vezels, fructo-oligosacchariden (0,49%), glucosamine uit gisting (0,099%), tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine) (0,00096%).', true, now(), 'sha256:e87bebb5a842bd3e28ac9ae80b64e5d3662e9c5100ef8ac7f028e9c3c6a29b28', null from p;

-- Royal Canin — Adult Medium Dogs (4 / 10 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/adult-3705
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Adult Medium Dogs', 'kibble', '4 / 10 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/adult-3705', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïs, gedehydreerd gevogelte-eiwit, rijst, tarwemeel, dierlijke vetten, gehydrolyseerde dierlijke eiwitten, bietenpulp, gedehydreerd varkenseiwit, tarwegluten*, sojaolie, visolie, mineralen, fructo-oligosacchariden (0,49%), bernagieolie, tagetes meel.', true, now(), 'sha256:af51b4cb6bdfa41bb26315304627fe8e1edaab64e7a28efdc6134954a41a1cdd', null from p;

-- Royal Canin — Adult Small Dogs (2 / 4 / 8 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/adult-small-dog-3702
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Adult Small Dogs', 'kibble', '2 / 4 / 8 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/adult-small-dog-3702', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, gedehydreerd gevogelte-eiwit, maïs, tarwemeel, dierlijke vetten, tarwegluten*, cichoreipulp, gedehydreerd varkenseiwit, gehydrolyseerde dierlijke eiwitten, mineralen, sojaolie, visolie, fructo-oligosacchariden (0,49%), tagetes meel.', true, now(), 'sha256:7d9e65c4ee18243a5857c15d4380bc6f099a65a45dfd97d0c1f4a9349b730761', null from p;

-- Royal Canin — Anallergenic Small Dogs (1,5 / 3 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/anallergenic-small-dog-3317
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Anallergenic Small Dogs', 'kibble', '1,5 / 3 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/anallergenic-small-dog-3317', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïszetmeel, hydrolysaat van veren met een laag molecuulgewicht (bron van L-aminozuren en oligopeptiden), kokosolie, mineralen, sojaolie, plantaardige vezels, fructo-oligosachariden, cichoreipulp, mono- en diglyceriden van palmitinezuur en stearinezuur veresterd met citroenzuur, visolie, dierlijk vet, tagetes meel. Eiwitbron: hydrolysaat van veren met een laag molecuulgewicht (21%). Koolhydraatbron: maïszetmeel (44%).', true, now(), 'sha256:967d44ec7ed748dfec1706457ac2f181279a74fec25bac3e457ad4e872274699', null from p;

-- Royal Canin — Beagle Adult (3 / 12 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/beagle-adult-2106
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Beagle Adult', 'kibble', '3 / 12 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/beagle-adult-2106', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, maïs, rijst, tarwe, gehydrolyseerde dierlijke eiwitten, dierlijke vetten, maïsgluten, plantaardige vezels, tarwegluten*, bietenpulp, mineralen, visolie, gistproducten, psylliumschil en psylliumzaden, sojaolie, fructo-oligosachariden, gist (bron van manno-oligosachariden), bernagieolie, glucosamine uit gisting, tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:f7a1ac5e7f5bd3ab11021807113bc9cb258eb061c076963de2d4c68e86280065', null from p;

-- Royal Canin — Bichon Frise Adult (1,5 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/bichon-frise-adult-4134
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Bichon Frise Adult', 'kibble', '1,5 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/bichon-frise-adult-4134', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, rijst, maïs, tarwe, tarwegluten*, dierlijke vetten, maïsgluten, gehydrolyseerde dierlijke eiwitten, mineralen (waarvan natriumtripolyfosfaat (0,35%)), sojaolie, cichoreipulp, visolie, gistproducten, fructo-oligosachariden, psylliumschil en psylliumzaden, bernagieolie (0,1%), glucosamine uit gisting, tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:888e270ba2d23de7870e7941ffa5f054dabdc54e3925f171c44055168e192303', null from p;

-- Royal Canin — Boxer Adult (3 / 12 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/boxer-adult-2588
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Boxer Adult', 'kibble', '3 / 12 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/boxer-adult-2588', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, dierlijke vetten, gedehydreerde gevogelte-eiwitten, maïs, tarwegluten*, gedehydreerde varkenseiwitten, gehydrolyseerde dierlijke eiwitten, plantaardige vezels, mineralen, bietenpulp, sojaolie, visolie, kopraolie, gedroogde tomatenpulp (bron van lycopeen), gist (bron van manno-oligosachariden), glucosamine uit gisting, tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:b562117a312478f0b745c203432f1e92488725db7c351f9291027d16fdf13fd7', null from p;

-- Royal Canin — Boxer Puppy (3 / 12 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/boxer-apuppy-3966
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Boxer Puppy', 'kibble', '3 / 12 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/boxer-apuppy-3966', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, maïs, rijst, dierlijke vetten, tarwegluten*, maïsmeel, gehydrolyseerde dierlijke eiwitten, tarwemeel, gedehydreerde varkenseiwitten, bietenpulp, mineralen, visolie, kopraolie, plantaardige vezels, sojaolie, fructo-oligosachariden (0,5%), psylliumschil en psylliumzaden, gist (bron van manno-oligosachariden en bèta-glucanen), glucosamine uit gisting, tagetes meel, sap van Yucca schidigera, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:9c28929882ae9dce76171d5498f6e8f19bdf30741af388157d7ba82193a8903e', null from p;

-- Royal Canin — Bulldog Adult (3 / 12 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/bulldog-adult-2590
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Bulldog Adult', 'kibble', '3 / 12 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/bulldog-adult-2590', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, gedehydreerde gevogelte-eiwitten, dierlijke vetten, tarwegluten*, gehydrolyseerde dierlijke eiwitten, gedehydreerde varkenseiwitten, bietenpulp, plantaardige vezels, mineralen, sojaolie, visolie, gist (bron van manno-oligosachariden), glucosamine uit gisting, tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:fa60ef6ffe7e07e54b89f3a6f4842ff414a8d69151687a8bd41ac115af1d92a1', null from p;

-- Royal Canin — Bulldog Puppy (3 / 12 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/bulldog-puppy-3967
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Bulldog Puppy', 'kibble', '3 / 12 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/bulldog-puppy-3967', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, gedehydreerde gevogelte-eiwitten, maïsmeel, tarwegluten*, dierlijke vetten, gehydrolyseerde dierlijke eiwitten, gedehydreerde varkenseiwitten, tarwemeel, bietenpulp, plantaardige vezels, mineralen, visolie, sojaolie, fructo-oligosachariden (0,5%), gist (bron van manno-oligosachariden en bèta-glucanen), glucosamine uit gisting, tagetes meel, sap van Yucca schidigera, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:f39a45badc2eff1248a26a37914086e4919502ffcd8a82e21789f36f5af3bd2c', null from p;

-- Royal Canin — Calm (4 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/calm-3956
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Calm', 'kibble', '4 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/calm-3956', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, gedehydreerd gevogelte-eiwit, maïs, tarwemeel, dierlijke vetten, gehydrolyseerde dierlijke eiwitten, cichoreipulp, gedehydreerd varkenseiwit*, mineralen, tarwegluten*, sojaolie, visolie, fructo-oligosacchariden (0,49%), gehydrolyseerd melkeiwit**, bernagieolie, tagetes meel.', true, now(), 'sha256:972dbfb6a8fd8a1a2c0098945ada48131d197b364f0a552d61819ac06b4d461b', null from p;

-- Royal Canin — Cardiac (2 / 14 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/cardiac-3930
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Cardiac', 'kibble', '2 / 14 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/cardiac-3930', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, gedehydreerd gevogelte-eiwit, maïsmeel, dierlijke vetten, maïsgluten, eipoeder, gehydrolyseerde dierlijke eiwitten, mineralen, bietenpulp, visolie, plantaardige vezels, sojaolie, gistproducten, fructo-oligosachariden, tagetes meel.', true, now(), 'sha256:6e9e8b5b9c6cc7273d4c55f86781270d82f7b2d7068d6dd6fadefa9d02f7d04c', null from p;

-- Royal Canin — Cavalier King Charles Adult (1,5 / 3 / 7,5 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/cavalier-king-charles-adult-3968
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Cavalier King Charles Adult', 'kibble', '1,5 / 3 / 7,5 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/cavalier-king-charles-adult-3968', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, tarwegluten*, gedehydreerde gevogelte-eiwitten, maïs, dierlijke vetten, gehydrolyseerde dierlijke eiwitten, bietenpulp, plantaardige vezels, mineralen, visolie, sojaolie, gedroogde tomatenpulp (bron van lycopeen), fructo-oligosachariden, gist (bron van manno-oligosachariden), bernagieolie (0,1%), tagetes meel, glucosamine uit gisting, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:9950281371745b4d2563b77a6e7ea196948bdf6c4f818c956f19ac099145177c', null from p;

-- Royal Canin — Cavalier King Charles Puppy (1,5 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/cavalier-king-charles-puppy-4132
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Cavalier King Charles Puppy', 'kibble', '1,5 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/cavalier-king-charles-puppy-4132', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, rijst, maïs, dierlijke vetten, tarwegluten*, bietenpulp, maïsmeel, gehydrolyseerde dierlijke eiwitten, maïsgluten, mineralen (waarvan natriumtripolyfosfaat (0,35%)), visolie, sojaolie, fructo-oligosachariden (0,5%), gist (bron van manno-oligosachariden en bèta-glucanen), bernagieolie, tagetes meel, sap van Yucca schidigera.', true, now(), 'sha256:74b1b0ee2f0420dd3c9b5d4e2f494be5854f2eb26820933985fabd7609c7eaca', null from p;

-- Royal Canin — Chihuahua Adult (500 g / 1,5 / 3 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/chihuahua-adult-2210
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Chihuahua Adult', 'kibble', '500 g / 1,5 / 3 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/chihuahua-adult-2210', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, maïs, gedehydreerde gevogelte-eiwitten, tarwegluten*, dierlijke vetten, gehydrolyseerde dierlijke eiwitten, bietenpulp, mineralen (waarvan natriumtripolyfosfaat (0,35%)), plantaardige vezels, visolie, sojaolie, fructo-oligosachariden, bernagieolie, tagetes meel, glucosamine uit gisting, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:65e3aa970cbda0a905dfbf782de065156e6b903eee20d1b6e01bf37eeb8eac8e', null from p;

-- Royal Canin — Chihuahua Puppy (500 g / 1,5 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/chihuahua-puppy-2438
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Chihuahua Puppy', 'kibble', '500 g / 1,5 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/chihuahua-puppy-2438', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, rijst, dierlijke vetten, maïs, tarwegluten*, gehydrolyseerde dierlijke eiwitten, bietenpulp, sojaolie, visolie, plantaardige vezels, mineralen, fructo-oligosachariden, gist (bron van manno-oligosachariden en bèta-glucanen), tagetes meel, sap van Yucca schidigera.', true, now(), 'sha256:498b5a7d074afc7b600dcba6f59bcf9fd90ff90e85b6b2bd0df62d400b8510dd', null from p;

-- Royal Canin — Coat Care Mini (3 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/mini-coat-care-1220
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Coat Care Mini', 'kibble', '3 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/mini-coat-care-1220', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, rijst, tarwegluten*, tarwemeel, maïs, dierlijke vetten, gehydrolyseerde dierlijke eiwitten, tarwe, maïsgluten, bietenpulp, sojaolie, gistproducten, mineralen, visolie, plantaardige vezels, cellulosepoeder, fructo-oligosachariden, bernagieolie, tagetes meel.', true, now(), 'sha256:d924d0269e0153b6b9404e74d5a228422d2606904f4c7a34a064b0de9a190f1d', null from p;

-- Royal Canin — Cocker Adult (3 / 12 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/cocker-adult-3969
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Cocker Adult', 'kibble', '3 / 12 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/cocker-adult-3969', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, maïs, gedehydreerde gevogelte-eiwitten, maïsgluten, dierlijke vetten, gehydrolyseerde dierlijke eiwitten, bietenpulp, tarwegluten*, mineralen (waarvan natriumtripolyfosfaat (0,35%)), visolie, psylliumschil en psylliumzaden, sojaolie, fructo-oligosachariden, gist (bron van manno-oligosachariden), bernagieolie (0,1%), glucosamine uit gisting, tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:b5ec177bccaba3f7f5bbf152be853141e903aff1b055a895c6e6aa42e6bad1ec', null from p;

-- Royal Canin — Cocker Puppy (3 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/cocker-puppy-4133
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Cocker Puppy', 'kibble', '3 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/cocker-puppy-4133', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, maïs, dierlijke vetten, tarwegluten*, gehydrolyseerde dierlijke eiwitten, bietenpulp, tarwe, tarwemeel, rijst, maïsgluten, maïsmeel, visolie, mineralen (waarvan natriumtripolyfosfaat (0,35%)), sojaolie, gistproducten, fructo-oligosachariden (0,5%), psylliumschil en psylliumzaden, gist (bron van manno-oligosachariden en bèta-glucanen), bernagieolie (0,1%), tagetes meel, glucosamine uit gisting, sap van Yucca schidigera, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:cdc6ee26f2a86f7831a6bf65635b267ce9067420044e79e0c61deb02bf6e0309', null from p;

-- Royal Canin — Dachshund Adult (1,5 / 7,5 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/dachshund-adult-3059
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Dachshund Adult', 'kibble', '1,5 / 7,5 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/dachshund-adult-3059', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, gedehydreerde gevogelte-eiwitten, tarwegluten*, gehydrolyseerde dierlijke eiwitten, dierlijke vetten, plantaardige vezels, bietenpulp, mineralen (waarvan natriumtripolyfosfaat (0,35%)), visolie, sojaolie, fructo-oligosachariden, bernagieolie, tagetes meel, glucosamine uit gisting, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:91d57764368d1ad77f17cc5830d32ff932bce161abd8638d347f983a466d5142', null from p;

-- Royal Canin — Dachshund Puppy (1,5 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/dachshund-puppy-2437
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Dachshund Puppy', 'kibble', '1,5 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/dachshund-puppy-2437', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, rijst, maïs, tarwegluten*, dierlijke vetten, gehydrolyseerde dierlijke eiwitten, bietenpulp, sojaolie, visolie, mineralen (waarvan natriumtripolyfosfaat (0,35%)), fructo-oligosachariden (0,5%), gist (bron van manno-oligosachariden en bèta-glucanen), tagetes meel, glucosamine uit gisting, sap van Yucca schidigera, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:3a20c7e1eea1071532bda3507752a61a318211aae29d8e47100ab2e96d712da7', null from p;

-- Royal Canin — Dalmatian Adult (12 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/dalmatian-adult-2598
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Dalmatian Adult', 'kibble', '12 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/dalmatian-adult-2598', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, maïsmeel, tarwegluten*, dierlijke vetten, eipoeder, tarwemeel, maïsgluten, mineralen, plantaardige vezels, gehydrolyseerde dierlijke eiwitten, visolie, sojaolie, tagetes meel, glucosamine uit gisting, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:eef437dd8699ea08659564ba4910f03e1e5fbe7eb0453dfef9e60c8127532d0e', null from p;

-- Royal Canin — Dalmatian Puppy (12 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/dalmatian-puppy-2597
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Dalmatian Puppy', 'kibble', '12 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/dalmatian-puppy-2597', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, gedehydreerde gevogelte-eiwitten, tarwemeel, eipoeder, maïsmeel, dierlijke vetten, tarwegluten*, plantaardige vezels, mineralen, maïsgluten, gehydrolyseerde dierlijke eiwitten, visolie, fructo-oligosachariden (0,5%), sojaolie, gist (bron van bèta-glucanen), sap van Yucca schidigera, tagetes meel, glucosamine uit gisting, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:860d3432b0105bbe5e282dee523ce5457ec776134bb8ea418054e8369b2a6865', null from p;

-- Royal Canin — Dental Care Maxi (9 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/maxi-dental-care-1223
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Dental Care Maxi', 'kibble', '9 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/maxi-dental-care-1223', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïsmeel, gedehydreerde gevogelte-eiwitten, rijst, dierlijke vetten, gehydrolyseerde dierlijke eiwitten, plantaardige vezels, bietenpulp, mineralen (waarvan natriumtripolyfosfaat (0,35%)), cellulosepoeder.', true, now(), 'sha256:9051c591d0ff5d0aeaa02ed199e1f251d252921fc51b130fed299ca21931fc56', null from p;

-- Royal Canin — Dental Care Medium (3 / 10 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/medium-dental-care-1222
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Dental Care Medium', 'kibble', '3 / 10 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/medium-dental-care-1222', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïsmeel, gedehydreerde gevogelte-eiwitten, rijst, dierlijke vetten, gehydrolyseerde dierlijke eiwitten, bietenpulp, plantaardige vezels, mineralen (waarvan natriumtripolyfosfaat (0,35%)), cellulosepoeder.', true, now(), 'sha256:5935dd522712f604e8c133aa571a0a6b892389762022c2ddda9830a156b46afc', null from p;

-- Royal Canin — Dental Care Mini (1 / 3 / 8 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/mini-dental-care-1221
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Dental Care Mini', 'kibble', '1 / 3 / 8 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/mini-dental-care-1221', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïsmeel, gedehydreerde gevogelte-eiwitten, rijst, dierlijke vetten, gehydrolyseerde dierlijke eiwitten, bietenpulp, mineralen (waarvan natriumtripolyfosfaat (0,35%)), plantaardige vezels, cellulosepoeder.', true, now(), 'sha256:9ae1ad687adfe071b8ab50ebd92bc2d1672ffed55c49d1b9e9dd5f656a7188c0', null from p;

-- Royal Canin — Dental Medium & Large Dogs (6 / 13 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/dental-dog-dry-3722
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Dental Medium & Large Dogs', 'kibble', '6 / 13 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/dental-dog-dry-3722', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, gedehydreerd gevogelte-eiwit, maïs, dierlijke vetten, tarwegluten*, bietenpulp, plantaardige vezels, gehydrolyseerde dierlijke eiwitten, mineralen, visolie, gistproducten, fructo-oligosacchariden, sojaolie, zout van boterzuur, glucosamine uit gisting (0,098%), tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine) (0,0029%).', true, now(), 'sha256:bfb03f6c5d176ccff7b4895de44d26095c1e98a559e3f2e9469ff49b249f06ed', null from p;

-- Royal Canin — Dental Small Dogs (1,5 / 3,5 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/dental-small-dog-3723
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Dental Small Dogs', 'kibble', '1,5 / 3,5 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/dental-small-dog-3723', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, gedehydreerd gevogelte-eiwit, maïs, dierlijke vetten, tarwegluten*, cichoreipulp, plantaardige vezels, mineralen, gehydrolyseerde dierlijke eiwitten, visolie, gistproducten, fructo-oligosacchariden, sojaolie, zout van boterzuur, tagetes meel.', true, now(), 'sha256:1ff4cfc52adee7e0754a7f16c7f5a8faf65d68dadf784d7a2c349674f66bd3b7', null from p;

-- Royal Canin — Dermacomfort Maxi (3 / 12 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/maxi-dermacomfort-2444
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Dermacomfort Maxi', 'kibble', '3 / 12 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/maxi-dermacomfort-2444', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'tarwe, tarwegluten*, rijst, dierlijke vetten, maïsgluten, maïs, gepelde haver, mineralen, gehydrolyseerde dierlijke eiwitten, sojaolie, bietenpulp, visolie, lijnzaad, fructo-oligosachariden, bernagieolie, tagetes meel.', true, now(), 'sha256:f956f4f008469e597b4acab5e9a13335e7a1f0449f347e1c91fbd08e53af06c8', null from p;

-- Royal Canin — Dermacomfort Medium (3 / 12 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/medium-dermacomfort-2442
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Dermacomfort Medium', 'kibble', '3 / 12 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/medium-dermacomfort-2442', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, tarwegluten*, tarwe, dierlijke vetten, maïsgluten, gepelde haver, maïs, mineralen, gehydrolyseerde dierlijke eiwitten, sojaolie, bietenpulp, visolie, lijnzaad, fructo-oligosachariden, bernagieolie, tagetes meel.', true, now(), 'sha256:351c0cca12f4a869e96804ef3b27d4688b13a5378fd6796c582360133431c0bd', null from p;

-- Royal Canin — Digestive Care Maxi (3 / 12 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/maxi-digestive-care-3055
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Digestive Care Maxi', 'kibble', '3 / 12 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/maxi-digestive-care-3055', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, rijst, tarwemeel, dierlijke vetten, tarwegluten*, tarwe, gehydrolyseerde dierlijke eiwitten, gerst, maïsgluten, plantaardige vezels, bietenpulp, visolie, sojaolie, mineralen, psylliumschil en psylliumzaden, bernagieolie, tagetes meel, glucosamine uit gisting, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:6aaeef21fc31c1960d6f77f20567179ade2e54bc35593f9a1699117272fdf41b', null from p;

-- Royal Canin — Digestive Care Medium (3 / 12 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/medium-digestive-care-3016
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Digestive Care Medium', 'kibble', '3 / 12 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/medium-digestive-care-3016', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, gedehydreerde gevogelte-eiwitten, tarwemeel, dierlijke vetten, tarwe, maïsgluten, tarwegluten*, gerst, gehydrolyseerde dierlijke eiwitten, bietenpulp, sojaolie, mineralen, visolie, plantaardige vezels, fructo-oligosachariden, gist (bron van manno-oligosachariden), bernagieolie, tagetes meel.', true, now(), 'sha256:b3a9a45afbf615459ce0bb0d3e8a6a14ac037a78a72b84c1064cdafc1ea11b61', null from p;

-- Royal Canin — Digestive Care Mini (1 / 3 / 8 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/mini-digestive-care-2447
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Digestive Care Mini', 'kibble', '1 / 3 / 8 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/mini-digestive-care-2447', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, rijst, dierlijke vetten, gehydrolyseerde dierlijke eiwitten, tarwegluten*, tarwemeel, tarwe, gerst, maïsgluten, bietenpulp, gistproducten, visolie, sojaolie, plantaardige vezels, mineralen, fructo-oligosachariden, tagetes meel.', true, now(), 'sha256:00018cd7851ba128f175ebd5133682204b2fa165ee5941099432d0165c2970bc', null from p;

-- Royal Canin — Early Renal (2 / 7 / 14 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/early-renal-1248
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Early Renal', 'kibble', '2 / 7 / 14 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/early-renal-1248', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'maïs, gedehydreerd gevogelte-eiwit, tarwemeel, rijst, tarwe, dierlijke vetten, maïsgluten, gehydrolyseerde gevogelte-eiwitten, bietenpulp, tarwegluten*, visolie, mineralen, sojaolie, natriumbutyraat, fructo-oligosachariden, tagetes meel. Eiwitbronnen: gedehydreerd gevogelte-eiwit (15,4%), maïsgluten (5%), gehydrolyseerde gevogelte-eiwitten (4,4%), tarwegluten (2%).', true, now(), 'sha256:3b46d2818c980b772c8e5f5dd3f29fce4fcafa581662dbf1d232b2322e38cf7e', null from p;

-- Royal Canin — Exigent Mini (1 / 3 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/mini-exigent-1006
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Exigent Mini', 'kibble', '1 / 3 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/mini-exigent-1006', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, dierlijke vetten, rijst, tarwegluten*, voorgekookt tarwemeel, maïsmeel, gehydrolyseerde dierlijke eiwitten, plantaardige vezels, bietenpulp, mineralen, visolie, fructo-oligosachariden, bernagieolie, tagetes meel.', true, now(), 'sha256:17c0a16b9b939e45543efe2adb10a1d41d5a84fd0d140c31a0c4d5a9721e47a0', null from p;

-- Royal Canin — French Bulldog Adult (1,5 / 3 / 9 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/french-bulldog-adult-3991
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'French Bulldog Adult', 'kibble', '1,5 / 3 / 9 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/french-bulldog-adult-3991', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, tarwe, dierlijke vetten, gedehydreerde varkenseiwitten, tarwegluten*, gedehydreerde gevogelte-eiwitten, gehydrolyseerde dierlijke eiwitten, bietenpulp, mineralen, visolie, sojaolie, fructo-oligosachariden, glucosamine uit gisting, tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:0d9d7f256e36e75097cd4928022236440bba955377e79d8527e310e721b84a31', null from p;

-- Royal Canin — French Bulldog Puppy (3 / 10 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/french-bulldog-puppy-3990
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'French Bulldog Puppy', 'kibble', '3 / 10 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/french-bulldog-puppy-3990', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, gedehydreerde gevogelte-eiwitten, tarwe, tarwegluten*, dierlijke vetten, gehydrolyseerde dierlijke eiwitten, bietenpulp, gedehydreerde varkenseiwitten, mineralen, sojaolie, visolie, fructo-oligosachariden (0,5%), gist (bron van manno-oligosachariden en bèta-glucanen), glucosamine uit gisting, tagetes meel, sap van Yucca schidigera, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:0d9a40de84b4f882481aca766dfeb015b7e955cf16a02fcc7e2fda3293dafa66', null from p;

-- Royal Canin — Gastrointestinal (2 / 7,5 / 15 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/gastrointestinal-3911
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Gastrointestinal', 'kibble', '2 / 7,5 / 15 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/gastrointestinal-3911', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst*, gedehydreerde gevogelte-eiwitten*, maïs*, dierlijke vetten**, gehydrolyseerde dierlijke eiwitten*, eipoeder*, gistproducten, bietenpulp, sojaolie**, plantaardige vezels, mineralen, visolie**, psylliumschil en psylliumzaden, fructo-oligosachariden, algenolie Schizochytrium sp. (bron van DHA)**, gist (bron van manno-oligosachariden), tagetes meel. Goed verteerbare ingrediënten: *bronnen van goed verteerbare eiwitten: 67,4%, **bronnen van goed verteerbare vetten: 12,3%.', true, now(), 'sha256:069d27ebf19b1ead8f6f6f712ad56e357de17ddf9357bcbf8bb79e6f31734c9b', null from p;

-- Royal Canin — Gastrointestinal High Fibre (2 / 7,5 / 14 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/gastrointestinal-high-fibre-3959
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Gastrointestinal High Fibre', 'kibble', '2 / 7,5 / 14 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/gastrointestinal-high-fibre-3959', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'plantaardige vezels, maïs*, dierlijke vetten**, rijst*, gedehydreerde gevogelte-eiwitten*, tarwe*, maïsgluten*, tarwegluten*, gedehydreerd varkenseiwit*, gehydrolyseerde dierlijke eiwitten*, mineralen, bietenpulp, sojaolie**, psylliumschil en psylliumzaden, gistproducten, visolie**, fructo-oligosachariden (0,48%), algenolie Schizochytrium sp. (bron van DHA)**, gist (bron van manno-oligosachariden) (0,19%), tagetes meel. Goed verteerbare ingrediënten: *bronnen van goed verteerbare eiwitten: 52,6%, **bronnen van goed verteerbare vetten: 11,1%.', true, now(), 'sha256:458ca373078f3cb0535dd8c6f2f13e11cf03acef5ba254e4da59a2d1b23eae51', null from p;

-- Royal Canin — Gastrointestinal Hydrolysed Protein (1,5 / 3,5 / 9 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/royal-canin--veterinary-health-nutrition-gastrointestinal-hydrolysed-protein-dry-pet-food-for-dog-8112
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Gastrointestinal Hydrolysed Protein', 'kibble', '1,5 / 3,5 / 9 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/royal-canin--veterinary-health-nutrition-gastrointestinal-hydrolysed-protein-dry-pet-food-for-dog-8112', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gehydrolyseerd soja-eiwit isolaat*, breukrijst**, dierlijke vetten***, rijstmeel**, hydrolysaat van dierlijk eiwit***, plantaardige vezels, bietenpulp, mineralen, visolie***, geraffineerde sojaolie***, fructo-oligosachariden, psylliumschil, gistcomponenten (bron van manno-oligosachariden 0,05%), tagetes meel. *Eiwitbron: 23%. **Koolhydraatbronnen: 36,3%. */**/***Goed verteerbare ingrediënten: 82,1%.', true, now(), 'sha256:32ca4144ae740dcb2e3121ba7afba74a51be6686da2699f8698d60fdfe0ef03c', null from p;

-- Royal Canin — Gastrointestinal Hydrolysed Protein Small Dogs (1 / 3 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/royal-canin--veterinary-health-nutrition-gastrointestinal-hydrolysed-protein-small-dogs-dry-pet-food-for-dog-8114
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Gastrointestinal Hydrolysed Protein Small Dogs', 'kibble', '1 / 3 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/royal-canin--veterinary-health-nutrition-gastrointestinal-hydrolysed-protein-small-dogs-dry-pet-food-for-dog-8114', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gehydrolyseerd soja-eiwit isolaat*, breukrijst**, rijstmeel**, dierlijke vetten***, mineralen, hydrolysaat van dierlijk eiwit***, bietenpulp, plantaardige vezels, visolie***, psylliumschil, geraffineerde sojaolie***, fructo-oligosachariden, gistcomponenten (bron van manno-oligosachariden 0,05%), tagetes meel. *Eiwitbron: 24,7%. **Koolhydraatbronnen: 33,6%. */**/***Goed verteerbare ingrediënten: 81,2%.', true, now(), 'sha256:9767237e24ae8abbcb672e9a3f57c4a2adc7442a6d938d8760450822ac1a950c', null from p;

-- Royal Canin — Gastrointestinal Low Fat (1,5 / 6 / 12 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/gastrointestinal-low-fat-3932
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Gastrointestinal Low Fat', 'kibble', '1,5 / 6 / 12 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/gastrointestinal-low-fat-3932', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, gedehydreerd gevogelte-eiwit, maïs, gerst, gehydrolyseerde dierlijke eiwitten, bietenpulp, dierlijke vetten, mineralen, gistproducten, mono- en diglyceriden van palmitinezuur en stearinezuur veresterd met citroenzuur, psylliumschil en psylliumzaden, fructo-oligosachariden (0,48%), visolie, gist (bron van manno-oligosachariden) (0,19%), tagetes meel. Goed verteerbare ingrediënten: 82,4%.', true, now(), 'sha256:a7db00bbca60451ca74942f03ae7f5339d2e5c3d939f060af0a2813744da2e30', null from p;

-- Royal Canin — Gastrointestinal Low Fat + Hypoallergenic (2,5 / 10 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/royal-canin--veterinary-health-nutrition-gastrointestinal-low-fat-hypoallergenic-dry-pet-food-for-dog-2734
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Gastrointestinal Low Fat + Hypoallergenic', 'kibble', '2,5 / 10 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/royal-canin--veterinary-health-nutrition-gastrointestinal-low-fat-hypoallergenic-dry-pet-food-for-dog-2734', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijstmeel**, gehydrolyseerd soja-eiwit isolaat*, breukrijst**, bietenpulp, hydrolysaat van dierlijk eiwit, dierlijke vetten, mineralen, psylliumschil, visolie, geraffineerde sojaolie, natriumbutyraat, fructo-oligosachariden, tagetes meel. *Eiwitbron: 21,9%. **Koolhydraatbronnen: 57,3%.', true, now(), 'sha256:e774eb6c92b8b13a7dbc90b895938ee1234680f0ad659474ecd9eca56239bc3f', null from p;

-- Royal Canin — Gastrointestinal Low Fat Small Dog (1,5 / 3,5 / 8 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/gastrointestinal-low-fat-small-dog-1463
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Gastrointestinal Low Fat Small Dog', 'kibble', '1,5 / 3,5 / 8 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/gastrointestinal-low-fat-small-dog-1463', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, gedehydreerde gevogelte-eiwitten, maïs, gerst, gehydrolyseerde dierlijke eiwitten, bietenpulp, dierlijke vetten, mineralen, psylliumschil en psylliumzaden, gistproducten, mono- en diglyceriden van palmitinezuur en stearinezuur veresterd met citroenzuur, visolie, fructo-oligosachariden (0,48%), gist (bron van manno-oligosachariden), tagetes meel. Goed verteerbare ingrediënten: 80,9%.', true, now(), 'sha256:bd0dcfcef0e2bebc5d50db3224b6a8da0af42f16a192ae3c2c32f1dee0f4c8f6', null from p;

-- Royal Canin — Gastrointestinal Moderate Calorie (2 / 7,5 / 15 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/gastrointestinal-moderate-calorie-3958
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Gastrointestinal Moderate Calorie', 'kibble', '2 / 7,5 / 15 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/gastrointestinal-moderate-calorie-3958', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten*, rijst*, rijstmeel*, maïs*, gehydrolyseerde dierlijke eiwitten*, dierlijke vetten**, bietenpulp, eipoeder*, plantaardige vezels, mineralen, sojaolie**, gistproducten, visolie**, psylliumschil en psylliumzaden, fructo-oligosachariden, mono- en diglyceriden van palmitinezuur en stearinezuur veresterd met citroenzuur, algenolie Schizochytrium sp. (bron van DHA)**, gist (bron van manno-oligosachariden), tagetes meel. Goed verteerbare ingrediënten: *bronnen van goed verteerbare eiwitten: 76,1%, **bronnen van goed verteerbare vetten: 4,7%.', true, now(), 'sha256:61acbc61b679641f03740e59c981996fa5d2a08846f8ec12ed8f858852ce4a93', null from p;

-- Royal Canin — Gastrointestinal Puppy (1 / 2,5 / 10 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/vet-products/gastrointestinal-puppy-3957
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Gastrointestinal Puppy', 'kibble', '1 / 2,5 / 10 kg', null, 'https://www.royalcanin.com/nl/dogs/products/vet-products/gastrointestinal-puppy-3957', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst*, gedehydreerde gevogelte-eiwitten*, dierlijke vetten**, gedehydreerde varkenseiwitten*, maïs*, tarwegluten*, bietenpulp, gehydrolyseerde dierlijke eiwitten*, mineralen, eipoeder*, sojaolie**, gistproducten, visolie**, psylliumschil en psylliumzaden, fructo-oligosachariden, gist (bron van manno-oligosachariden en bèta-glucanen), algenolie Schizochytrium sp. (bron van DHA)**, tagetes meel. Goed verteerbare ingrediënten: *bronnen van goed verteerbare eiwitten: 63,3%, **bronnen van goed verteerbare vetten: 14,3%.', true, now(), 'sha256:8877b1462614b51318a1bdf59506bf1efbc762e19af7b498ac3dc45d1990e904', null from p;

-- Royal Canin — German Shepherd Adult (3 / 11 / 15 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/german-shepherd-adult-2518
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'German Shepherd Adult', 'kibble', '3 / 11 / 15 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/german-shepherd-adult-2518', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'rijst, gedehydreerde gevogelte-eiwitten, dierlijke vetten, tarwegluten*, maïsmeel, gehydrolyseerde dierlijke eiwitten, plantaardige vezels, mineralen, bietenpulp, sojaolie, visolie, kopraolie, gist (bron van manno-oligosachariden), glucosamine uit fermentatie, tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:e5faafeec1553e1a8066ea0ecc7e0a154aaf90db9a89044a4cab0f47cb8620bf', null from p;

-- Royal Canin — German Shepherd Puppy (1 / 3 / 12 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/german-shepherd-puppy-2519
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'German Shepherd Puppy', 'kibble', '1 / 3 / 12 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/german-shepherd-puppy-2519', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, rijst, tarwegluten*, tarwemeel, maïsmeel, dierlijke vetten, gehydrolyseerde dierlijke eiwitten, bietenpulp, plantaardige vezels, visolie, mineralen, sojaolie, fructo-oligosachariden (0,5%), psylliumschil en psylliumzaden, gist (bron van manno-oligosachariden (0,2%) en bèta-glucanen), glucosamine uit gisting, tagetes meel, sap van Yucca schidigera, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:1b5d6564986f6b4398b70168559514a8cfe614155f959aa45bee0a1ae4cc760f', null from p;

-- Royal Canin — Giant Adult (4 / 15 / 20 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/giant-adult-3009
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Giant Adult', 'kibble', '4 / 15 / 20 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/giant-adult-3009', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedehydreerde gevogelte-eiwitten, tarwemeel, dierlijke vetten, maïsmeel, maïs, plantaardige vezels, gehydrolyseerde dierlijke eiwitten, maïsgluten, bietenpulp, tarwegluten, mineralen, sojaolie, gistproducten, visolie, algenolie Schizochytrium sp., glucosamine uit gisting, tagetes meel, gehydrolyseerd kraakbeen (bron van chondroïtine).', true, now(), 'sha256:0663e70f6125efdaa4b130199c70f92270f1a5b396068dc3e240efee9ad6ff85', null from p;

-- Royal Canin — Giant Junior (3,5 / 15 kg)
-- bron: https://www.royalcanin.com/nl/dogs/products/retail-products/junior---giant-3031
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Royal Canin', 'Giant Junior', 'kibble', '3,5 / 15 kg', null, 'https://www.royalcanin.com/nl/dogs/products/retail-products/junior---giant-3031', date '2026-10-26', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedehydreerde gevogelte-eiwitten, maïs, maïsmeel, rijst, dierlijke vetten, tarwegluten*, tarwemeel, bietenpulp, gehydrolyseerde dierlijke eiwitten, mineralen, sojaolie, gistproducten, visolie, fructo-oligosacchariden, psylliumschil en psylliumzaden, gehydrolyseerd gist (bron van manno-oligosacchariden en bèta-glucanen) (0,30%), algenolie Schizochytrium sp. (bron van DHA), sap van Yucca schidigera, tagetes meel, glucosamine uit gisting, gehydrolyseerd kraakbeen (bron van chondroïtine)', true, now(), 'sha256:9862a8640979fd5c7d779495cb5fe0a8e0a60f78ea69d0895f583b131f2c034c', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
