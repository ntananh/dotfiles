" neovide specific
function Neovide_fullscreen()
    if g:neovide_fullscreen == v:true
        let g:neovide_fullscreen=v:false
    else
        let g:neovide_fullscreen=v:true
    endif
endfunction

if exists("g:neovide")
	set guifont=JetBrainsMono\ Nerd\ Font\ Mono:h11
	set guitablabel=\[%N\]\ %t\ %M
	map <F11> :call Neovide_fullscreen()<cr>
endif

" Temperory till, neovide resolves the blur issues
let g:neovide_refresh_rate = 120
let g:neovide_cursor_trail_size = 0.2
let g:neovide_hide_mouse_when_typing = v:true




