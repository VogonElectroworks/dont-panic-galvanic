# Safety & Legal

## ⚠️ IMPORTANT: Read before starting!

Before you begin building, let's talk about the legal and safety aspects.

## 1. Legal Situation (Germany / EU)

### The Problem
An electrolysis device applies electrical current into the human body to destroy tissue (the hair root). This places it under strict regulations:

- **Medical Device Regulation (MDR):** Hair removal devices are classified as medical devices (Class I or IIa).
- **CE Marking:** Mandatory for commercial devices (costs tens of thousands of euros).
- **Product Liability:** Sellers are liable for injuries.

### The "DIY Safe Harbor"
Open-source projects like this operate in a legal gray area:

| Scenario | Legal Classification | Liability |
|----------|----------------------|-----------|
| Developer sells **finished device** | Sale of uncertified medical devices | ❌ Illegal |
| Developer sells **plans / PCB files** | Sale of "evaluation kits" (electronics hobby kits) | ✅ Allowed |
| Hobbyist builds a **device for personal use** | "Manufacturing for personal use" | ✅ Allowed (own risk) |

**You are the manufacturer!**  
The moment you solder the last wire and flash the firmware, **you legally become the manufacturer** of your own device. This means you assume full responsibility for your own safety.

## 2. Safety Risks

### Electrical Safety
- **Current:** The device operates at low currents (0.1–5 mA), but incorrect calibration can cause burns and scarring.
- **Insulation:** Only use insulated needle holders. The device itself only operates when disconnected from the USB charger.
- **Foot Pedal:** Acts as the current switch for treatment (not an emergency stop!). It ensures the needle is not permanently live. **Test it before each session:** Press pedal = current flows for the set time, release pedal = current stops immediately.
- **Ground Electrode (TENS pad):** The pad must be attached to clean, hairless skin near the treatment area before every session. Without the pad, the circuit is not closed — no current will flow. Never place the pad on open wounds, scars, or tattoos. If skin irritation occurs, move to a different spot.

### Hygiene
- **Single-use needles:** Never use the same needle on multiple people (infection risk!).
- **Disinfection:** Disinfect skin and tools before each treatment.
- **Skin reactions:** Stop immediately if redness or swelling occurs.

**Normal skin reactions** (temporary, subside within minutes to a few hours):

- Mild redness (erythema) around the treated follicle
- Slight swelling of the follicle opening
- Tiny scabs or crusts as the skin heals — do not pick at them

**When to stop and consult a doctor:**

- Redness, swelling, or pain persisting more than 24 hours
- Blisters, burns, or weeping wounds
- Signs of infection (pus, increasing warmth, spreading redness)
- Scarring or persistent skin discoloration

## 3. Disclaimer

**This is not a certified medical device!**  
All information, plans, and schematics described here are for informational and educational purposes only. You build and operate this device at your own responsibility.

### Summary

- **Educational purpose:** You use the information in this guide at your own risk.
- **Not a medical device:** No CE marking, no clinical approval, no FDA/MPA certification. Use on humans is expressly at your own risk.
- **NO WARRANTY:** This project is provided without any warranty — express or implied. The entire build and operation process is at your own risk.
- **No liability:** In no event shall the authors or contributors be liable for direct, indirect, or consequential damages resulting from building or using this device.
- **No liability for translation errors:** The texts in this guide were created and translated by non-professionals and/or machines. The authors are not liable for translation errors or resulting damages.
- **Consult a doctor:** Consult a specialist (dermatologist) before using this device.

### Trademarks

All product and manufacturer names, trademarks, and registered marks are the property of their respective owners. Their mention is for informational purposes only and does not imply affiliation or endorsement. This project is not affiliated with any commercial electrolysis device manufacturers.

## 4. Recommended Safety Measures

- **Patch test:** Treat a single, inconspicuous area first and wait 24 hours to check for adverse reactions.
- **Start low:** Begin with the lowest current setting and the shortest duration. Increase only if needed for effective results.
- **Avoid high-risk areas:** Do not treat over moles, birthmarks, tattoos, or broken skin.
- **One area at a time:** Do not re-treat an area until the skin has fully healed (usually 1–2 weeks).
- **Good lighting and magnification:** Use a bright light and a magnifying mirror or magnifying glasses so you can see the hair follicle clearly.
- **Stable hand position:** Rest your hand on a stable surface to avoid slipping and injuring the skin with the needle.
- **Keep dry:** Do not use the device near water or with wet hands.
- **Battery only:** The device must only be powered by battery during a session — never treat while connected to a USB charger.
- **Take breaks:** If the skin becomes red or uncomfortable, take a break. Do not treat more than 30 minutes in one session.

---

**Next chapter:** [Commercial vs. DIY — Should You Build or Buy?](commercial-vs-diy.md)