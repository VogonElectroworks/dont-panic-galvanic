# Modding: Silkscreen & Case Customization ⭐

_This chapter is for those who want to personalize their device or adapt it to their own needs. The steps described here are optional — not required for the basic build._

The guide is divided into three parts:

- [Silkscreen Customization](#silkscreen-customization) — Remove logos, add your own labeling to the PCB
- [Case Modding & Personalization](#case-modding--personalization) — Edit STL files, add labels, change colors
- [Surface Finishing](#surface-finishing-layer-lines-and-painting) — Hide layer lines and paint

---

## Silkscreen Customization

Some forks have different silkscreen art (e.g., the author's name or logo on the board). This is purely cosmetic, but if you want your own version, you can modify the silkscreen in KiCad.

### What is Silkscreen?

The silkscreen is the white labeling on the PCB: component names (R1, C2), outlines, logos. It has **no electrical function** — it's for soldering orientation and appearance.

### Editing Silkscreen in KiCad

1. **Launch KiCad** → Open the project (`*.kicad_pro`).
2. **Open the PCB layout** → Click on the PCB Editor.
3. **Enable the silkscreen layer:**

    - Top side: `F.Silkscreen`
    - Bottom side: `B.Silkscreen`
    (Layer selection: right sidebar → check the box)

4. **Change text:**

    - Select text (left-click)
    - Press `E` → Edit text (content, size, position)
    - Or: Add new text with `Shift + T` (text tool)

5. **Change graphics/logos:**

    - Bitmap logos are often imported as images (`Tools → Import Bitmap`)
    - To remove: select element → `Del`
    - To add your own logo: convert bitmap to SVG, then import

6. **Export:** After changes, regenerate manufacturing data (see [Option B: KiCad & Plugin](pcb-manufacturing.md#optional-option-b-kicad-plugin-for-other-forks-or-custom-builds)).

!!! tip "Silkscreen Colors at JLCPCB"
    At JLCPCB, the silkscreen is **white** by default. Other colors are available for an extra charge and with certain board colors (e.g., black PCB + white silkscreen = professional look).

### Common Changes

- **Remove logo:** If a fork author has placed their logo, simply select and delete it.
- **Your own text:** Device name, build year, or simply "DIY Electrolysis" as a personal touch.
- **Component labeling:** Standard labeling is sufficient — only change it if you're using different footprints.

### Silkscreen Guidelines

- **Line width:** At least 0.15mm (thinner will be blurry at JLCPCB).
- **Font size:** At least 1mm (otherwise hard to read).
- **Pad clearance:** Silkscreen must not overlap solder pads (otherwise adhesive issues during PCBA).

---

## Case Modding & Personalization

### Adding Text Directly to the STL

The cleanest approach: **integrate the text into the 3D model** before printing.

**Easy (Tinkercad, free, browser):**


1. Go to [tinkercad.com](https://www.tinkercad.com) → Create an account (free).
2. **Import STL:** "Import" → select `case.stl`.
3. **Add text:** "Basic Shapes" → drag "Text" onto the workplane.
4. Write your text, choose a font, adjust size.
5. **Position:** Drag it to the desired spot on the case.
6. **Raised vs. recessed:**

    - **Raised:** Place text on top of the case → "Group" → Text protrudes (will get sanded off if you finish the surface!).
    - **Recessed:** Push the text slightly into the case (approx. 0.5mm deep) → "Group" → creates an engraved recess when printed.

7. **Export:** "Export" → download `.stl` and slice.

**Advanced (FreeCAD):**


- FreeCAD (open source): Use the Part Design workbench to create extrudes/pockets.
- [Tutorial: Adding text with FreeCAD](https://wiki.freecad.org/PartDesign_AdditiveHelix)

!!! warning "Raised Text and Post-Processing"
    **Raised text** gets flattened when sanding layer lines. **Recessed engraving** remains intact even after surface finishing. For cases with filler and paint, recessed engravings are therefore better suited.

### Applying Labels After Printing

If you don't want to modify CAD:

- **Stickers:** Label the case with waterproof stickers (e.g., label printer or digital print on weatherproof film).
- **Stencil technique (pinstripe):** 
    1. Plot or hand-cut your desired text on masking tape.
    2. Apply the stencil.
    3. Spray a thin coat of paint (or clear coat) over it.
    4. Remove the stencil → The text remains visibly colored.

- **Vinyl transfer foil:** T-shirt transfer foil for light cases — apply with an iron.
- **Paint pen:** Simply paint by hand (rustic, requires a steady hand).

### Adjusting the Case Shape

Some forks have different connectors (USB-C vs. Mini-USB, different display sizes). If your PCB doesn't fit exactly:

- **Enlarge cutouts:** Carefully widen the opening with a small round file.
- **Drill new holes:** Use a 3mm drill bit at the desired location.
- **Remove walls:** If the STL has internal dividing walls → remove with wire cutters and sand smooth.

**For larger modifications** (different display, custom switch): Load the STL into Tinkercad and use Boolean operations ("Hole" shape) to cut new openings.

### Changing the Case Color

The most obvious personalization:

- **Different filament:** Gray, black, white, green — hundreds of PETG colors are available. Zoemaestra's case is intentionally minimalist, so any color looks good.
- **Two-color printing:** Use an M600 color change in GCode or "Pause at height" in the slicer — e.g., bottom of case in color A, top in color B.
- **Filament change pattern:** The slicer can switch color at specific layer heights → subtle striped look.

---

## Surface Finishing: Layer Lines and Painting

3D printing always produces visible layer lines — this is normal. With the right techniques, though, you can achieve a smooth, almost injection-molded finish.

You can also skip this step entirely. It has no effect on the device's function.

### Material Dependency

Which finishing methods work depends heavily on the **printing process and material**:

| Material / Process | Sanding | Filler + Paint | Special Methods |
|-------------------|---------|---------------|-----------------|
| **ABS / PETG / PLA** (FDM) | ✅ Yes | ✅ Yes | Acetone vapor (ABS only), epoxy coating |
| **9600 Resin** (SLA) | ✅ Wet sand | ✅ Yes, excellent adhesion | Smooth by default — often no finish needed. Can be polished |
| **PA12 / PA12S Nylon** (MJF) | ⚠️ Only if undyed — sanding removes the color on dyed parts | ⚠️ Primer required (poor adhesion on nylon) | ○ Best left untreated or dyed by the service (fabric dye) |
| **PA11 Nylon** (MJF) | ⚠️ Like PA12 | ⚠️ Like PA12 | ○ Like PA12 |

**Important notes:**



- **SLA Resin** is very smooth by default — layer lines are barely visible. Finishing is usually unnecessary. If desired: wet sand (grit 600+) and clear coat.
- **MJF Nylon (PA12)** has a matte, slightly porous surface. Feels premium, but is difficult to paint (requires primer). Many services (e.g. JLCPCB) offer fabric dyeing — if dyed, don't sand or you'll remove the color. Leaving as-is or having it dyed is often the best choice.
- **FDM (ABS, PETG, PLA)** benefits most from post-processing — this is where the effort is worth it.

### Sanding (for any plastic type)

The classic method — cheap, but time-consuming.

**Tool checklist:**



- ✅ **Sandpaper set:** Grit 120, 240, 400, 600 (wet & dry)
- ✅ **File:** Small file for edges
- ✅ **Drill bit:** 3mm for screw holes (if too tight)
- ✅ **Isopropanol (IPA):** For cleaning before painting
- ✅ **Rubber gloves** — not because it's dangerous, but because fingerprints on roughened plastic are hard to remove

**Process:**

| Step | Grit | Goal | Special Note |
|------|------|------|-------------|
| 1 | 120-180 | Remove rough layer lines | Sand in circles, not too deep! |
| 2 | 240-320 | Smooth surface | Continue evenly |
| 3 | 400-600 | Fine structure for painting | **Wet sand** (water) → prevents clogging |
| 4 | 800-1000 | Mirror-smooth surface | Only needed for high-gloss paint |

!!! warning "Caution with PLA: Friction Heat"
    PLA has a glass transition temperature of ~60°C — the friction heat from **dry** sanding is enough to melt the surface. The sandpaper clogs, and layer lines smear instead of disappearing.

    **Solution:** With PLA, always **wet sand** (water + sandpaper). With PETG, dry sanding up to 400 grit is safe.

### Spot Putty for Deep Grooves

If the case has noticeable gaps or deep lines (e.g., from rough support removal):

1. **Apply spot putty** (e.g., PU filler from automotive supplies or simple modeling putty).
2. **Let it dry** (manufacturer's instructions, usually 10-30 minutes).
3. **Sand off excess** (grit 240 → 400).
4. Then continue with primer or sanding.

### Filler Primer

A thick spray primer ("filler primer" from automotive supplies) fills fine layer lines in one step. Saves a lot of sanding.

1. **Clean:** Wipe the case with IPA (degreases).
2. **Spray filler:** 2-3 thin coats, 10 minutes ventilation between coats.
3. **Dry:** 24 hours (really! Otherwise the filler shrinks afterwards).
4. **Smooth sanding:** With grit 400 (wet) remove the high spots → the filler stays in the layer line valleys. Done.

**Recommendation:** Filler + sanding is the best effort-to-result ratio.

### Epoxy Coating (XTC-3D)

Specialty products like [XTC-3D](https://www.smooth-on.com/products/xtc-3d/) (2K epoxy) are self-leveling and fill layer lines without sanding:

1. **Mix:** Resin + hardener in a cup (1:1 by volume).
2. **Apply:** Brush thinly onto the case.
3. **Cure:** 30 minutes → smooth, glossy surface.
4. If needed: a second coat for a perfect finish.

**Disadvantages:** Expensive (~$30/set), only suitable for flat surfaces (runs off edges).

### Vapor Smoothing (ABS only)

If you printed with **ABS** instead of PETG/PLA:

1. **Acetone vapor bath:**

    - Place the case in a sealed container with an acetone-soaked cloth (do not submerge in acetone!).
    - **Duration:** 10-30 minutes (monitor!).
    - **Result:** Glass-like, smooth surface.

2. **Safety:** ⚠️ Only in well-ventilated areas (toxic fumes!).

**Recommendation:** For this project, stick with PETG + filler + sanding (safer, more hygienic).

### Which Method for Whom?

| Method | Cost | Time | Result | Difficulty |
|--------|------|------|--------|-----------|
| Sanding only | ~$5 | 2-3h | Medium | ⭐ Easy |
| Putty + sanding | ~$8 | 3h | Good | ⭐⭐ Medium |
| Filler + sanding | ~$12 | 2h + 24h drying | **Very good** | ⭐ Easy |
| XTC-3D epoxy | ~$30 | 1h | Excellent | ⭐⭐ Medium |
| Acetone vapor (ABS only) | ~$5 | 1h | Perfect | ⭐⭐⭐ Experienced |

**Verdict for beginners:** Filler primer from automotive supplies (~$12/can) + 400 grit sandpaper. The money is worth the time saved.

### Painting for Hygiene

Since the device operates in a hygiene-sensitive area (skin contact):

**Priming:**


- **2K filler** (spray can) → adhesion promoter.
- **Drying:** 30-60 minutes.

**Painting:**


- **Clear coat (matte or glossy):** Protects against moisture, wipeable.
- **Tip:** 2-3 thin coats (not one thick one!) — less likely to run.

**Alternative:** **Plasti Dip** (rubber coating) → grippy, washable, easy to remove.

---

**Next chapter:** [Install Firmware: Waking the Brain](firmware.md)
