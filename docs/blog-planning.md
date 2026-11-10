# Blogplanning en wekelijkse publicatie

De blog publiceert één nieuw artikel per week. Artikelen staan als Markdown in
`content/blog/` en krijgen een publicatiedatum in de toekomst. De build neemt
alleen artikelen mee waarvan de datum op of vóór vandaag ligt.

De deployworkflow draait elke maandag om 05:00 UTC. Op dat moment wordt het
artikel van die week automatisch zichtbaar, samen met de bijgewerkte sitemap,
RSS-feed en `llms.txt`.

## Planning

De eerste zeven artikelen zijn gepubliceerd op 9 november 2026:

- Hoe lees je een hondenvoer-etiket?
- Wat zegt het eiwitpercentage over hondenvoer?
- As-fed en droge stof uitgelegd
- Natvoer of brokken: wat is beter?
- Hondenvoer zonder kip vergelijken
- Hondenvoer voor een gevoelige hond kiezen
- Hoe stap je over op ander hondenvoer?

Daarna volgt twaalf weken lang één artikel per maandag:

| Week | Publicatie | Artikel | Categorie | Zoekintentie |
| --- | --- | --- | --- | --- |
| 1 | 2026-11-16 | Hondenvoer zonder granen: waar let je op? | Hondenvoer kiezen | hondenvoer zonder granen |
| 2 | 2026-11-23 | Wat betekenen dierlijke bijproducten in hondenvoer? | Hondenvoeding uitgelegd | dierlijke bijproducten hondenvoer |
| 3 | 2026-11-30 | Hoeveel voer heeft een hond nodig? | Praktisch voeren | hoeveel hondenvoer per dag |
| 4 | 2026-12-07 | Hondenvoer voor een puppy kiezen | Hondenvoer kiezen | puppyvoer kiezen |
| 5 | 2026-12-14 | Hondenvoer voor een senior kiezen | Hondenvoer kiezen | senior hondenvoer |
| 6 | 2026-12-21 | Hondenvoer met granen: is dat slecht? | Hondenvoeding uitgelegd | granen hondenvoer slecht |
| 7 | 2026-12-28 | Hoe bewaar je hondenvoer? | Praktisch voeren | hondenvoer bewaren |
| 8 | 2027-01-04 | Hondenvoer zonder rund vergelijken | Hondenvoer kiezen | hondenvoer zonder rund |
| 9 | 2027-01-11 | Hondenvoer voor kleine honden | Hondenvoer kiezen | hondenvoer kleine honden |
| 10 | 2027-01-18 | Hondenvoer voor grote honden | Hondenvoer kiezen | hondenvoer grote honden |
| 11 | 2027-01-25 | Hondenvoer en tandgezondheid | Praktisch voeren | hondenvoer tanden |
| 12 | 2027-02-01 | Hondenvoer en gewichtsbeheersing | Praktisch voeren | hondenvoer afvallen |

Na 1 februari 2027 moet de planning worden aangevuld. Houd minimaal vier
weken voorraad aan, zodat een drukke week of een mislukte deploy geen gat
veroorzaakt.

## Hoe de planning werkt

1. Een artikel krijgt een `date` in de frontmatter. Ligt die datum in de
   toekomst, dan wordt het bestand wel gevalideerd maar niet gepubliceerd.
2. De wekelijkse deploy op maandag bouwt de site opnieuw. Artikelen met
   `date <= vandaag` komen dan vanzelf online.
3. De sitemap, RSS-feed, categoriepagina's en `llms.txt` worden automatisch
   bijgewerkt.
4. Een artikel met `draft: true` wordt altijd overgeslagen, ook na de
   publicatiedatum.

## Controleren

```bash
npm run blog:planning
npm run blog:planning -- --datum=2026-12-07
npm run blog:planning -- --streng --minimum=6
npm run blog:planning -- --datum=2026-11-16 --streng
```

De controle toont de komende artikelen en waarschuwt bij:

- twee artikelen in dezelfde week;
- twee artikelen op dezelfde datum;
- een publicatiedatum die geen maandag is;
- minder dan het ingestelde minimum aan voorraad;
- een gat van meer dan acht dagen naar het volgende artikel.

Met `--streng` eindigt de controle met een foutcode. Dat is handig voor een
handmatige controle, maar niet als verplichte stap in de deploy: een lege
planning mag de site niet offline houden.

## Lokaal testen

Je kunt een toekomstige publicatie simuleren zonder de datum te wijzigen:

```bash
BLOG_VANDAAG=2026-11-16 npm run build
```

Controleer daarna of het artikel van die week in `dist/blog/` staat en of de
sitemap en RSS-feed het juiste aantal pagina's noemen.

## Nieuwe artikelen toevoegen

1. Kies de eerstvolgende vrije maandag.
2. Maak `content/blog/<slug>.md` met de verplichte frontmatter.
3. Voeg minimaal twee interne links en een link naar de vergelijker toe.
4. Voeg bronnen toe en controleer de medische disclaimer.
5. Draai `npm run blog:planning` en `npm run test:unit`.
6. Commit en push. Het artikel blijft verborgen tot de geplande maandag.

## Wat de workflow niet doet

De workflow schrijft geen artikelen en vult de planning niet automatisch aan.
De redactie blijft verantwoordelijk voor inhoud, bronnen en voldoende
voorraad. De automatisering zorgt alleen dat een bestaand artikel op de
afgesproken maandag wordt gepubliceerd.
