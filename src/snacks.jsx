import React, { useEffect, useMemo, useRef, useState } from 'react'
import { createRoot } from 'react-dom/client'
import { ALLERGEN_GROUPS, ALLERGEN_LABELS, ALLERGENS, allergenSearchTerms, markUncertainIngredients, setCustomTerms, sortAllergenKeys } from './lib/allergens'
import { merkPad } from './lib/productUrl'
import { SNACK_TERMS, SNACK_TYPES, SIZE_CLASSES, snackMatch, snackTypeLabel, sizeLabel, toProduct } from './lib/snacks'
import snackData from '../data/snacks.json'
import './styles.css'
import './snacks.css'

setCustomTerms(SNACK_TERMS)

const PRODUCTEN = (snackData.producten ?? []).map(toProduct)
const MERKEN = [...new Set(PRODUCTEN.map(({ brand }) => brand))].filter(Boolean).sort((a, b) => a.localeCompare(b, 'nl'))
const EIWITTEN = [...new Set(PRODUCTEN.map(({ protein_source }) => protein_source))].filter(Boolean).sort((a, b) => a.localeCompare(b, 'nl'))
const ALLE_TYPES = SNACK_TYPES.map(([key]) => key)
const ALLE_MATEN = SIZE_CLASSES.map(([key]) => key)
const ALLE_EIWITTEN = [...EIWITTEN]
const ALLE_MERKEN = [...MERKEN]
const PAGE_SIZE = 12
const LIJST_SCHEIDING = '|'
const GETAL0 = new Intl.NumberFormat('nl-NL', { maximumFractionDigits: 0 })
const KCAL = new Intl.NumberFormat('nl-NL', { maximumFractionDigits: 0 })

function normaliseerZoektekst(tekst = '') {
  return String(tekst)
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .replace(/[øØ]/g, 'o')
    .replace(/[æÆ]/g, 'ae')
    .toLowerCase()
    .trim()
}

function datumKort(waarde) {
  if (!waarde) return ''
  const datum = new Date(waarde)
  return Number.isNaN(datum.getTime()) ? '' : datum.toLocaleDateString('nl-NL', { day: 'numeric', month: 'short', year: 'numeric' })
}

function sourceDomain(url = '') {
  try { return new URL(url).hostname.replace(/^www\./, '') } catch { return '' }
}

function labelList(keys = [], max = 5) {
  const labels = keys.map((key) => ALLERGEN_LABELS[key] ?? key)
  return `${labels.slice(0, max).join(', ')}${labels.length > max ? ` en ${labels.length - max} meer` : ''}`
}

// De keuring noemt soms zowel "plantaardige" als "plantaardige bijproducten".
// Dat is één begrip; de langste vorm wint. Zo blijft de uitleg op de kaart
// leesbaar zonder informatie weg te laten.
function bronlozeWoorden(hidden = [], tekst = '') {
  const klein = normaliseerZoektekst(tekst)
  const positie = (woord) => klein.indexOf(normaliseerZoektekst(woord))
  const uniek = [...new Set(hidden.map(({ word }) => word))]
    .filter((woord, _, alle) => !alle.some((ander) => ander.length > woord.length && normaliseerZoektekst(ander).includes(normaliseerZoektekst(woord))))
    .sort((eerste, tweede) => positie(eerste) - positie(tweede))
  const uit = []
  for (const woord of uniek) {
    const vorige = uit[uit.length - 1]
    const paar = vorige ? `${normaliseerZoektekst(vorige)} ${normaliseerZoektekst(woord)}` : ''
    const paarMetEn = vorige ? `${normaliseerZoektekst(vorige)} en ${normaliseerZoektekst(woord)}` : ''
    if (vorige && (klein.includes(paar) || klein.includes(paarMetEn))) {
      uit[uit.length - 1] = `${vorige} ${klein.includes(paarMetEn) ? 'en ' : ''}${woord}`
    } else {
      uit.push(woord)
    }
  }
  return uit.map((woord) => {
    // "plantaardige" is een bijvoeglijk naamwoord; het volgende woord maakt
    // pas duidelijk waar het over gaat ("plantaardige vezels").
    if (normaliseerZoektekst(woord) === 'plantaardige') {
      const volgende = String(tekst).match(/\bplantaardige\s+([a-zà-ÿ]+)/i)?.[1]
      if (volgende) return `plantaardige ${volgende}`
    }
    return woord
  })
}

function leesLijst(params, key, toegestaan, standaard) {
  const ruw = params.get(key)
  if (!ruw) return [...standaard]
  const waarden = ruw.split(LIJST_SCHEIDING).map((waarde) => waarde.trim()).filter((waarde) => toegestaan.includes(waarde))
  return waarden.length ? waarden : [...standaard]
}

function leesFilters() {
  const params = new URLSearchParams(window.location.search)
  const allergenen = leesLijst(params, 'allergeen', ALLERGENS.map(({ key }) => key), [])
  return {
    allergens: sortAllergenKeys(allergenen),
    types: leesLijst(params, 'type', ALLE_TYPES, ALLE_TYPES),
    sizes: leesLijst(params, 'maat', ALLE_MATEN, ALLE_MATEN),
    proteins: leesLijst(params, 'eiwit', ALLE_EIWITTEN, ALLE_EIWITTEN),
    brands: leesLijst(params, 'merk', ALLE_MERKEN, ALLE_MERKEN),
    singleProtein: params.get('mono') === '1',
    grainFree: params.get('graanvrij') === '1',
    zoekterm: params.get('zoek') ?? ''
  }
}

function schrijfUrl(filters) {
  const url = new URL(window.location.href)
  const zet = (key, waarden, alle) => {
    if (!waarden.length || waarden.length === alle.length) url.searchParams.delete(key)
    else url.searchParams.set(key, waarden.join(LIJST_SCHEIDING))
  }
  zet('allergeen', filters.allergens, [])
  zet('type', filters.types, ALLE_TYPES)
  zet('maat', filters.sizes, ALLE_MATEN)
  zet('eiwit', filters.proteins, ALLE_EIWITTEN)
  zet('merk', filters.brands, ALLE_MERKEN)
  if (filters.singleProtein) url.searchParams.set('mono', '1')
  else url.searchParams.delete('mono')
  if (filters.grainFree) url.searchParams.set('graanvrij', '1')
  else url.searchParams.delete('graanvrij')
  if (filters.zoekterm) url.searchParams.set('zoek', filters.zoekterm)
  else url.searchParams.delete('zoek')
  const volgende = `${url.pathname}${url.search}${url.hash}`
  const huidig = `${window.location.pathname}${window.location.search}${window.location.hash}`
  if (volgende !== huidig) window.history.replaceState(null, '', volgende)
}

const Ingredients = React.memo(function Ingredients({ text }) {
  return <p>{markUncertainIngredients(text).map((segment, index) => segment.uncertain
    ? <mark className="uncertain-ingredient" key={index}>{segment.text}</mark>
    : segment.text)}</p>
})

function Pagination({ page, total, onChange }) {
  if (total <= 1) return null
  const kandidaten = new Set([1, total, page - 2, page - 1, page, page + 1, page + 2])
  const nummers = [...kandidaten].filter((nummer) => nummer >= 1 && nummer <= total).sort((a, b) => a - b)
  const onderdelen = []
  let vorige = 0
  for (const nummer of nummers) {
    if (nummer - vorige > 1) onderdelen.push({ soort: 'leegte', sleutel: `leegte-${vorige}-${nummer}` })
    onderdelen.push({ soort: 'pagina', nummer })
    vorige = nummer
  }
  return <nav className="pager" aria-label="Snackpagina's">
    <button type="button" onClick={() => onChange(page - 1)} disabled={page <= 1}>Vorige</button>
    <div className="pager-pages">
      {onderdelen.map((onderdeel) => onderdeel.soort === 'leegte'
        ? <span className="pager-ellipsis" key={onderdeel.sleutel} aria-hidden="true">…</span>
        : <button type="button" key={onderdeel.nummer} className={onderdeel.nummer === page ? 'active' : ''} aria-current={onderdeel.nummer === page ? 'page' : undefined} aria-label={`Pagina ${onderdeel.nummer}`} onClick={() => onChange(onderdeel.nummer)}>{onderdeel.nummer}</button>)}
    </div>
    <span className="pager-status">Pagina {page} van {total}</span>
    <button type="button" onClick={() => onChange(page + 1)} disabled={page >= total}>Volgende</button>
  </nav>
}

function SnackCard({ product, match, heeftKeuze, vergelijk, vergelijkVol, onVergelijk }) {
  const excluded = match.kind === 'excluded'
  const verdict = excluded ? 'Uitgesloten' : match.kind === 'check' ? 'Controleer etiket/fabrikant' : heeftKeuze ? 'Lijkt geschikt' : 'Etiket volledig'
  const verdictSymbool = excluded ? '✕' : match.kind === 'check' ? '?' : '✓'
  const version = product.recipe_versions?.[0]
  const presentStates = match.presentStates ?? []
  const unknownStates = match.unknownStates ?? []
  const absentStates = (match.states ?? []).filter((state) => state.state === 'absent')
  const verborgenWoorden = bronlozeWoorden(match.hidden ?? [], product.ingredients_text)
  const onbekendeWoorden = [...new Set(match.unknownWords ?? [])]
  const bronDatum = datumKort(product.last_checked_at)
  const reviewedOp = version?.reviewed_at ? datumKort(version.reviewed_at) : ''
  const importedOp = version?.imported_at ? datumKort(version.imported_at) : ''
  const foodTypeLabel = snackTypeLabel(product.snack_type)
  const packageSize = product.package_size && String(product.package_size).trim().toLowerCase() !== 'null' ? product.package_size : ''
  const source = product.source_url || ''
  const kcalRegel = product.kcal_per_100g != null
    ? `${KCAL.format(product.kcal_per_100g)} kcal per 100 g`
    : product.kcal_per_piece != null ? `${KCAL.format(product.kcal_per_piece)} kcal per stuk` : ''
  const checkReason = excluded || match.kind !== 'check' ? ''
    : !match.hasLabel ? 'er is nog geen ingrediëntenlijst ingevoerd.'
      : !match.reviewed && !match.imported ? 'deze samenstelling is nog niet tegen de bron gecontroleerd.'
        : match.stale ? 'de laatste controle is ouder dan zes maanden.'
          : match.sourceChanged ? 'de bronpagina is gewijzigd en wordt opnieuw gecontroleerd.'
            : verborgenWoorden.length && onbekendeWoorden.length ? `het etiket noemt geen bron voor ${verborgenWoorden.join(', ')} en de keuring kent deze woorden niet: ${onbekendeWoorden.join(', ')}. Daardoor kan elk allergeen erin zitten.`
              : verborgenWoorden.length ? `het etiket noemt geen bron voor ${verborgenWoorden.join(', ')}.`
                : match.traceStates.length ? `de verpakking noemt sporen van ${match.traceStates.map((key) => ALLERGEN_LABELS[key] ?? key).join(', ')}.`
                  : onbekendeWoorden.length ? `de keuring kent deze woorden niet: ${onbekendeWoorden.join(', ')}. Daardoor kan elk allergeen erin zitten.`
                    : 'het etiket noemt niet elke bron bij name.'
  return <article className={`product-card ${match.kind} snack-card`}>
    <div className="product-card-top">
      <div className="product-title-group">
        <a className="product-brand" href={merkPad(product.brand)} title={`Alle producten van ${product.brand}`}>{product.brand}</a>
        <h3 className="product-name">{product.name}</h3>
        <div className="product-meta">
          <span className="meta-pill">{foodTypeLabel}</span>
          {packageSize && <span className="meta-pill">{packageSize}</span>}
          <span className="meta-pill">{sizeLabel(product.size_class)}</span>
          {product.single_protein && <span className="meta-pill snack-pill-good" title="Volgens de ingrediëntenlijst is er één dierlijke eiwitbron; plantaardige eiwitten en oliën/vetten niet meegerekend.">Eén dierlijke eiwitbron</span>}
          {product.grain_free && <span className="meta-pill snack-pill-good" title="Het etiket noemt geen granen. Controleer altijd de verpakking.">Graanvrij volgens etiket</span>}
        </div>
      </div>
      <div className="product-card-actions">
        <span className={`verdict-badge ${match.kind}`} title={heeftKeuze ? 'Beoordeeld op de gekozen allergenen en het etiket.' : match.transparent ? 'Het etiket noemt elke bron bij name.' : 'Het etiket noemt niet elke bron bij name.'}><span aria-hidden="true">{verdictSymbool}</span> {verdict}</span>
        <label className={`compare-toggle${vergelijk ? ' active' : ''}`} title={vergelijk ? 'Verwijder uit de vergelijking' : vergelijkVol ? 'Maximaal 3 snacks' : 'Voeg toe aan de vergelijking'}>
          <input type="checkbox" checked={vergelijk} disabled={vergelijkVol && !vergelijk} onChange={() => onVergelijk(product.id)} />
          Vergelijk
        </label>
      </div>
    </div>
    <div className="product-card-info">
      <div className="product-verdict-block">
        <div className="product-verdict-heading">
          <span className="card-section-label">Ons oordeel:</span>
          <strong>{verdict}</strong>
          {match.reviewed && <span className="human-badge" title={`Samenstelling handmatig tegen de bron gecontroleerd${reviewedOp ? ` op ${reviewedOp}` : ''}.`}>Door een mens gecontroleerd{reviewedOp ? ` · ${reviewedOp}` : ''}</span>}
          {!match.reviewed && match.imported && <span className="snack-import-badge" title={match.importNote || 'Automatisch overgenomen; nog niet door een mens nagelopen.'}>Automatisch overgenomen{importedOp ? ` · ${importedOp}` : ''}</span>}
        </div>
        <div className="product-source-inline">
          <span>Controleer het etiket bij de fabrikant</span>
          {source.startsWith('http')
            ? <a className="manufacturer-link" href={source} target="_blank" rel="noreferrer" title="Officiële productpagina of gebruikte bron">Naar {product.brand} ↗</a>
            : <span className="manufacturer-link unavailable">Bron niet beschikbaar</span>}
        </div>
      </div>
      <div className="nutrition-summary">
        <span className="card-section-label">Dierlijke eiwitbron</span>
        <span className="nutrition-summary-values">{product.protein_source || 'Niet vermeld'}</span>
        <span className="nutrition-summary-values snack-kcal">{kcalRegel || 'Energie niet vermeld op de bronpagina'}</span>
      </div>
    </div>
    {presentStates.length > 0 && !excluded && <p className="verdict present"><strong>Staat in de lijst:</strong> {presentStates.map((state) => `${ALLERGEN_LABELS[state.key]}${state.members.some((member) => member !== state.key) ? ` via ${labelList(state.members.filter((member) => member !== state.key))}` : ''}`).join(', ')}</p>}
    {unknownStates.length > 0 && <p className="verdict unknown"><strong>Kan erin zitten:</strong> {labelList(unknownStates.map((state) => state.key), 100)} — het etiket noemt geen bron voor {onbekendeWoorden.length ? onbekendeWoorden.slice(0, 5).join(', ') : 'een ingrediënt'}{onbekendeWoorden.length > 5 ? ` en ${onbekendeWoorden.length - 5} meer` : ''}</p>}
    {heeftKeuze && absentStates.length > 0 && <p className="verdict absent"><strong>Nergens genoemd:</strong> {labelList(absentStates.map((state) => state.key), 6)}</p>}
    {match.traceStates.length > 0 && <p className="verdict unknown snack-trace"><strong>Sporen mogelijk:</strong> {match.traceStates.map((key) => ALLERGEN_LABELS[key] ?? key).join(', ')}. De verpakking noemt dit als sporen, niet als ingrediënt.</p>}
    {excluded && <p className="reason excluded">Uitgesloten vanwege: {presentStates.map((state) => ALLERGEN_LABELS[state.key]).join(' · ')}</p>}
    {checkReason && <p className="reason">Controleer: {checkReason}</p>}
    {product.trace_text && !match.traceStates.length && <p className="snack-trace-note"><small>Sporenmelding op de verpakking: {product.trace_text}</small></p>}
    <details className="ingredients">
      <summary>Ingrediëntenlijst bekijken</summary>
      <Ingredients text={product.ingredients_text} />
      {product.source_note && <p className="import-note"><small>{product.source_note}</small></p>}
      {match.importNote && match.importNote !== product.source_note && <p className="import-note"><small>{match.importNote}</small></p>}
    </details>
    <p className="snack-source"><small>Bron: {source
      ? <a href={source} target="_blank" rel="noreferrer">{sourceDomain(source) || 'open bron'} ↗</a>
      : 'niet vermeld'} · gecontroleerd op {bronDatum || 'onbekend'}{match.stale ? ' · controle nodig' : ''} · sporen: {product.trace_text ? 'apart vermeld' : 'niet vermeld op de bronpagina'}</small></p>
  </article>
}

function AllergenChooser({ gekozen, zoekterm, onZoek, onWissel, onWis, suitable = 0, check = 0, excluded = 0 }) {
  const groepen = useMemo(() => {
    const zoek = normaliseerZoektekst(zoekterm)
    return ALLERGEN_GROUPS.map((groep) => ({
      ...groep,
      allergens: groep.allergens.filter(({ key, label }) => !zoek || normaliseerZoektekst([label, ...allergenSearchTerms(key, label)].join(' ')).includes(zoek))
    })).filter((groep) => groep.allergens.length)
  }, [zoekterm])
  return <section id="vergelijken" className="allergen-panel">
    <div className="allergen-panel-header">
      <div>
        <p className="panel-step">Stap 1 · Kies wat je wilt vermijden</p>
        <h2>Allergieën en intoleranties</h2>
        <p><small>Vink aan wat je wilt uitsluiten. De keuring kijkt naar de ingrediëntenlijst en naar sporenmeldingen.</small></p>
      </div>
      <div className="allergen-panel-actions">
        <a className="jump-to-results" href="#resultaten">Bekijk snacks ↓</a>
        {gekozen.length > 0 && <button type="button" className="clear-allergens" onClick={onWis}>Wis selectie ({gekozen.length})</button>}
      </div>
    </div>
    {gekozen.length > 0 && <div className="result-preview" aria-live="polite">
      <span className="result-preview-label">Resultaat van je keuze:</span>
      <span className="summary-pill suitable" title="Lijkt geschikt op basis van het etiket."><span aria-hidden="true">✓</span> Lijkt geschikt: {suitable}</span>
      <span className="summary-pill check" title="Controleer het etiket of de fabrikant."><span aria-hidden="true">?</span> Controleer: {check}</span>
      <span className="summary-pill excluded" title="Bevat minstens één gekozen allergeen."><span aria-hidden="true">✕</span> Uitgesloten: {excluded}</span>
    </div>}
    {gekozen.length > 0 && <div className="selected-allergens" aria-label="Gekozen allergenen">
      <span className="selected-label">Je vermijdt nu:</span>
      {gekozen.map((key) => <span className="allergen-chip static" key={key}>{ALLERGEN_LABELS[key] ?? key}</span>)}
    </div>}
    <label className="brand-search-label allergen-search-label">Zoek allergeen<input type="search" value={zoekterm} onChange={(event) => onZoek(event.target.value)} placeholder="Bijv. kip, rund, rijst, zalm of erwten" /></label>
    {groepen.length ? groepen.map((groep, index) => {
      const gekozenInGroep = groep.allergens.filter(({ key }) => gekozen.includes(key)).length
      return <details className="allergen-group" key={groep.key} open={zoekterm.trim() ? true : index === 0 ? true : undefined}>
        <summary><span>{groep.label}</span> <span className={gekozenInGroep ? 'group-count active' : 'group-count'}>{gekozenInGroep ? `${gekozenInGroep} gekozen` : `${groep.allergens.length} ${groep.allergens.length === 1 ? 'optie' : 'opties'}`}</span></summary>
        <div className="choices">{groep.allergens.map(({ key, label }) => <label className={`inline${label.length > 14 ? ' allergen-wide' : ''}`} key={key}><input type="checkbox" checked={gekozen.includes(key)} onChange={(event) => onWissel(key, event.target.checked)} />{label}</label>)}</div>
      </details>
    }) : <p><small>Geen allergeen gevonden voor “{zoekterm}”.</small></p>}
  </section>
}

function CompareDialog({ producten, allergenen = [], onClose }) {
  const sluitRef = useRef(null)
  const panelRef = useRef(null)
  useEffect(() => {
    sluitRef.current?.focus()
    const vorigeOverflow = document.body.style.overflow
    document.body.style.overflow = 'hidden'
    const onKey = (event) => {
      if (event.key === 'Escape') return onClose()
      if (event.key !== 'Tab' || !panelRef.current) return
      const focusables = [...panelRef.current.querySelectorAll('button:not(:disabled), a[href], input:not(:disabled), select:not(:disabled), textarea:not(:disabled), [tabindex]:not([tabindex="-1"])')]
      if (!focusables.length) return
      const eerste = focusables[0]
      const laatste = focusables[focusables.length - 1]
      if (event.shiftKey && document.activeElement === eerste) { event.preventDefault(); laatste.focus() }
      else if (!event.shiftKey && document.activeElement === laatste) { event.preventDefault(); eerste.focus() }
    }
    document.addEventListener('keydown', onKey)
    return () => {
      document.removeEventListener('keydown', onKey)
      document.body.style.overflow = vorigeOverflow
    }
  }, [onClose])
  const matchVoor = (product) => snackMatch(product, allergenen)
  const oordeelLabel = (match) => allergenen.length
    ? match.kind === 'excluded' ? 'Uitgesloten' : match.kind === 'check' ? 'Controleer' : 'Lijkt geschikt'
    : match.transparent ? 'Etiket volledig' : 'Controleer etiket'
  const oordeelSymbool = (match) => allergenen.length
    ? match.kind === 'excluded' ? '✕' : match.kind === 'check' ? '?' : '✓'
    : match.transparent ? '✓' : '?'
  const rijen = [
    ['Type', (product) => snackTypeLabel(product.snack_type)],
    ['Formaat', (product) => sizeLabel(product.size_class)],
    ['Verpakking', (product) => product.package_size || '—'],
    ['Dierlijke eiwitbron', (product) => product.protein_source || '—'],
    ['Eén dierlijke eiwitbron', (product) => product.single_protein ? 'Ja' : 'Nee'],
    ['Graanvrij volgens etiket', (product) => product.grain_free ? 'Ja' : 'Nee'],
    ['Energie per 100 g', (product) => product.kcal_per_100g != null ? `${KCAL.format(product.kcal_per_100g)} kcal` : '—'],
    ['Energie per stuk', (product) => product.kcal_per_piece != null ? `${KCAL.format(product.kcal_per_piece)} kcal` : '—']
  ]
  return <div className="compare-overlay" role="presentation" onMouseDown={(event) => { if (event.target === event.currentTarget) onClose() }}>
    <div ref={panelRef} className="compare-panel" role="dialog" aria-modal="true" aria-labelledby="compare-title">
      <div className="compare-head">
        <h2 id="compare-title">Snacks vergelijken</h2>
        <button ref={sluitRef} type="button" className="compare-close" onClick={onClose} aria-label="Sluit vergelijking">×</button>
      </div>
      <p className="compare-swipe">Veeg horizontaal om alle snacks te zien.</p>
      <p className="compare-note compare-allergen-note">{allergenen.length
        ? `Allergeenoordeel op basis van: ${allergenen.map((key) => ALLERGEN_LABELS[key] ?? key).join(', ')}.`
        : 'Kies allergenen in de vergelijker om per snack het allergenoordeel te zien.'}</p>
      <div className="compare-scroll">
        <table className="compare-table">
          <thead><tr><th scope="col">Snack</th>{producten.map((product) => <th key={product.id} scope="col"><span className="compare-product-name">{product.brand}</span>{product.name}<small>{snackTypeLabel(product.snack_type)}{product.package_size ? ` · ${product.package_size}` : ''}</small></th>)}</tr></thead>
          <tbody>
            <tr className="compare-verdict-row">
              <th scope="row">Allergeenoordeel</th>
              {producten.map((product) => {
                const match = matchVoor(product)
                const details = []
                if (allergenen.length) {
                  if (match.presentStates.length) details.push(`Noemt: ${match.presentStates.map((state) => ALLERGEN_LABELS[state.key]).join(', ')}`)
                  if (match.unknownStates.length) details.push(`Kan erin zitten: ${match.unknownStates.map((state) => ALLERGEN_LABELS[state.key]).join(', ')}`)
                  if (match.traceStates.length) details.push(`Sporen mogelijk: ${match.traceStates.map((key) => ALLERGEN_LABELS[key] ?? key).join(', ')}`)
                  const absent = match.states.filter((state) => state.state === 'absent').length
                  if (absent) details.push(`Nergens genoemd: ${absent} van ${allergenen.length}`)
                } else {
                  details.push(match.transparent ? 'Geen onbenoemde bronnen in de lijst.' : 'De lijst noemt niet elke bron bij name.')
                }
                if (!match.hasLabel) details.push('Geen ingrediëntenlijst beschikbaar.')
                if (match.stale) details.push('Laatste broncontrole is ouder dan zes maanden.')
                if (match.sourceChanged) details.push('De bronpagina is gewijzigd; controle loopt.')
                return <td key={product.id} className="compare-verdict">
                  <span className={`verdict-badge ${match.kind}`}><span aria-hidden="true">{oordeelSymbool(match)}</span> {oordeelLabel(match)}</span>
                  {details.map((tekst, index) => <small key={index}>{tekst}</small>)}
                </td>
              })}
            </tr>
            {rijen.map(([label, waarde]) => <tr key={label}><th scope="row">{label}</th>{producten.map((product) => <td key={product.id}>{waarde(product)}</td>)}</tr>)}
            <tr><th scope="row">Sporenmelding</th>{producten.map((product) => <td key={product.id}>{product.trace_text || 'Niet vermeld'}</td>)}</tr>
          </tbody>
        </table>
      </div>
      <p className="compare-note">Snacks zijn aanvullend voer, geen complete maaltijd. Controleer voor aankoop altijd de verpakking.</p>
    </div>
  </div>
}

function App() {
  const [filters, setFilters] = useState(leesFilters)
  const [page, setPage] = useState(1)
  const [filtersOpen, setFiltersOpen] = useState(false)
  const [allergenSearch, setAllergenSearch] = useState('')
  const [compareIds, setCompareIds] = useState([])
  const [compareOpen, setCompareOpen] = useState(false)

  useEffect(() => { schrijfUrl(filters) }, [filters])
  useEffect(() => { setPage(1) }, [filters])

  const update = (patch) => setFilters((oud) => ({ ...oud, ...patch }))
  const wisselFilter = (key, waarde, aan) => setFilters((oud) => ({
    ...oud,
    [key]: aan ? [...new Set([...oud[key], waarde])] : oud[key].filter((item) => item !== waarde)
  }))
  const wisselAllergeen = (key, aan) => setFilters((oud) => ({
    ...oud,
    allergens: aan ? sortAllergenKeys([...oud.allergens, key]) : oud.allergens.filter((item) => item !== key)
  }))

  const resultaten = useMemo(() => {
    const zoek = normaliseerZoektekst(filters.zoekterm)
    return PRODUCTEN
      .filter((product) => filters.types.includes(product.snack_type))
      .filter((product) => filters.sizes.includes(product.size_class))
      .filter((product) => filters.proteins.includes(product.protein_source))
      .filter((product) => filters.brands.includes(product.brand))
      .filter((product) => !filters.singleProtein || product.single_protein)
      .filter((product) => !filters.grainFree || product.grain_free)
      .filter((product) => !zoek || normaliseerZoektekst(`${product.brand} ${product.name} ${product.protein_source}`).includes(zoek))
      .map((product) => ({ product, match: snackMatch(product, filters.allergens) }))
      .sort((eerste, tweede) => {
        const orde = { suitable: 0, check: 1, excluded: 2 }
        return (orde[eerste.match.kind] ?? 9) - (orde[tweede.match.kind] ?? 9)
          || eerste.product.brand.localeCompare(tweede.product.brand, 'nl')
          || eerste.product.name.localeCompare(tweede.product.name, 'nl')
      })
  }, [filters])

  const suitable = resultaten.filter(({ match }) => match.kind === 'suitable')
  const check = resultaten.filter(({ match }) => match.kind === 'check')
  const excluded = resultaten.filter(({ match }) => match.kind === 'excluded')
  const aantalPaginas = Math.max(1, Math.ceil(resultaten.length / PAGE_SIZE))
  const veiligePagina = Math.min(page, aantalPaginas)
  const zichtbareProducten = resultaten.slice((veiligePagina - 1) * PAGE_SIZE, veiligePagina * PAGE_SIZE)
  const heeftKeuze = filters.allergens.length > 0
  const actieveFilterCount = (filters.allergens.length ? 1 : 0)
    + (filters.brands.length !== ALLE_MERKEN.length ? 1 : 0)
    + (filters.types.length !== ALLE_TYPES.length ? 1 : 0)
    + (filters.sizes.length !== ALLE_MATEN.length ? 1 : 0)
    + (filters.proteins.length !== ALLE_EIWITTEN.length ? 1 : 0)
    + (filters.singleProtein ? 1 : 0)
    + (filters.grainFree ? 1 : 0)
    + (filters.zoekterm ? 1 : 0)
  const gekozenTypeLabels = SNACK_TYPES.filter(([key]) => filters.types.includes(key)).map(([, label]) => label).join(', ')
  const gekozenMaatLabels = SIZE_CLASSES.filter(([key]) => filters.sizes.includes(key)).map(([, label]) => label).join(', ')
  const gekozenEiwitLabels = filters.proteins.join(', ')

  const wisAllergenen = () => update({ allergens: [] })
  const wisFilterkolom = () => setFilters((oud) => ({
    ...oud,
    types: [...ALLE_TYPES],
    sizes: [...ALLE_MATEN],
    proteins: [...ALLE_EIWITTEN],
    brands: [...ALLE_MERKEN],
    singleProtein: false,
    grainFree: false,
    zoekterm: ''
  }))
  const wisAlles = () => setFilters({
    allergens: [],
    types: [...ALLE_TYPES],
    sizes: [...ALLE_MATEN],
    proteins: [...ALLE_EIWITTEN],
    brands: [...ALLE_MERKEN],
    singleProtein: false,
    grainFree: false,
    zoekterm: ''
  })
  const wisMerkfilter = () => update({ brands: [...ALLE_MERKEN] })
  const wisTypefilter = () => update({ types: [...ALLE_TYPES] })
  const wisMaatfilter = () => update({ sizes: [...ALLE_MATEN] })
  const wisEiwitfilter = () => update({ proteins: [...ALLE_EIWITTEN] })
  const wisselVergelijk = (id) => setCompareIds((oud) => oud.includes(id) ? oud.filter((item) => item !== id) : oud.length >= 3 ? oud : [...oud, id])
  const wisVergelijk = () => setCompareIds([])
  const vergelijkProducten = compareIds.map((id) => PRODUCTEN.find((product) => product.id === id)).filter(Boolean)
  const openVergelijk = () => { if (vergelijkProducten.length >= 2) setCompareOpen(true) }

  return <main>
    <header className="site-header">
      <div className="site-header-row">
        <div className="site-brand">
          <h1 className="site-brand-title"><a href="/"><img src="/logo-hondenvoervergelijker.png" alt="Hondenvoervergelijker" width="277" height="58" className="site-logo-full" /></a></h1>
          <span className="snack-section-label">Hondensnacks</span>
        </div>
        <nav className="site-nav" aria-label="Snelmenu">
          <a href="/" title="Hondenvoervergelijker"><span className="nav-lang">Hondenvoer</span><span className="nav-kort">Voer</span></a>
          <a href="/hondensnacks/" title="Hondensnacksvergelijker"><span className="nav-lang">Hondensnacks</span><span className="nav-kort">Snacks</span></a>
          <a href="/blog/" title="Blog"><span className="nav-lang">Blog</span><span className="nav-kort">Blog</span></a>
          <a href="/hoe-wij-vergelijken.html" title="Hoe wij vergelijken"><span className="nav-lang">Hoe het werkt</span><span className="nav-kort">Uitleg</span></a>
        </nav>
      </div>
      <details className="site-note site-note-compact">
        <summary>Belangrijk: geen medisch advies</summary>
        <p>Deze pagina vergelijkt uitsluitend overgenomen etiketinformatie van hondensnacks. De resultaten zijn geen medisch advies en bieden geen garantie. Controleer voor aankoop altijd de verpakking en overleg bij jeuk, huidklachten of een vermoede allergie met een dierenarts.</p>
      </details>
    </header>

    <section className="hero-banner snack-hero" aria-label="Overzicht">
      <div className="hero-text">
        <p className="hero-kicker">Hondensnacks · eerste selectie</p>
        <h2>Vind snacks die passen bij de allergie van jouw hond</h2>
        <p>Ook in snacks zitten bronnen die het etiket niet altijd bij name noemt. Deze vergelijker laat zien welke snacks <strong>lijken te passen</strong>, welke je moet <strong>controleren</strong> en welke <strong>uitgesloten</strong> zijn. We kijken naar ingrediënten, dierlijke eiwitbronnen en sporenmeldingen.</p>
        <p className="hero-meta"><strong>{PRODUCTEN.length}</strong> snacks · <strong>{MERKEN.length}</strong> merken · <strong>{ALLERGENS.length}</strong> allergenen &amp; bronnen</p>
        <p className="hero-positioning">Snacks zijn aanvullend voer. Een snack met één dierlijke eiwitbron is niet automatisch geschikt voor elke hond met een allergie.</p>
        <p className="hero-links"><a href="#vergelijken">Begin met allergenen</a> · <a href="/">Naar de voervergelijker</a> · <a href="#uitleg">Hoe wij kijken</a></p>
      </div>
    </section>

    <div className="layout">
      <AllergenChooser gekozen={filters.allergens} zoekterm={allergenSearch} onZoek={setAllergenSearch} onWissel={wisselAllergeen} onWis={wisAllergenen} suitable={suitable.length} check={check.length} excluded={excluded.length} />
      <aside id="filters" className={`filters${filtersOpen ? ' open' : ''}`} aria-label="Filters">
        <button type="button" className="filters-toggle" aria-expanded={filtersOpen} aria-controls="filters-body" onClick={() => setFiltersOpen(!filtersOpen)}>
          <span>Filters{actieveFilterCount ? ` (${actieveFilterCount} actief)` : ''}</span>
        </button>
        <div id="filters-body" className="filters-body">
          <div className="filters-head">
            <h2>Filters</h2>
            <span className="filters-count" aria-live="polite" aria-atomic="true">{GETAL0.format(resultaten.length)} snacks</span>
            {actieveFilterCount > 0 && <button type="button" className="filters-reset" onClick={wisFilterkolom} title="Alleen de filters in deze kolom wissen; je allergenenkeuze blijft staan.">Wissen</button>}
          </div>
          <label className="product-search">Zoek snack<input type="search" maxLength={80} value={filters.zoekterm} onChange={(event) => update({ zoekterm: event.target.value })} placeholder="Bijv. eend, lam of crunchy" /></label>
          <div className="filter-block">
            <h3>Soort snack</h3>
            <div className="choices food-type-choices">{SNACK_TYPES.map(([key, label]) => <label className={`inline type-chip${filters.types.includes(key) ? ' active' : ''}`} key={key}><input type="checkbox" checked={filters.types.includes(key)} onChange={(event) => wisselFilter('types', key, event.target.checked)} />{label}</label>)}</div>
          </div>
          <div className="filter-block trait-filter">
            <div className="filter-heading nutrition-filter-heading"><span>Formaat</span><span className="filter-summary">volgens product</span></div>
            <div className="trait-chips">{SIZE_CLASSES.map(([key, label]) => <button type="button" key={key} className={`trait-chip${filters.sizes.includes(key) ? ' active' : ''}`} aria-pressed={filters.sizes.includes(key)} onClick={() => wisselFilter('sizes', key, !filters.sizes.includes(key))}>{label}</button>)}</div>
          </div>
          <div className="filter-block">
            <h3>Dierlijke eiwitbron</h3>
            <div className="choices">{EIWITTEN.map((eiwit) => <label className="inline" key={eiwit}><input type="checkbox" checked={filters.proteins.includes(eiwit)} onChange={(event) => wisselFilter('proteins', eiwit, event.target.checked)} />{eiwit}</label>)}</div>
          </div>
          <div className="filter-block snack-toggle-block">
            <h3>Extra eisen</h3>
            <label className="inline snack-toggle"><input type="checkbox" checked={filters.singleProtein} onChange={(event) => update({ singleProtein: event.target.checked })} />Alleen één dierlijke eiwitbron</label>
            <label className="inline snack-toggle"><input type="checkbox" checked={filters.grainFree} onChange={(event) => update({ grainFree: event.target.checked })} />Alleen graanvrij volgens etiket</label>
          </div>
          <details className="filter-block brand-filter" open={filters.brands.length !== ALLE_MERKEN.length || undefined}>
            <summary className="filter-heading"><span>Merken</span><span className="filter-summary">{filters.brands.length === ALLE_MERKEN.length ? `Alle ${ALLE_MERKEN.length} merken doen mee` : `${filters.brands.length} van ${ALLE_MERKEN.length} merken geselecteerd`}</span></summary>
            <div className="filter-actions">
              <button type="button" className={filters.brands.length === ALLE_MERKEN.length ? 'active' : ''} aria-pressed={filters.brands.length === ALLE_MERKEN.length} onClick={wisMerkfilter}>Alles</button>
              <button type="button" className={filters.brands.length === 0 ? 'active' : ''} aria-pressed={filters.brands.length === 0} onClick={() => update({ brands: [] })}>Niets</button>
            </div>
            <div className="brand-list">{MERKEN.map((merk) => <label className="brand-row" key={merk}><span><input type="checkbox" checked={filters.brands.includes(merk)} onChange={(event) => wisselFilter('brands', merk, event.target.checked)} /> {merk}</span><span className="brand-count">{PRODUCTEN.filter((product) => product.brand === merk).length}</span></label>)}</div>
          </details>
          <a className="filter-jump" href="#resultaten">Bekijk {GETAL0.format(resultaten.length)} snacks ↓</a>
        </div>
      </aside>
      <div className="content">
        <details className="legend">
          <summary><mark className="uncertain-ingredient">Rood gemarkeerd</mark> = de bron wordt niet genoemd</summary>
          <p>Het etiket noemt de specifieke dier- of plantbron niet (bijv. “dierlijke bijproducten” of “granen”). {heeftKeuze ? 'Het oordeel geldt per gekozen allergeen: een snack staat alleen op “Controleer” als zo’n niet-gespecificeerd ingrediënt jouw gekozen allergeen kan bevatten.' : 'Kies hierboven één of meer allergenen om direct te filteren op snacks die geschikt lijken.'}</p>
          <p><strong>Sporen:</strong> een melding als “kan sporen van kip bevatten” is geen ingrediënt, maar ook geen bewijs dat de snack kipvrij is. Zo’n snack blijft op “Controleer” staan.</p>
        </details>
        {resultaten.length === 0 ? <section id="resultaten"><h2>Geen snacks</h2><p>Pas je merk-, type- of formaatfilter aan. {heeftKeuze ? 'Of wis je allergenenkeuze.' : ''}</p><div className="no-suitable-actions"><button type="button" onClick={wisAlles}>Alle filters wissen</button></div></section> : (
          <section id="resultaten">
            {vergelijkProducten.length > 0 && <div className="compare-bar" aria-label="Snacks vergelijken">
              <span className="compare-bar-label">{vergelijkProducten.length}/3 geselecteerd</span>
              <div className="compare-bar-chips">{vergelijkProducten.map((product) => <button type="button" className="compare-chip" key={product.id} onClick={() => wisselVergelijk(product.id)} title="Verwijder uit de vergelijking">{product.brand} {product.name} <span aria-hidden="true">×</span></button>)}</div>
              <button type="button" className="compare-open" disabled={vergelijkProducten.length < 2} onClick={openVergelijk} title={vergelijkProducten.length < 2 ? 'Kies minstens twee snacks' : 'Open de vergelijking'}>Vergelijk</button>
              <button type="button" className="link" onClick={wisVergelijk}>Wissen</button>
            </div>}
            <div className="results-header">
              <h2>Snacks ({GETAL0.format(resultaten.length)})</h2>
              <p className="result-summary">
                <span className="summary-pill suitable" title={heeftKeuze ? 'Lijkt geschikt op basis van de gekozen allergenen en het etiket.' : 'Het etiket noemt elke bron bij name.'}><span aria-hidden="true">✓</span> {heeftKeuze ? 'Lijkt geschikt' : 'Etiket volledig'}: {suitable.length}</span>
                <span className="summary-pill check" title={heeftKeuze ? 'Controleer het etiket of de fabrikant.' : 'Het etiket noemt niet elke bron of bevat een woord dat de keuring niet kent.'}><span aria-hidden="true">?</span> {heeftKeuze ? 'Controleer' : 'Etiket controle'}: {check.length}</span>
                {heeftKeuze && <span className="summary-pill excluded"><span aria-hidden="true">✕</span> Uitgesloten: {excluded.length}</span>}
              </p>
            </div>
            {actieveFilterCount > 0 && <div className="active-filters" aria-label="Actieve filters">
              <span className="active-filters-label">Actief:</span>
              {filters.allergens.map((key) => <button type="button" key={key} className="filter-chip" onClick={() => wisselAllergeen(key, false)} title={`Verwijder ${ALLERGEN_LABELS[key] ?? key}`}>{ALLERGEN_LABELS[key] ?? key} <span aria-hidden="true">×</span></button>)}
              {filters.brands.length !== ALLE_MERKEN.length && <button type="button" className="filter-chip" onClick={wisMerkfilter} title="Merkfilter verwijderen">Merken: {filters.brands.length === 0 ? 'geen' : filters.brands.join(', ')} <span aria-hidden="true">×</span></button>}
              {filters.types.length !== ALLE_TYPES.length && <button type="button" className="filter-chip" onClick={wisTypefilter} title="Typefilter verwijderen">Type: {gekozenTypeLabels} <span aria-hidden="true">×</span></button>}
              {filters.sizes.length !== ALLE_MATEN.length && <button type="button" className="filter-chip" onClick={wisMaatfilter} title="Formaatfilter verwijderen">Formaat: {gekozenMaatLabels} <span aria-hidden="true">×</span></button>}
              {filters.proteins.length !== ALLE_EIWITTEN.length && <button type="button" className="filter-chip" onClick={wisEiwitfilter} title="Eiwitfilter verwijderen">Eiwit: {gekozenEiwitLabels} <span aria-hidden="true">×</span></button>}
              {filters.singleProtein && <button type="button" className="filter-chip" onClick={() => update({ singleProtein: false })} title="Eis voor één eiwitbron verwijderen">Eén dierlijke eiwitbron <span aria-hidden="true">×</span></button>}
              {filters.grainFree && <button type="button" className="filter-chip" onClick={() => update({ grainFree: false })} title="Graanvrijfilter verwijderen">Graanvrij <span aria-hidden="true">×</span></button>}
              {filters.zoekterm && <button type="button" className="filter-chip" onClick={() => update({ zoekterm: '' })} title="Zoekterm verwijderen">Zoek: {filters.zoekterm} <span aria-hidden="true">×</span></button>}
              <button type="button" className="filters-reset-inline" onClick={wisAlles}>Filters wissen</button>
            </div>}
            {heeftKeuze && suitable.length > 0 ? <div className="result-status ok" role="status">
              <strong>{suitable.length} {suitable.length === 1 ? 'snack lijkt' : 'snacks lijken'} geschikt op basis van het etiket.</strong>
              <p>Gekozen allergenen: {labelList(filters.allergens, 8)}. {check.length > 0 ? `${check.length} ${check.length === 1 ? 'snack moet' : 'snacks moeten'} nog worden gecontroleerd` : 'Alle snacks in deze selectie zijn op basis van het etiket geschikt'}{excluded.length > 0 ? ` en ${excluded.length} ${excluded.length === 1 ? 'snack is' : 'snacks zijn'} uitgesloten.` : '.'} Controleer voor aankoop altijd de verpakking.</p>
            </div> : heeftKeuze ? <div className="result-status no-suitable" role="status">
              <strong>Geen enkele snack lijkt geschikt voor {labelList(filters.allergens, 4)} op basis van het etiket.</strong>
              <p>{check.length === 0 ? <>Alle {excluded.length} snacks in deze selectie bevatten minstens één van de gekozen allergenen. Pas je selectie of merkfilter aan, of overleg met je dierenarts over een passend eliminatiedieet.</> : <>Bij {check.length === 1 ? 'de overgebleven snack' : `de ${check.length} overgebleven snacks`} noemt het etiket niet elke bron, of staat er een woord in dat de keuring niet kent. Vraag de fabrikant om uitsluitsel of overleg met je dierenarts.</>}</p>
              <div className="no-suitable-actions"><button type="button" onClick={wisAllergenen}>Allergenen wissen</button><button type="button" onClick={wisAlles}>Alle filters wissen</button><a href="/hondenvoer-allergieen.html">Hoe lees je een etiket?</a></div>
            </div> : null}
            <Pagination page={veiligePagina} total={aantalPaginas} onChange={setPage} />
            {zichtbareProducten.map(({ product, match }) => <SnackCard key={product.id} product={product} match={match} heeftKeuze={heeftKeuze} vergelijk={compareIds.includes(product.id)} vergelijkVol={compareIds.length >= 3} onVergelijk={wisselVergelijk} />)}
            <Pagination page={veiligePagina} total={aantalPaginas} onChange={setPage} />
          </section>
        )}
      </div>
    </div>
    {compareOpen && <CompareDialog producten={vergelijkProducten} allergenen={filters.allergens} onClose={() => setCompareOpen(false)} />}
    <footer className="site-footer" id="uitleg">
      <div className="footer-grid">
        <div className="footer-col">
          <h3>Over deze snacksectie</h3>
          <p>Deze eerste batch bevat snacks van Renske, Yarrah en Happy Dog. De samenstellingen zijn letterlijk overgenomen van de officiële productpagina's en in deze batch tegen de bron gecontroleerd.</p>
        </div>
        <div className="footer-col">
          <h3>Hoe wij kijken</h3>
          <p>Elk etiket wordt woord voor woord geanalyseerd op {ALLERGENS.length} dierlijke, plantaardige en overige ingrediëntbronnen. Noemt een etiket een vage verzamelterm die een gekozen allergeen kan verbergen, dan krijgt de snack nooit het label “Lijkt geschikt”. Sporenmeldingen staan apart en tellen nooit als “vrij van”.</p>
        </div>
        <div className="footer-col">
          <h3>Onafhankelijk en privacy</h3>
          <p>Wij vergelijken ingrediënten, allergenen en praktische kenmerken; een prijs is geen onderdeel van ons oordeel. Deze site plaatst geen tracking-cookies en verkoopt geen bezoekersgegevens. Lees het volledige <a href="/privacybeleid.html">privacybeleid</a>.</p>
          <p className="footer-meta">Redactie: Paul Zuiderduin · Contact: <a href="mailto:hondenvoervergelijker@paulzuiderduin.com">hondenvoervergelijker@paulzuiderduin.com</a></p>
        </div>
      </div>
      <div className="footer-bottom">
        <span>© {new Date().getFullYear()} Hondenvoervergelijker — Hondensnacks. Alle ingrediëntdata onder voorbehoud van wijzigingen door de fabrikant.</span>
        <span className="footer-links">
          <a href="/">Voervergelijker</a>
          <a href="/blog/">Blog</a>
          <a href="/merken/">Alle merken</a>
          <a href="/hondenvoer-allergieen.html">Hondenvoer &amp; allergieën</a>
          <a href="/hoe-wij-vergelijken.html">Onze methode</a>
          <a href="/broncontrole.html">Broncontrole</a>
          <a href="/privacybeleid.html">Privacybeleid</a>
        </span>
      </div>
    </footer>
  </main>
}

createRoot(document.getElementById('root')).render(<App />)
