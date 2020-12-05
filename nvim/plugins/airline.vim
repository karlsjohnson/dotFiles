"======Neovim Plugin Config File======
"======Vim-Airline======


" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" enable tabline
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ''
"let g:airline#extensions#tabline#left_alt_sep = ''
"let g:airline#extensions#tabline#right_sep = ''
"let g:airline#extensions#tabline#right_alt_sep = ''

" enable powerline fonts
let g:airline_powerline_fonts = 1
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''

" Switch to your current theme
let g:airline_theme = 'onedark'
"let g:airline_theme='wombat'

" Always show tabs
set showtabline=2

" We don't need to see things like -- INSERT -- anymore
"set noshowmode


let g:airline#extensions#cursormode#enabled = 1
let g:airline#extensions#fzf#enabled = 1
let g:airline_detect_modified=1

"set hidden
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#formatter = 'unique_tail_improved'


" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1





"""----VIM CHANGE---- 
"Turning off because of an error in vim 8.2, not needed in neovim
"let g:airline#extensions#searchcount#enabled = 0
