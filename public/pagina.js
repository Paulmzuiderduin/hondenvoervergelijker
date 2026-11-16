// Progressieve verbetering voor de statische overzichtspagina's.
// Zonder JavaScript blijft de volledige lijst zichtbaar; met JavaScript komen
// er zoeken, filteren, sorteren en een mobiele filterdrawer bij.
(() => {
  document.documentElement.classList.add('js')

  const lijst = document.querySelector('[data-product-list]')
  if (!lijst) return

  const paneel = document.querySelector('[data-filter-panel]')
  const zoekveld = document.querySelector('[data-product-search]')
  const merkveld = document.querySelector('[data-brand-filter]')
  const allergeenveld = document.querySelector('[data-allergen-filter]')
  const sorteerveld = document.querySelector('[data-sort]')
  const resetKnoppen = [...document.querySelectorAll('[data-product-reset]')]
  const typeKnoppen = [...document.querySelectorAll('[data-type-filter]')]
  const statusKnoppen = [...document.querySelectorAll('[data-status-filter]')]
  const etiketTabs = document.querySelector('[data-status-tabs="etiket"]')
  const allergeenTabs = document.querySelector('[data-status-tabs="allergeen"]')
  const status = document.querySelector('[data-product-status]')
  const meerKnop = document.querySelector('[data-product-more]')
  const meerWrap = document.querySelector('[data-product-more-wrap]')
  const leeg = document.querySelector('[data-product-empty]')
  const actieveFilters = document.querySelector('[data-active-filters]')
  const filterOpen = document.querySelector('[data-filter-open]')
  const filterSluit = document.querySelector('[data-filter-close]')
  const filterToepassen = document.querySelector('[data-filter-apply]')
  const filterBackdrop = document.querySelector('[data-filter-backdrop]')
  const filterSamenvatting = document.querySelector('[data-filter-summary]')
  const kaarten = [...lijst.querySelectorAll('[data-product]')]
  const PAGE_SIZE = 24

  let type = ''
  let statusWaarde = ''
  let allergeenKey = ''
  let sortering = 'standaard'
  let getoond = PAGE_SIZE

  const allergeenKeys = (() => {
    try {
      const waarde = JSON.parse(lijst.dataset.allergeenKeys || '[]')
      return Array.isArray(waarde) ? waarde : []
    } catch {
      return []
    }
  })()

  const origineleVolgorde = new Map(kaarten.map((kaart, index) => [kaart, index]))
  const standaardKaart = new Map(kaarten.map((kaart) => [kaart, {
    klasse: kaart.className,
    feitHtml: kaart.querySelector('[data-allergeen-feit]')?.innerHTML ?? '',
    feitKlasse: kaart.querySelector('[data-allergeen-feit]')?.className ?? '',
    labelHtml: kaart.querySelector('.product-status-label')?.innerHTML ?? '',
    contextHtml: kaart.querySelector('.product-status-context')?.innerHTML ?? '',
    statusKlasse: kaart.querySelector('.product-card-status')?.className ?? ''
  }]))

  const normaliseer = (waarde = '') => String(waarde)
    .toLocaleLowerCase('nl')
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')

  const actieveAllergeenIndex = () => allergeenKeys.indexOf(allergeenKey)

  const kaartStatus = (kaart) => {
    if (allergeenKey) {
      const index = actieveAllergeenIndex()
      if (index >= 0) {
        const statussen = String(kaart.dataset.allergenen || '').split(',')
        return statussen[index] || 'check'
      }
    }
    return kaart.dataset.status || 'ok'
  }

  const statusTeksten = {
    ok: { label: 'Geschikt', feit: 'niet genoemd op het etiket', icoon: '✓' },
    check: { label: 'Controleren', feit: 'controle nodig: het etiket geeft geen uitsluitsel', icoon: '?' },
    excluded: { label: 'Uitgesloten', feit: 'staat expliciet op het etiket', icoon: '✕' }
  }

  const gekozenAllergeenLabel = () => {
    const optie = allergeenveld?.selectedOptions?.[0]
    return optie && optie.value ? optie.textContent.trim() : 'Allergeen'
  }

  const zetKaartStatus = (kaart, waarde, context) => {
    const blok = kaart.querySelector('.product-card-status')
    const label = kaart.querySelector('.product-status-label')
    const contextEl = kaart.querySelector('.product-status-context')
    const feit = kaart.querySelector('[data-allergeen-feit]')
    if (blok) blok.className = `product-card-status ${waarde}`
    if (label) label.innerHTML = `<span class="product-status-dot" aria-hidden="true"></span>${statusTeksten[waarde].label}`
    if (contextEl) contextEl.textContent = context
    if (feit) {
      feit.className = `product-fact ${waarde}`
      feit.innerHTML = `<span class="product-fact-icon" aria-hidden="true">${statusTeksten[waarde].icoon}</span><span><b>${gekozenAllergeenLabel()}:</b> ${statusTeksten[waarde].feit}</span>`
    }
    kaart.className = kaart.className.replace(/tone-(ok|check|excluded)/, `tone-${waarde}`)
  }

  const herstelKaart = (kaart) => {
    const standaard = standaardKaart.get(kaart)
    const blok = kaart.querySelector('.product-card-status')
    const label = kaart.querySelector('.product-status-label')
    const contextEl = kaart.querySelector('.product-status-context')
    const feit = kaart.querySelector('[data-allergeen-feit]')
    kaart.className = standaard.klasse
    if (blok) blok.className = standaard.statusKlasse
    if (label) label.innerHTML = standaard.labelHtml
    if (contextEl) contextEl.innerHTML = standaard.contextHtml
    if (feit) {
      feit.className = standaard.feitKlasse
      feit.innerHTML = standaard.feitHtml
    }
  }

  const basisGevonden = () => {
    const zoekterm = normaliseer(zoekveld?.value.trim() ?? '')
    const merk = merkveld?.value ?? ''
    return kaarten.filter((kaart) => {
      if (zoekterm && !(kaart.dataset.zoek || '').includes(zoekterm)) return false
      if (merk && kaart.dataset.brand !== merk) return false
      if (type && kaart.dataset.type !== type) return false
      return true
    })
  }

  const recent = () => {
    const basis = basisGevonden()
    const zichtbaar = statusWaarde
      ? basis.filter((kaart) => kaartStatus(kaart) === statusWaarde)
      : basis

    for (const kaart of kaarten) kaart.hidden = true
    for (const kaart of zichtbaar.slice(0, getoond)) kaart.hidden = false

    const telLabel = lijst.dataset.telLabel || 'producten'
    if (status) status.textContent = `${zichtbaar.length} van ${kaarten.length} ${telLabel}`
    if (leeg) leeg.hidden = zichtbaar.length !== 0
    if (meerWrap) meerWrap.hidden = zichtbaar.length <= getoond
    if (meerKnop) meerKnop.hidden = zichtbaar.length <= getoond

    const actieveTabs = allergeenKey ? allergeenTabs : etiketTabs
    if (etiketTabs) etiketTabs.hidden = Boolean(allergeenKey)
    if (allergeenTabs) allergeenTabs.hidden = !allergeenKey
    if (actieveTabs) {
      for (const knop of actieveTabs.querySelectorAll('[data-status-filter]')) {
        const waarde = knop.dataset.statusFilter
        const aantal = waarde ? basis.filter((kaart) => kaartStatus(kaart) === waarde).length : basis.length
        const telling = knop.querySelector('.status-tab-count')
        if (telling) telling.textContent = aantal.toLocaleString('nl-NL')
        knop.classList.toggle('is-active', waarde === statusWaarde)
        knop.setAttribute('aria-pressed', String(waarde === statusWaarde))
      }
    }

    tekenActieveFilters()
    const aantalActief = actieveFiltersLijst().length
    for (const knop of resetKnoppen) knop.disabled = aantalActief === 0 && sortering === 'standaard'
    if (filterSamenvatting) {
      filterSamenvatting.textContent = aantalActief ? `${aantalActief} actief` : 'Alles tonen'
    }
  }

  const actieveFiltersLijst = () => {
    const filters = []
    const zoekterm = zoekveld?.value.trim() ?? ''
    if (zoekterm) filters.push({ soort: 'zoek', label: `Zoek: ${zoekterm}` })
    if (merkveld?.value) filters.push({ soort: 'merk', label: `Merk: ${merkveld.value}` })
    if (type) filters.push({ soort: 'type', label: `Type: ${typeKnoppen.find((knop) => knop.dataset.typeFilter === type)?.textContent ?? type}` })
    if (statusWaarde) {
      const knop = [...document.querySelectorAll('[data-status-filter]')].find((item) => item.dataset.statusFilter === statusWaarde && !item.closest('[hidden]'))
      const tekst = knop?.querySelector('.status-tab-label')?.textContent ?? statusWaarde
      filters.push({ soort: 'status', label: `Status: ${tekst}` })
    }
    if (allergeenKey) filters.push({ soort: 'allergeen', label: `Allergeen: ${gekozenAllergeenLabel()}` })
    return filters
  }

  const tekenActieveFilters = () => {
    if (!actieveFilters) return
    const filters = actieveFiltersLijst()
    actieveFilters.hidden = filters.length === 0
    actieveFilters.innerHTML = filters.map(({ soort, label }) => `<button type="button" class="active-filter" data-wis="${soort}">${label} <span aria-hidden="true">×</span></button>`).join('')
  }

  const sorteer = () => {
    const vergelijk = (eerste, tweede) => {
      if (sortering === 'naam') return (eerste.dataset.sorteerNaam || '').localeCompare(tweede.dataset.sorteerNaam || '', 'nl')
      if (sortering === 'merk') return (eerste.dataset.sorteerMerk || '').localeCompare(tweede.dataset.sorteerMerk || '', 'nl')
      if (sortering === 'datum') return (tweede.dataset.sorteerDatum || '').localeCompare(eerste.dataset.sorteerDatum || '')
      if (sortering === 'aantal') return (Number(tweede.dataset.sorteerAantal) || 0) - (Number(eerste.dataset.sorteerAantal) || 0)
      return (origineleVolgorde.get(eerste) ?? 0) - (origineleVolgorde.get(tweede) ?? 0)
    }
    kaarten.sort(vergelijk)
    for (const kaart of kaarten) lijst.append(kaart)
  }

  const zetType = (waarde) => {
    type = waarde
    for (const knop of typeKnoppen) {
      const actief = (knop.dataset.typeFilter ?? '') === type
      knop.classList.toggle('is-active', actief)
      knop.setAttribute('aria-pressed', String(actief))
    }
  }

  const zetStatus = (waarde) => {
    statusWaarde = waarde
    for (const knop of statusKnoppen) {
      const actief = (knop.dataset.statusFilter ?? '') === statusWaarde
      knop.classList.toggle('is-active', actief)
      knop.setAttribute('aria-pressed', String(actief))
    }
  }

  const wis = () => {
    if (zoekveld) zoekveld.value = ''
    if (merkveld) merkveld.value = ''
    if (allergeenveld) allergeenveld.value = ''
    if (sorteerveld) sorteerveld.value = 'standaard'
    allergeenKey = ''
    sortering = 'standaard'
    zetType('')
    zetStatus('')
    getoond = PAGE_SIZE
    for (const kaart of kaarten) herstelKaart(kaart)
    sorteer()
    recent()
  }

  const openFilterpaneel = () => {
    if (!paneel) return
    paneel.classList.add('is-open')
    if (filterBackdrop) filterBackdrop.hidden = false
    document.body.classList.add('filters-open')
    filterOpen?.setAttribute('aria-expanded', 'true')
    window.setTimeout(() => zoekveld?.focus(), 80)
  }

  const sluitFilterpaneel = () => {
    if (!paneel) return
    paneel.classList.remove('is-open')
    if (filterBackdrop) filterBackdrop.hidden = true
    document.body.classList.remove('filters-open')
    filterOpen?.setAttribute('aria-expanded', 'false')
    filterOpen?.focus()
  }

  if (paneel) paneel.hidden = false
  if (filterBackdrop) filterBackdrop.hidden = true

  zoekveld?.addEventListener('input', () => { getoond = PAGE_SIZE; recent() })
  merkveld?.addEventListener('change', () => { getoond = PAGE_SIZE; recent() })
  allergeenveld?.addEventListener('change', () => {
    allergeenKey = allergeenveld.value
    statusWaarde = ''
    getoond = PAGE_SIZE
    for (const kaart of kaarten) {
      if (allergeenKey) {
        const waarde = kaartStatus(kaart)
        zetKaartStatus(kaart, waarde, `Bij ${gekozenAllergeenLabel()}`)
      } else {
        herstelKaart(kaart)
      }
    }
    for (const knop of statusKnoppen) {
      const actief = (knop.dataset.statusFilter ?? '') === ''
      knop.classList.toggle('is-active', actief)
      knop.setAttribute('aria-pressed', String(actief))
    }
    recent()
  })
  sorteerveld?.addEventListener('change', () => {
    sortering = sorteerveld.value
    getoond = PAGE_SIZE
    sorteer()
    recent()
  })

  for (const knop of typeKnoppen) {
    knop.addEventListener('click', () => {
      zetType(knop.dataset.typeFilter ?? '')
      getoond = PAGE_SIZE
      recent()
    })
  }
  for (const knop of statusKnoppen) {
    knop.addEventListener('click', () => {
      zetStatus(knop.dataset.statusFilter ?? '')
      getoond = PAGE_SIZE
      recent()
    })
  }
  for (const knop of resetKnoppen) knop.addEventListener('click', wis)

  actieveFilters?.addEventListener('click', (event) => {
    const knop = event.target.closest('[data-wis]')
    if (!knop) return
    const soort = knop.dataset.wis
    if (soort === 'zoek' && zoekveld) zoekveld.value = ''
    if (soort === 'merk' && merkveld) merkveld.value = ''
    if (soort === 'type') zetType('')
    if (soort === 'status') zetStatus('')
    if (soort === 'allergeen') {
      if (allergeenveld) allergeenveld.value = ''
      allergeenKey = ''
      zetStatus('')
      for (const kaart of kaarten) herstelKaart(kaart)
    }
    getoond = PAGE_SIZE
    recent()
  })

  meerKnop?.addEventListener('click', () => { getoond += PAGE_SIZE; recent() })
  filterOpen?.addEventListener('click', openFilterpaneel)
  filterSluit?.addEventListener('click', sluitFilterpaneel)
  filterToepassen?.addEventListener('click', sluitFilterpaneel)
  filterBackdrop?.addEventListener('click', sluitFilterpaneel)
  document.addEventListener('keydown', (event) => {
    if (event.key === 'Escape' && paneel?.classList.contains('is-open')) sluitFilterpaneel()
  })

  // Sorteren opnieuw toepassen na het wijzigen van de lijst.
  wis()
})()
