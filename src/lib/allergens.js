export const ALLERGENS = [
  ['chicken', 'Kip'], ['turkey', 'Kalkoen'], ['beef', 'Rund'], ['lamb', 'Lam'],
  ['duck', 'Eend'], ['pork', 'Varken'], ['rabbit', 'Konijn'], ['venison', 'Hert'],
  ['fish', 'Vis (alle soorten)'], ['salmon', 'Zalm'], ['whitefish', 'Witvis'],
  ['egg', 'Ei'], ['milk', 'Melk/zuivel'], ['wheat', 'Tarwe'], ['corn', 'Maïs'],
  ['rice', 'Rijst'], ['barley', 'Gerst'], ['oats', 'Haver'], ['soy', 'Soja'],
  ['pea', 'Erwt'], ['potato', 'Aardappel'], ['chickpea', 'Kikkererwt']
].map(([key, label]) => ({ key, label }))

export const FOOD_TYPES = [
  ['kibble', 'Brokken'], ['raw', 'Rauwvoer'], ['wet', 'Natvoer']
]

export const ALLERGEN_LABELS = Object.fromEntries(ALLERGENS.map(({ key, label }) => [key, label]))

const ALLERGEN_SYNONYMS = {
  chicken: ['kip', 'chicken'], turkey: ['kalkoen', 'turkey'], beef: ['rund', 'rundvlees', 'beef'],
  lamb: ['lam', 'lamsvlees', 'lamb'], duck: ['eend', 'duck'], pork: ['varken', 'varkensvlees', 'pork'],
  rabbit: ['konijn', 'rabbit'], venison: ['hert', 'hertenvlees', 'venison'],
  fish: ['vis', 'zalm', 'salmon', 'kabeljauw', 'tonijn', 'haring', 'forel', 'makreel', 'sardine', 'ansjovis'],
  salmon: ['zalm', 'salmon'], whitefish: ['witvis', 'kabeljauw', 'schelvis', 'koolvis'],
  egg: ['ei', 'eigeel', 'eiwit', 'eipoeder'], milk: ['melk', 'wei', 'lactose', 'yoghurt', 'kaas', 'room'],
  wheat: ['tarwe', 'wheat'], corn: ['mais', 'maize', 'corn'], rice: ['rijst', 'rice'],
  barley: ['gerst', 'barley'], oats: ['haver', 'oats'], soy: ['soja', 'soy'],
  pea: ['erwt', 'erwten', 'pea', 'peas'], potato: ['aardappel', 'potato'], chickpea: ['kikkererwt', 'kikkererwten', 'chickpea']
}

const UNCERTAIN_INGREDIENT_TERMS = ['dierlijke bijproducten', 'vlees en dierlijke bijproducten', 'dierlijke derivaten', 'plantaardige bijproducten', 'derivaten van plantaardige oorsprong', 'granen', 'oliën en vetten', 'plantaardige eiwitextracten']

function normaliseIngredientText(value = '') {
  return ` ${value.toLocaleLowerCase('nl-NL').normalize('NFD').replace(/[\\u0300-\\u036f]/g, '').replace(/[^a-z0-9]+/g, ' ').trim()} `
}

export function detectIngredientSignals(ingredientsText) {
  const text = normaliseIngredientText(ingredientsText)
  const allergens = Object.entries(ALLERGEN_SYNONYMS)
    .filter(([, synonyms]) => synonyms.some((synonym) => text.includes(` ${normaliseIngredientText(synonym).trim()} `)))
    .map(([key]) => key)
  const uncertain = UNCERTAIN_INGREDIENT_TERMS.some((term) => text.includes(` ${normaliseIngredientText(term).trim()} `))
  return { allergens, uncertain }
}
