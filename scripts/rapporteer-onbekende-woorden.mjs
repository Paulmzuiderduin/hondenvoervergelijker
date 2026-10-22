#!/usr/bin/env node
// Maakt een inventarisatie van woorden die de allergenenkeuring nog niet kent.
//
// Gebruik:
//   node scripts/rapporteer-onbekende-woorden.mjs
//   node scripts/rapporteer-onbekende-woorden.mjs --schrijven
//
// De uitvoer is een momentopname van de live recepten. Na nieuwe imports moet
// dit opnieuw draaien; de woordenschat zelf wordt hier niet gewijzigd.

import { writeFile } from 'node:fs/promises'
import { assessLabel, setCustomTerms } from '../src/lib/allergens.js'

const url = (process.env.SUPABASE_URL || process.env.VITE_SUPABASE_URL || '').replace(/\/$/, '')
const sleutel = process.env.SUPABASE_PUBLISHABLE_KEY || process.env.VITE_SUPABASE_PUBLISHABLE_KEY || ''
if (!url || !sleutel) {
  console.error('Zet SUPABASE_URL/VITE_SUPABASE_URL en SUPABASE_PUBLISHABLE_KEY/VITE_SUPABASE_PUBLISHABLE_KEY.')
  process.exit(1)
}

async function haalAlles(pad, query) {
  const rijen = []
  const pagina = 1000
  for (let offset = 0; ; offset += pagina) {
    const antwoord = await fetch(`${url}/rest/v1/${pad}?${query}&limit=${pagina}&offset=${offset}`, {
      headers: {
        apikey: sleutel,
        authorization: `Bearer ${sleutel}`,
        accept: 'application/json'
      }
    })
    if (!antwoord.ok) throw new Error(`${pad}: HTTP ${antwoord.status} ${await antwoord.text()}`)
    const deel = await antwoord.json()
    rijen.push(...deel)
    if (deel.length < pagina) break
  }
  return rijen
}

const termen = await haalAlles('ingredient_terms', 'select=term,kind,allergen_keys&order=term')
setCustomTerms(termen)
const recepten = await haalAlles('recipe_versions', 'select=ingredients_text&is_current=eq.true')

const telling = new Map()
let metOnbekend = 0
for (const { ingredients_text: tekst } of recepten) {
  const uitslag = assessLabel(tekst ?? '')
  if (uitslag.unknown.length) metOnbekend += 1
  for (const term of uitslag.unknown) {
    const bestaand = telling.get(term) ?? { term, aantal: 0, voorbeelden: [] }
    bestaand.aantal += 1
    if (bestaand.voorbeelden.length < 3) {
      const index = uitslag.tokens.indexOf(term)
      const stuk = uitslag.tokens.slice(Math.max(0, index - 7), index + 8).join(' ')
      if (stuk && !bestaand.voorbeelden.includes(stuk)) bestaand.voorbeelden.push(stuk)
    }
    telling.set(term, bestaand)
  }
}

const woorden = [...telling.values()].sort((a, b) => b.aantal - a.aantal || a.term.localeCompare(b.term, 'nl'))
const regels = [
  '# Onbekende woorden in de allergenenkeuring',
  '',
  `Momentopname: ${new Date().toISOString().slice(0, 10)}.`,
  '',
  `- ${recepten.length} huidige recepten`,
  `- ${termen.length} ingedeelde woorden in \`ingredient_terms\``,
  `- ${woorden.length} onbekende woorden`,
  `- ${metOnbekend} recepten met minimaal één onbekend woord`,
  '',
  'De context is een stukje van de genormaliseerde etikettekst rond het eerste voorkomen.',
  '',
  '| Woord | Recepten | Context |',
  '|---|---:|---|'
]
for (const { term, aantal, voorbeelden } of woorden) {
  const context = voorbeelden[0]?.replace(/\|/g, '\\|') ?? ''
  regels.push(`| \`${term}\` | ${aantal} | ${context} |`)
}
regels.push('')

const rapport = regels.join('\n')
if (process.argv.includes('--schrijven')) {
  const pad = new URL('../data/import/uitbreiding/onbekende-woorden.md', import.meta.url)
  await writeFile(pad, rapport)
  console.log(`Geschreven: ${pad.pathname}`)
} else {
  console.log(rapport)
}
