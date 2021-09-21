# Zsh

## Zsh-Links

- [Zsh](https://www.zsh.org/)
- [ZSH - THE Z SHELL](http://zsh.sourceforge.net/)
- [Z-Shell FAQ](http://zsh.sourceforge.net/FAQ/)
- [Awesome-zsh-plugins](https://github.com/unixorn/awesome-zsh-plugins)

_Zsh Links:_ **Setup**

- [How to Set Up Your Mac for Web Development in 2020](https://medium.com/better-programming/setting-up-your-mac-for-web-development-in-2020-659f5588b883#589f)
- [Terminals-are-sexy](https://github.com/k4m4/terminals-are-sexy)
- [Awesome Shell](https://github.com/alebcay/awesome-shell)
- [Badass Terminal](https://jessicadeen.com/badass-terminal-wsl-macos-and-ubuntu-dotfiles-update/)
- [iterm2+ohmyzsh+zsh](https://dev.to/equiman/iterm2--oh-my-zsh--powerlevel9k-best-terminal-combination-for-geeks-58l5)
- [macOS ohmyzsh + tmux + vim + iTerm2 + Powerlevel9k](https://jessicadeen.com/macos-ohmyzsh-tmux-vim-iterm2-powerlevel9k-badass-terminal/)
- [Setup Vim, Powerline and iTerm2 on Mac OS X](https://coderwall.com/p/yiot4q/setup-vim-powerline-and-iterm2-on-mac-os-x)
- [oh-my-zsh/wiki](https://github.com/robbyrussell/oh-my-zsh/wiki)
- [Moving to zsh](https://scriptingosx.com/2019/06/moving-to-zsh/)

Zsh Links Plugins **Current**

- [Oh My Zsh](https://ohmyz.sh/)
- [git/ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
- [powerlineFonts](https://github.com/powerline/fonts)
- [powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [Oh my zsh with autosuggestions &amp; syntax-highlighting.md](https://gist.github.com/dogrocker/1efb8fd9427779c827058f873b94df95)
- [256 Colors Cheat Sheet](https://jonasjacek.github.io/colors/)

Zsh Links Plugins **Old**

- [Prezto](https://github.com/sorin-ionescu/prezto)

## Zsh-Startup

- zsh will start with /etc/zshenv
- then the user’s .zshenv
  - The zshenv files are always used when they exist, even for scripts with the #!/bin/zsh shebang.
  - Since changes applied in the zshenv will affect zsh behavior in all contexts, you should you should be very cautious about changes applied here.
- Next, when the shell is a login shell, zsh will run /etc/zprofile and .zprofile.
- Then for interactive shells (and login shells) /etc/zshrc and .zshrc.
- Then, again, for login shells /etc/zlogin and .zlogin.
  - Why are there two files for login shells? The zprofile exists as an analog for bash’s and sh’s profile files, and zlogin as an analog for ksh login files.
- Finally, there are zlogout files that can be used for cleanup, when a login shell exits. In this case, the user level .zlogout is read first, then the central /etc/zlogout.

## Zsh-Configuration

| File                      | Description                              |
| :------------------------ | :--------------------------------------- |
| ~/.oh-my-zsh/oh-my-zsh.sh | configuration for _oh-my-zsh_            |
| ~/.p10k.zsh               | configuration for _powerlevel10k_ Theme. |
| .zshenv                   | Run first every-time                     |
| .zprofile                 | Run second at login shell                |
| .zshrc                    | Run third at login and interactive shell |
| .zlogin                   | Run last at login shell                  |

- Startup **Files**
- _.zshenv_ sourced on all invocations of the shell, contain search path, environment variables, commands that produce output.
- _.zlogin_ sourced in login shells, contain commands that executed only in login.
- _.zprofile_ sourced in login shells (before zshrc),alternative to zlogin, used to set the terminal type and run a series of external commands (fortune, msgs, etc).
- _.zlogout_ sourced when login shells exit.
- _.zshrc_ sourced in interactive shells, contain aliases, functions, options, key bindings, etc.

## Zsh-Commands

- Switch to bash: `exec bash`
- Switch to zsh: `exec zsh`
- Set Default command line for *Bash*: `chsh -s /bin/bash`
- Set Default command line for *zsh*: `chsh -s /bin/zsh`

## Zsh-Plugins

- Main Framework: [Oh My Zsh](https://ohmyz.sh)
  - To update: `upgrade_oh_my_zsh`
  - If git conflict, run: `git reset --hard HEAD`
- Main Theme: [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
  - Install [fzf](https://github.com/junegunn/fzf) by `brew install fzf`
  - As you type commands, you will see a completion offered after the cursor in a muted gray color
    - This color can be changed by setting the ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE variable
    - if File `~/.oh-my-zsh/custom/autosuggestions.zsh` or in `.zshrc`
    - Restart iTerm2 to see changes?
  - If you press the → key (forward-char widget) or End (end-of-line widget) with the cursor at the end of the buffer, it will accept the suggestion, replacing the contents of the command line buffer with the suggestion.
  - If you invoke the forward-word widget, it will partially accept the suggestion up to the point that the cursor moves to.
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [zsh-interactive-cd](https://github.com/changyuheng/zsh-interactive-cd)
  - Press `cd` + "tab" for completion as usual, it'll launch fzf automatically
- [OS-X Plugin **Commands**](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/osx)

| Command     | Description                                         |
| :---------- | :-------------------------------------------------- |
| tab         | Open the current directory in a new tab             |
| split_tab   | Split the current terminal tab horizontally         |
| vsplit_tab  | Split the current terminal tab vertically           |
| ofd         | Open the current directory in a Finder window       |
| pfd         | Return the path of the frontmost Finder window      |
| pfs         | Return the current Finder selection                 |
| cdf         | cd to the current Finder directory                  |
| pushdf      | pushd to the current Finder directory               |
| quick-look  | Quick-Look a specified file                         |
| man-preview | Open a specified man page in Preview app            |
| showfiles   | Show hidden files                                   |
| hidefiles   | Hide the hidden files                               |
| itunes      | DEPRECATED. Use music from macOS Catalina on        |
| music       | Control Apple Music. Use music -h for usage details |
| spotify     | Control Spotify and search by artist, album, track… |
| rmdsstore   | Remove .DS_Store files recursively in a directory   |
