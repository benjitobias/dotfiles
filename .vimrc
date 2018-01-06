" Vundle
set nocompatible
filetype off 

" Set runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'git://github.com/xolox/vim-misc.git'
Plugin 'git://github.com/xolox/vim-notes.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on


" use .vimrc in working directory if exists
" and use secure options
set exrc
set secure

" syntax
"set syntax=on

" colorscheme
"colorscheme darkblue
syntax enable
colorscheme monokai

" indentation
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set backspace=indent,eol,start

" makefiles
:autocmd FileType make set noexpandtab

" set numbers on
set number

" Show matches when searching and highlight
set incsearch
set hlsearch

" Vim as sublime (powerline)
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup

" Keep status bar visible and positioned
set laststatus=2


" c files
autocmd FileType c 
    \ set number
    \ colorcolumn=80
    \ noexpandtab 
    \ tabstop=8
    \ shiftwidth=8
    \ autoindent
    \ smartindent
    \ showmatch
    \ hlsearch
    \ smartcase
    \ ignorecase
    \ incsearch
    \ ruler
    \ 
    \ | filetype plugin indent on
    \ | highlight ColorColumn ctermbg=darkgray

