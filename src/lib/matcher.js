import { ALLERGEN_IMPLIES, assessLabel } from './allergens.js'

const SIX_MONTHS_MS = 183 * 24 * 60 * 60 * 1000

// "Gevogelte (algemeen)" sluit ook kip, kalkoen en eend uit; "Granen (algemeen)"
// ook tarwe, gerst, haver, mais en rijst. Andersom geldt dat niet: kies je één
// specifieke bron, dan telt alleen die bron.
function expandSelection(selectedAllergens) {
  const wanted = new Set(selectedAllergens)
  for (const key of selectedAllergens) {
    for (const implied of ALLERGEN_IMPLIES[key] ?? []) wanted.add(implied)
  }
  return wanted
}

export function isReviewOverdue(checkedAt, now = new Date()) {
  if (!checkedAt) return true
  return now.getTime() - new Date(checkedAt).getTime() > SIX_MONTHS_MS
}

export function productMatch(product, selectedAllergens, now = new Date()) {
  const version = product.recipe_versions?.[0]
  const ingredients = version?.recipe_ingredients ?? []
  const wanted = expandSelection(selectedAllergens)
  const matches = ingredients.filter((ingredient) => wanted.has(ingredient.allergen_key))
  if (matches.length) {
    return { kind: 'excluded', reasons: matches.map(({ allergen_key }) => allergen_key) }
  }

  // Een product is alleen "geschikt" als de ingrediëntenlijst aantoonbaar volledig
  // is nagelopen. Ontbrekende gegevens zijn geen bewijs dat een allergeen afwezig is.
  const reasons = []
  if (!version) {
    reasons.push('Er is nog geen ingrediëntenlijst ingevoerd')
  } else {
    if (!version.ingredients_mapped) reasons.push('Deze ingrediëntenlijst is nog niet door de beheerder nagelopen')
    // De vlag in de database is de administratie; de etikettekst zelf is het
    // bewijs. Staat er een bron in die niet bij name is genoemd ("dierlijk vet",
    // "granen", "bouillon"), dan geldt het product als onzeker, ook als de vlag
    // nog niet is bijgewerkt.
    const unclearText = !version.ingredients_text || assessLabel(version.ingredients_text).status === 'aandacht'
    const uncertain = version.has_uncertain_ingredients
      || unclearText
      || ingredients.some(({ certainty }) => certainty !== 'confirmed')
    if (uncertain) reasons.push('Ingrediënt of categorie is niet volledig te herleiden')
  }
  if (isReviewOverdue(product.last_checked_at, now)) reasons.push('Ingrediënten zijn langer dan zes maanden niet bevestigd')

  return reasons.length
    ? { kind: 'check', reasons }
    : { kind: 'suitable', reasons: ['Ingrediëntenlijst is volledig in kaart gebracht en bevat geen van de gekozen allergenen'] }
}
