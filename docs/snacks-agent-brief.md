# Onderzoeksopdracht: hondensnacks per merk

Doel: de lokale snackvergelijker vullen met alle actuele hondensnacks van een
merk, op basis van de officiële productpagina's van dat merk.

## Lever één JSON-array op

Elk object heeft exact deze velden:

```json
{
  "id": "merk-productnaam",
  "brand": "Merk",
  "name": "Productnaam zoals op de officiële pagina",
  "snack_type": "zachte_snack",
  "size_class": "alle",
  "package_size": "150 g",
  "protein_source": "Kip",
  "single_protein": true,
  "grain_free": false,
  "kcal_per_100g": 393.94,
  "kcal_per_piece": null,
  "ingredients_text": "Letterlijke ingrediëntenlijst...",
  "trace_text": null,
  "source_url": "https://www.merk.nl/product/...",
  "source_note": "Samenstelling letterlijk overgenomen van de officiële productpagina.",
  "last_checked_at": "2026-11-10",
  "reviewed_at": "2026-11-10",
  "imported_at": null,
  "import_note": null,
  "review_note": "Gecontroleerd tegen de officiële productpagina op 10 november 2026."
}
```

## Regels

1. **Eén regel per recept/smaak.** Verschillende verpakkingsmaten van hetzelfde
   recept komen in één `package_size`, bijvoorbeeld `"70 g / 150 g / 1 kg"`.
   Zijn Small/Medium/Large aparte recepten, maak dan aparte regels.
2. **Alleen snacks.** Geen complete brokken, natvoer, rauwvoer, speelgoed,
   verzorgingsproducten of supplementen. Wel: koekjes, trainingssnacks,
   vleesrepen, gedroogd vlees/vis, kauwstaven, dental snacks en natuurlijke
   kauwsnacks. Functionele kauwsupplementen (zoals gewrichts- of huidchews)
   horen bij de supplementenvergelijker, niet hier.
3. **Officiële bron eerst.** Gebruik de officiële merkpagina of de officiële
   merk-shop. Heeft die geen volledige ingrediëntenlijst, dan mag een
   verkoopsite als backup worden gebruikt (Pets Place, Zooplus, Medpets,
   Brekz), maar alleen als de volledige lijst daar letterlijk staat. Zet dan in
   `source_note`: "Samenstelling overgenomen van een verkoopsite; de officiële
   merkpagina bevat geen volledige ingrediëntenlijst." Geen winkelsites
   gebruiken als de officiële pagina wél een volledige lijst heeft.
4. **Letterlijk.** Neem de ingrediëntenlijst exact over, inclusief percentages,
   leestekens, haakjes en voetnoten zoals `* = biologisch` of `*) gedroogd`.
   Niets samenvatten, herschrijven of aanvullen.
5. **Geen gokwerk.** Ontbreekt een volledige ingrediëntenlijst, is de pagina
   niet bereikbaar of gaat het om een anderstalige variant die afwijkt, laat
   het product dan weg en noem het in de lijst `overgeslagen`.
6. **`snack_type`** is één van: `koekje`, `zachte_snack`, `vleesreep`,
   `gedroogd_vlees`, `gedroogde_vis`, `kauwstaaf`, `dental`, `natural_chew`,
   `overig`.
7. **`size_class`** is één van: `klein`, `middel`, `groot`, `alle`.
8. **`single_protein`** is alleen `true` als de ingrediëntenlijst precies één
   dierlijke eiwitbron noemt. Bij meerdere of vage termen: `false`.
9. **`grain_free`** is alleen `true` als de ingrediëntenlijst geen granen
   noemt. Bij tarwe, maïs, rijst, haver, gerst, granen of twijfel: `false`.
10. **`protein_source`** noemt de concrete dierlijke bron(nen), bijvoorbeeld
    `"Kip"`, `"Rund en kip"`, `"Gevogelte (soort niet genoemd)"` of
    `"Geen dierlijke eiwitbron"`.
11. **`kcal_per_100g` en `kcal_per_piece`** alleen invullen als de bron die
    waarde expliciet noemt; anders `null`.
12. **`trace_text`** is de letterlijke sporenmelding als die op de pagina staat;
    anders `null`.
13. **`source_url`** is de pagina waar de ingrediëntenlijst vandaan komt.
14. **`reviewed_at`** en `last_checked_at` zijn `2026-11-10`; `imported_at` is
    `null`.
15. **Tim's**: Pets Place is de eigenaar van Tim's. Gebruik de Tim's-
    productpagina's op petsplace.nl als officiële merkpagina en zet in
    `source_note`: "Pets Place is de eigenaar van Tim's; de productpagina op
    petsplace.nl is de officiële merkpagina."

## Terugkoppeling

Geef bovenaan een korte lijst `overgeslagen` met de reden. Daarna alleen de
JSON-array in een codeblok. Geen lange toelichting per product.
