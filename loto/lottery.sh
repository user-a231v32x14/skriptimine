#!/bin/bash

DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

source "$DIR/input.sh"
source "$DIR/lottery_functions.sh"
source "$DIR/results.sh"
source "$DIR/files.sh"

main() {
    show_header
    clear_files
    read_player
    read_player_numbers
    show_player_numbers
    generate_lottery_numbers
    show_lottery_numbers
    check_matches
    show_result
    save_result
}

main
