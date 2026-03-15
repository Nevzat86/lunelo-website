#!/bin/bash
# LearningKidz Launch Day — bonkgames.no update script
# Usage: bash launch-day-update.sh "https://play.google.com/store/apps/details?id=com.adeait.learningkidz"
#
# This script updates bonkgames.no to switch from "Kommer snart" to "Ute nå!"
# and inserts the actual Google Play store link.

PLAY_URL="${1:?Bruk: bash launch-day-update.sh '<Google Play URL>'}"

FILE="index.html"

if [ ! -f "$FILE" ]; then
  echo "Feil: $FILE ikke funnet. Kjor scriptet fra 12-bonk-games mappen."
  exit 1
fi

echo "Oppdaterer $FILE med Google Play-lenke: $PLAY_URL"

# 1. Change "Kommer snart" badge to "Ute nå!" with green styling
sed -i 's/<span class="badge highlight">Kommer snart<\/span>/<span class="badge live">Ute n\&aring;!<\/span>/g' "$FILE"

# 2. Replace the grey disabled store button with a real Google Play link
sed -i 's|<span class="store-button" style="background: linear-gradient(135deg, #666, #555); box-shadow: none; cursor: default;">|<a href="'"$PLAY_URL"'" target="_blank" rel="noopener" class="store-button">|' "$FILE"
sed -i 's|Kommer snart p\&aring; Google Play|Last ned p\&aring; Google Play|' "$FILE"
sed -i 's|</span><!-- store-button-end -->|</a>|' "$FILE"

# 3. Fix the closing tag (span -> a) for the store button
# The original uses </span> after the Google Play text, we need </a>
python3 -c "
import re
with open('$FILE', 'r', encoding='utf-8') as f:
    content = f.read()

# Replace the specific span closing after 'Last ned på Google Play' SVG block
content = content.replace(
    '''Last ned p&aring; Google Play
          </span>''',
    '''Last ned p&aring; Google Play
          </a>'''
)

with open('$FILE', 'w', encoding='utf-8') as f:
    f.write(content)
"

echo ""
echo "Ferdig! Endringer:"
echo "  - 'Kommer snart' -> 'Ute na!' (gronn badge)"
echo "  - Graa knapp -> Aktiv Google Play-lenke"
echo ""
echo "Neste steg:"
echo "  1. Sjekk at det ser riktig ut: open index.html"
echo "  2. git add index.html && git commit -m 'feat: LearningKidz is LIVE on Google Play'"
echo "  3. git push"
