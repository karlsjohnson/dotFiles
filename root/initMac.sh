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

function MacUpdate {
  echo "brew update starting"
  brew update
  brew upgrade
  brew cleanup
  echo "brew update complete"
}
