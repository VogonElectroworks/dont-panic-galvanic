# Contributing

Thank you for wanting to contribute to this documentation!
Everyone can help — whether you're a tech expert or a complete beginner.

## 🛠 How to Contribute

### 1. Report Bugs (Issues)
Found a typo? Instructions unclear?
Open an [Issue](https://github.com/VogonElectroworks/dont-panic-galvanic/issues) with:
- Description of the problem
- Which chapter is affected
- Suggestion for improvement

### 2. Suggest Improvements (Pull Requests)

Don't know git or GitHub yet? No problem — here's every step explained in detail.

The idea is simple:
1. You make a copy of this project (a **fork**).
2. You edit your copy.
3. You ask us to pull your changes back into the original project (a **Pull Request**).

---

#### Step-by-Step

**① Fork the repository**

Go to [github.com/VogonElectroworks/dont-panic-galvanic](https://github.com/VogonElectroworks/dont-panic-galvanic).
In the top-right corner, click the **Fork** button (it looks like a fork icon 🍴).
GitHub will create a copy of the project under *your* GitHub account — you now own this copy and can edit it freely.

**② Clone your fork to your computer**

"Clone" means downloading the repository to your computer so you can edit the files.

- On your fork's GitHub page (the copy you just created), click the green **Code** button.
- Copy the URL that appears (it looks like `https://github.com/YOUR_USERNAME/dont-panic-galvanic.git`).
- Open a terminal (Command Prompt on Windows, Terminal on Mac/Linux).
- Type the following and press Enter:

  ```bash
  git clone https://github.com/YOUR_USERNAME/dont-panic-galvanic.git
  ```

  (Replace `YOUR_USERNAME` with your actual GitHub username.)

- This creates a folder called `dont-panic-galvanic` on your computer.
- Switch into that folder:

  ```bash
  cd dont-panic-galvanic
  ```

> **Don't want to use the terminal?** Try [GitHub Desktop](https://desktop.github.com/) — a free app where you can clone, commit, and push with buttons instead of commands.

**③ Create a branch**

A branch is like a separate workspace for your changes — it keeps them isolated from the main project.

```bash
git checkout -b fix-typo-chapter3
```

Give your branch a short descriptive name (no spaces, use hyphens). Examples:
- `fix-typo-chapter3`
- `improve-soldering-instructions`
- `add-german-translation`

**④ Edit the files**

Open the `dont-panic-galvanic` folder on your computer.
The documentation files are in:
- `docs/en/` — English chapters
- `docs/de/` — German chapters

Edit them with any text editor (Notepad, TextEdit, VS Code — even Word works if you save as plain text).
The files are in **Markdown** format (`.md`), which is a simple way to write formatted text.

**⑤ Commit your changes**

"Commit" means saving a snapshot of your changes with a description of what you did.

```bash
git add -A
git commit -m "Fix typo in chapter 3"
```

The message in quotes should briefly describe what you changed (in English). Examples:
- `"Fix spelling mistakes in soldering guide"`
- `"Add missing step about display connection"`
- `"Improve explanation of lye units"`

**⑥ Push your branch to GitHub**

Your commit is still only on your computer. "Push" uploads it to your fork on GitHub.

```bash
git push origin fix-typo-chapter3
```

(The name at the end must match the branch name you used in step ③.)

**⑦ Create a Pull Request**

Now go back to [github.com/VogonElectroworks/dont-panic-galvanic](https://github.com/VogonElectroworks/dont-panic-galvanic) in your browser.
You should see a yellow banner saying "fix-typo-chapter3 had recent pushes" with a **Compare & pull request** button — click it.

If you don't see the banner:
- Click the **Pull requests** tab at the top.
- Click the green **New pull request** button.
- Click **compare across forks** (in blue text).
- Set "base repository" to `VogonElectroworks/dont-panic-galvanic` and "head repository" to your fork.

Add a short description of what you changed, then click **Create pull request**. Done!

### 3. Translations
The documentation is available in multiple languages (currently English and German).
If you want to add a new language or improve existing translations:
- English chapters: `docs/en/`
- German chapters: `docs/de/`
- New languages go into a new `docs/<code>/` folder (e.g. `docs/fr/` for French)
- Register the language in `mkdocs.yml` under `plugins.i18n.languages` with a `nav_translations` section
- Use the glossary in [TERMINOLOGY.md](TERMINOLOGY.md) for consistent terminology

---

## 📝 Writing Style

- **Target audience:** Beginners without electronics knowledge
- **Tone:** Friendly, matter-of-fact, no jargon without explanation
- **Language:** English (primary language of the repo), other languages available via the ReadTheDocs language switcher
- **Structure:**
  - Clear headings (H1, H2, H3)
  - Bullet points instead of long text blocks
  - **Admonitions** for important information:
    ```markdown
    !!! warning "Safety Notice"
        Only use the device when the device is unplugged from the power supply!
    ```
- **Standard orthography only:** Use the standard orthographic forms of the target language. Do not use politically-motivated word forms such as gender stars, underscores, colons, interpuncts, schwa, @, x, or similar non-standard characters or modified spellings intended as inclusive language.
- **MkDocs/Markdown: ALWAYS add a blank line before lists.** Python-Markdown only recognizes lists as block elements when preceded by a blank line. Without it, lists are rendered as inline text. This applies to:
  - Bullet lists (`- item`) after a paragraph, admonition tag (`!!! info`) or `**bold**`
  - Numbered lists (`1. item`) after a paragraph
  - Tables (`| Cell |`) after a paragraph
  - **Not needed** after headings (`##`, `###`) – those automatically break the block
- **Consistent terminology:** Use the glossary in [TERMINOLOGY.md](TERMINOLOGY.md) for all technical terms

---

## 🖥 Local Development

To preview your changes locally before opening a Pull Request, you can run MkDocs on your own machine.

### Prerequisites

- **Python 3.8+** installed on your system
- **pip** (Python package manager)

### Install Dependencies

Open a terminal and run:

```bash
pip install mkdocs-material mkdocs-glightbox mkdocs-static-i18n
```

#### Platform-specific Notes

> **Tip:** It's a good practice to use a virtual environment so the packages don't interfere with other Python projects.

| Platform | Python / pip | Notes |
|----------|-------------|-------|
| **Linux** (Debian/Ubuntu) | `sudo apt install python3 python3-pip` | Use `pip3` instead of `pip` if `pip` points to Python 2. |
| **macOS** | `brew install python` (via Homebrew) or use the system Python from Xcode Command Line Tools. | Prefer a virtual environment: `python3 -m venv venv` then `source venv/bin/activate`. |
| **Windows** | Download from [python.org](https://python.org) — check **"Add Python to PATH"** during installation. | Use a virtual environment: `python -m venv venv` then `venv\Scripts\activate`. If that fails, try `py -m pip install ...`. |

### Start the Dev Server

From the project root (`electrolysis-guide/`), run:

```bash
mkdocs serve
```

This starts a local server at **http://127.0.0.1:8000**.
The page automatically reloads when you edit any Markdown file — just refresh your browser.

### Build the Static Site

To generate the full static HTML site (as ReadTheDocs would):

```bash
mkdocs build
```

The output goes into the `site/` directory.

---

## 🤖 Using OpenClaw for Translations

If you use OpenClaw for translation, use the glossary in [TERMINOLOGY.md](TERMINOLOGY.md) for consistent terminology.

Example prompt:

```markdown
Translate the file `docs/assembly.md` into English.
Use the glossary in TERMINOLOGY.md for consistent terminology.
Keep the Markdown formatting and adjust admonitions as needed.
```

---

## 📖 Chapter Review Process

We're looking for volunteers to review chapters for technical accuracy and clarity.
Each chapter (in each available language) has a corresponding **GitHub Issue** with a checklist.

### How to volunteer

1. **Browse** the [open review issues](https://github.com/VogonElectroworks/dont-panic-galvanic/issues?q=is%3Aissue+is%3Aopen+label%3A%22status%3A+needs-review%22).
2. **Comment** on the issue you'd like to review.
3. **Assign yourself** (if you have write access) or ask to be assigned.

### What to check

- **Technical accuracy:** Does the content match the actual hardware/firmware behavior?
- **Clarity:** Are the instructions clear and complete? Any missing steps?
- **Links:** Do cross-references to other chapters work?
- **Spelling & grammar:** In all available languages.
- **TODOs:** Any remaining TODO markers that should be resolved.

### Submitting your review

1. **Fork** the repository.
2. **Create a branch:** `git checkout -b review/chapter-name`
3. **Make your edits** (fixes, corrections, improvements).
4. **Commit:** `git commit -m "review: fix technical inaccuracies in firmware.md"`
5. **Push:** `git push origin review/chapter-name`
6. **Open a Pull Request** referencing the issue number (e.g., `Closes #5`).

### Status tracking

The project uses GitHub labels to track review progress:

| Label | Meaning |
|-------|---------|
| `status: needs-review` | Waiting for a reviewer |
| `status: in-review` | Someone is working on this chapter |
| `status: reviewed` | Review complete, changes merged |

---

## 📋 Checklist for New Chapters

When adding a new chapter:
- [ ] Create file in each available language directory (`docs/en/`, `docs/de/`, ...).
- [ ] Add to `mkdocs.yml` under `nav:` and add `nav_translations` entries for each language in `plugins.i18n.languages`.
- [ ] Check cross-references to other chapters (links work within each language).
- [ ] Upload images/diagrams to `docs/assets/`.
- [ ] Check spelling.

---

## 💬 Community

- **Questions & Discussions:** [GitHub Discussions](https://github.com/VogonElectroworks/dont-panic-galvanic/discussions)
- **Bug reports:** [GitHub Issues](https://github.com/VogonElectroworks/dont-panic-galvanic/issues)

---

**Thank you for your help!** 🎉
