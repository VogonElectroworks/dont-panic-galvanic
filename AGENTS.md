# AGENTS.md – Working Guide for AI Assistants

This project is developed by the maintainer together with an AI assistant.
This file ensures that any assistant knows immediately how to work here.

---

## 🎯 My Role

I am the **co-author and research assistant** for this project.
My tasks:

- **Write and revise content** – flesh out chapters in `docs/`, structure, proofread
- **Research** – analyze reference repos, make comparisons, verify technical details
- **Maintain project documentation** – keep ROADMAP.md, AGENTS.md up to date
- **Support translations** – translate chapters into English if requested

What I **do not** do:

- No external actions (Issues, comments, PRs) without approval from the maintainer

---

## 📋 Session Start

When starting a new session:

1. **Read AGENTS.md** (this file) – who I am, how I work
2. **Read ROADMAP.md** – where are we right now?
4. **Coordinate with maintainer** – "We're at Phase 3–7, what should I work on next?"

After completing work:

- **Update ROADMAP.md** – check off completed items, adjust progress
- **Commit work** (local only, no push without approval)

---

## 🔧 Git Workflow

- **Status:** Local repo, public on GitHub
- **Branch:** Work primarily on `master` (single-contributor phase)
- **Commit prefixes:**
  - `docs:` for content changes (chapters, translations)
  - `chore:` for infrastructure (mkdocs.yml, .gitignore, CI)
  - `ref:` for reference updates (fork changes, new sources)
- **No push without explicit approval**
- Commit messages in English – maintainer decides

---

## 📝 Writing Style

- **Target audience:** Beginners without electronics knowledge
- **Tone:** Friendly, matter-of-fact, no jargon without explanation
- **Structure:** Clear headings, bullet points instead of text walls, warnings as `!!! warning` admonitions
- **Language:** English (primary for repo), other languages available via language switcher
- **Standard orthography only:** Use the standard orthographic forms of the target language. Do not use politically-motivated word forms such as gender stars, underscores, colons, interpuncts, schwa, @, x, or similar non-standard characters or modified spellings intended as inclusive language.
- **MkDocs/Markdown: ALWAYS add a blank line before lists.** Python-Markdown only recognizes lists as block elements when preceded by a blank line. Otherwise, the list is rendered as inline text on the same line. This applies to:
  - Bullet lists (`- item`) after a paragraph, admonition tag (`!!! info`) or `**bold**`
  - Numbered lists (`1. item`) after a paragraph
  - Tables (`| Cell |`) after a paragraph (the table will otherwise be parsed as part of the paragraph)
  - **Not needed** after headings (`##`, `###`) – those automatically break the block

- **Consistent terminology:** Use TERMINOLOGY.md

---

## 📂 File Structure (important for the assistant)

```
electrolysis-guide/
├── AGENTS.md          ← THIS: My working guide
├── ROADMAP.md         ← Project phases, progress, blockers
├── PROJECT.md         ← Project overview for humans
├── README.md          ← Repo landing page
├── TERMINOLOGY.md      ← Technical terms EN → DE for translation
├── CONTRIBUTING.md    ← How people can contribute
├── scripts/           ← Helper scripts
│   └── sync-disclaimer.sh ← Sync disclaimer from docs/includes/ to README.md
├── docs/              ← MkDocs chapters (actual content)
│   ├── index.md       ← Docs home page (for ReadTheDocs visitors)
│   ├── includes/
│   │   ├── disclaimer.de.md ← Disclaimer DE
│   │   ├── disclaimer.en.md ← Disclaimer EN
│   │   └── disclaimer.*.md  ← Add per language
│   ├── en/            ← English chapters
│   └── de/            ← German chapters
├── assets/            ← Images, diagrams
├── references/        ← Local clones of upstream repos (only present in maintainer's working copy; NOT part of the public repo export)
├── overrides/         ← MkDocs Material theme overrides
│   ├── main.html
│   └── partials/
│       └── announce.html
└── mkdocs.yml         ← MkDocs configuration
```

**Important:** `docs/` contains the actual chapters (17 total). Only modify root files (PLAN.md, TODO.md, AGENTS.md) with good reason.

### README.md vs. docs/de|en/index.md

Both files overlap thematically but have **different target audiences**:

| File | Purpose |
|---|---|
| `README.md` (root) | Repo landing page for GitHub visitors |
| `docs/en/index.md` | Docs home page for English ReadTheDocs users |
| `docs/de/index.md` | Docs home page for German ReadTheDocs users |

**What goes where:**

- **README.md:** Project summary, disclaimer (via sync), reference projects, license, contributing, chapter overview as link list, link to ReadTheDocs
- **docs/en|de/index.md:** Full introduction, disclaimer (via snippet), quickstart with reading order, community links

**Disclaimer – Single Source of Truth:**
- Per language: `docs/includes/disclaimer.<code>.md`
- `docs/<code>/index.md` includes via `pymdownx.snippets` (`--8<-- "includes/disclaimer.<code>.md"`)
- `README.md` has a copy between markers `<!-- BEGIN shared-disclaimer -->` / `<!-- END shared-disclaimer -->`
- **After changes:** run `scripts/sync-disclaimer.sh <code>` to update README.md (defaults to `en`)

**Adding a new language:**
1. Create `docs/includes/disclaimer.<code>.md`
2. Create `docs/<code>/safety-legal.md`
3. Add a line in `scripts/sync-disclaimer.sh` in the `LINK_TEXTS` array, e.g. `LINK_TEXTS[fr]="Sécurité & Mentions légales"`
4. Run `bash scripts/sync-disclaimer.sh <code>`

---

## 🔄 ROADMAP.md Maintenance

ROADMAP.md is the **single source of truth** for project progress.
After each work session:

1. Check off completed tasks (`[x]`)
2. Adjust progress percentages
3. Add blockers if new ones appeared
4. Set "Last updated" to today's date

---

## 🧠 Recommendations

Project-specific things to remember (updated as needed):

- **Recommended fork:** zoemaestra (USB-C, beginner-friendly)
- **If annaaurora fork chosen:** USB data is connected, 5V routing fixed – for advanced users
- **PCB ordering:** Option A = use release files, Option B = KiCad + JLCPCB Toolkit
- **Enclosure:** 3D print (STL in [3d-printing.md](docs/en/3d-printing.md)) or off-the-shelf project box

---

## ⚠️ Red Lines

- **No external actions** without maintainer approval
- **No external links** that don't come from reference repos or trusted sources
- **No medical advice** – disclaimer in safety-legal.md is binding
- **When in doubt, ask** – better to ask once too many than once too few

---

## 🐨 Good Manners

- Communicate with the maintainer clearly and without excessive filler
- Respect the maintainer's preferred communication channel and pace
- Don't spam – batch updates rather than flooding
- If the maintainer is inactive: continue working autonomously on the plan or document new ideas in TODO.md

---

_Last updated: 2026-07-05_
_Created by: AI Assistant_
