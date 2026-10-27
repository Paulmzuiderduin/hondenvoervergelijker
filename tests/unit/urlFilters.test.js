import test from 'node:test'
import assert from 'node:assert/strict'
import { leesAllergenen, leesMerken, schrijfFilters } from '../../src/lib/urlFilters.js'

const merken = ['Acana', 'Orijen', 'Royal Canin']

test('allergenen worden één per parameter gelezen', () => {
  const params = new URLSearchParams('?allergeen=chicken&allergeen=beef&allergeen=chicken')
  assert.deepEqual(leesAllergenen(params), ['chicken', 'beef'])
  const hoofdletters = new URLSearchParams('?allergeen=Chicken&allergeen=onbekend')
  assert.deepEqual(leesAllergenen(hoofdletters), ['chicken'])
})
test('oude kommagescheiden allergenenlinks blijven werken', () => {
  assert.deepEqual(leesAllergenen(new URLSearchParams('?allergenen=chicken,beef')), ['chicken', 'beef'])
})

test('merken worden als include-lijst gelezen', () => {
  const { brands, mode } = leesMerken(new URLSearchParams('?merk=Orijen&merk=Acana'), merken)
  assert.deepEqual(brands, ['Acana', 'Orijen'])
  assert.equal(mode, 'include')
})
test('zonder en het oude nietmerk betekenen hetzelfde', () => {
  for (const zoek of ['?zonder=Orijen', '?nietmerk=Orijen']) {
    const { brands, mode } = leesMerken(new URLSearchParams(zoek), merken)
    assert.deepEqual(brands, ['Acana', 'Royal Canin'], zoek)
    assert.equal(mode, 'exclude', zoek)
  }
})
test('geenmerken en onbekende namen', () => {
  assert.deepEqual(leesMerken(new URLSearchParams('?geenmerken=1'), merken), { brands: [], mode: 'include' })
  assert.deepEqual(leesMerken(new URLSearchParams('?zonder=Onbekend'), merken), { brands: null, mode: 'include' })
  assert.deepEqual(leesMerken(new URLSearchParams(''), merken), { brands: null, mode: 'include' })
})

test('alle merken schrijft geen merkparameter', () => {
  const params = schrijfFilters(new URLSearchParams('?utm_source=nieuwsbrief'), { brands: null, allergenen: [], alleMerken: merken })
  assert.equal(params.toString(), 'utm_source=nieuwsbrief')
})
test('een include-selectie schrijft herhaalde merkparameters', () => {
  const params = schrijfFilters(new URLSearchParams(''), { brands: ['Orijen', 'Acana'], mode: 'include', allergenen: [], alleMerken: merken })
  assert.deepEqual(params.getAll('merk'), ['Orijen', 'Acana'])
  assert.deepEqual(params.getAll('zonder'), [])
})
test('niets gekozen schrijft geenmerken', () => {
  const params = schrijfFilters(new URLSearchParams(''), { brands: [], mode: 'include', allergenen: [], alleMerken: merken })
  assert.equal(params.get('geenmerken'), '1')
  assert.deepEqual(params.getAll('merk'), [])
})
test('een uitsluitlijst schrijft zonder in plaats van alle losse merken', () => {
  const params = schrijfFilters(new URLSearchParams(''), { brands: ['Acana', 'Royal Canin'], mode: 'exclude', allergenen: [], alleMerken: merken })
  assert.deepEqual(params.getAll('zonder'), ['Orijen'])
  assert.deepEqual(params.getAll('merk'), [])
})
test('allergenen worden herhaald en oude parameters verdwijnen', () => {
  const params = schrijfFilters(new URLSearchParams('?merk=Orijen&allergenen=chicken,beef&nietmerk=Acana'), {
    brands: ['Orijen'],
    mode: 'include',
    allergenen: ['chicken', 'beef'],
    alleMerken: merken
  })
  assert.deepEqual(params.getAll('merk'), ['Orijen'])
  assert.deepEqual(params.getAll('allergeen'), ['chicken', 'beef'])
  assert.equal(params.get('allergenen'), null)
  assert.equal(params.get('nietmerk'), null)
})

test('lezen en schrijven blijven in balans', () => {
  for (const zoek of ['?merk=Orijen&allergeen=chicken', '?zonder=Orijen&allergeen=chicken&allergeen=beef', '?geenmerken=1&allergeen=beef']) {
    const eerste = new URLSearchParams(zoek)
    const { brands, mode } = leesMerken(eerste, merken)
    const geschreven = schrijfFilters(new URLSearchParams(''), {
      brands,
      mode,
      allergenen: leesAllergenen(eerste),
      alleMerken: merken
    })
    const { brands: brands2, mode: mode2 } = leesMerken(geschreven, merken)
    assert.deepEqual(brands2, brands, zoek)
    assert.equal(mode2, mode, zoek)
    assert.deepEqual(leesAllergenen(geschreven), leesAllergenen(eerste), zoek)
  }
})
