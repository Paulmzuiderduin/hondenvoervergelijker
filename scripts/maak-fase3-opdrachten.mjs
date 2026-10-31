#!/usr/bin/env node
// Maakt clusteredities voor fase 3: alle publicaties zonder voedingswaarden,
// gegroepeerd in batches van maximaal 70 producten. Elke cluster is één
// opdracht voor één agent; de agent schrijft weer bestanden van maximaal 25
// producten.
//
// Gebruik: node scripts/maak-fase3-opdrachten.mjs

import { existsSync, mkdirSync, readFileSync, writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'

const WORTEL = dirname(dirname(fileURLToPath(import.meta.url)))
const DOEL = join(WORTEL, 'data', 'import', 'voedingswaarden', 'opdrachten')
const MAX_PER_CLUSTER = 70

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

const zonderVoeding = producten.filter((product) => (product.recipe_versions?.[0]?.recipe_nutrition ?? []).length === 0)
const perMerk = new Map()
const zonderBron = []
for (const product of zonderVoeding) {
  if (!/^https?:\/\//.test(product.source_url ?? '')) {
    zonderBron.push({ merk: product.brand, naam: product.name, voertype: product.food_type })
    continue
  }
  if (!perMerk.has(product.brand)) perMerk.set(product.brand, [])
  perMerk.get(product.brand).push({
    merk: product.brand,
    naam: product.name,
    voertype: product.food_type,
    verpakking: product.package_size || '',
    bronUrl: product.source_url
  })
}

const merken = [...perMerk.entries()]
  .map(([merk, lijst]) => ({ merk, lijst }))
  .sort((a, b) => b.lijst.length - a.lijst.length || a.merk.localeCompare(b.merk, 'nl'))

const clusters = []
for (const { merk, lijst } of merken) {
  let cluster = clusters.at(-1)
  if (!cluster || (cluster.producten.length > 0 && cluster.producten.length + lijst.length > MAX_PER_CLUSTER)) {
    cluster = { merken: [], producten: [] }
    clusters.push(cluster)
  }
  cluster.merken.push(merk)
  cluster.producten.push(...lijst)
}

mkdirSync(DOEL, { recursive: true })
const vandaag = new Date().toISOString().slice(0, 10)
clusters.forEach((cluster, index) => {
  const nummer = String(index + 1).padStart(2, '0')
  const bestand = {
    cluster: `fase3-${nummer}`,
    opgehaald: vandaag,
    aantal: cluster.producten.length,
    merken: cluster.merken,
    zonderBron,
    producten: cluster.producten
  }
  writeFileSync(join(DOEL, `fase3-${nummer}.json`), `${JSON.stringify(bestand, null, 2)}\n`)
})

console.log(`Producten zonder voedingswaarden: ${zonderVoeding.length}`)
console.log(`Zonder bron: ${zonderBron.length}`)
console.log(`Clusters: ${clusters.length}`)
for (const [index, cluster] of clusters.entries()) {
  console.log(`  fase3-${String(index + 1).padStart(2, '0')}: ${cluster.producten.length} producten — ${cluster.merken.join(', ')}`)
}
console.log(`\nGeschreven naar ${DOEL}`)
