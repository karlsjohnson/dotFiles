#Set dotFiles location
export DOT=$HOME/Git/dotfiles

# Useful Functions
source "$ZDOTDIR/zsh-functions"


# Set My Personal Veriables
source ~/Documents/Text/Bin/myEnv.sh

echo "break"

#iTerm Shell script
test -e "${ZDOTDIR}/.iterm2_shell_integration.zsh" && source "${ZDOTDIR}/.iterm2_shell_integration.zsh"

# Aliases for all
test -e "${ZDOTDIR}/zshrc-alias.sh" && source "${ZDOTDIR}/zshrc-alias.sh"

# Aliases for Macs
if [ "$osType" = "MAC" ]; then source ${ZDOTDIR}/zshrc-alias-mac.sh ; fi

# ----------Complete--------------
echo "My Initialization Process For $comType Complete"
