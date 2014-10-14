set t_Co=256

" let g:solarized_termcolors=256
" colorscheme blugrine
" set background=light
set background=dark
colorscheme solarized

set shell=/opt/boxen/homebrew/bin/bash
set ruler

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

let g:instant_markdown_autostart = 1

" set shell=/usr/local/bin/bash
let g:GPGPreferArmor=1

" autocmd BufEnter * :syntax sync fromstart

