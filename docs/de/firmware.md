# Firmware installieren: Das "Gehirn" wecken

Die Hardware ist dumm, bis die Software (Firmware) darauf läuft.

**Achtung:** Es gibt keine vorkompilierten `.uf2`-Dateien zum Herunterladen.
Du musst die Firmware selbst aus dem Quellcode bauen. Keine Sorge – das geht mit drei Befehlen im Terminal!

---

## Schritt 1: Firmware bauen

### 1.1 Rust installieren

Lade dir den Rust-Compiler herunter:

**Windows:**

1. Gehe auf [rustup.rs](https://rustup.rs/)
2. Lade `rustup-init.exe` herunter und führe es aus.
3. Wähle **"1) Proceed with installation (default)"**.
4. Nach der Installation: **Eingabeaufforderung (CMD) oder PowerShell öffnen** und prüfen mit:
   ```cmd
   rustc --version
   ```
   (sollte eine Versionsnummer zeigen)

**Mac:**

1. Terminal öffnen.
2. Folgenden Befehl eingeben und ausführen:
   ```bash
   curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
   ```
3. Wähle **"1) Proceed with installation (default)"**.
4. Lade die Umgebungsvariablen neu und prüfe:
   ```bash
   source "$HOME/.cargo/env"
   rustc --version
   ```

**Linux (Debian/Ubuntu):**

1. Terminal öffnen.
2. Folgenden Befehl eingeben und ausführen:
   ```bash
   curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
   ```
3. Wähle **"1) Proceed with installation (default)"**.
4. Lade die Umgebungsvariablen neu und prüfe:
   ```bash
   source "$HOME/.cargo/env"
   rustc --version
   ```

!!! tip "Cross-Compilation-Target installieren"
    Da die Firmware für den RP2040 (ARM Cortex-M0+) geschrieben ist, musst du zusätzlich das passende Compiler-Target installieren:

    ```bash
    rustup target add thumbv6m-none-eabi
    ```

!!! tip "Build-Abhängigkeiten (Debian/Ubuntu)"
    Falls `cargo build` mit einem Linker-Fehler abbricht, fehlen dir die Build-Tools:

    ```bash
    sudo apt update && sudo apt install build-essential
    ```

### 1.2 Quellcode herunterladen

**Variante A: Mit Git (empfohlen)**
```bash
git clone https://gitlab.scd31.com/sophie/hair-electrolysis-machine-software.git
cd hair-electrolysis-machine-software
```
(Falls `git` nicht installiert ist: Auf Windows [git-scm.com](https://git-scm.com/), auf Mac über Xcode Command Line Tools, auf Linux: `sudo apt install git`)

**Variante B: Als ZIP**

1. Gehe auf [GitLab – Software](https://gitlab.scd31.com/sophie/hair-electrolysis-machine-software)
2. Klicke auf **"Download"** → **"ZIP"**.
3. Entpacke die ZIP und öffne den Ordner im Terminal.

### 1.3 Firmware kompilieren

Im Projekt-Ordner (wo `Cargo.toml` liegt) folgenden Befehl ausführen:

```bash
cargo build --release
```

Der erste Build dauert **5–15 Minuten** (Cargo lädt Abhängigkeiten herunter und kompiliert alles).
Spätere Builds sind schneller (nur geänderte Dateien).

### 1.4 In .uf2 konvertieren

Der Build erzeugt eine `.elf`-Datei. Für das Flashen per Drag & Drop brauchst du eine `.uf2`-Datei:

```bash
cargo install elf2uf2-rs
elf2uf2-rs target/thumbv6m-none-eabi/release/hair-electrolysis-machine-software firmware.uf2
```

Jetzt liegt `firmware.uf2` im Projekt-Ordner – fertig zum Aufspielen!

### Wichtig für zoemaestra-Nutzer

Da zoemaestra's Fork **nur die Hardware** verändert hat (USB-C, Single-side Assembly),
ist die Firmware vom Original uneingeschränkt kompatibel. Keine spezielle Version nötig.

---

## Schritt 2: Firmware aufspielen (flashen)

### Methode A: BOOTSEL beim Einschalten (einfach)

Ideal für den **ersten Start** oder wenn keine Firmware drauf ist:

1. **Ausschalten:** Drehe den Power-Schalter auf OFF.
2. **BOOTSEL gedrückt halten:** Drücke den kleinen Taster auf der Platine (**BOOTSEL**) und halte ihn gedrückt.
3. **USB einstecken:** Während du BOOTSEL gedrückt hältst, verbinde das Gerät per USB-C mit dem PC.
4. **BOOTSEL loslassen:** Sobald der PC ein neues Laufwerk erkennt.
5. Das Gerät sollte sich jetzt als **USB-Stick** (Laufwerk "RPI-RP2") melden.

### Methode B: BOOTSEL + RESET (wenn das Gerät schon läuft)

Falls das Gerät bereits eingeschaltet ist und Firmware läuft:

1. **Verbinde** das Gerät per USB-C mit dem PC (falls nicht schon geschehen).
2. **BOOTSEL gedrückt halten** (kleiner Taster auf der Platine).
3. **RESET kurz drücken** (zweiter Taster daneben) – das startet den RP2040 neu.
4. **BOOTSEL loslassen** – das Gerät startet im Boot-Modus.
5. Das Gerät sollte sich jetzt als **USB-Stick** (Laufwerk "RPI-RP2") melden.

### Erkennungszeichen
- **Windows:** "RPI-RP2" oder "UF2-BOOT" taucht im Explorer auf.
- **Mac/Linux:** Ein Laufwerk namens "RPI-RP2" erscheint.

!!! tip "Bild-Hilfe: BOOTSEL- und RESET-Knopf"
    ![Boot und Reset Knöpfe auf RP2040](../assets/rp2040-boot-reset.png){width=500 loading=lazy}
    *Abbildung: BOOTSEL- und RESET-Taster auf der Platine*

---

## Schritt 3: Firmware kopieren

1. Öffne das USB-Stick-Laufwerk.
2. **Ziehe die `firmware.uf2`-Datei** einfach per Drag & Drop darauf (wie auf einen USB-Stick).
3. Das Gerät startet automatisch neu.

### Erfolgskontrolle
- Das OLED-Display sollte aufleuchten und ein Menü anzeigen.
- Falls nicht: Nochmal von vorne beginnen (BOOTSEL-Timing prüfen).

---

## Schritt 4: Menü-Navigation

Nach dem Booten zeigt das OLED-Display das **Hauptmenü** mit drei Optionen.

**Bedienung:**
- **Drehgeber (Rotary Encoder)** — nach oben/unten durch die Menüpunkte scrollen
- **Drehgeber drücken** — markierten Punkt auswählen/bestätigen
- **Fußpedal** — aktiviert den Strom während der Behandlung (nur in der Behandlungsansicht)

!!! tip "Bild-Hilfe: Menü-Navigation"
    ![Firmware Menü-Navigation](../assets/firmware-menu-navigation.png){width=450 loading=lazy}
    *Abbildung: Hauptmenü — Start, Selbsttest, Einstellungen*

---

### Hauptmenü

| Menüpunkt | Beschreibung |
|-----------|-------------|
| **Start** | Behandlung beginnen. Wechselt in die Behandlungsansicht (siehe unten). **Nicht verfügbar bei angeschlossenem USB** — trenne USB aus Sicherheitsgründen zuerst. |
| **Selbsttest** | Führt einen automatisierten Hardware-Test durch, um die Funktion zu prüfen. |
| **Einstellungen** | Öffnet das Einstellungs-Untermenü. |

---

### Einstellungen → Elektrolyse

Unter **Einstellungen** → **Elektrolyse** kannst du drei Behandlungsparameter anpassen.

Zum Ändern: Mit dem Drehgeber durch die Optionen scrollen. Drücken zum Auswählen, scrollen zum Ändern, erneut drücken zum Bestätigen. Wähle **Speichern** zum dauerhaften Übernehmen oder **Abbrechen** zum Verwerfen.

| Parameter | Anzeige | Bereich | Schritt | Standard | Beschreibung |
|-----------|---------|---------|---------|----------|-------------|
| **Maximalstrom** | `Cur: X.XX mA` | 0,00 – 2,30 mA | 0,05 mA | 0,80 mA | Maximaler Behandlungsstrom. Niedrig beginnen und steigern. |
| **Ziel-Lauge** | `Lye: X LU` | 1 – 80 LU | 1 LU | 50 LU | Laugenmenge pro Einstich. Höher = aggressivere Behandlung. |
| **Rampenzeit** | `Ramp: XXXX ms` | 0 – 5000 ms | 25 ms | 1000 ms | Zeit bis der Strom den Zielwert erreicht. Länger = sanfterer Start. |

!!! warning "Vorsichtig beginnen"
    Für Anfänger: Starte mit **0,50 mA** und **20–30 LU** und steigere dich langsam.

---

### Einstellungen → Über

Zeigt Projektinformationen und einen Link zur ursprünglichen Projektseite.

---

### Selbsttest-Ergebnisse

Nach Auswahl von **Selbsttest** im Hauptmenü fordert das Gerät auf, die Sonde vom Gerät zu trennen, und führt dann einen automatischen Durchlauf durch. Der Test prüft drei Kriterien:

| Prüfung | Grenzwert | Bedeutung |
|---------|-----------|-----------|
| **Ladungspumpen-Spannung** | > 12,0 V | Die Ladungspumpe erzeugt genug Spannung, um Strom durch die Nadel zu treiben. |
| **Maximale Stromabweichung** | < 0,10 mA | Der DAC ist linear — der tatsächliche Strom entspricht dem Sollwert über den gesamten Bereich. |
| **Leckstrom** | < 0,03 mA | Vernachlässigbarer Strom bei deaktiviertem Ausgang (keine gefährliche Leckage). |

Jede Prüfung zeigt **P** (Pass = Bestanden) oder **F** (Fail = Fehlgeschlagen) auf dem Display. Die Firmware-Anzeige ist auf Englisch. Fällt ein Test aus, überprüfe Lötstellen und Bauteilverbindungen, bevor du das Gerät verwendest.

---

### Behandlungsansicht (Run View)

Nach Auswahl von **Start** wartet das Gerät auf das Fußpedal. Pedal drücken beginnt die Stromabgabe, loslassen stoppt sie.

Das Display zeigt Echtzeit-Informationen:

| Feld | Beispiel | Bedeutung |
|------|----------|-----------|
| **Titelzeile** | `000.42 s` | Verstrichene Zeit des aktuellen Einstichs. |
| **Ziel** | `50.00 LU @ 0.80mA` | Eingestellte Ziel-Lauge und Maximalstrom. |
| **Cur** | `0.79 mA (-0.01)` | Gemessener Strom und Abweichung vom Sollwert. |
| **Lye** | `12.34 LU` | Bisher abgegebene Lauge in diesem Einstich. |
| **Body** | `125.00 ohm` | Gemessener Hautwiderstand. Höhere Werte = trockenere Haut oder flacherer Einstich.

---

### Batterie-Anzeige

Ein Batterie-Symbol oben rechts zeigt den Stromversorgungsstatus:

| Status | Bedeutung |
|--------|-----------|
| ⚡ Lädt | USB-Strom angeschlossen (lädt) |
| 🔋 Voll | Akku > 3,8 V (voll) |
| 🔋 50% | Akku 3,6–3,8 V |
| 🪫 Leer | Akku < 3,6 V (bald laden) |

---

## Schritt 5: Firmware aktualisieren

Wenn eine neue Firmware-Version erscheint, kannst du aktualisieren, ohne Komponenten auszubauen.

1. **Neuesten Quellcode ziehen:**
   ```bash
   cd hair-electrolysis-machine-software
   git pull
   ```
   (Als ZIP heruntergeladen? Lade von [GitLab](https://gitlab.scd31.com/sophie/hair-electrolysis-machine-software) neu herunter.)

2. **Neu bauen:**
   ```bash
   cargo build --release
   elf2uf2-rs target/thumbv6m-none-eabi/release/hair-electrolysis-machine-software firmware.uf2
   ```

3. **Die neue `.uf2`-Datei flashen** — gleiche BOOTSEL-Methode wie beim ersten Mal (Schritt 2).

Das Gerät behält seine gespeicherten Einstellungen über Updates hinweg (sie werden in einem separaten Flash-Bereich gespeichert).

---

## Fehlerbehebung

| Problem | Ursache | Lösung |
|---------|---------|--------|
| Gerät erscheint nicht als USB-Stick | BOOTSEL nicht beim Einschalten gehalten | Methode A probieren (Power aus, BOOTSEL halten, USB einstecken) |
| `.uf2` wird nicht kopiert | Datei beschädigt | Nochmal bauen (`cargo build --release`) |
| Display bleibt schwarz | Display nicht angeschlossen oder I2C-Verbindung fehlerhaft | I2C-Verbindung prüfen (VCC, GND, SDA, SCL) |
| Fußpedal reagiert nicht | Falscher Pin oder Pedal nicht gedrückt | Fußpedal-Verkabelung prüfen (PIN_16); Pedal vor Start drücken |
| USB-Fehler beim Start | Gerät verweigert Start mit USB | USB trennen, nur mit Akku betreiben |
| Build schlägt fehl | Rust nicht aktuell | `rustup update` ausführen |

---

**Nächstes Kapitel:** [Kalibrierung](calibration.md)
