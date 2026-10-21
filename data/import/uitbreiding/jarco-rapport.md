# Jarco — assortiment complete hondenvoeding

- **Bron:** https://jarco.nl
- **Opgehaald:** 20 oktober 2026
- **Bestand:** `data/import/uitbreiding/jarco.json`
- **Records:** 59 (36 × kibble, 23 × wet, 0 × raw), waarvan 57 met samenstelling en 2 twijfelrecords
- **Taal:** Nederlands; daarom is `etiketNl` overal gelijk aan `etiketOrigineel` en is `aantekening` leeg.

## Bronnen en werkwijze

1. `https://jarco.nl/robots.txt` gecontroleerd: productpagina's zijn toegestaan.
2. `https://jarco.nl/products.json?limit=250` opgehaald: **106 producten**, allemaal met vendor `Jarco`. De feed bevat dus geen producten van andere merken.
3. `https://jarco.nl/sitemap.xml` → `sitemap_products_1.xml`: **106 product-URL's** (plus de homepage). De handles komen exact overeen met de 106 producten uit `products.json`.
4. `https://jarco.nl/collections/alle-producten/products.json?limit=250`: ook **106 producten**, dezelfde set.
5. Per relevant product is de productpagina opgehaald. De samenstelling staat in het tabblad **Ingrediënten** (`metafield-rich_text_field`), tussen `SAMENSTELLING:` en `ANALYTISCHE BESTANDDELEN:`. De tekst is letterlijk overgenomen; alleen regeleinden en dubbele spaties zijn tot één spatie teruggebracht. Woorden, percentages, volgorde en leestekens zijn niet gewijzigd.
6. Er is met een herkenbare user-agent gewerkt en met ongeveer één verzoek per seconde. Er zijn geen 403- of 429-responsen opgetreden.

`body_html` uit `products.json` bevat alleen voedingstabellen; de samenstelling staat uitsluitend op de productpagina zelf.

## Aantallen per voertype

| voertype | aantal | toelichting |
|---|---:|---|
| `kibble` | 36 | 4 veterinair, 4 Natural Sensitive, 8 Natural Classic Persbrok, 4 Giant, 4 Large, 4 Medium, 4 Mini, 3 overige brokken en 1 Dinner-Mix Compleet |
| `wet` | 23 | 6 blikmenu's, 6 vleeskuipjes, 3 gestoomde maaltijden en 8 verse worst |
| `raw` | 0 | Jarco heeft op de site geen rauwvoer |
| **totaal** | **59** | |

De 59 records komen uit 65 volledige hondenvoedingsproducten. De verschillen zijn ontdubbeld: 2 Dinner-Mix-pagina's zijn 1 record en 13 worstpagina's zijn 8 records (zie “Samengevoegd”).

## Overgeslagen (41 producten)

| categorie | aantal | reden |
|---|---:|---|
| Kattenvoer | 18 | geen hondenvoeding |
| Monopets | 18 | vis- en vleessnacks, geen complete maaltijd |
| Hondenkoekjes / kluifjes | 3 | snacks: Lam-Rijst Carrée's 400 gram, HondenKluifjes Mix 400 gram, Puppy Kluifjes 400 gram |
| Rijst-Mix | 1 | op de pagina expliciet “aanvullende diervoeding”; moet met vlees worden gemengd |
| Vega menu | 1 | geen complete voeding: samenstelling noemt alleen pompoen 25%, wortelen 20%, kikkererwten 10% en kattenkruid 0,1%; ruw eiwit 2,5% bij 85% vocht |

De 18 kattenvoerproducten zijn de Natural Cat/Kat-lijn (onder meer Senior Light, Delicate, Sensitive, Anti-Struviet, Active, Indoor, Kitten, Outdoor, Light, Hairball, Weight Reduction, Struviet, Skin & Coat en Dental). De 18 Monopets-producten zijn de Salmon/Tuna/Redfish Cubes, Seafood-varianten, Salmon Skin Bites, Redfish Flakes, Herring Fish, Cod Bisquits, Veal/Lamb/Insect Pops, Turkey Squares & Pumpkin, Duck Nuggets en Chicken Filet & Sweet Potato.

## Twijfel (2 records, zonder etiketvelden)

| product | reden |
|---|---|
| Verse Hondenworst Kip-Lam 750 gr | De samenstelling op de pagina noemt **zalm (4,7%)** in plaats van lam, terwijl het product Kip-Lam heet. Niet overgenomen; controleer het etiket. |
| Verse Hondenworst Kip-Zalm 750 gr | De samenstelling is identiek aan die van Verse Hondenworst Kip (Kip 80,9%, rijst 17,3%, groenten) en noemt **geen zalm**. Niet overgenomen; controleer het etiket. |

Deze twee records hebben geen `etiketOrigineel`, `etiketNl` of `aantekening`, conform de twijfelregel in `data/import/README.md`.

## Samengevoegd

- **Dinner-Mix Compleet:** de pagina's voor 1 kg en 12,5 kg zijn één record met verpakking `1 / 12,5 kg`. De 1kg-pagina schrijft “olien en vetten” waar de 12,5kg-pagina “oliën en vetten” heeft; de tekst van de 12,5kg-pagina is gebruikt. Zelfde recept.
- **Verse hondenworst:** 13 productpagina's zijn 8 records geworden. De mini- en reguliere pagina's hebben identieke samenstellingen en zijn samengevoegd:
  - Sensitive Lam: 250 / 600 gr
  - Kip: 250 / 450 / 750 gr
  - Kip-Rund: 250 / 450 / 750 gr
  - Kip-Konijn: 250 / 750 gr
  - Kip-Eend: 250 gr
  - Kip-Kalkoen: 450 / 750 gr (aparte combinatie)
  - Kip-Lam: 750 gr (twijfel)
  - Kip-Zalm: 750 gr (twijfel)

Doosverpakkingen (doos 12 stuks of 8 stuks) zijn niet als aparte maat opgenomen; alleen de inhoudsmaten staan in `verpakking`.

## Volledigheid

Het assortiment is aantoonbaar volledig voor de **gepubliceerde** producten:

- `products.json` (106) = product-sitemap (106) = collectie “Alle producten” (106). Geen enkel product staat alleen in een van deze drie.
- Alle 106 producten hebben vendor `Jarco`; er zijn dus geen vreemde merken in de feed.
- De collectie **Hondenvoeding** bevat 85 producten: 64 van de 65 volledige hondenvoedingsproducten + 18 Monopets-snacks + Lam-Rijst Carrée's + Rijst-Mix + Vega menu. Eén volledig product, **Hondenbrokken Natural Medium Adult Kip**, ontbreekt in die collectie maar staat wel in `products.json` en in de productsitemap. De collectie is dus niet volledig; de feed en de sitemap zijn hier leidend. Alle 65 volledige producten zijn geclassificeerd.
- De subcollecties kloppen verder met de indeling:
  - **Wetfood** (24): 6 blik + 6 vleeskuipjes + 8 worst + 3 gestoomd + Vega menu.
  - **Verse Worst** (8): precies de 8 worstrecords.
  - **Veterinair** (4): precies de 4 veterinair brokken.
  - **Persbrokken** (8): precies de 8 Natural Classic Persbrok-producten.

Niet zichtbaar zijn producten die niet gepubliceerd zijn of niet in de verkoopkanalen staan. Die kunnen met de publieke sitemap niet worden gevonden.

## Gaten en aandachtspunten

- **GTIN:** alle `gtin`-velden zijn `null`. De productpagina's bevatten geen EAN/barcode. De JSON-LD noemt wel interne codes als `PM216102`, maar dat zijn geen numerieke GTIN's; die zijn daarom niet overgenomen.
- **Vega menu:** overgeslagen omdat de samenstelling en de analyse (2,5% ruw eiwit, 85% vocht) niet op complete voeding wijzen. Staat wel in de wetfoodcollectie. Als Jarco dit als complete voeding beschouwt, moet een mens dit beoordelen.
- **Dinner-Mix Compleet:** de beschrijving noemt het “volledig”, maar ook “de ideale aanvulling bij vleesmaaltijden”. Op grond van de productnaam, de aanduiding “volledig” en de toegevoegde vitaminen/mineralen is het als complete kibble opgenomen. Dit is het enige record waarbij de volledigheid tekstueel niet eenduidig is.
- **Verse worst = wet, niet raw:** de worst is volgens de pagina houdbaar buiten de diepvries (5–25 °C, na openen 4 dagen in de koelkast) en staat in de collectie Wetfood/Verse Worst. Daarom is `voertype` `wet`, niet `raw`.
- **Gestoomde maaltijden:** deze staan als `wet` in het bestand, omdat het importformaat alleen `kibble`, `wet` en `raw` kent.
- **Letterlijke bronfouten die zijn overgenomen:**
  - Natural Sensitive Lam: `0,01% chondroïtine)` (haakje zonder opening).
  - Vleeskuipjes Kip-Rund: `Kip 56%, 4% rund)` (extra haakje).
  - Natural Sensitive Zalm: spatie vóór de komma na `glucosamine)`.
  - Veterinair Hypoallergeen P.E.D.: geen punt aan het einde van de samenstelling.
- **Identieke ingrediëntenlijsten bij verschillende producten:** twee paren hebben dezelfde etikettekst maar zijn apart gehouden:
  - Giant Senior Lam en Natural Giant Adult Lam: verschillende analyse (25/18% eiwit/vet en 4.000 kcal/kg tegenover 28/20% en 4.275 kcal/kg), dus verschillende recepten.
  - Natural Medium Senior Kip en Natural Large Adult Kip: de gepubliceerde ingrediëntenlijst en analyse zijn gelijk, maar het zijn aparte SKU's met een andere brokgrootte en doelgroep. Niet samengevoegd om geen variant te verliezen; een mens kan controleren of Jarco hier per abuis dezelfde tekst heeft geplaatst.
- **Geen rauwvoer:** Jarco verkoopt op de publieke site geen rauwvoer; het aantal `raw` is daarom 0.
