if status is-interactive
    # Commands to run in interactive sessions can go here
end
# set fish config directory
#----------  Source Files -----------
source $HOME/.config/fish/custom/functions.fish
source $HOME/.config/fish/custom/env.fish
source $HOME/.config/fish/custom/alias.fish
source $HOME/.config/fish/custom/private.fish
source $HOME/.config/fish/custom/settings.fish
source $Private/private.fish

#----------  Config Done -----------
echo "$HOST Config Done"
