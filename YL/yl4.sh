#!/bin/bash

if [ $# -ne 3 ]
then
    echo "Kasutamine: $0 A B C"
    exit 1
fi

A=$1
B=$2
C=$3

if [ "$A" -eq 0 ]
then
    echo "A ei tohi olla 0."
    exit 1
fi

D=$(echo "$B^2 - 4*$A*$C" | bc)

if [ "$D" -lt 0 ]
then
    echo "Reaalarvulisi lahendeid ei ole."
elif [ "$D" -eq 0 ]
then
    x=$(echo "scale=10; -$B / (2*$A)" | bc -l)
    printf "x = %.5f\n" "$x"
else
    x1=$(echo "scale=10; (-$B + sqrt($D)) / (2*$A)" | bc -l)
    x2=$(echo "scale=10; (-$B - sqrt($D)) / (2*$A)" | bc -l)

    printf "x1 = %.5f\n" "$x1"
    printf "x2 = %.5f\n" "$x2"
fi
