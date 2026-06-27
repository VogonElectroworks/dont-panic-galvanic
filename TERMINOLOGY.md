# Terminology / Terminologie

> This glossary ensures consistent translations across the entire project.
> **English** is the primary language, German is the translation.
>
> Last updated: 2026-06-19

## General

| English | Deutsch | Notes |
|---------|---------|-------|
| electrolysis | Elektrolyse / Elektro-Epilation | ⚠️ **Do not confuse with industrial electrolysis** (water splitting, electroplating). Our context is exclusively hair removal via galvanic electrolysis. |
| electrolysis (hair removal) | Elektrolyse (Haarentfernung) / Elektro-Epilation | Galvanic DC method for permanent hair removal. No relation to industrial electrolysis (hydrogen, electroplating, coating). |
| industrial electrolysis | industrielle / technische Elektrolyse | Water splitting, metal deposition, electroplating — **not related** to this project. |
| hair removal | Haarentfernung | |
| follicle / hair follicle | Follikel / Haarfollikel | |
| dermal papilla | Haarpapille | |
| permanent hair removal | dauerhafte Haarentfernung | Only FDA-approved for electrolysis |

## Methods

| English | Deutsch | Notes |
|---------|---------|-------|
| galvanic electrolysis | galvanische Elektrolyse | Our method; DC current |
| thermolysis / SWD / high frequency | Thermolyse / Hochfrequenz | AC current, heat |
| blend method | Blend-Methode | Combination of galvanic + thermolysis |
| lye / sodium hydroxide (NaOH) | Lauge / Natronlauge (NaOH) | Generated in the follicle |
| Lye-Units / LU | Lye-Units / LU | Technical term, kept in English |
| coagulation | Koagulation | Tissue destroyed by heat |
| cauterisation | Kauterisation | Not to be confused with coagulation |

## Hardware Components

| English | Deutsch | Notes |
|---------|---------|-------|
| needle / probe | Nadel | "Probe" in professional context |
| needle holder / needle pen | Nadelhalter / Nadelstift | Not "electrode holder" — technical term: "electrolysis pen" (scd31), we use "needle pen" / "Nadelstift" |
| foot pedal | Fußpedal | Not "switch" or "pedal" |
| PCB / circuit board | Platine / Leiterplatte | |
| enclosure / case | Gehäuse | |
| knob | Drehknopf | For the rotary encoder |
| rotary encoder | Drehencoder / Rotary Encoder | |
| OLED display | OLED-Display | |
| 3.5 mm jack | 3,5-mm-Klinkenbuchse | For pen/TENS |
| 6.35 mm jack | 6,35-mm-Klinkenbuchse | For foot pedal |
| D-SUB pin / DE-9 pin | D-SUB-Pin / DE-9-Pin | Crimp pin for needle clamping |
| battery | Akku | |
| USB-C port | USB-C-Anschluss | |
| microcontroller | Mikrocontroller | |
| RP2040 | RP2040 | The microcontroller used |
| screw | Schraube | M3 |

## 3D Printing

| English | Deutsch | Notes |
|---------|---------|-------|
| 3D printing | 3D-Druck | |
| filament | Filament | |
| layer height | Layerhöhe / Schichthöhe | |
| infill | Infill / Füllgrad | In percent |
| support / support structure | Support / Stütze | |
| brim | Brim / Rand | Prevents detachment from bed |
| raft | Raft / Grundplatte | |
| slicer | Slicer | e.g. Cura, PrusaSlicer |
| PETG | PETG | Recommended filament |
| PLA | PLA | Cheaper, less durable |
| ABS | ABS | Acetone vapor smoothing only |
| STL file | STL-Datei | 3D model format |
| G-code | G-Code | Printer instructions |

## Post-Processing & Finishing

| English | Deutsch | Notes |
|---------|---------|-------|
| post-processing | Nachbearbeitung | |
| sanding | Schleifen | |
| sandpaper / grit | Schleifpapier / Körnung | |
| wet sanding | Nass-Schleifen | Required for PLA |
| filler primer | Füller-Grundierung | Automotive supply |
| spot putty | Spachtelmasse / Spot Putty | |
| epoxy coating | Epoxidharz-Beschichtung | e.g. XTC-3D |
| vapor smoothing | Dampfglätten | ABS only (acetone) |
| painting / lacquering | Lackieren | |
| clear coat | Klarlack | Matte or glossy |
| plasti dip | Plasti Dip | Rubberized coating |
| silkscreen | Silkscreen / Bestückungsdruck | White labeling on PCB |
| modding | Modding | Personalization / customization |

## Electronics & Soldering

| English | Deutsch | Notes |
|---------|---------|-------|
| soldering | Löten | |
| soldering iron | Lötkolben | |
| solder | Lötzinn | |
| through-hole (THT) | THT / Durchsteckmontage | |
| surface-mount (SMD) | SMD / Oberflächenmontage | |
| PCB assembly (PCBA) | PCBA / Bestückung | Bookable at JLCPCB |
| single-side assembly | Single-side Assembly | Parts on one side only |
| double-sided PCB | Double-sided PCB | Parts on both sides |
| current | Strom(stärke) | In mA |
| voltage | Spannung | In V |
| resistance | Widerstand | In Ω |
| multimeter | Multimeter | |
| short circuit | Kurzschluss | |
| current limiting | Strombegrenzung | |
| solder joint | Lötstelle | |
| cold solder joint | kalte Lötstelle | Poor connection |

## Manufacturing Data

| English | Deutsch | Notes |
|---------|---------|-------|
| Gerber files | Gerber-Dateien | For PCB fabrication |
| Bill of Materials (BOM) | BOM / Stückliste | Parts list |
| CPL file / Pick and Place | CPL-Datei / Bestückungsdatei | For automated assembly |
| Release | Release | Manufacturing files for download |
| fabrication toolkit | Fabrication Toolkit | KiCad plugin |
| board outline | Board Outline / Platinenumriss | |

## Software & Firmware

| English | Deutsch | Notes |
|---------|---------|-------|
| firmware | Firmware | |
| UF2 file | UF2-Datei | Firmware format for RP2040 |
| BOOTSEL mode | BOOTSEL-Modus | Flash mode of RP2040 |
| flash / flashing | flashen | Firmware installation |
| build / compile | bauen / kompilieren | |
| Nix | Nix | Build system for manufacturing data |
| CI pipeline | CI-Pipeline | Automated build |

## Application

| English | Deutsch | Notes |
|---------|---------|-------|
| calibration | Kalibrierung | |
| self-test | Selbsttest | Device test after assembly |
| clearing method | Clearing / Methode A | Treat all hairs at once |
| flexible session method | flexible Methode / Methode B | Sessions by time |
| rubber band method | Schießgummi-Methode | Special technique |
| TENS pad | TENS-Pad / Elektroden-Pad | Return electrode |
| aftercare | Nachsorge | |
| swelling | Schwellung | Normal reaction |
| crusting | Krustenbildung | Normal reaction |

## Project & Community

| English | Deutsch | Notes |
|---------|---------|-------|
| fork | Fork | Project derivative |
| repository / repo | Repository | |
| issue | Issue / Ticket | |
| pull request (PR) | Pull Request | |
| disclaimer | Haftungsausschluss / Disclaimer | |
| warranty | Garantie / Gewährleistung | |
| open hardware | Open Hardware | |
| CE marking | CE-Kennzeichnung | |
| FDA approval | FDA-Zulassung | |

## Services & Platforms

| English | Deutsch | Notes |
|---------|---------|-------|
| JLCPCB | JLCPCB | PCB manufacturer |
| AISLER | AISLER | European PCB manufacturer |
| PCBWay | PCBWay | PCB manufacturer |
| LCSC | LCSC | Component distributor |
| AliExpress | AliExpress | Low-cost source |
| KiCad | KiCad | Open-source EDA |
| ReadTheDocs | ReadTheDocs | Documentation hosting |
| Codeberg | Codeberg | Git platform |
| GitLab | GitLab | Git platform |
| GitHub | GitHub | Git platform |
| Matrix | Matrix | Chat protocol |