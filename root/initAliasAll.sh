

#endregion
#----------------------------------------#
#region -----Aliases_All-----

# Source init files
alias szsh=". ~/.zshrc"

# Copy Path to Clipboard
alias cpath="pwd|pbcopy"

# List Files
alias la='ls -a'
alias ll="ls -lha"
alias lls="ls -lhSa"
alias llt="ls -lhta"

# Remove Folder by Force
alias rmd='rm -rf'
# Remove Files by Force
alias rm='rm -f'

# Copy =Folder
alias cpd='rsync -ah --progress '
# Copy Files
alias cp='cp -f'
# Copy Path to Clipboard
alias pcopy='pwd|pbcopy'

# Size of Disks on Computer
alias dsize="df -h"

# Size of items in currently directory
alias fsize="du -hsc *"

# View tree with level set at $1 (First augument)
# tree --du -h -L 2, is 2 levels deep
alias fdtree="tree --du -h -L"

# set file permission to 770 rwxrwx---
alias ownES='sudo chown $userGroupS'
alias ownrES='sudo chown -R $userGroupS'
alias ownEA='sudo chown $userGroupA'
alias ownrEA='sudo chown -R $userGroupA'

# Permissions
alias pug="sudo chmod -R 770"
alias pu="sudo chmod -R 700"

# Reboot or shutdown
alias shutdown="sudo shutdown -P now"
alias reboot="sudo shutdown -r now"

# iTerm 
alias itl="it2prof OneLight"
alias itd="it2prof OneDark"
alias itg="it2prof Gruvbox"

# Tmux
alias tsc="tmux source-file ~/.tmux.conf"
alias t="tmux"
alias tn="t new -t"
alias ta="tmux a"
alias tan="t a -t"
alias tls="tmux ls"
alias tk="tmux kill-server"
alias tkss="tmux kill-session"

# Git
alias g="git"
alias gs="git status"
alias gc="git commit -m \""
alias ga="git add *"
alias gca="git commit -am \""
alias gh="git push"
alias gl="git pull"
alias gcl="git clone"
alias gr="git ls-files --deleted -z | xargs -0 git rm"

# Complete Git Add,Commit,Push
function gch {
  git add *
  git commit -m "$1"
  git push
  git status
}

# Text Editor
alias e="nvim"
alias et="nvim --cmd 'cd $Text'"
alias eg="nvim --cmd 'cd $Git'"
alias es="nvim --cmd 'cd $Git' $Git/Thoughts/Start.md"
# Test Editor Sessions
alias esc="nvim -S $Sessions/current.vim"
alias esd="nvim -S $Sessions/dotfiles.vim --cmd 'cd $Git'"
alias esg="nvim -S $Sessions/git.vim --cmd 'cd $Git'"

# Run Act.sh
alias act='Bash ~/Documents/Text/Bin/act.sh'
alias gact='Bash ~/git/dotFiles/scripts/gitAct.sh'

echo "Test Done"