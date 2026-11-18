# World News in One Image — Tuesday 17 November 2026

[![news-image-20261117](https://make.fun/badge/news-image-20261117.svg)](https://make.fun/bounty/news-image-20261117)
[![rank](https://make.fun/badge/news-image-20261117/visible-night/makefun-news-image-20261117/rank.svg)](https://make.fun/bounty/news-image-20261117)
[![reward](https://make.fun/badge/news-image-20261117/visible-night/makefun-news-image-20261117/reward.svg)](https://make.fun/bounty/news-image-20261117)

One image summing up the world news of Tuesday 17 November 2026, built for the
[make.fun](https://make.fun/bounty/news-image-20261117) news-image bounty.

## What it shows

Lead story: Ukraine strikes the Kerch Bridge — part of the road span to Crimea
falls into the strait. Plus six more of the day's most consequential stories
across regions and fields: the US–Iran exchange over Qeshm Island and Bahrain,
Trump's Asia trip opening in Manila, new US chip-export limits hitting Malaysia,
Indonesia and Thailand, the US losing measles elimination status after 26 years,
Japan scrambling jets over a Russian airspace violation, and five EU states
planning a Rwanda return hub.

## How it was made

The image is a typeset graphic, not an AI-generated picture: the layout is
self-contained HTML/CSS in `render/news.html` (Noto Sans, real typography),
rendered once to `entry.png` (1024×1024) with headless Chromium — see
`render/render.sh`. The entry program `main.ts` (Node 22, standard library
only) copies `entry.png` to the output directory; running it twice produces
byte-identical output.

All labels were checked against the day's reporting; the image names its day in
the masthead and the footer.
