#!/usr/bin/env node
// Maakt een eenvoudige JSON-back-up van de catalogus en de woordenlijst.
// Draait wekelijks mee in de broncontrole-workflow en wordt als artifact bewaard.
//
// Wat er wordt bewaard: products, recipe_versions, recipe_ingredients en
// ingredient_terms. Geen beheerders, geen wachtwoorden en geen sync-token.
//
// Gebruik:
//   node scripts/maak-backup.mjs
//   node scripts/maak-backup.mjs --datum=2026-10-27

import { existsSync, mkdirSync, readFileSync, writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'

const WORTEL = dirname(dirname(fileURLToPath(import.meta.url)))

const argumenten = new Map(
  process.argv
    .slice(2)
    .filter((ruw) => ruw.startsWith('--'))
    .map((ruw) => {
      const [naam, waarde] = ruw.replace(/^--/, '').split('=')
      return [naam, waarde ?? '']
    })
)

function leesEnv() {
  const env = {}
  const pad = join(WORTEL, '.env.local')
  if (!existsSync(pad)) return env
  for (const regel of readFileSync(pad, 'utf8').split(/\r?\n/)) {
    const idx = regel.indexOf('=')
    if (idx > 0 && !regel.trim().startsWith('#')) env[regel.slice(0, idx).trim()] = regel.slice(idx + 1).trim()
  }
  return env
}

const env = leesEnv()
const URL = (process.env.VITE_SUPABASE_URL || process.env.SUPABASE_URL || env.VITE_SUPABASE_URL || '').replace(/\/$/, '')
const KEY = process.env.VITE_SUPABASE_PUBLISHABLE_KEY || process.env.SUPABASE_PUBLISHABLE_KEY || env.VITE_SUPABASE_PUBLISHABLE_KEY || ''

if (!URL || !KEY) {
  console.error('Supabase-URL of -sleutel ontbreekt.')
  process.exit(1)
}

const datum = argumenten.get('datum') || new Date().toISOString().slice(0, 10)
const doelmap = join(WORTEL, 'data', 'backup', datum)
mkdirSync(doelmap, { recursive: true })

async function haalAlles(tabel, query = 'select=*') {
  const rijen = []
  for (let offset = 0; ; offset += 1000) {
    const antwoord = await fetch(`${URL}/rest/v1/${tabel}?${query}&limit=1000&offset=${offset}`, {
      headers: { apikey: KEY, authorization: `Bearer ${KEY}`, accept: 'application/json' }
    })
    if (!antwoord.ok) throw new Error(`${tabel}: HTTP ${antwoord.status} ${await antwoord.text()}`)
    const deel = await antwoord.json()
    rijen.push(...deel)
    if (deel.length < 1000) break
  }
  return rijen
}

const tabellen = ['products', 'recipe_versions', 'recipe_ingredients', 'ingredient_terms']
const samenvatting = { datum, tabellen: {} }

for (const tabel of tabellen) {
  const rijen = await haalAlles(tabel)
  writeFileSync(join(doelmap, `${tabel}.json`), `${JSON.stringify(rijen, null, 2)}\n`)
  samenvatting.tabellen[tabel] = rijen.length
  console.log(`${tabel}: ${rijen.length} rijen`)
}

writeFileSync(join(doelmap, 'manifest.json'), `${JSON.stringify(samenvatting, null, 2)}\n`)
console.log(`Back-up geschreven naar ${doelmap.replace(WORTEL + '/', '')}`)
