#!/bin/bash
# Skript küsib kasutajalt numbreid kuni nulli sisestamiseni ja jätab negatiivsed arvud vahele.

while true
do
    echo -n "Sisesta number: "
    read arv

    if [ $arv -eq 0 ]; then
        break
    fi

    if [ $arv -lt 0 ]; then
        echo "Negatiivne arv jäetakse vahele."
        continue
    fi

    echo "Sisestasid positiivse arvu: $arv"
done

echo "Programm lõpetas töö."
