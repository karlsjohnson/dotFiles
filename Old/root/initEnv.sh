# Determine Current Computer
export sysType=$(scutil --get LocalHostName)

# Set OS Type and Computer Paths
if [ "$sysType" = "ComputerName" ]; then
  export osType="OS"
  export DOCKERC="~/Path/docker-compose.yml"
  export comType="ComputerType"
fi

if [ "$osType" = "OS" ]; then

  # Set Folders

  export dotFiles=path
  export Scripts=path
  export Bin=path
  export Text=path
  export Backup=path
  export Downloads=path
  export Git=path
  export Sessions=path
  export dotRoot=path

  # Set Variables
  export userGroupS="user:group"
  export userGroupA="user:group"
  export ServerIP="user@address"
  export ServerMM="user@address"


fi

