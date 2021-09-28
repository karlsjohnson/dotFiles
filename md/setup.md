# CLI Setup

## Install

### Mac

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
  - z is cd with a memory [rupa\/z](https://github.com/rupa/z)


## Links

### dotFiles

- [jarvis-dotfiles](https://github.com/ctaylo21/jarvis)
- [webpro/awesome-dotfiles](https://github.com/webpro/awesome-dotfiles)
- [How to store dotfiles](https://www.atlassian.com/git/tutorials/dotfiles)
- [Dotfiles | getAwesomeness()](https://getawesomeness.herokuapp.com/get/dotfiles)
- [Yet Another Dotfiles Manager](https://yadm.io/#)
- [webpro/awesome-dotfiles](https://github.com/webpro/awesome-dotfiles)
- [dotfiles.github.io](https://dotfiles.github.io/)
- [bag-man/dotfiles](https://github.com/bag-man/dotfiles)
- [Siafu/dotfiles](https://github.com/Siafu/dotfiles/blob/master/.vim/_vimrc)
- [DarthOstrich/dotfiles](https://github.com/DarthOstrich/dotfiles)
- [skwp/dotfiles/](https://skwp.github.io/dotfiles/)

### Zsh

- [nnn](https://github.com/jarun/nnn)
- [Awesome Terminal Setup with iTerm2, ZSH and Oh-My-Zsh | Pankaj Singh](https://iampankaj.com/2017/08/27/Awesome-Terminal-Setup-with-iTerm2-ZSH-and-Oh-My-Zsh.html)
- [How to Configure your macOs Terminal with Zsh like a Pro | Chiamaka Ikeanyi](https://chiamakaikeanyi.dev/how-to-configure-your-macos-terminal-with-zsh-like-a-pro/)
- [My Terminal Setup: iTerm + Zsh](https://zen-of-programming.com/terminal-setup/)
- [Bash Completion · macOS Setup Guide](https://sourabhbajaj.com/mac-setup/BashCompletion/)
- [iTerm2 + Oh My Zsh! + Powerlevel9K best terminal combination for Geeks!](https://dev.to/equiman/iterm2--oh-my-zsh--powerlevel9k-best-terminal-combination-for-geeks-58l5)
- [zsh-users/zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [Beautifying your terminal with Zsh, Prezto, &amp; Powerlevel9k](https://medium.com/@oldwestaction/beautifying-your-terminal-with-zsh-prezto-powerlevel9k-9e8de2023046)
- [sorin-ionescu/prezto](https://github.com/sorin-ionescu/prezto)
- [Powerline beta documentation](https://powerline.readthedocs.io/en/latest/index.html)
- [Powerlevel9k/powerlevel9k](https://github.com/Powerlevel9k/powerlevel9k)
- [A Beautifully Productive Terminal Experience](https://mikebuss.com/2014/02/02/a-beautiful-productive-terminal-experience/)

### NeoVim

- [GitHub Themes for Neovim](https://github.com/projekt0n/github-nvim-theme)
- [LunarVim](https://www.lunarvim.org/)
- [chrisatmachine](https://www.chrisatmachine.com/)
- [Neovim Open Source Projects on Github](https://awesomeopensource.com/projects/neovim)
- [VimWiki](https://github.com/vimwiki/vimwiki)
- [Ranger.vim](https://github.com/francoiscabrol/ranger.vim)
- [amix/vimrc](https://github.com/amix/vimrc)
- [junegunn/vim-plug](https://github.com/junegunn/vim-plug)
- [tmuxinator/tmuxinator](https://github.com/tmuxinator/tmuxinator)

### Setup ARM

- [How to install homebrew on M1 mac](https://stackoverflow.com/questions/66666134/how-to-install-homebrew-on-m1-mac)
- [Setup Macbook M1 for Web and React](https://amanhimself.dev/blog/setup-macbook-m1/)
- [Mac Mini M1](https://medium.com/ne-digital/mac-mini-m1-my-own-developer-survivor-guide-52db40ee0882)
- [M1 Mac Developer Setup](https://codeburst.io/my-ultimate-m1-mac-developer-setup-cfdb2daeed2d)
- [Ultimate M1 Mac Developer](https://codeburst.io/my-ultimate-m1-mac-developer-setup-cfdb2daeed2d)
- [Using Apple Silicon M1 for Software Developments](https://medium.com/geekculture/using-apple-silicon-m1-for-software-developments-46d405034a43)
- [Life with the MacBook Air M1 from a web developer](http://blog.greggant.com/posts/2020/12/13/life-with-the-m1-macbook-air-as-developer.html)
- [Programming on the Apple M1 Silicon](https://brainbaking.com/post/2020/12/developing-on-apple-m1-silicon/)
- [Set up an M1 MacBook for web development](https://blog.logrocket.com/set-up-macbook-for-web-development-in-20-minutes/)
- [Setup Macbook M1 for Web and React Native development](https://amanhimself.dev/blog/setup-macbook-m1/)
- [Mac Mini M1: My Own Developer Survivor Guide](https://medium.com/ne-digital/mac-mini-m1-my-own-developer-survivor-guide-52db40ee0882)
- [My Ultimate M1 Mac Developer Setup](https://codeburst.io/my-ultimate-m1-mac-developer-setup-cfdb2daeed2d)
- [My Terminal Setup: iTerm + Zsh](https://welearncode.com/terminal-setup/)
- [macOS Setup Guide](https://sourabhbajaj.com/mac-setup/)

### VS Code

- [GitHub Markdown Preview](https://marketplace.visualstudio.com/items?itemName=bierner.github-markdown-preview)
- [VS Code Themes](https://themes.vscode.one)

### Node

- [Fast Node Manager (fnm)](https://github.com/Schniz/fnm)
- [How to setup Node.js on Apple M1](https://www.jurnalanas.com/node-js-mac-m1/)
- [Node Version Manager](https://github.com/nvm-sh/nvm)

### Git

- [Git Push to Remote Branch](https://www.freecodecamp.org/news/git-push-to-remote-branch-how-to-push-a-local-branch-to-origin/)
- [extrawurst/gitui](https://github.com/extrawurst/gitui)

### Tmux

- [tmux-plugins/tmux-continuum](https://github.com/tmux-plugins/tmux-continuum)
- [tmuxinator/tmuxinator](https://github.com/tmuxinator/tmuxinator)

### Markdown

- [tmuxinator/tmuxinator](https://github.com/tmuxinator/tmuxinator)

### CLI Programs

- [ImageMagick](https://imagemagick.org/index.php)
- [Pandoc](https://pandoc.org/)
- [CLI to Download videos](https://ytdl-org.github.io/youtube-dl/index.html)
- [herrbischoff/awesome-macos-command-line](https://github.com/herrbischoff/awesome-macos-command-line)
- [herrbischoff/awesome-command-line-apps](https://github.com/herrbischoff/awesome-command-line-apps)
- [pbcopy & pbpaste](https://osxdaily.com/2007/03/05/manipulating-the-clipboard-from-the-command-line/)
- [keith/reminders-cli](https://github.com/keith/reminders-cli)
- [morgant/tools-osx](https://github.com/morgant/tools-osx)
- [agarrharr/awesome-cli-apps](https://github.com/agarrharr/awesome-cli-apps)
- [alebcay/awesome-shell](https://github.com/alebcay/awesome-shell)
- [My perfect 2018 media server. Openmediavault: NAS/storage + multimedia services](https://medium.com/@yllanos/my-perfect-2018-media-server-openmediavault-nas-storage-multimedia-services-53e74ea33af3)
- [My perfect 2018 media server — Part 2: Some improvements](https://medium.com/@yllanos/my-perfect-2018-media-server-part-2-some-improvements-dc42c8d9e04b)

### CLI

- [Linux tree command help and examples](https://www.computerhope.com/unix/tree.htm)
- [How to setup SSH Keys on Linux Mac OS X Clients](https://support.hostway.com/hc/en-us/articles/115001507624-How-to-setup-SSH-Keys-on-Linux-Mac-OS-X-Clients)
- [How to Use RSA Key for SSH Authentication](https://news.softpedia.com/news/How-to-Use-RSA-Key-for-SSH-Authentication-38599.shtml)
- [1Password CLI](https://support.1password.com/command-line-getting-started/)
- [Fzf Installation and Usage](https://jdhao.github.io/2018/11/05/fzf_install_use/)
- [Starship custom shell prompt](https://starship.rs/)
- [TmuxAwesome](https://github.com/rothgar/awesome-tmux)
- [Oh-My-Tmux](https://github.com/gpakosz/.tmux)
- [youtubedl](https://github.com/ytdl-org/youtube-dl)
- [ytmdl](https://github.com/deepjyoti30/ytmdl)
- [ytmdl-homebrew](https://formulae.brew.sh/cask/ytmdesktop-youtube-music#default)
- [pandoc](https://pandoc.org)
- [Neovim](https://neovim.io/)
- [Tmux Cheat Sheet](https://tmuxcheatsheet.com/)
- [tmux](https://github.com/tmux/tmux/wiki)
- [Oh My Zsh](https://ohmyz.sh/)
- [Advanced Regex](http://www.rexegg.com/)
- [Online regex tester](https://regex101.com/)
- [Pandoc](http://pandoc.org/)
- [Regex](https://www.rexegg.com/)
- [Regex101](https://regex101.com/)
- [youtube-dl](https://ytdl-org.github.io/youtube-dl/index.html)
