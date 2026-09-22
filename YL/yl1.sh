#!/bin/bash

for arv in {1000..9999}
do
    algne=$arv

    while [ $arv -ge 10 ]
    do
        summa=0

        while [ $arv -gt 0 ]
        do
            number=$((arv % 10))
            summa=$((summa + number))
            arv=$((arv / 10))
        done

        arv=$summa
    done

    if [ $arv -eq 7 ]
    then
        echo $algne
    fi
done
