# Setting zsh options
# https://zsh.sourceforge.io/Doc/Release/Options.html#Options
# https://linux.die.net/man/1/zshoptions

# Bindkey codes
# https://www.zsh.org/mla/users/2014/msg00266.html

#--------------------------------------------
#--------------------------------------------
#---------------Zsh options------------------
#--------------------------------------------
#--------------------------------------------

# Append history
# takes too long
setopt appendhistory

# try to cd command if no command it given
setopt autocd
setopt cdablevars

# allow comments in interactive shells
setopt interactive_comments

# Disable ctrl-s to freeze terminal.
#stty stop undef

# beeping is annoying
unsetopt BEEP

# Enable spell correcting
setopt correct

# Remove paste highlighting
zle_highlight=('paste:none')

# Colors
# autoload -Uz colors && colors

#--------------------------------------------
#--------------------------------------------
#---------------Zsh Plugins------------------
#--------------------------------------------
#--------------------------------------------
# Add starship prompt
eval "$(starship init zsh)"

# Add zsh-completions plugin
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload -Uz compinit
  compinit
fi

# Add plugin zsh-syntax-highlighting
# Add plugin zsh-autosuggestions
#If there is an error with syntax highlighting, add export below
#export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/opt/homebrew/share/zsh-syntax-highlighting/highlighters

if [ "$hostName" = "MBPKSJ" ]; then
  source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
  source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

if [ "$hostName" = "MacMini" ]; then
  source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
  source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi


#--------------------------------------------
#--------------------------------------------
#---------------Shell Programs---------------
#--------------------------------------------
#--------------------------------------------

# Add fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# set fuzzy autocomplete on seperate key
# https://github.com/junegunn/fzf/wiki/Configuring-fuzzy-completion
export FZF_COMPLETION_TRIGGER=''
bindkey '^T' fzf-completion
# not sure what this is
bindkey '^I' $fzf_default_completion


# add zoxide to shell
eval "$(zoxide init zsh)"
export _ZO_DATA_DIR=$HOME/.config/zoxide
alias zz="zi"

# Add Fast node manager to prompt
eval "$(fnm env)"

# Add iTerm Shell script
#Old way: test -e "${ZDOTDIR}/zsh-aliases" && source "${ZDOTDIR}/zsh-aliases"
#zsh_add_file ".iterm2_shell_integration.zsh"
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Add VScode to CLI via path
#export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

