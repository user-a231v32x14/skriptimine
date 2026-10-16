#!/bin/bash

kontrolli_faili() {
    if [[ -f "$1" ]]; then
        echo "Fail on olemas."
        return 0
    else
        echo "Faili ei leitud."
        return 1
    fi
}

if kontrolli_faili "/etc/passwd"; then
    echo "Kontroll õnnestus."
else
    echo "Kontroll ebaõnnestus."
fi
