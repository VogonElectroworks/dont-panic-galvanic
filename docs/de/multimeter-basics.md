# Optional: Multimeter-Nutzung: Gerät prüfen & Fehler finden

_Dieses Kapitel ist optional. Für die normale Kalibrierung und Behandlung brauchst du **kein** Multimeter – das Gerät misst den Strom selbst und zeigt ihn auf dem Display an._

Ein Multimeter hilft dir, wenn:

- Der **Self-Test** fehlschlägt
- Der angezeigte Strom stark vom eingestellten Wert abweicht
- Du ungewöhnliche Widerstände vermutest

Ein einfaches 12-$-Multimeter aus dem Baumarkt reicht völlig.

### Worauf du achten solltest

Jedes einfache digitale Multimeter reicht. Du brauchst:

- **Widerstandsmessung (Ω)** — für Durchgangsprüfung und Kabeltest
- **Gleichstrommessung (mA)** — zum Verifizieren der Gerät-Ausgabe
- **Gleichspannungsmessung (V)** — zum Prüfen des Akkus

Autorange ist praktisch, aber nicht erforderlich. Ein manuelles Gerät mit 2000-Ω-Bereich (2 kΩ) reicht. Vermeide die billigsten „Stiftmesser" — sie sind fummelig und schwer abzulesen.

---

## Schritt 1: Multimeter einstellen

1. **Drehschalter** auf **"Ω" (Ohm)** stellen.
2. **Bereich:** Autorange (wenn vorhanden) oder "2000 Ω" (2 kΩ).
3. **Test:** Halte die beiden Messspitzen zusammen → Display sollte "0" oder "0.1" anzeigen.

---

## Schritt 2: Kabel & Steckverbindungen prüfen (Durchgangsprüfung)

Bevor du das Gerät einschaltest, prüfe alle Kabel auf Durchgang – so findest du Kabelbrüche, kalte Lötstellen oder lose Stecker.

1. **Multimeter auf Durchgangsprüfung stellen:** Dreh den Drehschalter auf die Ω-Position (Ohm). Drücke ggf. die MODE/FUNC-Taste, bis im Display das **Piepton-Symbol („)))“)** erscheint – das sieht aus wie ein Lautsprecher mit Schallwellen. Der Piepton ertönt bei niederohmiger Verbindung (< 30 Ω).
2. **Nadelhalter-Kabel prüfen:** Eine Messspitze an den 3,5mm-Klinkenstecker (Spitze), die andere an das andere Ende des Kabels (D-SUB-Pin). Der Piepton bestätigt Durchgang.
3. **TENS-Pad-Kabel prüfen:** Gleiches Spiel – eine Spitze an den 2mm-Stecker, die andere an das andere Ende.
4. **Fußpedal-Kabel prüfen:** Eine Spitze an den 6,35mm-Klinkenstecker, die andere an den anderen Stecker. Pedal drücken → Piepton nur bei gedrücktem Pedal.

**Hinweis:** Wenn der Piepton ausbleibt, liegt ein Kabelbruch oder eine kalte Lötstelle vor – reparieren vor der ersten Behandlung!

---

## Schritt 3: Strom messen (Fortgeschritten)

Falls du prüfen willst, ob das Gerät den eingestellten Strom tatsächlich liefert:

1. **Drehschalter** auf **"mA"** (Milliampere) stellen.
2. **Messspitzen** in die Buchsen "mA" und "COM".
3. **In Reihe schalten:** Plus-Pol des Geräts → Messspitze 1 → Messspitze 2 → Nadelhalter.
4. **Gerät einschalten** (Fußpedal drücken) → Strom ablesen und mit Display-Wert vergleichen.

### Sicherheitshinweis ⚠️
- **Nie direkt am Gerät messen, während du dich selbst behandelst!**
- Vor dem Messen immer an einem **Ersatzwiderstand** (z. B. feuchtes Tuch) testen.

---

## Tipps

1. **Billig-Multimeter:** Sind oft ungenau (±5 %). Für unsere Zwecke reicht das.
2. **Messspitzen:** Krokodilklemmen sind einfacher als Halten.
3. **Übung:** Miss mal deinen Hautwiderstand (trockene Haut vs. feuchte Haut).

---

**Nächstes Kapitel:** [Erste Anwendung](usage.md)
