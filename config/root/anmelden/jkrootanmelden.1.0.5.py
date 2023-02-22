from junkerliba import jkversion
from junkerliba import jkchangealle
#------------------------------------------------------------------
# main
#------------------------------------------------------------------
if __name__ == "__main__":
    jkversion(__file__)
    #ein: *.pkl
    jkdir1="/home/temp/rooteingang"
    #aus: *.csv
    jkdir2="/home/temp/rootbenutzer"
    jkchangealle(jkdir1,jkdir2)
