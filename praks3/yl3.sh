#!/bin/bash
# Skript arvutab reisijate ja bussi kohtade arvu põhjal täis busside ning maha jäänud inimeste arvu.

echo -n "Sisesta reisijate arv: "
read reisijad

echo -n "Sisesta kohtade arv ühes bussis: "
read kohad

taisbussid=$(expr $reisijad / $kohad)
maha=$(expr $reisijad % $kohad)

echo "Täielikult täidetud busse: $taisbussid"
echo "Maha jäänud inimesi: $maha"
