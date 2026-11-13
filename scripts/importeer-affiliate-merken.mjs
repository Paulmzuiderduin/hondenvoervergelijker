#!/usr/bin/env node
// Importeert Alsa Nature / Isegrim (TradeTracker) en Ultra Premium Direct-
// snacks (Daisycon) uit de lokale affiliate-feeds.
//
// Voer: schrijft data/import/<merk>.json en
//       data/import/voedingswaarden/<merk>.json. Daarna genereert
//       maak-import-sql.mjs de SQL-batches.
// Snacks: schrijft nieuwe producten in data/snacks.json.
//
// De productpagina's worden één keer opgehaald. Bij een ontbrekende
// samenstelling komt het product in het rapport en niet in de import.

import { existsSync, readFileSync, writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'
import { parseTradeTrackerFeed } from './lib/tradetracker-match.mjs'
import { parseProductPagina } from './lib/product-page-parse.mjs'
import { slugify } from '../src/lib/productUrl.js'

const WORTEL = dirname(dirname(fileURLToPath(import.meta.url)))
const IMPORT = join(WORTEL, 'data', 'import')
const VOEDING = join(IMPORT, 'voedingswaarden')
const SNACKS = join(WORTEL, 'data', 'snacks.json')
const RAPPORT = join(IMPORT, 'rapport-affiliate-import.md')
const VANDAAG = new Date().toISOString().slice(0, 10)

const argumenten = new Map(
  process.argv.slice(2)
    .filter((ruw) => ruw.startsWith('--'))
    .map((ruw) => {
      const [naam, waarde] = ruw.replace(/^--/, '').split('=')
      return [naam, waarde ?? '']
    })
)
const alleen = argumenten.get('alleen') ?? 'alles'
const limiet = Number(argumenten.get('limit') ?? 0)
const concurrency = Math.max(1, Math.min(12, Number(argumenten.get('concurrency') ?? 6)))
const droog = argumenten.has('dry-run')

const VOEDING_PREFIXEN = [
  'Hondenvoeding > Droogvoer',
  'Hondenvoeding > Natvoer',
  'Hondenvoeding > Granenvrij hondenvoer > Verszakken',
  'Hondenvoeding > Granenvrij hondenvoer > Natvoeding',
  'Hondenvoeding > Hondenworst'
]
const SNACK_PREFIXEN = [
  'Hondenvoeding > Kauwproducten',
  'Hondenvoeding > Hondenkoekjes',
  'Hondenvoeding > Granenvrij hondenvoer > Hondenkoekjes',
  'Hondenvoeding > Granenvrij hondenvoer > Kauwproducten',
  'Hondenvoeding > Pakketten & sets'
]

const decodeer = (waarde = '') => String(waarde)
  .replace(/<!\[CDATA\[|\]\]>/g, '')
  .replace(/&#x([0-9a-f]+);/gi, (_, hex) => String.fromCodePoint(parseInt(hex, 16)))
  .replace(/&#(\d+);/g, (_, dec) => String.fromCodePoint(Number(dec)))
  .replace(/&amp;/g, '&')
  .replace(/&lt;/g, '<')
  .replace(/&gt;/g, '>')
  .replace(/&quot;/g, '"')
  .replace(/&apos;|&#39;/g, "'")
  .trim()

const netteMerk = (merk = '') => {
  const schoon = decodeer(merk).replace(/®/g, '').replace(/\s+/g, ' ').trim()
  if (/^alsa-nature$/i.test(schoon)) return 'Alsa Nature'
  if (/^isegrim roots$/i.test(schoon)) return 'Isegrim Roots'
  if (/^isegrim$/i.test(schoon)) return 'Isegrim'
  return schoon
}

const bestandsnaam = (merk) => slugify(merk)

function parseNaamVerpakking(titel, merk) {
  let naam = decodeer(titel)
  const merkVarianten = [merk, merk.replace(/®/g, ''), 'alsa-nature', 'isegrim® Roots', 'isegrim®', 'isegrim']
    .filter(Boolean)
    .sort((a, b) => b.length - a.length)
  const voor = merkVarianten.find((variant) => naam.toLowerCase().startsWith(`${variant.toLowerCase()} `))
  if (voor) naam = naam.slice(voor.length).trim()

  const aantal = naam.match(/,\s*Aantal:\s*(.+)$/i)
  let verpakking = aantal ? aantal[1].trim() : ''
  if (aantal) naam = naam.slice(0, aantal.index).trim()
  if (!verpakking) {
    const maat = naam.match(/,\s*(\d+\s*x\s*\d+(?:[.,]\d+)?\s*(?:kg|g|stuks?)|\d+(?:[.,]\d+)?\s*(?:kg|g|stuks?))\s*$/i)
    if (maat) {
      verpakking = maat[1].trim()
      naam = naam.slice(0, maat.index).trim()
    }
  }
  // Ook bij een Aantal-verpakking staat de basismaat soms nog in de titel:
  // "SINGLE Rendier met aardappel, 800 g, Aantal: 6 x 800 g".
  naam = naam.replace(/,\s*\d+(?:[.,]\d+)?\s*(?:kg|g|stuks?)\s*$/i, '').trim()
  return {
    naam: naam.replace(/[,\s]+$/, '').trim(),
    verpakking: verpakking.replace(/,/g, '.').replace(/(\d)\.(\d)/g, '$1,$2').replace(/\s+/g, ' ').trim()
  }
}

function voedselType(categorie, naam) {
  if (/Droogvoer/i.test(categorie)) return 'kibble'
  if (/Natvoer|Hondenworst/i.test(categorie)) return 'wet'
  if (/Verszakken/i.test(categorie)) return 'raw'
  if (/Natvoeding/i.test(categorie)) return 'wet'
  return /brok|droog/i.test(naam) ? 'kibble' : 'wet'
}

function directeUrl(ruweUrl) {
  try {
    const url = new URL(ruweUrl)
    const doel = url.searchParams.get('r')
    if (doel && /^https?:/i.test(doel)) return doel
    if (/^https?:/i.test(url.searchParams.get('dl') ?? '')) return url.searchParams.get('dl')
  } catch {}
  return ''
}

function updDirecteUrl(link) {
  try {
    const url = new URL(link)
    const dl = url.searchParams.get('dl')
    if (dl) return `https://www.ultrapremiumdirect.nl/${decodeURIComponent(dl).replace(/^\/+/, '')}`
  } catch {}
  return ''
}

const DIEREN = [
  ['struisvogel', 'Struisvogel'], ['kalkoen', 'Kalkoen'], ['kippen', 'Kip'], ['kip', 'Kip'],
  ['eend', 'Eend'], ['zalm', 'Zalm'], ['forel', 'Forel'], ['haring', 'Haring'], ['vis', 'Vis'],
  ['runder', 'Rund'], ['rund', 'Rund'], ['varkens', 'Varken'], ['varken', 'Varken'],
  ['lam', 'Lam'], ['schaap', 'Lam'], ['hert', 'Hert'], ['paard', 'Paard'], ['geit', 'Geit'],
  ['konijn', 'Konijn'], ['kangoeroe', 'Kangoeroe'], ['buffel', 'Buffel'], ['gevogelte', 'Gevogelte'], ['wild', 'Wild']
]

function dierlijkeBronnen(tekst, tag = '') {
  const bron = `${tekst} ${tag}`.toLowerCase()
  const gevonden = []
  for (const [woord, label] of DIEREN) {
    if (new RegExp(`\\b${woord}`, 'i').test(bron) && !gevonden.includes(label)) gevonden.push(label)
  }
  return gevonden
}

function snackType(categorie, naam) {
  const tekst = `${categorie} ${naam}`.toLowerCase()
  if (/dental|gebit|tand/.test(tekst)) return 'dental'
  if (/staaf|stick|stix|kauwstaaf/.test(tekst)) return 'kauwstaaf'
  if (/gedroogde vis|vis|zalm|forel|haring/.test(tekst) && /gedroogd|droog/.test(tekst)) return 'gedroogde_vis'
  if (/reep|repen|strip|jerky|plak/.test(tekst)) return 'vleesreep'
  if (/trainer|zacht|soft/.test(tekst)) return 'zachte_snack'
  if (/koekje|koek|biscuit|hondenkoekjes/.test(tekst)) return 'koekje'
  if (/oor|oren|nek|nekken|pens|maag|bot|kauw|natural|daalder/.test(tekst)) return 'natural_chew'
  return 'overig'
}

function sizeClass(naam, tag = '') {
  const tekst = `${naam} ${tag}`.toLowerCase()
  if (/klein|small|mini|tot 10|tot 40/.test(tekst)) return 'klein'
  if (/groot|large|maxi|> ?25|vanaf 25/.test(tekst)) return 'groot'
  if (/middel|medium|10 tot 30/.test(tekst)) return 'middel'
  return 'alle'
}

function isGraanvrij(ingrediënten) {
  return !/\b(tarwe|maïs|mais|rijst|gerst|haver|spelt|rogge|granen|gierst|sorghum|boekweit)\b/i.test(ingrediënten)
}

function kcalPer100g(nutrition) {
  return nutrition.kcal ?? null
}

function geldigeSamenstelling(tekst = '') {
  const schoon = String(tekst).replace(/\s+/g, ' ').trim()
  if (schoon.length < 12) return false
  if (/^(100\s*%)/i.test(schoon)) return true
  if (/individuele soorten|individuele producten|levensfase bekijk|van bovenstaande producten|aanvullende voeding|zie de individuele/i.test(schoon)) return false
  return /[%,]/.test(schoon)
}

function pageTaken(html) {
  const pagina = parseProductPagina(html)
  return pagina
}

async function haalPagina(url, pogingen = 2) {
  for (let poging = 1; poging <= pogingen; poging += 1) {
    try {
      const antwoord = await fetch(url, {
        headers: { 'user-agent': 'Hondenvoervergelijker/1.0 (import; contact: hondenvoervergelijker@paulzuiderduin.nl)' },
        redirect: 'follow',
        signal: AbortSignal.timeout(30000)
      })
      if (!antwoord.ok) throw new Error(`HTTP ${antwoord.status}`)
      return await antwoord.text()
    } catch (fout) {
      if (poging === pogingen) throw fout
      await new Promise((resolve) => setTimeout(resolve, 350 * poging))
    }
  }
}

async function verwerk(taken, fn) {
  const resultaten = []
  let index = 0
  async function worker() {
    while (index < taken.length) {
      const huidig = taken[index]
      index += 1
      resultaten.push(await fn(huidig))
    }
  }
  await Promise.all(Array.from({ length: concurrency }, worker))
  return resultaten
}

const alfaPad = join(WORTEL, 'data', 'winkels', 'alsa-nature.xml')
const updPad = join(WORTEL, 'data', 'winkels', 'ultra-premium-direct.xml')
if (!existsSync(alfaPad)) {
  console.error(`Feed niet gevonden: ${alfaPad}`)
  process.exit(1)
}

const alfaXml = readFileSync(alfaPad, 'utf8')
const voerOffers = parseTradeTrackerFeed(alfaXml, { categorieen: [], categoriePrefixen: VOEDING_PREFIXEN, winkel: 'Alsa Nature' })
  .map((offer) => ({ ...offer, directeUrl: directeUrl(offer.url), soort: 'voer' }))
const snackOffers = parseTradeTrackerFeed(alfaXml, { categorieen: [], categoriePrefixen: SNACK_PREFIXEN, winkel: 'Alsa Nature' })
  .map((offer) => ({ ...offer, directeUrl: directeUrl(offer.url), soort: 'snack' }))
  .filter((offer) => !/speel-?\s*&\s*snackpakket|snuffelmat/i.test(offer.titel))

let updSnackOffers = []
if (existsSync(updPad)) {
  const updXml = readFileSync(updPad, 'utf8')
  for (const match of updXml.matchAll(/<product_info>([\s\S]*?)<\/product_info>/gi)) {
    const blok = match[1]
    const tag = (naam) => decodeer((blok.match(new RegExp(`<${naam}>([\\s\\S]*?)</${naam}>`, 'i')) ?? [])[1])
    if (tag('category') !== 'Hond' || !tag('category_path').includes('|Hondensnacks')) continue
    const size = Number(tag('size').replace(',', '.'))
    updSnackOffers.push({
      titel: tag('title'),
      merk: 'Ultra Premium Direct',
      ean: tag('ean').replace(/\D/g, ''),
      prijs: Number(tag('price')) || null,
      maat: Number.isFinite(size) && size > 0 ? (size < 1 ? `${Math.round(size * 1000)} g` : `${size} kg`) : '',
      url: tag('link'),
      directeUrl: updDirecteUrl(tag('link')),
      categorie: tag('category_path'),
      soort: 'snack'
    })
  }
}

const gekozenVoer = alleen === 'snacks' ? [] : (limiet ? voerOffers.slice(0, limiet) : voerOffers)
const gekozenSnacks = alleen === 'voer' ? [] : (limiet ? snackOffers.slice(0, limiet) : snackOffers)
const gekozenUpdSnacks = alleen === 'voer' ? [] : updSnackOffers

console.log(`Ophalen: ${gekozenVoer.length} voer, ${gekozenSnacks.length} Alsa-snacks, ${gekozenUpdSnacks.length} UPD-snacks (concurrency ${concurrency}).`)

const voerResultaten = await verwerk(gekozenVoer, async (offer) => {
  if (!offer.directeUrl) return { offer, fout: 'geen directe product-URL' }
  try {
    const html = await haalPagina(offer.directeUrl)
    return { offer, pagina: pageTaken(html) }
  } catch (fout) {
    return { offer, fout: String(fout.message || fout) }
  }
})

const snackResultaten = await verwerk(gekozenSnacks, async (offer) => {
  if (!offer.directeUrl) return { offer, fout: 'geen directe product-URL' }
  try {
    const html = await haalPagina(offer.directeUrl)
    return { offer, pagina: pageTaken(html) }
  } catch (fout) {
    return { offer, fout: String(fout.message || fout) }
  }
})

const updResultaten = await verwerk(gekozenUpdSnacks, async (offer) => {
  if (!offer.directeUrl) return { offer, fout: 'geen directe product-URL' }
  try {
    const html = await haalPagina(offer.directeUrl)
    return { offer, pagina: pageTaken(html) }
  } catch (fout) {
    return { offer, fout: String(fout.message || fout) }
  }
})

const problemen = []
const voerPerMerk = new Map()
const voedingPerMerk = new Map()

for (const resultaat of voerResultaten) {
  const { offer, pagina, fout } = resultaat
  if (fout || !pagina) {
    problemen.push(`VOER ${offer.titel}: ${fout ?? 'onbekende fout'}`)
    continue
  }
  if (!geldigeSamenstelling(pagina.ingredients)) {
    problemen.push(`VOER ${offer.titel}: geen bruikbare samenstelling gevonden`)
    continue
  }
  const { naam, verpakking } = parseNaamVerpakking(offer.titel, offer.merk)
  if (!naam) {
    problemen.push(`VOER ${offer.titel}: productnaam leeg`)
    continue
  }
  const merk = netteMerk(offer.merk)
  const voertype = voedselType(offer.categorie, naam)
  const product = {
    merk,
    naam,
    voertype,
    verpakking,
    gtin: offer.ean || null,
    bronUrl: offer.directeUrl,
    etiketOrigineel: pagina.ingredients,
    etiketNl: pagina.ingredients,
    aantekening: null,
    twijfel: null
  }
  if (!voerPerMerk.has(merk)) voerPerMerk.set(merk, [])
  voerPerMerk.get(merk).push(product)

  if (Object.keys(pagina.nutrition).length) {
    if (!voedingPerMerk.has(merk)) voedingPerMerk.set(merk, [])
    voedingPerMerk.get(merk).push({
      merk,
      naam,
      voertype,
      verpakking,
      bronUrl: offer.directeUrl,
      gecontroleerd: VANDAAG,
      basis: 'as-fed',
      waarden: pagina.nutrition,
      bronTekst: pagina.analytical.slice(0, 500),
      notitie: `Automatisch overgenomen van de officiële productpagina op ${VANDAAG}. Ontbrekende waarden zijn niet vermeld.`
    })
  }
}

const nieuweSnacks = []
function voegSnackToe(offer, pagina, bron, extra = {}) {
  if (!pagina?.ingredients || !geldigeSamenstelling(pagina.ingredients)) {
    problemen.push(`SNACK ${offer.titel}: geen bruikbare samenstelling gevonden`)
    return
  }
  const { naam, verpakking } = parseNaamVerpakking(offer.titel, offer.merk)
  const merk = netteMerk(offer.merk)
  if (!merk || !naam || /pakket|snuffelmat/i.test(naam)) {
    problemen.push(`SNACK ${offer.titel}: geen zelfstandige snack of merk ontbreekt`)
    return
  }
  // Vetten en oliën zijn geen eiwitbron; haal ze weg voordat we bronnen tellen.
  const ingredientenZonderVetten = pagina.ingredients.replace(/(?:kippen|zalm|vis|gevogelte|rund|varkens|lam|eend)(?:vet|olie)/gi, ' ')
  const bronnen = dierlijkeBronnen(`${naam} ${ingredientenZonderVetten}`, pagina.dierlijkeEiwitbron)
  const type = snackType(offer.categorie, naam)
  const idBasis = slugify(`${merk} ${naam} ${verpakking || offer.maat || ''}`)
  nieuweSnacks.push({
    id: idBasis,
    brand: merk,
    name: naam,
    snack_type: type,
    size_class: sizeClass(naam, pagina.hondengrootte),
    package_size: verpakking || offer.maat || '',
    protein_source: bronnen.length ? bronnen.join(' en ') : (pagina.dierlijkeEiwitbron ? pagina.dierlijkeEiwitbron.replace(/\b\w/g, (letter) => letter.toUpperCase()) : 'Niet vermeld'),
    single_protein: pagina.enkelEiwit || bronnen.length === 1,
    grain_free: isGraanvrij(pagina.ingredients),
    kcal_per_100g: kcalPer100g(pagina.nutrition),
    kcal_per_piece: null,
    ingredients_text: pagina.ingredients,
    trace_text: pagina.sporen || null,
    source_url: offer.directeUrl,
    source_note: `Automatisch overgenomen van de officiële productpagina op ${VANDAAG}.`,
    last_checked_at: VANDAAG,
    reviewed_at: null,
    imported_at: VANDAAG,
    import_note: 'Automatisch overgenomen; nog niet door een mens nagelopen.',
    review_note: null,
    ...extra
  })
}

for (const resultaat of snackResultaten) {
  if (resultaat.fout || !resultaat.pagina) {
    problemen.push(`SNACK ${resultaat.offer.titel}: ${resultaat.fout ?? 'onbekende fout'}`)
    continue
  }
  voegSnackToe(resultaat.offer, resultaat.pagina, 'Alsa Nature')
}
for (const resultaat of updResultaten) {
  if (resultaat.fout || !resultaat.pagina) {
    problemen.push(`SNACK ${resultaat.offer.titel}: ${resultaat.fout ?? 'onbekende fout'}`)
    continue
  }
  voegSnackToe(resultaat.offer, resultaat.pagina, 'Ultra Premium Direct')
}

const rapport = [
  '# Affiliate-import — Alsa Nature, Isegrim en Ultra Premium Direct',
  '',
  `- Datum: ${VANDAAG}`,
  `- Voerproducten opgehaald: ${voerResultaten.length}`,
  `- Alsa-snacks opgehaald: ${snackResultaten.length}`,
  `- UPD-snacks opgehaald: ${updResultaten.length}`,
  `- Voer met samenstelling: ${[...voerPerMerk.values()].reduce((som, lijst) => som + lijst.length, 0)}`,
  `- Nieuwe snacks met samenstelling: ${nieuweSnacks.length}`,
  `- Overgeslagen/fouten: ${problemen.length}`,
  '',
  '## Voer per merk',
  '',
  ...[...voerPerMerk.entries()].map(([merk, lijst]) => `- ${merk}: ${lijst.length}`),
  '',
  '## Nieuwe snacks per merk',
  '',
  ...[...nieuweSnacks.reduce((map, snack) => map.set(snack.brand, (map.get(snack.brand) || 0) + 1), new Map()).entries()].map(([merk, aantal]) => `- ${merk}: ${aantal}`),
  '',
  '## Fouten en ontbrekende pagina\'s',
  '',
  ...(problemen.length ? problemen.slice(0, 200).map((regel) => `- ${regel}`) : ['- Geen.'])
]

if (droog) {
  console.log(rapport.join('\n'))
  console.log('\nDry-run: geen bestanden gewijzigd.')
} else {
  for (const [merk, producten] of voerPerMerk) {
    const bestand = join(IMPORT, `${bestandsnaam(merk)}.json`)
    writeFileSync(bestand, `${JSON.stringify({ bron: 'https://www.alsa-nature.nl/', opgehaald: VANDAAG, producten }, null, 2)}\n`)
    const voeding = voedingPerMerk.get(merk) ?? []
    if (voeding.length) {
      writeFileSync(join(VOEDING, `${bestandsnaam(merk)}.json`), `${JSON.stringify({ merk, opgehaald: VANDAAG, producten: voeding }, null, 2)}\n`)
    }
  }

  if (nieuweSnacks.length) {
    const snacksJson = JSON.parse(readFileSync(SNACKS, 'utf8'))
    const nieuweIds = new Set(nieuweSnacks.map((snack) => snack.id))
    const nieuweUrls = new Set(nieuweSnacks.map((snack) => snack.source_url).filter(Boolean))
    // Verwijder eerdere automatische imports van deze merken die nu niet meer
    // geldig zijn (bijv. een eerdere parser vond een verkeerd tekstfragment).
    const producten = (snacksJson.producten ?? []).filter((snack) =>
      !(['Alsa Nature', 'Ultra Premium Direct'].includes(snack.brand) &&
        snack.imported_at && !snack.reviewed_at &&
        !nieuweIds.has(snack.id) && !nieuweUrls.has(snack.source_url))
    )
    const perId = new Map(producten.map((snack, index) => [snack.id, index]))
    const perUrl = new Map(producten.map((snack, index) => [snack.source_url, index]).filter(([url]) => url))
    for (const snack of nieuweSnacks) {
      const index = perId.get(snack.id) ?? perUrl.get(snack.source_url)
      if (index == null) {
        perId.set(snack.id, producten.length)
        if (snack.source_url) perUrl.set(snack.source_url, producten.length)
        producten.push(snack)
      } else {
        // Automatische import mag een bestaande menselijke review niet wissen.
        const vorige = producten[index]
        producten[index] = { ...vorige, ...snack, reviewed_at: vorige.reviewed_at ?? null, review_note: vorige.review_note ?? null }
      }
    }
    snacksJson.producten = producten
    snacksJson.bijgewerkt = VANDAAG
    writeFileSync(SNACKS, `${JSON.stringify(snacksJson, null, 2)}\n`)
  }
  writeFileSync(RAPPORT, `${rapport.join('\n')}\n`)
  console.log(`Import gereed: ${[...voerPerMerk.values()].reduce((som, lijst) => som + lijst.length, 0)} voer, ${nieuweSnacks.length} nieuwe snacks.`)
  console.log(`Rapport: ${RAPPORT}`)
}
