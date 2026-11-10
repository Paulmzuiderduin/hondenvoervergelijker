// Gedeelde HTML-shell voor alle statische pagina's (SEO-pagina's en blog).
// Eén bron voor header, footer, analytics, CSS-versie en standaard metadata.
import { createHash } from 'node:crypto'
import { readFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'

export const WORTEL = dirname(dirname(dirname(fileURLToPath(import.meta.url))))
export const DIST = join(WORTEL, 'dist')
export const SITE = 'https://hondenvoervergelijker.paulzuiderduin.com'

// De statische bestanden krijgen een jaar cache. Een nieuwe inhoud moet dus
// een nieuwe URL krijgen, anders blijven bezoekers de oude versie zien.
const assetVersie = (bestand) => createHash('sha1')
  .update(readFileSync(join(WORTEL, 'public', bestand)))
  .digest('hex')
  .slice(0, 8)

export const PAGINA_CSS = `/pagina.css?v=${assetVersie('pagina.css')}`
export const PAGINA_JS = `/pagina.js?v=${assetVersie('pagina.js')}`

export const escapeHtml = (waarde = '') =>
  String(waarde)
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;')
    .replace(/'/g, '&#39;')

export const datumNl = (waarde) => {
  if (!waarde) return ''
  const datum = new Date(waarde)
  if (Number.isNaN(datum.getTime())) return ''
  return datum.toLocaleDateString('nl-NL', { day: 'numeric', month: 'long', year: 'numeric' })
}

export const datumIso = (waarde) => {
  if (!waarde) return ''
  const tekst = String(waarde)
  if (/^\d{4}-\d{2}-\d{2}/.test(tekst)) return tekst.slice(0, 10)
  const datum = new Date(waarde)
  return Number.isNaN(datum.getTime()) ? '' : datum.toISOString().slice(0, 10)
}

export const organisatie = {
  '@type': 'Organization',
  '@id': `${SITE}/#organisatie`,
  name: 'Hondenvoervergelijker',
  url: SITE,
  email: 'hondenvoervergelijker@paulzuiderduin.com',
  logo: {
    '@type': 'ImageObject',
    url: `${SITE}/favicon-512.png`,
    width: 512,
    height: 512
  },
  founder: {
    '@type': 'Person',
    '@id': `${SITE}/over-ons.html#paul-zuiderduin`,
    name: 'Paul Zuiderduin'
  },
  sameAs: ['https://github.com/Paulmzuiderduin/hondenvoervergelijker'],
  description: 'Onafhankelijke vergelijker van hondenvoeding op ingrediënten en allergenen.'
}

export function shell({
  titel,
  beschrijving,
  pad,
  inhoud,
  jsonLd = [],
  extraKop = '',
  bodyClass = '',
  stijl = '',
  ogType = 'website',
  ogImage = `${SITE}/og-image.png`,
  ogImageAlt = 'Hondenvoervergelijker: hondenvoer vergelijken op allergenen',
  article = null
}) {
  const canonical = `${SITE}${pad}`
  const artikelMeta = article
    ? [
        article.published ? `<meta property="article:published_time" content="${escapeHtml(article.published)}" />` : '',
        article.modified ? `<meta property="article:modified_time" content="${escapeHtml(article.modified)}" />` : '',
        article.author ? `<meta property="article:author" content="${escapeHtml(article.author)}" />` : '',
        article.section ? `<meta property="article:section" content="${escapeHtml(article.section)}" />` : ''
      ].filter(Boolean).join('\n    ')
    : ''

  return `<!doctype html>
<html lang="nl">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="${escapeHtml(beschrijving)}" />
    <meta name="robots" content="index, follow" />
    <link rel="canonical" href="${canonical}" />
    <meta property="og:type" content="${escapeHtml(ogType)}" />
    <meta property="og:site_name" content="Hondenvoervergelijker" />
    <meta property="og:locale" content="nl_NL" />
    <meta property="og:title" content="${escapeHtml(titel)}" />
    <meta property="og:description" content="${escapeHtml(beschrijving)}" />
    <meta property="og:url" content="${canonical}" />
    <meta property="og:image" content="${escapeHtml(ogImage)}" />
    <meta property="og:image:width" content="1200" />
    <meta property="og:image:height" content="630" />
    <meta property="og:image:alt" content="${escapeHtml(ogImageAlt)}" />
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:image" content="${escapeHtml(ogImage)}" />
    ${artikelMeta}
    <link rel="alternate" type="application/rss+xml" title="Blog Hondenvoervergelijker" href="/blog/feed.xml" />
    <link rel="icon" href="/favicon.ico" sizes="any" />
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32.png" />
    <link rel="icon" type="image/png" sizes="192x192" href="/favicon-192.png" />
    <link rel="icon" type="image/png" sizes="512x512" href="/favicon-512.png" />
    <link rel="apple-touch-icon" sizes="180x180" href="/favicon-180.png" />
    <link rel="stylesheet" href="${PAGINA_CSS}" />
    <script>document.documentElement.classList.add('js')</script>
    <script>
      try {
        const params = new URLSearchParams(window.location.search)
        if (params.get('umami-optout') === '1') localStorage.setItem('umami.disabled', '1')
        if (params.get('umami-optin') === '1') localStorage.removeItem('umami.disabled')
      } catch {}
    </script>
    <script defer src="https://cloud.umami.is/script.js" data-website-id="85273e9f-2c35-4a6e-83ff-7b61de38dec0" data-domains="hondenvoervergelijker.paulzuiderduin.com"></script>
    <script defer src="${PAGINA_JS}"></script>
    <title>${escapeHtml(titel)}</title>
    ${jsonLd.map((blok) => `<script type="application/ld+json">${JSON.stringify(blok)}</script>`).join('\n    ')}
    ${extraKop}
  </head>
  <body${bodyClass ? ` class="${bodyClass}"` : ''}>
    <header class="site">
      <div class="header-inner">
        <a class="brand" href="/">
          <img src="/favicon-192.png" alt="" width="32" height="32" />
          <span>
            <strong>Hondenvoervergelijker</strong>
            <span>Onafhankelijk hondenvoer vergelijken</span>
          </span>
        </a>
        <nav class="header-nav" aria-label="Hoofdnavigatie">
          <a class="back" href="/blog/">Blog</a>
          <a class="back" href="/">Naar de vergelijker →</a>
        </nav>
      </div>
    </header>
    <main class="wrap"${stijl ? ` ${stijl}` : ''}>
${inhoud}
      <footer>
        <nav aria-label="Informatie">
          <a href="/">Vergelijker</a>
          <a href="/blog/">Blog</a>
          <a href="/merken/">Alle merken</a>
          <a href="/hondenvoer-allergieen.html">Hondenvoer en allergieën</a>
          <a href="/hondenvoer-zonder.html">Zonder allergeen</a>
          <a href="/hoe-wij-vergelijken.html">Hoe wij vergelijken</a>
          <a href="/etikettenonderzoek.html">Etikettenonderzoek</a>
          <a href="/broncontrole.html">Broncontrole</a>
          <a href="/hypoallergene-hondenvoeding.html">Hypoallergeen</a>
          <a href="/eiwitrijk-hondenvoer.html">Eiwitrijk</a>
          <a href="/hondenvoer-met-weinig-vet.html">Weinig vet</a>
          <a href="/hoog-vezel-hondenvoer.html">Veel vezel</a>
          <a href="/laag-calorisch-hondenvoer.html">Laag-calorisch</a>
          <a href="/over-ons.html">Over ons</a>
          <a href="/contact.html">Contact</a>
          <a href="/voorwaarden.html">Voorwaarden</a>
          <a href="/disclaimer.html">Disclaimer</a>
          <a href="/privacybeleid.html">Privacybeleid</a>
        </nav>
        <p>Deze site vergelijkt ingrediënten, allergenen en voedingswaarden — geen prijsvergelijker. Bij een winkel kan een vanaf-prijs staan; die kan afwijken en is geen onderdeel van de vergelijking. Sommige verwijzingen kunnen affiliate-links bevatten; de selectie, volgorde en beoordeling blijven daar volledig onafhankelijk van.</p>
        <p>© ${new Date().getFullYear()} Hondenvoervergelijker · Paul Zuiderduin · <a href="mailto:hondenvoervergelijker@paulzuiderduin.com">hondenvoervergelijker@paulzuiderduin.com</a></p>
        <p>Deze site vergelijkt uitsluitend overgenomen etiketinformatie. De resultaten vormen geen medisch advies en bieden geen 100% garantie. Controleer altijd zelf de verpakking en overleg bij medische klachten met een dierenarts.</p>
      </footer>
    </main>
  </body>
</html>
`
}
