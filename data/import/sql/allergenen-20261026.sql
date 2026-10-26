-- Extra allergenen onder "Overig": xylitol en verwante suikervervangers /
-- bevochtigingsmiddelen. Bedoeld voor mensen die deze stoffen willen vermijden.
--
-- Xylitol stond al in de woordenlijst, maar als "onschuldig". Het is nu een
-- eigen allergeen. De overige woorden worden toegevoegd zodat de keuring ze
-- herkent zodra ze op een etiket staan.
--
-- Opnieuw uitvoeren is veilig: bestaande rijen worden bijgewerkt.

begin;

update public.ingredient_terms
   set kind = 'bron',
       allergen_keys = array['xylitol']::text[],
       note = 'Xylitol is een suikervervanger; voor honden kan het gevaarlijk zijn.'
 where term = 'xylitol';

insert into public.ingredient_terms (term, kind, allergen_keys, note) values
  ('sorbitol', 'bron', array['sorbitol']::text[], 'Sorbitol is een suikervervanger (E420).'),
  ('glycerol', 'bron', array['glycerol']::text[], 'Glycerol/glycerine (E422) is een bevochtigingsmiddel.'),
  ('glycerine', 'bron', array['glycerol']::text[], 'Glycerine is een andere naam voor glycerol (E422).'),
  ('propyleenglycol', 'bron', array['propyleenglycol']::text[], 'Propyleenglycol (E490) is een bevochtigingsmiddel.'),
  ('e967', 'bron', array['xylitol']::text[], 'E967 is xylitol.'),
  ('e420', 'bron', array['sorbitol']::text[], 'E420 is sorbitol.'),
  ('e422', 'bron', array['glycerol']::text[], 'E422 is glycerol/glycerine.'),
  ('e490', 'bron', array['propyleenglycol']::text[], 'E490 is propyleenglycol.')
on conflict (term) do update set
  kind = excluded.kind,
  allergen_keys = excluded.allergen_keys,
  note = excluded.note;

-- Controle: de nieuwe allergenen en hun termen.
select term, kind, allergen_keys, note
  from public.ingredient_terms
 where term in ('xylitol', 'sorbitol', 'glycerol', 'glycerine', 'propyleenglycol', 'e967', 'e420', 'e422', 'e490')
 order by term;

commit;
