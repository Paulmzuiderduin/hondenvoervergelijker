# Acana — uitbreiding assortiment

Opgehaald: 21 oktober 2026  
Bron: https://www.acana.com/nl-NL/ (301 naar https://emea.acana.com/nl-NL/homepage)  
Werkbestand: `data/import/uitbreiding/acana.json`

## Uitkomst

- **22 recepten** opgenomen, één record per recept/smaak/formule.
- Verdeling: **22 kibble**, **0 wet**, **0 raw**.
- **4 recepten stonden al in de app**: Puppy Recipe, Adult Small Breed Recipe, Light & Fit Recipe en Grasslands.
- **18 nieuwe varianten** ten opzichte van de bestaande app.
- **0 producten in twijfel**: van alle 22 producten staat de volledige samenstelling als zichtbare tekst op de Nederlandstalige productpagina.
- **0 complete hondenvoedingsproducten overgeslagen**. De Nederlandse Acana-catalogus voor honden bestaat uitsluitend uit droogvoer; er zijn geen natvoer- of rauwvoerproducten voor honden in de Nederlandse/EMEA-catalogus.
- **0 GTIN's**: op de productpagina's staat geen barcode of EAN.

### Alle opgenomen recepten

| Product | Voertype | Verpakking | Status |
|---|---|---|---|
| Adult Dog Recipe | kibble | 2 / 6 / 11,4 / 17 kg | nieuw |
| Adult Large Breed Recipe | kibble | 11,4 / 17 kg | nieuw |
| Adult Small Breed Recipe | kibble | 2 / 6 kg | al in de app |
| Red Meat | kibble | 2 / 9,7 / 14,5 kg | nieuw |
| Coldwater Fish Recipe | kibble | 2 / 6 / 11,4 kg | nieuw |
| Grasslands | kibble | 2 / 6 / 11,4 kg | al in de app |
| Light & Fit Recipe | kibble | 2 / 6 / 11,4 kg | al in de app |
| Pacifica | kibble | 2 / 6 / 11,4 kg | nieuw |
| Prairie Poultry | kibble | 2 / 9,7 / 14,5 kg | nieuw |
| Puppy Recipe | kibble | 2 / 6 / 11,4 / 17 kg | al in de app |
| Puppy Large Breed | kibble | 11,4 / 17 kg | nieuw |
| Puppy Small Breed Recipe | kibble | 2 / 6 kg | nieuw |
| Ranchlands | kibble | 2 / 6 / 11,4 kg | nieuw |
| Red Meat Recipe | kibble | — | nieuw |
| Senior Recipe | kibble | 2 / 6 / 11,4 kg | nieuw |
| Singles Beef With Pumpkin Recipe | kibble | — | nieuw |
| Free-Run Duck | kibble | 2 / 6 / 11,4 kg | nieuw |
| Grass-fed Lamb | kibble | 2 / 6 / 11,4 / 17 kg | nieuw |
| Yorkshire Pork | kibble | 2 / 6 / 11,4 kg | nieuw |
| Sport & Agility Recipe | kibble | 11,4 / 17 kg | nieuw |
| Wild Prairie | kibble | 2 / 6 / 11,4 kg | nieuw |
| Wild Coast | kibble | 2 / 9,7 / 14,5 kg | nieuw |

## Gebruikte bronnen

- Startpagina: https://www.acana.com/nl-NL/ → 301 → https://emea.acana.com/nl-NL/homepage
- Robots.txt: https://emea.acana.com/robots.txt (Allow: /, sitemap toegestaan)
- Sitemapindex: https://emea.acana.com/en/sitemap_index.xml
- Sitemap: https://emea.acana.com/en/sitemap_0.xml (lastmod 2026-10-21)
- Productoverzicht honden, pagina 1: https://emea.acana.com/nl-NL/voor-honden (12 producten)
- Productoverzicht honden, pagina 2: https://emea.acana.com/nl-NL/voor-honden?start=12&sz=12 (10 producten)
- Productoverzicht honden, pagina 3: https://emea.acana.com/nl-NL/voor-honden?start=24&sz=12 (0 producten)
- Alle 22 Nederlandstalige productpagina's onder `https://emea.acana.com/nl-NL/voor-honden/eu-aca-*.html`; de exacte URL per product staat in `bronUrl` in de JSON.
- Voor de verpakkingsmaten zijn de Engelstalige EMEA-pagina's van dezelfde SKU's gebruikt: `https://emea.acana.com/en/dogs/dog-food/eu-aca-*.html`. De Nederlandse productpagina's tonen namelijk een leeg veld "Beschikbare verpakkingsgroottes"; de Engelse pagina van dezelfde SKU toont de maten wel.

## Volledigheid

Het assortiment is als volgt gecontroleerd:

1. **Sitemap versus catalogus.** De sitemap bevat 22 unieke Nederlandstalige product-URL's voor honden (`/nl-NL/voor-honden/eu-aca-*.html`).
2. **Catalogus volledig doorlopen.** Het productoverzicht `/nl-NL/voor-honden` toont 12 producten op pagina 1 en 10 producten op pagina 2. Pagina 3 (`start=24`) is leeg. De vereniging van beide pagina's is exact dezelfde set van 22 URL's als in de sitemap; er is geen product dat alleen in de sitemap of alleen in de catalogus staat.
3. **Geen andere voertypes.** Het catalogusfilter "Soort voeding" biedt voor honden alleen "Droogvoer" aan. Er is geen natvoer- of rauwvoercategorie voor honden. De 15 kattenproducten in de sitemap (9 droogvoer, 6 premium pâté) vallen buiten de opdracht.
4. **Alle productpagina's geopend.** Alle 22 Nederlandstalige productpagina's gaven HTTP 200 en bevatten een zichtbare paragraaf "Ingrediënten" met de volledige samenstelling. Geen van de pagina's was JavaScript-only, afgeschermd of afgekapt.
5. **Bestaande app vergeleken.** De vier producten in `data/import/acana.json` (Puppy Recipe, Adult Small Breed Recipe, Light & Fit Recipe, Grasslands) zitten alle vier in de 22. Daarmee zijn 18 recepten nieuw voor de app.

Er is geen 403 of 429 ontvangen. Alle verzoeken zijn met een herkenbare user-agent en met ongeveer één verzoek per seconde uitgevoerd.

## Overgeslagen producten

| Product/groep | Aantal | Reden |
|---|---:|---|
| Kattenvoer (droogvoer) | 9 | Geen hondenvoeding. |
| Kattenvoer (premium pâté) | 6 | Geen hondenvoeding. |
| Snacks/biscuits | 0 productpagina's in de sitemap | Geen complete voeding. De navigatie linkt naar `/nl-NL/acana-biscuits.html`, maar die pagina geeft 404 en staat niet in de sitemap. |
| Natvoer voor honden | 0 | De Nederlandse/EMEA-catalogus voert geen natvoer voor honden. |
| Rauwvoer voor honden | 0 | De Nederlandse/EMEA-catalogus voert geen rauwvoer voor honden. |

De Canadese/Amerikaanse Acana-site voert wel natvoer (premium pâté, premium chunks) en freeze-dried raw voor honden. Die producten staan niet in de Nederlandse/EMEA-catalogus en zijn daarom niet opgenomen. De opdracht is gevolgd op de Nederlandse marktsite; de productnamen, samenstellingen en maten daarvan zijn gebruikt.

## Twijfelgevallen

**Geen.** Alle 22 opgenomen producten hebben een volledige, zichtbare ingrediëntenlijst op de opgegeven `bronUrl`. Er zijn geen etiketvelden weggelaten.

Twee producten hebben geen officiële maatlijst: **Red Meat Recipe** en **Singles Beef With Pumpkin Recipe**. Op zowel de Nederlandse als de Engelse EMEA-pagina is het veld "Beschikbare verpakkingsgroottes" leeg. Hun samenstelling is wel volledig; daarom staan ze met `verpakking: null` in het bestand en niet als twijfelgeval. De productafbeeldingen suggereren maten (6 kg en 11,4 respectievelijk 10,8 kg), maar die zijn niet als officiële maatlijst gebruikt.

## Aandachtspunten bij de bron

1. **Verschillen tussen taalversies.** Bij 10 producten noemt de Engelstalige (en Duits-/Franstalige) pagina van dezelfde SKU andere percentages of ingrediënten dan de Nederlandstalige pagina:
   - Adult Dog Recipe
   - Adult Large Breed Recipe
   - Light & Fit Recipe
   - Pacifica
   - Puppy Large Breed
   - Senior Recipe
   - Free-Run Duck (NL mist het percentage 0,1% bij de gevriesdroogde lever)
   - Grass-fed Lamb (groot verschil: NL noemt 21% rauw lamsvlees, 19% lamsmeel en 8% rauwe lamslever; EN noemt 18% / 18% / 4% en andere ingrediënten)
   - Yorkshire Pork (NL mist het percentage 0,1% bij de gevriesdroogde lever)
   - Sport & Agility Recipe

   De Nederlandstalige pagina is gebruikt omdat dat de Nederlandse marktpagina is en de lijst daar volledig en intern consistent is. De verschillen zijn daarom niet als `twijfel` opgenomen, maar wel hier gemeld: een mens kan controleren of de Engelse versie een nieuwere formule is en of de Nederlandse pagina bijgewerkt moet worden.

2. **Pacifica heeft een dubbel toevoegingsmiddelenblok.** De pagina bevat twee verschillende blokken "TOEVOEGINGSMIDDELEN" met afwijkende waarden. De ingrediëntenlijst zelf is eenduidig en volledig; alleen die lijst is overgenomen. De tegenstrijdige toevoegingsmiddelen vallen buiten `etiketOrigineel`.

3. **Verpakkingsmaten op de NL-pagina's.** Alle Nederlandse productpagina's tonen een leeg veld "Beschikbare verpakkingsgroottes". De maten in dit bestand komen van de Engelstalige EMEA-pagina van dezelfde SKU. Voor Classic Red Meat, Prairie Poultry en Wild Coast zijn dat 2 / 9,7 / 14,5 kg; voor de meeste andere 2 / 6 / 11,4 kg. Voor Puppy Recipe, Adult Dog Recipe, Grass-fed Lamb en de large-breedvarianten is ook 17 kg genoemd.

4. **Puppy Recipe en Puppy Small Breed Recipe hebben dezelfde ingrediëntenlijst.** Het zijn desondanks twee aparte producten: verschillende korrelgrootte en verpakkingen. Ze staan daarom als twee records in het bestand. De validator geeft hierdoor één waarschuwing "zelfde etikettekst"; dat is verwacht en geen fout.

5. **Voetnoten.** Bij Grasslands, Ranchlands en Wild Prairie staat in dezelfde paragraaf een voetnoot over de "gevarieerde mix van rauwe tullibee, witvis, snoek en harder". Die is letterlijk meegenomen, omdat hij bij de zichtbare samenstelling hoort.

6. **Label "SAMENSTELLING:".** Bij Coldwater Fish Recipe, Red Meat Recipe en Singles Beef With Pumpkin Recipe begint de zichtbare paragraaf met "SAMENSTELLING:". Dat label is verwijderd; de ingrediëntenlijst daarna is letterlijk overgenomen, inclusief de bestaande spatie- en interpunctieafwijkingen van de bron (bijvoorbeeld "erwten,haringmeel" en "14 %").

## Bestaande app-producten

De vier bestaande Acana-producten zijn opnieuw opgenomen:

| Bestaand product | In dit bestand | Opmerking |
|---|---|---|
| Puppy Recipe | Puppy Recipe | NL-samenstelling komt overeen in percentages; let op: de EN-EMEA-pagina noemt ook 17 kg, terwijl de bestaande app 2 / 6 / 11,4 kg heeft. Daardoor kan de import een extra verpakkingsvariant zien. |
| Adult Small Breed Recipe | Adult Small Breed Recipe | Zelfde percentages; NL gebruikt andere bewoordingen ("gedehydrateerde kip" in plaats van "kippenmeel"). |
| Light & Fit Recipe | Light & Fit Recipe | Zelfde percentages als de bestaande en-CA-tekst. |
| Grasslands | Grasslands | De NL-pagina noemt 8,5% lamsvlees, 8,5% eend, 8% ei en 8% lamsmeel; de bestaande en-CA-tekst noemt 9% / 9% / 8% / 7%. De import ontdubbelt op naam en verpakking, dus de bestaande rij wordt niet automatisch overschreven. Menselijke controle aanbevolen. |

## Gaten

- **Geen ontbrekende samenstellingen.** Alle 22 opgenomen producten hebben een volledige ingrediëntenlijst.
- **Geen GTIN's.** De officiële productpagina's tonen geen EAN/GTIN; `gtin` staat daarom overal op `null`.
- **Twee producten zonder officiële maatlijst.** Red Meat Recipe en Singles Beef With Pumpkin Recipe hebben `verpakking: null`; zie hierboven.
- **Geen natvoer/rauwvoer voor honden in de Nederlandse catalogus.** De globale Canadese site heeft die wel, maar die valt buiten de Nederlandse/EMEA-bron.
