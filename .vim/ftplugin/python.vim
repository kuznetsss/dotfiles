let &colorcolumn=join(range(81,999),",")

" Python specific settings

nnoremap <buffer> <F5> :w <bar> :!clear; python %<CR>
nnoremap <buffer> <F6> :w <bar> :!clear; pudb3 %<CR>
