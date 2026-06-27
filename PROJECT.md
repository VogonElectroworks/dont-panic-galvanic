# PROJECT.md - DIY Electrolysis Guide

## Project Overview

**Goal:** Create a beginner-friendly guide for building and using a DIY open-hardware electrolysis device.

**Hosting:** ReadTheDocs

**Background:** Several open-source projects exist but are difficult to access for non-technical people.

## Reference Projects

### Original (scd31/netcat)
- **Hardware/Firmware:** https://gitlab.scd31.com/sophie/hair-electrolysis-machine-hardware
- **Documentation:** https://www.scd31.com/posts/diy-hair-electrolysis-machine/

### Forks
1. **KibbieKatt (JLCPCB optimization):** https://github.com/KibbieKatt/hair-electrolysis-machine-hardware
2. **zoemaestra (USB-C modernization):** https://github.com/zoemaestra/hair-electrolysis-machine-usb-c
3. **annaaurora (USB-C & optimized BOM):** https://codeberg.org/annaaurora/hair-electrolysis-machine-hardware

## Current Status

**Phase:** Internationalization complete, ReadTheDocs release in preparation

**Progress:** ~85 %

### Completed
- [x] Project structure created
- [x] Git repository initialized
- [x] Reference repos cloned & analyzed (scd31, KibbieKatt, zoemaestra, annaaurora, firmware)
- [x] Chapter framework created (17 chapters in docs/)
- [x] Fork comparison verified against reference repos (hardware-selection.md)
- [x] PCB manufacturing guide restructured (Release vs. KiCad Plugin)
- [x] Enclosure chapter created & expanded (3d-printing.md)
- [x] Needle pen chapter created (pen.md)
- [x] Final assembly chapter created (final-assembly.md)
- [x] Modding chapter created (modding.md: silkscreen & case modding)
- [x] `assembly.md` split into individual chapters
- [x] Legal disclaimers written (safety-legal.md + single source of truth)
- [x] README.md vs docs/index.md disentangled
- [x] Fork evaluations corrected (USB data, 5V routing)
- [x] Navigation restructured (topic groups in mkdocs.yml)
- [x] **Internationalization (i18n):** mkdocs-static-i18n, docs/de/ + docs/en/, nav per language
- [x] **German translation completed** (all 17 chapters)
- [x] Disclaimers split by language (disclaimer.de.md + disclaimer.en.md)
- [x] SEO optimization (site_name per language, clarification block on start pages)

### In Progress
- [x] Firmware details (configuration, updates, menu navigation)
- [ ] Images & screenshots (placeholders exist, real images missing)
- [ ] ReadTheDocs live deployment preparation

## Target Audience

- **Primary:** Beginners with no deep electronics knowledge
- **Secondary:** Makers with some building experience
- **Language:** Multiple languages via ReadTheDocs language switcher (currently English and German)

## Technical Challenges & Status

1. **KiCad files → manufacturing data** (Gerber, BOM, CPL) – ✅ Solution documented (release files or KiCad plugin)
2. **PCBA assembly** (SMD vs. THT) – ✅ Explained in pcb-manufacturing.md (recommendation: order PCBA)
3. **Firmware flashing** (Rust compilation vs. pre-built binaries) – 🔧 Documented in firmware.md
4. **Enclosure** (3D printing or alternative) – ✅ 3d-printing.md created
5. **Safety & legal** (liability, CE marking, medical devices) – ✅ safety-legal.md with disclaimer
6. **Fork selection** (differences in USB data, 5V routing, cost) – ✅ hardware-selection.md verified

## Next Steps

1. Create images & screenshots (soldering, KiCad, display)
2. Detail firmware configuration (menus, settings)
3. Prepare ReadTheDocs deployment
4. Community channel set up (GitHub Discussions)

---

**Last updated:** 2026-06-29
**Editor:** Project Lead + AI Assistant (Phase 6 completed: i18n + German translation)
