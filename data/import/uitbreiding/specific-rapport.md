# Specific — assortimentsrapport

Peildatum: 2026-10-26
Officiële bron: https://www.specific-diets.nl (specific.nl verwijst hierheen)
Werkbestand: `data/import/uitbreiding/specific.json`

## Uitkomst

| voertype | records |
|---|---:|
| kibble | 23 |
| wet | 14 |
| raw | 0 |
| **totaal** | **37** |

- 37 unieke officiële producten, elk met een eigen productpagina en een zichtbare ingrediëntenlijst.
- 0 records in `twijfel`.
- 1 record met een vertaling: **CIW Digestive Support**. De Nederlandse pagina toont in de tab “Ingrediënten” een Franse samenstelling; die is naar het Nederlands vertaald met de verplichte `aantekening`.
- Het bestaande importbestand bevatte 6 Specific-records. Alle 6 zijn opnieuw opgenomen; 31 varianten zijn nieuw.

| lijn | records | kibble | wet | bestaand | nieuw |
|---|---:|---:|---:|---:|---:|
| SPECIFIC voedingen bij gezondheidsproblemen | 22 | 13 | 9 | 5 | 17 |
| SPECIFIC voedingen voor gezonde honden | 15 | 10 | 5 | 1 | 14 |
| **totaal** | **37** | **23** | **14** | **6** | **31** |

## Gebruikte bronnen en controle

Gecontroleerd:

- de officiële sitemap `https://www.specific-diets.nl/sitemap.xml` (251 URL's in totaal);
- de categoriepagina `https://www.specific-diets.nl/hond/specific-voedingen-bij-gezondheidsproblemen`;
- de categoriepagina `https://www.specific-diets.nl/hond/specific-voedingen-voor-gezonde-honden`;
- alle 46 hondenproductpagina's onder deze twee categorieën, met een normale browser User-Agent en ongeveer 1,2 seconde tussen de verzoeken;
- per pagina: de paginatitel, de artikelcode, het verpakkingsformaat en de volledige tekst van de tab “Ingrediënten”.

De sitemap en beide categoriepagina's leveren exact dezelfde 46 hondenproductpagina's op. Daarvan zijn 9 pagina's geen complete hondenvoeding (8 snacks en 1 lunch); er blijven 37 complete voedingen over. Alle 37 bronpagina's gaven HTTP 200 en hadden precies één tab “Ingrediënten” en ten minste één concreet verpakkingsformaat. `robots.txt` staat de productpagina's toe; alleen `/Files/Papirkurv/` en URL's met `?cartcmd=` zijn uitgesloten.

Na het samenstellen is elke `bronUrl` opnieuw opgehaald. De paginatitel en de ingrediëntenlijst kwamen bij alle 37 records overeen met de bron. Ook de verpakkingsmaten kwamen na normalisatie van regeleinden en spaties overeen, met één bewuste correctie: de pagina van CRD-2 vermeldt “3 x 1,6 lg”; dat is als “3 x 1,6 kg” overgenomen.

`node scripts/controleer-uitbreiding.mjs` meldt voor `specific.json`: **37 records — 23 kibble, 14 wet, 0 raw, 0 twijfel**, zonder fouten voor dit bestand. Het script meldt drie verwachte waarschuwingen omdat maatvarianten dezelfde etikettekst hebben (CPD-S/CPD-M, CXD-S/CXD-M en CGD-S/CGD-M). De enige fout in de uitvoer komt uit `trovet.json` en staat los van dit werkbestand.

Het script heeft geen `--bestanden`-optie; daarom is de volledige werkmap gecontroleerd en is `specific.json` daarnaast apart nagerekend op verplichte velden, geldige voertypes, dubbele namen, dubbele URL's en de koppeling tussen `etiketOrigineel`, `etiketNl` en `aantekening`.

## Volledigheid

De officiële sitemap bevat 46 hondenproductpagina's; beide assortimentspagina's bevatten samen precies dezelfde 46 productlinks. Na aftrek van de 8 snacks (`ct-*`) en de lunchpagina blijven 37 complete hondenvoedingen over. Alle 37 zijn opgenomen.

Daarmee is het officiële Nederlandse assortiment complete hondenvoeding van Specific op de peildatum **aantoonbaar volledig** binnen de grenzen van de officiële sitemap en de twee assortimentspagina's. Er zijn geen aanvullende productpagina's gevonden buiten deze twee bronnen. Rauwvoer komt in het assortiment niet voor.

## Overgeslagen

| product | pagina | reden |
|---|---|---|
| Lunch | `/hond/specific-voedingen-voor-gezonde-honden/lunch` | De pagina noemt dit zelf een “aanvullende maaltijd of tussendoortje”; geen complete voeding. Bovendien sluit de opdracht “lunch” uit. |
| CT-BIO Organic Treats | `/hond/specific-voedingen-voor-gezonde-honden/ct-bio-organic-treats` | Snack/traktatie. |
| CT-DC-L Dental Chew Large | `/hond/specific-voedingen-voor-gezonde-honden/ct-dc-l-dental-chew-large` | Kauwstaaf/traktatie. |
| CT-DC-S Dental Chew Small | `/hond/specific-voedingen-voor-gezonde-honden/ct-dc-s-dental-chew-small` | Kauwstaaf/traktatie. |
| CT-H Healthy Treats | `/hond/specific-voedingen-voor-gezonde-honden/ct-h-healthy-treats` | Snack/traktatie. |
| CT-HM Healthy Treats Mini | `/hond/specific-voedingen-voor-gezonde-honden/ct-hm-healthy-treats-mini` | Snack/traktatie. |
| CT-HY Hypoallergenic Treats | `/hond/specific-voedingen-voor-gezonde-honden/ct-hy-hypoallergenic-treats` | Snack/traktatie. |
| CT-IS Intestinal Support Sausage | `/hond/specific-voedingen-voor-gezonde-honden/ct-is-intestinal-support-sausage` | Traktatie/supplement, geen complete maaltijd. |
| CT-SC Special Care Treats | `/hond/specific-voedingen-voor-gezonde-honden/ct-sc-special-care-treats` | Snack/traktatie. |

Kattenvoer, supplementen en verzorgingsproducten zijn niet in de selectie meegenomen.

## Twijfel

Geen enkel record heeft een gevulde `twijfel`. Wel zijn er aandachtspunten die een mens kan controleren:

- **CIW Digestive Support**: de Nederlandse productpagina bevat in de tab “Ingrediënten” een Franse samenstelling. Die is letterlijk als `etiketOrigineel` opgenomen en naar het Nederlands vertaald als `etiketNl`, met de verplichte aantekening. De vertaling volgt dezelfde volgorde en percentages.
- **C-BIO-W with beef / with fish**: de pagina noemt het product “een alternatief voor of aanvulling op droog hondenvoer”. De officiële productgids van Dechra bevestigt dat het om een complete, gebalanceerde natvoeding gaat; de voedertabel op de pagina is daar ook mee in overeenstemming. Daarom zijn beide als complete `wet`-voeding opgenomen.
- **F/C-IN-L en F/C-IN-W Intensive Support**: deze herstelvoedingen zijn bestemd voor honden én katten. Ze staan onder de hondenafdeling en zijn veterinaire dieetvoeding; daarom zijn ze als `wet` opgenomen. F/C-IN-L is een vloeibaar dieet, F/C-IN-W is natvoer.
- **CRD-2 Weight Control**: de bron vermeldt “3 x 1,6 lg”. Dat is een kennelijke typefout voor “3 x 1,6 kg”; gecorrigeerd in `verpakking`.
- **Letterlijke typefouten in de samenstelling**: de bron bevat enkele schrijfwijzen die bewust niet zijn gerepareerd, waaronder “varke nsvet” (CGD-XL), “bietenpulp,varkensvet” en “vanβß” (CED-DM), “kleuren smaakstoffen” (CXD-XL), “fructooligosachariden)” (CIW-LF), “C).Bevat” (CKD-HY) en ontbrekende komma's in de AuraGuard-vermelding (CKD, CKW, CKW-HY).

## Bijzonderheden

- **Bestaande producten**: de 6 bestaande records zijn CDD Food Allergen Management, CDW Food Allergen Management, CDD-HY Food Allergen Management, CID Digestive Support, COD-HY Allergen Management Plus en CXD-M Adult Medium breed. Namen, bron-URL's en verpakkingsmaten zijn ongewijzigd. De etiketten zijn opnieuw uit de bron gehaald; daardoor bevatten vijf bestaande records nu ook de claim “Bevat geen toegevoegde kunstmatige kleur- en smaakstoffen.” en is bij CXD-M de kop “Samenstelling:” vervallen.
- **Nieuwe varianten**: 17 in de dieetlijn (CCD, CED-DM, CIW, CID-LF, CIW-LF, CJD, CKD, CKW, CKD-HY, CKW-HY, COD, COW-HY, CRD-1, CRW-1, CRD-2, F/C-IN-W, F/C-IN-L) en 14 in de gezonde lijn (CPD-S, CPD-M, CPD-XL, CPW, CXD-S, CXD-XL, CXW, CGD-S, CGD-M, CGD-XL, CGW, CAD, C-BIO-W with beef, C-BIO-W with fish).
- **Verpakkingen**: de maten zijn per recept gebundeld en in dezelfde kommagescheiden notatie gezet als het bestaande Specific-importbestand, bijvoorbeeld `2 kg, 3 x 2 kg, 7 kg, 12 kg`. Multipacks zoals `3 x 2 kg` en `3 x 4 kg` zijn behouden. Eenheid en spatie zijn genormaliseerd (`100g` → `100 g`); de enige inhoudelijke correctie is de hierboven genoemde `1,6 lg` → `1,6 kg`.
- **Samenstelling**: de volledige tekst van de tab “Ingrediënten” is overgenomen, inclusief een eventuele aparte toelichtende regel of claim. De kop `Samenstelling :` is verwijderd; woorden, percentages, decimalen en leestekens zijn verder letterlijk overgenomen. Alleen dubbele spaties en regeleinden uit de HTML zijn genormaliseerd.
- **Naamgeving**: de paginatitels zijn letterlijk gebruikt. Daardoor staat bij sommige producten een kleine letter in de titel (`support`, `breed`, `all breeds`) en hebben de twee biologische producten de Engelse titel `C-BIO-W with beef` / `C-BIO-W with fish`, zoals op de Nederlandse pagina.
- **GTIN**: op geen van de productpagina's staat een barcode of EAN. `gtin` is daarom overal `null`.
- **Gelijke etiketten bij maatvarianten**: CPD-S/CPD-M, CXD-S/CXD-M en CGD-S/CGD-M hebben dezelfde ingrediëntenlijst. Het zijn afzonderlijke producten met een eigen ras-/maatdoelgroep, verpakking en korrel; ze zijn niet samengevoegd.
- **Droog en nat**: waar Specific zowel een droge als een natte variant heeft, staan die op aparte productpagina's met een eigen productcode en naam (bijvoorbeeld CID/CIW en CKD/CKW). Geen enkele pagina biedt beide voertypes onder dezelfde productnaam aan.
- **Geen rauwvoer**: Specific heeft in het Nederlandse assortiment geen raw-producten voor honden.

## Bestanden

- JSON: `data/import/uitbreiding/specific.json`
- Rapport: `data/import/uitbreiding/specific-rapport.md`
- Validatie: `node scripts/controleer-uitbreiding.mjs` (bestand `specific.json`: 37 records, 23 kibble, 14 wet, 0 raw, 0 twijfel; geen fouten voor dit bestand).
