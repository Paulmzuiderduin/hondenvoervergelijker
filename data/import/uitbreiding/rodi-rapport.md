# Rodi — assortimentsrapport

Peildatum: 2026-10-25
Officiële bron: https://rodi-petfood.nl/
Werkbestand: `data/import/uitbreiding/rodi.json`

## Uitkomst

| voertype | records |
|---|---:|
| kibble | 0 |
| wet | 8 |
| raw | 4 |
| **totaal** | **12** |

- 8 natvoerrecepten: 5 patés en 3 klassieke worstvarianten, alle in 400 g.
- 4 rauwe Maaltijdburgers, alle in 1 kg.
- 0 records in `twijfel`.
- 0 records met een vertaald etiket; alle gebruikte pagina's zijn Nederlandstalig.
- Rodi stond nog niet in de app. Alle 12 recepten zijn daarom nieuw.

## Gebruikte bronnen en controle

Gecontroleerd:

- de officiële assortimentspagina en de productsitemap `https://rodi-petfood.nl/product-sitemap.xml`;
- alle 14 productpagina's uit die sitemap;
- per pagina de zichtbare productnaam, samenstelling en verpakkingsmaat;
- de volledige productsitemap: 14 producten, waarvan 12 complete voedingen en 2 voedingssupplementen.

Na het samenstellen van het werkbestand zijn alle 12 records tegen hun `bronUrl` gecontroleerd met `node scripts/controleer-bronnen.mjs --uitbreiding --bestanden=rodi.json`. Uitkomst: **12 onveranderd, 0 gewijzigd, 0 onbereikbaar**.

## Volledigheid

| lijn | recepten | verpakking |
|---|---:|---|
| Rodi Paté | 5 | 400 g |
| Rodi Classic | 3 | 400 g |
| Daily Basics Maaltijdburgers | 4 | 1 kg |
| **totaal** | **12** | |

De vijf patés zijn Power Rund, Shine Kip met Zalm, Balance Gevogelte, Sensitive Lam en Vitality Kip. De drie klassieke varianten zijn Lam met Rijst, Kip met Rund en Kip met Kaas. De vier rauwe varianten zijn Maaltijdburgers Kip met Rijst, Rund met Pens, Lam met Rijst en Rund met Hart.

De productsitemap bevat precies deze 12 complete producten plus twee Schapenvet-producten. Er zijn geen aanvullende complete voedingen in de sitemap of op de assortimentspagina gevonden.

## Overgeslagen

- **Schapenvet met Zalmolie** en **Schapenvet met Knoflook**: dit zijn vettoevoegingen, geen complete maaltijden. Beide pagina's zijn gecontroleerd en bewust niet opgenomen.
- **Kattenvoer, snacks en verzorging**: niet op de site aangetroffen binnen de productfeed.

## Twijfel

Geen. Alle 12 pagina's tonen een volledige, zichtbare samenstelling en een concrete verpakkingsmaat.

## Bijzonderheden

- **URL-slugs**: bij de rauwe Maaltijdburgers lopen de slugs niet gelijk met de zichtbare productnaam. Zo staat `Maaltijdburgers Rund met Hart` op `.../daily-basics-rund-met-pens/` en `Maaltijdburgers Rund met Pens` op `.../daily-basics-rund/`. De zichtbare h1 en de samenstelling op de pagina zijn gevolgd; de exacte pagina-URL staat per record in `bronUrl`.
- **Naamgeving**: de merknaam "Rodi" is uit de officiële titels verwijderd. De lijnnamen Power, Shine, Balance, Sensitive en Vitality blijven staan.
- **GTIN**: op de productpagina's staan geen zichtbare barcodes. `gtin` is daarom overal `null`.
- **Witruimte**: dubbele spaties en regeleinden uit de HTML zijn genormaliseerd naar één gewone spatie. Woorden, percentages, decimalen en leestekens zijn verder letterlijk overgenomen.
- **Bestaande producten**: Rodi had nog geen live-producten in de app. De merge kan alle 12 records als nieuw toevoegen.
