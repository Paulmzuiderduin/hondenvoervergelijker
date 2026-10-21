# Kivo — rapport assortiment complete hondenvoeding

Peildatum: 2026-10-20  
JSON: `data/import/uitbreiding/kivo.json`  
Bron: https://www.kivopetfood.nl (officiële fabrikantensite)

## Uitkomst

| voertype | records |
|---|---:|
| kibble | 11 |
| raw | 14 |
| wet (gestoomd vlees) | 6 |
| **totaal** | **31** |

Er zijn 37 producten in de drie complete hondenvoercategorieën gevonden. Daarvan zijn drie `mix`-producten overgeslagen omdat ze geen complete maaltijd zijn. Van de vier `Portie`-uitvoeringen zijn er drie samengevoegd met het hoofdproduct (identieke samenstelling, andere verpakking); de vierde (`Rund & Kip Compleet Portie`) is als apart record opgenomen omdat de samenstelling afwijkt van `Rund & Kip compleet`.

## Bronnen

Categoriepagina's:

- https://www.kivopetfood.nl/c/honden/hondenbrokjes/
- https://www.kivopetfood.nl/c/honden/vers-vlees/
- https://www.kivopetfood.nl/c/honden/gestoomd-vlees/
- https://www.kivopetfood.nl/c/honden/groenteworst/ (gecontroleerd, geen complete voeding)

Alle 31 productpagina's zijn op 2026-10-20 individueel opgehaald (HTTP 200). De exacte pagina staat per record in `bronUrl`. Voor de samengevoegde portieverpakkingen zijn daarnaast gebruikt:

- https://www.kivopetfood.nl/p/hert-geit-compleet-portie/
- https://www.kivopetfood.nl/p/eend-compleet-portie/
- https://www.kivopetfood.nl/p/kalkoen-compleet-portie/

De productgegevens zijn gelezen uit de officiële site (`https://www.kivopetfood.nl`) en de bijbehorende catalogus-API (`https://api.kivopetfood.nl/wp/graphql`). De samenstellingen komen uit het veld achter de tab "Samenstelling" op de productpagina's en zijn letterlijk overgenomen.

`robots.txt` en `sitemap.xml` gaven beide HTTP 404. Er is daarom geen sitemap gebruikt; de volledigheid is gecontroleerd via de categorieboom en een volledige productquery. Tijdens het ophalen is maximaal ongeveer één verzoek per seconde gedaan. Er waren geen 403- of 429-responses.

## Volledigheid

- De volledige productquery leverde 298 records; 143 daarvan vallen onder de Nederlandse categorie Hond.
- De drie complete categorieën bevatten samen 37 producten: hondenbrokjes 11, vers vlees 20, gestoomd vlees 6. De categoriepagina's geven dezelfde aantallen.
- Alle 37 kandidaten zijn individueel geopend. Alle 37 hadden een leesbare samenstelling; er zijn dus geen producten met een ontbrekende samenstelling.
- De overige 106 hondenproducten vallen buiten de opdracht: 89 natuurlijke snacks, 7 supplementen, 9 verzorging en 1 groenteworst. Kattenvoer is buiten beschouwing gelaten.
- Conclusie: het complete hondenaanbod is voor zover de officiële catalogus volledig is uitgeput. De drie relevante categorieën zijn volledig doorlopen en alle kandidaten zijn beoordeeld.

## Overgeslagen

| Product | Categorie | Reden |
|---|---|---|
| 4 Vissoorten mix (500 g) | Vers vlees | 100% vis; de bron positioneert dit als een worst voor eens per week. Geen complete dagelijkse maaltijd. |
| Pens & Kip mix (500 / 1000 g) | Vers vlees | 75% verse pens en 25% bevleesde kippenkarkassen; gepositioneerd als traktatie voor honden met weinig eetlust. Geen complete maaltijd. |
| Konijn mix (500 g) | Vers vlees | 100% konijn (karkas); afwisselingsproduct. Geen complete maaltijd. |
| Groenteworst (250 g) | Groenteworst | 100% groente, aparte categorie. Geen complete maaltijd. |

Buiten beschouwing gelaten: natuurlijke snacks (89), supplementen (7), verzorging (9) en al het kattenvoer.

## Twijfel

Geen twijfelrecords: van alle 31 opgenomen producten was de samenstelling aanwezig en letterlijk leesbaar.

Wel twee inhoudelijke aandachtspunten op de bron, die niet als `twijfel` zijn opgenomen omdat de tekst letterlijk op de pagina staat:

1. **Rund & Kip Compleet Portie** heeft de samenstelling 70% spiervlees / 20% orgaanvlees / 10% bot. Dat is identiek aan **Rund & Kip puppy**, terwijl **Rund & Kip compleet** 65% spiervlees / 20% orgaanvlees / 15% bot heeft. Mogelijk staat op de portiepagina een verkeerde samenstelling; menselijke controle aanbevolen.
2. **Rund & Eend puppy** en **Rund & Eend compleet** hebben nagenoeg dezelfde samenstelling (65% spiervlees / 20% orgaanvlees / 15% bot). Dat wijkt af van het patroon bij de Kip-varianten, waar de puppyversie 10% bot heeft. Ook hier is de bron letterlijk gevolgd.

## Toelichting

- `gestoomd vlees` is als `wet` opgenomen: het is een gegaard/gestoomd, houdbaar worstproduct, geen rauw voer.
- `vers vlees` is als `raw` opgenomen: diepvriesproducten van verse vleesvoeding.
- Verpakkingsmaten van hetzelfde recept zijn gebundeld. Waar een portieverpakking met blokjes van 25 g bestaat, staat dat in `verpakking`.
- `gtin` is overal `null`: er stonden geen barcodes of EAN-nummers als tekst op de productpagina's.
- Kivo is Nederlandstalig; daarom is `etiketNl` steeds gelijk aan `etiketOrigineel` en is `aantekening` leeg.
