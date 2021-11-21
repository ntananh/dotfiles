let mapleader = "\<Space>"

set list
set listchars=tab:\\ ,eol:¬,trail:⋅
filetype off
filetype plugin on
filetype plugin indent on
set guifont=FiraCode\ Nerd\ Font:14
set nocompatible

syntax on
set termguicolors
set encoding=UTF-8
set mouse=a
set scroll=10

set history=1000
set undolevels=1000


"Search setting {{
set incsearch
set hlsearch
"set updatetime=500
"}}
"
"}}
set splitbelow
set splitright
set number relativenumber
set ignorecase
set autoindent
set smartcase
set smartindent

set noexpandtab
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2

autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType css setlocal ts=2 sts=2 sw=2
autocmd FileType javascript setlocal ts=2 sts=2 sw=2

set lazyredraw
set nobackup
set noswapfile
set nowrap

set visualbell
set noerrorbells

"imap
inoremap jk <esc>

" nmap
noremap L $
noremap H ^
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
nnoremap <C-w>M <C-W>\| <C-W>_   
nnoremap <C-w>m <C-W>= 
"vmap
vnoremap jk <esc>
vnoremap L $
vnoremap H ^


"splits and tabled files
noremap <C-j> <C-w><C-j>
noremap <C-k> <C-w><C-k>
noremap <C-l> <C-w><C-l>
noremap <C-h> <C-w><C-h>

noremap <C-v> "*p

noremap <silent> <C-left> :vertical resize +3<CR>
noremap <silent> <C-right> :vertical resize -3<CR>
noremap <silent> <C-up> :resize +3<CR>
noremap <silent> <C-down> :resize -3<CR>

" change 2 split windowns from vert to horiz or horiz to vert
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

"copy/pase
vnoremap < <gv
vnoremap > >gv
"vnoremap <silent> y y:call ClipboardYank()<cr>
"vnoremap <silent> d d:call ClipboardYank()<cr>
"nnoremap <silent> p :call ClipboardPaste()<cr>p



