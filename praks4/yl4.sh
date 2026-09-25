#!/bin/bash
# Skript kontrollib käsurealt antud täisarvu paarsust.

if [ $# -ne 1 ]; then
    echo "Käivita see skript koos ühe täisarvuga. Näiteks: bash yl4.sh 420"
    exit 1
fi

jaak=$(expr $1 % 2)

if [ $jaak -eq 0 ]; then
    echo "Antud arv on paaris"
else
    echo "Antud arv on paaritu"
fi
