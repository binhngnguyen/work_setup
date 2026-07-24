set nocompatible              " be iMproved, required
filetype off                  " required
set wrap

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Other Plugs
Plug 'dracula/iterm'
Plug 'dracula/vim', {'name':'dracula'}
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/gv.vim'
Plug 'junegunn/seoul256.vim'
Plug 'luochen1990/rainbow'
Plug 'mhinz/vim-startify'
Plug 'ntpeters/vim-better-whitespace'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'

call plug#end()

filetype plugin indent on    " required
let mapleader=","               " leader is comma

" jk is escape
inoremap jk <esc>

" Basic Behavior
set number                      " show line numbers
set cursorline                  " highlight current line
set incsearch                   " search as characters are entered
set hlsearch                    " highlight matches
set ignorecase                  " search with ignore case
set smartcase                   " search with smart case
set showmatch                   " highlight matching parentheses / brackets [{()}]
set encoding=utf-8              " set encoding to UTF-8 (default was "latin1")

set expandtab
set shiftwidth=4
set softtabstop=4
"set shiftwidth=3                " set indent = 3 spaces
"set tabstop=3                   " set tabstop = 3
set autoindent
set smartindent

" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp ~/.vimrc<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source ~/.vimrc<CR>

" Open nerd tree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

" fzf vim
map <C-p> :Files<Cr>

" fugitive: git blame
map <C-h> :Git blame<Cr>

" Move between tabs by Ctrl+t [up/down/left/right]
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>

syntax enable
colorscheme dracula
"colorscheme seoul256

"vim-rainbow configuration
let g:rainbow_active = 1

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

"copty to clipboard
"by using ,y or ,Y
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

"Folding Setting
"zo/zc: open/close a fold at cursor
set foldmethod=syntax
set nofoldenable
