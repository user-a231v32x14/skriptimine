#!/bin/bash
# Skript väljastab kasvava tärnidest kolmnurga.

echo -n "Sisesta ridade arv: "
read read_count

for (( i=1; i<=read_count; i++ ))
do
    echo -n "$i. "

    for (( j=1; j<=i; j++ ))
    do
        echo -n "* "
    done

    echo
done
