# Hill's — assortimentsrapport

Peildatum: 2026-10-26
Officiële bron: https://www.hillspet.nl/
Werkbestand: `data/import/uitbreiding/hills.json`

## Uitkomst

| merk | records |
|---|---:|
| Hill's Science Plan | 80 |
| Hill's Prescription Diet | 60 |
| **totaal** | **140** |

| voertype | records |
|---|---:|
| kibble | 87 |
| wet | 53 |
| raw | 0 |
| **totaal** | **140** |

- 140 unieke officiële producten, elk met een eigen productpagina en een letterlijke ingrediëntenlijst.
- 0 records in `twijfel`.
- 0 records met een vertaald etiket; alle gebruikte pagina's zijn Nederlandstalig.
- De live database had 9 Hill's-producten. Daarvan stonden er 8 in het bestaande importbestand; één product was eerder handmatig beoordeeld en staat niet in dat bestand.

## Gebruikte bronnen en controle

Gecontroleerd:

- de officiële sitemap `https://www.hillspet.nl/sitemap.xml`;
- alle 142 URL's onder `/dog-food/`;
- per pagina de zichtbare productnaam (`h1`), het voertype (`productForm`), de verpakkingsmaten (`skuSize` en de zichtbare regel “Maten”) en de samenstelling;
- de samenstelling van `SAMENSTELLING:` tot net vóór `ANALYTISCHE BESTANDDELEN:`.

De sitemap bevat 142 hondenvoedings-URL's. Twee daarvan zijn snacks en zijn bewust overgeslagen:

- `hills-metabolic-healthy-weight-glucose-management-treats`
- `prescription-diet-hills-hypo-treats-digestive-care-treats`

Daarna blijven precies 140 complete hondenvoedingen over: 80 Science Plan en 60 Prescription Diet. Alle 140 zijn opgenomen.

Na het samenstellen van het werkbestand zijn alle 140 records tegen hun `bronUrl` gecontroleerd met `node scripts/controleer-bronnen.mjs --uitbreiding --bestanden=hills.json --pauze=10000`. Uitkomst: **140 onveranderd, 0 gewijzigd, 0 onbereikbaar**.

## Volledigheid

| lijn | records | verpakking |
|---|---:|---|
| Science Plan droogvoer | 55 | diverse maten, gebundeld per recept |
| Science Plan natvoer | 25 | 156 / 200 / 354 / 363 / 370 g |
| Prescription Diet droogvoer | 32 | diverse maten, gebundeld per recept |
| Prescription Diet natvoer | 28 | 156 / 180 / 200 / 350 / 354 / 370 g |
| **totaal** | **140** | |

De aantallen per lijn zijn na het samenstellen uit het werkbestand geteld. De sitemap en de productcategorieën op de site geven geen aanvullende complete hondenvoedingen.

## Overgeslagen

- **Twee snackpagina's** uit de sitemap: de Metabolic treats en de Prescription Diet Hypo treats. Dit zijn geen complete maaltijden.
- **Kattenvoer, supplementen en verzorging**: niet opgenomen; de selectie is beperkt tot `/dog-food/`.

## Twijfel

Geen. Alle 140 pagina's tonen een volledige, zichtbare samenstelling en ten minste één concrete verpakkingsmaat.

## Bijzonderheden

- **Identieke etiketten bij maatvarianten**: bij twaalf groepen hebben verschillende officiële producten dezelfde ingrediëntenlijst. Het gaat om ras-/maatvarianten, bijvoorbeeld `Metabolic Hondenvoer` en `Metabolic Mini Hondenvoer`, of `Healthy Mobility Large Breed` en `Healthy Mobility Medium`. Het zijn afzonderlijke producten met een eigen naam, verpakking en korrelmaat; ze zijn daarom allemaal opgenomen en niet samengevoegd. De automatische controle meldt deze groepen als “zelfde etikettekst”; dat is hier geen dubbel product.
- **Eén bestaand, menselijk nagekeken product**: live staat `Adult Medium met kip` (14 kg). De fabrikant noemt hetzelfde recept nu `Medium Adult Hondenvoer met Kip` (2,5 / 6 / 12 / 14 kg). Naam, recept en verpakking van de nagekeken rij zijn niet automatisch overschreven. Het nieuwe record wordt bij de SQL-import overgeslagen; een mens kan beslissen of de bestaande rij moet worden hernoemd en uitgebreid.
- **Verpakkingen**: de maten zijn per recept gebundeld, oplopend gesorteerd en in dezelfde compacte notatie gezet als de rest van de site, bijvoorbeeld `3 / 12 kg` en `700 g / 2 / 10 kg`. De eenheid staat alleen achter de laatste maat van een reeks; bij een breuk in eenheden wordt de eenheid herhaald.
- **Samenstelling**: de tekst begint met `SAMENSTELLING:` en stopt vóór `ANALYTISCHE BESTANDDELEN:`. Woorden, percentages, decimalen en leestekens zijn letterlijk overgenomen. Alleen dubbele spaties en regeleinden uit de HTML zijn genormaliseerd.
- **GTIN**: de productpagina's tonen geen barcodes. `gtin` is daarom overal `null`.
- **Bestaande producten**: het bestaande importbestand bevatte 8 Hill's-records. De merge voegt 132 records toe, werkt 4 bestaande records bij (vooral de verpakkingsnotatie) en laat 4 records ongewijzigd. Het negende live-product is de hierboven genoemde handmatige review.
