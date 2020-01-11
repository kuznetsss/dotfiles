" Vimwiki
let g:vimwiki_list = [ {'path':'~/Documents/vimwiki/', 'syntax': 'markdown', 'ext': '.md'} ]
" ------

" Airline
let g:airline_theme='powerlineish'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#keymap#enabled = 0
let g:airline#extensions#keymap#enabled = 0
let g:airline#extensions#whitespace#enabled = 0
" ------

" Lua
let g:lua_compiler_name = '/usr/bin/luac5.2'
" ------

" YouCompleteMe
let g:ycm_max_num_candidates = 15
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_filepath_completion_use_working_dir = 1
set completeopt-=preview
" ------

" NERDTree 
let g:NERDTreeShowHidden = 1
" ------

" C++ highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
" ------

" CtrlP
let g:ctrlp_custom_ignore = { 'dir':  '\v[\/]\.(git|hg|svn)|.*build.*$', 'file': '\v\.(exe|so|dll)$',  }
" ------


