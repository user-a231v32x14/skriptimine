#!/bin/bash

ajutine="/tmp/lotonumbrid.txt"

> "$ajutine"

while [ "$(wc -l < "$ajutine")" -lt 5 ]
do
    number=$((RANDOM % 50 + 1))

    if ! grep -qx "$number" "$ajutine"
    then
        echo "$number" >> "$ajutine"
    fi
done

echo "Vali väljund:"
echo "1 - Kuva terminalis"
echo "2 - Salvesta faili"

read -p "Valik: " valik

if [ "$valik" -eq 1 ]
then
    echo "Lotonumbrid:"
    cat "$ajutine"
    echo "Genereeritud: $(date)"
elif [ "$valik" -eq 2 ]
then
    fail="lotonumbrid.txt"

    {
        echo "Genereeritud: $(date)"
        echo "Lotonumbrid:"
        cat "$ajutine"
        echo
    } >> "$fail"

    echo "Numbrid salvestati faili $fail"
else
    echo "Vigane valik."
fi

rm "$ajutine"
