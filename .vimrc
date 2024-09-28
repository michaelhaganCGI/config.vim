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
set autoread
set hidden
set termguicolors

set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

let mapleader = " "
nnoremap <silent> <Leader>e :Explore %:p:h<CR>
nnoremap <silent> <Leader>n :bnext<CR>
nnoremap <silent> <Leader>p :bprevious<CR>
nnoremap <silent> <Leader>d :bdelete<CR>
nnoremap <silent> <Leader>D :bdelete!<CR>
nnoremap <silent> <Leader>w :w<CR>
nnoremap <silent> <Leader>q :q<CR>
nnoremap <silent> <Leader>Q :qall!<CR>

nnoremap <silent> <PageDown> :bnext<CR>
nnoremap <silent> <PageUp> :bprevious<CR>
nnoremap <silent> <C-PageDown> :bdelete<CR>
nnoremap <silent> <C-PageUp> :bfirst<CR>
nnoremap <silent> <Tab> :bnext<CR>
nnoremap <silent> <S-Tab> :bprevious<CR>
nnoremap <silent> <esc> :noh<cr><esc>

" Status Line {
    set laststatus=2                             " always show statusbar
    set statusline=
    set statusline+=%-10.3n\                     " buffer number
    set statusline+=%f\                          " filename
    set statusline+=%h%m%r%w                     " status flags
    set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type
    set statusline+=%=                           " right align remainder
    set statusline+=0x%-8B                       " character value
    set statusline+=%-14(%l,%c%V%)               " line, character
    set statusline+=%<%P                         " file position
"}

let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"

filetype on
filetype plugin on
filetype indent on

syntax on
colorscheme habamax

augroup yank_restore_cursor
    autocmd!
    autocmd VimEnter,CursorMoved *
        \ let s:cursor = getpos('.')
    autocmd TextYankPost *
        \ if v:event.operator ==? 'y' |
            \ call setpos('.', s:cursor) |
        \ endif
augroup END
