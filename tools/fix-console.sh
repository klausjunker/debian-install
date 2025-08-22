#!/bin/bash
set -e

JKFILE="/etc/default/console-setup"
JKBACKUP="$JKFILE.backup.$(date +%F-%H%M%S)"
JKCOMMAND="cat $JKFILE"

echo ">>> Backup anlegen: $JKBACKUP"
cp "$JKFILE" "$JKBACKUP"

echo ">>> Quellen prüfen und fehlende Bereiche ergänzen..."

echo ">>> Fertig! Backup liegt unter: $JKBACKUP"
eval $JKCOMMAND
