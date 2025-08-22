#!/bin/bash
# Ergänzt contrib, non-free und non-free-firmware in /etc/apt/sources.list mit Backup
set -e

JKFILE="/etc/apt/sources.list"
JKBACKUP="$JKFILE.backup.$(date +%F-%H%M%S)"
JKCOMMAND="apt-get update"

cp "$JKFILE" "$JKBACKUP"
# -----------------------------------------------------------------------------
# non-free-firmware ergänzen, wenn es fehlt
sed -i -E '/^[[:space:]]*deb / {/non-free-firmware/! s/(main)(.*)/\1 non-free-firmware\2/ }' "$JKFILE"
sed -i -E '/^[[:space:]]*deb-src / {/non-free-firmware/! s/(main)(.*)/\1 non-free-firmware\2/ }' "$JKFILE"
# -----------------------------------------------------------------------------
# non-free ergänzen, wenn es fehlt
sed -i -E '/^[[:space:]]*deb / { /non-free /! s/(main)(.*)/\1 non-free\2/ }' "$JKFILE"
sed -i -E '/^[[:space:]]*deb-src / { /non-free /! s/(main)(.*)/\1 non-free\2/ }' "$JKFILE"
# -----------------------------------------------------------------------------
# contrib ergänzen, wenn es fehlt
sed -i -E '/^[[:space:]]*deb / { /contrib/! s/(main)(.*)/\1 contrib\2/ }' "$JKFILE"
sed -i -E '/^[[:space:]]*deb-src / { /contrib/! s/(main)(.*)/\1 contrib\2/ }' "$JKFILE"
# -----------------------------------------------------------------------------
echo "Backup liegt unter: $JKBACKUP"
eval $JKCOMMAND

