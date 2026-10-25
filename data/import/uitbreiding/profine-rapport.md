# Profine — assortimentsrapport

Peildatum: 2026-10-24
Officiële bron: https://profinepetfood.com/
Werkbestand: `data/import/uitbreiding/profine.json`

## Uitkomst

| voertype | records |
|---|---:|
| kibble | 13 |
| wet | 16 |
| raw | 0 |
| **totaal** | **29** |

- 29 unieke recepten, elk met een eigen productpagina en een letterlijke ingrediëntenlijst.
- 39 losse productpagina's (23 droog, 16 nat) zijn gecontroleerd; de samenstelling is per recept en per verpakkingsmaat vergeleken en gelijk bevonden.
- 0 records in `twijfel`.
- 0 records met een vertaald etiket; alle gebruikte pagina's zijn Nederlandstalig.
- Profine stond nog niet in de app. Alle 29 recepten zijn daarom nieuw.

## Gebruikte bronnen en controle

Gecontroleerd:

- `https://profinepetfood.com/` en de Shopify-productfeed `/products.json?limit=250`;
- de productcategorieën voor hondenbrokken, puppybrokken en natvoer;
- alle 13 droogvoerrecepten en alle 16 natvoerrecepten, inclusief elke afzonderlijke maatpagina;
- alle 39 productpagina's van de individuele verpakkingen: HTTP 200 en een zichtbare paragraaf onder "Samenstelling";
- de maatkeuze per product voor de verpakkingsmaten.

De productfeed bevat 77 gepubliceerde producten. Dat is minder dan de limiet van 250, dus er is geen volgende pagina. De feed is gebruikt om het assortiment en de varianten compleet vast te leggen; de zichtbare productpagina's zijn gebruikt voor de samenstellingen.

Na het samenstellen van het werkbestand zijn alle 29 records nogmaals tegen hun `bronUrl` gecontroleerd met `node scripts/controleer-bronnen.mjs --uitbreiding --bestanden=profine.json`. Uitkomst: **29 onveranderd, 0 gewijzigd, 0 onbereikbaar**.

## Volledigheid

Het volledige assortiment complete hondenvoeding is als volgt opgebouwd:

| lijn | recepten | losse verpakkingen |
|---|---:|---:|
| Droogvoer — Adult | 6 | 10 |
| Droogvoer — Large Breed | 2 | 2 |
| Droogvoer — Small Breed | 1 | 3 |
| Droogvoer — Energy / Light / Senior | 3 | 6 |
| Droogvoer — Puppy / Junior | 4 | 5 |
| Natvoer — 65% vlees | 5 | 5 |
| Natvoer — Single Protein | 6 | 6 |
| Natvoer — Salami Hondenworst | 5 | 5 |
| **totaal** | **29** | **39** |

De 23 droogvoerproducten zijn gebundeld tot 13 recepten:

- Adult Kip — 3 / 12 kg
- Adult Lam — 3 / 12 kg
- Adult Zalm — 3 / 12 kg
- Adult Small Breed Kip — 1 / 3 / 7 kg
- Adult Large Breed Kip — 12 kg
- Adult Large Breed Zalm — 12 kg
- Energy Kip — 3 / 12 kg
- Light Lam — 3 / 12 kg
- Senior Kalkoen — 3 / 12 kg
- Puppy Kip — 3 / 12 kg
- Puppy Lam — 3 / 12 kg
- Junior Large Breed Kip — 12 kg
- Junior Large Breed Zalm — 12 kg

De 16 natvoerrecepten zijn:

- 65% Rund met Lever, Kip met Lever, Lam met Hartjes, Zalm & Kip en Hert & Kip — elk 400 g;
- Single Protein Kip, Rund, Lam, Kalkoen, Eend en Zalm voor puppies — elk 400 g;
- Salami Hondenworst Kip, Zalm, Kalkoen, Lam en Eend & Groenten — elk 800 g.

Binnen elke receptgroep is de samenstelling op alle maatpagina's woordelijk gelijk. Er zijn dus geen verschillende formules onder dezelfde naam of binnen dezelfde verpakkingsgroep gevonden.

## Overgeslagen

- **Kattenvoer**: 20 producten (droog, nat en kitten). Deze vallen buiten de opdracht en zijn niet in het werkbestand opgenomen.
- **Hondensnacks**: 9 losse snacks en 2 snackbundels (Crunchy Crackers en Graanvrije snacks). Dit zijn geen complete maaltijden.
- **Proef- en smaakpakketten**: het Natvoer 65%-smaakpakket, het Single Protein-smaakpakket, de Salami-proeverij en het kennismakingspakket. Dit zijn bundels van al opgenomen recepten, geen eigen formule.
- **Merchandise**: 3 artikelen (poepzakjes en een snacktasje).

De vier hondenvoedingsbundels en de snackbundels zijn dus niet als zelfstandig product opgenomen. De losse recepten uit de natvoerpakketten staan wel in het werkbestand.

## Twijfel

Geen. Alle 29 recepten hebben een volledige, zichtbare samenstelling op een Nederlandstalige officiële pagina. Er zijn geen records zonder etiketvelden en geen records met een vertaalde lijst.

## Bijzonderheden

- **Salami Hondenworst**: de fabrikant beschrijft dit als "Een volledige voeding … maar ook geschikt als snack". Omdat de pagina het product expliciet als volledige voeding positioneert, zijn de vijf smaken als natvoer opgenomen. De 800 g-verpakking is de enige maat.
- **Lijnnamen**: de officiële titels beginnen met "Profine Dog". In `naam` is alleen de merknaam "Profine" weggelaten; de lijnnaam "Dog" blijft staan, zodat bijvoorbeeld `Dog Dry Adult Kip` en `Dog Single Protein Kip` de officiële productnamen volgen.
- **Verpakkingen**: alle maten zijn enkelvoudige verpakkingen. De natvoerproefpakketten zijn geen aparte maat van een recept en zijn daarom niet in `verpakking` opgenomen.
- **GTIN**: in de productfeed en op de pagina's zijn geen zichtbare barcodes opgenomen. `gtin` is daarom overal `null`.
- **Witruimte**: dubbele spaties en regeleinden uit de HTML zijn genormaliseerd naar één gewone spatie. Woorden, percentages, decimalen, leestekens en schrijffouten zijn verder letterlijk overgenomen. Dat geldt bijvoorbeeld voor `0,02% )` bij Puppy Kip en `) (6%)` zonder spatie bij Adult Large Breed Kip.
- **Bronadres**: `https://www.profine.com/` is een geparkeerd domein en toont niet het assortiment. De officiële winkel staat op `https://profinepetfood.com/`; dat adres is ook in `merken.json` gecorrigeerd.
- **Bestaande producten**: Profine had nog geen live-producten in de app. De merge kan daarom alle 29 records als nieuw toevoegen.
