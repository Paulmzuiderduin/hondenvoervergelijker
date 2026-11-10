#!/usr/bin/env node
// Controleert de blogplanning zonder de site te bouwen.
//
// Gebruik:
//   npm run blog:planning
//   npm run blog:planning -- --datum=2026-11-16 --minimum=4
//   npm run blog:planning -- --streng
//
// Een artikel met een datum in de toekomst wordt pas gepubliceerd als de
// wekelijkse deploy op of na die datum draait. Deze controle waarschuwt als de
// planning te leeg raakt of als twee artikelen in dezelfde week staan.
import { readFileSync, readdirSync } from 'node:fs'
import { join } from 'node:path'
import { parseFrontmatter } from './lib/markdown.mjs'
import { WORTEL, datumIso } from './lib/pagina-shell.mjs'

const argumenten = new Map(
  process.argv
    .slice(2)
    .filter((ruw) => ruw.startsWith('--'))
    .map((ruw) => {
      const [naam, waarde] = ruw.replace(/^--/, '').split('=')
      return [naam, waarde ?? '']
    })
)

const datum = datumIso(argumenten.get('datum')) || new Date().toISOString().slice(0, 10)
const minimum = Math.max(1, Number(argumenten.get('minimum') ?? 4) || 4)
const streng = argumenten.has('streng')
const problemen = []
const waarschuwingen = []

const isoWeek = (waarde) => {
  const dag = new Date(`${waarde}T00:00:00Z`)
  const weekdag = dag.getUTCDay() || 7
  dag.setUTCDate(dag.getUTCDate() + 4 - weekdag)
  const jaarStart = new Date(Date.UTC(dag.getUTCFullYear(), 0, 1))
  const week = Math.ceil((((dag - jaarStart) / 86400000) + 1) / 7)
  return `${dag.getUTCFullYear()}-W${String(week).padStart(2, '0')}`
}

const weekdag = (waarde) => new Date(`${waarde}T00:00:00Z`).getUTCDay()

const map = join(WORTEL, 'content', 'blog')
const bestanden = readdirSync(map).filter((bestand) => bestand.endsWith('.md')).sort()
const gepubliceerd = []
const gepland = []

for (const bestand of bestanden) {
  const { data } = parseFrontmatter(readFileSync(join(map, bestand), 'utf8'))
  if (data.draft === true) continue
  const publicatie = datumIso(data.date)
  if (!publicatie) {
    problemen.push(`${bestand}: geen geldige datum.`)
    continue
  }
  const artikel = {
    bestand,
    titel: String(data.title ?? bestand).trim(),
    categorie: String(data.category ?? '').trim(),
    datum: publicatie,
    week: isoWeek(publicatie)
  }
  if (publicatie > datum) gepland.push(artikel)
  else gepubliceerd.push(artikel)
}

gepland.sort((eerste, tweede) => eerste.datum.localeCompare(tweede.datum))

console.log(`Blogplanning op ${datum}`)
console.log(`Gepubliceerd: ${gepubliceerd.length} · gepland: ${gepland.length}\n`)

if (gepland.length) {
  console.log('Datum       Week       Categorie                     Titel')
  console.log('----------  ---------  ----------------------------  -----')
  for (const artikel of gepland) {
    console.log(`${artikel.datum}  ${artikel.week.padEnd(9)}  ${artikel.categorie.padEnd(28).slice(0, 28)}  ${artikel.titel}`)
  }
  console.log('')
} else {
  waarschuwingen.push('Er staan geen toekomstige blogartikelen meer in de planning.')
}

const perWeek = new Map()
const perDatum = new Map()
for (const artikel of gepland) {
  if (perDatum.has(artikel.datum)) {
    problemen.push(`${artikel.datum}: meerdere artikelen op dezelfde datum (${perDatum.get(artikel.datum)} en ${artikel.bestand}).`)
  }
  perDatum.set(artikel.datum, artikel.bestand)

  if (perWeek.has(artikel.week)) {
    problemen.push(`${artikel.week}: meerdere artikelen in dezelfde week (${perWeek.get(artikel.week)} en ${artikel.bestand}).`)
  }
  perWeek.set(artikel.week, artikel.bestand)

  if (weekdag(artikel.datum) !== 1) {
    waarschuwingen.push(`${artikel.datum} is geen maandag; de wekelijkse deploy draait op maandag.`)
  }
}

if (gepland.length < minimum) {
  waarschuwingen.push(`Nog maar ${gepland.length} gepland artikel; houd minimaal ${minimum} weken voorraad aan.`)
}

if (gepland.length) {
  const dagenTotEerste = Math.round((new Date(`${gepland[0].datum}T00:00:00Z`) - new Date(`${datum}T00:00:00Z`)) / 86400000)
  if (dagenTotEerste > 8) {
    waarschuwingen.push(`Het eerstvolgende artikel staat pas over ${dagenTotEerste} dagen; er zit een gat in de weekplanning.`)
  }
}

if (waarschuwingen.length) {
  console.log('Waarschuwingen:')
  for (const waarschuwing of waarschuwingen) console.log(`- ${waarschuwing}`)
  console.log('')
}

if (problemen.length) {
  console.log('Fouten:')
  for (const probleem of problemen) console.log(`- ${probleem}`)
  console.log('')
}

if (streng && (problemen.length || waarschuwingen.length)) process.exit(1)
