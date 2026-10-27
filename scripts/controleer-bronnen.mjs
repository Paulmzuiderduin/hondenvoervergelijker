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
// Sites die geautomatiseerde verzoeken blokkeren, worden standaard overgeslagen;
// daarvoor is scripts/controleer-bronnen-browser.mjs.

import { existsSync, readFileSync, readdirSync, writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'
import {
  BROWSER_ONLY_HOSTS,
  UA,
  vergelijkbaar,
  vergelijkbaarKern,
  vergelijkbaarMetPaginadata
} from './lib/bronvergelijking.mjs'
import { schrijfNaarDatabase } from './lib/bron-sync.mjs'

const WORTEL = dirname(dirname(fileURLToPath(import.meta.url)))
const GEBRUIK_UITBREIDING = process.argv.includes('--uitbreiding')
const GEEN_DB = process.argv.includes('--geen-db')
const INCLUSIEF_BROWSER_SITES = process.argv.includes('--ook-browser-sites')
const IMPORT = GEBRUIK_UITBREIDING ? join(WORTEL, 'data', 'import', 'uitbreiding') : join(WORTEL, 'data', 'import')
const RAPPORT = join(IMPORT, 'broncontrole.md')

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
  console.log(`${overgeslagenBrowser.length} product(en) van geblokkeerde sites overgeslagen; die controleert de browsercontrole.\n`)
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

// Groepeer per host zodat elke host zijn eigen wachtrij heeft en de
// beleefdheidspauze per site strikt wordt nageleefd.
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

const hostWachtrijen = [...perHost.entries()].sort((a, b) => b[1].length - a[1].length)
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

// Vangnet tegen vals alarm: als vrijwel alle producten van één site "gewijzigd"
// lijken, is dat geen etiketwijziging maar vrijwel zeker een botbeveiliging die
// een andere pagina teruggeeft. Zulke uitkomsten worden "onbereikbaar" (alleen
// een aantekening, geen statuswijziging op de site).
const perHostUitkomsten = new Map()
for (const rij of uitkomsten) {
  let host = ''
  try { host = new URL(rij.product.bronUrl).host.toLowerCase() } catch { /* al gemeld */ }
  if (!host) continue
  if (!perHostUitkomsten.has(host)) perHostUitkomsten.set(host, [])
  perHostUitkomsten.get(host).push(rij)
}
for (const [host, rijen] of perHostUitkomsten) {
  const gewijzigdOpHost = rijen.filter((rij) => rij.status === 'gewijzigd')
  if (rijen.length < 5 || gewijzigdOpHost.length / rijen.length <= 0.7) continue
  for (const rij of gewijzigdOpHost) {
    rij.status = 'onbereikbaar'
    rij.detail = 'de site gaf bij vrijwel alle producten een afwijkende pagina; waarschijnlijk botbeveiliging in plaats van een etiketwijziging'
  }
  console.log(`\nLet op: ${host} gaf ${gewijzigdOpHost.length} van ${rijen.length} keer een afwijkende pagina. Behandeld als onbereikbaar, niet als gewijzigd.`)
}

await schrijfNaarDatabase(uitkomsten, { geenDb: GEEN_DB })

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
