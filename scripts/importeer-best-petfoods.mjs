#!/usr/bin/env node
// Importeert ontbrekende hondenmerken uit de Best Petfoods-feed.
//
// De feed bevat geen ingrediënten. Daarom halen we per unieke productnaam één
// productpagina op. Best Petfoods vraagt in robots.txt om een crawl-delay van
// vijf seconden; die respecteren we. De opgehaalde pagina's worden lokaal
// gecachet, zodat een onderbroken run niet opnieuw hoeft te beginnen.
//
// Gebruik:
//   npm run import:best-petfoods -- --dry-run
//   npm run import:best-petfoods -- --merken=N&D,Herrmann's
//   npm run import:best-petfoods -- --alleen=voer
//
// Daarna:
//   node scripts/maak-import-sql.mjs --bestanden=n-d,herrmanns
//   node scripts/maak-voedingswaarde-sql.mjs --bestanden=n-d,herrmanns
//
// De site claimt geen menselijke controle. Alle producten krijgen daarom
// imported_at/import_note en reviewed_at blijft leeg.

import { createHash } from 'node:crypto'
import { existsSync, mkdirSync, readFileSync, writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'
import { parseProductPagina } from './lib/product-page-parse.mjs'
import { alleMaten, formaatMaat, normaliseer as matchNormaliseer } from './lib/daisycon-retail-match.mjs'
import { slugify } from '../src/lib/productUrl.js'

const WORTEL = dirname(dirname(fileURLToPath(import.meta.url)))
const FEED = join(WORTEL, 'data', 'winkels', 'best-petfoods.json')
const IMPORT = join(WORTEL, 'data', 'import')
const VOEDING = join(IMPORT, 'voedingswaarden')
const SNACKS = join(WORTEL, 'data', 'snacks.json')
const CACHE = join(IMPORT, '.cache-best-petfoods')
const RAPPORT = join(IMPORT, 'rapport-best-petfoods-import.md')
const VANDAAG = new Date().toISOString().slice(0, 10)

const argumenten = new Map(
  process.argv
    .slice(2)
    .filter((ruw) => ruw.startsWith('--'))
    .map((ruw) => {
      const [naam, waarde] = ruw.replace(/^--/, '').split('=')
      return [naam, waarde ?? '']
    })
)
const droog = argumenten.has('dry-run')
const alleen = argumenten.get('alleen') ?? 'alles'
const limiet = Number(argumenten.get('limit') ?? 0)
const crawlDelay = Math.max(0, Number(argumenten.get('delay') ?? 5000))
const gekozenMerken = (argumenten.get('merken') ?? '')
  .split(',')
  .map((merk) => merk.trim())
  .filter(Boolean)

function leesEnv() {
  const pad = join(WORTEL, '.env.local')
  if (!existsSync(pad)) return {}
  return Object.fromEntries(
    readFileSync(pad, 'utf8')
      .split(/\r?\n/)
      .filter((regel) => regel.includes('=') && !regel.trim().startsWith('#'))
      .map((regel) => {
        const index = regel.indexOf('=')
        return [regel.slice(0, index).trim(), regel.slice(index + 1).trim()]
      })
  )
}

const env = leesEnv()
const SUPABASE_URL = (process.env.VITE_SUPABASE_URL || env.VITE_SUPABASE_URL || '').replace(/\/$/, '')
const SUPABASE_KEY = process.env.VITE_SUPABASE_PUBLISHABLE_KEY || env.VITE_SUPABASE_PUBLISHABLE_KEY || ''

async function haalCatalogus() {
  const lokaal = argumenten.get('catalogus')
  if (lokaal) return JSON.parse(readFileSync(lokaal, 'utf8'))
  if (!SUPABASE_URL || !SUPABASE_KEY) throw new Error('Geen Supabase-configuratie gevonden; gebruik --catalogus=<json> of .env.local.')
  const rijen = []
  for (let offset = 0; ; offset += 1000) {
    const url = new URL(`${SUPABASE_URL}/rest/v1/products`)
    url.searchParams.set('select', 'id,brand,name,gtin,package_size,food_type')
    url.searchParams.set('published', 'eq.true')
    url.searchParams.set('order', 'id.asc')
    url.searchParams.set('limit', '1000')
    url.searchParams.set('offset', String(offset))
    const antwoord = await fetch(url, { headers: { apikey: SUPABASE_KEY, authorization: `Bearer ${SUPABASE_KEY}` } })
    if (!antwoord.ok) throw new Error(`Supabase gaf HTTP ${antwoord.status}: ${await antwoord.text()}`)
    const deel = await antwoord.json()
    rijen.push(...deel)
    if (deel.length < 1000) break
  }
  return rijen
}

const netteMerk = (merk = '') => {
  const schoon = String(merk).replace(/®/g, '').replace(/\s+/g, ' ').trim()
  const aliassen = new Map([
    ['vet life', 'Vet Life'],
    ['buddy', 'Buddy'],
    ['inaba', 'Inaba'],
    ['herrmanns', "Herrmann's"]
  ])
  return aliassen.get(schoon.toLowerCase()) ?? schoon
}

const merkSleutel = (merk = '') => matchNormaliseer(netteMerk(merk))

function zonderMerkEnMaat(titel, merk) {
  let naam = String(titel).replace(/\s+/g, ' ').trim()
  const varianten = [merk, merk.replace(/['’]/g, ''), merk.replace(/['’]/g, ' '), netteMerk(merk)]
    .filter(Boolean)
    .sort((a, b) => b.length - a.length)
  for (const variant of varianten) {
    if (naam.toLowerCase().startsWith(`${variant.toLowerCase()} `)) {
      naam = naam.slice(variant.length).trim()
      break
    }
  }

  let verpakking = ''
  const perStuks = naam.match(/\s*[-–]?\s*(\d+(?:[.,]\d+)?)\s*(kg|gr|g|ml|l)\s*\.?\s*[-–]?\s*per\s*(\d+)\s*stuks\.?\s*$/i)
  if (perStuks) {
    const [, aantal, eenheid, stuks] = perStuks
    verpakking = `${stuks} x ${aantal.replace('.', ',')} ${eenheid.toLowerCase().replace(/^gr$/, 'g')}`
    naam = naam.slice(0, perStuks.index).trim()
  } else {
    const multi = naam.match(/\s+(\d+)\s*x\s*(\d+(?:[.,]\d+)?)\s*(kg|gr|g|ml|l)\s*\.?\s*$/i)
    if (multi) {
      const [, aantal, hoeveelheid, eenheid] = multi
      verpakking = `${aantal} x ${hoeveelheid.replace('.', ',')} ${eenheid.toLowerCase().replace(/^gr$/, 'g')}`
      naam = naam.slice(0, multi.index).trim()
    } else {
      const enkel = naam.match(/\s+(\d+(?:[.,]\d+)?)\s*(kg|gr|g|ml|l)\s*\.?\s*$/i)
      if (enkel) {
        verpakking = `${enkel[1].replace('.', ',')} ${enkel[2].toLowerCase().replace(/^gr$/, 'g')}`
        naam = naam.slice(0, enkel.index).trim()
      }
    }
  }

  naam = naam
    .replace(/\b(hondenvoeding|hondenvoer|hondenbrokken|hondensnacks|hondensnack|hondenkoekjes|hondenkoekje)\b/gi, ' ')
    .replace(/\bvoor (?:de )?hond(?:en)?\b/gi, ' ')
    .replace(/\b(adult|puppy|senior|junior)\s+hond\b/gi, '$1')
    .replace(/\b(?:voeding|voer) voor de\b/gi, ' ')
    .replace(/^(?:de |het )?honden?\s+/i, '')
    .replace(/\bdog\b/gi, ' ')
    .replace(/\s+/g, ' ')
    .replace(/^[\s,;:.-]+|[\s,;:.-]+$/g, '')
    .trim()
  naam = naam.charAt(0).toUpperCase() + naam.slice(1)
  return { naam, verpakking }
}

function voertypeVoorTitel(titel) {
  const tekst = String(titel).toLowerCase()
  if (/freeze[ -]?dried|gevriesdroogd|air[ -]?dried/.test(tekst)) return 'raw'
  if (/natvoeding|in bouillon|in jus|in gelei|stoofpotje|paté|pate|stew|topper|saus|bone broth/.test(tekst)) return 'wet'
  return 'kibble'
}

function voertypeVoorPagina(pagina, titel) {
  const categorie = String(pagina?.categorie ?? '').toLowerCase()
  if (/freeze[ -]?dried|gevriesdroogd|air[ -]?dried/.test(String(titel).toLowerCase())) return 'raw'
  if (/natvoeding|maaltijdtopper/.test(categorie)) return 'wet'
  if (/hondenbrokken/.test(categorie)) return 'kibble'
  return voertypeVoorTitel(titel)
}

function directeUrl(link) {
  try {
    const url = new URL(link)
    const dl = url.searchParams.get('dl')
    if (dl) {
      const pad = decodeURIComponent(dl).replace(/^\/+/, '')
      return new URL(pad, 'https://www.bestpetfoods.nl/').href
    }
    if (/bestpetfoods\.nl$/i.test(url.hostname)) return url.href
  } catch {
    return ''
  }
  return ''
}

function pakketTeken(verpakking) {
  const match = String(verpakking).match(/^([\d.,]+) (kg|g|ml|l)$/)
  if (!match) return null
  return { waarde: Number(match[1].replace(',', '.')), eenheid: match[2] }
}

function formatteerPakket(verpakkingen) {
  const uniek = [...new Set(verpakkingen.filter(Boolean))]
  if (!uniek.length) return ''
  const enkel = uniek.map(pakketTeken)
  if (enkel.every(Boolean) && new Set(enkel.map(({ eenheid }) => eenheid)).size === 1) {
    const eenheid = enkel[0].eenheid
    const waarden = enkel
      .map(({ waarde }) => waarde)
      .sort((a, b) => a - b)
      .map((waarde) => new Intl.NumberFormat('nl-NL', { maximumFractionDigits: 2 }).format(waarde))
    return `${waarden.join(' / ')} ${eenheid}`
  }
  return uniek
    .slice()
    .sort((a, b) => {
      const ma = alleMaten(a)[0] ?? Number.MAX_SAFE_INTEGER
      const mb = alleMaten(b)[0] ?? Number.MAX_SAFE_INTEGER
      return ma - mb || a.localeCompare(b, 'nl')
    })
    .join(' / ')
}

function geldigeSamenstelling(tekst = '', soort = 'voer') {
  const schoon = String(tekst).replace(/\s+/g, ' ').trim()
  if (schoon.length < (soort === 'snack' ? 3 : 12)) return false
  if (/^(100\s*%)/i.test(schoon)) return true
  if (/individuele soorten|individuele producten|levensfase bekijk|van bovenstaande producten|aanvullende voeding|zie de individuele/i.test(schoon)) return false
  if (soort === 'snack') return /[%,]/.test(schoon) || /[a-zà-ÿ]{3,}/i.test(schoon)
  return /[%,]/.test(schoon)
}

const DIEREN = [
  ['struisvogel', 'Struisvogel'], ['kalkoen', 'Kalkoen'], ['kip', 'Kip'], ['eend', 'Eend'],
  ['gans', 'Gans'], ['fazant', 'Fazant'], ['kwartel', 'Kwartel'], ['zalm', 'Zalm'],
  ['forel', 'Forel'], ['haring', 'Haring'], ['makreel', 'Makreel'], ['kabeljauw', 'Kabeljauw'],
  ['tonijn', 'Tonijn'], ['garnalen', 'Garnalen'], ['vis', 'Vis'], ['rund', 'Rund'],
  ['varken', 'Varken'], ['lam', 'Lam'], ['schaap', 'Lam'], ['hert', 'Hert'], ['ree', 'Hert'],
  ['paard', 'Paard'], ['geit', 'Geit'], ['konijn', 'Konijn'], ['kangoeroe', 'Kangoeroe'],
  ['buffel', 'Buffel'], ['wild', 'Wild'], ['jak', 'Rund'], ['bonito', 'Vis'],
  ['melk', 'Melk/zuivel'], ['koemelk', 'Melk/zuivel'], ['kamelenmelk', 'Melk/zuivel'],
  ['geitenmelk', 'Melk/zuivel'], ['kaas', 'Melk/zuivel'], ['ei', 'Ei']
]

function dierlijkeBronnen(tekst, extra = '') {
  const bron = `${tekst} ${extra}`.toLowerCase()
  const gevonden = []
  for (const [woord, label] of DIEREN) {
    if (new RegExp(`\\b${woord}`, 'i').test(bron) && !gevonden.includes(label)) gevonden.push(label)
  }
  return gevonden
}

function snackType(categorie, naam) {
  const tekst = `${categorie} ${naam}`.toLowerCase()
  if (/dental|denta|gebit|tand/.test(tekst)) return 'dental'
  if (/staaf|stick|stix|kauwstaaf|bar\b|bars\b/.test(tekst)) return 'kauwstaaf'
  if (/gedroogde vis|vis|zalm|forel|haring|kabeljauw|tonijn/.test(tekst) && /gedroogd|droog|vis/.test(tekst)) return 'gedroogde_vis'
  if (/reep|repen|strip|jerky|plak/.test(tekst)) return 'vleesreep'
  if (/trainer|zacht|soft/.test(tekst)) return 'zachte_snack'
  if (/koekje|koek|biscuit|hondenkoekjes/.test(tekst)) return 'koekje'
  if (/oor|oren|nek|nekken|pens|maag|bot|kauw|natural|daalder|slokdarm/.test(tekst)) return 'natural_chew'
  return 'overig'
}

function sizeClass(naam, extra = '') {
  const tekst = `${naam} ${extra}`.toLowerCase()
  if (/klein|small|mini|tot 10|tot 40/.test(tekst)) return 'klein'
  if (/groot|large|maxi|\bxl\b|> ?25|vanaf 25/.test(tekst)) return 'groot'
  if (/middel|medium|10 tot 30/.test(tekst)) return 'middel'
  return 'alle'
}

function isGraanvrij(ingrediënten) {
  return !/\b(tarwe|maïs|mais|rijst|gerst|haver|spelt|rogge|granen|gierst|sorghum|boekweit|quinoa|amaranth|teff)/i.test(ingrediënten)
}

function paginaBestandsnaam(url) {
  return `${createHash('sha1').update(url).digest('hex')}.html`
}

let laatsteVerzoek = 0
async function wachtVoorVerzoek() {
  const wachttijd = laatsteVerzoek + crawlDelay - Date.now()
  if (wachttijd > 0) await new Promise((resolve) => setTimeout(resolve, wachttijd))
  laatsteVerzoek = Date.now()
}

async function haalHtml(url) {
  mkdirSync(CACHE, { recursive: true })
  const pad = join(CACHE, paginaBestandsnaam(url))
  if (existsSync(pad)) return readFileSync(pad, 'utf8')
  for (let poging = 1; poging <= 2; poging += 1) {
    await wachtVoorVerzoek()
    try {
      const antwoord = await fetch(url, {
        headers: { 'user-agent': 'Hondenvoervergelijker/1.0 (import; contact: hondenvoervergelijker@paulzuiderduin.nl)' },
        redirect: 'follow',
        signal: AbortSignal.timeout(30000)
      })
      if (!antwoord.ok) throw new Error(`HTTP ${antwoord.status}`)
      const html = await antwoord.text()
      writeFileSync(pad, html)
      return html
    } catch (fout) {
      if (poging === 2) throw fout
    }
  }
  throw new Error('onbereikbaar')
}

const catalogus = await haalCatalogus()
const snackData = JSON.parse(readFileSync(SNACKS, 'utf8'))
const bestaandeSnacks = Array.isArray(snackData.producten) ? snackData.producten : []
const feed = JSON.parse(readFileSync(FEED, 'utf8'))
const info = feed?.datafeed?.programs?.[0]?.products?.map((rij) => rij.product_info) ?? []

const bestaandeVoerMerken = new Set(catalogus.map((product) => merkSleutel(product.brand)))
const bestaandeSnackMerken = new Set(bestaandeSnacks.map((snack) => merkSleutel(snack.brand)))
const explicieteMerken = new Set(gekozenMerken.map((merk) => merkSleutel(merk)))

function merkIsNieuw(merk, soort) {
  if (explicieteMerken.size) return explicieteMerken.has(merkSleutel(merk))
  return soort === 'voer' ? !bestaandeVoerMerken.has(merkSleutel(merk)) : !bestaandeSnackMerken.has(merkSleutel(merk))
}

const groepen = new Map()
const overgeslagenFeed = []
for (const product of info) {
  const categorie = String(product.category_path ?? '')
  const isVoer = /(?:^|\|)Hondenvoer(?:\||$)/.test(categorie)
  const isSnack = /(?:^|\|)Hondenkoekjes(?:\||$)/.test(categorie) || /(?:^|\|)Hondensnacks(?:\||$)/.test(categorie)
  if (!isVoer && !isSnack) continue
  const soort = isVoer ? 'voer' : 'snack'
  if (alleen !== 'alles' && alleen !== soort && alleen !== `${soort}s`) continue
  const merk = netteMerk(product.brand)
  if (!merk || !merkIsNieuw(merk, soort)) continue
  const { naam, verpakking } = zonderMerkEnMaat(product.title, product.brand)
  if (!naam) {
    overgeslagenFeed.push(`${product.title}: productnaam leeg`)
    continue
  }
  const sleutel = `${merkSleutel(merk)}|${matchNormaliseer(naam)}|${soort}`
  if (!groepen.has(sleutel)) {
    groepen.set(sleutel, {
      merk,
      naam,
      soort,
      categorie,
      titel: product.title,
      varianten: []
    })
  }
  const groep = groepen.get(sleutel)
  const url = directeUrl(product.link)
  if (!url) {
    overgeslagenFeed.push(`${product.title}: geen directe Best Petfoods-URL`)
    continue
  }
  const ean = String(product.ean ?? '').replace(/\D/g, '')
  groep.varianten.push({
    titel: product.title,
    verpakking,
    ean: /^\d{8,14}$/.test(ean) ? ean : '',
    url,
    prijs: Number(product.price) || null
  })
}

const gekozenGroepen = [...groepen.values()]
  .map((groep) => ({ ...groep, verpakking: formatteerPakket(groep.varianten.map((variant) => variant.verpakking)) }))
  .filter((groep) => {
    if (groep.soort !== 'voer') return true
    // Een recept zonder maat kan nog steeds een geldig product zijn; de
    // productpagina levert dan het gewicht uit de JSON-LD.
    return groep.naam.length > 0
  })
  .slice(0, limiet > 0 ? limiet : undefined)

console.log(`Best Petfoods: ${info.length} feedproducten, ${gekozenGroepen.length} unieke nieuwe producten om op te halen.`)

if (argumenten.has('geen-scrape')) {
  for (const groep of gekozenGroepen) {
    console.log(`${groep.soort === 'voer' ? 'VOER ' : 'SNACK'} | ${groep.merk} | ${groep.naam} | ${groep.verpakking || '—'} | ${groep.varianten.length} variant(en)`)
  }
  console.log('\nGeen productpagina\'s opgehaald (--geen-scrape).')
  process.exit(0)
}

const voerPerMerk = new Map()
const voedingPerMerk = new Map()
const nieuweSnacks = []
const problemen = []
const aanvullendOvergeslagen = []
const verwerkt = []

for (const groep of gekozenGroepen) {
  const varianten = groep.varianten
    .slice()
    .sort((a, b) => Number(/per \d+ stuks|multipack/i.test(a.titel)) - Number(/per \d+ stuks|multipack/i.test(b.titel)))
  let pagina = null
  let gebruikteVariant = null
  let laatsteFout = ''
  for (const variant of varianten.slice(0, 3)) {
    try {
      const html = await haalHtml(variant.url)
      const gelezen = parseProductPagina(html)
      if (!geldigeSamenstelling(gelezen.ingredients, groep.soort)) {
        laatsteFout = 'geen bruikbare samenstelling gevonden'
        continue
      }
      pagina = gelezen
      gebruikteVariant = variant
      break
    } catch (fout) {
      laatsteFout = String(fout.message || fout)
    }
  }
  if (!pagina) {
    problemen.push(`${groep.merk} — ${groep.naam}: ${laatsteFout || 'pagina onbereikbaar'}`)
    continue
  }

  const isAanvullend = /Aanvullende diervoeding|aanvullende voeding|geen complete voeding|geen volledige voeding/i.test(pagina.tekst)
    || /maaltijdtopper/i.test(pagina.categorie)
  if (groep.soort === 'voer' && isAanvullend) {
    aanvullendOvergeslagen.push(`${groep.merk} — ${groep.naam}`)
    continue
  }

  const voertype = groep.soort === 'voer' ? voertypeVoorPagina(pagina, groep.titel) : null
  const verpakking = groep.verpakking || (pagina.gewichtGram ? formaatMaat(pagina.gewichtGram) : '')
  const uniekeEans = [...new Set(varianten.map((variant) => variant.ean).filter(Boolean))]
  const meerdereMaten = /\s\/\s/.test(verpakking)
  const gtin = meerdereMaten
    ? null
    : uniekeEans.length === 1
      ? uniekeEans[0]
      : (varianten.length === 1 ? pagina.gtin || null : null)
  const bronUrl = gebruikteVariant.url

  if (groep.soort === 'voer') {
    const product = {
      merk: groep.merk,
      naam: groep.naam,
      voertype,
      verpakking,
      gtin,
      bronUrl,
      etiketOrigineel: pagina.ingredients,
      etiketNl: pagina.ingredients,
      aantekening: null,
      twijfel: null
    }
    if (!voerPerMerk.has(groep.merk)) voerPerMerk.set(groep.merk, [])
    voerPerMerk.get(groep.merk).push(product)

    if (pagina.nutrition?.protein != null && pagina.nutrition?.fat != null) {
      if (!voedingPerMerk.has(groep.merk)) voedingPerMerk.set(groep.merk, [])
      voedingPerMerk.get(groep.merk).push({
        merk: groep.merk,
        naam: groep.naam,
        voertype,
        verpakking,
        bronUrl,
        gecontroleerd: VANDAAG,
        basis: 'as-fed',
        waarden: pagina.nutrition,
        bronTekst: pagina.analytical.slice(0, 500),
        notitie: `Automatisch overgenomen van de productpagina van Best Petfoods op ${VANDAAG}. Ontbrekende waarden zijn niet vermeld.`
      })
    }
  } else {
    const naam = groep.naam
    if (!naam || /pakket|snuffelmat/i.test(naam)) {
      problemen.push(`SNACK ${groep.titel}: geen zelfstandige snack`)
      continue
    }
    const ingredientenZonderVetten = pagina.ingredients.replace(/(?:kippen|zalm|vis|gevogelte|rund|varkens|lam|eend)(?:vet|olie)/gi, ' ')
    const bronnen = dierlijkeBronnen(`${naam} ${ingredientenZonderVetten}`, pagina.dierlijkeEiwitbron)
    const type = snackType(groep.categorie, naam)
    const idBasis = slugify(`${groep.merk} ${naam} ${verpakking || ''}`)
    nieuweSnacks.push({
      id: idBasis,
      brand: groep.merk,
      name: naam,
      snack_type: type,
      size_class: sizeClass(naam, pagina.hondengrootte),
      package_size: verpakking || '',
      gtin,
      protein_source: bronnen.length ? bronnen.join(' en ') : (pagina.dierlijkeEiwitbron ? pagina.dierlijkeEiwitbron.replace(/\b\w/g, (letter) => letter.toUpperCase()) : 'Niet vermeld'),
      single_protein: pagina.enkelEiwit || bronnen.length === 1,
      grain_free: isGraanvrij(pagina.ingredients),
      kcal_per_100g: pagina.nutrition?.kcal ?? null,
      kcal_per_piece: null,
      ingredients_text: pagina.ingredients,
      trace_text: pagina.sporen || null,
      source_url: bronUrl,
      source_note: `Automatisch overgenomen van de productpagina van Best Petfoods op ${VANDAAG}; nog niet door een mens nagelopen.`,
      last_checked_at: VANDAAG,
      reviewed_at: null,
      imported_at: VANDAAG,
      import_note: 'Automatisch overgenomen; nog niet door een mens nagelopen.',
      review_note: null
    })
  }

  verwerkt.push({ groep, pagina, voertype, verpakking, gtin, bronUrl })
  console.log(`  ✓ ${groep.merk} — ${groep.naam}${verpakking ? ` (${verpakking})` : ''}${voertype ? ` · ${voertype}` : ''}`)
}

const aantalVoer = [...voerPerMerk.values()].reduce((som, lijst) => som + lijst.length, 0)
const aantalVoeding = [...voedingPerMerk.values()].reduce((som, lijst) => som + lijst.length, 0)
const perMerk = new Map()
for (const { groep } of verwerkt) {
  const huidig = perMerk.get(groep.merk) ?? { voer: 0, snacks: 0 }
  huidig[groep.soort === 'voer' ? 'voer' : 'snacks'] += 1
  perMerk.set(groep.merk, huidig)
}

const rapport = [
  '# Best Petfoods — import van nieuwe merken',
  '',
  `- Datum: ${VANDAAG}`,
  `- Feedproducten: ${info.length}`,
  `- Nieuwe producten opgehaald: ${gekozenGroepen.length}`,
  `- Nieuwe hondenvoerproducten: ${aantalVoer}`,
  `- Nieuwe snacks: ${nieuweSnacks.length}`,
  `- Voedingswaardesets: ${aantalVoeding}`,
  `- Aanvullende voeding overgeslagen: ${aanvullendOvergeslagen.length}`,
  `- Fouten/ontbrekende pagina's: ${problemen.length}`,
  '',
  '## Per merk',
  '',
  '| Merk | Voer | Snacks |',
  '|---|---:|---:|',
  ...[...perMerk.entries()].sort((a, b) => a[0].localeCompare(b[0], 'nl')).map(([merk, aantallen]) => `| ${merk} | ${aantallen.voer} | ${aantallen.snacks} |`),
  '',
  '## Overgeslagen: aanvullende voeding',
  '',
  ...(aanvullendOvergeslagen.length ? aanvullendOvergeslagen.map((regel) => `- ${regel}`) : ['- Geen.']),
  '',
  '## Fouten en ontbrekende pagina\'s',
  '',
  ...(problemen.length ? problemen.map((regel) => `- ${regel}`) : ['- Geen.']),
  '',
  '## Feedregels zonder bruikbare product-URL',
  '',
  ...(overgeslagenFeed.length ? overgeslagenFeed.slice(0, 100).map((regel) => `- ${regel}`) : ['- Geen.'])
]

if (droog) {
  console.log(rapport.join('\n'))
  console.log('\nDry-run: geen bestanden gewijzigd.')
} else {
  for (const [merk, producten] of voerPerMerk) {
    const bestand = join(IMPORT, `${slugify(merk)}.json`)
    writeFileSync(bestand, `${JSON.stringify({ bron: 'https://www.bestpetfoods.nl/', opgehaald: VANDAAG, producten }, null, 2)}\n`)
    const voeding = voedingPerMerk.get(merk) ?? []
    if (voeding.length) {
      const voedingPad = join(VOEDING, `${slugify(merk)}.json`)
      let bestaand = { merk, opgehaald: VANDAAG, producten: [] }
      if (existsSync(voedingPad)) {
        try {
          bestaand = JSON.parse(readFileSync(voedingPad, 'utf8'))
        } catch {}
      }
      const sleutel = (product) => `${matchNormaliseer(product.merk)}|${matchNormaliseer(product.naam)}|${product.voertype}|${matchNormaliseer(product.verpakking)}`
      const perSleutel = new Map((bestaand.producten ?? []).map((product) => [sleutel(product), product]))
      for (const product of voeding) perSleutel.set(sleutel(product), product)
      bestaand.producten = [...perSleutel.values()]
      bestaand.opgehaald = VANDAAG
      writeFileSync(voedingPad, `${JSON.stringify(bestaand, null, 2)}\n`)
    }
  }

  if (nieuweSnacks.length) {
    const perId = new Map(bestaandeSnacks.map((snack, index) => [snack.id, index]))
    const perUrl = new Map(bestaandeSnacks.map((snack, index) => [snack.source_url, index]).filter(([url]) => url))
    for (const snack of nieuweSnacks) {
      const index = perId.get(snack.id) ?? perUrl.get(snack.source_url)
      if (index == null) {
        perId.set(snack.id, bestaandeSnacks.length)
        if (snack.source_url) perUrl.set(snack.source_url, bestaandeSnacks.length)
        bestaandeSnacks.push(snack)
      } else {
        const vorige = bestaandeSnacks[index]
        bestaandeSnacks[index] = { ...vorige, ...snack, reviewed_at: vorige.reviewed_at ?? null, review_note: vorige.review_note ?? null }
      }
    }
    snackData.producten = bestaandeSnacks
    snackData.bijgewerkt = VANDAAG
    writeFileSync(SNACKS, `${JSON.stringify(snackData, null, 2)}\n`)
  }

  writeFileSync(RAPPORT, `${rapport.join('\n')}\n`)
  console.log(`\nImport gereed: ${aantalVoer} voer, ${nieuweSnacks.length} snacks, ${aantalVoeding} voedingswaardesets.`)
  console.log(`Rapport: ${RAPPORT}`)
}
