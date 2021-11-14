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
# -------------bash-----------------
# ----------------------------------
# setup profile

[[ ! -f ~/.profile ]] || rm -f ~/.profile
touch ~/.profile
if [ "$Machine" = "MBP" ]; then
  echo "# Setup Homebrew install location for Apple Silicon" >> ~/.profile
  echo "export PATH=\"/opt/homebrew/bin:\$PATH\"" >> ~/.profile
fi

echo "# Source bashrc file in the config directory" >> ~/.profile
echo "if [ -f ~/.config/bash/.bashrc ]; then . ~/.config/bash/.bashrc; fi" >> ~/.profile

echo "# Setup iTerm integration" >> ~/.profile
echo "test -e \"\${HOME}/.iterm2_shell_integration.bash\" && source \"\${HOME}/.iterm2_shell_integration.bash\"" >> ~/.profile

# Setup bash files
if [ -d ~/.config/bash ]; then rm -Rf ~/.config/bash; fi
ln -s ~/Git/dotFiles/bash ~/.config/bash


# ----------------------------------
# -------------nvim-----------------
# ----------------------------------
# Link nvim config folder
# if [ -d ~/.config/nvim ]; then rm -Rf ~/.config/nvim; fi
if [ ! -d ~/.config/nvim ]; then mkdir ~/.config/nvim; fi
if [ ! -d ~/.config/nvim/autoload ]; then mkdir ~/.config/nvim/autoload; fi
if [ -f ~/.config/nvim/autoload/plug.vim ]; then rm -f ~/.config/nvim/autoload/plug.vim; fi
ln -s ~/Git/dotFiles/nvim/autoload/plug.vim ~/.config/nvim/autoload/plug.vim
if [ -f ~/.config/nvim/init.vim ]; then rm -f ~/.config/nvim/init.vim; fi
ln -s ~/Git/dotFiles/nvim/init.vim ~/.config/nvim/init.vim
if [ -d ~/.config/nvim/custom ]; then rm -Rf ~/.config/nvim/custom; fi
ln -s ~/Git/dotFiles/nvim/custom ~/.config/nvim/custom

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

echo "Setup done for" $Machine

