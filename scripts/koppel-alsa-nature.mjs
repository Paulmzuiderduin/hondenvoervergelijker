#!/usr/bin/env node
// Koppelt Alsa Nature (TradeTracker, campagne 31843) aan de productcatalogus.
//
// De feed wordt niet gecommit: hij bevat een publisher-specifieke URL.
// Download hem lokaal als data/winkels/alsa-nature.xml en draai:
//
//   npm run winkels:alsa-nature -- --dry-run
//   npm run winkels:alsa-nature
//
// De feed bevat vooral het merk alsa-nature en isegrim. Zolang die merken niet
// in de catalogus staan, levert dit script bewust nul links op. Zodra ze zijn
// toegevoegd, worden de links bij de volgende run automatisch meegenomen.

import { existsSync, readFileSync, writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'
import { koppelBetrouwbaar, parseTradeTrackerFeed } from './lib/tradetracker-match.mjs'
import { koppelSnacksBetrouwbaar } from './lib/snack-winkel-match.mjs'

const WORTEL = dirname(dirname(fileURLToPath(import.meta.url)))
const FEED = join(WORTEL, 'data', 'winkels', 'alsa-nature.xml')
const OUTPUT = join(WORTEL, 'public', 'winkels.json')
const RAPPORT = join(WORTEL, 'data', 'winkels', 'rapport-alsa-nature.md')
const WINKEL = 'Alsa Nature'
const VOEDING_PREFIXEN = [
  'Hondenvoeding > Droogvoer',
  'Hondenvoeding > Natvoer',
  'Hondenvoeding > Granenvrij hondenvoer > Verszakken',
  'Hondenvoeding > Granenvrij hondenvoer > Natvoeding',
  'Hondenvoeding > Granenvrij hondenvoer > Dieet & speciaalvoeding',
  'Hondenvoeding > Hondenworst',
  'Hondenvoeding > Puppyvoeding & bijvoeding'
]
const SNACK_PREFIXEN = [
  'Hondenvoeding > Kauwproducten',
  'Hondenvoeding > Hondenkoekjes',
  'Hondenvoeding > Granenvrij hondenvoer > Hondenkoekjes',
  'Hondenvoeding > Granenvrij hondenvoer > Kauwproducten',
  'Hondenvoeding > Pakketten & sets'
]

const argumenten = new Map(
  process.argv.slice(2)
    .filter((ruw) => ruw.startsWith('--'))
    .map((ruw) => {
      const [naam, waarde] = ruw.replace(/^--/, '').split('=')
      return [naam, waarde ?? '']
    })
)

const droog = argumenten.has('dry-run')
const feedPad = argumenten.get('feed') ? join(WORTEL, argumenten.get('feed')) : FEED

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
const SUPABASE_URL = (process.env.VITE_SUPABASE_URL || env.VITE_SUPABASE_URL || '').replace(/\/$/, '')
const SUPABASE_KEY = process.env.VITE_SUPABASE_PUBLISHABLE_KEY || env.VITE_SUPABASE_PUBLISHABLE_KEY || ''

if (!existsSync(feedPad)) {
  console.error(`Feed niet gevonden: ${feedPad}`)
  console.error('Download de Alsa Nature-productfeed uit TradeTracker en sla hem op als data/winkels/alsa-nature.xml.')
  process.exit(1)
}
if (!SUPABASE_URL || !SUPABASE_KEY) {
  console.error('Supabase-configuratie ontbreekt. Controleer .env.local of de omgevingsvariabelen.')
  process.exit(1)
}

async function haalProducten() {
  const rijen = []
  for (let offset = 0; ; offset += 1000) {
    const antwoord = await fetch(`${SUPABASE_URL}/rest/v1/products?select=id,brand,name,gtin,package_size,food_type&published=eq.true&order=brand.asc,name.asc&limit=1000&offset=${offset}`, {
      headers: { apikey: SUPABASE_KEY, authorization: `Bearer ${SUPABASE_KEY}` }
    })
    if (!antwoord.ok) throw new Error(`Supabase gaf HTTP ${antwoord.status}: ${await antwoord.text()}`)
    const deel = await antwoord.json()
    rijen.push(...deel)
    if (deel.length < 1000) break
  }
  return rijen
}

const xml = readFileSync(feedPad, 'utf8')
const voerAanbiedingen = parseTradeTrackerFeed(xml, { categorieen: [], categoriePrefixen: VOEDING_PREFIXEN, winkel: WINKEL })
  .map((aanbieding) => ({ ...aanbieding, soort: 'voer' }))
const snackAanbiedingen = parseTradeTrackerFeed(xml, { categorieen: [], categoriePrefixen: SNACK_PREFIXEN, winkel: WINKEL })
const producten = await haalProducten()
const { koppelingen: voerKoppelingen, dubbelzinnig: voerDubbelzinnig } = koppelBetrouwbaar(producten, voerAanbiedingen)

const snackData = JSON.parse(readFileSync(join(WORTEL, 'data', 'snacks.json'), 'utf8'))
const snacks = Array.isArray(snackData.producten) ? snackData.producten : []
const { koppelingen: snackKoppelingen, dubbelzinnig: snackDubbelzinnig } = koppelSnacksBetrouwbaar(snacks, snackAanbiedingen)

const feedMerken = [...new Set(voerAanbiedingen.map((aanbieding) => aanbieding.merk).filter(Boolean))].sort((a, b) => a.localeCompare(b, 'nl'))
const catalogusMerken = new Set(producten.map((product) => product.brand))
const ontbrekendeMerken = feedMerken.filter((merk) => ![...catalogusMerken].some((brand) => brand.toLowerCase() === merk.toLowerCase()))

let bestaand = { aanbieders: {} }
if (existsSync(OUTPUT)) {
  try {
    const gelezen = JSON.parse(readFileSync(OUTPUT, 'utf8'))
    if (gelezen && typeof gelezen.aanbieders === 'object') bestaand = gelezen
  } catch {
    // Een kapot bestand overschrijven we met een schone set.
  }
}

for (const [productId, lijst] of Object.entries(bestaand.aanbieders ?? {})) {
  const over = (Array.isArray(lijst) ? lijst : []).filter((aanbieding) => aanbieding.winkel !== WINKEL)
  if (over.length) bestaand.aanbieders[productId] = over
  else delete bestaand.aanbieders[productId]
}

for (const { product, aanbieding } of [...voerKoppelingen, ...snackKoppelingen]) {
  const lijst = bestaand.aanbieders[product.id] ?? []
  lijst.push({
    winkel: WINKEL,
    url: aanbieding.url,
    maat: aanbieding.maat,
    prijs: Number.isFinite(aanbieding.prijs) && aanbieding.prijs > 0 ? Number(aanbieding.prijs.toFixed(2)) : null
  })
  bestaand.aanbieders[product.id] = lijst
}

const resultaat = {
  bijgewerkt: new Date().toISOString(),
  netwerk: 'TradeTracker en Daisycon',
  aanbieders: bestaand.aanbieders
}

const regels = [
  '# Alsa Nature — TradeTracker-koppeling',
  '',
  `- Feedproducten voeding: ${voerAanbiedingen.length}`,
  `- Feedproducten snacks: ${snackAanbiedingen.length}`,
  `- Catalogus voeding: ${producten.length} producten`,
  `- Catalogus snacks: ${snacks.length} producten`,
  `- Betrouwbare voerkoppelingen: ${voerKoppelingen.length}`,
  `- Betrouwbare snackkoppelingen: ${snackKoppelingen.length}`,
  `- Dubbelzinnig voer overgeslagen: ${voerDubbelzinnig.length}`,
  `- Dubbelzinnige snacks overgeslagen: ${snackDubbelzinnig.length}`,
  '',
  '## Merken in de feed',
  '',
  `- ${feedMerken.join(', ') || 'geen'}`,
  '',
  '## Nog niet in de catalogus',
  '',
  ...(ontbrekendeMerken.length ? ontbrekendeMerken.map((merk) => `- ${merk}`) : ['- Geen.']),
  '',
  'Alsa Nature verkoopt vooral zijn eigen merk en Isegrim. Zolang die producten niet in de catalogus staan, is er geen product-ID om een link aan te hangen. Voeg eerst de producten met ingrediënten en voedingswaarden toe; daarna maakt dit script de koppelingen automatisch.',
  '',
  '## Gekoppeld voer',
  '',
  ...(voerKoppelingen.length
    ? ['| Merk | Product | Maat | Prijs | Feednaam |', '|---|---|---|---|---|', ...voerKoppelingen.map(({ product, aanbieding }) => `| ${product.brand} | ${product.name} | ${aanbieding.maat || '—'} | ${aanbieding.prijs != null ? `€ ${aanbieding.prijs.toFixed(2).replace('.', ',')}` : '—'} | ${aanbieding.titel} |`)]
    : ['Geen betrouwbare koppelingen.']),
  '',
  '## Gekoppelde snacks',
  '',
  ...(snackKoppelingen.length
    ? ['| Merk | Snack | Prijs | Feednaam |', '|---|---|---|---|', ...snackKoppelingen.map(({ product, aanbieding }) => `| ${product.brand} | ${product.name} | ${aanbieding.prijs != null ? `€ ${aanbieding.prijs.toFixed(2).replace('.', ',')}` : '—'} | ${aanbieding.titel} |`)]
    : ['Geen betrouwbare koppelingen.'])
]

if (droog) {
  console.log(regels.join('\n'))
  console.log(`\nDry-run: ${voerKoppelingen.length + snackKoppelingen.length} koppelingen, public/winkels.json niet gewijzigd.`)
} else {
  writeFileSync(OUTPUT, `${JSON.stringify(resultaat, null, 2)}\n`)
  writeFileSync(RAPPORT, `${regels.join('\n')}\n`)
  console.log(`Alsa Nature: ${voerKoppelingen.length + snackKoppelingen.length} koppelingen toegevoegd aan public/winkels.json.`)
  console.log(`Rapport: ${RAPPORT}`)
}
