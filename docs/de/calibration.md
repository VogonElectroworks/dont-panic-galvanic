# Strom einstellen & Lye berechnen (Galvanisch)

Bei galvanischer Elektrolyse – [mehr zu den Verfahren](commercial-vs-diy.md#die-drei-verfahren-der-elektro-epilation) – kommt es darauf an, **wie viel Lauge (NaOH)** im Follikel entsteht. Das wird über **Stromstärke** und **Zeit** gesteuert.

!!! info "Vor der Kalibrierung"

    Die Kalibrierung (Ermittlung der richtigen Strom-/Zeit-Werte) erfordert eine echte Behandlung am eigenen Körper. **Lies zuerst das Kapitel [Erste Anwendung](usage.md).** Dort findest du:

    - Hautvorbereitung (Desinfektion)
    - Nadel setzen (Technik, Winkel)
    - Sicherheitshinweise für die erste Behandlung

    Komm danach hierher zurück, um die optimalen Werte für deine Haare einzustellen.

## Grundlagen: Lye-Units (LU)

Das scd31-Projekt nutzt das Konzept der **Lye-Units** (aus dem Lehrbuch "The Principles and Practice of Electrical Epilation"):

- **Formel:** `Strom (mA) × Zeit (s) × 10 = Lye-Units (LU)`
- **Beispiel:** 1 mA für 10 Sekunden = 100 LU.

### Richtwerte für verschiedene Haartypen (laut medizinischem Lehrbuch)

| Haartyp | Benötigte Lye-Units (LU) | Empfohlene Einstellung (Beispiel) |
|---------|--------------------------|----------------------------------|
| **Fine, unpigmented vellus hair** | 10 – 15 LU | 1 mA für 1–2 s |
| **Fine, pigmented, soft hair** | 10 – 20 LU | 1 mA für 1–2 s |
| **Medium/shallow terminal hair** | 15 – 30 LU | 1.5 mA für 10–20 s |
| **Deep terminal hair** | 30 – 45 LU | 2 mA für 15–25 s |
| **Very deep terminal hair** | 45 – 60 LU | 3 mA für 15–20 s |

!!! warning "DIY vs. professionelle Werte"

    Dies sind Lehrbuch-Richtwerte aus der professionellen Elektrolyse-Ausbildung. DIY-Anwender – besonders Anfänger im Gesicht – sollten **deutlich niedriger anfangen** (0,5–1,0 mA). Viele DIY-Anwender berichten von guten Ergebnissen bei Strömen weit unterhalb der Lehrbuch-Beispiele. Das DIY-Gerät hat keine automatische Hautwiderstands-Anpassung wie professionelle Geräte, daher ist ein vorsichtiger Ansatz sicherer.

**Wichtig:** Diese Werte sind nur Richtlinien! Jeder Körper reagiert anders. **Fang mit niedrigen Werten an!**

---

## Self-Test (Gerät prüfen)

Bevor du das erste Mal behandelst, führe den **Self-Test** durch:

1. **Gerät einschalten** (Display leuchtet auf).
2. **Menü öffnen:** "Self-Test" oder "Board Test" auswählen.
3. **Test abwarten:** Das Gerät prüft:

    - **Charge Pump** (Stromquelle, ob 15V anliegen).
    - **DAC** (Digital-Analog-Converter, ob der eingestellte Strom auch wirklich fließt).
    - **ADC** (Analog-Digital-Converter, ob der Strom korrekt gemessen wird).

4. **Ergebnis:** 

    - ✅ **Passed:** Gerät ist bereit.
    - ❌ **Failed:** Fehler in der Elektronik (nicht nutzen!).

**Wann macht man den Self-Test?**


- Vor der ersten Nutzung.
- Nach dem Flashen der Firmware.
- Wenn das Gerät komisch reagiert (Strom schwankt).

---

## Strom & Zeit einstellen (Lye berechnen)

1. **Gerät einschalten** (Display leuchtet auf).
2. **Menü öffnen:** Stromstärke (Current) auf z. B. **1.0 mA** einstellen (für den Anfang!).
3. **Zeit einstellen:** Pulsdauer (Duration) auf z. B. **10 Sekunden** (entspricht 100 LU bei 1 mA).

### Sicherheitshinweis ⚠️
- **Nie über 5 mA** gehen (Verbrennungsgefahr!).
- **Unter 1 mA anfangen** (Gesicht) oder **1–2 mA** (Körper).

---

## Rampen-Zeit (Ramp) einstellen

Das Gerät hat eine **Rampen-Funktion** (`Ramp` im Einstellungsmenü), die den Strom sanft hoch- und herunterfährt, statt schlagartig ein- und auszuschalten.

- **Ramp-Zeit (ms):** Dauer des Hoch- und Herunterfahrens in Millisekunden.
- **Standardwert:** 1000 ms (1 Sekunde).
- **Einstellbereich:** 0–5000 ms, in 25-ms-Schritten.

### Wie funktioniert die Rampe?

1. **Ramp-Up:** Beim Start steigt der Strom linear von 0 mA auf den eingestellten Wert (z. B. 1,0 mA) über die eingestellte Ramp-Zeit.
2. **Steady State:** Danach bleibt der Strom konstant auf dem eingestellten Wert.
3. **Ramp-Down:** Sobald genügend Lauge produziert wurde, wird der Strom sanft heruntergefahren. Die Ramp-Zeit bestimmt, wann die Abwärtsrampe beginnt: je länger die Rampe, desto früher setzt sie ein.

### Wann sollte man die Rampe anpassen?

- **Längere Rampe (z. B. 2000 ms):** Sanfterer Einstieg – angenehmer für empfindliche Haut. Die abgegebene Lye-Menge bleibt gleich, der Strom erreicht nur später den Maximalwert und wird früher wieder heruntergefahren.
- **Kürzere Rampe (z. B. 500 ms):** Schnellere, direktere Behandlung – weniger Einfluss auf die Lye-Berechnung.
- **Rampe auf 0 ms:** Schlagartiges Ein-/Ausschalten – nur für Tests oder erfahrene Anwender.

**Tipp:** Für den Anfang den Standardwert (1000 ms) verwenden. Erhöhe die Ramp-Zeit, wenn die Behandlung unangenehm ist.

---

## Schritt 2: Erfolgskontrolle

Das Gerät misst den Strom automatisch und zeigt ihn auf dem Display an. Du brauchst **kein Multimeter für die normale Kalibrierung**. Die Erfolgskontrolle erfolgt durch:

1. **Behandlung durchführen** (Nadel einsetzen, Fußpedal drücken, warten).
2. **Haar entfernen** (mit Pinzette).
3. **Beurteilen:**
   - ✅ **Leicht herausziehbar:** Genug Lauge (perfekt!).
   - ❌ **Zieht stark:** Zu wenig Lauge → Strom oder Zeit erhöhen.
   - ❌ **Verbrannte Haut:** Zu viel Lauge/Strom → Sofort runter mit dem Strom!

---

## Schritt 3: Anpassen bei Bedarf

Wenn das Haar nicht leicht herausgeht:

1. **Strom leicht erhöhen** (z. B. von 1.0 mA auf 1.5 mA).
2. **Oder Zeit verlängern** (z. B. von 10 s auf 15 s).
3. **Nochmal testen** an einer anderen Stelle (nicht direkt neben der ersten!).

**Faustregel:** Erhöhe den Strom nur langsam (0.5 mA Schritte).

---

## Was das Display anzeigt (Während der Behandlung)

Das Gerät misst den Strom **kontinuierlich** über den ADC:

- **"Requested: 1.0 mA"** → Das ist der Wert, den du eingestellt hast.
- **"Measured: 1.02 mA"** → Das ist der echte Strom, der fließt.
- **"Lye: 10 LU"** → Das ist die kumulierte Lye-Menge (Strom × Zeit × 10).
- **"Body: XX ohm"** → Gemessener Hautwiderstand (nur Info, keine automatische Anpassung).
  
  **Hinweis:** Das Gerät misst den Hautwiderstand **automatisch und in Echtzeit** während der Behandlung über die Spannungs- und Strommessung (`Widerstand = Spannungsabfall × 1000 / gemessener Strom`). Du musst dafür nichts extra einstellen.

**Abweichung zwischen Requested und Measured?**


- Kleine Abweichung (< 0.1 mA) ist normal.
- Große Abweichung (> 0.5 mA): Fehler in der Elektronik → Self-Test durchführen!

---

## Vergleich: DIY (scd31) vs. Profi-Geräte

| Aspekt | DIY (scd31/zoemaestra) | Profi-Gerät (Elipa) |
|--------|----------------------|-------------------|
| **Kalibrierung** | Manuell (Strom/Zeit/Rampe einstellen), misst und zeigt Hautwiderstand an. | Automatisch (passt Strom an Hautwiderstand an) |
| **Anzeige** | Display (mA, s) | Digital (LU direkt) |
| **Einstellung** | Durch Nutzer (Versuch & Irrtum) | Vorkonfiguriert |

**Fazit:** Bei DIY musst du **selbst testen**, was für deine Haare die richtigen Werte sind.

---

## Fehlerbehebung

| Problem | Ursache | Lösung |
|---------|---------|--------|
| Haar geht nicht raus | Zu wenig Lauge | Strom/Zeit erhöhen |
| Verbrennung | Zu viel Lauge/Strom | Strom sofort runter, Aloe Vera |
| Strom schwankt | Schlechter Kontakt | Nadelhalter prüfen (Schraube fest?), Nadel reinigen (Alkohol) |
| Display zeigt falschen Strom | Kalibrierung falsch | Mit [Multimeter prüfen](multimeter-basics.md) und mit Display-Wert vergleichen |

---

**Nächstes Kapitel:** [Multimeter-Nutzung](multimeter-basics.md) (optional)
