" VIM CONFIG FILE

" Pathogen plugin manager
execute pathogen#infect('~/.vim/bundle/{}')

" wrap at window edge
set wrap

" Display 5 lines above/below the cursor when scrolling
set scrolloff=5

" tab size
set tabstop=2
set softtabstop=2

" Fixes common backspace problems
set backspace=indent,eol,start

" Speed up scrolling
set ttyfast

" status bar
" set laststatus=2

" display options
set showmode
set showcmd

" highlight matching pairs of brackets
set matchpairs+=<:>

" show line numbers
set number

" encoding
set encoding=utf-8

" autoindent
" set smartindent
filetype plugin indent on
set shiftwidth=2
set expandtab

" Haskell Syntax
syntax on
filetype plugin indent on
