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
import { BROWSER_ONLY_HOSTS, UA, vergelijkbaar } from './lib/bronvergelijking.mjs'

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
const parallel = Math.max(1, Math.min(12, Number(argumenten.get('parallel') ?? 6) || 6))
const geenFout = process.argv.includes('--geen-fout')

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

async function controleer(product) {
  const hostnaam = host(product.bronUrl)
  if (BROWSER_ONLY_HOSTS.has(hostnaam) || BROWSER_ONLY_HOSTS.has(`www.${hostnaam}`)) {
    return { ...product, status: 'browser', detail: 'Alleen via een echte browser te controleren.' }
  }
  try {
    const antwoord = await fetch(product.bronUrl, {
      headers: { 'user-agent': UA, accept: 'text/html,application/xhtml+xml' },
      redirect: 'follow',
      signal: AbortSignal.timeout(15000)
    })
    if (!antwoord.ok) return { ...product, status: 'onbereikbaar', detail: `HTTP ${antwoord.status}` }
    const html = await antwoord.text()
    const pagina = vergelijkbaar(html)
    if (!String(product.bronTekst).trim()) return { ...product, status: 'geen-tekst', detail: 'Geen bruikbare brontekst in het importbestand.' }
    const vergelijking = vergelijkAnalyse(pagina, product.bronTekst)
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

const telling = (status) => resultaten.filter((rij) => rij?.status === status).length
const groepen = {
  gewijzigd: resultaten.filter((rij) => rij?.status === 'gewijzigd'),
  andereBron: resultaten.filter((rij) => rij?.status === 'andere-bron'),
  onbereikbaar: resultaten.filter((rij) => rij?.status === 'onbereikbaar'),
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
if (!groepen.gewijzigd.length && !groepen.onbereikbaar.length) regels.push('Geen wijzigingen of onbereikbare bronnen gevonden.', '')
writeFileSync(RAPPORT, `${regels.join('\n')}\n`)
console.log(`\nRapport: ${RAPPORT}`)
console.log(`Gelijk: ${telling('gelijk')} · gewijzigd: ${groepen.gewijzigd.length} · andere bron: ${groepen.andereBron.length} · onbereikbaar: ${groepen.onbereikbaar.length} · browser: ${groepen.browser.length}`)
if (!geenFout && (groepen.gewijzigd.length || groepen.onbereikbaar.length)) process.exit(1)
