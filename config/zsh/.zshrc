# This is the config files for my zsh shell.
# Right now, this is mainly on the Mac, but I plan to expand this to Linux

# Load Functions
source "$ZDOTDIR/zsh-functions.zsh"
# Load Enviromental Variables
source "$ZDOTDIR/zsh-env.zsh"
# Load Aliases
source "$ZDOTDIR/zsh-aliases.zsh"
# Load Settings
source "$ZDOTDIR/zsh-settings.zsh"
# Load Private Config
source "$HOME/Git/Private/zsh-private.zsh"

# Load Mac config (Mac Only)
[[ "$hostOS" = "Darwin" ]] && source "$ZDOTDIR/zsh-mac.zsh"

# Complete notification
echo "My Initialization Process For $hostName Complete"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
