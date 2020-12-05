"======Vim-Plug Config File======

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

"======Plug.vim Setup
" Plugins will be downloaded under the specified directory.
" Specify a directory for plugins
call plug#begin('~/.config/nvim/autoload/plugged')

"======Plug.vim Plugins Add
  " Better Syntax Support
  Plug 'sheerun/vim-polyglot'
  
  " Auto pairs for '(' '[' '{'
  Plug 'jiangmiao/auto-pairs'
  Plug 'joshdick/onedark.vim'
  Plug 'scrooloose/nerdtree'
  Plug 'godlygeek/tabular'
  Plug 'plasticboy/vim-markdown'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'yuttie/comfortable-motion.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'mkitt/tabline.vim'
  Plug 'scuilion/markdown-drawer'
  Plug 'christoomey/vim-tmux-navigator'



"======Plug.vim Plugins Add
call plug#end()


