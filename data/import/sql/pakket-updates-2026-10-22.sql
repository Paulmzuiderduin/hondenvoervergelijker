-- Verpakkingsmaten van bestaande producten bijwerken (6 producten).
-- Alleen de maat, bron en controledatum veranderen; de ingrediëntenlijst en
-- een eventuele menselijke review blijven ongewijzigd.
begin;

-- Acana — Puppy Recipe: 2 / 6 / 11,4 kg → 2 / 6 / 11,4 / 17 kg
update public.products
   set package_size = '2 / 6 / 11,4 / 17 kg',
       source_url = coalesce('https://emea.acana.com/nl-NL/voor-honden/eu-aca-puppy-junior.html', source_url),
       last_checked_at = date '2026-10-21'
 where brand = 'Acana' and name = 'Puppy Recipe';

-- Orijen — Original: 2 / 6 / 11,4 kg → 340 g / 2 / 6 / 11,4 kg
update public.products
   set package_size = '340 g / 2 / 6 / 11,4 kg',
       source_url = coalesce('https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-ori-original.html', source_url),
       last_checked_at = date '2026-10-21'
 where brand = 'Orijen' and name = 'Original';

-- Orijen — Six Fish: 2 / 6 / 11,4 kg → 340 g / 2 / 6 / 11,4 kg
update public.products
   set package_size = '340 g / 2 / 6 / 11,4 kg',
       source_url = coalesce('https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-ori-sixfish.html', source_url),
       last_checked_at = date '2026-10-21'
 where brand = 'Orijen' and name = 'Six Fish';

-- Orijen — Tundra: 11,4 kg → 2 / 6 / 11,4 kg
update public.products
   set package_size = '2 / 6 / 11,4 kg',
       source_url = coalesce('https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-ori-tundra.html', source_url),
       last_checked_at = date '2026-10-21'
 where brand = 'Orijen' and name = 'Tundra';

-- Orijen — Puppy: 2 / 6 / 11,4 kg → 340 g / 2 / 6 / 11,4 kg
update public.products
   set package_size = '340 g / 2 / 6 / 11,4 kg',
       source_url = coalesce('https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-puppy.html', source_url),
       last_checked_at = date '2026-10-21'
 where brand = 'Orijen' and name = 'Puppy';

-- WOOOF — Regular geperst: 18 kg → 6 / 18 / 36 kg
update public.products
   set package_size = '6 / 18 / 36 kg',
       source_url = coalesce('https://wooof.com/WOOOF-regular/', source_url),
       last_checked_at = date '2026-10-21'
 where brand = 'WOOOF' and name = 'Regular geperst';

commit;

-- Controle:
select brand, name, package_size, source_url, last_checked_at
  from public.products
 where (brand, name) in (('Acana', 'Puppy Recipe'), ('Orijen', 'Original'), ('Orijen', 'Six Fish'), ('Orijen', 'Tundra'), ('Orijen', 'Puppy'), ('WOOOF', 'Regular geperst'))
 order by brand, name;
