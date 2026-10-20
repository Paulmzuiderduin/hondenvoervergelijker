-- Mineralen en voedingswoorden, 20 oktober 2026
-- Plak dit in de Supabase SQL-editor en klik op Run.
--
-- Oesterschelp en eierschaal zijn mineralen, geen schaaldier en geen ei.
-- Ze gaan daarom uit de woordenlijst; de site kent ze daarna als mineraal.
--
-- Woorden die nog "onschuldig" stonden maar wel een echt voedingsmiddel zijn,
-- krijgen hun eigen allergeen. Zo klopt de woordenlijst in Beheer met de
-- keuzelijst op de site.

begin;

delete from public.ingredient_terms
where term in ('oesterschelp', 'oesterschaal', 'eierschaal', 'eischaal');

with nieuwe_indeling(term, allergeen) as (
  values
    ('psyllium', 'psyllium'),
    ('psylliumschil', 'psyllium'),
    ('psylliumschillen', 'psyllium'),
    ('psylliumzaden', 'psyllium'),
    ('vlozaad', 'psyllium'),
    ('vlozaadschillen', 'psyllium'),
    ('biergist', 'yeast'),
    ('saccharomyces', 'yeast'),
    ('cerevisiae', 'yeast'),
    ('chiazaad', 'chia'),
    ('lijnzaden', 'flax'),
    ('kopraolie', 'coconut'),
    ('honing', 'honey'),
    ('aloe', 'aloe'),
    ('yucca', 'yucca'),
    ('schidigera', 'yucca'),
    ('tagetes', 'tagetes'),
    ('tagetesbloemen', 'tagetes'),
    ('borage', 'borage'),
    ('bernagieolie', 'borage'),
    ('mariadistel', 'milkthistle'),
    ('mariadistelzaad', 'milkthistle'),
    ('teunisbloemolie', 'eveningprimrose')
)
update public.ingredient_terms as t
set kind = 'bron',
    allergen_keys = array[n.allergeen]
from nieuwe_indeling n
where t.term = n.term;

commit;
