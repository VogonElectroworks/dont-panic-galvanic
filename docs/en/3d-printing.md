# 3D Printing: All Plastic Parts

In this chapter you'll learn how to print the enclosure, knob, and needle pen for your electrolysis device.
The design comes from **zoemaestra** (USB-C fork) and is optimized for 3D printing.

**Target audience:** Beginners with access to a 3D printer (or printing service).

**Duration:** 2–6 hours (depending on print time).

### Material Recommendations

| Part | Recommended Material | Why |
|------|---------------------|-----|
| **Enclosure** (`case.stl`) | **PETG** | Durable, heat-resistant, easy to clean. PLA works but softens in hot environments (e.g. car). |
| **Knob** (`knob.stl`) | **PLA or PETG** | No mechanical stress. PLA gives the smoothest surface finish. |
| **Pen body** (`pen-Body.stl`) | **PETG** | Held in hand for long periods — PETG's slight flexibility is comfortable and it resists skin oils. |
| **Pen cap** (`pen-Cap.stl`) | **PLA or PETG** | Small, no stress. Match the pen body material for consistency. |

!!! tip "Community input wanted"
    These are general recommendations. If you have experience with specific materials and brands for this project, share your findings in GitHub Discussions.

---

## 1. Which Enclosure Are We Using?

### 1.1 zoemaestra's Design (Recommendation ⭐)

**Source:** [zoemaestra-fork/3dprint/](https://github.com/zoemaestra/hair-electrolysis-machine-usb-c/tree/main/3dprint)

**Included files:**

- `case.stl` — Main enclosure (top & bottom)
- `knob.stl` — Knob for the rotary encoder
- `pen-Body.stl` — Needle holder grip
- `pen-Cap.stl` — Protective cap for the needle holder

---

## 2. Preparing the 3D Print

### 2.1 Downloading the Files

1. Go to [zoemaestra/hair-electrolysis-machine-usb-c](https://github.com/zoemaestra/hair-electrolysis-machine-usb-c).
2. Open the `3dprint/` folder.
3. Download all `.stl` files (right-click → "Save link as").

!!! tip "Want to modify the enclosure?"
    If you want to customize the enclosure (your own labeling, different cutouts, different color),
    check out the [Modding: Silkscreen & Case Customization](modding.md#case-modding-personalization) chapter.

### 2.2 Slicer Settings (Recommended)

**Software:** [Ultimaker Cura](https://ultimaker.com/software/ultimaker-cura/) (free) or [PrusaSlicer](https://www.prusa3d.com/page/prusaslicer/).

| Setting | Value | Reason |
|---------|-------|--------|
| **Filament** | PETG recommended | PETG is durable, heat-resistant, and easy to clean (hygienic) |
| **Layer height** | 0.2mm | Good balance of quality & time |
| **Infill** | 15% | Sufficient for a sturdy enclosure |
| **Supports** | Yes (tree support) | For overhangs (display opening) |
| **Brim/Raft** | No | Enclosure has a flat base |
| **Temperature (PETG)** | 230–240°C (nozzle), 75–85°C (bed) | Standard PETG settings |

**Tip:** Print the enclosure **with the display opening facing up** (this reduces support material inside).

### 2.3 Starting the Print

1. **Slice:** Load `case.stl` into the slicer → Click "Slice" → Save the `.gcode` file.
2. **SD Card:** Copy the `.gcode` to your printer's SD card.
3. **Print:** Start the print (duration: approximately 2–4 hours).

**Avoiding common issues:**

- **Warping (edges lifting):** Level the bed properly, use painter's tape or a PEI sheet.
- **Stringing (spiderwebs):** Check retraction settings (especially important with PETG!).

---

## 3. Printing Small Parts: Knob & Pen

While the enclosure is printing, you should also print the small parts. They're quick to do, but the right settings make the difference.

### 3.1 Small Parts: Knob (`knob.stl`) & Pen Cap (`pen-Cap.stl`)

These parts are small and have no major overhangs. The same settings apply to both:

| Setting | Value | Reason |
|---------|-------|--------|
| **Layer height** | 0.12–0.16mm | Finer print for a smooth surface (small parts are noticeable) |
| **Filament** | PETG or PLA | Same material as enclosure |
| **Infill** | 15–20% | More than enough, no load-bearing |
| **Supports** | No | No overhangs |
| **Brim** | Yes (5mm) | Small parts tend to detach from the bed |

**Print time:** ~20–30 minutes each.

### 3.2 Pen Body (`pen-Body.stl`)

The pen body is a long, narrow part (approx. 10–15cm). Different settings apply here:

| Setting | Value | Reason |
|---------|-------|--------|
| **Layer height** | 0.2mm | Good enough for the pen, saves time |
| **Filament** | PETG or PLA | Same material |
| **Infill** | 20% | Should feel solid in the hand |
| **Supports** | No | Body lies flat on the bed |
| **Brim** | Yes (8mm) | Long, narrow parts tend to detach |
| **Orientation** | **Flat on its side** | Round top faces up, flat bottom rests on the bed |

**Print time:** ~1–2 hours.

!!! tip "Print pen and enclosure together?"
    Since the pen body uses the same layer height (0.2mm) as the enclosure, you can load both into the slicer and print them on the same plate — saves time.

## 4. Optional: Surface Finishing (Sanding, Filler, Paint)

3D printing always leaves visible layer lines. After printing, you can smooth and paint the surface — this is **optional**, but improves feel and hygiene.

→ **All methods & guides** can be found in the [Modding: Surface Finishing](modding.md) chapter. This is an optional personalization step.

---

## 5. Troubleshooting

| Problem | Cause | Solution |
|---------|-------|----------|
| Enclosure doesn't fit (too small) | Wrong print scale (100% vs 110%) | Check for "Original Size" in the slicer |
| Screws don't hold | Too much torque | Press in M3 nuts or use threaded inserts |
| Display wobbles | Opening too large | Use hot glue or double-sided tape |
| Layer lines visible | Sandpaper too coarse | Wet-sand with 600 grit |

---

## 6. Optional: No 3D Printer? Alternatives

Don't have access to a 3D printer? No problem — there are ways to get an enclosure anyway.

### 6.1 Print-On-Demand Services (Online or Local)

No 3D printer? Just upload the STL files to any print service and get the parts by mail.

**The process is always the same:**

1. Upload the STL files (`case.stl`, `knob.stl`, `pen-Body.stl`, `pen-Cap.stl`)
2. Choose material and color
3. Pay and get them shipped

#### Which material for which part?

Three printing technologies are commonly offered:

| Technology | Properties | Best for |
|-----------|-----------|----------|
| **FDM** (filament, e.g. ABS, PLA, PETG) | Visible layer lines, cheap, tough | Enclosure (`case.stl`), pen body (`pen-Body.stl`) – thin walls are fine |
| **SLA/Resin** (liquid resin) | Very smooth, brittle, cheap | Knob (`knob.stl`), pen cap (`pen-Cap.stl`) – small non-load-bearing parts |
| **MJF/SLS** (nylon powder, e.g. PA12) | Very strong, durable, uniform, pricier | Enclosure + pen body – premium option, lasts forever |

!!! warning "Thin walls – enclosure (`case.stl`) and pen body (`pen-Body.stl`)"
    Both parts have thin wall sections. Many services will show a warning (usually with an option to accept the risk).

    - **FDM (ABS, PETG):** No problem – FDM is tough enough for thin walls.
    - **SLA/Resin:** The enclosure may crack at thin spots. Better choose a tougher process or print the enclosure separately in FDM.
    - **MJF (PA12):** Fine – PA12 is very strong.

**Recommendation by budget:**

| Tier | Enclosure + Pen Body | Knob + Cap | Cost (approx.) |
|------|---------------------|------------|---------------|
| 💰 **Budget** | FDM (ABS/PETG) | SLA Resin | ~$5–15 |
| ⭐ **Recommended** | MJF (PA12) or FDM (ABS) | SLA Resin | ~$10–20 |
| 👑 **Premium** | MJF (PA12/PA12S) | MJF (PA12) | ~$15–30 |

#### Where to order?

This depends on where you live. Some options:

- **Local makerspaces** or private printer owners (e.g. on online marketplaces) – often cheapest, usually FDM quality
- **Online print services** (e.g. JLCPCB, Sculpteo, Shapeways, or local alternatives) – convenient, shipped to your door
- **JLCPCB** has the advantage that you can combine the 3D print with your **PCB order**. Keep in mind they may ship as two separate packages (PCB and 3D print handled separately).

**Tip:** Compare prices at 2–3 services in your region by uploading the STL files and getting a quote. Costs vary a lot — a local FDM print can be under $10, while the same service might charge three times that for MJF.

### 6.2 Alternative Enclosures

| Option | Effort | Cost | Disadvantages |
|--------|--------|------|--------------|
| **Universal case (Hammond/ABS)** | Screw + drill | ~$10–15 | Doesn't fit perfectly, needs adjustment |
| **Wooden case** | Saw + sand | ~$5–10 | Heavy, not moisture-resistant |
| **Open design (no case)** | None | $0 | ⚠️ Short circuit risk, not recommended! |

**Recommendation:** Find a local makerspace or someone on online marketplaces who can print the enclosure for you. It costs about $10 and you get the perfectly fitting original solution.

---

**Next chapter:** [Build the Needle Pen](pen.md)
