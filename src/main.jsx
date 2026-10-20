import React, { memo, useEffect, useMemo, useState } from 'react'
import { createRoot } from 'react-dom/client'
import { ALLERGEN_GROUPS, ALLERGEN_LABELS, ALLERGENS, assessLabel, detectIngredientSignals, FOOD_TYPES, markUncertainIngredients, missingAllergenKeys, setCustomTerms, sortAllergenKeys } from './lib/allergens'
import { isReviewOverdue, productMatch } from './lib/matcher'
import { supabase } from './lib/supabase'
import './styles.css'

const MISSING_RPC = /PGRST202|Could not find the function|schema cache/i
const TERMS_HINT = 'De woordenlijst kon niet worden geladen; de keuring gebruikt dan alleen de ingebouwde woorden. Dat is strenger, niet soepeler.'
const PAGE_SIZE = 8

const blankForm = { brand: '', name: '', food_type: 'kibble', package_size: '', gtin: '', ingredients_text: '', source_url: '', last_checked_at: new Date().toISOString().slice(0, 10), published: false, reviewed: false, review_note: '', allergens: [] }

function sourceDomain(url = '') {
  try { return new URL(url).hostname.replace(/^www\./, '') } catch { return '' }
}

function labelList(keys = [], max = 5) {
  const labels = keys.map((key) => ALLERGEN_LABELS[key] ?? key)
  return `${labels.slice(0, max).join(', ')}${labels.length > max ? ` en ${labels.length - max} meer` : ''}`
}

// "dierlijk" en "vet" zijn twee treffers, maar één begrip. Staat de combinatie
// zo in het etiket, dan noemen we hem ook zo. Langere varianten ("oliën en
// vetten") winnen van de korte ("oliën").
function bronlozeWoorden(tekst, hidden) {
  const klein = tekst.toLowerCase()
  const uniek = [...new Set(hidden.map(({ word }) => word))]
    .filter((woord, _, alle) => !alle.some((ander) => ander.length > woord.length && ander.toLowerCase().includes(woord.toLowerCase())))
    .sort((eerste, tweede) => klein.indexOf(eerste.toLowerCase()) - klein.indexOf(tweede.toLowerCase()))
  const uit = []
  for (const woord of uniek) {
    const vorige = uit[uit.length - 1]
    if (vorige && klein.includes(`${vorige.toLowerCase()} ${woord.toLowerCase()}`)) uit[uit.length - 1] = `${vorige} ${woord}`
    else uit.push(woord)
  }
  return uit
}

// De etikettekst zelf verandert nooit tijdens het vergelijken; alleen het oordeel
// erboven. Zonder deze memo zou elke kaart bij elk vinkje de hele
// ingrediëntenlijst opnieuw opbouwen — honderden stukjes tekst per kaart.
const Ingredients = memo(function Ingredients({ text }) {
  if (!text) return <p>Geen ingrediëntenlijst ingevoerd.</p>
  return <p>{markUncertainIngredients(text).map((segment, index) => segment.uncertain ? <mark className="uncertain-ingredient" key={index}>{segment.text}</mark> : segment.text)}</p>
})

function ProductCard({ product, match }) {
  const excluded = match.kind === 'excluded'
  const verdict = excluded ? 'Uitgesloten' : match.kind === 'check' ? 'Controleer etiket/fabrikant' : match.states.length ? 'Geschikt' : 'Etiket noemt elke bron'
  const version = product.recipe_versions?.[0]
  const verborgenWoorden = bronlozeWoorden(version?.ingredients_text ?? '', match.hidden)
  const verborgenKeys = [...new Set(match.hidden.flatMap(({ keys }) => keys))]
  const dektElkAllergeen = verborgenKeys.length >= ALLERGENS.length
  const nietHerkendeWoorden = [...new Set(match.unknownWords)]
  const hydrolysed = match.hydrolysed ?? { present: false, words: [], keys: [] }
  // Het oordeel staat in hooguit drie regels: één per uitkomst. Een regel per
  // allergeen zou de kaart bij een ruime keuze tientallen regels lang maken;
  // alle namen blijven wel staan (ook als het er twintig zijn).
  const presentStates = match.states.filter((state) => state.state === 'present')
  const unknownStates = match.states.filter((state) => state.state === 'unknown')
  const absentStates = match.states.filter((state) => state.state === 'absent')
  const onbekendeWoorden = [...new Set(unknownStates.flatMap((state) => state.words))]
    // Dezelfde bron kan bij verschillende allergenen net anders genoteerd staan
    // ("oliën" en "oliën en vetten"). Is een langere variant al genoemd, dan
    // zegt de korte niets extra.
    .filter((woord, _, alle) => !alle.some((ander) => ander.length > woord.length && ander.toLowerCase().includes(woord.toLowerCase())))
  // De herkomst staat los van het oordeel: een automatisch overgenomen etiket
  // zegt nooit dat een mens ernaar gekeken heeft, en een nagekeken etiket houdt
  // zijn "tekst nagelopen". Zo kan de bezoeker zien wat hij in handen heeft.
  const herkomst = match.imported
    ? `Automatisch overgenomen${sourceDomain(product.source_url) ? ` van ${sourceDomain(product.source_url)}` : ''} op ${new Date(match.importedAt).toLocaleDateString('nl-NL')}${match.reviewed ? ` · nagekeken op ${new Date(version.reviewed_at).toLocaleDateString('nl-NL')}` : ' · nog niet door een mens nagelopen'}`
    : `Laatst gecontroleerd: ${product.last_checked_at ? new Date(product.last_checked_at).toLocaleDateString('nl-NL') : 'onbekend'}${match.reviewed ? ' · tekst nagelopen' : ''}`
  // Een etiket dat een bron niet noemt, krijgt één regel: de concrete woorden
  // ("geen bron voor bouillon") plus de allergenen die daar in kunnen zitten.
  // De algemene uitleg die hier eerder stond, zei hetzelfde en is vervallen.
  const checkReason = !match.hasLabel ? 'Er is nog geen ingrediëntenlijst ingevoerd.'
    : !match.reviewed && !match.imported ? 'Deze ingrediëntenlijst is nog niet tegen de bron gecontroleerd.'
      : match.stale ? 'Deze ingrediëntenlijst is langer dan zes maanden niet gecontroleerd.' : ''
  return <article className={excluded ? 'product-card excluded' : 'product-card'}>
    <div><strong>{product.brand}</strong> — {product.name}</div>
    <small>{FOOD_TYPES.find(([key]) => key === product.food_type)?.[1]}{product.package_size ? ` · ${product.package_size}` : ''}{hydrolysed.present ? ' · gehydrolyseerd eiwit' : ''}{' '}<span className={`verdict-badge ${match.kind}`}>{verdict}</span></small>
    {presentStates.length > 0 && !excluded && <p className="verdict present"><strong>Staat in de lijst:</strong> {presentStates.map((state) => `${ALLERGEN_LABELS[state.key]}${state.members.some((member) => member !== state.key) ? ` via ${labelList(state.members.filter((member) => member !== state.key))}` : ''}`).join(', ')}</p>}
    {unknownStates.length > 0 && <p className="verdict unknown"><strong>Kan erin zitten:</strong> {labelList(unknownStates.map((state) => state.key), 100)} — het etiket noemt geen bron voor {onbekendeWoorden.length > 5 ? `${onbekendeWoorden.slice(0, 5).join(', ')} en ${onbekendeWoorden.length - 5} meer` : onbekendeWoorden.length ? onbekendeWoorden.join(', ') : 'een ingrediënt'}</p>}
    {absentStates.length > 0 && <p className="verdict absent"><strong>Nergens genoemd:</strong> {labelList(absentStates.map((state) => state.key), 100)}</p>}
    <details className="ingredients"><summary>Ingrediëntenlijst</summary><Ingredients text={version?.ingredients_text} /></details>
    {match.importNote && <p className="import-note"><small>{match.importNote}</small></p>}
    {hydrolysed.present && <p className="note-hydrolysed"><strong>Gehydrolyseerd eiwit:</strong> {hydrolysed.words.length ? `dit etiket noemt ${hydrolysed.words.join(', ')} in gehydrolyseerde vorm` : 'dit etiket noemt gehydrolyseerde eiwitten'}: de eiwitketens zijn opgeknipt, waardoor het lichaam ze vaak niet meer als allergeen herkent. Dierenartsen kiezen zo'n voer juist bij een allergie; deze site telt de bron toch mee, want alleen je dierenarts kan beoordelen of het in jouw geval werkt.</p>}
    <small>{herkomst}</small>
    {product.source_url?.startsWith('http') && <p><a className="product-link" href={product.source_url} target="_blank" rel="noreferrer">Bekijk product{sourceDomain(product.source_url) ? ` (${sourceDomain(product.source_url)})` : ''}</a></p>}
    {excluded && <p className="reason excluded">Uitgesloten vanwege: {match.presentStates.map((state) => ALLERGEN_LABELS[state.key]).join(' · ')}</p>}
    {!excluded && checkReason && <p className="reason">Controleer: {checkReason}</p>}
    {!excluded && !checkReason && match.kind === 'suitable' && !match.states.length && <p className="reason">Dit etiket noemt bij elk ingrediënt waar het vandaan komt. Kies je allergenen om te vergelijken.</p>}
    {!match.states.length && (verborgenWoorden.length > 0 || nietHerkendeWoorden.length > 0) && <p className="reason"><small>Let op: {verborgenWoorden.length
      ? `dit etiket noemt geen bron voor ${verborgenWoorden.join(', ')}. ${nietHerkendeWoorden.length ? 'Omdat er ook woorden in staan die de keuring niet kent, kan elk allergeen erin zitten.' : dektElkAllergeen ? 'Daardoor kan elk allergeen erin zitten.' : `${labelList(verborgenKeys)} kunnen daar in zitten.`}`
      : 'dit etiket bevat woorden die de keuring niet kent. Daardoor kan elk allergeen erin zitten.'}</small></p>}
  </article>
}

// Eén pagina met producten tegelijk. Bij 271 producten was de lijst anders
// duizenden pixels lang; nu zie je steeds acht kaarten en kun je gericht
// verder bladeren.
function Pagination({ page, total, onChange }) {
  if (total <= 1) return null
  return <nav className="pager" aria-label="Productpagina's">
    <button type="button" onClick={() => onChange(page - 1)} disabled={page <= 1}>Vorige</button>
    <label>Pagina <select value={page} aria-label="Kies een pagina" onChange={(event) => onChange(Number(event.target.value))}>{Array.from({ length: total }, (_, index) => <option key={index + 1} value={index + 1}>{index + 1}</option>)}</select> van {total}</label>
    <button type="button" onClick={() => onChange(page + 1)} disabled={page >= total}>Volgende</button>
  </nav>
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
  const [keuring, setKeuring] = useState({ rijen: [], teDoen: [], teControleren: [], klaar: [], woorden: [] })
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
  // Een automatisch overgenomen etiket (import) is geen openstaande taak: het
  // vraagt geen menselijke klik, maar blijft wel zichtbaar als zódanig — de site
  // mag nooit een controle claimen die niet gebeurd is.
  useEffect(() => {
    const rijen = catalogue.map((product) => {
      const version = product.recipe_versions?.[0]
      const uitslag = version?.ingredients_text ? assessLabel(version.ingredients_text) : null
      const nagelopen = Boolean(version?.reviewed_at)
      const automatisch = Boolean(version?.imported_at) && !nagelopen
      const verouderd = isReviewOverdue(product.last_checked_at)
      const openWoorden = uitslag ? [...new Set(uitslag.hidden.map(({ word }) => word))] : []
      const onbekend = uitslag?.unknown ?? []
      const taken = []
      if (!version?.ingredients_text) taken.push('nog geen ingrediëntenlijst')
      else if (!nagelopen && !automatisch) taken.push('nog niet tegen de bron gecontroleerd')
      if (version?.ingredients_text && verouderd) taken.push('langer dan zes maanden niet gecontroleerd')
      if (onbekend.length) taken.push(`woorden die de keuring niet kent: ${onbekend.join(', ')}`)
      const herkomst = automatisch
        ? `automatisch overgenomen${sourceDomain(product.source_url) ? ` van ${sourceDomain(product.source_url)}` : ''}${version?.imported_at ? ` op ${new Date(version.imported_at).toLocaleDateString('nl-NL')}` : ''} · nog niet door een mens nagelopen`
        : ''
      return { product, version, uitslag, nagelopen, automatisch, herkomst, verouderd, openWoorden, onbekend, taken, schoon: uitslag?.status === 'schoon' && !onbekend.length }    })
    const woorden = new Map()
    for (const rij of rijen) for (const woord of rij.onbekend) {
      if (!woorden.has(woord)) woorden.set(woord, [])
      woorden.get(woord).push(rij.product)
    }
    setKeuring({ rijen, teDoen: rijen.filter(({ taken }) => taken.length), teControleren: rijen.filter(({ taken, automatisch }) => automatisch && !taken.length), klaar: rijen.filter(({ taken }) => !taken.length), woorden: [...woorden].map(([woord, producten]) => ({ woord, producten })) })
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
    <p><small>Etiketcontrole: {labelAdvies.status === 'schoon' ? 'bij elk ingrediënt in deze lijst staat waar het vandaan komt.' : `deze lijst noemt een ingrediënt zonder te zeggen waar het vandaan komt${uncertainWords.length ? `: ${uncertainWords.slice(0, 8).join(', ')}${uncertainWords.length > 8 ? ` en ${uncertainWords.length - 8} meer` : ''}` : ''}. Die woorden staan rood op de site en het product blijft voor die allergenen bij "Controleer etiket/fabrikant" staan — ook als je het nagekeken hebt. Weet je van de fabrikant welke bron het is, zet die dan tussen haakjes in de lijst, bijvoorbeeld "dierlijk vet (rund)"; dan is het etiket wel eenduidig.`}</small></p>
    <p><small>Woorden: {labelAdvies.unknown.length ? `de keuring herkent deze woorden niet: ${labelAdvies.unknown.slice(0, 8).join(', ')}${labelAdvies.unknown.length > 8 ? ` en ${labelAdvies.unknown.length - 8} meer` : ''}. Je kunt ze één keer indelen in de takenlijst onderaan.` : 'elk ingrediëntwoord in deze lijst is herkend.'}</small></p>
    {labelAdvies.hydrolysed?.present && <p><small>Dit etiket noemt gehydrolyseerd eiwit{labelAdvies.hydrolysed.words.length ? ` (${labelAdvies.hydrolysed.words.join(', ')})` : ''}. De site vermeldt dat op de kaart; het oordeel per allergeen verandert er niet door.</small></p>}
    <fieldset><legend>Bevestigd aanwezige allergiebronnen</legend>{ALLERGEN_GROUPS.map((group) => <fieldset className="allergen-group" key={group.key}><legend>{group.label}</legend>{group.allergens.map(({ key, label }) => <label className="inline" key={key}><input type="checkbox" checked={form.allergens.includes(key)} onChange={(e) => change('allergens', e.target.checked ? [...form.allergens, key] : form.allergens.filter((item) => item !== key))} />{label}</label>)}</fieldset>)}</fieldset>
    <label className="inline"><input type="checkbox" checked={form.reviewed} onChange={(e) => change('reviewed', e.target.checked)} />Ik heb deze ingrediëntenlijst tegen de bron gecontroleerd</label>
    <label>Aantekening (optioneel)<input value={form.review_note} placeholder="bijv. nagevraagd bij de fabrikant op 12-10" onChange={(e) => change('review_note', e.target.value)} /></label>
    <p><small>Nagekeken betekent: deze tekst is de tekst van de fabrikant. Het zegt niet dat er geen allergeen in zit — dat antwoord geeft de vergelijking per allergeen uit de tekst zelf. Verandert de tekst, dan vervalt de bevestiging automatisch en komt het product terug in de takenlijst.</small></p>
    <label className="inline"><input type="checkbox" checked={form.published} onChange={(e) => change('published', e.target.checked)} />Publiceren</label>
    <button disabled={saving}>{saving ? 'Opslaan…' : 'Opslaan'}</button>{editingId && <button type="button" onClick={reset}>Annuleren</button>}{message && <p aria-live="polite">{message}</p>}

    <h2>Wat vraagt aandacht ({keuring.teDoen.length})</h2>
    <p><small>{catalogue.length} producten · {keuring.klaar.length} klaar (waarvan {keuring.teControleren.length} automatisch overgenomen en nog niet nagelopen) · {keuring.teDoen.length} met een openstaand punt. Een product is klaar als de tekst van de bron komt (nagekeken of automatisch overgenomen) en de keuring geen woorden meer over heeft.</small></p>
    {catalogueError ? <p role="alert">Kon de catalogus niet laden: {catalogueError}</p> : keuring.teDoen.length ? keuring.teDoen.map(({ product, version, openWoorden, onbekend, taken, nagelopen, automatisch, herkomst, verouderd, schoon }) => {
      // Het etiket zelf moet nog langs de bron, of alleen een woord wacht nog op
      // een indeling. Dat verschil bepaalt welke knop hier iets oplost.
      const tekstNodig = (!nagelopen && !automatisch) || verouderd
      return <div className="admin-row" key={product.id}>
        <span><strong>{product.brand}</strong> — {product.name} {!product.published && '(concept)'} · {taken.join(' · ')}{herkomst ? ` · ${herkomst}` : ''}{openWoorden.length ? ` · etiket noemt geen bron voor: ${openWoorden.slice(0, 4).join(', ')}${openWoorden.length > 4 ? ` en ${openWoorden.length - 4} meer` : ''}` : ''}{tekstNodig && !automatisch && schoon ? ' · de keuring ziet hier geen open punten' : ''}{tekstNodig && onbekend.length ? ` · onbekende woorden: ${onbekend.slice(0, 4).join(', ')}${onbekend.length > 4 ? ` en ${onbekend.length - 4} meer` : ''}` : ''}{!tekstNodig ? ' · dit verdwijnt zodra je dat woord hieronder indeelt' : ''}</span>
        {version && tekstNodig && <button type="button" disabled={working} onClick={() => markReviewed({ product, version, openWoorden, onbekend, taken })}>{version.reviewed_at ? 'Opnieuw nagelopen' : 'Nagelopen'}</button>}
        {!tekstNodig && <a className="product-link" href="#woorden">naar de woordenlijst</a>}
        {product.source_url?.startsWith('http') && <a className="product-link" href={product.source_url} target="_blank" rel="noreferrer">bron</a>}
        <button type="button" onClick={() => edit(product)}>Bewerken</button>
      </div>
    }) : <p>Niets te doen: elk product is nagekeken of automatisch overgenomen, en de keuring heeft geen open woorden meer.</p>}

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

    <h3>Automatisch overgenomen, nog na te lopen ({keuring.teControleren.length})</h3>
    {keuring.teControleren.length ? <details><summary>Deze etiketten doen al mee op de site, met de regel "automatisch overgenomen · nog niet door een mens nagelopen"</summary>
      <p><small>Nalopen hoeft niet: de site claimt nergens een menselijke controle. Heb je een etiket naast de bronpagina gelegd en klopt het, dan leg je dat hier per product vast. Doe dat alleen als je het echt hebt gezien — deze knop geldt voor één product tegelijk, nooit voor een hele lijst.</small></p>
      {keuring.teControleren.map(({ product, version, openWoorden, onbekend, taken }) => <div className="admin-row" key={product.id}>
        <span>{product.brand} — {product.name}{!product.published && ' (concept)'} · {version?.imported_at ? `overgenomen op ${new Date(version.imported_at).toLocaleDateString('nl-NL')}` : 'automatisch overgenomen'}{openWoorden.length ? ` · etiket noemt geen bron voor: ${openWoorden.slice(0, 4).join(', ')}${openWoorden.length > 4 ? ` en ${openWoorden.length - 4} meer` : ''}` : ''}</span>
        <button type="button" disabled={working} onClick={() => markReviewed({ product, version, openWoorden, onbekend, taken })}>Nagelopen</button>
        {product.source_url?.startsWith('http') && <a className="product-link" href={product.source_url} target="_blank" rel="noreferrer">bron</a>}
        <button type="button" onClick={() => edit(product)}>Bewerken</button>
      </div>)}
    </details> : <p><small>Geen openstaande etiketten: alles wat automatisch is overgenomen, is door een mens nagelopen.</small></p>}

    <h3>Klaar ({keuring.klaar.length})</h3>
    {keuring.klaar.length ? <details><summary>Deze producten vragen nu niets</summary>{keuring.klaar.map(({ product, version, openWoorden, nagelopen, herkomst }) => <div className="admin-row" key={product.id}>
      <span>{product.brand} — {product.name}{!product.published && ' (concept)'} · {nagelopen
        ? `${openWoorden.length ? `nagekeken ${new Date(version.reviewed_at).toLocaleDateString('nl-NL')}; etiket noemt geen bron voor: ${openWoorden.join(', ')}` : `nagekeken ${new Date(version.reviewed_at).toLocaleDateString('nl-NL')}; etiket is eenduidig`}`
        : herkomst
          ? `${herkomst}; ${openWoorden.length ? `etiket noemt geen bron voor: ${openWoorden.join(', ')}` : 'de keuring ziet geen open punten'}`
          : 'keuring ziet geen open punten, nog niet vastgelegd'}</span>
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
  const [selectedBrands, setSelectedBrands] = useState(null); const [brandSearch, setBrandSearch] = useState('')
  const [admin, setAdmin] = useState(false); const [session, setSession] = useState(null); const [isAdmin, setIsAdmin] = useState(false); const [email, setEmail] = useState(''); const [password, setPassword] = useState(''); const [authMessage, setAuthMessage] = useState(''); const [recovery, setRecovery] = useState(() => new URLSearchParams(window.location.hash.slice(1)).get('type') === 'recovery'); const [newPassword, setNewPassword] = useState(''); const [repeatPassword, setRepeatPassword] = useState('')
  const [matches, setMatches] = useState([])
  const [page, setPage] = useState(1)
  const alleMerken = useMemo(() => [...new Set(products.map(({ brand }) => brand).filter(Boolean))].sort((eerste, tweede) => eerste.localeCompare(tweede, 'nl', { sensitivity: 'base' })), [products])
  const merkTellingen = useMemo(() => {
    const tellingen = new Map()
    for (const product of products.filter(({ food_type }) => types.includes(food_type))) tellingen.set(product.brand, (tellingen.get(product.brand) ?? 0) + 1)
    return tellingen
  }, [products, types])
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
    setMatches(products.filter((product) => types.includes(product.food_type) && (selectedBrands === null || selectedBrands.includes(product.brand))).map((product) => ({ product, match: productMatch(product, allergens) })))
  }, [products, allergens, types, terms, selectedBrands])
  // Elke nieuwe keuze begint weer bovenaan.
  useEffect(() => { setPage(1) }, [allergens, types, selectedBrands])
  const suitable = matches.filter(({ match }) => match.kind === 'suitable'); const check = matches.filter(({ match }) => match.kind === 'check'); const excluded = matches.filter(({ match }) => match.kind === 'excluded')
  const opNaam = (eerste, tweede) => eerste.product.brand.localeCompare(tweede.product.brand, 'nl', { sensitivity: 'base' }) || eerste.product.name.localeCompare(tweede.product.name, 'nl', { sensitivity: 'base' })
  // Eén lijst in vaste volgorde: eerst geschikt, dan controleren, dan
  // uitgesloten. Zo blijft de pagina voorspelbaar zonder tabs.
  const alleResultaten = [...suitable].sort(opNaam).concat([...check].sort(opNaam), [...excluded].sort(opNaam))
  const aantalPaginas = Math.max(1, Math.ceil(alleResultaten.length / PAGE_SIZE))
  const huidigePagina = Math.min(page, aantalPaginas)
  const zichtbareProducten = alleResultaten.slice((huidigePagina - 1) * PAGE_SIZE, huidigePagina * PAGE_SIZE)
  const gaNaarPagina = (nieuw) => { setPage(Math.min(Math.max(1, nieuw), aantalPaginas)); document.getElementById('resultaten')?.scrollIntoView({ block: 'start' }) }
  const merkActief = (merk) => selectedBrands === null || selectedBrands.includes(merk)
  const wisselMerk = (merk, aangevinkt) => setSelectedBrands((huidig) => {
    const basis = huidig ?? alleMerken
    const volgende = aangevinkt ? [...new Set([...basis, merk])] : basis.filter((item) => item !== merk)
    return volgende.length === alleMerken.length ? null : volgende
  })
  const geenMerken = Array.isArray(selectedBrands) && selectedBrands.length === 0
  const geenTypes = types.length === 0
  const filterMelding = geenMerken && geenTypes ? 'Kies links minstens één merk en één voertype.' : geenMerken ? 'Kies links minstens één merk om producten te vergelijken.' : 'Kies links minstens één voertype om producten te vergelijken.'
  const zichtbareMerken = alleMerken.filter((merk) => merk.toLowerCase().includes(brandSearch.trim().toLowerCase()))
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
      <div className="layout">
        <aside className="filters" aria-label="Filters">
          <h2>Filters</h2>
          <div className="filter-block">
            <h3>Merken</h3>
            <p className="filter-summary">{selectedBrands === null ? `Alle ${alleMerken.length} merken doen mee` : `${selectedBrands.length} van ${alleMerken.length} merken geselecteerd`}</p>
            <div className="filter-actions">
              <button type="button" className={selectedBrands === null ? 'active' : ''} aria-pressed={selectedBrands === null} onClick={() => setSelectedBrands(null)}>Alles</button>
              <button type="button" className={geenMerken ? 'active' : ''} aria-pressed={geenMerken} onClick={() => setSelectedBrands([])}>Niets</button>
            </div>
            <label className="brand-search-label">Zoek merk<input type="search" value={brandSearch} placeholder="Bijv. Acana" onChange={(event) => setBrandSearch(event.target.value)} /></label>
            <div className="brand-list">
              {zichtbareMerken.length ? zichtbareMerken.map((merk) => <label className="brand-row" key={merk}>
                <span><input type="checkbox" checked={merkActief(merk)} onChange={(event) => wisselMerk(merk, event.target.checked)} /> {merk}</span>
                <span className="brand-count">{merkTellingen.get(merk) ?? 0}</span>
              </label>) : <p><small>Geen merk gevonden.</small></p>}
            </div>
          </div>
          <div className="filter-block">
            <h3>Type voer</h3>
            <div className="choices">{FOOD_TYPES.map(([key, label]) => <label className="inline" key={key}><input type="checkbox" checked={types.includes(key)} onChange={(e) => setTypes(e.target.checked ? [...types, key] : types.filter((item) => item !== key))} />{label}</label>)}</div>
          </div>
        </aside>
        <div className="content">
          <section><h2>Allergieën van je hond</h2><p><small>Kies wat je wilt vermijden. De lijst is fijnmazig — één groente, één vissoort of één kruid kan ook — dus open de groep die je nodig hebt.</small></p>{ALLERGEN_GROUPS.map((group) => {
            const gekozen = group.allergens.filter(({ key }) => allergens.includes(key)).length
            return <details className="allergen-group" key={group.key}>
              <summary>{group.label} {gekozen ? `· ${gekozen} gekozen` : `(${group.allergens.length})`}</summary>
              <div className="choices">{group.allergens.map(({ key, label }) => <label className="inline" key={key}><input type="checkbox" checked={allergens.includes(key)} onChange={(e) => setAllergens(e.target.checked ? [...allergens, key] : allergens.filter((item) => item !== key))} />{label}</label>)}</div>
            </details>
          })}</section>
          {loadError ? <section><h2>Kon de producten niet laden</h2><p role="alert">{loadError}</p><p>Er wordt hierdoor niets over de geschiktheid van voeding gezegd. Probeer het later opnieuw.</p></section> : loading ? <p>Laden…</p> : <>{termsError && <p role="alert">{termsError}</p>}<p className="legend"><mark className="uncertain-ingredient">rood</mark> = het etiket noemt de bron van dat ingrediënt niet ("dierlijk vet", "granen"). {allergens.length ? 'Het oordeel gaat per allergeen: een product komt alleen bij "Controleer" als zo\'n onduidelijkheid jouw allergeen kan bevatten.' : 'Je hebt nog geen allergeen gekozen, dus beoordelen we het hele etiket: bij "Etiket noemt elke bron" staat alleen een lijst die elke bron noemt en waarvan de tekst is nagelopen of automatisch overgenomen. Kies een allergeen om te zien welke producten daarvoor geschikt zijn.'} Reken op het etiket en de fabrikant, niet op deze site.</p>
            {geenMerken || geenTypes ? <section id="resultaten"><h2>Geen producten</h2><p>{filterMelding}</p></section> : (
              <section id="resultaten">
                <h2>Producten ({alleResultaten.length})</h2>
                <p className="result-summary">
                  <span className="summary-pill suitable">{allergens.length ? 'Geschikt' : 'Etiket noemt elke bron'}: {suitable.length}</span>
                  <span className="summary-pill check">Controleer: {check.length}</span>
                  {allergens.length > 0 && <span className="summary-pill excluded">Uitgesloten: {excluded.length}</span>}
                </p>
                <p className="result-order"><small>{allergens.length ? 'Eerst geschikt, dan controleren, dan uitgesloten.' : 'Eerst etiketten die elke bron noemen, dan etiketten om te controleren.'}</small></p>
                <Pagination page={huidigePagina} total={aantalPaginas} onChange={gaNaarPagina} />
                {zichtbareProducten.length ? zichtbareProducten.map(({ product, match }) => <ProductCard key={product.id} product={product} match={match} />) : <p>Geen producten gevonden voor deze keuze.</p>}
                <Pagination page={huidigePagina} total={aantalPaginas} onChange={gaNaarPagina} />
              </section>
            )}
          </>}
        </div>
      </div>
    </>}</main>
}
createRoot(document.getElementById('root')).render(<App />)
