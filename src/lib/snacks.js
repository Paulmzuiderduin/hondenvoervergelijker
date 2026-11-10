import { assessLabel, expandAllergenKeys } from './allergens.js'
import { productMatch } from './matcher.js'

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
  { term: 'geextraheerd', kind: 'onschuldig' }
]

export function snackTypeLabel(key) {
  return SNACK_TYPES.find(([sleutel]) => sleutel === key)?.[1] ?? key ?? 'Onbekend'
}

export function sizeLabel(key) {
  return SIZE_CLASSES.find(([sleutel]) => sleutel === key)?.[1] ?? key ?? 'Onbekend'
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
