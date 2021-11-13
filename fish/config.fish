if status is-interactive
    # Commands to run in interactive sessions can go here
end
# set fish config directory
#----------  Source Files -----------
source $HOME/.config/fish/custom/functions.fish
source $Private/private.fish
source_custom env.fish
source_custom alias.fish
source_custom private.fish
source_custom settings.fish

#----------  Config Done -----------
echo "$HOST Config Done"
