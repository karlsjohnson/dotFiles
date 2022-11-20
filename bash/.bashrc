# source functions
source $Git/dotFiles/bash/functions.sh
# source private config
source $Git/Private/private.sh

#============ Soource Files ===============
source_custom aliases
source_custom env
source_custom mac
source_custom setttings
#============ Soource Files ===============

echo "bashrc done for $sysType"



[ -f ~/.fzf.bash ] && source ~/.fzf.bash
. "$HOME/.cargo/env"
