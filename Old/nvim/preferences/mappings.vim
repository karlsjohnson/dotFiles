"======Neovim Commands Shortcut File======
" Map Guide and exmaples
" m - option key
" s - shift key or just use capital v vs V
" c - control key
" no command key - use bettertouchtool
"Use multiple mod keys exmaples below
"nnoremap <m-c-s-F> :m -2<CR>

"======Set Leader Key
let mapleader = "\<Space>"

"======Set Ecs Key
inoremap <m-d> <Esc>


"======Change ESC
"inoremap jk <Esc>
"inoremap kj <Esc>
"vnoremap jk <Esc>
"vnoremap kj <Esc>


"======Set Movement
" Move to Beginning/End of line Normal Mode
nnoremap H 0
nnoremap L $
" Middle of line
nnoremap M gm
" Move Line down/up
nnoremap <m-down> :m +1<CR>
nnoremap <m-up> :m -2<CR>
" Copy Line Down/Up
nnoremap <m-s-up> yyP
nnoremap <m-s-down> yyp
" Move to Beginning/End of line Insert Mode
inoremap <m-$> <C-o>$
inoremap <m-^> <C-o>^
" Move Next/Previous Word Inser Mode
inoremap <m-right> <c-o>w
inoremap <m-left> <c-o>b
" Change tab keys
nnoremap <m-,> <<
nnoremap <m-.> >>
inoremap <m-,> <C-d>
inoremap <m-.> <C-T>
" Change undo to match VSC
nnoremap <m-z> u
nnoremap <m-Z> <c-r>


"======Use delete key instead of X
" Change Backspace for Delete charactor
nnoremap <BS> x
" Change Backspace for Delete charactor
nnoremap <DEL> X



"======General Keys
"Clear Search Selection
nnoremap <m-c> :noh<cr>
"Move Join lines command
nnoremap zj J
"Toggle Word Wrap
nnoremap zw :set wrap!<CR>
" Better tabbing
vnoremap < <gv
vnoremap > >gv
nnoremap <c-p> <m-p> 

"======Buffers
" Next Buffer
nnoremap <Tab> :bnext<CR>
" Previous Buffer
nnoremap <S-TAB> :bprevious<CR>
" Close Buffer
nnoremap <m-w> :bd!<CR>
" Close Buffer, Switch to previous
nnoremap dc :bprevious<CR>:bdelete #<CR>
" List Buffers
nnoremap gb :Buffers<CR>




"======Tabs
" New Tab
nnoremap gN :tabnew<CR>
" Tab Close
nnoremap dt :tabclose<CR>
" Move Line down
nnoremap gj :m .+1<CR>
" Move Line up
nnoremap gk :m .-2<CR>
" Goto Tab 1
nnoremap g1 1gt
nnoremap g2 2gt
nnoremap g3 3gt
nnoremap g4 4gt
nnoremap g5 5gt
nnoremap g6 6gt

"======Windows
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
nnoremap <m-q> :qa!<CR>
" Save and Quit All
nnoremap <m-Q> :wqa!<CR>
" Save file
nnoremap <m-s> :w<CR>
" Save All Files
nnoremap <m-S> :wa<CR>






"======Restore Session
nnoremap <Leader>src :source ~/.config/nvim/sessions/current.vim<CR>
nnoremap <Leader>srd :source ~/.config/nvim/sessions/dotfiles.vim<CR>
nnoremap <Leader>srg :source ~/.config/nvim/sessions/git.vim<CR>
nnoremap <Leader>srw :source ~/.config/nvim/sessions/write.vim<CR>


"======Save Sessions
nnoremap <Leader>ssc :mks! ~/.config/nvim/sessions/current.vim<CR>
nnoremap <Leader>ssd :mks! ~/.config/nvim/sessions/dotfiles.vim<CR>
nnoremap <Leader>ssg :mks! ~/.config/nvim/sessions/git.vim<CR>
nnoremap <Leader>ssw :mks! ~/.config/nvim/sessions/write.vim<CR>


"======Source Files
nnoremap <Leader>sv :source $MYVIMRC<CR>


"======Open Files
nnoremap <Leader>fv :e $MYVIMRC<CR>
nnoremap <Leader>fi :e $Git/dotFiles/root/initrc.sh<CR>
nnoremap <Leader>fe :e $Git/dotFiles/root/initEnv.sh<CR>
nnoremap <Leader>fx :e $Git/dotFiles/root/tmuxrc.conf<CR>
nnoremap <Leader>fa :e $Scripts/act.sh<CR>


"======Go to directories
nnoremap <Leader>ls :pwd<CR>
nnoremap <Leader>cdr :cd ~<CR>
nnoremap <Leader>cdt :cd $Text<CR>
nnoremap <Leader>cdw :cd $Downloads<CR>
nnoremap <Leader>cdg :cd $Git<CR>
nnoremap <Leader>cddf :cd $Git/dotfiles<CR>
nnoremap <Leader>cdth :cd $Git/thoughts<CR>
nnoremap <Leader>cdnb :cd $Git/notebook<CR>

