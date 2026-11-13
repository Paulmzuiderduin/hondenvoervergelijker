import test from 'node:test'
import assert from 'node:assert/strict'
import { koppelDaisycon, parseDaisyconFeed } from '../../scripts/lib/daisycon-match.mjs'

const feed = `<datafeed>
  <product_info>
    <brand><![CDATA[Ultra Premium Direct]]></brand>
    <ean>3760026305554</ean>
    <category>Hond</category>
    <category_path><![CDATA[Dieren en dierbenodigdheden|Dierbenodigdheden|Hondenbenodigdheden|Hondenvoer]]></category_path>
    <link>https://glp8.net/c/?pid=abc</link>
    <price>71.9</price>
    <size>12.15</size>
    <title><![CDATA[Huid &amp; Vacht Care brokken - Zalm]]></title>
  </product_info>
  <product_info>
    <brand>Ultra Premium Direct</brand>
    <ean>3760026300000</ean>
    <category>Kat</category>
    <category_path>Dieren en dierbenodigdheden|Dierbenodigdheden|Kattenbenodigdheden|Kattenvoer</category_path>
    <link>https://glp8.net/c/?pid=kat</link>
    <price>10</price>
    <size>1.02</size>
    <title>Kattenvoer</title>
  </product_info>
</datafeed>`

test('Daisycon-parser leest alleen hondenvoer en decoreert CDATA', () => {
  const rijen = parseDaisyconFeed(feed)
  assert.equal(rijen.length, 1)
  assert.equal(rijen[0].merk, 'Ultra Premium Direct')
  assert.equal(rijen[0].titel, 'Huid & Vacht Care brokken - Zalm')
  assert.equal(rijen[0].ean, '3760026305554')
  assert.equal(rijen[0].prijs, 71.9)
  assert.equal(rijen[0].url, 'https://glp8.net/c/?pid=abc')
})

test('koppelt alleen op een exacte EAN', () => {
  const aanbiedingen = parseDaisyconFeed(feed)
  const producten = [
    { id: 'goed', brand: 'Ultra Premium Direct', name: 'Huid & Vacht Care', gtin: '3760026305554', package_size: '12 kg' },
    { id: 'fout', brand: 'Ultra Premium Direct', name: 'Ander product', gtin: '3760026309999', package_size: '12 kg' },
    { id: 'geen', brand: 'Ultra Premium Direct', name: 'Zonder EAN', gtin: null, package_size: '12 kg' }
  ]
  const { koppelingen, onzeker } = koppelDaisycon(producten, aanbiedingen)
  assert.equal(koppelingen.length, 1)
  assert.equal(koppelingen[0].product.id, 'goed')
  assert.equal(koppelingen[0].aanbieding.maat, '12 kg')
  assert.equal(onzeker.length, 1)
  assert.equal(onzeker[0].product.id, 'geen')
})

test('dezelfde trackinglink wordt niet aan twee producten gehangen', () => {
  const aanbiedingen = parseDaisyconFeed(feed)
  const producten = [
    { id: 'a', brand: 'Ultra Premium Direct', name: 'Een', gtin: '3760026305554', package_size: '12 kg' },
    { id: 'b', brand: 'Ultra Premium Direct', name: 'Twee', gtin: '3760026305554', package_size: '12 kg' }
  ]
  const { koppelingen, dubbelzinnig } = koppelDaisycon(producten, aanbiedingen)
  assert.equal(koppelingen.length, 0)
  assert.equal(dubbelzinnig.length, 2)
})
