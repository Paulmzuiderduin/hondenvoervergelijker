export const ALLERGENS = [
  ['chicken', 'Kip'], ['turkey', 'Kalkoen'], ['beef', 'Rund'], ['lamb', 'Lam'],
  ['duck', 'Eend'], ['pork', 'Varken'], ['rabbit', 'Konijn'], ['venison', 'Hert'],
  ['fish', 'Vis (alle soorten)'], ['salmon', 'Zalm'], ['whitefish', 'Witvis'],
  ['egg', 'Ei'], ['milk', 'Melk/zuivel'], ['wheat', 'Tarwe'], ['corn', 'Maïs'],
  ['rice', 'Rijst'], ['barley', 'Gerst'], ['oats', 'Haver'], ['soy', 'Soja'],
  ['pea', 'Erwt'], ['potato', 'Aardappel'], ['chickpea', 'Kikkererwt']
].map(([key, label]) => ({ key, label }))

export const FOOD_TYPES = [
  ['kibble', 'Brokken'], ['raw', 'Rauwvoer'], ['wet', 'Natvoer']
]

export const ALLERGEN_LABELS = Object.fromEntries(ALLERGENS.map(({ key, label }) => [key, label]))
