# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/elecknight/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/elecknight/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/elecknight/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/elecknight/.fzf/shell/key-bindings.zsh"
