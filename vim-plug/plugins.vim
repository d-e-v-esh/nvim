call plug#begin('~/.config/nvim/autoload/plugged')

	if exists('g:vscode')
			" ---- VSCode extension ----

			Plug 'asvetliakov/vim-easymotion', { 'as': 'vsc-easymotion' }

	else
			" ---- Normal Neovim ----
			
			" File Explorer
			Plug 'scrooloose/NERDTree'

			" Theme
			Plug 'morhetz/gruvbox'
			Plug 'vim-airline/vim-airline'
			Plug 'vim-airline/vim-airline-themes'

			" Syntax & Code Completion
			Plug 'scrooloose/syntastic'

			" Git
			Plug 'tpope/vim-fugitive'
			Plug 'airblade/vim-gitgutter'

			" Tags
			Plug 'tpope/vim-surround'
			Plug 'mattn/emmet-vim'

			" Mics
			Plug 'preservim/nerdcommenter'
			Plug 'vimwiki/vimwiki'
			Plug 'easymotion/vim-easymotion'
			Plug 'ryanoasis/vim-devicons'
			Plug 'tpope/vim-commentary'
			Plug 'tpope/vim-repeat'
			Plug 'mhinz/vim-startify'
			Plug 'junegunn/fzf.vim'
			Plug 'nvim-lua/plenary.nvim'
			Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
      Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
			Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

		endif

call plug#end()
