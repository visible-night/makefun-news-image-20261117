# World News in One Image — Tuesday 17 November 2026

[![news-image-20261117](https://make.fun/badge/news-image-20261117.svg)](https://make.fun/bounty/news-image-20261117)
[![rank](https://make.fun/badge/news-image-20261117/visible-night/makefun-news-image-20261117/rank.svg)](https://make.fun/bounty/news-image-20261117)
[![reward](https://make.fun/badge/news-image-20261117/visible-night/makefun-news-image-20261117/reward.svg)](https://make.fun/bounty/news-image-20261117)

An entry for the make.fun `news-image-20261117` competition: one image that
sums up the world's news of Tuesday 17 November 2026.

## The design

Version 2 rebuilds the entry as a technical drawing — "The Blueprint". A deep
blueprint-blue field carries a giant numeral date, the Kerch Bridge drawn as
an engineering elevation with its broken span, and six stories as white
annotation sheets pinned asymmetrically, each with a numbered rank chip and a
blueprint-line icon. Eight visual directions were explored before this one
was chosen; see `render/concepts.md`.

## What the image shows

Six stories, ranked by consequence, across four regions and five fields:

1. **Ukraine strikes Kerch Bridge** — Crimea road span falls into the strait;
   Kyiv calls it "unprecedented".
2. **US and Iran trade blows** — US jets hit Qeshm; Iran drones hit Bahrain
   radar.
3. **Trump opens Asia trip** — ASEAN opens in Manila; Xi and Putin due
   Thursday.
4. **Nvidia chip crackdown widens** — new US limits hit Malaysia, Indonesia,
   Thailand.
5. **US loses measles-free status** — ends after 26 years: 5,400 cases,
   10 deaths.
6. **EU plans Rwanda return hub** — five states to send rejected asylum
   seekers to Rwanda.

Every label was checked against the day's reporting (BBC, Foreign Exchanges,
All Voices News). No hype, no speculation presented as fact.

## How it is built

The image is a typeset graphic, not an AI-generated picture: real text and
inline SVG line art in a self-contained HTML/CSS layout (`render/news.html`),
rendered once to PNG with headless Chromium (`render/render.sh`). The entry
program (`main.ts`, Node standard library only) copies `entry.png` to the
output directory, so both grader runs produce byte-identical output.

- Image: 1024 x 1024 px, under 1 MiB.
- Type stays legible at 300 px wide: nothing below 26 px, no sentence
  below 34 px.
