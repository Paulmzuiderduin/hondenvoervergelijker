# Broncontrole Prins Petfoods — 22 oktober 2026

De gewone broncontrole (`node scripts/controleer-bronnen.mjs --uitbreiding --bestanden=prins`) kreeg van www.prinspetfoods.nl een blokkade op alle 72 productpagina's. De pagina's zijn daarom in de al aangemelde browser geopend, waar de Cloudflare-controle wel slaagt.

## Uitkomst

- 72 van 72 productpagina's gaven HTTP 200.
- 72 van 72 letterlijke samenstellingen uit `prins.json` zijn in de HTML van de bronpagina gevonden.
- Vergeleken na Unicode-NFC-normalisatie en het samenvoegen van witruimte. Zonder NFC lijken `maïs` en `oliën` te verschillen doordat de pagina de tekens als `i` + combinatieteken levert; het gaat om dezelfde tekst.
- 0 gewijzigde, 0 onbereikbare en 0 ontbrekende etiketten.

## Methode

De 72 URL's uit `prins.json` zijn in de browser met `fetch` op dezelfde site opgehaald. De volledige HTML is met `DOMParser` omgezet naar tekst en vergeleken met `etiketNl`. De pagina's bevatten de samenstelling in een uitgeklapt paneel; `document.body.innerText` alleen is niet genoeg, de volledige HTML wel.

De reguliere broncontrole blijft de controle voor de andere merken. Deze aparte controle vervangt alleen de geblokkeerde Prins-run.
