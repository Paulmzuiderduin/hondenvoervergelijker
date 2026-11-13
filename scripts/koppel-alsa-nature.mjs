#!/usr/bin/env node
// Koppelt Alsa Nature (TradeTracker, campagne 31843) aan de productcatalogus.
//
// De feed wordt niet gecommit: hij bevat een publisher-specifieke URL.
// Download hem lokaal als data/winkels/alsa-nature.xml en draai:
//
//   npm run winkels:alsa-nature -- --dry-run
//   npm run winkels:alsa-nature
//
// De feed bevat vooral het merk alsa-nature en isegrim. De koppeling gebruikt
// alleen een exact gelijk EAN of de directe product-URL uit de affiliate-link.
// Bij twijfel blijft de winkelknop weg. Snacklinks worden apart beheerd door
// scripts/koppel-alsa-upd-snacks.mjs.

import { existsSync, readFileSync, writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'
import { parseTradeTrackerFeed } from './lib/tradetracker-match.mjs'
import { directeTradeTrackerUrl, koppelAlsaOpEanOfUrl } from './lib/alsa-match.mjs'
import { normaliseer } from './lib/winkel-match.mjs'

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
    const url = new URL(`${SUPABASE_URL}/rest/v1/products`)
    url.searchParams.set('select', 'id,brand,name,gtin,package_size,food_type,source_url')
    url.searchParams.set('published', 'eq.true')
    // Alsa Nature en Isegirm staan allemaal onder deze bronhost. Filteren op
    // bron-URL is betrouwbaarder gebleken dan filteren op de merknaam.
    url.searchParams.set('source_url', 'like.https://www.alsa-nature.nl/*')
    url.searchParams.set('order', 'source_url.asc,id.asc')
    url.searchParams.set('limit', '1000')
    url.searchParams.set('offset', String(offset))
    const antwoord = await fetch(url, {
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
  .map((aanbieding) => ({ ...aanbieding, soort: 'voer', directeUrl: directeTradeTrackerUrl(aanbieding.url) }))
const producten = await haalProducten()
const {
  koppelingen: voerKoppelingen,
  dubbelzinnig: voerDubbelzinnig,
  zonderMatch: voerZonderMatch
} = koppelAlsaOpEanOfUrl(producten, voerAanbiedingen)

const feedMerken = [...new Set(voerAanbiedingen.map((aanbieding) => aanbieding.merk).filter(Boolean))].sort((a, b) => a.localeCompare(b, 'nl'))
const catalogusMerken = new Set(producten.map((product) => normaliseer(product.brand)))
const ontbrekendeMerken = feedMerken.filter((merk) => !catalogusMerken.has(normaliseer(merk)))

let bestaand = { aanbieders: {} }
if (existsSync(OUTPUT)) {
  try {
    const gelezen = JSON.parse(readFileSync(OUTPUT, 'utf8'))
    if (gelezen && typeof gelezen.aanbieders === 'object') bestaand = gelezen
  } catch {
    // Een kapot bestand overschrijven we met een schone set.
  }
}

// Alleen voerlinks van Alsa Nature vervangen. Snacklinks worden door
// scripts/koppel-alsa-upd-snacks.mjs beheerd en blijven ongemoeid.
const voerProductIds = new Set(producten.map((product) => product.id))
for (const [productId, lijst] of Object.entries(bestaand.aanbieders ?? {})) {
  if (!voerProductIds.has(productId)) continue
  const over = (Array.isArray(lijst) ? lijst : []).filter((aanbieding) => aanbieding.winkel !== WINKEL)
  if (over.length) bestaand.aanbieders[productId] = over
  else delete bestaand.aanbieders[productId]
}

for (const { product, aanbieding } of voerKoppelingen) {
  const lijst = bestaand.aanbieders[product.id] ?? []
  lijst.push({
    winkel: WINKEL,
    url: aanbieding.url,
    maat: product.package_size || aanbieding.maat,
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
  `- Catalogus voeding: ${producten.length} producten`,
  `- Betrouwbare voerkoppelingen: ${voerKoppelingen.length}`,
  `- Dubbelzinnig voer overgeslagen: ${voerDubbelzinnig.length}`,
  `- Voer zonder exacte EAN/URL-match: ${voerZonderMatch.length}`,
  '',
  '## Merken in de feed',
  '',
  `- ${feedMerken.join(', ') || 'geen'}`,
  '',
  '## Nog niet in de catalogus',
  '',
  ...(ontbrekendeMerken.length ? ontbrekendeMerken.map((merk) => `- ${merk}`) : ['- Geen.']),
  '',
  'Alsa Nature verkoopt vooral zijn eigen merk en Isegrim. De koppeling gebruikt',
  'alleen een exact gelijk EAN of de directe product-URL uit de affiliate-link.',
  'Bij twijfel blijft de winkelknop weg.',
  '',
  '## Gekoppeld voer',
  '',
  ...(voerKoppelingen.length
    ? ['| Merk | Product | Maat | Prijs | Feednaam |', '|---|---|---|---|---|', ...voerKoppelingen.map(({ product, aanbieding }) => `| ${product.brand} | ${product.name} | ${product.package_size || aanbieding.maat || '—'} | ${aanbieding.prijs != null ? `€ ${aanbieding.prijs.toFixed(2).replace('.', ',')}` : '—'} | ${aanbieding.titel} |`)]
    : ['Geen betrouwbare koppelingen.']),
  '',
  '## Voer zonder match',
  '',
  ...(voerZonderMatch.length ? voerZonderMatch.map((product) => `- ${product.brand} — ${product.name} (${product.package_size || 'geen maat'})`) : ['- Geen.'])
]

if (droog) {
  console.log(regels.join('\n'))
  console.log(`\nDry-run: ${voerKoppelingen.length} koppelingen, public/winkels.json niet gewijzigd.`)
} else {
  writeFileSync(OUTPUT, `${JSON.stringify(resultaat, null, 2)}\n`)
  writeFileSync(RAPPORT, `${regels.join('\n')}\n`)
  console.log(`Alsa Nature: ${voerKoppelingen.length} voerkoppelingen toegevoegd aan public/winkels.json.`)
  console.log(`Rapport: ${RAPPORT}`)
}
