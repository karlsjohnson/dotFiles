
#==================================================
#============ Source Private Info ===============
#==================================================

source $Git/Private/private.sh

#==================================================
#================== aliases =======================
#==================================================

# Aliases
alias scf="source $Git/dotFiles/bash/.bashrc"
# exa aliases instead of ls
alias ls='exa --icons --group-directories-first'
alias la='exa --icons -a --group-directories-first'
alias ll='exa --icons -a -l --group-directories-first'

# Copy Path to Clipboard
alias cpath="pwd|pbcopy"

# Reboot or shutdown
alias shutdown="sudo shutdown -P now"
alias reboot="sudo shutdown -r now"

# Remove Folder by Force
alias rmd='rm -rf'
# Remove Files by Force
alias rm='rm -f'

# Copy =Folder
alias cpd='rsync -ah --progress '
# Copy Files
alias cp='cp -f'

#Act Aliases

alias a='Bash $Git/Private/bash/act.sh'

#exa
alias ls='exa --icons --group-directories-first'
alias la='exa --icons -a --group-directories-first'
alias ll='exa --icons -a -l --group-directories-first'

#==================================================
#===================== Settings ===================
#==================================================



if [ "$sysType" = "MBPKSJ" ]; then
 [[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"
fi

if [ "$sysType" = "MacMini" ]; then
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
fi

# turn spelling on
shopt -s cdspell

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

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
. "$HOME/.cargo/env"

echo "bashrc done for $sysType"
