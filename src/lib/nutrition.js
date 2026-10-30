// Voedingswaarden zoals ze op het etiket staan. De sleutels komen overeen met
// public.nutrition_terms in Supabase. Eén lijst voor de site, de beheeromgeving
// en de statische pagina's, zodat labels en eenheden niet uiteen kunnen lopen.
export const NUTRIENTS = [
  { key: 'protein', label: 'Ruw eiwit', shortLabel: 'Eiwit', unit: '%', category: 'macro', isCore: true, isStandard: true, sortOrder: 10 },
  { key: 'fat', label: 'Ruw vet', shortLabel: 'Vet', unit: '%', category: 'macro', isCore: true, isStandard: true, sortOrder: 20 },
  { key: 'fiber', label: 'Ruwe vezel', shortLabel: 'Vezel', unit: '%', category: 'macro', isCore: true, isStandard: true, sortOrder: 30 },
  { key: 'ash', label: 'Ruwe as', shortLabel: 'As', unit: '%', category: 'macro', isCore: true, isStandard: true, sortOrder: 40 },
  { key: 'moisture', label: 'Vocht', shortLabel: 'Vocht', unit: '%', category: 'macro', isCore: true, isStandard: true, sortOrder: 50 },
  { key: 'kcal', label: 'Metaboliseerbare energie', shortLabel: 'Energie', unit: 'kcal/100g', category: 'energie', isCore: true, isStandard: true, sortOrder: 60 },
  { key: 'calcium', label: 'Calcium', shortLabel: 'Calcium', unit: '%', category: 'mineraal', isCore: false, isStandard: true, sortOrder: 70 },
  { key: 'phosphorus', label: 'Fosfor', shortLabel: 'Fosfor', unit: '%', category: 'mineraal', isCore: false, isStandard: true, sortOrder: 80 },
  { key: 'omega3', label: 'Omega-3', shortLabel: 'Omega-3', unit: '%', category: 'vetzuur', isCore: false, isStandard: true, sortOrder: 90 },
  { key: 'omega6', label: 'Omega-6', shortLabel: 'Omega-6', unit: '%', category: 'vetzuur', isCore: false, isStandard: true, sortOrder: 100 }
]

export const NUTRIENT_BY_KEY = Object.fromEntries(NUTRIENTS.map((nutrient) => [nutrient.key, nutrient]))
export const CORE_NUTRIENTS = NUTRIENTS.filter((nutrient) => nutrient.isCore)
export const ADDITIONAL_NUTRIENTS = NUTRIENTS.filter((nutrient) => nutrient.isStandard && !nutrient.isCore)

const getalFormaat = new Intl.NumberFormat('nl-NL', { maximumFractionDigits: 2 })

export function formatteerVoedingswaarde(nutrient, waarde) {
  const waardeGetal = typeof nutrient === 'object' ? nutrient.value : waarde
  const eenheid = typeof nutrient === 'object' ? nutrient.unit : NUTRIENT_BY_KEY[nutrient]?.unit ?? ''
  const getal = getalFormaat.format(Number(waardeGetal))
  if (eenheid === '%') return `${getal}%`
  if (eenheid === 'kcal/100g') return `${getal} kcal/100 g`
  return `${getal} ${eenheid}`.trim()
}

// PostgREST geeft de rijen als een geneste array. Onbekende sleutels en lege
// waarden negeren we; de database bewaakt de eenheden en grenzen.
export function normaliseerVoedingswaarden(rijen = []) {
  const perSleutel = new Map()
  for (const rij of Array.isArray(rijen) ? rijen : []) {
    const nutrient = NUTRIENT_BY_KEY[rij?.nutrient_key ?? rij?.key]
    if (!nutrient) continue
    if (rij.value == null || String(rij.value).trim() === '') continue
    const waarde = Number(rij.value)
    if (!Number.isFinite(waarde) || waarde < 0) continue
    const basis = rij.basis ?? 'as-fed'
    // Dezelfde nutrient kan als as-fed en als droge stof staan. De site toont
    // voorlopig alleen as-fed; droge stof bewaren we voor later.
    if (perSleutel.has(nutrient.key) && basis !== 'as-fed') continue
    perSleutel.set(nutrient.key, {
      ...nutrient,
      value: waarde,
      basis,
      qualifier: rij.qualifier ?? null,
      note: rij.note ?? null
    })
  }
  return [...perSleutel.values()].sort((eerste, tweede) => eerste.sortOrder - tweede.sortOrder)
}

export function voedingswaardeMap(rijen = []) {
  return Object.fromEntries(normaliseerVoedingswaarden(rijen).map((nutrient) => [nutrient.key, nutrient.value]))
}

export function voedingswaardeSamenvatting(rijen = []) {
  const waarden = normaliseerVoedingswaarden(rijen)
  if (!waarden.length) return ''
  const perSleutel = new Map(waarden.map((nutrient) => [nutrient.key, nutrient]))
  const voorkeur = ['protein', 'fat', 'kcal'].map((key) => perSleutel.get(key)).filter(Boolean)
  const rest = waarden.filter((nutrient) => !voorkeur.includes(nutrient)).slice(0, Math.max(0, 3 - voorkeur.length))
  return [...voorkeur, ...rest]
    .slice(0, 3)
    .map((nutrient) => `${nutrient.shortLabel} ${formatteerVoedingswaarde(nutrient, nutrient.value)}`)
    .join(' · ')
}

export function voedingswaardeStatus(rijen = []) {
  const aanwezig = new Set(normaliseerVoedingswaarden(rijen).map((nutrient) => nutrient.key))
  const aantal = CORE_NUTRIENTS.filter((nutrient) => aanwezig.has(nutrient.key)).length
  const aanvullendAantal = ADDITIONAL_NUTRIENTS.filter((nutrient) => aanwezig.has(nutrient.key)).length
  return {
    aantal,
    totaal: CORE_NUTRIENTS.length,
    aanvullendAantal,
    aanvullendTotaal: ADDITIONAL_NUTRIENTS.length,
    volledig: aantal === CORE_NUTRIENTS.length,
    gedeeltelijk: aantal > 0 && aantal < CORE_NUTRIENTS.length,
    ontbreekt: aantal === 0
  }
}

export function valideerVoedingswaarden(waarden = {}) {
  const schoon = {}
  const fouten = []
  for (const nutrient of NUTRIENTS) {
    const ruw = waarden[nutrient.key]
    if (ruw == null || String(ruw).trim() === '') continue
    const getal = Number(String(ruw).replace(',', '.'))
    if (!Number.isFinite(getal) || getal < 0) {
      fouten.push(`${nutrient.label}: vul een getal van 0 of hoger in.`)
      continue
    }
    const maximum = nutrient.unit === 'kcal/100g' ? 1000 : 100
    if (getal > maximum) {
      fouten.push(`${nutrient.label}: ${getal} is te hoog.`)
      continue
    }
    schoon[nutrient.key] = getal
  }
  return { waarden: schoon, fouten }
}
