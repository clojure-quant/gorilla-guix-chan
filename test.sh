#!/bin/sh

export GUILE_LOAD_PATH=.:$GUILE_LOAD_PATH

# guix build -f ./gorilla/packages/bongotrott.scm

# guix build -f ./gorilla/services/special-files.scm

guix repl