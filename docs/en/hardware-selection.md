# Hardware Selection: Which Fork Should I Choose?

There are several versions of the DIY electrolysis device. If you just want to get started, read about the recommended fork below. The rest of this page is for those who want a full overview of all options.

!!! info "What is a Fork?"
    A **fork** is an **independent evolution** of an existing open-source project. Think of it like a recipe:
    someone publishes a basic recipe, others cook it, tweak the ingredients, or add steps – and then publish
    their own version. That's how different variants of the electrolysis device came to be – with USB-C,
    optimized component choices, and other improvements.
    
    **For beginners:** zoemaestra's fork is the best starting point – it's the easiest to order and build.

---

## ⭐ zoemaestra's Fork (USB-C Modernization) – Recommended

**Source:** [GitHub Repo](https://github.com/zoemaestra/hair-electrolysis-machine-usb-c)

This fork modernizes the design with USB-C and optimizes costs through single-side assembly — all SMD components are on one side, making JLCPCB assembly significantly cheaper.

### Advantages
- ✅ **USB-C connector** (modern, widely available)
- ✅ **Cost-optimized:** All SMD components on one side (single-side assembly), making JLCPCB assembly much cheaper
- ✅ **3D printed enclosure:** STL files in the `3dprint/` folder (case, pen, **knob cover** `knob.stl`) — ready to print
- ✅ Manufacturing files (Gerber, BOM, CPL) on the [Releases page](https://github.com/zoemaestra/hair-electrolysis-machine-usb-c/releases) — directly uploadable to JLCPCB
- ✅ **ESD protection:** D+/D- lines protected by ESD441 (TVS) diodes
- ✅ **No Nix required:** Manufacturing data is pre-compiled, no build system needed

### Notes
- ℹ️ For current issues and discussions, check the [GitHub Issues](https://github.com/zoemaestra/hair-electrolysis-machine-usb-c/issues)

### Who is it for?
**Recommended for all beginners!** This is the easiest entry point thanks to single-side assembly (cheaper, no Nix knowledge required).

---

## Optional: Other Forks at a Glance

_This section is for those who want an overview of the other options — for example, because they need specific features or are just curious. If you just want to build, skip ahead to the [next page](pcb-manufacturing.md)._

### 1. Original (scd31 / n3tcat)

**Source:** [GitLab Repo](https://gitlab.scd31.com/sophie/hair-electrolysis-machine-hardware)

### Advantages
- ✅ First working design
- ✅ Good documentation on [scd31.com](https://www.scd31.com/posts/diy-hair-electrolysis-machine/)
- ✅ Proven circuit
- ✅ Supports JLCPCB PCBA (via Nix builds)

### Disadvantages
- ❌ Outdated power connector (Mini-USB, not Micro-USB), so no USB-C
- ❌ **Double-sided PCB** (SMD on both sides — more expensive for JLCPCB assembly than zoemaestra's single-side design)
- ℹ️ **Nix build:** Manufacturing data generated via Nix ([pcb-manufacturing.md](pcb-manufacturing.md#optional-option-c-nix-build-for-forks-without-releases) — just `git clone` + `nix build`)

### Who is it for?
For purists who want to build the exact original design.

---

### 2. KibbieKatt's Fork 🔧

**Source:** [GitHub Repo](https://github.com/KibbieKatt/hair-electrolysis-machine-hardware)

**Note:** This is an active fork focused on **JLCPCB compatibility**. Components have been replaced with JLCPCB-compatible alternatives (Basic/Extended Parts) to make assembly cheaper or easier.

### Advantages
- ✅ **JLCPCB optimization:** Many components replaced with JLCPCB-compatible alternatives (e.g., U2, U5, D9-14, Y1)
- ✅ **2-pin 3.5mm jack support** (cherry-picked from upstream)
- ✅ **Improved trace routing** (removed stray traces, more ground vias)
- ✅ **Better labeling** (silkscreen, component labels for improved JLCPCB UX)
- ✅ Available on GitHub (for users without GitLab access)
- ✅ Supports JLCPCB PCBA (via Nix builds)

### Disadvantages
- ❌ Remaining disadvantages of the original (Mini-USB instead of USB-C)
- ❌ **Double-sided PCB** (SMD on both sides — more expensive than zoemaestra's single-side design)
- ℹ️ **Nix build:** Manufacturing data generated via Nix ([pcb-manufacturing.md](pcb-manufacturing.md#optional-option-c-nix-build-for-forks-without-releases))

### Who is it for?
For JLCPCB users who want an optimized original design but don't need USB-C.

---

### 3. annaaurora's Fork (USB-C & Optimized BOM) 🐈

**Source:** [Codeberg Repo](https://codeberg.org/annaaurora/hair-electrolysis-machine-hardware)

### Advantages
- ✅ **USB-C connector** (modern, widely available — confirmed in KiCad file & git log)
- ✅ **USB data connected:** D+/D- are routed through U8 (USBLC6-2SC6, dedicated low-capacitance USB ESD protection IC) and resistors on the RP2040 — flashing and USB serial/JTAG are possible
- ✅ **Improved component availability** (U4 replaced with LCSC part, routing optimization)
- ✅ **JLCPCB-compatible components** (many parts replaced with Basic/Extended Parts)
- ✅ **Routing optimization:** No traces under the USB-C shield (confirmed in commit `fff21bc`)
- ✅ **Nix integration** (reproducible builds via `flake.nix` and `nix/` folder)
- ✅ **OpenSCAD enclosure** (parametric, 3D-printable)
- ✅ **Active development** (ongoing component optimization per git history)

### Disadvantages
- ❌ **Double-sided PCB** (SMD on both sides — more expensive than zoemaestra's single-side design)
- ℹ️ **Nix build:** Manufacturing data generated via Nix ([pcb-manufacturing.md](pcb-manufacturing.md#optional-option-c-nix-build-for-forks-without-releases))
- ❌ Codeberg instead of GitHub (smaller community)
- ❌ OpenSCAD enclosure not updated for USB-C — `box.scad` still has the Mini-USB cutout

### Who is it for?
For **LCSC/JLCPCB users** who want USB-C and appreciate active development. If cost is a priority, zoemaestra's single-side fork is the better choice.

---

## Decision Matrix

| Criteria | zoemaestra (USB-C) ⭐ | annaaurora (USB-C & Opt.) | Original (scd31) | KibbieKatt (JLCPCB Optimized) |
|-----------|---------------------|------------------------|-------------------|---------------------|
| **Difficulty** | **Easy** | Medium | Medium | Medium |
| **Connector** | USB-C | USB-C | Mini-USB | Mini-USB |
| **JLCPCB PCBA** | ✅ (via Releases, Single-side) | ✅ (via Nix, Double-side) | ✅ (via Nix, Double-side) | ✅ (via Nix & Basic/Extended, Double-side) |
| **USB Data (D+/D-)** | ✅ ESD441 (discrete) | ✅ USBLC6-2SC6 (dedicated) | ✅ Connected | ✅ Connected |
| **5V Routing** | ✅ Fixed (commit 45f85e5) | ✅ **Fixed** | ✅ Normal | ✅ Normal |
| **Cost (PCBA)** | **Low (Single-side)** | Medium (Double-side) | Medium (Double-side) | Medium (Double-side) |
| **Enclosure included** | ✅ (STL/3dprint) | ✅ (OpenSCAD) | ✅ (OpenSCAD) | ✅ (OpenSCAD) |
| **Active development** | ✅ (USB-C modernization) | ✅ (component optimization) | ✅ (ongoing improvements) | ✅ (JLCPCB optimization) |

**Notes:**

- **Nix vs. Releases:** scd31, KibbieKatt, and annaaurora generate manufacturing data via Nix builds. zoemaestra provides pre-built Gerber files on the Releases page — no Nix knowledge required.

!!! info "🔧 What is Nix?"
    Nix is a build system. It automatically generates manufacturing data (Gerber, BOM, CPL) from KiCad source files — the files JLCPCB needs for assembly. Some forks (annaaurora, scd31, KibbieKatt) don't have pre-built files in the repo — they must first be *built* via Nix. This requires:

    1. **Install Nix** ([nixos.org/download](https://nixos.org/download))
    2. **Clone the repo** (`git clone <repo-url>`)
    3. **Run the build** (`nix build` in the repo folder)
    
    **For beginners:** zoemaestra's fork works without Nix — ready-to-use files are on the Releases page.
    Only if you choose a different fork or want to modify the design yourself will you need Nix (or KiCad + Plugin).
    See [PCB Manufacturing](pcb-manufacturing.md) for both approaches.

- **Cost:** zoemaestra's fork saves money through single-side assembly (only one side populated). All others are double-side (more expensive).
- **USB Data (D+/D-):** In all reference designs, the USB data lines are connected to the RP2040 — without this, neither flashing nor USB operation would work. Both USB-C forks have ESD protection on the data lines: **zoemaestra** via discrete ESD441 diodes, **annaaurora** via a dedicated USB ESD IC (USBLC6-2SC6, U8). The original and KibbieKatt have **no** ESD protection on D+/D-.
- **Enclosure formats:** `STL` (zoemaestra) are ready-to-print files, `OpenSCAD` (others) are parametric and require OpenSCAD to generate STL files.

## Verdict

**zoemaestra's fork remains the beginner recommendation** — cheaper (single-side) and no Nix knowledge required.

**For advanced users who need USB Serial/JTAG support, annaaurora's fork is worth considering** — USB data is routed through a dedicated low-capacitance USB ESD IC (USBLC6-2SC6, U8), better suited for high-speed signal integrity than discrete protection diodes.

---

**Next chapter:** [PCB Manufacturing](pcb-manufacturing.md)
