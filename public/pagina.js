// Progressieve verbetering voor de statische overzichtspagina's.
// Zonder JavaScript blijft de volledige productlijst zichtbaar; met JavaScript
// komen er zoeken, filteren en een "meer laden"-knop bij.
(() => {
  document.documentElement.classList.add('js')

  const lijst = document.querySelector('[data-product-list]')
  if (!lijst) return

  const werkbalk = document.querySelector('[data-product-toolbar]')
  const zoekveld = document.querySelector('[data-product-search]')
  const merkveld = document.querySelector('[data-brand-filter]')
  const resetKnoppen = [...document.querySelectorAll('[data-product-reset]')]
  const typeKnoppen = [...document.querySelectorAll('[data-type-filter]')]
  const status = document.querySelector('[data-product-status]')
  const meerKnop = document.querySelector('[data-product-more]')
  const meerWrap = document.querySelector('[data-product-more-wrap]')
  const leeg = document.querySelector('[data-product-empty]')
  const kaarten = [...lijst.querySelectorAll('[data-product]')]
  const PAGE_SIZE = 24

  let type = ''
  let getoond = PAGE_SIZE

  const normaliseer = (waarde = '') => String(waarde)
    .toLocaleLowerCase('nl')
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')

  const gevonden = () => {
    const zoekterm = normaliseer(zoekveld?.value.trim() ?? '')
    const merk = merkveld?.value ?? ''
    return kaarten.filter((kaart) => {
      if (zoekterm && !kaart.dataset.zoek.includes(zoekterm)) return false
      if (merk && kaart.dataset.brand !== merk) return false
      if (type && kaart.dataset.type !== type) return false
      return true
    })
  }

  const actieveFilters = () => Boolean(zoekveld?.value.trim() || merkveld?.value || type)

  const toon = () => {
    const zichtbaar = gevonden()
    for (const kaart of kaarten) kaart.hidden = true
    for (const kaart of zichtbaar.slice(0, getoond)) kaart.hidden = false

    if (status) status.textContent = `${zichtbaar.length} van ${kaarten.length} ${document.body.classList.contains('page-allergen') ? 'voorbeelden' : 'producten'}`
    if (leeg) leeg.hidden = zichtbaar.length !== 0
    if (meerWrap) meerWrap.hidden = zichtbaar.length <= getoond
    if (meerKnop) meerKnop.hidden = zichtbaar.length <= getoond
    for (const knop of resetKnoppen) knop.disabled = !actieveFilters()
  }

  const wis = () => {
    if (zoekveld) zoekveld.value = ''
    if (merkveld) merkveld.value = ''
    type = ''
    getoond = PAGE_SIZE
    for (const knop of typeKnoppen) {
      const actief = !knop.dataset.typeFilter
      knop.classList.toggle('is-active', actief)
      knop.setAttribute('aria-pressed', String(actief))
    }
    toon()
  }

  if (werkbalk) werkbalk.hidden = false

  zoekveld?.addEventListener('input', () => { getoond = PAGE_SIZE; toon() })
  merkveld?.addEventListener('change', () => { getoond = PAGE_SIZE; toon() })
  for (const knop of typeKnoppen) {
    knop.addEventListener('click', () => {
      type = knop.dataset.typeFilter ?? ''
      for (const andere of typeKnoppen) {
        const actief = andere === knop
        andere.classList.toggle('is-active', actief)
        andere.setAttribute('aria-pressed', String(actief))
      }
      getoond = PAGE_SIZE
      toon()
    })
  }
  for (const knop of resetKnoppen) knop.addEventListener('click', wis)
  meerKnop?.addEventListener('click', () => { getoond += PAGE_SIZE; toon() })

  wis()
})()
