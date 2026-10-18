export const ALLERGEN_GROUPS = [
  {
    key: 'protein',
    label: 'Eiwitbron',
    allergenPairs: [
      ['duck', 'Eend'], ['venison', 'Hert'], ['turkey', 'Kalkoen'], ['chicken', 'Kip'],
      ['rabbit', 'Konijn'], ['lamb', 'Lam'], ['horse', 'Paard'], ['beef', 'Rund'],
      ['pork', 'Varken'], ['fish', 'Vis (alle soorten)'], ['whitefish', 'Witvis'], ['salmon', 'Zalm']
    ]
  },
  {
    key: 'carbohydrate',
    label: 'Koolhydraatbron',
    allergenPairs: [
      ['potato', 'Aardappel'], ['pea', 'Erwt'], ['barley', 'Gerst'], ['oats', 'Haver'],
      ['chickpea', 'Kikkererwt'], ['corn', 'Maïs'], ['rice', 'Rijst'], ['soy', 'Soja'], ['wheat', 'Tarwe']
    ]
  },
  {
    key: 'other',
    label: 'Overig',
    allergenPairs: [
      ['egg', 'Ei'], ['milk', 'Melk/zuivel']
    ]
  }
].map(({ key, label, allergenPairs }) => ({
  key,
  label,
  allergens: allergenPairs.map(([allergenKey, allergenLabel]) => ({ key: allergenKey, label: allergenLabel }))
}))

export const ALLERGENS = ALLERGEN_GROUPS.flatMap(({ allergens }) => allergens)

export const FOOD_TYPES = [
  ['kibble', 'Brokken'], ['raw', 'Rauwvoer'], ['wet', 'Natvoer']
]

export const ALLERGEN_LABELS = Object.fromEntries(ALLERGENS.map(({ key, label }) => [key, label]))

const ALLERGEN_SYNONYMS = {
  chicken: ['kip', 'chicken'], turkey: ['kalkoen', 'turkey'], beef: ['rund', 'rundvlees', 'beef'],
  lamb: ['lam', 'lamsvlees', 'lamb'], duck: ['eend', 'duck'], pork: ['varken', 'varkensvlees', 'pork'],
  rabbit: ['konijn', 'rabbit'], venison: ['hert', 'hertenvlees', 'venison'],
  horse: ['paard', 'paardenvlees', 'paardevlees', 'horse'],
  fish: ['vis', 'zalm', 'salmon', 'kabeljauw', 'tonijn', 'haring', 'forel', 'makreel', 'sardine', 'ansjovis'],
  salmon: ['zalm', 'salmon'], whitefish: ['witvis', 'kabeljauw', 'schelvis', 'koolvis'],
  egg: ['ei', 'eigeel', 'eiwit', 'eipoeder'], milk: ['melk', 'wei', 'lactose', 'yoghurt', 'kaas', 'room'],
  wheat: ['tarwe', 'wheat'], corn: ['mais', 'maize', 'corn'], rice: ['rijst', 'rice'],
  barley: ['gerst', 'barley'], oats: ['haver', 'oats'], soy: ['soja', 'soy'],
  pea: ['erwt', 'erwten', 'pea', 'peas'], potato: ['aardappel', 'potato'], chickpea: ['kikkererwt', 'kikkererwten', 'chickpea']
}

const UNCERTAIN_INGREDIENT_TERMS = ['dierlijke bijproducten', 'vlees en dierlijke bijproducten', 'dierlijke derivaten', 'plantaardige bijproducten', 'derivaten van plantaardige oorsprong', 'granen', 'oliën en vetten', 'plantaardige eiwitextracten']

function normaliseIngredientText(value = '') {
  return ` ${value.toLocaleLowerCase('nl-NL').normalize('NFD').replace(/[\u0300-\u036f]/g, '').replace(/[^a-z0-9]+/g, ' ').trim()} `
}

export function detectIngredientSignals(ingredientsText) {
  const text = normaliseIngredientText(ingredientsText)
  const allergens = Object.entries(ALLERGEN_SYNONYMS)
    .filter(([, synonyms]) => synonyms.some((synonym) => text.includes(` ${normaliseIngredientText(synonym).trim()} `)))
    .map(([key]) => key)
  const uncertain = UNCERTAIN_INGREDIENT_TERMS.some((term) => text.includes(` ${normaliseIngredientText(term).trim()} `))
  return { allergens, uncertain }
}
