" Setting for plugin
let g:jsx_ext_required = 0

"{{ Font
let g:enable_italic_font = 1
let g:enable_bold_font = 1
"}}

"{{ Theme
if (has("autocmd"))
  augroup colorextend
    autocmd!
    " Make `Function`s bold in GUI mode
    autocmd ColorScheme * call onedark#extend_highlight("Function", { "gui": "bold" })
    " Override the `Statement` foreground color in 256-color mode
    autocmd ColorScheme * call onedark#extend_highlight("Statement", { "fg": { "cterm": 128 } })
    " Override the `Identifier` background color in GUI mode
    autocmd ColorScheme * call onedark#extend_highlight("Identifier", { "bg": { "gui": "#333333" } })
  augroup END
endif


let g:onedark_termcolors=256
colorscheme onedark

"{{ Rainbow_active
let g:rainbow_active = 1
"}}

"{{ NERDTree
"
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

noremap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeShowLineNumbers=0
let g:NERDTreeShowHidden=1
let g:NERDTreeWinSize=30
let g:NERDTreeDirArrowExpandable="▶︎"
let g:NERDTreeDirArrowCollapsible="▼"
let g:NERDTreeGitStatusConcealBrackets = 0 " default: 0
let g:NERDTreeIgnore=["\.git", "node_modules", "vendor", "dist", ".idea"] 

let g:NERDTreeHighlightCursorline = 0
let g:NERDTreeHighlightFolders = 1 

" git status indicator
let g:NEDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'⁙ ',
                \ 'Staged'    :'+ ',
                \ 'Untracked' :'✭ ',
                \ 'Renamed'   :'⨱ ',
                \ 'Unmerged'  :'⇉ ',
                \ 'Deleted'   :'⋈ ',
                \ 'Dirty'     :'↯ ',
                \ 'Ignored'   :'◌ ',
                \ 'Clean'     :' ',
                \ 'Unknown'   :'ʡ '
                \ }
" Anoying things witg square backet in nerdtree
augroup nerdtree
  autocmd!
  autocmd FileType nerdtree syntax clear NERDTreeFlags
  autocmd FileType nerdtree syntax match hideBracketsInNerdTree "\]" contained conceal containedin=ALL
  autocmd FileType nerdtree syntax match hideBracketsInNerdTree "\[" contained conceal containedin=ALL
  autocmd FileType nerdtree setlocal conceallevel=3
  autocmd FileType nerdtree setlocal concealcursor=nvic
augroup END
"}}

"{{ Airline 
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts=1
let g:airline#extensions#whitespace#enabled=0
let g:airline#extensions#whitespace#formatter='unique_tail'

"enable show brach name
"let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#hunks#coc_git=1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" Airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.colnr = ' ㏇:'
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' ﬌'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty = ' ⚡'
let g:airline_symbols.paste = 'ρ'
let g:airline_mode_map = {
  \ '__'     : '-',
  \ 'c'      : 'C',
  \ 'i'      : 'I',
  \ 'ic'     : 'I',
  \ 'ix'     : 'I',
  \ 'n'      : 'N',
  \ 'multi'  : 'M',
  \ 'ni'     : 'N',
  \ 'no'     : 'N',
  \ 'R'      : 'R',
  \ 'Rv'     : 'R',
  \ 's'      : 'S',
  \ 'S'      : 'S',
  \ ''     : 'S',
  \ 't'      : 'T',
  \ 'v'      : 'V',
  \ 'V'      : 'V',
  \ ''     : 'V',
  \ }
"}}

"{{ Autor Pairs 
let g:AutoPairsShortcutToggle = ''  
"}}

"{{ Auto close tage
let g:closetag_filenames = '*.html,*.jsx,*.tsx,*.js,*.vue'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js,*.vue'
let g:closetag_filetypes = 'html,js,xhtml,phtml,jsx,tsx,vue'
let g:closetag_xhtml_filetypes = 'xhtml,jsx,tsx,js,vue'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'
"}}


"FZF {{
let $FZF_DEFAULT_COMMAND="fd --type file --follow --hidden --exclude .git"

noremap <silent> <C-f> :Files<CR>
noremap <silent> <M-f> :Rg<CR>

command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)
set grepprg=rg\ --vimgrep\ --smart-case\ --follow " Use ripgrep instead of grep
"}}

"{{ Tmux and vim navigation
let g:tmux_navigator_no_mappings = 1
let g:tmux_navigator_save_on_switch = 2
let g:tmux_navigator_disable_when_zoomed = 1

nnoremap <silent> <C-h> <Cmd>TmuxNavigateLeft<CR>
nnoremap <silent> <C-j> <Cmd>TmuxNavigateDown<CR>
nnoremap <silent> <C-k> <Cmd>TmuxNavigateUp<CR>
nnoremap <silent> <C-l> <Cmd>TmuxNavigateRight<CR>
"}}

"{{ Tmux and vim resize 
let g:tmux_resizer_no_mappings = 1
let g:tmux_resizer_resize_count = 2
let g:tmux_resizer_vertical_resize_count = 2

nnoremap <silent> <M-h> :TmuxResizeLeft<CR>
nnoremap <silent> <M-j> :TmuxResizeDown<CR>
nnoremap <silent> <M-k> :TmuxResizeUp<CR>
nnoremap <silent> <M-l> :TmuxResizeRight<CR>
"}}"


"{{ Windown submode

" A message will appear in the message line when you're in a submode
" and stay there until the mode has existed.
let g:submode_always_show_submode = 1

" We're taking over the default <C-w> setting. Don't worry we'll do
" our best to put back the default functionality.
call submode#enter_with('window', 'n', '', '<C-w>')

" Note: <C-c> will also get you out to the mode without this mapping.
" Note: <C-[> also behaves as <ESC>
call submode#leave_with('window', 'n', '', '<ESC>')

" Go through every letter
for key in ['a','b','c','d','e','f','g','h','i','j','k','l','m',
\           'n','o','p','q','r','s','t','u','v','w','x','y','z']
  " maps lowercase, uppercase and <C-key>
  call submode#map('window', 'n', '', key, '<C-w>' . key)
  call submode#map('window', 'n', '', toupper(key), '<C-w>' . toupper(key))
  call submode#map('window', 'n', '', '<C-' . key . '>', '<C-w>' . '<C-'.key . '>')
endfor

" Go through symbols. Sadly, '|', not supported in submode plugin.
for key in ['=','_','+','-','<','>']
  call submode#map('window', 'n', '', key, '<C-w>' . key)
endfor
"}}
" {{ [barbar.vim] Buffer manipulate
" Move around buffers previous/next
" NOTE: If barbar's option dict isn't created yet, create it
"let bufferline = get(g:, 'bufferline', {})
"let bufferline.icon_pinned = ''
lua << EOF
    require'barbar'.setup {
        icons = {
            pinned = {button = '', filename = true},
        },
    }
EOF

nnoremap <M-left> :BufferPrevious<CR>
nnoremap <M-right> :BufferNext<CR>

" Re-order to previous/next
nnoremap <silent> <M-<> :BufferMovePrevious<CR>
nnoremap <silent> <M->> :BufferMoveNext<CR>

" Pin/unpin buffer
nnoremap <silent> <M-p> :BufferPin<CR>

" Close buffer
nnoremap <silent> <M-c> :BufferClose<CR>

" Magic buffer-picking mode
nnoremap <silent> <M-s> :BufferPick<CR>

" Sort automatically by...
nnoremap <silent> <leader>bb :BufferOrderByBufferNumber<CR>
nnoremap <silent> <leader>bd :BufferOrderByDirectory<CR>
nnoremap <silent> <leader>bl :BufferOrderByLanguage<CR>
nnoremap <silent> <leader>bw :BufferOrderByWindowNumber<CR>
" }}
