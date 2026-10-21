# Uitbreiding assortiment — werkmap voor agents

Deze map is tijdelijk werkgebied. Hier schrijven agents per merk één JSON-bestand
met alle complete hondenvoedingsvarianten die zij op de bronpagina's kunnen
vinden. De hoofdagent controleert en voegt daarna samen met `data/import/`.

## Opdracht

- Volledig assortiment complete hondenvoeding: brokken (`kibble`), natvoer
  (`wet`) en rauwvoer (`raw`).
- Eén record per recept/smaak/formule. Verpakkingsmaten van hetzelfde recept
  staan samen in `verpakking`, zoals `"2,5 / 7 / 12 kg"`.
- Geen snacks, kauwstaafjes, melk, supplementen, kattenvoer of verzorging.
- Dierenartsdieetvoeding is wél complete voeding en hoort erbij.
- Neem ook varianten mee die al in de app staan; de import ontdubbelt later.
  Het doel is juist dat ontbrekende varianten boven water komen.

## Ook de bestaande merken

De opdracht geldt voor **alle 34 merken op de lijst**, dus ook de merken die al
in de app staan. Een bestaand importbestand of een bestaande live-productrij is
géén bewijs dat het assortiment compleet is.

Voor een bestaand merk geldt daarom extra:

1. Bezoek de officiële assortimentspagina en sitemap opnieuw; gebruik de huidige
   live-producten alleen als vergelijking, niet als bron van waarheid.
2. Breng het volledige assortiment in kaart, inclusief lijnen die nog niet in de
   app staan (puppy, senior, large breed, natvoer, dieetvoeding, nieuwe smaken).
3. Schrijf álle gevonden recepten naar het werkbestand. De import ontdubbelt
   daarna tegen de live-database.
4. Rapporteer in het merkenrapport hoeveel recepten de bron heeft, hoeveel er
   al in de app stonden en welke nieuwe varianten zijn toegevoegd.
5. Een merk is pas "klaar" als het officiële assortiment is gecontroleerd en de
   overgebleven gaten met reden in het rapport staan.

## Bron en betrouwbaarheid

1. Gebruik de officiële fabrikantensite, bij voorkeur de Nederlandse pagina.
2. `etiketOrigineel` is de samenstelling letterlijk zoals op de pagina staat:
   dezelfde volgorde, percentages, getallen en leestekens. Niets samenvatten,
   aanvullen of weglaten.
3. Is de pagina niet Nederlands, vertaal de samenstelling naar het Nederlands en
   zet de verplichte aantekening uit `data/import/README.md`.
4. Geen gokwerk. Ontbreekt de samenstelling, staat hij achter JavaScript of is
   de pagina afgeschermd? Neem het product op met `twijfel` en zonder
   etiketvelden. Liever een gat dan een verkeerde lijst.
5. Noteer bij elk product de exacte `bronUrl` van de pagina met de samenstelling.
6. Verzin geen producten, namen, maten of GTIN's. `gtin` alleen als de barcode
   letterlijk op de pagina staat.

## Vorm

Zelfde vorm als `data/import/README.md`:

```json
{
  "bron": "https://www.example.nl",
  "opgehaald": "2026-10-20",
  "producten": [
    {
      "merk": "Voorbeeld",
      "naam": "Adult Kip",
      "voertype": "kibble",
      "verpakking": "2 / 12 kg",
      "gtin": null,
      "bronUrl": "https://www.example.nl/product/adult-kip",
      "etiketOrigineel": "Kip (…), rijst (…), …",
      "etiketNl": "Kip (…), rijst (…), …",
      "aantekening": null,
      "twijfel": null
    }
  ]
}
```

## Bestandsnaam en rapport

- JSON: `data/import/uitbreiding/<merk-slug>.json`
- Rapport: `data/import/uitbreiding/<merk-slug>-rapport.md`

Het rapport bevat minimaal:

- gebruikte bronpagina's en/of sitemap;
- aantal gevonden varianten per voertype;
- welke producten zijn overgeslagen en waarom;
- welke producten in `twijfel` staan en waarom;
- of het assortiment aantoonbaar volledig is (en hoe je dat hebt gecontroleerd).

## Grenzen

- Geen database-writes, geen SQL uitvoeren, geen commits, geen bestaande
  importbestanden overschrijven.
- Beleefd ophalen: herkenbare user-agent, maximaal ongeveer één verzoek per
  seconde per site, robots.txt respecteren.
- Bij 403/429 stoppen en dat in het rapport zetten.
