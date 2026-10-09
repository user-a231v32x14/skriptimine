#!/bin/bash

DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

source "$DIR/input.sh"
source "$DIR/lottery_functions.sh"
source "$DIR/results.sh"
source "$DIR/files.sh"

main() {
    ask_name || return 1
    generate_numbers
    show_result
}

main
