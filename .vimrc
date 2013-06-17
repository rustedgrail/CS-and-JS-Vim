set nocompatible
filetype off 

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'Valloric/YouCompleteMe'

call pathogen#infect()
syntax on
filetype plugin indent on

set expandtab!
set tabstop=4
set shiftwidth=4
set fdm=indent

set number!
set autoindent

set hlsearch
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

set backspace=indent,eol,start
set list listchars=tab:»·,trail:·

au BufNewFile,BufReadPost *.coffee setl shiftwidth=2
au BufNewFile,BufReadPost *.coffee setl tabstop=2

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
imap <C-Up> <C-]>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

runtime macros/matchit.vim

au BufRead,BufNewFile *.html,*.handlebars,*.hbs set ft=html syntax=handlebars
