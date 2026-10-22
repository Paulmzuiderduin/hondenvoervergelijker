# Pedigree — uitbreiding assortiment

Opgehaald: 21 oktober 2026  
Bron: https://www.pedigree.nl (officiële fabrikantensite, Nederlandstalig)

## Uitkomst

- **37 records** opgenomen: **6 kibble** en **31 wet**.
- De 31 natvoerrecords bestaan uit **29 records met volledige samenstelling** en **2 records in `twijfel`**.
- **0 vertalingen**: alle gebruikte pagina's zijn Nederlandstalig, dus `etiketNl` is gelijk aan `etiketOrigineel` en `aantekening` is overal `null`.
- De 14 natvoer-URL's op de site zijn teruggebracht tot **10 productlijnen**. Multipacks zijn per smaak opgesplitst; de verpakkingsmaat van de multipack staat in `verpakking`.

### Droogvoer

| Product | Verpakking |
|---|---|
| Droog Adult Gevogelte en Groenten | 2,6 / 12 kg |
| Droog Adult Rund en Groenten | 2,6 / 12 kg |
| Droog Adult Mini Gevogelte en Groenten | 0,5 / 1,4 kg |
| Droog Adult Mini Rund en Groenten | 1,4 / 12 kg |
| Droog Junior Gevogelte en Groenten | 2,6 / 12 kg |
| Droog Adult Vis en Groenten | 12 kg |

### Natvoer

| Productlijn | Smaakvarianten | Verpakking | Records |
|---|---|---|---|
| Kip & Lam in Gelei | Kip; Lam- en levermix | 4 x 100 g | 2 |
| Kip & Rund in Saus | Kip; Rund- en levermix | 4 x 100 g | 2 |
| Maaltijdzakjes Adult Gevogelte in Saus | Kip; Kalkoen; Gevogelte; Eend | 12 x 100 g | 4 |
| Maaltijdzakjes Adult Mix Selectie in Gelei | Rund- en levermix; Kip; Lam- en levermix; Gevogelte | 12 x 100 g / 40 x 100 g | 4 |
| Maaltijdzakjes Adult Mix Selectie in Saus | Kip; Rund- en levermix; Kalkoen; Rund- en lammix | 12 x 100 g / 80 x 100 g | 4 |
| Maaltijdzakjes Junior Mix Selectie in Gelei | Kip; Lam- en levermix; Gevogelte; Rund- en levermix | 12 x 100 g | 4 |
| Maaltijdzakjes Senior Mix Selectie in Gelei | Rund- en levermix; Kip; Lam- en levermix; Gevogelte | 12 x 100 g | 4 |
| Adult Maaltijdzakjes Proteïne+ Selectie in gelei | Rund- en levermix; Kip en rund (volledig); Kip en kalkoen; Eend en kip (twijfel) | 12 x 85 g | 4 |
| Adult met Rund in Gelei | — | 400 g | 1 |
| Maaltijdzakjes Adult Kip & Vis Selectie in Gelei | Kip; Vis | 4 x 100 g | 2 |

## Gebruikte bronnen

- Sitemap: https://www.pedigree.nl/sitemap.xml
  - 367 URL's, inclusief oude en nieuwe product-URL's.
- Productoverzicht: https://www.pedigree.nl/onze-producten/alle-producten
  - Categoriefilter: **Droogvoer (12)**, **Natvoer (14)**, **Snacks (20)** en **Gebitsverzorging (14)**.
- Alle 12 droogvoer-URL's zijn opgehaald. De zichtbare H1 en samenstelling zijn gebruikt, niet de URL-slug; verschillende slugs zijn verouderd (zie Gaten).
- Alle 14 natvoer-URL's zijn opgehaald. De samenstellingen zijn overgenomen uit het tabblad `Ingrediënten` op de productpagina.
- Voor de grotere verpakkingen zijn ook de aparte pagina's voor 40 x 100 g (gelei), 80 x 100 g (saus) en Maxipack 80 gecontroleerd. Voor de Adult Mix Selectie-lijnen zijn de samenstellingen van de 12 x 100 g-pagina's en de grotere verpakkingen per recept vergeleken en identiek; alleen de typografie verschilt.

## Overgeslagen producten

- **20 snacks**: onder andere Rodeo Duos, Tasty Minis, Markies Minis, Schmackos, Jumbone, Ranchos, Biscrok Gravy Bones en Ranchos Cubes. Dit zijn beloningen of kauwproducten, geen complete maaltijden.
- **14 producten voor gebitsverzorging**: Dentastix in verschillende maten en verpakkingen, en Chewy Chunx Mini/Maxi. Geen complete voeding.
- **3 multivitaminesupplementen**: gewrichtsverzorging, spijsvertering en weerstand (elk 180 g). Supplementen, geen complete voeding.

Deze producten zijn niet als complete hondenvoeding opgenomen. De categorieën zijn via het officiële productoverzicht en de sitemap gecontroleerd.

## Twijfelgevallen

Twee smaken van **Adult Maaltijdzakjes Proteïne+ Selectie in gelei** staan in `twijfel`:

- **Kip en kalkoen**
- **Eend en kip**

De officiële pagina noemt vier smaken in de 12 x 85 g multipack, maar geeft alleen de samenstelling van **rund- en levermix** en **kip en rund**. Voor de andere twee smaken zijn daarom geen etiketvelden opgenomen. De twee bekende smaken zijn wel als volledige records opgenomen; de twee onbekende smaken moeten door een mens worden aangevuld.

## Gaten en bijzonderheden

### Lam en Maxi: verouderde URL's

De officiële site heeft nog URL's voor lam en maxi, maar die pagina's tonen andere recepten:

- `.../pedigree-adult-hondenbrokken-lam-en-groenten-hondenvoer-10-kg` toont **Droog Adult Rund en Groenten 12 kg** (zelfde SKU als de rundpagina).
- `.../pedigree-adult-hondenbrokken-lam-en-groenten-hondenvoer-2-6-kg` toont **Droog Adult Gevogelte en Groenten 2,6 kg** (zelfde SKU als de kip/gevogeltepagina).
- `.../pedigree-adult-maxi-hondenbrokken-rund-en-rijst-hondenvoer-15-kg` toont **Droog Adult Mini Rund en Groenten 12 kg**, niet een maxi van 15 kg.

Daarom zijn **Lam** en **Maxi 15 kg** niet opgenomen: er is geen betrouwbare samenstelling voor die producten. De mini-rund-12-kg-pagina is wel gebruikt, omdat H1, samenstelling en SKU daar op Mini Rund 12 kg wijzen. De beschrijving op die pagina is nog generieke maxi-copy; dat is een bekende inconsistentie op de bronpagina.

### Nieuwe juniorpagina met tegenstrijdige gegevens

Naast de gebruikte juniorpagina `.../pedigree-maaltijdzakjes-junior-mix-selectie-in-gelei` bestaat een nieuwe pagina `.../pedigree-maaltijdzakjes-junior-mix-selectie-gelei-puppy`. Die pagina heeft een afwijkende receptversie (91% natuurlijk in plaats van 95%) en een tegenstrijdige verpakking: de tekst noemt 12 maaltijdzakjes, maar het officiële productbeeld toont een **Megapack 40**. Daarom is de oude, duidelijke 12 x 100 g-pagina gebruikt en is de nieuwe pagina niet als record opgenomen. Een mens moet beoordelen of dit een nieuwe 40-pack met een nieuw recept is.

### Verouderde URL-slugs

De URL's van sommige droogvoerproducten noemen een andere maat dan de pagina toont:

- `.../kip-en-groenten-hondenvoer-10-kg` toont **12 kg**.
- `.../junior-hondenbrokken-kip-en-rijst-hondenvoer-10-kg` toont **12 kg**.

De zichtbare H1, samenstelling en SKU zijn gevolgd; de maat in de URL is niet overgenomen.

### Letterlijke brontekst

- De samenstelling van **Droog Adult Vis en Groenten** mist op de bronpagina komma's tussen de eerste ingrediënten ("Granen* vlees en dierlijke bijproducten oliën en vetten..."). Dat is letterlijk zo overgenomen.
- Enkele natvoerpagina's bevatten een typfout of een losse aanhalingstekens aan het eind van de samenstelling. Die zijn letterlijk overgenomen; ze zijn niet gecorrigeerd.
- De bron gebruikt zowel "0.7%" als "0,7%" en wisselende hoofdletters. De tekst is per product letterlijk gevolgd.
- Bij droogvoer zijn de samenstellingen per maat vergeleken. De records gebruiken de volledigste pagina (meestal 12 kg of 500 g); kleine typografische verschillen op maatpagina's, zoals een spatie in "erwtjes mix" of een ontbrekende footnote, zijn niet overgenomen.

## Volledigheid

Het assortiment is als volgt gecontroleerd:

1. De sitemap is uitgelezen en alle droogvoer- en natvoer-URL's zijn verzameld.
2. Het officiële productoverzicht noemt 12 droogvoer- en 14 natvoerproducten. Alle 12 droogvoer-URL's en alle 14 natvoer-URL's zijn opgehaald.
3. Droogvoer: na het samenvoegen van verpakkingsmaten blijven **6 recepten** over, met **11 verpakkingsvarianten**. De lam-URL's en de maxi-URL blijken naar andere recepten te wijzen; die zijn als gat gemeld.
4. Natvoer: de 14 URL's verwijzen naar **10 productlijnen**. De multipacks zijn per smaak opgesplitst tot **31 records**. Voor de Adult Mix Selectie-lijnen zijn de 12 x 100 g-, 40 x 100 g- en 80 x 100 g-pagina's per recept vergeleken; de samenstellingen zijn gelijk.
5. Snacks, gebitsverzorging en multivitamines zijn via het productoverzicht en de sitemap gecontroleerd en uitgesloten omdat het geen complete voeding is.

Daarmee is het complete Pedigree-assortiment aan complete hondenvoeding gedekt, met twee expliciet gemelde gaten: de lam- en maxi-recepten (verouderde URL's) en de tegenstrijdige nieuwe juniorpagina. De twee ontbrekende Proteïne+-samenstellingen staan als `twijfel` in het JSON-bestand.

## Opmerkingen bij de gegevens

- Alle gebruikte pagina's zijn Nederlandstalig. `etiketNl` is daarom overal gelijk aan `etiketOrigineel` en `aantekening` is `null`.
- `gtin` is overal `null`. De SKU's in de JSON-LD van de pagina's zijn niet als barcode op de pagina zichtbaar en daarom niet als GTIN overgenomen.
- Multipacks zijn per smaak opgesplitst. De `verpakking` is de maat van de multipack, niet de inhoud van één zakje.
- De 40 x 100 g-pagina van de gelei-lijn en de 12 x 100 g-pagina van de saus-lijn zijn alleen gebruikt om de verpakkingsmaat te bevestigen. De samenstelling is bij gelei overgenomen van de 12 x 100 g-pagina en bij saus van de 80 x 100 g-pagina; de andere maat toont hetzelfde recept.
- De twee Proteïne+-records met een volledige samenstelling kunnen worden geïmporteerd; de twee `twijfel`-records worden door de import overgeslagen en apart gemeld.
