// Affiliate-zoeklinks voor snacks zonder exacte productkoppeling.
//
// Dit zijn bewust géén productlinks: de bezoeker komt op een zoekresultaat van
// de winkel. De link is daarom ook als zoeklink gelabeld en krijgt dezelfde
// sponsored/nofollow-behandeling als een directe affiliate-link.

const ZOEK_TEMPLATES = [
  {
    winkel: 'Plein.nl',
    bouw: (zoek) => `https://fr135.net/c/?si=3366&li=1483612&wi=446454&dl=${encodeURIComponent(`zoeken?search=${encodeURIComponent(zoek)}`)}&ws=`
  },
  {
    winkel: 'Petgamma.com',
    bouw: (zoek) => `https://fr135.net/c/?si=20686&li=1880978&wi=446454&dl=${encodeURIComponent(`nl/l?tn_q=${encodeURIComponent(zoek)}`)}&ws=`
  }
]

export function zoekLinksVoorSnack(product) {
  const zoek = `${product?.brand ?? ''} ${product?.name ?? ''}`.replace(/\s+/g, ' ').trim().slice(0, 80)
  if (!zoek) return []
  return ZOEK_TEMPLATES.map(({ winkel, bouw }) => ({ winkel, url: bouw(zoek) }))
}
