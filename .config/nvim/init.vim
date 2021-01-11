" leader
let mapleader = " "


" plugins
call plug#begin(stdpath('data') . '/plugged')
	" essentials
	Plug 'ferranpm/vim-autopairs'
	Plug 'editorconfig/editorconfig-vim'
	Plug 'bronson/vim-trailing-whitespace'
	Plug 'justinmk/vim-sneak'
	Plug 'machakann/vim-sandwich'
	Plug 'tpope/vim-commentary'
	Plug 'junegunn/fzf.vim'
	Plug 'mhinz/vim-signify'
	Plug 'APZelos/blamer.nvim'

	" eye candy
	Plug 'fxn/vim-monochrome'
call plug#end()


" config
set updatetime=100 termguicolors
set splitright splitbelow
set clipboard+=unnamedplus mouse=a
set hidden nobackup nowritebackup noshowmode
colorscheme monochrome

hi Pmenu       guibg=gray10
hi SignColumn  guibg=black
hi ColorColumn guibg=gray
call matchadd('ColorColumn', '\%81v', 100)

hi SignifySignAdd    guibg=black guifg=lime
hi SignifySignChange guibg=black guifg=yellow
hi SignifySignDelete guibg=black guifg=red

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
nnoremap <leader>b		:Buffers<cr>
nnoremap <leader>r		:Rg<cr>
nnoremap <leader>gd		:SignifyHunkDiff<cr>
nnoremap <leader>gu		:SignifyHunkUndo<cr>
nnoremap <leader>gb		:BlamerShow<cr>

nnoremap <leader>.		:!ctags -R .<cr>
