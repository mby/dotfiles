" leader
let mapleader = " "


" plugins
call plug#begin(stdpath('data') . '/plugged')
	" essentials
	Plug 'junegunn/goyo.vim'
	Plug 'editorconfig/editorconfig-vim'
	Plug 'bronson/vim-trailing-whitespace'
	Plug 'machakann/vim-sandwich'
	Plug 'tpope/vim-commentary'
	Plug 'junegunn/fzf.vim'
	Plug 'scrooloose/nerdtree'

	" eye candy
	Plug 'mhinz/vim-signify'
	Plug 'co1ncidence/mountaineer.vim'
	Plug 'itchyny/lightline.vim'
call plug#end()


" config
set updatetime=100 termguicolors
set number cc=80
set splitright splitbelow
set clipboard+=unnamedplus mouse=a
set hidden nobackup nowritebackup noshowmode

let g:lightline = { 'colorscheme': 'mountaineer' }
colorscheme mountaineer


" keybinds
nnoremap <leader>rc		:e $MYVIMRC<cr>
nnoremap <c-a>			<c-^>
nnoremap <c-t>			<c-z>

nnoremap ;			:
nnoremap :			;

nnoremap <leader>q		:q<cr>
nnoremap <leader>Q		:q!<cr>
nnoremap <leader>w		:w<cr>

nnoremap <leader>.		:!ctags -R .<cr>
nnoremap <leader>f		:NERDTreeToggle<cr>
nnoremap <leader><space>	:Files<cr>
nnoremap <leader>dd		:SignifyHunkDiff<cr>
nnoremap <leader>du		:SignifyHunkUndo<cr>
nnoremap <leader>g		:Goyo<cr>
