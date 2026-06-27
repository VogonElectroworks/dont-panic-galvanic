# Bauteile beschaffen: Die BOM entschlüsseln

Jetzt kommt der Teil, der viele Laien scheitern lässt: **"Wo kriege ich das Display her, wenn der AliExpress-Link tot ist?"**

In diesem Kapitel lernst du, wie du die **BOM (Bill of Materials)** übersetzt und Bauteile weltweit (oder lokal) bestellst.

**Keine Shop-Links:** Preise, Verfügbarkeit und Angebote ändern sich ständig. Anstatt spezifische Produkte zu verlinken, vermittelt dieses Kapitel die **Suchbegriffe**, mit denen du das Benötigte auf jedem Marktplatz findest.

**Dauer:** 1–3 Stunden (Recherche + Bestellung).

---

## 1. Die BOM verstehen

Die `bom.csv` (aus dem JLCPCB-Plugin) enthält kryptische Zeilen wie:
```
C1,10uF,0805,LCSC:C49678
R1,1k,0805,LCSC:C25804
```

**Was bedeutet das?**


- `C1` = Kondensator 1 (Bauteil-Bezeichnung auf der Platine).
- `10uF` = Kapazität (technischer Wert).
- `0805` = Gehäusegröße (SMD-Bauform).
- `LCSC:C49678` = LCSC-Bestellnummer (JLCPCB-Bauteillager).

**Aber:** Du musst das **nicht** alles selbst kaufen! 


- ✅ **SMD-Bauteile (C1, R1, etc.)** = Werden von JLCPCB gelötet (PCBA).
- ❌ **THT-Bauteile** = Musst du selbst kaufen und löten!

---

## 2. Welche Bauteile musst du selbst kaufen?

Laut zoemaestra-Fork sind das (Auszug aus der `README.md`):

| Bauteil | Technische Bezeichnung | Wofür? | Beispiel-Suchbegriff (international) |
|---------|------------------------|--------|---------------------------|
| **OLED-Display** | 0.96" I2C SSD1306 (128x64 Pixel) | Menü anzeigen | "SSD1306 0.96 inch I2C OLED" |
| **Fußpedal** | Tattoo-Fußpedal (6.35mm Klinke) | Strom ein/aus | "Tattoo foot pedal 6.35mm" oder "MIDI foot switch" |
| **Nadelhalter** | 3D-gedruckter Stift + D-SUB-Female-Pin (LCSC C5393697) | Hält die Nadel – **wird selbst gebaut** (Bauanleitung: [Nadelstift bauen](pen.md))<br>Alternativ: Kaufen im Elektrolyse-Fachhandel | Eigenbau: D-SUB-Female-Pin (LCSC C5393697)<br>Kaufen z.B.: "Sterex needle holder", "electrolysis probe holder" |
| **Nadeln (Einmal)** | Ballet F-Shank (Größe 2-6) | Für die Behandlung | "Ballet electrolysis needles F-Shank" (siehe Abschnitt 8) |
| **Gegen-Elektrode** | TENS-Pad (2mm Stecker) | Schließt Stromkreis | "TENS electrode 2mm pin" |
| **USB-C Kabel** | 1m, Daten + Strom (3A) | Verbindung PC/Netzteil | "USB-C cable 3A data power" – meist bereits vorhanden (z. B. Handy-Ladegerät) |
| **Lithium-Akku** | 3.7V 1000mAh (oder ähnlich) | Stromversorgung | "LiPo battery 3.7V 1000mAh" |


---

## 3. Wie man sucht (Parameter-Suche)

### 3.1 Bei Amazon / AliExpress

Verwende die **technischen Begriffe** aus der Tabelle oben:

- **OLED-Display:** Suche nach `"0.96 Zoll OLED I2C SSD1306"`.

    - **Achtung:** Es gibt auch SPI-Versionen (falsche Pins) und kleinere 0.91"-Displays (128x32, zu wenig Zeilen für Menü). Nur **I2C** funktioniert!
    - **Pin-Reihenfolge:** VCC | GND | SCL | SDA (von links nach rechts, Display mit Bildschirm zu dir, Pins sind oben). Manche Displays haben andere Reihenfolge (prüfe Datenblatt!).
        - **VCC** = Strom (+3,3V oder +5V)
        - **GND** = Masse
        - **SCL** = I2C-Takt
        - **SDA** = I2C-Daten

    ![OLED Pin-Belegung & Orientierung](../assets/scd31-hair-electrolysis-machine-pcb-display-side-with-labels.png){width=400 loading=lazy}
    *Bild: Platine mit beschrifteten Display-Pins (VCC, GND, SCL, SDA)*

- **Fußpedal:** Suche nach `"Tattoo Fußpedal 6.35mm Klinke"`.

    - **Alternative:** `"MIDI-Fußschalter"` (ebenfalls 6.35mm, wird in der Musik genutzt).

- **TENS-Pad:** Suche nach `"TENS Elektroden 2mm"`.

### 3.2 Bei EU-Distributoren (Farnell, DigiKey, Reichelt)

- **Vorteil:** Original-Teile, Datenblätter verfügbar, Beratung.
- **Nachteil:** Teurer, oft Mindestbestellwert.
- **Beispiele:** 

    - OLED-Display bei [Reichelt](https://reichelt.de) (DE) oder [Farnell](https://farnell.com) (EU): `"OLED 128x64 I2C"`.
    - Akku bei [Conrad](https://conrad.de) (DE) oder [DigiKey](https://digikey.com) (EU): `"LiPo 3.7V 1000mAh"`.

**Tipp:** Nutze **"Datenblatt"** (PDF), um sicherzugehen, dass das Teil passt (Pin-Belegung!).

---

## 4. Bezugsquellen: AliExpress vs. Amazon

| Shop | Preis (OLED) | Lieferzeit | Rückgabe | Qualität | Für wen? |
|------|-------------|------------|----------|---------|----------|
| **AliExpress** | 1–6 € (einzeln) / ~2–4 € (ab 5 Stück) | 2–4 Wochen | Nein | Durchwachsen | **Preisbewusste** |
| **Amazon (DE)** | 8–10 € (einzeln) / ~3–4 € (5er-Pack) | 1–2 Tage | Ja (30 Tage) | Gut | **Eilige** / **Mehrfachpack-Nutzer** |

### 4.1 Lokale/nationale Händler (Beispiele)

| Land | Händler | Website | Sortiment |
|------|---------|----------|----------|
| **Deutschland** | Conrad Electronic | [conrad.de](https://conrad.de) | Allgemeine Elektronik, Akku, Werkzeug |
| **Deutschland** | Reichelt | [reichelt.de](https://reichelt.de) | Elektronik-Bauteile, Versandkosten ab 23 $ |
| **EU (NL)** | Farnell / Element14 | [farnell.com](https://farnell.com) | Profi-Elektronik, großes Lager |
| **USA** | DigiKey | [digikey.com](https://digikey.com) | Riesiges Sortiment, worldwide shipping |
| **USA** | Mouser | [mouser.com](https://mouser.com) | Ähnlich wie DigiKey |

**Tipp:** 


- Für **allgemeine Elektronik** (Display, Akku, Kabel): Nutze Amazon oder Conrad (DE).
- Für **Ersatzteile** (Nadeln, TENS-Pads): Nutze Fachhändler (siehe Abschnitt 8).

---

## 5. Die "BOM-Übersetzung" (für Laien)

Wenn du die `bom.csv` nicht verstehst, nutze diese **Faustregeln**:

| Begriff in BOM | Was du kaufen musst | Alternative Suche |
|-----------------|---------------------|-------------------|
| `OLED`, `SSD1306` | OLED-Display (I2C) | "0.96 Zoll OLED I2C" |
| `Foot Switch`, `Pedal` | Fußpedal (6.35mm) | "Tattoo Fußpedal Klinke" |
| `TENS`, `Electrode` | TENS-Pad (2mm) | "TENS Elektroden 2mm" |
| `Battery`, `LiPo` | Lithium-Akku (3.7V) | "LiPo 3.7V 1000mAh" |

**Sicherheitshinweis ⚠️:**



- **Akku:** Nur Original kaufen (Conrad/Farnell). Billig-Akkus von AliExpress können **explodieren**!
- **Netzteil:** Nutze nur USB-C Netzteile mit **Überstromschutz** (z.B. Anker, Belkin).

---

## 6. Checkliste vor der Bestellung

- [ ] **Display:** I2C (nicht SPI), 0.96" (nicht 0.91"), Pin-Reihenfolge geprüft?
- [ ] **Fußpedal:** 6.35mm Klinke (nicht 3.5mm)!
- [ ] **Nadelhalter:** D-SUB-Female-Pin (LCSC C5393697) für den Eigenbau bestellt?
- [ ] **Nadeln:** Steril (Einmalnadeln), richtige Größe (003 oder 004)?
- [ ] **Akku:** Original (nicht "No-Name" von AliExpress)!
- [ ] **TENS-Pad:** 2mm Stecker (passt in das Gerät).

---

## 7. Fehler vermeiden

| Fehler | Folge | Lösung |
|--------|-------|--------|
| Falsches Display (SPI statt I2C) | Kein Bild | Datenblatt prüfen, "I2C" suchen |
| Fußpedal mit 3.5mm Klinke | Passt nicht | "6.35mm" in der Suche angeben |
| Akku ohne Schutzschaltung | Brandgefahr! | Nur Marken-Akkus (Samsung, LG) |
| Nadeln mehrmals nutzen | Infektionsgefahr! | Einmalnadeln verwenden |

---

## 8. Herausforderung: Nadeln beschaffen (speziell für EU)

### 8.1 Warum ist es so schwer?

- **Medizinprodukt:** Elektrolyse-Nadeln gelten als Medizinprodukt (CE-Kennzeichnung erforderlich).
- **Wenige Händler:** In der EU gibt es kaum Fachhändler für Elektrolyse-Bedarf.
- **Hohe Preise:** Einmalnadeln (Steril) kosten in der EU **1–2 $ pro Nadel** – in den USA dagegen nur etwa **0.50 $**. Das liegt am größeren Markt und mehr Anbietern dort.
- **Import-Probleme:** US-Händler (TexasElectrolysis, AR Hinkel) versenden oft nicht in die EU (wegen Zoll/Medizinprodukt-Regeln).

### 8.2 Größen der Nadeln (Welche für wen?)

Ballet Nadeln werden nach zwei Kriterien unterschieden:

1. **Schaft (Shank):** F-Shank (1.25 mm, Standard) vs. K-Shank (0.8 mm, älter).
2. **Spitze (Größe):** Zahlen 2 bis 6 (2 = dünnste, 6 = dickste).

| Größe | Spitze (mm) | Haartyp | Einsatzgebiet |
|-------|--------------|----------|--------------|
| **2** | 0.06 mm | Vellus-Haare, Augenbrauen, Finger/Fußhaare | Feinste Arbeiten im Gesicht |
| **3/4** | 0.08 – 0.10 mm | Wangen (Frauen), Kinn, Brust, Unterarme | Standard für Körper |
| **5/6** | 0.12 – 0.15 mm | Tiefe Terminal-Haare, Achseln, Schamhaare, Bart (Mann) | Grobe Haare, tiefe Follikel |

**Empfehlung für Anfänger:** **Größe 4 (F4)** – liegt zwischen fein und grob, am einfachsten einzuführen.

### 8.3 Isolierte vs. nicht isolierte Nadeln

- **Isolierte Nadeln:** Nur die Spitze leitet Strom (Rest ist beschichtet). Reduziert Hautschäden.
- **Nicht isolierte (Non-isolated):** Günstiger, aber höheres Risiko für Hautverbrennungen.
- **Empfehlung:** Isolierte Nadeln (z.B. "Ballet F4 Insulated") für Anfänger!

### 8.4 Wo bekomme ich Nadeln her? (Tabelle)

**Wichtig:** In professionellen Praxen werden Ballet-Nadeln **ständig gewechselt** (Einmalnadeln). DIY-Nutzer nutzen sie oft **mehrfach** (nach Desinfektion), was aber ein **Infektionsrisiko** birgt!

| Händler | Land | Website | Preis (pro Nadel) | Besonderheiten |
|---------|------|----------|-------------------|------------------|
| **Alvi Prague** | CZ (EU) | [alvi-prague.com](https://alvi-prague.com) | 0,80 – 1,70 $ | Ballet-Einzelnadeln, F- & K-Shank, EU-Versand |
| **Euraf Shop** | FR (EU) | [euraf-shop.com](https://euraf-shop.com) | 1,70 – 2,30 $ | Ballet + Sterex, isoliert & nicht isoliert, CE |
| **Bioskin** | IT (EU) | [shop.bioskin.it](https://shop.bioskin.it) | 1,15 – 1,70 $ | Ballet 50er-Packs, Edelstahl, EU-Versand |
| **Zapmaster** | USA | [zapmaster.com](https://zapmaster.com) | 0,50 $ | Größte Auswahl, aber nur US-Versand |
| **HOF Beauty** | UK | [hofbeauty.co.uk](https://www.hofbeauty.co.uk) | 1,10 – 1,80 £ | Ballet F-Shank, isoliert & nicht isoliert |
| **eBay / Amazon** | EU/US | eBay-Suche | 0,90 – 1,70 $ | Vorsicht: Fakes! Nur seriöse Händler |

### 8.5 Empfehlung für EU-Nutzer

1. **Günstigste EU-Option:** [Alvi Prague](https://alvi-prague.com) (CZ) – Ballet-Nadeln einzeln, erschwinglich, EU-Versand, kein Zoll.
2. **50er-Packs:** [Bioskin](https://shop.bioskin.it) (IT) oder [Euraf Shop](https://euraf-shop.com) (FR) – Ballet 50er-Packs, CE-zertifiziert.
3. **UK-Alternative:** [HOF Beauty](https://www.hofbeauty.co.uk) – zuverlässig, aber Zollgebühren möglich (Post-Brexit).
4. **Pro-Tipp:** Kaufe **größere Mengen** (50er- oder 100er-Pack) – das senkt den Preis pro Nadel deutlich.
5. **Achtung bei eBay/Amazon:** Es gibt **Fake-Nadeln** (stumpf, nicht steril). Nur bei seriösen Händlern kaufen!

### 8.6 Selbst recherchieren: Google- und KI-Tipp

Die obige Tabelle kann schnell veralten – Händler stellen ein, Sortimente ändern sich.

**Google-Suche:**
`"Ballet electrolysis needles" EU shop` oder `"F-Shank needles" Europe`

**KI-Prompt (z.B. für ChatGPT, Claude oder andere):**

> Ich suche Händler für Elektrolyse-Nadeln (Ballet F-Shank, steril, Einmalnadeln) mit Versand in die EU.
> 
> - Suche bitte aktuell aktive Online-Shops
> - Prüfe, ob sie auch **einzelne Nadeln** verkaufen (nicht nur 50er-Packs)
> - Gib den Preis pro Nadel an
> - Nenne jeweils das Land des Shops und ob EU-Versand angeboten wird
> - Wenn möglich: ob isolierte Nadeln verfügbar sind

Diesen Prompt kannst du einfach in einen KI-Chat kopieren – die KI sucht dann live nach aktuellen Anbietern.

### 8.7 Nadelhalter (Wie befestige ich die Nadel?)

Die Nadel muss in einem Halter befestigt sein (damit du sie präzise führen kannst). Es gibt mehrere Optionen:

| Option | Kosten | Schwierigkeit | Vorteil | Nachteil |
|--------|-------|---------------|---------|----------|
| **3D-Druck + D-SUB-Pin (scd31/zoemaestra-Design)** | 0 $ (nur Druck + D-SUB-Pin ~0,12 $) | Mittel (Datei vorhanden) | Passgenau, originale Projekt-Lösung | Erfordert 3D-Drucker |
| **Druckbleistift-Hack** | 6 – 12 $ | Einfach (nur Umbau) | Billig, erhältlich | Muss isoliert werden |
| **Stiftenklöbchen (Pin Vise)** | 6 – 12 $ | Einfach | Robust, präzise | Nicht ergonomisch |
| **Professioneller Halter (Sterex)** | 35 – 58 $ | Keine | Ergonomisch, isoliert | Teuer, unbekannter Anschluss – passt ggf. nicht ans DIY-Gerät |

**Empfehlung:** 


- **3D-gedruckter Stift + D-SUB-Female-Pin (LCSC C5393697)** – das ist die originale Projekt-Lösung und passgenau. Einen 3D-Druck-Service findest du online oder in lokalen Makerspaces.

---

**Nächstes Kapitel:** [Platine fertigstellen](assembly.md) (THT löten & Display anschließen)
