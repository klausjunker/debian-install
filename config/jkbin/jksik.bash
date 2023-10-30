#!/bin/bash
JKDIR="."
#echo "debug: file: $JKDIR/$1"
if [ $# -eq 0 ]; then
  echo "Keine Parameter übergeben (inklusive \$1)."
  exit
fi

if [ ! -e "$JKDIR/$1" ]; then
  echo "JKERROR: Die Datei '$JKDIR/$1' existiert nicht."
  exit
fi
JKFILE=$JKDIR/$1
JKSIKORDNER="$HOME/jksik/$1"
if [ ! -d "$JKSIKORDNER" ]; then
  mkdir -p $JKSIKORDNER
fi
#ls -la $JKSIKORDNER
JKALLEO=$(find "$JKSIKORDNER" -type d -name "[0-9]*.[0-9]*.[0-9]*")
#echo "debug -- alle:\n $JKALLEO"
JKOA=$(echo "$JKALLEO" | sort -rV | head -n 1)
aktuelle_version=$(basename "$JKOA")
JKAV="$aktuelle_version"
#echo "debug aktuell : $JKOA : $JKAV !"
#echo "debug - aktuelle Ver.: $aktuelle_version"
#ls -la $JKOA/$1
if [ -z "$JKAV" ]; then
  JKON="$JKSIKORDNER/0.0.1"
  mkdir -p $JKON
  #echo "debug-0.0.1: $JKFILE : $JKON  !"
  cp $JKFILE $JKON/$1
  echo "erste Version 0.0.1"
  exit
fi

#if [ ! -e "$JKOA/$1" ]; then
#  echo "Die Datei '$1' existiert nicht."
#  exit
#fi
#echo "Die Datei '$1' existiert."
# Aufsplitten der aktuellen Version in Major, Minor und Patch
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
#mkdir -p "$JKSIKORDNER/$neue_version"
#echo "Neuer Versionsordner '$JKSIKORDNER/$neue_version' erstellt."
JKON="$JKSIKORDNER/$neue_version"
mkdir -p "$JKON"
cp $JKOA/$1 $JKON/
echo "Neu: '$JKON"
#ls -la $JKON
