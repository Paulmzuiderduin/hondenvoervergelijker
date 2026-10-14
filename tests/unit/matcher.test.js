import test from 'node:test'
import assert from 'node:assert/strict'
import { isReviewOverdue, productMatch } from '../../src/lib/matcher.js'

const product = (overrides = {}) => ({
  last_checked_at: '2026-10-01',
  recipe_versions: [{ has_uncertain_ingredients: false, recipe_ingredients: [] }],
  ...overrides
})

test('explicit allergen excludes a product', () => {
  const result = productMatch(product({ recipe_versions: [{ recipe_ingredients: [{ allergen_key: 'chicken', certainty: 'confirmed' }] }] }), ['chicken'], new Date('2026-10-14'))
  assert.equal(result.kind, 'excluded')
})
test('uncertain ingredient requires checking', () => assert.equal(productMatch(product({ recipe_versions: [{ has_uncertain_ingredients: true, recipe_ingredients: [] }] }), [], new Date('2026-10-14')).kind, 'check'))
test('a current fully mapped product is suitable', () => assert.equal(productMatch(product(), ['beef'], new Date('2026-10-14')).kind, 'suitable'))
test('six-month threshold requires a review', () => assert.equal(isReviewOverdue('2026-03-01', new Date('2026-10-14')), true))
