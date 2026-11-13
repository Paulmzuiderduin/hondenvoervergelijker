#!/usr/bin/env node
// Koppelt de nieuwe Alsa Nature- en Ultra Premium Direct-snacks aan hun
// affiliate-feed. De snacks staan lokaal in data/snacks.json; de winkels in
// public/winkels.json. Alleen een exacte bron-URL levert een link op.

import { existsSync, readFileSync, writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'
import { parseTradeTrackerFeed } from './lib/tradetracker-match.mjs'

const WORTEL = dirname(dirname(fileURLToPath(import.meta.url)))
const SNACKS = join(WORTEL, 'data', 'snacks.json')
const WINKELS = join(WORTEL, 'public', 'winkels.json')
const RAPPORT = join(WORTEL, 'data', 'winkels', 'rapport-snack-affiliates.md')
const ALSA_FEED = join(WORTEL, 'data', 'winkels', 'alsa-nature.xml')
const UPD_FEED = join(WORTEL, 'data', 'winkels', 'ultra-premium-direct.xml')

const decodeer = (waarde = '') => String(waarde)
  .replace(/<!\[CDATA\[|\]\]>/g, '')
  .replace(/&amp;/g, '&')
  .replace(/&lt;/g, '<')
  .replace(/&gt;/g, '>')
  .replace(/&quot;/g, '"')
  .replace(/&#39;|&apos;/g, "'")
  .trim()

function directeAlsaUrl(url) {
  try {
    const q = new URL(url).searchParams.get('r')
    return q ? decodeURIComponent(q) : ''
  } catch {
    return ''
  }
}

function directeUpdUrl(url) {
  try {
    const dl = new URL(url).searchParams.get('dl')
    return dl ? `https://www.ultrapremiumdirect.nl/${decodeURIComponent(dl).replace(/^\/+/, '')}` : ''
  } catch {
    return ''
  }
}

const snacks = JSON.parse(readFileSync(SNACKS, 'utf8')).producten ?? []
const perUrl = new Map(snacks.map((snack) => [snack.source_url, snack]))
const aanbiedingen = []

function voegToe(offers, winkel, direct) {
  for (const offer of offers) {
    const snack = perUrl.get(direct(offer.url))
    if (!snack) continue
    aanbiedingen.push({
      snack,
      winkel,
      url: offer.url,
      maat: snack.package_size || offer.maat || '',
      prijs: Number.isFinite(Number(offer.prijs)) && Number(offer.prijs) > 0 ? Number(Number(offer.prijs).toFixed(2)) : null
    })
  }
}

if (existsSync(ALSA_FEED)) {
  const xml = readFileSync(ALSA_FEED, 'utf8')
  const offers = parseTradeTrackerFeed(xml, {
    categorieen: [],
    categoriePrefixen: [
      'Hondenvoeding > Kauwproducten',
      'Hondenvoeding > Hondenkoekjes',
      'Hondenvoeding > Granenvrij hondenvoer > Hondenkoekjes',
      'Hondenvoeding > Granenvrij hondenvoer > Kauwproducten',
      'Hondenvoeding > Pakketten & sets'
    ],
    winkel: 'Alsa Nature'
  })
  voegToe(offers, 'Alsa Nature', directeAlsaUrl)
}

if (existsSync(UPD_FEED)) {
  const xml = readFileSync(UPD_FEED, 'utf8')
  const offers = []
  for (const match of xml.matchAll(/<product_info>([\s\S]*?)<\/product_info>/gi)) {
    const blok = match[1]
    const tag = (naam) => decodeer((blok.match(new RegExp(`<${naam}>([\\s\\S]*?)</${naam}>`, 'i')) ?? [])[1])
    if (tag('category') !== 'Hond' || !tag('category_path').includes('|Hondensnacks')) continue
    offers.push({ titel: tag('title'), prijs: Number(tag('price')) || null, url: tag('link'), maat: '' })
  }
  voegToe(offers, 'Ultra Premium Direct', directeUpdUrl)
}

let winkels = { aanbieders: {} }
if (existsSync(WINKELS)) {
  try {
    const gelezen = JSON.parse(readFileSync(WINKELS, 'utf8'))
    if (gelezen && typeof gelezen.aanbieders === 'object') winkels = gelezen
  } catch {}
}

const snackIds = new Set(snacks.map((snack) => snack.id))
for (const [id, lijst] of Object.entries(winkels.aanbieders ?? {})) {
  if (!snackIds.has(id)) continue
  const over = (Array.isArray(lijst) ? lijst : []).filter((aanbieding) => !['Alsa Nature', 'Ultra Premium Direct'].includes(aanbieding.winkel))
  if (over.length) winkels.aanbieders[id] = over
  else delete winkels.aanbieders[id]
}

for (const { snack, winkel, url, maat, prijs } of aanbiedingen) {
  const lijst = winkels.aanbieders[snack.id] ?? []
  lijst.push({ winkel, url, maat, prijs })
  winkels.aanbieders[snack.id] = lijst
}

winkels.bijgewerkt = new Date().toISOString()
winkels.netwerk = 'TradeTracker en Daisycon'
writeFileSync(WINKELS, `${JSON.stringify(winkels, null, 2)}\n`)

const perWinkel = aanbiedingen.reduce((map, aanbieding) => map.set(aanbieding.winkel, (map.get(aanbieding.winkel) || 0) + 1), new Map())
writeFileSync(RAPPORT, [
  '# Snack-affiliates — Alsa Nature en Ultra Premium Direct',
  '',
  ...[...perWinkel.entries()].map(([winkel, aantal]) => `- ${winkel}: ${aantal} snacklink(s)`),
  `- Totaal: ${aanbiedingen.length}`,
  ''
].join('\n'))
console.log(`Snacklinks toegevoegd: ${aanbiedingen.length} (${[...perWinkel.entries()].map(([winkel, aantal]) => `${winkel}: ${aantal}`).join(', ')}).`)
