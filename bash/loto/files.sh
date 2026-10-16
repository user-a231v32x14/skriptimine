#!/bin/bash

clear_files() {
    : > lottery_results.txt
}

save_result() {
    printf 'Mängija: %s | Numbrid: %s | Loositud: %s | Tabamusi: %s\n' \
        "$player_name" \
        "${player_numbers[*]}" \
        "${lottery_numbers[*]}" \
        "${#matches[@]}" >> lottery_results.txt
}
