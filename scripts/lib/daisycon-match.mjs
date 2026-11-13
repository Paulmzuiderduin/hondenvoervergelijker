// Strikte matching voor de Daisycon-productfeed van Ultra Premium Direct.
//
// De feed bevat een echte EAN en een publisher-specifieke trackinglink. We
// koppelen alleen op een exacte EAN. Bij een ontbrekende of afwijkende EAN
// laten we de link weg: een verkeerde winkelknop is erger dan geen knop.

const decodeer = (waarde = '') => String(waarde)
  .replace(/<!\[CDATA\[|\]\]>/g, '')
  .replace(/&#x([0-9a-f]+);/gi, (_, hex) => String.fromCodePoint(parseInt(hex, 16)))
  .replace(/&#(\d+);/g, (_, dec) => String.fromCodePoint(Number(dec)))
  .replace(/&amp;/g, '&')
  .replace(/&lt;/g, '<')
  .replace(/&gt;/g, '>')
  .replace(/&quot;/g, '"')
  .replace(/&apos;|&#39;/g, "'")
  .replace(/&nbsp;/g, ' ')
  .trim()

function tag(blok, naam) {
  const match = blok.match(new RegExp(`<${naam}>([\\s\\S]*?)</${naam}>`, 'i'))
  return decodeer(match?.[1] ?? '')
}

export function parseDaisyconFeed(xml, { categoriePad = 'Hondenvoer', winkel = 'Ultra Premium Direct' } = {}) {
  const producten = []
  for (const match of String(xml).matchAll(/<product_info>([\s\S]*?)<\/product_info>/gi)) {
    const blok = match[1]
    const categoryPath = tag(blok, 'category_path')
    if (!categoryPath.includes(`|${categoriePad}`)) continue

    const titel = tag(blok, 'title')
    const url = tag(blok, 'link')
    if (!titel || !/^https?:\/\//i.test(url)) continue

    const ean = tag(blok, 'ean').replace(/\D/g, '')
    const prijsGetal = Number(tag(blok, 'price'))
    const prijs = Number.isFinite(prijsGetal) && prijsGetal > 0 ? prijsGetal : null
    const sizeGetal = Number(tag(blok, 'size').replace(',', '.'))

    producten.push({
      winkel,
      titel,
      merk: tag(blok, 'brand'),
      ean: /^\d{8,14}$/.test(ean) ? ean : '',
      maat: Number.isFinite(sizeGetal) && sizeGetal > 0 ? sizeGetal : null,
      prijs,
      url,
      categorie: categoryPath
    })
  }
  return producten
}

export function koppelDaisycon(producten, aanbiedingen) {
  const perEan = new Map()
  for (const aanbieding of aanbiedingen) {
    if (!aanbieding.ean) continue
    const huidig = perEan.get(aanbieding.ean)
    if (!huidig || (aanbieding.prijs != null && (huidig.prijs == null || aanbieding.prijs < huidig.prijs))) {
      perEan.set(aanbieding.ean, aanbieding)
    }
  }

  const koppelingen = []
  const onzeker = []
  for (const product of producten) {
    const ean = String(product.gtin ?? '').replace(/\D/g, '')
    if (!ean) {
      if (!onzeker.some(({ product: bestaand }) => bestaand.id === product.id)) onzeker.push({ product, reden: 'geen EAN in de catalogus' })
      continue
    }
    const aanbieding = perEan.get(ean)
    if (!aanbieding) continue
    // Gebruik de catalogusmaat als die eenduidig is; de feedmaat is soms het
    // brutogewicht inclusief verpakking (bijv. 12,15 kg voor 12 kg voer).
    const maat = product.package_size && !String(product.package_size).includes('/')
      ? String(product.package_size)
      : aanbieding.maat != null ? `${new Intl.NumberFormat('nl-NL', { maximumFractionDigits: 2 }).format(aanbieding.maat)} kg` : ''
    koppelingen.push({ product, aanbieding: { ...aanbieding, maat } })
  }

  // Eén trackinglink mag niet aan meerdere productrecords hangen.
  const perUrl = new Map()
  for (const koppeling of koppelingen) {
    if (!perUrl.has(koppeling.aanbieding.url)) perUrl.set(koppeling.aanbieding.url, [])
    perUrl.get(koppeling.aanbieding.url).push(koppeling)
  }
  const dubbel = new Set()
  for (const lijst of perUrl.values()) if (lijst.length > 1) lijst.forEach((koppeling) => dubbel.add(koppeling))
  const veilig = koppelingen.filter((koppeling) => !dubbel.has(koppeling))
  veilig.sort((a, b) =>
    a.product.brand.localeCompare(b.product.brand, 'nl', { sensitivity: 'base' }) ||
    a.product.name.localeCompare(b.product.name, 'nl', { sensitivity: 'base' })
  )
  return { koppelingen: veilig, dubbelzinnig: [...dubbel], onzeker }
}
