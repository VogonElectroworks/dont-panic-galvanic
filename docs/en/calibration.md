# Adjusting Current & Calculating Lye (Galvanic Mode)

With galvanic electrolysis — [more on the methods](commercial-vs-diy.md#the-three-methods-of-electro-epilation) — the key factor is **how much lye (NaOH)** is generated in the follicle. This is controlled by **current** and **time**.

!!! info "Before Calibration"

    Calibration (finding the right current/time values) requires an actual treatment on your own body. **First read the chapter [First Treatment](usage.md).** It covers:

    - Skin preparation (disinfection)
    - Needle insertion (technique, angle)
    - Safety instructions for your first treatment

    Come back here afterwards to dial in the optimal values for your hair.

## Basics: Lye-Units (LU)

The scd31 project uses the concept of **Lye-Units** (from the textbook "The Principles and Practice of Electrical Epilation"):

- **Formula:** `Current (mA) × Time (s) × 10 = Lye-Units (LU)`
- **Example:** 1 mA for 10 seconds = 100 LU.

### Reference Values for Different Hair Types (per medical textbook)

| Hair Type | Required Lye-Units (LU) | Recommended Setting (Example) |
|-----------|------------------------|-------------------------------|
| **Fine, unpigmented vellus hair** | 10 – 15 LU | 1 mA for 1–2 s |
| **Fine, pigmented, soft hair** | 10 – 20 LU | 1 mA for 1–2 s |
| **Medium/shallow terminal hair** | 15 – 30 LU | 1.5 mA for 10–20 s |
| **Deep terminal hair** | 30 – 45 LU | 2 mA for 15–25 s |
| **Very deep terminal hair** | 45 – 60 LU | 3 mA for 15–20 s |

!!! warning "DIY vs. Professional Values"

    These are textbook reference values from professional electrology training. DIY users — especially beginners working on facial hair — should **start significantly lower** (0.5–1.0 mA). Many DIY users report good results at currents well below the textbook examples. The DIY device has no automatic skin-resistance adjustment like professional equipment, so a conservative approach is safer.

**Important:** These values are only guidelines! Every body reacts differently. **Start with low values!**

---

## Self-Test (Check the Device)

Before your first treatment, run the **Self-Test**:


1. **Power on** the device (display lights up).
2. **Open the menu:** Select "Self-Test" or "Board Test".
3. **Wait for the test:** The device checks:
   - **Charge Pump** (voltage source, whether 15V is present).
   - **DAC** (Digital-Analog Converter, whether the set current actually flows).
   - **ADC** (Analog-Digital Converter, whether the current is measured correctly).
4. **Result:** 
   - ✅ **Passed:** Device is ready.
   - ❌ **Failed:** Electronics error (do not use!).

**When to run the Self-Test?**


- Before first use.
- After flashing the firmware.
- If the device behaves strangely (current fluctuates).

---

## Setting Current & Time (Calculating Lye)

1. **Power on** the device (display lights up).
2. **Open the menu:** Set the current (Current) to e.g., **1.0 mA** (to start!).
3. **Set the time:** Pulse duration (Duration) to e.g., **10 seconds** (equals 100 LU at 1 mA).

### Safety Warning ⚠️
- **Never go above 5 mA** (burn risk!).
- **Start below 1 mA** (face) or **1–2 mA** (body).

---

## Setting Ramp Time

The device has a **ramp feature** (`Ramp` in the settings menu) that smoothly ramps the current up and down instead of switching it on and off abruptly.

- **Ramp time (ms):** Duration of the ramp-up and ramp-down in milliseconds.
- **Default:** 1000 ms (1 second).
- **Range:** 0–5000 ms, in 25 ms steps.

### How the ramp works

1. **Ramp-Up:** When starting, the current rises linearly from 0 mA to the set value (e.g. 1.0 mA) over the configured ramp time.
2. **Steady State:** After ramp-up, the current stays constant at the set value.
3. **Ramp-Down:** Once enough lye has been produced, the current is smoothly reduced. The ramp time determines when ramp-down begins: a longer ramp means an earlier start.

### When to adjust the ramp

- **Longer ramp (e.g. 2000 ms):** Softer start — more comfortable for sensitive skin. The total lye delivered remains the same; the current just takes longer to reach its peak and begins ramping down sooner.
- **Shorter ramp (e.g. 500 ms):** Faster, more direct treatment — less impact on lye calculation.
- **Ramp at 0 ms:** Abrupt on/off — for testing or experienced users only.

**Tip:** Start with the default value (1000 ms). Increase the ramp time if the treatment feels uncomfortable.

---

## Step 2: Checking Results

The device automatically measures the current and shows it on the display. You **don't need a multimeter for normal calibration**. Success is checked by:

1. **Perform the treatment** (insert needle, press foot pedal, wait).
2. **Remove the hair** (with tweezers).
3. **Assess:**
   - ✅ **Comes out easily:** Enough lye (perfect!).
   - ❌ **Resistant, pulling:** Not enough lye → increase current or time.
   - ❌ **Burned skin:** Too much lye/current → decrease current immediately!

---

## Step 3: Adjusting as Needed

If the hair doesn't come out easily:

1. **Increase current slightly** (e.g., from 1.0 mA to 1.5 mA).
2. **Or increase time** (e.g., from 10s to 15s).
3. **Test again** on a different spot (not right next to the first one!).

**Rule of thumb:** Only increase current slowly (0.5 mA steps).

---

## What the Display Shows (During Treatment)

The device measures the current **continuously** via the ADC:

- **"Requested: 1.0 mA"** → This is the value you set.
- **"Measured: 1.02 mA"** → This is the actual current flowing.
- **"Lye: 10 LU"** → This is the cumulative lye amount (current × time × 10).
- **"Body: XX ohm"** → Measured skin resistance (info only, no automatic adjustment).
  
  **Note:** The device measures the skin resistance **automatically and in real-time** during treatment using voltage and current measurement (`Resistance = voltage drop × 1000 / measured current`). You don't need to configure anything for this.

**Difference between Requested and Measured?**


- Small deviation (< 0.1 mA) is normal.
- Large deviation (> 0.5 mA): Electronics error → run Self-Test!

---

## Comparison: DIY (scd31) vs. Professional Devices

| Aspect | DIY (scd31/zoemaestra) | Professional (Elipa) |
|--------|------------------------|---------------------|
| **Calibration** | Manual (set current/time/ramp), measures and displays skin resistance. | Automatic (adjusts current to skin resistance) |
| **Display** | Screen (mA, s) | Digital (LU directly) |
| **Configuration** | By user (trial & error) | Pre-configured |

**Verdict:** With DIY, you need to **test for yourself** what values work for your hair.

---

## Troubleshooting

| Problem | Cause | Solution |
|---------|-------|----------|
| Hair won't come out | Not enough lye | Increase current/time |
| Burn | Too much lye/current | Decrease current immediately, apply aloe vera |
| Current fluctuates | Poor contact | Check needle holder (screw tight?), clean needle (alcohol) |
| Display shows wrong current | Wrong calibration | Check with [multimeter](multimeter-basics.md) and compare with display value |

---

**Next chapter:** [Using a Multimeter](multimeter-basics.md) (optional)