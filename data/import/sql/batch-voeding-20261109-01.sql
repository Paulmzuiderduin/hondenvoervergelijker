begin;

-- Ultra Premium Direct — Graanvrije brokken met verse kip voor volwassen honden van alle groottes (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.ultrapremiumdirect.nl/producten/graanvrije-brokken-verse-kip-volwassen-honden-alle-formaten/',
       nutrition_checked_at = '2026-11-09',
       nutrition_note = 'Overgenomen van de officiële Nederlandse productpagina. De energie is omgerekend van kcal/kg naar kcal/100 g. Ontbrekende waarden zijn niet door de fabrikant vermeld en blijven leeg.'
 where id = '63b37e17-0203-4578-8a5b-e02c8ea28f29';
delete from public.recipe_nutrition where recipe_version_id = '63b37e17-0203-4578-8a5b-e02c8ea28f29';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('63b37e17-0203-4578-8a5b-e02c8ea28f29', 'protein', 28, 'as-fed'),
  ('63b37e17-0203-4578-8a5b-e02c8ea28f29', 'fat', 15, 'as-fed'),
  ('63b37e17-0203-4578-8a5b-e02c8ea28f29', 'fiber', 3, 'as-fed'),
  ('63b37e17-0203-4578-8a5b-e02c8ea28f29', 'ash', 7, 'as-fed'),
  ('63b37e17-0203-4578-8a5b-e02c8ea28f29', 'moisture', 8, 'as-fed'),
  ('63b37e17-0203-4578-8a5b-e02c8ea28f29', 'kcal', 380, 'as-fed'),
  ('63b37e17-0203-4578-8a5b-e02c8ea28f29', 'calcium', 1.2, 'as-fed'),
  ('63b37e17-0203-4578-8a5b-e02c8ea28f29', 'phosphorus', 0.8, 'as-fed');

-- Ultra Premium Direct — Graanvrije brokken met verse zalm voor volwassen honden van alle groottes (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.ultrapremiumdirect.nl/producten/graanvrije-brokken-verse-zalm-volwassen-honden-alle-formaten/',
       nutrition_checked_at = '2026-11-09',
       nutrition_note = 'Overgenomen van de officiële Nederlandse productpagina. De energie is omgerekend van kcal/kg naar kcal/100 g. Ontbrekende waarden zijn niet door de fabrikant vermeld en blijven leeg.'
 where id = '34eceedc-15b5-4a4e-8abc-85cc0d1c3ccf';
delete from public.recipe_nutrition where recipe_version_id = '34eceedc-15b5-4a4e-8abc-85cc0d1c3ccf';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('34eceedc-15b5-4a4e-8abc-85cc0d1c3ccf', 'protein', 28, 'as-fed'),
  ('34eceedc-15b5-4a4e-8abc-85cc0d1c3ccf', 'fat', 14, 'as-fed'),
  ('34eceedc-15b5-4a4e-8abc-85cc0d1c3ccf', 'fiber', 3, 'as-fed'),
  ('34eceedc-15b5-4a4e-8abc-85cc0d1c3ccf', 'ash', 8, 'as-fed'),
  ('34eceedc-15b5-4a4e-8abc-85cc0d1c3ccf', 'moisture', 8, 'as-fed'),
  ('34eceedc-15b5-4a4e-8abc-85cc0d1c3ccf', 'kcal', 371.9, 'as-fed'),
  ('34eceedc-15b5-4a4e-8abc-85cc0d1c3ccf', 'calcium', 1.1, 'as-fed'),
  ('34eceedc-15b5-4a4e-8abc-85cc0d1c3ccf', 'phosphorus', 0.8, 'as-fed');

-- Ultra Premium Direct — Super Premium brokken voor grote puppy's (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.ultrapremiumdirect.nl/producten/brokken-super-premium-pour-puppies-van-groot-formaat/',
       nutrition_checked_at = '2026-11-09',
       nutrition_note = 'Overgenomen van de officiële Nederlandse productpagina. De energie is omgerekend van kcal/kg naar kcal/100 g. Ontbrekende waarden zijn niet door de fabrikant vermeld en blijven leeg.'
 where id = 'c72a8f37-000b-4701-8757-1821aa32fed0';
delete from public.recipe_nutrition where recipe_version_id = 'c72a8f37-000b-4701-8757-1821aa32fed0';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c72a8f37-000b-4701-8757-1821aa32fed0', 'protein', 30, 'as-fed'),
  ('c72a8f37-000b-4701-8757-1821aa32fed0', 'fat', 16, 'as-fed'),
  ('c72a8f37-000b-4701-8757-1821aa32fed0', 'fiber', 2.5, 'as-fed'),
  ('c72a8f37-000b-4701-8757-1821aa32fed0', 'ash', 8, 'as-fed'),
  ('c72a8f37-000b-4701-8757-1821aa32fed0', 'moisture', 8, 'as-fed'),
  ('c72a8f37-000b-4701-8757-1821aa32fed0', 'kcal', 385.5, 'as-fed'),
  ('c72a8f37-000b-4701-8757-1821aa32fed0', 'calcium', 1.5, 'as-fed'),
  ('c72a8f37-000b-4701-8757-1821aa32fed0', 'phosphorus', 1, 'as-fed');

-- Ultra Premium Direct — Super Premium brokken voor honden met een gevoelige spijsvertering (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.ultrapremiumdirect.nl/producten/brokken-super-premium-voor-gevoelige-honden/',
       nutrition_checked_at = '2026-11-09',
       nutrition_note = 'Overgenomen van de officiële Nederlandse productpagina. De energie is omgerekend van kcal/kg naar kcal/100 g. Ontbrekende waarden zijn niet door de fabrikant vermeld en blijven leeg.'
 where id = '9f6fda61-7283-4219-bf37-26c323292ad7';
delete from public.recipe_nutrition where recipe_version_id = '9f6fda61-7283-4219-bf37-26c323292ad7';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9f6fda61-7283-4219-bf37-26c323292ad7', 'protein', 28, 'as-fed'),
  ('9f6fda61-7283-4219-bf37-26c323292ad7', 'fat', 15, 'as-fed'),
  ('9f6fda61-7283-4219-bf37-26c323292ad7', 'fiber', 3, 'as-fed'),
  ('9f6fda61-7283-4219-bf37-26c323292ad7', 'ash', 8, 'as-fed'),
  ('9f6fda61-7283-4219-bf37-26c323292ad7', 'moisture', 8, 'as-fed'),
  ('9f6fda61-7283-4219-bf37-26c323292ad7', 'kcal', 380, 'as-fed'),
  ('9f6fda61-7283-4219-bf37-26c323292ad7', 'calcium', 1.5, 'as-fed'),
  ('9f6fda61-7283-4219-bf37-26c323292ad7', 'phosphorus', 1, 'as-fed');

-- Ultra Premium Direct — Super Premium brokken voor kleine en middelgrote puppy's (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.ultrapremiumdirect.nl/producten/brokken-super-premium-puppies-formaat-klein-medium/',
       nutrition_checked_at = '2026-11-09',
       nutrition_note = 'Overgenomen van de officiële Nederlandse productpagina. De energie is omgerekend van kcal/kg naar kcal/100 g. Ontbrekende waarden zijn niet door de fabrikant vermeld en blijven leeg.'
 where id = '9f07ed0d-2d66-4550-a2dd-45366f68674d';
delete from public.recipe_nutrition where recipe_version_id = '9f07ed0d-2d66-4550-a2dd-45366f68674d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('9f07ed0d-2d66-4550-a2dd-45366f68674d', 'protein', 30, 'as-fed'),
  ('9f07ed0d-2d66-4550-a2dd-45366f68674d', 'fat', 20, 'as-fed'),
  ('9f07ed0d-2d66-4550-a2dd-45366f68674d', 'fiber', 2, 'as-fed'),
  ('9f07ed0d-2d66-4550-a2dd-45366f68674d', 'ash', 7.5, 'as-fed'),
  ('9f07ed0d-2d66-4550-a2dd-45366f68674d', 'moisture', 8, 'as-fed'),
  ('9f07ed0d-2d66-4550-a2dd-45366f68674d', 'kcal', 409.9, 'as-fed'),
  ('9f07ed0d-2d66-4550-a2dd-45366f68674d', 'calcium', 1.4, 'as-fed'),
  ('9f07ed0d-2d66-4550-a2dd-45366f68674d', 'phosphorus', 0.9, 'as-fed');

-- Ultra Premium Direct — Graanvrije brokken met verse kip voor puppy's (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.ultrapremiumdirect.nl/producten/graanvrije-brokken-verse-kip-puppy/',
       nutrition_checked_at = '2026-11-09',
       nutrition_note = 'Overgenomen van de officiële Nederlandse productpagina. De energie is omgerekend van kcal/kg naar kcal/100 g. Ontbrekende waarden zijn niet door de fabrikant vermeld en blijven leeg.'
 where id = 'cf96b8f0-efec-4fb0-ab83-b745171920c9';
delete from public.recipe_nutrition where recipe_version_id = 'cf96b8f0-efec-4fb0-ab83-b745171920c9';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('cf96b8f0-efec-4fb0-ab83-b745171920c9', 'protein', 30, 'as-fed'),
  ('cf96b8f0-efec-4fb0-ab83-b745171920c9', 'fat', 18, 'as-fed'),
  ('cf96b8f0-efec-4fb0-ab83-b745171920c9', 'fiber', 2.5, 'as-fed'),
  ('cf96b8f0-efec-4fb0-ab83-b745171920c9', 'ash', 7, 'as-fed'),
  ('cf96b8f0-efec-4fb0-ab83-b745171920c9', 'moisture', 8, 'as-fed'),
  ('cf96b8f0-efec-4fb0-ab83-b745171920c9', 'kcal', 398.3, 'as-fed'),
  ('cf96b8f0-efec-4fb0-ab83-b745171920c9', 'calcium', 1.4, 'as-fed'),
  ('cf96b8f0-efec-4fb0-ab83-b745171920c9', 'phosphorus', 1, 'as-fed');

-- Ultra Premium Direct — Graanvrije brokken voor honden met een gevoelige spijsvertering (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.ultrapremiumdirect.nl/producten/graanvrije-brokken-voor-gevoelige-honden-in-alle-maten/',
       nutrition_checked_at = '2026-11-09',
       nutrition_note = 'Overgenomen van de officiële Nederlandse productpagina. De energie is omgerekend van kcal/kg naar kcal/100 g. Ontbrekende waarden zijn niet door de fabrikant vermeld en blijven leeg.'
 where id = '2c7a3c33-d29f-4f30-9cb3-ddabc3bf0739';
delete from public.recipe_nutrition where recipe_version_id = '2c7a3c33-d29f-4f30-9cb3-ddabc3bf0739';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('2c7a3c33-d29f-4f30-9cb3-ddabc3bf0739', 'protein', 30, 'as-fed'),
  ('2c7a3c33-d29f-4f30-9cb3-ddabc3bf0739', 'fat', 16, 'as-fed'),
  ('2c7a3c33-d29f-4f30-9cb3-ddabc3bf0739', 'fiber', 3, 'as-fed'),
  ('2c7a3c33-d29f-4f30-9cb3-ddabc3bf0739', 'ash', 8, 'as-fed'),
  ('2c7a3c33-d29f-4f30-9cb3-ddabc3bf0739', 'moisture', 8, 'as-fed'),
  ('2c7a3c33-d29f-4f30-9cb3-ddabc3bf0739', 'kcal', 381.8, 'as-fed'),
  ('2c7a3c33-d29f-4f30-9cb3-ddabc3bf0739', 'calcium', 1.5, 'as-fed'),
  ('2c7a3c33-d29f-4f30-9cb3-ddabc3bf0739', 'phosphorus', 1, 'as-fed');

-- Ultra Premium Direct — Light Super Premium brokken voor gesteriliseerde honden met overgewicht - Lam (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.ultrapremiumdirect.nl/producten/light-super-premium-brokken-voor-gesteriliseerde-honden-met-overgewicht/',
       nutrition_checked_at = '2026-11-09',
       nutrition_note = 'Overgenomen van de officiële Nederlandse productpagina. De energie is omgerekend van kcal/kg naar kcal/100 g. Ontbrekende waarden zijn niet door de fabrikant vermeld en blijven leeg.'
 where id = 'fb42b590-c2d5-444e-b522-a21f0d522cee';
delete from public.recipe_nutrition where recipe_version_id = 'fb42b590-c2d5-444e-b522-a21f0d522cee';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('fb42b590-c2d5-444e-b522-a21f0d522cee', 'protein', 28, 'as-fed'),
  ('fb42b590-c2d5-444e-b522-a21f0d522cee', 'fat', 12, 'as-fed'),
  ('fb42b590-c2d5-444e-b522-a21f0d522cee', 'fiber', 4.5, 'as-fed'),
  ('fb42b590-c2d5-444e-b522-a21f0d522cee', 'ash', 7.5, 'as-fed'),
  ('fb42b590-c2d5-444e-b522-a21f0d522cee', 'moisture', 8, 'as-fed'),
  ('fb42b590-c2d5-444e-b522-a21f0d522cee', 'kcal', 353.9, 'as-fed'),
  ('fb42b590-c2d5-444e-b522-a21f0d522cee', 'calcium', 1.5, 'as-fed'),
  ('fb42b590-c2d5-444e-b522-a21f0d522cee', 'phosphorus', 1, 'as-fed');

-- Ultra Premium Direct — Light Care hondenbrokken voor gesteriliseerde honden met overgewicht - Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.ultrapremiumdirect.nl/producten/brokken-honden-met-overgewicht-gesteriliseerd-love-care/',
       nutrition_checked_at = '2026-11-09',
       nutrition_note = 'Overgenomen van de officiële Nederlandse productpagina. De energie is omgerekend van kcal/kg naar kcal/100 g. Ontbrekende waarden zijn niet door de fabrikant vermeld en blijven leeg.'
 where id = '6059902a-1d9d-4646-afdf-c83d8b6b73ba';
delete from public.recipe_nutrition where recipe_version_id = '6059902a-1d9d-4646-afdf-c83d8b6b73ba';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6059902a-1d9d-4646-afdf-c83d8b6b73ba', 'protein', 30, 'as-fed'),
  ('6059902a-1d9d-4646-afdf-c83d8b6b73ba', 'fat', 12, 'as-fed'),
  ('6059902a-1d9d-4646-afdf-c83d8b6b73ba', 'fiber', 6, 'as-fed'),
  ('6059902a-1d9d-4646-afdf-c83d8b6b73ba', 'ash', 8, 'as-fed'),
  ('6059902a-1d9d-4646-afdf-c83d8b6b73ba', 'moisture', 8, 'as-fed'),
  ('6059902a-1d9d-4646-afdf-c83d8b6b73ba', 'kcal', 342.1, 'as-fed'),
  ('6059902a-1d9d-4646-afdf-c83d8b6b73ba', 'calcium', 1.3, 'as-fed'),
  ('6059902a-1d9d-4646-afdf-c83d8b6b73ba', 'phosphorus', 1, 'as-fed');

-- Ultra Premium Direct — Care Digestion brokken voor volwassen honden van alle groottes - Eend (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.ultrapremiumdirect.nl/producten/eend-vertering-hond-brokken/',
       nutrition_checked_at = '2026-11-09',
       nutrition_note = 'Overgenomen van de officiële Nederlandse productpagina. De energie is omgerekend van kcal/kg naar kcal/100 g. Ontbrekende waarden zijn niet door de fabrikant vermeld en blijven leeg.'
 where id = 'f7b000fb-4023-4144-ab6e-db3e005a1e19';
delete from public.recipe_nutrition where recipe_version_id = 'f7b000fb-4023-4144-ab6e-db3e005a1e19';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f7b000fb-4023-4144-ab6e-db3e005a1e19', 'protein', 28, 'as-fed'),
  ('f7b000fb-4023-4144-ab6e-db3e005a1e19', 'fat', 15, 'as-fed'),
  ('f7b000fb-4023-4144-ab6e-db3e005a1e19', 'fiber', 4.5, 'as-fed'),
  ('f7b000fb-4023-4144-ab6e-db3e005a1e19', 'ash', 7.5, 'as-fed'),
  ('f7b000fb-4023-4144-ab6e-db3e005a1e19', 'moisture', 8, 'as-fed'),
  ('f7b000fb-4023-4144-ab6e-db3e005a1e19', 'kcal', 367.3, 'as-fed'),
  ('f7b000fb-4023-4144-ab6e-db3e005a1e19', 'calcium', 1.2, 'as-fed'),
  ('f7b000fb-4023-4144-ab6e-db3e005a1e19', 'phosphorus', 0.85, 'as-fed');

-- Ultra Premium Direct — Huid & Vacht Care brokken voor volwassen honden van alle groottes - Zalm (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.ultrapremiumdirect.nl/producten/brokken-huid-en-pels-voor-honden/',
       nutrition_checked_at = '2026-11-09',
       nutrition_note = 'Overgenomen van de officiële Nederlandse productpagina. De energie is omgerekend van kcal/kg naar kcal/100 g. Ontbrekende waarden zijn niet door de fabrikant vermeld en blijven leeg.'
 where id = '37e3a91b-ec12-41db-a4c7-a9250e161044';
delete from public.recipe_nutrition where recipe_version_id = '37e3a91b-ec12-41db-a4c7-a9250e161044';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('37e3a91b-ec12-41db-a4c7-a9250e161044', 'protein', 27, 'as-fed'),
  ('37e3a91b-ec12-41db-a4c7-a9250e161044', 'fat', 16, 'as-fed'),
  ('37e3a91b-ec12-41db-a4c7-a9250e161044', 'fiber', 2, 'as-fed'),
  ('37e3a91b-ec12-41db-a4c7-a9250e161044', 'ash', 7, 'as-fed'),
  ('37e3a91b-ec12-41db-a4c7-a9250e161044', 'moisture', 8, 'as-fed'),
  ('37e3a91b-ec12-41db-a4c7-a9250e161044', 'kcal', 391.7, 'as-fed'),
  ('37e3a91b-ec12-41db-a4c7-a9250e161044', 'calcium', 1.4, 'as-fed'),
  ('37e3a91b-ec12-41db-a4c7-a9250e161044', 'phosphorus', 1, 'as-fed');

-- Ultra Premium Direct — Super Premium brokken voor middelgrote honden (10 tot 30 kg) - Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.ultrapremiumdirect.nl/producten/brokken-super-premium-voor-middelgrote-honden/',
       nutrition_checked_at = '2026-11-09',
       nutrition_note = 'Overgenomen van de officiële Nederlandse productpagina. De energie is omgerekend van kcal/kg naar kcal/100 g. Ontbrekende waarden zijn niet door de fabrikant vermeld en blijven leeg.'
 where id = '684e12ae-8c85-4943-96d8-973ea1a213eb';
delete from public.recipe_nutrition where recipe_version_id = '684e12ae-8c85-4943-96d8-973ea1a213eb';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('684e12ae-8c85-4943-96d8-973ea1a213eb', 'protein', 28, 'as-fed'),
  ('684e12ae-8c85-4943-96d8-973ea1a213eb', 'fat', 15, 'as-fed'),
  ('684e12ae-8c85-4943-96d8-973ea1a213eb', 'fiber', 3, 'as-fed'),
  ('684e12ae-8c85-4943-96d8-973ea1a213eb', 'ash', 8, 'as-fed'),
  ('684e12ae-8c85-4943-96d8-973ea1a213eb', 'moisture', 8, 'as-fed'),
  ('684e12ae-8c85-4943-96d8-973ea1a213eb', 'kcal', 376.5, 'as-fed'),
  ('684e12ae-8c85-4943-96d8-973ea1a213eb', 'calcium', 1.5, 'as-fed'),
  ('684e12ae-8c85-4943-96d8-973ea1a213eb', 'phosphorus', 1, 'as-fed');

-- Ultra Premium Direct — Super Premium brokken - Lam en rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.ultrapremiumdirect.nl/producten/brokken-super-premium-voor-honden-lam-en-rijst/',
       nutrition_checked_at = '2026-11-09',
       nutrition_note = 'Overgenomen van de officiële Nederlandse productpagina. De energie is omgerekend van kcal/kg naar kcal/100 g. Ontbrekende waarden zijn niet door de fabrikant vermeld en blijven leeg.'
 where id = 'e8e609bb-6aad-4feb-b04f-28795c698e6d';
delete from public.recipe_nutrition where recipe_version_id = 'e8e609bb-6aad-4feb-b04f-28795c698e6d';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('e8e609bb-6aad-4feb-b04f-28795c698e6d', 'protein', 28, 'as-fed'),
  ('e8e609bb-6aad-4feb-b04f-28795c698e6d', 'fat', 15, 'as-fed'),
  ('e8e609bb-6aad-4feb-b04f-28795c698e6d', 'fiber', 2.5, 'as-fed'),
  ('e8e609bb-6aad-4feb-b04f-28795c698e6d', 'ash', 7, 'as-fed'),
  ('e8e609bb-6aad-4feb-b04f-28795c698e6d', 'moisture', 8, 'as-fed'),
  ('e8e609bb-6aad-4feb-b04f-28795c698e6d', 'kcal', 383.7, 'as-fed'),
  ('e8e609bb-6aad-4feb-b04f-28795c698e6d', 'calcium', 1.4, 'as-fed'),
  ('e8e609bb-6aad-4feb-b04f-28795c698e6d', 'phosphorus', 1, 'as-fed');

-- Ultra Premium Direct — Super Premium brokken voor puppy's van alle groottes – Lam en rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.ultrapremiumdirect.nl/producten/Super-Premium-brokken-voor-puppy-van-alle-groottes/',
       nutrition_checked_at = '2026-11-09',
       nutrition_note = 'Overgenomen van de officiële Nederlandse productpagina. De energie is omgerekend van kcal/kg naar kcal/100 g. Ontbrekende waarden zijn niet door de fabrikant vermeld en blijven leeg.'
 where id = '4d80a6ad-5a2b-4926-9120-ef8f7a747cfa';
delete from public.recipe_nutrition where recipe_version_id = '4d80a6ad-5a2b-4926-9120-ef8f7a747cfa';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('4d80a6ad-5a2b-4926-9120-ef8f7a747cfa', 'protein', 30, 'as-fed'),
  ('4d80a6ad-5a2b-4926-9120-ef8f7a747cfa', 'fat', 16, 'as-fed'),
  ('4d80a6ad-5a2b-4926-9120-ef8f7a747cfa', 'fiber', 2.5, 'as-fed'),
  ('4d80a6ad-5a2b-4926-9120-ef8f7a747cfa', 'ash', 7, 'as-fed'),
  ('4d80a6ad-5a2b-4926-9120-ef8f7a747cfa', 'moisture', 8, 'as-fed'),
  ('4d80a6ad-5a2b-4926-9120-ef8f7a747cfa', 'kcal', 389, 'as-fed'),
  ('4d80a6ad-5a2b-4926-9120-ef8f7a747cfa', 'calcium', 1.5, 'as-fed'),
  ('4d80a6ad-5a2b-4926-9120-ef8f7a747cfa', 'phosphorus', 1, 'as-fed');

-- Ultra Premium Direct — Graanvrije brokken met verse zalm voor puppy's van alle groottes (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.ultrapremiumdirect.nl/producten/graanvrije-brokken-met-verse-zalm-voor-puppy-van-alle-rassen/',
       nutrition_checked_at = '2026-11-09',
       nutrition_note = 'Overgenomen van de officiële Nederlandse productpagina. De energie is omgerekend van kcal/kg naar kcal/100 g. Ontbrekende waarden zijn niet door de fabrikant vermeld en blijven leeg.'
 where id = '11fbf5ae-2fef-457d-b050-dd0a1a5e67b2';
delete from public.recipe_nutrition where recipe_version_id = '11fbf5ae-2fef-457d-b050-dd0a1a5e67b2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('11fbf5ae-2fef-457d-b050-dd0a1a5e67b2', 'protein', 30, 'as-fed'),
  ('11fbf5ae-2fef-457d-b050-dd0a1a5e67b2', 'fat', 16, 'as-fed'),
  ('11fbf5ae-2fef-457d-b050-dd0a1a5e67b2', 'fiber', 2.5, 'as-fed'),
  ('11fbf5ae-2fef-457d-b050-dd0a1a5e67b2', 'ash', 8, 'as-fed'),
  ('11fbf5ae-2fef-457d-b050-dd0a1a5e67b2', 'moisture', 9, 'as-fed'),
  ('11fbf5ae-2fef-457d-b050-dd0a1a5e67b2', 'kcal', 381.7, 'as-fed'),
  ('11fbf5ae-2fef-457d-b050-dd0a1a5e67b2', 'calcium', 1.3, 'as-fed'),
  ('11fbf5ae-2fef-457d-b050-dd0a1a5e67b2', 'phosphorus', 1.1, 'as-fed');

-- Ultra Premium Direct — Super Premium brokken voor grote honden (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.ultrapremiumdirect.nl/producten/brokken-super-premium-voor-honden-van-groot-formaat/',
       nutrition_checked_at = '2026-11-09',
       nutrition_note = 'Overgenomen van de officiële Nederlandse productpagina. De energie is omgerekend van kcal/kg naar kcal/100 g. Ontbrekende waarden zijn niet door de fabrikant vermeld en blijven leeg.'
 where id = 'c75bd3b5-cc09-4964-b3d0-9256723a4774';
delete from public.recipe_nutrition where recipe_version_id = 'c75bd3b5-cc09-4964-b3d0-9256723a4774';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c75bd3b5-cc09-4964-b3d0-9256723a4774', 'protein', 30, 'as-fed'),
  ('c75bd3b5-cc09-4964-b3d0-9256723a4774', 'fat', 16, 'as-fed'),
  ('c75bd3b5-cc09-4964-b3d0-9256723a4774', 'fiber', 3, 'as-fed'),
  ('c75bd3b5-cc09-4964-b3d0-9256723a4774', 'ash', 8, 'as-fed'),
  ('c75bd3b5-cc09-4964-b3d0-9256723a4774', 'moisture', 8, 'as-fed'),
  ('c75bd3b5-cc09-4964-b3d0-9256723a4774', 'kcal', 381.8, 'as-fed'),
  ('c75bd3b5-cc09-4964-b3d0-9256723a4774', 'calcium', 1.4, 'as-fed'),
  ('c75bd3b5-cc09-4964-b3d0-9256723a4774', 'phosphorus', 0.9, 'as-fed');

-- Ultra Premium Direct — Senior Care hondenbrokken voor alle groottes (7 jaar) - Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.ultrapremiumdirect.nl/producten/brokken-honden-senior-love-care/',
       nutrition_checked_at = '2026-11-09',
       nutrition_note = 'Overgenomen van de officiële Nederlandse productpagina. De energie is omgerekend van kcal/kg naar kcal/100 g. Ontbrekende waarden zijn niet door de fabrikant vermeld en blijven leeg.'
 where id = '5065cbcc-67a1-48fb-8860-5175a9a25780';
delete from public.recipe_nutrition where recipe_version_id = '5065cbcc-67a1-48fb-8860-5175a9a25780';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('5065cbcc-67a1-48fb-8860-5175a9a25780', 'protein', 28, 'as-fed'),
  ('5065cbcc-67a1-48fb-8860-5175a9a25780', 'fat', 14, 'as-fed'),
  ('5065cbcc-67a1-48fb-8860-5175a9a25780', 'fiber', 4.5, 'as-fed'),
  ('5065cbcc-67a1-48fb-8860-5175a9a25780', 'ash', 7, 'as-fed'),
  ('5065cbcc-67a1-48fb-8860-5175a9a25780', 'moisture', 8, 'as-fed'),
  ('5065cbcc-67a1-48fb-8860-5175a9a25780', 'kcal', 353.9, 'as-fed'),
  ('5065cbcc-67a1-48fb-8860-5175a9a25780', 'calcium', 1.1, 'as-fed'),
  ('5065cbcc-67a1-48fb-8860-5175a9a25780', 'phosphorus', 0.8, 'as-fed');

-- Ultra Premium Direct — Graanvrije Light brokken voor gesteriliseerde honden met overgewicht - Lam (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.ultrapremiumdirect.nl/producten/light-graanvrije-brokken-voor-gesteriliseerde-honden-met-overgewicht/',
       nutrition_checked_at = '2026-11-09',
       nutrition_note = 'Overgenomen van de officiële Nederlandse productpagina. De energie is omgerekend van kcal/kg naar kcal/100 g. Ontbrekende waarden zijn niet door de fabrikant vermeld en blijven leeg.'
 where id = '31f4773d-13e2-4903-8da7-9a0d345195f2';
delete from public.recipe_nutrition where recipe_version_id = '31f4773d-13e2-4903-8da7-9a0d345195f2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('31f4773d-13e2-4903-8da7-9a0d345195f2', 'protein', 30, 'as-fed'),
  ('31f4773d-13e2-4903-8da7-9a0d345195f2', 'fat', 13, 'as-fed'),
  ('31f4773d-13e2-4903-8da7-9a0d345195f2', 'fiber', 5, 'as-fed'),
  ('31f4773d-13e2-4903-8da7-9a0d345195f2', 'ash', 8, 'as-fed'),
  ('31f4773d-13e2-4903-8da7-9a0d345195f2', 'moisture', 8, 'as-fed'),
  ('31f4773d-13e2-4903-8da7-9a0d345195f2', 'kcal', 353.7, 'as-fed'),
  ('31f4773d-13e2-4903-8da7-9a0d345195f2', 'calcium', 1.5, 'as-fed'),
  ('31f4773d-13e2-4903-8da7-9a0d345195f2', 'phosphorus', 1, 'as-fed');

-- Ultra Premium Direct — Hypoallergene brokken met vis - Care (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.ultrapremiumdirect.nl/producten/hypoallergene-brokken-allergische-honden/',
       nutrition_checked_at = '2026-11-09',
       nutrition_note = 'Overgenomen van de officiële Nederlandse productpagina. De energie is omgerekend van kcal/kg naar kcal/100 g. Ontbrekende waarden zijn niet door de fabrikant vermeld en blijven leeg.'
 where id = 'c7e5f3d7-59bc-4f03-9b46-b4aef5383e89';
delete from public.recipe_nutrition where recipe_version_id = 'c7e5f3d7-59bc-4f03-9b46-b4aef5383e89';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('c7e5f3d7-59bc-4f03-9b46-b4aef5383e89', 'protein', 28, 'as-fed'),
  ('c7e5f3d7-59bc-4f03-9b46-b4aef5383e89', 'fat', 15, 'as-fed'),
  ('c7e5f3d7-59bc-4f03-9b46-b4aef5383e89', 'fiber', 3, 'as-fed'),
  ('c7e5f3d7-59bc-4f03-9b46-b4aef5383e89', 'ash', 8.5, 'as-fed'),
  ('c7e5f3d7-59bc-4f03-9b46-b4aef5383e89', 'moisture', 8, 'as-fed'),
  ('c7e5f3d7-59bc-4f03-9b46-b4aef5383e89', 'kcal', 374.7, 'as-fed'),
  ('c7e5f3d7-59bc-4f03-9b46-b4aef5383e89', 'calcium', 1.5, 'as-fed'),
  ('c7e5f3d7-59bc-4f03-9b46-b4aef5383e89', 'phosphorus', 1, 'as-fed');

-- Ultra Premium Direct — Super Premium brokken - Zalm en rijst (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.ultrapremiumdirect.nl/producten/brokken-super-premium-voor-honden-zalm-en-rijst/',
       nutrition_checked_at = '2026-11-09',
       nutrition_note = 'Overgenomen van de officiële Nederlandse productpagina. De energie is omgerekend van kcal/kg naar kcal/100 g. Ontbrekende waarden zijn niet door de fabrikant vermeld en blijven leeg.'
 where id = '072df242-83ca-4c46-955d-ba3a84ca30e2';
delete from public.recipe_nutrition where recipe_version_id = '072df242-83ca-4c46-955d-ba3a84ca30e2';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('072df242-83ca-4c46-955d-ba3a84ca30e2', 'protein', 30, 'as-fed'),
  ('072df242-83ca-4c46-955d-ba3a84ca30e2', 'fat', 16, 'as-fed'),
  ('072df242-83ca-4c46-955d-ba3a84ca30e2', 'fiber', 2.5, 'as-fed'),
  ('072df242-83ca-4c46-955d-ba3a84ca30e2', 'ash', 8, 'as-fed'),
  ('072df242-83ca-4c46-955d-ba3a84ca30e2', 'moisture', 8, 'as-fed'),
  ('072df242-83ca-4c46-955d-ba3a84ca30e2', 'kcal', 385.7, 'as-fed'),
  ('072df242-83ca-4c46-955d-ba3a84ca30e2', 'calcium', 1.5, 'as-fed'),
  ('072df242-83ca-4c46-955d-ba3a84ca30e2', 'phosphorus', 1, 'as-fed');

-- Ultra Premium Direct — Graanvrije brokken Original voor volwassen honden van alle groottes (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.ultrapremiumdirect.nl/producten/graanvrije-brokken-origineel-volwassen-honden-en-gigantisch-sup-40-kg/',
       nutrition_checked_at = '2026-11-09',
       nutrition_note = 'Overgenomen van de officiële Nederlandse productpagina. De energie is omgerekend van kcal/kg naar kcal/100 g. Ontbrekende waarden zijn niet door de fabrikant vermeld en blijven leeg.'
 where id = '877dcf78-88d6-40de-afe8-579e3a65572c';
delete from public.recipe_nutrition where recipe_version_id = '877dcf78-88d6-40de-afe8-579e3a65572c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('877dcf78-88d6-40de-afe8-579e3a65572c', 'protein', 40, 'as-fed'),
  ('877dcf78-88d6-40de-afe8-579e3a65572c', 'fat', 20, 'as-fed'),
  ('877dcf78-88d6-40de-afe8-579e3a65572c', 'fiber', 2.5, 'as-fed'),
  ('877dcf78-88d6-40de-afe8-579e3a65572c', 'ash', 8.5, 'as-fed'),
  ('877dcf78-88d6-40de-afe8-579e3a65572c', 'moisture', 8, 'as-fed'),
  ('877dcf78-88d6-40de-afe8-579e3a65572c', 'kcal', 405.8, 'as-fed'),
  ('877dcf78-88d6-40de-afe8-579e3a65572c', 'calcium', 1.4, 'as-fed'),
  ('877dcf78-88d6-40de-afe8-579e3a65572c', 'phosphorus', 1.1, 'as-fed');

-- Ultra Premium Direct — Light Super Premium brokken voor kleine gesteriliseerde honden (tot 10 kg) - Lam (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.ultrapremiumdirect.nl/producten/brokken-light-super-premium-voor-gesteriliseerde-honden-van-klein-formaat/',
       nutrition_checked_at = '2026-11-09',
       nutrition_note = 'Overgenomen van de officiële Nederlandse productpagina. De energie is omgerekend van kcal/kg naar kcal/100 g. Ontbrekende waarden zijn niet door de fabrikant vermeld en blijven leeg.'
 where id = '423237e1-d272-452b-a128-03b582262ac6';
delete from public.recipe_nutrition where recipe_version_id = '423237e1-d272-452b-a128-03b582262ac6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('423237e1-d272-452b-a128-03b582262ac6', 'protein', 28, 'as-fed'),
  ('423237e1-d272-452b-a128-03b582262ac6', 'fat', 12, 'as-fed'),
  ('423237e1-d272-452b-a128-03b582262ac6', 'fiber', 4.5, 'as-fed'),
  ('423237e1-d272-452b-a128-03b582262ac6', 'ash', 7.5, 'as-fed'),
  ('423237e1-d272-452b-a128-03b582262ac6', 'moisture', 8, 'as-fed'),
  ('423237e1-d272-452b-a128-03b582262ac6', 'kcal', 353.9, 'as-fed'),
  ('423237e1-d272-452b-a128-03b582262ac6', 'calcium', 1.5, 'as-fed'),
  ('423237e1-d272-452b-a128-03b582262ac6', 'phosphorus', 1, 'as-fed');

-- Ultra Premium Direct — Super Premium brokken voor actieve honden (alle groottes) - Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.ultrapremiumdirect.nl/producten/brokken-super-premium-voor-actieve-honden-van-alle-formaten/',
       nutrition_checked_at = '2026-11-09',
       nutrition_note = 'Overgenomen van de officiële Nederlandse productpagina. De energie is omgerekend van kcal/kg naar kcal/100 g. Ontbrekende waarden zijn niet door de fabrikant vermeld en blijven leeg.'
 where id = '656a236d-09ae-4209-9e29-c69cd139b5d1';
delete from public.recipe_nutrition where recipe_version_id = '656a236d-09ae-4209-9e29-c69cd139b5d1';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('656a236d-09ae-4209-9e29-c69cd139b5d1', 'protein', 30, 'as-fed'),
  ('656a236d-09ae-4209-9e29-c69cd139b5d1', 'fat', 20, 'as-fed'),
  ('656a236d-09ae-4209-9e29-c69cd139b5d1', 'fiber', 2.5, 'as-fed'),
  ('656a236d-09ae-4209-9e29-c69cd139b5d1', 'ash', 8, 'as-fed'),
  ('656a236d-09ae-4209-9e29-c69cd139b5d1', 'moisture', 8, 'as-fed'),
  ('656a236d-09ae-4209-9e29-c69cd139b5d1', 'kcal', 404, 'as-fed'),
  ('656a236d-09ae-4209-9e29-c69cd139b5d1', 'calcium', 1.4, 'as-fed'),
  ('656a236d-09ae-4209-9e29-c69cd139b5d1', 'phosphorus', 0.9, 'as-fed');

-- Ultra Premium Direct — Graanvrije brokken voor puppy's met een gevoelige spijsvertering (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.ultrapremiumdirect.nl/producten/graanvrije-brokken-voor-gevoelige-puppies-van-alle-formaten/',
       nutrition_checked_at = '2026-11-09',
       nutrition_note = 'Overgenomen van de officiële Nederlandse productpagina. De energie is omgerekend van kcal/kg naar kcal/100 g. Ontbrekende waarden zijn niet door de fabrikant vermeld en blijven leeg.'
 where id = '62336d55-7e96-4980-8371-cdbda3beb0d6';
delete from public.recipe_nutrition where recipe_version_id = '62336d55-7e96-4980-8371-cdbda3beb0d6';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('62336d55-7e96-4980-8371-cdbda3beb0d6', 'protein', 30, 'as-fed'),
  ('62336d55-7e96-4980-8371-cdbda3beb0d6', 'fat', 16, 'as-fed'),
  ('62336d55-7e96-4980-8371-cdbda3beb0d6', 'fiber', 4.5, 'as-fed'),
  ('62336d55-7e96-4980-8371-cdbda3beb0d6', 'ash', 8, 'as-fed'),
  ('62336d55-7e96-4980-8371-cdbda3beb0d6', 'moisture', 8, 'as-fed'),
  ('62336d55-7e96-4980-8371-cdbda3beb0d6', 'kcal', 389.2, 'as-fed'),
  ('62336d55-7e96-4980-8371-cdbda3beb0d6', 'calcium', 1.5, 'as-fed'),
  ('62336d55-7e96-4980-8371-cdbda3beb0d6', 'phosphorus', 1, 'as-fed');

-- Ultra Premium Direct — Graanvrije brokken met verse zalm voor kleine volwassen honden (10 kg) (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.ultrapremiumdirect.nl/producten/brokken-zalm-vers-hond-volwassen-kleintjes/',
       nutrition_checked_at = '2026-11-09',
       nutrition_note = 'Overgenomen van de officiële Nederlandse productpagina. De energie is omgerekend van kcal/kg naar kcal/100 g. Ontbrekende waarden zijn niet door de fabrikant vermeld en blijven leeg.'
 where id = '7336c3d0-5d95-4d84-8570-55c3f4e8d84c';
delete from public.recipe_nutrition where recipe_version_id = '7336c3d0-5d95-4d84-8570-55c3f4e8d84c';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('7336c3d0-5d95-4d84-8570-55c3f4e8d84c', 'protein', 28, 'as-fed'),
  ('7336c3d0-5d95-4d84-8570-55c3f4e8d84c', 'fat', 17, 'as-fed'),
  ('7336c3d0-5d95-4d84-8570-55c3f4e8d84c', 'fiber', 3, 'as-fed'),
  ('7336c3d0-5d95-4d84-8570-55c3f4e8d84c', 'ash', 7, 'as-fed'),
  ('7336c3d0-5d95-4d84-8570-55c3f4e8d84c', 'moisture', 8, 'as-fed'),
  ('7336c3d0-5d95-4d84-8570-55c3f4e8d84c', 'kcal', 389.2, 'as-fed'),
  ('7336c3d0-5d95-4d84-8570-55c3f4e8d84c', 'calcium', 1.1, 'as-fed'),
  ('7336c3d0-5d95-4d84-8570-55c3f4e8d84c', 'phosphorus', 0.8, 'as-fed');

-- Ultra Premium Direct — Super Premium brokken voor kleine honden (tot 10 kg) - Kip (kibble)
update public.recipe_versions
   set nutrition_source_url = 'https://www.ultrapremiumdirect.nl/producten/brokken-super-premium-voor-kleine-honden/',
       nutrition_checked_at = '2026-11-09',
       nutrition_note = 'Overgenomen van de officiële Nederlandse productpagina. De energie is omgerekend van kcal/kg naar kcal/100 g. Ontbrekende waarden zijn niet door de fabrikant vermeld en blijven leeg.'
 where id = '6a7ac52e-1250-4e2b-bb62-041a839a5170';
delete from public.recipe_nutrition where recipe_version_id = '6a7ac52e-1250-4e2b-bb62-041a839a5170';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('6a7ac52e-1250-4e2b-bb62-041a839a5170', 'protein', 30, 'as-fed'),
  ('6a7ac52e-1250-4e2b-bb62-041a839a5170', 'fat', 20, 'as-fed'),
  ('6a7ac52e-1250-4e2b-bb62-041a839a5170', 'fiber', 2, 'as-fed'),
  ('6a7ac52e-1250-4e2b-bb62-041a839a5170', 'ash', 7.5, 'as-fed'),
  ('6a7ac52e-1250-4e2b-bb62-041a839a5170', 'moisture', 8, 'as-fed'),
  ('6a7ac52e-1250-4e2b-bb62-041a839a5170', 'kcal', 409.9, 'as-fed'),
  ('6a7ac52e-1250-4e2b-bb62-041a839a5170', 'calcium', 1.4, 'as-fed'),
  ('6a7ac52e-1250-4e2b-bb62-041a839a5170', 'phosphorus', 0.9, 'as-fed');

-- Ultra Premium Direct — Graanvrij paté voor honden - Kip & kalkoen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.ultrapremiumdirect.nl/producten/12-blikjes-pate-voor-honden-graanvrij-kip-kalkoen-wortel-spinazie/',
       nutrition_checked_at = '2026-11-09',
       nutrition_note = 'Overgenomen van de officiële Nederlandse productpagina. De energie is omgerekend van kcal/kg naar kcal/100 g. Ontbrekende waarden zijn niet door de fabrikant vermeld en blijven leeg.'
 where id = 'ba44523d-aee8-49aa-9bf2-7ad220c92b9a';
delete from public.recipe_nutrition where recipe_version_id = 'ba44523d-aee8-49aa-9bf2-7ad220c92b9a';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('ba44523d-aee8-49aa-9bf2-7ad220c92b9a', 'protein', 10, 'as-fed'),
  ('ba44523d-aee8-49aa-9bf2-7ad220c92b9a', 'fat', 7, 'as-fed'),
  ('ba44523d-aee8-49aa-9bf2-7ad220c92b9a', 'fiber', 0.2, 'as-fed'),
  ('ba44523d-aee8-49aa-9bf2-7ad220c92b9a', 'ash', 1.5, 'as-fed'),
  ('ba44523d-aee8-49aa-9bf2-7ad220c92b9a', 'moisture', 78, 'as-fed'),
  ('ba44523d-aee8-49aa-9bf2-7ad220c92b9a', 'kcal', 112.9, 'as-fed'),
  ('ba44523d-aee8-49aa-9bf2-7ad220c92b9a', 'calcium', 0.22, 'as-fed'),
  ('ba44523d-aee8-49aa-9bf2-7ad220c92b9a', 'phosphorus', 0.18, 'as-fed');

-- Ultra Premium Direct — Graanvrije paté voor honden - Lam (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.ultrapremiumdirect.nl/producten/12-blikjes-graanvrije-pate-voor-honden-lam-courgette-wortel/',
       nutrition_checked_at = '2026-11-09',
       nutrition_note = 'Overgenomen van de officiële Nederlandse productpagina. De energie is omgerekend van kcal/kg naar kcal/100 g. Ontbrekende waarden zijn niet door de fabrikant vermeld en blijven leeg.'
 where id = 'f3cf91d2-b12b-4372-9e66-2a310b2f2a47';
delete from public.recipe_nutrition where recipe_version_id = 'f3cf91d2-b12b-4372-9e66-2a310b2f2a47';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('f3cf91d2-b12b-4372-9e66-2a310b2f2a47', 'protein', 10, 'as-fed'),
  ('f3cf91d2-b12b-4372-9e66-2a310b2f2a47', 'fat', 6, 'as-fed'),
  ('f3cf91d2-b12b-4372-9e66-2a310b2f2a47', 'fiber', 0.2, 'as-fed'),
  ('f3cf91d2-b12b-4372-9e66-2a310b2f2a47', 'ash', 2, 'as-fed'),
  ('f3cf91d2-b12b-4372-9e66-2a310b2f2a47', 'moisture', 79, 'as-fed'),
  ('f3cf91d2-b12b-4372-9e66-2a310b2f2a47', 'kcal', 102.5, 'as-fed'),
  ('f3cf91d2-b12b-4372-9e66-2a310b2f2a47', 'calcium', 0.22, 'as-fed'),
  ('f3cf91d2-b12b-4372-9e66-2a310b2f2a47', 'phosphorus', 0.18, 'as-fed');

-- Ultra Premium Direct — Lamsreepjes in saus voor honden – Natvoer zonder granen (wet)
update public.recipe_versions
   set nutrition_source_url = 'https://www.ultrapremiumdirect.nl/producten/12-zakken-met-mals-gesneden-hondenvoer-graanvrij-lamsvlees-en-sperziebonen/',
       nutrition_checked_at = '2026-11-09',
       nutrition_note = 'Overgenomen van de officiële Nederlandse productpagina. De energie is omgerekend van kcal/kg naar kcal/100 g. Ontbrekende waarden zijn niet door de fabrikant vermeld en blijven leeg.'
 where id = '064e40e7-f5d7-4a0b-b91b-7536afddef33';
delete from public.recipe_nutrition where recipe_version_id = '064e40e7-f5d7-4a0b-b91b-7536afddef33';
insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values
  ('064e40e7-f5d7-4a0b-b91b-7536afddef33', 'protein', 8.5, 'as-fed'),
  ('064e40e7-f5d7-4a0b-b91b-7536afddef33', 'fat', 3, 'as-fed'),
  ('064e40e7-f5d7-4a0b-b91b-7536afddef33', 'fiber', 0.7, 'as-fed'),
  ('064e40e7-f5d7-4a0b-b91b-7536afddef33', 'ash', 2, 'as-fed'),
  ('064e40e7-f5d7-4a0b-b91b-7536afddef33', 'moisture', 83, 'as-fed'),
  ('064e40e7-f5d7-4a0b-b91b-7536afddef33', 'kcal', 74.7, 'as-fed');

commit;
