# Purina Pro Plan — assortimentsrapport

Peildatum: 2026-10-26
Officiële bron: https://www.purina.nl/proplan
Werkbestand: `data/import/uitbreiding/purina.json`

## Uitkomst

| merk | records |
|---|---:|
| Purina Pro Plan | 33 |
| Purina Pro Plan Veterinary Diets | 15 |
| **totaal** | **48** |

| voertype | records |
|---|---:|
| kibble | 43 |
| wet | 5 |
| raw | 0 |
| **totaal** | **48** |

- 48 unieke officiële producten, elk met een eigen productpagina en een letterlijke ingrediëntenlijst.
- 0 records in `twijfel`.
- 0 records met een vertaald etiket; alle gebruikte pagina's zijn Nederlandstalig.
- De live database had 11 Purina-producten. Daarvan stonden er 10 in het bestaande importbestand; één product was eerder handmatig beoordeeld en staat niet in dat bestand.

## Gebruikte bronnen en controle

Gecontroleerd:

- de officiële sitemap `https://www.purina.nl/sitemap.xml`;
- alle 48 hondenvoer-URL's van Pro Plan en Pro Plan Veterinary Diets;
- de categoriepagina's voor Pro Plan, Adult, Puppy, Senior, Expert Care, Optiderma, Optidigest, Optiweight, Protein & Energy en Veterinary Diets;
- per pagina de zichtbare productnaam (`h1`), het voertype uit de data-laag (`dry_food`, `wet_food`, `mousse`), de beschikbare formaten en de samenstelling;
- de samenstelling in de tab “Ingrediënten en Voedingswaarden”, met behoud van de regelindeling.

De sitemap bevat 48 Pro Plan-hondenvoer-URL's. Eén daarvan staat onder een afwijkend pad met `hondennvoer` in plaats van `hondenvoer` (`DRM Dermatosis`); die pagina is bereikbaar en is onder de exacte URL opgenomen. Het Fortiflora-supplement is geen complete voeding en is overgeslagen. De categoriepagina's leveren samen 43 productlinks op (inclusief Fortiflora); alle complete producten daaruit zitten al in de 48.

Er zijn geen niet-veterinaire Pro Plan-natvoerproducten in het Nederlandse assortiment gevonden. De categorie “Natvoer” toont alleen Bonzo, dat al via het merk Bonzo is opgenomen. De vijf natvoerrecepten binnen dit bestand zijn alle vijf Veterinary Diets.

Na het samenstellen van het werkbestand zijn alle 48 records tegen hun `bronUrl` gecontroleerd met `node scripts/controleer-bronnen.mjs --uitbreiding --bestanden=purina.json`. Uitkomst: **48 onveranderd, 0 gewijzigd, 0 onbereikbaar**.

## Volledigheid

| lijn | records | verpakking |
|---|---:|---|
| Pro Plan droogvoer | 33 | 3 / 7 / 10 / 12 / 14 / 18 kg, gebundeld per recept |
| Veterinary Diets droogvoer | 10 | 3 / 11 / 12 kg, gebundeld per recept |
| Veterinary Diets natvoer | 5 | 195 / 400 g |
| **totaal** | **48** | |

De Pro Plan-lijn omvat 24 reguliere producten en 9 Expert Care-producten. De Veterinary Diets-lijn omvat 15 recepten: 10 droog en 5 nat.

## Overgeslagen

- **Fortiflora Supplement Probiotica**: een supplement, geen complete voeding.
- **Bonzo, Beneful, Dentalife, Adventuros en overige Purina-merken**: vallen onder andere merken en zijn hier niet meegenomen. Bonzo is al als zelfstandig merk geïmporteerd.
- **Kattenvoer en snacks**: niet opgenomen.

## Twijfel

Geen. Alle 48 pagina's tonen een volledige, zichtbare samenstelling en ten minste één concreet formaat.

## Bijzonderheden

- **Naamgeving**: de merkprefix `PURINA® PRO PLAN®` is verwijderd, net als de toevoeging `Canine` bij Veterinary Diets en het achtervoegsel `hondenvoer`. Schrijfwijze en hoofdletters zijn gelijkgetrokken (`Rijk aan`, `Light/Sterilised`, `Expert Care`). Bij één product is de marketingtoevoeging `met OPTIDERMA®` uit de naam weggelaten; de rest van de naam is ongewijzigd. De volledige officiële titel staat op de bronpagina.
- **Expert Care**: de fabrikant schrijft soms `EXPERT CARE NUTRITION` en soms `Expert Care Nutrition`. In de namen is dat teruggebracht tot `Expert Care`, passend bij de bestaande live-naam `Expert Care Digestion Care Rijk aan Lam`.
- **HA Hypoallergenic**: de droge en de natte variant hebben op de officiële site dezelfde samenstelling. Het zijn niettemin twee afzonderlijke producten (droogvoer en natvoer) met een eigen verpakking; beide zijn opgenomen.
- **Eén bestaand, menselijk nagekeken product**: live staat `Medium Adult Sensitive Skin Zalm` (14 kg). De fabrikant noemt hetzelfde recept nu `Medium Adult Sensitive Skin Rijk aan Zalm` (3 / 14 kg). Naam, recept en verpakking van de nagekeken rij zijn niet automatisch overschreven. Het nieuwe record wordt bij de SQL-import overgeslagen; een mens kan beslissen of de bestaande rij moet worden hernoemd en uitgebreid met 3 kg.
- **Verpakkingen**: de formaten zijn per recept gebundeld, oplopend gesorteerd en in dezelfde compacte notatie gezet als de rest van de site, bijvoorbeeld `3 / 14 kg` en `1,5 / 5 / 12 kg`.
- **Samenstelling**: de tekst staat met regeleinden in het werkbestand, zoals bij de bestaande Purina-import. De kop `Samenstelling` is weggelaten; de tekst begint direct met de ingrediënten. Woorden, percentages, decimalen en leestekens zijn letterlijk overgenomen.
- **GTIN**: elk recept heeft meerdere SKU's, één per verpakking. Op de productpagina's staat geen één-op-één barcode voor het gebundelde recept. `gtin` is daarom overal `null`.
- **Bestaande producten**: het bestaande importbestand bevatte 11 Purina-records: de 10 live-producten zonder handmatige review plus het nieuwe natvoerproduct `HA Hypoallergenic Natvoer`. De merge voegt 37 records toe en werkt die 11 bestaande records bij. Het elfde live-product is de hierboven genoemde handmatige review.
