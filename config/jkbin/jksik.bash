#!/bin/bash
JKVERSION="0.5.6" # 30.10.2023
if [ $# -eq 0 ]; then
  echo "ver: $JKVERSION -- $0 Filename [M|m| ]"
  exit
fi
if [ ! -e "$1" ]; then
  echo "JKERROR: Die Datei '$1' existiert nicht."
  exit
fi
JKFILE=$(basename $1)
JKSIKORDNER="$HOME/jksik/$JKFILE"
if [ ! -d "$JKSIKORDNER" ]; then
  mkdir -p $JKSIKORDNER
fi
      #echo "$JKSIKORDNER "
JKALLEO=$(find "$JKSIKORDNER" -type d -name "[0-9]*.[0-9]*.[0-9]*")
      #echo "debug -- alle:\n $JKALLEO"
JKOA=$(echo "$JKALLEO" | sort -rV | head -n 1)
aktuelle_version=$(basename "$JKOA")
JKAV="$aktuelle_version"
#-------------------------------- erste Version
if [ -z "$JKAV" ]; then
  JKORDNERNEU="$JKSIKORDNER/0.0.1"
  mkdir -p $JKORDNERNEU
  cp $1  $JKORDNERNEU/$JKFILE
  echo "erste Version 0.0.1"
  exit
fi
#-------------------------------- neue Version
# Aufsplitten in Major, Minor und Patch
IFS='.' read -ra version_teile <<< "$aktuelle_version"
major="${version_teile[0]}"
minor="${version_teile[1]}"
patch="${version_teile[2]}"
case "$2" in
      M|maj*|MAJ*) ((major++));;
      m|min*|MIN*) ((minor++));;
      p|pat*|PAT*) ((patch++));;
      *)           ((patch++));;  # kein Parameter
esac
neue_version="${major}.${minor}.${patch}"
      #echo "Neue Version: $neue_version"

# Erstellen des neuen Versionsordners
JKORDNERNEU="$JKSIKORDNER/$neue_version"
mkdir -p "$JKORDNERNEU"
echo "debug: '$JKORDNERNEU : $JKAV"
cp $1 $JKORDNERNEU/
echo "neu:"
ls -la $JKORDNERNEU
echo "Neu: '$JKORDNERNEU"
