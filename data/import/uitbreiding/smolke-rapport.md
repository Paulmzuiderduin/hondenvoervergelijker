# Smølke — assortiment complete hondenvoeding

Peildatum: 2026-10-22  
Officiële bron: <https://www.smolke.nl/>  
Werkbestand: `data/import/uitbreiding/smolke.json`

## Uitkomst

| voertype | records |
|---|---:|
| kibble | 12 |
| wet | 15 |
| raw | 0 |
| **totaal** | **27** |

- **Twijfel:** 0 records. Van alle 27 producten stond de Nederlandse ingrediëntenlijst zichtbaar in de tab “Ingrediënten”.
- **Nieuw t.o.v. de app:** 27. In `data/import/uitbreiding/voortgang.md` staat Smølke op 0 live producten. Ik heb geen databasequery uitgevoerd; dit is dus de stand volgens dat voortgangsbestand.
- Alle records hebben `merk: "Smølke"`, `opgehaald: "2026-10-22"` en een exacte `bronUrl` naar de gebruikte productpagina.

## Bronnen en methode

### Sitemap

- <https://www.smolke.nl/robots.txt> — sitemap verwezen, geen relevante productblokkades.
- <https://www.smolke.nl/sitemap.xml> — sitemapindex met één child-sitemap.
- Child-sitemap: 41 hondenvoer-product-URL’s:
  - 23 kibble-URL’s = 12 recepten. Elf recepten hebben twee maten (3 en 12 kg); Senior Mini heeft alleen 3 kg.
  - 18 wet-URL’s = 15 losse recepten + 3 samengestelde multipacks.

### Assortiments- en categoriepagina’s (12)

- <https://www.smolke.nl/hondenvoer/>
- <https://www.smolke.nl/hondenvoer/hondenbrokken/>
- <https://www.smolke.nl/hondenvoer/natvoer/>
- <https://www.smolke.nl/hondenvoer/hondenbrokken/puppy-hondenbrokken/>
- <https://www.smolke.nl/hondenvoer/hondenbrokken/kleine-hond-brokken/>
- <https://www.smolke.nl/hondenvoer/hondenbrokken/senior-hondenbrokken/>
- <https://www.smolke.nl/hondenvoer/hondenbrokken/hypoallergene-hondenbrokken/>
- <https://www.smolke.nl/hondenvoer/hondenbrokken/graanvrije-hondenbrokken/>
- <https://www.smolke.nl/hondenvoer/natvoer/hypoallergeen-natvoer/>
- <https://www.smolke.nl/hondenvoer/natvoer/graanvrij-natvoer/>
- <https://www.smolke.nl/hondenvoer/natvoer/senior-natvoer/>
- <https://www.smolke.nl/hondenvoer/puppy-voer/>

Deze pagina’s noemen samen precies de 30 volledige producten die ook in de sitemap staan (12 kibble + 18 wet, inclusief de drie multipacks). De Goodness-lijn staat niet onder `/hondenvoer/` maar op eigen URL’s; die is via de natvoercategorie en de sitemap gevonden.

### Productpagina’s

Alle **30 unieke productpagina’s** zijn opgehaald: 12 kibble, 15 losse wetproducten en 3 wetmultipacks. De ingrediëntenlijst is telkens uit de zichtbare tab “Ingrediënten” (`itemprop="ingredients"`) gekopieerd, inclusief percentages, volgorde, leestekens en typefouten. De exacte URL per record staat in `bronUrl` in `smolke.json`.

Daarnaast zijn twee extra landingspagina’s gecontroleerd:

- <https://www.smolke.nl/honden/hondenbrokken/hondenbrokken-smolke-pouch/>
- <https://www.smolke.nl/honden/hondenbrokken/puppy-brokken-smolke-pouch/>

Die verwijzen naar dezelfde 12 kibblerecepten (proefzak-/pouchweergave) en leveren geen nieuwe producten op.

In totaal zijn **44 inhoudspagina’s** (30 product + 12 categorie + 2 extra) plus robots.txt, homepage en beide sitemapbestanden opgehaald. Alles gaf HTTP 200; er waren geen 403’s of 429’s. Er is met ongeveer één verzoek per 1,1 seconde en een herkenbare user-agent gewerkt.

## Volledigheid

Het assortiment is aantoonbaar volledig gecontroleerd:

1. De sitemap en alle categoriepagina’s noemen dezelfde productset.
2. De hoofdcategorie `/hondenvoer/` bevat 30 volledige producten naast proefzakjes, Smølboxen, puppypakketten en kennismakingspakketten.
3. Er is geen aparte raw-/BARF-categorie of raw-product in de sitemap of categorieën gevonden. De “Vers Gestoomde Maaltijd”-lijn is natvoer (gestoomd), geen rauwvoer.
4. Er zijn geen aanvullende hondenvoerproducten buiten deze set aangetroffen.

## Records

### Kibble (12)

| Product | Verpakking | GTIN 3 kg | GTIN 12 kg |
|---|---|---|---|
| Puppy Mini & Medium | 3 / 12 kg | 8710429018013 | 8710429018020 |
| Puppy Maxi | 3 / 12 kg | 8710429018037 | 8710429018044 |
| Hond Adult Mini | 3 / 12 kg | 8710429018051 | 8710429018068 |
| Hond Adult Medium | 3 / 12 kg | 8710429018075 | 8710429018082 |
| Hond Adult Maxi | 3 / 12 kg | 8710429018099 | 8710429018105 |
| Hond Senior Mini | 3 kg | 8710429018112 | — |
| Hond Senior Medium | 3 / 12 kg | 8710429018136 | 8710429018143 |
| Hond Senior Maxi | 3 / 12 kg | 8710429018150 | 8710429018167 |
| Hond Weight Control | 3 / 12 kg | 8710429018198 | 8710429018204 |
| Hond Adult Graanvrij | 3 / 12 kg | 8710429017528 | 8710429017535 |
| Hond Sensitive Lam | 3 / 12 kg | 8710429018174 | 8710429018181 |
| Hond Sensitive Eend | 3 / 12 kg | 8710429018617 | 8710429018624 |

In het record staat één `gtin`: die van de kleinste maat (3 kg). De 12kg-barcode staat wel letterlijk op dezelfde productpagina en is hierboven ter controle opgenomen.

### Wet (15)

| Product | Verpakking | GTIN |
|---|---|---|
| Orange Goodness Kip | 300 g | — (zie aandachtspunt) |
| Red Goodness Rund | 300 g | 08710429019829 |
| Purple Goodness Lam | 300 g | 08710429019843 |
| Green Goodness Wild | 300 g | 08710429019867 |
| Vers Gestoomde Maaltijd Kip | 395 g | 8710429017641 |
| Vers Gestoomde Maaltijd Lam | 395 g | 8710429017665 |
| Vers Gestoomde Maaltijd Eend | 395 g | 8710429017702 |
| Vers Gestoomde Maaltijd Smølmix | 395 g | 8710429019720 |
| Vers Gestoomde Maaltijd met Kalkoen | 395 g | 8710429019683 |
| Vers Gestoomde Maaltijd Wild | 395 g | 8710429017726 |
| Soft Paté Hond Kalkoen | 125 g | 8710429018457 |
| Soft Paté Hond Kip | 125 g | 8710429018471 |
| Soft Paté Hond Rund | 125 g | 8710429018495 |
| Soft Paté Hond Lam | 125 g | 8710429018518 |
| Soft Paté Hond Party Edition | 125 g | 8710429018532 |

## Overgeslagen

| Product / groep | Reden |
|---|---|
| Variety Box Goodness (6 × 300 g) | Samengestelde verpakking van de vier Goodness-smaken. De pagina zegt letterlijk: “Zie per smaak de samenstelling.” Geen eigen recept. |
| Vers Gestoomde Maaltijd Favorieten (12 × 395 g) | Multipack van Lam, Kalkoen en Kip; de pagina geeft drie aparte ingrediëntenlijsten. Geen eigen recept. |
| Vers Gestoomde Maaltijd Variatiebox (12 × 395 g) | Wisselende inhoud; de pagina zegt dat de samenstelling afhangt van de maaltijd in de box. Geen eigen recept. |
| Proefzakjes 700 g, Smølboxen, puppypakketten, kennismakingspakketten | Dezelfde recepten in proef-/voorbeeldverpakking; geen nieuwe formule. |
| “Hondenbrokken Smølke pouch” en “Puppy brokken Smølke pouch” | Landingspagina’s die naar dezelfde 12 kibblerecepten verwijzen; geen nieuwe producten. |
| Kattenvoer, snacks, kauwproducten, melk, supplementen, verzorging | Buiten de opdracht (geen complete hondenvoeding). |

## Twijfel

Geen. Alle 27 records hebben een volledige, zichtbare Nederlandse ingrediëntenlijst. Er zijn daarom geen records met alleen `twijfel` en zonder etiketvelden.

## Aandachtspunten

- **GTIN per verpakkingsmaat:** de kibbleproducten met 3 en 12 kg hebben twee verschillende barcodes. Het contract heeft één `gtin`-veld; gekozen is voor de 3kg-barcode, omdat die maat in elk record voorkomt. De 12kg-barcodes staan in de tabel hierboven.
- **Orange Goodness Kip:** de officiële pagina vermeldt GTIN `8710429018013`, maar dat is exact dezelfde barcode als Puppy Mini & Medium 3 kg. Dat is aantoonbaar een fout in de bron. De barcode is daarom niet overgenomen (`gtin: null`); de ingrediëntenlijst is wel gewoon opgenomen. Er is niets verzonnen.
- **Afwijkende namen:** de kibblepagina’s gebruiken “Hond” in de productnaam (“Hond Adult Mini”, “Hond Senior Medium”, enz.). De Goodness-pagina’s laten “Hond” weg. De natvoerlijn heet “Vers Gestoomde Maaltijd met Kalkoen” (met “met”), terwijl de andere smaken zonder “met” heten. Deze officiële schrijfwijzen zijn overgenomen.
- **Senior Mini:** heeft op de officiële pagina alleen 3 kg; de andere kibblerecepten hebben 3 en 12 kg. Niet aangevuld met een niet-bestaande maat.
- **Smølmix en Party Edition:** beide hebben een eigen, afwijkende ingrediëntenlijst en zijn daarom als zelfstandig recept opgenomen, ook al klinken de namen als een mix.
- **Soft Paté:** de fabrikant positioneert dit als complete maaltijd voor kleinere honden en als tussendoortje voor honden boven 10 kg. Omdat het product als complete voeding wordt aangemerkt, is het opgenomen.
- **Vers Gestoomde Maaltijd:** dit is gestoomd natvoer, geen rauwvoer. Daarom staat de hele lijn onder `wet`.
- **Validatiewaarschuwing:** `scripts/controleer-uitbreiding.mjs` meldt bij de 12 kibblerecords “origineel lijkt Engels”. Dat is een false positive van de woordlijst (o.a. “cellulose”); de bron en de lijsten zijn Nederlandstalig.
- **403/429:** niet voorgekomen. Alle relevante pagina’s waren bereikbaar.

## Bestanden

- `data/import/uitbreiding/smolke.json` — 27 records.
- `data/import/uitbreiding/smolke-rapport.md` — dit rapport.
