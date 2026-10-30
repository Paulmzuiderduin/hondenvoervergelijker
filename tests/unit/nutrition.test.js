import test from 'node:test'
import assert from 'node:assert/strict'
import {
  ADDITIONAL_NUTRIENTS,
  CORE_NUTRIENTS,
  NUTRIENTS,
  formatteerVoedingswaarde,
  normaliseerVoedingswaarden,
  valideerVoedingswaarden,
  voedingswaardeMap,
  voedingswaardeSamenvatting,
  voedingswaardeStatus
} from '../../src/lib/nutrition.js'

const rij = (nutrient_key, value, basis = 'as-fed') => ({ nutrient_key, value, basis })

test('de nutrientenlijst heeft zes kernwaarden, vier aanvullende en unieke sleutels', () => {
  assert.equal(NUTRIENTS.length, 10)
  assert.equal(CORE_NUTRIENTS.length, 6)
  assert.equal(ADDITIONAL_NUTRIENTS.length, 4)
  assert.equal(NUTRIENTS.filter(({ isStandard }) => isStandard).length, 10)
  assert.equal(new Set(NUTRIENTS.map(({ key }) => key)).size, NUTRIENTS.length)
  assert.deepEqual(CORE_NUTRIENTS.map(({ key }) => key), ['protein', 'fat', 'fiber', 'ash', 'moisture', 'kcal'])
  assert.deepEqual(ADDITIONAL_NUTRIENTS.map(({ key }) => key), ['calcium', 'phosphorus', 'omega3', 'omega6'])
})

test('formatteert percentages en energie in Nederlandse notatie', () => {
  assert.equal(formatteerVoedingswaarde('protein', 26), '26%')
  assert.equal(formatteerVoedingswaarde('kcal', 370), '370 kcal/100 g')
  assert.equal(formatteerVoedingswaarde('kcal', 370.5), '370,5 kcal/100 g')
  assert.equal(formatteerVoedingswaarde('fat', 15.25), '15,25%')
})

test('normaliseert, sorteert en negeert onbekende of ongeldige waarden', () => {
  const rijen = [
    rij('kcal', 370),
    rij('protein', 26),
    rij('onbekend', 10),
    rij('fat', -1),
    rij('fiber', null),
    rij('ash', 6.5)
  ]
  const resultaat = normaliseerVoedingswaarden(rijen)
  assert.deepEqual(resultaat.map(({ key }) => key), ['protein', 'ash', 'kcal'])
  assert.equal(resultaat[0].value, 26)
})

test('een as-fed waarde gaat voor een droge-stofwaarde van dezelfde nutrient', () => {
  const resultaat = normaliseerVoedingswaarden([
    rij('protein', 26, 'droge stof'),
    rij('protein', 24, 'as-fed')
  ])
  assert.equal(resultaat.length, 1)
  assert.equal(resultaat[0].value, 24)
  assert.equal(resultaat[0].basis, 'as-fed')
})

test('maakt een compacte samenvatting met eiwit, vet en energie', () => {
  const samenvatting = voedingswaardeSamenvatting([
    rij('protein', 26),
    rij('fat', 15),
    rij('fiber', 2.6),
    rij('kcal', 370)
  ])
  assert.equal(samenvatting, 'Eiwit 26% · Vet 15% · Energie 370 kcal/100 g')
})

test('valt terug op vezel als energie ontbreekt', () => {
  const samenvatting = voedingswaardeSamenvatting([
    rij('protein', 26),
    rij('fat', 15),
    rij('fiber', 2.6)
  ])
  assert.equal(samenvatting, 'Eiwit 26% · Vet 15% · Vezel 2,6%')
})

test('bepaalt volledig, gedeeltelijk en ontbrekend', () => {
  const volledig = voedingswaardeStatus([
    ...CORE_NUTRIENTS.map(({ key }) => rij(key, key === 'kcal' ? 370 : 10)),
    rij('calcium', 1.4),
    rij('phosphorus', 1.1)
  ])
  assert.equal(volledig.volledig, true)
  assert.equal(volledig.aantal, 6)
  assert.equal(volledig.aanvullendAantal, 2)
  assert.equal(volledig.aanvullendTotaal, 4)

  const gedeeltelijk = voedingswaardeStatus([rij('protein', 26), rij('fat', 15)])
  assert.equal(gedeeltelijk.gedeeltelijk, true)
  assert.equal(gedeeltelijk.aantal, 2)
  assert.equal(gedeeltelijk.aanvullendAantal, 0)

  const ontbreekt = voedingswaardeStatus([])
  assert.equal(ontbreekt.ontbreekt, true)
  assert.equal(ontbreekt.aantal, 0)
})

test('maakt een eenvoudige map van nutrient naar waarde', () => {
  assert.deepEqual(voedingswaardeMap([rij('protein', 26), rij('kcal', 370)]), { protein: 26, kcal: 370 })
})

test('valideert invoer met komma, lege velden en grenzen', () => {
  const geldig = valideerVoedingswaarden({ protein: '26,5', fat: '15', kcal: '370', calcium: '' })
  assert.deepEqual(geldig.fouten, [])
  assert.deepEqual(geldig.waarden, { protein: 26.5, fat: 15, kcal: 370 })

  const ongeldig = valideerVoedingswaarden({ protein: '-1', fat: '101', kcal: '1001', calcium: 'abc' })
  assert.equal(ongeldig.fouten.length, 4)
  assert.deepEqual(ongeldig.waarden, {})
})
