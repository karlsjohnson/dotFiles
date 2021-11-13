
# find Host name ans OS
set -gx HOST (scutil --get LocalHostName)
set -gx HOSTOS (uname -s)


# Set Enviormental Direcotry variables
set -gx Documents $HOME/Documents
set -gx Private $Text/Private
set -gx Text $Documents/Text
set -gx Bin $Documents/Bin
set -gx Git $HOME/Git
set -gx Backup $HOME/Documents/Backup
set -gx Downloads $HOME/Sync/Downloads

# Add my Bin diretory to Path
# Add path to local bin (iterm scripts)
fish_add_path $Bin

#If HOST is MacBook Pro M1
if string match -q "MacMini" $HOST
    set -gx CHIP "x86"
    set -gx DockerCompose $Text/Code/mm-docker-compose.yml

else if string match -q "MBPKSJ" $HOST
    set -gx CHIP "ARM"
    # Add homebrew path for Apple ARM
    set -gx BrewPath /opt/homebrew/bin
    fish_add_path $BrewPath
    set -gx DockerCompose $Text/Code/mb-docker-compose.yml
end
