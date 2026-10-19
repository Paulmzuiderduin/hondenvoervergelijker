// Vult de sitemap in dist/ met de datum van deze uitrol. De adressen komen uit
// public/sitemap.xml, zodat er één plek is waar ze staan.
//
// Dit draait na `vite build` (npm-script postbuild), omdat alleen de map dist/
// wordt uitgerold. Gaat er iets mis, dan blijft de sitemap uit public/ staan:
// geen ramp, alleen zonder datum. Er wordt niets geraden: elke keer als de site
// opnieuw gebouwd en uitgerold wordt, is de inhoud van de site nieuw, dus de
// datum van vandaag klopt dan ook.
import { existsSync, readFileSync, writeFileSync } from 'node:fs'

const BRON = 'public/sitemap.xml'
const DOEL = 'dist/sitemap.xml'

if (!existsSync(BRON)) {
  console.error(`geen ${BRON}: sitemap ongewijzigd`)
  process.exit(0)
}

const bron = readFileSync(BRON, 'utf8')
const adressen = [...bron.matchAll(/<loc>\s*([^<\s]+)\s*<\/loc>/g)].map((treffer) => treffer[1])
if (!adressen.length) {
  console.error('geen adressen in de sitemap: sitemap ongewijzigd')
  process.exit(0)
}

const datum = new Date().toISOString().slice(0, 10)
const regels = [
  '<?xml version="1.0" encoding="UTF-8"?>',
  '<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">',
  ...adressen.map((adres) => `  <url><loc>${adres}</loc><lastmod>${datum}</lastmod></url>`),
  '</urlset>',
  ''
]
writeFileSync(DOEL, regels.join('\n'))
console.log(`sitemap bijgewerkt: ${adressen.length} adres(sen), datum ${datum}`)
