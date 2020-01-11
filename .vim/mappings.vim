nnoremap <F2> :NERDTreeToggle<CR>
inoremap <F2> <Esc>:NERDTreeToggle<CR>
nnoremap <F3> :NERDTree %:p<CR>
inoremap <F3> <Esc>:NERDTree %:p<CR>

nnoremap <F12> :TagbarToggle<CR>

nnoremap cr :Autoformat<CR>

nnoremap gf :YcmCompleter GoTo<CR>
nnoremap <C-S-r> :YcmCompleter RefactorRename 
nnoremap <C-f> :YcmCompleter GoToReferences<CR>
nnoremap gs :FSBelow<CR>

nnoremap <C-c>c :call NERDComment(0,"toggle")<CR>
nnoremap <C-k> :bnext<CR>
nnoremap <C-j> :bprev<CR>
nnoremap <C-x> :bp<bar>sp<bar>bn<bar>bd<CR>
nnoremap <C-h> <C-o>
nnoremap <C-l> <C-i>
