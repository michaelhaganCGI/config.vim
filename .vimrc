set nocompatible
set belloff=all
set showcmd
set number
set relativenumber
set mouse=a
set clipboard=
set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent
set smartindent
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
set termguicolors

set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

let mapleader = " "
nnoremap <silent> <Leader>e :Explore %:p:h<CR>
nnoremap <silent> <Leader>n :bnext<CR>
nnoremap <silent> <Leader>p :bprevious<CR>
nnoremap <silent> <Leader>d :bdelete<CR>

nnoremap <silent> <PageDown> :bnext<CR>
nnoremap <silent> <PageUp> :bprevious<CR>
nnoremap <silent> <C-PageDown> :bdelete<CR>
nnoremap <silent> <C-PageUp> :bfirst<CR>
nnoremap <silent> <esc> :noh<cr><esc>

let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"

filetype on
filetype plugin on
filetype indent on

syntax on
colorscheme habamax
