" Install Plug (if not already installed)
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Include plugins
call plug#begin('~/.vim/plugged')
Plug 'jpo/vim-railscasts-theme'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'sjl/gundo.vim'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-rails'
"Plug 'vim-syntastic/syntastic'
Plug 'dense-analysis/ale'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'prettier/vim-prettier', {
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
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

" Comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Cursor
set cursorline
set cursorcolumn
set showmatch

" FZF (fuzzy search)
" Filename Search
nnoremap <silent> <leader>f :FZF<cr>
nnoremap <silent> <leader>F :FZF ~<cr>
" Content Search
nnoremap <silent> <leader>t :Rg<cr>
" Similarly, we can apply it to fzf#vim#grep. To use ripgrep instead of ag:
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

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

" Line width
set colorcolumn=81
set nowrap

" Navigation
set whichwrap=

" Scrolling
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

" Linting (Ale)
let g:ale_linters = {
\   'javascript': ['eslint'],
\}

" Prettier
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

" Syntastic
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_javascript_eslint_exe = 'eslint --cache'
