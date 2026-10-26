# Trovet — assortimentsrapport

Peildatum: 2026-10-26
Officiële bron: https://www.trovet.com/nl/
Werkbestand: `data/import/uitbreiding/trovet.json`

## Uitkomst

| voertype | records |
|---|---:|
| kibble | 10 |
| wet | 13 |
| raw | 0 |
| **totaal** | **23** |

- 23 records met een letterlijke Nederlandse ingrediëntenlijst.
- 0 records in `twijfel`.
- De pagina's zijn Nederlandstalig; er is geen vertaalaantekening nodig.

## Gebruikte bronnen en controle

- de officiële categoriepagina's voor dieetvoeding, eliminatiediëten en onderhoudsvoeding voor honden;
- de relevante productpagina's uit die categorieën;
- per pagina de zichtbare productnaam, de beschikbare vormen (Droog/Nat), de verpakkingsmaten uit "Verkrijgbaar in" en de ingrediënten uit "Ingrediënten (Droog)" / "Ingrediënten (Nat)";
- de ingrediënten zijn letterlijk overgenomen; alleen dubbele spaties en regeleinden zijn genormaliseerd.

## Overgeslagen

- **balance-hond** — poedersupplement, geen complete maaltijd
- **puppy-milk-hond** — melkvervanger, geen complete maaltijd

## Twijfel

Geen.

## Bijzonderheden

- **Twee voertypes op één pagina:** verschillende producten hebben zowel een droog- als een natvariant. Die zijn als twee records opgenomen, met dezelfde naam en een eigen voertype.
- **Productnamen:** de interne code achter de pijp (bijvoorbeeld `Hepatic | HLD`) is uit de naam verwijderd.
- **Verpakkingen:** de maten komen uit de regel "Verkrijgbaar in" en zijn per vorm gescheiden.
- **Puppy Milk:** overgeslagen omdat het een melkvervanger is en geen complete maaltijd.
- **Balance:** overgeslagen omdat het een poedersupplement is en geen complete maaltijd.
- **Bestaande producten:** de live database had 8 Trovet-producten. De import ontdubbelt op merk, naam en verpakking; waar de officiële naam afwijkt, is dat in de SQL-stap zichtbaar als waarschuwing.
