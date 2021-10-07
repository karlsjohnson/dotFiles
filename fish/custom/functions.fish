function source_custom
  [ -e $HOME/.config/fish/custom/$argv[1] ]; and source $HOME/.config/fish/custom/$argv[1]
end

# Add iterm2 shell integrations
source ~/.config/iterm2/.iterm2_shell_integration.fish
