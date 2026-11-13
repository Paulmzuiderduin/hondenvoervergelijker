#!/usr/bin/env node
// Koppelt Ultra Premium Direct (Daisycon, campagne 21834) aan de producten
// van dat merk in de voervergelijker.
//
// De feed wordt niet gecommit: hij bevat een publisher-specifieke URL.
// Download hem lokaal als data/winkels/ultra-premium-direct.xml en draai:
//
//   npm run winkels:ultra-premium-direct -- --dry-run
//   npm run winkels:ultra-premium-direct
//
// Alleen een exacte EAN levert een link op. Zo komen bezoekers nooit op een
// verkeerde productpagina terecht.

import { existsSync, readFileSync, writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'
import { koppelDaisycon, parseDaisyconFeed } from './lib/daisycon-match.mjs'

const WORTEL = dirname(dirname(fileURLToPath(import.meta.url)))
const FEED = join(WORTEL, 'data', 'winkels', 'ultra-premium-direct.xml')
const OUTPUT = join(WORTEL, 'public', 'winkels.json')
const RAPPORT = join(WORTEL, 'data', 'winkels', 'rapport-ultra-premium-direct.md')
const WINKEL = 'Ultra Premium Direct'

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
  console.error('Download de Ultra Premium Direct-productfeed uit Daisycon en sla hem op als data/winkels/ultra-premium-direct.xml.')
  process.exit(1)
}
if (!SUPABASE_URL || !SUPABASE_KEY) {
  console.error('Supabase-configuratie ontbreekt. Controleer .env.local of de omgevingsvariabelen.')
  process.exit(1)
}

async function haalProducten() {
  const antwoord = await fetch(`${SUPABASE_URL}/rest/v1/products?select=id,brand,name,gtin,package_size,food_type&published=eq.true&brand=eq.${encodeURIComponent(WINKEL)}&order=name.asc`, {
    headers: { apikey: SUPABASE_KEY, authorization: `Bearer ${SUPABASE_KEY}` }
  })
  if (!antwoord.ok) throw new Error(`Supabase gaf HTTP ${antwoord.status}: ${await antwoord.text()}`)
  return antwoord.json()
}

const xml = readFileSync(feedPad, 'utf8')
const aanbiedingen = parseDaisyconFeed(xml, { categoriePad: 'Hondenvoer', winkel: WINKEL })
const producten = await haalProducten()
const { koppelingen, dubbelzinnig, onzeker } = koppelDaisycon(producten, aanbiedingen)

let bestaand = { aanbieders: {} }
if (existsSync(OUTPUT)) {
  try {
    const gelezen = JSON.parse(readFileSync(OUTPUT, 'utf8'))
    if (gelezen && typeof gelezen.aanbieders === 'object') bestaand = gelezen
  } catch {
    // Een kapot bestand overschrijven we met een schone set.
  }
}

// Eerst de oude UPD-links verwijderen; andere winkels blijven staan.
for (const [productId, lijst] of Object.entries(bestaand.aanbieders ?? {})) {
  const over = (Array.isArray(lijst) ? lijst : []).filter((aanbieding) => aanbieding.winkel !== WINKEL)
  if (over.length) bestaand.aanbieders[productId] = over
  else delete bestaand.aanbieders[productId]
}

for (const { product, aanbieding } of koppelingen) {
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
  '# Ultra Premium Direct — Daisycon-koppeling',
  '',
  `- Feedproducten hondenvoer: ${aanbiedingen.length}`,
  `- Catalogusproducten ${WINKEL}: ${producten.length}`,
  `- Betrouwbare koppelingen op EAN: ${koppelingen.length}`,
  `- Dubbelzinnig overgeslagen: ${dubbelzinnig.length}`,
  `- Catalogusproducten zonder EAN: ${onzeker.length}`,
  '',
  '## Gekoppeld',
  '',
  '| Product | Maat | Prijs | EAN | Feedtitel |',
  '|---|---|---|---|---|',
  ...koppelingen.map(({ product, aanbieding }) => `| ${product.name} | ${aanbieding.maat || '—'} | ${aanbieding.prijs != null ? `€ ${aanbieding.prijs.toFixed(2).replace('.', ',')}` : '—'} | ${product.gtin ?? '—'} | ${aanbieding.titel} |`),
  '',
  '## Geen link',
  '',
  'Alleen producten met een exacte EAN krijgen een link. Producten zonder EAN of met een afwijkende EAN blijven zonder winkelknop.',
  '',
  ...(onzeker.length ? onzeker.map(({ product, reden }) => `- ${product.name}: ${reden}`) : ['- Geen producten zonder EAN.']),
  '',
  ...(dubbelzinnig.length ? ['## Dubbelzinnig — geen link', '', ...dubbelzinnig.map(({ product, aanbieding }) => `- ${product.name} ↔ ${aanbieding.titel}`)] : [])
]

if (droog) {
  console.log(regels.join('\n'))
  console.log(`\nDry-run: ${koppelingen.length} koppelingen, public/winkels.json niet gewijzigd.`)
} else {
  writeFileSync(OUTPUT, `${JSON.stringify(resultaat, null, 2)}\n`)
  writeFileSync(RAPPORT, `${regels.join('\n')}\n`)
  console.log(`Ultra Premium Direct: ${koppelingen.length} koppelingen toegevoegd aan public/winkels.json.`)
  console.log(`Rapport: ${RAPPORT}`)
}
