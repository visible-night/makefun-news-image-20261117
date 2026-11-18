# Polish log — news-image v2 (17 November 2026)

Design: "The Blueprint" — deep blueprint-blue field, giant numeral date,
bridge elevation drawing, white annotation-sheet story panels, numbered rank
chips, blueprint-line icons. See render/concepts.md for the 8 explored
directions and the full spec.

## Draft 1 — first render (2026-11-18, 202,666 bytes)
What worked: masthead (giant 17 + NOVEMBER 2026 + amber weekday) is
unmissable; blueprint-blue field is immediately distinct from a newspaper;
bridge elevation reads as a broken bridge; lead text clean; strip works.
Three worst things found on the full-size look:
1. CRITICAL — dek text overflows panels 02–05: the second dek line is clipped
   mid-glyph at each panel's bottom edge. Content needed ~240px, panels were
   220px. Fix: rework the vertical geometry (masthead 132, lead 232, story
   rows 240, strip 104, footer 40) and tighten panel padding/chips.
2. Footer text clipped at the right edge ("News" cut off). Fix: shorten to
   "Sources: BBC, Foreign Exchanges".
3. Bridge falling section reads as a small dark slash; jet icon (02) reads as
   a paper plane. Fix: bigger, lower, more rotated falling section (32 deg),
   thicker deck, bigger break star; redraw icon 02 as a quadcopter drone with
   radar arcs; give icon 03 a proper map pin.
Also: added amber registration corner ticks on all panels (blueprint identity)
and flipped the row-2 column widths (left narrow, right wide) so the vertical
seam jogs between rows — a pinwheel asymmetry.

## Draft 2 — second render (2026-11-18, 203,622 bytes)
Fixed: dek clipping gone in panels 02, 03, 05; footer fits; corner ticks read
as blueprint registration marks; flipped row-2 columns give a pinwheel seam;
drone icon and map pin read clearly; falling bridge section is unmistakable.
One problem left: panel 04 (Nvidia, now in the narrow column after the flip)
still clips its dek — "Thailand." is cut at the panel edge because the dek
wraps to 3 lines in the narrower panel. Fix: shorten the dek to "US limits
hit Malaysia, Indonesia, Thailand." (44 chars, 2 lines). Also improved dek 02
wording ("hit... hit" repetition → "US jets strike Qeshm; Iran drones hit
Bahrain radar.").
At 300px everything reads except the clipped "Thailand." — this draft should
resolve it.

## Draft 3 — final (2026-11-18, 201,697 bytes)
Panel 04's dek now fits fully on two lines; every story is fully readable at
full size and at 300px. Final check: date unmissable (giant 17 + NOVEMBER
2026 + TUESDAY), all six headlines and deks read at 300px, bridge reads as a
broken bridge with a break star, no clipped text anywhere, footer fits,
~100 visible words (cap 120). No further fixes found on a full look — ship it.
