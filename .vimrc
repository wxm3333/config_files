set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
set hlsearch
set smartcase
set smarttab
set shiftwidth=4
set tabstop=4
set expandtab
filetype indent on 
set wildmenu
set showmatch
set backspace=indent,eol,start

set ai
set si
set wrap


nnoremap j gj
nnoremap k gk

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
map <C-h> <C-W>h

hi Special ctermfg=red " for query specific keywords
hi Underlined ctermfg=magenta cterm=bold " for local variables
