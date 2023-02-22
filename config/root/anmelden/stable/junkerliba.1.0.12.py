from getpass import getpass
from os import system
from os import listdir
from crypt import crypt
import pickle 
import time
from base64 import b64decode
from base64 import b64encode
#from subprocess import Popen
#from subprocess import PIPE
import subprocess 
#------------------------------------------------------------------
def jkversion(jkstring):
    system("clear")
    first_dot_position = jkstring.find('.')
    last_dot_position = jkstring.rfind('.')
    filtered_string = jkstring[first_dot_position+1:last_dot_position]
    print("Version: " , filtered_string)
#------------------------------------------------------------------
def jkinfo():
    print("Anmelden am Server 10.1.254.101\n")
    print("Bei der Eingabe sind Umlaute erlaubt\n")
    print("Großbuchstaben werden automatisch zu Kleinbuchstaben")
    print("mit Ausnahme des Passworts !!")
#------------------------------------------------------------------
def jkpw64encode(passwort):
    return b64encode(str.encode(passwort)).decode()
#------------------------------------------------------------------
def jkpw64decode(pw64):
	return b64decode(pw64).decode()
#------------------------------------------------------------------
def jknochmal(fehlermeldung):
        print("Anmeldung bitte wiederholen!")
        print("Cursor-Taste nach oben -> letzter Befehl wird angezeigt")
        exit("jkerrror- passwort war falsch!!")
#------------------------------------------------------------------
def jkpwkontrolle(datensatz):
    passwort = getpass(prompt='Kontrolle:\nPasswort (wiederholen): ')  
    pw64back=jkpw64decode(datensatz["pw64"])
    if pw64back != passwort:
        jknochmal("ERROR - falsches Passwort")
#------------------------------------------------------------------
def jkkontrolle(datensatz):
    print("Kontrolle:")
    for key in datensatz:
        print(key , ": " , datensatz[key],"!",sep="")
    print("-"*33)
    jkok="j"
    print("Ist das ok?")
    jkok=input("ja:  bitte j oder J eingeben: ")
    if jkok != "j" and jkok != "J":
        jknochmal("hier war also ein Fehler")
    print ("Es war alles ok")
#------------------------------------------------------------------
def jkanmeldenalsgast(jkdir):
    datensatz={}
    print("Anmelden am Server 10.1.254.101\n")
    print("Bei der Eingabe sind Umlaute erlaubt\n")
    print("Großbuchstaben werden automatisch zu Kleinbuchstaben")
    print("mit Ausnahme des Passworts !!")
    #datensatz=jkeingabe(datensatz)
    for i in ['vorname','nachname','benutzername']:
        datensatz[i]=input(i+": ").lower()
    jkkontrolle(datensatz)
    print("Jetzt nur noch das Passwort eingeben!")
    print("Achtung: Beim Eingeben eines Passwortes wird NICHTS angezeigt!!")
    passwort = getpass(prompt='Passwort (für alle Systeme gleich): ')  
    pw64=jkpw64encode(passwort)
    datensatz["pw64"]=pw64
    jkpwkontrolle(datensatz)
    #jkschreibedatensatz
    file=jkdir+datensatz["benutzername"]+'.pkl'
    with open (file, 'wb') as temp:
        pickle.dump(datensatz, temp)
    system("clear")
    print("Ende der Anmeldung  -  alles ok")
    print("ausloggen mit exit <enter>")
    print("unter windows: firefox öffnen und '10.1.254.101/~deinbenutzername' eingeben")
    print("es erscheint Not Found, weil der Benutzer noch nicht angelegt ist")
    print("warten -- und die Funktionstaste F5 drücken -> dies aktualisiert den Browser!")
    print("Sobald 'Hallo Welt!' erscheint -> mit putty und eigenem  Benutzername neu anmelden")

#-------------------------------------------------------
# als root
#-------------------------------------------------------

def jkchangealle(jkdir1,jkdir2):
    """     
    fuegt das passwort in klartext und das passwort verschlüsselt hinzu
    eingabe: jkdir1/*.pkl
    ausgabe: jkdir2/*.csv
    """ 
    dateien  = listdir(jkdir1)
    for d in dateien: 
        jkfile1=jkdir1+"/"+d
        with open (jkfile1, 'rb') as temp:
            datensatz = pickle.load(temp)
        pw64=datensatz["pw64"]
        datensatz["pw"]=b64decode(pw64).decode()
        datensatz["pwenc"]=crypt(datensatz["pw"],"22")
        jkcsvfile=jkdir2+"/"+datensatz["benutzername"]+'.csv'
        print("neue datei: ", jkcsvfile)
        jkstring = '\t'.join([f'{k}:{v}' for k, v in datensatz.items()])
        with open(jkcsvfile, 'w') as f:
            f.write(jkstring)


#------------------------------------------------------------------
#linux user anlegen
#------------------------------------------------------------------
def jkalleanlegen(jkdir,sj="2223",klasse="bk1"):
    dateien  = listdir(jkdir)
    print("benutzer werden angelegt ....\n","-"*55,sep="")
    #i=0
    for d in dateien: 
        #i+=1
        jkfile=jkdir+"/"+d
        with open(jkfile, 'r') as f:
            dict_string = f.read()
        datensatz = {}
        for line in dict_string.split('\t'):
            if line:
                k, v = line.split(':')
                datensatz[k] = v
        jkuser=datensatz["benutzername"]
        jkpw=datensatz["pw"]
        jkvn=datensatz["vorname"]
        jknn=datensatz["nachname"]
        jkencpw=datensatz["pwenc"]
        #print(f"debug: linuxuser: {i:>2}",": ", jkuser , " wird angelegt")
        jkadduser(jkuser,jkpw,sj,klasse,jkvn,jknn)
        system('echo -n "debug:";cat /etc/passwd|grep '+jkuser+":")
#------------------------------------------------------------------
#linux user  löschen
#------------------------------------------------------------------
def jkuserdelall(jkdir):
    dateien  = listdir(jkdir)
    print("benutzer werden gelöscht ....\n","-"*55,sep="")
    for d in dateien: 
        jkfile=jkdir+"/"+d
        with open(jkfile, 'r') as f:
            dict_string = f.read()
        datensatz = {}
        for line in dict_string.split('\t'):
            if line:
                k, v = line.split(':')
                datensatz[k] = v
        jkuser=datensatz["benutzername"]
        jkuserdel(jkuser)
#------------------------------------------------------------------
def jkuserdel(benutzer):
    system ("smbpasswd -x  " +benutzer )
    system ("userdel -r  " +benutzer )
#------------------------------------------------------------------
def jkaddsambauser(name, pw):
    system("echo -n 'samba: ';"+"(echo " +pw+"; echo " +pw+") | smbpasswd -s -a " +name)
#------------------------------------------------------------------
def jkadduser(jkuser,jkpw,sj="2223",klasse="k",jkvn="vn",jknn="nn"):
    #/etc/adduser.conf: DHOME: .... statt homedir
    jkhomedir="/home/"+sj+"/"+klasse+"/"+jkuser
    jklogfile="/home/temp/log/jkanmelden.log"
    system("date >>" + jklogfile)
    jkgecos=sj+","+klasse+","+jkvn+","+jknn
    ergadd=system("adduser --home "+jkhomedir+" --gecos '" +jkgecos+"' --disabled-password "+jkuser+">>" +jklogfile)
    if ergadd==0: print("py-adduser: ", jkuser , "hinzugefügt")
    encpw=crypt(jkpw,"22")
    system("usermod --password " + encpw + " " + jkuser)
    jkaddsambauser(jkuser,jkpw)
    jkaddhtml(jkvn,jknn,jkhomedir)

#------------------------------------------------------------------
def jkaddhtml(jkvn,jknn,jkhomedir):
    jkliste=[]
    jkliste.append(jkhomedir+"/public_html/index.html")
    jkliste.append(jkhomedir+"/public_html/work/hallowelt.html")
    jkvn=jkvn.capitalize()
    jknn=jknn.capitalize()
    for jkfile in jkliste:
        with open(jkfile, "r") as file:
            lines = file.readlines()
            lines.insert(9, jkvn +" "+jknn +"\n")
        with open(jkfile, "w") as file:
            file.writelines(lines)




