set t_Co=256
set scrolloff=5
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

" Disable auto comment symbols insert
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

filetype plugin on

" copy line shift from previous line 
set autoindent

" always show status bar
set laststatus=2

" Setup encoding
set encoding=utf-8
set termencoding=utf-8

" :split opens windows below 
set splitbelow

" remove compatible with vi
set nocompatible
" use space as window border
"set fillchars+=vert:\ 

" Ignore letter size (capitalize or not) while search (for searching using
" capitalize insert \C in search request)
set ignorecase
" highlight search results
set hlsearch
" highlight search results while typing 
set incsearch

" highlight current line
set cursorline

" enable syntax highlight
syntax enable

" set folding by syntax
set foldmethod=syntax
" make all unfolded at start
set foldlevelstart=999

" enable pasting by mouse wheel
set mouse=r

set autoread
"set autowrite
set number relativenumber
set backspace=indent,eol,start

set background=dark
colorscheme wombat256mod " molokai   

set wildmenu

set updatetime=500

set shiftwidth=4
set tabstop=4
set expandtab

" Change current directory to file directory
autocmd BufEnter * if expand("%:p:h") !~ '^/tmp' | silent! lcd %:p:h | endif

set undofile
let &undodir = g:vim_config_dir . 'undo'
set undolevels=5000

au BufReadPost quickfix setlocal wrap
