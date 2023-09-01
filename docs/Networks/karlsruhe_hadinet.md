# Karlsruhe, HaDiKo - HaDiNet

Die Abteilung HaDiNet im HaDiKo e.V. stellt die Internetversorgung im
Hans-Dickmann-Kolleg und im Schroff-Kolleg in Karlsruhe sicher. Neben
Internet werden auch weitere Dienste für die Bewohner und Gremien der
studentischen Selbstverwaltung bereitgestellt. Hierzu zählen Telefonie,
IPTV, Fileserver, E-Mail, Wiki, Drucker, uvm.

Die Anbindung an das Internet erfolgt über das KIT zum Belwue.

## Zusammenfassung

  Hochschule              Alle in Karlsruhe
  ----------------------- ----------------------------------------------------------------------------------------------------------
  Hochschulort            Karlsruhe
  Website                 <https://www.hadiko.de/>
  Nutzer                  ca. 1100
  Studenten im Wohnheim   1103
  Mitarbeiter             20 - 30
  Switching               Aruba CX 8360 (Core), Aruba CX 6300 (Serverraum), Aruba CX 6200 (Access), HP Procurve 5406/5412 (Legacy)
  WLAN                    Ubiquiti Unifi AP AC Pro
  Uplink                  2x 1 GBit/s
  Beitrag                 3.50€ / Monat
  E-Mail                  <hadinet@hadiko.de>
  Gründungsjahr           1996

## Netzwerk

Das Netzwerk im HaDiKo ist als Stern ausgelegt, mit dem Core-Router im
Gebäude K3 als Zentrum.

![](/studnetze/hadiko-hadinet-netzplan-2022.png){width="800"}

Seit 2021 laufen Arbeiten zur Erneuerung der Infrastruktur, bei denen
die alten HP Procurve-Switches durch neue Aruba CX-Switches ersetzt
werden. In dem Zuge werden auch die Glasfaser-Leitungen zwischen den
einzelnen Gebäuden ersetzt und die Anbindung der Switches zum Core sowie
der Uplink auf 2x 10 GBit/s ausgebaut.

Das im April 2022 eröffnete Schroff-Kolleg, welches als Gebäude K6 zum
HaDiKo gehört, ist wegen räumlicher Gegebenheiten über eine 80 GHz
Richtfunkstrecke mit einer Bandbreite von 10 Gbit/s (symmetrisch)
angebunden.

## WLAN

Seit 2020 laufen Projekte zur Ausstattung aller Gebäude mit WLAN. Das
HaDiNet übernimmt hierbei alles von Planung und Handwerkerkommunikation
über Koordinierung bis Installation und steht im ständigen Austausch mit
dem Wohnheimsbetreiber. Stand August 2022 sind vier Gebäude fast
vollständig ausgestattet und die Arbeiten im fünften Gebäude haben
begonnen.

## Server

In den Gebäuden K3 und K5 befindet sich jeweils ein Serverraum, in
welchem die Server für die Dienste des Vereins betrieben werden. Der
Großteil der Infrastruktur ist mit Ganeti / KVM virtualisiert. Einige
wenige Dienste mit besonderen Anforderungen, wie E-Mail, Firewall oder
das Backup laufen auf dedizierter Hardware.

Als Betriebssystem wird Debian eingesetzt und das Deployment der Server
/ VMs erfolgt via Puppet. Das allgemeine Ziel ist ein möglichst
autonomer Betrieb der Infrastruktur ohne Interaktion der
Administratoren.

## Software

Im HaDiNet wird der Großteil der Software in Python 3 geschrieben.
Hierzu zählt die Mitglieder- und Vertragsverwaltung \"myHaDiNet\", die
Netzwerkautomatisierung \"Flightplane\" und eine Vielzahl an
Synchronisationssoftware zwischen dem LDAP und z.B. Drucker, DHCP, DNS
und Firewall.

Die Zusammenarbeit am Code und das Codereview erfolgt über die Software
Gerrit, das Bugtracking erfolgt in Redmine und als CI kommt Jenkins zum
Einsatz. Nutzeranliegen werden über das Ticketsystem Request Tracker
(RT) bearbeitet.
