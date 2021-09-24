"======Neovim Plugin Config File======
"======Comfortable Motion======



"======Shortcuts======


let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"
nnoremap <silent> <c-d> :call comfortable_motion#flick(100)<CR>
nnoremap <silent> <c-u> :call comfortable_motion#flick(-100)<CR>
nnoremap <silent> <c-s-d> :call comfortable_motion#flick(200)<CR>
nnoremap <silent> <c-s-u> :call comfortable_motion#flick(-200)<CR>
"noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(40)<CR>
"noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-40)<CR>
