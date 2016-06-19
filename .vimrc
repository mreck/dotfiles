set relativenumber
set background=dark
set autoindent
set wildmenu

syntax on

" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" Necesary  for lots of cool vim things
set nocompatible

" This shows what you are typing as a command
set showcmd

" highlight current line
set cursorline
autocmd InsertEnter * set nocursorline
autocmd InsertLeave * set cursorline

