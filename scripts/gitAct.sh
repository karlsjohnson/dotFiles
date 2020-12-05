# Define Variables
rOpt="-ah --progress --delete --exclude-from $dotFiles/scripts/gitActRsyncExt.txt"

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
