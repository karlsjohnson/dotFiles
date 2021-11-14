# Add this lines at the top of .bashrc:
[[ $- == *i* ]] && source $HOME/.local/share/blesh/ble.sh --noattach

# source functions
source $HOME/.config/bash/custom/functions.sh

#============ Soource Files ===============
source_custom aliases.sh
source_custom env.sh
source_custom plugins.sh
source_custom setttings.sh
source ~/Documents/Text/Private/private.sh
source_custom mac.sh
#============ Soource Files ===============

# source bash prompt tools
#source $HOME/.local/share/blesh/ble.sh

# Add this line at the end of .bashrc:
[[ ${BLE_VERSION-} ]] && ble-attach

echo "bashrc done"

