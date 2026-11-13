import test from 'node:test'
import assert from 'node:assert/strict'
import { parseProductPagina } from '../../scripts/lib/product-page-parse.mjs'

test('leest een Alsa-pagina met samenstelling vóór analytische bestanddelen', () => {
  const html = `<html><body>
    <p>Een uitgebalanceerde samenstelling voor je hond.</p>
    <h3>Samenstelling</h3>
    <div>Aardappel 39%, hert 15%, bietenvezels, zalmolie 1,5%, mineralen.</div>
    <h3>Analytische bestanddelen</h3>
    <div>Eiwit 22,9%, vetgehalte 10,8%, ruwe as 10,8%, ruwe celstof 4,6%, calcium 1,4%, fosfor 1%.</div>
    <div>Dierlijke eiwitbron <a>Bekijk alle hert producten</a></div>
  </body></html>`
  const pagina = parseProductPagina(html)
  assert.match(pagina.ingredients, /Aardappel 39%/)
  assert.deepEqual(pagina.nutrition, {
    protein: 22.9,
    fat: 10.8,
    fiber: 4.6,
    ash: 10.8,
    calcium: 1.4,
    phosphorus: 1
  })
  assert.equal(pagina.dierlijkeEiwitbron, 'hert')
})

test('leest een UPD-pagina met analytische bestanddelen vóór samenstelling', () => {
  const html = `<html><body>
    <h3>Analytische bestanddelen</h3>
    <div>Eiwit 27.8% Vetgehalte 22.4% Anorganisch materiaal (ruwe as) 5.3% Voght 15% Ruwe celstof (vezel) 2.3% Metabole energie: 4,310 Kcal/kg</div>
    <h3>Samenstelling</h3>
    <div>zalm (57,4%), gedehydrateerde kokosnoot, glycerine, mineralen.</div>
  </body></html>`
  const pagina = parseProductPagina(html)
  assert.match(pagina.ingredients, /zalm \(57,4%\)/)
  assert.deepEqual(pagina.nutrition, {
    protein: 27.8,
    fat: 22.4,
    fiber: 2.3,
    ash: 5.3,
    moisture: 15,
    kcal: 431
  })
})
