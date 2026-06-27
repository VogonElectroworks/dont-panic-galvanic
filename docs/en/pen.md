# Build the Needle Pen

The needle pen connects the electrolysis needle to the device via a cable.

## How It Works

The core of the pen is a single **D-SUB female crimp pin** (LCSC C5393697).
These pins are originally from DB9 connectors and have a split sleeve
that clamps the needle securely. The electrolysis needle has an F-Shank (1.25mm diameter),
which fits perfectly into this sleeve.

**Advantage:** D-SUB pins are designed for repeated insertion cycles, so they can handle
many needle changes. And they cost only ~$0.10 each.

## Build Instructions

1. **Prepare the cable:** Strip one end of an ~50cm long, flexible cable (24 AWG).
2. **Solder the D-SUB pin:** Solder the D-SUB pin onto the stripped end. The pin has a small opening on the back that the cable fits into. A little solder is enough.
3. **3D print the pen:** The printing process is the same as for the enclosure (see [3D Printing](3d-printing.md#22-slicer-settings-recommended)).
    
    **STL files by fork:**
    
    * zoemaestra: `3dprint/pen-Body.stl` and `pen-Cap.stl`
    * scd31 / KibbieKatt / annaaurora: `models/pen.FCStd` (FreeCAD, must be exported to STL)
    
    **Different print settings compared to the enclosure:**
    
    * Infill: 15% (no load)
    * Supports: not needed (no overhangs)
    * Orientation: Print `pen-Body.stl` flat on its side (long axis horizontal)

4. **Insert the D-SUB pin:** Feed the cable end with the pin from the back through the pen until the pin sits in the holder at the front.
5. **Secure:** If needed, secure with hot glue to prevent the pin from shifting. In zoemaestra's design, the pin should hold on its own.
6. **Other cable end:** Connect the free end to a 3.5mm jack plug (or directly to the screw terminal on the device — depending on the fork).

## Changing the Needle

- **Pull out the old needle:** Simply pull on the needle — the D-SUB pin releases it.
- **Insert the new needle:** Disinfect hands with 70% isopropanol. Push the needle F-Shank (1.25mm) first into the D-SUB pin until it sits firmly.
- **No tools needed:** The D-SUB pin clamps by spring tension alone.
- **Disinfect:** Wipe or dip the needle tip with 70% isopropanol before use. The front part of the pen should also be cleaned regularly.
- **Single-use needles:** Electrolysis needles are single-use medical items. Never use on multiple people and dispose of in a sharps container after use.
- **Durability:** If the pin becomes loose after many changes, simply order a new pin for ~$0.10 (LCSC C5393697).

---

**Next chapter:** [Final Assembly](final-assembly.md)