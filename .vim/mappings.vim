nnoremap <F2> :NERDTreeToggle<CR>
inoremap <F2> <Esc>:NERDTreeToggle<CR>

nnoremap <F12> :TagbarToggle<CR>

nnoremap cr :Autoformat<CR>

nnoremap <C-t> :split \| resize 20 \| terminal<CR>
inoremap <C-t> <Esc>:split \| resize 20 \| terminal<CR>

if g:use_coc
    " Use tab for trigger completion with characters ahead and navigate.
    " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
    " other plugin before putting this into your config.
    inoremap <silent><expr> <TAB>
          \ pumvisible() ? "\<C-n>" :
          \ <SID>check_back_space() ? "\<TAB>" :
          \ coc#refresh()
    inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

    function! s:check_back_space() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~# '\s'
    endfunction

    " Use <c-space> to trigger completion.
    if has('nvim')
      inoremap <silent><expr> <c-space> coc#refresh()
    else
      inoremap <silent><expr> <c-@> coc#refresh()
    endif
    " Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
    " position. Coc only does snippet and additional edit on confirm.
    " <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
    if exists('*complete_info')
      inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
    else
      inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
    endif

    " Use `[g` and `]g` to navigate diagnostics
    " Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
    nmap <silent> [g <Plug>(coc-diagnostic-prev)
    nmap <silent> ]g <Plug>(coc-diagnostic-next)

    " GoTo code navigation.
    nmap <silent> gd <Plug>(coc-definition)
    nmap <silent> gy <Plug>(coc-type-definition)
    nmap <silent> gi <Plug>(coc-implementation)
    nmap <silent> gr <Plug>(coc-references)

    " Use K to show documentation in preview window.
    nnoremap <silent> K :call <SID>show_documentation()<CR>

    function! s:show_documentation()
      if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
      else
        call CocAction('doHover')
      endif
    endfunction

    " Highlight the symbol and its references when holding the cursor.
    autocmd CursorHold * silent call CocActionAsync('highlight')

    " Symbol renaming.
    nmap <leader>rn <Plug>(coc-rename)
else
    nnoremap gf :YcmCompleter GoTo<CR>
    nnoremap gr :YcmCompleter GoToReferences<CR>
    nnoremap <C-n> :YcmCompleter RefactorRename 
endif
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
nnoremap <C-y> :FzfBuffers<CR>
