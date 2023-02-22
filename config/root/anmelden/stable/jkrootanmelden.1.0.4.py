from junkerliba import jkversion
#from junkerliba import jkchangealle
from crypt import crypt
from os import listdir
from os import system
import pickle
import base64
#------------------------------------------------------------------
def jkchangedatensatz(datensatz):
    pw64=datensatz["pw64"]
    pw=base64.b64decode(pw64).decode()
    datensatz["pw"]=pw
    pwenc=jkcrypt(pw)
    datensatz["pwenc"]=pwenc
    return datensatz
#------------------------------------------------------------------
def jklesedatensatz(file):
    """ liest einen Datensatz aus einem  pkl-File"""
    with open (file, 'rb') as temp:
        datensatz = pickle.load(temp)
    return datensatz
#------------------------------------------------------------------
def jkchangealle(dir1,dir2):
    """     fuegt das passwort in klartext 
            und das passwort verschlüsselt hinzu
            eingabe: Verzeichnis von (mehreren) Dateien.pkl
            ausgabe: Verzeichnis von (mehreren) Dateien.txt
    """ 
    dateien  = listdir(dir1)
#    print("debug: " , dateien)
#    i=0
    for d in dateien: 
#       i+=1
#       print("change alte datei: ", i, ":" , d)
        file=dir1+"/"+d
        datensatz=jklesedatensatz(file)
        datensatz=jkchangedatensatz(datensatz)
        jkschreibetxtdatensatz(datensatz,dir2)
#        print("*"*33)
#------------------------------------------------------------------
#def jkprintalle(dir):
#    jklesealle(dir)
#------------------------------------------------------------------
def jklesealle(dir):
    dateien  = listdir(dir)
    i=0
    print("debug:\n ","-"*44)
    for d in dateien: 
        i+=1
        file=dir+"/"+d
        datensatz=jklesedatensatz(file)
        print(i, ":" , d," : " , end="")
        print(datensatz)
#        print("-"*44)
#------------------------------------------------------------------
def jkschreibetxtdatensatz(datensatz,dir):
    """ schreibt einen datensatz in ein txt-File"""
    txtfile=dir+"/"+datensatz["benutzername"]+'.txt'
    print("neue datei: ", txtfile)
    #with open (file, 'wb') as temp:
    #    pickle.dump(datensatz, temp)
    datensatzstring = '\t'.join([f'{k}:{v}' for k, v in datensatz.items()])
    with open(txtfile, 'w') as f:
        f.write(datensatzstring)
#------------------------------------------------------------------
def jkgetattribute():
    str="schuljahr char(5), klasse char(10),"
    jkdict=jkspalten()
    for i,j in jkdict.items():
        str+=i+" "+j+"," 
    str+="passwort char(20)" 
    return str

#------------------------------------------------------------------
"""
def jkadduser(benutzer, pw):
    print("sudo adduser ...")
    system("sudo adduser --gecos '1,2,3,4' --disabled-password " + benutzer)
    encpass=jkcrypt(pw)
    system("sudo usermod --password " + encpass + " " + benutzer)
    print("user angelegt !! ")
        
#------------------------------------------------------------------
def jkuseradd(benutzer, pw):
    encpass=jkcrypt(pw)
    system("sudo useradd " + benutzer + " -p " + encpass)

#------------------------------------------------------------------
def jkcatetcpasswd(benutzer):   
    print("DEBUG: \nBenutzer: ", benutzer , " vorhanden?")
    system ("cat /etc/passwd |grep " + benutzer )
"""
#------------------------------------------------------------------
def jkcrypt(passwort):
    return crypt(passwort,"22") 
#------------------------------------------------------------------
def jkpw64decode(pw64):
    return base64.b64decode(pw64).decode()
#------------------------------------------------------------------
def jkpw64encode(passwort):
    return base64.b64encode(str.encode(passwort)).decode()

#------------------------------------------------------------------
def jkanlegen(user,pw):
    print("adduser - linux und mysql")
    #print("jetzt aber noch nicht ")
    jkadduser(user, pw)
    print("debug:")
    jkcatetcpasswd(user)
    input("press enter")
    jkmysqladd(user, pw)
#------------------------------------------------------------------
def jkalleanlegen(dir):
    dateien  = listdir(dir)
    i=0
    for d in dateien: 
        i+=1
        file=dir+"/"+d
        datensatz=jklesedatensatz(file)
        print("-"*44)
        print(i, ":" , d)
        print(datensatz)
        print("wird angelegt... ")
        user=datensatz["winuser"]
        pw=datensatz["pw"]
        print(user , "wird angelegt- pw: ",pw) 
        jkanlegen(user,pw)
        print("-"*44)
#------------------------------------------------------------------
# main
#------------------------------------------------------------------
if __name__ == "__main__":
    jkversion(__file__)
    jkdir1="/home/temp/rooteingang"
    jkdir2="/home/temp/rootbenutzer"
    jklesealle(jkdir1)
    jkchangealle(jkdir1,jkdir2)
