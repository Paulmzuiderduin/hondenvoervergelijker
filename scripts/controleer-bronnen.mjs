#!/usr/bin/env node
// Bronbewaking: kijkt of een bronpagina nog dezelfde etiket tekst toont als de
// tekst die uit die pagina is overgenomen.
//
// Waarom: de site belooft nergens een menselijke controle bij een automatisch
// overgenomen etiket, maar zolang de brontekst klopt, klopt de kaart wel. Past
// een fabrikant het etiket aan, dan staat er op de site nog de oude tekst met
// de datum van de import. Deze controle vindt dat verschil.
//
// Hoe: de overgenomen tekst uit data/import/*.json wordt vergeleken met de
// tekst van de bronpagina (HTML-tags gestript, entiteiten omgezet, witruimte
// samengevat, kleine letters). De tekst uit het importbestand is de
// brontekst, dus in de taal van de fabrikant.
//
// Uitkomsten:
//   gelijk        de brontekst staat nog op de pagina
//   gewijzigd     niet meer gevonden; een mens moet kijken of het etiket of de
//                 pagina is veranderd (of dat de pagina nu via JavaScript laadt)
//   onbereikbaar  de pagina gaf een fout of een blokkade
//
// Elke pagina wordt twee keer geprobeerd (met een paar seconden ertussen); pas
// als de tekst twee keer ontbreekt, heet het "gewijzigd". Een site die een
// verzoek even afwijst met een lege pagina geeft dus geen valse melding.
//
// Gebruik:
//   node scripts/controleer-bronnen.mjs
//   node scripts/controleer-bronnen.mjs --merk=Trovet --limiet=5
//
// Het script is bewust langzaam: per site hooguit één verzoek per seconde, en
// het stopt met een site zodra die 403 of 429 antwoordt.

import { existsSync, readFileSync, readdirSync, writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'

const WORTEL = dirname(dirname(fileURLToPath(import.meta.url)))
const GEBRUIK_UITBREIDING = process.argv.includes('--uitbreiding')
const IMPORT = GEBRUIK_UITBREIDING ? join(WORTEL, 'data', 'import', 'uitbreiding') : join(WORTEL, 'data', 'import')
const RAPPORT = join(IMPORT, 'broncontrole.md')
const UA = 'HondenvoervergelijkerBot/0.1 (contact: paulzuiderduin@gmail.com)'

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

const ENTITEITEN = {
  amp: '&', lt: '<', gt: '>', quot: '"', apos: "'", nbsp: ' ', euro: '€', hellip: '…',
  ndash: '–', mdash: '—', lsquo: '‘', rsquo: '’', ldquo: '“', rdquo: '”', middot: '·',
  bull: '•', deg: '°', plusmn: '±', frac12: '½', frac14: '¼', frac34: '¾', times: '×',
  aacute: 'á', agrave: 'à', acirc: 'â', auml: 'ä', aring: 'å', atilde: 'ã', aelig: 'æ',
  ccedil: 'ç', eacute: 'é', egrave: 'è', ecirc: 'ê', euml: 'ë', iacute: 'í', igrave: 'ì',
  icirc: 'î', iuml: 'ï', ntilde: 'ñ', oacute: 'ó', ograve: 'ò', ocirc: 'ô', ouml: 'ö',
  oslash: 'ø', otilde: 'õ', ssharp: 'ß', uacute: 'ú', ugrave: 'ù', ucirc: 'û', uuml: 'ü',
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
  if (!existsSync(IMPORT)) return []
  const rijen = []
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
      rijen.push({ bestand, ...product })
    }
  }
  return limiet ? rijen.slice(0, limiet) : rijen
}

async function haalOp(url) {
  const antwoord = await fetch(url, { headers: { 'user-agent': UA, accept: 'text/html,*/*' }, redirect: 'follow' })
  if (!antwoord.ok) return { status: antwoord.status }
  return { status: antwoord.status, tekst: await antwoord.text() }
}

const producten = leesProducten()
if (!producten.length) {
  console.log('Geen producten met een bronpagina gevonden in data/import; niets te controleren.')
  process.exit(0)
}

console.log(`${producten.length} product(en) om te controleren, per site hooguit één verzoek per ${pauze} ms.\n`)

const uitkomsten = []
const laatsteVerzoekPerSite = new Map()
const geblokkeerd = new Set()

function meld(product, status, detail) {
  uitkomsten.push({ product, status, detail })
  console.log(`${status.padEnd(12)} ${product.merk} — ${product.naam}${detail ? ` (${detail})` : ''}`)
}

for (const product of producten) {
  let host
  try {
    host = new URL(product.bronUrl).host
  } catch {
    meld(product, 'onbereikbaar', 'geen geldig adres')
    continue
  }
  if (geblokkeerd.has(host)) {
    meld(product, 'onbereikbaar', `${host} blokkeert deze bezoeker`)
    continue
  }
  const gezocht = vergelijkbaar(product.etiketOrigineel)
  if (!gezocht) {
    meld(product, 'onbereikbaar', 'geen brontekst in het importbestand')
    continue
  }

  // Twee pogingen: een site kan een verzoek tijdelijk beantwoorden met een
  // pagina zonder etiket (drukte, een cookiemelding). Pas als het twee keer
  // misgaat, is er iets om naar te kijken.
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
    if (poging === 2) {
      meld(product, 'gewijzigd', 'deze tekst staat niet meer op de pagina')
    }
  }
}

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
