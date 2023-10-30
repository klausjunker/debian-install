#/bin/bash
JKVERSION="1.0.1" #30.10.2023
if [ $# -eq 0 ]; then
  echo "ver: $JKVERSION -- $0 Filename"
  exit
fi
JKTYP="${1##*.}"
if [ "$JKTYP" = "$1" ]; then
  JKTYP="none"
fi
#if [[ -n "$2" ]]; then 
#  JKTYP="$2"; 
#fi
BAKDIR="$HOME/jkbak/$JKTYP/`date +%Y-%m-%d`/`date +%H.%M.%Suhr`"
mkdir -p  $BAKDIR
cp $1 $BAKDIR/$1 
echo "jkbak ver: $JKVERSION --- $1 nach: $BAKDIR bak-Datei: $1 Typ: $JKTYP"
echo "$2"
