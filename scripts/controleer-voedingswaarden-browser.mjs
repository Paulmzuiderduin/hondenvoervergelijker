#!/usr/bin/env node
// Voedingsbroncontrole voor sites die gewone fetch-verzoeken blokkeren of
// vervormen (Prins, Smølke, Yarrah, Edgard & Cooper, WOOOF, Terra Canis, Kivo).
// De gewone controle slaat die hosts over; deze controle opent ze in een echte
// Chrome en vergelijkt de getallen uit de opgeslagen analyse met de pagina.
//
// Gebruik:
//   node scripts/controleer-voedingswaarden-browser.mjs
//   node scripts/controleer-voedingswaarden-browser.mjs --merk=Prins --limiet=3
//   node scripts/controleer-voedingswaarden-browser.mjs --headful
//
// De controle wijzigt niets in de database. Een verschil is een signaal voor
// een mens, geen automatische correctie.

import { existsSync, readFileSync, readdirSync, writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'
import { chromium } from 'playwright-core'
import { BROWSER_ONLY_HOSTS, vergelijkbaar, vergelijkbaarMetPaginadata } from './lib/bronvergelijking.mjs'

const WORTEL = dirname(dirname(fileURLToPath(import.meta.url)))
const IMPORT = join(WORTEL, 'data', 'import', 'voedingswaarden')
const RAPPORT = join(IMPORT, 'broncontrole-browser.md')
const HEADFUL = process.argv.includes('--headful')
const GEEN_FOUT = process.argv.includes('--geen-fout')

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
const limiet = Number(argumenten.get('limiet') ?? 0) || 0
const pauze = Number(argumenten.get('pauze') ?? 2000) || 0
const parallel = Math.max(1, Math.min(4, Number(argumenten.get('parallel') ?? 3) || 3))
const CHALLENGE = /even geduld|beveiliging wordt geverifieerd|checking your browser|verify you are human|cf-challenge|attention required/i

function host(url) {
  try { return new URL(url).hostname.replace(/^www\./, '').toLowerCase() } catch { return '' }
}

function isBrowserOnly(hostnaam) {
  return BROWSER_ONLY_HOSTS.has(hostnaam) || BROWSER_ONLY_HOSTS.has(`www.${hostnaam}`)
}

function markdownCel(waarde) {
  return String(waarde ?? '').replace(/\|/g, '\\|').replace(/\r?\n/g, ' ').slice(0, 220)
}

function getallen(tekst) {
  return [...new Set(
    [...String(tekst).matchAll(/\d+(?:[.,]\d+)?/g)]
      .map((match) => Number(match[0].replace(',', '.')))
      .filter((waarde) => Number.isFinite(waarde))
  )]
}

function vergelijkAnalyse(pagina, bronTekst) {
  const doel = getallen(bronTekst)
  if (!doel.length) {
    return { gelijk: vergelijkbaar(pagina).includes(vergelijkbaar(bronTekst)), gevonden: 0, totaal: 0 }
  }
  const paginanummers = getallen(pagina)
  const gevonden = doel.filter((waarde) => paginanummers.some((kandidaat) => Math.abs(kandidaat - waarde) < 0.011))
  return { gelijk: gevonden.length / doel.length >= 0.8, gevonden: gevonden.length, totaal: doel.length }
}

function leesProducten() {
  const rijen = []
  if (!existsSync(IMPORT)) return rijen
  for (const bestand of readdirSync(IMPORT).filter((naam) => naam.endsWith('.json')).sort()) {
    let inhoud
    try {
      inhoud = JSON.parse(readFileSync(join(IMPORT, bestand), 'utf8'))
    } catch (fout) {
      console.log(`Let op: ${bestand} kon niet worden gelezen (${fout.message}); overgeslagen.`)
      continue
    }
    for (const product of inhoud.producten ?? []) {
      if (!product.bronUrl || !String(product.bronTekst ?? '').trim()) continue
      if (filterMerk && !String(product.merk ?? '').toLowerCase().includes(filterMerk)) continue
      if (!isBrowserOnly(host(product.bronUrl))) continue
      rijen.push({ bestand, ...product })
    }
  }
  return limiet > 0 ? rijen.slice(0, limiet) : rijen
}

const producten = leesProducten()
if (!producten.length) {
  console.log('Geen voedingsproducten van geblokkeerde sites gevonden; niets te controleren.')
  process.exit(0)
}

console.log(`${producten.length} voedingsproduct(en) van geblokkeerde sites om in een browser te controleren.`)

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

async function haalPagina(page, url) {
  const antwoord = await page.goto(url, { waitUntil: 'domcontentloaded', timeout: 45000 })
  await new Promise((klaar) => setTimeout(klaar, 1500))
  await page.waitForFunction(() => (document.body?.innerText ?? '').trim().length > 200, { timeout: 8000 }).catch(() => {})
  return {
    status: antwoord?.status() ?? 0,
    html: await page.content(),
    tekst: await page.evaluate(() => document.body?.innerText ?? '')
  }
}

async function controleerProduct(page, product, hostnaam) {
  if (geblokkeerd.has(hostnaam)) {
    meld(product, 'onbereikbaar', `${hostnaam} toont een botbeveiliging`)
    return
  }
  for (let poging = 1; poging <= 2; poging += 1) {
    const wachttijd = poging === 1 ? pauze : Math.max(pauze, 5000)
    const teWachten = wachttijd - (Date.now() - (laatsteVerzoekPerSite.get(hostnaam) ?? 0))
    if (teWachten > 0) await new Promise((klaar) => setTimeout(klaar, teWachten))
    laatsteVerzoekPerSite.set(hostnaam, Date.now())

    let pagina
    try {
      pagina = await haalPagina(page, product.bronUrl)
    } catch (fout) {
      meld(product, 'onbereikbaar', String(fout.message ?? fout).slice(0, 120))
      break
    }

    if (pagina.status >= 400) {
      if (poging === 1) {
        await new Promise((klaar) => setTimeout(klaar, 5000))
        continue
      }
      meld(product, 'onbereikbaar', `HTTP ${pagina.status}`)
      break
    }
    if (CHALLENGE.test(pagina.tekst.slice(0, 800)) || CHALLENGE.test(await page.title())) {
      geblokkeerd.add(hostnaam)
      meld(product, 'onbereikbaar', `${hostnaam} toont een botbeveiliging`)
      break
    }

    // De zichtbare tekst is leidend; de paginadata vangt analysewaarden op die
    // in een JSON-blok of verborgen accordeon staan.
    const vergelijking = vergelijkAnalyse(`${pagina.tekst} ${vergelijkbaarMetPaginadata(pagina.html)}`, product.bronTekst)
    if (vergelijking.gelijk) {
      meld(product, 'gelijk', poging > 1 ? 'bij de tweede poging' : '')
      break
    }
    if (poging === 2) {
      meld(product, 'gewijzigd', `de opgeslagen analyse is niet teruggevonden: ${vergelijking.gevonden} van ${vergelijking.totaal} getallen gevonden.`)
    }
  }
}

try {
  const perHost = new Map()
  for (const product of producten) {
    const hostnaam = host(product.bronUrl)
    if (!perHost.has(hostnaam)) perHost.set(hostnaam, [])
    perHost.get(hostnaam).push(product)
  }
  const wachtrijen = [...perHost.entries()].sort((a, b) => b[1].length - a[1].length)
  let index = 0
  async function werkWachtrij() {
    while (index < wachtrijen.length) {
      const [hostnaam, lijst] = wachtrijen[index++]
      for (const product of lijst) {
        // Per product een verse context: anders zet een site als Prins na de
        // eerste pagina een bot-cookie en krijgt de rest 403. Een nieuwe
        // context heeft die cookie niet en gedraagt zich als een nieuwe bezoeker.
        const context = await browser.newContext({
          locale: 'nl-NL',
          userAgent: `Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/${browser.version()} Safari/537.36`,
          viewport: { width: 1440, height: 900 }
        })
        const page = await context.newPage()
        try {
          await controleerProduct(page, product, hostnaam)
        } finally {
          await context.close().catch(() => {})
        }
      }
    }
  }
  await Promise.all(Array.from({ length: Math.min(parallel, wachtrijen.length) }, () => werkWachtrij()))
} finally {
  await browser.close().catch(() => {})
}

// Als een hele site afwijkend is, is dat vrijwel zeker een botpagina. Behandel
// die als onbereikbaar; een mens kijkt daarna naar de site.
const perHostUitkomsten = new Map()
for (const rij of uitkomsten) {
  const hostnaam = host(rij.product.bronUrl)
  if (!perHostUitkomsten.has(hostnaam)) perHostUitkomsten.set(hostnaam, [])
  perHostUitkomsten.get(hostnaam).push(rij)
}
for (const [hostnaam, rijen] of perHostUitkomsten) {
  const verdacht = rijen.filter((rij) => rij.status === 'gewijzigd' || rij.status === 'onbereikbaar')
  if (rijen.length < 5 || verdacht.length / rijen.length <= 0.7) continue
  for (const rij of rijen.filter((rij) => rij.status === 'gewijzigd')) {
    rij.status = 'onbereikbaar'
    rij.detail = 'de site gaf bij vrijwel alle producten geen betrouwbare pagina; waarschijnlijk botbeveiliging'
  }
  console.log(`\nLet op: ${hostnaam} gaf ${verdacht.length} van ${rijen.length} keer geen betrouwbare pagina. Afwijkingen zijn als onbereikbaar behandeld.`)
}

const gelijk = uitkomsten.filter((rij) => rij.status === 'gelijk').length
const gewijzigd = uitkomsten.filter((rij) => rij.status === 'gewijzigd')
const onbereikbaar = uitkomsten.filter((rij) => rij.status === 'onbereikbaar')
const regels = [
  '# Voedingsbroncontrole in een echte browser',
  '',
  `Datum: ${new Date().toISOString().slice(0, 10)}`,
  `Producten gecontroleerd: ${uitkomsten.length}`,
  `Gelijk: ${gelijk}`,
  `Gewijzigd: ${gewijzigd.length}`,
  `Onbereikbaar: ${onbereikbaar.length}`,
  '',
  'Deze controle gebruikt Chrome voor sites die gewone verzoeken blokkeren.',
  'Een verschil is een signaal voor een mens; de site past niets automatisch aan.',
  ''
]
for (const [titel, rijen] of [['Gewijzigd', gewijzigd], ['Onbereikbaar', onbereikbaar]]) {
  if (!rijen.length) continue
  regels.push(`## ${titel}`, '', '| Merk | Product | Bron | Detail |', '|---|---|---|---|')
  for (const rij of rijen) regels.push(`| ${markdownCel(rij.product.merk)} | ${markdownCel(rij.product.naam)} | ${markdownCel(host(rij.product.bronUrl))} | ${markdownCel(rij.detail)} |`)
  regels.push('')
}
if (!gewijzigd.length && !onbereikbaar.length) regels.push('Geen wijzigingen of onbereikbare bronnen gevonden.', '')
writeFileSync(RAPPORT, `${regels.join('\n')}\n`)

console.log(`\nRapport: ${RAPPORT}`)
console.log(`Gelijk: ${gelijk} · gewijzigd: ${gewijzigd.length} · onbereikbaar: ${onbereikbaar.length}`)
if (!GEEN_FOUT && gewijzigd.length) process.exit(1)
