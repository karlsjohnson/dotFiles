# Function to source files if they exist


function source_config() {
    [ -f "$ZDOTDIR/zsh-$1.zsh" ] && source "$ZDOTDIR/zsh-$1.zsh"
}

function source_private() {
    [ -f "$HOME/Git/Private/zsh-$1.zsh" ] && source "$HOME/Git/Private/zsh-$1.zsh"
}


function brew_install {
    echo "\nInstalling $1"
    if brew list $1 &>/dev/null; then
        echo "${1} is already installed"
    else
        brew install $1 && echo "$1 is installed"
    fi
}

