import test from 'node:test'
import assert from 'node:assert/strict'
import { zoekLinksVoorSnack } from '../../src/lib/affiliateSearch.js'

test('maakt duidelijke affiliate-zoeklinks voor snacks', () => {
  const links = zoekLinksVoorSnack({ brand: '8in1', name: 'Delights Beef Bones' })
  assert.equal(links.length, 2)
  assert.deepEqual(links.map(({ winkel }) => winkel), ['Plein.nl', 'Petgamma.com'])
  assert.ok(links[0].url.startsWith('https://fr135.net/c/?'))
  const plein = decodeURIComponent(links[0].url)
  const petgamma = decodeURIComponent(links[1].url)
  assert.match(plein, /si=3366/)
  assert.match(plein, /li=1483612/)
  assert.match(plein, /wi=446454/)
  assert.match(plein, /zoeken\?search=8in1%20Delights%20Beef%20Bones/)
  assert.match(petgamma, /si=20686/)
  assert.match(petgamma, /li=1880978/)
  assert.match(petgamma, /nl\/l\?tn_q=8in1%20Delights%20Beef%20Bones/)
})

test('maakt geen zoeklink zonder merk en naam', () => {
  assert.deepEqual(zoekLinksVoorSnack({ brand: '', name: '' }), [])
})
