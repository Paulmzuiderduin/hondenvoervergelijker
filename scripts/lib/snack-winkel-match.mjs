// Koppelt snacks uit de TradeTracker-feed van Dierenwinkel XL aan de lokale
// snackcatalogus. De feed gebruikt vaak andere productnamen dan de fabrikant
// (bijvoorbeeld "Kip Jerky" voor "Strips - Kip" of "Maxi" voor "Large").
// Daarom koppelen we alleen op EAN of op een exacte, hier vastgelegde feedtitel.
// Liever geen link dan een link naar de verkeerde snack.

const normaliseerTitel = (waarde = '') => String(waarde)
  .toLowerCase()
  .normalize('NFD')
  .replace(/[\u0300-\u036f]/g, '')
  .replace(/&amp;/g, '&')
  .replace(/[^a-z0-9]+/g, ' ')
  .trim()

export const SNACK_FEED_REGELS = [
  {
    ean: '761287501929',
    snackId: 'purina-bonzo-funtastix-bacon-kaas',
    note: 'Bonzo Funtastix 175 g'
  },
  {
    ean: '7613035378766',
    snackId: 'purina-dentalife-daily-small',
    note: 'DentaLife Small'
  },
  {
    ean: '7613035378704',
    snackId: 'purina-dentalife-daily-medium',
    note: 'DentaLife Medium'
  },
  {
    ean: '5010394006095',
    snackId: 'pedigree-dentastix-mini',
    note: 'Dentastix Mini multipack 35 stuks / 550 g'
  },
  {
    ean: '5010394006132',
    snackId: 'pedigree-dentastix-medium',
    note: 'Dentastix Medium multipack 28 stuks / 720 g'
  },
  {
    ean: '5010394006088',
    snackId: 'pedigree-dentastix-maxi',
    note: 'Dentastix Maxi multipack 21 stuks / 810 g'
  },
  {
    ean: '5407009646690',
    snackId: 'edgard-en-cooper-strips-kip',
    note: 'Strips Kip 75 g (feednaam: Kip Jerky)'
  },
  {
    ean: '5407009646744',
    snackId: 'edgard-en-cooper-reep-appel-en-bosbes',
    note: 'Reep Appel & Bosbes 30 g (feednaam: BAR ADULT APPLE)'
  },
  {
    ean: '5407009646768',
    snackId: 'edgard-en-cooper-reep-lam-en-kalkoen',
    note: 'Reep Lam & Kalkoen 30 g (feednaam: BAR ADULT LAMB&TURKEY)'
  },
  {
    titel: 'Edgard & Cooper- Dental Sticks Appel',
    snackId: 'edgard-en-cooper-doggy-dental-appel-eucalyptus',
    note: 'Doggy Dental Appel & Eucalyptus, 7 stuks'
  }
]

export function koppelSnacksBetrouwbaar(snacks, aanbiedingen) {
  const perId = new Map(snacks.map((snack) => [snack.id, snack]))
  const koppelingen = []
  const onbekend = []

  for (const aanbieding of aanbiedingen) {
    const regel = SNACK_FEED_REGELS.find(({ ean, titel }) => ean
      ? aanbieding.ean === ean
      : normaliseerTitel(aanbieding.titel) === normaliseerTitel(titel))
    if (!regel) continue
    const product = perId.get(regel.snackId)
    if (!product) {
      onbekend.push({ aanbieding, regel, reden: `snack ${regel.snackId} ontbreekt` })
      continue
    }
    koppelingen.push({ product, aanbieding, note: regel.note })
  }

  // Dezelfde snack of dezelfde feed-URL mag maar één winkelknop opleveren.
  const perSnack = new Map()
  for (const koppeling of koppelingen) {
    if (!perSnack.has(koppeling.product.id)) perSnack.set(koppeling.product.id, [])
    perSnack.get(koppeling.product.id).push(koppeling)
  }
  const perUrl = new Map()
  for (const koppeling of koppelingen) {
    if (!perUrl.has(koppeling.aanbieding.url)) perUrl.set(koppeling.aanbieding.url, [])
    perUrl.get(koppeling.aanbieding.url).push(koppeling)
  }
  const dubbelzinnig = []
  for (const lijst of [...perSnack.values(), ...perUrl.values()]) {
    if (lijst.length > 1) dubbelzinnig.push(...lijst)
  }
  const dubbel = new Set(dubbelzinnig)
  const veilig = koppelingen.filter((koppeling) => !dubbel.has(koppeling))
  veilig.sort((a, b) =>
    a.product.brand.localeCompare(b.product.brand, 'nl', { sensitivity: 'base' }) ||
    a.product.name.localeCompare(b.product.name, 'nl', { sensitivity: 'base' })
  )
  return { koppelingen: veilig, dubbelzinnig, onbekend }
}
