#!/usr/bin/env node
// Maakt van de voedingswaarde-bestanden één SQL-batch voor Supabase.
//
// Gebruik:
//   node scripts/maak-voedingswaarde-sql.mjs
//   node scripts/maak-voedingswaarde-sql.mjs --bestanden=royal-canin,hills-science-plan
//
// De bestanden staan in data/import/voedingswaarden/<merk>.json. Het script
// matcht elk product tegen de live database op merk, naam, voertype en
// eventueel verpakking. Bij twijfel schrijft het geen SQL: liever een product
// overslaan dan de waarden van een ander product overschrijven.
//
// De waarden in het bestand zijn de volledige set voor die receptversie.
// Ontbrekende waarden zijn null en worden niet ingevoegd. Bestaande rijen voor
// dezelfde receptversie worden eerst verwijderd, zodat een correctie geen oude
// waarde laat staan.

import { existsSync, mkdirSync, readFileSync, readdirSync, writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'
import { CORE_NUTRIENTS, NUTRIENTS, NUTRIENT_BY_KEY, voedingswaardeStatus } from '../src/lib/nutrition.js'

const WORTEL = dirname(dirname(fileURLToPath(import.meta.url)))
const IMPORT = join(WORTEL, 'data', 'import', 'voedingswaarden')
const SQL_MAP = join(WORTEL, 'data', 'import', 'sql')
const VOERTYPES = ['kibble', 'wet', 'raw']
const KERN_KEYS = new Set(CORE_NUTRIENTS.map(({ key }) => key))
const NUTRIENT_KEYS = new Set(NUTRIENTS.map(({ key }) => key))

const problemen = []
const waarschuwingen = []
const overgeslagen = []

const argumenten = new Map(
  process.argv
    .slice(2)
    .filter((ruw) => ruw.startsWith('--'))
    .map((ruw) => {
      const [naam, waarde] = ruw.replace(/^--/, '').split('=')
      return [naam, waarde ?? '']
    })
)
const alleenBestanden = (argumenten.get('bestanden') ?? '')
  .split(',')
  .map((naam) => naam.trim())
  .filter(Boolean)
  .map((naam) => (naam.endsWith('.json') ? naam : `${naam}.json`))
const droog = process.argv.includes('--droog')

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

function normaliseer(tekst = '') {
  return String(tekst).replace(/\s+/g, ' ').trim()
}

function sqlTekst(waarde) {
  if (waarde === null || waarde === undefined || waarde === '') return 'null'
  return `'${String(waarde).replace(/'/g, "''")}'`
}

function sqlGetal(waarde) {
  return Number(waarde).toString()
}

async function haalLiveProducten() {
  const env = leesEnv()
  const url = (process.env.VITE_SUPABASE_URL || env.VITE_SUPABASE_URL || '').replace(/\/$/, '')
  const key = process.env.VITE_SUPABASE_PUBLISHABLE_KEY || env.VITE_SUPABASE_PUBLISHABLE_KEY || ''
  if (!url || !key) throw new Error('Geen Supabase-configuratie gevonden in .env.local.')
  const basis = `${url}/rest/v1/products?select=id,brand,name,food_type,package_size,published,recipe_versions(id,is_current)&published=eq.true&recipe_versions.is_current=eq.true&order=brand.asc,name.asc`
  const rijen = []
  for (let offset = 0; ; offset += 1000) {
    const antwoord = await fetch(`${basis}&limit=1000&offset=${offset}`, {
      headers: { apikey: key, authorization: `Bearer ${key}` }
    })
    if (!antwoord.ok) throw new Error(`Live catalogus: HTTP ${antwoord.status}`)
    const deel = await antwoord.json()
    rijen.push(...deel)
    if (deel.length < 1000) break
  }
  return rijen
}

function matchProduct(product, live) {
  const kandidaten = live.filter((rij) =>
    normaliseer(rij.brand).toLowerCase() === normaliseer(product.merk).toLowerCase()
    && normaliseer(rij.name).toLowerCase() === normaliseer(product.naam).toLowerCase()
    && (!product.voertype || rij.food_type === product.voertype)
  )
  if (kandidaten.length === 1) return kandidaten[0]
  if (kandidaten.length > 1 && normaliseer(product.verpakking)) {
    const metVerpakking = kandidaten.filter((rij) => normaliseer(rij.package_size).toLowerCase() === normaliseer(product.verpakking).toLowerCase())
    if (metVerpakking.length === 1) return metVerpakking[0]
  }
  if (kandidaten.length > 1) return { fout: `meerdere live-producten gevonden (${kandidaten.length}); voeg de juiste verpakking toe` }
  return { fout: 'niet gevonden in de live database' }
}

function controleerProduct(product, bestand) {
  const waar = `${bestand} → ${product.merk ?? '?'} — ${product.naam ?? '?'}`
  const mist = ['merk', 'naam', 'voertype', 'bronUrl', 'gecontroleerd', 'basis'].filter((veld) => !normaliseer(product[veld] ?? ''))
  if (mist.length) {
    problemen.push(`${waar}: verplichte velden ontbreken: ${mist.join(', ')}`)
    return false
  }
  if (!VOERTYPES.includes(product.voertype)) {
    problemen.push(`${waar}: voertype "${product.voertype}" bestaat niet (kibble, wet of raw)`)
    return false
  }
  if (!/^https?:\/\//.test(product.bronUrl)) {
    problemen.push(`${waar}: bronUrl is geen webadres`)
    return false
  }
  if (!/^\d{4}-\d{2}-\d{2}$/.test(product.gecontroleerd)) {
    problemen.push(`${waar}: gecontroleerd is geen datum (jjjj-mm-dd)`)
    return false
  }
  if (product.basis !== 'as-fed') {
    problemen.push(`${waar}: basis moet voorlopig "as-fed" zijn`)
    return false
  }
  if (!product.waarden || typeof product.waarden !== 'object' || Array.isArray(product.waarden)) {
    problemen.push(`${waar}: waarden moet een object zijn`)
    return false
  }
  const onbekend = Object.keys(product.waarden).filter((key) => !NUTRIENT_KEYS.has(key))
  if (onbekend.length) problemen.push(`${waar}: onbekende nutrienten: ${onbekend.join(', ')}`)
  for (const [key, waarde] of Object.entries(product.waarden)) {
    if (waarde === null || waarde === undefined || waarde === '') continue
    const nutrient = NUTRIENT_BY_KEY[key]
    const getal = Number(String(waarde).replace(',', '.'))
    if (!Number.isFinite(getal) || getal < 0) {
      problemen.push(`${waar}: ${key} is geen geldig getal`)
      continue
    }
    const maximum = nutrient.unit === 'kcal/100g' ? 1000 : 100
    if (getal > maximum) problemen.push(`${waar}: ${key} is te hoog (${getal})`)
  }
  if (product.waarden.protein == null || product.waarden.fat == null) {
    problemen.push(`${waar}: eiwit en vet zijn verplicht; laat ze niet leeg`)
    return false
  }
  const gevuld = Object.entries(product.waarden).filter(([, waarde]) => waarde !== null && waarde !== undefined && waarde !== '')
  if (!gevuld.length) {
    problemen.push(`${waar}: geen enkele voedingswaarde ingevuld`)
    return false
  }
  const ontbrekendeKern = [...KERN_KEYS].filter((key) => product.waarden[key] == null)
  if (ontbrekendeKern.length) {
    waarschuwingen.push(`${waar}: kernwaarden niet vermeld: ${ontbrekendeKern.join(', ')}`)
  }
  return true
}

const bestanden = (existsSync(IMPORT) ? readdirSync(IMPORT).filter((naam) => naam.endsWith('.json')).sort() : []).filter(
  (naam) => !alleenBestanden.length || alleenBestanden.includes(naam)
)
if (!bestanden.length) {
  console.error(`Geen voedingswaarde-bestanden gevonden in ${IMPORT}.`)
  process.exit(1)
}

const producten = []
const gezien = new Set()
for (const bestand of bestanden) {
  let inhoud
  try {
    inhoud = JSON.parse(readFileSync(join(IMPORT, bestand), 'utf8'))
  } catch (fout) {
    problemen.push(`${bestand}: kon niet worden gelezen (${fout.message})`)
    continue
  }
  const lijst = Array.isArray(inhoud.producten) ? inhoud.producten : []
  if (!lijst.length) {
    problemen.push(`${bestand}: geen producten`)
    continue
  }
  for (const product of lijst) {
    if (!controleerProduct(product, bestand)) continue
    const sleutel = `${normaliseer(product.merk).toLowerCase()}|${normaliseer(product.naam).toLowerCase()}|${product.voertype}|${normaliseer(product.verpakking).toLowerCase()}`
    if (gezien.has(sleutel)) {
      problemen.push(`${bestand} → ${product.merk} — ${product.naam}: dubbel in de invoer`)
      continue
    }
    gezien.add(sleutel)
    producten.push({ bestand, product })
  }
}

let live
try {
  live = await haalLiveProducten()
} catch (fout) {
  console.error(String(fout.message))
  process.exit(1)
}

const sqlRegels = ['begin;', '']
const verwerkt = []
for (const { bestand, product } of producten) {
  const match = matchProduct(product, live)
  if (match.fout) {
    overgeslagen.push({ bestand, product, reden: match.fout })
    continue
  }
  const versie = match.recipe_versions?.find(({ is_current }) => is_current)
  if (!versie?.id) {
    overgeslagen.push({ bestand, product, reden: 'geen huidige receptversie' })
    continue
  }
  const waarden = Object.entries(product.waarden)
    .filter(([, waarde]) => waarde !== null && waarde !== undefined && waarde !== '')
    .map(([key, waarde]) => [key, Number(String(waarde).replace(',', '.'))])
  if (!waarden.length) {
    overgeslagen.push({ bestand, product, reden: 'geen waarden' })
    continue
  }
  const rows = waarden.map(([key, waarde]) => ({ nutrient_key: key, value: waarde }))
  const status = voedingswaardeStatus(rows)
  verwerkt.push({ bestand, product, match, versie, waarden, status })

  sqlRegels.push(`-- ${product.merk} — ${product.naam} (${product.voertype})`)
  sqlRegels.push('update public.recipe_versions')
  sqlRegels.push(`   set nutrition_source_url = ${sqlTekst(product.bronUrl)},`)
  sqlRegels.push(`       nutrition_checked_at = ${sqlTekst(product.gecontroleerd)},`)
  sqlRegels.push(`       nutrition_note = ${sqlTekst(normaliseer(product.notitie ?? ''))}`)
  sqlRegels.push(` where id = ${sqlTekst(versie.id)};`)
  sqlRegels.push(`delete from public.recipe_nutrition where recipe_version_id = ${sqlTekst(versie.id)};`)
  sqlRegels.push('insert into public.recipe_nutrition (recipe_version_id, nutrient_key, value, basis) values')
  sqlRegels.push(waarden.map(([key, waarde]) => `  (${sqlTekst(versie.id)}, ${sqlTekst(key)}, ${sqlGetal(waarde)}, 'as-fed')`).join(',\n') + ';')
  sqlRegels.push('')
}
sqlRegels.push('commit;', '')

console.log(`Bestanden: ${bestanden.length}`)
console.log(`Producten in invoer: ${producten.length}`)
console.log(`Gematcht: ${verwerkt.length}`)
console.log(`Overgeslagen: ${overgeslagen.length}`)
console.log(`Waarschuwingen: ${waarschuwingen.length}`)
console.log(`Problemen: ${problemen.length}`)
if (waarschuwingen.length) {
  console.log('\nWaarschuwingen:')
  for (const regel of waarschuwingen) console.log(`  - ${regel}`)
}
if (overgeslagen.length) {
  console.log('\nOvergeslagen:')
  for (const { bestand, product, reden } of overgeslagen) console.log(`  - ${bestand} → ${product.merk} — ${product.naam}: ${reden}`)
}
if (problemen.length) {
  console.log('\nProblemen:')
  for (const regel of problemen) console.log(`  - ${regel}`)
  process.exit(1)
}
if (!verwerkt.length) {
  console.error('Geen enkel product gematcht; geen SQL geschreven.')
  process.exit(1)
}

if (!droog) {
  mkdirSync(SQL_MAP, { recursive: true })
  const datum = new Date().toISOString().slice(0, 10).replace(/-/g, '')
  let nummer = 1
  let doel
  do {
    doel = join(SQL_MAP, `batch-voeding-${datum}-${String(nummer).padStart(2, '0')}.sql`)
    nummer += 1
  } while (existsSync(doel))
  writeFileSync(doel, `${sqlRegels.join('\n')}`)
  console.log(`\nGeschreven: ${doel}`)
}
console.log('\nPer product:')
for (const { product, status } of verwerkt) {
  console.log(`  - ${product.merk} — ${product.naam}: ${status.aantal}/${status.totaal} kern, ${status.aanvullendAantal}/${status.aanvullendTotaal} aanvullend`)
}
