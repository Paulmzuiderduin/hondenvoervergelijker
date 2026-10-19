import test from 'node:test'
import assert from 'node:assert/strict'
import { isReviewOverdue, productMatch } from '../../src/lib/matcher.js'
import { ALLERGENS, assessLabel, detectIngredientSignals, markUncertainIngredients, missingAllergenKeys, setCustomTerms } from '../../src/lib/allergens.js'

const product = (overrides = {}) => ({
  last_checked_at: '2026-10-01',
  recipe_versions: [{ ingredients_text: 'Kip 40%, tarwe, erwten', reviewed_at: '2026-10-01T00:00:00Z', recipe_ingredients: [] }],
  ...overrides
})

test('explicit allergen excludes a product', () => {
  const result = productMatch(product({ recipe_versions: [{ ingredients_text: 'Kip 40%, tarwe', recipe_ingredients: [{ allergen_key: 'chicken', certainty: 'confirmed' }] }] }), ['chicken'], new Date('2026-10-14'))
  assert.equal(result.kind, 'excluded')
})
test('een onzekere allergeenrij vraagt om controle', () => assert.equal(productMatch(product({ recipe_versions: [{ ingredients_text: 'Kip 40%, tarwe', reviewed_at: '2026-10-01T00:00:00Z', recipe_ingredients: [{ allergen_key: 'beef', certainty: 'uncertain' }] }] }), ['beef'], new Date('2026-10-14')).kind, 'check'))
test('a current fully mapped product is suitable', () => assert.equal(productMatch(product(), ['beef'], new Date('2026-10-14')).kind, 'suitable'))
test('six-month threshold requires a review', () => assert.equal(isReviewOverdue('2026-03-01', new Date('2026-10-14')), true))

test('een product zonder receptversie is nooit geschikt', () => {
  const result = productMatch({ last_checked_at: '2026-10-01', recipe_versions: [] }, [], new Date('2026-10-14'))
  assert.equal(result.kind, 'check')
})
test('een niet nagekeken lijst is nooit geschikt', () => {
  const result = productMatch(product({ recipe_versions: [{ ingredients_text: 'Kip 40%, tarwe', recipe_ingredients: [] }] }), ['beef'], new Date('2026-10-14'))
  assert.equal(result.kind, 'check')
})
test('een verouderde controle vraagt om een nieuwe blik', () => {
  const result = productMatch(product({ last_checked_at: '2026-03-01' }), ['beef'], new Date('2026-10-14'))
  assert.equal(result.kind, 'check')
  assert.equal(result.stale, true)
})

// --- Het oordeel per allergeen ---------------------------------------------
test('een onduidelijke bron raakt alleen de allergenen die erin kunnen zitten', () => {
  const zalm = product({ recipe_versions: [{ ingredients_text: 'Zalm (20%), erwten, dierlijk vet, mineralen', reviewed_at: '2026-10-01T00:00:00Z', recipe_ingredients: [] }] })
  // Tarwe staat nergens in deze lijst en "dierlijk vet" kan geen tarwe zijn.
  assert.equal(productMatch(zalm, ['wheat'], new Date('2026-10-14')).kind, 'suitable')
  // Rund kan wél achter "dierlijk vet" zitten, en sojaolie of maiskiemolie achter "vet".
  const rund = productMatch(zalm, ['beef'], new Date('2026-10-14'))
  assert.equal(rund.kind, 'check')
  assert.deepEqual(rund.unknownStates.map(({ key }) => key), ['beef'])
  assert.deepEqual(rund.unknownStates[0].words, ['dierlijk', 'vet'])
  assert.equal(productMatch(zalm, ['soy'], new Date('2026-10-14')).kind, 'check')
  assert.equal(productMatch(zalm, ['corn'], new Date('2026-10-14')).kind, 'check')
  // "Granen (algemeen)" dekt maïs, dus ook dan blijft het een vraag.
  assert.equal(productMatch(zalm, ['grains'], new Date('2026-10-14')).kind, 'check')
  // Zalm staat er met name in.
  assert.equal(productMatch(zalm, ['salmon'], new Date('2026-10-14')).kind, 'excluded')
  assert.equal(productMatch(zalm, ['fish'], new Date('2026-10-14')).kind, 'excluded')
})
test('een nagekeken etiket met een onduidelijke bron blijft per allergeen eerlijk', () => {
  // De beheerder heeft de tekst tegen de bron gecontroleerd, maar de fabrikant
  // noemt de bron van "cooked broth" niet. Nagekeken betekent niet "vrijgegeven".
  const versie = { ingredients_text: 'Lamsvlees 40%, aardappel, cooked broth, mineralen', reviewed_at: '2026-10-01T00:00:00Z', recipe_ingredients: [] }
  assert.equal(productMatch(product({ recipe_versions: [versie] }), ['lamb'], new Date('2026-10-14')).kind, 'excluded')
  assert.equal(productMatch(product({ recipe_versions: [versie] }), ['grains'], new Date('2026-10-14')).kind, 'suitable')
  const kip = productMatch(product({ recipe_versions: [versie] }), ['chicken'], new Date('2026-10-14'))
  assert.equal(kip.kind, 'check')
  assert.equal(kip.states[0].state, 'unknown')
})
test('een woord dat de keuring niet kent blokkeert elk allergeen', () => {
  const versie = { ingredients_text: 'Kip 40%, glucosamine, erwten', reviewed_at: '2026-10-01T00:00:00Z', recipe_ingredients: [] }
  assert.equal(productMatch(product({ recipe_versions: [versie] }), ['chicken'], new Date('2026-10-14')).kind, 'excluded')
  assert.equal(productMatch(product({ recipe_versions: [versie] }), ['beef'], new Date('2026-10-14')).kind, 'check')
  assert.deepEqual(productMatch(product({ recipe_versions: [versie] }), [], new Date('2026-10-14')).unknownWords, ['glucosamine'])
})
test('een zelf ingedeeld woord geldt meteen voor alle producten', () => {
  setCustomTerms([{ term: 'glucosamine', kind: 'onschuldig' }])
  assert.equal(assessLabel('Kip 40%, glucosamine, erwten').covered, true)
  assert.deepEqual(assessLabel('Kip 40%, glucosamine, erwten').keys.filter((key) => key !== 'chicken' && key !== 'pea'), [])
  setCustomTerms([{ term: 'groenten', kind: 'onduidelijk' }])
  assert.deepEqual(assessLabel('Kip 40%, groenten').unknown, [])
  assert.equal(assessLabel('Kip 40%, groenten').keys.includes('soy'), true)
  setCustomTerms([{ term: 'garbanzo', kind: 'bron', allergen_key: 'chickpea' }])
  assert.deepEqual(detectIngredientSignals('garbanzo, kip').allergens, ['chicken', 'chickpea'])
  setCustomTerms([])
  assert.deepEqual(assessLabel('Kip 40%, glucosamine, erwten').unknown, ['glucosamine'])
})
test('een allergeen dat de beheerder bevestigt telt ook zonder etiketwoord', () => {
  const versie = { ingredients_text: 'Rijst, aardappel, mineralen', reviewed_at: '2026-10-01T00:00:00Z', recipe_ingredients: [{ allergen_key: 'beef', certainty: 'confirmed' }] }
  assert.equal(productMatch(product({ recipe_versions: [versie] }), ['beef'], new Date('2026-10-14')).kind, 'excluded')
  assert.equal(productMatch(product({ recipe_versions: [versie] }), ['chicken'], new Date('2026-10-14')).kind, 'suitable')
})
test('een etiket met een bron zonder naam is nooit geschikt', () => {
  const dierlijkVet = product({ recipe_versions: [{ ingredients_text: 'Maïs, tarwe, kip (9%), dierlijk vet', reviewed_at: '2026-10-01T00:00:00Z', recipe_ingredients: [] }] })
  const resultaat = productMatch(dierlijkVet, ['beef'], new Date('2026-10-14'))
  assert.equal(resultaat.kind, 'check')
  assert.deepEqual(resultaat.unknownStates[0].words, ['dierlijk', 'vet'])
  // Met de bron erbij ("dierlijk vet (rund)") is rund een genoemde bron.
  const metBron = product({ recipe_versions: [{ ingredients_text: 'Maïs, kip (9%), dierlijk vet (rund)', reviewed_at: '2026-10-01T00:00:00Z', recipe_ingredients: [{ allergen_key: 'beef', certainty: 'confirmed' }] }] })
  assert.equal(productMatch(metBron, ['beef'], new Date('2026-10-14')).kind, 'excluded')
  assert.equal(productMatch(metBron, ['lamb'], new Date('2026-10-14')).kind, 'suitable')
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
  const kip = product({ recipe_versions: [{ ingredients_text: 'Kip 40%, erwten', reviewed_at: '2026-10-01T00:00:00Z', recipe_ingredients: [{ allergen_key: 'chicken', certainty: 'confirmed' }] }] })
  const tarwe = product({ recipe_versions: [{ ingredients_text: 'Tarwe, erwten', reviewed_at: '2026-10-01T00:00:00Z', recipe_ingredients: [{ allergen_key: 'wheat', certainty: 'confirmed' }] }] })
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

test('de keuring meldt woorden die ze niet kent', () => {
  assert.deepEqual(assessLabel('Kip 40%, glucosamine, erwten').unknown, ['glucosamine'])
  assert.equal(assessLabel('Kip 40%, glucosamine, erwten').covered, false)
  assert.equal(assessLabel('Kip 40%, aardappelen, vitaminen, mineralen').covered, true)
  assert.equal(assessLabel('Rose hip (0,2%), sodium chloride, vinegar, calcium carbonate').covered, true)
})

test('een dierlijk deel zonder genoemde soort is een risico', () => {
  assert.equal(assessLabel('44% rug, 13% vlees').status, 'aandacht')
  assert.deepEqual(assessLabel('44% rug, 13% vlees').risky, ['rug', 'vlees'])
  assert.equal(assessLabel('63% Konijn: 44% rug, 13% vlees').status, 'schoon')
  assert.deepEqual(assessLabel('Beef heart 6%, beef liver 1,5%').risky, [])
  assert.deepEqual(assessLabel('Tarwe, eiwithydrolysaat, mineralen').risky, ['eiwithydrolysaat'])
})

test('een bron zonder naam wordt rood gemarkeerd', () => {
  const segmenten = markUncertainIngredients('Maïs, kip (9%), dierlijk vet, bouillon, mineralen')
  assert.deepEqual(segmenten.filter((segment) => segment.uncertain).map((segment) => segment.text), ['dierlijk vet', 'bouillon'])
  assert.equal(segmenten.map((segment) => segment.text).join(''), 'Maïs, kip (9%), dierlijk vet, bouillon, mineralen')
  // Delen onder een soortkop blijven ongemarkeerd.
  const onderKop = markUncertainIngredients('63% Konijn: 44% rug, 13% vlees, 6% oren; 35% Insect (BSF); 1% Zalmolie')
  assert.deepEqual(onderKop.filter((segment) => segment.uncertain), [])
  assert.equal(onderKop.map((segment) => segment.text).join(''), '63% Konijn: 44% rug, 13% vlees, 6% oren; 35% Insect (BSF); 1% Zalmolie')
})
