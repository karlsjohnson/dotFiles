"======Neovim Commands Shortcut File======

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
" Move to Beginning of line
nnoremap H 0
" Move End of line
nnoremap L $


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


"======Buffers
" Next Buffer
nnoremap <Tab> :bnext<CR>
" Previous Buffer
nnoremap <S-TAB> :bprevious<CR>
" Close Buffer
nnoremap db :bd!<CR>
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
nnoremap ZZ :qa!<CR>
nnoremap <m-q> :qa!<CR>
" Save and Quit All
nnoremap ZS :wqa!<CR>
" Save file
nnoremap zs :w<CR>
" Save All Files
nnoremap zS :wa<CR>
nnoremap <m-s> :wa<CR>







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
nnoremap <Leader>fs :e $Text/Write/Start.md<CR>
nnoremap <Leader>fl :e $Text/Write/Links.md<CR>
nnoremap <Leader>fi :e $Git/dotFiles/root/initrc.sh<CR>
nnoremap <Leader>fe :e $Git/dotFiles/root/initEnv.sh<CR>
nnoremap <Leader>fx :e $Git/dotFiles/root/tmuxrc.conf<CR>
nnoremap <Leader>fa :e $Scripts/act.sh<CR>


"======Go to directories
nnoremap <Leader>dl :pwd<CR>
nnoremap <Leader>dr :cd ~<CR>
nnoremap <Leader>dt :cd $Text<CR>
nnoremap <Leader>dd :cd ~/Documents<CR>
nnoremap <Leader>dw :cd $Downloads<CR>
nnoremap <Leader>dg :cd $Git<CR>
nnoremap <Leader>dp :cd ~/Desktop<CR>

