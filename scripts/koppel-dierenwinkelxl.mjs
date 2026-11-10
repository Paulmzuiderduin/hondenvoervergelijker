#!/usr/bin/env node
// Koppelt Dierenwinkel XL (TradeTracker, campagne 4019) aan de productcatalogus
// van de voervergelijker én de snackvergelijker.
//
// De feed wordt niet gecommit: hij is groot en bevat een publisher-specifieke
// URL. Download hem lokaal als data/winkels/dierenwinkelxl.xml en draai:
//
//   npm run winkels:dierenwinkelxl
//
// Voer matcht op exacte merk- en productnaam; snacks op EAN of een vaste
// feedtitel. Bij twijfel of meerdere kandidaten wordt er geen link toegevoegd.

import { existsSync, mkdirSync, readFileSync, writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'
import { koppelBetrouwbaar, parseTradeTrackerFeed } from './lib/tradetracker-match.mjs'
import { koppelSnacksBetrouwbaar } from './lib/snack-winkel-match.mjs'

const WORTEL = dirname(dirname(fileURLToPath(import.meta.url)))
const FEED = join(WORTEL, 'data', 'winkels', 'dierenwinkelxl.xml')
const OUTPUT = join(WORTEL, 'public', 'winkels.json')
const RAPPORT = join(WORTEL, 'data', 'winkels', 'rapport-dierenwinkelxl.md')
const WINKEL = 'Dierenwinkel XL'

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
  console.error('Download de Dierenwinkel XL-productfeed uit TradeTracker en sla hem op als data/winkels/dierenwinkelxl.xml.')
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
const alleAanbiedingen = parseTradeTrackerFeed(xml, { categorieen: ['hond-voeding', 'hond-snacks', 'hond'] })
const voerAanbiedingen = alleAanbiedingen.filter((aanbieding) => aanbieding.categorie === 'hond-voeding')
const snackAanbiedingen = alleAanbiedingen.filter((aanbieding) => ['hond-snacks', 'hond'].includes(aanbieding.categorie))
const producten = await haalProducten()
const { koppelingen: voerKoppelingen, dubbelzinnig: voerDubbelzinnig } = koppelBetrouwbaar(producten, voerAanbiedingen)

const snackData = JSON.parse(readFileSync(join(WORTEL, 'data', 'snacks.json'), 'utf8'))
const snacks = Array.isArray(snackData.producten) ? snackData.producten : []
const {
  koppelingen: snackKoppelingen,
  dubbelzinnig: snackDubbelzinnig,
  onbekend: snackOnbekend
} = koppelSnacksBetrouwbaar(snacks, snackAanbiedingen)

let bestaand = { aanbieders: {} }
if (existsSync(OUTPUT)) {
  try {
    const gelezen = JSON.parse(readFileSync(OUTPUT, 'utf8'))
    if (gelezen && typeof gelezen.aanbieders === 'object') bestaand = gelezen
  } catch {
    // Een kapot bestand overschrijven we met een schone set.
  }
}

// Eerst de oude Dierenwinkel XL-links verwijderen; andere winkels blijven staan.
for (const [productId, lijst] of Object.entries(bestaand.aanbieders ?? {})) {
  const over = (Array.isArray(lijst) ? lijst : []).filter((aanbieding) => aanbieding.winkel !== WINKEL)
  if (over.length) bestaand.aanbieders[productId] = over
  else delete bestaand.aanbieders[productId]
}

for (const { product, aanbieding } of voerKoppelingen) {
  const lijst = bestaand.aanbieders[product.id] ?? []
  lijst.push({
    winkel: WINKEL,
    url: aanbieding.url,
    maat: aanbieding.maat,
    prijs: Number.isFinite(aanbieding.prijs) && aanbieding.prijs > 0 ? Number(aanbieding.prijs.toFixed(2)) : null
  })
  bestaand.aanbieders[product.id] = lijst
}

for (const { product, aanbieding } of snackKoppelingen) {
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
  netwerk: 'TradeTracker',
  aanbieders: bestaand.aanbieders
}

const regels = [
  '# Dierenwinkel XL — TradeTracker-koppeling',
  '',
  `- Feedproducten hondenvoeding: ${voerAanbiedingen.length}`,
  `- Catalogus voeding: ${producten.length} producten`,
  `- Betrouwbare voerkoppelingen: ${voerKoppelingen.length}`,
  `- Dubbelzinnig voer overgeslagen: ${voerDubbelzinnig.length}`,
  `- Feedproducten snacks: ${snackAanbiedingen.length}`,
  `- Catalogus snacks: ${snacks.length} producten`,
  `- Betrouwbare snackkoppelingen: ${snackKoppelingen.length}`,
  `- Dubbelzinnig snacks overgeslagen: ${snackDubbelzinnig.length}`,
  '',
  '## Gekoppeld voer',
  '',
  '| Merk | Product | Maat | Prijs | Feednaam |',
  '|---|---|---|---|---|',
  ...voerKoppelingen.map(({ product, aanbieding }) => `| ${product.brand} | ${product.name} | ${aanbieding.maat || '—'} | ${aanbieding.prijs != null ? `€ ${aanbieding.prijs.toFixed(2).replace('.', ',')}` : '—'} | ${aanbieding.titel} |`),
  '',
  '## Gekoppelde snacks',
  '',
  '| Merk | Snack | Prijs | Feednaam | Toelichting |',
  '|---|---|---|---|---|',
  ...snackKoppelingen.map(({ product, aanbieding, note }) => `| ${product.brand} | ${product.name} | ${aanbieding.prijs != null ? `€ ${aanbieding.prijs.toFixed(2).replace('.', ',')}` : '—'} | ${aanbieding.titel} | ${note} |`),
  '',
  '## Snacks bewust niet gekoppeld',
  '',
  '- Purina DentaLife Maxi: de productpagina in de feed geeft HTTP 404; geen link toegevoegd.',
  '- Edgard & Cooper Kip Reep: de productpagina in de feed geeft HTTP 404; geen link toegevoegd.',
  '- Purina DentaLife Loyalty Pack: één feed-URL voor Small, Medium en Maxi; geen eenduidige snack.',
  '- Farm Food Dental Braid: de feednaam is niet eenduidig te koppelen aan Dental Braided Stick of Dental Braided Donut; geen link toegevoegd.',
  ...(snackOnbekend.length
    ? ['', '## Snackregels zonder catalogusproduct', '', ...snackOnbekend.map(({ aanbieding, regel, reden }) => `- ${aanbieding.titel} ↔ ${regel.snackId}: ${reden}`)]
    : []),
  '',
  '## Dubbelzinnig voer — geen link',
  '',
  ...(voerDubbelzinnig.length
    ? voerDubbelzinnig.map(({ product, aanbieding }) => `- ${product.brand} — ${product.name} ↔ ${aanbieding.titel}`)
    : ['Geen.']),
  ...(snackDubbelzinnig.length
    ? ['', '## Dubbelzinnige snacks — geen link', '', ...snackDubbelzinnig.map(({ product, aanbieding }) => `- ${product.brand} — ${product.name} ↔ ${aanbieding.titel}`)]
    : [])
]

if (droog) {
  console.log(regels.join('\n'))
  console.log(`\nProefrun: ${voerKoppelingen.length} voerkoppelingen en ${snackKoppelingen.length} snackkoppelingen; public/winkels.json is niet aangepast.`)
} else {
  mkdirSync(dirname(RAPPORT), { recursive: true })
  writeFileSync(RAPPORT, `${regels.join('\n')}\n`)
  writeFileSync(OUTPUT, `${JSON.stringify(resultaat, null, 2)}\n`)
  console.log(`Geschreven: public/winkels.json (${voerKoppelingen.length} voerlinks, ${snackKoppelingen.length} snacklinks)`)
  console.log(`Rapport: data/winkels/rapport-dierenwinkelxl.md`)
  console.log(`${voerDubbelzinnig.length} dubbelzinnige voerkandidaten en ${snackDubbelzinnig.length} dubbelzinnige snackkandidaten overgeslagen.`)
}
