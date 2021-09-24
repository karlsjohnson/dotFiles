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
  echo "MM, MBP, or Lunix"
  read Machine
else
  export Machine=$1
fi

#if [[ $(command -v brew) == "" ]]; then
#    echo "Installing Hombrew"
#    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#else
#    echo "Updating Homebrew"
#    brew update
#fi


# setup zprofile
[[ ! -f ~/.zprofile ]] || rm -f ~/.zprofile

  touch ~/.profile
  echo "# Set Zsh config location" >> ~/.zprofile
  echo "export ZDOTDIR=$HOME/.config/zsh" >> ~/.zprofile
if [ "$Machine" = "MBP" ]; then
  echo "creating MBP zprofile"
  echo "# Setup Homebrew install location for Apple Silicon" >> ~/.zprofile
  echo "eval \"\$(/opt/homebrew/bin/brew shellenv)\"" >> ~/.zprofile
fi
if [ "$Machine" = "MM" ]; then
  echo "creating MM zprofile"
fi

# Link zsh config files
if [ -d ~/.config/zsh ]; then rm -Rf ~/.config/zsh; fi
ln -s ~/Git/dotFiles/zsh ~/.config/zsh

# Link gitconfig file
if [ -f ~/.gitconfig ]; then rm -f ~/.gitconfig; fi
ln -s ~/Git/dotFiles/git/.gitconfig ~/.gitconfig


echo "Setup done for" $Machine

