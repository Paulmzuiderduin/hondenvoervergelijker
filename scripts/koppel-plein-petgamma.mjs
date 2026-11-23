#!/usr/bin/env node
// Koppelt Plein.nl en Petgamma.com (Daisycon) aan de productcatalogus.
//
// De productfeeds worden niet gecommit: ze zijn groot en bevatten een
// publisher-specifieke trackinglink. Download ze lokaal als:
//
//   data/winkels/plein-nl.json
//   data/winkels/petgamma.json
//
// en draai:
//
//   npm run winkels:plein-petgamma -- --dry-run
//   npm run winkels:plein-petgamma
//
// Eerst wordt op exacte EAN gematcht. Heeft een catalogusproduct geen EAN, dan
// volgt een exacte match op merk, productnaam en verpakkingsmaat. Bij twijfel
// blijft de link weg. Snacks worden niet meegenomen: die hebben geen EAN in de
// snackcatalogus.

import { existsSync, readFileSync, writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'
import { koppelDaisyconRetail, koppelDaisyconSnacks, parseDaisyconRetailFeed, parseDaisyconSnackFeed } from './lib/daisycon-retail-match.mjs'

const WORTEL = dirname(dirname(fileURLToPath(import.meta.url)))
const OUTPUT = join(WORTEL, 'public', 'winkels.json')
const RAPPORT = join(WORTEL, 'data', 'winkels', 'rapport-plein-petgamma.md')
const SNACKS = join(WORTEL, 'data', 'snacks.json')
const FEEDS = [
  { winkel: 'Plein.nl', pad: join(WORTEL, 'data', 'winkels', 'plein-nl.json') },
  { winkel: 'Petgamma.com', pad: join(WORTEL, 'data', 'winkels', 'petgamma.json') }
]
const WINKELS = new Set(FEEDS.map(({ winkel }) => winkel))

const argumenten = new Map(
  process.argv.slice(2)
    .filter((ruw) => ruw.startsWith('--'))
    .map((ruw) => {
      const [naam, waarde] = ruw.replace(/^--/, '').split('=')
      return [naam, waarde ?? '']
    })
)
const droog = argumenten.has('dry-run')

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

if (!SUPABASE_URL || !SUPABASE_KEY) {
  console.error('Supabase-configuratie ontbreekt. Controleer .env.local of de omgevingsvariabelen.')
  process.exit(1)
}

for (const feed of FEEDS) {
  if (!existsSync(feed.pad)) {
    console.error(`Feed niet gevonden: ${feed.pad}`)
    console.error('Download de productfeed uit Daisycon en sla hem op onder deze naam.')
    process.exit(1)
  }
}

async function haalProducten() {
  const rijen = []
  for (let offset = 0; ; offset += 1000) {
    const url = new URL(`${SUPABASE_URL}/rest/v1/products`)
    url.searchParams.set('select', 'id,brand,name,gtin,package_size,food_type')
    url.searchParams.set('published', 'eq.true')
    url.searchParams.set('order', 'id.asc')
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

const producten = await haalProducten()
const snackData = JSON.parse(readFileSync(SNACKS, 'utf8'))
const snacks = Array.isArray(snackData.producten) ? snackData.producten : []
const resultaten = []
for (const feed of FEEDS) {
  const data = JSON.parse(readFileSync(feed.pad, 'utf8'))
  const voerAanbiedingen = parseDaisyconRetailFeed(data, { winkel: feed.winkel })
  const snackAanbiedingen = parseDaisyconSnackFeed(data, { winkel: feed.winkel })
  const voer = { ...koppelDaisyconRetail(producten, voerAanbiedingen), aanbiedingen: voerAanbiedingen }
  const snack = { ...koppelDaisyconSnacks(snacks, snackAanbiedingen), aanbiedingen: snackAanbiedingen }
  resultaten.push({ ...feed, voerAanbiedingen, snackAanbiedingen, voer, snack })
  console.log(`${feed.winkel}: ${voerAanbiedingen.length} hondenvoerproducten, ${voer.koppelingen.length} voerkoppelingen; ${snackAanbiedingen.length} snacks, ${snack.koppelingen.length} snackkoppelingen.`)
}

let bestaand = { aanbieders: {} }
if (existsSync(OUTPUT)) {
  try {
    const gelezen = JSON.parse(readFileSync(OUTPUT, 'utf8'))
    if (gelezen && typeof gelezen.aanbieders === 'object') bestaand = gelezen
  } catch {
    // Een kapot bestand overschrijven we met een schone set.
  }
}

// Eerst alle bestaande links van deze twee winkels verwijderen. Andere
// winkels en snacklinks blijven ongemoeid.
for (const [productId, lijst] of Object.entries(bestaand.aanbieders ?? {})) {
  const over = (Array.isArray(lijst) ? lijst : []).filter((aanbieding) => !WINKELS.has(aanbieding.winkel))
  if (over.length) bestaand.aanbieders[productId] = over
  else delete bestaand.aanbieders[productId]
}

const perSleutel = new Map()
for (const resultaat of resultaten) {
  for (const koppeling of [...resultaat.voer.koppelingen, ...resultaat.snack.koppelingen]) {
    const { product, aanbieding } = koppeling
    const maat = aanbieding.maatLabel || aanbieding.maat || product.package_size || ''
    const sleutel = `${product.id}|${aanbieding.winkel}|${maat}`
    const prijs = Number.isFinite(aanbieding.prijs) && aanbieding.prijs > 0 ? Number(aanbieding.prijs.toFixed(2)) : null
    const huidig = perSleutel.get(sleutel)
    if (!huidig || (prijs != null && (huidig.prijs == null || prijs < huidig.prijs))) {
      perSleutel.set(sleutel, { product, aanbieding, methode: koppeling.methode, maat, prijs })
    }
  }
}

for (const { product, aanbieding, maat, prijs } of perSleutel.values()) {
  const lijst = bestaand.aanbieders[product.id] ?? []
  lijst.push({ winkel: aanbieding.winkel, url: aanbieding.url, maat, prijs })
  bestaand.aanbieders[product.id] = lijst
}

const resultaat = {
  bijgewerkt: new Date().toISOString(),
  netwerk: 'TradeTracker en Daisycon',
  aanbieders: bestaand.aanbieders
}

const regels = [
  '# Plein.nl en Petgamma.com — Daisycon-koppeling',
  '',
  `- Datum: ${new Date().toISOString().slice(0, 10)}`,
  `- Catalogusproducten: ${producten.length}`,
  '',
  ...resultaten.flatMap(({ winkel, voer, snack }) => {
    const uniekeLinks = [...perSleutel.values()].filter(({ aanbieding }) => aanbieding.winkel === winkel)
    const uniekeProducten = new Set(uniekeLinks.map(({ product }) => product.id))
    return [
      `## ${winkel}`,
      '',
      `- Hondenvoerproducten in feed: ${voer.aanbiedingen.length}`,
      `- Voerkoppelingen: ${voer.koppelingen.length} (${voer.exact.length} exacte EAN, ${voer.naamMaat.length} exacte merk/naam/maat)`,
      `- Snacks in feed: ${snack.aanbiedingen.length}`,
      `- Snackkoppelingen: ${snack.koppelingen.length} (${snack.exact.length} exacte EAN, ${snack.naamMaat.length} exacte merk/naam/maat, ${snack.naam.length} exacte naam)`,
      `- Unieke links na ontdubbelen: ${uniekeLinks.length} voor ${uniekeProducten.size} producten`,
      `- Dubbelzinnig overgeslagen: ${voer.dubbelzinnig.length + snack.dubbelzinnig.length}`,
      `- Geen match: ${voer.zonderMatch.length + snack.zonderMatch.length}`,
      ''
    ]
  }),
  '## Gekoppeld',
  '',
  '| Winkel | Product | Maat | Prijs | Methode | Feedtitel |',
  '|---|---|---|---|---|---|',
  ...[...perSleutel.values()]
    .sort((a, b) =>
      a.aanbieding.winkel.localeCompare(b.aanbieding.winkel, 'nl', { sensitivity: 'base' }) ||
      a.product.brand.localeCompare(b.product.brand, 'nl', { sensitivity: 'base' }) ||
      a.product.name.localeCompare(b.product.name, 'nl', { sensitivity: 'base' }) ||
      String(a.maat).localeCompare(String(b.maat), 'nl', { sensitivity: 'base' })
    )
    .map(({ product, aanbieding, methode, maat, prijs }) =>
      `| ${aanbieding.winkel} | ${product.brand} — ${product.name} | ${maat || '—'} | ${prijs != null ? `€ ${prijs.toFixed(2).replace('.', ',')}` : '—'} | ${methode} | ${aanbieding.titel} |`
    ),
  '',
  '## Geen match of dubbelzinnig',
  '',
  ...resultaten.flatMap(({ winkel, voer, snack }) => {
    const dubbelzinnig = [...voer.dubbelzinnig, ...snack.dubbelzinnig]
    const zonderMatch = [...voer.zonderMatch, ...snack.zonderMatch]
    return [
      `### ${winkel}`,
      '',
      ...(dubbelzinnig.length
        ? ['Dubbelzinnig:', ...dubbelzinnig.slice(0, 100).map(({ aanbieding, reden }) => `- ${aanbieding.titel}: ${reden}`)]
        : ['Geen dubbelzinnige matches.']),
      '',
      ...(zonderMatch.length
        ? [`Geen match: ${zonderMatch.length} feedproducten. Eerste 30:`, ...zonderMatch.slice(0, 30).map((aanbieding) => `- ${aanbieding.titel} (${aanbieding.ean || 'geen EAN'})`)]
        : ['Geen ontbrekende matches.']),
      ''
    ]
  }),
  'Snacks worden gekoppeld op exacte merk-, naam- en maatovereenkomst; een EAN is daarvoor niet nodig.'
]

if (droog) {
  console.log(regels.join('\n'))
  console.log(`\nDry-run: ${perSleutel.size} koppelingen, public/winkels.json niet gewijzigd.`)
} else {
  writeFileSync(OUTPUT, `${JSON.stringify(resultaat, null, 2)}\n`)
  writeFileSync(RAPPORT, `${regels.join('\n')}\n`)
  console.log(`${perSleutel.size} koppelingen toegevoegd aan public/winkels.json.`)
  console.log(`Rapport: ${RAPPORT}`)
}
