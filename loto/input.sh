#!/bin/bash

show_header() {
    echo "======================"
    echo "      LOTO MÄNG"
    echo "======================"
}

read_player() {
    read -r -p "Sisesta oma nimi: " player_name

    if [[ -z "$player_name" ]]; then
        echo "Nimi ei tohi olla tühi!"
        return 1
    fi
}

read_player_numbers() {
    local i
    player_numbers=()

    echo "Sisesta 5 lotonumbrit vahemikus 1-50."

    for ((i = 0; i < 5; i++)); do
        while true; do
            read -r -p "Arv $((i + 1)): " number

            if [[ "$number" =~ ^[0-9]+$ ]] &&
               (( number >= 1 && number <= 50 )); then
                if [[ ! " ${player_numbers[*]} " =~ " ${number} " ]]; then
                    player_numbers+=("$number")
                    break
                fi
            fi

            echo "Vigane või korduv arv. Proovi uuesti."
        done
    done
}

show_player_numbers() {
    echo "Sinu numbrid: ${player_numbers[*]}"
}
