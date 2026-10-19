-- Herstel van tekens die bij het plakken als MacRoman zijn gelezen.
--
-- Elk teken met een accent of een cijfer in de bovenbouw werd daarbij twee
-- tekens: "mais" met een trema op de i werd bijvoorbeeld eerst een
-- wortelteken gevolgd door een O met streep, en "Markus-Muhle" kreeg een
-- wortelteken gevolgd door een o-ordinaal. De tabel hieronder zet al die paren
-- terug naar het teken dat bedoeld was. Andere tekst blijft exact staan.
--
-- Dit bestand bevat bewust geen enkel teken boven de 127: de combinaties staan in chr(...).
-- Daardoor gaat dit bestand goed via elke plakweg, ook als de tussenlaag tekens verkeerd leest.

begin;

do $$
declare
  paren text[][] := array[
    array[chr(8730) || chr(216), chr(239)],   -- wortelteken + O met streep -> i met trema
    array[chr(8730) || chr(180), chr(235)],   -- wortelteken + accent -> e met trema
    array[chr(8730) || chr(8706), chr(246)],   -- wortelteken + deelteken -> o met trema
    array[chr(8730) || chr(186), chr(252)],   -- wortelteken + o-ordinaal -> u met trema
    array[chr(8730) || chr(167), chr(228)],   -- wortelteken + paragraafteken -> a met trema
    array[chr(8730) || chr(174), chr(232)],   -- wortelteken + registered -> e met grave
    array[chr(172) || chr(960), chr(185)],   -- not-teken + pi -> superscript 1
    array[chr(172) || chr(8804), chr(178)],   -- not-teken + kleiner-of-gelijk -> superscript 2
    array[chr(172) || chr(8805), chr(179)],   -- not-teken + groter-of-gelijk -> superscript 3
    array[chr(8218) || chr(197) || chr(165), chr(8308)]   -- komma + A met ring + yen -> superscript 4
  ];
  paar text[];
  aangepast bigint := 0;
  aantal bigint;
begin
  foreach paar slice 1 in array paren loop
    update products set
      brand = replace(brand, paar[1], paar[2]),
      name = replace(name, paar[1], paar[2]),
      package_size = replace(package_size, paar[1], paar[2])
    where strpos(coalesce(brand, '') || coalesce(name, '') || coalesce(package_size, ''), paar[1]) > 0;
    get diagnostics aantal = row_count; aangepast := aangepast + aantal;

    update recipe_versions set
      ingredients_text = replace(ingredients_text, paar[1], paar[2]),
      import_note = replace(import_note, paar[1], paar[2])
    where strpos(coalesce(ingredients_text, '') || coalesce(import_note, ''), paar[1]) > 0;
    get diagnostics aantal = row_count; aangepast := aangepast + aantal;

    update ingredient_terms set
      term = replace(term, paar[1], paar[2]),
      note = replace(note, paar[1], paar[2])
    where strpos(coalesce(term, '') || coalesce(note, ''), paar[1]) > 0;
    get diagnostics aantal = row_count; aangepast := aangepast + aantal;
  end loop;
  raise notice 'rijen met herstel: %', aangepast;
end $$;

-- Controle: alle drie de tellers moeten nul zijn (het zijn de enige tekens die
-- door het verkeerd lezen konden ontstaan).
select
  (select count(*) from products where (coalesce(brand, '') || coalesce(name, '') || coalesce(package_size, '')) ~ (chr(8730) || '|' || chr(172) || '|' || chr(8218))) as producten_nog_kapot,
  (select count(*) from recipe_versions where (coalesce(ingredients_text, '') || coalesce(import_note, '')) ~ (chr(8730) || '|' || chr(172) || '|' || chr(8218))) as etiketten_nog_kapot,
  (select count(*) from ingredient_terms where (coalesce(term, '') || coalesce(note, '')) ~ (chr(8730) || '|' || chr(172) || '|' || chr(8218))) as woorden_nog_kapot;

commit;
