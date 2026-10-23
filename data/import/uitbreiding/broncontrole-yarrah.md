# Broncontrole Yarrah

Datum: 2026-10-23
Bron: https://www.yarrah.com/
Methode: same-origin `fetch` vanuit een echte browsersessie op yarrah.com. De tekst van elke productpagina is met de opgeslagen `etiketOrigineel` vergeleken na Unicode-NFC-normalisatie en het samenvatten van witruimte.

## Waarom niet via Node

`node scripts/controleer-bronnen.mjs` kreeg op alle Yarrah-pagina's direct HTTP 429 en stopte daarna met de melding dat de site de bezoeker blokkeert. De browser kreeg de pagina's wel normaal (HTTP 200). Daarom is deze controle in de browser uitgevoerd, op dezelfde manier als eerder bij Prins en Smølke.

## Uitslag

Alle 18 producten gaven HTTP 200 en de volledige opgeslagen ingrediëntenlijst stond letterlijk op de pagina.

| Product | Status |
|---|---|
| Biologisch Adult hondenvoer met kip | gelijk |
| Biologisch Vegan Tarwevrij hondenvoer | gelijk |
| Biologisch Grain-Free hondenvoer | gelijk |
| Biologisch Puppy hondenvoer | gelijk |
| Biologisch Vegan hondenvoer | gelijk |
| Biologisch Small Breed hondenvoer | gelijk |
| Biologisch Sensitive hondenvoer | gelijk |
| Biologisch Senior hondenvoer | gelijk |
| Biologisch hondenvoer paté met kip (blik) | gelijk |
| Biologisch hondenvoer paté met varkensvlees | gelijk |
| Biologisch hondenvoer chunks met kip | gelijk |
| Biologisch hondenvoer chunks met rund | gelijk |
| Biologisch hondenvoer paté met kip en zalm | gelijk |
| Biologisch hondenvoer paté met kip (alu) | gelijk |
| Biologisch hondenvoer paté met kip en kalkoen | gelijk |
| Biologisch hondenvoer chunks vega | gelijk |
| Biologisch hondenvoer paté met rund en kip | gelijk |
| Biologisch hondenvoer paté met kip en eend | gelijk |

**Uitkomst: 18 van 18 gelijk, 0 gewijzigd, 0 onbereikbaar.**
