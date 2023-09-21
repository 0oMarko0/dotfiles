" Space leader
let mapleader = " "

" Disable vi compatibility
set nocompatible
" Do not save backup
set nobackup
set rnu
" Set shift width to 4 spaces.
set shiftwidth=4
" Set tab width to 4 columns.
set tabstop=4
set expandtab
set scrolloff=999
set showmode

filetype on
filetype plugin on
filetype indent on

syntax on

" keymaps
nnoremap <silent> [b :bbrevious<CR>
nnoremap <silent> ]b :bbrevious<CR>
nnoremap <silent> [B :bbrevious<CR>
nnoremap <silent> ]B :bbrevious<CR>
nnoremap <Leader>s :%s/\<C-r><C-w>\>/

