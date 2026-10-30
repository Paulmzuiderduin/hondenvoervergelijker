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

## Bezoekersstatistieken

De site gebruikt **Umami Cloud** voor cookieloze, geaggregeerde statistieken.
Het script staat in `index.html`, de statische paginashell en de losse
privacy-/404-pagina. Bezoekers kunnen zich afmelden via
`/?umami-optout=1` en weer aanmelden via `/?umami-optin=1`. Het dashboard staat
op `https://cloud.umami.is`.

## Affiliate aanzetten (zodra Awin goedkeurt)

1. Download de CSV-feeds van Zooplus en Medpets in Awin.
2. Zet ze in `data/winkels/` en maak `feeds.json` (zie `data/winkels/README.md`).
3. Draai `npm run winkels:koppel -- --dry-run`, daarna zonder `--dry-run`.
4. Controleer `data/winkels/rapport.md`.
5. Commit `public/winkels.json`. De winkelknoppen verschijnen automatisch.

De koppeling beïnvloedt de volgorde en de beoordeling niet.

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
