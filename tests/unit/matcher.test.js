import test from 'node:test'
import assert from 'node:assert/strict'
import { isReviewOverdue, productMatch } from '../../src/lib/matcher.js'
import { ALLERGENS, assessLabel, detectIngredientSignals, markUncertainIngredients, missingAllergenKeys } from '../../src/lib/allergens.js'

const product = (overrides = {}) => ({
  last_checked_at: '2026-10-01',
  recipe_versions: [{ ingredients_text: 'Kip 40%, tarwe, erwten', has_uncertain_ingredients: false, ingredients_mapped: true, recipe_ingredients: [] }],
  ...overrides
})

test('explicit allergen excludes a product', () => {
  const result = productMatch(product({ recipe_versions: [{ ingredients_text: 'Kip 40%, tarwe', recipe_ingredients: [{ allergen_key: 'chicken', certainty: 'confirmed' }] }] }), ['chicken'], new Date('2026-10-14'))
  assert.equal(result.kind, 'excluded')
})
test('uncertain ingredient requires checking', () => assert.equal(productMatch(product({ recipe_versions: [{ ingredients_text: 'Kip 40%, tarwe', has_uncertain_ingredients: true, recipe_ingredients: [] }] }), [], new Date('2026-10-14')).kind, 'check'))
test('a current fully mapped product is suitable', () => assert.equal(productMatch(product(), ['beef'], new Date('2026-10-14')).kind, 'suitable'))
test('six-month threshold requires a review', () => assert.equal(isReviewOverdue('2026-03-01', new Date('2026-10-14')), true))

test('een product zonder receptversie is nooit geschikt', () => {
  const result = productMatch({ last_checked_at: '2026-10-01', recipe_versions: [] }, [], new Date('2026-10-14'))
  assert.equal(result.kind, 'check')
})
test('een niet volledig in kaart gebrachte lijst is nooit geschikt', () => {
  const result = productMatch(product({ recipe_versions: [{ ingredients_text: 'Kip 40%, tarwe', has_uncertain_ingredients: false, ingredients_mapped: false, recipe_ingredients: [] }] }), ['chicken'], new Date('2026-10-14'))
  assert.equal(result.kind, 'check')
})
test('een onzeker bevonden allergeenrij vraagt om controle', () => {
  const result = productMatch(product({ recipe_versions: [{ ingredients_text: 'Kip 40%, tarwe', ingredients_mapped: true, recipe_ingredients: [{ allergen_key: 'chicken', certainty: 'uncertain' }] }] }), ['beef'], new Date('2026-10-14'))
  assert.equal(result.kind, 'check')
})

test('nagekeken met een onduidelijke categorie blijft bij controleer', () => {
  const onduidelijk = product({ recipe_versions: [{ ingredients_text: 'Kip 40%, tarwe', ingredients_mapped: true, has_uncertain_ingredients: true, recipe_ingredients: [] }] })
  assert.equal(productMatch(onduidelijk, [], new Date('2026-10-14')).kind, 'check')
  assert.equal(productMatch(onduidelijk, ['chicken'], new Date('2026-10-14')).kind, 'check')
  const schoon = product({ recipe_versions: [{ ingredients_text: 'Kip 40%, tarwe', ingredients_mapped: true, has_uncertain_ingredients: false, recipe_ingredients: [] }] })
  assert.equal(productMatch(schoon, [], new Date('2026-10-14')).kind, 'suitable')
})
test('een etiket met een bron zonder naam is nooit geschikt', () => {
  const dierlijkVet = product({ recipe_versions: [{ ingredients_text: 'Maïs, tarwe, kip (9%), dierlijk vet', ingredients_mapped: true, has_uncertain_ingredients: false, recipe_ingredients: [] }] })
  const resultaat = productMatch(dierlijkVet, ['beef'], new Date('2026-10-14'))
  assert.equal(resultaat.kind, 'check')
  assert.match(resultaat.reasons.join(' '), /niet volledig te herleiden/)
  const metBron = product({ recipe_versions: [{ ingredients_text: 'Maïs, kip (9%), dierlijk vet (rund)', ingredients_mapped: true, has_uncertain_ingredients: false, recipe_ingredients: [{ allergen_key: 'beef', certainty: 'confirmed' }] }] })
  assert.equal(productMatch(metBron, [], new Date('2026-10-14')).kind, 'suitable')
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
  const kip = product({ recipe_versions: [{ ingredients_text: 'Kip 40%, erwten', ingredients_mapped: true, recipe_ingredients: [{ allergen_key: 'chicken', certainty: 'confirmed' }] }] })
  const tarwe = product({ recipe_versions: [{ ingredients_text: 'Tarwe, erwten', ingredients_mapped: true, recipe_ingredients: [{ allergen_key: 'wheat', certainty: 'confirmed' }] }] })
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

test('een etiket met alleen bronnen bij name is automatisch te beoordelen', () => {
  const uitslag = assessLabel('Verse kip 41%, aardappelen, erwten, kippenvet, lijnzaad, mineralen')
  assert.equal(uitslag.status, 'schoon')
  assert.deepEqual(uitslag.vague, [])
  assert.deepEqual(uitslag.risky, [])
})

test('dierlijk vet en gevogeltevet maken een etiket onduidelijk', () => {
  const uitslag = assessLabel('Maïs, tarwe, kip (9%), dierlijk vet, mineralen')
  assert.equal(uitslag.status, 'aandacht')
  assert.deepEqual(uitslag.vague, ['dierlijk'])
  assert.deepEqual(uitslag.risky, ['vet'])
  assert.equal(detectIngredientSignals('Maïs, kip, dierlijk vet').uncertain, true)
  assert.equal(detectIngredientSignals('Maïs, kip, gevogeltevet').uncertain, true)
})

test('een vet of eiwit zonder bron blokkeert, met een genoemde bron niet', () => {
  assert.deepEqual(assessLabel('Vleesmix (33%), mais').risky, ['vleesmix'])
  assert.deepEqual(assessLabel('Gedroogde kip, sorghum, havervlokken').risky, [])
  assert.deepEqual(assessLabel('Ontsloten mais, gevogeltevet, zalmolie').risky, [])
  assert.deepEqual(assessLabel('Tarwe, vet, mineralen').risky, ['vet'])
  assert.deepEqual(assessLabel('Rundvet, zonnebloemolie').risky, [])
})

test('een bron tussen haakjes heft het verzamelwoord op', () => {
  assert.equal(assessLabel('Gedroogd dierlijk eiwit (rund 21%, kip 4%), mais').status, 'schoon')
  assert.equal(assessLabel('Granen (tarwe, maïs, rijst)').status, 'schoon')
  assert.equal(assessLabel('Granen (volkoren granen 63%), kip').status, 'aandacht')
  assert.equal(assessLabel('Vlees en dierlijke bijproducten (8%), rundvlees').status, 'aandacht')
})

test('de algemene categorie verklaart een verzamelwoord niet', () => {
  assert.equal(assessLabel('Kalkoenmeel (totaal 14% gevogelte), maïs').status, 'aandacht')
})

test('delen onder een kop met een genoemde bron zijn herleidbaar', () => {
  const konijn = assessLabel('63% Konijn: 44% rug, 13% vlees, 6% oren; 35% Insect (BSF); 1% Zalmolie; 1% Vitamines en mineralen.')
  assert.equal(konijn.status, 'schoon')
  assert.deepEqual(konijn.risky, [])
  assert.equal(assessLabel('65% Kip: 38% ruggen, 15% hart, 12% maag; 33% Rund: 17% pens, 2,5% vet; 1% zalmolie.').status, 'schoon')
  // De kop geldt niet meer na een puntkomma, en "gevogelte" is geen bron bij name.
  assert.equal(assessLabel('65% Kip: 38% ruggen; 1% dierlijk vet').status, 'aandacht')
  assert.equal(assessLabel('Gevogelte: 40% vlees').status, 'aandacht')
  // Zonder dubbele punt blijft een los woord een risico, ook na een genoemde bron.
  assert.deepEqual(assessLabel('Maïs, eiwit, mineralen').risky, ['eiwit'])
})

test('gierst, spelt, rogge en sorghum horen bij granen', () => {
  assert.deepEqual(detectIngredientSignals('Gierst, spelt, rogge, sorghum, triticale, millet').allergens, ['grains'])
})

test('een bron zonder naam wordt rood gemarkeerd', () => {
  const segmenten = markUncertainIngredients('Maïs, kip (9%), dierlijk vet, bouillon, mineralen')
  assert.deepEqual(segmenten.filter((segment) => segment.uncertain).map((segment) => segment.text), ['dierlijk vet', 'bouillon'])
  assert.equal(segmenten.map((segment) => segment.text).join(''), 'Maïs, kip (9%), dierlijk vet, bouillon, mineralen')
})
