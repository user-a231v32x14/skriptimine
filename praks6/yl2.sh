#!/bin/bash
# Skript arvutab kasutaja sisestatud täisarvu numbrite summa.

echo -n "Sisesta suvaline täisarv: "
read arv

algne=$arv
summa=0

if [ $arv -lt 0 ]; then
    arv=$(expr 0 - $arv)
fi

while [ $arv -gt 0 ]
do
    number=$(expr $arv % 10)
    summa=$(expr $summa + $number)
    arv=$(expr $arv / 10)
done

if [ $algne -lt 0 ]; then
    summa=$(expr 0 - $summa)
fi

echo "Arvu $algne numbrite summa on $summa"
