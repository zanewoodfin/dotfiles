" Include plugins
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-rails'
Plug 'jpo/vim-railscasts-theme'
call plug#end()" Standard settings

" Basic config
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
color railscasts

" Remap vk to escape for insert and command mode
inoremap vk <Esc>
cnoremap vk <c-c>

" Use h and k for up and down
noremap h <up>
noremap k <down>

" Use backspace and space or jl for left and right
noremap j <left>
noremap l <right>
noremap <c-w><Space> :wincmd l<CR>
noremap <c-w>l :wincmd l<CR>
noremap <c-w>j :wincmd h<CR>

" Command mode without shift
noremap ; :
