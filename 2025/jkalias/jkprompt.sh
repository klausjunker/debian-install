echo "$PS1"
#Bash-Prompt root - rot!!! 
PS1='${debian_chroot:+($debian_chroot)}'
PS1=$PS1'\[\e[1;31m\]\u'
PS1=$PS1'\[\e[1;36m\]@\h:'
PS1=$PS1'\[\e[1;33m\]\w'
PS1=$PS1'\[\e[1;31m\]\$ '
PS1=$PS1'\[\e[s\]'
#PS1=$PS1'\[\e[1;$((${COLUMNS}-9))H\e[1;33m\A Uhr\]'
#PS1=$PS1'\[\e[2;$((${COLUMNS}-4))H\e[1;33m\l\]'
PS1=$PS1'\[\e[u\e[m\]'
setterm blength 0
#
echo "$PS1i"
echo "&root/.local/jkprompt.sh gestartet"
