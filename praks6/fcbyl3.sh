#!/bin/bash
# Skript kasutab pesastatud tsükleid ja katkestab mõlemad tsüklid väärtuse 5 korral.

for i in {1..10}
do
    echo "Välimine tsükkel: i=$i"

    for j in {1..10}
    do
        echo "  Sisemine tsükkel: j=$j"

        if [ $j -eq 5 ]; then
            echo "  j=5, katkestan mõlemad tsüklid."
            break 2
        fi
    done
done

echo "Mõlemad tsüklid on lõpetatud."
