#!/usr/bin/env node
// Controleert de werkbestanden in data/import/uitbreiding/ voordat ze worden
// samengevoegd met de echte importbestanden. Dit script schrijft niets.

import { existsSync, readFileSync, readdirSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'

const WORTEL = dirname(dirname(fileURLToPath(import.meta.url)))
const MAP = join(WORTEL, 'data', 'import', 'uitbreiding')
const VOERTYPES = new Set(['kibble', 'wet', 'raw'])
const VERTAALNOTE = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.'
const ENGELSE_WOORDEN = /\b(chicken|beef|turkey|salmon|fish|meal|fresh|dried|peas|rice|oil|egg|duck|lamb|pork|herring|cellulose|minerals|vitamins|composition|ingredients)\b/i
const STRENG = process.argv.includes('--streng')

const alias = new Map([
  ['bonzo (purina)', 'Bonzo'],
  ['prins', 'Prins Petfoods'],
  ['greenheart premiums', 'Greenheart-Premiums'],
  ['greenheart', 'Greenheart-Premiums'],
  ['smolke', 'Smølke'],
  ['raw4dogs', 'RAW4DOGS'],
  ['butchers', "Butcher's"]
])
const canoniek = (naam = '') => {
  const schoon = norm(naam)
  return alias.get(schoon.toLowerCase()) ?? schoon
}

const fouten = []
const waarschuwingen = []
const samenvatting = []
const perMerk = new Map()
const perMerkTwijfel = new Map()

function norm(tekst = '') {
  return String(tekst ?? '').replace(/\s+/g, ' ').trim()
}

function sleutel(tekst = '') {
  return norm(tekst).toLowerCase().replace(/\s*\/\s*/g, '/')
}

if (!existsSync(MAP)) {
  console.log('Geen map data/import/uitbreiding gevonden.')
  process.exit(0)
}

const bestanden = readdirSync(MAP).filter((naam) => naam.endsWith('.json') && naam !== 'merken.json').sort()
const gezien = new Map()
const teksten = new Map()

for (const bestand of bestanden) {
  let inhoud
  try {
    inhoud = JSON.parse(readFileSync(join(MAP, bestand), 'utf8'))
  } catch (fout) {
    fouten.push(`${bestand}: geen geldige JSON (${fout.message})`)
    continue
  }
  const producten = Array.isArray(inhoud.producten) ? inhoud.producten : []
  if (!producten.length) {
    waarschuwingen.push(`${bestand}: geen producten`)
    continue
  }
  if (!/^\d{4}-\d{2}-\d{2}$/.test(String(inhoud.opgehaald ?? ''))) {
    fouten.push(`${bestand}: "opgehaald" ontbreekt of is geen jjjj-mm-dd`)
  }
  if (!/^https?:\/\//.test(String(inhoud.bron ?? ''))) {
    waarschuwingen.push(`${bestand}: "bron" is geen webadres`)
  }

  const perType = { kibble: 0, wet: 0, raw: 0, twijfel: 0 }
  for (const [i, product] of producten.entries()) {
    const waar = `${bestand} #${i + 1} (${product.merk ?? '?'} — ${product.naam ?? '?'})`
    const merk = canoniek(product.merk ?? '')
    if (merk) perMerk.set(merk, (perMerk.get(merk) ?? 0) + 1)
    const twijfel = norm(product.twijfel ?? '')
    if (twijfel) {
      perType.twijfel++
      if (merk) perMerkTwijfel.set(merk, (perMerkTwijfel.get(merk) ?? 0) + 1)
      if (norm(product.etiketOrigineel) || norm(product.etiketNl)) {
        fouten.push(`${waar}: twijfelrecord mag geen etiketvelden hebben`)
      }
      continue
    }
    const mist = ['merk', 'naam', 'voertype', 'bronUrl', 'etiketOrigineel', 'etiketNl'].filter((veld) => !norm(product[veld]))
    if (mist.length) {
      fouten.push(`${waar}: verplichte velden ontbreken: ${mist.join(', ')}`)
      continue
    }
    if (!VOERTYPES.has(product.voertype)) {
      fouten.push(`${waar}: onbekend voertype "${product.voertype}"`)
      continue
    }
    if (!/^https?:\/\//.test(product.bronUrl)) {
      fouten.push(`${waar}: bronUrl is geen webadres`)
    }
    const origineel = norm(product.etiketOrigineel)
    const nederlands = norm(product.etiketNl)
    if (nederlands.length < 10) fouten.push(`${waar}: Nederlandse tekst is korter dan 10 tekens`)
    else if (nederlands.length < 30) waarschuwingen.push(`${waar}: korte maar mogelijke officiële ingrediëntenlijst (${nederlands.length} tekens)`)

    if (/<\/?[a-z][^>]*>/i.test(nederlands) || /&(amp|nbsp|quot|#\d+);/.test(nederlands)) {
      fouten.push(`${waar}: Nederlandse tekst bevat HTML`)
    }
    if (/(heerlijk|ideaal|jouw hond|onze unieke|perfect voor)/i.test(nederlands)) {
      waarschuwingen.push(`${waar}: Nederlandse tekst bevat reclametaal`)
    }
    if (!nederlands.includes(',') && !nederlands.includes('%')) {
      waarschuwingen.push(`${waar}: geen komma en geen percentage in de Nederlandse tekst`)
    }
    if (nederlands !== origineel && !norm(product.aantekening)) {
      fouten.push(`${waar}: vertaling zonder aantekening`)
    }
    if (nederlands === origineel && norm(product.aantekening)) {
      waarschuwingen.push(`${waar}: aantekening aanwezig maar teksten zijn gelijk`)
    }
    if (nederlands === origineel && ENGELSE_WOORDEN.test(origineel) && !norm(product.aantekening)) {
      waarschuwingen.push(`${waar}: origineel lijkt Engels maar is niet vertaald`)
    }
    if (/\b\d+(?:[.,]\d+)?\s*(?:kg|g|gram)\b/i.test(product.naam)) {
      waarschuwingen.push(`${waar}: productnaam bevat een verpakkingsmaat`)
    }
    const productSleutel = `${sleutel(product.merk)}|${sleutel(product.naam)}|${sleutel(product.verpakking)}`
    if (gezien.has(productSleutel)) {
      fouten.push(`${waar}: dubbel met ${gezien.get(productSleutel)}`)
    } else {
      gezien.set(productSleutel, waar)
    }
    const tekstSleutel = sleutel(nederlands)
    if (tekstSleutel.length > 40 && teksten.has(tekstSleutel)) {
      waarschuwingen.push(`${waar}:zelfde etikettekst als ${teksten.get(tekstSleutel)}`)
    } else if (tekstSleutel.length > 40) {
      teksten.set(tekstSleutel, waar)
    }
    perType[product.voertype]++
  }
  samenvatting.push({ bestand, totaal: producten.length, ...perType })
}

console.log('Overzicht werkbestanden:')
for (const r of samenvatting) {
  console.log(`  ${r.bestand.padEnd(28)} ${String(r.totaal).padStart(4)}  kibble ${String(r.kibble).padStart(3)}  wet ${String(r.wet).padStart(3)}  raw ${String(r.raw).padStart(3)}  twijfel ${r.twijfel}`)
}
console.log(`\nTotaal: ${samenvatting.reduce((n, r) => n + r.totaal, 0)} records in ${bestanden.length} bestanden.`)

const manifestPad = join(MAP, 'merken.json')
if (existsSync(manifestPad)) {
  const manifest = JSON.parse(readFileSync(manifestPad, 'utf8'))
  const gevraagd = [...new Set(manifest.map((rij) => rij.canonical))]
  console.log('\nDekking van de merkenlijst:')
  const ontbreekt = []
  for (const merk of gevraagd) {
    const aantal = perMerk.get(merk) ?? 0
    const twijfel = perMerkTwijfel.get(merk) ?? 0
    const status = aantal
      ? `${String(aantal).padStart(4)} records${twijfel ? ` (${twijfel} twijfel)` : ''}`
      : 'ONTBREEKT'
    console.log(`  ${merk.padEnd(34)} ${status}`)
    if (!aantal) ontbreekt.push(merk)
  }
  const onbekend = [...perMerk.keys()].filter((merk) => !gevraagd.includes(merk))
  for (const merk of onbekend) waarschuwingen.push(`werkbestand bevat merk "${merk}" dat niet in merken.json staat`)
  if (ontbreekt.length) {
    const regel = `nog geen werkbestand voor: ${ontbreekt.join(', ')}`
    if (STRENG) fouten.push(regel)
    else waarschuwingen.push(regel)
  }
}

if (fouten.length) {
  console.log(`\nFouten (${fouten.length}):`)
  for (const regel of fouten) console.log(`  - ${regel}`)
}
if (waarschuwingen.length) {
  console.log(`\nWaarschuwingen (${waarschuwingen.length}):`)
  for (const regel of waarschuwingen) console.log(`  - ${regel}`)
}
if (fouten.length) process.exit(1)
