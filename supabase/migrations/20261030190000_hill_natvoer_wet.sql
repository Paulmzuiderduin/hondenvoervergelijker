-- Correctie: dit Hill's-product is natvoer, maar stond als brok in de
-- catalogus. De naam, de bronpagina (canned) en de waarden (4,4% eiwit,
-- 2,7% vet, 80% vocht) bevestigen dat. De voedingswaarden zijn al ingevoerd;
-- alleen de voertype-classificatie wordt gecorrigeerd.
update public.products
   set food_type = 'wet'
 where brand = 'Hill''s Science Plan'
   and name = 'Small & Mini Mature Adult Natvoer Hond met Kip'
   and package_size = '200 g';

select id, brand, name, food_type, package_size
  from public.products
 where brand = 'Hill''s Science Plan'
   and name = 'Small & Mini Mature Adult Natvoer Hond met Kip';
