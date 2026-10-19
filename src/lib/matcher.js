import { ALLERGEN_IMPLIES, ALLERGEN_LABELS, assessLabel, detectIngredientSignals, expandAllergenKeys } from './allergens.js'

const SIX_MONTHS_MS = 183 * 24 * 60 * 60 * 1000

export function isReviewOverdue(checkedAt, now = new Date()) {
  if (!checkedAt) return true
  return now.getTime() - new Date(checkedAt).getTime() > SIX_MONTHS_MS
}

// Het oordeel per gekozen allergeen. Voor elk allergeen is er precies één van
// drie antwoorden:
//   aanwezig  de bron staat in de ingrediëntenlijst (of de beheerder heeft hem
//             bevestigd) → het product is uitgesloten;
//   onbekend  het etiket noemt een bron niet of noemt een woord dat de keuring
//             niet kent, en dat kan net dit allergeen verbergen → controleer;
//   afwezig   het etiket noemt de bron nergens en niets onduidelijks kan hem
//             verbergen → geschikt.
// "Onbekend" blijft staan ook als een beheerder het product al heeft nagekeken:
// nagekeken betekent "deze tekst is tegen de bron gecontroleerd", niet "het
// allergeen is er niet". Alleen het etiket of de fabrikant kan dat laatste zeggen.
export function productMatch(product, selectedAllergens, now = new Date()) {
  const version = product.recipe_versions?.[0]
  const text = version?.ingredients_text || ''
  const assessment = assessLabel(text)
  const stored = version?.recipe_ingredients ?? []

  // Aanwezig is wat de beheerder heeft bevestigd plus wat de tekst zelf noemt;
  // onbekend is wat de keuring niet kan uitsluiten (plus eerdere twijfelrijen).
  const present = new Set()
  const unknown = new Set()
  for (const row of stored) (row.certainty === 'confirmed' ? present : unknown).add(row.allergen_key)
  for (const key of detectIngredientSignals(text).allergens) present.add(key)
  for (const key of assessment.keys) unknown.add(key)
  const presentKeys = new Set(expandAllergenKeys(present))
  const unknownKeys = new Set(expandAllergenKeys(unknown))

  // Waarom een allergeen onbekend is: het woord dat geen bron noemt, het woord
  // dat de keuring niet kent, of een eerdere twijfel van een beheerder.
  const openWords = (members) => [
    ...assessment.hidden.filter(({ keys }) => keys.some((key) => members.includes(key))).map(({ word }) => word),
    ...assessment.unknown,
    ...stored.filter((row) => row.certainty !== 'confirmed' && members.includes(row.allergen_key)).map((row) => ALLERGEN_LABELS[row.allergen_key] ?? row.allergen_key)
  ]

  const states = selectedAllergens.map((key) => {
    const members = [key, ...(ALLERGEN_IMPLIES[key] ?? [])]
    const found = members.filter((member) => presentKeys.has(member))
    if (found.length) return { key, state: 'present', members: found, words: [] }
    const open = members.filter((member) => unknownKeys.has(member))
    if (open.length) return { key, state: 'unknown', members: open, words: [...new Set(openWords(open))] }
    return { key, state: 'absent', members: [], words: [] }
  })

  const reviewed = Boolean(version?.reviewed_at)
  const hasLabel = Boolean(text)
  const stale = isReviewOverdue(product.last_checked_at, now)
  const presentStates = states.filter((state) => state.state === 'present')
  const unknownStates = states.filter((state) => state.state === 'unknown')

  // Zonder gecontroleerde tekst is er geen bewijs: dan is er niets "geschikt".
  let kind = 'suitable'
  if (presentStates.length) kind = 'excluded'
  else if (unknownStates.length || !hasLabel || !reviewed || stale) kind = 'check'

  return {
    kind,
    states,
    presentStates,
    unknownStates,
    reviewed,
    hasLabel,
    stale,
    // Wat het etiket niet bij name noemt, los van de keuze van de bezoeker: dit
    // bepaalt de rode woorden en de opmerking onder aan de kaart.
    hidden: assessment.hidden,
    unknownWords: assessment.unknown
  }
}
