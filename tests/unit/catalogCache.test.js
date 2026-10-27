import test from 'node:test'
import assert from 'node:assert/strict'
import { leesCatalogusCache, schrijfProductenCache, schrijfTermenCache } from '../../src/lib/catalogCache.js'

const opslag = new Map()
globalThis.window = {
  localStorage: {
    getItem: (sleutel) => opslag.get(sleutel) ?? null,
    setItem: (sleutel, waarde) => opslag.set(sleutel, waarde)
  },
  requestIdleCallback: (fn) => fn(),
  setTimeout: (fn) => fn()
}

function wisOpslag() {
  opslag.clear()
}

test('een lege opslag geeft geen catalogus', () => {
  wisOpslag()
  assert.deepEqual(leesCatalogusCache(), { products: null, terms: null })
})

test('producten en termen worden bewaard en teruggelezen', () => {
  wisOpslag()
  schrijfProductenCache([{ id: 1, brand: 'Orijen' }])
  schrijfTermenCache([{ term: 'kip', kind: 'bron', allergen_keys: ['chicken'] }])
  const cache = leesCatalogusCache()
  assert.deepEqual(cache.products, [{ id: 1, brand: 'Orijen' }])
  assert.deepEqual(cache.terms, [{ term: 'kip', kind: 'bron', allergen_keys: ['chicken'] }])
})

test('een oude of onbekende cache wordt genegeerd', () => {
  wisOpslag()
  schrijfProductenCache([{ id: 1 }])
  for (const [sleutel, waarde] of opslag) {
    const bewaard = JSON.parse(waarde)
    bewaard.opgeslagen = Date.now() - 7 * 60 * 60 * 1000
    opslag.set(sleutel, JSON.stringify(bewaard))
  }
  assert.equal(leesCatalogusCache().products, null)

  wisOpslag()
  schrijfProductenCache([{ id: 1 }])
  for (const [sleutel, waarde] of opslag) {
    const bewaard = JSON.parse(waarde)
    bewaard.versie = 'oud'
    opslag.set(sleutel, JSON.stringify(bewaard))
  }
  assert.equal(leesCatalogusCache().products, null)
})

test('kapotte of lege gegevens worden niet bewaard', () => {
  wisOpslag()
  schrijfProductenCache([])
  schrijfTermenCache([])
  assert.equal(opslag.size, 0)

  opslag.set('hondenvoervergelijker:producten:2026-10-27-1', 'geen json')
  assert.equal(leesCatalogusCache().products, null)
})
