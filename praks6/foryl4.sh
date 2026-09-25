#!/bin/bash
# Skript väljastab kõik süsteemis olevad kasutajanimed.

for kasutaja in $(cut -d: -f1 /etc/passwd)
do
    echo "$kasutaja"
done
