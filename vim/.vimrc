set number
set autoindent
set smartindent
set expandtab
set tabstop=2
set shiftwidth=2
set list
set colorcolumn=81
set splitright
set splitbelow

set t_Co=256
color darkblue

nnoremap <Tab> <Esc>
vnoremap <Tab> <Esc>gV
onoremap <Tab> <Esc>
inoremap <Tab> <Esc>`^
inoremap <Leader><Tab> <Tab>
cnoremap <S-Bs> <C-c>

nnoremap ; :

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-rails'
Plug 'jooize/vim-colemak'

call plug#end()
