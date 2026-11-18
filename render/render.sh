#!/bin/bash
# Render render/news.html to entry.png at exactly 1024x1024 with headless Chromium.
# NOTE: a --window-size=1024,1024 screenshot silently drops the bottom ~46px
# of the page in this Chromium build, so render tall (1200px) and crop to the
# top 1024x1024 with PIL. Layout positions are identical either way.
set -e
DIR="$(cd "$(dirname "$0")/.." && pwd)"
CHROME="$HOME/.cache/ms-playwright/chromium-1187/chrome-linux/chrome"
"$CHROME" --headless=new --no-sandbox --disable-gpu --hide-scrollbars \
  --force-device-scale-factor=1 --window-size=1024,1200 \
  --screenshot="$DIR/.tall.png" "file://$DIR/render/news.html" 2>/dev/null
python3 -c "
from PIL import Image
im = Image.open('$DIR/.tall.png')
im.crop((0, 0, 1024, 1024)).save('$DIR/entry.png')
im2 = Image.open('$DIR/entry.png')
print('entry.png:', im2.size, im2.mode)
"
rm -f "$DIR/.tall.png"
stat -c 'bytes: %s' "$DIR/entry.png"
