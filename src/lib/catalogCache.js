// Bewaart de laatst opgehaalde catalogus op het apparaat. Daarmee staat de
// site bij een volgend bezoek meteen (met de vorige gegevens) en worden de
// nieuwste gegevens op de achtergrond opgehaald.
const CACHE_VERSIE = '2026-10-27-1'
const MAX_LEEFTIJD_MS = 6 * 60 * 60 * 1000
const PRODUCTEN_SLEUTEL = `hondenvoervergelijker:producten:${CACHE_VERSIE}`
const TERMEN_SLEUTEL = `hondenvoervergelijker:termen:${CACHE_VERSIE}`

function lees(sleutel) {
  try {
    const ruw = window.localStorage.getItem(sleutel)
    if (!ruw) return null
    const bewaard = JSON.parse(ruw)
    if (!bewaard || bewaard.versie !== CACHE_VERSIE || !Array.isArray(bewaard.data)) return null
    if (!bewaard.opgeslagen || Date.now() - bewaard.opgeslagen > MAX_LEEFTIJD_MS) return null
    return bewaard.data
  } catch {
    return null
  }
}

function schrijf(sleutel, data) {
  const opslaan = () => {
    try {
      window.localStorage.setItem(sleutel, JSON.stringify({ versie: CACHE_VERSIE, opgeslagen: Date.now(), data }))
    } catch {
      // Volle of geblokkeerde opslag: de site werkt gewoon zonder cache.
    }
  }
  // Groot (ongeveer 1,3 MB): pas opslaan als de pagina niets anders te doen heeft.
  if (typeof window.requestIdleCallback === 'function') window.requestIdleCallback(opslaan, { timeout: 2000 })
  else window.setTimeout(opslaan, 0)
}

export function leesCatalogusCache() {
  return { products: lees(PRODUCTEN_SLEUTEL), terms: lees(TERMEN_SLEUTEL) }
}

export function schrijfProductenCache(producten) {
  if (Array.isArray(producten) && producten.length) schrijf(PRODUCTEN_SLEUTEL, producten)
}

export function schrijfTermenCache(termen) {
  if (Array.isArray(termen) && termen.length) schrijf(TERMEN_SLEUTEL, termen)
}
