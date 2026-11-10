# Hondensnacks: lokale eerste versie

De snacksectie draait op een JSON-bestand en gebruikt dezelfde allergeenkeuring
als de voervergelijker. Er zijn statische snackmerkpagina's onder
`/hondensnacks/merken/`; er is nog geen Supabase-tabel of adminomgeving.

## Lokaal bekijken

```bash
npm run dev
# open http://localhost:5173/hondensnacks/
```

De build bevat de pagina en de snackmerkpagina's ook:

```bash
npm run build
npx vite preview
# open http://localhost:4173/hondensnacks/
# open http://localhost:4173/hondensnacks/merken/
```

`npm run build` draait na de Vite-build ook `scripts/maak-snack-paginas.mjs`.
De pagina's staan bewust op `noindex, follow` en zijn nog niet in de sitemap
opgenomen. Bij de openbare lancering wordt dat `index, follow`.

## Bestanden

- `hondensnacks/index.html` — eigen HTML-entry voor de snacksectie.
- `src/snacks.jsx` — de vergelijker: allergenen, filters, kaarten en vergelijken.
- `src/lib/snacks.js` — snacktypes, formaatlabels, lokale woordenlijst,
  sporenlogica en de vertaling naar de bestaande matcher.
- `src/snacks.css` — alleen de snackspecifieke aanvullingen op `styles.css`.
- `data/snacks.json` — de lokale productbatch.
- `scripts/maak-snack-paginas.mjs` — statische snackmerkpagina's en het
  merkenoverzicht.
- `scripts/controleer-snackdata.mjs` — controle op verplichte velden, dubbele
  producten en tegenstrijdige `single_protein`/`grain_free`-waarden.
- `scripts/lib/snack-winkel-match.mjs` — vaste EAN-/titelkoppelingen tussen de
  Dierenwinkel XL-feed en snacks.
- `public/winkels.json` — gegenereerde winkel links en indicatieprijzen voor
  voer en snacks.
- `tests/unit/snacks.test.js` — tests voor het snackoordeel, sporen en
  snackmerkpaden.
- `tests/unit/snack-winkel-match.test.js` — tests voor de snack-winkelkoppeling.

## Batch

De batch bevat 598 snacks van tien merken:

| merk | producten |
|---|---:|
| Renske | 10 |
| Yarrah | 8 |
| Happy Dog | 10 |
| Pedigree | 23 |
| Purina | 17 |
| Frolic | 6 |
| Royal Canin | 6 |
| Edgard & Cooper | 21 |
| Trixie | 306 |
| Timo | 191 |

De samenstellingen zijn letterlijk overgenomen. De officiële merkpagina is de
eerste bron. Alleen voor Frolic is een verkoopsite als backup gebruikt, omdat
de officiële Frolic-site geen volledige snacketiketten meer heeft; dat staat
per product in `source_note`. Timo is het huismerk van Pets Place (voorheen
Happy Bite); de opdracht noemde het “Tim's”, maar de officiële merknaam is Timo.
Van Royal Canin en Trixie zijn de functionele supplementchews bewust niet in de
snackvergelijker opgenomen; die horen bij de supplementenvergelijker.

`reviewed_at` is gevuld en `imported_at` is leeg. Voor toekomstige automatische
imports geldt: staat `imported_at` wel gevuld en `reviewed_at` niet, dan toont
de kaart “Automatisch overgenomen” in plaats van “Door een mens gecontroleerd”.
Dat verschil mag nooit verdwijnen.

## Winkellinks (Dierenwinkel XL)

De snackkaarten in de vergelijker en op de statische snackmerkpagina's kunnen
een affiliate-link naar Dierenwinkel XL tonen. De links staan in
`public/winkels.json`, samen met de voerlinks. De koppeling wordt gemaakt door
`scripts/koppel-dierenwinkelxl.mjs` met de regels uit
`scripts/lib/snack-winkel-match.mjs`.

- Bron: de lokale TradeTracker-feed `data/winkels/dierenwinkelxl.xml` (niet
  gecommit).
- Koppelen gebeurt op EAN of op een vaste, exacte feedtitel. Bij twijfel komt er
  geen link.
- In de batch van 10 november 2026 zijn 10 snacks gekoppeld: 1 Bonzo, 2
  DentaLife, 3 DentaStix en 4 Edgard & Cooper-producten.
- Drie feedaanbiedingen zijn bewust overgeslagen: DentaLife Maxi en Edgard &
  Cooper Kip Reep geven HTTP 404, en de DentaLife Loyalty Pack is één URL voor
  drie maten.
- De getoonde prijs is een indicatie uit de feed en geen vergelijkingsprijs.
  Ververs de feed en draai `npm run winkels:dierenwinkelxl` om de links bij te
  werken. Het rapport staat in `data/winkels/rapport-dierenwinkelxl.md`.

## Snackmerkpagina's

Elke merknaam op een snackkaart linkt naar een eigen pagina onder
`/hondensnacks/merken/<slug>.html`. Die pagina's staan bewust buiten `/merken/`:
een snack-only merk hoort niet op de voermerkenpagina en een voermerk heeft soms
een ander snackassortiment. Het overzicht staat op `/hondensnacks/merken/`.

De pagina's worden na de Vite-build gemaakt uit `data/snacks.json`. Ze hebben
dezelfde noindex-status als de snackvergelijker en staan daarom nog niet in de
sitemap.

## Sporen

Een sporenmelding is geen ingrediënt. `snackMatch` houdt daarom drie dingen
apart:

- **bevat**: de bron staat in de ingrediëntenlijst;
- **sporen mogelijk**: de verpakking noemt de bron als spoor;
- **nergens genoemd**: de bron staat niet in de lijst en er is geen sporenmelding.

Een spoor maakt een product nooit “uitgesloten”, maar ook nooit “lijkt
geschikt”. Zolang het product niet al is uitgesloten, blijft het op
“Controleer etiket/fabrikant” staan. Zegt de verpakking niets over sporen, dan
toont de site “niet vermeld op de bronpagina”; dat is geen bewijs dat er geen
sporen zijn.

## Volgende stappen

1. Na elke datawijziging `npm run snacks:controle` draaien en de
   `single_protein`/`grain_free`-waarschuwingen handmatig beoordelen.
2. De snackdata naar Supabase verhuizen: `product_kind`, `snack_details` en
   de bestaande `recipe_versions`/`recipe_ingredienten` hergebruiken.
3. De bestaande voerqueries, broncontrole en affiliate-matching expliciet op
   `product_kind = 'food'` laten filteren, zodat snacks niet in de
   voervergelijker lekken.
4. Productpagina's en allergeenoverzichten voor snacks toevoegen; daarna de
   snackpagina's indexeerbaar maken en in de sitemap en `llms.txt` opnemen.
5. Whimzees is als mogelijke elfde merk bekeken, maar uit de actieve set
   gehaald om op tien merken uit te komen. De onderzoeksdata is niet bewaard;
   bij een latere uitbreiding moet het merk opnieuw worden gecontroleerd.
