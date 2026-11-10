# Blog: inhoud, opbouw en publiceren

De blog is een statische aanvulling op de vergelijker. Artikelen staan als
Markdown in `content/blog/`. Bij elke build worden ze omgezet naar HTML in
`dist/blog/`, samen met een overzicht, categoriepagina's en een RSS-feed.

Er is geen CMS en geen database nodig. Dat houdt de site snel en de
onderhoudslast laag. Een artikel toevoegen is een bestand toevoegen en de site
opnieuw bouwen.

## Bestanden

```text
content/blog/
  hondenvoer-etiket-lezen.md
  eiwitpercentage-hondenvoer.md
  ...
scripts/
  maak-blog.mjs
  lib/markdown.mjs
  lib/pagina-shell.mjs
```

De buildvolgorde staat in `package.json`:

```text
vite build
  → scripts/maak-seo-paginas.mjs
  → scripts/maak-blog.mjs
```

`maak-blog.mjs` draait dus na de SEO-pagina's. Het script vult de sitemap en
`llms.txt` aan met de blog-URL's, zodat de tellingen blijven kloppen.

## Frontmatter

Elk artikel begint met een blok tussen `---`. Verplicht zijn `title`,
`description`, `date` en `category`.

```yaml
---
title: "Hoe lees je een hondenvoer-etiket?"
slug: "hondenvoer-etiket-lezen"
description: "Korte samenvatting voor de kaart, het meta-description en de RSS-feed."
date: "2026-11-09"
updated: "2026-11-09"
category: "Hondenvoeding uitgelegd"
author: "Paul Zuiderduin"
medical: false
cta_titel: "Zelf een etiket beoordelen?"
cta_tekst: "Kies de allergenen die je wilt vermijden."
cta_url: "/"
cta_label: "Open de vergelijker"
bronnen:
  - "NVWA — Regels voor etikettering diervoeder | https://www.nvwa.nl/..."
related:
  - "Hondenvoer en allergieën | /hondenvoer-allergieen.html"
---
```

### Velden

| Veld | Verplicht | Betekenis |
| --- | --- | --- |
| `title` | ja | Titel van het artikel |
| `slug` | nee | Bestandsnaam zonder `.html`; standaard afgeleid van de titel |
| `description` | ja | Samenvatting voor kaarten, SEO en RSS |
| `date` | ja | Publicatiedatum (`YYYY-MM-DD`) |
| `updated` | nee | Datum van laatste inhoudelijke wijziging |
| `category` | ja | Naam van de categorie |
| `author` | nee | Standaard Paul Zuiderduin |
| `medical` | nee | Toont een extra medische disclaimer |
| `uitgelicht` | nee | Zet dit artikel in het uitgelichte blok op de blogindex |
| `cta_titel` | nee | Kop boven de call-to-action |
| `cta_tekst` | nee | Tekst boven de call-to-action |
| `cta_url` | nee | Interne of externe CTA-link |
| `cta_label` | nee | Knoptekst |
| `bronnen` | nee | Lijst met `Titel \| URL` |
| `related` | nee | Lijst met `Titel \| /pad` |

Categorieën met minder dan drie artikelen krijgen geen eigen categoriepagina.
Zo ontstaan geen dunne pagina's. De categorie verschijnt wel op de blogindex en
op de artikelen.

## Markdown

De renderer ondersteunt bewust een beperkte set:

- koppen met `##`, `###` en `####`;
- paragrafen;
- ongeordende en geordende lijsten;
- blockquotes met `>`;
- tabellen;
- horizontale lijnen;
- codeblokken en inline code;
- vet, cursief, links en afbeeldingen.

Gebruik geen ruwe HTML in de artikelen. Onbekende HTML wordt geëscaped. Voor
een waarschuwing of aandachtspunt is een blockquote voldoende; die krijgt de
huisstijl van een callout.

Interne links gebruik je als `/hondenvoer-zonder-kip.html`. Externe links
krijgen automatisch `target="_blank"` en `rel="noopener noreferrer"`.

## Affiliate en onafhankelijkheid

De blog mag affiliate-inkomsten opleveren, maar de inhoud bepaalt de selectie.
Belangrijke regels:

- Een commerciële link beïnvloedt nooit de uitleg, productselectie, volgorde of
  beoordeling.
- Gebruik geen “onafhankelijke review” als er geen eigen test of controle is
  uitgevoerd. Gebruik dan “uitleg”, “vergelijking” of “waar let je op?”.
- Elke artikelpagina toont een transparantieblok over affiliate-links.
- Standaard linken artikelen naar de vergelijker; de winkelknoppen staan op de
  product- en vergelijkingspagina's. Voeg geen directe affiliate-links toe in
  Markdown: externe links krijgen wel `rel="noopener noreferrer"`, maar niet
  automatisch `rel="sponsored"`.
- Geen medische claims en geen suggestie dat voer een aandoening behandelt.

## SEO en publicatie

Bij de build wordt automatisch geregeld:

- een eigen canonical en meta-description per artikel;
- `Article`- en `BreadcrumbList`-structured data;
- een artikel in de sitemap met prioriteit en `lastmod`;
- een RSS-feed op `/blog/feed.xml`;
- een link naar de blog in de header en footer van de statische pagina's;
- een bloglink in `llms.txt`.

Na publicatie kan de URL handmatig worden aangeboden in Google Search Console.
De deploy-workflow controleert alle sitemap-URL's en meldt ze daarna bij
IndexNow.

## Lokaal controleren

```bash
npm run test:unit
npm run build
npm run preview
```

Controleer daarna:

- `/blog/` opent en toont alle artikelen;
- elke categorie met drie of meer artikelen heeft een categoriepagina;
- `/blog/feed.xml` is geldige RSS;
- de sitemap bevat de blog-URL's;
- `llms.txt` noemt hetzelfde aantal pagina's als de sitemap;
- de artikelpagina linkt terug naar de vergelijker en naar relevante
  allergeen- of uitlegpagina's.

## Redactionele checklist

- [ ] Titel en description dekken de zoekintentie.
- [ ] Het artikel geeft een kort antwoord in de eerste alinea's.
- [ ] Er zijn minimaal twee interne links naar relevante pagina's.
- [ ] Er is een link naar de vergelijker of een passende filterpagina.
- [ ] Bronnen zijn concreet en openbaar.
- [ ] Medische claims zijn vermeden; bij gezondheid staat een disclaimer.
- [ ] De datum en `updated` zijn bijgewerkt.
- [ ] De inhoud is nog actueel en de bronlinks werken.
