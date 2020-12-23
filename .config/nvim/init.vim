" leader
let mapleader = " "


" plugins
call plug#begin(stdpath('data') . '/plugged') " essentials Plug 'editorconfig/editorconfig-vim'
	Plug 'bronson/vim-trailing-whitespace'
	Plug 'machakann/vim-sandwich'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	" eye candy
	Plug 'vim-airline/vim-airline'
	Plug 'tomasiser/vim-code-dark'
call plug#end()


" config
set noprompt
set number cc=80
set splitright splitbelow
set clipboard+=unnamedplus mouse=a

colorscheme codedark
let g:coc_global_extensions = ['coc-clangd', 'coc-tsserver', 'coc-json', 'coc-eslint', 'coc-html', 'coc-css', 'coc-emmet', 'coc-python', 'coc-rls', 'coc-svelte', 'coc-vetur', 'coc-todolist', 'coc-git', 'coc-fzf-preview', 'coc-explorer', 'coc-discord-rpc', 'coc-pairs']


" keybinds
nnoremap <leader>rc		:e $MYVIMRC<cr>
nnoremap <c-t>			<c-z>

nnoremap ;			:
nnoremap :			;

nnoremap <leader>w		:w<cr>
nnoremap <leader>q		:q<cr>
nnoremap <leader>x		:x<cr>

nnoremap <c-h>			<c-w>h
nnoremap <c-j>			<c-w>j
nnoremap <c-k>			<c-w>k
nnoremap <c-l>			<c-w>l

nnoremap <leader>f		:CocCommand explorer<cr>
nnoremap <leader><space>	:CocCommand fzf-preview.DirectoryFiles<cr>
