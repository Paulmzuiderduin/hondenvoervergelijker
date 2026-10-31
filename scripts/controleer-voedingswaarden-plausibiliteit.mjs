#!/usr/bin/env node
// Maakt een rapport van voedingswaarden die intern niet kloppen: een macro-som
// boven 100%, een onmogelijk hoge vezel, een kcal die lager is dan de energie
// uit eiwit en vet, of vocht dat niet bij het voertype past. Het script wijzigt
// niets; het is een controle voor de redactie.
//
// Gebruik:
//   node scripts/controleer-voedingswaarden-plausibiliteit.mjs
//   node scripts/controleer-voedingswaarden-plausibiliteit.mjs --fout

import { existsSync, readFileSync, writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'
import { beoordeelVoedingswaarden } from '../src/lib/plausibility.js'

const WORTEL = dirname(dirname(fileURLToPath(import.meta.url)))
const DOEL = join(WORTEL, 'data', 'import', 'voedingswaarden', 'plausibiliteit.md')

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

const producten = []
for (let offset = 0; ; offset += 1000) {
  const antwoord = await fetch(`${url}/rest/v1/products?select=brand,name,food_type,recipe_versions(recipe_nutrition(nutrient_key,value))&published=eq.true&recipe_versions.is_current=eq.true&limit=1000&offset=${offset}`, {
    headers: { apikey: key, authorization: `Bearer ${key}` }
  })
  if (!antwoord.ok) {
    console.error(`Supabase: HTTP ${antwoord.status}`)
    process.exit(1)
  }
  const deel = await antwoord.json()
  producten.push(...deel)
  if (deel.length < 1000) break
}

const rijen = []
for (const product of producten) {
  const waarden = {}
  for (const nutrient of product.recipe_versions?.[0]?.recipe_nutrition ?? []) {
    if (nutrient.value != null) waarden[nutrient.nutrient_key] = Number(nutrient.value)
  }
  const { signalen } = beoordeelVoedingswaarden(waarden, product.food_type)
  if (signalen.length) rijen.push({ merk: product.brand, naam: product.name, type: product.food_type, signalen })
}

const cel = (waarde) => String(waarde ?? '').replace(/\|/g, '\\|').replace(/\r?\n/g, ' ')
const regels = [
  '# Plausibiliteit voedingswaarden',
  '',
  `Datum: ${new Date().toISOString().slice(0, 10)}`,
  `Producten gecontroleerd: ${producten.length}`,
  `Producten met een signaal: ${rijen.length}`,
  '',
  'Deze signalen zijn geen automatische correcties. De redactie controleert de bron en past daarna de waarde of de notitie aan.',
  ''
]
if (rijen.length) {
  regels.push('| Merk | Product | Type | Signaal |', '|---|---|---|---|')
  for (const rij of rijen) regels.push(`| ${cel(rij.merk)} | ${cel(rij.naam)} | ${cel(rij.type)} | ${cel(rij.signalen.join(' '))} |`)
  regels.push('')
}
writeFileSync(DOEL, `${regels.join('\n')}\n`)
console.log(`Rapport: ${DOEL}`)
console.log(`Producten: ${producten.length} · met signaal: ${rijen.length}`)
for (const rij of rijen) console.log(`- ${rij.merk} — ${rij.naam}: ${rij.signalen.join(' ')}`)
if (process.argv.includes('--fout') && rijen.length) process.exit(1)
