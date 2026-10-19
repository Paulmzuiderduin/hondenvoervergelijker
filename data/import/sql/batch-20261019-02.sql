-- Automatisch overgenomen etiketten, batch 2 van 2026-10-19 (47 producten).
-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met
-- 20261019190000_import_herkomst.sql zijn uitgevoerd.
--
-- Elk product komt van de bronpagina die eronder staat. De site zegt daarna:
-- "automatisch overgenomen van <domein> op <datum> · nog niet door een mens
-- nagelopen". Er wordt hier geen enkele controle door een mens geclaimd.
begin;

-- GranataPet — Liebling's Mahlzeit kalkoen Senior (1,8 kg)
-- bron: https://www.granatapet.de/pute-senior-1-8-kg-191036
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('GranataPet', 'Liebling''s Mahlzeit kalkoen Senior', 'kibble', '1,8 kg', '4260165191036', 'https://www.granatapet.de/pute-senior-1-8-kg-191036', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gevogeltevlees 38% (waarvan kalkoen 70%, gedroogd en fijn gemalen), aardappelvlokken (ontsloten), aardappelzetmeel (fijn gemalen), granaatappelpitjes 7%, gevogeltevet, zalmolie 1%, lignocellulose, mineralen, biergist, cichorei 0,5% (fijn gemalen, met FOS en inuline), spirulina 0,1% (fijn gemalen), Nieuw-Zeelandse groenlipmossel 0,1% (fijn gemalen, van nature rijk aan glucosamine en chondroïtine), yucca schidigera', true, now(), 'sha256:130bc0025c9b88d5427d38deca27324c8c521e40c2fac315a6bf2f65349c4b2d', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- GranataPet — Mini Royal paard Mono (1 kg)
-- bron: https://www.granatapet.de/pferd-mono-1-kg-191333
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('GranataPet', 'Mini Royal paard Mono', 'kibble', '1 kg', '4260165191333', 'https://www.granatapet.de/pferd-mono-1-kg-191333', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'paard 38% (vers paardenvlees 26%, paardenvlees gedroogd en fijn gemalen 12% ), erwten 25%, gedroogde zoete aardappel 22%, koolzaadolie 6%, bietenpulp (ontsuikerd) 5%, granaatappelpitjes 2% (gedroogd en fijn gemalen), mineralen 0,8%, cichorei 0,5% (fijn gemalen, met natuurlijke FOS en inuline), vitaminen 0,5%, Nieuw-Zeelandse groenlipmossel 0,1% (fijn gemalen, van nature rijk aan glucosamine en chondroïtine), yucca schidigera 0,1%', true, now(), 'sha256:f437408fd7a8323d7bb9c2f847001b627d29be383eefdb44fd3ec6be06067dba', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- GranataPet — Natural Taste paard Mono (4 kg)
-- bron: https://www.granatapet.de/pferd-mono-4-kg-191098
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('GranataPet', 'Natural Taste paard Mono', 'kibble', '4 kg', '4260165191098', 'https://www.granatapet.de/pferd-mono-4-kg-191098', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'paard 38% (vers paardenvlees 26%, paardenvlees gedroogd en fijn gemalen 12% ), erwten 25%, gedroogde zoete aardappel 22%, koolzaadolie 6%, bietenpulp (ontsuikerd) 5%, granaatappelpitjes 2% (gedroogd en fijn gemalen), mineralen 0,8%, cichorei 0,5% (fijn gemalen, met FOS en inuline), vitaminen 0,5%, Nieuw-Zeelandse groenlipmossel 0,1% (fijn gemalen, van nature rijk aan glucosamine en chondroïtine), yucca schidigera 0,1%', true, now(), 'sha256:537d32532b20753690c589c61ce78fc69ab51704aae338fb77c9fce656fc4fb9', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- GranataPet — Liebling's Mahlzeit PUR gevogelte (400 g)
-- bron: https://www.granatapet.de/gefluegel-400-g-186070
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('GranataPet', 'Liebling''s Mahlzeit PUR gevogelte', 'wet', '400 g', '4260165186070', 'https://www.granatapet.de/gefluegel-400-g-186070', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gevogeltevlees 70% (bestaande uit spiervlees, hart, lever, gevogeltemaag), gevogeltebouillon 27,4%, granaatappelpitjes 1% (gedroogd en fijn gemalen), mineralen 1%, zalmolie 0,5%, groenlipmossel 0,1% (fijn gemalen, van nature rijk aan glucosamine en chondroïtine)', true, now(), 'sha256:26222af76fd28d2e20eeddf7b995814b36bbad861a341ae9d45e276309d8aa1c', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- GranataPet — Liebling's Mahlzeit PUR paard (400 g)
-- bron: https://www.granatapet.de/pferd-400-g-186131
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('GranataPet', 'Liebling''s Mahlzeit PUR paard', 'wet', '400 g', '4260165186131', 'https://www.granatapet.de/pferd-400-g-186131', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'paardenvlees 70% (bestaande uit spiervlees, hart, lever), paardenbouillon 27,4%, granaatappelpitjes 1% (gedroogd en fijn gemalen), mineralen 1%, zalmolie 0,5%, groenlipmossel 0,1% (fijn gemalen, van nature rijk aan glucosamine en chondroïtine)', true, now(), 'sha256:d45cfeb02a192f08f70a525c75cfb0e5f019525d8ca60b7c00501cfb25d073de', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- GranataPet — Liebling's Mahlzeit lam & aardappel (400 g)
-- bron: https://www.granatapet.de/lamm-kartoffel-400-g-183987
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('GranataPet', 'Liebling''s Mahlzeit lam & aardappel', 'wet', '400 g', '4260165183987', 'https://www.granatapet.de/lamm-kartoffel-400-g-183987', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'lamsvlees 65% (bestaande uit spiervlees, hart, lever, long, pens), lamsbouillon 23,4%, aardappel 5%, hüttenkäse 2%, venkel 2%, granaatappelpitjes 1% (gedroogd en fijn gemalen), mineralen 1%, olijfolie 0,5%, groenlipmossel 0,1% (fijn gemalen, van nature rijk aan glucosamine en chondroïtine)', true, now(), 'sha256:f91ff40fc7967fa8a4da2723f3f11a2e5a007f011fee048f5c2cbeba0639ecdb', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- GranataPet — Liebling's Mahlzeit kip & pastinaak (400 g)
-- bron: https://www.granatapet.de/huhn-pastinaken-400-g-192149
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('GranataPet', 'Liebling''s Mahlzeit kip & pastinaak', 'wet', '400 g', '4260165192149', 'https://www.granatapet.de/huhn-pastinaken-400-g-192149', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'kippenvlees 65% (bestaande uit spiervlees, hart, lever, maag), kippenbouillon 26,3%, pastinaak 5%, vlierplant 1%, granaatappelpitjes 1% (gedroogd en fijn gemalen), mineralen 1%, lijnzaadolie 0,5%, basilicum 0,1%, groenlipmossel 0,1% (fijn gemalen, van nature rijk aan glucosamine en chondroïtine)', true, now(), 'sha256:d449881cb064789797989a480cc0ca33d0fb3a9911c2c83f1f9152ff7a1a95f9', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Markus-Mühle — FREILAND Gans (5 / 12 kg)
-- bron: https://markus-muehle.de/freiland/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Markus-Mühle', 'FREILAND Gans', 'kibble', '5 / 12 kg', null, 'https://markus-muehle.de/freiland/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gemalen gedroogd ganzenvlees 31%, gestoomde aardappelen 25%, gestoomd groentemengsel (bestaande uit: wortels, selderij, erwten, pastinaak), rode biet 6%, bietenpulp. koudgeperste hennepolie, witvisolie, appels 3%, gedroogd en gemalen kruidenmengsel (bestaande uit: brandnetelbladeren, heermoes, paardenbloem), lijnzaad, zeewiermeel, veen', true, now(), 'sha256:f70aef95ec62faf9000c0cd40d86ced98629d9a8fe78012c4c5f8525f852ceef', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Markus-Mühle — LUPO Sensitiv 24/10 (5 / 15 kg)
-- bron: https://markus-muehle.de/hundetrockenfutter-kaltgepresst/lupo-sensitiv/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Markus-Mühle', 'LUPO Sensitiv 24/10', 'kibble', '5 / 15 kg', null, 'https://markus-muehle.de/hundetrockenfutter-kaltgepresst/lupo-sensitiv/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gemalen gedroogd kippenvlees 33%, gewalst aardappelmeel 33%, rode biet, bietenpulp, mariadistelzaad, koudgeperst plantaardig oliemengsel (bestaande uit hennepolie en koolzaadolie), gelatine, algen, visolie, veen, lijnzaad, gedroogde cichorei, gedroogde brandnetels, gedroogde paardenbloembladeren, gedroogde yucca schidigera', true, now(), 'sha256:7d2780de7ff17332f0910a647d0d518cdda3aa53ccd3537a494a253177cd3cde', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Markus-Mühle — Black Angus Adult (1,5 / 5 / 15 kg)
-- bron: https://markus-muehle.de/hundetrockenfutter-kaltgepresst/black-angus/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Markus-Mühle', 'Black Angus Adult', 'kibble', '1,5 / 5 / 15 kg', null, 'https://markus-muehle.de/hundetrockenfutter-kaltgepresst/black-angus/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gemalen gedroogd Black Angus-vlees 17,3%, gemalen bruine volkorenrijst, gemalen gedroogd eendenvlees 9,7%, gemalen zeevis 6,6%, gemalen gierst, pompoen, gelatine, koudgeperst plantaardig oliemengsel (bestaande uit hennep- en koolzaadolie), bietenpulp, zeewiermeel, visolie, gedroogd en gemalen kruidenmengsel (bestaande uit brandnetelbladeren, heermoes, paardenbloem), gedroogde bosbessen, mariadistelzaad, venkelzaad, veen, lijnzaad, kiezelaarde 1,5%, mosselextract uit Perna Canaliculus 1,5%, zeeweekdiereiwit uit Perna Canaliculus 1%, gedroogde en gemalen yucca schidigera, eipoeder', true, now(), 'sha256:ed7bed48f2914289200e5be9b3d6ec4bf162ff38a7656457d4e1e95e7fa5bee1', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Markus-Mühle — Black Angus Junior (1,5 / 5 / 15 kg)
-- bron: https://markus-muehle.de/hundetrockenfutter-kaltgepresst/black-angus/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Markus-Mühle', 'Black Angus Junior', 'kibble', '1,5 / 5 / 15 kg', null, 'https://markus-muehle.de/hundetrockenfutter-kaltgepresst/black-angus/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gemalen gedroogd Black Angus-vlees 20,2%, gemalen bruine volkorenrijst, gemalen gedroogd eendenvlees 9,1%, zeevis 5,6%, gemalen volkorenmais, gemalen gierst, pompoen, gelatine, koudgeperst plantaardig oliemengsel (bestaande uit hennep- en koolzaadolie), zeewiermeel, visolie, bietenpulp, gedroogd veen 2%, kruidenmengsel, gedroogd en gemalen (bestaande uit brandnetelbladeren, heermoes, paardenbloem), gedroogde bosbessen, kiezelaarde 1,5%, mosselextract uit Perna Canaliculus 1,4%, groene mineralaarde 1,4%, zeeweekdiereiwit uit Perna Canaliculus 1%, venkelzaad, eipoeder, lijnzaad, gedroogde en gemalen yucca schidigera', true, now(), 'sha256:bbc1f197f4b22f420bfed3ec4655590eff7943cc0c6e511dd5d838ce05333618', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Markus-Mühle — Black Angus Senior (1,5 / 5 / 15 kg)
-- bron: https://markus-muehle.de/hundetrockenfutter-kaltgepresst/black-angus/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Markus-Mühle', 'Black Angus Senior', 'kibble', '1,5 / 5 / 15 kg', null, 'https://markus-muehle.de/hundetrockenfutter-kaltgepresst/black-angus/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gemalen gedroogd Black Angus-vlees 17%, gemalen bruine volkorenrijst, gemalen gedroogd eendenvlees 8,5%, gemalen zeevis 5,4%, gemalen gierst, pompoen, gelatine, bietenpulp, koudgeperst plantaardig oliemengsel, zeewiermeel, visolie, gedroogd veen 2%, mariadistelzaad, venkelzaad, kruidenmengsel, gedroogd en gemalen (bestaande uit brandnetelbladeren, heermoes, paardenbloem), gedroogde bosbessen, lijnzaad, kiezelaarde 1,5%, mosselextract uit Perna Canaliculus 1,5%, groene mineralaarde 1,5%, zeeweekdiereiwit uit Perna Canaliculus 1%, gedroogde en gemalen yucca schidigera, eipoeder, tagetesbloemen', true, now(), 'sha256:42999b1131c0871e99890bc3eeba1c74f3355b66e9240fe6b556fd5fbd108044', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Markus-Mühle — Rotwild Hirsch (5 / 15 kg)
-- bron: https://markus-muehle.de/hundetrockenfutter-kaltgepresst/rotwild-hirsch/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Markus-Mühle', 'Rotwild Hirsch', 'kibble', '5 / 15 kg', null, 'https://markus-muehle.de/hundetrockenfutter-kaltgepresst/rotwild-hirsch/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gemalen gedroogd barbarie-eendvlees 18%, gemalen bruine volkorenrijst, gemalen gedroogd hertenvlees 9,4%, aardappelvlokken, gemalen gedroogde zeevis 6,3%, gemalen gierst, koudgeperst plantaardig oliemengsel (bestaande uit: koolzaad- en hennepolie), gelatine, gedroogde en gemalen rode biet, gedroogde en gemalen wildbeenderen, zeewiermeel, gedroogde en gemalen kruidenplanten (bestaande uit brandnetelbladeren, heermoes, paardenbloem), lijnzaad, gedroogd veen 2%, bosvruchten (bestaande uit rode bessen, frambozen, bramen, bosbessen, rozenbottels, vossenbessen) 2%, venkelzaad, gedroogde en gemalen yucca schidigera, eipoeder, kiezelaarde 1,5%, mosselextract uit Perna Canaliculus 1,5%', true, now(), 'sha256:58fd3bc8abbc62e9138e8a0b2de14c347ae6e18f9ef3a0b73e5d995fc98fbba4', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Markus-Mühle — Weidelamm (5 / 15 kg)
-- bron: https://markus-muehle.de/hundetrockenfutter-kaltgepresst/weidelamm/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Markus-Mühle', 'Weidelamm', 'kibble', '5 / 15 kg', null, 'https://markus-muehle.de/hundetrockenfutter-kaltgepresst/weidelamm/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gemalen gedroogd lammenvlees 20%, gemalen bruine volkorenrijst, groentemengsel (bestaande uit erwten, rode biet, wortels, pompoen, bietenpulp) 18%, gemalen gierst 15%, koudgeperste hennepolie 4,5%, zeewiermeel, gelatine, visolie 3%, gedroogd en gemalen kruidenmengsel (bestaande uit brandnetelbladeren, heermoes, paardenbloem), gedroogde bosbessen, lijnzaad, mariadistelzaad, venkelzaad, kiezelaarde, mosselextract uit Perna Canaliculus, groene mineralaarde, gedroogde en gemalen yucca schidigera, eipoeder', true, now(), 'sha256:13d8892b35ccb1c4d660b7deb697d7f0398def99521c010f8ed4cf2af70c8175', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Markus-Mühle — NaturNah (1,5 / 5 / 15 kg)
-- bron: https://markus-muehle.de/hundetrockenfutter-kaltgepresst/naturnah/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Markus-Mühle', 'NaturNah', 'kibble', '1,5 / 5 / 15 kg', null, 'https://markus-muehle.de/hundetrockenfutter-kaltgepresst/naturnah/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gemalen gedroogd kippenvlees 28%, gemalen volkorenmais, gemalen volkorenrijst, gemalen wildpens 5%, gemalen wildbeenderen 5%, rode biet, gedroogde bietenpulp, visolie, koudgeperste koolzaadolie, veen, vruchtenmengsel (bestaande uit: appels, peren, zwarte bessen, acerola, bananen, papaja''s), kruidenmengsel (bestaande uit: brandnetelbladeren, heermoes, viooltjes, marjolein, paardenbloem), lijnzaad, zeewieren, gedroogde en gemalen yucca schidigera, eipoeder 0,5%', true, now(), 'sha256:4d1910ba5e4c5b2bcb220cfc39dc3c70554a204d8c2c50e532806b4b6a81e807', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Markus-Mühle — True Nature (1,5 / 5 / 15 kg)
-- bron: https://markus-muehle.de/hundetrockenfutter-kaltgepresst/true-nature/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Markus-Mühle', 'True Nature', 'kibble', '1,5 / 5 / 15 kg', null, 'https://markus-muehle.de/hundetrockenfutter-kaltgepresst/true-nature/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'gedroogd en gemalen Zwitsers kippenvlees 29%, gestoomde aardappelen 16%, bruine volkorenrijst, gedroogd witvisvlees, gemalen 6%, gepureerde groenten (bestaande uit: bieten, cichorei, selderij, snijbiet, pastinaak, peterseliewortel), koudgeperste plantaardige oliën (bestaande uit: lijnolie, koolzaadolie, walnootolie, teunisbloemolie), kastanjemeel, rijstkiemen, gedroogd zeevruchtenmengsel 4% (bestaande uit: zeewieren, mosselvlees, schaaldierenvlees), visolie, gedroogd alpenkruidenmengsel 3% (bestaande uit: venkel, brandnetels, paardenbloem, karwij, kamille, tijm, frambozenbladeren, braambladeren, gentiaan), alfalfa, fenegriekzaad, mariadistelzaad, veen, rozemarijnolie, tagetesbloemen', true, now(), 'sha256:2cc801173d0d2223c0226f5f115ff3e41216eed44c0ab4f116fdd0792e002f67', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Markus-Mühle — Veggie (1 / 5 / 12 kg)
-- bron: https://markus-muehle.de/hundetrockenfutter-kaltgepresst/veggie/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Markus-Mühle', 'Veggie', 'kibble', '1 / 5 / 12 kg', null, 'https://markus-muehle.de/hundetrockenfutter-kaltgepresst/veggie/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'groentemengsel (bestaande uit erwten 50%, gedroogde wortels 15%, rode biet 15%, pastinaak, selderij, cichorei) 45%, gedroogde en gemalen zoete lupinen 15%, hennepmeel, maiskiemen, rijstkiemen, aardappelmeel, lijnzaad 4%, oliemengsel (bestaande uit: koolzaadolie, notenolie, tarwekiemolie), gedroogd en gemalen vruchtenmengsel (bestaande uit: appels 45%, peren 45%, rode bessen, aroniabessen, rozenbottels, bosbessen), bietenpulp, algenmengsel (bestaande uit: Ascophyllum nodosum, Schizochytrium), mariadistelzaad 1%, gedroogde en gemalen kruidenplanten (brandnetelbladeren, heermoes, paardenbloem) 1%, groene mineralaarde, yucca schidigera', true, now(), 'sha256:69b1fba32b084a948666ece5fe3d004cc425a25689b797d1c3c9c1708e1cac84', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Prins Petfoods — ProCare Puppy & Junior (null)
-- bron: https://prinspetfoods.com/product/procare-puppy-junior/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Puppy & Junior', 'kibble', 'null', null, 'https://prinspetfoods.com/product/procare-puppy-junior/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogeltemeel (21,0%), maïs, tarwe, sorghum, rundertalg, gehydrolyseerd gevogelte-eiwit (7,5%), gedroogde cichoreipulp, cellulose, zonnebloemolie, fructo-oligosachariden (FOS), algenolie (0,3%), gehydrolyseerde gist.', true, now(), 'sha256:decbbb7b74094224c3a7dbb296b38b85c7b363097c2d24adb8adf2091a6d6286', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Prins Petfoods — ProCare Standard Fit (null)
-- bron: https://prinspetfoods.com/product/procare-standard-fit/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Standard Fit', 'kibble', 'null', null, 'https://prinspetfoods.com/product/procare-standard-fit/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogeltemeel (21,0%), maïs, tarwe, sorghum, gehydrolyseerd gevogelte-eiwit (4,5%), gedroogde cichoreipulp (2,0%), rundertalg, cellulose, zonnebloemolie, fructo-oligosachariden (FOS) (0,5%), algenolie (0,2%), gehydrolyseerde gist.', true, now(), 'sha256:a220818794823b9938b2ee64ab697f4cfc9b40964bbc83327ed2a1fd6ca52144', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Prins Petfoods — ProCare Mini Standard Fit (null)
-- bron: https://prinspetfoods.com/product/procare-mini-standard-fit/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Mini Standard Fit', 'kibble', 'null', null, 'https://prinspetfoods.com/product/procare-mini-standard-fit/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogeltemeel (21,0%), maïs, tarwe, sorghum, gehydrolyseerd gevogelte-eiwit (4,5%), gedroogde cichoreipulp (2,0%), rundertalg, cellulose, zonnebloemolie, fructo-oligosachariden (FOS) (0,5%), algenolie (0,2%), gehydrolyseerde gist.', true, now(), 'sha256:a220818794823b9938b2ee64ab697f4cfc9b40964bbc83327ed2a1fd6ca52144', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Prins Petfoods — ProCare Super Active (null)
-- bron: https://prinspetfoods.com/product/procare-super-active/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Super Active', 'kibble', 'null', null, 'https://prinspetfoods.com/product/procare-super-active/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogeltemeel (21,0%), maïs, tarwe, sorghum, rundertalg, gehydrolyseerd gevogelte-eiwit (7,5%), gedroogde cichoreipulp (2,0%), cellulose, zonnebloemolie, fructo-oligosachariden (FOS) (0,5%), algenolie (0,2%), gehydrolyseerde gist.', true, now(), 'sha256:66527316974722a137ba4044bb20c06ca34213d0bb6d360d2bb6919c882c1efb', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Prins Petfoods — ProCare Senior Support (null)
-- bron: https://prinspetfoods.com/product/procare-senior-support/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Senior Support', 'kibble', 'null', null, 'https://prinspetfoods.com/product/procare-senior-support/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, gevogeltemeel (11,0%), gehydrolyseerd gevogelte-eiwit (10,0%), tarwe, sorghum, rundervet, gedroogde cichoreipulp, cellulose, aardappelzetmeel, zonnebloemolie, fructo-oligosachariden (FOS), gehydrolyseerde gist, algenolie (0,2%), glucosamine (0,05%), chondroïtine (0,05%).', true, now(), 'sha256:11ae7b7129139b2e390da931bdf7f9e007d6ae0d33a395564ed34bccd9d1eb95', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Prins Petfoods — ProCare Light Low calorie (null)
-- bron: https://prinspetfoods.com/product/procare-light-low-calorie/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Light Low calorie', 'kibble', 'null', null, 'https://prinspetfoods.com/product/procare-light-low-calorie/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gevogeltemeel (26,0%), tarwe, maïs, cellulose (8,8%), maïsgluten, gehydrolyseerd gevogelte-eiwit (4,5%), gedroogde cichoreipulp (4,0%), rundervet, zonnebloemolie, fructo-oligosachariden (FOS) (0,5%), gehydrolyseerde gist, algenolie (0,2%).', true, now(), 'sha256:63851a3bbf2530e2625523f76a3a2afa2405643035ed2132fc0b038f8db081dc', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Prins Petfoods — ProCare Lamb & Rice (null)
-- bron: https://prinspetfoods.com/product/procare-lamb-rice/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Lamb & Rice', 'kibble', 'null', null, 'https://prinspetfoods.com/product/procare-lamb-rice/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Maïs, rijst (21,0%), lamsmeel (18,0%), rundertalg, maïsgluten, aardappeleiwit, aardappelzetmeel, gedroogde cichoreipulp (2,0%), cellulose, zonnebloemolie, fructo-oligosachariden (FOS) (0,5%), algenolie (0,2%), gehydrolyseerde gist.', true, now(), 'sha256:337b4e24d0843cbf7d3ddd790a8d3cfde852ed032d505850576b4286625fb556', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Prins Petfoods — ProCare Grainfree Sensible (null)
-- bron: https://prinspetfoods.com/product/procare-grainfree-sensible/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Grainfree Sensible', 'kibble', 'null', null, 'https://prinspetfoods.com/product/procare-grainfree-sensible/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedehydrateerde eend (29,0%), aardappelzetmeel, erwten, rundertalg, aardappeleiwit, gedroogde cichoreipulp, cellulose, zonnebloemolie, fructo-oligosachariden (FOS), kaliumchloride, algenolie (0,3%), gehydrolyseerde gist.', true, now(), 'sha256:32b5a4c8ec3c1ae3b1122e22c4a2228253f0e594286ab846e33b73fdf5bfe20e', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Prins Petfoods — ProCare Sport-Life Excellent (null)
-- bron: https://prinspetfoods.com/product/procare-sport-life-excellent/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'ProCare Sport-Life Excellent', 'kibble', 'null', null, 'https://prinspetfoods.com/product/procare-sport-life-excellent/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedehydrateerde kip en kalkoen (30%), maïs, tarwe, dierlijk vet (rund), maïsgluten, gehydrolyseerd gevogelte-eiwit (4,5%), maltodextrine, hemoglobinepoeder, gedroogde cichoreipulp, zalmolie, zonnebloemolie, inuline, gisthydrolysaat.', true, now(), 'sha256:2dbeda75191c5561ed872d43c3862c92ab4fc363fc18a7c2925cd033d8797c62', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Prins Petfoods — Fit Selection Chicken & Rice (null)
-- bron: https://prinspetfoods.com/product/fit-selection-chicken-rice/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Prins Petfoods', 'Fit Selection Chicken & Rice', 'kibble', 'null', null, 'https://prinspetfoods.com/product/fit-selection-chicken-rice/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Gedehydrateerde kip (25%), maïs, tarwe, rijst (9%), dierlijk vet (kip), bietenpulp (2,3%), gehydrolyseerde lever, visolie (0,5%), gist, kaliumchloride, natriumchloride, yucca schidigera-extract (0,1%).', true, now(), 'sha256:3fc54328fee8409428211e00c42669429b862c0075f02a68ab0fe35e20f15959', 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.' from p;

-- Renske — Vers bereide Kip met rund (95 / 185 / 375 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/kip-met-rund-375g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Vers bereide Kip met rund', 'wet', '95 / 185 / 375 g', null, 'https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/kip-met-rund-375g', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip 50%, rund 10%, gebroken rijst 3,5%, wortelen 3%, erwten 1%, gedroogde algen (fucus vesiculosus) 0,06%, Xylo-oligosacchariden, duindoorn, yucca schidigera extract.', true, now(), 'sha256:9564e94ac9a8a99d9f9f26a2920cad241ba37fe4e436980cca2510da5489dded', null from p;

-- Renske — Vers bereide Lam graanvrij (95 / 185 / 375 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/lam-graanvrij-375g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Vers bereide Lam graanvrij', 'wet', '95 / 185 / 375 g', null, 'https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/lam-graanvrij-375g', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lam 70%, aardappel 4%, olijfolie 2,4%, erwten 1%, wortelen 1%, mineralen 0,5%, gedroogde algen (fucus vesiculosus) 0,3%, Xylo-oligosacchariden, duindoorn, yucca schidigera extract.', true, now(), 'sha256:1c3d755c3b49c1e4455cfc675eb205af6bedb6a24fb9942ba749dc6b6d9cb192', null from p;

-- Renske — Vers bereide Zalm graanvrij (95 / 185 / 375 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/zalm-graanvrij-375g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Vers bereide Zalm graanvrij', 'wet', '95 / 185 / 375 g', null, 'https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/zalm-graanvrij-375g', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Zalm 55%, aardappel 10%, gedroogde algen (fucus vesiculosus) 0,06%, mineralen 0,04%, Xylo-oligosacchariden, duindoorn, yucca schidigera extract.', true, now(), 'sha256:bc542bec431707daa795cb639f40ccd4bb5b307b29864c41fcb7b38b70e08cf1', null from p;

-- Renske — Vers bereide Konijn met eend (95 / 185 / 375 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/konijn-met-eend-375g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Vers bereide Konijn met eend', 'wet', '95 / 185 / 375 g', null, 'https://www.renske.com/nl/producten/hondenvoer/vers-bereide-maaltijden/konijn-met-eend-375g', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Konijn 40%, eend 20%, erwten 3%, wortelen 1%, gedroogde algen (fucus vesiculosus) 0,06%, Xylo-oligosacchariden, duindoorn, yucca schidigera extract.', true, now(), 'sha256:7ef624488a696d2aa61ad6b7d07780a7b8a197005a39ec00c2015c5d0b15a5c5', null from p;

-- Renske — Vers gestoomde Kip (395 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/kip-395g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Vers gestoomde Kip', 'wet', '395 g', null, 'https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/kip-395g', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers gestoomde kip (80%), erwten (3%), bruine rijst (2%), wortelen (1%), mineralen, gedroogd zeewier (0,45%), peterselie, rozemarijn, cichoreiwortel extract (als bron van prebiotica fructo-oligosacchariden), glucosamine (0,05%), chondroitine (0,05%) ,yucca extract.', true, now(), 'sha256:6e710853f2f7a32d78a59011057ab983c6f0836f38e8d32a895f19acbf9230a9', null from p;

-- Renske — Vers gestoomde Eend met konijn (395 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/eend-met-konijn-395g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Vers gestoomde Eend met konijn', 'wet', '395 g', null, 'https://www.renske.com/nl/producten/hondenvoer/vers-gestoomde-maaltijden/eend-met-konijn-395g', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Eend (62%), konijn (18%), erwten (3%), bruine rijst (2%), wortelen (1%), mineralen, gedroogd zeewier (0,45%), peterselie, rozemarijn, cichoreiwortel extract (als bron van prebiotica fructo-oligosacchariden), glucosamine (50 mg/kg), chondroitine (50 mg/kg) ,yucca extract.', true, now(), 'sha256:d39ae81c09166da426ff3cbc2a46b082d28c591af75df29a73475f5fcfdca8e0', null from p;

-- Renske — Biologisch Vers Gestoomde Kip (500 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/renske-biologische-hondenvoeding/vers-gestoomde-kip-500g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Biologisch Vers Gestoomde Kip', 'wet', '500 g', null, 'https://www.renske.com/nl/producten/hondenvoer/renske-biologische-hondenvoeding/vers-gestoomde-kip-500g', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Biologisch gecertificeerde kip (vleugels, nek, lever, karkas) (68%), biologische boekweit, biologische kalkoen (vleugels, nek, karkas) (5%), biologische wortelen, biologisch lijnzaad (5%), biologische kruidenmix (brandnetel, rozenbottel, anijs, kamille, melisse, Echinacea) (1%), mineralen.', true, now(), 'sha256:6d175e5e3dfb8413bf4b49fd12e0a88324bc926bbb86be341b91e5c5e31d9536', null from p;

-- Renske — Vers Ingevroren Kip & Rund (600 g)
-- bron: https://www.renske.com/nl/producten/hondenvoer/renske-vers-ingevroren/kip-rund-600g
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Vers Ingevroren Kip & Rund', 'raw', '600 g', null, 'https://www.renske.com/nl/producten/hondenvoer/renske-vers-ingevroren/kip-rund-600g', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers ingevroren kippenvlees (43%), vers ingevroren rund (35%) (long, maag, lever), wortel (8%), spinazie (6%), lijnzaad (4%), rode bessen (2%), mineralen, koolzaadolie.', true, now(), 'sha256:e871017f14f4314b11263b8928a291be7eb7c99585cd343154d472beedda4302', null from p;

-- Renske — Super Premium Vers bereide Kip (600 g / 2 / 6,5 / 12 kg)
-- bron: https://www.renske.com/nl/producten/hondenvoer/super-premium/vers-bereide-kip
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'Super Premium Vers bereide Kip', 'kibble', '600 g / 2 / 6,5 / 12 kg', null, 'https://www.renske.com/nl/producten/hondenvoer/super-premium/vers-bereide-kip', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Vers bereide kip (26%), gedroogd gevogelte (19%), aardappel (15%), zoete aardappel, bietenpulp, gevogeltevet, gedroogde krill, gedroogd ei, kippenbouillon, biergist, mineralen, lijnzaad (1,2%), zeewier, beta-glucanen, gedroogde cranberries (0,04%), gedroogde appel (0,04%), gedroogde peer (0,04%), gedroogde broccoli (0,04%), gedroogde tomaat, glucosamine (170 mg/kg), methylsulfonylmethaan (MSM) (170 mg/kg), chondroïtinesulfaat (120 mg/kg).', true, now(), 'sha256:820fdf28579ecf3d0aa9592cf42e4a86f3395c94b1c5bf49801c6ff79ba0c323', null from p;

-- Renske — M.O.P. Vers bereide Kip & Rijst (600 g / 3 / 6,5 / 12 kg)
-- bron: https://www.renske.com/nl/producten/hondenvoer/mop-droogvoer/vers-bereide-kip-met-rijst
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Renske', 'M.O.P. Vers bereide Kip & Rijst', 'kibble', '600 g / 3 / 6,5 / 12 kg', null, 'https://www.renske.com/nl/producten/hondenvoer/mop-droogvoer/vers-bereide-kip-met-rijst', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Verse kip (30%), rijst (28%), gedroogd gevogelte (12%), havermeel uit gepelde zaden, maïs, lijnzaad (5%), erwtenmeel, bietenpulp, gemalen zeezoöplankton (krill) (3%), gedroogde biergist, gedroogd johannesbroodmeel, dicalciumfosfaat, gevogeltevet, plantaardige oliën (palm en kokosnoot), gevogeltelever (gehydroliseerd), steenzout.', true, now(), 'sha256:9fb1dd03320f36167624057e4183cf39fd84ca5fbdebb945932b19fba6a43912', null from p;

-- Smuldier — Complete maaltijd Vlees (400 g)
-- bron: https://smuldier.nl/product/smuldier-complete-maaltijd-400g-vlees/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smuldier', 'Complete maaltijd Vlees', 'raw', '400 g', null, 'https://smuldier.nl/product/smuldier-complete-maaltijd-400g-vlees/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kippenvlees (28,3%), runderpens 25,0%, bevleesde kippenkarkassen 20,5%, bevleesde runderribben 12,5%, runderlever 5,0%, rundermilten 3,8%, rundernieren 3,1%, vitamines en mineralen 1,0%, zonnebloemolie 0,8%.', true, now(), 'sha256:b026b2d2591681bcb2c8da256934d7ac94b724a01cc9f3bcff241459d6788956', null from p;

-- Smuldier — Complete maaltijd Pens & Vlees (400 g)
-- bron: https://smuldier.nl/product/smuldier-complete-maaltijd-400g-pens-vlees/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smuldier', 'Complete maaltijd Pens & Vlees', 'raw', '400 g', null, 'https://smuldier.nl/product/smuldier-complete-maaltijd-400g-pens-vlees/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Runderpens 49,4%, bevleesde kippenkarkassen 31,9%, runderlever 10,0%, rundermilten 3,8%, rundernieren 3,1%, vitamines en mineralen 1,0%, zonnebloemolie 0,8%.', true, now(), 'sha256:50e60a66f578a7211320832f6a19a6b1c04dd874742163ea0372d4cbf16d6ca2', null from p;

-- Smuldier — Complete maaltijd Kip (400 g)
-- bron: https://smuldier.nl/product/kip-complete-maaltijd-400g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smuldier', 'Complete maaltijd Kip', 'raw', '400 g', null, 'https://smuldier.nl/product/kip-complete-maaltijd-400g/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Bevleesde kippenkarkassen 57,6%, kippenvlees 37,5%, rijst 3,1%, vitamines en mineralen 1,0%, zonnebloemolie 0,8%.', true, now(), 'sha256:82e800aa1268a2d20f0f22c7a80a8ae8c2b4485e8af364de446e7dfa102e5d5c', null from p;

-- Smuldier — Complete maaltijd Lam (400 g)
-- bron: https://smuldier.nl/product/smuldier-complete-maaltijd-400g-lam/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smuldier', 'Complete maaltijd Lam', 'raw', '400 g', null, 'https://smuldier.nl/product/smuldier-complete-maaltijd-400g-lam/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Lamspens 37,5%, bevleesde kippenkarkassen 21,5%, kippenvlees 18,7%, lamsvlees 12,5%, lamsorganen 8,8%, vitamines en mineralen 1%.', true, now(), 'sha256:2b81809a096f64a7a24cdb60b6b34b1f06acb11369df17143125fdcb215e60b2', null from p;

-- Smuldier — Complete maaltijd Eend (400 g)
-- bron: https://smuldier.nl/product/smuldier-complete-maaltijd-400g-eend/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smuldier', 'Complete maaltijd Eend', 'raw', '400 g', null, 'https://smuldier.nl/product/smuldier-complete-maaltijd-400g-eend/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Bevleesde eendenkarkassen 59%, kippenvlees 30%, kippenlever 7,5%, kippenhart 2,5%, vitamines en mineralen 1%.', true, now(), 'sha256:7f01fcbd53734f107c663b0c9e9d67d3bcf227479b21289a589bb863207e0c09', null from p;

-- Smuldier — Complete maaltijd Hart (400 g)
-- bron: https://smuldier.nl/product/hart-complete-maaltijd-400g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smuldier', 'Complete maaltijd Hart', 'raw', '400 g', null, 'https://smuldier.nl/product/hart-complete-maaltijd-400g/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Bevleesde kippenkarkassen 53,1%, runderhart 26,3%, kippenvlees 18,8%, vitamines en mineralen 1,0%, zonnebloemolie 0,8%.', true, now(), 'sha256:566fe73cb8118fd72e3543419b2d69e1f692be39eb5c44cb54573000363bb10c', null from p;

-- Smuldier — Complete maaltijd Pens & Hart (400 g)
-- bron: https://smuldier.nl/product/pens-hart-complete-maaltijd-400g/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smuldier', 'Complete maaltijd Pens & Hart', 'raw', '400 g', null, 'https://smuldier.nl/product/pens-hart-complete-maaltijd-400g/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Runderpens 36,3%, bevleesde kippenkarkassen 35,6%, runderhart 26,3%, vitamines en mineralen 1,0%, zonnebloemolie 0,8%.', true, now(), 'sha256:74eb27a9812803e5986f1434dba142128eb79bbbc10f87a96965f009c36154c1', null from p;

-- Smuldier — Complete maaltijd Eend & Rund (400 g)
-- bron: https://smuldier.nl/product/smuldier-complete-maaltijd-400g-eend-rund/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smuldier', 'Complete maaltijd Eend & Rund', 'raw', '400 g', null, 'https://smuldier.nl/product/smuldier-complete-maaltijd-400g-eend-rund/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kippenvlees 34,0%, bevleesde eendenkarkassen 27,7%, bevleesde runderribben 20,0%, runderlever 8,0%, rundernieren 4,0%, rundermilten 4,0%, zonnebloemolie 1,3%, vitamines en mineralen 1,0%.', true, now(), 'sha256:52258a04257b22fb32861cf2b1792db3f7948236421ce721d9f134eb5b2af029', null from p;

-- Smuldier — Vers vlees Maaltijd Rund (300 g)
-- bron: https://smuldier.nl/product/smuldier-vers-vlees-maaltijd-300g-rund/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smuldier', 'Vers vlees Maaltijd Rund', 'wet', '300 g', null, 'https://smuldier.nl/product/smuldier-vers-vlees-maaltijd-300g-rund/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Rund 70% (rundvlees, runderlong, runderlever, runderpens), bouillon, vitamines & mineralen.', true, now(), 'sha256:63421e95fe66b699287030aef73bcfd3f972f2097634aa595b5a1502051039a8', null from p;

-- Smuldier — Vers vlees Maaltijd Kip (300 g)
-- bron: https://smuldier.nl/product/smuldier-vers-vlees-maaltijd-300g-kip/
with p as (
  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)
  values ('Smuldier', 'Vers vlees Maaltijd Kip', 'wet', '300 g', null, 'https://smuldier.nl/product/smuldier-vers-vlees-maaltijd-300g-kip/', date '2026-10-19', true)
  returning id
)
insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)
select id, 'Kip 70% (kippenhart, kippenvlees, kippenmaag, kippenlever, kippennek, kippenvet), bouillon, vitamines & mineralen.', true, now(), 'sha256:cd75cacfd4cf02a05cdb71c7822446c2b5635684128d26fc3fa9497db33af7ca', null from p;

commit;

-- Controle na het plakken:
select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note
  from public.products p
  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current
 where rv.imported_at > now() - interval '1 hour'
 order by p.brand, p.name;
