#!/usr/bin/env node
// Voegt de werkbestanden in data/import/uitbreiding/ samen met de echte
// importbestanden in data/import/. Standaard alleen een proefrun; met
// --schrijven worden de bestanden echt aangepast.
//
// Dit script doet geen database-writes en maakt geen SQL. Het houdt bestaande
// producten intact en voegt alleen nieuwe records toe.

import { existsSync, readFileSync, readdirSync, writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'

const WORTEL = dirname(dirname(fileURLToPath(import.meta.url)))
const IMPORT = join(WORTEL, 'data', 'import')
const WERK = join(IMPORT, 'uitbreiding')
const SCHRIJVEN = process.argv.includes('--schrijven')

const alias = new Map([
  ['bonzo (purina)', 'Bonzo'],
  ['bonzo', 'Bonzo'],
  ['prins', 'Prins Petfoods'],
  ['greenheart premiums', 'Greenheart-Premiums'],
  ['greenheart', 'Greenheart-Premiums'],
  ['smolke', 'Smølke'],
  ['smørlke', 'Smølke'],
  ['raw4dogs', 'RAW4DOGS'],
  ['butchers', "Butcher's"],
  ['hill\'s', "Hill's Science Plan"],
  ['hills', "Hill's Science Plan"]
])

const manifest = JSON.parse(readFileSync(join(WERK, 'merken.json'), 'utf8'))
const perSlug = new Map()
for (const row of manifest) {
  if (!perSlug.has(row.slug)) perSlug.set(row.slug, { slug: row.slug, canonical: new Set(), bron: row.bron })
  perSlug.get(row.slug).canonical.add(row.canonical)
}

const canoniek = (naam = '') => {
  const schoon = String(naam).replace(/\s+/g, ' ').trim()
  return alias.get(schoon.toLowerCase()) ?? schoon
}
const norm = (tekst = '') => String(tekst ?? '').replace(/\s+/g, ' ').trim()
const sleutel = (tekst = '') => norm(tekst).toLowerCase().replace(/\s*\/\s*/g, '/')

function leesBestand(pad) {
  try {
    return JSON.parse(readFileSync(pad, 'utf8'))
  } catch (fout) {
    console.error(`Kan ${pad} niet lezen: ${fout.message}`)
    process.exit(1)
  }
}

const alleenBestanden = (process.argv.find((arg) => arg.startsWith('--bestanden='))?.split('=')[1] ?? '')
  .split(',')
  .map((naam) => naam.trim())
  .filter(Boolean)
  .map((naam) => (naam.endsWith('.json') ? naam : `${naam}.json`))
const werkBestanden = readdirSync(WERK)
  .filter((naam) => naam.endsWith('.json') && naam !== 'merken.json')
  .filter((naam) => !alleenBestanden.length || alleenBestanden.includes(naam))
  .sort()
if (!werkBestanden.length) {
  console.log('Geen werkbestanden gevonden.')
  process.exit(0)
}

const resultaat = []
for (const werknaam of werkBestanden) {
  const werk = leesBestand(join(WERK, werknaam))
  const producten = Array.isArray(werk.producten) ? werk.producten : []
  if (!producten.length) continue

  // Bepaal het doelbestand via het merk van het eerste product. Een werkbestand
  // hoort bij één merk; Hills/Purina bevatten twee merkregels in hetzelfde doel.
  const eersteMerk = canoniek(producten[0].merk)
  const doelRij = manifest.find((rij) => rij.canonical === eersteMerk)
  if (!doelRij) {
    console.log(`OVERGESLAGEN ${werknaam}: merk "${producten[0].merk}" staat niet in merken.json`)
    continue
  }
  const doelPad = join(IMPORT, `${doelRij.slug}.json`)
  const bestaand = existsSync(doelPad) ? leesBestand(doelPad) : { bron: werk.bron, opgehaald: werk.opgehaald, producten: [] }
  const bestaandeProducten = Array.isArray(bestaand.producten) ? bestaand.producten : []

  const gezien = new Set()
  for (const p of bestaandeProducten) {
    gezien.add(`${sleutel(p.merk)}|${sleutel(p.naam)}|${sleutel(p.verpakking)}`)
  }
  const perNaam = new Map()
  bestaandeProducten.forEach((p, index) => {
    const naamSleutel = `${sleutel(p.merk)}|${sleutel(p.naam)}`
    if (!perNaam.has(naamSleutel)) perNaam.set(naamSleutel, index)
  })

  let toegevoegd = 0
  let vervangen = 0
  let overgeslagen = 0
  const toeTeVoegen = []
  for (const ruw of producten) {
    const product = { ...ruw, merk: canoniek(ruw.merk) }
    if (!perSlug.get(doelRij.slug)?.canonical.has(product.merk)) {
      console.log(`WAARSCHUWING ${werknaam}: merk "${ruw.merk}" hoort niet bij ${doelRij.slug}; overgeslagen`)
      overgeslagen++
      continue
    }
    const naamSleutel = `${sleutel(product.merk)}|${sleutel(product.naam)}`
    const bestaandeIndex = perNaam.get(naamSleutel)
    if (bestaandeIndex !== undefined) {
      const oud = bestaandeProducten[bestaandeIndex]
      // Zelfde merk en receptnaam: dit is hetzelfde product, ook als de
      // fabrikant intussen meer verpakkingsmaten noemt. Het werkbestand is de
      // actuele bron, dus vervang het oude record in plaats van een tweede rij
      // met dezelfde naam toe te voegen.
      const samen = {
        ...product,
        verpakking: product.verpakking || oud.verpakking,
        gtin: product.gtin || oud.gtin
      }
      if (sleutel(samen.verpakking) !== sleutel(oud.verpakking) || norm(samen.etiketOrigineel) !== norm(oud.etiketOrigineel)) {
        bestaandeProducten[bestaandeIndex] = samen
        vervangen++
      } else {
        overgeslagen++
      }
      continue
    }
    const k = `${sleutel(product.merk)}|${sleutel(product.naam)}|${sleutel(product.verpakking)}`
    if (gezien.has(k)) {
      overgeslagen++
      continue
    }
    gezien.add(k)
    toeTeVoegen.push(product)
    toegevoegd++
  }

  if (toegevoegd || vervangen) {
    const datums = [bestaand.opgehaald, werk.opgehaald].filter(Boolean).sort()
    const nieuw = {
      ...bestaand,
      bron: bestaand.bron || werk.bron,
      opgehaald: datums.at(-1) || werk.opgehaald,
      producten: [...bestaandeProducten, ...toeTeVoegen]
    }
    resultaat.push({ werknaam, doelPad, bestaand: bestaandeProducten.length, toegevoegd, vervangen, overgeslagen, nieuw })
  } else {
    resultaat.push({ werknaam, doelPad, bestaand: bestaandeProducten.length, toegevoegd: 0, vervangen: 0, overgeslagen, nieuw: null })
  }
}

for (const r of resultaat) {
  console.log(`${r.werknaam} → ${r.doelPad.replace(WORTEL + '/', '')}: ${r.toegevoegd} nieuw, ${r.vervangen} vervangen, ${r.overgeslagen} overgeslagen, ${r.bestaand} bestaand`)
}
if (SCHRIJVEN) {
  for (const r of resultaat) {
    if (r.nieuw) writeFileSync(r.doelPad, JSON.stringify(r.nieuw, null, 2) + '\n')
  }
  console.log('\nBestanden bijgewerkt. Draai nu eerst de controle en daarna het SQL-script.')
} else {
  console.log('\nProefrun. Gebruik --schrijven om de importbestanden bij te werken.')
}
