let &colorcolumn=join(range(81,999),",")

" C++ filetype

set tabstop=2
set shiftwidth=2

set foldmethod=syntax
set makeprg=make\ -C\ build/

nnoremap <buffer> <F4> :w <bar> :make<CR>
nnoremap <buffer> <F5> :w <bar> :make<CR> :!clear; ./$(find build/ -maxdepth 1 -type f -executable)<CR>
