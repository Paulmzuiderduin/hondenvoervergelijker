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

## Bestanden die niet in git horen

- `feeds.json` (lokale configuratie)
- `*.csv` (feeds kunnen groot zijn en trackinglinks bevatten)
- `rapport.md` (wordt opnieuw gegenereerd)

Alleen `public/winkels.json` wordt gecommit, zodat de statische site de knoppen
kan tonen.
