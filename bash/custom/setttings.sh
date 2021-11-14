#====Settings====


if [ "$sysType" = "MBPKSJ" ]; then
 [[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"
fi

if [ "$sysType" = "MacMini" ]; then
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
fi



# Add Fast node manager to prompt
eval "$(fnm env)"

# source bash prompt tools
# Use line below instead
#source $HOME/.local/share/blesh/ble.sh
# Add this line at the end of .bashrc:
[[ ${BLE_VERSION-} ]] && ble-attach
