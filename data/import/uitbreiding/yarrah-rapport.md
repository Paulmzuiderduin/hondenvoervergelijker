# Yarrah — assortimentsrapport

Peildatum: 2026-10-23
Officiële bron: https://www.yarrah.com/
Werkbestand: `data/import/uitbreiding/yarrah.json`

## Uitkomst

| voertype | records |
|---|---:|
| kibble | 8 |
| wet | 10 |
| raw | 0 |
| **totaal** | **18** |

- 18 unieke recepten/producten, elk met een eigen productpagina en een letterlijke ingrediëntenlijst.
- 0 records in `twijfel`.
- 0 records met een vertaald etiket; alle gebruikte pagina's zijn Nederlands.
- 6 bestaande producten zijn ongewijzigd teruggevonden; 12 producten zijn nieuw ten opzichte van `data/import/yarrah.json`.

## Gebruikte bronnen en controle

Gecontroleerd:

- de categoriepagina's `/hondenvoer/hondenbrokken/` en `/hondenvoer/natvoer/`;
- de sitemapindex `/sitemap.xml` en de bijbehorende gzip-sitemap met 510 URL's;
- alle 18 productpagina's, alle met HTTP 200 en een zichtbare paragraaf onder "Ingrediënten";
- de maatkeuze en de ProductGroup/JSON-LD-gegevens per productpagina voor de verpakkingsmaten;
- de variantpagina's per maat waar Yarrah die apart aanbiedt; de samenstelling is per maat vergeleken en identiek.

De sitemap is aanvullend gebruikt omdat de categoriepagina's niet alle producten tonen. Daarbij is één extra levensmiddel gevonden dat niet in het natvoeroverzicht stond: **Biologisch hondenvoer paté met varkensvlees** (405 g). De officiële productpagina is bereikbaar, noemt de volledige samenstelling en beschrijft een complete maaltijd voor volwassen honden. Daarom is dit product opgenomen.

## Volledigheid

Het complete assortiment is als volgt opgebouwd:

| lijn | aantal |
|---|---:|
| Hondenbrokken | 8 |
| Natvoer — blik | 3 |
| Natvoer — chunks | 3 |
| Natvoer — kuipjes / aluminium | 4 |
| **totaal** | **18** |

De productpagina's uit de sitemap zijn vergeleken met de categorieoverzichten. Afgezien van de hierboven genoemde paté met varkensvlees en de bewust overgeslagen multipacks zijn er geen extra recepten gevonden.

## Overgeslagen

- **Multipacks**: `Biologisch hondenvoer paté in 3 smaken` (6 x 150 g), `Biologisch hondenvoer paté met rund en kip multipack`, `Biologisch hondenvoer paté met kip en kalkoen multipack` en de algemene multipackpagina's. Dit zijn bundels van al opgenomen recepten, geen eigen formule. De losse recepten staan wel in het werkbestand.
- **Snacks en kauwproducten**: kauwstaafjes, mini snacks, vegan hondenkoekjes en dental sticks. Deze vallen buiten complete hondenvoeding.
- **Kattenvoer**: de kattenlijn is niet geïnventariseerd.
- **Proefpakketten en categoriepagina's**: geen zelfstandige recepten.

## Bijzonderheden

- **Paté met kip, blik versus aluminium**: Yarrah verkoopt twee verschillende recepten onder dezelfde zichtbare naam "Biologisch hondenvoer paté met kip". De blikvariant (400 g) bevat 27% kip met varken en rund; de aluminiumvariant (12 x 150 g) bevat 57% kip en is graanvrij. De samenstellingen zijn duidelijk verschillend. Om ze in de app uit elkaar te houden, is aan de naam de verpakkingsvorm toegevoegd: `(blik)` respectievelijk `(alu)`. Dit volgt dezelfde werkwijze als bij eerdere merken met blik- en trayvarianten.
- **Paté met kip en eend**: de HTML-titel van deze pagina zegt abusievelijk "Biologisch kattenvoer paté kip & eend". De pagina zelf staat onder de hondenlijn, heeft `Huisdier: Hond` in de ProductGroup, een hondenkop, een hondenbeschrijving en de hondensamenstelling. Daarom is het product als hondenvoer opgenomen. De titelfout is een fout op de fabrikantensite.
- **Barcodes**: de GTIN's staan in de JSON-LD van de pagina's, maar één recept heeft meerdere barcodes (één per maat). Omdat het etiket geen zichtbare barcode toont, is `gtin` overal `null` gelaten.
- **Witruimte**: de labels zijn als één regel opgeslagen; witruimte uit de HTML is genormaliseerd. Woorden, percentages, decimalen, leestekens en schrijffouten zijn verder letterlijk overgenomen, inclusief `lever*,vlees*` bij de paté met varkensvlees.
- **Bestaande producten**: de zes al aanwezige producten zijn met dezelfde namen en verpakkingsmaten teruggevonden. De merge laat die records intact.

## Nieuwe varianten t.o.v. de bestaande app

Nieuw zijn:

- Biologisch Vegan Tarwevrij hondenvoer;
- Biologisch Grain-Free hondenvoer;
- Biologisch Puppy hondenvoer;
- Biologisch Vegan hondenvoer;
- Biologisch Small Breed hondenvoer;
- Biologisch hondenvoer paté met kip (blik);
- Biologisch hondenvoer paté met varkensvlees;
- Biologisch hondenvoer paté met kip en zalm;
- Biologisch hondenvoer paté met kip (alu);
- Biologisch hondenvoer chunks vega;
- Biologisch hondenvoer paté met rund en kip;
- Biologisch hondenvoer paté met kip en eend.

Bestaand en ongewijzigd: Biologisch Adult hondenvoer met kip, Biologisch Sensitive hondenvoer, Biologisch Senior hondenvoer, Biologisch hondenvoer chunks met kip, Biologisch hondenvoer chunks met rund en Biologisch hondenvoer paté met kip en kalkoen.
