// Strikte matching voor de Daisycon-productfeeds van Plein.nl en Petgamma.com.
//
// De feeds bevatten een echte EAN. Die is leidend. Ontbreekt de EAN in onze
// catalogus, dan koppelen we alleen bij een exacte match op merk, productnaam
// én verpakkingsmaat. Geen fuzzy matching: bij twijfel blijft de link weg.

const GENERIEK = new Set([
  'hond', 'honden', 'hondenvoer', 'hondenvoeding', 'hondervoeding',
  'hondenbrokken', 'voer', 'voeding', 'diervoeding', 'droog', 'nat',
  'natvoer', 'brokken', 'compleet', 'complete', 'met', 'en', 'voor',
  'van', 'the'
])

const MERK_ALIASSEN = new Map([
  ['smorlke', 'smolke'],
  ['smolke', 'smolke'],
  ['smørlke', 'smolke'],
  ['hill s', 'hills'],
  ['hills', 'hills']
])

export function normaliseer(waarde = '') {
  return String(waarde)
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .replace(/[øØ]/g, 'o')
    .replace(/[æÆ]/g, 'ae')
    .replace(/[ß]/g, 'ss')
    .toLowerCase()
    .replace(/&/g, ' en ')
    .replace(/['’`]/g, '')
    .replace(/[^a-z0-9]+/g, ' ')
    .replace(/\s+/g, ' ')
    .trim()
}

export function merkSleutel(merk = '') {
  const sleutel = normaliseer(merk)
  return MERK_ALIASSEN.get(sleutel) ?? sleutel
}

function verwijderMaten(tekst = '') {
  return String(tekst)
    .replace(/\b\d+\s*x\s*\d+(?:[.,]\d+)?\s*(?:kg|g|gr|gram|stuks?)\b/gi, ' ')
    .replace(/\b\d+(?:[.,]\d+)?(?:\s*\/\s*\d+(?:[.,]\d+)?)*\s*(?:kg|g|gr|gram|stuks?)\b/gi, ' ')
}

export function naamTokens(naam = '', merk = '') {
  const merktokens = new Set(normaliseer(merk).split(' ').filter(Boolean))
  return new Set(
    normaliseer(verwijderMaten(naam))
      .split(' ')
      .filter((token) => token && !merktokens.has(token) && !GENERIEK.has(token))
  )
}

export function formaatMaat(grammen) {
  if (!Number.isFinite(grammen) || grammen <= 0) return ''
  return grammen >= 1000
    ? `${new Intl.NumberFormat('nl-NL', { maximumFractionDigits: 2 }).format(grammen / 1000)} kg`
    : `${Math.round(grammen)} g`
}

export function alleMaten(tekst = '') {
  const waarde = String(tekst).toLowerCase().replace(/,/g, '.')
  const uit = new Set()
  for (const match of waarde.matchAll(/(?:(\d+(?:\.\d+)?)\s*x\s*)?(\d+(?:\.\d+)?)\s*(kg|g|gr|gram)\b/g)) {
    const aantal = Number(match[2])
    if (!Number.isFinite(aantal) || aantal <= 0) continue
    const grammen = match[3] === 'kg' ? aantal * 1000 : aantal
    uit.add(Math.round(grammen))
    const vermenigvuldiger = Number(match[1])
    if (Number.isFinite(vermenigvuldiger) && vermenigvuldiger > 0) uit.add(Math.round(vermenigvuldiger * grammen))
  }
  for (const match of waarde.matchAll(/((?:\d+(?:\.\d+)?\s*\/\s*)+\d+(?:\.\d+)?)\s*(kg|g|gr|gram)\b/g)) {
    const factor = match[2] === 'kg' ? 1000 : 1
    for (const deel of match[1].split('/')) {
      const aantal = Number(deel.trim())
      if (Number.isFinite(aantal) && aantal > 0) uit.add(Math.round(aantal * factor))
    }
  }
  return [...uit].sort((a, b) => a - b)
}

export function parseDaisyconRetailFeed(feed, { winkel } = {}) {
  const programma = feed?.datafeed?.programs?.[0]
  const producten = []
  for (const rij of programma?.products ?? []) {
    const info = rij?.product_info ?? rij
    const categorie = String(info?.category_path ?? '')
    if (!/hond/i.test(categorie) || !/hondenvoer/i.test(categorie)) continue

    const titel = String(info?.title ?? '').trim()
    const url = String(info?.link ?? '').trim()
    if (!titel || !/^https?:\/\//i.test(url)) continue

    const ean = String(info?.ean ?? '').replace(/\D/g, '')
    const feedMaten = alleMaten(info?.size ?? '')
    const titelMaten = alleMaten(titel)
    const maatGram = feedMaten.at(-1) ?? titelMaten.at(-1) ?? null
    const prijsGetal = Number(info?.price)

    producten.push({
      winkel,
      titel,
      merk: String(info?.brand ?? '').trim(),
      ean: /^\d{8,14}$/.test(ean) ? ean : '',
      maat: formaatMaat(maatGram),
      maatGram,
      prijs: Number.isFinite(prijsGetal) && prijsGetal > 0 ? prijsGetal : null,
      url,
      categorie
    })
  }
  return producten
}

function enkelvoudigeEanMap(producten) {
  const map = new Map()
  const dubbel = new Set()
  for (const product of producten) {
    const ean = String(product.gtin ?? '').replace(/\D/g, '')
    if (!ean) continue
    if (map.has(ean)) dubbel.add(ean)
    else map.set(ean, product)
  }
  for (const ean of dubbel) map.delete(ean)
  return map
}

function naamSleutel(product) {
  return `${merkSleutel(product.brand)}|${[...naamTokens(product.name, product.brand)].sort().join(' ')}`
}

export function koppelDaisyconRetail(producten, aanbiedingen) {
  const perEan = enkelvoudigeEanMap(producten)
  const perNaam = new Map()
  for (const product of producten) {
    const sleutel = naamSleutel(product)
    if (!perNaam.has(sleutel)) perNaam.set(sleutel, [])
    perNaam.get(sleutel).push(product)
  }

  const koppelingen = []
  const exact = []
  const naamMaat = []
  const dubbelzinnig = []
  const zonderMatch = []

  for (const aanbieding of aanbiedingen) {
    const ean = String(aanbieding.ean ?? '').replace(/\D/g, '')
    let kandidaten = []

    if (ean && perEan.has(ean)) {
      kandidaten = [perEan.get(ean)]
    } else if (ean && aanbieding.maatGram) {
      kandidaten = (perNaam.get(`${merkSleutel(aanbieding.merk)}|${[...naamTokens(aanbieding.titel, aanbieding.merk)].sort().join(' ')}`) ?? [])
        .filter((product) => {
          const productMaten = alleMaten(product.package_size ?? '')
          if (!productMaten.length || !productMaten.includes(aanbieding.maatGram)) return false
          const productEan = String(product.gtin ?? '').replace(/\D/g, '')
          return !productEan || productEan === ean
        })
    }

    if (kandidaten.length > 1) {
      dubbelzinnig.push({ aanbieding, kandidaten, reden: 'meerdere catalogusproducten passen bij merk, naam en maat' })
      continue
    }
    if (!kandidaten.length) {
      zonderMatch.push(aanbieding)
      continue
    }

    const product = kandidaten[0]
    const methode = ean && String(product.gtin ?? '').replace(/\D/g, '') === ean ? 'ean' : 'naam+maat'
    const koppeling = { product, aanbieding, methode }
    koppelingen.push(koppeling)
    ;(methode === 'ean' ? exact : naamMaat).push(koppeling)
  }

  // Dezelfde trackinglink mag maar bij één product horen. Anders is niet
  // zeker welk product de bezoeker na de klik te zien krijgt.
  const perUrl = new Map()
  for (const koppeling of koppelingen) {
    if (!perUrl.has(koppeling.aanbieding.url)) perUrl.set(koppeling.aanbieding.url, [])
    perUrl.get(koppeling.aanbieding.url).push(koppeling)
  }
  const dubbeleUrls = new Set()
  for (const groep of perUrl.values()) {
    if (groep.length > 1) groep.forEach((koppeling) => dubbeleUrls.add(koppeling))
  }
  for (const koppeling of dubbeleUrls) {
    dubbelzinnig.push({ aanbieding: koppeling.aanbieding, kandidaten: [koppeling.product], reden: 'dezelfde feedlink past bij meerdere producten' })
  }

  const veilig = koppelingen.filter((koppeling) => !dubbeleUrls.has(koppeling))
  veilig.sort((a, b) =>
    a.product.brand.localeCompare(b.product.brand, 'nl', { sensitivity: 'base' }) ||
    a.product.name.localeCompare(b.product.name, 'nl', { sensitivity: 'base' }) ||
    String(a.aanbieding.maat).localeCompare(String(b.aanbieding.maat), 'nl', { sensitivity: 'base' })
  )
  return { koppelingen: veilig, exact, naamMaat, dubbelzinnig, zonderMatch }
}
