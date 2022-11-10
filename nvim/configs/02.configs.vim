let mapleader = "\<Space>"

syntax on
colorscheme onedark

set list
set listchars=eol:¬,trail:⋅

filetype off
filetype plugin on
filetype plugin indent on

set hidden
set nocompatible
set tabpagemax=100
set guitablabel=\[%N\]\ %t\ %M

set mouse=a
set scroll=10
set termguicolors
set encoding=UTF-8
set clipboard=unnamedplus

set history=1000
set undolevels=1000

"Search setting {{
set hlsearch
set smartcase
set incsearch
set ignorecase
"set updatetime=500
"}}

set splitbelow
set splitright
set autoindent
set smartindent
set number relativenumber

set noexpandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Folding
set foldmethod=syntax
set foldnestmax=10
set nofoldenable
set foldlevel=2

set lazyredraw
set nobackup
set noswapfile
set nowrap

set visualbell
set noerrorbells

" change 2 split windowns from vert to horiz or horiz to vert
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

" move around buffers
map <M-right> :bn<CR>
map <M-left> :bp<CR>
map <M-d> :bd<CR>

"imap
inoremap jk <esc>

" nmap
noremap L $
noremap H ^

"vmap
vnoremap L $
vnoremap H ^
vnoremap jk <esc>

" Slit and tabled files mapping {{
"splits and tabled files, move around tabs
" noremap <C-j> <C-w><C-j>
" noremap <C-k> <C-w><C-k>
" noremap <C-l> <C-w><C-l>
" noremap <C-h> <C-w><C-h>

" map for split buffers
nnoremap ,v <C-w>v 
nnoremap ,s <C-w>s 
nnoremap ,c <C-w>c
nnoremap <C-w>h <C-W>\| <C-W>_  
nnoremap <C-w>e <C-W>= 

" resize split windowns
" nnoremap <M-k> :res +2<CR>
" nnoremap <M-j> :res -2<CR>
" nnoremap <M-l> :vertical res +2<CR>
" nnoremap <M-h> :vertical res -2<CR>
"}}

" Copy/pase {{
" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P 
vnoremap <leader>p "+p
vnoremap <leader>P "+P
"}}

" Search selected text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" Remove highlight
noremap <silent> <esc> :nohlsearch <CR>

" Mapping configs for FZF {{
noremap <silent> <C-f> :Files<CR>
noremap <silent> <M-f> :Rg<CR>
" }}
