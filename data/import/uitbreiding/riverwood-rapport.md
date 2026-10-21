# Riverwood — rapport uitbreiding assortiment

Datum: 20 oktober 2026  
Bron: <https://www.riverwoodpetfood.com> (officiële fabrikantensite, Shopify)  
Bestand: `data/import/uitbreiding/riverwood.json`

## Uitkomst

- **28 recepten** complete hondenvoeding: **9 kibble**, **19 wet**, **0 raw**.
- 52 afzonderlijke productpagina’s/verpakkingsvarianten zijn gebundeld tot deze 28 records.
- **0 records met `twijfel`**: van alle 28 recepten stond de ingrediëntenlijst volledig op de pagina.
- **0 vertalingen**: de site is Nederlandstalig, dus `etiketNl` is gelijk aan `etiketOrigineel` en `aantekening` is `null`.
- **0 GTIN’s in het bestand**: de JSON-LD op de productpagina’s bevat bij de meeste afzonderlijke verpakkingsvarianten wel een GTIN, maar die verschilt per maat (de 2 kg- en 12 kg-pagina’s hebben verschillende barcodes). Omdat één record meerdere maten bundelt, is er geen eenduidige GTIN; `gtin` is daarom overal `null`.
- **0 bestaande Riverwood-producten in de app** volgens `voortgang.md` (peildatum 20-10-2026); alle 28 recepten zijn dus nieuw.

## Werkwijze en bronnen

- `robots.txt` staat productpagina’s toe; er is met een herkenbare user-agent en ongeveer één verzoek per seconde opgehaald. Er waren geen 403/429-antwoorden.
- Sitemap: <https://www.riverwoodpetfood.com/sitemap.xml>, met de productensitemap <https://www.riverwoodpetfood.com/sitemap_products_1.xml?from=10128720625993&to=10415143092553>. Die bevat 250 product-URL’s (plus de homepage). De Duitse, Engelse, Franse en Spaanse productsitemaps bevatten eveneens 250 product-URL’s; dat zijn vertalingen van dezelfde set.
- Shopify-feed: <https://www.riverwoodpetfood.com/products.json?limit=250&page=1> en `page=2`, samen **251 producten**.
- Alle 251 producttitels en tags zijn beoordeeld. Kattenvoer, snacks, kauwproducten, supplementen, non-food en proef-/voordeelpakketten zijn uitgesloten.
- Per recept is de productpagina met de kleinste verpakking als primaire bron gebruikt. De samenstelling op de 12 kg-/6 kg-pagina’s, de 12 x 300 g-pagina’s, de 6 x 400 g-pagina’s en de Kerst-6-pack is telkens vergeleken en identiek bevonden.
- De samenstelling is overgenomen uit het accordeonblok **“Ingrediënten”**. De analytische bestanddelen, nutritionele toevoegingen en het voedingsadvies zijn geen onderdeel van de etiketlijst en zijn niet meegenomen. De site gebruikt de term “Ingrediënten”, niet “Samenstelling”.
- Er is niets aangevuld, samengevat of gecorrigeerd. Ook bronfouten en ontbrekende spaties zijn letterlijk overgenomen, bijvoorbeeld “gedehyrdreerd”, “lijnaad”, “veebessen”, “gele erwtenzetmeel15%” en “90 mg.kg”.

## Bronpagina’s per record

| Naam | Voertype | Verpakking | Bronpagina |
|---|---|---|---|
| Rendier & Hert met Wild Zwijn | kibble | 2 / 12 kg | <https://www.riverwoodpetfood.com/products/rendier-hert-met-wild-zwijn> |
| Adult Large Breed Eend & Kalkoen met Fazant | kibble | 2 / 12 kg | <https://www.riverwoodpetfood.com/products/adult-large-breed-eend-kalkoen-met-fazant> |
| Junior Large Breed Eend & Kalkoen met Fazant | kibble | 2 / 12 kg | <https://www.riverwoodpetfood.com/products/junior-xl-eend-kalkoen-met-fazant> |
| Hert & Lam met Konijn | kibble | 2 / 12 kg | <https://www.riverwoodpetfood.com/products/hert-lam-met-konijn> |
| Forel & Makreel met Haring | kibble | 2 / 12 kg | <https://www.riverwoodpetfood.com/products/forel-makreel-met-haring> |
| Adult Paard & Hert met Konijn | kibble | 2 / 12 kg | <https://www.riverwoodpetfood.com/products/paard-hert-met-konijn> |
| Small Breed Gans & Eend met Kwartel | kibble | 2 / 6 kg | <https://www.riverwoodpetfood.com/products/small-breed-gans-eend-met-kwartel> |
| Puppy Kalkoen & Eend met Fazant | kibble | 2 / 12 kg | <https://www.riverwoodpetfood.com/products/puppy-kalkoen-eend-met-fazant> |
| Zalm & Witvis met Haring | kibble | 2 / 12 kg | <https://www.riverwoodpetfood.com/products/zalm-witvis-met-haring> |
| Adult Surf 'n Turf Kalkoen met Buffel & Karper | wet | 300 g / 12 x 300 g | <https://www.riverwoodpetfood.com/products/adult-surf-n-turf-kalkoen-met-buffel-karper> |
| Adult Surf 'n Turf Kalkoen met Zalm & Karper | wet | 300 g / 12 x 300 g | <https://www.riverwoodpetfood.com/products/adult-surf-n-turf-turkey-with-salmon-carp> |
| Adult Surf 'n Turf Kalkoen met Wildzwijn & Karper | wet | 300 g / 12 x 300 g | <https://www.riverwoodpetfood.com/products/natvoer-vlees-en-vis-hond-adult-surf-n-turf-kalkoen-met-wildzwijn-karper-300-gram> |
| Adult Surf 'n Turf Kalkoen met Fazant & Karper | wet | 300 g / 12 x 300 g | <https://www.riverwoodpetfood.com/products/natvoer-hond-adult-surf-n-turf-kalkoen-met-fazant-karper> |
| Adult Surf 'n Turf Kalkoen met Struisvogel & Karper | wet | 300 g / 12 x 300 g | <https://www.riverwoodpetfood.com/products/natvoer-vlees-en-vis-hond-adult-surf-n-turf-kalkoen-met-struisvogel-karper-300-gram> |
| Adult Surf 'n Turf Kalkoen met Kwartel & Karper | wet | 300 g / 12 x 300 g | <https://www.riverwoodpetfood.com/products/natvoer-vlees-en-vis-hond-adult-surf-n-turf-kalkoen-met-kwartel-karper-300-gram> |
| Eend Mono Proteïne | wet | 400 g / 6 x 400 g | <https://www.riverwoodpetfood.com/products/eend-mono-proteine-400-gram> |
| Geit Mono Proteïne | wet | 400 g / 6 x 400 g | <https://www.riverwoodpetfood.com/products/geit-mono-proteine-400-gram> |
| Hert Mono Proteïne | wet | 400 g / 6 x 400 g | <https://www.riverwoodpetfood.com/products/hert-mono-proteine-400-gram> |
| Kalf Mono Proteïne | wet | 400 g / 6 x 400 g | <https://www.riverwoodpetfood.com/products/kalf-mono-proteine-400-gram> |
| Kalkoen Mono Proteïne | wet | 400 g / 6 x 400 g | <https://www.riverwoodpetfood.com/products/kalkoen-mono-proteine-400-gram> |
| Paard Mono Proteïne | wet | 400 g / 6 x 400 g | <https://www.riverwoodpetfood.com/products/paard-mono-proteine-400-gram> |
| Wildzwijn Mono Proteïne | wet | 400 g / 6 x 400 g | <https://www.riverwoodpetfood.com/products/wildzwijn-mono-proteine-400-gram> |
| Lam Mono Proteïne | wet | 400 g / 6 x 400 g | <https://www.riverwoodpetfood.com/products/lam-mono-proteine-400-gram> |
| Kerstmaaltijd Konijn & Kalkoen | wet | 400 g / 6 x 400 g | <https://www.riverwoodpetfood.com/products/christmas-dinner-konijn-kalkoen-400-gram> |
| Kabeljauw Visworst | wet | 800 g | <https://www.riverwoodpetfood.com/products/kabeljauw-visworst-800-gram> |
| Kabeljauw & Tonijn Visworst | wet | 800 g | <https://www.riverwoodpetfood.com/products/kabeljauw-tonijn-visworst-800-gram> |
| Kabeljauw & Forel Visworst | wet | 800 g | <https://www.riverwoodpetfood.com/products/kabeljauw-forel-visworst-800-gram> |
| Kabeljauw & Zalm Visworst | wet | 800 g | <https://www.riverwoodpetfood.com/products/kabeljauw-zalm-visworst-800-gram> |

## Overgeslagen producten en redenen

| Groep | Voorbeelden | Reden |
|---|---|---|
| Kattenvoer en kattenbenodigdheden | Natvoer voor katten, Caviar for Cats, kattenbakvulling, kattengrit | Geen hondenvoeding. |
| Hondensnacks en kauwproducten | Dental sticks, vleesstrips, trainers, kauwbenen, gedroogde vis- en vleessnacks | Geen complete maaltijd. |
| Supplementen | Noorse Zalmolie | Supplement, geen complete voeding. |
| Non-food | Badlaken, vlag, drinkfles, blikdop, maatbeker | Geen voeding. |
| Proef-, voordeel- en startpakketten | Alle XL-/XXL-pakketten, Puppy Pakket, Junior Large Breed Startpakket, Surf ‘n Turf Proeverij, Mono Proteïne Proeverij, snackpakketten | Bundel van bestaande recepten of snacks; geen eigen recept met één samenstelling. |
| Multipacks van hetzelfde recept | 12 x 300 g Surf ‘n Turf, 6 x 400 g mono proteïne, 6 x 400 g Kersteditie | Geen apart record; de maat staat bij het recept in `verpakking`. |

De Kersteditie is zowel als losse 400 g als als 6 x 400 g verkocht. Beide pagina’s hebben dezelfde ingrediëntenlijst; daarom is één record “Kerstmaaltijd Konijn & Kalkoen” met verpakking “400 g / 6 x 400 g” opgenomen.

## Twijfel

Geen. Alle 28 recepten hadden een volledige, leesbare ingrediëntenlijst. Er zijn daarom geen twijfelrecords zonder etiketvelden en er is geen product weggelaten wegens een ontbrekende samenstelling.

## Volledigheid

- De productsitemap en `products.json` zijn naast elkaar gelegd. De sitemap bevat 250 product-URL’s; `products.json` bevat 251 producten. Het enige verschil is de Kersteditie 6 x 400 g, die niet in de sitemap staat maar wel in de feed. Die is meegenomen in de verpakking van het Kerstrecord.
- Van alle 251 producten zijn titel, producttype en tags bekeken. De 52 productvermeldingen (28 recepten) zijn de enige producten die als zelfstandig compleet hondenvoerrecept te identificeren zijn. Er zijn geen aanvullende hondenvoerlijnen (puppy, senior, large breed, dieetvoeding, natvoer of rauwvoer) buiten deze set gevonden.
- Alle 52 productvermeldingen hebben een samenstelling; er ontbreekt dus geen etiket. Het assortiment is daarmee voor complete hondenvoeding aantoonbaar volledig ten opzichte van de officiële productfeed en sitemap.

## Gaten en aandachtspunten

- **Geen rauwvoer**: Riverwood verkoopt in deze feed geen raw producten. `raw` komt daarom niet voor.
- **GTIN niet eenduidig per record**: de JSON-LD bevat per verpakkingsmaat een eigen barcode; de 2 kg- en 12 kg-varianten van hetzelfde recept hebben bijvoorbeeld verschillende GTIN’s. Een record bundelt juist meerdere maten, dus één GTIN zou maar één maat dekken. Daarom is `gtin` overal `null` gelaten. De waarden zijn niet uit SKU’s afgeleid of verzonnen.
- **Geen expliciet “compleet”-label op elke pagina**: de site zet niet bij elk natvoerproduct het woord “compleet”. De opgenomen natvoerrecepten staan in de categorie “Natvoer hond”, hebben een volledige ingrediëntenlijst met vitaminen/mineralen en zijn als maaltijd gepositioneerd.
- **Bronfouten**: diverse ingrediëntenlijsten bevatten typefouten of ontbrekende spaties. Die zijn letterlijk overgenomen en niet gecorrigeerd; een mens kan ze bij het nalopen tegen de verpakking controleren.
- **Geen vertaalaantekening**: de site is Nederlands, dus `etiketNl` = `etiketOrigineel` en `aantekening` = `null`.
