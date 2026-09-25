#!/bin/bash
# Skript arvutab küpsisetordi valmistamiseks vajaliku küpsisepakkide arvu.

echo -n "Sisesta aluskandiku pikkus cm: "
read pikkus

echo -n "Sisesta aluskandiku laius cm: "
read laius

echo -n "Sisesta küpsise suurus cm: "
read kupsis

echo -n "Sisesta tordi kihtide arv: "
read kihid

echo -n "Sisesta küpsiste arv ühes pakis: "
read pakis

kupsiseid_pikkuses=$(expr $pikkus / $kupsis)
kupsiseid_laiuses=$(expr $laius / $kupsis)
kupsiseid_kihis=$(expr $kupsiseid_pikkuses \* $kupsiseid_laiuses)
kupsiseid_kokku=$(expr $kupsiseid_kihis \* $kihid)

pakid=$(expr $kupsiseid_kokku / $pakis)
jaak=$(expr $kupsiseid_kokku % $pakis)

if [ $jaak -ne 0 ]; then
    pakid=$(expr $pakid + 1)
fi

echo "Vajalik küpsiste kogus: $kupsiseid_kokku"
echo "Poest tuleb osta $pakid pakki."
