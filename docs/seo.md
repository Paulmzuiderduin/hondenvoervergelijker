# SEO: sitemap, merk- en allergeenpagina's en zoekmachine-meldingen

Deze map beschrijft hoe de vindbaarheid van de site werkt. Alles is gratis en
draait mee in de bestaande GitHub-workflow; er is geen extra dienst of account
voor nodig.

## Wat er automatisch gebeurt bij elke deploy

1. `npm run build` bouwt de React-app.
2. `npm run postbuild` (script `scripts/maak-seo-paginas.mjs`) schrijft:
   - `/hondenvoer-allergieen.html` — uitleg over allergie en etiketten (met FAQ-schema);
   - `/hoe-wij-vergelijken.html` — methodiek en onafhankelijkheid;
   - `/over-ons.html`, `/contact.html`, `/voorwaarden.html` en `/disclaimer.html` — vertrouwens- en juridische pagina's;
   - `/merken/` — overzicht van alle merken;
   - `/merken/<merk>.html` — één statische pagina per merk met alle recepten;
   - `/hondenvoer-zonder.html` — overzicht van alle allergenen;
   - `/hondenvoer-zonder-<allergeen>.html` — per allergeen de recepten die het
     etiket dat ingrediënt niet noemt (alleen als er minimaal 10 zijn), met
     kort antwoord, FAQ en citeerblok;
   - `/etikettenonderzoek.html` — dataonderzoek naar verzameltermen en allergenen;
   - `/sitemap.xml` — alle pagina's met prioriteit en datum.
3. Na de deploy controleert de workflow de upload, alle sitemap-URL's en de
   belangrijkste gebruikersroutes in een echte browser.
4. Daarna meldt `scripts/indexnow.mjs` alle URL's uit de sitemap bij IndexNow.
   Dat is de gratis meldingsroute voor Bing en andere deelnemers.

De pagina's worden uit de live Supabase-database gevuld. Lukt dat niet
(bijvoorbeeld bij een storing), dan blijven de uitlegpagina's en de basissitemap
gewoon werken; de build faalt dan niet.

De allergeenpagina's gebruiken dezelfde keuring als de site, inclusief de
woordenlijst uit `ingredient_terms`. Een pagina wordt alleen gemaakt als er
minimaal tien recepten overblijven; zo ontstaan geen dunne pagina's.

## Google Search Console

- Eigendom: `https://hondenvoervergelijker.paulzuiderduin.com/`.
- Sitemap: `/sitemap.xml` (eenmalig indienen; daarna leest Google hem zelf).
- Het duurt meestal enkele dagen tot weken voordat nieuwe URL's geïndexeerd zijn.
  "Ontdekt" in het sitemap-rapport betekent dat Google de URL kent, niet dat hij
  al in de resultaten staat.
- Voor belangrijke pagina's kan via **URL-inspectie → Indexering aanvragen** om
  een snellere controle worden gevraagd (circa 10 per dag).

## Bing Webmaster Tools

- Kan de property uit Search Console importeren.
- Sitemap: dezelfde `/sitemap.xml`.
- IndexNow draait automatisch na elke deploy. Handmatig:

```bash
npm run seo:indexnow -- --dry-run   # laat zien welke URL's gemeld worden
npm run seo:indexnow                # echt melden
```

De sleutel staat in `public/<sleutel>.txt` en in `scripts/indexnow.mjs`. Dat is
geen geheim: IndexNow gebruikt het bestand om te controleren dat de melder de
site beheert.

## Interne links

- De homepage linkt naar de uitlegpagina's, het merkenoverzicht, het
  allergenenoverzicht, het etikettenonderzoek en het privacybeleid.
- Elke productkaart linkt naar de merkpagina van dat merk.
- Elke merkpagina linkt naar acht andere merken en terug naar het overzicht.
- Elke allergeenpagina linkt naar acht andere allergeenpagina's, het
  allergenenoverzicht, de uitlegpagina en de vergelijker met dat allergeen al
  geselecteerd.
- Elke merkpagina kan met `/?merk=<naam>` direct in de vergelijker worden geopend;
  een allergeen met `/?allergeen=<key>`.

## LLM's en AI-zoekresultaten

- `/robots.txt` staat expliciet open voor onder meer GPTBot, OAI-SearchBot,
  ChatGPT-User, ClaudeBot, PerplexityBot, Google-Extended, Bingbot, Applebot en
  CCBot.
- `/llms.txt` geeft een compact overzicht van de site, de belangrijkste pagina's,
  de methodiek, de citeerwijze en het contactadres. Dit is een aanvulling op de
  sitemap, geen vervanging.
- De allergeenpagina's hebben een kort antwoord bovenaan, een FAQ-blok met
  `FAQPage`-schema en een citeerblok met datum en URL. Zo kunnen zoekmachines en
  LLM's de kern van de pagina makkelijker overnemen.
- `/etikettenonderzoek.html` bevat unieke, geaggregeerde cijfers over
  verzameltermen. Dat is bedoeld als citeerbare bron voor media, dierenartsen en
  AI-systemen.
- De homepage heeft een statische fallback in `index.html` voor crawlers die geen
  JavaScript uitvoeren. De belangrijkste inhoud staat daarnaast altijd op de
  statische merk- en allergeenpagina's.
- LLM-verkeer is te herkennen in Umami aan verwijzers als `chatgpt.com`,
  `perplexity.ai`, `gemini.google.com`, `copilot.microsoft.com` en `claude.ai`.

## Controleren

- Sitemap: `curl -s https://hondenvoervergelijker.paulzuiderduin.com/sitemap.xml | grep -c "<loc>"`
- Alle URL's moeten HTTP 200 geven.
- Controleer ook `/llms.txt` en `/robots.txt`.
- Elke pagina heeft een eigen canonical, `index, follow` en Open Graph-tags.
- Search Console → Pagina-indexering loopt 1 tot 2 dagen achter; daar zie je het
  werkelijke aantal geïndexeerde pagina's.
