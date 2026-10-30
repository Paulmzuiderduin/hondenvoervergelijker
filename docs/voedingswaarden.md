# Voedingswaarden

Status: **fase 0 afgerond** (database, gedeelde nutrientenlijst, beheerformulier en weergave voorbereid). De datacollectie start in fase 1.

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

### Fase 1 — pilot binnen de top 10

- 25 producten van 5 merken uit de top 10, verdeeld over brokken, natvoer en rauwvoer.
- Eén bron met kcal, één zonder kcal, één met alleen een PDF of afbeelding.
- Agenten doen de eerste extractie, net als bij de allergenen; een mens controleert de steekproef en alle omgerekende waarden.
- Meet tijd per product en stel het importformaat bij.

### Fase 2 — top 10 merken

Royal Canin (205), Hill's (140), Eukanuba (75), Prins (72), Purina (58), Jarco (57), Darf (51), Butcher's (48), Renske (44), Edgard & Cooper (38). Samen ongeveer 788 producten. Hier beginnen we, na de pilot.

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
