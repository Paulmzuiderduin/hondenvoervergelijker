const SIX_MONTHS_MS = 183 * 24 * 60 * 60 * 1000

export function isReviewOverdue(checkedAt, now = new Date()) {
  if (!checkedAt) return true
  return now.getTime() - new Date(checkedAt).getTime() > SIX_MONTHS_MS
}

export function productMatch(product, selectedAllergens, now = new Date()) {
  const version = product.recipe_versions?.[0]
  const ingredients = version?.recipe_ingredients ?? []
  const matches = ingredients.filter((ingredient) => selectedAllergens.includes(ingredient.allergen_key))
  if (matches.length) {
    return { kind: 'excluded', reasons: matches.map(({ allergen_key }) => allergen_key) }
  }

  // Een product is alleen "geschikt" als de ingrediëntenlijst aantoonbaar volledig
  // is nagelopen. Ontbrekende gegevens zijn geen bewijs dat een allergeen afwezig is.
  const reasons = []
  if (!version) {
    reasons.push('Er is nog geen ingrediëntenlijst ingevoerd')
  } else {
    if (!version.ingredients_mapped) reasons.push('De ingrediëntenlijst is nog niet volledig in kaart gebracht')
    const uncertain = version.has_uncertain_ingredients || ingredients.some(({ certainty }) => certainty !== 'confirmed')
    if (uncertain) reasons.push('Ingrediënt of categorie is niet volledig te herleiden')
  }
  if (isReviewOverdue(product.last_checked_at, now)) reasons.push('Ingrediënten zijn langer dan zes maanden niet bevestigd')

  return reasons.length
    ? { kind: 'check', reasons }
    : { kind: 'suitable', reasons: ['Ingrediëntenlijst is volledig in kaart gebracht en bevat geen van de gekozen allergenen'] }
}
