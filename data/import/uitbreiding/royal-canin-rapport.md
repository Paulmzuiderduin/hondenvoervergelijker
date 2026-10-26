# Royal Canin — assortimentsrapport

Peildatum: 2026-10-26
Officiële bron: https://www.royalcanin.com/nl
Werkbestand: `data/import/uitbreiding/royal-canin.json`

## Uitkomst

| voertype | records |
|---|---:|
| kibble | 152 |
| wet | 54 |
| raw | 0 |
| **totaal** | **206** |

- 206 unieke officiële producten; 205 met een volledige samenstelling en 1 in `twijfel`.
- 6 record(s) met een handmatige Nederlandse vertaling: Maxi Adult 5+, Medium Adult, Medium Adult 7+, Medium Ageing 10+, Sporting Life Energy 4100, Urinary Care Mini.
- 2 record(s) gebruiken de Belgisch-Nederlandse pagina voor de samenstelling omdat de NL-pagina Engels was.

## Gebruikte bronnen en controle

- de officiële sitemap van Royal Canin NL;
- alle 218 hondenproduct-URL's uit de NL-sitemap (216 bereikbaar; 2 gaven 404);
- per pagina de zichtbare productnaam, het voertype (`digital_sub_category`), de verpakkingsmaten (`packs`) en de samenstelling;
- de samenstelling is letterlijk overgenomen; alleen de kop `Samenstelling:` / `COMPOSITION:` is verwijderd en dubbele spaties zijn genormaliseerd.

## Overgeslagen

- **Digestion Chews Puppy Dog Supplements** — supplement
- **Digestion Chews Adult Dog Supplements** — supplement
- **Joint & Ageing Chews Adult Dog Supplements** — supplement

## Twijfel

- Dachshund Adult in Loaf (paté) — De bronpagina toont in het samenstellingsveld de wettelijke productbeschrijving in plaats van de ingrediëntenlijst.

## Bijzonderheden

- **Engelse samenstellingen:** acht NL-productpagina's tonen een Engelse samenstelling. Voor twee daarvan is de Belgisch-Nederlandse pagina gebruikt; zes zijn handmatig naar het Nederlands vertaald met de verplichte aantekening.
- **Naamgeving:** de merkprefix `ROYAL CANIN®` is verwijderd, dubbele spaties zijn opgeschoond en all-caps namen zijn naar normale schrijfwijze gebracht. Eén ontbrekende sluitende haakje is hersteld.
- **Verpakkingen:** de maten zijn per recept gebundeld, oplopend gesorteerd en in dezelfde compacte notatie gezet als de rest van de site, bijvoorbeeld `500 g / 1,5 / 3 / 11 kg`.
- **GTIN:** de productpagina's tonen één EAN per verpakking, niet één EAN voor het gebundelde recept. `gtin` is daarom overal `null`.
- **Bestaande producten:** de live database had 7 Royal Canin-producten. Zes daarvan staan in het bestaande importbestand; `Medium Adult` (10 kg) is eerder handmatig nagekeken. De import ontdubbelt hierop en vult alleen de verpakkingsmaat aan.
- **Kattenproduct:** `Urinary S/O` (100 g / 12 x 100 g, bron `urinary-so-4079`) is buiten de dataset gehouden omdat de producttekst zelf naar katten verwijst.
