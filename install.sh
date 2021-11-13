#!/usr/bin/env bash
# above for zsh shells
# Below for bash shells
#!/bin/bash
# to run first `chmod u+x file.sh`
# then either `bash file.sh` or `./file.sh`

# Determine what computer this is

if [ "$1" = "" ]
then
  echo "Computer type not given, what computer?"
  echo "MM, MBP, or Linux"
  read Machine
else
  export Machine=$1
fi

# ----------------------------------
# -------------brew-----------------
# ----------------------------------
# Setup/Install brew
#if [[ $(command -v brew) == "" ]]; then
#    echo "Installing Hombrew"
#    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#else
#    echo "Updating Homebrew"
#    brew update
#fi

# ----------------------------------
# -------------zsh-----------------
# ----------------------------------
# setup zprofile
#[[ ! -f ~/.zprofile ]] || rm -f ~/.zprofile
#  touch ~/.profile
#  echo "# Set Zsh config location" >> ~/.zprofile
#  echo "export ZDOTDIR=$HOME/.config/zsh" >> ~/.zprofile
#if [ "$Machine" = "MBP" ]; then
#  echo "creating MBP zprofile"
#  echo "# Setup Homebrew install location for Apple Silicon" >> ~/.zprofile
#  echo "eval \"\$(/opt/homebrew/bin/brew shellenv)\"" >> ~/.zprofile
#fi
#if [ "$Machine" = "MM" ]; then
#  echo "creating MM zprofile"
#fi

## Link zsh config folder
#if [ -d ~/.config/zsh ]; then rm -Rf ~/.config/zsh; fi
#ln -s ~/Git/dotFiles/zsh ~/.config/zsh

# ----------------------------------
# -------------bash-----------------
# ----------------------------------
# setup profile
# Add below to .profile for bash
# add homebrew directory for Apple ARM
#export PATH="/opt/homebrew/bin:$PATH"
# Source bashrc file in the config directory
#if [ -f ~/.config/bash/.bashrc ]; then . ~/.config/bash/.bashrc; fi
# Link nvim config folder
if [ -d ~/.config/bash/custom ]; then rm -Rf ~/.config/bash/custom; fi
ln -s ~/Git/dotFiles/bash/custom ~/.config/bash/custom
if [ -f ~/.config/bash/.bashrc ]; then rm -f ~/.config/bash/.bashrc ; fi
ln -s ~/Git/dotFiles/bash/.bashrc  ~/.config/bash/.bashrc



# ----------------------------------
# -------------nvim-----------------
# ----------------------------------
# Link nvim config folder
if [ -d ~/.config/nvim ]; then rm -Rf ~/.config/nvim; fi
ln -s ~/Git/dotFiles/nvim ~/.config/nvim

# ----------------------------------
# -------------tmux-----------------
# ----------------------------------
# Link tmux config file
if [ -f ~/.tmux.conf.local ]; then rm -f ~/.tmux.conf.local; fi
ln -s ~/Git/dotFiles/tmux/.tmux.conf.local ~/.tmux.conf.local

# ----------------------------------
# -------------git-----------------
# ----------------------------------
# Link gitconfig file
if [ -f ~/.gitconfig ]; then rm -f ~/.gitconfig; fi
ln -s ~/Git/dotFiles/git/.gitconfig ~/.gitconfig

# ----------------------------------
# -------------fish-----------------
# ----------------------------------
# setup profile
# Add below to .profile for bash
# add homebrew directory for Apple ARM
#export PATH="/opt/homebrew/bin:$PATH"
# Source bashrc file in the config directory
#if [ -f ~/.config/bash/.bashrc ]; then . ~/.config/bash/.bashrc; fi
# Link nvim config folder
if [ -d ~/.config/fish/custom ]; then rm -Rf ~/.config/fish/custom; fi
ln -s ~/Git/dotFiles/fish/custom ~/.config/fish/custom
if [ -f ~/.config/fish/config.fish ]; then rm -f ~/.config/fish/config.fish ; fi
ln -s ~/Git/dotFiles/fish/config.fish  ~/.config/fish/config.fish
if [ -f ~/.config/fish/fish_plugins ]; then rm -f ~/.config/fish/fish_plugins ; fi
ln -s ~/Git/dotFiles/fish/fish_plugins  ~/.config/fish/fish_plugins





echo "Setup done for" $Machine

