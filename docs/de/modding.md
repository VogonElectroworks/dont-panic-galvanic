# Modding: Platinenaufdrucke & Gehäuse anpassen ⭐

_Dieses Kapitel ist für alle, die ihr Gerät personalisieren oder an eigene Bedürfnisse anpassen wollen. Die hier beschriebenen Schritte sind optional – für den reinen Nachbau werden sie nicht benötigt._

Der Guide ist in drei Teile gegliedert:

- [Platinenaufdrucke (Silkscreen) anpassen](#platinenaufdrucke-silkscreen-anpassen) – Logo entfernen, eigene Beschriftung auf die Platine bringen
- [Gehäuse modifizieren & personalisieren](#gehause-modifizieren-personalisieren) – STL bearbeiten, Beschriftung anbringen, Farbe ändern
- [Oberfläche veredeln](#oberflache-veredeln-schichtlinien-kaschieren-lackieren) – Schichtlinien kaschieren & lackieren

---

## Platinenaufdrucke (Silkscreen) anpassen

Manche Forks haben abweichende Aufdrucke (z. B. den Namen des Autors oder ein Logo auf der Platine). Das ist rein kosmetisch, aber wenn du deine eigene Version haben willst, kannst du den Silkscreen in KiCad anpassen.

### Was ist Silkscreen?

Der Silkscreen (Siebdruck) ist die weiße Beschriftung auf der Platine: Bauteilnamen (R1, C2), Umrandungen, Logos. Er hat **keine elektrische Funktion**, sondern dient der Orientierung beim Löten und der Optik.

### Silkscreen in KiCad bearbeiten

1. **KiCad starten** → Projekt öffnen (`*.kicad_pro`).
2. **Platinen-Layout öffnen** → Klicke auf den PCB-Editor.
3. **Silkscreen-Layer aktivieren:**

    - Oberseite: `F.Silkscreen`
    - Unterseite: `B.Silkscreen`
    (Layer-Auswahl: rechte Seitenleiste → Haken setzen)

4. **Text ändern:**

    - Text auswählen (Linksklick)
    - `E` drücken → Text bearbeiten (Inhalt, Größe, Position)
    - Oder: Neuen Text hinzufügen mit `Shift + T` (Text-Werkzeug)

5. **Grafiken/Logos ändern:**

    - Bitmap-Logos sind oft als Bild importiert (`Tools → Import Bitmap`)
    - Zum Entfernen: Element auswählen → `Del`
    - Zum Hinzufügen eigenes Logo: Bitmap in SVG umwandeln, dann importieren

6. **Export:** Nach den Änderungen die Fertigungsdaten neu generieren (siehe [Option B: KiCad & Plugin](pcb-manufacturing.md#optional-option-b-kicad-plugin-fur-andere-forks-oder-eigenbau)).

!!! tip "Silkscreen-Farben bei JLCPCB"
    Bei JLCPCB ist der Silkscreen standardmäßig **weiß**. Andere Farben gibt es nur gegen Aufpreis und bei bestimmten Platinenfarben (z. B. schwarze Platine + weißer Aufdruck = seriös).

### Häufige Änderungen

- **Logo entfernen:** Falls ein Fork-Autor sein Logo platziert hat, einfach auswählen und löschen.
- **Eigener Text:** Name des Geräts, Baujahr, oder einfach nur "DIY Electrolysis" als persönliche Note.
- **Bauteilbeschriftung:** Standard ist völlig ausreichend – nur ändern, wenn du eigene Bauteile mit abweichenden Footprints verwendest.

### Silkscreen-Richtlinien

- **Linienstärke:** Mindestens 0,15 mm (dünner wird bei JLCPCB unscharf).
- **Schriftgröße:** Mindestens 1 mm (sonst schwer lesbar).
- **Abstand zu Pads:** Silkscreen darf keine Lötpads überlappen (sonst Klebstoff-Probleme bei PCBA).

---

## Gehäuse modifizieren & personalisieren

### Beschriftung direkt ins STL einfügen

Am saubersten: **Text wird gleich ins 3D-Modell eingearbeitet**, bevor du druckst.

**Einfach (Tinkercad, kostenlos, Browser):**


1. Gehe auf [tinkercad.com](https://www.tinkercad.com) → Konto erstellen (kostenlos).
2. **STL importieren:** "Import" → wähle `case.stl`.
3. **Text hinzufügen:** "Basic Shapes" → "Text" auf die Arbeitsfläche ziehen.
4. Text schreiben, Schriftart wählen, Größe anpassen.
5. **Positionieren:** Auf die gewünschte Stelle des Gehäuses ziehen.
6. **Vertiefen vs. Erhöhen:**
 
    - **Erhaben:** Text auf das Gehäuse legen → "Group" → Text ragt hervor (schleift später ab, wenn du die Oberfläche glättest!).
    - **Vertieft:** Text leicht in das Gehäuse schieben (ca. 0,5 mm tief) → "Group" → beim Druck entsteht eine Gravur.

7. **Export:** "Export" → `.stl` herunterladen und slicen.

**Fortgeschritten (FreeCAD):**


- FreeCAD (Open Source): Mit dem Part-Design-Workbench Formschräge/Prägung erzeugen.
- [Tutorial: Text einfügen mit FreeCAD](https://wiki.freecad.org/PartDesign_AdditiveHelix/de)

!!! warning "Text-Erhabenheit und Nachbearbeitung"
    **Erhabener Text** wird beim Schleifen der Schichtlinien flacher. **Vertiefte Gravuren** bleiben erhalten, auch wenn du die Oberfläche nachbearbeitest. Für Gehäuse mit Finish (Füller, Lack) sind vertiefte Gravuren daher besser geeignet.

### Beschriftung nach dem Druck anbringen

Falls du kein CAD bearbeiten willst:

- **Aufkleber:** Beschrifte das Gehäuse mit wasserfesten Etiketten (z. B. Label printer Bruder/Dymo oder Digitaldruck auf wetterfester Folie).
- **Schablonentechnik (Pinstripe):** 
    1. Gewünschten Text auf Klebeband (Malerkrepp) plotten oder von Hand ausschneiden.
    2. Schablone aufkleben.
    3. Dünn mit Sprühfarbe darüber (oder mit Klarlack beschichten).
    4. Schablone abziehen → Der Text bleibt farbig sichtbar.

- **Vitamine-Transferfolie:** T-Shirt-Transferfolie für helle Gehäuse — mit Bügeleisen aufbringen.
- **Lackstift:** Einfach von Hand aufmalen (rustikal, erfordert eine ruhige Hand).

### Gehäuseform anpassen

Manche Forks haben andere Anschlüsse (USB-C vs. Mini-USB, andere Display-Größen). Falls deine Platine nicht exakt passt:

- **Aussparungen vergrößern:** Mit einer kleinen Rundfeile vorsichtig die Öffnung erweitern.
- **Neue Löcher bohren:** Mit 3 mm Bohrer an der gewünschten Stelle.
- **Stege entfernen:** Falls die STL interne Trennstege hat → mit Seitenschneider entfernen und glattschleifen.

**Für größere Umbauten** (anderes Display, eigener Schalter): Das STL in Tinkercad laden und per Boolean-Operation („Hole“-Form) neue Aussparungen schneiden.

### Gehäusefarbe ändern

Das offensichtlichste Mittel zur Personalisierung:

- **Anderes Filament:** Grau, Schwarz, Weiß, Grün — es gibt hunderte PETG-Farben. Zoemaestras Gehäuse ist bewusst minimalistisch gehalten, sodass jede Farbe gut aussieht.
- **Zweifarbig drucken:** Mit einem M600-Farbwechsel im GCode oder via „Pause at height“ im Slicer — z. B. Gehäuse unten in Farbe A, oben in Farbe B.
- **Filament-Wechsel-Muster:** Der Slicer kann bei bestimmten Layerhöhen die Farbe wechseln → dezente Streifenoptik.

---

## Oberfläche veredeln: Schichtlinien kaschieren & lackieren

3D-Druck erzeugt immer sichtbare Schichtlinien – das ist normal. Mit den richtigen Techniken bekommst du aber eine glatte, fast spritzguss-ähnliche Oberfläche hin.

Diesen Schritt kannst du auch auslassen. Auf die Funktion des Geräts hat er keine Auswirkungen.

### Materialabhängigkeit der Methoden

Welche Bearbeitung möglich ist, hängt stark vom verwendeten **Druckverfahren und Material** ab:

| Material / Verfahren | Schleifen | Füller + Lack | Spezialverfahren |
|---------------------|-----------|---------------|------------------|
| **ABS / PETG / PLA** (FDM) | ✅ Ja | ✅ Ja | Aceton-Dampf (nur ABS), Epoxidharz |
| **9600 Resin** (SLA) | ✅ Nass schleifen | ✅ Ja, sehr gute Haftung | Von Haus aus glatt – oft kein Finish nötig. Polierbar |
| **PA12 / PA12S Nylon** (MJF) | ⚠️ Nur wenn unbehandelt – bei gefärbten Teilen (dye) schleifst du die Farbe ab | ⚠️ Grundierung nötig (haftet schwer auf Nylon) | ○ Am besten unbehandelt lassen oder von Dienstleister färben lassen (Textilfarbe) |
| **PA11 Nylon** (MJF) | ⚠️ Wie PA12 | ⚠️ Wie PA12 | ○ Wie PA12 |

**Wichtig:**



- **SLA-Resin** ist von Haus aus sehr glatt – Schichtlinien sind kaum sichtbar. Ein Finish ist meist überflüssig. Falls doch: nass schleifen (Körnung ab 600) und Klarlack.
- **MJF-Nylon (PA12)** hat eine matte, leicht poröse Oberfläche. Sie fühlt sich hochwertig an, lässt sich aber schwer lackieren (Grundierung nötig). Viele Dienste (z.B. JLCPCB) färben die Teile auf Wunsch mit Textilfarbe (dye) – dann nicht schleifen, sonst ist die Farbe an den Stellen weg. Einfach so lassen oder färben lassen ist oft die beste Wahl.
- **FDM (ABS, PETG, PLA)** profitiert am meisten von Nachbearbeitung – hier lohnt sich der Aufwand.

### Schleifen (für jede Kunststoffart)

Die klassische Methode – günstig, aber zeitaufwendig.

**Werkzeug-Checkliste:**



- ✅ **Schleifpapier-Set:** Körnung 120, 240, 400, 600 (nass & trocken)
- ✅ **Feile:** Kleine Feile für Kanten
- ✅ **Bohrer:** 3 mm für Schraubenlöcher (falls zu eng)
- ✅ **Isopropanol (IPA):** Zur Reinigung vor dem Lackieren
- ✅ **Gummihandschuhe** – nicht weil es gefährlich ist, sondern weil Fingerabdrücke auf angerautem Kunststoff schwer zu entfernen sind

**Ablauf:**

| Schritt | Körnung | Ziel | Besonderheit |
|---------|---------|------|-------------|
| 1 | 120-180 | Grobe Schichtlinien entfernen | Kreisförmig schleifen, nicht zu tief! |
| 2 | 240-320 | Oberfläche glätten | Gleichmäßig weiter |
| 3 | 400-600 | Feine Struktur für Lackierung | **Nass schleifen** (Wasser) → verhindert Zusetzen |
| 4 | 800-1000 | Spiegelglatte Oberfläche | Nur für Hochglanz-Lack nötig |

!!! warning "Vorsicht bei PLA: Reibungshitze"
    PLA hat eine Glasübergangstemperatur von ~60 °C – die Reibungshitze beim **trockenen** Schleifen reicht aus, um die Oberfläche anzuschmelzen. Das Schleifpapier schmiert zu, die Schichtlinien verschmieren statt zu verschwinden.

    **Lösung:** Bei PLA immer **nass schleifen** (Wasser + Schleifpapier). Bei PETG ist trockenes Schleifen bis Körnung 400 problemlos möglich.

### Spachtelmasse (Spot Putty) für tiefe Furchen

Falls das Gehäuse auffällige Lücken oder tiefe Linien hat (z. B. nach grobem Support-Abruck):

1. **Spachtelmasse auftragen** (z. B. PU-Spachtel aus dem Autozubehör oder einfacher Modellbau-Spachtel).
2. **Trocknen lassen** (Herstellerangabe, meist 10-30 Minuten).
3. **Überschuss abschleifen** (Körnung 240 → 400).
4. Danach mit Füller oder Schleifen weitermachen.

### Füller-Grundierung (Filler Primer)

Ein dickflüssiger Sprühgrund ("Füller" oder "Filler Primer" aus dem Autozubehör) füllt feine Schichtlinien in einem Schritt. Spart viel Schleifarbeit.

1. **Reinigen:** Gehäuse mit IPA abwischen (entfettet).
2. **Füller aufsprühen:** 2-3 dünne Schichten, 10 Minuten Ablüftzeit zwischen den Schichten.
3. **Trocknen:** 24 Stunden (wirklich! Sonst schrumpft der Füller nach).
4. **Glattschleifen:** Mit Körnung 400 (nass) die Höhen abtragen → der Füller bleibt in den Tälern der Schichtlinien. Fertig.

**Empfehlung:** Füller + Schleifen ist das beste Verhältnis von Aufwand zu Ergebnis.

### Epoxidharz-Beschichtung (XTC-3D)

Spezialprodukte wie [XTC-3D](https://www.smooth-on.com/products/xtc-3d/) (2K-Epoxid) sind selbstnivellierend und füllen Schichtlinien ohne Schleifen:

1. **Anrühren:** Harz + Härter im Becher mischen (1:1 Volumen).
2. **Auftragen:** Mit Pinsel dünn auf das Gehäuse streichen.
3. **Aushärten:** 30 Minuten → glatte, glänzende Oberfläche.
4. Falls nötig: Zweite Schicht für perfektes Finish.

**Nachteile:** Teuer (~35 $/Set), nur für ebene Flächen geeignet (läuft von Kanten).

### Dampfglätten (nur ABS)

Falls du **ABS** statt PETG/PLA gedruckt hast:

1. **Aceton-Dampfbad:**

    - Gehäuse in verschlossenen Behälter mit Aceton-getränktem Tuch stellen (nicht direkt ins Aceton tauchen!).
    - **Dauer:** 10-30 Minuten (beobachten!).
    - **Ergebnis:** Glasartige, glatte Oberfläche.

2. **Sicherheit:** ⚠️ Nur in gut belüfteten Räumen (giftige Dämpfe!).

**Empfehlung:** Für dieses Projekt PETG + Füller + Schleifen (sicherer, hygienischer).

### Welche Methode für wen?

| Methode | Kosten | Zeit | Ergebnis | Schwierigkeit |
|---------|--------|------|----------|---------------|
| Nur Schleifen | ~6 $ | 2-3 h | Mittel | ⭐ Einfach |
| Spachtel + Schleifen | ~9 $ | 3 h | Gut | ⭐⭐ Mittel |
| Füller + Schleifen | ~14 $ | 2 h + 24 h Trocknung | **Sehr gut** | ⭐ Einfach |
| XTC-3D Epoxid | ~35 $ | 1 h | Hervorragend | ⭐⭐ Mittel |
| Aceton-Dampf (nur ABS) | ~6 $ | 1 h | Perfekt | ⭐⭐⭐ Erfahren |

**Fazit für Einsteiger:** Füller-Grundierung aus dem Autozubehör (~14 $/Dose) + 400er Schleifpapier. Das Geld ist die Zeitersparnis wert.

### Lackieren für Hygiene

Da das Gerät im Hygienebereich (Hautkontakt) genutzt wird:

**Grundieren:**


- **2K-Füller** (Spraydose) auftragen → Haftvermittler.
- **Trocknen:** 30-60 Minuten.

**Lackieren:**


- **Klarlack (matt oder glänzend):** Schützt vor Feuchtigkeit, abwischbar.
- **Tipp:** 2-3 dünne Schichten (nicht eine dicke!) → läuft nicht so leicht.

**Alternative:** **Plasti Dip** (Gummi-Beschichtung) → griffig, abwaschbar, leicht zu entfernen.

---

**Nächstes Kapitel:** [Firmware installieren: Das Gehirn wecken](firmware.md)
