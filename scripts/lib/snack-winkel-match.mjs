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
  },
  {
    ean: '8718627750049',
    snackId: 'whimzees-toothbrush',
    maat: 'M',
    note: 'Whimzees Toothbrush, maat M'
  },
  {
    ean: '8718627750162',
    snackId: 'whimzees-stix',
    maat: 'L',
    note: 'Whimzees Stix, maat L'
  },
  {
    titel: 'Farm Food - Dental Roll',
    snackId: 'farm-food-dental-roll',
    maat: 'S',
    note: 'Farm Food Dental Roll, maat S'
  },
  {
    titel: 'Farm Food - Dental Donut',
    snackId: 'farm-food-dental-donut',
    maat: 'L',
    note: 'Farm Food Dental Donut, maat L'
  },
  {
    titel: 'Farm Food - Antlers Original',
    snackId: 'farm-food-original-antlers',
    maat: 'XL',
    note: 'Farm Food Original Antlers, maat XL'
  },
  {
    titel: 'Farm Food - Trainers (runderhart)',
    snackId: 'farm-food-trainers',
    maat: '333 g',
    note: 'Farm Food Trainers van runderhart, 333 g'
  },
  {
    titel: 'Farm Food Dental Bone',
    snackId: 'farm-food-dental-bone',
    maat: 'M',
    note: 'Farm Food Dental Bone, maat M'
  },
  {
    titel: 'Farm Food - Dental Chips',
    snackId: 'farm-food-dental-chips',
    maat: '500 g',
    note: 'Farm Food Dental Chips, 500 g'
  },
  {
    titel: 'Farm Food - Antlers Easy',
    snackId: 'farm-food-easy-antlers',
    maat: 'S',
    note: 'Farm Food Easy Antlers, maat S'
  },
  {
    titel: 'Farm Food - Dental Munchie Heart & Rice',
    snackId: 'farm-food-dental-munchie-heart-rice',
    note: 'Farm Food Dental Munchie Heart & Rice'
  },
  {
    titel: 'Farm Food - Dental Munchie Pens',
    snackId: 'farm-food-dental-munchie-tripe-rice',
    note: 'Farm Food Dental Munchie Pens'
  },
  {
    titel: 'Farm Food - Freezies Zalm 40gr',
    snackId: 'farm-food-freezies-salmon',
    maat: '40 g',
    note: 'Farm Food Freezies Zalm, 40 g'
  },
  {
    titel: 'Farm Food - Freezies Kalkoen 40gr',
    snackId: 'farm-food-freezies-turkey',
    maat: '40 g',
    note: 'Farm Food Freezies Kalkoen, 40 g'
  },
  {
    titel: 'Farm Food - Freezies Runderlever 40gr',
    snackId: 'farm-food-freezies-beef-liver',
    maat: '40 g',
    note: 'Farm Food Freezies Runderlever, 40 g'
  },
  {
    eanBevat: 'carnilove crunchy snack ostrich with blackberries 200gr',
    snackId: 'carnilove-crunchy-snack-struisvogel-en-bramen',
    maat: '200 g',
    note: 'Carnilove Crunchy Snack Struisvogel & Bramen, 200 g'
  },
  {
    eanBevat: 'carnilove soft snack trout with dill 200gr',
    snackId: 'carnilove-soft-snack-forel-en-dille',
    maat: '200 g',
    note: 'Carnilove Soft Snack Forel & Dille, 200 g'
  },
  {
    ean: '4000819005919',
    snackId: 'dibo-gedroogde-vis',
    note: 'DIBO Gedroogde Vis (Oostzeeharing)'
  }
]

export function koppelSnacksBetrouwbaar(snacks, aanbiedingen) {
  const perId = new Map(snacks.map((snack) => [snack.id, snack]))
  const koppelingen = []
  const onbekend = []

  for (const aanbieding of aanbiedingen) {
    const eanTekst = normaliseerTitel(aanbieding.eanTekst ?? '')
    const regel = SNACK_FEED_REGELS.find(({ ean, eanBevat, titel }) => ean
      ? aanbieding.ean === ean
      : eanBevat
        ? eanTekst.includes(normaliseerTitel(eanBevat))
        : normaliseerTitel(aanbieding.titel) === normaliseerTitel(titel))
    if (!regel) continue
    const product = perId.get(regel.snackId)
    if (!product) {
      onbekend.push({ aanbieding, regel, reden: `snack ${regel.snackId} ontbreekt` })
      continue
    }
    koppelingen.push({
      product,
      aanbieding: { ...aanbieding, maat: regel.maat ?? aanbieding.maat },
      note: regel.note
    })
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
