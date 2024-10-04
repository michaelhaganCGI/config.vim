
" Settings / Definitions {

    " Settings
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

    " Definitions & Misc.
    let mapleader = " "
    let &t_SI = "\e[5 q"
    let &t_EI = "\e[1 q"
    let g:netrw_banner = 0
    let g:netrw_localcopydircmd = 'cp -r'
    filetype on
    filetype plugin on
    filetype indent on
    syntax on
    colorscheme habamax
    hi CursorLine cterm=none

"}

" Keymappings {

    " Leader Mappings
    nnoremap <Leader>v :windo diffthis<CR>
    nnoremap <silent> <Leader>e :Explore %:p:h<CR>
    nnoremap <silent> <Leader>n :bnext<CR>
    nnoremap <silent> <Leader>p :bprevious<CR>
    nnoremap <silent> <Leader>d :bdelete<CR>
    nnoremap <silent> <Leader>D :bdelete!<CR>
    nnoremap <silent> <Leader>w :w<CR>
    nnoremap <silent> <Leader>q :q<CR>
    nnoremap <silent> <Leader>Q :qall!<CR>

    " Keyboard Mappings
    nnoremap <silent> <esc> :noh<cr><esc>
    nnoremap <silent> <PageDown> :bnext<CR>
    nnoremap <silent> <PageUp> :bprevious<CR>
    nnoremap <silent> <C-PageDown> :bdelete<CR>
    nnoremap <silent> <C-PageUp> :bfirst<CR>
    nnoremap <silent> <Tab> :bnext<CR>
    nnoremap <silent> <S-Tab> :bprevious<CR>
    noremap <C-h> <C-w>h
    noremap <C-j> <C-w>j
    noremap <C-k> <C-w>k
    noremap <C-l> <C-w>l

"}

" Autocmds {

    " Netrw automatic buffer deletion
    augroup netrw
        autocmd!
        autocmd FileType netrw setlocal bufhidden=wipe
    augroup end

    " Yank maintaining cursor position
    augroup yank_restore_cursor
        autocmd!
        autocmd VimEnter,CursorMoved *
            \ let s:cursor = getpos('.')
        autocmd TextYankPost *
            \ if v:event.operator ==? 'y' |
                \ call setpos('.', s:cursor) |
            \ endif
    augroup END

"}
