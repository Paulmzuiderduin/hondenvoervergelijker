-- Correctie na de import van de nieuwe Best Petfoods-merken.
-- Een product met meerdere verpakkingsmaten hoort geen EAN van één van die
-- maten te dragen; de EAN zou dan bij de andere maat een verkeerde indruk geven.
begin;

update public.products
   set gtin = null
 where brand in ('N&D', 'Herrmann''s', 'Vet Life', 'Ziwi Peak', 'Buddy', 'Pawfect')
   and package_size like '% / %'
   and gtin is not null;

commit;
