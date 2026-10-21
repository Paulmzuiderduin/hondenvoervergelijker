# Edgard & Cooper — rapport uitbreiding assortiment

Datum: 20 oktober 2026  
Bron: <https://www.edgardcooper.com/nl/> (officiële fabrikantensite)  
Bestand: `data/import/uitbreiding/edgard-en-cooper.json`

## Uitkomst

- **37 recepten** complete hondenvoeding: **12 kibble**, **25 wet**, **0 raw**.
  - 7 natvoerzakjes (Kwijl-in-Stijl, 150 g)
  - 7 natvoerblikken (400/800 g)
  - 11 natvoerkuipjes (100/150/300 g)
- Alle 37 productpagina's zijn afzonderlijk opgehaald; elke pagina gaf HTTP 200 en een zichtbare samenstelling.
- **0 twijfelrecords**, **0 vertalingen**, **0 GTIN's**.
- In de live database staan **7 producten** van Edgard & Cooper. Daarvan komen **6 exact overeen** met een recept in dit bestand. Het zevende live-product, **Adult Kip graanvrij** (7 kg), staat niet in het huidige officiële NL-assortiment en is daarom niet als apart record opgenomen.
- **31 recepten zijn nieuw** ten opzichte van de 6 exacte matches.

## Bestaande live-producten versus deze set

| Live-product | In dit bestand | Verpakking live | Verpakking bron |
|---|---|---|---|
| Verse Kip | Verse Kip | 0,7 / 1 / 2,5 / 3 / 7 / 12 kg | 0,7 / 1 / 2,5 / 3 / 7 / 12 kg |
| Vers Lam | Vers Lam | 0,7 / 1 / 2,5 / 3 / 7 / 12 kg | 0,7 / 1 / 2,5 / 3 / 7 / 12 kg |
| Verse Eend | Verse Eend | 2,5 / 7 / 12 kg | 2,5 / 7 / 12 kg |
| Kip & kalkoen | Kip & kalkoen (blik) | 400 / 800 g | 400 / 800 g |
| Wild & eend | Wild & eend (blik) | 400 / 800 g | 400 g |
| Kwijl-in-Stijl Kip | Kwijl-in-Stijl Kip (zakje) | 150 g | 150 g |
| Adult Kip graanvrij | — | 7 kg | niet in huidige NL-assortiment |

Toelichting:

- De zes matches zijn inhoudelijk gecontroleerd: de samenstelling op de officiële pagina is gelijk aan de tekst in de live database.
- **Wild & eend**: de live-app noemt 400/800 g, maar de officiële productpagina biedt nu alleen 400 g (en 6 x 400 g) aan. In het werkbestand staat daarom de actuele bronmaat `400 g`. De import ontdubbelt dit record op de identieke etikettekst.
- **Adult Kip graanvrij** is een ouder live-product met een andere samenstelling dan de huidige Verse Kip (onder meer andere percentages en ingrediënten). Het is niet uit de database verwijderd en niet als nieuw recept toegevoegd; het valt buiten het huidige officiële assortiment.

## Werkwijze en bronnen

- `robots.txt` (<https://www.edgardcooper.com/robots.txt>) staat alle paden toe. Er is opgehaald met een herkenbare user-agent en ongeveer één verzoek per 1,2 seconde. Er waren geen 403- of 429-antwoorden.
- Sitemap: <https://www.edgardcooper.com/sitemap.xml>, met de productensitemap <https://www.edgardcooper.com/sitemap/products.xml>.
  - De productsitemap bevat 348 URL's in alle talen, waarvan 58 Nederlandse product-URL's: 34 hondenproducten en 24 kattenproducten.
  - De sitemap is **niet compleet**: 33 van de 67 hondenproducten op de collectiepagina ontbreken, waaronder alle 7 Kwijl-in-Stijl-zakjes en 8 van de 12 droogvoerrecepten.
- Collectiepagina: <https://www.edgardcooper.com/nl/collections/dogs/>.
  - Deze pagina bevat 67 hondenproducten: 37 complete voeding, 19 snacks, 2 dentalsticks, 8 bundels en 1 poepzakjesproduct.
  - Alle producten uit de sitemap komen ook in deze collectie voor. De collectie is daarom als volledigheidscriterium gebruikt.
- Van alle 37 complete recepten is de productpagina afzonderlijk opgehaald. De samenstelling is overgenomen uit het veld `composition` van de productpagina, dat ook de zichtbare tekst onder "Samenstelling" vult. Analytische bestanddelen, nutritionele toevoegingen en technologische additieven zijn geen onderdeel van de etiketlijst en zijn niet meegenomen.
- Een Shopify-`products.json`-feed bestaat niet (HTTP 404); de site is een Next.js-site met de productdata in de server-gerenderde pagina.
- De site is Nederlandstalig. Daarom is `etiketNl` overal gelijk aan `etiketOrigineel` en is `aantekening` overal `null`.
- Verpakkingsmaten van hetzelfde recept zijn gebundeld. Alleen de losse verkoopmaten zijn opgenomen; multipacks zoals 6 x 400 g, 8 x 150 g, 11 x 150 g, 17 x 100 g en 18 x 300 g zijn niet als aparte maat opgenomen. Het zijn verpakkingseenheden van hetzelfde recept, geen andere inhoudsmaat.

## Bronpagina's per record

### Kibble (12)

| Naam | Voertype | Verpakking | Bronpagina |
|---|---|---|---|
| Verse Kip | kibble | 0,7 / 1 / 2,5 / 3 / 7 / 12 kg | <https://www.edgardcooper.com/nl/products/dog-dry-food-chicken/> |
| Verse Zalm | kibble | 0,7 / 1 / 2,5 / 3 / 7 / 12 kg | <https://www.edgardcooper.com/nl/products/dog-dry-food-salmon/> |
| Vers Hert & Eend | kibble | 1 / 2,5 / 3 / 7 / 12 kg | <https://www.edgardcooper.com/nl/products/dog-dry-food-venison-duck/> |
| Vers Lam | kibble | 0,7 / 1 / 2,5 / 3 / 7 / 12 kg | <https://www.edgardcooper.com/nl/products/dog-dry-food-lamb/> |
| Verse Eend | kibble | 2,5 / 7 / 12 kg | <https://www.edgardcooper.com/nl/products/dog-dry-food-duck/> |
| Verse Rund & Kip (bio) | kibble | 2,5 / 7 kg | <https://www.edgardcooper.com/nl/products/dog-dry-food-beef-chicken/> |
| Verse Kalkoen & Kip (bio) | kibble | 2,5 / 7 kg | <https://www.edgardcooper.com/nl/products/dog-dry-food-turkey-chicken/> |
| Wortel & Courgette (plantaardig) | kibble | 1 / 2,5 / 7 kg | <https://www.edgardcooper.com/nl/products/dog-dry-food-carrot-courgette/> |
| Rode Biet & Pompoen (plantaardig) | kibble | 2,5 / 7 kg | <https://www.edgardcooper.com/nl/products/dog-dry-food-beetroot-pumpkin/> |
| Verse Eend & Kip (puppy) | kibble | 1 / 2,5 / 3 / 7 / 12 kg | <https://www.edgardcooper.com/nl/products/dog-dry-food-duck-chicken/> |
| Verse Zalm & Kalkoen (puppy) | kibble | 2,5 / 7 / 12 kg | <https://www.edgardcooper.com/nl/products/dog-dry-food-salmon-turkey/> |
| Verse Kip & Zalm (senior) | kibble | 2,5 / 7 / 12 kg | <https://www.edgardcooper.com/nl/products/dog-dry-food-chicken-salmon/> |

### Natvoer — zakjes (7)

| Naam | Voertype | Verpakking | Bronpagina |
|---|---|---|---|
| Kwijl-in-Stijl Kip | wet | 150 g | <https://www.edgardcooper.com/nl/products/dog-pouch-drool-worthy-chicken/> |
| Kwijl-in-Stijl Zalm & Kip | wet | 150 g | <https://www.edgardcooper.com/nl/products/dog-pouch-drool-worthy-salmon-chicken/> |
| Kwijl-in-Stijl Lam & Kip | wet | 150 g | <https://www.edgardcooper.com/nl/products/dog-pouch-drool-worthy-lamb-chicken/> |
| Kwijl-in-Stijl Eend | wet | 150 g | <https://www.edgardcooper.com/nl/products/dog-pouch-drool-worthy-duck/> |
| Kwijl-in-Stijl Wild Zwijn & Eend | wet | 150 g | <https://www.edgardcooper.com/nl/products/dog-pouch-drool-worthy-wild-boar-duck/> |
| Kwijl-in-Stijl Kalkoen (puppy) | wet | 150 g | <https://www.edgardcooper.com/nl/products/dog-pouch-drool-worthy-turkey/> |
| Kwijl-in-Stijl Kip (senior) | wet | 150 g | <https://www.edgardcooper.com/nl/products/dog-pouch-senior-drool-worthy-chicken/> |

### Natvoer — blik (7)

| Naam | Voertype | Verpakking | Bronpagina |
|---|---|---|---|
| Lam & rund | wet | 400 / 800 g | <https://www.edgardcooper.com/nl/products/dog-tin-lamb-beef/> |
| Kip & kalkoen | wet | 400 / 800 g | <https://www.edgardcooper.com/nl/products/dog-tin-chicken-turkey/> |
| Wild & eend | wet | 400 g | <https://www.edgardcooper.com/nl/products/dog-tin-game-duck/> |
| ASC-Zalm & Kalkoen | wet | 400 g | <https://www.edgardcooper.com/nl/products/dog-tin-salmon-turkey/> |
| Rund | wet | 400 / 800 g | <https://www.edgardcooper.com/nl/products/dog-tin-beef/> |
| Eend & kip (puppy) | wet | 400 g | <https://www.edgardcooper.com/nl/products/dog-tin-duck-chicken/> |
| Kip & ASC-Zalm (senior) | wet | 400 g | <https://www.edgardcooper.com/nl/products/dog-tin-chicken-salmon/> |

### Natvoer — kuipjes (11)

| Naam | Voertype | Verpakking | Bronpagina |
|---|---|---|---|
| Kip & kalkoen (kuipje) | wet | 150 / 300 g | <https://www.edgardcooper.com/nl/products/dog-cup-chicken-turkey/> |
| Wild & eend (kuipje) | wet | 150 / 300 g | <https://www.edgardcooper.com/nl/products/dog-cup-game-duck/> |
| Zalm & Kalkoen (kuipje) | wet | 150 / 300 g | <https://www.edgardcooper.com/nl/products/dog-cup-salmon-turkey/> |
| Lam & rund (kuipje) | wet | 150 / 300 g | <https://www.edgardcooper.com/nl/products/dog-cup-lamb-beef/> |
| Rund & eend | wet | 150 g | <https://www.edgardcooper.com/nl/products/dog-cup-beef-duck/> |
| Biologische kalkoen | wet | 100 g | <https://www.edgardcooper.com/nl/products/dog-cup-turkey/> |
| Biologisch rund | wet | 100 g | <https://www.edgardcooper.com/nl/products/dog-cup-beef/> |
| Biologische vis | wet | 100 g | <https://www.edgardcooper.com/nl/products/dog-cup-fish/> |
| Eend & kip (puppy, kuipje) | wet | 150 / 300 g | <https://www.edgardcooper.com/nl/products/dog-cup-duck-chicken/> |
| Biologische kip & vis (puppy) | wet | 100 g | <https://www.edgardcooper.com/nl/products/dog-cup-chicken-fish/> |
| Kip & zalm (senior) | wet | 150 g | <https://www.edgardcooper.com/nl/products/dog-cup-chicken-salmon/> |

## Overgeslagen producten en redenen

| Groep | Aantal | Voorbeelden | Reden |
|---|---:|---|---|
| Snacks — bites | 6 | Bites Kip, Bites Eend en Kip, Bites Zalm en Kip | Beloningssnacks, geen complete maaltijd. |
| Snacks — biscuits | 5 | Koekjes Kip, Koekjes Banaan en Pindakaas | Beloningskoekjes, geen complete maaltijd. |
| Snacks — strips | 4 | Strips Kip, Strips Zalm en Kip | Vleesstrips, geen complete maaltijd. |
| Snacks — bars | 4 | Reep Kip, Reep Lam en Kalkoen | Beloningsrepen, geen complete maaltijd. |
| Dental | 2 | Doggy Dental Appel & Eucalyptus, Doggy Dental Munt & Aardbei | Tandverzorgingssnack, geen complete maaltijd. |
| Bundels | 8 | Tins Grain Free, Cups Grain Free, Puppy Cups, Treats Variety | Bundel van bestaande recepten of snacks; geen eigen recept met één samenstelling. |
| Non-food | 1 | Poepzakjes | Geen voeding. |

De 19 snacks, 2 dentalsticks, 8 bundels en 1 non-foodproduct zijn allemaal op titel, producttype en beschrijving beoordeeld. Geen daarvan is als compleet hondenvoer aangemerkt.

## Twijfel en bronafwijkingen

**Geen twijfelrecords.** Van alle 37 opgenomen recepten stond de ingredientenlijst op de productpagina. Er zijn geen etiketvelden weggelaten en er is geen andere pagina gebruikt dan de opgegeven `bronUrl`.

Wel zijn er bronafwijkingen die letterlijk zijn overgenomen:

- **Verse Zalm** en **Vers Hert & Eend** eindigen op de bron met `*Natura` in plaats van `*Natuurlijk`. De ingredientenlijst zelf is volledig; alleen de voetnoot achter de laatste punt is op de bron afgekapt. Er is niets aangevuld of gecorrigeerd. Omdat de lijst zichtbaar en inhoudelijk compleet is, zijn dit geen twijfelrecords.
- **Biologische kalkoen**, **Biologisch rund**, **Biologische vis** en **Biologische kip & vis** beginnen in het bronveld met de voetnoot `*Vervaardigd met producten afkomstig van 100% gecontroleerde biologische landbouw en veeteelt.` Die staat letterlijk in hetzelfde veld en is meegenomen.
- Dubbele spaties, ontbrekende eindpunten en schrijfwijzen zoals `dillee` zijn letterlijk overgenomen. Voorbeelden: `Kip & kalkoen` (blik) heeft een dubbele spatie voor `0,25%`; `Wild & eend` (blik) heeft een dubbele spatie voor `0,01%`; `Kip & ASC-Zalm` heeft dubbele spaties bij de kamille en gentiaan; `Wortel & Courgette` heeft een dubbele spatie voor `bosbessen`; `Verse Rund & Kip (bio)` eindigt met een spatie.
- De namen van de puppy- en seniorvarianten zijn aangevuld met `(puppy)` of `(senior)`, omdat de officiële H1 vaak alleen de smaak noemt. De toevoeging is gebaseerd op het zichtbare leeftijdslabel, de SEO-titel of de receptbeschrijving op dezelfde pagina. Het is geen nieuw product en geen vertaling.
- Bij natvoer is `(blik)` of `(kuipje)` toegevoegd waar dezelfde smaaknaam in twee formaten voorkomt. Zo blijven `Kip & kalkoen` (blik) en `Kip & kalkoen (kuipje)` onderscheidbaar.

## Volledigheid

Het assortiment is als volgt gecontroleerd:

1. De productensitemap is uitgelezen: 34 Nederlandse hondenproduct-URL's. Alle 34 komen voor in de hondencollectie.
2. De collectiepagina `/nl/collections/dogs/` is volledig uitgelezen. Die bevat 67 hondenproducten. De 33 producten die niet in de sitemap staan, zijn stuk voor stuk beoordeeld; daaronder zitten alle 7 Kwijl-in-Stijl-zakjes en 8 extra droogvoerrecepten.
3. Van de 67 hondenproducten zijn 37 als complete voeding geclassificeerd: 12 kibble en 25 wet. De overige 30 zijn snacks, dental, bundels of non-food.
4. Alle 37 complete producten zijn afzonderlijk opgehaald en hebben een volledige samenstelling. Geen enkel record is op basis van een aanname of een andere pagina ingevuld.
5. Er zijn geen rauwe producten, geen dierenartsdieetvoeding, geen large-breed- of light-lijn en geen aanvullende natvoerlijn gevonden die buiten deze 37 valt.

Daarmee is het complete hondenvoedingsassortiment van de Nederlandse Edgard & Cooper-site op 20 oktober 2026 gedekt: 12 droogvoerrecepten en 25 natvoerrecepten.

## Gaten en aandachtspunten

- **Geen rauwvoer**: de Nederlandse site verkoopt geen raw producten. `raw` komt daarom niet voor.
- **Sitemap incompleet**: de productsitemap mist 33 van de 67 hondenproducten. Een controle op alleen de sitemap zou 15 complete recepten hebben gemist (8 droog, 7 natvoerzakjes). De collectiepagina is daarom als primaire inventarisatie gebruikt.
- **Geen GTIN's**: op de productpagina's staat geen barcode als leesbare tekst. De cijfers in sommige afbeeldingsbestandsnamen zijn niet als GTIN op de pagina gepresenteerd en zijn daarom niet overgenomen. `gtin` is overal `null`.
- **Twee afgekapte voetnoten**: `*Natura` bij Verse Zalm en Vers Hert & Eend. De ingredientenlijst is compleet, maar een mens kan de verpakking controleren op de volledige voetnoot.
- **Wild & eend 800 g**: de live-app noemt 400/800 g; de officiële pagina biedt nu alleen 400 g aan. Het werkbestand volgt de bron met 400 g. De import ontdubbelt op de identieke etikettekst.
- **Adult Kip graanvrij**: dit live-product staat niet in het huidige officiële NL-assortiment. Het is een oudere formule en is niet als nieuw record toegevoegd. Het blijft voorlopig in de app staan; een mens kan besluiten het te vervangen door de actuele Verse Kip.
- **Multipacks**: 6 x 400 g, 8 x 150 g, 11 x 150 g, 17 x 100 g en 18 x 300 g zijn niet als aparte verpakkingsmaat opgenomen. Het zijn bundels van hetzelfde recept; de losse maat staat in `verpakking`.
