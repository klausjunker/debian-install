from junkerliba import jkversion
from junkerliba import jkalleanlegen
from junkerliba import jkuserdelall
from junkerliba import jkuserdel
#------------------------------------------------------------------
# main
#------------------------------------------------------------------
if __name__ == "__main__":
    jkversion(__file__)
    #jkuserdelall("/home/temp/rootbenutzer")
    jkuserdelall(".")
