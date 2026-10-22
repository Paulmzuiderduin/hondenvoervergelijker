-- Verpakkingsmaten van bestaande producten bijwerken (12 producten).
-- Alleen de maat, bron en controledatum veranderen; de ingrediëntenlijst en
-- een eventuele menselijke review blijven ongewijzigd.
begin;

-- Prins Petfoods — ProCare Puppy & Junior: geen maat → 3 / 12 kg
update public.products
   set package_size = '3 / 12 kg',
       source_url = coalesce('https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare/puppy-junior-3kg', source_url),
       last_checked_at = date '2026-10-22'
 where brand = 'Prins Petfoods' and name = 'ProCare Puppy & Junior';

-- Prins Petfoods — ProCare Standard Fit: geen maat → 3 / 12 / 20 kg
update public.products
   set package_size = '3 / 12 / 20 kg',
       source_url = coalesce('https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare/standard-fit-3kg', source_url),
       last_checked_at = date '2026-10-22'
 where brand = 'Prins Petfoods' and name = 'ProCare Standard Fit';

-- Prins Petfoods — ProCare Mini Standard Fit: geen maat → 3 / 12 kg
update public.products
   set package_size = '3 / 12 kg',
       source_url = coalesce('https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-mini/standard-fit-3kg', source_url),
       last_checked_at = date '2026-10-22'
 where brand = 'Prins Petfoods' and name = 'ProCare Mini Standard Fit';

-- Prins Petfoods — ProCare Super Active: geen maat → 3 / 12 / 20 kg
update public.products
   set package_size = '3 / 12 / 20 kg',
       source_url = coalesce('https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare/super-active-3kg', source_url),
       last_checked_at = date '2026-10-22'
 where brand = 'Prins Petfoods' and name = 'ProCare Super Active';

-- Prins Petfoods — ProCare Senior Support: geen maat → 3 / 12 kg
update public.products
   set package_size = '3 / 12 kg',
       source_url = coalesce('https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare/senior-support-3kg', source_url),
       last_checked_at = date '2026-10-22'
 where brand = 'Prins Petfoods' and name = 'ProCare Senior Support';

-- Prins Petfoods — ProCare Light Low calorie: geen maat → 3 / 12 kg
update public.products
   set package_size = '3 / 12 kg',
       source_url = coalesce('https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare/light-low-calorie-3kg', source_url),
       last_checked_at = date '2026-10-22'
 where brand = 'Prins Petfoods' and name = 'ProCare Light Low calorie';

-- Prins Petfoods — ProCare Lamb & Rice: geen maat → 3 / 12 / 20 kg
update public.products
   set package_size = '3 / 12 / 20 kg',
       source_url = coalesce('https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare/lamb-rice-3kg', source_url),
       last_checked_at = date '2026-10-22'
 where brand = 'Prins Petfoods' and name = 'ProCare Lamb & Rice';

-- Prins Petfoods — ProCare Grainfree Sensible: geen maat → 3 / 12 kg
update public.products
   set package_size = '3 / 12 kg',
       source_url = coalesce('https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare-grainfree/sensible-3kg', source_url),
       last_checked_at = date '2026-10-22'
 where brand = 'Prins Petfoods' and name = 'ProCare Grainfree Sensible';

-- Prins Petfoods — ProCare Sport-Life Excellent: geen maat → 15 kg
update public.products
   set package_size = '15 kg',
       source_url = coalesce('https://www.prinspetfoods.nl/nl_NL/hondenvoer/procare/sport-life-excellent-15kg', source_url),
       last_checked_at = date '2026-10-22'
 where brand = 'Prins Petfoods' and name = 'ProCare Sport-Life Excellent';

-- Prins Petfoods — Fit Selection Chicken & Rice: geen maat → 2 / 14 kg
update public.products
   set package_size = '2 / 14 kg',
       source_url = coalesce('https://www.prinspetfoods.nl/nl_NL/hondenvoer/fit-selection/chicken-rice-2kg', source_url),
       last_checked_at = date '2026-10-22'
 where brand = 'Prins Petfoods' and name = 'Fit Selection Chicken & Rice';

-- Smuldier — Vers vlees Maaltijd Rund: 300 g → 300 g / 6 x 300 g
update public.products
   set package_size = '300 g / 6 x 300 g',
       source_url = coalesce('https://smuldier.nl/product/smuldier-vers-vlees-maaltijd-300g-rund/', source_url),
       last_checked_at = date '2026-10-22'
 where brand = 'Smuldier' and name = 'Vers vlees Maaltijd Rund';

-- Smuldier — Vers vlees Maaltijd Kip: 300 g → 300 g / 6 x 300 g
update public.products
   set package_size = '300 g / 6 x 300 g',
       source_url = coalesce('https://smuldier.nl/product/smuldier-vers-vlees-maaltijd-300g-kip/', source_url),
       last_checked_at = date '2026-10-22'
 where brand = 'Smuldier' and name = 'Vers vlees Maaltijd Kip';

commit;

-- Controle:
select brand, name, package_size, source_url, last_checked_at
  from public.products
 where (brand, name) in (('Prins Petfoods', 'ProCare Puppy & Junior'), ('Prins Petfoods', 'ProCare Standard Fit'), ('Prins Petfoods', 'ProCare Mini Standard Fit'), ('Prins Petfoods', 'ProCare Super Active'), ('Prins Petfoods', 'ProCare Senior Support'), ('Prins Petfoods', 'ProCare Light Low calorie'), ('Prins Petfoods', 'ProCare Lamb & Rice'), ('Prins Petfoods', 'ProCare Grainfree Sensible'), ('Prins Petfoods', 'ProCare Sport-Life Excellent'), ('Prins Petfoods', 'Fit Selection Chicken & Rice'), ('Smuldier', 'Vers vlees Maaltijd Rund'), ('Smuldier', 'Vers vlees Maaltijd Kip'))
 order by brand, name;
