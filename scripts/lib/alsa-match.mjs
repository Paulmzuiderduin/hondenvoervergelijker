// Koppelt Alsa Nature/Isegirm-voer aan de affiliate-feed.
//
// De feedtitel bevat vaak de verpakkingsmaat en de merknaam wijkt af
// ("alsa-nature" tegenover "Alsa Nature"). Daarom matchen we niet op titel,
// maar alleen op twee harde kenmerken:
//
//   1. de directe product-URL uit de affiliate-link, of
//   2. een exact gelijk EAN.
//
// Als dezelfde feedaanbieding bij meerdere producten past, of een product bij
// meerdere aanbiedingen, laten we de link weg. Een verkeerde link is erger dan
// geen link.

export function normaliseerUrl(waarde = '') {
  try {
    const url = new URL(String(waarde))
    url.hash = ''
    return url.toString().replace(/\/$/, '')
  } catch {
    return ''
  }
}

export function directeTradeTrackerUrl(waarde = '') {
  try {
    const url = new URL(String(waarde))
    const doel = url.searchParams.get('r')
    return doel ? normaliseerUrl(decodeURIComponent(doel)) : ''
  } catch {
    return ''
  }
}

function uniekeMap(rijen, sleutel) {
  const map = new Map()
  const dubbel = new Set()
  for (const rij of rijen) {
    const waarde = sleutel(rij)
    if (!waarde) continue
    if (map.has(waarde)) dubbel.add(waarde)
    else map.set(waarde, rij)
  }
  for (const waarde of dubbel) map.delete(waarde)
  return map
}

export function koppelAlsaOpEanOfUrl(producten, aanbiedingen) {
  const perAanbiedingUrl = uniekeMap(aanbiedingen, (aanbieding) => normaliseerUrl(aanbieding.directeUrl))
  const perAanbiedingEan = uniekeMap(aanbiedingen, (aanbieding) => String(aanbieding.ean ?? '').replace(/\D/g, ''))

  const kandidaten = []
  const dubbelzinnig = []
  const zonderMatch = []

  for (const product of producten) {
    const productUrl = normaliseerUrl(product.source_url)
    const productEan = String(product.gtin ?? '').replace(/\D/g, '')
    const opUrl = productUrl ? perAanbiedingUrl.get(productUrl) : null
    const opEan = productEan ? perAanbiedingEan.get(productEan) : null

    if (opUrl && opEan && normaliseerUrl(opUrl.directeUrl) !== normaliseerUrl(opEan.directeUrl)) {
      dubbelzinnig.push({ product, aanbiedingen: [opUrl, opEan], reden: 'URL en EAN wijzen naar verschillende aanbiedingen' })
      continue
    }

    const aanbieding = opUrl ?? opEan
    if (!aanbieding) {
      zonderMatch.push(product)
      continue
    }
    kandidaten.push({ product, aanbieding })
  }

  // Eén aanbieding mag maar bij één product horen. Anders is niet zeker welke
  // variant de bezoeker na de klik te zien krijgt.
  const perAanbieding = new Map()
  for (const kandidaat of kandidaten) {
    const sleutel = normaliseerUrl(kandidaat.aanbieding.directeUrl) || kandidaat.aanbieding.url
    if (!perAanbieding.has(sleutel)) perAanbieding.set(sleutel, [])
    perAanbieding.get(sleutel).push(kandidaat)
  }

  const koppelingen = []
  for (const groep of perAanbieding.values()) {
    if (groep.length === 1) koppelingen.push(groep[0])
    else dubbelzinnig.push(...groep.map((kandidaat) => ({ ...kandidaat, reden: 'dezelfde aanbieding past bij meerdere producten' })))
  }

  koppelingen.sort((a, b) =>
    a.product.brand.localeCompare(b.product.brand, 'nl', { sensitivity: 'base' }) ||
    a.product.name.localeCompare(b.product.name, 'nl', { sensitivity: 'base' })
  )
  return { koppelingen, dubbelzinnig, zonderMatch }
}
