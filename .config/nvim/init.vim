" leader
let mapleader = " "


" plugins
call plug#begin(stdpath('data') . '/plugged')
	" essentials
	Plug 'junegunn/goyo.vim'
	Plug 'editorconfig/editorconfig-vim'
	Plug 'bronson/vim-trailing-whitespace'
	Plug 'junegunn/fzf.vim'
	Plug 'machakann/vim-sandwich'
	Plug 'tpope/vim-commentary'
	Plug 'scrooloose/nerdtree'

	" eye candy
	Plug 'mhinz/vim-signify'
	Plug 'vim-airline/vim-airline'
	Plug 'tomasiser/vim-code-dark'
call plug#end()


" config
set updatetime=300
set number relativenumber cc=80
set splitright splitbelow
set clipboard+=unnamedplus mouse=a
set hidden nobackup nowritebackup noprompt
colorscheme codedark


" keybinds
nnoremap <leader>rc		:e $MYVIMRC<cr>
nnoremap <c-t>			<c-z>

nnoremap ;			:
nnoremap :			;

nnoremap <leader>w		:w<cr>
nnoremap <leader>q		:q<cr>
nnoremap <leader>Q		:q!<cr>
nnoremap <leader>x		:x<cr>

nnoremap <c-h>			<c-w>h
nnoremap <c-j>			<c-w>j
nnoremap <c-k>			<c-w>k
nnoremap <c-l>			<c-w>l

nnoremap <leader>.		:!ctags -R .<cr>
nnoremap <leader>f		:NERDTreeToggle<cr>
nnoremap <leader><space>	:Files<cr>
nnoremap <leader>dd		:SignifyHunkDiff<cr>
nnoremap <leader>du		:SignifyHunkUndo<cr>
nnoremap <leader>g		:Goyo<cr>
