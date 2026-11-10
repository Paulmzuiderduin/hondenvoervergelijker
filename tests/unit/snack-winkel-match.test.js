import test from 'node:test'
import assert from 'node:assert/strict'
import { readFileSync } from 'node:fs'
import { SNACK_FEED_REGELS, koppelSnacksBetrouwbaar } from '../../scripts/lib/snack-winkel-match.mjs'
import { parseTradeTrackerFeed } from '../../scripts/lib/tradetracker-match.mjs'

const snacks = JSON.parse(readFileSync(new URL('../../data/snacks.json', import.meta.url), 'utf8')).producten

const aanbieding = (titel, extra = {}) => ({
  titel,
  merk: titel.includes(' - ') ? titel.split(' - ')[0] : '',
  titelZonderMerk: titel.includes(' - ') ? titel.slice(titel.indexOf(' - ') + 3) : titel,
  categorie: 'hond-snacks',
  ean: '',
  eanTekst: '',
  maat: '',
  maten: [],
  prijs: 1.99,
  url: `https://winkel.test/?tt=1&r=${encodeURIComponent(titel)}`,
  ...extra
})

test('elke snackregel verwijst naar een bestaande snack', () => {
  const ids = new Set(snacks.map((snack) => snack.id))
  for (const regel of SNACK_FEED_REGELS) assert.ok(ids.has(regel.snackId), regel.snackId)
})

test('snackkoppeling gebruikt EAN en houdt de prijs uit de feed', () => {
  const { koppelingen } = koppelSnacksBetrouwbaar(snacks, [
    aanbieding('Bonzo - Funtastix', { ean: '761287501929', prijs: 2.39 })
  ])
  assert.equal(koppelingen.length, 1)
  assert.equal(koppelingen[0].product.id, 'purina-bonzo-funtastix-bacon-kaas')
  assert.equal(koppelingen[0].aanbieding.prijs, 2.39)
})

test('snack zonder EAN matcht alleen op de vaste feedtitel', () => {
  const { koppelingen } = koppelSnacksBetrouwbaar(snacks, [
    aanbieding('Edgard & Cooper- Dental Sticks Appel')
  ])
  assert.equal(koppelingen.length, 1)
  assert.equal(koppelingen[0].product.id, 'edgard-en-cooper-doggy-dental-appel-eucalyptus')
})

test('een onbekende snacknaam levert geen winkelknop op', () => {
  const { koppelingen } = koppelSnacksBetrouwbaar(snacks, [
    aanbieding('Edgard & Cooper - Kip Reep', { ean: '5425039487083' })
  ])
  assert.equal(koppelingen.length, 0)
})

test('nieuwe snackmerken worden op EAN of vaste feedtitel gekoppeld', () => {
  const { koppelingen } = koppelSnacksBetrouwbaar(snacks, [
    aanbieding('Whimzees - Toothbrush - Medium', { ean: '8718627750049', prijs: 1.19 }),
    aanbieding('Farm Food - Dental Roll', { prijs: 1.89 }),
    aanbieding('Carnilove - Crunchy Snack 200 gram', { eanTekst: 'carnilove crunchy snack ostrich with blackberries 200gr', prijs: 4.25 }),
    aanbieding('Dibo - Fisch', { ean: '4000819005919', prijs: 6.59 })
  ])
  assert.equal(koppelingen.length, 4)
  assert.deepEqual(koppelingen.map(({ product }) => product.id).sort(), [
    'carnilove-crunchy-snack-struisvogel-en-bramen',
    'dibo-gedroogde-vis',
    'farm-food-dental-roll',
    'whimzees-toothbrush'
  ])
  assert.equal(koppelingen.find(({ product }) => product.id === 'whimzees-toothbrush').aanbieding.maat, 'M')
})

test('een generieke Carnilove-feedtitel matcht niet zonder smaak in de EAN-tekst', () => {
  const { koppelingen } = koppelSnacksBetrouwbaar(snacks, [
    aanbieding('Carnilove - Crunchy Snack 200 gram')
  ])
  assert.equal(koppelingen.length, 0)
})

test('de snackparser leest hond-snacks en titels zonder merk-streepje', () => {
  const xml = `<products><product ID="1"><name>Bonzo - Funtastix</name><price currency="EUR">2.39</price><URL>https://winkel.test/?tt=1&amp;r=https%3A%2F%2Fwinkel.test%2Fbonzo</URL><properties><property name="EAN"><value>761287501929</value></property><property name="categoryPath"><value>hond-snacks</value></property></properties></product><product ID="2"><name>EDGARD&amp;COOPER BAR ADULT APPLE 30GR</name><price currency="EUR">1.99</price><URL>https://winkel.test/?tt=1&amp;r=https%3A%2F%2Fwinkel.test%2Fbar</URL><properties><property name="EAN"><value>5407009646744</value></property><property name="categoryPath"><value>hond</value></property></properties></product></products>`
  const rijen = parseTradeTrackerFeed(xml, { categorieen: ['hond-snacks', 'hond'] })
  assert.equal(rijen.length, 2)
  assert.equal(rijen[1].merk, '')
  assert.equal(rijen[1].titelZonderMerk, 'EDGARD&COOPER BAR ADULT APPLE 30GR')
})
