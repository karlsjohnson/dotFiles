#====Settings====

if [ "$sysType" = "MBPKSJ" ]; then
 [[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"
fi

if [ "$sysType" = "MacMini" ]; then
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
fi

# turn spelling on
shopt -s cdspell

#====Plugins====

# Source iterm2 integrations
source_file ~/.config/iterm2/.iterm2_shell_integration.bash

# add zoxide to shell
eval "$(zoxide init bash)"
export _ZO_DATA_DIR=$HOME/.config/zoxide
alias zz="zi"

# Setup fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
# set fuzzy autocomplete on seperate key
# https://github.com/junegunn/fzf/wiki/Configuring-fuzzy-completion
# Commands ^T, ^R, Files ^I



# Run starship
eval "$(starship init bash)"

# Add Fast node manager to prompt
eval "$(fnm env)"


# Setup iTerm integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
