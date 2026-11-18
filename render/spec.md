# Spec — news-image-20261117

day: "Tuesday 17 November 2026"
canvas: 1024x1024
paradigm: masthead + lead + grid
colors: { background: "#F7F3EC", ink: "#1A1A1A", accent: "#B3261E", muted: "#6B6259", rule: "#D8D0C4" }

layout:
  masthead: 0-88px — date 64px bold, centered
  double rule: 88-104px — 3px + 1px ink rules
  lead: 104-312px — Kerch Bridge, headline 52px + dek 34px + bridge SVG right
  grid: 312-978px — stories 2-7, 2 columns x 3 rows, headline 40px + dek 34px, small flat icon each
  footer: 978-1024px — "All events first reported 17 Nov 2026", 26px muted

copy:
  total_words: 115
  stories:
    1. lead — Ukraine Strikes Kerch Bridge / Crimea road span falls into the strait; Kyiv calls it 'unprecedented'. (Europe, conflict)
    2. US and Iran Trade Blows / US jets hit Qeshm Island; Iran drones target US radar in Bahrain. (Middle East, conflict)
    3. Trump Opens Asia Trip / ASEAN summit opens in Manila; 1,500 protest, Xi and Putin due Thursday. (Asia, diplomacy)
    4. Nvidia Chip Crackdown Widens / Malaysia, Indonesia, Thailand face new US chip-export limits. (Tech/economy)
    5. US Loses Measles-Free Status / Status ends after 26 years; 5,400 cases, 10 deaths this year. (Americas, health)
    6. Japan Scrambles Fighter Jets / Japan: two suspected Russian aircraft violated its airspace. (Asia, security)
    7. EU Plans Rwanda Return Hub / Five states to send rejected asylum seekers to Rwanda; pilot in 2027. (Europe, migration)

regions: Europe, Middle East, Asia, Americas (4)
fields: conflict, diplomacy, tech/economy, health, security, migration (6)

render: headless Chromium screenshot at 1024x1200, cropped to 1024x1024 with PIL (see render.sh)
