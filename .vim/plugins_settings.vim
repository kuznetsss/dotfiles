" Vimwiki
let g:vimwiki_list = [ {'path':'~/Documents/vimwiki/', 'syntax': 'markdown', 'ext': '.md'} ]
" ------

" Airline
let g:airline_theme='powerlineish'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#keymap#enabled = 0
let g:airline#extensions#keymap#enabled = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline_detect_spell = 0
" ------

" Lua
let g:lua_compiler_name = '/usr/bin/luac5.2'
" ------

" YouCompleteMe
let g:ycm_max_num_candidates = 15
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_filepath_completion_use_working_dir = 1
let g:ycm_filetype_blacklist = {
      \ 'tagbar': 1,
      \ 'notes': 1,
      \ 'markdown': 1,
      \ 'netrw': 1,
      \ 'unite': 1,
      \ 'text': 1,
      \ 'vimwiki': 1,
      \ 'pandoc': 1,
      \ 'infolog': 1,
      \ 'leaderf': 1,
      \ 'mail': 1,
      \ 'lua': 1
      \}
let g:ycm_filepath_blacklist = {
      \ 'html': 1,
      \ 'jsx': 1
      \}
set completeopt-=preview
let g:ycm_confirm_extra_conf = 0
let g:ycm_clangd_args = ['--header-insertion=never', '-j=5', '--background-index']
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
"let g:ctrlp_working_path_mode = 'r'
"let g:ctrlp_custom_ignore = { 'dir':  '\v[\/]\.(git|hg|svn)|.*build.*$', 'file': '\v\.(exe|so|dll)$',  }
"let g:ctrlp_root_markers = ['.git', 'compile_commands.json', '.clang-format']
" ------

" Spelunker
let g:spelunker_check_type = 2
let g:spelunker_highlight_type = 2
let g:enable_spelunker_vim_on_readonly = 0
" ------

" AsyncRun
let g:asyncrun_save = 1
" ------


" CMake
let g:cmake_export_compile_commands = 'ON'
let g:cmake_ycm_symlinks = 1
let g:cmake_build_type = 'RelWithDebInfo'
" ------

" Fzf
let g:fzf_command_prefix = 'Fzf'
let g:myfzf_root_flag = '.clang-format'
" ------

