# Hondensnacks: lokale eerste versie

De snacksectie is een eerste lokale opbouw. De pagina draait op een JSON-bestand
en gebruikt dezelfde allergeenkeuring als de voervergelijker. Er is nog geen
Supabase-tabel, adminomgeving of statische SEO-pagina voor snacks.

## Lokaal bekijken

```bash
npm run dev
# open http://localhost:5173/hondensnacks/
```

De build bevat de pagina ook:

```bash
npx vite build
npx vite preview
# open http://localhost:4173/hondensnacks/
```

De pagina staat bewust op `noindex, follow` en is nog niet in de sitemap
opgenomen. Bij de openbare lancering wordt dat `index, follow`.

## Bestanden

- `hondensnacks/index.html` — eigen HTML-entry voor de snacksectie.
- `src/snacks.jsx` — de vergelijker: allergenen, filters, kaarten en vergelijken.
- `src/lib/snacks.js` — snacktypes, formaatlabels, lokale woordenlijst,
  sporenlogica en de vertaling naar de bestaande matcher.
- `src/snacks.css` — alleen de snackspecifieke aanvullingen op `styles.css`.
- `data/snacks.json` — de lokale productbatch.
- `tests/unit/snacks.test.js` — tests voor het snackoordeel en sporen.

## Eerste batch

De eerste batch bevat 12 snacks van drie merken:

| merk | producten |
|---|---|
| Renske | Kip, Eend, Lam, Vlees Repen Lam, Chhurpi |
| Yarrah | Crunchy Sticks Kip, Mini Snack, Kauwstaafjes Rund, Vegan Koekjes |
| Happy Dog | Meat Snack Allgäu, NaturCroq Müsli-Ecken, Care Snack Healthy Weight |

De samenstellingen zijn letterlijk overgenomen. Alle twaalf producten in deze
batch zijn tegen de officiële productpagina gecontroleerd; `reviewed_at` is
gevuld en `imported_at` is leeg. Voor toekomstige automatische imports geldt:
staat `imported_at` wel gevuld en `reviewed_at` niet, dan toont de kaart
“Automatisch overgenomen” in plaats van “Door een mens gecontroleerd”. Dat
verschil mag nooit verdwijnen.

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

1. De eerste batch aanvullen tot 8–10 producten per merk.
2. De snackdata naar Supabase verhuizen: `product_kind`, `snack_details` en
   de bestaande `recipe_versions`/`recipe_ingredienten` hergebruiken.
3. De bestaande voerqueries, broncontrole en affiliate-matching expliciet op
   `product_kind = 'food'` laten filteren, zodat snacks niet in de
   voervergelijker lekken.
4. Statische pagina's genereren: `/hondensnacks/`, merkpagina's,
   productpagina's en allergeenoverzichten met minimaal tien snacks.
5. Pas daarna de pagina indexeerbaar maken en in de sitemap en `llms.txt`
   opnemen.
