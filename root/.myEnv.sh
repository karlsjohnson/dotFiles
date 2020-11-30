# My Enviromental Variables

# Determine Current Computer
export sysType=$(scutil --get LocalHostName)

# Set OS Type and Computer Paths
if [ "$sysType" = "MBP15" ]; then
  export osType="MAC"
  export DOCKER="~/Documents/Text/Docker/MacBook"
  export comType="Laptop"
fi
if [ "$sysType" = "MacMini" ]; then
  export osType="MAC"
  export DOCKER="~/Documents/Text/Docker/MacMini"
  export comType="Desktop"
fi

# Set OS Folder and File Paths
if [ "$osType" = "MAC" ]; then
  export dotFiles="~/Documents/Text/CLI/DotFiles"
  export macScripts="/Users/elecknight/Documents/Apps/macScripts"
  export PATH=$macScripts:$PATH
  export myScripts="~/Documents/Text/CLI/Scripts"
  export myText="~/Documents/Text"
  export myBackup="~/Documents/Apps/Backup"
  export myWrite="~/Documents/Text/Write"
  export myDownloads="~/Documents/Downloads"
  export myGit="~/Git"
  export myOffice="~/Documents/Office/"
  export pwdCloud="//Path/To/Folder"
  export pwdMedia="//Path/To/Folder"
  export pwdCamera="//Path/To/Folder"
  export UserR="//Path/To/Folder"
  export UserK="//Path/To/Folder"
  export UserT="//Path/To/Folder"
fi

# Set Variables
export userGroupS="user:group"
export userGroupA="user:group"
export Editor="nvim"
export eSessions="~/.config/nvim/sessions"
if [ "$Editor" = "vim" ]; then
  export eSessions="~/.vim/sessions"
fi
export ServerE="user@adress"

# Set Paths
# Normal: /usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH=$myScripts:$HOME/bin:/usr/local/bin:$PATH

