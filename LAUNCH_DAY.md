# Launch Day Checklist — LearningKidz

Nar Google Play godkjenner appen, kjor disse stegene:

## 1. Hent Play Store URL
- Apne Google Play Console → LearningKidz → Store listing
- URL-format: `https://play.google.com/store/apps/details?id=com.adeait.learningkidz`

## 2. Oppdater nettsiden
```bash
cd C:\Users\Tex\Projects\12-bonk-games
bash launch-day-update.sh "https://play.google.com/store/apps/details?id=com.adeait.learningkidz"
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

## 4. Deploy
```bash
git add index.html
git commit -m "feat: LearningKidz is LIVE on Google Play"
git push
```
GitHub Pages deployer automatisk innen 1-2 minutter.

## 5. Verifiser live
- Apne https://bonkgames.no
- Sjekk at "Ute na!"-badge vises
- Klikk Google Play-knappen — verifiser at den apner riktig listing
- Test pa mobil ogsa

## 6. Sosiale medier
### Instagram
> LearningKidz er LIVE pa Google Play! 30 laeringsspill for barn 4-8 ar. Bokstaver, tall, former, ord og hukommelse — alt gjennom lek. 6 spill er helt gratis. Ingen reklame, ingen sporing. Lenke i bio!
> #barnespill #laering #learningkidz #bonkgames #edtech #norskapp #barnleker

### TikTok
> Vi lanserte nettopp var forste app! LearningKidz — 30 laeringsspill for barn. Helt uten reklame. Link i bio!

## 7. E-post til abonnenter
Send via Formspree eller manuelt til innsamlede e-poster.

## 8. Oppdater Obsidian
- Sett LearningKidz status til "LIVE" i INDEX.md
- Oppdater dashboard.md med lanseringsdato
