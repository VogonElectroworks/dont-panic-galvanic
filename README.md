# Don't Panic, Galvanic!

> ⚠️ **DRAFT – NOT READY FOR USE:** This guide is under active development. **Do NOT build or use any device** based on this documentation yet. Information may be incomplete, incorrect, or unsafe.

**💡 What this guide covers**

This guide is about building your own **galvanic electrolysis machine for permanent hair removal** — a technique where a tiny DC current through a needle destroys each hair follicle.

**Not to be confused with:** water electrolysis, metal plating, electroforming, or any industrial electrolysis.

---

A beginner-friendly guide to building your own DIY open-hardware **electrolysis device for permanent hair removal** — at a fraction of the cost of professional machines (€3000–5000 vs. ~€100 in materials).

## 🎯 Goal

This project aims to lower the barrier for non-technical people who want to build their own professional-grade electrolysis device for **hair removal** — without any prior electronics knowledge.

<!-- BEGIN shared-disclaimer: Canonical version in docs/includes/disclaimer.en.md -->

## ⚠️ Disclaimer

**Educational purpose only:** All information, plans, and schematics described here are for informational and educational purposes only. You use this guide at your own risk.

**Not a medical device:** No CE marking, no clinical approval, no FDA/MPA certification. Use on humans is expressly at your own risk.

**NO WARRANTY:** This project is provided without any warranty — express or implied. The entire build and operation process is at your own risk.

**No liability:** In no event shall the authors or contributors be liable for direct, indirect, or consequential damages resulting from building or using this device.

**No liability for translation errors:** The texts in this guide were created and translated by non-professionals and/or machines. The authors are not liable for translation errors or resulting damages.

**Trademarks:** All product names are property of their respective owners. This project is not affiliated with any commercial electrolysis device manufacturers.

→ [Safety & Legal](docs/en/safety-legal.md)
<!-- END shared-disclaimer -->

## 📚 Documentation

[![Documentation Status](https://readthedocs.org/projects/dont-panic-galvanic/badge/?version=latest)](https://dont-panic-galvanic.readthedocs.io/en/latest/?badge=latest)

The complete guide is available on [ReadTheDocs](https://dont-panic-galvanic.readthedocs.io) or in the language directories (e.g. [`docs/en/`](docs/en/) for English, [`docs/de/`](docs/de/) for German).

### Chapter Overview

**Preparation & Basics**

1. [Home & Introduction](docs/en/index.md)
2. [Safety & Legal](docs/en/safety-legal.md) (required reading!)
3. [Commercial vs. DIY](docs/en/commercial-vs-diy.md) (decision guide)

**Hardware**

4. [Choose Your Hardware](docs/en/hardware-selection.md) (which fork?)
5. [PCB Manufacturing](docs/en/pcb-manufacturing.md) (KiCad → Gerber → Order)
6. [Component Sourcing](docs/en/component-sourcing.md) (BOM, needles, enclosure)
7. [Complete the PCB](docs/en/assembly.md) (THT soldering, display)
8. [3D Printing](docs/en/3d-printing.md) (enclosure, knob, pen)
9. [Build the Needle Pen](docs/en/pen.md) (D-SUB pin & 3D print)
10. [Final Assembly](docs/en/final-assembly.md) (connect everything)
11. [Case Modding](docs/en/modding.md) ⭐ (silkscreen, customization)

**Software & Usage**

12. [Install Firmware](docs/en/firmware.md) (flashing, menus)
13. [Calibration](docs/en/calibration.md) (lye units, self-test)
14. [Multimeter Basics](docs/en/multimeter-basics.md) (for beginners)
15. [First Application](docs/en/usage.md) (insertion technique, aftercare)
16. [Body Areas Guide](docs/en/body-areas.md) (per-region tips, pain levels)
17. [Troubleshooting](docs/en/troubleshooting.md)

## 🛠 Reference Projects

- **Original (scd31):** [GitLab](https://gitlab.scd31.com/sophie/hair-electrolysis-machine-hardware)
- **KibbieKatt's Fork (JLCPCB optimized):** [GitHub](https://github.com/KibbieKatt/hair-electrolysis-machine-hardware)
- **zoemaestra's Fork (USB-C):** [GitHub](https://github.com/zoemaestra/hair-electrolysis-machine-usb-c) ⭐ **Recommended**
- **annaaurora's Fork (USB-C & optimized):** [Codeberg](https://codeberg.org/annaaurora/hair-electrolysis-machine-hardware)

## 🤝 Contribute

Everyone can help!
- **Questions & Discussions?** [GitHub Discussions](https://github.com/VogonElectroworks/dont-panic-galvanic/discussions).
- **Found a bug?** Open an [Issue](https://github.com/VogonElectroworks/dont-panic-galvanic/issues).
- **Improvements?** Submit a Pull Request.

## 📄 License

- **Documentation:** CC-BY-SA 4.0 (free to share with attribution).
- **Code from reference projects:** See their respective licenses (mostly GPL/MIT).

---

**Status:** 🚧 Work in Progress (Alpha)

**Last updated:** 2026-07-05
