"======Neovim Plugin Config File======
"======Markdown======


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


"======Shortcuts======
nnoremap <Leader>mf :TableFormat<CR>
nnoremap <Leader>mt :Toch<CR>
nnoremap <Leader>mv :Tocv<CR>