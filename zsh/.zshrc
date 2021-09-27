#Set dotFiles location
export DOT=$HOME/Git/dotfiles

# Set My Personal Veriables
source ~/Documents/Text/Bin/myEnv.zsh

# Load Functions
source "$ZDOTDIR/zsh-functions.zsh"

# Load z.sh jump directory script
source "/usr/local/etc/profile.d/z.sh"
# set path for z memory file
export _Z_DATA=$ZDOTDIR/.z

# Load zsh options
zsh_add_file "zsh-options.zsh"

#Load iTerm Shell script
#Old way: test -e "${ZDOTDIR}/zsh-aliases" && source "${ZDOTDIR}/zsh-aliases"
zsh_add_file ".iterm2_shell_integration.zsh"

# Load Aliases for all
zsh_add_file "zsh-aliases.zsh"


# Aliases for Macs
# Old way: if [ "$osType" = "MAC" ]; then source ${ZDOTDIR}/zsh-mac ; fi
[[ "$osType" = "MAC" ]] && zsh_add_file "zsh-mac.zsh"

# Load prompt
zsh_add_file "zsh-prompt.zsh"

# Load vim mode
zsh_add_file "zsh-vim-mode"

# Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "hlissner/zsh-autopair"



# ----------Complete--------------
echo "My Initialization Process For $comType Complete"
