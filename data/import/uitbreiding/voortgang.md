# Voortgang uitbreiding merken

Peildatum: 2026-10-24. Aantal = gepubliceerde producten in de live database; 0 betekent: merk staat nog niet in de app. “Klaar” betekent: officieel assortiment opnieuw gecontroleerd en werkbestand gevalideerd.

| Merk | Live | Officiële bron | Status |
|---|---:|---|---|
| Acana | 22 | https://www.acana.com/nl-NL/ | klaar — 22 records, 18 nieuw |
| Bonzo (Purina) | 10 | https://www.bonzo.nl/ | klaar — 10 records, 0 nieuw; 1 bestaand nagekeken product in twijfel |
| Butcher's | 0 | https://butchersdogfood.co.uk/ | klaar — 48 records |
| Canagan | 0 | https://www.canagan.com/ | klaar — 36 records |
| Carnilove | 0 | https://carnilove.com/en | klaar — 29 records |
| Carnis | 14 | https://www.carnis.nl/ | klaar — 18 records, 14 nieuw, 4 twijfel |
| CaroCroc | 10 | https://www.carocroc.nl/ | klaar — 16 records, 6 nieuw |
| Cavom | 10 | https://www.cavom.nl/ | klaar — 9 records, ongewijzigd |
| DARF | 51 | https://www.darf.nl/ | klaar — 68 records, 41 nieuw, 23 twijfel, 10 bestaand |
| Edgard & Cooper | 38 | https://www.edgardcooper.com/nl/ | klaar — 37 records, 32 nieuw |
| Eukanuba | 75 | https://www.eukanuba.nl/ | klaar — 74 records, 65 nieuw; live bevat één oude naam met dezelfde formule |
| Farm Food | 0 | https://www.farmfood.nl/ | klaar — 9 records |
| Greenheart-Premiums | 0 | https://www.greenheart-premiums.nl/ | klaar — 20 records |
| Hill's Science Plan | 3 | https://www.hillspet.nl/ | uitbreiden |
| Hill's Prescription Diet | 6 | https://www.hillspet.nl/ | uitbreiden |
| Jarco | 57 | https://jarco.nl/ | klaar — 59 records, 2 twijfel |
| Kivo | 0 | https://kivopetfood.nl/ | klaar — 31 records |
| Orijen | 12 | https://emea.orijenpetfoods.com/nl-NL/ | klaar — 12 records, 8 nieuw |
| Pedigree | 35 | https://www.pedigree.nl/ | klaar — 37 records, 35 nieuw, 2 twijfel |
| Prins Petfoods | 72 | https://www.prinspetfoods.nl/ | klaar — 72 records, 62 nieuw; 10 bestaande verpakkingen aangevuld |
| Profine | 29 | https://profinepetfood.com/ | klaar — 29 records, 29 nieuw |
| Purina Pro Plan | 5 | https://www.purina.nl/proplan | uitbreiden |
| Purina Pro Plan Veterinary Diets | 6 | https://www.purina.nl/proplan | uitbreiden |
| RAW4DOGS | 0 | https://www.raw4dogs.nl/ | nieuw |
| Renske | 44 | https://www.renske.com/nl/ | klaar — 44 records, 34 nieuw; 1 verpakking gecorrigeerd |
| Riverwood | 0 | https://www.riverwoodpetfood.com/ | klaar — 28 records |
| Rodi | 0 | https://rodi-petfood.nl/ | nieuw |
| Royal Canin | 7 | https://www.royalcanin.com/nl | uitbreiden |
| Sanimed | 0 | https://www.sanimed.nl/ | nieuw |
| Smølke | 27 | https://www.smolke.nl/ | klaar — 27 records, 27 nieuw |
| Smuldier | 19 | https://www.smuldier.nl/ | klaar — 19 records, 9 nieuw; 2 verpakkingen aangevuld |
| Specific | 6 | https://www.specific.nl/ | uitbreiden |
| Trovet | 8 | https://www.trovet.nl/ | uitbreiden |
| WOOOF | 27 | https://wooof.nl/ | klaar — 27 records, 26 nieuw |
| Yarrah | 18 | https://www.yarrah.com/ | klaar — 18 records, 12 nieuw; 1 extra product via sitemap gevonden |
| Yora | 9 | https://yorapets.be/ | klaar — 9 records, 9 nieuw |

De live database bevat nu 955 gepubliceerde producten bij 47 merken. Eén dubbel record van Edgard & Cooper (Wild & eend, 400 g naast 400 / 800 g) is verwijderd omdat de etiketten identiek waren. Bonzo, Prins Petfoods, Renske en Smuldier zijn toegevoegd; daarna Smølke, Yora, Eukanuba, Yarrah en Profine. De Prins-, Smølke- en Yarrah-labels zijn apart in de browser tegen de officiële pagina's gecontroleerd omdat die sites Node-verzoeken blokkeren.

Eukanuba heeft 74 officiële records en 65 nieuwe producten opgeleverd. De live-teller staat op 75 omdat het oude product `Active Adult Medium Breed kip` (12 kg) nog in de database staat; dat is dezelfde formule als `Volwassen Middelgrote rassen Verse kip` en is daarom niet als extra recept geïmporteerd. Het oude record is bewust niet verwijderd.

Profine heeft 29 officiële recepten opgeleverd: 13 droogvoer en 16 natvoer. Alle 29 zijn nieuw en in één batch toegevoegd. De 39 afzonderlijke verpakkingen zijn gebundeld tot 29 records; de samenstelling is per maat vergeleken en gelijk. De officiële winkel staat op `profinepetfood.com`, niet op het geparkeerde `profine.com`.

## Bestaande merken

De bestaande merken worden niet overgeslagen. Voor deze 18 merken (20
productlijnen, omdat Hill's en Purina Pro Plan in de app gesplitst zijn) geldt
dezelfde volledigheidscontrole als voor de nieuwe merken:

Acana, Bonzo, CaroCroc, Cavom, DARF, Edgard & Cooper, Eukanuba, Hill's Science
Plan, Hill's Prescription Diet, Orijen, Prins Petfoods, Purina Pro Plan, Purina
Pro Plan Veterinary Diets, Renske, Royal Canin, Smuldier, Specific, Trovet,
WOOOF en Yarrah.

De huidige live-aantallen zijn alleen een vertrekpunt. Een bestaand merk telt
pas als klaar wanneer het officiële assortiment opnieuw is gecontroleerd en de
ontbrekende recepten in het werkbestand staan.

## Uitgangspunten

- Eén product per recept/smaak/formule; verpakkingsmaten worden gebundeld.
- Alleen complete hondenvoeding: kibble, wet of raw. Geen snacks, kattenvoer, supplementen of verzorging.
- Bij voorkeur de Nederlandse fabrikantpagina; anders de officiële internationale pagina met een Nederlandse vertaling en aantekening.
- Geen menselijke controle claimen: automatisch overgenomen producten krijgen geen badge. Alleen een handmatige review in Beheer zet `reviewed_at` en de badge "Door een mens gecontroleerd".
