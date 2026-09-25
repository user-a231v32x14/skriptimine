#!/bin/bash
# Skript väljastab kujundi, kus o-de arv väheneb ja tärnide arv suureneb.

echo -n "Sisesta ridade arv: "
read read_count

for (( i=1; i<=read_count; i++ ))
do
    echo -n "$i. "

    for (( j=1; j<=read_count-i; j++ ))
    do
        echo -n "o "
    done

    for (( j=1; j<=i; j++ ))
    do
        echo -n "* "
    done

    echo
done
