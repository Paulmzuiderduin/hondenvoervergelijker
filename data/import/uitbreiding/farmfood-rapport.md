# Farm Food — uitbreiding assortiment

Opgehaald: 20 oktober 2026  
Bron: https://www.farmfood.nl (officiële fabrikantensite, Nederlandstalig)

## Uitkomst

- **9 producten** opgenomen, één record per recept.
- Verdeling: **4 kibble**, **3 wet**, **2 raw**.
- **0 producten in twijfel**: van alle opgenomen producten staat de samenstelling letterlijk op de productpagina.
- **19 producten overgeslagen** omdat ze geen complete hondenvoeding zijn (zie hieronder).

| Product | Voertype | Verpakking |
|---|---|---|
| HE Classic | kibble | 2 / 4 / 12 / 15 kg (standaard brok 8 mm); 2 / 4 / 12 kg (mini brok 6 mm) |
| HE Glutenvrij | kibble | 2 / 4 / 12 / 15 kg (standaard brok 8 mm); 2 / 4 kg (mini brok 6 mm) |
| HE met Schotse Zalmolie | kibble | 2 / 4 / 12 / 15 kg (standaard brok 8 mm); 2 / 4 / 12 kg (mini brok 6 mm) |
| HE Schaap | kibble | 2 / 4 / 12 / 15 kg (standaard brok 8 mm); 2 / 4 kg (mini brok 6 mm) |
| Fresh Menu Schaap (zacht gestoomd) | wet | 125 / 300 g |
| Fresh Menu Pens & Hart Compleet (zacht gestoomd) | wet | 125 / 300 g |
| Fresh Menu Rundvlees Compleet (zacht gestoomd) | wet | 125 / 300 g |
| Fresh Pens & Hart Compleet (diepvries) | raw | 9 x 110 g / 2 x 400 g / 550 g (pouch) / 250 g / 500 g / 1 kg (worst) |
| Fresh Rundvlees Compleet (diepvries) | raw | 9 x 110 g / 2 x 400 g / 550 g (pouch) / 250 g / 500 g / 1 kg (worst) |

## Gebruikte bronnen

- Product-sitemap: https://www.farmfood.nl/product-sitemap.xml
  - 482 `<url>`-regels, waarvan **28 unieke product-URL's** (de sitemap bevat veel dubbele vermeldingen).
- Productoverzicht: https://www.farmfood.nl/producten/
  - Bevat exact dezelfde 28 unieke product-URL's als de sitemap; geen paginering of verborgen tweede pagina gevonden.
- Categoriepagina's als controle:
  - https://www.farmfood.nl/product_categorie/he-brokken/ (4 producten)
  - https://www.farmfood.nl/product_categorie/fresh-menu-zacht-gestoomd/ (3 producten)
  - https://www.farmfood.nl/product_categorie/fresh-diepvries/ (3 producten)
  - https://www.farmfood.nl/product_categorie/freezies/ (3 producten)
- Alle 15 productpagina's van complete-voedingskandidaten zijn afzonderlijk opgehaald. De samenstelling is overgenomen uit het eerste tabblad "Samenstelling" op de productpagina.

## Overgeslagen producten

### Snacks, kauwproducten en beloningen (17)

- Dental Munchie Heart & Rice
- Dental Munchie Sunflower Oil & Rice
- Dental Munchie Tripe & Rice
- Dental Twist
- Easy Antlers
- Original Antlers
- Rawhide Dental Bone
- Rawhide Dental Braided Donut
- Rawhide Dental Braided Stick
- Rawhide Dental Chips
- Rawhide Dental Donut
- Rawhide Dental Impressed
- Rawhide Dental Roll
- Trainers
- Freezies Beef liver
- Freezies Salmon
- Freezies Turkey

Reden: dit zijn kauwstaafjes, tandenborstels, antlers, trainingsbeloningen of gevriesdroogde beloningssnacks, geen complete maaltijden. De Freezies-pagina's noemen zichzelf expliciet "gevriesdroogde beloning".

### Overig (2)

- **Farm Food No.1 kitten- en puppymelk** — melkvoeding voor pups en kittens, geen complete hondenmaaltijd. Melk valt bovendien buiten de opdracht.
- **Farm Food Fresh Pens Enkelvoudig (diepvries)** — 100% groene runderpens, bedoeld als basis voor een zelfbereide maaltijd ("Enkelvoudige vers-vleesvoeding ... uitstekend te gebruiken als basis van uw zelfbereide hondenmaaltijd"). Niet compleet, dus overgeslagen.

## Twijfelgevallen

Geen. Bij alle negen opgenomen producten stond de volledige samenstelling als zichtbare tekst op de productpagina. Er zijn geen etiketvelden weggelaten en er is geen gebruikgemaakt van een andere pagina dan de opgegeven `bronUrl`.

## Volledigheid

Het assortiment is als volgt gecontroleerd:

1. De product-sitemap is uitgelezen en ontdaan van dubbele URL's: 28 unieke productpagina's.
2. Het productoverzicht `/producten/` is opgehaald en bevat dezelfde 28 product-URL's. Er is geen paginering aangetroffen.
3. De vier relevante categoriepagina's (HE-brokken, Fresh Menu zacht gestoomd, Fresh diepvries, Freezies) zijn gecontroleerd; alle daar genoemde producten komen in de sitemap voor.
4. Alle 15 pagina's die op basis van naam en categorie complete voeding konden zijn, zijn opgehaald en beoordeeld. Daarvan zijn er 9 daadwerkelijk compleet; de overige 6 zijn hierboven met reden overgeslagen.

Daarmee is het complete hondenvoedingsassortiment van Farm Food op de Nederlandse site gedekt: 4 HE-brokken, 3 Fresh Menu-varianten (zacht gestoomd) en 2 diepvriesvarianten.

## Opmerkingen bij de gegevens

- Alle pagina's zijn Nederlandstalig. Daarom is `etiketNl` gelijk aan `etiketOrigineel` en is `aantekening` overal `null`.
- De samenstellingen zijn letterlijk overgenomen, inclusief schrijfwijzen uit de bron zoals "Boullion" (Fresh Menu Schaap) en "schotse zalmolie" (kleine letter in de Fresh Menu-producten).
- Op geen van de productpagina's staat een barcode of EAN zichtbaar; `gtin` is daarom overal `null`.
- De verpakkingsmaten van dezelfde recepten zijn gebundeld. Bij HE staan de standaard- en mini-brok apart vermeld, omdat de pagina's beide korrelgroottes met eigen maten noemen.
- In `naam` staat geen merknaam ("Farm Food"), omdat die al in `merk` staat. De marketingprefix "NIEUW!" bij Fresh Menu Schaap is niet als productnaam overgenomen.
