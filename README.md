# dotFiles

This is new currect CLI install process. I changed it when I build my MacBook Pro M1 and wanted to run everything with Apple silicon.nano

- Install homebrew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
  - Uninstall brew and all packages: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"`
  - Intel Macs
    - Installs in `/usr/local`
  - Apple Silicon
    - Installs in `/opt/homebrew`
    - After Install Run to setup opt diorectory for brew isntalls:
      - `echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/elecknight/.zprofile`
      - `eval "$(/opt/homebrew/bin/brew shellenv)`
- Install Zsh
  - brew command: `brew install zsh`
  - add .zprofile to root
    - add `export ZDOTDIR=$HOME/.config/zsh` to root
    - if Apple ARM, add `eval \"\$(/opt/homebrew/bin/brew shellenv)\"` to add homebrew /opt directory
- Install iterm2 shell integration
- Install [zoxide](https://github.com/ajeetdsouza/zoxide)
  - `brew install zoxide`
  - add zoxide to shell ->.zshrc
    - `eval "$(zoxide init zsh)"`
  - move library -> .zshrc
    - export _ZO_DATA_DIR=$HOME/.config/zoxide/
  - move library to $HOME/.config/zoxide
- Install fzf [fzf](https://github.com/junegunn/fzf)
  - `brew install fzf`
  - To install useful key bindings and fuzzy completion
    - `$(brew --prefix)/opt/fzf/install`
  - remove .bashrc and bash fzf files
  - keybinding (^r)
  - hit tab to fussy auto complete
- not installed [zsh-completions](https://github.com/zsh-users/zsh-completions)
- Install ls replacement [exa github](https://github.com/ogham/exa)
  - [exa website](https://the.exa.website/)
  - `brew install exa`
- Install a less replacement [bat](https://github.com/sharkdp/bat)
- [setting-up-a-new-macbook-pro](https://www.garrickadenbuie.com/blog/setting-up-a-new-macbook-pro)
  - `brew install bat`
- Install [Ranger](https://github.com/ranger/ranger)
  - `brew install ranger`
  - set default config: `ranger --copy-config=all`
  - modify rc.config (in ~/.config/ranger/rc.conf)
    - change `set preview_images false` -> `set preview_images true`
    - change `set preview_images_method w3m` -> `set preview_images_method iterm2`
- This installed python - latest with pip (python -m pip)
- Install [tmux](https://github.com/tmux/tmux/wiki)
  - `brew install tmux`
  - Setup config files
  - Started with [oh-my-tmux](https://github.com/gpakosz/.tmux)
    - move the .tmux.conf.local into the .tmux.conf file.
    - link ~/.tmux.conf
  - Install plugin manager [TPM](https://github.com/tmux-plugins/tpm)
    - `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
    - prefix (^A) + captial I to install plugins
    - prefix (^A) + captial U to update plugins
  - need to redo tmux config file with my own words
  - [Install Rust](https://www.rust-lang.org/tools/install)
  - [Cargo](https://doc.rust-lang.org/cargo/index.html)
- Install Rust (and cargo - the package manager)
  - `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`
  - update current shell `source $HOME/.cargo/env`
  - update `rustup update`
  - uninstall `rustup self uninstall`
- Installing [Fast Node Manager (fnm)](https://github.com/Schniz/fnm)
  - [setup](https://www.chrisatmachine.com/Nodejs/02-Install-FNM/)
  - `brew install fnm`
  - add `eval "$(fnm env)"` to zshrc
  - update `brew upgrade fnm`
  - remove - remove the .fnm folder
- NVIM - [LunarVim](https://www.lunarvim.org/)
  - install fnm (includes nodejs and npm) and rustup (includes cargo)
  - Run Stable, but get error at end
  - setup - add path to zshrc `export PATH="$HOME/.local/bin:$PATH"`
  - run lvim, run `:LvimCacheReset`, then `:PackerSync` which solved issues
  - Not installing - using VSCode


## Old setup

I rebuilt my CLI for my MacBook Pro with Apple silicon (M1). This was my old setup.

Install **Homebrew**

- Install **[homebrew](https://brew.sh)**: `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
- Install **Cask**:_(extends Homebrew to OS X applications)_ `brew install cask`
- Install **brew software** `brew install <app>`

Install **iTerm2**

- Install **iTerm2** `brew cask install iterm2`
- Copy **iTerm2 Apps Files**
  - ==Need More Information==
- Install iTerm Tools: iTerm2->iTerm2->Install Shell Integration

Install **Zsh**

- **zsh**
- ==How to Install?==
- **zsh-completions**
  - ==How To Install?==
  - To activate these completions, add the following to your .zshrc:  fpath=(/usr/local/share/zsh-completions $fpath)
  - You may also need to force rebuild zcompdump: `rm -f ~/.zcompdump; compinit`
  - If you receive "zsh compinit: insecure directories" run this: `chmod go-w '/usr/local/share'`

Install **fzf**

- **fzf** `brew install fzf`
  - setup `$(brew --prefix)/opt/fzf/install`
  - Link .fzf.zsh `ln -s ~/Documents/Code/Root/fzf.zsh ~/.fzf.zsh`

Install **On-my-zsh**

- Install [oh-my-zsh](https://ohmyz.sh) `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- Link zshrc `ln -s ~/Documents/Code/Root/zshrc.sh ~/.zshrc`
- Link zlogin `ln -s ~/Documents/Code/Root/zshrc ~/.zshrc`
- Link zlogout `ln -s ~/Documents/Code/Root/zshrc ~/.zshrc`
- Link zprofile `ln -s ~/Documents/Code/Root/zshrc ~/.zshrc`
- Link zshenv `ln -s ~/Documents/Code/Root/zshrc ~/.zshrc`
- Install Powerline Theme `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k`
- Change theme in .zshrc to `ZSH_THEME="powerlevel10k/powerlevel10k` in ~/.zshrc.
- On the first run, Powerlevel10k configuration wizard will ask you a few questions and configure your prompt.
  - turn on instant prompt, quiet mode.
- Link .p10k.zsh `ln -s ~/Documents/Code/Root/p10k.zsh ~/.p10k.zsh`
- Link oh-my-zsh.sh `ln -s ~/Documents/Code/Root/oh-my-zsh.sh ~/.oh-my-zsh/oh-my-zsh.sh`
- Copy Root/Fonts into /System/Library/Fonts
- Install Autosuggestions`git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions`
- Install Syntax-Highlighting `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting`
  - Add plugins to zshrc (should already be there)
- Move all files to ilCloud, name ROOT variable

Instal **Tmux**

- Setup **Tmux**
  - Install `brew install tmux`
  - Link .tmux.conf `ln -s ~/Documents/Code/Root/tmux.sh ~/.tmux.conf`
  - Install tmux plugin managar
    - `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

==Todo MacMini Below==

Install **Vim**

- Install **Neovim**
  - Install `brew install neovim`
  - Link Config Folder
    - Link .vim `ln -s ~/Documents/Code/Root/config/ ~/.config`
    - Link .vim `ln -s ~/Documents/Code/Root/local/ ~/.local`

- Install Github CLI
  - brew install gh

Install **Node**

- Install Node Package manager, [Link](https://betterprogramming.pub/how-to-change-node-js-version-between-projects-using-nvm-3ad2416bda7e)
  - `brew install nvm`
- Add to .zshrc to setup nvm

```bash
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
```

- Install node `nvm install node`
- Install version `nvm install v9.10.0`
- List versions `nvm ls`
- Switch to version `nvm use v9.10.0`
- Add a .nvmrc to set version per project

Install **ZeroTier**

- Install ZeroTier Software
- Setup Network
- Setup IPs
- Allow ZeroTier through firewall
- edit /etc/ssh/sshd_config
  - Uncomment ListenAddress 0.0.0.0
  - Change ip to address of server from zerotier
- Restart SSH (resart mac)
  - Install `curl -s 'https://raw.githubusercontent.com/zerotier/ZeroTierOne/master/doc/contact%40zerotier.com.gpg' | gpg --import && \
if z=$(curl -s 'https://install.zerotier.com/' | gpg); then echo "$z" | sudo bash; fi`

```bash
sudo zerotier-one.zerotier-cli info
200 info ******** 1.4.6 ONLINE
sudo zerotier-one.zerotier-cli join *******
200 join OK
sudo zerotier-one.zerotier-cli status *******
sudo zerotier-one.zerotier-cli leave *******
```

Install and Setup **Ruby & Gem**

- Setup RubyGems
  - ==Work in progress, stalled on errors to get mdless to run==
  - ==Start Over==
  - [Download RubyGems](https://rubygems.org/pages/download)
  - Install ruby: `brew install ruby`
  - Install Ruby Gems: `brew install brew-gem`
    - Check `export PATH="/usr/local/opt/ruby/bin:$PATH"` in in the szshrc
- [Gems:](https://rubygems.org/pages/download)
  - Update: `gem update —system`
  - Already installed (With ruby)
  - Check version: `ruby —version`, `gem —version`
  - list commands: `gem`
- [Ruby Version Manager:](https://rvm.io/)
- Work out rubygems with rvm
  - command: `which -a ruby` which command are you using and `ruby -v`, what version
-Work on setting up ruby gems and running them
  - [RubyGems](https://rubygems.org/pages/download)
  - [mdless](https://brettterpstra.com/projects/mdless/)
- Link: [mdless](https://brettterpstra.com/projects/mdless/)
- Install: `gem install mdless`
  - if error, update gems: `https://rubygems.org/pages/download`
- Usage: `mdless [options] path or cat [path] | mdless`
