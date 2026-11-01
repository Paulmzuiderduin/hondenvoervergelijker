#!/usr/bin/env node
// Controleert of de voedingswaarde-tekst die bij de import is vastgelegd nog
// op de bronpagina staat. Dit is de voedingsvariant van de bestaande
// broncontrole voor ingrediënten. De controle wijzigt niets in de database:
// een mens beoordeelt een verschil en past daarna de import of het product aan.
//
// Gebruik:
//   node scripts/controleer-voedingswaarden-bronnen.mjs
//   node scripts/controleer-voedingswaarden-bronnen.mjs --merk=Jarco --limiet=10
//   node scripts/controleer-voedingswaarden-bronnen.mjs --parallel=6 --pauze=800
//   node scripts/controleer-voedingswaarden-bronnen.mjs --geen-fout

import { existsSync, readFileSync, readdirSync, writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'
import { BROWSER_ONLY_HOSTS, UA, vergelijkbaar, vergelijkbaarMetPaginadata } from './lib/bronvergelijking.mjs'

const WORTEL = dirname(dirname(fileURLToPath(import.meta.url)))
const IMPORT = join(WORTEL, 'data', 'import', 'voedingswaarden')
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
const limiet = Number(argumenten.get('limiet') ?? 0) || 0
const pauze = Number(argumenten.get('pauze') ?? 800) || 0
const hostPauze = Number(argumenten.get('host-pauze') ?? 1200) || 0
const parallel = Math.max(1, Math.min(12, Number(argumenten.get('parallel') ?? 6) || 6))
const geenFout = process.argv.includes('--geen-fout')
const slaap = (ms) => new Promise((klaar) => setTimeout(klaar, ms))

function leesProducten() {
  if (!existsSync(IMPORT)) return []
  const gezien = new Set()
  const producten = []
  for (const bestand of readdirSync(IMPORT).filter((naam) => naam.endsWith('.json')).sort()) {
    let inhoud
    try {
      inhoud = JSON.parse(readFileSync(join(IMPORT, bestand), 'utf8'))
    } catch {
      continue
    }
    if (!Array.isArray(inhoud.producten)) continue
    for (const product of inhoud.producten) {
      if (!product.bronUrl || !product.bronTekst) continue
      if (filterMerk && !String(product.merk ?? '').toLowerCase().includes(filterMerk)) continue
      const sleutel = `${product.merk}|${product.naam}|${product.bronUrl}`
      if (gezien.has(sleutel)) continue
      gezien.add(sleutel)
      producten.push({ ...product, bestand })
    }
  }
  return limiet > 0 ? producten.slice(0, limiet) : producten
}

function host(url) {
  try { return new URL(url).hostname.replace(/^www\./, '') } catch { return '' }
}

function markdownCel(waarde) {
  return String(waarde ?? '').replace(/\|/g, '\\|').replace(/\r?\n/g, ' ').slice(0, 220)
}

function getallen(tekst) {
  const waarden = [...String(tekst).matchAll(/\d+(?:[.,]\d+)?/g)]
    .map((match) => Number(match[0].replace(',', '.')))
    .filter((waarde) => Number.isFinite(waarde))
  return [...new Set(waarden)]
}

// De brontekst is vaak een zin uit een grotere tabel. De pagina kan dezelfde
// getallen in een andere volgorde of met andere witruimte tonen. Daarom kijken
// we naar de getallen, niet naar de exacte zin. Zo blijven layoutwijzigingen
// stil en valt een echt gewijzigde analyse wel op.
function vergelijkAnalyse(pagina, bronTekst) {
  const doel = getallen(bronTekst)
  if (!doel.length) return { gelijk: pagina.includes(vergelijkbaar(bronTekst)), gevonden: 0, totaal: 0 }
  const paginanummers = getallen(pagina)
  const gevonden = doel.filter((waarde) => paginanummers.some((kandidaat) => Math.abs(kandidaat - waarde) < 0.011))
  return { gelijk: gevonden.length / doel.length >= 0.8, gevonden: gevonden.length, totaal: doel.length }
}

// Sites die veel producten hebben, krijgen anders six verzoeken tegelijk. Dat
// levert 429's en time-outs op die niets over de pagina zeggen. Reserveer per
// host een startmoment en probeer het bij een tijdelijke fout opnieuw.
const laatsteStartPerHost = new Map()
async function wachtVoorHost(hostnaam) {
  if (!hostPauze) return
  const nu = Date.now()
  const volgende = Math.max(nu, (laatsteStartPerHost.get(hostnaam) ?? 0) + hostPauze)
  laatsteStartPerHost.set(hostnaam, volgende)
  if (volgende > nu) await slaap(volgende - nu)
}

async function haalBron(url) {
  let laatsteFout = null
  for (let poging = 1; poging <= 3; poging += 1) {
    try {
      const antwoord = await fetch(url, {
        headers: { 'user-agent': UA, accept: 'text/html,application/xhtml+xml' },
        redirect: 'follow',
        signal: AbortSignal.timeout(20000)
      })
      if (antwoord.ok) return antwoord
      laatsteFout = new Error(`HTTP ${antwoord.status}`)
      if (![429, 500, 502, 503, 504].includes(antwoord.status) || poging === 3) return antwoord
      const retryAfter = Number(antwoord.headers.get('retry-after'))
      await slaap(Number.isFinite(retryAfter) && retryAfter > 0 ? Math.min(retryAfter * 1000, 15000) : 1500 * poging)
    } catch (fout) {
      laatsteFout = fout
      if (poging === 3) throw fout
      await slaap(1500 * poging)
    }
  }
  throw laatsteFout
}

async function controleer(product) {
  const hostnaam = host(product.bronUrl)
  if (BROWSER_ONLY_HOSTS.has(hostnaam) || BROWSER_ONLY_HOSTS.has(`www.${hostnaam}`)) {
    return { ...product, status: 'browser', detail: 'Alleen via een echte browser te controleren.' }
  }
  try {
    await wachtVoorHost(hostnaam)
    const antwoord = await haalBron(product.bronUrl)
    if (!antwoord.ok) return { ...product, status: 'onbereikbaar', detail: `HTTP ${antwoord.status}` }
    const html = await antwoord.text()
    if (!String(product.bronTekst).trim()) return { ...product, status: 'geen-tekst', detail: 'Geen bruikbare brontekst in het importbestand.' }
    // Eerst de gewone HTML-tekst. Sommige winkels zetten de analyse in een
    // JSON-blob; dan vindt de pagina-data-normalisatie dezelfde getallen wel.
    let vergelijking = vergelijkAnalyse(vergelijkbaar(html), product.bronTekst)
    if (!vergelijking.gelijk) {
      const viaPaginadata = vergelijkAnalyse(vergelijkbaarMetPaginadata(html), product.bronTekst)
      if (viaPaginadata.gevonden > vergelijking.gevonden) vergelijking = viaPaginadata
    }
    if (vergelijking.gelijk) return { ...product, status: 'gelijk', detail: '' }
    const andereBron = /Duitse|Duits|Franse|Frans|Engelse|Engels|Belgische|Belgisch|Oostenrijkse|anderstalig|buitenland|gearchiveerd|archief|winkelpagina|retailer/i.test(product.notitie ?? '')
    return andereBron
      ? { ...product, status: 'andere-bron', detail: `De analyse komt volgens de notitie van een andere pagina; de opgegeven URL bevat ${vergelijking.gevonden} van ${vergelijking.totaal} getallen.` }
      : { ...product, status: 'gewijzigd', detail: `De opgeslagen analyse is niet teruggevonden: ${vergelijking.gevonden} van ${vergelijking.totaal} getallen gevonden.` }
  } catch (fout) {
    return { ...product, status: 'onbereikbaar', detail: String(fout?.message ?? fout).slice(0, 160) }
  }
}

const producten = leesProducten()
const resultaten = []
let volgende = 0
let klaar = 0
async function werk() {
  while (volgende < producten.length) {
    const index = volgende++
    const resultaat = await controleer(producten[index])
    resultaten[index] = resultaat
    klaar++
    if (klaar % 25 === 0 || klaar === producten.length) console.log(`${klaar}/${producten.length}`)
    if (pauze) await new Promise((resolve) => setTimeout(resolve, pauze))
  }
}
await Promise.all(Array.from({ length: Math.min(parallel, producten.length) }, werk))

// Vangnet tegen vals alarm: als vrijwel alle producten van één site ineens
// "gewijzigd" of onbereikbaar zijn, is dat vrijwel zeker een botpagina of een
// tijdelijke storing vanaf deze runner, niet een etiketwijziging. Behandel die
// uitkomsten als onbereikbaar; een mens kijkt daarna naar de site.
const perHostUitkomsten = new Map()
for (const rij of resultaten) {
  if (!rij) continue
  const hostnaam = host(rij.bronUrl)
  if (!hostnaam) continue
  if (!perHostUitkomsten.has(hostnaam)) perHostUitkomsten.set(hostnaam, [])
  perHostUitkomsten.get(hostnaam).push(rij)
}
for (const [hostnaam, rijen] of perHostUitkomsten) {
  const verdacht = rijen.filter((rij) => rij.status === 'gewijzigd' || rij.status === 'onbereikbaar')
  if (rijen.length < 5 || verdacht.length / rijen.length <= 0.7) continue
  for (const rij of verdacht) {
    rij.status = 'onbereikbaar'
    rij.detail = `De site gaf bij ${verdacht.length} van ${rijen.length} producten geen betrouwbare pagina; waarschijnlijk botbeveiliging of een tijdelijke storing, geen etiketwijziging.`
  }
  console.log(`\nLet op: ${hostnaam} gaf ${verdacht.length} van ${rijen.length} keer een afwijkende pagina. Behandeld als onbereikbaar, niet als gewijzigd.`)
}

const telling = (status) => resultaten.filter((rij) => rij?.status === status).length
const isHostBlokkade = (rij) => rij?.status === 'onbereikbaar' && /^De site gaf bij \d+ van \d+ producten/.test(rij.detail ?? '')
const hostGeblokkeerd = resultaten.filter(isHostBlokkade)
const hostGeblokkeerdPerHost = new Map()
for (const rij of hostGeblokkeerd) {
  const hostnaam = host(rij.bronUrl)
  if (!hostGeblokkeerdPerHost.has(hostnaam)) hostGeblokkeerdPerHost.set(hostnaam, 0)
  hostGeblokkeerdPerHost.set(hostnaam, hostGeblokkeerdPerHost.get(hostnaam) + 1)
}
const groepen = {
  gewijzigd: resultaten.filter((rij) => rij?.status === 'gewijzigd'),
  andereBron: resultaten.filter((rij) => rij?.status === 'andere-bron'),
  onbereikbaar: resultaten.filter((rij) => rij?.status === 'onbereikbaar' && !isHostBlokkade(rij)),
  browser: resultaten.filter((rij) => rij?.status === 'browser'),
  geenTekst: resultaten.filter((rij) => rij?.status === 'geen-tekst')
}
const regels = [
  '# Voedingsbroncontrole',
  '',
  `Datum: ${new Date().toISOString().slice(0, 10)}`,
  `Producten gecontroleerd: ${producten.length}`,
  `Gelijk: ${telling('gelijk')}`,
  `Gewijzigd: ${groepen.gewijzigd.length}`,
  `Andere bron: ${groepen.andereBron.length}`,
  `Onbereikbaar: ${groepen.onbereikbaar.length}`,
  `Geblokkeerde hosts: ${hostGeblokkeerdPerHost.size}`,
  `Alleen via browser: ${groepen.browser.length}`,
  `Geen bruikbare brontekst: ${groepen.geenTekst.length}`,
  ''
]
for (const [titel, rijen] of [['Gewijzigd', groepen.gewijzigd], ['Andere bron', groepen.andereBron], ['Onbereikbaar', groepen.onbereikbaar], ['Alleen via browser', groepen.browser], ['Geen bruikbare brontekst', groepen.geenTekst]]) {
  if (!rijen.length) continue
  regels.push(`## ${titel}`, '', '| Merk | Product | Bron | Detail |', '|---|---|---|---|')
  for (const rij of rijen) regels.push(`| ${markdownCel(rij.merk)} | ${markdownCel(rij.naam)} | ${markdownCel(host(rij.bronUrl))} | ${markdownCel(rij.detail)} |`)
  regels.push('')
}
if (hostGeblokkeerdPerHost.size) {
  regels.push('## Geblokkeerde hosts', '', '| Host | Producten | Detail |', '|---|---|---|')
  for (const [hostnaam, aantal] of [...hostGeblokkeerdPerHost.entries()].sort((a, b) => b[1] - a[1])) {
    regels.push(`| ${markdownCel(hostnaam)} | ${aantal} | De site gaf bij vrijwel alle producten geen betrouwbare pagina; waarschijnlijk botbeveiliging of een tijdelijke storing. |`)
  }
  regels.push('')
}
if (!groepen.gewijzigd.length && !groepen.onbereikbaar.length && !hostGeblokkeerd.length) regels.push('Geen wijzigingen of onbereikbare bronnen gevonden.', '')
writeFileSync(RAPPORT, `${regels.join('\n')}\n`)
console.log(`\nRapport: ${RAPPORT}`)
console.log(`Gelijk: ${telling('gelijk')} · gewijzigd: ${groepen.gewijzigd.length} · andere bron: ${groepen.andereBron.length} · onbereikbaar: ${groepen.onbereikbaar.length} · geblokkeerde hosts: ${hostGeblokkeerdPerHost.size} · browser: ${groepen.browser.length}`)
if (!geenFout && (groepen.gewijzigd.length || groepen.onbereikbaar.length || hostGeblokkeerd.length)) process.exit(1)
