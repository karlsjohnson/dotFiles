# Initial Aliases for All

# ----------System Aliases--------------

# Source init files
function scf {
  #[[ ! -f $ZDOTDIR/.zcompdump ]] || rm -f $ZDOTDIR/.zcompdump
  . ~/.config/zsh/.zshrc
}
#alias scf=". ~/.config/zsh/.zshrc"
#alias dcd="rm $ZDOTDIR/.zcompdump"
alias ecf="exec zsh"

# Reboot or shutdown
alias sdown="sudo shutdown -P now"
alias rboot="sudo shutdown -r now"


# Size of Disks on Computer
alias dsize="df -h"


# ----------Directory Aliases--------------

# List Files
#alias la='ls -a'
#alias ll="ls -lha"
#alias lls="ls -lhSa"
#alias llt="ls -lhta"

# Copy Path to Clipboard
alias cpath="pwd|pbcopy"


# Remove Folder by Force
alias rmd='rm -rf'
# Remove Files by Force
alias rm='rm -f'

# Copy =Folder
alias cpd='rsync -ah --progress '
# Copy Files
alias cp='cp -f'

# Size of items in currently directory
alias fsize="du -hsc *"

# View tree with level set at $1 (First augument)
# tree --du -h -L 2, is 2 levels deep
alias fdtree="tree --du -h -L 2"


# ----------User Aliases--------------

# set file permission to 770 rwxrwx---
alias ownES='sudo chown $userGroupS'
alias ownrES='sudo chown -R $userGroupS'
alias ownEA='sudo chown $userGroupA'
alias ownrEA='sudo chown -R $userGroupA'

# Permissions
alias pug="sudo chmod -R 770"
alias pu="sudo chmod -R 700"

# ----------Bash Aliases--------------

alias runx='chmod u+x'
alias a='Bash $Git/Private/bash/act.sh'




# ----------Program Aliases--------------

# Update plugins
alias zsh-update-plugins="find "$ZDOTDIR/plugins" -type d -exec test -e '{}/.git' ';' -print0 | xargs -I {} -0 git -C {} pull -q"

#exa
alias ls='exa --icons --group-directories-first'
alias la='exa --icons -a --group-directories-first'
alias ll='exa --icons -a -l --group --group-directories-first'

#mdless

alias md='mdless'
alias mdl='mdless -l'
alias mds='mdless -s'

function mh {
  mdless -l "$1"
  MYVAR=""
  vared -p 'User input: ' -c MYVAR
  mdless -s $MYVAR "$1"
}

# zoxide (better cd)
# brings up list of folders
alias zz='zi'

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
alias g="git"
alias gst="git status"
alias gcm="git commit -a -m "
alias gaa="git add --all"
alias gph="git push origin"
alias gpl="git pull"
alias gco="git checkout"
alias gmr="git merge"
alias grb="git rebase"

# Complete Git Add,Commit,Push
function gch {
  git add --all
  git commit -a -m "$1"
  git push
  git status
}


# Text Editor
alias vi="nvim"
alias li="/Users/elecknight/.local/bin/lvim"
alias e="code"
alias vit="nvim --cmd 'cd $Text'"
alias vig="nvim --cmd 'cd $Git'"
alias vin="nvim --cmd 'cd $Git' $Git/Notebook/readme.md"
alias vid="nvim --cmd 'cd $Git' $Git/dotFiles/readme.md"
# Test Editor Sessions
alias vsc="nvim -S $Sessions/current.vim"
alias vsd="nvim -S $Sessions/dotfiles.vim --cmd 'cd $Git'"
alias vsg="nvim -S $Sessions/git.vim --cmd 'cd $Git'"


# ----------Python Aliases--------------
alias py="python3"
alias pip="pip3"
alias pyl="pip3 list"


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

function brew_install {
    echo "\nInstalling $1"
    if brew list $1 &>/dev/null; then
        echo "${1} is already installed"
    else
        brew install $1 && echo "$1 is installed"
    fi
}

