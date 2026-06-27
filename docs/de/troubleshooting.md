# Fehlerbehebung: Wenn es nicht klappt

Hier findest du Lösungen für die häufigsten Probleme.

## Hardware-Probleme

### 1. "Gerät startet nicht"

**Symptom:** Display bleibt schwarz, keine LEDs leuchten.

**Mögliche Ursachen:**

- USB-C-Kabel defekt (nur laden, keine Daten).
- Sicherung durchgebrannt (falls vorhanden).
- Verpolung bei der Stromversorgung.

**Lösung:**

1. Anderes USB-C-Kabel testen (mit Datenübertragung!).
2. Netzteil prüfen (5V 2A).
3. Mit Multimeter auf Kurzschluss prüfen.

---

### 2. "Display bleibt schwarz"

**Symptom:** Gerät läuft (LEDs leuchten), aber kein Bild.

**Mögliche Ursachen:**

- Falsche Pin-Belegung des Displays.
- Display defekt.
- I2C-Adresse stimmt nicht.

**Lösung:**

1. **Pin-Belegung prüfen** (VCC, GND, SCL, SDA).
2. **I2C-Scanner** flashen (Sketch, um Adresse zu finden).
3. Display tauschen (AliExpress/Amazon sind günstig).

---

### 3. "Fußpedal reagiert nicht"

**Symptom:** Strom fließt nicht, wenn Pedal gedrückt wird.

**Mögliche Ursachen:**

- THT-Lötstelle kalt (kalte Lötstelle).
- Fußpedal defekt.
- Software-Einstellung ("Pedal invertieren").

**Lösung:**

1. **Lötstellen prüfen** (mit Lupe).
2. **Fußpedal an PC anschließen** (als MIDI-Controller testen).
3. In den Einstellungen **"Pedal Mode"** umschalten.

---

## Software-Probleme

### 4. "Firmware lässt sich nicht flashen"

**Symptom:** Gerät erscheint nicht als USB-Stick.

**Mögliche Ursachen:**

- Boot-Knopf falsch getimed.
- Bootloader beschädigt.
- USB-Treiber fehlt (Windows).

**Lösung:**

1. **Nochmal versuchen:** Boot-Knopf **gedrückt halten**, dann Reset.
2. **RP2040 Debugger** nutzen (falls Bootloader kaputt).
3. **Zadig-Tool** (Windows) nutzen, um USB-Treiber zu reparieren.

---

### 5. "Menü ist auf Englisch, ich will Deutsch"

**Symptom:** Firmware unterstützt nur Englisch.

**Lösung:**

- Aktuell ist die Firmware nur auf Englisch.
- **Hilf mit!** Übersetze die Strings in der Firmware (Rust-Code) und erstelle einen Pull Request.

---

## Anwendungs-Probleme

### 6. "Haar lässt sich nicht ziehen"

**Symptom:** Nach der Stromanwendung sitzt das Haar noch fest.

**Mögliche Ursachen:**

- Zu kurze Behandlungsdauer.
- Zu niedriger Strom.
- Nadel war nicht tief genug.

**Lösung:**

1. **Pulsdauer verlängern** (2–3 Sekunden bei Thermolyse).
2. **Strom erhöhen** (langsam steigern, max. 5 mA).
3. **Nadel tiefer setzen** (bis zum Widerstand).

---

### 7. "Haut verbrennt" (weiße Stelle)

**Symptom:** Nach der Behandlung wird die Haut weiß oder verkrustet.

**Ursache:**

- Zu hoher Strom.
- Zu lange Behandlung.
- Nadel war zu tief (subkutan).

**Sofortmaßnahmen:**

1. **Strom sofort aus!**
2. **Kühlen** (Aloe Vera).
3. **Keine Sonne** (Pigmentstörung!).
4. **Arzt aufsuchen** (bei großen Verbrennungen).

**Prävention:**

- Immer mit niedrigen Strömen anfangen (0,5–1 mA).
- Erst an Beinen üben, dann Gesicht.

---

**Steckst Du immer noch fest?** Schau in den [Community-Bereich auf der Startseite](index.md#community) nach weiteren Hilfskanälen.

---

**Zurück zur Übersicht:** [Index](index.md)
