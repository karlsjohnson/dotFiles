export ZDOTDIR=$HOME/.config/zsh
export DOT=$HOME/Git/dotfiles


echo "Started STOW"
alias szsh=". ~/.config/zsh/.zshrc"

alias la="ls -a"


# Git
alias gi="git"
alias gis="git status"
alias gic="git commit -m \""
alias gia="git add *"
alias gih="git push"
alias gil="git pull"
alias gicl="git clone"

# Complete Git Add,Commit,Push
function gich {
  git add *
  git commit -m "$1"
  git push
  git status
}
