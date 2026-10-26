# Importbestanden

Hier komen de producten die automatisch van een bronpagina zijn overgenomen:
één bestand per merk, `<merk>.json`. Uit deze bestanden maakt
`scripts/maak-import-sql.mjs` een SQL-bestand dat in de Supabase SQL Editor
geplakt wordt (ná de migraties).

De site noemt de automatische herkomst in de disclaimer, niet op elke kaart.
Een product krijgt nooit de badge "Door een mens gecontroleerd" zonder
menselijke klik: die uitspraak staat in `reviewed_at` en wordt hier niet gezet.
De herkomst (`imported_at`, `import_hash`, `import_note`) wordt pas door het
SQL-bestand gezet.

## Vorm

```json
{
  "bron": "https://www.trovet.com",
  "opgehaald": "2026-10-19",
  "producten": [
    {
      "merk": "Trovet",
      "naam": "Hypoallergenic Rund & Rijst",
      "voertype": "kibble",
      "verpakking": "3 / 12,5 kg",
      "gtin": null,
      "bronUrl": "https://www.trovet.com/product/hypoallergenic-dog-beef/",
      "etiketOrigineel": "Rund (…)",
      "etiketNl": "Rund (…)",
      "aantekening": null,
      "twijfel": null
    }
  ]
}
```

`voertype` is `kibble` (brokken), `wet` (natvoer) of `raw` (rauwvoer).

## Regels (hard)

1. **Letterlijk.** De ingrediëntenlijst komt precies zoals op de pagina, in
   dezelfde volgorde, met dezelfde percentages, getallen en leestekens. Niets
   aanvullen, niets weglaten, niet samenvatten, niet herschrijven.
2. **Eén variant per product.** Hoort de lijst bij één smaak of uitvoering, dan
   is dat het product. Geeft de pagina één lijst voor meerdere verpakkingen van
   hetzelfde recept, zet die maten dan in `verpakking`, bijvoorbeeld
   "2,5 / 7 / 12 kg".
3. **Nederlands.** Staat de pagina in het Nederlands, dan is `etiketNl` gelijk
   aan `etiketOrigineel` en blijft `aantekening` leeg. Staat de pagina in het
   Duits of Engels, vertaal dan naar het Nederlands met dezelfde percentages en
   dezelfde volgorde, en zet als `aantekening`: "Nederlandse vertaling van de
   etiket tekst; origineel staat op de bronpagina van het product."
4. **Alleen volledig hondenvoer.** Brokken, natvoer of rauwvoer. Geen snacks,
   geen kattenvoer, geen supplementen, geen verzorgingsproducten.
5. **Alleen wat je echt ziet.** Is de lijst er niet — laadt de pagina hem met
   JavaScript, staat hij achter een tabblad dat je niet kunt openen, of lijkt
   hij afgekapt — zet dat in `twijfel` en laat `etiketOrigineel` en `etiketNl`
   weg. Nooit gokken. Nooit een andere pagina gebruiken zonder dat erbij te
   zetten. Liever een product missen dan een verkeerde lijst invoeren.
6. **Geen aannames over allergenen.** Vink niets aan en classificeer geen
   woorden; dat doet de site zelf uit de tekst.
7. **Beleefd ophalen.** Een herkenbare user-agent met contact, hooguit één
   verzoek per seconde per site, robots.txt respecteren. Bij 403 of 429:
   stoppen en dat melden in `twijfel`.

## Velden

| veld | verplicht | betekenis |
|---|---|---|
| `merk` | ja | zoals de fabrikant het schrijft |
| `naam` | ja | productnaam; vertaald als de bron anderstalig is |
| `voertype` | ja | kibble, wet of raw |
| `verpakking` | nee | maten zoals op de pagina ("2,5 / 7 / 12 kg") |
| `gtin` | nee | alleen als de barcode letterlijk op de pagina staat; anders null |
| `bronUrl` | ja | de pagina waar de lijst vandaan komt |
| `etiketOrigineel` | ja | de lijst zoals op de pagina (brontaal) |
| `etiketNl` | ja | dezelfde lijst in het Nederlands |
| `aantekening` | nee | alleen bij een vertaling |
| `twijfel` | nee | reden waarom een mens moet kijken; dan geen etiketvelden |

## Wat er daarna gebeurt

- `scripts/maak-import-sql.mjs` controleert elk product (verplichte velden,
  dubbele namen, dubbele GTIN's, bestaande producten in de live database) en
  maakt één SQL-bestand per batch van maximaal 50 producten in
  `data/import/sql/`. Twee varianten met dezelfde ingrediëntenlijst zijn niet
  automatisch hetzelfde product: kleine-rassenvoer kan dezelfde formule hebben
  als het standaardvoer. Er wordt daarom ontdubbeld op merk, naam en
  verpakking, niet op alleen de etiket tekst.
- Dat bestand zet per product: het product (gepubliceerd), de receptversie met
  de Nederlandse tekst, `imported_at` (het moment van plakken), `import_hash`
  (vingerafdruk van de originele tekst, voor de bronbewaking later) en
  `import_note` (de vertaalaantekening).
- Producten met een gevulde `twijfel` komen niet in het SQL-bestand; die worden
  apart gemeld zodat een mens ernaar kan kijken.
- `scripts/controleer-bronnen.mjs` kijkt daarna of de bronpagina nog dezelfde
  etiket tekst toont (bronbewaking). Verandert een pagina, dan staat dat in
  `data/import/broncontrole.md`; de tekst op de site verandert niet vanzelf en
  er wordt niets stilzwijgend overschreven.

## Automatische bronbewaking (sinds 2026-10-26)

De bronbewaking draait elke maandag automatisch via
`.github/workflows/broncontrole.yml` en schrijft het resultaat ook terug naar
Supabase:

| uitkomst | wat er in de database gebeurt |
|---|---|
| `gelijk` | `last_checked_at` wordt vandaag en `source_status` wordt `ok`. Hierdoor verlopen ongewijzigde etiketten niet na zes maanden. |
| `gewijzigd` | `source_status` wordt `gewijzigd` met een korte `source_note`. De etiket tekst blijft staan; het product verschijnt bovenaan in Beheer bij "Wat vraagt aandacht". |
| `onbereikbaar` | Alleen `source_note` wordt gevuld; `last_checked_at` blijft staan. |

- De koppeling gebruikt de RPC `record_source_checks` met het geheim
  `BRONCONTROLE_TOKEN` (staat in `public.sync_config` en in de GitHub-secrets).
- Merken waarvan de site automatische verzoeken blokkeert (Prins, Smølke,
  Yarrah) worden standaard overgeslagen. Controleer die incidenteel handmatig
  met `node scripts/controleer-bronnen.mjs --ook-browser-sites --merk=Prins`.
- Het script controleert verschillende sites parallel (standaard 6) maar houdt
  per site minimaal 1,5 seconde pauze aan. Zo blijven 1.400+ producten binnen
  enkele minuten gecontroleerd en blijft het verzoekgedrag beleefd.
- Zodra een beheerder een product opslaat of "Nagelopen" klikt, zet
  `save_product_with_recipe`/`set_recipe_reviewed` de status weer op `ok`.

