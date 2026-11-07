import test from 'node:test'
import assert from 'node:assert/strict'
import { isBetrouwbareMatch, koppelBetrouwbaar, parseTradeTrackerFeed } from '../../scripts/lib/tradetracker-match.mjs'

const aanbieding = (titel, extra = {}) => {
  const merk = titel.split(' - ')[0]
  const titelZonderMerk = titel.slice(titel.indexOf(' - ') + 3)
  return {
    titel,
    merk,
    titelZonderMerk,
    categorie: 'hond-voeding',
    maten: [],
    url: `https://voorbeeld.test/${encodeURIComponent(titel)}`,
    ...extra
  }
}

test('exacte merk- en productnaam met overlappende maat is betrouwbaar', () => {
  assert.equal(isBetrouwbareMatch(
    { brand: 'Acana', name: 'Adult Dog Recipe', package_size: '2 / 6 / 11,4 kg' },
    aanbieding('Acana Dog - Adult Dog Recipe', { maten: [6000] })
  ), true)
})

test('generieke feednaam matcht geen specifieke variant', () => {
  assert.equal(isBetrouwbareMatch(
    { brand: 'Cavom', name: 'compleet Adult', package_size: '5 kg' },
    aanbieding('Cavom - Compleet', { maten: [5000] })
  ), false)
})

test('mini-variant matcht niet met de reguliere variant', () => {
  assert.equal(isBetrouwbareMatch(
    { brand: 'DARF', name: 'Vol Regular Mini', package_size: '4 kg' },
    aanbieding('Darf - Vol Regular', { maten: [4000] })
  ), false)
})

test('leeftijdsvariant 7+ matcht niet met de basisvariant', () => {
  assert.equal(isBetrouwbareMatch(
    { brand: 'Royal Canin', name: 'Medium Adult 7+', package_size: '4 / 15 kg' },
    aanbieding('Royal Canin - Medium Adult', { maten: [15000] })
  ), false)
})

test('exacte naam zonder maat in de feed is toegestaan', () => {
  assert.equal(isBetrouwbareMatch(
    { brand: 'Acana', name: 'Light & Fit Recipe', package_size: '2 / 6 kg' },
    aanbieding('Acana Dog - Light & Fit Recipe')
  ), true)
})

test('een andere verpakkingsmaat wordt geweigerd', () => {
  assert.equal(isBetrouwbareMatch(
    { brand: 'Acana', name: 'Senior Recipe', package_size: '2 / 6 kg' },
    aanbieding('Acana Dog - Senior Recipe', { maten: [11400].map((gram) => gram) })
  ), false)
})

test('dezelfde feedaanbieding wordt niet aan twee producten gekoppeld', () => {
  const producten = [
    { id: 'a', brand: 'Acana', name: 'Red Meat', package_size: '2 kg' },
    { id: 'b', brand: 'Acana', name: 'Red Meat Recipe', package_size: '2 kg' }
  ]
  const gedeeld = aanbieding('Acana Classic - Red Meat Recipe', { maten: [2000] })
  const { koppelingen, dubbelzinnig } = koppelBetrouwbaar(producten, [gedeeld])
  assert.equal(koppelingen.length, 0)
  assert.equal(dubbelzinnig.length, 2)
})

test('parser leest alleen hondenvoeding en maakt een schonere URL', () => {
  const xml = `<products><product ID="1"><name>Acana Dog - Senior Recipe</name><price currency="EUR">49.99</price><URL>https://winkel.test/?tt=1&amp;r=https%3A%2F%2Fwinkel.test%2Fproduct%2Facana</URL><description><![CDATA[6 kg]]></description><properties><property name="EAN"><value>ACANA SENIOR 6KG</value></property><property name="categoryPath"><value>hond-voeding</value></property></properties></product><product ID="2"><name>Kat - Voer</name><URL>https://winkel.test/kat</URL><properties><property name="categoryPath"><value>kat-voeding</value></property></properties></product></products>`
  const rijen = parseTradeTrackerFeed(xml)
  assert.equal(rijen.length, 1)
  assert.equal(rijen[0].merk, 'Acana Dog')
  assert.equal(rijen[0].titelZonderMerk, 'Senior Recipe')
  assert.equal(rijen[0].url, 'https://winkel.test/?tt=1&r=https%3A%2F%2Fwinkel.test%2Fproduct%2Facana')
  assert.deepEqual(rijen[0].maten, [6000])
})
