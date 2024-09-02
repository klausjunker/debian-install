#!/bin/bash
#----------------------------------------------------------------------
JKVERSION="0.1.1  vom 2.9.2024"
JKMESSAGE="erstellt Grundinstallation für Debian 12"
# Dokumentation:                            ./.version/jkversionen.txt 
#----------------------------------------------------------------------
function jk_debian12_main() {
  jk_showversion
  # ./.debug/jkhilfe.txt 

  #jk_copy .default/console-setup /etc/default/ 
  #jk_copy .default/sources.list  /etc/apt/ 
  #aptitude update
  #aptitude upgrade
  #/etc/init.d/console-setup.sh restart
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

#-------------------------------------------------------
# Main main Main 
#-------------------------------------------------------
jk_debian12_main $@ # START
exit # ENDE
#-------------------------------------------------------
