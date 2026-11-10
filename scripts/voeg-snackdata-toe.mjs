#!/usr/bin/env node
// Voegt een JSON-array met snacks toe aan data/snacks.json.
//
// Gebruik:
//   node scripts/voeg-snackdata-toe.mjs --bestand=/tmp/pedigree.json
//   node scripts/voeg-snackdata-toe.mjs --bestand=/tmp/pedigree.json --vervang
//
// Zonder --vervang blijven bestaande producten met dezelfde merk+naam staan.
// Met --vervang worden de velden van het nieuwe object overgenomen.

import { readFileSync, writeFileSync } from 'node:fs'
import { join } from 'node:path'
import { WORTEL } from './lib/pagina-shell.mjs'

const argumenten = Object.fromEntries(process.argv.slice(2).map((arg) => {
  const [key, ...rest] = arg.replace(/^--/, '').split('=')
  return [key, rest.join('=') || true]
}))
const bestand = String(argumenten.bestand || '')
if (!bestand) {
  console.error('Gebruik: node scripts/voeg-snackdata-toe.mjs --bestand=/tmp/snacks.json [--vervang]')
  process.exit(1)
}

const norm = (tekst = '') => String(tekst).toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, '').trim()
const basisPad = join(WORTEL, 'data', 'snacks.json')
const data = JSON.parse(readFileSync(basisPad, 'utf8'))
const nieuw = JSON.parse(readFileSync(bestand, 'utf8'))
if (!Array.isArray(nieuw)) {
  console.error('Het bestand moet een JSON-array met producten bevatten.')
  process.exit(1)
}

let toegevoegd = 0
let bijgewerkt = 0
let overgeslagen = 0
for (const product of nieuw) {
  if (!product?.brand || !product?.name || !product?.ingredients_text) {
    console.error('Product zonder brand/name/ingredients_text overgeslagen:', product?.id ?? '(zonder id)')
    overgeslagen += 1
    continue
  }
  const index = data.producten.findIndex((bestaand) => norm(bestaand.brand) === norm(product.brand) && norm(bestaand.name) === norm(product.name))
  if (index === -1) {
    data.producten.push(product)
    toegevoegd += 1
  } else if (argumenten.vervang) {
    data.producten[index] = product
    bijgewerkt += 1
  } else {
    overgeslagen += 1
  }
}

data.bijgewerkt = new Date().toISOString().slice(0, 10)
data.producten.sort((a, b) => a.brand.localeCompare(b.brand, 'nl') || a.name.localeCompare(b.name, 'nl'))
writeFileSync(basisPad, JSON.stringify(data, null, 2) + '\n')
console.log(`${toegevoegd} toegevoegd, ${bijgewerkt} bijgewerkt, ${overgeslagen} overgeslagen. Totaal: ${data.producten.length}.`)
