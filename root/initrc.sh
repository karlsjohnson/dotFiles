# My Initialization Process for All Mac Command Lines 
# Roadmap: use for linux as well.

# ----------Call Setup Variables--------------
# Set location of files
dotRoot=~/Git/dotFiles/root
dotBin=~/Documents/Text/Bin

# Set My Personal Veriables
source $dotBin/myEnv.sh
# Set Standard Enivormental Variables
source $dotRoot/initEnv.sh

# ----------Call Setup Files--------------
# Aliases All
source $dotRoot/initAlias.sh

# Aliases Mac
if [ "$osType" = "MAC" ]; then source $dotRoot/initMac.sh ; fi

# Aliases MacBookPro
if [ "$comType" = "MacBook" ]; then source $dotRoot/initMBP.sh ; fi

# Aliases MacMini
if [ "$comType" = "MacMini" ]; then source $dotRoot/initMM.sh ; fi

# ----------Complete--------------
echo "My Initialization Process For $comType Complete"
#endregion
