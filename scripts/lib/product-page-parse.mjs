// Parseert ingrediënten en analytische bestanddelen uit officiële
// productpagina's. Alsa Nature en Ultra Premium Direct zetten de blokken in
// verschillende volgordes; daarom zoeken we op inhoud, niet op vaste posities.

const ENTITEITEN = {
  amp: '&', nbsp: ' ', quot: '"', apos: "'", lt: '<', gt: '>',
  aacute: 'á', acirc: 'â', agrave: 'à', auml: 'ä', aring: 'å', aelig: 'æ',
  ccedil: 'ç', eacute: 'é', ecirc: 'ê', egrave: 'è', euml: 'ë',
  iacute: 'í', icirc: 'î', igrave: 'ì', iuml: 'ï',
  ntilde: 'ñ', oacute: 'ó', ocirc: 'ô', ograve: 'ò', ouml: 'ö', oslash: 'ø',
  uacute: 'ú', ucirc: 'û', ugrave: 'ù', uuml: 'ü', yacute: 'ý', yuml: 'ÿ',
  szlig: 'ß', micro: 'µ', reg: '®', trade: '™', euro: '€',
  ndash: '–', mdash: '—', hellip: '…'
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
    .replace(/\b(SAMENSTELLING|Samenstelling|INGREDIËNTEN|Ingrediënten)\b\s*:?/gi, '')
    .replace(/\bPlus\b\s*$/i, '')
    .replace(/\b(AANVULLENDE HONDENVOEDING|Aanvullende hondenvoeding)\b/gi, '')
    .replace(/^.*?Voedingsmiddelsoort\s+Complete voeding\s*/i, '')
    .replace(/\s+/g, ' ')
    .replace(/\s*;\s*/g, '; ')
    .replace(/\s+\./g, '.')
    .replace(/\b(proteï|chondroï)\s+([a-z])/gi, '$1$2')
    .replace(/^.*?\bworden bereid van\s+/i, '')
    .replace(/\s+(?:Vrij van|Zonder|Geschikt voor|Ideaal|Perfect|Heerlijk)\b[\s\S]*$/, '')
    .trim()
}

function lijktOpIngrediënten(blok, vooraf = '') {
  if (blok.length < 8) return false
  // Marketing gebruikt dezelfde woorden ("met de beste ingrediënten",
  // "uitgebalanceerde samenstelling"). Zo'n treffer staat midden in een zin en
  // niet boven een etiketblok.
  if (/(?:beste|hoogwaardige|natuurlijke|gezonde|andere|deze|onze|vele|goede|uitgebalanceerde|unieke|ideale|perfecte)\s+$/i.test(vooraf)) return false
  if (/^(is deze|deze |dit |plus |aanvullende |voor |met |een |het |onze |jouw |uw |en(?:\s|\/))/i.test(blok)) return false
  if (/^(?:jouw hond|onze |ideaal|perfect|heerlijk|draagt bij|geschikt voor)/i.test(blok)) return false
  if (/Merk:|Artikelnummer|Prijs p\. kilo|Kies variant|Verlaag je stukprijs|Van Zweedse kwaliteit|Zeer geschikt/i.test(blok)) return false
  if (blok.length > 3500) return false
  // Een losse orgaannaam of een korte opsomming ("Hertenlong en hertennier")
  // is een geldige etiketregel, ook als er geen percentage of bekend
  // hoofd ingrediënt in staat.
  if (blok.length <= 80 && blok.split(/\s+/).filter(Boolean).length <= 6 && !/\b(?:onze|jouw|deze|dit|het|een|van|komen|worden|is|zijn|met|voor|hoogste|kwaliteit|producten|dieren|honden)\b/i.test(blok)) return true
  return /[,%]/.test(blok) || /\b(?:kip|rund|lam|vis|zalm|rijst|aardappel|erwt|gist|olie|mineralen|vlees)\b/i.test(blok) || /melk|garnalen|kokosnoot|lamsoren/i.test(blok)
}

function kiesIngrediëntenBlok(tekst) {
  // De etiketblokken staan op deze pagina's in wisselende volgorde. De
  // dichtstbijzijnde kop bij "Analytische bestanddelen" is in beide gevallen
  // de echte samenstelling: erboven bij Alsa, eronder bij UPD. Zo negeren we
  // "uitgebalanceerde samenstelling" en "de beste ingrediënten" in de
  // marketingtekst.
  const analytisch = tekst.search(/Analytische bestanddelen/i)
  const kandidaten = []
  const regex = /(?:Samenstelling|Ingrediënten)\s*:?/gi
  for (const match of tekst.matchAll(regex)) {
    const start = match.index + match[0].length
    const rest = tekst.slice(start)
    const stop = rest.search(/ADDITIEVEN|Analytische bestanddelen|Nutritionele toevoegingen|Voedingsaanbeveling|Bewaaradvies|Beschrijving|Recensies|Eigenschap/i)
    const blok = schoonIngrediënten(stop >= 0 ? rest.slice(0, stop) : rest.slice(0, 4000))
    const vooraf = tekst.slice(Math.max(0, match.index - 40), match.index)
    if (!lijktOpIngrediënten(blok, vooraf)) continue
    kandidaten.push({
      blok,
      afstand: analytisch >= 0 ? Math.abs(match.index - analytisch) : 0,
      kommas: (blok.match(/,/g) ?? []).length,
      lengte: blok.length
    })
  }
  kandidaten.sort((a, b) => a.afstand - b.afstand || b.kommas - a.kommas || a.lengte - b.lengte)
  return kandidaten[0]?.blok ?? ''
}

function kiesAnalytischBlok(tekst) {
  const index = tekst.search(/Analytische bestanddelen/i)
  if (index < 0) return ''
  const rest = tekst.slice(index + 'Analytische bestanddelen'.length)
  const stop = rest.search(/ADDITIEVEN|Nutritionele toevoegingen|Voedingsaanbeveling|Bewaaradvies|Samenstelling|Ingrediënten|Beschrijving|Recensies|Eigenschap|Plus AANVULLENDE/i)
  return (stop >= 0 ? rest.slice(0, stop) : rest.slice(0, 2000)).replace(/^Plus\s+/i, '').trim()
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
    phosphorus: waarde(tekst, [/(?:Fosforgehalte|Fosfor)\s*:?\s*([\d.,]+)\s*%/i]),
    omega3: waarde(tekst, [/Omega-?3(?:\s*vetzuren)?\s*:?\s*([\d.,]+)\s*%/i]),
    omega6: waarde(tekst, [/Omega-?6(?:\s*vetzuren)?\s*:?\s*([\d.,]+)\s*%/i])
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

function leesProductJsonLd(html) {
  const resultaat = { gtin: '', gewichtGram: null, categorie: '' }
  for (const match of String(html).matchAll(/<script[^>]+type=["']application\/ld\+json["'][^>]*>([\s\S]*?)<\/script>/gi)) {
    let data
    try {
      data = JSON.parse(match[1])
    } catch {
      continue
    }
    const items = Array.isArray(data) ? data : (data?.['@graph'] ?? [data])
    for (const item of items) {
      if (item?.['@type'] !== 'Product') continue
      const gtin = String(item.gtin ?? item.gtin13 ?? item.gtin12 ?? '').replace(/\D/g, '')
      if (/^\d{8,14}$/.test(gtin)) resultaat.gtin = gtin
      if (item.category) resultaat.categorie = String(item.category)
      const gewicht = item.weight
      const waarde = typeof gewicht === 'object' ? Number(String(gewicht?.value ?? '').replace(',', '.')) : Number(String(gewicht ?? '').replace(',', '.'))
      if (Number.isFinite(waarde) && waarde > 0) {
        const eenheid = String(gewicht?.unitText ?? gewicht?.unitCode ?? '').toUpperCase()
        resultaat.gewichtGram = /KG/.test(eenheid) ? Math.round(waarde * 1000) : Math.round(waarde)
      }
    }
  }
  return resultaat
}

export function parseProductPagina(html) {
  const tekst = htmlNaarTekst(html)
  const ingredients = kiesIngrediëntenBlok(tekst)
  const analytical = kiesAnalytischBlok(tekst)
  const nutrition = parseAnalytischeBestanddelen(analytical)
  const jsonLd = leesProductJsonLd(html)

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
    gtin: jsonLd.gtin,
    gewichtGram: jsonLd.gewichtGram,
    categorie: jsonLd.categorie,
    enkelEiwit: /enkel-eiwit/i.test(tekst),
    graanvrij: /granenvrij/i.test(tekst)
  }
}
