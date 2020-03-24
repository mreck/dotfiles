" Fish doesn't play all that well with others
set shell=/bin/bash

let mapleader = "\<Space>"

nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>

" map jk to ESC in insert mode
inoremap jk <esc>

" german chars
imap :a ä
imap :u ü
imap :o ö
imap :A Ä
imap :U Ü
imap :O Ö
imap :s ß

syntax on

set tabstop=4
set background=dark

set number
set relativenumber
set autoindent

set nocompatible " necessary for lots of cool stuff
set showcmd      " shows you what you are typing as a command

" set hlsearch
set incsearch " highlight while searching

set ignorecase " case insensitive pattern matching
set smartcase  " override ignorecase if pattern contains uppercase

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
