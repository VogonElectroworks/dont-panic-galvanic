# From KiCad to Finished PCBs (PCB & PCBA)

In this chapter you'll learn how to order finished PCBs from open-source design files — no electrical engineering degree required!

**Target audience:** Beginners who have never ordered a PCB before.

**Duration:** Approximately 1–2 hours (plus shipping time).

---

## 1. The Problem: What is a `.kicad_pcb` file?

A fork like [zoemaestra](https://github.com/zoemaestra/hair-electrolysis-machine-usb-c) contains various file types. The most important ones are:

- `hair-electrolysis-machine.kicad_pro` (project file)
- `hair-electrolysis-machine.kicad_pcb` (board layout)

**However:** A PCB fabrication factory (e.g., JLCPCB) cannot use these files directly. They need **machine code** (Gerber files, BOM, CPL).

**Solution:** The following sections explain how to turn design files into finished manufacturing data – with or without KiCad, depending on which fork you choose.

---

## 2. Option A: Use Pre-built Releases (Recommended for Beginners) 🎯

**Zoemaestra** provides pre-built manufacturing files on the [Releases page](https://github.com/zoemaestra/hair-electrolysis-machine-usb-c/releases). You don't need **KiCad** or **any plugin**!

### 2.1 Download everything in one go

Before you start, download **all** required files at once:

**① Release assets (for JLCPCB ordering):**

Go to [github.com/zoemaestra/hair-electrolysis-machine-usb-c/releases](https://github.com/zoemaestra/hair-electrolysis-machine-usb-c/releases)
and from the **latest release (v3.3)** download these three files:

- **`hair-electrolysis-machine.zip`** – The Gerber data (traces, drill holes, etc.).
  This ZIP is uploaded under "Add Gerber File" later.
- **`bom.xls`** – The bill of materials for JLCPCB (the version tested by zoemaestra
  with parts confirmed to be in stock). Don't confuse with `bom.csv`!
- **`positions.csv`** – The pick-and-place coordinates (CPL), so the assembly robot
  knows where each component goes.

!!! warning "All three files are needed for PCBA"
    For automatic assembly (PCBA) you need **Gerber ZIP + BOM + CPL**.
    The Gerber ZIP alone is enough for bare boards, but without BOM and CPL,
    JLCPCB cannot assemble the components.

**② Repo contents (for 3D printing and modding):**

You'll also need the STL files for the enclosure and the pen later.
Download the **complete repository**:

1. Go back to the [repo home page](https://github.com/zoemaestra/hair-electrolysis-machine-usb-c).
2. Click the green **"Code"** button → **"Download ZIP"**.
3. Unzip it – you'll get all KiCad source files and the `3dprint/` folder
   with the STLs (`case.stl`, `knob.stl`, `pen-Body.stl`, `pen-Cap.stl`).

!!! tip "Why download the repo as ZIP?"
    The release assets only contain the JLCPCB manufacturing data. The 3D print files
    (`3dprint/`) and KiCad sources (`hair-electrolysis-machine.kicad_pcb`) are **not**
    in the release, only in the repository itself. One click on "Download ZIP" is enough –
    no Git required.

### 2.2 Uploading manufacturing data to JLCPCB

Once you've downloaded the three release files, continue with
[Section 6: Ordering at JLCPCB](#6-ordering-at-jlcpcb-step-by-step).

**What goes where:**

| File | Where at JLCPCB |
|-------|-------------------|
| `hair-electrolysis-machine.zip` | "Add Gerber File" (step 6.2) |
| `bom.xls` | BOM upload (step 6.3 – PCBA) |
| `positions.csv` | CPL upload (step 6.3 – PCBA) |

**Advantage:** No software installation, no version conflicts, no error sources.

---

## 3. Optional: Option B: KiCad & Plugin (For Other Forks or Custom Builds)

If you're using a different fork (annaaurora, scd31, KibbieKatt) or want to modify the design yourself, you'll need KiCad.

!!! tip "Customize the silkscreen?"
    If you want to personalize the PCB (your own labeling, remove the logo), check out the [Silkscreen Modding](modding.md) chapter.

### 3.1 Installing KiCad (Watch the Version!)

1. Download **KiCad** from: [kicad.org/download](https://www.kicad.org/download/)
2. **Pay attention to the version:**

    - **Zoemaestra** (USB-C Fork) → **KiCad 9.x** (confirmed in PCB file: `generator_version "9.0"`)
    - **Annaaurora / scd31 / KibbieKatt** → **KiCad 10.x** (all use `generator_version "10.0"`)

3. **Recommendation:** Install exactly the matching version to avoid incompatibilities.
4. Install it (Windows: `.exe`, Mac: `.dmg`, Linux: via package manager).
5. **Duration:** About 10–15 minutes (large program).

### 3.2 Downloading the Project

**Option A: For beginners (easy)**

1. Go to the repo page of your chosen fork.
2. Click the green **"Code"** button → **"Download ZIP"**.
3. Unzip the file.

**Option B: For advanced users (Git)**

1. `git clone <repo-url>` (e.g., for annaaurora: `https://codeberg.org/annaaurora/hair-electrolysis-machine-hardware.git`)
2. **Advantage:** You can later run `git pull` to receive updates.

---

### 3.3 Opening the Project in KiCad

1. Launch KiCad.
2. **"Open Project"** → Select the `.kicad_pro` file in the downloaded folder.
3. Click on the **PCB Layout** (PCB Editor) to view the board.
4. **Warning:** If you open the project in a newer KiCad version, it **cannot be converted back** (KiCad will warn you).

### 3.4 Installing the "JLCPCB Fabrication Toolkit" Plugin

!!! tip "Why this plugin?"
    It **automatically** creates the files JLCPCB needs (Gerber, BOM, CPL). Doing this manually would be very error-prone!

1. In KiCad: Click the **package icon** (Plugin and Content Manager, looks like a closed box).
2. Search for **"Fabrication Toolkit"** (by bennymeg) in the list.
3. Click **"Install"** (button on the right).
4. **Important:** Restart KiCad completely.
5. After restarting: Open the PCB layout again. There should now be a **new button** (blue/green) in the toolbar.

**Troubleshooting:**

- *"Plugin doesn't appear"*: Restart KiCad. If it still doesn't show, uninstall and reinstall the plugin.
- *"Too many error messages"*: Check the KiCad version — zoemaestra requires **KiCad 9.x**, the other forks **10.x**.

---

## 4. Optional: Option C: Nix Build (For Forks Without Releases)

If you've chosen a fork that doesn't provide pre-built releases (annaaurora, scd31, KibbieKatt), the manufacturing data must be generated via Nix.

!!! info "When do I need this approach?"
    - **Zoemaestra** → No, pre-built releases available (Option A)
    - **scd31 / KibbieKatt / Annaaurora** → Yes, Nix required

!!! tip "No Nix knowledge needed"
    Nix is just a tool to generate the files. You don't need to understand Nix itself
    — `git clone` + `nix build` is enough. If you run into issues, check the issue tracker or the community Matrix chat.
    Fallback: KiCad + Plugin (Option B).

### 4.1 Installing Nix

1. Go to [nixos.org/download](https://nixos.org/download).
2. Choose your operating system:
   - **Linux:** `sh <(curl -L https://nixos.org/nix/install)` (or via package manager)
   - **Mac:** `sh <(curl -L https://nixos.org/nix/install)`
   - **Windows:** Nix doesn't run natively — use WSL2 or alternatively KiCad + Plugin (Option B)
3. After installation: Restart your terminal or run `source ~/.nix-profile/etc/profile.d/nix.sh`.
4. Verify with: `nix --version` (should show a version number)

### 4.2 Clone Repo and Start Build

1. **Clone the repo:**
   ```bash
   git clone <repo-url>
   cd hair-electrolysis-machine-hardware
   ```
   (Replace `<repo-url>` with your fork's URL, e.g., `https://codeberg.org/annaaurora/hair-electrolysis-machine-hardware.git`)

2. **Start the build:**
   ```bash
   nix build
   ```

   Nix will now download all required dependencies (KiCad, libraries, tools) — **this can take 10–30 minutes** (first time only).

3. **After successful build:** The manufacturing data is in the `result/` folder. Inside you'll find:
   - `gerber.zip` (trace data)
   - `bom.csv` (bill of materials)
   - `cpl.csv` (pick and place coordinates)
   - Depending on the fork: a complete `jlcpcb-production.zip`

### 4.3 Uploading Manufacturing Data to JLCPCB

Once you have the `jlcpcb-production.zip` (or individual Gerber/BOM/CPL files) from `result/`,
continue at [Chapter 6: Ordering at JLCPCB](#6-ordering-at-jlcpcb-step-by-step).

---

## 5. Generating Gerber Files & BOM (Option B only)

Now you'll use the JLCPCB Fabrication Toolkit (installed in Step 3.4) to generate all the files JLCPCB needs — Gerber, BOM, and CPL — in one go.

!!! info "Which toolkit?"
    There are two KiCad plugins for JLCPCB:

    - **Fabrication Toolkit** (bennymeg) — available directly in KiCad's Plugin Manager. Recommended by JLCPCB's official documentation. Works with KiCad 6–10.
    - **kicad-jlcpcb-tools** (Bouni) — older plugin with LCSC part search. Requires manually adding a custom repository. Not needed for this project.

    This guide uses the **Fabrication Toolkit** (already installed in Step 3.4).

### 5.1 Fill in LCSC Part Numbers

Before generating the files, make sure each component has an **LCSC Part #** assigned. This tells JLCPCB which parts to place during assembly.

1. In the **Schematic Editor**, open **Tools → Edit Symbol Fields Table**.
2. Click **Add Field** and create a field named `LCSC Part #`.
3. Enter the LCSC part number for each component (you can find these on [lcsc.com](https://www.lcsc.com/) or in the fork's BOM).

!!! tip "Check the fork's BOM first"
    Some forks (like zoemaestra) already include a `bom.xls` with LCSC part numbers. You can copy-paste them from there into the symbol fields.

### 5.2 Generate All Files

1. Open the **PCB Editor** (from the KiCad project window, click the PCB layout button).
2. Click the **Fabrication Toolkit button** in the top toolbar (blue/green icon, added after installing the plugin).
3. A dialog opens with options:

    - **Apply automatic component translations** — keep this checked (fixes part rotations for JLCPCB).
    - **Apply automatic fill for all zones** — keep checked if you use copper pours.

4. Click **Generate**.
5. The plugin creates a folder with:

    - **Gerber files** (`.gbr`) — PCB traces, holes, outline
    - **BOM file** (`bom.csv`) — bill of materials with LCSC part numbers
    - **CPL file** (`cpl.csv`) — pick & place coordinates for the assembly machine
    - A **ZIP file** (e.g., `jlcpcb-production.zip`) — ready to upload to JLCPCB!

!!! warning "PCBA requires BOM + CPL"
    Without BOM and CPL files, JLCPCB can only manufacture the bare PCB. You would need to buy and solder all 50+ SMD components yourself — not recommended for beginners!

### 5.3 Upload to JLCPCB

Take the generated ZIP file and continue at [Chapter 6: Ordering at JLCPCB](#6-ordering-at-jlcpcb-step-by-step).

---

## 6. Ordering at JLCPCB (Step by Step)

!!! warning "Browser Note: Chrome/Chromium recommended"
    The JLCPCB website unfortunately does **not work reliably with Firefox**. Certain features (BOM upload, component selection) may freeze or cause unexpected errors.

    Use **Google Chrome**, **Microsoft Edge**, or another **Chromium-based browser** instead — everything works smoothly with those.

### 6.1 Creating an Account

1. Go to [JLCPCB.com](https://jlcpcb.com).
2. **"Sign Up"** — quick process (email + password).
3. **Important:** Enter **your real address** (required for customs!).

### 6.2 Ordering the PCB

1. Click **"Order Now"** (top right) → **"Standard PCB"**.
2. Click **"Add Gerber File"** → Upload your Gerber ZIP:

    - **Option A (Release):** `hair-electrolysis-machine.zip`
    - **Option B/C (KiCad/Nix):** the plugin-generated `jlcpcb-production.zip`

    ![Uploading the Gerber file to JLCPCB](../assets/JLCPCB2-add-gerber-file.png){: width=700 loading=lazy}

3. **Settings:**

    - **PCB Color:** Choose **"Green"** (standard color, 5–7 day production).

    !!! tip "All colors cost the same — but other colors take longer"
        For 2-layer boards (like this one), **all colors** (Green, Blue, Red, Black, White, Purple, Yellow) cost the same. The difference: non-green colors add **2 days to the lead time**. Green isn't cheaper — it's just faster.
    - **Surface Finish:** "HASL (with lead)" (cheapest standard, perfectly fine for this project).
    - **PCB Thickness:** "1.6mm" (standard).
    - **Max PCB Size:** Should be detected automatically.

### 6.3 Enabling PCB Assembly (PCBA)

!!! danger "Don't skip this!"
    If you skip PCBA here, you'll receive only the bare board. You would then need to purchase and solder all 100+ components yourself!

**① Enable PCBA**

Scroll down and toggle the **"PCB Assembly"** switch to ON. A dialog opens to select how many boards to assemble.

![Enable PCBA (PCB Assembly)](../assets/JLCPCB3-activate-pcb-assembly.png){: width=700 loading=lazy}

**② Select quantity of assembled boards**

Choose how many of the 5 boards should be assembled:

- **5 boards** (all of them – best value)
- **2 boards** (cheaper, if you only plan to build 1–2 devices)

!!! info "Why not 1?"
    JLCPCB always produces **5 PCBs** – you cannot order fewer. You're choosing here **how many get assembled**. The rest (3 or 0) remain as bare PCBs.

    - 5 assembled → all boards ready, you give away 4
    - 2 assembled → 2 pre-assembled boards + 3 bare boards for later


**③ Go to PCBA configuration**

Click **"Next"** on the right side.

**④ PCB preview**

A page shows your board preview. Click **"Next"** again.

![PCB preview before PCBA configuration](../assets/JLCPCB4-preview-top-pcb.png){: width=700 loading=lazy}

**⑤ Upload BOM & CPL**

You arrive at the **"BOM"** tab. Upload the bill of materials and pick-and-place file:

- **Option A (Release):** `bom.xls` (BOM) and `positions.csv` (CPL)
- **Option B/C (KiCad/Nix):** the plugin-generated `bom.csv` and `cpl.csv`

Then click **"Process BOM & CPL files"**.

![Upload BOM and CPL files](../assets/JLCPCB5-upload-bom-and-cpl.png){: width=700 loading=lazy}

**⑥ BOM Review**

JLCPCB shows an overview of all parts with availability:

- ✅ **Green** – part is in stock (proceed without issues)
- ❌ **Red** – part is unavailable → you need to find a substitute

!!! warning "Missing parts are a problem for beginners"
    If a part shows a red cross, you need to replace it with a comparable component. This requires electronics knowledge – as a beginner, you have three options:

    1. **Wait a few weeks** – standard parts (resistors, capacitors) are usually back in stock quickly.
    2. **Try a different manufacturer** (PCBWay, AISLER, etc.) – they have a different component warehouse.
    3. **Wait for a fork update** – if the part is fundamentally problematic.

    Either way: **Do not create an issue in the fork** – this is not a design bug.

    **Example:** Zoemaestra's current BOM is missing e.g. `C25804` (0603 10kΩ resistor).

![BOM overview with availability status](../assets/JLCPCB6-bom-check.png){: width=700 loading=lazy}

If all parts are available, click **"Next"**.

**⑦ Component Placement**

A final check: component positions on the board. Click **"Next"**.

![Component placement check](../assets/JLCPCB7-component-placements.png){: width=700 loading=lazy}

**⑧ Quote & Cart**

You see the summary with price. Now:

1. Enter a **Product Description** (important for customs/export):

    `Research\Education\DIY\Entertainment -> DIY Hobby Circuit Board`

    ![Quote with product description and save-to-cart](../assets/JLCPCB8-quote-and-order.png){: width=700 loading=lazy}

2. Click **"Save to Cart"**.

### 6.4 Cart & Checkout

1. Once in the cart, you'll see a list of your items with the **"SECURE CHECKOUT"** option.
2. **Important:** **Check the boxes** next to the items you want to order. You cannot pay without selecting them.
3. If needed, adjust the **shipping method** (e.g., DHL, UPS). The cheapest option is usually fine, but choose according to your preferences.
4. Click **"SECURE CHECKOUT"**.
5. Pay (credit card, PayPal sometimes doesn't work).

    ![Cart view with items, shipping, and checkout button](../assets/JLCPCB9-checkout.png){: width=700 loading=lazy}

**Tips:**

- **IOSS (EU customers):** JLCPCB calculates the tax directly (no extra customs fees!).
- **Address:** Enter your real address (for customs and shipping).
- **Cost overview:**

    **Scenario A – Solo build:** You order for yourself.

    - **PCB + PCBA + Shipping (5 assembled boards):** ~$90–125
    - **Additional components (AliExpress/eBay):** ~$35–46 (parts for 5 devices)
    - **Total outlay:** ~**$125–170**
    - You build **1 device**, keep 4 spare boards

    **Scenario B – Group order:** Split with 4 friends.

    - **Per person (JLCPCB split 5 ways):** ~$18–25
    - **Components per person:** ~$7–9
    - **~$25–35 per complete device**

    ??? info "Reference: Zoemaestra's actual costs"
        The fork author [zoemaestra's own order](https://github.com/zoemaestra/hair-electrolysis-machine-usb-c#cost-breakdown) came to **£85.34 (~$115)** for 5 boards with single-sided assembly and shipping, plus ~**£28 (~$38)** for additional components from AliExpress/eBay.
        Total for parts covering 5 devices: ~**£113 (~$154)**, or ~**£23 (~$31) per unit** (excluding needles).

---

## 7. Optional: Alternative: Bare Boards Only (Without Assembly)

If you don't want PCBA (e.g., because you can or want to do SMD soldering):

1. Upload only the Gerber files (without BOM/CPL).
2. Select **"Assembly: No"**.
3. Cost: Approximately **$23–35** (PCB only).
4. **But:** You'll need to buy all components yourself (LCSC.com) and solder them (very time-consuming!).

**Recommendation:** Get PCBA! The $35–58 extra saves you 10+ hours of work.

---

## 8. Optional: Other PCB Manufacturers (Comparison)

| Manufacturer | Website | Advantages | Disadvantages | Cost (PCBA, 5 boards) |
|-------------|----------|-----------|---------------|---------------|
| **JLCPCB** | [jlcpcb.com](https://jlcpcb.com) | Cheap, huge component warehouse | Shipping time (1–2 weeks) | **$90–125** |
| **PCBWay** | [pcbway.com](https://www.pcbway.com) | Similar to JLCPCB | Slightly more expensive | $90–140 |
| **AISLER** | [aisler.net](https://aisler.net) | European (no customs), fast | Expensive for PCBA | $170–290 |
| **Eurocircuits** | [eurocircuits.com](https://www.eurocircuits.com) | High-end, Europe | Very expensive | $345–575 |

**Verdict:** For this project, **JLCPCB** is the best choice (value for money).

---

**Next chapter:** [Component Sourcing](component-sourcing.md) (Where to get the display, foot pedal, and more?)
