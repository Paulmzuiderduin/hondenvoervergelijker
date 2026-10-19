export const ALLERGEN_GROUPS = [
  {
    key: 'protein',
    label: 'Eiwitbron',
    allergenPairs: [
      ['anchovy', 'Ansjovis'], ['duck', 'Eend'], ['trout', 'Forel'], ['goat', 'Geit'], ['poultry', 'Gevogelte (algemeen)'], ['herring', 'Haring'],
      ['venison', 'Hert'], ['insect', 'Insecten'], ['turkey', 'Kalkoen'], ['kangaroo', 'Kangoeroe'], ['chicken', 'Kip'],
      ['rabbit', 'Konijn'], ['lamb', 'Lam'], ['mackerel', 'Makreel'], ['horse', 'Paard'], ['beef', 'Rund'],
      ['sardine', 'Sardine'], ['shellfish', 'Schaaldieren'], ['ostrich', 'Struisvogel'], ['tuna', 'Tonijn'], ['pork', 'Varken'],
      ['fish', 'Vis (alle soorten)'], ['buffalo', 'Waterbuffel'], ['whitefish', 'Witvis'], ['salmon', 'Zalm']
    ]
  },
  {
    key: 'carbohydrate',
    label: 'Koolhydraatbron',
    allergenPairs: [
      ['potato', 'Aardappel'], ['buckwheat', 'Boekweit'], ['bean', 'Boon'], ['pea', 'Erwt'], ['barley', 'Gerst'],
      ['millet', 'Gierst'], ['grains', 'Granen (algemeen)'], ['oats', 'Haver'], ['chickpea', 'Kikkererwt'], ['lentil', 'Linze'],
      ['lupin', 'Lupine'], ['corn', 'Maïs'], ['quinoa', 'Quinoa'], ['rice', 'Rijst'], ['rye', 'Rogge'],
      ['soy', 'Soja'], ['spelt', 'Spelt'], ['sugar', 'Suiker'], ['tapioca', 'Tapioca'], ['wheat', 'Tarwe'], ['sweetpotato', 'Zoete aardappel']
    ]
  },
  {
    key: 'vegetable',
    label: 'Groente',
    allergenPairs: [
      ['asparagus', 'Asperge'], ['aubergine', 'Aubergine'], ['beetroot', 'Biet'], ['cauliflower', 'Bloemkool'], ['kale', 'Boerenkool'],
      ['broccoli', 'Broccoli'], ['courgette', 'Courgette'], ['vegetables', 'Groenten (algemeen)'], ['garlic', 'Knoflook'], ['cucumber', 'Komkommer'],
      ['parsnip', 'Pastinaak'], ['paprika', 'Paprika'], ['pumpkin', 'Pompoen'], ['leek', 'Prei'], ['celery', 'Selderij'],
      ['spinach', 'Spinazie'], ['tomato', 'Tomaat'], ['onion', 'Ui'], ['carrot', 'Wortel']
    ]
  },
  {
    key: 'fruit',
    label: 'Fruit',
    allergenPairs: [
      ['strawberry', 'Aardbei'], ['apple', 'Appel'], ['banana', 'Banaan'], ['blackberry', 'Braam'], ['blueberry', 'Bosbes'],
      ['cranberry', 'Cranberry'], ['date', 'Dadel'], ['raspberry', 'Framboos'], ['fruit', 'Fruit (algemeen)'], ['mango', 'Mango'],
      ['papaya', 'Papaja'], ['pear', 'Peer'], ['peach', 'Perzik']
    ]
  },
  {
    key: 'other',
    label: 'Overig',
    allergenPairs: [
      ['algae', 'Algen/zeewier'], ['egg', 'Ei'], ['herbs', 'Kruiden (algemeen)'], ['milk', 'Melk/zuivel'], ['mint', 'Munt'],
      ['nuts', 'Noten'], ['parsley', 'Peterselie'], ['peanut', 'Pinda'], ['rosemary', 'Rozemarijn'], ['sesame', 'Sesam'], ['thyme', 'Tijm']
    ]
  }
].map(({ key, label, allergenPairs }) => ({
  key,
  label,
  allergens: allergenPairs.map(([allergenKey, allergenLabel]) => ({ key: allergenKey, label: allergenLabel }))
}))

export const ALLERGENS = ALLERGEN_GROUPS.flatMap(({ allergens }) => allergens)

export const FOOD_TYPES = [
  ['kibble', 'Brokken'], ['raw', 'Rauwvoer'], ['wet', 'Natvoer']
]

export const ALLERGEN_LABELS = Object.fromEntries(ALLERGENS.map(({ key, label }) => [key, label]))

// Algemene categorieën: wie "Gevogelte (algemeen)" kiest bedoelt ook kip,
// kalkoen en eend; wie "Granen (algemeen)" kiest bedoelt ook tarwe, gerst,
// haver, mais en rijst; wie "Groenten (algemeen)" kiest bedoelt ook wortel,
// pompoen en spinazie. En "Vis (alle soorten)" dekt zalm, witvis en tonijn.
// Kiest iemand één specifieke bron, dan geldt alleen die bron.
export const ALLERGEN_IMPLIES = {
  poultry: ['chicken', 'turkey', 'duck'],
  grains: ['wheat', 'barley', 'oats', 'corn', 'rice', 'millet', 'rye', 'spelt', 'buckwheat', 'quinoa'],
  fish: ['salmon', 'whitefish', 'tuna', 'trout', 'herring', 'mackerel', 'anchovy', 'sardine'],
  vegetables: ['asparagus', 'aubergine', 'beetroot', 'cauliflower', 'kale', 'broccoli', 'courgette', 'garlic', 'cucumber', 'parsnip', 'paprika', 'pumpkin', 'leek', 'celery', 'spinach', 'tomato', 'onion', 'carrot'],
  fruit: ['strawberry', 'apple', 'banana', 'blueberry', 'blackberry', 'cranberry', 'date', 'raspberry', 'mango', 'papaya', 'pear', 'peach'],
  herbs: ['rosemary', 'thyme', 'parsley', 'mint']
}

export const ALLERGEN_ORDER = new Map(ALLERGENS.map(({ key }, index) => [key, index]))

export function sortAllergenKeys(keys) {
  return [...new Set(keys)].sort((first, second) => (ALLERGEN_ORDER.get(first) ?? Number.MAX_SAFE_INTEGER) - (ALLERGEN_ORDER.get(second) ?? Number.MAX_SAFE_INTEGER))
}

// Allergeensleutels per groep. Een niet-genoemde bron ("dierlijk vet", "granen")
// blokkeert alleen de allergenen die er echt in kunnen zitten: "granen" verbergt
// tarwe en gerst, maar nooit kip. Daardoor gaat "Controleer etiket/fabrikant"
// alleen nog over de allergenen die de bezoeker zelf heeft gekozen.
const ALL_KEYS = ALLERGENS.map(({ key }) => key)
const MEAT_KEYS = ['chicken', 'turkey', 'beef', 'lamb', 'duck', 'pork', 'rabbit', 'venison', 'horse', 'kangaroo', 'ostrich', 'poultry']
const GRAIN_KEYS = ['wheat', 'barley', 'oats', 'corn', 'rice', 'grains', 'millet', 'rye', 'spelt', 'buckwheat', 'quinoa']
const PLANT_KEYS = ['pea', 'potato', 'soy', 'chickpea', 'bean', 'lentil', 'lupin', 'sweetpotato', 'tapioca']
const VEG_KEYS = ['asparagus', 'aubergine', 'beetroot', 'cauliflower', 'kale', 'broccoli', 'courgette', 'vegetables', 'garlic', 'cucumber', 'parsnip', 'paprika', 'pumpkin', 'leek', 'celery', 'spinach', 'tomato', 'onion', 'carrot']
const FRUIT_KEYS = ['strawberry', 'apple', 'banana', 'blueberry', 'blackberry', 'cranberry', 'date', 'raspberry', 'fruit', 'mango', 'papaya', 'pear', 'peach']
const HERB_KEYS = ['herbs', 'rosemary', 'thyme', 'parsley', 'mint']
// Noten, pinda en sesam: zaden waar ook olie van gemaakt wordt, en die in de
// volksmond door elkaar lopen ("noten" zeggen en pinda bedoelen).
const SEED_KEYS = ['nuts', 'peanut', 'sesame']
// Alles wat plantaardig kan zijn. Een etiket dat "plantaardige bijproducten" of
// "plantaardige olie" zegt, kan elke plant verbergen.
const PLANT_ALL_KEYS = [...PLANT_KEYS, ...GRAIN_KEYS, ...VEG_KEYS, ...FRUIT_KEYS, ...SEED_KEYS, ...HERB_KEYS, 'algae']
// Zetmeel kan van granen of van aardappel zijn. Vet en olie kunnen dierlijk of
// plantaardig zijn: sojaolie, maiskiemolie, notenolie, botervet en visolie
// kunnen allemaal achter "olie" of "vet" schuilgaan.
const STARCH_KEYS = [...GRAIN_KEYS, 'potato', 'sweetpotato', 'tapioca']
const FAT_KEYS = [...MEAT_KEYS, 'soy', 'milk', 'fish', 'corn', ...SEED_KEYS]
// Gelatine, collageen en kraakbeen kunnen ook van vis, schaaldieren (chitosan)
// of insecten komen. "Dierlijke bijproducten" zijn op Europese etiketten
// landdieren: vis, ei en zuivel staan er als aparte categorie op.
const ANIMAL_PART_KEYS = [...MEAT_KEYS, 'fish', 'shellfish', 'insect']
// Categorieën die geen bron bij name noemen: voor de keuring zijn ze geen
// aangetoonde bron, ook al bevatten ze zelf geen allergeenwoord.
const UMBRELLA_KEYS = new Set(['grains', 'poultry', 'vegetables', 'fruit', 'herbs'])

// "Gevogelte" verbergt ook kip, kalkoen en eend; "vis" ook zalm en witvis.
export function expandAllergenKeys(keys) {
  const wanted = new Set(keys)
  for (const key of keys) for (const implied of ALLERGEN_IMPLIES[key] ?? []) wanted.add(implied)
  return [...wanted]
}

// Een term met een * erachter matcht op woordbegin, zodat Nederlandse
// samenstellingen en meervouden meetellen: "kip*" hoort ook bij kippenlever,
// kippenvet en kippenei. Termen zonder * moeten exact overeenkomen.
// Let op: "ei" staat er bewust zonder *, anders zou "eiwit" (dierlijk eiwit,
// plantaardig eiwitextract) onterecht als eiallergeen gelden.
const ALLERGEN_SYNONYMS = {
  // Eiwitbron
  chicken: ['kip*', 'chicken'], turkey: ['kalkoen*', 'turkey'], beef: ['rund*', 'beef', 'runder*'],
  lamb: ['lam*', 'lamb', 'schaap*', 'mutton'], duck: ['eend*', 'duck'], pork: ['varken*', 'pork', 'everzwijn*'],
  rabbit: ['konijn*', 'rabbit'], venison: ['hert*', 'venison', 'ree*'], horse: ['paard*', 'horse'],
  // Geit en waterbuffel staan als eigen allergeen in de lijst: soorten die op
  // rauwvoer-etiketten staan en niet onder rund of lam vallen. Niet "buffel*",
  // want dat zou ook "buffelworm" (soldaatvlieg) pakken.
  goat: ['geit*', 'goat*'], buffalo: ['waterbuffel*', 'buffalo*', 'buffel', 'buffelvlees*'],
  kangaroo: ['kangoeroe*', 'kangaroo'], ostrich: ['struisvogel*', 'ostrich'],
  poultry: ['gevogelte*', 'pluimvee*', 'poultry', 'gans*', 'goose', 'fazant*', 'pheasant', 'kwartel*', 'quail'],
  fish: ['vis*', 'fish*', 'zalm*', 'salmon', 'kabeljauw*', 'tonijn*', 'tuna', 'haring*', 'herring', 'forel*', 'trout', 'makreel*', 'mackerel', 'sardine*', 'sardines', 'ansjovis*', 'anchovies', 'heek', 'wijting*', 'schelvis*', 'koolvis*', 'zeeduivel*'],
  whitefish: ['witvis', 'kabeljauw*', 'schelvis*', 'koolvis*', 'heek', 'wijting*', 'zeeduivel*'],
  salmon: ['zalm*', 'salmon'], tuna: ['tonijn*', 'tuna'], trout: ['forel*', 'trout'], herring: ['haring*', 'herring'],
  mackerel: ['makreel*', 'mackerel'], anchovy: ['ansjovis*', 'anchovies'], sardine: ['sardine*', 'sardines'],
  // "oester" zonder * is bewust: oesterzwam is een paddenstoel, geen schaaldier.
  shellfish: ['schaaldier*', 'crustacean*', 'shellfish', 'garnaal*', 'kreeft*', 'krab*', 'scampi*', 'langoustine*', 'gamba*', 'krill', 'mossel*', 'oester', 'oesters', 'schelp*', 'weekdier*', 'inktvis*', 'zeekat', 'octopus'],
  insect: ['insect*', 'soldaatvlieg*', 'black soldier fly', 'hermetia*', 'meelworm*', 'rijstmeelworm*', 'buffelworm*', 'morio*', 'krekel*', 'cricket*', 'sprinkhaan*', 'grasshopper', 'tenebrio*'],
  // Koolhydraatbron
  wheat: ['tarwe*', 'wheat'], corn: ['mais*', 'maize', 'corn'], rice: ['rijst*', 'rice'],
  barley: ['gerst*', 'barley'], oats: ['haver*', 'oat*', 'oats'], millet: ['gierst*', 'millet'],
  rye: ['rogge*', 'rye'], spelt: ['spelt*'], buckwheat: ['boekweit*', 'buckwheat*'], quinoa: ['quinoa'],
  grains: ['granen*', 'graan*', 'cereals*', 'cereal*', 'sorghum*', 'triticale*'],
  soy: ['soja*', 'soy*', 'soya*'], pea: ['erwt*', 'spliterwt*', 'doperwt*', 'pea', 'peas'],
  chickpea: ['kikkererwt*', 'chickpea*', 'garbanzo*'],
  bean: ['boon*', 'bonen*', 'sperzieboon*', 'snijboon*', 'kidneyboon*', 'beans'],
  lentil: ['linze*', 'lentil*'], lupin: ['lupine*', 'lupin*', 'lupinen*'], potato: ['aardappel*', 'potato*'],
  sweetpotato: ['zoete aardappel', 'sweet potato'], tapioca: ['tapioca*', 'maniok*', 'cassave*', 'cassava*'],
  // Suiker: elke vorm waarin suiker op een etiket kan staan. "Ontsuikerd" valt
  // er bewust buiten (daar is de suiker juist uitgehaald) en glucosamine ook
  // (dat begint met "glucos", niet met "glucose").
  sugar: ['suiker*', 'sugar*', 'sacharose*', 'saccharose*', 'sucrose*', 'dextrose*', 'glucose*', 'fructose*', 'maltose*', 'xylose*', 'stroop*', 'siroop*', 'melasse*', 'syrup*', 'karamel*', 'caramel*', 'invertsuiker*', 'rietsuiker*', 'bietensuiker*', 'kandij*'],
  // Groente
  asparagus: ['asperge*', 'asparagus*'], aubergine: ['aubergine*', 'eggplant*'], beetroot: ['biet*', 'beetroot*', 'rode biet'],
  cauliflower: ['bloemkool*', 'cauliflower*'], kale: ['boerenkool*', 'kale'], broccoli: ['broccoli*'],
  courgette: ['courgette*', 'zucchini*'], vegetables: ['groente*', 'groenten*', 'vegetables', 'vegetable'],
  garlic: ['knoflook*', 'garlic*'], cucumber: ['komkommer*', 'cucumber*'], parsnip: ['pastinaak*', 'parsnip*'],
  paprika: ['paprika*'], pumpkin: ['pompoen*', 'pumpkin*'], leek: ['prei*', 'leek'], celery: ['selderij*', 'selderie*', 'celery*'],
  spinach: ['spinazie*', 'spinach*'], tomato: ['tomaat*', 'tomaten*', 'tomato*', 'tomatoes'],
  onion: ['ui', 'uien*', 'onion*'], carrot: ['wortel*', 'carrot*', 'peen*'],
  // Fruit
  strawberry: ['aardbei*', 'strawberry*'], apple: ['appel*', 'apple*', 'apples'], banana: ['banaan*', 'banana*'],
  blackberry: ['braam*', 'blackberry*'], blueberry: ['bosbes*', 'blueberry*'], cranberry: ['cranberry*', 'veenbes*', 'cranberries'],
  date: ['dadel*', 'dates'], raspberry: ['framboos*', 'raspberry*'],
  fruit: ['fruit*', 'vruchten*', 'bosvruchten*'], mango: ['mango*'], papaya: ['papaja*', 'papaya*'],
  pear: ['peer', 'peren*', 'pear*', 'pears'], peach: ['perzik*', 'peach*'],
  // Overig
  algae: ['algen*', 'alge*', 'algae*', 'kelp', 'zeewier*', 'wier*', 'seaweed*', 'spirulina*', 'chlorella*'],
  egg: ['ei', 'eier*', 'eigeel', 'eidooier', 'eipoeder', 'egg*', 'eggs'],
  milk: ['melk*', 'wei', 'weipoeder', 'whey*', 'lactose*', 'yoghurt*', 'kwark*', 'kaas*', 'caseine*', 'caseinaat*', 'room*', 'boter*', 'milk'],
  herbs: ['kruiden*', 'kruid*', 'specerij*', 'specerijen*', 'herbs', 'herb'],
  mint: ['munt*', 'mint*'],
  nuts: ['noten*', 'noot', 'nootjes', 'hazelnoot*', 'hazelnoten*', 'amandel*', 'amandelen*', 'walnoot*', 'walnoten*', 'cashew*', 'pistache*', 'pecannoot*', 'macadamia*', 'paranoot*', 'nuts', 'nut'],
  parsley: ['peterselie*', 'parsley*'], peanut: ['pinda*', 'aardnoot*', 'peanut*', 'groundnut*'],
  rosemary: ['rozemarijn*', 'rosemary*'], sesame: ['sesam*', 'sesame*'], thyme: ['tijm*', 'thyme*']
}

// Verzamelwoorden die geen dier- of plantensoort noemen. Ze kunnen nooit door
// een mens worden goedgekeurd: alleen het etiket of de fabrikant kan zeggen wat
// erin zit. Elke regel zegt welke allergenen zo'n woord kan verbergen.
const VAGUE_TERM_GROUPS = [
  { keys: MEAT_KEYS, words: ['dierlijke bijproducten', 'vlees en dierlijke bijproducten', 'dierlijke derivaten'] },
  { keys: PLANT_ALL_KEYS, words: ['plantaardige bijproducten', 'derivaten van plantaardige oorsprong'] },
  { keys: ALL_KEYS, words: ['plantaardige eiwitextracten', 'bijproduct*', 'derivaat*'] },
  { keys: FAT_KEYS, words: ['olien en vetten'] },
  { keys: GRAIN_KEYS, words: ['granen*', 'cereals*'] },
  { keys: ['poultry'], words: ['gevogelte*', 'pluimvee*', 'poultry'] },
  // "Vis" noemt een bron maar geen soort: voor wie zalm vermijdt blijft visolie
  // onbeslist, ook al staat er een bron op het etiket.
  { keys: ['salmon', 'whitefish', 'tuna', 'trout', 'herring', 'mackerel', 'anchovy', 'sardine'], words: ['vis*', 'fish*'] },
  { keys: VEG_KEYS, words: ['groente*'] },
  { keys: FRUIT_KEYS, words: ['fruit*', 'vruchten*', 'bosvruchten*'] },
  { keys: HERB_KEYS, words: ['kruiden*', 'specerij*', 'spice*', 'herbs*'] },
  { keys: SEED_KEYS, words: ['zaden*', 'zaad*', 'seeds*', 'seed*'] },
  // Wie "noten" leest weet nog niet welke; en in de volksmond horen pinda's
  // erbij, ook al zijn het peulvruchten.
  { keys: ['peanut'], words: ['noten*', 'nuts'] },
  // Verzamelwoorden die een dier- of plantensoort verbergen, ook in anderstalige
  // etiketten: "dierlijk vet", "animal protein", "vegetable oil".
  { keys: MEAT_KEYS, words: ['dierlijk*', 'animal'] },
  { keys: PLANT_ALL_KEYS, words: ['plantaardig*', 'vegetable', 'plant'] }
]

// Risicowoorden: woorden die een allergeenbron kunnen verbergen zonder hem te
// noemen ("dierlijk vet", "bouillon", "plantaardige olie", "10% vlees"). Staat
// zo'n woord direct achter een genoemde bron ("beef stock", "zonnebloemolie"),
// dan is het wel te herleiden. Anders blokkeert het de allergenen uit zijn groep.
const RISK_TERM_GROUPS = [
  // eiwitten zonder bron: dat kan dierlijk of plantaardig zijn, van welke soort dan ook
  { keys: ALL_KEYS, words: [
    'eiwit', 'eiwitten', 'eiwitisolaat', 'eiwitextract', 'eiwitextracten', 'eiwithydrolysaat', 'eiwithydrolysaten',
    'proteine', 'proteinen', 'proteinehydrolysaat', 'proteinehydrolysaten', 'protein', 'proteins',
    'hydrolysaat', 'hydrolysaten', 'hydrolisaat', 'hydrolisaten', 'hydrolysate', 'hydrolysates',
    'extract', 'extracten', 'concentraat', 'concentraten', 'poeder', 'powder',
    'onbekend', 'diversen', 'overig', 'overige'
  ] },
  // koolhydraten zonder bron
  { keys: STARCH_KEYS, words: [
    'meel', 'meelsoort', 'meelsoorten', 'zetmeel', 'zetmelen', 'gluten', 'gries', 'griesmeel',
    'bloem', 'semolina', 'vlokken', 'zemel', 'zemelen'
  ] },
  // vetten en oliën zonder bron
  { keys: FAT_KEYS, words: ['olie', 'olien', 'oil', 'oils', 'vet', 'vetten', 'fat', 'fats', 'talg', 'reuzel', 'smout'] },
  // dierlijke reststromen, kookvocht en delen zonder genoemde soort
  { keys: MEAT_KEYS, words: [
    'bouillon', 'broth', 'stock', 'jus', 'vleesnat', 'vlees*', 'meat*', 'bloed', 'bloedmeel', 'beendermeel',
    'vleesmeel', 'verenmeel', 'digest',
    'rug', 'ruggen', 'rugstuk', 'hart', 'harten', 'pens', 'pensen', 'maag', 'magen', 'nier', 'nieren',
    'tong', 'tongen', 'tongbot', 'oor', 'oren', 'rib', 'ribben', 'lever', 'levers', 'long', 'longen',
    'karkas', 'karkassen', 'bot', 'botten', 'spier', 'spieren', 'orgaan', 'organen', 'kop', 'koppen',
    'poot', 'poten', 'staart', 'staarten', 'bevleesd*',
    'heart', 'liver', 'kidney', 'lung', 'tongue', 'tripe', 'gizzard', 'neck', 'bone', 'bones', 'marrow'
  ] },
  { keys: ANIMAL_PART_KEYS, words: ['gelatine', 'collageen', 'cartilage'] }
]

const UNCERTAIN_INGREDIENT_TERMS = VAGUE_TERM_GROUPS.flatMap(({ words }) => words)
const RISK_TERMS = RISK_TERM_GROUPS.flatMap(({ words }) => words)
const TERM_SCOPE = new Map([...VAGUE_TERM_GROUPS, ...RISK_TERM_GROUPS].flatMap(({ keys, words }) => words.map((word) => [word, keys])))

// Bronnen die de keuring als "bij name genoemd" ziet, maar die geen allergeen in
// onze lijst zijn. Zonder deze lijst zou "zonnebloemolie" geblokkeerd worden.
const OTHER_SOURCE_TERMS = [
  'zonnebloem*', 'sunflower*', 'koolzaad*', 'raapzaad*', 'rapeseed*', 'lijnzaad*', 'flax*', 'lijnolie*',
  'kokos*', 'coconut*', 'palm*', 'olijf*', 'olive*', 'druivenpit*', 'hennep*', 'hemp*',
  'amarant*', 'teff*', 'citrus*', 'andijvie*', 'gist*', 'yeast*', 'bsf*',
  // "Locust bean gum" (johannesbroodpitmeel) is een verdikkingsmiddel, geen boon
  // van de bonenfamilie: het woord "bean" alleen telt daarom niet als boon.
  'johannesbrood*', 'carob*', 'locust bean',
  // Plantaardige toevoegingen die op etiketten veel voorkomen.
  'goudsbloem*', 'marigold*', 'brandnetel*', 'nettle*', 'venkel*', 'fennel*', 'karwij*', 'caraway*',
  'kurkuma*', 'turmeric*', 'kamille*', 'chamomile*', 'melisse*', 'melissa*', 'rose hip', 'rosehip*',
  'rozenbottel*', 'chicorei*', 'chicory*', 'cichorei*', 'lucern*', 'alfalfa*'
]

// Bereidings- en vulwoorden: ze zeggen niets over de bron van een allergeen.
const PROCESS_TERMS = [
  'vers', 'verse', 'fresh', 'gedroogd*', 'dried', 'gedehydreerd*', 'gedehydrateerd*', 'dehydrated',
  'gedehydeerd*', 'gehydroliseerd*', 'gehydrolyseerd*', 'hydrolysed', 'cooked', 'getextureerd*', 'getextrudeerd*',
  'ontsloten*', 'gemalen*', 'gekookt*', 'geperst*', 'gestoomd', 'verrijkt*', 'verwerkt*', 'bevroren*', 'frozen',
  'gegrild*', 'gebakken*', 'gemengd*', 'gedeeltelijk*', 'totaal', 'totale', 'min', 'max', 'minimaal', 'maximaal',
  'gelijkwaardig', 'gerehydrateerd*', 'gehydrateerd*', 'volkoren', 'wholegrain', 'heel', 'hele',
  'stuk', 'stukken', 'deel', 'delen', 'gedeelte', 'gedeelten', 'daarvan', 'waarvan', 'which', 'waaronder',
  'met', 'en', 'of', 'van', 'in', 'op', 'aan', 'het', 'de', 'een', 'zijn', 'eigen', 'als', 'bron',
  'natuurlijk*', 'the', 'and', 'with', 'its', 'own', 'of', 'juice', 'sap', 'vocht',
  'vezels', 'vezel', 'fiber', 'fibre', 'texturate', 'texturaat', 'toegevoegd*',
  'melding', 'pagina', 'meldt', 'ook', 'eiwitbron', 'eiwitbronnen'
]

// Woorden die zeggen dat de eiwitten al in stukjes zijn geknipt. Dat is geen
// allergeen en ook geen bron, maar voor een allergiehond wel het verschil dat
// een dierenarts wil weten: gehydrolyseerd eiwit wordt vaak niet meer herkend.
// De site vermeldt het apart op de kaart. Het oordeel per allergeen verandert er
// niets door: gehydrolyseerd kip blijft kip, want alleen de dierenarts kan
// beoordelen of het in een specifiek geval werkt.
const HYDROLYSED_TERMS = [
  'gehydrolyseerd*', 'gehydroliseerd*', 'hydrolyse*', 'hydrolysaat*', 'hydrolisaat*', 'hydrolysate*', 'laagmoleculair*'
]

// Ingrediënten die geen allergeen kunnen zijn en er ook geen kunnen verbergen:
// water, vitaminen, mineralen, zouten en hulpstoffen. Bewust streng: alles wat
// dierlijk of plantaardig kán zijn, staat hier niet in.
const INERT_INGREDIENT_TERMS = [
  'water', 'vitamine*', 'vitamin*', 'mineraal*', 'mineral*', 'sporenelement*', 'spoorelement*',
  'calcium*', 'carbonate*', 'kalium*', 'natrium*', 'sodium*', 'chloride*', 'fosfor*', 'fosfaat*', 'magnesium*',
  'zink*', 'zinc*', 'ijzer*', 'iron*', 'koper*', 'copper*', 'mangaan*', 'manganese*', 'jodium*',
  'iodine*', 'selenium*', 'biotine*', 'biotin*', 'taurine', 'carnitine', 'choline', 'inositol',
  'arginine', 'lysine', 'methionine', 'threonine', 'tryptofaan', 'tryptophan',
  'azijn*', 'vinegar*', 'citroenzuur*', 'citric*', 'ascorbinezuur*', 'ascorbic*', 'tocoferol*', 'tocopherol*',
  'caroteen*', 'beta', 'antioxidant*', 'conserveermiddel*', 'emulgator*', 'stabilisator*', 'verdikkingsmiddel*',
  'oligosachariden*', 'oligosaccharide*', 'sacchariden*', 'mannan*', 'manno*', 'oligo*', 'fructo*', 'inuline*', 'inulin*',
  'prebioticum*', 'probioticum*', 'cellulose*', 'kalk', 'zout', 'zouten', 'mos', 'fos', 'oesterzwam*'
]

function normaliseText(value = '') {
  return String(value)
    .toLocaleLowerCase('nl-NL')
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .replace(/[^a-z0-9]+/g, ' ')
    .trim()
}

// Als normaliseText, maar met haakjes, komma's, dubbele punten en zinseinden als
// aparte merktekens. Daarmee ziet de keuring wat er tussen haakjes staat, waar een
// opsomming eindigt en welke kop ("63% Konijn:") er boven een reeks delen staat.
const OPEN = '\u0001'
const CLOSE = '\u0002'
const BREAK = '\u0003'
const COLON = '\u0004'
const STOP = '\u0005'
const MARKER = { [OPEN]: '(', [CLOSE]: ')', [BREAK]: ',', [COLON]: ':', [STOP]: ';' }

function markedTokens(value = '') {
  return String(value)
    .toLocaleLowerCase('nl-NL')
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .replace(/\(/g, ` ${OPEN} `)
    .replace(/\)/g, ` ${CLOSE} `)
    .replace(/,/g, ` ${BREAK} `)
    .replace(/:/g, ` ${COLON} `)
    .replace(/[;.!?]/g, ` ${STOP} `)
    .replace(new RegExp(`[^a-z0-9${OPEN}${CLOSE}${BREAK}${COLON}${STOP}]+`, 'g'), ' ')
    .split(' ')
    .filter(Boolean)
    .map((token) => MARKER[token] ?? token)
}

function compileTerm(term) {
  const prefix = term.endsWith('*')
  const parts = normaliseText(prefix ? term.slice(0, -1) : term).split(' ').filter(Boolean)
  return { parts, prefix, term }
}

function termMatches(tokens, { parts, prefix }) {
  if (!parts.length) return false
  if (parts.length === 1) {
    const [stem] = parts
    return prefix ? tokens.some((token) => token.startsWith(stem)) : tokens.includes(stem)
  }
  for (let start = 0; start + parts.length <= tokens.length; start += 1) {
    if (parts.every((part, offset) => tokens[start + offset] === part)) return true
  }
  return false
}

// De woordenschat wordt opgebouwd uit de vaste lijsten hierboven plus de
// woorden die het beheer zelf heeft ingedeeld (tabel ingredient_terms, zie
// setCustomTerms onderaan dit blok). Eén indeling per woord geldt meteen voor
// alle producten, zodat een nieuw woord nooit per product opnieuw beoordeeld
// hoeft te worden.
let customTerms = []
let COMPILED_ALLERGEN_TERMS = []
let COMPILED_UNCERTAIN_TERMS = []
let COMPILED_RISK_TERMS = []
let COMPILED_KNOWN_TERMS = []
let CONCRETE_SOURCE_TERMS = []
let COMPILED_HYDROLYSED_TERMS = []

// Alles wat de keuring van een ingrediëntwoord kan plaatsen: een allergeenbron,
// een verzamel- of risicowoord, een andere bron, een onschuldig bestanddeel of een
// bereidingswoord. Elk woord dat hier niet in voorkomt, is een openstaande vraag
// voor een mens. Let op: "herkend" is niet hetzelfde als "in orde" — een
// verzamelwoord als "granen" is bekend, maar blokkeert nog steeds de goedkeuring.
function buildVocabulary() {
  const bron = customTerms.filter(({ kind }) => kind === 'bron')
  const onduidelijk = customTerms.filter(({ kind }) => kind === 'onduidelijk')
  const onschuldig = customTerms.filter(({ kind }) => kind === 'onschuldig')

  COMPILED_ALLERGEN_TERMS = Object.entries(ALLERGEN_SYNONYMS)
    .map(([key, terms]) => ({ key, terms: [...terms, ...bron.filter((term) => (term.allergen_keys ?? [])[0] === key).map((term) => term.term)].map(compileTerm) }))
  COMPILED_UNCERTAIN_TERMS = UNCERTAIN_INGREDIENT_TERMS.map((term) => ({ ...compileTerm(term), keys: TERM_SCOPE.get(term) }))
  COMPILED_RISK_TERMS = [
    ...RISK_TERMS.map((term) => ({ ...compileTerm(term), keys: TERM_SCOPE.get(term) })),
    // Een woord dat het beheer als "onduidelijk" heeft bestempeld, blokkeert de
    // allergenen die erachter kunnen zitten — alles, tenzij de beheerder heeft
    // aangegeven welke (glucosamine kan van schaaldieren of van mais komen, maar
    // niet van ei). Zo blijft het eerlijk én precies.
    ...onduidelijk.map((term) => ({ ...compileTerm(term.term), keys: openTermKeys(term) }))
  ]
  COMPILED_KNOWN_TERMS = [
    ...COMPILED_ALLERGEN_TERMS.flatMap(({ terms }) => terms),
    ...COMPILED_UNCERTAIN_TERMS,
    ...COMPILED_RISK_TERMS,
    ...OTHER_SOURCE_TERMS.map(compileTerm),
    ...INERT_INGREDIENT_TERMS.map(compileTerm),
    ...PROCESS_TERMS.map(compileTerm),
    ...onschuldig.map((term) => compileTerm(term.term)),
    // Een woord dat als bron van een allergeen is ingedeeld, is daarmee ook
    // bekend: het staat niet meer als open vraag in de takenlijst.
    ...bron.map((term) => compileTerm(term.term))
  ]
  CONCRETE_SOURCE_TERMS = [
    ...Object.entries(ALLERGEN_SYNONYMS)
      .filter(([key]) => !UMBRELLA_KEYS.has(key))
      .flatMap(([, terms]) => terms)
      .concat(bron.filter((term) => !(term.allergen_keys ?? []).some((key) => UMBRELLA_KEYS.has(key))).map((term) => term.term)),
    ...OTHER_SOURCE_TERMS,
    ...onschuldig.map((term) => term.term)
  ].map(compileTerm)
  COMPILED_HYDROLYSED_TERMS = HYDROLYSED_TERMS.map(compileTerm)
}

// Welke allergeenbron wijst dit woord aan? "kip*" wel, "gevogelte" ook (dan is de
// groep genoemd), "eiwit" niet. Wordt gebruikt om bij een hydrolysewoord de bron
// te vinden die er in dezelfde reeks bij staat.
function sourceKeysOf(word) {
  const keys = []
  for (const { key, terms } of COMPILED_ALLERGEN_TERMS) {
    if (terms.some((term) => termMatches([word], term))) keys.push(key)
  }
  return keys
}

// Woorden die het beheer zelf heeft ingedeeld. "onschuldig" betekent: geen bron
// van een allergeen in onze lijst en verbergt er ook geen. "bron" betekent: dit
// woord is een van de allergenen uit de lijst. "onduidelijk" betekent: het kan
// een allergeen verbergen; met allergen_keys erbij weet de beheerder welke dat
// kunnen zijn (leeg of ontbrekend = elk allergeen).
export function setCustomTerms(terms = []) {
  customTerms = Array.isArray(terms) ? terms.filter(({ term, kind }) => term && kind) : []
  buildVocabulary()
}

// Welke allergenen kan een "onduidelijk" woord verbergen? Zonder keuze van de
// beheerder: alle. Met een keuze: precies die, en de algemene categorieën
// ("granen", "gevogelte") uitgeklapt naar hun soorten.
function openTermKeys(term) {
  const keys = Array.isArray(term.allergen_keys) ? term.allergen_keys.filter(Boolean) : []
  return keys.length ? sortAllergenKeys(expandAllergenKeys(keys)) : ALL_KEYS
}

// Welke woorden van een lijst herkent de keuring? Meerwoords- termen ("rose hip")
// tellen als geheel.
function markKnownWords(tokens) {
  const known = tokens.map(() => false)
  for (const term of COMPILED_KNOWN_TERMS) {
    if (term.parts.length === 1) {
      tokens.forEach((token, index) => { if (!known[index] && termMatches([token], term)) known[index] = true })
      continue
    }
    for (let start = 0; start + term.parts.length <= tokens.length; start += 1) {
      if (!term.parts.every((part, offset) => tokens[start + offset] === part)) continue
      for (let offset = 0; offset < term.parts.length; offset += 1) known[start + offset] = true
    }
  }
  return known
}

function isConcreteSource(token) {
  return CONCRETE_SOURCE_TERMS.some((term) => termMatches([token], term))
}

buildVocabulary()

// Een verzamel- of risicowoord is toegelicht als er in dezelfde opsomming tussen
// haakjes een bron bij name staat: "dierlijk eiwit (rund 21%, kip 4%)" of
// "granen (tarwe, maïs, rijst)". Zonder die toelichting houdt het woord tegen.
function explainedByParenthetical(tokens, depthBefore, breakBefore, index) {
  let opened = false
  for (let cursor = index + 1; cursor < tokens.length; cursor += 1) {
    if (depthBefore[cursor] > 0) {
      opened = true
      if (isConcreteSource(tokens[cursor])) return true
      continue
    }
    if (opened || breakBefore[cursor]) return false
  }
  return false
}

// Hét oordeel over één etiket, in één keer: welke woorden geen bron noemen (voor
// de rode markering op de site), welke allergenen daardoor niet uitgesloten zijn
// (voor het oordeel per allergeen) en of de keuring elk ingrediëntwoord herkent.
// Doordat alles uit deze ene functie komt, kunnen die drie nooit uit elkaar lopen.
export function assessLabel(ingredientsText = '') {
  const tokens = []
  const depthBefore = []
  const breakBefore = []
  // De bron die boven de lopende reeks delen staat ("63% Konijn:"), of null.
  const anchorBefore = []
  let anchor = null
  let depth = 0
  let pendingBreak = false
  for (const token of markedTokens(ingredientsText)) {
    if (token === '(') { depth += 1; continue }
    if (token === ')') { depth = Math.max(0, depth - 1); continue }
    if (token === ',') { if (depth === 0) pendingBreak = true; continue }
    if (token === ':') {
      // "63% Konijn: 44% rug, 13% vlees" — de delen na de dubbele punt horen bij
      // het dier dat er vóór staat.
      if (depth === 0) {
        const heading = tokens[tokens.length - 1]
        anchor = heading && isConcreteSource(heading) ? heading : anchor
        pendingBreak = true
      }
      continue
    }
    if (token === ';') {
      // Een puntkomma of punt begint een nieuwe reeks: de kop vervalt.
      if (depth === 0) { pendingBreak = true; anchor = null }
      continue
    }
    tokens.push(token)
    depthBefore.push(depth)
    breakBefore.push(pendingBreak)
    anchorBefore.push(anchor)
    pendingBreak = false
  }

  // Welke verzamel- en risicowoorden staan er in de lijst, en waar horen ze bij?
  // Van elk gevonden woord houden we de plaats bij, zodat de keuring kan zien of
  // een bron in dezelfde opsomming of onder een soortkop alsnog genoemd wordt.
  const collect = (terms) => {
    const matches = []
    for (const term of terms) {
      if (term.parts.length === 1) {
        tokens.forEach((token, index) => { if (termMatches([token], term)) matches.push({ start: index, end: index + 1, term }) })
        continue
      }
      for (let start = 0; start + term.parts.length <= tokens.length; start += 1) {
        if (!term.parts.every((part, offset) => tokens[start + offset] === part)) continue
        matches.push({ start, end: start + term.parts.length, term })
      }
    }
    return matches
  }

  const keep = (index) => !explainedByParenthetical(tokens, depthBefore, breakBefore, index)
  // Staat er vlak vóór een risicowoord een verzamelwoord ("gevogelte-eiwit",
  // "dierlijk eiwit"), dan is de bron wél genoemd, alleen niet welke soort. Dan
  // geldt de onzekerheid van die groep, niet die van alle allergenen.
  const precedingScope = (index) => {
    const token = tokens[index]
    if (!token) return null
    const term = COMPILED_UNCERTAIN_TERMS.find((item) => item.parts.length === 1 && termMatches([token], item))
    return term ? expandAllergenKeys(term.keys ?? ALL_KEYS) : null
  }
  const vagueMatches = collect(COMPILED_UNCERTAIN_TERMS).filter(({ start }) => keep(start))
  const riskyMatches = collect(COMPILED_RISK_TERMS).flatMap((match) => {
    // Delen onder een kop met een genoemde bron ("13% vlees" onder "63% Konijn:")
    // horen bij die bron.
    if (anchorBefore[match.start]) return []
    const previous = tokens[match.start - 1]
    // "beef stock" en "zonnebloemolie" zijn herleidbaar; "tarwe, vet" niet,
    // want daar staat een komma tussen.
    if (previous && !breakBefore[match.start] && isConcreteSource(previous)) return []
    if (!keep(match.start)) return []
    const scope = breakBefore[match.start] ? null : precedingScope(match.start - 1)
    // Alleen een risicowoord dat anders álles zou verbergen wordt vernauwd; een
    // vet- of zetmeelwoord heeft zijn eigen, bredere afweging.
    if (!scope || match.term.keys !== ALL_KEYS) return [match]
    return [{ ...match, term: { ...match.term, keys: scope } }]
  })
  const indexesOf = (matches) => matches.flatMap(({ start, end }) => Array.from({ length: end - start }, (_, offset) => start + offset))
  const vague = [...new Set(indexesOf(vagueMatches))].sort((first, second) => first - second)
  const risky = [...new Set(indexesOf(riskyMatches))].sort((first, second) => first - second)
  const readWords = (indexes) => [...new Set(indexes.map((index) => tokens[index]))]

  // Dekking: herkent de keuring elk ingrediëntwoord? Een onbekend woord kan een
  // allergeen verbergen dat niet in de lijst staat, dus zolang er zo'n woord is,
  // mag niemand beweren dat de allergeenlijst compleet is.
  const known = markKnownWords(tokens)
  const unknown = []
  tokens.forEach((token, index) => {
    if (known[index] || /^\d+$/.test(token) || unknown.includes(token)) return
    unknown.push(token)
  })

  // Welke allergenen kunnen verborgen zitten achter de woorden die geen bron
  // noemen? "granen" verbergt tarwe en gerst, "dierlijk vet" rund en varken —
  // maar geen van beide verbergt kip als kip gewoon genoemd staat. Dit is de
  // kern van het oordeel per allergeen: een onduidelijk etiket zegt alleen iets
  // over de allergenen die het níet noemt.
  const hidden = []
  for (const { start, end, term } of [...vagueMatches, ...riskyMatches]) {
    const word = tokens.slice(start, end).join(' ')
    const keys = expandAllergenKeys(term.keys ?? ALL_KEYS)
    const existing = hidden.find((item) => item.word === word)
    if (existing) existing.keys = sortAllergenKeys([...existing.keys, ...keys])
    else hidden.push({ word, keys: sortAllergenKeys(keys) })
  }
  const hiddenKeys = new Set(hidden.flatMap(({ keys }) => keys))
  // Een woord dat de keuring niet kent kan van alles zijn; dan geldt de
  // onzekerheid voor elk allergeen in de lijst.
  if (unknown.length) for (const key of ALL_KEYS) hiddenKeys.add(key)

  // Gehydrolyseerd eiwit: de eiwitten zijn al geknipt. De site vermeldt het
  // apart op de kaart, met de bron die er in dezelfde reeks bij staat
  // ("gehydrolyseerd kippeneiwit", "zalm-eiwit hydrolysaat", "eiwit (gevogelte)"
  // of "gevogelte-eiwit (gehydrolyseerd)"). Zonder zo'n bron in dezelfde reeks
  // blijft het bij de algemene vermelding.
  const hydrolysedWords = new Set()
  const hydrolysedKeys = new Set()
  tokens.forEach((token, index) => {
    if (!COMPILED_HYDROLYSED_TERMS.some((term) => termMatches([token], term))) return
    const collectSource = (cursor) => {
      if (COMPILED_HYDROLYSED_TERMS.some((term) => termMatches([tokens[cursor]], term))) return
      const keys = sourceKeysOf(tokens[cursor])
      if (!keys.length) return
      hydrolysedWords.add(tokens[cursor])
      keys.forEach((key) => hydrolysedKeys.add(key))
    }
    // Niet over een komma heen: "zalm, eiwithydrolysaat" zegt niet dat het
    // hydrolysaat van zalm is.
    for (let cursor = index - 1; cursor >= 0 && index - cursor <= 6 && !breakBefore[cursor + 1]; cursor -= 1) collectSource(cursor)
    for (let cursor = index + 1; cursor < tokens.length && cursor - index <= 6 && !breakBefore[cursor]; cursor += 1) collectSource(cursor)
  })
  const hydrolysed = {
    present: tokens.some((token) => COMPILED_HYDROLYSED_TERMS.some((term) => termMatches([token], term))),
    words: [...hydrolysedWords],
    keys: sortAllergenKeys([...hydrolysedKeys])
  }

  return {
    tokens,
    vagueIndexes: vague,
    riskyIndexes: risky,
    vague: readWords(vague),
    risky: readWords(risky),
    unknown,
    covered: unknown.length === 0,
    flagged: tokens.map((_, index) => vague.includes(index) || risky.includes(index)),
    status: vague.length || risky.length ? 'aandacht' : 'schoon',
    // Welke allergenen dit etiket niet uitsluit: de bron achter een verzamel- of
    // risicowoord, of alles zolang er een woord onbekend is. De vergelijking
    // gebruikt dit per allergeen; hidden zegt per woord waar het vandaan komt.
    hidden,
    keys: sortAllergenKeys([...hiddenKeys]),
    // Gehydrolyseerd eiwit is geen allergeen en geen bron, maar wel informatie
    // die op de kaart hoort te staan. Het oordeel per allergeen verandert er
    // niets door: de genoemde bron blijft gewoon meetellen.
    hydrolysed
  }
}

export function detectIngredientSignals(ingredientsText) {
  const { tokens, status } = assessLabel(ingredientsText)
  const allergens = COMPILED_ALLERGEN_TERMS
    .filter(({ terms }) => terms.some((term) => termMatches(tokens, term)))
    .map(({ key }) => key)
    .sort((first, second) => (ALLERGEN_ORDER.get(first) ?? Number.MAX_SAFE_INTEGER) - (ALLERGEN_ORDER.get(second) ?? Number.MAX_SAFE_INTEGER))
  return { allergens, uncertain: status === 'aandacht' }
}

// Voor de test die controleert dat elke keuze in de allergenenlijst ook echt te
// herkennen is: het eerste voorbeeldwoord van een allergeen, zonder de * van een
// woordbegin-match.
export function sampleForAllergen(key) {
  const term = (ALLERGEN_SYNONYMS[key] ?? [])[0]
  return term ? term.replace(/\*$/, '') : ''
}

// Welke allergenen staan wél in de etikettekst, maar nog niet in de opgeslagen
// rijen? Wordt gebruikt om bestaande producten bij te werken nadat de
// herkenning is verbeterd. Er wordt alleen aangevuld: bestaande vinkjes (ook
// handmatige) blijven staan, want die kunnen bewuste kennis van de beheerder zijn.
export function missingAllergenKeys(ingredientsText, storedKeys = []) {
  const stored = new Set(storedKeys)
  const allowed = new Set(ALLERGENS.map(({ key }) => key))
  return detectIngredientSignals(ingredientsText).allergens.filter((key) => allowed.has(key) && !stored.has(key))
}

// --- Rood markeren van wat niet te herleiden is ---------------------------
// Om een woord in de originele etikettekst te kunnen markeren zonder de tekst
// te veranderen, maken we eerst een opgeschoonde versie (kleine letters, zonder
// accenten) waarin we van elk teken bijhouden waar het in het origineel stond.
function buildSearchIndex(text = '') {
  const source = String(text)
  const characters = []
  const positions = []
  for (let index = 0; index < source.length; index += 1) {
    const base = source[index].normalize('NFD').replace(/[\u0300-\u036f]/g, '').toLocaleLowerCase('nl-NL')
    for (const character of base) {
      if (/[a-z0-9]/.test(character)) {
        characters.push(character)
        positions.push(index)
      } else if (characters.length && characters[characters.length - 1] !== ' ') {
        characters.push(' ')
        positions.push(index)
      }
    }
  }
  if (characters[characters.length - 1] === ' ') { characters.pop(); positions.pop() }
  return { normalised: characters.join(''), positions }
}

function searchWords(normalised) {
  const words = []
  let cursor = 0
  for (const part of normalised.split(' ')) {
    if (part) words.push({ word: part, start: cursor, end: cursor + part.length })
    cursor += part.length + 1
  }
  return words
}

// Splitst de tekst in stukken; de stukken met uncertain: true zijn woorden die
// geen eenduidige dier- of plantensoort aanwijzen. De stukken samen zijn altijd
// exact de ingevoerde tekst. Welke woorden dat zijn komt uit assessLabel(), dus
// de rode woorden op de site en de vlag in de database lopen nooit uiteen.
export function markUncertainIngredients(text = '') {
  const source = String(text)
  if (!source.trim()) return source ? [{ text: source, uncertain: false }] : []

  const { normalised, positions } = buildSearchIndex(source)
  const words = searchWords(normalised)

  const flagged = assessLabel(source).flagged
  const merged = []
  flagged.forEach((flag, index) => {
    if (!flag || !words[index]) return
    const range = [positions[words[index].start], positions[words[index].end - 1] + 1]
    const previous = merged[merged.length - 1]
    // Alleen woorden die door spaties gescheiden zijn horen bij elkaar ("oliën en
    // vetten"); over een komma heen niet ("dierlijk vet, bouillon").
    if (previous && /^\s*$/.test(source.slice(previous[1], range[0]))) previous[1] = range[1]
    else merged.push(range)
  })

  const segments = []
  let position = 0
  for (const [start, end] of merged) {
    if (start > position) segments.push({ text: source.slice(position, start), uncertain: false })
    segments.push({ text: source.slice(start, end), uncertain: true })
    position = end
  }
  if (position < source.length) segments.push({ text: source.slice(position), uncertain: false })
  return segments
}
