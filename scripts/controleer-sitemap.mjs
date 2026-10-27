#!/usr/bin/env node
// Controleert na een deploy of alle URL's uit de sitemap echt bereikbaar zijn.
// Zo merkt de workflow een verkeerde slug, een ontbrekende pagina of een
// verkeerd canoniek domein meteen, in plaats van pas bij een bezoeker of Google.
//
// Gebruik:
//   node scripts/controleer-sitemap.mjs
//   node scripts/controleer-sitemap.mjs --basis=https://voorbeeld.nl

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
const POGINGEN = Number(argumenten.get('pogingen') ?? 3) || 3
const WACHTTIJD = Number(argumenten.get('wacht') ?? 2000) || 2000

async function haal(url, { methode = 'GET' } = {}) {
  for (let poging = 1; poging <= POGINGEN; poging += 1) {
    try {
      const antwoord = await fetch(url, {
        method: methode,
        redirect: 'follow',
        headers: { 'user-agent': 'HondenvoervergelijkerBot/0.1 (controle na deploy)' }
      })
      if (antwoord.status === 200) return { ok: true, status: 200 }
      if (poging === POGINGEN) return { ok: false, status: antwoord.status }
    } catch (fout) {
      if (poging === POGINGEN) return { ok: false, status: 0, fout: fout.message }
    }
    await new Promise((klaar) => setTimeout(klaar, WACHTTIJD * poging))
  }
  return { ok: false, status: 0 }
}

const sitemapAntwoord = await haal(`${BASIS}/sitemap.xml`)
if (!sitemapAntwoord.ok) {
  console.error(`Sitemap niet bereikbaar (${sitemapAntwoord.status}).`)
  process.exit(1)
}

const xml = await fetch(`${BASIS}/sitemap.xml`, {
  headers: { 'user-agent': 'HondenvoervergelijkerBot/0.1 (controle na deploy)', 'cache-control': 'no-cache' }
}).then((antwoord) => antwoord.text())

const urls = [...xml.matchAll(/<loc>\s*([^<\s]+)\s*<\/loc>/g)].map((treffer) => treffer[1])
if (!urls.length) {
  console.error('Geen URL\'s in de sitemap gevonden.')
  process.exit(1)
}

console.log(`${urls.length} URL('s) controleren op ${BASIS} ...`)

const fouten = []
const wachtrij = [...urls]
let actief = 0

async function werk() {
  while (wachtrij.length) {
    const url = wachtrij.shift()
    const uitkomst = await haal(url)
    if (!uitkomst.ok) fouten.push({ url, ...uitkomst })
    actief += 1
    if (actief % 25 === 0) console.log(`${actief}/${urls.length} gecontroleerd`)
  }
}

await Promise.all(Array.from({ length: 6 }, () => werk()))

if (fouten.length) {
  console.error(`\n${fouten.length} URL('s) niet bereikbaar:`)
  for (const fout of fouten) console.error(`- ${fout.status || 'fout'} ${fout.url}${fout.fout ? ` (${fout.fout})` : ''}`)
  process.exit(1)
}

console.log(`Alle ${urls.length} URL's geven HTTP 200.`)
