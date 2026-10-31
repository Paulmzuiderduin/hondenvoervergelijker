import test from 'node:test'
import assert from 'node:assert/strict'
import { beoordeelVoedingswaarden, onbetrouwbareNutrienten } from '../../src/lib/plausibility.js'
import { voldoetAanVoedingsfilters } from '../../src/lib/nutrition.js'

test('een normale analyse levert geen signalen op', () => {
  assert.deepEqual(beoordeelVoedingswaarden({ protein: 26, fat: 15, fiber: 2, ash: 7, moisture: 8, kcal: 370 }, 'kibble'), { signalen: [], macroSom: 58 })
})

test('een macro-som boven 100% wordt gemeld', () => {
  const { signalen } = beoordeelVoedingswaarden({ protein: 18, fat: 13, fiber: 2, ash: 2.5, moisture: 69, kcal: 185 }, 'raw')
  assert.ok(signalen.some((tekst) => /104,5%/.test(tekst)))
})

test('een onmogelijk hoge vezelwaarde en een lage kcal worden gemeld', () => {
  const vezel = beoordeelVoedingswaarden({ protein: 25, fat: 12, fiber: 33, ash: 6, moisture: 9 }, 'kibble')
  assert.ok(vezel.signalen.some((tekst) => /Ruwe vezel van 33%/.test(tekst)))
  const kcal = beoordeelVoedingswaarden({ protein: 12.8, fat: 15.5, kcal: 166 }, 'wet')
  assert.ok(kcal.signalen.some((tekst) => /energie ligt lager/.test(tekst)))
})

test('vocht dat niet bij het voertype past wordt gemeld', () => {
  assert.ok(beoordeelVoedingswaarden({ moisture: 75 }, 'kibble').signalen.some((tekst) => /niet bij brokken/.test(tekst)))
  assert.ok(beoordeelVoedingswaarden({ moisture: 10 }, 'wet').signalen.some((tekst) => /niet bij natvoer/.test(tekst)))
})

test('een onmogelijke vezel wordt niet als filterwaarde gebruikt', () => {
  const waarden = { protein: 25, fat: 12, fiber: 33, ash: 6, moisture: 9 }
  const negeren = onbetrouwbareNutrienten(waarden, 'kibble')
  assert.ok(negeren.has('fiber'))
  assert.equal(voldoetAanVoedingsfilters(waarden, { fiber: { min: 20, max: 40 } }, negeren), false)
  assert.equal(voldoetAanVoedingsfilters(waarden, { protein: { min: 20, max: 30 } }, negeren), true)
})

test('een macro-som boven 100% maakt eiwit en vet niet onbruikbaar', () => {
  const waarden = { protein: 18, fat: 13, fiber: 2, ash: 2.5, moisture: 69 }
  assert.deepEqual([...onbetrouwbareNutrienten(waarden, 'raw')], [])
})
