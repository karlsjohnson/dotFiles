
#==================================================
#============ Sournce Private Info ===============
#==================================================

source $Git/Private/private.sh

#==================================================
#================= Functions ======================
#==================================================

function source_file() {
    [ -f "$1" ] && source "$1"
}

function source_custom() {
    [ -f "$Git/dotFiles/bash/$1.sh" ] && source "$Git/dotFiles/bash/$1.sh"
}

#==================================================
#================== aliases =======================
#==================================================

# Aliases
alias scf="source $Git/dotFiles/bash/.bashrc"
# exa aliases instead of ls
alias ls='exa --icons --group-directories-first'
alias la='exa --icons -a --group-directories-first'
alias ll='exa --icons -a -l --group-directories-first'

# Source init files
alias szsh=". ~/.config/zsh/.zshrc"
alias ezsh="exec zsh"

# Copy Path to Clipboard
alias cpath="pwd|pbcopy"

# Reboot or shutdown
alias shutdown="sudo shutdown -P now"
alias reboot="sudo shutdown -r now"

# List Files
alias la='ls -a'
alias ll="ls -lha"
alias lls="ls -lhSa"
alias llt="ls -lhta"

# Remove Folder by Force
alias rmd='rm -rf'
# Remove Files by Force
alias rm='rm -f'

# Copy =Folder
alias cpd='rsync -ah --progress '
# Copy Files
alias cp='cp -f'

# Size of Disks on Computer
alias dsize="df -h"

# Size of items in currently directory
alias fsize="du -hsc *"

# View tree with level set at $1 (First augument)
# tree --du -h -L 2, is 2 levels deep
alias fdtree="tree --du -h -L"

# ----------Act Aliases--------------

alias runx='chmod u+x'
alias a='Bash $Git/Private/bash/act.sh'

# ----------Program Aliases--------------

# Update plugins
alias zsh-update-plugins="find "$ZDOTDIR/plugins" -type d -exec test -e '{}/.git' ';' -print0 | xargs -I {} -0 git -C {} pull -q"

#exa
alias ls='exa --icons --group-directories-first'
alias la='exa --icons -a --group-directories-first'
alias ll='exa --icons -a -l --group-directories-first'

#============ Settings ===============



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
