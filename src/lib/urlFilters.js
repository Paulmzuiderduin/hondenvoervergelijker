import { ALLERGENS } from './allergens.js'

// Eén vaste afspraak voor de URL:
//   ?merk=Orijen&merk=Acana        → alleen deze merken
//   ?zonder=Orijen                 → alles behalve Orijen
//   ?geenmerken=1                  → geen enkel merk
//   ?allergeen=chicken&allergeen=beef
// Oude links met ?allergenen=chicken,beef en ?nietmerk=Orijen blijven werken.
const FILTER_PARAMS = ['merk', 'zonder', 'nietmerk', 'geenmerken', 'allergeen', 'allergenen']
const GELDIGE_ALLERGENEN = new Set(ALLERGENS.map(({ key }) => key))

export function leesAllergenen(params) {
  const waarden = params.getAll('allergeen')
  const oud = params.get('allergenen')
  if (oud) waarden.push(...oud.split(','))
  return [...new Set(waarden.map((key) => key.trim().toLowerCase()).filter((key) => GELDIGE_ALLERGENEN.has(key)))]
}

// Geeft de effectieve merkselectie terug plus de manier waarop de URL hem
// uitdrukt. "include" schrijft ?merk=, "exclude" schrijft ?zonder=.
export function leesMerken(params, alleMerken) {
  const alle = Array.isArray(alleMerken) ? alleMerken : []
  if (params.get('geenmerken') === '1') return { brands: [], mode: 'include' }

  const zonder = [...params.getAll('zonder'), ...params.getAll('nietmerk')].map((merk) => merk.trim()).filter(Boolean)
  if (zonder.length) {
    const uitgesloten = new Set(zonder.map((merk) => merk.toLowerCase()))
    const gevonden = alle.filter((brand) => !uitgesloten.has(brand.toLowerCase()))
    return {
      brands: gevonden.length === alle.length ? null : gevonden,
      mode: gevonden.length && gevonden.length < alle.length ? 'exclude' : 'include'
    }
  }

  const merken = params.getAll('merk').map((merk) => merk.trim()).filter(Boolean)
  if (merken.length) {
    const gevonden = alle.filter((brand) => merken.some((merk) => merk.toLowerCase() === brand.toLowerCase()))
    if (gevonden.length) return { brands: gevonden.length === alle.length ? null : gevonden, mode: 'include' }
  }
  return { brands: null, mode: 'include' }
}

export function schrijfFilters(params, { brands, mode = 'include', allergenen = [], alleMerken = [] }) {
  const volgende = new URLSearchParams(params)
  for (const sleutel of FILTER_PARAMS) volgende.delete(sleutel)

  if (brands === null) {
    // Alle merken: geen merkparameter.
  } else if (brands.length === 0) {
    volgende.set('geenmerken', '1')
  } else if (mode === 'exclude' && Array.isArray(alleMerken) && alleMerken.length) {
    const gekozen = new Set(brands)
    for (const brand of alleMerken) if (!gekozen.has(brand)) volgende.append('zonder', brand)
  } else {
    for (const brand of brands) volgende.append('merk', brand)
  }

  for (const key of allergenen) volgende.append('allergeen', key)
  return volgende
}
