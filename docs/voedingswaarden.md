# Voedingswaarden

Status: **fase 0, 1, 2 en 3 afgerond en live.** Alle **786 top-10-producten** en **691 van de 692 overige producten** hebben voedingswaarden. In totaal: **1.477 van de 1.478 producten**, met **778 volledig**, **699 gedeeltelijk**, **1.009 met kcal/100 g** en **10.956 opgeslagen waarden**. Eén Pedigree-product vermeldt geen analytische bestanddelen op de officiële pagina en blijft daarom zonder waarden. **Fase 4 is afgerond:** alle standaardwaarden zijn met een minimum- en maximumschuif te filteren. Eiwit, vet en energie staan direct open; de andere zeven zitten in één compacte uitklapregel. De resultaten zijn te sorteren op eiwit, vet en energie. De voedingsbron en controledatum staan op de kaart, en een aparte bron- en plausibiliteitscontrole bewaakt de waarden.

## Uitgangspunten

- Waarden komen van de opgegeven bronpagina. Die kan afwijken van de ingrediëntenbron, bijvoorbeeld een buitenlandse of retailerpagina. De kaart toont de bron en de controledatum; bij een afwijkende bron verschijnt een waarschuwing.
- Percentages zijn **as-fed**, zoals op het etiket. Ze worden niet omgerekend naar droge stof.
- Ontbrekende waarden worden niet geschat. De site toont dan geen waarde; in beheer staat dat ze ontbreken.
- De kernset is: ruw eiwit, ruw vet, ruwe vezel, ruwe as, vocht en metaboliseerbare energie (kcal/100 g).
- De standaardset bevat daarnaast calcium, fosfor, omega-3 en omega-6. Die vier worden standaard verzameld en getoond waar de fabrikant ze vermeldt; ze tellen niet mee voor de status “volledig”, omdat veel etiketten ze niet publiceren.
- Waarden hangen aan een receptversie. Bij een nieuwe receptversie worden ze alleen overgenomen als de ingrediëntenlijst gelijk is gebleven.

## As-fed versus droge stof

- **As-fed** is de waarde zoals op het etiket: het percentage van het product inclusief vocht. Fabrikanten publiceren deze waarde en de meeste eigenaren herkennen haar.
- **Droge stof** rekent het vocht weg. Daardoor kun je natvoer en brokken eerlijk met elkaar vergelijken. Een natvoer met 10% eiwit en 80% vocht komt bijvoorbeeld op ongeveer 50% eiwit op droge stof; een brok met 26% eiwit en 10% vocht op ongeveer 29%.

De site toont **as-fed** als standaard, omdat dat de bronwaarde is en er niets hoeft te worden herberekend. In het voedingsdetail van een product kan de bezoeker naar **droge stof** schakelen; die berekening is duidelijk gelabeld en alleen beschikbaar als het vochtgehalte bekend is.

## Database

- `public.nutrition_terms` — de toegestane nutrienten, labels, eenheden en volgorde.
- `public.recipe_nutrition` — de waarden per receptversie.
- `public.recipe_versions.nutrition_source_url`, `nutrition_checked_at`, `nutrition_note` — herkomst en controle.
- `public.save_product_with_recipe(..., p_nutrition jsonb default null)` — slaat product, recept en voedingswaarden atomair op.

De vorm van `p_nutrition`:

```json
{
  "source_url": "https://...",
  "checked_at": "2026-10-30",
  "note": "Kcal niet vermeld op de bron.",
  "values": {
    "protein": 26,
    "fat": 15,
    "fiber": 2.6,
    "ash": 6.5,
    "moisture": null,
    "kcal": null
  }
}
```

`null` betekent: bestaande waarden behouden als de ingrediëntenlijst gelijk is; bij een gewijzigde lijst vervallen ze. Een leeg `values`-object wist de waarden bewust.

## Fases

### Fase 0 — fundament (afgerond)

- Migratie met `nutrition_terms` en `recipe_nutrition`.
- RLS, grants, index en validatietrigger.
- `src/lib/nutrition.js` met labels, eenheden, normalisatie, samenvatting en validatie.
- Productkaart toont voedingswaarden alleen als ze aanwezig zijn.
- Beheerformulier met kern- en optionele waarden, bron, controledatum en notitie.
- Beheer toont hoeveel producten volledig, gedeeltelijk of geen voedingswaarden hebben.
- Unit tests.

### Fase 1 — pilot binnen de top 10 (afgerond)

- 25 producten van 5 merken uit de top 10, verdeeld over brokken, natvoer en rauwvoer: Royal Canin, Hill's Science Plan, Eukanuba, DARF en Butcher's.
- Bronnen met en zonder kcal, plus een aantal pagina's waar waarden alleen in een tabel of na omrekening staan.
- Agenten deden de eerste extractie; de waarden zijn via het importscript gevalideerd en in een rollback-transactie getest.
- Resultaat: 25 gematchte producten, 186 waarden, 12 volledig (6 kernwaarden), 13 gedeeltelijk, 14 met kcal.
- Importformaat en validatie zijn hierna niet meer gewijzigd.

### Fase 2 — rest van de top 10 (afgerond)

Royal Canin (205), Hill's (140), Eukanuba (75), Prins (72), Purina (56), Jarco (57), Darf (51), Butcher's (48), Renske (44) en Edgard & Cooper (38). Samen 786 producten, allemaal voorzien. Royal Canin is in acht batches van 25 verwerkt en daarna als één gecombineerde SQL-batch geïmporteerd.

### Fase 3 — overige producten (afgerond)

De resterende 692 producten van de niet-top-10-merken, inclusief bronnen die alleen via de browser bereikbaar zijn. Ze zijn verdeeld over 13 clusters van maximaal 70 producten. **691 producten zijn geïmporteerd**; alleen Pedigree Adult met Rund in Gelei is overgeslagen omdat de officiële pagina geen analytische bestanddelen vermeldt.

- Specific (37), Canagan (36)
- Pedigree + Terra Canis (67)
- Kivo + Carnilove (60)
- Profine + Riverwood (57)
- Trovet + Smølke (55)
- WOOOF + Acana (49)
- Sanimed + Greenheart-Premiums + Smuldier (61)
- Yarrah + CaroCroc + Carnis + Orijen (60)
- Rodi + bosch + Animonda + Belcando + Bonzo + Brit (63)
- Cavom + GranataPet + Markus-Mühle + Wolfsblut + Farm Food + Yora + Iams (66)
- Lily's Kitchen + Cesar + Dog Chow + RAW4DOGS + Almo Nature + Farmina + Frolic + Happy Dog + Josera + Monge + James Wellbeloved (70)
- Taste of the Wild + KB RAW + BARFmenu + Versele-Laga (11)

Na elke cluster een JSON-controle en SQL-batch. De agents schrijven batches van maximaal 25 producten.

### Broncontrole en plausibiliteit

- `scripts/controleer-voedingswaarden-bronnen.mjs` vergelijkt de vastgelegde analysetekst met de bronpagina en schrijft `data/import/voedingswaarden/broncontrole.md`. Het script wijzigt niets in de database. Een analyse die volgens de notitie van een buitenlandse of retailerpagina komt, wordt als **andere bron** gemeld en niet als wijziging. Verzoeken worden per host gespreid en bij een tijdelijke 429, 5xx of time-out opnieuw geprobeerd; daardoor veroorzaakt gelijktijdig controleren van veel producten van dezelfde winkel geen valse meldingen meer.
- `scripts/controleer-voedingswaarden-browser.mjs` controleert de zeven hosts die gewone fetch-verzoeken blokkeren (Prins, Smølke, Yarrah, Edgard & Cooper, WOOOF, Terra Canis en Kivo) in een echte Chrome. Het script schrijft `data/import/voedingswaarden/broncontrole-browser.md` en wijzigt niets in de database.
- `scripts/controleer-voedingswaarden-plausibiliteit.mjs` controleert op macro-sommen boven 100%, onmogelijke vezel- of kcal-waarden en vocht dat niet bij het voertype past. Het rapport staat in `data/import/voedingswaarden/plausibiliteit.md`.
- De wekelijkse GitHub-workflow `Broncontrole` draait beide scripts naast de bestaande ingrediëntencontrole en neemt de rapporten mee in het issue en het artifact. Met de handmatige optie **alleen voeding** kunnen na een datacorrectie alleen de voedingscontrole en de plausibiliteit opnieuw worden gedraaid, zonder de zware ingrediënten- en browsercontrole. Met **alleen bronnen** kan omgekeerd alleen de ingrediëntencontrole opnieuw worden gedraaid.
- **Laatste volledige voedingscontrole (1 november 2026):** 1.470 producten via fetch gecontroleerd: **1.215 gelijk, 0 gewijzigd, 10 andere bron, 0 onbereikbaar, 0 geblokkeerde hosts** en 245 alleen via browser. Van die 245 zijn er **213 in een echte headful Chrome-sessie gelijk bevonden**; de GitHub-runner gebruikt headless Chrome en ziet meer sites als geblokkeerd, daarom staat de headful-uitkomst als rapport in de repo. De 32 Terra Canis-producten gaven via de fabrikant HTTP 403/404. Via zooplus.nl, maxizoo.be en dehner.de zijn **alle 32 Terra Canis-producten alsnog gelijk gecontroleerd**. Canireo Adult kip is door Dehner bevestigd (29,2/13,3/2,9/5,7 en 15,4 MJ/kg); Maxizoo en de Duitse fabrikantpagina noemen afwijkende varianten, wat als versie-/marktverschil is gedocumenteerd. Canireo Wild is door Dehner bevestigd (29,9/11,9/2,6/6,1 en 15,3 MJ/kg). Details staan in `terra-zooplus-controle.md`; de verpakking blijft leidend en er is niets automatisch overschreven.
- **Laatste ingrediëntencontrole (1 november 2026):** 1.200 producten via fetch: 1.199 gelijk, 1 gewijzigd (DARF Emi KVV; op de site gemarkeerd met uitleg), 0 onbereikbaar. De browsercontrole deed 212 producten: 103 gelijk, 0 gewijzigd en 109 onbereikbaar door botbeveiliging. De browsercontrole is daarna technisch aangepast naar een verse browsercontext per product en headful Chrome. Een hercontrole op GitHub Actions met Xvfb gaf op 1 november 2026 nog steeds 103 gelijk en 109 onbereikbaar: Prins en Edgard & Cooper blokkeren de runner-IP's. Lokale headful steekproeven gaven 4/4 gelijk; voor de volledige 109 is een niet-geblokkeerd netwerk of een self-hosted runner nodig.
- Een onmogelijke waarde krijgt een waarschuwing op de kaart. De waarde wordt niet getoond en niet gebruikt voor filters of sortering; de rest van de analyse blijft wel zichtbaar. De teller bij een filter telt daarom alleen bruikbare waarden.

### Fase 4 — UI, SEO en filters (afgerond)

- **Filteren op de volledige standaardset**: eiwit, vet, vezel, as, vocht, energie, calcium, fosfor, omega-3 en omega-6. Elke waarde heeft een dubbele schuif (minimum en maximum) en invoervelden voor exacte grenzen.
- **Compacte opbouw:** eiwit, vet en energie staan altijd open; de andere zeven zitten achter één uitklapregel. Elke rij is één regel met de grenzen in de kop en de schuif eronder.
- Een actief voedingsfilter laat alleen producten door waarvan de fabrikant die waarde vermeldt. Zonder actief filter blijven producten zonder voedingswaarden zichtbaar.
- De gekozen bereiken staan in de URL (`?eiwit=25-40`, `?calcium=0.07-1.25`, `?omega3=0.3-1`), samen met het voertype en de sortering. Bereiken met twee decimalen blijven exact bewaard.
- **Sorteren** op eiwit, vet of energie, binnen de drie oordeelgroepen (geschikt, controleren, uitgesloten). Producten zonder de gekozen waarde zakken binnen hun groep naar achteren. De kaart vermeldt dat de sortering binnen de oordeelgroepen geldt.
- Elk filter toont het aantal producten met een bruikbare waarde. Een waarde die als onmogelijk is gemarkeerd telt daar niet mee.
- De kaart toont de actieve filterwaarde in de samenvatting (bijvoorbeeld calcium) en in het detail de voedingsbron met controledatum.
- Waarschuwing wanneer natvoer/rauwvoer en brokken tegelijk worden gefilterd of op voeding worden gesorteerd: de percentages zijn as-fed en niet direct vergelijkbaar.
- De knop **Wissen** in de filterkolom wist alleen de kolom; de allergenenkeuze blijft staan. **Filters wissen** bij de resultaten wist alles.
- Op mobiel staat de resultaattelling in de filterkop en is er onderaan de filterkolom een springlink naar de resultaten.
- Methodiekpagina en `llms.txt` zijn bijgewerkt met uitleg over de filters, bronnen en as-fed.
- **Droge-stofweergave per product:** in het voedingsdetail kan de bezoeker schakelen tussen as-fed en droge stof. Het vocht wordt weggerekend en de energie wordt per 100 g droge stof getoond. Zonder vochtgehalte is de knop niet beschikbaar. De filters en sortering blijven op as-fed werken.
- **Zoeken en vergelijken:** producten zijn op naam te zoeken. Maximaal drie producten kunnen naast elkaar worden gezet; de vergelijking toont alle standaardwaarden en kan ook op droge stof worden bekeken.
- **Leeftijd en formaat:** twee compacte chiprijen filteren op Puppy/Adult/Senior/Alle en Mini/Medium/Large. De classificatie komt uit de productnaam; de UI noemt dat expliciet. De keuze staat in de URL (`?leeftijd=puppy&maat=large`). Van de 1.478 producten heeft 554 een herkenbare leeftijd en 329 een herkenbaar formaat in de naam; de overige vallen bij een actieve keuze af, zoals de hint onder de chips zegt. Via de URL is `unknown` wel te selecteren, maar de UI houdt de rij bewust compact.
- **Vier statische voedingspagina's** (eiwitrijk, weinig vet, veel vezel, laag-calorisch) vangen gerichte zoekopdrachten op en linken door naar de bijbehorende filtercombinatie. Sinds de productpagina's groeit de sitemap naar ruim 1.500 adressen.
- **Prestatie:** de catalogus is opgesplitst. De producten worden zonder volledige ingrediëntenlijst geladen (ongeveer 1,9 MB JSON), met daarnaast een compacte allergenenbeoordeling (ongeveer 0,7 MB). De volledige ingrediëntenlijst wordt pas opgehaald als een bezoeker die op een kaart openklapt. In de lokale meting verschenen de eerste kaarten in ongeveer 1,2 s in plaats van 1,7 s; de pagina toont 24 producten per pagina en gebruikt de cataloguscache. Server-side voorfiltering blijft een volgende optimalisatie.

## Besluiten

- **Calcium, fosfor, omega-3 en omega-6** horen bij de standaardset. Ze worden verzameld en getoond waar ze op de bron staan.
- **Producten zonder voedingswaarden blijven zichtbaar.** De vergelijker gaat primair over allergenen; een ontbrekende voedingswaarde mag een product niet verbergen.
- **As-fed is de standaardweergave.** Dat is de waarde zoals de fabrikant hem op het etiket zet en waar de meeste eigenaren mee werken. Droge stof is als extra, duidelijk gelabelde weergave per product toegevoegd om natvoer en brokken eerlijk te vergelijken.
- **Filters op de volledige standaardset** zijn geïmplementeerd met een minimum- en maximumschuif. Sorteren op eiwit, vet en energie is toegevoegd.
- **Een productentry is een product of verpakking, geen unieke receptuur.** De site noemt de telling daarom “producten”; meerdere verpakkingen of smaken kunnen dezelfde analyse delen.
- **Leeftijd en formaat zijn als filter toegevoegd op basis van de productnaam**: Puppy/Adult/Senior/Alle en Mini/Medium/Large. Het zijn geen gecontroleerde databasevelden; de filterkolom zegt dat en het etiket blijft leidend. Producten zonder aanduiding in de naam vallen af zodra een keuze actief is.
- **Side-by-side vergelijken is geïmplementeerd** voor maximaal drie producten, met alle standaardwaarden en dezelfde as-fed/droge-stofkeuze.
- **Agenten doen de eerste extractie**, met menselijke controle op de steekproef en op alle omgerekende waarden.
- **We beginnen bij de top 10 merken**, na een kleine pilot daarbinnen.
