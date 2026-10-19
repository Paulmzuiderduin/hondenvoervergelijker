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

// Een term met een * erachter matcht op woordbegin, zodat Nederlandse
// samenstellingen en meervouden meetellen: "kip*" hoort ook bij kippenlever,
// kippenvet en kippenei. Termen zonder * moeten exact overeenkomen.
// Let op: "ei" staat er bewust zonder *, anders zou "eiwit" (dierlijk eiwit,
// plantaardig eiwitextract) onterecht als eiallergeen gelden.
const ALLERGEN_SYNONYMS = {
  chicken: ['kip*', 'chicken'], turkey: ['kalkoen*', 'turkey'], beef: ['rund*', 'beef'],
  lamb: ['lam*', 'lamb'], duck: ['eend*', 'duck'], pork: ['varken*', 'pork'],
  rabbit: ['konijn*', 'rabbit'], venison: ['hert*', 'venison'], horse: ['paard*', 'horse'],
  fish: ['vis*', 'zalm*', 'salmon', 'kabeljauw*', 'tonijn*', 'haring*', 'forel*', 'makreel*', 'sardine*', 'ansjovis*', 'heek', 'wijting*'],
  salmon: ['zalm*', 'salmon'],
  whitefish: ['witvis', 'kabeljauw*', 'schelvis*', 'koolvis*', 'heek', 'wijting*', 'zeeduivel*'],
  egg: ['ei', 'eier*', 'eigeel', 'eidooier', 'eipoeder'],
  milk: ['melk*', 'wei', 'weipoeder', 'lactose*', 'yoghurt*', 'kwark*', 'kaas*', 'caseine*', 'caseinaat*', 'room*', 'boter*'],
  wheat: ['tarwe*', 'wheat'], corn: ['mais*', 'maize', 'corn'], rice: ['rijst*', 'rice'],
  barley: ['gerst*', 'barley'], oats: ['haver*', 'oat*', 'oats'], soy: ['soja*', 'soy*', 'soya*'],
  pea: ['erwt*', 'spliterwt*', 'pea', 'peas'], potato: ['aardappel*', 'potato*'],
  chickpea: ['kikkererwt*', 'chickpea*', 'garbanzo*']
}

// Categorieën die niet te herleiden zijn naar één dier- of plantensoort. Staat
// er zo'n term in de lijst, dan mag het product nooit als "geschikt" gelden.
const UNCERTAIN_INGREDIENT_TERMS = [
  'dierlijke bijproducten', 'vlees en dierlijke bijproducten', 'dierlijke derivaten',
  'plantaardige bijproducten', 'derivaten van plantaardige oorsprong', 'plantaardige eiwitextracten',
  'olien en vetten', 'granen*', 'gevogelte*', 'pluimvee*'
]

function normaliseText(value = '') {
  return String(value)
    .toLocaleLowerCase('nl-NL')
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .replace(/[^a-z0-9]+/g, ' ')
    .trim()
}

function tokenize(value = '') {
  return normaliseText(value).split(' ').filter(Boolean)
}

function compileTerm(term) {
  const prefix = term.endsWith('*')
  const parts = normaliseText(prefix ? term.slice(0, -1) : term).split(' ').filter(Boolean)
  return { parts, prefix }
}

function termMatches(tokens, { parts, prefix }) {
  if (!parts.length) return false
  if (parts.length === 1) {
    const [stem] = parts
    return prefix ? tokens.some((token) => token.startsWith(stem)) : tokens.includes(stem)
  }
  for (let start = 0; start + parts.length <= tokens.length; start += 1) {
    if (parts.every((part, offset) => tokens[start + offset] === part)) return true
  }
  return false
}

const COMPILED_ALLERGEN_TERMS = Object.entries(ALLERGEN_SYNONYMS)
  .map(([key, terms]) => ({ key, terms: terms.map(compileTerm) }))
const COMPILED_UNCERTAIN_TERMS = UNCERTAIN_INGREDIENT_TERMS.map(compileTerm)

export function detectIngredientSignals(ingredientsText) {
  const tokens = tokenize(ingredientsText)
  const allergens = COMPILED_ALLERGEN_TERMS
    .filter(({ terms }) => terms.some((term) => termMatches(tokens, term)))
    .map(({ key }) => key)
  const uncertain = COMPILED_UNCERTAIN_TERMS.some((term) => termMatches(tokens, term))
  return { allergens, uncertain }
}
