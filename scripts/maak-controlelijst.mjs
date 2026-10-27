#!/usr/bin/env node
// Maakt een lokale controlelijst voor bronnen die niet automatisch te
// controleren zijn (zoals Prins Petfoods achter Cloudflare).
//
// Gebruik:
//   npm run bron:lijst -- --merk=Prins
//
// De lijst komt in data/import/controlelijst-<merk>.html en staat niet in git.
// Open hem in je browser, loop de producten na en werk daarna de controledatum
// bij met: npm run bron:gecontroleerd -- --merk=Prins --ja

import { existsSync, readFileSync, readdirSync, writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'

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
if (!merk) {
  console.error('Geef een merk mee, bijvoorbeeld: npm run bron:lijst -- --merk=Prins')
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
    if (!String(product.merk ?? '').toLowerCase().includes(merk.toLowerCase())) continue
    producten.push({ bestand, ...product })
  }
}

if (!producten.length) {
  console.error(`Geen producten gevonden voor "${merk}".`)
  process.exit(1)
}

const escape = (tekst = '') =>
  String(tekst).replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;').replace(/"/g, '&quot;')

const rijen = producten
  .map(
    (product) => `      <tr>
        <td>${escape(product.naam)}</td>
        <td>${escape(product.verpakking ?? '')}</td>
        <td><a href="${escape(product.bronUrl)}" target="_blank" rel="noreferrer">open bron</a></td>
        <td><code>${escape(String(product.etiketNl ?? '').slice(0, 90))}…</code></td>
        <td>${escape(product.bestand)}</td>
      </tr>`
  )
  .join('\n')

const html = `<!doctype html>
<html lang="nl">
  <head>
    <meta charset="UTF-8" />
    <title>Controlelijst ${escape(merk)}</title>
    <style>
      body { font-family: system-ui, sans-serif; margin: 2rem; color: #18261c; }
      h1 { font-size: 1.3rem; }
      p { max-width: 70ch; }
      table { border-collapse: collapse; width: 100%; font-size: 0.86rem; }
      th, td { text-align: left; vertical-align: top; padding: 0.4rem 0.5rem; border-bottom: 1px solid #dde4de; }
      th { background: #f4f7f4; }
      code { font-size: 0.8rem; color: #4b5c50; }
      a { color: #175b30; }
      @media print { body { margin: 0.5rem; } }
    </style>
  </head>
  <body>
    <h1>Controlelijst ${escape(merk)} — ${producten.length} producten</h1>
    <p>Open elk product in je browser, vergelijk de samenstelling met de tekst hieronder en werk daarna de controledatum bij met
      <code>npm run bron:gecontroleerd -- --merk=${escape(merk)} --ja</code>.</p>
    <p>Deze lijst is een hulpmiddel en wordt niet gepubliceerd.</p>
    <table>
      <thead><tr><th>Product</th><th>Verpakking</th><th>Bron</th><th>Verwachte tekst (begin)</th><th>Bestand</th></tr></thead>
      <tbody>
${rijen}
      </tbody>
    </table>
  </body>
</html>
`

const veiligeMerk = merk.toLowerCase().replace(/[^a-z0-9]+/g, '-').replace(/^-|-$/g, '')
const pad = join(IMPORT, `controlelijst-${veiligeMerk}.html`)
writeFileSync(pad, html)
console.log(`Controlelijst geschreven: ${pad.replace(WORTEL + '/', '')}`)
