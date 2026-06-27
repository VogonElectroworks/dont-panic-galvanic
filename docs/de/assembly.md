# Platine fertigstellen: THT-Bauteile löten & Display anschließen

Jetzt wird's handwerklich! Keine Sorge, das ist einfacher als es aussieht.

## Werkzeug-Checkliste

Du brauchst:

- ✅ **Lötkolben** (35–58 $ reicht, z.B. "Weller" oder "Stahlwerk")
- ✅ **Lötzinn** (mit Flussmittelkern, 0.75mm)
- ✅ **Seitenschneider** (für überstehende Drähte)
- ✅ **Schraubendreher** (kleine Kreuzschlitz)
- ✅ **Zweite Person** (hilft beim Halten, optional)

---

## Schritt 1: THT-Bauteile einlöten

**THT = Through-Hole Technology** (Bauteile, die durch Löcher gesteckt werden).

### Reihenfolge (immer vom flachsten zum höchsten Bauteil):
1. **Widerstände** (liegen flach auf)
2. **Kondensatoren** (wenn nicht SMD)
3. **Buchsen** (USB-C, 6.35mm Klinke)
4. **Schalter** (Taster)
5. **Display** (ganz zum Schluss, da am höchsten)

### Lötanleitung für Anfänger
1. **Stecke das Bauteil** durch die Löcher.
2. **Biege die Beinchen** leicht auseinander (hält das Teil fest).
3. **Erhitze das Loch** mit dem Lötkolben (2–3 Sekunden).
4. **Gib Lötzinn dazu** (nicht zu viel, eine kleine "Verbindungs-Insel" reicht).
5. **Nimm den Kolben weg** und warte, bis das Zinn erstarrt (1–2 Sek).
6. **Schneide überstehende Drähte** mit dem Seitenschneider ab.

---

## Schritt 2: Display anschließen

Das OLED-Display wird meist mit **Stiftleisten** angelötet.

### Pin-Belegung prüfen!
Die typische Reihenfolge (von links nach rechts, Display mit Bildschirm zu dir, Pins zeigen nach oben):
1. **VCC** (Strom +3.3V oder +5V)
2. **GND** (Masse)
3. **SCL** (I2C Takt)
4. **SDA** (I2C Daten)

!!! warning "Achtung: Pin-Reihenfolge variiert!"
    Manche Displays haben die Pins in anderer Reihenfolge!  
    Prüfe das Datenblatt oder mach einen **Test mit dem Multimeter** (Durchgangsprüfung).

![OLED Pin-Belegung auf der Platine](../assets/scd31-hair-electrolysis-machine-pcb-display-side-with-labels.png){width=400 loading=lazy}
*Abbildung: Display-Pins auf der Platine (VCC, GND, SCL, SDA)*

### Display anschließen

Das Display wird mit **Stiftleisten** an die Platine gelötet — VCC auf VCC, GND auf GND, SCL auf SCL, SDA auf SDA. Die obige Beschriftung zeigt genau, wohin jeder Pin gehört.

---

## Fehlerbehebung

| Problem | Ursache | Lösung |
|---------|---------|--------|
| Display bleibt schwarz | Falsche Pin-Belegung | Datenblatt prüfen, Pins umstecken |
| Fußpedal reagiert nicht | THT-Lötstelle kalt | Nochmal nachlöten |
| Gerät startet nicht | USB-C Kabel defekt | Anderes Kabel testen |
| Strom zu hoch | Kalibrierung falsch | Siehe [Kalibrierung](calibration.md) |

---

**Nächstes Kapitel:** [3D-Druck: Alle Plastikteile drucken](3d-printing.md)
