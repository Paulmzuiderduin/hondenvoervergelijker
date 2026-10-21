# Cavom — uitbreiding assortiment

Opgehaald: 20 oktober 2026  
Bron: https://www.cavom.nl (officiële fabrikantensite, Nederlandstalig)

## Uitkomst

- **9 recepten** opgenomen, één record per recept.
- Verdeling: **9 kibble**, **0 wet**, **0 raw**.
- **9 recepten stonden al in de app**.
- **0 nieuwe varianten**: het officiële assortiment is gelijk aan het bestaande importbestand en de samenstellingen zijn ongewijzigd.
- **0 producten in twijfel**: van alle 9 producten staat de volledige samenstelling als zichtbare tekst op de productpagina.
- **0 producten overgeslagen**: de site voert naast deze 9 geen andere producten.

### Alle opgenomen recepten

| Product | Voertype | Verpakking | Status |
|---|---|---|---|
| compleet Adult | kibble | 5 / 20 kg | al in de app |
| compleet Pup/Junior | kibble | 5 / 20 kg | al in de app |
| compleet Senior | kibble | 5 / 20 kg | al in de app |
| compleet Zalm | kibble | 5 / 20 kg | al in de app |
| compleet Lam & Rijst | kibble | 5 / 20 kg | al in de app |
| compleet Light | kibble | 5 / 20 kg | al in de app |
| compleet Diner | kibble | 10 kg | al in de app |
| compleet Midi | kibble | 2 / 10 kg | al in de app |
| compleet Sport | kibble | 5 / 20 kg | al in de app |

## Gebruikte bronnen

- Sitemapindex: https://www.cavom.nl/sitemap_index.xml
- Product-sitemap: https://www.cavom.nl/product-sitemap.xml
  - 9 unieke product-URL's, allemaal complete hondenvoeding.
- Productoverzicht: https://www.cavom.nl/producten/
  - De navigatie en het productoverzicht noemen exact dezelfde 9 producten. De pagina zegt zelf: "Cavom heeft een compleet compact assortiment aan hondenvoedingen voorhanden."
- Alle 9 productpagina's zijn afzonderlijk opgehaald. De samenstelling is overgenomen uit het tabblad "Samenstelling", direct achter het label "Samenstelling:".
- De zichtbare maatlabels naast de producttitel zijn gecontroleerd:
  - 5 / 20 kg bij Adult, Pup/Junior, Senior, Zalm, Lam & Rijst, Light en Sport;
  - 10 kg bij Diner;
  - 2 / 10 kg bij Midi.

## Overgeslagen producten

Geen. De officiële Nederlandse site voert alleen de negen complete hondenvoedingsrecepten. Er staan geen snacks, kauwproducten, supplementen, kattenvoer of verzorgingsproducten in de product-sitemap of in het productoverzicht.

## Twijfelgevallen

Geen. Bij alle negen opgenomen producten stond de volledige samenstelling als zichtbare tekst op de opgegeven `bronUrl`. Er zijn geen etiketvelden weggelaten en er is geen gebruikgemaakt van een andere pagina dan de bronpagina van het product.

## Volledigheid

Het assortiment is als volgt gecontroleerd:

1. De product-sitemap is uitgelezen: 9 unieke product-URL's.
2. Het productoverzicht `/producten/` is opgehaald. De navigatie, de productlijst en de sitemap noemen alle drie dezelfde negen producten; er is geen paginering of tweede overzichtspagina gevonden.
3. Alle negen productpagina's zijn afzonderlijk opgehaald en bevatten allemaal een volledige samenstelling.
4. De negen samenstellingen zijn vergeleken met het bestaande `data/import/cavom.json`: alle teksten zijn identiek. Er zijn dus geen gewijzigde of ontbrekende recepten gevonden.

Daarmee is het complete hondenvoedingsassortiment van Cavom op de Nederlandse site gedekt. Puppy en senior zitten in deze negen; daarbuiten heeft de bron geen aparte large-breed-, natvoer- of dieetlijn.

## Gaten

- **Geen ontbrekende samenstellingen.** Alle negen opgenomen producten hebben een volledige, zichtbare ingrediëntenlijst.
- **Geen nieuwe of gewijzigde recepten.** De negen samenstellingen zijn identiek aan het bestaande importbestand.
- **Geen barcodes.** De officiële productpagina's tonen geen EAN/GTIN; daarom staat `gtin` overal op `null`.
- **Geen extra officiële varianten.** De product-sitemap en het productoverzicht noemen beide exact dezelfde negen producten.

## Opmerkingen bij de gegevens

- Alle pagina's zijn Nederlandstalig. Daarom is `etiketNl` gelijk aan `etiketOrigineel` en is `aantekening` overal `null`.
- De samenstellingen zijn letterlijk overgenomen, inclusief de asterisken bij "rund*", "lam*", "kalkoen*", "zalm*" en "krill*" en de toelichting "(*gedroogd)".
- Op geen van de productpagina's staat een barcode of EAN zichtbaar; `gtin` is daarom overal `null`.
- **compleet Midi** heeft dezelfde ingrediëntenlijst als **compleet Adult**, maar is een eigen product met een kleinere korrel voor kleinere rassen en andere verpakkingsmaten (2 / 10 kg). Beide staan daarom als apart record in de lijst.
- De live-telling in `voortgang.md` is 10, één meer dan de negen officiële recepten. In de repo staan twee Adult-rijen: de seed met "Compleet Adult" (20 kg) en de import met "compleet Adult" (5 / 20 kg). Dat verklaart waarschijnlijk het verschil; op de officiële site is geen tiende recept te vinden.
