#!/usr/bin/env bash

BASE_DIR="$(cd "$(dirname "$0")/.." && pwd)"
source "$BASE_DIR/config/settings.conf"

DATE=$(date '+%Y%m%d_%H%M%S')
ARCHIVE="$BACKUP_DIR/backup_$DATE.tar.gz"

mkdir -p "$BACKUP_DIR"

echo "Varukoopia loomine..."

if tar -czf "$ARCHIVE" -C "$BACKUP_SOURCE" .; then
    echo "Varukoopia valmis: $ARCHIVE"
    echo "Failide arv: $(tar -tzf "$ARCHIVE" | wc -l)"
    exit 0
else
    echo "Varukoopia ebaõnnestus."
    rm -f "$ARCHIVE"
    exit 1
fi
