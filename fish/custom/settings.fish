

# add zoxide to shell
zoxide init fish | source
set -U _ZO_DATA_DIR "$HOME/.config/zoxide"

# Add starship
starship init fish | source

# change fzf file shortcut to ctrl-+d
fzf_configure_bindings --directory=\ez


# Use vim key bindings
fish_vi_key_bindings
