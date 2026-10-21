# Butcher's — assortiment complete hondenvoeding

**Opgehaald:** 20 oktober 2026  
**Bron:** https://butchersdogfood.co.uk (officiële fabrikantensite, Verenigd Koninkrijk)  
**Bestand:** `data/import/uitbreiding/butchers.json`

## Samenvatting

| | Aantal |
|---|---:|
| Productrecords (één per recept) | **48** |
| waarvan natvoer (`wet`) | 48 |
| waarvan brokken (`kibble`) | 0 |
| waarvan rauwvoer (`raw`) | 0 |
| Officiële webshop-SKU's herleid tot deze recepten | 52 |
| Gebruikte productpagina's met samenstelling | 20 |
| Records met `twijfel` | 0 |
| Overgeslagen complete producten | 0 |

Butcher's verkoopt op de officiële Britse site uitsluitend natvoer. Er zijn daar geen
brokken-, rauwvoer-, snack- of supplementproducten voor honden opgenomen. Kattenvoer
is niet meegenomen.

## Werkwijze

1. `https://butchersdogfood.co.uk/sitemap_index.xml` en
   `https://butchersdogfood.co.uk/product-sitemap.xml` gelezen. De product-sitemap
   bevat 52 product-URL's.
2. Ter controle de WooCommerce Store API gebruikt:
   `https://butchersdogfood.co.uk/wp-json/wc/store/products?per_page=100`.
   Die geeft dezelfde 52 producten, met naam, slug, categorieën en permalink.
3. Alle 52 productpagina's opgehaald (één verzoek per seconde, herkenbare
   user-agent). Per pagina het blok `Composition` letterlijk overgenomen.
4. De 52 SKU's zijn bij elkaar gezet tot 48 recepten. Verpakkingsvarianten van
   hetzelfde recept staan in `verpakking`; verschillende recepten krijgen een
   eigen record.
5. De samenstellingen zijn naar het Nederlands vertaald. Elk record heeft de
   verplichte aantekening:
   *"Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product."*

## Aantal records per range

| Range | Records | Voertype |
|---|---:|---|
| Loaf Recipes | 3 | wet |
| Tripe / Tripe Loaf Recipes | 3 | wet |
| Recipes in Gravy | 3 | wet |
| Recipes in Jelly (incl. pens uit het variatiepak) | 4 | wet |
| Puppy Perfect (blik 400 g en tray 150 g) | 6 | wet |
| Healthy Heart (blik 390 g en tray 150 g) | 3 | wet |
| Joints & Coat (blik 390 g en tray 150 g) | 3 | wet |
| Lean & Tasty (blik 390 g en tray 150 g) | 6 | wet |
| Simply Gentle (blik 390 g en tray 150 g) | 6 | wet |
| Succulent Recipes | 3 | wet |
| Traditional Recipes (4-pack en 12/24-pack) | 6 | wet |
| Recovery & Revive (blik en tray) | 2 | wet |
| **Totaal** | **48** | **wet** |

## Belangrijke keuzes

- **Blik en tray zijn aparte recepten waar de samenstelling verschilt.** Bij
  Puppy Perfect, Lean & Tasty, Simply Gentle en Recovery & Revive verschilt de
  samenstelling tussen de 390/400 g blikken en de 150 g trays. Daarom staan die
  als aparte records met "(blik)" of "(tray)" in de naam. Ze zijn niet
  samengevoegd, omdat dat een verkeerde samenstelling zou opleveren.
- **Variatiepakken leveren geen extra records op als het recept al bestaat.**
  De recipes uit `Variety Recipes Loaf 24 pack – 150g` en
  `Variety Recipes in Jelly 24 Pack – 400g` zijn ondegebracht bij de bestaande
  recepten. Alleen "Recipes in Jelly met pens" is nieuw: dat recept zit uitsluitend
  in het 24-pack in gelei.
- **Alleen in variatiepakken verkrijgbaar.** Van de Tripe Loaf Recipes is
  "Rund & pens" niet als los blik te koop; dat record vermeldt daarom alleen de
  variatiepakken. Hetzelfde geldt voor "Recipes in Jelly met pens".
- **Verpakkingsmaten zijn gebundeld.** Bijvoorbeeld
  `6 x 400 g / 12 x 400 g / 18 x 400 g (variatiepakken)`. Waar een pak alleen
  een deel van de blikken met dat recept bevat, staat dat als variatiepak
  benoemd. De exacte verdeling per pak staat in de bronpagina en is niet in de
  recordnaam opgenomen.

## Gebruikte bronpagina's

De samenstelling is letterlijk van deze pagina's overgenomen:

1. https://butchersdogfood.co.uk/product/loaf-recipes-6-pack-400g/
2. https://butchersdogfood.co.uk/product/tripe-400g/
3. https://butchersdogfood.co.uk/product/chicken-tripe-loaf-400g/
4. https://butchersdogfood.co.uk/product/tripe-loaf-recipes-6-pack-400g/
5. https://butchersdogfood.co.uk/product/recipes-in-gravy-6-pack-400g/
6. https://butchersdogfood.co.uk/product/recipes-in-jelly-6-pack-400g/
7. https://butchersdogfood.co.uk/product/variety-recipes-in-jelly-24-pack-400g/
8. https://butchersdogfood.co.uk/product/puppy-perfect-6-pack-400g/
9. https://butchersdogfood.co.uk/product/puppy-perfect-4-pack-150g/
10. https://butchersdogfood.co.uk/product/healthy-heart-6-pack-can-390g-new/
11. https://butchersdogfood.co.uk/product/joints-coat-6-pack-390g-2/
12. https://butchersdogfood.co.uk/product/lean-tasty-6-pack-390g-2/
13. https://butchersdogfood.co.uk/product/lean-tasty-12-pack-150g-2/
14. https://butchersdogfood.co.uk/product/simply-gentle-6-pack-390g-2/
15. https://butchersdogfood.co.uk/product/simply-gentle-12-pack-150g-2/
16. https://butchersdogfood.co.uk/product/succulent-recipes-4-pack-150g/
17. https://butchersdogfood.co.uk/product/traditional-recipes-4-pack-150g/
18. https://butchersdogfood.co.uk/product/traditional-recipes-12-pack-150g/
19. https://butchersdogfood.co.uk/product/recovery-revive-single-can-400g/
20. https://butchersdogfood.co.uk/product/recovery-revive-4-pack-150g/

Daarnaast zijn de overige packpagina's uit de product-sitemap bekeken om te
controleren of de samenstelling per verpakkingsvorm gelijk bleef. Dat was niet
altijd zo; daarom zijn blik- en trayrecepten gescheiden waar nodig.

## Volledigheid

De officiële product-sitemap en de Store API geven beide **52 producten**. Alle 52
zijn herleid tot een record of tot een verpakkingsvariant van een record:

- 1 Loaf Recipes-pack
- 8 Tripe / Tripe Loaf-producten
- 3 Recipes in Gravy-packs
- 5 Recipes in Jelly-packs (inclusief het 24-pack in gelei)
- 5 Puppy Perfect-packs
- 5 Healthy Heart-packs
- 5 Joints & Coat-packs
- 5 Lean & Tasty-packs
- 5 Simply Gentle-packs
- 3 Succulent Recipes-packs
- 3 Traditional Recipes-packs
- 1 Variety Recipes Loaf-pack
- 3 Recovery & Revive-packs

Hiermee is het assortiment **aantoonbaar volledig voor de officiële Britse
webshop** op het moment van ophalen. De categorieën op de site bevatten geen
droogvoer of rauwvoer; "Our Foods For Dogs" noemt alleen natvoer en de
health-ranges.

## Overgeslagen producten

Er zijn geen complete hondenvoedingsproducten overgeslagen. Niet opgenomen zijn:

- **Snacks, kattenvoer en supplementen.** Die vallen buiten de opdracht. Butcher's
  heeft op de Britse site geen snacks voor honden; kattenvoer (Delicious Dinners)
  staat op Nederlandse verkoopsites maar niet in dit bestand.
- **Losse verpakkings-SKU's als zelfstandig record.** Een 6-pack, 12-pack en
  18-pack van hetzelfde recept zijn één record met gebundelde verpakkingsmaten.
- **Nederlandse "Butcher's Original"-varianten van zooplus.nl / bitiba.nl.** Deze
  zijn wel bekeken, maar niet toegevoegd. De Nederlandse samenstellingen wijken
  af van de Britse recepten (bijvoorbeeld rund in saus: kip 45,5%, rund 4,5%,
  pastinaak, erwten, peterselie, rozenbottel, cichorei, munt; Brits recept:
  kip 42%, rund 4%, lever 4%, pastinaak, erwten, plantaardige vezels, MOS).
  Bovendien toonde de zooplus-pagina slechts 3 van de 6 samenstellingen. Om geen
  verkeerde lijsten in te voeren zijn deze varianten als gat gemarkeerd in plaats
  van toegevoegd.

## Gedeelde samenstellingsvoetnoten

Bij **Healthy Heart**, **Joints & Coat** en **Simply Gentle** staan meerdere
smaken in één composition-blok. De definitie van de blend staat op de pagina
maar één keer, achter de laatste smaak. Per record is die definitiesregel aan de
betreffende smaak toegevoegd, zodat elk product een volledige samenstelling
heeft. Daardoor is de tekst per record niet één aaneengesloten citaat, maar alle
onderdelen staan letterlijk op dezelfde bronpagina. De broncontrole meldt deze
negen records daarom als "gewijzigd"; bij controle blijkt het te gaan om deze
gedeelde voetnoot, niet om ontbrekende of verzonnen gegevens.

## Twijfel en aandachtspunten

- **Geen enkel record staat in `twijfel`.** Alle gebruikte pagina's hadden een
  leesbaar `Composition`-blok.
- **Bronpagina `Traditional Recipes 24 pack – 150g` is intern inconsistent.** De
  inhoudsopgave zegt "8 x with Lamb & Veg | 8 x with Turkey & Veg | 8 x with Beef &
  Veg", terwijl het samenstellingsblok "With Lamb & Peas" en "With Turkey &
  Carrots" noemt. De samenstellingen komen overeen met het 12-pack. In het bestand
  is de samenstelling gevolgd; een mens kan de verpakkingsomschrijving op de bron
  controleren.
- **Dubbele HTML-codering.** Op de Healthy Heart-pagina staat bij de forelregel
  `&amp;amp;` in de HTML. Dat is als `&` overgenomen, zoals de bedoelde leesbare
  tekst. Verder zijn geen etiketten aangepast.
- **Gat: Nederlandse retailvarianten.** Zoals hierboven beschreven, verkoopt
  zooplus.nl/Bitiba.nl de lijn "Butcher's Original" in losse 400 g blikken met
  andere recepturen dan de Britse site. Als de app de Nederlandse schappen wil
  dekken, moet een mens deze lijn apart beoordelen en de volledige samenstellingen
  bij de fabrikant of op de verpakking opvragen. Deze zijn nu bewust niet
  opgenomen.
