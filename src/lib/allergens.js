export const ALLERGEN_GROUPS = [
  {
    key: 'protein',
    label: 'Eiwitbron',
    allergenPairs: [
      ['duck', 'Eend'], ['poultry', 'Gevogelte (algemeen)'], ['venison', 'Hert'], ['turkey', 'Kalkoen'], ['chicken', 'Kip'],
      ['rabbit', 'Konijn'], ['lamb', 'Lam'], ['horse', 'Paard'], ['beef', 'Rund'],
      ['pork', 'Varken'], ['fish', 'Vis (alle soorten)'], ['whitefish', 'Witvis'], ['salmon', 'Zalm']
    ]
  },
  {
    key: 'carbohydrate',
    label: 'Koolhydraatbron',
    allergenPairs: [
      ['potato', 'Aardappel'], ['pea', 'Erwt'], ['barley', 'Gerst'], ['grains', 'Granen (algemeen)'], ['oats', 'Haver'],
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

// Algemene categorieën: wie "Gevogelte (algemeen)" kiest bedoelt ook kip,
// kalkoen en eend; wie "Granen (algemeen)" kiest bedoelt ook tarwe, gerst,
// haver, mais en rijst. En "Vis (alle soorten)" dekt zalm en witvis. Kiest
// iemand één specifieke bron, dan geldt alleen die bron.
export const ALLERGEN_IMPLIES = {
  poultry: ['chicken', 'turkey', 'duck'],
  grains: ['wheat', 'barley', 'oats', 'corn', 'rice'],
  fish: ['salmon', 'whitefish']
}

// Een term met een * erachter matcht op woordbegin, zodat Nederlandse
// samenstellingen en meervouden meetellen: "kip*" hoort ook bij kippenlever,
// kippenvet en kippenei. Termen zonder * moeten exact overeenkomen.
// Let op: "ei" staat er bewust zonder *, anders zou "eiwit" (dierlijk eiwit,
// plantaardig eiwitextract) onterecht als eiallergeen gelden.
const ALLERGEN_SYNONYMS = {
  chicken: ['kip*', 'chicken'], turkey: ['kalkoen*', 'turkey'], beef: ['rund*', 'beef'],
  lamb: ['lam*', 'lamb'], duck: ['eend*', 'duck'], pork: ['varken*', 'pork'],
  rabbit: ['konijn*', 'rabbit'], venison: ['hert*', 'venison'], horse: ['paard*', 'horse'],
  poultry: ['gevogelte*', 'pluimvee*', 'poultry'],
  fish: ['vis*', 'zalm*', 'salmon', 'kabeljauw*', 'tonijn*', 'haring*', 'forel*', 'makreel*', 'sardine*', 'ansjovis*', 'heek', 'wijting*'],
  salmon: ['zalm*', 'salmon'],
  whitefish: ['witvis', 'kabeljauw*', 'schelvis*', 'koolvis*', 'heek', 'wijting*', 'zeeduivel*'],
  egg: ['ei', 'eier*', 'eigeel', 'eidooier', 'eipoeder'],
  milk: ['melk*', 'wei', 'weipoeder', 'lactose*', 'yoghurt*', 'kwark*', 'kaas*', 'caseine*', 'caseinaat*', 'room*', 'boter*'],
  wheat: ['tarwe*', 'wheat'], corn: ['mais*', 'maize', 'corn'], rice: ['rijst*', 'rice'],
  barley: ['gerst*', 'barley'], grains: ['granen*', 'cereals*'], oats: ['haver*', 'oat*', 'oats'], soy: ['soja*', 'soy*', 'soya*'],
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

// Zelfde volgorde als in de keuzelijst, zodat de uitkomst voorspelbaar is.
const ALLERGEN_ORDER = new Map(ALLERGENS.map(({ key }, index) => [key, index]))

export function detectIngredientSignals(ingredientsText) {
  const tokens = tokenize(ingredientsText)
  const allergens = COMPILED_ALLERGEN_TERMS
    .filter(({ terms }) => terms.some((term) => termMatches(tokens, term)))
    .map(({ key }) => key)
    .sort((first, second) => (ALLERGEN_ORDER.get(first) ?? Number.MAX_SAFE_INTEGER) - (ALLERGEN_ORDER.get(second) ?? Number.MAX_SAFE_INTEGER))
  const uncertain = COMPILED_UNCERTAIN_TERMS.some((term) => termMatches(tokens, term))
  return { allergens, uncertain }
}

// Welke allergenen staan wél in de etikettekst, maar nog niet in de opgeslagen
// rijen? Wordt gebruikt om bestaande producten bij te werken nadat de
// herkenning is verbeterd. Er wordt alleen aangevuld: bestaande vinkjes (ook
// handmatige) blijven staan, want die kunnen bewuste kennis van de beheerder zijn.
export function missingAllergenKeys(ingredientsText, storedKeys = []) {
  const stored = new Set(storedKeys)
  const allowed = new Set(ALLERGENS.map(({ key }) => key))
  return detectIngredientSignals(ingredientsText).allergens.filter((key) => allowed.has(key) && !stored.has(key))
}

// --- Rood markeren van wat niet te herleiden is ---------------------------
// Om een woord in de originele etikettekst te kunnen markeren zonder de tekst
// te veranderen, maken we eerst een opgeschoonde versie (kleine letters, zonder
// accenten) waarin we van elk teken bijhouden waar het in het origineel stond.
function buildSearchIndex(text = '') {
  const source = String(text)
  const characters = []
  const positions = []
  for (let index = 0; index < source.length; index += 1) {
    const base = source[index].normalize('NFD').replace(/[\u0300-\u036f]/g, '').toLocaleLowerCase('nl-NL')
    for (const character of base) {
      if (/[a-z0-9]/.test(character)) {
        characters.push(character)
        positions.push(index)
      } else if (characters.length && characters[characters.length - 1] !== ' ') {
        characters.push(' ')
        positions.push(index)
      }
    }
  }
  if (characters[characters.length - 1] === ' ') { characters.pop(); positions.pop() }
  return { normalised: characters.join(''), positions }
}

function searchWords(normalised) {
  const words = []
  let cursor = 0
  for (const part of normalised.split(' ')) {
    if (part) words.push({ word: part, start: cursor, end: cursor + part.length })
    cursor += part.length + 1
  }
  return words
}

function termRanges(words, { parts, prefix }) {
  const ranges = []
  if (parts.length === 1) {
    const [stem] = parts
    for (const { word, start, end } of words) {
      if (prefix ? word.startsWith(stem) : word === stem) ranges.push([start, end])
    }
    return ranges
  }
  for (let index = 0; index + parts.length <= words.length; index += 1) {
    if (parts.every((part, offset) => words[index + offset].word === part)) {
      ranges.push([words[index].start, words[index + parts.length - 1].end])
    }
  }
  return ranges
}

// Splist de tekst in stukken; de stukken met uncertain: true zijn woorden die
// geen eenduidige dier- of plantensoort aanwijzen. De stukken samen zijn altijd
// exact de ingevoerde tekst.
export function markUncertainIngredients(text = '') {
  const source = String(text)
  if (!source.trim()) return source ? [{ text: source, uncertain: false }] : []

  const { normalised, positions } = buildSearchIndex(source)
  const words = searchWords(normalised)

  const ranges = []
  for (const term of COMPILED_UNCERTAIN_TERMS) ranges.push(...termRanges(words, term))

  const merged = ranges
    .map(([start, end]) => [positions[start], positions[end - 1] + 1])
    .sort((a, b) => a[0] - b[0])
    .reduce((all, range) => {
      const previous = all[all.length - 1]
      if (previous && range[0] <= previous[1]) previous[1] = Math.max(previous[1], range[1])
      else all.push([range[0], range[1]])
      return all
    }, [])

  const segments = []
  let position = 0
  for (const [start, end] of merged) {
    if (start > position) segments.push({ text: source.slice(position, start), uncertain: false })
    segments.push({ text: source.slice(start, end), uncertain: true })
    position = end
  }
  if (position < source.length) segments.push({ text: source.slice(position), uncertain: false })
  return segments
}
