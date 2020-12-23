" leader
let mapleader = " "

" plugins
call plug#begin(stdpath('data') . '/plugged')

	" essentials
	Plug 'editorconfig/editorconfig-vim'
	Plug 'bronson/vim-trailing-whitespace'
	Plug 'machakann/vim-sandwich'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'scrooloose/nerdtree'
	Plug 'mattn/emmet-vim'

	" eye candy
	Plug 'vim-airline/vim-airline'
	Plug 'tomasiser/vim-code-dark'

call plug#end()

" config
colorscheme codedark

set noprompt
set number cc=80
set splitright splitbelow
set clipboard+=unnamedplus mouse=a

" keybinds
nnoremap <leader>rc		:e $MYVIMRC<cr>

nnoremap ;			:
nnoremap :			;

nnoremap <leader>w		:w<cr>
nnoremap <leader>q		:q<cr>

nnoremap <leader>.		:!ctags -R .<cr>

nnoremap <leader>f		:NERDTreeToggle<cr>
nnoremap <leader><space>	:Files<cr>

nnoremap <c-h>			<c-w>h
nnoremap <c-j>			<c-w>j
nnoremap <c-k>			<c-w>k
nnoremap <c-l>			<c-w>l
