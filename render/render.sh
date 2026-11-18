#!/usr/bin/env bash
# Render the news image from render/news.html to entry.png.
#
# QUIRK: Chromium's --screenshot at --window-size=1024,1024 silently drops
# the bottom ~46-90px of the page. Work around it by shooting at 1024x1200
# and cropping the top 1024 rows with PIL. Always use this script to
# re-render; never screenshot at 1024x1024 directly.
set -euo pipefail
DIR="$(cd "$(dirname "$0")/.." && pwd)"
CHROME="${CHROME:-$HOME/.cache/ms-playwright/chromium-1187/chrome-linux/chrome}"
"$CHROME" --headless --disable-gpu --no-sandbox --hide-scrollbars \
  --force-device-scale-factor=1 \
  --window-size=1024,1200 \
  --screenshot="$DIR/.shot-tall.png" \
  "file://$DIR/render/news.html"
python3 - "$DIR" <<'PYEOF'
import sys
from PIL import Image
d = sys.argv[1]
im = Image.open(f"{d}/.shot-tall.png")
im.crop((0, 0, 1024, 1024)).save(f"{d}/entry.png", optimize=True)
out = Image.open(f"{d}/entry.png")
print("entry.png:", out.size, out.format)
PYEOF
rm -f "$DIR/.shot-tall.png"
