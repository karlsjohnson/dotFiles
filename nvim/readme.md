# Read Me

## Install Neovim

- Install
  - Mac: `brew install neovim`
  - Ubuntu: `sudo apt install neovim`
  - Arch: `sudo pacman -S neovim`
- Copy Config files from git/dotfiles repository or create fresh config below
- Create fresh config
  - Make directory for your Neovim config: `mkdir ~/.config/nvim`
  - Create an init.vim file: `touch ~/.config/nvim/init.vim`
  - Install vim-plug: `curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
  - You should now have plug.vim in your autoload directory so it will load of on start
  - Add a new file for plugins
    - `mkdir ~/.config/nvim/vim-plug`
    - `touch ~/.config/nvim/vim-plug/plugins.vim`
  - Let's add some plugins
    - Add the following to ~/.config/nvim/vim-plug/plugins.vim

```
" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
call plug#begin('~/.config/nvim/autoload/plugged')
    " Better Syntax Support12
    Plug 'sheerun/vim-polyglot'13
    " File Explorer14
    Plug 'scrooloose/NERDTree'15
    " Auto pairs for '(' '[' '{'16
    Plug 'jiangmiao/auto-pairs'17​18
call plug#end()
Source your plugins
```
  - Add the following line to init.vim: `source $HOME/.config/nvim/vim-plug/plugins.vim`