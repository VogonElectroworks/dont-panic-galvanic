# Sicherheit & Rechtliche Hinweise

## ⚠️ WICHTIG: Lies dies vor dem Start!

Bevor du mit dem Bau beginnst, müssen wir über die rechtlichen und sicherheitstechnischen Aspekte sprechen.

## 1. Rechtliche Lage (Deutschland/EU)

### Das Problem
Ein Elektrolyse-Gerät appliziert elektrischen Strom in den menschlichen Körper, um Gewebe (die Haarwurzel) zu zerstören. Damit fällt es unter strenge Regulierungen:

- **Medizinprodukteverordnung (MDR):** Geräte zur Haarentfernung gelten als Medizinprodukte der Klasse I oder IIa.
- **CE-Kennzeichnung:** Pflicht für kommerzielle Geräte (kostet zehntausende Dollar).
- **Produkthaftpflicht:** Verkäufer haften für Verletzungen.

### Der "DIY-Schutzschild"
Open-Source-Projekte wie dieses nutzen eine juristische Grauzone:

| Szenario | Rechtliche Einordnung | Haftung |
|----------|----------------------|---------|
| Entwickler verkauft **fertiges Gerät** | Verkauf von Medizinprodukten ohne Zulassung | ❌ Strafbar |
| Entwickler verkauft **Baupläne/PCB-Dateien** | Verkauf von "Evaluierungs-Kits" (Elektronikbastelsätze) | ✅ Erlaubt |
| Bastler baut sich **selbst ein Gerät** | "Herstellung zum Eigengebrauch" | ✅ Erlaubt (auf eigene Gefahr) |

**Du bist der Hersteller!**  
In dem Moment, in dem du das letzte Kabel anlötest und die Firmware aufspielst, **wirst du juristisch zum Hersteller** deines eigenen Geräts. Damit übernimmst du die volle Verantwortung für deine eigene Sicherheit.

## 2. Sicherheitstechnische Risiken

### Elektrische Sicherheit
- **Stromstärke:** Das Gerät arbeitet mit niedrigen Strömen (0,1–5 mA), aber falsche Kalibrierung kann Verbrennungen und Narben verursachen.
- **Isolation:** Nutze nur isolierte Nadelhalter. Das Gerät selbst arbeitet nur, wenn es vom USB-Ladegerät getrennt wurde.
- **Fußpedal:** Dient als Stromschalter für die Behandlung (nicht als Notausschalter!). Es sorgt dafür, dass die Nadel nicht dauerhaft unter Strom steht. **Teste es vor jeder Sitzung:** Pedal drücken = Strom schaltet sich die eingestellte Zeit an, Pedal loslassen = Strom sofort aus.
- **Gegen-Elektrode (TENS-Pad):** Das Pad muss vor jeder Behandlung auf einer sauberen, unbehaarten Hautstelle nahe der Behandlungsfläche kleben. Ohne Pad wird der Stromkreis nicht geschlossen – es fließt kein Strom. Niemals das Pad auf offene Wunden, Narben oder Tätowierungen kleben. Bei Hautirritationen die Position wechseln.

### Hygienische Sicherheit
- **Einmalnadeln:** Verwende niemals dieselbe Nadel bei mehreren Personen (Infektionsrisiko!).
- **Desinfektion:** Haut und Werkzeuge vor jeder Behandlung desinfizieren.
- **Hautreaktionen:** Bei Rötungen oder Schwellungen sofort abbrechen.

**Normale Hautreaktionen** (vorübergehend, klingen innerhalb von Minuten bis wenigen Stunden ab):

- Leichte Rötung (Erythem) um den behandelten Follikel
- Geringe Schwellung der Follikelöffnung
- Kleine Schorfschichten oder Krusten beim Abheilen — nicht abkratzen

**Wann du abbrechen und einen Arzt aufsuchen solltest:**

- Rötung, Schwellung oder Schmerzen, die länger als 24 Stunden anhalten
- Blasen, Verbrennungen oder nässende Wunden
- Anzeichen einer Infektion (Eiter, zunehmende Wärme, sich ausbreitende Rötung)
- Narbenbildung oder dauerhafte Hautverfärbung

## 3. Haftungsausschluss (Disclaimer)

**Dies ist kein zertifiziertes Medizinprodukt!**  
Alle hier beschriebenen Informationen, Baupläne und Schaltpläne dienen ausschließlich Informations- und Bildungszwecken. Du baust und betreibst dieses Gerät auf eigene Verantwortung.

### Zusammenfassung

- **Bildungszweck:** Du nutzt die Informationen in dieser Anleitung auf eigenes Risiko.
- **Kein Medizinprodukt:** Keine CE-Kennzeichnung, keine klinische Zulassung, keine FDA/MPA-Prüfung. Die Anwendung am Menschen erfolgt ausdrücklich auf eigene Gefahr.
- **KEINE GEWÄHRLEISTUNG / NO WARRANTY:** Dieses Projekt wird ohne jegliche Gewährleistung bereitgestellt — weder ausdrücklich noch stillschweigend. Der gesamte Bau- und Betriebsprozess erfolgt auf eigenes Risiko.
- **Keine Haftung:** In keinem Fall haften die Autoren oder Mitwirkenden für direkte, indirekte oder Folgeschäden durch Bau oder Nutzung des Geräts.
- **Keine Haftung für Übersetzungsfehler:** Die Texte dieser Anleitung wurden von Laien und/oder Maschinen erstellt und übersetzt. Die Autoren haften nicht für etwaige Übersetzungsfehler und daraus entstehende Schäden oder negative Auswirkungen.
- **Arzt konsultieren:** Konsultiere vor der Anwendung des Geräts einen Facharzt (Dermatologe).

### Marken

Sämtliche Produkt- und Herstellernamen, Handelsmarken und eingetragenen Warenzeichen sind Eigentum ihrer jeweiligen Inhaber. Ihre Nennung dient ausschließlich der Information und bedeutet keine Affiliation oder Unterstützung. Dieses Projekt steht in keiner Verbindung zu kommerziellen Elektrolyse-Geräteherstellern.

## 4. Empfohlene Sicherheitsmaßnahmen

- **Patch-Test:** Behandle zuerst eine einzelne, unauffällige Stelle und warte 24 Stunden, um auf adverse Reaktionen zu prüfen.
- **Niedrig beginnen:** Starte mit der niedrigsten Stromstärke und der kürzesten Dauer. Erhöhe nur, wenn für wirksame Ergebnisse nötig.
- **Risikobereiche meiden:** Nicht über Muttermale, Leberflecken, Tätowierungen oder verletzter Haut behandeln.
- **Eine Stelle nach der anderen:** Nicht dieselbe Stelle erneut behandeln, bis die Haut vollständig abgeheilt ist (in der Regel 1–2 Wochen).
- **Gute Beleuchtung und Vergrößerung:** Nutze helles Licht und einen Lupenspiegel oder eine Lupenbrille, damit du den Haarfollikel klar erkennst.
- **Stabile Handposition:** Stütze die Hand auf einer festen Unterlage ab, um ein Abrutschen und Verletzen der Haut mit der Nadel zu vermeiden.
- **Trocken bleiben:** Das Gerät nicht in der Nähe von Wasser oder mit nassen Händen verwenden.
- **Nur Akku:** Das Gerät darf während einer Behandlung nur über den Akku betrieben werden — niemals behandeln, während es am USB-Ladegerät angeschlossen ist.
- **Pausen machen:** Wenn die Haut rot oder unangenehm wird, eine Pause einlegen. Nicht länger als 30 Minuten in einer Sitzung behandeln.

---

**Nächstes Kapitel:** [Kommerziell vs. DIY — Bauen oder Kaufen?](commercial-vs-diy.md)
