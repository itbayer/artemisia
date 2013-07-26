"
" start.vim artemisia
"

" -------------------------------------------------------------
"  Taste für eine Befehlserweiterung
"  siehe Tabs 
let mapleader=","


" Vim Konfiguration am Ende der Datei verwenden
set modeline

" -------------------------------------------------------------
" Suche erweitern / umschreiben
set incsearch " inkrementelle Suche aktivieren. Bei der Suche werden die
              " gefundenen Zeichen gleich hervorgehoben.
set ic " Groß-/Kleinschreibung bei der Suche ignorieren
set hlsearch " Suche Farblich hervorheben



" ---------------------------------------------------------
" Menu Entwicklung
"
" Vim Konfiguration neu einlesen
menu Artemis&ia.Vim\ Konfiguration\ Neu\ einlesen :unmenu Artemisia<CR>:so start.vim<CR>

" ---------------------------------------------------------
" Artemisia Menü
menu Artemisia.-----------------Dateien\ öffnen----------------- :
menu Artemis&ia.Öffnen\ &Startseite<Tab>:e\ start\.md :tabnew<CR>:e start.md<CR><CR>

menu Artemisia.-------------------show------------------------- :
menu Artemis&ia.show\ Pr&äsentation<Tab>:make\ show :! x-www-browser start.html &


menu Artemisia.-------------------make------------------------- :
menu Artemis&ia.make\ &html<Tab>:make\ start\.html :make start.html<CR><CR>

menu Artemis&ia.make\ &dev<Tab>:make\ dev :make dev<CR><CR>
menu Artemis&ia.make\ &fig<Tab>:make\ fig :make fig<CR>
menu Artemis&ia.make\ &online<Tab>:make\ online :make online<CR>
menu Artemis&ia.make\ &clean<Tab>:make\ clean :make clean<CR>

menu Artemisia.-----------------git--------------------------- :
menu Artemis&ia.&Git.Änderungen\ &holen<Tab>:!git\ pull :!git pull<CR>
menu Artemis&ia.&Git.Änderungen\ &anzeigen<Tab>:!git\ status :!git status<CR>


" -----------------------------------------------------------
" Abkürzungen
abb artemisiais artemisia mit is

" -----------------------------------------------------------
" Kurztasten  Textbausteine
"

" Weiterleitungsseite mit <Leader>pwl (ArtemisiaWeiterLeitung)
map <Leader>pwl i% Weiterleitung nach ....html<CR>%<CR>%<CR><CR><CR><script language="javascript"><CR><!--<CR>window.location.href="....html";<CR>// --><CR></script><ESC>9k13l

" -----------------------------------------------------------
"  Kurztasten für die Text Formatierung

" Markierung Fett darstellen <Leader>rff (ArtemisiaFormatFett)
vmap <Leader>aff xi****<esc>2hp<esc>

" Markierung Kursiv darstellen <Leader>rfk (ArtemisiaFormatKursiv)
vmap <Leader>afk xi__<esc>hp<esc>

" Markierte Zeilen in eine Liste wandeln <Leader>rfl (ArtemisiaFormatListe)
vmap <Leader>afl :s/^/* /<CR>

" Markierte Zeilen in eine NummernListe wandeln <Leader>rfn (ArtemisiaFormatNummernliste)
vmap <Leader>afn :s/^/#. /<CR>

" Markierte Zeilen in eine Block wandeln <Leader>rfb (ArtemisiaFormatBlock)
vmap <Leader>afb :s/^/\| /<CR>

" Markierte Zeile als Code darstellen <Leader>rfc (ArtemisiaFormatCode)
vmap <Leader>afc xi``<esc>hp<esc>

" vim:ft=vim: 
