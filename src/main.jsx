import React, { useEffect, useMemo, useState } from 'react'
import { createRoot } from 'react-dom/client'
import { ALLERGENS, ALLERGEN_LABELS, FOOD_TYPES } from './lib/allergens'
import { productMatch } from './lib/matcher'
import { supabase } from './lib/supabase'
import './styles.css'

const blankForm = { brand: '', name: '', food_type: 'kibble', package_size: '', gtin: '', ingredients_text: '', source_url: '', last_checked_at: new Date().toISOString().slice(0, 10), published: false, uncertain: false, allergens: [] }

function ProductCard({ product, match }) {
  const version = product.recipe_versions?.[0]
  return <article className="product-card">
    <div><strong>{product.brand}</strong> — {product.name}</div>
    <small>{FOOD_TYPES.find(([key]) => key === product.food_type)?.[1]}{product.package_size ? ` · ${product.package_size}` : ''}</small>
    <p>{version?.ingredients_text || 'Geen ingrediëntenlijst ingevoerd.'}</p>
    <small>Laatst gecontroleerd: {product.last_checked_at ? new Date(product.last_checked_at).toLocaleDateString('nl-NL') : 'onbekend'}</small>
    <p className="reason">{match.reasons.map((reason) => ALLERGEN_LABELS[reason] || reason).join(' · ')}</p>
  </article>
}

function Admin({ onSaved }) {
  const [form, setForm] = useState(blankForm)
  const [message, setMessage] = useState('')
  const [catalogue, setCatalogue] = useState([])
  const [editingId, setEditingId] = useState(null)
  const change = (field, value) => setForm((old) => ({ ...old, [field]: value }))
  const loadCatalogue = async () => {
    const { data } = await supabase.from('products').select('*, recipe_versions(*, recipe_ingredients(*))').eq('recipe_versions.is_current', true).order('brand').order('name')
    setCatalogue(data || [])
  }
  useEffect(() => { loadCatalogue() }, [])
  const reset = () => { setEditingId(null); setForm(blankForm); setMessage('') }
  const edit = (product) => {
    const version = product.recipe_versions?.[0]
    setEditingId(product.id)
    setForm({ brand: product.brand, name: product.name, food_type: product.food_type, package_size: product.package_size || '', gtin: product.gtin || '', ingredients_text: version?.ingredients_text || '', source_url: product.source_url || '', last_checked_at: product.last_checked_at, published: product.published, uncertain: version?.has_uncertain_ingredients || false, allergens: version?.recipe_ingredients?.map(({ allergen_key }) => allergen_key) || [] })
  }
  const save = async (event) => {
    event.preventDefault()
    if (!supabase) return setMessage('Voeg eerst de Supabase-omgevingsvariabelen toe.')
    setMessage('Opslaan…')
    const fields = {
      brand: form.brand, name: form.name, food_type: form.food_type, package_size: form.package_size || null,
      gtin: form.gtin || null, source_url: form.source_url || null, last_checked_at: form.last_checked_at,
      published: form.published
    }
    const { data: product, error } = await (editingId
      ? supabase.from('products').update(fields).eq('id', editingId).select().single()
      : supabase.from('products').insert(fields).select().single())
    if (error) return setMessage(error.message)
    if (editingId) {
      const { error: archiveError } = await supabase.from('recipe_versions').update({ is_current: false }).eq('product_id', product.id).eq('is_current', true)
      if (archiveError) return setMessage(archiveError.message)
    }
    const { error: versionError } = await supabase.from('recipe_versions').insert({ product_id: product.id, ingredients_text: form.ingredients_text, has_uncertain_ingredients: form.uncertain, is_current: true })
    if (versionError) return setMessage(versionError.message)
    const { data: version } = await supabase.from('recipe_versions').select('id').eq('product_id', product.id).eq('is_current', true).single()
    if (version && form.allergens.length) await supabase.from('recipe_ingredients').insert(form.allergens.map((allergen_key) => ({ recipe_version_id: version.id, allergen_key, certainty: 'confirmed' })))
    const wasEditing = Boolean(editingId)
    setForm(blankForm); setEditingId(null); setMessage(wasEditing ? 'Product en nieuwe receptversie opgeslagen.' : 'Product opgeslagen.'); onSaved(); loadCatalogue()
  }
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
    <fieldset><legend>Bevestigd aanwezige allergiebronnen</legend>{ALLERGENS.map(({ key, label }) => <label className="inline" key={key}><input type="checkbox" checked={form.allergens.includes(key)} onChange={(e) => change('allergens', e.target.checked ? [...form.allergens, key] : form.allergens.filter((item) => item !== key))} />{label}</label>)}</fieldset>
    <label className="inline"><input type="checkbox" checked={form.uncertain} onChange={(e) => change('uncertain', e.target.checked)} />Ingrediëntenlijst bevat een onduidelijke categorie</label>
    <label className="inline"><input type="checkbox" checked={form.published} onChange={(e) => change('published', e.target.checked)} />Publiceren</label>
    <button>Opslaan</button>{editingId && <button type="button" onClick={reset}>Annuleren</button>}{message && <p aria-live="polite">{message}</p>}
    <h2>Catalogus beheren</h2>{catalogue.length ? catalogue.map((product) => <div className="admin-row" key={product.id}><span>{product.brand} — {product.name} {!product.published && '(concept)'}</span><button type="button" onClick={() => edit(product)}>Bewerken</button></div>) : <p>Nog geen producten ingevoerd.</p>}
  </form>
}

function App() {
  const [products, setProducts] = useState([]); const [loading, setLoading] = useState(true)
  const [allergens, setAllergens] = useState([]); const [types, setTypes] = useState(FOOD_TYPES.map(([key]) => key))
  const [admin, setAdmin] = useState(false); const [session, setSession] = useState(null); const [isAdmin, setIsAdmin] = useState(false); const [email, setEmail] = useState(''); const [password, setPassword] = useState(''); const [authMessage, setAuthMessage] = useState(''); const [recovery, setRecovery] = useState(() => new URLSearchParams(window.location.hash.slice(1)).get('type') === 'recovery'); const [newPassword, setNewPassword] = useState(''); const [repeatPassword, setRepeatPassword] = useState('')
  const load = async () => { if (!supabase) { setLoading(false); return }; setLoading(true); const { data } = await supabase.from('products').select('*, recipe_versions(*, recipe_ingredients(*))').eq('published', true).eq('recipe_versions.is_current', true); setProducts(data || []); setLoading(false) }
  useEffect(() => { load(); supabase?.auth.getSession().then(({ data }) => setSession(data.session)); const { data } = supabase?.auth.onAuthStateChange((event, next) => { setSession(next); if (event === 'PASSWORD_RECOVERY') setRecovery(true) }) || {}; return () => data?.subscription.unsubscribe() }, [])
  useEffect(() => { const checkAdmin = async () => { if (!session || !supabase) return setIsAdmin(false); const { data } = await supabase.from('admins').select('user_id').eq('user_id', session.user.id).maybeSingle(); setIsAdmin(Boolean(data)) }; checkAdmin() }, [session])
  const matches = useMemo(() => products.filter((product) => types.includes(product.food_type)).map((product) => ({ product, match: productMatch(product, allergens) })), [products, allergens, types])
  const suitable = matches.filter(({ match }) => match.kind === 'suitable'); const check = matches.filter(({ match }) => match.kind === 'check')
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
      <section><h2>Allergieën van je hond</h2><div className="choices">{ALLERGENS.map(({ key, label }) => <label className="inline" key={key}><input type="checkbox" checked={allergens.includes(key)} onChange={(e) => setAllergens(e.target.checked ? [...allergens, key] : allergens.filter((item) => item !== key))} />{label}</label>)}</div><h2>Type voer</h2><div className="choices">{FOOD_TYPES.map(([key, label]) => <label className="inline" key={key}><input type="checkbox" checked={types.includes(key)} onChange={(e) => setTypes(e.target.checked ? [...types, key] : types.filter((item) => item !== key))} />{label}</label>)}</div></section>
      {loading ? <p>Laden…</p> : <><section><h2>Geschikt ({suitable.length})</h2>{suitable.length ? suitable.map(({ product, match }) => <ProductCard key={product.id} product={product} match={match} />) : <p>Nog geen aantoonbaar geschikte producten.</p>}</section><section><h2>Controleer etiket/fabrikant ({check.length})</h2>{check.length ? check.map(({ product, match }) => <ProductCard key={product.id} product={product} match={match} />) : <p>Geen producten met een onzekere match.</p>}</section></>}
    </>}</main>
}
createRoot(document.getElementById('root')).render(<App />)
