// Parseert ingrediënten en analytische bestanddelen uit officiële
// productpagina's. Alsa Nature en Ultra Premium Direct zetten de blokken in
// verschillende volgordes; daarom zoeken we op inhoud, niet op vaste posities.

const ENTITEITEN = {
  amp: '&', nbsp: ' ', quot: '"', apos: "'", lt: '<', gt: '>',
  eacute: 'é', egrave: 'è', agrave: 'à', ccedil: 'ç', uuml: 'ü',
  ouml: 'ö', auml: 'ä', szlig: 'ß', euro: '€', ndash: '–', mdash: '—'
}

export function decodeerHtml(waarde = '') {
  return String(waarde)
    .replace(/&#x([0-9a-f]+);/gi, (_, hex) => String.fromCodePoint(parseInt(hex, 16)))
    .replace(/&#(\d+);/g, (_, dec) => String.fromCodePoint(Number(dec)))
    .replace(/&([a-z][a-z0-9]+);/gi, (match, naam) => ENTITEITEN[naam.toLowerCase()] ?? match)
    .replace(/<!\[CDATA\[|\]\]>/g, '')
}

export function htmlNaarTekst(html = '') {
  return decodeerHtml(
    String(html)
      .replace(/<(script|style|noscript|svg|template)[\s\S]*?<\/\1>/gi, ' ')
      .replace(/<br\s*\/?>/gi, ' ')
      .replace(/<\/(p|div|li|dd|dt|h[1-6]|tr|section|article|span|strong|em|small)>/gi, ' ')
      .replace(/<[^>]+>/g, ' ')
  )
    .replace(/\s+/g, ' ')
    .trim()
}

function tussen(tekst, begin, eind) {
  const start = tekst.indexOf(begin)
  if (start < 0) return ''
  const rest = tekst.slice(start + begin.length)
  const stop = eind ? rest.search(eind) : -1
  return (stop >= 0 ? rest.slice(0, stop) : rest).trim()
}

function schoonIngrediënten(waarde = '') {
  return decodeerHtml(waarde)
    .replace(/^[\s:;,-]+/, '')
    .replace(/\b(SAMENSTELLING|Samenstelling)\b\s*:?/gi, '')
    .replace(/\bPlus\b\s*$/i, '')
    .replace(/\b(AANVULLENDE HONDENVOEDING|Aanvullende hondenvoeding)\b/gi, '')
    .replace(/^.*?Voedingsmiddelsoort\s+Complete voeding\s*/i, '')
    .replace(/\s+/g, ' ')
    .replace(/\s*;\s*/g, '; ')
    .replace(/\s+\./g, '.')
    .trim()
}

function kiesIngrediëntenBlok(tekst) {
  // Zoek alle koppen en kies het blok met de meeste komma's. Zo negeren we
  // "uitgebalanceerde samenstelling" in de marketingtekst.
  const kandidaten = []
  const regex = /Samenstelling\s*:?/gi
  for (const match of tekst.matchAll(regex)) {
    const start = match.index + match[0].length
    const rest = tekst.slice(start)
    const stop = rest.search(/Analytische bestanddelen|Nutritionele toevoegingen|Voedingsaanbeveling|Beschrijving|Recensies|Eigenschap/i)
    const blok = schoonIngrediënten(stop >= 0 ? rest.slice(0, stop) : rest.slice(0, 1800))
    if (blok.length < 8) continue
    // Marketingzinnen gebruiken soms ook het woord "samenstelling"; die
    // beginnen met een lopende zin en niet met een ingrediënt.
    if (/^(is deze|deze |plus |aanvullende )/i.test(blok)) continue
    kandidaten.push({ blok, kommas: (blok.match(/,/g) ?? []).length, lengte: blok.length })
  }
  kandidaten.sort((a, b) => b.kommas - a.kommas || a.lengte - b.lengte)
  return kandidaten[0]?.blok ?? ''
}

function kiesAnalytischBlok(tekst) {
  const index = tekst.search(/Analytische bestanddelen/i)
  if (index < 0) return ''
  const rest = tekst.slice(index + 'Analytische bestanddelen'.length)
  const stop = rest.search(/Nutritionele toevoegingen|Voedingsaanbeveling|Samenstelling|Beschrijving|Recensies|Eigenschap|Plus AANVULLENDE/i)
  return (stop >= 0 ? rest.slice(0, stop) : rest.slice(0, 1500)).replace(/^Plus\s+/i, '').trim()
}

function getal(waarde) {
  const tekst = String(waarde ?? '').trim()
  if (!tekst) return null
  // Nederlands gebruikt een komma, de UPD-pagina's sometimes een punt.
  // Alleen bij beide tekens zijn punten duizendtallen.
  const genormaliseerd = tekst.includes(',') && tekst.includes('.')
    ? tekst.replace(/\./g, '').replace(',', '.')
    : tekst.replace(',', '.')
  const nummer = Number(genormaliseerd)
  return Number.isFinite(nummer) ? nummer : null
}

function getalEnergie(waarde) {
  const tekst = String(waarde ?? '').trim()
  if (/^\d{1,3}(?:[.,]\d{3})+$/.test(tekst)) return Number(tekst.replace(/[.,]/g, ''))
  return getal(tekst)
}

function waarde(tekst, patronen) {
  for (const patroon of patronen) {
    const match = tekst.match(patroon)
    if (match) {
      const nummer = getal(match[1])
      if (nummer != null) return nummer
    }
  }
  return null
}

export function parseAnalytischeBestanddelen(tekst = '') {
  const waarden = {
    protein: waarde(tekst, [/(?:Ruw eiwit|Eiwit)\s*:?\s*([\d.,]+)\s*%/i]),
    fat: waarde(tekst, [/(?:Ruw vet|Vetgehalte|Vet)\s*:?\s*([\d.,]+)\s*%/i]),
    fiber: waarde(tekst, [/(?:Ruwe celstof|Ruw vezel|Vezel)(?:\s*\([^)]*\))?\s*:?\s*([\d.,]+)\s*%/i]),
    ash: waarde(tekst, [/(?:Ruwe as|Anorganisch materiaal \(ruwe as\))\s*:?\s*([\d.,]+)\s*%/i]),
    moisture: waarde(tekst, [/(?:Vochtgehalte|Vocht|Voght)\s*:?\s*([\d.,]+)\s*%/i]),
    calcium: waarde(tekst, [/Calcium\s*:?\s*([\d.,]+)\s*%/i]),
    phosphorus: waarde(tekst, [/(?:Fosforgehalte|Fosfor)\s*:?\s*([\d.,]+)\s*%/i])
  }
  const energie = tekst.match(/(?:Metabole energie|Energie)[^\d]{0,40}([\d.,]+)\s*(?:kcal|Kcal)\s*\/\s*(kg|100\s*g)/i)
  if (energie) {
    const energieWaarde = getalEnergie(energie[1])
    if (energieWaarde != null) {
      waarden.kcal = /^kg/i.test(energie[2]) ? Math.round((energieWaarde / 10) * 10) / 10 : energieWaarde
    }
  }
  return Object.fromEntries(Object.entries(waarden).filter(([, waarde]) => waarde != null))
}

export function parseProductPagina(html) {
  const tekst = htmlNaarTekst(html)
  const ingredients = kiesIngrediëntenBlok(tekst)
  const analytical = kiesAnalytischBlok(tekst)
  const nutrition = parseAnalytischeBestanddelen(analytical)

  const dierlijkeEiwitbron = tekst.match(/Dierlijke eiwitbron\s+Bekijk alle\s+([a-zà-ÿ0-9'’ -]+?)\s+producten/i)?.[1]?.trim() ?? ''
  const hondengrootte = tekst.match(/Hondengrootte\s+Bekijk alle\s+([a-zà-ÿ0-9'’ -]+?)\s+producten/i)?.[1]?.trim() ?? ''
  const sporen = tekst.match(/(?:Kan sporen bevatten|Sporen)[^.]{0,180}\./i)?.[0]?.trim() ?? ''

  return {
    tekst,
    ingredients,
    analytical,
    nutrition,
    dierlijkeEiwitbron,
    hondengrootte,
    sporen,
    enkelEiwit: /enkel-eiwit/i.test(tekst),
    graanvrij: /granenvrij/i.test(tekst)
  }
}
