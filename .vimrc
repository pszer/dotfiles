set statusline+=%#warningmsg#
set statusline+=%*
filetype plugin on
syntax on

set path+=include/**
set path+=src/**

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

set relativenumber

let g:netrw_banner = 0
