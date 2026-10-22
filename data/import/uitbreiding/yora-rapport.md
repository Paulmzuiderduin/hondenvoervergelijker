# Yora — rapport assortiment complete hondenvoeding

Peildatum: 2026-10-22  
JSON: `data/import/uitbreiding/yora.json`  
Officiële bron: https://yorapets.be/ (Belgisch-Nederlands)

## Uitkomst

| voertype | records |
|---|---:|
| kibble | 6 |
| wet | 3 |
| raw | 0 |
| **totaal** | **9** |

Het volledige Belgische assortiment complete hondenvoeding bestaat uit 6 droogvoerrecepten en 3 natvoerrecepten. Er is geen rauwvoer, dierenartsdieetvoeding of andere complete hondenvoeding in het assortiment.

## Bronnen

Assortimentspagina's:

- https://yorapets.be/hond (overzicht: 6 droog + 3 nat)
- https://yorapets.be/hond/droogvoer/
- https://yorapets.be/hond/natvoer/

Sitemap en robots:

- https://yorapets.be/robots.txt
- https://yorapets.be/sitemap_index.xml
- https://yorapets.be/sitemap_yorapets_be_products.xml
- https://yorapets.be/sitemap_yorapets_be_productcategories.xml

De sitemapindex is een gedeelde platformindex met meerdere merken; alleen de yorapets.be-onderdelen zijn gebruikt.

De 9 gebruikte productpagina's:

1. https://yorapets.be/hond/insecteneiwit-puppy-alle-rassen-droogvoer/
2. https://yorapets.be/hond/insecteneiwit-kleine-rassen-hond-droogvoer/
3. https://yorapets.be/hond/insecteneiwit-adult-alle-rassen-hond-droogvoer/
4. https://yorapets.be/hond/insecteneiwit-adult-graanvrij-hond-droogvoer/
5. https://yorapets.be/hond/insecteneiwit-grote-rassen-rassen-hond-droogvoer/
6. https://yorapets.be/hond/insecteneiwit-light-senior-rassen-hond-droogvoer/
7. https://yorapets.be/hond/insecteneiwit-volwassen-hondpate-wortel-aardappel/
8. https://yorapets.be/hond/insecteneiwit-volwassen-hond-pate-appel-pastinaak/
9. https://yorapets.be/hond/insecteneiwit-volwassen-hond-natvoer-rode-bieten-koolraap/

Ter controle van de volledigheid is daarnaast de officiële Britse productsitemap bekeken: https://yorapets.com/sitemap_yorapets_com_products.xml. Die bevat dezelfde 6 droogvoer- en 3 natvoerrecepten (met andere maat- en meervoudsverpakkingen), dus geen extra complete hondenvoerrecepten.

## Volledigheid

Gecontroleerd: 57 unieke URL's uit de productsitemap, 3 assortimentspagina's en 9 productpagina's (volledig gelezen). De 13 maat-URL's van de droogvoeding zijn apart opgevraagd en bleken te redirecten.

De productsitemap van yorapets.be bevat 57 unieke URL's: 49 honden-URL's en 8 katten-URL's. De 49 honden-URL's bestaan uit 14 unieke producten, doordat elke maat en elk categoriepad een eigen URL heeft:

| soort | unieke producten | opgenomen |
|---|---:|---:|
| complete droogvoeding | 6 | 6 |
| complete natvoeding | 3 | 3 |
| dental sticks | 2 | 0 |
| snacks | 3 | 0 |
| **totaal honden** | **14** | **9** |

De 13 maat-URL's van de droogvoeding (`-1-5kg`, `-6kg`, `-12kg`) geven allemaal een 302-redirect naar de hoofdproductpagina. Daar staan de verpakkingsmaten als varianten op één pagina; de samenstelling is per recept één keer vermeld. Daarom zijn 9 productpagina's voldoende voor 9 recepten.

De assortimentspagina https://yorapets.be/hond noemt alle 9 producten (6 droog, 3 nat). https://yorapets.be/hond/natvoer/ noemt dezelfde 3 natvoedingsproducten. https://yorapets.be/hond/droogvoer/ noemt 5 van de 6 droogvoedingsproducten: **Adult Graanvrij ontbreekt op deze categoriepagina**, maar staat wel op de overkoepelende hondenpagina en in de productsitemap. Daarom is Adult Graanvrij toch opgenomen.

Alle 9 productpagina's zijn op 2026-10-22 individueel opgehaald (HTTP 200). De samenstelling stond bij elk product als leesbare tekst op de pagina (tab "SAMENSTELLING"), niet achter JavaScript. Er zijn geen 403- of 429-responses geweest. Tijdens het ophalen is maximaal ongeveer één verzoek per seconde gedaan met een herkenbare user-agent.

## Overgeslagen

| Product | Categorie | Reden |
|---|---|---|
| Dental Sticks Small | Tandverzorging | Geen complete voeding; tandverzorgingsproduct. |
| Dental Sticks Large | Tandverzorging | Geen complete voeding; tandverzorgingsproduct. |
| Rewards Wortel & Appel | Snacks | Snack, geen complete maaltijd. |
| Rewards Pinda & Banaan | Snacks | Snack, geen complete maaltijd. |
| Dreamers | Snacks | Snack, geen complete maaltijd. |
| Kat droogvoer (375 g / 1,5 kg / 3,75 kg) | Kattenvoer | Kattenvoer, geen hondenvoeding. |

Buiten beschouwing gelaten: alle kattenvoer-URL's (8 sitemap-URL's voor één kattenrecept: drie maten plus de hoofdpagina, via twee categoriepaden) en de niet-productpagina's (blog, reviews, verkooppunten, etc.).

## Twijfel

Geen. Van alle 9 opgenomen producten was de samenstelling letterlijk leesbaar op de officiële Nederlandstalige productpagina. Er zijn daarom geen records met `twijfel` en geen records zonder etiketvelden.

## Aandachtspunten

1. **Categoriepagina droogvoer is incompleet.** https://yorapets.be/hond/droogvoer/ toont 5 producten en mist Adult Graanvrij. De overkoepelende pagina https://yorapets.be/hond en de productsitemap bevatten het product wel; het is opgenomen.
2. **Lichte naamverschillen.** De categoriepagina gebruikt namen als "Yora Adult Kleine Rassen" en "Pâté Rode bieten & koolraap"; de productpagina's gebruiken "Adult Kleine Rassen" en "Pâté Rode Biet & Koolraap". In het JSON-bestand is de productnaam van de productpagina aangehouden.
3. **Licht/senior is één recept.** "Adult Light / Senior" is één formule voor twee levensfasen en staat daarom als één record, met beide maten (1,5 / 12 kg).
4. **Opvallende notatie in de ingrediëntenlijst.** De droogvoerlijsten beginnen met `*Insect 40% (**Insectenmeel ... 5.5%)`: er staat een dubbele asterisk en slechts één sluitend haakje. Dat is letterlijk zo overgenomen, inclusief de voetnoten `*Hermetia illucens-larven **Bron van Glucosamine`. Niet gecorrigeerd.
5. **Inconsistente notatie van Chondroïtine.** Adult Alle Rassen heeft `Chondroïtine (500 mg/kg)`, Adult Kleine Rassen `Chondroïtine (500mg/kg)` en Adult Graanvrij `Chondroïtine (500mg/Kg)`. Alle drie zijn letterlijk overgenomen.
6. **Erwteneiwit zonder percentage.** In Pâté Wortel & Aardappel staat `Erwteneiwit` zonder percentage; in de andere twee pâtés staat `Erwteneiwit 3%`. Letterlijk overgenomen.
7. **Natvoermaat 390 g.** De Nederlandse productpagina toont het gewicht niet als statische tekst. De maat 390 g komt uit de officiële Franstalige URL van hetzelfde product op yorapets.be (`...-390g`) en uit de single-pack-prijs van € 3,95. De samenstelling is wel volledig van de Nederlandse pagina afkomstig.
8. **Geen barcodes.** Op de productpagina's staan interne SKU's (zoals `IA` en `ITCP`), maar geen EAN/GTIN. Daarom is `gtin` bij alle records `null`.
9. **Geen samengestelde verpakkingen op de Belgische site.** De natvoeding is per stuk (390 g) verkocht; de Britse site kent daarnaast een "single"/"18"-variant van de rode-bietenpâté, maar die staat niet in het Belgische assortiment.
10. **Gebroken footerlink.** https://yorapets.be/onze-producten geeft een 404; de werkende assortimentspagina is https://yorapets.be/hond.
11. **Geen rauwvoer of dieetvoeding.** Het assortiment bevat geen rauwvoer, geen dierenartsdieetvoeding en geen supplementen.

## Nieuw ten opzichte van de app

Volgens `data/import/uitbreiding/voortgang.md` staat Yora op **0 live producten**. Er is ook geen bestaand Yora-importbestand in `data/import/`. Alle 9 records zijn daarom nieuwe varianten voor de app. Dat aantal is gebaseerd op de repo-gegevens; de live database is niet rechtstreeks geraadpleegd.

## Etiketten

Alle gebruikte pagina's zijn Nederlandstalig. Daarom is `etiketNl` bij elk record gelijk aan `etiketOrigineel` en is `aantekening` overal `null`. De samenstellingen zijn letterlijk overgenomen, inclusief percentages, volgorde, hoofdletters, punten en de hierboven genoemde afwijkende notaties.
