nnoremap <F2> :NERDTreeToggle<CR>
inoremap <F2> <Esc>:NERDTreeToggle<CR>

nnoremap <F3> :MundoToggle<CR>
inoremap <F3> <Esc>:MundoToggle<CR>

nnoremap <F12> :TagbarToggle<CR>

nnoremap cr :Autoformat<CR>

nnoremap <C-s> :terminal<CR>
inoremap <C-s> <Esc>:terminal<CR>

nnoremap gf :YcmCompleter GoTo<CR>
nnoremap gr :YcmCompleter GoToReferences<CR>
nnoremap <C-S-r> :YcmCompleter RefactorRename 
nnoremap gs :FSBelow<CR>

nnoremap <C-c>c :call NERDComment(0,"toggle")<CR>
nnoremap <C-k> :bnext<CR>
nnoremap <C-j> :bprev<CR>
nnoremap <C-x> :bp<bar>sp<bar>bn<bar>bd<CR>
nnoremap <C-h> <C-o>
nnoremap <C-l> <C-i>


nnoremap <C-c>r :CMake<CR>
nnoremap <C-b> :exec 'AsyncRun ' . expand(&makeprg)<CR>
inoremap <C-b> <Esc>:exec 'AsyncRun ' . expand(&makeprg)<CR>

