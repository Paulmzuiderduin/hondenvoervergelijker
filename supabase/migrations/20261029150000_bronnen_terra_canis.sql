-- Bronlinks van Terra Canis naar de officiële fabrikantpagina.
-- Gegenereerd op 2026-10-29; veilig om opnieuw uit te voeren.

update public.products set name = 'Classic Konijn met Courgette, Amarant en Kervel' where brand = 'Terra Canis' and name = 'Classic Konijn met Courgette, Amarant en Wilde Knoflook';
update public.products set name = 'Classic Zalm met Gierst, Perzik en Kruiden' where brand = 'Terra Canis' and name = 'Classic Zeezalm met courgette, boekweit en rozenbottels';
update public.products
   set source_url = 'https://www.terracanis.com/rind-mit-karotte-apfel-und-naturreis-1011.html', source_status = 'ok', source_note = null, last_checked_at = current_date
 where brand = 'Terra Canis' and name = 'Classic Rund met wortel, appel & rijst';
update public.recipe_versions rv
   set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.',
       import_hash = 'sha256:16b39ecf688981e678a89052647fbc536e03852522df8e63590c9e128f9b55a2',
       ingredients_text = 'Spiervlees van rund (20%), hart van rund (15%), lever van rund (9%), long van rund (8%), wortels (12%), appel (9%), courgette, bruine rijst (6%), abrikoos, lijnolie, gist, peterselie, basilicum, venkel, wei, mineraalaarde, rosebottelpoeder, biologische eierschalen (0,4%), zeealgen(0,4%)'
  from public.products p
 where p.brand = 'Terra Canis' and p.name = 'Classic Rund met wortel, appel & rijst' and rv.product_id = p.id and rv.is_current;

update public.products
   set source_url = 'https://www.terracanis.com/pute-mit-brokkoli-birne-und-kartoffel-1012.html', source_status = 'ok', source_note = null, last_checked_at = current_date
 where brand = 'Terra Canis' and name = 'Classic Kalkoen met Broccoli, peer & aardappelen';
update public.recipe_versions rv
   set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.',
       import_hash = 'sha256:eb5ce62dc5c88aebcd5901dee0572f456b2d4d3d3cbd56f44aaa073c67b1ada1',
       ingredients_text = 'Kalkoenharten (40%), wortels, aardappelen (10%), spiervlees van kalkoen (9%), kalkoenlever (9%), peer (7%), gierst, abrikozen, broccoli (3%), lijnzaadolie, gist, eierschaal poeder (0,4%), lijnzaad, basilicum, peterselie, mineraalaarde, zeealgen (0,13%), pollen'
  from public.products p
 where p.brand = 'Terra Canis' and p.name = 'Classic Kalkoen met Broccoli, peer & aardappelen' and rv.product_id = p.id and rv.is_current;

update public.products
   set source_url = 'https://www.terracanis.com/lamm-mit-zucchini-hirse-und-dill-1014.html', source_status = 'ok', source_note = null, last_checked_at = current_date
 where brand = 'Terra Canis' and name = 'Classic Lam met courgette, gierst & dille';
update public.recipe_versions rv
   set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.',
       import_hash = 'sha256:6e0577a8569c49879cbdaaa6d9e62c3b04e5ae6b50a2f65349513e260cccdb8f',
       ingredients_text = 'Lamshart (20%), spiervlees van lam (18%), lamslong (10%), courgette (13%), gierst (8%), wortels, appel, selderij, lijnolie, gist, eierschaal poeder (0,4%), basilicum, dille (0,2%), venkelzaden, mineraalaarde, zeealgen (0,13%), pollen'
  from public.products p
 where p.brand = 'Terra Canis' and p.name = 'Classic Lam met courgette, gierst & dille' and rv.product_id = p.id and rv.is_current;

update public.products
   set source_url = 'https://www.terracanis.com/kaninchen-mit-zucchini-amaranth-und-kerbel-1017.html', source_status = 'ok', source_note = null, last_checked_at = current_date
 where brand = 'Terra Canis' and name = 'Classic Konijn met Courgette, Amarant en Kervel';
update public.recipe_versions rv
   set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.',
       import_hash = 'sha256:cc58fafdef64689490668ad6a7c61d2977a69a0098c293bea90bc0342f9ae417',
       ingredients_text = 'Konijn en kalkoen 43% (konijnenvlees 23%, kalkoenlever 20%), fond 22%, pompoen 9%, tomaat 6%, selderij 3%, courgette 6%, gierst 6%, amarant 3%, mineralen 1%*, raapzaadolie, kervel 0,2%*, basilicum*, lijnzaad*, andeszout*, mineraalaarde*, biergist*, oesterschelp*, spirulina* *gedroogd'
  from public.products p
 where p.brand = 'Terra Canis' and p.name = 'Classic Konijn met Courgette, Amarant en Kervel' and rv.product_id = p.id and rv.is_current;

update public.products
   set source_url = 'https://www.terracanis.com/huhn-mit-tomate-amaranth-und-basilikum-1016.html', source_status = 'ok', source_note = null, last_checked_at = current_date
 where brand = 'Terra Canis' and name = 'Classic Kip met amarant, tomaten & basilicum';
update public.recipe_versions rv
   set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.',
       import_hash = 'sha256:901f5a10afb34a5edde69f3137a856e4453baa492d3caf279ec16936760c4c98',
       ingredients_text = 'Kippenhart (24%), kippenmagen (22%), amarant (5%), tomaten (17%), kippenlever (10%), peren, gierst, rode biet, bleekselderij, kokosnootolie, lijnzaadolie, gist, eierschaal poeder (0,5%), basilicum (0,4%), bieslook, zeewier (0,14%), Andeszout, rozenbottel'
  from public.products p
 where p.brand = 'Terra Canis' and p.name = 'Classic Kip met amarant, tomaten & basilicum' and rv.product_id = p.id and rv.is_current;

update public.products
   set source_url = 'https://www.terracanis.com/lachs-mit-hirse-pfirsich-und-kraeutern-0301.html', source_status = 'ok', source_note = null, last_checked_at = current_date
 where brand = 'Terra Canis' and name = 'Classic Zalm met Gierst, Perzik en Kruiden';
update public.recipe_versions rv
   set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.',
       import_hash = 'sha256:76be3ba6a7ff09f6452f34351929e6aa9f93eb8246dca6277e4ab41eef801fd5',
       ingredients_text = 'Zalm 41%, fond 24%, courgette 8%, pompoen 7%, aardappel 7%, perzik 7%, gierst 5%, raapzaadolie, dille 0,1%*, peterselie 0,1%*, tijm 0,1%*, venkelzaad 0,1%*, rozenbottelschil*, lijnzaad, mineraalaarde*, biergist*, oesterschelp*, spirulina* *gedroogd'
  from public.products p
 where p.brand = 'Terra Canis' and p.name = 'Classic Zalm met Gierst, Perzik en Kruiden' and rv.product_id = p.id and rv.is_current;

update public.products
   set source_url = 'https://www.terracanis.com/pferd-mit-amaranth-pfirsich-und-roter-bete-0311.html', source_status = 'ok', source_note = null, last_checked_at = current_date
 where brand = 'Terra Canis' and name = 'Classic Paard met Amarant, Perzik & Rode Biet';
update public.recipe_versions rv
   set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.',
       import_hash = 'sha256:6158f2059e226a65c6b36aa4b8bad52a8aa2ca76188a69fede014defaf17d8ac',
       ingredients_text = 'Paardenspiervlees (51%), wortel, selderij (9%), amarant (7,5%), venkel, appel, perzik (5%), rode biet (3%), lijnzaadolie, gist, eierschaalpoeder (0,4%), tijm, zeewier (0,15%), bieslook, andeszout, mineraalaarde'
  from public.products p
 where p.brand = 'Terra Canis' and p.name = 'Classic Paard met Amarant, Perzik & Rode Biet' and rv.product_id = p.id and rv.is_current;

update public.products
   set source_url = 'https://www.terracanis.com/rind-mit-zucchini-kuerbis-und-oregano-1031.html', source_status = 'ok', source_note = null, last_checked_at = current_date
 where brand = 'Terra Canis' and name = 'Graanvrij Rundvlees met courgette, pompoen en oregano';
update public.recipe_versions rv
   set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.',
       import_hash = 'sha256:e58222090ced4bd01bdaacd867a1064d81c7cbd5119c84145ea688492a0a1e02',
       ingredients_text = 'Rundvlees (47%, bestaande uit runderhart 34%, runderlong 9%, runderspiervlees 4%), bouillon (25%), pompoen (12%), courgette (7%), rode biet (3%)*, pastinaak (1%)*, mineralen (1%)*, kokosmeel, koolzaadolie, pompoenpittenmeel, bakkersgist*, psylliumvezels*, basilicum*, Andeszout, oesterschelp*, oregano (0,1%)*, peterselie*, minerale klei*, spirulina*'
  from public.products p
 where p.brand = 'Terra Canis' and p.name = 'Graanvrij Rundvlees met courgette, pompoen en oregano' and rv.product_id = p.id and rv.is_current;

update public.products
   set source_url = 'https://www.terracanis.com/pute-mit-sellerie-kuerbis-und-brunnenkresse-1032.html', source_status = 'ok', source_note = null, last_checked_at = current_date
 where brand = 'Terra Canis' and name = 'Graanvrij Kalkoen met selderij, pompoen en waterkers';
update public.recipe_versions rv
   set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.',
       import_hash = 'sha256:7ec646e2bd3c2f660ad56c90a62cf5192bb08bfe3689402b2c8661a34510c278',
       ingredients_text = 'Kalkoen (51%, bestaande uit kalkoenhart 31%, kalkoenmaag 12%, kalkoenspiervlees 5%, kalkoenvel 3%), bouillon (19%), wortel (7%), selderij (7%)*, pompoen (6%)*, komkommer (3%)*, mineralen (1%)*, kokosmeel, koolzaadolie, pompoenpittenmeel, bakkersgist*, psylliumvezels*, basilicum*, kamille*, waterkers (0,1%)*, oesterschelp*, rozenbottelschelp*, minerale klei*, spirulina*'
  from public.products p
 where p.brand = 'Terra Canis' and p.name = 'Graanvrij Kalkoen met selderij, pompoen en waterkers' and rv.product_id = p.id and rv.is_current;

update public.products
   set source_url = 'https://www.terracanis.com/huhn-mit-pastinake-brombeere-und-loewenzahn-1033.html', source_status = 'ok', source_note = null, last_checked_at = current_date
 where brand = 'Terra Canis' and name = 'Graanvrij Kip met pastinaak, paardenbloem en bramen';
update public.recipe_versions rv
   set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.',
       import_hash = 'sha256:d3a97c8062d07d3d2dbb5d139a3dc339179c7eae00114ce8c9085e0245968752',
       ingredients_text = 'Kip (49%, bestaande uit kippenmaagjes 26%, kippenharten 15%, kippenspiervlees 4%, kippenvel 2%, kippenlever 2%), bouillon (23%), pompoen (12%), appel (6%), braam (2%), mineralen (1%)*, kokosmeel, pastinaak (0,8%)*, koolzaadolie, pompoenpittenmeel, bakkersgist*, psylliumvezels*, kamille*, rozenbottelschelpen*, oesterschelpen*, paardenbloem (0,1%)*, Andeszout, minerale klei*, spirulina*'
  from public.products p
 where p.brand = 'Terra Canis' and p.name = 'Graanvrij Kip met pastinaak, paardenbloem en bramen' and rv.product_id = p.id and rv.is_current;

update public.products
   set source_url = 'https://www.terracanis.com/kalb-mit-petersilienwurzel-mango-und-johannisbeere-1100.html', source_status = 'ok', source_note = null, last_checked_at = current_date
 where brand = 'Terra Canis' and name = 'Graanvrij Kalfsvlees met peterseliewortel, mango en rode bes';
update public.recipe_versions rv
   set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.',
       import_hash = 'sha256:7e317fc62ed11bd9eff43968239b087bd35c394358c1ada7caec2c9594cd005c',
       ingredients_text = 'Kalfsvlees (46%, bestaande uit kalfshart 35%, kalfslong 11%), bouillon (24%), pompoen (8%), peterseliewortel (8%), meloen (5%), mango (3%), kokosmeel (1%), mineralen (1%)*, pastinaak*, rode bes (0,5%), koolzaadolie, pompoenpittenmeel, bakkersgist*, salie*, basilicum*, oesterschelp*, Andeszout, kervel*, venkelzaad*, paardenbloem*, minerale klei*, spirulina*'
  from public.products p
 where p.brand = 'Terra Canis' and p.name = 'Graanvrij Kalfsvlees met peterseliewortel, mango en rode bes' and rv.product_id = p.id and rv.is_current;

update public.products
   set source_url = 'https://www.terracanis.com/pferd-mit-steckruebe-fenchel-und-salbei-0109.html', source_status = 'ok', source_note = null, last_checked_at = current_date
 where brand = 'Terra Canis' and name = 'Graanvrij Paardenvlees met koolraap, venkel en salie';
update public.recipe_versions rv
   set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.',
       import_hash = 'sha256:2b36cd3da9263c8afadd3347f8ac65d2d578bc5faa0da4d3242142e6d3719531',
       ingredients_text = 'Paardenspier (46%), bouillon (23%), aardappel (9%), pompoen (6%), koolraap (6%), venkel (3%), rode biet (3%)*, mineralen (1%)*, raapzaadolie, kokosmeel, pastinaak*, biergist*, salie (0,1%)*, paardenbloem*, vlierbloesem*, oesterschelp*, Andeszout, minerale klei*, spirulina*'
  from public.products p
 where p.brand = 'Terra Canis' and p.name = 'Graanvrij Paardenvlees met koolraap, venkel en salie' and rv.product_id = p.id and rv.is_current;

update public.products
   set source_url = 'https://www.terracanis.com/lamm-mit-kuerbis-pastinake-und-passionsblume-1036.html', source_status = 'ok', source_note = null, last_checked_at = current_date
 where brand = 'Terra Canis' and name = 'Graanvrij Lam met pompoen, pastinaak en passiebloem';
update public.recipe_versions rv
   set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.',
       import_hash = 'sha256:13b327d0cdc233d6e7c7a7a25eef1999215639ed08031911fd19b46ba2d98702',
       ingredients_text = 'Lam (42%, bestaande uit lamshart 33%, lamslong 9%), bouillon (25%), wortel (9%), pompoen (9%), appel (6%), perzik (3%), pastinaak (1%)*, mineralen (1%)*, koolzaadolie, lupinegries*, kokosmeel, bakkersgist*, passiebloem (0,2%)*, basilicum*, paardenbloem*, salie*, minerale klei*, oesterschelp*, Andeszout, spirulina*'
  from public.products p
 where p.brand = 'Terra Canis' and p.name = 'Graanvrij Lam met pompoen, pastinaak en passiebloem' and rv.product_id = p.id and rv.is_current;

update public.products
   set source_url = 'https://www.terracanis.com/wild-mit-kartoffel-apfel-und-preiselbeere-1037.html', source_status = 'ok', source_note = null, last_checked_at = current_date
 where brand = 'Terra Canis' and name = 'Graanvrij Wild met appel en cranberries';
update public.recipe_versions rv
   set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.',
       import_hash = 'sha256:a14346ec96fcb0d3df9311d246fb198d398ac2d9f97853523d8af54a10ea8847',
       ingredients_text = 'Spiervlees van ree en edelhert (41%), bouillon (28%), wortel (10%), aardappel (6%), courgette (6%), appel (3%), mineralen (1%)*, pastinaak*, koolzaadolie, kokosmeel, pompoenpittenmeel, cranberry (0,3%)*, bakkersgist*, psylliumvezels*, oesterschelp*, Andeszout, minerale klei*, kardemom*, spirulina*'
  from public.products p
 where p.brand = 'Terra Canis' and p.name = 'Graanvrij Wild met appel en cranberries' and rv.product_id = p.id and rv.is_current;

update public.products
   set source_url = 'https://www.terracanis.com/kaninchen-mit-zucchini-aprikose-und-bohnenkraut-1039.html', source_status = 'ok', source_note = null, last_checked_at = current_date
 where brand = 'Terra Canis' and name = 'Graanvrij Konijn met courgette, abrikoos en bonenkruid';
update public.recipe_versions rv
   set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.',
       import_hash = 'sha256:edc4dd6f9cf320cd8eb3f3c4779bf69245c5965f2768a54415eab1d0b5604f5b',
       ingredients_text = 'Konijn en kalkoen (45%, bestaande uit 34% konijnenvlees en 11% kalkoenlever), bouillon (23%), wortel (10%), pompoen (9%), courgette (6%), abrikoos (3%), mineralen (1%)*, kokosmeel, koolzaadolie, pompoenpittenmeel, bakkersgist*, basilicum*, rozenbottel*, bonenkruid (0,1%)*, venkelzaad*, oesterschelp*, lijnzaad*, Andeszout, minerale klei*, spirulina*'
  from public.products p
 where p.brand = 'Terra Canis' and p.name = 'Graanvrij Konijn met courgette, abrikoos en bonenkruid' and rv.product_id = p.id and rv.is_current;

update public.products
   set source_url = 'https://www.terracanis.com/ente-mit-kuerbis-erdbeere-und-holunder-0002.html', source_status = 'ok', source_note = null, last_checked_at = current_date
 where brand = 'Terra Canis' and name = 'Graanvrij Eend met pompoen, aardbeien en vlierbloesem';
update public.recipe_versions rv
   set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.',
       import_hash = 'sha256:cc395d6ce09a26ec29d48e837b1e8d3ebd168b48788ad832808eac7b077072ab',
       ingredients_text = 'Eend (46%, bestaande uit eendenhart 41%, eendenlever 5%), bouillon (18%), pompoen (10%), wortel (8%), courgette (4%), selderij (4%), appel (3%), meloen (3%), kastanje, aardbei (1%), mineralen (1%)*, koolzaadolie, bakkersgist*, vlierbloesem (0,2%)*, psylliumvezels*, oesterschelp*, kervel*, paardenbloem*, basilicum*, minerale klei*, peterselie*, Andeszout, spirulina*.
* = gedroogd.'
  from public.products p
 where p.brand = 'Terra Canis' and p.name = 'Graanvrij Eend met pompoen, aardbeien en vlierbloesem' and rv.product_id = p.id and rv.is_current;

update public.products
   set source_url = 'https://www.terracanis.com/rind-mit-apfel-karotte-und-hagebutte-1051.html', source_status = 'ok', source_note = null, last_checked_at = current_date
 where brand = 'Terra Canis' and name = 'Puppy Rund met appel, wortelen & rozenbottel';
update public.recipe_versions rv
   set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.',
       import_hash = 'sha256:64cc6b39d14741df2134a55ea9251410c93e7ec3e8b1aab7d5d790161dd267d8',
       ingredients_text = 'Runderhart (29%), longen van runderen (13%), lever van rund (11%), spiervlees van rund (5%), courgette, wortels (11%), appels (6%), gierst, meel poempoenzaden (1% ), lijnzaadolie, organische eierschaal poeder (0,7%), veenbessen, basilicum, peterselie, biergist, rozenbottel poeder (0,2%), minerale klei, zeewier (0,1%), Andeszout, stuifmeel'
  from public.products p
 where p.brand = 'Terra Canis' and p.name = 'Puppy Rund met appel, wortelen & rozenbottel' and rv.product_id = p.id and rv.is_current;

update public.products
   set source_url = 'https://www.terracanis.com/huhn-mit-kuerbis-kamille-und-tomate-1052.html', source_status = 'ok', source_note = null, last_checked_at = current_date
 where brand = 'Terra Canis' and name = 'Puppy Gevogelte met pompoen, boekweit & bloempollen';
update public.recipe_versions rv
   set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.',
       import_hash = 'sha256:40019c38d06d4f659eaa57511aaec9f0c605f9c3bb3b90ca851458861699849f',
       ingredients_text = 'Kippenhart (40%), kippenmaagjes (20%), pompoen (14%), tomaten, appel, gierst, meel pompoenzaad (1%), lijnolie, raapolie, organische eierschaal poeder (0,6%), bieslook, gist, kamille ( 0,2%), rozenbottel poeder, minerale klei, zeewier (0,1%), pollen (0,04%)'
  from public.products p
 where p.brand = 'Terra Canis' and p.name = 'Puppy Gevogelte met pompoen, boekweit & bloempollen' and rv.product_id = p.id and rv.is_current;

update public.products
   set source_url = 'https://www.terracanis.com/lamm-mit-zucchini-fenchel-und-magerjoghurt-1053.html', source_status = 'ok', source_note = null, last_checked_at = current_date
 where brand = 'Terra Canis' and name = 'Puppy Lam met courgette, venkel & magere yoghurt';
update public.recipe_versions rv
   set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.',
       import_hash = 'sha256:7635844d7cdfb414199d7d3ab58134c22e8a970efdcb23677af6cfc527494d45',
       ingredients_text = 'Lam hart (23%), spiervlees lammeren (15%), long van lam (14%), courgette (18%), wortel, bruine rijst, magere yoghurt (4%), venkel (2%), bloem pompoenzaad (1%), lijnolie, raapolie, organische eierschaal poeder (0,6%), basilicum, gist, rozenbottelpoeder minerale klei, zeewier (0,1%), pollen'
  from public.products p
 where p.brand = 'Terra Canis' and p.name = 'Puppy Lam met courgette, venkel & magere yoghurt' and rv.product_id = p.id and rv.is_current;

update public.products
   set source_url = 'https://www.terracanis.com/rind-mit-sellerie-aprikose-und-gesundheitskraeutern-1068.html', source_status = 'ok', source_note = null, last_checked_at = current_date
 where brand = 'Terra Canis' and name = 'Senior Graanvrij Rundvlees met selderij, abrikoos en kruiden';
update public.recipe_versions rv
   set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.',
       import_hash = 'sha256:6083bf96eab76f6150b26d8ccd99866d61e29592ad51fb5d74d9b79b4506e111',
       ingredients_text = 'Rundvlees (48%, bestaande uit runderhart 36%, runderlong 12%), bouillon (18%), aardappel (7%), wortel (6%), courgette (6%), selderij (6%), abrikoos (3%), naturel yoghurt (1%), mineralen (1%)*, kokosmeel*, koolzaadolie, biergist*, heermoes (0,2%)*, rozenbottelschil (0,2%)*, basilicum (0,2%)*, meidoornbes (0,2%)*, glucosamine (0,2%)*, brandnetel (0,1%)*, kamille (0,1%)*, minerale klei (0,1%)*, oesterschelp*, spirulina*'
  from public.products p
 where p.brand = 'Terra Canis' and p.name = 'Senior Graanvrij Rundvlees met selderij, abrikoos en kruiden' and rv.product_id = p.id and rv.is_current;

update public.products
   set source_url = 'https://www.terracanis.com/huhn-mit-gurke-kuerbis-und-gesundheitskraeutern-1065.html', source_status = 'ok', source_note = null, last_checked_at = current_date
 where brand = 'Terra Canis' and name = 'Senior Graanvrij Kip met komkommer, pompoen en kruiden';
update public.recipe_versions rv
   set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.',
       import_hash = 'sha256:438cb0a81648788a552ca43c99ae2b4fa2772c29daaaa0ffbc2e1dada6ef1946',
       ingredients_text = 'Kip (48%, bestaande uit kippenhart 24%, kippenmaag 18%, kippenlever 3%, kippenspiervlees 3%), bouillon (16%), aardappel (8%), courgette (6%), pompoen (6%), tomaat (6%), komkommer (3%), naturel yoghurt (2%), mineralen (1%), kokosmeel, koolzaadolie, biergist, heermoes (0,2%)*, meidoornbes (0,2%)*, glucosamine (0,2%)*, brandnetel (0,1%), rozenbottelschil (0,1%), venkelzaad (0,1%), kamille (0,1%), basilicum, minerale klei, oesterschelp, spirulina'
  from public.products p
 where p.brand = 'Terra Canis' and p.name = 'Senior Graanvrij Kip met komkommer, pompoen en kruiden' and rv.product_id = p.id and rv.is_current;

update public.products
   set source_url = 'https://www.terracanis.com/wild-mit-tomate-apfel-und-gesundheitskraeutern-1067.html', source_status = 'ok', source_note = null, last_checked_at = current_date
 where brand = 'Terra Canis' and name = 'Senior Graanvrij Hertenvlees met tomaat, appel en kruiden';
update public.recipe_versions rv
   set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.',
       import_hash = 'sha256:fe4294f242a1e58319b8d645ab7cefa4c4c943df9f8ae0d91c8b2e9c00ad4522',
       ingredients_text = 'Hertenvleesspier (44%), bouillon (21%), aardappel (6%), wortel (6%), tomaat (6%), selderij (6%), appel (3%), naturel yoghurt (2%), mineralen (1%)*, kokosmeel*, koolzaadolie, biergist*, heermoes (0,2%)*, paardenbloem (0,2%)*, meidoornbes (0,2%)*, glucosamine (0,2%)*, brandnetel (0,1%)*, rozenbottelschil (0,1%)*, venkelzaad (0,1%)*, minerale klei*, oesterschelp*.
* = gedroogd'
  from public.products p
 where p.brand = 'Terra Canis' and p.name = 'Senior Graanvrij Hertenvlees met tomaat, appel en kruiden' and rv.product_id = p.id and rv.is_current;

update public.products
   set source_url = 'https://www.terracanis.com/kaenguru-mit-pastinake-1042.html', source_status = 'ok', source_note = null, last_checked_at = current_date
 where brand = 'Terra Canis' and name = 'Hypoallergeen Kangoeroe met pastinaak';
update public.recipe_versions rv
   set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.',
       import_hash = 'sha256:667f69f9d67ae92b0dfe75e983cdbf134324f8c960cde74e2ceaa0834efa0200',
       ingredients_text = 'Kangoeroevlees (46%), bouillon (45%), pastinaak (5%)*, koolzaadolie (2%), mineralen (1%)*, spirulina*'
  from public.products p
 where p.brand = 'Terra Canis' and p.name = 'Hypoallergeen Kangoeroe met pastinaak' and rv.product_id = p.id and rv.is_current;

update public.products
   set source_url = 'https://www.terracanis.com/pferd-mit-topinambur-1043.html', source_status = 'ok', source_note = null, last_checked_at = current_date
 where brand = 'Terra Canis' and name = 'Hypoallergeen Paardenvlees met aardpeer';
update public.recipe_versions rv
   set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.',
       import_hash = 'sha256:44c1c2c8ed91dab57297246b6590e40769fe942b4a498cb4c101b48716a9047e',
       ingredients_text = 'Spiervlees van paard (46%), aardpeer (31%), bouillon (19%), raapzaadolie (2%), mineralen (1%)*, spirulina*.'
  from public.products p
 where p.brand = 'Terra Canis' and p.name = 'Hypoallergeen Paardenvlees met aardpeer' and rv.product_id = p.id and rv.is_current;

update public.products
   set source_url = 'https://www.terracanis.com/strauss-mit-pastinake-1045.html', source_status = 'ok', source_note = null, last_checked_at = current_date
 where brand = 'Terra Canis' and name = 'Hypoallergeen Struisvogel met pastinaak';
update public.recipe_versions rv
   set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.',
       import_hash = 'sha256:b8c5bb6ce5ef2f0de5d1c76b47d2f39069295fe38cb0ad0efd3f4c45434a1407',
       ingredients_text = 'Spiervlees van struisvogel (46%), bouillon (45%), pastinaak (5%)*, raapzaadolie (2%), mineralen (1%)*, spirulina*.'
  from public.products p
 where p.brand = 'Terra Canis' and p.name = 'Hypoallergeen Struisvogel met pastinaak' and rv.product_id = p.id and rv.is_current;

update public.products
   set source_url = 'https://www.terracanis.com/huhn-und-lachs-sw10212.html', source_status = 'ok', source_note = null, last_checked_at = current_date
 where brand = 'Terra Canis' and name = 'Derma Dieet Kip & Zalm';
update public.recipe_versions rv
   set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.',
       import_hash = 'sha256:36a806d79c94c567eaa920b3dc92f0fc1437353f3e6e570276da79fc7da7322c',
       ingredients_text = 'Kip en zalm (52%, kippenmaag 27%, kippenhart 17%, zalmfilet 8%), bouillon (20%), pompoen (5%), komkommer (4%), aardappel (8%), courgette (3%), zoete aardappel (3%), mineralen (1%), framboos, koolzaadolie, visolie (0,7%), goudsbloem, kamille, basilicum, tijm, brandnetel, kokosmeel, kokosvlok, spirulina*.
*gedroogd'
  from public.products p
 where p.brand = 'Terra Canis' and p.name = 'Derma Dieet Kip & Zalm' and rv.product_id = p.id and rv.is_current;

update public.products
   set source_url = 'https://www.terracanis.com/lamm-sw10217.html', source_status = 'ok', source_note = null, last_checked_at = current_date
 where brand = 'Terra Canis' and name = 'Derma Dieet Lam';
update public.recipe_versions rv
   set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.',
       import_hash = 'sha256:f98e60cd9ecb273f1b31b9a8fed9770ea8d43ccd7fced3ce68c15928340b4dd4',
       ingredients_text = 'Lamhart (50%), bouillon (20%), aardappel (8%), pompoen (5%), komkommer (4%), courgette (3%), zoete aardappel (3%), visolie (1%), kokosmeel (1%), mineralen (1%), framboos, koolzaadolie, kokosrasp, kamille, goudsbloem, tijm, brandnetel, basilicum, spirulina.
*gedroogd'
  from public.products p
 where p.brand = 'Terra Canis' and p.name = 'Derma Dieet Lam' and rv.product_id = p.id and rv.is_current;

update public.products
   set source_url = 'https://www.terracanis.com/huhn-5000.html', source_status = 'ok', source_note = null, last_checked_at = current_date
 where brand = 'Terra Canis' and name = 'Alimentum Veterinarium Low Protein Kip';
update public.recipe_versions rv
   set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.',
       import_hash = 'sha256:71f53c5a4aad347375cc477397ac67f8fac87fafa91dc60465392cbca358e305',
       ingredients_text = 'Spiervlees van kip (24%), kippenmaag (15%), aardappel, wortel (8%), courgette, pompoen (8%), kippenhuid (5%), meloen, appel, lijnzaadolie, kokosmeel, paardenbloem*, berkenbladeren*, peterselie*, chiazaden, goudsbloem*, brandnetel*, oesterschelp*, zeewier*, mineralen'
  from public.products p
 where p.brand = 'Terra Canis' and p.name = 'Alimentum Veterinarium Low Protein Kip' and rv.product_id = p.id and rv.is_current;

update public.products
   set source_url = 'https://www.terracanis.com/kalb-0510.html', source_status = 'ok', source_note = null, last_checked_at = current_date
 where brand = 'Terra Canis' and name = 'Alimentum Veterinarium Low Protein Kalf';
update public.recipe_versions rv
   set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.',
       import_hash = 'sha256:cd55e74d519d2e36ae9c14048c64202e2daecbe4059496b685ef121f7703ee72',
       ingredients_text = 'Kalfshart (25%), kalfslong (12%), kalfsvet (7%), aardappel, wortel (8%), courgette, pompoen (8%), meloen, appel, lijnzaadolie, kokosmeel, paardenbloem*, berkenbladeren*, peterselie*, chiazaden, goudsbloem*, brandnetel*, oesterschaal*, zeewier*, mineralen'
  from public.products p
 where p.brand = 'Terra Canis' and p.name = 'Alimentum Veterinarium Low Protein Kalf' and rv.product_id = p.id and rv.is_current;

update public.products
   set source_url = 'https://www.terracanis.com/wild-0520.html', source_status = 'ok', source_note = null, last_checked_at = current_date
 where brand = 'Terra Canis' and name = 'Alimentum Veterinarium Low Protein Wild';
update public.recipe_versions rv
   set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.',
       import_hash = 'sha256:2748026167c875fc50491aac195f4ef8a969ad57b37e610d6519c277bb2a3f07',
       ingredients_text = 'Spiervlees van wild (39%), aardappel, wortel (8%), courgette, pompoen (8%), wildvet (5%), meloen, appel, lijnzaadolie, kokosmeel, paardenbloem*, berkenbladeren*, peterselie*, chiazaden, goudsbloem*, brandnetel*, oesterschaal*, zeewier*, mineralen.
*gedroogd'
  from public.products p
 where p.brand = 'Terra Canis' and p.name = 'Alimentum Veterinarium Low Protein Wild' and rv.product_id = p.id and rv.is_current;

update public.products
   set source_url = 'https://www.terracanis.com/trockenfutter-huhn-1554.html', source_status = 'ok', source_note = null, last_checked_at = current_date
 where brand = 'Terra Canis' and name = 'Canireo Adult kip';
update public.recipe_versions rv
   set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.',
       import_hash = 'sha256:7744a359a4297d477a04579989bb759d41204ddb5e629e312291a9c93f8f591d',
       ingredients_text = 'Vers kippenspiervlees (64%), aardappelvlokken* (15%), kokosmeel (5%), abrikozen* (2%), wortelen* (1,5%), courgette* (1,4%), selderij* (1,2%), verse lever van gevogelte (1%), biergist (1%), lijnzaad (1%), appel* (0,9%), pompoen* (0,8%), pastinaak* (0,8%), eierschaalpoeder (0,7%), rode biet* (0,5%), minerale aarde (0,5%), peterseliewortel* (0,4%), fenegriek (0,4%), koolzaadmeel (0,4%), paardenbloem* (0,3%), rozenbottel* (0,3%), kamille* (0,2%), aroniabessen* (0,2%), spinazie (0,2%), zeewier* (0,1%), rozemarijn* (0,1%), tijm* (0,1%) *gedroogd'
  from public.products p
 where p.brand = 'Terra Canis' and p.name = 'Canireo Adult kip' and rv.product_id = p.id and rv.is_current;

update public.products
   set source_url = 'https://www.terracanis.com/trockenfutter-wild-1553.html', source_status = 'ok', source_note = null, last_checked_at = current_date
 where brand = 'Terra Canis' and name = 'Canireo Wild';
update public.recipe_versions rv
   set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.',
       import_hash = 'sha256:9f172158c5fd9828f1000f1f235770c0221887eea1293542476f329d13e6e6ed',
       ingredients_text = 'Vers spiervlees van ree en hert 64%, aardappelvlokken 12%, kokosmeel 4,8%, zoete lupine, biergist*, appel* 1,5%, wortel* 1,4%, courgette* 1,4%, selderij* 1,1%, verse lever van ree en hert 1%, eierschaalpoeder 1%, pompoen* 0,8%, pastinaak* 0,8%, lijnzaad, abrikoos* 0,5%, fenegriek 0,4%, peterseliewortel* 0,4%, koolzaadmeel, minerale aarde, spinazie* 0,2%, zeewier, paardenbloem* 0,1%, rozenbottel* 0,1%, kamille* 0,1%, rozemarijn, tijm, mineralen *gedroogd'
  from public.products p
 where p.brand = 'Terra Canis' and p.name = 'Canireo Wild' and rv.product_id = p.id and rv.is_current;

update public.products
   set published = false, source_status = 'gewijzigd', source_note = 'Geen actuele fabrikantpagina gevonden; product voorlopig verborgen.'
 where brand = 'Terra Canis' and name = 'Puppy Pangasius met wortelen, venkel & bessen';

select p.name, p.source_url, p.source_status, p.published from public.products p where p.brand = 'Terra Canis' order by p.name;
