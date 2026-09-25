#!/bin/bash
# Skript jagab semikoolonitega eraldatud stringi eraldi sõnadeks.

text="koer;kass;hiir"

IFS=';'

for sona in $text
do
    echo "$sona"
done
