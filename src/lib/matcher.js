const SIX_MONTHS_MS = 183 * 24 * 60 * 60 * 1000

export function isReviewOverdue(checkedAt, now = new Date()) {
  if (!checkedAt) return true
  return now.getTime() - new Date(checkedAt).getTime() > SIX_MONTHS_MS
}

export function productMatch(product, selectedAllergens, now = new Date()) {
  const ingredients = product.recipe_versions?.[0]?.recipe_ingredients ?? []
  const matches = ingredients.filter((ingredient) => selectedAllergens.includes(ingredient.allergen_key))
  if (matches.length) {
    return { kind: 'excluded', reasons: matches.map(({ allergen_key }) => allergen_key) }
  }

  const uncertain = product.recipe_versions?.[0]?.has_uncertain_ingredients || ingredients.some(({ certainty }) => certainty !== 'confirmed')
  const overdue = isReviewOverdue(product.last_checked_at, now)
  const reasons = []
  if (uncertain) reasons.push('Ingrediënt of categorie is niet volledig te herleiden')
  if (overdue) reasons.push('Ingrediënten zijn langer dan zes maanden niet bevestigd')
  return reasons.length ? { kind: 'check', reasons } : { kind: 'suitable', reasons: ['Geen gekozen allergenen aangetroffen'] }
}
