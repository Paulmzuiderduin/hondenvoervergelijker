// Kleine, bewuste Markdown-renderer voor de blog. Geen algemene parser: de
// inhoud is van de redactie en gebruikt een vaste, overzichtelijke subset.
//
// Ondersteund: frontmatter, koppen (## t/m ####), paragrafen, lijsten,
// blockquotes, tabellen, horizontale lijnen, code, vet, cursief, links en
// afbeeldingen. Onbekende HTML wordt geëscaped; de content is geen invoerveld.
import { slugify } from '../../src/lib/productUrl.js'

function leesWaarde(ruw) {
  const waarde = String(ruw ?? '').trim()
  if (!waarde) return ''
  if ((waarde.startsWith('"') && waarde.endsWith('"')) || (waarde.startsWith("'") && waarde.endsWith("'"))) {
    return waarde.slice(1, -1).replace(/\\"/g, '"').replace(/\\'/g, "'")
  }
  if (waarde === 'true') return true
  if (waarde === 'false') return false
  if (waarde === 'null') return null
  if (waarde.startsWith('[') && waarde.endsWith(']')) {
    return waarde.slice(1, -1).split(',').map((deel) => leesWaarde(deel)).filter((deel) => deel !== '')
  }
  return waarde
}

export function parseFrontmatter(bron) {
  const tekst = String(bron ?? '').replace(/^\uFEFF/, '').replace(/\r\n/g, '\n')
  if (!tekst.startsWith('---\n')) return { data: {}, body: tekst }

  const einde = tekst.indexOf('\n---', 4)
  if (einde === -1) return { data: {}, body: tekst }

  const ruw = tekst.slice(4, einde)
  const body = tekst.slice(einde + 4).replace(/^\n+/, '')
  const data = {}
  let huidigeSleutel = ''

  for (const regel of ruw.split('\n')) {
    if (!regel.trim() || regel.trim().startsWith('#')) continue

    const sleutel = regel.match(/^([A-Za-z0-9_-]+):\s*(.*)$/)
    if (sleutel) {
      huidigeSleutel = sleutel[1]
      const waarde = sleutel[2]
      data[huidigeSleutel] = waarde === '' ? [] : leesWaarde(waarde)
      continue
    }

    const item = regel.match(/^\s*-\s+(.*)$/)
    if (item && huidigeSleutel) {
      if (!Array.isArray(data[huidigeSleutel])) data[huidigeSleutel] = []
      data[huidigeSleutel].push(leesWaarde(item[1]))
    }
  }

  return { data, body }
}

const escapeHtml = (waarde = '') => String(waarde)
  .replace(/&/g, '&amp;')
  .replace(/</g, '&lt;')
  .replace(/>/g, '&gt;')
  .replace(/"/g, '&quot;')
  .replace(/'/g, '&#39;')

function veiligeUrl(waarde) {
  const url = String(waarde ?? '').trim()
  if (!url) return ''
  if (/^(https?:\/\/|\/|#|mailto:)/i.test(url)) return url
  return ''
}

function zonderOpmaak(tekst) {
  return String(tekst)
    .replace(/!\[([^\]]*)\]\([^)]*\)/g, '$1')
    .replace(/\[([^\]]+)\]\([^)]*\)/g, '$1')
    .replace(/`([^`]+)`/g, '$1')
    .replace(/\*\*([^*]+)\*\*/g, '$1')
    .replace(/\*([^*]+)\*/g, '$1')
    .trim()
}

function renderInline(ruw) {
  const code = []
  let tekst = String(ruw ?? '').replace(/`([^`]+)`/g, (_, inhoud) => {
    code.push(inhoud)
    return `\u0000CODE${code.length - 1}\u0000`
  })

  let html = escapeHtml(tekst)

  html = html.replace(/!\[([^\]]*)\]\(([^)\s]+)\)/g, (_, alt, src) => {
    const url = veiligeUrl(src)
    return url ? `<img src="${escapeHtml(url)}" alt="${escapeHtml(alt)}" loading="lazy" />` : escapeHtml(alt)
  })

  html = html.replace(/\[([^\]]+)\]\(([^)\s]+)\)/g, (_, label, href) => {
    const url = veiligeUrl(href)
    if (!url) return label
    const extern = /^https?:\/\//i.test(url)
    return `<a href="${escapeHtml(url)}"${extern ? ' target="_blank" rel="noopener noreferrer"' : ''}>${label}</a>`
  })

  html = html.replace(/\*\*([^*]+)\*\*/g, '<strong>$1</strong>')
  html = html.replace(/(^|[^*])\*([^*]+)\*/g, '$1<em>$2</em>')

  html = html.replace(/\u0000CODE(\d+)\u0000/g, (_, index) => `<code>${escapeHtml(code[Number(index)] ?? '')}</code>`)
  return html
}

function isTabelStart(regel, volgende) {
  if (!/^\s*\|/.test(regel)) return false
  if (!volgende || !/^\s*\|?[\s:|-]+\|[\s:|-]*$/.test(volgende)) return false
  return volgende.includes('-')
}

function tabelNaarHtml(kop, scheiding, rijen) {
  const cellen = (regel) => regel.trim().replace(/^\|/, '').replace(/\|$/, '').split('|').map((cel) => renderInline(cel.trim()))
  const koppen = cellen(kop).map((cel) => `<th>${cel}</th>`).join('')
  const body = rijen.map((regel) => `<tr>${cellen(regel).map((cel) => `<td>${cel}</td>`).join('')}</tr>`).join('\n')
  return `<div class="table-wrap"><table><thead><tr>${koppen}</tr></thead><tbody>${body}</tbody></table></div>`
}

export function renderMarkdown(markdown) {
  const regels = String(markdown ?? '').replace(/\r\n/g, '\n').split('\n')
  const uit = []
  const kopIds = new Map()
  let i = 0

  const isBlokStart = (regel, volgende) => /^\s*$/.test(regel) ||
    /^#{1,4}\s+/.test(regel) ||
    /^```/.test(regel) ||
    /^>\s?/.test(regel) ||
    /^\s*[-*]\s+/.test(regel) ||
    /^\s*\d+\.\s+/.test(regel) ||
    /^---+\s*$/.test(regel) ||
    isTabelStart(regel, volgende)

  while (i < regels.length) {
    const regel = regels[i]
    const volgende = regels[i + 1]

    if (!regel.trim()) {
      i += 1
      continue
    }

    const codeStart = regel.match(/^```(\w*)\s*$/)
    if (codeStart) {
      const taal = codeStart[1]
      const inhoud = []
      i += 1
      while (i < regels.length && !/^```\s*$/.test(regels[i])) {
        inhoud.push(regels[i])
        i += 1
      }
      i += 1
      uit.push(`<pre><code${taal ? ` class="language-${escapeHtml(taal)}"` : ''}>${escapeHtml(inhoud.join('\n'))}</code></pre>`)
      continue
    }

    const kop = regel.match(/^(#{2,4})\s+(.+)$/)
    if (kop) {
      const niveau = kop[1].length
      const tekst = zonderOpmaak(kop[2])
      const basis = slugify(tekst) || 'sectie'
      const aantal = (kopIds.get(basis) ?? 0) + 1
      kopIds.set(basis, aantal)
      const id = aantal === 1 ? basis : `${basis}-${aantal}`
      uit.push(`<h${niveau} id="${escapeHtml(id)}">${renderInline(kop[2])}</h${niveau}>`)
      i += 1
      continue
    }

    if (/^---+\s*$/.test(regel)) {
      uit.push('<hr />')
      i += 1
      continue
    }

    if (/^>\s?/.test(regel)) {
      const delen = []
      while (i < regels.length && /^>\s?/.test(regels[i])) {
        delen.push(regels[i].replace(/^>\s?/, ''))
        i += 1
      }
      uit.push(`<blockquote><p>${renderInline(delen.join(' '))}</p></blockquote>`)
      continue
    }

    if (isTabelStart(regel, volgende)) {
      const kop = regel
      const scheiding = volgende
      const rijen = []
      i += 2
      while (i < regels.length && /^\s*\|/.test(regels[i])) {
        rijen.push(regels[i])
        i += 1
      }
      uit.push(tabelNaarHtml(kop, scheiding, rijen))
      continue
    }

    if (/^\s*[-*]\s+/.test(regel)) {
      const items = []
      while (i < regels.length && /^\s*[-*]\s+/.test(regels[i])) {
        items.push(regels[i].replace(/^\s*[-*]\s+/, ''))
        i += 1
      }
      uit.push(`<ul>${items.map((item) => `<li>${renderInline(item)}</li>`).join('')}</ul>`)
      continue
    }

    if (/^\s*\d+\.\s+/.test(regel)) {
      const items = []
      while (i < regels.length && /^\s*\d+\.\s+/.test(regels[i])) {
        items.push(regels[i].replace(/^\s*\d+\.\s+/, ''))
        i += 1
      }
      uit.push(`<ol>${items.map((item) => `<li>${renderInline(item)}</li>`).join('')}</ol>`)
      continue
    }

    const paragraaf = [regel.trim()]
    i += 1
    while (i < regels.length && !isBlokStart(regels[i], regels[i + 1])) {
      paragraaf.push(regels[i].trim())
      i += 1
    }
    uit.push(`<p>${renderInline(paragraaf.join(' '))}</p>`)
  }

  return uit.join('\n')
}

export function leesTijd(markdown) {
  const woorden = zonderOpmaak(markdown).split(/\s+/).filter(Boolean).length
  return Math.max(1, Math.ceil(woorden / 200))
}
