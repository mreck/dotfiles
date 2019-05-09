nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>

" map jk to ESC in insert mode
inoremap jk <esc>

syntax on

set tabstop=4
set background=dark

set number
set relativenumber

set nocompatible " necessary for lots of cool stuff
set showcmd      " shows you what you are typing as a command

set hlsearch
set incsearch " highlight while searching

set ignorecase " case insensitive pattern matching
set smartcase  " override ignorecase if pattern contains uppercase
