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

  // 2. Allergeen via de URL
  await open('/?allergeen=chicken', '.product-card')
  const chips = await page.locator('.allergen-chip').allInnerTexts()
  meld(chips.some((tekst) => tekst.includes('Kip')), 'allergeen Kip staat als filter actief', chips.join(' / '))
  const samenvatting = await page.locator('.result-summary').innerText()
  meld(/Geschikt:/.test(samenvatting), 'resultaten zijn per allergenen beoordeeld', samenvatting.replace(/\n/g, ' '))

  const status = await page.locator('.result-status').innerText()
  meld(/geschikt/.test(status), 'dynamische resultaatmelding noemt de geschikte producten', status.replace(/\n/g, ' ').slice(0, 120))
  const actieveChips = await page.locator('.active-filters .filter-chip').allInnerTexts()
  meld(actieveChips.some((tekst) => tekst.includes('Kip')), 'actief allergeen staat bij de resultaten', actieveChips.join(' / '))
  meld(await page.locator('.filters-reset-inline').count() === 1, 'actieve filters hebben een wis-knop')

  // 3. Merk-deeplink
  await open('/?merk=Acana', '.product-card')
  const filter = await page.locator('.brand-filter .filter-summary').innerText()
  meld(/1 van 60 merken/.test(filter), 'merk-deeplink selecteert één merk', filter)

  // 3b. Voedingswaarden op de kaart en in het detail
  await open('/?merk=Prins%20Petfoods', '.product-card')
  const voedingSamenvatting = await page.locator('.nutrition-summary').first().innerText()
  meld(/Eiwit/.test(voedingSamenvatting) && !/NaN/.test(voedingSamenvatting), 'voedingswaarden staan op de productkaart', voedingSamenvatting)
  await page.locator('.nutrition summary').first().click()
  const voedingDetail = await page.locator('.nutrition-grid').first().innerText()
  meld(/Ruw eiwit/.test(voedingDetail) && !/NaN/.test(voedingDetail), 'voedingswaarden-detail is compleet', voedingDetail.replace(/\n/g, ' ').slice(0, 100))
  const voedingContext = await page.locator('.nutrition-context').first().innerText()
  meld(/vocht/i.test(voedingContext) && /niet direct|vergelijk/i.test(voedingContext), 'voedingswaarden geven context over vocht', voedingContext.replace(/\n/g, ' ').slice(0, 120))

  // 3c. Voedingswaardefilter met minimum en maximum
  await open('/?eiwit=30-35', '.product-card')
  const aantalVoedingsfilters = await page.locator('.nutrition-filter').count()
  meld(aantalVoedingsfilters === 3, 'drie voedingsfilters met dubbele schuif', `${aantalVoedingsfilters} filters`)
  const voedingsChips = await page.locator('.active-filters .filter-chip').allInnerTexts()
  meld(voedingsChips.some((tekst) => /Eiwit 30–35%/.test(tekst)), 'voedingsfilter staat als chip bij de resultaten', voedingsChips.join(' / '))
  const eiwitWaarden = (await page.locator('.product-card .nutrition-summary').allInnerTexts())
    .map((tekst) => { const match = tekst.match(/Eiwit ([\d,]+)%/); return match ? Number(match[1].replace(',', '.')) : null })
    .filter((waarde) => waarde != null)
  meld(eiwitWaarden.length > 0 && eiwitWaarden.every((waarde) => waarde >= 30 && waarde <= 35), 'eiwitfilter toont alleen waarden tussen 30 en 35%', eiwitWaarden.join(', '))
  const voedingsWaarschuwing = await page.locator('.nutrition-compare-warning').innerText()
  meld(/niet direct vergelijkbaar|verschil in vocht/i.test(voedingsWaarschuwing), 'voedingsfilter waarschuwt voor natvoer versus brokken', voedingsWaarschuwing.replace(/\n/g, ' ').slice(0, 120))

  // 4. Melding wanneer niets geschikt is
  await open('/?merk=Royal%20Canin&allergeen=beef', '.no-suitable')
  const melding = await page.locator('.no-suitable strong').innerText()
  meld(/Geen enkel product/.test(melding), 'waarschuwing zonder geschikt product verschijnt', melding)

  // 5. Statische pagina's
  await open('/merken/', '.product-list')
  const merken = await page.locator('.product-list a').count()
  meld(merken >= 60, 'merkenoverzicht is compleet', `${merken} merken`)

  await open('/privacybeleid.html', 'h1')
  const privacy = await page.locator('body').innerText()
  meld(privacy.includes('mijn.host'), 'privacybeleid noemt de hostingpartij')
  meld(privacy.includes('hondenvoervergelijker@paulzuiderduin.com'), 'privacybeleid heeft het juiste contactadres')
  meld(privacy.includes('Umami'), 'privacybeleid noemt de bezoekersstatistieken')

  await open('/hondenvoer-zonder-kip.html', '.answer-box')
  const faqAantal = await page.locator('.faq details').count()
  meld(faqAantal >= 4, 'allergeenpagina heeft een FAQ', `${faqAantal} vragen`)
  const citeerblok = await page.locator('.cite').innerText()
  meld(/Citeer deze pagina/.test(citeerblok), 'allergeenpagina heeft een citeerblok')

  await open('/etikettenonderzoek.html', '.stat-grid')
  const onderzoek = await page.locator('.stat-grid').innerText()
  meld(/recepten/.test(onderzoek), 'etikettenonderzoek toont cijfers', onderzoek.replace(/\n/g, ' ').slice(0, 100))

  const llms = await context.request.get(`${BASIS}/llms.txt`)
  const llmsTekst = await llms.text()
  meld(llms.ok() && llmsTekst.includes('# Hondenvoervergelijker'), 'llms.txt is bereikbaar en gevuld')
  const robots = await context.request.get(`${BASIS}/robots.txt`)
  const robotsTekst = await robots.text()
  meld(robots.ok() && robotsTekst.includes('GPTBot') && robotsTekst.includes('Sitemap:'), 'robots.txt staat open voor AI-crawlers')

  const sitemap = await context.request.get(`${BASIS}/sitemap.xml`)
  const xml = await sitemap.text()
  const aantalUrls = (xml.match(/<loc>/g) ?? []).length
  meld(sitemap.ok() && aantalUrls >= 89, 'sitemap is bereikbaar en gevuld', `${aantalUrls} URL's`)

  // 6. Mobiele weergave
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
