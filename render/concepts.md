# News-image v2 — Concept exploration & art direction
## Tuesday 17 November 2026 · competition news-image-20261117

## Phase 1 — Research (summary)
- Deliverable: one 1024×1024 image, ≤1 MiB, copied byte-for-byte by a stdlib-only
  program. Rendered at build time from HTML/CSS; never AI image generation.
- Judge (pairwise, criteria in order): (1) names the day + real events of that day,
  (2) breadth across regions and fields, (3) reads — every story clear from the
  image alone, (4) faithful — nothing false or hyped, (5) craft — one clear
  composition, legible at ~300px, no garbled text.
- Type floors (300px legibility): masthead date ≥64px, headlines ≥40px,
  dek ≥34px, nothing below 26px. Contrast ≥4.5:1 body. Total ≤120 words.
- Stories (verified brief, ranked by consequence): 1. Ukraine strikes Kerch Bridge
  (Europe, conflict) — road span falls into the strait; Kyiv calls it
  "unprecedented". 2. US–Iran trade blows (Middle East, conflict) — US jets hit
  Qeshm; Iran drones target Bahrain radar. 3. Trump opens Asia trip (Asia,
  diplomacy) — ASEAN opens in Manila; Xi and Putin due Thursday. 4. Nvidia chip
  crackdown widens (tech/economy) — new US limits hit Malaysia, Indonesia,
  Thailand. 5. US loses measles-free status (Americas, health) — ends after
  26 years: 5,400 cases, 10 deaths. 6. EU plans Rwanda return hub (Europe,
  migration) — five states to send rejected asylum seekers to Rwanda.
  6 stories, 4 regions, 5 fields.
- v1 was a conventional newspaper layout (masthead + lead + 2-column grid).
  v2 must be fundamentally different in visual architecture, not a re-skin.

## Phase 2 — Eight concepts

### 1. The Signal Atlas
Dark navy field; thin latitude/longitude graticule; seven glowing nodes placed at
the stories' true geographic positions, connected by arcs to the lead node; the
date as huge vertical type down the left edge; story labels as callouts.
Strength: breadth is visible geographically at a glance; unmistakably "world".
Weakness: callout labels crowd at 300px; map accuracy demands care; the map
eats the space the deks need.

### 2. Isometric City of News
Axonometric 3D: each story is an isometric tower on a grid, height =
consequence; the Kerch Bridge as a broken isometric bridge centerpiece; warm
dusk palette, long shadows. Strength: memorable 3D storytelling, hierarchy made
physical. Weakness: isometric drawing is complex to execute well; text on 3D
faces hurts legibility; towers compete with the words.

### 3. Cinematic Film Strip
Lead story as a wide cinematic "film still" — a drawn dusk scene of the broken
bridge over dark water — with the other stories as a vertical film strip of
frames, sprocket holes, scene numbers as timestamps. Dark, moody, letterboxed.
Strength: strong narrative drama; the lead dominates the frame.
Weakness: film-strip frames are small; deks get cramped; the mood can read as
decoration rather than information.

### 4. Bauhaus Data Poster
Pure geometric abstraction: circles, triangles, bars as the information
architecture; each story a geometric glyph; huge stacked experimental type;
red/black/cream Swiss palette; asymmetric grid. Strength: extremely distinctive,
reads well small, confident. Weakness: abstraction can obscure what each story
IS (judge criterion 3 risk); glyphs need labels to carry meaning anyway.

### 5. Orbit / Satellite View
Earth as a large central circle with stylized continents; stories as satellites
on orbit rings with callout labels; the date wraps as an orbital ring;
space-dark background, thin lines. Strength: beautiful, global, memorable.
Weakness: labels on curved paths are hard to read; clutter risk at 300px;
the metaphor fights the text.

### 6. Asymmetric Editorial / De Stijl
Brutalist magazine: giant rotated date, diagonal color bands, staggered
oversized numerals, one red accent, large negative space. Strength: bold,
editorial, hierarchy by scale alone. Weakness: diagonal/rotated text hurts
readability; rotation risks collisions; can tip into style over substance.

### 7. Timeline River
The day as a flowing horizontal river; stories as tributaries joining it; the
Kerch collapse as a dam break in the river; organic waves against sharp type;
a dawn-to-dusk color progression. Strength: the "one day" idea is literal and
poetic; the break in the river is a strong image. Weakness: the river eats
space; stories compete with the metaphor; wavy geometry is hard to keep clean.

### 8. The Blueprint (CHOSEN)
Technical-drawing language: a deep blueprint-blue field with a faint
engineering grid; the bridge drawn as an elevation with dimension ticks and a
broken span; stories as white annotation sheets pinned asymmetrically, each
with a numbered rank chip and a blueprint-line icon; a title-block masthead
with a giant numeral date; a compass rose. Strength: immediately different
from every newspaper entry; technical line art is bold at 300px; white panels
guarantee text contrast; the bridge drawing is a memorable hero visual; the
numbered chips make the ranking explicit. Weakness: must avoid feeling cold
or gimmicky; panels must not degrade into generic cards — asymmetry and the
drawing language carry the identity.

## Phase 3 — Art direction (chosen: #8 The Blueprint)

Borrowed elements: the asymmetric stagger of #6 (columns of unequal width,
rows of unequal height), the cartographic flavor of #1 (compass rose, faint
graticule grid, title-block framing). Rejected: the full map of #1 (a map band
plus six deks cannot fit at the type floors — the skill's own rule is to cut
a story rather than shrink type, and the map would have forced exactly that
trade in reverse); the 3D of #2 and the curves of #5 (legibility risk at
300px); the pure abstraction of #4 (criterion 3 risk).

### Visual specification
- Canvas 1024×1024. Background: deep blueprint blue #0E2F5C with a faint
  engineering grid (white 5% lines every 32px) and a fainter graticule arc.
- Palette: field #0E2F5C, panel white #FFFFFF, ink #0E2F5C, accent amber
  #E8B400 (chips, kicker, the break star — never as small text on white),
  muted ink #334F6E for deks. White on #0E2F5C ≈ 12:1; #0E2F5C on white
  ≈ 12:1; #E8B400 on #0E2F5C ≈ 7.5:1; #334F6E on white ≈ 7:1.
- Fonts (installed, no network): Noto Sans Display Black/ExtraBold for the
  masthead numeral and headlines; Noto Sans Regular for deks and footer.
- Masthead (0–132): giant "17" (Display Black, 124px, white) at left;
  stacked "NOVEMBER 2026" (52px ExtraBold) and "TUESDAY · WORLD NEWS"
  (28px amber, letterspaced); compass rose SVG at right; 3px white rule.
- Lead (144–376): white panel, 24px margins. Left: bridge elevation SVG —
  two towers, broken middle span with a falling section and amber break star,
  wave lines, dimension ticks, dashed center line; blue lines on white.
  Right: amber "01" chip, headline "Ukraine Strikes Kerch Bridge" (46px),
  dek "Crimea road span falls into the strait; Kyiv: 'unprecedented'."
  (34px).
- Stories (384–984): five more stories as white annotation sheets with amber
  registration corner ticks. Row 1 (384–624): 02 US–Iran (left, wide) +
  03 Trump Asia (right, narrow). Row 2 (632–872): 04 Nvidia (left, narrow)
  + 05 Measles (right, wide) — the seam jogs between rows. Strip (880–984):
  06 Rwanda, full width. Each panel: amber number chip (dark-blue number),
  one blueprint-line SVG icon (drone+radar, plane+pin, chip, virus),
  headline 40px ExtraBold, dek 34px.
- Footer (984–1024): "All events first reported 17 Nov 2026 · Sources: BBC,
  Foreign Exchanges" (26px white on blue, centered).
- Word budget: ~100 visible words (cap 120).
- Render: self-contained HTML/CSS → Chromium screenshot at 1024×1200,
  cropped to the top 1024 rows with PIL (Chromium drops the bottom ~46–90px
  at 1024×1024). Verify: dimensions, bytes, 300px read-through, determinism.
