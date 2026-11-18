#!/bin/bash
# Render render/news.html to ../entry.png (exactly 1024x1024, at most 1 MiB).
# Chromium's --screenshot drops the bottom ~46-90px at 1024x1024, so shoot at
# 1024x1400 and crop the top 1024 rows with PIL. No `chromium` binary in PATH;
# use the Playwright-cached Chromium instead.
set -e
cd "$(dirname "$0")"
CHROME="$HOME/.cache/ms-playwright/chromium-1187/chrome-linux/chrome"
"$CHROME" --headless=new --disable-gpu --no-sandbox --hide-scrollbars \
  --virtual-time-budget=8000 \
  --screenshot=/tmp/ni17-v3-shot.png --window-size=1024,1400 \
  "file://$PWD/news.html"
python3 - "$PWD" <<'PYEOF'
import os
import sys
from PIL import Image

d = sys.argv[1]
im = Image.open("/tmp/ni17-v3-shot.png").convert("RGB")
im = im.crop((0, 0, 1024, 1024))
out = os.path.join(d, "..", "entry.png")
im.save(out, "PNG")
if os.path.getsize(out) <= 1048576:
    print("entry.png: PNG", os.path.getsize(out), "bytes")
else:
    # Photo-rich image: JPEG fits easily; the gate tells PNG from JPEG by
    # first bytes and the name stays entry.png.
    im.save(out, "JPEG", quality=85)
    print("entry.png: JPEG", os.path.getsize(out), "bytes")
PYEOF
