#!/usr/bin/env node
// Controleert de voedingswaarde-JSON-bestanden op vorm, bereik en
// onwaarschijnlijke combinaties. Maakt niets aan en schrijft geen SQL.
//
// Gebruik: node scripts/controleer-voedingswaarden-json.mjs

import { existsSync, readFileSync, readdirSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'
import { CORE_NUTRIENTS, NUTRIENTS, NUTRIENT_BY_KEY, voedingswaardeStatus } from '../src/lib/nutrition.js'

const WORTEL = dirname(dirname(fileURLToPath(import.meta.url)))
const IMPORT = join(WORTEL, 'data', 'import', 'voedingswaarden')
const bestanden = existsSync(IMPORT) ? readdirSync(IMPORT).filter((naam) => naam.endsWith('.json')).sort() : []

const fouten = []
const waarschuwingen = []
const perMerk = new Map()
const gezien = new Map()

for (const bestand of bestanden) {
  let inhoud
  try {
    inhoud = JSON.parse(readFileSync(join(IMPORT, bestand), 'utf8'))
  } catch (fout) {
    fouten.push(`${bestand}: geen geldige JSON (${fout.message})`)
    continue
  }
  const producten = Array.isArray(inhoud.producten) ? inhoud.producten : []
  if (!producten.length) {
    fouten.push(`${bestand}: geen producten`)
    continue
  }
  for (const product of producten) {
    const waar = `${bestand} → ${product.merk ?? '?'} — ${product.naam ?? '?'}`
    if (!product.merk || !product.naam || !product.voertype) {
      fouten.push(`${waar}: merk, naam of voertype ontbreekt`)
      continue
    }
    if (!['kibble', 'wet', 'raw'].includes(product.voertype)) fouten.push(`${waar}: onbekend voertype ${product.voertype}`)
    if (product.basis !== 'as-fed') fouten.push(`${waar}: basis is geen as-fed`)
    if (!product.waarden || typeof product.waarden !== 'object' || Array.isArray(product.waarden)) {
      fouten.push(`${waar}: waarden ontbreekt of is geen object`)
      continue
    }
    const onbekend = Object.keys(product.waarden).filter((key) => !NUTRIENT_BY_KEY[key])
    if (onbekend.length) fouten.push(`${waar}: onbekende nutrienten: ${onbekend.join(', ')}`)
    const ontbrekend = NUTRIENTS.map(({ key }) => key).filter((key) => !(key in product.waarden))
    if (ontbrekend.length) waarschuwingen.push(`${waar}: nutrientsleutels ontbreken: ${ontbrekend.join(', ')}`)

    const waarden = {}
    for (const nutrient of NUTRIENTS) {
      const ruw = product.waarden[nutrient.key]
      if (ruw == null || String(ruw).trim() === '') continue
      const getal = Number(String(ruw).replace(',', '.'))
      if (!Number.isFinite(getal) || getal < 0) {
        fouten.push(`${waar}: ${nutrient.key} is geen geldig getal`)
        continue
      }
      const maximum = nutrient.unit === 'kcal/100g' ? 1000 : 100
      if (getal > maximum) fouten.push(`${waar}: ${nutrient.key} is te hoog (${getal})`)
      waarden[nutrient.key] = getal
    }
    if (waarden.protein == null || waarden.fat == null) {
      fouten.push(`${waar}: eiwit of vet ontbreekt`)
      continue
    }
    const status = voedingswaardeStatus(NUTRIENTS.map((nutrient) => ({ nutrient_key: nutrient.key, value: waarden[nutrient.key] })))
    const som = ['protein', 'fat', 'fiber', 'ash', 'moisture'].reduce((totaal, key) => totaal + (waarden[key] ?? 0), 0)
    if (waarden.moisture != null && som > 105) waarschuwingen.push(`${waar}: som van eiwit/vet/vezel/as/vocht is ${som.toFixed(1)}%`)
    if (product.voertype === 'kibble' && waarden.kcal != null && waarden.kcal < 200) waarschuwingen.push(`${waar}: kcal/100 g lijkt laag voor brokken (${waarden.kcal})`)
    if (product.voertype === 'wet' && waarden.kcal != null && waarden.kcal > 250) waarschuwingen.push(`${waar}: kcal/100 g lijkt hoog voor natvoer (${waarden.kcal})`)
    if (product.voertype === 'raw' && waarden.kcal != null && waarden.kcal > 300) waarschuwingen.push(`${waar}: kcal/100 g lijkt hoog voor rauwvoer (${waarden.kcal})`)
    if (waarden.protein > 60) waarschuwingen.push(`${waar}: eiwit lijkt zeer hoog (${waarden.protein}%)`)
    if (waarden.fat > 40) waarschuwingen.push(`${waar}: vet lijkt zeer hoog (${waarden.fat}%)`)
    if (waarden.moisture != null && product.voertype === 'kibble' && waarden.moisture > 20) waarschuwingen.push(`${waar}: vocht lijkt hoog voor brokken (${waarden.moisture}%)`)
    if (waarden.moisture != null && product.voertype !== 'kibble' && waarden.moisture < 40) waarschuwingen.push(`${waar}: vocht lijkt laag voor nat/rauw voer (${waarden.moisture}%)`)

    const sleutel = `${product.merk.toLowerCase()}|${product.naam.toLowerCase()}|${product.voertype}|${String(product.verpakking ?? '').toLowerCase()}`
    if (gezien.has(sleutel)) fouten.push(`${waar}: dubbel met ${gezien.get(sleutel)}`)
    else gezien.set(sleutel, bestand)

    if (!perMerk.has(product.merk)) perMerk.set(product.merk, { producten: 0, volledig: 0, gedeeltelijk: 0, ontbreekt: 0, kcal: 0 })
    const telling = perMerk.get(product.merk)
    telling.producten += 1
    if (status.volledig) telling.volledig += 1
    else if (status.gedeeltelijk) telling.gedeeltelijk += 1
    else telling.ontbreekt += 1
    if (waarden.kcal != null) telling.kcal += 1
  }
}

console.log(`Bestanden: ${bestanden.length}`)
console.log(`Producten: ${[...perMerk.values()].reduce((som, c) => som + c.producten, 0)}`)
console.log(`Fouten: ${fouten.length}`)
console.log(`Waarschuwingen: ${waarschuwingen.length}`)
console.log('')
console.log('Merk\tProducten\tVolledig\tGedeeltelijk\tOntbreekt\tMet kcal')
for (const [merk, c] of [...perMerk.entries()].sort((a, b) => b[1].producten - a[1].producten || a[0].localeCompare(b[0], 'nl'))) {
  console.log(`${merk}\t${c.producten}\t${c.volledig}\t${c.gedeeltelijk}\t${c.ontbreekt}\t${c.kcal}`)
}
if (fouten.length) {
  console.log('\nFouten:')
  for (const regel of fouten) console.log(`  - ${regel}`)
}
if (waarschuwingen.length) {
  console.log('\nWaarschuwingen:')
  for (const regel of waarschuwingen) console.log(`  - ${regel}`)
}
if (fouten.length) process.exit(1)
