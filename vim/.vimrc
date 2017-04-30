" Include plugins
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-rails'
Plug 'jpo/vim-railscasts-theme'
Plug 'http://github.com/sjl/gundo.vim.git'
call plug#end()" Standard settings

" Clipboard
noremap <Leader>y "+y
noremap <Leader>p "+p

" Colors
set t_Co=256
color railscasts
highlight Normal ctermbg=none

" Command mode
set wildmenu

" Cursor
set cursorline
set cursorcolumn
set showmatch

" History
set history=1000

" Indentation
set autoindent
set smartindent
set expandtab
set softtabstop=2
set tabstop=2
set shiftwidth=2

" Line numbering
set number
set relativenumber

" Line width
set colorcolumn=81
set nowrap

"Scrolling
set scrolloff=15
set sidescroll=1
set sidescrolloff=30

" Search
set incsearch
set hlsearch

" Status line
set laststatus=2

" Undo history
set undofile
set undodir=~/.vim/undo/
set undolevels=1000
set undoreload=10000

" Whitespace
set list

" Windows
set splitright
set splitbelow



" Remap vk to escape for insert and command mode
inoremap vk <Esc>
cnoremap vk <c-c>

" Use h and k for up and down
noremap h g<up>
noremap k g<down>
noremap <c-w>h :wincmd k<CR>
noremap <c-w>k :wincmd j<CR>

" Use backspace and space or jl for left and right
noremap j <left>
noremap l <right>
noremap <c-w><Space> :wincmd l<CR>
noremap <c-w>l :wincmd l<CR>
noremap <c-w>j :wincmd h<CR>

" Open gundo with leader u
noremap <leader>u :GundoToggle<CR>
