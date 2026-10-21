#!/usr/bin/env node
// Maakt één bestand dat in de Supabase SQL Editor geplakt kan worden: de
// migratie(s) die nog moeten lopen, de nieuwste importbatch en de nieuwste
// woordenlijst (de indeling van woorden die de keuring niet kende).
//
// Gebruik:
//   node scripts/maak-plakbestand.mjs 20261019190000_import_herkomst.sql
//
// Zonder migraties (alleen een batch):
//   node scripts/maak-plakbestand.mjs
//
// Alles zit in één transactie: gaat er iets mis, dan is er niets veranderd.
// De begin/commit van de batch zelf wordt eruit gehaald om dat te bereiken.

import { existsSync, readFileSync, readdirSync, writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'

const WORTEL = dirname(dirname(fileURLToPath(import.meta.url)))
const MIGRATIES = join(WORTEL, 'supabase', 'migrations')
const IMPORT_SQL = join(WORTEL, 'data', 'import', 'sql')
const DOEL = join(IMPORT_SQL, 'plak-dit-in-supabase.sql')

const gevraagdeMigraties = process.argv.slice(2).filter((a) => !a.startsWith('--'))
const migratiePaden = gevraagdeMigraties.map((naam) => (naam.endsWith('.sql') ? join(MIGRATIES, naam) : join(MIGRATIES, `${naam}.sql`)))
for (const pad of migratiePaden) {
  if (!existsSync(pad)) {
    console.log(`Migratie niet gevonden: ${pad}`)
    process.exit(1)
  }
}

const batches = existsSync(IMPORT_SQL) ? readdirSync(IMPORT_SQL).filter((n) => /^batch-\d{8}-\d{2}\.sql$/.test(n)).sort() : []
if (!batches.length) {
  console.log('Geen batchbestand gevonden in data/import/sql; maak er eerst een met scripts/maak-import-sql.mjs.')
  process.exit(1)
}
// Alle batches van de nieuwste datum horen bij elkaar: een grote ronde wordt in
// stukken van vijftig geknipt, maar de beheerder plakt alles in één keer.
const nieuwsteDatum = batches[batches.length - 1].slice('batch-'.length, 'batch-'.length + 8)
const tePlakken = batches.filter((naam) => naam.startsWith(`batch-${nieuwsteDatum}-`))
const batchTekst = tePlakken.map((naam) => readFileSync(join(IMPORT_SQL, naam), 'utf8')).join('\n\n')
const producten = (batchTekst.match(/^-- bron: /gm) ?? []).length
const merken = [...new Set((batchTekst.match(/^-- ([^—\n]+) — /gm) ?? []).map((regel) => regel.replace(/^-- /, '').replace(/ — $/, '')))]

// De woordenlijst hoort bij dezelfde ronde: één plakactie zet zowel de nieuwe
// producten als de indeling van de woorden goed.
const woordenBestanden = existsSync(IMPORT_SQL) ? readdirSync(IMPORT_SQL).filter((n) => /^woorden-\d{8}-\d{2}\.sql$/.test(n)).sort() : []
const woordenBestand = woordenBestanden.at(-1) ?? null
const woordenTekst = woordenBestand ? readFileSync(join(IMPORT_SQL, woordenBestand), 'utf8') : ''
const woordenAantal = (woordenTekst.match(/^  \('/gm) ?? []).length

function zonderEigenTransactie(tekst) {
  return tekst
    .split('\n')
    .filter((regel) => !/^(begin|commit)\s*;/i.test(regel.trim()))
    .join('\n')
    .trim()
}

// De batch eindigt met zijn eigen controle-select; in het plakbestand komt die
// van het plakbestand zelf, zodat er niet twee tabellen tevoorschijn komen.
function zonderControleblok(tekst) {
  const regels = tekst.split('\n')
  const begin = regels.findIndex((regel) => /^-- Controle/i.test(regel.trim()))
  return (begin >= 0 ? regels.slice(0, begin).join('\n') : tekst).trim()
}

const kop = [
  '-- Plak dit hele bestand in de Supabase SQL Editor en klik op Run.',
  '--',
  '-- Wat erin zit:',
  ...migratiePaden.map((pad, i) => `--   ${i + 1}. migratie ${pad.split('/').pop()}`),
  `--   ${migratiePaden.length + 1}. de importbatch: ${producten} producten van ${merken.join(', ')}`,
  ...(woordenBestand ? [`--   ${migratiePaden.length + 2}. de woordenlijst: ${woordenAantal} woorden (${woordenBestand})`] : []),
  '--',
  '-- Wat er daarna op de site staat:',
  '--   - de nieuwe producten doen meteen mee in de vergelijking;',
  '--   - de automatische herkomst staat in de disclaimer, niet op elke kaart;',
  '--   - alleen een handmatig nagekeken product krijgt de badge "Door een mens',
  '--     gecontroleerd";',
  '--   - waar het etiket een vertaling is, staat dat erbij;',
  '--   - geen enkel product krijgt de status "nagekeken": dat gebeurt alleen als',
  '--     een mens in Beheer op die knop klikt.',
  '--',
  '-- Alles zit in één transactie. Gaat er iets mis, dan is er niets veranderd.',
  '-- Heb je dit bestand al eerder geplakt, dan stopt hij met een melding over een',
  '-- bestaande sleutel: dat betekent dat de producten er al staan.',
  '',
  'begin;',
  ''
].join('\n')

const staart = [
  '',
  '-- Controle na het plakken: hoeveel producten per merk, en hoeveel daarvan',
  '-- automatisch zijn overgenomen?',
  'select p.brand, count(*) as producten,',
  '       count(*) filter (where rv.imported_at is not null) as automatisch_overgenomen',
  '  from public.products p',
  '  join public.recipe_versions rv on rv.product_id = p.id and rv.is_current',
  ' group by p.brand',
  ' order by p.brand;',
  '',
  'commit;',
  ''
].join('\n')

const inhoud = [kop, ...migratiePaden.map((pad) => zonderEigenTransactie(readFileSync(pad, 'utf8'))), ...tePlakken.map((naam) => zonderControleblok(zonderEigenTransactie(readFileSync(join(IMPORT_SQL, naam), 'utf8')))), ...(woordenBestand ? [zonderControleblok(zonderEigenTransactie(woordenTekst))] : []), staart].join('\n\n')
writeFileSync(DOEL, inhoud)
console.log(`Geschreven: data/import/sql/plak-dit-in-supabase.sql`)
console.log(`  migraties: ${migratiePaden.length ? gevraagdeMigraties.join(', ') : 'geen'}`)
console.log(`  batches: ${tePlakken.join(', ')} (${producten} producten van ${merken.join(', ')})`)
if (woordenBestand) console.log(`  woordenlijst: ${woordenBestand} (${woordenAantal} woorden)`)

