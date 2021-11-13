if status is-interactive
    # Commands to run in interactive sessions can go here
end
# set fish config directory
#----------  Source Files -----------
source $HOME/.config/fish/custom/functions.fish
source_custom env.fish
source_custom alias.fish
source_custom settings.fish
source $Private/private.fish

#----------  Config Done -----------
echo "$HOST Config Done"
