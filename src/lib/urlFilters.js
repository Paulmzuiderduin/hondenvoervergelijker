import { ALLERGENS, FOOD_TYPES } from './allergens.js'
import { SORTING_KEYS } from './sorting.js'
import { LIFE_STAGE_KEYS, SIZE_KEYS } from './traits.js'

// Eén vaste afspraak voor de URL:
//   ?merk=Orijen&merk=Acana        → alleen deze merken
//   ?zonder=Orijen                 → alles behalve Orijen
//   ?geenmerken=1                  → geen enkel merk
//   ?allergeen=chicken&allergeen=beef
//   ?eiwit=25-40&vet=10-20&kcal=300-500
// Oude links met ?allergenen=chicken,beef en ?nietmerk=Orijen blijven werken.
const VOEDING_PARAMS = {
  eiwit: 'protein',
  vet: 'fat',
  kcal: 'kcal',
  vezel: 'fiber',
  as: 'ash',
  vocht: 'moisture',
  calcium: 'calcium',
  fosfor: 'phosphorus',
  omega3: 'omega3',
  omega6: 'omega6'
}
const FILTER_PARAMS = ['merk', 'zonder', 'nietmerk', 'geenmerken', 'allergeen', 'allergenen', 'type', 'geentype', 'sorteer', 'zoek', 'leeftijd', 'maat', ...Object.keys(VOEDING_PARAMS)]
const GELDIGE_ALLERGENEN = new Set(ALLERGENS.map(({ key }) => key))
const ALLE_TYPES = FOOD_TYPES.map(([key]) => key)

// Een voedingsbereik in de URL is "min-max", met een punt of komma als
// decimaalteken. Ongeldige of omgekeerde bereiken worden genegeerd; de site
// valt dan terug op de volledige schaal.
export function leesVoedingsfilters(params) {
  const uit = {}
  for (const [param, key] of Object.entries(VOEDING_PARAMS)) {
    const ruw = (params.get(param) ?? '').trim()
    if (!ruw) continue
    const match = /^(\d+(?:[.,]\d+)?)-(\d+(?:[.,]\d+)?)$/.exec(ruw)
    if (!match) continue
    const min = Number(match[1].replace(',', '.'))
    const max = Number(match[2].replace(',', '.'))
    if (!Number.isFinite(min) || !Number.isFinite(max) || min < 0 || max < min) continue
    uit[key] = { min, max }
  }
  return uit
}

// Voertype: geen parameter betekent alle types. ?geentype=1 betekent dat de
// gebruiker bewust niets heeft aangevinkt. Onbekende waarden worden genegeerd.
export function leesVoertypes(params) {
  if (params.get('geentype') === '1') return []
  const waarden = params.getAll('type')
    .flatMap((waarde) => waarde.split(','))
    .map((waarde) => waarde.trim().toLowerCase())
    .filter((waarde) => ALLE_TYPES.includes(waarde))
  return waarden.length ? [...new Set(waarden)] : [...ALLE_TYPES]
}

export function leesSortering(params) {
  const waarde = (params.get('sorteer') ?? '').trim().toLowerCase()
  return SORTING_KEYS.has(waarde) ? waarde : 'standaard'
}

export function leesZoekterm(params) {
  return (params.get('zoek') ?? '').trim().slice(0, 80)
}

export function leesTraitFilters(params) {
  const lees = (param, toegestaan) => [...new Set(
    params.getAll(param)
      .flatMap((waarde) => waarde.split(','))
      .map((waarde) => waarde.trim().toLowerCase())
      .filter((waarde) => toegestaan.includes(waarde))
  )]
  return {
    lifeStages: lees('leeftijd', LIFE_STAGE_KEYS),
    sizes: lees('maat', SIZE_KEYS)
  }
}

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

export function schrijfFilters(params, { brands, mode = 'include', allergenen = [], alleMerken = [], voeding = {}, types, sortering = 'standaard', zoek = '', lifeStages = [], sizes = [] }) {
  const volgende = new URLSearchParams(params)
  for (const sleutel of FILTER_PARAMS) volgende.delete(sleutel)

  if (Array.isArray(types)) {
    const gekozen = [...new Set(types.filter((key) => ALLE_TYPES.includes(key)))]
    if (gekozen.length === 0) volgende.set('geentype', '1')
    else if (gekozen.length < ALLE_TYPES.length) for (const key of gekozen) volgende.append('type', key)
  }

  if (sortering !== 'standaard' && SORTING_KEYS.has(sortering)) volgende.set('sorteer', sortering)
  const zoekterm = String(zoek ?? '').trim().slice(0, 80)
  if (zoekterm) volgende.set('zoek', zoekterm)
  for (const key of lifeStages) if (LIFE_STAGE_KEYS.includes(key)) volgende.append('leeftijd', key)
  for (const key of sizes) if (SIZE_KEYS.includes(key)) volgende.append('maat', key)

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
  for (const [param, key] of Object.entries(VOEDING_PARAMS)) {
    const bereik = voeding[key]
    if (!bereik) continue
    const min = Math.round(bereik.min * 100) / 100
    const max = Math.round(bereik.max * 100) / 100
    volgende.set(param, `${min}-${max}`)
  }
  return volgende
}
