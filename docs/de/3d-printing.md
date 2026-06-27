# 3D-Druck: Alle Plastikteile drucken

In diesem Kapitel lernst du, wie du Gehäuse, Drehknopf und Nadelstift für dein Elektrolyse-Gerät druckst.
Das Design stammt von **zoemaestra** (USB-C Fork) und ist für den 3D-Druck optimiert.

**Zielgruppe:** Laien mit Zugang zu einem 3D-Drucker (oder Druck-Service).

**Dauer:** 2-6 Stunden (je nach Druckzeit).

### Material-Empfehlungen

| Teil | Empfohlenes Material | Warum |
|------|----------------------|------|
| **Gehäuse** (`case.stl`) | **PETG** | Widerstandsfähig, hitzebeständig, leicht zu reinigen. PLA funktioniert, wird aber in heißer Umgebung (z. B. Auto) weich. |
| **Drehknopf** (`knob.stl`) | **PLA oder PETG** | Keine mechanische Belastung. PLA gibt die glatteste Oberfläche. |
| **Stiftkörper** (`pen-Body.stl`) | **PETG** | Wird lange in der Hand gehalten — PETGs leichte Flexibilität ist angenehm und unempfindlich gegen Hautfett. |
| **Stiftkappe** (`pen-Cap.stl`) | **PLA oder PETG** | Klein, keine Belastung. Material an den Stiftkörper anpassen. |

!!! tip "Community-Input gesucht"
    Dies sind allgemeine Empfehlungen. Wenn du Erfahrung mit bestimmten Materialien und Marken für dieses Projekt hast, teile deine Erkenntnisse in den GitHub Discussions.

---

## 1. Welches Gehäuse nehmen wir?

### 1.1 zoemaestra's Design (Empfehlung ⭐)

**Quelle:** [zoemaestra-fork/3dprint/](https://github.com/zoemaestra/hair-electrolysis-machine-usb-c/tree/main/3dprint)

**Enthaltene Dateien:**

- `case.stl` - Hauptgehäuse (oben & unten)
- `knob.stl` - Drehknopf für Encoder
- `pen-Body.stl` - Nadelhalter-Griff
- `pen-Cap.stl` - Schutzkappe für Nadelhalter

---

## 2. 3D-Druck vorbereiten

### 2.1 Dateien herunterladen

1. Gehe auf [zoemaestra/hair-electrolysis-machine-usb-c](https://github.com/zoemaestra/hair-electrolysis-machine-usb-c).
2. Öffne den Ordner `3dprint/`.
3. Lade alle `.stl` Dateien herunter (Rechtsklick → "Save link as").

!!! tip "Gehäuse modifizieren?"
    Wenn du das Gehäuse verändern oder personalisieren willst (eigene Beschriftung, andere Aussparungen, andere Farbe),
    schau ins Kapitel [Modding: Platinenaufdrucke & Gehäuse anpassen](modding.md#gehause-modifizieren-personalisieren).

### 2.2 Slicer-Einstellungen (Empfohlen)

**Software:** [Ultimaker Cura](https://ultimaker.com/software/ultimaker-cura/) (kostenlos) oder [PrusaSlicer](https://www.prusa3d.com/page/prusaslicer/).

| Einstellung | Wert | Begründung |
|-------------|------|-------------|
| **Filament** | PETG empfohlen | PETG ist widerstandsfähig, hitzebeständig und leicht zu reinigen (hygienisch) |
| **Layerhöhe** | 0.2 mm | Guter Kompromiss aus Qualität & Zeit |
| **Infill** | 15 % | Reicht für stabiles Gehäuse |
| **Supports** | Ja (Baum-Support) | Für Überhänge (Display-Öffnung) |
| **Brim/Raft** | Nein | Gehäuse hat flache Bodenfläche |
| **Temperatur (PETG)** | 230-240°C (Düse), 75-85°C (Bett) | Standard-PETG-Einstellungen |

**Tipp:** Drucke das Gehäuse **mit der Display-Öffnung nach oben** (so brauchst du weniger Support-Material innen).

### 2.3 Druck starten

1. **Slicen:** Lade `case.stl` in den Slicer → Klicke auf "Slice" → Speichere die `.gcode` Datei.
2. **SD-Karte:** Kopiere die `.gcode` auf die SD-Karte deines Druckers.
3. **Drucken:** Starte den Druck (Dauer: ca. 2-4 Stunden).

**Fehler vermeiden:**

- **Warping (Kanten heben sich):** Bett gut nivellieren, Klebeband/PEI-Plate nutzen.
- **Stringing (Fäden):** Retraction-Einstellungen prüfen (bei PETG wichtig!).

---

## 3. Kleinteile drucken: Drehknopf & Stift

Neben dem Gehäuse solltest du gleich die Kleinteile mitdrucken. Die sind schnell erledigt, aber die richtigen Einstellungen machen den Unterschied.

### 3.1 Kleinteile: Drehknopf (`knob.stl`) & Stiftkappe (`pen-Cap.stl`)

Diese Teile sind klein und haben keine großen Überhänge. Die gleichen Einstellungen gelten für beide:

| Einstellung | Wert | Begründung |
|-------------|------|-------------|
| **Layerhöhe** | 0.12–0.16 mm | Feinerer Druck für glatte Oberfläche (kleine Teile, fallen auf) |
| **Filament** | PETG oder PLA | Gleiches Material wie Gehäuse |
| **Infill** | 15–20 % | Reicht völlig, keine Belastung |
| **Supports** | Nein | Keine Überhänge |
| **Brim** | Ja (5 mm) | Kleine Teile lösen sich sonst vom Bett |

**Druckdauer:** je ~20–30 Minuten.

### 3.2 Stiftkörper (`pen-Body.stl`)

Der Stiftkörper ist ein langes, schmales Teil (ca. 10–15 cm). Hier gelten andere Einstellungen:

| Einstellung | Wert | Begründung |
|-------------|------|-------------|
| **Layerhöhe** | 0.2 mm | Gut genug für den Stift, Zeitersparnis |
| **Filament** | PETG oder PLA | Gleiches Material |
| **Infill** | 20 % | Soll stabil in der Hand liegen |
| **Supports** | Nein | Körper liegt flach auf dem Bett |
| **Brim** | Ja (8 mm) | Langes, schmales Teil neigt zum Ablösen |
| **Orientierung** | **Flach auf der Seite** | Die runde Oberseite zeigt nach oben, die flache Unterseite liegt auf dem Bett |

**Druckdauer:** ~1–2 Stunden.

!!! tip "Stift und Gehäuse gleichzeitig drucken?"
    Da der Stiftkörper die gleiche Layerhöhe (0.2 mm) wie das Gehäuse hat, kannst du beide zusammen in den Slicer laden und auf einer Platte drucken – das spart Zeit.

## 4. Optional: Oberfläche veredeln (Schleifen, Füller, Lack)

3D-Druck erzeugt immer sichtbare Schichtlinien. Nach dem Druck kannst du die Oberfläche glätten und lackieren – das ist **optional**, verbessert aber die Haptik und Hygiene.

→ **Alle Methoden & Anleitungen** findest du im Kapitel [Modding: Oberfläche veredeln](modding.md). Dies ist ein optionaler Personalisierungs-Schritt.

---

## 5. Fehlerbehebung

| Problem | Ursache | Lösung |
|---------|---------|--------|
| Gehäuse passt nicht (zu klein) | Druckmaßstab falsch (100% vs 110%) | Im Slicer auf "Original Size" prüfen |
| Schrauben halten nicht | Zu viel Drehmoment | M3 Muttern oder Inserts einpressen |
| Display wackelt | Öffnung zu groß | Heißkleber oder Doppelklebeband nutzen |
| Schichtlinien sichtbar | Zu grobe Schleifpapier-Körnung | Mit 600er nass nachschleifen |

---

## 6. Optional: Ohne 3D-Drucker? Alternativen

Du hast keinen Zugang zu einem 3D-Drucker? Kein Problem – es gibt Wege, trotzdem an ein Gehäuse zu kommen.

### 7.1 Druck-Service (Online oder Lokal)

Du hast keinen eigenen 3D-Drucker? Kein Problem – fast überall gibt es Druck-Dienste, bei denen du einfach die STL-Dateien hochlädst und die Teile gedruckt bekommst.

**Das Prinzip ist immer gleich:**

1. STL-Dateien hochladen (`case.stl`, `knob.stl`, `pen-Body.stl`, `pen-Cap.stl`)
2. Material und Farbe wählen
3. Bezahlen und liefern lassen

#### Welches Material für welches Teil?

Es gibt drei relevante Druckverfahren, die du angeboten bekommst:

| Verfahren | Eigenschaften | Geeignet für |
|-----------|--------------|-------------|
| **FDM** (Filament, z.B. ABS, PLA, PETG) | Schichtlinien sichtbar, günstig, zäh | Gehäuse (`case.stl`), Stiftkörper (`pen-Body.stl`) – dünne Wände sind unproblematisch |
| **SLA/Resin** (flüssiges Harz) | Sehr glatt, spröde, günstig | Knopf (`knob.stl`), Stiftkappe (`pen-Cap.stl`) – kleine Teile ohne Belastung |
| **MJF/SLS** (Nylon-Pulver, z.B. PA12) | Sehr stabil, langlebig, gleichmäßig, teurer | Gehäuse + Stiftkörper – Premium-Lösung, hält ewig |

!!! warning "Dünne Wände – Gehäuse (`case.stl`) und Stiftkörper (`pen-Body.stl`)"
    Beide Teile haben stellenweise dünne Wände. Viele Druck-Dienste zeigen dafür eine Warnung an (meist mit der Option, das Risiko zu akzeptieren).

    - **FDM (ABS, PETG):** Kein Problem – FDM ist zäh genug für dünne Wände.
    - **SLA/Resin:** Das Gehäuse kann an dünnen Stellen brechen. Besser ein zäheres Verfahren wählen oder das Gehäuse separat in FDM drucken.
    - **MJF (PA12):** Unproblematisch, PA12 ist sehr stabil.

**Empfehlung nach Budget:**

| Stufe | Gehäuse + Stiftkörper | Knopf + Kappe | Kosten (Richtwert) |
|-------|----------------------|---------------|-------------------|
| 💰 **Budget** | FDM (ABS/PETG) | SLA-Resin | ~6–17 $ |
| ⭐ **Empfohlen** | MJF (PA12) oder FDM (ABS) | SLA-Resin | ~12–23 $ |
| 👑 **Premium** | MJF (PA12/PA12S) | MJF (PA12) | ~17–35 $ |

#### Wo bestellen?

Das hängt stark davon ab, wo du wohnst. Grundsätzlich gilt:

- **Lokale Maker-Spaces** oder private Drucker (z.B. über Kleinanzeigen) – oft am günstigsten, meist FDM-Qualität
- **Online-Druckdienste** (z.B. JLCPCB, Sculpteo, Shapeways oder lokale Alternativen) – bequem, per Post
- **JLCPCB** hat den Vorteil, dass du den 3D-Druck direkt mit der Platinen-Bestellung kombinieren kannst. Die Teile werden aber möglicherweise in zwei Paketen geliefert (PCB und 3D-Druck getrennt).

**Tipp:** Vergleiche einfach die Preise bei 2–3 Diensten in deiner Region, indem du die STL-Dateien hochlädst und dir ein Angebot geben lässt. Die Kosten variieren stark – ein lokaler FDM-Druck kann unter 12 $ liegen, während derselbe Dienst für MJF das Dreifache verlangt.

### 7.2 Alternative Gehäuse

| Option | Aufwand | Kosten | Nachteile |
|--------|---------|--------|-----------|
| **Universal-Gehäuse (Hammond)** | Schrauben + Bohren | ~12-17 $ | Passt nicht perfekt, muss selbst angepasst werden |
| **Holzgehäuse** | Sägen + Schleifen | ~6-12 $ | Schwer, nicht feuchtigkeitsbeständig |
| **Offenes Design (kein Gehäuse)** | Keiner | 0 $ | ⚠️ Kurzschluss-Gefahr, nicht empfohlen! |

**Empfehlung:** Such dir einen lokalen Maker-Space oder jemanden auf eBay Kleinanzeigen, der das Gehäuse für dich druckt. Das kostet ~12 $ und du bekommst die passgenaue Original-Lösung.

---

**Nächstes Kapitel:** [Nadelstift bauen](pen.md)
