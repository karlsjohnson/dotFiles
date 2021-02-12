

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




# Docker Tools

# List All Images
alias dlsi="docker image ls -a"
# List Currently Running Containers
alias dlscr="docker ps"
# List Currently All Containers
alias dlsc="docker ps -a"
# Remove Container ID

alias drmc="docker rm"
# Remove Image ID
alias drmi="docker rmi"
# Restart All Containers
# Error when docker not running
#alias drestart="docker restart $(docker ps -q)"
# see all the ports that are currently listening
alias dport="sudo netstat -tulpn | grep LISTEN"

# Docker Compose Tools

# Builds, (re)creates, starts, and attaches to containers for a service.
alias dcup="docker-compose -f $DOCKERC up -d"
# Stops containers and removes containers, networks, volumes, and images created by up.
alias dcdown="docker-compose -f $DOCKERC down"
# lists containers related to images declared in docker-compose file
alias dcls="docker-compose -f $DOCKERC ps"
# Restarts all stopped and running services
alias dcrestart="docker-compose -f $DOCKERC restart"
# Start containers that were previously created, but were stopped. It never creates new containers.
alias dcstart="docker-compose -f $DOCKERC start -d"
#Stops running containers without removing them. They can be started again with 
alias dcstop="docker-compose -f $DOCKERC stop"
# Removes stopped service containers.
alias dcrm="docker-compose -f $DOCKERC rm"


# Docker Update
function dUpdate {
  docker system prune
  docker container prune 
  docker image prune
  docker volume prune
  # Take down Docker Compose
  docker-compose -f $DOCKER/docker-compose.yml down
  # Update Images to Tag:Latest
  docker images | grep -v REPOSITORY | awk '{print $1}' | xargs -L1 docker pull
  docker images | grep "<none>" | awk '{print $3}' | xargs -L1 docker rmi
  # Pull up Dopcker Compose
  docker-compose -f $DOCKER/docker-compose.yml up -d
  # Restart All Running Containers
  docker restart $(docker ps -q)
  echo "Docker update complete"
}

# Stop all containers, remove all containers and images
function dRemove {
  docker-compose -f $DOCKER/docker-compose.yml down
  docker stop $(docker ps -q)
  docker rm $(docker ps -a -q)
  docker rmi $(docker images -q)
}

