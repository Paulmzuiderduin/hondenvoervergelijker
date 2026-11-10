import test from 'node:test'
import assert from 'node:assert/strict'
import { setCustomTerms } from '../../src/lib/allergens.js'
import { SNACK_TERMS, snackMatch, snackMerkPad, snackTypeLabel, sizeLabel, toProduct, traceAllergens } from '../../src/lib/snacks.js'

setCustomTerms(SNACK_TERMS)

const snack = (overrides = {}) => ({
  id: 'test-snack',
  brand: 'Testmerk',
  name: 'Test snack',
  snack_type: 'koekje',
  size_class: 'alle',
  package_size: '100 g',
  protein_source: 'Kip',
  single_protein: true,
  grain_free: true,
  kcal_per_100g: 350,
  kcal_per_piece: null,
  ingredients_text: 'Kip 95%, mineralen.',
  trace_text: null,
  source_url: 'https://example.com/snack',
  source_note: 'Testbron.',
  last_checked_at: '2026-11-09',
  reviewed_at: '2026-11-09',
  imported_at: null,
  import_note: null,
  review_note: null,
  ...overrides
})

test('een snack met één eiwitbron is geschikt voor een ander allergeen', () => {
  const product = toProduct(snack())
  assert.equal(snackMatch(product, ['beef'], new Date('2026-11-09')).kind, 'suitable')
  assert.equal(snackMatch(product, ['chicken'], new Date('2026-11-09')).kind, 'excluded')
})

test('een sporenmelding maakt een snack niet meteen uitgesloten', () => {
  const product = toProduct(snack({
    ingredients_text: 'Lam 95%, mineralen.',
    protein_source: 'Lam',
    trace_text: 'Kan sporen van kip bevatten.'
  }))
  const result = snackMatch(product, ['chicken'], new Date('2026-11-09'))
  assert.equal(result.kind, 'check')
  assert.deepEqual(result.traceStates, ['chicken'])
  assert.equal(snackMatch(product, ['beef'], new Date('2026-11-09')).kind, 'suitable')
})

test('zonder allergenenkeuze verandert een sporenmelding het oordeel niet', () => {
  const product = toProduct(snack({
    ingredients_text: 'Lam 95%, mineralen.',
    protein_source: 'Lam',
    trace_text: 'Kan sporen van kip bevatten.'
  }))
  const result = snackMatch(product, [], new Date('2026-11-09'))
  assert.equal(result.kind, 'suitable')
  assert.deepEqual(result.traceStates, [])
})

test('expliciete sporenallergenen gaan voor de tekstherkenning', () => {
  assert.deepEqual(traceAllergens({ trace_text: 'Kan sporen van kip bevatten.', trace_allergens: ['beef'] }), ['beef'])
  assert.deepEqual(traceAllergens({ trace_text: 'Kan sporen van kip bevatten.' }), ['chicken'])
  assert.deepEqual(traceAllergens({ trace_text: null }), [])
})

test('snacktype en formaat hebben leesbare labels', () => {
  assert.equal(snackTypeLabel('zachte_snack'), 'Zachte snack')
  assert.equal(snackTypeLabel('onbekend'), 'onbekend')
  assert.equal(sizeLabel('klein'), 'Klein')
  assert.equal(sizeLabel('onbekend'), 'onbekend')
})

test('snackmerken krijgen een eigen pad buiten de voermerken', () => {
  assert.equal(snackMerkPad('Renske'), '/hondensnacks/merken/renske.html')
  assert.equal(snackMerkPad('Edgard & Cooper'), '/hondensnacks/merken/edgard-en-cooper.html')
  assert.equal(snackMerkPad(''), '/hondensnacks/merken/merk.html')
})
