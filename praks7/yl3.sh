#!/bin/bash
# Skript väljastab kasutaja määratud suurusega tärnidest ristküliku ääre.

echo -n "Sisesta ridade arv: "
read read_count

echo -n "Sisesta tärnide arv reas: "
read tarnid

for (( i=1; i<=read_count; i++ ))
do
    echo -n "$i. "

    if [ $i -eq 1 ] || [ $i -eq $read_count ]; then

        for (( j=1; j<=tarnid; j++ ))
        do
            echo -n "* "
        done

    else
        echo -n "* "

        for (( j=2; j< tarnid; j++ ))
        do
            echo -n "  "
        done

        echo -n "*"
    fi

    echo
done
