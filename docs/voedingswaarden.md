# Voedingswaarden

Status: **fase 0 afgerond en live; fase 1 pilot toegepast** (25 producten van 5 top-10-merken). **Fase 2:** de data-collectie is compleet — alle **786 top-10-producten** zijn gevalideerd. Daarvan staan **586 live**; de **200 Royal Canin-producten** staan klaar in één gecombineerde batch en wachten op de Supabase-import.

## Uitgangspunten

- Waarden komen van dezelfde bronpagina als de ingrediëntenlijst, tenzij de beheerder een aparte bron invult.
- Percentages zijn **as-fed**, zoals op het etiket. Ze worden niet omgerekend naar droge stof.
- Ontbrekende waarden worden niet geschat. De site toont dan geen waarde; in beheer staat dat ze ontbreken.
- De kernset is: ruw eiwit, ruw vet, ruwe vezel, ruwe as, vocht en metaboliseerbare energie (kcal/100 g).
- De standaardset bevat daarnaast calcium, fosfor, omega-3 en omega-6. Die vier worden standaard verzameld en getoond waar de fabrikant ze vermeldt; ze tellen niet mee voor de status “volledig”, omdat veel etiketten ze niet publiceren.
- Waarden hangen aan een receptversie. Bij een nieuwe receptversie worden ze alleen overgenomen als de ingrediëntenlijst gelijk is gebleven.

## As-fed versus droge stof

- **As-fed** is de waarde zoals op het etiket: het percentage van het product inclusief vocht. Fabrikanten publiceren deze waarde en de meeste eigenaren herkennen haar.
- **Droge stof** rekent het vocht weg. Daardoor kun je natvoer en brokken eerlijk met elkaar vergelijken. Een natvoer met 10% eiwit en 80% vocht komt bijvoorbeeld op ongeveer 50% eiwit op droge stof; een brok met 26% eiwit en 10% vocht op ongeveer 29%.

De site toont **as-fed** als standaard, omdat dat de bronwaarde is en er niets hoeft te worden herberekend. Een droge-stofweergave komt later als extra, duidelijk gelabelde berekening.

## Database

- `public.nutrition_terms` — de toegestane nutrienten, labels, eenheden en volgorde.
- `public.recipe_nutrition` — de waarden per receptversie.
- `public.recipe_versions.nutrition_source_url`, `nutrition_checked_at`, `nutrition_note` — herkomst en controle.
- `public.save_product_with_recipe(..., p_nutrition jsonb default null)` — slaat product, recept en voedingswaarden atomair op.

De vorm van `p_nutrition`:

```json
{
  "source_url": "https://...",
  "checked_at": "2026-10-30",
  "note": "Kcal niet vermeld op de bron.",
  "values": {
    "protein": 26,
    "fat": 15,
    "fiber": 2.6,
    "ash": 6.5,
    "moisture": null,
    "kcal": null
  }
}
```

`null` betekent: bestaande waarden behouden als de ingrediëntenlijst gelijk is; bij een gewijzigde lijst vervallen ze. Een leeg `values`-object wist de waarden bewust.

## Fases

### Fase 0 — fundament (afgerond)

- Migratie met `nutrition_terms` en `recipe_nutrition`.
- RLS, grants, index en validatietrigger.
- `src/lib/nutrition.js` met labels, eenheden, normalisatie, samenvatting en validatie.
- Productkaart toont voedingswaarden alleen als ze aanwezig zijn.
- Beheerformulier met kern- en optionele waarden, bron, controledatum en notitie.
- Beheer toont hoeveel producten volledig, gedeeltelijk of geen voedingswaarden hebben.
- Unit tests.

### Fase 1 — pilot binnen de top 10 (afgerond)

- 25 producten van 5 merken uit de top 10, verdeeld over brokken, natvoer en rauwvoer: Royal Canin, Hill's Science Plan, Eukanuba, DARF en Butcher's.
- Bronnen met en zonder kcal, plus een aantal pagina's waar waarden alleen in een tabel of na omrekening staan.
- Agenten deden de eerste extractie; de waarden zijn via het importscript gevalideerd en in een rollback-transactie getest.
- Resultaat: 25 gematchte producten, 186 waarden, 12 volledig (6 kernwaarden), 13 gedeeltelijk, 14 met kcal.
- Importformaat en validatie zijn hierna niet meer gewijzigd.

### Fase 2 — rest van de top 10 (loopt)

Royal Canin (205), Hill's (140), Eukanuba (75), Prins (72), Purina (56), Jarco (57), Darf (51), Butcher's (48), Renske (44) en Edgard & Cooper (38). Samen 786 producten. Inmiddels zijn 586 producten voorzien; de resterende 200 zijn Royal Canin. Per merk draait één agent, met batches van maximaal 25 producten.

### Fase 3 — overige producten

De resterende ongeveer 690 producten, inclusief bronnen die alleen via de browser bereikbaar zijn. Na elke batch een dekkingsrapport.

### Fase 4 — UI, SEO en filters

- Merkpagina's en methodiekpagina bijwerken.
- `llms.txt` bijwerken.
- Eventueel sorteren/filteren op eiwit, vet of kcal, met waarschuwing voor as-fed en natvoer versus brokken.
- Build, tests, rooktest, deploy en live controle.

## Besluiten

- **Calcium, fosfor, omega-3 en omega-6** horen bij de standaardset. Ze worden verzameld en getoond waar ze op de bron staan.
- **Producten zonder voedingswaarden blijven zichtbaar.** De vergelijker gaat primair over allergenen; een ontbrekende voedingswaarde mag een product niet verbergen.
- **As-fed is de standaardweergave.** Dat is de waarde zoals de fabrikant hem op het etiket zet en waar de meeste eigenaren mee werken. Veterinaire voedingsdeskundigen gebruiken droge stof vooral om natvoer en brokken eerlijk te vergelijken; dat komt later als extra, duidelijk gelabelde berekening.
- **Filters en sortering komen later**, in fase 4.
- **Agenten doen de eerste extractie**, met menselijke controle op de steekproef en op alle omgerekende waarden.
- **We beginnen bij de top 10 merken**, na een kleine pilot daarbinnen.
