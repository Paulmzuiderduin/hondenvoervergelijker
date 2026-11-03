import { useEffect, useRef, useState } from 'react'
import { supabase } from '../lib/supabase'
import { track } from '../lib/analytics'
import { maakFeedbackPayload, valideerFeedback } from '../lib/feedback'

const RATING_LABELS = ['Heel lastig', 'Lastig', 'Neutraal', 'Makkelijk', 'Heel makkelijk']

export default function FeedbackButton() {
  const [open, setOpen] = useState(false)
  const [rating, setRating] = useState(0)
  const [resultsLogical, setResultsLogical] = useState('')
  const [message, setMessage] = useState('')
  const [contact, setContact] = useState('')
  const [honeypot, setHoneypot] = useState('')
  const [sending, setSending] = useState(false)
  const [sent, setSent] = useState(false)
  const [error, setError] = useState('')
  const dialogRef = useRef(null)
  const headingRef = useRef(null)
  const triggerRef = useRef(null)
  const sendingRef = useRef(false)

  useEffect(() => {
    if (!open) return
    const vorigeOverflow = document.body.style.overflow
    document.body.style.overflow = 'hidden'
    const focus = window.requestAnimationFrame(() => headingRef.current?.focus())
    const opToets = (gebeurtenis) => {
      if (gebeurtenis.key === 'Escape') {
        setOpen(false)
        return
      }
      if (gebeurtenis.key !== 'Tab' || !dialogRef.current) return
      const focusbaar = [...dialogRef.current.querySelectorAll('button, a[href], input, textarea, [tabindex]:not([tabindex="-1"])')]
        .filter((el) => !el.disabled && el.tabIndex >= 0 && el.offsetParent !== null)
      if (!focusbaar.length) return
      const eerste = focusbaar[0]
      const laatste = focusbaar[focusbaar.length - 1]
      if (gebeurtenis.shiftKey && document.activeElement === eerste) {
        gebeurtenis.preventDefault()
        laatste.focus()
      } else if (!gebeurtenis.shiftKey && document.activeElement === laatste) {
        gebeurtenis.preventDefault()
        eerste.focus()
      }
    }
    document.addEventListener('keydown', opToets)
    return () => {
      window.cancelAnimationFrame(focus)
      document.removeEventListener('keydown', opToets)
      document.body.style.overflow = vorigeOverflow
      triggerRef.current?.focus?.()
    }
  }, [open])

  const openen = () => {
    setSent(false)
    setError('')
    setOpen(true)
    track('feedback-geopend')
  }

  const sluiten = () => {
    setOpen(false)
    setSending(false)
  }

  const versturen = async (gebeurtenis) => {
    gebeurtenis.preventDefault()
    if (sendingRef.current) return
    if (honeypot.trim()) {
      setSent(true)
      return
    }
    const fout = valideerFeedback({ rating, resultsLogical, message, contact })
    if (fout) {
      setError(fout)
      return
    }
    if (!supabase) {
      setError('Feedback versturen is nu niet beschikbaar. Mail naar hondenvoervergelijker@paulzuiderduin.com.')
      return
    }
    setError('')
    sendingRef.current = true
    setSending(true)
    try {
      const payload = maakFeedbackPayload({
        page: window.location.pathname,
        url: window.location.href,
        rating,
        resultsLogical,
        message,
        contact,
        userAgent: navigator.userAgent
      })
      const { error: insertFout } = await supabase.from('feedback').insert(payload)
      if (insertFout) throw insertFout
      setSent(true)
      setRating(0)
      setResultsLogical('')
      setMessage('')
      setContact('')
      const meting = {}
      if (payload.rating) meting.score = payload.rating
      if (payload.results_logical) meting.result = payload.results_logical
      track('feedback-verzonden', meting)
    } catch {
      setError('Versturen lukte niet. Probeer het later opnieuw of mail naar hondenvoervergelijker@paulzuiderduin.com.')
    } finally {
      sendingRef.current = false
      setSending(false)
    }
  }

  return <>
    <button type="button" className="feedback-button" onClick={openen} aria-haspopup="dialog" aria-label="Feedback geven over de website" ref={triggerRef}>
      <span aria-hidden="true">💬</span> Feedback
    </button>
    {open && <div className="feedback-overlay" role="presentation" onMouseDown={(gebeurtenis) => { if (gebeurtenis.target === gebeurtenis.currentTarget) sluiten() }}>
      <div className="feedback-dialog" role="dialog" aria-modal="true" aria-labelledby="feedback-titel" aria-describedby="feedback-uitleg" ref={dialogRef}>
        <div className="feedback-head">
          <div>
            <h2 id="feedback-titel" ref={headingRef} tabIndex={-1}>Help de vergelijker verbeteren</h2>
            <p id="feedback-uitleg">Drie korte vragen. Je kunt anoniem blijven.</p>
          </div>
          <button type="button" className="feedback-close" onClick={sluiten} aria-label="Feedback sluiten">×</button>
        </div>

        {sent ? <div className="feedback-success" role="status">
          <p><strong>Bedankt!</strong> Je feedback is ontvangen.</p>
          <button type="button" className="feedback-primary" onClick={sluiten}>Sluiten</button>
        </div> : <form onSubmit={versturen}>
          <fieldset className="feedback-fieldset">
            <legend>Hoe makkelijk vond je de site werken?</legend>
            <div className="feedback-rating">
              {RATING_LABELS.map((label, index) => {
                const waarde = index + 1
                return <button type="button" key={waarde} className={`feedback-rating-button${rating === waarde ? ' active' : ''}`} aria-pressed={rating === waarde} onClick={() => { setRating(waarde); setError('') }} title={label}>
                  <strong>{waarde}</strong><span>{label}</span>
                </button>
              })}
            </div>
            <p className="feedback-hint">1 = lastig · 5 = makkelijk</p>
          </fieldset>

          <fieldset className="feedback-fieldset">
            <legend>Waren de resultaten logisch?</legend>
            <div className="feedback-choices">
              {[['ja', 'Ja'], ['nee', 'Nee'], ['twijfel', 'Twijfel']].map(([key, label]) => <button type="button" key={key} className={`feedback-choice${resultsLogical === key ? ' active' : ''}`} aria-pressed={resultsLogical === key} onClick={() => { setResultsLogical(resultsLogical === key ? '' : key); setError('') }}>{label}</button>)}
            </div>
          </fieldset>

          <label className="feedback-label">Wat zou je verbeteren? <span>(optioneel)</span>
            <textarea value={message} maxLength={1000} rows={3} onChange={(gebeurtenis) => { setMessage(gebeurtenis.target.value); setError('') }} placeholder="Bijvoorbeeld: de resultaten mogen duidelijker in beeld, of een filter werkte niet zoals verwacht." />
          </label>

          <label className="feedback-label">E-mailadres <span>(optioneel, alleen als je een reactie wilt)</span>
            <input type="email" value={contact} maxLength={200} autoComplete="email" onChange={(gebeurtenis) => { setContact(gebeurtenis.target.value); setError('') }} placeholder="naam@voorbeeld.nl" />
          </label>

          <label className="feedback-honeypot" aria-hidden="true">Laat dit veld leeg<input tabIndex={-1} autoComplete="off" value={honeypot} onChange={(gebeurtenis) => setHoneypot(gebeurtenis.target.value)} /></label>

          <p className="feedback-privacy">Deel geen medische gegevens. Je e-mailadres is optioneel. Lees het <a href="/privacybeleid.html" target="_blank" rel="noreferrer">privacybeleid</a>.</p>
          {error && <p className="feedback-error" role="alert">{error}</p>}

          <div className="feedback-actions">
            <button type="button" className="feedback-secondary" onClick={sluiten}>Annuleren</button>
            <button type="submit" className="feedback-primary" disabled={sending}>{sending ? 'Versturen…' : 'Feedback versturen'}</button>
          </div>
        </form>}
      </div>
    </div>}
  </>
}
