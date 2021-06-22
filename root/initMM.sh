# Initial MacMini Aliases

alias cdhdd="cd /Volumes/HDD"
alias cdssd="cd /Volumes/SSD"

function restartSSH {
  sudo launchctl unload /System/Library/LaunchDaemons/ssh.plist
  sudo launchctl load -w /System/Library/LaunchDaemons/ssh.plist
}
