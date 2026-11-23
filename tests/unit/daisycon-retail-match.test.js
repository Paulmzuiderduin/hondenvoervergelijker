import test from 'node:test'
import assert from 'node:assert/strict'
import {
  alleMaten,
  formaatMaat,
  koppelDaisyconRetail,
  koppelDaisyconSnacks,
  maatOpties,
  parseDaisyconRetailFeed,
  parseDaisyconSnackFeed
} from '../../scripts/lib/daisycon-retail-match.mjs'

const feed = (producten) => ({
  datafeed: {
    programs: [{
      program_info: { id: 1, name: 'Testwinkel', currency: 'EUR' },
      products: producten.map((product_info) => ({ product_info }))
    }]
  }
})

const product = (extra = {}) => ({
  id: 'p1',
  brand: 'Royal Canin',
  name: 'Renal Select',
  gtin: null,
  package_size: '2 / 10 kg',
  food_type: 'kibble',
  ...extra
})

const aanbieding = (extra = {}) => ({
  winkel: 'Petgamma.com',
  titel: 'Royal Canin Hondenvoer Droog Renal Select 10 kg',
  merk: 'Royal Canin',
  ean: '3182550842648',
  maat: '10 kg',
  maatGram: 10000,
  prijs: 70.99,
  url: 'https://voorbeeld.test/renalselect',
  categorie: 'Hond|Hondenvoer|Hondenvoer droog',
  ...extra
})

test('leest alleen hondenvoer en bewaart EAN, maat en prijs', () => {
  const resultaat = parseDaisyconRetailFeed(feed([
    { title: 'Royal Canin Renal Select 10 kg', brand: 'Royal Canin', ean: '3182550842648', size: '10 kg', price: '70.99', link: 'https://voorbeeld.test/1', category_path: 'Hond|Hondenvoer|Hondenvoer droog' },
    { title: 'Kattenvoer', brand: 'Gourmet', ean: '7613036142922', size: '12 x 85 gr', price: '10.45', link: 'https://voorbeeld.test/2', category_path: 'Kat|Kattenvoer|Kattenvoer nat' }
  ]), { winkel: 'Petgamma.com' })
  assert.equal(resultaat.length, 1)
  assert.equal(resultaat[0].ean, '3182550842648')
  assert.equal(resultaat[0].maat, '10 kg')
  assert.equal(resultaat[0].prijs, 70.99)
})

test('koppelt op exacte EAN', () => {
  const { koppelingen, exact, naamMaat } = koppelDaisyconRetail(
    [product({ gtin: '3182550842648' })],
    [aanbieding()]
  )
  assert.equal(koppelingen.length, 1)
  assert.equal(exact.length, 1)
  assert.equal(naamMaat.length, 0)
})

test('koppelt zonder catalogus-EAN op exacte merk, naam en maat', () => {
  const { koppelingen, naamMaat } = koppelDaisyconRetail(
    [product()],
    [aanbieding({ maat: '10 kg', maatGram: 10000 })]
  )
  assert.equal(koppelingen.length, 1)
  assert.equal(naamMaat.length, 1)
})

test('weigert een naam-match als de catalogus een andere EAN heeft', () => {
  const { koppelingen, zonderMatch } = koppelDaisyconRetail(
    [product({ gtin: '9999999999999' })],
    [aanbieding()]
  )
  assert.equal(koppelingen.length, 0)
  assert.equal(zonderMatch.length, 1)
})

test('weigert een verkeerde verpakkingsmaat', () => {
  const { koppelingen, zonderMatch } = koppelDaisyconRetail(
    [product()],
    [aanbieding({ maat: '4 kg', maatGram: 4000 })]
  )
  assert.equal(koppelingen.length, 0)
  assert.equal(zonderMatch.length, 1)
})

test('laat een link weg als één feedproduct bij twee catalogusproducten past', () => {
  const { koppelingen, dubbelzinnig } = koppelDaisyconRetail(
    [
      product({ id: 'p1', name: 'Renal Select', package_size: '10 kg' }),
      product({ id: 'p2', name: 'Renal Select', package_size: '10 kg' })
    ],
    [aanbieding()]
  )
  assert.equal(koppelingen.length, 0)
  assert.equal(dubbelzinnig.length, 1)
})

test('herkent Smolke als hetzelfde merk als Smølke', () => {
  const { koppelingen } = koppelDaisyconRetail(
    [product({ brand: 'Smølke', name: 'Hond Adult Maxi', package_size: '3 kg' })],
    [aanbieding({ merk: 'Smolke', titel: 'Smolke Hondenvoer Adult Maxi 3 kg', ean: '1234567890123', maat: '3 kg', maatGram: 3000 })]
  )
  assert.equal(koppelingen.length, 1)
})

test('leest meerdere maten en formatteert de maat', () => {
  assert.deepEqual(alleMaten('3 / 12,5 kg'), [3000, 12500])
  assert.deepEqual(alleMaten('2 kg, 3 x 2 kg, 7 kg, 12 kg'), [2000, 6000, 7000, 12000])
  assert.equal(formaatMaat(12500), '12,5 kg')
  assert.equal(formaatMaat(800), '800 g')
})

test('negeert generieke lijnwoorden zoals Dog en Recipe bij een exacte naam+maatmatch', () => {
  const { koppelingen } = koppelDaisyconRetail(
    [product({ brand: 'Acana', name: 'Adult Dog Recipe', package_size: '2 / 6 / 11,4 / 17 kg' })],
    [aanbieding({ merk: 'Acana', titel: 'Acana Adult hondenvoeding 11,4 kg', ean: '64992525118', maat: '11,4 kg', maatGram: 11400 })]
  )
  assert.equal(koppelingen.length, 1)
  assert.equal(koppelingen[0].methode, 'naam+maat')
})

test('leest snackmaten en behandelt een multipack als totaalgewicht', () => {
  assert.deepEqual(maatOpties('10 x 20 g'), [200])
  assert.deepEqual(maatOpties('50 g / 120 g'), [50, 120])
  assert.deepEqual(maatOpties('75 g (3 stuks)'), [75])
  assert.deepEqual(maatOpties('2 kg, 3 x 2 kg, 7 kg'), [2000, 6000, 7000])
})

test('leest alleen honden-snacks uit de feed', () => {
  const resultaat = parseDaisyconSnackFeed(feed([
    { title: '8in1 Meaty Treats Eend en Appel 50 gr', brand: '8in1', ean: '4048422146162', size: '', price: '3.49', link: 'https://voorbeeld.test/snack', category_path: 'Hond|Snacks|Hondenkoekjes & snoepjes' },
    { title: 'Kattenvoer', brand: 'Gourmet', ean: '7613036142922', size: '12 x 85 gr', price: '10.45', link: 'https://voorbeeld.test/kat', category_path: 'Kat|Kattenvoer|Kattenvoer nat' }
  ]), { winkel: 'Petgamma.com' })
  assert.equal(resultaat.length, 1)
  assert.equal(resultaat[0].maat, '50 g')
  assert.equal(resultaat[0].prijs, 3.49)
})

test('koppelt snacks op exacte merk, naam en maat', () => {
  const snacks = [{ id: '8in1-meaty-treats-eend-en-appel', brand: '8in1', name: 'Meaty Treats eend en appel', package_size: '50 g' }]
  const aanbiedingen = [{
    winkel: 'Petgamma.com',
    titel: '8in1 Meaty Treats Eend en Appel 50 gr',
    merk: '8in1',
    ean: '4048422146162',
    maat: '50 g',
    maatGram: 50,
    prijs: 3.49,
    url: 'https://voorbeeld.test/snack',
    categorie: 'Hond|Snacks|Hondenkoekjes & snoepjes'
  }]
  const { koppelingen } = koppelDaisyconSnacks(snacks, aanbiedingen)
  assert.equal(koppelingen.length, 1)
  assert.equal(koppelingen[0].product.id, '8in1-meaty-treats-eend-en-appel')
})

test('koppelt geen single snack aan een multipack', () => {
  const snacks = [{ id: 'vitakraft-beef-stick-school-rund', brand: 'Vitakraft', name: 'Beef Stick School Rund', package_size: '10 x 20 g' }]
  const aanbiedingen = [{
    winkel: 'Petgamma.com',
    titel: 'Vitakraft Beef Stick School Rund 20 gr',
    merk: 'Vitakraft',
    ean: '4008239234155',
    maat: '20 g',
    maatGram: 20,
    prijs: 2.49,
    url: 'https://voorbeeld.test/snack',
    categorie: 'Hond|Snacks|Trainers'
  }]
  const { koppelingen, zonderMatch } = koppelDaisyconSnacks(snacks, aanbiedingen)
  assert.equal(koppelingen.length, 0)
  assert.equal(zonderMatch.length, 1)
})
