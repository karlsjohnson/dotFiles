"======Neovim Plugin Config File======
"======Comfortable Motion======



"======Shortcuts======


let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"
nnoremap <silent> J :call comfortable_motion#flick(100)<CR>
nnoremap <silent> K :call comfortable_motion#flick(-100)<CR>
"noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(40)<CR>
"noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-40)<CR>
