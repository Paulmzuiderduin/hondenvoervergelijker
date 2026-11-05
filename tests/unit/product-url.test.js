import test from 'node:test'
import assert from 'node:assert/strict'
import { merkPad, productPad, slugify } from '../../src/lib/productUrl.js'

test('slugs maken stabiele Nederlandse paden', () => {
  assert.equal(slugify('Royal Canin & Co'), 'royal-canin-en-co')
  assert.equal(slugify('Müller’s “Senior”'), 'mullers-senior')
  assert.equal(merkPad('Edgard & Cooper'), '/merken/edgard-en-cooper.html')
})

test('productpad is uniek per product-id', () => {
  const eerste = productPad({ id: 'aaaaaaaa-1111-2222-3333-444444444444', brand: 'Acana', name: 'Senior Recipe' })
  const tweede = productPad({ id: 'bbbbbbbb-1111-2222-3333-444444444444', brand: 'Acana', name: 'Senior Recipe' })
  assert.equal(eerste, '/producten/acana/senior-recipe-aaaaaaaa.html')
  assert.notEqual(eerste, tweede)
  assert.match(eerste, /^\/producten\/[a-z0-9-]+\/[a-z0-9-]+\.html$/)
})

test('lege of ontbrekende productgegevens vallen terug op veilige paden', () => {
  assert.equal(productPad({}), '/producten/merk/product-product.html')
})
