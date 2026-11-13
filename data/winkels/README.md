# Winkelkoppeling (affiliate, optioneel)

Deze map is alleen nodig als je affiliate-links wilt tonen. Zonder bestanden
hier blijft `public/winkels.json` leeg en verandert er niets op de site.

De vergelijking blijft volledig onafhankelijk: of een product een winkelknop
heeft, heeft geen invloed op de volgorde, de beoordeling of de selectie.

## Eenmalig klaarzetten

1. Kopieer `feeds.example.json` naar `feeds.json`.
2. Log in bij Awin en download de productfeed (CSV) van Zooplus en/of Medpets.
3. Zet de bestanden als `zooplus.csv` en `medpets.csv` in deze map.
4. Draai:

```bash
npm run winkels:koppel -- --dry-run   # eerst kijken wat er zou gebeuren
npm run winkels:koppel                # public/winkels.json schrijven
```

5. Lees `data/winkels/rapport.md`:
   - hoeveel aanbiedingen zijn gekoppeld;
   - welke koppelingen een lagere zekerheid hebben (0,82–0,90);
   - welke aanbiedingen geen match hebben.
6. Klopt het beeld? Commit `public/winkels.json` en deploy.

## Kolommen

Het script herkent de gebruikelijke Awin-kolommen automatisch:

| veld | herkende kolomnamen |
|---|---|
| titel | `product_name`, `name`, `title`, `product_title` |
| merk | `brand_name`, `brand`, `manufacturer` |
| ean | `ean`, `gtin`, `product_ean`, `barcode` |
| prijs | `search_price`, `store_price`, `price`, `sale_price` |
| link | `aw_deep_link`, `merchant_deep_link`, `deeplink`, `url` |
| maat | `size`, `product_size`, `package_size`, `weight` |

Wijkt je feed af? Zet de kolomnaam expliciet in `feeds.json`:

```json
{
  "winkel": "Zooplus",
  "bestand": "zooplus.csv",
  "kolommen": {
    "titel": "product_name",
    "merk": "brand_name",
    "ean": "ean",
    "prijs": "search_price",
    "url": "aw_deep_link",
    "maat": "size"
  }
}
```

## Hoe er wordt gematcht

1. **EAN**: exact gelijk → 100% zeker.
2. **Merk + productnaam**: het merk moet in de titel staan en de naam moet
   overeenkomen. Een verkeerde verpakkingsmaat geeft straf.
3. **Drempel**: onder 0,82 komt er geen winkelknop. Liever geen link dan een
   link naar het verkeerde product.
4. **Per winkel één knop**: bij meerdere maten of aanbiedingen wint de beste
   match en daarna de laagste prijs.

De winkelknop op de site krijgt `rel="sponsored nofollow noopener"` en de
affiliate-vermelding staat in de footer en het privacybeleid.

## Alsa Nature (TradeTracker)

De Alsa Nature-feed staat lokaal in `data/winkels/alsa-nature.xml` (niet in git).
Download hem in TradeTracker via **Promotiemateriaal → Productfeeds** en draai
`npm run winkels:alsa-nature -- --dry-run` daarna zonder `--dry-run`. De feed
bevat vooral de merken `alsa-nature` en `isegrim`; zolang die niet in de
catalogus staan, worden er geen links toegevoegd.

## Ultra Premium Direct (Daisycon)

De Ultra Premium Direct-feed staat lokaal in
`data/winkels/ultra-premium-direct.xml` (niet in git). Download hem in Daisycon
via **Materiaal → Productfeeds** en draai
`npm run winkels:ultra-premium-direct -- --dry-run` daarna zonder `--dry-run`.
De koppeling gebruikt alleen een exacte EAN.

## Bestanden die niet in git horen

- `feeds.json` (lokale configuratie)
- `*.csv` (feeds kunnen groot zijn en trackinglinks bevatten)
- `rapport.md` (wordt opnieuw gegenereerd)

Alleen `public/winkels.json` wordt gecommit, zodat de statische site de knoppen
kan tonen.

## Dierenwinkel XL (TradeTracker)

Deze winkel gebruikt een TradeTracker-productfeed in XML. De feed is groot en
bevat een publisher-specifieke URL; hij wordt daarom niet gecommit.

1. Ga in TradeTracker naar **Promotiemateriaal → Productfeeds**.
2. Genereer de feed voor **Dierenwinkelxl.nl** als XML of CSV en sla hem op als
   `data/winkels/dierenwinkelxl.xml`.
3. Draai `npm run winkels:dierenwinkelxl -- --dry-run` om de koppelingen te
   controleren.
4. Draai `npm run winkels:dierenwinkelxl` om `public/winkels.json` bij te werken.
5. Controleer `data/winkels/rapport-dierenwinkelxl.md`.

De koppeling is bewust streng: alleen exacte merk- en productnamen, en waar
mogelijk een overlappende verpakking. Bij twijfel komt er geen link. Voor snacks
wordt gekoppeld op EAN of op een vaste feedtitel in
`scripts/lib/snack-winkel-match.mjs`. Dezelfde run werkt `public/winkels.json`
bij voor voer én snacks. De europrijs uit de feed wordt als vanaf-prijs (laagste
variantprijs) opgeslagen en bij de winkelknop getoond. Ververs de feed
regelmatig; de actuele winkelprijs en de prijs voor de gekozen maat kunnen
afwijken.
