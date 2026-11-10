#!/usr/bin/env node
// Controleert data/snacks.json op verplichte velden, dubbele producten en
// tegenstrijdigheden tussen de ingevulde kenmerken en de ingrediëntenlijst.
// Dit is een hulpmiddel bij het vullen; het is geen vervanging van de
// handmatige broncontrole.

import { readFileSync } from 'node:fs'
import { join } from 'node:path'
import { ALLERGEN_LABELS, assessLabel, setCustomTerms } from '../src/lib/allergens.js'
import { SNACK_TERMS, SNACK_TYPES, SIZE_CLASSES } from '../src/lib/snacks.js'
import { WORTEL } from './lib/pagina-shell.mjs'

setCustomTerms(SNACK_TERMS)

const TYPES = new Set(SNACK_TYPES.map(([key]) => key))
const MATEN = new Set(SIZE_CLASSES.map(([key]) => key))
const DIERLIJKE_KEYS = [
  'chicken', 'turkey', 'duck', 'goose', 'beef', 'lamb', 'pork', 'horse', 'rabbit', 'venison', 'fish', 'salmon', 'whitefish', 'tuna', 'trout', 'herring', 'mackerel', 'anchovy', 'sardine', 'shellfish', 'insect', 'milk', 'egg'
]
// Vet is geen eiwitbron. Voor de single_protein-controle tellen we daarom
// alleen de bronnen die overblijven als de vetwoorden uit het etiket zijn
// gehaald. De allergeenkeuring zelf blijft het volledige etiket gebruiken.
const VET_WOORDEN = /\b(?:kippenvet|gevogeltevet|eendenvet|ganzenvet|kalkoenvet|rundvet|varkensvet|lamvet|paardenvet|konijnenvet|hertenvet|visvet|zalmolie|visolie)\b/g

function dierlijkeBronnen(uitslag) {
  let keys = uitslag.allergens.filter((key) => DIERLIJKE_KEYS.includes(key))
  const specifiekeVissen = keys.filter((key) => ['salmon', 'whitefish', 'tuna', 'trout', 'herring', 'mackerel', 'anchovy', 'sardine'].includes(key))
  if (specifiekeVissen.length) keys = keys.filter((key) => key !== 'fish')
  const specifiekGevogelte = keys.filter((key) => ['chicken', 'turkey', 'duck', 'goose'].includes(key))
  if (specifiekGevogelte.length) keys = keys.filter((key) => key !== 'poultry')
  return keys
}

const data = JSON.parse(readFileSync(join(WORTEL, 'data', 'snacks.json'), 'utf8'))
const producten = Array.isArray(data.producten) ? data.producten : []
const problemen = []
const waarschuwingen = []
const ids = new Set()
const namen = new Map()

const norm = (tekst = '') => String(tekst).toLocaleLowerCase('nl').normalize('NFD').replace(/[\u0300-\u036f]/g, '').trim()

for (const [index, product] of producten.entries()) {
  const label = `#${index + 1} ${product.brand ?? '?'} — ${product.name ?? '?'}`
  for (const veld of ['id', 'brand', 'name', 'snack_type', 'size_class', 'package_size', 'protein_source', 'ingredients_text', 'source_url', 'last_checked_at']) {
    if (!product[veld] || String(product[veld]).trim() === '') problemen.push(`${label}: verplicht veld "${veld}" ontbreekt`)
  }
  if (product.id) {
    if (ids.has(product.id)) problemen.push(`${label}: dubbele id "${product.id}"`)
    ids.add(product.id)
  }
  if (!TYPES.has(product.snack_type)) problemen.push(`${label}: onbekend snack_type "${product.snack_type}"`)
  if (!MATEN.has(product.size_class)) problemen.push(`${label}: onbekende size_class "${product.size_class}"`)
  const naam = `${norm(product.brand)}|${norm(product.name)}`
  if (namen.has(naam)) problemen.push(`${label}: dubbel product met ${namen.get(naam)}`)
  else namen.set(naam, label)
  if (!product.reviewed_at && !product.imported_at) waarschuwingen.push(`${label}: nog niet gecontroleerd of geïmporteerd`)
  if (product.imported_at && product.reviewed_at) waarschuwingen.push(`${label}: zowel reviewed_at als imported_at gevuld`)
  // Een enkelvoudige kauwsnack mag een korte, volledige lijst hebben
  // ("100% rund", "Kippennekken"). Alleen echt lege of onbruikbare tekst telt.
  if (!product.ingredients_text || product.ingredients_text.trim().length < 3) problemen.push(`${label}: ingrediëntenlijst lijkt te kort`)
  if (product.source_url && !/^https:\/\//.test(product.source_url)) problemen.push(`${label}: source_url is geen https-URL`)

  const uitslag = assessLabel(product.ingredients_text ?? '')
  const onbekend = uitslag.unknown ?? []
  if (onbekend.length) waarschuwingen.push(`${label}: woorden die de keuring niet kent: ${onbekend.join(', ')}`)

  const tekst = norm(product.ingredients_text)
  const tekstZonderVet = tekst.replace(VET_WOORDEN, ' ')
  const uitslagZonderVet = tekstZonderVet === tekst ? uitslag : assessLabel(tekstZonderVet)
  const dierlijk = dierlijkeBronnen(uitslagZonderVet)
  if (product.single_protein && dierlijk.length > 1) waarschuwingen.push(`${label}: single_protein=true, maar meerdere dierlijke bronnen: ${dierlijk.map((key) => ALLERGEN_LABELS[key] ?? key).join(', ')}`)

  const granen = uitslag.allergens.filter((key) => ['grains', 'wheat', 'corn', 'rice', 'oats', 'barley', 'rye', 'spelt', 'buckwheat', 'millet', 'quinoa', 'amaranth', 'teff', 'sorghum'].includes(key))
  // "meel" van lupine, erwt of aardappel is geen graan. De gewone
  // graanwoorden blijven wel staan, inclusief mout/malt en paneermeel.
  const graanTekst = norm(product.ingredients_text)
    .replace(/lupinemeel|erwtenmeel|aardappelmeel|bataatmeel|bonenmeel/g, '')
  const graanWoord = /(tarwe|mais|rijst|haver|gerst|granen|gierst|spelt|rogge|boekweit|quinoa|amaranth|teff|sorghum|mout|malt|paneermeel|bloemmeel|tarwemeel|maismeel|rijstmeel|havermeel|gerstemeel)/.test(graanTekst)
  if (product.grain_free && (granen.length || graanWoord)) waarschuwingen.push(`${label}: grain_free=true, maar graanwoorden gevonden${granen.length ? `: ${granen.map((key) => ALLERGEN_LABELS[key] ?? key).join(', ')}` : ''}`)
}

console.log(`${producten.length} snacks gecontroleerd.`)
if (problemen.length) {
  console.log(`\n${problemen.length} probleem(en):`)
  for (const probleem of problemen) console.log(`- ${probleem}`)
}
if (waarschuwingen.length) {
  console.log(`\n${waarschuwingen.length} waarschuwing(en):`)
  for (const waarschuwing of waarschuwingen) console.log(`- ${waarschuwing}`)
}
if (!problemen.length && !waarschuwingen.length) console.log('Geen problemen of waarschuwingen gevonden.')
process.exit(problemen.length ? 1 : 0)
