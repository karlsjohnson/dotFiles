# Setting zsh options
# https://zsh.sourceforge.io/Doc/Release/Options.html#Options
# https://linux.die.net/man/1/zshoptions

# Bindkey codes
# https://www.zsh.org/mla/users/2014/msg00266.html

# set CLI history
HISTFILE=$ZDOTDIR/.zsh_history
setopt appendhistory

# try to cd command if no command it given
setopt autocd

# allow cooments in interactive shells
setopt interactive_comments

# Disable ctrl-s to freeze terminal.
stty stop undef

# beeping is annoying
unsetopt BEEP


# Remove paste highlighting
zle_highlight=('paste:none')


# bindkey control
# bindkey -s '^f' 'ls^M'
# bindkey alt/option
# bindkey -s '^[f' 'ls^M'
