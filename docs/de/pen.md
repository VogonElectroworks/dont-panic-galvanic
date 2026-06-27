# Nadelstift bauen

Der Nadelstift verbindet die Elektrolyse-Nadel über ein Kabel mit dem Gerät.

## Funktionsprinzip

Der Kern des Stifts ist ein einzelner **D-SUB-Female-Crimp-Pin** (LCSC C5393697).
Diese Pins stammen eigentlich aus DB9-Steckverbindern und haben eine gespaltene Hülse,
die eine Nadel festklemmt. Die Elektrolyse-Nadel hat einen F-Shank (1,25mm Durchmesser),
der genau in diese Hülse passt.

**Vorteil:** Die D-SUB-Pins sind für wiederholtes Stecken ausgelegt, halten also viele
Nadelwechsel aus. Und sie kosten nur ~0,12 $.

## Bauanleitung

1. **Kabel vorbereiten:** Ein ~50cm langes, flexibles Kabel (24 AWG) an einem Ende abisolieren.
2. **D-SUB-Pin anlöten:** Den D-SUB-Pin auf das abisolierte Ende löten. Der Pin hat eine kleine Öffnung auf der Rückseite, in die das Kabel passt. Etwas Zinn reicht.
3. **3D-Stift drucken:** Der Druckvorgang ist der gleiche wie beim Gehäuse (siehe [3D-Druck](3d-printing.md#22-slicer-einstellungen-empfohlen)).
    
    **STL-Dateien je nach Fork:**
    
    * zoemaestra: `3dprint/pen-Body.stl` und `pen-Cap.stl`
    * scd31 / KibbieKatt / annaaurora: `models/pen.FCStd` (FreeCAD, muss in STL exportiert werden)
    
    **Abweichende Druck-Einstellungen zum Gehäuse:**
    
    * Infill: 15 % (keine Belastung)
    * Supports: nicht nötig (keine Überhänge)
    * Orientierung: `pen-Body.stl` flach auf der Seite drucken (lange Achse waagerecht)

4. **D-SUB-Pin einsetzen:** Das Kabelende mit dem Pin von hinten durch den Stift fädeln, bis der Pin vorne in der Halterung sitzt.
5. **Fixieren:** Bei Bedarf mit Heißkleber fixieren, damit der Pin nicht verrutscht. Bei zoemaestras Design sollte der Pin von selbst halten.
6. **Anderes Kabelende:** Das freie Ende an eine 3,5mm-Klinke anschließen (oder direkt an die Schraubklemme am Gerät – je nach Fork).

## Nadel wechseln

- **Alte Nadel rausziehen:** Einfach an der Nadel ziehen, der D-SUB-Pin gibt sie frei.
- **Neue Nadel reinstecken:** Hände mit Isopropanol 70% desinfizieren. Nadel mit dem F-Shank (1,25mm) voran in den D-SUB-Pin schieben, bis sie fest sitzt.
- **Kein Werkzeug nötig:** Der D-SUB-Pin klemmt allein durch Federkraft.
- **Desinfizieren:** Nadelspitze vor Gebrauch mit Isopropanol 70% abwischen oder darin eintauchen. Auch der vordere Teil des Stifts sollte regelmäßig gereinigt werden.
- **Einmalnadeln:** Elektrolyse-Nadeln sind medizinische Einmalartikel. Nie bei mehreren Personen verwenden und nach Gebrauch in einen nadelsicheren Behälter entsorgen.
- **Haltbarkeit:** Sollte der Pin nach vielen Wechseln Spiel bekommen, einfach einen neuen Pin für ~0,12 $ bestellen (LCSC C5393697).

---

**Nächstes Kapitel:** [Gerät zusammenbauen](final-assembly.md)
