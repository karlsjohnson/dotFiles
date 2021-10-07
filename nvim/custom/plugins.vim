"--------------------------------------
"--------------------------------------
"-------Neovim Plugin settings---------
"--------------------------------------
"--------------------------------------

"--------------------------------------
"-------------Vim-Airline--------------
"--------------------------------------

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" enable tabline
let g:airline#extensions#tabline#enabled = 1

" enable powerline fonts
let g:airline_powerline_fonts = 1

" Always show tabs
set showtabline=2

let g:airline#extensions#cursormode#enabled = 1
let g:airline#extensions#fzf#enabled = 1
let g:airline_detect_modified=1

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

"""----VIM CHANGE----
"Turning off because of an error in vim 8.2, not needed in neovim
"let g:airline#extensions#searchcount#enabled = 0

"--------------------------------------
"---------------Vim-FZF----------------
"--------------------------------------

"open files under current directories
"nnoremap gf :FZF<CR>
nnoremap <m-o> :Files<CR>

"Search markdown headers
"autocmd FileType markdown.pandoc nnoremap <buffer> gh :BLines #<CR>
nnoremap <m-h> :BLines #<CR>
nnoremap ga :Ag


"--------------------------------------
"------------Vim-Markldown-------------
"--------------------------------------

"======Shortcuts======
nnoremap <Leader>mf :TableFormat<CR>
nnoremap <Leader>mt :Toch<CR>
nnoremap <Leader>mv :Tocv<CR>


" Disable folding (can re-enable during with key command below)
let g:vim_markdown_folding_disabled = 1
" Set default fold with file open
let g:vim_markdown_folding_level = 6

" Set option to conceal markdown syntax
let g:vim_markdown_conceal = 1
set conceallevel=2

" Set option to follow link on page
let g:vim_markdown_follow_anchor = 1

" Set indent number of spaces options
let g:vim_markdown_new_list_item_indent = 2

" Enable strikethrough
let g:vim_markdown_strikethrough = 1

" Set default file
let g:vim_markdown_auto_extension_ext = 'md'

" Enable follow anchor
let g:vim_markdown_follow_anchor = 1

" save edits before following link
let g:vim_markdown_autowrite = 1

"open file in new tab
let g:vim_markdown_edit_url_in = 'tab'

"--------------------------------------
"---------comfortable-motion-----------
"--------------------------------------

nnoremap <silent> <C-d> :call comfortable_motion#flick(400)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(-400)<CR>

nnoremap <silent> <C-f> :call comfortable_motion#flick(800)<CR>
nnoremap <silent> <C-b> :call comfortable_motion#flick(-800)<CR>

let g:comfortable_motion_friction = 600.0
let g:comfortable_motion_air_drag = 4.0
