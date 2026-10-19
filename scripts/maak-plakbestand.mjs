#!/usr/bin/env node
// Maakt één bestand dat in de Supabase SQL Editor geplakt kan worden: de
// migratie(s) die nog moeten lopen, gevolgd door de nieuwste importbatch.
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
const laatsteBatch = batches[batches.length - 1]
const batchTekst = readFileSync(join(IMPORT_SQL, laatsteBatch), 'utf8')
const producten = (batchTekst.match(/^-- bron: /gm) ?? []).length
const merken = [...new Set((batchTekst.match(/^-- ([^—\n]+) — /gm) ?? []).map((regel) => regel.replace(/^-- /, '').replace(/ — $/, '')))]

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
  const begin = regels.findIndex((regel) => /^-- Controle na het plakken/i.test(regel.trim()))
  return (begin >= 0 ? regels.slice(0, begin).join('\n') : tekst).trim()
}

const kop = [
  '-- Plak dit hele bestand in de Supabase SQL Editor en klik op Run.',
  '--',
  '-- Wat erin zit:',
  ...migratiePaden.map((pad, i) => `--   ${i + 1}. migratie ${pad.split('/').pop()}`),
  `--   ${migratiePaden.length + 1}. importbatch ${laatsteBatch}: ${producten} producten van ${merken.join(', ')}`,
  '--',
  '-- Wat er daarna op de site staat:',
  '--   - de nieuwe producten doen meteen mee in de vergelijking;',
  '--   - op elke kaart staat "Automatisch overgenomen van <domein> op <datum> ·',
  '--     nog niet door een mens nagelopen";',
  '--   - waar het etiket een vertaling is, staat dat erbij;',
  '--   - geen enkel product krijgt de status "nagekeken": dat gebeurt alleen als',
  '--     een mens in Beheer op die knop klikt.',
  '--',
  '-- Alles zit in één transactie. Gaat er iets mis, dan is er niets veranderd.',
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

const inhoud = [kop, ...migratiePaden.map((pad) => zonderEigenTransactie(readFileSync(pad, 'utf8'))), '', zonderControleblok(zonderEigenTransactie(batchTekst)), staart].join('\n\n')
writeFileSync(DOEL, inhoud)
console.log(`Geschreven: data/import/sql/plak-dit-in-supabase.sql`)
console.log(`  migraties: ${migratiePaden.length ? gevraagdeMigraties.join(', ') : 'geen'}`)
console.log(`  batch: ${laatsteBatch} (${producten} producten van ${merken.join(', ')})`)
