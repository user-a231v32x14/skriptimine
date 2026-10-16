#!/bin/bash

naita() {
    for argument in "$@"; do
        echo "$argument"
    done
}

naita "üks" "kaks" "kolm"
