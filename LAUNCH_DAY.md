# Launch Day Checklist — Lunelo

Nar Google Play godkjenner appen, kjor disse stegene:

## 1. Hent Play Store URL
- Apne Google Play Console → Lunelo → Store listing
- URL-format: `https://play.google.com/store/apps/details?id=no.lunelo.app`
- [ ] Verifiser at appen er synlig i Play Store (privat nettleserfane)

## 2. Oppdater nettsiden
```bash
cd C:\Users\Tex\Projects\12-bonk-games
bash launch-day-update.sh "https://play.google.com/store/apps/details?id=no.lunelo.app"
```

Dette endrer:
- Badge: "Under godkjenning" → "Ute na!"
- Knapp: Gra disabled → Gronn aktiv lenke til Play Store
- Tekst: "Snart pa Google Play" → "Last ned pa Google Play"

## 3. Verifiser lokalt
```bash
python -m http.server 3456
# Apne http://localhost:3456 — sjekk at badge er gronn og knapp fungerer
```
- [ ] Badge er gront "Ute na!"
- [ ] Google Play-knappen er klikkbar
- [ ] Browser-spillene fungerer (letter-hunt, count-animals, memory-cards)

## 4. Deploy
```bash
git add index.html
git commit -m "feat: app is LIVE on Google Play"
git push
```
GitHub Pages deployer automatisk innen 1-2 minutter.

## 5. Verifiser live
- [ ] Apne https://lunelo.no
- [ ] Sjekk at "Ute na!"-badge vises
- [ ] Klikk Google Play-knappen — verifiser at den apner riktig listing
- [ ] Test pa mobil ogsa

## 6. Verifiser kjop
- [ ] Installer appen fra Play Store pa ekte enhet
- [ ] Gjennomfor kjop (49 kr livstid)
- [ ] Verifiser at premium laser opp
- [ ] Sjekk RevenueCat dashboard for transaksjonen

## 7. Sosiale medier
### Instagram
> Lunelo er LIVE pa Google Play! 30 laeringsspill for barn 4-8 ar. Bokstaver, tall, former, ord og hukommelse — alt gjennom lek. 6 spill er helt gratis. Ingen reklame, ingen sporing. Lenke i bio!
> #barnespill #laering #lunelo #edtech #norskapp #barnleker

### Facebook
> Vi har lansert Lunelo — 30 morsomme laeringsspill for barn 4-8 ar. Helt uten reklame og sporing. 6 spill er gratis, og alle 30 kan lases opp for kun 49 kr. Last ned na: [Play Store-lenke]

## 8. E-post til abonnenter
Send via Formspree eller manuelt til innsamlede e-poster.

## 9. Etter lansering (forste uke)
- [ ] Sjekk Google Play Console daglig for reviews
- [ ] Overvak crash-rapporter (Android Vitals)
- [ ] Sjekk konverteringsrate (mal: 2.5-3%)
- [ ] Forbered v1.3.0 opplasting om stabilt

## 10. Oppdater Obsidian
- [ ] Sett Lunelo status til "LIVE" i INDEX.md
- [ ] Oppdater dashboard.md med lanseringsdato

---

## Kontaktinfo

| Tjeneste | Dashboard |
|----------|-----------|
| Google Play Console | play.google.com/console |
| RevenueCat | app.revenuecat.com |
| GitHub Pages | github.com/nevzat86/bonk-games/settings/pages |
| Domeneshop | domeneshop.no (lunelo.no, lunelo.online, lunelo.eu) |

*Sist oppdatert: 2026-03-15*
