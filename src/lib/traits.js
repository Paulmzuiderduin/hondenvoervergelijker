// Leeftijd en formaat zijn geen aparte databasevelden. Deze classificatie is
// bewust eenvoudig en alleen gebaseerd op de productnaam. De site noemt hem
// daarom ook zo; het etiket blijft leidend. Producten zonder herkenbaar woord
// krijgen "unknown"; de UI toont daarvoor bewust geen chip, zodat de filterrij
// compact blijft. Via de URL is ?leeftijd=unknown wel te gebruiken.
export const LIFE_STAGE_OPTIONS = [
  { key: 'puppy', label: 'Puppy', patterns: [/\bpuppy\b/, /\bjunior\b/, /\bpup\b/] },
  { key: 'adult', label: 'Adult', patterns: [/\badult\b/, /\bvolwassen\b/] },
  { key: 'senior', label: 'Senior', patterns: [/\bsenior\b/, /\bmature\b/, /\bolder\b/, /\bouder\b/, /\bageing\b/, /\baging\b/] },
  { key: 'all', label: 'Alle', patterns: [/\balle leeftijden\b/, /\ball life stages\b/, /\ball ages\b/] }
]

export const SIZE_OPTIONS = [
  { key: 'mini', label: 'Mini', patterns: [/\bmini\b/, /\bsmall\b/, /\bklein/, /\btoy\b/] },
  { key: 'medium', label: 'Medium', patterns: [/\bmedium\b/, /\bmiddel/] },
  { key: 'large', label: 'Large', patterns: [/\blarge\b/, /\bgiant\b/, /\bmaxi\b/, /\bgroot/, /\bgrote\b/, /\bxl\b/] }
]

export const LIFE_STAGE_KEYS = [...LIFE_STAGE_OPTIONS.map(({ key }) => key), 'unknown']
export const SIZE_KEYS = [...SIZE_OPTIONS.map(({ key }) => key), 'unknown']

function normaliseer(tekst = '') {
  return String(tekst)
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .replace(/[øØ]/g, 'o')
    .replace(/[æÆ]/g, 'ae')
    .toLowerCase()
}

export function classifyProduct(product = {}) {
  const naam = normaliseer(product.name)
  const lifeStage = LIFE_STAGE_OPTIONS.find(({ patterns }) => patterns.some((pattern) => pattern.test(naam)))?.key ?? 'unknown'
  const size = SIZE_OPTIONS.find(({ patterns }) => patterns.some((pattern) => pattern.test(naam)))?.key ?? 'unknown'
  return { lifeStage, size }
}
