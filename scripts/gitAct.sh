# Define Variables
gitDF=~/Git/dotFiles
rOpt="-ah --progress --delete --exclude-from $gitDF/scripts/rsyncExt.txt"

## Case Statement
case $1 in

### Manual
  man)
    Echo "bkRoot - Backup Dotfiles"
    Echo "rsRoot - Restore Dotfiles"
    Echo "rsRoot - Restore Dotfiles"
  ;;

#bkRoot-----Backup Root Files to Text
  bkRoot)
    cp -f ~/.myInit.sh $gitDF/root
    cp -f ~/.myEnv.sh $gitDF/root
    rsync $rOpt ~/.config/nvim/ $gitDF/nvim
  ;;

#rsRoot-----Restore Root Files from Text
  rsRoot)
    cp -f $dotFiles/oh-my-zsh.sh ~/.oh-my-zsh/
    cp -f $dotFiles/.fzf.zsh ~
    cp -f $dotFiles/.p10k.zsh ~
    cp -f $dotFiles/.NERDTreeBookmarks ~
    cp -f $dotFiles/.tmux.conf ~
    cp -f $dotFiles/.vimrc ~
    cp -f $dotFiles/.zlogout ~
    cp -f $dotFiles/.zshrc ~
    cp -f $dotFiles/.myInit.sh ~
    cp -f $dotFiles/.myEnv.sh ~
    rsync $rOpt $dotFiles/config/ ~/.config
    rsync $rOpt $dotFiles/tmux/ ~/.tmux
    rsync $rOpt $dotFiles/vim/sessions ~/.vim
    rsync $rOpt $dotFiles/vim/colors ~/.vim
   ;;


#----Default
  *)
  echo "Default: No Command"
  #  $myScripts/act.sh man
  ;;
esac
