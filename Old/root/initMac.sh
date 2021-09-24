# Initial Mac Aliases

alias cdt="cd '$Text'"
alias cdb="cd '$Text'/Bin"
alias cdd="cd ~/Documents"
alias cdw="cd '$Downloads'"
alias cdp="cd ~/Desktop"
alias cdg="cd ~/Git"
alias cdr="cd ~/"
alias cddf="cd ~/Git/dotFiles"
alias cdth="cd ~/Git/Thoughts"
alias cdnb="cd ~/Git/Notebook"
# Stop Quarantining App  add path to app you want to stop
# command "/Applications/SomeApp.app"
alias stopQ="sudo xattr -dr com.apple.quarantine"
# restart without login
alias autorestart="sudo fdesetup authrestart"

alias shuv="ssh $ServerUVM"


function macUpdate {
  echo "brew update starting"
  brew update
  brew upgrade
  brew cleanup
  echo "brew update complete"
}

# Turn dock delay show to 5 seconds
alias dockoff="defaults write com.apple.Dock autohide-delay -float 5 && killall Dock"
# Turn dock on no delay
alias dockfast="defaults write com.apple.Dock autohide-delay -float 0 && killall Dock"
# Turn dock on auto delay
alias dockon="defaults delete com.apple.Dock autohide-delay && killall Dock"
