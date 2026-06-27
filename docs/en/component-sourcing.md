# Component Sourcing: Decoding the BOM

This is the part where many beginners get stuck: **"Where do I get the display if the AliExpress link is dead?"**

In this chapter you'll learn how to interpret the **BOM (Bill of Materials)** and order components worldwide (or locally).

**No shop links:** Prices, availability, and listings change constantly. Instead of linking specific products, this chapter teaches you the **search terms** to find what you need on any marketplace.

**Duration:** 1–3 hours (research + ordering).

---

## 1. Understanding the BOM

The `bom.csv` (from the JLCPCB plugin) contains cryptic lines like:
```
C1,10uF,0805,LCSC:C49678
R1,1k,0805,LCSC:C25804
```

**What does this mean?**


- `C1` = Capacitor 1 (component designation on the PCB).
- `10uF` = Capacitance (technical value).
- `0805` = Package size (SMD form factor).
- `LCSC:C49678` = LCSC part number (JLCPCB's component warehouse).

**But:** You don't need to buy all of this yourself!


- ✅ **SMD components (C1, R1, etc.)** = Soldered by JLCPCB (PCBA).
- ❌ **THT components** = You need to buy and solder these yourself!

---

## 2. Which Components Do You Need to Buy Yourself?

Based on the zoemaestra fork (excerpt from the `README.md`):

| Component | Technical Specification | Purpose | Example Search Term (International) |
|-----------|------------------------|---------|---------------------------|
| **OLED Display** | 0.96" I2C SSD1306 (128x64 pixels) | Menu display | "SSD1306 0.96 inch I2C OLED" |
| **Foot Pedal** | Tattoo foot pedal (6.35mm jack) | Current on/off | "Tattoo foot pedal 6.35mm" or "MIDI foot switch" |
| **Needle Holder** | 3D-printed pen + D-SUB female pin (LCSC C5393697) | Holds the needle – **built yourself** (build guide: [Build the Needle Pen](pen.md))<br>Alternatively: buy from electrolysis specialist suppliers | DIY: D-SUB female pin (LCSC C5393697)<br>Buy e.g.: "Sterex needle holder", "electrolysis probe holder" |
| **Needles (single-use)** | Ballet F-Shank (size 2-6) | For treatment | "Ballet electrolysis needles F-Shank" (see section 8) |
| **Ground Electrode** | TENS pad (2mm pin) | Completes the circuit | "TENS electrode 2mm pin" |
| **USB-C Cable** | 1m, data + power (3A) | Connection PC/power supply | "USB-C cable 3A data power" – usually already on hand (e.g. phone charger) |
| **Lithium Battery** | 3.7V 1000mAh (or similar) | Power supply | "LiPo battery 3.7V 1000mAh" |


---

## 3. How to Search (Parameter-Based Search)

### 3.1 On Amazon / AliExpress

Use the **technical terms** from the table above:

- **OLED Display:** Search for `"0.96 inch OLED I2C SSD1306"`.

    - **Caution:** There are also SPI versions (wrong pins) and smaller 0.91" displays (128x32, not enough rows for the menu). Only **I2C** works!
    - **Pin order:** VCC | GND | SCL | SDA (left to right, display facing you, pins on top). Some displays have a different order (check the datasheet!).
        - **VCC** = power (+3.3V or +5V)
        - **GND** = ground
        - **SCL** = I2C clock
        - **SDA** = I2C data

    ![OLED Pinout & Orientation](../assets/scd31-hair-electrolysis-machine-pcb-display-side-with-labels.png){width=400 loading=lazy}
    *Image: PCB with labeled display pins (VCC, GND, SCL, SDA)*

- **Foot Pedal:** Search for `"Tattoo foot pedal 6.35mm"`.

    - **Alternative:** `"MIDI foot switch"` (also 6.35mm, used in music equipment).

- **TENS Pad:** Search for `"TENS electrodes 2mm"`.

### 3.2 At European Distributors (Farnell, Mouser, DigiKey)

- **Advantage:** Genuine parts, datasheets available, support.
- **Disadvantage:** More expensive, often minimum order value.
- **Example:** 

    - OLED display at [DigiKey](https://digikey.com): search `"OLED 128x64 I2C"`.
    - Battery at [Farnell](https://farnell.com): search `"LiPo 3.7V 1000mAh"`.

**Tip:** Use **datasheets** (PDF) to confirm the part is correct (pinout!).

---

## 4. Sources: AliExpress vs. Amazon

| Shop | Price (OLED) | Delivery | Returns | Quality | For whom? |
|------|--------------|----------|---------|---------|----------|
| **AliExpress** | $1–6 (single) / ~$2–4 (5+ pcs) | 2–4 weeks | No | Mixed | **Budget-conscious** |
| **Amazon** | $8–12 (single) / ~$3–4 (5-pack) | 1–2 days | Yes (30 days) | Good | **In a hurry / Multi-pack buyers** |

### 4.1 National/Local Distributors (Examples by Region)

| Region | Distributor | Website | Range |
|--------|-------------|---------|-------|
| **EU** | Farnell / Element14 | [farnell.com](https://farnell.com) | Professional electronics, large warehouse |
| **US** | DigiKey | [digikey.com](https://digikey.com) | Huge selection, worldwide shipping |
| **US** | Mouser | [mouser.com](https://mouser.com) | Similar to DigiKey |
| **DE** | Conrad Electronic | [conrad.de](https://conrad.de) | General electronics, batteries, tools |
| **DE** | Reichelt | [reichelt.de](https://reichelt.de) | Electronics components |

**Tip:** 


- For **general electronics** (display, battery, cables): Use Amazon or Farnell/DigiKey.
- For **replacement supplies** (needles, TENS pads): Use specialist suppliers (see section 8).

---

## 5. The "BOM Translation" (for Beginners)

If you don't understand the `bom.csv`, use these **rules of thumb**:

| Term in BOM | What to Buy | Alternative Search |
|-------------|-------------|-------------------|
| `OLED`, `SSD1306` | OLED display (I2C) | "0.96 inch OLED I2C" |
| `Foot Switch`, `Pedal` | Foot pedal (6.35mm) | "Tattoo foot pedal jack" |
| `TENS`, `Electrode` | TENS pad (2mm) | "TENS electrodes 2mm" |
| `Battery`, `LiPo` | Lithium battery (3.7V) | "LiPo 3.7V 1000mAh" |

**Safety Warning ⚠️:**



- **Battery:** Only buy genuine (Farnell/DigiKey). Cheap AliExpress batteries can **explode**!
- **Power supply:** Only use USB-C power supplies with **overcurrent protection** (e.g., Anker, Belkin).

---

## 6. Pre-Order Checklist

- [ ] **Display:** I2C (not SPI), 0.96" (not 0.91"), pin order verified?
- [ ] **Foot pedal:** 6.35mm jack (not 3.5mm)!
- [ ] **Needle holder:** D-SUB female pin (LCSC C5393697) ordered for the DIY build?
- [ ] **Needles:** Sterile (single-use), correct size (003 or 004)?
- [ ] **Battery:** Genuine (not "no-name" from AliExpress)!
- [ ] **TENS pad:** 2mm connector (fits the device).

---

## 7. Avoiding Mistakes

| Mistake | Consequence | Solution |
|---------|------------|----------|
| Wrong display (SPI instead of I2C) | No image | Check datasheet, search for "I2C" |
| Foot pedal with 3.5mm jack | Doesn't fit | Specify "6.35mm" in search |
| Battery without protection circuit | Fire hazard! | Only brand-name batteries (Samsung, LG) |
| Reusing needles | Infection risk! | Use single-use needles only |

---

## 8. Challenge: Sourcing Needles (Especially EU)

### 8.1 Why is it so hard?

- **Medical device:** Electrolysis needles are classified as medical devices (CE marking required).
- **Few suppliers:** In the EU there are very few specialist shops for electrolysis supplies.
- **High prices:** Single-use (sterile) needles cost **$1–2 per needle** in the EU – compared to only **$0.50** in the US, where the market is larger and more suppliers exist.
- **Import issues:** US suppliers (TexasElectrolysis) often don't ship to the EU (due to customs/medical device regulations).

### 8.2 Needle Sizes (Which for Whom?)

Ballet needles are categorized by two criteria:

1. **Shank:** F-Shank (1.25mm, standard) vs. K-Shank (0.8mm, older).
2. **Tip (Size):** Numbers 2 through 6 (2 = finest, 6 = thickest).

| Size | Tip (mm) | Hair Type | Use Case |
|------|----------|-----------|---------|
| **2** | 0.06mm | Vellus hair, eyebrows, fingers/toes | Finest facial work |
| **3/4** | 0.08 – 0.10mm | Cheeks (women), chin, chest, forearms | Standard for body |
| **5/6** | 0.12 – 0.15mm | Deep terminal hairs, armpits, pubic, beard (men) | Coarse hairs, deep follicles |

**Recommendation for beginners:** **Size 4 (F4)** — between fine and coarse, easiest to insert.

### 8.3 Insulated vs. Non-Insulated Needles

- **Insulated needles:** Only the tip conducts current (rest is coated). Reduces skin damage.
- **Non-insulated needles:** Cheaper, but higher risk of skin burns.
- **Recommendation:** Insulated needles (e.g., "Ballet F4 Insulated") for beginners!

### 8.4 Where to Get Needles (Table)

**Important:** In professional practices, Ballet needles are **changed constantly** (single-use). DIY users often reuse them **multiple times** (after disinfection), which carries an **infection risk**!

| Supplier | Country | Website | Price (per needle) | Notes |
|----------|---------|---------|-------------------|-------|
| **Alvi Prague** | CZ (EU) | [alvi-prague.com](https://alvi-prague.com) | $0.80 – $1.70 | Ballet needles individually, K2/F2/F4, EU shipping |
| **Euraf Shop** | FR (EU) | [euraf-shop.com](https://euraf-shop.com) | $1.70 – $2.30 | Ballet + Sterex, insulated & non-insulated, CE |
| **Bioskin** | IT (EU) | [shop.bioskin.it](https://shop.bioskin.it) | $1.15 – $1.70 | Ballet 50-packs, stainless steel, EU shipping |
| **Zapmaster** | USA | [zapmaster.com](https://zapmaster.com) | $0.50 | Largest selection, but US shipping only |
| **HOF Beauty** | UK | [hofbeauty.co.uk](https://www.hofbeauty.co.uk) | £1.10 – £1.80 | Ballet F-Shank, insulated & non-insulated |
| **eBay / Amazon** | US/EU | eBay search | $0.80 – $1.70 | Caution: Fakes! Only from reputable sellers |

### 8.5 Recommendation for EU Users

1. **Cheapest EU option:** [Alvi Prague](https://alvi-prague.com) (CZ) – Ballet needles per piece, affordable, EU shipping, no customs.
2. **Bulk packs (50-pack):** [Bioskin](https://shop.bioskin.it) (IT) or [Euraf Shop](https://euraf-shop.com) (FR) – Ballet 50-packs, CE certified.
3. **UK alternative:** [HOF Beauty](https://www.hofbeauty.co.uk) – reliable, but customs fees possible (post-Brexit).
4. **Pro tip:** Buy **larger quantities** (50 or 100-pack) — this lowers the price per needle significantly.
5. **Caution on eBay/Amazon:** There are **fake needles** (blunt, not sterile). Only buy from reputable sellers!

### 8.6 Self-Research: Google & AI Tips

Supplier info can go out of date quickly – shops close, inventories change.

**Google search:**
`"Ballet electrolysis needles" EU shop` or `"F-Shank needles" Europe`

**AI prompt (for ChatGPT, Claude, or similar):**

> I'm looking for suppliers of electrolysis needles (Ballet F-Shank, sterile, disposable) that ship to the EU.
>
> - Search for currently active online shops
> - Check if they sell **individual needles** (not just 50-packs)
> - State the price per needle
> - Name the country of each shop and whether EU shipping is offered
> - If possible: whether insulated needles are available

Just copy this prompt into any AI chat – it will live-search for current suppliers on your behalf.

### 8.7 Needle Holder (How to Attach the Needle)

The needle needs to be mounted in a holder so you can guide it precisely. Several options exist:

| Option | Cost | Difficulty | Advantage | Disadvantage |
|--------|------|-----------|-----------|-------------|
| **3D Print + D-SUB Pin (scd31/zoemaestra design)** | $0 (just print + D-SUB pin ~$0.12) | Medium (files included) | Fits perfectly, original solution | Requires 3D printer |
| **Mechanical pencil hack** | $6–12 | Easy (simple modification) | Cheap, widely available | Must be insulated |
| **Pin vise** | $6–12 | Easy | Robust, precise | Not ergonomic |
| **Professional holder (Sterex)** | $35–58 | None | Ergonomic, insulated | Expensive, unknown connector – may not fit the DIY device |

**Recommendation:** 


- **3D-printed pen + D-SUB female pin (LCSC C5393697)** – this is the original project solution and fits perfectly. You can find 3D printing services online or at local makerspaces.

---

**Next chapter:** [Complete the PCB](assembly.md) (THT soldering & display connection)
