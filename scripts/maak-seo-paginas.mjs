#!/usr/bin/env node
// Maakt de statische SEO-pagina's en de sitemap na `vite build`.
//
// Waarom statisch: de vergelijker zelf is een React-app. Bezoekers en
// zoekmachines die alleen de eerste HTML lezen, zien daardoor weinig inhoud.
// Dit script schrijft per merk een echte HTML-pagina met de producten, de
// ingrediëntenstatus en een link naar de vergelijker. Ook de uitlegpagina's en
// de sitemap komen hier vandaan.
//
// Draait na de build (npm-script postbuild) en is fail-soft: zonder database
// blijven de uitlegpagina's en de basissitemap gewoon werken.

import { existsSync, mkdirSync, readFileSync, writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'
import { ALLERGEN_LABELS, ALLERGENS, FOOD_TYPES, assessLabel, markUncertainIngredients, setCustomTerms } from '../src/lib/allergens.js'
import { productMatch } from '../src/lib/matcher.js'

const WORTEL = dirname(dirname(fileURLToPath(import.meta.url)))
const DIST = join(WORTEL, 'dist')
const SITE = 'https://hondenvoervergelijker.paulzuiderduin.com'
const VANDAAG = new Date().toISOString().slice(0, 10)

function leesEnv() {
  const env = {}
  const pad = join(WORTEL, '.env.local')
  if (!existsSync(pad)) return env
  for (const regel of readFileSync(pad, 'utf8').split(/\r?\n/)) {
    const idx = regel.indexOf('=')
    if (idx > 0 && !regel.trim().startsWith('#')) env[regel.slice(0, idx).trim()] = regel.slice(idx + 1).trim()
  }
  return env
}

const env = leesEnv()
const SUPABASE_URL = (process.env.VITE_SUPABASE_URL || process.env.SUPABASE_URL || env.VITE_SUPABASE_URL || '').replace(/\/$/, '')
const SUPABASE_KEY = process.env.VITE_SUPABASE_PUBLISHABLE_KEY || process.env.SUPABASE_PUBLISHABLE_KEY || env.VITE_SUPABASE_PUBLISHABLE_KEY || ''

const escapeHtml = (waarde = '') =>
  String(waarde)
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;')
    .replace(/'/g, '&#39;')

const datumNl = (waarde) => {
  if (!waarde) return ''
  const datum = new Date(waarde)
  if (Number.isNaN(datum.getTime())) return ''
  return datum.toLocaleDateString('nl-NL', { day: 'numeric', month: 'long', year: 'numeric' })
}

const slug = (tekst = '') =>
  String(tekst)
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

const typeLabel = (key) => FOOD_TYPES.find(([sleutel]) => sleutel === key)?.[1] ?? key

function shell({ titel, beschrijving, pad, inhoud, jsonLd = [], extraKop = '' }) {
  const canonical = `${SITE}${pad}`
  return `<!doctype html>
<html lang="nl">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="${escapeHtml(beschrijving)}" />
    <meta name="robots" content="index, follow" />
    <link rel="canonical" href="${canonical}" />
    <meta property="og:type" content="website" />
    <meta property="og:site_name" content="Hondenvoervergelijker" />
    <meta property="og:locale" content="nl_NL" />
    <meta property="og:title" content="${escapeHtml(titel)}" />
    <meta property="og:description" content="${escapeHtml(beschrijving)}" />
    <meta property="og:url" content="${canonical}" />
    <meta property="og:image" content="${SITE}/og-image.png" />
    <meta property="og:image:width" content="1200" />
    <meta property="og:image:height" content="630" />
    <meta property="og:image:alt" content="Hondenvoervergelijker: hondenvoer vergelijken op allergenen" />
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:image" content="${SITE}/og-image.png" />
    <link rel="icon" href="/favicon.ico" sizes="any" />
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32.png" />
    <link rel="icon" type="image/png" sizes="192x192" href="/favicon-192.png" />
    <link rel="icon" type="image/png" sizes="512x512" href="/favicon-512.png" />
    <link rel="apple-touch-icon" sizes="180x180" href="/favicon-180.png" />
    <link rel="stylesheet" href="/pagina.css" />
    <script>
      try {
        const params = new URLSearchParams(window.location.search)
        if (params.get('umami-optout') === '1') localStorage.setItem('umami.disabled', '1')
        if (params.get('umami-optin') === '1') localStorage.removeItem('umami.disabled')
      } catch {}
    </script>
    <script defer src="https://cloud.umami.is/script.js" data-website-id="85273e9f-2c35-4a6e-83ff-7b61de38dec0" data-domains="hondenvoervergelijker.paulzuiderduin.com"></script>
    <title>${escapeHtml(titel)}</title>
    ${jsonLd.map((blok) => `<script type="application/ld+json">${JSON.stringify(blok)}</script>`).join('\n    ')}
    ${extraKop}
  </head>
  <body>
    <header class="site">
      <div class="header-inner">
        <a class="brand" href="/">
          <img src="/favicon-192.png" alt="" width="32" height="32" />
          <span>
            <strong>Hondenvoervergelijker</strong>
            <span>Onafhankelijk hondenvoer vergelijken</span>
          </span>
        </a>
        <a class="back" href="/">Naar de vergelijker →</a>
      </div>
    </header>
    <main class="wrap">
${inhoud}
      <footer>
        <nav aria-label="Informatie">
          <a href="/">Vergelijker</a>
          <a href="/merken/">Alle merken</a>
          <a href="/hondenvoer-allergieen.html">Hondenvoer en allergieën</a>
          <a href="/hondenvoer-zonder.html">Zonder allergeen</a>
          <a href="/hoe-wij-vergelijken.html">Hoe wij vergelijken</a>
          <a href="/etikettenonderzoek.html">Etikettenonderzoek</a>
          <a href="/over-ons.html">Over ons</a>
          <a href="/contact.html">Contact</a>
          <a href="/voorwaarden.html">Voorwaarden</a>
          <a href="/disclaimer.html">Disclaimer</a>
          <a href="/privacybeleid.html">Privacybeleid</a>
        </nav>
        <p>Sommige links naar webwinkels zijn affiliate-links. Wij ontvangen dan een kleine commissie, zonder extra kosten voor jou. De selectie en beoordeling blijven onafhankelijk.</p>
        <p>© ${new Date().getFullYear()} Hondenvoervergelijker · Paul Zuiderduin · <a href="mailto:hondenvoervergelijker@paulzuiderduin.com">hondenvoervergelijker@paulzuiderduin.com</a></p>
        <p>Deze site vergelijkt uitsluitend overgenomen etiketinformatie. De resultaten vormen geen medisch advies en bieden geen 100% garantie. Controleer altijd zelf de verpakking en overleg bij medische klachten met een dierenarts.</p>
      </footer>
    </main>
  </body>
</html>
`
}

const organisatie = {
  '@type': 'Organization',
  name: 'Hondenvoervergelijker',
  url: SITE,
  email: 'hondenvoervergelijker@paulzuiderduin.com',
  description: 'Onafhankelijke vergelijker van hondenvoeding op ingrediënten en allergenen.'
}

/* ------------------------------------------------------------------ */
/* Inhoudspagina's                                                     */
/* ------------------------------------------------------------------ */

const allergiePagina = () => {
  const faq = [
    {
      vraag: 'Wat is het verschil tussen een voedselallergie en een voedselintolerantie bij honden?',
      antwoord: 'Bij een allergie reageert het immuunsysteem overgevoelig op een specifiek eiwit, wat vaak resulteert in jeuk, huidklachten of maag-darmproblemen. Bij een intolerantie is er geen sprake van een immuunreactie, maar van een verteringsprobleem (bijvoorbeeld door een te hoog vetgehalte of een specifieke voedingsstof). Vaak kan alleen een dierenarts, met behulp van een strikt eliminatiedieet, het juiste onderscheid maken.'
    },
    {
      vraag: 'Hoe lees ik de ingrediëntenlijst op hondenvoer?',
      antwoord: 'Ingrediënten worden altijd vermeld in aflopende volgorde van gewicht. Wees waakzaam voor vage verzameltermen zoals “vlees en dierlijke bijproducten”, “granen”, “dierlijk vet” en “bouillon”, omdat deze geen specifieke dier- of plantensoort noemen. Voor een succesvol eliminatiedieet zoek je naar een product waarbij elk ingrediënt exact met naam (en idealiter met percentage) wordt vermeld.'
    },
    {
      vraag: 'Wat betekent “gehydrolyseerd eiwit” op een etiket?',
      antwoord: 'Dit betekent dat het eiwit in zulke kleine fragmenten is opgeknipt dat het immuunsysteem van de hond het in veel gevallen niet meer als allergeen herkent. Dit garandeert echter niet dat het voor elke hond 100% veilig is, aangezien de oorspronkelijke bron onveranderd blijft. Een dierenarts kan het beste inschatten of een gehydrolyseerd dieet geschikt is voor jouw hond.'
    },
    {
      vraag: 'Is “grain free” (graanvrij) automatisch een veilige keuze bij een allergie?',
      antwoord: 'Nee, zeker niet. Een voedselallergie wordt meestal veroorzaakt door een dierlijke eiwitbron (zoals kip, rund of zuivel), niet door granen. Een graanvrij product kan dus nog steeds de eiwitten bevatten waar je hond allergisch voor is. Omgekeerd kan een voeding mét granen, maar met slechts één gecontroleerde (hypoallergene) eiwitbron, wél uitstekend geschikt zijn.'
    },
    {
      vraag: 'Kan ik deze website gebruiken als vervanging voor een eliminatiedieet?',
      antwoord: 'Nee. Onze website is uitsluitend een hulpmiddel om snel inzicht te krijgen in de samenstelling van etiketten en het opsporen van onduidelijke bronnen. Het uitvoeren van een eliminatiedieet en de daaropvolgende provocatietest dienen altijd onder begeleiding van een dierenarts te gebeuren, met voeding die daar specifiek voor is samengesteld.'
    }
  ]

  const faqJsonLd = {
    '@context': 'https://schema.org',
    '@type': 'FAQPage',
    mainEntity: faq.map(({ vraag, antwoord }) => ({
      '@type': 'Question',
      name: vraag,
      acceptedAnswer: { '@type': 'Answer', text: antwoord }
    }))
  }

  const inhoud = `      <p class="breadcrumb"><a href="/">Hondenvoervergelijker</a> › Hondenvoer en allergieën</p>
      <p class="eyebrow">Uitleg</p>
      <h1>Hondenvoer en allergieën: zo lees je een etiket</h1>
      <p class="lead">Bij een vermoeden van een voedselallergie draait vrijwel alles om één cruciale vraag: welke ingrediënten worden expliciet op het etiket vermeld, en welke gaan schuil achter onduidelijke verzameltermen? Op deze pagina leggen we uit waar je op moet letten en hoe onze vergelijker je hierbij helpt.</p>
      <p class="updated">Bijgewerkt op ${datumNl(VANDAAG)} · leestijd ongeveer 7 minuten</p>

      <div class="callout warn">
        <p><strong>Geen medisch advies:</strong> klachten zoals jeuk, haaruitval, oorontstekingen, braken of diarree kunnen talloze oorzaken hebben. Laat een vermoede allergie daarom altijd eerst door een dierenarts onderzoeken voordat je zelfstandig met een speciaal dieet begint.</p>
      </div>

      <h2>Allergie of intolerantie?</h2>
      <p>Bij een <strong>voedselallergie</strong> reageert het immuunsysteem van de hond op een specifiek eiwit. Vaak is dit een dierlijk eiwit, zoals afkomstig van kip, rund, lam of zuivel. De klachten uiten zich meestal in jeuk en huidproblemen, en soms in maag-darmklachten. Bij een <strong>voedselintolerantie</strong> is het immuunsysteem niet betrokken; hierbij gaat het om een probleem met de spijsvertering (bijvoorbeeld moeite met het afbreken van bepaalde stoffen). Een eliminatiedieet, gevolgd door een provocatietest, is de meest betrouwbare manier om vast te stellen of het om een allergie of intolerantie gaat.</p>

      <h2>Waarom de ingrediëntenlijst zo belangrijk is</h2>
      <p>De wettelijk verplichte ingrediëntenlijst is de enige plek waar exact staat vermeld wat de voeding daadwerkelijk bevat. In de praktijk blijkt deze lijst echter vaak minder transparant dan hij lijkt:</p>
      <ul>
        <li><strong>Verzameltermen:</strong> termen als “vlees en dierlijke bijproducten”, “granen” en “dierlijk vet” specificeren geen exacte dier- of plantensoort. Voor baasjes die een specifieke eiwit- of koolhydraatbron willen vermijden, levert dit onzekerheid op.</li>
        <li><strong>Percentages:</strong> de vermelding “kip 4%” betekent iets heel anders dan “kip 40%”. Zonder duidelijke percentages is de werkelijke samenstelling van het voer moeilijk in te schatten.</li>
        <li><strong>Bijproducten en organen:</strong> ingrediënten zoals lever, long, hart of karkas zijn nog steeds afkomstig van een specifiek dier. Voor een allergische hond tellen deze orgaanvleessoorten dus net zo zwaar mee als spiervlees.</li>
        <li><strong>Bouillon en vetten:</strong> een “bouillon” of “dierlijk vet” kan van meerdere diersoorten afkomstig zijn. Zolang de exacte bron ontbreekt, vormt dit een verborgen risico.</li>
        <li><strong>Gehydrolyseerd eiwit:</strong> bij dit proces zijn de eiwitten dusdanig klein “opgeknipt” dat het immuunsysteem ze minder snel herkent, maar de oorspronkelijke bron blijft gelijk. Overleg altijd met een dierenarts of dit in jullie specifieke situatie een veilige keuze is.</li>
      </ul>

      <h2>Zo gebruik je de vergelijker</h2>
      <ol>
        <li>Selecteer de allergenen die je wilt vermijden (bijvoorbeeld kip, rund, tarwe of zalm).</li>
        <li>Controleer per product of de bron specifiek met naam wordt genoemd. Producten die vage of onduidelijke termen bevatten, krijgen de status “Controleer etiket/fabrikant”.</li>
        <li>Open de volledige ingrediëntenlijst op de productkaart. Rood gemarkeerde termen zijn ongespecificeerd en bevatten geen duidelijke bron.</li>
        <li>Twijfel je nog steeds? Vraag dan de fabrikant om een schriftelijke bevestiging van de gebruikte bronnen en bewaar dit antwoord goed.</li>
      </ol>
      <p><a class="cta" href="/">Open de vergelijker</a> <a class="cta secondary" href="/merken/">Bekijk alle merken</a></p>

      <h2>Wat de uitslagen betekenen</h2>
      <table>
        <thead><tr><th>Uitslag</th><th>Betekenis</th></tr></thead>
        <tbody>
          <tr><td><strong>Geschikt</strong></td><td>Het etiket vermeldt de geselecteerde bron nergens. Daarnaast bevat de lijst geen onduidelijke verzameltermen waarachter dit allergeen verborgen kan zitten.</td></tr>
          <tr><td><strong>Uitgesloten</strong></td><td>De geselecteerde bron staat expliciet met naam genoemd in de ingrediëntenlijst.</td></tr>
          <tr><td><strong>Controleer etiket/fabrikant</strong></td><td>Het etiket bevat een ingrediënt zonder gespecificeerde bron, of noemt een term die ons systeem niet herkent. Alleen de fabrikant of de originele verpakking kan hier uitsluitsel over geven.</td></tr>
        </tbody>
      </table>

      <h2>Veelgestelde vragen</h2>
      <div class="faq">
        ${faq.map(({ vraag, antwoord }) => `<details><summary>${escapeHtml(vraag)}</summary><p>${escapeHtml(antwoord)}</p></details>`).join('\n        ')}
      </div>

      <div class="callout">
        <p><strong>Verder lezen:</strong> ontdek <a href="/hoe-wij-vergelijken.html">hoe wij etiketten overnemen en controleren</a>, bekijk direct <a href="/merken/">alle merken</a> en hun recepten, of zoek <a href="/hondenvoer-zonder.html">hondenvoer zonder een specifiek allergeen</a>.</p>
      </div>`

  return shell({
    titel: 'Hondenvoer en allergieën: zo lees je een etiket | Hondenvoervergelijker',
    beschrijving: 'Uitleg over voedselallergie en intolerantie bij honden, verzameltermen op etiketten, gehydrolyseerd eiwit en het gebruik van de onafhankelijke hondenvoervergelijker.',
    pad: '/hondenvoer-allergieen.html',
    inhoud,
    jsonLd: [faqJsonLd, { '@context': 'https://schema.org', ...organisatie }]
  })
}

const methodePagina = () => {
  const inhoud = `      <p class="breadcrumb"><a href="/">Hondenvoervergelijker</a> › Hoe wij vergelijken</p>
      <p class="eyebrow">Methodiek</p>
      <h1>Hoe wij hondenvoer vergelijken</h1>
      <p class="lead">Onze vergelijker hanteert één strikte basisregel: alle getoonde informatie moet direct herleidbaar zijn tot de officiële ingrediëntenlijst van de fabrikant. Op deze pagina lichten we toe hoe we data verzamelen, hoe het automatische beoordelingssysteem werkt en wat de beperkingen zijn.</p>
      <p class="updated">Bijgewerkt op ${datumNl(VANDAAG)}</p>

      <h2>1. Bronnen: de fabrikant, niet de winkel</h2>
      <p>Wij halen onze ingrediëntenlijsten rechtstreeks van de officiële productpagina's van de fabrikant, bij voorkeur de Nederlandse versie. Is deze niet beschikbaar? Dan gebruiken we de anderstalige officiële pagina. Daarbij vertalen we de samenstelling met exact dezelfde percentages en in dezelfde volgorde. In dat geval vind je daarvan altijd een transparante notitie op de desbetreffende productkaart.</p>
      <p>Webshops en affiliate-feeds gebruiken we niet als bron voor de samenstelling. Deze lopen namelijk vaak achter na receptuurwijzigingen en bundelen soms per ongeluk meerdere productvarianten op één webpagina. Voor een klein aantal producten is er geen bruikbare Nederlandse fabrikantpagina, of wijkt de Nederlandse formule af van de anderstalige fabrikantpagina. Dan gebruiken we een gespecificeerde Nederlandse winkelpagina als bron en staat dat op de productkaart. Dat geldt voor Terra Canis, Taste of the Wild, Purina One, Frolic en Dog Chow. Zodra er een bruikbare fabrikantpagina is, vervangen we die bron.</p>

      <h2>2. Letterlijk overnemen</h2>
      <p>De tekst op het etiket wordt door ons letterlijk overgenomen: inclusief dezelfde volgorde, percentages, hoeveelheden en zelfs leestekens. Ontbreekt de lijst of is de informatie online onbereikbaar? Dan voegen we het product simpelweg niet toe. We doen niet aan giswerk; we hebben liever een ontbrekend product op de site dan een onjuiste ingrediëntenlijst.</p>

      <h2>3. De keuring: woord voor woord</h2>
      <p>Elke ingrediëntenlijst wordt geautomatiseerd geanalyseerd. Ons systeem herkent dierlijke en plantaardige eiwitbronnen, bereidingswijzen, mineralen en hulpstoffen. Verzameltermen die de werkelijke bron verbergen — zoals “dierlijk vet”, “granen”, “bouillon” of “plantaardige olie” — blokkeren vervolgens alleen die allergenen die er logischerwijs achter schuil kunnen gaan. Zo kan “dierlijk vet” bijvoorbeeld afkomstig zijn van een rund of varken, maar nooit van tarwe of zalm.</p>
      <p>Onbekende woorden worden door de beheerder eenmalig handmatig gecategoriseerd. Deze indeling wordt opgeslagen en direct toegepast op alle toekomstige en bestaande producten die ditzelfde woord bevatten. Zo leert de vergelijker continu nieuwe termen herkennen, zonder dat elk etiket volledig handwerk blijft.</p>

      <h2>4. Eerlijk over onzekerheid</h2>
      <p>Wanneer een etiket de specifieke bron niet noemt, markeert onze site het product niet blindelings als “Geschikt”, maar geven we de status “Controleer etiket/fabrikant”. Dit is geen programmeerfout, maar een weerspiegeling van de onvolledigheid van het etiket zelf. In dergelijke gevallen kan uitsluitend de verpakking of de fabrikant helderheid verschaffen.</p>

      <h2>5. Actualiteit en bronbewaking</h2>
      <p>De bronpagina's worden wekelijks geautomatiseerd gecontroleerd. Is de tekst op de website van de fabrikant ongewijzigd? Dan updaten we enkel de controledatum. Signaleert het systeem een wijziging, dan blijft de oude samenstelling op onze site zichtbaar totdat een beheerder de nieuwe tekst handmatig heeft goedgekeurd en verwerkt. Hierdoor passen ingrediëntenlijsten op ons platform zich nooit ongemerkt aan.</p>
      <p>Sites die geautomatiseerde bezoeken blokkeren, controleren we periodiek handmatig. Producten die lange tijd niet gecontroleerd konden worden, krijgen uit voorzorg automatisch de status “Controleer etiket/fabrikant”. Dit is een bewust strenge veiligheidsmaatregel.</p>
      <p>Benieuwd hoe vaak verzameltermen in de hele database voorkomen? Lees ons <a href="/etikettenonderzoek.html">etikettenonderzoek</a>.</p>

      <h2>6. Onafhankelijkheid en affiliate-links</h2>
      <p>De weergavevolgorde en de uiteindelijke beoordeling van producten zijn uitsluitend gebaseerd op de feitelijke etiketinformatie en de door jou geselecteerde allergenen. Verwijzingen naar webwinkels kunnen soms affiliate-links bevatten, maar deze hebben geen enkele invloed op wélke producten we tonen, op de rangschikking, of op de keuringsuitslag. Meer hierover lees je in ons <a href="/privacybeleid.html">privacybeleid</a>.</p>

      <h2>7. Beperkingen</h2>
      <ul>
        <li>De vergelijker baseert zich uitsluitend op de verstrekte etiketinformatie. Receptuurwijzigingen die de fabrikant (nog) niet op het etiket heeft doorgevoerd, zijn voor ons onzichtbaar.</li>
        <li>Als een specifieke bron op het etiket ontbreekt, betekent dit niet automatisch dat het product onveilig is voor jouw hond. Het houdt simpelweg in dat het etiket hierover onvoldoende uitsluitsel geeft.</li>
        <li>Deze website is geen medisch hulpmiddel en dient nooit ter vervanging van een veterinair eliminatiedieet of een onderzoek door een dierenarts.</li>
        <li>Hoewel we zeer zorgvuldig te werk gaan, blijven menselijke fouten bij het overnemen mogelijk. Ontdek je een fout? Meld dit dan via <a href="mailto:hondenvoervergelijker@paulzuiderduin.com">hondenvoervergelijker@paulzuiderduin.com</a>; we corrigeren het direct en vermelden de bron.</li>
      </ul>

      <div class="callout">
        <p><a class="cta" href="/">Naar de vergelijker</a> <a class="cta secondary" href="/hondenvoer-allergieen.html">Hondenvoer en allergieën</a></p>
      </div>`

  return shell({
    titel: 'Hoe wij hondenvoer vergelijken: bronnen, keuring en grenzen | Hondenvoervergelijker',
    beschrijving: 'Transparante methodiek: officiële fabrikantetiketten, letterlijke overname, woord-voor-woord keuring, wekelijkse bronbewaking en onafhankelijkheid van affiliate-links.',
    pad: '/hoe-wij-vergelijken.html',
    inhoud,
    jsonLd: [{ '@context': 'https://schema.org', ...organisatie }]
  })
}

/* ------------------------------------------------------------------ */
/* Vertrouwens- en juridische pagina's                                 */
/* ------------------------------------------------------------------ */

const overOnsPagina = () => {
  const inhoud = `      <p class="breadcrumb"><a href="/">Hondenvoervergelijker</a> › Over ons</p>
      <p class="eyebrow">Over de site</p>
      <h1>Over Hondenvoervergelijker</h1>
      <p class="lead">Hondenvoervergelijker is een onafhankelijke Nederlandse website die hondeneigenaren helpt om voeding te vinden die past bij een voedselallergie of intolerantie. Geen eigen winkel, geen sponsoring en geen medische claims: wel zo duidelijk mogelijk laten zien wat er werkelijk op het etiket staat.</p>
      <p class="updated">Bijgewerkt op ${datumNl(VANDAAG)}</p>

      <h2>Waarom deze site bestaat</h2>
      <p>Een hond met een voedselallergie heeft baat bij duidelijkheid. Toch staan op veel verpakkingen verzameltermen zoals “vlees en dierlijke bijproducten”, “granen” of “dierlijk vet”. Daaruit kun je niet afleiden welke dier- of plantsoort er werkelijk in zit. Wie een specifiek ingrediënt wil vermijden, heeft aan zo'n etiket weinig.</p>
      <p>Hondenvoervergelijker neemt de ingrediëntenlijsten van fabrikanten letterlijk over en beoordeelt per allergeen of de bron bij name genoemd is. Zo zie je in één oogopslag welke producten geschikt lijken, welke je moet controleren en welke je beter kunt overslaan.</p>

      <h2>Wat je op de site vindt</h2>
      <ul>
        <li>Een vergelijker met 1.478 recepten van 60 merken.</li>
        <li>Per allergeen een overzicht van producten die het ingrediënt niet noemen, zoals <a href="/hondenvoer-zonder-kip.html">hondenvoer zonder kip</a>.</li>
        <li>Per merk een pagina met alle recepten, ingrediënten en aandachtspunten.</li>
        <li>Uitleg over <a href="/hondenvoer-allergieen.html">hondenvoer en allergieën</a> en over <a href="/hoe-wij-vergelijken.html">hoe wij vergelijken</a>.</li>
      </ul>

      <h2>Hoe wij werken</h2>
      <p>De basis is altijd de officiële ingrediëntenlijst van de fabrikant. We nemen de tekst letterlijk over, inclusief percentages en volgorde. Ontbreekt een betrouwbare lijst, dan voegen we het product niet toe. Onbekende woorden worden handmatig ingedeeld. De bronpagina's worden wekelijks gecontroleerd; wijzigingen worden pas doorgevoerd nadat ze zijn nagelopen.</p>
      <p>Meer over onze werkwijze staat op de pagina <a href="/hoe-wij-vergelijken.html">Hoe wij hondenvoer vergelijken</a>.</p>

      <h2>Onafhankelijk en transparant</h2>
      <p>De site is gratis en bevat geen advertentienetwerken. Bij normaal gebruik plaatsen wij geen trackingcookies. Sommige verwijzingen naar webwinkels kunnen affiliate-links zijn; na een klik kan de winkel of het affiliate-netwerk een cookie plaatsen. Als je via zo'n link iets koopt, ontvangen wij een kleine commissie. Dat kost jou niets extra en heeft geen invloed op de producten die we tonen, de volgorde of de beoordeling.</p>
      <p>We zijn geen dierenarts en geven geen medisch advies. Bij jeuk, maag-darmklachten of een vermoeden van een allergie is een dierenarts de juiste persoon. Lees ook onze <a href="/disclaimer.html">disclaimer</a>.</p>

      <h2 id="redactie">Over de redactie</h2>
      <p>Hondenvoervergelijker wordt ontwikkeld en onderhouden door Paul Zuiderduin. Hij neemt de ingrediëntenlijsten over, beoordeelt onbekende woorden en bewaakt de bronpagina's van de fabrikanten. De site is bewust klein gehouden: geen advertentienetwerken, geen sponsored content en geen redactionele inmenging van merken of winkels.</p>
      <p>Heb je een fout gevonden of een vraag over de werkwijze? Neem contact op via de <a href="/contact.html">contactpagina</a>. We corrigeren bronfouten zo snel mogelijk en vermelden daarbij waar de juiste informatie vandaan komt.</p>

      <div class="callout">
        <p><a class="cta" href="/">Naar de vergelijker</a> <a class="cta secondary" href="/contact.html">Contact opnemen</a></p>
      </div>`

  return shell({
    titel: 'Over Hondenvoervergelijker | Onafhankelijk hondenvoer vergelijken',
    beschrijving: 'Hondenvoervergelijker is een onafhankelijke Nederlandse website die hondeneigenaren helpt bij het vinden van voeding zonder specifieke allergenen. Lees over de werkwijze, onafhankelijkheid en redactie.',
    pad: '/over-ons.html',
    inhoud,
    jsonLd: [
      {
        '@context': 'https://schema.org',
        '@type': 'Organization',
        '@id': `${SITE}/#organisatie`,
        name: 'Hondenvoervergelijker',
        url: `${SITE}/`,
        email: 'hondenvoervergelijker@paulzuiderduin.com',
        description: 'Onafhankelijke Nederlandse vergelijker van hondenvoeding op allergenen en ingrediënten.',
        founder: { '@type': 'Person', '@id': `${SITE}/over-ons.html#paul-zuiderduin` },
        areaServed: ['NL', 'BE'],
        knowsAbout: ['hondenvoeding', 'voedselallergieën bij honden', 'ingrediëntenlijsten', 'hondenvoer vergelijken']
      },
      {
        '@context': 'https://schema.org',
        '@type': 'Person',
        '@id': `${SITE}/over-ons.html#paul-zuiderduin`,
        name: 'Paul Zuiderduin',
        jobTitle: 'Redacteur en beheerder',
        worksFor: { '@type': 'Organization', '@id': `${SITE}/#organisatie` },
        url: `${SITE}/over-ons.html#redactie`,
        knowsAbout: ['hondenvoeding', 'voedselallergieën bij honden', 'ingrediëntenlijsten', 'etiketten lezen']
      },
      {
        '@context': 'https://schema.org',
        '@type': 'WebPage',
        name: 'Over Hondenvoervergelijker',
        url: `${SITE}/over-ons.html`,
        dateModified: VANDAAG,
        inLanguage: 'nl-NL',
        about: { '@type': 'Organization', '@id': `${SITE}/#organisatie` },
        mainEntity: { '@type': 'Person', '@id': `${SITE}/over-ons.html#paul-zuiderduin` }
      }
    ]
  })
}

const contactPagina = () => {
  const inhoud = `      <p class="breadcrumb"><a href="/">Hondenvoervergelijker</a> › Contact</p>
      <p class="eyebrow">Contact</p>
      <h1>Contact</h1>
      <p class="lead">Vragen over de vergelijker, een fout in een ingrediëntenlijst of een suggestie voor een product? Stuur een e-mail. We lezen alles en reageren zo snel als mogelijk.</p>
      <p class="updated">Bijgewerkt op ${datumNl(VANDAAG)}</p>

      <p><a class="cta" href="mailto:hondenvoervergelijker@paulzuiderduin.com">Mail naar hondenvoervergelijker@paulzuiderduin.com</a></p>

      <h2>Waarvoor kun je contact opnemen?</h2>
      <ul>
        <li>Een fout of verouderde informatie in een ingrediëntenlijst.</li>
        <li>Een product of merk dat nog ontbreekt in de vergelijker.</li>
        <li>Een vraag over de werkwijze of de bron van een product.</li>
        <li>Privacyvragen of een verzoek om gegevens te verwijderen.</li>
        <li>Pers, samenwerking of een andere zakelijke vraag.</li>
      </ul>

      <h2>Een fout melden</h2>
      <p>Vermeld het merk, de productnaam, de bronpagina en wat er volgens jou niet klopt. Een link of screenshot van de officiële fabrikantpagina helpt om het snel te controleren. We passen de tekst aan zodra de bron is gecontroleerd.</p>

      <h2>Reactietijd</h2>
      <p>We proberen binnen enkele werkdagen te reageren. Voor privacyverzoeken geldt een wettelijke termijn van maximaal 30 dagen.</p>

      <h2>Medische vragen</h2>
      <p>Hondenvoervergelijker is geen dierenarts. Voor medische vragen, een eliminatiedieet of een vermoeden van een allergie verwijzen we je naar je eigen dierenarts. Lees ook onze <a href="/disclaimer.html">disclaimer</a> en de <a href="/voorwaarden.html">gebruiksvoorwaarden</a>.</p>`

  return shell({
    titel: 'Contact | Hondenvoervergelijker',
    beschrijving: 'Neem contact op met Hondenvoervergelijker voor vragen, correcties, product suggesties, privacyverzoeken of samenwerkingen.',
    pad: '/contact.html',
    inhoud,
    jsonLd: [{ '@context': 'https://schema.org', ...organisatie }]
  })
}

const voorwaardenPagina = () => {
  const inhoud = `      <p class="breadcrumb"><a href="/">Hondenvoervergelijker</a> › Gebruiksvoorwaarden</p>
      <p class="eyebrow">Juridisch</p>
      <h1>Gebruiksvoorwaarden</h1>
      <p class="lead">Deze voorwaarden gelden voor het gebruik van Hondenvoervergelijker. Door de site te gebruiken, ga je hiermee akkoord.</p>
      <p class="updated">Laatst bijgewerkt op ${datumNl(VANDAAG)}</p>

      <h2>1. Over deze site</h2>
      <p>Hondenvoervergelijker is een informatieve website over hondenvoeding en allergenen. De site wordt beheerd door Paul Zuiderduin, Nederland. Contact verloopt via <a href="/contact.html">de contactpagina</a> of per e-mail op <a href="mailto:hondenvoervergelijker@paulzuiderduin.com">hondenvoervergelijker@paulzuiderduin.com</a>.</p>

      <h2>2. Gebruik van de site</h2>
      <p>Je mag de site gebruiken voor persoonlijke, niet-commerciële doeleinden. Het is niet toegestaan de site of de onderliggende data geautomatiseerd te kopiëren, te scrapen, commercieel te hergebruiken of te bewerken zonder voorafgaande schriftelijke toestemming.</p>

      <h2>3. Informatie en geen medisch advies</h2>
      <p>De site geeft informatieve vergelijkingen op basis van openbare ingrediëntenlijsten. De informatie is geen medisch advies, diagnose of behandelplan. Raadpleeg bij twijfel altijd een dierenarts. Zie ook onze <a href="/disclaimer.html">disclaimer</a>.</p>

      <h2>4. Affiliate-links</h2>
      <p>Sommige links naar webwinkels zijn affiliate-links. Als je via zo'n link een aankoop doet, ontvangen wij een kleine commissie. Dit kost jou niets extra. De selectie, sortering en beoordeling van producten zijn niet afhankelijk van deze commissie. Prijzen en beschikbaarheid worden bepaald door de betreffende winkel en kunnen wijzigen.</p>

      <h2>5. Intellectueel eigendom</h2>
      <p>De teksten, data, vormgeving en andere inhoud van deze site zijn eigendom van Hondenvoervergelijker, tenzij anders vermeld. Overname voor commerciële doeleinden is niet toegestaan zonder toestemming. Korte citaten met een duidelijke bronvermelding zijn toegestaan.</p>

      <h2>6. Aansprakelijkheid</h2>
      <p>We streven naar zorgvuldige en actuele informatie, maar kunnen niet garanderen dat alle gegevens compleet, juist of actueel zijn. Fabrikanten kunnen recepten wijzigen. Controleer daarom altijd de verpakking en de officiële informatie van de fabrikant. Voor zover wettelijk toegestaan, aanvaarden wij geen aansprakelijkheid voor schade die voortvloeit uit het gebruik van de site of uit beslissingen die op basis van de informatie worden genomen.</p>

      <h2>7. Wijzigingen</h2>
      <p>We kunnen deze voorwaarden aanpassen wanneer de site of de wetgeving verandert. De datum bovenaan deze pagina geeft de laatste wijziging aan. Blijf je de site gebruiken na een wijziging, dan geldt de nieuwe versie.</p>

      <h2>8. Toepasselijk recht</h2>
      <p>Op deze voorwaarden is Nederlands recht van toepassing. Geschillen worden voorgelegd aan de bevoegde rechter in Nederland, tenzij de wet anders voorschrijft.</p>`

  return shell({
    titel: 'Gebruiksvoorwaarden | Hondenvoervergelijker',
    beschrijving: 'De gebruiksvoorwaarden van Hondenvoervergelijker: gebruik van de site, informatie, affiliate-links, intellectueel eigendom en aansprakelijkheid.',
    pad: '/voorwaarden.html',
    inhoud,
    jsonLd: [{ '@context': 'https://schema.org', ...organisatie }]
  })
}

const disclaimerPagina = () => {
  const inhoud = `      <p class="breadcrumb"><a href="/">Hondenvoervergelijker</a> › Disclaimer</p>
      <p class="eyebrow">Juridisch</p>
      <h1>Disclaimer</h1>
      <p class="lead">Hondenvoervergelijker is een informatieve website. Deze disclaimer legt uit wat de site wel en niet doet, en waar je op moet letten bij het gebruik van de informatie.</p>
      <p class="updated">Laatst bijgewerkt op ${datumNl(VANDAAG)}</p>

      <h2>Geen medisch advies</h2>
      <p>Hondenvoervergelijker is geen dierenarts en geeft geen medisch advies. De site helpt je om ingrediëntenlijsten te vergelijken, maar kan een onderzoek, diagnose of behandeling door een dierenarts niet vervangen. Een voedselallergie of intolerantie stel je niet zelf vast. Overleg bij jeuk, huidklachten, maag-darmproblemen of een vermoeden van een allergie altijd met je dierenarts.</p>

      <h2>Informatie kan wijzigen</h2>
      <p>Fabrikanten kunnen recepten aanpassen zonder dat dit direct op onze site zichtbaar is. De ingrediëntenlijst op de verpakking is altijd leidend. Controleer voor aankoop de verpakking en, bij twijfel, de officiële productpagina van de fabrikant.</p>

      <h2>Geen garantie op volledigheid</h2>
      <p>We nemen etiketten zorgvuldig over en controleren bronnen periodiek, maar kunnen niet garanderen dat alle informatie compleet, juist of actueel is. Menselijke fouten blijven mogelijk. Ontdek je een fout? Meld het via de <a href="/contact.html">contactpagina</a>, dan corrigeren we het zo snel mogelijk.</p>

      <h2>Affiliate-links</h2>
      <p>Sommige links naar webwinkels zijn affiliate-links. Als je via zo'n link een aankoop doet, ontvangen wij een kleine commissie. Dit kost jou niets extra. De commissie heeft geen invloed op de producten die we tonen, de volgorde of de beoordeling.</p>

      <h2>Externe links</h2>
      <p>De site kan verwijzen naar websites van fabrikanten, winkels of andere organisaties. Wij hebben geen controle over de inhoud, het aanbod of het privacybeleid van die websites. Raadpleeg daarom altijd hun eigen voorwaarden en privacyverklaring.</p>

      <h2>Aansprakelijkheid</h2>
      <p>Het gebruik van de site en de informatie is voor eigen verantwoordelijkheid. Voor zover wettelijk toegestaan, aanvaarden wij geen aansprakelijkheid voor directe of indirecte schade die voortvloeit uit het gebruik van de site, uit onjuiste of verouderde informatie, of uit aankopen bij externe partijen.</p>

      <div class="callout">
        <p><a class="cta" href="/contact.html">Een fout melden</a> <a class="cta secondary" href="/hoe-wij-vergelijken.html">Hoe wij vergelijken</a></p>
      </div>`

  return shell({
    titel: 'Disclaimer | Hondenvoervergelijker',
    beschrijving: 'Disclaimer van Hondenvoervergelijker: geen medisch advies, informatie kan wijzigen, affiliate-links en aansprakelijkheid.',
    pad: '/disclaimer.html',
    inhoud,
    jsonLd: [{ '@context': 'https://schema.org', ...organisatie }]
  })
}

/* ------------------------------------------------------------------ */
/* Merkpagina's                                                        */
/* ------------------------------------------------------------------ */

async function haalTermen() {
  if (!SUPABASE_URL || !SUPABASE_KEY) return []
  const antwoord = await fetch(`${SUPABASE_URL}/rest/v1/ingredient_terms?select=term,kind,allergen_keys&order=term`, {
    headers: { apikey: SUPABASE_KEY, authorization: `Bearer ${SUPABASE_KEY}` }
  })
  if (!antwoord.ok) throw new Error(`HTTP ${antwoord.status}`)
  const rijen = await antwoord.json()
  return rijen.map((term) => ({ term: term.term, kind: term.kind, allergen_keys: Array.isArray(term.allergen_keys) ? term.allergen_keys.filter(Boolean) : [] }))
}

async function haalProducten() {
  if (!SUPABASE_URL || !SUPABASE_KEY) return null
  const basis = `${SUPABASE_URL}/rest/v1/products?select=id,brand,name,food_type,package_size,source_url,last_checked_at,source_status,recipe_versions(ingredients_text,imported_at,reviewed_at,recipe_ingredients(allergen_key,certainty))&published=eq.true&recipe_versions.is_current=eq.true&order=brand.asc,name.asc`
  const rijen = []
  for (let offset = 0; ; offset += 1000) {
    const antwoord = await fetch(`${basis}&limit=1000&offset=${offset}`, {
      headers: { apikey: SUPABASE_KEY, authorization: `Bearer ${SUPABASE_KEY}` }
    })
    if (!antwoord.ok) throw new Error(`HTTP ${antwoord.status}`)
    const deel = await antwoord.json()
    rijen.push(...deel)
    if (deel.length < 1000) break
  }
  return rijen
}

const verdictLabel = (transparant) => (transparant ? 'alle bronnen benoemd' : 'bron niet volledig benoemd')

function productRegel(product) {
  const versie = product.recipe_versions?.[0]
  const tekst = versie?.ingredients_text ?? ''
  const uitslag = assessLabel(tekst)
  const transparant = uitslag.hidden.length === 0 && uitslag.unknown.length === 0
  const bronnen = (uitslag.allergens ?? []).map((key) => ALLERGEN_LABELS[key] ?? key)
  const bronTekst = bronnen.length
    ? `Etiket noemt: ${bronnen.slice(0, 8).join(', ')}${bronnen.length > 8 ? ` en ${bronnen.length - 8} meer` : ''}`
    : 'Geen bekende allergeenbron in de lijst'
  const type = typeLabel(product.food_type)
  const maat = product.package_size ? ` · ${escapeHtml(product.package_size)}` : ''
  return `          <li>
            <span>
              <span class="name">${escapeHtml(product.name)}</span><br />
              <span class="meta">${escapeHtml(type)}${maat} · ${escapeHtml(bronTekst)}</span>
            </span>
            <span class="tag ${transparant ? 'ok' : 'check'}">${verdictLabel(transparant)}</span>
          </li>`
}

function merkPagina(brand, producten, buren = []) {
  const slugBrand = slug(brand)
  const laatste = producten.map((p) => p.last_checked_at).filter(Boolean).sort().at(-1)
  const controledatum = datumNl(laatste)
  const aantallen = producten.reduce((acc, p) => {
    acc[p.food_type] = (acc[p.food_type] ?? 0) + 1
    return acc
  }, {})
  const typeSamenvatting = FOOD_TYPES.filter(([key]) => aantallen[key]).map(([key, label]) => `${aantallen[key]} ${label.toLowerCase()}`).join(', ')
  const open = producten.filter((p) => {
    const tekst = p.recipe_versions?.[0]?.ingredients_text ?? ''
    const uitslag = assessLabel(tekst)
    return uitslag.hidden.length > 0 || uitslag.unknown.length > 0
  }).length

  // Welke onbenoemde termen komen bij dit merk het vaakst voor? Dat maakt de
  // pagina inhoudelijk verschillend per merk en helpt de lezer zoeken.
  const termen = new Map()
  for (const product of producten) {
    const tekst = product.recipe_versions?.[0]?.ingredients_text ?? ''
    for (const segment of markUncertainIngredients(tekst)) {
      if (!segment.uncertain) continue
      const woord = segment.text.trim().toLowerCase()
      if (!woord) continue
      termen.set(woord, (termen.get(woord) ?? 0) + 1)
    }
  }
  const alleTermen = [...termen.keys()]
  const topTermen = [...termen.entries()]
    .filter(([woord]) => !alleTermen.some((ander) => ander !== woord && ander.includes(woord)))
    .sort((a, b) => b[1] - a[1])
    .slice(0, 5)
  const termenBlok = topTermen.length
    ? `<h2>Vaak gebruikte onbenoemde termen bij ${escapeHtml(brand)}</h2>
      <p>Deze woorden komen voor in de ingrediëntenlijsten van ${escapeHtml(brand)} en noemen zelf geen dier- of plantbron. Daardoor blijven de allergenen die erachter kunnen zitten onbeslist tot de fabrikant uitsluitsel geeft.</p>
      <ul>
${topTermen.map(([woord, aantal]) => `        <li><strong>${escapeHtml(woord)}</strong> — in ${aantal} van de ${producten.length} recepten</li>`).join('\n')}
      </ul>`
    : `<h2>Benoemde bronnen bij ${escapeHtml(brand)}</h2>
      <p>De ingrediëntenlijsten van ${escapeHtml(brand)} noemen in deze dataset elke bron bij name; er staan geen onbenoemde verzameltermen in.</p>`

  const inhoud = `      <p class="breadcrumb"><a href="/">Hondenvoervergelijker</a> › <a href="/merken/">Merken</a> › ${escapeHtml(brand)}</p>
      <p class="eyebrow">Merk</p>
      <h1>${escapeHtml(brand)} hondenvoer: ingrediënten en allergenen</h1>
      <p class="lead">${producten.length} recept${producten.length === 1 ? '' : 'en'} van ${escapeHtml(brand)}${typeSamenvatting ? ` (${typeSamenvatting})` : ''}, met de letterlijke ingrediëntenlijst en de bronnen die het etiket noemt.${controledatum ? ` Laatst gecontroleerd op ${controledatum}.` : ''}</p>
      <p>
        <a class="cta" href="/?merk=${encodeURIComponent(brand)}">Vergelijk ${escapeHtml(brand)} op allergenen</a>
      </p>
      <div class="callout">
        <p>“Alle bronnen benoemd” betekent: bij elk ingrediënt staat waar het vandaan komt. “Bron niet volledig benoemd” betekent: er staat een verzamelterm in de lijst (zoals “dierlijk vet”, “gevogelte-eiwit” of “granen”) die een allergeen kan verbergen.${open ? ` Dat geldt voor ${open} van de ${producten.length} recepten.` : ` Alle ${producten.length} recepten noemen elke bron bij name.`}</p>
      </div>

      <h2>Alle recepten van ${escapeHtml(brand)}</h2>
      <ul class="product-list">
${producten.map(productRegel).join('\n')}
      </ul>

      ${termenBlok}

      <h2>Over deze merkpagina</h2>
      <p>De ingrediëntenlijsten komen van de officiële productpagina's van ${escapeHtml(brand)}. De vergelijker neemt de tekst letterlijk over en beoordeelt per allergeen of de bron bij name genoemd is. Kies in de vergelijker de allergenen van jouw hond om te zien welke recepten geschikt zijn, welke uitgesloten zijn en waar je het etiket moet controleren.</p>
      <p><a class="cta" href="/?merk=${encodeURIComponent(brand)}">Open ${escapeHtml(brand)} in de vergelijker</a> <a class="cta secondary" href="/hondenvoer-allergieen.html">Hoe lees je een etiket?</a></p>

      ${buren.length ? `<h2>Andere merken</h2>
      <ul>
${buren.map((buur) => `        <li><a href="/merken/${buur.slugBrand}.html">${escapeHtml(buur.brand)}</a> — ${buur.aantal} recept${buur.aantal === 1 ? '' : 'en'}</li>`).join('\n')}
      </ul>
      <p><a href="/merken/">Bekijk alle merken</a></p>` : ''}

      <p class="updated">Deze pagina wordt automatisch bijgewerkt wanneer de productdata verandert. Klopt er iets niet? Mail <a href="mailto:hondenvoervergelijker@paulzuiderduin.com">hondenvoervergelijker@paulzuiderduin.com</a>.</p>`

  const itemList = {
    '@context': 'https://schema.org',
    '@type': 'ItemList',
    name: `${brand} hondenvoer`,
    numberOfItems: producten.length,
    itemListElement: producten.slice(0, 50).map((p, index) => ({
      '@type': 'ListItem',
      position: index + 1,
      name: `${brand} — ${p.name} (${typeLabel(p.food_type).toLowerCase()})`
    }))
  }
  const breadcrumb = {
    '@context': 'https://schema.org',
    '@type': 'BreadcrumbList',
    itemListElement: [
      { '@type': 'ListItem', position: 1, name: 'Hondenvoervergelijker', item: `${SITE}/` },
      { '@type': 'ListItem', position: 2, name: 'Merken', item: `${SITE}/merken/` },
      { '@type': 'ListItem', position: 3, name: brand, item: `${SITE}/merken/${slugBrand}.html` }
    ]
  }

  return {
    pad: `/merken/${slugBrand}.html`,
    html: shell({
      titel: `${brand} hondenvoer: alle ingrediënten en allergenen | Hondenvoervergelijker`,
      beschrijving: `Alle ${producten.length} recepten van ${brand} met de letterlijke ingrediëntenlijst, voertype en de bronnen die het etiket noemt. Onafhankelijk gecontroleerd${controledatum ? ` op ${controledatum}` : ''}.`,
      pad: `/merken/${slugBrand}.html`,
      inhoud,
      jsonLd: [breadcrumb, itemList]
    })
  }
}

function merkenIndex(brands) {
  const regels = brands
    .map(({ brand, aantal, slugBrand }) => `          <li><a href="/merken/${slugBrand}.html">${escapeHtml(brand)}</a> <span class="meta">(${aantal} recept${aantal === 1 ? '' : 'en'})</span></li>`)
    .join('\n')

  const inhoud = `      <p class="breadcrumb"><a href="/">Hondenvoervergelijker</a> › Merken</p>
      <p class="eyebrow">Overzicht</p>
      <h1>Alle hondenvoermerken in de vergelijker</h1>
      <p class="lead">Ontdek ${brands.length} merken met in totaal ${brands.reduce((n, b) => n + b.aantal, 0)} recepten. Selecteer een merk om direct alle ingrediëntenlijsten en de bijbehorende allergeneninformatie per product te bekijken.</p>
      <div class="card">
        <ul class="product-list">
${regels}
        </ul>
      </div>
      <p><a class="cta" href="/">Vergelijk alle merken op allergenen</a></p>`

  return shell({
    titel: 'Alle hondenvoermerken met ingrediënten en allergenen | Hondenvoervergelijker',
    beschrijving: `Overzicht van ${brands.length} hondenvoermerken met ${brands.reduce((n, b) => n + b.aantal, 0)} recepten, ingrediëntenlijsten en allergeneninformatie.`,
    pad: '/merken/',
    inhoud,
    jsonLd: [{ '@context': 'https://schema.org', ...organisatie }]
  })
}

/* ------------------------------------------------------------------ */
/* Allergeenpagina's                                                   */
/* ------------------------------------------------------------------ */

const ALLERGEEN_KEUZE = [
  ['chicken', 'kip'],
  ['beef', 'rund'],
  ['lamb', 'lam'],
  ['turkey', 'kalkoen'],
  ['duck', 'eend'],
  ['fish', 'vis'],
  ['salmon', 'zalm'],
  ['wheat', 'tarwe'],
  ['grains', 'granen'],
  ['milk', 'melk'],
  ['egg', 'ei'],
  ['soy', 'soja'],
  ['corn', 'maïs'],
  ['rice', 'rijst'],
  ['potato', 'aardappel'],
  ['pea', 'erwt'],
  ['insect', 'insecten'],
  ['horse', 'paard']
]

const VOORBEELDEN = {
  chicken: '“kippenvet”, “gevogelte”, “bouillon” of “dierlijk eiwit”',
  beef: '“rundvet”, “dierlijk vet” of “bouillon”',
  lamb: '“lamsvet”, “dierlijk vet” of “bouillon”',
  turkey: '“gevogelte”, “gevogeltevet” of “bouillon”',
  duck: '“gevogelte”, “gevogeltevet” of “bouillon”',
  fish: '“vismeel”, “visolie” of “dierlijk vet”',
  salmon: '“visolie”, “vismeel” of “vis”',
  wheat: '“granen”, “tarwegluten” of “meel”',
  grains: '“granen”, “graanproducten” of “meel”',
  milk: '“zuivel”, “wei” of “melkpoeder”',
  egg: '“ei”, “eipoeder” of “eialbumine”',
  soy: '“plantaardige eiwitten”, “sojaolie” of “plantaardige olie”',
  corn: '“granen”, “maïsmeel” of “zetmeel”',
  rice: '“granen”, “rijstmeel” of “zetmeel”',
  potato: '“zetmeel”, “aardappeleiwit” of “plantaardige bijproducten”',
  pea: '“plantaardige eiwitten”, “erwteneiwit” of “plantaardige bijproducten”',
  insect: '“dierlijke eiwitten”, “insecten” of “bijproducten”',
  horse: '“dierlijk vet”, “bouillon” of “dierlijke bijproducten”'
}

function allergeenPagina(key, kort, producten) {
  const rijen = producten
    .map((product) => ({ product, match: productMatch(product, [key]) }))
    .filter(({ match }) => match.kind === 'suitable')
    .sort((a, b) =>
      a.product.brand.localeCompare(b.product.brand, 'nl', { sensitivity: 'base' }) ||
      a.product.name.localeCompare(b.product.name, 'nl', { sensitivity: 'base' })
    )

  if (rijen.length < 10) return null

  const laatste = rijen.map(({ product }) => product.last_checked_at).filter(Boolean).sort().at(-1)
  const pad = `/hondenvoer-zonder-${slug(kort)}.html`
  const voorbeeld = VOORBEELDEN[key] ?? '“dierlijk vet”, “granen” of “bijproducten”'
  const allergeenLabel = ALLERGEN_LABELS[key] ?? kort
  const allergeenKlein = allergeenLabel.toLowerCase()
  const merkenAantal = new Set(rijen.map(({ product }) => product.brand)).size
  const datum = laatste ? datumNl(laatste) : datumNl(VANDAAG)
  const faq = [
    {
      vraag: `Is hondenvoer zonder ${kort} altijd hypoallergeen?`,
      antwoord: `Nee. Deze pagina controleert alleen of het etiket ${allergeenKlein} noemt. Andere allergenen kunnen nog steeds in het product zitten. Of het voer geschikt is voor een eliminatiedieet, beoordeelt een dierenarts.`
    },
    {
      vraag: `Kan mijn hond toch reageren op voer zonder ${kort}?`,
      antwoord: `Ja, dat is mogelijk. Een reactie kan komen door een ander ingrediënt, kruisbesmetting in de fabriek of een gewijzigd recept. Controleer daarom altijd de verpakking en overleg bij klachten met je dierenarts.`
    },
    {
      vraag: `Hoe weet ik of ${allergeenKlein} toch in hondenvoer zit?`,
      antwoord: `Kijk op het etiket naar termen als ${voorbeeld}. Die noemen niet altijd de bron. Vraag bij twijfel de fabrikant om uitsluitsel.`
    },
    {
      vraag: `Zijn deze producten geschikt voor een eliminatiedieet?`,
      antwoord: `Deze lijst is een hulpmiddel, geen medisch advies. Een eliminatiedieet hoort onder begeleiding van een dierenarts. Gebruik de lijst om voor te sorteren, niet om zelf een diagnose te stellen.`
    }
  ]

  const lijst = rijen.map(({ product }) => {
    const versie = product.recipe_versions?.[0]
    const uitslag = assessLabel(versie?.ingredients_text ?? '')
    const bronnen = (uitslag.allergens ?? []).map((k) => ALLERGEN_LABELS[k] ?? k)
    const bronTekst = bronnen.length
      ? `Etiket noemt: ${bronnen.slice(0, 6).join(', ')}${bronnen.length > 6 ? ` en ${bronnen.length - 6} meer` : ''}`
      : 'Geen bekende allergeenbron in de lijst'
    const type = typeLabel(product.food_type)
    const maat = product.package_size ? ` · ${escapeHtml(product.package_size)}` : ''
    return `          <li>
            <span>
              <span class="name">${escapeHtml(product.name)}</span><br />
              <span class="meta"><a href="/merken/${slug(product.brand)}.html">${escapeHtml(product.brand)}</a> · ${escapeHtml(type)}${maat} · ${escapeHtml(bronTekst)}</span>
            </span>
            <span class="tag ok">${escapeHtml(ALLERGEN_LABELS[key] ?? kort)} niet genoemd</span>
          </li>`
  }).join('\n')

  const inhoud = `      <p class="breadcrumb"><a href="/">Hondenvoervergelijker</a> › <a href="/hondenvoer-zonder.html">Zonder allergeen</a> › ${escapeHtml(ALLERGEN_LABELS[key] ?? kort)}</p>
      <p class="eyebrow">Allergeen</p>
      <h1>Hondenvoer zonder ${escapeHtml(kort)}</h1>
      <p class="lead">Een onafhankelijk overzicht van hondenvoeding waarbij het etiket ${escapeHtml(allergeenKlein)} niet noemt.</p>

      <div class="answer-box">
        <h2>Kort antwoord: welk hondenvoer is geschikt zonder ${escapeHtml(kort)}?</h2>
        <p>${rijen.length} recepten van ${merkenAantal} merken noemen ${escapeHtml(allergeenKlein)} niet en bevatten geen onduidelijke term die ${escapeHtml(kort)} kan verbergen.${datum ? ` Laatst gecontroleerd op ${datum}.` : ''}</p>
        <p>Dit is een indicatie op basis van het etiket, geen medisch advies. Controleer altijd de verpakking.</p>
      </div>

      <p><a class="cta" href="/?allergeen=${encodeURIComponent(key)}">Vergelijk zelf zonder ${escapeHtml(kort)}</a></p>

      <div class="callout">
        <p><strong>Wat betekent dit?</strong> Deze producten noemen ${escapeHtml(kort)} nergens in de ingrediëntenlijst. Dat is geen garantie dat het product geschikt is voor jouw hond: een dierenarts beoordeelt dat. Controleer altijd de verpakking, want fabrikanten kunnen een recept aanpassen.</p>
      </div>

      <h2>Geschikte recepten zonder ${escapeHtml(kort)}</h2>
      <ul class="product-list">
${lijst}
      </ul>

      <h2>Waar let je op bij “zonder ${escapeHtml(kort)}”?</h2>
      <p>Een ingrediëntenlijst noemt niet altijd de bron. Woorden als ${voorbeeld} zeggen niet welke dier- of plantsoort erachter zit. Onze keuring markeert zulke woorden en laat het product alleen als “geschikt” zien als ${escapeHtml(kort)} daar aantoonbaar niet achter kan zitten.</p>
      <p>Let ook op kruisbesmetting in de fabriek en op snacks of beloningen naast de hoofdmaaltijd. Die staan niet in deze lijst.</p>

      <h2>Veelgestelde vragen over hondenvoer zonder ${escapeHtml(kort)}</h2>
      <div class="faq">
${faq.map(({ vraag, antwoord }) => `        <details><summary>${escapeHtml(vraag)}</summary><p>${escapeHtml(antwoord)}</p></details>`).join('\n')}
      </div>

      <h2>Andere allergenen</h2>
      <p class="related-allergens"><!-- ANDERE_ALLERGENEN --></p>
      <p><a href="/hondenvoer-zonder.html">Bekijk alle overzichten zonder een specifiek allergeen</a>, of lees <a href="/hondenvoer-allergieen.html">hoe je een etiket leest</a>.</p>
      <p class="cite"><strong>Citeer deze pagina:</strong> Hondenvoervergelijker, “Hondenvoer zonder ${escapeHtml(kort)}”, ${SITE}${pad}, geraadpleegd op ${datumNl(VANDAAG)}.${laatste ? ` Laatst gecontroleerd op ${datumNl(laatste)}.` : ''}</p>`

  return {
    pad,
    aantal: rijen.length,
    kort,
    key,
    html: shell({
      titel: `Hondenvoer zonder ${kort}: ${rijen.length} geschikte recepten | Hondenvoervergelijker`,
      beschrijving: `${rijen.length} hondenvoeders waarbij het etiket ${ALLERGEN_LABELS[key] ?? kort} niet noemt en geen onduidelijke term die ${kort} kan verbergen. Onafhankelijk gecontroleerd${laatste ? ` op ${datumNl(laatste)}` : ''}.`,
      pad,
      inhoud,
      jsonLd: [
        {
          '@context': 'https://schema.org',
          '@type': 'BreadcrumbList',
          itemListElement: [
            { '@type': 'ListItem', position: 1, name: 'Hondenvoervergelijker', item: `${SITE}/` },
            { '@type': 'ListItem', position: 2, name: 'Zonder allergeen', item: `${SITE}/hondenvoer-zonder.html` },
            { '@type': 'ListItem', position: 3, name: ALLERGEN_LABELS[key] ?? kort, item: `${SITE}${pad}` }
          ]
        },
        {
          '@context': 'https://schema.org',
          '@type': 'WebPage',
          name: `Hondenvoer zonder ${kort}`,
          url: `${SITE}${pad}`,
          dateModified: VANDAAG,
          inLanguage: 'nl-NL',
          isPartOf: { '@type': 'WebSite', name: 'Hondenvoervergelijker', url: `${SITE}/` },
          about: { '@type': 'Thing', name: `Hondenvoer zonder ${kort}` }
        },
        {
          '@context': 'https://schema.org',
          '@type': 'FAQPage',
          mainEntity: faq.map(({ vraag, antwoord }) => ({
            '@type': 'Question',
            name: vraag,
            acceptedAnswer: { '@type': 'Answer', text: antwoord }
          }))
        },
        {
          '@context': 'https://schema.org',
          '@type': 'ItemList',
          name: `Hondenvoer zonder ${kort}`,
          numberOfItems: rijen.length,
          itemListElement: rijen.slice(0, 50).map(({ product }, index) => ({
            '@type': 'ListItem',
            position: index + 1,
            name: `${product.brand} — ${product.name}`
          }))
        }
      ]
    })
  }
}

function zonderHub(paginas) {
  const regels = [...paginas]
    .map(({ pad, kort, aantal }) => `          <li><a href="${pad}">Hondenvoer zonder ${escapeHtml(kort)}</a> <span class="meta">(${aantal} recepten)</span></li>`)
    .join('\n')

  const inhoud = `      <p class="breadcrumb"><a href="/">Hondenvoervergelijker</a> › Zonder allergeen</p>
      <p class="eyebrow">Overzicht</p>
      <h1>Hondenvoer zonder een specifiek allergeen</h1>
      <p class="lead">Kies het ingrediënt dat je wilt vermijden. Per allergeen zie je hoeveel recepten het etiket dat ingrediënt niet noemt en waarbij geen onduidelijke term het kan verbergen.</p>
      <div class="card">
        <ul class="product-list">
${regels}
        </ul>
      </div>
      <p><a class="cta" href="/">Vergelijk op alle allergenen tegelijk</a></p>`

  return shell({
    titel: 'Hondenvoer zonder kip, rund, granen en meer | Hondenvoervergelijker',
    beschrijving: `Overzichten van hondenvoer zonder kip, rund, lam, vis, tarwe, granen, melk, ei, soja en meer. Onafhankelijk gecontroleerd op de officiële etiketten.`,
    pad: '/hondenvoer-zonder.html',
    inhoud,
    jsonLd: [{ '@context': 'https://schema.org', ...organisatie }]
  })
}

function bronlozeWoordenVoorOnderzoek(tekst, hidden) {
  const klein = tekst.toLowerCase()
  const uniek = [...new Set(hidden.map(({ word }) => word))]
    .filter((woord, _, alle) => !alle.some((ander) => ander.length > woord.length && ander.toLowerCase().includes(woord.toLowerCase())))
    .sort((eerste, tweede) => klein.indexOf(eerste.toLowerCase()) - klein.indexOf(tweede.toLowerCase()))
  const uit = []
  for (const woord of uniek) {
    const vorige = uit[uit.length - 1]
    if (vorige && klein.includes(`${vorige.toLowerCase()} ${woord.toLowerCase()}`)) uit[uit.length - 1] = `${vorige} ${woord}`
    else uit.push(woord)
  }
  return uit
}

function etikettenonderzoekPagina(producten, allergeenPaginas) {
  const totaal = producten.length
  const merken = new Set(producten.map(({ brand }) => brand).filter(Boolean)).size
  const laatste = producten.map(({ last_checked_at }) => last_checked_at).filter(Boolean).sort().at(-1)
  const uitslagen = producten.map((product) => assessLabel(product.recipe_versions?.[0]?.ingredients_text ?? ''))
  const metVerzamelterm = uitslagen.filter((uitslag) => uitslag.hidden.length > 0).length
  const metOnbekend = uitslagen.filter((uitslag) => uitslag.unknown.length > 0).length
  const volledig = uitslagen.filter((uitslag) => uitslag.hidden.length === 0 && uitslag.unknown.length === 0).length
  const percentage = totaal ? Math.round((metVerzamelterm / totaal) * 100) : 0
  const percentageVolledig = totaal ? Math.round((volledig / totaal) * 100) : 0

  const termen = new Map()
  for (const [index, uitslag] of uitslagen.entries()) {
    const tekst = producten[index].recipe_versions?.[0]?.ingredients_text ?? ''
    for (const woord of new Set(bronlozeWoordenVoorOnderzoek(tekst, uitslag.hidden))) {
      termen.set(woord, (termen.get(woord) ?? 0) + 1)
    }
  }
  const topTermen = [...termen.entries()].sort((a, b) => b[1] - a[1]).slice(0, 12)
  const termRijen = topTermen.map(([term, aantal]) => `            <tr><td>${escapeHtml(term)}</td><td>${aantal}</td><td>${Math.round((aantal / totaal) * 100)}%</td></tr>`).join('\n')

  const topAllergenen = [...allergeenPaginas].sort((a, b) => b.aantal - a.aantal).slice(0, 10)
  const allergeenRijen = topAllergenen.map(({ pad, kort, aantal }) => `            <tr><td><a href="${pad}">Zonder ${escapeHtml(kort)}</a></td><td>${aantal}</td></tr>`).join('\n')

  const inhoud = `      <p class="breadcrumb"><a href="/">Hondenvoervergelijker</a> › Etikettenonderzoek</p>
      <p class="eyebrow">Onderzoek</p>
      <h1>Hoe vaak verbergen hondenvoeretiketten de eiwitbron?</h1>
      <p class="lead">Een analyse van ${totaal} recepten van ${merken} merken. We keken hoe vaak een etiket een dier- of plantbron niet bij name noemt en dus een verzamelterm gebruikt die voor een allergische hond relevant kan zijn.</p>
      <p class="updated">Bijgewerkt op ${datumNl(VANDAAG)}${laatste ? ` · laatste broncontrole ${datumNl(laatste)}` : ''}</p>

      <div class="stat-grid">
        <div class="stat-card"><strong>${totaal}</strong><span>recepten</span></div>
        <div class="stat-card"><strong>${merken}</strong><span>merken</span></div>
        <div class="stat-card"><strong>${percentage}%</strong><span>met minstens één verzamelterm</span></div>
        <div class="stat-card"><strong>${allergeenPaginas.length}</strong><span>allergeenoverzichten</span></div>
      </div>

      <h2>Waarom dit onderzoek?</h2>
      <p>Een hond met een voedselallergie heeft baat bij een etiket dat precies zegt waar elk ingrediënt vandaan komt. In de praktijk staan er vaak termen als “vlees en dierlijke bijproducten”, “granen” of “dierlijk vet”. Die termen zeggen niet welke dier- of plantsoort erachter zit. Voor iemand die één specifiek ingrediënt wil vermijden, is dat een groot verschil.</p>

      <h2>Hoe vaak staat er een verzamelterm?</h2>
      <p>In <strong>${metVerzamelterm} van de ${totaal} recepten</strong> (${percentage}%) staat minstens één term die de bron niet bij name noemt. Bij <strong>${volledig} recepten</strong> (${percentageVolledig}%) staat geen verzamelterm en geen woord dat de keuring niet kent.</p>
      <p>Bij ${metOnbekend} recepten staan woorden die de keuring niet kent. Die woorden worden handmatig beoordeeld; ze kunnen een extra onzekerheid vormen bovenop de verzameltermen.</p>

      <h2>Welke termen komen het vaakst voor?</h2>
      <table>
        <thead><tr><th>Term</th><th>Recepten</th><th>Aandeel</th></tr></thead>
        <tbody>
${termRijen}
        </tbody>
      </table>

      <h2>Welke allergenen hebben de meeste geschikte recepten?</h2>
      <p>Deze tabel laat zien hoeveel recepten per allergeen als “geschikt” worden beoordeeld: het etiket noemt dat ingrediënt niet en bevat geen onduidelijke term die het kan verbergen.</p>
      <table>
        <thead><tr><th>Allergeen</th><th>Geschikte recepten</th></tr></thead>
        <tbody>
${allergeenRijen}
        </tbody>
      </table>

      <h2>Wat betekent dit voor honden met een allergie?</h2>
      <p>Een verzamelterm is geen bewijs dat een product onveilig is. Het betekent wel dat het etiket onvoldoende uitsluitsel geeft. Onze vergelijker zet zo'n product daarom niet blind op “Geschikt”, maar op “Controleer etiket/fabrikant”. Alleen de fabrikant of een aanvullend onderzoek kan duidelijkheid geven over de werkelijke bron.</p>
      <div class="callout warn">
        <p><strong>Geen medisch advies.</strong> Dit onderzoek is een momentopname van openbare etiketten. Een voedselallergie stel je niet zelf vast. Overleg bij jeuk, huidklachten, maag-darmproblemen of een vermoeden van een allergie altijd met een dierenarts.</p>
      </div>

      <h2>Hoe wij meten</h2>
      <p>We nemen de officiële ingrediëntenlijsten van fabrikanten letterlijk over. Per recept beoordeelt de keuring of een term de dier- of plantbron bij name noemt. Woorden zoals “dierlijk vet”, “granen”, “bouillon” en “plantaardige bijproducten” worden als verzamelterm geteld wanneer ze de specifieke bron niet noemen. De volledige methode staat op <a href="/hoe-wij-vergelijken.html">Hoe wij hondenvoer vergelijken</a>.</p>

      <p class="cite"><strong>Citeer dit onderzoek:</strong> Hondenvoervergelijker, “Hoe vaak verbergen hondenvoeretiketten de eiwitbron?”, ${SITE}/etikettenonderzoek.html, geraadpleegd op ${datumNl(VANDAAG)}. Steekproef: ${totaal} recepten van ${merken} merken${laatste ? `; laatste broncontrole ${datumNl(laatste)}` : ''}.</p>

      <div class="callout">
        <p><a class="cta" href="/">Bekijk de vergelijker</a> <a class="cta secondary" href="/hondenvoer-zonder.html">Alle allergenen</a></p>
      </div>`

  return shell({
    titel: 'Hoe vaak verbergen hondenvoeretiketten de eiwitbron? | Hondenvoervergelijker',
    beschrijving: `Onderzoek naar ${totaal} hondenvoerrecepten: ${percentage}% bevat minstens één verzamelterm die de dier- of plantbron niet noemt. Bekijk de cijfers en de methode.`,
    pad: '/etikettenonderzoek.html',
    inhoud,
    jsonLd: [
      {
        '@context': 'https://schema.org',
        '@type': 'Article',
        headline: 'Hoe vaak verbergen hondenvoeretiketten de eiwitbron?',
        description: `Analyse van ${totaal} hondenvoerrecepten van ${merken} merken op verzameltermen en allergenen.`,
        datePublished: VANDAAG,
        dateModified: VANDAAG,
        inLanguage: 'nl-NL',
        author: { '@type': 'Person', name: 'Paul Zuiderduin', url: `${SITE}/over-ons.html#redactie` },
        publisher: { '@type': 'Organization', name: 'Hondenvoervergelijker', url: `${SITE}/` },
        mainEntityOfPage: `${SITE}/etikettenonderzoek.html`
      },
      {
        '@context': 'https://schema.org',
        '@type': 'Dataset',
        name: 'Hondenvoervergelijker: etikettenonderzoek',
        description: `Geaggregeerde analyse van ${totaal} hondenvoerrecepten op verzameltermen en allergenen.`,
        creator: { '@type': 'Organization', name: 'Hondenvoervergelijker', url: `${SITE}/` },
        dateModified: VANDAAG,
        inLanguage: 'nl-NL',
        isAccessibleForFree: true,
        license: 'https://creativecommons.org/licenses/by-nc/4.0/'
      }
    ]
  })
}

function llmsTxt(heeftOnderzoek) {
  const basis = readFileSync(join(WORTEL, 'public', 'llms.txt'), 'utf8')
    .replace(/Laatst bijgewerkt: .*?\./, `Laatst bijgewerkt: ${datumNl(VANDAAG)}.`)
  if (heeftOnderzoek) return basis
  return basis.replace(/- \[Etikettenonderzoek\].*\n/, '')
}

/* ------------------------------------------------------------------ */
/* Uitvoeren                                                           */
/* ------------------------------------------------------------------ */

mkdirSync(DIST, { recursive: true })

// 1. Inhoudspagina's (werken altijd, ook zonder database).
writeFileSync(join(DIST, 'hondenvoer-allergieen.html'), allergiePagina())
writeFileSync(join(DIST, 'hoe-wij-vergelijken.html'), methodePagina())
writeFileSync(join(DIST, 'over-ons.html'), overOnsPagina())
writeFileSync(join(DIST, 'contact.html'), contactPagina())
writeFileSync(join(DIST, 'voorwaarden.html'), voorwaardenPagina())
writeFileSync(join(DIST, 'disclaimer.html'), disclaimerPagina())
console.log('Geschreven: hondenvoer-allergieen.html, hoe-wij-vergelijken.html, over-ons.html, contact.html, voorwaarden.html, disclaimer.html')

// 2. Merkpagina's (fail-soft).
const adressen = [
  { loc: `${SITE}/`, prioriteit: '1.0' },
  { loc: `${SITE}/merken/`, prioriteit: '0.9' },
  { loc: `${SITE}/hondenvoer-allergieen.html`, prioriteit: '0.8' },
  { loc: `${SITE}/hoe-wij-vergelijken.html`, prioriteit: '0.7' },
  { loc: `${SITE}/over-ons.html`, prioriteit: '0.5' },
  { loc: `${SITE}/contact.html`, prioriteit: '0.4' },
  { loc: `${SITE}/voorwaarden.html`, prioriteit: '0.3' },
  { loc: `${SITE}/disclaimer.html`, prioriteit: '0.3' },
  { loc: `${SITE}/privacybeleid.html`, prioriteit: '0.3' }
]

let producten = null
try {
  producten = await haalProducten()
} catch (fout) {
  console.log(`Let op: productdata niet opgehaald (${fout.message}). Merkpagina's overgeslagen.`)
}

if (producten?.length) {
  const perMerk = new Map()
  for (const product of producten) {
    if (!product.brand) continue
    if (!perMerk.has(product.brand)) perMerk.set(product.brand, [])
    perMerk.get(product.brand).push(product)
  }

  const merken = [...perMerk.entries()]
    .map(([brand, lijst]) => ({ brand, aantal: lijst.length, slugBrand: slug(brand), lijst }))
    .sort((a, b) => a.brand.localeCompare(b.brand, 'nl', { sensitivity: 'base' }))

  mkdirSync(join(DIST, 'merken'), { recursive: true })
  merken.forEach((merk, index) => {
    const buren = Array.from({ length: Math.min(8, merken.length - 1) }, (_, offset) => merken[(index + offset + 1) % merken.length])
    const { pad, html } = merkPagina(merk.brand, merk.lijst, buren)
    writeFileSync(join(DIST, pad.replace(/^\//, '')), html)
    adressen.push({ loc: `${SITE}${pad}`, prioriteit: '0.7' })
  })
  writeFileSync(join(DIST, 'merken', 'index.html'), merkenIndex(merken))
  console.log(`Geschreven: ${merken.length} merkpagina's en /merken/`)

  // Allergeenpagina's gebruiken dezelfde keuring als de site, inclusief de
  // woordenlijst uit de database. Zonder die lijst zouden ze strenger zijn dan
  // de site en onterecht producten missen.
  let termen = []
  try {
    termen = await haalTermen()
  } catch (fout) {
    console.log(`Let op: woordenlijst niet opgehaald (${fout.message}); allergeenpagina's gebruiken de ingebouwde woorden.`)
  }
  setCustomTerms(termen)

  const allergeenPaginas = []
  for (const [key, kort] of ALLERGEEN_KEUZE) {
    const pagina = allergeenPagina(key, kort, producten)
    if (!pagina) continue
    adressen.push({ loc: `${SITE}${pagina.pad}`, prioriteit: '0.8' })
    allergeenPaginas.push(pagina)
  }
  // Pas na de eerste ronde weten we welke pagina's echt bestaan. Zo linken we
  // alleen naar pagina's met genoeg geschikte recepten en nooit naar een 404.
  // De links schuiven per pagina door, zodat elke pagina ook links van andere
  // pagina's ontvangt in plaats van alleen de grootste acht.
  const gesorteerd = [...allergeenPaginas].sort((eerste, tweede) => tweede.aantal - eerste.aantal || eerste.kort.localeCompare(tweede.kort, 'nl'))
  for (const pagina of allergeenPaginas) {
    const start = gesorteerd.findIndex(({ key }) => key === pagina.key)
    const andere = Array.from({ length: Math.min(8, gesorteerd.length - 1) }, (_, nummer) => gesorteerd[(start + 1 + nummer) % gesorteerd.length])
      .map(({ pad, kort }) => `<a href="${pad}">Zonder ${escapeHtml(kort)}</a>`)
      .join(' · ')
    const html = pagina.html.replace('<!-- ANDERE_ALLERGENEN -->', andere)
    writeFileSync(join(DIST, pagina.pad.replace(/^\//, '')), html)
  }
  if (allergeenPaginas.length) {
    writeFileSync(join(DIST, 'hondenvoer-zonder.html'), zonderHub(allergeenPaginas))
    adressen.push({ loc: `${SITE}/hondenvoer-zonder.html`, prioriteit: '0.9' })
    console.log(`Geschreven: ${allergeenPaginas.length} allergeenpagina's en /hondenvoer-zonder.html`)

    const onderzoek = etikettenonderzoekPagina(producten, allergeenPaginas)
    writeFileSync(join(DIST, 'etikettenonderzoek.html'), onderzoek)
    adressen.push({ loc: `${SITE}/etikettenonderzoek.html`, prioriteit: '0.6' })
    console.log("Geschreven: etikettenonderzoek.html")
  }
} else if (existsSync(join(WORTEL, 'public', 'sitemap.xml'))) {
  const basis = readFileSync(join(WORTEL, 'public', 'sitemap.xml'), 'utf8')
  for (const treffer of basis.matchAll(/<loc>\s*([^<\s]+)\s*<\/loc>/g)) {
    if (!adressen.some((rij) => rij.loc === treffer[1])) adressen.push({ loc: treffer[1], prioriteit: '0.5' })
  }
}

// 3. Sitemap.
const heeftOnderzoek = existsSync(join(DIST, 'etikettenonderzoek.html'))
writeFileSync(join(DIST, 'llms.txt'), llmsTxt(heeftOnderzoek))

const sitemap = [
  '<?xml version="1.0" encoding="UTF-8"?>',
  '<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">',
  ...adressen.map(({ loc, prioriteit }) => `  <url><loc>${loc}</loc><lastmod>${VANDAAG}</lastmod><priority>${prioriteit}</priority></url>`),
  '</urlset>',
  ''
].join('\n')
writeFileSync(join(DIST, 'sitemap.xml'), sitemap)
console.log(`Sitemap bijgewerkt: ${adressen.length} adressen.`)
