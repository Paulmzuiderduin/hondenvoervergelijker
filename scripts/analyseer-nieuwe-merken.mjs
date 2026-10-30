#!/usr/bin/env node
// Analyseert nieuwe importbestanden met dezelfde allergenenkeuring als de site.
// Gebruik:
//   node scripts/analyseer-nieuwe-merken.mjs --bestanden=iams,purina-one
//   node scripts/analyseer-nieuwe-merken.mjs --bestanden=iams --schrijven
//
// Het script wijzigt niets aan de database. Het laat zien welke allergenen de
// keuring herkent, welke woorden nog onbekend zijn en welke termen als
// verzamelterm worden gezien. Daarmee kunnen we de woordenlijst gericht
// aanvullen voordat de import naar Supabase gaat.

import { existsSync, readFileSync, writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'
import { ALLERGEN_LABELS, assessLabel, setCustomTerms } from '../src/lib/allergens.js'

const WORTEL = dirname(dirname(fileURLToPath(import.meta.url)))
const IMPORT = join(WORTEL, 'data', 'import')

function leesEnv() {
  const pad = join(WORTEL, '.env.local')
  if (!existsSync(pad)) return {}
  return Object.fromEntries(
    readFileSync(pad, 'utf8')
      .split(/\r?\n/)
      .filter((regel) => regel.includes('=') && !regel.trim().startsWith('#'))
      .map((regel) => {
        const index = regel.indexOf('=')
        return [regel.slice(0, index).trim(), regel.slice(index + 1).trim()]
      })
  )
}

const argumenten = new Map(
  process.argv
    .slice(2)
    .filter((ruw) => ruw.startsWith('--'))
    .map((ruw) => {
      const [naam, waarde] = ruw.replace(/^--/, '').split('=')
      return [naam, waarde ?? '']
    })
)
const bestanden = (argumenten.get('bestanden') ?? '')
  .split(',')
  .map((naam) => naam.trim())
  .filter(Boolean)
  .map((naam) => (naam.endsWith('.json') ? naam : `${naam}.json`))
const schrijven = process.argv.includes('--schrijven')

const env = leesEnv()
const url = (process.env.VITE_SUPABASE_URL || env.VITE_SUPABASE_URL || '').replace(/\/$/, '')
const key = process.env.VITE_SUPABASE_PUBLISHABLE_KEY || env.VITE_SUPABASE_PUBLISHABLE_KEY || ''

async function haalTermen() {
  if (!url || !key) {
    console.log('Let op: geen Supabase-configuratie; alleen de ingebouwde woorden worden gebruikt.')
    return []
  }
  const termen = []
  for (let offset = 0; ; offset += 1000) {
    const antwoord = await fetch(`${url}/rest/v1/ingredient_terms?select=term,kind,allergen_keys&order=term&limit=1000&offset=${offset}`, {
      headers: { apikey: key, authorization: `Bearer ${key}` }
    })
    if (!antwoord.ok) throw new Error(`ingredient_terms: HTTP ${antwoord.status}`)
    const deel = await antwoord.json()
    termen.push(...deel)
    if (deel.length < 1000) break
  }
  return termen
}

const termen = await haalTermen()
const extraPad = join(IMPORT, 'uitbreiding', 'extra-termen.json')
const extraTermen = existsSync(extraPad) ? JSON.parse(readFileSync(extraPad, 'utf8')) : []
setCustomTerms([...termen, ...extraTermen])

const rapport = []
const onbekend = new Map()
const verborgen = new Map()
let totaalProducten = 0
let productenMetOnbekend = 0

for (const bestand of bestanden) {
  const pad = join(IMPORT, bestand)
  if (!existsSync(pad)) {
    console.log(`Onbekend bestand: ${bestand}`)
    continue
  }
  const inhoud = JSON.parse(readFileSync(pad, 'utf8'))
  const producten = Array.isArray(inhoud.producten) ? inhoud.producten : []
  console.log(`\n## ${bestand} (${producten.length} producten)`)
  for (const product of producten) {
    totaalProducten += 1
    const uitslag = assessLabel(product.etiketNl ?? '')
    const unknown = [...new Set(uitslag.unknown)]
    const hidden = [...new Set(uitslag.hidden.map(({ word }) => word))]
    const allergenen = [...new Set(uitslag.allergens)].map((key) => ALLERGEN_LABELS[key] ?? key)
    if (unknown.length) productenMetOnbekend += 1
    for (const woord of unknown) onbekend.set(woord, (onbekend.get(woord) ?? 0) + 1)
    for (const woord of hidden) verborgen.set(woord, (verborgen.get(woord) ?? 0) + 1)
    console.log(`\n- ${product.merk} — ${product.naam}`)
    console.log(`  allergenen: ${allergenen.length ? allergenen.join(', ') : 'geen'}`)
    if (hidden.length) console.log(`  verzameltermen: ${hidden.join(', ')}`)
    if (unknown.length) console.log(`  ONBEKEND: ${unknown.join(', ')}`)
    rapport.push({ bestand, merk: product.merk, naam: product.naam, allergenen, hidden, unknown })
  }
}

console.log('\n## Samenvatting')
console.log(`- ${totaalProducten} producten geanalyseerd`)
console.log(`- ${productenMetOnbekend} producten met minimaal één onbekend woord`)
console.log(`- ${onbekend.size} onbekende woorden`)
if (onbekend.size) {
  console.log('\nOnbekende woorden (aantal producten):')
  for (const [woord, aantal] of [...onbekend.entries()].sort((a, b) => b[1] - a[1] || a[0].localeCompare(b[0], 'nl'))) {
    console.log(`  ${woord}\t${aantal}`)
  }
}
if (verborgen.size) {
  console.log('\nVerzameltermen (aantal producten):')
  for (const [woord, aantal] of [...verborgen.entries()].sort((a, b) => b[1] - a[1] || a[0].localeCompare(b[0], 'nl'))) {
    console.log(`  ${woord}\t${aantal}`)
  }
}

if (schrijven) {
  const doel = join(IMPORT, 'uitbreiding', 'analyse-nieuwe-merken.json')
  writeFileSync(doel, `${JSON.stringify({
    opgehaald: new Date().toISOString().slice(0, 10),
    termen: termen.length,
    totaalProducten,
    productenMetOnbekend,
    onbekend: [...onbekend.entries()].sort((a, b) => b[1] - a[1] || a[0].localeCompare(b[0], 'nl')),
    verborgen: [...verborgen.entries()].sort((a, b) => b[1] - a[1] || a[0].localeCompare(b[0], 'nl')),
    producten: rapport
  }, null, 2)}\n`)
  console.log(`\nGeschreven: ${doel}`)
}
