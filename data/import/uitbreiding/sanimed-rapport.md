# Sanimed — assortimentsrapport

Peildatum: 2026-10-25
Officiële bron: https://www.sanimed.nl/
Werkbestand: `data/import/uitbreiding/sanimed.json`

## Uitkomst

| voertype | records |
|---|---:|
| kibble | 16 |
| wet | 6 |
| raw | 0 |
| **totaal** | **22** |

- 16 droogvoerrecepten: 5 preventieve en 11 curatieve voedingen.
- 6 natvoerrecepten (worst): 4 curatieve en 2 hypoallergene varianten, alle in 400 g.
- 0 records in `twijfel`.
- 0 records met een vertaald etiket; alle gebruikte pagina's zijn Nederlandstalig.
- Sanimed stond nog niet in de app. Alle 22 recepten zijn daarom nieuw.

## Gebruikte bronnen en controle

Gecontroleerd:

- de officiële productsitemap `https://www.sanimed.nl/products-sitemap.xml`;
- alle Nederlandse productpagina's voor honden uit die sitemap;
- per pagina de zichtbare productnaam, samenstelling en verpakkingsmaten;
- de preventieve en curatieve productlijnen op de website;
- de Nederlandse en Engelse sitemapvarianten om dubbele vertalingen uit te sluiten.

De sitemap bevat 70 product-URL's. Daaronder zijn de Nederlandse hondenvoedingen, hun Engelse vertalingen, kattenvoedingen en één functionele hondensnack. Na filtering blijven 22 unieke complete hondenvoedingen over. Alle 22 zijn opgenomen.

Na het samenstellen van het werkbestand zijn alle 22 records tegen hun `bronUrl` gecontroleerd met `node scripts/controleer-bronnen.mjs --uitbreiding --bestanden=sanimed.json`. Uitkomst: **22 onveranderd, 0 gewijzigd, 0 onbereikbaar**.

## Volledigheid

| lijn | recepten | verpakking |
|---|---:|---|
| Preventive droogvoer | 5 | 3 / 12,5 kg; Adult Small Breed 3 kg |
| Curative droogvoer | 11 | 3 / 12,5 kg; Intestinal 1,5 / 3 / 12,5 kg |
| Curative natvoer | 6 | 400 g |
| **totaal** | **22** | |

De preventieve droogvoerrecepten zijn Puppy, Junior, Senior, Adult Small Breed en Adult. De curatieve droogvoerrecepten zijn Anti-Struvite, Weight Reduction, Skin/Sensitive, Weight Control, Osteoarthritis, Neuro Support, Renal, Hypoallergenic DR, Hypoallergenic LR, Intestinal en Dental. De natvoerrecepten zijn Hypoallergenic DR worst, Hypoallergenic LR worst, Clinical Choice Pure Duck worst, Weight Reduction worst, Recovery worst en Skin/Sensitive worst.

## Overgeslagen

- **Skin/Sensitive Functional Treats**: één functionele hondensnack, geen complete voeding.
- **Kattenvoeding**: alle preventieve en curatieve kattenproducten, inclusief natvoer.
- **Engelse pagina's**: vertalingen van dezelfde recepten, geen zelfstandige producten.
- **Overige pagina's**: informatie, winkels, contact en juridische pagina's uit de sitemap.

## Twijfel

Geen. Alle 22 recepten hebben een volledige, zichtbare samenstelling op een Nederlandstalige officiële pagina.

## Bijzonderheden

- **Dubbele URL**: `.../clinical-choice-pure-duck/` verwijst door naar `.../clinical-choice-pure-duck-worst/`. Beide adressen tonen dezelfde pagina, hetzelfde product en dezelfde samenstelling. Het product is één keer opgenomen onder de canonieke URL met `-worst`.
- **Verpakkingen**: de droogvoedingen zijn gebundeld per recept. Adult Small Breed is alleen 3 kg; Intestinal is 1,5 / 3 / 12,5 kg; de overige droogvoerrecepten zijn 3 / 12,5 kg. Alle natvoerrecepten zijn 400 g.
- **Naamgeving**: de merknaam "SANIMED" is uit de officiële titels verwijderd. Lijn- en productnamen zoals Preventive, Curative, Hypoallergenic DR en Clinical Choice blijven staan.
- **GTIN**: op de productpagina's staan geen zichtbare barcodes. `gtin` is daarom overal `null`.
- **Witruimte**: dubbele spaties en regeleinden uit de HTML zijn genormaliseerd naar één gewone spatie. Woorden, percentages, decimalen en leestekens zijn verder letterlijk overgenomen.
- **Bestaande producten**: Sanimed had nog geen live-producten in de app. De merge kan alle 22 records als nieuw toevoegen.
