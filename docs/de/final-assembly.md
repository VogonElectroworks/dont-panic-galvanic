# Gerät zusammenbauen

Jetzt kommen alle Teile zusammen: Platine, Gehäuse und Stift werden zum fertigen Gerät verbunden.

## Voraussetzungen

Du hast bereits:

- ✅ [Platine fertiggestellt](assembly.md) (THT-Bauteile + Display gelötet)
- ✅ [Alle Plastikteile gedruckt](3d-printing.md) (Gehäuse, Knopf, Stift)
- ✅ [Nadelstift gebaut](pen.md)

## Schritt 1: Platine testen (vor dem Einbau)

Bevor du die Platine ins Gehäuse schraubst: **Teste sie zuerst!** Eine defekte Platine nach dem Einbau wieder ausbauen zu müssen, ist ärgerlich.

**Platine sicher ablegen:**

- Lege die Platine mit der **Unterseite nach unten** auf eine **nicht-leitende Unterlage** – z. B. Holz, Karton, Pappe oder die antistatische Verpackung, in der sie geliefert wurde.
- **Nicht auf Metall, Alufolie oder einer leitfähigen Unterlage ablegen** (Kurzschlussgefahr!).
- Der Abstand zu metallischen Gegenständen sollte einige Zentimeter betragen.

**Test:**

1. Verbinde das Gerät per USB-C mit dem PC (oder einem USB-Netzteil).
2. Halte den **BOOT-Knopf** auf der Platine gedrückt, während du das USB-Kabel einsteckst.
3. Die Platine sollte sich als **Laufwerk (USB-Stick)** melden (z. B. "RPI-RP2").
4. Erscheint das Laufwerk: **Platine funktioniert** ✅ – weiter mit Schritt 2.
5. Erscheint nichts: Prüfe die Lötstellen auf kalte Lötstellen oder Kurzschlüsse, siehe [Fehlerbehebung in der Löt-Anleitung](assembly.md#fehlerbehebung).

## Schritt 2: Drehknopf aufstecken

1. Prüfe, ob die Bohrung im Knopf sauber ist (ggf. mit einem 2 mm Bohrer vorsichtig nacharbeiten).
2. Stecke den Knopf von Hand auf die Encoder-Achse – er sollte **straff sitzen, aber ohne Gewalt** aufgeschoben werden können.
3. Wenn er zu locker sitzt: einen winzigen Tropfen Heißkleber oder Sekundenkleber in die Bohrung geben und aufstecken.
4. **Ausrichtung:** Drehe den Knopf so, dass eine Markierung (falls vorhanden) nach oben zeigt, wenn der Encoder in Mittelstellung ist.

!!! tip "Knopf dreht durch?"
    Der Encoder hat eine abgeflachte Achse (D-Shape). Der Knopf sollte diese Form exakt abbilden. Falls die Bohrung rund ist (Drucktoleranz), hilft ein kleiner Tropfen Sekundenkleber.

## Schritt 3: Platine ins Gehäuse einbauen

1. **Platine positionieren:** USB-C, die 3,5 mm-Klinkenbuchse (für Stift/TENS) und die 6,35 mm-Klinkenbuchse (für Fußpedal) müssen aus den vorgesehenen Öffnungen im Gehäuse ragen.
2. **Display:** Das Gehäuse hat eine Aussparung für das Display. Positioniere die Platine so, dass das Display genau dahinter sichtbar ist. Das Display ist bereits auf der Platine angelötet – es muss nicht extra eingesetzt werden.
3. **Schrauben:** 4× M3 Schrauben (10–15 mm, idealerweise Senkkopf) von oben durch die Platine in die Gewinde im Gehäuse drehen.
4. **Nicht überdrehen:** PETG bricht bei zu viel Kraft!
5. Falls das Display wackelt: mit etwas Heißkleber fixieren.

![Platine im Gehäuse](../assets/enclosure-mounting.png){width=600 loading=lazy}
*Abbildung: So wird die Platine im Gehäuse verschraubt*

## Schritt 4: Gehäuse schließen

Das Gehäuse schließen und verschrauben.

## Schritt 5: Kabel anschließen

1. **Nadelstift:** Den 3,5mm-Klinkenstecker des Stifts in die entsprechende Buchse am Gerät stecken.
2. **TENS-Pad:** Den 2mm-Stecker des TENS-Pads in die zweite Buchse stecken.
3. **Fußpedal:** Den 6,35mm-Klinkenstecker des Fußpedals einstecken.
4. **Kabel ordnen:** Kabelbinder oder Spiralschlauch nutzen, damit es im Gehäuse sauber aussieht.

---

**Nächstes Kapitel:** [Firmware installieren](firmware.md)
