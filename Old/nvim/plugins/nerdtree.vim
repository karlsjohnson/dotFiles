"======Neovim Plugin Config File======
"======NERDTree======

" Closing automatically
let NERDTreeQuitOnOpen = 1
" Automatically delete the buffer of the file you just deleted with NerdTree
let NERDTreeAutoDeleteBuffer = 1




"Turn off nerd tree on open folder open
"let g:NERDTreeHijackNetrw = 0
"autocmd StdinReadPre * let s:std_in=1

" If no file in vim, open with nerdTree
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


"======Shortcuts======

"Map NerdTree to open
nnoremap <m-b> :NERDTreeToggle<CR>
"Map NerdTreeFind to open
nnoremap <m-B> :NERDTreeFind<CR>
