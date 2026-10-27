#!/usr/bin/env node
// Koppelt producten uit de vergelijker aan aanbiedingen uit affiliate-feeds.
//
// Werkwijze:
//   1. Download in Awin de CSV-feed van Zooplus en/of Medpets.
//   2. Zet de bestanden in data/winkels/ en vul data/winkels/feeds.json in
//      (zie data/winkels/README.md).
//   3. Draai: npm run winkels:koppel
//   4. Controleer data/winkels/rapport.md en commit public/winkels.json.
//
// De koppeling is bewust streng. Liever geen winkelknop dan een knop naar het
// verkeerde product. De volgorde en beoordeling op de site blijven ongewijzigd;
// de winkeldata is een aparte laag.

import { existsSync, readFileSync, writeFileSync, mkdirSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'
import { MINIMUM_SCORE, kiesAanbiedingen, matchScore, merkSleutel, normaliseer } from './lib/winkel-match.mjs'

const WORTEL = dirname(dirname(fileURLToPath(import.meta.url)))
const FEEDS = join(WORTEL, 'data', 'winkels')
const CONFIG = join(FEEDS, 'feeds.json')
const OUTPUT = join(WORTEL, 'public', 'winkels.json')
const RAPPORT = join(FEEDS, 'rapport.md')
const DROGEN = process.argv.includes('--dry-run')

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

function parseCsv(tekst) {
  const eersteRegel = tekst.slice(0, tekst.indexOf('\n') >= 0 ? tekst.indexOf('\n') : tekst.length)
  const kommas = (eersteRegel.match(/,/g) ?? []).length
  const puntenkommas = (eersteRegel.match(/;/g) ?? []).length
  const scheiding = puntenkommas > kommas ? ';' : ','

  const rijen = []
  let veld = ''
  let rij = []
  let tussenAanhalingstekens = false
  for (let i = 0; i < tekst.length; i += 1) {
    const teken = tekst[i]
    if (tussenAanhalingstekens) {
      if (teken === '"' && tekst[i + 1] === '"') {
        veld += '"'
        i += 1
      } else if (teken === '"') {
        tussenAanhalingstekens = false
      } else {
        veld += teken
      }
      continue
    }
    if (teken === '"') tussenAanhalingstekens = true
    else if (teken === scheiding) {
      rij.push(veld)
      veld = ''
    } else if (teken === '\n') {
      rij.push(veld)
      rijen.push(rij)
      rij = []
      veld = ''
    } else if (teken !== '\r') veld += teken
  }
  if (veld.length || rij.length) {
    rij.push(veld)
    rijen.push(rij)
  }
  return rijen.filter((regel) => regel.some((cel) => cel.trim() !== ''))
}

function prijsGetal(waarde) {
  const schoon = String(waarde ?? '').replace(/[^0-9.,-]/g, '').replace(',', '.')
  if (!schoon) return null
  const getal = Number(schoon)
  return Number.isFinite(getal) && getal > 0 ? getal : null
}

function normaliseerKop(kop = '') {
  return String(kop)
    .replace(/^\uFEFF/, '')
    .trim()
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, '_')
    .replace(/^_+|_+$/g, '')
}

const KOLOMMEN = {
  titel: ['product_name', 'name', 'title', 'product_title', 'product'],
  merk: ['brand_name', 'brand', 'manufacturer', 'merk'],
  ean: ['ean', 'gtin', 'product_ean', 'barcode'],
  prijs: ['search_price', 'store_price', 'price', 'prijs', 'sale_price'],
  url: ['aw_deep_link', 'merchant_deep_link', 'deeplink', 'deep_link', 'url', 'link'],
  maat: ['size', 'product_size', 'package_size', 'maat', 'weight']
}

function kiesKolom(kop, voorkeur) {
  for (const naam of voorkeur) if (kop.includes(naam)) return naam
  return null
}

function leesFeed(pad, winkel, kolommen = {}) {
  const tekst = readFileSync(pad, 'utf8')
  const rijen = parseCsv(tekst)
  if (rijen.length < 2) return []
  const kop = rijen[0].map(normaliseerKop)
  const mapping = {}
  for (const [veld, voorkeur] of Object.entries(KOLOMMEN)) {
    mapping[veld] = kolommen[veld] ? normaliseerKop(kolommen[veld]) : kiesKolom(kop, voorkeur)
  }
  if (!mapping.titel || !mapping.url) {
    throw new Error(`${pad}: kolommen voor titel of link niet gevonden`)
  }
  const index = (veld) => (mapping[veld] ? kop.indexOf(mapping[veld]) : -1)

  return rijen.slice(1).map((rij) => ({
    winkel,
    titel: rij[index('titel')] ?? '',
    merk: mapping.merk ? rij[index('merk')] ?? '' : '',
    ean: mapping.ean ? rij[index('ean')] ?? '' : '',
    prijs: mapping.prijs ? prijsGetal(rij[index('prijs')]) : null,
    url: rij[index('url')] ?? '',
    maat: mapping.maat ? rij[index('maat')] ?? '' : ''
  })).filter((aanbieding) => aanbieding.titel && /^https?:\/\//.test(aanbieding.url))
}

async function haalProducten() {
  const env = leesEnv()
  const url = (process.env.VITE_SUPABASE_URL || process.env.SUPABASE_URL || env.VITE_SUPABASE_URL || '').replace(/\/$/, '')
  const key = process.env.VITE_SUPABASE_PUBLISHABLE_KEY || process.env.SUPABASE_PUBLISHABLE_KEY || env.VITE_SUPABASE_PUBLISHABLE_KEY || ''
  if (!url || !key) throw new Error('Supabase-URL of -sleutel ontbreekt (zie .env.local)')

  const rijen = []
  const basis = `${url}/rest/v1/products?select=id,brand,name,package_size,gtin&published=eq.true&order=brand`
  for (let offset = 0; ; offset += 1000) {
    const antwoord = await fetch(`${basis}&limit=1000&offset=${offset}`, {
      headers: { apikey: key, authorization: `Bearer ${key}` }
    })
    if (!antwoord.ok) throw new Error(`Supabase gaf HTTP ${antwoord.status}`)
    const deel = await antwoord.json()
    rijen.push(...deel)
    if (deel.length < 1000) break
  }
  return rijen
}

if (!existsSync(CONFIG)) {
  console.log('Geen data/winkels/feeds.json gevonden.')
  console.log('Zie data/winkels/README.md: kopieer feeds.example.json en zet de CSV-bestanden klaar.')
  process.exit(0)
}

const feeds = JSON.parse(readFileSync(CONFIG, 'utf8'))
const aanbiedingen = []
for (const feed of feeds) {
  const pad = join(FEEDS, feed.bestand)
  if (!existsSync(pad)) {
    console.log(`Let op: ${feed.bestand} ontbreekt; feed overgeslagen.`)
    continue
  }
  const rijen = leesFeed(pad, feed.winkel, feed.kolommen)
  console.log(`${feed.winkel}: ${rijen.length} aanbiedingen gelezen.`)
  aanbiedingen.push(...rijen)
}

if (!aanbiedingen.length) {
  console.log('Geen aanbiedingen gevonden; public/winkels.json is niet aangepast.')
  process.exit(0)
}

const producten = await haalProducten()
console.log(`${producten.length} producten uit de vergelijker geladen.`)

const perMerk = new Map()
for (const product of producten) {
  const sleutel = merkSleutel(product.brand)
  if (!perMerk.has(sleutel)) perMerk.set(sleutel, [])
  perMerk.get(sleutel).push(product)
}

const perProduct = new Map()
const geenMatch = []
const lageZekerheid = []
const perWinkel = new Map()

for (const aanbieding of aanbiedingen) {
  const titel = normaliseer(aanbieding.titel)
  const kandidaten = []
  for (const [sleutel, lijst] of perMerk) {
    if (titel.includes(sleutel)) kandidaten.push(...lijst)
  }

  let beste = null
  for (const product of kandidaten) {
    const score = matchScore(product, { ...aanbieding, merk: product.brand })
    if (!beste || score > beste.score) beste = { product, score }
  }

  perWinkel.set(aanbieding.winkel, (perWinkel.get(aanbieding.winkel) ?? 0) + 1)

  if (!beste || beste.score < MINIMUM_SCORE) {
    geenMatch.push(aanbieding)
    continue
  }
  if (beste.score < 0.9) lageZekerheid.push({ ...aanbieding, product: beste.product, score: beste.score })

  if (!perProduct.has(beste.product.id)) perProduct.set(beste.product.id, [])
  perProduct.get(beste.product.id).push(aanbieding)
}

const resultaat = {}
for (const [productId, lijst] of perProduct) {
  const product = producten.find((p) => p.id === productId)
  const gekozen = kiesAanbiedingen(product, lijst)
  if (!gekozen.length) continue
  resultaat[productId] = gekozen.map(({ winkel, prijs, url, maat }) => ({
    winkel,
    prijs: Number.isFinite(prijs) ? Number(prijs.toFixed(2)) : null,
    url,
    maat: maat || null
  }))
}

const output = {
  bijgewerkt: new Date().toISOString().slice(0, 10),
  netwerk: 'Awin',
  aanbieders: resultaat
}

const gekoppeld = Object.keys(resultaat).length
const metWinkel = Object.values(resultaat).reduce((n, lijst) => n + lijst.length, 0)

const rapportRegels = [
  '# Winkelkoppeling',
  '',
  `Uitgevoerd op ${output.bijgewerkt}.`,
  '',
  `- aanbiedingen gelezen: ${aanbiedingen.length}`,
  `- producten met minimaal één winkel: ${gekoppeld}`,
  `- winkelknoppen totaal: ${metWinkel}`,
  `- niet gekoppeld: ${geenMatch.length}`,
  `- gekoppeld met lagere zekerheid (0,82–0,90): ${lageZekerheid.length}`,
  '',
  '## Per winkel',
  '',
  ...[...perWinkel.entries()].map(([winkel, aantal]) => `- ${winkel}: ${aantal} aanbiedingen`),
  ''
]

if (lageZekerheid.length) {
  rapportRegels.push('## Controleer deze koppelingen', '')
  for (const rij of lageZekerheid.slice(0, 50)) {
    rapportRegels.push(`- ${rij.winkel}: "${rij.titel}" → ${rij.product.brand} — ${rij.product.name} (${rij.score.toFixed(2)})`)
  }
  rapportRegels.push('')
}

if (geenMatch.length) {
  rapportRegels.push('## Niet gekoppeld (eerste 50)', '')
  for (const rij of geenMatch.slice(0, 50)) {
    rapportRegels.push(`- ${rij.winkel}: ${rij.titel}`)
  }
  rapportRegels.push('')
}

mkdirSync(FEEDS, { recursive: true })
writeFileSync(RAPPORT, `${rapportRegels.join('\n')}\n`)

if (!DROGEN) {
  writeFileSync(OUTPUT, `${JSON.stringify(output, null, 2)}\n`)
  console.log(`Geschreven: public/winkels.json (${gekoppeld} producten, ${metWinkel} winkelknoppen).`)
  console.log(`Rapport: data/winkels/rapport.md`)
} else {
  console.log(`Proefrun: ${gekoppeld} producten en ${metWinkel} winkelknoppen zouden worden geschreven.`)
}

if (lageZekerheid.length) {
  console.log(`Let op: ${lageZekerheid.length} koppelingen met lagere zekerheid; zie het rapport.`)
}
