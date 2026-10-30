#!/usr/bin/env node
// Maakt per merkgroep een opdrachtbestand voor de voedingswaarde-agents.
//
// Een product wordt overgeslagen als de huidige receptversie al voedingswaarden
// heeft. Zo kunnen de agents zonder dubbel werk verder bouwen op de pilot.
//
// Gebruik: node scripts/maak-voedingswaarde-opdrachten.mjs

import { existsSync, mkdirSync, readFileSync, writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'

const WORTEL = dirname(dirname(fileURLToPath(import.meta.url)))
const DOEL = join(WORTEL, 'data', 'import', 'voedingswaarden', 'opdrachten')

const GROEPEN = [
  { slug: 'royal-canin', label: 'Royal Canin', merken: ['Royal Canin'] },
  { slug: 'hills', label: "Hill's", merken: ["Hill's Science Plan", "Hill's Prescription Diet"] },
  { slug: 'eukanuba', label: 'Eukanuba', merken: ['Eukanuba'] },
  { slug: 'prins', label: 'Prins Petfoods', merken: ['Prins Petfoods'] },
  { slug: 'purina', label: 'Purina', merken: ['Purina Pro Plan', 'Purina Pro Plan Veterinary Diets', 'Purina One'] },
  { slug: 'jarco', label: 'Jarco', merken: ['Jarco'] },
  { slug: 'darf', label: 'DARF', merken: ['DARF'] },
  { slug: 'butchers', label: "Butcher's", merken: ["Butcher's"] },
  { slug: 'renske', label: 'Renske', merken: ['Renske'] },
  { slug: 'edgard-en-cooper', label: 'Edgard & Cooper', merken: ['Edgard & Cooper'] }
]

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

const basis = `${url}/rest/v1/products?select=id,brand,name,food_type,package_size,source_url,recipe_versions(is_current,recipe_nutrition(nutrient_key))&published=eq.true&recipe_versions.is_current=eq.true&order=brand.asc,name.asc`
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

mkdirSync(DOEL, { recursive: true })
const vandaag = new Date().toISOString().slice(0, 10)
const rapport = []
for (const groep of GROEPEN) {
  const rijen = producten.filter((product) => groep.merken.includes(product.brand))
  const zonderBron = rijen.filter((product) => !/^https?:\/\//.test(product.source_url ?? ''))
  const metVoeding = rijen.filter((product) => (product.recipe_versions?.[0]?.recipe_nutrition ?? []).length > 0)
  const teDoen = rijen
    .filter((product) => !metVoeding.includes(product) && /^https?:\/\//.test(product.source_url ?? ''))
    .map((product) => ({
      merk: product.brand,
      naam: product.name,
      voertype: product.food_type,
      verpakking: product.package_size || '',
      bronUrl: product.source_url
    }))
  const bestand = {
    groep: groep.slug,
    label: groep.label,
    merken: groep.merken,
    opgehaald: vandaag,
    aantal: teDoen.length,
    zonderBron: zonderBron.map((product) => ({ merk: product.brand, naam: product.name, voertype: product.food_type })),
    producten: teDoen
  }
  writeFileSync(join(DOEL, `${groep.slug}.json`), `${JSON.stringify(bestand, null, 2)}\n`)
  rapport.push({ groep: groep.label, totaal: rijen.length, klaar: metVoeding.length, teDoen: teDoen.length, zonderBron: zonderBron.length })
}

console.log('Groep\tTotaal\tAl gedaan\tTe doen\tZonder bron')
for (const rij of rapport) console.log(`${rij.groep}\t${rij.totaal}\t${rij.klaar}\t${rij.teDoen}\t${rij.zonderBron}`)
console.log(`\nGeschreven naar ${DOEL}`)
