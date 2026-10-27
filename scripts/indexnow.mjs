#!/usr/bin/env node
// Meldt de URL's uit de live sitemap bij IndexNow (Bing, Yandex en andere
// deelnemers). Google gebruikt IndexNow niet; die volgt de sitemap in Search
// Console. Dit is een gratis aanvulling en kost geen account of abonnement.
//
// Gebruik:
//   node scripts/indexnow.mjs --dry-run     (laat alleen zien wat er gemeld wordt)
//   node scripts/indexnow.mjs               (meldt alle URL's uit de sitemap)
//   node scripts/indexnow.mjs --url=https://... --url=https://...  (losse URL's)
//
// De sleutel staat bewust openbaar in public/<sleutel>.txt: IndexNow controleert
// daarmee dat de melder de site beheert. Dat is geen geheim en geeft geen
// toegang tot iets anders.

const SLEUTEL = '1f2c4900d1cb834fb0d539e51b2006a4'
const HOST = 'hondenvoervergelijker.paulzuiderduin.com'
const SITE = `https://${HOST}`
const EINDPUNT = 'https://api.indexnow.org/indexnow'
const DROGEN = process.argv.includes('--dry-run')

const losseUrls = process.argv
  .filter((argument) => argument.startsWith('--url='))
  .map((argument) => argument.slice('--url='.length).trim())
  .filter(Boolean)

async function haalSitemapUrls() {
  const antwoord = await fetch(`${SITE}/sitemap.xml`, { headers: { accept: 'application/xml' } })
  if (!antwoord.ok) throw new Error(`sitemap gaf HTTP ${antwoord.status}`)
  const xml = await antwoord.text()
  return [...xml.matchAll(/<loc>\s*([^<\s]+)\s*<\/loc>/g)].map((treffer) => treffer[1])
}

const urlList = losseUrls.length ? losseUrls : await haalSitemapUrls()

if (!urlList.length) {
  console.log('Geen URL\'s gevonden; niets gemeld.')
  process.exit(0)
}

if (DROGEN) {
  console.log(`Proefrun: ${urlList.length} URL('s) zouden worden gemeld:`)
  for (const url of urlList) console.log(`  ${url}`)
  process.exit(0)
}

const antwoord = await fetch(EINDPUNT, {
  method: 'POST',
  headers: { 'content-type': 'application/json; charset=utf-8' },
  body: JSON.stringify({
    host: HOST,
    key: SLEUTEL,
    keyLocation: `${SITE}/${SLEUTEL}.txt`,
    urlList
  })
})

const tekst = await antwoord.text()
console.log(`IndexNow: HTTP ${antwoord.status} voor ${urlList.length} URL('s)${tekst ? ` — ${tekst.slice(0, 300)}` : ''}`)

// 200 = verwerkt, 202 = ontvangen (sleutelcontrole loopt nog). Beide goed.
if (antwoord.status !== 200 && antwoord.status !== 202) process.exit(1)
