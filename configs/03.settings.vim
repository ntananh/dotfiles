" Setting for plugin
let g:jsx_ext_required = 0

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
  augroup ENd
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
noremap <M-r> :NERDTreeRefreshRoot<CR>
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let g:NERDTreeShowLineNumbers=0
let g:NERDTreeShowHidden=1
let g:NERDTreeWinSize=30
let g:NERDTreeGitStatusUseNerdFonts=1 " should install nerd font
let g:NERDTreeGetStatusConcealBrackets=1
let g:NERDTreeIgnore=["\.git", "node_modules", "vendor", "dist", ".idea"] 
let g:nerdtree_sync_cursorline = 1
let g:NERDTreeHighlightCursorline = 1

" file highlight
let g:NERDTreeFileExtentionHighlightFullName=1
let g:NERDTreeExactMatchHighlightFullName=1
let g:NERDTreeFileExtensionHighlightFullName=1

" git status indicator
let g:NEDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :' ✹',
                \ 'Staged'    :' ✚',
                \ 'Untracked' :' ✭',
                \ 'Renamed'   :' ➜',
                \ 'Unmerged'  :' ═',
                \ 'Deleted'   :' ✖',
                \ 'Dirty'     :' ✗',
                \ 'Ignored'   :' ☒',
                \ 'Clean'     :' ',
                \ 'Unknown'   :' ?'
                \ }
"}}


"{{ Airline 
let g:airline_theme='deus'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#buffer_nr_show=1
let g:airline#extensions#whitespace#enabled=0
let g:airline#extensions#whitespace#formatter='unique_tail'

"enable show brach name
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#hunks#coc_git=1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '  '
let g:airline_symbols.dirty = ' ⚡'
"}}

"{{ Auto close tage
let g:closetag_filenames = '*.html,*.jsx,*.tsx,*.js,*.vue'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js,*.vue'
let g:closetag_filetypes = 'html,js,xhtml,phtml,jsx,tsx,vue'
let g:closetag_xhtml_filetypes = 'xhtml,jsx,tsx,js,vue'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'
"}}

"{{ Font
let g:enable_italic_font = 1
let g:enable_bold_font = 1

"}}

"{{ Dashboard
let g:dashboard_custom_header = [
\ ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
\ ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
\ ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
\ ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
\ ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
\ ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
\]

"}}
