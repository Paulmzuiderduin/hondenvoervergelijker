#!/usr/bin/env node
// Maakt van de importbestanden (data/import/*.json) één SQL-bestand per batch.
//
// De site mag nooit een menselijke controle claimen die niet gebeurd is. Dit
// gereedschap zet daarom alleen de herkomst (imported_at, import_hash,
// import_note) en zet published = true, zodat het product meteen mee kan doen —
// met de eerlijke regel "automatisch overgenomen van <domein> op <datum> · nog
// niet door een mens nagelopen" op de kaart.
//
// Wat het controleert:
//   - verplichte velden en toegestane voertypes;
//   - of de Nederlandse tekst niet stiekem gelijk is aan een andere taal
//     (dan hoort er een vertaalaantekening bij);
//   - of er geen HTML-resten, reclametaal of dubbele producten in zitten;
//   - of het product al in de live database staat (zelfde merk, naam,
//     verpakking of GTIN), tenzij er geen sleutel is meegegeven — dan wordt die
//     controle overgeslagen en dat wordt duidelijk gemeld.
//
// Producten met een gevulde "twijfel" komen niet in de SQL; ze belanden in
// data/import/twijfel.md zodat een mens ernaar kan kijken.
//
// Gebruik:  node scripts/maak-import-sql.mjs
//           VITE_SUPABASE_URL=... VITE_SUPABASE_PUBLISHABLE_KEY=... node scripts/maak-import-sql.mjs
//           node scripts/maak-import-sql.mjs --bestanden=bosch,hills
//
// Met --bestanden= worden alleen de genoemde bestanden meegenomen; handig als
// er onderweg nieuwe merken binnenkomen die nog niet zijn nagelopen.

import { existsSync, mkdirSync, readFileSync, readdirSync, writeFileSync } from 'node:fs'
import { createHash } from 'node:crypto'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'

const WORTEL = dirname(dirname(fileURLToPath(import.meta.url)))
const IMPORT = join(WORTEL, 'data', 'import')
const SQL_MAP = join(IMPORT, 'sql')
const VOERTYPES = ['kibble', 'wet', 'raw']
const MAX_PER_BATCH = 50
const VERTAALNOTE = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.'

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

function normaliseer(tekst = '') {
  return String(tekst).replace(/\s+/g, ' ').trim()
}

function hashVan(tekst) {
  return `sha256:${createHash('sha256').update(normaliseer(tekst)).digest('hex')}`
}

// Verpakkingsmaten komen van verschillende bronnen binnen ("1.5 kg" van de
// Engelse decimaalpunt, "3/10 kg" zonder spaties). Op de site horen ze in
// dezelfde Nederlandse notatie te staan.
function netteVerpakking(waarde) {
  return normaliseer(waarde)
    .replace(/(\d)\.(\d)/g, '$1,$2')
    .replace(/\s*\/\s*/g, ' / ')
    .replace(/\s*\+\s*/g, ' + ')
}

function verpakkingssleutel(product) {
  return netteVerpakking(product.verpakking).toLowerCase()
}

function sqlTekst(waarde) {
  if (waarde === null || waarde === undefined || waarde === '') return 'null'
  return `'${String(waarde).replace(/'/g, "''")}'`
}

function controleer(product, bestand) {
  const waar = `${bestand} → ${product.merk ?? '?'} — ${product.naam ?? '?'}`
  const mist = ['merk', 'naam', 'voertype', 'bronUrl', 'etiketOrigineel', 'etiketNl'].filter((veld) => !normaliseer(product[veld] ?? ''))
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
  if (product.opgehaald && !/^\d{4}-\d{2}-\d{2}$/.test(product.opgehaald)) {
    problemen.push(`${waar}: opgehaald is geen datum (jjjj-mm-dd)`)
    return false
  }
  const tekst = normaliseer(product.etiketNl)
  const origineel = normaliseer(product.etiketOrigineel)
  if (tekst.length < 30) problemen.push(`${waar}: de Nederlandse tekst is verdacht kort (${tekst.length} tekens)`)
  if (/<\/?[a-z][^>]*>/i.test(tekst) || /&(amp|nbsp|quot|#\d+);/.test(tekst)) problemen.push(`${waar}: de tekst bevat nog HTML`)
  if (!tekst.includes(',') && !tekst.includes('%')) waarschuwingen.push(`${waar}: geen komma en geen percentage in de tekst; klopt dat?`)
  if (/(heerlijk|ideaal|jouw hond|onze unieke|perfect voor)/i.test(tekst)) waarschuwingen.push(`${waar}: de tekst bevat reclametaal; is dit wel de ingrediëntenlijst?`)
  if (tekst !== origineel && !normaliseer(product.aantekening ?? '')) problemen.push(`${waar}: de Nederlandse tekst wijkt af van het origineel maar de vertaalaantekening ontbreekt`)
  if (tekst === origineel && normaliseer(product.aantekening ?? '')) waarschuwingen.push(`${waar}: aantekening zegt "vertaling" maar de teksten zijn gelijk`)
  if (product.gtin && !/^\d{8,14}$/.test(String(product.gtin))) problemen.push(`${waar}: gtin moet 8 tot 14 cijfers zijn`)
  return !problemen.some((regel) => regel.startsWith(`${waar}:`))
}

async function haalLiveCatalogus() {
  const url = process.env.VITE_SUPABASE_URL ?? process.env.SUPABASE_URL
  const key = process.env.VITE_SUPABASE_PUBLISHABLE_KEY ?? process.env.SUPABASE_PUBLISHABLE_KEY
  if (!url || !key) {
    console.log('LET OP: geen SUPABASE_URL/VITE_SUPABASE_URL en sleutel meegegeven, dus de controle op bestaande producten in de live database is overgeslagen.')
    console.log('       Geef ze mee om dubbele producten vooraf te vangen: VITE_SUPABASE_URL=... VITE_SUPABASE_PUBLISHABLE_KEY=... node scripts/maak-import-sql.mjs')
    return null
  }
  const antwoord = await fetch(`${url.replace(/\/$/, '')}/rest/v1/products?select=brand,name,package_size,gtin`, { headers: { apikey: key, authorization: `Bearer ${key}` } })
  if (!antwoord.ok) {
    console.log(`LET OP: de live catalogus kon niet worden opgehaald (${antwoord.status}); de controle op bestaande producten is overgeslagen.`)
    return null
  }
  return antwoord.json()
}

const bestanden = (existsSync(IMPORT) ? readdirSync(IMPORT).filter((naam) => naam.endsWith('.json')).sort() : []).filter(
  (naam) => !alleenBestanden.length || alleenBestanden.includes(naam)
)
if (!bestanden.length) {
  console.log(`Geen importbestanden gevonden in ${IMPORT}.`)
  process.exit(1)
}

const gezien = new Map()
const perBestand = new Map()
for (const bestand of bestanden) {
  let inhoud
  try {
    inhoud = JSON.parse(readFileSync(join(IMPORT, bestand), 'utf8'))
  } catch (fout) {
    // Bijvoorbeeld een bestand dat nog geschreven wordt; het wordt overgeslagen
    // in plaats van het hele gereedschap te laten stoppen.
    problemen.push(`${bestand}: kon niet worden gelezen (${fout.message})`)
    continue
  }
  const producten = Array.isArray(inhoud.producten) ? inhoud.producten : []
  const goedgekeurd = []
  for (const product of producten) {
    if (normaliseer(product.twijfel ?? '')) {
      overgeslagen.push({ bestand, product, reden: normaliseer(product.twijfel) })
      continue
    }
    product.opgehaald = normaliseer(product.opgehaald ?? inhoud.opgehaald ?? '')
    if (!controleer(product, bestand)) continue
    const sleutel = `${normaliseer(product.merk).toLowerCase()}|${normaliseer(product.naam).toLowerCase()}|${verpakkingssleutel(product)}`
    if (gezien.has(sleutel)) {
      problemen.push(`${bestand} → ${product.merk} — ${product.naam}: staat al in ${gezien.get(sleutel)}`)
      continue
    }
    if (product.gtin && gezien.has(`gtin:${product.gtin}`)) {
      problemen.push(`${bestand} → ${product.merk} — ${product.naam}: GTIN ${product.gtin} staat al in ${gezien.get(`gtin:${product.gtin}`)}`)
      continue
    }
    gezien.set(sleutel, bestand)
    if (product.gtin) gezien.set(`gtin:${product.gtin}`, bestand)
    goedgekeurd.push(product)
  }
  perBestand.set(bestand, goedgekeurd)
}

const live = await haalLiveCatalogus()
if (live) {
  const bestaand = new Map()
  for (const rij of live) {
    bestaand.set(`${rij.brand.toLowerCase()}|${rij.name.toLowerCase()}|${netteVerpakking(rij.package_size).toLowerCase()}`, 'de live database')
    if (rij.gtin) bestaand.set(`gtin:${rij.gtin}`, 'de live database')
  }
  for (const [bestand, producten] of perBestand) {
    perBestand.set(bestand, producten.filter((product) => {
      const sleutel = `${product.merk.toLowerCase()}|${product.naam.toLowerCase()}|${verpakkingssleutel(product)}`
      const treffer = bestaand.get(sleutel) ?? (product.gtin ? bestaand.get(`gtin:${product.gtin}`) : undefined)
      if (!treffer) return true
      waarschuwingen.push(`${product.merk} — ${product.naam}: staat al in ${treffer} en is overgeslagen`)
      return false
    }))
  }
  console.log(`Live catalogus gelezen: ${live.length} producten.`)
}

const alleProducten = [...perBestand.values()].flat()
if (problemen.length) {
  console.log('\nAfgekeurd:')
  for (const regel of problemen) console.log(`  - ${regel}`)
}
if (waarschuwingen.length) {
  console.log('\nLet op:')
  for (const regel of waarschuwingen) console.log(`  - ${regel}`)
}

mkdirSync(SQL_MAP, { recursive: true })
const vandaag = new Date().toISOString().slice(0, 10)
const bestandsPrefix = `batch-${vandaag.replace(/-/g, '')}-`
// Bestaande bestanden van vandaag blijven staan: een nummer wordt nooit
// hergebruikt, zodat in de map terug te zien is wat er wanneer is geplakt.
let batchnummer = (existsSync(SQL_MAP) ? readdirSync(SQL_MAP) : []).reduce(
  (hoogste, naam) => (naam.startsWith(bestandsPrefix) ? Math.max(hoogste, Number(naam.slice(bestandsPrefix.length, -4)) || 0) : hoogste),
  0
)
for (let start = 0; start < alleProducten.length; start += MAX_PER_BATCH) {
  batchnummer += 1
  const producten = alleProducten.slice(start, start + MAX_PER_BATCH)
  const regels = [
    `-- Automatisch overgenomen etiketten, batch ${batchnummer} van ${vandaag} (${producten.length} producten).`,
    '-- Plak dit bestand in de Supabase SQL Editor, nadat de migraties tot en met',
    '-- 20261019190000_import_herkomst.sql zijn uitgevoerd.',
    '--',
    '-- Elk product komt van de bronpagina die eronder staat. De site zegt daarna:',
    '-- "automatisch overgenomen van <domein> op <datum> · nog niet door een mens',
    '-- nagelopen". Er wordt hier geen enkele controle door een mens geclaimd.',
    'begin;',
    ''
  ]
  for (const product of producten) {
    const opgehaald = product.opgehaald || vandaag
    const verpakking = netteVerpakking(product.verpakking)
    regels.push(
      `-- ${product.merk} — ${product.naam}${verpakking ? ` (${verpakking})` : ''}`,
      `-- bron: ${product.bronUrl}`,
      'with p as (',
      '  insert into public.products (brand, name, food_type, package_size, gtin, source_url, last_checked_at, published)',
      `  values (${sqlTekst(product.merk)}, ${sqlTekst(product.naam)}, ${sqlTekst(product.voertype)}, ${sqlTekst(verpakking)}, ${sqlTekst(product.gtin)}, ${sqlTekst(product.bronUrl)}, date ${sqlTekst(opgehaald)}, true)`,
      '  returning id',
      ')',
      'insert into public.recipe_versions (product_id, ingredients_text, is_current, imported_at, import_hash, import_note)',
      `select id, ${sqlTekst(normaliseer(product.etiketNl))}, true, now(), ${sqlTekst(hashVan(product.etiketOrigineel))}, ${sqlTekst(normaliseer(product.aantekening ?? ''))} from p;`,
      ''
    )
  }
  regels.push(
    'commit;',
    '',
    '-- Controle na het plakken:',
    'select p.brand, p.name, rv.imported_at is not null as heeft_herkomst, rv.import_note',
    '  from public.products p',
    '  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current',
    " where rv.imported_at > now() - interval '1 hour'",
    ' order by p.brand, p.name;',
    ''
  )
  const naam = `${bestandsPrefix}${String(batchnummer).padStart(2, '0')}.sql`
  writeFileSync(join(SQL_MAP, naam), regels.join('\n'))
  console.log(`Geschreven: data/import/sql/${naam} (${producten.length} producten)`)
}

if (overgeslagen.length) {
  const regels = ['# Overgeslagen bij de import', '', 'Deze producten kwamen niet in de SQL omdat er iets te controleren valt:', '']
  for (const { bestand, product, reden } of overgeslagen) {
    regels.push(`- **${product.merk ?? '?'} — ${product.naam ?? '?'}** (${bestand}): ${reden}`)
    if (product.bronUrl) regels.push(`  bron: ${product.bronUrl}`)
  }
  writeFileSync(join(IMPORT, 'twijfel.md'), `${regels.join('\n')}\n`)
  console.log(`\n${overgeslagen.length} product(en) overgeslagen; zie data/import/twijfel.md`)
}

console.log(`\nKlaar: ${alleProducten.length} product(en) in ${batchnummer || 0} batch(es), ${problemen.length} afgekeurd, ${overgeslagen.length} overgeslagen.`)
if (problemen.length) process.exit(1)
