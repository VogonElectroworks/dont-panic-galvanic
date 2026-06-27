# Image Overview: Needed Illustrations

This table lists all images referenced in the documentation that are still missing.
Status: ❌ = Missing, ✅ = Already present

---

## Present (10 images) ✅

| File Name | Chapter | Description |
|-----------|---------|-------------|
| `JLCPCB2-add-gerber-file.png` | `pcb-manufacturing.md` | JLCPCB Gerber upload page (step 6.2) |
| `JLCPCB3-activate-pcb-assembly.png` | `pcb-manufacturing.md` | Enable PCBA + select quantity (step 6.3) |
| `JLCPCB4-preview-top-pcb.png` | `pcb-manufacturing.md` | PCB preview before PCBA config (step 6.3) |
| `JLCPCB5-upload-bom-and-cpl.png` | `pcb-manufacturing.md` | Upload BOM and CPL files (step 6.3) |
| `JLCPCB6-bom-check.png` | `pcb-manufacturing.md` | BOM overview with availability (step 6.3) |
| `JLCPCB7-component-placements.png` | `pcb-manufacturing.md` | Component placement check (step 6.3) |
| `JLCPCB8-quote-and-order.png` | `pcb-manufacturing.md` | Quote + product description (step 6.3) |
| `JLCPCB9-checkout.png` | `pcb-manufacturing.md` | Cart with items, shipping, checkout (step 6.4) |
| `scd31-hair-electrolysis-machine-pcb-display-side.png` | `component-sourcing.md` | OLED pinout & orientation on PCB (unlabeled) |
| `scd31-hair-electrolysis-machine-pcb-display-side-with-labels.png` | `component-sourcing.md`, `assembly.md` | OLED pinout on PCB with labeled pins (VCC, GND, SCL, SDA) |

---

## Missing — referenced in chapters (6 images) ❌

These images are actively referenced in the documentation and need to be created.

| File Name | Chapter | Description | Priority |
|-----------|---------|-------------|----------|
| `rp2040-boot-reset.png` | `firmware.md` | BOOTSEL and RESET buttons on the PCB | High |
| `firmware-menu-navigation.png` | `firmware.md` | Menu structure (Current, Duration, Settings) | High |
| `enclosure-mounting.png` | `final-assembly.md` | PCB installed in 3D-printed enclosure | Medium |
| `kicad-plugin-manager.png` | `pcb-manufacturing.md` | KiCad Plugin Manager (puzzle icon) | Medium |
| `needle-insertion.png` | `usage.md` | Needle at 45° angle (diagram) | High |
| `multimeter-ohm.png` | `multimeter-basics.md` | Multimeter set to ohms | Low |

---

## Planned but not yet referenced in chapters

These images are planned for future use but are not yet referenced in any chapter. They can be added when the corresponding chapters are expanded.

### Tools & Supplies

| File Name | Intended Chapter | Description | Priority |
|-----------|-----------------|-------------|----------|
| `pcb-top.png` | `assembly.md` | Populated PCB top view (zoemaestra fork) | Low |
| `pcb-bottom.png` | `assembly.md` | PCB bottom side | Low |
| `soldering-iron.jpg` | `assembly.md` | Soldering iron with solder | Low |
| `footpedal-jack.png` | `assembly.md` | 6.35mm jack wiring | Low |
| `needle-holder.jpg` | `component-sourcing.md` | Needle holder (Sterex F-Shank) | Low |
| `tens-pad-connection.png` | `component-sourcing.md` | TENS pad with 2mm connector | Low |

### Usage & Technique

| File Name | Intended Chapter | Description | Priority |
|-----------|-----------------|-------------|----------|
| `hair-follicle-diagram.png` | `usage.md` | Hair follicle cross-section with needle | Medium |
| `shooting-gum-method.png` | `usage.md` | Shooting gum on tweezers (photo/diagram) | Medium |
| `before-after.jpg` | `usage.md` | Result after 4 weeks (realistic) | Low |
| `current-settings.png` | `calibration.md` | Menu settings (firmware screenshot) | Medium |

### Enclosure & Post-Processing

| File Name | Intended Chapter | Description | Priority |
|-----------|-----------------|-------------|----------|
| `sanding-grit-comparison.png` | `3d-printing.md` | Sandpaper grit comparison (120–1000) | Medium |
| `slicer-settings.png` | `3d-printing.md` | Slicer settings (Cura/PrusaSlicer) | Low |
| `acetone-smoothing.jpg` | `3d-printing.md` | ABS acetone vapor bath (before/after) | Low |
| `enclosure-exploded.png` | `3d-printing.md` | Exploded view of enclosure (3D print) | Low |

---

## Removed (no longer needed)

These images were previously referenced but have been removed because the text is sufficient without them:

- ~~`assembly-order.png`~~ — assembly order is described in text
- ~~`soldering-steps.png`~~ — soldering steps are described in text
- ~~`display-connection.png`~~ — connection is described in text
- ~~`firmware-success-display.png`~~ — verification is described in text
- ~~`battery-charging.png`~~ — replaced by emoji in table
- ~~`battery-full.png`~~ — replaced by emoji in table
- ~~`battery-50.png`~~ — replaced by emoji in table
- ~~`battery-empty.png`~~ — replaced by emoji in table
- ~~`jlcpcb-plugin-main-window.png`~~ — workflow changed, no longer matches text
- ~~`jlcpcb-fabrication-tab.png`~~ — workflow changed, no longer matches text
- ~~`jlcpcb-assembly-tab.png`~~ — workflow changed, no longer matches text
- ~~`enclosure-assembly.png`~~ — duplicate of enclosure-mounting.png

---

## 📊 Statistics

- **Referenced in chapters:** 16 (10 present + 6 missing)
- **Planned, not yet referenced:** 14
- **Removed:** 13
- **Total tracked:** 29 images

---

## 🎯 Next Steps

1. **High priority (3 images):** `rp2040-boot-reset.png`, `firmware-menu-navigation.png`, `needle-insertion.png`
2. **Medium priority (3 images):** `enclosure-mounting.png`, `kicad-plugin-manager.png`, `current-settings.png`
3. **Decide image sources:**
   - **Own photos:** Display, soldering, enclosure
   - **KiCad exports:** PCB layouts, schematics
   - **Diagrams:** Needle insertion, follicle cross-section
   - **Screenshots:** Firmware menus, JLCPCB website

---

## Image License

- **Original images:** CC-BY-SA 4.0 (same as text)
- **Third-party images:** Only with permission

---

**Contribute!** If you can provide images, open a pull request.

---

**Status:** 2026-07-04
**Maintained by:** Project lead + AI assistant