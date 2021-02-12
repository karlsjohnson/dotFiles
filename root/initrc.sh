# My Initialization Process for All Mac Command Lines 
# Roadmap: use for linux as well.

# ----------Call Setup Variables--------------

# Set location of files
dotRoot=~/Git/dotFiles/root
dotBin=~/Documents/Text/Bin

# Set My Personal Veriables
source $dotBin/myEnv.sh
# Set Standard Enivormental Variables
source $dotRoot/initEnv.sh

# ----------Call Setup Files--------------

# Aliases All
source $dotRoot/initAliasAll.sh

if [ "$osType" = "MAC" ]; then source $dotRoot/initMac.sh ; fi

#endregion
#----------------------------------------#
#region -----Functions-----


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

#endregion
#----------------------------------------#
#region -----Mac Only-----
if [ "$osType" = "MAC" ]; then

# ----Vim files

# goto folders
alias cdt="cd '$Text'"
alias cdb="cd '$Text'/Bin"
alias cdd="cd ~/Documents"
alias cdw="cd '$Downloads'"
alias cdp="cd ~/Desktop"
alias cdg="cd ~/Git"
alias cdr="cd ~/"
alias cddf="cd ~/Git/dotFiles"
alias cdth="cd ~/Git/Thoughts"
fi
#endregion
#----------------------------------------#
#region -----Laptop Only Tools-----
if [ "$comType" = "MacBook" ]; then

  # ----Aliases----
  # logon to MacMini
  alias moip="mosh $ServerIP"
  alias momm="mosh $ServerMM"
  alias ship="ssh $ServerIP"
  alias shmm="ssh $ServerMM"
fi
#endregion
#----------------------------------------#
#region -----Desktop Only Tools-----
if [ "$comType" = "MacMini" ]; then
  
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
