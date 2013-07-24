# --------------------------------------------------------
# markdown pandoc Präsentation Makefile
# --------------------------------------------------------
#
# Erklärung der pandoc Parameter
# ==============================
#
# -i 
# :	Mit dem Parameter -i können die Aufzählungspunkte
# 	einzeln eingeblendet werden.
#
# 	--self-contained
# :	Mit dem Parameter `--self-contained` werden alle externen
# 	Daten in die HTML Datei eingebunden.
# 	Somit ist es möglich die HTML Datei zu verwenden, ohne die 
# 	weiteren Dateien beachten zu müssen.
#
# --slide-level
# :	Mit diesem Parameter kann bestimmt werden wie viele Levels
# 	eine eigene Seite werden. `--slide-levell=2` erstellt auch 
# 	für die Überschrift `<h2` eine eigene Seite.
# 
# --section-divs
# :	Dieser Parameter sorgt dafür dass die einzelnen Abschnitte 
# 	mit einem `div` Tag umschlossen werden.
#
# -c
# :	Die CSS Datei, die verwendet werden soll.
#

PANDOC = pandoc
TEMPLATE = slidy.template


default:
	make -s start.l1.html
	

# -----------------------------------------------------
# Für die Entwicklung raus genommen
#	--self-contained \
#
start.l1.html: start.md l1.css all.css
	$(PANDOC) -t slidy \
	-s \
	--template=$(TEMPLATE) \
	--slide-level=1 \
	--section-divs \
	-c all.css \
	-c l1.css \
	-o start.l1.html \
	start.md

level1:
	make -s start.l1.html



# -----------------------------------------------------
# Für die Entwicklung raus genommen
#	--self-contained \
#
start.l2.html: start.md all.css l2.css
	$(PANDOC) -t slidy \
	-s \
	--template=$(TEMPLATE) \
	--slide-level=2 \
	--section-divs \
	-c all.css \
	-c l2.css \
	-o start.l2.html \
	start.md

level2:
	make -s start.l2.html



# -----------------------------------------------------
#
start.pdf: start.md
	$(PANDOC) -t beamer \
	-V lang=ngermanb \
	-s --section-divs \
	--self-contained \
	-o start.pdf \
	start.md

pdf: 
	make -s start.pdf



clean:
	rm *.html
	rm *.pdf

# -----------------------------------------------------
#
#s5: $(HTML_FILES)

#%.html: %.md Makefile
#	pandoc -t s5 -s --section-divs --self-contained -c $(CSS) $< -o $@

#slideous: $(HTML_FILES)

#%.html: %.md Makefile
#	pandoc -t slideous -s --section-divs --self-contained -c $(CSS) $< -o $@

#dzslides: $(HTML_FILES)

#%.html: %.md Makefile
#	pandoc -t dzslides -s --section-divs --self-contained -c $(CSS) $< -o $@


