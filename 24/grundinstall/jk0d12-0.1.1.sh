#!/bin/bash
#----------------------------------------------------------------------
JKVERSION="0.1.1  vom 2.9.2024"
JKMESSAGE="erstellt Grundinstallation für Debian 12"
# Dokumentation:                            ./.version/jkversionen.txt 
#----------------------------------------------------------------------
function jk_debian12_main() {
  jk_showversion
  # ./.debug/jkhilfe.txt 

  jk_0_console-setup
  jk_1_aptitude-update
  jk_2_aptitude-grundinstall .pakete/apt.grund.txt
  jk_2_aptitude-grundinstall .pakete/apt.wlan.txt
  jk_2_aptitude-grundinstall .pakete/apt.x.txt
  jk_2_aptitude-grundinstall .pakete/apt.mathe.txt
  jk_2_aptitude-grundinstall .pakete/apt.sql.txt
}
#----------------------------------------------------------------------
function jk_debugparameter() {
  echo "       ---debug: Die Funktion ${FUNCNAME[0]} startet"
  echo "                 Anzahl Parameter:          $#"
  echo "                 Parameter als ein Sring:   $*"
  echo "                 mit folgenden Parametern:  $@"
  echo "                 Reihenfolge                $3 -$2 - $1 " 
  echo "                 ${FUNCNAME[1]} - ${FUNCNAME[2]} - ${FUNCNAME[3]}"
  echo "                 Shell-programm:        $0 "
  return 0
}
#----------------------------------------------------------------------
function jk_showversion() {
    #echo "$0 --- Version: $JKVERSION";
    echo -n "$0 --- Version:";
    echo -e "\e[1;32m $JKVERSION\e[m"
    echo "       $JKMESSAGE";
}
#----------------------------------------------------------------------
function jk_copy() {
  echo "       ---debug: Die Funktion ${FUNCNAME[0]} startet"
  echo "                 copy  $1  nach $2" 
  cp  $1 $2 
  return 0
}
#----------------------------------------------------------------------
function jk_0_console-setup() {
  echo "       ---debug: Die Funktion ${FUNCNAME[0]} startet"
  # kj hier kommentar entfernen
  #jk_copy .default/console-setup /etc/default/ 
  #/etc/init.d/console-setup.sh restart
}
#----------------------------------------------------------------------
function jk_1_aptitude-update() {
  echo "       ---debug: Die Funktion ${FUNCNAME[0]} startet"
  # kj hier kommentar entfernen
  #jk_copy .default/sources.list  /etc/apt/ 
  #aptitude update
  #aptitude upgrade
}
#----------------------------------------------------------------------
function jk_2_aptitude-grundinstall() {
  echo "       ---debug: Die Funktion ${FUNCNAME[0]} startet"
  local DATEI="$1"
  local FLAG="$2"
  # Überprüfen, ob die Textdatei existiert
  if [ ! -f "$DATEI" ]; then
    echo "Die Datei $DATEI existiert nicht."
    exit 1
  fi
  while IFS= read -r line; do
    # Zeile mit sed bearbeiten: 
    # 1. Entfernen von Kommentaren (alles nach einem #)
    # 2. Entfernen von führenden und nachfolgenden Leerzeichen
    paket=$(echo "$line" | sed 's/#.*//' | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')
    if [ -n "$paket" ]; then
        echo -e "           --- Paket: \e[1;33m $paket\e[m"
        #if [[ "$FLAG" =~ ^-[yY]es$ ]]; then
        #     echo "aptitude install -y $paket"
        #fi
        # kj hier kommentar entfernen
        #aptitude install -y $paket
    fi
  done < "$DATEI"




}

#-------------------------------------------------------
# Main main Main 
#-------------------------------------------------------
jk_debian12_main $@ # START
exit # ENDE
#-------------------------------------------------------

#-------------------------------------------------------
# Main main Main 
#-------------------------------------------------------
jk_debian12_main $@ # START
exit # ENDE
#-------------------------------------------------------
