#!/bin/bash
# Ergänzt contrib, non-free und non-free-firmware in /etc/apt/sources.list mit Backup
set -e

#LIST="/etc/apt/sources.list"
JKFILE="/etc/apt/sources.list"
JKBACKUP="/etc/apt/sources.list.backup.$(date +%F-%H%M%S)"

echo ">>> Backup anlegen: $BACKUP"
cp "$JKFILE" "$JKBACKUP"

echo ">>> Quellen prüfen und fehlende Bereiche ergänzen..."
# contrib ergänzen, wenn fehlt
sed -i -E '/^[[:space:]]*deb / {/contrib/! s/(main)(.*)/\1 contrib\2/}' "$JKFILE"

# non-free ergänzen, wenn fehlt
sed -i -E '/^[[:space:]]*deb / {/non-free[^-]/! s/(contrib|main)(.*)/\1 non-free\2/}' "$JKFILE"

# non-free-firmware ergänzen, wenn fehlt
sed -i -E '/^[[:space:]]*deb / {/non-free-firmware/! s/(non-free)(.*)/\1 non-free-firmware\2/}' "$JKFILE"

echo ">>> Fertig! Backup liegt unter: $JKBACKUP"
echo ">>> Jetzt bitte ausführen: sudo apt update"
