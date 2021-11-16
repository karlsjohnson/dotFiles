# This is the config files for my zsh shell.
# Right now, this is mainly on the Mac, but I plan to expand this to Linux
# Load Functions
source "$ZDOTDIR/zsh-functions.zsh"

# Load config files
source_private private
source_config env
source_config settings
source_config aliases

# Load mac only config files
[[ "$hostOS" = "Darwin" ]] && source_config mac

echo "My Initialization Process For $hostName  Complete"


