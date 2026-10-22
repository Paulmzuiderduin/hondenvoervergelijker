# Orijen — assortiment complete hondenvoeding

**Opgehaald:** 21 oktober 2026  
**Bron:** https://emea.orijenpetfoods.com/nl-NL/ (officiële EMEA-site; voor één product de Duitse pagina)  
**Bestand:** `data/import/uitbreiding/orijen.json`

## Samenvatting

| | Aantal |
|---|---:|
| Productrecords (één per recept) | **12** |
| waarvan kibble | 12 |
| waarvan wet | 0 |
| waarvan raw | 0 |
| Records met `twijfel` | 0 |
| Gebruikte productpagina's met samenstelling | 12 |
| Nieuwe varianten ten opzichte van de bestaande app-import | 8 |

De Europese/Nederlandse Orijen-site voert op dit moment uitsluitend droogvoer
(kibble). De EMEA-sitemap bevat geen natvoer- of rauwvoerpagina's voor honden en
de filterpagina voor natvoer geeft `0 Resultaten`. De Noord-Amerikaanse site heeft
die lijnen wel; die vallen buiten de Nederlandse/EMEA-afbakening en zijn hier niet
opgenomen (zie [Buiten scope](#buiten-scope-en-overgeslagen-producten)).

## Aantal records per voertype

| Voertype | Records |
|---|---:|
| `kibble` | 12 |
| `wet` | 0 |
| `raw` | 0 |
| **Totaal** | **12** |

## Producten en verpakkingen

| Product | Verpakking | Bron |
|---|---|---|
| Original | 340 g / 2 / 6 / 11,4 kg | NL |
| Six Fish | 340 g / 2 / 6 / 11,4 kg | NL |
| Tundra | 2 / 6 / 11,4 kg | NL |
| Regional Red | 340 g / 2 / 6 / 11,4 kg | NL |
| Fit & Trim | 2 / 6 / 11,4 kg | NL |
| Senior | 2 / 6 / 11,4 kg | NL |
| Puppy | 340 g / 2 / 6 / 11,4 kg | NL |
| Large Breed Puppy | 6 / 11,4 kg | NL |
| Large Breed Adult | 11,4 kg | DE |
| Small Breed | 1,8 / 4,5 kg | NL |
| Small Breed Puppy | 1,8 / 4,5 kg | NL |
| Small Breed Marine Fish | 1,8 / 4,5 kg | NL |

De 340 g-verpakkingen staan alleen op de pagina's waar de fabrikant ze noemt
(Original, Six Fish, Regional Red en Puppy). De maten zijn overgenomen uit het
blok "Beschikbare verpakkingsgroottes" op de productpagina.

## Gebruikte bronpagina's

### Sitemap en assortimentspagina's

- https://emea.orijenpetfoods.com/robots.txt
- https://emea.orijenpetfoods.com/en/sitemap_index.xml
- https://emea.orijenpetfoods.com/en/sitemap_0.xml (195 URL's; lastmod 2026-10-21)
- https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food (11 producttegels)
- https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food?prefn1=foodType&prefv1=Wet%20Food (`0 Resultaten`)

### Productpagina's met samenstelling

- https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-ori-original.html
- https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-ori-sixfish.html
- https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-ori-tundra.html
- https://emea.orijenpetfoods.com/nl-NL/eu-ori-ns-ori-regionalred.html
- https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-ori-fittrim.html
- https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-ori-senior.html
- https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-puppy.html
- https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-ori-puppy-large.html
- https://emea.orijenpetfoods.com/de-DE/dogs/dog-food/eu-ori-ns-ori-large-breed-adult.html
- https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-ori-small-breed.html
- https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-ori-small-breed-puppy.html
- https://emea.orijenpetfoods.com/nl-NL/dogs/dog-food/eu-ori-ns-ori-small-breed-marine-fish.html

## Volledigheidscontrole

1. **Robots.txt** staat het ophalen toe; er is met een herkenbare user-agent en
   ongeveer één verzoek per seconde opgehaald.
2. **Sitemap:** `sitemap_index.xml` verwijst naar `sitemap_0.xml` met 195 URL's.
   Daarvan zijn er 60 in de vorm `/dogs/dog-food/...`: 5 taalversies ×
   (11 productpagina's + 1 assortimentspagina). De 11 unieke slugs zijn:
   fittrim, large-breed-adult, original, puppy-large, senior, sixfish,
   small-breed-marine-fish, small-breed-puppy, small-breed, tundra en puppy.
   Regional Red staat op een aparte, oudere URL buiten de map `/dogs/dog-food/`
   (`/nl-NL/eu-ori-ns-ori-regionalred.html`) en is meegeteld. Daarmee zijn er
   12 unieke productpagina's in de EMEA-sitemap.
3. **Assortimentspagina:** de Nederlandse `/dogs/dog-food` toont 11 producttegels.
   Alle 11 staan in het JSON-bestand. De 12e sitemap-pagina, Large Breed Adult,
   staat niet op de Nederlandse assortimentspagina; de Nederlandse pagina bevat
   `null` als samenstelling. De Duitse versie van dezelfde EMEA-pagina bevat de
   volledige samenstelling en verpakkingsmaat (11,4 kg). Daarom is dat product
   met de Duitse bron opgenomen, met de verplichte vertaalaantekening.
4. **Natvoer/rauwvoer:** de sitemap bevat geen natvoer- of rauwvoerpagina's voor
   honden. De natvoerfilter op de NL-site geeft `0 Resultaten`. Binnen de
   EMEA/NL-afbakening zijn er dus geen wet- of raw-records.
5. **Per product gecontroleerd:** elke productpagina is geopend en het blok onder
   "Ingrediënten" is letterlijk overgenomen. De verpakkingsmaten komen uit
   hetzelfde productpagina-blok. Er zijn geen pagina's met een afgekapte of
   verborgen lijst aangetroffen.
6. **Barcodes:** op geen van de productpagina's staat een GTIN/EAN letterlijk
   vermeld; daarom is `gtin` overal `null`.

## Vergelijking met de bestaande app-import

De bestaande `data/import/orijen.json` bevat 4 producten: Original, Six Fish,
Tundra en Puppy. Die staan ook in dit bestand, maar de nieuwe records gebruiken
de actuele EMEA/NL-etiketten. De bewoording verschilt op onderdelen van de
Canadese pagina's (bijvoorbeeld "gedroogd kippenvlees" in plaats van
"gedehydrateerde kip"); de EMEA-pagina is hier de bron van waarheid.

Nieuw ten opzichte van de bestaande import zijn:

- Regional Red
- Fit & Trim
- Senior
- Large Breed Puppy
- Large Breed Adult
- Small Breed
- Small Breed Puppy
- Small Breed Marine Fish

## Buiten scope en overgeslagen producten

De Noord-Amerikaanse site (`https://www.orijenpetfoods.com/en-US/`) voert meer
lijnen dan de EMEA-site. Die zijn niet in dit bestand opgenomen, omdat ze niet in
de Europese/Nederlandse sitemap of assortimentspagina staan, niet in Nederland
worden verkocht en deels andere recepturen hebben dan de Europese varianten met
dezelfde naam. Het gaat om:

| Lijn | Aantal | Reden |
|---|---:|---|
| Amazing Grains (droogvoer) | 7 | Noord-Amerikaans, niet in EMEA/NL |
| Wild Reserve (droogvoer) | 4 | Noord-Amerikaans, niet in EMEA/NL |
| FreshPrey (vers/rauw) | 6 | Noord-Amerikaans, niet in EMEA/NL |
| Natvoer (pâtés en stews) | 10 | Noord-Amerikaans, niet in EMEA/NL |
| Freeze-dried rauwvoer (medallions en Epic Bites) | 9 | Noord-Amerikaans, niet in EMEA/NL |

Daarnaast zijn buiten beschouwing gelaten:

- **Snacks en kauwproducten**, waaronder de freeze-dried treats en biscuits:
  geen complete voeding.
- **Kattenvoer** (inclusief Guardian 8): geen hondenvoer.
- **Multipacks en oude `ds-`/`ns-` dubbele pagina's** van dezelfde recepten:
  verpakkings- of templatevarianten, geen apart recept.
- **De Noord-Amerikaanse versies van Original, Six Fish, Tundra, Regional Red,
  Fit & Trim, Senior, Puppy, Large Breed Puppy, Small Breed en Small Breed
  Puppy**: dezelfde productnamen als de EMEA-records, maar met andere recepturen.
  Om dubbele namen met verschillende etiketten te voorkomen is alleen de
  EMEA-versie opgenomen.

## Twijfelgevallen en aandachtspunten

Er zijn **0 records met `twijfel`**. Wel zijn er drie aandachtspunten:

1. **Large Breed Adult** staat niet op de Nederlandse assortimentspagina en de
   Nederlandse productpagina geeft `null` als samenstelling. De pagina staat wel
   in de EMEA-sitemap en de Duitse EMEA-pagina bevat de volledige samenstelling.
   Het record verwijst daarom naar de Duitse pagina en heeft de verplichte
   vertaalaantekening. De Nederlandse beschikbaarheid is niet bevestigd.
2. **Six Fish en Tundra** bevatten op de pagina naast de ingrediëntenlijst nog
   een tweede, generiek ogend toevoegingsmiddelenblok met andere waarden dan het
   inline blok. De ingrediëntenlijst zelf is eenduidig en volledig; daarom is
   alleen die lijst overgenomen, net als bij de andere producten.
3. **Fit & Trim** bevat op de bronpagina de schrijfwijze "gedroogd kalkoenvlles".
   Die typo is letterlijk overgenomen; er is niet stilzwijgend gecorrigeerd.

## Validatie

- `data/import/uitbreiding/orijen.json` is geldige JSON.
- Alle 12 records hebben `merk`, `naam`, `voertype`, `bronUrl`,
  `etiketOrigineel` en `etiketNl`.
- Alle records hebben `voertype: "kibble"`, `gtin: null` en `twijfel: null`.
- `node scripts/controleer-uitbreiding.mjs` geeft voor Orijen 12 records zonder
  fouten of waarschuwingen. De waarschuwingen in de uitvoer gaan over andere
  merken die nog geen werkbestand hebben.
