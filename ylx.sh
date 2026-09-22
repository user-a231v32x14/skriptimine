#!/bin/bash
# Elroni rongiinfo kuvamine kasutaja valitud marsruudi kohta.

# Värvid
PUNANE="\033[31m"
ROHELINE="\033[32m"
RESET="\033[0m"

echo "ELRONI RONGIINFO"
echo ""
echo "Vali marsruut:"
echo ""
echo "1 - Tartu -> Tallinn"
echo "2 - Tartu -> Valga"
echo "3 - Tartu -> Koidula"
echo ""
echo "Sisesta valik:"
read valik

# Kontrollime, kas valik on sisestatud
if [[ -z "$valik" ]]
then
    echo "Valik jäi sisestamata."
    exit 1
fi

# Marsruudi määramine
case $valik in
    1)
        laht="Tartu"
        siht="Tallinn"
        ;;
    2)
        laht="Tartu"
        siht="Valga"
        ;;
    3)
        laht="Tartu"
        siht="Koidula"
        ;;
    *)
        echo "Vigane valik."
        exit 1
        ;;
esac

# Elroni API päring
api=$(curl -s "https://elron.ee/live-map/stop/$laht")

# Kontrollime API päringu õnnestumist
if [[ $? -ne 0 ]]
then
    echo "Elroni API päring ebaõnnestus."
    exit 1
fi

# Leiame valitud sihtjaama rongid
rongid=$(echo "$api" | grep -o '{[^}]*"sihtjaam":"'"$siht"'[^}]*}')

# Kontrollime, kas sobivaid ronge leiti
if [[ -z "$rongid" ]]
then
    echo "Sobivaid ronge ei leitud."
    exit 1
fi

# Leiame rongide plaanilised väljumisajad
ajad=$(echo "$rongid" | grep -o '"plaaniline_aeg":"[0-9:]*"' | cut -d'"' -f4)

# Kontrollime, kas kellaaegu leiti
if [[ -z "$ajad" ]]
then
    echo "Sobivaid väljumisaegu ei leitud."
    exit 1
fi

# Võtame neli esimest väljumisaega
aeg1=$(echo "$ajad" | sed -n '1p')
aeg2=$(echo "$ajad" | sed -n '2p')
aeg3=$(echo "$ajad" | sed -n '3p')
aeg4=$(echo "$ajad" | sed -n '4p')

# Praegune kellaaeg
praegu=$(date +"%H:%M")

echo ""
echo "$laht -> $siht"
echo "Praegune kellaaeg: $praegu"
echo ""
echo "Väljumised:"
echo ""

# Esimene rong
if [[ -n "$aeg1" ]]
then
    if [[ "$aeg1" < "$praegu" ]]
    then
        echo -e "${PUNANE}$aeg1  rong on juba väljunud${RESET}"
    else
        echo -e "${ROHELINE}$aeg1  rong on veel ees${RESET}"
    fi
fi

# Teine rong
if [[ -n "$aeg2" ]]
then
    if [[ "$aeg2" < "$praegu" ]]
    then
        echo -e "${PUNANE}$aeg2  rong on juba väljunud${RESET}"
    else
        echo -e "${ROHELINE}$aeg2  rong on veel ees${RESET}"
    fi
fi

# Kolmas rong
if [[ -n "$aeg3" ]]
then
    if [[ "$aeg3" < "$praegu" ]]
    then
        echo -e "${PUNANE}$aeg3  rong on juba väljunud${RESET}"
    else
        echo -e "${ROHELINE}$aeg3  rong on veel ees${RESET}"
    fi
fi

# Neljas rong
if [[ -n "$aeg4" ]]
then
    if [[ "$aeg4" < "$praegu" ]]
    then
        echo -e "${PUNANE}$aeg4  rong on juba väljunud${RESET}"
    else
        echo -e "${ROHELINE}$aeg4  rong on veel ees${RESET}"
    fi
fi
