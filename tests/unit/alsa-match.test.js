import test from 'node:test'
import assert from 'node:assert/strict'
import { directeTradeTrackerUrl, koppelAlsaOpEanOfUrl } from '../../scripts/lib/alsa-match.mjs'

const product = (extra = {}) => ({
  id: 'p1',
  brand: 'Alsa Nature',
  name: 'Gevogelte & Aardappel granenvrij',
  package_size: '12 kg',
  gtin: '4050001108744',
  source_url: 'https://www.alsa-nature.nl/p/91005200',
  ...extra
})

const aanbieding = (extra = {}) => ({
  titel: 'alsa-nature Gevogelte & Aardappel granenvrij, 12 kg',
  ean: '4050001108744',
  url: 'https://www.alsa-nature.nl/alsanature?tt=31843_1814066_518755_&r=https%3A%2F%2Fwww.alsa-nature.nl%2Fp%2F91005200',
  directeUrl: 'https://www.alsa-nature.nl/p/91005200',
  maat: '12 kg',
  prijs: 61.95,
  ...extra
})

test('leest de directe product-URL uit een TradeTracker-link', () => {
  assert.equal(
    directeTradeTrackerUrl('https://www.alsa-nature.nl/alsanature?tt=31843_1814066_518755_&r=https%3A%2F%2Fwww.alsa-nature.nl%2Fp%2F91005200'),
    'https://www.alsa-nature.nl/p/91005200'
  )
})

test('koppelt op exacte bron-URL ook als titel en merk afwijken', () => {
  const { koppelingen } = koppelAlsaOpEanOfUrl(
    [product({ gtin: null })],
    [aanbieding({ ean: '' })]
  )
  assert.equal(koppelingen.length, 1)
  assert.equal(koppelingen[0].product.id, 'p1')
})

test('koppelt op exact EAN als de URL ontbreekt', () => {
  const { koppelingen } = koppelAlsaOpEanOfUrl(
    [product({ source_url: '' })],
    [aanbieding({ directeUrl: '' })]
  )
  assert.equal(koppelingen.length, 1)
})

test('laat een link weg als dezelfde aanbieding bij twee producten past', () => {
  const { koppelingen, dubbelzinnig } = koppelAlsaOpEanOfUrl(
    [product({ id: 'p1', gtin: null }), product({ id: 'p2', gtin: null })],
    [aanbieding()]
  )
  assert.equal(koppelingen.length, 0)
  assert.equal(dubbelzinnig.length, 2)
})

test('laat een link weg als URL en EAN naar verschillende aanbiedingen wijzen', () => {
  const { koppelingen, dubbelzinnig } = koppelAlsaOpEanOfUrl(
    [product()],
    [
      aanbieding({ ean: '9999999999999' }),
      aanbieding({ ean: '4050001108744', url: 'https://www.alsa-nature.nl/alsanature?tt=1&r=https%3A%2F%2Fwww.alsa-nature.nl%2Fp%2F999999', directeUrl: 'https://www.alsa-nature.nl/p/999999' })
    ]
  )
  assert.equal(koppelingen.length, 0)
  assert.equal(dubbelzinnig.length, 1)
})
