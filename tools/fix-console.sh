#!/bin/bash
clear
set -e

JKFILE="/etc/default/console-setup"
JKBACKUP="$JKFILE.backup.$(date +%F-%H%M%S)"
JKCOMMAND="cat $JKFILE"
JkFONTFACE="TerminusBold"
JKFONTSIZE="14x28"

echo ">>> Backup anlegen: $JKBACKUP"
cp "$JKFILE" "$JKBACKUP"

echo ">>> Fertig! Backup liegt unter: $JKBACKUP"
echo
echo "alt:"
eval $JKCOMMAND
echo ">>> Quellen prüfen und fehlende Bereiche ergänzen..."
sed -i -E '/^[[:space:]]*FONTFACE(.*)/\1 $JKFONTFACE' "$JKFILE"
sed -i -E '/^[[:space:]]*FONTFACE(.*)/\1 $JKFONTFACE' "$JKFILE"

echo "neu:"
eval $JKCOMMAND
