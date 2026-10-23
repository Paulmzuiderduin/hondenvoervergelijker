# Eukanuba — assortimentsrapport

Peildatum: 2026-10-22
Officiële bron: https://www.eukanuba.nl/ (redirect naar https://www.eukanuba.eu/nl-nl)
Werkbestand: `data/import/uitbreiding/eukanuba.json`

## Uitkomst

| voertype | records |
|---|---:|
| kibble | 56 |
| wet | 18 |
| raw | 0 |
| **totaal** | **74** |

- 74 unieke recepten/producten, elk met een eigen productpagina en een letterlijke ingrediëntenlijst.
- 0 records in `twijfel`.
- 1 record met een vertaald etiket (Engels → Nederlands).
- 9 bestaande importproducten zijn ongewijzigd teruggevonden; 65 productnamen in dit bestand stonden nog niet in `data/import/eukanuba.json`.

## Gebruikte bronnen en controle

Gecontroleerd:

- `https://www.eukanuba.nl/` en de doorgestuurde NL-site `https://www.eukanuba.eu/nl-nl`;
- de sitemap op `/nl-nl/sitemap` en de XML-sitemapindex `/sitemap.xml` met de sub-sitemap `?sitemap=pages`;
- de overzichten `/nl-nl/hond/droogvoer` en `/nl-nl/hond/nat-hondenvoer`;
- de subcategorieën Droogvoer: Life Care, Grain Free, Breed Care, Special Care;
- de subcategorieën Natvoer: Life Care, Special Care;
- de speciaalvoerpagina's Gewichtsbeheersing, Vertering, Gewrichten, Huid en Diergeneeskundige voeding;
- de puppy-landingspagina en de informatiepagina Voeding voor honden;
- alle 74 productpagina's (56 droog, 18 nat), alle met HTTP 200 en een zichtbare paragraaf onder "Ingrediënten".

Dat zijn 74 unieke product-URL's en 22 ondersteunende aanvragen (homepage, robots.txt, sitemap, overzichten, categorieën en informatiepagina's). De sitemap bevat alleen categorie-URL's, geen product-URL's; de producten zijn daarom via de twee hoofdoverzichten en de subcategorieën verzameld. Er is geen paginering of "Meer laden" op de overzichten aangetroffen.

## Volledigheid

Het complete NL-assortiment is als volgt opgebouwd:

| lijn | aantal |
|---|---:|
| Droogvoer — Life Care | 18 |
| Droogvoer — Grain Free | 11 |
| Droogvoer — Breed Care | 12 |
| Droogvoer — Special Care | 11 |
| Droogvoer — Veterinary Diets | 4 |
| Natvoer — Life Care | 12 |
| Natvoer — Special Care | 6 |
| **totaal** | **74** |

De subcategoriepagina's zijn met het hoofdoverzicht vergeleken: elke productlink uit een subcategorie kwam ook in het hoofdoverzicht voor, en omgekeerd. De vier speciale-voedingpagina's (gewichtsbeheersing, vertering, gewrichten, huid) verwijzen naar dezelfde producten onder een andere categorie-URL. Er zijn dus geen extra recepten buiten deze 74 gevonden.

Alle 74 productpagina's hadden de samenstelling direct in de HTML (geen JavaScript-tab, geen afgeschermde tekst). Alleen bij "Grain Free Senior kleine/middelgrote rassen, zeevis" is de etikettekst Engels; die is vertaald (zie hieronder). Daarom staat er geen enkel record in `twijfel`.

## Overgeslagen

- **Kattenvoer**: de site heeft een aparte kattenlijn (droog, nat en special diets). Die valt buiten de opdracht en is niet geïnventariseerd.
- **Hondensnacks, kauwproducten, melk, supplementen en verzorging**: daarvoor is in de hondennavigatie, de overzichten en de sitemap geen categorie of product gevonden. Er is dus niets uit die groepen overgeslagen.
- **`/nl-nl/hond/alle-hondenvoer`**: geeft HTTP 404. De twee hoofdoverzichten (droog en nat) dekken het assortiment; deze route is niet nodig.
- **`Active Adult Medium Breed kip`**: dit is volgens `supabase/seed_products.sql` het tiende live-product, maar het staat niet in het huidige officiële NL-assortiment. De ingrediëntenlijst in de seed is identiek aan die van het huidige recept "Volwassen Middelgrote rassen Verse kip" (alleen andere naam en decimalen). Daarom is er geen apart record voor gemaakt; dat zou een dubbel recept opleveren. Zie ook "Nieuwe varianten".

## Twijfel

Geen. Alle 74 pagina's hadden een volledige, zichtbare samenstelling. Wel zijn er twee taalkundige aandachtspunten:

1. **Grain Free Senior kleine/middelgrote rassen, zeevis** heeft een Engelse ingrediëntenlijst op de Nederlandse pagina. De letterlijke Engelse tekst staat in `etiketOrigineel`; `etiketNl` is een zorgvuldige vertaling met dezelfde percentages en volgorde. `aantekening`: "Vertaald uit het Engels; bron: https://www.eukanuba.eu/nl-nl/hond/droogvoer/grain-free-senior-kleinemiddelgrote-rassen-zeevis".
2. **Senior Grote rassen Verse kip** bevat in de verder Nederlandse lijst de bronfragmenten "a natural prebiotic". Dat is letterlijk overgenomen; er is geen vertaling van de hele lijst nodig en dus geen `aantekening`.

## Nieuwe varianten t.o.v. de bestaande app

- In `data/import/eukanuba.json` staan 9 producten. Alle 9 komen in dit bestand voor, met dezelfde ingrediëntenlijst en verpakking. Het gaat om de vier Veterinary Diets, Puppy Middelgrote rassen, Senior Middelgrote rassen, Volwassen Grote rassen, Adult kleine/middelgrote rassen zalm & gerst en Adult rijk aan rund met pompoen.
- Daarmee zijn **65 productnamen** in dit bestand nieuw ten opzichte van dat importbestand.
- `voortgang.md` noemt 10 live-producten. Het tiende live-product is de hierboven genoemde oude naam `Active Adult Medium Breed kip`, die dezelfde formule heeft als het huidige "Volwassen Middelgrote rassen Verse kip". Als die oude naam als hetzelfde recept wordt geteld, zijn er **64 nieuwe recepten** ten opzichte van de 10 live-producten. Een exacte live-vergelijking vereist de database; hier is vergeleken met het importbestand, de seed en de voortgangsstand.

## Aandachtspunten

- **Redirect**: `eukanuba.nl` stuurt door naar `eukanuba.eu/nl-nl`. Alle `bronUrl`-waarden verwijzen daarom naar de officiële EU/NL-pagina's op `eukanuba.eu`.
- **robots.txt**: `https://www.eukanuba.nl/robots.txt` geeft HTTP 404 (geen richtlijnen). Er zijn geen 403- of 429-responses opgetreden; alle productpagina's gaven HTTP 200.
- **Asterisken**: "Grain Free*" en "Mono-Protein*" gebruiken de asterisk als voetnootmarkering. De asterisken zijn uit `naam` weggelaten; de rest van de naam is letterlijk van de pagina overgenomen.
- **Breed Care**: de 12 Breed Care-producten hebben op de site dezelfde ingrediëntenlijst. Het zijn niettemin aparte producten voor verschillende rassen (andere brok/verpakking), dus ze staan als 12 records in het bestand. Ontdubbeling op merk, naam en verpakking laat ze terecht apart.
- **GTIN**: de barcodes staan alleen in de JavaScript van de maatkeuze (`select(0, 8710255…, 12)`) en niet als zichtbare etikettekst. Omdat één recept meerdere maten/barcodes heeft, is `gtin` overal `null` gelaten.
- **Verpakkingen**: alle maten zijn enkelvoudige verpakkingen; er zijn geen multipacks of samengestelde verpakkingen aangetroffen. De maten zijn gebundeld zoals op de maatkeuze van de pagina, bijvoorbeeld "800 g / 3 / 12 / 15 kg".
- **Witruimte**: vaste spaties en dubbele spaties uit de HTML zijn genormaliseerd naar één gewone spatie. Woorden, percentages, decimalen, leestekens en schrijffouten zijn verder letterlijk overgenomen, inclusief "5%),gedroogde", "wortels, (1%)" en "0.35% )".
- **Afwijkende namen**: de site schrijft onder meer "Jackrusselterriër", "Cocker Spaniël", "Volwassen Kleine rassen" en "Adult kleine/middelgrote rassen, zalm en gerst". Die schrijfwijze is gevolgd.
- **Veterinary Diets**: de huidige productpagina's staan onder `/hond/droogvoer/veterinary-diets-…`; de oude import gebruikte `/hond/speciaalvoer/diergeneeskundige-voeding/…`. De nieuwe canonieke URL's zijn gebruikt.
