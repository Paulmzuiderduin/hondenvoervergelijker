#!/usr/bin/env node
// Maakt de statische SEO-pagina's en de sitemap na `vite build`.
//
// Waarom statisch: de vergelijker zelf is een React-app. Bezoekers en
// zoekmachines die alleen de eerste HTML lezen, zien daardoor weinig inhoud.
// Dit script schrijft per merk een echte HTML-pagina met de producten, de
// ingrediëntenstatus en een link naar de vergelijker. Ook de uitlegpagina's en
// de sitemap komen hier vandaan.
//
// Draait na de build (npm-script postbuild) en is fail-soft: zonder database
// blijven de uitlegpagina's en de basissitemap gewoon werken.

import { existsSync, mkdirSync, readFileSync, writeFileSync } from 'node:fs'
import { createHash } from 'node:crypto'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'
import { ALLERGEN_LABELS, ALLERGENS, FOOD_TYPES, assessLabel, markUncertainIngredients, setCustomTerms } from '../src/lib/allergens.js'
import { isReviewOverdue, productMatch } from '../src/lib/matcher.js'
import { NUTRIENTS, CORE_NUTRIENTS, formatteerVoedingswaarde, voedingswaardeMap } from '../src/lib/nutrition.js'
import { onbetrouwbareNutrienten } from '../src/lib/plausibility.js'
import { productPad, slugify } from '../src/lib/productUrl.js'

const WORTEL = dirname(dirname(fileURLToPath(import.meta.url)))
const DIST = join(WORTEL, 'dist')
const SITE = 'https://hondenvoervergelijker.paulzuiderduin.com'
const VANDAAG = new Date().toISOString().slice(0, 10)

// De statische bestanden krijgen een jaar cache. Een nieuwe inhoud moet dus
// een nieuwe URL krijgen, anders blijven bezoekers de oude versie zien.
const assetVersie = (bestand) => createHash('sha1')
  .update(readFileSync(join(WORTEL, 'public', bestand)))
  .digest('hex')
  .slice(0, 8)
const PAGINA_CSS = `/pagina.css?v=${assetVersie('pagina.css')}`
const PAGINA_JS = `/pagina.js?v=${assetVersie('pagina.js')}`

const ALLERGEEN_CONTENT = (() => {
  try {
    return JSON.parse(readFileSync(join(WORTEL, 'data', 'allergeen-content.json'), 'utf8'))
  } catch {
    return {}
  }
})()

// Alleen door de handmatige/ strikte koppeling goedgekeurde winkel links.
// De feed zelf staat niet in de repository.
const WINKELDATA = (() => {
  try {
    const bestand = JSON.parse(readFileSync(join(WORTEL, 'public', 'winkels.json'), 'utf8'))
    return {
      aanbieders: bestand && typeof bestand.aanbieders === 'object' ? bestand.aanbieders : {},
      bijgewerkt: bestand?.bijgewerkt || ''
    }
  } catch {
    return { aanbieders: {}, bijgewerkt: '' }
  }
})()
const WINKELAANBOD = WINKELDATA.aanbieders

function leesEnv() {
  const env = {}
  const pad = join(WORTEL, '.env.local')
  if (!existsSync(pad)) return env
  for (const regel of readFileSync(pad, 'utf8').split(/\r?\n/)) {
    const idx = regel.indexOf('=')
    if (idx > 0 && !regel.trim().startsWith('#')) env[regel.slice(0, idx).trim()] = regel.slice(idx + 1).trim()
  }
  return env
}

const env = leesEnv()
const SUPABASE_URL = (process.env.VITE_SUPABASE_URL || process.env.SUPABASE_URL || env.VITE_SUPABASE_URL || '').replace(/\/$/, '')
const SUPABASE_KEY = process.env.VITE_SUPABASE_PUBLISHABLE_KEY || process.env.SUPABASE_PUBLISHABLE_KEY || env.VITE_SUPABASE_PUBLISHABLE_KEY || ''

const escapeHtml = (waarde = '') =>
  String(waarde)
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;')
    .replace(/'/g, '&#39;')

const datumNl = (waarde) => {
  if (!waarde) return ''
  const datum = new Date(waarde)
  if (Number.isNaN(datum.getTime())) return ''
  return datum.toLocaleDateString('nl-NL', { day: 'numeric', month: 'long', year: 'numeric' })
}

const datumIso = (waarde) => {
  if (!waarde) return ''
  const tekst = String(waarde)
  if (/^\d{4}-\d{2}-\d{2}/.test(tekst)) return tekst.slice(0, 10)
  const datum = new Date(waarde)
  return Number.isNaN(datum.getTime()) ? '' : datum.toISOString().slice(0, 10)
}

const productDatum = (product) => {
  const versie = product.recipe_versions?.[0]
  return [product.last_checked_at, versie?.reviewed_at, versie?.nutrition_checked_at, versie?.imported_at]
    .map(datumIso)
    .filter(Boolean)
    .sort()
    .at(-1) ?? ''
}

const laatsteDatum = (producten = []) => producten.map(productDatum).filter(Boolean).sort().at(-1) ?? ''

const getal = (waarde) => new Intl.NumberFormat('nl-NL').format(waarde)
const prijsNl = (waarde) => {
  const prijs = Number(waarde)
  return Number.isFinite(prijs) && prijs > 0
    ? new Intl.NumberFormat('nl-NL', { style: 'currency', currency: 'EUR' }).format(prijs)
    : ''
}

const slug = slugify

const typeLabel = (key) => FOOD_TYPES.find(([sleutel]) => sleutel === key)?.[1] ?? key

// Vaste indeling voor het overzicht zonder allergeen. Dezelfde volgorde houdt
// de hub en de losse pagina's herkenbaar.
const ALLERGEEN_GROEPEN = [
  { titel: 'Dierlijke eiwitten', keys: ['chicken', 'beef', 'lamb', 'turkey', 'duck', 'fish', 'salmon', 'milk', 'egg', 'insect', 'horse'] },
  { titel: 'Granen en zetmeel', keys: ['wheat', 'grains', 'corn', 'rice', 'potato'] },
  { titel: 'Peulvruchten en soja', keys: ['pea', 'soy'] }
]

const zoekNorm = (tekst = '') => String(tekst)
  .toLocaleLowerCase('nl')
  .normalize('NFD')
  .replace(/[\u0300-\u036f]/g, '')

function shell({ titel, beschrijving, pad, inhoud, jsonLd = [], extraKop = '', bodyClass = '', stijl = '' }) {
  const canonical = `${SITE}${pad}`
  return `<!doctype html>
<html lang="nl">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="${escapeHtml(beschrijving)}" />
    <meta name="robots" content="index, follow" />
    <link rel="canonical" href="${canonical}" />
    <meta property="og:type" content="website" />
    <meta property="og:site_name" content="Hondenvoervergelijker" />
    <meta property="og:locale" content="nl_NL" />
    <meta property="og:title" content="${escapeHtml(titel)}" />
    <meta property="og:description" content="${escapeHtml(beschrijving)}" />
    <meta property="og:url" content="${canonical}" />
    <meta property="og:image" content="${SITE}/og-image.png" />
    <meta property="og:image:width" content="1200" />
    <meta property="og:image:height" content="630" />
    <meta property="og:image:alt" content="Hondenvoervergelijker: hondenvoer vergelijken op allergenen" />
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:image" content="${SITE}/og-image.png" />
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
        <a class="back" href="/">Naar de vergelijker →</a>
      </div>
    </header>
    <main class="wrap"${stijl ? ` ${stijl}` : ''}>
${inhoud}
      <footer>
        <nav aria-label="Informatie">
          <a href="/">Vergelijker</a>
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

const organisatie = {
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

/* ------------------------------------------------------------------ */
/* Inhoudspagina's                                                     */
/* ------------------------------------------------------------------ */

const allergiePagina = () => {
  const faq = [
    {
      vraag: 'Wat is het verschil tussen een voedselallergie en een voedselintolerantie bij honden?',
      antwoord: 'Bij een allergie reageert het immuunsysteem overgevoelig op een specifiek eiwit, wat vaak resulteert in jeuk, huidklachten of maag-darmproblemen. Bij een intolerantie is er geen sprake van een immuunreactie, maar van een verteringsprobleem (bijvoorbeeld door een te hoog vetgehalte of een specifieke voedingsstof). Vaak kan alleen een dierenarts, met behulp van een strikt eliminatiedieet, het juiste onderscheid maken.'
    },
    {
      vraag: 'Hoe lees ik de ingrediëntenlijst op hondenvoer?',
      antwoord: 'Ingrediënten worden altijd vermeld in aflopende volgorde van gewicht. Wees waakzaam voor vage verzameltermen zoals “vlees en dierlijke bijproducten”, “granen”, “dierlijk vet” en “bouillon”, omdat deze geen specifieke dier- of plantensoort noemen. Voor een succesvol eliminatiedieet zoek je naar een product waarbij elk ingrediënt exact met naam (en idealiter met percentage) wordt vermeld.'
    },
    {
      vraag: 'Wat betekent “gehydrolyseerd eiwit” op een etiket?',
      antwoord: 'Dit betekent dat het eiwit in zulke kleine fragmenten is opgeknipt dat het immuunsysteem van de hond het in veel gevallen niet meer als allergeen herkent. Dit garandeert echter niet dat het voor elke hond 100% veilig is, aangezien de oorspronkelijke bron onveranderd blijft. Een dierenarts kan het beste inschatten of een gehydrolyseerd dieet geschikt is voor jouw hond.'
    },
    {
      vraag: 'Is “graanvrij” automatisch een veilige keuze bij een allergie?',
      antwoord: 'Nee, zeker niet. Een voedselallergie wordt meestal veroorzaakt door een dierlijke eiwitbron (zoals kip, rund of zuivel), niet door granen. Een graanvrij product kan dus nog steeds de eiwitten bevatten waar je hond allergisch voor is. Omgekeerd kan een voeding mét granen, maar met slechts één gecontroleerde (hypoallergene) eiwitbron, wél uitstekend geschikt zijn.'
    },
    {
      vraag: 'Is versvlees of KVV geschikt bij een allergie?',
      antwoord: 'Dat kan, maar alleen als de dierlijke eiwitbron precies bekend is en de voeding past bij het eliminatiedieet dat je dierenarts heeft opgesteld. Versvlees en KVV bevatten veel vocht en kunnen bacteriën zoals Salmonella bevatten; hygiëne is dus extra belangrijk. Een onduidelijke term als “vlees” of “dierlijke bijproducten” maakt de voeding ongeschikt voor een gerichte eliminatieproef.'
    },
    {
      vraag: 'Kan ik deze website gebruiken als vervanging voor een eliminatiedieet?',
      antwoord: 'Nee. Onze website is uitsluitend een hulpmiddel om snel inzicht te krijgen in de samenstelling van etiketten en het opsporen van onduidelijke bronnen. Het uitvoeren van een eliminatiedieet en de daaropvolgende provocatietest dienen altijd onder begeleiding van een dierenarts te gebeuren, met voeding die daar specifiek voor is samengesteld.'
    }
  ]

  const faqJsonLd = {
    '@context': 'https://schema.org',
    '@type': 'FAQPage',
    mainEntity: faq.map(({ vraag, antwoord }) => ({
      '@type': 'Question',
      name: vraag,
      acceptedAnswer: { '@type': 'Answer', text: antwoord }
    }))
  }

  const inhoud = `      <p class="breadcrumb"><a href="/">Hondenvoervergelijker</a> › Hondenvoer en allergieën</p>
      <p class="eyebrow">Uitleg</p>
      <h1>Hondenvoer en allergieën: zo lees je een etiket</h1>
      <p class="lead">Bij een vermoeden van een voedselallergie draait vrijwel alles om één cruciale vraag: welke ingrediënten worden expliciet op het etiket vermeld, en welke gaan schuil achter onduidelijke verzameltermen? Op deze pagina leggen we uit waar je op moet letten en hoe onze vergelijker je hierbij helpt.</p>
      <p class="updated">Bijgewerkt op ${datumNl(VANDAAG)} · leestijd ongeveer 7 minuten</p>

      <div class="callout warn">
        <p><strong>Geen medisch advies:</strong> klachten zoals jeuk, haaruitval, oorontstekingen, braken of diarree kunnen talloze oorzaken hebben. Laat een vermoede allergie daarom altijd eerst door een dierenarts onderzoeken voordat je zelfstandig met een speciaal dieet begint.</p>
      </div>

      <h2>Allergie of intolerantie?</h2>
      <p>Bij een <strong>voedselallergie</strong> reageert het immuunsysteem van de hond op een specifiek eiwit. Vaak is dit een dierlijk eiwit, zoals afkomstig van kip, rund, lam of zuivel. De klachten uiten zich meestal in jeuk en huidproblemen, en soms in maag-darmklachten. Bij een <strong>voedselintolerantie</strong> is het immuunsysteem niet betrokken; hierbij gaat het om een probleem met de spijsvertering (bijvoorbeeld moeite met het afbreken van bepaalde stoffen). Een eliminatiedieet, gevolgd door een provocatietest, is de meest betrouwbare manier om vast te stellen of het om een allergie of intolerantie gaat.</p>

      <h2>Waarom de ingrediëntenlijst zo belangrijk is</h2>
      <p>De wettelijk verplichte ingrediëntenlijst is de enige plek waar exact staat vermeld wat de voeding daadwerkelijk bevat. In de praktijk blijkt deze lijst echter vaak minder transparant dan hij lijkt:</p>
      <ul>
        <li><strong>Verzameltermen:</strong> termen als “vlees en dierlijke bijproducten”, “granen” en “dierlijk vet” specificeren geen exacte dier- of plantensoort. Voor baasjes die een specifieke eiwit- of koolhydraatbron willen vermijden, levert dit onzekerheid op.</li>
        <li><strong>Percentages:</strong> de vermelding “kip 4%” betekent iets heel anders dan “kip 40%”. Zonder duidelijke percentages is de werkelijke samenstelling van het voer moeilijk in te schatten.</li>
        <li><strong>Bijproducten en organen:</strong> ingrediënten zoals lever, long, hart of karkas zijn nog steeds afkomstig van een specifiek dier. Voor een allergische hond tellen deze orgaanvleessoorten dus net zo zwaar mee als spiervlees.</li>
        <li><strong>Bouillon en vetten:</strong> een “bouillon” of “dierlijk vet” kan van meerdere diersoorten afkomstig zijn. Zolang de exacte bron ontbreekt, vormt dit een verborgen risico.</li>
        <li><strong>Gehydrolyseerd eiwit:</strong> bij dit proces zijn de eiwitten dusdanig klein “opgeknipt” dat het immuunsysteem ze minder snel herkent, maar de oorspronkelijke bron blijft gelijk. Overleg altijd met een dierenarts of dit in jullie specifieke situatie een veilige keuze is.</li>
      </ul>

      <h2>Zo gebruik je de vergelijker</h2>
      <ol>
        <li>Selecteer de allergenen die je wilt vermijden (bijvoorbeeld kip, rund, tarwe of zalm).</li>
        <li>Controleer per product of de bron specifiek met naam wordt genoemd. Producten die vage of onduidelijke termen bevatten, krijgen de status “Controleer etiket/fabrikant”.</li>
        <li>Open de volledige ingrediëntenlijst op de productkaart. Rood gemarkeerde termen zijn ongespecificeerd en bevatten geen duidelijke bron.</li>
        <li>Twijfel je nog steeds? Vraag dan de fabrikant om een schriftelijke bevestiging van de gebruikte bronnen en bewaar dit antwoord goed.</li>
      </ol>
      <p><a class="cta" href="/">Open de vergelijker</a> <a class="cta secondary" href="/merken/">Bekijk alle merken</a></p>

      <h2>Wat de uitslagen betekenen</h2>
      <table>
        <thead><tr><th>Uitslag</th><th>Betekenis</th></tr></thead>
        <tbody>
          <tr><td><strong>Lijkt geschikt</strong></td><td>Het etiket vermeldt de geselecteerde bron nergens. Daarnaast bevat de lijst geen onduidelijke verzameltermen waarachter dit allergeen verborgen kan zitten.</td></tr>
          <tr><td><strong>Uitgesloten</strong></td><td>De geselecteerde bron staat expliciet met naam genoemd in de ingrediëntenlijst.</td></tr>
          <tr><td><strong>Controleer etiket/fabrikant</strong></td><td>Het etiket bevat een ingrediënt zonder gespecificeerde bron, of noemt een term die ons systeem niet herkent. Alleen de fabrikant of de originele verpakking kan hier uitsluitsel over geven.</td></tr>
        </tbody>
      </table>

      <h2>Veelgestelde vragen</h2>
      <div class="faq">
        ${faq.map(({ vraag, antwoord }) => `<details><summary>${escapeHtml(vraag)}</summary><p>${escapeHtml(antwoord)}</p></details>`).join('\n        ')}
      </div>

      <div class="callout">
        <p><strong>Verder lezen:</strong> ontdek <a href="/hoe-wij-vergelijken.html">hoe wij etiketten overnemen en controleren</a>, bekijk direct <a href="/merken/">alle merken</a> en hun producten, of zoek <a href="/hondenvoer-zonder.html">hondenvoer zonder een specifiek allergeen</a>.</p>
      </div>`

  return shell({
    titel: 'Hondenvoer en allergieën: zo lees je een etiket | Hondenvoervergelijker',
    beschrijving: 'Uitleg over voedselallergie en intolerantie bij honden, verzameltermen op etiketten, gehydrolyseerd eiwit en het gebruik van de onafhankelijke hondenvoervergelijker.',
    pad: '/hondenvoer-allergieen.html',
    inhoud,
    jsonLd: [faqJsonLd, { '@context': 'https://schema.org', ...organisatie }]
  })
}

const methodePagina = () => {
  const inhoud = `      <p class="breadcrumb"><a href="/">Hondenvoervergelijker</a> › Hoe wij vergelijken</p>
      <p class="eyebrow">Methodiek</p>
      <h1>Hoe wij hondenvoer vergelijken</h1>
      <p class="lead">Onze vergelijker hanteert één strikte basisregel: alle getoonde informatie moet direct herleidbaar zijn tot de officiële ingrediëntenlijst van de fabrikant. Op deze pagina lichten we toe hoe we data verzamelen, hoe het automatische beoordelingssysteem werkt en wat de beperkingen zijn.</p>
      <p class="updated">Bijgewerkt op ${datumNl(VANDAAG)}</p>

      <h2>1. Bronnen: de fabrikant, niet de winkel</h2>
      <p>Wij halen onze ingrediëntenlijsten rechtstreeks van de officiële productpagina's van de fabrikant, bij voorkeur de Nederlandse versie. Is deze niet beschikbaar? Dan gebruiken we de anderstalige officiële pagina. Daarbij vertalen we de samenstelling met exact dezelfde percentages en in dezelfde volgorde. In dat geval vind je daarvan altijd een transparante notitie op de desbetreffende productkaart.</p>
      <p>Webshops en affiliate-feeds gebruiken we niet als bron voor de samenstelling. Deze lopen namelijk vaak achter na receptuurwijzigingen en bundelen soms per ongeluk meerdere productvarianten op één webpagina. Voor een klein aantal producten is er geen bruikbare Nederlandse fabrikantpagina, of wijkt de Nederlandse formule af van de anderstalige fabrikantpagina. Dan gebruiken we een gespecificeerde Nederlandse winkelpagina als bron en staat dat op de productkaart. Dat geldt voor Terra Canis, Taste of the Wild, Purina One, Frolic en Dog Chow. Zodra er een bruikbare fabrikantpagina is, vervangen we die bron.</p>

      <h2>2. Letterlijk overnemen</h2>
      <p>De tekst op het etiket wordt door ons letterlijk overgenomen: inclusief dezelfde volgorde, percentages, hoeveelheden en zelfs leestekens. Ontbreekt de lijst of is de informatie online onbereikbaar? Dan voegen we het product simpelweg niet toe. We doen niet aan giswerk; we hebben liever een ontbrekend product op de site dan een onjuiste ingrediëntenlijst.</p>

      <h2>3. Voedingswaarden: inclusief vocht</h2>
      <p>De voedingswaarden komen in de regel van hetzelfde etiket als de ingrediëntenlijst. Is de Nederlandse productpagina niet bruikbaar of wijkt de Nederlandse formule af, dan gebruiken we een gespecificeerde buitenlandse of retailerpagina. Dat staat bij het product vermeld, samen met de bron en de controledatum. De percentages zijn <strong>as-fed</strong>: inclusief het vocht in het product. Dat is de waarde die de fabrikant publiceert en die de meeste eigenaren op de verpakking zien.</p>
      <p>Het vochtgehalte verschilt sterk per voertype: brokken bevatten meestal 6–10% vocht, natvoer 75–85% en rauwvoer 60–75%. Daardoor lijken eiwit- en vetpercentages van natvoer veel lager dan die van brokken, terwijl er per 100 g droge stof soms juist meer eiwit in zit. Vergelijk daarom binnen hetzelfde voertype, of reken de waarden om naar droge stof. De site toont standaard de as-fedwaarden. In de voedingswaarden van een product kun je naar droge stof schakelen; dan wordt het vocht weggerekend. Zonder vochtgehalte is die knop niet beschikbaar. De filters en sortering werken op as-fed.</p>
      <p>Op de vergelijkingspagina kun je alle standaardwaarden met een minimum- en maximumschuif filteren: eiwit, vet, vezel, as, vocht, energie, calcium, fosfor, omega-3 en omega-6. Eiwit, vet en energie staan direct open; de andere waarden zitten in één compacte uitklapregel. De filters werken op de as-fedwaarden. Filter je natvoer en brokken tegelijk, dan waarschuwt de site dat de percentages niet direct vergelijkbaar zijn. Producten waarvan de fabrikant een waarde niet vermeldt, vallen af zodra je dat filter gebruikt. De resultaten zijn binnen de drie oordeelgroepen te sorteren op eiwit, vet of energie; producten zonder die waarde blijven zichtbaar en zakken naar achteren. Producten zijn op naam te zoeken en maximaal drie producten kunnen naast elkaar worden gezet, met dezelfde waarden en dezelfde as-fed/droge-stofkeuze. Leeftijd (Puppy/Adult/Senior/Alle) en formaat (Mini/Medium/Large) zijn filterbaar op basis van de productnaam; dat is een praktische aanduiding, geen gecontroleerd databaseveld. Het etiket blijft leidend.</p>
      <p>De voedingswaarden worden bij de import gecontroleerd. Daarnaast draait er een aparte broncontrole op de vastgelegde analysetekst. Een waarde die aantoonbaar niet kan — bijvoorbeeld een bronanalyse die optelt tot meer dan 100% of een vezelwaarde die een typefout lijkt — krijgt een waarschuwing op de kaart en wordt niet als filter- of sorteerwaarde gebruikt. Zo blijft de bron zichtbaar, zonder dat een onmogelijke waarde de vergelijking stuurt.</p>

      <h2>4. De keuring: woord voor woord</h2>
      <p>Elke ingrediëntenlijst wordt geautomatiseerd geanalyseerd. Ons systeem herkent dierlijke en plantaardige eiwitbronnen, bereidingswijzen, mineralen en hulpstoffen. Verzameltermen die de werkelijke bron verbergen — zoals “dierlijk vet”, “granen”, “bouillon” of “plantaardige olie” — blokkeren vervolgens alleen die allergenen die er logischerwijs achter schuil kunnen gaan. Zo kan “dierlijk vet” bijvoorbeeld afkomstig zijn van een rund of varken, maar nooit van tarwe of zalm.</p>
      <p>Onbekende woorden worden door de beheerder eenmalig handmatig gecategoriseerd. Deze indeling wordt opgeslagen en direct toegepast op alle toekomstige en bestaande producten die ditzelfde woord bevatten. Zo leert de vergelijker continu nieuwe termen herkennen, zonder dat elk etiket volledig handwerk blijft.</p>

      <h2>5. Eerlijk over onzekerheid</h2>
      <p>Wanneer een etiket de specifieke bron niet noemt, markeert onze site het product niet blindelings als “Lijkt geschikt”, maar geven we de status “Controleer etiket/fabrikant”. Dit is geen programmeerfout, maar een weerspiegeling van de onvolledigheid van het etiket zelf. In dergelijke gevallen kan uitsluitend de verpakking of de fabrikant helderheid verschaffen.</p>

      <h2>6. Actualiteit en bronbewaking</h2>
      <p>De bronpagina's worden wekelijks geautomatiseerd gecontroleerd. Is de tekst op de website van de fabrikant ongewijzigd? Dan updaten we enkel de controledatum. Signaleert het systeem een wijziging, dan blijft de oude samenstelling op onze site zichtbaar totdat een beheerder de nieuwe tekst handmatig heeft goedgekeurd en verwerkt. Hierdoor passen ingrediëntenlijsten op ons platform zich nooit ongemerkt aan. Voor de voedingswaarden draait een aparte controle op de vastgelegde analysetekst; ook daar verandert niets automatisch.</p>
      <p>Sites die geautomatiseerde bezoeken blokkeren, controleren we periodiek handmatig. Producten die lange tijd niet gecontroleerd konden worden, krijgen uit voorzorg automatisch de status “Controleer etiket/fabrikant”. Dit is een bewust strenge veiligheidsmaatregel.</p>
      <p>Benieuwd hoe vaak verzameltermen in de hele database voorkomen? Lees ons <a href="/etikettenonderzoek.html">etikettenonderzoek</a>.</p>

      <h2>7. Onafhankelijkheid en affiliate-links</h2>
      <p>Wij vergelijken ingrediënten, allergenen en voedingswaarden — geen prijsvergelijker. De weergavevolgorde en de uiteindelijke beoordeling van producten zijn uitsluitend gebaseerd op de feitelijke etiketinformatie en de door jou geselecteerde allergenen. Verwijzingen naar fabrikanten of webwinkels kunnen affiliate-links bevatten. Bij een winkel kan een vanaf-prijs staan; die kan afwijken en heeft geen enkele invloed op wélke producten we tonen, op de rangschikking, of op de keuringsuitslag.</p>
      <ul>
        <li>Merken betalen niet voor een hogere positie of een beter oordeel.</li>
        <li>Het ontbreken van een productlink verandert niets aan de selectie of beoordeling.</li>
        <li>De officiële productpagina van de fabrikant blijft de primaire bron.</li>
        <li>Een commerciële link is een doorverwijzing, geen onderdeel van de keuring.</li>
        <li>Fouten kunnen door gebruikers worden gemeld; na een bronwijziging gaat het product opnieuw ter controle.</li>
      </ul>
      <p>Meer hierover lees je in ons <a href="/privacybeleid.html">privacybeleid</a> en in het <a href="/broncontrole.html">openbare broncontroleverslag</a>.</p>

      <h2>8. Beperkingen</h2>
      <ul>
        <li>De vergelijker baseert zich uitsluitend op de verstrekte etiketinformatie. Receptuurwijzigingen die de fabrikant (nog) niet op het etiket heeft doorgevoerd, zijn voor ons onzichtbaar.</li>
        <li>Als een specifieke bron op het etiket ontbreekt, betekent dit niet automatisch dat het product onveilig is voor jouw hond. Het houdt simpelweg in dat het etiket hierover onvoldoende uitsluitsel geeft.</li>
        <li>Deze website is geen medisch hulpmiddel en dient nooit ter vervanging van een veterinair eliminatiedieet of een onderzoek door een dierenarts.</li>
        <li>Hoewel we zeer zorgvuldig te werk gaan, blijven menselijke fouten bij het overnemen mogelijk. Ontdek je een fout? Meld dit dan via <a href="mailto:hondenvoervergelijker@paulzuiderduin.com">hondenvoervergelijker@paulzuiderduin.com</a>; we corrigeren het direct en vermelden de bron.</li>
      </ul>

      <div class="callout">
        <p><a class="cta" href="/">Naar de vergelijker</a> <a class="cta secondary" href="/hondenvoer-allergieen.html">Hondenvoer en allergieën</a></p>
      </div>`

  return shell({
    titel: 'Hoe wij hondenvoer vergelijken: bronnen, keuring en grenzen | Hondenvoervergelijker',
    beschrijving: 'Transparante methodiek: officiële fabrikantetiketten, letterlijke overname, woord-voor-woord keuring, wekelijkse bronbewaking en onafhankelijkheid van affiliate-links.',
    pad: '/hoe-wij-vergelijken.html',
    inhoud,
    jsonLd: [{ '@context': 'https://schema.org', ...organisatie }]
  })
}

/* ------------------------------------------------------------------ */
/* Vertrouwens- en juridische pagina's                                 */
/* ------------------------------------------------------------------ */

const overOnsPagina = () => {
  const inhoud = `      <p class="breadcrumb"><a href="/">Hondenvoervergelijker</a> › Over ons</p>
      <p class="eyebrow">Over de site</p>
      <h1>Over Hondenvoervergelijker</h1>
      <p class="lead">Hondenvoervergelijker is een onafhankelijke Nederlandse website die hondeneigenaren helpt om voeding te vinden die past bij een voedselallergie, intolerantie of voedingsbehoefte. Geen eigen winkel, geen sponsoring en geen medische claims: wel zo duidelijk mogelijk laten zien wat er werkelijk op het etiket staat.</p>
      <p class="updated">Bijgewerkt op ${datumNl(VANDAAG)}</p>

      <h2>Waarom deze site bestaat</h2>
      <p>Een hond met een voedselallergie heeft baat bij duidelijkheid. Toch staan op veel verpakkingen verzameltermen zoals “vlees en dierlijke bijproducten”, “granen” of “dierlijk vet”. Daaruit kun je niet afleiden welke dier- of plantsoort er werkelijk in zit. Wie een specifiek ingrediënt wil vermijden, heeft aan zo'n etiket weinig.</p>
      <p>Hondenvoervergelijker neemt de ingrediëntenlijsten van fabrikanten letterlijk over en beoordeelt per allergeen of de bron bij name genoemd is. Zo zie je in één oogopslag welke producten geschikt lijken, welke je moet controleren en welke je beter kunt overslaan.</p>

      <h2>Wat je op de site vindt</h2>
      <ul>
        <li>Een vergelijker met hondenvoer van tientallen merken, met allergenen, ingrediënten en voedingswaarden.</li>
        <li>Per allergeen een overzicht van producten die het ingrediënt niet noemen, zoals <a href="/hondenvoer-zonder-kip.html">hondenvoer zonder kip</a>.</li>
        <li>Per merk een pagina met alle producten, ingrediënten en aandachtspunten.</li>
        <li>Uitleg over <a href="/hondenvoer-allergieen.html">hondenvoer en allergieën</a> en over <a href="/hoe-wij-vergelijken.html">hoe wij vergelijken</a>.</li>
      </ul>

      <h2>Hoe wij werken</h2>
      <p>De basis is altijd de officiële ingrediëntenlijst van de fabrikant. We nemen de tekst letterlijk over, inclusief percentages en volgorde. Ontbreekt een betrouwbare lijst, dan voegen we het product niet toe. Onbekende woorden worden handmatig ingedeeld. De bronpagina's worden wekelijks gecontroleerd; wijzigingen worden pas doorgevoerd nadat ze zijn nagelopen.</p>
      <p>Meer over onze werkwijze staat op de pagina <a href="/hoe-wij-vergelijken.html">Hoe wij hondenvoer vergelijken</a>.</p>

      <h2>Onafhankelijk en transparant</h2>
      <p>De site is gratis en bevat geen advertentienetwerken. Bij normaal gebruik plaatsen wij geen trackingcookies. Sommige verwijzingen naar webwinkels kunnen affiliate-links zijn; na een klik kan de winkel of het affiliate-netwerk een cookie plaatsen. Als je via zo'n link iets koopt, ontvangen wij een kleine commissie. Dat kost jou niets extra en heeft geen invloed op de producten die we tonen, de volgorde of de beoordeling.</p>
      <p>We zijn geen dierenarts en geven geen medisch advies. Bij jeuk, maag-darmklachten of een vermoeden van een allergie is een dierenarts de juiste persoon. Lees ook onze <a href="/disclaimer.html">disclaimer</a>.</p>

      <h2 id="redactie">Over de redactie</h2>
      <p>Hondenvoervergelijker wordt ontwikkeld en onderhouden door Paul Zuiderduin. Hij neemt de ingrediëntenlijsten over, beoordeelt onbekende woorden en bewaakt de bronpagina's van de fabrikanten. De site is bewust klein gehouden: geen advertentienetwerken, geen sponsored content en geen redactionele inmenging van merken of winkels.</p>
      <p>Heb je een fout gevonden of een vraag over de werkwijze? Neem contact op via de <a href="/contact.html">contactpagina</a>. We corrigeren bronfouten zo snel mogelijk en vermelden daarbij waar de juiste informatie vandaan komt.</p>

      <div class="callout">
        <p><a class="cta" href="/">Naar de vergelijker</a> <a class="cta secondary" href="/contact.html">Contact opnemen</a></p>
      </div>`

  return shell({
    titel: 'Over Hondenvoervergelijker | Onafhankelijk hondenvoer vergelijken',
    beschrijving: 'Hondenvoervergelijker is een onafhankelijke Nederlandse website die hondeneigenaren helpt bij het vinden van voeding zonder specifieke allergenen. Lees over de werkwijze, onafhankelijkheid en redactie.',
    pad: '/over-ons.html',
    inhoud,
    jsonLd: [
      {
        '@context': 'https://schema.org',
        '@type': 'Organization',
        '@id': `${SITE}/#organisatie`,
        name: 'Hondenvoervergelijker',
        url: `${SITE}/`,
        email: 'hondenvoervergelijker@paulzuiderduin.com',
        logo: { '@type': 'ImageObject', url: `${SITE}/favicon-512.png`, width: 512, height: 512 },
        sameAs: ['https://github.com/Paulmzuiderduin/hondenvoervergelijker'],
        description: 'Onafhankelijke Nederlandse vergelijker van hondenvoeding op allergenen en ingrediënten.',
        founder: { '@type': 'Person', '@id': `${SITE}/over-ons.html#paul-zuiderduin` },
        areaServed: ['NL', 'BE'],
        knowsAbout: ['hondenvoeding', 'voedselallergieën bij honden', 'ingrediëntenlijsten', 'hondenvoer vergelijken']
      },
      {
        '@context': 'https://schema.org',
        '@type': 'Person',
        '@id': `${SITE}/over-ons.html#paul-zuiderduin`,
        name: 'Paul Zuiderduin',
        jobTitle: 'Redacteur en beheerder',
        worksFor: { '@type': 'Organization', '@id': `${SITE}/#organisatie` },
        url: `${SITE}/over-ons.html#redactie`,
        knowsAbout: ['hondenvoeding', 'voedselallergieën bij honden', 'ingrediëntenlijsten', 'etiketten lezen']
      },
      {
        '@context': 'https://schema.org',
        '@type': 'WebPage',
        name: 'Over Hondenvoervergelijker',
        url: `${SITE}/over-ons.html`,
        dateModified: VANDAAG,
        inLanguage: 'nl-NL',
        about: { '@type': 'Organization', '@id': `${SITE}/#organisatie` },
        mainEntity: { '@type': 'Person', '@id': `${SITE}/over-ons.html#paul-zuiderduin` }
      }
    ]
  })
}

const contactPagina = () => {
  const inhoud = `      <p class="breadcrumb"><a href="/">Hondenvoervergelijker</a> › Contact</p>
      <p class="eyebrow">Contact</p>
      <h1>Contact</h1>
      <p class="lead">Vragen over de vergelijker, een fout in een ingrediëntenlijst of een suggestie voor een product? Stuur een e-mail. We lezen alles en reageren zo snel als mogelijk.</p>
      <p class="updated">Bijgewerkt op ${datumNl(VANDAAG)}</p>

      <p><a class="cta" href="mailto:hondenvoervergelijker@paulzuiderduin.com">Mail naar hondenvoervergelijker@paulzuiderduin.com</a></p>

      <h2>Waarvoor kun je contact opnemen?</h2>
      <ul>
        <li>Een fout of verouderde informatie in een ingrediëntenlijst.</li>
        <li>Een product of merk dat nog ontbreekt in de vergelijker.</li>
        <li>Een vraag over de werkwijze of de bron van een product.</li>
        <li>Privacyvragen of een verzoek om gegevens te verwijderen.</li>
        <li>Pers, samenwerking of een andere zakelijke vraag.</li>
      </ul>

      <h2>Een fout melden</h2>
      <p>Vermeld het merk, de productnaam, de bronpagina en wat er volgens jou niet klopt. Een link of screenshot van de officiële fabrikantpagina helpt om het snel te controleren. We passen de tekst aan zodra de bron is gecontroleerd.</p>

      <h2>Reactietijd</h2>
      <p>We proberen binnen enkele werkdagen te reageren. Voor privacyverzoeken geldt een wettelijke termijn van maximaal 30 dagen.</p>

      <h2>Medische vragen</h2>
      <p>Hondenvoervergelijker is geen dierenarts. Voor medische vragen, een eliminatiedieet of een vermoeden van een allergie verwijzen we je naar je eigen dierenarts. Lees ook onze <a href="/disclaimer.html">disclaimer</a> en de <a href="/voorwaarden.html">gebruiksvoorwaarden</a>.</p>`

  return shell({
    titel: 'Contact | Hondenvoervergelijker',
    beschrijving: 'Neem contact op met Hondenvoervergelijker voor vragen, correcties, product suggesties, privacyverzoeken of samenwerkingen.',
    pad: '/contact.html',
    inhoud,
    jsonLd: [{ '@context': 'https://schema.org', ...organisatie }]
  })
}

const voorwaardenPagina = () => {
  const inhoud = `      <p class="breadcrumb"><a href="/">Hondenvoervergelijker</a> › Gebruiksvoorwaarden</p>
      <p class="eyebrow">Juridisch</p>
      <h1>Gebruiksvoorwaarden</h1>
      <p class="lead">Deze voorwaarden gelden voor het gebruik van Hondenvoervergelijker. Door de site te gebruiken, ga je hiermee akkoord.</p>
      <p class="updated">Laatst bijgewerkt op ${datumNl(VANDAAG)}</p>

      <h2>1. Over deze site</h2>
      <p>Hondenvoervergelijker is een informatieve website over hondenvoeding en allergenen. De site wordt beheerd door Paul Zuiderduin, Nederland. Contact verloopt via <a href="/contact.html">de contactpagina</a> of per e-mail op <a href="mailto:hondenvoervergelijker@paulzuiderduin.com">hondenvoervergelijker@paulzuiderduin.com</a>.</p>

      <h2>2. Gebruik van de site</h2>
      <p>Je mag de site gebruiken voor persoonlijke, niet-commerciële doeleinden. Het is niet toegestaan de site of de onderliggende data geautomatiseerd te kopiëren, te scrapen, commercieel te hergebruiken of te bewerken zonder voorafgaande schriftelijke toestemming.</p>

      <h2>3. Informatie en geen medisch advies</h2>
      <p>De site geeft informatieve vergelijkingen op basis van openbare ingrediëntenlijsten. De informatie is geen medisch advies, diagnose of behandelplan. Raadpleeg bij twijfel altijd een dierenarts. Zie ook onze <a href="/disclaimer.html">disclaimer</a>.</p>

      <h2>4. Affiliate-links</h2>
      <p>Sommige links naar webwinkels kunnen affiliate-links zijn. Als je via zo'n link een aankoop doet, ontvangen wij een kleine commissie. Dit kost jou niets extra. De selectie, sortering en beoordeling van producten zijn niet afhankelijk van deze commissie. Beschikbaarheid en voorwaarden worden bepaald door de betreffende winkel. Wij vergelijken geen prijzen. Bij een winkel-link kan een vanaf-prijs uit de productfeed staan; die kan afwijken van de actuele winkelprijs en is geen onderdeel van de vergelijking.</p>

      <h2>5. Intellectueel eigendom</h2>
      <p>De teksten, data, vormgeving en andere inhoud van deze site zijn eigendom van Hondenvoervergelijker, tenzij anders vermeld. Overname voor commerciële doeleinden is niet toegestaan zonder toestemming. Korte citaten met een duidelijke bronvermelding zijn toegestaan.</p>

      <h2>6. Aansprakelijkheid</h2>
      <p>We streven naar zorgvuldige en actuele informatie, maar kunnen niet garanderen dat alle gegevens compleet, juist of actueel zijn. Fabrikanten kunnen recepten wijzigen. Controleer daarom altijd de verpakking en de officiële informatie van de fabrikant. Voor zover wettelijk toegestaan, aanvaarden wij geen aansprakelijkheid voor schade die voortvloeit uit het gebruik van de site of uit beslissingen die op basis van de informatie worden genomen.</p>

      <h2>7. Wijzigingen</h2>
      <p>We kunnen deze voorwaarden aanpassen wanneer de site of de wetgeving verandert. De datum bovenaan deze pagina geeft de laatste wijziging aan. Blijf je de site gebruiken na een wijziging, dan geldt de nieuwe versie.</p>

      <h2>8. Toepasselijk recht</h2>
      <p>Op deze voorwaarden is Nederlands recht van toepassing. Geschillen worden voorgelegd aan de bevoegde rechter in Nederland, tenzij de wet anders voorschrijft.</p>`

  return shell({
    titel: 'Gebruiksvoorwaarden | Hondenvoervergelijker',
    beschrijving: 'De gebruiksvoorwaarden van Hondenvoervergelijker: gebruik van de site, informatie, affiliate-links, intellectueel eigendom en aansprakelijkheid.',
    pad: '/voorwaarden.html',
    inhoud,
    jsonLd: [{ '@context': 'https://schema.org', ...organisatie }]
  })
}

const disclaimerPagina = () => {
  const inhoud = `      <p class="breadcrumb"><a href="/">Hondenvoervergelijker</a> › Disclaimer</p>
      <p class="eyebrow">Juridisch</p>
      <h1>Disclaimer</h1>
      <p class="lead">Hondenvoervergelijker is een informatieve website. Deze disclaimer legt uit wat de site wel en niet doet, en waar je op moet letten bij het gebruik van de informatie.</p>
      <p class="updated">Laatst bijgewerkt op ${datumNl(VANDAAG)}</p>

      <h2>Geen medisch advies</h2>
      <p>Hondenvoervergelijker is geen dierenarts en geeft geen medisch advies. De site helpt je om ingrediëntenlijsten te vergelijken, maar kan een onderzoek, diagnose of behandeling door een dierenarts niet vervangen. Een voedselallergie of intolerantie stel je niet zelf vast. Overleg bij jeuk, huidklachten, maag-darmproblemen of een vermoeden van een allergie altijd met je dierenarts.</p>

      <h2>Informatie kan wijzigen</h2>
      <p>Fabrikanten kunnen recepten aanpassen zonder dat dit direct op onze site zichtbaar is. De ingrediëntenlijst op de verpakking is altijd leidend. Controleer voor aankoop de verpakking en, bij twijfel, de officiële productpagina van de fabrikant.</p>

      <h2>Geen garantie op volledigheid</h2>
      <p>We nemen etiketten zorgvuldig over en controleren bronnen periodiek, maar kunnen niet garanderen dat alle informatie compleet, juist of actueel is. Menselijke fouten blijven mogelijk. Ontdek je een fout? Meld het via de <a href="/contact.html">contactpagina</a>, dan corrigeren we het zo snel mogelijk.</p>

      <h2>Affiliate-links</h2>
      <p>Sommige links naar webwinkels zijn affiliate-links. Als je via zo'n link een aankoop doet, ontvangen wij een kleine commissie. Dit kost jou niets extra. De commissie heeft geen invloed op de producten die we tonen, de volgorde of de beoordeling.</p>

      <h2>Externe links</h2>
      <p>De site kan verwijzen naar websites van fabrikanten, winkels of andere organisaties. Wij hebben geen controle over de inhoud, het aanbod of het privacybeleid van die websites. Raadpleeg daarom altijd hun eigen voorwaarden en privacyverklaring.</p>

      <h2>Aansprakelijkheid</h2>
      <p>Het gebruik van de site en de informatie is voor eigen verantwoordelijkheid. Voor zover wettelijk toegestaan, aanvaarden wij geen aansprakelijkheid voor directe of indirecte schade die voortvloeit uit het gebruik van de site, uit onjuiste of verouderde informatie, of uit aankopen bij externe partijen.</p>

      <div class="callout">
        <p><a class="cta" href="/contact.html">Een fout melden</a> <a class="cta secondary" href="/hoe-wij-vergelijken.html">Hoe wij vergelijken</a></p>
      </div>`

  return shell({
    titel: 'Disclaimer | Hondenvoervergelijker',
    beschrijving: 'Disclaimer van Hondenvoervergelijker: geen medisch advies, informatie kan wijzigen, affiliate-links en aansprakelijkheid.',
    pad: '/disclaimer.html',
    inhoud,
    jsonLd: [{ '@context': 'https://schema.org', ...organisatie }]
  })
}

/* ------------------------------------------------------------------ */
/* Merkpagina's                                                        */
/* ------------------------------------------------------------------ */

async function haalTermen() {
  if (!SUPABASE_URL || !SUPABASE_KEY) return []
  const antwoord = await fetch(`${SUPABASE_URL}/rest/v1/ingredient_terms?select=term,kind,allergen_keys&order=term`, {
    headers: { apikey: SUPABASE_KEY, authorization: `Bearer ${SUPABASE_KEY}` }
  })
  if (!antwoord.ok) throw new Error(`HTTP ${antwoord.status}`)
  const rijen = await antwoord.json()
  return rijen.map((term) => ({ term: term.term, kind: term.kind, allergen_keys: Array.isArray(term.allergen_keys) ? term.allergen_keys.filter(Boolean) : [] }))
}

async function haalProducten() {
  if (!SUPABASE_URL || !SUPABASE_KEY) return null
  const basis = `${SUPABASE_URL}/rest/v1/products?select=id,brand,name,food_type,package_size,source_url,last_checked_at,source_status,recipe_versions(ingredients_text,imported_at,reviewed_at,nutrition_source_url,nutrition_checked_at,nutrition_note,recipe_ingredients(allergen_key,certainty),recipe_nutrition(nutrient_key,value,basis))&published=eq.true&recipe_versions.is_current=eq.true&order=brand.asc,name.asc`
  const rijen = []
  for (let offset = 0; ; offset += 1000) {
    const antwoord = await fetch(`${basis}&limit=1000&offset=${offset}`, {
      headers: { apikey: SUPABASE_KEY, authorization: `Bearer ${SUPABASE_KEY}` }
    })
    if (!antwoord.ok) throw new Error(`HTTP ${antwoord.status}`)
    const deel = await antwoord.json()
    rijen.push(...deel)
    if (deel.length < 1000) break
  }
  return rijen
}

const verdictLabel = (transparant) => (transparant ? 'etiket noemt elke bron' : 'bron niet volledig benoemd')

function productRegel(product) {
  const versie = product.recipe_versions?.[0]
  const tekst = versie?.ingredients_text ?? ''
  const uitslag = assessLabel(tekst)
  const transparant = uitslag.hidden.length === 0 && uitslag.unknown.length === 0
  const bronnen = (uitslag.allergens ?? []).map((key) => ALLERGEN_LABELS[key] ?? key)
  const bronTekst = bronnen.length
    ? `Etiket noemt: ${bronnen.slice(0, 8).join(', ')}${bronnen.length > 8 ? ` en ${bronnen.length - 8} meer` : ''}`
    : 'Geen bekende allergeenbron in de lijst'
  const type = typeLabel(product.food_type)
  const maat = product.package_size && String(product.package_size).trim().toLowerCase() !== 'null'
    ? ` · ${escapeHtml(product.package_size)}`
    : ''
  const pad = productPad(product)
  return `          <li>
            <span>
              <a class="name" href="${pad}">${escapeHtml(product.name)}</a><br />
              <span class="meta">${escapeHtml(type)}${maat} · ${escapeHtml(bronTekst)}</span>
            </span>
            <span class="product-list-action">
              <span class="tag ${transparant ? 'ok' : 'check'}">${verdictLabel(transparant)}</span>
              <a class="product-more" href="${pad}">Details →</a>
            </span>
          </li>`
}

function merkPagina(brand, producten, buren = []) {
  const slugBrand = slug(brand)
  const laatste = laatsteDatum(producten)
  const controledatum = datumNl(laatste)
  const aantallen = producten.reduce((acc, p) => {
    acc[p.food_type] = (acc[p.food_type] ?? 0) + 1
    return acc
  }, {})
  const typeSamenvatting = FOOD_TYPES.filter(([key]) => aantallen[key]).map(([key, label]) => `${aantallen[key]} ${label.toLowerCase()}`).join(', ')
  const open = producten.filter((p) => {
    const tekst = p.recipe_versions?.[0]?.ingredients_text ?? ''
    const uitslag = assessLabel(tekst)
    return uitslag.hidden.length > 0 || uitslag.unknown.length > 0
  }).length

  // Welke onbenoemde termen komen bij dit merk het vaakst voor? Dat maakt de
  // pagina inhoudelijk verschillend per merk en helpt de lezer zoeken.
  const termen = new Map()
  for (const product of producten) {
    const tekst = product.recipe_versions?.[0]?.ingredients_text ?? ''
    for (const segment of markUncertainIngredients(tekst)) {
      if (!segment.uncertain) continue
      const woord = segment.text.trim().toLowerCase()
      if (!woord) continue
      termen.set(woord, (termen.get(woord) ?? 0) + 1)
    }
  }
  const alleTermen = [...termen.keys()]
  const topTermen = [...termen.entries()]
    .filter(([woord]) => !alleTermen.some((ander) => ander !== woord && ander.includes(woord)))
    .sort((a, b) => b[1] - a[1])
    .slice(0, 5)
  const termenBlok = topTermen.length
    ? `<h2>Vaak gebruikte onbenoemde termen bij ${escapeHtml(brand)}</h2>
      <p>Deze woorden komen voor in de ingrediëntenlijsten van ${escapeHtml(brand)} en noemen zelf geen dier- of plantbron. Daardoor blijven de allergenen die erachter kunnen zitten onbeslist tot de fabrikant uitsluitsel geeft.</p>
      <ul>
${topTermen.map(([woord, aantal]) => `        <li><strong>${escapeHtml(woord)}</strong> — in ${aantal} van de ${getal(producten.length)} producten</li>`).join('\n')}
      </ul>`
    : `<h2>Benoemde bronnen bij ${escapeHtml(brand)}</h2>
      <p>De ingrediëntenlijsten van ${escapeHtml(brand)} noemen in deze dataset elke bron bij name; er staan geen onbenoemde verzameltermen in.</p>`

  const inhoud = `      <p class="breadcrumb"><a href="/">Hondenvoervergelijker</a> › <a href="/merken/">Merken</a> › ${escapeHtml(brand)}</p>
      <p class="eyebrow">Merk</p>
      <h1>${escapeHtml(brand)} hondenvoer: ingrediënten en allergenen</h1>
      <p class="lead">${getal(producten.length)} product${producten.length === 1 ? '' : 'en'} van ${escapeHtml(brand)}${typeSamenvatting ? ` (${typeSamenvatting})` : ''}, met de letterlijke ingrediëntenlijst en de bronnen die het etiket noemt.${controledatum ? ` Laatst gecontroleerd op ${controledatum}.` : ''}</p>
      <p>
        <a class="cta" href="/?merk=${encodeURIComponent(brand)}">Vergelijk ${escapeHtml(brand)} op allergenen</a>
      </p>
      <div class="callout">
        <p>“Etiket noemt elke bron” betekent: bij elk ingrediënt staat waar het vandaan komt. “Bron niet volledig benoemd” betekent: er staat een verzamelterm in de lijst (zoals “dierlijk vet”, “gevogelte-eiwit” of “granen”) die een allergeen kan verbergen.${open ? ` Dat geldt voor ${open} van de ${getal(producten.length)} producten.` : ` Alle ${getal(producten.length)} producten noemen elke bron bij name.`}</p>
      </div>

      <h2>Alle producten van ${escapeHtml(brand)}</h2>
      <ul class="product-list">
${producten.map(productRegel).join('\n')}
      </ul>

      ${termenBlok}

      <h2>Over deze merkpagina</h2>
      <p>De ingrediëntenlijsten komen van de officiële productpagina's van ${escapeHtml(brand)}. De vergelijker neemt de tekst letterlijk over en beoordeelt per allergeen of de bron bij name genoemd is. Kies in de vergelijker de allergenen van jouw hond om te zien welke producten geschikt lijken, welke uitgesloten zijn en waar je het etiket moet controleren.</p>
      <p><a class="cta" href="/?merk=${encodeURIComponent(brand)}">Open ${escapeHtml(brand)} in de vergelijker</a> <a class="cta secondary" href="/hondenvoer-allergieen.html">Hoe lees je een etiket?</a></p>

      ${buren.length ? `<h2>Andere merken</h2>
      <ul>
${buren.map((buur) => `        <li><a href="/merken/${buur.slugBrand}.html">${escapeHtml(buur.brand)}</a> — ${getal(buur.aantal)} product${buur.aantal === 1 ? '' : 'en'}</li>`).join('\n')}
      </ul>
      <p><a href="/merken/">Bekijk alle merken</a></p>` : ''}

      <p class="updated">Deze pagina wordt automatisch bijgewerkt wanneer de productdata verandert. Inhoud: <a href="/over-ons.html#redactie">Paul Zuiderduin</a>. Klopt er iets niet? Mail <a href="mailto:hondenvoervergelijker@paulzuiderduin.com">hondenvoervergelijker@paulzuiderduin.com</a>.</p>`

  const itemList = {
    '@context': 'https://schema.org',
    '@type': 'ItemList',
    name: `${brand} hondenvoer`,
    numberOfItems: producten.length,
    itemListElement: producten.slice(0, 20).map((p, index) => ({
      '@type': 'ListItem',
      position: index + 1,
      name: `${brand} — ${p.name} (${typeLabel(p.food_type).toLowerCase()})`
    }))
  }
  const breadcrumb = {
    '@context': 'https://schema.org',
    '@type': 'BreadcrumbList',
    itemListElement: [
      { '@type': 'ListItem', position: 1, name: 'Hondenvoervergelijker', item: `${SITE}/` },
      { '@type': 'ListItem', position: 2, name: 'Merken', item: `${SITE}/merken/` },
      { '@type': 'ListItem', position: 3, name: brand, item: `${SITE}/merken/${slugBrand}.html` }
    ]
  }

  return {
    pad: `/merken/${slugBrand}.html`,
    laatste,
    html: shell({
      titel: `${brand} hondenvoer: alle ingrediënten en allergenen | Hondenvoervergelijker`,
      beschrijving: `Alle ${getal(producten.length)} producten van ${brand} met de letterlijke ingrediëntenlijst, voertype en de bronnen die het etiket noemt. Onafhankelijk gecontroleerd${controledatum ? ` op ${controledatum}` : ''}.`,
      pad: `/merken/${slugBrand}.html`,
      inhoud,
      jsonLd: [breadcrumb, itemList]
    })
  }
}

function merkenIndex(brands) {
  const regels = brands
    .map(({ brand, aantal, slugBrand }) => `          <li><a href="/merken/${slugBrand}.html">${escapeHtml(brand)}</a> <span class="meta">(${getal(aantal)} product${aantal === 1 ? '' : 'en'})</span></li>`)
    .join('\n')

  const inhoud = `      <p class="breadcrumb"><a href="/">Hondenvoervergelijker</a> › Merken</p>
      <p class="eyebrow">Overzicht</p>
      <h1>Alle hondenvoermerken in de vergelijker</h1>
      <p class="lead">Ontdek ${brands.length} merken met in totaal ${getal(brands.reduce((n, b) => n + b.aantal, 0))} producten. Selecteer een merk om direct alle ingrediëntenlijsten en de bijbehorende allergeneninformatie per product te bekijken.</p>
      <div class="card">
        <ul class="product-list">
${regels}
        </ul>
      </div>
      <p><a class="cta" href="/">Vergelijk alle merken op allergenen</a></p>`

  return shell({
    titel: 'Alle hondenvoermerken met ingrediënten en allergenen | Hondenvoervergelijker',
    beschrijving: `Overzicht van ${brands.length} hondenvoermerken met ${getal(brands.reduce((n, b) => n + b.aantal, 0))} producten, ingrediëntenlijsten en allergeneninformatie.`,
    pad: '/merken/',
    inhoud,
    jsonLd: [{ '@context': 'https://schema.org', ...organisatie }]
  })
}

/* ------------------------------------------------------------------ */
/* Allergeenpagina's                                                   */
/* ------------------------------------------------------------------ */

const ALLERGEEN_KEUZE = [
  ['chicken', 'kip'],
  ['beef', 'rund'],
  ['lamb', 'lam'],
  ['turkey', 'kalkoen'],
  ['duck', 'eend'],
  ['fish', 'vis'],
  ['salmon', 'zalm'],
  ['wheat', 'tarwe'],
  ['grains', 'granen'],
  ['milk', 'melk'],
  ['egg', 'ei'],
  ['soy', 'soja'],
  ['corn', 'maïs'],
  ['rice', 'rijst'],
  ['potato', 'aardappel'],
  ['pea', 'erwt'],
  ['insect', 'insecten'],
  ['horse', 'paard']
]

const VOORBEELDEN = {
  chicken: '“kippenvet”, “gevogelte”, “bouillon” of “dierlijk eiwit”',
  beef: '“rundvet”, “dierlijk vet” of “bouillon”',
  lamb: '“lamsvet”, “dierlijk vet” of “bouillon”',
  turkey: '“gevogelte”, “gevogeltevet” of “bouillon”',
  duck: '“gevogelte”, “gevogeltevet” of “bouillon”',
  fish: '“vismeel”, “visolie” of “dierlijk vet”',
  salmon: '“visolie”, “vismeel” of “vis”',
  wheat: '“granen”, “tarwegluten” of “meel”',
  grains: '“granen”, “graanproducten” of “meel”',
  milk: '“zuivel”, “wei” of “melkpoeder”',
  egg: '“ei”, “eipoeder” of “eialbumine”',
  soy: '“plantaardige eiwitten”, “sojaolie” of “plantaardige olie”',
  corn: '“granen”, “maïsmeel” of “zetmeel”',
  rice: '“granen”, “rijstmeel” of “zetmeel”',
  potato: '“zetmeel”, “aardappeleiwit” of “plantaardige bijproducten”',
  pea: '“plantaardige eiwitten”, “erwteneiwit” of “plantaardige bijproducten”',
  insect: '“dierlijke eiwitten”, “insecten” of “bijproducten”',
  horse: '“dierlijk vet”, “bouillon” of “dierlijke bijproducten”'
}

const SELECTIE_AANTAL = 40

function kiesSelectie(rijen, aantal = SELECTIE_AANTAL) {
  const perMerk = new Map()
  for (const rij of rijen) {
    const merk = rij.product.brand
    if (!perMerk.has(merk)) perMerk.set(merk, [])
    perMerk.get(merk).push(rij)
  }
  const merken = [...perMerk.keys()].sort((a, b) => a.localeCompare(b, 'nl', { sensitivity: 'base' }))
  for (const merk of merken) {
    perMerk.get(merk).sort((a, b) =>
      (productDatum(b.product) || '').localeCompare(productDatum(a.product) || '') ||
      a.product.name.localeCompare(b.product.name, 'nl', { sensitivity: 'base' })
    )
  }
  const selectie = []
  for (let ronde = 0; selectie.length < aantal; ronde += 1) {
    let toegevoegd = false
    for (const merk of merken) {
      const rij = perMerk.get(merk)[ronde]
      if (!rij) continue
      selectie.push(rij)
      toegevoegd = true
      if (selectie.length >= aantal) break
    }
    if (!toegevoegd) break
  }
  return selectie
}

function allergeenPagina(key, kort, producten) {
  const rijen = producten
    .map((product) => ({ product, match: productMatch(product, [key]) }))
    .filter(({ match }) => match.kind === 'suitable')
    .sort((a, b) =>
      a.product.brand.localeCompare(b.product.brand, 'nl', { sensitivity: 'base' }) ||
      a.product.name.localeCompare(b.product.name, 'nl', { sensitivity: 'base' })
    )

  if (rijen.length < 10) return null

  const context = ALLERGEEN_CONTENT[key] ?? {}
  const laatste = rijen.map(({ product }) => productDatum(product)).filter(Boolean).sort().at(-1)
  const contentDatum = datumIso(ALLERGEEN_CONTENT._bijgewerkt)
  const laatsteIso = [laatste, contentDatum].filter(Boolean).sort().at(-1) ?? ''
  const pad = `/hondenvoer-zonder-${slug(kort)}.html`
  const allergeenLabel = ALLERGEN_LABELS[key] ?? kort
  const allergeenKlein = allergeenLabel.toLowerCase()
  const merkenAantal = new Set(rijen.map(({ product }) => product.brand)).size
  const datum = laatste ? datumNl(laatste) : datumNl(VANDAAG)
  const verbergt = (context.verbergt?.length ? context.verbergt : ['dierlijk vet', 'granen', 'bijproducten'])
    .map((term) => `“${term}”`)
  const verbergtTekst = verbergt.slice(0, 3).join(', ')
  const direct = context.direct?.length ? context.direct : [allergeenLabel.toLowerCase()]
  const tips = context.tips?.length ? context.tips : [
    'Lees de volledige ingrediëntenlijst, niet alleen de eerste regels.',
    'Let op verzameltermen die de dier- of plantsoort niet noemen.',
    'Vraag bij twijfel de fabrikant om uitsluitsel over de bron.'
  ]
  const extraFaq = Array.isArray(context.faq) ? context.faq : []
  const faq = [
    {
      vraag: `Is hondenvoer zonder ${kort} altijd hypoallergeen?`,
      antwoord: `Nee. Deze pagina controleert alleen of het etiket ${allergeenKlein} noemt. Andere allergenen kunnen nog steeds in het product zitten. Of het voer geschikt is voor een eliminatiedieet, beoordeelt een dierenarts.`
    },
    {
      vraag: `Kan mijn hond toch reageren op voer zonder ${kort}?`,
      antwoord: `Ja, dat is mogelijk. Een reactie kan komen door een ander ingrediënt, kruisbesmetting in de fabriek of een gewijzigd recept. Controleer daarom altijd de verpakking en overleg bij klachten met je dierenarts.`
    },
    {
      vraag: `Hoe weet ik of ${allergeenKlein} toch in hondenvoer zit?`,
      antwoord: `Kijk op het etiket naar termen als ${verbergtTekst}. Die noemen niet altijd de bron. Vraag bij twijfel de fabrikant om uitsluitsel.`
    },
    {
      vraag: `Zijn deze producten geschikt voor een eliminatiedieet?`,
      antwoord: `Deze lijst is een hulpmiddel, geen medisch advies. Een eliminatiedieet hoort onder begeleiding van een dierenarts. Gebruik de lijst om voor te sorteren, niet om zelf een diagnose te stellen.`
    },
    ...extraFaq
  ]

  const selectie = kiesSelectie(rijen, SELECTIE_AANTAL)
  const typeKeys = [...new Set(selectie.map(({ product }) => product.food_type).filter(Boolean))]
  const types = typeKeys.map((type) => [type, typeLabel(type)])
  const merken = [...new Set(selectie.map(({ product }) => product.brand).filter(Boolean))]
    .sort((eerste, tweede) => eerste.localeCompare(tweede, 'nl', { sensitivity: 'base' }))

  const lijst = selectie.map(({ product }) => {
    const versie = product.recipe_versions?.[0]
    const uitslag = assessLabel(versie?.ingredients_text ?? '')
    const bronnen = (uitslag.allergens ?? []).map((k) => ALLERGEN_LABELS[k] ?? k)
    const bronTekst = bronnen.length
      ? `Etiket noemt: ${bronnen.slice(0, 3).join(', ')}${bronnen.length > 3 ? ` en ${bronnen.length - 3} meer` : ''}`
      : 'Geen bekende allergeenbron in de lijst'
    const type = typeLabel(product.food_type)
    const maat = product.package_size && String(product.package_size).trim().toLowerCase() !== 'null'
      ? String(product.package_size)
      : ''
    const productLink = productPad(product)
    const zoek = zoekNorm([product.brand, product.name, type, maat, bronnen.join(' ')].filter(Boolean).join(' '))
    return `          <li class="product-card type-${escapeHtml(product.food_type || 'onbekend')}" data-product data-type="${escapeHtml(product.food_type || '')}" data-brand="${escapeHtml(product.brand)}" data-zoek="${escapeHtml(zoek)}">
            <div class="product-card-top">
              <a class="product-brand" href="/merken/${slug(product.brand)}.html">${escapeHtml(product.brand)}</a>
              <span class="product-type">${escapeHtml(type)}</span>
            </div>
            <h3 class="product-title"><a href="${productLink}">${escapeHtml(product.name)}</a></h3>
            ${maat ? `<p class="product-meta">Verpakking: ${escapeHtml(maat)}</p>` : ''}
            <p class="product-etiket">${escapeHtml(bronTekst)}</p>
            <a class="product-details" href="${productLink}">Bekijk ingrediënten en voedingswaarden <span aria-hidden="true">→</span></a>
          </li>`
  }).join('\n')

  const typeKnoppen = types.map(([type, label]) => `<button type="button" class="chip" data-type-filter="${escapeHtml(type)}" aria-pressed="false">${escapeHtml(label)}</button>`).join('')
  const merkOpties = merken.map((merk) => `<option value="${escapeHtml(merk)}">${escapeHtml(merk)}</option>`).join('')
  const vergelijkUrl = `/?allergeen=${encodeURIComponent(key)}`
  const herkenRijen = [
    ...direct.map((term) => `<tr><td>${escapeHtml(term)}</td><td>Noemt ${escapeHtml(allergeenKlein)} bij name.</td></tr>`),
    ...verbergt.map((term) => `<tr><td>${escapeHtml(term)}</td><td>Kan ${escapeHtml(allergeenKlein)} verbergen; de bron staat er niet bij.</td></tr>`)
  ].join('\n')

  const inhoud = `      <p class="breadcrumb"><a href="/">Hondenvoervergelijker</a> › <a href="/hondenvoer-zonder.html">Zonder allergeen</a> › ${escapeHtml(ALLERGEN_LABELS[key] ?? kort)}</p>
      <section class="page-hero allergen-hero">
        <div class="hero-top">
          <p class="eyebrow">Allergeen</p>
        </div>
        <h1>Hondenvoer zonder ${escapeHtml(kort)}</h1>
        <p class="lead">Een onafhankelijk overzicht van hondenvoeding waarbij het etiket ${escapeHtml(allergeenKlein)} niet noemt.</p>
        <p class="updated">Laatst gecontroleerd op ${escapeHtml(datum)} · inhoud: <a href="/over-ons.html#redactie">Paul Zuiderduin</a></p>
        <div class="hero-actions">
          <a class="cta" href="${vergelijkUrl}">Vergelijk zelf zonder ${escapeHtml(kort)}</a>
          <a class="cta secondary" href="#producten">Bekijk ${getal(selectie.length)} voorbeelden</a>
        </div>
      </section>

      <div class="stat-grid">
        <div class="stat-card"><strong>${getal(rijen.length)}</strong><span>producten in de volledige lijst</span></div>
        <div class="stat-card"><strong>${getal(merkenAantal)}</strong><span>merken</span></div>
        <div class="stat-card"><strong>${escapeHtml(datum)}</strong><span>laatste broncontrole</span></div>
      </div>

      <div class="answer-box">
        <p class="answer-label">Kort antwoord</p>
        <h2>Welk hondenvoer lijkt geschikt zonder ${escapeHtml(kort)}?</h2>
        <p>${getal(rijen.length)} producten van ${merkenAantal} merken noemen ${escapeHtml(allergeenKlein)} niet en bevatten geen onduidelijke term die ${escapeHtml(kort)} kan verbergen.${datum ? ` Laatst gecontroleerd op ${datum}.` : ''}</p>
        <p>Hieronder staan ${getal(selectie.length)} voorbeelden, gespreid over merken. De volledige lijst bekijk je in de vergelijker.</p>
        <p class="answer-note">Dit is een indicatie op basis van het etiket, geen medisch advies. Controleer altijd de verpakking.</p>
      </div>

      <div class="callout">
        <p><strong>Wat betekent dit?</strong> Deze producten noemen ${escapeHtml(kort)} nergens in de ingrediëntenlijst. Dat is geen garantie dat het product geschikt is voor jouw hond: een dierenarts beoordeelt dat. Controleer altijd de verpakking, want fabrikanten kunnen een recept aanpassen.</p>
      </div>

      <section class="section-card">
        <h2>Wat is ${escapeHtml(kort)} en waar zit het in?</h2>
        <p>${escapeHtml(context.wat ?? `Een etiket noemt ${allergeenKlein} niet altijd letterlijk. Soms staat er een verzamelterm of een andere naam voor dezelfde bron.`)}</p>
        <p>Op etiketten kan ${escapeHtml(allergeenKlein)} ook schuilgaan achter termen als ${verbergtTekst}. Die termen noemen de bron niet altijd. Daarom beoordeelt de vergelijker niet alleen het woord zelf, maar ook de woorden eromheen.</p>
      </section>

      <section class="section-card">
        <h2>Zo herken je ${escapeHtml(kort)} op het etiket</h2>
        <p>Deze termen noemen ${escapeHtml(allergeenKlein)} meestal bij name of kunnen erachter schuilgaan:</p>
        <table>
          <thead><tr><th>Term</th><th>Wat het betekent</th></tr></thead>
          <tbody>
${herkenRijen}
          </tbody>
        </table>
      </section>

      <section id="producten" class="section-card product-section">
        <div class="section-head">
          <div>
            <p class="eyebrow">Overzicht</p>
            <h2>Producten die ${escapeHtml(kort)} niet noemen</h2>
          </div>
          <p class="section-note">Hieronder staan ${getal(selectie.length)} voorbeelden, gespreid over merken. De volledige lijst van ${getal(rijen.length)} producten bekijk je in de vergelijker. Zoek of filter op merk en voertype.</p>
        </div>

        <div class="product-toolbar" data-product-toolbar hidden>
          <div class="toolbar-row">
            <label class="search-field">
              <span class="sr-only">Zoek op product of merk</span>
              <input type="search" data-product-search placeholder="Zoek op product of merk…" autocomplete="off" />
            </label>
            <label class="select-field">
              <span class="sr-only">Filter op merk</span>
              <select data-brand-filter>
                <option value="">Alle merken</option>
                ${merkOpties}
              </select>
            </label>
            <button type="button" class="chip chip-reset" data-product-reset disabled>Wis filters</button>
          </div>
          <div class="toolbar-row toolbar-row-wrap">
            <div class="type-chips" role="group" aria-label="Filter op voertype">
              <button type="button" class="chip is-active" data-type-filter="" aria-pressed="true">Alle typen</button>
              ${typeKnoppen}
            </div>
            <p class="toolbar-status" data-product-status aria-live="polite">${getal(selectie.length)} voorbeelden</p>
          </div>
        </div>

        <ul class="product-grid" data-product-list>
${lijst}
        </ul>
        <p class="empty-state" data-product-empty hidden>Geen producten gevonden met deze filters. <button type="button" class="link-button" data-product-reset>Wis de filters</button></p>
        <div class="product-more-wrap" data-product-more-wrap hidden>
          <button type="button" class="cta secondary" data-product-more>Meer voorbeelden laden</button>
        </div>
        <p><a class="cta" href="${vergelijkUrl}">Bekijk alle ${getal(rijen.length)} producten in de vergelijker</a></p>
      </section>

      <section class="section-card">
        <h2>Waar let je op bij “zonder ${escapeHtml(kort)}”?</h2>
        <p>Een ingrediëntenlijst noemt niet altijd de bron. Woorden als ${verbergtTekst} zeggen niet welke dier- of plantsoort erachter zit. Onze keuring markeert zulke woorden en laat het product alleen als “lijkt geschikt” zien als ${escapeHtml(allergeenKlein)} daar aantoonbaar niet achter kan zitten.</p>
        <ul>
${tips.map((tip) => `          <li>${escapeHtml(tip)}</li>`).join('\n')}
        </ul>
        <p>Let ook op kruisbesmetting in de fabriek en op snacks of beloningen naast de hoofdmaaltijd. Die staan niet in deze lijst.</p>
      </section>

      <section class="section-card">
        <h2>Veelgestelde vragen over hondenvoer zonder ${escapeHtml(kort)}</h2>
        <div class="faq">
${faq.map(({ vraag, antwoord }) => `        <details><summary>${escapeHtml(vraag)}</summary><p>${escapeHtml(antwoord)}</p></details>`).join('\n')}
        </div>
      </section>

      <section class="section-card">
        <h2>Andere allergenen</h2>
        ${context.relatie ? `<p>${escapeHtml(context.relatie)}</p>` : ''}
        <div class="related-allergens"><!-- ANDERE_ALLERGENEN --></div>
        <p><a href="/hondenvoer-zonder.html">Bekijk alle overzichten zonder een specifiek allergeen</a>, of lees <a href="/hondenvoer-allergieen.html">hoe je een etiket leest</a>.</p>
      </section>
      <p class="cite"><strong>Citeer deze pagina:</strong> Hondenvoervergelijker, “Hondenvoer zonder ${escapeHtml(kort)}”, ${SITE}${pad}, geraadpleegd op ${datumNl(VANDAAG)}.${laatste ? ` Laatst gecontroleerd op ${datumNl(laatste)}.` : ''}</p>`

  return {
    pad,
    aantal: rijen.length,
    selectie: selectie.length,
    laatste: laatsteIso,
    kort,
    key,
    html: shell({
      titel: `Hondenvoer zonder ${kort}: ${getal(rijen.length)} producten die het niet noemen | Hondenvoervergelijker`,
      beschrijving: `${rijen.length} hondenvoeders waarbij het etiket ${ALLERGEN_LABELS[key] ?? kort} niet noemt en geen onduidelijke term die ${kort} kan verbergen. Met uitleg en een selectie van ${selectie.length} producten. Onafhankelijk gecontroleerd${laatste ? ` op ${datumNl(laatste)}` : ''}.`,
      pad,
      inhoud,
      bodyClass: 'page-allergen',
      jsonLd: [
        {
          '@context': 'https://schema.org',
          '@type': 'BreadcrumbList',
          itemListElement: [
            { '@type': 'ListItem', position: 1, name: 'Hondenvoervergelijker', item: `${SITE}/` },
            { '@type': 'ListItem', position: 2, name: 'Zonder allergeen', item: `${SITE}/hondenvoer-zonder.html` },
            { '@type': 'ListItem', position: 3, name: ALLERGEN_LABELS[key] ?? kort, item: `${SITE}${pad}` }
          ]
        },
        {
          '@context': 'https://schema.org',
          '@type': 'WebPage',
          name: `Hondenvoer zonder ${kort}`,
          url: `${SITE}${pad}`,
          ...(laatsteIso ? { dateModified: laatsteIso } : {}),
          inLanguage: 'nl-NL',
          isPartOf: { '@type': 'WebSite', name: 'Hondenvoervergelijker', url: `${SITE}/` },
          about: { '@type': 'Thing', name: `Hondenvoer zonder ${kort}` }
        },
        {
          '@context': 'https://schema.org',
          '@type': 'FAQPage',
          mainEntity: faq.map(({ vraag, antwoord }) => ({
            '@type': 'Question',
            name: vraag,
            acceptedAnswer: { '@type': 'Answer', text: antwoord }
          }))
        },
        {
          '@context': 'https://schema.org',
          '@type': 'ItemList',
          name: `Hondenvoer zonder ${kort}: selectie per merk`,
          numberOfItems: selectie.length,
          itemListElement: selectie.slice(0, 20).map(({ product }, index) => ({
            '@type': 'ListItem',
            position: index + 1,
            name: `${product.brand} — ${product.name}`
          }))
        }
      ]
    })
  }
}

function productPagina(product, alleProducten, allergeenPaginas) {
  const versie = product.recipe_versions?.[0]
  const tekst = versie?.ingredients_text ?? ''
  const type = typeLabel(product.food_type)
  const maat = product.package_size && String(product.package_size).trim().toLowerCase() !== 'null'
    ? String(product.package_size)
    : ''
  const pad = productPad(product)
  const aanbiedingen = (WINKELAANBOD[product.id] ?? []).filter((aanbieding) => aanbieding?.url)
  const bron = product.source_url && /^https?:/i.test(product.source_url) ? product.source_url : ''
  const bronDomein = (() => {
    try { return new URL(bron).hostname.replace(/^www\./, '') } catch { return '' }
  })()
  const bronDatum = datumNl(product.last_checked_at)
  const reviewDatum = datumNl(versie?.reviewed_at)
  const voedingsDatum = datumNl(versie?.nutrition_checked_at)
  const importDatum = datumNl(versie?.imported_at)
  const hoofdKeys = ALLERGEEN_KEUZE.map(([key]) => key)
  const match = productMatch(product, hoofdKeys)
  const perKey = new Map(match.states.map((state) => [state.key, state]))
  const voeding = voedingswaardeMap(versie?.recipe_nutrition)
  const onbetrouwbaar = onbetrouwbareNutrienten(voeding, product.food_type)
  const voedingsRijen = NUTRIENTS.filter((nutrient) => voeding[nutrient.key] != null && !onbetrouwbaar.has(nutrient.key))
  const onbetrouwbareLabels = NUTRIENTS.filter((nutrient) => onbetrouwbaar.has(nutrient.key)).map((nutrient) => nutrient.label)
  const aantal = { suitable: 0, check: 0, excluded: 0 }
  if (!match.hasLabel) aantal.check = hoofdKeys.length
  else for (const state of match.states) {
    if (state.state === 'present') aantal.excluded += 1
    else if (state.state === 'unknown') aantal.check += 1
    else aantal.suitable += 1
  }
  const symbool = (state) => state.state === 'present' ? '✕' : state.state === 'unknown' ? '?' : '✓'
  const oordeel = (state) => state.state === 'present' ? 'Uitgesloten' : state.state === 'unknown' ? 'Controleer' : 'Lijkt geschikt'
  const toelichting = (state) => {
    if (state.state === 'present') {
      const namen = state.members.map((key) => ALLERGEN_LABELS[key] ?? key)
      return `Etiket noemt ${namen.join(', ')}.`
    }
    if (state.state === 'unknown') {
      const woorden = [...new Set(state.words)].filter(Boolean)
      if (woorden.includes('geen ingrediëntenlijst')) return 'Geen ingrediëntenlijst beschikbaar.'
      if (!woorden.length) return 'Het etiket geeft onvoldoende uitsluitsel; controleer de verpakking of vraag de fabrikant.'
      const kort = woorden.slice(0, 4).join(', ')
      return `Geen bron genoemd voor ${kort}${woorden.length > 4 ? ` en ${woorden.length - 4} meer` : ''}.`
    }
    return 'Niet genoemd op het etiket.'
  }
  const effectieveState = (state) => match.hasLabel ? state : { state: 'unknown', words: ['geen ingrediëntenlijst'] }
  const alleAllergenen = hoofdKeys.map((key) => {
    const state = perKey.get(key)
    if (!state) return null
    const effectief = effectieveState(state)
    return {
      key,
      label: ALLERGEN_LABELS[key] ?? key,
      state: effectief,
      symbool: symbool(effectief),
      oordeel: oordeel(effectief),
      uitleg: toelichting(effectief)
    }
  }).filter(Boolean)
  const uitgesloten = alleAllergenen.filter(({ state }) => state.state === 'present')
  const controle = alleAllergenen.filter(({ state }) => state.state === 'unknown')
  const geschikt = alleAllergenen.filter(({ state }) => state.state === 'absent')
  const toneKey = aantal.excluded > 0 ? 'excluded' : aantal.check > 0 ? 'check' : 'ok'
  const verdictLabel = !match.hasLabel
    ? 'Geen ingrediëntenlijst'
    : aantal.excluded > 0
      ? `${aantal.excluded} van ${hoofdKeys.length} allergenen genoemd`
      : aantal.check > 0
        ? `${aantal.check} allergenen vragen controle`
        : `Geen van de ${hoofdKeys.length} hoofdallergenen genoemd`

  const allergeenRij = ({ label, symbool: teken, oordeel: uitslag, uitleg }) => `            <li class="allergen-row">
              <span class="allergen-name">${escapeHtml(label)}</span>
              <span class="tag ${uitslag === 'Uitgesloten' ? 'excluded' : 'check'}"><span aria-hidden="true">${teken}</span> ${uitslag}</span>
              <span class="allergen-explain">${escapeHtml(uitleg)}</span>
            </li>`
  const allergeenBlok = (titel, rijen, soort, uitleg) => rijen.length ? `        <section class="allergen-block tone-${soort}">
          <div class="allergen-block-head">
            <h3>${titel} <span class="allergen-count">${rijen.length}</span></h3>
            <p>${uitleg}</p>
          </div>
          <ul class="allergen-rows">
${rijen.map(allergeenRij).join('\n')}
          </ul>
        </section>` : ''
  const geschiktBlok = geschikt.length ? `        <section class="allergen-block tone-ok">
          <div class="allergen-block-head">
            <h3>Lijkt geschikt <span class="allergen-count">${geschikt.length}</span></h3>
            <p>Deze bronnen worden niet genoemd en kunnen niet verborgen zitten in een onduidelijke term.</p>
          </div>
          <div class="allergen-chips">
${geschikt.map(({ label }) => `            <span class="tag ok">${escapeHtml(label)}</span>`).join('\n')}
          </div>
        </section>` : ''
  const allergenenBlokken = [
    allergeenBlok('Uitgesloten', uitgesloten, 'excluded', 'Deze bronnen staan expliciet op het etiket.'),
    allergeenBlok('Controleer', controle, 'check', 'Het etiket geeft hierover onvoldoende uitsluitsel.'),
    geschiktBlok
  ].filter(Boolean).join('\n')
  const ingredientSegmenten = markUncertainIngredients(tekst)
  const heeftOnzekereTermen = ingredientSegmenten.some((segment) => segment.uncertain)
  const ingredientenHtml = ingredientSegmenten
    .map((segment) => segment.uncertain ? `<mark class="uncertain">${escapeHtml(segment.text)}</mark>` : escapeHtml(segment.text))
    .join('')
  const kernKeys = new Set(CORE_NUTRIENTS.map(({ key }) => key))
  const voedingHtml = voedingsRijen.map((nutrient) => `<div class="nutrition-tile${kernKeys.has(nutrient.key) ? ' is-core' : ''}">
            <span class="nutrition-label">${escapeHtml(nutrient.label)}</span>
            <strong class="nutrition-value">${escapeHtml(formatteerVoedingswaarde(nutrient, voeding[nutrient.key]))}</strong>
          </div>`).join('\n')
  const kernWaarde = (key) => {
    const nutrient = NUTRIENTS.find((item) => item.key === key)
    if (!nutrient || voeding[key] == null || onbetrouwbaar.has(key)) return { waarde: '—', eenheid: '' }
    if (key === 'kcal') return { waarde: getal(Math.round(voeding[key])), eenheid: 'kcal/100 g' }
    return { waarde: formatteerVoedingswaarde(nutrient, voeding[key]), eenheid: '' }
  }
  const kernEiwit = kernWaarde('protein')
  const kernVet = kernWaarde('fat')
  const kernEnergie = kernWaarde('kcal')
  const bronKaart = (label, waarde, toelichting, ok) => `          <div class="source-card ${ok ? 'is-ok' : 'is-check'}">
            <span class="source-label">${escapeHtml(label)}</span>
            <strong class="source-value">${waarde}</strong>
            <span class="source-note">${toelichting}</span>
          </div>`
  const bronKaarten = [
    bronKaart('Productbron', bron ? `<a href="${escapeHtml(bron)}" target="_blank" rel="noreferrer">${escapeHtml(bronDomein || bron)} ↗</a>` : 'Niet vastgelegd', bronDatum ? `Laatst gecontroleerd op ${escapeHtml(bronDatum)}` : 'Geen controledatum', Boolean(bron)),
    bronKaart('Handmatige controle', reviewDatum ? `Nagekeken op ${escapeHtml(reviewDatum)}` : 'Nog niet nagekeken', reviewDatum ? 'Handmatig door een mens gecontroleerd.' : 'De tekst is automatisch overgenomen van de bron.', Boolean(reviewDatum)),
    bronKaart('Voedingswaarden', voedingsDatum ? `Gecontroleerd op ${escapeHtml(voedingsDatum)}` : 'Controledatum onbekend', versie?.nutrition_source_url && versie.nutrition_source_url !== bron ? 'Andere bron dan de ingrediëntenlijst.' : 'Zelfde bron als de ingrediëntenlijst.', Boolean(voedingsDatum)),
    bronKaart('Laatste import', importDatum ? `Geïmporteerd op ${escapeHtml(importDatum)}` : 'Onbekend', 'Laatste keer bijgewerkt in de database.', Boolean(importDatum))
  ].join('\n')

  const bestaandeAllergenen = new Map(allergeenPaginas.map((pagina) => [pagina.key, pagina]))
  const relevanteAllergenen = ALLERGEEN_KEUZE
    .map(([key]) => key)
    .filter((key) => perKey.get(key)?.state === 'absent' && bestaandeAllergenen.has(key))
    .slice(0, 4)
    .map((key) => bestaandeAllergenen.get(key))
    .map((pagina) => `<a class="related-allergen" href="${pagina.pad}">Zonder ${escapeHtml(pagina.kort)}</a>`)
    .join('\n')

  const zelfdeMerk = alleProducten
    .filter((ander) => ander.brand === product.brand && ander.id !== product.id)
    .slice(0, 6)
  const relatieveUitslag = (ander) => {
    const relMatch = productMatch(ander, hoofdKeys)
    if (relMatch.kind === 'excluded') return { label: 'Allergeen genoemd', klasse: 'excluded' }
    if (relMatch.kind === 'check') return { label: 'Controle nodig', klasse: 'check' }
    return { label: 'Geen hoofdallergeen genoemd', klasse: 'ok' }
  }
  const zelfdeMerkLijst = zelfdeMerk.map((ander) => {
    const uitslag = relatieveUitslag(ander)
    const relMaat = ander.package_size && String(ander.package_size).trim().toLowerCase() !== 'null' ? ` · ${escapeHtml(ander.package_size)}` : ''
    return `            <li class="related-card">
              <div>
                <a class="related-name" href="${productPad(ander)}">${escapeHtml(ander.name)}</a>
                <span class="related-meta">${escapeHtml(typeLabel(ander.food_type))}${relMaat}</span>
              </div>
              <span class="tag ${uitslag.klasse}">${uitslag.label}</span>
            </li>`
  }).join('\n')

  const affiliateKnoppen = aanbiedingen.map((aanbieding) => `<a class="cta secondary" href="${escapeHtml(aanbieding.url)}" target="_blank" rel="sponsored nofollow noopener noreferrer">Bekijk bij ${escapeHtml(aanbieding.winkel)}${aanbieding.maat ? ` (${escapeHtml(aanbieding.maat)})` : ''}${prijsNl(aanbieding.prijs) ? ` · vanaf ${prijsNl(aanbieding.prijs)}` : ''}</a>`).join(' ')
  const affiliateNotitie = aanbiedingen.length
    ? `      <p class="partner-note"><small>Partnerlink. De selectie, volgorde en beoordeling zijn niet van deze link afhankelijk. ${aanbiedingen.some((aanbieding) => prijsNl(aanbieding.prijs)) ? `De prijs is de laagste variantprijs uit de productfeed${WINKELDATA.bijgewerkt ? ` van ${escapeHtml(datumNl(WINKELDATA.bijgewerkt))}` : ''}; de actuele winkelprijs en de prijs voor deze maat kunnen afwijken.` : 'Er worden geen prijzen getoond.'}</small></p>`
    : ''

  const titel = `${product.brand} ${product.name}${maat ? ` (${maat})` : ''}: ingrediënten, allergenen en voedingswaarden | Hondenvoervergelijker`
  const beschrijving = `Letterlijke ingrediëntenlijst, voedingswaarden en allergenoordeel van ${product.brand} ${product.name}${maat ? ` (${maat})` : ''}${type ? `, ${type.toLowerCase()}` : ''}. Bron gecontroleerd${bronDatum ? ` op ${bronDatum}` : ' volgens de officiële productpagina'}.`
  const korteSamenvatting = aantal.excluded === 0 && aantal.check === 0
    ? `Voor de ${hoofdKeys.length} hoofdallergenen noemt het etiket geen expliciete bron en bevat de lijst geen onduidelijke verzamelterm.`
    : `${aantal.suitable} van de ${hoofdKeys.length} hoofdallergenen worden niet genoemd, ${aantal.check} vragen om controle en ${aantal.excluded} staan expliciet in de lijst.`
  const datumRegel = [
    bronDatum ? `Bron gecontroleerd ${bronDatum}` : '',
    reviewDatum ? `Handmatig nagelopen ${reviewDatum}` : '',
    voedingsDatum ? `Voedingswaarden gecontroleerd ${voedingsDatum}` : ''
  ].filter(Boolean).join(' · ')

  const inhoud = `      <p class="breadcrumb"><a href="/">Hondenvoervergelijker</a> › <a href="/merken/">Merken</a> › <a href="/merken/${slug(product.brand)}.html">${escapeHtml(product.brand)}</a> › ${escapeHtml(product.name)}</p>
      <section class="page-hero product-hero">
        <div class="hero-top">
          <p class="eyebrow">Product · ${escapeHtml(type)}</p>
          <span class="verdict-badge tone-${toneKey}">${escapeHtml(verdictLabel)}</span>
        </div>
        <h1>${escapeHtml(product.brand)} ${escapeHtml(product.name)}</h1>
        <p class="lead">${escapeHtml(type)}${maat ? ` · ${escapeHtml(maat)}` : ''}${bronDomein ? ` · bron: ${escapeHtml(bronDomein)}` : ''}. Deze pagina toont de letterlijke ingrediëntenlijst, de voedingswaarden en het oordeel per allergeen.</p>
        <p class="updated">${datumRegel ? `${escapeHtml(datumRegel)} · ` : ''}Inhoud: <a href="/over-ons.html#redactie">Paul Zuiderduin</a></p>
        <div class="hero-actions">
          <a class="cta" href="/?zoek=${encodeURIComponent(product.name)}">Vergelijk in de vergelijker</a>
          <a class="cta secondary" href="/merken/${slug(product.brand)}.html">Alle producten van ${escapeHtml(product.brand)}</a>
          ${affiliateKnoppen}
        </div>
      </section>
${affiliateNotitie}

      <div class="overview-grid">
        <div class="overview-card">
          <p class="overview-label">Allergenen</p>
          <div class="allergen-meter" role="img" aria-label="${aantal.suitable} allergenen niet genoemd, ${aantal.check} vragen om controle en ${aantal.excluded} staan in de lijst">
            <span class="meter-ok" style="flex:${aantal.suitable}"></span>
            <span class="meter-check" style="flex:${aantal.check}"></span>
            <span class="meter-excluded" style="flex:${aantal.excluded}"></span>
          </div>
          <ul class="meter-legend">
            <li><span class="dot ok"></span><strong>${aantal.suitable}</strong> niet genoemd</li>
            <li><span class="dot check"></span><strong>${aantal.check}</strong> controle</li>
            <li><span class="dot excluded"></span><strong>${aantal.excluded}</strong> genoemd</li>
          </ul>
        </div>
        <div class="overview-card">
          <p class="overview-label">Voeding (as-fed)</p>
          <div class="mini-stats">
            <div><strong>${kernEiwit.waarde}</strong><span>eiwit</span></div>
            <div><strong>${kernVet.waarde}</strong><span>vet</span></div>
            <div><strong>${kernEnergie.waarde}</strong><span>${kernEnergie.eenheid || 'energie'}</span></div>
          </div>
        </div>
        <div class="overview-card">
          <p class="overview-label">Bron</p>
          <p class="overview-value">${bronDomein ? escapeHtml(bronDomein) : 'Geen bron-URL'}</p>
          <p class="overview-note">${bronDatum ? `Gecontroleerd op ${escapeHtml(bronDatum)}` : 'Controledatum onbekend'}</p>
        </div>
      </div>

      <div class="answer-box">
        <p class="answer-label">Kort antwoord</p>
        <h2>${escapeHtml(verdictLabel)}</h2>
        <p>${escapeHtml(korteSamenvatting)}</p>
        <p class="answer-note">Dit is een indicatie op basis van het etiket, geen medisch advies. Controleer altijd de verpakking en overleg bij klachten met je dierenarts.</p>
      </div>

      ${match.stale || match.sourceChanged || !match.hasLabel ? `<div class="callout warn"><p><strong>Controle nodig:</strong> ${match.sourceChanged ? 'de bronpagina bij de fabrikant is gewijzigd' : !match.hasLabel ? 'er is geen ingrediëntenlijst beschikbaar' : 'de ingrediëntenlijst is langer dan zes maanden niet gecontroleerd'}. Controleer de verpakking of de officiële productpagina voordat je op deze gegevens vertrouwt.</p></div>` : ''}

      <nav class="section-nav" aria-label="Op deze pagina">
        <a href="#allergenen">Allergenen</a>
        <a href="#ingredienten">Ingrediënten</a>
        <a href="#voeding">Voedingswaarden</a>
        <a href="#bron">Bron en controle</a>
        <a href="#gerelateerd">Gerelateerd</a>
      </nav>

      <section id="allergenen" class="section-card">
        <div class="section-head">
          <div><p class="eyebrow">Etiket</p><h2>Allergenen en het etiket</h2></div>
          <p class="section-note">De ${hoofdKeys.length} hoofdallergenen, gegroepeerd op wat het etiket zegt.</p>
        </div>
        <p>“Lijkt geschikt” betekent: de bron wordt niet genoemd en geen onduidelijke term kan hem verbergen. “Controleer” betekent: het etiket noemt de bron niet of bevat een woord dat de keuring niet kent. “Uitgesloten” betekent: de bron staat expliciet in de lijst.</p>
${allergenenBlokken}
        <p class="section-footnote"><small>De vergelijker beoordeelt daarnaast nog ${ALLERGENS.length - hoofdKeys.length} specifieke bronnen. Open dit product in de <a href="/?zoek=${encodeURIComponent(product.name)}">vergelijker</a> voor de volledige lijst.</small></p>
      </section>

      <section id="ingredienten" class="section-card">
        <div class="section-head">
          <div><p class="eyebrow">Samenstelling</p><h2>Ingrediëntenlijst</h2></div>
          <p class="section-note">Letterlijk overgenomen van de bron.</p>
        </div>
        ${tekst ? `<div class="ingredients-box">${ingredientenHtml}</div>${heeftOnzekereTermen ? `<p class="ingredients-legend"><mark class="uncertain">rood gemarkeerd</mark> = term die de keuring niet kan herleiden.</p>` : ''}` : '<p>De ingrediëntenlijst is niet beschikbaar.</p>'}
        ${versie?.import_note ? `<p class="callout"><small>${escapeHtml(versie.import_note)}</small></p>` : ''}
      </section>

      <section id="voeding" class="section-card">
        <div class="section-head">
          <div><p class="eyebrow">Analyse</p><h2>Voedingswaarden (as-fed)</h2></div>
          <p class="section-note">Inclusief vocht, zoals de fabrikant ze publiceert.</p>
        </div>
        ${voedingsRijen.length ? `<div class="nutrition-grid">${voedingHtml}</div>` : '<p>De fabrikant vermeldt geen bruikbare voedingswaarden voor dit product.</p>'}
        ${onbetrouwbareLabels.length ? `<p class="callout warn"><strong>Niet getoond:</strong> ${escapeHtml(onbetrouwbareLabels.join(', '))} — deze waarde(n) zijn bij de plausibiliteitscontrole als onbetrouwbaar aangemerkt.</p>` : ''}
        ${versie?.nutrition_note ? `<p class="section-footnote"><small>${escapeHtml(versie.nutrition_note)}</small></p>` : ''}
        <p class="section-footnote"><small>Vergelijk waarden alleen binnen hetzelfde voertype. <a href="/hoe-wij-vergelijken.html">Lees hoe wij voedingswaarden overnemen</a>.</small></p>
      </section>

      <section id="bron" class="section-card">
        <div class="section-head">
          <div><p class="eyebrow">Controle</p><h2>Bron en controle</h2></div>
          <p class="section-note">Zo zie je waar de gegevens vandaan komen en hoe recent ze zijn.</p>
        </div>
        <div class="source-grid">
${bronKaarten}
        </div>
      </section>

      <section id="gerelateerd" class="section-card">
        <div class="section-head">
          <div><p class="eyebrow">Verder kijken</p><h2>Gerelateerde producten</h2></div>
          <p class="section-note">Andere producten van ${escapeHtml(product.brand)}.</p>
        </div>
        ${zelfdeMerk.length ? `<ul class="related-grid">${zelfdeMerkLijst}</ul>` : '<p>Er zijn geen andere producten van dit merk in de vergelijker.</p>'}
        <p><a href="/merken/${slug(product.brand)}.html">Bekijk alle producten van ${escapeHtml(product.brand)}</a> of <a href="/hondenvoer-zonder.html">zoek op allergeen</a>.</p>
      </section>

      <section class="section-card">
        <h2>Verder lezen</h2>
        <div class="related-allergens">
${relevanteAllergenen || '<a class="related-allergen" href="/hondenvoer-zonder.html">Alle overzichten zonder een specifiek allergeen</a>'}
        </div>
        <p>Lees <a href="/hoe-wij-vergelijken.html">hoe wij etiketten overnemen en controleren</a>, bekijk het <a href="/broncontrole.html">openbare broncontroleverslag</a> of lees <a href="/hondenvoer-allergieen.html">hoe je een etiket leest</a>.</p>
      </section>

      <p class="cite"><strong>Citeer deze pagina:</strong> Hondenvoervergelijker, “${escapeHtml(product.brand)} ${escapeHtml(product.name)}”, ${SITE}${pad}.${bronDatum ? ` Bron gecontroleerd op ${bronDatum}.` : ''}${reviewDatum ? ` Handmatig nagelopen op ${reviewDatum}.` : ''}</p>`

  const breadcrumb = {
    '@context': 'https://schema.org',
    '@type': 'BreadcrumbList',
    itemListElement: [
      { '@type': 'ListItem', position: 1, name: 'Hondenvoervergelijker', item: `${SITE}/` },
      { '@type': 'ListItem', position: 2, name: 'Merken', item: `${SITE}/merken/` },
      { '@type': 'ListItem', position: 3, name: product.brand, item: `${SITE}/merken/${slug(product.brand)}.html` },
      { '@type': 'ListItem', position: 4, name: product.name, item: `${SITE}${pad}` }
    ]
  }
  const productSchema = {
    '@context': 'https://schema.org',
    '@type': 'Product',
    name: `${product.brand} ${product.name}`,
    brand: { '@type': 'Brand', name: product.brand },
    category: type,
    description: beschrijving,
    url: `${SITE}${pad}`,
    sku: product.id,
    additionalProperty: [
      { '@type': 'PropertyValue', name: 'Voertype', value: type },
      ...(maat ? [{ '@type': 'PropertyValue', name: 'Verpakking', value: maat }] : [])
    ]
  }
  const webPage = {
    '@context': 'https://schema.org',
    '@type': 'WebPage',
    name: titel,
    url: `${SITE}${pad}`,
    dateModified: product.last_checked_at || versie?.reviewed_at || versie?.imported_at || VANDAAG,
    inLanguage: 'nl-NL',
    author: { '@type': 'Person', '@id': `${SITE}/over-ons.html#paul-zuiderduin`, name: 'Paul Zuiderduin' },
    ...(reviewDatum ? { reviewedBy: { '@type': 'Person', '@id': `${SITE}/over-ons.html#paul-zuiderduin`, name: 'Paul Zuiderduin' } } : {}),
    publisher: organisatie,
    about: { '@type': 'Product', name: `${product.brand} ${product.name}` },
    mainEntity: { '@type': 'Product', name: `${product.brand} ${product.name}`, brand: { '@type': 'Brand', name: product.brand } }
  }

  return {
    pad,
    html: shell({
      titel,
      beschrijving,
      pad,
      inhoud,
      bodyClass: 'page-product',
      jsonLd: [breadcrumb, productSchema, webPage]
    })
  }
}

function zonderHub(paginas) {
  const perKey = new Map(paginas.map((pagina) => [pagina.key, pagina]))
  const groepen = ALLERGEEN_GROEPEN
    .map(({ titel, keys }) => ({ titel, paginas: keys.map((key) => perKey.get(key)).filter(Boolean) }))
    .filter(({ paginas: groep }) => groep.length)
  const gebruikt = new Set(groepen.flatMap(({ paginas: groep }) => groep.map(({ key }) => key)))
  const rest = paginas.filter(({ key }) => !gebruikt.has(key))
  if (rest.length) groepen.push({ titel: 'Overig', paginas: rest })

  const kaart = (pagina) => `          <a class="allergen-card" href="${pagina.pad}">
            <span class="allergen-name">Zonder ${escapeHtml(pagina.kort)}</span>
            <span class="allergen-count">${getal(pagina.aantal)} producten</span>
            <span class="allergen-arrow" aria-hidden="true">→</span>
          </a>`

  const groepenHtml = groepen.map(({ titel, paginas: groep }) => `        <section class="allergen-group">
          <div class="section-head">
            <h2>${escapeHtml(titel)}</h2>
            <p class="section-note">${groep.length} ${groep.length === 1 ? 'overzicht' : 'overzichten'}</p>
          </div>
          <div class="allergen-grid">
${groep.map(kaart).join('\n')}
          </div>
        </section>`).join('\n')

  const inhoud = `      <p class="breadcrumb"><a href="/">Hondenvoervergelijker</a> › Zonder allergeen</p>
      <section class="page-hero allergen-hero">
        <div class="hero-top">
          <p class="eyebrow">Overzicht</p>
        </div>
        <h1>Hondenvoer zonder een specifiek allergeen</h1>
        <p class="lead">Kies het ingrediënt dat je wilt vermijden. Per allergeen zie je hoeveel producten het etiket dat ingrediënt niet noemt en waarbij geen onduidelijke term het kan verbergen.</p>
        <p class="updated">Bijgewerkt op ${datumNl(VANDAAG)} · inhoud: <a href="/over-ons.html#redactie">Paul Zuiderduin</a></p>
        <div class="hero-actions">
          <a class="cta" href="/">Vergelijk op alle allergenen tegelijk</a>
        </div>
      </section>

      <div class="callout">
        <p><strong>Hoe lees ik dit overzicht?</strong> De aantallen zeggen hoeveel producten het allergeen niet noemen en geen onduidelijke term bevatten die het kan verbergen. Het is een indicatie op basis van het etiket, geen garantie en geen medisch advies.</p>
      </div>

      <div class="allergen-groups">
${groepenHtml}
      </div>`

  return shell({
    titel: 'Hondenvoer zonder kip, rund, granen en meer | Hondenvoervergelijker',
    beschrijving: `Overzichten van hondenvoer zonder kip, rund, lam, vis, tarwe, granen, melk, ei, soja en meer. Onafhankelijk gecontroleerd op de officiële etiketten.`,
    pad: '/hondenvoer-zonder.html',
    inhoud,
    bodyClass: 'page-allergen-hub',
    jsonLd: [{ '@context': 'https://schema.org', ...organisatie }]
  })
}

function bronlozeWoordenVoorOnderzoek(tekst, hidden) {
  const klein = tekst.toLowerCase()
  const uniek = [...new Set(hidden.map(({ word }) => word))]
    .filter((woord, _, alle) => !alle.some((ander) => ander.length > woord.length && ander.toLowerCase().includes(woord.toLowerCase())))
    .sort((eerste, tweede) => klein.indexOf(eerste.toLowerCase()) - klein.indexOf(tweede.toLowerCase()))
  const uit = []
  for (const woord of uniek) {
    const vorige = uit[uit.length - 1]
    if (vorige && klein.includes(`${vorige.toLowerCase()} ${woord.toLowerCase()}`)) uit[uit.length - 1] = `${vorige} ${woord}`
    else uit.push(woord)
  }
  return uit
}

function etikettenonderzoekPagina(producten, allergeenPaginas) {
  const totaal = producten.length
  const merken = new Set(producten.map(({ brand }) => brand).filter(Boolean)).size
  const laatste = producten.map(({ last_checked_at }) => last_checked_at).filter(Boolean).sort().at(-1)
  const uitslagen = producten.map((product) => assessLabel(product.recipe_versions?.[0]?.ingredients_text ?? ''))
  const metVerzamelterm = uitslagen.filter((uitslag) => uitslag.hidden.length > 0).length
  const metOnbekend = uitslagen.filter((uitslag) => uitslag.unknown.length > 0).length
  const volledig = uitslagen.filter((uitslag) => uitslag.hidden.length === 0 && uitslag.unknown.length === 0).length
  const percentage = totaal ? Math.round((metVerzamelterm / totaal) * 100) : 0
  const percentageVolledig = totaal ? Math.round((volledig / totaal) * 100) : 0

  const termen = new Map()
  for (const [index, uitslag] of uitslagen.entries()) {
    const tekst = producten[index].recipe_versions?.[0]?.ingredients_text ?? ''
    for (const woord of new Set(bronlozeWoordenVoorOnderzoek(tekst, uitslag.hidden))) {
      termen.set(woord, (termen.get(woord) ?? 0) + 1)
    }
  }
  const topTermen = [...termen.entries()].sort((a, b) => b[1] - a[1]).slice(0, 12)
  const termRijen = topTermen.map(([term, aantal]) => `            <tr><td>${escapeHtml(term)}</td><td>${aantal}</td><td>${Math.round((aantal / totaal) * 100)}%</td></tr>`).join('\n')

  const topAllergenen = [...allergeenPaginas].sort((a, b) => b.aantal - a.aantal).slice(0, 10)
  const allergeenRijen = topAllergenen.map(({ pad, kort, aantal }) => `            <tr><td><a href="${pad}">Zonder ${escapeHtml(kort)}</a></td><td>${aantal}</td></tr>`).join('\n')

  const inhoud = `      <p class="breadcrumb"><a href="/">Hondenvoervergelijker</a> › Etikettenonderzoek</p>
      <p class="eyebrow">Onderzoek</p>
      <h1>Hoe vaak verbergen hondenvoeretiketten de eiwitbron?</h1>
      <p class="lead">Een analyse van ${getal(totaal)} producten van ${merken} merken. We keken hoe vaak een etiket een dier- of plantbron niet bij name noemt en dus een verzamelterm gebruikt die voor een allergische hond relevant kan zijn.</p>
      <p class="updated">Bijgewerkt op ${datumNl(VANDAAG)}${laatste ? ` · laatste broncontrole ${datumNl(laatste)}` : ''}</p>

      <div class="stat-grid">
        <div class="stat-card"><strong>${getal(totaal)}</strong><span>producten</span></div>
        <div class="stat-card"><strong>${merken}</strong><span>merken</span></div>
        <div class="stat-card"><strong>${percentage}%</strong><span>met minstens één verzamelterm</span></div>
        <div class="stat-card"><strong>${allergeenPaginas.length}</strong><span>allergeenoverzichten</span></div>
      </div>

      <h2>Waarom dit onderzoek?</h2>
      <p>Een hond met een voedselallergie heeft baat bij een etiket dat precies zegt waar elk ingrediënt vandaan komt. In de praktijk staan er vaak termen als “vlees en dierlijke bijproducten”, “granen” of “dierlijk vet”. Die termen zeggen niet welke dier- of plantsoort erachter zit. Voor iemand die één specifiek ingrediënt wil vermijden, is dat een groot verschil.</p>

      <h2>Hoe vaak staat er een verzamelterm?</h2>
      <p>In <strong>${getal(metVerzamelterm)} van de ${getal(totaal)} producten</strong> (${percentage}%) staat minstens één term die de bron niet bij name noemt. Bij <strong>${getal(volledig)} producten</strong> (${percentageVolledig}%) staat geen verzamelterm en geen woord dat de keuring niet kent.</p>
      <p>Bij ${getal(metOnbekend)} producten staan woorden die de keuring niet kent. Die woorden worden handmatig beoordeeld; ze kunnen een extra onzekerheid vormen bovenop de verzameltermen.</p>

      <h2>Welke termen komen het vaakst voor?</h2>
      <table>
        <thead><tr><th>Term</th><th>Producten</th><th>Aandeel</th></tr></thead>
        <tbody>
${termRijen}
        </tbody>
      </table>

      <h2>Welke allergenen noemen de minste producten?</h2>
      <p>Deze tabel laat zien voor hoeveel producten het etiket het allergeen niet noemt en geen onduidelijke term bevat die het kan verbergen.</p>
      <table>
        <thead><tr><th>Allergeen</th><th>Producten die het niet noemen</th></tr></thead>
        <tbody>
${allergeenRijen}
        </tbody>
      </table>

      <h2>Wat betekent dit voor honden met een allergie?</h2>
      <p>Een verzamelterm is geen bewijs dat een product onveilig is. Het betekent wel dat het etiket onvoldoende uitsluitsel geeft. Onze vergelijker zet zo'n product daarom niet blind op “Lijkt geschikt”, maar op “Controleer etiket/fabrikant”. Alleen de fabrikant of een aanvullend onderzoek kan duidelijkheid geven over de werkelijke bron.</p>
      <div class="callout warn">
        <p><strong>Geen medisch advies.</strong> Dit onderzoek is een momentopname van openbare etiketten. Een voedselallergie stel je niet zelf vast. Overleg bij jeuk, huidklachten, maag-darmproblemen of een vermoeden van een allergie altijd met een dierenarts.</p>
      </div>

      <h2>Hoe wij meten</h2>
      <p>We nemen de officiële ingrediëntenlijsten van fabrikanten letterlijk over. Per product beoordeelt de keuring of een term de dier- of plantbron bij name noemt. Woorden zoals “dierlijk vet”, “granen”, “bouillon” en “plantaardige bijproducten” worden als verzamelterm geteld wanneer ze de specifieke bron niet noemen. De volledige methode staat op <a href="/hoe-wij-vergelijken.html">Hoe wij hondenvoer vergelijken</a>.</p>

      <p class="cite"><strong>Citeer dit onderzoek:</strong> Hondenvoervergelijker, “Hoe vaak verbergen hondenvoeretiketten de eiwitbron?”, ${SITE}/etikettenonderzoek.html, geraadpleegd op ${datumNl(VANDAAG)}. Steekproef: ${getal(totaal)} producten van ${merken} merken${laatste ? `; laatste broncontrole ${datumNl(laatste)}` : ''}.</p>

      <div class="callout">
        <p><a class="cta" href="/">Bekijk de vergelijker</a> <a class="cta secondary" href="/hondenvoer-zonder.html">Alle allergenen</a></p>
      </div>`

  return shell({
    titel: 'Hoe vaak verbergen hondenvoeretiketten de eiwitbron? | Hondenvoervergelijker',
    beschrijving: `Onderzoek naar ${getal(totaal)} hondenvoerproducten: ${percentage}% bevat minstens één verzamelterm die de dier- of plantbron niet noemt. Bekijk de cijfers en de methode.`,
    pad: '/etikettenonderzoek.html',
    inhoud,
    jsonLd: [
      {
        '@context': 'https://schema.org',
        '@type': 'Article',
        headline: 'Hoe vaak verbergen hondenvoeretiketten de eiwitbron?',
        description: `Analyse van ${getal(totaal)} hondenvoerproducten van ${merken} merken op verzameltermen en allergenen.`,
        datePublished: VANDAAG,
        dateModified: VANDAAG,
        inLanguage: 'nl-NL',
        author: { '@type': 'Person', name: 'Paul Zuiderduin', url: `${SITE}/over-ons.html#redactie` },
        publisher: { '@type': 'Organization', name: 'Hondenvoervergelijker', url: `${SITE}/` },
        mainEntityOfPage: `${SITE}/etikettenonderzoek.html`
      },
      {
        '@context': 'https://schema.org',
        '@type': 'Dataset',
        name: 'Hondenvoervergelijker: etikettenonderzoek',
        description: `Geaggregeerde analyse van ${getal(totaal)} hondenvoerproducten op verzameltermen en allergenen.`,
        creator: { '@type': 'Organization', name: 'Hondenvoervergelijker', url: `${SITE}/` },
        dateModified: VANDAAG,
        inLanguage: 'nl-NL',
        isAccessibleForFree: true,
        license: 'https://creativecommons.org/licenses/by-nc/4.0/'
      }
    ]
  })
}

const VOEDINGS_PAGINAS = [
  { slug: 'eiwitrijk-hondenvoer', key: 'protein', label: 'eiwit', eenheid: '%', richting: 'hoog', grens: 30, min: 30, max: 40, titel: 'Eiwitrijk hondenvoer', beschrijving: 'Hondenvoer waarvan de fabrikant ten minste 30% ruw eiwit vermeldt, met de bron en de as-fedwaarde per product.' },
  { slug: 'hondenvoer-met-weinig-vet', key: 'fat', label: 'vet', eenheid: '%', richting: 'laag', grens: 10, min: 0, max: 10, titel: 'Hondenvoer met weinig vet', beschrijving: 'Hondenvoer met ten hoogste 10% ruw vet volgens de fabrikant, met de as-fedwaarde en het voertype per product.' },
  { slug: 'hoog-vezel-hondenvoer', key: 'fiber', label: 'ruwe vezel', eenheid: '%', richting: 'hoog', grens: 5, min: 5, max: 40, titel: 'Hondenvoer met veel vezel', beschrijving: 'Hondenvoer met ten minste 5% ruwe vezel volgens de fabrikant, met de as-fedwaarde en het voertype per product.' },
  { slug: 'laag-calorisch-hondenvoer', key: 'kcal', label: 'energie', eenheid: 'kcal/100 g', richting: 'laag', grens: 300, min: 0, max: 300, titel: 'Laag-calorisch hondenvoer', beschrijving: 'Hondenvoer met ten hoogste 300 kcal per 100 g volgens de fabrikant, met de as-fedwaarde en het voertype per product.' }
]

function voedingsPagina(config, producten) {
  const rijen = producten.map((product) => {
    const waarden = voedingswaardeMap(product.recipe_versions?.[0]?.recipe_nutrition)
    if (onbetrouwbareNutrienten(waarden, product.food_type).has(config.key)) return null
    const waarde = waarden[config.key]
    if (waarde == null) return null
    if (config.richting === 'hoog' ? waarde < config.grens : waarde > config.grens) return null
    return { product, waarde }
  }).filter(Boolean).sort((eerste, tweede) => {
    const verschil = config.richting === 'hoog' ? tweede.waarde - eerste.waarde : eerste.waarde - tweede.waarde
    return verschil || eerste.product.brand.localeCompare(tweede.product.brand, 'nl') || eerste.product.name.localeCompare(tweede.product.name, 'nl')
  })
  const top = rijen.slice(0, 40)
  const toon = (waarde) => config.eenheid === '%' ? `${getal(waarde)}%` : `${getal(waarde)} ${config.eenheid}`
  const typeLabel = (key) => FOOD_TYPES.find(([type]) => type === key)?.[1] ?? key
  const inhoud = `      <p class="breadcrumb"><a href="/">Hondenvoervergelijker</a> › Voedingswaarden › ${escapeHtml(config.titel)}</p>
      <p class="eyebrow">Voedingswaarden</p>
      <h1>${escapeHtml(config.titel)}</h1>
      <p class="lead">Deze pagina verzamelt ${getal(rijen.length)} producten waarvan de fabrikant ${config.label} ${config.richting === 'hoog' ? 'ten minste' : 'ten hoogste'} ${getal(config.grens)}${config.eenheid === '%' ? '%' : ` ${config.eenheid}`} vermeldt. De waarden zijn as-fed, dus inclusief vocht.</p>
      <div class="callout warn">
        <p><strong>Let op:</strong> natvoer en rauwvoer bevatten veel meer vocht dan brokken. Vergelijk de percentages daarom binnen hetzelfde voertype, of gebruik in de vergelijker de droge-stofweergave. Producten zonder een opgegeven waarde staan niet in deze lijst.</p>
      </div>
      <h2>${top.length === rijen.length ? 'Alle producten' : config.richting === 'hoog' ? `De ${top.length} hoogste waarden` : `De ${top.length} laagste waarden`}</h2>
      <table>
        <thead><tr><th>Product</th><th>Type</th><th>${escapeHtml(config.label)}</th></tr></thead>
        <tbody>
${top.map(({ product, waarde }) => `          <tr><td><a href="/?zoek=${encodeURIComponent(product.name)}">${escapeHtml(product.brand)} — ${escapeHtml(product.name)}</a></td><td>${escapeHtml(typeLabel(product.food_type))}</td><td>${toon(waarde)}</td></tr>`).join('\n')}
        </tbody>
      </table>
      <p><a class="cta" href="/?${config.key === 'protein' ? 'eiwit' : config.key === 'fat' ? 'vet' : config.key === 'fiber' ? 'vezel' : 'kcal'}=${config.min}-${config.max}">Filter alle producten in de vergelijker</a> <a class="cta secondary" href="/hoe-wij-vergelijken.html">Hoe wij meten</a></p>
      <p><small>De waarde komt van de officiële productpagina of de bij het product vermelde bron. Controleer voor aankoop altijd de verpakking.</small></p>`
  return {
    pad: `/${config.slug}.html`,
    html: shell({
      titel: `${config.titel}: ${getal(rijen.length)} producten | Hondenvoervergelijker`,
      beschrijving: config.beschrijving,
      pad: `/${config.slug}.html`,
      inhoud,
      jsonLd: [{ '@context': 'https://schema.org', '@type': 'CollectionPage', name: config.titel, description: config.beschrijving, url: `${SITE}/${config.slug}.html`, inLanguage: 'nl-NL' }]
    })
  }
}

function broncontrolePagina(producten) {
  const totaal = producten.length
  const merken = new Set(producten.map(({ brand }) => brand).filter(Boolean)).size
  const metLabel = producten.filter((product) => Boolean(product.recipe_versions?.[0]?.ingredients_text)).length
  const metVoeding = producten.filter((product) => (product.recipe_versions?.[0]?.recipe_nutrition ?? []).some((rij) => rij.value != null)).length
  const reviewed = producten.filter((product) => Boolean(product.recipe_versions?.[0]?.reviewed_at)).length
  const gecontroleerd = producten.filter((product) => !isReviewOverdue(product.last_checked_at)).length
  const verouderd = totaal - gecontroleerd
  const gewijzigd = producten.filter((product) => product.source_status === 'gewijzigd').length
  const laatste = producten.map((product) => product.last_checked_at).filter(Boolean).sort().at(-1)
  const reviewedPercentage = totaal ? Math.round((reviewed / totaal) * 100) : 0
  const gecontroleerdPercentage = totaal ? Math.round((gecontroleerd / totaal) * 100) : 0

  const perMerk = new Map()
  for (const product of producten) {
    if (!product.brand) continue
    if (!perMerk.has(product.brand)) perMerk.set(product.brand, { aantal: 0, reviewed: 0, laatste: '' })
    const rij = perMerk.get(product.brand)
    rij.aantal += 1
    if (product.recipe_versions?.[0]?.reviewed_at) rij.reviewed += 1
    if (product.last_checked_at && product.last_checked_at > rij.laatste) rij.laatste = product.last_checked_at
  }
  const merkRijen = [...perMerk.entries()]
    .sort(([a], [b]) => a.localeCompare(b, 'nl', { sensitivity: 'base' }))
    .map(([brand, rij]) => `          <tr><td><a href="/merken/${slug(brand)}.html">${escapeHtml(brand)}</a></td><td>${getal(rij.aantal)}</td><td>${rij.reviewed}</td><td>${rij.laatste ? datumNl(rij.laatste) : 'onbekend'}</td></tr>`)
    .join('\n')

  const inhoud = `      <p class="breadcrumb"><a href="/">Hondenvoervergelijker</a> › Broncontrole</p>
      <p class="eyebrow">Transparantie</p>
      <h1>Broncontrole: wat wij controleren en wat niet</h1>
      <p class="lead">Deze pagina laat zien hoe actueel de onderliggende productdata is. De cijfers worden bij elke build opnieuw uit de database berekend; het is geen realtime belofte en geen medische garantie.</p>
      <p class="updated">Bijgewerkt op ${datumNl(VANDAAG)}${laatste ? ` · laatste broncontrole ${datumNl(laatste)}` : ''} · inhoud: <a href="/over-ons.html#redactie">Paul Zuiderduin</a></p>

      <div class="stat-grid">
        <div class="stat-card"><strong>${getal(totaal)}</strong><span>producten</span></div>
        <div class="stat-card"><strong>${merken}</strong><span>merken</span></div>
        <div class="stat-card"><strong>${gecontroleerdPercentage}%</strong><span>binnen zes maanden gecontroleerd</span></div>
        <div class="stat-card"><strong>${reviewedPercentage}%</strong><span>handmatig nagelopen</span></div>
      </div>

      <h2>Wat de cijfers betekenen</h2>
      <ul>
        <li><strong>${getal(metLabel)} van ${getal(totaal)}</strong> producten hebben een ingrediëntenlijst.</li>
        <li><strong>${getal(metVoeding)} van ${getal(totaal)}</strong> producten hebben minstens één bruikbare voedingswaarde.</li>
        <li><strong>${getal(gecontroleerd)} van ${getal(totaal)}</strong> ingrediëntenbronnen zijn binnen zes maanden gecontroleerd. Van <strong>${getal(verouderd)}</strong> producten is de controle ouder of ontbreekt een controledatum.</li>
        <li><strong>${getal(reviewed)}</strong> producten zijn daadwerkelijk handmatig tegen de bron nagekeken. Dat is een bewust streng criterium: automatisch overnemen alleen telt niet als menselijke controle.</li>
        <li><strong>${getal(gewijzigd)}</strong> producten hebben op dit moment de status “bron gewijzigd” en wachten op een nieuwe beoordeling.</li>
      </ul>

      <div class="callout">
        <p><strong>Wat wij niet claimen:</strong> een controledatum betekent niet dat een recept nooit meer wijzigt. Fabrikanten kunnen hun formule aanpassen. De verpakking en de officiële productpagina blijven leidend. Kruisbesmetting in de fabriek kunnen wij niet vaststellen.</p>
      </div>

      <h2>Hoe de controle werkt</h2>
      <ol>
        <li>De ingrediëntenlijst wordt letterlijk van de officiële productpagina overgenomen.</li>
        <li>De bron wordt periodiek opnieuw opgevraagd. Is de tekst ongewijzigd, dan wordt alleen de controledatum bijgewerkt.</li>
        <li>Bij een wijziging blijft de oude tekst staan tot een beheerder de nieuwe tekst heeft beoordeeld.</li>
        <li>Voedingswaarden worden apart gecontroleerd en op plausibiliteit getest. Een onmogelijke waarde wordt niet als filter- of sorteerwaarde gebruikt.</li>
        <li>Een product zonder recente controle of met een onduidelijke bron krijgt de status “Controleer etiket/fabrikant”.</li>
      </ol>
      <p>De volledige werkwijze staat op <a href="/hoe-wij-vergelijken.html">Hoe wij hondenvoer vergelijken</a>. De geaggregeerde cijfers over verzameltermen staan in het <a href="/etikettenonderzoek.html">etikettenonderzoek</a>.</p>

      <h2>Controle per merk</h2>
      <table>
        <thead><tr><th>Merk</th><th>Producten</th><th>Handmatig nagelopen</th><th>Laatste broncontrole</th></tr></thead>
        <tbody>
${merkRijen}
        </tbody>
      </table>

      <h2>Een fout melden</h2>
      <p>Klopt een ingrediëntenlijst, voedingswaarde of bron niet? Mail <a href="mailto:hondenvoervergelijker@paulzuiderduin.com">hondenvoervergelijker@paulzuiderduin.com</a> met het merk, de productnaam en de officiële bronpagina. We passen de tekst aan zodra de bron is gecontroleerd.</p>

      <p class="cite"><strong>Citeer deze pagina:</strong> Hondenvoervergelijker, “Broncontrole: wat wij controleren en wat niet”, ${SITE}/broncontrole.html, geraadpleegd op ${datumNl(VANDAAG)}.</p>`

  return shell({
    titel: 'Broncontrole en actualiteit van de hondenvoerdata | Hondenvoervergelijker',
    beschrijving: `Openbaar controleverslag: ${getal(totaal)} producten van ${merken} merken, ${gecontroleerdPercentage}% binnen zes maanden gecontroleerd en ${reviewed} producten handmatig nagelopen.`,
    pad: '/broncontrole.html',
    inhoud,
    jsonLd: [
      {
        '@context': 'https://schema.org',
        '@type': 'WebPage',
        name: 'Broncontrole en actualiteit van de hondenvoerdata',
        url: `${SITE}/broncontrole.html`,
        dateModified: VANDAAG,
        inLanguage: 'nl-NL',
        author: { '@type': 'Person', '@id': `${SITE}/over-ons.html#paul-zuiderduin`, name: 'Paul Zuiderduin' },
        publisher: organisatie,
        about: { '@type': 'Thing', name: 'Broncontrole van hondenvoerdata' }
      },
      {
        '@context': 'https://schema.org',
        '@type': 'Dataset',
        name: 'Hondenvoervergelijker: broncontrole',
        description: `Actualiteit en menselijke controle van ${totaal} hondenvoerproducten.`,
        creator: organisatie,
        dateModified: VANDAAG,
        inLanguage: 'nl-NL',
        isAccessibleForFree: true,
        variableMeasured: ['aantal producten', 'handmatig nagelopen producten', 'laatste broncontrole per merk']
      }
    ]
  })
}

function hypoallergeenPagina(producten) {
  const volledig = producten
    .filter((product) => {
      const uitslag = assessLabel(product.recipe_versions?.[0]?.ingredients_text ?? '')
      return uitslag.hidden.length === 0 && uitslag.unknown.length === 0
    })
    .sort((a, b) => a.brand.localeCompare(b.brand, 'nl', { sensitivity: 'base' }) || a.name.localeCompare(b.name, 'nl', { sensitivity: 'base' }))
  const merken = new Set(volledig.map(({ brand }) => brand)).size
  const top = volledig.slice(0, 40)
  const lijst = top.map((product) => `          <li>
            <span>
              <a class="name" href="${productPad(product)}">${escapeHtml(product.name)}</a><br />
              <span class="meta"><a href="/merken/${slug(product.brand)}.html">${escapeHtml(product.brand)}</a> · ${escapeHtml(typeLabel(product.food_type))}</span>
            </span>
            <span class="tag ok">etiket noemt elke bron</span>
          </li>`).join('\n')
  const faq = [
    {
      vraag: 'Is “hypoallergeen” een beschermde term?',
      antwoord: 'Nee. Er bestaat geen wettelijke definitie die voorschrijft wanneer een product zich hypoallergeen mag noemen. De term zegt dus niet automatisch dat een product veilig is voor een hond met een bewezen allergie.'
    },
    {
      vraag: 'Wat is het verschil tussen hypoallergeen en gehydrolyseerd?',
      antwoord: 'Bij gehydrolyseerd eiwit zijn de eiwitketens opgeknipt, waardoor het immuunsysteem de bron minder snel herkent. Dat is iets anders dan “hypoallergeen” op een verpakking. Alleen een dierenarts kan beoordelen of een gehydrolyseerd dieet past.'
    },
    {
      vraag: 'Zijn producten met een volledig etiket automatisch veilig?',
      antwoord: 'Nee. Een volledig etiket noemt elke bron bij name, maar zegt niets over kruisbesmetting in de fabriek, een gewijzigde receptuur of andere allergenen. Controleer altijd de verpakking en overleg bij klachten met je dierenarts.'
    },
    {
      vraag: 'Kan ik zelf een eliminatiedieet starten?',
      antwoord: 'Nee. Een eliminatiedieet en provocatietest horen onder begeleiding van een dierenarts. Deze pagina is een hulpmiddel om etiketten te vergelijken, geen medisch advies.'
    }
  ]
  const inhoud = `      <p class="breadcrumb"><a href="/">Hondenvoervergelijker</a> › Hypoallergene hondenvoeding</p>
      <p class="eyebrow">Uitleg</p>
      <h1>Hypoallergene hondenvoeding: wat zegt het etiket echt?</h1>
      <p class="lead">“Hypoallergeen” is geen beschermde term. Deze pagina laat zien welke producten een etiket hebben dat elke bron bij name noemt — een eerste voorwaarde om een allergie te kunnen beoordelen, maar geen garantie.</p>
      <p class="updated">Bijgewerkt op ${datumNl(VANDAAG)} · inhoud: <a href="/over-ons.html#redactie">Paul Zuiderduin</a></p>

      <div class="callout warn">
        <p><strong>Geen medisch advies:</strong> een hypoallergeen etiket maakt een product niet automatisch geschikt voor jouw hond. Een voedselallergie stel je niet zelf vast. Overleg bij jeuk, huidklachten, maag-darmproblemen of een vermoeden van een allergie altijd met een dierenarts.</p>
      </div>

      <div class="stat-grid">
        <div class="stat-card"><strong>${getal(volledig.length)}</strong><span>producten met een volledig benoemd etiket</span></div>
        <div class="stat-card"><strong>${merken}</strong><span>merken</span></div>
        <div class="stat-card"><strong>${getal(producten.length)}</strong><span>producten in de vergelijker</span></div>
      </div>

      <h2>Wat betekent hypoallergeen?</h2>
      <p>Fabrikanten gebruiken de term voor voeding die bedoeld is om minder snel een allergische reactie uit te lokken. In de praktijk kan dat betekenen dat er één dierlijke eiwitbron wordt gebruikt, dat de voeding gehydrolyseerd is of dat bepaalde ingrediënten zijn weggelaten. Omdat de term niet wettelijk is afgebakend, moet je altijd naar de ingrediëntenlijst kijken.</p>
      <p>Een etiket dat elke bron bij name noemt, is duidelijker dan een etiket met termen als “vlees en dierlijke bijproducten” of “granen”. Maar ook een volledig etiket sluit kruisbesmetting in de fabriek of een gewijzigde receptuur niet uit.</p>

      <h2>Producten met een volledig benoemd etiket</h2>
      <p>Deze ${getal(volledig.length)} producten noemen in de ingrediëntenlijst elke bron bij name. Dat is een transparantiesignaal, geen medische kwalificatie. De lijst is alfabetisch en bevat de eerste ${top.length} producten; de vergelijker bevat alle ${getal(producten.length)} producten.</p>
      <ul class="product-list">
${lijst}
      </ul>
      ${volledig.length > top.length ? `<p><a href="/merken/">Bekijk alle merken</a> voor de overige producten.</p>` : ''}

      <h2>Waar moet je op letten?</h2>
      <ul>
        <li><strong>Eén duidelijke eiwitbron:</strong> bij een eliminatiedieet is dat vaak makkelijker te beoordelen dan een lijst met meerdere diersoorten.</li>
        <li><strong>Geen verzameltermen:</strong> woorden als “dierlijk vet”, “gevogelte” of “bouillon” verbergen de bron.</li>
        <li><strong>Gehydrolyseerd eiwit:</strong> de eiwitketens zijn opgeknipt; dat is een veterinair dieet, geen gewone voeding.</li>
        <li><strong>Kruisbesmetting:</strong> een etiket vertelt niet alles over de productielijn. Vraag de fabrikant bij twijfel om uitsluitsel.</li>
      </ul>

      <h2>Veelgestelde vragen</h2>
      <div class="faq">
${faq.map(({ vraag, antwoord }) => `        <details><summary>${escapeHtml(vraag)}</summary><p>${escapeHtml(antwoord)}</p></details>`).join('\n')}
      </div>

      <p><a class="cta" href="/">Open de vergelijker</a> <a class="cta secondary" href="/hondenvoer-allergieen.html">Hoe lees je een etiket?</a> <a class="cta secondary" href="/hoe-wij-vergelijken.html">Onze methode</a></p>
      <p>Lees ook <a href="/hondenvoer-zonder.html">hondenvoer zonder een specifiek allergeen</a> of bekijk het <a href="/broncontrole.html">broncontroleverslag</a>.</p>`

  return shell({
    titel: 'Hypoallergene hondenvoeding: wat zegt het etiket? | Hondenvoervergelijker',
    beschrijving: `Wat hypoallergeen betekent, waarom de term niet beschermd is en welke ${volledig.length} producten een etiket hebben dat elke bron bij name noemt.`,
    pad: '/hypoallergene-hondenvoeding.html',
    inhoud,
    jsonLd: [
      {
        '@context': 'https://schema.org',
        '@type': 'FAQPage',
        mainEntity: faq.map(({ vraag, antwoord }) => ({ '@type': 'Question', name: vraag, acceptedAnswer: { '@type': 'Answer', text: antwoord } }))
      },
      {
        '@context': 'https://schema.org',
        '@type': 'WebPage',
        name: 'Hypoallergene hondenvoeding: wat zegt het etiket?',
        url: `${SITE}/hypoallergene-hondenvoeding.html`,
        dateModified: VANDAAG,
        inLanguage: 'nl-NL',
        author: { '@type': 'Person', '@id': `${SITE}/over-ons.html#paul-zuiderduin`, name: 'Paul Zuiderduin' }
      }
    ]
  })
}

function llmsTxt(heeftOnderzoek, aantalAdressen = 0, aantalProducten = 0) {
  let basis = readFileSync(join(WORTEL, 'public', 'llms.txt'), 'utf8')
    .replace(/Laatst bijgewerkt: .*?\./, `Laatst bijgewerkt: ${datumNl(VANDAAG)}.`)
  if (aantalAdressen) {
    basis = basis.replace(/- [\d.]+ pagina's in de sitemap\./, `- ${getal(aantalAdressen)} pagina's in de sitemap.`)
  }
  if (aantalProducten) {
    basis = basis.replace(
      /- De bronnen worden wekelijks gecontroleerd\./,
      `- ${getal(aantalProducten)} aparte productpagina's met ingrediënten, voedingswaarden en allergenoordeel.\n- De bronnen worden wekelijks gecontroleerd.`
    )
  }
  if (heeftOnderzoek) return basis
  return basis.replace(/- \[Etikettenonderzoek\].*\n/, '')
}

/* ------------------------------------------------------------------ */
/* Uitvoeren                                                           */
/* ------------------------------------------------------------------ */

mkdirSync(DIST, { recursive: true })

// 1. Inhoudspagina's (werken altijd, ook zonder database).
writeFileSync(join(DIST, 'hondenvoer-allergieen.html'), allergiePagina())
writeFileSync(join(DIST, 'hoe-wij-vergelijken.html'), methodePagina())
writeFileSync(join(DIST, 'over-ons.html'), overOnsPagina())
writeFileSync(join(DIST, 'contact.html'), contactPagina())
writeFileSync(join(DIST, 'voorwaarden.html'), voorwaardenPagina())
writeFileSync(join(DIST, 'disclaimer.html'), disclaimerPagina())
console.log('Geschreven: hondenvoer-allergieen.html, hoe-wij-vergelijken.html, over-ons.html, contact.html, voorwaarden.html, disclaimer.html')

// 2. Merkpagina's (fail-soft).
const adressen = [
  { loc: `${SITE}/`, prioriteit: '1.0' },
  { loc: `${SITE}/merken/`, prioriteit: '0.9' },
  { loc: `${SITE}/hondenvoer-allergieen.html`, prioriteit: '0.8' },
  { loc: `${SITE}/hoe-wij-vergelijken.html`, prioriteit: '0.7' },
  { loc: `${SITE}/over-ons.html`, prioriteit: '0.5' },
  { loc: `${SITE}/contact.html`, prioriteit: '0.4' },
  { loc: `${SITE}/voorwaarden.html`, prioriteit: '0.3' },
  { loc: `${SITE}/disclaimer.html`, prioriteit: '0.3' },
  { loc: `${SITE}/privacybeleid.html`, prioriteit: '0.3' }
]

let producten = null
try {
  producten = await haalProducten()
} catch (fout) {
  console.log(`Let op: productdata niet opgehaald (${fout.message}). Merkpagina's overgeslagen.`)
}

if (producten?.length) {
  const perMerk = new Map()
  for (const product of producten) {
    if (!product.brand) continue
    if (!perMerk.has(product.brand)) perMerk.set(product.brand, [])
    perMerk.get(product.brand).push(product)
  }

  const merken = [...perMerk.entries()]
    .map(([brand, lijst]) => ({ brand, aantal: lijst.length, slugBrand: slug(brand), lijst }))
    .sort((a, b) => a.brand.localeCompare(b.brand, 'nl', { sensitivity: 'base' }))

  mkdirSync(join(DIST, 'merken'), { recursive: true })
  merken.forEach((merk, index) => {
    const buren = Array.from({ length: Math.min(8, merken.length - 1) }, (_, offset) => merken[(index + offset + 1) % merken.length])
    const { pad, html, laatste } = merkPagina(merk.brand, merk.lijst, buren)
    writeFileSync(join(DIST, pad.replace(/^\//, '')), html)
    adressen.push({ loc: `${SITE}${pad}`, prioriteit: '0.7', lastmod: laatste })
  })
  writeFileSync(join(DIST, 'merken', 'index.html'), merkenIndex(merken))
  console.log(`Geschreven: ${merken.length} merkpagina's en /merken/`)

  // Allergeenpagina's gebruiken dezelfde keuring als de site, inclusief de
  // woordenlijst uit de database. Zonder die lijst zouden ze strenger zijn dan
  // de site en onterecht producten missen.
  let termen = []
  try {
    termen = await haalTermen()
  } catch (fout) {
    console.log(`Let op: woordenlijst niet opgehaald (${fout.message}); allergeenpagina's gebruiken de ingebouwde woorden.`)
  }
  setCustomTerms(termen)

  // De SPA hoeft niet de volledige ingrediëntenlijst van alle producten te
  // downloaden om allergenen te beoordelen. Deze compacte samenvatting bevat
  // precies wat de keuring nodig heeft; de volledige tekst wordt pas geladen
  // als een bezoeker de ingrediëntenlijst op een kaart openklapt.
  const alleAllergeenSleutels = ALLERGENS.map(({ key }) => key)
  const allergeenIndex = new Map(alleAllergeenSleutels.map((key, index) => [key, index]))
  const codeer = (keys = []) => [...new Set(keys)].map((key) => allergeenIndex.get(key)).filter((index) => index != null)
  // Verborgen woorden en hun sleutels herhalen zich sterk ("plantaardige",
  // "dierlijke bijproducten"). Eén gedeelde woordenlijst met indices per
  // product scheelt ruim een megabyte; de volledige ingrediëntenlijst blijft
  // lazy.
  const woorden = []
  const woordIndex = new Map()
  const codeerWoord = (word, keys) => {
    const sleutel = `${word}\u0000${keys.join(',')}`
    if (!woordIndex.has(sleutel)) {
      woordIndex.set(sleutel, woorden.length)
      woorden.push([word, codeer(keys)])
    }
    return woordIndex.get(sleutel)
  }
  const beoordelingen = {}
  for (const product of producten) {
    const version = product.recipe_versions?.[0]
    const tekst = version?.ingredients_text || ''
    const beoordeling = assessLabel(tekst)
    const opgeslagen = version?.recipe_ingredients ?? []
    beoordelingen[product.id] = {
      a: codeer(beoordeling.allergens),
      k: codeer(beoordeling.keys),
      p: codeer(opgeslagen.filter(({ certainty }) => certainty === 'confirmed').map(({ allergen_key }) => allergen_key)),
      u: codeer(opgeslagen.filter(({ certainty }) => certainty !== 'confirmed').map(({ allergen_key }) => allergen_key)),
      l: Boolean(tekst),
      t: beoordeling.hidden.length === 0 && beoordeling.unknown.length === 0,
      d: beoordeling.hidden.map(({ word, keys }) => codeerWoord(word, keys)),
      n: beoordeling.unknown,
      h: beoordeling.hydrolysed
    }
  }
  writeFileSync(join(DIST, 'catalog-assessment.json'), JSON.stringify({ versie: 2, woorden, producten: beoordelingen }))
  console.log(`Geschreven: catalog-assessment.json (${Object.keys(beoordelingen).length} producten, ${woorden.length} woorden)`)

  const allergeenPaginas = []
  for (const [key, kort] of ALLERGEEN_KEUZE) {
    const pagina = allergeenPagina(key, kort, producten)
    if (!pagina) continue
    adressen.push({ loc: `${SITE}${pagina.pad}`, prioriteit: '0.8', lastmod: pagina.laatste })
    allergeenPaginas.push(pagina)
  }
  // Pas na de eerste ronde weten we welke pagina's echt bestaan. Zo linken we
  // alleen naar pagina's met genoeg geschikte recepten en nooit naar een 404.
  // De links schuiven per pagina door, zodat elke pagina ook links van andere
  // pagina's ontvangt in plaats van alleen de grootste acht.
  for (const pagina of allergeenPaginas) {
    const andere = allergeenPaginas
      .filter(({ key }) => key !== pagina.key)
      .map(({ pad, kort, aantal }) => `<a class="related-allergen" href="${pad}">Zonder ${escapeHtml(kort)} <span>${getal(aantal)}</span></a>`)
      .join('\n')
    const html = pagina.html.replace('<!-- ANDERE_ALLERGENEN -->', andere)
    writeFileSync(join(DIST, pagina.pad.replace(/^\//, '')), html)
  }
  if (allergeenPaginas.length) {
    writeFileSync(join(DIST, 'hondenvoer-zonder.html'), zonderHub(allergeenPaginas))
    adressen.push({ loc: `${SITE}/hondenvoer-zonder.html`, prioriteit: '0.9', lastmod: laatsteDatum(producten) })
    console.log(`Geschreven: ${allergeenPaginas.length} allergeenpagina's en /hondenvoer-zonder.html`)

    const onderzoek = etikettenonderzoekPagina(producten, allergeenPaginas)
    writeFileSync(join(DIST, 'etikettenonderzoek.html'), onderzoek)
    adressen.push({ loc: `${SITE}/etikettenonderzoek.html`, prioriteit: '0.6', lastmod: laatsteDatum(producten) })
    console.log("Geschreven: etikettenonderzoek.html")
  }

  // Elke productpagina is een zelfstandige, indexeerbare pagina met de
  // letterlijke ingrediëntenlijst, de voedingswaarden en het oordeel per
  // allergeen. De merk- en allergeenpagina's linken er al naar; hier worden de
  // bestanden en sitemapvermeldingen aangemaakt.
  mkdirSync(join(DIST, 'producten'), { recursive: true })
  let productPaginas = 0
  for (const product of producten) {
    const pagina = productPagina(product, producten, allergeenPaginas)
    const bestand = join(DIST, pagina.pad.replace(/^\//, ''))
    mkdirSync(dirname(bestand), { recursive: true })
    writeFileSync(bestand, pagina.html)
    adressen.push({ loc: `${SITE}${pagina.pad}`, prioriteit: '0.6', lastmod: productDatum(product) })
    productPaginas += 1
  }
  console.log(`Geschreven: ${productPaginas} productpagina's`)

  const hypoallergeen = hypoallergeenPagina(producten)
  writeFileSync(join(DIST, 'hypoallergene-hondenvoeding.html'), hypoallergeen)
  adressen.push({ loc: `${SITE}/hypoallergene-hondenvoeding.html`, prioriteit: '0.8', lastmod: laatsteDatum(producten ?? []) })
  console.log('Geschreven: hypoallergene-hondenvoeding.html')

  // Voedingspagina's zijn een aanvulling op de vergelijker: ze vangen
  // zoekopdrachten op als "eiwitrijk hondenvoer" of "laag calorisch" en
  // verwijzen door naar de bijbehorende filtercombinatie.
  const voedingsPaginas = VOEDINGS_PAGINAS.map((config) => voedingsPagina(config, producten))
  for (const pagina of voedingsPaginas) {
    writeFileSync(join(DIST, pagina.pad.replace(/^\//, '')), pagina.html)
    adressen.push({ loc: `${SITE}${pagina.pad}`, prioriteit: '0.7', lastmod: laatsteDatum(producten ?? []) })
  }
  console.log(`Geschreven: ${voedingsPaginas.length} voedingspagina's`)
} else if (existsSync(join(WORTEL, 'public', 'sitemap.xml'))) {
  const basis = readFileSync(join(WORTEL, 'public', 'sitemap.xml'), 'utf8')
  for (const treffer of basis.matchAll(/<loc>\s*([^<\s]+)\s*<\/loc>/g)) {
    if (!adressen.some((rij) => rij.loc === treffer[1])) adressen.push({ loc: treffer[1], prioriteit: '0.5' })
  }
}

// De homepage en het merkenoverzicht tonen productaantallen en controledatums;
// hun lastmod volgt daarom de laatste productcontrole, niet de builddatum.
const laatsteProductDatum = laatsteDatum(producten ?? [])
if (laatsteProductDatum) {
  for (const loc of [`${SITE}/`, `${SITE}/merken/`]) {
    const rij = adressen.find((item) => item.loc === loc)
    if (rij) rij.lastmod = laatsteProductDatum
  }
}

// Het controleverslag werkt ook zonder database, zodat de footerlink nooit
// naar een 404 wijst. Met data bevat het de echte aantallen en controledatums.
const broncontrole = broncontrolePagina(producten ?? [])
writeFileSync(join(DIST, 'broncontrole.html'), broncontrole)
adressen.push({ loc: `${SITE}/broncontrole.html`, prioriteit: '0.7', lastmod: laatsteDatum(producten ?? []) })
console.log('Geschreven: broncontrole.html')

// 3. Sitemap en llms.txt.
const heeftOnderzoek = existsSync(join(DIST, 'etikettenonderzoek.html'))
writeFileSync(join(DIST, 'llms.txt'), llmsTxt(heeftOnderzoek, adressen.length, producten?.length ?? 0))

// Een buildstempel zorgt dat sitemap.xml bij elke deploy echt verandert. De
// FTP-actie slaat bestanden met identieke inhoud over; zonder dit blijft een
// oude (soms lege) sitemap in de servercache staan.
const sitemap = [
  '<?xml version="1.0" encoding="UTF-8"?>',
  `<!-- build: ${new Date().toISOString()} -->`,
  '<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">',
  ...adressen.map(({ loc, prioriteit, lastmod }) => `  <url><loc>${loc}</loc>${lastmod ? `<lastmod>${lastmod}</lastmod>` : ''}<priority>${prioriteit}</priority></url>`),
  '</urlset>',
  ''
].join('\n')
writeFileSync(join(DIST, 'sitemap.xml'), sitemap)
console.log(`Sitemap bijgewerkt: ${adressen.length} adressen.`)
