# RAW4DOGS — assortimentsrapport

Peildatum: 2026-10-25
Officiële bron: https://www.raw4dogs.nl/
Werkbestand: `data/import/uitbreiding/raw4dogs.json`

## Uitkomst

| voertype | records |
|---|---:|
| kibble | 0 |
| wet | 0 |
| raw | 7 |
| **totaal** | **7** |

- 7 complete rauwvoerrecepten, elk in 450 g en 1 kg.
- 0 records in `twijfel`.
- 0 records met een vertaald etiket; alle gebruikte pagina's zijn Nederlandstalig.
- RAW4DOGS stond nog niet in de app. Alle 7 recepten zijn daarom nieuw.

## Gebruikte bronnen en controle

Gecontroleerd:

- de officiële assortimentspagina `https://www.raw4dogs.nl/producten` en de sitemap `https://www.raw4dogs.nl/sitemap.xml`;
- alle 7 productpagina's uit de sitemap;
- per pagina de zichtbare productnaam, samenstelling en beide verpakkingsmaten;
- de volledige sitemap: naast de productpagina's bevat die alleen informatieve pagina's, nieuws, contact en juridische pagina's.

Na het samenstellen van het werkbestand zijn alle 7 records tegen hun `bronUrl` gecontroleerd met `node scripts/controleer-bronnen.mjs --uitbreiding --bestanden=raw4dogs.json`. Uitkomst: **7 onveranderd, 0 gewijzigd, 0 onbereikbaar**.

## Volledigheid

| recept | verpakking |
|---|---|
| Chicken | 450 g / 1 kg |
| Beef & chicken | 450 g / 1 kg |
| Lamb | 450 g / 1 kg |
| Duck | 450 g / 1 kg |
| Fish Mix | 450 g / 1 kg |
| Game Mix | 450 g / 1 kg |
| Barf 5 Mix | 450 g / 1 kg |
| **totaal: 7** | |

De sitemap bevat precies deze 7 productpagina's. Er zijn geen aanvullende complete voedingen of verpakkingsmaten gevonden.

## Overgeslagen

Geen producten. De site verkoopt naast deze 7 rauwvoerrecepten geen snacks, kattenvoer, supplementen of verzorging.

## Twijfel

Geen. Alle 7 pagina's tonen een volledige, zichtbare samenstelling en beide verpakkingsmaten.

## Bijzonderheden

- **Samenstellingen**: de etiketten staan op de pagina als meerregige tekst. Regeleinden zijn genormaliseerd naar één spatie; woorden, percentages, eenheden en leestekens zijn letterlijk overgenomen.
- **Vitaminen en mineralen**: de volledige vitamine- en mineralenmix staat op de pagina en is in de samenstelling meegenomen.
- **GTIN**: op de productpagina's staan geen zichtbare barcodes. `gtin` is daarom overal `null`.
- **Bestaande producten**: RAW4DOGS had nog geen live-producten in de app. De merge kan alle 7 records als nieuw toevoegen.
