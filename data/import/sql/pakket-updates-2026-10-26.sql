-- Verpakkingsmaten van bestaande producten bijwerken (2 producten).
-- Alleen de maat, bron en controledatum veranderen; de ingrediëntenlijst en
-- een eventuele menselijke review blijven ongewijzigd.
begin;

-- Royal Canin — Medium Adult: 10 kg → 1 / 3 / 4 / 10 / 12 / 15 / 19 kg
update public.products
   set package_size = '1 / 3 / 4 / 10 / 12 / 15 / 19 kg',
       source_url = coalesce('https://www.royalcanin.com/nl/dogs/products/retail-products/medium-adult-3004', source_url),
       last_checked_at = date '2026-10-26'
 where brand = 'Royal Canin' and name = 'Medium Adult';

-- Royal Canin — Mini Adult 8+: 2 / 4 / 8 kg → 800 g / 2 / 4 / 8 kg
update public.products
   set package_size = '800 g / 2 / 4 / 8 kg',
       source_url = coalesce('https://www.royalcanin.com/nl/dogs/products/retail-products/mini-adult-8%2b-3002', source_url),
       last_checked_at = date '2026-10-26'
 where brand = 'Royal Canin' and name = 'Mini Adult 8+';

commit;

-- Controle:
select brand, name, package_size, source_url, last_checked_at
  from public.products
 where (brand, name) in (('Royal Canin', 'Medium Adult'), ('Royal Canin', 'Mini Adult 8+'))
 order by brand, name;
