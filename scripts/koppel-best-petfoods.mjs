#!/usr/bin/env node
// Koppelt Best Petfoods (Daisycon, campagne 17664) aan de productcatalogus.
//
// De feed wordt niet gecommit. Download hem lokaal als
// data/winkels/best-petfoods.json en draai:
//
//   npm run winkels:best-petfoods -- --dry-run
//   npm run winkels:best-petfoods
//
// Eerst wordt op exacte EAN gematcht. Heeft een catalogusproduct geen EAN, dan
// volgt alleen een exacte match op merk, productnaam en verpakking. Snacks
// worden op exacte merk-, naam- en maatovereenkomst gekoppeld. Geen fuzzy
// matching: bij twijfel blijft de link weg.

import { existsSync, readFileSync, writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'
import {
  koppelDaisyconRetail,
  koppelDaisyconSnacks,
  parseDaisyconRetailFeed,
  parseDaisyconSnackFeed
} from './lib/daisycon-retail-match.mjs'

const WORTEL = dirname(dirname(fileURLToPath(import.meta.url)))
const FEED = join(WORTEL, 'data', 'winkels', 'best-petfoods.json')
const OUTPUT = join(WORTEL, 'public', 'winkels.json')
const RAPPORT = join(WORTEL, 'data', 'winkels', 'rapport-best-petfoods.md')
const SNACKS = join(WORTEL, 'data', 'snacks.json')
const WINKEL = 'Best Petfoods'

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

if (!existsSync(FEED)) {
  console.error(`Feed niet gevonden: ${FEED}`)
  console.error('Download de Best Petfoods-productfeed uit Daisycon en sla hem daar op.')
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
const feed = JSON.parse(readFileSync(FEED, 'utf8'))
const voerAanbiedingen = parseDaisyconRetailFeed(feed, { winkel: WINKEL })
const snackAanbiedingen = parseDaisyconSnackFeed(feed, { winkel: WINKEL })
const voer = { ...koppelDaisyconRetail(producten, voerAanbiedingen), aanbiedingen: voerAanbiedingen }
const snack = { ...koppelDaisyconSnacks(snacks, snackAanbiedingen), aanbiedingen: snackAanbiedingen }

console.log(`${WINKEL}: ${voerAanbiedingen.length} hondenvoerproducten, ${voer.koppelingen.length} voerkoppelingen; ${snackAanbiedingen.length} snacks, ${snack.koppelingen.length} snackkoppelingen.`)

let bestaand = { aanbieders: {} }
if (existsSync(OUTPUT)) {
  try {
    const gelezen = JSON.parse(readFileSync(OUTPUT, 'utf8'))
    if (gelezen && typeof gelezen.aanbieders === 'object') bestaand = gelezen
  } catch {
    // Een kapot bestand overschrijven we met een schone set.
  }
}

// Eerst oude links van deze winkel verwijderen; andere winkels blijven staan.
for (const [productId, lijst] of Object.entries(bestaand.aanbieders ?? {})) {
  const over = (Array.isArray(lijst) ? lijst : []).filter((aanbieding) => aanbieding.winkel !== WINKEL)
  if (over.length) bestaand.aanbieders[productId] = over
  else delete bestaand.aanbieders[productId]
}

const perSleutel = new Map()
for (const koppeling of [...voer.koppelingen, ...snack.koppelingen]) {
  const { product, aanbieding } = koppeling
  const maat = aanbieding.maat || product.package_size || ''
  const sleutel = `${product.id}|${WINKEL}|${maat}`
  const prijs = Number.isFinite(aanbieding.prijs) && aanbieding.prijs > 0 ? Number(aanbieding.prijs.toFixed(2)) : null
  const huidig = perSleutel.get(sleutel)
  if (!huidig || (prijs != null && (huidig.prijs == null || prijs < huidig.prijs))) {
    perSleutel.set(sleutel, { product, aanbieding, methode: koppeling.methode, maat, prijs })
  }
}

for (const { product, aanbieding, maat, prijs } of perSleutel.values()) {
  const lijst = bestaand.aanbieders[product.id] ?? []
  lijst.push({ winkel: WINKEL, url: aanbieding.url, maat, prijs })
  bestaand.aanbieders[product.id] = lijst
}

const resultaat = {
  bijgewerkt: new Date().toISOString(),
  netwerk: 'TradeTracker en Daisycon',
  aanbieders: bestaand.aanbieders
}

const uniekeProducten = new Set([...perSleutel.values()].map(({ product }) => product.id))
const regels = [
  '# Best Petfoods — Daisycon-koppeling',
  '',
  `- Datum: ${new Date().toISOString().slice(0, 10)}`,
  `- Catalogusproducten: ${producten.length}`,
  `- Hondenvoerproducten in feed: ${voerAanbiedingen.length}`,
  `- Voerkoppelingen: ${voer.koppelingen.length} (${voer.exact.length} exacte EAN, ${voer.naamMaat.length} exacte merk/naam/maat)`,
  `- Snacks in feed: ${snackAanbiedingen.length}`,
  `- Snackkoppelingen: ${snack.koppelingen.length}`,
  `- Unieke links na ontdubbelen: ${perSleutel.size} voor ${uniekeProducten.size} producten`,
  `- Dubbelzinnig overgeslagen: ${voer.dubbelzinnig.length + snack.dubbelzinnig.length}`,
  `- Geen match: ${voer.zonderMatch.length + snack.zonderMatch.length}`,
  '',
  '## Gekoppeld',
  '',
  '| Product | Maat | Prijs | Methode | Feedtitel |',
  '|---|---|---|---|---|',
  ...[...perSleutel.values()]
    .sort((a, b) =>
      a.product.brand.localeCompare(b.product.brand, 'nl', { sensitivity: 'base' }) ||
      a.product.name.localeCompare(b.product.name, 'nl', { sensitivity: 'base' }) ||
      String(a.maat).localeCompare(String(b.maat), 'nl', { sensitivity: 'base' })
    )
    .map(({ product, aanbieding, methode, maat, prijs }) =>
      `| ${product.brand} — ${product.name} | ${maat || '—'} | ${prijs != null ? `€ ${prijs.toFixed(2).replace('.', ',')}` : '—'} | ${methode} | ${aanbieding.titel} |`
    ),
  '',
  '## Geen match of dubbelzinnig',
  '',
  ...(voer.dubbelzinnig.length + snack.dubbelzinnig.length
    ? ['Dubbelzinnig:', ...[...voer.dubbelzinnig, ...snack.dubbelzinnig].slice(0, 100).map(({ aanbieding, reden }) => `- ${aanbieding.titel}: ${reden}`)]
    : ['Geen dubbelzinnige matches.']),
  '',
  ...(voer.zonderMatch.length + snack.zonderMatch.length
    ? [`Geen match: ${voer.zonderMatch.length + snack.zonderMatch.length} feedproducten. Eerste 30:`, ...[...voer.zonderMatch, ...snack.zonderMatch].slice(0, 30).map((aanbieding) => `- ${aanbieding.titel} (${aanbieding.ean || 'geen EAN'})`)]
    : ['Geen ontbrekende matches.'])
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
