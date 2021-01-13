# My Enviromental Variables

# Determine Current Computer
export sysType=$(scutil --get LocalHostName)

# Set OS Folder and File Paths
if [ "$osType" = "MAC" ]; then
  export dotFiles=~/Git/dotFiles
  export Scripts=/Users/elecknight/Documents/Scripts
  export Bin=/Users/elecknight/Documents/Bin
  export Text=~/Documents/Text
  export Backup=~/Documents/Apps/Backup
  export Downloads=~/Documents/Downloads
  export Git=~/Git
  export Sessions=~/.config/nvim/sessions
fi

# Set Variables

# Set Paths
# Normal: /usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH=$Scripts:$Bin:$PATH

