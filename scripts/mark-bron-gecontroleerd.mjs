#!/usr/bin/env node
// Werkt de controledatum bij voor een merk waarvan je de bronnen handmatig hebt
// nagekeken. Gebruik dit pas nadat je de controlelijst echt hebt doorlopen.
//
// Gebruik:
//   npm run bron:gecontroleerd -- --merk=Prins --ja
//
// Zonder --ja gebeurt er niets; het commando laat eerst zien om hoeveel
// producten het gaat. De bronstatus wordt op "ok" gezet en de datum bijgewerkt.
// De etiketten zelf worden niet gewijzigd.

import { readFileSync, readdirSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'
import { schrijfNaarDatabase } from './lib/bron-sync.mjs'

const WORTEL = dirname(dirname(fileURLToPath(import.meta.url)))
const IMPORT = join(WORTEL, 'data', 'import')

const argumenten = new Map(
  process.argv
    .slice(2)
    .filter((ruw) => ruw.startsWith('--'))
    .map((ruw) => {
      const [naam, waarde] = ruw.replace(/^--/, '').split('=')
      return [naam, waarde ?? '']
    })
)

const merk = (argumenten.get('merk') ?? '').trim()
const ja = process.argv.includes('--ja')
const datum = new Date().toISOString().slice(0, 10)

if (!merk) {
  console.error('Geef een merk mee, bijvoorbeeld: npm run bron:gecontroleerd -- --merk=Prins --ja')
  process.exit(1)
}
const producten = []
for (const bestand of readdirSync(IMPORT).filter((naam) => naam.endsWith('.json')).sort()) {
  let inhoud
  try {
    inhoud = JSON.parse(readFileSync(join(IMPORT, bestand), 'utf8'))
  } catch {
    continue
  }
  for (const product of inhoud.producten ?? []) {
    if (!product.bronUrl) continue
    if (String(product.twijfel ?? '').trim()) continue
    if (!String(product.merk ?? '').toLowerCase().includes(merk.toLowerCase())) continue
    producten.push({ ...product, bestand })
  }
}

if (!producten.length) {
  console.error(`Geen producten gevonden voor "${merk}".`)
  process.exit(1)
}

console.log(`${producten.length} product(en) van ${merk} worden als gecontroleerd op ${datum} vastgelegd.`)
if (!ja) {
  console.log('Dit is een proefrun. Voeg --ja toe om de datum echt bij te werken.')
  process.exit(0)
}

const checks = producten.map((product) => ({
  merk: product.merk,
  naam: product.naam,
  bronUrl: product.bronUrl,
  status: 'gelijk',
  detail: 'handmatig gecontroleerd'
}))

await schrijfNaarDatabase(checks)
console.log('Klaar. De producten staan weer op "ok" met de datum van vandaag.')
