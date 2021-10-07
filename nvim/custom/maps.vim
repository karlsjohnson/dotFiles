"--------------------------------------
"--------------------------------------
"-----------Neovim Mappings------------
"--------------------------------------
"--------------------------------------

" Map Guide and examples
" m - option key
" s - shift key or just use capital v vs V
" c - control key
" no command key - use bettertouchtool
"Use multiple mod keys examples below
"nnoremap <m-c-s-F> :m -2<CR>

"--------------------------------------
"--------------Leader Key--------------
"--------------------------------------
let mapleader = "\<Space>"


"--------------------------------------
"--------------Movement----------------
"--------------------------------------
" Move Line down/up
nnoremap <m-down> :m +1<CR>
nnoremap <m-up> :m -2<CR>
" Copy Line Down/Up
nnoremap <m-s-up> yyP
nnoremap <m-s-down> yyp
" Change tab keys
nnoremap <m-,> <<
nnoremap <m-.> >>
inoremap <m-,> <C-d>
inoremap <m-.> <C-T>
vnoremap <m-,> <gv
vnoremap <m-.> >gv


"--------------------------------------
"---------------General----------------
"--------------------------------------
"Clear Search Selection
nnoremap <m-c> :noh<cr>
"Toggle Word Wrap
nnoremap zw :set wrap!<CR>
" Change undo to match VSC
nnoremap <m-z> u
nnoremap <m-Z> <c-r>

"--------------------------------------
"---------------Buffers----------------
"--------------------------------------
" Next Buffer
nnoremap <Tab> :bnext<CR>
" Previous Buffer
nnoremap <S-TAB> :bprevious<CR>
" Close Buffer
nnoremap <m-w> :bd!<CR>
" Close Buffer, Switch to previous
nnoremap <m-W> :bprevious<CR>:bdelete #<CR>
" List Buffers
nnoremap gb :Buffers<CR>


"--------------------------------------
"---------------Windows----------------
"--------------------------------------
" Window Split Vertical
nnoremap <c-w><bar> :vsp<cr>
" Window Split Horizontal
nnoremap <c-w>- :sp<cr>
" Window Reszie
nnoremap <c-w><c-j>    :resize -5<CR>
nnoremap <c-w><c-k>    :resize +5<CR>
nnoremap <c-w><c-h>    :vertical resize -5<CR>
nnoremap <c-w><c-l>    :vertical resize +5<CR>







"======File Menu
" Quit All no save
nnoremap <m-Q> :qa!<CR>
" Save and Quit All
nnoremap <m-q> :wqa!<CR>
" Save file
nnoremap <m-s> :w<CR>
" Save All Files
nnoremap <m-S> :wa<CR>

"======Restore Session
nnoremap <c-w><c-s> :source ~/.config/nvim/custom/session.vim<CR>
"======Save Sessions
nnoremap <c-m-s> :mks! ~/.config/nvim/custom/session.vim<CR>


"======Source Files
nnoremap <Leader>i :source $MYVIMRC<CR>
"======Open Files
nnoremap <Leader>ei :e $MYVIMRC<CR>

"======Go to directories
nnoremap zl :! ls -lF<CR>
nnoremap zp :pwd<CR>
nnoremap zu :cd ..<CR>
nnoremap zr :cd ~<CR>
nnoremap zt :cd $Text<CR>
nnoremap zd :cd $Documents<CR>
nnoremap zg :cd $Git<CR>
nnoremap zc :cd $HOME/.config<CR>


"--------------------------------------
"--------------------------------------
"---------------Not Used---------------
"--------------------------------------
"--------------------------------------
" Change Backspace for Delete charactor
"nnoremap <BS> x
" Change Backspace for Delete charactor
"nnoremap <DEL> X

"======Change ESC
"inoremap jk <Esc>
"inoremap kj <Esc>
"vnoremap jk <Esc>
"vnoremap kj <Esc>

"" Better nav for omnicomplete
"inoremap <expr> <c-j> ("\<C-n>")
"inoremap <expr> <c-k> ("\<C-p>")
"
"" Use alt + hjkl to resize windows
"nnoremap <M-j>    :resize -2<CR>
"nnoremap <M-k>    :resize +2<CR>
"nnoremap <M-h>    :vertical resize -2<CR>
"nnoremap <M-l>    :vertical resize +2<CR>
"
"" I hate escape more than anything else
"inoremap jk <Esc>
"inoremap kj <Esc>
"
"" Easy CAPS
"inoremap <c-u> <ESC>viwUi
"nnoremap <c-u> viwU<Esc>
"
"" TAB in general mode will move to text buffer
"nnoremap <TAB> :bnext<CR>
"" SHIFT-TAB will go back
"nnoremap <S-TAB> :bprevious<CR>
"
"" Alternate way to save
"nnoremap <C-s> :w<CR>
"" Alternate way to quit
"nnoremap <C-Q> :wq!<CR>
"" Use control-c instead of escape
"nnoremap <C-c> <Esc>
"" <TAB>: completion.
"inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
"
"" Better tabbing
"vnoremap < <gv
"vnoremap > >gv
"
"" Better window navigation
"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l
"
"nnoremap <Leader>o o<Esc>^Da
"nnoremap <Leader>O O<Esc>^Da

"======Set Ecs Key
"inoremap <m-d> <Esc>
