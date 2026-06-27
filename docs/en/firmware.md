# Install Firmware: Waking the Brain

The hardware is dumb until the software (firmware) is running on it.

**Note:** There are no pre-compiled `.uf2` files to download.
You need to build the firmware yourself from source code. Don't worry — it only takes three commands in a terminal!

---

## Step 1: Build the Firmware

### 1.1 Install Rust

Download the Rust compiler:

**Windows:**

1. Go to [rustup.rs](https://rustup.rs/)
2. Download `rustup-init.exe` and run it.
3. Select **"1) Proceed with installation (default)"**.
4. After installation: Open **Command Prompt (CMD) or PowerShell** and verify with:
   ```cmd
   rustc --version
   ```
   (should show a version number)

**Mac:**

1. Open Terminal.
2. Run the following command:
   ```bash
   curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
   ```
3. Select **"1) Proceed with installation (default)"**.
4. Reload the environment variables and verify:
   ```bash
   source "$HOME/.cargo/env"
   rustc --version
   ```

**Linux (Debian/Ubuntu):**

1. Open Terminal.
2. Run the following command:
   ```bash
   curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
   ```
3. Select **"1) Proceed with installation (default)"**.
4. Reload the environment variables and verify:
   ```bash
   source "$HOME/.cargo/env"
   rustc --version
   ```

!!! tip "Install the Cross-Compilation Target"
    Since the firmware is written for the RP2040 (ARM Cortex-M0+), you need to add the appropriate cross-compilation target:

    ```bash
    rustup target add thumbv6m-none-eabi
    ```

!!! tip "Build Dependencies (Debian/Ubuntu)"
    If `cargo build` fails with a linker error, you're missing the build tools:

    ```bash
    sudo apt update && sudo apt install build-essential
    ```

### 1.2 Download the Source Code

**Option A: With Git (recommended)**
```bash
git clone https://gitlab.scd31.com/sophie/hair-electrolysis-machine-software.git
cd hair-electrolysis-machine-software
```
(If `git` is not installed: Windows: [git-scm.com](https://git-scm.com/), Mac: via Xcode Command Line Tools, Linux: `sudo apt install git`)

**Option B: As ZIP**

1. Go to [GitLab – Software](https://gitlab.scd31.com/sophie/hair-electrolysis-machine-software)
2. Click **"Download"** → **"ZIP"**.
3. Extract the ZIP and open the folder in your terminal.

### 1.3 Compile the Firmware

In the project folder (where `Cargo.toml` is located), run:

```bash
cargo build --release
```

The first build takes **5–15 minutes** (Cargo downloads dependencies and compiles everything).
Subsequent builds are faster (only changed files).

### 1.4 Convert to .uf2

The build produces a `.elf` file. For drag & drop flashing, you need a `.uf2` file:

```bash
cargo install elf2uf2-rs
elf2uf2-rs target/thumbv6m-none-eabi/release/hair-electrolysis-machine-software firmware.uf2
```

Now `firmware.uf2` is in the project folder — ready to flash!

### Important for zoemaestra Users

Since zoemaestra's fork only **modified the hardware** (USB-C, single-side assembly),
the firmware from the original is fully compatible. No special version needed.

---

## Step 2: Flash the Firmware

### Method A: BOOTSEL on Power-On (Easy)

Ideal for the **first start** or when no firmware is installed:

1. **Power off:** Turn the power switch to OFF.
2. **Hold BOOTSEL:** Press the small button on the PCB (**BOOTSEL**) and hold it down.
3. **Plug in USB:** While holding BOOTSEL, connect the device to your PC via USB-C.
4. **Release BOOTSEL:** Once your PC detects a new drive.
5. The device should now appear as a **USB drive** (drive "RPI-RP2").

### Method B: BOOTSEL + RESET (When the Device Is Already Running)

If the device is already powered on with firmware running:

1. **Connect** the device via USB-C to your PC (if not already connected).
2. **Hold BOOTSEL** (small button on the PCB).
3. **Press RESET briefly** (second button next to it) — this restarts the RP2040.
4. **Release BOOTSEL** — the device starts in boot mode.
5. The device should now appear as a **USB drive** (drive "RPI-RP2").

### Recognition
- **Windows:** "RPI-RP2" or "UF2-BOOT" appears in Explorer.
- **Mac/Linux:** A drive named "RPI-RP2" appears.

!!! tip "Visual Guide: BOOTSEL and RESET Buttons"
    ![Boot and Reset Buttons on RP2040](../assets/rp2040-boot-reset.png){width=500 loading=lazy}
    *Figure: BOOTSEL and RESET buttons on the PCB*

---

## Step 3: Copy the Firmware

1. Open the USB drive.
2. **Drag and drop** the `firmware.uf2` file onto it (just like a regular USB stick).
3. The device restarts automatically.

### Verification
- The OLED display should light up and show a menu.
- If not: Start over (check BOOTSEL timing).

---

## Step 4: Navigate the Menu

Once the firmware boots, the OLED display shows the **Main Menu** with three options.

**Controls:**
- **Rotary encoder** — scroll up/down through menu items
- **Push encoder button** — select/confirm the highlighted item
- **Foot pedal** — activates current during treatment (only in the run view)

!!! tip "Visual Guide: Menu Navigation"
    ![Firmware menu navigation](../assets/firmware-menu-navigation.png){width=450 loading=lazy}
    *Figure: Main menu — Start, Self-test, Settings*

---

### Main Menu

| Menu Item | Description |
|-----------|-------------|
| **Start** | Begin treatment. The device enters the run view (see below). **Not available when USB is connected** — disconnect USB first for safety. |
| **Self-test** | Runs an automated hardware self-test to verify the device is working correctly. |
| **Settings** | Opens the settings submenu for configuration. |

---

### Settings → Electrolysis

From **Settings** → **Electrolysis**, you can adjust three treatment parameters.

Use the rotary encoder to scroll through the options. Press the encoder to select a value, scroll to change it, then press again to confirm. Select **Save** to store all changes permanently, or **Cancel** to discard.

| Parameter | Display | Range | Step | Default | Description |
|-----------|---------|-------|------|---------|-------------|
| **Max Current** | `Cur: X.XX mA` | 0.00 – 2.30 mA | 0.05 mA | 0.80 mA | Maximum treatment current. Start low and increase gradually. |
| **Target Lye** | `Lye: X LU` | 1 – 80 LU | 1 LU | 50 LU | Amount of lye to deliver per insertion. Higher = more aggressive treatment. |
| **Ramp Time** | `Ramp: XXXX ms` | 0 – 5000 ms | 25 ms | 1000 ms | How long the current takes to ramp up to the target. Longer = gentler start. |

!!! warning "Start Conservatively"
    If you are new to electrolysis, begin with **0.50 mA** and **20–30 LU** and adjust upward as you gain experience.

---

### Settings → About

Shows project information and a link to the original project website.

---

### Self-Test Results

After selecting **Self-test** from the main menu, the device prompts you to disconnect the probe from the body of the device, then runs an automated sweep. The test checks three criteria:

| Check | Threshold | Meaning |
|-------|-----------|---------|
| **Charge Pump Voltage** | > 12.0 V | The charge pump generates sufficient voltage to drive current through the needle. |
| **Max Delta Current** | < 0.10 mA | The DAC output is linear — the actual current closely matches the requested current across the full range. |
| **Leakage Current** | < 0.03 mA | Negligible current flows when the output is disabled (no unsafe leakage). |

Each check shows **P** (Pass) or **F** (Fail). If any test fails, check your solder joints and component connections before using the device.

---

### Run View (During Treatment)

After selecting **Start** from the main menu, the device waits for the foot pedal. Press the foot pedal to begin delivering current; release it to stop.

The display shows real-time information:

| Field | Example | Meaning |
|-------|---------|---------|
| **Title line** | `000.42 s` | Elapsed time of the current insertion. |
| **Target** | `50.00 LU @ 0.80mA` | Configured target lye and max current. |
| **Cur** | `0.79 mA (-0.01)` | Actual measured current and the deviation from target. |
| **Lye** | `12.34 LU` | Lye delivered so far in this insertion. |
| **Body** | `125.00 ohm` | Measured skin resistance. Higher values mean drier skin or a shallower insertion. |

---

### Battery Indicator

A battery icon in the top-right corner shows the power status:

| Status | Meaning |
|--------|---------|
| ⚡ Charging | USB power connected (charging) |
| 🔋 Full | Battery > 3.8 V (full) |
| 🔋 50% | Battery 3.6–3.8 V |
| 🪫 Low | Battery < 3.6 V (recharge soon) |

---

## Step 5: Update the Firmware

When a new firmware version is released, you can update without removing any components.

1. **Pull the latest source code:**
   ```bash
   cd hair-electrolysis-machine-software
   git pull
   ```
   (If you downloaded as ZIP, re-download from [GitLab](https://gitlab.scd31.com/sophie/hair-electrolysis-machine-software).)

2. **Rebuild:**
   ```bash
   cargo build --release
   elf2uf2-rs target/thumbv6m-none-eabi/release/hair-electrolysis-machine-software firmware.uf2
   ```

3. **Flash the new `.uf2`** using the same BOOTSEL method as the first time (Step 2).

The device retains its saved settings across updates (they are stored in a separate area of the flash memory).

---

## Troubleshooting

| Problem | Cause | Solution |
|---------|-------|----------|
| Device doesn't appear as USB drive | BOOTSEL not held during power-on | Try Method A (power off, hold BOOTSEL, plug in USB) |
| `.uf2` won't copy | Corrupted file | Rebuild (`cargo build --release`) |
| Display stays black | Display not connected or I2C wiring faulty | Check I2C connection (VCC, GND, SDA, SCL) |
| Foot pedal doesn't respond | Wrong pin, or pedal not pressed | Check foot pedal wiring (PIN_16); press pedal before starting |
| USB error on start | Device refuses to start with USB connected | Disconnect USB power, run on battery only |
| Build fails | Rust out of date | Run `rustup update` |

---

**Next chapter:** [Calibration](calibration.md)
