function MacUpdate {
  echo "brew update starting"
  brew update
  brew upgrade
  brew cleanup
  echo "brew update complete"
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



echo "This is a Mac"