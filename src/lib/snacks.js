import { assessLabel, expandAllergenKeys } from './allergens.js'
import { productMatch } from './matcher.js'
import { slugify } from './productUrl.js'

// De snackkeuring gebruikt dezelfde allergeenmotor als de voervergelijker.
// Deze laag vertaalt de lokale snackdata naar de vorm die de matcher verwacht
// en voegt één snackspecifiek signaal toe: een sporenmelding op de verpakking.

export const SNACK_TYPES = [
  ['koekje', 'Koekje'],
  ['zachte_snack', 'Zachte snack'],
  ['vleesreep', 'Vleesreep'],
  ['gedroogd_vlees', 'Gedroogd vlees'],
  ['gedroogde_vis', 'Gedroogde vis'],
  ['kauwstaaf', 'Kauwstaaf'],
  ['dental', 'Dental snack'],
  ['natural_chew', 'Natuurlijke kauw'],
  ['overig', 'Overig']
]

export const SIZE_CLASSES = [
  ['klein', 'Klein'],
  ['middel', 'Middel'],
  ['groot', 'Groot'],
  ['alle', 'Alle formaten']
]

// Woorden die in snacketiketten voorkomen en die de ingebouwde woordenlijst
// nog niet kent. Ze worden hier bewust lokaal ingedeeld; in de online versie
// horen ze in ingredient_terms.
export const SNACK_TERMS = [
  { term: 'rode', kind: 'onschuldig' },
  { term: 'lecithine', kind: 'onschuldig' },
  { term: 'biologische', kind: 'onschuldig' },
  { term: 'biologisch', kind: 'onschuldig' },
  { term: 'afsnijdsels', kind: 'onschuldig' },
  { term: 'volkorentarwe', kind: 'bron', allergen_keys: ['wheat'] },
  { term: 'moutpoeder', kind: 'onduidelijk', allergen_keys: ['wheat', 'barley', 'grains'] },
  { term: 'glucosamine', kind: 'onduidelijk', allergen_keys: ['shellfish', 'corn'] },
  { term: 'chondroitinesulfaat', kind: 'onduidelijk', allergen_keys: ['beef', 'pork', 'fish'] },
  { term: 'geextraheerd', kind: 'onschuldig' },
  { term: 'atlantische', kind: 'onschuldig' },
  { term: 'gepoft', kind: 'onschuldig' },
  { term: 'mout', kind: 'onduidelijk', allergen_keys: ['barley', 'wheat', 'grains'] },
  { term: 'paardenproteine', kind: 'bron', allergen_keys: ['horse'] },
  { term: 'wisselende', kind: 'onschuldig' },
  { term: 'samenstelling', kind: 'onschuldig' },
  { term: 'vegetarische', kind: 'onschuldig' },
  { term: 'saus', kind: 'onduidelijk' },
  { term: 'eucalyptusolie', kind: 'onschuldig' },
  { term: 'pepermuntolie', kind: 'bron', allergen_keys: ['mint'] },
  { term: 'pepermunt', kind: 'bron', allergen_keys: ['mint'] },
  { term: 'vera', kind: 'onschuldig' },
  { term: 'geraffineerde', kind: 'onschuldig' },
  { term: 'isolaat', kind: 'onschuldig' },
  { term: 'afrikaan', kind: 'onschuldig' },
  { term: 'luteine', kind: 'onschuldig' },
  { term: 'hoogwaardige', kind: 'onschuldig' },
  { term: 'die', kind: 'onschuldig' },
  { term: 'zeer', kind: 'onschuldig' },
  { term: 'goed', kind: 'onschuldig' },
  { term: 'verteerbaar', kind: 'onschuldig' },
  { term: 'sp', kind: 'onschuldig' },
  { term: 'dha', kind: 'onschuldig' },
  { term: 'ingredienten', kind: 'onschuldig' },
  { term: 'wat', kind: 'onschuldig' },
  { term: 'gelijk', kind: 'onschuldig' },
  { term: 'staat', kind: 'onschuldig' },
  { term: 'veten', kind: 'onschuldig' },
  { term: 'mergbeen', kind: 'onduidelijk' },
  { term: 'prebiotica', kind: 'onschuldig' },
  { term: 'geroosterde', kind: 'onschuldig' },
  { term: 'eiproducten', kind: 'bron', allergen_keys: ['egg'] },
  { term: 'spiering', kind: 'bron', allergen_keys: ['fish', 'whitefish'] },
  { term: 'zeebaars', kind: 'bron', allergen_keys: ['fish', 'whitefish'] },
  { term: 'zeebaarsvlees', kind: 'bron', allergen_keys: ['fish', 'whitefish'] },
  { term: 'darmen', kind: 'onduidelijk', allergen_keys: ['chicken', 'turkey', 'duck', 'goose', 'beef', 'lamb', 'pork', 'horse', 'rabbit', 'venison', 'fish'] },
  { term: 'huid', kind: 'onduidelijk', allergen_keys: ['chicken', 'turkey', 'duck', 'goose', 'beef', 'lamb', 'pork', 'horse', 'rabbit', 'venison', 'fish'] },
  { term: 'been', kind: 'onduidelijk', allergen_keys: ['chicken', 'turkey', 'duck', 'goose', 'beef', 'lamb', 'pork', 'horse', 'rabbit', 'venison', 'fish'] },
  { term: 'bloem', kind: 'onduidelijk', allergen_keys: ['grains', 'wheat', 'barley', 'oats', 'rye', 'spelt', 'corn', 'rice'] },
  { term: 'bloemmeel', kind: 'onduidelijk', allergen_keys: ['grains', 'wheat', 'barley', 'oats', 'rye', 'spelt', 'corn', 'rice'] },
  { term: 'paneermeel', kind: 'onduidelijk', allergen_keys: ['grains', 'wheat', 'barley', 'oats', 'rye', 'spelt', 'corn', 'rice'] },
  { term: 'rauwkost', kind: 'onduidelijk', allergen_keys: ['vegetables', 'fruit', 'grains'] },
  { term: 'gemodificeerd', kind: 'onschuldig' },
  { term: 'voorgegelatineerd', kind: 'onschuldig' },
  { term: 'gepregelatiniseerd', kind: 'onschuldig' },
  { term: 'levensmiddelenkleurstof', kind: 'onschuldig' },
  { term: 'dier', kind: 'onschuldig' },
  { term: 'is', kind: 'onschuldig' },
  { term: 'gebruikt', kind: 'onschuldig' },
  { term: 'geen', kind: 'onschuldig' },
  { term: 'wel', kind: 'onschuldig' },
  { term: 'boven', kind: 'onschuldig' },
  { term: 'wood', kind: 'onschuldig' },
  { term: 'paarse', kind: 'onschuldig' },
  { term: 'witte', kind: 'onschuldig' },
  { term: 'carotene', kind: 'onschuldig' },
  { term: 'toevoegingsmiddelen', kind: 'onschuldig' },
  { term: 'kleurstoffen', kind: 'onschuldig' },
  { term: 'analytische', kind: 'onschuldig' },
  { term: 'bestanddelen', kind: 'onschuldig' },
  { term: 'vetgehalte', kind: 'onschuldig' },
  { term: 'celstof', kind: 'onschuldig' },
  { term: 'anorganische', kind: 'onschuldig' },
  { term: 'stof', kind: 'onschuldig' },
  { term: 'ruwe', kind: 'onschuldig' },
  { term: 'ruw', kind: 'onschuldig' },
  { term: 'rauw', kind: 'onschuldig' },
  { term: 'moutextract', kind: 'onduidelijk', allergen_keys: ['grains', 'barley', 'wheat'] },
  { term: 'malt', kind: 'onduidelijk', allergen_keys: ['grains', 'barley', 'wheat'] },
  { term: 'starch', kind: 'onschuldig' },
  { term: 'powdered', kind: 'onschuldig' },
  { term: 'lecithin', kind: 'onschuldig' },
  { term: 'dried', kind: 'onschuldig' },
  { term: 'yeast', kind: 'bron', allergen_keys: ['yeast'] },
  { term: 'meal', kind: 'onschuldig' },
  { term: 'sweet', kind: 'onschuldig' },
  { term: 'annatto', kind: 'onschuldig' },
  { term: 'poedercellulose', kind: 'onschuldig' },
  { term: 'poedervorm', kind: 'onschuldig' },
  { term: 'zoet', kind: 'onschuldig' },
  { term: 'zoete', kind: 'onschuldig' },
  { term: 'kleur', kind: 'onschuldig' },
  { term: 'inclusief', kind: 'onschuldig' },
  { term: 'diverse', kind: 'onschuldig' },
  { term: 'oorsprong', kind: 'onschuldig' },
  { term: 'buitenste', kind: 'onschuldig' },
  { term: 'laag', kind: 'onschuldig' },
  { term: 'equivalent', kind: 'onschuldig' },
  { term: 'product', kind: 'onschuldig' },
  { term: 'lichtbruine', kind: 'onschuldig' },
  { term: 'donkerbruine', kind: 'onschuldig' },
  { term: 'donkerrode', kind: 'onschuldig' },
  { term: 'stick', kind: 'onschuldig' },
  { term: 'bataat', kind: 'bron', allergen_keys: ['sweetpotato'] },
  { term: 'bataatzetmeel', kind: 'bron', allergen_keys: ['sweetpotato'] },
  { term: 'vlaszaad', kind: 'bron', allergen_keys: ['flax'] },
  { term: 'eigeelpoeder', kind: 'bron', allergen_keys: ['egg'] },
  { term: 'zuivelproducten', kind: 'bron', allergen_keys: ['milk'] },
  { term: 'groenlipmosselpoeder', kind: 'bron', allergen_keys: ['shellfish'] },
  { term: 'chitosan', kind: 'bron', allergen_keys: ['shellfish'] },
  { term: 'alaskapollak', kind: 'bron', allergen_keys: ['fish', 'whitefish'] },
  { term: 'sprot', kind: 'bron', allergen_keys: ['fish', 'whitefish'] },
  { term: 'chichoreiwortel', kind: 'bron', allergen_keys: ['chicory'] },
  { term: 'buikspek', kind: 'bron', allergen_keys: ['pork'] },
  { term: 'spek', kind: 'bron', allergen_keys: ['pork'] },
  { term: 'hambeen', kind: 'bron', allergen_keys: ['pork'] },
  { term: 'bullenpees', kind: 'bron', allergen_keys: ['beef'] },
  { term: 'bullepees', kind: 'bron', allergen_keys: ['beef'] },
  { term: 'buffelhuid', kind: 'bron', allergen_keys: ['buffalo'] },
  { term: 'buffelhoorn', kind: 'bron', allergen_keys: ['buffalo'] },
  { term: 'buffelhoofdhuid', kind: 'bron', allergen_keys: ['buffalo'] },
  { term: 'buffelsnuit', kind: 'bron', allergen_keys: ['buffalo'] },
  { term: 'buffelstaart', kind: 'bron', allergen_keys: ['buffalo'] },
  { term: 'buffelpees', kind: 'bron', allergen_keys: ['buffalo'] },
  { term: 'buffelpens', kind: 'bron', allergen_keys: ['buffalo'] },
  { term: 'buffelvet', kind: 'bron', allergen_keys: ['buffalo'] },
  { term: 'buffelluchtpijp', kind: 'bron', allergen_keys: ['buffalo'] },
  { term: 'buffelvlees', kind: 'bron', allergen_keys: ['buffalo'] },
  { term: 'buffelbot', kind: 'bron', allergen_keys: ['buffalo'] },
  { term: 'buffelbotten', kind: 'bron', allergen_keys: ['buffalo'] },
  { term: 'nekpees', kind: 'bron', allergen_keys: ['buffalo'] },
  { term: 'scheenbeenbot', kind: 'onduidelijk', allergen_keys: ['chicken', 'turkey', 'duck', 'goose', 'beef', 'lamb', 'pork', 'horse', 'rabbit', 'venison', 'fish'] },
  { term: 'kauwhuid', kind: 'onduidelijk', allergen_keys: ['chicken', 'turkey', 'duck', 'goose', 'beef', 'lamb', 'pork', 'horse', 'rabbit', 'venison', 'fish'] },
  { term: 'vacht', kind: 'onduidelijk', allergen_keys: ['chicken', 'turkey', 'duck', 'goose', 'beef', 'lamb', 'pork', 'horse', 'rabbit', 'venison', 'fish'] },
  { term: 'onderbeen', kind: 'onduidelijk', allergen_keys: ['chicken', 'turkey', 'duck', 'goose', 'beef', 'lamb', 'pork', 'horse', 'rabbit', 'venison', 'fish'] },
  { term: 'scheenbeen', kind: 'onduidelijk', allergen_keys: ['chicken', 'turkey', 'duck', 'goose', 'beef', 'lamb', 'pork', 'horse', 'rabbit', 'venison', 'fish'] },
  { term: 'scheenbeenderen', kind: 'onduidelijk', allergen_keys: ['chicken', 'turkey', 'duck', 'goose', 'beef', 'lamb', 'pork', 'horse', 'rabbit', 'venison', 'fish'] },
  { term: 'kuitbeen', kind: 'onduidelijk', allergen_keys: ['chicken', 'turkey', 'duck', 'goose', 'beef', 'lamb', 'pork', 'horse', 'rabbit', 'venison', 'fish'] },
  { term: 'kuitbeenderen', kind: 'onduidelijk', allergen_keys: ['chicken', 'turkey', 'duck', 'goose', 'beef', 'lamb', 'pork', 'horse', 'rabbit', 'venison', 'fish'] },
  { term: 'wild', kind: 'onduidelijk', allergen_keys: ['venison', 'wildzwijn', 'beef', 'lamb'] },
  { term: 'maltodextrine', kind: 'onduidelijk', allergen_keys: ['grains', 'potato'] },
  { term: 'trehalose', kind: 'bron', allergen_keys: ['sugar'] },
  { term: 'saccharine', kind: 'onschuldig' },
  { term: 'pectine', kind: 'onschuldig' },
  { term: 'hooi', kind: 'onschuldig' },
  { term: 'inactieve', kind: 'onschuldig' },
  { term: 'omega', kind: 'onschuldig' },
  { term: 'vetzuren', kind: 'onschuldig' },
  { term: 'harde', kind: 'onschuldig' },
  { term: 'puur', kind: 'onschuldig' },
  { term: 'gerookt', kind: 'onschuldig' },
  { term: 'gevriesdroogd', kind: 'onschuldig' },
  { term: 'beukenhoutrook', kind: 'onschuldig' },
  { term: 'fermentatie', kind: 'onschuldig' }
]

export function snackTypeLabel(key) {
  return SNACK_TYPES.find(([sleutel]) => sleutel === key)?.[1] ?? key ?? 'Onbekend'
}

export function sizeLabel(key) {
  return SIZE_CLASSES.find(([sleutel]) => sleutel === key)?.[1] ?? key ?? 'Onbekend'
}

// Snackmerken hebben een eigen pagina onder /hondensnacks/merken/. Die staat
// bewust los van de voermerkenpagina's: een snack-only merk hoort niet op
// /merken/ thuis en een voermerk heeft soms een ander snackassortiment.
export function snackMerkPad(brand) {
  return `/hondensnacks/merken/${slugify(brand) || 'merk'}.html`
}

export function toProduct(snack) {
  return {
    ...snack,
    source_status: 'gecontroleerd',
    recipe_versions: [{
      id: snack.id,
      ingredients_text: snack.ingredients_text,
      reviewed_at: snack.reviewed_at,
      imported_at: snack.imported_at,
      import_note: snack.import_note,
      recipe_ingredients: []
    }]
  }
}

// Een sporenmelding is geen ingrediënt: "kan sporen van kip bevatten" betekent
// niet dat kip een ingrediënt is, maar ook niet dat het product kipvrij is.
// Daarom krijgt het een eigen signaal en nooit de status "bevat".
export function traceAllergens(product) {
  if (Array.isArray(product.trace_allergens) && product.trace_allergens.length) return product.trace_allergens
  if (!product.trace_text) return []
  return assessLabel(product.trace_text).allergens
}

export function snackMatch(product, selectedAllergens = [], now = new Date()) {
  const match = productMatch(product, selectedAllergens, now)
  const traces = traceAllergens(product)
  if (!traces.length || !selectedAllergens.length) return { ...match, traceStates: [] }
  const traceStates = selectedAllergens.filter((key) => expandAllergenKeys([key]).some((member) => traces.includes(member)))
  if (!traceStates.length) return { ...match, traceStates: [] }
  return {
    ...match,
    // Een spoor is geen bewijs dat het allergeen ontbreekt. Zolang het product
    // niet al is uitgesloten, blijft het bij "Controleer etiket/fabrikant".
    kind: match.kind === 'excluded' ? match.kind : 'check',
    traceStates
  }
}
