"======Neovim Plugin Config File======
"======FZF======




"======Shortcuts======


"open files under current directories
"nnoremap gf :FZF<CR>
nnoremap go :Files<CR>

"Search markdown headers
"autocmd FileType markdown.pandoc nnoremap <buffer> gh :BLines #<CR>
nnoremap gh :BLines #<CR>
nnoremap ga :Ag 




