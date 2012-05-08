call pathogen#infect()
syntax on
filetype plugin indent on

set expandtab!
set tabstop=4

set number!
set autoindent

set backspace=indent,eol,start
set list listchars=tab:»·,trail:·

au BufWritePost *.coffee CoffeeMake!
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2
