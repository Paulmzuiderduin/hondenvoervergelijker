import test from 'node:test'
import assert from 'node:assert/strict'
import { isReviewOverdue, productMatch } from '../../src/lib/matcher.js'
import { ALLERGENS, detectIngredientSignals, markUncertainIngredients, missingAllergenKeys } from '../../src/lib/allergens.js'

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

test('nagekeken met een onduidelijke categorie blijft bij controleer', () => {
  const onduidelijk = product({ recipe_versions: [{ ingredients_mapped: true, has_uncertain_ingredients: true, recipe_ingredients: [] }] })
  assert.equal(productMatch(onduidelijk, [], new Date('2026-10-14')).kind, 'check')
  assert.equal(productMatch(onduidelijk, ['chicken'], new Date('2026-10-14')).kind, 'check')
  const schoon = product({ recipe_versions: [{ ingredients_mapped: true, has_uncertain_ingredients: false, recipe_ingredients: [] }] })
  assert.equal(productMatch(schoon, [], new Date('2026-10-14')).kind, 'suitable')
})
test('ingredient detection recognises synonyms and uncertain categories', () => {
  const result = detectIngredientSignals('Zalm (20%), erwten, dierlijke bijproducten')
  assert.deepEqual(result.allergens, ['fish', 'salmon', 'pea'])
  assert.equal(result.uncertain, true)
})
test('detectie herkent Nederlandse samenstellingen en meervouden', () => {
  const result = detectIngredientSignals('Vers eendenvlees, kippenlever, melkpoeder, weipoeder, visolie')
  assert.deepEqual(result.allergens, ['duck', 'chicken', 'fish', 'milk'])
})
test('"eiwit" is geen eiallergeen en gevogelte is onzeker', () => {
  const result = detectIngredientSignals('Gedroogd dierlijk eiwit (rund 21%, kip 4%), gevogeltevet')
  assert.deepEqual(result.allergens, ['poultry', 'chicken', 'beef'])
  assert.equal(result.uncertain, true)
})
test('detectie mist een onbekende diersoort niet stilzwijgend', () => {
  const result = detectIngredientSignals('Vleesmix (33%), mais, tarwe, gevogelte (9%), gehydrolyseerde kippenlever')
  assert.deepEqual(result.allergens, ['poultry', 'chicken', 'corn', 'wheat'])
  assert.equal(result.uncertain, true)
})
test('algemene categorie sluit ook de specifieke bronnen uit', () => {
  const kip = product({ recipe_versions: [{ ingredients_mapped: true, recipe_ingredients: [{ allergen_key: 'chicken', certainty: 'confirmed' }] }] })
  const tarwe = product({ recipe_versions: [{ ingredients_mapped: true, recipe_ingredients: [{ allergen_key: 'wheat', certainty: 'confirmed' }] }] })
  assert.equal(productMatch(kip, ['poultry'], new Date('2026-10-14')).kind, 'excluded')
  assert.equal(productMatch(tarwe, ['grains'], new Date('2026-10-14')).kind, 'excluded')
  assert.equal(productMatch(kip, ['turkey'], new Date('2026-10-14')).kind, 'suitable')
  assert.equal(productMatch(kip, ['grains'], new Date('2026-10-14')).kind, 'suitable')
})
test('elke allergeen in de keuzelijst is ook echt te herkennen', () => {
  const tekst = 'kip kalkoen rund lam eend varken konijn hert paard vis zalm kabeljauw ei melk weipoeder tarwe mais rijst gerst haver soja erwt aardappel kikkererwt gevogelte granen'
  assert.deepEqual(detectIngredientSignals(tekst).allergens, ALLERGENS.map(({ key }) => key))
})

test('meervoudsvormen zoals aardappelen en eieren worden herkend', () => {
  assert.deepEqual(detectIngredientSignals('Gedroogde aardappelen, erwten, eieren').allergens, ['potato', 'pea', 'egg'])
})
test('vult ontbrekende allergenen aan zonder bestaande vinkjes te raken', () => {
  assert.deepEqual(missingAllergenKeys('Aardappelen, kip, tarwe', ['chicken']), ['potato', 'wheat'])
  assert.deepEqual(missingAllergenKeys('Aardappelen, kip', []), ['chicken', 'potato'])
})
test('markeert niet te herleiden delen en laat de etiket tekst exact intact', () => {
  const tekst = 'Granen (volkoren granen 63%), vlees en dierlijke bijproducten (8% *), gevogeltevet, kip (10%)'
  const segmenten = markUncertainIngredients(tekst)
  assert.equal(segmenten.map((segment) => segment.text).join(''), tekst)
  assert.deepEqual(segmenten.filter((segment) => segment.uncertain).map((segment) => segment.text), [
    'Granen', 'granen', 'vlees en dierlijke bijproducten', 'gevogeltevet'
  ])
})
test('markeert niets in een lijst met alleen herleidbare bronnen', () => {
  assert.deepEqual(markUncertainIngredients('Kip 40%, tarwe, erwten'), [{ text: 'Kip 40%, tarwe, erwten', uncertain: false }])
  assert.deepEqual(markUncertainIngredients(''), [])
})
test('markeert ook woorden met diakritische tekens', () => {
  const segmenten = markUncertainIngredients('Oliën en vetten (5%), pluimveevlees')
  assert.deepEqual(segmenten.filter((segment) => segment.uncertain).map((segment) => segment.text), ['Oliën en vetten', 'pluimveevlees'])
  assert.equal(segmenten.map((segment) => segment.text).join(''), 'Oliën en vetten (5%), pluimveevlees')
})
