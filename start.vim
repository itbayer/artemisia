"
" start.vim praesento
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
menu Praesent&o.Vim\ Konfiguration\ Neu\ einlesen :unmenu Praesento<CR>:so start.vim<CR>

" ---------------------------------------------------------
" Praesento Menü
menu Praesento.-----------------Dateien\ öffnen----------------- :
menu Praesent&o.Öffnen\ &Startseite<Tab>:e\ start\.md :tabnew<CR>:e start.md<CR><CR>

menu Praesento.-------------------show------------------------- :
menu Praesent&o.show\ Pr&äsentation<Tab>:make\ show :! x-www-browser start.html &


menu Praesento.-------------------make------------------------- :
menu Praesent&o.make\ &html<Tab>:make\ start\.html :make start.html<CR><CR>

menu Praesent&o.make\ &gh-pages<Tab>:make\ gh-pages :make gh-pages<CR><CR>
menu Praesent&o.make\ &fig<Tab>:make\ fig :make fig<CR>
menu Praesent&o.make\ &online<Tab>:make\ online :make online<CR>
menu Praesent&o.make\ &clean<Tab>:make\ clean :make clean<CR>

menu Praesento.-----------------git--------------------------- :
menu Praesent&o.&Git.Änderungen\ &holen<Tab>:!git\ pull :!git pull<CR>
menu Praesent&o.&Git.Änderungen\ &anzeigen<Tab>:!git\ status :!git status<CR>


" -----------------------------------------------------------
" Abkürzungen
abb praesentois praesento mit is

" -----------------------------------------------------------
" Kurztasten  Textbausteine
"

" Weiterleitungsseite mit <Leader>pwl (PraesentoWeiterLeitung)
map <Leader>pwl i% Weiterleitung nach ....html<CR>%<CR>%<CR><CR><CR><script language="javascript"><CR><!--<CR>window.location.href="....html";<CR>// --><CR></script><ESC>9k13l

" -----------------------------------------------------------
"  Kurztasten für die Text Formatierung

" Markierung Fett darstellen <Leader>rff (PraesentoFormatFett)
vmap <Leader>pff xi****<esc>2hp<esc>

" Markierung Kursiv darstellen <Leader>rfk (PraesentoFormatKursiv)
vmap <Leader>pfk xi__<esc>hp<esc>

" Markierte Zeilen in eine Liste wandeln <Leader>rfl (PraesentoFormatListe)
vmap <Leader>pfl :s/^/* /<CR>

" Markierte Zeilen in eine NummernListe wandeln <Leader>rfn (PraesentoFormatNummernliste)
vmap <Leader>pfn :s/^/#. /<CR>

" Markierte Zeilen in eine Block wandeln <Leader>rfb (PraesentoFormatBlock)
vmap <Leader>pfb :s/^/\| /<CR>

" Markierte Zeile als Code darstellen <Leader>rfc (PraesentoFormatCode)
vmap <Leader>pfc xi``<esc>hp<esc>

" vim:ft=vim: 
