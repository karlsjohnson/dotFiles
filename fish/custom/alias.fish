# Aliases

function qq
  exit
end

function cpath
    pwd|pbcopy
end

function scf
    source ~/.config/fish/config.fish
    source ~/.config/fish/functions/fish_user_key_bindings.fish
end

function macUpdate
  echo "brew update starting"
  brew update
  brew upgrade
  brew cleanup
  echo "brew update complete"
end

function act
  Bash ~/Documents/Text/Code/act.sh
end

# setup exa aliases
# list regular
function ls
  exa --icons --group-directories-first
end
# list hidden
function la
  exa --icons -a --group-directories-first
end
# list detailed
function ll
  exa --icons -a -l --group-directories-first
end
# list a tree
function lt2
  exa --icons -a --group-directories-first --tree --level=2
end

# change zoxide interactive to zz
function zz
  zi $argv
end

function shutdown
  sudo shutdown -P now
end

function restart
  sudo shutdown -r now
end

# Remove Folder by Force
function rmd
  rm -rf
end
# Remove Files by Force
function rm
  rm -f
end

# Copy =Folder
function cpd
  rsync -ah --progress
end
# Copy Files
function cp
  cp -f
end

# Tmux
function tms
  tmux source-file ~/.tmux.conf
end
function tm
  tmux
end
function tmn
  tmux new -t
end
function tma
  tmux a
end
function tman
  tmux a -t
end
function tmls
  tmux ls
end
function tmk
  tmux kill-server
end
function tmkss
  tmux kill-session
end

# Git
function gi
  git
end
function gis
  git status
end
function gic
  git commit -m $argv
end
function gia
  git add *
end
function gih
  git push
end
function gil
  git pull
end
function gicl
  git clone
end

# Complete Git Add,Commit,Push
function gich
  git add *
  git commit -m "$argv[1]"
  git push
  git status
end

# Text Editor
function vs
  code $argv
end
function vi
  nvim $argv
end
function vit
  nvim --cmd 'cd $Text'
end
function vis
  nvim $HOME/.config/nvim/custom/start.md
end
function vig
  nvim --cmd 'cd $Git'
end
# Test Editor Sessions
function vsc
  nvim -S $HOME/.config/nvim/custom/session.vim
end


# ----------Docker Aliases--------------

# List All Images
function dolsi
  docker image ls -a
end
# List Currently Running Containers
function dolsrc
  docker ps
end
# List Currently All Containers
function dolsac
  docker ps -a
end
# Remove Container ID
function dormc
  docker rm
end
# Remove Image ID
function dirmi
  docker rmi
end
# Restart All Containers
# Error when docker not running
#alias drestart="docker restart $(docker ps -q)"
# see all the ports that are currently listening
#alias dport="sudo netstat -tulpn | grep LISTEN"

# Docker Compose Tools

# Builds, (re)creates, starts, and attaches to containers for a service.
function dcup
  docker-compose -f $DockerCompose up -d
end
# Stops containers and removes containers, networks, volumes, and images created by up.
function dcdown
  docker-compose -f $DockerCompose down
end
# lists containers related to images declared in docker-compose file
function dcls
  docker-compose -f $DockerCompose ps
end
# Restarts all stopped and running services
function dcrestart
  docker-compose -f $DockerCompose restart
end
# Start containers that were previously created, but were stopped. It never creates new containers.
function dcstart
  docker-compose -f $DockerCompose start -d
end
#Stops running containers without removing them. They can be started again with
function dcstop
  docker-compose -f $DockerCompose stop
end
# Removes stopped service containers.
function dcrm
  docker-compose -f $DockerCompose rm
end

# Docker Update
function dcupdate
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
end

# Stop all containers, remove all containers and images
function dRemove
  docker-compose -f $DOCKER/docker-compose.yml down
  docker stop (docker ps -q)
  docker rm (docker ps -a -q)
  docker rmi (docker images -q)
end


# ----------Mac Aliases--------------
if string match -q "Darwin" $HOSTOS
  function zt
    z $Text
  end
  function zb
    z $Text/Bin
  end
  function zd
    z ~/Documents
  end
  function zw
    z $Downloads
  end
  function zp
    z ~/Desktop
  end
  function zg
    z ~/Git
  end
  function zdf
    z ~/Git/dotFiles
  end
  function znb
    z ~/Git/Notebook
  end
  ## Stop Quarantining App  add path to app you want to stop
  ## command "/Applications/SomeApp.app"
  function stopQ
    sudo xattr -dr com.apple.quarantine
  end
  # Turn dock delay show to 5 seconds
  function dockoff
    defaults write com.apple.Dock autohide-delay -float 5 && killall Dock
  end
  # Turn dock on no delay
  function dockfast
    defaults write com.apple.Dock autohide-delay -float 0 && killall Dock
  end
  # Turn dock on auto delay
  function dockon
    defaults delete com.apple.Dock autohide-delay && killall Dock
  end
  function macUpdate
    echo "brew update starting"
    brew update
    brew upgrade
    brew cleanup
    echo "brew update complete"
  end

end
if string match -q "MacMini" $HOST
  function zhd
    z /Volumes/HDD
  end
  function restartSSH
    sudo launchctl unload /System/Library/LaunchDaemons/ssh.plist
    sudo launchctl load -w /System/Library/LaunchDaemons/ssh.plist
  end
## restart without login
  function autorestart
    sudo fdesetup authrestart
  end


end

