syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set colorcolumn=80

packloadall
highlight ColorColumn ctermbg=8 guibg=lightgrey
set backspace=indent,eol,start  " more powerful backspacing
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'Valloric/YouCompleteMe'
Plug 'pangloss/vim-javascript'
Plug 'mbbill/undotree'
Plug 'ternjs/tern_for_vim', {'do':'npm install'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }

call plug#end()

autocmd VimEnter * NERDTree
filetype plugin on
set omnifunc=syntaxcomplete#Complete

colorscheme gruvbox
set background=dark

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
