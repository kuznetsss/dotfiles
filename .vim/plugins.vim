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

	" C++ specific
		" .h/.cpp switch
		Plug 'derekwyatt/vim-fswitch'
		" C++ highlighting
		Plug 'octol/vim-cpp-enhanced-highlight'


		


call plug#end()

exec 'source ' . g:vim_config_dir . 'plugins_settings.vim'

