import test from 'node:test'
import assert from 'node:assert/strict'
import { maakFeedbackPayload, valideerFeedback } from '../../src/lib/feedback.js'

test('feedback vereist een beoordeling, resultaat of opmerking', () => {
  assert.equal(valideerFeedback({ rating: 0, resultsLogical: '', message: '' }), 'Kies een beoordeling of schrijf een opmerking.')
  assert.equal(valideerFeedback({ rating: 4, resultsLogical: '', message: '' }), '')
  assert.equal(valideerFeedback({ rating: 0, resultsLogical: 'ja', message: '' }), '')
  assert.equal(valideerFeedback({ rating: 0, resultsLogical: '', message: 'Duidelijker resultaten' }), '')
})

test('feedback valideert de score, het resultaat en het e-mailadres', () => {
  assert.match(valideerFeedback({ rating: 6, message: '' }), /tussen 1 en 5/)
  assert.match(valideerFeedback({ resultsLogical: 'misschien' }), /geldige uitkomst/)
  assert.match(valideerFeedback({ message: 'x'.repeat(1001) }), /1\.000/)
  assert.match(valideerFeedback({ message: 'iets', contact: 'geen-mail' }), /geldig e-mailadres/)
})

test('feedbackpayload wordt begrensd en schoongemaakt', () => {
  const payload = maakFeedbackPayload({
    page: '/hondenvoer-zonder-kip.html',
    url: 'https://voorbeeld.nl/?allergeen=chicken',
    rating: 4,
    resultsLogical: 'ja',
    message: '  De resultaten mogen wat hoger staan.  ',
    contact: '  test@example.com ',
    userAgent: 'x'.repeat(600)
  })
  assert.equal(payload.page, '/hondenvoer-zonder-kip.html')
  assert.equal(payload.rating, 4)
  assert.equal(payload.results_logical, 'ja')
  assert.equal(payload.message, 'De resultaten mogen wat hoger staan.')
  assert.equal(payload.contact, 'test@example.com')
  assert.equal(payload.user_agent.length, 500)
})

test('ongeldige feedbackwaarden worden niet opgeslagen', () => {
  const payload = maakFeedbackPayload({ rating: 9, resultsLogical: 'misschien', message: '', contact: '' })
  assert.equal(payload.rating, null)
  assert.equal(payload.results_logical, null)
  assert.equal(payload.message, null)
  assert.equal(payload.contact, null)
})
