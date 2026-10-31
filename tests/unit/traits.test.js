import test from 'node:test'
import assert from 'node:assert/strict'
import { classifyProduct } from '../../src/lib/traits.js'

test('leeftijd en formaat uit de productnaam', () => {
  assert.deepEqual(classifyProduct({ name: 'Puppy Large Breed' }), { lifeStage: 'puppy', size: 'large' })
  assert.deepEqual(classifyProduct({ name: 'Adult Mini met kip' }), { lifeStage: 'adult', size: 'mini' })
  assert.deepEqual(classifyProduct({ name: 'Senior/Light Lam & Rijst' }), { lifeStage: 'senior', size: 'unknown' })
  assert.deepEqual(classifyProduct({ name: 'Volwassen Middelgrote rassen' }), { lifeStage: 'adult', size: 'medium' })
  assert.deepEqual(classifyProduct({ name: 'Alle leeftijden Complete maaltijd' }), { lifeStage: 'all', size: 'unknown' })
  assert.deepEqual(classifyProduct({ name: 'Kip & Vis compleet' }), { lifeStage: 'unknown', size: 'unknown' })
  assert.deepEqual(classifyProduct({ name: 'Giant Adult' }), { lifeStage: 'adult', size: 'large' })
  assert.deepEqual(classifyProduct({ name: 'Junior Small' }), { lifeStage: 'puppy', size: 'mini' })
})
