#!/usr/bin/env node
// Maakt de statische snackmerkpagina's na de Vite-build.
//
// De snackvergelijker zelf is een React-app. Deze pagina's geven elke snackmerk
// een eigen, deelbare URL met de letterlijke ingrediëntenlijsten en de status
// van de keuring. Ze staan voorlopig op noindex, net als de snackvergelijker:
// pas bij voldoende dekking gaan ze mee in de sitemap.

import { existsSync, mkdirSync, readFileSync, writeFileSync } from 'node:fs'
import { join } from 'node:path'
import { assessLabel, setCustomTerms } from '../src/lib/allergens.js'
import { SNACK_TERMS, SNACK_TYPES, snackMerkPad, snackTypeLabel, sizeLabel } from '../src/lib/snacks.js'
import { DIST, SITE, WORTEL, datumNl, escapeHtml, shell } from './lib/pagina-shell.mjs'

setCustomTerms(SNACK_TERMS)

const DATA = join(WORTEL, 'data', 'snacks.json')
const SITE_URL = SITE

function leesSnacks() {
  try {
    const bestand = JSON.parse(readFileSync(DATA, 'utf8'))
    return Array.isArray(bestand.producten) ? bestand : { producten: [], bijgewerkt: '' }
  } catch {
    return { producten: [], bijgewerkt: '' }
  }
}

function sourceDomain(url = '') {
  try { return new URL(url).hostname.replace(/^www\./, '') } catch { return '' }
}

function datumVan(product) {
  return [product.last_checked_at, product.reviewed_at].filter(Boolean).sort().at(-1) ?? ''
}

function laatsteDatum(producten) {
  return producten.map(datumVan).filter(Boolean).sort().at(-1) ?? ''
}

function uniekeWoorden(lijst = []) {
  return [...new Set(lijst.map(({ word }) => word))].filter(Boolean)
}

function productKaart(product) {
  const uitslag = assessLabel(product.ingredients_text)
  const onbenoemd = uniekeWoorden(uitslag.hidden)
  const onbekend = [...new Set(uitslag.unknown)]
  const controleNodig = onbenoemd.length > 0 || onbekend.length > 0
  const badge = controleNodig
    ? '<span class="verdict-badge tone-check">Controleer etiket</span>'
    : '<span class="verdict-badge tone-ok">Etiket volledig</span>'
  const zoekUrl = `/hondensnacks/?merk=${encodeURIComponent(product.brand)}&zoek=${encodeURIComponent(product.name)}`
  const bron = product.source_url?.startsWith('http') ? product.source_url : ''
  const bronRegel = bron
    ? `<a href="${escapeHtml(bron)}" target="_blank" rel="noreferrer">${escapeHtml(sourceDomain(bron) || 'bron')} ↗</a>`
    : 'niet vermeld'
  const herkomst = product.reviewed_at
    ? `gecontroleerd op ${datumNl(product.reviewed_at)}`
    : product.imported_at
      ? `automatisch overgenomen op ${datumNl(product.imported_at)}`
      : 'nog niet gecontroleerd'
  const kenmerken = [
    product.package_size,
    product.protein_source,
    product.single_protein ? 'één dierlijke eiwitbron' : '',
    product.grain_free ? 'graanvrij volgens etiket' : '',
    sizeLabel(product.size_class)
  ].filter(Boolean)
  const waarschuwingen = [
    onbenoemd.length ? `<p class="product-meta"><strong>Geen bron genoemd voor:</strong> ${escapeHtml(onbenoemd.join(', '))}</p>` : '',
    onbekend.length ? `<p class="product-meta"><strong>Onbekende woorden:</strong> ${escapeHtml(onbekend.join(', '))}</p>` : '',
    product.trace_text ? `<p class="product-meta"><strong>Sporen:</strong> ${escapeHtml(product.trace_text)}</p>` : ''
  ].filter(Boolean).join('\n      ')
  return `        <article class="product-card">
          <div class="product-card-top">
            <span class="product-brand">${escapeHtml(product.brand)}</span>
            <span class="product-type">${escapeHtml(snackTypeLabel(product.snack_type))}</span>
          </div>
          <h3 class="product-title"><a href="${zoekUrl}">${escapeHtml(product.name)}</a></h3>
          <p class="product-meta">${escapeHtml(kenmerken.join(' · '))}</p>
          <p class="product-etiket">${escapeHtml(product.ingredients_text)}</p>
          ${badge}
          ${waarschuwingen}
          <details class="faq">
            <summary>Volledige ingrediëntenlijst en bron</summary>
            <p class="ingredients-text">${escapeHtml(product.ingredients_text)}</p>
            <p class="product-meta">Bron: ${bronRegel} · ${escapeHtml(herkomst)}</p>
            ${product.source_note ? `<p class="product-meta">${escapeHtml(product.source_note)}</p>` : ''}
          </details>
          <a class="product-details" href="${zoekUrl}">Bekijk in de snackvergelijker →</a>
        </article>`
}

function merkPagina(brand, producten, buren = []) {
  const laatste = laatsteDatum(producten)
  const aantallen = producten.reduce((acc, product) => {
    acc[product.snack_type] = (acc[product.snack_type] ?? 0) + 1
    return acc
  }, {})
  const typeSamenvatting = SNACK_TYPES
    .filter(([key]) => aantallen[key])
    .map(([key, label]) => `${aantallen[key]} ${label.toLowerCase()}${aantallen[key] === 1 ? '' : 's'}`)
    .join(', ')
  const controleNodig = producten.filter((product) => {
    const uitslag = assessLabel(product.ingredients_text)
    return uitslag.hidden.length > 0 || uitslag.unknown.length > 0
  }).length
  const inhoud = `      <p class="breadcrumb"><a href="/">Hondenvoervergelijker</a> › <a href="/hondensnacks/">Hondensnacks</a> › <a href="/hondensnacks/merken/">Snackmerken</a> › ${escapeHtml(brand)}</p>
      <p class="eyebrow">Snackmerk</p>
      <h1>${escapeHtml(brand)} hondensnacks: ingrediënten en allergenen</h1>
      <p class="lead">${producten.length} snack${producten.length === 1 ? '' : 's'} van ${escapeHtml(brand)}${typeSamenvatting ? ` (${typeSamenvatting})` : ''}, met de letterlijke ingrediëntenlijst en de bronnen die het etiket noemt.${laatste ? ` Laatst gecontroleerd op ${escapeHtml(datumNl(laatste))}.` : ''}</p>
      <p><a class="cta" href="/hondensnacks/?merk=${encodeURIComponent(brand)}">Vergelijk ${escapeHtml(brand)} in de snackvergelijker</a></p>
      <div class="callout">
        <p>“Etiket volledig” betekent: elk ingrediënt noemt een bron bij name. “Controleer etiket” betekent: er staat een verzamelterm in de lijst (zoals “dierlijke bijproducten” of “granen”) of een woord dat de keuring niet kent.${controleNodig ? ` Dat geldt voor ${controleNodig} van de ${producten.length} snacks.` : ` Alle ${producten.length} snacks noemen elke bron bij name.`}</p>
      </div>

      <h2>Alle snacks van ${escapeHtml(brand)}</h2>
      <div class="product-grid">
${producten.map(productKaart).join('\n')}
      </div>

      <h2>Over deze snackmerkpagina</h2>
      <p>De ingrediëntenlijsten komen van de officiële productpagina's van ${escapeHtml(brand)}. De snackvergelijker neemt de tekst letterlijk over en beoordeelt per allergeen of de bron bij name genoemd is. Kies in de vergelijker de allergenen van jouw hond om te zien welke snacks geschikt lijken, welke uitgesloten zijn en waar je het etiket moet controleren.</p>
      <p><a class="cta" href="/hondensnacks/?merk=${encodeURIComponent(brand)}">Open ${escapeHtml(brand)} in de snackvergelijker</a> <a class="cta secondary" href="/hondenvoer-allergieen.html">Hoe lees je een etiket?</a></p>

      ${buren.length ? `<h2>Andere snackmerken</h2>
      <ul>
${buren.map((buur) => `        <li><a href="${snackMerkPad(buur.brand)}">${escapeHtml(buur.brand)}</a> — ${buur.aantal} snack${buur.aantal === 1 ? '' : 's'}</li>`).join('\n')}
      </ul>
      <p><a href="/hondensnacks/merken/">Bekijk alle snackmerken</a></p>` : ''}

      <p class="updated">Deze pagina wordt automatisch bijgewerkt wanneer de snackdata verandert. Inhoud: <a href="/over-ons.html#redactie">Paul Zuiderduin</a>. Klopt er iets niet? Mail <a href="mailto:hondenvoervergelijker@paulzuiderduin.com">hondenvoervergelijker@paulzuiderduin.com</a>.</p>`

  const itemList = {
    '@context': 'https://schema.org',
    '@type': 'ItemList',
    name: `${brand} hondensnacks`,
    numberOfItems: producten.length,
    itemListElement: producten.map((product, index) => ({
      '@type': 'ListItem',
      position: index + 1,
      name: `${brand} — ${product.name}`
    }))
  }
  const breadcrumb = {
    '@context': 'https://schema.org',
    '@type': 'BreadcrumbList',
    itemListElement: [
      { '@type': 'ListItem', position: 1, name: 'Hondenvoervergelijker', item: `${SITE_URL}/` },
      { '@type': 'ListItem', position: 2, name: 'Hondensnacks', item: `${SITE_URL}/hondensnacks/` },
      { '@type': 'ListItem', position: 3, name: 'Snackmerken', item: `${SITE_URL}/hondensnacks/merken/` },
      { '@type': 'ListItem', position: 4, name: brand, item: `${SITE_URL}${snackMerkPad(brand)}` }
    ]
  }
  return {
    pad: snackMerkPad(brand),
    html: shell({
      titel: `${brand} hondensnacks: ingrediënten en allergenen | Hondenvoervergelijker`,
      beschrijving: `Alle ${producten.length} hondensnacks van ${brand} met de letterlijke ingrediëntenlijst, dierlijke eiwitbron en allergeneninformatie.`,
      pad: snackMerkPad(brand),
      inhoud,
      jsonLd: [breadcrumb, itemList],
      robots: 'noindex, follow',
      ogImageAlt: `${brand} hondensnacks vergelijken`
    })
  }
}

function merkenIndex(merken) {
  const regels = merken.map(({ brand, aantal }) => `        <li><a href="${snackMerkPad(brand)}">${escapeHtml(brand)}</a> <span class="meta">(${aantal} snack${aantal === 1 ? '' : 's'})</span></li>`).join('\n')
  const inhoud = `      <p class="breadcrumb"><a href="/">Hondenvoervergelijker</a> › <a href="/hondensnacks/">Hondensnacks</a> › Snackmerken</p>
      <p class="eyebrow">Overzicht</p>
      <h1>Alle snackmerken in de vergelijker</h1>
      <p class="lead">Ontdek ${merken.length} snackmerken met in totaal ${merken.reduce((som, merk) => som + merk.aantal, 0)} snacks. Selecteer een merk om de ingrediëntenlijsten en allergeneninformatie per snack te bekijken.</p>
      <div class="card">
        <ul class="product-list">
${regels}
        </ul>
      </div>
      <p><a class="cta" href="/hondensnacks/">Vergelijk alle snackmerken op allergenen</a></p>
      <p class="updated">Deze pagina wordt automatisch bijgewerkt wanneer de snackdata verandert. Inhoud: <a href="/over-ons.html#redactie">Paul Zuiderduin</a>.</p>`
  return shell({
    titel: 'Alle snackmerken met ingrediënten en allergenen | Hondenvoervergelijker',
    beschrijving: `Overzicht van ${merken.length} snackmerken met ${merken.reduce((som, merk) => som + merk.aantal, 0)} hondensnacks, ingrediëntenlijsten en allergeneninformatie.`,
    pad: '/hondensnacks/merken/',
    inhoud,
    jsonLd: [{ '@context': 'https://schema.org', '@type': 'Organization', name: 'Hondenvoervergelijker', url: SITE_URL }],
    robots: 'noindex, follow',
    ogImageAlt: 'Snackmerken vergelijken'
  })
}

const data = leesSnacks()
if (!data.producten.length) {
  console.log('Geen snackdata gevonden; snackmerkpagina\'s overgeslagen.')
  process.exit(0)
}

const perMerk = new Map()
for (const product of data.producten) {
  if (!product.brand || !product.ingredients_text) continue
  const lijst = perMerk.get(product.brand) ?? []
  lijst.push(product)
  perMerk.set(product.brand, lijst)
}
const merken = [...perMerk.entries()]
  .map(([brand, producten]) => ({ brand, aantal: producten.length, producten }))
  .sort((eerste, tweede) => eerste.brand.localeCompare(tweede.brand, 'nl'))

const doelmap = join(DIST, 'hondensnacks', 'merken')
mkdirSync(doelmap, { recursive: true })
let geschreven = 0
for (const merk of merken) {
  const buren = merken.filter(({ brand }) => brand !== merk.brand)
  const pagina = merkPagina(merk.brand, merk.producten, buren)
  writeFileSync(join(DIST, pagina.pad.replace(/^\//, '')), pagina.html)
  geschreven += 1
}
writeFileSync(join(doelmap, 'index.html'), merkenIndex(merken))
console.log(`Geschreven: ${geschreven} snackmerkpagina's en /hondensnacks/merken/`)
