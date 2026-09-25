#!/bin/bash
# Skript kontrollib, millised arvud 1 kuni 20 on algarvud.

for arv in {1..20}
do
    if [ $arv -lt 2 ]; then
        echo "$arv - ei ole algarv"
        continue
    fi

    jagaja=2
    algarv=1

    while [ $jagaja -lt $arv ]
    do
        jaak=$(expr $arv % $jagaja)

        if [ $jaak -eq 0 ]; then
            algarv=0
            break
        fi

        jagaja=$(expr $jagaja + 1)
    done

    if [ $algarv -eq 1 ]; then
        echo "$arv - on algarv"
    else
        echo "$arv - ei ole algarv"
    fi
done
