// Strikte matching voor de TradeTracker-productfeed van Dierenwinkel XL.
//
// De feed bevat geen betrouwbare EAN-kolom: vaak staat daar tekst als
// "medium adult 15kg". Daarom matchen we alleen als merk en volledige
// productnaam exact overeenkomen. Als beide kanten een verpakking noemen,
// moet die ook overlappen. Bij twijfel of meerdere kandidaten laten we de
// link weg: een verkeerde winkelknop is erger dan geen winkelknop.

import { maten, normaliseer } from './winkel-match.mjs'

const GENERIEK = new Set([
  'dog', 'hond', 'honden', 'voeding', 'complete', 'compleet', 'recipe', 'recept',
  'regionals', 'classic', 'classics', 'singles', 'highest', 'protein'
])

const decodeer = (waarde = '') => String(waarde)
  .replace(/&#x([0-9a-f]+);/gi, (_, hex) => String.fromCodePoint(parseInt(hex, 16)))
  .replace(/&#(\d+);/g, (_, dec) => String.fromCodePoint(Number(dec)))
  .replace(/&amp;/g, '&')
  .replace(/&lt;/g, '<')
  .replace(/&gt;/g, '>')
  .replace(/&quot;/g, '"')
  .replace(/&apos;|&#39;/g, "'")
  .replace(/&nbsp;/g, ' ')

function tag(blok, naam) {
  const match = blok.match(new RegExp(`<${naam}[^>]*>([\\s\\S]*?)</${naam}>`, 'i'))
  return decodeer(match?.[1] ?? '').replace(/<!\[CDATA\[|\]\]>/g, '').trim()
}

function eigenschappen(blok) {
  return Object.fromEntries(
    [...blok.matchAll(/<property name="([^"]+)">\s*<value>([\s\S]*?)<\/value>/gi)]
      .map((match) => [match[1].trim(), decodeer(match[2]).trim()])
  )
}

function tokens(tekst = '') {
  return normaliseer(tekst)
    .split(' ')
    .filter((token) => token && !GENERIEK.has(token) && (token.length > 1 || /^\d+$/.test(token)))
}

function gelijkeVerzameling(a, b) {
  if (!a.length || a.length !== b.length) return false
  const set = new Set(b)
  return a.every((token) => set.has(token))
}

export function formaatMaat(milligrammen) {
  if (!Number.isFinite(milligrammen) || milligrammen <= 0) return ''
  const waarde = milligrammen >= 1000 ? milligrammen / 1000 : milligrammen
  const eenheid = milligrammen >= 1000 ? 'kg' : 'g'
  return `${new Intl.NumberFormat('nl-NL', { maximumFractionDigits: 1 }).format(waarde)} ${eenheid}`
}

export function parseTradeTrackerFeed(xml, { categorie = 'hond-voeding', categorieen = null } = {}) {
  const producten = []
  const toegestaneCategorieen = categorieen ?? (Array.isArray(categorie) ? categorie : [categorie])
  for (const match of String(xml).matchAll(/<product\b[^>]*>([\s\S]*?)<\/product>/gi)) {
    const blok = match[1]
    const props = eigenschappen(blok)
    const categoryPath = (props.categoryPath ?? '').trim()
    if (toegestaneCategorieen.length && !toegestaneCategorieen.includes(categoryPath)) continue
    const naam = tag(blok, 'name')
    if (!naam) continue
    const url = tag(blok, 'URL')
    if (!/^https?:\/\//i.test(url)) continue
    // Niet elk feedproduct gebruikt "Merk - Product". Bewaar zulke titels wel;
    // de snackkoppeling werkt op EAN en hoeft het merk niet uit de titel te halen.
    const merk = naam.includes(' - ') ? naam.split(' - ')[0].trim() : ''
    const titelZonderMerk = naam.includes(' - ') ? naam.slice(naam.indexOf(' - ') + 3).trim() : naam
    const beschrijving = tag(blok, 'description').replace(/<[^>]+>/g, ' ')
    const eanTekst = (props.EAN ?? '').trim()
    const maatTekst = [eanTekst, naam, beschrijving].join(' ')
    const matenLijst = maten(maatTekst)
    // Alleen een positieve europrijs is bruikbaar als indicatie. Een lege of
    // buitenlandse prijs wordt niet als € 0,00 op de site gezet.
    const prijsBlok = blok.match(/<price\b([^>]*)>([\s\S]*?)<\/price>/i)
    const valuta = (prijsBlok?.[1].match(/currency="([^"]+)"/i)?.[1] ?? 'EUR').toUpperCase()
    const prijsGetal = Number(decodeer(prijsBlok?.[2] ?? '').replace(/<!\[CDATA\[|\]\]>/g, '').trim())
    const prijs = valuta === 'EUR' && Number.isFinite(prijsGetal) && prijsGetal > 0 ? prijsGetal : null
    producten.push({
      titel: naam,
      merk,
      titelZonderMerk,
      categorie: categoryPath,
      ean: /^\d{8,14}$/.test(eanTekst.replace(/\D/g, '')) ? eanTekst.replace(/\D/g, '') : '',
      eanTekst,
      maat: formaatMaat(matenLijst[0]),
      maten: matenLijst,
      prijs,
      url,
      winkel: 'Dierenwinkel XL'
    })
  }
  return producten
}

export function isBetrouwbareMatch(product, aanbieding) {
  if (!product?.brand || !product?.name || !aanbieding?.merk || !aanbieding?.titelZonderMerk) return false
  if (aanbieding.categorie && aanbieding.categorie !== 'hond-voeding') return false
  if (!gelijkeVerzameling(tokens(product.brand), tokens(aanbieding.merk))) return false
  if (!gelijkeVerzameling(tokens(product.name), tokens(aanbieding.titelZonderMerk))) return false
  const productMaten = maten(product.package_size)
  const aanbiedingMaten = aanbieding.maten ?? []
  if (productMaten.length && aanbiedingMaten.length) {
    return aanbiedingMaten.some((maat) => productMaten.includes(maat))
  }
  return true
}

export function koppelBetrouwbaar(producten, aanbiedingen) {
  const paren = []
  for (const product of producten) {
    for (const aanbieding of aanbiedingen) {
      if (isBetrouwbareMatch(product, aanbieding)) paren.push({ product, aanbieding })
    }
  }

  // Eén product mag maar één winkelknop krijgen. Meerdere aanbiedingen voor
  // hetzelfde product zijn geen probleem; kies de eerste met een matchende maat.
  const perProduct = new Map()
  for (const paar of paren) {
    if (!perProduct.has(paar.product.id)) perProduct.set(paar.product.id, [])
    perProduct.get(paar.product.id).push(paar)
  }
  const gekozen = []
  for (const lijst of perProduct.values()) {
    const productMaten = maten(lijst[0].product.package_size)
    const metMaat = lijst.filter(({ aanbieding }) => productMaten.length && (aanbieding.maten ?? []).some((maat) => productMaten.includes(maat)))
    const paar = (metMaat.length ? metMaat : lijst).sort((a, b) => a.aanbieding.url.localeCompare(b.aanbieding.url))[0]
    const overlappendeMaat = productMaten.length
      ? (paar.aanbieding.maten ?? []).find((maat) => productMaten.includes(maat))
      : null
    const maat = overlappendeMaat
      ? formaatMaat(overlappendeMaat)
      : productMaten.length ? '' : paar.aanbieding.maat
    gekozen.push({ ...paar, aanbieding: { ...paar.aanbieding, maat } })
  }

  // Eén aanbieding mag niet aan meerdere productrecords hangen; dat gebeurt
  // bijvoorbeeld bij een generieke feednaam die op meerdere varianten lijkt.
  const perUrl = new Map()
  for (const paar of gekozen) {
    if (!perUrl.has(paar.aanbieding.url)) perUrl.set(paar.aanbieding.url, [])
    perUrl.get(paar.aanbieding.url).push(paar)
  }
  const koppelingen = []
  const dubbelzinnig = []
  for (const lijst of perUrl.values()) {
    if (lijst.length === 1) koppelingen.push(lijst[0])
    else dubbelzinnig.push(...lijst)
  }
  koppelingen.sort((a, b) =>
    a.product.brand.localeCompare(b.product.brand, 'nl', { sensitivity: 'base' }) ||
    a.product.name.localeCompare(b.product.name, 'nl', { sensitivity: 'base' })
  )
  return { koppelingen, dubbelzinnig }
}
