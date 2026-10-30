#!/usr/bin/env node
// Toont per merk hoeveel producten volledige, gedeeltelijke of geen
// voedingswaarden hebben. Schrijft ook een Markdown-rapport voor de volgende
// batches. Het script wijzigt niets in de database.

import { existsSync, readFileSync, writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'
import { voedingswaardeStatus } from '../src/lib/nutrition.js'

const WORTEL = dirname(dirname(fileURLToPath(import.meta.url)))
const DOEL = join(WORTEL, 'data', 'import', 'voedingswaarden', 'voortgang.md')

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

const env = leesEnv()
const url = (process.env.VITE_SUPABASE_URL || env.VITE_SUPABASE_URL || '').replace(/\/$/, '')
const key = process.env.VITE_SUPABASE_PUBLISHABLE_KEY || env.VITE_SUPABASE_PUBLISHABLE_KEY || ''
if (!url || !key) {
  console.error('Geen Supabase-configuratie gevonden in .env.local.')
  process.exit(1)
}

const basis = `${url}/rest/v1/products?select=brand,food_type,recipe_versions(recipe_nutrition(nutrient_key,value,basis))&published=eq.true&recipe_versions.is_current=eq.true&order=brand.asc`
const producten = []
for (let offset = 0; ; offset += 1000) {
  const antwoord = await fetch(`${basis}&limit=1000&offset=${offset}`, {
    headers: { apikey: key, authorization: `Bearer ${key}` }
  })
  if (!antwoord.ok) {
    console.error(`Live catalogus: HTTP ${antwoord.status}`)
    process.exit(1)
  }
  const deel = await antwoord.json()
  producten.push(...deel)
  if (deel.length < 1000) break
}

const perMerk = new Map()
for (const product of producten) {
  const rijen = product.recipe_versions?.[0]?.recipe_nutrition ?? []
  const status = voedingswaardeStatus(rijen)
  if (!perMerk.has(product.brand)) {
    perMerk.set(product.brand, { totaal: 0, volledig: 0, gedeeltelijk: 0, ontbreekt: 0, metKcal: 0, aanvullend: 0 })
  }
  const telling = perMerk.get(product.brand)
  telling.totaal += 1
  if (status.volledig) telling.volledig += 1
  else if (status.gedeeltelijk) telling.gedeeltelijk += 1
  else telling.ontbreekt += 1
  if (rijen.some((rij) => rij.nutrient_key === 'kcal' && Number(rij.value) > 0)) telling.metKcal += 1
  if (status.aanvullendAantal > 0) telling.aanvullend += 1
}

const regels = [...perMerk.entries()].sort((a, b) => b[1].totaal - a[1].totaal || a[0].localeCompare(b[0], 'nl'))
const totaal = producten.length
const volledig = regels.reduce((som, [, c]) => som + c.volledig, 0)
const gedeeltelijk = regels.reduce((som, [, c]) => som + c.gedeeltelijk, 0)
const ontbreekt = regels.reduce((som, [, c]) => som + c.ontbreekt, 0)
const metKcal = regels.reduce((som, [, c]) => som + c.metKcal, 0)

console.log(`Producten: ${totaal}`)
console.log(`Volledig: ${volledig} · gedeeltelijk: ${gedeeltelijk} · ontbreekt: ${ontbreekt} · met kcal: ${metKcal}`)
console.log('')
console.log('Merk\tTotaal\tVolledig\tGedeeltelijk\tOntbreekt\tMet kcal')
for (const [merk, c] of regels) {
  console.log(`${merk}\t${c.totaal}\t${c.volledig}\t${c.gedeeltelijk}\t${c.ontbreekt}\t${c.metKcal}`)
}

const datum = new Date().toISOString().slice(0, 10)
const markdown = [
  '# Voortgang voedingswaarden',
  '',
  `Momentopname: ${datum}.`,
  '',
  `- ${totaal} gepubliceerde producten`,
  `- ${volledig} volledig (6 kernwaarden)`,
  `- ${gedeeltelijk} gedeeltelijk`,
  `- ${ontbreekt} zonder voedingswaarden`,
  `- ${metKcal} met energie (kcal/100 g)`,
  '',
  '| Merk | Totaal | Volledig | Gedeeltelijk | Ontbreekt | Met kcal |',
  '|---|---:|---:|---:|---:|---:|',
  ...regels.map(([merk, c]) => `| ${merk.replace(/\|/g, '\\|')} | ${c.totaal} | ${c.volledig} | ${c.gedeeltelijk} | ${c.ontbreekt} | ${c.metKcal} |`),
  ''
].join('\n')
writeFileSync(DOEL, markdown)
console.log(`\nGeschreven: ${DOEL}`)
