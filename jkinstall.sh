#-----------------------------------------------------------------------------
#!/bin/bash
# Version 2
#-----------------------------------------------------------------------------
#
# Pakete werden nach CSV-Datei gruppiert, jede Datei = Paketgruppe
# Whiptail zeigt die Gruppen an, eleganter und übersichtlicher
# Leicht erweiterbar, neue CSV = neue Gruppe automatisch
# Übersichtliche Menüeinträge pro Gruppe
#
#-----------------------------------------------------------------------------
set -e		# Sicherstellen, dass das Skript bei Fehlern abbricht
#-----------------------------------------------------------------------------

declare -A gruppen_pakete  # Key: Dateiname, Value: Paketliste (String)
shopt -s nullglob

csv_files=( *.csv )
if [ ${#csv_files[@]} -eq 0 ]; then  # Prüfen, ob CSV-Dateien vorhanden sind
    echo "Keine CSV-Dateien vorhanden."
    exit 1
fi
readarray -t sorted_csv < <(printf '%s\n' *.csv | sort)
for f in "${sorted_csv[@]}"; do
    echo "'$f'"
    pakete=()
    while IFS= read -r line; do
    	line="${line%%#*}"
	line="$(printf '%s' "$line" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')"
    	[[ -z "$line" ]] && continue
    	[[ "$line" =~ ^[[:space:]]*# ]] && continue
	parts=("$line")
	pakete+=( "${parts[@]}" )
    done < "$f"

    if [[ ${#pakete[@]} -gt 0 ]]; then
    	gruppen_pakete["$f"]="${pakete[*]}"
    fi
done

#----------------------------------------------------------------------------
# Menüeinträge für whiptail (je Gruppe = 1 Eintrag)
options=()
#for datei in "${!gruppen_pakete[@]}"; do
for datei in $(printf '%s\n' "${!gruppen_pakete[@]}" | sort); do
  eintrag="${gruppen_pakete[$datei]}"
  # Kürzen auf max. 50 Zeichen, "..." anhängen, falls abgeschnitten
  if [ ${#eintrag} -gt 50 ]; then
    eintrag="${eintrag:0:47} ... "
  fi
  options+=("$datei" "$eintrag" ON)
done

# Temporäre Datei für Auswahl
tempfile=$(mktemp)

if whiptail --title "jk: Paketgruppen-Auswahl" \
  --checklist "Wähle die Paketgruppen aus, die installiert werden sollen:" \
  20 78 15 \
  "${options[@]}" 2> "$tempfile"; then

  selected_groups=$(<"$tempfile")
  rm "$tempfile"

  if [ -z "$selected_groups" ]; then
    echo "Keine Gruppen ausgewählt."
    exit 0
  fi

  echo "Folgende Gruppen wurden gewählt:"
  echo "$selected_groups"

  # Anführungszeichen entfernen, Pakete zusammenführen
  selected_pakete=()
  for gruppe in $selected_groups; do
    gruppe="${gruppe//\"}"
    pakete_string="${gruppen_pakete[$gruppe]}"
    read -ra pakete <<< "$pakete_string"
    selected_pakete+=( "${pakete[@]}" )
  done

  echo "-----------------------------------------------------------------------"
  echo "Diese Pakete werden installiert:"
  printf '→ %s\n' "${selected_pakete[@]}"
  echo "-----------------------------------------------------------------------"

  # Pakete installieren
  apt-get install -y "${selected_pakete[@]}"
else
  echo "Abgebrochen vom Benutzer."
  rm "$tempfile"
  exit 1
fi

