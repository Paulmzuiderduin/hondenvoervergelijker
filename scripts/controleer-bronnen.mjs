#!/usr/bin/env node
// Bronbewaking: kijkt of een bronpagina nog dezelfde etiket tekst toont als de
// tekst die uit die pagina is overgenomen.
//
// Waarom: de site belooft nergens een menselijke controle bij een automatisch
// overgenomen etiket, maar zolang de brontekst klopt, klopt de kaart wel. Past
// een fabrikant het etiket aan, dan staat er op de site nog de oude tekst met
// de datum van de import. Deze controle vindt dat verschil.
//
// Wat er gebeurt bij een controle:
//   gelijk        de brontekst staat nog op de pagina -> last_checked_at wordt
//                 in Supabase (indien geconfigureerd) op vandaag gezet en
//                 source_status op 'ok'.
//   gewijzigd     niet meer gevonden -> source_status wordt 'gewijzigd' zodat
//                 het product bovenaan in Beheer ("Wat vraagt aandacht")
//                 verschijnt. De tekst op de site verandert NIET vanzelf.
//   onbereikbaar  de pagina gaf een fout of een blokkade (bijv. Cloudflare 403/429).
//
// Gebruik:
//   node scripts/controleer-bronnen.mjs
//   node scripts/controleer-bronnen.mjs --merk=Trovet --limiet=5
//   node scripts/controleer-bronnen.mjs --parallel=6 --pauze=1500
//
// Het script is beleefd per site (standaard minstens 1100 ms tussen twee
// verzoeken naar dezelfde host), maar controleert verschillende hosts parallel
// zodat 1400+ producten binnen enkele minuten klaar zijn.

import { existsSync, readFileSync, readdirSync, writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'

const WORTEL = dirname(dirname(fileURLToPath(import.meta.url)))
const GEBRUIK_UITBREIDING = process.argv.includes('--uitbreiding')
const GEEN_DB = process.argv.includes('--geen-db')
const INCLUSIEF_BROWSER_SITES = process.argv.includes('--ook-browser-sites')
const IMPORT = GEBRUIK_UITBREIDING ? join(WORTEL, 'data', 'import', 'uitbreiding') : join(WORTEL, 'data', 'import')
const RAPPORT = join(IMPORT, 'broncontrole.md')
const UA = 'HondenvoervergelijkerBot/0.1 (contact: hondenvoervergelijker@paulzuiderduin.com)'

// Deze drie fabrikantensites blokkeren geautomatiseerde server-verzoeken via
// Cloudflare/WAF (HTTP 403/429) en kunnen alleen vanuit een echte browsersessie
// gecontroleerd worden (zie data/import/uitbreiding/broncontrole-*.md).
// Standaard slaat de automatische run ze over zodat de wekelijkse controle geen
// vals alarm geeft; met --ook-browser-sites of --merk=... doen ze wel mee.
const BROWSER_ONLY_HOSTS = new Set([
  'www.prinspetfoods.nl',
  'prinspetfoods.nl',
  'www.smolke.nl',
  'smolke.nl',
  'www.yarrah.com',
  'yarrah.com'
])

const argumenten = new Map(
  process.argv
    .slice(2)
    .filter((ruw) => ruw.startsWith('--'))
    .map((ruw) => {
      const [naam, waarde] = ruw.replace(/^--/, '').split('=')
      return [naam, waarde ?? '']
    })
)
const filterMerk = (argumenten.get('merk') ?? '').toLowerCase()
const alleenBestanden = (argumenten.get('bestanden') ?? '')
  .split(',')
  .map((naam) => naam.trim())
  .filter(Boolean)
  .map((naam) => (naam.endsWith('.json') ? naam : `${naam}.json`))
const limiet = Number(argumenten.get('limiet') ?? 0) || 0
const pauze = Number(argumenten.get('pauze') ?? 0) || 1100
const parallel = Math.max(1, Math.min(12, Number(argumenten.get('parallel') ?? 6) || 6))

const ENTITEITEN = {
  amp: '&', lt: '<', gt: '>', quot: '"', apos: "'", nbsp: ' ', euro: '€', hellip: '…',
  ndash: '–', mdash: '—', lsquo: '‘', rsquo: '’', ldquo: '“', rdquo: '”', middot: '·',
  bull: '•', deg: '°', plusmn: '±', frac12: '½', frac14: '¼', frac34: '¾', times: '×',
  aacute: 'á', agrave: 'à', acirc: 'â', auml: 'ä', aring: 'å', atilde: 'ã', aelig: 'æ',
  ccedil: 'ç', eacute: 'é', egrave: 'è', ecirc: 'ê', euml: 'ë', iacute: 'í', igrave: 'ì',
  icirc: 'î', iuml: 'ï', ntilde: 'ñ', oacute: 'ó', ograve: 'ò', ocirc: 'ô', ouml: 'ö',
  oslash: 'ø', otilde: 'õ', ssharp: 'ß', szlig: 'ß', uacute: 'ú', ugrave: 'ù', ucirc: 'û', uuml: 'ü',
  yacute: 'ý', yuml: 'ÿ', oelig: 'œ', sup2: '²', sup3: '³', reset: ''
}

function decodeer(tekst) {
  return String(tekst).replace(/&(#\d+|#x[0-9a-f]+|[a-z][a-z0-9]*);/gi, (heel, code) => {
    const klein = code.toLowerCase()
    if (klein.startsWith('#x')) return String.fromCodePoint(parseInt(klein.slice(2), 16))
    if (klein.startsWith('#')) return String.fromCodePoint(Number(klein.slice(1)))
    return Object.prototype.hasOwnProperty.call(ENTITEITEN, klein) ? ENTITEITEN[klein] : heel
  })
}

function htmlNaarTekst(html) {
  return decodeer(
    String(html)
      .replace(/<(script|style|noscript|svg|template)[\s\S]*?<\/\1>/gi, ' ')
      .replace(/<!--[\s\S]*?-->/g, ' ')
      .replace(/<br\s*\/?>/gi, ' ')
      // Opmaak binnen een zin (vet, cursief, een link) mag geen spatie
      // achterlaten: "Samenstelling" staat op de bronpagina vet, maar hoort
      // gewoon tegen de dubbele punt te staan.
      .replace(/<\/(span|strong|em|b|i|a|sup|sub|small)>/gi, '')
      .replace(/<\/(p|div|li|td|th|dd|dt|h[1-6]|tr|section|article)>/gi, ' ')
      .replace(/<[^>]*>/g, ' ')
  )
}

// Vergelijken gebeurt ruim: alleen de woorden en leestekens tellen, niet de
// opmaak van de pagina. Zo maakt een tab, een enter of een spatie geen verschil.
function vergelijkbaar(tekst) {
  return decodeer(htmlNaarTekst(tekst))
    .normalize('NFC')
    .toLowerCase()
    .replace(/[’‘`´]/g, "'")
    .replace(/[“”]/g, '"')
    .replace(/[–—]/g, '-')
    .replace(/\s+/g, ' ')
    .replace(/\s+([,;:.])/g, '$1')
    .replace(/\(\s+/g, '(')
    .replace(/\s+\)/g, ')')
    .trim()
}

// Sommige fabrikanten zetten de voetnoten van een samengesteld etiket één keer
// onder de laatste smaak, terwijl ze voor elke smaak gelden. Dan staat de
// samenstelling zelf wel op de pagina, maar de volledige tekst met voetnoten
// niet. Deze kern laat alleen de voetnoten weg; de samenstelling blijft
// verplicht letterlijk aanwezig. Alleen als fallback gebruiken, nooit in plaats
// van de exacte controle.
function vergelijkbaarKern(tekst) {
  const zonderVoetnoten = String(tekst)
    .split(/\r?\n/)
    .filter((regel) => !/^\s*[\^*]/.test(regel))
    .join('\n')
  return vergelijkbaar(zonderVoetnoten)
    .replace(/\s+\*[^*]{0,240}$/, '')
    .trim()
}

// Sommige sites (Edgard & Cooper) zetten het etiket alleen in de gegevens die
// met de pagina meekomen, niet in de leesbare tekst. Dan is de tekst wél van de
// fabrikant, maar staat hij in een scriptblok. Deze tweede lezing haalt de
// scriptblokken er niet uit en zet ook \u-ontsnappingen om.
function vergelijkbaarMetPaginadata(html) {
  return decodeer(
    String(html)
      .replace(/<style[\s\S]*?<\/style>/gi, ' ')
      .replace(/<!--[\s\S]*?-->/g, ' ')
      .replace(/\\u([0-9a-f]{4})/gi, (heel, code) => String.fromCodePoint(parseInt(code, 16)))
      .replace(/\\n|\\r|\\t/g, ' ')
      .replace(/\\"/g, '"')
      .replace(/\\\//g, '/')
      .replace(/<[^>]*>/g, ' ')
  )
    .normalize('NFC')
    .toLowerCase()
    .replace(/[’‘`´]/g, "'")
    .replace(/[“”]/g, '"')
    .replace(/[–—]/g, '-')
    .replace(/\s+/g, ' ')
    .replace(/\s+([,;:.])/g, '$1')
    .replace(/\(\s+/g, '(')
    .replace(/\s+\)/g, ')')
    .trim()
}

function leesProducten() {
  if (!existsSync(IMPORT)) return { actief: [], overgeslagenBrowser: [] }
  const rijen = []
  const overgeslagenBrowser = []
  const explicietGevraagd = Boolean(filterMerk || alleenBestanden.length || INCLUSIEF_BROWSER_SITES)
  for (const bestand of readdirSync(IMPORT).filter((naam) => naam.endsWith('.json') && (!alleenBestanden.length || alleenBestanden.includes(naam))).sort()) {
    let inhoud
    try {
      inhoud = JSON.parse(readFileSync(join(IMPORT, bestand), 'utf8'))
    } catch (fout) {
      console.log(`Let op: ${bestand} kon niet worden gelezen (${fout.message}); overgeslagen.`)
      continue
    }
    for (const product of inhoud.producten ?? []) {
      if (!product.bronUrl || !product.etiketOrigineel) continue
      if (String(product.twijfel ?? '').trim()) continue
      if (filterMerk && !String(product.merk ?? '').toLowerCase().includes(filterMerk)) continue
      let host = ''
      try { host = new URL(product.bronUrl).host.toLowerCase() } catch { /* wordt later gemeld */ }
      if (!explicietGevraagd && BROWSER_ONLY_HOSTS.has(host)) {
        overgeslagenBrowser.push({ bestand, ...product })
        continue
      }
      rijen.push({ bestand, ...product })
    }
  }
  return {
    actief: limiet ? rijen.slice(0, limiet) : rijen,
    overgeslagenBrowser
  }
}

async function haalOp(url) {
  const signaal = AbortSignal.timeout ? AbortSignal.timeout(20000) : undefined
  const antwoord = await fetch(url, { headers: { 'user-agent': UA, accept: 'text/html,*/*' }, redirect: 'follow', signal: signaal })
  if (!antwoord.ok) return { status: antwoord.status }
  return { status: antwoord.status, tekst: await antwoord.text() }
}

const { actief: producten, overgeslagenBrowser } = leesProducten()
if (!producten.length) {
  console.log('Geen producten met een bronpagina gevonden in data/import; niets te controleren.')
  process.exit(0)
}

console.log(`${producten.length} product(en) om te controleren (${parallel} sites parallel, per site minstens ${pauze} ms pauze).`)
if (overgeslagenBrowser.length) {
  console.log(`${overgeslagenBrowser.length} product(en) van Cloudflare-geblokkeerde sites (Prins, Smølke, Yarrah) overgeslagen (gebruik --ook-browser-sites om ze mee te nemen).\n`)
} else {
  console.log('')
}

const uitkomsten = []
const laatsteVerzoekPerSite = new Map()
const geblokkeerd = new Set()

function meld(product, status, detail) {
  uitkomsten.push({ product, status, detail })
  console.log(`${status.padEnd(12)} ${product.merk} — ${product.naam}${detail ? ` (${detail})` : ''}`)
}

async function controleerProduct(product, host) {
  if (geblokkeerd.has(host)) {
    meld(product, 'onbereikbaar', `${host} blokkeert deze bezoeker`)
    return
  }
  const gezocht = vergelijkbaar(product.etiketOrigineel)
  const kern = vergelijkbaarKern(product.etiketOrigineel)
  if (!gezocht) {
    meld(product, 'onbereikbaar', 'geen brontekst in het importbestand')
    return
  }

  for (let poging = 1; poging <= 2; poging += 1) {
    const wachttijd = poging === 1 ? pauze : Math.max(pauze, 5000)
    const teWachten = wachttijd - (Date.now() - (laatsteVerzoekPerSite.get(host) ?? 0))
    if (teWachten > 0) await new Promise((klaar) => setTimeout(klaar, teWachten))
    laatsteVerzoekPerSite.set(host, Date.now())

    let uitkomst
    try {
      uitkomst = await haalOp(product.bronUrl)
    } catch (fout) {
      uitkomst = { status: 0, fout: String(fout).slice(0, 120) }
    }

    if (uitkomst.status === 403 || uitkomst.status === 429) {
      geblokkeerd.add(host)
      meld(product, 'onbereikbaar', `status ${uitkomst.status}`)
      break
    }
    if (uitkomst.status !== 200) {
      meld(product, 'onbereikbaar', uitkomst.fout ?? `status ${uitkomst.status}`)
      break
    }
    if (vergelijkbaar(uitkomst.tekst).includes(gezocht)) {
      meld(product, 'gelijk', poging > 1 ? 'bij de tweede poging' : '')
      break
    }
    if (vergelijkbaarMetPaginadata(uitkomst.tekst).includes(gezocht)) {
      meld(product, 'gelijk', 'staat in de gegevens van de pagina, niet in de leesbare tekst')
      break
    }
    if (kern.length >= 40 && vergelijkbaar(uitkomst.tekst).includes(kern)) {
      meld(product, 'gelijk', 'zelfde samenstelling; gedeelde voetnoten staan elders op de pagina')
      break
    }
    if (poging === 2) {
      meld(product, 'gewijzigd', 'deze tekst staat niet meer op de pagina')
    }
  }
}

// Groepeer per host zodat elke host zijn eigen wachtrij heeft en de beleefdheidspauze
// per site strikt wordt nageleefd, terwijl verschillende merken naast elkaar lopen.
const perHost = new Map()
for (const product of producten) {
  let host
  try {
    host = new URL(product.bronUrl).host.toLowerCase()
  } catch {
    meld(product, 'onbereikbaar', 'geen geldig adres')
    continue
  }
  if (!perHost.has(host)) perHost.set(host, [])
  perHost.get(host).push(product)
}

const hostWachtrijen = [...perHost.entries()]
let hostIndex = 0
async function verwerkHostWachtrij() {
  while (hostIndex < hostWachtrijen.length) {
    const [host, lijst] = hostWachtrijen[hostIndex++]
    for (const product of lijst) {
      await controleerProduct(product, host)
    }
  }
}

await Promise.all(Array.from({ length: Math.min(parallel, hostWachtrijen.length) }, () => verwerkHostWachtrij()))

// Synchroniseer de uitkomsten met Supabase als de omgevingsvariabelen aanwezig zijn.
async function schrijfNaarDatabase(resultaten) {
  if (GEEN_DB) return
  let env = {}
  const envPad = join(WORTEL, '.env.local')
  if (existsSync(envPad)) {
    for (const regel of readFileSync(envPad, 'utf8').split(/\r?\n/)) {
      const idx = regel.indexOf('=')
      if (idx > 0 && !regel.trim().startsWith('#')) {
        env[regel.slice(0, idx).trim()] = regel.slice(idx + 1).trim()
      }
    }
  }
  const url = (process.env.VITE_SUPABASE_URL || process.env.SUPABASE_URL || env.VITE_SUPABASE_URL || '').replace(/\/$/, '')
  const key = process.env.VITE_SUPABASE_PUBLISHABLE_KEY || process.env.SUPABASE_PUBLISHABLE_KEY || env.VITE_SUPABASE_PUBLISHABLE_KEY || ''
  const token = process.env.BRONCONTROLE_TOKEN || env.BRONCONTROLE_TOKEN || ''
  if (!url || !key || !token) {
    console.log('\nDatabase-sync overgeslagen (geen SUPABASE_URL, SUPABASE_PUBLISHABLE_KEY of BRONCONTROLE_TOKEN ingesteld).')
    return
  }

  const payload = resultaten.map(({ product, status, detail }) => ({
    merk: product.merk,
    naam: product.naam,
    bronUrl: product.bronUrl,
    status,
    detail: detail || null
  }))

  let okTotaal = 0
  let gewijzigdTotaal = 0
  for (let i = 0; i < payload.length; i += 200) {
    const deel = payload.slice(i, i + 200)
    try {
      const r = await fetch(`${url}/rest/v1/rpc/record_source_checks`, {
        method: 'POST',
        headers: {
          apikey: key,
          authorization: `Bearer ${key}`,
          'content-type': 'application/json'
        },
        body: JSON.stringify({ p_token: token, p_checks: deel })
      })
      if (!r.ok) {
        console.log(`\nLet op: database-sync gaf HTTP ${r.status}: ${await r.text()}`)
        return
      }
      const res = await r.json()
      okTotaal += Number(res?.ok_updated ?? 0)
      gewijzigdTotaal += Number(res?.changed_updated ?? 0)
    } catch (fout) {
      console.log(`\nLet op: database-sync mislukt (${fout.message}).`)
      return
    }
  }
  console.log(`\nDatabase bijgewerkt: ${okTotaal} product(en) op vandaag gecontroleerd gezet, ${gewijzigdTotaal} als gewijzigd gemarkeerd.`)
}

await schrijfNaarDatabase(uitkomsten)

const gelijk = uitkomsten.filter((r) => r.status === 'gelijk').length
const gewijzigd = uitkomsten.filter((r) => r.status === 'gewijzigd')
const onbereikbaar = uitkomsten.filter((r) => r.status === 'onbereikbaar')

const regels = [
  '# Broncontrole',
  '',
  `Uitgevoerd op ${new Date().toISOString().slice(0, 10)}: ${uitkomsten.length} product(en) gecontroleerd.`,
  '',
  'Deze controle kijkt of de bronpagina nog dezelfde etiket tekst toont als bij de import.',
  'Bij "gewijzigd" hoort een mens te kijken: misschien heeft de fabrikant het etiket aangepast,',
  'misschien laadt de pagina de tekst nu pas met JavaScript. De tekst op de site verandert niet vanzelf.',
  '',
  `- gelijk: ${gelijk}`,
  `- gewijzigd: ${gewijzigd.length}`,
  `- onbereikbaar: ${onbereikbaar.length}`,
  ''
]
for (const rij of uitkomsten.filter((r) => r.status !== 'gelijk')) {
  regels.push(`- **${rij.status}** — ${rij.product.merk} — ${rij.product.naam}: ${rij.detail}`)
  regels.push(`  bron: ${rij.product.bronUrl} (${rij.product.bestand})`)
}
if (gelijk) {
  regels.push('', 'Onveranderd:', '')
  for (const rij of uitkomsten.filter((r) => r.status === 'gelijk')) {
    regels.push(`- ${rij.product.merk} — ${rij.product.naam}`)
  }
}
writeFileSync(RAPPORT, `${regels.join('\n')}\n`)

console.log(`\n${gelijk} onveranderd, ${gewijzigd.length} gewijzigd, ${onbereikbaar.length} onbereikbaar.`)
console.log(`Rapport: ${RAPPORT.replace(WORTEL + '/', '')}`)
process.exit(gewijzigd.length || onbereikbaar.length ? 1 : 0)
