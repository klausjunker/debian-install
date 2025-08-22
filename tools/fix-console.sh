#!/bin/bash
set -e

JKFILE="/etc/default/console-setup"
JKBACKUP="$JKFILE.backup.$(date +%F-%H%M%S)"
JKCOMMAND="systemctl restart console-setup"
JKFONTFACE="TerminusBold"
JKFONTSIZE="14x28"
echo "Backup liegt unter: $JKBACKUP"
sed -i -E "s/^[[:space:]]*FONTFACE=.*/FONTFACE=\"$JKFONTFACE\"/" "$JKFILE"
sed -i -E "s/^[[:space:]]*FONTSIZE=.*/FONTSIZE=\"$JKFONTSIZE\"/" "$JKFILE"
eval $JKCOMMAND
