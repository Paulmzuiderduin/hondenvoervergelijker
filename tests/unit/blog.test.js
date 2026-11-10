import { test } from 'node:test'
import assert from 'node:assert/strict'
import { readFileSync, readdirSync } from 'node:fs'
import { join } from 'node:path'
import { leesTijd, parseFrontmatter, renderMarkdown } from '../../scripts/lib/markdown.mjs'

const WORTEL = join(import.meta.dirname, '..', '..')

test('frontmatter leest tekst, getallen, booleans en lijsten', () => {
  const { data, body } = parseFrontmatter(`---
title: "Een titel"
date: 2026-11-09
medical: true
related:
  - "Eerste link | /eerste.html"
  - Tweede link
---

De inhoud.`)

  assert.equal(data.title, 'Een titel')
  assert.equal(data.date, '2026-11-09')
  assert.equal(data.medical, true)
  assert.deepEqual(data.related, ['Eerste link | /eerste.html', 'Tweede link'])
  assert.equal(body, 'De inhoud.')
})

test('markdown rendert koppen, lijsten, tabellen en inline opmaak', () => {
  const html = renderMarkdown(`## Kop met **vet**

Een alinea met [een link](/hondenvoer-zonder.html) en \`code\`.

- Een
- Twee

| Kolom | Waarde |
| --- | --- |
| A | 1 |

> Een citaat.`)

  assert.match(html, /<h2 id="kop-met-vet">Kop met <strong>vet<\/strong><\/h2>/)
  assert.match(html, /<a href="\/hondenvoer-zonder.html">een link<\/a>/)
  assert.match(html, /<code>code<\/code>/)
  assert.match(html, /<ul><li>Een<\/li><li>Twee<\/li><\/ul>/)
  assert.match(html, /<table>/)
  assert.match(html, /<th>Kolom<\/th>/)
  assert.match(html, /<blockquote><p>Een citaat.<\/p><\/blockquote>/)
})

test('markdown escapet onbekende HTML', () => {
  const html = renderMarkdown('Een <script>alert(1)</script> en <b>geen html</b>.')
  assert.doesNotMatch(html, /<script>/)
  assert.match(html, /&lt;script&gt;/)
  assert.match(html, /&lt;b&gt;/)
})

test('externe links krijgen een veilige rel', () => {
  const html = renderMarkdown('[Bron](https://example.com/bron)')
  assert.match(html, /target="_blank"/)
  assert.match(html, /rel="noopener noreferrer"/)
})

test('leestijd is minimaal één minuut', () => {
  assert.equal(leesTijd('Een korte tekst.'), 1)
  assert.ok(leesTijd(Array.from({ length: 500 }, () => 'woord').join(' ')) >= 2)
})

test('alle blogartikelen hebben verplichte metadata en een unieke slug', () => {
  const map = join(WORTEL, 'content', 'blog')
  const bestanden = readdirSync(map).filter((bestand) => bestand.endsWith('.md'))
  assert.ok(bestanden.length >= 3, 'er moeten minimaal drie blogartikelen zijn')

  const slugs = new Set()
  for (const bestand of bestanden) {
    const { data, body } = parseFrontmatter(readFileSync(join(map, bestand), 'utf8'))
    for (const veld of ['title', 'description', 'date', 'category']) {
      assert.ok(String(data[veld] ?? '').trim(), `${bestand} mist ${veld}`)
    }
    assert.ok(body.trim().length > 100, `${bestand} heeft te weinig inhoud`)
    assert.ok(Array.isArray(data.bronnen) && data.bronnen.length > 0, `${bestand} mist bronnen`)
    const slug = String(data.slug ?? data.title)
    assert.ok(!slugs.has(slug), `${bestand} heeft een dubbele slug`)
    slugs.add(slug)
  }
})
