# Initial Mac Aliases

# Stop Quarantining App  add path to app you want to stop
# command "/Applications/SomeApp.app"
alias stopQ="sudo xattr -dr com.apple.quarantine"
# restart without login
alias astart="sudo fdesetup authrestart"
# login remotly to apple keychain
alias alogin="security -v unlock-keychain ~/Library/Keychains/login.keychain-db"

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


function restartSSH {
  sudo launchctl unload /System/Library/LaunchDaemons/ssh.plist
  sudo launchctl load -w /System/Library/LaunchDaemons/ssh.plist
}
