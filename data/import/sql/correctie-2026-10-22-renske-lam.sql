-- Renske — Vers bereide Lam graanvrij
--
-- De bestaande rij bundelde 95 / 185 / 375 g onder de 70%-lam-samenstelling.
-- De 95g-pagina heeft een ander recept (60% lam) en komt als apart record in
-- batch-20261022-05.sql. Daarom hoort de bestaande rij alleen nog 185 / 375 g
-- te zijn. De ingrediëntenlijst en een eventuele review blijven ongewijzigd.
begin;

update public.products
   set package_size = '185 / 375 g',
       last_checked_at = date '2026-10-22'
 where brand = 'Renske'
   and name = 'Vers bereide Lam graanvrij'
   and package_size = '95 / 185 / 375 g';

commit;

-- Controle:
select brand, name, package_size, source_url, last_checked_at
  from public.products
 where brand = 'Renske'
   and name like 'Vers bereide Lam graanvrij%'
 order by package_size;
