import React, { useEffect, useMemo, useState } from 'react'
import { createRoot } from 'react-dom/client'
import { ALLERGEN_GROUPS, ALLERGEN_LABELS, detectIngredientSignals, FOOD_TYPES, markUncertainIngredients } from './lib/allergens'
import { productMatch } from './lib/matcher'
import { supabase } from './lib/supabase'
import './styles.css'

const blankForm = { brand: '', name: '', food_type: 'kibble', package_size: '', gtin: '', ingredients_text: '', source_url: '', last_checked_at: new Date().toISOString().slice(0, 10), published: false, uncertain: false, mapped: false, allergens: [] }

const MISSING_RPC = /PGRST202|Could not find the function|schema cache/i

function sourceDomain(url = '') {
  try { return new URL(url).hostname.replace(/^www\./, '') } catch { return '' }
}

function ProductCard({ product, match, excluded = false }) {
  const version = product.recipe_versions?.[0]
  return <article className={excluded ? 'product-card excluded' : 'product-card'}>
    <div><strong>{product.brand}</strong> — {product.name}</div>
    <small>{FOOD_TYPES.find(([key]) => key === product.food_type)?.[1]}{product.package_size ? ` · ${product.package_size}` : ''}</small>
    <p>{version?.ingredients_text ? markUncertainIngredients(version.ingredients_text).map((segment, index) => segment.uncertain ? <mark className="uncertain-ingredient" key={index}>{segment.text}</mark> : segment.text) : 'Geen ingrediëntenlijst ingevoerd.'}</p>
    <small>Laatst gecontroleerd: {product.last_checked_at ? new Date(product.last_checked_at).toLocaleDateString('nl-NL') : 'onbekend'}</small>
    {product.source_url?.startsWith('http') && <p><a className="product-link" href={product.source_url} target="_blank" rel="noreferrer">Bekijk product{sourceDomain(product.source_url) ? ` (${sourceDomain(product.source_url)})` : ''}</a></p>}
    <p className={excluded ? 'reason excluded' : 'reason'}>{excluded ? 'Uitgesloten vanwege: ' : ''}{match.reasons.map((reason) => ALLERGEN_LABELS[reason] || reason).join(' · ')}</p>
  </article>
}

function Admin({ onSaved }) {
  const [form, setForm] = useState(blankForm)
  const [message, setMessage] = useState('')
  const [catalogue, setCatalogue] = useState([])
  const [catalogueError, setCatalogueError] = useState('')
  const [saving, setSaving] = useState(false)
  const [editingId, setEditingId] = useState(null)
  const change = (field, value) => setForm((old) => ({ ...old, [field]: value }))
  const detectIngredients = () => {
    const detected = detectIngredientSignals(form.ingredients_text)
    change('allergens', detected.allergens)
    if (detected.uncertain) change('uncertain', true)
    setMessage(detected.allergens.length ? `Herkenning ingevuld: ${detected.allergens.map((key) => ALLERGEN_LABELS[key]).join(', ')}. Controleer dit altijd.` : 'Geen bekende allergiebronnen herkend. Controleer de lijst handmatig.')
  }
  const loadCatalogue = async () => {
    if (!supabase) return setCatalogueError('Supabase is nog niet geconfigureerd.')
    const { data, error } = await supabase.from('products').select('*, recipe_versions(*, recipe_ingredients(*))').eq('recipe_versions.is_current', true).order('brand').order('name')
    if (error) { setCatalogueError(error.message); setCatalogue([]); return }
    setCatalogueError(''); setCatalogue(data || [])
  }
  useEffect(() => { loadCatalogue() }, [])
  const reset = () => { setEditingId(null); setForm(blankForm); setMessage('') }
  const edit = (product) => {
    const version = product.recipe_versions?.[0]
    setEditingId(product.id)
    setForm({ brand: product.brand, name: product.name, food_type: product.food_type, package_size: product.package_size || '', gtin: product.gtin || '', ingredients_text: version?.ingredients_text || '', source_url: product.source_url || '', last_checked_at: product.last_checked_at, published: product.published, uncertain: version?.has_uncertain_ingredients || false, mapped: version?.ingredients_mapped ?? false, allergens: version?.recipe_ingredients?.map(({ allergen_key }) => allergen_key) || [] })
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
      p_has_uncertain_ingredients: form.uncertain,
      p_ingredients_mapped: form.mapped,
      p_allergens: form.allergens
    })
    setSaving(false)
    if (error) return setMessage(MISSING_RPC.test(error.message) ? 'De databasefunctie save_product_with_recipe ontbreekt nog. Voer eerst supabase/migrations/20261019120000_mapped_flag_and_atomic_save.sql uit in de Supabase SQL Editor.' : error.message)
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
    <button type="button" onClick={detectIngredients}>Herken allergiebronnen uit ingrediënten</button><p><small>Plak de tekst precies zoals op het etiket. De herkenning is een voorstel op basis van woorden in de lijst; controleer de vinkjes altijd zelf en vink daarna "volledig in kaart gebracht" aan. Zonder die bevestiging komt het product nooit bij "Geschikt" te staan.</small></p>{uncertainWords.length > 0 && <p><small>Niet met zekerheid te herleiden (verschijnt rood op de site): {uncertainWords.slice(0, 8).join(', ')}{uncertainWords.length > 8 ? ` en ${uncertainWords.length - 8} meer` : ''}. Noemt de lijst alleen zo'n verzamelnaam, vink dan ook de algemene categorie aan, bijvoorbeeld "Gevogelte (algemeen)" of "Granen (algemeen)".</small></p>}
    <fieldset><legend>Bevestigd aanwezige allergiebronnen</legend>{ALLERGEN_GROUPS.map((group) => <fieldset className="allergen-group" key={group.key}><legend>{group.label}</legend>{group.allergens.map(({ key, label }) => <label className="inline" key={key}><input type="checkbox" checked={form.allergens.includes(key)} onChange={(e) => change('allergens', e.target.checked ? [...form.allergens, key] : form.allergens.filter((item) => item !== key))} />{label}</label>)}</fieldset>)}</fieldset>
    <label className="inline"><input type="checkbox" checked={form.mapped} onChange={(e) => change('mapped', e.target.checked)} />Ingrediëntenlijst is volledig in kaart gebracht (geen allergeen gemist)</label>
    <label className="inline"><input type="checkbox" checked={form.uncertain} onChange={(e) => change('uncertain', e.target.checked)} />Ingrediëntenlijst bevat een onduidelijke categorie</label>
    <label className="inline"><input type="checkbox" checked={form.published} onChange={(e) => change('published', e.target.checked)} />Publiceren</label>
    <button disabled={saving}>{saving ? 'Opslaan…' : 'Opslaan'}</button>{editingId && <button type="button" onClick={reset}>Annuleren</button>}{message && <p aria-live="polite">{message}</p>}
    <h2>Catalogus beheren</h2>{catalogueError ? <p role="alert">Kon de catalogus niet laden: {catalogueError}</p> : catalogue.length ? catalogue.map((product) => <div className="admin-row" key={product.id}><span>{product.brand} — {product.name} {!product.published && '(concept)'} {product.recipe_versions?.[0]?.ingredients_mapped ? '' : '· nog niet bevestigd'}</span><button type="button" onClick={() => edit(product)}>Bewerken</button></div>) : <p>Nog geen producten ingevoerd.</p>}
  </form>
}

function App() {
  const [products, setProducts] = useState([]); const [loading, setLoading] = useState(true); const [loadError, setLoadError] = useState('')
  const [allergens, setAllergens] = useState([]); const [types, setTypes] = useState(FOOD_TYPES.map(([key]) => key))
  const [admin, setAdmin] = useState(false); const [session, setSession] = useState(null); const [isAdmin, setIsAdmin] = useState(false); const [email, setEmail] = useState(''); const [password, setPassword] = useState(''); const [authMessage, setAuthMessage] = useState(''); const [recovery, setRecovery] = useState(() => new URLSearchParams(window.location.hash.slice(1)).get('type') === 'recovery'); const [newPassword, setNewPassword] = useState(''); const [repeatPassword, setRepeatPassword] = useState('')
  const load = async () => { if (!supabase) { setLoadError('Supabase is nog niet geconfigureerd, dus er kunnen geen producten worden geladen.'); setLoading(false); return }; setLoading(true); const { data, error } = await supabase.from('products').select('*, recipe_versions(*, recipe_ingredients(*))').eq('published', true).eq('recipe_versions.is_current', true); if (error) { setLoadError(error.message); setProducts([]) } else { setLoadError(''); setProducts(data || []) }; setLoading(false) }
  useEffect(() => { load(); supabase?.auth.getSession().then(({ data }) => setSession(data.session)); const { data } = supabase?.auth.onAuthStateChange((event, next) => { setSession(next); if (event === 'PASSWORD_RECOVERY') setRecovery(true) }) || {}; return () => data?.subscription.unsubscribe() }, [])
  useEffect(() => { const checkAdmin = async () => { if (!session || !supabase) return setIsAdmin(false); const { data } = await supabase.from('admins').select('user_id').eq('user_id', session.user.id).maybeSingle(); setIsAdmin(Boolean(data)) }; checkAdmin() }, [session])
  const matches = useMemo(() => products.filter((product) => types.includes(product.food_type)).map((product) => ({ product, match: productMatch(product, allergens) })), [products, allergens, types])
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
  return <main><header><h1>Hondenvoervergelijker</h1><button className="link" onClick={() => setAdmin(!admin)}>{admin ? 'Terug naar vergelijken' : 'Beheer'}</button></header>
    {recovery ? <form className="login" onSubmit={updatePassword}><h2>Nieuw wachtwoord instellen</h2><p>Kies hieronder een nieuw wachtwoord voor het beheerdersaccount.</p><label>Nieuw wachtwoord<input type="password" required minLength="8" value={newPassword} onChange={(e) => setNewPassword(e.target.value)} /></label><label>Herhaal wachtwoord<input type="password" required minLength="8" value={repeatPassword} onChange={(e) => setRepeatPassword(e.target.value)} /></label><button>Wachtwoord opslaan</button>{authMessage && <p aria-live="polite">{authMessage}</p>}</form> : admin ? (isAdmin ? <Admin onSaved={load} /> : session ? <section><h2>Geen beheerdersrechten</h2><p>Dit account mag geen producten beheren.</p><button onClick={() => supabase.auth.signOut()}>Uitloggen</button></section> : <form className="login" onSubmit={login}><h2>Beheer inloggen</h2><label>E-mail<input type="email" required value={email} onChange={(e) => setEmail(e.target.value)} /></label><label>Wachtwoord<input type="password" required value={password} onChange={(e) => setPassword(e.target.value)} /></label><button>Inloggen</button>{authMessage && <p>{authMessage}</p>}</form>) : <>
      <aside><strong>Belangrijk:</strong> deze tool vergelijkt ingevoerde etiketinformatie. Hij is geen dierenartsadvies en geeft geen garantie. Controleer altijd de verpakking en overleg bij twijfel met een dierenarts.</aside>
      <section><h2>Allergieën van je hond</h2>{ALLERGEN_GROUPS.map((group) => <fieldset className="allergen-group" key={group.key}><legend>{group.label}</legend><div className="choices">{group.allergens.map(({ key, label }) => <label className="inline" key={key}><input type="checkbox" checked={allergens.includes(key)} onChange={(e) => setAllergens(e.target.checked ? [...allergens, key] : allergens.filter((item) => item !== key))} />{label}</label>)}</div></fieldset>)}<h2>Type voer</h2><div className="choices">{FOOD_TYPES.map(([key, label]) => <label className="inline" key={key}><input type="checkbox" checked={types.includes(key)} onChange={(e) => setTypes(e.target.checked ? [...types, key] : types.filter((item) => item !== key))} />{label}</label>)}</div></section>
      {loadError ? <section><h2>Kon de producten niet laden</h2><p role="alert">{loadError}</p><p>Er wordt hierdoor niets over de geschiktheid van voeding gezegd. Probeer het later opnieuw.</p></section> : loading ? <p>Laden…</p> : <><p className="legend"><mark className="uncertain-ingredient">rood</mark> = de bron van dat ingrediënt is niet met zekerheid vast te stellen (bijvoorbeeld "dierlijke bijproducten" of "granen"). Vraag de fabrikant om duidelijkheid.</p><section><h2>Geschikt ({suitable.length})</h2>{suitable.length ? suitable.map(({ product, match }) => <ProductCard key={product.id} product={product} match={match} />) : <p>Geen producten waarvan de ingrediëntenlijst volledig is nagelopen en waarin geen van de gekozen allergenen voorkomt.</p>}</section><section><h2>Controleer etiket/fabrikant ({check.length})</h2>{check.length ? check.map(({ product, match }) => <ProductCard key={product.id} product={product} match={match} />) : <p>Geen producten met een onzekere match.</p>}</section><section><h2>Uitgesloten ({excluded.length})</h2>{excluded.length ? excluded.map(({ product, match }) => <ProductCard key={product.id} product={product} match={match} excluded />) : <p>Geen enkel product bevat de gekozen allergenen.</p>}</section></>}
    </>}</main>
}
createRoot(document.getElementById('root')).render(<App />)
