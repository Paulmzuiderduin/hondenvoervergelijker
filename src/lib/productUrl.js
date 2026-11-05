// Eén bron van waarheid voor de URL's van de statische merk- en productpagina's.
// Dezelfde functie wordt gebruikt door de React-app en door het SEO-script,
// zodat een productkaart en de gegenereerde pagina nooit naar verschillende
// bestanden wijzen.

export function slugify(tekst = '') {
  return String(tekst ?? '')
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .replace(/[øØ]/g, 'o')
    .replace(/[æÆ]/g, 'ae')
    .replace(/[œŒ]/g, 'oe')
    .replace(/[ß]/g, 'ss')
    .replace(/[đĐðÐ]/g, 'd')
    .replace(/[þÞ]/g, 'th')
    .replace(/[łŁ]/g, 'l')
    .replace(/&/g, ' en ')
    .replace(/['’`]/g, '')
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/^-+|-+$/g, '')
}

export function merkPad(brand) {
  return `/merken/${slugify(brand ?? '') || 'merk'}.html`
}

export function productPad(product) {
  const merk = slugify(product?.brand ?? '') || 'merk'
  const naam = (slugify(product?.name ?? '') || 'product').slice(0, 72).replace(/-+$/g, '') || 'product'
  const id = String(product?.id ?? '').replace(/[^a-zA-Z0-9]/g, '').slice(0, 8) || 'product'
  return `/producten/${merk}/${naam}-${id}.html`
}
