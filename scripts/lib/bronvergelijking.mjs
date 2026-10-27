// Gedeelde hulpmiddelen voor de bronbewaking (fetch en browser).
// Hier staan alleen pure functies en configuratie, zodat beide scripts
// gegarandeerd dezelfde vergelijking en dezelfde uitsluitingen gebruiken.

export const UA = 'HondenvoervergelijkerBot/0.1 (contact: hondenvoervergelijker@paulzuiderduin.com)'

// Sites die geautomatiseerde verzoeken blokkeren of vervormen. De fetch-controle
// slaat ze over; de browsercontrole pakt ze op.
export const BROWSER_ONLY_HOSTS = new Set([
  'www.prinspetfoods.nl',
  'prinspetfoods.nl',
  'www.smolke.nl',
  'smolke.nl',
  'www.yarrah.com',
  'yarrah.com',
  'www.edgardcooper.com',
  'edgardcooper.com',
  'wooof.com',
  'www.wooof.com',
  'wooof.nl',
  'www.wooof.nl'
])

const ENTITEITEN = {
  amp: '&', lt: '<', gt: '>', quot: '"', apos: "'", nbsp: ' ', euro: '€', hellip: '…',
  ndash: '–', mdash: '—', lsquo: '‘', rsquo: '’', ldquo: '“', rdquo: '”', middot: '·',
  bull: '•', deg: '°', plusmn: '±', frac12: '½', frac14: '¼', frac34: '¾', times: '×',
  aacute: 'á', agrave: 'à', acirc: 'â', auml: 'ä', aring: 'å', atilde: 'ã', aelig: 'æ',
  ccedil: 'ç', eacute: 'é', egrave: 'è', ecirc: 'ê', euml: 'ë', iacute: 'í', igrave: 'ì',
  icirc: 'î', iuml: 'ï', ntilde: 'ñ', oacute: 'ó', ograve: 'ò', ocirc: 'ô', ouml: 'ö',
  oslash: 'ø', otilde: 'õ', ssharp: 'ß', szlig: 'ß', uacute: 'ú', ugrave: 'ù', ucirc: 'û', uuml: 'ü',
  yacute: 'ý', yuml: 'ÿ', oelig: 'œ', sup2: '²', sup3: '³', reset: ''
}

export function decodeer(tekst) {
  return String(tekst).replace(/&(#\d+|#x[0-9a-f]+|[a-z][a-z0-9]*);/gi, (heel, code) => {
    const klein = code.toLowerCase()
    if (klein.startsWith('#x')) return String.fromCodePoint(parseInt(klein.slice(2), 16))
    if (klein.startsWith('#')) return String.fromCodePoint(Number(klein.slice(1)))
    return Object.prototype.hasOwnProperty.call(ENTITEITEN, klein) ? ENTITEITEN[klein] : heel
  })
}

export function htmlNaarTekst(html) {
  return decodeer(
    String(html)
      .replace(/<(script|style|noscript|svg|template)[\s\S]*?<\/\1>/gi, ' ')
      .replace(/<!--[\s\S]*?-->/g, ' ')
      .replace(/<br\s*\/?>/gi, ' ')
      .replace(/<\/(span|strong|em|b|i|a|sup|sub|small)>/gi, '')
      .replace(/<\/(p|div|li|td|th|dd|dt|h[1-6]|tr|section|article)>/gi, ' ')
      .replace(/<[^>]*>/g, ' ')
  )
}

export function vergelijkbaar(tekst) {
  return decodeer(htmlNaarTekst(tekst))
    .normalize('NFC')
    .toLowerCase()
    .replace(/[’‘`´]/g, "'")
    .replace(/[“”]/g, '"')
    .replace(/[–—]/g, '-')
    .replace(/\s+/g, ' ')
    .replace(/\s+([,;:.])/g, '$1')
    .replace(/\s+%/g, '%')
    .replace(/%\)\s*%\)/g, '%)')
    .replace(/\(\s+/g, '(')
    .replace(/\s+\)/g, ')')
    .trim()
}

export function vergelijkbaarKern(tekst) {
  const zonderVoetnoten = String(tekst)
    .split(/\r?\n/)
    .filter((regel) => !/^\s*[\^*]/.test(regel))
    .join('\n')
  return vergelijkbaar(zonderVoetnoten)
    .replace(/\s+\*[^*]{0,240}$/, '')
    .trim()
}

export function vergelijkbaarMetPaginadata(html) {
  return decodeer(
    String(html)
      .replace(/<style[\s\S]*?<\/style>/gi, ' ')
      .replace(/<!--[\s\S]*?-->/g, ' ')
      .replace(/\\u([0-9a-f]{4})/gi, (heel, code) => String.fromCodePoint(parseInt(code, 16)))
      .replace(/\\n|\\r|\\t/g, ' ')
      .replace(/\\"/g, '"')
      .replace(/\\\//g, '/')
      .replace(/<[^>]*>/g, ' ')
  )
    .normalize('NFC')
    .toLowerCase()
    .replace(/[’‘`´]/g, "'")
    .replace(/[“”]/g, '"')
    .replace(/[–—]/g, '-')
    .replace(/\s+/g, ' ')
    .replace(/\s+([,;:.])/g, '$1')
    .replace(/\s+%/g, '%')
    .replace(/%\)\s*%\)/g, '%)')
    .replace(/\(\s+/g, '(')
    .replace(/\s+\)/g, ')')
    .trim()
}
