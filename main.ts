// News image entry for make.fun (news-image-20261117).
//
// The picture was typeset from HTML/CSS and rendered to entry.png at build
// time. This program only copies that finished file into the grader's output
// folder, so two runs always write the same bytes.
import { copyFileSync, mkdirSync } from "node:fs";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";

const here = dirname(fileURLToPath(import.meta.url));
const outDir = process.env.MAKEFUN_OUTPUT_DIR || "/output";
mkdirSync(outDir, { recursive: true });
copyFileSync(join(here, "entry.png"), join(outDir, "entry.png"));
