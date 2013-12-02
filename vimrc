colorscheme blugrine
" colorscheme solarized

set shell=/opt/boxen/homebrew/bin/bash

execute pathogen#infect()
syntax on
filetype plugin indent on

nnoremap <F3> :NumbersToggle<CR>
set modelines=1
set shiftwidth=2
set tabstop=2
" The below are for puppet-vim
set expandtab
set smarttab
set autoindent

" set shell=/usr/local/bin/bash
let g:GPGPreferArmor=1

" autocmd BufEnter * :syntax sync fromstart

