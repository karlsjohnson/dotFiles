# Add this lines at the top of .bashrc:
[[ $- == *i* ]] && source $HOME/.local/share/blesh/ble.sh --noattach

# source functions
source $HOME/.config/shell/custom/functions.sh

#============ Soource Files ===============
source ~/Documents/Text/Private/private.sh
source_custom aliases.sh
source_custom env.sh
source_custom plugins.sh
source_custom mac.sh
source_custom setttings.sh
#============ Soource Files ===============


echo "bashrc done for $sysType"


