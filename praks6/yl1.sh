#!/bin/bash
# Skript arvutab 10 esimese paarisarvu summa.

summa=0

for arv in {1..10}
do
    jaak=$(expr $arv % 2)

    if [ $jaak -eq 0 ]; then
        summa=$(expr $summa + $arv)
    fi
done

echo "Arvude vahemikus 1 kuni 10 (kaasaarvatud) paarisarvude summa on: $summa"
