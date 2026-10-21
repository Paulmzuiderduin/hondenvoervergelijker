# Carnilove — assortiment complete hondenvoeding

Peildatum: 2026-10-20
Bron: <https://carnilove.com/en> (officiële fabrikantensite)
Sitemap: <https://carnilove.com/en/sitemap_products.xml> (155 product-URL's)
JSON: `data/import/uitbreiding/carnilove.json`

## Resultaat

| voertype | aantal recepten |
|---|---:|
| kibble | 17 |
| wet | 12 |
| raw | 0 |
| **totaal** | **29** |
| twijfelrecords | 0 |

De 29 recepten zijn gevonden op 50 product-URL's: 17 droogvoerpagina's, 16 XXL-voordeelpagina's van dezelfde droogvoerrecepten, 12 natvoerpagina's en 5 zogenoemde 5+1-verpakkingen van dezelfde natvoerrecepten. De XXL- en 5+1-pagina's zijn geen aparte recepten; hun verpakkingsmaat is in `verpakking` opgenomen.

## Werkwijze

- `robots.txt` gecontroleerd: productpagina's zijn toegestaan; er zijn geen 403- of 429-reacties opgetreden.
- De sitemap is volledig opgehaald en alle 155 URL's zijn geclassificeerd (zie “Volledigheid”).
- Als controle zijn de collectiepagina's opgehaald: `dry-dog-food` (17), `wet-dog-food` (13), `dog-cans` (5), `dog-pouches` (8), `active-for-dogs` (9), `true-fresh-for-dogs` (8) en `bundles-for-dogs` (24).
- De samenstelling is telkens overgenomen uit het “Ingredients”-paneel van de productpagina. Dat paneel staat in de server-side HTML en is zonder JavaScript leesbaar; er zijn geen afgeschermde of afgekapte lijsten aangetroffen.
- Er is met een herkenbare user-agent gewerkt en met ongeveer één verzoek per seconde per site.
- Alle bronpagina's zijn Engelstalig. Daarom is elke samenstelling naar het Nederlands vertaald met de verplichte aantekening: “Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.”
- `gtin` is overal `null`: op de productpagina's staat geen barcode.

## Bronnen

- Sitemap: <https://carnilove.com/en/sitemap_products.xml>
- Collecties: <https://carnilove.com/en/collections/dry-dog-food>, <https://carnilove.com/en/collections/wet-dog-food>, <https://carnilove.com/en/collections/dog-cans>, <https://carnilove.com/en/collections/dog-pouches>, <https://carnilove.com/en/collections/active-for-dogs>, <https://carnilove.com/en/collections/true-fresh-for-dogs>, <https://carnilove.com/en/collections/bundles-for-dogs>
- De 29 productpagina's met de gebruikte samenstelling staan in de tabel hieronder. De 16 XXL-pagina's en 5 5+1-pagina's zijn daarnaast gebruikt voor de verpakkingsmaten.

## Producten

| product | voertype | verpakking | bronpagina met samenstelling |
|---|---|---|---|
| Active Droogvoer met Zalm voor Volwassen Honden | kibble | — | https://carnilove.com/en/products/active-dry-food-made-with-salmon-for-adult-dogs |
| Active Droogvoer met Zalm & Kalkoen voor Kleine Honden | kibble | 12 kg + 4 kg | https://carnilove.com/en/products/active-dry-food-made-with-salmon-and-turkey-for-small-dogs |
| Active Droogvoer met Zalm & Kalkoen voor Grote Honden | kibble | 12 kg + 4 kg | https://carnilove.com/en/products/active-dry-food-made-with-salmon-and-turkey-for-large-dogs |
| Active Droogvoer met Zalm & Kalkoen voor Junior Grote Honden | kibble | 12 kg + 4 kg | https://carnilove.com/en/products/active-dry-food-made-with-salmon-and-turkey-for-junior-dogs |
| Active Droogvoer met Zalm & Kalkoen voor Volwassen Honden | kibble | 12 kg + 4 kg | https://carnilove.com/en/products/active-dry-food-made-with-salmon-and-turkey-for-adult-dogs |
| Active Droogvoer met Eend & Fazant | kibble | 12 kg + 4 kg | https://carnilove.com/en/products/active-dry-dog-food-made-with-duck-and-pheasant |
| Active Droogvoer met Lam & Wild Zwijn | kibble | 12 kg + 4 kg | https://carnilove.com/en/products/active-dry-dog-food-made-with-lamb-and-wild-boar |
| Active Droogvoer met Hert & Rendier | kibble | 12 kg + 4 kg | https://carnilove.com/en/products/active-dry-dog-food-made-with-venison-and-reindeer |
| Active Droogvoer met Zalm & Kalkoen voor Puppy's | kibble | 12 kg + 4 kg | https://carnilove.com/en/products/active-dry-food-made-with-salmon-and-turkey-for-puppies |
| True Fresh Eend Droogvoer voor Volwassen Honden | kibble | 12 kg + 4 kg | https://carnilove.com/en/products/true-fresh-duck-dry-food-for-adult-dogs |
| True Fresh Eend Droogvoer voor Grote Rassen | kibble | 12 kg + 4 kg | https://carnilove.com/en/products/true-fresh-duck-dry-food-for-large-breeds |
| True Fresh Eend Droogvoer voor Junior Grote Rassen | kibble | 12 kg + 4 kg | https://carnilove.com/en/products/true-fresh-duck-dry-food-for-junior-large-breeds |
| True Fresh Eend Droogvoer voor Kleine Rassen | kibble | 12 kg + 4 kg | https://carnilove.com/en/products/true-fresh-duck-dry-food-for-small-breeds |
| True Fresh Eend Droogvoer voor Puppy's | kibble | 12 kg + 4 kg | https://carnilove.com/en/products/true-fresh-duck-dry-food-for-puppies |
| True Fresh Vis & Kalkoen Droogvoer | kibble | 12 kg + 4 kg | https://carnilove.com/en/products/true-fresh-fish-and-turkey-dry-dog-food |
| True Fresh Rund Droogvoer | kibble | 12 kg + 4 kg | https://carnilove.com/en/products/carnilove-true-fresh-dog-dry-beef-for-adult-all-breeds |
| True Fresh Kalkoen Droogvoer | kibble | 12 kg + 4 kg | https://carnilove.com/en/products/carnilove-true-fresh-dog-dry-turkey-for-adult-all-breeds |
| Paté Blikvoer met Kalkoen & Zalm voor Honden | wet | 400 g / 5 + 1 x 400 g | https://carnilove.com/en/products/pate-can-food-made-with-turkey-and-salmon-for-dogs-400g |
| Paté Blikvoer met Kalkoen & Zalm voor Puppy's | wet | 400 g / 5 + 1 x 400 g | https://carnilove.com/en/products/pate-can-food-made-with-turkey-and-salmon-for-puppies-400g |
| Paté Blikvoer met Kalkoen & Rendier voor Honden | wet | 400 g / 5 + 1 x 400 g | https://carnilove.com/en/products/pate-can-food-made-with-turkey-and-reindeer-for-dogs-400g |
| Paté Blikvoer met Lam & Wild Zwijn voor Honden | wet | 400 g / 5 + 1 x 400 g | https://carnilove.com/en/products/pate-can-food-made-with-lamb-and-wild-boar-for-dogs-400g |
| Paté Blikvoer met Eend & Fazant voor Honden | wet | 400 g / 5 + 1 x 400 g | https://carnilove.com/en/products/pate-can-food-made-with-duck-and-pheasant-for-dogs-400g |
| Kalkoen & Eend met Timoteegras Paté Pouch voor Honden | wet | 300 g | https://carnilove.com/en/products/turkey-and-duck-with-timothy-grass-dog-pouch-pate-300g |
| Kalkoen & Buffel met Rozenblaadjes Paté Pouch voor Honden | wet | 300 g | https://carnilove.com/en/products/turkey-and-buffalo-with-rose-petals-dog-pouch-pate-300g |
| Kalkoen & Kwartel met Wortel Paté Pouch voor Honden | wet | 300 g | https://carnilove.com/en/products/turkey-and-quail-with-carrot-dog-pouch-pate-300g |
| Kalkoen & Fazant met Frambozenblad Paté Pouch voor Honden | wet | 300 g | https://carnilove.com/en/products/turkey-and-pheasant-with-raspberry-leaves-dog-pouch-pate-300g |
| Kalkoen & Hert met Aardbeiblad Paté Pouch voor Honden | wet | 300 g | https://carnilove.com/en/products/turkey-and-venison-with-strawberry-leaves-dog-pouch-pate-300g |
| Kalkoen & Wild Zwijn met Rozenbottels Paté Pouch voor Honden | wet | 300 g | https://carnilove.com/en/products/turkey-and-wildboar-with-rosehips-dog-pouch-pate-300g |
| Kalkoen & Zalm met Bosbessen Paté Pouch voor Puppy's | wet | 300 g | https://carnilove.com/en/products/turkey-and-salmon-with-blueberries-puppy-pouch-pate-300g |

## Overgeslagen

In totaal zijn 155 sitemap-URL's bekeken. Daarvan zijn er 50 gebruikt voor de 29 recepten. De overige 105:

- **74 kattenproducten** — kattenvoeding valt buiten de opdracht (droogvoer, natvoer, snacks en multipacks).
- **19 hondensnacks en kauwproducten** — geen complete voeding:
  - Salmon with Thyme Soft Snack for Small Dog Breeds 200g
  - Lamb Freeze Dried Snack for Dogs 60g
  - Wild Boar with Rosehips Crunchy Snack for Dogs 200g
  - Turkey Freeze Dried Snack for Dogs 60g
  - Turkey & Venison Jerky Snack for Dogs 100g
  - Turkey & Venison Freeze Dried Snack for Dogs 60g
  - Turkey & Salmon Freeze Dried Snack for Dogs 60g
  - Turkey & Rabbit Jerky Snack for Dogs 100g
  - Trout enriched with Dill Soft Snack for Dogs 200g
  - Sardines enriched with Wild Garlic Soft Snack for Dogs 200g
  - Salmon with Blueberries Crunchy Snack for Dogs 200g
  - Quail enriched with Oregano Soft Snack for Dogs 200g
  - Ostrich with Blackberries Crunchy Snack for Dogs 200g
  - Mackerel with Raspberries Crunchy Snack for Dogs 200g
  - Lamb with Cranberries Crunchy Snack for Dogs 200g
  - Lamb & Salmon Jerky Snack for Dogs 100g
  - Duck enriched with Rosemary Soft Snack for Dogs 200g
  - Beef Jerky Snack for Dogs 100g
  - Snack Pack Dog (assortiment snacks)
- **8 promotiebundels van droogvoer met 6 blikken natvoer** — geen eigen recept; de droogvoer- en natvoerrecepten staan al als record:
  - True Fresh Dry Turkey for adult dog pack
  - True Fresh Dry Fish & Turkey for Adult dog pack
  - True Fresh Dry Duck for small breeds pack
  - True Fresh Dry Duck for Puppies pack
  - True Fresh Dry Duck for junior large dogs pack
  - True Fresh Dry Duck for Adult dog pack
  - True Fresh Dry Beef for adult dog pack
  - True Fresh Dry Duck for large dogs pack
- **4 overige bundels/multipacks** — dezelfde recepten, alleen andere verpakking:
  - Can Pack Dog (vier soorten blikvoer)
  - Multipack Dog Pouch Paté 4 × 300 g (vier soorten pouches)
  - Active Puppy Starter Pack (droogvoer + natvoer + snack)
  - Active Adult Dog Starter Pack (droogvoer + natvoer + snacks)

De 16 XXL-pagina's (12 kg + 4 kg) en de vijf 5+1-pagina's zijn niet als apart product opgenomen, maar hun maat is in de bestaande receptrecords verwerkt. De 8 promotiebundels met blikken zijn om dezelfde reden overgeslagen: zij voegen geen recept toe.

## Twijfel

Er zijn **geen twijfelrecords**. Alle 29 productpagina's hadden een zichtbare, volledige samenstelling die eindigt met een punt. Er is dus geen product zonder etiketvelden opgenomen en er is niets overgeslagen wegens een ontbrekende lijst.

Wel zijn er bronbijzonderheden die een mens kunnen helpen bij het nalezen:

- Bij **True Fresh Eend Droogvoer voor Kleine Rassen** staat in de bron `dried apple pulp (2.3.%)` (een extra punt). Dat is letterlijk in `etiketOrigineel` bewaard; in de Nederlandse vertaling staat `(2,3%)`.
- Bij **Active Droogvoer met Zalm & Kalkoen voor Volwassen Honden** ontbreekt in de bron een spatie na `yellow peas,`; in de vertaling is dat als `gele erwten,` weergegeven.
- Bij **Kalkoen & Hert met Aardbeiblad Paté Pouch** staat in de bron `strawberry leaves 4 %. pea flour` (punt in plaats van komma). Dat is letterlijk bewaard; de vertaling volgt dezelfde lezing.
- De blikrecepten **Kalkoen & Zalm voor Honden** en **Kalkoen & Zalm voor Puppy's** hebben op de bron exact dezelfde samenstelling en percentages. Beide zijn als apart record opgenomen; dit is een aandachtspunt voor menselijke controle, geen reden om de labels weg te laten.

`node scripts/controleer-uitbreiding.mjs` geeft voor dit bestand geen fouten. De enige waarschuwing is de hierboven genoemde gelijke etikettekst van de twee blikrecepten.

## Volledigheid

De volledigheid is op twee manieren gecontroleerd:

1. **Sitemap volledig geclassificeerd.** Alle 155 URL's in `sitemap_products.xml` zijn langsgegaan: 74 kattenproducten, 19 hondensnacks, 8 droog+nat-promotiebundels, 4 overige bundels/multipacks en 50 complete-hondenvoedings-URL's. Die 50 bestaan uit 17 droogvoerrecepten (plus 16 XXL-pagina's daarvan) en 12 natvoerrecepten (plus 5 5+1-pagina's daarvan). Samen 29 unieke recepten.
2. **Collecties als kruiscontrole.** De collectie `dry-dog-food` bevat 17 producten en `wet-dog-food` 13 (12 recepten plus de multipack). `dog-cans` bevat de 5 blikrecepten en `dog-pouches` de 7 pouchrecepten plus de multipack. Alle droogvoer- en natvoerproducten uit deze collecties komen terug in de sitemap en in dit bestand. Er is geen rauwvoerlijn op de site aangetroffen.

Daarmee is het complete, op de officiële site gepubliceerde assortiment complete hondenvoeding van Carnilove gedekt. De enige beperking is de verpakkingsinformatie: de officiële productpagina's vermelden voor de reguliere droogvoerverpakkingen geen maten. Alleen de XXL-pagina's (12 kg + 4 kg) en de 5+1-blikverpakkingen geven een maat. Waar geen maat staat, is `verpakking` leeg gelaten in plaats van een maat te gokken. Dat geldt concreet voor Active Droogvoer met Zalm voor Volwassen Honden.
