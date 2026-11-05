import React, { memo, useEffect, useMemo, useRef, useState } from 'react'
import { createRoot } from 'react-dom/client'
import { ALLERGEN_GROUPS, ALLERGEN_LABELS, ALLERGENS, allergenSearchTerms, assessLabel, detectIngredientSignals, FOOD_TYPES, markUncertainIngredients, missingAllergenKeys, setCustomTerms, sortAllergenKeys } from './lib/allergens'
import { isReviewOverdue, productMatch } from './lib/matcher'
import { ADDITIONAL_NUTRIENTS, CORE_NUTRIENTS, NUTRIENTS, formatteerVoedingswaarde, naarDrogeStof, valideerVoedingswaarden, voedingswaardeMap, voedingswaardeSamenvatting, voedingswaardeStatus, voldoetAanVoedingsfilters } from './lib/nutrition'
import { beoordeelVoedingswaarden, onbetrouwbareNutrienten } from './lib/plausibility'
import { track } from './lib/analytics'
import { leesCatalogusCache, schrijfProductenCache, schrijfTermenCache } from './lib/catalogCache'
import { leesAllergenen, leesMerken, leesSortering, leesTraitFilters, leesVoedingsfilters, leesVoertypes, leesZoekterm, schrijfFilters } from './lib/urlFilters'
import { classifyProduct, LIFE_STAGE_OPTIONS, SIZE_OPTIONS } from './lib/traits'
import { SORTING_BY_KEY, SORTING_OPTIONS } from './lib/sorting'
import { supabase } from './lib/supabase'
import { productPad } from './lib/productUrl'
import FeedbackButton from './components/Feedback'
import './styles.css'

const MISSING_RPC = /PGRST202|Could not find the function|schema cache/i
const TERMS_HINT = 'De woordenlijst kon niet worden geladen; de keuring gebruikt dan alleen de ingebouwde woorden. Dat is strenger, niet soepeler.'
const PAGE_SIZE = 24
const HAAL_PAGINA = 1000
// De volledige standaardset. De eerste drie staan altijd open; de rest zit
// achter één compacte uitklapregel. De schaal loopt van nul tot een ronde
// bovengrens die uit de catalogus komt en minimaal de ingestelde grens haalt.
// Energie staat in kcal per 100 g; de andere waarden in procenten as-fed.
const VOEDINGS_FILTERS = [
  { key: 'protein', label: 'Eiwit', eenheid: '%', stap: 0.5, decimalen: 1, bovengrens: 40, bovengrensStap: 5, groep: 'primair' },
  { key: 'fat', label: 'Vet', eenheid: '%', stap: 0.5, decimalen: 1, bovengrens: 40, bovengrensStap: 5, groep: 'primair' },
  { key: 'kcal', label: 'Energie', eenheid: 'kcal', stap: 5, decimalen: 0, bovengrens: 500, bovengrensStap: 50, groep: 'primair' },
  { key: 'fiber', label: 'Vezel', eenheid: '%', stap: 0.5, decimalen: 1, bovengrens: 40, bovengrensStap: 5, groep: 'extra' },
  { key: 'ash', label: 'As', eenheid: '%', stap: 0.5, decimalen: 1, bovengrens: 12, bovengrensStap: 1, groep: 'extra' },
  { key: 'moisture', label: 'Vocht', eenheid: '%', stap: 1, decimalen: 0, bovengrens: 100, bovengrensStap: 5, groep: 'extra' },
  { key: 'calcium', label: 'Calcium', eenheid: '%', stap: 0.1, decimalen: 2, bovengrens: 3, bovengrensStap: 0.5, groep: 'extra' },
  { key: 'phosphorus', label: 'Fosfor', eenheid: '%', stap: 0.1, decimalen: 2, bovengrens: 2, bovengrensStap: 0.5, groep: 'extra' },
  { key: 'omega3', label: 'Omega-3', eenheid: '%', stap: 0.1, decimalen: 2, bovengrens: 5, bovengrensStap: 0.5, groep: 'extra' },
  { key: 'omega6', label: 'Omega-6', eenheid: '%', stap: 0.1, decimalen: 2, bovengrens: 10, bovengrensStap: 1, groep: 'extra' }
]
const VOEDINGS_FILTER_BY_KEY = Object.fromEntries(VOEDINGS_FILTERS.map((filter) => [filter.key, filter]))
const PRIMAIRE_VOEDINGS_FILTERS = VOEDINGS_FILTERS.filter((filter) => filter.groep === 'primair')
const EXTRA_VOEDINGS_FILTERS = VOEDINGS_FILTERS.filter((filter) => filter.groep === 'extra')
const ALLERGEEN_SLEUTELS = ALLERGENS.map(({ key }) => key)
const GETAL2 = new Intl.NumberFormat('nl-NL', { maximumFractionDigits: 2 })
const GETAL1 = new Intl.NumberFormat('nl-NL', { maximumFractionDigits: 1 })
const GETAL0 = new Intl.NumberFormat('nl-NL', { maximumFractionDigits: 0 })

function formatteerFilterwaarde(filter, waarde) {
  const formatteer = filter.decimalen === 2 ? GETAL2 : filter.decimalen === 0 ? GETAL0 : GETAL1
  return formatteer.format(waarde)
}
const GROEP_ZOEKTERMEN = {
  protein: ['eiwit', 'eiwitten', 'eiwitbron'],
  carbohydrate: ['koolhydraat', 'koolhydraten'],
  vegetable: ['groente', 'groenten'],
  fruit: ['fruit'],
  herbs: ['kruid', 'kruiden'],
  other: ['overig']
}

// PostgREST geeft standaard maximaal 1000 rijen per verzoek terug. Zonder
// paginatie zouden producten na de eerste 1000 onzichtbaar blijven op de site
// en in Beheer. Vraag daarom in brokken van 1000 tot het einde.
async function haalAlleRijen(makeQuery) {
  const rijen = []
  for (let offset = 0; ; offset += HAAL_PAGINA) {
    const { data, error } = await makeQuery().range(offset, offset + HAAL_PAGINA - 1)
    if (error) return { data: null, error }
    rijen.push(...(data || []))
    if (!data || data.length < HAAL_PAGINA) break
  }
  return { data: rijen, error: null }
}

const PRODUCT_SELECT_BASIS = 'id,brand,name,food_type,package_size,source_url,source_status,last_checked_at,recipe_versions(id,imported_at,reviewed_at,import_note,nutrition_source_url,nutrition_checked_at,nutrition_note,recipe_nutrition(nutrient_key,value,basis))'
const PRODUCT_SELECT_VOL = 'id,brand,name,food_type,package_size,source_url,source_status,last_checked_at,recipe_versions(id,ingredients_text,imported_at,reviewed_at,import_note,nutrition_source_url,nutrition_checked_at,nutrition_note,recipe_ingredients(allergen_key,certainty),recipe_nutrition(nutrient_key,value,basis))'

// De catalogus is groter dan één pagina. Vraag de eerste twee pagina's meteen
// samen op, zodat de tweede niet op de eerste hoeft te wachten. Daarna gaan
// volgende paren pagina's ook parallel.
async function haalProducten(metTekst = false) {
  const select = metTekst ? PRODUCT_SELECT_VOL : PRODUCT_SELECT_BASIS
  const pagina = (offset) => supabase.from('products')
    .select(select)
    .eq('published', true)
    .eq('recipe_versions.is_current', true)
    .order('id')
    .range(offset, offset + HAAL_PAGINA - 1)

  const [eerste, tweede] = await Promise.all([pagina(0), pagina(HAAL_PAGINA)])
  if (eerste.error) return { data: null, error: eerste.error }
  if (tweede.error) return { data: null, error: tweede.error }
  const rijen = [...(eerste.data || []), ...(tweede.data || [])]
  if ((tweede.data || []).length < HAAL_PAGINA) return { data: rijen, error: null }

  for (let offset = 2 * HAAL_PAGINA; ; offset += 2 * HAAL_PAGINA) {
    const [a, b] = await Promise.all([pagina(offset), pagina(offset + HAAL_PAGINA)])
    if (a.error) return { data: null, error: a.error }
    if (b.error) return { data: null, error: b.error }
    rijen.push(...(a.data || []), ...(b.data || []))
    if ((a.data || []).length < HAAL_PAGINA || (b.data || []).length < HAAL_PAGINA) break
  }
  return { data: rijen, error: null }
}

const legeVoedingswaarden = Object.fromEntries(NUTRIENTS.map(({ key }) => [key, '']))
const blankForm = { brand: '', name: '', food_type: 'kibble', package_size: '', gtin: '', ingredients_text: '', source_url: '', last_checked_at: new Date().toISOString().slice(0, 10), published: false, reviewed: false, review_note: '', allergens: [], nutrition: legeVoedingswaarden, nutrition_source_url: '', nutrition_checked_at: '', nutrition_note: '' }

function sourceDomain(url = '') {
  try { return new URL(url).hostname.replace(/^www\./, '') } catch { return '' }
}

function datumKort(waarde) {
  if (!waarde) return ''
  const datum = new Date(waarde)
  return Number.isNaN(datum.getTime()) ? '' : datum.toLocaleDateString('nl-NL', { day: 'numeric', month: 'short', year: 'numeric' })
}

function decodeerBeoordelingen(data) {
  if (!data || typeof data !== 'object') return {}
  // De compacte vorm heeft één gedeelde woordenlijst: verborgen woorden en hun
  // allergeensleutels herhalen zich over veel producten. Zo blijft het bestand
  // klein zonder de uitleg op de kaarten te verliezen.
  const producten = data.producten && typeof data.producten === 'object' ? data.producten : data
  const woorden = Array.isArray(data.woorden) ? data.woorden : null
  return Object.fromEntries(Object.entries(producten).map(([id, beoordeling]) => {
    if (Array.isArray(beoordeling?.allergens) || Array.isArray(beoordeling?.keys)) return [id, beoordeling]
    const decodeer = (lijst) => (Array.isArray(lijst) ? lijst : []).map((index) => ALLERGEEN_SLEUTELS[index]).filter(Boolean)
    const decodeerWoorden = (lijst) => (Array.isArray(lijst) ? lijst : []).map((item) => {
      if (Array.isArray(item)) return { word: item[0], keys: decodeer(item[1]) }
      const paar = woorden?.[item]
      return paar ? { word: paar[0], keys: decodeer(paar[1]) } : null
    }).filter(Boolean)
    return [id, {
      allergens: decodeer(beoordeling?.a),
      keys: decodeer(beoordeling?.k),
      storedPresent: decodeer(beoordeling?.p),
      storedUnknown: decodeer(beoordeling?.u),
      hasLabel: Boolean(beoordeling?.l),
      transparent: Boolean(beoordeling?.t),
      hidden: decodeerWoorden(beoordeling?.d),
      unknown: Array.isArray(beoordeling?.n) ? beoordeling.n : [],
      hydrolysed: beoordeling?.h ?? { present: false, words: [], keys: [] }
    }]
  }))
}

// Zelfde regels als scripts/maak-seo-paginas.mjs, zodat een merknaam naar de
// juiste statische merkpagina linkt.
function merkSlug(naam = '') {
  return String(naam)
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .replace(/[øØ]/g, 'o')
    .replace(/[æÆ]/g, 'ae')
    .replace(/[œŒ]/g, 'oe')
    .replace(/[ß]/g, 'ss')
    .replace(/[đĐðÐ]/g, 'd')
    .replace(/[þÞ]/g, 'th')
    .replace(/[łŁ]/g, 'l')
    .replace(/&/g, ' en ')
    .replace(/['’`]/g, '')
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/^-+|-+$/g, '')
}

function normaliseerZoektekst(tekst = '') {
  return String(tekst)
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .replace(/[øØ]/g, 'o')
    .replace(/[æÆ]/g, 'ae')
    .toLowerCase()
    .trim()
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
const Ingredients = memo(function Ingredients({ text, loading = false, hasLabel = false, error = false }) {
  if (loading) return <p>Ingrediëntenlijst laden…</p>
  if (!text && error) return <p>De ingrediëntenlijst kon niet worden opgehaald. Probeer het opnieuw.</p>
  if (!text && hasLabel) return <p>De ingrediëntenlijst is nog niet geladen.</p>
  if (!text) return <p>Geen ingrediëntenlijst ingevoerd.</p>
  return <p>{markUncertainIngredients(text).map((segment, index) => segment.uncertain ? <mark className="uncertain-ingredient" key={index}>{segment.text}</mark> : segment.text)}</p>
})

function ProductCard({ product, match, aanbiedingen = [], nadruk = [], vergelijk = false, vergelijkVol = false, onVergelijk }) {
  const excluded = match.kind === 'excluded'
  const verdict = excluded ? 'Uitgesloten' : match.kind === 'check' ? 'Controleer etiket/fabrikant' : match.states.length ? 'Lijkt geschikt' : 'Etiket volledig'
  const verdictSymbool = excluded ? '✕' : match.kind === 'check' ? '?' : '✓'
  const version = product.recipe_versions?.[0]
  const [drogeStof, setDrogeStof] = useState(false)
  const [ingredientText, setIngredientText] = useState(version?.ingredients_text || '')
  const [ingredientLoading, setIngredientLoading] = useState(false)
  const [ingredientError, setIngredientError] = useState(false)
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
  // De herkomst van automatisch overgenomen etiketten staat in de disclaimer
  // bovenaan, niet op elke kaart. Alleen een handmatige controle krijgt een
  // badge; zo blijft "door een mens gecontroleerd" een uitzondering die je
  // echt kunt zien.
  const reviewedOp = version?.reviewed_at ? new Date(version.reviewed_at).toLocaleDateString('nl-NL') : ''
  const bronGecontroleerd = datumKort(product.last_checked_at)
  // Een etiket dat een bron niet noemt, krijgt één regel: de concrete woorden
  // ("geen bron voor bouillon") plus de allergenen die daar in kunnen zitten.
  // De algemene uitleg die hier eerder stond, zei hetzelfde en is vervallen.
  const checkReason = !match.hasLabel ? 'Er is nog geen ingrediëntenlijst ingevoerd.'
    : !match.reviewed && !match.imported ? 'Deze ingrediëntenlijst is nog niet tegen de bron gecontroleerd.'
      : match.sourceChanged ? 'De bronpagina bij de fabrikant is gewijzigd en wordt opnieuw gecontroleerd.'
        : match.stale ? 'Deze ingrediëntenlijst is langer dan zes maanden niet gecontroleerd.' : ''
  const foodTypeLabel = FOOD_TYPES.find(([key]) => key === product.food_type)?.[1]
  const packageSize = product.package_size && String(product.package_size).trim().toLowerCase() !== 'null' ? product.package_size : ''
  const voeding = voedingswaardeMap(version?.recipe_nutrition)
  const onbetrouwbaar = onbetrouwbareNutrienten(voeding, product.food_type)
  const veiligeRijen = (version?.recipe_nutrition || []).filter((rij) => !onbetrouwbaar.has(rij.nutrient_key))
  const voedingDroog = naarDrogeStof(version?.recipe_nutrition)
  const getoondeVoeding = Object.fromEntries(Object.entries(drogeStof && voedingDroog ? voedingDroog : voeding).filter(([key]) => !onbetrouwbaar.has(key)))
  const voedingSamenvatting = voedingswaardeSamenvatting(veiligeRijen, { voorkeur: nadruk })
  const plausibiliteit = beoordeelVoedingswaarden(voeding, product.food_type)
  const nutritionSource = version?.nutrition_source_url || product.source_url || ''
  const nutritionSourceDomain = sourceDomain(nutritionSource)
  const ingredientDomain = sourceDomain(product.source_url)
  const nutritionChecked = datumKort(version?.nutrition_checked_at)
  const nutritionStale = Boolean(version?.nutrition_checked_at) && isReviewOverdue(version.nutrition_checked_at)
  const nutritionNote = version?.nutrition_note || ''
  const buitenlandseBron = /Duitse|Duits|Franse|Frans|Engelse|Engels|Belgische|Belgisch|Oostenrijkse|anderstalig|buitenland|gearchiveerd|archief/i.test(nutritionNote)
  const bronWaarschuwing = nutritionSource && ingredientDomain && nutritionSourceDomain !== ingredientDomain
    ? 'Deze voedingswaarden komen van een andere pagina dan de ingrediëntenlijst. Controleer de verpakking.'
    : buitenlandseBron
      ? 'De voedingswaarden komen uit een andere taalversie van de productpagina. Controleer de Nederlandse verpakking.'
      : ''
  const voedingContext = product.food_type === 'wet'
    ? 'Natvoer bevat veel vocht (meestal 75–85%). De percentages zijn as-fed en daardoor niet direct te vergelijken met brokken of rauwvoer. Vergelijk binnen hetzelfde voertype of reken om naar droge stof.'
    : product.food_type === 'raw'
      ? 'Rauwvoer bevat veel vocht (meestal 60–75%). De percentages zijn as-fed en daardoor niet direct te vergelijken met brokken. Vergelijk binnen hetzelfde voertype of reken om naar droge stof.'
      : 'Brokken bevatten weinig vocht (meestal 6–10%). De percentages zijn as-fed. Vergelijk ze niet direct met natvoer of rauwvoer, want die bevatten veel meer vocht.'
  const laadIngredienten = async () => {
    if (ingredientText || ingredientLoading || !supabase || !version?.id) return
    setIngredientLoading(true)
    setIngredientError(false)
    try {
      const { data, error } = await supabase.from('recipe_versions').select('ingredients_text').eq('id', version.id).maybeSingle()
      if (error) throw error
      setIngredientText(data?.ingredients_text || '')
    } catch {
      setIngredientError(true)
    } finally {
      setIngredientLoading(false)
    }
  }
  return <article className={excluded ? 'product-card excluded' : `product-card ${match.kind}`}>
    <div className="product-card-top">
      <div className="product-title-group">
        <a className="product-brand" href={`/merken/${merkSlug(product.brand)}.html`} title={`Alle producten van ${product.brand}`}>{product.brand}</a>
        <h3 className="product-name"><a href={productPad(product)} title={`Productpagina van ${product.brand} ${product.name}`}>{product.name}</a></h3>
      </div>
      <div className="product-badges">
        <span className={`verdict-badge ${match.kind}`}><span aria-hidden="true">{verdictSymbool}</span> {verdict}</span>
        {match.reviewed && <span className="human-badge" title={`Ingrediëntenlijst handmatig tegen de bron gecontroleerd${reviewedOp ? ` op ${reviewedOp}` : ''}.`}>Door een mens gecontroleerd{reviewedOp ? ` · ${reviewedOp}` : ''}</span>}
      </div>
    </div>
    <div className="product-meta">
      {foodTypeLabel && <span className="meta-pill">{foodTypeLabel}</span>}
      {packageSize && <span className="meta-pill">{packageSize}</span>}
      {bronGecontroleerd && <span className="meta-pill" title="Laatste controle van de ingrediëntenbron">Bron gecontroleerd {bronGecontroleerd}</span>}
      {hydrolysed.present && <span className="meta-pill hydrolysed-pill">Gehydrolyseerd eiwit</span>}
      <label className={`compare-toggle${vergelijk ? ' active' : ''}`} title={vergelijk ? 'Verwijder uit de vergelijking' : vergelijkVol ? 'Maximaal 3 producten' : 'Voeg toe aan de vergelijking'}>
        <input type="checkbox" checked={vergelijk} disabled={vergelijkVol && !vergelijk} onChange={() => onVergelijk(product.id)} />
        Vergelijk
      </label>
      {product.source_url?.startsWith('http') && <a className="meta-source" href={product.source_url} target="_blank" rel="noreferrer" title="Officiële productpagina of gebruikte bron" onClick={() => track('bron-klik', { merk: product.brand, product: product.name, domein: sourceDomain(product.source_url) })}>Bekijk bron: {sourceDomain(product.source_url) || 'bron'} ↗</a>}
      <a className="product-more" href={productPad(product)}>Details →</a>
    </div>
    {voedingSamenvatting && <p className="nutrition-summary" title="Waarden zijn inclusief vocht (as-fed).">
      {product.food_type !== 'kibble' && <span className={`nutrition-kind ${product.food_type}`}>{foodTypeLabel}</span>}
      {voedingSamenvatting}
      {plausibiliteit.signalen.length > 0 && <span className="nutrition-flag" role="img" aria-label="Let op: de bronanalyse is niet consistent" title={plausibiliteit.signalen.join(' ')}>⚠</span>}
    </p>}
    {presentStates.length > 0 && !excluded && <p className="verdict present"><strong>Staat in de lijst:</strong> {presentStates.map((state) => `${ALLERGEN_LABELS[state.key]}${state.members.some((member) => member !== state.key) ? ` via ${labelList(state.members.filter((member) => member !== state.key))}` : ''}`).join(', ')}</p>}
    {unknownStates.length > 0 && <p className="verdict unknown"><strong>Kan erin zitten:</strong> {labelList(unknownStates.map((state) => state.key), 100)} — het etiket noemt geen bron voor {onbekendeWoorden.length > 5 ? `${onbekendeWoorden.slice(0, 5).join(', ')} en ${onbekendeWoorden.length - 5} meer` : onbekendeWoorden.length ? onbekendeWoorden.join(', ') : 'een ingrediënt'}</p>}
    {absentStates.length > 0 && <p className="verdict absent"><strong>Nergens genoemd:</strong> {labelList(absentStates.map((state) => state.key), 100)}</p>}
    <details className="ingredients" onToggle={(event) => { if (event.currentTarget.open) laadIngredienten() }}>
      <summary>Volledige ingrediëntenlijst bekijken{match.importNote && /vertaling/i.test(match.importNote) ? ' (vertaald)' : ''}</summary>
      <Ingredients text={ingredientText} loading={ingredientLoading} hasLabel={match.hasLabel} error={ingredientError} />
      {match.importNote && <p className="import-note"><small>{match.importNote}</small></p>}
    </details>
    {Object.keys(voeding).length > 0 && <details className="nutrition">
      <summary>Alle voedingswaarden</summary>
      <div className="nutrition-view">
        <div className="nutrition-view-toggle" role="group" aria-label="Weergave voedingswaarden">
          <button type="button" className={drogeStof ? '' : 'active'} aria-pressed={!drogeStof} onClick={() => setDrogeStof(false)}>As-fed</button>
          <button type="button" className={drogeStof ? 'active' : ''} aria-pressed={drogeStof} onClick={() => setDrogeStof(true)} disabled={!voedingDroog} title={voedingDroog ? 'Reken het vocht weg' : 'Niet mogelijk: het vochtgehalte ontbreekt'}>Droge stof</button>
        </div>
      </div>
      <dl className="nutrition-grid">
        {NUTRIENTS.filter(({ key }) => getoondeVoeding[key] != null).map((nutrient) => <div key={nutrient.key}>
          <dt>{nutrient.label}</dt>
          <dd>{formatteerVoedingswaarde(nutrient, getoondeVoeding[nutrient.key])}</dd>
        </div>)}
      </dl>
      <p className="nutrition-source"><small>Voedingsbron: {nutritionSource
        ? <a href={nutritionSource} target="_blank" rel="noreferrer" onClick={() => track('voedingsbron-klik', { merk: product.brand, product: product.name, domein: nutritionSourceDomain })}>{nutritionSourceDomain || 'open bron'} ↗</a>
        : 'niet apart vermeld'}{nutritionChecked ? ` · gecontroleerd op ${nutritionChecked}` : ' · controledatum onbekend'}{nutritionStale ? ' · controle nodig' : ''}</small></p>
      {bronWaarschuwing && <p className="nutrition-source-warning"><small>{bronWaarschuwing}</small></p>}
      {plausibiliteit.signalen.length > 0 && <div className="nutrition-warning"><strong>Controleer de bron:</strong> {plausibiliteit.signalen.slice(0, 2).join(' ')} Een onmogelijke waarde wordt niet getoond of als filter- of sorteerwaarde gebruikt.</div>}
      {drogeStof
        ? <p className="nutrition-context"><strong>Droge stof:</strong> het vocht is weggerekend, zodat je natvoer en brokken eerlijk kunt vergelijken. De energie is per 100 g droge stof.</p>
        : <p className={`nutrition-context ${product.food_type}`}><strong>Let op:</strong> {voedingContext}</p>}
      <p className="nutrition-note"><small>{drogeStof ? 'Weergave op droge stof (vocht weggerekend).' : 'Waarden as-fed (inclusief vocht).'}{version?.nutrition_note ? ` ${version.nutrition_note}` : ''}</small></p>
    </details>}
    {hydrolysed.present && <p className="note-hydrolysed"><strong>Gehydrolyseerd eiwit:</strong> {hydrolysed.words.length ? `dit etiket noemt ${hydrolysed.words.join(', ')} in gehydrolyseerde vorm` : 'dit etiket noemt gehydrolyseerde eiwitten'}: de eiwitketens zijn opgeknipt, waardoor het lichaam ze vaak niet meer als allergeen herkent. Dierenartsen kiezen zo'n voer juist bij een allergie; deze site telt de bron toch mee, want alleen je dierenarts kan beoordelen of het in jouw geval werkt.</p>}
    {excluded && <p className="reason excluded">Uitgesloten vanwege: {match.presentStates.map((state) => ALLERGEN_LABELS[state.key]).join(' · ')}</p>}
    {!excluded && checkReason && <p className="reason">Controleer: {checkReason}</p>}
    {!match.states.length && (verborgenWoorden.length > 0 || nietHerkendeWoorden.length > 0) && <p className="reason"><small>Let op: {verborgenWoorden.length
      ? `dit etiket noemt geen bron voor ${verborgenWoorden.join(', ')}. ${nietHerkendeWoorden.length ? 'Omdat er ook woorden in staan die de keuring niet kent, kan elk allergeen erin zitten.' : dektElkAllergeen ? 'Daardoor kan elk allergeen erin zitten.' : `${labelList(verborgenKeys)} kunnen daar in zitten.`}`
      : 'dit etiket bevat woorden die de keuring niet kent. Daardoor kan elk allergeen erin zitten.'}</small></p>}
    {aanbiedingen.length > 0 && <div className="shop-links">
      {aanbiedingen.map((aanbieding) => <a
        key={`${aanbieding.winkel}-${aanbieding.url}`}
        className="shop-link"
        href={aanbieding.url}
        target="_blank"
        rel="sponsored nofollow noopener noreferrer"
        title={`Affiliate-link naar ${aanbieding.winkel}. Wij ontvangen een kleine commissie.`}
        onClick={() => track('winkel-klik', { winkel: aanbieding.winkel, merk: product.brand, product: product.name })}
      >{aanbieding.winkel}{aanbieding.maat ? ` (${aanbieding.maat})` : ''}</a>)}
      <span className="shop-note">Affiliate-links · rechtstreeks naar de winkel</span>
    </div>}
  </article>
}

// Eén pagina met producten tegelijk. Bij 271 producten was de lijst anders
// duizenden pixels lang; nu zie je steeds 24 kaarten en kun je gericht verder
// bladeren. Geen lange keuzelijst met tientallen pagina's: een paar
// genummerde knoppen rond de huidige pagina is op mobiel veel sneller.
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
  return <nav className="pager" aria-label="Productpagina's">
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

// Dubbele schuif met twee aparte duimknoppen. De twee range-inputs liggen over
// elkaar; alleen de duimknoppen vangen aanwijzingen, zodat slepen en pijltjes
// allebei werken. De tekstvakken eronder zijn voor wie een exacte grens wil
// intypen. Een leeg of ongeldig tekstvak valt bij verlaten terug op de vorige
// waarde; er wordt nooit een verkeerde grens stilzwijgend opgeslagen.
function NutritionRangeFilter({ filter, grenzen, waarde, aantal, onChange, onReset }) {
  const [minTekst, setMinTekst] = useState(null)
  const [maxTekst, setMaxTekst] = useState(null)
  const actief = waarde.min > grenzen.min || waarde.max < grenzen.max
  const formaat = (getal) => formatteerFilterwaarde(filter, getal)
  const percentage = (getal) => ((getal - grenzen.min) / (grenzen.max - grenzen.min)) * 100
  const minZijde = percentage(waarde.min)
  const maxZijde = percentage(waarde.max)
  const klem = (getal, onder, boven) => Math.min(Math.max(getal, onder), boven)
  const pasAan = (soort, ruw) => {
    const getal = Number(String(ruw).replace(',', '.'))
    if (!Number.isFinite(getal)) return
    if (soort === 'min') onChange({ min: klem(getal, grenzen.min, waarde.max), max: waarde.max })
    else onChange({ min: waarde.min, max: klem(getal, waarde.min, grenzen.max) })
  }
  useEffect(() => { setMinTekst(null); setMaxTekst(null) }, [waarde.min, waarde.max])
  const bevestig = (soort) => {
    const tekst = soort === 'min' ? minTekst : maxTekst
    if (tekst !== null) pasAan(soort, tekst)
    if (soort === 'min') setMinTekst(null)
    else setMaxTekst(null)
  }
  const invoer = (soort) => <input
    className={`range-number range-number-${soort}`}
    type="text"
    inputMode="decimal"
    value={soort === 'min' ? (minTekst ?? formaat(waarde.min)) : (maxTekst ?? formaat(waarde.max))}
    onChange={(event) => soort === 'min' ? setMinTekst(event.target.value) : setMaxTekst(event.target.value)}
    onBlur={() => bevestig(soort)}
    onKeyDown={(event) => { if (event.key === 'Enter') event.currentTarget.blur() }}
    aria-label={`${soort === 'min' ? 'Minimum' : 'Maximum'} ${filter.label} in ${filter.eenheid}`}
  />
  return <div className={`nutrition-filter${actief ? ' active' : ''}`}>
    <div className="nutrition-filter-head">
      <span className="nutrition-filter-name" title={`${GETAL0.format(aantal)} producten met een opgegeven ${filter.label.toLowerCase()}-waarde`}>{filter.label}<span className="nutrition-filter-count" aria-label={`${GETAL0.format(aantal)} producten met een opgegeven waarde`}>{GETAL0.format(aantal)}</span></span>
      <div className="range-fields">
        {invoer('min')}
        <span className="range-dash" aria-hidden="true">–</span>
        {invoer('max')}
        <span className="range-unit">{filter.eenheid}</span>
      </div>
      {actief && <button type="button" className="range-reset" onClick={onReset} aria-label={`${filter.label}filter wissen`} title={`${filter.label}filter wissen`}>×</button>}
    </div>
    <div className="range-slider">
      <div className="range-track" aria-hidden="true"><div className="range-fill" style={{ left: `${minZijde}%`, width: `${Math.max(0, maxZijde - minZijde)}%` }} /></div>
      <input className="range-input range-min" type="range" min={grenzen.min} max={grenzen.max} step={filter.stap} value={waarde.min} style={{ zIndex: minZijde > 50 ? 5 : 3 }} onChange={(event) => onChange({ min: Math.min(Number(event.target.value), waarde.max), max: waarde.max })} aria-label={`Minimum ${filter.label}`} />
      <input className="range-input range-max" type="range" min={grenzen.min} max={grenzen.max} step={filter.stap} value={waarde.max} style={{ zIndex: 4 }} onChange={(event) => onChange({ min: waarde.min, max: Math.max(Number(event.target.value), waarde.min) })} aria-label={`Maximum ${filter.label}`} />
    </div>
  </div>
}

function beschrijfVoedingsbereik(filter, bereik, grenzen) {
  const eenheid = filter.eenheid === '%' ? '%' : ` ${filter.eenheid}`
  if (bereik.min <= grenzen.min) return `${filter.label} tot ${formatteerFilterwaarde(filter, bereik.max)}${eenheid}`
  if (bereik.max >= grenzen.max) return `${filter.label} vanaf ${formatteerFilterwaarde(filter, bereik.min)}${eenheid}`
  return `${filter.label} ${formatteerFilterwaarde(filter, bereik.min)}–${formatteerFilterwaarde(filter, bereik.max)}${eenheid}`
}

function CompareDialog({ producten, allergenen = [], assessments = null, onClose }) {
  const [drogeStof, setDrogeStof] = useState(false)
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
  const kanDroog = producten.every((product) => voedingswaardeMap(product.recipe_versions?.[0]?.recipe_nutrition).moisture != null)
  const waardenVoor = (product) => {
    const rijen = product.recipe_versions?.[0]?.recipe_nutrition
    return drogeStof ? (naarDrogeStof(rijen) ?? {}) : voedingswaardeMap(rijen)
  }
  const rijen = NUTRIENTS.filter((nutrient) => !(drogeStof && nutrient.key === 'moisture'))
  const matchVoor = (product) => productMatch(product, allergenen, new Date(), assessments?.[product.id] ?? null)
  const oordeelLabel = (match) => allergenen.length
    ? match.kind === 'excluded' ? 'Uitgesloten' : match.kind === 'check' ? 'Controleer' : 'Lijkt geschikt'
    : match.transparent ? 'Etiket volledig' : 'Controleer etiket'
  const oordeelSymbool = (match) => allergenen.length
    ? match.kind === 'excluded' ? '✕' : match.kind === 'check' ? '?' : '✓'
    : match.transparent ? '✓' : '?'
  return <div className="compare-overlay" role="presentation" onMouseDown={(event) => { if (event.target === event.currentTarget) onClose() }}>
    <div ref={panelRef} className="compare-panel" role="dialog" aria-modal="true" aria-labelledby="compare-title">
      <div className="compare-head">
        <h2 id="compare-title">Producten vergelijken</h2>
        <button ref={sluitRef} type="button" className="compare-close" onClick={onClose} aria-label="Sluit vergelijking">×</button>
      </div>
      <div className="nutrition-view-toggle" role="group" aria-label="Weergave vergelijking">
        <button type="button" className={drogeStof ? '' : 'active'} aria-pressed={!drogeStof} onClick={() => setDrogeStof(false)}>As-fed</button>
        <button type="button" className={drogeStof ? 'active' : ''} aria-pressed={drogeStof} onClick={() => setDrogeStof(true)} disabled={!kanDroog} title={kanDroog ? 'Reken het vocht weg' : 'Niet mogelijk: van minstens één product ontbreekt het vochtgehalte'}>Droge stof</button>
      </div>
      {!kanDroog && <p className="compare-note">Droge stof is niet beschikbaar omdat van minstens één product het vochtgehalte ontbreekt.</p>}
      <p className="compare-swipe">Veeg horizontaal om alle producten te zien.</p>
      <p className="compare-note compare-allergen-note">{allergenen.length
        ? `Allergeenoordeel op basis van: ${allergenen.map((key) => ALLERGEN_LABELS[key] ?? key).join(', ')}.`
        : 'Kies allergenen in de vergelijker om per product het allergenoordeel te zien.'}</p>
      <div className="compare-scroll">
        <table className="compare-table">
          <thead><tr><th scope="col">Product</th>{producten.map((product) => <th key={product.id} scope="col"><span className="compare-product-name">{product.brand}</span>{product.name}<small>{FOOD_TYPES.find(([key]) => key === product.food_type)?.[1] ?? product.food_type}{product.package_size && String(product.package_size).toLowerCase() !== 'null' ? ` · ${product.package_size}` : ''}</small></th>)}</tr></thead>
          <tbody>
            <tr className="compare-verdict-row">
              <th scope="row">Allergeenoordeel</th>
              {producten.map((product) => {
                const match = matchVoor(product)
                const details = []
                if (allergenen.length) {
                  if (match.presentStates.length) details.push(`Noemt: ${match.presentStates.map((state) => ALLERGEN_LABELS[state.key]).join(', ')}`)
                  if (match.unknownStates.length) details.push(`Kan erin zitten: ${match.unknownStates.map((state) => ALLERGEN_LABELS[state.key]).join(', ')}`)
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
            {rijen.map((nutrient) => <tr key={nutrient.key}><th scope="row">{nutrient.label}</th>{producten.map((product) => {
              const waarde = waardenVoor(product)[nutrient.key]
              return <td key={product.id}>{waarde == null ? <span className="compare-missing">—</span> : formatteerVoedingswaarde(nutrient, waarde)}</td>
            })}</tr>)}
          </tbody>
        </table>
      </div>
      <p className="compare-note">{drogeStof ? 'Droge stof: het vocht is weggerekend; energie per 100 g droge stof.' : 'As-fed: inclusief vocht.'} Controleer voor aankoop altijd de verpakking.</p>
    </div>
  </div>
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
    const { data, error } = await haalAlleRijen(() => supabase.from('products').select('id,brand,name,food_type,package_size,gtin,source_url,source_status,source_note,last_checked_at,published,recipe_versions(id,ingredients_text,imported_at,reviewed_at,review_note,import_note,source_changed_at,nutrition_source_url,nutrition_checked_at,nutrition_note,recipe_ingredients(allergen_key,certainty),recipe_nutrition(nutrient_key,value,basis,qualifier,note))').eq('recipe_versions.is_current', true).order('brand').order('name'))
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
      const bronGewijzigd = product.source_status === 'gewijzigd'
      const openWoorden = uitslag ? [...new Set(uitslag.hidden.map(({ word }) => word))] : []
      const onbekend = uitslag?.unknown ?? []
      const taken = []
      if (!version?.ingredients_text) taken.push('nog geen ingrediëntenlijst')
      else if (!nagelopen && !automatisch) taken.push('nog niet tegen de bron gecontroleerd')
      if (bronGewijzigd) taken.push('bronpagina bij de fabrikant is gewijzigd')
      if (version?.ingredients_text && verouderd) taken.push('langer dan zes maanden niet gecontroleerd')
      if (onbekend.length) taken.push(`woorden die de keuring niet kent: ${onbekend.join(', ')}`)
      const herkomst = automatisch
        ? `automatisch overgenomen${sourceDomain(product.source_url) ? ` van ${sourceDomain(product.source_url)}` : ''}${version?.imported_at ? ` op ${new Date(version.imported_at).toLocaleDateString('nl-NL')}` : ''} · nog niet door een mens nagelopen`
        : ''
      return { product, version, uitslag, nagelopen, automatisch, herkomst, verouderd, bronGewijzigd, openWoorden, onbekend, taken, schoon: uitslag?.status === 'schoon' && !onbekend.length }    })
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
    setForm({
      brand: product.brand,
      name: product.name,
      food_type: product.food_type,
      package_size: product.package_size || '',
      gtin: product.gtin || '',
      ingredients_text: version?.ingredients_text || '',
      source_url: product.source_url || '',
      last_checked_at: product.last_checked_at,
      published: product.published,
      reviewed: Boolean(version?.reviewed_at),
      review_note: version?.review_note || '',
      allergens: version?.recipe_ingredients?.map(({ allergen_key }) => allergen_key) || [],
      nutrition: { ...legeVoedingswaarden, ...Object.fromEntries((version?.recipe_nutrition ?? []).map(({ nutrient_key, value }) => [nutrient_key, value ?? ''])) },
      nutrition_source_url: version?.nutrition_source_url || '',
      nutrition_checked_at: version?.nutrition_checked_at || '',
      nutrition_note: version?.nutrition_note || ''
    })
  }
  const save = async (event) => {
    event.preventDefault()
    if (!supabase) return setMessage('Voeg eerst de Supabase-omgevingsvariabelen toe.')
    if (saving) return
    const voeding = valideerVoedingswaarden(form.nutrition)
    if (voeding.fouten.length) return setMessage(voeding.fouten.join(' '))
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
      p_allergens: form.allergens,
      p_nutrition: {
        source_url: form.nutrition_source_url || form.source_url || null,
        checked_at: form.nutrition_checked_at || form.last_checked_at || null,
        note: form.nutrition_note || null,
        values: voeding.waarden
      }
    })
    setSaving(false)
    if (error) return setMessage(MISSING_RPC.test(error.message) ? 'De databasefunctie save_product_with_recipe ontbreekt nog of heeft nog de oude vorm. Voer eerst supabase/migrations/20261030180000_voedingswaarden.sql uit in de Supabase SQL Editor.' : error.message)
    const wasEditing = Boolean(editingId)
    setForm(blankForm); setEditingId(null); setMessage(wasEditing ? 'Product en nieuwe receptversie opgeslagen.' : 'Product opgeslagen.'); onSaved(); loadCatalogue()
  }

  const uncertainWords = useMemo(() => form.ingredients_text ? [...new Set(markUncertainIngredients(form.ingredients_text).filter((segment) => segment.uncertain).map((segment) => segment.text))] : [], [form.ingredients_text])
  const ingevuldeKernwaarden = CORE_NUTRIENTS.filter(({ key }) => String(form.nutrition?.[key] ?? '').trim() !== '').length
  const ingevuldeAanvullende = ADDITIONAL_NUTRIENTS.filter(({ key }) => String(form.nutrition?.[key] ?? '').trim() !== '').length
  const voedingTelling = useMemo(() => {
    let volledig = 0
    let gedeeltelijk = 0
    let ontbreekt = 0
    for (const product of catalogue) {
      const status = voedingswaardeStatus(product.recipe_versions?.[0]?.recipe_nutrition ?? [])
      if (status.volledig) volledig += 1
      else if (status.gedeeltelijk) gedeeltelijk += 1
      else ontbreekt += 1
    }
    return { volledig, gedeeltelijk, ontbreekt }
  }, [catalogue])
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
    <fieldset className="nutrition-form">
      <legend>Voedingswaarden</legend>
      <p><small>Neem de analytische bestanddelen over zoals op het etiket. Percentages zijn as-fed (inclusief vocht); vergelijk natvoer niet direct met brokken. Laat leeg wat de fabrikant niet vermeldt; vul niets aan.</small></p>
      <div className="nutrition-form-grid">
        {NUTRIENTS.map((nutrient) => <label key={nutrient.key}>{nutrient.label} ({nutrient.unit === 'kcal/100g' ? 'kcal/100 g' : nutrient.unit})<input inputMode="decimal" value={form.nutrition?.[nutrient.key] ?? ''} placeholder={nutrient.unit === '%' ? 'bijv. 26' : 'bijv. 370'} onChange={(event) => change('nutrition', { ...form.nutrition, [nutrient.key]: event.target.value })} /></label>)}
      </div>
      <label>Bron voedingswaarden<input value={form.nutrition_source_url} placeholder="Leeg = de productbron" onChange={(event) => change('nutrition_source_url', event.target.value)} /></label>
      <label>Gecontroleerd op<input type="date" value={form.nutrition_checked_at} onChange={(event) => change('nutrition_checked_at', event.target.value)} /></label>
      <label>Notitie<input value={form.nutrition_note} placeholder="bijv. kcal niet vermeld op de bron" onChange={(event) => change('nutrition_note', event.target.value)} /></label>
      <p><small>{ingevuldeKernwaarden} van {CORE_NUTRIENTS.length} kernwaarden en {ingevuldeAanvullende} van {ADDITIONAL_NUTRIENTS.length} aanvullende waarden ingevuld. Ontbrekende waarden worden niet geschat.</small></p>
    </fieldset>
    <label className="inline"><input type="checkbox" checked={form.reviewed} onChange={(e) => change('reviewed', e.target.checked)} />Ik heb deze ingrediëntenlijst tegen de bron gecontroleerd</label>
    <label>Aantekening (optioneel)<input value={form.review_note} placeholder="bijv. nagevraagd bij de fabrikant op 12-10" onChange={(e) => change('review_note', e.target.value)} /></label>
    <p><small>Nagekeken betekent: deze tekst is de tekst van de fabrikant. Het zegt niet dat er geen allergeen in zit — dat antwoord geeft de vergelijking per allergeen uit de tekst zelf. Verandert de tekst, dan vervalt de bevestiging automatisch en komt het product terug in de takenlijst.</small></p>
    <label className="inline"><input type="checkbox" checked={form.published} onChange={(e) => change('published', e.target.checked)} />Publiceren</label>
    <button disabled={saving}>{saving ? 'Opslaan…' : 'Opslaan'}</button>{editingId && <button type="button" onClick={reset}>Annuleren</button>}{message && <p aria-live="polite">{message}</p>}

    <h2>Wat vraagt aandacht ({keuring.teDoen.length})</h2>
    <p><small>{catalogue.length} producten · {keuring.klaar.length} klaar (waarvan {keuring.teControleren.length} automatisch overgenomen en nog niet nagelopen) · {keuring.teDoen.length} met een openstaand punt. Een product is klaar als de tekst van de bron komt (nagekeken of automatisch overgenomen) en de keuring geen woorden meer over heeft. Voedingswaarden: {voedingTelling.volledig} volledig, {voedingTelling.gedeeltelijk} gedeeltelijk, {voedingTelling.ontbreekt} ontbrekend.</small></p>
    {catalogueError ? <p role="alert">Kon de catalogus niet laden: {catalogueError}</p> : keuring.teDoen.length ? keuring.teDoen.map(({ product, version, openWoorden, onbekend, taken, nagelopen, automatisch, herkomst, verouderd, bronGewijzigd, schoon }) => {
      // Het etiket zelf moet nog langs de bron, of alleen een woord wacht nog op
      // een indeling. Dat verschil bepaalt welke knop hier iets oplost.
      const tekstNodig = (!nagelopen && !automatisch) || verouderd || bronGewijzigd
      return <div className="admin-row" key={product.id}>
        <span><strong>{product.brand}</strong> — {product.name} {!product.published && '(concept)'} · {taken.join(' · ')}{herkomst ? ` · ${herkomst}` : ''}{openWoorden.length ? ` · etiket noemt geen bron voor: ${openWoorden.slice(0, 4).join(', ')}${openWoorden.length > 4 ? ` en ${openWoorden.length - 4} meer` : ''}` : ''}{tekstNodig && !automatisch && schoon ? ' · de keuring ziet hier geen open punten' : ''}{tekstNodig && onbekend.length ? ` · onbekende woorden: ${onbekend.slice(0, 4).join(', ')}${onbekend.length > 4 ? ` en ${onbekend.length - 4} meer` : ''}` : ''}{!tekstNodig ? ' · dit verdwijnt zodra je dat woord hieronder indeelt' : ''}</span>
        {version && tekstNodig && <button type="button" disabled={working} onClick={() => markReviewed({ product, version, openWoorden, onbekend, taken })}>{version.reviewed_at || bronGewijzigd ? 'Opnieuw nagelopen' : 'Nagelopen'}</button>}
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
    {keuring.teControleren.length ? <details><summary>Deze etiketten doen al mee op de site; een handmatige controle is nog niet vastgelegd</summary>
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

function leesAllergenenUitUrl() {
  return leesAllergenen(new URLSearchParams(window.location.search))
}

function zetFiltersInUrl(brands, gekozenAllergenen, alleMerken, brandMode, voeding, types, sortering, zoek, lifeStages, sizes) {
  const params = schrijfFilters(new URLSearchParams(window.location.search), {
    brands,
    mode: brandMode,
    allergenen: gekozenAllergenen,
    alleMerken,
    voeding,
    types,
    sortering,
    zoek,
    lifeStages,
    sizes
  })
  const zoekstring = params.toString()
  const volgende = `${window.location.pathname}${zoekstring ? `?${zoekstring}` : ''}${window.location.hash}`
  const huidig = `${window.location.pathname}${window.location.search}${window.location.hash}`
  if (volgende !== huidig) window.history.replaceState(null, '', volgende)
}

function App() {
  // De vorige catalogus staat meteen klaar; de nieuwste versie wordt op de
  // achtergrond opgehaald en vervangt die stilzwijgend.
  const [cacheBijStart] = useState(leesCatalogusCache)
  const [products, setProducts] = useState(cacheBijStart?.products ?? [])
  const [productenKlaar, setProductenKlaar] = useState(Boolean(cacheBijStart?.products))
  const [assessments, setAssessments] = useState({})
  const [assessmentsKlaar, setAssessmentsKlaar] = useState(false)
  const [catalogusMetTekst, setCatalogusMetTekst] = useState(false)
  const [loadError, setLoadError] = useState('')
  const [verversFout, setVerversFout] = useState('')
  const [verversen, setVerversen] = useState(false)
  const [terms, setTerms] = useState(cacheBijStart?.terms ?? [])
  const [termenKlaar, setTermenKlaar] = useState(Boolean(cacheBijStart?.terms))
  const [termsError, setTermsError] = useState(''); const [termsOud, setTermsOud] = useState(false)
  const loading = !productenKlaar || !termenKlaar || !assessmentsKlaar
  const [allergens, setAllergens] = useState(leesAllergenenUitUrl); const [types, setTypes] = useState(() => leesVoertypes(new URLSearchParams(window.location.search)))
  const [voedingsfilters, setVoedingsfilters] = useState(() => leesVoedingsfilters(new URLSearchParams(window.location.search)))
  const [zoekterm, setZoekterm] = useState(() => leesZoekterm(new URLSearchParams(window.location.search)))
  const [lifeStages, setLifeStages] = useState(() => leesTraitFilters(new URLSearchParams(window.location.search)).lifeStages)
  const [sizes, setSizes] = useState(() => leesTraitFilters(new URLSearchParams(window.location.search)).sizes)
  const [extraOpen, setExtraOpen] = useState(() => {
    const begin = leesVoedingsfilters(new URLSearchParams(window.location.search))
    return EXTRA_VOEDINGS_FILTERS.some((filter) => begin[filter.key])
  })
  const [selectedBrands, setSelectedBrands] = useState(null); const [brandMode, setBrandMode] = useState('include'); const [brandSearch, setBrandSearch] = useState('')
  const [allergenSearch, setAllergenSearch] = useState('')
  const [urlKlaar, setUrlKlaar] = useState(false)
  const [admin, setAdmin] = useState(() => new URLSearchParams(window.location.search).get('beheer') === '1'); const [session, setSession] = useState(null); const [isAdmin, setIsAdmin] = useState(false); const [email, setEmail] = useState(''); const [password, setPassword] = useState(''); const [authMessage, setAuthMessage] = useState(''); const [recovery, setRecovery] = useState(() => new URLSearchParams(window.location.hash.slice(1)).get('type') === 'recovery'); const [newPassword, setNewPassword] = useState(''); const [repeatPassword, setRepeatPassword] = useState('')
  const [matches, setMatches] = useState([])
  const [aanbod, setAanbod] = useState({})
  const [matchesKlaar, setMatchesKlaar] = useState(false)
  const [page, setPage] = useState(1)
  const [sortering, setSortering] = useState(() => leesSortering(new URLSearchParams(window.location.search)))
  const [vergelijkIds, setVergelijkIds] = useState([])
  const [vergelijkOpen, setVergelijkOpen] = useState(false)
  const [filtersOpen, setFiltersOpen] = useState(() => !window.matchMedia('(max-width: 760px)').matches)
  const [advancedOpen, setAdvancedOpen] = useState(() => Object.keys(voedingsfilters).length > 0 || selectedBrands !== null)
  useEffect(() => {
    if (Object.keys(voedingsfilters).length || selectedBrands !== null) setAdvancedOpen(true)
  }, [voedingsfilters, selectedBrands])
  const diepeLinkToegepast = useRef(false)
  // Winkelaanbiedingen zijn een losse laag. Ontbreekt het bestand of is het
  // leeg, dan verandert er niets aan de kaarten.
  useEffect(() => {
    let actief = true
    fetch('/winkels.json', { cache: 'no-cache' })
      .then((antwoord) => (antwoord.ok ? antwoord.json() : null))
      .then((data) => {
        if (actief) setAanbod(data && typeof data.aanbieders === 'object' ? data.aanbieders : {})
      })
      .catch(() => {})
    return () => { actief = false }
  }, [])
  // De header is op desktop sticky. De ankers en de filterkolom moeten precies
  // onder de echte header uitkomen; de hoogte verschilt namelijk per scherm en
  // verandert wanneer de disclaimer of beheerregel verdwijnt.
  useEffect(() => {
    const header = document.querySelector('.site-header')
    if (!header) return
    const mobiel = window.matchMedia('(max-width: 760px)')
    const zetHoogte = () => {
      document.documentElement.style.setProperty('--header-hoogte', mobiel.matches ? '0px' : `${header.getBoundingClientRect().height}px`)
    }
    zetHoogte()
    const observer = new ResizeObserver(zetHoogte)
    observer.observe(header)
    mobiel.addEventListener('change', zetHoogte)
    return () => {
      observer.disconnect()
      mobiel.removeEventListener('change', zetHoogte)
    }
  }, [admin, recovery])
  // Een merkpagina of een gedeelde link kan verwijzen naar /?merk=Royal%20Canin.
  // Pas die selectie één keer toe zodra de producten geladen zijn.
  useEffect(() => {
    if (diepeLinkToegepast.current || !products.length) return
    diepeLinkToegepast.current = true
    const params = new URLSearchParams(window.location.search)
    const alle = [...new Set(products.map(({ brand }) => brand).filter(Boolean))]
    const { brands, mode } = leesMerken(params, alle)
    setSelectedBrands(brands)
    setBrandMode(mode)
    setBrandSearch('')
    if (Array.isArray(brands) && brands.length === 1) {
      window.setTimeout(() => document.getElementById('resultaten')?.scrollIntoView({ block: 'start' }), 100)
    }
    setUrlKlaar(true)
  }, [products])

  const alleMerken = useMemo(() => [...new Set(products.map(({ brand }) => brand).filter(Boolean))].sort((eerste, tweede) => eerste.localeCompare(tweede, 'nl', { sensitivity: 'base' })), [products])
  const vergelijkProducten = useMemo(() => vergelijkIds.map((id) => products.find((product) => product.id === id)).filter(Boolean), [vergelijkIds, products])
  // De voedingswaarden worden één keer per product genormaliseerd. De schuiven,
  // de tellingen en het filter gebruiken daarna dezelfde waarden.
  const voedingPerProduct = useMemo(() => new Map(products.map((product) => [product.id, voedingswaardeMap(product.recipe_versions?.[0]?.recipe_nutrition)])), [products])
  const onbetrouwbaarPerProduct = useMemo(() => new Map(products.map((product) => [product.id, onbetrouwbareNutrienten(voedingPerProduct.get(product.id) ?? {}, product.food_type)])), [products, voedingPerProduct])
  const voedingBereik = useMemo(() => {
    const bereik = {}
    for (const filter of VOEDINGS_FILTERS) {
      let hoogste = 0
      for (const [id, waarden] of voedingPerProduct) {
        const waarde = waarden[filter.key]
        if (waarde != null && !onbetrouwbaarPerProduct.get(id)?.has(filter.key)) hoogste = Math.max(hoogste, waarde)
      }
      const bovengrens = Math.max(filter.bovengrens, Math.ceil(hoogste / filter.bovengrensStap) * filter.bovengrensStap)
      bereik[filter.key] = { min: 0, max: bovengrens }
    }
    return bereik
  }, [voedingPerProduct, onbetrouwbaarPerProduct])
  const voedingTellingen = useMemo(() => {
    const tellingen = Object.fromEntries(VOEDINGS_FILTERS.map(({ key }) => [key, 0]))
    for (const [id, waarden] of voedingPerProduct) {
      const negeren = onbetrouwbaarPerProduct.get(id)
      for (const filter of VOEDINGS_FILTERS) if (waarden[filter.key] != null && !negeren?.has(filter.key)) tellingen[filter.key] += 1
    }
    return tellingen
  }, [voedingPerProduct, onbetrouwbaarPerProduct])
  const actieveVoedingsfilters = Object.keys(voedingsfilters)
  const actieveExtraVoedingsfilters = EXTRA_VOEDINGS_FILTERS.filter((filter) => voedingsfilters[filter.key]).length
  const zoektermNorm = normaliseerZoektekst(zoekterm)
  const matchesNaTraits = useMemo(() => {
    if (!lifeStages.length && !sizes.length) return matches
    return matches.filter(({ product }) => {
      const traits = classifyProduct(product)
      return (!lifeStages.length || lifeStages.includes(traits.lifeStage)) && (!sizes.length || sizes.includes(traits.size))
    })
  }, [matches, lifeStages, sizes])
  const matchesNaZoeking = useMemo(() => {
    if (!zoektermNorm) return matchesNaTraits
    return matchesNaTraits.filter(({ product }) => normaliseerZoektekst(`${product.brand} ${product.name}`).includes(zoektermNorm))
  }, [matchesNaTraits, zoektermNorm])
  // Het allergenenoordeel hoeft niet opnieuw te worden berekend wanneer er aan
  // een schuif wordt getrokken. Alleen de lijst met matches wordt versmald.
  const matchesNaVoeding = useMemo(() => {
    if (!actieveVoedingsfilters.length) return matchesNaZoeking
    return matchesNaZoeking.filter(({ product }) => voldoetAanVoedingsfilters(voedingPerProduct.get(product.id) ?? {}, voedingsfilters, onbetrouwbaarPerProduct.get(product.id) ?? new Set()))
  }, [matchesNaZoeking, voedingsfilters, voedingPerProduct, onbetrouwbaarPerProduct])
  // Houd de merk- en allergenenkeuze in de URL, zodat een refresh of een
  // gedeelde link dezelfde selectie laat zien.
  useEffect(() => {
    if (!urlKlaar) return
    zetFiltersInUrl(selectedBrands, allergens, alleMerken, brandMode, voedingsfilters, types, sortering, zoekterm, lifeStages, sizes)
  }, [selectedBrands, allergens, urlKlaar, alleMerken, brandMode, voedingsfilters, types, sortering, zoekterm, lifeStages, sizes])
  // Een gedeelde link kan een bereik bevatten dat buiten de huidige catalogus
  // valt. Klem het na het laden in plaats van stilletjes nul resultaten tonen.
  useEffect(() => {
    if (!products.length) return
    setVoedingsfilters((oud) => {
      let gewijzigd = false
      const volgende = {}
      for (const [key, bereik] of Object.entries(oud)) {
        const grens = voedingBereik[key]
        if (!grens) { gewijzigd = true; continue }
        if (bereik.min > grens.max || bereik.max < grens.min) { gewijzigd = true; continue }
        const min = Math.max(grens.min, Math.min(bereik.min, grens.max))
        const max = Math.min(grens.max, Math.max(bereik.max, grens.min))
        if (min <= grens.min && max >= grens.max) { gewijzigd = true; continue }
        if (min !== bereik.min || max !== bereik.max) gewijzigd = true
        volgende[key] = { min, max }
      }
      return gewijzigd ? volgende : oud
    })
  }, [voedingBereik, products.length])
  useEffect(() => {
    document.title = Array.isArray(selectedBrands) && selectedBrands.length === 1
      ? `${selectedBrands[0]} hondenvoer vergelijken | Hondenvoervergelijker`
      : products.length
        ? `Hondenvoer vergelijken op allergenen en voedingswaarden — ${GETAL0.format(products.length)} producten van ${alleMerken.length} merken`
        : 'Hondenvoer vergelijken op allergenen en voedingswaarden | Hondenvoervergelijker'
  }, [selectedBrands, products.length, alleMerken.length])
  const merkTellingen = useMemo(() => {
    const tellingen = new Map()
    for (const product of products.filter(({ food_type, brand, name }) => types.includes(food_type) && (!zoektermNorm || normaliseerZoektekst(`${brand} ${name}`).includes(zoektermNorm)))) tellingen.set(product.brand, (tellingen.get(product.brand) ?? 0) + 1)
    return tellingen
  }, [products, types, zoektermNorm])
  const gezochteAllergenen = useMemo(() => {
    const zoek = allergenSearch.trim().toLowerCase()
    if (!zoek) return ALLERGEN_GROUPS
    const zoekDelen = zoek.split(/\s+/).filter(Boolean)
    const pastZoek = (waarde) => {
      const tekst = waarde.toLowerCase()
      if (tekst === zoek) return true
      const delen = tekst.split(/[^a-z0-9]+/).filter(Boolean)
      return zoekDelen.every((deel) => delen.some((token) => token.startsWith(deel)))
    }
    const score = (label) => {
      const tekst = label.toLowerCase()
      if (tekst === zoek) return 0
      const eerste = tekst.split(/[^a-z0-9]+/).filter(Boolean)[0] ?? ''
      return eerste.startsWith(zoekDelen[0] ?? '') ? 1 : 2
    }
    const groepen = ALLERGEN_GROUPS.map((group, index) => {
      const groepMatch = [group.label.toLowerCase(), ...(GROEP_ZOEKTERMEN[group.key] ?? [])].includes(zoek)
      const labelMatches = group.allergens.filter(({ label }) => pastZoek(label)).sort((a, b) => score(a.label) - score(b.label))
      const synonymMatches = group.allergens.filter(({ key, label }) => allergenSearchTerms(key, label).slice(1).some(pastZoek))
      const groepScore = groepMatch ? 0 : (labelMatches.length ? Math.min(...labelMatches.map(({ label }) => score(label))) : 3)
      return { group, index, groepMatch, labelMatches, synonymMatches, groepScore }
    })
    const heeftLabelMatch = groepen.some(({ groepMatch, labelMatches }) => groepMatch || labelMatches.length)
    return groepen.map(({ group, groepMatch, labelMatches, synonymMatches, groepScore, index }) => {
      const allergens = groepMatch ? group.allergens : (heeftLabelMatch ? labelMatches : synonymMatches)
      return { ...group, allergens, groepScore, index }
    }).filter(({ allergens }) => allergens.length)
      .sort((a, b) => a.groepScore - b.groepScore || a.index - b.index)
      .map(({ groepScore, index, ...group }) => group)
  }, [allergenSearch])
  const load = async (metTekst = catalogusMetTekst) => {
    if (!supabase) {
      setLoadError('Supabase is nog niet geconfigureerd, dus er kunnen geen producten worden geladen.')
      setProductenKlaar(true)
      return
    }
    try {
      const { data, error } = await haalProducten(metTekst)
      if (error) {
        // Een bewaarde catalogus is beter dan geen catalogus; meld wel dat hij
        // niet is bijgewerkt.
        if (cacheBijStart?.products?.length) setVerversFout('De nieuwste productgegevens konden niet worden opgehaald. Je ziet de laatst bewaarde versie.')
        else { setLoadError(error.message); setProducts([]) }
      } else {
        setLoadError('')
        setVerversFout('')
        setProducts(data || [])
        schrijfProductenCache(data || [])
      }
    } catch (error) {
      if (cacheBijStart?.products?.length) setVerversFout('De nieuwste productgegevens konden niet worden opgehaald. Je ziet de laatst bewaarde versie.')
      else setLoadError(error?.message || 'De producten konden niet worden geladen.')
    } finally {
      setProductenKlaar(true)
    }
  }
  // De woordenschat komt als ruwe rij binnen. Zo blijft de site werken zolang de
  // laatste migratie (20261019180000_term_scopes.sql) nog niet is uitgevoerd: een
  // ingedeeld woord houdt dan zijn ene allergeen, en "onduidelijk" verbergt alles
  // — strenger, niet soepeler. In het beheer staat dan een regel met wat er nog
  // moet gebeuren.
  const loadTerms = async () => {
    if (!supabase) { setTermenKlaar(true); return }
    try {
      const { data, error } = await haalAlleRijen(() => supabase.from('ingredient_terms').select('*').order('term'))
      if (error) {
        setTermsError(TERMS_HINT)
        if (!cacheBijStart?.terms?.length) setTerms([])
        return
      }
      const gemapt = (data || []).map((term) => ({ term: term.term, kind: term.kind, note: term.note, allergen_keys: Array.isArray(term.allergen_keys) ? term.allergen_keys.filter(Boolean) : term.allergen_key ? [term.allergen_key] : [] }))
      setTermsError('')
      setTerms(gemapt)
      schrijfTermenCache(gemapt)
      setTermsOud(data?.length > 0 && !('allergen_keys' in data[0]))
    } catch {
      setTermsError(TERMS_HINT)
      if (!cacheBijStart?.terms?.length) setTerms([])
    } finally {
      setTermenKlaar(true)
    }
  }
  useEffect(() => {
    let actief = true
    setVerversen(true)
    const klaar = () => { if (actief) setVerversen(false) }
    loadTerms().finally(klaar)
    // De compacte productlijst en de beoordeling zijn onafhankelijk. Start ze
    // samen; de resultaten wachten vanzelf tot beide binnen zijn.
    const compacteLading = load(false)
    compacteLading.finally(klaar)
    fetch('/catalog-assessment.json', { cache: 'no-cache' })
      .then((antwoord) => antwoord.ok ? antwoord.json() : Promise.reject(new Error(`HTTP ${antwoord.status}`)))
      .then((data) => {
        if (!actief) return
        setAssessments(decodeerBeoordelingen(data))
        setAssessmentsKlaar(true)
        setCatalogusMetTekst(false)
      })
      .catch(async () => {
        // Zonder beoordelingsbestand is de volledige catalogus met
        // ingrediëntenlijsten de terugvaloptie.
        await compacteLading
        if (!actief) return
        setAssessmentsKlaar(true)
        setCatalogusMetTekst(true)
        setProductenKlaar(false)
        load(true).finally(klaar)
      })
    supabase?.auth.getSession().then(({ data }) => setSession(data.session)); const { data: authData } = supabase?.auth.onAuthStateChange((event, next) => { setSession(next); if (event === 'PASSWORD_RECOVERY') setRecovery(true) }) || {}; return () => { actief = false; authData?.subscription.unsubscribe() }
  }, [])
  useEffect(() => { const checkAdmin = async () => { if (!session || !supabase) return setIsAdmin(false); const { data } = await supabase.from('admins').select('user_id').eq('user_id', session.user.id).maybeSingle(); setIsAdmin(Boolean(data)) }; checkAdmin() }, [session])
  // De woordenschat (eigen indelingen) moet bekend zijn vóór het vergelijken.
  useEffect(() => {
    setCustomTerms(terms)
    setMatches(products.filter((product) => types.includes(product.food_type) && (selectedBrands === null || selectedBrands.includes(product.brand))).map((product) => ({ product, match: productMatch(product, allergens, new Date(), catalogusMetTekst ? null : assessments[product.id]) })))
    setMatchesKlaar(true)
  }, [products, allergens, types, terms, selectedBrands, assessments, catalogusMetTekst])
  // Elke nieuwe keuze begint weer bovenaan.
  useEffect(() => { setPage(1) }, [allergens, types, selectedBrands, voedingsfilters, sortering, zoekterm, lifeStages, sizes])
  const suitable = matchesNaVoeding.filter(({ match }) => match.kind === 'suitable'); const check = matchesNaVoeding.filter(({ match }) => match.kind === 'check'); const excluded = matchesNaVoeding.filter(({ match }) => match.kind === 'excluded')
  const opNaam = (eerste, tweede) => eerste.product.brand.localeCompare(tweede.product.brand, 'nl', { sensitivity: 'base' }) || eerste.product.name.localeCompare(tweede.product.name, 'nl', { sensitivity: 'base' })
  // Sorteren gebeurt binnen de drie oordeelgroepen. Een product zonder de
  // gekozen waarde zakt binnen zijn groep naar achteren; het verdwijnt nooit.
  const sorteer = (lijst) => {
    const keuze = SORTING_BY_KEY[sortering]
    if (!keuze?.nutrient) return [...lijst].sort(opNaam)
    return [...lijst].sort((eerste, tweede) => {
      const ruwA = voedingPerProduct.get(eerste.product.id)?.[keuze.nutrient]
      const ruwB = voedingPerProduct.get(tweede.product.id)?.[keuze.nutrient]
      const a = ruwA != null && !onbetrouwbaarPerProduct.get(eerste.product.id)?.has(keuze.nutrient) ? ruwA : null
      const b = ruwB != null && !onbetrouwbaarPerProduct.get(tweede.product.id)?.has(keuze.nutrient) ? ruwB : null
      if (a == null && b == null) return opNaam(eerste, tweede)
      if (a == null) return 1
      if (b == null) return -1
      return (a - b) * keuze.richting || opNaam(eerste, tweede)
    })
  }
  // Met een allergenenkeuze blijft de vaste volgorde geschikt → controleren →
  // uitgesloten staan. Zonder allergenenkeuze is dat onderscheid veel minder
  // relevant; dan sorteert de gekozen volgorde over de hele lijst. De kaarten
  // houden hun etiketbadge, maar een voedingsfilter wordt niet opgesplitst in
  // een grote "Controleer"-groep.
  const gegroepeerdOpOordeel = allergens.length > 0
  const alleResultaten = gegroepeerdOpOordeel
    ? [...sorteer(suitable), ...sorteer(check), ...sorteer(excluded)]
    : sorteer([...suitable, ...check, ...excluded])
  const aantalPaginas = Math.max(1, Math.ceil(alleResultaten.length / PAGE_SIZE))
  const huidigePagina = Math.min(page, aantalPaginas)
  const zichtbareProducten = alleResultaten.slice((huidigePagina - 1) * PAGE_SIZE, huidigePagina * PAGE_SIZE)
  const gaNaarPagina = (nieuw) => {
    const volgende = Math.min(Math.max(1, nieuw), aantalPaginas)
    setPage(volgende)
    track('pagina-gewisseld', { pagina: volgende, resultaten: alleResultaten.length })
    document.getElementById('resultaten')?.scrollIntoView({ block: 'start' })
  }
  const wisselAllergeen = (key, aangevinkt) => {
    setAllergens(aangevinkt ? [...allergens, key] : allergens.filter((item) => item !== key))
    track(aangevinkt ? 'allergeen-gekozen' : 'allergeen-verwijderd', { aantal: aangevinkt ? allergens.length + 1 : Math.max(0, allergens.length - 1) })
    if (aangevinkt && allergens.length === 0) track('vergelijking-gestart')
  }
  const verwijderAllergeen = (key) => {
    setAllergens(allergens.filter((item) => item !== key))
    track('allergeen-verwijderd', { aantal: Math.max(0, allergens.length - 1) })
  }
  const wisAllergenen = () => {
    if (allergens.length) track('allergenen-gewist', { aantal: allergens.length })
    setAllergens([])
  }
  const zetVoedingsfilter = (key, bereik) => {
    const grens = voedingBereik[key]
    if (!grens) return
    const factor = 10 ** (VOEDINGS_FILTER_BY_KEY[key]?.decimalen ?? 1)
    const afronden = (waarde) => Math.round(waarde * factor) / factor
    const min = afronden(Math.max(grens.min, Math.min(bereik.min, bereik.max)))
    const max = afronden(Math.min(grens.max, Math.max(bereik.min, bereik.max)))
    setVoedingsfilters((oud) => {
      const volgende = { ...oud }
      if (min <= grens.min && max >= grens.max) delete volgende[key]
      else volgende[key] = { min, max }
      return volgende
    })
  }
  const verwijderVoedingsfilter = (key) => {
    setVoedingsfilters((oud) => {
      if (!(key in oud)) return oud
      const volgende = { ...oud }
      delete volgende[key]
      return volgende
    })
    track('voedingsfilter-gewist', { nutrient: key })
  }
  const voedingsfilterRij = (filter) => <NutritionRangeFilter key={filter.key} filter={filter} grenzen={voedingBereik[filter.key]} waarde={voedingsfilters[filter.key] ?? voedingBereik[filter.key]} aantal={voedingTellingen[filter.key] ?? 0} onChange={(bereik) => zetVoedingsfilter(filter.key, bereik)} onReset={() => verwijderVoedingsfilter(filter.key)} />
  const heeftActieveFilters = allergens.length > 0 || selectedBrands !== null || types.length !== FOOD_TYPES.length || actieveVoedingsfilters.length > 0 || Boolean(zoekterm) || lifeStages.length > 0 || sizes.length > 0
  // De uitklapknop op mobiel hoort bij de zijbalk (zoeken, leeftijd, formaat,
  // type, voeding en merk), niet bij de allergenen daarboven.
  const actieveFilterCount = (selectedBrands !== null ? Math.max(1, selectedBrands.length) : 0) + (types.length !== FOOD_TYPES.length ? 1 : 0) + actieveVoedingsfilters.length + (zoekterm ? 1 : 0) + (lifeStages.length ? 1 : 0) + (sizes.length ? 1 : 0)
  const gekozenTypeLabels = FOOD_TYPES.filter(([key]) => types.includes(key)).map(([, label]) => label).join(', ')
  const sorteertOpVoeding = Boolean(SORTING_BY_KEY[sortering]?.nutrient)
  const mengtVoertypes = types.includes('kibble') && (types.includes('wet') || types.includes('raw'))
  const vergelijktNatvoerEnBrokken = actieveVoedingsfilters.length > 0 && mengtVoertypes
  const sorteertNatvoerEnBrokken = sorteertOpVoeding && mengtVoertypes
  const merkFilterLabel = selectedBrands === null ? ''
    : selectedBrands.length === 0 ? 'Geen merken'
      : selectedBrands.length === 1 ? `Merk: ${selectedBrands[0]}`
        : brandMode === 'exclude' ? `${selectedBrands.length} merken uitgesloten` : `${selectedBrands.length} merken gekozen`
  const wisAlleFilters = () => {
    track('filters-gewist', { allergenen: allergens.length, merken: selectedBrands === null ? 0 : selectedBrands.length, voertypes: FOOD_TYPES.length - types.length, voeding: actieveVoedingsfilters.length })
    setAllergens([])
    setSelectedBrands(null)
    setBrandMode('include')
    setBrandSearch('')
    setTypes(FOOD_TYPES.map(([key]) => key))
    setVoedingsfilters({})
    setLifeStages([])
    setSizes([])
    setSortering('standaard')
    setZoekterm('')
    setAllergenSearch('')
  }
  // De knop in de filterkolom wist alleen de kolom zelf. De allergenenkeuze
  // staat bewust hoger op de pagina en blijft staan; anders lijkt het alsof een
  // voedingsfilter ook de allergieën weggooit.
  const wisFilterkolom = () => {
    setSelectedBrands(null)
    setBrandMode('include')
    setBrandSearch('')
    setTypes(FOOD_TYPES.map(([key]) => key))
    setVoedingsfilters({})
    setLifeStages([])
    setSizes([])
    setZoekterm('')
  }
  const wisselTrait = (setter, key) => setter((oud) => oud.includes(key) ? oud.filter((item) => item !== key) : [...oud, key])
  const wisselVergelijk = (id) => {
    if (vergelijkIds.includes(id)) {
      const volgende = vergelijkIds.filter((item) => item !== id)
      setVergelijkIds(volgende)
      if (volgende.length < 2) setVergelijkOpen(false)
      track('vergelijk-verwijderd', { aantal: volgende.length })
    } else if (vergelijkIds.length < 3) {
      const volgende = [...vergelijkIds, id]
      setVergelijkIds(volgende)
      track('vergelijk-toegevoegd', { aantal: volgende.length })
    }
  }
  const openVergelijk = () => {
    if (vergelijkProducten.length < 2) return
    setVergelijkOpen(true)
    track('vergelijk-geopend', { aantal: vergelijkProducten.length })
  }
  const wisVergelijk = () => {
    setVergelijkIds([])
    setVergelijkOpen(false)
    track('vergelijk-gewist')
  }
  const merkActief = (merk) => selectedBrands === null || selectedBrands.includes(merk)
  const wisselMerk = (merk, aangevinkt) => {
    const basis = selectedBrands ?? alleMerken
    if (aangevinkt) {
      const volgende = [...new Set([...basis, merk])]
      if (volgende.length >= alleMerken.length) {
        setSelectedBrands(null)
        setBrandMode('include')
      } else {
        setSelectedBrands(volgende)
      }
      return
    }
    const volgende = basis.filter((item) => item !== merk)
    if (selectedBrands === null) {
      // Vanuit "alle merken" één merk uitvinken: vanaf nu is het een uitsluitlijst.
      setSelectedBrands(volgende)
      setBrandMode('exclude')
    } else if (!volgende.length) {
      setSelectedBrands([])
      setBrandMode('include')
    } else {
      setSelectedBrands(volgende)
    }
  }
  const geenMerken = Array.isArray(selectedBrands) && selectedBrands.length === 0
  const geenTypes = types.length === 0
  const filterMelding = geenMerken && geenTypes ? 'Kies minstens één merk en één voertype.' : geenMerken ? 'Kies minstens één merk om producten te vergelijken.' : 'Kies minstens één voertype om producten te vergelijken.'
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
  const sluitBeheer = () => {
    load()
    loadTerms()
    setAdmin(false)
    const url = new URL(window.location.href)
    url.searchParams.delete('beheer')
    window.history.replaceState(null, '', `${url.pathname}${url.search}${url.hash}`)
  }
  const disclaimer = <>Deze tool vergelijkt uitsluitend overgenomen etiketinformatie van {alleMerken.length || 60} merken ({products.length || '1.478'} producten). De resultaten vormen geen medisch advies en bieden geen 100% garantie. Controleer voor aankoop altijd zelf de verpakking en overleg bij medische klachten met een dierenarts.</>
  return <main><header className="site-header">
    <div className="site-header-row">
      <div className="site-brand">
        <h1 className="site-brand-title">
          <img src="/logo-hondenvoervergelijker.png" alt="Hondenvoervergelijker — Onafhankelijk hondenvoer vergelijken" width="277" height="58" className="site-logo-full" />
        </h1>
      </div>
      <nav className="site-nav" aria-label="Snelmenu">
        {!recovery && !admin && <>
          <a href="#vergelijken"><span className="nav-lang">Allergenen kiezen</span><span className="nav-kort">Allergenen</span></a>
          <a href="#filters"><span className="nav-lang">Voedingswaarden</span><span className="nav-kort">Voeding</span></a>
          <a href="#resultaten"><span className="nav-lang">Producten ({products.length || '…'})</span><span className="nav-kort">Producten</span></a>
          <a href="#over-deze-site"><span className="nav-lang">Hoe het werkt</span><span className="nav-kort">Uitleg</span></a>
        </>}
        {admin && <button type="button" className="link" onClick={sluitBeheer}>Terug naar vergelijken</button>}
      </nav>
    </div>
    {!recovery && !admin && <>
      <details className="site-note site-note-compact">
        <summary>Belangrijk: geen medisch advies</summary>
        <p>{disclaimer}</p>
      </details>
    </>}
  </header>
    {recovery ? <form className="login" onSubmit={updatePassword}><h2>Nieuw wachtwoord instellen</h2><p>Kies hieronder een nieuw wachtwoord voor het beheerdersaccount.</p><label>Nieuw wachtwoord<input type="password" required minLength="8" value={newPassword} onChange={(e) => setNewPassword(e.target.value)} /></label><label>Herhaal wachtwoord<input type="password" required minLength="8" value={repeatPassword} onChange={(e) => setRepeatPassword(e.target.value)} /></label><button>Wachtwoord opslaan</button>{authMessage && <p aria-live="polite">{authMessage}</p>}</form> : admin ? (isAdmin ? <Admin terms={terms} termsOud={termsOud} reloadTerms={loadTerms} onSaved={load} /> : session ? <section><h2>Geen beheerdersrechten</h2><p>Dit account mag geen producten beheren.</p><button onClick={() => supabase.auth.signOut()}>Uitloggen</button></section> : <form className="login" onSubmit={login}><h2>Beheer inloggen</h2><label>E-mail<input type="email" required value={email} onChange={(e) => setEmail(e.target.value)} /></label><label>Wachtwoord<input type="password" required value={password} onChange={(e) => setPassword(e.target.value)} /></label><button>Inloggen</button>{authMessage && <p>{authMessage}</p>}</form>) : <>
      <section className="hero-banner" aria-label="Overzicht">
        <div className="hero-text">
          <h2>Vind hondenvoer dat past bij de allergie én voedingsbehoefte van jouw hond</h2>
          <p>Vage termen zoals <em>“dierlijke bijproducten”</em> of <em>“granen”</em> verbergen de bron. Deze vergelijker laat zien welk voer <strong>lijkt te passen</strong>, <strong>uitgesloten</strong> of <strong>onzeker</strong> is. Filter daarnaast op eiwit, vet, energie en meer.</p>
          <p className="hero-meta"><strong>{products.length ? GETAL0.format(products.length) : '1.478'}</strong> producten · <strong>{alleMerken.length || '60'}</strong> merken · <strong>{ALLERGENS.length}</strong> allergenen &amp; bronnen</p>
          <p className="hero-positioning">Wij vergelijken ingrediënten, allergenen en voedingswaarden — geen prijzen of winkelaanbod.</p>
          <p className="hero-links"><a href="#vergelijken">Begin met allergenen</a> · <a href="#filters">Filter op voeding</a> · <a href="/hondenvoer-allergieen.html">Hoe lees je een etiket?</a> · <a href="/hoe-wij-vergelijken.html">Onze methode</a></p>
        </div>
      </section>
      <div className="layout">
        <section id="vergelijken" className="allergen-panel">
          <div className="allergen-panel-header">
            <div>
              <p className="panel-step">Stap 1 · Kies wat je wilt vermijden</p>
              <h2>Allergieën en intoleranties</h2>
              <p><small>Vink aan wat je wilt uitsluiten. Klap een categorie open of zoek direct op naam.</small></p>
            </div>
            <div className="allergen-panel-actions">
              <a className="jump-to-results" href="#resultaten" onClick={() => track('resultaten-bekeken', { resultaten: alleResultaten.length, allergenen: allergens.length, geschikt: suitable.length })}>Bekijk resultaten ↓</a>
              {allergens.length > 0 && <button type="button" className="clear-allergens" onClick={wisAllergenen}>Wis selectie ({allergens.length})</button>}
            </div>
          </div>
          {allergens.length > 0 && <div className="result-preview" aria-live="polite">
            {matchesKlaar ? <>
              <span className="result-preview-label">Resultaat van je keuze:</span>
              <span className="summary-pill suitable" title="Lijkt geschikt op basis van het etiket."><span aria-hidden="true">✓</span> Lijkt geschikt: {suitable.length}</span>
              <span className="summary-pill check" title="Controleer het etiket of de fabrikant."><span aria-hidden="true">?</span> Controleer: {check.length}</span>
              <span className="summary-pill excluded" title="Bevat minstens één gekozen allergeen."><span aria-hidden="true">✕</span> Uitgesloten: {excluded.length}</span>
            </> : <span className="result-preview-label">Resultaten laden…</span>}
          </div>}
          {allergens.length > 0 && <div className="selected-allergens" aria-label="Gekozen allergenen">
            <span className="selected-label">Je vermijdt nu:</span>
            {allergens.map((key) => <span className="allergen-chip static" key={key} title={`${ALLERGEN_LABELS[key]} wordt vermeden`}>{ALLERGEN_LABELS[key]}</span>)}
          </div>}
          <label className="brand-search-label allergen-search-label">Zoek allergeen<input type="search" value={allergenSearch} onChange={(e) => setAllergenSearch(e.target.value)} placeholder="Bijv. kip, rund, rijst, zalm of erwten" /></label>
          {gezochteAllergenen.length ? gezochteAllergenen.map((group) => {
            const gekozen = group.allergens.filter(({ key }) => allergens.includes(key)).length
            return <details className="allergen-group" key={group.key} open={allergenSearch.trim() ? true : undefined}>
              <summary><span>{group.label}</span> <span className={gekozen ? 'group-count active' : 'group-count'}>{gekozen ? `${gekozen} gekozen` : `${group.allergens.length} ${group.allergens.length === 1 ? 'optie' : 'opties'}`}</span></summary>
              <div className="choices">{group.allergens.map(({ key, label }) => <label className={`inline${label.length > 14 ? ' allergen-wide' : ''}`} key={key}><input type="checkbox" checked={allergens.includes(key)} onChange={(e) => wisselAllergeen(key, e.target.checked)} />{label}</label>)}</div>
            </details>
          }) : <p><small>Geen allergeen gevonden voor “{allergenSearch}”.</small></p>}
        </section>
        <aside id="filters" className={`filters${filtersOpen ? ' open' : ''}`} aria-label="Filters">
          <button type="button" className="filters-toggle" aria-expanded={filtersOpen} aria-controls="filters-body" onClick={() => setFiltersOpen(!filtersOpen)}>
            <span>Filters{actieveFilterCount ? ` (${actieveFilterCount} actief)` : ''}</span>
          </button>
          <div id="filters-body" className="filters-body">
            <div className="filters-head">
              <h2>Filters</h2>
              <span className="filters-count" aria-live="polite" aria-atomic="true">{GETAL0.format(alleResultaten.length)} producten</span>
              {actieveFilterCount > 0 && <button type="button" className="filters-reset" onClick={wisFilterkolom} title="Alleen de filters in deze kolom wissen; je allergenenkeuze blijft staan.">Wissen</button>}
            </div>
            <label className="product-search">Zoek product<input type="search" maxLength={80} value={zoekterm} onChange={(event) => setZoekterm(event.target.value)} placeholder="Bijv. renal, kip of senior" /></label>
            <div className="filter-block">
              <h3>Type voer</h3>
              <div className="choices food-type-choices">{FOOD_TYPES.map(([key, label]) => <label className={`inline type-chip${types.includes(key) ? ' active' : ''}`} key={key}><input type="checkbox" checked={types.includes(key)} onChange={(e) => setTypes(e.target.checked ? [...types, key] : types.filter((item) => item !== key))} />{label}</label>)}</div>
            </div>
            <div className="filter-block trait-filter">
              <div className="filter-heading nutrition-filter-heading">
                <span>Leeftijd &amp; formaat</span>
                <span className="filter-summary">naam</span>
              </div>
              <div className="trait-row">
                <span className="trait-label">Leeftijd</span>
                <div className="trait-chips">{LIFE_STAGE_OPTIONS.map((optie) => <button type="button" key={optie.key} className={`trait-chip${lifeStages.includes(optie.key) ? ' active' : ''}`} aria-pressed={lifeStages.includes(optie.key)} onClick={() => wisselTrait(setLifeStages, optie.key)} title={`${optie.label} volgens de productnaam`}>{optie.label}</button>)}</div>
              </div>
              <div className="trait-row">
                <span className="trait-label">Formaat</span>
                <div className="trait-chips">{SIZE_OPTIONS.map((optie) => <button type="button" key={optie.key} className={`trait-chip${sizes.includes(optie.key) ? ' active' : ''}`} aria-pressed={sizes.includes(optie.key)} onClick={() => wisselTrait(setSizes, optie.key)} title={`${optie.label} volgens de productnaam`}>{optie.label}</button>)}</div>
              </div>
              <p className="trait-hint">Volgens de productnaam; zonder aanduiding valt een product af. Het etiket blijft leidend.</p>
            </div>
            <details className="advanced-filters" open={advancedOpen} onToggle={(event) => setAdvancedOpen(event.currentTarget.open)}>
              <summary className="filter-heading advanced-filters-heading">
                <span>Meer filters</span>
                <span className="filter-summary">{actieveVoedingsfilters.length || selectedBrands !== null ? 'actief' : 'voeding en merken'}</span>
              </summary>
            <div className="filter-block nutrition-filter-block">
              <div className="filter-heading nutrition-filter-heading">
                <span>Voedingswaarden</span>
                <span className="filter-summary">{actieveVoedingsfilters.length ? `${actieveVoedingsfilters.length} actief` : 'Geen filter'}</span>
              </div>
              <p className="nutrition-filter-hint">As-fed, inclusief vocht · energie in kcal/100 g. Het getal is het aantal bruikbare waarden; zonder waarde valt een product af bij een actief filter.</p>
              {vergelijktNatvoerEnBrokken && <p className="nutrition-compare-warning" role="status"><strong>Let op:</strong> je filtert op voeding over natvoer/rauwvoer én brokken. Die zijn niet direct vergelijkbaar. Kies één voertype.</p>}
              {PRIMAIRE_VOEDINGS_FILTERS.map(voedingsfilterRij)}
              <details className="nutrition-extra" open={extraOpen || undefined} onToggle={(event) => setExtraOpen(event.currentTarget.open)}>
                <summary className="nutrition-extra-heading">
                  <span>Meer voedingswaarden</span>
                  <span className="nutrition-extra-summary">{actieveExtraVoedingsfilters ? `${actieveExtraVoedingsfilters} actief` : `${EXTRA_VOEDINGS_FILTERS.length} waarden`}</span>
                </summary>
                <div className="nutrition-extra-body">{EXTRA_VOEDINGS_FILTERS.map(voedingsfilterRij)}</div>
              </details>
            </div>
            <details className="filter-block brand-filter" open={selectedBrands !== null || undefined}>
              <summary className="filter-heading">
                <span>Merken</span>
                <span className="filter-summary">{selectedBrands === null ? `Alle ${alleMerken.length} merken doen mee` : `${selectedBrands.length} van ${alleMerken.length} merken geselecteerd`}</span>
              </summary>
              <div className="filter-actions">
                <button type="button" className={selectedBrands === null ? 'active' : ''} aria-pressed={selectedBrands === null} onClick={() => { setSelectedBrands(null); setBrandMode('include'); setBrandSearch('') }}>Alles</button>
                <button type="button" className={geenMerken ? 'active' : ''} aria-pressed={geenMerken} onClick={() => { setSelectedBrands([]); setBrandMode('include') }}>Niets</button>
              </div>
              <label className="brand-search-label">Zoek merk<input type="search" value={brandSearch} placeholder="Bijv. Acana, Royal Canin, Hill's" onChange={(event) => setBrandSearch(event.target.value)} /></label>
              <div className="brand-list">
                {zichtbareMerken.length ? zichtbareMerken.map((merk) => <label className="brand-row" key={merk}>
                  <span><input type="checkbox" checked={merkActief(merk)} onChange={(event) => wisselMerk(merk, event.target.checked)} /> {merk}</span>
                  <span className="brand-count">{merkTellingen.get(merk) ?? 0}</span>
                </label>) : <p><small>Geen merk gevonden.</small></p>}
              </div>
              <a className="filter-heading-link" href="/merken/">Alle merken bekijken</a>
            </details>
            </details>
            <a className="filter-jump" href="#resultaten">Bekijk {GETAL0.format(alleResultaten.length)} producten ↓</a>
          </div>
        </aside>
        <div className="content">
          {loadError ? <section><h2>Kon de producten niet laden</h2><p role="alert">{loadError}</p><p>Er wordt hierdoor niets over de geschiktheid van voeding gezegd. Probeer het later opnieuw.</p></section> : (loading || !matchesKlaar) ? <p>Laden…</p> : <>{verversFout && <p role="alert" className="cache-note">{verversFout}</p>}{verversen && <p className="cache-note"><small>Nieuwste gegevens worden opgehaald…</small></p>}{termsError && <p role="alert">{termsError}</p>}<details className="legend">
              <summary><mark className="uncertain-ingredient">Rood gemarkeerd</mark> = de bron wordt niet genoemd</summary>
              <p>Het etiket noemt de specifieke dier- of plantbron niet (bijv. “dierlijk vet” of “granen”). {allergens.length ? 'Het oordeel geldt per gekozen allergeen: een product staat alleen op “Controleer” als zo\'n niet-gespecificeerd ingrediënt jouw gekozen allergeen kan bevatten.' : 'Kies hierboven één of meer allergenen om direct te filteren op hondenvoeding die geschikt lijkt.'}</p>
            </details>
            {geenMerken || geenTypes ? <section id="resultaten"><h2>Geen producten</h2><p>{filterMelding}</p></section> : (
              <section id="resultaten">
                {vergelijkProducten.length > 0 && <div className="compare-bar" aria-label="Producten vergelijken">
                  <span className="compare-bar-label">{vergelijkProducten.length}/3 geselecteerd</span>
                  <div className="compare-bar-chips">{vergelijkProducten.map((product) => <button type="button" className="compare-chip" key={product.id} onClick={() => wisselVergelijk(product.id)} title="Verwijder uit de vergelijking">{product.brand} {product.name} <span aria-hidden="true">×</span></button>)}</div>
                  <button type="button" className="compare-open" disabled={vergelijkProducten.length < 2} onClick={openVergelijk} title={vergelijkProducten.length < 2 ? 'Kies minstens twee producten' : 'Open de vergelijking'}>Vergelijk</button>
                  <button type="button" className="link" onClick={wisVergelijk}>Wissen</button>
                </div>}
                <div className="results-header">
                  <h2>Producten ({GETAL0.format(alleResultaten.length)})</h2>
                  <div className="results-tools">
                    <p className="result-summary">
                      <span className="summary-pill suitable" title={allergens.length ? 'Lijkt geschikt op basis van de gekozen allergenen en het etiket.' : 'Het etiket noemt elke bron bij name.'}><span aria-hidden="true">✓</span> {allergens.length ? 'Lijkt geschikt' : 'Etiket volledig'}: {suitable.length}</span>
                      <span className="summary-pill check" title={allergens.length ? 'Controleer het etiket of de fabrikant.' : 'Het etiket noemt niet elke bron of bevat een woord dat de keuring niet kent.'}><span aria-hidden="true">?</span> {allergens.length ? 'Controleer' : 'Etiket controle'}: {check.length}</span>
                      {allergens.length > 0 && <span className="summary-pill excluded"><span aria-hidden="true">✕</span> Uitgesloten: {excluded.length}</span>}
                    </p>
                    <label className="sort-select"><span>Sorteren op</span>
                      <select value={sortering} aria-label="Sorteer producten" onChange={(event) => { setSortering(event.target.value); track('sortering-gewisseld', { sortering: event.target.value }) }}>
                        {SORTING_OPTIONS.map((optie) => <option key={optie.key} value={optie.key}>{optie.label}</option>)}
                      </select>
                    </label>
                  </div>
                </div>
                {sortering !== 'standaard' && <p className="sort-note"><small>{gegroepeerdOpOordeel ? 'Sortering geldt binnen Lijkt geschikt, Controleer en Uitgesloten.' : 'Sortering geldt over alle producten.'}</small></p>}
                {sorteertNatvoerEnBrokken && <p className="sort-note sort-warning" role="status"><small><strong>Let op:</strong> je sorteert op voeding over natvoer/rauwvoer én brokken. Die zijn niet direct vergelijkbaar; kies één voertype.</small></p>}
                {heeftActieveFilters && <div className="active-filters" aria-label="Actieve filters">
                  <span className="active-filters-label">Actief:</span>
                  {allergens.map((key) => <button type="button" key={key} className="filter-chip" onClick={() => verwijderAllergeen(key)} title={`Verwijder ${ALLERGEN_LABELS[key]}`}>{ALLERGEN_LABELS[key]} <span aria-hidden="true">×</span></button>)}
                  {selectedBrands !== null && <button type="button" className="filter-chip" onClick={() => { setSelectedBrands(null); setBrandMode('include'); setBrandSearch('') }} title="Merkfilter verwijderen">{merkFilterLabel} <span aria-hidden="true">×</span></button>}
                  {types.length !== FOOD_TYPES.length && <button type="button" className="filter-chip" onClick={() => setTypes(FOOD_TYPES.map(([key]) => key))} title="Voertypefilter verwijderen">Type: {gekozenTypeLabels} <span aria-hidden="true">×</span></button>}
                  {lifeStages.length > 0 && <button type="button" className="filter-chip" onClick={() => setLifeStages([])} title="Leeftijdfilter verwijderen">Leeftijd: {lifeStages.map((key) => LIFE_STAGE_OPTIONS.find((optie) => optie.key === key)?.label ?? key).join(', ')} <span aria-hidden="true">×</span></button>}
                  {sizes.length > 0 && <button type="button" className="filter-chip" onClick={() => setSizes([])} title="Formaatfilter verwijderen">Formaat: {sizes.map((key) => SIZE_OPTIONS.find((optie) => optie.key === key)?.label ?? key).join(', ')} <span aria-hidden="true">×</span></button>}
                  {zoekterm && <button type="button" className="filter-chip" onClick={() => setZoekterm('')} title="Zoekterm verwijderen">Zoek: {zoekterm} <span aria-hidden="true">×</span></button>}
                  {VOEDINGS_FILTERS.filter((filter) => voedingsfilters[filter.key]).map((filter) => <button type="button" key={filter.key} className="filter-chip" onClick={() => verwijderVoedingsfilter(filter.key)} title={`${filter.label}filter verwijderen`}>{beschrijfVoedingsbereik(filter, voedingsfilters[filter.key], voedingBereik[filter.key])} <span aria-hidden="true">×</span></button>)}
                  <button type="button" className="filters-reset-inline" onClick={wisAlleFilters}>Filters wissen</button>
                </div>}
                {allergens.length > 0 && suitable.length > 0 ? (
                  <div className="result-status ok" role="status">
                    <strong>{suitable.length} {suitable.length === 1 ? 'product lijkt' : 'producten lijken'} geschikt op basis van het etiket.</strong>
                    <p>Gekozen allergenen: {labelList(allergens, 8)}. {check.length > 0 ? `${check.length} ${check.length === 1 ? 'product moet' : 'producten moeten'} nog worden gecontroleerd` : 'Alle producten in deze selectie zijn op basis van het etiket geschikt'}{excluded.length > 0 ? ` en ${excluded.length} ${excluded.length === 1 ? 'product is' : 'producten zijn'} uitgesloten.` : '.'} Controleer voor aankoop altijd de verpakking.</p>
                  </div>
                ) : allergens.length > 0 ? (
                  <div className="result-status no-suitable" role="status">
                    <strong>Geen enkel product lijkt geschikt voor {labelList(allergens, 4)} op basis van het etiket.</strong>
                    <p>{check.length === 0
                      ? (excluded.length === 0
                        ? <>Er zijn geen producten in deze selectie. Pas je merk- of voertypefilter aan.</>
                        : excluded.length === 1
                          ? <>Het enige product in deze selectie bevat minstens één van de gekozen allergenen. Pas je selectie of merkfilter aan, of overleg met je dierenarts over een passend eliminatiedieet.</>
                          : <>Alle {excluded.length} producten in deze selectie bevatten minstens één van de gekozen allergenen. Pas je selectie of merkfilter aan, of overleg met je dierenarts over een passend eliminatiedieet.</>)
                      : <>Bij {check.length === 1 ? 'het overgebleven product' : `de ${check.length} overgebleven producten`} noemt het etiket niet elke bron, of staat er een woord in dat de keuring niet kent.{excluded.length ? ` Daarnaast ${excluded.length === 1 ? 'is 1 product' : `zijn ${excluded.length} producten`} uitgesloten omdat er een gekozen allergeen in zit.` : ''} Vraag de fabrikant om uitsluitsel of overleg met je dierenarts voordat je een product kiest.</>}</p>
                    <div className="no-suitable-actions">
                      <button type="button" onClick={wisAllergenen}>Allergenen wissen</button>
                      <button type="button" onClick={() => { setSelectedBrands(null); setBrandMode('include'); setBrandSearch(''); setTypes(FOOD_TYPES.map(([key]) => key)) }}>Alle merken en voertypes</button>
                      <a href="/hondenvoer-allergieen.html">Hoe lees je een etiket?</a>
                    </div>
                  </div>
                ) : null}
                <Pagination page={huidigePagina} total={aantalPaginas} onChange={gaNaarPagina} />
                {zichtbareProducten.length ? zichtbareProducten.map(({ product, match }) => <ProductCard key={product.id} product={product} match={match} aanbiedingen={aanbod[product.id] ?? []} nadruk={actieveVoedingsfilters} vergelijk={vergelijkIds.includes(product.id)} vergelijkVol={vergelijkIds.length >= 3} onVergelijk={wisselVergelijk} />) : <p>Geen producten gevonden{zoekterm ? ` voor “${zoekterm}”` : ' voor deze keuze'}.</p>}
                <Pagination page={huidigePagina} total={aantalPaginas} onChange={gaNaarPagina} />
              </section>
            )}
          </>}
        </div>
      </div>
      {vergelijkOpen && <CompareDialog producten={vergelijkProducten} allergenen={allergens} assessments={catalogusMetTekst ? null : assessments} onClose={() => setVergelijkOpen(false)} />}
    </>}
    <footer className="site-footer" id="over-deze-site">
      <div className="footer-grid">
        <div className="footer-col">
          <h3>Over Hondenvoervergelijker</h3>
          <p>Hondenvoervergelijker helpt hondeneigenaren en dierenartsen bij het vinden van complete hondenvoeding (brokken, natvoer en versvlees/KVV) zonder specifieke allergenen. Alle samenstellingen zijn rechtstreeks overgenomen van de officiële productpagina's van de fabrikanten en wekelijks gecontroleerd op wijzigingen.</p>
        </div>
        <div className="footer-col">
          <h3>Onafhankelijke werkwijze</h3>
          <p>Elk etiket wordt woord voor woord geanalyseerd op meer dan {ALLERGENS.length} dierlijke, plantaardige en overige ingrediëntbronnen. Bevat een etiket een vage verzamelterm (zoals <em>“dierlijke bijproducten”</em> of <em>“oliën en vetten”</em>) die een gekozen allergeen kan verbergen, dan krijgt het product nooit het label “Lijkt geschikt”.</p>
        </div>
        <div className="footer-col">
          <h3>Transparantie, Privacy &amp; Contact</h3>
          <p>Deze website plaatst geen tracking-cookies en verkoopt geen bezoekersgegevens. Wij vergelijken ingrediënten, allergenen en voedingswaarden — geen prijzen of winkelaanbod. Sommige uitgaande links kunnen affiliate-links zijn; de selectie, sortering en beoordeling worden hier nooit door beïnvloed. Lees het volledige <a href="/privacybeleid.html">privacybeleid en de cookieverklaring</a>.</p>
          <p className="footer-meta">Redactie: Paul Zuiderduin · Contact: <a href="mailto:hondenvoervergelijker@paulzuiderduin.com">hondenvoervergelijker@paulzuiderduin.com</a></p>
        </div>
      </div>
      <div className="footer-bottom">
        <span>© {new Date().getFullYear()} Hondenvoervergelijker — Alle ingrediëntdata onder voorbehoud van wijzigingen door de fabrikant.</span>
        <span className="footer-links">
          <a href="/merken/">Alle merken</a>
          <a href="/hondenvoer-allergieen.html">Hondenvoer &amp; allergieën</a>
          <a href="/hondenvoer-zonder.html">Zonder allergeen</a>
          <a href="/hoe-wij-vergelijken.html">Onze methode</a>
          <a href="/etikettenonderzoek.html">Etikettenonderzoek</a>
          <a href="/broncontrole.html">Broncontrole</a>
          <a href="/hypoallergene-hondenvoeding.html">Hypoallergeen</a>
          <a href="/eiwitrijk-hondenvoer.html">Eiwitrijk</a>
          <a href="/hondenvoer-met-weinig-vet.html">Weinig vet</a>
          <a href="/hoog-vezel-hondenvoer.html">Veel vezel</a>
          <a href="/laag-calorisch-hondenvoer.html">Laag-calorisch</a>
          <a href="/over-ons.html">Over ons</a>
          <a href="/contact.html">Contact</a>
          <a href="/voorwaarden.html">Voorwaarden</a>
          <a href="/disclaimer.html">Disclaimer</a>
          <a href="/privacybeleid.html">Privacybeleid</a>
        </span>
      </div>
    </footer>
    <FeedbackButton />
  </main>
}
createRoot(document.getElementById('root')).render(<App />)
