% Präsentationen mit artemisia
% itbayer
% Juni 2013 - 



artemisai ...
=============

ist ein kleines Framework mit dem man 
eine Präsentation im HTML Format erstellen kann.

-----------------------------------------------------

Der Name Artemisia
------------------

> Artemisia ist der Gattungsname des Beifußes. 
Benannt nach der Göttin Artemis, der Heil und Leben spendenden Erdenmutter. Der Beifuß gilt von alters her als heilig. 
Als 'Mariens Bettstroh' wird er mit der Mutter Gottes in Zusammenhang
gebracht, die das Himmlische mit dem Irdischen verbindet.

Auszug aus der Seite [artemisa.de](http://artemisa.de).


artemisai ist einfach weil ...
=============================

man nicht die Eigenheiten
eines Programmes erlernen muss.

- Texte schreiben im markdown Format
- make

Fertig.



artemisai ist portabel weil ...
==============================

für die Darstellung ein
Internet Browser ausreicht.




artemisai ist kompakt weil ...
==============================

alle Teile der Präsentation im einer HTML
Datei gespeichert werden. 


Eckpunkte
=========

- Erstellen
	- jeder Texteditor
	- Programme
		- pandoc
		- imagemagick (optional)
		- (g)vim (optional)
- Formatierung
	- markdown (pandocs markdown)
- Präsentieren
	- HTML Browser




Steuerung
=========

Die Steuerung von Artemisia übernimmt `make`.

- make 
	- make start.html
- make pdf
	- make start.pdf
- make clean
- make show

Layout
======

Das Layout von artemisai wurde schlicht und einfach gehalten.

Auf der Titelseite und in den einzelnen Folien 
kann jeweils eine Hintergrund Grafik eingebunden werden.

- `css/style.css`
- `css/titlepage.png`
	- `css/titlepage.xcf`
- `css/level1.png`
	- `css/level1.xcf`
- `template/slidy.template`

---------------------------------

Layout Erweiterung
------------------

Einfache Erweiterung durch CSS.

###### Anmerkung{.anmerkung}

Hier ist die Anmerkung der ersten Seite die mit einer Überschrift 6
eingeleitet wurde.

Bilder 
======

FIXME

Alle Bilder die sich im 
`fig` Verzeichnis befinden werden
mittels ImageMagick angepasst.





Bedienung der Präsentatin
=============================

Vollbild Modus
:	Der Vollbildmodus wird über den Browser bereitgestellt, Taste F11.

--------------------------------------

Navigation
----------

Seite weiter
:	* Maus Klick
	* Leertaste
	* Cursor rechts
	* Bild runter

Seite zurück 
:	* Cursor links
	* Bild hoch

-----------------------------------

Darstellung
---------------------

Schriftgröße (b), (s), (<), (>)
:	Die Schriftgröße wird automatisch angepasst, je nach Fenster Größe.
	Sie kann aber auch manuell angepasst werden.
	
	* Taste > oder *b*^big^ Schrift größer
	* Taste < oder *s*^small^ Schrift kleiner

Statuszeile ein -ausschalten (F)
:	Mit der Taste F kann die Statuszeile ausgeschaltet werden.


------------------------------------

Sonstigen
-------------------

Maus deaktivieren (K)
:	Mit der Taste K wird die Maus zum weiter schalten einer Folie aus -eingeschaltet.


Inhaltsverzeichnis (C)
:	Mit der Taste C kann das Inhaltsverzeichnis eingeblendet werden.
	Mit jeder anderen Taste kann es wieder ausgeblendet werden.


Anmerkung in der Präsentation
=============================

- Anmerkungen werden mit `###{.anmerkung}` eingeleitet.
- Anmerkungen müssen am Ende einer Folie stehen
- Anmerkungen werden im HTML Format ausgeblendet
- Anmerkungen werden im PDF Format <u>**nicht**</u> ausgeblendet

------------------------------------------

Beispiel Anmerkung
------------------

~~~
 Überschrift
 ===========
 
 Hier ist der normale Text

 - eins
 - zwei
 - drei

 ###{.anmerkung}

 Nicht vergessen zu erwähnen dass ...
~~~

Was geht nicht
==============

- Fusszeilen

###{.anmerkung}

Formatierung die in der Präsentation nicht 
umgesetzt, unterstützt werden.



&nbsp; {.titlepage}
====================

Besten Dank für Interesse

Anhang
======

Einzelen Datei von github.com runter laden

	https://raw.github.com/itbayer/artemisai/master/DATEI

(g)VIM Syntax Unterstützung `pandoc` FIXME Link.

Bilder mit dia
	dia -s 700x -e diabild.png diafile.dia

-s
:	breite x höhe. wird einer weg gelassen wird der andere automatisch berechnet

-e
:	exportieren
