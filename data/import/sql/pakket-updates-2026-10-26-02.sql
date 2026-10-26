-- Verpakkingsmaten van bestaande producten bijwerken (1 producten).
-- Alleen de maat, bron en controledatum veranderen; de ingrediëntenlijst en
-- een eventuele menselijke review blijven ongewijzigd.
begin;

-- Trovet — Hypoallergenic (Turkey): 400 g → 200 / 400 / 800 g
update public.products
   set package_size = '200 / 400 / 800 g',
       source_url = coalesce('https://www.trovet.com/nl/product/unique-protein-turkey-hond/', source_url),
       last_checked_at = date '2026-10-26'
 where brand = 'Trovet' and name = 'Hypoallergenic (Turkey)';

commit;

-- Controle:
select brand, name, package_size, source_url, last_checked_at
  from public.products
 where (brand, name) in (('Trovet', 'Hypoallergenic (Turkey)'))
 order by brand, name;
