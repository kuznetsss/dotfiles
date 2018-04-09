let &colorcolumn=join(range(81,999),",")

" Python specific settings
set tabstop=2
set softtabstop=0
set expandtab
set shiftwidth=2
set smarttab

nnoremap <buffer> <F5> :w <bar> :!clear; python %<CR>
nnoremap <buffer> <F6> :w <bar> :!clear; pudb3 %<CR>
