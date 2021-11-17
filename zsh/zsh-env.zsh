# Setting enviromental veriables for my zsh shell

# for Mac, get the name of the computer
export hostName=$(scutil --get LocalHostName)
# Get OS: Darwin, Linux, CYGWIN
export hostOS=$(uname -s)

# Set Editor
export EDITOR=nvim

# set CLI history
HISTFILE=$ZDOTDIR/.zsh_history

# Set Folders
export Documents=$HOME/Documents
export Backup=$Documents/Backup
export Text=$Documents/Text
export Bin=$Documents/Bin
export Code=$Documents/Text/Code
export Downloads=$HOME/Sync/Downloads
export Git=$HOME/Git
export DOT=$Git/dotfiles

# Set Paths
# Normal: /usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH=$Bin:$PATH
# Used when running homwbrew in intel/m1 state
#export PATH=/opt/homebrew/bin:$PATH
