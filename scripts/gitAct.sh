# Define Variables
rOpt="-ah --progress --delete --exclude-from $dotFiles/scripts/gitActRsyncExt.txt"

## Case Statement
case $1 in

#bkRoot-----Backup Root Files to Text
  bkRoot)
    cp -f ~/.oh-my-zsh/oh-my-zsh.sh $dotFiles/root
    cp -f ~/.fzf.zsh $dotFiles/root
    cp -f ~/.p10k.zsh $dotFiles/root
    cp -f ~/.NERDTreeBookmarks $dotFiles/root
    cp -f ~/.tmux.conf $dotFiles/root
    cp -f ~/.zlogout $dotFiles/root
    cp -f ~/.zshrc $dotFiles/root
    rsync $rOpt ~/.config/nvim/ $dotFiles/nvim
  ;;

#rsRoot-----Restore Root Files from Text
  rsRoot)
    cp -f $dotFiles/root/oh-my-zsh.sh ~/.oh-my-zsh/
    cp -f $dotFiles/root/.fzf.zsh ~
    cp -f $dotFiles/root/.p10k.zsh ~
    cp -f $dotFiles/root/.NERDTreeBookmarks ~
    cp -f $dotFiles/root/.tmux.conf ~
    cp -f $dotFiles/root/.zlogout ~
    cp -f $dotFiles/root/.zshrc ~
    rsync $rOpt $dotFiles/nvim/ ~/.config/nvim/
   ;;


#----Default
  *)
  echo "Default: No Command"
  #  $myScripts/act.sh man
  ;;
esac
