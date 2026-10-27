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
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'
import { ALLERGEN_LABELS, FOOD_TYPES, assessLabel, markUncertainIngredients } from '../src/lib/allergens.js'

const WORTEL = dirname(dirname(fileURLToPath(import.meta.url)))
const DIST = join(WORTEL, 'dist')
const SITE = 'https://hondenvoervergelijker.paulzuiderduin.com'
const VANDAAG = new Date().toISOString().slice(0, 10)

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

const slug = (tekst = '') =>
  String(tekst)
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .replace(/&/g, ' en ')
    .replace(/['’`]/g, '')
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/^-+|-+$/g, '')

const typeLabel = (key) => FOOD_TYPES.find(([sleutel]) => sleutel === key)?.[1] ?? key

function shell({ titel, beschrijving, pad, inhoud, jsonLd = [], extraKop = '' }) {
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
    <link rel="icon" href="/favicon.svg?v=3" type="image/svg+xml" />
    <link rel="stylesheet" href="/pagina.css" />
    <title>${escapeHtml(titel)}</title>
    ${jsonLd.map((blok) => `<script type="application/ld+json">${JSON.stringify(blok)}</script>`).join('\n    ')}
    ${extraKop}
  </head>
  <body>
    <header class="site">
      <div class="header-inner">
        <a class="brand" href="/">
          <img src="/favicon.svg" alt="" width="32" height="32" />
          <span>
            <strong>Hondenvoervergelijker</strong>
            <span>Onafhankelijk hondenvoer vergelijken</span>
          </span>
        </a>
        <a class="back" href="/">Naar de vergelijker →</a>
      </div>
    </header>
    <main class="wrap">
${inhoud}
      <footer>
        <nav aria-label="Informatie">
          <a href="/">Vergelijker</a>
          <a href="/merken/">Alle merken</a>
          <a href="/hondenvoer-allergieen.html">Hondenvoer en allergieën</a>
          <a href="/hoe-wij-vergelijken.html">Hoe wij vergelijken</a>
          <a href="/privacybeleid.html">Privacybeleid</a>
        </nav>
        <p>© ${new Date().getFullYear()} Hondenvoervergelijker · Paul Zuiderduin · <a href="mailto:hondenvoervergelijker@paulzuiderduin.com">hondenvoervergelijker@paulzuiderduin.com</a></p>
        <p>Deze site vergelijkt etiketinformatie en geeft geen dierenartsadvies. Controleer altijd de verpakking en overleg bij twijfel met je dierenarts.</p>
      </footer>
    </main>
  </body>
</html>
`
}

const organisatie = {
  '@type': 'Organization',
  name: 'Hondenvoervergelijker',
  url: SITE,
  email: 'hondenvoervergelijker@paulzuiderduin.com',
  description: 'Onafhankelijke vergelijker van hondenvoeding op ingrediënten en allergenen.'
}

/* ------------------------------------------------------------------ */
/* Inhoudspagina's                                                     */
/* ------------------------------------------------------------------ */

const allergiePagina = () => {
  const faq = [
    {
      vraag: 'Wat is het verschil tussen een voedselallergie en een voedselintolerantie bij honden?',
      antwoord: 'Bij een allergie reageert het afweersysteem op een eiwit, meestal met jeuk, huidklachten of maag-darmklachten. Bij een intolerantie is er geen afweerreactie maar een verteringsprobleem, bijvoorbeeld door te veel vet of een specifiek ingrediënt. Alleen een dierenarts kan het onderscheid maken, vaak met een eliminatiedieet.'
    },
    {
      vraag: 'Hoe lees ik een ingrediëntenlijst op hondenvoer?',
      antwoord: 'Ingrediënten staan in aflopende volgorde van gewicht. Let op verzameltermen zoals “vlees en dierlijke bijproducten”, “granen”, “dierlijk vet” en “bouillon”: die noemen geen diersoort of plant. Voor een eliminatiedieet wil je een lijst waarin elke bron bij name staat, met percentages.'
    },
    {
      vraag: 'Wat betekent “gehydrolyseerd eiwit” op een etiket?',
      antwoord: 'Het eiwit is in kleine stukjes geknipt, waardoor het afweersysteem het vaak minder snel herkent. Dat betekent niet automatisch dat het veilig is: de bron blijft hetzelfde. Een dierenarts beoordeelt of een hydrolysaat in jouw situatie past.'
    },
    {
      vraag: 'Is “grain free” automatisch geschikt bij een allergie?',
      antwoord: 'Nee. Een allergie gaat meestal om een eiwitbron, niet om graan als geheel. Een graanvrij product kan nog steeds kip, rund of zuivel bevatten. Andersom kan een graanhoudend product met één gecontroleerde eiwitbron juist wel passen.'
    },
    {
      vraag: 'Kan ik deze website gebruiken in plaats van een eliminatiedieet?',
      antwoord: 'Nee. De website helpt om snel te zien welke bronnen een etiket noemt en waar onduidelijkheden zitten. Een eliminatiedieet en provocatietest horen bij de dierenarts, met een voeding die daar specifiek voor bedoeld is.'
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
      <p class="lead">Bij een vermoede voedselallergie draait bijna alles om één vraag: welke bronnen noemt het etiket wél, en welke verbergt het achter een verzamelterm? Deze pagina legt uit waar je op let en hoe je de vergelijker daarbij gebruikt.</p>
      <p class="updated">Bijgewerkt op ${datumNl(VANDAAG)} · leestijd ongeveer 7 minuten</p>

      <div class="callout warn">
        <p><strong>Geen medisch advies.</strong> Jeuk, haaruitval, oorontsteking, braken of diarree kunnen veel oorzaken hebben. Laat een vermoede allergie altijd onderzoeken door een dierenarts voordat je zelf een dieet start.</p>
      </div>

      <h2>Allergie of intolerantie?</h2>
      <p>Bij een <strong>voedselallergie</strong> reageert het afweersysteem op een eiwit, vaak een dierlijk eiwit zoals kip, rund, lam of zuivel. Klachten zijn meestal jeuk en huidproblemen, soms ook maag-darmklachten. Bij een <strong>voedselintolerantie</strong> speelt het afweersysteem geen rol; het gaat om een verteringsprobleem. Een eliminatiedieet met daarop een provocatie is de gebruikelijke manier om het verschil vast te stellen.</p>

      <h2>Waarom de ingrediëntenlijst zo belangrijk is</h2>
      <p>De wettelijk verplichte ingrediëntenlijst is de enige plek waar staat wat er echt in het voer zit. Toch is die lijst vaak minder precies dan hij lijkt:</p>
      <ul>
        <li><strong>Verzameltermen.</strong> “Vlees en dierlijke bijproducten”, “granen” en “dierlijk vet” noemen geen diersoort of plant. Voor iemand die één specifieke bron vermijdt, is dat een open vraag.</li>
        <li><strong>Percentages.</strong> “Kip 4%” zegt iets anders dan “kip 40%”. Zonder percentage weet je niet hoeveel van het ingrediënt erin zit.</li>
        <li><strong>Bijproducten en delen.</strong> Lever, long, hart of karkas zijn nog steeds van een dier afkomstig en tellen voor een allergie dus mee.</li>
        <li><strong>Bouillon en vetten.</strong> Een “bouillon” of “dierlijk vet” kan van verschillende dieren komen. Staat de bron er niet bij, dan blijft het onzeker.</li>
        <li><strong>Gehydrolyseerd eiwit.</strong> De eiwitten zijn opgeknipt, maar de bron blijft dezelfde. Een dierenarts beoordeelt of dat in jouw geval uitmaakt.</li>
      </ul>

      <h2>Zo gebruik je de vergelijker</h2>
      <ol>
        <li>Kies de allergenen die je wilt vermijden, bijvoorbeeld kip, rund, tarwe of zalm.</li>
        <li>Bekijk per product of de bron bij name genoemd staat. Producten met een onduidelijke term komen bij “Controleer etiket/fabrikant” te staan.</li>
        <li>Open de volledige ingrediëntenlijst op de kaart. Rood gemarkeerde woorden noemen geen bron.</li>
        <li>Twijfel je? Vraag de fabrikant om schriftelijke bevestiging van de bron en bewaar dat antwoord.</li>
      </ol>
      <p><a class="cta" href="/">Open de vergelijker</a> <a class="cta secondary" href="/merken/">Bekijk alle merken</a></p>

      <h2>Wat de uitslagen betekenen</h2>
      <table>
        <thead><tr><th>Uitslag</th><th>Betekenis</th></tr></thead>
        <tbody>
          <tr><td><strong>Geschikt</strong></td><td>Het etiket noemt de gekozen bron nergens en er staat geen onduidelijke term in die die bron kan verbergen.</td></tr>
          <tr><td><strong>Uitgesloten</strong></td><td>De gekozen bron staat met naam in de ingrediëntenlijst.</td></tr>
          <tr><td><strong>Controleer etiket/fabrikant</strong></td><td>Het etiket noemt een ingrediënt zonder bron, of bevat een woord dat de keuring niet kent. Alleen het etiket of de fabrikant kan dat oplossen.</td></tr>
        </tbody>
      </table>

      <h2>Veelgestelde vragen</h2>
      <div class="faq">
        ${faq.map(({ vraag, antwoord }) => `<details><summary>${escapeHtml(vraag)}</summary><p>${escapeHtml(antwoord)}</p></details>`).join('\n        ')}
      </div>

      <div class="callout">
        <p><strong>Verder lezen:</strong> <a href="/hoe-wij-vergelijken.html">hoe wij etiketten overnemen en controleren</a>, of bekijk <a href="/merken/">alle merken</a> met hun recepten.</p>
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
      <p class="lead">De vergelijker is opgebouwd rond één regel: wat op de site staat, moet herleidbaar zijn tot de officiële ingrediëntenlijst van de fabrikant. Deze pagina legt uit waar de data vandaan komt, hoe de keuring werkt en waar de grenzen liggen.</p>
      <p class="updated">Bijgewerkt op ${datumNl(VANDAAG)}</p>

      <h2>1. Bronnen: de fabrikant, niet de winkel</h2>
      <p>Ingrediëntenlijsten komen van de officiële productpagina's van de fabrikant, bij voorkeur de Nederlandse pagina. Is die er niet, dan gebruiken we de officiële anderstalige pagina en vertalen we de samenstelling met dezelfde percentages en dezelfde volgorde. Op de productkaart staat in dat geval een aantekening.</p>
      <p>Webshops en affiliate-feeds gebruiken we <strong>niet</strong> als bron voor de samenstelling. Die lopen vaak achter op receptwijzigingen en bundelen soms meerdere producten op één pagina.</p>

      <h2>2. Letterlijk overnemen</h2>
      <p>De tekst wordt letterlijk overgenomen: dezelfde volgorde, percentages, getallen en leestekens. Ontbreekt de lijst of is de pagina afgeschermd, dan komt het product niet met een gok op de site. Liever een gat dan een verkeerde lijst.</p>

      <h2>3. De keuring: woord voor woord</h2>
      <p>Elke ingrediëntenlijst wordt automatisch gelezen. De keuring herkent dierlijke en plantaardige bronnen, bereidingswoorden, mineralen en hulpstoffen. Woorden die geen bron noemen maar er wel een kunnen verbergen — “dierlijk vet”, “granen”, “bouillon”, “plantaardige olie” — blokkeren alleen de allergenen die er echt achter kunnen zitten. “Dierlijk vet” kan rund of varken zijn, maar nooit tarwe of zalm.</p>
      <p>Woorden die de keuring niet kent, worden één keer door de beheerder ingedeeld. Die ene indeling geldt daarna voor alle producten met dat woord. Zo groeit de woordenschat zonder dat elk etiket opnieuw handwerk wordt.</p>

      <h2>4. Eerlijk over onzekerheid</h2>
      <p>Als een etiket de bron niet noemt, zegt de site niet “geschikt” maar “Controleer etiket/fabrikant”. Dat is geen fout in de data, maar een eigenschap van het etiket. Alleen de fabrikant of een dierenarts kan die vraag beantwoorden.</p>

      <h2>5. Actualiteit en bronbewaking</h2>
      <p>De bronpagina's worden wekelijks automatisch opnieuw bekeken. Is de tekst ongewijzigd, dan wordt de controledatum bijgewerkt. Is de tekst veranderd, dan blijft de oude tekst op de site staan tot een mens de nieuwe tekst heeft beoordeeld; het product verschijnt dan bovenaan in het beheer. Zo verandert de site nooit stilzwijgend van inhoud.</p>
      <p>Producten die lange tijd niet gecontroleerd konden worden, krijgen op de site de melding “Controleer etiket/fabrikant”. Dat is bewust streng.</p>

      <h2>6. Onafhankelijkheid en affiliate-links</h2>
      <p>De volgorde en de beoordeling van producten hangen alleen af van de etiketten en van de allergenen die je kiest. Sommige uitgaande links naar webwinkels kunnen affiliate-links zijn. Ze hebben geen invloed op welke producten je ziet, in welke volgorde, of met welk oordeel. Zie ook het <a href="/privacybeleid.html">privacybeleid</a>.</p>

      <h2>7. Grenzen</h2>
      <ul>
        <li>De site beoordeelt alleen wat op het etiket staat. Receptwijzigingen zonder etiketwijziging zijn niet zichtbaar.</li>
        <li>Een ontbrekende bron op het etiket betekent niet automatisch dat het product onveilig is; het betekent dat het etiket de vraag niet beantwoordt.</li>
        <li>De site is geen medisch hulpmiddel en vervangt geen eliminatiedieet of dierenartsonderzoek.</li>
        <li>Fouten in de overname zijn mogelijk. Meld ze via <a href="mailto:hondenvoervergelijker@paulzuiderduin.com">hondenvoervergelijker@paulzuiderduin.com</a>; we corrigeren ze en vermelden de bron.</li>
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
/* Merkpagina's                                                        */
/* ------------------------------------------------------------------ */

async function haalProducten() {
  if (!SUPABASE_URL || !SUPABASE_KEY) return null
  const basis = `${SUPABASE_URL}/rest/v1/products?select=id,brand,name,food_type,package_size,source_url,last_checked_at,source_status,recipe_versions(ingredients_text,imported_at,reviewed_at,recipe_ingredients(allergen_key,certainty))&published=eq.true&recipe_versions.is_current=eq.true&order=brand.asc,name.asc`
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

const verdictLabel = (transparant) => (transparant ? 'alle bronnen benoemd' : 'bron niet volledig benoemd')

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
  const maat = product.package_size ? ` · ${escapeHtml(product.package_size)}` : ''
  return `          <li>
            <span>
              <span class="name">${escapeHtml(product.name)}</span><br />
              <span class="meta">${escapeHtml(type)}${maat} · ${escapeHtml(bronTekst)}</span>
            </span>
            <span class="tag ${transparant ? 'ok' : 'check'}">${verdictLabel(transparant)}</span>
          </li>`
}

function merkPagina(brand, producten) {
  const slugBrand = slug(brand)
  const laatste = producten.map((p) => p.last_checked_at).filter(Boolean).sort().at(-1)
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
${topTermen.map(([woord, aantal]) => `        <li><strong>${escapeHtml(woord)}</strong> — in ${aantal} van de ${producten.length} recepten</li>`).join('\n')}
      </ul>`
    : `<h2>Benoemde bronnen bij ${escapeHtml(brand)}</h2>
      <p>De ingrediëntenlijsten van ${escapeHtml(brand)} noemen in deze dataset elke bron bij name; er staan geen onbenoemde verzameltermen in.</p>`

  const inhoud = `      <p class="breadcrumb"><a href="/">Hondenvoervergelijker</a> › <a href="/merken/">Merken</a> › ${escapeHtml(brand)}</p>
      <p class="eyebrow">Merk</p>
      <h1>${escapeHtml(brand)} hondenvoer: ingrediënten en allergenen</h1>
      <p class="lead">${producten.length} recept${producten.length === 1 ? '' : 'en'} van ${escapeHtml(brand)}${typeSamenvatting ? ` (${typeSamenvatting})` : ''}, met de letterlijke ingrediëntenlijst en de bronnen die het etiket noemt.${controledatum ? ` Laatst gecontroleerd op ${controledatum}.` : ''}</p>
      <p>
        <a class="cta" href="/?merk=${encodeURIComponent(brand)}">Vergelijk ${escapeHtml(brand)} op allergenen</a>
      </p>
      <div class="callout">
        <p>“Alle bronnen benoemd” betekent: bij elk ingrediënt staat waar het vandaan komt. “Bron niet volledig benoemd” betekent: er staat een verzamelterm in de lijst (zoals “dierlijk vet”, “gevogelte-eiwit” of “granen”) die een allergeen kan verbergen.${open ? ` Dat geldt voor ${open} van de ${producten.length} recepten.` : ` Alle ${producten.length} recepten noemen elke bron bij name.`}</p>
      </div>

      <h2>Alle recepten van ${escapeHtml(brand)}</h2>
      <ul class="product-list">
${producten.map(productRegel).join('\n')}
      </ul>

      ${termenBlok}

      <h2>Over deze merkpagina</h2>
      <p>De ingrediëntenlijsten komen van de officiële productpagina's van ${escapeHtml(brand)}. De vergelijker neemt de tekst letterlijk over en beoordeelt per allergeen of de bron bij name genoemd is. Kies in de vergelijker de allergenen van jouw hond om te zien welke recepten geschikt zijn, welke uitgesloten zijn en waar je het etiket moet controleren.</p>
      <p><a class="cta" href="/?merk=${encodeURIComponent(brand)}">Open ${escapeHtml(brand)} in de vergelijker</a> <a class="cta secondary" href="/hondenvoer-allergieen.html">Hoe lees je een etiket?</a></p>

      <p class="updated">Deze pagina wordt automatisch bijgewerkt wanneer de productdata verandert. Klopt er iets niet? Mail <a href="mailto:hondenvoervergelijker@paulzuiderduin.com">hondenvoervergelijker@paulzuiderduin.com</a>.</p>`

  const itemList = {
    '@context': 'https://schema.org',
    '@type': 'ItemList',
    name: `${brand} hondenvoer`,
    numberOfItems: producten.length,
    itemListElement: producten.slice(0, 50).map((p, index) => ({
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
    html: shell({
      titel: `${brand} hondenvoer: alle ingrediënten en allergenen | Hondenvoervergelijker`,
      beschrijving: `Alle ${producten.length} recepten van ${brand} met de letterlijke ingrediëntenlijst, voertype en de bronnen die het etiket noemt. Onafhankelijk gecontroleerd${controledatum ? ` op ${controledatum}` : ''}.`,
      pad: `/merken/${slugBrand}.html`,
      inhoud,
      jsonLd: [breadcrumb, itemList]
    })
  }
}

function merkenIndex(brands) {
  const regels = brands
    .map(({ brand, aantal, slugBrand }) => `          <li><a href="/merken/${slugBrand}.html">${escapeHtml(brand)}</a> <span class="meta">(${aantal} recept${aantal === 1 ? '' : 'en'})</span></li>`)
    .join('\n')

  const inhoud = `      <p class="breadcrumb"><a href="/">Hondenvoervergelijker</a> › Merken</p>
      <p class="eyebrow">Overzicht</p>
      <h1>Alle hondenvoermerken in de vergelijker</h1>
      <p class="lead">${brands.length} merken met samen ${brands.reduce((n, b) => n + b.aantal, 0)} recepten. Kies een merk voor alle ingrediëntenlijsten en de allergeneninformatie per recept.</p>
      <div class="card">
        <ul class="product-list">
${regels}
        </ul>
      </div>
      <p><a class="cta" href="/">Vergelijk alle merken op allergenen</a></p>`

  return shell({
    titel: 'Alle hondenvoermerken met ingrediënten en allergenen | Hondenvoervergelijker',
    beschrijving: `Overzicht van ${brands.length} hondenvoermerken met ${brands.reduce((n, b) => n + b.aantal, 0)} recepten, ingrediëntenlijsten en allergeneninformatie.`,
    pad: '/merken/',
    inhoud,
    jsonLd: [{ '@context': 'https://schema.org', ...organisatie }]
  })
}

/* ------------------------------------------------------------------ */
/* Uitvoeren                                                           */
/* ------------------------------------------------------------------ */

mkdirSync(DIST, { recursive: true })

// 1. Inhoudspagina's (werken altijd, ook zonder database).
writeFileSync(join(DIST, 'hondenvoer-allergieen.html'), allergiePagina())
writeFileSync(join(DIST, 'hoe-wij-vergelijken.html'), methodePagina())
console.log('Geschreven: hondenvoer-allergieen.html, hoe-wij-vergelijken.html')

// 2. Merkpagina's (fail-soft).
const adressen = [
  { loc: `${SITE}/`, prioriteit: '1.0' },
  { loc: `${SITE}/merken/`, prioriteit: '0.9' },
  { loc: `${SITE}/hondenvoer-allergieen.html`, prioriteit: '0.8' },
  { loc: `${SITE}/hoe-wij-vergelijken.html`, prioriteit: '0.7' },
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
  for (const merk of merken) {
    const { pad, html } = merkPagina(merk.brand, merk.lijst)
    writeFileSync(join(DIST, pad.replace(/^\//, '')), html)
    adressen.push({ loc: `${SITE}${pad}`, prioriteit: '0.7' })
  }
  writeFileSync(join(DIST, 'merken', 'index.html'), merkenIndex(merken))
  console.log(`Geschreven: ${merken.length} merkpagina's en /merken/`)
} else if (existsSync(join(WORTEL, 'public', 'sitemap.xml'))) {
  const basis = readFileSync(join(WORTEL, 'public', 'sitemap.xml'), 'utf8')
  for (const treffer of basis.matchAll(/<loc>\s*([^<\s]+)\s*<\/loc>/g)) {
    if (!adressen.some((rij) => rij.loc === treffer[1])) adressen.push({ loc: treffer[1], prioriteit: '0.5' })
  }
}

// 3. Sitemap.
const sitemap = [
  '<?xml version="1.0" encoding="UTF-8"?>',
  '<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">',
  ...adressen.map(({ loc, prioriteit }) => `  <url><loc>${loc}</loc><lastmod>${VANDAAG}</lastmod><priority>${prioriteit}</priority></url>`),
  '</urlset>',
  ''
].join('\n')
writeFileSync(join(DIST, 'sitemap.xml'), sitemap)
console.log(`Sitemap bijgewerkt: ${adressen.length} adressen.`)
