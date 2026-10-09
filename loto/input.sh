#!/bin/bash

ask_name() {
    local name

    read -r -p "Sisesta oma nimi: " name

    if [[ -z "$name" ]]; then
        echo "Nimi ei tohi olla tühi!"
        return 1
    fi

    player_name="$name"
    return 0
}
