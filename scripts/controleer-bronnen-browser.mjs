#!/usr/bin/env node
// Bronbewaking voor sites die gewone fetch-verzoeken blokkeren of vervormen
// (Prins, Smølke, Yarrah, Edgard & Cooper, WOOOF). Deze controle gebruikt een
// echte Chrome via Playwright, wacht tot de pagina is opgebouwd en vergelijkt
// daarna dezelfde etiket tekst als de gewone controle.
//
// Waarom een apart script: de wekelijkse fetch-controle moet snel en licht
// blijven. Deze controle draait erna en alleen voor de geblokkeerde hosts.
//
// Gebruik:
//   npm run check:bronnen:browser
//   npm run check:bronnen:browser -- --merk=Prins --limiet=3 --geen-db
//   npm run check:bronnen:browser -- --headful        (lokaal meekijken)
//
// Techniek: playwright-core met de lokaal geïnstalleerde Chrome. Er wordt geen
// browser gedownload en er is geen account of betaalde dienst nodig.

import { existsSync, readFileSync, readdirSync, writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'
import { chromium } from 'playwright-core'
import {
  BROWSER_ONLY_HOSTS,
  vergelijkbaar,
  vergelijkbaarKern,
  vergelijkbaarMetPaginadata
} from './lib/bronvergelijking.mjs'
import { schrijfNaarDatabase } from './lib/bron-sync.mjs'

const WORTEL = dirname(dirname(fileURLToPath(import.meta.url)))
const IMPORT = join(WORTEL, 'data', 'import')
const RAPPORT = join(IMPORT, 'broncontrole-browser.md')
const HEADFUL = process.argv.includes('--headful')
const GEEN_DB = process.argv.includes('--geen-db')

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
const pauze = Number(argumenten.get('pauze') ?? 0) || 2000
const parallel = Math.max(1, Math.min(4, Number(argumenten.get('parallel') ?? 3) || 3))

// Eenvoudige robots.txt-controle: alleen expliciete Disallow-regels voor
// User-agent: * tellen. Mislukt het ophalen, dan gaan we door (de site blokkeert
// het verzoek dan zelf als dat de bedoeling is).
const robotsCache = new Map()
async function robotsToegestaan(url) {
  const adres = new URL(url)
  if (!robotsCache.has(adres.origin)) {
    robotsCache.set(adres.origin, (async () => {
      try {
        const antwoord = await fetch(`${adres.origin}/robots.txt`, { headers: { accept: 'text/plain' } })
        if (!antwoord.ok) return []
        return (await antwoord.text())
          .split(/\r?\n/)
          .map((regel) => regel.replace(/#.*$/, '').trim())
          .filter(Boolean)
      } catch {
        return []
      }
    })())
  }
  const regels = await robotsCache.get(adres.origin)
  let actief = false
  const verboden = []
  let allowAlles = false
  for (const regel of regels) {
    const [veld, ...rest] = regel.split(':')
    const waarde = rest.join(':').trim()
    const sleutel = veld.trim().toLowerCase()
    if (sleutel === 'user-agent') actief = waarde === '*'
    else if (actief && sleutel === 'disallow') {
      if (waarde === '') allowAlles = true
      else verboden.push(waarde)
    }
  }
  if (allowAlles) return true
  const pad = adres.pathname
  return !verboden.some((regel) => pad.startsWith(regel))
}

function leesProducten() {
  const rijen = []
  const handmatig = []
  if (!existsSync(IMPORT)) return { rijen, handmatig }
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
      if (String(product.controle ?? '').toLowerCase() === 'handmatig') {
        handmatig.push({ bestand, ...product })
        continue
      }
      if (filterMerk && !String(product.merk ?? '').toLowerCase().includes(filterMerk)) continue
      let host = ''
      try { host = new URL(product.bronUrl).host.toLowerCase() } catch { continue }
      if (!BROWSER_ONLY_HOSTS.has(host)) continue
      rijen.push({ bestand, ...product })
    }
  }
  return { rijen: limiet ? rijen.slice(0, limiet) : rijen, handmatig }
}

const { rijen: producten, handmatig } = leesProducten()
if (!producten.length) {
  console.log('Geen producten van geblokkeerde sites gevonden; niets te controleren.')
  process.exit(0)
}

console.log(`${producten.length} product(en) van geblokkeerde sites om in een browser te controleren.`)
if (handmatig.length) console.log(`${handmatig.length} product(en) staan op handmatige controle en zijn overgeslagen.`)

let browser
try {
  browser = await chromium.launch(
    HEADFUL
      ? { channel: 'chrome', headless: false }
      : { channel: 'chrome', headless: true }
  )
} catch (fout) {
  console.log(`Chrome kon niet worden gestart (${fout.message}). Installeer Google Chrome of zet CHROME_PATH.`)
  process.exit(0)
}

const uitkomsten = []
const laatsteVerzoekPerSite = new Map()
const geblokkeerd = new Set()

function meld(product, status, detail) {
  uitkomsten.push({ product, status, detail })
  console.log(`${status.padEnd(12)} ${product.merk} — ${product.naam}${detail ? ` (${detail})` : ''}`)
}

const CHALLENGE = /even geduld|beveiliging wordt geverifieerd|checking your browser|verify you are human|cf-challenge|attention required/i

async function haalPagina(page, url) {
  await page.goto(url, { waitUntil: 'domcontentloaded', timeout: 45000 })
  await new Promise((klaar) => setTimeout(klaar, 1500))
  return {
    html: await page.content(),
    tekst: await page.evaluate(() => document.body?.innerText ?? '')
  }
}

async function controleerProduct(page, product, host) {
  if (geblokkeerd.has(host)) {
    meld(product, 'onbereikbaar', `${host} toont een botbeveiliging`)
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

    let pagina
    try {
      pagina = await haalPagina(page, product.bronUrl)
    } catch (fout) {
      meld(product, 'onbereikbaar', String(fout.message ?? fout).slice(0, 120))
      break
    }

    const { html, tekst } = pagina
    // Cloudflare en vergelijkbare diensten tonen een tussenpagina. Dat is geen
    // etiketwijziging: de hele site wordt overgeslagen tot een mens kijkt.
    if (CHALLENGE.test(tekst.slice(0, 800)) || CHALLENGE.test(await page.title())) {
      geblokkeerd.add(host)
      meld(product, 'onbereikbaar', `${host} toont een botbeveiliging`)
      break
    }

    const kandidaten = [html, tekst]
    if (kandidaten.some((bron) => vergelijkbaar(bron).includes(gezocht))) {
      meld(product, 'gelijk', poging > 1 ? 'bij de tweede poging' : '')
      break
    }
    if (kandidaten.some((bron) => vergelijkbaarMetPaginadata(bron).includes(gezocht))) {
      meld(product, 'gelijk', 'staat in de gegevens van de pagina')
      break
    }
    if (kern.length >= 40 && kandidaten.some((bron) => vergelijkbaar(bron).includes(kern))) {
      meld(product, 'gelijk', 'zelfde samenstelling; gedeelde voetnoten staan elders op de pagina')
      break
    }
    if (poging === 2) {
      meld(product, 'gewijzigd', 'deze tekst staat niet meer op de pagina')
    }
  }
}

const perHost = new Map()
for (const product of producten) {
  const host = new URL(product.bronUrl).host.toLowerCase()
  if (!perHost.has(host)) perHost.set(host, [])
  perHost.get(host).push(product)
}

try {
  const wachtrijen = [...perHost.entries()].sort((a, b) => b[1].length - a[1].length)
  let index = 0
  async function werkWachtrij() {
    const page = await browser.newPage({ locale: 'nl-NL' })
    try {
      while (index < wachtrijen.length) {
        const [host, lijst] = wachtrijen[index++]
        for (const product of lijst) {
          if (!(await robotsToegestaan(product.bronUrl))) {
            meld(product, 'onbereikbaar', 'robots.txt staat geautomatiseerd bezoek niet toe')
            continue
          }
          await controleerProduct(page, product, host)
        }
      }
    } finally {
      await page.close().catch(() => {})
    }
  }
  await Promise.all(Array.from({ length: Math.min(parallel, wachtrijen.length) }, () => werkWachtrij()))
} finally {
  await browser.close().catch(() => {})
}

// Zelfde vangnet als de fetch-controle: een hele site die ineens "gewijzigd"
// lijkt, is meestal een botcontrole en geen etiketwijziging.
const perHostUitkomsten = new Map()
for (const rij of uitkomsten) {
  const host = new URL(rij.product.bronUrl).host.toLowerCase()
  if (!perHostUitkomsten.has(host)) perHostUitkomsten.set(host, [])
  perHostUitkomsten.get(host).push(rij)
}
for (const [host, rijen] of perHostUitkomsten) {
  const gewijzigd = rijen.filter((rij) => rij.status === 'gewijzigd')
  if (rijen.length < 5 || gewijzigd.length / rijen.length <= 0.7) continue
  for (const rij of gewijzigd) {
    rij.status = 'onbereikbaar'
    rij.detail = 'de site gaf bij vrijwel alle producten een afwijkende pagina; waarschijnlijk botbeveiliging'
  }
  console.log(`\nLet op: ${host} gaf ${gewijzigd.length} van ${rijen.length} keer een afwijkende pagina. Behandeld als onbereikbaar.`)
}

await schrijfNaarDatabase(uitkomsten, { geenDb: GEEN_DB })

const gelijk = uitkomsten.filter((r) => r.status === 'gelijk').length
const gewijzigd = uitkomsten.filter((r) => r.status === 'gewijzigd')
const onbereikbaar = uitkomsten.filter((r) => r.status === 'onbereikbaar')

const regels = [
  '# Broncontrole in een echte browser',
  '',
  `Uitgevoerd op ${new Date().toISOString().slice(0, 10)}: ${uitkomsten.length} product(en) gecontroleerd.`,
  '',
  'Deze controle gebruikt Chrome voor sites die gewone verzoeken blokkeren.',
  'De tekst op de site verandert nooit vanzelf; bij "gewijzigd" hoort een mens te kijken.',
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
writeFileSync(RAPPORT, `${regels.join('\n')}\n`)

console.log(`\n${gelijk} onveranderd, ${gewijzigd.length} gewijzigd, ${onbereikbaar.length} onbereikbaar.`)
console.log(`Rapport: ${RAPPORT.replace(WORTEL + '/', '')}`)
// Alleen een echte etiketwijziging is een reden om de run te laten falen.
// Onbereikbare sites (botbeveiliging) staan in het rapport, maar zijn geen alarm.
process.exit(gewijzigd.length ? 1 : 0)
