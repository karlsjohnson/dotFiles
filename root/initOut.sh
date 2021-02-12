# Change iterm2 profile. Usage it2prof ProfileName (case sensitive)
it2prof() { echo -e "\033]50;SetProfile=$1\a" }


# Unzip directoy at $1
function unzipD {
  if [ -f "$1" ]; then
    rm -rf "$1"
  fi
  #	mkdir "$1"
  unzip "$1".zip
}

# Allow mosh through firewall
function AllowMosh {
  sudo /usr/libexec/ApplicationFirewall/socketfilterfw --add /usr/local/Cellar/mosh/1.3.2_14/bin/mosh-server
  sudo /usr/libexec/ApplicationFirewall/socketfilterfw --unblockapp /usr/local/Cellar/mosh/1.3.2_14/bin/mosh-server
}

function showf {
  defaults write com.apple.finder AppleShowAllFiles TRUE
  killall Finder
}
function hidef {
  defaults write com.apple.finder AppleShowAllFiles FALSE
  killall Finder
}



function eSwitch {
  if [ "$Editor" = "nvim" ]; then
    export Editor="vim"
    export eSessions="~/.vim/sessions"
    Echo "Editor now vim"
  elif [ "$Editor" = "vim" ]; then
    export Editor="nvim"
    export eSessions="~/.config/nvim/sessions"
    Echo "Editor now neovim"
  fi
}


# Unknown
function panVert {
  sed -i -e 's/.md/.html/g' $2/$1.md
  #echo "$2/template.html"
  /usr/local/bin/pandoc -s $2/$1.md --toc --template=$2/template.html -o $3/$1.html
  mv $2/$1.md-e $2/$1.md
}



# Zip directory at $1
function zipD {
  zip -r "$1".zip "$1"/*
}

# Zip directory at $1
function zipCD {
  zip -r "$(basename $PWD)".zip *
}
