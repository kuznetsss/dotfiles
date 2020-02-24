nnoremap <F2> :NERDTreeToggle<CR>
inoremap <F2> <Esc>:NERDTreeToggle<CR>

nnoremap <F12> :TagbarToggle<CR>

nnoremap cr :Autoformat<CR>

nnoremap <C-t> :split \| resize 20 \| terminal<CR>
inoremap <C-t> <Esc>:split \| resize 20 \| terminal<CR>

nnoremap gf :YcmCompleter GoTo<CR>
nnoremap gr :YcmCompleter GoToReferences<CR>
nnoremap <C-n> :YcmCompleter RefactorRename 
"nnoremap gs :FSBelow<CR>
nnoremap gs :SHSwitch<CR>

nnoremap <C-c>c :call NERDComment(0,"toggle")<CR>
nnoremap <C-k> :bnext<CR>
nnoremap <C-j> :bprev<CR>
nnoremap <C-x> :bp<bar>sp<bar>bn<bar>bd<CR>
nnoremap <C-h> <C-o>
nnoremap <C-l> <C-i>

nnoremap <C-c>r :CMake<CR>

inoremap <C-l> <C-^>
nnoremap <leader>s :Startify<CR>
nnoremap <leader>r :source ~/.vim/vimrc<CR>

tnoremap <Esc> <C-\><C-n>

function! FzfFindProjectFiles() 
    let l:root_file = findfile(g:myfzf_root_flag, '.;')
    if strlen(l:root_file) == 0
        echo "Fzf: can't find root"
    endif
    exe 'FzfFiles ' . fnamemodify(l:root_file, ':h')
endfunction
nnoremap <C-p> :call FzfFindProjectFiles()<CR>
