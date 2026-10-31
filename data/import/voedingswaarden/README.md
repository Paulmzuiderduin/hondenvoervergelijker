# Voedingswaarden importeren

Deze map bevat per merk één bestand met de analytische bestanddelen zoals de
fabrikant ze publiceert. Het formaat is bewust los van de ingrediëntenimport:
de bestaande etiketbestanden blijven ongewijzigd.

## Formaat

```json
{
  "merk": "Royal Canin",
  "opgehaald": "2026-10-30",
  "producten": [
    {
      "merk": "Royal Canin",
      "naam": "Adult Medium Dogs",
      "voertype": "kibble",
      "verpakking": "4 / 10 kg",
      "bronUrl": "https://www.royalcanin.com/nl/...",
      "gecontroleerd": "2026-10-30",
      "basis": "as-fed",
      "waarden": {
        "protein": 26,
        "fat": 15,
        "fiber": 2.6,
        "ash": 6.5,
        "moisture": 10,
        "kcal": 370,
        "calcium": 1.4,
        "phosphorus": 1.1,
        "omega3": 0.3,
        "omega6": 1.5
      },
      "bronTekst": "Ruw eiwit 26%, ruw vet 15%, ...",
      "notitie": "Kcal omgerekend van kcal/kg naar kcal/100 g."
    }
  ]
}
```

- `protein` en `fat` zijn verplicht. De andere waarden mogen `null` zijn als de
  fabrikant ze niet vermeldt.
- Percentages zijn **as-fed**, zoals op het etiket. `kcal` is **kcal per 100 g**;
  reken kcal/kg om door te delen door 10.
- Vul niets aan en schat niets. Laat een waarde liever `null` dan een gok.
- `bronTekst` is de letterlijke alinea met analytische bestanddelen, voor de
  controle achteraf. Bij een PDF of afbeelding mag dat een korte aanduiding zijn.
- `notitie` legt uit wat is omgerekend of waarom een waarde ontbreekt.

## Werkwijze

1. Agenten halen de waarden van de bronpagina en schrijven het JSON-bestand.
2. Een mens controleert de steekproef en alle omgerekende waarden.
3. `node scripts/maak-voedingswaarde-sql.mjs` maakt de SQL-batch.
4. De SQL-batch wordt in Supabase uitgevoerd.
5. `node scripts/rapporteer-voedingswaarden.mjs` toont de dekking.

## Broncontrole

`node scripts/controleer-voedingswaarden-bronnen.mjs` vergelijkt de opgeslagen
`bronTekst` met de actuele bronpagina. Het script kijkt naar de getallen in de
analyse, zodat een andere tabelopmaak geen valse melding geeft. Het rapport
komt in `broncontrole.md`. De wekelijkse workflow `Broncontrole` draait dit
script na de ingrediëntencontrole. Een verschil wordt nooit automatisch
doorgevoerd: een mens beoordeelt het en past de import of het product aan.

## Plausibiliteit

`node scripts/controleer-voedingswaarden-plausibiliteit.mjs` controleert op
macro-sommen boven 100%, onmogelijke vezel- of kcal-waarden en vocht dat niet
bij het voertype past. Het rapport komt in `plausibiliteit.md`. Op de kaart
krijgt zo'n product een waarschuwing. Een waarde die aantoonbaar onmogelijk is,
wordt niet getoond en niet als filter- of sorteerwaarde gebruikt; de rest van de
analyse blijft zichtbaar. Dezelfde controle draait wekelijks in de workflow.

Voor Jarco Natural Medium Adult Kip staat de bronwaarde 33% ruwe celstof nog in
de database. De gegenereerde batch
`data/import/sql/batch-voeding-20261031-13.sql` zet die op null; tot de batch is
toegepast, verbergt en negeert de site de waarde al.

## Pilot (fase 1)

Vijf merken uit de top 10, samen 25 producten:

- Royal Canin: 3 brokken, 2 natvoer
- Hill's Science Plan: 3 brokken, 2 natvoer
- Eukanuba: 3 brokken, 2 natvoer
- DARF: 2 brokken, 1 natvoer, 2 rauwvoer
- Butcher's: 5 natvoer

Doel: minstens één bron met kcal, één zonder kcal en één met alleen een PDF of
afbeelding. De uitkomsten bepalen of het formaat en de validatie aangepast
moeten worden vóór de grote batches.
