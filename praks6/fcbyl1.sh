#!/bin/bash
# Skript loendab 1 kuni 10 ja katkestab tsükli väärtuse 7 korral.

for i in {1..10}
do
    if [ $i -eq 7 ]; then
        echo "Tsükkel katkestatakse, sest i=7"
        break
    fi

    echo "i = $i"
done
