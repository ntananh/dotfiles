" neovide specific
function Neovide_fullscreen()
    if g:neovide_fullscreen == v:true
        let g:neovide_fullscreen=v:false
    else
        let g:neovide_fullscreen=v:true
    endif
endfunction

if exists("g:neovide")
	set guifont=JetBrainsMono\ Nerd\ Font\ Mono:h12
	set guitablabel=\[%N\]\ %t\ %M
	map <F11> :call Neovide_fullscreen()<cr>
endif


" Temperory till, neovide resolves the blur issues
let g:neovide_window_floating_opacity = 0
let g:neovide_floating_blur = 0
let g:neovide_floating_opacity = 0.9

let g:neovide_hide_mouse_when_typing = v:true

let g:neovide_cursor_trail_size = 0.0

