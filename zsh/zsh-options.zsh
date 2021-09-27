# Setting zsh options
# https://zsh.sourceforge.io/Doc/Release/Options.html#Options
# https://linux.die.net/man/1/zshoptions

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
