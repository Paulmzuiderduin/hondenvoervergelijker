#!/usr/bin/env node
// Rooktest van de live site in een echte Chrome. Draait na elke deploy en
// controleert de belangrijkste gebruikersroutes, de statische pagina's en of de
// mobiele layout niet horizontaal overloopt.
//
// Gebruik:
//   npm run controleer:site
//   npm run controleer:site -- --basis=http://localhost:5173
//
// De test gebruikt playwright-core met de Chrome die al op de machine staat.

import { chromium } from 'playwright-core'

const argumenten = new Map(
  process.argv
    .slice(2)
    .filter((ruw) => ruw.startsWith('--'))
    .map((ruw) => {
      const [naam, waarde] = ruw.replace(/^--/, '').split('=')
      return [naam, waarde ?? '']
    })
)

const BASIS = (argumenten.get('basis') || 'https://hondenvoervergelijker.paulzuiderduin.com').replace(/\/$/, '')
const fouten = []

function meld(ok, tekst, detail = '') {
  console.log(`${ok ? 'ok  ' : 'FOUT'} ${tekst}${detail ? ` — ${detail}` : ''}`)
  if (!ok) fouten.push(`${tekst}${detail ? `: ${detail}` : ''}`)
}

const browser = await chromium.launch({ channel: 'chrome', headless: true })
const context = await browser.newContext({ locale: 'nl-NL', viewport: { width: 1280, height: 900 } })
const page = await context.newPage()

const consoleFouten = []
page.on('console', (bericht) => {
  if (bericht.type() === 'error') consoleFouten.push(bericht.text().slice(0, 240))
})
page.on('pageerror', (fout) => consoleFouten.push(String(fout.message).slice(0, 240)))

async function open(pad, wachtOp) {
  const antwoord = await page.goto(`${BASIS}${pad}`, { waitUntil: 'domcontentloaded', timeout: 45000 })
  if (!antwoord || !antwoord.ok()) throw new Error(`${pad} gaf HTTP ${antwoord?.status() ?? '?'}`)
  if (wachtOp) await page.waitForSelector(wachtOp, { timeout: 45000 })
  return antwoord
}

try {
  // 1. Homepage en producten
  await open('/', '.product-card')
  const titel = await page.title()
  meld(/Hondenvoer vergelijken/.test(titel), 'homepage heeft de juiste titel', titel)
  const kaarten = await page.locator('.product-card').count()
  meld(kaarten >= 1, 'homepage toont producten', `${kaarten} kaarten`)
  const hoofdnavigatie = await page.locator('.site-nav a').evaluateAll((links) => links.map((link) => link.getAttribute('href')))
  meld(hoofdnavigatie.length === 4 && hoofdnavigatie.includes('/') && hoofdnavigatie.includes('/hondensnacks/') && hoofdnavigatie.includes('/blog/') && hoofdnavigatie.includes('/hoe-wij-vergelijken.html'), 'hoofdnavigatie heeft vier duidelijke secties', hoofdnavigatie.filter(Boolean).join(' · '))
  const desktopHierarchie = await page.evaluate(() => {
    const rect = (selector) => document.querySelector(selector)?.getBoundingClientRect()
    const allergen = rect('#vergelijken')
    const filters = rect('.filters')
    const resultaten = rect('#resultaten')
    return {
      header: getComputedStyle(document.querySelector('.site-header')).position,
      allergenLinks: allergen?.left ?? 0,
      filtersLinks: filters?.left ?? 0,
      resultatenLinks: resultaten?.left ?? 0,
      areas: getComputedStyle(document.querySelector('.layout')).gridTemplateAreas
    }
  })
  meld(desktopHierarchie.header === 'static', 'desktopheader schuift mee en neemt geen resultaatruimte in', desktopHierarchie.header)
  meld(desktopHierarchie.allergenLinks < desktopHierarchie.filtersLinks && desktopHierarchie.resultatenLinks < desktopHierarchie.filtersLinks, 'stap 1 en resultaten staan links, verfijnen staat rechts', `${Math.round(desktopHierarchie.allergenLinks)}px · ${Math.round(desktopHierarchie.resultatenLinks)}px · ${Math.round(desktopHierarchie.filtersLinks)}px`)
  const pagerKnoppen = await page.locator('.pager-pages button').count()
  meld(await page.locator('.pager select').count() === 0 && pagerKnoppen > 1, 'paginering gebruikt genummerde knoppen in plaats van een lange keuzelijst', `${pagerKnoppen} paginaknoppen`)
  const kaartProductpad = await page.locator('.product-name a').first().getAttribute('href')
  meld(/^\/producten\/[a-z0-9-]+\/[a-z0-9-]+\.html$/.test(kaartProductpad), 'productkaart linkt naar de indexeerbare productpagina', kaartProductpad)

  // 2. Allergeen via de URL
  await open('/?allergeen=chicken', '.product-card')
  const chips = await page.locator('.allergen-chip').allInnerTexts()
  meld(chips.some((tekst) => tekst.includes('Kip')), 'allergeen Kip staat als filter actief', chips.join(' / '))
  const samenvatting = await page.locator('.result-summary').innerText()
  meld(/Lijkt geschikt:/i.test(samenvatting), 'resultaten zijn per allergenen beoordeeld', samenvatting.replace(/\n/g, ' '))

  const status = await page.locator('.result-status').innerText()
  meld(/geschikt/.test(status), 'dynamische resultaatmelding noemt de geschikte producten', status.replace(/\n/g, ' ').slice(0, 120))
  const actieveChips = await page.locator('.selected-allergens-bar .selected-allergen-chip').allInnerTexts()
  meld(actieveChips.some((tekst) => tekst.includes('Kip')), 'actief allergeen staat bij de resultaten', actieveChips.join(' / '))
  const wisKnoppen = await page.locator('.selected-allergens-actions .link').allInnerTexts()
  meld(wisKnoppen.some((tekst) => /Wis/.test(tekst)), 'actieve filters hebben een wis-knop', wisKnoppen.join(' / '))
  const voorbeeld = await page.locator('.result-preview').innerText()
  meld(/Lijkt geschikt: \d+/i.test(voorbeeld) && /Controle nodig: \d+/.test(voorbeeld) && /Uitgesloten: \d+/.test(voorbeeld), 'driewegtelling staat direct onder de allergenenkeuze', voorbeeld.replace(/\n/g, ' ').slice(0, 120))
  await page.locator('.allergen-group summary').first().click()
  const allergenenRaster = await page.locator('.allergen-group .choices').first().evaluate((el) => {
    const label = el.querySelector('.inline')
    return { weergave: getComputedStyle(el).display, kolommen: getComputedStyle(el).gridTemplateColumns.split(' ').length, hoogte: label?.getBoundingClientRect().height ?? 0 }
  })
  meld(allergenenRaster.weergave === 'grid' && allergenenRaster.kolommen >= 3 && allergenenRaster.hoogte >= 24, 'allergenen staan in een compact uitgelijnd raster', `${allergenenRaster.weergave} · ${allergenenRaster.kolommen} kolommen · ${Math.round(allergenenRaster.hoogte)}px`)

  // 3. Merk-deeplink
  await open('/?merk=Acana', '.product-card')
  const filter = await page.locator('.brand-filter .filter-summary').innerText()
  meld(/1 van \d+ merken/.test(filter), 'merk-deeplink selecteert één merk', filter)

  // 3b. Voedingswaarden op de kaart en in het detail
  await open('/?merk=Prins%20Petfoods', '.product-card')
  const voedingSamenvatting = await page.locator('.nutrition-summary').first().innerText()
  meld(/Eiwit/.test(voedingSamenvatting) && !/NaN/.test(voedingSamenvatting), 'voedingswaarden staan op de productkaart', voedingSamenvatting)
  await page.locator('.nutrition summary').first().click()
  const voedingDetail = await page.locator('.nutrition-grid').first().innerText()
  meld(/Ruw eiwit/.test(voedingDetail) && !/NaN/.test(voedingDetail), 'voedingswaarden-detail is compleet', voedingDetail.replace(/\n/g, ' ').slice(0, 100))
  const voedingContext = await page.locator('.nutrition-context').first().innerText()
  meld(/vocht/i.test(voedingContext) && /niet direct|vergelijk/i.test(voedingContext), 'voedingswaarden geven context over vocht', voedingContext.replace(/\n/g, ' ').slice(0, 120))
  await page.locator('.ingredients summary').first().click()
  await page.waitForFunction(() => {
    const tekst = document.querySelector('.ingredients')?.innerText ?? ''
    return tekst.length > 40 && !/laden/i.test(tekst)
  }, null, { timeout: 20000 }).catch(() => {})
  const ingredienten = await page.locator('.ingredients').first().innerText()
  meld(ingredienten.length > 60 && !/laden/i.test(ingredienten), 'ingrediëntenlijst wordt pas bij openen geladen', ingredienten.replace(/\n/g, ' ').slice(0, 100))
  const wetKaart = page.locator('.product-card').filter({ has: page.locator('.nutrition-kind.wet') }).first()
  await wetKaart.locator('.nutrition summary').click()
  const natDetail = await wetKaart.locator('.nutrition-grid').innerText()
  const eiwitNat = Number(natDetail.match(/Ruw eiwit\s+([\d,]+)%/)?.[1]?.replace(',', '.'))
  const vochtNat = Number(natDetail.match(/Vocht\s+([\d,]+)%/)?.[1]?.replace(',', '.'))
  await wetKaart.locator('.nutrition-view-toggle button', { hasText: 'Droge stof' }).click()
  const droogDetail = await wetKaart.locator('.nutrition-grid').innerText()
  const droogContext = await wetKaart.locator('.nutrition-context').innerText()
  const eiwitDroog = Number(droogDetail.match(/Ruw eiwit\s+([\d,]+)%/)?.[1]?.replace(',', '.'))
  const verwachtDroog = Math.round((eiwitNat / (100 - vochtNat)) * 100 * 10) / 10
  meld(/Droge stof/i.test(droogContext) && Number.isFinite(eiwitDroog) && Math.abs(eiwitDroog - verwachtDroog) < 0.1 && !/Vocht\s/.test(droogDetail), 'droge-stofweergave rekent het vocht weg', `${eiwitNat}% / ${vochtNat}% vocht → ${eiwitDroog}% (verwacht ${verwachtDroog}%)`)

  // 3c. Voedingswaardefilters met minimum en maximum
  await open('/?type=kibble&sorteer=eiwit-laag&eiwit=30-35&calcium=1-2', '.product-card')
  const typeChips = await page.locator('.type-chip.active').allInnerTexts()
  meld(typeChips.length === 1 && typeChips[0] === 'Brokken', 'voertype en sortering staan in de URL', typeChips.join(' / '))
  const sorteerWaarde = await page.locator('.sort-select select').inputValue()
  meld(sorteerWaarde === 'eiwit-laag', 'sorteerkeuze wordt uit de URL hersteld', sorteerWaarde)
  const filterTelling = await page.locator('.filters-count').innerText()
  meld(/producten/.test(filterTelling), 'filterkolom toont het aantal resultaten', filterTelling)
  const primaireFilters = await page.locator('.nutrition-filter-block > .nutrition-filter').count()
  const extraFilters = await page.locator('.nutrition-extra .nutrition-filter').count()
  meld(primaireFilters === 3 && extraFilters === 7, 'tien voedingsfilters, waarvan zeven in de uitklapregel', `${primaireFilters} + ${extraFilters}`)
  const extraOpen = await page.locator('.nutrition-extra').getAttribute('open')
  meld(extraOpen !== null, 'uitklapregel opent automatisch bij een actief extra filter')
  const voedingsChips = await page.locator('.active-filters .filter-chip').allInnerTexts()
  meld(voedingsChips.some((tekst) => /Eiwit 30–35%/.test(tekst)) && voedingsChips.some((tekst) => /Calcium 1–2%/.test(tekst)), 'voedingsfilters staan als chips bij de resultaten', voedingsChips.join(' / '))
  const eiwitWaarden = (await page.locator('.product-card .nutrition-summary').allInnerTexts())
    .map((tekst) => { const match = tekst.match(/Eiwit ([\d,]+)%/); return match ? Number(match[1].replace(',', '.')) : null })
    .filter((waarde) => waarde != null)
  meld(eiwitWaarden.length > 0 && eiwitWaarden.every((waarde) => waarde >= 30 && waarde <= 35), 'eiwitfilter toont alleen waarden tussen 30 en 35%', eiwitWaarden.join(', '))
  await page.locator('.nutrition summary').first().click()
  const eersteDetail = await page.locator('.nutrition-grid').first().innerText()
  const calciumWaarde = eersteDetail.match(/Calcium\s+([\d,]+)%/)
  meld(Boolean(calciumWaarde) && Number(calciumWaarde[1].replace(',', '.')) >= 1 && Number(calciumWaarde[1].replace(',', '.')) <= 2, 'calciumfilter toont alleen waarden tussen 1 en 2%', calciumWaarde?.[0] ?? eersteDetail.replace(/\n/g, ' ').slice(0, 100))
  const bronRegel = await page.locator('.nutrition-source').first().innerText()
  meld(/Voedingsbron:/.test(bronRegel) && /gecontroleerd op/.test(bronRegel), 'voedingsbron en controledatum staan op de kaart', bronRegel.replace(/\n/g, ' ').slice(0, 120))
  const sorteerKeuze = page.locator('.sort-select select')
  meld(await sorteerKeuze.count() === 1, 'sorteerkeuze staat bij de resultaten')
  await sorteerKeuze.selectOption('eiwit-laag')
  await page.waitForFunction(() => document.querySelector('.sort-select select')?.value === 'eiwit-laag')
  const gesorteerdeEiwitten = (await page.locator('.product-card .nutrition-summary').allInnerTexts())
    .slice(0, 3)
    .map((tekst) => { const match = tekst.match(/Eiwit ([\d,]+)%/); return match ? Number(match[1].replace(',', '.')) : null })
    .filter((waarde) => waarde != null)
  meld(gesorteerdeEiwitten.length >= 2 && gesorteerdeEiwitten.every((waarde, index) => index === 0 || gesorteerdeEiwitten[index - 1] <= waarde), 'eiwit sorteren van laag naar hoog werkt', gesorteerdeEiwitten.join(', '))

  // 3d. Waarschuwing bij sorteren, zoeken en de scope van de kolomreset
  await open('/?sorteer=eiwit-hoog', '.product-card')
  const sorteerWaarschuwing = await page.locator('.sort-warning').innerText()
  meld(/sorteert op voeding/i.test(sorteerWaarschuwing), 'sorteren op voeding waarschuwt voor natvoer versus brokken', sorteerWaarschuwing.replace(/\n/g, ' ').slice(0, 120))
  await open('/?zoek=renal', '.product-card')
  const zoekWaarde = await page.locator('.product-search input').inputValue()
  const zoekChip = await page.locator('.active-filters').innerText()
  meld(zoekWaarde === 'renal' && /Zoek: renal/.test(zoekChip), 'productzoeken staat in de URL en als chip', `${zoekWaarde} · ${zoekChip.replace(/\n/g, ' ').slice(0, 80)}`)
  await page.goto(`${BASIS}/?leeftijd=puppy&maat=large`, { waitUntil: 'domcontentloaded' })
  await page.waitForSelector('.product-card', { timeout: 45000 })
  const traitNamen = (await page.locator('.product-name').allInnerTexts()).slice(0, 5)
  const traitChips = await page.locator('.active-filters .filter-chip').allInnerTexts()
  meld(traitNamen.length > 0 && traitNamen.every((naam) => /puppy|junior/i.test(naam) && /large|giant|maxi|groot|grote/i.test(naam)) && traitChips.some((tekst) => /Leeftijd: Puppy/.test(tekst)) && traitChips.some((tekst) => /Formaat: Large/.test(tekst)), 'leeftijd- en formaatfilter werken en staan in de URL', traitNamen.join(' / '))
  const traitStijl = await page.locator('.trait-chip.active').first().evaluate((el) => {
    const stijl = getComputedStyle(el)
    return { achtergrond: stijl.backgroundColor, tekst: stijl.color }
  })
  meld(traitStijl.achtergrond === 'rgb(23, 91, 48)' && traitStijl.tekst === 'rgb(255, 255, 255)', 'actieve leeftijd-/formaatkeuze is duidelijk zichtbaar', `${traitStijl.achtergrond} / ${traitStijl.tekst}`)
  await open('/?allergeen=chicken&eiwit=25-35', '.product-card')
  await page.locator('.filters-reset').click()
  const allergenenNaReset = await page.locator('.selected-allergens .allergen-chip').allInnerTexts()
  const voedingsNaReset = await page.locator('.active-filters').count()
  meld(allergenenNaReset.some((tekst) => /Kip/.test(tekst)) && voedingsNaReset === 0, 'kolomreset laat de allergenenkeuze staan', `${allergenenNaReset.join(' / ')} · ${voedingsNaReset} verfijningsblokken`)

  // 3e. Producten naast elkaar vergelijken, met een allergenenkeuze.
  await open('/?allergeen=chicken&merk=Acana', '.product-card')
  const vergelijkVinkjes = page.locator('.compare-toggle input')
  await vergelijkVinkjes.nth(0).check()
  await vergelijkVinkjes.nth(1).check()
  await vergelijkVinkjes.nth(2).check()
  const vierdeUit = await vergelijkVinkjes.nth(3).isDisabled()
  const vergelijkBar = await page.locator('.compare-bar').innerText()
  const vergelijkSticky = await page.locator('.results-action-bar').evaluate((el) => getComputedStyle(el).position)
  const geenBalkOverlap = await page.evaluate(() => {
    const eerste = document.querySelector('.selected-allergens-bar')?.getBoundingClientRect()
    const tweede = document.querySelector('.compare-bar')?.getBoundingClientRect()
    if (!eerste || !tweede) return true
    return eerste.right <= tweede.left || tweede.right <= eerste.left || eerste.bottom <= tweede.top || tweede.bottom <= eerste.top
  })
  meld(/3\/3 geselecteerd/.test(vergelijkBar) && vierdeUit && vergelijkSticky === 'sticky' && geenBalkOverlap, 'maximaal drie producten vergelijken en de gecombineerde balk blijft zonder overlap in beeld', `${vergelijkBar.replace(/\n/g, ' ').slice(0, 100)} · ${vergelijkSticky} · overlap ${geenBalkOverlap ? 'nee' : 'ja'}`)
  await page.evaluate(() => document.getElementById('resultaten')?.scrollIntoView({ block: 'start' }))
  await page.waitForTimeout(150)
  const actieTop = await page.locator('.results-action-bar').evaluate((el) => el.getBoundingClientRect().top)
  const headerWeg = await page.locator('.site-header').evaluate((el) => el.getBoundingClientRect().bottom <= 0)
  meld(headerWeg && actieTop >= 0 && actieTop <= 24, 'actiebalk plakt direct boven de resultaten zonder vaste header', `header weg: ${headerWeg ? 'ja' : 'nee'} · balk ${Math.round(actieTop)}px`)
  await page.locator('.compare-open').click()
  await page.waitForSelector('.compare-panel', { timeout: 10000 })
  const vergelijkRijen = await page.locator('.compare-table tbody tr').count()
  const vergelijkKolommen = await page.locator('.compare-table thead th').count()
  const vergelijkOordeel = await page.locator('.compare-section-row').first().innerText()
  const vergelijkMatrix = await page.locator('.compare-table').innerText()
  meld(vergelijkRijen >= 8 && vergelijkKolommen === 4 && /Jouw allergenen/i.test(vergelijkOordeel) && /Niet genoemd|Kan erin zitten|Genoemd/.test(vergelijkMatrix), 'vergelijkingsdialoog toont producten en allergenoordeel', `${vergelijkRijen} rijen · ${vergelijkKolommen} kolommen · ${vergelijkMatrix.replace(/\n/g, ' ').slice(0, 100)}`)
  const matrixPill = await page.locator('.compare-table .compare-matrix-cell .compare-state').first().evaluate((el) => ({ tekst: el.innerText, breedte: el.getBoundingClientRect().width }))
  meld(matrixPill.breedte > 60 && /Niet genoemd|Genoemd|Kan erin zitten/.test(matrixPill.tekst), 'allergenenmatrix toont volledige statuslabels', `${matrixPill.tekst} · ${Math.round(matrixPill.breedte)}px`)
  await page.keyboard.press('Escape')
  await page.waitForTimeout(100)
  meld(await page.locator('.compare-panel').count() === 0, 'vergelijkingsdialoog sluit met Escape')

  // 4. Melding wanneer niets geschikt is
  await open('/?merk=Royal%20Canin&allergeen=beef', '.no-suitable')
  const melding = await page.locator('.no-suitable strong').innerText()
  meld(/Geen enkel product/.test(melding), 'waarschuwing zonder geschikt product verschijnt', melding)

  // 5. Statische pagina's
  await open('/merken/', '.product-list')
  const merken = await page.locator('.product-list a').count()
  meld(merken >= 60, 'merkenoverzicht is compleet', `${merken} merken`)

  await open('/merken/acana.html', '.product-list')
  const productHref = await page.locator('.product-list a.product-more').first().getAttribute('href')
  const productAntwoord = await context.request.get(`${BASIS}${productHref}`)
  const productHtml = await productAntwoord.text()
  meld(productAntwoord.ok() && /<h1>/.test(productHtml) && /Allergenen en het etiket/.test(productHtml) && /Ingrediëntenlijst/.test(productHtml) && /"@type":"Product"/.test(productHtml) && !/"offers"/.test(productHtml) && !/>null</.test(productHtml), 'productpagina is indexeerbaar, gevuld en zonder offers-schema', productHref)

  const broncontroleAntwoord = await context.request.get(`${BASIS}/broncontrole.html`)
  const broncontroleHtml = await broncontroleAntwoord.text()
  meld(broncontroleAntwoord.ok() && /Broncontrole/.test(broncontroleHtml) && /Handmatig nagelopen/.test(broncontroleHtml), 'openbaar broncontroleverslag is bereikbaar')

  const matchedProduct = await context.request.get(`${BASIS}/producten/acana/adult-dog-recipe-08c788d6.html`)
  const matchedHtml = await matchedProduct.text()
  meld(matchedProduct.ok() && /Dierenwinkel XL/.test(matchedHtml) && /rel="sponsored nofollow noopener noreferrer"/.test(matchedHtml) && /€\s?\d/.test(matchedHtml) && /vanaf/i.test(matchedHtml) && !/"offers"/.test(matchedHtml), 'gekoppelde productpagina toont partnerlink met vanaf-prijs en zonder offers-schema')

  const winkelsAntwoord = await context.request.get(`${BASIS}/winkels.json`)
  const winkelsJson = winkelsAntwoord.ok() ? await winkelsAntwoord.json().catch(() => ({})) : {}
  const winkelLinks = Object.values(winkelsJson.aanbieders ?? {}).flat()
  const winkelLinksMetPrijs = winkelLinks.filter((link) => Number.isFinite(link.prijs) && link.prijs > 0)
  meld(winkelsAntwoord.ok() && winkelLinks.length >= 30 && winkelLinks.every((link) => link.winkel === 'Dierenwinkel XL' && /tt=4019_/.test(link.url) && (link.prijs == null || (Number.isFinite(link.prijs) && link.prijs > 0))) && winkelLinksMetPrijs.length >= 30, 'winkelkoppeling bevat betrouwbare Dierenwinkel XL-links met vanaf-prijs', `${winkelLinks.length} links, ${winkelLinksMetPrijs.length} met prijs`)

  await open('/?zoek=Acana%20Adult%20Dog%20Recipe', '.product-card')
  await page.waitForSelector('.shop-link', { timeout: 10000 })
  const shopLink = page.locator('.shop-link').first()
  const shopRel = await shopLink.getAttribute('rel')
  const shopTekst = await shopLink.innerText()
  const shopNote = await page.locator('.shop-note').first().innerText()
  meld(/Dierenwinkel XL/.test(shopTekst) && /sponsored/.test(shopRel || '') && /€/.test(shopTekst), 'winkelknop toont winkel, maat en vanaf-prijs', `${shopTekst} · ${shopRel}`)
  meld(/vanaf-prijs/i.test(shopNote) && /afwijken/i.test(shopNote), 'winkelprijs is als vanaf-prijs gelabeld', shopNote)

  await open('/hypoallergene-hondenvoeding.html', '.stat-grid')
  const hypo = await page.locator('body').innerText()
  meld(/hypoallergeen/i.test(hypo) && /niet beschermd|geen beschermde term/i.test(hypo), 'hypoallergeen-pagina legt de term voorzichtig uit')

  await open('/privacybeleid.html', 'h1')
  const privacy = await page.locator('body').innerText()
  meld(privacy.includes('mijn.host'), 'privacybeleid noemt de hostingpartij')
  meld(privacy.includes('hondenvoervergelijker@paulzuiderduin.com'), 'privacybeleid heeft het juiste contactadres')
  meld(privacy.includes('Umami'), 'privacybeleid noemt de bezoekersstatistieken')
  meld(/feedbackknop/i.test(privacy) && /twaalf maanden/i.test(privacy), 'privacybeleid beschrijft de feedback en bewaartermijn')
  meld(/TradeTracker/i.test(privacy) && /Dierenwinkel XL/i.test(privacy), 'privacybeleid noemt TradeTracker en Dierenwinkel XL')

  await open('/hondenvoer-zonder-kip.html', '.answer-box')
  const faqAantal = await page.locator('.faq details').count()
  meld(faqAantal >= 4, 'allergeenpagina heeft een FAQ', `${faqAantal} vragen`)
  const citeerblok = await page.locator('.cite').innerText()
  meld(/Citeer deze pagina/.test(citeerblok), 'allergeenpagina heeft een citeerblok')

  // 5b. Feedbackknop en -dialoog
  await open('/', '.product-card')
  const feedbackKnoppen = await page.locator('.feedback-button').count()
  const feedbackPositie = await page.locator('.feedback-button').evaluate((el) => getComputedStyle(el).position)
  const feedbackBox = await page.locator('.feedback-button').boundingBox()
  const scherm = page.viewportSize()
  meld(feedbackKnoppen === 1 && feedbackPositie === 'fixed', 'feedbackknop zweeft rechtsonder en staat één keer op de pagina', `${feedbackKnoppen} knop · ${feedbackPositie}`)
  meld(Boolean(feedbackBox) && feedbackBox.height >= 44 && feedbackBox.x >= 0 && feedbackBox.y >= 0 && feedbackBox.x + feedbackBox.width <= scherm.width + 1 && feedbackBox.y + feedbackBox.height <= scherm.height + 1, 'feedbackknop is groot genoeg en blijft binnen het scherm', feedbackBox ? `${Math.round(feedbackBox.width)}×${Math.round(feedbackBox.height)}` : 'niet gevonden')
  await page.locator('.feedback-button').click()
  await page.waitForSelector('.feedback-dialog', { timeout: 10000 })
  const feedbackTitel = await page.locator('#feedback-titel').innerText()
  const feedbackVragen = await page.locator('.feedback-fieldset legend').allInnerTexts()
  meld(/verbeteren/i.test(feedbackTitel) && feedbackVragen.length === 2, 'feedbackdialoog opent met de korte vragen', `${feedbackTitel} · ${feedbackVragen.join(' / ')}`)
  const feedbackPrivacy = await page.locator('.feedback-privacy').innerText()
  meld(/geen medische gegevens/i.test(feedbackPrivacy) && /privacybeleid/i.test(feedbackPrivacy), 'feedbackdialoog waarschuwt voor medische gegevens en linkt het privacybeleid')
  await page.keyboard.press('Escape')
  await page.waitForTimeout(100)
  meld(await page.locator('.feedback-dialog').count() === 0, 'feedbackdialoog sluit met Escape')
  const focusTerug = await page.evaluate(() => document.activeElement?.classList.contains('feedback-button'))
  meld(focusTerug, 'focus keert na sluiten terug naar de feedbackknop')

  await open('/etikettenonderzoek.html', '.stat-grid')
  const onderzoek = await page.locator('.stat-grid').innerText()
  meld(/producten/.test(onderzoek), 'etikettenonderzoek toont cijfers', onderzoek.replace(/\n/g, ' ').slice(0, 100))

  await open('/blog/', '.blog-grid')
  const blogKaarten = await page.locator('.blog-grid .blog-card').count()
  const blogHref = await page.locator('.blog-grid .blog-card h3 a, .blog-grid .blog-card h2 a').first().getAttribute('href')
  meld(blogKaarten >= 3 && Boolean(blogHref), 'blogoverzicht toont artikelen', `${blogKaarten} artikelen`)
  if (blogHref) {
    await open(blogHref, '.blog-content')
    const blogTekst = await page.locator('.blog-content').innerText()
    const blogSchema = await page.locator('script[type="application/ld+json"]').first().textContent()
    meld(blogTekst.length > 400 && /"Article"/.test(blogSchema || ''), 'blogartikel heeft inhoud en Article-structured-data')
  }
  const feed = await context.request.get(`${BASIS}/blog/feed.xml`)
  const feedTekst = await feed.text()
  meld(feed.ok() && feedTekst.includes('<rss') && feedTekst.includes('<item>'), 'blog-rss is bereikbaar en bevat artikelen')

  await open('/hondensnacks/', '.snack-card')
  const snackKaarten = await page.locator('.snack-card').count()
  const snackTitel = await page.title()
  const snackRobots = await page.locator('meta[name="robots"]').getAttribute('content')
  const snackCanonical = await page.locator('link[rel="canonical"]').getAttribute('href')
  const snackBlogLink = await page.locator('footer a[href="/blog/"]').count()
  meld(snackKaarten >= 1 && /Hondensnacks vergelijken/.test(snackTitel), 'snackvergelijker toont snacks', `${snackKaarten} snacks · ${snackTitel}`)
  meld(/noindex/i.test(snackRobots || '') && Boolean(snackCanonical?.includes('/hondensnacks/')), 'snacksectie is een noindex-preview met eigen canonical', `${snackRobots} · ${snackCanonical}`)
  meld(snackBlogLink === 1, 'snacksectie linkt terug naar de blog', `${snackBlogLink} bloglink`)
  await page.locator('.quick-allergen', { hasText: 'Kip' }).click()
  await page.waitForTimeout(100)
  const snackStatusKnoppen = await page.locator('.result-summary button').count()
  const snackActiebalk = await page.locator('.results-action-bar').innerText()
  const snackKaartlabel = await page.locator('.snack-card .card-section-label').first().innerText()
  const snackMerkLinks = await page.locator('.snack-card a.product-brand').count()
  meld(snackStatusKnoppen >= 2 && /Je sluit uit/i.test(snackActiebalk), 'snackresultaten hebben dezelfde statusfilters en actiebalk', `${snackStatusKnoppen} statusknoppen · ${snackActiebalk.replace(/\n/g, ' ').slice(0, 80)}`)
  meld(/Uitsluiting/i.test(snackKaartlabel), 'snackkaarten gebruiken dezelfde uitsluitingsopbouw', snackKaartlabel)
  meld(snackMerkLinks === 0, 'snackmerken linken niet naar voermerkenpagina’s', `${snackMerkLinks} merklink(en)`)

  const beoordelingen = await context.request.get(`${BASIS}/catalog-assessment.json`)
  const beoordelingenJson = beoordelingen.ok() ? await beoordelingen.json().catch(() => ({})) : {}
  const beoordelingenAantal = Object.keys(beoordelingenJson.producten ?? beoordelingenJson).length
  meld(beoordelingen.ok() && beoordelingenAantal >= 1400, 'compacte allergenenbeoordeling is beschikbaar', `${beoordelingenAantal} producten`)
  const llms = await context.request.get(`${BASIS}/llms.txt`)
  const llmsTekst = await llms.text()
  meld(llms.ok() && llmsTekst.includes('# Hondenvoervergelijker'), 'llms.txt is bereikbaar en gevuld')
  const robots = await context.request.get(`${BASIS}/robots.txt`)
  const robotsTekst = await robots.text()
  meld(robots.ok() && robotsTekst.includes('GPTBot') && robotsTekst.includes('Sitemap:') && robotsTekst.includes('Disallow: /catalog-assessment.json'), 'robots.txt staat open voor AI-crawlers en sluit machine-JSON uit')

  const sitemap = await context.request.get(`${BASIS}/sitemap.xml`)
  const xml = await sitemap.text()
  const aantalUrls = (xml.match(/<loc>/g) ?? []).length
  meld(sitemap.ok() && aantalUrls >= 1500, 'sitemap is bereikbaar en bevat de productpagina’s', `${aantalUrls} URL's`)
  const llmsAantal = Number((llmsTekst.match(/- ([\d.]+) pagina's in de sitemap/) ?? [])[1]?.replace(/\./g, ''))
  meld(llms.ok() && llmsAantal === aantalUrls, 'llms.txt en sitemap noemen hetzelfde aantal pagina’s', `${llmsAantal} vs ${aantalUrls}`)

  // 6. Lage desktop: de filterkolom moet intern scrollen en binnen de viewport
  // blijven, zodat Merken niet pas na de hele pagina bereikbaar is.
  await page.setViewportSize({ width: 1280, height: 700 })
  await open('/', '.product-card')
  const advancedDicht = await page.locator('.advanced-filters').evaluate((el) => el.open)
  meld(advancedDicht === false, 'uitgebreide voedings- en merkfilters staan standaard ingeklapt')
  await page.locator('.advanced-filters > summary').click()
  await page.waitForTimeout(100)
  await page.evaluate(() => window.scrollTo(0, 900))
  await page.waitForTimeout(150)
  const filterVoor = await page.locator('.filters').evaluate((el) => {
    const r = el.getBoundingClientRect()
    return { bottom: r.bottom, clientHeight: el.clientHeight, scrollHeight: el.scrollHeight, boxSizing: getComputedStyle(el).boxSizing }
  })
  const filterBox = await page.locator('.filters').boundingBox()
  await page.mouse.move(filterBox.x + filterBox.width / 2, filterBox.y + 200)
  await page.mouse.wheel(0, 900)
  await page.waitForTimeout(150)
  const filterNa = await page.locator('.filters').evaluate((el) => ({
    scrollTop: el.scrollTop,
    merkenBottom: document.querySelector('.brand-filter')?.getBoundingClientRect().bottom ?? Infinity
  }))
  meld(filterVoor.bottom <= 701 && filterVoor.boxSizing === 'border-box' && filterVoor.scrollHeight > filterVoor.clientHeight && filterNa.scrollTop > 0 && filterNa.merkenBottom <= 701, 'filterkolom scrolt intern en houdt merken bereikbaar', `bottom ${Math.round(filterVoor.bottom)} · scroll ${filterNa.scrollTop} · merken ${Math.round(filterNa.merkenBottom)}`)

  // 7. Mobiele weergave
  await page.setViewportSize({ width: 390, height: 844 })
  await open('/', '.product-card')
  const mobiel = await page.evaluate(() => {
    const boven = (sel) => document.querySelector(sel).getBoundingClientRect().top
    return {
      breed: document.documentElement.scrollWidth,
      scherm: window.innerWidth,
      headerPositie: getComputedStyle(document.querySelector('.site-header')).position,
      filterBody: getComputedStyle(document.querySelector('.filters-body')).display,
      volgorde: boven('#vergelijken') < boven('.filters') && boven('.filters') < boven('#resultaten'),
      herhaling: [...document.querySelectorAll('.product-card .reason')].filter((el) => /Kies je allergenen/.test(el.textContent)).length,
      springlink: document.querySelector('.jump-to-results')?.innerText ?? ''
    }
  })
  meld(mobiel.breed <= mobiel.scherm + 1, 'geen horizontale overflow op mobiel', `${mobiel.breed}px op ${mobiel.scherm}px`)
  meld(mobiel.headerPositie === 'static', 'mobiele header is niet sticky')
  meld(mobiel.filterBody === 'none', 'filters staan op mobiel ingeklapt')
  meld(mobiel.volgorde, 'allergenen staan op mobiel vóór filters en resultaten')
  meld(mobiel.herhaling === 0, 'geen herhaalde allergeenuitleg op productkaarten')
  meld(/resultaten/i.test(mobiel.springlink), 'resultaten zijn direct bereikbaar met een springlink', mobiel.springlink)
  await page.locator('.filters-toggle').click()
  const mobielOpen = await page.evaluate(() => ({
    jump: document.querySelector('.filter-jump')?.innerText ?? '',
    count: document.querySelector('.filters-count')?.innerText ?? ''
  }))
  meld(/Bekijk .* producten/.test(mobielOpen.jump) && /producten/.test(mobielOpen.count), 'filterkolom op mobiel toont resultaat en springlink', `${mobielOpen.count} · ${mobielOpen.jump}`)
  const feedbackVerborgen = await page.locator('.feedback-button').evaluate((el) => getComputedStyle(el).display === 'none')
  meld(feedbackVerborgen, 'feedbackknop maakt ruimte voor de uitgeklapte mobiele filters')
  await page.locator('.filters-toggle').click()
  await page.waitForTimeout(100)

  const mobielFeedback = await page.evaluate(() => {
    const knop = document.querySelector('.feedback-button')
    const rect = knop?.getBoundingClientRect()
    const main = document.querySelector('main')
    const tekstRect = (el) => {
      const bereik = document.createRange()
      bereik.selectNodeContents(el)
      const tekst = bereik.getBoundingClientRect()
      return tekst.width ? tekst : el.getBoundingClientRect()
    }
    const overlap = ['.jump-to-results', '.filters-toggle', '.filter-jump'].map((selector) => {
      const el = document.querySelector(selector)
      if (!el) return { selector, overlapt: false }
      const r = tekstRect(el)
      const zichtbaar = r.bottom > 0 && r.top < window.innerHeight && r.right > 0 && r.left < window.innerWidth
      const overlapt = zichtbaar && Boolean(rect) && !(r.right < rect.left || r.left > rect.right || r.bottom < rect.top || r.top > rect.bottom)
      return { selector, overlapt }
    })
    return {
      positie: knop ? getComputedStyle(knop).position : 'ontbreekt',
      hoogte: rect?.height ?? 0,
      inBeeld: Boolean(rect) && rect.top >= 0 && rect.bottom <= window.innerHeight + 1 && rect.left >= 0 && rect.right <= window.innerWidth + 1,
      ruimteOnder: main ? parseFloat(getComputedStyle(main).paddingBottom) : 0,
      overlap
    }
  })
  meld(mobielFeedback.positie === 'fixed' && mobielFeedback.hoogte >= 44 && mobielFeedback.inBeeld, 'feedbackknop zweeft op mobiel rechtsonder en blijft in beeld', `${mobielFeedback.positie} · ${Math.round(mobielFeedback.hoogte)}px`)
  meld(mobielFeedback.ruimteOnder >= 64, 'de pagina houdt onderaan ruimte vrij voor de feedbackknop', `${Math.round(mobielFeedback.ruimteOnder)}px`)
  meld(mobielFeedback.overlap.every((item) => !item.overlapt), 'feedbackknop valt niet over de springlinks of filterknop', mobielFeedback.overlap.map((item) => `${item.selector}:${item.overlapt ? 'overlap' : 'vrij'}`).join(' · '))
  await page.locator('.feedback-button').click()
  await page.waitForSelector('.feedback-dialog', { timeout: 10000 })
  meld(await page.locator('.feedback-dialog').getAttribute('aria-modal') === 'true', 'feedbackdialoog opent vanaf de zwevende knop op mobiel')
  await page.keyboard.press('Escape')
  await page.waitForTimeout(100)
  meld(await page.locator('.feedback-dialog').count() === 0, 'feedbackdialoog sluit op mobiel met Escape')

  // 7. Geen JavaScript-fouten
  meld(consoleFouten.length === 0, 'geen console- of JavaScript-fouten', consoleFouten.slice(0, 3).join(' | '))
} catch (fout) {
  meld(false, 'onverwachte fout tijdens de rooktest', String(fout.message ?? fout))
} finally {
  await browser.close().catch(() => {})
}

if (fouten.length) {
  console.error(`\n${fouten.length} controle(s) mislukt.`)
  process.exit(1)
}
console.log('\nAlle controles geslaagd.')
