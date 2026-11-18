# v3 concept — "The World Today" (cinematic photographic news poster)

## Why this direction

v1 (newspaper masthead + grid) and v2 ("The Blueprint", flat technical-drawing
panels) were both flat typographic layouts. The user rejected them outright:
"kok jelek banget jink, kek ga ada perubahan sama sekali" — they look terrible,
like nothing changed at all. He then sent a reference image ("The World Today")
showing the look he wants: dark cinematic navy, a glowing Earth globe as the
centerpiece, photographic panels per region with colored tabs, a data strip, a
world-map footer. v3 matches that visual language — photographic, cinematic,
dense, premium — while keeping every word true to the verified 17 Nov brief.
The reference's own stories and statistics are fabricated/generic and are NOT
used anywhere.

## Assets (all AI-generated, all TEXT-FREE — every word is real HTML typography)

- `assets/globe.jpg` — Earth from space at night, glowing city lights; square
  crop (500x500) of the generated 800x533 frame, centred on the disc.
- `assets/kerch.jpg` — suspension bridge over a strait at night, middle span
  collapsed into the water, smoke, orange glow on the horizon.
- `assets/iran.jpg` — warship and oil tanker in a strait at dusk.
- `assets/manila.jpg` — Manila skyline on the bay at dusk.
- `assets/chip.jpg` — glowing semiconductor wafer, gold circuits on dark blue.
- `assets/measles.jpg` — vaccine vial and syringe on a medical tray (no labels).
- `assets/rwanda.jpg` — Kigali skyline with green hills at golden hour.

All seven generated in one session, each viewed and confirmed on-topic and
text-free before use. Nothing dropped.

## Layout spec (1024x1024, dark navy #04081a)

- Masthead 0-136: "The World Today" 52px serif + "TUESDAY" 30px gold right +
  "NOVEMBER 17, 2026" 64px bold, gold rule below.
- Hero 136-650: globe circle 500px diameter centred (glow + dark radial scrim
  behind the "WORLD NEWS" 78px serif overlay + date 30px gold); four photo
  panels flanking it (300x246 each, two per side): Kerch (EUROPE/red),
  US-Iran (MIDDLE EAST/amber), Manila (ASIA/green), Nvidia (TECH/blue).
  Headlines 40px bold + deks 34px over a bottom gradient scrim.
- Row 3, 650-862: two wide photo cards (496x212): measles (HEALTH/purple),
  Rwanda (AFRICA/ochre), same text treatment.
- Bottom 862-1024: dotted world map (360x126, inline SVG built from compact
  landmass rectangles by a small deterministic script, gold markers at the five
  story locations) + by-the-numbers strip (5,400+ measles cases / 10 deaths /
  5 EU states plan hub / 26 years eliminated — all real figures from the
  brief) + footer "All events first reported 17 Nov 2026 · Sources: BBC,
  Foreign Exchanges" 26px.

## Copy budget

95 visible words (cap 120). 6 stories, 5 regions (Europe, Middle East, Asia,
Americas, Africa), 5 fields (conflict, diplomacy, tech, health, migration).
Headlines were shortened in the draft-2 polish round so none wraps past two
lines in the 276px panel text width (DejaVu Bold 40px fits ~11 chars/line).
Type floors honoured: nothing below 26px, headlines 40px, deks 34px, masthead
date 64px. White text over photos always sits on a dark gradient scrim.

## File size

The photo-rich render is JPEG-encoded (quality 85) and saved as entry.png —
the competition allows JPEG by magic bytes. PNG would exceed 1 MiB.
