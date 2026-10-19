import test from 'node:test'
import assert from 'node:assert/strict'
import { isReviewOverdue, productMatch } from '../../src/lib/matcher.js'
import { detectIngredientSignals } from '../../src/lib/allergens.js'

const product = (overrides = {}) => ({
  last_checked_at: '2026-10-01',
  recipe_versions: [{ has_uncertain_ingredients: false, ingredients_mapped: true, recipe_ingredients: [] }],
  ...overrides
})

test('explicit allergen excludes a product', () => {
  const result = productMatch(product({ recipe_versions: [{ recipe_ingredients: [{ allergen_key: 'chicken', certainty: 'confirmed' }] }] }), ['chicken'], new Date('2026-10-14'))
  assert.equal(result.kind, 'excluded')
})
test('uncertain ingredient requires checking', () => assert.equal(productMatch(product({ recipe_versions: [{ has_uncertain_ingredients: true, recipe_ingredients: [] }] }), [], new Date('2026-10-14')).kind, 'check'))
test('a current fully mapped product is suitable', () => assert.equal(productMatch(product(), ['beef'], new Date('2026-10-14')).kind, 'suitable'))
test('six-month threshold requires a review', () => assert.equal(isReviewOverdue('2026-03-01', new Date('2026-10-14')), true))

test('een product zonder receptversie is nooit geschikt', () => {
  const result = productMatch({ last_checked_at: '2026-10-01', recipe_versions: [] }, [], new Date('2026-10-14'))
  assert.equal(result.kind, 'check')
})
test('een niet volledig in kaart gebrachte lijst is nooit geschikt', () => {
  const result = productMatch(product({ recipe_versions: [{ has_uncertain_ingredients: false, ingredients_mapped: false, recipe_ingredients: [] }] }), ['chicken'], new Date('2026-10-14'))
  assert.equal(result.kind, 'check')
})
test('een onzeker bevonden allergeenrij vraagt om controle', () => {
  const result = productMatch(product({ recipe_versions: [{ ingredients_mapped: true, recipe_ingredients: [{ allergen_key: 'chicken', certainty: 'uncertain' }] }] }), ['beef'], new Date('2026-10-14'))
  assert.equal(result.kind, 'check')
})

test('ingredient detection recognises synonyms and uncertain categories', () => {
  const result = detectIngredientSignals('Zalm (20%), erwten, dierlijke bijproducten')
  assert.deepEqual(result.allergens, ['fish', 'salmon', 'pea'])
  assert.equal(result.uncertain, true)
})
test('detectie herkent Nederlandse samenstellingen en meervouden', () => {
  const result = detectIngredientSignals('Vers eendenvlees, kippenlever, melkpoeder, weipoeder, visolie')
  assert.deepEqual(result.allergens, ['chicken', 'duck', 'fish', 'milk'])
})
test('"eiwit" is geen eiallergeen en gevogelte is onzeker', () => {
  const result = detectIngredientSignals('Gedroogd dierlijk eiwit (rund 21%, kip 4%), gevogeltevet')
  assert.deepEqual(result.allergens, ['chicken', 'beef'])
  assert.equal(result.uncertain, true)
})
test('detectie mist een onbekende diersoort niet stilzwijgend', () => {
  const result = detectIngredientSignals('Vleesmix (33%), mais, tarwe, gevogelte (9%), gehydrolyseerde kippenlever')
  assert.deepEqual(result.allergens, ['chicken', 'wheat', 'corn'])
  assert.equal(result.uncertain, true)
})
