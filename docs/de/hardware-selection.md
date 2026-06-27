# Hardware wählen: Welchen Fork soll ich nehmen?

Es gibt mehrere Versionen des DIY-Elektrolyse-Geräts. Wenn du einfach nur loslegen willst, lies dir den empfohlenen Fork durch. Der Rest dieses Artikels ist für Leute, die sich einen Überblick über alle Optionen verschaffen wollen.

!!! info "Was ist ein Fork?"
    Ein **Fork** (englisch für „Abspaltung") ist eine **eigenständige Weiterentwicklung** eines bestehenden Open-Source-Projekts.
    Stell es dir wie ein Kochrezept vor: Jemand veröffentlicht ein Grundrezept, und andere kochen es nach, verändern Zutaten
    oder fügen Schritte hinzu – und veröffentlichen dann ihre eigene Version. So sind verschiedene Varianten des
    Elektrolyse-Geräts entstanden – mit USB-C, optimierter Bauteilauswahl oder anderen Verbesserungen.
    
    **Für Laien:** Der Fork von zoemaestra ist der beste Einstieg. Er ist am einfachsten zu bestellen und zu bauen.

---

## ⭐ zoemaestra's Fork (USB-C Modernisierung) – Empfohlen

**Quelle:** [GitHub-Repo](https://github.com/zoemaestra/hair-electrolysis-machine-usb-c)

Dieser Fork modernisiert das Design auf USB-C und optimiert die Kosten durch Single-side Assembly – alle SMD-Bauteile sind auf einer Seite, was die Bestückung bei JLCPCB deutlich günstiger macht.

### Vorteile
- ✅ **USB-C Anschluss** (modern, leicht verfügbar)
- ✅ **Kostenoptimiert:** Alle SMD-Komponenten sind auf einer Seite (Single-side Assembly), was die JLCPCB-Bestückung deutlich günstiger macht
- ✅ **3D-Druck-Gehäuse:** STL-Dateien im `3dprint/`-Ordner (Gehäuse, Stift, **Drehknopf-Abdeckung** `knob.stl`) – fertig zum Drucken
- ✅ Fertigungsdateien (Gerber, BOM, CPL) auf der [Releases-Seite](https://github.com/zoemaestra/hair-electrolysis-machine-usb-c/releases) – direkt bei JLCPCB hochladbar
- ✅ **ESD-Schutz:** D+/D--Leitungen über ESD441- (TVS-) Dioden geschützt
- ✅ **Kein Nix nötig:** Fertigungsdaten sind vorkompiliert, kein Build-System erforderlich

### Hinweise
- ℹ️ Aktuelle Probleme und Diskussionen findest du in den [GitHub Issues](https://github.com/zoemaestra/hair-electrolysis-machine-usb-c/issues)

### Für wen?
**Für alle Laien empfohlen!** Dies ist der einfachste Einstieg, da es Single-side Assembly ist (günstiger, keine Nix-Kenntnisse nötig).

---

## Optional: Die anderen Forks im Überblick

_Dieser Abschnitt ist für alle, die sich einen Überblick über die anderen Optionen verschaffen wollen – zum Beispiel, weil sie bestimmte Features brauchen oder einfach neugierig sind. Wenn du nur bauen willst, kannst du direkt zur [nächsten Seite](pcb-manufacturing.md) weitergehen._

### 1. Original (scd31 / n3tcat)

**Quelle:** [GitLab-Repo](https://gitlab.scd31.com/sophie/hair-electrolysis-machine-hardware)

### Vorteile
- ✅ Erstes funktionierendes Design
- ✅ Gute Dokumentation auf [scd31.com](https://www.scd31.com/posts/diy-hair-electrolysis-machine/)
- ✅ Bewährte Schaltung
- ✅ Unterstützt JLCPCB-PCBA (über Nix-Builds)

### Nachteile
- ❌ Veralteter Stromanschluss (Mini-USB, nicht Micro-USB), also kein USB-C
- ❌ **Double-sided PCB** (SMD auf beiden Seiten – teurer bei JLCPCB-Bestückung als zoemaestra's Single-side)
- ℹ️ **Nix-Build:** Fertigungsdaten werden über Nix generiert ([pcb-manufacturing.md](pcb-manufacturing.md#optional-option-c-nix-build-fur-forks-ohne-releases) – nur `git clone` + `nix build`)

### Für wen?
Für Puristen, die genau das Original nachbauen wollen.

---

### 2. KibbieKatt's Fork 🔧

**Quelle:** [GitHub-Repo](https://github.com/KibbieKatt/hair-electrolysis-machine-hardware)

**Hinweis:** Dies ist ein aktiver Fork mit Fokus auf **JLCPCB-Kompatibilität**. Bauteile wurden durch JLCPCB-kompatible Alternativen ersetzt (Basic/Extended Parts), um die Bestückung günstiger oder einfacher zu machen.

### Vorteile
- ✅ **JLCPCB-Optimierung:** Viele Bauteile durch JLCPCB-kompatible Alternativen ersetzt (z.B. U2, U5, D9-14, Y1)
- ✅ **2-Pin 3.5mm Buchsen Unterstützung** (cherry-picked von upstream)
- ✅ **Verbesserte Spurentführung** (entfernte verirrte Traces, mehr Ground Vias)
- ✅ **Bessere Beschriftung** (Silkscreen, Komponenten-Labels für bessere JLCPCB-UX)
- ✅ Verfügbar auf GitHub (für Nutzer ohne GitLab-Zugang)
- ✅ Unterstützt JLCPCB-PCBA (über Nix-Builds)

### Nachteile
- ❌ Nachteile des Originals bleiben bestehen (Mini-USB statt USB-C)
- ❌ **Double-sided PCB** (SMD auf beiden Seiten – teurer bei JLCPCB-Bestückung als zoemaestra's Single-side)
- ℹ️ **Nix-Build:** Fertigungsdaten werden über Nix generiert ([pcb-manufacturing.md](pcb-manufacturing.md#optional-option-c-nix-build-fur-forks-ohne-releases) – nur `git clone` + `nix build`)

### Für wen?
Für JLCPCB-Nutzer, die ein optimiertes Original-Design wollen, aber nicht auf USB-C angewiesen sind.

---

### 3. annaaurora's Fork (USB-C & Optimierte BOM) 🐈

**Quelle:** [Codeberg-Repo](https://codeberg.org/annaaurora/hair-electrolysis-machine-hardware)

### Vorteile
- ✅ **USB-C Anschluss** (modern, leicht verfügbar – laut KiCad-Datei & Git-Log)
- ✅ **USB-Daten verbunden:** D+/D- sind über U8 (USBLC6-2SC6, dedizierter Low-Cap-USB-ESD-Schutz-IC) und Widerstände am RP2040 angeschlossen – Flashen und USB-Serial/JTAG möglich
- ✅ **Verbesserte Bauteil-Verfügbarkeit** (U4 durch LCSC-Teil ersetzt, Routing-Optimierung)
- ✅ **JLCPCB-kompatible Bauteile** (viele Teile durch Basic/Extended Parts ersetzt)
- ✅ **Routing-Optimierung:** Keine Leiterbahnen unter dem USB-C Schirm (laut Commit `fff21bc`)
- ✅ **Nix-Integration** (reproduzierbare Builds via `flake.nix` und `nix/`-Ordner)
- ✅ **OpenSCAD-Gehäuse** (parametrisch, 3D-druckbar)
- ✅ **Aktive Entwicklung** (laut Git-History werden Bauteile laufend optimiert)

### Nachteile
- ❌ **Double-sided PCB** (SMD auf beiden Seiten – teurer bei JLCPCB-Bestückung als zoemaestra's Single-side)
- ℹ️ **Nix-Build:** Fertigungsdaten werden über Nix generiert ([pcb-manufacturing.md](pcb-manufacturing.md#optional-option-c-nix-build-fur-forks-ohne-releases) – nur `git clone` + `nix build`)
- ❌ Codeberg statt GitHub (kleinere Community)
- ❌ OpenSCAD-Gehäuse wurde nicht für USB-C aktualisiert – `box.scad` hat noch den Mini-USB-Ausschnitt

### Für wen?
Für **LCSC/JLCPCB-Nutzer**, die USB-C wollen und eine aktive Entwicklung schätzen. Wer Geld sparen will, sollte zoemaestra's Single-side Fork bevorzugen.

---

## Entscheidungshilfe

| Kriterium | zoemaestra (USB-C) ⭐ | annaaurora (USB-C & Opt.) | Original (scd31) | KibbieKatt (JLCPCB-Optimiert) |
|-----------|---------------------|------------------------|-------------------|---------------------|
| **Schwierigkeit** | **Leicht** | Mittel | Mittel | Mittel |
| **Anschluss** | USB-C | USB-C | Mini-USB | Mini-USB |
| **JLCPCB-PCBA** | ✅ (via Releases, Single-side) | ✅ (via Nix, Double-side) | ✅ (via Nix, Double-side) | ✅ (via Nix & Basic/Extended, Double-side) |
| **USB-Daten (D+/D-)** | ✅ ESD441 (diskret) | ✅ USBLC6-2SC6 (dediziert) | ✅ Verbunden | ✅ Verbunden |
| **5V-Routing** | ✅ Behoben (Commit 45f85e5) | ✅ **Behoben** | ✅ Normal | ✅ Normal |
| **Kosten (PCBA)** | **Günstig (Single-side)** | Mittel (Double-side) | Mittel (Double-side) | Mittel (Double-side) |
| **Gehäuse inklusive** | ✅ (STL/3dprint) | ✅ (OpenSCAD) | ✅ (OpenSCAD) | ✅ (OpenSCAD) |
| **Aktive Entwicklung** | ✅ (USB-C Modernisierung) | ✅ (Bauteil-Optimierung) | ✅ (Ja, Optimierungen) | ✅ (JLCPCB-Optimierung) |

**Hinweise:**

- **Nix vs. Releases:** scd31, KibbieKatt und annaaurora generieren Fertigungsdaten über Nix-Builds. zoemaestra stellt vorgefertigte Gerber-Dateien auf der Releases-Seite bereit – keine Nix-Kenntnisse nötig.

!!! info "🔧 Was bedeutet Nix?"
    Nix ist ein Build-System. Es generiert aus den KiCad-Quelldateien automatisch die Fertigungsdaten (Gerber, BOM, CPL),
    die JLCPCB zum Bestücken braucht. Einige Forks (annaaurora, scd31, KibbieKatt) haben keine fertigen Dateien im Repo
    – die müssen erst über Nix *gebaut* werden. Das erfordert:

    1. **Nix installieren** ([nixos.org/download](https://nixos.org/download))
    2. **Repo klonen** (`git clone <repo-url>`)
    3. **Build starten** (`nix build` im Repo-Ordner)
    
    **Für Laien:** Zoemaestra's Fork kommt ohne Nix aus – fertige Dateien auf der Releases-Seite.
    Nur wenn du einen anderen Fork nimmst oder das Design selbst ändern willst, brauchst du Nix (oder KiCad + Plugin).
    Siehe [Platine fertigen lassen](pcb-manufacturing.md) für beide Wege.

- **Kosten:** zoemaestra's Fork spart durch Single-side Assembly (nur eine Seite bestückt) Geld. Alle anderen sind Double-side (teurer).
- **USB-Daten (D+/D-):** In allen Referenz-Designs sind die USB-Datenleitungen mit dem RP2040 verbunden — ohne funktioniert weder Flashen noch USB-Betrieb. Beide USB-C-Forks haben ESD-Schutz auf den Datenleitungen: **zoemaestra** über diskrete ESD441-Dioden, **annaaurora** über einen dedizierten USB-ESD-IC (USBLC6-2SC6, U8). Das Original und KibbieKatt haben **keinen** ESD-Schutz auf D+/D-.
- **Gehäuse-Formate:** `STL` (zoemaestra) sind fertige Dateien, `OpenSCAD` (andere) sind parametrisch und erfordern OpenSCAD zur STL-Generierung.

## Fazit

**Zoemaestra's Fork ist weiterhin die Laien-Empfehlung** – günstiger (Single-side) und keine Nix-Kenntnisse nötig.

**Für Fortgeschrittene, die USB-Serial/JTAG benötigen, ist annaaurora's Fork interessant** – USB-Daten sind über einen dedizierten Low-Cap-USB-ESD-IC (USBLC6-2SC6, U8) geführt, der besser für High-Speed-Signalintegrität ausgelegt ist als diskrete Schutzdioden.

---

**Nächstes Kapitel:** [Platine fertigen lassen](pcb-manufacturing.md)
