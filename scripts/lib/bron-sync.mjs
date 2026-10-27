// Schrijft de uitkomsten van de bronbewaking terug naar Supabase.
// Wordt gebruikt door zowel de fetch-controle als de browsercontrole.

import { existsSync, readFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'

const WORTEL = dirname(dirname(dirname(fileURLToPath(import.meta.url))))

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

export async function schrijfNaarDatabase(resultaten, { geenDb = false } = {}) {
  if (geenDb) return
  const env = leesEnv()
  const url = (process.env.VITE_SUPABASE_URL || process.env.SUPABASE_URL || env.VITE_SUPABASE_URL || '').replace(/\/$/, '')
  const key = process.env.VITE_SUPABASE_PUBLISHABLE_KEY || process.env.SUPABASE_PUBLISHABLE_KEY || env.VITE_SUPABASE_PUBLISHABLE_KEY || ''
  const token = process.env.BRONCONTROLE_TOKEN || env.BRONCONTROLE_TOKEN || ''

  if (!url || !key || !token) {
    console.log('\nDatabase-sync overgeslagen (geen SUPABASE_URL, SUPABASE_PUBLISHABLE_KEY of BRONCONTROLE_TOKEN ingesteld).')
    return
  }

  const payload = resultaten.map(({ product, status, detail }) => ({
    merk: product.merk,
    naam: product.naam,
    bronUrl: product.bronUrl,
    status,
    detail: detail || null
  }))

  let okTotaal = 0
  let gewijzigdTotaal = 0
  for (let i = 0; i < payload.length; i += 200) {
    const deel = payload.slice(i, i + 200)
    try {
      const antwoord = await fetch(`${url}/rest/v1/rpc/record_source_checks`, {
        method: 'POST',
        headers: { apikey: key, authorization: `Bearer ${key}`, 'content-type': 'application/json' },
        body: JSON.stringify({ p_token: token, p_checks: deel })
      })
      if (!antwoord.ok) {
        console.log(`\nLet op: database-sync gaf HTTP ${antwoord.status}: ${await antwoord.text()}`)
        return
      }
      const res = await antwoord.json()
      okTotaal += Number(res?.ok_updated ?? 0)
      gewijzigdTotaal += Number(res?.changed_updated ?? 0)
    } catch (fout) {
      console.log(`\nLet op: database-sync mislukt (${fout.message}).`)
      return
    }
  }
  console.log(`\nDatabase bijgewerkt: ${okTotaal} product(en) op vandaag gecontroleerd gezet, ${gewijzigdTotaal} als gewijzigd gemarkeerd.`)
}
