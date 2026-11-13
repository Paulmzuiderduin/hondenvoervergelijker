# Onderhoud en bedrijfsvoering

Alles draait met de gratis onderdelen die er al zijn: GitHub (code en Actions),
Supabase Free (database) en mijn.host (hosting). Er zijn geen abonnementen bij
andere diensten nodig.

## Wat automatisch gebeurt

| wanneer | wat | waar je het ziet |
|---|---|---|
| bij elke push naar `main` | site bouwen, FTP-upload naar mijn.host, server- en sitemapcontrole, rooktest in Chrome, IndexNow-melding | Actions → **Deploy naar mijn.host** |
| elke 6 uur | rooktest van de live site; bij een fout komt er een GitHub-issue | Actions → **Controle live site** |
| elke maandag | broncontrole (gewoon + browser), database bijwerken en een JSON-back-up als artifact | Actions → **Broncontrole** |
| automatisch | SSL-verlenging via mijn.host | DirectAdmin → SSL/TLS Certificates |

Een mislukte broncontrole maakt of werkt één issue bij met de gewijzigde of
onbereikbare producten. De tekst op de site verandert nooit vanzelf.

## Waar de geheimen staan

GitHub → Settings → Secrets and variables → Actions:

- `VITE_SUPABASE_URL`, `VITE_SUPABASE_PUBLISHABLE_KEY` — database lezen.
- `BRONCONTROLE_TOKEN` — controledatums en bronstatus bijwerken.
- `FTP_SERVER`, `FTP_USERNAME`, `FTP_PASSWORD`, `FTP_SERVER_DIR` — upload naar mijn.host.

De sleutels staan nergens in de repository. Bij een wachtwoordwijziging moeten
GitHub en het hostingpaneel allebei worden bijgewerkt.

## Regelmatig handwerk

- **Prins Petfoods** (72 producten): de site blokkeert geautomatiseerde browsers.
  Maak een controlelijst met `npm run bron:lijst -- --merk=Prins`, loop hem door
  en werk de datum bij met `npm run bron:gecontroleerd -- --merk=Prins --ja`.
- **Terra Canis** (32 producten): de fabrikant blokkeert herhaalde
  geautomatiseerde bezoeken. De bronlinks staan in
  `data/import/terra-canis.json`; controleer ze periodiek handmatig via de
  officiële productpagina's. De producten staan daarom op handmatige controle.
- **Taste of the Wild, Purina One, Frolic en Dog Chow**: er is geen bruikbare
  Nederlandse fabrikantpagina, of de Nederlandse formule wijkt af van de
  anderstalige pagina. De Nederlandse etiketten komen daarom van een
  gespecificeerde winkelpagina (Zooplus of Pets Place). Deze producten staan op
  handmatige controle; de bronnote staat op de productkaart.
- **Edgard & Cooper** (38 producten): de wekelijkse browsercontrole krijgt vanaf
  GitHub een andere pagina dan thuis. Draai af en toe lokaal
  `npm run check:bronnen:browser`.
- **Onbekende woorden**: die verschijnen in Beheer onder "Woorden die de keuring
  niet kent". Eén indeling geldt meteen voor alle producten.

## Beheer openen

De beheerlink staat bewust niet meer in de publieke footer. Open Beheer via
`https://hondenvoervergelijker.paulzuiderduin.com/?beheer=1`. De Supabase-inlog
blijft verplicht; de URL is alleen bedoeld om de beheeromgeving buiten het
publieke menu te houden.

## Blog

Blogartikelen staan als Markdown in `content/blog/`. De build maakt daar
statische pagina's, categoriepagina's, een RSS-feed en sitemapvermeldingen van.
Een nieuw artikel toevoegen is een bestand toevoegen en de site opnieuw bouwen.
Zie `docs/blog.md` voor de frontmatter, de redactionele checklist en de
affiliate-afspraken.

Controleer na een inhoudelijke wijziging altijd de bronlinks en werk `updated`
bij. Categoriepagina's verschijnen pas bij minimaal drie artikelen in die
categorie.

De deployworkflow draait elke maandag om 05:00 UTC. Een artikel met een
toekomstdatum wordt dan automatisch gepubliceerd. De redactieplanning staat in
`docs/blog-planning.md`; controleer regelmatig met `npm run blog:planning` of
er nog minimaal vier weken voorraad is.

## Bezoekersstatistieken

De site gebruikt **Umami Cloud** voor cookieloze, geaggregeerde statistieken.
Het script staat in `index.html`, de statische paginashell en de losse
privacy-/404-pagina. Bezoekers kunnen zich afmelden via
`/?umami-optout=1` en weer aanmelden via `/?umami-optin=1`. Het dashboard staat
op `https://cloud.umami.is`.

## Feedback

De knop **Feedback** zweeft rechtsonder in beeld en opent een korte, anonieme
vragenlijst. De invoer gaat naar de Supabase-tabel `public.feedback`. Bezoekers
hebben alleen insert-rechten; lezen kan uitsluitend via het
Supabase-dashboard of de SQL-editor.

```sql
-- Nieuwe feedback bekijken
select created_at, page, rating, results_logical, message, contact
from public.feedback
order by created_at desc;

-- Feedback ouder dan twaalf maanden verwijderen
delete from public.feedback
where created_at < now() - interval '12 months';
```

De Umami-events `feedback-geopend` en `feedback-verzonden` tonen alleen dát de
knop wordt gebruikt, niet de inhoud. Vrije tekst en e-mailadressen gaan nooit
naar Umami. Verwijder een e-mailadres zodra je er niet meer op hoeft te
reageren.

## Affiliate aanzetten (later, optioneel)

De site is geen prijsvergelijker. Bij een winkelknop kan een vanaf-prijs uit de
productfeed staan (de laagste variantprijs); prijzen worden niet onderling
vergeleken en beïnvloeden de selectie, volgorde en beoordeling niet. Ververs de
feeds daarom regelmatig: de actuele winkelprijs kan afwijken.

1. Download de CSV-feeds van Zooplus en Medpets in Awin.
2. Zet ze in `data/winkels/` en maak `feeds.json` (zie `data/winkels/README.md`).
3. Draai `npm run winkels:koppel -- --dry-run`, daarna zonder `--dry-run`.
4. Controleer `data/winkels/rapport.md`.
5. Commit `public/winkels.json`. De winkelknoppen verschijnen automatisch, met de vanaf-prijs uit de feed.

De koppeling beïnvloedt de volgorde en de beoordeling niet.

### Dierenwinkel XL (TradeTracker)

Dierenwinkel XL is goedgekeurd als TradeTracker-campagne. De productfeed staat
lokaal in `data/winkels/dierenwinkelxl.xml` en wordt niet gecommit.

1. Download de actuele XML-feed uit TradeTracker en vervang het lokale bestand.
2. Draai `npm run winkels:dierenwinkelxl -- --dry-run` en controleer het rapport.
3. Draai `npm run winkels:dierenwinkelxl` om `public/winkels.json` bij te werken.
4. Commit alleen `public/winkels.json`.

De import gebruikt strikte matching: exacte merk- en productnaam, en waar
mogelijk een overlappende verpakking. Bij twijfel wordt er geen link toegevoegd.
Voor snacks gebeurt de koppeling op EAN of op een vaste feedtitel in
`scripts/lib/snack-winkel-match.mjs`; dezelfde run werkt zowel de voer- als de
snacklinks bij. De europrijs uit de feed wordt als vanaf-prijs (laagste
variantprijs) opgeslagen en bij de winkelknop getoond. Ververs de feed
regelmatig; de actuele winkelprijs kan afwijken.

### Alsa Nature (TradeTracker)

Alsa Nature is goedgekeurd als TradeTracker-campagne. De productfeed staat
lokaal in `data/winkels/alsa-nature.xml` en wordt niet gecommit.

1. Download de actuele XML-feed uit TradeTracker en vervang het lokale bestand.
2. Draai `npm run winkels:alsa-nature -- --dry-run` en controleer het rapport.
3. Draai `npm run winkels:alsa-nature` om `public/winkels.json` bij te werken.

De feed bevat vooral het merk `alsa-nature` en `isegrim`. Zolang die producten
niet in de catalogus staan, levert de koppeling nul links op. Het script staat
klaar om ze automatisch te koppelen zodra de producten met ingrediënten en
voedingswaarden zijn toegevoegd.

### Alsa Nature en Isegrim importeren

De officiële productpagina's van Alsa Nature bevatten de samenstelling en
analytische bestanddelen. Het importscript haalt die één keer op en schrijft:

- `data/import/alsa-nature.json`, `isegrim.json` en `isegrim-roots.json`
- bijbehorende voeding in `data/import/voedingswaarden/`
- nieuwe snacks in `data/snacks.json`

```bash
npm run import:affiliate -- --concurrency=8
npm run import:affiliate -- --alleen=voer
npm run import:affiliate -- --alleen=snacks
```

Daarna genereert `node scripts/maak-import-sql.mjs --bestanden=alsa-nature,isegrim,isegrim-roots`
de SQL-batches. De gecombineerde versie staat in
`data/import/sql/alsa-isegrim-import-20261113.sql`. Die moet in de Supabase
SQL Editor worden uitgevoerd voordat de voerproducten live zichtbaar zijn.
Snacks gaan direct mee met de site.

### Ultra Premium Direct (Daisycon)

Ultra Premium Direct is goedgekeurd als Daisycon-campagne. De feed staat lokaal
in `data/winkels/ultra-premium-direct.xml` en wordt niet gecommit.

1. Download de actuele XML-feed uit Daisycon en vervang het lokale bestand.
2. Draai `npm run winkels:ultra-premium-direct -- --dry-run`.
3. Draai `npm run winkels:ultra-premium-direct` om `public/winkels.json` bij te werken.

De koppeling gebruikt alleen een exacte EAN. Producten zonder EAN of met een
afwijkende EAN krijgen geen winkelknop; een verkeerde link is erger dan geen
link. Het rapport staat in `data/winkels/rapport-ultra-premium-direct.md`.

## Terugvallen op GitHub Pages

GitHub Pages is ingericht als terugvaloptie en heeft geen eigen domein meer.
Bij een storing op mijn.host:

1. Zet in de DNS het A-record van `hondenvoervergelijker` terug naar de
   GitHub Pages-adressen (of verwijder het en voeg een CNAME naar
   `paulmzuiderduin.github.io` toe).
2. Start de workflow **Deploy GitHub Pages (terugvaloptie)** handmatig.
3. Los de storing op en zet daarna de DNS terug.

## Back-up

De wekelijkse broncontrole bewaart een JSON-export van `products`,
`recipe_versions`, `recipe_ingredients` en `ingredient_terms` als artifact
(30 dagen). Lokaal kan dat ook met `npm run backup:db`; de bestanden komen in
`data/backup/<datum>/` en staan niet in git.

## Kosten

- GitHub: gratis (publieke repository; Actions en artifacts binnen de gratis ruimte).
- Supabase: Free.
- mijn.host: bestaand hostingpakket.
- IndexNow, Let's Encrypt en de gebruikte npm-pakketten: gratis.
