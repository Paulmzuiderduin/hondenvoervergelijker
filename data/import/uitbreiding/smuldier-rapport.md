# Smuldier — uitbreiding assortiment

Opgehaald: 22 oktober 2026  
Bron: https://www.smuldier.nl/ (301 naar https://smuldier.nl/)  
Werkbestand: `data/import/uitbreiding/smuldier.json`

## Uitkomst

- **19 recepten** opgenomen, één record per recept/smaak/formule.
- Verdeling: **15 raw**, **4 wet**, **0 kibble**.
- **10 recepten stonden al in de app**; **9 varianten zijn nieuw**.
- **0 producten in twijfel**: van alle 19 staat de volledige samenstelling als zichtbare tekst op de Nederlandstalige productpagina.
- **5 voedingsproducten overgeslagen** omdat ze expliciet aanvullend voer zijn: 4× Door de Brok en 1× Runderpens.
- **0 GTIN's**: op de productpagina's staat geen barcode of EAN als leesbare tekst.
- **0 kibble**: Smuldier verkoopt alleen vers vlees (rauw of zacht gestoomd). De "Vers vlees Brokjes" zijn rauwe vleesbrokjes uit de diepvries, geen droogvoer.

### Alle opgenomen recepten

| Product | Voertype | Verpakking | Status | Bron-URL |
|---|---|---|---|---|
| Complete maaltijd Vlees | raw | 400 g | al in de app | https://smuldier.nl/product/smuldier-complete-maaltijd-400g-vlees/ |
| Complete maaltijd Hart | raw | 400 g | al in de app | https://smuldier.nl/product/hart-complete-maaltijd-400g/ |
| Complete maaltijd Lam | raw | 400 g | al in de app | https://smuldier.nl/product/smuldier-complete-maaltijd-400g-lam/ |
| Complete maaltijd Kip | raw | 400 g | al in de app | https://smuldier.nl/product/kip-complete-maaltijd-400g/ |
| Complete maaltijd Eend | raw | 400 g | al in de app | https://smuldier.nl/product/smuldier-complete-maaltijd-400g-eend/ |
| Complete maaltijd Pens & Vlees | raw | 400 g | al in de app | https://smuldier.nl/product/smuldier-complete-maaltijd-400g-pens-vlees/ |
| Complete maaltijd Eend & Rund | raw | 400 g | al in de app | https://smuldier.nl/product/smuldier-complete-maaltijd-400g-eend-rund/ |
| Complete maaltijd Pens & Hart | raw | 400 g | al in de app | https://smuldier.nl/product/pens-hart-complete-maaltijd-400g/ |
| Complete maaltijd Rundvlees | raw | 400 g | nieuw | https://smuldier.nl/product/smuldier-complete-maaltijd-400g-rundvlees-2/ |
| Complete maaltijd Lam met Rijst | raw | 4 x 60 g | nieuw | https://smuldier.nl/product/lam-met-rijst-complete-maaltijd-4x60g-2/ |
| Complete maaltijd Kip met Groenten | raw | 4 x 60 g | nieuw | https://smuldier.nl/product/smuldier-complete-maaltijd-4x60g-kip-met-groenten/ |
| Complete maaltijd Rund met Groenten | raw | 4 x 60 g | nieuw | https://smuldier.nl/product/rund-met-groenten-complete-maaltijd-4x60g/ |
| Vers vlees Brokjes Complete maaltijd Rund met Groenten | raw | 300 g | nieuw | https://smuldier.nl/product/vers-vlees-brokjes-rund-met-groenten-300g/ |
| Vers vlees Brokjes Complete maaltijd Lam met Rijst | raw | 300 g | nieuw | https://smuldier.nl/product/vers-vlees-brokjes-lam-met-rijst-300g/ |
| Vers vlees Brokjes Complete maaltijd Kip met Groenten | raw | 300 g | nieuw | https://smuldier.nl/product/vers-vlees-brokjes-kip-met-groenten-300g/ |
| Vers vlees Maaltijd Rund | wet | 300 g / 6 x 300 g | al in de app | https://smuldier.nl/product/smuldier-vers-vlees-maaltijd-300g-rund/ |
| Vers vlees Maaltijd Kip | wet | 300 g / 6 x 300 g | al in de app | https://smuldier.nl/product/smuldier-vers-vlees-maaltijd-300g-kip/ |
| Vers vlees Maaltijd Hart | wet | 300 g / 6 x 300 g | nieuw | https://smuldier.nl/product/smuldier-vers-vlees-maaltijd-300g-hart/ |
| Vers vlees Maaltijd Runderpens | wet | 300 g / 6 x 300 g | nieuw | https://smuldier.nl/product/smuldier-vers-vlees-maaltijd-300g-runderpens/ |

## Gebruikte bronnen

- Startpagina: https://www.smuldier.nl/ → 301 → https://smuldier.nl/
- Robots.txt: https://smuldier.nl/robots.txt (`User-agent: *`, `Disallow:` leeg, sitemap toegestaan)
- Sitemapindex: https://smuldier.nl/sitemap_index.xml
- Productensitemap: https://smuldier.nl/smulproducten-sitemap.xml (25 URL's)
- Paginasitemap: https://smuldier.nl/page-sitemap.xml
- Winkelsitemap: https://smuldier.nl/winkel-sitemap.xml (verkooppunten, geen producten)
- Assortimentspagina: https://smuldier.nl/producten/ (25 productblokken, inclusief merchandise)
- Categoriepagina's:
  - https://smuldier.nl/producten/?_product_soort=compleet-400g (9)
  - https://smuldier.nl/producten/?_product_soort=4x60g-compleet (3)
  - https://smuldier.nl/producten/?_product_soort=vers-vlees-brokjes (3)
  - https://smuldier.nl/producten/?_product_soort=vers-vlees-maaltijd-300g (4)
  - https://smuldier.nl/producten/?_product_soort=door-de-brok (4)
  - https://smuldier.nl/producten/?_product_soort=aanvullend (1)
- WordPress REST API als onafhankelijke telling: https://smuldier.nl/wp-json/wp/v2/smulproducten?per_page=100 (`X-WP-Total: 25`, `X-WP-TotalPages: 1`)
- De 24 voedingsproductpagina's; de exacte URL per product staat in de tabel hierboven en in `bronUrl` in de JSON.
- Officiële Promoshop voor de 6×300 g-verpakkingen:
  - https://shop.smuldier.nl/sitemap.xml
  - https://shop.smuldier.nl/producten/smuldier-6x-vers-vlees-maaltijd-rund
  - https://shop.smuldier.nl/producten/smuldier-6x-vers-vlees-maaltijd-kip
  - https://shop.smuldier.nl/producten/smuldier-6x-vers-vlees-maaltijd-hart
  - https://shop.smuldier.nl/producten/smuldier-6x-vers-vlees-maaltijd-runderpens
- Aanvullende informatiepagina's om te controleren of er aparte lijnen bestaan:
  - https://smuldier.nl/vers-vlees-puppy/
  - https://smuldier.nl/kvv-hond/
  - https://smuldier.nl/hond-natvoer/
  - https://smuldier.nl/vers-vlees-honden/
  - https://smuldier.nl/diepvries-hondenvoer/

## Volledigheid

Het assortiment is als volgt gecontroleerd:

1. **Drie bronnen geven dezelfde set.** De productensitemap bevat 25 product-URL's. De WordPress REST API meldt 25 gepubliceerde `smulproducten` op één pagina. De assortimentspagina `/producten/` bevat 25 productblokken. De slugs en namen zijn identiek; er is geen product dat alleen in de sitemap, alleen in de API of alleen in de catalogus staat.
2. **Categorieën sluiten op elkaar aan.** De zes categoriepagina's bevatten samen 24 voedingsproducten: 9 + 3 + 3 + 4 + 4 + 1. Het 25e product is `Smuldier Merchandise`, dat geen voeding is.
3. **Alle productpagina's geopend.** Alle 24 voedingsproductpagina's en de merchandisepagina gaven HTTP 200. Alle 19 opgenomen producten hebben een zichtbare paragraaf "Samenstelling" met een volledige ingrediëntenlijst. Geen JavaScript-only, afgeschermde of afgekapte lijsten.
4. **Compleet versus aanvullend gecontroleerd.** 19 producten noemen zichzelf "complete maaltijd" of "complete hondenvoeding". De 5 overige voedingsproducten zijn expliciet aanvullend: Door de Brok ("niet alle voedingsstoffen") en Runderpens ("aanvullende maaltijd", "100% runderpens").
5. **Officiële shop gecontroleerd.** De sitemap van `shop.smuldier.nl` bevat geen extra recepten. De enige relevante toevoeging is de 6×300 g-verpakking van de vier wet-recepten. De 16×60 g Door de Brok-pakken vallen buiten de opdracht.
6. **Puppylijn gecontroleerd.** `/vers-vlees-puppy/` noemt geen apart puppyproduct. Puppy's krijgen dezelfde producten als lekkernij; vanaf ongeveer 8 maanden kan volledig op de complete voeding worden overgestapt.
7. **Geen andere voertypes.** De catalogus heeft geen kibble-, snack-, kattenvoer- of supplementencategorie. "Vers vlees Brokjes" zijn rauwe vleesbrokjes, geen droogvoer. De merchandise (11 items) is geen voeding.

Er is geen 403 of 429 ontvangen. Alle verzoeken zijn met een herkenbare user-agent en met ongeveer één verzoek per seconde uitgevoerd.

## Overgeslagen producten

| Product | Aantal | Reden |
|---|---:|---|
| Door de Brok Runderragout 60 g | 1 | Expliciet **aanvullend voer**: "niet alle voedingsstoffen die een hond dagelijks nodig heeft". |
| Door de Brok Lamsragout 60 g | 1 | Idem, aanvullend voer. |
| Door de Brok Eendenragout 60 g | 1 | Idem, aanvullend voer. |
| Door de Brok Kippenragout 60 g | 1 | Idem, aanvullend voer. |
| Aanvullende maaltijd 400 g Runderpens | 1 | Expliciet **aanvullende maaltijd**, 100% runderpens; geen complete voeding. |
| Smuldier Merchandise | 1 record (11 items) | Geen hondenvoeding: poepzakjeshouder, vriezer, tassen, likmat, enz. |

De vier Door de Brok-producten zijn wel officiële producten, maar geen complete maaltijden. Ze staan daarom niet in het JSON-bestand. Dezelfde regel geldt voor de Runderpens.

## Twijfelgevallen

**Geen.** Alle 19 opgenomen producten hebben een volledige, zichtbare ingrediëntenlijst op de opgegeven `bronUrl`. Er zijn geen etiketvelden weggelaten en geen producten met een onzekere samenstelling opgenomen.

De 6×300 g-pagina's in de Promoshop tonen zelf geen samenstelling. Die is overgenomen van de bijbehorende 300 g-pagina van hetzelfde recept; de multipack heeft dezelfde productnaam en formule. Dit is een broncombinatie, geen twijfel over de formule.

## Bestaande app-producten

De tien producten in `data/import/smuldier.json` zijn alle tien opnieuw in de officiële catalogus gevonden:

| Bestaand product | In dit bestand | Opmerking |
|---|---|---|
| Complete maaltijd Vlees | Complete maaltijd Vlees | Zelfde samenstelling. |
| Complete maaltijd Pens & Vlees | Complete maaltijd Pens & Vlees | Zelfde samenstelling. |
| Complete maaltijd Kip | Complete maaltijd Kip | Zelfde samenstelling. |
| Complete maaltijd Lam | Complete maaltijd Lam | Zelfde samenstelling. |
| Complete maaltijd Eend | Complete maaltijd Eend | Zelfde samenstelling. |
| Complete maaltijd Hart | Complete maaltijd Hart | Zelfde samenstelling. |
| Complete maaltijd Pens & Hart | Complete maaltijd Pens & Hart | Zelfde samenstelling. |
| Complete maaltijd Eend & Rund | Complete maaltijd Eend & Rund | Zelfde samenstelling. |
| Vers vlees Maaltijd Rund | Vers vlees Maaltijd Rund | Zelfde samenstelling; verpakking aangevuld met 6×300 g. |
| Vers vlees Maaltijd Kip | Vers vlees Maaltijd Kip | Zelfde samenstelling; verpakking aangevuld met 6×300 g. |

De negen nieuwe varianten zijn:

1. Complete maaltijd Rundvlees (400 g)
2. Complete maaltijd Lam met Rijst (4×60 g)
3. Complete maaltijd Kip met Groenten (4×60 g)
4. Complete maaltijd Rund met Groenten (4×60 g)
5. Vers vlees Brokjes Complete maaltijd Rund met Groenten (300 g)
6. Vers vlees Brokjes Complete maaltijd Lam met Rijst (300 g)
7. Vers vlees Brokjes Complete maaltijd Kip met Groenten (300 g)
8. Vers vlees Maaltijd Hart (300 g / 6×300 g)
9. Vers vlees Maaltijd Runderpens (300 g / 6×300 g)

## Aandachtspunten bij de bron

1. **Witruimte in de samenstelling van Complete maaltijd Vlees.** In de HTML staat tussen "20,5%," en "bevleesde" een non-breaking space plus een gewone spatie. Dat is als één gewone spatie overgenomen; de woorden, percentages en leestekens zijn verder letterlijk.
2. **"rijst10%" is letterlijk overgenomen.** De pagina van Complete maaltijd Rund met Groenten (4×60 g) schrijft "rijst10%" zonder spatie. Dat is een correctheidsfout in de bron, maar de tekst is niet gecorrigeerd.
3. **6×300 g is een officiële multipack.** De vier wet-recepten zijn als "300 g / 6 x 300 g" gebundeld. De enkelvoudige 300 g-verpakking en de 6×-promopack zijn hetzelfde recept. De import kan de bestaande live-maat "300 g" daarom aanvullen.
4. **4×60 g, 300 g brokjes en 400 g zijn aparte recepten.** Ze lijken op elkaar qua naam, maar de samenstellingen verschillen. Ze zijn niet samengevoegd.
5. **Classificatie.** De 400 g, 4×60 g en 300 g brokjes zijn rauw en uit de diepvries (`raw`). De 300 g maaltijden zijn "zacht gestoomd" en daarom `wet`. De "brokjes" zijn geen kibble.
6. **Namen.** De merknaam staat in `merk`; de verpakkingsmaat staat in `verpakking`, niet in `naam`. Bij de brokjes is de officiële lijnnaam "Vers vlees Brokjes Complete maaltijd" behouden.
7. **Taal.** Alle gebruikte pagina's zijn Nederlandstalig. Daarom is `aantekening` overal `null` en zijn `etiketOrigineel` en `etiketNl` gelijk.

## Gaten

- **Geen kibble in het officiële Nederlandse assortiment.** Smuldier voert uitsluitend vers vlees.
- **Geen aparte puppy-, senior-, light- of dieetlijn.** De puppy-pagina verwijst naar dezelfde producten als lekkernij.
- **Geen grotere diepvriesverpakkingen dan 400 g.** De 400 g-lijn heeft op de officiële site alleen 400 g; de 4×60 g-lijn is de enige kleine portieverpakking.
- **Geen GTIN's.** De officiële productpagina's vermelden geen leesbare EAN/GTIN; `gtin` staat daarom overal op `null`.
- **Geen samenstelling op de 6×300 g-promopagina's.** Die is van de enkelvoudige 300 g-pagina gehaald; zie hierboven.
