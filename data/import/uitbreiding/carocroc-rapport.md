# CaroCroc — uitbreiding assortiment

Opgehaald: 20 oktober 2026  
Bron: https://www.carocroc.nl (officiële fabrikantensite, Nederlandstalig)

## Uitkomst

- **16 recepten** opgenomen, één record per recept.
- Verdeling: **14 kibble**, **2 wet**, **0 raw**.
- **10 recepten stonden al in de app** (9 uit het bestaande importbestand plus Original, dat live staat als "Original 23/12").
- **6 nieuwe varianten**: High Energy, Grain Free, Mobility Support, Skin Support, Worst met kip en Worst met lam.
- **0 producten in twijfel**: van alle 16 opgenomen producten staat de volledige samenstelling als zichtbare tekst op de productpagina.
- **11 producten overgeslagen** omdat ze geen complete hondenvoeding zijn (kattenvoer of pakketten, zie hieronder).

### Alle opgenomen recepten

| Product | Voertype | Verpakking | Status |
|---|---|---|---|
| Puppy | kibble | 3 / 12,5 kg | al in de app |
| Puppy Large | kibble | 3 / 12,5 kg | al in de app |
| Original | kibble | 3 / 12,5 kg | al in de app (live: "Original 23/12") |
| Energy | kibble | 3 / 12,5 kg | al in de app |
| High Energy | kibble | 3 / 12,5 kg | **nieuw** |
| Low Energy | kibble | 3 / 12,5 kg | al in de app |
| Senior | kibble | 3 / 12,5 kg | al in de app |
| Large Breed | kibble | 12,5 kg | al in de app |
| Small Breed | kibble | 1,5 / 3 / 12,5 kg | al in de app |
| Senior Sensitive | kibble | 3 / 12,5 kg | al in de app |
| Superior | kibble | 3 / 12,5 kg | al in de app |
| Grain Free | kibble | 3 / 12,5 kg | **nieuw** |
| Mobility Support | kibble | 3 / 12,5 kg | **nieuw** |
| Skin Support | kibble | 3 / 12,5 kg | **nieuw** |
| Worst met kip | wet | 400 g | **nieuw** |
| Worst met lam | wet | 400 g | **nieuw** |

## Gebruikte bronnen

- Sitemapindex: https://www.carocroc.nl/sitemap_index.xml
- Product-sitemap: https://www.carocroc.nl/products-sitemap.xml
  - 27 unieke product-URL's: 16 complete hondenvoedingsproducten, 8 kattenvoerproducten, 1 kattenpakket en 2 puppy-pakketten.
- Assortimentspagina hond: https://www.carocroc.nl/hond/producten/
  - Bevat dezelfde 16 complete hondenvoedingsproducten, plus de twee puppy-pakketten.
- Categoriepagina's als controle:
  - https://www.carocroc.nl/producten/premium/ (9 producten)
  - https://www.carocroc.nl/producten/speciale-aandacht/ (5 producten)
  - https://www.carocroc.nl/producten/worsten/ (2 producten)
  - Samen 9 + 5 + 2 = 16, gelijk aan de sitemap.
- Alle 16 productpagina's zijn afzonderlijk opgehaald. De samenstelling is overgenomen uit de paragraaf onder het kopje "Samenstelling" op die pagina.
- De twee pakketpagina's zijn apart bekeken om te controleren of zij een eigen recept bevatten:
  - https://www.carocroc.nl/producten/puppypakketten/puppy-pakket/
  - https://www.carocroc.nl/producten/puppypakketten/puppy-large-pakket/

## Overgeslagen producten

### Kattenvoer (8)

- CaroCroc 3 Mix
- Indoor
- Kitten
- CaroCroc Senior Kat
- Sterilised
- With Chicken
- CaroCroc With Fish
- CaroCroc With Lamb

Reden: kattenvoer valt buiten de opdracht.

### Pakketten (3)

- **Kittenpakket** — kattenpakket, geen hondenvoeding.
- **Puppypakket** — verkoopverpakking met 1,5 kg CaroCroc Puppy, een speelbal, maatbeker en puppyboekje. Het pakket verwijst voor de voeding naar het bestaande recept Puppy; er is geen eigen samenstelling.
- **Puppy Large pakket** — dezelfde soort verpakking voor Puppy Large, zonder eigen recept.

Reden: geen zelfstandig recept; de voeding erin staat al als Puppy respectievelijk Puppy Large in de lijst.

## Twijfelgevallen

Geen. Bij alle 16 opgenomen producten stond de volledige samenstelling als zichtbare tekst op de opgegeven `bronUrl`. Er zijn geen etiketvelden weggelaten en er is geen gebruikgemaakt van een andere pagina dan de bronpagina van het product.

## Volledigheid

Het assortiment is als volgt gecontroleerd:

1. De product-sitemap is uitgelezen: 27 unieke product-URL's.
2. De assortimentspagina `/hond/producten/` is opgehaald en bevat dezelfde 16 complete hondenvoedingsproducten. Er is geen paginering of verborgen tweede pagina gevonden.
3. De drie relevante categoriepagina's zijn gecontroleerd; zij tellen samen precies de 16 producten uit de sitemap.
4. Alle 16 productpagina's zijn opgehaald en beoordeeld. Alle 16 bevatten een volledige samenstelling.
5. De 11 resterende sitemap-URL's zijn gecontroleerd en met reden overgeslagen (8 kattenvoerproducten, 1 kattenpakket, 2 puppy-pakketten).

Daarmee is het complete hondenvoedingsassortiment van CaroCroc op de Nederlandse site gedekt: 14 brokkenrecepten en 2 worstrecepten.

## Gaten

- **Geen ontbrekende samenstellingen.** Alle 16 opgenomen producten hebben een volledige, zichtbare ingrediëntenlijst.
- **Geen twijfelrecords.** Er is niets op basis van een andere pagina of een aanname ingevuld.
- **Geen barcodes.** De officiële productpagina's tonen geen EAN/GTIN; daarom staat `gtin` overal op `null`.
- **Geen extra officiële varianten gevonden.** De sitemap, de assortimentspagina en de drie categoriepagina's wijzen allemaal naar dezelfde 16 recepten. De enige niet opgenomen hondenproducten zijn de twee puppy-pakketten, die geen eigen recept hebben.

## Opmerkingen bij de gegevens

- Alle pagina's zijn Nederlandstalig. Daarom is `etiketNl` gelijk aan `etiketOrigineel` en is `aantekening` overal `null`.
- De negen recepten die al in het bestaande importbestand stonden, zijn opnieuw van de bronpagina gelezen. Hun samenstellingen zijn ongewijzigd; de nieuwe records zijn dus echt aanvullingen en geen correcties.
- De samenstellingen zijn letterlijk overgenomen, inclusief schrijfwijzen uit de bron zoals "mais" versus "maïs", "dierlijk eiwit extract" versus "dierlijk eiwitextract" en "geëxtraheerde sojabonen (getoast)".
- Op geen van de productpagina's staat een barcode of EAN zichtbaar; `gtin` is daarom overal `null`.
- De verpakkingsmaten komen uit de zin "Verkrijgbaar in …" op de productpagina. De maten zijn gebundeld tot "3 / 12,5 kg", "1,5 / 3 / 12,5 kg", "12,5 kg" en "400 g".
- **Original**: de officiële productpagina noemt het product "Original". In de live database staat het als "Original 23/12". De samenstelling is identiek; de import ontdubbelt op etiket tekst, zodat er geen tweede Original-rij naast komt.
- **Worst met kip** en **Worst met lam** worden op de pagina's zowel als volledig diervoeder, als aanvullend voeder en als beloning gepositioneerd. Omdat de pagina expliciet zegt dat de worst "geschikt als volledig diervoeder" is, zijn beide als `wet` opgenomen.
- **High Energy** is een eigen recept naast Energy, niet alleen een andere verpakking: de samenstelling en de percentages verschillen.
- **Grain Free** heeft de samenstelling onder een langere kop ("Samenstelling van onze graanvrije hondenbrokken"); die tekst is letterlijk overgenomen.
- De controlewaarschuwing "origineel lijkt Engels" bij sommige CaroCroc-records is een false positive van de woordenlijst in `controleer-uitbreiding.mjs` (onder meer door het woord "cellulose", dat ook Nederlands is). De bronpagina's en de etiketten zijn Nederlandstalig; er is niets vertaald of toegevoegd.
