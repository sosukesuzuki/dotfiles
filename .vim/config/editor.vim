set fenc=utf-8
set nobackup
set noswapfile
set hidden
set showcmd
set clipboard=unnamed,autoselect

set laststatus=2
set t_Co=254

set number
set cursorline
set virtualedit=onemore
set smartindent
set visualbell
set showmatch
set wildmode=list:longest
nnoremap j gj
nnoremap k gk

set term=xterm-256color

set list listchars=tab:\▸\-
set expandtab
set tabstop=2
set shiftwidth=2

set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch

set backspace=indent,eol,start
autocmd BufRead,BufNewFile *.es6 setfiletype javascript
syntax on
