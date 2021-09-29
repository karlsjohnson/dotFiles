# Initial Aliases for All

# ----------Standard Tool Aliases--------------

# Source init files
alias szsh=". ~/.config/zsh/.zshrc"
alias ezsh="exec zsh"

# Copy Path to Clipboard
alias cpath="pwd|pbcopy"

# Reboot or shutdown
alias shutdown="sudo shutdown -P now"
alias reboot="sudo shutdown -r now"

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

# Size of Disks on Computer
alias dsize="df -h"

# Size of items in currently directory
alias fsize="du -hsc *"

# View tree with level set at $1 (First augument)
# tree --du -h -L 2, is 2 levels deep
alias fdtree="tree --du -h -L"


# ----------User Aliases--------------

# set file permission to 770 rwxrwx---
alias ownES='sudo chown $userGroupS'
alias ownrES='sudo chown -R $userGroupS'
alias ownEA='sudo chown $userGroupA'
alias ownrEA='sudo chown -R $userGroupA'

# Permissions
alias pug="sudo chmod -R 770"
alias pu="sudo chmod -R 700"

# ----------Act Aliases--------------

alias act='Bash ~/Documents/Text/Bin/act.sh'
alias gact='Bash ~/git/dotFiles/scripts/gitAct.sh'

# ----------Program Aliases--------------

# Update plugins
alias zsh-update-plugins="find "$ZDOTDIR/plugins" -type d -exec test -e '{}/.git' ';' -print0 | xargs -I {} -0 git -C {} pull -q"

#exa
alias ls='exa --icons --group-directories-first'
alias la='exa --icons -a --group-directories-first'
alias ll='exa --icons -a -l --group-directories-first'


# zoxide (better cd)
# j instead of cd
alias cd='z'
# brings up list of folders
alias cdf='zi'
bindkey -s '^f' 'zi^M'

# Tmux
alias tmsc="tmux source-file ~/.tmux.conf"
alias tm="tmux"
alias tmn="tmux new -t"
alias tma="tmux a"
alias tman="tmux a -t"
alias tmls="tmux ls"
alias tmk="tmux kill-server"
alias tmkss="tmux kill-session"

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

# Text Editor
alias vi="nvim"
alias vit="nvim --cmd 'cd $Text'"
alias vig="nvim --cmd 'cd $Git'"
alias vin="nvim --cmd 'cd $Git' $Git/Notebook/readme.md"
alias vid="nvim --cmd 'cd $Git' $Git/dotFiles/readme.md"
# Test Editor Sessions
alias vsc="nvim -S $Sessions/current.vim"
alias vsd="nvim -S $Sessions/dotfiles.vim --cmd 'cd $Git'"
alias vsg="nvim -S $Sessions/git.vim --cmd 'cd $Git'"

# ----------Docker Aliases--------------

# List All Images
alias dolsi="docker image ls -a"
# List Currently Running Containers
alias dolsrc="docker ps"
# List Currently All Containers
alias dolsac="docker ps -a"
# Remove Container ID
alias dormc="docker rm"
# Remove Image ID
alias dirmi="docker rmi"
# Restart All Containers
# Error when docker not running
#alias drestart="docker restart $(docker ps -q)"
# see all the ports that are currently listening
#alias dport="sudo netstat -tulpn | grep LISTEN"

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
function dcupdate {
  dcdown
  # Prune images and containers
  docker system pruneszsh -f
  docker container prune -f
  docker image prune -f
  docker volume prune -f
  # Update Images to Tag:Latest
  docker images | grep -v REPOSITORY | awk '{print $1}' | xargs -L1 docker pull
  docker images | grep "<none>" | awk '{print $3}' | xargs -L1 docker rmi
  dcup
  echo "Docker update complete"
}

# Stop all containers, remove all containers and images
function dRemove {
  docker-compose -f $DOCKER/docker-compose.yml down
  docker stop $(docker ps -q)
  docker rm $(docker ps -a -q)
  docker rmi $(docker images -q)
}

