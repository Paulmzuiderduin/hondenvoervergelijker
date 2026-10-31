// Sommige fabrikanten publiceren een analyse die intern niet klopt: de
// percentages tellen op tot meer dan 100%, een vezelwaarde is een duidelijke
// typefout, of het vochtgehalte past niet bij het voertype. De site neemt de
// bron letterlijk over, maar waarschuwt wel op de kaart. Zo wordt een
// onmogelijke waarde niet stilzwijgend als waarheid gepresenteerd.
const MACRO_KEYS = ['protein', 'fat', 'fiber', 'ash', 'moisture']
const EXTREME = [
  ['protein', 50, 'eiwit'],
  ['fat', 40, 'vet'],
  ['ash', 15, 'ruwe as'],
  ['moisture', 90, 'vocht'],
  ['calcium', 3, 'calcium'],
  ['phosphorus', 2, 'fosfor'],
  ['omega3', 10, 'omega-3'],
  ['omega6', 20, 'omega-6']
]

function getal(waarde) {
  if (waarde == null || waarde === '') return null
  const nummer = Number(waarde)
  return Number.isFinite(nummer) ? nummer : null
}

function nl(waarde) {
  return Number(waarde).toLocaleString('nl-NL', { maximumFractionDigits: 2 })
}

// Welke waarden mogen niet als filter- of sorteerwaarde worden gebruikt?
// Alleen de waarde die aantoonbaar onmogelijk is, niet de hele analyse: een
// macro-som die door afronding net boven 100% uitkomt maakt eiwit en vet niet
// meteen onbruikbaar. Een vezel van 33% wel.
export function onbetrouwbareNutrienten(waarden = {}, foodType = '') {
  const negeren = new Set()
  const waarde = (key) => getal(waarden[key])

  const vezel = waarde('fiber')
  if (vezel != null && vezel > 20) negeren.add('fiber')

  const eiwit = waarde('protein')
  const vet = waarde('fat')
  const kcal = waarde('kcal')
  if (kcal != null && eiwit != null && vet != null && kcal < 4 * eiwit + 9 * vet - 20) negeren.add('kcal')

  const vocht = waarde('moisture')
  if (vocht != null && foodType === 'kibble' && vocht > 20) negeren.add('moisture')
  if (vocht != null && (foodType === 'wet' || foodType === 'raw') && vocht < 50) negeren.add('moisture')

  for (const [key, grens] of EXTREME) {
    const hoeveelheid = waarde(key)
    if (hoeveelheid != null && hoeveelheid > grens) negeren.add(key)
  }
  return negeren
}

export function beoordeelVoedingswaarden(waarden = {}, foodType = '') {
  const signalen = []
  const waarde = (key) => getal(waarden[key])
  const macroSom = MACRO_KEYS.reduce((som, key) => som + (waarde(key) ?? 0), 0)
  const heeftMacros = MACRO_KEYS.some((key) => waarde(key) != null)

  if (heeftMacros && waarde('moisture') != null && macroSom > 100.5) {
    signalen.push(`De bronanalyse telt op tot ${nl(macroSom)}%; dat kan niet voor as-fed.`)
  }

  const vezel = waarde('fiber')
  if (vezel != null && vezel > 20) {
    signalen.push(`Ruwe vezel van ${nl(vezel)}% is uitzonderlijk hoog; controleer de bron.`)
  }

  const eiwit = waarde('protein')
  const vet = waarde('fat')
  const kcal = waarde('kcal')
  if (kcal != null && eiwit != null && vet != null) {
    const minimum = 4 * eiwit + 9 * vet
    if (kcal < minimum - 20) {
      signalen.push('De energie ligt lager dan de energie uit eiwit en vet; controleer de bron.')
    }
  }

  const vocht = waarde('moisture')
  if (vocht != null && foodType === 'kibble' && vocht > 20) {
    signalen.push('Het vochtgehalte past niet bij brokken.')
  }
  if (vocht != null && (foodType === 'wet' || foodType === 'raw') && vocht < 50) {
    signalen.push('Het vochtgehalte past niet bij natvoer of rauwvoer.')
  }

  for (const [key, grens, label] of EXTREME) {
    const hoeveelheid = waarde(key)
    if (hoeveelheid != null && hoeveelheid > grens) {
      signalen.push(`De waarde voor ${label} (${nl(hoeveelheid)}%) valt buiten de verwachte bandbreedte.`)
    }
  }

  return { signalen: [...new Set(signalen)], macroSom }
}
