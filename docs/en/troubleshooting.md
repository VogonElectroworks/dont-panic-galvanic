# Troubleshooting: When Things Don't Work

Here you'll find solutions to the most common problems.

## Hardware Issues

### 1. "Device won't start"

**Symptom:** Display stays black, no LEDs light up.

**Possible causes:**

- USB-C cable is power-only (no data lines).
- Fuse blown (if present).
- Reversed polarity on power supply.

**Solution:**

1. Try a different USB-C cable (with data transfer!).
2. Check the power supply (5V 2A).
3. Check for shorts with a multimeter.

---

### 2. "Display stays black"

**Symptom:** Device is running (LEDs lit), but no image.

**Possible causes:**

- Wrong display pinout.
- Faulty display.
- Wrong I2C address.

**Solution:**

1. **Check pinout** (VCC, GND, SCL, SDA).
2. **Flash an I2C scanner** (sketch to find the address).
3. Replace the display (AliExpress/Amazon are cheap).

---

### 3. "Foot pedal doesn't respond"

**Symptom:** Current won't flow when pedal is pressed.

**Possible causes:**

- Cold solder joint on the THT jack.
- Faulty foot pedal.
- Software setting ("Invert pedal").

**Solution:**

1. **Check solder joints** (with a magnifying glass).
2. **Test the foot pedal** on a PC (as a MIDI controller).
3. In the settings, toggle **"Pedal Mode"**.

---

## Software Issues

### 4. "Can't flash the firmware"

**Symptom:** Device doesn't appear as a USB drive.

**Possible causes:**

- Bad BOOTSEL timing.
- Corrupted bootloader.
- Missing USB driver (Windows).

**Solution:**

1. **Try again:** **Hold** the BOOT button, then press Reset.
2. **Use an RP2040 debugger** (if the bootloader is broken).
3. **Use Zadig tool** (Windows) to repair USB drivers.

---

### 5. "Menu is in English, I want German"

**Symptom:** Firmware only supports English.

**Solution:**

- Currently the firmware is English-only.
- **Help out!** Translate the strings in the firmware (Rust code) and submit a pull request.

---

## Application Issues

### 6. "Hair won't come out"

**Symptom:** After the current application, the hair is still stuck.

**Possible causes:**

- Treatment duration too short.
- Current too low.
- Needle wasn't deep enough.

**Solution:**

1. **Increase pulse duration** (2–3 seconds for thermolysis).
2. **Increase current** (slowly, max 5 mA).
3. **Insert the needle deeper** (until resistance).

---

### 7. "Skin burning" (white spot)

**Symptom:** After treatment, the skin turns white or crusty.

**Cause:**

- Current too high.
- Treatment too long.
- Needle was too deep (subcutaneous).

**Immediate actions:**

1. **Turn off the current immediately!**
2. **Cool** (aloe vera).
3. **Avoid sun exposure** (pigmentation risk!).
4. **See a doctor** (for large burns).

**Prevention:**

- Always start with low currents (0.5–1 mA).
- Practice on your legs first, then face.

---

**Still stuck?** Check the [Community section on the homepage](index.md#community) for more help channels.

---

**Back to overview:** [Index](index.md)