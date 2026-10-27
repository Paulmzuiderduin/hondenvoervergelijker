// Matching tussen producten uit de vergelijker en aanbiedingen uit een
// affiliate-feed. Bewust streng: een verkeerde koppeling is erger dan geen
// koppeling, want de bezoeker moet op de juiste pagina uitkomen.

const BRAND_ALIASES = new Map([
  ["hill's science plan", "hills science plan"],
  ["hill's prescription diet", "hills prescription diet"],
  ['hills', 'hills'],
  ['smolke', 'smolke'],
  ['smørlke', 'smolke'],
  ['butchers', 'butchers'],
  ['brit care', 'brit'],
  ['royal canin', 'royal canin']
])

export function normaliseer(tekst = '') {
  return String(tekst)
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
  const schoon = normaliseer(merk)
  return BRAND_ALIASES.get(schoon) ?? schoon
}

// Haalt getallen met een gewichtseenheid uit een verpakkingstekst.
// "2 / 6 / 11,4 kg" -> [2, 6, 11.4]; "12 x 100 g" -> [100, 12].
export function maten(tekst = '') {
  const delen = String(tekst)
    .toLowerCase()
    .replace(/,/g, '.')
    .split(/\s*[/+]\s*/)
    .map((deel) => deel.trim())
    .filter(Boolean)

  let eenheid = ''
  const uit = []
  for (let i = delen.length - 1; i >= 0; i -= 1) {
    const deel = delen[i]
    const metEenheid = deel.match(/(\d+(?:\.\d+)?)\s*(kg|g)\b/)
    if (metEenheid) eenheid = metEenheid[2]
    if (!eenheid) continue
    const aantal = deel.match(/\d+\s*x\s*(\d+(?:\.\d+)?)\s*(?:kg|g)?/)
    const waarde = aantal ? Number(aantal[1]) : Number((deel.match(/\d+(?:\.\d+)?/) ?? [])[0])
    if (!Number.isFinite(waarde) || waarde <= 0) continue
    uit.push(eenheid === 'kg' ? Math.round(waarde * 1000) : Math.round(waarde))
  }
  return [...new Set(uit)].sort((a, b) => a - b)
}

function tokens(tekst = '') {
  return new Set(normaliseer(tekst).split(' ').filter((deel) => deel.length > 1))
}

function tokenOverlap(a, b) {
  const eerste = tokens(a)
  const tweede = tokens(b)
  if (!eerste.size || !tweede.size) return 0
  let gelijk = 0
  for (const token of eerste) if (tweede.has(token)) gelijk += 1
  return gelijk / Math.max(eerste.size, tweede.size)
}

// Score tussen 0 en 1. 1 = exact dezelfde EAN.
export function matchScore(product, aanbieding) {
  const productEan = String(product.gtin ?? '').replace(/\D/g, '')
  const aanbiedingEan = String(aanbieding.ean ?? '').replace(/\D/g, '')
  if (productEan && aanbiedingEan && productEan === aanbiedingEan) return 1

  const merkGelijk =
    merkSleutel(aanbieding.merk) === merkSleutel(product.brand) ||
    normaliseer(aanbieding.titel).includes(merkSleutel(product.brand))
  if (!merkGelijk) return 0

  let titel = normaliseer(aanbieding.titel)
  const merkNorm = normaliseer(product.brand)
  if (titel.startsWith(merkNorm)) titel = titel.slice(merkNorm.length).trim()

  const naam = normaliseer(product.name)
  let score = 0
  if (titel === naam) score = 0.98
  else if (titel.includes(naam) || naam.includes(titel)) score = 0.9
  else {
    const overlap = tokenOverlap(titel, naam)
    score = overlap >= 0.75 ? 0.82 : overlap * 0.75
  }

  const productMaten = maten(product.package_size)
  const aanbiedingMaten = maten(aanbieding.maat || aanbieding.titel)
  if (productMaten.length && aanbiedingMaten.length) {
    const overlapt = aanbiedingMaten.some((maat) => productMaten.includes(maat))
    score += overlapt ? 0.05 : -0.15
  }

  return Math.max(0, Math.min(1, score))
}

export const MINIMUM_SCORE = 0.82

// Kiest per winkel de best passende aanbieding. Bij een gelijke score wint de
// laagste prijs. Zo blijft de vergelijking onafhankelijk: alleen de match telt,
// niet of er commissie op zit.
export function kiesAanbiedingen(product, aanbiedingen, { minimum = MINIMUM_SCORE } = {}) {
  const perWinkel = new Map()
  for (const aanbieding of aanbiedingen) {
    const score = matchScore(product, aanbieding)
    if (score < minimum) continue
    const huidig = perWinkel.get(aanbieding.winkel)
    const prijs = Number(aanbieding.prijs)
    const beter =
      !huidig ||
      score > huidig.score + 0.0001 ||
      (Math.abs(score - huidig.score) <= 0.0001 && Number.isFinite(prijs) && (!Number.isFinite(huidig.prijs) || prijs < huidig.prijs))
    if (beter) perWinkel.set(aanbieding.winkel, { ...aanbieding, score, prijs: Number.isFinite(prijs) ? prijs : null })
  }
  return [...perWinkel.values()].sort((a, b) => a.winkel.localeCompare(b.winkel, 'nl'))
}
