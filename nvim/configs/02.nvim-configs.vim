let mapleader = "\<Space>"

syntax on
colorscheme onedark

set list
set listchars=tab:»\ ,trail:-,eol:¬,space:·

filetype off
filetype plugin on
filetype plugin indent on

set hidden
set nocompatible
set tabpagemax=100

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
"}}

" Highlight current line{{
set cursorline
set cursorcolumn
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#333333 ctermbg=234
"}}

set splitbelow
set splitright
set autoindent
set smartindent
set number relativenumber

set expandtab
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

"imap
inoremap jk <esc>

" nmap
noremap L $
noremap H ^
nnoremap ; :
noremap <esc><esc> :nohlsearch<CR>

"vmap
vnoremap L $
vnoremap H ^
vnoremap jk <esc>

" Slit and tabled files mapping {{
" Map for split windown
nnoremap ,v <C-w>v 
nnoremap ,h <C-w>s 
nnoremap ,c <C-w>c
nnoremap <C-w>h <C-W>\| <C-W>_  
nnoremap <C-w>e <C-W>= 
" change 2 split windowns from vert to horiz or horiz to vert
map <leader>th <C-w>t<C-w>H
map <leader>tk <C-w>t<C-w>K
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
" replace and put back to register
xnoremap <leader>p "_dP
"}}

" Search selected text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" Move line up and down
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Compile and run C++/C code
nnoremap <silent> <leader>r :w<CR>:!g++ % -o %:r && ./%:r<CR>
nnoremap <silent> <leader>rc :w<CR>:!gcc % -o %:r && ./%:r<CR>
