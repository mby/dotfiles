" leader
let mapleader = " "



" plugins
call plug#begin(stdpath('data') . '/plugged')
	" essentials
	Plug 'editorconfig/editorconfig-vim'
	Plug 'bronson/vim-trailing-whitespace'
	Plug 'justinmk/vim-sneak'
	Plug 'machakann/vim-sandwich'
	Plug 'tpope/vim-commentary'
	Plug 'junegunn/fzf.vim'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'scrooloose/nerdtree'
	Plug 'mhinz/vim-signify'

	" eye candy
	Plug 'tomasiser/vim-code-dark'
	Plug 'APZelos/blamer.nvim'
call plug#end()



" config
set updatetime=100 termguicolors
set splitright splitbelow
set clipboard+=unnamedplus mouse=a
set hidden nobackup nowritebackup noshowmode

call matchadd('ColorColumn', '\%81v', 100)
colorscheme codedark

let g:loaded_matchparen = 1
let g:sneak#label = 1
let g:blamer_enabled = 1



" keybinds
nnoremap ;			:
nnoremap :			;
nnoremap <c-t>			<c-z>

nnoremap <leader>q		:q<cr>
nnoremap <leader>Q		:qa!<cr>
nnoremap <leader>w		:w<cr>

nnoremap <leader>a		<c-^>
nnoremap <leader>f		:Files<cr>
nnoremap <leader>n		:NERDTreeToggle<cr>
nnoremap <leader>b		:Buffers<cr>
nnoremap <leader>r		:Rg<cr>
nnoremap <leader>gd		:SignifyHunkDiff<cr>
nnoremap <leader>gu		:SignifyHunkUndo<cr>
nnoremap <leader>gb		:BlamerShow<cr>

nnoremap <leader>.		:!ctags -R .<cr>
