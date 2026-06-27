# Final Assembly

Now all the parts come together: PCB, enclosure, and pen are connected into the finished device.

## Prerequisites

You already have:

- ✅ [PCB completed](assembly.md) (THT components + display soldered)
- ✅ [All plastic parts printed](3d-printing.md) (enclosure, knob, pen)
- ✅ [Needle pen built](pen.md)

## Step 1: Test the PCB (Before Mounting)

Before you screw the PCB into the enclosure: **Test it first!** Having to remove a defective PCB after installation is frustrating.

**Safe placement:**

- Place the PCB **bottom side down** on a **non-conductive surface** — e.g., wood, cardboard, or the anti-static bag it came in.
- **Do not place on metal, aluminum foil, or any conductive surface** (short circuit risk!).
- Maintain a few centimeters distance from metallic objects.

**Test:**

1. Connect the device via USB-C to your PC (or a USB power supply).
2. Press and hold the **BOOT button** on the PCB while plugging in the USB cable.
3. The PCB should appear as a **mass storage device (USB drive)** (e.g., "RPI-RP2").
4. If the drive appears: **PCB is working** ✅ — continue with Step 2.
5. If nothing appears: Check the solder joints for cold joints or shorts, see [Troubleshooting in the soldering guide](assembly.md#troubleshooting).

## Step 2: Attach the Knob

1. Check that the hole in the knob is clean (gently rework with a 2mm drill bit if needed).
2. Push the knob onto the encoder shaft by hand — it should **fit snugly but without force**.
3. If it's too loose: add a tiny drop of hot glue or superglue into the hole and push it on.
4. **Alignment:** Turn the knob so that any marking (if present) points up when the encoder is in the center position.

!!! tip "Knob slipping?"
    The encoder has a flattened shaft (D-shape). The knob should exactly match this shape. If the hole is round (print tolerance), a small drop of superglue helps.

## Step 3: Mount the PCB into the Enclosure

1. **Position the PCB:** USB-C, the 3.5mm jack (for pen/TENS), and the 6.35mm jack (for foot pedal) must protrude from the designated openings in the enclosure.
2. **Display:** The enclosure has a cutout for the display. Position the PCB so that the display is visible through that cutout. The display is already soldered to the PCB — no extra mounting needed.
3. **Screws:** 4× M3 screws (10–15mm, ideally countersunk) through the PCB from above into the threaded holes in the enclosure.
4. **Don't overtighten:** PETG can crack with too much force!
5. If the display wobbles: secure with a dab of hot glue.

![PCB in Enclosure](../assets/enclosure-mounting.png){width=600 loading=lazy}
*Figure: How the PCB is screwed into the enclosure*

## Step 4: Close the Enclosure

Close the enclosure and screw it shut.

## Step 5: Connect the Cables

1. **Needle pen:** Plug the 3.5mm jack of the pen into the corresponding socket on the device.
2. **TENS pad:** Plug the 2mm connector of the TENS pad into the second socket.
3. **Foot pedal:** Plug the 6.35mm jack of the foot pedal into its socket.
4. **Cable management:** Use cable ties or spiral wrap to keep things tidy inside the enclosure.

---

**Next chapter:** [Install Firmware](firmware.md)