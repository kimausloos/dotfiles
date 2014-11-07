" boot pathogen
execute pathogen#infect()

" nice colorsheme
colorscheme ir_black

" some general options
syntax on
filetype plugin indent on
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set number
set showmatch
set autoindent
set smartindent

" open a tab on vim startup
let g:nerdtree_tabs_open_on_console_startup=1

" autostart nerdtree
autocmd vimenter * NERDTree

" open or close nerdtree with ctrl+n
map <C-n> :NERDTreeToggle<CR>

autocmd BufNew * wincmd l
autocmd VimEnter * wincmd p

" nerdtree is the only window left? Quit.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

set runtimepath^=~/.vim/bundle/ctrlp.vim

" switch tabs with F1 and F2
nnoremap <F1> gT
nnoremap <F2> gt

" make *.php filetype php
au BufNewFile,BufRead *.php set filetype=php

" enable mouse
set mouse=a
