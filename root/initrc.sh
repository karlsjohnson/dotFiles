# My Initialization Process for All Mac Command Lines 
# Roadmap: use for linux as well.

# Set Enivormental Variables
[ -f ~/Git/dotFiles/root/initEnv.sh ] && source ~/Git/dotFiles/root/initEnv.sh
# Set My Personal Veriables
[ -f ~/Documents/Apps/Support/myEnv.sh ] && source ~/Documents/Apps/Support/myEnv.sh

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
alias itl="it2prof Light"
alias itd="it2prof Dark"

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

function gch {
echo $1
  git commit -am "$1"
#  git push
#  git status
}

# Text Editor
alias e="nvim"
alias et="$Editor --cmd 'cd $myText'"
alias eg="$Editor --cmd 'cd $myGit'"
alias efs="$Editor --cmd 'cd $myText' $myWrite/Start.md"
# Test Editor Sessions
alias esc="$Editor -S $eSessions/current.vim --cmd 'cd $Text'"
alias esd="$Editor -S $eSessions/dotfiles.vim --cmd 'cd $Git'"
alias esg="$Editor -S $eSessions/git.vim --cmd 'cd $Git'"

# Run Act.sh
alias ac='Bash ~/Documents/Apps/Scripts/act.sh'
alias ag='Bash ~/git/dotFiles/scripts/gitAct.sh'


#endregion
#----------------------------------------#
#region -----Functions-----

# Change iterm2 profile. Usage it2prof ProfileName (case sensitive)
it2prof() { echo -e "\033]50;SetProfile=$1\a" }

function eSwitch {
  if [ "$Editor" = "nvim" ]; then
    export Editor="vim"
    export eSessions="~/.vim/sessions"
    Echo "Editor now vim"
  elif [ "$Editor" = "vim" ]; then
    export Editor="nvim"
    export eSessions="~/.config/nvim/sessions"
    Echo "Editor now neovim"
  fi
}


# Unknown
function panVert {
  sed -i -e 's/.md/.html/g' $2/$1.md
  #echo "$2/template.html"
  /usr/local/bin/pandoc -s $2/$1.md --toc --template=$2/template.html -o $3/$1.html
  mv $2/$1.md-e $2/$1.md
}



# Zip directory at $1
function zipD {
  zip -r "$1".zip "$1"/*
}

# Unzip directoy at $1
function unzipD {
  if [ -f "$1" ]; then
    rm -rf "$1"
  fi
  #	mkdir "$1"
  unzip "$1".zip
}

# Allow mosh through firewall
function AllowMosh {
  sudo /usr/libexec/ApplicationFirewall/socketfilterfw --add /usr/local/Cellar/mosh/1.3.2_12/bin/mosh-server
  sudo /usr/libexec/ApplicationFirewall/socketfilterfw --unblockapp /usr/local/Cellar/mosh/1.3.2_12/bin/mosh-server
}

function showf {
  defaults write com.apple.finder AppleShowAllFiles TRUE
  killall Finder
}
function hidef {
  defaults write com.apple.finder AppleShowAllFiles FALSE
  killall Finder
}
function MacUpdate {
  echo "brew update starting"
  brew update
  brew upgrade
  brew cleanup
  echo "brew update complete"
}


#endregion
#----------------------------------------#
#region -----Docker Tools-----

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
alias dcup="docker-compose -f $DOCKER/docker-compose.yml up -d"
# Stops containers and removes containers, networks, volumes, and images created by up.
alias dcdown="docker-compose -f $DOCKER/docker-compose.yml down"
# lists containers related to images declared in docker-compose file
alias dcls="docker-compose -f $DOCKER/docker-compose.yml ps"
# Restarts all stopped and running services
alias dcrestart="docker-compose -f $DOCKER/docker-compose.yml restart"
# Start containers that were previously created, but were stopped. It never creates new containers.
alias dcstart="docker-compose -f $DOCKER/docker-compose.yml start -d"
#Stops running containers without removing them. They can be started again with 
alias dcstop="docker-compose -f $DOCKER/docker-compose.yml stop"
# Removes stopped service containers.
alias dcrm="docker-compose -f $DOCKER/docker-compose.yml rm"


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

#endregion
#----------------------------------------#
#region -----Mac Only-----
if [ "$osType" = "MAC" ]; then

# ----Vim files

# goto folders
alias gdt="cd '$myText'"
alias gdd="cd ~/Documents"
alias gdw="cd '$myDownload'"
alias gdp="cd ~/Desktop"
alias gdg="cd ~/Git"

fi
#endregion
#----------------------------------------#
#region -----Laptop Only Tools-----

if [ "$comType" = "Laptop" ]; then

  # ----Aliases----
  # logon to MacMini
  alias mom="mosh $ServerE"
  alias shm=" ssh $ServerE"
  
fi
#endregion
#----------------------------------------#
#region -----Desktop Only Tools-----
if [ "$comType" = "Desktop" ]; then
  
  #----Variables----

  #----Aliases----
  #Goto Folder
  alias gdc="cd $pwdCloud"
  alias gdm="cd $pwdMedia"
  alias gda="cd $pwdCamera"

fi


#endregion
#----------------------------------------#

echo "My Initialization Process For $comType Complete"
#endregion
