import React, { useEffect, useMemo, useState } from 'react'
import { createRoot } from 'react-dom/client'
import { ALLERGEN_GROUPS, ALLERGEN_LABELS, ALLERGENS, assessLabel, detectIngredientSignals, FOOD_TYPES, markUncertainIngredients, missingAllergenKeys, setCustomTerms, sortAllergenKeys } from './lib/allergens'
import { isReviewOverdue, productMatch } from './lib/matcher'
import { supabase } from './lib/supabase'
import './styles.css'

const MISSING_RPC = /PGRST202|Could not find the function|schema cache/i
const TERMS_HINT = 'De woordenlijst kon niet worden geladen; de keuring gebruikt dan alleen de ingebouwde woorden. Dat is strenger, niet soepeler.'

const blankForm = { brand: '', name: '', food_type: 'kibble', package_size: '', gtin: '', ingredients_text: '', source_url: '', last_checked_at: new Date().toISOString().slice(0, 10), published: false, reviewed: false, review_note: '', allergens: [] }

function sourceDomain(url = '') {
  try { return new URL(url).hostname.replace(/^www\./, '') } catch { return '' }
}

function labelList(keys = [], max = 5) {
  const labels = keys.map((key) => ALLERGEN_LABELS[key] ?? key)
  return `${labels.slice(0, max).join(', ')}${labels.length > max ? ` en ${labels.length - max} meer` : ''}`
}

function ProductCard({ product, match, excluded = false }) {
  const version = product.recipe_versions?.[0]
  const openWords = [...new Set([...match.hidden.map(({ word }) => word), ...match.unknownWords])]
  const hiddenKeys = [...new Set(match.hidden.flatMap(({ keys }) => keys))]
  const checkReason = !match.hasLabel ? 'Er is nog geen ingrediëntenlijst ingevoerd.'
    : !match.reviewed ? 'Deze ingrediëntenlijst is nog niet tegen de bron gecontroleerd.'
      : match.stale ? 'Deze ingrediëntenlijst is langer dan zes maanden niet gecontroleerd.'
        : !match.transparent && !match.states.some((state) => state.state === 'unknown') ? 'Dit etiket noemt een bron die niet bij name staat.' : ''
  return <article className={excluded ? 'product-card excluded' : 'product-card'}>
    <div><strong>{product.brand}</strong> — {product.name}</div>
    <small>{FOOD_TYPES.find(([key]) => key === product.food_type)?.[1]}{product.package_size ? ` · ${product.package_size}` : ''}</small>
    {match.states.length > 0 && <ul className="verdicts">{match.states.map((state) => <li key={state.key} className={`verdict ${state.state}`}>
      <strong>{ALLERGEN_LABELS[state.key]}</strong>
      {state.state === 'present'
        ? ` staat in de lijst${state.members.some((member) => member !== state.key) ? ` (${labelList(state.members)})` : ''}`
        : state.state === 'unknown'
          ? <> kan erin zitten: het etiket noemt geen bron voor {state.words.length > 5 ? `${state.words.slice(0, 5).join(', ')} en ${state.words.length - 5} meer` : state.words.length ? state.words.join(', ') : 'een ingrediënt'}</>
          : ' wordt nergens genoemd'}
    </li>)}</ul>}
    <p>{version?.ingredients_text ? markUncertainIngredients(version.ingredients_text).map((segment, index) => segment.uncertain ? <mark className="uncertain-ingredient" key={index}>{segment.text}</mark> : segment.text) : 'Geen ingrediëntenlijst ingevoerd.'}</p>
    <small>Laatst gecontroleerd: {product.last_checked_at ? new Date(product.last_checked_at).toLocaleDateString('nl-NL') : 'onbekend'}{match.reviewed ? ' · tekst nagelopen' : ''}</small>
    {product.source_url?.startsWith('http') && <p><a className="product-link" href={product.source_url} target="_blank" rel="noreferrer">Bekijk product{sourceDomain(product.source_url) ? ` (${sourceDomain(product.source_url)})` : ''}</a></p>}
    {excluded && <p className="reason excluded">Uitgesloten vanwege: {match.presentStates.map((state) => ALLERGEN_LABELS[state.key]).join(' · ')}</p>}
    {!excluded && checkReason && <p className="reason">Controleer: {checkReason}</p>}
    {!excluded && !checkReason && match.kind === 'suitable' && <p className="reason">{match.states.length ? 'Geen van de gekozen allergenen staat in deze lijst.' : 'Dit etiket noemt elke allergeenbron bij name. Kies je allergenen om te vergelijken.'}</p>}
    {hiddenKeys.length > 0 && !match.states.some((state) => state.state === 'unknown') && <p className="reason"><small>Let op: dit etiket noemt geen bron voor {openWords.join(', ')}. {labelList(hiddenKeys)} kunnen daar in zitten.</small></p>}
  </article>
}

function Admin({ terms, termsOud, reloadTerms, onSaved }) {
  const [form, setForm] = useState(blankForm)
  const [message, setMessage] = useState('')
  const [catalogue, setCatalogue] = useState([])
  const [catalogueError, setCatalogueError] = useState('')
  const [saving, setSaving] = useState(false)
  const [repairing, setRepairing] = useState(false)
  const [working, setWorking] = useState(false)
  const [editingId, setEditingId] = useState(null)
  const [keuring, setKeuring] = useState({ rijen: [], teDoen: [], klaar: [], woorden: [] })
  const [keuze, setKeuze] = useState({})
  const [keuzeKeys, setKeuzeKeys] = useState({})
  const [labelAdvies, setLabelAdvies] = useState(() => assessLabel(''))
  const change = (field, value) => setForm((old) => ({ ...old, [field]: value }))

  const loadCatalogue = async () => {
    if (!supabase) return setCatalogueError('Supabase is nog niet geconfigureerd.')
    const { data, error } = await supabase.from('products').select('*, recipe_versions(*, recipe_ingredients(*))').eq('recipe_versions.is_current', true).order('brand').order('name')
    if (error) { setCatalogueError(error.message); setCatalogue([]); return }
    setCatalogueError(''); setCatalogue(data || [])
  }
  useEffect(() => { loadCatalogue() }, [])

  // Eerst de woordenschat, dan de keuring en het advies in het formulier: de
  // effecten hieronder lopen in deze volgorde en gebruiken dus altijd dezelfde
  // indelingen als de site.
  useEffect(() => { setCustomTerms(terms) }, [terms])
  useEffect(() => { setLabelAdvies(assessLabel(form.ingredients_text)) }, [form.ingredients_text, terms])

  // De takenlijst komt volledig uit de etikettekst, het review-record en de
  // woordenschat. Er valt hier niets gelijk te zetten: wat klaar is, is klaar.
  useEffect(() => {
    const rijen = catalogue.map((product) => {
      const version = product.recipe_versions?.[0]
      const uitslag = version?.ingredients_text ? assessLabel(version.ingredients_text) : null
      const nagelopen = Boolean(version?.reviewed_at)
      const verouderd = isReviewOverdue(product.last_checked_at)
      const openWoorden = uitslag ? [...new Set(uitslag.hidden.map(({ word }) => word))] : []
      const onbekend = uitslag?.unknown ?? []
      const taken = []
      if (!version?.ingredients_text) taken.push('nog geen ingrediëntenlijst')
      else if (!nagelopen) taken.push('nog niet tegen de bron gecontroleerd')
      if (version?.ingredients_text && verouderd) taken.push('langer dan zes maanden niet gecontroleerd')
      if (onbekend.length) taken.push(`woorden die de keuring niet kent: ${onbekend.join(', ')}`)
      return { product, version, uitslag, nagelopen, verouderd, openWoorden, onbekend, taken, schoon: uitslag?.status === 'schoon' && !onbekend.length }
    })
    const woorden = new Map()
    for (const rij of rijen) for (const woord of rij.onbekend) {
      if (!woorden.has(woord)) woorden.set(woord, [])
      woorden.get(woord).push(rij.product)
    }
    setKeuring({ rijen, teDoen: rijen.filter(({ taken }) => taken.length), klaar: rijen.filter(({ taken }) => !taken.length), woorden: [...woorden].map(([woord, producten]) => ({ woord, producten })) })
  }, [catalogue, terms])

  const repairAllergens = async () => {
    if (!supabase) return setMessage('Voeg eerst de Supabase-omgevingsvariabelen toe.')
    if (repairing) return
    setRepairing(true)
    const missing = []
    let products = 0
    for (const product of catalogue) {
      const version = product.recipe_versions?.[0]
      if (!version?.ingredients_text) continue
      const keys = missingAllergenKeys(version.ingredients_text, (version.recipe_ingredients || []).map(({ allergen_key }) => allergen_key))
      if (!keys.length) continue
      products += 1
      missing.push(...keys.map((allergen_key) => ({ recipe_version_id: version.id, allergen_key, certainty: 'confirmed' })))
    }
    if (!missing.length) { setRepairing(false); return setMessage('Alle receptversies bevatten al alle allergenen die in de etiketten staan.') }
    const { error } = await supabase.from('recipe_ingredients').insert(missing)
    setRepairing(false)
    if (error) return setMessage(error.message)
    setMessage(`Allergenen aangevuld bij ${products} product${products === 1 ? '' : 'en'} (${missing.length} regels). De vergelijking is meteen bijgewerkt.`)
    onSaved(); loadCatalogue()
  }

  // Eén product nagekeken verklaren: de beheerder zegt dat deze tekst de tekst
  // van de fabrikant is. Wat het etiket niet noemt blijft daarna gewoon
  // "Controleer etiket/fabrikant" voor wie dat allergeen vermijdt.
  const markReviewed = async ({ product, version, openWoorden, onbekend, taken }) => {
    if (!supabase) return setMessage('Voeg eerst de Supabase-omgevingsvariabelen toe.')
    if (working) return
    // Alleen uitleg vragen als er iets te wegen valt: bij een etiket dat de
    // keuring volledig herkent en elke bron bij name noemt is het één klik.
    const punten = [
      onbekend.length ? `De keuring herkent deze woorden niet: ${onbekend.join(', ')}. Zitten daar geen allergeenbronnen tussen?` : '',
      openWoorden.length ? `Het etiket noemt geen bron voor: ${openWoorden.join(', ')}. Voor wie dat allergeen vermijdt blijft dit product bij "Controleer etiket/fabrikant" staan.` : '',
      taken.some((taak) => taak.startsWith('langer dan')) ? 'Let op: de vorige controle is meer dan zes maanden geleden.' : ''
    ].filter(Boolean)
    if (punten.length && !window.confirm([`${product.brand} — ${product.name}`, 'Je legt vast: deze ingrediëntenlijst is de lijst van de fabrikant.', ...punten, '', 'Vastleggen?'].join('\n'))) return
    setWorking(true)
    const { error } = await supabase.rpc('set_recipe_reviewed', { p_version_ids: [version.id], p_note: version.review_note || null })
    setWorking(false)
    if (error) return setMessage(MISSING_RPC.test(error.message) ? 'De databasefunctie set_recipe_reviewed ontbreekt nog. Voer eerst supabase/migrations/20261019160000_recipe_review.sql uit in de Supabase SQL Editor.' : error.message)
    setMessage(`${product.brand} — ${product.name} staat als nagekeken vast.`)
    onSaved(); loadCatalogue()
  }

  // Eén woord indelen: de beslissing geldt meteen voor alle producten met dat
  // woord, en de site gebruikt dezelfde indeling bij het vergelijken. Bij "blijft
  // onduidelijk" mag de beheerder aanvinken welke allergenen erachter kunnen
  // zitten (glucosamine: schaaldieren of mais). Vinkt hij niets aan, dan geldt de
  // onzekerheid voor alle allergenen: dat is de eerlijke lezing als niemand het
  // weet.
  const classifyWord = async (woord) => {
    if (!supabase) return setMessage('Voeg eerst de Supabase-omgevingsvariabelen toe.')
    if (working) return
    const keuzeVoorWoord = keuze[woord] || 'onschuldig'
    const [kind, allergenKey] = keuzeVoorWoord.split(':')
    const keys = kind === 'onduidelijk' ? (keuzeKeys[woord] || []) : kind === 'bron' ? [allergenKey] : []
    const uitleg = kind === 'onschuldig' ? `"${woord}" is geen bron van een van de allergenen in de lijst en verbergt er ook geen.`
      : kind === 'bron' ? `"${woord}" is ${ALLERGEN_LABELS[allergenKey]}.`
        : keys.length ? `"${woord}" kan ${sortAllergenKeys(keys).map((key) => ALLERGEN_LABELS[key]).join(' of ')} verbergen. Alleen daarvoor blijft het "Controleer etiket/fabrikant"; de andere allergenen laat de site met rust.`
          : `"${woord}" kan elk allergeen verbergen, maar het etiket zegt niet welke. De site blijft dus voor alle allergenen "Controleer etiket/fabrikant" zeggen.`
    if (!window.confirm(`${uitleg}\n\nDit geldt voor alle producten met dit woord. Vastleggen?`)) return
    setWorking(true)
    const { error } = await supabase.rpc('classify_ingredient_term', { p_term: woord, p_kind: kind, p_allergen_keys: kind === 'onduidelijk' && !keys.length ? null : keys, p_note: null })
    setWorking(false)
    if (error) return setMessage(MISSING_RPC.test(error.message) ? 'De databasefunctie classify_ingredient_term heeft nog de oude vorm (één allergeen per woord). Voer supabase/migrations/20261019180000_term_scopes.sql uit in de Supabase SQL Editor.' : error.message)
    setMessage(`"${woord}" is ingedeeld. De vergelijking en de takenlijst zijn meteen bijgewerkt.`)
    await reloadTerms(); onSaved(); loadCatalogue()
  }

  const removeTerm = async (term) => {
    if (!supabase || working) return
    if (!window.confirm(`De indeling van "${term}" intrekken? Het woord komt dan terug als open vraag.`)) return
    setWorking(true)
    const { error } = await supabase.from('ingredient_terms').delete().eq('term', term)
    setWorking(false)
    if (error) return setMessage(error.message)
    setMessage(`De indeling van "${term}" is ingetrokken.`)
    await reloadTerms(); onSaved(); loadCatalogue()
  }

  const reset = () => { setEditingId(null); setForm(blankForm); setMessage('') }
  const edit = (product) => {
    const version = product.recipe_versions?.[0]
    setEditingId(product.id)
    setForm({ brand: product.brand, name: product.name, food_type: product.food_type, package_size: product.package_size || '', gtin: product.gtin || '', ingredients_text: version?.ingredients_text || '', source_url: product.source_url || '', last_checked_at: product.last_checked_at, published: product.published, reviewed: Boolean(version?.reviewed_at), review_note: version?.review_note || '', allergens: version?.recipe_ingredients?.map(({ allergen_key }) => allergen_key) || [] })
  }
  const save = async (event) => {
    event.preventDefault()
    if (!supabase) return setMessage('Voeg eerst de Supabase-omgevingsvariabelen toe.')
    if (saving) return
    setSaving(true)
    setMessage('Opslaan…')
    const { error } = await supabase.rpc('save_product_with_recipe', {
      p_product_id: editingId,
      p_brand: form.brand,
      p_name: form.name,
      p_food_type: form.food_type,
      p_package_size: form.package_size || null,
      p_gtin: form.gtin || null,
      p_source_url: form.source_url || null,
      p_last_checked_at: form.last_checked_at,
      p_published: form.published,
      p_ingredients_text: form.ingredients_text,
      p_reviewed: form.reviewed,
      p_review_note: form.review_note || null,
      p_allergens: form.allergens
    })
    setSaving(false)
    if (error) return setMessage(MISSING_RPC.test(error.message) ? 'De databasefunctie save_product_with_recipe ontbreekt nog. Voer eerst supabase/migrations/20261019160000_recipe_review.sql uit in de Supabase SQL Editor.' : error.message)
    const wasEditing = Boolean(editingId)
    setForm(blankForm); setEditingId(null); setMessage(wasEditing ? 'Product en nieuwe receptversie opgeslagen.' : 'Product opgeslagen.'); onSaved(); loadCatalogue()
  }

  const uncertainWords = useMemo(() => form.ingredients_text ? [...new Set(markUncertainIngredients(form.ingredients_text).filter((segment) => segment.uncertain).map((segment) => segment.text))] : [], [form.ingredients_text])
  return <form className="admin-form" onSubmit={save}>
    <h2>{editingId ? 'Product en nieuwe receptversie' : 'Product invoeren'}</h2><p>Voer de ingrediënten letterlijk vanaf het etiket in. Bij opslaan van een wijziging blijft de vorige receptversie bewaard.</p>
    <label>Merk<input required value={form.brand} onChange={(e) => change('brand', e.target.value)} /></label>
    <label>Productnaam<input required value={form.name} onChange={(e) => change('name', e.target.value)} /></label>
    <label>Voertype<select value={form.food_type} onChange={(e) => change('food_type', e.target.value)}>{FOOD_TYPES.map(([key, label]) => <option key={key} value={key}>{label}</option>)}</select></label>
    <label>Verpakking<input value={form.package_size} placeholder="bijv. 2 kg" onChange={(e) => change('package_size', e.target.value)} /></label>
    <label>GTIN / barcode<input inputMode="numeric" value={form.gtin} onChange={(e) => change('gtin', e.target.value)} /></label>
    <label>Bron (URL of notitie)<input value={form.source_url} onChange={(e) => change('source_url', e.target.value)} /></label>
    <label>Laatst gecontroleerd<input required type="date" value={form.last_checked_at} onChange={(e) => change('last_checked_at', e.target.value)} /></label>
    <label>Volledige ingrediëntenlijst<textarea required rows="5" value={form.ingredients_text} onChange={(e) => change('ingredients_text', e.target.value)} /></label>
    <button type="button" onClick={() => { const detected = detectIngredientSignals(form.ingredients_text); change('allergens', detected.allergens); setMessage(detected.allergens.length ? `Herkenning ingevuld: ${detected.allergens.map((key) => ALLERGEN_LABELS[key]).join(', ')}. Controleer dit altijd.` : 'Geen bekende allergiebronnen herkend. Controleer de lijst handmatig.') }}>Herken allergiebronnen uit ingrediënten</button><p><small>Plak de tekst precies zoals op het etiket. De herkenning is een voorstel op basis van woorden in de lijst; controleer de vinkjes altijd zelf.</small></p>
    <p><small>Etiketcontrole: {labelAdvies.status === 'schoon' ? 'elke allergeenbron in deze lijst staat bij name genoemd.' : `deze lijst noemt een bron die niet bij name staat${uncertainWords.length ? `: ${uncertainWords.slice(0, 8).join(', ')}${uncertainWords.length > 8 ? ` en ${uncertainWords.length - 8} meer` : ''}` : ''}. Die woorden staan rood op de site en het product blijft voor die allergenen bij "Controleer etiket/fabrikant" staan — ook als je het nagekeken hebt. Weet je van de fabrikant welke bron het is, zet die dan tussen haakjes in de lijst, bijvoorbeeld "dierlijk vet (rund)"; dan is het etiket wel eenduidig.`}</small></p>
    <p><small>Woorden: {labelAdvies.unknown.length ? `de keuring herkent deze woorden niet: ${labelAdvies.unknown.slice(0, 8).join(', ')}${labelAdvies.unknown.length > 8 ? ` en ${labelAdvies.unknown.length - 8} meer` : ''}. Je kunt ze één keer indelen in de takenlijst onderaan.` : 'elk ingrediëntwoord in deze lijst is herkend.'}</small></p>
    <fieldset><legend>Bevestigd aanwezige allergiebronnen</legend>{ALLERGEN_GROUPS.map((group) => <fieldset className="allergen-group" key={group.key}><legend>{group.label}</legend>{group.allergens.map(({ key, label }) => <label className="inline" key={key}><input type="checkbox" checked={form.allergens.includes(key)} onChange={(e) => change('allergens', e.target.checked ? [...form.allergens, key] : form.allergens.filter((item) => item !== key))} />{label}</label>)}</fieldset>)}</fieldset>
    <label className="inline"><input type="checkbox" checked={form.reviewed} onChange={(e) => change('reviewed', e.target.checked)} />Ik heb deze ingrediëntenlijst tegen de bron gecontroleerd</label>
    <label>Aantekening (optioneel)<input value={form.review_note} placeholder="bijv. nagevraagd bij de fabrikant op 12-10" onChange={(e) => change('review_note', e.target.value)} /></label>
    <p><small>Nagekeken betekent: deze tekst is de tekst van de fabrikant. Het zegt niet dat er geen allergeen in zit — dat antwoord geeft de vergelijking per allergeen uit de tekst zelf. Verandert de tekst, dan vervalt de bevestiging automatisch en komt het product terug in de takenlijst.</small></p>
    <label className="inline"><input type="checkbox" checked={form.published} onChange={(e) => change('published', e.target.checked)} />Publiceren</label>
    <button disabled={saving}>{saving ? 'Opslaan…' : 'Opslaan'}</button>{editingId && <button type="button" onClick={reset}>Annuleren</button>}{message && <p aria-live="polite">{message}</p>}

    <h2>Wat vraagt aandacht ({keuring.teDoen.length})</h2>
    <p><small>{catalogue.length} producten · {keuring.klaar.length} klaar · {keuring.teDoen.length} met een openstaand punt. Een product is klaar als de tekst tegen de bron is gecontroleerd en de keuring geen woorden meer over heeft.</small></p>
    {catalogueError ? <p role="alert">Kon de catalogus niet laden: {catalogueError}</p> : keuring.teDoen.length ? keuring.teDoen.map(({ product, version, openWoorden, onbekend, taken, nagelopen, verouderd, schoon }) => {
      // Het etiket zelf moet nog langs de bron, of alleen een woord wacht nog op
      // een indeling. Dat verschil bepaalt welke knop hier iets oplost.
      const tekstNodig = !nagelopen || verouderd
      return <div className="admin-row" key={product.id}>
        <span><strong>{product.brand}</strong> — {product.name} {!product.published && '(concept)'} · {taken.join(' · ')}{openWoorden.length ? ` · etiket noemt geen bron voor: ${openWoorden.slice(0, 4).join(', ')}${openWoorden.length > 4 ? ` en ${openWoorden.length - 4} meer` : ''}` : ''}{!nagelopen && schoon ? ' · de keuring ziet hier geen open punten' : ''}{tekstNodig && onbekend.length ? ` · onbekende woorden: ${onbekend.slice(0, 4).join(', ')}${onbekend.length > 4 ? ` en ${onbekend.length - 4} meer` : ''}` : ''}{!tekstNodig ? ' · dit verdwijnt zodra je dat woord hieronder indeelt' : ''}</span>
        {version && tekstNodig && <button type="button" disabled={working} onClick={() => markReviewed({ product, version, openWoorden, onbekend, taken })}>{version.reviewed_at ? 'Opnieuw nagelopen' : 'Nagelopen'}</button>}
        {!tekstNodig && <a className="product-link" href="#woorden">naar de woordenlijst</a>}
        {product.source_url?.startsWith('http') && <a className="product-link" href={product.source_url} target="_blank" rel="noreferrer">bron</a>}
        <button type="button" onClick={() => edit(product)}>Bewerken</button>
      </div>
    }) : <p>Niets te doen: elk product is nagekeken of heeft geen openstaand punt.</p>}

    {keuring.woorden.length > 0 && <>
      <h3 id="woorden">Woorden die de keuring niet kent ({keuring.woorden.length})</h3>
      <p><small>Eén indeling per woord geldt meteen voor alle producten met dat woord, op de site én in deze takenlijst. <strong>Onschuldig</strong>: geen van de allergenen in onze lijst, en verbergt er ook geen. <strong>Bron van …</strong>: het woord is die bron en de site noemt hem. <strong>Blijft onduidelijk</strong>: het woord is ingedeeld en verdwijnt van deze lijst, en de site blijft eerlijk "kan erin zitten" zeggen voor de allergenen die erachter kunnen zitten. Vink daarbij aan welke dat zijn (glucosamine kan van schaaldieren of van mais komen, niet van ei), of laat leeg als niemand het weet — dan geldt de onzekerheid voor alle allergenen.</small></p>
      {termsOud && <p role="alert">De database kan nog maar één allergeen per woord onthouden. Voer supabase/migrations/20261019180000_term_scopes.sql uit in de Supabase SQL Editor; daarna kun je bij "blijft onduidelijk" aanvinken welke allergenen erachter kunnen zitten.</p>}
      {keuring.woorden.map(({ woord, producten }) => {
        const gekozen = keuze[woord] || ''
        const keys = keuzeKeys[woord] || []
        const wissel = (key) => setKeuzeKeys((old) => { const huidig = old[woord] || []; return { ...old, [woord]: huidig.includes(key) ? huidig.filter((item) => item !== key) : [...huidig, key] } })
        return <div className="admin-row" key={woord}>
          <span><strong>{woord}</strong> · {producten.length} product{producten.length === 1 ? '' : 'en'}: {producten.slice(0, 3).map(({ brand, name }) => `${brand} — ${name}`).join(' · ')}{producten.length > 3 ? ` en ${producten.length - 3} meer` : ''}</span>
          <select value={gekozen} onChange={(e) => setKeuze((old) => ({ ...old, [woord]: e.target.value }))}>
            <option value="">Kies een indeling…</option>
            <option value="onschuldig">Onschuldig: geen van de allergenen, en verbergt er ook geen</option>
            <option value="onduidelijk">Blijft onduidelijk: kan een allergeen verbergen</option>
            {ALLERGEN_GROUPS.map((group) => <optgroup key={group.key} label={`Bron van ${group.label.toLowerCase()}`}>{group.allergens.map(({ key, label }) => <option key={key} value={`bron:${key}`}>Bron van {label}</option>)}</optgroup>)}
          </select>
          {gekozen === 'onduidelijk' && <details className="term-keys"><summary>{keys.length ? `kan ${sortAllergenKeys(keys).map((key) => ALLERGEN_LABELS[key]).join(' of ')} verbergen` : 'kan elk allergeen verbergen — vink hier aan welke het echt kunnen zijn'}</summary>
            {ALLERGEN_GROUPS.map((group) => <fieldset className="allergen-group" key={group.key}><legend>{group.label}</legend><div className="choices">{group.allergens.map(({ key, label }) => <label className="inline" key={key}><input type="checkbox" checked={keys.includes(key)} onChange={() => wissel(key)} />{label}</label>)}</div></fieldset>)}
          </details>}
          <button type="button" disabled={working || !gekozen} onClick={() => classifyWord(woord)}>Indelen</button>
        </div>
      })}
    </>}

    <h3>Klaar ({keuring.klaar.length})</h3>
    {keuring.klaar.length ? <details><summary>Deze producten vragen nu niets</summary>{keuring.klaar.map(({ product, version, openWoorden, nagelopen, taken }) => <div className="admin-row" key={product.id}>
      <span>{product.brand} — {product.name}{!product.published && ' (concept)'} · {!nagelopen ? 'keuring ziet geen open punten, nog niet vastgelegd' : openWoorden.length ? `nagekeken ${new Date(version.reviewed_at).toLocaleDateString('nl-NL')}; etiket noemt geen bron voor: ${openWoorden.join(', ')}` : `nagekeken ${new Date(version.reviewed_at).toLocaleDateString('nl-NL')}; etiket is eenduidig`}</span>
      <button type="button" onClick={() => edit(product)}>Bewerken</button>
    </div>)}</details> : <p>Nog geen producten die klaar zijn.</p>}

    {terms.length > 0 && <details><summary>Eerder ingedeelde woorden ({terms.length})</summary>{terms.map((term) => <div className="admin-row" key={term.term}>
      <span><strong>{term.term}</strong> · {term.kind === 'onschuldig' ? 'onschuldig' : term.kind === 'bron' ? `bron van ${ALLERGEN_LABELS[term.allergen_keys[0]] ?? term.allergen_keys[0]}` : term.allergen_keys.length ? `blijft onduidelijk; kan ${sortAllergenKeys(term.allergen_keys).map((key) => ALLERGEN_LABELS[key] ?? key).join(' of ')} verbergen` : 'blijft onduidelijk; kan elk allergeen verbergen'}{term.note ? ` · ${term.note}` : ''}</span>
      <button type="button" disabled={working} onClick={() => removeTerm(term.term)}>Indeling intrekken</button>
    </div>)}</details>}

    <h3>Gereedschap</h3>
    <p><button type="button" disabled={repairing} onClick={repairAllergens}>{repairing ? 'Bezig…' : 'Ontbrekende allergenen aanvullen'}</button> <small>Vult allergenen aan die volgens de huidige herkenning in de etiketten staan maar nog niet zijn aangevinkt, bijvoorbeeld meervoudsvormen als "aardappelen". Bestaande vinkjes blijven staan.</small></p>
  </form>
}

function App() {
  const [products, setProducts] = useState([]); const [loading, setLoading] = useState(true); const [loadError, setLoadError] = useState('')
  const [terms, setTerms] = useState([]); const [termsError, setTermsError] = useState(''); const [termsOud, setTermsOud] = useState(false)
  const [allergens, setAllergens] = useState([]); const [types, setTypes] = useState(FOOD_TYPES.map(([key]) => key))
  const [admin, setAdmin] = useState(false); const [session, setSession] = useState(null); const [isAdmin, setIsAdmin] = useState(false); const [email, setEmail] = useState(''); const [password, setPassword] = useState(''); const [authMessage, setAuthMessage] = useState(''); const [recovery, setRecovery] = useState(() => new URLSearchParams(window.location.hash.slice(1)).get('type') === 'recovery'); const [newPassword, setNewPassword] = useState(''); const [repeatPassword, setRepeatPassword] = useState('')
  const [matches, setMatches] = useState([])
  const load = async () => { if (!supabase) { setLoadError('Supabase is nog niet geconfigureerd, dus er kunnen geen producten worden geladen.'); setLoading(false); return }; setLoading(true); const { data, error } = await supabase.from('products').select('*, recipe_versions(*, recipe_ingredients(*))').eq('published', true).eq('recipe_versions.is_current', true); if (error) { setLoadError(error.message); setProducts([]) } else { setLoadError(''); setProducts(data || []) }; setLoading(false) }
  // De woordenschat komt als ruwe rij binnen. Zo blijft de site werken zolang de
  // laatste migratie (20261019180000_term_scopes.sql) nog niet is uitgevoerd: een
  // ingedeeld woord houdt dan zijn ene allergeen, en "onduidelijk" verbergt alles
  // — strenger, niet soepeler. In het beheer staat dan een regel met wat er nog
  // moet gebeuren.
  const loadTerms = async () => {
    if (!supabase) return
    const { data, error } = await supabase.from('ingredient_terms').select('*').order('term')
    if (error) { setTermsError(TERMS_HINT); setTerms([]); return }
    setTermsError('')
    setTerms((data || []).map((term) => ({ term: term.term, kind: term.kind, note: term.note, allergen_keys: Array.isArray(term.allergen_keys) ? term.allergen_keys.filter(Boolean) : term.allergen_key ? [term.allergen_key] : [] })))
    setTermsOud(data?.length > 0 && !('allergen_keys' in data[0]))
  }
  useEffect(() => { load(); loadTerms(); supabase?.auth.getSession().then(({ data }) => setSession(data.session)); const { data } = supabase?.auth.onAuthStateChange((event, next) => { setSession(next); if (event === 'PASSWORD_RECOVERY') setRecovery(true) }) || {}; return () => data?.subscription.unsubscribe() }, [])
  useEffect(() => { const checkAdmin = async () => { if (!session || !supabase) return setIsAdmin(false); const { data } = await supabase.from('admins').select('user_id').eq('user_id', session.user.id).maybeSingle(); setIsAdmin(Boolean(data)) }; checkAdmin() }, [session])
  // De woordenschat (eigen indelingen) moet bekend zijn vóór het vergelijken.
  useEffect(() => {
    setCustomTerms(terms)
    setMatches(products.filter((product) => types.includes(product.food_type)).map((product) => ({ product, match: productMatch(product, allergens) })))
  }, [products, allergens, types, terms])
  const suitable = matches.filter(({ match }) => match.kind === 'suitable'); const check = matches.filter(({ match }) => match.kind === 'check'); const excluded = matches.filter(({ match }) => match.kind === 'excluded')
  const login = async (event) => { event.preventDefault(); if (!supabase) return setAuthMessage('Supabase is nog niet geconfigureerd.'); const { error } = await supabase.auth.signInWithPassword({ email, password }); setAuthMessage(error ? error.message : '') }
  const updatePassword = async (event) => {
    event.preventDefault()
    if (!supabase) return setAuthMessage('Supabase is nog niet geconfigureerd.')
    if (newPassword.length < 8) return setAuthMessage('Kies een wachtwoord van minimaal 8 tekens.')
    if (newPassword !== repeatPassword) return setAuthMessage('De wachtwoorden komen niet overeen.')
    const { error } = await supabase.auth.updateUser({ password: newPassword })
    if (error) return setAuthMessage(error.message)
    window.history.replaceState({}, '', window.location.pathname)
    setRecovery(false); setNewPassword(''); setRepeatPassword(''); setAuthMessage('Wachtwoord gewijzigd. Je bent nu ingelogd.')
  }
  return <main><header><h1>Hondenvoervergelijker</h1><button className="link" onClick={() => { if (admin) { load(); loadTerms() } setAdmin(!admin) }}>{admin ? 'Terug naar vergelijken' : 'Beheer'}</button></header>
    {recovery ? <form className="login" onSubmit={updatePassword}><h2>Nieuw wachtwoord instellen</h2><p>Kies hieronder een nieuw wachtwoord voor het beheerdersaccount.</p><label>Nieuw wachtwoord<input type="password" required minLength="8" value={newPassword} onChange={(e) => setNewPassword(e.target.value)} /></label><label>Herhaal wachtwoord<input type="password" required minLength="8" value={repeatPassword} onChange={(e) => setRepeatPassword(e.target.value)} /></label><button>Wachtwoord opslaan</button>{authMessage && <p aria-live="polite">{authMessage}</p>}</form> : admin ? (isAdmin ? <Admin terms={terms} termsOud={termsOud} reloadTerms={loadTerms} onSaved={load} /> : session ? <section><h2>Geen beheerdersrechten</h2><p>Dit account mag geen producten beheren.</p><button onClick={() => supabase.auth.signOut()}>Uitloggen</button></section> : <form className="login" onSubmit={login}><h2>Beheer inloggen</h2><label>E-mail<input type="email" required value={email} onChange={(e) => setEmail(e.target.value)} /></label><label>Wachtwoord<input type="password" required value={password} onChange={(e) => setPassword(e.target.value)} /></label><button>Inloggen</button>{authMessage && <p>{authMessage}</p>}</form>) : <>
      <aside><strong>Belangrijk:</strong> deze tool vergelijkt ingevoerde etiketinformatie. Hij is geen dierenartsadvies en geeft geen garantie. Controleer altijd de verpakking en overleg bij twijfel met een dierenarts.</aside>
      <section><h2>Allergieën van je hond</h2><p><small>Kies wat je wilt vermijden. De lijst is fijnmazig — één groente, één vissoort of één kruid kan ook — dus open de groep die je nodig hebt.</small></p>{ALLERGEN_GROUPS.map((group) => {
        const gekozen = group.allergens.filter(({ key }) => allergens.includes(key)).length
        return <details className="allergen-group" key={group.key} open={group.key === 'protein'}>
          <summary>{group.label} {gekozen ? `· ${gekozen} gekozen` : `(${group.allergens.length})`}</summary>
          <div className="choices">{group.allergens.map(({ key, label }) => <label className="inline" key={key}><input type="checkbox" checked={allergens.includes(key)} onChange={(e) => setAllergens(e.target.checked ? [...allergens, key] : allergens.filter((item) => item !== key))} />{label}</label>)}</div>
        </details>
      })}<h2>Type voer</h2><div className="choices">{FOOD_TYPES.map(([key, label]) => <label className="inline" key={key}><input type="checkbox" checked={types.includes(key)} onChange={(e) => setTypes(e.target.checked ? [...types, key] : types.filter((item) => item !== key))} />{label}</label>)}</div></section>
      {loadError ? <section><h2>Kon de producten niet laden</h2><p role="alert">{loadError}</p><p>Er wordt hierdoor niets over de geschiktheid van voeding gezegd. Probeer het later opnieuw.</p></section> : loading ? <p>Laden…</p> : <>{termsError && <p role="alert">{termsError}</p>}<p className="legend"><mark className="uncertain-ingredient">rood</mark> = het etiket noemt de bron van dat ingrediënt niet ("dierlijk vet", "granen"). Het oordeel gaat per allergeen: een product komt alleen bij "Controleer" als zo'n onduidelijkheid jouw allergeen kan bevatten. Reken op het etiket en de fabrikant, niet op deze site.</p>
        <section><h2>Geschikt ({suitable.length})</h2>{suitable.length ? suitable.map(({ product, match }) => <ProductCard key={product.id} product={product} match={match} />) : <p>{allergens.length ? 'Geen producten waarin de gekozen allergenen aantoonbaar ontbreken.' : 'Geen enkel etiket noemt elke allergeenbron bij name.'}</p>}</section>
        <section><h2>Controleer etiket/fabrikant ({check.length})</h2>{check.length ? check.map(({ product, match }) => <ProductCard key={product.id} product={product} match={match} />) : <p>Geen producten met een open vraag bij de gekozen allergenen.</p>}</section>
        <section><h2>Uitgesloten ({excluded.length})</h2>{excluded.length ? excluded.map(({ product, match }) => <ProductCard key={product.id} product={product} match={match} excluded />) : <p>Geen enkel product bevat de gekozen allergenen.</p>}</section></>}
    </>}</main>
}
createRoot(document.getElementById('root')).render(<App />)
