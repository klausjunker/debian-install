#-------------------------------------------------------
/etc/init.d/console-setup.sh restart
Ansi Escape -> Farben: 
#-------------------------------------------------------
    echo -e "|\e[1;32m neu 0.7: \e[m"
    echo -e "\e[${jk_spalte}G(\e[1;32mok\e[m)"

31 rot
32 grün 
33 gelb


#----------------------------------------------------------------------
JKHOST="/etc/junker/jkhost.conf"
jk_configfile="/etc/junker/jkadduser.conf"
jk_spalte=$(( $(tput cols) - 5 ))
#-------------------------------------------------------
letzter Befehl:
if [ $? -eq 0 ]; then


  echo "database=$jk_user"  >> $jk_file


#-------------------------------------------------------
Variable
#-------------------------------------------------------
  local jk_user=$1
  local jk_homedir=$(getent passwd "$jk_user" | cut -d: -f6)


#-------------------------------------------------------
if wenn
#-------------------------------------------------------

  if [ $? -eq 0 ]; then
  if [ -n "$jk_schuljahr" ]; then
  if [ -z "$jk_pwcrypt" ]; then
  if [ ! -d "$jk_homebase" ]; then
  if ! getent group "$jk_klasse" > /dev/null 2>&1; then
  if id "$jk_user" &>/dev/null; then
  if id "$jk_user" &>/dev/null; then

#-------------------------------------------------------
read 
#-------------------------------------------------------
    read -p "ok -> press Enter  falsch -> strg+C" jk_none

#-------------------------------------------------------
function jk_sicher() {
    echo -n "     $@     "
    local rot="\e[1;31m";gruen="\e[1;32m";normal="\e[m"
    local jk_sure
    read -p "[y/N]: " jk_sure
    case "$jk_sure" in
      [yY])
            echo -e "${gruen}ja ${normal} --> weiter...";;
      *)
            echo -e "${rot}dann halt nicht!${normal}-> Abbruch"
            exit 1;; # Error = 1
    esac
}

#-------------------------------------------------------
function jk_showinfo() {
    echo "------------------------------------------------"
    echo -e "|\e[1;32m neu 0.1: \e[m"
    echo "------------------------------------------------"
#----------------------------------------------------------------------
function jk_init() {
    # Konfigurationsdatei einlesen
    #local jk_spalte=$(( $(tput cols) - 5 ))
    if [ -f $JKHOST ]; then
        echo -n "Datei \"$JKHOST\"  geladen!"
        echo -e "\e[${jk_spalte}G(\e[1;32mok\e[m)"
        source    $JKHOST 
    else
        echo -n "Datei \"$JKHOST\"  nicht gefunden!"
        echo -e "\e[${jk_spalte}G(\e[1;31mErr\e[m)"
        exit 1
    fi
    if [ -f $jk_configfile ]; then
        echo -n "Datei \"$jk_configfile\"  geladen!"
        echo -e "\e[${jk_spalte}G(\e[1;32mok\e[m)"
        source    $jk_configfile 
    else
        echo -n "Datei \"$jk_configfile\"  nicht gefunden!"
        echo -e "\e[${jk_spalte}G(\e[1;31mErr\e[m)"
        exit 1
    fi
}

#----------------------------------------------------------------------
function jk_debug() {
    echo "debug: $@";
}
#----------------------------------------------------------------------
function jk_debuginit(){
    # /ex/config/junker/jkadduser.conf 
    echo "     Schuljahr: $jk_schuljahr";
    echo "     Klasse   : $jk_klasse";
    # /etc/junker/jkhost.conf 
    echo "     Homebase : $jk_homebase"; 
    echo "------------------------------------------------"
}
#----------------------------------------------------------------------
function jk_showhelp() {
    echo "Verwendung: $0 [-h] [-f <dateiname>] [-n <zahl>] [-v]"
    echo ""
    echo "Optionen:"
    echo "  -h                Zeige diese Hilfe an"
    echo "  -s <schuljahr>    Gib einen Dateinamen an"
    echo "  -n <zahl>         Gib eine Zahl an"
    echo "  -v                Aktiviert den Verbatim-Modus"
    echo ""
}
#-------------------------------------------------------
function jk1test_optionen() {
    while getopts "hf:n:v" opt; do
        case ${opt} in
            h )
                show_help
                exit 0
                ;;
            f )
                filename=$OPTARG
                ;;
            n )
                number=$OPTARG
                ;;
            v )
                verbose=true
                ;;
            \? )
                echo "Ungültige Option: -$OPTARG" >&2
                show_help
                exit 1
                ;;
            : )
                echo "Option -$OPTARG erfordert ein Argument." >&2
                show_help
                exit 1
                ;;
        esac
    done
}

