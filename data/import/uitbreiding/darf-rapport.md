# DARF — uitbreiding assortiment complete hondenvoeding

Peildatum: 21 oktober 2026  
JSON: `data/import/uitbreiding/darf.json`  
Bron: https://darf.nl (officiële fabrikantensite, Nederlandstalig)

## Uitkomst

- **68 records** opgenomen, één per recept/etiketformule.
- Verdeling: **31 raw**, **14 kibble**, **23 wet**.
- **45 records met een volledige samenstelling**, **23 in `twijfel`**.
- **10 producten stonden al in de app** (volgens `data/import/darf.json`); **58 zijn nieuw**.
- Van de 10 bestaande producten hebben er 6 een volledige samenstelling en 4 niet (Geit Kip, Hert, Wild KVV, Vol Active).
- De 68 records dekken **98 productpagina's** uit de categorie `/hond`; 30 pagina's zijn maatvarianten van een record en zijn daaraan gekoppeld.

| voertype | records | met samenstelling | twijfel | al in app | nieuw |
|---|---:|---:|---:|---:|---:|
| raw | 31 | 18 | 13 | 6 | 25 |
| kibble | 14 | 9 | 5 | 4 | 10 |
| wet | 23 | 18 | 5 | 0 | 23 |
| **totaal** | **68** | **45** | **23** | **10** | **58** |

Verpakkingsmaten van hetzelfde recept zijn gebundeld. Waar de samenstelling per maat duidelijk verschilt, staan de maten als aparte records. Dat is vooral bij de Houdbaar worst het geval: de 200 g- en 800 g-pagina's geven voor Eend, Kalkoen, Konijn, Lam, Rund en Kip verschillende percentages. Zalm is identiek en is als één record met `200 / 800 g` opgenomen. Paard en Wild bestaan alleen als 800 g. Bij de KVV/Classic-paren zijn de verschillen beperkt tot asterisken en toevoegingen als "inc. pens"; die zijn als hetzelfde recept gebundeld (zie Bronafwijkingen 10).

## Bronnen

- Categorie **https://darf.nl/hond**: 27 pagina's, **238 unieke producten**. Alle 27 pagina's zijn op 21 oktober 2026 opgehaald.
- Sitemap **https://darf.nl/sitemap.xml**: 365 `<loc>`-regels, waarvan **339 product-URL's**. Daaruit zijn 124 DARF/Vol-kandidaten gefilterd; **104 gaven HTTP 200 en 20 HTTP 404**.
- Daarnaast zijn 13 sitemap-aliassen/extra URL's gecontroleerd: 11 verwijzen naar al bekende producten, 2 geven 404.
- **https://darf.nl/robots.txt** bevat alleen `User-agent: *` en geen `Disallow`-regels.
- Opgehaald met een herkenbare user-agent (`Hondenvoervergelijker-import/1.0`, contact `webmaster@hondenvoervergelijker.nl`), met ongeveer 1,1 seconde tussen verzoeken. Er zijn geen 403- of 429-responses geweest.
- De productgegevens komen uit de SSR-data in `<script id="ng-state" type="application/json">`, pad `APP_PAGE_SETTINGS_TRANSFER_STATE_KEY.pageData.productDetails.product_details_model`.
- De samenstelling komt uit `user_agreement_text`. Bij de Menu-blikken staat hij in `full_description` achter het kopje "Samenstelling"; daar is geknipt vóór "Analytische bestanddelen" of "Analyse".
- De EAN staat zichtbaar als `EAN` in het productblok (`.dc-pi-val`). Daarom is `gtin` gevuld, ook al staat `show_gtin` in de onderliggende data op `false`.
- Alle pagina's zijn Nederlandstalig. Daarom is bij elk record met een samenstelling `etiketNl` gelijk aan `etiketOrigineel` en is `aantekening` `null`. Twijfelrecords hebben geen etiketvelden.

## Volledigheid

De categorie `/hond` is volledig gereconcilieerd:

| groep | producten |
|---|---:|
| DARF/Vol-pagina's gekoppeld aan een record | 98 |
| DARF-producten uitgesloten als niet-complete voeding | 8 |
| DARF Snacks-lijn (incl. Houdbare Kalfsleverworst) | 55 |
| Producten van andere merken op darf.nl | 77 |
| **totaal in `/hond`** | **238** |

Toelichting:

1. De 238 producten zijn over alle 27 pagina's van `/hond` verzameld en op unieke productnaam/URL ontdubbeld.
2. 161 producten zijn van DARF/Vol: 54 DARF Snacks, 1 Houdbare Kalfsleverworst (snack) en 106 voedingsproducten.
3. Van die 106 voedingsproducten zijn er 8 uitgesloten omdat ze geen complete maaltijd zijn (zie hieronder). De overige **98 pagina's** zijn aan een record gekoppeld: 68 records, waarvan 30 pagina's als maatvariant bij een record horen.
4. Alle 124 DARF-kandidaten uit de sitemap zijn individueel geopend. De 20 die 404 geven, staan in de gap-sectie. De 13 extra sitemap-URL's zijn gecontroleerd; daarvan zijn geen nieuwe producten gekomen.
5. De andere merken op de site (Alroda Puur, BARF, Meat4Dogs, Natuur en Dier) vallen buiten de DARF-opdracht en zijn niet in het bestand opgenomen.

Daarmee is het DARF/Vol-assortiment op de Nederlandse site per 21 oktober 2026 aantoonbaar doorlopen. De site zelf bevat echter een aantal interne tegenstrijdigheden; die staan onder "Bronafwijkingen". De 23 producten zonder volledige, leesbare samenstelling staan als `twijfel` in het bestand en zijn niet stilzwijgend weggelaten.

## Bestaande producten

Deze 10 producten stonden al in `data/import/darf.json`:

| Product | Verpakking in dit bestand | Samenstelling |
|---|---|---|
| KVV | 4,65 kg / 10 x 1 kg | volledig |
| Zalm KVV | 4,65 kg / 10 x 1 kg | volledig |
| Kalkoen KVV | 4,65 kg / 10 x 1 kg | volledig |
| Geit Kip | 4,65 kg / 10 x 1 kg | twijfel |
| Hert | 10 x 1 kg | twijfel |
| Wild KVV | 4,65 kg / 10 x 1 kg | twijfel |
| Vol Active | 4 / 14 kg | twijfel |
| Vol Light | 4 / 14 kg | volledig |
| Vol Regular | 4 / 19 kg | volledig |
| Vol Zalm | 4 / 14 kg | volledig |

De app had voor KVV, Zalm KVV, Kalkoen KVV en de vier Vol-producten alleen de kleinste maat (10 x 1 kg of 4 kg). In dit bestand staan ook de grotere maten. De import ontdubbelt op merk, naam en verpakking; controleer bij het importeren of de uitgebreide verpakkingseenheid als nieuwe maat wordt gezien.

Van Geit Kip, Hert en Wild KVV staat in de app nog een oude samenstelling, maar die tekst staat niet meer op de huidige productpagina's. Die oude lijsten zijn daarom niet overgenomen; de records staan op `twijfel`.

## Opgenomen records

### Rauwvoer (31)

| Product | Verpakking | Status | Samenstelling |
|---|---|---|---|
| KVV | 4,65 kg / 10 x 1 kg | bestaand | volledig |
| Zalm KVV | 4,65 kg / 10 x 1 kg | bestaand | volledig |
| Kalkoen KVV | 4,65 kg / 10 x 1 kg | bestaand | volledig |
| Konijn | 4,65 kg / 10 x 1 kg | nieuw | volledig |
| Lam Kip | 4,65 kg / 10 x 1 kg | nieuw | volledig |
| Pens Haring Eend | 4,65 kg / 10 x 1 kg | nieuw | volledig |
| Pens Zalm Kalkoen | 4,65 kg / 10 x 1 kg | nieuw | volledig |
| Puppy | 4,65 kg / 10 x 1 kg | nieuw | volledig |
| Noordzee | 4,65 kg / 10 x 1 kg | nieuw | volledig |
| Actief | 10 x 1 kg | nieuw | volledig |
| Actief Classic | 4,65 kg | nieuw | volledig |
| Caspar KVV | 10 x 1 kg | nieuw | volledig |
| Caspar Classic | 4,65 kg | nieuw | volledig |
| Eend KVV | 10 x 1 kg | nieuw | volledig |
| Eend Classic | 4,65 kg | nieuw | volledig |
| Emi KVV | 10 x 1 kg | nieuw | volledig |
| Small | kleine porties | nieuw | volledig |
| Puppy Small | kleine porties | nieuw | volledig |
| Emi Classic | 4,65 kg | nieuw | twijfel |
| Geit Kip | 4,65 kg / 10 x 1 kg | bestaand | twijfel |
| Hert | 10 x 1 kg | bestaand | twijfel |
| Hert Classic Mix | 4,65 kg | nieuw | twijfel |
| Pens Rund Kip | 4,65 kg / 10 x 1 kg | nieuw | twijfel |
| Wild KVV | 4,65 kg / 10 x 1 kg | bestaand | twijfel |
| Paard/lam/konijn | 1 kg | nieuw | twijfel |
| Compleet Hert, Ree Blokjes | 500 g | nieuw | twijfel |
| Compleet Lam Blokjes | 500 g | nieuw | twijfel |
| Compleet Paard Eend blokjes | 500 g | nieuw | twijfel |
| Compleet Rund Compleet blokjes | 500 g | nieuw | twijfel |
| Compleet Rund Kalkoen blokjes | 500 g | nieuw | twijfel |
| Compleet Rund Zalm Blokjes | 500 g | nieuw | twijfel |

`Small` en `Puppy Small` hebben op de productpagina geen kg-maat; daar staat letterlijk "kleine porties". De categoriekaart heeft `weight` 1,9 respectievelijk 4,275 (zonder eenheid), maar dat is niet als netto verpakking op de productpagina bevestigd. Daarom staat "kleine porties" in `verpakking`.

### Brokken (14)

| Product | Verpakking | Status | Samenstelling |
|---|---|---|---|
| Vol Active | 4 / 14 kg | bestaand | twijfel |
| Vol Insect | 4 / 14 kg | nieuw | volledig |
| Vol Kalkoen | 4 / 14 kg | nieuw | twijfel |
| Vol Lam | 4 / 14 kg | nieuw | twijfel |
| Vol Light | 4 / 14 kg | bestaand | volledig |
| Vol Noordzeevis | 4 / 14 kg | nieuw | volledig |
| Vol Pup | 4 / 14 kg | nieuw | volledig |
| Vol Regular | 4 / 19 kg | bestaand | volledig |
| Vol Regular Mini | 4 kg | nieuw | volledig |
| Vol Rund | 4 / 14 kg | nieuw | volledig |
| Vol Wild | 4 / 14 kg | nieuw | volledig |
| Vol Zalm | 4 / 14 kg | bestaand | volledig |
| Vol Konijn | 4 / 14 kg | nieuw | twijfel |
| Vol Paard | 4 / 14 kg | nieuw | twijfel |

### Natvoer (23)

| Product | Verpakking | Status | Samenstelling |
|---|---|---|---|
| Menu Lekker Kalkoen | 200 / 400 g | nieuw | volledig |
| Menu Malse Kip | 200 / 400 / 800 g | nieuw | volledig |
| Menu Fit Hartige Zijderups | 410 g | nieuw | volledig |
| Houdbaar worst Eend | 200 g | nieuw | volledig |
| Houdbaar worst Eend | 800 g | nieuw | volledig |
| Houdbaar worst Kalkoen | 200 g | nieuw | volledig |
| Houdbaar worst Kalkoen | 800 g | nieuw | volledig |
| Houdbaar worst Konijn | 200 g | nieuw | volledig |
| Houdbaar worst Konijn | 800 g | nieuw | volledig |
| Houdbaar worst Lam | 200 g | nieuw | volledig |
| Houdbaar worst Lam | 800 g | nieuw | volledig |
| Houdbaar worst Rund | 200 g | nieuw | volledig |
| Houdbaar worst Rund | 800 g | nieuw | volledig |
| Houdbaar worst Zalm | 200 / 800 g | nieuw | volledig |
| Houdbaar worst Kip | 200 g | nieuw | volledig |
| Houdbaar worst Kip | 800 g | nieuw | volledig |
| Houdbaar worst Paard | 800 g | nieuw | volledig |
| Houdbaar worst Wild | 800 g | nieuw | volledig |
| Menu Groentetuin | 400 g | nieuw | twijfel |
| Menu Lam & Zalm | 400 g | nieuw | twijfel |
| Menu Vega Linsen | 410 / 810 g | nieuw | twijfel |
| Menu Fit het Beste van Paard | 400 g | nieuw | twijfel |
| Puur Paard en Aardappel | 400 g | nieuw | twijfel |

## Overgeslagen

| Product/groep | Aantal | Reden |
|---|---:|---|
| DARF Snacks | 54 | Snacks, kauwstaven, trainers, semi-moist en gedroogde beloningen; geen complete maaltijd. |
| Houdbare Kalfsleverworst 200 g | 1 | Staat op de site zelf als "darf snack"; geen complete voeding. |
| DARF IJs voor Honden — Banaan / Kalfsleverworst | 2 | Hondensnack/dessert, geen complete maaltijd. |
| DARF Groente Mix 500 g | 1 | Groentemix, geen complete voeding. |
| DARF Kalf Gevogelte compleet blokjes 500 g | 1 | De beschrijving positioneert het product expliciet als "onderdeel van een rauw voedingspatroon", "binnen BARF" en "als aanvullende voeding". Geen samenstelling op de pagina. |
| Darf Menu Sappig Rund 200 / 400 g | 2 | 100% doorregen rundvlees; de pagina noemt het expliciet "aanvullend vleesbestanddeel binnen BARF" en "componentenvoeding". |
| DARF Rund Kip 10 x 1 kg en Classic 4,65 kg | 2 | De volledige beschrijving zegt letterlijk: "Omdat deze diervoeding maar uit twee diersoorten bestaat, is het geen complete diervoeding voor honden. Maar dit product is wel ideaal als aanvullend voer." De korte tekst zegt daarentegen "als complete voeding". Deze tegenstrijdigheid is reden om het product buiten de complete selectie te laten. |
| Overige merken op darf.nl | 77 | Alroda Puur, BARF, Meat4Dogs en Natuur en Dier vallen buiten de DARF-opdracht. |

De 8 uitgesloten DARF-voedingsproducten zijn: de 2 ijsproducten, Groente Mix, Kalf Gevogelte, Sappig Rund 200 g, Sappig Rund 400 g, Rund Kip 10 x 1 kg en Rund Kip Classic. Daarmee blijven 106 − 8 = 98 DARF-voedingspagina's over, die aan de 68 records zijn gekoppeld.

## Twijfel

Deze 23 records hebben geen `etiketOrigineel`/`etiketNl`, omdat de samenstelling niet volledig, niet leesbaar of niet betrouwbaar op de pagina staat.

| Product | Verpakking | Reden |
|---|---|---|
| Emi Classic | 4,65 kg | Geen samenstelling op de productpagina; alleen een algemene beschrijving. |
| Geit Kip | 4,65 kg / 10 x 1 kg | Geen samenstelling op de huidige 10 x 1 kg- en Classic-pagina. De app heeft nog een oude lijst, maar die is op de bron niet meer te verifiëren. |
| Hert | 10 x 1 kg | Geen samenstelling op de huidige productpagina. De app heeft nog een oude lijst, maar die is op de bron niet meer te verifiëren. |
| Hert Classic Mix | 4,65 kg | Geen samenstelling op de productpagina; alleen een algemene beschrijving. |
| Pens Rund Kip | 4,65 kg / 10 x 1 kg | Alleen de opsomming "Runderpens, rund en kip" zonder percentages; de Classic-pagina heeft geen samenstellingsblok. |
| Wild KVV | 4,65 kg / 10 x 1 kg | Alleen een algemene Wildmix-beschrijving zonder percentages of concrete ingrediëntenlijst. |
| Paard/lam/konijn | 1 kg | Alleen "Paard, lam en konijn" zonder percentages of volledige samenstelling. |
| Compleet Hert, Ree Blokjes | 500 g | Geen samenstelling; alleen de losse aanduiding "Eland Hert Ree Groente". |
| Compleet Lam Blokjes | 500 g | De samenstelling is afgekapt na "Zink sulfaat monohydraat 2,5mg," en bevat geen volledige lijst. |
| Compleet Paard Eend blokjes | 500 g | Geen samenstelling; alleen de losse aanduiding "paard eend". |
| Compleet Rund Compleet blokjes | 500 g | Geen samenstelling; alleen de losse aanduiding "Kalf Kip Kalkoen Groente". |
| Compleet Rund Kalkoen blokjes | 500 g | Geen samenstelling; alleen de losse aanduiding "Rundvlees- kalkoenvlees". |
| Compleet Rund Zalm Blokjes | 500 g | Geen samenstelling op de pagina, hoewel de beschrijving het product "compleet" noemt. |
| Vol Active | 4 / 14 kg | De samenstelling is op de 4 kg- en 14 kg-pagina afgekapt na "Bevattende:"; de vitamine- en mineralenlijst ontbreekt. |
| Vol Kalkoen | 4 / 14 kg | De 4 kg-pagina is afgekapt na "Bevattende:"; de 14 kg-pagina laat de vitamine- en mineralenregel helemaal weg. |
| Vol Lam | 4 / 14 kg | De 4 kg-pagina eindigt na "vitamine en mineralen preparaat: 1%,"; de 14 kg-pagina laat de premixregel weg. |
| Vol Konijn | 4 / 14 kg | Geen samenstelling op de 4 kg- en 14 kg-pagina; alleen een algemene beschrijving. |
| Vol Paard | 4 / 14 kg | Geen samenstelling op de 4 kg- en 14 kg-pagina. De gestructureerde ingrediëntentabel is niet als etiket gebruikt. |
| Menu Groentetuin | 400 g | Geen samenstelling op de productpagina; alleen een algemene beschrijving. |
| Menu Lam & Zalm | 400 g | Geen samenstelling op de productpagina; alleen een algemene beschrijving. |
| Menu Vega Linsen | 410 / 810 g | Geen samenstelling op de 410 g- en 810 g-pagina; alleen een algemene beschrijving. |
| Menu Fit het Beste van Paard | 400 g | Geen samenstelling op de productpagina; alleen een algemene beschrijving. |
| Puur Paard en Aardappel | 400 g | Geen samenstelling; alleen analytische bestanddelen en toevoegingsmiddelen. |

## Gaten: 404-URL's

Deze URL's staan nog in de sitemap of zijn oude product-URL's, maar gaven op 21 oktober 2026 HTTP 404. Ze zijn niet in het JSON-bestand opgenomen.

**Productlijnen/varianten die geen live pagina meer hebben (13):**

- `darf-bio-menu-verse-zalm-190g-in-blik`, `darf-bio-menu-verse-zalm-385g-in-blik`, `darf-bio-menu-verse-zalm-785g-in-blik`
- `darf-houdbaar-glas-lam-groente-400g`, `darf-houdbaar-glas-rund-groente-400g`, `darf-houdbaar-glas-zalm-groente-400g`
- `darf-houdbaar-kip-groente-houdbaar-vlees`
- `darf-houdbaar-maag-darm-problemen-intestinal-groente-400-gram-glas`
- `darf-kvv-verse-vleesworst-bio-natuur-kvv-1000-gram`
- `darf-kvv-verse-vleesworst-geit-kip-4650-gram`
- `darf-compleet-rundzalm-1000-gram`
- `darf-fit-het-beste-van-paard-800g`
- `darf-menu-lekker-kalkoen-800g-in-blik`

**Oude URL's/aliassen (9; sommige met, sommige zonder live equivalent):**

- `darf-geit-kip-vers-vlees-hond-kvv` → live als Geit Kip 10 x 1 kg en Classic.
- `darf-hert-eend-konijn-lam-fazant-vers-vlees-hond-kvv` → oude multi-proteïnelijn; geen live equivalent onder deze URL.
- `darf-pens-rund-kip-doosje-19-worstjes-ve-min-465-kg` → live als Pens Rund Kip 4,65 kg en 10 x 1 kg.
- `darf-vol-actief-brokjes-60procent-vlees-biologischvlees-hogeacceptatie` → live als Vol Active 4 / 14 kg.
- `darf-vol-light-brokjes-caloriearm-weinigvet-60procent-vlees-biologischvlees-hogeacceptatie` → live als Vol Light 4 / 14 kg.
- `darf-kippennek-stukjes` → snack; geen live equivalent nodig.
- `vol-light-15-kg` → live als Vol Light 14 kg.
- `darf-bio-menu-sappig-rund-800g-in-blik` → alias van Sappig Rund; dat product is als aanvullende voeding uitgesloten.
- `darf-menu-sappig-rund-800g-in-blik` → idem; live als Sappig Rund 200 / 400 g, maar dat product is uitgesloten.

De 404's zijn echte gaten in de bron of oude aliassen; de sitemap is kennelijk niet overal bijgewerkt. Ze zijn daarom niet als product verzonnen of uit een andere pagina gereconstrueerd.

## Bronafwijkingen

1. **Rund Kip is tegenstrijdig.** De korte beschrijving noemt het "de ideale diervoeding om ter afwisseling of als complete voeding aan te bieden". De volledige beschrijving zegt expliciet dat het door de twee diersoorten "geen complete diervoeding" is en "ideaal als aanvullend voer". Omdat de opdracht alleen complete voeding vraagt, is Rund Kip niet opgenomen. De twee pagina's (10 x 1 kg en Classic) staan in de skip-lijst.

2. **Hert heeft een onmogelijke ingrediëntentabel.** De gestructureerde tabel telt Lam 30,77% + Hert 23,08% + Paard 30,77% + Wilde gans 30,77% + premix 1% = 116,39%. Dat kan niet. De zichtbare samenstelling ontbreekt, daarom is Hert een twijfelrecord.

3. **Paard/lam/konijn heeft een verkeerde tabel.** De gestructureerde ingrediëntentabel noemt 35% lam, 20% paard, 44% eend en 1% premix, terwijl het product paard/lam/konijn is. De zichtbare tekst zegt alleen "Paard, lam en konijn". De tabel is niet gebruikt; het record staat op twijfel.

4. **Houdbaar worst 200 g en 800 g verschillen.** Voorbeeld Eend: 200 g zegt 98% eend + 2% tapioca; 800 g zegt 95% eend + 3% tapioca + 2% vitamine-/mineralenpreparaat. Lam noemt op 200 g 3% rijst, op 800 g 3% tapioca. Daarom zijn dit aparte records per maat. Alleen Zalm heeft op beide maten 97% zalm + 3% tapioca en is gebundeld.

5. **Menu samenstellingen staan niet op elke maatpagina.** Menu Lekker Kalkoen 200 g heeft geen samenstellingsblok; de 400 g-pagina heeft het wel. De 200 g-beschrijving noemt wel dezelfde ingrediënten (gierst, wortel, appel), dus de 400 g-compositie is voor 200 / 400 g gebruikt. Menu Malse Kip heeft alleen op de 200 g-pagina een samenstellingsblok; 400 g en 800 g hebben dat niet. Ook daar is de 200 g-compositie gebruikt voor de drie maten. Dit is een bronbeperking, geen eigen reconstructie.

6. **De gestructureerde ingrediëntentabellen van de Menu-blikken zijn onbetrouwbaar.** Menu Lekker Kalkoen 200 g geeft in de tabel 55% kalkoen, 40% groente, 2% kokosolie, 2% aardappelvlokken en 1% premix, terwijl de zichtbare 400 g-compositie 55% kalkoen, 8% gierst, 5% wortel, 5% appel, mineralen en kruiden noemt. Menu Malse Kip 200 g geeft in de tabel 55% kip, 40% groente, 2% aardappelvlokken, 2% kokosolie en 1% premix, terwijl de zichtbare compositie 55% kip, 7% wortel, 4% rijst, 3% courgette, mineralen en kruiden noemt. De zichtbare samenstellingstekst is gebruikt; de tabellen zijn alleen als controle bekeken.

7. **Fit Zijderups: 400 g in de tekst, 410 g als product.** De producttitel en categorie zeggen 410 g; de volledige beschrijving zegt "in blik 400 g". In `verpakking` staat 410 g, omdat dat de producttitel en de categoriekaart is. De samenstelling zelf is duidelijk.

8. **Vol 14 kg-pagina's zijn niet allemaal compleet.** Vol Light 14 kg heeft geen samenstellingsblok; de 4 kg-pagina heeft het wel. Vol Active is op 4 kg en 14 kg afgekapt na "Bevattende:"; Vol Kalkoen is op 4 kg afgekapt na "Bevattende:" en mist op 14 kg de premixregel; Vol Lam eindigt op 4 kg na "preparaat: 1%," en mist op 14 kg de premixregel. Daarom staan deze drie records op `twijfel`. Vol Noordzeevis 14 kg zegt "Witvis vlees" waar 4 kg "Visvlees" zegt; voor de overige gebundelde 4 / 14 kg-records is de 4 kg-compositie gebruikt.

9. **Noordzee Classic is afgekapt.** De Classic-pagina zegt "Eend 45%, rund 35%, lam 10%, Noordzeevis 10% (o." en stopt daar. De 10 x 1 kg-pagina zegt alleen "Noordzeevis gecombineerd met rund, eend en lam". Het record gebruikt de 10 x 1 kg-tekst; de afgekapte Classic-tekst is niet gebruikt.

10. **KVV/Classic verschillen zijn klein maar aanwezig.** KVV 10 x 1 kg heeft asterisken bij Kip/Rund/Lam/Geit, Classic niet. Kalkoen Classic noemt "Rund (inc. pens), 10% Lam (inc. pens)" waar 10 x 1 kg alleen "Rund, 10% Lam" zegt. De samenstellingen zijn verder gelijk; de gebruikte bron staat per record in `bronUrl`.

11. **`gtin` staat zichtbaar op de pagina, maar `show_gtin` staat op false.** De EAN wordt als tekst in het productblok getoond. Daarom is `gtin` gevuld. Op de pagina's waar geen EAN zichtbaar is, zou het veld `null` zijn; dat komt in dit bestand niet voor.

12. **Small en Puppy Small hebben geen kg-maat.** De productpagina zegt alleen "kleine porties". De categoriekaart heeft `weight` 1,9 en 4,275 (zonder eenheid), maar dat is niet als netto verpakking op de productpagina bevestigd. Daarom staat "kleine porties" in `verpakking`.

## Conclusie

Het DARF/Vol-assortiment complete hondenvoeding op https://darf.nl is per 21 oktober 2026 volledig doorlopen: 238 producten in `/hond`, 106 DARF-voedingsproducten, 98 daarvan gekoppeld aan 68 records, 8 uitgesloten als niet-compleet en 55 producten uit de DARF Snacks-lijn. De 23 producten zonder bruikbare samenstelling staan als `twijfel` in het bestand. De belangrijkste inhoudelijke gaten zijn de 23 twijfelrecords en de 13 productlijnen/varianten zonder live pagina.
