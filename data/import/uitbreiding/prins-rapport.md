# Prins Petfoods — uitbreiding assortiment

Opgehaald: 22 oktober 2026  
Officiële bron: https://www.prinspetfoods.nl  
JSON: `data/import/uitbreiding/prins.json`

## Uitkomst

- **72 records** opgenomen: **57 kibble**, **7 wet**, **8 raw**.
- **72 records met een volledige samenstelling**; **0 in `twijfel`**.
- **0 vertalingen**: alle gebruikte pagina's zijn Nederlandstalig, dus `etiketNl` is gelijk aan `etiketOrigineel` en `aantekening` is overal `null`.
- **72 unieke product-URL's**. Elk record heeft de exacte pagina met de samenstelling in `bronUrl`.
- **0 GTIN's**: op de productpagina's staat geen zichtbare barcode. Omdat één record meerdere verpakkingsmaten bundelt, is `gtin` overal `null`.

### Per voertype

| Voertype | Records |
|---|---:|
| `kibble` | 57 |
| `wet` | 7 |
| `raw` | 8 |
| **Totaal** | **72** |

## Opgenomen productlijnen

### Kibble — 57

- **ProCare (12):** Veggie, Standard Fit, Puppy & Junior, Resist Calm, Super Active, Lamb & Rice, Herring & Rice, Light Low Calorie, Sport-Life Excellent, Senior Support, Insect & Rice, Lamb & Rice Senior.
- **ProCare Mini (7):** Puppy & Junior, Senior Support, Standard Fit, Lamb & Rice, Super Active, Resist Calm, Herring & Rice.
- **ProCare Grainfree (4):** Skin & Coat, Junior & Adult, Sensible, Senior Fit.
- **ProCare Protection (5):** Puppy, Super Active, Lamb, Senior, Sterilised.
- **ProCare Croque (4):** Senior Superior, Lamb & Rice, Basic Excellent, Super Performance.
- **ProCare Croque Diet (6):** Gastro-Intestinal, Weight Reduction & Diabetic, Renal & Liver Support, Skin Support, Urinary, Mobility.
- **ProCare Pressed Diet (4):** Skin Support, Mobility, Weight Reduction & Diabetic, Gastro-Intestinal. Drie pagina's staan onder `diet-pressed/`, de vierde onder `procare-pressed-diet/`.
- **Protection Croque (5):** Basic Excellent, Senior Fit, Super Vitality, Lamb, Junior Vitality.
- **Protection Croque Mini (5):** Lamb, Senior Fit, Basic Excellent, Super Vitality, Junior Vitality.
- **Fit Selection (5):** Lamb & Rice, Senior, Chicken & Rice, Salmon & Rice, Puppy & Junior.

### Wet — 7

- **NatureCare Dog (3):** Chicken, Lamb, Turkey.
- **NatureCare Diet (4):** Veterinary Diet Hypoallergic Lamb, Veterinary Diet Mobility, Diet Struvite & Calcium Oxalate, Diet Dog Weight Reduction & Diabetic.

### Raw — 8

- **TotalCare (4):** Lamb & Rice, Puppy, Resist Calm, Super Active.
- **FreshCare (4):** Chicken, Duck, Horse, Lamb.

## Gebruikte bronnen

- Sitemapindex: https://www.prinspetfoods.nl/sitemap.xml → `sitemap1.xml`.
- Uit `sitemap1.xml` zijn **234 hondenvoer-URL's** gefilterd.
- Assortimentsoverzichten:
  - https://www.prinspetfoods.nl/nl_NL/hondenvoer/hondenbrokken — **54 producten**, 3 pagina's (21 / 21 / 12 kaarten).
  - https://www.prinspetfoods.nl/nl_NL/hondenvoer/natvoer-honden — **16 producten**.
  - https://www.prinspetfoods.nl/nl_NL/hondenvoer/dieet — **14 producten**.
- Alle 72 productpagina's zijn afzonderlijk opgehaald. De samenstelling staat onder het kopje **Samenstelling**.
- De exacte URL per record staat in `prins.json`; de URL-prefixen zijn:

| Productlijn | URL-prefix na `/nl_NL/hondenvoer/` | Records |
|---|---|---:|
| ProCare | `procare/` | 12 |
| ProCare Mini | `procare-mini/` | 7 |
| ProCare Grainfree | `procare-grainfree/` | 4 |
| ProCare Protection | `procare-protection/` | 5 |
| ProCare Croque | `procare-croque/` | 4 |
| ProCare Croque Diet | `diet-croque/` | 6 |
| ProCare Pressed Diet | `diet-pressed/` en `procare-pressed-diet/` | 4 |
| Protection Croque | `protection-croque/` | 5 |
| Protection Croque Mini | `protection-croque-mini/` | 5 |
| Fit Selection | `fit-selection/` | 5 |
| NatureCare Dog | `naturecare-dog/` | 3 |
| NatureCare Diet | `naturecare-diet-dog/` | 4 |
| TotalCare | `totalcare/` | 4 |
| FreshCare | `freshcare/` | 4 |

## Volledigheid

De volledigheid is op drie manieren gecontroleerd: sitemap, assortimentskaarten en de afzonderlijke productpagina's.

### 1. Sitemap

Alle 234 hondenvoer-URL's uit `sitemap1.xml` zijn doorzocht. Daarin staan alle 72 gebruikte productpagina's. Ook de drie Fit Selection-pagina's die niet als kaart in de categorie verschijnen, staan in de sitemap.

### 2. Assortimentskaarten

De drie categorieën tonen samen **84 kaarten**:

| Categorie | Kaarten |
|---|---:|
| Hondenbrokken | 54 |
| Natvoer | 16 |
| Dieet | 14 |
| **Totaal** | **84** |

Die 84 kaarten zijn geen 84 recepten. Na ontdubbeling blijven **69 unieke recepten** over:

- 10 dieetbrokken staan zowel in `hondenbrokken` als in `dieet`;
- 4 dieet-natvoedingen staan zowel in `natvoer-honden` als in `dieet`;
- FreshCare Horse staat in `natvoer-honden` twee keer: als single en als 8-pack.

Daarna zijn **3 extra Fit Selection-recepten** toegevoegd die wel in de sitemap en op een directe productpagina staan, maar niet als kaart in `hondenbrokken` voorkomen:

- Fit Selection Chicken & Rice — https://www.prinspetfoods.nl/nl_NL/hondenvoer/fit-selection/chicken-rice-2kg
- Fit Selection Salmon & Rice — https://www.prinspetfoods.nl/nl_NL/hondenvoer/fit-selection/salmon-rice-2kg
- Fit Selection Puppy & Junior — https://www.prinspetfoods.nl/nl_NL/hondenvoer/fit-selection/puppy-junior-2kg

Alle drie zijn opgehaald en hebben een zichtbare samenstelling. Daarmee komt het totaal op **69 + 3 = 72 recepten**. De drie ontbrekende kaarten zijn het concrete bewijs waarom de sitemap naast de categoriepagina's is gecontroleerd.

### 3. Productpagina's

Alle 72 bronpagina's zijn afzonderlijk bezocht. Elke pagina gaf een zichtbare samenstelling en HTTP 200. Er zijn geen lege of afgekapte etiketten. De aantallen per voertype sluiten aan op de categorieën:

- 54 kibblekaarten + 3 sitemap-only Fit Selection = 57 kibble;
- 3 NatureCare Dog + 4 Natvoer-dieet = 7 wet;
- 4 TotalCare + 4 FreshCare = 8 raw.

De 16 kaarten onder `natvoer-honden` bestaan daarmee uit 7 wet, 8 raw en 1 dubbel getoonde FreshCare Horse-verpakking.

**Conclusie:** het officiële Prins-assortiment complete hondenvoeding is voor zover openbaar op de site zichtbaar volledig in kaart gebracht. De enige categorie-afwijking is de drie hierboven genoemde Fit Selection-pagina's; die zijn toegevoegd.

## Overgeslagen

| Groep | URL's | Reden |
|---|---:|---|
| Hondensnacks (`/treats/`) | 16 | 9 productlijnen (Beef, Chicken, Duck, Mini Chicken, Mini Lamb, Mini Salmon, Salmon, Mixpakket, Mixpakket Mini), elk in single- en 10-packuitvoering. Snacks, geen complete voeding. |
| Train & Care | 2 | Eén trainingssnack in single- en 6-packuitvoering. Geen complete voeding. |
| Giftboxes | 41 | Bundels van bestaande recepten; geen eigen samenstelling. |
| Opgroeiboxen | 7 | Bundels van bestaande recepten; geen eigen samenstelling. |
| Overzichtspagina Giftboxen | 1 | Navigatie-/bundeloverzicht, geen product. |
| Puppypakket | 1 | Bundeloverzicht, geen zelfstandig recept. |
| **Totaal** | **68** | |

De giftboxes en opgroeiboxen zijn gecontroleerd op een eigen recept, maar publiceren geen samenstelling. Een voorbeeld: `protection-croque/junior-performance-giftbox` heet op de pagina **Giftbox Prins Protection Croque Junior Vitality** en verwijst naar de al opgenomen 2 kg- en 10 kg-varianten. De boxen voegen dus geen recept toe.

Kattenvoer, supplementen en verzorging zijn buiten de opdracht gelaten. Ze komen niet voor in de gefilterde 234 hondenvoer-URL's en zijn daarom niet in de telling opgenomen.

## Twijfelgevallen

**Geen.** Alle 72 records hebben een zichtbare, volledige samenstelling. `twijfel` is nergens ingevuld.

Wel zijn er inhoudelijke aandachtspunten:

1. **Generieke samenstellingen.** De vier ProCare Croque-producten (Basic Excellent, Lamb & Rice, Senior Superior en Super Performance) publiceren alleen algemene categorieën zoals “Granen” en “vlees en dierlijke bijproducten”, zonder percentages per grondstof. Die tekst is letterlijk overgenomen. Dat is geen doublure of gok, maar de officiële declaratie.
2. **Identieke etiketten.** TotalCare Puppy en TotalCare Super Active hebben op de bron dezelfde samenstelling. Ook sommige ProCare Mini-varianten hebben dezelfde of nagenoeg dezelfde tekst als hun standaardvariant. Ze zijn als afzonderlijke producten behouden: de opdracht en README zeggen dat kleine-rassenvoer en aparte productnamen niet automatisch hetzelfde product zijn.
3. **`TotalCare Puppy` en `TotalCare Super Active`.** De 2,5 kg-doos en de 600 g-variant zijn samengevoegd tot één record per recept, met `verpakking` “6 x 2,5 kg / 600 g”.
4. **`ProCare Light Low Calorie`.** De officiële H1 gebruikt “Calorie”. In de bestaande import staat “Light Low calorie”. Dat is dezelfde productlijn met een andere hoofdletter; bij automatische ontdubbeling op naam kan dit een aandachtspunt zijn.
5. **`NatureCare Veterinary Diet Hypoallergic Lamb`.** De officiële H1 schrijft “Hypoallergic”, niet “Hypoallergenic”. De productnaam is daarom letterlijk gevolgd.
6. **Verpakkingen.** De maten zijn gebundeld zoals de pagina's ze aanbieden. Alleen zichtbare varianten zijn gebruikt; bijvoorbeeld ProCare Puppy & Junior heeft 3 kg en 12 kg, zonder 20 kg-variant.
7. **Etiketveld.** `etiketOrigineel` bevat de samenstelling (ingrediënten), niet de analytische bestanddelen, mineralen of energiewaarde. Die staan wel op de bronpagina maar horen niet bij het ingrediëntenetiket.

## Bestaande app

In `data/import/prins.json` stonden al **10 Prins-producten**. Alle 10 hebben een officieel equivalent in de nieuwe set:

- 9 namen komen exact overeen;
- 1 naam wijkt alleen in hoofdletters af: `ProCare Light Low calorie` versus `ProCare Light Low Calorie`.

Daarmee bevat de nieuwe set **62 nieuwe receptlijnen** naast de 10 bestaande producten. De import ontdubbelt later op merk, naam en verpakking; de genoemde schrijfwijze van Light Low Calorie verdient daarbij controle.

## Ophaalgedrag

- Herkenbare user-agent: `Hondenvoervergelijker/1.0 (contact: paul@example.nl)`.
- `robots.txt` is geraadpleegd; de gebruikte product- en categoriepagina's zijn toegestaan. De crawlvertraging van 1 seconde is aangehouden.
- De productpagina's zijn met ongeveer één verzoek per seconde opgehaald en gaven HTTP 200.
- Een eerste verkenning met `curl` werd door Cloudflare met **HTTP 403** geblokkeerd. Daarop is `curl` niet verder gebruikt; de pagina's zijn via de fetch-route met herkenbare user-agent opgehaald. Bij die verzoeken is geen 403 of 429 opgetreden.
