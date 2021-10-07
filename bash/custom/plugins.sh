

# Source iterm2 integrations
source_file ~/.config/iterm2/.iterm2_shell_integration.bash

# add zoxide to shell
eval "$(zoxide init bash)"
export _ZO_DATA_DIR=$HOME/.config/zoxide
alias zz="zi"

# Setup fzf
source_file ~/.fzf.bash
# set fuzzy autocomplete on seperate key
# https://github.com/junegunn/fzf/wiki/Configuring-fuzzy-completion
# Commands ^T, ^R, Files ^I



# Run starship
eval "$(starship init bash)"
