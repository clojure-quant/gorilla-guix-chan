#!/bin/sh

export GUILE_LOAD_PATH=./guix:$GUILE_LOAD_PATH

echo "GUIX GUILE TEST LOAD-PAHT: " $GUILE_LOAD_PATH

# load file to guile repl
# guile -l /home/florian/repo/guix-chan/gorilla/test.scm

# load file, eval and exit
echo "evaling guile.."
guile -s ./guix/gorilla/test.scm

echo "evaling guix .."
guix build -f ./guix/gorilla/packages/babashka.scm
# guix build -f ./gorilla/packages/vscode.scm


# guix repl
