# My Initialization Process for All Mac Command Lines 
# Roadmap: use for linux as well.

# Set My Personal Veriables
source ~/Documents/Text/Bin/myEnv.sh

# Aliases for All CLIs
source $dotRoot/initAlias.sh

# Aliases for All Macs
if [ "$osType" = "MAC" ]; then source $dotRoot/initMac.sh ; fi

# Aliases for Personal Laptop
if [ "$comType" = "Laptop" ]; then source $dotRoot/initMBP.sh ; fi

# Aliases for Personal Server/Desktop
if [ "$comType" = "Server" ]; then source $dotRoot/initMM.sh ; fi

# ----------Complete--------------
echo "My Initialization Process For $comType Complete"
#endregion
