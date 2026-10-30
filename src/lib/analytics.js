// Kleine wrapper rond Umami. Statistieken mogen de site nooit blokkeren of een
// fout veroorzaken; daarom vangen we alles af en sturen we alleen een event als
// het script beschikbaar is.
export function track(event, data) {
  if (typeof window === 'undefined') return
  try {
    window.umami?.track(event, data)
  } catch {
    // Bewust stil: een mislukte meting is nooit belangrijker dan de vergelijker.
  }
}
