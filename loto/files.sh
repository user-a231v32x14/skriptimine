save_result() {
    local filename="$1"
    local result="$2"

    if ! printf '%s\n' "$result" >> "$filename"; then
        echo "Tulemuse salvestamine ebaõnnestus!" >&2
        return 1
    fi

    return 0
}
