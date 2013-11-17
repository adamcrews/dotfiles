syntax on
colorscheme blugrine
" colorscheme solarized
execute pathogen#infect()
filetype plugin indent on
nnoremap <F3> :NumbersToggle<CR>
set modelines=1
set shiftwidth=2
set tabstop=2
set expandtab
" set shell=/usr/local/bin/bash
set shell=/opt/boxen/homebrew/bin/bash
let g:GPGPreferArmor=1

autocmd BufEnter * :syntax sync fromstart

