#!/bin/bash

show_result() {
    echo
    echo "Mängija: $player_name"
    echo "Õigeid numbreid: ${#matches[@]}"

    if (( ${#matches[@]} > 0 )); then
        echo "Kokkulangevad numbrid: ${matches[*]}"
    else
        echo "Ühtegi numbrit ei läinud täppi."
    fi
}
