# Polish log — news-image-20261117

## Round 1 — first render (1024x1024, 196,960 bytes)
Looked at the PNG. Three worst things:
1. Bottom grid row deks cut off mid-sentence ("Two suspected Russian aircraft
   accused of…", "Five states to send rejected asylum seekers…") and the
   footer was missing entirely — grid rows grew past their 213px budget
   because every dek wrapped to 3 lines.
2. Nvidia dek wrapped to 4 lines ("…face / limits." — "limits." clipped).
3. Japan dek wrapped to 4 lines for the same reason (long words, narrow cell).
Fixes: shortened the Nvidia dek to "Malaysia, Indonesia, Thailand face new US
chip-export limits." and the Japan dek to "Japan: two suspected Russian
aircraft violated its airspace."; reclaimed 26px of vertical space for the
grid (header 96→88, rule margins 6→4, lead 216→208, footer 52→46; grid
640→666, rows 222px).

## Round 2 — second render (197,361 bytes)
Rows 1–2 complete, but row 3 deks were STILL cut mid-glyph and the footer was
STILL missing. Pixel analysis showed the layout positions were exactly as
planned (rule at y=92, row borders at 312/534/756) yet y=978–1024 was pure
background. A diagnostic render at 1024x1200 showed the full layout is
correct: row 3 complete, footer at y=978–1017. Root cause: Chromium's
--screenshot with --window-size=1024,1024 silently drops the bottom ~46px of
the page in this build. Fix: render.sh now screenshots at 1024x1200 and crops
the top 1024x1024 with PIL. Re-rendered: 218,755 bytes, footer and row-3
lines confirmed present by pixel counts.

## Round 3 — final check
Viewed the final PNG at full size and downscaled to 300px. Date reads first,
lead reads second, every story readable, no garbled text, nothing cut off.
At 300px the date and all seven headlines stay legible; deks are small but
readable. Word count 115 (budget 120). All labels cross-checked against the
news brief — no hype, no speculation as fact.
