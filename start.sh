#!/bin/bash

# Pfad 
PFAD=~/sbgit/github/artemisia

# (G)VIM
GVIM=/usr/bin/gvim

# Verzeichnis wechseln
cd $PFAD

# (G)VIM mit artemisia Erweiterung laden
$GVIM -S start.vim
