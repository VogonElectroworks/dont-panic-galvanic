# Commercial Devices vs. DIY: A Comparison

You have two options: Buy a finished device ($3500-5700) or build your own (~$30 in materials). Here's the comparison.

## 0. Comparison of Hair Removal Methods

Before you decide whether to build an electrolysis device, it helps to understand how the different permanent methods compare. This section gives a quick overview - focused on the methods meant to be **long-lasting or permanent**.

Source: [Wikipedia (Schamhaarentfernung § Verfahrensübersicht)](https://de.wikipedia.org/wiki/Schamhaarentfernung#Verfahrens%C3%BCbersicht)

| Method | Result | Hair/Skin Types | Cost (approx.) |
|--------|--------|-----------------|----------------|
| **Shaving** | Temporary - regrowth in hours | All hair & skin types | $1-12/month (face) to $12-23/month (full body) |
| **Waxing / Epilation** | Temporary - smooth for 2-3 weeks, enough regrowth for next treatment at 3-4 weeks | All hair & skin types | $1-12/month (DIY) or $23-115+/month (studio, varies by area) |
| **Laser / IPL** | Permanent **reduction** (FDA: *Permanent Hair Reduction*) | Only dark hair (needs melanin). Not for white, grey, blonde, or red hair. Dark skin at risk of burns. | $1,000-2,500 total for small area (e.g. beard), several thousand for large areas (e.g. full legs) |
| **Electrolysis** (this guide) | Permanent **removal** (FDA: *Permanent Hair Removal*) | **All** hair colors and skin types. No melanin required. | ~$25-35 DIY (one-time, unlimited use) or $35-115/h professional |

> 💡 **Costs vary by body area:** Full-body waxing at a studio can run $115-345 per session, while a simple eyebrow wax costs $12. Laser pricing scales similarly by area. Electrolysis is billed by the hour - small areas are faster and cheaper.

### Why the FDA Distinction Matters

The US Food and Drug Administration (FDA) clearly separates two categories:

- **Permanent Hair Removal** → Only electrolysis. The follicle is physically destroyed - hair cannot grow back.
- **Permanent Hair Reduction** → Laser and IPL. Hair growth is reduced long-term, but not all follicles are permanently disabled. Multiple maintenance sessions may be needed.

### The Unique Advantage of Electrolysis

While laser and IPL treat larger areas quickly, they have two hard limits:

1. **Hair color:** They only work on hair containing melanin (dark). White, grey, blonde, and red hair are untreatable.
2. **Skin tone:** Dark skin absorbs more light energy, raising the risk of burns and making treatment difficult or impossible.

Electrolysis has **neither limitation** - it works on every hair and every skin type, which is why the FDA recognizes it as the only method for *permanent removal* rather than *reduction*.

---

## 1. The Three Methods of Electro-Epilation

Now that you know why electrolysis stands out: There are three different modalities of needle epilation. The DIY device only supports **one of them** - you should understand this before making a decision.

Sources: [Sterex (Professional Electrolysis Manufacturer)](https://www.sterex.com/resources/three-modalities-of-electrolysis/)

### Galvanic Electrolysis (DC Current)

**Principle:** A weak DC current flows from the needle through the follicle to the ground electrode. Inside the follicle, electrolysis produces sodium hydroxide (NaOH), which chemically destroys the surrounding tissue and the hair root.

**Time per hair:** ~5-10 seconds at typical settings. The formula is simple: 1 mA × 1 s = 10 LU (Lye-Units). For 50 LU @ 1.0 mA you need ~5 s, for 65 LU @ 0.8 mA ~8 s (source: [scd31 Blog](https://www.scd31.com/posts/diy-hair-electrolysis-machine/)). Time varies depending on desired lye amount and current.

**Advantages:**

- ✅ Lower scarring risk than thermolysis - lye acts chemically and locally in the follicle, while heat from incorrect dosing can easily damage surrounding tissue (scd31: *"Galvanic seems a little more idiot-proof"*)
- ✅ Excellent for thick, coarse hairs
- ✅ Ideal for curved/twisted follicles - lye flows into every corner
- ✅ Less regrowth than thermolysis
- ✅ Simple circuitry (DC only, no RF generation needed)

**Disadvantages:**

- ❌ Slower than thermolysis (~5-10 s vs. ~1 s per hair) - perfectly adequate for home use though
- ❌ Less effective on fine vellus hairs (less moisture in the upper follicle)

### Thermolysis (High-Frequency AC)

**Principle:** High-frequency AC (3-30 MHz) heats the tissue directly at the needle tip. The follicle is destroyed by coagulation.

**Time per hair:** ~1 second

**Advantages:**

- ✅ Very fast - up to 20 hairs per minute
- ✅ Suitable for large areas
- ✅ Gentler on sensitive skin (low current)

**Disadvantages:**

- ❌ Requires experience and high concentration
- ❌ Higher scarring risk with incorrect dosing - heat can easily damage surrounding tissue (scd31: *"RF is generally a lot easier to mess up, which can cause burns or even scarring"*)
- ❌ Unsuitable for curved/twisted follicles - heat only works locally
- ❌ Higher regrowth rate (more treatments needed)
- ❌ More complex electronics (RF generation + impedance matching)

### Blend Method (DC + AC Combined)

**Principle:** Both current types are combined. DC generates lye, AC warms the tissue and accelerates the chemical reaction.

**Time per hair:** 5-10 seconds

**Advantages:**

- ✅ Best effectiveness (chemical + thermal)
- ✅ Suitable for all hair types and follicle shapes
- ✅ Usually more comfortable for the patient than pure thermolysis
- ✅ Lower regrowth

**Disadvantages:**

- ❌ Most complex electronics (DC + HF power sources + timing)
- ❌ More complex to use (more settings)

### Why Can the DIY Device Only Do Galvanic?

The scd31 design and all forks operate **purely galvanically**. The reason is simple:

- **Galvanic** only needs a programmable DC current - the RP2040 microcontroller + a simple voltage regulator handle this
- **Thermolysis** needs a high-frequency oscillator (3-30 MHz) with precise impedance matching to the needle - a completely different class of circuit
- **Blend** needs both simultaneously + precise timing

For home use, the speed disadvantage of the galvanic method is **manageable**: At 5-10 seconds per hair and 10-15 hairs per session (as recommended in [usage.md](usage.md)), you're done in 1-3 minutes per session. A professional treating 8 hours a day, however, would prefer thermolysis or blend.

> **All three methods are equally effective**, as even professional sources confirm. The difference lies in speed, follicle shape, and personal comfort.

---

## 2. Commercial Electrolysis Devices

### Professional Devices (e.g., Elipa "Profi SB/SK")

- **Price:** $3500-5700
- **Certification:** FDA, CE, FCC tested
- **Features:**
  - Fully computerized (automatic current regulation)
  - Thermolysis + Galvanic + Blend
  - Foot switch & air cooling
  - 3-year warranty
  - Professional user manual
- **Advantages:**
  - ✅ Safe (certified)
  - ✅ Support when problems arise
  - ✅ Loaner device during repairs
- **Disadvantages:**
  - ❌ Expensive
  - ❌ Monopoly (few manufacturers)

### "Home Kits" (Amazon/eBay)
- **Price:** $50-200
- **Quality:** Often poor (per Reddit community)
- **Problem:** No current limiting, unsafe electronics
- **Recommendation:** Stay away!

---

## 3. DIY Electrolysis Devices

### scd31 Design (Original)
- **Price:** ~$25-35 (PCB + parts)
- **Certification:** None (DIY for personal use only!)
- **Features:**
  - Galvanic only (see [Section 1](#1-the-three-methods-of-electro-epilation))
  - RP2040 microcontroller
  - OLED display
  - Foot pedal connection
- **Advantages:**
  - ✅ Cheap
  - ✅ Open-source (plans freely available)
  - ✅ Community support (GitHub/GitLab)
- **Disadvantages:**
  - ❌ Requires assembly (soldering, enclosure)
  - ❌ No certification (liability with the builder)
  - ❌ No warranty

### Forks (zoemaestra, KibbieKatt)
- **Improvements:** USB-C, better manufacturability, 3D-printed enclosure
- **Recommendation:** Use a fork (see [Hardware Selection](hardware-selection.md))

---

## 4. Community Recommendations

### For Transgender Individuals (r/MtF, etc.)
- **Problem:** Professional treatment is expensive (and often not covered by insurance)
- **Solution:** DIY or "group workshops" (building devices + learning together)
- **Warning:** Amazon "home kits" are junk → Build your own!

### For Beginners (No Technical Background)
- **Recommendation:** Watch [scd31's electrolysis video](https://peertube.scd31.com/w/kpZmatofZK1LyQi7SH1uo1?start=0s) first — it shows the galvanic method in action. There are also many demonstrations of needle epilation on YouTube (search for "electrolysis hair removal").
- **Optional:** Book one professional session to feel the sensation in person. Keep in mind that most studios use thermolysis or blend, not the galvanic method this guide covers.
- **Then:** Build a DIY device and practice on non-critical areas (thighs)
- **Safety:** Always start below 1 mA!

---

## 5. Safety Comparison

| Aspect | Commercial (Elipa) | DIY (scd31 fork) |
|--------|---------------------|-------------------|
| **Current limiting** | Hardware + Software | Hardware + Software (charge pump physically limited to ~mA, op-amp + MOSFET regulate current, software monitors & limits to 2.4 mA) |
| **CE marking** | ✅ Yes | ❌ No |
| **Liability** | Manufacturer | You |
| **Repairability** | Manufacturer only | You can fix everything |

---

## 6. Verdict: What Should You Do?

### Choose Commercial If:
- ✅ Money is no object
- ✅ You want maximum safety
- ✅ You're not interested in building things

### Choose DIY If:
- ✅ You want to save money ($3500 vs. $35)
- ✅ You enjoy building things
- ✅ You're willing to take responsibility

---

**Next chapter:** [Hardware Selection](hardware-selection.md) (which fork to choose)