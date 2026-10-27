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

  // 3. Merk-deeplink
  await open('/?merk=Acana', '.product-card')
  const filter = await page.locator('.filter-summary').innerText()
  meld(/1 van 50 merken/.test(filter), 'merk-deeplink selecteert één merk', filter)

  // 4. Melding wanneer niets geschikt is
  await open('/?merk=Royal%20Canin&allergeen=beef', '.no-suitable')
  const melding = await page.locator('.no-suitable strong').innerText()
  meld(/Geen enkel product/.test(melding), 'waarschuwing zonder geschikt product verschijnt', melding)

  // 5. Statische pagina's
  await open('/merken/', '.product-list')
  const merken = await page.locator('.product-list a').count()
  meld(merken >= 50, 'merkenoverzicht is compleet', `${merken} merken`)

  await open('/privacybeleid.html', 'h1')
  const privacy = await page.locator('body').innerText()
  meld(privacy.includes('mijn.host'), 'privacybeleid noemt de hostingpartij')
  meld(privacy.includes('hondenvoervergelijker@paulzuiderduin.com'), 'privacybeleid heeft het juiste contactadres')

  const sitemap = await context.request.get(`${BASIS}/sitemap.xml`)
  const xml = await sitemap.text()
  const aantalUrls = (xml.match(/<loc>/g) ?? []).length
  meld(sitemap.ok() && aantalUrls >= 50, 'sitemap is bereikbaar en gevuld', `${aantalUrls} URL's`)

  // 6. Mobiele weergave
  await page.setViewportSize({ width: 390, height: 844 })
  await open('/', '.product-card')
  const mobiel = await page.evaluate(() => ({
    breed: document.documentElement.scrollWidth,
    scherm: window.innerWidth
  }))
  meld(mobiel.breed <= mobiel.scherm + 1, 'geen horizontale overflow op mobiel', `${mobiel.breed}px op ${mobiel.scherm}px`)

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
