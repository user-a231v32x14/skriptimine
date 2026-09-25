#!/bin/bash
# Skript küsib ridade ja igas reas olevate tärnide arvu ning väljastab vastava kujundi.

echo -n "Sisesta ridade arv: "
read read

echo -n "Sisesta tärnide arv reas: "
read tarnid

for (( i=1; i<=read; i++ ))
do
    echo -n "$i. "
    
    for (( j=1; j<=tarnid; j++ ))
    do
        echo -n "* "
    done
    
    echo
done
