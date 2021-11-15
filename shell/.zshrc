#Set dotFiles location
export DOT=$HOME/Git/dotfiles

export EDITOR=nvim

# Add zoxide to shell
# https://github.com/ajeetdsouza/zoxide
eval "$(zoxide init zsh)"1
# Set zoxide Config file
export _ZO_DATA_DIR=$HOME/.config/zoxide/

# Add Fast Node Manager to shell
#eval "$(fnm env)"

# This should be set for ^I to work, but not working
setopt vi
# Load fzf config
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# set fuzzy autocomplete on seperate key
# https://github.com/junegunn/fzf/wiki/Configuring-fuzzy-completion
export FZF_COMPLETION_TRIGGER=''
bindkey '^T' fzf-completion
# not sure what this is
bindkey '^I' $fzf_default_completion


# Colors
# autoload -Uz colors && colors

# Add VScode to CLI via path
# export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Set My Personal Veriables
source ~/Documents/Text/Private/private.sh

# Load Functions
source "$ZDOTDIR/zsh-functions.zsh"

# Load zsh options
zsh_add_file "zsh-options.zsh"

#Load iTerm Shell script
#Old way: test -e "${ZDOTDIR}/zsh-aliases" && source "${ZDOTDIR}/zsh-aliases"
#zsh_add_file ".iterm2_shell_integration.zsh"
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Load Aliases for all
zsh_add_file "zsh-aliases.zsh"


# Aliases for Macs
# Old way: if [ "$osType" = "MAC" ]; then source ${ZDOTDIR}/zsh-mac ; fi
[[ "$osType" = "MAC" ]] && zsh_add_file "zsh-mac.zsh"

# Load prompt
#zsh_add_file "zsh-prompt.zsh"
eval "$(starship init zsh)"

# Load vim mode
zsh_add_file "zsh-vim.zsh"

# Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "hlissner/zsh-autopair"

#ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=cyan,underline
#ZSH_HIGHLIGHT_STYLES[precommand]=fg=cyan,underline
#ZSH_HIGHLIGHT_STYLES[arg0]=fg=green
#ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
#ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=red')

# ----------Complete--------------
echo "My Initialization Process For $comType Complete"
