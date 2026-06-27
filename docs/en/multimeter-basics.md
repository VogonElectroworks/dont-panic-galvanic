# Optional: Using a Multimeter: Testing the Device & Finding Faults

_This chapter is optional. For normal calibration and treatment, you **don't need** a multimeter — the device measures the current itself and shows it on the display._

A multimeter helps when:

- The **Self-Test** fails
- The displayed current deviates significantly from the set value
- You suspect unusual resistance

A simple $10 multimeter from a hardware store is perfectly sufficient.

### What to Look For

Any basic digital multimeter will work. You need:

- **Resistance measurement (Ω)** — for continuity checks and cable testing
- **DC current measurement (mA)** — for verifying the device output
- **DC voltage measurement (V)** — for checking the battery

Autoranging is convenient but not required. A manual-ranging meter with a 2000 Ω (2 kΩ) range is fine. Avoid the cheapest "pen-type" meters — they are fiddly to use and hard to read.

---

## Step 1: Set Up the Multimeter

1. **Turn the dial** to **"Ω" (Ohms)**.
2. **Range:** Autorange (if available) or "2000 Ω" (2 kΩ).
3. **Test:** Touch the two probe tips together → Display should show "0" or "0.1".

---

## Step 2: Cable & Connector Check (Continuity Test)

Before powering on the device, check all cables for continuity – this catches broken wires, cold solder joints, or loose plugs.

1. **Set the multimeter to continuity mode:** Turn the dial to the Ω (Ohms) position. If needed, press the MODE/FUNC button until the **beeper symbol (")))")** appears in the display — it looks like a speaker emitting sound waves. The beeper sounds when resistance is low (< 30 Ω).
2. **Check the needle pen cable:** Place one probe on the 3.5mm jack tip, the other on the far end (D-SUB pin). A beep confirms continuity.
3. **Check the TENS pad cable:** Same process – one probe on the 2mm plug, the other on the far end.
4. **Check the foot pedal cable:** One probe on the 6.35mm jack tip, the other on the opposite plug. Press the pedal – the beep should only sound while the pedal is pressed.

**Note:** If there's no beep, you have a broken wire or cold solder joint – repair before your first treatment!

---

## Step 3: Measuring Current (Advanced)

If you want to verify that the device actually delivers the set current:

1. **Turn the dial** to **"mA"** (milliamps).
2. **Connect probes** to the "mA" and "COM" jacks.
3. **Connect in series:** Device positive → Probe 1 → Probe 2 → Needle holder.
4. **Turn on the device** (press foot pedal) → Read the current and compare with the display value.

### Safety Warning ⚠️
- **Never measure directly on the device while treating yourself!**
- Always test with a **dummy load** first (e.g., a damp cloth).

---

## Tips

1. **Cheap multimeters:** Are often inaccurate (±5%). That's sufficient for our purposes.
2. **Probes:** Alligator clips are easier than holding them.
3. **Practice:** Measure your own skin resistance (dry skin vs. damp skin).

---

**Next chapter:** [First Treatment](usage.md)
