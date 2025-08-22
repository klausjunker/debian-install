#!/bin/bash
# Ergänzt contrib, non-free und non-free-firmware in /etc/apt/sources.list mit Backup
set -e

JKFILE="/etc/apt/sources.list"
JKBACKUP="$JKFILE.backup.$(date +%F-%H%M%S)"
JKCOMMAND="cat $JKFILE"

echo ">>> Backup anlegen: $JKBACKUP"
cp "$JKFILE" "$JKBACKUP"

# -----------------------------------------------------------------------------
        echo ">>> Quellen prüfen und fehlende Bereiche ergänzen..."
# -----------------------------------------------------------------------------

# non-free-firmware ergänzen, wenn fehlt
sed -i -E '/^[[:space:]]*deb / {/non-free-firmware/! s/(non-free)(.*)/\1 non-free-firmware\2/}' "$JKFILE"
sed -i -E '/^[[:space:]]*deb-src / {/non-free-firmware/! s/(non-free)(.*)/\1 non-free-firmware\2/}' "$JKFILE"



# non-free ergänzen, wenn fehlt
sed -i -E '/^[[:space:]]*deb / { /non-free/! s/(main|contrib)/\1 contrib non-free/ }' "$JKFILE"
sed -i -E '/^[[:space:]]*deb-src / { /non-free/! s/(main|contrib)/\1 contrib non-free/ }' "$JKFILE"

# contrib ergänzen, wenn fehlt
sed -i -E '/^[[:space:]]*deb / {/contrib/! s/(main)(.*)/\1 contrib\2/}' "$JKFILE"
sed -i -E '/^[[:space:]]*deb-src / {/contrib/! s/(main)(.*)/\1 contrib\2/}' "$JKFILE"

# -----------------------------------------------------------------------------

echo ">>> Fertig! Backup liegt unter: $JKBACKUP"
eval $JKCOMMAND

