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
    .replace(/[øØ]/g, 'o')
    .replace(/[æÆ]/g, 'ae')
    .replace(/[œŒ]/g, 'oe')
    .replace(/[ß]/g, 'ss')
    .replace(/[đĐðÐ]/g, 'd')
    .replace(/[þÞ]/g, 'th')
    .replace(/[łŁ]/g, 'l')
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
        <p>Deze site vergelijkt uitsluitend overgenomen etiketinformatie. De resultaten vormen geen medisch advies en bieden geen garantie. Controleer altijd zelf de verpakking en overleg bij medische klachten met een dierenarts.</p>
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
      vraag: 'Is “grain free” (graanvrij) automatisch een veilige keuze bij een allergie?',
      antwoord: 'Nee, zeker niet. Een voedselallergie wordt meestal veroorzaakt door een dierlijke eiwitbron (zoals kip, rund of zuivel), niet door granen. Een graanvrij product kan dus nog steeds de eiwitten bevatten waar je hond allergisch voor is. Omgekeerd kan een voeding mét granen, maar met slechts één gecontroleerde (hypoallergene) eiwitbron, wél uitstekend geschikt zijn.'
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
          <tr><td><strong>Geschikt</strong></td><td>Het etiket vermeldt de geselecteerde bron nergens. Daarnaast bevat de lijst geen onduidelijke verzameltermen waarachter dit allergeen verborgen kan zitten.</td></tr>
          <tr><td><strong>Uitgesloten</strong></td><td>De geselecteerde bron staat expliciet met naam genoemd in de ingrediëntenlijst.</td></tr>
          <tr><td><strong>Controleer etiket/fabrikant</strong></td><td>Het etiket bevat een ingrediënt zonder gespecificeerde bron, of noemt een term die ons systeem niet herkent. Alleen de fabrikant of de originele verpakking kan hier uitsluitsel over geven.</td></tr>
        </tbody>
      </table>

      <h2>Veelgestelde vragen</h2>
      <div class="faq">
        ${faq.map(({ vraag, antwoord }) => `<details><summary>${escapeHtml(vraag)}</summary><p>${escapeHtml(antwoord)}</p></details>`).join('\n        ')}
      </div>

      <div class="callout">
        <p><strong>Verder lezen:</strong> ontdek <a href="/hoe-wij-vergelijken.html">hoe wij etiketten overnemen en controleren</a>, of bekijk direct <a href="/merken/">alle merken</a> en hun recepten.</p>
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
      <p>Webshops en affiliate-feeds gebruiken we niet als bron voor de samenstelling. Deze lopen namelijk vaak achter na receptuurwijzigingen en bundelen soms per ongeluk meerdere productvarianten op één webpagina. Een klein aantal oudere producten verwijst nog naar een winkelpagina; die uitzondering staat in de bronlink op de productkaart.</p>

      <h2>2. Letterlijk overnemen</h2>
      <p>De tekst op het etiket wordt door ons letterlijk overgenomen: inclusief dezelfde volgorde, percentages, hoeveelheden en zelfs leestekens. Ontbreekt de lijst of is de informatie online onbereikbaar? Dan voegen we het product simpelweg niet toe. We doen niet aan giswerk; we hebben liever een ontbrekend product op de site dan een onjuiste ingrediëntenlijst.</p>

      <h2>3. De keuring: woord voor woord</h2>
      <p>Elke ingrediëntenlijst wordt geautomatiseerd geanalyseerd. Ons systeem herkent dierlijke en plantaardige eiwitbronnen, bereidingswijzen, mineralen en hulpstoffen. Verzameltermen die de werkelijke bron verbergen — zoals “dierlijk vet”, “granen”, “bouillon” of “plantaardige olie” — blokkeren vervolgens alleen die allergenen die er logischerwijs achter schuil kunnen gaan. Zo kan “dierlijk vet” bijvoorbeeld afkomstig zijn van een rund of varken, maar nooit van tarwe of zalm.</p>
      <p>Onbekende woorden worden door de beheerder eenmalig handmatig gecategoriseerd. Deze indeling wordt opgeslagen en direct toegepast op alle toekomstige en bestaande producten die ditzelfde woord bevatten. Zo leert de vergelijker continu nieuwe termen herkennen, zonder dat elk etiket volledig handwerk blijft.</p>

      <h2>4. Eerlijk over onzekerheid</h2>
      <p>Wanneer een etiket de specifieke bron niet noemt, markeert onze site het product niet blindelings als “Geschikt”, maar geven we de status “Controleer etiket/fabrikant”. Dit is geen programmeerfout, maar een weerspiegeling van de onvolledigheid van het etiket zelf. In dergelijke gevallen kan uitsluitend de verpakking of de fabrikant helderheid verschaffen.</p>

      <h2>5. Actualiteit en bronbewaking</h2>
      <p>De bronpagina's worden wekelijks geautomatiseerd gecontroleerd. Is de tekst op de website van de fabrikant ongewijzigd? Dan updaten we enkel de controledatum. Signaleert het systeem een wijziging, dan blijft de oude samenstelling op onze site zichtbaar totdat een beheerder de nieuwe tekst handmatig heeft goedgekeurd en verwerkt. Hierdoor passen ingrediëntenlijsten op ons platform zich nooit ongemerkt aan.</p>
      <p>Sites die geautomatiseerde bezoeken blokkeren, controleren we periodiek handmatig. Producten die lange tijd niet gecontroleerd konden worden, krijgen uit voorzorg automatisch de status “Controleer etiket/fabrikant”. Dit is een bewust strenge veiligheidsmaatregel.</p>

      <h2>6. Onafhankelijkheid en affiliate-links</h2>
      <p>De weergavevolgorde en de uiteindelijke beoordeling van producten zijn uitsluitend gebaseerd op de feitelijke etiketinformatie en de door jou geselecteerde allergenen. Verwijzingen naar webwinkels kunnen soms affiliate-links bevatten, maar deze hebben geen enkele invloed op wélke producten we tonen, op de rangschikking, of op de keuringsuitslag. Meer hierover lees je in ons <a href="/privacybeleid.html">privacybeleid</a>.</p>

      <h2>7. Beperkingen</h2>
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

function merkPagina(brand, producten, buren = []) {
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

      ${buren.length ? `<h2>Andere merken</h2>
      <ul>
${buren.map((buur) => `        <li><a href="/merken/${buur.slugBrand}.html">${escapeHtml(buur.brand)}</a> — ${buur.aantal} recept${buur.aantal === 1 ? '' : 'en'}</li>`).join('\n')}
      </ul>
      <p><a href="/merken/">Bekijk alle merken</a></p>` : ''}

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
      <p class="lead">Ontdek ${brands.length} merken met in totaal ${brands.reduce((n, b) => n + b.aantal, 0)} recepten. Selecteer een merk om direct alle ingrediëntenlijsten en de bijbehorende allergeneninformatie per product te bekijken.</p>
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
  merken.forEach((merk, index) => {
    const buren = Array.from({ length: Math.min(8, merken.length - 1) }, (_, offset) => merken[(index + offset + 1) % merken.length])
    const { pad, html } = merkPagina(merk.brand, merk.lijst, buren)
    writeFileSync(join(DIST, pad.replace(/^\//, '')), html)
    adressen.push({ loc: `${SITE}${pad}`, prioriteit: '0.7' })
  })
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
