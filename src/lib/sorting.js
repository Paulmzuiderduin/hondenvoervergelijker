// Sorteeropties voor de resultaten. De volgorde van de drie oordeelgroepen
// (geschikt, controleren, uitgesloten) blijft altijd staan; deze keuze bepaalt
// alleen de volgorde binnen elke groep.
export const SORTING_OPTIONS = [
  { key: 'standaard', label: 'Standaard' },
  { key: 'eiwit-hoog', label: 'Eiwit: hoog → laag', nutrient: 'protein', richting: -1 },
  { key: 'eiwit-laag', label: 'Eiwit: laag → hoog', nutrient: 'protein', richting: 1 },
  { key: 'vet-hoog', label: 'Vet: hoog → laag', nutrient: 'fat', richting: -1 },
  { key: 'vet-laag', label: 'Vet: laag → hoog', nutrient: 'fat', richting: 1 },
  { key: 'energie-laag', label: 'Energie: laag → hoog', nutrient: 'kcal', richting: 1 },
  { key: 'energie-hoog', label: 'Energie: hoog → laag', nutrient: 'kcal', richting: -1 }
]

export const SORTING_BY_KEY = Object.fromEntries(SORTING_OPTIONS.map((optie) => [optie.key, optie]))
export const SORTING_KEYS = new Set(SORTING_OPTIONS.map((optie) => optie.key))
