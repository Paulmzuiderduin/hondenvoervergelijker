import test from 'node:test'
import assert from 'node:assert/strict'
import { isReviewOverdue, productMatch } from '../../src/lib/matcher.js'
import { ALLERGENS, assessLabel, detectIngredientSignals, markUncertainIngredients, missingAllergenKeys, sampleForAllergen, setCustomTerms } from '../../src/lib/allergens.js'

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
  setCustomTerms([{ term: 'garbanzo', kind: 'bron', allergen_keys: ['chickpea'] }])
  assert.deepEqual(detectIngredientSignals('garbanzo, kip').allergens, ['chicken', 'chickpea'])
  setCustomTerms([])
  assert.deepEqual(assessLabel('Kip 40%, glucosamine, erwten').unknown, ['glucosamine'])
})
test('een onduidelijk woord kan ook juist een paar allergenen verbergen', () => {
  // Glucosamine komt van schaaldieren of van mais; een ei kan er niet achter
  // zitten. Zonder die keuze zou de site ook voor ei om controle vragen.
  setCustomTerms([{ term: 'glucosamine', kind: 'onduidelijk', allergen_keys: ['shellfish', 'corn'] }])
  const keuring = assessLabel('Kip 40%, glucosamine, rijst')
  assert.deepEqual(keuring.unknown, [])
  assert.deepEqual(keuring.keys, ['shellfish', 'corn'])
  const versie = { ingredients_text: 'Kip 40%, glucosamine, rijst', reviewed_at: '2026-10-01T00:00:00Z', recipe_ingredients: [] }
  assert.equal(productMatch(product({ recipe_versions: [versie] }), ['egg'], new Date('2026-10-14')).kind, 'suitable')
  assert.equal(productMatch(product({ recipe_versions: [versie] }), ['shellfish'], new Date('2026-10-14')).kind, 'check')
  assert.equal(productMatch(product({ recipe_versions: [versie] }), ['corn'], new Date('2026-10-14')).kind, 'check')
  setCustomTerms([])
})
test('een eiwitwoord na een genoemde diergroep verbergt alleen die groep', () => {
  // "gevogelte-eiwit" noemt de groep wel: kip, kalkoen en eend blijven onbeslist,
  // rund niet.
  const gevogelte = assessLabel('Gevogelte-eiwit (gehydrolyseerd), rijst, mineralen')
  for (const key of ['poultry', 'chicken', 'turkey', 'duck']) assert.equal(gevogelte.keys.includes(key), true, key)
  assert.equal(gevogelte.keys.includes('beef'), false)
  // "Dierlijk eiwit" kan geen ei, melk of vis zijn, wel elk landdier.
  const dierlijk = assessLabel('Dierlijk eiwit, rijst, mineralen')
  assert.equal(dierlijk.keys.includes('beef'), true)
  assert.equal(dierlijk.keys.includes('egg'), false)
  assert.equal(dierlijk.keys.includes('milk'), false)
  assert.equal(dierlijk.keys.includes('fish'), false)
  // Een vetwoord houdt zijn eigen, bredere afweging: visolie kan achter vet zitten.
  assert.equal(assessLabel('Dierlijk vet, rijst').keys.includes('fish'), true)
})

test('ganzenvlees telt als gans', () => {
  // "gans*" alleen matcht "ganzen" niet (gans/ganzen heeft een z, geen s);
  // daarom staat "ganzen*" er ook bij. Gans is een eigen allergeen, net als
  // geit en waterbuffel.
  const ganzenvlees = assessLabel('Ganzenvlees 31%, rijst')
  assert.deepEqual(ganzenvlees.unknown, [])
  assert.deepEqual(detectIngredientSignals('Ganzenvlees 31%, rijst').allergens, ['goose', 'rice'])
})

test('zonder allergenenkeuze vraagt een onduidelijk etiket om controle', () => {
  const onduidelijk = product({ recipe_versions: [{ ingredients_text: 'Kip 40%, cooked broth, mineralen', reviewed_at: '2026-10-01T00:00:00Z', recipe_ingredients: [] }] })
  // Geen keuze: dan is de vraag "noemt dit etiket elke bron?" en het antwoord is nee.
  assert.equal(productMatch(onduidelijk, [], new Date('2026-10-14')).kind, 'check')
  // Met een keuze doet alleen dat allergeen nog mee: bouillon kan geen tarwe zijn.
  assert.equal(productMatch(onduidelijk, ['wheat'], new Date('2026-10-14')).kind, 'suitable')
  assert.equal(productMatch(onduidelijk, ['beef'], new Date('2026-10-14')).kind, 'check')
  // En een etiket dat elke bron noemt is zonder keuze wel geschikt.
  const helder = product({ recipe_versions: [{ ingredients_text: 'Kip 40%, tarwe, erwten', reviewed_at: '2026-10-01T00:00:00Z', recipe_ingredients: [] }] })
  assert.equal(productMatch(helder, [], new Date('2026-10-14')).kind, 'suitable')
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
test('suiker, geit en waterbuffel zijn echte allergenen; ontsuikerd en glucosamine zijn geen suiker, xylitol is een eigen allergeen', () => {
  assert.deepEqual(detectIngredientSignals('Suiker, geitenvlees, waterbuffel').allergens, ['goat', 'buffalo', 'sugar'])
  assert.deepEqual(detectIngredientSignals('Gedroogde bietenpulp (ontsuikerd)').allergens, ['beetroot'])
  assert.deepEqual(detectIngredientSignals('Glucosamine, xylitol').allergens, ['xylitol'])
})
test('elke allergeen in de keuzelijst is ook echt te herkennen', () => {
  for (const { key, label } of ALLERGENS) {
    const woord = sampleForAllergen(key)
    assert.ok(woord, `${label} heeft geen voorbeeldwoord in de woordenschat`)
    assert.ok(detectIngredientSignals(woord).allergens.includes(key), `${label} ("${woord}") wordt niet herkend`)
  }
})

test('schaaldieren en insecten zijn eigen bronnen', () => {
  assert.deepEqual(detectIngredientSignals('Kip, garnalen, kreeften, mosselen').allergens, ['chicken', 'shellfish'])
  assert.deepEqual(detectIngredientSignals('Insectorolie, meelwormen, rijst').allergens, ['insect', 'rice'])
  // Geen valse bronnen: een oesterzwam is geen oester en johannesbroodpitmeel
  // (locust bean gum) is geen sprinkhaan.
  assert.deepEqual(detectIngredientSignals('Oesterzwam, rijst').allergens, ['rice'])
  assert.deepEqual(detectIngredientSignals('Locust bean gum, rijst').allergens, ['rice'])
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

test('gierst, spelt, rogge en sorghum zijn eigen granen', () => {
  assert.deepEqual(detectIngredientSignals('Gierst, spelt, rogge, sorghum, triticale, millet').allergens, ['millet', 'grains', 'rye', 'spelt', 'sorghum'])
  // Wie "Granen (algemeen)" kiest, bedoelt spelt er ook bij.
  const versie = { ingredients_text: 'Spelt 40%, rijst, mineralen', reviewed_at: '2026-10-01T00:00:00Z', recipe_ingredients: [] }
  assert.equal(productMatch(product({ recipe_versions: [versie] }), ['grains'], new Date('2026-10-14')).kind, 'excluded')
  assert.equal(productMatch(product({ recipe_versions: [versie] }), ['spelt'], new Date('2026-10-14')).kind, 'excluded')
})

test('de keuring meldt woorden die ze niet kent', () => {
  assert.deepEqual(assessLabel('Kip 40%, glucosamine, erwten').unknown, ['glucosamine'])
  assert.equal(assessLabel('Kip 40%, glucosamine, erwten').covered, false)
  assert.equal(assessLabel('Kip 40%, aardappelen, vitaminen, mineralen').covered, true)
  assert.equal(assessLabel('Rose hip (0,2%), sodium chloride, vinegar, calcium carbonate').covered, true)
  // Hoeveelheden en losse letters zijn geen ingrediënt en mogen de keuring niet
  // op een onbekend woord laten vastlopen.
  assert.deepEqual(assessLabel('Kip 40%, 500mg, 2,5 g, 400 IU, vitamine E').unknown, [])
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

test('gehydrolyseerd eiwit wordt vermeld met de bron die erbij staat', () => {
  const kip = assessLabel('Gehydrolyseerd kippeneiwit, rijst, mineralen')
  assert.equal(kip.hydrolysed.present, true)
  assert.deepEqual(kip.hydrolysed.keys, ['chicken'])
  assert.deepEqual(kip.hydrolysed.words, ['kippeneiwit'])
  // De groep die er staat telt ook ("gevogelte-eiwit (gehydrolyseerd)").
  assert.deepEqual(assessLabel('Gevogelte-eiwit (gehydrolyseerd), rijst').hydrolysed.keys, ['poultry'])
  // Zonder bron in dezelfde reeks blijft het bij de algemene vermelding, en een
  // bron vóór de komma hoort er niet bij.
  assert.deepEqual(assessLabel('Eiwithydrolysaat, rijst, mineralen').hydrolysed.words, [])
  assert.deepEqual(assessLabel('Zalm, eiwithydrolysaat').hydrolysed.words, [])
  // Schrijfwijze met een i komt ook voor ("gevogelte hydrolisaat", Trovet).
  const trovet = assessLabel('Gevogelte hydrolisaat, rijst, mineralen')
  assert.equal(trovet.hydrolysed.present, true)
  assert.deepEqual(trovet.hydrolysed.keys, ['poultry'])
  assert.deepEqual(trovet.unknown, [])
  assert.equal(assessLabel('Kip 40%, rijst, mineralen').hydrolysed.present, false)
})

test('het oordeel verandert niet door een hydrolyse-vermelding', () => {
  const versie = { ingredients_text: 'Gehydrolyseerd kippeneiwit, rijst, mineralen', reviewed_at: '2026-10-01T00:00:00Z', recipe_ingredients: [] }
  const kip = productMatch(product({ recipe_versions: [versie] }), ['chicken'], new Date('2026-10-14'))
  assert.equal(kip.kind, 'excluded')
  assert.equal(kip.hydrolysed.present, true)
  // Kip blijft een genoemde bron: de site zegt niet dat het veilig is.
  assert.equal(productMatch(product({ recipe_versions: [versie] }), ['beef'], new Date('2026-10-14')).kind, 'suitable')
})

test('een automatisch overgenomen etiket vraagt geen menselijke klik', () => {
  const versie = { ingredients_text: 'Kip 40%, tarwe, erwten', imported_at: '2026-10-19T08:00:00Z', import_note: 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.', recipe_ingredients: [] }
  const uitslag = productMatch(product({ recipe_versions: [versie] }), ['beef'], new Date('2026-10-20'))
  assert.equal(uitslag.kind, 'suitable')
  assert.equal(uitslag.reviewed, false)
  assert.equal(uitslag.imported, true)
  assert.match(uitslag.importNote, /Nederlandse vertaling/)
  // Zonder import en zonder review blijft het een open vraag.
  const handmatig = { ingredients_text: 'Kip 40%, tarwe, erwten', recipe_ingredients: [] }
  assert.equal(productMatch(product({ recipe_versions: [handmatig] }), ['beef'], new Date('2026-10-20')).kind, 'check')
  // En een verouderde import vraagt opnieuw om een blik.
  assert.equal(productMatch({ last_checked_at: '2026-03-01', recipe_versions: [versie] }, ['beef'], new Date('2026-10-20')).kind, 'check')
})

test('een bron achter het woord telt als genoemd', () => {
  const rund = assessLabel('Spiervlees van rund (20%), hart van rund (15%), lever van rund (9%)')
  assert.deepEqual(rund.unknown, [])
  assert.deepEqual(rund.hidden, [])
  assert.equal(rund.allergens.includes('beef'), true)
  const kalkoen = assessLabel('Spiervlees van kalkoen, rijst')
  assert.deepEqual(kalkoen.hidden, [])
  const lam = assessLabel('Lam hart (23%), spiervlees lammeren (15%), long van lam (14%)')
  assert.deepEqual(lam.hidden, [])
  // Zonder bron blijft het een open vraag.
  const bronloos = assessLabel('Spiervlees (20%), hart (10%), bouillon (5%)')
  assert.deepEqual(bronloos.hidden.map(({ word }) => word).sort(), ['bouillon', 'hart', 'spiervlees'])
})

test('een komma scheidt het volgende ingrediënt van de bron', () => {
  const uitslag = assessLabel('Bouillon, gierst, eiwit, maïs')
  assert.deepEqual(uitslag.hidden.map(({ word }) => word).sort(), ['bouillon', 'eiwit'])
  // "Dierlijk vet" is één begrip; het volgende ingrediënt is niet de bron.
  assert.equal(assessLabel('Dierlijk vet, sojaolie').hidden.some(({ word }) => word === 'vet'), true)
})

test('ontbrekende dieren en planten worden herkend', () => {
  assert.equal(assessLabel('Kalfshart 30%, kalfslong 10%').allergens.includes('kalf'), true)
  assert.equal(assessLabel('Edelhert 20%').allergens.includes('venison'), true)
  assert.equal(assessLabel('Pangasius 20%').allergens.includes('whitefish'), true)
  assert.equal(assessLabel('Zeealgen 0,4%').allergens.includes('algae'), true)
  assert.equal(assessLabel('Bleekselderij 1%').allergens.includes('celery'), true)
  assert.equal(assessLabel('Abrikoos 4%').allergens.includes('apricot'), true)
  assert.equal(assessLabel('Gist 0,5%').allergens.includes('yeast'), true)
  assert.equal(assessLabel('Psylliumvezels 2%').allergens.includes('psyllium'), true)
  assert.equal(assessLabel('Meel pompoenzaad 1%').allergens.includes('pumpkin'), true)
})

test('oesterschelp en eierschaal zijn mineralen, geen dierlijke bron', () => {
  for (const tekst of ['Oesterschelp 1%', 'Oesterschaal 1%', 'Eischaalpoeder 0,7%', 'Eierschaalpoeder 0,7%', 'Eierschalen 1%']) {
    const uitslag = assessLabel(tekst)
    assert.deepEqual(uitslag.allergens, [], tekst)
    assert.deepEqual(uitslag.unknown, [], tekst)
    assert.equal(uitslag.status, 'schoon', tekst)
  }
})

test('voedingsmiddelen uit de woordenlijst zijn eigen allergenen', () => {
  const uitslag = assessLabel('Abrikoos, basilicum, dille, pollen, honing, gist, psyllium').allergens
  for (const key of ['apricot', 'basil', 'dill', 'pollen', 'honey', 'sugar', 'yeast', 'psyllium']) {
    assert.equal(uitslag.includes(key), true, key)
  }
})

test('honing is suiker voor wie suiker vermijdt', () => {
  const metHoning = product({ recipe_versions: [{ ingredients_text: 'Honing, rijst', reviewed_at: '2026-10-01T00:00:00Z', recipe_ingredients: [] }] })
  assert.equal(productMatch(metHoning, ['sugar'], new Date('2026-10-14')).kind, 'excluded')
})

test('een "vrij"-woord is geen bron', () => {
  const uitslag = assessLabel('Graanvrije, tarwevrije, rijst')
  assert.deepEqual(uitslag.allergens, ['rice'])
  assert.deepEqual(uitslag.unknown, [])
})

test('een plant die met een dier- of boonwoord begint is geen dier of boon', () => {
  assert.deepEqual(assessLabel('Paardenbloem, bonenkruid').allergens, ['dandelion', 'savory'])
  assert.deepEqual(assessLabel('Paardenvlees, bonen').allergens, ['horse', 'bean'])
})

test('gewone etiketwoorden zijn bekend', () => {
  const uitslag = assessLabel('Bestaande uit: abrikoos, basilicum, dille, bieslook, pollen, andeszout, psylliumvezels, klei, bakkersgist, cordial')
  assert.deepEqual(uitslag.unknown, [])
})

test('delen zonder soort verbergen alleen dierlijke eiwitten', () => {
  const spiervlees = assessLabel('Spiervlees 20%, rijst')
  assert.deepEqual(spiervlees.hidden.map(({ word }) => word), ['spiervlees'])
  assert.equal(spiervlees.hidden[0].keys.includes('beef'), true)
  assert.equal(spiervlees.hidden[0].keys.includes('wheat'), false)
  assert.equal(assessLabel('Kraakbeen 2%, rijst').hidden.some(({ word }) => word === 'kraakbeen'), true)
  const glycosaminoglycanen = assessLabel('Glycosaminoglycanen 1%, rijst')
  assert.equal(glycosaminoglycanen.hidden.some(({ word }) => word === 'glycosaminoglycanen'), true)
  assert.equal(glycosaminoglycanen.unknown.includes('glycosaminoglycanen'), false)
})

test('een hydrolysewoord noemt de bron die ernaast staat', () => {
  assert.deepEqual(assessLabel('Gehydrolyseerd witviseiwit').hydrolysed.keys, ['whitefish'])
})

test('een gewijzigde bronpagina vraagt om controle totdat het etiket opnieuw is bekeken', () => {
  const gewijzigd = product({ source_status: 'gewijzigd' })
  const uitslag = productMatch(gewijzigd, ['beef'], new Date('2026-10-14'))
  assert.equal(uitslag.kind, 'check')
  assert.equal(uitslag.sourceChanged, true)
})
