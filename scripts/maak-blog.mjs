#!/usr/bin/env node
// Bouwt de statische blog na `vite build`.
//
// Draait na scripts/maak-seo-paginas.mjs. De blog gebruikt dezelfde shell,
// CSS en analytics als de andere statische pagina's. Artikelen staan als
// Markdown in content/blog/ en worden bij de build omgezet naar HTML.
//
// De blog is bewust statisch: snel, indexeerbaar zonder JavaScript en zonder
// extra CMS of database. De sitemap en llms.txt worden na de SEO-build
// aangevuld, zodat de aantallen en alle URL's blijven kloppen.
import { existsSync, mkdirSync, readFileSync, readdirSync, writeFileSync } from 'node:fs'
import { join } from 'node:path'
import { leesTijd, parseFrontmatter, renderMarkdown } from './lib/markdown.mjs'
import { DIST, SITE, WORTEL, datumIso, datumNl, escapeHtml, organisatie, shell } from './lib/pagina-shell.mjs'
import { slugify } from '../src/lib/productUrl.js'

const BLOG_DIR = join(WORTEL, 'content', 'blog')
const BLOG_PAD = '/blog/'
const CATEGORIE_MINIMUM = 3
const CATEGORIE_ORDER = ['Hondenvoeding uitgelegd', 'Hondenvoer kiezen', 'Praktisch voeren']
const CATEGORIE_BESCHRIJVING = {
  'Hondenvoeding uitgelegd': 'Etiketten, ingrediënten en voedingswaarden: wat staat er op de verpakking en wat betekent het?',
  'Hondenvoer kiezen': 'Van natvoer of brokken tot voer zonder een specifieke bron. Zo maak je een onderbouwde keuze.',
  'Praktisch voeren': 'Overstappen, doseren, bewaren en dagelijkse keuzes rond het voer van je hond.'
}
const VANDAAG = /^\d{4}-\d{2}-\d{2}$/.test(process.env.BLOG_VANDAAG ?? '')
  ? process.env.BLOG_VANDAAG
  : new Date().toISOString().slice(0, 10)
const getal = (waarde) => new Intl.NumberFormat('nl-NL').format(waarde)

const xmlEscape = (waarde = '') => String(waarde)
  .replace(/&/g, '&amp;')
  .replace(/</g, '&lt;')
  .replace(/>/g, '&gt;')
  .replace(/"/g, '&quot;')
  .replace(/'/g, '&apos;')

function splitLabelUrl(waarde) {
  const tekst = String(waarde ?? '').trim()
  if (!tekst) return null
  const scheiding = tekst.indexOf(' | ')
  if (scheiding === -1) return { label: tekst, url: '' }
  return {
    label: tekst.slice(0, scheiding).trim(),
    url: tekst.slice(scheiding + 3).trim()
  }
}

function leesArtikelen() {
  if (!existsSync(BLOG_DIR)) return { artikelen: [], gepland: [] }
  const bestanden = readdirSync(BLOG_DIR)
    .filter((bestand) => bestand.endsWith('.md'))
    .sort()

  const artikelen = []
  const gepland = []
  const slugs = new Set()

  for (const bestand of bestanden) {
    const bron = readFileSync(join(BLOG_DIR, bestand), 'utf8')
    const { data, body } = parseFrontmatter(bron)
    if (data.draft === true) {
      console.log(`Concept overgeslagen: ${bestand}`)
      continue
    }

    const titel = String(data.title ?? '').trim()
    const beschrijving = String(data.description ?? '').trim()
    const categorie = String(data.category ?? '').trim()
    const datum = datumIso(data.date)
    const bijgewerkt = datumIso(data.updated) || datum

    if (!titel || !beschrijving || !categorie || !datum) {
      throw new Error(`${bestand}: title, description, category en date zijn verplicht.`)
    }

    const slug = String(data.slug ?? slugify(titel)).trim().replace(/^\/+|\/+$/g, '')
    if (!slug || slug.includes('/')) throw new Error(`${bestand}: ongeldige slug.`)
    if (slugs.has(slug)) throw new Error(`${bestand}: dubbele slug "${slug}".`)
    slugs.add(slug)

    const bronnen = (Array.isArray(data.bronnen) ? data.bronnen : [])
      .map(splitLabelUrl)
      .filter(Boolean)
    const related = (Array.isArray(data.related) ? data.related : [])
      .map(splitLabelUrl)
      .filter(Boolean)

    const artikel = {
      bestand,
      titel,
      beschrijving,
      categorie,
      categorieSlug: slugify(categorie),
      categoriePad: `${BLOG_PAD}categorie/${slugify(categorie)}.html`,
      slug,
      pad: `${BLOG_PAD}${slug}.html`,
      datum,
      bijgewerkt,
      leestijd: Number(data.readingTime) || leesTijd(body),
      medical: data.medical === true,
      uitgelicht: data.uitgelicht === true,
      body,
      html: renderMarkdown(body),
      bronnen,
      related,
      cta: {
        titel: String(data.cta_titel ?? 'Zelf vergelijken?'),
        tekst: String(data.cta_tekst ?? 'Kies de allergenen en voedingswaarden die voor jouw hond belangrijk zijn.'),
        url: String(data.cta_url ?? '/'),
        label: String(data.cta_label ?? 'Open de vergelijker')
      }
    }

    if (datum > VANDAAG) gepland.push(artikel)
    else artikelen.push(artikel)
  }

  const sorteer = (eerste, tweede) =>
    tweede.datum.localeCompare(eerste.datum) || eerste.titel.localeCompare(tweede.titel, 'nl')

  return {
    artikelen: artikelen.sort(sorteer),
    gepland: gepland.sort((eerste, tweede) =>
      eerste.datum.localeCompare(tweede.datum) || eerste.titel.localeCompare(tweede.titel, 'nl')
    )
  }
}

function groepeerCategorieen(artikelen) {
  const groepen = new Map()
  for (const artikel of artikelen) {
    if (!groepen.has(artikel.categorie)) groepen.set(artikel.categorie, [])
    groepen.get(artikel.categorie).push(artikel)
  }

  const categorieen = [...groepen.entries()]
    .map(([naam, lijst]) => ({
      naam,
      slug: slugify(naam),
      pad: `${BLOG_PAD}categorie/${slugify(naam)}.html`,
      beschrijving: CATEGORIE_BESCHRIJVING[naam] ?? `Artikelen over ${naam.toLowerCase()}.`,
      artikelen: lijst,
      heeftPagina: lijst.length >= CATEGORIE_MINIMUM
    }))
    .sort((eerste, tweede) => {
      const eersteIndex = CATEGORIE_ORDER.indexOf(eerste.naam)
      const tweedeIndex = CATEGORIE_ORDER.indexOf(tweede.naam)
      if (eersteIndex !== -1 || tweedeIndex !== -1) {
        return (eersteIndex === -1 ? 99 : eersteIndex) - (tweedeIndex === -1 ? 99 : tweedeIndex)
      }
      return eerste.naam.localeCompare(tweede.naam, 'nl')
    })

  // Een artikelkaart mag alleen naar een categoriepagina linken als die pagina
  // echt bestaat. Anders zou een kleine categorie een 404 opleveren.
  for (const categorie of categorieen) {
    for (const artikel of categorie.artikelen) artikel.categorieHeeftPagina = categorie.heeftPagina
  }

  return categorieen
}

function datumKort(waarde) {
  const datum = new Date(`${waarde}T12:00:00Z`)
  return Number.isNaN(datum.getTime())
    ? ''
    : datum.toLocaleDateString('nl-NL', { day: 'numeric', month: 'long', year: 'numeric' })
}

function artikelKaart(artikel, kopNiveau = 'h2') {
  const kop = kopNiveau === 'h3' ? 'h3' : 'h2'
  const categorie = artikel.categorieHeeftPagina
    ? `<a class="blog-card-categorie" href="${artikel.categoriePad}">${escapeHtml(artikel.categorie)}</a>`
    : `<span class="blog-card-categorie">${escapeHtml(artikel.categorie)}</span>`
  return `        <article class="blog-card">
          <div class="blog-card-kop">
            ${categorie}
            <time datetime="${escapeHtml(artikel.datum)}">${escapeHtml(datumKort(artikel.datum))}</time>
          </div>
          <${kop}><a href="${artikel.pad}">${escapeHtml(artikel.titel)}</a></${kop}>
          <p>${escapeHtml(artikel.beschrijving)}</p>
          <p class="blog-card-meta"><span>${artikel.leestijd} min lezen</span><a href="${artikel.pad}">Lees artikel <span aria-hidden="true">→</span></a></p>
        </article>`
}

function categorieKaart(categorie) {
  const href = categorie.heeftPagina ? categorie.pad : `${BLOG_PAD}#${categorie.slug}`
  const linkTekst = categorie.heeftPagina ? 'Bekijk categorie' : 'Bekijk artikelen'
  const laatste = categorie.artikelen[0]
  return `          <a class="blog-category-card" href="${href}">
            <span class="blog-category-card-count">${categorie.artikelen.length} artikel${categorie.artikelen.length === 1 ? '' : 'en'}</span>
            <h3>${escapeHtml(categorie.naam)}</h3>
            <p>${escapeHtml(categorie.beschrijving)}</p>
            ${laatste ? `<span class="blog-category-card-laatste">Laatst: ${escapeHtml(laatste.titel)}</span>` : ''}
            <span class="blog-category-card-link">${linkTekst} →</span>
          </a>`
}

function blogSubnav(categorieen, actiefPad, actieveCategorie = '') {
  const items = [
    { href: BLOG_PAD, label: 'Alle artikelen', aantal: null, actief: actiefPad === BLOG_PAD, current: actiefPad === BLOG_PAD },
    ...categorieen.map((categorie) => {
      const href = categorie.heeftPagina ? categorie.pad : `${BLOG_PAD}#${categorie.slug}`
      return {
        href,
        label: categorie.naam,
        aantal: categorie.artikelen.length,
        actief: actiefPad === categorie.pad || actieveCategorie === categorie.naam,
        current: actiefPad === categorie.pad
      }
    })
  ]
  return `<nav class="blog-subnav" aria-label="Blognavigatie">
    ${items.map(({ href, label, aantal, actief, current }) => `<a href="${href}" class="${actief ? 'is-active' : ''}"${current ? ' aria-current="page"' : ''}>${escapeHtml(label)}${aantal != null ? ` <span>${aantal}</span>` : ''}</a>`).join('\n    ')}
  </nav>`
}

function inhoudsopgave(html, extraClass = '') {
  const koppen = [...html.matchAll(/<h2 id="([^"]+)">([\s\S]*?)<\/h2>/g)]
    .map(([, id, tekst]) => ({ id, tekst: tekst.replace(/<[^>]+>/g, '').trim() }))
    .filter(({ tekst }) => tekst)
  if (koppen.length < 3) return ''
  return `<nav class="blog-toc${extraClass ? ` ${extraClass}` : ''}" aria-label="In dit artikel">
    <p class="blog-toc-titel">In dit artikel</p>
    <ol>${koppen.map(({ id, tekst }) => `<li><a href="#${escapeHtml(id)}">${escapeHtml(tekst)}</a></li>`).join('')}</ol>
  </nav>`
}

function artikelPagina(artikel, artikelen, categorieen) {
  const categorie = categorieen.find((item) => item.naam === artikel.categorie)
  const categorieLink = categorie?.heeftPagina
    ? `<a href="${categorie.pad}">${escapeHtml(categorie.naam)}</a>`
    : escapeHtml(artikel.categorie)

  const zelfdeCategorie = artikelen
    .filter((ander) => ander.slug !== artikel.slug && ander.categorie === artikel.categorie)
    .slice(0, 3)
  const aanvulling = artikelen
    .filter((ander) => ander.slug !== artikel.slug && ander.categorie !== artikel.categorie)
    .slice(0, Math.max(0, 3 - zelfdeCategorie.length))
  const gerelateerd = [...zelfdeCategorie, ...aanvulling]

  const bronnen = artikel.bronnen.length
    ? `<section class="blog-sources" aria-labelledby="bronnen">
          <h2 id="bronnen">Bronnen</h2>
          <ul>
            ${artikel.bronnen.map(({ label, url }) => `<li>${url ? `<a href="${escapeHtml(url)}" target="_blank" rel="noopener noreferrer">${escapeHtml(label)}</a>` : escapeHtml(label)}</li>`).join('\n            ')}
          </ul>
          <p class="section-footnote">Deze bronnen zijn gebruikt voor de uitleg. Controleer voor een aankoop altijd de actuele verpakking en de informatie van de fabrikant.</p>
        </section>`
    : ''

  const relatedLinks = artikel.related.length
    ? `<section class="blog-related" aria-labelledby="verder-lezen">
          <h2 id="verder-lezen">Verder lezen</h2>
          <ul>
            ${artikel.related.map(({ label, url }) => `<li>${url ? `<a href="${escapeHtml(url)}">${escapeHtml(label)}</a>` : escapeHtml(label)}</li>`).join('\n            ')}
          </ul>
        </section>`
    : ''

  const relatedArtikelen = gerelateerd.length
    ? `<section class="blog-related" aria-labelledby="gerelateerde-artikelen">
          <h2 id="gerelateerde-artikelen">Meer uit de blog</h2>
          <div class="blog-grid blog-grid-compact">
${gerelateerd.map(artikelKaart).join('\n')}
          </div>
        </section>`
    : ''

  const toc = inhoudsopgave(artikel.html)
  const tocInline = inhoudsopgave(artikel.html, 'blog-toc-inline')

  const inhoud = `      <p class="breadcrumb"><a href="/">Hondenvoervergelijker</a> › <a href="${BLOG_PAD}">Blog</a> › ${categorieLink}</p>
      ${blogSubnav(categorieen, artikel.pad, artikel.categorie)}
      <div class="blog-layout">
        <article class="blog-artikel">
          <header class="blog-artikel-kop">
            <p class="eyebrow">${escapeHtml(artikel.categorie)}</p>
            <h1>${escapeHtml(artikel.titel)}</h1>
            <p class="lead">${escapeHtml(artikel.beschrijving)}</p>
            <p class="updated">Gepubliceerd op ${escapeHtml(datumKort(artikel.datum))}${artikel.bijgewerkt !== artikel.datum ? ` · bijgewerkt op ${escapeHtml(datumKort(artikel.bijgewerkt))}` : ''} · ${artikel.leestijd} min lezen · inhoud: <a href="/over-ons.html#redactie">Paul Zuiderduin</a></p>
            <div class="blog-meta-notes">
              <p><strong>Onafhankelijk</strong> · In de vergelijker en op productpagina’s kunnen affiliate-links staan. <a href="/privacybeleid.html">Lees meer</a>.</p>
              ${artikel.medical ? `<p><strong>Geen medisch advies</strong> · Bij jeuk, braken, diarree of een vermoeden van een allergie is een dierenarts de juiste persoon.</p>` : ''}
            </div>
          </header>

          ${tocInline}

          <div class="blog-content">
${artikel.html}
          </div>

          <div class="blog-cta">
            <h2>${escapeHtml(artikel.cta.titel)}</h2>
            <p>${escapeHtml(artikel.cta.tekst)}</p>
            <p><a class="cta" href="${escapeHtml(artikel.cta.url)}">${escapeHtml(artikel.cta.label)}</a> <a class="cta secondary" href="/hondenvoer-zonder.html">Bekijk zonder allergeen</a></p>
          </div>

          <div class="blog-artikel-extra">
${bronnen}
${relatedLinks}
          </div>

          <p class="blog-terug"><a href="${BLOG_PAD}">← Terug naar alle blogartikelen</a></p>
        </article>

        <aside class="blog-zijbalk" aria-label="Artikelinfo">
          ${toc}
          <div class="blog-cta-card">
            <p class="eyebrow">Vergelijken</p>
            <h2>${escapeHtml(artikel.cta.titel)}</h2>
            <p>${escapeHtml(artikel.cta.tekst)}</p>
            <a class="cta" href="${escapeHtml(artikel.cta.url)}">${escapeHtml(artikel.cta.label)}</a>
          </div>
        </aside>
      </div>
${relatedArtikelen}`

  const jsonLd = [
    {
      '@context': 'https://schema.org',
      '@type': 'Article',
      '@id': `${SITE}${artikel.pad}#artikel`,
      headline: artikel.titel,
      description: artikel.beschrijving,
      datePublished: artikel.datum,
      dateModified: artikel.bijgewerkt,
      inLanguage: 'nl-NL',
      articleSection: artikel.categorie,
      author: {
        '@type': 'Person',
        '@id': `${SITE}/over-ons.html#paul-zuiderduin`,
        name: 'Paul Zuiderduin'
      },
      publisher: organisatie,
      mainEntityOfPage: `${SITE}${artikel.pad}`,
      image: `${SITE}/og-image.png`,
      isPartOf: { '@type': 'Blog', '@id': `${SITE}${BLOG_PAD}#blog` }
    },
    {
      '@context': 'https://schema.org',
      '@type': 'BreadcrumbList',
      itemListElement: [
        { '@type': 'ListItem', position: 1, name: 'Hondenvoervergelijker', item: `${SITE}/` },
        { '@type': 'ListItem', position: 2, name: 'Blog', item: `${SITE}${BLOG_PAD}` },
        ...(categorie?.heeftPagina ? [{ '@type': 'ListItem', position: 3, name: categorie.naam, item: `${SITE}${categorie.pad}` }, { '@type': 'ListItem', position: 4, name: artikel.titel, item: `${SITE}${artikel.pad}` }] : [{ '@type': 'ListItem', position: 3, name: artikel.titel, item: `${SITE}${artikel.pad}` }])
      ]
    }
  ]

  return shell({
    titel: `${artikel.titel} | Blog Hondenvoervergelijker`,
    beschrijving: artikel.beschrijving,
    pad: artikel.pad,
    inhoud,
    jsonLd,
    ogType: 'article',
    article: {
      published: artikel.datum,
      modified: artikel.bijgewerkt,
      author: 'Paul Zuiderduin',
      section: artikel.categorie
    }
  })
}

function blogIndex(artikelen, categorieen) {
  const laatste = artikelen.find((artikel) => artikel.uitgelicht) ?? artikelen[0]
  const inhoud = `      <section class="blog-hero">
        <p class="eyebrow">Blog</p>
        <h1>Hondenvoeding begrijpen en vergelijken</h1>
        <p class="lead">Hier leggen we uit hoe je een etiket leest, wat voedingswaarden betekenen en hoe je een keuze maakt die bij jouw hond past. Waar dat helpt, verwijzen we naar de vergelijker.</p>
        <p class="blog-hero-note">Onafhankelijk, met bronnen en zonder medische claims. Affiliate-links beïnvloeden de selectie en beoordeling niet.</p>
        <p class="blog-hero-meta">${categorieen.length} categorieën · ${artikelen.length} artikelen · onafhankelijk en met bronnen</p>
        <p><a class="cta" href="/">Open de vergelijker</a> <a class="cta secondary" href="#categorieen">Bekijk categorieën</a></p>
        ${laatste ? `<p class="blog-hero-uitgelicht"><span>Uitgelicht</span> <a href="${laatste.pad}">${escapeHtml(laatste.titel)}</a></p>` : ''}
      </section>

      ${blogSubnav(categorieen, BLOG_PAD)}

      <section id="categorieen" class="blog-sectie">
        <div class="section-head">
          <div>
            <p class="eyebrow">Categorieën</p>
            <h2>Kies een onderwerp</h2>
          </div>
          <p class="section-note">Drie ingangen: uitleg, kiezen en praktisch voeren.</p>
        </div>
        <div class="blog-category-grid">
${categorieen.map(categorieKaart).join('\n')}
        </div>
      </section>

${categorieen.map((categorie) => `      <section id="${categorie.slug}" class="blog-sectie blog-categorie-sectie">
        <div class="section-head">
          <div>
            <p class="eyebrow">Categorie</p>
            <h2>${escapeHtml(categorie.naam)}</h2>
          </div>
          <p class="section-note">${escapeHtml(categorie.beschrijving)}</p>
        </div>
        <div class="blog-grid">
${categorie.artikelen.map((artikel) => artikelKaart(artikel, 'h3')).join('\n')}
        </div>
        ${categorie.heeftPagina ? `<p class="blog-sectie-link"><a href="${categorie.pad}">Alle artikelen in ${escapeHtml(categorie.naam)} →</a></p>` : ''}
      </section>`).join('\n')}

      <div class="callout">
        <p><strong>Geen medisch advies:</strong> de informatie op deze blog is algemeen en vervangt geen onderzoek of advies van een dierenarts. Controleer voor een aankoop altijd de verpakking en de actuele productinformatie.</p>
      </div>`

  const jsonLd = [
    {
      '@context': 'https://schema.org',
      '@type': 'Blog',
      '@id': `${SITE}${BLOG_PAD}#blog`,
      name: 'Blog Hondenvoervergelijker',
      description: 'Uitleg over hondenvoeding, etiketten, allergenen en het kiezen van voer.',
      url: `${SITE}${BLOG_PAD}`,
      inLanguage: 'nl-NL',
      publisher: organisatie,
      blogPost: artikelen.map((artikel) => ({
        '@type': 'BlogPosting',
        headline: artikel.titel,
        url: `${SITE}${artikel.pad}`,
        datePublished: artikel.datum,
        dateModified: artikel.bijgewerkt,
        author: { '@type': 'Person', name: 'Paul Zuiderduin' }
      }))
    },
    {
      '@context': 'https://schema.org',
      '@type': 'BreadcrumbList',
      itemListElement: [
        { '@type': 'ListItem', position: 1, name: 'Hondenvoervergelijker', item: `${SITE}/` },
        { '@type': 'ListItem', position: 2, name: 'Blog', item: `${SITE}${BLOG_PAD}` }
      ]
    }
  ]

  return shell({
    titel: 'Blog: hondenvoeding begrijpen en vergelijken | Hondenvoervergelijker',
    beschrijving: 'Uitleg over hondenvoeding, etiketten, allergenen en het kiezen van voer. Met bronnen, praktische tips en verwijzingen naar de onafhankelijke vergelijker.',
    pad: BLOG_PAD,
    inhoud,
    jsonLd
  })
}

function categoriePagina(categorie, categorieen) {
  const [uitgelicht, ...overige] = categorie.artikelen
  const andereCategorieen = categorieen.filter((item) => item.naam !== categorie.naam)
  const inhoud = `      <p class="breadcrumb"><a href="/">Hondenvoervergelijker</a> › <a href="${BLOG_PAD}">Blog</a> › ${escapeHtml(categorie.naam)}</p>
      ${blogSubnav(categorieen, categorie.pad, categorie.naam)}

      <header class="blog-categorie-kop">
        <p class="eyebrow">Blogcategorie</p>
        <h1>${escapeHtml(categorie.naam)}</h1>
        <p class="lead">${escapeHtml(categorie.beschrijving)}</p>
        <p class="updated">${categorie.artikelen.length} artikelen · bijgewerkt op ${escapeHtml(datumKort(categorie.artikelen.map((artikel) => artikel.bijgewerkt).sort().at(-1)))}</p>
      </header>

      ${uitgelicht ? `<article class="blog-featured-card">
        <p class="eyebrow">Uitgelicht in deze categorie</p>
        <h2><a href="${uitgelicht.pad}">${escapeHtml(uitgelicht.titel)}</a></h2>
        <p>${escapeHtml(uitgelicht.beschrijving)}</p>
        <p class="blog-card-meta">${escapeHtml(datumKort(uitgelicht.datum))} · ${uitgelicht.leestijd} min lezen</p>
        <p><a class="cta" href="${uitgelicht.pad}">Lees artikel</a></p>
      </article>` : ''}

      ${overige.length ? `<div class="blog-grid">
${overige.map((artikel) => artikelKaart(artikel)).join('\n')}
      </div>` : ''}

      ${andereCategorieen.length ? `<section class="blog-sectie" aria-labelledby="andere-categorieen">
        <div class="section-head">
          <div>
            <p class="eyebrow">Verder kijken</p>
            <h2 id="andere-categorieen">Andere categorieën</h2>
          </div>
        </div>
        <div class="blog-category-grid">
${andereCategorieen.map(categorieKaart).join('\n')}
        </div>
      </section>` : ''}

      <div class="callout">
        <p><a class="cta" href="/">Naar de vergelijker</a> <a class="cta secondary" href="${BLOG_PAD}">Alle blogartikelen</a></p>
      </div>
      <p class="blog-terug"><a href="${BLOG_PAD}">← Terug naar alle blogartikelen</a></p>`

  const jsonLd = [
    {
      '@context': 'https://schema.org',
      '@type': 'CollectionPage',
      name: categorie.naam,
      description: categorie.beschrijving,
      url: `${SITE}${categorie.pad}`,
      inLanguage: 'nl-NL',
      isPartOf: { '@type': 'Blog', '@id': `${SITE}${BLOG_PAD}#blog` },
      mainEntity: {
        '@type': 'ItemList',
        itemListElement: categorie.artikelen.map((artikel, index) => ({
          '@type': 'ListItem',
          position: index + 1,
          url: `${SITE}${artikel.pad}`,
          name: artikel.titel
        }))
      }
    },
    {
      '@context': 'https://schema.org',
      '@type': 'BreadcrumbList',
      itemListElement: [
        { '@type': 'ListItem', position: 1, name: 'Hondenvoervergelijker', item: `${SITE}/` },
        { '@type': 'ListItem', position: 2, name: 'Blog', item: `${SITE}${BLOG_PAD}` },
        { '@type': 'ListItem', position: 3, name: categorie.naam, item: `${SITE}${categorie.pad}` }
      ]
    }
  ]

  return shell({
    titel: `${categorie.naam} | Blog Hondenvoervergelijker`,
    beschrijving: categorie.beschrijving,
    pad: categorie.pad,
    inhoud,
    jsonLd
  })
}

function feedXml(artikelen) {
  const laatste = artikelen.map((artikel) => artikel.bijgewerkt).sort().at(-1) ?? VANDAAG
  const items = artikelen.map((artikel) => `    <item>
      <title>${xmlEscape(artikel.titel)}</title>
      <link>${SITE}${artikel.pad}</link>
      <guid isPermaLink="true">${SITE}${artikel.pad}</guid>
      <pubDate>${new Date(`${artikel.datum}T12:00:00Z`).toUTCString()}</pubDate>
      <description>${xmlEscape(artikel.beschrijving)}</description>
      <category>${xmlEscape(artikel.categorie)}</category>
    </item>`).join('\n')

  return `<?xml version="1.0" encoding="UTF-8"?>
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
  <channel>
    <title>Blog Hondenvoervergelijker</title>
    <link>${SITE}${BLOG_PAD}</link>
    <description>Uitleg over hondenvoeding, etiketten, allergenen en het kiezen van voer.</description>
    <language>nl-NL</language>
    <lastBuildDate>${new Date(`${laatste}T12:00:00Z`).toUTCString()}</lastBuildDate>
    <atom:link href="${SITE}${BLOG_PAD}feed.xml" rel="self" type="application/rss+xml" />
${items}
  </channel>
</rss>
`
}

function werkSitemapBij(artikelen, categorieen) {
  const bestand = join(DIST, 'sitemap.xml')
  if (!existsSync(bestand)) {
    console.log('Let op: dist/sitemap.xml ontbreekt; blog-URL\'s niet toegevoegd.')
    return 0
  }

  const basis = readFileSync(bestand, 'utf8')
  const zonderBlog = basis.replace(
    /\s*<url><loc>https:\/\/hondenvoervergelijker\.paulzuiderduin\.com\/blog\/[^<]*<\/loc>[\s\S]*?<\/url>/g,
    ''
  )
  const laatsteArtikel = artikelen.map((artikel) => artikel.bijgewerkt).sort().at(-1) ?? VANDAAG
  const rijen = [
    { loc: `${SITE}${BLOG_PAD}`, prioriteit: '0.8', lastmod: laatsteArtikel },
    ...categorieen.filter((categorie) => categorie.heeftPagina).map((categorie) => ({
      loc: `${SITE}${categorie.pad}`,
      prioriteit: '0.6',
      lastmod: categorie.artikelen.map((artikel) => artikel.bijgewerkt).sort().at(-1) ?? VANDAAG
    })),
    ...artikelen.map((artikel) => ({
      loc: `${SITE}${artikel.pad}`,
      prioriteit: '0.7',
      lastmod: artikel.bijgewerkt
    }))
  ]

  const toevoeging = rijen.map(({ loc, prioriteit, lastmod }) =>
    `  <url><loc>${loc}</loc><lastmod>${lastmod}</lastmod><priority>${prioriteit}</priority></url>`
  ).join('\n')

  const sitemap = zonderBlog.replace('</urlset>', `${toevoeging}\n</urlset>`)
  writeFileSync(bestand, sitemap)
  const aantal = (sitemap.match(/<loc>/g) ?? []).length
  console.log(`Sitemap bijgewerkt met ${rijen.length} blog-URL('s); totaal ${aantal}.`)
  return aantal
}

function werkLlmsBij(aantalAdressen, artikelen, categorieen) {
  const bestand = join(DIST, 'llms.txt')
  if (!existsSync(bestand)) return
  let tekst = readFileSync(bestand, 'utf8')
  tekst = tekst.replace(/Laatst bijgewerkt: .*?\./, `Laatst bijgewerkt: ${datumNl(VANDAAG)}.`)
  tekst = tekst.replace(/- [\d.]+ pagina's in de sitemap\./, `- ${getal(aantalAdressen)} pagina's in de sitemap.`)

  if (!tekst.includes('## Blog')) {
    const blogLinks = [
      `- [Blogoverzicht](${SITE}${BLOG_PAD}): uitleg over hondenvoeding, etiketten en het kiezen van voer.`,
      ...categorieen.filter((categorie) => categorie.heeftPagina).map((categorie) => `- [${categorie.naam}](${SITE}${categorie.pad}): ${categorie.beschrijving}`),
      ...artikelen.slice(0, 6).map((artikel) => `- [${artikel.titel}](${SITE}${artikel.pad})`)
    ].join('\n')

    tekst = tekst.replace('## Methodiek', `## Blog\n\n${blogLinks}\n\n## Methodiek`)
  }

  if (!tekst.includes(`- [Blog](${SITE}${BLOG_PAD})`)) {
    tekst = tekst.replace(
      /(- \[Vergelijker\]\([^\n]+\)[^\n]*\n)/,
      `$1- [Blog](${SITE}${BLOG_PAD}): uitleg over hondenvoeding, etiketten en het kiezen van voer.\n`
    )
  }

  writeFileSync(bestand, tekst)
}

/* ------------------------------------------------------------------ */
/* Uitvoeren                                                           */
/* ------------------------------------------------------------------ */

const { artikelen, gepland } = leesArtikelen()
const categorieen = groepeerCategorieen(artikelen)

if (gepland.length) {
  const eerste = gepland[0]
  console.log(`Nog ${gepland.length} blogartikel(en) gepland. Eerstvolgende: ${eerste.datum} — ${eerste.titel}`)
} else {
  console.log('Geen geplande blogartikelen meer; vul de planning aan.')
}

mkdirSync(join(DIST, 'blog'), { recursive: true })
if (categorieen.some((categorie) => categorie.heeftPagina)) {
  mkdirSync(join(DIST, 'blog', 'categorie'), { recursive: true })
}

for (const artikel of artikelen) {
  writeFileSync(join(DIST, artikel.pad.replace(/^\//, '')), artikelPagina(artikel, artikelen, categorieen))
}
console.log(`Geschreven: ${artikelen.length} blogartikel(en).`)

writeFileSync(join(DIST, 'blog', 'index.html'), blogIndex(artikelen, categorieen))
for (const categorie of categorieen.filter((item) => item.heeftPagina)) {
  writeFileSync(join(DIST, categorie.pad.replace(/^\//, '')), categoriePagina(categorie, categorieen))
}
console.log(`Geschreven: /blog/ en ${categorieen.filter((item) => item.heeftPagina).length} categoriepagina('s).`)

writeFileSync(join(DIST, 'blog', 'feed.xml'), feedXml(artikelen))
console.log('Geschreven: /blog/feed.xml')

const aantalAdressen = werkSitemapBij(artikelen, categorieen)
werkLlmsBij(aantalAdressen, artikelen, categorieen)
