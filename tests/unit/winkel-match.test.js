import test from 'node:test'
import assert from 'node:assert/strict'
import { kiesAanbiedingen, matchScore, maten, normaliseer } from '../../scripts/lib/winkel-match.mjs'

const product = {
  id: 'p1',
  brand: 'Royal Canin',
  name: 'Medium Adult',
  package_size: '4 / 10 kg',
  gtin: '3182550702633'
}

test('normaliseert merken en namen', () => {
  assert.equal(normaliseer("Hill's Science Plan"), 'hills science plan')
  assert.equal(normaliseer('Smølke'), 'smolke')
})

test('herkent een exacte EAN', () => {
  const score = matchScore(product, { titel: 'Iets heel anders', merk: 'Ander merk', ean: '3182550702633', prijs: 49.99 })
  assert.equal(score, 1)
})

test('matcht merk plus productnaam en verpakking', () => {
  const score = matchScore(product, {
    titel: 'Royal Canin Medium Adult 4 kg',
    merk: 'Royal Canin',
    maat: '4 kg',
    prijs: 39.99
  })
  assert.ok(score >= 0.82, `score ${score}`)
})

test('weigert een ander merk', () => {
  const score = matchScore(product, { titel: 'Medium Adult 4 kg', merk: 'Purina', maat: '4 kg', prijs: 35 })
  assert.equal(score, 0)
})

test('straft een verkeerde maat', () => {
  const score = matchScore(product, {
    titel: 'Royal Canin Medium Adult 15 kg',
    merk: 'Royal Canin',
    maat: '15 kg',
    prijs: 79
  })
  assert.ok(score < 0.82, `score ${score}`)
})

test('leest verpakkingsmaten', () => {
  assert.deepEqual(maten('4 / 10 kg'), [4000, 10000])
  assert.deepEqual(maten('12 x 100 g'), [100])
})

test('kiest per winkel de goedkoopste passende aanbieding', () => {
  const aanbiedingen = [
    { winkel: 'Zooplus', titel: 'Royal Canin Medium Adult 4 kg', merk: 'Royal Canin', maat: '4 kg', prijs: 42.99, url: 'a' },
    { winkel: 'Zooplus', titel: 'Royal Canin Medium Adult 4 kg', merk: 'Royal Canin', maat: '4 kg', prijs: 39.99, url: 'b' },
    { winkel: 'Medpets', titel: 'Royal Canin Medium Adult 10 kg', merk: 'Royal Canin', maat: '10 kg', prijs: 69.99, url: 'c' }
  ]
  const gekozen = kiesAanbiedingen(product, aanbiedingen)
  assert.deepEqual(gekozen.map(({ winkel, url }) => [winkel, url]), [['Medpets', 'c'], ['Zooplus', 'b']])
})
