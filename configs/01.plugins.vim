" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin(stdpath('config').'/autoload/plugged')

" Coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Nerd :))
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'scrooloose/nerdcommenter'
Plug 'unkiwii/vim-nerdtree-sync'

" Auto close pairs and tag
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'luochen1990/rainbow' "rainbow bracket

" Theme
Plug 'joshdick/onedark.vim' " Onedark theme
Plug 'https://github.com/vim-airline/vim-airline' " Status bar

" Vim airline
Plug 'vim-airline/vim-airline-themes' " Status bar theme
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-surround' " Surround
Plug 'glepnir/dashboard-nvim'

" color preview
Plug 'gko/vim-coloresque'

" Plug for React
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

"Terminal
Plug 'voldikss/vim-floaterm'
Plug 'tpope/vim-fugitive'

call plug#end()

