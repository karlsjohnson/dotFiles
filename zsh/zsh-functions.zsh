# Function to source files if they exist


function source_config() {
    [ -f "$ZDOTDIR/zsh-$1.zsh" ] && source "$ZDOTDIR/zsh-$1.zsh"
}

function source_private() {
    [ -f "$HOME/Documents/Text/Private/zsh-$1.zsh" ] && source "$HOME/Documents/Text/Private/zsh-$1.zsh"
}

