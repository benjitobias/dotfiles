" tabs

"set expandtab
"set tabstop=4
"set softtabstop=4
"set shiftwidth=4

" use .vimrc in working directory if exists
" and use secure options
set exrc
set secure

" colorscheme
 colorscheme darkblue

" syntax
set syntax=on

" makefiles
:autocmd FileType make set noexpandtab

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
