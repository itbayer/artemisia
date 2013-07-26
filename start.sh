#!/bin/bash

# Pfad 
PFAD=~/sbgit/github/praesento

# (G)VIM
GVIM=/usr/bin/gvim

# Verzeichnis wechseln
cd $PFAD

# (G)VIM mit praesento Erweiterung laden
$GVIM -S start.vim
