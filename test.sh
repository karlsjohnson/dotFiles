#if [[ $(command -v brew) == "" ]]; then
#    echo "Installing Hombrew"
#    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#else
#    echo "Updating Homebrew"
#    brew update
#fi


if [ -d ~/.config/zsh ]; then rm -Rf ~/.config/zsh; fi
ln -s ~/Git/dotFiles/zsh ~/.config/zsh
