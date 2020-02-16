let plug_file = g:vim_config_dir . "/autoload/plug.vim" 
if empty(glob(plug_file))
    execute '!curl -fLo ' . plug_file . ' --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin(g:vim_config_dir . 'plugins/')
	" Plug itself
	Plug 'junegunn/vim-plug'

	" Color schemes
	Plug 'tomasr/molokai'
	Plug 'michalbachowski/vim-wombat256mod'

	" Async run
	Plug 'skywind3000/asyncrun.vim'

	" Airline
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" NERDtree
	Plug 'scrooloose/nerdtree'

	" Vim wiki
	Plug 'vimwiki/vimwiki'

	" Lua
	Plug 'xolox/vim-misc'
	Plug 'xolox/vim-lua-ftplugin'

	" Comment line
	Plug 'preservim/nerdcommenter'

	" Start screen
	Plug 'mhinz/vim-startify'

	" File tags
	Plug 'majutsushi/tagbar'

	" YouCompleteMe
	Plug 'Valloric/YouCompleteMe'

	" CtrlP
	Plug 'ctrlpvim/ctrlp.vim'

	" Spellchecking
	Plug 'kamykn/spelunker.vim'

	" Remove quickfix from buffers
	Plug 'romainl/vim-qf'

	" Git plugin
	Plug 'tpope/vim-fugitive'

    

	" Autoformat 
	Plug 'Chiel92/vim-autoformat'
	" C++ specific
		" .h/.cpp switch
		Plug 'derekwyatt/vim-fswitch'
        Plug 'kuznetsss/shswitch'
		" C++ highlighting
		Plug 'octol/vim-cpp-enhanced-highlight'

	" CMake
	Plug 'pboettch/vim-cmake-syntax'
	Plug 'vhdirk/vim-cmake'

    if filereadable(g:vim_config_dir . 'local_plugins.vim') 
        exec 'source ' . g:vim_config_dir . 'local_plugins.vim'
    else
        if has('nvim') || has('patch-8.0.902')
          Plug 'mhinz/vim-signify'
        else
          Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
        endif
    endif

call plug#end()

exec 'source ' . g:vim_config_dir . 'plugins_settings.vim'


