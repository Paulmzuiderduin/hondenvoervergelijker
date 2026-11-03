export const FEEDBACK_RESULTS = ['ja', 'nee', 'twijfel']

export function valideerFeedback({ rating, resultsLogical, message, contact }) {
  const tekst = String(message ?? '').trim()
  if (!rating && !resultsLogical && !tekst) {
    return 'Kies een beoordeling of schrijf een opmerking.'
  }
  if (rating && (!Number.isInteger(rating) || rating < 1 || rating > 5)) {
    return 'Kies een beoordeling tussen 1 en 5.'
  }
  if (resultsLogical && !FEEDBACK_RESULTS.includes(resultsLogical)) {
    return 'Kies een geldige uitkomst bij de resultaten.'
  }
  if (tekst.length > 1000) {
    return 'De opmerking mag maximaal 1.000 tekens bevatten.'
  }
  const mail = String(contact ?? '').trim()
  if (mail && !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(mail)) {
    return 'Vul een geldig e-mailadres in of laat het veld leeg.'
  }
  return ''
}

export function maakFeedbackPayload({ page, url, rating, resultsLogical, message, contact, userAgent }) {
  const schoon = (waarde, max) => {
    const tekst = String(waarde ?? '').trim()
    return tekst ? tekst.slice(0, max) : null
  }
  return {
    page: (String(page ?? '').trim() || '/').slice(0, 500),
    url: schoon(url, 2000),
    rating: Number.isInteger(rating) && rating >= 1 && rating <= 5 ? rating : null,
    results_logical: FEEDBACK_RESULTS.includes(resultsLogical) ? resultsLogical : null,
    message: schoon(message, 1000),
    contact: schoon(contact, 200),
    user_agent: schoon(userAgent, 500)
  }
}
