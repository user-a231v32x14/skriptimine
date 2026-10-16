
#!/bin/bash

if [[ "$EUID" -ne 0 || -n "${SUDO_USER:-}" ]]; then
    echo "Viga: käivita skript otse root kasutajana."
    exit 1
fi

if [[ $# -ne 1 || ! -f "$1" || ! -r "$1" ]]; then
    echo "Kasutamine: ./kasutajad_failist FAILINIMI"
    exit 1
fi

skripti_kaust="$(cd -- "$(dirname -- "$0")" && pwd)"

while IFS= read -r kasutaja || [[ -n "$kasutaja" ]]; do
    [[ -z "$kasutaja" ]] && continue
    "$skripti_kaust/lisa_kasutaja" "$kasutaja" || \
        echo "Kasutaja $kasutaja loomine ebaõnnestus."
done < "$1"
