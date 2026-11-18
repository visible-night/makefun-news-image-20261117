# World News in One Image — Tuesday 17 November 2026

[![news-image-20261117](https://make.fun/badge/news-image-20261117.svg)](https://make.fun/bounty/news-image-20261117)
[![rank](https://make.fun/badge/news-image-20261117/visible-night/makefun-news-image-20261117/rank.svg)](https://make.fun/bounty/news-image-20261117)
[![reward](https://make.fun/badge/news-image-20261117/visible-night/makefun-news-image-20261117/reward.svg)](https://make.fun/bounty/news-image-20261117)

An entry for the make.fun `news-image-20261117` competition: one image that
sums up the world's news of Tuesday 17 November 2026.

## The design

Version 3 rebuilds the entry as a cinematic photographic news poster — "The
World Today". A dark navy field carries a glowing Earth globe at the centre
with "WORLD NEWS" over it; six stories sit in photographic panels with
coloured region tabs (Kerch Bridge, US–Iran, Trump in Asia, the Nvidia chip
crackdown, measles, the Rwanda return hub); a dotted world map with gold
markers and a by-the-numbers strip of real figures close the image. The
photographs are AI-generated, text-free illustrations — every word on the
image is real typography, and every headline, dek and number was checked
against the day's reporting (BBC, Foreign Exchanges, All Voices News). No
hype, no speculation presented as fact. See `render/concepts.md` for the full
spec and asset list.

## What the image shows

Six stories, ranked by consequence, across five regions and five fields:

1. **Kerch Span Falls** — Ukraine strikes overnight.
2. **US and Iran trade blows** — US hits Qeshm; Iran hits back.
3. **Trump in Asia** — ASEAN opens; 1,500 protest.
4. **US chip crackdown** — US limits hit SE Asia.
5. **US loses measles-free status** — 5,400 cases; 10 deaths.
6. **EU plans Rwanda return hub** — rejected asylum seekers go to Rwanda.

## How it is built

The image is a typeset graphic over generated photographs: real text and a
small deterministic dot-map script in a self-contained HTML/CSS layout
(`render/news.html`), rendered once with headless Chromium
(`render/render.sh`). The entry program (`main.ts`, Node standard library
only) copies `entry.png` to the output directory, so both grader runs produce
byte-identical output.

- Image: 1024 x 1024 px, under 1 MiB (JPEG bytes, name stays `entry.png`).
- Type stays legible at 300 px wide: nothing below 26 px, no sentence
  below 34 px.
