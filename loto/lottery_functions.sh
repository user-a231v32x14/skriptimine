#!/bin/bash

generate_numbers() {
    local i
    local number

    lottery_numbers=()

    while [[ ${#lottery_numbers[@]} -lt 5 ]]; do
        number=$(( RANDOM % 50 + 1 ))

        if [[ ! " ${lottery_numbers[*]} " =~ " ${number} " ]]; then
            lottery_numbers+=("$number")
        fi
    done
}

check_numbers() {
    local player_number="$1"
    local winning_number="$2"

    [[ "$player_number" == "$winning_number" ]]
}
