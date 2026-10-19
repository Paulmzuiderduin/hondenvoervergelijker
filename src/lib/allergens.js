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
  lamb: ['lam*', 'lamb', 'schaap*', 'mutton'], duck: ['eend*', 'duck'], pork: ['varken*', 'pork'],
  rabbit: ['konijn*', 'rabbit'], venison: ['hert*', 'venison'], horse: ['paard*', 'horse'],
  poultry: ['gevogelte*', 'pluimvee*', 'poultry', 'gans*', 'goose', 'fazant*', 'pheasant', 'kwartel*', 'quail'],
  fish: ['vis*', 'zalm*', 'salmon', 'kabeljauw*', 'tonijn*', 'haring*', 'forel*', 'makreel*', 'sardine*', 'ansjovis*', 'heek', 'wijting*'],
  salmon: ['zalm*', 'salmon'],
  whitefish: ['witvis', 'kabeljauw*', 'schelvis*', 'koolvis*', 'heek', 'wijting*', 'zeeduivel*'],
  egg: ['ei', 'eier*', 'eigeel', 'eidooier', 'eipoeder'],
  milk: ['melk*', 'wei', 'weipoeder', 'lactose*', 'yoghurt*', 'kwark*', 'kaas*', 'caseine*', 'caseinaat*', 'room*', 'boter*'],
  wheat: ['tarwe*', 'wheat'], corn: ['mais*', 'maize', 'corn'], rice: ['rijst*', 'rice'],
  barley: ['gerst*', 'barley'], grains: ['granen*', 'cereals*', 'gierst*', 'millet', 'spelt*', 'rogge*', 'rye', 'sorghum*', 'triticale*'], oats: ['haver*', 'oat*', 'oats'], soy: ['soja*', 'soy*', 'soya*'],
  pea: ['erwt*', 'spliterwt*', 'pea', 'peas'], potato: ['aardappel*', 'potato*'],
  chickpea: ['kikkererwt*', 'chickpea*', 'garbanzo*']
}

// Categorieën die niet te herleiden zijn naar één dier- of plantensoort. Staat
// er zo'n term in de lijst, dan mag het product nooit als "geschikt" gelden.
const UNCERTAIN_INGREDIENT_TERMS = [
  'dierlijke bijproducten', 'vlees en dierlijke bijproducten', 'dierlijke derivaten',
  'plantaardige bijproducten', 'derivaten van plantaardige oorsprong', 'plantaardige eiwitextracten',
  'olien en vetten', 'granen*', 'gevogelte*', 'pluimvee*',
  // Verzamelwoorden die een dier- of plantensoort verbergen, ook in anderstalige
  // etiketten: "dierlijk vet", "animal protein", "poultry protein".
  'dierlijk*', 'plantaardig*', 'bijproduct*', 'derivaat*', 'cereals*',
  'animal', 'poultry', 'vegetable', 'plant'
]

// Risicowoorden: woorden die een allergeenbron kunnen verbergen zonder hem te
// noemen ("dierlijk vet", "bouillon", "plantaardige olie", "10% vlees"). Staat
// zo'n woord direct achter een genoemde bron ("beef stock", "zonnebloemolie"),
// dan is het wel te herleiden. Anders blokkeert het een automatische
// goedkeuring: zo'n etiket moet een mens nalezen.
const RISK_TERMS = [
  // eiwitten zonder bron
  'eiwit', 'eiwitten', 'eiwitisolaat', 'proteine', 'proteinen', 'protein', 'proteins',
  // koolhydraten zonder bron
  'meel', 'meelsoort', 'meelsoorten', 'zetmeel', 'zetmelen', 'gluten', 'gries', 'griesmeel',
  'bloem', 'semolina', 'vlokken', 'zemel', 'zemelen',
  // vetten en oliën zonder bron
  'olie', 'olien', 'oil', 'oils', 'vet', 'vetten', 'fat', 'fats', 'talg', 'reuzel', 'smout',
  // extracten, poeders en concentraten zonder bron
  'extract', 'extracten', 'concentraat', 'concentraten', 'poeder', 'powder',
  // dierlijke reststromen en kookvocht
  'bouillon', 'broth', 'stock', 'jus', 'vleesnat', 'vlees*', 'meat*', 'gelatine', 'collageen',
  'bloed', 'bloedmeel', 'beendermeel', 'vleesmeel', 'verenmeel', 'digest',
  // rest
  'onbekend', 'diversen', 'overig', 'overige'
]

// Bronnen die de keuring als "bij name genoemd" ziet, maar die geen allergeen in
// onze lijst zijn. Zonder deze lijst zou "zonnebloemolie" geblokkeerd worden.
const OTHER_SOURCE_TERMS = [
  'zonnebloem*', 'sunflower*', 'koolzaad*', 'raapzaad*', 'rapeseed*', 'lijnzaad*', 'flax*', 'lijnolie*',
  'kokos*', 'coconut*', 'palm*', 'olijf*', 'olive*', 'druivenpit*', 'sesam*', 'sesame*', 'hennep*', 'hemp*',
  'tapioca*', 'quinoa*', 'boekweit*', 'buckwheat*', 'amarant*', 'teff*', 'tomaat*', 'tomato*', 'wortel*',
  'carrot*', 'biet*', 'beet*', 'citrus*', 'appel*', 'apple*', 'peer*', 'banaan*', 'banana*', 'bosbes*',
  'blueberry*', 'cranberry*', 'pompoen*', 'pumpkin*', 'spinazie*', 'spinach*', 'broccoli*', 'courgette*',
  'zucchini*', 'prei*', 'andijvie*', 'rozemarijn*', 'rosemary*', 'tijm*', 'thyme*', 'peterselie*', 'knoflook*',
  'garlic*', 'gist*', 'yeast*', 'algen*', 'algae*', 'insect*', 'meelworm*', 'bsf*'
]

function normaliseText(value = '') {
  return String(value)
    .toLocaleLowerCase('nl-NL')
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .replace(/[^a-z0-9]+/g, ' ')
    .trim()
}

// Als normaliseText, maar met haakjes en komma's als aparte merktekens. Daarmee
// ziet de keuring wat er tussen haakjes staat en waar een opsomming eindigt.
const OPEN = '\u0001'
const CLOSE = '\u0002'
const BREAK = '\u0003'
const MARKER = { [OPEN]: '(', [CLOSE]: ')', [BREAK]: ',' }

function markedTokens(value = '') {
  return String(value)
    .toLocaleLowerCase('nl-NL')
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .replace(/\(/g, ` ${OPEN} `)
    .replace(/\)/g, ` ${CLOSE} `)
    .replace(/[,;.!?]/g, ` ${BREAK} `)
    .replace(new RegExp(`[^a-z0-9${OPEN}${CLOSE}${BREAK}]+`, 'g'), ' ')
    .split(' ')
    .filter(Boolean)
    .map((token) => MARKER[token] ?? token)
}

function compileTerm(term) {
  const prefix = term.endsWith('*')
  const parts = normaliseText(prefix ? term.slice(0, -1) : term).split(' ').filter(Boolean)
  return { parts, prefix, term }
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
const COMPILED_RISK_TERMS = RISK_TERMS.map(compileTerm)

// Bronnen die een verzamelwoord kunnen toelichten. De algemene categorieën
// (granen, gevogelte) tellen hier bewust niet mee: die verklaren niets.
const CONCRETE_SOURCE_TERMS = [
  ...Object.entries(ALLERGEN_SYNONYMS).filter(([key]) => key !== 'grains' && key !== 'poultry').flatMap(([, terms]) => terms),
  ...OTHER_SOURCE_TERMS
].map(compileTerm)

function isConcreteSource(token) {
  return CONCRETE_SOURCE_TERMS.some((term) => termMatches([token], term))
}

// Een verzamel- of risicowoord is toegelicht als er in dezelfde opsomming tussen
// haakjes een bron bij name staat: "dierlijk eiwit (rund 21%, kip 4%)" of
// "granen (tarwe, maïs, rijst)". Zonder die toelichting houdt het woord tegen.
function explainedByParenthetical(tokens, depthBefore, breakBefore, index) {
  let opened = false
  for (let cursor = index + 1; cursor < tokens.length; cursor += 1) {
    if (depthBefore[cursor] > 0) {
      opened = true
      if (isConcreteSource(tokens[cursor])) return true
      continue
    }
    if (opened || breakBefore[cursor]) return false
  }
  return false
}

// Hét oordeel over één etiket, in één keer: welke woorden niet te herleiden zijn
// (voor de rode markering op de site), of de lijst een onduidelijke categorie
// noemt (de vlag in de database) en of het etiket automatisch te beoordelen is
// ("schoon": elke allergeenbron is bij name genoemd). Doordat alles uit deze
// ene functie komt, kunnen die drie nooit uit elkaar lopen.
export function assessLabel(ingredientsText = '') {
  const tokens = []
  const depthBefore = []
  const breakBefore = []
  let depth = 0
  let pendingBreak = false
  for (const token of markedTokens(ingredientsText)) {
    if (token === '(') { depth += 1; continue }
    if (token === ')') { depth = Math.max(0, depth - 1); continue }
    if (token === ',') { if (depth === 0) pendingBreak = true; continue }
    tokens.push(token)
    depthBefore.push(depth)
    breakBefore.push(pendingBreak)
    pendingBreak = false
  }

  const vagueIndexes = []
  for (const term of COMPILED_UNCERTAIN_TERMS) {
    if (term.parts.length === 1) {
      tokens.forEach((token, index) => { if (termMatches([token], term)) vagueIndexes.push(index) })
      continue
    }
    for (let start = 0; start + term.parts.length <= tokens.length; start += 1) {
      if (!term.parts.every((part, offset) => tokens[start + offset] === part)) continue
      for (let offset = 0; offset < term.parts.length; offset += 1) vagueIndexes.push(start + offset)
    }
  }
  const riskyIndexes = []
  tokens.forEach((token, index) => {
    if (!COMPILED_RISK_TERMS.some((term) => termMatches([token], term))) return
    const previous = tokens[index - 1]
    // "beef stock" en "zonnebloemolie" zijn herleidbaar; "tarwe, vet" niet,
    // want daar staat een komma tussen.
    if (previous && !breakBefore[index] && isConcreteSource(previous)) return
    riskyIndexes.push(index)
  })

  const keep = (index) => !explainedByParenthetical(tokens, depthBefore, breakBefore, index)
  const vague = [...new Set(vagueIndexes.filter(keep))].sort((first, second) => first - second)
  const risky = [...new Set(riskyIndexes.filter(keep))].sort((first, second) => first - second)
  const readWords = (indexes) => [...new Set(indexes.map((index) => tokens[index]))]

  return {
    tokens,
    vagueIndexes: vague,
    riskyIndexes: risky,
    vague: readWords(vague),
    risky: readWords(risky),
    flagged: tokens.map((_, index) => vague.includes(index) || risky.includes(index)),
    status: vague.length || risky.length ? 'aandacht' : 'schoon'
  }
}

// Zelfde volgorde als in de keuzelijst, zodat de uitkomst voorspelbaar is.
const ALLERGEN_ORDER = new Map(ALLERGENS.map(({ key }, index) => [key, index]))

export function detectIngredientSignals(ingredientsText) {
  const { tokens, status } = assessLabel(ingredientsText)
  const allergens = COMPILED_ALLERGEN_TERMS
    .filter(({ terms }) => terms.some((term) => termMatches(tokens, term)))
    .map(({ key }) => key)
    .sort((first, second) => (ALLERGEN_ORDER.get(first) ?? Number.MAX_SAFE_INTEGER) - (ALLERGEN_ORDER.get(second) ?? Number.MAX_SAFE_INTEGER))
  return { allergens, uncertain: status === 'aandacht' }
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

// Splitst de tekst in stukken; de stukken met uncertain: true zijn woorden die
// geen eenduidige dier- of plantensoort aanwijzen. De stukken samen zijn altijd
// exact de ingevoerde tekst. Welke woorden dat zijn komt uit assessLabel(), dus
// de rode woorden op de site en de vlag in de database lopen nooit uiteen.
export function markUncertainIngredients(text = '') {
  const source = String(text)
  if (!source.trim()) return source ? [{ text: source, uncertain: false }] : []

  const { normalised, positions } = buildSearchIndex(source)
  const words = searchWords(normalised)

  const flagged = assessLabel(source).flagged
  const merged = []
  flagged.forEach((flag, index) => {
    if (!flag || !words[index]) return
    const range = [positions[words[index].start], positions[words[index].end - 1] + 1]
    const previous = merged[merged.length - 1]
    // Alleen woorden die door spaties gescheiden zijn horen bij elkaar ("oliën en
    // vetten"); over een komma heen niet ("dierlijk vet, bouillon").
    if (previous && /^\s*$/.test(source.slice(previous[1], range[0]))) previous[1] = range[1]
    else merged.push(range)
  })

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
