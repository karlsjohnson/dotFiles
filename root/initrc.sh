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
source $dotRoot/initAliasAll.sh

# Aliases Mac
if [ "$osType" = "MAC" ]; then source $dotRoot/initMac.sh ; fi





# ----------Complete--------------
echo "My Initialization Process For $comType Complete"
#endregion
