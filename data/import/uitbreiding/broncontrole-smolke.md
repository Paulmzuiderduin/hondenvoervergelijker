# Broncontrole Smølke — 22 oktober 2026

De gewone broncontrole (`node scripts/controleer-bronnen.mjs --uitbreiding --bestanden=smolke`) kreeg van www.smolke.nl een blokkade op alle 27 productpagina's. De pagina's zijn daarom in de al aangemelde browser geopend, waar de Cloudflare-controle wel slaagt.

## Uitkomst

- 27 van 27 productpagina's gaven HTTP 200.
- 27 van 27 samenstellingen uit `smolke.json` zijn in de bronpagina gevonden.
- 14 labels kwamen volledig overeen; de andere 13 hebben op de pagina een voetnoot met extra HTML en een link. Daarvan is de kern (de samenstelling zonder de voetnootregel) vergeleken; die kwam bij alle 13 overeen.
- Vergeleken na Unicode-NFC-normalisatie, het verwijderen van HTML-tags en het samenvoegen van witruimte.
- 0 gewijzigde, 0 onbereikbare en 0 ontbrekende etiketten.

## Methode

De 27 URL's uit `smolke.json` zijn in de browser met `fetch` op dezelfde site opgehaald. De samenstelling staat in de pagina als JSON-veld `ingredients`, met HTML-escapes en een voetnoot. De volledige HTML is gedecodeerd, van tags ontdaan en met `etiketNl` vergeleken. De reguliere broncontrole blijft de controle voor de andere merken.
