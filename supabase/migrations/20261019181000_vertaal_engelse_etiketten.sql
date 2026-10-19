-- De vijf bosch-producten hadden een Engelse etiket tekst, overgenomen van de
-- Duitse/Engelse productpagina. Op de site staat alles in het Nederlands, dus
-- hier de Nederlandse vertaling, met dezelfde percentages en dezelfde volgorde.
-- Het origineel blijft bereikbaar via de bronlink van het product.
--
-- De aantekening erbij zegt waar de tekst vandaan komt: een vertaling is geen
-- letterlijke fabriekstekst, en dat moet een beheerder kunnen zien. Staat er al
-- een aantekening, dan blijft die staan.
--
-- De productnamen gaan mee: alleen het beschrijvende deel, want "Freshe
-- Schnauze" is de lijnnaam van het merk. Een naam terugdraaien kan altijd, in
-- Beheer of met één update op products.name.
--
-- Opnieuw uitvoeren is veilig: wat al vertaald is, blijft ongewijzigd.

do $$
declare
  r record;
  v_gedaan integer;
begin
  for r in
    select * from (values
      ('bosch', 'Freshe Schnauze Beef with millet & beetroot', 'Freshe Schnauze Rund met gierst & rode biet',
       'Verse rund (50%, waarvan rundhart 6%, runderlever 1,5%), gekookte bouillon, gierst (8%), verse wortel (6%), verse rode biet (4%), rundeiwit (gehydrolyseerd), verse pompoen (0,5%), azijn, calciumcarbonaat, rozenbottel (gedroogd, 0,2%), rode biet (gedroogd), zonnebloemolie (0,1%), rozemarijn (gedroogd, 0,1%), natriumchloride.'),
      ('bosch', 'Freshe Schnauze Chicken with pumpkin & broccoli', 'Freshe Schnauze Kip met pompoen & broccoli',
       'Verse kip (55%), gekookte bouillon, verse wortel (8%), verse pompoen (6%), verse broccoli (3%), zonnebloemeiwit (getextureerd), tapioca, kipeiwit (gehydrolyseerd), azijn, zonnebloemolie (1%), calciumcarbonaat, rozenbottel (gedroogd, 0,2%), natriumchloride.'),
      ('bosch', 'Freshe Schnauze Chicken with rice & carrots', 'Freshe Schnauze Kip met rijst & wortel',
       'Verse kip (50%), gekookte bouillon, verse wortel (9%), rijst (8%), verse broccoli (3%), tapioca, kipeiwit (gehydrolyseerd), azijn, zonnebloemolie (1%), rozenbottel (gedroogd, 0,2%), calciumcarbonaat, kurkuma (gedroogd, 0,1%), natriumchloride.'),
      ('bosch', 'Freshe Schnauze Turkey with quinoa & spinach', 'Freshe Schnauze Kalkoen met quinoa & spinazie',
       'Verse kalkoen (34%), verse kip (20%), gekookte bouillon, verse wortel (6%), quinoa (5%), verse spinazie (3%), gevogelte-eiwit (gehydrolyseerd), azijn, rozenbottel (gedroogd, 0,2%), calciumcarbonaat, zonnebloemolie (0,1%), rode biet (gedroogd), natriumchloride.'),
      ('bosch', 'Heimat Adult with 68% regional beef', 'Heimat Adult met 68% regionaal rund',
       'Verse rund (68%), runderbouillon (27%), erwten (bevroren, 2,5%), wortel (bevroren, 1%), pastinaak (bevroren, 1%), zonnebloemolie (0,5%). Gekookt in eigen vocht.')
    ) as v(brand, oud, nieuw, tekst)
  loop
    update public.products set name = r.nieuw where brand = r.brand and name = r.oud;
    update public.recipe_versions as rv
       set ingredients_text = r.tekst,
           review_note = coalesce(rv.review_note, 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.')
      from public.products as p
     where p.id = rv.product_id and p.brand = r.brand and p.name = r.nieuw and rv.is_current;
    get diagnostics v_gedaan = row_count;
    raise notice '% -> % (% etiketversie(s) bijgewerkt)', r.oud, r.nieuw, v_gedaan;
  end loop;
end $$;

select p.brand, p.name, rv.ingredients_text
  from public.products as p
  join public.recipe_versions as rv on rv.product_id = p.id and rv.is_current
 where p.brand = 'bosch'
 order by p.name;
