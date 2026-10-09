#!/bin/bash

generate_lottery_numbers() {
    local number
    lottery_numbers=()

    while (( ${#lottery_numbers[@]} < 5 )); do
        number=$((RANDOM % 50 + 1))

        if [[ ! " ${lottery_numbers[*]} " =~ " ${number} " ]]; then
            lottery_numbers+=("$number")
        fi
    done
}

show_lottery_numbers() {
    echo "Loositud numbrid: ${lottery_numbers[*]}"
}

check_matches() {
    local player_number
    local lottery_number

    matches=()

    for player_number in "${player_numbers[@]}"; do
        for lottery_number in "${lottery_numbers[@]}"; do
            if [[ "$player_number" == "$lottery_number" ]]; then
                matches+=("$player_number")
                break
            fi
        done
    done
}
