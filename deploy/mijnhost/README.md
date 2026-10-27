# Verhuizen naar mijn.host

Deze map bevat alles wat je nodig hebt om de site van GitHub Pages naar het
mijn.host-pakket te verplaatsen. De site blijft een statische React-app; er is
geen Node.js-server of database op mijn.host nodig.

## Wat er al klaarstaat

- `.htaccess` — caching, compressie, 404-pagina en veiligheidsheaders.
- `.github/workflows/deploy-mijnhost.yml` — handmatige deploy via FTP.

## Stappen

1. **SSL activeren** in het mijn.host-paneel voor
   `hondenvoervergelijker.paulzuiderduin.com`. Wacht tot het certificaat actief
   is. Zet daarna de HTTPS-regels in `.htaccess` aan (hekjes verwijderen).
2. **FTP-account** aanmaken in het paneel en de webroot noteren
   (meestal `/public_html/` of `/httpdocs/`).
3. **Secrets instellen** in GitHub → Settings → Secrets and variables → Actions:
   - `FTP_SERVER`
   - `FTP_USERNAME`
   - `FTP_PASSWORD`
   - `FTP_SERVER_DIR` (optioneel, bijvoorbeeld `/public_html/`)
4. **DNS omzetten** naar mijn.host volgens de gegevens van je provider. Laat de
   bestaande GitHub Pages-DNS nog even staan tot de eerste FTP-deploy klaar is.
5. **Eerste deploy** starten via Actions → "Deploy naar mijn.host" → Run
   workflow. Controleer daarna:
   - `https://hondenvoervergelijker.paulzuiderduin.com/`
   - `/merken/` en een paar merkpagina's
   - `/privacybeleid.html`, `/sitemap.xml`, `/robots.txt`
   - of `/assets/...` met een jaar cache wordt geserveerd.
6. **GitHub Pages uitzetten** of laten staan als terugvaloptie. Zet in ieder
   geval de automatische Pages-deploy uit zodra mijn.host de officiële host is,
   anders kunnen twee omgevingen uit elkaar lopen.
7. **Privacybeleid bijwerken**: de alinea over hosting noemt nu GitHub Pages en
   de geplande verhuizing. Vervang die door mijn.host zodra de site daar live
   staat.
8. **Search Console en Bing** hoef je niet opnieuw in te richten: het domein
   blijft hetzelfde. Controleer wel of de sitemap nog wordt gelezen en of
   IndexNow blijft werken (dat doet het via dezelfde URL's).

## Terugdraaien

- DNS terugzetten naar GitHub Pages en de Pages-workflow weer aanzetten.
- De bestanden op mijn.host kun je laten staan; ze doen niets zolang de DNS
  daar niet naartoe wijst.

## Aandachtspunten

- **Geen SPA-fallback nodig**: elke pagina heeft een eigen bestand. Voeg geen
  `RewriteRule . /index.html` toe, want dan verdwijnen echte 404's.
- **Verborgen bestanden**: controleer na de eerste FTP-deploy of `.htaccess`
  echt is geüpload. Sommige FTP-clients slaan dotfiles over.
- **Cache**: HTML staat op `no-cache`, assets op een jaar. Daardoor zie je
  wijzigingen direct en blijven hashed bestanden snel.
- **Kosten**: FTP en Actions zijn gratis; het hostingpakket heb je al.
