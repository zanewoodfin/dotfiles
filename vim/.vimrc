" Include plugins
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-rails'
Plug 'jpo/vim-railscasts-theme'
Plug 'scrooloose/nerdtree'
call plug#end()" Standard settings



" Colors
set t_Co=256
color railscasts

" Current line
set cursorline
set scrolloff=999

" Indentation
set autoindent
set smartindent
set expandtab
set tabstop=2
set shiftwidth=2

" Line numbering
set number
set relativenumber

" Line width
set colorcolumn=81
set nowrap

" Whitespace
set list

" Windows
set splitright
set splitbelow



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

" Open nerdtree with ctrl+n
noremap <C-n> :NERDTreeToggle<CR>
