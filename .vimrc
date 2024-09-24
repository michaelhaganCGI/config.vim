set nocompatible
set belloff=all
set showcmd
set number
set relativenumber
set mouse=a
set clipboard=
set shiftwidth=4
set tabstop=4
set expandtab
set scrolloff=10
set nowrap
set incsearch
set ignorecase
set smartcase
set showmode
set showmatch
set hlsearch
set history=1000
set cursorline
set shortmess-=S

set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

let mapleader = " "
nnoremap <Leader>e :Explore<CR>

nnoremap <PageDown>   :bnext<CR>
nnoremap <PageUp>     :bprevious<CR>
nnoremap <C-PageDown> :bdelete<CR>
nnoremap <C-PageUp>   :bfirst<CR>

" Clear highlighting on escape in normal mode
nnoremap <esc> :noh<cr><esc>
nnoremap <esc>^[ <esc>^[

let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"

filetype on
filetype plugin on
filetype indent on

syntax on
colorscheme habamax

