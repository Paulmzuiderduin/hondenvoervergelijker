# Terra Canis — handmatige en retailercontrole

Datum: 2026-11-01

## Aanleiding

De 32 Terra Canis-producten in de voedingsdatabase komen van de officiële
Terra Canis-pagina. Die pagina geeft bij geautomatiseerd bezoek HTTP 403/404
via de Nestlé-beveiliging. Een echte Chrome-sessie met een verse context per
product gaf voor alle 32 producten geen bruikbare pagina.

## Wat is geprobeerd

- 32 producten in een echte Chrome-sessie met een verse context per product:
  **0 gelijk, 32 onbereikbaar**.
- Handmatige steekproef van vijf Terra Canis-pagina's: **1 gelijk, 4 HTTP 403/404**.
- Retailercontrole via zooplus.nl. Drie producten konden worden gekoppeld aan
  de juiste analysetabel:

| Product | Zooplus-waarden | Opgeslagen waarden | Uitkomst |
|---|---|---|---|
| Classic Rund met wortel, appel & rijst | 9,0% eiwit · 5,7% vet · 0,6% vezel · 1,2% as · 76,5% vocht | 9,0 · 5,7 · 0,6 · 1,2 · 76,5 | gelijk |
| Graanvrij Rundvlees met courgette, pompoen en oregano | 9,2% eiwit · 7,5% vet · 0,8% vezel · 1,2% as · 78,6% vocht | 9,2 · 7,5 · 0,8 · 1,2 · 78,6 | gelijk |
| Hypoallergeen Paardenvlees met aardpeer | 10,5% eiwit · 4,2% vet · 0,5% vezel · 1,2% as · 77,8% vocht | 10,5 · 4,2 · 0,5 · 1,2 · 77,8 | gelijk |

Bronpagina's:

- https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/1815858?activeVariant=1815858.1
- https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/terra_canis_sensitive_hondenvoer/1778025?activeVariant=1778025.2
- https://www.zooplus.nl/shop/honden/hondenvoer_nat/terra_canis/hypoallergeen/926713?activeVariant=926713.0

## Conclusie

De drie voorbeeldproducten zijn gelijk. Daarna zijn via zooplus.nl en
maxizoo.be **30 van de 32** Terra Canis-producten alsnog volledig vergeleken;
die zijn gelijk. Canireo Adult kip wijkt af en Canireo Wild is niet bij de
gebruikte retailers gevonden. Zie `terra-zooplus-controle.md` voor de volledige
tabel en bronlinks. Er is niets automatisch gewijzigd; de verpakking blijft
leidend.
